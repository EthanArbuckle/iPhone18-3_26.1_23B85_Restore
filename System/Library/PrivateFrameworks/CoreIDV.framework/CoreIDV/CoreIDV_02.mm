size_t sub_21CCCF2F8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_21CCCF4E8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 16 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

unint64_t sub_21CCCF5E0()
{
  result = qword_27CE19248;
  if (!qword_27CE19248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19248);
  }

  return result;
}

unint64_t sub_21CCCF634()
{
  result = qword_27CE19250;
  if (!qword_27CE19250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19250);
  }

  return result;
}

unint64_t sub_21CCCF688()
{
  result = qword_27CE19278;
  if (!qword_27CE19278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19278);
  }

  return result;
}

unint64_t sub_21CCCF6DC()
{
  result = qword_27CE19298;
  if (!qword_27CE19298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19298);
  }

  return result;
}

uint64_t sub_21CCCF730(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CD83744();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC8, &unk_21CD885C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v36 - v11;
  v13 = type metadata accessor for MobileDocumentRegistration();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = (&v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(a2 + 16);
  result = MEMORY[0x21CF17CC0](v19);
  v43 = v19;
  if (v19)
  {
    v21 = v14;
    v22 = 0;
    v23 = *(v13 + 24);
    v41 = (v18 + *(v13 + 28));
    v42 = v23;
    v40 = a2 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v24 = (v4 + 48);
    v39 = *(v21 + 72);
    v36 = (v4 + 8);
    v37 = (v4 + 32);
    do
    {
      v28 = v3;
      sub_21CCD17B8(v40 + v39 * v22, v18, type metadata accessor for MobileDocumentRegistration);
      v29 = *v18;
      v30 = v18[1];
      sub_21CD83B74();
      v31 = v18[2];
      MEMORY[0x21CF17CC0](*(v31 + 16));
      v32 = *(v31 + 16);
      if (v32)
      {
        v33 = (v31 + 40);
        do
        {
          v34 = *(v33 - 1);
          v35 = *v33;
          sub_21CCB18D4(v34, *v33);
          sub_21CD83704();
          sub_21CCB1880(v34, v35);
          v33 += 2;
          --v32;
        }

        while (v32);
      }

      sub_21CCD1750(v18 + v42, v12, &qword_27CE18EC8, &unk_21CD885C0);
      v3 = v28;
      if ((*v24)(v12, 1, v28) == 1)
      {
        sub_21CD84284();
      }

      else
      {
        v25 = v38;
        (*v37)(v38, v12, v28);
        sub_21CD84284();
        sub_21CCD1820(&qword_27CE19360, MEMORY[0x277CC9578]);
        sub_21CD83A64();
        (*v36)(v25, v28);
      }

      ++v22;
      v26 = *v41;
      v27 = v41[1];
      sub_21CD83B74();
      result = sub_21CCD1868(v18, type metadata accessor for MobileDocumentRegistration);
    }

    while (v22 != v43);
  }

  return result;
}

uint64_t sub_21CCCFAC4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a2 + 16);
  result = MEMORY[0x21CF17CC0](v9);
  if (v9)
  {
    v11 = *(v3 + 20);
    v12 = (v8 + *(v3 + 24));
    v13 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v14 = *(v4 + 72);
    do
    {
      sub_21CCD17B8(v13, v8, type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem);
      v15 = *v8;
      v16 = v8[1];
      sub_21CD83B74();
      sub_21CD83794();
      sub_21CCD1820(&qword_27CE19348, MEMORY[0x277CC95F0]);
      sub_21CD83A64();
      v17 = *v12;
      v18 = v12[1];
      sub_21CD83704();
      result = sub_21CCD1868(v8, type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem);
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_21CCCFC6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x21CF17CC0](v3);
  v21 = v3;
  if (v3)
  {
    v5 = 0;
    v20 = a2 + 32;
    do
    {
      v6 = (v20 + 56 * v5);
      v8 = *v6;
      v7 = v6[1];
      v10 = v6[2];
      v9 = v6[3];
      v12 = v6[4];
      v11 = v6[5];
      v13 = v6[6];

      v22 = v9;
      sub_21CC96064(v9, v12);
      v23 = v11;
      sub_21CC96064(v11, v13);
      sub_21CD83B74();
      if (v10)
      {
        sub_21CD84284();
        MEMORY[0x21CF17CC0](*(v10 + 16));
        v14 = *(v10 + 16);
        if (v14)
        {
          v15 = (v10 + 40);
          do
          {
            v16 = *(v15 - 1);
            v17 = *v15;

            sub_21CD83B74();

            v15 += 2;
            --v14;
          }

          while (v14);
        }
      }

      else
      {
        sub_21CD84284();
      }

      if (v12 >> 60 == 15)
      {
        sub_21CD84284();
        v19 = v22;
        v18 = v23;
      }

      else
      {
        sub_21CD84284();
        v19 = v22;
        sub_21CD83704();
        v18 = v23;
      }

      sub_21CD84284();
      if (v13 >> 60 != 15)
      {
        sub_21CD83704();
      }

      sub_21CC95F8C(v19, v12);
      result = sub_21CC95F8C(v18, v13);
      ++v5;
    }

    while (v5 != v21);
  }

  return result;
}

uint64_t sub_21CCCFE38(__int128 *a1, uint64_t a2)
{
  v4 = sub_21CD837F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DigitalPresentmentDocumentType(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IdentityDocumentDescriptor(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 + 16);
  result = MEMORY[0x21CF17CC0](v20);
  if (v20)
  {
    v22 = *(v14 + 20);
    v23 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v24 = *(v15 + 72);
    v25 = v5;
    v26 = (v5 + 48);
    v32 = (v25 + 8);
    v33 = (v25 + 32);
    v34 = v24;
    do
    {
      sub_21CCD17B8(v23, v19, type metadata accessor for IdentityDocumentDescriptor);
      sub_21CCD17B8(v19, v13, type metadata accessor for DigitalPresentmentDocumentType);
      v30 = (*v26)(v13, 2, v4);
      if (v30)
      {
        if (v30 == 1)
        {
          v31 = 0;
        }

        else
        {
          v31 = 2;
        }

        MEMORY[0x21CF17CC0](v31);
      }

      else
      {
        v27 = v22;
        v28 = v35;
        (*v33)(v35, v13, v4);
        MEMORY[0x21CF17CC0](1);
        sub_21CCD1820(&qword_27CE19380, MEMORY[0x277CC9698]);
        sub_21CD83A64();
        v29 = v28;
        v22 = v27;
        v24 = v34;
        (*v32)(v29, v4);
      }

      sub_21CCD4DD4(a1, *&v19[v22]);
      result = sub_21CCD1868(v19, type metadata accessor for IdentityDocumentDescriptor);
      v23 += v24;
      --v20;
    }

    while (v20);
  }

  return result;
}

uint64_t sub_21CCD0154(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE19280, &qword_21CD88F30);
    sub_21CCD1820(a2, type metadata accessor for IdentityDocumentDescriptor);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CCD01F0()
{
  result = qword_27CE192B8;
  if (!qword_27CE192B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE192B8);
  }

  return result;
}

unint64_t sub_21CCD0248()
{
  result = qword_27CE192C0;
  if (!qword_27CE192C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE192C0);
  }

  return result;
}

unint64_t sub_21CCD02A0()
{
  result = qword_27CE192C8;
  if (!qword_27CE192C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE192C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MobileDocumentReaderSupportChecker(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MobileDocumentReaderSupportChecker(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for IdentityDocumentCompoundDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IdentityDocumentCompoundDescriptor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21CCD0520()
{
  result = qword_27CE192D0;
  if (!qword_27CE192D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE192D0);
  }

  return result;
}

unint64_t sub_21CCD0578()
{
  result = qword_27CE192D8;
  if (!qword_27CE192D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE192D8);
  }

  return result;
}

unint64_t sub_21CCD05D0()
{
  result = qword_27CE192E0;
  if (!qword_27CE192E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE192E0);
  }

  return result;
}

unint64_t sub_21CCD0628()
{
  result = qword_27CE192E8;
  if (!qword_27CE192E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE192E8);
  }

  return result;
}

unint64_t sub_21CCD0680()
{
  result = qword_27CE192F0;
  if (!qword_27CE192F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE192F0);
  }

  return result;
}

unint64_t sub_21CCD06D8()
{
  result = qword_27CE192F8;
  if (!qword_27CE192F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE192F8);
  }

  return result;
}

unint64_t sub_21CCD0730()
{
  result = qword_27CE19300;
  if (!qword_27CE19300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19300);
  }

  return result;
}

unint64_t sub_21CCD0788()
{
  result = qword_27CE19308;
  if (!qword_27CE19308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19308);
  }

  return result;
}

uint64_t sub_21CCD07DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x21CF17CC0](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v7 = *(v5 - 1);
      v8 = *v5;
      if (*(v5 - 2))
      {
        v6 = *(v5 - 3);
        sub_21CD84284();

        sub_21CD83B74();
      }

      else
      {
        sub_21CD84284();
      }

      sub_21CD83B74();

      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_21CCD08A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x21CF17CC0](v3);
  if (v3)
  {
    v5 = (a2 + 72);
    do
    {
      v7 = *(v5 - 5);
      v6 = *(v5 - 4);
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);
      v11 = *(v5 - 1);
      v10 = *v5;

      sub_21CD83B74();
      if (v8)
      {
        sub_21CD84284();
        sub_21CD83B74();
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_21CD84284();
        if (!v10)
        {
LABEL_9:
          sub_21CD84284();
          goto LABEL_4;
        }
      }

      sub_21CD84284();
      sub_21CD83B74();
LABEL_4:

      v5 += 6;

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_21CCD09B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x21CF17CC0](v3);
  if (v3)
  {
    v5 = (a2 + 72);
    do
    {
      v8 = *(v5 - 5);
      v7 = *(v5 - 4);
      v10 = *(v5 - 3);
      v9 = *(v5 - 2);
      v6 = *(v5 - 1);
      v11 = *v5;

      sub_21CD83B74();
      sub_21CD83B74();
      if (v11 == 1)
      {
        if (v6)
        {
          v6 = 2;
        }

        else
        {
          v6 = 1;
        }
      }

      else
      {
        MEMORY[0x21CF17CC0](0);
      }

      MEMORY[0x21CF17CC0](v6);

      v5 += 48;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_21CCD0A90(uint64_t a1, uint64_t a2)
{
  v61 = sub_21CD83504();
  v69 = *(v61 - 8);
  v3 = v69[8];
  MEMORY[0x28223BE20](v61, v4);
  v60 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v59 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v58 = &v56 - v12;
  v13 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  v70 = *(v13 - 8);
  v14 = *(v70 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = (&v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19320, &qword_21CD893F0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v22 = &v56 - v21;
  v23 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a2 + 16);
  result = MEMORY[0x21CF17CC0](v29);
  v71 = v29;
  if (v29)
  {
    v31 = 0;
    v32 = *(v24 + 80);
    v33 = *(v23 + 20);
    v66 = *(v23 + 24);
    v67 = v33;
    v65 = a2 + ((v32 + 32) & ~v32);
    v63 = (v69 + 6);
    v64 = (v70 + 48);
    v56 = (v69 + 1);
    v57 = (v69 + 4);
    v62 = *(v24 + 72);
    v69 = v17;
    v70 = v13;
    v68 = v22;
    do
    {
      sub_21CCD17B8(v65 + v62 * v31, v28, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege);
      sub_21CCD1750(v28, v22, &qword_27CE19320, &qword_21CD893F0);
      if ((*v64)(v22, 1, v13) == 1)
      {
        sub_21CD84284();
      }

      else
      {
        sub_21CCD16E8(v22, v17, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass);
        sub_21CD84284();
        v34 = *v17;
        v35 = v17[1];
        sub_21CD83B74();
        v36 = v17[2];
        v37 = v17[3];
        sub_21CD83B74();
        v38 = v58;
        sub_21CCD1750(v17 + *(v13 + 24), v58, &qword_27CE19318, &qword_21CD95170);
        v39 = *v63;
        v40 = v61;
        if ((*v63)(v38, 1, v61) == 1)
        {
          sub_21CD84284();
        }

        else
        {
          v41 = v60;
          (*v57)(v60, v38, v40);
          sub_21CD84284();
          sub_21CCD1820(&qword_27CE19328, MEMORY[0x277CC8990]);
          sub_21CD83A64();
          (*v56)(v41, v40);
        }

        v42 = v59;
        sub_21CCD1750(v17 + *(v13 + 28), v59, &qword_27CE19318, &qword_21CD95170);
        if (v39(v42, 1, v40) == 1)
        {
          sub_21CD84284();
        }

        else
        {
          v43 = v60;
          (*v57)(v60, v42, v40);
          sub_21CD84284();
          sub_21CCD1820(&qword_27CE19328, MEMORY[0x277CC8990]);
          sub_21CD83A64();
          (*v56)(v43, v40);
        }

        sub_21CCD1868(v17, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass);
      }

      v44 = *&v28[v67];
      MEMORY[0x21CF17CC0](*(v44 + 16));
      v45 = *(v44 + 16);
      if (v45)
      {
        v46 = (v44 + 56);
        do
        {
          v48 = *(v46 - 1);
          v49 = *v46;
          if (*(v46 - 2))
          {
            v47 = *(v46 - 3);
            sub_21CD84284();

            sub_21CD83B74();
          }

          else
          {
            sub_21CD84284();
          }

          sub_21CD83B74();

          v46 += 4;
          --v45;
        }

        while (v45);
      }

      v50 = *&v28[v66];
      MEMORY[0x21CF17CC0](*(v50 + 16));
      v51 = *(v50 + 16);
      if (v51)
      {
        v52 = (v50 + 56);
        do
        {
          v54 = *(v52 - 1);
          v55 = *v52;
          if (*(v52 - 2))
          {
            v53 = *(v52 - 3);
            sub_21CD84284();

            sub_21CD83B74();
          }

          else
          {
            sub_21CD84284();
          }

          sub_21CD83B74();

          v52 += 4;
          --v51;
        }

        while (v51);
      }

      ++v31;
      result = sub_21CCD1868(v28, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege);
      v13 = v70;
      v22 = v68;
      v17 = v69;
    }

    while (v31 != v71);
  }

  return result;
}

uint64_t sub_21CCD11AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CD83504();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v57 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v56 = &v44 - v15;
  v16 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege(0);
  v17 = *(v16 - 1);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = (&v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(a2 + 16);
  result = MEMORY[0x21CF17CC0](v22);
  v55 = v22;
  if (v22)
  {
    v24 = 0;
    v25 = v16[5];
    v50 = v16[6];
    v51 = v25;
    v26 = v16[7];
    v48 = a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v49 = v26;
    v27 = (v4 + 48);
    v28 = *(v17 + 72);
    v45 = (v4 + 32);
    v46 = v28;
    v44 = (v4 + 8);
    v53 = v13;
    v54 = v3;
    v47 = (v4 + 48);
    v52 = v21;
    while (1)
    {
      sub_21CCD17B8(v48 + v46 * v24, v21, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege);
      v29 = *v21;
      v30 = v21[1];
      sub_21CD83B74();
      v31 = v56;
      sub_21CCD1750(v21 + v51, v56, &qword_27CE19318, &qword_21CD95170);
      v32 = *v27;
      if ((*v27)(v31, 1, v3) == 1)
      {
        sub_21CD84284();
      }

      else
      {
        v33 = v57;
        (*v45)(v57, v31, v3);
        sub_21CD84284();
        sub_21CCD1820(&qword_27CE19328, MEMORY[0x277CC8990]);
        sub_21CD83A64();
        (*v44)(v33, v3);
      }

      sub_21CCD1750(v21 + v50, v13, &qword_27CE19318, &qword_21CD95170);
      if (v32(v13, 1, v3) == 1)
      {
        sub_21CD84284();
      }

      else
      {
        v34 = v57;
        (*v45)(v57, v13, v3);
        sub_21CD84284();
        sub_21CCD1820(&qword_27CE19328, MEMORY[0x277CC8990]);
        sub_21CD83A64();
        (*v44)(v34, v3);
      }

      v35 = *(v21 + v49);
      MEMORY[0x21CF17CC0](*(v35 + 16));
      v36 = *(v35 + 16);
      if (v36)
      {
        break;
      }

LABEL_3:
      ++v24;
      v21 = v52;
      result = sub_21CCD1868(v52, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege);
      v3 = v54;
      v13 = v53;
      v27 = v47;
      if (v24 == v55)
      {
        return result;
      }
    }

    v37 = (v35 + 72);
    while (1)
    {
      v38 = *(v37 - 5);
      v39 = *(v37 - 4);
      v40 = *(v37 - 3);
      v41 = *(v37 - 2);
      v42 = *(v37 - 1);
      v43 = *v37;

      sub_21CD83B74();
      if (v41)
      {
        sub_21CD84284();
        sub_21CD83B74();
        if (!v43)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_21CD84284();
        if (!v43)
        {
LABEL_18:
          sub_21CD84284();
          goto LABEL_13;
        }
      }

      sub_21CD84284();
      sub_21CD83B74();
LABEL_13:

      v37 += 6;

      if (!--v36)
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}

uint64_t sub_21CCD16E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CCD1750(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21CCD17B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CCD1820(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CCD1868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CCD18F8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = sub_21CD837F4();
  v87 = *(v3 - 8);
  v88 = v3;
  v4 = *(v87 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v85 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DigitalPresentmentDocumentType(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v84 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IdentityDocumentDescriptor(0);
  v89 = *(v11 - 8);
  v90 = v11;
  v12 = *(v89 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v86 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21CD7D550(MEMORY[0x277D84F90]);
  v15 = [a1 elements];
  sub_21CCD65E4();
  v16 = sub_21CD83C84();

  if (v16 >> 62)
  {
LABEL_44:
    v17 = sub_21CD83FE4();
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
LABEL_3:
      v18 = 0;
      v99 = v16;
      v100 = v16 & 0xC000000000000001;
      v95 = v17;
      v96 = v16 & 0xFFFFFFFFFFFFFF8;
      v19 = &_swift_FORCE_LOAD___swiftOSLog___CoreIDV;
      v92 = a1;
      do
      {
        if (v100)
        {
          v20 = MEMORY[0x21CF179D0](v18, v16);
        }

        else
        {
          if (v18 >= *(v96 + 16))
          {
            goto LABEL_41;
          }

          v20 = *(v16 + 8 * v18 + 32);
        }

        v21 = v20;
        v22 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v23 = [a1 intentToStoreForElement_];
        if (v23)
        {
          v24 = v23;
          v25 = a1;
          v26 = [v21 v19[331]];
          v27 = sub_21CD83B24();
          a1 = v19;
          v29 = v28;

          IdentityElement.init(rawValue:)(v27, v29, &v101);
          if (v103)
          {
            if (qword_280F77E40 != -1)
            {
              swift_once();
            }

            v30 = sub_21CD839F4();
            __swift_project_value_buffer(v30, qword_280F78E40);
            v31 = sub_21CD839D4();
            v32 = sub_21CD83E24();
            a1 = v25;
            if (os_log_type_enabled(v31, v32))
            {
              v33 = swift_slowAlloc();
              *v33 = 0;
              _os_log_impl(&dword_21CC90000, v31, v32, "makeIdentityDocumentDescriptor could not create element", v33, 2u);
              MEMORY[0x21CF18580](v33, -1, -1);
            }

            v19 = &_swift_FORCE_LOAD___swiftOSLog___CoreIDV;
            v16 = v99;
          }

          else
          {
            v97 = v18 + 1;
            v39 = v101;
            v40 = v102;
            v41 = [v24 a1 + 1656];
            v42 = sub_21CD83B24();
            v44 = v43;

            IdentityIntentToStore.init(rawValue:)(v42, v44, &v101);
            if (v103)
            {
              a1 = v25;
              v22 = v97;
              if (qword_280F77E40 != -1)
              {
                swift_once();
              }

              v45 = sub_21CD839F4();
              __swift_project_value_buffer(v45, qword_280F78E40);
              v46 = sub_21CD839D4();
              v47 = sub_21CD83E24();
              v48 = os_log_type_enabled(v46, v47);
              v17 = v95;
              v16 = v99;
              if (v48)
              {
                v49 = swift_slowAlloc();
                *v49 = 0;
                _os_log_impl(&dword_21CC90000, v46, v47, "makeIdentityDocumentDescriptor could not create identity intent to store", v49, 2u);
                MEMORY[0x21CF18580](v49, -1, -1);
              }
            }

            else
            {
              v50 = v39;
              v94 = v101;
              v51 = v102;
              v52 = v98;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v101 = v52;
              v16 = v40;
              v54 = v40 & 1;
              v55 = v50;
              v57 = sub_21CCAAE2C(v50, v54);
              v58 = v52[2];
              v59 = (v56 & 1) == 0;
              v60 = v58 + v59;
              if (__OFADD__(v58, v59))
              {
                goto LABEL_42;
              }

              a1 = v56;
              v93 = v51;
              if (v52[3] >= v60)
              {
                v22 = v97;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_21CD76B3C();
                }
              }

              else
              {
                sub_21CD75BC0(v60, isUniquelyReferenced_nonNull_native);
                v61 = sub_21CCAAE2C(v55, v16 & 1);
                v22 = v97;
                if ((a1 & 1) != (v62 & 1))
                {
                  result = sub_21CD841F4();
                  __break(1u);
                  return result;
                }

                v57 = v61;
              }

              v17 = v95;
              v98 = v101;
              if (a1)
              {
                v63 = v101[7] + 16 * v57;
                *v63 = v94;
                *(v63 + 8) = v93 & 1;
              }

              else
              {
                v101[(v57 >> 6) + 8] |= 1 << v57;
                v64 = v98[6] + 16 * v57;
                *v64 = v55;
                *(v64 + 8) = v16 & 1;
                v65 = v98[7] + 16 * v57;
                *v65 = v94;
                *(v65 + 8) = v93 & 1;

                v66 = v98[2];
                v67 = __OFADD__(v66, 1);
                v68 = v66 + 1;
                if (v67)
                {
                  goto LABEL_43;
                }

                v98[2] = v68;
              }

              a1 = v92;
              v16 = v99;
            }

            v19 = &_swift_FORCE_LOAD___swiftOSLog___CoreIDV;
          }
        }

        else
        {
          if (qword_280F77E40 != -1)
          {
            swift_once();
          }

          v34 = sub_21CD839F4();
          __swift_project_value_buffer(v34, qword_280F78E40);
          v35 = sub_21CD839D4();
          v36 = sub_21CD83E34();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            *v37 = 0;
            _os_log_impl(&dword_21CC90000, v35, v36, "makeIdentityDocumentDescriptor could not get diIntentToStore", v37, 2u);
            v38 = v37;
            v19 = &_swift_FORCE_LOAD___swiftOSLog___CoreIDV;
            MEMORY[0x21CF18580](v38, -1, -1);
          }
        }

        ++v18;
      }

      while (v22 != v17);
    }
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
    v69 = v86;
    (*(v87 + 56))(v86, 1, 2, v88);
LABEL_53:
    v77 = v90;
    *(v69 + *(v90 + 20)) = v98;
    v78 = v69;
    v79 = v91;
    sub_21CCD6630(v78, v91, type metadata accessor for IdentityDocumentDescriptor);
    return (*(v89 + 56))(v79, 0, 1, v77);
  }

  objc_opt_self();
  v70 = swift_dynamicCastObjCClass();
  if (v70)
  {
    v71 = [v70 regionCode];
    if (v71)
    {
      v72 = v71;
      sub_21CD83B24();
    }

    v73 = v85;
    sub_21CD83804();
    swift_unknownObjectRelease();
    v75 = v87;
    v74 = v88;
    v76 = v84;
    (*(v87 + 32))(v84, v73, v88);
    (*(v75 + 56))(v76, 0, 2, v74);
    v69 = v86;
    sub_21CCD6630(v76, v86, type metadata accessor for DigitalPresentmentDocumentType);
    goto LABEL_53;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
    v69 = v86;
    (*(v87 + 56))(v86, 2, 2, v88);
    goto LABEL_53;
  }

  swift_unknownObjectRelease();
  v81 = v90;
  v82 = *(v89 + 56);
  v83 = v91;

  return v82(v83, 1, 1, v81);
}

uint64_t sub_21CCD2274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DigitalPresentmentDocumentType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t IdentityDocumentDescriptor.elementsToIntentToStore.getter()
{
  v1 = *(v0 + *(type metadata accessor for IdentityDocumentDescriptor(0) + 20));
}

uint64_t sub_21CCD234C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IdentityDocumentDescriptor.elementsToIntentToStore.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IdentityDocumentDescriptor(0) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t IdentityDocumentDescriptor.init(documentType:elementsToIntentToStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21CCD6630(a1, a3, type metadata accessor for DigitalPresentmentDocumentType);
  result = type metadata accessor for IdentityDocumentDescriptor(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

unint64_t sub_21CCD2460()
{
  if (*v0)
  {
    result = 0xD000000000000017;
  }

  else
  {
    result = 0x746E656D75636F64;
  }

  *v0;
  return result;
}

uint64_t sub_21CCD24A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E656D75636F64 && a2 == 0xEC00000065707954;
  if (v6 || (sub_21CD841A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000021CD9E7C0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21CD841A4();

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

uint64_t sub_21CCD2590(uint64_t a1)
{
  v2 = sub_21CCD5584();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCD25CC(uint64_t a1)
{
  v2 = sub_21CCD5584();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityDocumentDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19390, &qword_21CD89420);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v13[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCD5584();
  sub_21CD842B4();
  v15 = 0;
  type metadata accessor for DigitalPresentmentDocumentType(0);
  sub_21CCD5680(&qword_27CE193A0, type metadata accessor for DigitalPresentmentDocumentType);
  sub_21CD84164();
  if (!v2)
  {
    v14 = *(v3 + *(type metadata accessor for IdentityDocumentDescriptor(0) + 20));
    v13[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE193A8, &qword_21CD89428);
    sub_21CCD56C8(&qword_27CE193B0, sub_21CCD55D8, sub_21CCD562C);
    sub_21CD84164();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t IdentityDocumentDescriptor.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_21CD837F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DigitalPresentmentDocumentType(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CCD5800(v2, v14, type metadata accessor for DigitalPresentmentDocumentType);
  v15 = (*(v5 + 48))(v14, 2, v4);
  if (v15)
  {
    if (v15 == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = 2;
    }

    MEMORY[0x21CF17CC0](v16);
  }

  else
  {
    (*(v5 + 32))(v9, v14, v4);
    MEMORY[0x21CF17CC0](1);
    sub_21CCD5680(&qword_27CE19380, MEMORY[0x277CC9698]);
    sub_21CD83A64();
    (*(v5 + 8))(v9, v4);
  }

  v17 = type metadata accessor for IdentityDocumentDescriptor(0);
  return sub_21CCD4DD4(a1, *(v2 + *(v17 + 20)));
}

uint64_t IdentityDocumentDescriptor.hashValue.getter()
{
  v1 = v0;
  v2 = sub_21CD837F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DigitalPresentmentDocumentType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CD84264();
  sub_21CCD5800(v1, v12, type metadata accessor for DigitalPresentmentDocumentType);
  v13 = (*(v3 + 48))(v12, 2, v2);
  if (v13)
  {
    if (v13 == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = 2;
    }

    MEMORY[0x21CF17CC0](v14);
  }

  else
  {
    (*(v3 + 32))(v7, v12, v2);
    MEMORY[0x21CF17CC0](1);
    sub_21CCD5680(&qword_27CE19380, MEMORY[0x277CC9698]);
    sub_21CD83A64();
    (*(v3 + 8))(v7, v2);
  }

  v15 = type metadata accessor for IdentityDocumentDescriptor(0);
  sub_21CCD4DD4(v18, *(v1 + *(v15 + 20)));
  return sub_21CD84294();
}

uint64_t IdentityDocumentDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for DigitalPresentmentDocumentType(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v27 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE193C8, &qword_21CD89430);
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for IdentityDocumentDescriptor(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCD5584();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = v17;
  v20 = v25;
  v30 = 0;
  sub_21CCD5680(&qword_27CE193D0, type metadata accessor for DigitalPresentmentDocumentType);
  v21 = v26;
  sub_21CD840C4();
  sub_21CCD6630(v27, v19, type metadata accessor for DigitalPresentmentDocumentType);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE193A8, &qword_21CD89428);
  v29 = 1;
  sub_21CCD56C8(&qword_27CE193D8, sub_21CCD5758, sub_21CCD57AC);
  sub_21CD840C4();
  (*(v20 + 8))(v12, v21);
  *(v19 + *(v13 + 20)) = v28;
  sub_21CCD5800(v19, v24, type metadata accessor for IdentityDocumentDescriptor);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_21CCD5868(v19, type metadata accessor for IdentityDocumentDescriptor);
}

uint64_t sub_21CCD2FE8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_21CD837F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DigitalPresentmentDocumentType(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CD84264();
  sub_21CCD5800(v4, v15, type metadata accessor for DigitalPresentmentDocumentType);
  v16 = (*(v6 + 48))(v15, 2, v5);
  if (v16)
  {
    if (v16 == 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = 2;
    }

    MEMORY[0x21CF17CC0](v17);
  }

  else
  {
    (*(v6 + 32))(v10, v15, v5);
    MEMORY[0x21CF17CC0](1);
    sub_21CCD5680(&qword_27CE19380, MEMORY[0x277CC9698]);
    sub_21CD83A64();
    (*(v6 + 8))(v10, v5);
  }

  sub_21CCD4DD4(v20, *(v4 + *(a2 + 20)));
  return sub_21CD84294();
}

uint64_t DigitalPresentmentDocumentType.description.getter()
{
  v1 = v0;
  v2 = sub_21CD837F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DigitalPresentmentDocumentType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CCD5800(v1, v12, type metadata accessor for DigitalPresentmentDocumentType);
  v13 = (*(v3 + 48))(v12, 2, v2);
  if (v13)
  {
    if (v13 == 1)
    {
      return 0x4C73726576697264;
    }

    else
    {
      return 0x44496F746F6870;
    }
  }

  else
  {
    (*(v3 + 32))(v7, v12, v2);
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_21CD83F74();

    v17 = 0x6C616E6F6974616ELL;
    v18 = 0xEF2D647261434449;
    v15 = sub_21CD837C4();
    MEMORY[0x21CF175E0](v15);

    v16 = v17;
    (*(v3 + 8))(v7, v2);
    return v16;
  }
}

uint64_t sub_21CCD3424()
{
  v1 = 0x6C616E6F6974616ELL;
  if (*v0 != 1)
  {
    v1 = 0x44496F746F6870;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4C73726576697264;
  }
}

uint64_t sub_21CCD3498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CCD6454(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CCD34C0(uint64_t a1)
{
  v2 = sub_21CCD5BC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCD34FC(uint64_t a1)
{
  v2 = sub_21CCD5BC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCD3538(uint64_t a1)
{
  v2 = sub_21CCD5CC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCD3574(uint64_t a1)
{
  v2 = sub_21CCD5CC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCD35BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21CD841A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21CCD363C(uint64_t a1)
{
  v2 = sub_21CCD5C70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCD3678(uint64_t a1)
{
  v2 = sub_21CCD5C70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCD36B4(uint64_t a1)
{
  v2 = sub_21CCD5C1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCD36F0(uint64_t a1)
{
  v2 = sub_21CCD5C1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DigitalPresentmentDocumentType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE193F0, &qword_21CD89438);
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v41 = &v38 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE193F8, &qword_21CD89440);
  v40 = *(v44 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v44, v7);
  v46 = &v38 - v8;
  v9 = sub_21CD837F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v45 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19400, &qword_21CD89448);
  v38 = *(v14 - 8);
  v39 = v14;
  v15 = *(v38 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v38 - v17;
  v19 = type metadata accessor for DigitalPresentmentDocumentType(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19408, &qword_21CD89450);
  v24 = *(v48 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v48, v26);
  v28 = &v38 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCD5BC8();
  v30 = v10;
  sub_21CD842B4();
  sub_21CCD5800(v47, v23, type metadata accessor for DigitalPresentmentDocumentType);
  v31 = (*(v10 + 48))(v23, 2, v9);
  if (v31)
  {
    if (v31 == 1)
    {
      v49 = 0;
      sub_21CCD5CC4();
      v32 = v48;
      sub_21CD840E4();
      (*(v38 + 8))(v18, v39);
    }

    else
    {
      v51 = 2;
      sub_21CCD5C1C();
      v37 = v41;
      v32 = v48;
      sub_21CD840E4();
      (*(v42 + 8))(v37, v43);
    }

    return (*(v24 + 8))(v28, v32);
  }

  else
  {
    v33 = v40;
    (*(v10 + 32))(v45, v23, v9);
    v50 = 1;
    sub_21CCD5C70();
    v34 = v48;
    sub_21CD840E4();
    sub_21CCD5680(&qword_27CE19428, MEMORY[0x277CC9698]);
    v35 = v44;
    sub_21CD84164();
    (*(v33 + 8))(v46, v35);
    (*(v30 + 8))(v45, v9);
    return (*(v24 + 8))(v28, v34);
  }
}

uint64_t DigitalPresentmentDocumentType.hash(into:)()
{
  v1 = sub_21CD837F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DigitalPresentmentDocumentType(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CCD5800(v0, v11, type metadata accessor for DigitalPresentmentDocumentType);
  v12 = (*(v2 + 48))(v11, 2, v1);
  if (v12)
  {
    if (v12 == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = 2;
    }

    return MEMORY[0x21CF17CC0](v13);
  }

  else
  {
    (*(v2 + 32))(v6, v11, v1);
    MEMORY[0x21CF17CC0](1);
    sub_21CCD5680(&qword_27CE19380, MEMORY[0x277CC9698]);
    sub_21CD83A64();
    return (*(v2 + 8))(v6, v1);
  }
}

uint64_t DigitalPresentmentDocumentType.hashValue.getter()
{
  v1 = v0;
  v2 = sub_21CD837F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DigitalPresentmentDocumentType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CD84264();
  sub_21CCD5800(v1, v12, type metadata accessor for DigitalPresentmentDocumentType);
  v13 = (*(v3 + 48))(v12, 2, v2);
  if (v13)
  {
    if (v13 == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = 2;
    }

    MEMORY[0x21CF17CC0](v14);
  }

  else
  {
    (*(v3 + 32))(v7, v12, v2);
    MEMORY[0x21CF17CC0](1);
    sub_21CCD5680(&qword_27CE19380, MEMORY[0x277CC9698]);
    sub_21CD83A64();
    (*(v3 + 8))(v7, v2);
  }

  return sub_21CD84294();
}

uint64_t DigitalPresentmentDocumentType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19438, &qword_21CD89458);
  v66 = *(v61 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x28223BE20](v61, v4);
  v65 = &v55 - v5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19440, &qword_21CD89460);
  v62 = *(v60 - 8);
  v6 = *(v62 + 64);
  MEMORY[0x28223BE20](v60, v7);
  v64 = &v55 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19448, &qword_21CD89468);
  v63 = *(v59 - 8);
  v9 = *(v63 + 64);
  MEMORY[0x28223BE20](v59, v10);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19450, &unk_21CD89470);
  v68 = *(v13 - 8);
  v14 = *(v68 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v55 - v16;
  v18 = type metadata accessor for DigitalPresentmentDocumentType(0);
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v55 - v25;
  v27 = a1[3];
  v28 = a1[4];
  v70 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v27);
  sub_21CCD5BC8();
  v29 = v69;
  sub_21CD842A4();
  if (v29)
  {
    return __swift_destroy_boxed_opaque_existential_0(v70);
  }

  v69 = v18;
  v31 = v63;
  v30 = v64;
  v56 = v23;
  v57 = v26;
  v32 = v65;
  v33 = v66;
  v58 = 0;
  v34 = v67;
  v35 = sub_21CD840D4();
  v36 = (2 * *(v35 + 16)) | 1;
  v71 = v35;
  v72 = v35 + 32;
  v73 = 0;
  v74 = v36;
  v37 = sub_21CCD18D4();
  if (v37 != 3 && v73 == v74 >> 1)
  {
    if (v37)
    {
      v38 = v68;
      if (v37 == 1)
      {
        v75 = 1;
        sub_21CCD5C70();
        v39 = v30;
        v40 = v58;
        sub_21CD84034();
        if (!v40)
        {
          v41 = sub_21CD837F4();
          sub_21CCD5680(&qword_27CE19458, MEMORY[0x277CC9698]);
          v42 = v56;
          v43 = v60;
          sub_21CD840C4();
          (*(v62 + 8))(v39, v43);
          (*(v38 + 8))(v17, v13);
          swift_unknownObjectRelease();
          (*(*(v41 - 8) + 56))(v42, 0, 2, v41);
          v44 = v57;
          sub_21CCD6630(v42, v57, type metadata accessor for DigitalPresentmentDocumentType);
          goto LABEL_19;
        }

        goto LABEL_16;
      }

      v75 = 2;
      sub_21CCD5C1C();
      v52 = v58;
      sub_21CD84034();
      if (v52)
      {
LABEL_16:
        (*(v38 + 8))(v17, v13);
        goto LABEL_10;
      }

      (*(v33 + 8))(v32, v61);
      (*(v38 + 8))(v17, v13);
      swift_unknownObjectRelease();
      v54 = sub_21CD837F4();
      v44 = v57;
      (*(*(v54 - 8) + 56))(v57, 2, 2, v54);
    }

    else
    {
      v75 = 0;
      sub_21CCD5CC4();
      v50 = v58;
      sub_21CD84034();
      v51 = v68;
      if (v50)
      {
        (*(v68 + 8))(v17, v13);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_0(v70);
      }

      (*(v31 + 8))(v12, v59);
      (*(v51 + 8))(v17, v13);
      swift_unknownObjectRelease();
      v53 = sub_21CD837F4();
      v44 = v57;
      (*(*(v53 - 8) + 56))(v57, 1, 2, v53);
    }

LABEL_19:
    sub_21CCD6630(v44, v34, type metadata accessor for DigitalPresentmentDocumentType);
    return __swift_destroy_boxed_opaque_existential_0(v70);
  }

  v45 = sub_21CD83FA4();
  swift_allocError();
  v47 = v46;
  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20) + 48);
  *v47 = v69;
  sub_21CD84044();
  sub_21CD83F94();
  (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
  swift_willThrow();
  (*(v68 + 8))(v17, v13);
LABEL_10:
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v70);
}

uint64_t sub_21CCD4814(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CD837F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v8, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CCD5800(v2, v14, type metadata accessor for DigitalPresentmentDocumentType);
  v15 = (*(v5 + 48))(v14, 2, v4);
  if (v15)
  {
    if (v15 == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = 2;
    }

    return MEMORY[0x21CF17CC0](v16);
  }

  else
  {
    (*(v5 + 32))(v10, v14, v4);
    MEMORY[0x21CF17CC0](1);
    sub_21CCD5680(&qword_27CE19380, MEMORY[0x277CC9698]);
    sub_21CD83A64();
    return (*(v5 + 8))(v10, v4);
  }
}

uint64_t sub_21CCD49EC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_21CD837F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v9, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CD84264();
  sub_21CCD5800(v4, v15, type metadata accessor for DigitalPresentmentDocumentType);
  v16 = (*(v6 + 48))(v15, 2, v5);
  if (v16)
  {
    if (v16 == 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = 2;
    }

    MEMORY[0x21CF17CC0](v17);
  }

  else
  {
    (*(v6 + 32))(v11, v15, v5);
    MEMORY[0x21CF17CC0](1);
    sub_21CCD5680(&qword_27CE19380, MEMORY[0x277CC9698]);
    sub_21CD83A64();
    (*(v6 + 8))(v11, v5);
  }

  return sub_21CD84294();
}

uint64_t sub_21CCD4BF4(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
LABEL_10:
    v11 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v12 = (*(a2 + 48) + v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(a2 + 56) + v11);
    v16 = *v15;
    v17 = v15[1];

    if (!v13)
    {
LABEL_15:

      return MEMORY[0x21CF17CC0](v8);
    }

    v26 = v8;
    v18 = *(a1 + 48);
    v27[2] = *(a1 + 32);
    v27[3] = v18;
    v28 = *(a1 + 64);
    v19 = *(a1 + 16);
    v27[0] = *a1;
    v27[1] = v19;
    sub_21CD83B74();

    sub_21CCCF730(v27, v16);

    MEMORY[0x21CF17CC0](*(v17 + 16));
    v20 = *(v17 + 16);
    if (v20)
    {
      v21 = (v17 + 40);
      do
      {
        v22 = *(v21 - 1);
        v23 = *v21;

        sub_21CD83B74();

        v21 += 2;
        --v20;
      }

      while (v20);
    }

    v5 &= v5 - 1;
    swift_bridgeObjectRelease_n();

    result = sub_21CD84294();
    v8 = result ^ v26;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      goto LABEL_15;
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CCD4DD4(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  while (v7)
  {
LABEL_11:
    v14 = (v11 << 10) | (16 * __clz(__rbit64(v7)));
    v15 = *(a2 + 48) + v14;
    v16 = *(a2 + 56) + v14;
    v17 = *v16;
    v18 = *(v16 + 8);
    v23 = a1[2];
    v24 = a1[3];
    v25 = *(a1 + 8);
    v21 = *a1;
    v22 = a1[1];
    v19 = *v15;
    v20 = *(v15 + 8);
    IdentityElement.rawValue.getter();
    sub_21CD83B74();

    if (v18 != 1)
    {
      sub_21CD83F74();

      v12 = sub_21CD84174();
      MEMORY[0x21CF175E0](v12);

      MEMORY[0x21CF175E0](41, 0xE100000000000000);
    }

    v7 &= v7 - 1;
    sub_21CD83B74();

    result = sub_21CD84294();
    v10 ^= result;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v8)
    {

      return MEMORY[0x21CF17CC0](v10);
    }

    v7 = *(v4 + 8 * v13);
    ++v11;
    if (v7)
    {
      v11 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CCD5008(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = a2 + 64;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
LABEL_11:
    v13 = __clz(__rbit64(v9)) | (v5 << 6);
    v14 = *(a2 + 48) + 16 * v13;
    v11 = *v14;
    v15 = *(*(a2 + 56) + v13);
    v19 = *(v3 + 32);
    v20 = *(v3 + 48);
    v16 = *(v3 + 64);
    v17 = *v3;
    v18 = *(v3 + 16);
    if (*(v14 + 8))
    {
      v11 = qword_21CD89B50[v11];
    }

    else
    {
      MEMORY[0x21CF17CC0](5);
    }

    v9 &= v9 - 1;
    MEMORY[0x21CF17CC0](v11);
    sub_21CD84284();
    result = sub_21CD84294();
    v4 ^= result;
  }

  while (1)
  {
    v12 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      return MEMORY[0x21CF17CC0](v4);
    }

    v9 = *(v6 + 8 * v12);
    ++v5;
    if (v9)
    {
      v5 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CCD5148(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = a2 + 64;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 64);
  for (i = (v7 + 63) >> 6; v9; v4 ^= result)
  {
    v11 = v5;
LABEL_9:
    v12 = __clz(__rbit64(v9)) | (v11 << 6);
    v13 = *(*(a2 + 56) + v12);
    v9 &= v9 - 1;
    v16 = *(v3 + 32);
    v17 = *(v3 + 48);
    v18 = *(v3 + 64);
    v14 = *v3;
    v15 = *(v3 + 16);
    MEMORY[0x21CF17CC0](*(*(a2 + 48) + 8 * v12));
    sub_21CD84284();
    result = sub_21CD84294();
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= i)
    {
      return MEMORY[0x21CF17CC0](v4);
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s7CoreIDV26IdentityDocumentDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CD837F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DigitalPresentmentDocumentType(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19388, &unk_21CD89B40);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v20 = &v29 - v19;
  v21 = *(v18 + 56);
  sub_21CCD5800(a1, &v29 - v19, type metadata accessor for DigitalPresentmentDocumentType);
  sub_21CCD5800(a2, &v20[v21], type metadata accessor for DigitalPresentmentDocumentType);
  v22 = *(v5 + 48);
  v23 = v22(v20, 2, v4);
  if (v23)
  {
    if (v23 == 1)
    {
      if (v22(&v20[v21], 2, v4) == 1)
      {
        goto LABEL_10;
      }
    }

    else if (v22(&v20[v21], 2, v4) == 2)
    {
LABEL_10:
      sub_21CCD5868(v20, type metadata accessor for DigitalPresentmentDocumentType);
      v27 = type metadata accessor for IdentityDocumentDescriptor(0);
      v24 = sub_21CCFB7DC(*(a1 + *(v27 + 20)), *(a2 + *(v27 + 20)));
      return v24 & 1;
    }
  }

  else
  {
    sub_21CCD5800(v20, v14, type metadata accessor for DigitalPresentmentDocumentType);
    if (!v22(&v20[v21], 2, v4))
    {
      (*(v5 + 32))(v9, &v20[v21], v4);
      v25 = MEMORY[0x21CF17230](v14, v9);
      v26 = *(v5 + 8);
      v26(v9, v4);
      v26(v14, v4);
      if ((v25 & 1) == 0)
      {
        sub_21CCD5868(v20, type metadata accessor for DigitalPresentmentDocumentType);
        v24 = 0;
        return v24 & 1;
      }

      goto LABEL_10;
    }

    (*(v5 + 8))(v14, v4);
  }

  sub_21CCD657C(v20);
  v24 = 0;
  return v24 & 1;
}

unint64_t sub_21CCD5584()
{
  result = qword_27CE19398;
  if (!qword_27CE19398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19398);
  }

  return result;
}

unint64_t sub_21CCD55D8()
{
  result = qword_27CE193B8;
  if (!qword_27CE193B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE193B8);
  }

  return result;
}

unint64_t sub_21CCD562C()
{
  result = qword_27CE193C0;
  if (!qword_27CE193C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE193C0);
  }

  return result;
}

uint64_t sub_21CCD5680(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CCD56C8(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE193A8, &qword_21CD89428);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CCD5758()
{
  result = qword_27CE193E0;
  if (!qword_27CE193E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE193E0);
  }

  return result;
}

unint64_t sub_21CCD57AC()
{
  result = qword_27CE193E8;
  if (!qword_27CE193E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE193E8);
  }

  return result;
}

uint64_t sub_21CCD5800(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CCD5868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7CoreIDV30DigitalPresentmentDocumentTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CD837F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DigitalPresentmentDocumentType(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19388, &unk_21CD89B40);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v20 = &v27 - v19;
  v21 = *(v18 + 56);
  sub_21CCD5800(a1, &v27 - v19, type metadata accessor for DigitalPresentmentDocumentType);
  sub_21CCD5800(a2, &v20[v21], type metadata accessor for DigitalPresentmentDocumentType);
  v22 = *(v5 + 48);
  v23 = v22(v20, 2, v4);
  if (!v23)
  {
    sub_21CCD5800(v20, v14, type metadata accessor for DigitalPresentmentDocumentType);
    if (!v22(&v20[v21], 2, v4))
    {
      (*(v5 + 32))(v9, &v20[v21], v4);
      v24 = MEMORY[0x21CF17230](v14, v9);
      v26 = *(v5 + 8);
      v26(v9, v4);
      v26(v14, v4);
      sub_21CCD5868(v20, type metadata accessor for DigitalPresentmentDocumentType);
      return v24 & 1;
    }

    (*(v5 + 8))(v14, v4);
    goto LABEL_9;
  }

  if (v23 == 1)
  {
    if (v22(&v20[v21], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v22(&v20[v21], 2, v4) != 2)
  {
LABEL_9:
    sub_21CCD657C(v20);
    v24 = 0;
    return v24 & 1;
  }

  sub_21CCD5868(v20, type metadata accessor for DigitalPresentmentDocumentType);
  v24 = 1;
  return v24 & 1;
}

unint64_t sub_21CCD5BC8()
{
  result = qword_27CE19410;
  if (!qword_27CE19410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19410);
  }

  return result;
}

unint64_t sub_21CCD5C1C()
{
  result = qword_27CE19418;
  if (!qword_27CE19418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19418);
  }

  return result;
}

unint64_t sub_21CCD5C70()
{
  result = qword_27CE19420;
  if (!qword_27CE19420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19420);
  }

  return result;
}

unint64_t sub_21CCD5CC4()
{
  result = qword_27CE19430;
  if (!qword_27CE19430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19430);
  }

  return result;
}

void sub_21CCD5DD0()
{
  type metadata accessor for DigitalPresentmentDocumentType(319);
  if (v0 <= 0x3F)
  {
    sub_21CCD5E54();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21CCD5E54()
{
  if (!qword_27CE19480)
  {
    sub_21CCD5EB8();
    v0 = sub_21CD83A44();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE19480);
    }
  }
}

unint64_t sub_21CCD5EB8()
{
  result = qword_27CE19488;
  if (!qword_27CE19488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19488);
  }

  return result;
}

uint64_t sub_21CCD5F34()
{
  v0 = sub_21CD837F4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_21CCD5FE0()
{
  result = qword_27CE194A0;
  if (!qword_27CE194A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE194A0);
  }

  return result;
}

unint64_t sub_21CCD6038()
{
  result = qword_27CE194A8;
  if (!qword_27CE194A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE194A8);
  }

  return result;
}

unint64_t sub_21CCD6090()
{
  result = qword_27CE194B0;
  if (!qword_27CE194B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE194B0);
  }

  return result;
}

unint64_t sub_21CCD60E8()
{
  result = qword_27CE194B8;
  if (!qword_27CE194B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE194B8);
  }

  return result;
}

unint64_t sub_21CCD6140()
{
  result = qword_27CE194C0;
  if (!qword_27CE194C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE194C0);
  }

  return result;
}

unint64_t sub_21CCD6198()
{
  result = qword_27CE194C8;
  if (!qword_27CE194C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE194C8);
  }

  return result;
}

unint64_t sub_21CCD61F0()
{
  result = qword_27CE194D0;
  if (!qword_27CE194D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE194D0);
  }

  return result;
}

unint64_t sub_21CCD6248()
{
  result = qword_27CE194D8;
  if (!qword_27CE194D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE194D8);
  }

  return result;
}

unint64_t sub_21CCD62A0()
{
  result = qword_27CE194E0;
  if (!qword_27CE194E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE194E0);
  }

  return result;
}

unint64_t sub_21CCD62F8()
{
  result = qword_27CE194E8;
  if (!qword_27CE194E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE194E8);
  }

  return result;
}

unint64_t sub_21CCD6350()
{
  result = qword_27CE194F0;
  if (!qword_27CE194F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE194F0);
  }

  return result;
}

unint64_t sub_21CCD63A8()
{
  result = qword_27CE194F8;
  if (!qword_27CE194F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE194F8);
  }

  return result;
}

unint64_t sub_21CCD6400()
{
  result = qword_27CE19500;
  if (!qword_27CE19500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19500);
  }

  return result;
}

uint64_t sub_21CCD6454(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C73726576697264 && a2 == 0xEE0065736E656369;
  if (v4 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E6F6974616ELL && a2 == 0xEE00647261434449 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496F746F6870 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_21CD841A4();

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

uint64_t sub_21CCD657C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19388, &unk_21CD89B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21CCD65E4()
{
  result = qword_27CE19508;
  if (!qword_27CE19508)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE19508);
  }

  return result;
}

uint64_t sub_21CCD6630(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void IdentityElement.init(rawValue:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19510, &qword_21CD89BF0);
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v47 = &v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19518, &qword_21CD89BF8);
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v45 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19520, &qword_21CD89C00);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19 - 8, v21);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v45 - v26;
  if (a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065 || (sub_21CD841A4() & 1) != 0)
  {

    v28 = 0;
    v29 = 0;
LABEL_5:
    v30 = 1;
    goto LABEL_6;
  }

  if (a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL || (sub_21CD841A4() & 1) != 0)
  {

    v29 = 0;
    v28 = 1;
    goto LABEL_5;
  }

  if (a1 == 7890291 && a2 == 0xE300000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    v29 = 0;
    v30 = 1;
    v28 = 2;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    v29 = 0;
    v30 = 1;
    v28 = 4;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    v29 = 0;
    v30 = 1;
    v28 = 5;
  }

  else if (a1 == 0x746867696577 && a2 == 0xE600000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    v29 = 0;
    v30 = 1;
    v28 = 6;
  }

  else if (a1 == 0x726F6C6F43657965 && a2 == 0xE800000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    v29 = 0;
    v30 = 1;
    v28 = 7;
  }

  else if (a1 == 0x6F6C6F4372696168 && a2 == 0xE900000000000072 || (sub_21CD841A4() & 1) != 0)
  {

    v29 = 0;
    v30 = 1;
    v28 = 8;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021CD9DA80 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    v29 = 0;
    v30 = 1;
    v28 = 9;
  }

  else if (a1 == 0x536E617265746576 && a2 == 0xED00007375746174 || (sub_21CD841A4() & 1) != 0)
  {

    v29 = 0;
    v30 = 1;
    v28 = 10;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021CD9DA60 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    v29 = 0;
    v30 = 1;
    v28 = 11;
  }

  else if (a1 == 0x7469617274726F70 && a2 == 0xE800000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    v29 = 0;
    v30 = 1;
    v28 = 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000021CD9DA40 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    v29 = 0;
    v30 = 1;
    v28 = 12;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021CD9DA20 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    v29 = 0;
    v30 = 1;
    v28 = 14;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xEE007265626D754ELL || (sub_21CD841A4() & 1) != 0)
  {

    v29 = 0;
    v30 = 1;
    v28 = 15;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021CD9DA00 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    v29 = 0;
    v30 = 1;
    v28 = 13;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021CD9D9E0 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    v29 = 0;
    v30 = 1;
    v28 = 16;
  }

  else if (a1 == 6645601 && a2 == 0xE300000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    v29 = 0;
    v30 = 1;
    v28 = 17;
  }

  else if (a1 == 0x6942664F65746164 && a2 == 0xEB00000000687472 || (sub_21CD841A4() & 1) != 0)
  {

    v29 = 0;
    v30 = 1;
    v28 = 18;
  }

  else
  {
    if (sub_21CD83C04())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19528, &qword_21CD89C08);
      sub_21CD838F4();
      sub_21CD83C24();
      v45 = v31;

      sub_21CCD8344();
      sub_21CD838E4();
      sub_21CD83904();

      v32 = *(v46 + 8);
      v32(v15, v10);
      v32(v18, v10);
      sub_21CCD83A8(v27, v24);
      v33 = (*(v48 + 48))(v24, 1, v49);
      if (v33 == 1)
      {
        sub_21CCD8418(v27);
      }

      else
      {
        (*(v48 + 32))(v47, v24, v49);
        swift_getKeyPath();
        sub_21CD83914();

        v34 = v50;
        v35 = v51;
        v36 = v53;
        if ((v51 ^ v50) >> 14)
        {
          v37 = v52;
          v38 = sub_21CCD8F00(v50, v51, v52, v53, 10);
          if ((v39 & 0x100) != 0)
          {
            v38 = sub_21CCD84F4(v34, v35, v37, v36, 10);
          }

          v28 = v38;
          v40 = v39;
          (*(v48 + 8))(v47, v49);
          sub_21CCD8418(v27);

          if ((v40 & 1) == 0)
          {
            v30 = 0;
            v29 = 0;
            goto LABEL_6;
          }
        }

        else
        {
          (*(v48 + 8))(v47, v49);
          sub_21CCD8418(v27);
        }
      }

      if (qword_280F77E40 != -1)
      {
        swift_once();
      }

      v41 = sub_21CD839F4();
      __swift_project_value_buffer(v41, qword_280F78E40);
      v42 = sub_21CD839D4();
      v43 = sub_21CD83E34();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_21CC90000, v42, v43, "Could not extract age from ageIsOver element", v44, 2u);
        MEMORY[0x21CF18580](v44, -1, -1);
      }
    }

    else
    {
    }

    v28 = 0;
    v30 = 0;
    v29 = 1;
  }

LABEL_6:
  *a3 = v28;
  *(a3 + 8) = v30;
  *(a3 + 9) = v29;
}

uint64_t static IdentityElementRawValueKeys.ageIsOver(_:)()
{
  v0 = sub_21CD84174();
  MEMORY[0x21CF175E0](v0);

  MEMORY[0x21CF175E0](41, 0xE100000000000000);
  return 0x65764F7349656761;
}

id IdentityElementRawValueKeys.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IdentityElementRawValueKeys.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityElementRawValueKeys();
  return objc_msgSendSuper2(&v2, sel_init);
}

id IdentityElementRawValueKeys.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityElementRawValueKeys();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t IdentityElement.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    result = 0x614E206E65766947;
    switch(*v0)
    {
      case 1:
        result = 0x4E20796C696D6146;
        break;
      case 2:
        result = 7890259;
        break;
      case 3:
        result = 0x7469617274726F50;
        break;
      case 4:
        result = 0x73736572646441;
        break;
      case 5:
        result = 0x746867696548;
        break;
      case 6:
        result = 0x746867696557;
        break;
      case 7:
        result = 0x6F6C6F4320657945;
        break;
      case 8:
        result = 0x6C6F432072696148;
        break;
      case 9:
        result = 0xD000000000000012;
        break;
      case 0xALL:
        result = 0x206E617265746556;
        break;
      case 0xBLL:
        result = 0xD000000000000011;
        break;
      case 0xCLL:
        result = 0xD00000000000001ELL;
        break;
      case 0xDLL:
        result = 0xD000000000000013;
        break;
      case 0xELL:
        result = 0xD000000000000018;
        break;
      case 0xFLL:
        result = 0x746E656D75636F44;
        break;
      case 0x10:
        result = 0xD000000000000012;
        break;
      case 0x11:
        result = 6645569;
        break;
      case 0x12:
        result = 0x20666F2065746144;
        break;
      default:
        return result;
    }
  }

  else
  {
    strcpy(v3, "Age is Over ");
    BYTE5(v3[1]) = 0;
    HIWORD(v3[1]) = -5120;
    v2 = sub_21CD84174();
    MEMORY[0x21CF175E0](v2);

    return v3[0];
  }

  return result;
}

uint64_t sub_21CCD7E78()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21CD84264();
  IdentityElement.rawValue.getter();
  sub_21CD83B74();

  return sub_21CD84294();
}

uint64_t sub_21CCD7EE8()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  IdentityElement.rawValue.getter();
  sub_21CD83B74();
}

uint64_t sub_21CCD7F54()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21CD84264();
  IdentityElement.rawValue.getter();
  sub_21CD83B74();

  return sub_21CD84294();
}

uint64_t sub_21CCD7FC4(uint64_t *a1, uint64_t *a2)
{
  v10 = *a1;
  v11 = *(a1 + 8);
  v8 = *a2;
  v9 = *(a2 + 8);
  v2 = IdentityElement.rawValue.getter();
  v4 = v3;
  if (v2 == IdentityElement.rawValue.getter() && v4 == v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_21CD841A4();
  }

  return v6 & 1;
}

uint64_t IdentityElement.rawValue.getter()
{
  if (*(v0 + 8) == 1)
  {
    result = 0x6D614E6E65766967;
    switch(*v0)
    {
      case 1:
        result = 0x614E796C696D6166;
        break;
      case 2:
        result = 7890291;
        break;
      case 3:
        result = 0x7469617274726F70;
        break;
      case 4:
        result = 0x73736572646461;
        break;
      case 5:
        result = 0x746867696568;
        break;
      case 6:
        result = 0x746867696577;
        break;
      case 7:
        result = 0x726F6C6F43657965;
        break;
      case 8:
        result = 0x6F6C6F4372696168;
        break;
      case 9:
        result = 0xD000000000000010;
        break;
      case 10:
        result = 0x536E617265746576;
        break;
      case 11:
        result = 0xD000000000000010;
        break;
      case 12:
        result = 0xD00000000000001BLL;
        break;
      case 13:
      case 16:
        result = 0xD000000000000011;
        break;
      case 14:
        result = 0xD000000000000016;
        break;
      case 15:
        result = 0x746E656D75636F64;
        break;
      case 17:
        result = 6645601;
        break;
      case 18:
        result = 0x6942664F65746164;
        break;
      default:
        return result;
    }
  }

  else
  {
    v3 = *v0;
    v2 = sub_21CD84174();
    MEMORY[0x21CF175E0](v2);

    MEMORY[0x21CF175E0](41, 0xE100000000000000);
    return 0x65764F7349656761;
  }

  return result;
}

uint64_t sub_21CCD831C@<X0>(uint64_t *a1@<X8>)
{
  result = IdentityElement.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_21CCD8344()
{
  result = qword_27CE19530;
  if (!qword_27CE19530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE19518, &qword_21CD89BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19530);
  }

  return result;
}

uint64_t sub_21CCD83A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19520, &qword_21CD89C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CCD8418(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19520, &qword_21CD89C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_21CCD8480(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19018, &qword_21CD88CE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_21CCD84F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_21CCD9138();

  result = sub_21CD83C14();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_21CCD8A8C();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_21CD83FB4();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
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

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
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

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_21CCD8A8C()
{
  v0 = sub_21CD83C24();
  v4 = sub_21CCD8B0C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_21CCD8B0C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_21CD83B64();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_21CD83EB4();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_21CCD8480(v9, 0);
  v12 = sub_21CCD8C64(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_21CD83B64();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_21CD83FB4();
LABEL_4:

  return sub_21CD83B64();
}

unint64_t sub_21CCD8C64(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
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
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_21CCD8E84(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_21CD83BE4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_21CD83FB4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_21CCD8E84(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_21CD83BB4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_21CCD8E84(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_21CD83BF4();
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
    v5 = MEMORY[0x21CF17610](15, a1 >> 16);
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

uint64_t sub_21CCD8F00(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_21CD83FB4();
  }

  result = sub_21CCD918C(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_21CCD8FF4()
{
  result = qword_27CE19538;
  if (!qword_27CE19538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19538);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IdentityElement(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IdentityElement(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_21CCD9098(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21CCD90B4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_21CCD90E4()
{
  result = qword_27CE19540;
  if (!qword_27CE19540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19540);
  }

  return result;
}

unint64_t sub_21CCD9138()
{
  result = qword_27CE19548;
  if (!qword_27CE19548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19548);
  }

  return result;
}

uint64_t sub_21CCD918C(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_21CCD8E84(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_21CD83BD4();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_21CCD8E84(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_21CCD8E84(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_21CD83BD4();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
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

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_21CCD95F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006574;
  v3 = a1;
  if (a1 <= 4u)
  {
    v12 = 0x800000021CD9CB70;
    v13 = 0x800000021CD9CB90;
    v14 = 0xD00000000000001BLL;
    if (a1 != 3)
    {
      v14 = 0xD000000000000022;
      v13 = 0x800000021CD9CBB0;
    }

    if (a1 == 2)
    {
      v14 = 0xD00000000000001DLL;
    }

    else
    {
      v12 = v13;
    }

    v15 = 0x800000021CD9CB30;
    v16 = 0xD000000000000016;
    if (a1)
    {
      v16 = 0xD00000000000001DLL;
      v15 = 0x800000021CD9CB50;
    }

    if (a1 <= 1u)
    {
      v10 = v16;
    }

    else
    {
      v10 = v14;
    }

    if (v3 <= 1)
    {
      v11 = v15;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0x800000021CD9CC10;
    v5 = 0xD000000000000028;
    v6 = 0x800000021CD9CC40;
    if (a1 == 9)
    {
      v7 = 0xD000000000000021;
    }

    else
    {
      v7 = 0xD000000000000028;
    }

    if (a1 != 9)
    {
      v6 = 0x800000021CD9CC70;
    }

    if (a1 != 8)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x645F797269707865;
    v9 = 0x800000021CD9CBE0;
    if (a1 == 6)
    {
      v9 = 0xEB00000000657461;
    }

    else
    {
      v8 = 0xD000000000000021;
    }

    if (a1 == 5)
    {
      v8 = 0x61645F6575737369;
      v9 = 0xEA00000000006574;
    }

    if (a1 <= 7u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    if (v3 <= 7)
    {
      v11 = v9;
    }

    else
    {
      v11 = v4;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (!a2)
      {
        v2 = 0x800000021CD9CB30;
        if (v10 != 0xD000000000000016)
        {
          goto LABEL_66;
        }

        goto LABEL_64;
      }

      v18 = "domestic_vehicle_restrictions";
    }

    else
    {
      if (a2 != 2)
      {
        if (a2 == 3)
        {
          v2 = 0x800000021CD9CB90;
          if (v10 != 0xD00000000000001BLL)
          {
            goto LABEL_66;
          }
        }

        else
        {
          v2 = 0x800000021CD9CBB0;
          if (v10 != 0xD000000000000022)
          {
            goto LABEL_66;
          }
        }

        goto LABEL_64;
      }

      v18 = "domestic_vehicle_endorsements";
    }

    v2 = (v18 - 32) | 0x8000000000000000;
    if (v10 != 0xD00000000000001DLL)
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  if (a2 <= 7u)
  {
    if (a2 == 5)
    {
      if (v10 != 0x61645F6575737369)
      {
        goto LABEL_66;
      }

      goto LABEL_64;
    }

    if (a2 == 6)
    {
      v2 = 0xEB00000000657461;
      if (v10 != 0x645F797269707865)
      {
        goto LABEL_66;
      }

      goto LABEL_64;
    }

    v17 = "domestic_vehicle_restriction_code";
LABEL_60:
    v2 = (v17 - 32) | 0x8000000000000000;
    if (v10 != 0xD000000000000021)
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  if (a2 == 8)
  {
    v19 = "domestic_vehicle_restriction_description";
  }

  else
  {
    if (a2 == 9)
    {
      v17 = "domestic_vehicle_endorsement_code";
      goto LABEL_60;
    }

    v19 = "domestic_vehicle_endorsement_description";
  }

  v2 = (v19 - 32) | 0x8000000000000000;
  if (v10 != 0xD000000000000028)
  {
LABEL_66:
    v20 = sub_21CD841A4();
    goto LABEL_67;
  }

LABEL_64:
  if (v11 != v2)
  {
    goto LABEL_66;
  }

  v20 = 1;
LABEL_67:

  return v20 & 1;
}

uint64_t sub_21CCD9914(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006574;
  v3 = 0x61645F6575737369;
  v4 = a1;
  v5 = 0xE400000000000000;
  v6 = 1852270963;
  v7 = 0xE500000000000000;
  if (a1 != 5)
  {
    v6 = 0x65756C6176;
    v5 = 0xE500000000000000;
  }

  v8 = 0x7365646F63;
  if (a1 != 3)
  {
    v8 = 1701080931;
    v7 = 0xE400000000000000;
  }

  if (a1 > 4u)
  {
    v7 = v5;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0xD000000000000015;
  v10 = 0x800000021CD9C8B0;
  v11 = 0x645F797269707865;
  v12 = 0xEB00000000657461;
  if (a1 == 1)
  {
    v11 = 0x61645F6575737369;
    v12 = 0xEA00000000006574;
  }

  if (a1)
  {
    v9 = v11;
    v10 = v12;
  }

  if (a1 <= 2u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v6;
  }

  if (v4 <= 2)
  {
    v14 = v10;
  }

  else
  {
    v14 = v7;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x800000021CD9C8B0;
      if (v13 != 0xD000000000000015)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    if (a2 != 1)
    {
      v2 = 0xEB00000000657461;
      if (v13 != 0x645F797269707865)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE400000000000000;
        if (v13 != 1852270963)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE500000000000000;
        if (v13 != 0x65756C6176)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0xE500000000000000;
      if (v13 != 0x7365646F63)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v2 = 0xE400000000000000;
    v3 = 1701080931;
  }

  if (v13 != v3)
  {
LABEL_37:
    v15 = sub_21CD841A4();
    goto LABEL_38;
  }

LABEL_34:
  if (v14 != v2)
  {
    goto LABEL_37;
  }

  v15 = 1;
LABEL_38:

  return v15 & 1;
}

uint64_t sub_21CCD9B0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x695F6E6F73726570;
  if (a1 <= 3u)
  {
    v4 = 0x74735F6874726962;
    v5 = 0xEB00000000657461;
    if (a1 != 2)
    {
      v4 = 0x69635F6874726962;
      v5 = 0xEA00000000007974;
    }

    v8 = 0x6F635F6874726962;
    v9 = 0xED00007972746E75;
    if (!a1)
    {
      v8 = 0x695F6E6F73726570;
      v9 = 0xE900000000000064;
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = 0xD000000000000015;
    v5 = 0x800000021CD9CE90;
    v6 = 0x800000021CD9CEB0;
    v7 = 0x746E656469736572;
    if (a1 == 7)
    {
      v7 = 0xD000000000000016;
    }

    else
    {
      v6 = 0xEE0065746174735FLL;
    }

    if (a1 != 6)
    {
      v4 = v7;
      v5 = v6;
    }

    v8 = 0xD000000000000015;
    v9 = 0x800000021CD9C720;
    if (a1 != 4)
    {
      v8 = 0x746E656469736572;
      v9 = 0xEF7465657274735FLL;
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 != 4)
      {
        v2 = 0xEF7465657274735FLL;
        if (v11 != 0x746E656469736572)
        {
          goto LABEL_46;
        }

        goto LABEL_43;
      }

      v13 = "administrative_number";
    }

    else
    {
      if (a2 != 6)
      {
        if (a2 == 7)
        {
          v2 = 0x800000021CD9CEB0;
          if (v11 != 0xD000000000000016)
          {
            goto LABEL_46;
          }

          goto LABEL_43;
        }

        v3 = 0x746E656469736572;
        v2 = 0xEE0065746174735FLL;
        goto LABEL_42;
      }

      v13 = "resident_house_number";
    }

    v2 = (v13 - 32) | 0x8000000000000000;
    if (v11 != 0xD000000000000015)
    {
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0xEB00000000657461;
      if (v11 != 0x74735F6874726962)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v2 = 0xEA00000000007974;
      if (v11 != 0x69635F6874726962)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_43;
  }

  if (a2)
  {
    v2 = 0xED00007972746E75;
    if (v11 != 0x6F635F6874726962)
    {
      goto LABEL_46;
    }

    goto LABEL_43;
  }

LABEL_42:
  if (v11 != v3)
  {
LABEL_46:
    v14 = sub_21CD841A4();
    goto LABEL_47;
  }

LABEL_43:
  if (v12 != v2)
  {
    goto LABEL_46;
  }

  v14 = 1;
LABEL_47:

  return v14 & 1;
}

uint64_t sub_21CCD9E18(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    sub_21CD83F74();

    v10 = sub_21CD84174();
    MEMORY[0x21CF175E0](v10);

    MEMORY[0x21CF175E0](41, 0xE100000000000000);
    v6 = 0xD000000000000010;
    v7 = 0x800000021CD9E7E0;
    if ((a4 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    if (a3)
    {
      v11 = 0x65726F745379616DLL;
    }

    else
    {
      v11 = 0x53746F4E6C6C6977;
    }

    if (a3)
    {
      v9 = 0xE800000000000000;
    }

    else
    {
      v9 = 0xEC00000065726F74;
    }

    if (v6 != v11)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (a1)
  {
    v6 = 0x65726F745379616DLL;
  }

  else
  {
    v6 = 0x53746F4E6C6C6977;
  }

  if (a1)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xEC00000065726F74;
  }

  if (a4)
  {
    goto LABEL_12;
  }

LABEL_9:
  sub_21CD83F74();

  v8 = sub_21CD84174();
  MEMORY[0x21CF175E0](v8);

  MEMORY[0x21CF175E0](41, 0xE100000000000000);
  v9 = 0x800000021CD9E7E0;
  if (v6 != 0xD000000000000010)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (v7 != v9)
  {
LABEL_21:
    v12 = sub_21CD841A4();
    goto LABEL_22;
  }

  v12 = 1;
LABEL_22:

  return v12 & 1;
}

uint64_t sub_21CCD9FF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB0000000065646FLL;
  v3 = 0x63696E755F786573;
  v4 = a1;
  v5 = 0xD000000000000019;
  v6 = 0xE800000000000000;
  if (a1 == 5)
  {
    v6 = 0x800000021CD9CE30;
  }

  else
  {
    v5 = 0x7469617274726F70;
  }

  v7 = 0x800000021CD9CD70;
  v8 = 0xD000000000000018;
  if (a1 != 3)
  {
    v8 = 0x63696E755F786573;
    v7 = 0xEB0000000065646FLL;
  }

  if (a1 <= 4u)
  {
    v9 = v7;
  }

  else
  {
    v8 = v5;
    v9 = v6;
  }

  v10 = 0x800000021CD9CDD0;
  v11 = 0xD000000000000016;
  v12 = 0x800000021CD9CDF0;
  if (v4 == 1)
  {
    v13 = 0xD000000000000011;
  }

  else
  {
    v13 = 0xD000000000000012;
  }

  if (v4 != 1)
  {
    v12 = 0x800000021CD9CE10;
  }

  if (v4)
  {
    v11 = v13;
    v10 = v12;
  }

  if (v4 <= 2)
  {
    v14 = v10;
  }

  else
  {
    v11 = v8;
    v14 = v9;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x800000021CD9CDD0;
      if (v11 != 0xD000000000000016)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    if (a2 == 1)
    {
      v2 = 0x800000021CD9CDF0;
      if (v11 != 0xD000000000000011)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v2 = 0x800000021CD9CE10;
    v3 = 0xD000000000000012;
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x800000021CD9CE30;
        if (v11 != 0xD000000000000019)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x7469617274726F70)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }

    if (a2 == 3)
    {
      v2 = 0x800000021CD9CD70;
      if (v11 != 0xD000000000000018)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }
  }

  if (v11 != v3)
  {
LABEL_38:
    v15 = sub_21CD841A4();
    goto LABEL_39;
  }

LABEL_35:
  if (v14 != v2)
  {
    goto LABEL_38;
  }

  v15 = 1;
LABEL_39:

  return v15 & 1;
}

uint64_t sub_21CCDA1E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF312E3032323332;
  v3 = 0x2E6F73692E67726FLL;
  if (a1 <= 1u)
  {
    v4 = 0x800000021CD9C600;
    v5 = 0xD000000000000011;
    v6 = 0x800000021CD9C620;
    v7 = a1 == 0;
  }

  else
  {
    if (a1 == 2)
    {
      v8 = 0x2E6F73692E67726FLL;
      v9 = 0xEF312E3032323332;
      goto LABEL_11;
    }

    v4 = 0x800000021CD9C650;
    v5 = 0xD000000000000012;
    v6 = 0x800000021CD9C5E0;
    v7 = a1 == 3;
  }

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xD000000000000017;
  }

  if (v7)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

LABEL_11:
  if (a2 <= 1u)
  {
    v10 = 0x800000021CD9C600;
    v11 = 0xD000000000000011;
    v12 = 0x800000021CD9C620;
    v13 = a2 == 0;
    goto LABEL_15;
  }

  if (a2 != 2)
  {
    v10 = 0x800000021CD9C650;
    v11 = 0xD000000000000012;
    v12 = 0x800000021CD9C5E0;
    v13 = a2 == 3;
LABEL_15:
    if (v13)
    {
      v3 = v11;
    }

    else
    {
      v3 = 0xD000000000000017;
    }

    if (v13)
    {
      v2 = v10;
    }

    else
    {
      v2 = v12;
    }
  }

  if (v8 == v3 && v9 == v2)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_21CD841A4();
  }

  return v14 & 1;
}

uint64_t sub_21CCDA35C()
{
  sub_21CD83B74();
}

uint64_t sub_21CCDA500()
{
  sub_21CD83B74();
}

uint64_t sub_21CCDA688(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    sub_21CD83F74();

    v3 = sub_21CD84174();
    MEMORY[0x21CF175E0](v3);

    MEMORY[0x21CF175E0](41, 0xE100000000000000);
  }

  sub_21CD83B74();
}

void IdentityIntentToStore.init(rawValue:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19550, &qword_21CD89DE0);
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v48 = &v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19558, &qword_21CD89DE8);
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19560, &qword_21CD89DF0);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19 - 8, v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v46 - v26;
  if (a1 == 0x53746F4E6C6C6977 && a2 == 0xEC00000065726F74 || (sub_21CD841A4() & 1) != 0)
  {

    v28 = 0;
    v29 = 0;
LABEL_5:
    v30 = 1;
    goto LABEL_6;
  }

  if (a1 == 0x65726F745379616DLL && a2 == 0xE800000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    v29 = 0;
    v28 = 1;
    goto LABEL_5;
  }

  if (sub_21CD83C04())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19568, &qword_21CD89DF8);
    sub_21CD838F4();
    sub_21CD83C24();
    v46 = v31;

    sub_21CCDB498();
    sub_21CD838E4();
    sub_21CD83904();

    v32 = *(v47 + 8);
    v32(v15, v10);
    v32(v18, v10);
    v34 = v49;
    v33 = v50;
    sub_21CCDB4FC(v27, v24);
    if ((*(v34 + 48))(v24, 1, v33) == 1)
    {
      sub_21CCDB56C(v27);
    }

    else
    {
      (*(v34 + 32))(v48, v24, v33);
      swift_getKeyPath();
      sub_21CD83914();

      v35 = v51;
      v36 = v52;
      v37 = v54;
      if ((v52 ^ v51) >> 14)
      {
        v38 = v53;
        v39 = sub_21CCD8F00(v51, v52, v53, v54, 10);
        if ((v40 & 0x100) != 0)
        {
          v39 = sub_21CCD84F4(v35, v36, v38, v37, 10);
        }

        v28 = v39;
        v41 = v40;
        (*(v34 + 8))(v48, v33);
        sub_21CCDB56C(v27);

        if ((v41 & 1) == 0)
        {
          v30 = 0;
          v29 = 0;
          goto LABEL_6;
        }
      }

      else
      {
        (*(v34 + 8))(v48, v33);
        sub_21CCDB56C(v27);
      }
    }

    if (qword_280F77E40 != -1)
    {
      swift_once();
    }

    v42 = sub_21CD839F4();
    __swift_project_value_buffer(v42, qword_280F78E40);
    v43 = sub_21CD839D4();
    v44 = sub_21CD83E34();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_21CC90000, v43, v44, "Could not extract days from mayStoreForDays element", v45, 2u);
      MEMORY[0x21CF18580](v45, -1, -1);
    }
  }

  else
  {
  }

  v28 = 0;
  v30 = 0;
  v29 = 1;
LABEL_6:
  *a3 = v28;
  *(a3 + 8) = v30;
  *(a3 + 9) = v29;
}

id IdentityIntentToStoreRawValueKeys.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IdentityIntentToStoreRawValueKeys.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityIntentToStoreRawValueKeys();
  return objc_msgSendSuper2(&v2, sel_init);
}

id IdentityIntentToStoreRawValueKeys.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityIntentToStoreRawValueKeys();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21CCDB07C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21CD84264();
  sub_21CCDA688(v4, v1, v2);
  return sub_21CD84294();
}

uint64_t sub_21CCDB0D8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21CD84264();
  sub_21CCDA688(v4, v1, v2);
  return sub_21CD84294();
}

uint64_t IdentityIntentToStore.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    if (*v0)
    {
      return 0x65726F745379616DLL;
    }

    else
    {
      return 0x53746F4E6C6C6977;
    }
  }

  else
  {
    sub_21CD83F74();

    v2 = sub_21CD84174();
    MEMORY[0x21CF175E0](v2);

    MEMORY[0x21CF175E0](41, 0xE100000000000000);
    return 0xD000000000000010;
  }
}

uint64_t IdentityIntentToStore.rawValue.getter()
{
  if (*(v0 + 8) == 1)
  {
    if (*v0)
    {
      return 0x65726F745379616DLL;
    }

    else
    {
      return 0x53746F4E6C6C6977;
    }
  }

  else
  {
    sub_21CD83F74();

    v2 = sub_21CD84174();
    MEMORY[0x21CF175E0](v2);

    MEMORY[0x21CF175E0](41, 0xE100000000000000);
    return 0xD000000000000010;
  }
}

uint64_t sub_21CCDB330@<X0>(uint64_t *a1@<X8>)
{
  result = IdentityIntentToStore.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t IdentityIntentToStore.merge(with:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  if (*(result + 9))
  {
    v6 = *v2;
    v7 = *(v2 + 8);
  }

  else
  {
    v8 = *result;
    v9 = *(result + 8);
    v6 = 1;
    result = sub_21CCD9E18(v4, v5, 1, 1);
    v7 = 1;
    if ((result & 1) == 0)
    {
      v6 = 1;
      result = sub_21CCD9E18(v8, v9 & 1, 1, 1);
      if ((result & 1) == 0)
      {
        if (sub_21CCD9E18(v4, v5, 0, 1) & 1) != 0 && (result = sub_21CCD9E18(v8, v9 & 1, 0, 1), (result))
        {
          v6 = 0;
        }

        else if ((v5 & 1) != 0 || (result = sub_21CCD9E18(v8, v9 & 1, 0, 1), (result & 1) == 0))
        {
          result = sub_21CCD9E18(v4, v5, 0, 1);
          if (result & 1) == 0 || (v9)
          {
            v7 = v5 | v9;
            if (v8 <= v4)
            {
              v10 = v4;
            }

            else
            {
              v10 = v8;
            }

            if ((v5 | v9))
            {
              v6 = 1;
            }

            else
            {
              v6 = v10;
            }
          }

          else
          {
            v7 = 0;
            v6 = v8;
          }
        }

        else
        {
          v7 = 0;
          v6 = v4;
        }
      }
    }
  }

  *a2 = v6;
  *(a2 + 8) = v7 & 1;
  return result;
}

unint64_t sub_21CCDB498()
{
  result = qword_27CE19570;
  if (!qword_27CE19570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE19558, &qword_21CD89DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19570);
  }

  return result;
}

uint64_t sub_21CCDB4FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19560, &qword_21CD89DF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CCDB56C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19560, &qword_21CD89DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t _s7CoreIDV33IdentityIntentToStoreRawValueKeysC03mayF7ForDaysySSSiFZ_0()
{
  sub_21CD83F74();

  v0 = sub_21CD84174();
  MEMORY[0x21CF175E0](v0);

  MEMORY[0x21CF175E0](41, 0xE100000000000000);
  return 0xD000000000000010;
}

unint64_t sub_21CCDB6A0()
{
  result = qword_27CE19578;
  if (!qword_27CE19578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19578);
  }

  return result;
}

unint64_t sub_21CCDB704()
{
  result = qword_27CE19580;
  if (!qword_27CE19580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19580);
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

uint64_t sub_21CCDB764(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CCDB7AC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_21CCDB820()
{
  v1 = *v0;
  sub_21CD84264();
  MEMORY[0x21CF17CC0](qword_21CD8A138[v1]);
  return sub_21CD84294();
}

uint64_t sub_21CCDB8A8()
{
  v1 = *v0;
  sub_21CD84264();
  MEMORY[0x21CF17CC0](qword_21CD8A138[v1]);
  return sub_21CD84294();
}

uint64_t sub_21CCDB8F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21CCDBBFC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_21CCDB938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x277D84F98];
  v26 = MEMORY[0x277D84F98];
  v8 = *MEMORY[0x277CCA068];
  v9 = sub_21CD83B24();
  v11 = v10;
  v25 = MEMORY[0x277D837D0];
  *&v24 = a2;
  *(&v24 + 1) = a3;
  sub_21CCB2190(&v24, v23);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21CD113FC(v23, v9, v11, isUniquelyReferenced_nonNull_native);

  v13 = v7;
  v26 = v7;
  v14 = *MEMORY[0x277CCA7E8];
  v15 = sub_21CD83B24();
  v17 = v15;
  v18 = v16;
  if (a4)
  {
    swift_getErrorValue();
    v25 = v22;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v24);
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_0);
    sub_21CCB2190(&v24, v23);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_21CD113FC(v23, v17, v18, v20);

    return v13;
  }

  else
  {
    sub_21CD10E64(v15, v16, &v24);

    sub_21CCC947C(&v24);
    return v26;
  }
}

uint64_t sub_21CCDBB00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21CCDBDFC(a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t sub_21CCDBB2C(uint64_t a1)
{
  v2 = sub_21CCDBBA8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_21CCDBB68(uint64_t a1)
{
  v2 = sub_21CCDBBA8();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_21CCDBBA8()
{
  result = qword_27CE19588;
  if (!qword_27CE19588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19588);
  }

  return result;
}

uint64_t sub_21CCDBBFC(uint64_t a1)
{
  if (a1 > -26002)
  {
    if (a1 <= -12085)
    {
      if (a1 <= -15033)
      {
        if (a1 == -26001)
        {
          return 15;
        }

        if (a1 == -18084)
        {
          return 9;
        }
      }

      else
      {
        switch(a1)
        {
          case -15032:
            return 8;
          case -15009:
            return 7;
          case -12193:
            return 6;
        }
      }
    }

    else if (a1 > -1202)
    {
      switch(a1)
      {
        case -1:
          return 0;
        case -4:
          return 1;
        case -1201:
          return 2;
      }
    }

    else
    {
      switch(a1)
      {
        case -12084:
          return 5;
        case -12057:
          return 4;
        case -1302:
          return 3;
      }
    }

    return 22;
  }

  if (a1 <= -26044)
  {
    if (a1 <= -31004)
    {
      if (a1 == -31005)
      {
        return 14;
      }

      if (a1 == -31004)
      {
        return 13;
      }
    }

    else
    {
      switch(a1)
      {
        case -31003:
          return 12;
        case -31002:
          return 11;
        case -31001:
          return 10;
      }
    }

    return 22;
  }

  if (a1 > -26041)
  {
    switch(a1)
    {
      case -26040:
        return 18;
      case -26039:
        return 17;
      case -26003:
        return 16;
    }

    return 22;
  }

  if (a1 == -26043)
  {
    return 21;
  }

  if (a1 == -26042)
  {
    return 20;
  }

  return 19;
}

uint64_t sub_21CCDBDFC(void *a1)
{
  v2 = [a1 domain];
  v3 = sub_21CD83B24();
  v5 = v4;

  if (v3 == 0x726F727245504944 && v5 == 0xE800000000000000)
  {
  }

  else
  {
    v7 = sub_21CD841A4();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = sub_21CCDBBFC([a1 code]);
  if (v8 == 22)
  {
    return 0;
  }

  v10 = v8;
  v11 = [a1 userInfo];
  v12 = sub_21CD83A24();

  v13 = *MEMORY[0x277CCA7E8];
  v14 = sub_21CD83B24();
  if (!*(v12 + 16))
  {

    goto LABEL_16;
  }

  v16 = sub_21CCA996C(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_16:

    v19 = 0;
    goto LABEL_17;
  }

  sub_21CCB15A8(*(v12 + 56) + 32 * v16, v30);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  if (swift_dynamicCast())
  {
    v19 = v29;
  }

  else
  {
    v19 = 0;
  }

LABEL_17:
  v20 = v19;
  v21 = [a1 userInfo];
  v22 = sub_21CD83A24();

  v23 = *MEMORY[0x277CCA068];
  v24 = sub_21CD83B24();
  if (!*(v22 + 16))
  {

    goto LABEL_21;
  }

  v26 = sub_21CCA996C(v24, v25);
  v28 = v27;

  if ((v28 & 1) == 0)
  {
LABEL_21:

    goto LABEL_22;
  }

  sub_21CCB15A8(*(v22 + 56) + 32 * v26, v30);

  swift_dynamicCast();
LABEL_22:

  return v10;
}

uint64_t getEnumTagSinglePayload for DIPError.Code(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DIPError.Code(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21CCDC228()
{
  result = qword_27CE19590;
  if (!qword_27CE19590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19590);
  }

  return result;
}

uint64_t sub_21CCDC2C0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_21CD839F4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_21CD839E4();
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

uint64_t ISO18013KnownDocTypes.localizedDocumentDescription.getter()
{
  v1 = sub_21CD83834();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v4 = sub_21CD83654();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CD83AF4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v13 = sub_21CD83664();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  *v0;
  sub_21CD83A94();
  if (qword_27CE18BB0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v4, qword_27CE1C518);
  (*(v5 + 16))(v9, v16, v4);
  sub_21CD83824();
  sub_21CD83684();
  return sub_21CD83B44();
}

uint64_t ISO18013KnownDocTypes.localizedTestDocumentTitle.getter()
{
  v1 = sub_21CD83834();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v4 = sub_21CD83654();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CD83AF4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v13 = sub_21CD83664();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  if (*v0)
  {
    *v0;
  }

  sub_21CD83A94();
  if (qword_27CE18BB0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v4, qword_27CE1C518);
  (*(v5 + 16))(v9, v16, v4);
  sub_21CD83824();
  sub_21CD83684();
  return sub_21CD83B44();
}

uint64_t static IdentityDocumentElement.RetentionIntent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (!*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21CCDC918()
{
  v1 = 0x746552746F4E6F64;
  if (*v0 != 1)
  {
    v1 = 0x4F79616C70736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6961746572;
  }
}

uint64_t sub_21CCDC980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CCDEC28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CCDC9A8(uint64_t a1)
{
  v2 = sub_21CCDD000();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCDC9E4(uint64_t a1)
{
  v2 = sub_21CCDD000();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCDCA20(uint64_t a1)
{
  v2 = sub_21CCDD054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCDCA5C(uint64_t a1)
{
  v2 = sub_21CCDD054();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCDCA98(uint64_t a1)
{
  v2 = sub_21CCDD0A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCDCAD4(uint64_t a1)
{
  v2 = sub_21CCDD0A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCDCB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F69746E65746572 && a2 == 0xEF646F697265506ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21CD841A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21CCDCBC4(uint64_t a1)
{
  v2 = sub_21CCDD0FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCDCC00(uint64_t a1)
{
  v2 = sub_21CCDD0FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityDocumentElement.RetentionIntent.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE195B0, &qword_21CD8A210);
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v35 = &v31 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE195B8, &qword_21CD8A218);
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v32 = &v31 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE195C0, &qword_21CD8A220);
  v38 = *(v12 - 8);
  v39 = v12;
  v13 = *(v38 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE195C8, &qword_21CD8A228);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v31 - v21;
  v23 = *v2;
  v24 = *(v2 + 8);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCDD000();
  sub_21CD842B4();
  if (v24 == 1)
  {
    if (v23)
    {
      v42 = 2;
      sub_21CCDD054();
      v26 = v35;
      sub_21CD840E4();
      v28 = v36;
      v27 = v37;
    }

    else
    {
      v41 = 1;
      sub_21CCDD0A8();
      v26 = v32;
      sub_21CD840E4();
      v28 = v33;
      v27 = v34;
    }

    (*(v28 + 8))(v26, v27);
    return (*(v18 + 8))(v22, v17);
  }

  else
  {
    v40 = 0;
    sub_21CCDD0FC();
    sub_21CD840E4();
    v29 = v39;
    sub_21CD84154();
    (*(v38 + 8))(v16, v29);
    return (*(v18 + 8))(v22, v17);
  }
}

unint64_t sub_21CCDD000()
{
  result = qword_27CE195D0;
  if (!qword_27CE195D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE195D0);
  }

  return result;
}

unint64_t sub_21CCDD054()
{
  result = qword_27CE195D8;
  if (!qword_27CE195D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE195D8);
  }

  return result;
}

unint64_t sub_21CCDD0A8()
{
  result = qword_27CE195E0;
  if (!qword_27CE195E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE195E0);
  }

  return result;
}

unint64_t sub_21CCDD0FC()
{
  result = qword_27CE195E8;
  if (!qword_27CE195E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE195E8);
  }

  return result;
}

uint64_t IdentityDocumentElement.RetentionIntent.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1)
    {
      v1 = 2;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    MEMORY[0x21CF17CC0](0);
  }

  return MEMORY[0x21CF17CC0](v1);
}

uint64_t IdentityDocumentElement.RetentionIntent.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21CD84264();
  if (v2 == 1)
  {
    if (v1)
    {
      v1 = 2;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    MEMORY[0x21CF17CC0](0);
  }

  MEMORY[0x21CF17CC0](v1);
  return sub_21CD84294();
}

uint64_t IdentityDocumentElement.RetentionIntent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE195F0, &qword_21CD8A230);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v48, v4);
  v51 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE195F8, &qword_21CD8A238);
  v7 = *(v6 - 8);
  v49 = v6;
  v50 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19600, &qword_21CD8A240);
  v47 = *(v12 - 8);
  v13 = *(v47 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v45 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19608, &unk_21CD8A248);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v45 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v23);
  sub_21CCDD000();
  v25 = v53;
  sub_21CD842A4();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_0(v54);
  }

  v45 = 0;
  v53 = v18;
  v26 = v51;
  v27 = v52;
  v28 = sub_21CD840D4();
  v29 = (2 * *(v28 + 16)) | 1;
  v55 = v28;
  v56 = v28 + 32;
  v57 = 0;
  v58 = v29;
  v30 = sub_21CCD18D4();
  if (v30 == 3 || v57 != v58 >> 1)
  {
    v35 = sub_21CD83FA4();
    swift_allocError();
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20) + 48);
    *v37 = &type metadata for IdentityDocumentElement.RetentionIntent;
    v31 = v22;
    sub_21CD84044();
    sub_21CD83F94();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
    swift_willThrow();
    v33 = v53;
LABEL_9:
    (*(v33 + 8))(v31, v17);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v54);
  }

  if (v30)
  {
    if (v30 == 1)
    {
      v59 = 1;
      sub_21CCDD0A8();
      v31 = v22;
      v32 = v45;
      sub_21CD84034();
      v33 = v53;
      if (!v32)
      {
        (*(v50 + 8))(v11, v49);
        (*(v33 + 8))(v22, v17);
        swift_unknownObjectRelease();
        v34 = 0;
LABEL_17:
        v44 = 1;
        v43 = v27;
        goto LABEL_18;
      }

      goto LABEL_9;
    }

    v59 = 2;
    sub_21CCDD054();
    v41 = v45;
    sub_21CD84034();
    v42 = v53;
    if (!v41)
    {
      (*(v46 + 8))(v26, v48);
      (*(v42 + 8))(v22, v17);
      swift_unknownObjectRelease();
      v34 = 1;
      goto LABEL_17;
    }

LABEL_12:
    (*(v53 + 8))(v22, v17);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v54);
  }

  v59 = 0;
  sub_21CCDD0FC();
  v40 = v45;
  sub_21CD84034();
  if (v40)
  {
    goto LABEL_12;
  }

  v43 = v27;
  v34 = sub_21CD840B4();
  (*(v47 + 8))(v16, v12);
  (*(v53 + 8))(v22, v17);
  swift_unknownObjectRelease();
  v44 = 0;
LABEL_18:
  *v43 = v34;
  *(v43 + 8) = v44;
  return __swift_destroy_boxed_opaque_existential_0(v54);
}

uint64_t sub_21CCDD858()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21CD84264();
  if (v2 == 1)
  {
    if (v1)
    {
      v1 = 2;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    MEMORY[0x21CF17CC0](0);
  }

  MEMORY[0x21CF17CC0](v1);
  return sub_21CD84294();
}

uint64_t sub_21CCDD8C8()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1)
    {
      v1 = 2;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    MEMORY[0x21CF17CC0](0);
  }

  return MEMORY[0x21CF17CC0](v1);
}

uint64_t sub_21CCDD91C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21CD84264();
  if (v2 == 1)
  {
    if (v1)
    {
      v1 = 2;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    MEMORY[0x21CF17CC0](0);
  }

  MEMORY[0x21CF17CC0](v1);
  return sub_21CD84294();
}

uint64_t sub_21CCDD988(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (!*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t IdentityDocumentElement.namespace.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t IdentityDocumentElement.namespace.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IdentityDocumentElement.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t IdentityDocumentElement.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void IdentityDocumentElement.retentionIntent.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t IdentityDocumentElement.retentionIntent.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t IdentityDocumentElement.init(namespace:identifier:retentionIntent:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  v7 = *(a5 + 8);
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = v6;
  *(a6 + 40) = v7;
  return result;
}

uint64_t sub_21CCDDB3C()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x6F69746E65746572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x63617073656D616ELL;
  }
}

uint64_t sub_21CCDDBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CCDED44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CCDDBD4(uint64_t a1)
{
  v2 = sub_21CCDE4EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCDDC10(uint64_t a1)
{
  v2 = sub_21CCDE4EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityDocumentElement.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19610, &qword_21CD8A258);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v17 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v17[1] = v1[3];
  v17[2] = v11;
  v17[0] = v1[4];
  v19 = *(v1 + 40);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCDE4EC();
  sub_21CD842B4();
  v22 = 0;
  v13 = v17[3];
  sub_21CD84134();
  if (!v13)
  {
    v15 = v19;
    v16 = v17[0];
    v21 = 1;
    sub_21CD84134();
    v17[4] = v16;
    v18 = v15;
    v20 = 2;
    sub_21CCDE540();
    sub_21CD84164();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t IdentityDocumentElement.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_21CD83B74();
  sub_21CD83B74();
  if (v6 == 1)
  {
    if (v5)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    MEMORY[0x21CF17CC0](0);
  }

  return MEMORY[0x21CF17CC0](v5);
}

uint64_t IdentityDocumentElement.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_21CD84264();
  sub_21CD83B74();
  sub_21CD83B74();
  if (v6 == 1)
  {
    if (v5)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    MEMORY[0x21CF17CC0](0);
  }

  MEMORY[0x21CF17CC0](v5);
  return sub_21CD84294();
}

uint64_t IdentityDocumentElement.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19628, &qword_21CD8A260);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCDE4EC();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v28 = 0;
  v12 = sub_21CD84094();
  v14 = v13;
  v23 = v12;
  v27 = 1;
  v21 = sub_21CD84094();
  v22 = v15;
  v26 = 2;
  sub_21CCDE594();
  sub_21CD840C4();
  (*(v6 + 8))(v10, v5);
  v16 = v24;
  v17 = v25;
  *a2 = v23;
  *(a2 + 8) = v14;
  v18 = v22;
  *(a2 + 16) = v21;
  *(a2 + 24) = v18;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CCDE234()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_21CD84264();
  sub_21CD83B74();
  sub_21CD83B74();
  if (v6 == 1)
  {
    if (v5)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    MEMORY[0x21CF17CC0](0);
  }

  MEMORY[0x21CF17CC0](v5);
  return sub_21CD84294();
}

uint64_t sub_21CCDE2DC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_21CD83B74();
  sub_21CD83B74();
  if (v6 == 1)
  {
    if (v5)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    MEMORY[0x21CF17CC0](0);
  }

  return MEMORY[0x21CF17CC0](v5);
}

uint64_t sub_21CCDE360()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_21CD84264();
  sub_21CD83B74();
  sub_21CD83B74();
  if (v6 == 1)
  {
    if (v5)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    MEMORY[0x21CF17CC0](0);
  }

  MEMORY[0x21CF17CC0](v5);
  return sub_21CD84294();
}

uint64_t _s7CoreIDV23IdentityDocumentElementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (sub_21CD841A4()) && (v2 == v6 && v3 == v7 || (sub_21CD841A4()))
  {
    if (v5)
    {
      if (v4)
      {
        if (v9)
        {
          return v8 != 0;
        }
      }

      else if (v9)
      {
        return v8 == 0;
      }
    }

    else
    {
      if (v4 == v8)
      {
        v11 = v9;
      }

      else
      {
        v11 = 1;
      }

      if ((v11 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_21CCDE4EC()
{
  result = qword_27CE19618;
  if (!qword_27CE19618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19618);
  }

  return result;
}

unint64_t sub_21CCDE540()
{
  result = qword_27CE19620;
  if (!qword_27CE19620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19620);
  }

  return result;
}

unint64_t sub_21CCDE594()
{
  result = qword_27CE19630;
  if (!qword_27CE19630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19630);
  }

  return result;
}

unint64_t sub_21CCDE5EC()
{
  result = qword_27CE19638;
  if (!qword_27CE19638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19638);
  }

  return result;
}

unint64_t sub_21CCDE644()
{
  result = qword_27CE19640;
  if (!qword_27CE19640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19640);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21CCDE6AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_21CCDE6F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21CCDE7B4()
{
  result = qword_27CE19648;
  if (!qword_27CE19648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19648);
  }

  return result;
}

unint64_t sub_21CCDE80C()
{
  result = qword_27CE19650;
  if (!qword_27CE19650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19650);
  }

  return result;
}

unint64_t sub_21CCDE864()
{
  result = qword_27CE19658;
  if (!qword_27CE19658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19658);
  }

  return result;
}

unint64_t sub_21CCDE8BC()
{
  result = qword_27CE19660;
  if (!qword_27CE19660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19660);
  }

  return result;
}

unint64_t sub_21CCDE914()
{
  result = qword_27CE19668;
  if (!qword_27CE19668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19668);
  }

  return result;
}

unint64_t sub_21CCDE96C()
{
  result = qword_27CE19670;
  if (!qword_27CE19670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19670);
  }

  return result;
}

unint64_t sub_21CCDE9C4()
{
  result = qword_27CE19678;
  if (!qword_27CE19678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19678);
  }

  return result;
}

unint64_t sub_21CCDEA1C()
{
  result = qword_27CE19680;
  if (!qword_27CE19680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19680);
  }

  return result;
}

unint64_t sub_21CCDEA74()
{
  result = qword_27CE19688;
  if (!qword_27CE19688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19688);
  }

  return result;
}

unint64_t sub_21CCDEACC()
{
  result = qword_27CE19690;
  if (!qword_27CE19690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19690);
  }

  return result;
}

unint64_t sub_21CCDEB24()
{
  result = qword_27CE19698;
  if (!qword_27CE19698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19698);
  }

  return result;
}

unint64_t sub_21CCDEB7C()
{
  result = qword_27CE196A0;
  if (!qword_27CE196A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE196A0);
  }

  return result;
}

unint64_t sub_21CCDEBD4()
{
  result = qword_27CE196A8;
  if (!qword_27CE196A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE196A8);
  }

  return result;
}

uint64_t sub_21CCDEC28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6961746572 && a2 == 0xE600000000000000;
  if (v4 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746552746F4E6F64 && a2 == 0xEB000000006E6961 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4F79616C70736964 && a2 == 0xEB00000000796C6ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_21CD841A4();

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

uint64_t sub_21CCDED44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065;
  if (v4 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69746E65746572 && a2 == 0xEF746E65746E496ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_21CD841A4();

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

uint64_t sub_21CCDEE90(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v6 = a3;
  v42 = MEMORY[0x277D84F90];
  sub_21CCEA728(0, v4, 0);
  v5 = v42;
  v7 = v6 + 56;
  v8 = -1 << *(v6 + 32);
  v9 = sub_21CD83EF4();
  v10 = 0;
  v34 = v6 + 64;
  v35 = v4;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v6 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_22;
    }

    v37 = v10;
    v13 = *(v6 + 36);
    v14 = v6;
    v15 = *(v6 + 48) + 16 * v9;
    v16 = *v15;
    LOBYTE(v15) = *(v15 + 8);
    v38 = v16;
    v39 = v15;
    a1(&v40, &v38);
    if (v3)
    {
      goto LABEL_26;
    }

    v17 = v40;
    v18 = v41;
    v42 = v5;
    v20 = *(v5 + 16);
    v19 = *(v5 + 24);
    v21 = v5;
    if (v20 >= v19 >> 1)
    {
      v33 = v40;
      v32 = v41;
      sub_21CCEA728((v19 > 1), v20 + 1, 1);
      v18 = v32;
      v17 = v33;
      v21 = v42;
    }

    *(v21 + 16) = v20 + 1;
    v22 = v21 + 16 * v20;
    *(v22 + 32) = v17;
    *(v22 + 40) = v18;
    v11 = 1 << *(v14 + 32);
    if (v9 >= v11)
    {
      goto LABEL_23;
    }

    v23 = *(v7 + 8 * v12);
    if ((v23 & (1 << v9)) == 0)
    {
      goto LABEL_24;
    }

    v6 = v14;
    v5 = v21;
    v24 = v13;
    if (v13 != *(v14 + 36))
    {
      goto LABEL_25;
    }

    v25 = v23 & (-2 << (v9 & 0x3F));
    if (v25)
    {
      v11 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = v12 << 6;
      v27 = v12 + 1;
      v28 = (v34 + 8 * v12);
      while (v27 < (v11 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          sub_21CCE7E34(v9, v24, 0);
          v11 = __clz(__rbit64(v29)) + v26;
          goto LABEL_4;
        }
      }

      sub_21CCE7E34(v9, v24, 0);
    }

LABEL_4:
    v10 = v37 + 1;
    v9 = v11;
    if (v37 + 1 == v35)
    {
      return v5;
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

void IdentityDocumentElementCategory.categoryType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t IdentityDocumentElementCategory.localizedName.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  return sub_21CCDF16C();
}

uint64_t sub_21CCDF16C()
{
  v1 = sub_21CD83834();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v4 = sub_21CD83AF4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v7 = *v0;
  if (*(v0 + 8) == 1)
  {
    v8 = *v0;
    switch(v7)
    {
      case 4:
        sub_21CD83A94();
        if (qword_27CE18BA8 != -1)
        {
          goto LABEL_15;
        }

        break;
      case 18:
        sub_21CD83A94();
        if (qword_27CE18BA8 != -1)
        {
          goto LABEL_15;
        }

        break;
      case 22:
        sub_21CD83A94();
        if (qword_27CE18BA8 != -1)
        {
          goto LABEL_15;
        }

        break;
      case 23:
        sub_21CD83A94();
        if (qword_27CE18BA8 != -1)
        {
          goto LABEL_15;
        }

        break;
      default:
        sub_21CD83A94();
        if (qword_27CE18BA8 != -1)
        {
LABEL_15:
          swift_once();
        }

        break;
    }

    v15 = qword_27CE3EA38;
    sub_21CD83824();
    return sub_21CD83B34();
  }

  else
  {
    sub_21CD83A94();
    if (qword_27CE18BA8 != -1)
    {
      swift_once();
    }

    v9 = qword_27CE3EA38;
    sub_21CD83824();
    sub_21CD83B34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19B28, &unk_21CD8C1F8);
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D83B88];
    *(v10 + 16) = xmmword_21CD884B0;
    v12 = MEMORY[0x277D83C10];
    *(v10 + 56) = v11;
    *(v10 + 64) = v12;
    *(v10 + 32) = v7;
    v13 = sub_21CD83B14();

    return v13;
  }
}

uint64_t IdentityDocumentElementCategory.systemImage.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x7261646E656C6163;
  }

  result = 0x662E6E6F73726570;
  switch(*v0)
  {
    case 1:
    case 2:
    case 3:
      return 0x7261646E656C6163;
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
      return 0x696C666F72617473;
    case 9:
    case 0xALL:
    case 0xBLL:
    case 0xCLL:
    case 0xDLL:
      v2 = 0x2E6573756F68;
      goto LABEL_6;
    case 0xELL:
    case 0x15:
      return 0x632E7265626D756ELL;
    case 0xFLL:
      return 0xD000000000000015;
    case 0x10:
    case 0x11:
      return 0xD000000000000014;
    case 0x12:
      return 0x7269632E72617473;
    case 0x13:
      return 0xD000000000000012;
    case 0x14:
      return 0x6C6C69662E726163;
    case 0x16:
      v2 = 0x2E7472616568;
LABEL_6:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6966000000000000;
      break;
    case 0x17:
      result = 0x74732E6C6164656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t IdentityDocumentElementCategory.init(categoryType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_21CCDF970(uint64_t a1, void *a2)
{
  if (qword_27CE18B30 != -1)
  {
    swift_once();
  }

  v4 = off_27CE18B38;
  if (*(off_27CE18B38 + 2) && (v5 = sub_21CCA996C(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19B20, &qword_21CD8C1F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CD884B0;
    *(inited + 32) = v7;
    *(inited + 40) = 0;
    v9 = sub_21CCB1E24(inited);
    swift_setDeallocating();
    return v9;
  }

  else
  {

    v10._countAndFlagsBits = a1;
    v10._object = a2;
    ISO18013_5_1_ElementIdentifier.init(rawValue:)(v10);
    switch(v13)
    {
      case 2:
        v12 = &unk_282E6C8D8;
        break;
      case 3:
        v12 = &unk_282E6C998;
        break;
      case 4:
        v12 = &unk_282E6C9C8;
        break;
      case 5:
      case 6:
      case 10:
      case 22:
        v12 = &unk_282E6C9F8;
        break;
      case 7:
        v12 = &unk_282E6C968;
        break;
      case 8:
        v12 = &unk_282E6C938;
        break;
      case 9:
        v12 = &unk_282E6CA28;
        break;
      case 11:
      case 17:
      case 19:
      case 23:
      case 30:
      case 31:
        return MEMORY[0x277D84FA0];
      case 12:
        v12 = &unk_282E6C7B8;
        break;
      case 13:
        v12 = &unk_282E6CA58;
        break;
      case 14:
        v12 = &unk_282E6CA88;
        break;
      case 15:
        v12 = &unk_282E6CAB8;
        break;
      case 16:
        v12 = &unk_282E6CAE8;
        break;
      case 18:
        v12 = &unk_282E6C7E8;
        break;
      case 20:
        v12 = &unk_282E6C908;
        break;
      case 21:
        v12 = &unk_282E6CB18;
        break;
      case 24:
        v12 = &unk_282E6C818;
        break;
      case 25:
        v12 = &unk_282E6C848;
        break;
      case 26:
        v12 = &unk_282E6C878;
        break;
      case 27:
        v12 = &unk_282E6C8A8;
        break;
      default:
        v12 = &unk_282E6C788;
        break;
    }

    return sub_21CCB1E24(v12);
  }
}

uint64_t sub_21CCDFB9C(uint64_t a1, void *a2)
{

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  ISO18013_AAMVA_ElementIdentifier.init(rawValue:)(v4);
  switch(v7)
  {
    case 1:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 14:
    case 15:
    case 16:
    case 17:
      v5 = &unk_282E6CB48;
      goto LABEL_10;
    case 2:
      v5 = &unk_282E6CC08;
      goto LABEL_10;
    case 3:
      v5 = &unk_282E6CC38;
      goto LABEL_10;
    case 11:
      v5 = &unk_282E6CC68;
      goto LABEL_10;
    case 12:
    case 20:
    case 21:
    case 22:
    case 26:
    case 27:
      return MEMORY[0x277D84FA0];
    case 13:
      v5 = &unk_282E6CB78;
      goto LABEL_10;
    case 19:
    case 25:
      v5 = &unk_282E6CBA8;
      goto LABEL_10;
    default:
      v5 = &unk_282E6CBD8;
LABEL_10:

      return sub_21CCB1E24(v5);
  }
}

uint64_t sub_21CCDFC7C(uint64_t a1, void *a2)
{
  if (qword_27CE18B30 != -1)
  {
    swift_once();
  }

  v4 = off_27CE18B38;
  if (*(off_27CE18B38 + 2) && (v5 = sub_21CCA996C(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19B20, &qword_21CD8C1F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CD884B0;
    *(inited + 32) = v7;
    *(inited + 40) = 0;
    v9 = sub_21CCB1E24(inited);
    swift_setDeallocating();
    return v9;
  }

  else
  {

    v10._countAndFlagsBits = a1;
    v10._object = a2;
    ISO23220_1_ElementIdentifier.init(rawValue:)(v10);
    switch(v13)
    {
      case 1:
        v12 = &unk_282E6CCC8;
        break;
      case 2:
        v12 = &unk_282E6CC98;
        break;
      case 3:
      case 4:
      case 5:
      case 6:
        v12 = &unk_282E6CD28;
        break;
      case 7:
        v12 = &unk_282E6CF08;
        break;
      case 8:
      case 9:
      case 11:
      case 23:
      case 24:
        return MEMORY[0x277D84FA0];
      case 10:
        v12 = &unk_282E6CE18;
        break;
      case 12:
        v12 = &unk_282E6CE48;
        break;
      case 13:
        v12 = &unk_282E6CE78;
        break;
      case 14:
        v12 = &unk_282E6CEA8;
        break;
      case 15:
      case 16:
      case 17:
        v12 = &unk_282E6CED8;
        break;
      case 18:
        v12 = &unk_282E6CD58;
        break;
      case 19:
      case 20:
        v12 = &unk_282E6CD88;
        break;
      case 21:
        v12 = &unk_282E6CDB8;
        break;
      case 22:
        v12 = &unk_282E6CDE8;
        break;
      default:
        v12 = &unk_282E6CCF8;
        break;
    }

    return sub_21CCB1E24(v12);
  }
}

uint64_t sub_21CCDFE60(uint64_t a1, void *a2)
{

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  ISO23220_1_Japan_ElementIdentifier.init(rawValue:)(v4);
  if (v9 > 3u)
  {
    if (v9 > 5u)
    {
      if (v9 != 6)
      {
        return MEMORY[0x277D84FA0];
      }

      v7 = &unk_282E6D028;
    }

    else if (v9 == 4)
    {
      v7 = &unk_282E6CF38;
    }

    else
    {
      v7 = &unk_282E6CFF8;
    }
  }

  else
  {
    v5 = &unk_282E6CF98;
    if (v9 != 2)
    {
      v5 = &unk_282E6CFC8;
    }

    v6 = &unk_282E6D058;
    if (v9)
    {
      v6 = &unk_282E6CF68;
    }

    if (v9 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }
  }

  return sub_21CCB1E24(v7);
}

uint64_t sub_21CCDFF48@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

unint64_t sub_21CCDFF60(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x6942664F65746164;
      break;
    case 2:
      result = 0x6165596874726962;
      break;
    case 3:
      result = 6645601;
      break;
    case 4:
      result = 0x61654C7441656761;
      break;
    case 5:
      result = 7890291;
      break;
    case 6:
      result = 0x746867696568;
      break;
    case 7:
      result = 0x746867696577;
      break;
    case 8:
      result = 0x726F6C6F43657965;
      break;
    case 9:
      result = 0x6F6C6F4372696168;
      break;
    case 10:
      result = 0x73736572646461;
      break;
    case 11:
      result = 2037672291;
      break;
    case 12:
      result = 0x6574617473;
      break;
    case 13:
      result = 0x6F436C6174736F70;
      break;
    case 14:
      result = 0x7972746E756F63;
      break;
    case 15:
      result = 0x746E656D75636F64;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    case 17:
    case 21:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0x6974617269707865;
      break;
    case 19:
      result = 0xD00000000000001BLL;
      break;
    case 20:
      result = 0x7469617274726F70;
      break;
    case 22:
      result = 0xD000000000000010;
      break;
    case 23:
      result = 0xD000000000000010;
      break;
    case 24:
      result = 0x536E617265746576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21CCE01EC(uint64_t a1)
{
  v2 = sub_21CCE5A50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE0228(uint64_t a1)
{
  v2 = sub_21CCE5A50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCE0278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21CD841A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21CCE02FC(uint64_t a1)
{
  v2 = sub_21CCE5C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE0338(uint64_t a1)
{
  v2 = sub_21CCE5C48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCE0374(uint64_t a1)
{
  v2 = sub_21CCE5C9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE03B0(uint64_t a1)
{
  v2 = sub_21CCE5C9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCE03EC(uint64_t a1)
{
  v2 = sub_21CCE5CF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE0428(uint64_t a1)
{
  v2 = sub_21CCE5CF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCE0464(uint64_t a1)
{
  v2 = sub_21CCE59FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE04A0(uint64_t a1)
{
  v2 = sub_21CCE59FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCE04E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CCE766C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CCE0518(uint64_t a1)
{
  v2 = sub_21CCE5564();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE0554(uint64_t a1)
{
  v2 = sub_21CCE5564();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCE0590(uint64_t a1)
{
  v2 = sub_21CCE5900();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE05CC(uint64_t a1)
{
  v2 = sub_21CCE5900();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCE0608(uint64_t a1)
{
  v2 = sub_21CCE5D44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE0644(uint64_t a1)
{
  v2 = sub_21CCE5D44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCE0680(uint64_t a1)
{
  v2 = sub_21CCE575C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE06BC(uint64_t a1)
{
  v2 = sub_21CCE575C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCE06F8(uint64_t a1)
{
  v2 = sub_21CCE5804();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE0734(uint64_t a1)
{
  v2 = sub_21CCE5804();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCE0770(uint64_t a1)
{
  v2 = sub_21CCE58AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE07AC(uint64_t a1)
{
  v2 = sub_21CCE58AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCE07E8(uint64_t a1)
{
  v2 = sub_21CCE56B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE0824(uint64_t a1)
{
  v2 = sub_21CCE56B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCE0860(uint64_t a1)
{
  v2 = sub_21CCE57B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE089C(uint64_t a1)
{
  v2 = sub_21CCE57B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCE08D8(uint64_t a1)
{
  v2 = sub_21CCE5AF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE0914(uint64_t a1)
{
  v2 = sub_21CCE5AF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCE0950(uint64_t a1)
{
  v2 = sub_21CCE5AA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE098C(uint64_t a1)
{
  v2 = sub_21CCE5AA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCE09C8(uint64_t a1)
{
  v2 = sub_21CCE5BA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE0A04(uint64_t a1)
{
  v2 = sub_21CCE5BA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCE0A40(uint64_t a1)
{
  v2 = sub_21CCE5660();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE0A7C(uint64_t a1)
{
  v2 = sub_21CCE5660();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCE0AB8(uint64_t a1)
{
  v2 = sub_21CCE5858();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE0AF4(uint64_t a1)
{
  v2 = sub_21CCE5858();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCE0B30(uint64_t a1)
{
  v2 = sub_21CCE5D98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE0B6C(uint64_t a1)
{
  v2 = sub_21CCE5D98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCE0BA8(uint64_t a1)
{
  v2 = sub_21CCE560C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE0BE4(uint64_t a1)
{
  v2 = sub_21CCE560C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCE0C20(uint64_t a1)
{
  v2 = sub_21CCE5708();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE0C5C(uint64_t a1)
{
  v2 = sub_21CCE5708();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCE0C98(uint64_t a1)
{
  v2 = sub_21CCE5954();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE0CD4(uint64_t a1)
{
  v2 = sub_21CCE5954();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCE0D10(uint64_t a1)
{
  v2 = sub_21CCE5BF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE0D4C(uint64_t a1)
{
  v2 = sub_21CCE5BF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCE0D88(uint64_t a1)
{
  v2 = sub_21CCE59A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE0DC4(uint64_t a1)
{
  v2 = sub_21CCE59A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCE0E00(uint64_t a1)
{
  v2 = sub_21CCE55B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE0E3C(uint64_t a1)
{
  v2 = sub_21CCE55B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCE0E78(uint64_t a1)
{
  v2 = sub_21CCE5B4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCE0EB4(uint64_t a1)
{
  v2 = sub_21CCE5B4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityDocumentElementCategory.CategoryType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE196B0, &qword_21CD8A910);
  v193 = *(v3 - 8);
  v194 = v3;
  v4 = *(v193 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v192 = &v123 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE196B8, &qword_21CD8A918);
  v190 = *(v7 - 8);
  v191 = v7;
  v8 = *(v190 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v189 = &v123 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE196C0, &qword_21CD8A920);
  v187 = *(v11 - 8);
  v188 = v11;
  v12 = *(v187 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v186 = &v123 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE196C8, &qword_21CD8A928);
  v184 = *(v15 - 8);
  v185 = v15;
  v16 = *(v184 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v183 = &v123 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE196D0, &qword_21CD8A930);
  v181 = *(v19 - 8);
  v182 = v19;
  v20 = *(v181 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v180 = &v123 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE196D8, &qword_21CD8A938);
  v178 = *(v23 - 8);
  v179 = v23;
  v24 = *(v178 + 64);
  MEMORY[0x28223BE20](v23, v25);
  v177 = &v123 - v26;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE196E0, &qword_21CD8A940);
  v175 = *(v176 - 8);
  v27 = *(v175 + 64);
  MEMORY[0x28223BE20](v176, v28);
  v174 = &v123 - v29;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE196E8, &qword_21CD8A948);
  v172 = *(v173 - 8);
  v30 = *(v172 + 64);
  MEMORY[0x28223BE20](v173, v31);
  v171 = &v123 - v32;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE196F0, &qword_21CD8A950);
  v169 = *(v170 - 8);
  v33 = *(v169 + 64);
  MEMORY[0x28223BE20](v170, v34);
  v168 = &v123 - v35;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE196F8, &qword_21CD8A958);
  v166 = *(v167 - 8);
  v36 = *(v166 + 64);
  MEMORY[0x28223BE20](v167, v37);
  v165 = &v123 - v38;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19700, &qword_21CD8A960);
  v163 = *(v164 - 8);
  v39 = *(v163 + 64);
  MEMORY[0x28223BE20](v164, v40);
  v162 = &v123 - v41;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19708, &qword_21CD8A968);
  v160 = *(v161 - 8);
  v42 = *(v160 + 64);
  MEMORY[0x28223BE20](v161, v43);
  v159 = &v123 - v44;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19710, &qword_21CD8A970);
  v157 = *(v158 - 8);
  v45 = *(v157 + 64);
  MEMORY[0x28223BE20](v158, v46);
  v156 = &v123 - v47;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19718, &qword_21CD8A978);
  v154 = *(v155 - 8);
  v48 = *(v154 + 64);
  MEMORY[0x28223BE20](v155, v49);
  v153 = &v123 - v50;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19720, &qword_21CD8A980);
  v151 = *(v152 - 8);
  v51 = *(v151 + 64);
  MEMORY[0x28223BE20](v152, v52);
  v150 = &v123 - v53;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19728, &qword_21CD8A988);
  v148 = *(v149 - 8);
  v54 = *(v148 + 64);
  MEMORY[0x28223BE20](v149, v55);
  v147 = &v123 - v56;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19730, &qword_21CD8A990);
  v145 = *(v146 - 8);
  v57 = *(v145 + 64);
  MEMORY[0x28223BE20](v146, v58);
  v144 = &v123 - v59;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19738, &qword_21CD8A998);
  v142 = *(v143 - 8);
  v60 = *(v142 + 64);
  MEMORY[0x28223BE20](v143, v61);
  v141 = &v123 - v62;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19740, &qword_21CD8A9A0);
  v139 = *(v140 - 8);
  v63 = *(v139 + 64);
  MEMORY[0x28223BE20](v140, v64);
  v138 = &v123 - v65;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19748, &qword_21CD8A9A8);
  v136 = *(v137 - 8);
  v66 = *(v136 + 64);
  MEMORY[0x28223BE20](v137, v67);
  v135 = &v123 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19750, &qword_21CD8A9B0);
  v195 = *(v69 - 8);
  v196 = v69;
  v70 = *(v195 + 64);
  MEMORY[0x28223BE20](v69, v71);
  v73 = &v123 - v72;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19758, &qword_21CD8A9B8);
  v133 = *(v134 - 8);
  v74 = *(v133 + 64);
  MEMORY[0x28223BE20](v134, v75);
  v132 = &v123 - v76;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19760, &qword_21CD8A9C0);
  v130 = *(v131 - 8);
  v77 = *(v130 + 64);
  MEMORY[0x28223BE20](v131, v78);
  v129 = &v123 - v79;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19768, &qword_21CD8A9C8);
  v127 = *(v128 - 8);
  v80 = *(v127 + 64);
  MEMORY[0x28223BE20](v128, v81);
  v126 = &v123 - v82;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19770, &qword_21CD8A9D0);
  v124 = *(v125 - 8);
  v83 = *(v124 + 64);
  MEMORY[0x28223BE20](v125, v84);
  v123 = &v123 - v85;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19778, &qword_21CD8A9D8);
  v87 = *(v86 - 8);
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v86, v89);
  v91 = &v123 - v90;
  v92 = *v1;
  v93 = *(v1 + 8);
  v94 = a1;
  v96 = a1[3];
  v95 = a1[4];
  __swift_project_boxed_opaque_existential_0(v94, v96);
  sub_21CCE5564();
  sub_21CD842B4();
  if (v93 == 1)
  {
    switch(v92)
    {
      case 1:
        v198 = 1;
        sub_21CCE5D44();
        v113 = v126;
        sub_21CD840E4();
        v98 = *(v127 + 8);
        v99 = v113;
        v100 = &v160;
        goto LABEL_25;
      case 2:
        v198 = 2;
        sub_21CCE5CF0();
        v109 = v129;
        sub_21CD840E4();
        v98 = *(v130 + 8);
        v99 = v109;
        v100 = &v163;
        goto LABEL_25;
      case 3:
        v198 = 3;
        sub_21CCE5C9C();
        v111 = v132;
        sub_21CD840E4();
        v98 = *(v133 + 8);
        v99 = v111;
        v100 = &v166;
        goto LABEL_25;
      case 4:
        v198 = 5;
        sub_21CCE5BF4();
        v106 = v135;
        sub_21CD840E4();
        v98 = *(v136 + 8);
        v99 = v106;
        v100 = &v169;
        goto LABEL_25;
      case 5:
        v198 = 6;
        sub_21CCE5BA0();
        v118 = v138;
        sub_21CD840E4();
        v98 = *(v139 + 8);
        v99 = v118;
        v100 = &v172;
        goto LABEL_25;
      case 6:
        v198 = 7;
        sub_21CCE5B4C();
        v120 = v141;
        sub_21CD840E4();
        v98 = *(v142 + 8);
        v99 = v120;
        v100 = &v175;
        goto LABEL_25;
      case 7:
        v198 = 8;
        sub_21CCE5AF8();
        v112 = v144;
        sub_21CD840E4();
        v98 = *(v145 + 8);
        v99 = v112;
        v100 = &v178;
        goto LABEL_25;
      case 8:
        v198 = 9;
        sub_21CCE5AA4();
        v122 = v147;
        sub_21CD840E4();
        v98 = *(v148 + 8);
        v99 = v122;
        v100 = &v181;
        goto LABEL_25;
      case 9:
        v198 = 10;
        sub_21CCE5A50();
        v108 = v150;
        sub_21CD840E4();
        v98 = *(v151 + 8);
        v99 = v108;
        v100 = &v184;
        goto LABEL_25;
      case 10:
        v198 = 11;
        sub_21CCE59FC();
        v121 = v153;
        sub_21CD840E4();
        v98 = *(v154 + 8);
        v99 = v121;
        v100 = &v187;
        goto LABEL_25;
      case 11:
        v198 = 12;
        sub_21CCE59A8();
        v105 = v156;
        sub_21CD840E4();
        v98 = *(v157 + 8);
        v99 = v105;
        v100 = &v190;
        goto LABEL_25;
      case 12:
        v198 = 13;
        sub_21CCE5954();
        v107 = v159;
        sub_21CD840E4();
        v98 = *(v160 + 8);
        v99 = v107;
        v100 = &v193;
        goto LABEL_25;
      case 13:
        v198 = 14;
        sub_21CCE5900();
        v119 = v162;
        sub_21CD840E4();
        v98 = *(v163 + 8);
        v99 = v119;
        v100 = &v196;
        goto LABEL_25;
      case 14:
        v198 = 15;
        sub_21CCE58AC();
        v104 = v165;
        sub_21CD840E4();
        v98 = *(v166 + 8);
        v99 = v104;
        v100 = &v197;
        goto LABEL_25;
      case 15:
        v198 = 16;
        sub_21CCE5858();
        v110 = v168;
        sub_21CD840E4();
        v98 = *(v169 + 8);
        v99 = v110;
        v100 = &v199;
        goto LABEL_25;
      case 16:
        v198 = 17;
        sub_21CCE5804();
        v103 = v171;
        sub_21CD840E4();
        v98 = *(v172 + 8);
        v99 = v103;
        v100 = &v200;
        goto LABEL_25;
      case 17:
        v198 = 18;
        sub_21CCE57B0();
        v114 = v174;
        sub_21CD840E4();
        v98 = *(v175 + 8);
        v99 = v114;
        v100 = &v201;
        goto LABEL_25;
      case 18:
        v198 = 19;
        sub_21CCE575C();
        v115 = v177;
        sub_21CD840E4();
        v117 = v178;
        v116 = v179;
        goto LABEL_29;
      case 19:
        v198 = 20;
        sub_21CCE5708();
        v115 = v180;
        sub_21CD840E4();
        v117 = v181;
        v116 = v182;
        goto LABEL_29;
      case 20:
        v198 = 21;
        sub_21CCE56B4();
        v115 = v183;
        sub_21CD840E4();
        v117 = v184;
        v116 = v185;
        goto LABEL_29;
      case 21:
        v198 = 22;
        sub_21CCE5660();
        v115 = v186;
        sub_21CD840E4();
        v117 = v187;
        v116 = v188;
        goto LABEL_29;
      case 22:
        v198 = 23;
        sub_21CCE560C();
        v115 = v189;
        sub_21CD840E4();
        v117 = v190;
        v116 = v191;
        goto LABEL_29;
      case 23:
        v198 = 24;
        sub_21CCE55B8();
        v115 = v192;
        sub_21CD840E4();
        v117 = v193;
        v116 = v194;
LABEL_29:
        v98 = *(v117 + 8);
        v99 = v115;
        break;
      default:
        v198 = 0;
        sub_21CCE5D98();
        v97 = v123;
        sub_21CD840E4();
        v98 = *(v124 + 8);
        v99 = v97;
        v100 = &v157;
LABEL_25:
        v116 = *(v100 - 32);
        break;
    }

    v98(v99, v116);
    return (*(v87 + 8))(v91, v86);
  }

  else
  {
    v198 = 4;
    sub_21CCE5C48();
    sub_21CD840E4();
    v101 = v196;
    sub_21CD84154();
    (*(v195 + 8))(v73, v101);
    return (*(v87 + 8))(v91, v86);
  }
}
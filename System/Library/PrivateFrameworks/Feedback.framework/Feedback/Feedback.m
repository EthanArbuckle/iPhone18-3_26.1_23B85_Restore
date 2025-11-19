uint64_t sub_1B8B24384(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  __isPlatformVersionAtLeast(2, 18, 1, 0);
  return swift_getOpaqueTypeMetadata2();
}

uint64_t sub_1B8B24418(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  __isPlatformVersionAtLeast(2, 18, 1, 0);
  return swift_getOpaqueTypeConformance2();
}

BOOL sub_1B8B2450C(void *a1, uint64_t *a2)
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

void *sub_1B8B2453C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_1B8B24568@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1B8B24658@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B8B24668(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A00, &qword_1B8C27170);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B246F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1B8B34C70(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1B8B24730@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1B8C25128();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1B8B247D4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B8B24830@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B8C241C8();
  *a1 = result;
  return result;
}

id sub_1B8B24884@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AgreementConsentView() + 24) + 8);
  *a2 = v3;

  return v3;
}

uint64_t sub_1B8B248DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5DB0, &unk_1B8C2A1B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5DB8, qword_1B8C27AC0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1B8B24A04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5DB0, &unk_1B8C2A1B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5DB8, qword_1B8C27AC0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1B8B24B9C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B24BF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E70, &qword_1B8C27C68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B24C60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E70, &qword_1B8C27C68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8B24D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for BatchInteraction(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B8B24E00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for BatchInteraction(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8B24EA0()
{
  v1 = (type metadata accessor for SkipButton() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  sub_1B8B3B060(*(v0 + v3 + 16), *(v0 + v3 + 24));
  v6 = v0 + v3 + v1[8];
  v7 = sub_1B8C23568();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = type metadata accessor for BatchInteraction(0);

  v9 = *(v6 + v8[6]);

  v10 = v6 + v8[7];
  type metadata accessor for BatchInteraction.ContentPolarity(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = type metadata accessor for BatchInteraction.ContentPreview(0);
  v13 = *(*(v12 - 8) + 48);
  v14 = v13(v10, 1, v12);
  if (EnumCaseMultiPayload != 1)
  {
    if (v14)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  if (!v14)
  {
    v16 = swift_getEnumCaseMultiPayload();
    if (v16 > 2)
    {
      switch(v16)
      {
        case 3:

          v21 = *(v10 + 16);

          break;
        case 4:
          v22 = sub_1B8C23328();
          (*(*(v22 - 8) + 8))(v10, v22);
          break;
        case 5:
          sub_1B8B3B06C(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 72));
          break;
      }
    }

    else if (v16 < 2)
    {
      v19 = *(v10 + 8);
    }

    else if (v16 == 2)
    {
    }
  }

  v10 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FD8, &qword_1B8C28560) + 48);
  if (!v13(v10, 1, v12))
  {
LABEL_6:
    v15 = swift_getEnumCaseMultiPayload();
    if (v15 > 2)
    {
      switch(v15)
      {
        case 3:

          v18 = *(v10 + 16);

          break;
        case 4:
          v20 = sub_1B8C23328();
          (*(*(v20 - 8) + 8))(v10, v20);
          break;
        case 5:
          sub_1B8B3B06C(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 72));
          break;
      }
    }

    else if (v15 < 2)
    {
      v17 = *(v10 + 8);
    }

    else if (v15 == 2)
    {
    }
  }

LABEL_26:

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B25228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BatchInteraction(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6008, &qword_1B8C2A5B0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1B8B25340(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for BatchInteraction(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6008, &qword_1B8C2A5B0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1B8B25454()
{
  v1 = type metadata accessor for Previewer();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v30 = *(*(v1 - 8) + 64);
  v4 = v0 + v3;
  v5 = sub_1B8C23568();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = type metadata accessor for BatchInteraction(0);

  v7 = *(v0 + v3 + v6[6]);

  v8 = v0 + v3 + v6[7];
  type metadata accessor for BatchInteraction.ContentPolarity(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = type metadata accessor for BatchInteraction.ContentPreview(0);
  v11 = *(*(v10 - 8) + 48);
  v12 = v11(v8, 1, v10);
  if (EnumCaseMultiPayload != 1)
  {
    if (v12)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  if (!v12)
  {
    v14 = swift_getEnumCaseMultiPayload();
    if (v14 > 2)
    {
      switch(v14)
      {
        case 3:

          v27 = *(v8 + 16);

          break;
        case 4:
          v28 = sub_1B8C23328();
          (*(*(v28 - 8) + 8))(v8, v28);
          break;
        case 5:
          sub_1B8B3B06C(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72));
          break;
      }
    }

    else if (v14 < 2)
    {
      v17 = *(v8 + 8);
    }

    else if (v14 == 2)
    {
    }
  }

  v8 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FD8, &qword_1B8C28560) + 48);
  if (!v11(v8, 1, v10))
  {
LABEL_6:
    v13 = swift_getEnumCaseMultiPayload();
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:

          v16 = *(v8 + 16);

          break;
        case 4:
          v18 = sub_1B8C23328();
          (*(*(v18 - 8) + 8))(v8, v18);
          break;
        case 5:
          sub_1B8B3B06C(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72));
          break;
      }
    }

    else if (v13 < 2)
    {
      v15 = *(v8 + 8);
    }

    else if (v13 == 2)
    {
    }
  }

LABEL_26:
  v19 = v4 + *(v1 + 20);
  if (v11(v19, 1, v10))
  {
    goto LABEL_39;
  }

  v20 = swift_getEnumCaseMultiPayload();
  if (v20 <= 2)
  {
    if (v20 >= 2)
    {
      if (v20 == 2)
      {
      }

      goto LABEL_39;
    }

    v21 = *(v19 + 8);
LABEL_37:

    goto LABEL_39;
  }

  switch(v20)
  {
    case 3:

      v22 = *(v19 + 16);
      goto LABEL_37;
    case 4:
      v23 = sub_1B8C23328();
      (*(*(v23 - 8) + 8))(v19, v23);
      break;
    case 5:
      sub_1B8B3B06C(*v19, *(v19 + 8), *(v19 + 16), *(v19 + 24), *(v19 + 32), *(v19 + 40), *(v19 + 48), *(v19 + 56), *(v19 + 64), *(v19 + 72));
      break;
  }

LABEL_39:
  v24 = (v4 + *(v1 + 28));
  v25 = *v24;

  v26 = v24[1];

  return MEMORY[0x1EEE6BDD0](v0, v3 + v30, v2 | 7);
}

uint64_t sub_1B8B258C4()
{
  v1 = type metadata accessor for Previewer();
  v32 = *(*(v1 - 8) + 80);
  v30 = *(*(v1 - 8) + 64);
  v2 = sub_1B8C23328();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v33 = *(v3 + 64);
  v31 = (v32 + 16) & ~v32;
  v5 = v0 + v31;
  v6 = sub_1B8C23568();
  (*(*(v6 - 8) + 8))(v0 + v31, v6);
  v7 = type metadata accessor for BatchInteraction(0);

  v8 = *(v0 + v31 + v7[6]);

  v9 = v0 + v31 + v7[7];
  type metadata accessor for BatchInteraction.ContentPolarity(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = type metadata accessor for BatchInteraction.ContentPreview(0);
  v12 = *(*(v11 - 8) + 48);
  v13 = v12(v9, 1, v11);
  if (EnumCaseMultiPayload != 1)
  {
    v14 = v2;
    if (v13)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  v14 = v2;
  if (!v13)
  {
    v16 = swift_getEnumCaseMultiPayload();
    if (v16 > 2)
    {
      switch(v16)
      {
        case 3:

          v28 = *(v9 + 16);

          break;
        case 4:
          (*(v3 + 8))(v9, v2);
          break;
        case 5:
          sub_1B8B3B06C(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32), *(v9 + 40), *(v9 + 48), *(v9 + 56), *(v9 + 64), *(v9 + 72));
          break;
      }
    }

    else if (v16 < 2)
    {
      v19 = *(v9 + 8);
    }

    else if (v16 == 2)
    {
    }
  }

  v9 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FD8, &qword_1B8C28560) + 48);
  if (!v12(v9, 1, v11))
  {
LABEL_6:
    v15 = swift_getEnumCaseMultiPayload();
    if (v15 > 2)
    {
      switch(v15)
      {
        case 3:

          v18 = *(v9 + 16);

          break;
        case 4:
          (*(v3 + 8))(v9, v14);
          break;
        case 5:
          sub_1B8B3B06C(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32), *(v9 + 40), *(v9 + 48), *(v9 + 56), *(v9 + 64), *(v9 + 72));
          break;
      }
    }

    else if (v15 < 2)
    {
      v17 = *(v9 + 8);
    }

    else if (v15 == 2)
    {
    }
  }

LABEL_26:
  v20 = v5 + *(v1 + 20);
  if (v12(v20, 1, v11))
  {
    goto LABEL_39;
  }

  v21 = swift_getEnumCaseMultiPayload();
  if (v21 <= 2)
  {
    if (v21 >= 2)
    {
      if (v21 == 2)
      {
      }

      goto LABEL_39;
    }

    v22 = *(v20 + 8);
LABEL_37:

    goto LABEL_39;
  }

  switch(v21)
  {
    case 3:

      v23 = *(v20 + 16);
      goto LABEL_37;
    case 4:
      (*(v3 + 8))(v20, v14);
      break;
    case 5:
      sub_1B8B3B06C(*v20, *(v20 + 8), *(v20 + 16), *(v20 + 24), *(v20 + 32), *(v20 + 40), *(v20 + 48), *(v20 + 56), *(v20 + 64), *(v20 + 72));
      break;
  }

LABEL_39:
  v24 = (v31 + v30 + v4) & ~v4;
  v25 = (v5 + *(v1 + 28));
  v26 = *v25;

  v27 = v25[1];

  (*(v3 + 8))(v0 + v24, v14);

  return MEMORY[0x1EEE6BDD0](v0, v24 + v33, v32 | v4 | 7);
}

uint64_t sub_1B8B25DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8C23568();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for BatchInteraction.ContentPolarity(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1B8B25EF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B8C23568();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for BatchInteraction.ContentPolarity(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1B8B26070(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1B8B41824(v2);
}

uint64_t sub_1B8B260A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BatchInteraction(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B8B26164(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BatchInteraction(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8B26228()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for PrebuiltPreviewController();
  v34 = *(*(v3 - 1) + 80);
  v32 = *(*(v3 - 1) + 64);
  v36 = sub_1B8C23E98();
  v4 = *(v36 - 8);
  v5 = *(v4 + 80);
  v35 = *(v4 + 64);
  v33 = (v34 + 32) & ~v34;
  v6 = v0 + v33;
  v7 = sub_1B8C23568();
  (*(*(v7 - 8) + 8))(v0 + v33, v7);
  v8 = type metadata accessor for BatchInteraction(0);

  v9 = *(v0 + v33 + v8[6]);

  v10 = v0 + v33 + v8[7];
  type metadata accessor for BatchInteraction.ContentPolarity(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = type metadata accessor for BatchInteraction.ContentPreview(0);
  v13 = *(*(v12 - 8) + 48);
  v14 = v13(v10, 1, v12);
  if (EnumCaseMultiPayload != 1)
  {
    if (v14)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  if (!v14)
  {
    v16 = swift_getEnumCaseMultiPayload();
    if (v16 > 2)
    {
      switch(v16)
      {
        case 3:

          v29 = *(v10 + 16);

          break;
        case 4:
          v30 = sub_1B8C23328();
          (*(*(v30 - 8) + 8))(v10, v30);
          break;
        case 5:
          sub_1B8B3B06C(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 72));
          break;
      }
    }

    else if (v16 < 2)
    {
      v19 = *(v10 + 8);
    }

    else if (v16 == 2)
    {
    }
  }

  v10 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FD8, &qword_1B8C28560) + 48);
  if (!v13(v10, 1, v12))
  {
LABEL_6:
    v15 = swift_getEnumCaseMultiPayload();
    if (v15 > 2)
    {
      switch(v15)
      {
        case 3:

          v18 = *(v10 + 16);

          break;
        case 4:
          v20 = sub_1B8C23328();
          (*(*(v20 - 8) + 8))(v10, v20);
          break;
        case 5:
          sub_1B8B3B06C(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 72));
          break;
      }
    }

    else if (v15 < 2)
    {
      v17 = *(v10 + 8);
    }

    else if (v15 == 2)
    {
    }
  }

LABEL_26:
  v21 = v34 | v5;
  v22 = (v33 + v32 + v5) & ~v5;
  v23 = *(v6 + v3[10] + 8);

  v24 = *(v6 + v3[11]);

  v25 = (v6 + v3[12]);
  v26 = *v25;

  v27 = v25[1];

  v28 = v25[2];

  (*(v4 + 8))(v0 + v22, v36);

  return MEMORY[0x1EEE6BDD0](v0, v22 + v35, v21 | 7);
}

uint64_t sub_1B8B26670(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C23328();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B8B266DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C23328();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B8B2674C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1B8C245A8();
  sub_1B8C245A8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B8C24E18();
  type metadata accessor for FullScreenPreviewController.Content(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6370, &qword_1B8C28C10);
  swift_getWitnessTable();
  sub_1B8B4D128(&qword_1EBAA6378, type metadata accessor for FullScreenPreviewController.Content);
  sub_1B8B4BDFC();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  swift_getOpaqueTypeConformance2();
  sub_1B8B4BEB4();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1B8C23F48();
  return swift_getWitnessTable();
}

uint64_t sub_1B8B269CC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B26A14()
{
  v1 = *(type metadata accessor for FullPreviewAttributedText() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1B8C23328();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B26B2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return BatchController.donationController.setter(v4);
}

uint64_t sub_1B8B26B70()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8B26C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6500, &unk_1B8C31BC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B8B26CD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6500, &unk_1B8C31BC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8B26D90(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1B8BC3358(v4);
}

uint64_t sub_1B8B26DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8C23568();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for FullScreenPreviewController.Content.PreviewType(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B8B26EE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B8C23568();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for FullScreenPreviewController.Content.PreviewType(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1B8B27058()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B270D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6768, &qword_1B8C29760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B27140(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6768, &qword_1B8C29760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8B271B0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B8C237B8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1B8B2725C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1B8C237B8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8B27300()
{
  v1 = (type metadata accessor for ImageWithPreview() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_1B8C237B8();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = *(v0 + v3 + v1[8]);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B27448()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8B27480()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B274BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BatchInteraction(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 > 1)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B8B2757C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BatchInteraction(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = -a2;
  }

  return result;
}

uint64_t sub_1B8B2763C()
{
  v1 = type metadata accessor for ActionButton();
  v2 = *(*(v1 - 1) + 80);
  v24 = *(*(v1 - 1) + 64);
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  v5 = v0 + v3 + v1[5];
  v6 = sub_1B8C23568();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = type metadata accessor for BatchInteraction(0);

  v8 = *(v5 + v7[6]);

  v9 = v5 + v7[7];
  type metadata accessor for BatchInteraction.ContentPolarity(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = type metadata accessor for BatchInteraction.ContentPreview(0);
  v12 = *(*(v11 - 8) + 48);
  v13 = v12(v9, 1, v11);
  if (EnumCaseMultiPayload != 1)
  {
    if (v13)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  if (!v13)
  {
    v15 = swift_getEnumCaseMultiPayload();
    if (v15 > 2)
    {
      switch(v15)
      {
        case 3:

          v21 = *(v9 + 16);

          break;
        case 4:
          v22 = sub_1B8C23328();
          (*(*(v22 - 8) + 8))(v9, v22);
          break;
        case 5:
          sub_1B8B3B06C(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32), *(v9 + 40), *(v9 + 48), *(v9 + 56), *(v9 + 64), *(v9 + 72));
          break;
      }
    }

    else if (v15 < 2)
    {
      v18 = *(v9 + 8);
    }

    else if (v15 == 2)
    {
    }
  }

  v9 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FD8, &qword_1B8C28560) + 48);
  if (!v12(v9, 1, v11))
  {
LABEL_6:
    v14 = swift_getEnumCaseMultiPayload();
    if (v14 > 2)
    {
      switch(v14)
      {
        case 3:

          v17 = *(v9 + 16);

          break;
        case 4:
          v19 = sub_1B8C23328();
          (*(*(v19 - 8) + 8))(v9, v19);
          break;
        case 5:
          sub_1B8B3B06C(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32), *(v9 + 40), *(v9 + 48), *(v9 + 56), *(v9 + 64), *(v9 + 72));
          break;
      }
    }

    else if (v14 < 2)
    {
      v16 = *(v9 + 8);
    }

    else if (v14 == 2)
    {
    }
  }

LABEL_26:
  v20 = *(v4 + v1[6]);

  sub_1B8B3B060(*(v4 + v1[7]), *(v4 + v1[7] + 8));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v24, v2 | 7);
}

uint64_t sub_1B8B27A04()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B27A44()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 80);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1B8B27BF4@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1B8CC8ED0]();
  *a1 = result;
  return result;
}

uint64_t sub_1B8B27C20(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x1B8CC8EE0](v2);
}

uint64_t sub_1B8B27C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6BA8, &qword_1B8C2A1A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5DB0, &unk_1B8C2A1B0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1B8B27D74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6BA8, &qword_1B8C2A1A8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5DB0, &unk_1B8C2A1B0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1B8B27E98()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6B30, &qword_1B8C29F08);
  sub_1B8C23D38();
  sub_1B8B6FC10();
  sub_1B8B70B14(&qword_1EBAA6BA0, MEMORY[0x1E697BE48]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B8B28034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BatchInteraction(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B8B280F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BatchInteraction(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

double sub_1B8B281C4@<D0>(double *a1@<X8>)
{
  sub_1B8B7485C();
  sub_1B8C242B8();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1B8B28214(uint64_t *a1)
{
  v2 = *a1;
  sub_1B8B7485C();
  return sub_1B8C242C8();
}

uint64_t sub_1B8B28270@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B8C24258();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1B8B282A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1B8C24268();
}

uint64_t sub_1B8B282D4@<X0>(void *a1@<X8>)
{
  result = sub_1B8C24168();
  *a1 = v3;
  return result;
}

uint64_t sub_1B8B28380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatchInteraction(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B8B283EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatchInteraction(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B8B28464(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6F28, &qword_1B8C2AA68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B284EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7068, &unk_1B8C2CD10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8B28554(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1B8C24DE8();
  sub_1B8C23FF8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6A38, &qword_1B8C29DE8);
  sub_1B8C23FF8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5F98, qword_1B8C29DF0);
  sub_1B8C23FF8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA61A8, &unk_1B8C2CE50);
  sub_1B8C23FF8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7070, &qword_1B8C2CD30);
  sub_1B8C23FF8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B8B34CFC(&qword_1EBAA6A30, &qword_1EBAA6A38, &qword_1B8C29DE8);
  swift_getWitnessTable();
  sub_1B8B34CFC(&qword_1EBAA6A40, &qword_1EBAA5F98, qword_1B8C29DF0);
  swift_getWitnessTable();
  sub_1B8B34CFC(&qword_1EBAA61B8, &qword_1EBAA61A8, &unk_1B8C2CE50);
  swift_getWitnessTable();
  sub_1B8B34CFC(&qword_1EBAA7098, &qword_1EBAA7070, &qword_1B8C2CD30);
  return swift_getWitnessTable();
}

uint64_t sub_1B8B288A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA70E0, &unk_1B8C31A10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1B8B28984(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA70E0, &unk_1B8C31A10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1B8B28A50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B8C24278();
  *a1 = result;
  return result;
}

uint64_t sub_1B8B28A7C(uint64_t *a1)
{
  v1 = *a1;

  return sub_1B8C24288();
}

uint64_t sub_1B8B28AE4()
{
  v1 = type metadata accessor for DebugSheet();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + v3);

  v7 = (v0 + v3 + *(v1 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6408, &qword_1B8C28D00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *v7;

  if (EnumCaseMultiPayload == 1)
  {
    v10 = *(v7 + 1);

    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7100, &qword_1B8C2AFD8) + 32);
    v12 = sub_1B8C24058();
    (*(*(v12 - 8) + 8))(&v7[v11], v12);
  }

  v13 = *(v0 + v3 + *(v1 + 24) + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B28C7C()
{
  v1 = type metadata accessor for DebugSheet();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + v3);

  v6 = (v0 + v3 + *(v1 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6408, &qword_1B8C28D00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *v6;

  if (EnumCaseMultiPayload == 1)
  {
    v9 = *(v6 + 1);

    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7100, &qword_1B8C2AFD8) + 32);
    v11 = sub_1B8C24058();
    (*(*(v11 - 8) + 8))(&v6[v10], v11);
  }

  v12 = *(v0 + v3 + *(v1 + 24) + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B28DD8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7110, &qword_1B8C2B038);
  sub_1B8B82A2C();
  sub_1B8B82AE4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B8B28E70(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B8B28F2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8B28FE0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B2902C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B29064()
{
  sub_1B8B8514C(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B8B290BC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[11];

  v5 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 105, 7);
}

uint64_t sub_1B8B29114()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[10];

  v5 = v0[13];

  v6 = v0[14];

  return MEMORY[0x1EEE6BDD0](v0, 121, 7);
}

uint64_t sub_1B8B29178()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1B8B291DC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7310, &qword_1B8C2B990);
  sub_1B8B8AFF4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B8B29244()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B8B2928C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1B8B292E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1B8B29344()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8B2937C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8B293B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1B8B293EC()
{
  MEMORY[0x1B8CCB1A0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8B29424()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B2945C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8B294D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B8B29590(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8B29644()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B29680()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B296C0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8B2976C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C23568();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B8B297D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C23568();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B8B2988C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7658, &qword_1B8C2C1C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B298FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7658, &qword_1B8C2C1C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8B299F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8C236E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1B8B29B14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B8C236E8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1B8B29C2C()
{
  v1 = type metadata accessor for FBKInlineViewButton();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_1B8C236E8();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = (v0 + v3 + v1[5]);
  v8 = *v7;

  v9 = *(v7 + 1);

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0) + 32);
  v11 = sub_1B8C23738();
  (*(*(v11 - 8) + 8))(&v7[v10], v11);
  v12 = (v0 + v3 + v1[6]);
  if (*v12)
  {
    v13 = v12[1];
  }

  v14 = v5 + v1[7];

  v15 = *(v14 + 8);

  v16 = (v5 + v1[8]);
  v17 = *v16;

  v18 = v16[1];

  v19 = (v5 + v1[9]);
  v20 = *v19;

  v21 = v19[1];

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B29DE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B8C24238();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B8B29E74()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA76B0, &qword_1B8C2C278);
  sub_1B8C24308();
  sub_1B8B9C344();
  sub_1B8B9C4E0(&qword_1EBAA76F8, MEMORY[0x1E697C4E8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B8B29F84(__int128 *a1, uint64_t *a2)
{
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v8[0] = a1[2];
  *(v8 + 9) = *(a1 + 41);
  v4 = *a2;
  sub_1B8B50FF8(v7, &v6);
  return StateController.state.setter(a1);
}

uint64_t sub_1B8B29FE4()
{
  v1 = v0[2];

  if (v0[4] >= 4uLL)
  {

    v2 = v0[6];

    v3 = v0[9];
  }

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t sub_1B8B2A03C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B8B2A07C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8B2A0BC()
{
  v1 = *(v0 + 32);

  if (*(v0 + 40))
  {
    v2 = *(v0 + 48);
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B8B2A10C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  if (*(v0 + 56))
  {
    v3 = *(v0 + 64);
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B8B2A164()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8B2A1AC()
{
  v1 = *(v0 + 32);

  if (*(v0 + 40))
  {
    v2 = *(v0 + 48);
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B8B2A1FC()
{
  v1 = *(v0 + 16);

  if (*(v0 + 32))
  {
    v2 = *(v0 + 40);
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B8B2A24C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8B2A294()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 40);
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B8B2A2DC()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 40);
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B8B2A330()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8B2A378()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8B2A3BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7820, &qword_1B8C2C9D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B8B2A464()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7820, &qword_1B8C2C9D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B8B2A548()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B2A5AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7858, &qword_1B8C2CC90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B2A61C()
{
  v1 = (type metadata accessor for CatchUpDonationDecoder.Result.Message(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 3);

  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  v9 = *&v0[v3 + 8];

  v10 = *&v0[v3 + 24];

  v11 = v1[8];
  v12 = sub_1B8C23528();
  (*(*(v12 - 8) + 8))(&v0[v3 + v11], v12);
  v13 = v1[9];
  v14 = sub_1B8C23328();
  (*(*(v14 - 8) + 8))(&v0[v3 + v13], v14);
  v15 = v1[11];
  v16 = sub_1B8C23568();
  (*(*(v16 - 8) + 8))(&v0[v3 + v15], v16);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B2A7AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA78E8, &qword_1B8C2CCF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B2A82C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatchUpDonationDecoder.Result.Message(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B8B2A898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatchUpDonationDecoder.Result.Message(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B8B2A918@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B8C241E8();
  *a1 = result;
  return result;
}

uint64_t sub_1B8B2A944(uint64_t *a1)
{
  v1 = *a1;

  return sub_1B8C241F8();
}

uint64_t sub_1B8B2AA50()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8B2AA88()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B8B2AAD0()
{
  v1 = sub_1B8C23498();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

id sub_1B8B2ABC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_form;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B8B2AC2C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1B8B2AC88(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1B8B2ACE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_presentationDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B8B2AD40(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_presentationDelegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1B8B2ADA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_showsCompletionPage;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B8B2AE24()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B2AE64()
{
  MEMORY[0x1B8CCB1A0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8B2AE9C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8B2AEE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B2AF3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B8B2AFE8()
{
  MEMORY[0x1B8CCB1A0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8B2B024()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8B2B064()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8B2B0A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B2B0D8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B8B2B12C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B8B2B180()
{
  v1 = type metadata accessor for AgreementConsentView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D70, &qword_1B8C27960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1B8C23E78();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D78, &qword_1B8C27998);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1B8C23FE8();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = *&v5[v1[7] + 8];

  v12 = &v5[v1[8]];
  if (*v12)
  {
    v13 = *(v12 + 1);
  }

  v14 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + v14);

  return MEMORY[0x1EEE6BDD0](v0, v14 + 8, v2 | 7);
}

uint64_t sub_1B8B2B358()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B8B2B398()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B8B2B3E0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B2B420()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B8B2B470()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7C68, &qword_1B8C2D578);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B8B2B510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8C23568();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 253)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA84E0, &qword_1B8C2F0A0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1B8B2B638(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B8C23568();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 253)
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA84E0, &qword_1B8C2F0A0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B8B2B764()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B2B7A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C23498();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B8B2B80C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C23498();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B8B2B8A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return DonationController.stateController.setter(v4);
}

uint64_t sub_1B8B2B978()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8B2B9D4()
{
  v1 = (type metadata accessor for BatchInteraction(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_1B8C23568();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = *(v0 + v3 + v1[8]);

  v8 = v0 + v3 + v1[9];
  type metadata accessor for BatchInteraction.ContentPolarity(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = type metadata accessor for BatchInteraction.ContentPreview(0);
  v11 = *(*(v10 - 8) + 48);
  v12 = v11(v8, 1, v10);
  if (EnumCaseMultiPayload != 1)
  {
    if (v12)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  if (!v12)
  {
    v14 = swift_getEnumCaseMultiPayload();
    if (v14 > 2)
    {
      switch(v14)
      {
        case 3:

          v19 = *(v8 + 16);

          break;
        case 4:
          v20 = sub_1B8C23328();
          (*(*(v20 - 8) + 8))(v8, v20);
          break;
        case 5:
          sub_1B8B3B06C(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72));
          break;
      }
    }

    else if (v14 < 2)
    {
      v17 = *(v8 + 8);
    }

    else if (v14 == 2)
    {
    }
  }

  v8 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FD8, &qword_1B8C28560) + 48);
  if (!v11(v8, 1, v10))
  {
LABEL_6:
    v13 = swift_getEnumCaseMultiPayload();
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:

          v16 = *(v8 + 16);

          break;
        case 4:
          v18 = sub_1B8C23328();
          (*(*(v18 - 8) + 8))(v8, v18);
          break;
        case 5:
          sub_1B8B3B06C(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72));
          break;
      }
    }

    else if (v13 < 2)
    {
      v15 = *(v8 + 8);
    }

    else if (v13 == 2)
    {
    }
  }

LABEL_26:

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B2BD30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_serverErrorDetails;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_1B8B2BD90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_underlyingError;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B8B2BDFC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EBAA7DC0;
  return result;
}

uint64_t sub_1B8B2BE48(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EBAA7DC0 = v1;
  return result;
}

uint64_t sub_1B8B2BEC0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B2BEF8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for FBKEvaluationViewModifier();
  sub_1B8C23FF8();
  sub_1B8BD0B88(&qword_1EDC85630, type metadata accessor for FBKEvaluationViewModifier);
  return swift_getWitnessTable();
}

uint64_t sub_1B8B2BF94(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E20, &qword_1B8C2E028);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B8B2C050(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E20, &qword_1B8C2E028);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8B2C104()
{
  v1 = (type metadata accessor for FBKEvaluationViewModifier() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DB8, &unk_1B8C2A510);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1B8C24648();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
    v11 = *(v5 + v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_1B8B2C28C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1B8BE72B4(v2);
}

uint64_t sub_1B8B2C2CC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7E30, &qword_1B8C2E0A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7E38, &qword_1B8C2E0B0);
  sub_1B8BD0AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7E40, &qword_1B8C2E0B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7E48, &qword_1B8C2E0C0);
  sub_1B8BD0B18();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B8B2C414@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_introductionPages;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_1B8B2C474@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_form;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B8B2C4E0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B8C237B8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1B8B2C58C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1B8C237B8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8B2C630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ListPreviewer.Content(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_1B8B2C6FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ListPreviewer.Content(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1B8B2C7B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7EF0, &qword_1B8C2E558);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8B2C824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ListPreviewer.Content(0);
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

uint64_t sub_1B8B2C8E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ListPreviewer.Content(0);
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

uint64_t sub_1B8B2C9D4()
{
  v1 = (type metadata accessor for ListSection(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for ListPreviewer.Content(0);
  v6 = *(v5 + 20);
  v7 = sub_1B8C237B8();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + *(v5 + 24));

  v9 = v0 + v3 + v1[7];
  v10 = *(v9 + 8);

  v11 = *(v9 + 16);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B2CAF4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8070, &qword_1B8C2E730);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1B8B2CBB0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8070, &qword_1B8C2E730);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8B2CC64()
{
  v1 = (type metadata accessor for TextRow.Row(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1B8C23568();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7]);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B2CD4C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8070, &qword_1B8C2E730);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B8B2CE08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8070, &qword_1B8C2E730);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8B2CEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8C23568();
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

uint64_t sub_1B8B2CF74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B8C23568();
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

uint64_t sub_1B8B2D08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WebView.HTMLContent(0);
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

uint64_t sub_1B8B2D158(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WebView.HTMLContent(0);
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

uint64_t sub_1B8B2D210(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1B8C23528();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1B8C23328();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_1B8C23568();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_1B8B2D37C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1B8C23528();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1B8C23328();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_1B8C23568();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1B8B2D4E8(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1B8C23528();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1B8C23568();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = sub_1B8C23328();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_1B8B2D654(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1B8C23528();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1B8C23568();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = sub_1B8C23328();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1B8B2D7C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA70E0, &unk_1B8C31A10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B8B2D884(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA70E0, &unk_1B8C31A10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8B2D938()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (type metadata accessor for SheetContainer() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*v3 + 64);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v5 + 32);

  v9 = (v0 + v5 + v3[12]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6408, &qword_1B8C28D00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *v9;

  if (EnumCaseMultiPayload == 1)
  {
    v12 = *(v9 + 1);

    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7100, &qword_1B8C2AFD8) + 32);
    v14 = sub_1B8C24058();
    (*(*(v14 - 8) + 8))(&v9[v13], v14);
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1B8B2DA8C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1B8C23F68();
  sub_1B8C23FF8();
  swift_getWitnessTable();
  sub_1B8C24E18();
  sub_1B8C23D48();
  sub_1B8C245A8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B8C24E18();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA83A8, &qword_1B8C2EE48);
  swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA83B0, &qword_1B8C2EE50);
  sub_1B8B34CFC(&qword_1EBAA83B8, &qword_1EBAA83B0, &qword_1B8C2EE50);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1B8B34CA8();
  swift_getOpaqueTypeMetadata2();
  sub_1B8C245A8();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1B8C24018();
  return swift_getWitnessTable();
}

uint64_t sub_1B8B2DD70()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8B2DE3C()
{
  v1 = sub_1B8C23568();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v6 = *(v0 + v5 + 8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1B8B2DF20()
{
  MEMORY[0x1B8CCB1A0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1B8B2DF98(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1B8BE74E4(v2);
}

uint64_t sub_1B8B2E020()
{
  v1 = sub_1B8C236E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1B8C23738();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + v4 + 1) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1B8B2E174()
{
  v1 = sub_1B8C236E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B8B2E238()
{
  v1 = sub_1B8C236E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1B8C23738();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 8, v10 | 7);
}

uint64_t sub_1B8B2E394()
{
  v1 = sub_1B8C23738();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1B8B2E470()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8B2E574()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B2E5B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController_blockPresentationDetentUsage;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B8B2E60C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController_blockPresentationDetentUsage;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void sub_1B8B2E6A0(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a1 + 8);
  sub_1B8BF9E28(*a1, v4);
  sub_1B8BE91F8(v2, v4);
}

uint64_t sub_1B8B2E738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8C236E8();
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

uint64_t sub_1B8B2E7F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B8C236E8();
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

uint64_t sub_1B8B2E8D4(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1B8BE5CCC(&v4);
}

uint64_t sub_1B8B2E914()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8B2E95C()
{
  v1 = sub_1B8C236E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1B8B2EA38()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B2EAF8()
{
  v1 = *(v0 + 24);
  sub_1B8B30A54(*(v0 + 16));

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B8B2EB44()
{
  v1 = sub_1B8C236E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);
  sub_1B8B30A54(*(v0 + 16));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B8B2EC14()
{
  v1 = *(v0 + 24);
  sub_1B8B30A54(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8B2EC5C()
{
  v1 = sub_1B8C23568();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);
  sub_1B8B30A54(*(v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

uint64_t sub_1B8B2ED54()
{
  v1 = sub_1B8C236E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1B8C23738();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + v4 + 1) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 24);
  sub_1B8B30A54(*(v0 + 16));

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1B8B2EEB4()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8B2EEFC()
{
  v1 = *(v0 + 16);

  if (*(v0 + 24))
  {
    v2 = *(v0 + 32);
  }

  v3 = *(v0 + 48);
  sub_1B8B30A54(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1B8B2EFAC()
{
  v1 = *(type metadata accessor for AnalyticsEvent() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  if (swift_getEnumCaseMultiPayload() - 1 <= 1)
  {
    v5 = sub_1B8C237B8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B2F0B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B8B2F170(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8B2F220()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1B8B2F260(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  sub_1B8C09614(*a1, v3, v4);
  sub_1B8C07AE8(v2, v3, v4);
}

uint64_t sub_1B8B2F2B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1B8C07D98(v2, v3);
}

uint64_t sub_1B8B2F2F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7C68, &qword_1B8C2D578);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B8B2F388()
{
  v1 = *(v0 + 16);

  if (*(v0 + 24))
  {
    v2 = *(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B8B2F3D8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  if (*(v0 + 48))
  {
    v3 = *(v0 + 56);
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B8B2F454@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1B8B2F4DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B8B2F534(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void *sub_1B8B2F6D4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__maxInlineChoices;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1B8B2F6F8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__maxInlineChoices;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

id sub_1B8B2F7D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_localizedAttributedLegalString;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B8B2F86C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__largeTitleIcon);
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
}

uint64_t sub_1B8B2F888(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__largeTitleIcon);
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1B8B2F938@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formId;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1B8B2F994(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formId;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_1B8B2FA20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_environment;
  result = swift_beginAccess();
  v5 = *(v3 + 2);
  *a2 = *v3;
  *(a2 + 2) = v5;
  return result;
}

uint64_t sub_1B8B2FA7C(__int16 *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *a2 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_environment;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 2) = v3;
  return result;
}

uint64_t sub_1B8B2FB6C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B8B2FC28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8B2FCDC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8B2FD30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8CE8, &qword_1B8C318B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B2FDA0()
{
  v1 = (type metadata accessor for CatchUpDonationDecoder.Result.Mail(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 3);

  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  v9 = *&v0[v3 + 8];

  v10 = *&v0[v3 + 24];

  v11 = *&v0[v3 + 40];

  v12 = *&v0[v3 + 56];

  v13 = v1[10];
  v14 = sub_1B8C23528();
  (*(*(v14 - 8) + 8))(&v0[v3 + v13], v14);
  v15 = v1[11];
  v16 = sub_1B8C23568();
  (*(*(v16 - 8) + 8))(&v0[v3 + v15], v16);
  v17 = v1[12];
  v18 = sub_1B8C23328();
  (*(*(v18 - 8) + 8))(&v0[v3 + v17], v18);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B2FF40()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B8B2FFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CatchUpDonationDecoder.Result.Mail(0);
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

uint64_t sub_1B8B3006C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CatchUpDonationDecoder.Result.Mail(0);
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

uint64_t sub_1B8B30124(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA70E0, &unk_1B8C31A10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1B8B301E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA70E0, &unk_1B8C31A10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8B30294()
{
  v1 = (type metadata accessor for CatchUpMailOriginalContentFullScreenPreviewController(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = (v0 + v3 + v1[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6408, &qword_1B8C28D00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *v6;

  if (EnumCaseMultiPayload == 1)
  {
    v9 = *(v6 + 1);

    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7100, &qword_1B8C2AFD8) + 32);
    v11 = sub_1B8C24058();
    (*(*(v11 - 8) + 8))(&v6[v10], v11);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B303E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6500, &unk_1B8C31BC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for CatchUpDonationDecoder.Result.Mail(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1B8B30504(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6500, &unk_1B8C31BC0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for CatchUpDonationDecoder.Result.Mail(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1B8B30660()
{
  v1 = type metadata accessor for CatchUpMailMessagePreviewer(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D58, &qword_1B8C31BB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1B8C23D78();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v5 + *(v1 + 20);
  v9 = *(v8 + 1);

  v10 = *(v8 + 3);

  v11 = *(v8 + 5);

  v12 = *(v8 + 7);

  v13 = type metadata accessor for CatchUpDonationDecoder.Result.Mail(0);
  v14 = v13[8];
  v15 = sub_1B8C23528();
  (*(*(v15 - 8) + 8))(&v8[v14], v15);
  v16 = v13[9];
  v17 = sub_1B8C23568();
  (*(*(v17 - 8) + 8))(&v8[v16], v17);
  v18 = v13[10];
  v19 = sub_1B8C23328();
  (*(*(v19 - 8) + 8))(&v8[v18], v19);
  v20 = (v5 + *(v1 + 24));
  if (*v20)
  {
    v21 = v20[1];
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B30884()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8E80, &qword_1B8C31C60);
  sub_1B8C1F8F0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B8B308E8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B8B309EC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1B8B30A44(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B8B30A60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5CD0, &qword_1B8C278C8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v27 - v6;
  v8 = a1[4];
  v9 = a1[5];

  v28 = sub_1B8C24D08();
  v10 = sub_1B8C24C68();
  v11 = sub_1B8C248C8();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = sub_1B8C24908();
  sub_1B8B3433C(v7, &qword_1EBAA5CD0, &qword_1B8C278C8);
  KeyPath = swift_getKeyPath();
  v14 = sub_1B8C24478();
  v29[0] = 0;
  sub_1B8B30D6C(a1, &v42);
  v35 = *&v43[48];
  v36 = *&v43[64];
  v37 = *&v43[80];
  v31 = v42;
  v32 = *v43;
  v33 = *&v43[16];
  v34 = *&v43[32];
  v38[0] = v42;
  v38[1] = *v43;
  v38[2] = *&v43[16];
  v38[3] = *&v43[32];
  v38[4] = *&v43[48];
  v38[5] = *&v43[64];
  v39 = *&v43[80];
  sub_1B8B34450(&v31, &v40, &qword_1EBAA5CD8, &qword_1B8C27900);
  sub_1B8B3433C(v38, &qword_1EBAA5CD8, &qword_1B8C27900);
  *(&v30[3] + 7) = v34;
  *(&v30[4] + 7) = v35;
  *(&v30[5] + 7) = v36;
  *(&v30[6] + 7) = v37;
  *(v30 + 7) = v31;
  *(&v30[1] + 7) = v32;
  *(&v30[2] + 7) = v33;
  v15 = v29[0];
  *&v40 = v14;
  *(&v40 + 1) = 0x4010000000000000;
  LOBYTE(v41[0]) = v29[0];
  *(&v41[2] + 1) = v30[2];
  v17 = v30[1];
  v16 = v30[2];
  *(&v41[1] + 1) = v30[1];
  v18 = v30[0];
  *(v41 + 1) = v30[0];
  v41[6] = *(&v30[5] + 15);
  *(&v41[5] + 1) = v30[5];
  v20 = v30[4];
  v19 = v30[5];
  *(&v41[4] + 1) = v30[4];
  v21 = v30[3];
  *(&v41[3] + 1) = v30[3];
  v22 = v41[2];
  *(a2 + 64) = v41[1];
  *(a2 + 80) = v22;
  v23 = v41[0];
  *(a2 + 32) = v40;
  *(a2 + 48) = v23;
  v24 = v41[6];
  *(a2 + 128) = v41[5];
  *(a2 + 144) = v24;
  v25 = v41[4];
  *(a2 + 96) = v41[3];
  *(a2 + 112) = v25;
  *&v43[33] = v16;
  *&v43[17] = v17;
  *a2 = v28;
  *(a2 + 8) = v10;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = v12;
  *&v42 = v14;
  *(&v42 + 1) = 0x4010000000000000;
  v43[0] = v15;
  *&v43[1] = v18;
  *&v43[96] = *(&v30[5] + 15);
  *&v43[81] = v19;
  *&v43[65] = v20;
  *&v43[49] = v21;

  sub_1B8B34450(&v40, v29, &qword_1EBAA5CE0, &qword_1B8C27908);
  sub_1B8B3433C(&v42, &qword_1EBAA5CE0, &qword_1B8C27908);
}

uint64_t sub_1B8B30D6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = sub_1B8C242E8();
  v24 = *a1;
  v26 = a1[1];
  sub_1B8B34CA8();

  v4 = sub_1B8C249E8();
  v6 = v5;
  v8 = v7;
  v9 = sub_1B8C249A8();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_1B8B34060(v4, v6, v8 & 1);

  sub_1B8B34694(v9, v11, v13 & 1);

  sub_1B8B34060(v9, v11, v13 & 1);

  v25 = a1[2];
  v27 = a1[3];

  v16 = sub_1B8C249E8();
  v18 = v17;
  v20 = v19 & 1;
  *a2 = v23;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = v13 & 1;
  *(a2 + 48) = v15;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  *(a2 + 72) = v16;
  *(a2 + 80) = v17;
  *(a2 + 88) = v19 & 1;
  *(a2 + 96) = v21;
  sub_1B8B34694(v9, v11, v13 & 1);

  sub_1B8B34694(v16, v18, v20);

  sub_1B8B34060(v16, v18, v20);

  sub_1B8B34060(v9, v11, v13 & 1);
}

double sub_1B8B30F34@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v25[0] = *v1;
  v25[1] = v3;
  v25[2] = v1[2];
  v4 = sub_1B8C242D8();
  v24 = 0;
  sub_1B8B30A60(v25, &v13);
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v35 = v22;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v26 = v13;
  v27 = v14;
  v36[6] = v19;
  v36[7] = v20;
  v36[8] = v21;
  v36[9] = v22;
  v36[2] = v15;
  v36[3] = v16;
  v36[4] = v17;
  v36[5] = v18;
  v36[0] = v13;
  v36[1] = v14;
  sub_1B8B34450(&v26, &v12, &qword_1EBAA5CC8, &qword_1B8C278C0);
  sub_1B8B3433C(v36, &qword_1EBAA5CC8, &qword_1B8C278C0);
  *&v23[55] = v29;
  *&v23[39] = v28;
  *&v23[103] = v32;
  *&v23[119] = v33;
  *&v23[135] = v34;
  *&v23[151] = v35;
  *&v23[71] = v30;
  *&v23[87] = v31;
  *&v23[7] = v26;
  *&v23[23] = v27;
  v5 = *&v23[96];
  *(a1 + 129) = *&v23[112];
  v6 = *&v23[144];
  *(a1 + 145) = *&v23[128];
  *(a1 + 161) = v6;
  v7 = *&v23[32];
  *(a1 + 65) = *&v23[48];
  v8 = *&v23[80];
  *(a1 + 81) = *&v23[64];
  *(a1 + 97) = v8;
  *(a1 + 113) = v5;
  result = *v23;
  v10 = *&v23[16];
  *(a1 + 17) = *v23;
  *(a1 + 33) = v10;
  v11 = v24;
  *a1 = v4;
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = v11;
  *(a1 + 176) = *&v23[159];
  *(a1 + 49) = v7;
  return result;
}

uint64_t sub_1B8B310C4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B8C245F8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1B8C245E8();
}

__n128 sub_1B8B3110C@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A00, &qword_1B8C27170);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22[-v13];
  *v14 = sub_1B8C24468();
  *(v14 + 1) = 0x4040000000000000;
  v14[16] = 0;
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A08, &qword_1B8C27178) + 44);
  LOBYTE(v23) = a2 & 1;
  v22[8] = a4 & 1;
  sub_1B8B312AC(a1, a2 & 1, a3, a4 & 1, &v14[v15]);
  v16 = sub_1B8C24808();
  v17 = &v14[*(v11 + 44)];
  *v17 = v16;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  v17[40] = 1;
  sub_1B8C24F48();
  sub_1B8C24088();
  sub_1B8B24668(v14, a5);
  v18 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A10, &qword_1B8C27180) + 36);
  v19 = v28;
  *(v18 + 64) = v27;
  *(v18 + 80) = v19;
  *(v18 + 96) = v29;
  v20 = v24;
  *v18 = v23;
  *(v18 + 16) = v20;
  result = v26;
  *(v18 + 32) = v25;
  *(v18 + 48) = result;
  return result;
}

uint64_t sub_1B8B312AC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v55 = a4;
  v54 = a3;
  v53 = a2;
  v52 = a1;
  v63 = a5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A18, &qword_1B8C27188);
  v62 = *(v60 - 8);
  v5 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v56 = &v52 - v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A20, &qword_1B8C27190);
  v59 = *(v61 - 8);
  v7 = *(v59 + 64);
  v8 = MEMORY[0x1EEE9AC00](v61);
  v58 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A28, &qword_1B8C27198);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v57 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v52 - v16;
  sub_1B8C243A8();
  v17 = sub_1B8C249C8();
  v19 = v18;
  v21 = v20;
  sub_1B8C24878();
  v22 = sub_1B8C249B8();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_1B8B34060(v17, v19, v21 & 1);

  KeyPath = swift_getKeyPath();
  v74 = v22;
  v75 = v24;
  v26 &= 1u;
  v76 = v26;
  v77 = v28;
  v78 = KeyPath;
  v79 = 1;
  sub_1B8C248D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A30, &unk_1B8C271D0);
  sub_1B8B341FC();
  v30 = v64;
  sub_1B8C24A48();
  sub_1B8B34060(v22, v24, v26);

  LOBYTE(v22) = sub_1B8C247F8();
  sub_1B8C23D18();
  v31 = v30 + *(v12 + 44);
  *v31 = v22;
  *(v31 + 8) = v32;
  *(v31 + 16) = v33;
  *(v31 + 24) = v34;
  *(v31 + 32) = v35;
  *(v31 + 40) = 0;
  v36 = v52;
  v70 = v52;
  LOBYTE(v12) = v53 & 1;
  v71 = v53 & 1;
  v37 = v54;
  v72 = v54;
  LOBYTE(v28) = v55 & 1;
  v73 = v55 & 1;
  sub_1B8C247E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A50, &qword_1B8C271E0);
  sub_1B8B34CFC(&qword_1EBAA5A58, &qword_1EBAA5A50, &qword_1B8C271E0);
  v38 = v56;
  sub_1B8C23D58();
  v66 = v36;
  v67 = v12;
  v68 = v37;
  v69 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A60, &qword_1B8C271E8);
  sub_1B8B34CFC(&qword_1EBAA5A68, &qword_1EBAA5A18, &qword_1B8C27188);
  sub_1B8B34CFC(&qword_1EBAA5A70, &qword_1EBAA5A60, &qword_1B8C271E8);
  v39 = v65;
  v40 = v60;
  sub_1B8C24C28();
  (*(v62 + 8))(v38, v40);
  v41 = v57;
  sub_1B8B34450(v30, v57, &qword_1EBAA5A28, &qword_1B8C27198);
  v42 = v59;
  v43 = *(v59 + 16);
  v44 = v58;
  v45 = v39;
  v46 = v61;
  v43(v58, v45, v61);
  v47 = v63;
  *v63 = 0x4040000000000000;
  *(v47 + 8) = 0;
  v48 = v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A78, &qword_1B8C271F0);
  sub_1B8B34450(v41, &v48[*(v49 + 48)], &qword_1EBAA5A28, &qword_1B8C27198);
  v43(&v48[*(v49 + 64)], v44, v46);
  v50 = *(v42 + 8);
  v50(v65, v46);
  sub_1B8B3433C(v64, &qword_1EBAA5A28, &qword_1B8C27198);
  v50(v44, v46);
  return sub_1B8B3433C(v41, &qword_1EBAA5A28, &qword_1B8C27198);
}

double sub_1B8B31900@<D0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W3>, uint64_t a4@<X8>)
{
  v8 = sub_1B8C24478();
  v27 = 0;
  LOBYTE(v38[0]) = a2 & 1;
  LOBYTE(v28) = a3 & 1;
  sub_1B8B31AB4(a1, a2 & 1, &v16);
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v28 = v16;
  v29 = v17;
  v38[6] = v22;
  v38[7] = v23;
  v38[8] = v24;
  v38[2] = v18;
  v38[3] = v19;
  v38[4] = v20;
  v38[5] = v21;
  v37 = v25;
  v39 = v25;
  v38[0] = v16;
  v38[1] = v17;
  sub_1B8B34450(&v28, &v15, &qword_1EBAA5AD8, &qword_1B8C272D0);
  sub_1B8B3433C(v38, &qword_1EBAA5AD8, &qword_1B8C272D0);
  *&v26[55] = v31;
  *&v26[39] = v30;
  *&v26[103] = v34;
  *&v26[119] = v35;
  *&v26[135] = v36;
  *&v26[71] = v32;
  *&v26[87] = v33;
  *&v26[7] = v28;
  *&v26[23] = v29;
  v9 = *&v26[112];
  *(a4 + 113) = *&v26[96];
  *(a4 + 129) = v9;
  *(a4 + 145) = *&v26[128];
  v10 = *&v26[48];
  *(a4 + 49) = *&v26[32];
  *(a4 + 65) = v10;
  v11 = *&v26[80];
  *(a4 + 81) = *&v26[64];
  *(a4 + 97) = v11;
  result = *v26;
  v13 = *&v26[16];
  *(a4 + 17) = *v26;
  v26[151] = v37;
  v14 = v27;
  *a4 = v8;
  *(a4 + 8) = 0x4038000000000000;
  *(a4 + 16) = v14;
  *(a4 + 161) = *&v26[144];
  *(a4 + 33) = v13;
  return result;
}

double sub_1B8B31AB4@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1B8C242A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v39 = a1;
  }

  else
  {

    sub_1B8C25488();
    v11 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
    a1 = v39;
  }

  swift_getKeyPath();
  *&v29 = a1;
  sub_1B8B342F4(&qword_1EBAA5AA8, type metadata accessor for OnboardingController);
  sub_1B8C23588();

  v12 = *(a1 + 18);

  if (v12)
  {

    *&v23 = 0x552073626D756854;
    *(&v23 + 1) = 0xE900000000000070;
    *&v24[0] = 0xD000000000000027;
    *(&v24[0] + 1) = 0x80000001B8C320A0;
    *&v24[1] = 0xD000000000000019;
    *(&v24[1] + 1) = 0x80000001B8C320D0;
    *&v24[2] = 0x442073626D756854;
    *(&v24[2] + 1) = 0xEB000000006E776FLL;
    *&v24[3] = 0xD00000000000002BLL;
    *(&v24[3] + 1) = 0x80000001B8C320F0;
    *&v24[4] = 0xD00000000000001BLL;
    *(&v24[4] + 1) = 0x80000001B8C32120;
    *&v25 = 0x696F50206E726145;
    *(&v25 + 1) = 0xEB0000000073746ELL;
    *&v26 = 0xD00000000000002ALL;
    *(&v26 + 1) = 0x80000001B8C32140;
    *&v27 = 0xD000000000000012;
    *(&v27 + 1) = 0x80000001B8C32170;
    sub_1B8B34680(&v23);
  }

  else
  {
    v13 = sub_1B8C24468();
    LOBYTE(v29) = 1;
    sub_1B8B31F64(v20);
    v19[3] = *(v21 + 9);
    *(&v19[2] + 7) = v21[0];
    *(&v19[1] + 7) = v20[1];
    *(v19 + 7) = v20[0];
    v23 = v13;
    LOBYTE(v24[0]) = v29;
    *(&v24[3] + 1) = v19[3];
    *(&v24[2] + 1) = v19[2];
    *(&v24[1] + 1) = v19[1];
    *(v24 + 1) = v19[0];
    sub_1B8B3468C(&v23);
  }

  v21[8] = v25;
  v21[9] = v26;
  v21[10] = v27;
  v22 = v28;
  v21[4] = v24[1];
  v21[5] = v24[2];
  v21[6] = v24[3];
  v21[7] = v24[4];
  v21[2] = v23;
  v21[3] = v24[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5AE0, &qword_1B8C272D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5AE8, &qword_1B8C272E0);
  sub_1B8B34CFC(&qword_1EBAA5AF0, &qword_1EBAA5AE0, &qword_1B8C272D8);
  sub_1B8B34CFC(&qword_1EBAA5AF8, &qword_1EBAA5AE8, &qword_1B8C272E0);
  sub_1B8C24598();
  v14 = v36;
  *(a3 + 96) = v35;
  *(a3 + 112) = v14;
  *(a3 + 128) = v37;
  *(a3 + 144) = v38;
  v15 = v32;
  *(a3 + 32) = v31;
  *(a3 + 48) = v15;
  v16 = v34;
  *(a3 + 64) = v33;
  *(a3 + 80) = v16;
  result = *&v29;
  v18 = v30;
  *a3 = v29;
  *(a3 + 16) = v18;
  return result;
}

uint64_t sub_1B8B31F64@<X0>(uint64_t a1@<X8>)
{
  sub_1B8C243A8();
  v2 = sub_1B8C249C8();
  v4 = v3;
  v6 = v5;
  sub_1B8C24918();
  v7 = sub_1B8C249B8();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_1B8B34060(v2, v4, v6 & 1);

  KeyPath = swift_getKeyPath();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_1B8B34694(v7, v9, v11 & 1);

  sub_1B8B34060(v7, v9, v11 & 1);
}

uint64_t sub_1B8B320CC@<X0>(char *a1@<X0>, int a2@<W1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v74 = a4;
  v73 = a3;
  v67 = a5;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A80, &qword_1B8C271F8);
  v7 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v61 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A88, &qword_1B8C27200);
  v63 = *(v65 - 8);
  v9 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A90, &qword_1B8C27208);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v61 - v14;
  v15 = sub_1B8C245F8();
  v68 = *(v15 - 8);
  v69 = v15;
  v16 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5A98, &qword_1B8C27210);
  v71 = *(v75 - 8);
  v19 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v70 = &v61 - v20;
  v21 = sub_1B8C242A8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5AA0, &qword_1B8C27218);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v30 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v61 - v31;

  v76 = a1;
  v72 = a2;
  if ((a2 & 1) == 0)
  {
    sub_1B8C25488();
    v33 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v22 + 8))(v25, v21);
    a1 = v77;
  }

  swift_getKeyPath();
  v77 = a1;
  sub_1B8B342F4(&qword_1EBAA5AA8, type metadata accessor for OnboardingController);
  sub_1B8C23588();

  v34 = a1[18];

  if (v34)
  {
    (*(v12 + 56))(v30, 1, 1, v11);
    v35 = sub_1B8B34CFC(&qword_1EBAA5AB0, &qword_1EBAA5A98, &qword_1B8C27210);
    v77 = v75;
    v78 = v35;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1B8CC9300](v30, v11, OpaqueTypeConformance2);
    sub_1B8B3433C(v30, &qword_1EBAA5AA0, &qword_1B8C27218);
  }

  else
  {
    if (qword_1EBAA5890 != -1)
    {
      swift_once();
    }

    v37 = v69;
    v38 = __swift_project_value_buffer(v69, qword_1EBAA5898);
    v39 = (*(v68 + 16))(v18, v38, v37);
    MEMORY[0x1EEE9AC00](v39);
    *(&v61 - 4) = v76;
    *(&v61 - 24) = v72 & 1;
    *(&v61 - 2) = v73;
    *(&v61 - 8) = v74 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5AB8, &qword_1B8C27248);
    sub_1B8B34CFC(&qword_1EBAA5AC0, &qword_1EBAA5AB8, &qword_1B8C27248);
    v40 = v70;
    sub_1B8C23DC8();
    v41 = sub_1B8B34CFC(&qword_1EBAA5AB0, &qword_1EBAA5A98, &qword_1B8C27210);
    v42 = v61;
    v43 = v75;
    MEMORY[0x1B8CC92F0](v40, v75, v41);
    (*(v12 + 16))(v30, v42, v11);
    (*(v12 + 56))(v30, 0, 1, v11);
    v77 = v43;
    v78 = v41;
    v44 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1B8CC9300](v30, v11, v44);
    sub_1B8B3433C(v30, &qword_1EBAA5AA0, &qword_1B8C27218);
    (*(v12 + 8))(v42, v11);
    (*(v71 + 8))(v40, v43);
  }

  sub_1B8C245E8();
  v45 = v62;
  sub_1B8C23DC8();
  if (qword_1EBAA58B0 != -1)
  {
    swift_once();
  }

  v46 = v69;
  v47 = __swift_project_value_buffer(v69, qword_1EBAA58B8);
  v48 = (*(v68 + 16))(v18, v47, v46);
  MEMORY[0x1EEE9AC00](v48);
  *(&v61 - 4) = v76;
  *(&v61 - 24) = v72 & 1;
  *(&v61 - 2) = v73;
  *(&v61 - 8) = v74 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5AB8, &qword_1B8C27248);
  sub_1B8B34CFC(&qword_1EBAA5AC0, &qword_1EBAA5AB8, &qword_1B8C27248);
  v49 = v70;
  sub_1B8C23DC8();
  v50 = *(v66 + 48);
  v51 = *(v66 + 64);
  v52 = v32;
  v53 = v64;
  sub_1B8B34450(v32, v64, &qword_1EBAA5AA0, &qword_1B8C27218);
  v54 = v63;
  v55 = v53 + v50;
  v56 = v65;
  (*(v63 + 16))(v55, v45, v65);
  v57 = v71;
  v58 = v53 + v51;
  v59 = v75;
  (*(v71 + 16))(v58, v49, v75);
  sub_1B8C244A8();
  (*(v57 + 8))(v49, v59);
  (*(v54 + 8))(v45, v56);
  return sub_1B8B3433C(v52, &qword_1EBAA5AA0, &qword_1B8C27218);
}

void sub_1B8B32AA8(uint64_t a1, char a2, uint64_t a3, int a4)
{
  v35 = a4;
  v7 = sub_1B8C23E78();
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5AC8, &qword_1B8C27250);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v34 - v12;
  v14 = sub_1B8C242A8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1B8C25488();
    v19 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v15 + 8))(v18, v14);
    a1 = v38;
  }

  v20 = *(a1 + 16);
  v37 = v7;
  if (v20 == 1)
  {
    *(a1 + 16) = 1;
    sub_1B8B7EBA8();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v34 - 2) = a1;
    *(&v34 - 8) = 1;
    v38 = a1;
    sub_1B8B342F4(&qword_1EBAA5AA8, type metadata accessor for OnboardingController);
    sub_1B8C23578();
  }

  v22 = [objc_opt_self() mainBundle];
  v23 = [v22 bundleIdentifier];

  if (v23)
  {
    v24 = sub_1B8C25128();
    v26 = v25;

    if (v24 == 0xD00000000000001ALL && 0x80000001B8C32080 == v26)
    {

LABEL_11:
      v28 = [objc_opt_self() sharedApplication];
      [v28 suspend];

      return;
    }

    v27 = sub_1B8C25A08();

    if (v27)
    {
      goto LABEL_11;
    }
  }

  if ((v35 & 1) == 0)
  {
    sub_1B8C25488();
    v29 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v15 + 8))(v18, v14);
    a3 = v38;
  }

  swift_getKeyPath();
  v38 = a3;
  sub_1B8B342F4(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  v30 = OBJC_IVAR____TtC8Feedback15BatchController__dismissHandler;
  swift_beginAccess();
  sub_1B8B34450(a3 + v30, v13, &qword_1EBAA5AC8, &qword_1B8C27250);
  v32 = v36;
  v31 = v37;
  if ((*(v36 + 48))(v13, 1, v37))
  {

    sub_1B8B3433C(v13, &qword_1EBAA5AC8, &qword_1B8C27250);
  }

  else
  {
    v33 = v34;
    (*(v32 + 16))(v34, v13, v31);
    sub_1B8B3433C(v13, &qword_1EBAA5AC8, &qword_1B8C27250);
    sub_1B8C23E68();

    (*(v32 + 8))(v33, v31);
  }
}

uint64_t sub_1B8B33098(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = sub_1B8C243A8();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2 & 1;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4 & 1;

  return MEMORY[0x1EEDDC860](v12, v14, v16 & 1, v18, a8, v19);
}

uint64_t sub_1B8B3317C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = sub_1B8C242A8();
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = a1;
  if ((a2 & 1) == 0)
  {
    sub_1B8C25488();
    v13 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v23 + 8))(v11, v8);
    v12 = v24;
  }

  swift_getKeyPath();
  v24 = v12;
  sub_1B8B342F4(&qword_1EBAA5AA8, type metadata accessor for OnboardingController);
  sub_1B8C23588();

  v14 = *(v12 + 18);

  if (v14)
  {

    v16 = a1;
    if ((a2 & 1) == 0)
    {
      sub_1B8C25488();
      v17 = sub_1B8C247B8();
      sub_1B8C23C08();

      sub_1B8C24298();
      swift_getAtKeyPath();

      (*(v23 + 8))(v11, v8);
      v16 = v24;
    }

    if (*(v16 + 17))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v22 - 2) = v16;
      *(&v22 - 8) = 0;
      v24 = v16;
      sub_1B8C23578();
    }

    else
    {
      *(v16 + 17) = 0;
    }

    if ((a2 & 1) == 0)
    {
      sub_1B8C25488();
      v20 = sub_1B8C247B8();
      sub_1B8C23C08();

      sub_1B8C24298();
      swift_getAtKeyPath();

      (*(v23 + 8))(v11, v8);
      a1 = v24;
    }

    if (*(a1 + 16))
    {
      v21 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v21);
      *(&v22 - 2) = a1;
      *(&v22 - 8) = 0;
      v24 = a1;
      sub_1B8C23578();
    }

    else
    {
      *(a1 + 16) = 0;
      sub_1B8B7EBA8();
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v15);
    *(&v22 - 4) = a1;
    *(&v22 - 24) = a2 & 1;
    *(&v22 - 2) = a3;
    *(&v22 - 8) = a4 & 1;
    sub_1B8C24F58();
    sub_1B8C23F08();
  }
}

uint64_t sub_1B8B33654(uint64_t a1, char a2)
{
  v4 = sub_1B8C242A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1B8C25488();
    v9 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    a1 = v13;
  }

  if (*(a1 + 18) == 1)
  {
    *(a1 + 18) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v12 - 2) = a1;
    *(&v12 - 8) = 1;
    v13 = a1;
    sub_1B8B342F4(&qword_1EBAA5AA8, type metadata accessor for OnboardingController);
    sub_1B8C23578();
  }
}

uint64_t sub_1B8B338AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B342F4(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  v4 = OBJC_IVAR____TtC8Feedback15BatchController__dismissHandler;
  swift_beginAccess();
  return sub_1B8B34450(v3 + v4, a2, &qword_1EBAA5AC8, &qword_1B8C27250);
}

uint64_t sub_1B8B33984(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5AC8, &qword_1B8C27250);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1B8B34450(a1, &v10 - v6, &qword_1EBAA5AC8, &qword_1B8C27250);
  v8 = *a2;
  return sub_1B8B4F4B0(v7);
}

uint64_t sub_1B8B33A30@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1B8C24DA8();
  v2 = *MEMORY[0x1E697C8C0];
  v3 = sub_1B8C24658();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1B8B33AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 4)
  {
    MEMORY[0x1B8CC9530](a5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA59C8, &unk_1B8C2A290);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA59D0, &qword_1B8C26FB0);
  sub_1B8C24038();
  sub_1B8B34CFC(&qword_1EBAA59D8, &qword_1EBAA59D0, &qword_1B8C26FB0);
  sub_1B8B342F4(&qword_1EBAA59E0, MEMORY[0x1E697C248]);
  swift_getOpaqueTypeConformance2();
  sub_1B8B33CCC();
  return sub_1B8C24A88();
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

unint64_t sub_1B8B33CCC()
{
  result = qword_1EBAA59E8;
  if (!qword_1EBAA59E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA59E8);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B8B33D5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B8B33DA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B8B33E20(uint64_t a1, id *a2)
{
  result = sub_1B8C25108();
  *a2 = 0;
  return result;
}

uint64_t sub_1B8B33E98(uint64_t a1, id *a2)
{
  v3 = sub_1B8C25118();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1B8B33F18@<X0>(uint64_t *a1@<X8>)
{
  sub_1B8C25128();
  v2 = sub_1B8C250F8();

  *a1 = v2;
  return result;
}

uint64_t sub_1B8B33F5C()
{
  v1 = *v0;
  v2 = sub_1B8C25128();
  v3 = MEMORY[0x1B8CC9F20](v2);

  return v3;
}

uint64_t sub_1B8B33F98()
{
  v1 = *v0;
  sub_1B8C25128();
  sub_1B8C251B8();
}

uint64_t sub_1B8B33FEC()
{
  v1 = *v0;
  sub_1B8C25128();
  sub_1B8C25AB8();
  sub_1B8C251B8();
  v2 = sub_1B8C25AF8();

  return v2;
}

uint64_t sub_1B8B34060(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1B8B34070(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1B8C25128();
  v6 = v5;
  if (v4 == sub_1B8C25128() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B8C25A08();
  }

  return v9 & 1;
}

uint64_t sub_1B8B340F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B8C250F8();

  *a2 = v5;
  return result;
}

uint64_t sub_1B8B34140(uint64_t a1)
{
  v2 = sub_1B8B342F4(&qword_1EBAA5CB8, type metadata accessor for Key);
  v3 = sub_1B8B342F4(&qword_1EBAA5CC0, type metadata accessor for Key);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

unint64_t sub_1B8B341FC()
{
  result = qword_1EBAA5A38;
  if (!qword_1EBAA5A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5A30, &unk_1B8C271D0);
    sub_1B8B34CFC(&qword_1EBAA5A40, &qword_1EBAA5A48, &qword_1B8C27B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5A38);
  }

  return result;
}

uint64_t sub_1B8B342F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8B3433C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1B8B34450(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
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

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1B8B345E0(uint64_t (*a1)(void))
{
  v2 = *(v1 + 32);
  v5 = *(v1 + 24);
  v4 = *(v1 + 40);
  return a1(*(v1 + 16));
}

uint64_t sub_1B8B34628()
{
  v1 = *(v0 + 32);
  v3 = *(v0 + 40);
  return sub_1B8B33654(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_1B8B34694(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_1B8B346F4(uint64_t a1, unint64_t *a2)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1B8B34754(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1B8B3479C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B8B347F8()
{
  result = qword_1EBAA5C40;
  if (!qword_1EBAA5C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5A10, &qword_1B8C27180);
    sub_1B8B34884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5C40);
  }

  return result;
}

unint64_t sub_1B8B34884()
{
  result = qword_1EBAA5C48;
  if (!qword_1EBAA5C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5A00, &qword_1B8C27170);
    sub_1B8B34CFC(&qword_1EBAA5C50, &qword_1EBAA5C58, qword_1B8C273B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5C48);
  }

  return result;
}

uint64_t sub_1B8B34C70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_1B8B34CA8()
{
  result = qword_1EBAA5CE8;
  if (!qword_1EBAA5CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5CE8);
  }

  return result;
}

uint64_t sub_1B8B34CFC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t AgreementConsentView.ConsentResult.hashValue.getter()
{
  v1 = *v0;
  sub_1B8C25AB8();
  MEMORY[0x1B8CCA790](v1);
  return sub_1B8C25AF8();
}

uint64_t sub_1B8B34E5C()
{
  v1 = *v0;
  sub_1B8C25AB8();
  MEMORY[0x1B8CCA790](v1);
  return sub_1B8C25AF8();
}

uint64_t sub_1B8B34EA4()
{
  v1 = *v0;
  sub_1B8C25AB8();
  MEMORY[0x1B8CCA790](v1);
  return sub_1B8C25AF8();
}

uint64_t sub_1B8B34EE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B8C242A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D70, &qword_1B8C27960);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v17 - v11);
  sub_1B8B34450(v2, &v17 - v11, &qword_1EBAA5D70, &qword_1B8C27960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1B8C23E78();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_1B8C25488();
    v16 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1B8B350E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B8C242A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D78, &qword_1B8C27998);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for AgreementConsentView();
  sub_1B8B34450(v1 + *(v12 + 20), v11, &qword_1EBAA5D78, &qword_1B8C27998);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1B8C23FE8();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1B8C25488();
    v16 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

id AgreementConsentView.pendingConsent.getter()
{
  v1 = *(v0 + *(type metadata accessor for AgreementConsentView() + 24) + 8);

  return v1;
}

uint64_t type metadata accessor for AgreementConsentView()
{
  result = qword_1EBAA5DC0;
  if (!qword_1EBAA5DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8B35374(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for AgreementConsentView() + 24) + 8);

  objc_storeStrong(v3, v2);
}

void AgreementConsentView.pendingConsent.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AgreementConsentView() + 24);

  *(v3 + 8) = a1;
}

uint64_t AgreementConsentView.$pendingConsent.getter()
{
  v1 = (v0 + *(type metadata accessor for AgreementConsentView() + 24));
  v2 = *v1;
  v3 = v1[1];
  v4 = sub_1B8B354E4();
  v5 = sub_1B8B387EC(&qword_1EBAA5D68, sub_1B8B354E4);

  return MEMORY[0x1EEDDECD0](v2, v3, v4, v5);
}

unint64_t sub_1B8B354E4()
{
  result = qword_1EBAA5D60;
  if (!qword_1EBAA5D60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBAA5D60);
  }

  return result;
}

uint64_t sub_1B8B35530@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AgreementConsentView() + 32));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1B8B385DC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_1B8B247D4(v4);
}

uint64_t sub_1B8B355C4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B8B385B4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for AgreementConsentView() + 32));
  v8 = *v7;
  v9 = v7[1];
  sub_1B8B247D4(v3);
  result = sub_1B8B30A44(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t AgreementConsentView.completion.getter()
{
  v1 = (v0 + *(type metadata accessor for AgreementConsentView() + 32));
  v2 = *v1;
  v3 = v1[1];
  sub_1B8B247D4(*v1);
  return v2;
}

uint64_t AgreementConsentView.completion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AgreementConsentView() + 32));
  v6 = v5[1];
  result = sub_1B8B30A44(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AgreementConsentView.init(consent:completion:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D70, &qword_1B8C27960);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for AgreementConsentView();
  v7 = v6[5];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D78, &qword_1B8C27998);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + v6[7];
  sub_1B8C24D58();
  *v8 = v13;
  *(v8 + 1) = v14;
  v9 = (a3 + v6[8]);
  v10 = (a3 + v6[6]);
  sub_1B8B354E4();
  sub_1B8B387EC(&qword_1EBAA5D68, sub_1B8B354E4);
  result = sub_1B8C23F88();
  *v10 = result;
  v10[1] = v12;
  *v9 = a1;
  v9[1] = a2;
  return result;
}

uint64_t AgreementConsentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D80, &qword_1B8C279A0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D88, &qword_1B8C279A8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - v11;
  *v8 = sub_1B8C24468();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D90, &qword_1B8C279B0);
  sub_1B8B35B68(v2, &v8[*(v13 + 44)]);
  KeyPath = swift_getKeyPath();
  v15 = &v8[*(v5 + 44)];
  *v15 = KeyPath;
  v15[8] = 1;
  LOBYTE(v5) = sub_1B8C24818();
  v16 = sub_1B8C24848();
  sub_1B8C24848();
  if (sub_1B8C24848() != v5)
  {
    v16 = sub_1B8C24848();
  }

  sub_1B8C23D18();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_1B8B3883C(v8, v12, &qword_1EBAA5D80, &qword_1B8C279A0);
  v25 = &v12[*(v9 + 36)];
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D98, &qword_1B8C279E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8C27920;
  v27 = sub_1B8C24838();
  *(inited + 32) = v27;
  v28 = sub_1B8C24858();
  *(inited + 33) = v28;
  v29 = sub_1B8C24848();
  sub_1B8C24848();
  if (sub_1B8C24848() != v27)
  {
    v29 = sub_1B8C24848();
  }

  sub_1B8C24848();
  if (sub_1B8C24848() != v28)
  {
    v29 = sub_1B8C24848();
  }

  sub_1B8C23D18();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_1B8B3883C(v12, a1, &qword_1EBAA5D88, &qword_1B8C279A8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5DA0, &qword_1B8C279F0);
  v39 = a1 + *(result + 36);
  *v39 = v29;
  *(v39 + 8) = v31;
  *(v39 + 16) = v33;
  *(v39 + 24) = v35;
  *(v39 + 32) = v37;
  *(v39 + 40) = 0;
  return result;
}

void sub_1B8B35B68(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v161 = a2;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E50, &qword_1B8C27C48);
  v3 = *(*(v160 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v160);
  v162 = &v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v168 = &v130 - v6;
  v154 = sub_1B8C246F8();
  v152 = *(v154 - 8);
  v7 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v154);
  v150 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for AgreementConsentView();
  v140 = *(v169 - 8);
  v9 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v169);
  v141 = v10;
  v165 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E58, &qword_1B8C27C50);
  v144 = *(v145 - 8);
  v11 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v145);
  v143 = &v130 - v12;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E60, &qword_1B8C27C58);
  v148 = *(v149 - 8);
  v13 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v147 = &v130 - v14;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E68, &qword_1B8C27C60);
  v15 = *(*(v146 - 8) + 64);
  MEMORY[0x1EEE9AC00](v146);
  v155 = &v130 - v16;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E70, &qword_1B8C27C68);
  v17 = *(*(v153 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v153);
  v159 = &v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v151 = &v130 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v166 = &v130 - v22;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E78, &qword_1B8C27C70);
  v138 = *(v139 - 8);
  v23 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v135 = &v130 - v24;
  v134 = sub_1B8C23498();
  v133 = *(v134 - 8);
  v25 = *(v133 + 64);
  v26 = MEMORY[0x1EEE9AC00](v134);
  v132 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v130 = &v130 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v131 = &v130 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E80, &qword_1B8C27C78);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v158 = &v130 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v171 = &v130 - v35;
  v137 = sub_1B8C245C8();
  v136 = *(v137 - 8);
  v36 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v38 = &v130 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E88, &qword_1B8C27C80);
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v130 - v42;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E90, &qword_1B8C27C88);
  v156 = *(v157 - 8);
  v44 = *(v156 + 64);
  v45 = MEMORY[0x1EEE9AC00](v157);
  v164 = &v130 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v170 = &v130 - v47;
  v48 = sub_1B8C23FE8();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v130 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B350E8(v52);
  v53 = sub_1B8C23FD8();
  v54 = (*(v49 + 8))(v52, v48);
  v55 = 0;
  v56 = 0;
  if ((v53 & 1) == 0)
  {
    v57 = *&a1[*(v169 + 24) + 8];
    sub_1B8B354E4();
    sub_1B8B387EC(&qword_1EBAA5D68, sub_1B8B354E4);
    v58 = v57;
    v55 = sub_1B8C23F88();
    v56 = v59;
    v54 = v59;
  }

  v142 = v55;
  v163 = v56;
  MEMORY[0x1EEE9AC00](v54);
  v167 = a1;
  *(&v130 - 2) = a1;
  sub_1B8C247E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E98, &qword_1B8C27C90);
  sub_1B8B34CFC(&qword_1EBAA5EA0, &qword_1EBAA5E98, &qword_1B8C27C90);
  sub_1B8C23D58();
  sub_1B8C245B8();
  v60 = sub_1B8C247E8();
  sub_1B8C247D8();
  sub_1B8C247D8();
  if (sub_1B8C247D8() != v60)
  {
    sub_1B8C247D8();
  }

  sub_1B8B34CFC(&qword_1EBAA5EA8, &qword_1EBAA5E88, &qword_1B8C27C80);
  sub_1B8C24B78();
  (*(v136 + 8))(v38, v137);
  (*(v40 + 8))(v43, v39);
  v61 = v167;
  v62 = [*(v167 + *(v169 + 24) + 8) learnMoreURL];
  if (v62)
  {
    v63 = v130;
    v64 = v62;
    sub_1B8C23448();

    v65 = v133;
    v66 = v131;
    v67 = v134;
    (*(v133 + 32))(v131, v63, v134);
    sub_1B8C243A8();
    (*(v65 + 16))(v132, v66, v67);
    v68 = v135;
    sub_1B8C24958();
    (*(v65 + 8))(v66, v67);
    v69 = v138;
    v70 = v171;
    v71 = v139;
    (*(v138 + 32))(v171, v68, v139);
    v72 = 0;
  }

  else
  {
    v72 = 1;
    v70 = v171;
    v71 = v139;
    v69 = v138;
  }

  (*(v69 + 56))(v70, v72, 1, v71);
  v73 = v165;
  sub_1B8B3860C(v61, v165);
  v74 = (*(v140 + 80) + 16) & ~*(v140 + 80);
  v141 += v74;
  v75 = swift_allocObject();
  v76 = sub_1B8B38670(v73, v75 + v74);
  MEMORY[0x1EEE9AC00](v76);
  *(&v130 - 2) = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5EB0, &qword_1B8C27C98);
  v77 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5EB8, &qword_1B8C27CA0);
  v78 = sub_1B8B386E4(&qword_1EBAA5EC0, &qword_1EBAA5EB8, &qword_1B8C27CA0, sub_1B8B38768);
  v175 = v77;
  v176 = v78;
  swift_getOpaqueTypeConformance2();
  v79 = v143;
  sub_1B8C24DB8();
  v80 = v150;
  sub_1B8C246E8();
  sub_1B8B34CFC(&qword_1EBAA5ED0, &qword_1EBAA5E58, &qword_1B8C27C50);
  sub_1B8B387EC(&qword_1EBAA5ED8, MEMORY[0x1E697CB70]);
  v81 = v147;
  v82 = v145;
  v83 = v154;
  sub_1B8C24A68();
  (*(v152 + 8))(v80, v83);
  (*(v144 + 8))(v79, v82);
  LOBYTE(v82) = sub_1B8C24828();
  v84 = sub_1B8C24848();
  sub_1B8C24848();
  if (sub_1B8C24848() != v82)
  {
    v84 = sub_1B8C24848();
  }

  sub_1B8C23D18();
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v93 = v155;
  (*(v148 + 32))(v155, v81, v149);
  v94 = &v93[*(v146 + 36)];
  *v94 = v84;
  *(v94 + 1) = v86;
  *(v94 + 2) = v88;
  *(v94 + 3) = v90;
  *(v94 + 4) = v92;
  v94[40] = 0;
  v95 = v167;
  v96 = v167 + *(v169 + 28);
  v98 = *(v96 + 8);
  LOBYTE(v175) = *v96;
  v97 = v175;
  v176 = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5EE0, &qword_1B8C27CA8);
  sub_1B8C24D68();
  v99 = v174;
  KeyPath = swift_getKeyPath();
  v101 = swift_allocObject();
  *(v101 + 16) = v99;
  v102 = v93;
  v103 = v151;
  sub_1B8B3883C(v102, v151, &qword_1EBAA5E68, &qword_1B8C27C60);
  v104 = (v103 + *(v153 + 36));
  *v104 = KeyPath;
  v104[1] = sub_1B8B38834;
  v104[2] = v101;
  v105 = v166;
  sub_1B8B3883C(v103, v166, &qword_1EBAA5E70, &qword_1B8C27C68);
  v106 = v165;
  sub_1B8B3860C(v95, v165);
  v107 = swift_allocObject();
  v108 = sub_1B8B38670(v106, v107 + v74);
  MEMORY[0x1EEE9AC00](v108);
  *(&v130 - 2) = v95;
  v109 = v168;
  sub_1B8C24DB8();
  LOBYTE(v175) = v97;
  v176 = v98;
  sub_1B8C24D68();
  LOBYTE(v106) = v174;
  v110 = swift_getKeyPath();
  v111 = swift_allocObject();
  *(v111 + 16) = v106;
  v112 = &v109[*(v160 + 36)];
  v113 = v109;
  *v112 = v110;
  v112[1] = sub_1B8B38AE0;
  v112[2] = v111;
  sub_1B8C24F48();
  sub_1B8C23E38();
  v169 = v175;
  v167 = v177;
  v165 = v179;
  v160 = v180;
  v174 = 1;
  v173 = v176;
  v172 = v178;
  v114 = v156;
  v115 = *(v156 + 16);
  v116 = v164;
  v117 = v157;
  v115(v164, v170, v157);
  v118 = v158;
  sub_1B8B34450(v171, v158, &qword_1EBAA5E80, &qword_1B8C27C78);
  v119 = v159;
  sub_1B8B24BF0(v105, v159);
  v120 = v162;
  sub_1B8B34450(v113, v162, &qword_1EBAA5E50, &qword_1B8C27C48);
  LODWORD(v153) = v174;
  LODWORD(v154) = v173;
  LODWORD(v155) = v172;
  v121 = v161;
  v122 = v163;
  *v161 = v142;
  v121[1] = v122;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5EE8, &qword_1B8C27CE0);
  v115(v121 + v123[12], v116, v117);
  v124 = v121 + v123[16];
  *v124 = 0;
  v124[8] = 1;
  sub_1B8B34450(v118, v121 + v123[20], &qword_1EBAA5E80, &qword_1B8C27C78);
  v125 = v121 + v123[24];
  *v125 = 0x402E000000000000;
  v125[8] = 0;
  sub_1B8B24BF0(v119, v121 + v123[28]);
  sub_1B8B34450(v120, v121 + v123[32], &qword_1EBAA5E50, &qword_1B8C27C48);
  v126 = v121 + v123[36];
  *v126 = 0;
  v126[8] = v153;
  v127 = v168;
  *(v126 + 2) = v169;
  v126[24] = v154;
  *(v126 + 4) = v167;
  v126[40] = v155;
  v128 = v160;
  *(v126 + 6) = v165;
  *(v126 + 7) = v128;
  sub_1B8B3433C(v127, &qword_1EBAA5E50, &qword_1B8C27C48);
  sub_1B8B24C60(v166);
  sub_1B8B3433C(v171, &qword_1EBAA5E80, &qword_1B8C27C78);
  v129 = *(v114 + 8);
  v129(v170, v117);
  sub_1B8B3433C(v120, &qword_1EBAA5E50, &qword_1B8C27C48);
  sub_1B8B24C60(v119);
  sub_1B8B3433C(v118, &qword_1EBAA5E80, &qword_1B8C27C78);
  v129(v164, v117);
}

void sub_1B8B36EF4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B8C23FE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B350E8(v8);
  v9 = sub_1B8C23FD8();
  (*(v5 + 8))(v8, v4);
  v10 = 0;
  v11 = 0;
  if (v9)
  {
    v12 = *(a1 + *(type metadata accessor for AgreementConsentView() + 24) + 8);
    sub_1B8B354E4();
    sub_1B8B387EC(&qword_1EBAA5D68, sub_1B8B354E4);
    v13 = v12;
    v10 = sub_1B8C23F88();
    v11 = v14;
    v15 = v14;
  }

  v44 = v10;
  v16 = [*(a1 + *(type metadata accessor for AgreementConsentView() + 24) + 8) bodyText];
  sub_1B8C25128();

  sub_1B8C243A8();
  v17 = sub_1B8C249C8();
  v42 = v18;
  v43 = v19;
  v21 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D98, &qword_1B8C279E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8C27920;
  v23 = sub_1B8C24838();
  *(inited + 32) = v23;
  v24 = sub_1B8C24858();
  *(inited + 33) = v24;
  v25 = sub_1B8C24848();
  sub_1B8C24848();
  if (sub_1B8C24848() != v23)
  {
    v25 = sub_1B8C24848();
  }

  sub_1B8C24848();
  v26 = v11;
  if (sub_1B8C24848() != v24)
  {
    v25 = sub_1B8C24848();
  }

  sub_1B8C23D18();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v21 & 1;
  v68 = v21 & 1;
  v65 = 0;
  v36 = v42;
  *&v46 = v17;
  *(&v46 + 1) = v42;
  LOBYTE(v47) = v21 & 1;
  *(&v47 + 1) = *v67;
  DWORD1(v47) = *&v67[3];
  v37 = v17;
  v38 = v43;
  *(&v47 + 1) = v43;
  LOBYTE(v48) = v25;
  DWORD1(v48) = *&v66[3];
  *(&v48 + 1) = *v66;
  *(&v48 + 1) = v27;
  *&v49[0] = v29;
  *(&v49[0] + 1) = v31;
  *&v49[1] = v33;
  BYTE8(v49[1]) = 0;
  *(v53 + 9) = *(v49 + 9);
  v53[0] = v49[0];
  v51 = v47;
  v52 = v48;
  v50 = v46;
  v39 = v26;
  sub_1B8B34450(&v46, v54, &qword_1EBAA5E40, &qword_1B8C27C38);

  v45 = 0;
  *a2 = v44;
  *(a2 + 8) = v26;
  v40 = v53[0];
  *(a2 + 48) = v52;
  *(a2 + 64) = v40;
  *(a2 + 73) = *(v53 + 9);
  v41 = v51;
  *(a2 + 16) = v50;
  *(a2 + 32) = v41;
  *(a2 + 96) = 0x4034000000000000;
  *(a2 + 104) = 0;
  v54[0] = v37;
  v54[1] = v36;
  v55 = v35;
  *&v56[3] = *&v67[3];
  *v56 = *v67;
  v57 = v38;
  v58 = v25;
  *&v59[3] = *&v66[3];
  *v59 = *v66;
  v60 = v28;
  v61 = v30;
  v62 = v32;
  v63 = v34;
  v64 = 0;
  sub_1B8B3433C(v54, &qword_1EBAA5E40, &qword_1B8C27C38);
}

uint64_t sub_1B8B372E8(uint64_t a1)
{
  v1 = [*(a1 + *(type metadata accessor for AgreementConsentView() + 24) + 8) agreeButtonText];
  v2 = sub_1B8C25128();
  v4 = v3;

  *&v41[0] = v2;
  *(&v41[0] + 1) = v4;
  sub_1B8B34CA8();
  v5 = sub_1B8C249E8();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D98, &qword_1B8C279E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8C27920;
  v13 = sub_1B8C24838();
  *(inited + 32) = v13;
  v14 = sub_1B8C24858();
  *(inited + 33) = v14;
  v15 = sub_1B8C24848();
  sub_1B8C24848();
  if (sub_1B8C24848() != v13)
  {
    v15 = sub_1B8C24848();
  }

  sub_1B8C24848();
  if (sub_1B8C24848() != v14)
  {
    v15 = sub_1B8C24848();
  }

  sub_1B8C23D18();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v9 & 1;
  v44 = v9 & 1;
  v43 = 0;
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1B8C27920;
  v26 = sub_1B8C24818();
  *(v25 + 32) = v26;
  v27 = sub_1B8C24828();
  *(v25 + 33) = v27;
  v28 = sub_1B8C24848();
  sub_1B8C24848();
  if (sub_1B8C24848() != v26)
  {
    v28 = sub_1B8C24848();
  }

  sub_1B8C24848();
  if (sub_1B8C24848() != v27)
  {
    v28 = sub_1B8C24848();
  }

  sub_1B8C23D18();
  v45 = 0;
  *&v34 = v5;
  *(&v34 + 1) = v7;
  LOBYTE(v35) = v24;
  *(&v35 + 1) = v11;
  LOBYTE(v36) = v15;
  *(&v36 + 1) = v17;
  *&v37 = v19;
  *(&v37 + 1) = v21;
  *&v38 = v23;
  BYTE8(v38) = 0;
  LOBYTE(v39) = v28;
  *(&v39 + 1) = v29;
  *v40 = v30;
  *&v40[8] = v31;
  *&v40[16] = v32;
  v40[24] = 0;
  sub_1B8C248F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5EB8, &qword_1B8C27CA0);
  sub_1B8B386E4(&qword_1EBAA5EC0, &qword_1EBAA5EB8, &qword_1B8C27CA0, sub_1B8B38768);
  sub_1B8C24A48();
  v41[4] = v38;
  v41[5] = v39;
  v42[0] = *v40;
  *(v42 + 9) = *&v40[9];
  v41[0] = v34;
  v41[1] = v35;
  v41[2] = v36;
  v41[3] = v37;
  return sub_1B8B3433C(v41, &qword_1EBAA5EB8, &qword_1B8C27CA0);
}

uint64_t sub_1B8B375EC(uint64_t a1, char a2)
{
  v4 = sub_1B8C23E78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for AgreementConsentView();
  v10 = (a1 + *(v9 + 28));
  v11 = *v10;
  v12 = *(v10 + 1);
  v18[0] = v11;
  v19 = v12;
  v17[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5EE0, &qword_1B8C27CA8);
  sub_1B8C24D78();
  v13 = a1 + *(v9 + 32);
  v14 = *v13;
  if (*v13)
  {
    v15 = *(v13 + 8);
    v18[0] = a2;
    v14(v18);
  }

  sub_1B8B34EE8(v8);
  sub_1B8C23E68();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1B8B37748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*(a1 + *(type metadata accessor for AgreementConsentView() + 24) + 8) declineButtonText];
  sub_1B8C25128();

  sub_1B8B34CA8();
  v4 = sub_1B8C249E8();
  v6 = v5;
  v8 = v7;
  sub_1B8C248F8();
  v9 = sub_1B8C24978();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_1B8B34060(v4, v6, v8 & 1);

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  return result;
}

uint64_t sub_1B8B37858@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5CD0, &qword_1B8C278C8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v48 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E28, &qword_1B8C27BC0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v49 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v48 - v12);
  v14 = [a1 symbolImageName];
  sub_1B8C25128();

  v15 = sub_1B8C24D08();
  v16 = sub_1B8C248C8();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = sub_1B8C24908();
  sub_1B8B3433C(v6, &qword_1EBAA5CD0, &qword_1B8C278C8);
  KeyPath = swift_getKeyPath();
  v19 = sub_1B8C24C68();
  v20 = (v13 + *(v8 + 44));
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E30, &qword_1B8C27BF8) + 28);
  sub_1B8C24488();
  v22 = sub_1B8C24498();
  (*(*(v22 - 8) + 56))(v20 + v21, 0, 1, v22);
  *v20 = swift_getKeyPath();
  *v13 = v15;
  v13[1] = KeyPath;
  v13[2] = v17;
  v13[3] = v19;
  v23 = [a1 title];
  v24 = sub_1B8C25128();
  v26 = v25;

  v55 = v24;
  v56 = v26;
  sub_1B8B34CA8();
  v27 = sub_1B8C249E8();
  v29 = v28;
  LOBYTE(v26) = v30;
  sub_1B8C248B8();
  v31 = sub_1B8C249B8();
  v33 = v32;
  LOBYTE(v20) = v34;

  sub_1B8B34060(v27, v29, v26 & 1);

  sub_1B8C248D8();
  v35 = sub_1B8C24978();
  v37 = v36;
  LOBYTE(v26) = v38;
  v40 = v39;
  sub_1B8B34060(v31, v33, v20 & 1);

  LOBYTE(v27) = sub_1B8C24808();
  LOBYTE(v55) = v26 & 1;
  LOBYTE(v52) = 1;
  v41 = v49;
  sub_1B8B34450(v13, v49, &qword_1EBAA5E28, &qword_1B8C27BC0);
  v42 = v41;
  v43 = v48;
  sub_1B8B34450(v42, v48, &qword_1EBAA5E28, &qword_1B8C27BC0);
  v44 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E38, &qword_1B8C27C30) + 48));
  *&v52 = v35;
  *(&v52 + 1) = v37;
  LOBYTE(v53) = v26 & 1;
  *(&v53 + 1) = *v51;
  DWORD1(v53) = *&v51[3];
  *(&v53 + 1) = v40;
  v54[0] = v27;
  *&v54[1] = *v50;
  *&v54[4] = *&v50[3];
  memset(&v54[8], 0, 32);
  v54[40] = 1;
  v45 = v53;
  *v44 = v52;
  v44[1] = v45;
  v46 = *&v54[16];
  v44[2] = *v54;
  v44[3] = v46;
  *(v44 + 57) = *&v54[25];
  sub_1B8B34450(&v52, &v55, &qword_1EBAA5E40, &qword_1B8C27C38);
  sub_1B8B3433C(v13, &qword_1EBAA5E28, &qword_1B8C27BC0);
  v55 = v35;
  v56 = v37;
  v57 = v26 & 1;
  *v58 = *v51;
  *&v58[3] = *&v51[3];
  v59 = v40;
  v60 = v27;
  *v61 = *v50;
  *&v61[3] = *&v50[3];
  v62 = 0u;
  v63 = 0u;
  v64 = 1;
  sub_1B8B3433C(&v55, &qword_1EBAA5E40, &qword_1B8C27C38);
  return sub_1B8B3433C(v49, &qword_1EBAA5E28, &qword_1B8C27BC0);
}

uint64_t sub_1B8B37D84(uint64_t a1)
{
  v2 = sub_1B8C23FE8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1B8C24128();
}

uint64_t sub_1B8B37E4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B8C241C8();
  *a1 = result;
  return result;
}

unint64_t sub_1B8B37EA4()
{
  result = qword_1EBAA5DA8;
  if (!qword_1EBAA5DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5DA8);
  }

  return result;
}

void sub_1B8B37F3C()
{
  sub_1B8B38040(319, &qword_1EBAA5DD0, MEMORY[0x1E697BF90]);
  if (v0 <= 0x3F)
  {
    sub_1B8B38040(319, &qword_1EBAA5DD8, MEMORY[0x1E697E730]);
    if (v1 <= 0x3F)
    {
      sub_1B8B38094();
      if (v2 <= 0x3F)
      {
        sub_1B8B38128();
        if (v3 <= 0x3F)
        {
          sub_1B8B38178();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B8B38040(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B8C23D98();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B8B38094()
{
  if (!qword_1EBAA5DE0)
  {
    sub_1B8B354E4();
    sub_1B8B387EC(&qword_1EBAA5D68, sub_1B8B354E4);
    v0 = sub_1B8C23FA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBAA5DE0);
    }
  }
}

void sub_1B8B38128()
{
  if (!qword_1EBAA5DE8)
  {
    v0 = sub_1B8C24D98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBAA5DE8);
    }
  }
}

void sub_1B8B38178()
{
  if (!qword_1EBAA5DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5DF8, &qword_1B8C31BF0);
    v0 = sub_1B8C25608();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBAA5DF0);
    }
  }
}

uint64_t getEnumTagSinglePayload for AgreementConsentView.ConsentResult(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AgreementConsentView.ConsentResult(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B8B3836C()
{
  result = qword_1EBAA5E10;
  if (!qword_1EBAA5E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5D80, &qword_1B8C279A0);
    sub_1B8B34CFC(&qword_1EBAA5E18, &qword_1EBAA5E20, &qword_1B8C27B18);
    sub_1B8B34CFC(&qword_1EBAA5A40, &qword_1EBAA5A48, &qword_1B8C27B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5E10);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B8B3845C(uint64_t a1, int a2)
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

uint64_t sub_1B8B384A4(uint64_t result, int a2, int a3)
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

uint64_t sub_1B8B3850C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5E48, &qword_1B8C27C40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B8B34450(a1, &v6 - v4, &qword_1EBAA5E48, &qword_1B8C27C40);
  return sub_1B8C241B8();
}

uint64_t sub_1B8B385B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B8B385DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B8B3860C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AgreementConsentView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B38670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AgreementConsentView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B386E4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1B8B38768()
{
  result = qword_1EBAA5EC8;
  if (!qword_1EBAA5EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5E40, &qword_1B8C27C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5EC8);
  }

  return result;
}

uint64_t sub_1B8B387EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8B3883C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_35Tm()
{
  v1 = type metadata accessor for AgreementConsentView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D70, &qword_1B8C27960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1B8C23E78();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D78, &qword_1B8C27998);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1B8C23FE8();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = *&v5[v1[7] + 8];

  v12 = &v5[v1[8]];
  if (*v12)
  {
    v13 = *(v12 + 1);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B38B10@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = sub_1B8C23348();
  v6 = v5;

  sub_1B8C257E8();
  MEMORY[0x1B8CC9EB0](0xD000000000000030, 0x80000001B8C32710);
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8)
  {
    if (v8 == 1)
    {
      v9 = 0xE400000000000000;
      v10 = 1684099177;
    }

    else
    {
      v9 = 0xE600000000000000;
      v10 = 0x656369766564;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
    v10 = 0x656E6F685069;
  }

  MEMORY[0x1B8CC9EB0](v10, v9);

  MEMORY[0x1B8CC9EB0](0xD00000000000002BLL, 0x80000001B8C32750);
  v11 = [v2 mainBundle];
  v12 = sub_1B8C23348();
  v14 = v13;

  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v15 = sub_1B8C23C38();
  __swift_project_value_buffer(v15, qword_1EBAB3A30);
  v16 = sub_1B8C23C18();
  v17 = sub_1B8C25498();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1B8B22000, v16, v17, "Hiding Load More Button", v18, 2u);
    MEMORY[0x1B8CCB0E0](v18, -1, -1);
  }

  type metadata accessor for DonationController();
  sub_1B8B38E60();
  v19 = sub_1B8C23DA8();
  v21 = v20;
  result = sub_1B8C24D58();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v12;
  *(a1 + 24) = v14;
  *(a1 + 32) = 2;
  *(a1 + 40) = 0xD000000000000011;
  *(a1 + 48) = 0x80000001B8C327D0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = v19;
  *(a1 + 88) = v21 & 1;
  return result;
}

unint64_t sub_1B8B38E60()
{
  result = qword_1EBAA5F00;
  if (!qword_1EBAA5F00)
  {
    type metadata accessor for DonationController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5F00);
  }

  return result;
}

unint64_t sub_1B8B38EB8()
{
  result = qword_1EBAA5F08;
  if (!qword_1EBAA5F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5F08);
  }

  return result;
}

uint64_t ScoreIndicator.init(controller:size:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = xmmword_1B8C27D60;
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

uint64_t ScoreIndicator.init(size:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = xmmword_1B8C27D60;
  v4 = type metadata accessor for ScoreController();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  sub_1B8C235B8();
  if (qword_1EBAA5930 != -1)
  {
    swift_once();
  }

  v8 = qword_1EBAB39E0;
  swift_getKeyPath();
  sub_1B8B3A480(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController);
  sub_1B8C23588();

  *(v7 + 24) = *(v8 + 24);
  *a1 = v7;
  *(a1 + 8) = a2;
  return result;
}

uint64_t ScoreIndicator.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = xmmword_1B8C27D60;
  v2 = type metadata accessor for ScoreController();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  sub_1B8C235B8();
  if (qword_1EBAA5930 != -1)
  {
    swift_once();
  }

  v6 = qword_1EBAB39E0;
  swift_getKeyPath();
  sub_1B8B3A480(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController);
  sub_1B8C23588();

  *(v5 + 24) = *(v6 + 24);
  *a1 = v5;
  *(a1 + 8) = 0x4050000000000000;
  return result;
}

uint64_t ScoreIndicator.init(controller:size:muteColors:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *(a3 + 24) = xmmword_1B8C27D60;
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a2;
  return result;
}

void sub_1B8B391A0()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1B8B3A480(&qword_1EBAA5F60, type metadata accessor for ScoreController);
  sub_1B8C23588();

  v2 = floor(sqrt(*(v1 + 24) * 0.5));
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v2 > 0)
  {
    sub_1B8C259E8();
  }
}

uint64_t ScoreIndicator.body.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = sub_1B8C24398();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v22 = sub_1B8C246B8();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5F18, &qword_1B8C27DB8);
  v9 = *(v8 - 8);
  v23 = v8;
  v24 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  v13 = *(v1 + 16);
  v27[0] = *v1;
  v27[1] = v13;
  v28 = *(v1 + 32);
  v14 = sub_1B8C24F48();
  v16 = v15;
  sub_1B8B39680(v27, v31);
  memcpy(v29, v31, 0x171uLL);
  memcpy(v30, v31, 0x171uLL);
  sub_1B8B34450(v29, v26, &qword_1EBAA5F20, &qword_1B8C27DC0);
  sub_1B8B3433C(v30, &qword_1EBAA5F20, &qword_1B8C27DC0);
  memcpy(&v26[2], v29, 0x171uLL);
  v26[0] = v14;
  v26[1] = v16;
  v26[49] = 0;
  *&v26[50] = *(v27 + 1) * 0.1;
  sub_1B8C246A8();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5F28, &qword_1B8C27DC8);
  v18 = sub_1B8B3A200();
  sub_1B8C24B68();
  (*(v4 + 8))(v7, v22);
  memcpy(v31, v26, 0x198uLL);
  sub_1B8B3433C(v31, &qword_1EBAA5F28, &qword_1B8C27DC8);
  sub_1B8C24388();
  sub_1B8C24378();
  sub_1B8B391A0();
  sub_1B8C24368();

  sub_1B8C24378();
  sub_1B8C243B8();
  v26[0] = v17;
  v26[1] = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v23;
  sub_1B8C24B28();

  return (*(v24 + 8))(v12, v19);
}

void *sub_1B8B39680@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5CD0, &qword_1B8C278C8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v62 - v6;
  v8 = *a1;
  swift_getKeyPath();
  *&v121[0] = v8;
  sub_1B8B3A480(&qword_1EBAA5F60, type metadata accessor for ScoreController);
  sub_1B8C23588();

  if (*(v8 + 17) == 1)
  {
    v9 = sub_1B8C24D08();
    sub_1B8C24C68();
    *(a1 + 16);
    v10 = sub_1B8C24CD8();

    v96[0] = v9;
    v96[1] = 0;
    LOWORD(v96[2]) = 1;
    v96[3] = v10;
    sub_1B8B3A610(v96);
    memcpy(v64, v96, 0x171uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5F70, &qword_1B8C27EC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5F78, &qword_1B8C27ED0);
    sub_1B8B3A4D4();
    sub_1B8B34CFC(&qword_1EBAA5FA0, &qword_1EBAA5F78, &qword_1B8C27ED0);
    sub_1B8C24598();
  }

  else
  {
    v62 = v7;
    v63 = a2;
    sub_1B8C24F78();
    v12 = v11;
    v14 = v13;
    sub_1B8C24C68();
    *(a1 + 16);
    v15 = *(a1 + 3);
    v16 = *(a1 + 4) * 0.0174532925;
    v17 = sub_1B8C24CD8();

    v18 = *(a1 + 1) / 6.0;
    sub_1B8C23DB8();
    v19 = sub_1B8C24F48();
    v21 = v20;
    sub_1B8C24F48();
    sub_1B8C23E38();
    *&v109 = 0;
    *(&v109 + 1) = v15;
    *&v110 = v16;
    *(&v110 + 1) = v12;
    *&v111[0] = v14;
    *(v111 + 8) = v118;
    *(&v111[1] + 8) = v119;
    *(&v111[2] + 1) = v120;
    *&v112 = v17;
    WORD4(v112) = 256;
    *&v113 = v19;
    *(&v113 + 1) = v21;
    v117 = 0x3FD0000000000000;
    sub_1B8B51580();
    v23 = fmin(v22, 1.0);
    if (v22 > 0.025)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0.025;
    }

    sub_1B8C24F78();
    v26 = v25;
    v28 = v27;
    sub_1B8C24C68();
    v29 = sub_1B8C24CD8();

    sub_1B8C23DB8();
    v30 = sub_1B8C24F48();
    v32 = v31;
    sub_1B8C24F48();
    sub_1B8C23E38();
    *&v97 = 0;
    *(&v97 + 1) = v15 * v24;
    *&v98 = v16;
    *(&v98 + 1) = v26;
    *&v99[0] = v28;
    *(v99 + 8) = v106;
    *(&v99[1] + 8) = v107;
    *(&v99[2] + 1) = v108;
    *&v100 = v29;
    WORD4(v100) = 256;
    *&v101 = v30;
    *(&v101 + 1) = v32;
    v105 = 0x3FF0000000000000;
    v33 = *(a1 + 1);
    v121[0] = *a1;
    v121[1] = v33;
    *&v121[2] = a1[4];
    sub_1B8B391A0();
    v96[0] = v34;
    v96[1] = v35;
    sub_1B8B34CA8();
    v36 = sub_1B8C249E8();
    v38 = v37;
    LOBYTE(v32) = v39;
    sub_1B8C248D8();
    v40 = sub_1B8C24978();
    v42 = v41;
    v44 = v43;
    sub_1B8B34060(v36, v38, v32 & 1);

    sub_1B8C24C68();
    v45 = sub_1B8C24CD8();

    *&v121[0] = v45;
    v46 = sub_1B8C24998();
    v48 = v47;
    v50 = v49;
    sub_1B8B34060(v40, v42, v44 & 1);

    v51 = *MEMORY[0x1E6980E08];
    v52 = sub_1B8C248C8();
    v53 = *(v52 - 8);
    v54 = v62;
    (*(v53 + 104))(v62, v51, v52);
    (*(v53 + 56))(v54, 0, 1, v52);
    sub_1B8C24908();
    sub_1B8B3433C(v54, &qword_1EBAA5CD0, &qword_1B8C278C8);
    v55 = sub_1B8C249B8();
    v57 = v56;
    LOBYTE(v52) = v58;
    v60 = v59;

    sub_1B8B34060(v46, v48, v50 & 1);

    v85 = v115;
    v86 = v116;
    v81 = v111[2];
    v82 = v112;
    v83 = v113;
    v84 = v114;
    v77 = v109;
    v78 = v110;
    v79 = v111[0];
    v80 = v111[1];
    v74 = v103;
    v75 = v104;
    v70 = v99[2];
    v71 = v100;
    v72 = v101;
    v73 = v102;
    v66 = v97;
    v67 = v98;
    v68 = v99[0];
    v69 = v99[1];
    v88[8] = v115;
    v88[9] = v116;
    v88[4] = v111[2];
    v88[5] = v112;
    v88[7] = v114;
    v88[6] = v113;
    v88[0] = v109;
    v88[1] = v110;
    v88[3] = v111[1];
    v88[2] = v111[0];
    v65[8] = v115;
    v65[9] = v116;
    v65[4] = v111[2];
    v65[5] = v112;
    v65[6] = v113;
    v65[7] = v114;
    v65[0] = v109;
    v65[1] = v110;
    v65[2] = v111[0];
    v65[3] = v111[1];
    v90[8] = v103;
    v90[9] = v104;
    v90[4] = v99[2];
    v90[5] = v100;
    v90[7] = v102;
    v90[6] = v101;
    v90[0] = v97;
    v90[1] = v98;
    v90[3] = v99[1];
    v90[2] = v99[0];
    *(&v65[18] + 8) = v103;
    *(&v65[19] + 8) = v104;
    *(&v65[16] + 8) = v101;
    *(&v65[17] + 8) = v102;
    *(&v65[13] + 8) = v99[1];
    *(&v65[14] + 8) = v99[2];
    *(&v65[15] + 8) = v100;
    *(&v65[10] + 8) = v97;
    *(&v65[11] + 8) = v98;
    v87 = v117;
    v76 = v105;
    v89 = v117;
    v91 = v105;
    *&v65[10] = v117;
    *(&v65[20] + 1) = v105;
    *(&v65[12] + 8) = v99[0];
    LOBYTE(v46) = v52 & 1;
    v64[376] = v52 & 1;
    sub_1B8B34450(&v109, v121, &qword_1EBAA5F68, &qword_1B8C27EC0);
    sub_1B8B34450(&v97, v121, &qword_1EBAA5F68, &qword_1B8C27EC0);
    sub_1B8B34694(v55, v57, v52 & 1);

    sub_1B8B34450(v88, v121, &qword_1EBAA5F68, &qword_1B8C27EC0);
    sub_1B8B34450(v90, v121, &qword_1EBAA5F68, &qword_1B8C27EC0);
    sub_1B8B34694(v55, v57, v52 & 1);

    sub_1B8B34060(v55, v57, v52 & 1);

    v92[8] = v74;
    v92[9] = v75;
    v93 = v76;
    v92[4] = v70;
    v92[5] = v71;
    v92[7] = v73;
    v92[6] = v72;
    v92[0] = v66;
    v92[1] = v67;
    v92[3] = v69;
    v92[2] = v68;
    sub_1B8B3433C(v92, &qword_1EBAA5F68, &qword_1B8C27EC0);
    v94[8] = v85;
    v94[9] = v86;
    v95 = v87;
    v94[4] = v81;
    v94[5] = v82;
    v94[7] = v84;
    v94[6] = v83;
    v94[0] = v77;
    v94[1] = v78;
    v94[3] = v80;
    v94[2] = v79;
    sub_1B8B3433C(v94, &qword_1EBAA5F68, &qword_1B8C27EC0);
    memcpy(v96, v65, 0x150uLL);
    v96[42] = v55;
    v96[43] = v57;
    LOBYTE(v96[44]) = v52 & 1;
    v96[45] = v60;
    sub_1B8B3A4C8(v96);
    memcpy(v121, v96, 0x171uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5F70, &qword_1B8C27EC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5F78, &qword_1B8C27ED0);
    sub_1B8B3A4D4();
    sub_1B8B34CFC(&qword_1EBAA5FA0, &qword_1EBAA5F78, &qword_1B8C27ED0);
    a2 = v63;
    sub_1B8C24598();
    sub_1B8B34060(v55, v57, v46);

    sub_1B8B3433C(&v97, &qword_1EBAA5F68, &qword_1B8C27EC0);
    sub_1B8B3433C(&v109, &qword_1EBAA5F68, &qword_1B8C27EC0);
    memcpy(v121, v64, 0x171uLL);
  }

  return memcpy(a2, v121, 0x171uLL);
}

uint64_t sub_1B8B3A130@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B3A480(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController);
  sub_1B8C23588();

  *a2 = *(v3 + 24);
  return result;
}

unint64_t sub_1B8B3A200()
{
  result = qword_1EBAA5F30;
  if (!qword_1EBAA5F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5F28, &qword_1B8C27DC8);
    sub_1B8B34CFC(&qword_1EBAA5F38, &qword_1EBAA5F40, &qword_1B8C27DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5F30);
  }

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

uint64_t sub_1B8B3A2E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B8B3A330(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B8B3A388()
{
  result = qword_1EBAA5F48;
  if (!qword_1EBAA5F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5F50, &qword_1B8C27E68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5F28, &qword_1B8C27DC8);
    sub_1B8B3A200();
    swift_getOpaqueTypeConformance2();
    sub_1B8B3A480(&qword_1EBAA5F58, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5F48);
  }

  return result;
}

uint64_t sub_1B8B3A480(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B8B3A4D4()
{
  result = qword_1EBAA5F80;
  if (!qword_1EBAA5F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5F70, &qword_1B8C27EC8);
    sub_1B8B3A58C();
    sub_1B8B34CFC(&qword_1EBAA6A40, &qword_1EBAA5F98, qword_1B8C29DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5F80);
  }

  return result;
}

unint64_t sub_1B8B3A58C()
{
  result = qword_1EBAA5F88;
  if (!qword_1EBAA5F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5F90, &unk_1B8C27ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5F88);
  }

  return result;
}

uint64_t type metadata accessor for SkipButton()
{
  result = qword_1EBAA5FA8;
  if (!qword_1EBAA5FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8B3A68C()
{
  sub_1B8B3A760(319, &qword_1EBAA5FB8, type metadata accessor for BatchController);
  if (v0 <= 0x3F)
  {
    sub_1B8B3A760(319, &qword_1EBAA5FC0, type metadata accessor for FBKEvaluationController);
    if (v1 <= 0x3F)
    {
      type metadata accessor for BatchInteraction(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8B3A760(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B8C23D98();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B8B3A7D0()
{
  v1 = sub_1B8C242A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

  if ((v7 & 1) == 0)
  {
    sub_1B8C25488();
    v8 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

id sub_1B8B3A910()
{
  v1 = sub_1B8C242A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {

    return v6;
  }

  else
  {
    v9[0] = *(v0 + 16);

    sub_1B8C25488();
    v8 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();
    sub_1B8B3B060(v9[0], 0);
    (*(v2 + 8))(v5, v1);
    return v9[1];
  }
}

uint64_t sub_1B8B3AA7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_1B8C24038();
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SkipButton();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FC8, &qword_1B8C27F48);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FD0, &qword_1B8C27F50);
  v14 = *(v29 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v17 = &v28 - v16;
  sub_1B8B3AFFC(v2, &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  sub_1B8B3B1DC(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  sub_1B8C24DB8();
  v20 = sub_1B8C24C68();
  KeyPath = swift_getKeyPath();
  v32 = v20;
  v22 = sub_1B8C23E48();
  v23 = &v13[*(v10 + 36)];
  *v23 = KeyPath;
  v23[1] = v22;
  sub_1B8C24028();
  v24 = sub_1B8B3B2A0();
  v25 = sub_1B8B3B534(&qword_1EBAA59E0, MEMORY[0x1E697C248]);
  sub_1B8C24A68();
  (*(v30 + 8))(v6, v3);
  sub_1B8B3B384(v13);
  sub_1B8C243A8();
  v32 = v10;
  v33 = v3;
  v34 = v24;
  v35 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v29;
  sub_1B8C24B28();

  return (*(v14 + 8))(v17, v26);
}

void sub_1B8B3AE7C(uint64_t a1)
{
  sub_1B8B3A7D0();
  v2 = *(type metadata accessor for SkipButton() + 24);
  v3 = sub_1B8B3A910();
  sub_1B8B4D64C(2u, a1 + v2, v3);
}

uint64_t sub_1B8B3AEF8@<X0>(uint64_t a1@<X8>)
{
  sub_1B8C243A8();
  v2 = sub_1B8C249C8();
  v4 = v3;
  v6 = v5;
  sub_1B8C24C68();
  v7 = sub_1B8C24998();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1B8B34060(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_1B8B3AFFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SkipButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B8B3B060(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void *sub_1B8B3B06C(void *result, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10)
{
  if (a10 == 2)
  {

    return sub_1B8B3B1B4(a6, a7, a8);
  }

  else
  {
    if (a10 == 1)
    {

      sub_1B8B3B174(a3);
    }

    else if (a10)
    {
      return result;
    }
  }
}

void *sub_1B8B3B174(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B8B3B1B4(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B8B3B1CC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1B8B3B1CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1B8B3B1DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SkipButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B8B3B240()
{
  v1 = *(type metadata accessor for SkipButton() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1B8B3AE7C(v2);
}

unint64_t sub_1B8B3B2A0()
{
  result = qword_1EBAA5FE0;
  if (!qword_1EBAA5FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5FC8, &qword_1B8C27F48);
    sub_1B8B34CFC(&qword_1EBAA5AC0, &qword_1EBAA5AB8, &qword_1B8C27248);
    sub_1B8B34CFC(&qword_1EBAA5FE8, &qword_1EBAA5FF0, &qword_1B8C27F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5FE0);
  }

  return result;
}

uint64_t sub_1B8B3B384(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FC8, &qword_1B8C27F48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B8B3B3EC()
{
  result = qword_1EBAA5FF8;
  if (!qword_1EBAA5FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6000, &unk_1B8C27F90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5FC8, &qword_1B8C27F48);
    sub_1B8C24038();
    sub_1B8B3B2A0();
    sub_1B8B3B534(&qword_1EBAA59E0, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    sub_1B8B3B534(&qword_1EBAA5F58, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5FF8);
  }

  return result;
}

uint64_t sub_1B8B3B534(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for Previewer()
{
  result = qword_1EBAA6010;
  if (!qword_1EBAA6010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8B3B5F0()
{
  type metadata accessor for BatchInteraction(319);
  if (v0 <= 0x3F)
  {
    sub_1B8B3B6F4(319, &qword_1EBAA6020, type metadata accessor for BatchInteraction.ContentPreview, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B8B3B6F4(319, &qword_1EBAA6028, type metadata accessor for FullScreenPreviewController, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8B3B6F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1B8B3B774@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B8C24D18();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  sub_1B8C24CF8();
  (*(v4 + 104))(v7, *MEMORY[0x1E6981630], v3);
  v9 = sub_1B8C24D28();

  (*(v4 + 8))(v7, v3);
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA61A0, &qword_1B8C28168) + 36));
  v11 = *(sub_1B8C24078() + 20);
  v12 = *MEMORY[0x1E697F468];
  v13 = sub_1B8C24418();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  __asm { FMOV            V0.2D, #16.0 }

  *v10 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA61A8, &unk_1B8C2CE50);
  *&v10[*(result + 36)] = 256;
  *a1 = v9;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_1B8B3B93C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Previewer();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = type metadata accessor for BatchInteraction(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B3F4F0(v2, v11, type metadata accessor for BatchInteraction);
  v12 = *(v2 + *(v5 + 32));
  v13 = (v2 + *(v5 + 36));
  v15 = *v13;
  v14 = v13[1];
  v26 = v15;
  v27 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6030, &qword_1B8C28000);
  sub_1B8C24D88();
  v16 = v24;
  v23 = v25;
  sub_1B8B3F4F0(v2, &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Previewer);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  sub_1B8B3E91C(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  sub_1B8B3F4F0(v11, a1, type metadata accessor for BatchInteraction);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6038, &qword_1B8C28008);
  v20 = a1 + v19[12];
  *v20 = v16;
  *(v20 + 8) = v23;
  *(a1 + v19[9]) = v12;
  result = sub_1B8B3F624(v11, type metadata accessor for BatchInteraction);
  *(a1 + v19[11]) = MEMORY[0x1E69E7CC0];
  v22 = (a1 + v19[10]);
  *v22 = sub_1B8B3E980;
  v22[1] = v18;
  return result;
}

uint64_t sub_1B8B3BB80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1B8C242D8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6040, &qword_1B8C28010);
  return sub_1B8B3BBD8(a1, a2 + *(v4 + 44));
}

uint64_t sub_1B8B3BBD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6048, &qword_1B8C28018);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  *v10 = sub_1B8C24478();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6050, &qword_1B8C28020);
  sub_1B8B3BD30(a1, &v10[*(v11 + 44)]);
  sub_1B8B34450(v10, v8, &qword_1EBAA6048, &qword_1B8C28018);
  sub_1B8B34450(v8, a2, &qword_1EBAA6048, &qword_1B8C28018);
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6058, &qword_1B8C28028) + 48);
  *v12 = 0;
  *(v12 + 8) = 1;
  sub_1B8B3433C(v10, &qword_1EBAA6048, &qword_1B8C28018);
  return sub_1B8B3433C(v8, &qword_1EBAA6048, &qword_1B8C28018);
}

uint64_t sub_1B8B3BD30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v245 = a2;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6060, &qword_1B8C28030);
  v195 = *(v208 - 8);
  v3 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v208);
  v194 = v193 - v4;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6068, &qword_1B8C28038);
  v196 = *(v201 - 8);
  v5 = *(v196 + 64);
  MEMORY[0x1EEE9AC00](v201);
  v197 = v193 - v6;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6070, &qword_1B8C28040);
  v7 = *(*(v205 - 8) + 64);
  MEMORY[0x1EEE9AC00](v205);
  v207 = v193 - v8;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6078, &qword_1B8C28048);
  v9 = *(*(v198 - 8) + 64);
  MEMORY[0x1EEE9AC00](v198);
  v199 = (v193 - v10);
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6080, &qword_1B8C28050);
  v11 = *(*(v206 - 8) + 64);
  MEMORY[0x1EEE9AC00](v206);
  v200 = v193 - v12;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6088, &qword_1B8C28058);
  v13 = *(*(v227 - 8) + 64);
  MEMORY[0x1EEE9AC00](v227);
  v209 = v193 - v14;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6090, &qword_1B8C28060);
  v15 = *(*(v242 - 1) + 64);
  MEMORY[0x1EEE9AC00](v242);
  v243 = v193 - v16;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6098, &qword_1B8C28068);
  v17 = *(*(v224 - 8) + 64);
  MEMORY[0x1EEE9AC00](v224);
  v225 = (v193 - v18);
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA60A0, &qword_1B8C28070);
  v19 = *(*(v241 - 8) + 64);
  MEMORY[0x1EEE9AC00](v241);
  v226 = v193 - v20;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA60A8, &qword_1B8C28078);
  v21 = *(*(v244 - 8) + 64);
  MEMORY[0x1EEE9AC00](v244);
  v23 = v193 - v22;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA60B0, &qword_1B8C28080);
  v24 = *(*(v223 - 8) + 64);
  MEMORY[0x1EEE9AC00](v223);
  v204 = (v193 - v25);
  v219 = type metadata accessor for WebView(0);
  v26 = *(*(v219 - 8) + 64);
  MEMORY[0x1EEE9AC00](v219);
  v203 = (v193 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA60B8, &qword_1B8C28088);
  v28 = *(*(v216 - 8) + 64);
  MEMORY[0x1EEE9AC00](v216);
  v218 = v193 - v29;
  *&v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA60C0, &qword_1B8C28090);
  v30 = *(*(v238 - 8) + 64);
  MEMORY[0x1EEE9AC00](v238);
  v220 = v193 - v31;
  v32 = sub_1B8C23328();
  v231 = *(v32 - 8);
  v232 = v32;
  v33 = *(v231 + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v212 = v193 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v230 = v193 - v35;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA60C8, &qword_1B8C28098);
  v222 = *(v237 - 8);
  v36 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v237);
  v221 = v193 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA60D0, &qword_1B8C280A0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v41 = v193 - v40;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA60D8, &qword_1B8C280A8);
  v42 = *(*(v234 - 8) + 64);
  MEMORY[0x1EEE9AC00](v234);
  v236 = v193 - v43;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA60E0, &qword_1B8C280B0);
  v44 = *(*(v213 - 8) + 64);
  MEMORY[0x1EEE9AC00](v213);
  v214 = v193 - v45;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA60E8, &qword_1B8C280B8);
  v46 = *(*(v235 - 8) + 64);
  MEMORY[0x1EEE9AC00](v235);
  v217 = v193 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA60F0, &qword_1B8C280C0);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  *&v239 = v193 - v50;
  v51 = type metadata accessor for Previewer();
  v228 = *(v51 - 8);
  v52 = *(v228 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v229 = v193 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA60F8, &qword_1B8C280C8);
  v202 = *(v215 - 8);
  v53 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v215);
  v211 = v193 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6008, &qword_1B8C2A5B0);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v58 = v193 - v57;
  v59 = *(v51 + 20);
  v240 = a1;
  sub_1B8B3E9F0(a1 + v59, v58);
  v60 = type metadata accessor for BatchInteraction.ContentPreview(0);
  if ((*(*(v60 - 8) + 48))(v58, 1, v60) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_1B8B3EA60();
    sub_1B8C24598();
    v61 = &qword_1EBAA60A8;
    v62 = &qword_1B8C28078;
    sub_1B8B34450(v23, v41, &qword_1EBAA60A8, &qword_1B8C28078);
    swift_storeEnumTagMultiPayload();
    sub_1B8B3EF04();
    sub_1B8B3F1FC();
    sub_1B8C24598();
    v63 = v23;
LABEL_3:
    v64 = v61;
    v65 = v62;
    return sub_1B8B3433C(v63, v64, v65);
  }

  v193[0] = v23;
  v193[1] = v38;
  v210 = v48;
  v233 = v41;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v75 = v233;
    if (EnumCaseMultiPayload == 3)
    {
      v129 = *v58;
      v128 = *(v58 + 1);
      v130 = *(v58 + 2);
      v131 = sub_1B8C24478();
      v132 = v204;
      *v204 = v131;
      *(v132 + 8) = 0;
      *(v132 + 16) = 1;
      v133 = (v132 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6188, &qword_1B8C280D8) + 44));
      sub_1B8B3E034(v128, v130, v240, v129, v133);

      sub_1B8B34450(v132, v225, &qword_1EBAA60B0, &qword_1B8C28080);
      swift_storeEnumTagMultiPayload();
      sub_1B8B34CFC(&qword_1EBAA6108, &qword_1EBAA60B0, &qword_1B8C28080);
      sub_1B8B3EB18();
      v134 = v226;
      sub_1B8C24598();
      sub_1B8B34450(v134, v243, &qword_1EBAA60A0, &qword_1B8C28070);
      swift_storeEnumTagMultiPayload();
      sub_1B8B3EA60();
      v135 = v193[0];
      sub_1B8C24598();
      sub_1B8B3433C(v134, &qword_1EBAA60A0, &qword_1B8C28070);
      sub_1B8B34450(v135, v75, &qword_1EBAA60A8, &qword_1B8C28078);
      swift_storeEnumTagMultiPayload();
      sub_1B8B3EF04();
      sub_1B8B3F1FC();
      sub_1B8C24598();

      sub_1B8B3433C(v135, &qword_1EBAA60A8, &qword_1B8C28078);
      v63 = v132;
      v64 = &qword_1EBAA60B0;
      v65 = &qword_1B8C28080;
      return sub_1B8B3433C(v63, v64, v65);
    }

    if (EnumCaseMultiPayload != 4)
    {
      *&v259[9] = *(v58 + 57);
      v147 = *(v58 + 1);
      v256 = *v58;
      v257 = v147;
      v148 = *(v58 + 3);
      v258 = *(v58 + 2);
      *v259 = v148;
      v149 = v256;
      if (v259[24])
      {
        *&v246[25] = *(v58 + 25);
        *&v246[41] = *(v58 + 41);
        if (v259[24] == 1)
        {
          *&v246[56] = *(v58 + 56);
          *&v246[9] = *(v58 + 9);
          *v246 = v256;
          v246[8] = BYTE8(v256);
          v150 = (v240 + *(v51 + 28));
          v152 = *v150;
          v151 = v150[1];
          v251 = v152;
          v252 = v151;
          v153 = *v58;
          v154 = *(v58 + 1);
          *(v255 + 9) = *(v58 + 57);
          v155 = *(v58 + 3);
          v254 = *(v58 + 2);
          v255[0] = v155;
          *v253 = v153;
          *&v253[16] = v154;
          sub_1B8B3F38C(v253, &v247);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6030, &qword_1B8C28000);
          sub_1B8C24D68();
          v156 = type metadata accessor for FullScreenPreviewController(0);
          v157 = sub_1B8B3EE5C();
          v158 = sub_1B8B3F1B4(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController);
          v159 = v197;
          v160 = v156;
          v240 = v156;
          sub_1B8C24A78();

          v249[1] = *&v246[48];
          v250 = *&v246[64];
          v248 = *&v246[16];
          v249[0] = *&v246[32];
          v247 = *v246;
          sub_1B8B3F3E8(&v247);
          v161 = v196;
          v162 = v159;
          v163 = v201;
          (*(v196 + 16))(v199, v162, v201);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6128, &qword_1B8C280D0);
          sub_1B8B3ED28();
          *v246 = &type metadata for ImagePlaygroundPreviewController;
          *&v246[8] = v160;
          *&v246[16] = v157;
          *&v246[24] = v158;
          swift_getOpaqueTypeConformance2();
          v164 = v200;
          sub_1B8C24598();
          sub_1B8B34450(v164, v207, &qword_1EBAA6080, &qword_1B8C28050);
          swift_storeEnumTagMultiPayload();
          sub_1B8B3EC20();
          v165 = sub_1B8B3EEB0();
          *v246 = &type metadata for GenmojiPreviewController;
          *&v246[8] = v240;
          *&v246[16] = v165;
          *&v246[24] = v158;
          swift_getOpaqueTypeConformance2();
          v166 = v209;
          sub_1B8C24598();
          sub_1B8B3433C(v164, &qword_1EBAA6080, &qword_1B8C28050);
          (*(v161 + 8))(v197, v163);
        }

        else
        {
          *&v246[9] = *(v58 + 9);
          *v246 = v256;
          v246[8] = BYTE8(v256);
          v170 = (v240 + *(v51 + 28));
          v172 = *v170;
          v171 = v170[1];
          v251 = v172;
          v252 = v171;
          v173 = *v58;
          v174 = *(v58 + 1);
          *(v255 + 9) = *(v58 + 57);
          v175 = *(v58 + 3);
          v254 = *(v58 + 2);
          v255[0] = v175;
          *v253 = v173;
          *&v253[16] = v174;
          sub_1B8B3F288(v253, &v247);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6030, &qword_1B8C28000);
          sub_1B8C24D68();
          v176 = type metadata accessor for FullScreenPreviewController(0);
          v177 = sub_1B8B3EEB0();
          v178 = sub_1B8B3F1B4(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController);
          v179 = v194;
          sub_1B8C24A78();

          v247 = *v246;
          v248 = *&v246[16];
          v249[0] = *&v246[32];
          *(v249 + 9) = *&v246[41];
          sub_1B8B3F2E4(&v247);
          v180 = v195;
          v181 = v208;
          (*(v195 + 16))(v207, v179, v208);
          swift_storeEnumTagMultiPayload();
          sub_1B8B3EC20();
          *v246 = &type metadata for GenmojiPreviewController;
          *&v246[8] = v176;
          *&v246[16] = v177;
          *&v246[24] = v178;
          swift_getOpaqueTypeConformance2();
          v166 = v209;
          sub_1B8C24598();
          (*(v180 + 8))(v179, v181);
        }
      }

      else
      {
        v167 = (v240 + *(v51 + 28));
        v169 = *v167;
        v168 = v167[1];
        *&v247 = v169;
        *(&v247 + 1) = v168;
        if (BYTE8(v256))
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6030, &qword_1B8C28000);
          sub_1B8C24D88();
          *&v247 = v149;
          *(&v247 + 1) = *v253;
          v248 = *&v253[8];
          LOBYTE(v249[0]) = 1;
        }

        else
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6030, &qword_1B8C28000);
          sub_1B8C24D88();
          *&v247 = v149;
          *(&v247 + 1) = *v253;
          v248 = *&v253[8];
          LOBYTE(v249[0]) = 0;
        }

        sub_1B8B3EDB4();
        sub_1B8B3EE08();
        sub_1B8C24598();
        v183 = v254;
        v238 = *&v253[16];
        v182 = *&v253[16];
        v239 = *v253;
        v184 = v199;
        *v199 = *v253;
        v184[1] = v182;
        *(v184 + 32) = v183;
        swift_storeEnumTagMultiPayload();
        v240 = v239;
        *&v239 = *(&v239 + 1);
        sub_1B8B3F43C();
        sub_1B8B3F43C();
        *&v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6128, &qword_1B8C280D0);
        sub_1B8B3ED28();
        v185 = type metadata accessor for FullScreenPreviewController(255);
        v186 = sub_1B8B3EE5C();
        v187 = sub_1B8B3F1B4(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController);
        *v253 = &type metadata for ImagePlaygroundPreviewController;
        *&v253[8] = v185;
        *&v253[16] = v186;
        *&v253[24] = v187;
        swift_getOpaqueTypeConformance2();
        v188 = v200;
        sub_1B8C24598();
        sub_1B8B34450(v188, v207, &qword_1EBAA6080, &qword_1B8C28050);
        swift_storeEnumTagMultiPayload();
        sub_1B8B3EC20();
        v189 = sub_1B8B3EEB0();
        *v253 = &type metadata for GenmojiPreviewController;
        *&v253[8] = v185;
        *&v253[16] = v189;
        *&v253[24] = v187;
        swift_getOpaqueTypeConformance2();
        v166 = v209;
        sub_1B8C24598();
        sub_1B8B3F498();
        sub_1B8B3F498();
        sub_1B8B3433C(v188, &qword_1EBAA6080, &qword_1B8C28050);
      }

      v61 = &qword_1EBAA6088;
      v62 = &qword_1B8C28058;
      sub_1B8B34450(v166, v225, &qword_1EBAA6088, &qword_1B8C28058);
      swift_storeEnumTagMultiPayload();
      sub_1B8B34CFC(&qword_1EBAA6108, &qword_1EBAA60B0, &qword_1B8C28080);
      sub_1B8B3EB18();
      v190 = v226;
      sub_1B8C24598();
      sub_1B8B34450(v190, v243, &qword_1EBAA60A0, &qword_1B8C28070);
      swift_storeEnumTagMultiPayload();
      sub_1B8B3EA60();
      v191 = v166;
      v192 = v193[0];
      sub_1B8C24598();
      sub_1B8B3433C(v190, &qword_1EBAA60A0, &qword_1B8C28070);
      sub_1B8B34450(v192, v233, &qword_1EBAA60A8, &qword_1B8C28078);
      swift_storeEnumTagMultiPayload();
      sub_1B8B3EF04();
      sub_1B8B3F1FC();
      sub_1B8C24598();
      sub_1B8B3F338(&v256);
      sub_1B8B3433C(v192, &qword_1EBAA60A8, &qword_1B8C28078);
      v63 = v191;
      goto LABEL_3;
    }

    v77 = v230;
    v76 = v231;
    v78 = *(v231 + 32);
    v241 = v231 + 32;
    v242 = v78;
    v79 = v232;
    v78(v230, v58, v232);
    v225 = *(v76 + 16);
    v225(v212, v77, v79);
    v80 = sub_1B8C249D8();
    v82 = v81;
    LOBYTE(v77) = v83;
    v223 = v84;
    sub_1B8C248A8();
    v85 = sub_1B8C249B8();
    v226 = v85;
    v227 = v86;
    v243 = v87;
    LODWORD(v224) = v88;
    v89 = v86;

    sub_1B8B34060(v80, v82, v77 & 1);

    *&v256 = v85;
    *(&v256 + 1) = v243;
    LOBYTE(v82) = v224 & 1;
    LOBYTE(v257) = v224 & 1;
    *(&v257 + 1) = v89;
    v90 = v229;
    sub_1B8B3F4F0(v240, v229, type metadata accessor for Previewer);
    v91 = v212;
    v92 = v232;
    v225(v212, v230, v232);
    v93 = (*(v228 + 80) + 16) & ~*(v228 + 80);
    v94 = (v52 + *(v231 + 80) + v93) & ~*(v231 + 80);
    v95 = swift_allocObject();
    sub_1B8B3E91C(v90, v95 + v93);
    v242(v95 + v94, v91, v92);
    v96 = MEMORY[0x1E6981148];
    v97 = MEMORY[0x1E6981138];
    v98 = v221;
    sub_1B8C24AA8();

    sub_1B8B34060(v226, v243, v82);

    v99 = v222;
    v100 = v237;
    (*(v222 + 16))(v218, v98, v237);
    swift_storeEnumTagMultiPayload();
    *&v256 = v96;
    *(&v256 + 1) = v97;
    swift_getOpaqueTypeConformance2();
    sub_1B8B3F1B4(&qword_1EBAA6178, type metadata accessor for WebView);
    v101 = v220;
    sub_1B8C24598();
    sub_1B8B34450(v101, v236, &qword_1EBAA60C0, &qword_1B8C28090);
    swift_storeEnumTagMultiPayload();
    sub_1B8B3EF90();
    sub_1B8B3F0C8();
    v102 = v239;
    sub_1B8C24598();
    sub_1B8B3433C(v101, &qword_1EBAA60C0, &qword_1B8C28090);
    sub_1B8B34450(v102, v233, &qword_1EBAA60F0, &qword_1B8C280C0);
    swift_storeEnumTagMultiPayload();
    sub_1B8B3EF04();
    sub_1B8B3F1FC();
    sub_1B8C24598();
    sub_1B8B3433C(v102, &qword_1EBAA60F0, &qword_1B8C280C0);
    (*(v99 + 8))(v98, v100);
    return (*(v231 + 8))(v230, v232);
  }

  else
  {
    v68 = v233;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v69 = *(v58 + 1);
        v70 = v203;
        *v203 = *v58;
        *(v70 + 8) = v69;
        type metadata accessor for WebView.HTMLContent(0);
        swift_storeEnumTagMultiPayload();
        v72 = v218;
        v71 = v219;
        *(v70 + *(v219 + 20)) = 0;
        *(v70 + *(v71 + 24)) = 0;
        sub_1B8B3F4F0(v70, v72, type metadata accessor for WebView);
        swift_storeEnumTagMultiPayload();
        *&v256 = MEMORY[0x1E6981148];
        *(&v256 + 1) = MEMORY[0x1E6981138];
        swift_getOpaqueTypeConformance2();
        sub_1B8B3F1B4(&qword_1EBAA6178, type metadata accessor for WebView);
        v73 = v220;
        sub_1B8C24598();
        sub_1B8B34450(v73, v236, &qword_1EBAA60C0, &qword_1B8C28090);
        swift_storeEnumTagMultiPayload();
        sub_1B8B3EF90();
        sub_1B8B3F0C8();
        v74 = v239;
        sub_1B8C24598();
        sub_1B8B3433C(v73, &qword_1EBAA60C0, &qword_1B8C28090);
        sub_1B8B34450(v74, v68, &qword_1EBAA60F0, &qword_1B8C280C0);
        swift_storeEnumTagMultiPayload();
        sub_1B8B3EF04();
        sub_1B8B3F1FC();
        sub_1B8C24598();
        sub_1B8B3433C(v74, &qword_1EBAA60F0, &qword_1B8C280C0);
        return sub_1B8B3F624(v70, type metadata accessor for WebView);
      }

      else
      {
        *&v256 = *v58;
        v136 = v256;
        v137 = v229;
        sub_1B8B3F4F0(v240, v229, type metadata accessor for Previewer);
        v138 = (*(v228 + 80) + 16) & ~*(v228 + 80);
        v139 = swift_allocObject();
        sub_1B8B3E91C(v137, v139 + v138);
        *(v139 + ((v52 + v138 + 7) & 0xFFFFFFFFFFFFFFF8)) = v136;
        v140 = sub_1B8B3F074();
        v141 = v136;
        v243 = v141;
        v142 = v211;
        sub_1B8C24AA8();

        v143 = v202;
        v144 = v215;
        (*(v202 + 16))(v214, v142, v215);
        swift_storeEnumTagMultiPayload();
        *&v256 = &type metadata for DataImage;
        *(&v256 + 1) = v140;
        swift_getOpaqueTypeConformance2();
        *&v256 = MEMORY[0x1E6981148];
        *(&v256 + 1) = MEMORY[0x1E6981138];
        swift_getOpaqueTypeConformance2();
        v145 = v217;
        sub_1B8C24598();
        sub_1B8B34450(v145, v236, &qword_1EBAA60E8, &qword_1B8C280B8);
        swift_storeEnumTagMultiPayload();
        sub_1B8B3EF90();
        sub_1B8B3F0C8();
        v146 = v239;
        sub_1B8C24598();
        sub_1B8B3433C(v145, &qword_1EBAA60E8, &qword_1B8C280B8);
        sub_1B8B34450(v146, v68, &qword_1EBAA60F0, &qword_1B8C280C0);
        swift_storeEnumTagMultiPayload();
        sub_1B8B3EF04();
        sub_1B8B3F1FC();
        sub_1B8C24598();

        sub_1B8B3433C(v146, &qword_1EBAA60F0, &qword_1B8C280C0);
        return (*(v143 + 8))(v211, v144);
      }
    }

    else
    {
      v103 = *v58;
      v242 = *(v58 + 1);
      v243 = v103;
      *&v256 = v103;
      *(&v256 + 1) = v242;
      sub_1B8B34CA8();

      v104 = sub_1B8C249E8();
      v106 = v105;
      v108 = v107;
      sub_1B8C248A8();
      v109 = sub_1B8C249B8();
      v241 = v109;
      v111 = v110;
      v232 = v110;
      LODWORD(v231) = v112;
      v114 = v113;

      sub_1B8B34060(v104, v106, v108 & 1);

      *&v256 = v109;
      *(&v256 + 1) = v111;
      LOBYTE(v106) = v231 & 1;
      LOBYTE(v257) = v231 & 1;
      *(&v257 + 1) = v114;
      v115 = v229;
      sub_1B8B3F4F0(v240, v229, type metadata accessor for Previewer);
      v116 = (*(v228 + 80) + 16) & ~*(v228 + 80);
      v117 = swift_allocObject();
      sub_1B8B3E91C(v115, v117 + v116);
      v118 = (v117 + ((v52 + v116 + 7) & 0xFFFFFFFFFFFFFFF8));
      v119 = v242;
      *v118 = v243;
      v118[1] = v119;
      v120 = MEMORY[0x1E6981148];
      v121 = MEMORY[0x1E6981138];
      v122 = v221;
      sub_1B8C24AA8();

      sub_1B8B34060(v241, v232, v106);

      v123 = v222;
      v124 = v237;
      (*(v222 + 16))(v214, v122, v237);
      swift_storeEnumTagMultiPayload();
      v125 = sub_1B8B3F074();
      *&v256 = &type metadata for DataImage;
      *(&v256 + 1) = v125;
      swift_getOpaqueTypeConformance2();
      *&v256 = v120;
      *(&v256 + 1) = v121;
      swift_getOpaqueTypeConformance2();
      v126 = v217;
      sub_1B8C24598();
      sub_1B8B34450(v126, v236, &qword_1EBAA60E8, &qword_1B8C280B8);
      swift_storeEnumTagMultiPayload();
      sub_1B8B3EF90();
      sub_1B8B3F0C8();
      v127 = v239;
      sub_1B8C24598();
      sub_1B8B3433C(v126, &qword_1EBAA60E8, &qword_1B8C280B8);
      sub_1B8B34450(v127, v233, &qword_1EBAA60F0, &qword_1B8C280C0);
      swift_storeEnumTagMultiPayload();
      sub_1B8B3EF04();
      sub_1B8B3F1FC();
      sub_1B8C24598();
      sub_1B8B3433C(v127, &qword_1EBAA60F0, &qword_1B8C280C0);
      return (*(v123 + 8))(v122, v124);
    }
  }
}

uint64_t sub_1B8B3DE38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C237B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FullScreenPreviewController.Content.PreviewType(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a1 + *(type metadata accessor for Previewer() + 28));
  v15 = *v13;
  v14 = v13[1];
  v19[2] = v15;
  v19[3] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6030, &qword_1B8C28000);
  sub_1B8C24D68();
  v16 = sub_1B8C23328();
  (*(*(v16 - 8) + 16))(v12, a2, v16);
  swift_storeEnumTagMultiPayload();
  v17 = *(a1 + *(type metadata accessor for BatchInteraction(0) + 20));
  sub_1B8C237C8();
  sub_1B8B5FE50(v12, v8);

  (*(v5 + 8))(v8, v4);
  return sub_1B8B3F624(v12, type metadata accessor for FullScreenPreviewController.Content.PreviewType);
}

uint64_t sub_1B8B3E034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v64 = a4;
  v60 = a1;
  v61 = a3;
  v69 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA60F8, &qword_1B8C280C8);
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = *(v67 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v66 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v71 = &v55 - v11;
  v12 = type metadata accessor for Previewer();
  v62 = *(v12 - 8);
  v13 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v59 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA60C8, &qword_1B8C28098);
  v72 = *(v65 - 8);
  v14 = v72[8];
  v15 = MEMORY[0x1EEE9AC00](v65);
  v63 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v70 = &v55 - v17;
  v73 = a1;
  v74 = a2;
  v58 = a2;
  sub_1B8B34CA8();

  v18 = sub_1B8C249E8();
  v20 = v19;
  v22 = v21;
  sub_1B8C248A8();
  v23 = sub_1B8C249B8();
  v56 = v23;
  v25 = v24;
  v55 = v24;
  v27 = v26;
  v29 = v28;
  v57 = v28;

  sub_1B8B34060(v18, v20, v22 & 1);

  v73 = v23;
  v74 = v25;
  v75 = v27 & 1;
  v76 = v29;
  v30 = v61;
  v31 = v59;
  sub_1B8B3F4F0(v61, v59, type metadata accessor for Previewer);
  v32 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v33 = (v13 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  sub_1B8B3E91C(v31, v34 + v32);
  v35 = (v34 + v33);
  v36 = v58;
  *v35 = v60;
  v35[1] = v36;

  v37 = v70;
  sub_1B8C24AA8();

  sub_1B8B34060(v56, v55, v27 & 1);

  v38 = v64;
  v73 = v64;
  sub_1B8B3F4F0(v30, v31, type metadata accessor for Previewer);
  v39 = swift_allocObject();
  sub_1B8B3E91C(v31, v39 + v32);
  *(v39 + v33) = v38;
  sub_1B8B3F074();
  v40 = v38;
  v41 = v71;
  sub_1B8C24AA8();

  v42 = v72[2];
  v43 = v63;
  v44 = v65;
  v42(v63, v37, v65);
  v45 = v66;
  v46 = v67;
  v47 = *(v67 + 16);
  v48 = v41;
  v49 = v68;
  v47(v66, v48, v68);
  v50 = v69;
  v42(v69, v43, v44);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6190, &qword_1B8C280E0);
  v47(&v50[*(v51 + 48)], v45, v49);
  v52 = *(v46 + 8);
  v52(v71, v49);
  v53 = v72[1];
  v53(v70, v44);
  v52(v45, v49);
  return (v53)(v43, v44);
}

uint64_t sub_1B8B3E580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8C237B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FullScreenPreviewController.Content.PreviewType(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (a1 + *(type metadata accessor for Previewer() + 28));
  v17 = *v15;
  v16 = v15[1];
  v20[2] = v17;
  v20[3] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6030, &qword_1B8C28000);
  sub_1B8C24D68();
  *v14 = a2;
  v14[1] = a3;
  swift_storeEnumTagMultiPayload();
  v18 = *(a1 + *(type metadata accessor for BatchInteraction(0) + 20));

  sub_1B8C237C8();
  sub_1B8B5FE50(v14, v10);

  (*(v7 + 8))(v10, v6);
  return sub_1B8B3F624(v14, type metadata accessor for FullScreenPreviewController.Content.PreviewType);
}

uint64_t sub_1B8B3E750(uint64_t a1, void *a2)
{
  v4 = sub_1B8C237B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FullScreenPreviewController.Content.PreviewType(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (a1 + *(type metadata accessor for Previewer() + 28));
  v15 = *v13;
  v14 = v13[1];
  v19[2] = v15;
  v19[3] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6030, &qword_1B8C28000);
  sub_1B8C24D68();
  *v12 = a2;
  swift_storeEnumTagMultiPayload();
  v16 = *(a1 + *(type metadata accessor for BatchInteraction(0) + 20));
  v17 = a2;
  sub_1B8C237C8();
  sub_1B8B5FE50(v12, v8);

  (*(v5 + 8))(v8, v4);
  return sub_1B8B3F624(v12, type metadata accessor for FullScreenPreviewController.Content.PreviewType);
}

uint64_t sub_1B8B3E91C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Previewer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B3E980@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Previewer() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1B8B3BB80(v4, a1);
}

uint64_t sub_1B8B3E9F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6008, &qword_1B8C2A5B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B8B3EA60()
{
  result = qword_1EBAA6100;
  if (!qword_1EBAA6100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA60A0, &qword_1B8C28070);
    sub_1B8B34CFC(&qword_1EBAA6108, &qword_1EBAA60B0, &qword_1B8C28080);
    sub_1B8B3EB18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6100);
  }

  return result;
}

unint64_t sub_1B8B3EB18()
{
  result = qword_1EBAA6110;
  if (!qword_1EBAA6110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6088, &qword_1B8C28058);
    sub_1B8B3EC20();
    type metadata accessor for FullScreenPreviewController(255);
    sub_1B8B3EEB0();
    sub_1B8B3F1B4(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6110);
  }

  return result;
}

unint64_t sub_1B8B3EC20()
{
  result = qword_1EBAA6118;
  if (!qword_1EBAA6118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6080, &qword_1B8C28050);
    sub_1B8B3ED28();
    type metadata accessor for FullScreenPreviewController(255);
    sub_1B8B3EE5C();
    sub_1B8B3F1B4(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6118);
  }

  return result;
}

unint64_t sub_1B8B3ED28()
{
  result = qword_1EBAA6120;
  if (!qword_1EBAA6120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6128, &qword_1B8C280D0);
    sub_1B8B3EDB4();
    sub_1B8B3EE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6120);
  }

  return result;
}

unint64_t sub_1B8B3EDB4()
{
  result = qword_1EBAA6130;
  if (!qword_1EBAA6130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6130);
  }

  return result;
}

unint64_t sub_1B8B3EE08()
{
  result = qword_1EBAA6138;
  if (!qword_1EBAA6138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6138);
  }

  return result;
}

unint64_t sub_1B8B3EE5C()
{
  result = qword_1EBAA6140;
  if (!qword_1EBAA6140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6140);
  }

  return result;
}

unint64_t sub_1B8B3EEB0()
{
  result = qword_1EBAA6150;
  if (!qword_1EBAA6150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6150);
  }

  return result;
}

unint64_t sub_1B8B3EF04()
{
  result = qword_1EBAA6158;
  if (!qword_1EBAA6158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA60F0, &qword_1B8C280C0);
    sub_1B8B3EF90();
    sub_1B8B3F0C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6158);
  }

  return result;
}

unint64_t sub_1B8B3EF90()
{
  result = qword_1EBAA6160;
  if (!qword_1EBAA6160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA60E8, &qword_1B8C280B8);
    sub_1B8B3F074();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6160);
  }

  return result;
}

unint64_t sub_1B8B3F074()
{
  result = qword_1EBAA6168;
  if (!qword_1EBAA6168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6168);
  }

  return result;
}

unint64_t sub_1B8B3F0C8()
{
  result = qword_1EBAA6170;
  if (!qword_1EBAA6170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA60C0, &qword_1B8C28090);
    swift_getOpaqueTypeConformance2();
    sub_1B8B3F1B4(&qword_1EBAA6178, type metadata accessor for WebView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6170);
  }

  return result;
}

uint64_t sub_1B8B3F1B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B8B3F1FC()
{
  result = qword_1EBAA6180;
  if (!qword_1EBAA6180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA60A8, &qword_1B8C28078);
    sub_1B8B3EA60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6180);
  }

  return result;
}

uint64_t sub_1B8B3F43C()
{
}

uint64_t sub_1B8B3F498()
{
}

uint64_t sub_1B8B3F4F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8B3F558()
{
  v1 = *(type metadata accessor for Previewer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1B8C23328() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1B8B3DE38(v0 + v2, v5);
}

uint64_t sub_1B8B3F624(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_8Tm()
{
  v1 = type metadata accessor for Previewer();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v32 = *(*(v1 - 8) + 64);
  v4 = v0 + v3;
  v5 = sub_1B8C23568();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = type metadata accessor for BatchInteraction(0);

  v7 = *(v0 + v3 + v6[6]);

  v8 = v0 + v3 + v6[7];
  type metadata accessor for BatchInteraction.ContentPolarity(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = type metadata accessor for BatchInteraction.ContentPreview(0);
  v11 = *(*(v10 - 8) + 48);
  v12 = v11(v8, 1, v10);
  if (EnumCaseMultiPayload != 1)
  {
    if (v12)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  if (!v12)
  {
    v14 = swift_getEnumCaseMultiPayload();
    if (v14 > 2)
    {
      switch(v14)
      {
        case 3:

          v29 = *(v8 + 16);

          break;
        case 4:
          v30 = sub_1B8C23328();
          (*(*(v30 - 8) + 8))(v8, v30);
          break;
        case 5:
          sub_1B8B3B06C(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72));
          break;
      }
    }

    else if (v14 < 2)
    {
      v17 = *(v8 + 8);
    }

    else if (v14 == 2)
    {
    }
  }

  v8 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FD8, &qword_1B8C28560) + 48);
  if (!v11(v8, 1, v10))
  {
LABEL_6:
    v13 = swift_getEnumCaseMultiPayload();
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:

          v16 = *(v8 + 16);

          break;
        case 4:
          v18 = sub_1B8C23328();
          (*(*(v18 - 8) + 8))(v8, v18);
          break;
        case 5:
          sub_1B8B3B06C(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72));
          break;
      }
    }

    else if (v13 < 2)
    {
      v15 = *(v8 + 8);
    }

    else if (v13 == 2)
    {
    }
  }

LABEL_26:
  v19 = v4 + *(v1 + 20);
  if (v11(v19, 1, v10))
  {
    goto LABEL_39;
  }

  v20 = swift_getEnumCaseMultiPayload();
  if (v20 <= 2)
  {
    if (v20 >= 2)
    {
      if (v20 == 2)
      {
      }

      goto LABEL_39;
    }

    v21 = *(v19 + 8);
LABEL_37:

    goto LABEL_39;
  }

  switch(v20)
  {
    case 3:

      v22 = *(v19 + 16);
      goto LABEL_37;
    case 4:
      v23 = sub_1B8C23328();
      (*(*(v23 - 8) + 8))(v19, v23);
      break;
    case 5:
      sub_1B8B3B06C(*v19, *(v19 + 8), *(v19 + 16), *(v19 + 24), *(v19 + 32), *(v19 + 40), *(v19 + 48), *(v19 + 56), *(v19 + 64), *(v19 + 72));
      break;
  }

LABEL_39:
  v24 = (v32 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v4 + *(v1 + 28));
  v26 = *v25;

  v27 = v25[1];

  v28 = *(v0 + v24 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v24 + 16, v2 | 7);
}
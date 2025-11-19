void *sub_1D16EE918@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1D16EE980(void *a1, uint64_t *a2)
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

void *sub_1D16EE9B0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_1D16EE9DC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

_DWORD *sub_1D16EEAC8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL sub_1D16EEB0C(_DWORD *a1, int *a2)
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

uint64_t sub_1D16EEC7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1D173FE78(a1);

  *a2 = v3;
  return result;
}

_WORD *sub_1D16EECF8@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

unint64_t sub_1D16EED18(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1D1E691FC();
  return sub_1D171E268(a1, v4);
}

uint64_t getEnumTagSinglePayload for RGBColor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D16EEE20(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

_OWORD *sub_1D16EEE38(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D16EEEC0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16EEEF8()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D16EF5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
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

uint64_t sub_1D16EF6D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

size_t sub_1D16EF7EC(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC643258, &qword_1D1E716B0, type metadata accessor for StaticService);
  *v3 = result;
  return result;
}

uint64_t sub_1D16EF838()
{
  v1 = type metadata accessor for StateSnapshot(0);
  v68 = *(*(v1 - 8) + 80);
  v66 = *(*(v1 - 8) + 64);
  v71 = type metadata accessor for Action.NaturalLightAction(0);
  v65 = *(*(v71 - 1) + 80);
  v70 = *(*(v71 - 1) + 64);
  v67 = (v68 + 16) & ~v68;
  v2 = v0 + v67;
  v3 = *(v0 + v67);

  v69 = v1;
  v4 = v0 + v67 + *(v1 + 20);
  v5 = sub_1D1E66A7C();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v7 = type metadata accessor for StaticHome();
  v8 = *(v4 + v7[5] + 8);

  v9 = v7[6];
  v10 = sub_1D1E669FC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v4 + v9, 1, v10))
  {
    (*(v11 + 8))(v4 + v9, v10);
  }

  v13 = v4 + v7[7];
  v6(v13, v5);
  v63 = v6;
  v64 = v5;
  v14 = type metadata accessor for StaticRoom(0);
  v15 = *(v13 + v14[5] + 8);

  v16 = v14[6];
  if (!v12(v13 + v16, 1, v10))
  {
    (*(v11 + 8))(v13 + v16, v10);
  }

  v17 = *(v13 + v14[8]);

  v63(v13 + v14[9], v64);
  v18 = *(v13 + v14[10]);

  v19 = *(v13 + v14[11]);

  v20 = *(v13 + v14[12]);

  v21 = *(v13 + v14[13]);

  v22 = *(v13 + v14[14]);

  v23 = *(v13 + v14[15]);

  v24 = *(v13 + v14[16]);

  v25 = *(v13 + v14[17]);

  v26 = *(v13 + v14[18]);

  v27 = *(v13 + v14[19]);

  v28 = v4 + v7[8];
  v63(v28, v64);
  v29 = type metadata accessor for StaticUser();
  v30 = *(v28 + *(v29 + 20) + 8);

  v63(v28 + *(v29 + 24), v64);
  v31 = *(v4 + v7[12]);

  v32 = *(v4 + v7[13]);

  v33 = *(v4 + v7[14]);

  v34 = *(v4 + v7[15]);

  v35 = *(v4 + v7[16]);

  v36 = *(v4 + v7[17]);

  v37 = *(v4 + v7[18]);

  v38 = *(v4 + v7[20]);

  v39 = v4 + v7[22];
  v40 = type metadata accessor for StaticResident();
  if (!(*(*(v40 - 1) + 48))(v39, 1, v40))
  {
    v63(v39, v64);
    v41 = *(v39 + v40[5] + 8);

    v42 = *(v39 + v40[6] + 8);

    v43 = *(v39 + v40[7]);

    v44 = *(v39 + v40[8]);

    sub_1D1771B5C(*(v39 + v40[9]), *(v39 + v40[9] + 8));
    v63(v39 + v40[10], v64);
  }

  v45 = (v67 + v66 + v65) & ~v65;
  v46 = *(v2 + v69[6]);

  v47 = *(v2 + v69[7]);

  v48 = *(v2 + v69[8]);

  v49 = *(v2 + v69[9]);

  v50 = *(v2 + v69[10]);

  v51 = *(v2 + v69[11]);

  v52 = *(v2 + v69[12]);

  v53 = *(v2 + v69[13]);

  v54 = *(v2 + v69[14]);

  v55 = *(v2 + v69[15]);

  v56 = *(v2 + v69[16]);

  v57 = *(v2 + v69[17]);

  v58 = *(v2 + v69[18]);

  v59 = *(v2 + v69[19]);

  v63(v0 + v45, v64);
  v63(v0 + v45 + v71[5], v64);
  v60 = *(v0 + v45 + v71[6]);

  v61 = *(v0 + v45 + v71[8] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v45 + v70, v68 | v65 | 7);
}

uint64_t sub_1D16EFE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
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

uint64_t sub_1D16EFEBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
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

uint64_t sub_1D16EFF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xAE)
    {
      return v10 - 173;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D16F002C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 - 83;
  }

  return result;
}

uint64_t sub_1D16F028C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66C5C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D16F02F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66C5C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D16F0368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
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

uint64_t sub_1D16F0428(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
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

uint64_t sub_1D16F04F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1D17ACEA8(v2, v3);
}

uint64_t sub_1D16F0638(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CE0, &qword_1D1E738D0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_1D1E669FC();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[10]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[11];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1D16F080C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CE0, &qword_1D1E738D0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = sub_1D1E669FC();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10]) = (a2 - 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[11];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

uint64_t sub_1D16F09E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = sub_1D1E669FC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_1D16F0B6C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5]) = a2 + 1;
    return result;
  }

  v13 = sub_1D1E669FC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1D16F0CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D16F0D54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D16F0DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D88, &unk_1D1E73BE0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1D16F0E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643D88, &unk_1D1E73BE0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1D16F0ED0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1D1E669FC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[7];
    goto LABEL_5;
  }

  if (a2 == 251)
  {
    v14 = *(a1 + a3[8]);
    if (v14 <= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = *(a1 + a3[8]);
    }

    v16 = v15 - 4;
    if (v14 >= 4)
    {
      return v16;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[9];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1D16F1054(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1D1E669FC();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_5;
  }

  if (a3 == 251)
  {
    *(a1 + a4[8]) = a2 + 4;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1D16F11D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_1D16F1244()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D16F12B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D16F12FC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D16F1344()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16F137C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D16F13C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D16F140C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D16F1444()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16F147C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D16F14B4()
{
  v1 = sub_1D1E68A8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

uint64_t sub_1D16F15CC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D16F1688(__int128 *a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = *a2;
  v5 = *a1;
  v6 = v2;
  return CameraController.State.mode.setter(&v5);
}

uint64_t sub_1D16F16CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1D17DCDF4(v2, v3);
}

uint64_t sub_1D16F1710(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1D17DCF60(&v4);
}

unsigned __int8 *sub_1D16F174C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1D17DD07C(&v4);
}

void sub_1D16F17AC(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1D17DD324(v2);
}

void sub_1D16F1804(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1D17DD18C(v2);
}

uint64_t sub_1D16F1848(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D17E183C(v4);
}

uint64_t sub_1D16F18A0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6444F0, &unk_1D1E758E0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D16F18D0()
{
  v1 = type metadata accessor for AccessoryDetails(0);
  v375 = *(*(v1 - 8) + 80);
  v2 = (v375 + 32) & ~v375;
  v373 = *(*(v1 - 8) + 64);
  v3 = *(v0 + 16);
  swift_unknownObjectRelease();
  v376 = v0;
  v374 = v2;
  v4 = v0 + v2;
  type metadata accessor for AccessoryDetails.Payload(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v377 = v0 + v2;
  v378 = v1;
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v94 = sub_1D1E66A7C();
      v95 = *(v94 - 8);
      v96 = *(v95 + 8);
      v96(v4, v94);
      v97 = type metadata accessor for StaticAccessory(0);
      v98 = v97[5];
      v99 = sub_1D1E669FC();
      v365 = *(v99 - 8);
      v369 = *(v365 + 48);
      if (!v369(v4 + v98, 1, v99))
      {
        (*(v365 + 8))(v4 + v98, v99);
      }

      v100 = *(v4 + v97[7] + 8);

      v101 = v4 + v97[8];
      type metadata accessor for StaticAccessory.DeviceIdentifier(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v96(v101, v94);
      }

      else
      {
        v111 = *(v101 + 8);
      }

      v112 = v4 + v97[9];
      v113 = type metadata accessor for StaticDeviceMetadata();
      if (!(*(*(v113 - 1) + 48))(v112, 1, v113))
      {
        v96(v112, v94);
        v114 = *(v112 + v113[5] + 8);

        v115 = *(v112 + v113[6] + 8);

        v116 = *(v112 + v113[7] + 8);

        v117 = *(v112 + v113[8] + 8);
      }

      v118 = v97[10];
      if (!v369(v4 + v118, 1, v99))
      {
        (*(v365 + 8))(v4 + v118, v99);
      }

      v96(v4 + v97[12], v94);
      v119 = *(v4 + v97[13]);

      v120 = *(v4 + v97[14] + 8);

      v121 = *(v4 + v97[20]);

      v122 = *(v4 + v97[21]);

      v123 = v97[22];
      if (!(*(v95 + 48))(v4 + v123, 1, v94))
      {
        v96(v4 + v123, v94);
      }

      v124 = v4 + v97[23];
      v125 = *(v124 + 8);
      if (v125 != 255)
      {
        sub_1D1771B5C(*v124, v125);
      }

      v126 = *(v4 + v97[24] + 8);

      v127 = *(v4 + v97[25]);

      v128 = v4 + v97[30];
      v129 = type metadata accessor for StaticSoftwareUpdate(0);
      if (!(*(*(v129 - 8) + 48))(v128, 1, v129))
      {
        v96(v128, v94);
        v130 = v128 + *(v129 + 20);
        type metadata accessor for StaticSoftwareUpdate.Kind(0);
        v131 = swift_getEnumCaseMultiPayload();
        if (v131 == 2 || v131 == 1)
        {
          v132 = *(v130 + 8);

          updated = type metadata accessor for StaticSoftwareUpdateMetadata(0);
          v134 = updated[5];
          if (!v369(v130 + v134, 1, v99))
          {
            (*(v365 + 8))(v130 + v134, v99);
          }

          v135 = *(v130 + updated[6] + 8);

          v136 = *(v130 + updated[7] + 8);

          v4 = v377;
        }

        else if (!v131)
        {
          v96(v130, v94);
          if (*(v130 + *(type metadata accessor for StaticHH2Update(0) + 24) + 8) >= 2uLL)
          {
          }
        }
      }

      v137 = *(v4 + v97[33]);

      v138 = v4 + v97[38];
      v139 = type metadata accessor for StaticMatterDevice();
      v1 = v378;
      if (!(*(*(v139 - 1) + 48))(v138, 1, v139))
      {
        v96(v138, v94);
        v140 = *(v138 + v139[6] + 8);

        v141 = *(v138 + v139[8]);

        v96(v138 + v139[9], v94);
        v96(v138 + v139[10], v94);
        v142 = *(v138 + v139[11] + 8);

        v96(v138 + v139[12], v94);
        v143 = v139[13];
        if (!v369(v138 + v143, 1, v99))
        {
          (*(v365 + 8))(v138 + v143, v99);
        }

        v144 = *(v138 + v139[14]);

        v145 = (v138 + v139[15]);
        v146 = *(v145 + 1);

        v147 = *(v145 + 3);

        v148 = *(v145 + 5);

        v149 = *(type metadata accessor for MatterTileMetadata() + 44);
        if (!v369(&v145[v149], 1, v99))
        {
          (*(v365 + 8))(&v145[v149], v99);
        }
      }

      goto LABEL_93;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_93;
    }

    v6 = sub_1D1E66A7C();
    v362 = *(v6 - 8);
    v7 = *(v362 + 8);
    v7(v4, v6);
    v8 = type metadata accessor for StaticService(0);
    v9 = *(v4 + v8[5] + 8);

    v368 = v7;
    v7(v4 + v8[11], v6);
    v10 = v4 + v8[13];
    v11 = type metadata accessor for StaticDeviceMetadata();
    if (!(*(*(v11 - 1) + 48))(v10, 1, v11))
    {
      v7(v10, v6);
      v12 = *(v10 + v11[5] + 8);

      v13 = *(v10 + v11[6] + 8);

      v14 = *(v10 + v11[7] + 8);

      v15 = *(v10 + v11[8] + 8);
    }

    v16 = v8[14];
    v17 = sub_1D1E669FC();
    v18 = *(v17 - 8);
    v19 = *(v18 + 48);
    if (!v19(v4 + v16, 1, v17))
    {
      (*(v18 + 8))(v4 + v16, v17);
    }

    v20 = v4;
    v21 = v8[15];
    if (!v19(v20 + v21, 1, v17))
    {
      (*(v18 + 8))(v20 + v21, v17);
    }

    v22 = *(v20 + v8[19]);

    v23 = *(v20 + v8[20] + 8);

    v24 = *(v20 + v8[25] + 8);

    v25 = v8[29];
    v26 = *(v362 + 48);
    if (!v26(v20 + v25, 1, v6))
    {
      v368(v20 + v25, v6);
    }

    v363 = v18;
    v27 = v8[30];
    if (!v26(v20 + v27, 1, v6))
    {
      v368(v20 + v27, v6);
    }

    v28 = *(v20 + v8[31]);

    v29 = *(v20 + v8[32]);

    v30 = (v20 + v8[33]);
    v31 = *v30;

    v32 = v30[1];

    v33 = v20 + v8[34];
    v34 = type metadata accessor for StaticSoftwareUpdate(0);
    v4 = v20;
    if ((*(*(v34 - 8) + 48))(v33, 1, v34))
    {
      goto LABEL_82;
    }

    v368(v33, v6);
    v35 = v33 + *(v34 + 20);
    type metadata accessor for StaticSoftwareUpdate.Kind(0);
    v36 = swift_getEnumCaseMultiPayload();
    if (v36 == 2)
    {
      v360 = *(v35 + 8);

      v151 = type metadata accessor for StaticSoftwareUpdateMetadata(0);
      v152 = v151[5];
      if (v19(v35 + v152, 1, v17))
      {
        goto LABEL_81;
      }
    }

    else
    {
      if (v36 != 1)
      {
        if (!v36)
        {
          v368(v35, v6);
          if (*(v35 + *(type metadata accessor for StaticHH2Update(0) + 24) + 8) >= 2uLL)
          {
          }
        }

LABEL_82:
        v155 = *(v4 + v8[36]);

        v156 = v8[37];
        if (!v26(v4 + v156, 1, v6))
        {
          v368(v4 + v156, v6);
        }

        v157 = v8[39];
        v158 = type metadata accessor for EndpointPath(0);
        v1 = v378;
        if (!(*(*(v158 - 8) + 48))(v4 + v157, 1, v158))
        {
          v368(v4 + v157, v6);
        }

        v159 = v4 + v8[40];
        v160 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
        if (!(*(*(v160 - 8) + 48))(v159, 1, v160))
        {
          if (*(v159 + 16) != 1)
          {
          }

          v161 = v159 + *(v160 + 20);
          v162 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
          if (!(*(*(v162 - 8) + 48))(v161, 1, v162))
          {
            v163 = *(v161 + 8);

            v164 = *(v162 + 24);
            v165 = sub_1D1E66C5C();
            (*(*(v165 - 8) + 8))(v161 + v164, v165);
          }

          v166 = *(v159 + *(v160 + 24));
LABEL_92:

          goto LABEL_93;
        }

        goto LABEL_93;
      }

      v150 = *(v35 + 8);

      v151 = type metadata accessor for StaticSoftwareUpdateMetadata(0);
      v152 = v151[5];
      if (v19(v35 + v152, 1, v17))
      {
LABEL_81:
        v153 = *(v35 + v151[6] + 8);

        v154 = *(v35 + v151[7] + 8);

        v4 = v377;
        goto LABEL_82;
      }
    }

    (*(v363 + 8))(v35 + v152, v17);
    goto LABEL_81;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v102 = sub_1D1E66A7C();
    (*(*(v102 - 8) + 8))(v0 + v2, v102);
    v103 = type metadata accessor for StaticServiceGroup();
    v104 = *(v4 + v103[5] + 8);

    v105 = v103[8];
    v106 = sub_1D1E669FC();
    v107 = *(v106 - 8);
    if (!(*(v107 + 48))(v4 + v105, 1, v106))
    {
      (*(v107 + 8))(v4 + v105, v106);
    }

    v108 = *(v4 + v103[9]);

    v109 = *(v4 + v103[10] + 8);

    v110 = *(v4 + v103[14]);
    goto LABEL_92;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v37 = sub_1D1E66A7C();
    v38 = *(*(v37 - 8) + 8);
    v38(v4, v37);
    v39 = type metadata accessor for StaticEndpoint();
    v38(v4 + v39[5], v37);
    v40 = *(v4 + v39[6] + 8);

    v41 = *(v4 + v39[8]);

    v42 = *(v4 + v39[9]);

    v43 = v4 + v39[10];
    v44 = type metadata accessor for StaticRVCClusterGroup();
    if (!(*(*(v44 - 1) + 48))(v43, 1, v44))
    {
      v38(v43, v37);
      v45 = v43 + v44[6];
      v46 = *(v45 + 16);

      v47 = *(v45 + 24);

      v48 = v43 + v44[7];
      if (*(v48 + 16))
      {

        v49 = *(v48 + 24);
      }

      v50 = *(v43 + v44[9]);

      v51 = *(v43 + v44[10]);

      v52 = *(v43 + v44[11]);

      v53 = (v43 + v44[15]);
      if (*v53)
      {

        v54 = v53[1];

        v55 = v53[2];

        v56 = v53[5];

        if (v53[9] != 1)
        {
        }

        v57 = v53[13];
      }
    }

    v58 = v43 + *(type metadata accessor for StaticClusterGroups() + 20);
    v59 = type metadata accessor for StaticThermostatClusterGroup();
    if (!(*(*(v59 - 1) + 48))(v58, 1, v59))
    {
      v38(v58, v37);
      v60 = (v58 + v59[7]);
      v61 = *(v60 + 1);

      v62 = *(v60 + 2);

      v63 = *(v60 + 3);

      v64 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
      v65 = &v60[v64[9]];
      v66 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
      if (!(*(*(v66 - 8) + 48))(v65, 1, v66))
      {
        v67 = v65[1];
        if (v67 >> 60 != 15)
        {
          sub_1D174E7C4(*v65, v67);
        }

        v68 = *(v66 + 20);
        v69 = sub_1D1E669FC();
        v70 = *(v69 - 8);
        if (!(*(v70 + 48))(v65 + v68, 1, v69))
        {
          (*(v70 + 8))(v65 + v68, v69);
        }
      }

      v71 = &v60[v64[11]];
      v72 = v71[1];
      if (v72 >> 60 != 15)
      {
        sub_1D174E7C4(*v71, v72);
      }

      v73 = &v60[v64[12]];
      v74 = v73[1];
      if (v74 >> 60 != 15)
      {
        sub_1D174E7C4(*v73, v74);
      }

      v75 = v64[13];
      v76 = sub_1D1E669FC();
      v77 = *(v76 - 8);
      v78 = *(v77 + 48);
      if (!v78(&v60[v75], 1, v76))
      {
        (*(v77 + 8))(&v60[v75], v76);
      }

      v79 = v59[8];
      v80 = v79 + *(type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0) + 28);
      if (!v78((v58 + v80), 1, v76))
      {
        (*(v77 + 8))(v58 + v80, v76);
      }

      v81 = v58 + v59[12];
      v82 = type metadata accessor for StaticThermostatClusterGroup.Alvarado();
      v83 = *(v82 + 32);
      if (!v78((v81 + v83), 1, v76))
      {
        (*(v77 + 8))(v81 + v83, v76);
      }

      v84 = *(v82 + 36);
      v1 = v378;
      if (!v78((v81 + v84), 1, v76))
      {
        (*(v77 + 8))(v81 + v84, v76);
      }
    }

    v4 = v377;
    v85 = *(v377 + v39[11]);

    v86 = *(v377 + v39[12]);

    v87 = (v377 + v39[13]);
    v88 = *(v87 + 1);

    v89 = *(v87 + 3);

    v90 = *(v87 + 5);

    v91 = *(type metadata accessor for MatterTileMetadata() + 44);
    v92 = sub_1D1E669FC();
    v93 = *(v92 - 8);
    if (!(*(v93 + 48))(&v87[v91], 1, v92))
    {
      (*(v93 + 8))(&v87[v91], v92);
    }
  }

LABEL_93:
  v167 = v4 + *(v1 + 20);
  v168 = swift_getEnumCaseMultiPayload();
  if (v168 <= 1)
  {
    if (v168)
    {
      if (v168 != 1)
      {
        goto LABEL_187;
      }

      v169 = sub_1D1E66A7C();
      v170 = *(v169 - 8);
      v171 = *(v170 + 8);
      v171(v167, v169);
      v172 = type metadata accessor for StaticService(0);
      v173 = *(v167 + v172[5] + 8);

      v371 = v171;
      v171(v167 + v172[11], v169);
      v174 = v167 + v172[13];
      v175 = type metadata accessor for StaticDeviceMetadata();
      if (!(*(*(v175 - 1) + 48))(v174, 1, v175))
      {
        v171(v174, v169);
        v176 = *(v174 + v175[5] + 8);

        v177 = *(v174 + v175[6] + 8);

        v178 = *(v174 + v175[7] + 8);

        v179 = *(v174 + v175[8] + 8);
      }

      v180 = v172[14];
      v181 = sub_1D1E669FC();
      v182 = *(v181 - 8);
      v183 = *(v182 + 48);
      if (!v183(v167 + v180, 1, v181))
      {
        (*(v182 + 8))(v167 + v180, v181);
      }

      v184 = v172[15];
      if (!v183(v167 + v184, 1, v181))
      {
        (*(v182 + 8))(v167 + v184, v181);
      }

      v364 = v182;
      v185 = *(v167 + v172[19]);

      v186 = *(v167 + v172[20] + 8);

      v187 = *(v167 + v172[25] + 8);

      v188 = v172[29];
      v189 = *(v170 + 48);
      if (!v189(v167 + v188, 1, v169))
      {
        v371(v167 + v188, v169);
      }

      v366 = v183;
      v190 = v172[30];
      if (!v189(v167 + v190, 1, v169))
      {
        v371(v167 + v190, v169);
      }

      v191 = *(v167 + v172[31]);

      v192 = *(v167 + v172[32]);

      v193 = (v167 + v172[33]);
      v194 = *v193;

      v195 = v193[1];

      v196 = v167 + v172[34];
      v197 = type metadata accessor for StaticSoftwareUpdate(0);
      if (!(*(*(v197 - 8) + 48))(v196, 1, v197))
      {
        v371(v196, v169);
        v198 = v196 + *(v197 + 20);
        type metadata accessor for StaticSoftwareUpdate.Kind(0);
        v199 = swift_getEnumCaseMultiPayload();
        if (v199 == 2 || v199 == 1)
        {
          v296 = *(v198 + 8);

          v297 = type metadata accessor for StaticSoftwareUpdateMetadata(0);
          v298 = v297[5];
          if (!v366(v198 + v298, 1, v181))
          {
            (*(v364 + 8))(v198 + v298, v181);
          }

          v299 = *(v198 + v297[6] + 8);

          v300 = *(v198 + v297[7] + 8);
        }

        else
        {
          if (v199)
          {
            goto LABEL_167;
          }

          v371(v198, v169);
          if (*(v198 + *(type metadata accessor for StaticHH2Update(0) + 24) + 8) < 2uLL)
          {
            goto LABEL_167;
          }
        }
      }

LABEL_167:
      v301 = *(v167 + v172[36]);

      v302 = v172[37];
      if (!v189(v167 + v302, 1, v169))
      {
        v371(v167 + v302, v169);
      }

      v303 = v172[39];
      v304 = type metadata accessor for EndpointPath(0);
      v1 = v378;
      if (!(*(*(v304 - 8) + 48))(v167 + v303, 1, v304))
      {
        v371(v167 + v303, v169);
      }

      v305 = v167 + v172[40];
      v306 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
      if (!(*(*(v306 - 8) + 48))(v305, 1, v306))
      {
        if (*(v305 + 16) != 1)
        {
        }

        v307 = v305 + *(v306 + 20);
        v308 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
        if (!(*(*(v308 - 8) + 48))(v307, 1, v308))
        {
          v309 = *(v307 + 8);

          v310 = *(v308 + 24);
          v311 = sub_1D1E66C5C();
          (*(*(v311 - 8) + 8))(v307 + v310, v311);
        }

        v312 = *(v305 + *(v306 + 24));
LABEL_177:

        goto LABEL_187;
      }

      goto LABEL_187;
    }

    v258 = sub_1D1E66A7C();
    v259 = *(v258 - 8);
    v260 = *(v259 + 8);
    v260(v167, v258);
    v261 = type metadata accessor for StaticAccessory(0);
    v262 = v261[5];
    v263 = sub_1D1E669FC();
    v372 = (*(v263 - 8) + 48);
    v367 = *(v263 - 8);
    v370 = *v372;
    if (!(*v372)(v167 + v262, 1))
    {
      (*(v367 + 8))(v167 + v262, v263);
    }

    v264 = *(v167 + v261[7] + 8);

    v265 = v167 + v261[8];
    type metadata accessor for StaticAccessory.DeviceIdentifier(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v260(v265, v258);
    }

    else
    {
      v275 = *(v265 + 8);
    }

    v276 = v167 + v261[9];
    v277 = type metadata accessor for StaticDeviceMetadata();
    if (!(*(*(v277 - 1) + 48))(v276, 1, v277))
    {
      v260(v276, v258);
      v278 = *(v276 + v277[5] + 8);

      v279 = *(v276 + v277[6] + 8);

      v280 = *(v276 + v277[7] + 8);

      v281 = *(v276 + v277[8] + 8);
    }

    v282 = v261[10];
    if (!(v370)(v167 + v282, 1, v263))
    {
      (*(v367 + 8))(v167 + v282, v263);
    }

    v260(v167 + v261[12], v258);
    v283 = *(v167 + v261[13]);

    v284 = *(v167 + v261[14] + 8);

    v285 = *(v167 + v261[20]);

    v286 = *(v167 + v261[21]);

    v287 = v261[22];
    if (!(*(v259 + 48))(v167 + v287, 1, v258))
    {
      v260(v167 + v287, v258);
    }

    v288 = v167 + v261[23];
    v289 = *(v288 + 8);
    if (v289 != 255)
    {
      sub_1D1771B5C(*v288, v289);
    }

    v290 = *(v167 + v261[24] + 8);

    v291 = *(v167 + v261[25]);

    v292 = v167 + v261[30];
    v293 = type metadata accessor for StaticSoftwareUpdate(0);
    if (!(*(*(v293 - 8) + 48))(v292, 1, v293))
    {
      v260(v292, v258);
      v294 = v292 + *(v293 + 20);
      type metadata accessor for StaticSoftwareUpdate.Kind(0);
      v295 = swift_getEnumCaseMultiPayload();
      if (v295 == 2 || v295 == 1)
      {
        v313 = *(v294 + 8);

        v314 = type metadata accessor for StaticSoftwareUpdateMetadata(0);
        v315 = v314[5];
        if (!(v370)(v294 + v315, 1, v263))
        {
          (*(v367 + 8))(v294 + v315, v263);
        }

        v316 = *(v294 + v314[6] + 8);

        v317 = *(v294 + v314[7] + 8);
      }

      else
      {
        if (v295)
        {
          goto LABEL_182;
        }

        v260(v294, v258);
        if (*(v294 + *(type metadata accessor for StaticHH2Update(0) + 24) + 8) < 2uLL)
        {
          goto LABEL_182;
        }
      }
    }

LABEL_182:
    v318 = *(v167 + v261[33]);

    v319 = v167 + v261[38];
    v320 = type metadata accessor for StaticMatterDevice();
    v1 = v378;
    if (!(*(*(v320 - 1) + 48))(v319, 1, v320))
    {
      v260(v319, v258);
      v321 = *(v319 + v320[6] + 8);

      v322 = *(v319 + v320[8]);

      v260(v319 + v320[9], v258);
      v260(v319 + v320[10], v258);
      v323 = *(v319 + v320[11] + 8);

      v260(v319 + v320[12], v258);
      v324 = v320[13];
      if (!(v370)(v319 + v324, 1, v263))
      {
        (*(v367 + 8))(v319 + v324, v263);
      }

      v325 = *(v319 + v320[14]);

      v326 = (v319 + v320[15]);
      v327 = *(v326 + 1);

      v328 = *(v326 + 3);

      v329 = *(v326 + 5);

      v330 = *(type metadata accessor for MatterTileMetadata() + 44);
      if (!(v370)(&v326[v330], 1, v263))
      {
        (*(v367 + 8))(&v326[v330], v263);
      }
    }

    goto LABEL_187;
  }

  if (v168 == 2)
  {
    v266 = sub_1D1E66A7C();
    (*(*(v266 - 8) + 8))(v167, v266);
    v267 = type metadata accessor for StaticServiceGroup();
    v268 = *(v167 + v267[5] + 8);

    v269 = v267[8];
    v270 = sub_1D1E669FC();
    v271 = *(v270 - 8);
    if (!(*(v271 + 48))(v167 + v269, 1, v270))
    {
      (*(v271 + 8))(v167 + v269, v270);
    }

    v272 = *(v167 + v267[9]);

    v273 = *(v167 + v267[10] + 8);

    v274 = *(v167 + v267[14]);
    goto LABEL_177;
  }

  if (v168 == 3)
  {
    v200 = sub_1D1E66A7C();
    v201 = *(*(v200 - 8) + 8);
    v201(v167, v200);
    v202 = type metadata accessor for StaticEndpoint();
    v201(v167 + v202[5], v200);
    v203 = *(v167 + v202[6] + 8);

    v204 = *(v167 + v202[8]);

    v205 = *(v167 + v202[9]);

    v206 = v167 + v202[10];
    v207 = type metadata accessor for StaticRVCClusterGroup();
    if (!(*(*(v207 - 1) + 48))(v206, 1, v207))
    {
      v201(v206, v200);
      v208 = v206 + v207[6];
      v209 = *(v208 + 16);

      v210 = *(v208 + 24);

      v211 = v206 + v207[7];
      if (*(v211 + 16))
      {

        v212 = *(v211 + 24);
      }

      v213 = *(v206 + v207[9]);

      v214 = *(v206 + v207[10]);

      v215 = *(v206 + v207[11]);

      v216 = (v206 + v207[15]);
      if (*v216)
      {

        v217 = v216[1];

        v218 = v216[2];

        v219 = v216[5];

        if (v216[9] != 1)
        {
        }

        v220 = v216[13];
      }
    }

    v221 = v206 + *(type metadata accessor for StaticClusterGroups() + 20);
    v222 = type metadata accessor for StaticThermostatClusterGroup();
    if (!(*(*(v222 - 1) + 48))(v221, 1, v222))
    {
      v201(v221, v200);
      v223 = (v221 + v222[7]);
      v224 = *(v223 + 1);

      v225 = *(v223 + 2);

      v226 = *(v223 + 3);

      v227 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
      v228 = &v223[v227[9]];
      v229 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
      if (!(*(*(v229 - 8) + 48))(v228, 1, v229))
      {
        v230 = v228[1];
        if (v230 >> 60 != 15)
        {
          sub_1D174E7C4(*v228, v230);
        }

        v231 = *(v229 + 20);
        v232 = sub_1D1E669FC();
        v233 = *(v232 - 8);
        if (!(*(v233 + 48))(v228 + v231, 1, v232))
        {
          (*(v233 + 8))(v228 + v231, v232);
        }
      }

      v234 = &v223[v227[11]];
      v235 = v234[1];
      if (v235 >> 60 != 15)
      {
        sub_1D174E7C4(*v234, v235);
      }

      v236 = &v223[v227[12]];
      v237 = v236[1];
      if (v237 >> 60 != 15)
      {
        sub_1D174E7C4(*v236, v237);
      }

      v238 = v227[13];
      v239 = sub_1D1E669FC();
      v240 = *(v239 - 8);
      v241 = *(v240 + 48);
      if (!v241(&v223[v238], 1, v239))
      {
        (*(v240 + 8))(&v223[v238], v239);
      }

      v242 = v222[8];
      v243 = v242 + *(type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0) + 28);
      if (!v241((v221 + v243), 1, v239))
      {
        (*(v240 + 8))(v221 + v243, v239);
      }

      v244 = v221 + v222[12];
      v245 = type metadata accessor for StaticThermostatClusterGroup.Alvarado();
      v246 = *(v245 + 32);
      if (!v241((v244 + v246), 1, v239))
      {
        (*(v240 + 8))(v244 + v246, v239);
      }

      v247 = *(v245 + 36);
      v248 = v241((v244 + v247), 1, v239);
      v1 = v378;
      if (!v248)
      {
        (*(v240 + 8))(v244 + v247, v239);
      }
    }

    v249 = *(v167 + v202[11]);

    v250 = *(v167 + v202[12]);

    v251 = (v167 + v202[13]);
    v252 = *(v251 + 1);

    v253 = *(v251 + 3);

    v254 = *(v251 + 5);

    v255 = *(type metadata accessor for MatterTileMetadata() + 44);
    v256 = sub_1D1E669FC();
    v257 = *(v256 - 8);
    if (!(*(v257 + 48))(&v251[v255], 1, v256))
    {
      (*(v257 + 8))(&v251[v255], v256);
    }
  }

LABEL_187:
  v331 = type metadata accessor for AccessoryDetailsBasicInfo();
  v332 = *(v167 + v331[5] + 8);

  v333 = v167 + v331[6];
  v334 = type metadata accessor for StaticRoom(0);
  if (!(*(*(v334 - 1) + 48))(v333, 1, v334))
  {
    v335 = sub_1D1E66A7C();
    v336 = *(*(v335 - 8) + 8);
    v336(v333, v335);
    v337 = *(v333 + v334[5] + 8);

    v338 = v334[6];
    v339 = sub_1D1E669FC();
    v340 = *(v339 - 8);
    if (!(*(v340 + 48))(v333 + v338, 1, v339))
    {
      (*(v340 + 8))(v333 + v338, v339);
    }

    v341 = *(v333 + v334[8]);

    v336(v333 + v334[9], v335);
    v342 = *(v333 + v334[10]);

    v343 = *(v333 + v334[11]);

    v344 = *(v333 + v334[12]);

    v345 = *(v333 + v334[13]);

    v346 = *(v333 + v334[14]);

    v347 = *(v333 + v334[15]);

    v348 = *(v333 + v334[16]);

    v349 = *(v333 + v334[17]);

    v350 = *(v333 + v334[18]);

    v351 = *(v333 + v334[19]);

    v1 = v378;
  }

  v352 = *(v167 + v331[7] + 8);

  v353 = v377 + *(v1 + 24);
  v354 = type metadata accessor for StaticDeviceMetadata();
  if (!(*(*(v354 - 1) + 48))(v353, 1, v354))
  {
    v355 = sub_1D1E66A7C();
    (*(*(v355 - 8) + 8))(v353, v355);
    v356 = *(v353 + v354[5] + 8);

    v357 = *(v353 + v354[6] + 8);

    v358 = *(v353 + v354[7] + 8);

    v359 = *(v353 + v354[8] + 8);
  }

  return MEMORY[0x1EEE6BDD0](v376, v374 + v373, v375 | 7);
}

uint64_t sub_1D16F4110@<X0>(_BYTE *a1@<X8>)
{
  result = AccessoryDetails.updateState.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1D16F414C(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for AccessoryDetails(0);
  *(a2 + *(result + 28)) = v3;
  return result;
}

uint64_t sub_1D16F4180(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for AccessoryDetails.Payload(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AccessoryDetailsBasicInfo();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 <= 8)
  {
    v17 = 8;
  }

  else
  {
    v17 = *(a1 + a3[7]);
  }

  v18 = v17 - 8;
  if (v16 >= 2)
  {
    return v18;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D16F42E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for AccessoryDetails.Payload(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for AccessoryDetailsBasicInfo();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = a2 + 8;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_1D16F4460(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1D1DE83C0(v2);
}

uint64_t sub_1D16F44CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return AccessoryDetailsBasicInfo.roomName.setter(v1, v2);
}

uint64_t sub_1D16F4510(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for AccessoryDetailsBasicInfo();
  *(a2 + *(result + 32)) = v3;
  return result;
}

uint64_t sub_1D16F4548(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for AccessoryDetailsBasicInfo();
  *(a2 + *(result + 36)) = v3;
  return result;
}

uint64_t sub_1D16F457C@<X0>(_BYTE *a1@<X8>)
{
  result = AccessoryDetailsBasicInfo.iconSymbol.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1D16F45F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryDetails.Payload(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643878, &qword_1D1E72030);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1D16F4730(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccessoryDetails.Payload(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643878, &qword_1D1E72030);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D16F4864()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryDetailsBasicInfo();
  v205 = *(*(v2 - 8) + 80);
  v3 = (v205 + 24) & ~v205;
  v203 = *(*(v2 - 8) + 64);

  v204 = v3;
  v4 = v1 + v3;
  type metadata accessor for AccessoryDetails.Payload(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v206 = v2;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_95;
      }

      v6 = sub_1D1E66A7C();
      v7 = *(v6 - 8);
      v8 = *(v7 + 8);
      v8(v4, v6);
      v9 = type metadata accessor for StaticService(0);
      v10 = *(v4 + v9[5] + 8);

      v198 = v8;
      v8(v4 + v9[11], v6);
      v11 = v4 + v9[13];
      v12 = type metadata accessor for StaticDeviceMetadata();
      if (!(*(*(v12 - 1) + 48))(v11, 1, v12))
      {
        v8(v11, v6);
        v13 = *(v11 + v12[5] + 8);

        v14 = *(v11 + v12[6] + 8);

        v15 = *(v11 + v12[7] + 8);

        v16 = *(v11 + v12[8] + 8);
      }

      v17 = v9[14];
      v18 = sub_1D1E669FC();
      v19 = *(v18 - 8);
      v20 = *(v19 + 48);
      if (!v20(v4 + v17, 1, v18))
      {
        (*(v19 + 8))(v4 + v17, v18);
      }

      v21 = v9[15];
      if (!v20(v4 + v21, 1, v18))
      {
        (*(v19 + 8))(v4 + v21, v18);
      }

      v195 = v19;
      v22 = *(v4 + v9[19]);

      v23 = *(v4 + v9[20] + 8);

      v24 = *(v4 + v9[25] + 8);

      v25 = v9[29];
      v26 = *(v7 + 48);
      if (!v26(v4 + v25, 1, v6))
      {
        v8(v4 + v25, v6);
      }

      v200 = v1;
      v27 = v9[30];
      if (!v26(v4 + v27, 1, v6))
      {
        v8(v4 + v27, v6);
      }

      v28 = *(v4 + v9[31]);

      v29 = *(v4 + v9[32]);

      v30 = (v4 + v9[33]);
      v31 = *v30;

      v32 = v30[1];

      v33 = v4 + v9[34];
      v34 = type metadata accessor for StaticSoftwareUpdate(0);
      if (!(*(*(v34 - 8) + 48))(v33, 1, v34))
      {
        v8(v33, v6);
        v35 = v33 + *(v34 + 20);
        type metadata accessor for StaticSoftwareUpdate.Kind(0);
        v36 = swift_getEnumCaseMultiPayload();
        if (v36 == 2 || v36 == 1)
        {
          v134 = *(v35 + 8);

          updated = type metadata accessor for StaticSoftwareUpdateMetadata(0);
          v194 = updated[5];
          if (!v20(v35 + v194, 1, v18))
          {
            (*(v195 + 8))(v35 + v194, v18);
          }

          v136 = *(v35 + updated[6] + 8);

          v137 = *(v35 + updated[7] + 8);
        }

        else
        {
          if (v36)
          {
            goto LABEL_75;
          }

          v8(v35, v6);
          if (*(v35 + *(type metadata accessor for StaticHH2Update(0) + 24) + 8) < 2uLL)
          {
            goto LABEL_75;
          }
        }
      }

LABEL_75:
      v138 = *(v4 + v9[36]);

      v139 = v9[37];
      if (!v26(v4 + v139, 1, v6))
      {
        v198(v4 + v139, v6);
      }

      v140 = v9[39];
      v141 = type metadata accessor for EndpointPath(0);
      v1 = v200;
      if (!(*(*(v141 - 8) + 48))(v4 + v140, 1, v141))
      {
        v198(v4 + v140, v6);
      }

      v142 = v4 + v9[40];
      v143 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
      if (!(*(*(v143 - 8) + 48))(v142, 1, v143))
      {
        if (*(v142 + 16) != 1)
        {
        }

        v144 = v142 + *(v143 + 20);
        v145 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
        if (!(*(*(v145 - 8) + 48))(v144, 1, v145))
        {
          v146 = *(v144 + 8);

          v147 = *(v145 + 24);
          v148 = sub_1D1E66C5C();
          (*(*(v148 - 8) + 8))(v144 + v147, v148);
        }

        v149 = *(v142 + *(v143 + 24));
LABEL_85:

        goto LABEL_95;
      }

      goto LABEL_95;
    }

    v96 = sub_1D1E66A7C();
    v97 = *(v96 - 8);
    v98 = *(v97 + 8);
    v98(v4, v96);
    v99 = type metadata accessor for StaticAccessory(0);
    v100 = v99[5];
    v101 = sub_1D1E669FC();
    v196 = *(v101 - 8);
    v197 = *(v196 + 48);
    if (!v197(v4 + v100, 1, v101))
    {
      (*(v196 + 8))(v4 + v100, v101);
    }

    v199 = v101;
    v102 = *(v4 + v99[7] + 8);

    v103 = v4 + v99[8];
    type metadata accessor for StaticAccessory.DeviceIdentifier(0);
    v202 = v1;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v98(v103, v96);
    }

    else
    {
      v113 = *(v103 + 8);
    }

    v114 = v4 + v99[9];
    v115 = type metadata accessor for StaticDeviceMetadata();
    if (!(*(*(v115 - 1) + 48))(v114, 1, v115))
    {
      v98(v114, v96);
      v116 = *(v114 + v115[5] + 8);

      v117 = *(v114 + v115[6] + 8);

      v118 = *(v114 + v115[7] + 8);

      v119 = *(v114 + v115[8] + 8);
    }

    v120 = v99[10];
    if (!v197(v4 + v120, 1, v199))
    {
      (*(v196 + 8))(v4 + v120, v199);
    }

    v98(v4 + v99[12], v96);
    v121 = *(v4 + v99[13]);

    v122 = *(v4 + v99[14] + 8);

    v123 = *(v4 + v99[20]);

    v124 = *(v4 + v99[21]);

    v125 = v99[22];
    if (!(*(v97 + 48))(v4 + v125, 1, v96))
    {
      v98(v4 + v125, v96);
    }

    v126 = v4 + v99[23];
    v127 = *(v126 + 8);
    if (v127 != 255)
    {
      sub_1D1771B5C(*v126, v127);
    }

    v128 = *(v4 + v99[24] + 8);

    v129 = *(v4 + v99[25]);

    v130 = v4 + v99[30];
    v131 = type metadata accessor for StaticSoftwareUpdate(0);
    if (!(*(*(v131 - 8) + 48))(v130, 1, v131))
    {
      v98(v130, v96);
      v132 = v130 + *(v131 + 20);
      type metadata accessor for StaticSoftwareUpdate.Kind(0);
      v133 = swift_getEnumCaseMultiPayload();
      if (v133 == 2 || v133 == 1)
      {
        v150 = *(v132 + 8);

        v151 = type metadata accessor for StaticSoftwareUpdateMetadata(0);
        v152 = v151[5];
        if (!v197(v132 + v152, 1, v199))
        {
          (*(v196 + 8))(v132 + v152, v199);
        }

        v153 = *(v132 + v151[6] + 8);

        v154 = *(v132 + v151[7] + 8);
      }

      else
      {
        if (v133)
        {
          goto LABEL_90;
        }

        v98(v132, v96);
        if (*(v132 + *(type metadata accessor for StaticHH2Update(0) + 24) + 8) < 2uLL)
        {
          goto LABEL_90;
        }
      }
    }

LABEL_90:
    v155 = *(v4 + v99[33]);

    v156 = v4 + v99[38];
    v157 = type metadata accessor for StaticMatterDevice();
    v1 = v202;
    if (!(*(*(v157 - 1) + 48))(v156, 1, v157))
    {
      v98(v156, v96);
      v158 = *(v156 + v157[6] + 8);

      v159 = *(v156 + v157[8]);

      v98(v156 + v157[9], v96);
      v98(v156 + v157[10], v96);
      v160 = *(v156 + v157[11] + 8);

      v98(v156 + v157[12], v96);
      v161 = v157[13];
      if (!v197(v156 + v161, 1, v199))
      {
        (*(v196 + 8))(v156 + v161, v199);
      }

      v162 = *(v156 + v157[14]);

      v163 = (v156 + v157[15]);
      v164 = *(v163 + 1);

      v165 = *(v163 + 3);

      v166 = *(v163 + 5);

      v167 = *(type metadata accessor for MatterTileMetadata() + 44);
      if (!v197(&v163[v167], 1, v199))
      {
        (*(v196 + 8))(&v163[v167], v199);
      }
    }

    goto LABEL_95;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v104 = sub_1D1E66A7C();
    (*(*(v104 - 8) + 8))(v1 + v3, v104);
    v105 = type metadata accessor for StaticServiceGroup();
    v106 = *(v4 + v105[5] + 8);

    v107 = v105[8];
    v108 = sub_1D1E669FC();
    v109 = *(v108 - 8);
    if (!(*(v109 + 48))(v4 + v107, 1, v108))
    {
      (*(v109 + 8))(v4 + v107, v108);
    }

    v110 = *(v4 + v105[9]);

    v111 = *(v4 + v105[10] + 8);

    v112 = *(v4 + v105[14]);
    goto LABEL_85;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v37 = sub_1D1E66A7C();
    v38 = *(*(v37 - 8) + 8);
    v38(v4, v37);
    v39 = type metadata accessor for StaticEndpoint();
    v38(v4 + v39[5], v37);
    v40 = *(v4 + v39[6] + 8);

    v41 = *(v4 + v39[8]);

    v42 = *(v4 + v39[9]);

    v43 = v4 + v39[10];
    v44 = type metadata accessor for StaticRVCClusterGroup();
    if (!(*(*(v44 - 1) + 48))(v43, 1, v44))
    {
      v45 = v1;
      v38(v43, v37);
      v46 = v43 + v44[6];
      v47 = *(v46 + 16);

      v48 = *(v46 + 24);

      v49 = v43 + v44[7];
      if (*(v49 + 16))
      {

        v50 = *(v49 + 24);
      }

      v51 = *(v43 + v44[9]);

      v52 = *(v43 + v44[10]);

      v53 = *(v43 + v44[11]);

      v54 = (v43 + v44[15]);
      v1 = v45;
      if (*v54)
      {

        v55 = v54[1];

        v56 = v54[2];

        v57 = v54[5];

        if (v54[9] != 1)
        {
        }

        v58 = v54[13];
      }
    }

    v59 = v43 + *(type metadata accessor for StaticClusterGroups() + 20);
    v60 = type metadata accessor for StaticThermostatClusterGroup();
    if (!(*(*(v60 - 1) + 48))(v59, 1, v60))
    {
      v201 = v1;
      v38(v59, v37);
      v61 = (v59 + v60[7]);
      v62 = *(v61 + 1);

      v63 = *(v61 + 2);

      v64 = *(v61 + 3);

      v65 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
      v66 = &v61[v65[9]];
      v67 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
      if (!(*(*(v67 - 8) + 48))(v66, 1, v67))
      {
        v68 = v66[1];
        if (v68 >> 60 != 15)
        {
          sub_1D174E7C4(*v66, v68);
        }

        v69 = *(v67 + 20);
        v70 = sub_1D1E669FC();
        v71 = *(v70 - 8);
        if (!(*(v71 + 48))(v66 + v69, 1, v70))
        {
          (*(v71 + 8))(v66 + v69, v70);
        }
      }

      v72 = &v61[v65[11]];
      v73 = v72[1];
      if (v73 >> 60 != 15)
      {
        sub_1D174E7C4(*v72, v73);
      }

      v74 = &v61[v65[12]];
      v75 = v74[1];
      if (v75 >> 60 != 15)
      {
        sub_1D174E7C4(*v74, v75);
      }

      v76 = v65[13];
      v77 = sub_1D1E669FC();
      v78 = *(v77 - 8);
      v79 = *(v78 + 48);
      if (!v79(&v61[v76], 1, v77))
      {
        (*(v78 + 8))(&v61[v76], v77);
      }

      v80 = v60[8];
      v81 = v80 + *(type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0) + 28);
      if (!v79((v59 + v81), 1, v77))
      {
        (*(v78 + 8))(v59 + v81, v77);
      }

      v82 = v59 + v60[12];
      v83 = type metadata accessor for StaticThermostatClusterGroup.Alvarado();
      v84 = *(v83 + 32);
      if (!v79((v82 + v84), 1, v77))
      {
        (*(v78 + 8))(v82 + v84, v77);
      }

      v85 = *(v83 + 36);
      v86 = v79((v82 + v85), 1, v77);
      v1 = v201;
      if (!v86)
      {
        (*(v78 + 8))(v82 + v85, v77);
      }
    }

    v87 = *(v4 + v39[11]);

    v88 = *(v4 + v39[12]);

    v89 = (v4 + v39[13]);
    v90 = *(v89 + 1);

    v91 = *(v89 + 3);

    v92 = *(v89 + 5);

    v93 = *(type metadata accessor for MatterTileMetadata() + 44);
    v94 = sub_1D1E669FC();
    v95 = *(v94 - 8);
    if (!(*(v95 + 48))(&v89[v93], 1, v94))
    {
      (*(v95 + 8))(&v89[v93], v94);
    }
  }

LABEL_95:
  v168 = v206;
  v169 = *(v4 + *(v206 + 20) + 8);

  v170 = v4 + *(v206 + 24);
  v171 = type metadata accessor for StaticRoom(0);
  if (!(*(*(v171 - 1) + 48))(v170, 1, v171))
  {
    v172 = v1;
    v173 = sub_1D1E66A7C();
    v174 = *(*(v173 - 8) + 8);
    v174(v170, v173);
    v175 = *(v170 + v171[5] + 8);

    v176 = v171[6];
    v177 = sub_1D1E669FC();
    v178 = *(v177 - 8);
    if (!(*(v178 + 48))(v170 + v176, 1, v177))
    {
      (*(v178 + 8))(v170 + v176, v177);
    }

    v179 = *(v170 + v171[8]);

    v174(v170 + v171[9], v173);
    v180 = *(v170 + v171[10]);

    v181 = *(v170 + v171[11]);

    v182 = *(v170 + v171[12]);

    v183 = *(v170 + v171[13]);

    v184 = *(v170 + v171[14]);

    v185 = *(v170 + v171[15]);

    v186 = *(v170 + v171[16]);

    v187 = *(v170 + v171[17]);

    v188 = *(v170 + v171[18]);

    v189 = *(v170 + v171[19]);

    v1 = v172;
    v168 = v206;
  }

  v190 = (v203 + v204 + 7) & 0xFFFFFFFFFFFFFFF8;
  v191 = *(v4 + *(v168 + 28) + 8);

  v192 = *(v1 + v190 + 8);

  return MEMORY[0x1EEE6BDD0](v1, v190 + 16, v205 | 7);
}

uint64_t sub_1D16F5D48()
{
  v1 = type metadata accessor for AccessoryDetailsBasicInfo();
  v2 = *(*(v1 - 8) + 80);
  v199 = *(*(v1 - 8) + 64);
  v3 = *(v0 + 16);
  swift_unknownObjectRelease();

  v200 = (v2 + 48) & ~v2;
  v4 = v0 + v200;
  type metadata accessor for AccessoryDetails.Payload(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v201 = v1;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_95;
      }

      v6 = sub_1D1E66A7C();
      v188 = *(v6 - 8);
      v7 = *(v188 + 8);
      v7(v0 + ((v2 + 48) & ~v2), v6);
      v8 = type metadata accessor for StaticService(0);
      v9 = *(v4 + v8[5] + 8);

      v193 = v7;
      v7(v4 + v8[11], v6);
      v10 = v4 + v8[13];
      v11 = type metadata accessor for StaticDeviceMetadata();
      if (!(*(*(v11 - 1) + 48))(v10, 1, v11))
      {
        v7(v10, v6);
        v12 = *(v10 + v11[5] + 8);

        v13 = *(v10 + v11[6] + 8);

        v14 = *(v10 + v11[7] + 8);

        v15 = *(v10 + v11[8] + 8);
      }

      v16 = v8[14];
      v17 = sub_1D1E669FC();
      v18 = *(v17 - 8);
      v19 = *(v18 + 48);
      if (!v19(v4 + v16, 1, v17))
      {
        (*(v18 + 8))(v4 + v16, v17);
      }

      v20 = v8[15];
      if (!v19(v4 + v20, 1, v17))
      {
        (*(v18 + 8))(v4 + v20, v17);
      }

      v187 = v18;
      v21 = *(v4 + v8[19]);

      v22 = *(v4 + v8[20] + 8);

      v23 = *(v4 + v8[25] + 8);

      v24 = v8[29];
      v25 = *(v188 + 48);
      if (!v25(v4 + v24, 1, v6))
      {
        v193(v4 + v24, v6);
      }

      v196 = v2;
      v26 = v8[30];
      if (!v25(v4 + v26, 1, v6))
      {
        v193(v4 + v26, v6);
      }

      v27 = *(v4 + v8[31]);

      v28 = *(v4 + v8[32]);

      v29 = (v4 + v8[33]);
      v30 = *v29;

      v31 = v29[1];

      v32 = v4 + v8[34];
      v33 = type metadata accessor for StaticSoftwareUpdate(0);
      if (!(*(*(v33 - 8) + 48))(v32, 1, v33))
      {
        v193(v32, v6);
        v34 = v32 + *(v33 + 20);
        type metadata accessor for StaticSoftwareUpdate.Kind(0);
        v35 = swift_getEnumCaseMultiPayload();
        if (v35 == 2 || v35 == 1)
        {
          v128 = *(v34 + 8);

          updated = type metadata accessor for StaticSoftwareUpdateMetadata(0);
          v190 = updated[5];
          if (!v19(v34 + v190, 1, v17))
          {
            (*(v187 + 8))(v34 + v190, v17);
          }

          v130 = *(v34 + updated[6] + 8);

          v131 = *(v34 + updated[7] + 8);
        }

        else
        {
          if (v35)
          {
            goto LABEL_75;
          }

          v193(v34, v6);
          if (*(v34 + *(type metadata accessor for StaticHH2Update(0) + 24) + 8) < 2uLL)
          {
            goto LABEL_75;
          }
        }
      }

LABEL_75:
      v132 = *(v4 + v8[36]);

      v133 = v8[37];
      if (!v25(v4 + v133, 1, v6))
      {
        v193(v4 + v133, v6);
      }

      v134 = v8[39];
      v135 = type metadata accessor for EndpointPath(0);
      v2 = v196;
      if (!(*(*(v135 - 8) + 48))(v4 + v134, 1, v135))
      {
        v193(v4 + v134, v6);
      }

      v136 = v4 + v8[40];
      v137 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
      if (!(*(*(v137 - 8) + 48))(v136, 1, v137))
      {
        if (*(v136 + 16) != 1)
        {
        }

        v138 = v136 + *(v137 + 20);
        v139 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
        if (!(*(*(v139 - 8) + 48))(v138, 1, v139))
        {
          v140 = *(v138 + 8);

          v141 = *(v139 + 24);
          v142 = sub_1D1E66C5C();
          (*(*(v142 - 8) + 8))(v138 + v141, v142);
        }

        v143 = *(v136 + *(v137 + 24));
LABEL_85:

        goto LABEL_95;
      }

      goto LABEL_95;
    }

    v91 = sub_1D1E66A7C();
    v92 = *(v91 - 8);
    v93 = *(v92 + 8);
    v93(v0 + ((v2 + 48) & ~v2), v91);
    v94 = type metadata accessor for StaticAccessory(0);
    v95 = v94[5];
    v195 = sub_1D1E669FC();
    v189 = *(v195 - 8);
    v192 = *(v189 + 48);
    if (!v192(v4 + v95, 1))
    {
      (*(v189 + 8))(v4 + v95, v195);
    }

    v96 = *(v4 + v94[7] + 8);

    v97 = v4 + v94[8];
    type metadata accessor for StaticAccessory.DeviceIdentifier(0);
    v198 = v2;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v93(v97, v91);
    }

    else
    {
      v107 = *(v97 + 8);
    }

    v108 = v4 + v94[9];
    v109 = type metadata accessor for StaticDeviceMetadata();
    if (!(*(*(v109 - 1) + 48))(v108, 1, v109))
    {
      v93(v108, v91);
      v110 = *(v108 + v109[5] + 8);

      v111 = *(v108 + v109[6] + 8);

      v112 = *(v108 + v109[7] + 8);

      v113 = *(v108 + v109[8] + 8);
    }

    v114 = v94[10];
    if (!(v192)(v4 + v114, 1, v195))
    {
      (*(v189 + 8))(v4 + v114, v195);
    }

    v93(v4 + v94[12], v91);
    v115 = *(v4 + v94[13]);

    v116 = *(v4 + v94[14] + 8);

    v117 = *(v4 + v94[20]);

    v118 = *(v4 + v94[21]);

    v119 = v94[22];
    if (!(*(v92 + 48))(v4 + v119, 1, v91))
    {
      v93(v4 + v119, v91);
    }

    v120 = v4 + v94[23];
    v121 = *(v120 + 8);
    if (v121 != 255)
    {
      sub_1D1771B5C(*v120, v121);
    }

    v122 = *(v4 + v94[24] + 8);

    v123 = *(v4 + v94[25]);

    v124 = v4 + v94[30];
    v125 = type metadata accessor for StaticSoftwareUpdate(0);
    if (!(*(*(v125 - 8) + 48))(v124, 1, v125))
    {
      v93(v124, v91);
      v126 = v124 + *(v125 + 20);
      type metadata accessor for StaticSoftwareUpdate.Kind(0);
      v127 = swift_getEnumCaseMultiPayload();
      if (v127 == 2 || v127 == 1)
      {
        v144 = *(v126 + 8);

        v145 = type metadata accessor for StaticSoftwareUpdateMetadata(0);
        v146 = v145[5];
        if (!(v192)(v126 + v146, 1, v195))
        {
          (*(v189 + 8))(v126 + v146, v195);
        }

        v147 = *(v126 + v145[6] + 8);

        v148 = *(v126 + v145[7] + 8);
      }

      else
      {
        if (v127)
        {
          goto LABEL_90;
        }

        v93(v126, v91);
        if (*(v126 + *(type metadata accessor for StaticHH2Update(0) + 24) + 8) < 2uLL)
        {
          goto LABEL_90;
        }
      }
    }

LABEL_90:
    v149 = *(v4 + v94[33]);

    v150 = v4 + v94[38];
    v151 = type metadata accessor for StaticMatterDevice();
    v2 = v198;
    if (!(*(*(v151 - 1) + 48))(v150, 1, v151))
    {
      v93(v150, v91);
      v152 = *(v150 + v151[6] + 8);

      v153 = *(v150 + v151[8]);

      v93(v150 + v151[9], v91);
      v93(v150 + v151[10], v91);
      v154 = *(v150 + v151[11] + 8);

      v93(v150 + v151[12], v91);
      v155 = v151[13];
      if (!(v192)(v150 + v155, 1, v195))
      {
        (*(v189 + 8))(v150 + v155, v195);
      }

      v156 = *(v150 + v151[14]);

      v157 = (v150 + v151[15]);
      v158 = *(v157 + 1);

      v159 = *(v157 + 3);

      v160 = *(v157 + 5);

      v161 = *(type metadata accessor for MatterTileMetadata() + 44);
      if (!(v192)(&v157[v161], 1, v195))
      {
        (*(v189 + 8))(&v157[v161], v195);
      }
    }

    goto LABEL_95;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v98 = sub_1D1E66A7C();
    (*(*(v98 - 8) + 8))(v0 + ((v2 + 48) & ~v2), v98);
    v99 = type metadata accessor for StaticServiceGroup();
    v100 = *(v4 + v99[5] + 8);

    v101 = v99[8];
    v102 = sub_1D1E669FC();
    v103 = *(v102 - 8);
    if (!(*(v103 + 48))(v4 + v101, 1, v102))
    {
      (*(v103 + 8))(v4 + v101, v102);
    }

    v104 = *(v4 + v99[9]);

    v105 = *(v4 + v99[10] + 8);

    v106 = *(v4 + v99[14]);
    goto LABEL_85;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v197 = v2;
    v36 = sub_1D1E66A7C();
    v37 = *(*(v36 - 8) + 8);
    v37(v4, v36);
    v38 = type metadata accessor for StaticEndpoint();
    v37(v4 + v38[5], v36);
    v39 = *(v4 + v38[6] + 8);

    v40 = *(v4 + v38[8]);

    v41 = *(v4 + v38[9]);

    v42 = v4 + v38[10];
    v43 = type metadata accessor for StaticRVCClusterGroup();
    if (!(*(*(v43 - 1) + 48))(v42, 1, v43))
    {
      v37(v42, v36);
      v44 = v42 + v43[6];
      v45 = *(v44 + 16);

      v46 = *(v44 + 24);

      v47 = v42 + v43[7];
      if (*(v47 + 16))
      {

        v48 = *(v47 + 24);
      }

      v49 = *(v42 + v43[9]);

      v50 = *(v42 + v43[10]);

      v51 = *(v42 + v43[11]);

      v52 = (v42 + v43[15]);
      if (*v52)
      {

        v53 = v52[1];

        v54 = v52[2];

        v55 = v52[5];

        if (v52[9] != 1)
        {
        }

        v56 = v52[13];
      }
    }

    v57 = v42 + *(type metadata accessor for StaticClusterGroups() + 20);
    v58 = type metadata accessor for StaticThermostatClusterGroup();
    if (!(*(*(v58 - 1) + 48))(v57, 1, v58))
    {
      v37(v57, v36);
      v59 = (v57 + v58[7]);
      v60 = *(v59 + 1);

      v61 = *(v59 + 2);

      v62 = *(v59 + 3);

      v63 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
      v64 = &v59[v63[9]];
      v65 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
      if (!(*(*(v65 - 8) + 48))(v64, 1, v65))
      {
        v66 = v64[1];
        if (v66 >> 60 != 15)
        {
          sub_1D174E7C4(*v64, v66);
        }

        v67 = *(v65 + 20);
        v68 = sub_1D1E669FC();
        v191 = *(v68 - 8);
        if (!(*(v191 + 48))(v64 + v67, 1, v68))
        {
          (*(v191 + 8))(v64 + v67, v68);
        }
      }

      v69 = &v59[v63[11]];
      v70 = v69[1];
      if (v70 >> 60 != 15)
      {
        sub_1D174E7C4(*v69, v70);
      }

      v71 = &v59[v63[12]];
      v72 = v71[1];
      if (v72 >> 60 != 15)
      {
        sub_1D174E7C4(*v71, v72);
      }

      v73 = v63[13];
      v74 = sub_1D1E669FC();
      v194 = *(v74 - 8);
      v75 = *(v194 + 48);
      if (!v75(&v59[v73], 1, v74))
      {
        (*(v194 + 8))(&v59[v73], v74);
      }

      v76 = v58[8];
      v77 = v76 + *(type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0) + 28);
      if (!v75((v57 + v77), 1, v74))
      {
        (*(v194 + 8))(v57 + v77, v74);
      }

      v78 = v57 + v58[12];
      v79 = type metadata accessor for StaticThermostatClusterGroup.Alvarado();
      v80 = *(v79 + 32);
      if (!v75((v78 + v80), 1, v74))
      {
        (*(v194 + 8))(v78 + v80, v74);
      }

      v81 = *(v79 + 36);
      if (!v75((v78 + v81), 1, v74))
      {
        (*(v194 + 8))(v78 + v81, v74);
      }
    }

    v82 = *(v4 + v38[11]);

    v83 = *(v4 + v38[12]);

    v84 = (v4 + v38[13]);
    v85 = *(v84 + 1);

    v86 = *(v84 + 3);

    v87 = *(v84 + 5);

    v88 = *(type metadata accessor for MatterTileMetadata() + 44);
    v89 = sub_1D1E669FC();
    v90 = *(v89 - 8);
    v2 = v197;
    if (!(*(v90 + 48))(&v84[v88], 1, v89))
    {
      (*(v90 + 8))(&v84[v88], v89);
    }
  }

LABEL_95:
  v162 = v201;
  v163 = *(v4 + *(v201 + 20) + 8);

  v164 = v4 + *(v201 + 24);
  v165 = type metadata accessor for StaticRoom(0);
  if (!(*(*(v165 - 1) + 48))(v164, 1, v165))
  {
    v166 = sub_1D1E66A7C();
    v167 = *(*(v166 - 8) + 8);
    v167(v164, v166);
    v168 = *(v164 + v165[5] + 8);

    v169 = v165[6];
    v170 = sub_1D1E669FC();
    v171 = *(v170 - 8);
    if (!(*(v171 + 48))(v164 + v169, 1, v170))
    {
      (*(v171 + 8))(v164 + v169, v170);
    }

    v172 = *(v164 + v165[8]);

    v167(v164 + v165[9], v166);
    v173 = *(v164 + v165[10]);

    v174 = *(v164 + v165[11]);

    v175 = *(v164 + v165[12]);

    v176 = *(v164 + v165[13]);

    v177 = *(v164 + v165[14]);

    v178 = *(v164 + v165[15]);

    v179 = *(v164 + v165[16]);

    v180 = *(v164 + v165[17]);

    v181 = *(v164 + v165[18]);

    v182 = *(v164 + v165[19]);

    v162 = v201;
  }

  v183 = (v199 + v200 + 7) & 0xFFFFFFFFFFFFFFF8;
  v184 = *(v4 + *(v162 + 28) + 8);

  v185 = *(v0 + v183 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v183 + 16, v2 | 7);
}

uint64_t sub_1D16F72B8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D1E671BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D16F7364(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D1E671BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D16F7408(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1D16F74DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v4 = a1[1];
  v5 = a1[3];
  sub_1D1E6728C();
  sub_1D1E671DC();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1D16F7574@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1D16F75A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for StaticCharacteristic();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D16F7694(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for StaticCharacteristic();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D16F77A0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16F77D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D16F7888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
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

uint64_t sub_1D16F7948(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
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

uint64_t sub_1D16F7A04()
{
  v1 = *(v0 + 40);
  if (v1 != 255)
  {
    sub_1D1780640(*(v0 + 16), *(v0 + 24), *(v0 + 32), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1D16F7A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *(a1 + 24);
    if (v4 > 3)
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
    v8 = sub_1D1E66A7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D16F7AF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *(result + 24) = -a2;
  }

  else
  {
    v7 = sub_1D1E66A7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D16F7BA4()
{
  MEMORY[0x1D3893750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16F7C00()
{
  v1 = (type metadata accessor for StaticAlarm() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + v3 + 24);

  v7 = *(v0 + v3 + 32);

  v8 = v1[11];
  v9 = sub_1D1E66A7C();
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v3 + v8, v9);
  v10(v0 + v3 + v1[12], v9);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D16F7D6C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D1E66A7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D16F7E18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D1E66A7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D16F7F0C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D1E669FC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[7] + 8);
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

  else
  {
    v14 = sub_1D1E66A7C();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[10];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1D16F8044(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1D1E669FC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[7] + 8) = a2;
  }

  else
  {
    v13 = sub_1D1E66A7C();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[10];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1D16F8180@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_managers;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_1D16F81E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_currentHome;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1D16F824C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D16F8290()
{
  MEMORY[0x1D3893750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16F832C()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1D16F8458()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D16F8490()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D16F8554()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + v5));

  return MEMORY[0x1EEE6BDD0](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1D16F8650()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64) + 7;
  v6 = (v5 + v4) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v3 + v7 + 8) & ~v3;
  v9 = (v5 + v8) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + v6));

  v10(v0 + v8, v1);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 8, v3 | 7);
}

uint64_t sub_1D16F8770()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + v5));

  return MEMORY[0x1EEE6BDD0](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1D16F8874()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645B10, &qword_1D1E7BCB8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v12 = *(v0 + v11);

  return MEMORY[0x1EEE6BDD0](v0, ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v10 | 7);
}

uint64_t sub_1D16F89EC()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1D16F8B2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16F8B64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = HMAccessory.shouldShowInDashboard.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D16F8BBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = HMAccessory.isFavorite.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D16F8C14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = HMAccessory.contributesToHomeStatus.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D16F8C6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = HMAccessory.showAsIndividualTiles.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D16F8CEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = HMAccessory.customNearbyAccessoryIdentifiers.getter();
  *a2 = result;
  return result;
}

void sub_1D16F8D18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  HMAccessory.customNearbyAccessoryIdentifiers.setter(v4);
}

uint64_t sub_1D16F8D58()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16F8D90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = HMActionSet.shouldShowInDashboard.getter();
  *a2 = result & 1;
  return result;
}

double sub_1D16F8DE8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  HMActionSet.icon.getter(v7);
  v4 = v7[3];
  a2[2] = v7[2];
  a2[3] = v4;
  a2[4] = v8[0];
  *(a2 + 73) = *(v8 + 9);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  a2[1] = v6;
  return result;
}

uint64_t sub_1D16F8E40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = HMActionSet.iconTint.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1D16F8EDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = HMApplicationData.isDoubleHigh.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1D16F8F4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16F8F84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = HMHome.sectionsSortOrder.getter();
  *a2 = result;
  return result;
}

void sub_1D16F8FB0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  HMHome.sectionsSortOrder.setter();
}

uint64_t sub_1D16F8FDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = HMHome.showPredictedScenesOnDashboard.getter();
  *a2 = result & 1;
  return result;
}

char *sub_1D16F9034@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  result = sub_1D18AB1A8();
  *a2 = result;
  return result;
}

char *sub_1D16F90B8@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  result = sub_1D18AB1A8();
  *a2 = result;
  return result;
}

char *sub_1D16F913C@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  result = sub_1D18AB1A8();
  *a2 = result;
  return result;
}

char *sub_1D16F91C0@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  result = sub_1D18AB1A8();
  *a2 = result;
  return result;
}

char *sub_1D16F9244@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  result = sub_1D18AB1A8();
  *a2 = result;
  return result;
}

uint64_t sub_1D16F931C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D16F9370@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D16F8F48(0xD000000000000026, 0x80000001D1EBBB50);
  *a2 = result;
  return result;
}

uint64_t sub_1D16F93F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D16F9434()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16F946C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = HMMediaSystem.shouldShowInDashboard.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D16F94C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = HMMediaSystem.isFavorite.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D16F951C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = HMMediaSystem.contributesToHomeStatus.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D16F95A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16F95E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = HMService.shouldShowInDashboard.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D16F963C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = HMService.isFavorite.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D16F9694@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = HMService.contributesToHomeStatus.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D16F96EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = HMService.customIconSFSymbol.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D16F9730@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = HMService.customIconSymbol.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D16F97AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16F9828()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16F9860()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D16F98B8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D16F98F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1D16F9938()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D18, &unk_1D1E7C4D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1D16F99F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xAE)
    {
      return v10 - 173;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D16F9AA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 - 83;
  }

  return result;
}

uint64_t sub_1D16F9B6C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16F9FB8@<X0>(uint64_t *a1@<X8>)
{
  result = CharacteristicKind.Format.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_1D16FA058(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D16FB364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D16FB424(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D16FB518(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = type metadata accessor for EndpointPath(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for MatterTileMetadata();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_11;
  }

  v17 = type metadata accessor for StaticClusterGroups();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[13];

  return v18(v19, a2, v17);
}

uint64_t sub_1D16FB6D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for EndpointPath(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = type metadata accessor for MatterTileMetadata();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  v17 = type metadata accessor for StaticClusterGroups();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[13];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1D16FB890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for MatterTileMetadata();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 48);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D16FB9B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for MatterTileMetadata();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 48);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D16FBB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClusterPath(0);
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

uint64_t sub_1D16FBBF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ClusterPath(0);
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

uint64_t sub_1D16FBCC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16FBD6C()
{
  v1 = 0x6C6562616CLL;
  if (*v0 != 1)
  {
    v1 = 1936154996;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1D16FBDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D192F3E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D16FBF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EndpointPath(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D16FC050(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for EndpointPath(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D16FC11C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticService(0);
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439F0, &qword_1D1E72F68);
  result = sub_1D1E6880C();
  v11 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v35 + 72);
      sub_1D1951AE4(*(v8 + 48) + v23 * (v20 | (v12 << 6)), v7, type metadata accessor for StaticService);
      v24 = *(v11 + 40);
      sub_1D1E6920C();
      StaticService.hash(into:)(v36);
      result = sub_1D1E6926C();
      v25 = -1 << *(v11 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D1951AE4(v7, *(v11 + 48) + v19 * v23, type metadata accessor for StaticService);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v8 + 32);
    if (v32 >= 64)
    {
      bzero((v8 + 56), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v32;
    }

    v2 = v34;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1D16FC424(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for StaticService(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v28 = v11;
    sub_1D16FC11C(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_1D16FCA80();
      goto LABEL_12;
    }

    v28 = v11;
    sub_1D16FCC8C(v14 + 1);
  }

  v16 = *v4;
  v17 = *(*v4 + 40);
  sub_1D1E6920C();
  StaticService.hash(into:)(v29);
  v18 = sub_1D1E6926C();
  v19 = -1 << *(v16 + 32);
  a2 = v18 & ~v19;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v9 + 72);
    do
    {
      sub_1D1951A7C(*(v16 + 48) + v21 * a2, v13, type metadata accessor for StaticService);
      v22 = _s13HomeDataModel13StaticServiceV2eeoiySbAC_ACtFZ_0(v13, a1);
      sub_1D1951B4C(v13, type metadata accessor for StaticService);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D1951AE4(a1, *(v23 + 48) + *(v9 + 72) * a2, type metadata accessor for StaticService);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D1E690EC();
  __break(1u);
  return result;
}

void *sub_1D16FC668()
{
  v1 = v0;
  v2 = type metadata accessor for StaticServiceGroup();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647430, &unk_1D1E8EAB0);
  v7 = *v0;
  v8 = sub_1D1E687FC();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1D1951A7C(*(v7 + 48) + v22, v6, type metadata accessor for StaticServiceGroup);
        result = sub_1D1951AE4(v6, *(v9 + 48) + v22, type metadata accessor for StaticServiceGroup);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_1D16FC874()
{
  v1 = v0;
  v2 = type metadata accessor for StaticZone();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647420, &qword_1D1E85610);
  v7 = *v0;
  v8 = sub_1D1E687FC();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1D1951A7C(*(v7 + 48) + v22, v6, type metadata accessor for StaticZone);
        result = sub_1D1951AE4(v6, *(v9 + 48) + v22, type metadata accessor for StaticZone);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_1D16FCA80()
{
  v1 = v0;
  v2 = type metadata accessor for StaticService(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439F0, &qword_1D1E72F68);
  v7 = *v0;
  v8 = sub_1D1E687FC();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1D1951A7C(*(v7 + 48) + v22, v6, type metadata accessor for StaticService);
        result = sub_1D1951AE4(v6, *(v9 + 48) + v22, type metadata accessor for StaticService);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

uint64_t sub_1D16FCC8C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticService(0);
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439F0, &qword_1D1E72F68);
  result = sub_1D1E6880C();
  v11 = result;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v33 + 72);
      sub_1D1951A7C(*(v8 + 48) + v22 * (v19 | (v12 << 6)), v7, type metadata accessor for StaticService);
      v23 = *(v11 + 40);
      sub_1D1E6920C();
      StaticService.hash(into:)(v34);
      result = sub_1D1E6926C();
      v24 = -1 << *(v11 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1D1951AE4(v7, *(v11 + 48) + v18 * v22, type metadata accessor for StaticService);
      ++*(v11 + 16);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v21 = *(v8 + 56 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1D16FCF68()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D16FCFC8()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D16FD0A4(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D16FD0C4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

uint64_t sub_1D16FD0E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1D16FD3B0(uint64_t a1)
{
  result = sub_1D197E754();
  *(a1 + 8) = result;
  return result;
}

void *sub_1D16FD3E0@<X0>(void *result@<X0>, char *a2@<X8>)
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

uint64_t sub_1D16FD408()
{
  v1 = type metadata accessor for StaticThermostatClusterGroup();
  v2 = *(*(v1 - 1) + 80);
  v32 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);
  swift_unknownObjectRelease();
  v4 = v0 + ((v2 + 32) & ~v2);
  v5 = sub_1D1E66A7C();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = (v4 + v1[7]);
  v7 = *(v6 + 1);

  v8 = *(v6 + 2);

  v9 = *(v6 + 3);

  v10 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  v11 = &v6[v10[9]];
  v12 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v13 = v11[1];
    if (v13 >> 60 != 15)
    {
      sub_1D174E7C4(*v11, v13);
    }

    v14 = *(v12 + 20);
    v15 = sub_1D1E669FC();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v11 + v14, 1, v15))
    {
      (*(v16 + 8))(v11 + v14, v15);
    }
  }

  v17 = &v6[v10[11]];
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_1D174E7C4(*v17, v18);
  }

  v19 = &v6[v10[12]];
  v20 = v19[1];
  if (v20 >> 60 != 15)
  {
    sub_1D174E7C4(*v19, v20);
  }

  v21 = v10[13];
  v22 = sub_1D1E669FC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (!v24(&v6[v21], 1, v22))
  {
    (*(v23 + 8))(&v6[v21], v22);
  }

  v25 = v1[8];
  v26 = v25 + *(type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0) + 28);
  if (!v24((v4 + v26), 1, v22))
  {
    (*(v23 + 8))(v4 + v26, v22);
  }

  v27 = v4 + v1[12];
  v28 = type metadata accessor for StaticThermostatClusterGroup.Alvarado();
  v29 = *(v28 + 32);
  if (!v24((v27 + v29), 1, v22))
  {
    (*(v23 + 8))(v27 + v29, v22);
  }

  v30 = *(v28 + 36);
  if (!v24((v27 + v30), 1, v22))
  {
    (*(v23 + 8))(v27 + v30, v22);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v32 + ((v2 + 32) & ~v2) + 1) & 0xFFFFFFFFFFFFFFFELL) + 5, v2 | 7);
}

uint64_t sub_1D16FD7E4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16FD81C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for EndpointPath(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 2)
    {
      return ((v11 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = type metadata accessor for StaticThermostatClusterGroup.Alvarado();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[12];

  return v18(v19, a2, v17);
}

uint64_t sub_1D16FD9E4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for EndpointPath(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5]) = a2 + 1;
    return result;
  }

  v13 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = type metadata accessor for StaticThermostatClusterGroup.Alvarado();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[12];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1D16FDBC4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
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
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 32)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1D16FDC80(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 32)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D16FDDA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 73))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D16FDDC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
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

  *(result + 73) = v3;
  return result;
}

uint64_t sub_1D16FDE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 9);
    if (v4 <= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = *(a1 + 9);
    }

    v6 = v5 - 2;
    if (v4 >= 2)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D16FDEC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 9) = a2 + 2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D16FDF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6480B0, &qword_1D1E8A838);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 36);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 52);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D16FE0B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6480B0, &qword_1D1E8A838);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D16FE1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 11)
  {
    v4 = *(a1 + 8) >> 60;
    v5 = ((4 * v4) & 0xC) == 0;
    v6 = ((4 * v4) & 0xC | (v4 >> 2)) ^ 0xF;
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

void *sub_1D16FE2B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 11)
  {
    *result = 0;
    result[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D16FE438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClusterPath(0);
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

uint64_t sub_1D16FE4F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ClusterPath(0);
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

uint64_t sub_1D16FE604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClusterPath(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D16FE6DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ClusterPath(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1D16FE7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClusterPath(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D16FE884(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ClusterPath(0);
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

uint64_t sub_1D16FE940()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16FE978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClusterPath(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D16FE9E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClusterPath(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D16FEA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClusterPath(0);
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

uint64_t sub_1D16FEB30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ClusterPath(0);
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

unint64_t sub_1D16FEC10(uint64_t a1)
{
  result = sub_1D19D0630();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D16FEC60()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16FEC98()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D16FECF8()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

unint64_t sub_1D16FED40(uint64_t a1)
{
  result = sub_1D19DCCE4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D16FED68()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16FEF50()
{
  v1 = 0x444965646F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x746E696F70646E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449656D6F68;
  }
}

uint64_t sub_1D16FEFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D19E952C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D16FEFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EndpointPath(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0x1E)
    {
      return v10 - 29;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D16FF090(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for EndpointPath(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 29;
  }

  return result;
}

uint64_t sub_1D16FF1F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16FF23C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D16FF2C8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16FF360()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D16FF3A0()
{
  v1 = *(v0 + 48);
  if (v1 <= 4)
  {
    if (v1 != 3)
    {
      if (v1 == 4)
      {
        __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      }

      goto LABEL_11;
    }

    v2 = *(v0 + 24);
LABEL_10:

    goto LABEL_11;
  }

  if (v1 == 5)
  {
    v3 = *(v0 + 16);
    goto LABEL_10;
  }

  if (v1 == 6)
  {
    sub_1D174E7C4(*(v0 + 16), *(v0 + 24));
  }

LABEL_11:

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D16FF424(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6486D8, &qword_1D1E91190);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D16FF4E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6486D8, &qword_1D1E91190);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D16FF590()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D16FF5D0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D16FF610()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D16FF65C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16FF6A8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16FF6E0()
{
  MEMORY[0x1D3893750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16FF8CC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D16FF90C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D16FF960()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16FF9AC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D16FF9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D16FFABC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D16FFB6C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ClusterPath(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[7] + 8);
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

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[8];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1D16FFCB0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for ClusterPath(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[7] + 8) = a2;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[8];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1D16FFE50(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for EndpointPath(0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1D16FFF80(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for EndpointPath(0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D17000D0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  sub_1D1A283E8(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  if (*(v0 + 80) != 255)
  {
    v3 = *(v0 + 72);
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D1700138()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1700170()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for MatterStateSnapshot() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  v11 = *(v0 + 32);

  v12 = *(v2 + 8);
  v12(v0 + v4, v1);
  v13 = *(v0 + v8 + 8);

  v12(v0 + v8 + v6[7], v1);
  v14 = *(v0 + v8 + v6[8]);

  v15 = *(v0 + v8 + v6[9]);

  v16 = v0 + v8 + v6[10];
  if (*(v16 + 8) != 255)
  {
    v17 = *v16;
  }

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_1D1700308(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D1E66A7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D17003B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D1E66A7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D1700458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D1700560(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D17006AC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for EndpointPath(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = type metadata accessor for StaticClusterGroups();
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[10];
      goto LABEL_5;
    }

    v17 = type metadata accessor for MatterTileMetadata();
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[13];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1D170086C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for EndpointPath(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v16 = type metadata accessor for StaticClusterGroups();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[10];
    goto LABEL_5;
  }

  v17 = type metadata accessor for MatterTileMetadata();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[13];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1D1700AA0()
{
  if (*(v0 + 16))
  {

    if (*(v0 + 32) != 255)
    {
      v1 = *(v0 + 24);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1D1700AF0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1700B28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
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
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[13];
      goto LABEL_3;
    }

    v15 = type metadata accessor for MatterTileMetadata();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[15];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1D1700CAC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[13];
    goto LABEL_3;
  }

  v15 = type metadata accessor for MatterTileMetadata();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[15];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1D1700E34()
{
  MEMORY[0x1D3893750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1700E6C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D1700EB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = swift_unknownObjectRetain();
  return HMAccessory.accessoryDelegate.setter(v5, v3);
}

uint64_t sub_1D1700EF8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = swift_unknownObjectRetain();
  return HMAccessorySettingsDataSource.settingsDelegate.setter(v5, v3);
}

uint64_t sub_1D1700F38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = swift_unknownObjectRetain();
  return HMHome.homeDelegate.setter(v5, v3);
}

uint64_t sub_1D1700F78(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = swift_unknownObjectRetain();
  return HMHomeManager.homeManagerDelegate.setter(v5, v3);
}

uint64_t sub_1D1700FB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = swift_unknownObjectRetain();
  return HMMediaSession.mediaSessionDelegate.setter(v5, v3);
}

uint64_t sub_1D1700FF8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = swift_unknownObjectRetain();
  return HMUserActionPredictionController.predictionDelegate.setter(v5, v3);
}

void sub_1D1701084(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1D1A7E4AC(v2);
}

void sub_1D17010BC(os_unfair_lock_s **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  os_unfair_lock_lock(*a1 + 4);
  os_unfair_lock_opaque = v3[5]._os_unfair_lock_opaque;
  v5 = BYTE1(v3[5]._os_unfair_lock_opaque);
  v6 = BYTE2(v3[5]._os_unfair_lock_opaque);
  os_unfair_lock_opaque_high = HIBYTE(v3[5]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v3 + 4);
  *a2 = os_unfair_lock_opaque;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = os_unfair_lock_opaque_high;
}

void sub_1D1701120(char *a1, os_unfair_lock_s **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  os_unfair_lock_lock(*a2 + 4);
  LOBYTE(v6[5]._os_unfair_lock_opaque) = v2;
  BYTE1(v6[5]._os_unfair_lock_opaque) = v3;
  BYTE2(v6[5]._os_unfair_lock_opaque) = v4;
  HIBYTE(v6[5]._os_unfair_lock_opaque) = v5;

  os_unfair_lock_unlock(v6 + 4);
}

id sub_1D170118C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *a2 = v4;

  return v4;
}

void *sub_1D17011E8@<X0>(void *a1@<X8>)
{
  result = _s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0();
  *a1 = result;
  return result;
}

void sub_1D1701210(uint64_t *a1)
{
  v1 = *a1;

  sub_1D1A82D30(v2);
}

uint64_t sub_1D1701244()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C20, &qword_1D1E95FF8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D1701274()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C28, qword_1D1E96000);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D17012A4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D17012E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1701320()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1701390()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C28, qword_1D1E96000);
  sub_1D1AA35F0(v1);

  return MEMORY[0x1EEE6BDD0](v0, 17, 7);
}

uint64_t sub_1D17013EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 31) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5);

  v10 = *(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v3 | 7);
}

uint64_t sub_1D1701500()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D17015D8()
{
  v1 = type metadata accessor for StateSnapshot(0);
  v65 = *(*(v1 - 8) + 80);
  v63 = *(*(v1 - 8) + 64);
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();
  v64 = (v65 + 32) & ~v65;
  v3 = v0 + v64;
  v4 = *(v0 + v64);

  v66 = v1;
  v5 = v0 + v64 + *(v1 + 20);
  v6 = sub_1D1E66A7C();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = type metadata accessor for StaticHome();
  v9 = *(v5 + v8[5] + 8);

  v10 = v8[6];
  v11 = sub_1D1E669FC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v5 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  v14 = v5 + v8[7];
  v7(v14, v6);
  v62 = v7;
  v15 = type metadata accessor for StaticRoom(0);
  v16 = *(v14 + v15[5] + 8);

  v61 = v6;
  v17 = v15[6];
  if (!v13(v14 + v17, 1, v11))
  {
    (*(v12 + 8))(v14 + v17, v11);
  }

  v18 = *(v14 + v15[8]);

  v62(v14 + v15[9], v61);
  v19 = *(v14 + v15[10]);

  v20 = *(v14 + v15[11]);

  v21 = *(v14 + v15[12]);

  v22 = *(v14 + v15[13]);

  v23 = *(v14 + v15[14]);

  v24 = *(v14 + v15[15]);

  v25 = *(v14 + v15[16]);

  v26 = *(v14 + v15[17]);

  v27 = *(v14 + v15[18]);

  v28 = *(v14 + v15[19]);

  v29 = v5 + v8[8];
  v62(v29, v61);
  v30 = type metadata accessor for StaticUser();
  v31 = *(v29 + *(v30 + 20) + 8);

  v62(v29 + *(v30 + 24), v61);
  v32 = *(v5 + v8[12]);

  v33 = *(v5 + v8[13]);

  v34 = *(v5 + v8[14]);

  v35 = *(v5 + v8[15]);

  v36 = *(v5 + v8[16]);

  v37 = *(v5 + v8[17]);

  v38 = *(v5 + v8[18]);

  v39 = *(v5 + v8[20]);

  v40 = v5 + v8[22];
  v41 = type metadata accessor for StaticResident();
  if (!(*(*(v41 - 1) + 48))(v40, 1, v41))
  {
    v62(v40, v61);
    v42 = *(v40 + v41[5] + 8);

    v43 = *(v40 + v41[6] + 8);

    v44 = *(v40 + v41[7]);

    v45 = *(v40 + v41[8]);

    sub_1D1771B5C(*(v40 + v41[9]), *(v40 + v41[9] + 8));
    v62(v40 + v41[10], v61);
  }

  v46 = *(v3 + v66[6]);

  v47 = *(v3 + v66[7]);

  v48 = *(v3 + v66[8]);

  v49 = *(v3 + v66[9]);

  v50 = *(v3 + v66[10]);

  v51 = *(v3 + v66[11]);

  v52 = *(v3 + v66[12]);

  v53 = *(v3 + v66[13]);

  v54 = *(v3 + v66[14]);

  v55 = *(v3 + v66[15]);

  v56 = *(v3 + v66[16]);

  v57 = *(v3 + v66[17]);

  v58 = *(v3 + v66[18]);

  v59 = *(v3 + v66[19]);

  return MEMORY[0x1EEE6BDD0](v0, v64 + v63, v65 | 7);
}

uint64_t sub_1D1701AE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1701B30()
{
  v18 = sub_1D1E66A7C();
  v1 = *(v18 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v17 = sub_1D1E6709C();
  v5 = *(v17 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_1D1E6701C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v13 = v2 | v6 | v11;
  v14 = (*(v10 + 64) + v12 + 31) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3, v18);
  (*(v5 + 8))(v0 + v7, v17);
  (*(v10 + 8))(v0 + v12, v9);
  v15 = *(v0 + v14);

  return MEMORY[0x1EEE6BDD0](v0, v14 + 8, v13 | 7);
}

uint64_t sub_1D1701D10()
{
  v1 = sub_1D1E6709C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1D1701E64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1701EF8()
{
  v1 = sub_1D1E6701C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v29 = (v3 + 32) & ~v3;
  v30 = v1;
  v4 = (*(v2 + 64) + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = sub_1D1E66FDC();
  v5 = *(v28 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 17) & ~v6;
  v24 = v7;
  v8 = *(v5 + 64);
  v27 = sub_1D1E6709C();
  v9 = *(v27 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v8 + v10) & ~v10;
  v12 = *(v9 + 64);
  v25 = sub_1D1E66A7C();
  v13 = *(v25 - 8);
  v14 = *(v13 + 80);
  v15 = (v11 + v12 + v14) & ~v14;
  v26 = v3 | v6 | v10 | v14;
  v16 = (*(v13 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v29, v30);
  (*(v5 + 8))(v0 + v24, v28);
  (*(v9 + 8))(v0 + v11, v27);
  (*(v13 + 8))(v0 + v15, v25);

  v20 = *(v0 + v17);

  v21 = *(v0 + v18 + 8);

  v22 = *(v0 + v18 + 24);

  return MEMORY[0x1EEE6BDD0](v0, v18 + 32, v26 | 7);
}

uint64_t sub_1D17021D0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649D90, &unk_1D1E96370);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D1702294()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D17022D8()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = v6 + *(v4 + 64);
  v8 = *(v2 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v11) & ~v11;
  v13 = *(v10 + 64);
  v14 = v5 | v11;
  v15 = *(v0 + 2);
  swift_unknownObjectRelease();
  v16 = *(v0 + 6);

  (*(v4 + 8))(&v0[v6], v3);
  (*(v10 + 8))(&v0[v12], AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v12 + v13, v14 | 7);
}

uint64_t sub_1D17024DC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();
  v4 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1702554()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D170263C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A288, &qword_1D1E96640);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D17026D0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649D90, &unk_1D1E96370);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D170270C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1702748(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1D1E66A7C();
    v9 = *(a3 + 24);
    sub_1D1AC359C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E6769C();
    sub_1D1E67D7C();
    v10 = sub_1D1E685AC();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 44);

    return v11(v12, a2, v10);
  }
}

void *sub_1D1702884(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    sub_1D1E66A7C();
    v7 = *(a4 + 24);
    sub_1D1AC359C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E6769C();
    sub_1D1E67D7C();
    v8 = sub_1D1E685AC();
    v9 = *(*(v8 - 8) + 56);
    v10 = v5 + *(a4 + 44);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D17029AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 84) == a2)
  {
    v5 = *(v4 + 48);
    v6 = *(a3 + 16);

    return v5();
  }

  else
  {
    v9 = *(a3 + 24);
    v8 = *(a3 + 32);
    updated = _s24SnapshotUpdateControllerC13UpdateRequestV8ScheduleOMa();
    v14 = *(*(updated - 8) + 48);
    v15 = a1 + *(a3 + 44);

    return v14(v15, a2, updated);
  }
}

uint64_t sub_1D1702A8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  if (*(v6 + 84) == a3)
  {
    v7 = *(v6 + 56);
    v5 = *(a4 + 16);

    return v7(a1, a2, a2, v5);
  }

  else
  {
    v9 = *(a4 + 24);
    v10 = *(a4 + 32);
    updated = _s24SnapshotUpdateControllerC13UpdateRequestV8ScheduleOMa();
    v14 = *(*(updated - 8) + 56);
    v15 = a1 + *(a4 + 44);

    return v14(v15, a2, a2, updated);
  }
}

uint64_t sub_1D1702B88(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[2];
  v6 = a3[3];
  v7 = a3[4];
  updated = _s24SnapshotUpdateControllerC13UpdateRequestV17PrioritizedConfigVMa();
  v9 = (*(*(updated - 8) + 48))(a1, a2, updated);
  if (v9 >= 2)
  {
    return v9 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1702C00(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v6 = (a2 + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = a4[2];
  v8 = a4[3];
  v9 = a4[4];
  updated = _s24SnapshotUpdateControllerC13UpdateRequestV17PrioritizedConfigVMa();
  v11 = *(*(updated - 8) + 56);

  return v11(a1, v6, a3, updated);
}

uint64_t sub_1D1702C88()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D1702CC4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1702D14()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1702D6C()
{
  MEMORY[0x1D3893750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1702DA4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1702DF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1702E2C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1702E7C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1702F20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1702F98(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D1703028()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D1703078()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D17030C0()
{
  if (*(v0 + 16))
  {

    if (*(v0 + 32) != 255)
    {
      v1 = *(v0 + 24);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1D1703110()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D170315C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D17031A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9A0, &qword_1D1E97428);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D17032D8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  *a2 = v3;
  return result;
}

uint64_t sub_1D170331C()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 7);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1D1703404()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D170343C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[11];

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D1703494()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D17034E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 88);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D170353C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1703584()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D17035D4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = *(v0 + 40);

  v7 = (v0 + v3);
  v8 = type metadata accessor for StateSnapshot(0);
  if (!(*(*(v8 - 1) + 48))(v0 + v3, 1, v8))
  {
    v72 = v4;
    v73 = (v2 + 48) & ~v2;
    v74 = v2;
    v9 = *v7;

    v10 = v7 + v8[5];
    v11 = sub_1D1E66A7C();
    v12 = *(*(v11 - 8) + 8);
    v12(v10, v11);
    v13 = type metadata accessor for StaticHome();
    v14 = *&v10[v13[5] + 8];

    v15 = v13[6];
    v16 = sub_1D1E669FC();
    v68 = *(v16 - 8);
    v69 = *(v68 + 48);
    if (!v69(&v10[v15], 1, v16))
    {
      (*(v68 + 8))(&v10[v15], v16);
    }

    v17 = &v10[v13[7]];
    v12(v17, v11);
    v70 = v11;
    v71 = v12;
    v18 = type metadata accessor for StaticRoom(0);
    v19 = *&v17[v18[5] + 8];

    v20 = v18[6];
    if (!v69(&v17[v20], 1, v16))
    {
      (*(v68 + 8))(&v17[v20], v16);
    }

    v21 = *&v17[v18[8]];

    v71(&v17[v18[9]]);
    v22 = *&v17[v18[10]];

    v23 = *&v17[v18[11]];

    v24 = *&v17[v18[12]];

    v25 = *&v17[v18[13]];

    v26 = *&v17[v18[14]];

    v27 = *&v17[v18[15]];

    v28 = *&v17[v18[16]];

    v29 = *&v17[v18[17]];

    v30 = *&v17[v18[18]];

    v31 = *&v17[v18[19]];

    v32 = &v10[v13[8]];
    (v71)(v32, v70);
    v33 = type metadata accessor for StaticUser();
    v34 = *&v32[*(v33 + 20) + 8];

    (v71)(&v32[*(v33 + 24)], v70);
    v35 = *&v10[v13[12]];

    v36 = *&v10[v13[13]];

    v37 = *&v10[v13[14]];

    v38 = *&v10[v13[15]];

    v39 = *&v10[v13[16]];

    v40 = *&v10[v13[17]];

    v41 = *&v10[v13[18]];

    v42 = *&v10[v13[20]];

    v43 = &v10[v13[22]];
    v44 = type metadata accessor for StaticResident();
    v2 = v74;
    if (!(*(*(v44 - 1) + 48))(v43, 1, v44))
    {
      (v71)(v43, v70);
      v45 = *&v43[v44[5] + 8];

      v46 = *&v43[v44[6] + 8];

      v47 = *&v43[v44[7]];

      v48 = *&v43[v44[8]];

      sub_1D1771B5C(*&v43[v44[9]], v43[v44[9] + 8]);
      (v71)(&v43[v44[10]], v70);
    }

    v49 = *(v7 + v8[6]);

    v50 = *(v7 + v8[7]);

    v51 = *(v7 + v8[8]);

    v52 = *(v7 + v8[9]);

    v53 = *(v7 + v8[10]);

    v54 = *(v7 + v8[11]);

    v55 = *(v7 + v8[12]);

    v56 = *(v7 + v8[13]);

    v57 = *(v7 + v8[14]);

    v58 = *(v7 + v8[15]);

    v59 = *(v7 + v8[16]);

    v60 = *(v7 + v8[17]);

    v61 = *(v7 + v8[18]);

    v62 = *(v7 + v8[19]);

    v4 = v72;
    v3 = v73;
  }

  v63 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
  v65 = *(v0 + v63);

  v66 = *(v0 + v64);

  return MEMORY[0x1EEE6BDD0](v0, v64 + 8, v2 | 7);
}

uint64_t sub_1D1703B50()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D1703B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StateSnapshot(0);
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
    v11 = type metadata accessor for MatterStateSnapshot();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D1703CC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for StateSnapshot(0);
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
    v11 = type metadata accessor for MatterStateSnapshot();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D1703DF0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return HomeState.AllHomesModel.homeStates.setter(v4);
}

uint64_t sub_1D1703E20(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return HomeState.AllHomesModel.latestSetupMilestone.setter(&v4);
}

uint64_t sub_1D1703E5C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return HomeState.AllHomesModel.currentResident.setter(v4);
}

uint64_t sub_1D1703E88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9A0, &qword_1D1E97428);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1703F58()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1703F90()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1703FD0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1704010()
{
  v1 = *(v0 + 5);
  v2 = *(v0 + 6);
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v20 = (v4 + 72) & ~v4;
  v5 = (*(v3 + 64) + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*(v0 + 7) + 8);
  swift_getAssociatedTypeWitness();
  v7 = *(v2 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for BatchCharacteristicRequest.Response();
  sub_1D1E67D1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v8 = sub_1D1E680DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v5 + v10 + 8) & ~v10;
  v12 = v4 | v10;
  v13 = (*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + 2);
  swift_unknownObjectRelease();
  (*(v3 + 8))(&v0[v20], v1);
  v16 = *&v0[v5];

  (*(v9 + 8))(&v0[v11], v8);
  v17 = *&v0[v13];
  swift_unknownObjectRelease();
  v18 = *&v0[v14];

  return MEMORY[0x1EEE6BDD0](v0, v14 + 8, v12 | 7);
}

uint64_t sub_1D17042C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D1704308()
{
  v18 = sub_1D1E66A7C();
  v1 = *(v18 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v17 = sub_1D1E6709C();
  v5 = *(v17 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_1D1E6701C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v13 = v2 | v6 | v11;
  v14 = (*(v10 + 64) + v12 + 31) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3, v18);
  (*(v5 + 8))(v0 + v7, v17);
  (*(v10 + 8))(v0 + v12, v9);
  v15 = *(v0 + v14);

  return MEMORY[0x1EEE6BDD0](v0, v14 + 8, v13 | 7);
}

uint64_t sub_1D17044E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_1D1E6709C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = v6 + *(v4 + 64);
  v8 = *(v2 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for BatchCharacteristicRequest.Response();
  sub_1D1E67D1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v9 = sub_1D1E680BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v11) & ~v11;
  v13 = *(v10 + 64);
  v14 = v5 | v11;
  (*(v4 + 8))(v0 + v6, v3);
  (*(v10 + 8))(v0 + v12, v9);

  return MEMORY[0x1EEE6BDD0](v0, v12 + v13, v14 | 7);
}

uint64_t sub_1D1704750()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for BatchCharacteristicRequest.Response();
  sub_1D1E67D1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v3 = sub_1D1E680BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v0 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v7, v5 | 7);
}

uint64_t sub_1D1704900()
{
  v1 = sub_1D1E6701C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v30 = (v3 + 48) & ~v3;
  v31 = v1;
  v4 = (*(v2 + 64) + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = sub_1D1E66FDC();
  v5 = *(v29 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 17) & ~v6;
  v25 = v7;
  v8 = *(v5 + 64);
  v28 = sub_1D1E6709C();
  v9 = *(v28 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v8 + v10) & ~v10;
  v12 = *(v9 + 64);
  v26 = sub_1D1E66A7C();
  v13 = *(v26 - 8);
  v14 = *(v13 + 80);
  v15 = (v11 + v12 + v14) & ~v14;
  v27 = v3 | v6 | v10 | v14;
  v16 = (*(v13 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v30, v31);
  (*(v5 + 8))(v0 + v25, v29);
  (*(v9 + 8))(v0 + v11, v28);
  (*(v13 + 8))(v0 + v15, v26);
  v20 = *(v0 + v16);
  swift_unknownObjectRelease();
  v21 = *(v0 + v17);

  v22 = *(v0 + v18 + 8);

  v23 = *(v0 + v18 + 24);

  return MEMORY[0x1EEE6BDD0](v0, v18 + 32, v27 | 7);
}

uint64_t sub_1D1704BB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = sub_1D1B1384C();
}

uint64_t sub_1D1704BEC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D1B12B9C(v4);
}

__n128 sub_1D1704C24(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D1704C30()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1704C74()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1704CC4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_1D1704D08(uint64_t *a1)
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  v1 = *a1;
  type metadata accessor for WeakMutex.WeakWrapper();
  return sub_1D1E66E2C();
}

uint64_t sub_1D1704D54()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1704D8C()
{
  v1 = *(v0 + 32);
  v2 = sub_1D1E67F2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v2);
  v8 = *(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v4 | 7);
}

uint64_t sub_1D1704E68()
{
  v1 = *(v0 + 32);
  v2 = sub_1D1E67F2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v2);
  v9 = *(v0 + v6);

  v10 = *(v0 + v7 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v4 | 7);
}

uint64_t sub_1D1704FD0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1705010()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1705058()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1705090()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[15];

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1D17050D8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1705114()
{
  v1 = _s8IntervalVMa(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = v0 + v3;
  v8 = *(v0 + v3 + 8);

  v9 = *(type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0) + 20);
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v7 + v9, v10);
  }

  v12 = *(v1 + 20);
  v13 = sub_1D1E68A2C();
  v14 = *(*(v13 - 8) + 8);
  v14(v7 + v12, v13);
  v14(v7 + *(v1 + 24), v13);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D17052D0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D170538C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D170544C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D17054B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D1705530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
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

uint64_t sub_1D17055FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
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

uint64_t sub_1D17056C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for IconTextValueStringDataHolder();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for TilesFilter(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for StatusItemLocation(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[9];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[10]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1D1705818(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for IconTextValueStringDataHolder();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for TilesFilter(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for StatusItemLocation(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[10]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[9];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D1705970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IconTextValueStringDataHolder();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 252)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for TilesFilter(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D1705A8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IconTextValueStringDataHolder();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 252)
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  else
  {
    v11 = type metadata accessor for TilesFilter(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D1706108(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = *(v1 + 48);
  return sub_1D1E6886C();
}

uint64_t sub_1D170626C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IconTextValueStringDataHolder();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 252)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for TilesFilter(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D1706388(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IconTextValueStringDataHolder();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 252)
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  else
  {
    v11 = type metadata accessor for TilesFilter(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D170659C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v5 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
    a1 = v5;
  }

  return (*(*(TupleTypeMetadata - 8) + 48))(a1, v3);
}

uint64_t sub_1D17066E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a4 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a1 = v6;
  }

  return (*(*(TupleTypeMetadata - 8) + 56))(a1, a2, a2);
}

uint64_t sub_1D1706828(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1706894(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D1E66A7C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D1706914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IconTextValueStringDataHolder();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for TilesFilter(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28));
      if (v14 >= 5)
      {
        return v14 - 4;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1D1706A1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for IconTextValueStringDataHolder();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for TilesFilter(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 4;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D1706B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IconTextValueStringDataHolder();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for TilesFilter(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 4)
      {
        return v14 - 3;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1D1706C34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for IconTextValueStringDataHolder();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for TilesFilter(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 3;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D170729C()
{
  v1 = type metadata accessor for StateSnapshot(0);
  v65 = *(*(v1 - 8) + 80);
  v63 = *(*(v1 - 8) + 64);
  v2 = *(v0 + 16);

  v64 = (v65 + 24) & ~v65;
  v3 = v0 + v64;
  v4 = *(v0 + v64);

  v66 = v1;
  v5 = v0 + v64 + *(v1 + 20);
  v6 = sub_1D1E66A7C();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = type metadata accessor for StaticHome();
  v9 = *(v5 + v8[5] + 8);

  v10 = v8[6];
  v11 = sub_1D1E669FC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v5 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  v14 = v5 + v8[7];
  v7(v14, v6);
  v62 = v7;
  v15 = type metadata accessor for StaticRoom(0);
  v16 = *(v14 + v15[5] + 8);

  v61 = v6;
  v17 = v15[6];
  if (!v13(v14 + v17, 1, v11))
  {
    (*(v12 + 8))(v14 + v17, v11);
  }

  v18 = *(v14 + v15[8]);

  v62(v14 + v15[9], v61);
  v19 = *(v14 + v15[10]);

  v20 = *(v14 + v15[11]);

  v21 = *(v14 + v15[12]);

  v22 = *(v14 + v15[13]);

  v23 = *(v14 + v15[14]);

  v24 = *(v14 + v15[15]);

  v25 = *(v14 + v15[16]);

  v26 = *(v14 + v15[17]);

  v27 = *(v14 + v15[18]);

  v28 = *(v14 + v15[19]);

  v29 = v5 + v8[8];
  v62(v29, v61);
  v30 = type metadata accessor for StaticUser();
  v31 = *(v29 + *(v30 + 20) + 8);

  v62(v29 + *(v30 + 24), v61);
  v32 = *(v5 + v8[12]);

  v33 = *(v5 + v8[13]);

  v34 = *(v5 + v8[14]);

  v35 = *(v5 + v8[15]);

  v36 = *(v5 + v8[16]);

  v37 = *(v5 + v8[17]);

  v38 = *(v5 + v8[18]);

  v39 = *(v5 + v8[20]);

  v40 = v5 + v8[22];
  v41 = type metadata accessor for StaticResident();
  if (!(*(*(v41 - 1) + 48))(v40, 1, v41))
  {
    v62(v40, v61);
    v42 = *(v40 + v41[5] + 8);

    v43 = *(v40 + v41[6] + 8);

    v44 = *(v40 + v41[7]);

    v45 = *(v40 + v41[8]);

    sub_1D1771B5C(*(v40 + v41[9]), *(v40 + v41[9] + 8));
    v62(v40 + v41[10], v61);
  }

  v46 = *(v3 + v66[6]);

  v47 = *(v3 + v66[7]);

  v48 = *(v3 + v66[8]);

  v49 = *(v3 + v66[9]);

  v50 = *(v3 + v66[10]);

  v51 = *(v3 + v66[11]);

  v52 = *(v3 + v66[12]);

  v53 = *(v3 + v66[13]);

  v54 = *(v3 + v66[14]);

  v55 = *(v3 + v66[15]);

  v56 = *(v3 + v66[16]);

  v57 = *(v3 + v66[17]);

  v58 = *(v3 + v66[18]);

  v59 = *(v3 + v66[19]);

  return MEMORY[0x1EEE6BDD0](v0, v64 + v63, v65 | 7);
}

uint64_t sub_1D17077A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D17077DC()
{
  v1 = type metadata accessor for StateSnapshot(0);
  v72 = *(*(v1 - 8) + 80);
  v70 = *(*(v1 - 8) + 64);
  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[7];

  v6 = v0[8];

  v7 = v0[9];

  v8 = v0[11];

  v9 = v0[13];

  v74 = v0;
  v71 = (v72 + 112) & ~v72;
  v10 = v0 + v71;
  v11 = *(v0 + v71);

  v73 = v1;
  v12 = v0 + v71 + *(v1 + 20);
  v13 = sub_1D1E66A7C();
  v14 = *(*(v13 - 8) + 8);
  v14(v12, v13);
  v15 = type metadata accessor for StaticHome();
  v16 = *&v12[v15[5] + 8];

  v17 = v15[6];
  v18 = sub_1D1E669FC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (!v20(&v12[v17], 1, v18))
  {
    (*(v19 + 8))(&v12[v17], v18);
  }

  v21 = &v12[v15[7]];
  v14(v21, v13);
  v69 = v14;
  v22 = type metadata accessor for StaticRoom(0);
  v23 = *&v21[v22[5] + 8];

  v68 = v13;
  v24 = v22[6];
  if (!v20(&v21[v24], 1, v18))
  {
    (*(v19 + 8))(&v21[v24], v18);
  }

  v25 = *&v21[v22[8]];

  v69(&v21[v22[9]], v68);
  v26 = *&v21[v22[10]];

  v27 = *&v21[v22[11]];

  v28 = *&v21[v22[12]];

  v29 = *&v21[v22[13]];

  v30 = *&v21[v22[14]];

  v31 = *&v21[v22[15]];

  v32 = *&v21[v22[16]];

  v33 = *&v21[v22[17]];

  v34 = *&v21[v22[18]];

  v35 = *&v21[v22[19]];

  v36 = &v12[v15[8]];
  v69(v36, v68);
  v37 = type metadata accessor for StaticUser();
  v38 = *&v36[*(v37 + 20) + 8];

  v69(&v36[*(v37 + 24)], v68);
  v39 = *&v12[v15[12]];

  v40 = *&v12[v15[13]];

  v41 = *&v12[v15[14]];

  v42 = *&v12[v15[15]];

  v43 = *&v12[v15[16]];

  v44 = *&v12[v15[17]];

  v45 = *&v12[v15[18]];

  v46 = *&v12[v15[20]];

  v47 = &v12[v15[22]];
  v48 = type metadata accessor for StaticResident();
  if (!(*(*(v48 - 1) + 48))(v47, 1, v48))
  {
    v69(v47, v68);
    v49 = *&v47[v48[5] + 8];

    v50 = *&v47[v48[6] + 8];

    v51 = *&v47[v48[7]];

    v52 = *&v47[v48[8]];

    sub_1D1771B5C(*&v47[v48[9]], v47[v48[9] + 8]);
    v69(&v47[v48[10]], v68);
  }

  v53 = *&v10[v73[6]];

  v54 = *&v10[v73[7]];

  v55 = *&v10[v73[8]];

  v56 = *&v10[v73[9]];

  v57 = *&v10[v73[10]];

  v58 = *&v10[v73[11]];

  v59 = *&v10[v73[12]];

  v60 = *&v10[v73[13]];

  v61 = *&v10[v73[14]];

  v62 = *&v10[v73[15]];

  v63 = *&v10[v73[16]];

  v64 = *&v10[v73[17]];

  v65 = *&v10[v73[18]];

  v66 = *&v10[v73[19]];

  return MEMORY[0x1EEE6BDD0](v74, v71 + v70, v72 | 7);
}

uint64_t sub_1D1707D28()
{
  v1 = type metadata accessor for StateSnapshot(0);
  v73 = *(*(v1 - 8) + 80);
  v71 = *(*(v1 - 8) + 64);
  v2 = v0[2];
  swift_unknownObjectRelease();
  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[9];

  v7 = v0[10];

  v8 = v0[11];

  v9 = v0[13];

  v10 = v0[15];

  v75 = v0;
  v72 = (v73 + 128) & ~v73;
  v11 = v0 + v72;
  v12 = *(v0 + v72);

  v74 = v1;
  v13 = v0 + v72 + *(v1 + 20);
  v14 = sub_1D1E66A7C();
  v15 = *(*(v14 - 8) + 8);
  v15(v13, v14);
  v16 = type metadata accessor for StaticHome();
  v17 = *&v13[v16[5] + 8];

  v18 = v16[6];
  v19 = sub_1D1E669FC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (!v21(&v13[v18], 1, v19))
  {
    (*(v20 + 8))(&v13[v18], v19);
  }

  v22 = &v13[v16[7]];
  v15(v22, v14);
  v70 = v15;
  v23 = type metadata accessor for StaticRoom(0);
  v24 = *&v22[v23[5] + 8];

  v69 = v14;
  v25 = v23[6];
  if (!v21(&v22[v25], 1, v19))
  {
    (*(v20 + 8))(&v22[v25], v19);
  }

  v26 = *&v22[v23[8]];

  v70(&v22[v23[9]], v69);
  v27 = *&v22[v23[10]];

  v28 = *&v22[v23[11]];

  v29 = *&v22[v23[12]];

  v30 = *&v22[v23[13]];

  v31 = *&v22[v23[14]];

  v32 = *&v22[v23[15]];

  v33 = *&v22[v23[16]];

  v34 = *&v22[v23[17]];

  v35 = *&v22[v23[18]];

  v36 = *&v22[v23[19]];

  v37 = &v13[v16[8]];
  v70(v37, v69);
  v38 = type metadata accessor for StaticUser();
  v39 = *&v37[*(v38 + 20) + 8];

  v70(&v37[*(v38 + 24)], v69);
  v40 = *&v13[v16[12]];

  v41 = *&v13[v16[13]];

  v42 = *&v13[v16[14]];

  v43 = *&v13[v16[15]];

  v44 = *&v13[v16[16]];

  v45 = *&v13[v16[17]];

  v46 = *&v13[v16[18]];

  v47 = *&v13[v16[20]];

  v48 = &v13[v16[22]];
  v49 = type metadata accessor for StaticResident();
  if (!(*(*(v49 - 1) + 48))(v48, 1, v49))
  {
    v70(v48, v69);
    v50 = *&v48[v49[5] + 8];

    v51 = *&v48[v49[6] + 8];

    v52 = *&v48[v49[7]];

    v53 = *&v48[v49[8]];

    sub_1D1771B5C(*&v48[v49[9]], v48[v49[9] + 8]);
    v70(&v48[v49[10]], v69);
  }

  v54 = *&v11[v74[6]];

  v55 = *&v11[v74[7]];

  v56 = *&v11[v74[8]];

  v57 = *&v11[v74[9]];

  v58 = *&v11[v74[10]];

  v59 = *&v11[v74[11]];

  v60 = *&v11[v74[12]];

  v61 = *&v11[v74[13]];

  v62 = *&v11[v74[14]];

  v63 = *&v11[v74[15]];

  v64 = *&v11[v74[16]];

  v65 = *&v11[v74[17]];

  v66 = *&v11[v74[18]];

  v67 = *&v11[v74[19]];

  return MEMORY[0x1EEE6BDD0](v75, v72 + v71, v73 | 7);
}

uint64_t sub_1D1708270()
{
  v1 = type metadata accessor for StateSnapshot(0);
  v68 = *(*(v1 - 8) + 80);
  v66 = *(*(v1 - 8) + 64);
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v65 = *(v3 + 80);
  v69 = *(v3 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v67 = (v68 + 32) & ~v68;
  v5 = v0 + v67;
  v6 = *(v0 + v67);

  v70 = v1;
  v7 = v0 + v67 + *(v1 + 20);
  v8 = *(v3 + 8);
  v8(v7, v2);
  v9 = type metadata accessor for StaticHome();
  v10 = *(v7 + v9[5] + 8);

  v11 = v9[6];
  v12 = sub_1D1E669FC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (!v14(v7 + v11, 1, v12))
  {
    (*(v13 + 8))(v7 + v11, v12);
  }

  v15 = v7 + v9[7];
  v8(v15, v2);
  v64 = v2;
  v16 = type metadata accessor for StaticRoom(0);
  v17 = *(v15 + v16[5] + 8);

  v63 = v8;
  v18 = v16[6];
  if (!v14(v15 + v18, 1, v12))
  {
    (*(v13 + 8))(v15 + v18, v12);
  }

  v19 = *(v15 + v16[8]);

  v63(v15 + v16[9], v64);
  v20 = *(v15 + v16[10]);

  v21 = *(v15 + v16[11]);

  v22 = *(v15 + v16[12]);

  v23 = *(v15 + v16[13]);

  v24 = *(v15 + v16[14]);

  v25 = *(v15 + v16[15]);

  v26 = *(v15 + v16[16]);

  v27 = *(v15 + v16[17]);

  v28 = *(v15 + v16[18]);

  v29 = *(v15 + v16[19]);

  v30 = v7 + v9[8];
  v63(v30, v64);
  v31 = type metadata accessor for StaticUser();
  v32 = *(v30 + *(v31 + 20) + 8);

  v63(v30 + *(v31 + 24), v64);
  v33 = *(v7 + v9[12]);

  v34 = *(v7 + v9[13]);

  v35 = *(v7 + v9[14]);

  v36 = *(v7 + v9[15]);

  v37 = *(v7 + v9[16]);

  v38 = *(v7 + v9[17]);

  v39 = *(v7 + v9[18]);

  v40 = *(v7 + v9[20]);

  v41 = v7 + v9[22];
  v42 = type metadata accessor for StaticResident();
  if (!(*(*(v42 - 1) + 48))(v41, 1, v42))
  {
    v63(v41, v64);
    v43 = *(v41 + v42[5] + 8);

    v44 = *(v41 + v42[6] + 8);

    v45 = *(v41 + v42[7]);

    v46 = *(v41 + v42[8]);

    sub_1D1771B5C(*(v41 + v42[9]), *(v41 + v42[9] + 8));
    v63(v41 + v42[10], v64);
  }

  v47 = (v67 + v66 + v65) & ~v65;
  v48 = *(v5 + v70[6]);

  v49 = *(v5 + v70[7]);

  v50 = *(v5 + v70[8]);

  v51 = *(v5 + v70[9]);

  v52 = *(v5 + v70[10]);

  v53 = *(v5 + v70[11]);

  v54 = *(v5 + v70[12]);

  v55 = *(v5 + v70[13]);

  v56 = *(v5 + v70[14]);

  v57 = *(v5 + v70[15]);

  v58 = *(v5 + v70[16]);

  v59 = *(v5 + v70[17]);

  v60 = *(v5 + v70[18]);

  v61 = *(v5 + v70[19]);

  v63(v0 + v47, v64);

  return MEMORY[0x1EEE6BDD0](v0, v47 + v69, v68 | v65 | 7);
}

uint64_t sub_1D17087E4()
{
  v1 = type metadata accessor for StateSnapshot(0);
  v66 = *(*(v1 - 8) + 80);
  v64 = *(*(v1 - 8) + 64);
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();
  v3 = *(v0 + 32);

  v68 = v0;
  v65 = (v66 + 40) & ~v66;
  v4 = v0 + v65;
  v5 = *(v0 + v65);

  v67 = v1;
  v6 = v0 + v65 + *(v1 + 20);
  v7 = sub_1D1E66A7C();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v9 = type metadata accessor for StaticHome();
  v10 = *(v6 + v9[5] + 8);

  v11 = v9[6];
  v12 = sub_1D1E669FC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (!v14(v6 + v11, 1, v12))
  {
    (*(v13 + 8))(v6 + v11, v12);
  }

  v15 = v6 + v9[7];
  v8(v15, v7);
  v63 = v8;
  v16 = type metadata accessor for StaticRoom(0);
  v17 = *(v15 + v16[5] + 8);

  v62 = v7;
  v18 = v16[6];
  if (!v14(v15 + v18, 1, v12))
  {
    (*(v13 + 8))(v15 + v18, v12);
  }

  v19 = *(v15 + v16[8]);

  v63(v15 + v16[9], v62);
  v20 = *(v15 + v16[10]);

  v21 = *(v15 + v16[11]);

  v22 = *(v15 + v16[12]);

  v23 = *(v15 + v16[13]);

  v24 = *(v15 + v16[14]);

  v25 = *(v15 + v16[15]);

  v26 = *(v15 + v16[16]);

  v27 = *(v15 + v16[17]);

  v28 = *(v15 + v16[18]);

  v29 = *(v15 + v16[19]);

  v30 = v6 + v9[8];
  v63(v30, v62);
  v31 = type metadata accessor for StaticUser();
  v32 = *(v30 + *(v31 + 20) + 8);

  v63(v30 + *(v31 + 24), v62);
  v33 = *(v6 + v9[12]);

  v34 = *(v6 + v9[13]);

  v35 = *(v6 + v9[14]);

  v36 = *(v6 + v9[15]);

  v37 = *(v6 + v9[16]);

  v38 = *(v6 + v9[17]);

  v39 = *(v6 + v9[18]);

  v40 = *(v6 + v9[20]);

  v41 = v6 + v9[22];
  v42 = type metadata accessor for StaticResident();
  if (!(*(*(v42 - 1) + 48))(v41, 1, v42))
  {
    v63(v41, v62);
    v43 = *(v41 + v42[5] + 8);

    v44 = *(v41 + v42[6] + 8);

    v45 = *(v41 + v42[7]);

    v46 = *(v41 + v42[8]);

    sub_1D1771B5C(*(v41 + v42[9]), *(v41 + v42[9] + 8));
    v63(v41 + v42[10], v62);
  }

  v47 = *(v4 + v67[6]);

  v48 = *(v4 + v67[7]);

  v49 = *(v4 + v67[8]);

  v50 = *(v4 + v67[9]);

  v51 = *(v4 + v67[10]);

  v52 = *(v4 + v67[11]);

  v53 = *(v4 + v67[12]);

  v54 = *(v4 + v67[13]);

  v55 = *(v4 + v67[14]);

  v56 = *(v4 + v67[15]);

  v57 = *(v4 + v67[16]);

  v58 = *(v4 + v67[17]);

  v59 = *(v4 + v67[18]);

  v60 = *(v4 + v67[19]);

  return MEMORY[0x1EEE6BDD0](v68, v65 + v64, v66 | 7);
}
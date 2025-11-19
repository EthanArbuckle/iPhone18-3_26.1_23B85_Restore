_BYTE *storeEnumTagSinglePayload for AssetRegistryParameters.RemoteOptions(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABAFD688()
{
  result = sub_1ABF21CF4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ABAFD70C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABAFD724(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABAFD73C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABAFD78C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1ABAFD7E8(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1ABAFD824(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1ABAFD864(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for AssetRegistryOverrideAssetEntryParameters.OverrideCodingKeys(unsigned int *a1, int a2)
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

_BYTE *sub_1ABAFD910(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABAFD9D0()
{
  result = qword_1EB4D1F28;
  if (!qword_1EB4D1F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1F28);
  }

  return result;
}

unint64_t sub_1ABAFDA28()
{
  result = qword_1EB4D1F30;
  if (!qword_1EB4D1F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1F30);
  }

  return result;
}

unint64_t sub_1ABAFDA80()
{
  result = qword_1EB4D1F38;
  if (!qword_1EB4D1F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1F38);
  }

  return result;
}

unint64_t sub_1ABAFDAD8()
{
  result = qword_1EB4D1F40;
  if (!qword_1EB4D1F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1F40);
  }

  return result;
}

unint64_t sub_1ABAFDB30()
{
  result = qword_1EB4D1F48;
  if (!qword_1EB4D1F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1F48);
  }

  return result;
}

void sub_1ABAFDB84(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_1ABAA0E6C(a1, a2, a3, a4, a5, a6);
  v9 = (v8 + 16 * v6);
  *v9 = v10;
  v9[1] = v11;
  v12 = (*(v7 + 56) + 16 * v6);
  *v12 = v13;
  v12[1] = v14;
  v15 = *(v7 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    sub_1ABA96F48(v7, v17);
  }
}

unint64_t sub_1ABAFDBC0(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void *sub_1ABAFDD10(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t sub_1ABAFDD44(unint64_t result, char a2, void *a3, float a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + result) = a2;
  *(a3[7] + 4 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

void sub_1ABAFDD88(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1ABAA3F2C(a1, a2, a3, a4);
  v7 = (v6 + 48 * v4);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  v7[2] = v8[2];
  *(*(v5 + 56) + 8 * v4) = v10;
  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_1ABA82DC4(v5, v13);
  }
}

uint64_t sub_1ABAFDDD0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1ABAFF42C(a4, a5[7] + 8 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1ABAFDE3C(unint64_t a1, char a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_1ABA946C0(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void *sub_1ABAFDEA8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1ABA7E2E4(a1, a2, a3, a4, a5);
  result = memcpy((v7 + 112 * v6), v8, 0x70uLL);
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

void sub_1ABAFDEF4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1ABA7E2E4(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    sub_1ABAB6578(v6, v11);
  }
}

void sub_1ABAFDF20(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1ABAA3F2C(a1, a2, a3, a4);
  *(v7 + v4) = v6;
  *(*(v5 + 56) + 8 * v4) = v8;
  v9 = *(v5 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    sub_1ABA82DC4(v5, v11);
  }
}

void sub_1ABAFDF54(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1ABAA3F2C(a1, a2, a3, a4);
  v7 = (v6 + 16 * v4);
  *v7 = v8;
  v7[1] = v9;
  *(*(v5 + 56) + 8 * v4) = v10;
  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_1ABA82DC4(v5, v13);
  }
}

void sub_1ABAFDF8C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_1ABAA0E6C(a1, a2, a3, a4, a5, a6);
  v9 = (v8 + 16 * v6);
  *v9 = v10;
  v9[1] = v11;
  v12 = *(v7 + 56) + 24 * v6;
  *v12 = v13;
  *(v12 + 8) = v14;
  *(v12 + 16) = v15 & 1;
  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    sub_1ABA96F48(v7, v18);
  }
}

void sub_1ABAFDFD8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1ABAA3F2C(a1, a2, a3, a4);
  *(v7 + 8 * v4) = v6;
  *(*(v5 + 56) + 8 * v4) = v8;
  v9 = *(v5 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    sub_1ABA82DC4(v5, v11);
  }
}

unint64_t sub_1ABAFE00C(unint64_t result, _OWORD *a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  v4[2] = a2[2];
  v6 = (a4[7] + 48 * result);
  v7 = a3[1];
  *v6 = *a3;
  v6[1] = v7;
  *(v6 + 25) = *(a3 + 25);
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1ABAFE074(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a7[6] + 32 * a1);
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  result = sub_1ABAFF124(a6, a7[7] + 8 * a1);
  v10 = a7[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v12;
  }

  return result;
}

unint64_t sub_1ABAFE0E4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 24 * result);
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

uint64_t (*sub_1ABAFE134(void *a1, uint64_t a2, uint64_t a3))()
{
  v7 = sub_1ABAFDD10(0x50uLL);
  *a1 = v7;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1ABAFEDF0(v7);
  v7[9] = sub_1ABAFE3E4(v7 + 4, a2, a3);
  return sub_1ABAFF5C0;
}

uint64_t (*sub_1ABAFE1CC(void *a1, uint64_t a2))()
{
  v5 = sub_1ABAFDD10(0x50uLL);
  *a1 = v5;
  v6 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1ABAFF248(v5);
  v5[9] = sub_1ABAFE74C((v5 + 4), a2);
  return sub_1ABAFE25C;
}

uint64_t (*sub_1ABAFE260(void *a1, int a2))()
{
  v5 = sub_1ABAFDD10(0x50uLL);
  *a1 = v5;
  v6 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1ABAFEDF0(v5);
  v5[9] = sub_1ABAFE980((v5 + 4), a2);
  return sub_1ABAFF5C0;
}

uint64_t (*sub_1ABAFE2F0(void *a1, uint64_t a2, uint64_t a3))()
{
  v7 = sub_1ABAFDD10(0x50uLL);
  *a1 = v7;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1ABAFEDF0(v7);
  v7[9] = sub_1ABAFEB84(v7 + 4, a2, a3);
  return sub_1ABAFF5C0;
}

void sub_1ABAFE388(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v3 = sub_1ABA8C520();
  v2(v3);

  free(v1);
}

void (*sub_1ABAFE3E4(void *a1, uint64_t a2, uint64_t a3))()
{
  v4 = v3;
  v8 = sub_1ABAFDD10(0x98uLL);
  *a1 = v8;
  *(v8 + 16) = a3;
  *(v8 + 17) = v3;
  *(v8 + 15) = a2;
  v9 = *v3;
  v10 = sub_1ABA94F58(a2, a3, MEMORY[0x1E69E60C8], sub_1ABA955E8);
  v8[33] = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  sub_1ABAD219C(&qword_1EB4D1F60, &unk_1ABF35150);
  if (sub_1ABF24C64())
  {
    v14 = *v4;
    v15 = sub_1ABA94F58(a2, a3, MEMORY[0x1E69E60C8], sub_1ABA955E8);
    if ((v13 & 1) == (v16 & 1))
    {
      v12 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

LABEL_5:
  *(v8 + 18) = v12;
  if (v13)
  {
    v17 = *(*v4 + 56) + 40 * v12;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 24);
    v21 = *(v17 + 32);
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v21 = 0;
    v19 = 0uLL;
  }

  *(v8 + 10) = v18;
  *(v8 + 88) = v19;
  *(v8 + 13) = v20;
  v8[112] = v21;
  return sub_1ABAFE5A0;
}

void sub_1ABAFE5A0()
{
  sub_1ABA7E2A8();
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 96);
  v5 = *(*v0 + 104);
  v6 = *(*v0 + 112);
  v7 = *(*v0 + 33);
  if ((v8 & 1) == 0)
  {
    if (!v3)
    {
      if ((*(*v0 + 33) & 1) == 0)
      {
        goto LABEL_15;
      }

      v17 = *(*v0 + 80);
      sub_1ABAFEEA0(*(**(v1 + 136) + 48) + 16 * *(v1 + 144));
      sub_1ABF24C84();
      goto LABEL_14;
    }

    v9 = *(v1 + 144);
    v10 = **(v1 + 136);
    if ((v7 & 1) == 0)
    {
      v11 = *(v1 + 120);
      v18 = *(v1 + 128);
      *(v1 + 40) = v2;
      *(v1 + 48) = v3;
      *(v1 + 56) = v4;
      *(v1 + 64) = v5;
      *(v1 + 72) = v6;
      v14 = v1 + 40;
      v13 = v18;
      goto LABEL_13;
    }

LABEL_7:
    v15 = *(v10 + 56) + 40 * v9;
    *v15 = v2;
    *(v15 + 8) = v3;
    *(v15 + 16) = v4;
    *(v15 + 24) = v5;
    *(v15 + 32) = v6;
    goto LABEL_15;
  }

  if (v3)
  {
    v9 = *(v1 + 144);
    v10 = **(v1 + 136);
    if ((v7 & 1) == 0)
    {
      v11 = *(v1 + 120);
      v12 = *(v1 + 128);
      *v1 = v2;
      *(v1 + 8) = v3;
      *(v1 + 16) = v4;
      *(v1 + 24) = v5;
      *(v1 + 32) = v6;
      v13 = v12;
      v14 = v1;
LABEL_13:
      v17 = v2;
      sub_1ABAFC4A8(v9, v11, v13, v14, v10);

LABEL_14:
      v2 = v17;
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  if (*(*v0 + 33))
  {
    v16 = *(*v0 + 80);
    sub_1ABAFEEA0(*(**(v1 + 136) + 48) + 16 * *(v1 + 144));
    sub_1ABF24C84();
    v2 = v16;
  }

LABEL_15:
  v19 = *(v1 + 80);
  v20 = *(v1 + 88);
  v21 = *(v1 + 96);
  v22 = *(v1 + 104);
  v23 = *(v1 + 112);
  sub_1ABAFEE18(v2, v3);
  sub_1ABAFEE5C(v19, v20);
  sub_1ABA7BC1C();

  free(v24);
}

unint64_t (*sub_1ABAFE74C(uint64_t a1, uint64_t a2))(unint64_t result)
{
  v3 = v2;
  *(a1 + 8) = v2;
  *(a1 + 24) = a2;
  v6 = *v2;
  v7 = sub_1ABAF85A0(a2, sub_1ABBB62B8, sub_1ABAF98C8);
  *(a1 + 25) = v8 & 1;
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = v7;
  v10 = v8;
  sub_1ABAD219C(&qword_1EB4D1EA0, &qword_1ABF34A48);
  if (sub_1ABF24C64())
  {
    v11 = *v3;
    v12 = sub_1ABAF85A0(a2, sub_1ABBB62B8, sub_1ABAF98C8);
    if ((v10 & 1) == (v13 & 1))
    {
      v9 = v12;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

LABEL_5:
  *(a1 + 16) = v9;
  if (v10)
  {
    v14 = *(*(*v3 + 56) + 8 * v9);
  }

  else
  {
    v14 = 0;
  }

  *a1 = v14;
  return sub_1ABAFE8B4;
}

unint64_t sub_1ABAFE8B4(unint64_t result)
{
  v1 = *result;
  v2 = *(result + 25);
  if (*result)
  {
    v3 = **(result + 8);
    if (*(result + 25))
    {
      *(v3[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      v6 = *(result + 24);
      v7 = *(result + 16);

      return sub_1ABAFC550(v7, v6, v1, v3);
    }
  }

  else if (*(result + 25))
  {
    v4 = *(result + 16);
    v5 = **(result + 8);
    sub_1ABAD219C(&qword_1EB4D1E88, &qword_1ABF34A30);
    sub_1ABA94588();
    sub_1ABA7D000();

    return sub_1ABF24C84();
  }

  return result;
}

unint64_t (*sub_1ABAFE980(uint64_t a1, int a2))(unint64_t result)
{
  v3 = v2;
  *(a1 + 8) = v2;
  *(a1 + 24) = a2;
  v6 = *v2;
  v7 = sub_1ABAF8618(a2);
  *(a1 + 26) = v8 & 1;
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = v7;
  v10 = v8;
  sub_1ABAD219C(&qword_1EB4D1E90, &qword_1ABF34A38);
  if (sub_1ABF24C64())
  {
    v11 = *v3;
    v12 = sub_1ABAF8618(a2);
    if ((v10 & 1) == (v13 & 1))
    {
      v9 = v12;
      goto LABEL_5;
    }

LABEL_10:
    sub_1ABAD219C(&qword_1EB4D1E68, &qword_1ABF34A20);
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

LABEL_5:
  *(a1 + 16) = v9;
  if (v10)
  {
    v14 = *(*(*v3 + 56) + 8 * v9);
  }

  else
  {
    v14 = 0;
  }

  *a1 = v14;
  return sub_1ABAFEAA4;
}

unint64_t sub_1ABAFEAA4(unint64_t result)
{
  v1 = *result;
  v2 = *(result + 26);
  if (*result)
  {
    v3 = **(result + 8);
    if (*(result + 26))
    {
      *(v3[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      v6 = *(result + 24);
      v7 = *(result + 16);

      return sub_1ABAFC594(v7, v6, v1, v3);
    }
  }

  else if (*(result + 26))
  {
    v4 = *(result + 16);
    v5 = **(result + 8);
    sub_1ABAD219C(&qword_1EB4D1E68, &qword_1ABF34A20);
    sub_1ABAD219C(&qword_1EB4D1E70, &qword_1ABF34A28);
    sub_1ABAF80C8();
    sub_1ABA7D000();

    return sub_1ABF24C84();
  }

  return result;
}

void (*sub_1ABAFEB84(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = sub_1ABAFDD10(0x30uLL);
  *a1 = v8;
  v8[2] = a3;
  v8[3] = v3;
  v8[1] = a2;
  v9 = *v3;
  v10 = sub_1ABA94F58(a2, a3, MEMORY[0x1E69E60C8], sub_1ABA955E8);
  *(v8 + 40) = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  sub_1ABAD219C(&qword_1EB4D2028, &qword_1ABF35218);
  if (sub_1ABF24C64())
  {
    v14 = *v4;
    v15 = sub_1ABA94F58(a2, a3, MEMORY[0x1E69E60C8], sub_1ABA955E8);
    if ((v13 & 1) == (v16 & 1))
    {
      v12 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[4] = v12;
  if (v13)
  {
    v17 = *(*(*v4 + 56) + 8 * v12);
  }

  else
  {
    v17 = 0;
  }

  *v8 = v17;
  return sub_1ABAFED14;
}

void sub_1ABAFED14(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      sub_1ABAFDEF4(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    sub_1ABAFEEA0(*(*v1[3] + 48) + 16 * v1[4]);
    sub_1ABAD219C(&qword_1EB4D1E60, &qword_1ABF34A18);
    sub_1ABF24C84();
  }

  v6 = *v1;

  free(v1);
}

uint64_t (*sub_1ABAFEDF0(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1ABAFF5AC;
}

uint64_t sub_1ABAFEE18(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1ABAFEE5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1ABAFEEF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CodableLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABAFEF58(uint64_t a1)
{
  v2 = type metadata accessor for CodableLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_1ABAFF238(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t (*sub_1ABAFF248(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1ABAFF270;
}

uint64_t sub_1ABAFF27C(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
    return sub_1ABF25254();
  }

  sub_1ABF25254();
  sub_1ABF25254();
  sub_1ABF23D34();
}

uint64_t sub_1ABAFF390(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1ABAFF488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_1ABAFF544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_1ABAFF60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1ABA94F58(a2, v4, a3, a4);
}

uint64_t AssetRegistryAssetEntry.location.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 26);
  v6 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 26) = v5;
  *(a1 + 24) = v6;
  return sub_1ABAF8040(v2, v3, v4, v6);
}

__n128 AssetRegistryAssetEntry.init(location:ratchetNumber:userInfo:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a1[1].n128_u64[0];
  v5 = a1[1].n128_u16[4];
  v6 = a1[1].n128_u8[10];
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u64[0] = v4;
  a4[1].n128_u8[10] = v6;
  a4[1].n128_u16[4] = v5;
  a4[2].n128_u64[0] = a2;
  a4[2].n128_u64[1] = a3;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AssetRegistryAssetEntry.verifyValidity()()
{
  *(v0 + 26);
  v1 = *(v0 + 12);
  if ((v1 & 0x80) == 0)
  {
    if (v1)
    {
      v3 = v0[1];
      v5 = v0[2];
      sub_1ABAAA4A0();
      sub_1ABAAA44C();
      if ((sub_1ABA80668() & 1) == 0)
      {
        return;
      }

      sub_1ABAFC69C();
    }

    else
    {
      v4 = *v0;
      v6 = v0[1];
      sub_1ABAAA4A0();
      sub_1ABAAA44C();
      if (sub_1ABA80668())
      {
        return;
      }

      sub_1ABAF8054();
    }

    swift_allocError();
    *v2 = 0;
    swift_willThrow();
  }
}

uint64_t sub_1ABAFF778(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E74656863746172 && a2 == 0xED00007265626D75;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABAFF890(char a1)
{
  if (!a1)
  {
    return 0x6E6F697461636F6CLL;
  }

  if (a1 == 1)
  {
    return 0x4E74656863746172;
  }

  return 0x6F666E4972657375;
}

uint64_t sub_1ABAFF8FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABAFF778(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABAFF924(uint64_t a1)
{
  v2 = sub_1ABAFFEF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABAFF960(uint64_t a1)
{
  v2 = sub_1ABAFFEF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetRegistryAssetEntry.encode(to:)(void *a1)
{
  v23 = sub_1ABAD219C(&qword_1EB4D2050, &unk_1ABF35240);
  v3 = sub_1ABA7BB64(v23);
  v25 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 26);
  v11 = *(v1 + 24);
  v12 = *(v1 + 32);
  v22[0] = *(v1 + 40);
  v22[1] = v12;
  v13 = a1[3];
  v22[2] = a1[4];
  v14 = a1;
  v16 = v22 - v15;
  sub_1ABA93E20(v14, v13);
  sub_1ABAF8040(v7, v8, v9, v11);
  sub_1ABAFFEF0();
  sub_1ABF252E4();
  v26 = v7;
  v27 = v8;
  v28 = v9;
  v30 = v10;
  v17 = v23;
  v29 = v11;
  v31 = 0;
  sub_1ABAFFF44();
  v18 = v24;
  sub_1ABF24F84();
  sub_1ABAF7FB8(v26, v27, v28, v29);
  if (v18)
  {
    return (*(v25 + 8))(v16, v17);
  }

  v20 = v22[0];
  v21 = v25;
  LOBYTE(v26) = 1;
  sub_1ABF24F74();
  v26 = v20;
  v31 = 2;
  sub_1ABAD219C(&qword_1EB4D2068, &qword_1ABF41380);
  sub_1ABAFFFEC(&qword_1EB4D2070);
  sub_1ABF24F14();
  return (*(v21 + 8))(v16, v17);
}

uint64_t AssetRegistryAssetEntry.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D2078, &qword_1ABF35250);
  v6 = sub_1ABA7BB64(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABAFFEF0();
  sub_1ABF252C4();
  if (v2)
  {
    return sub_1ABA84B54(a1);
  }

  sub_1ABAFFF98();
  sub_1ABF24E64();
  v10 = v23;
  LOBYTE(v23) = 1;
  v22 = sub_1ABF24E54();
  sub_1ABAD219C(&qword_1EB4D2068, &qword_1ABF41380);
  sub_1ABAFFFEC(&qword_1ED86B400);
  sub_1ABF24DF4();
  v11 = sub_1ABA8E0A8();
  v12(v11);
  *a2 = v10;
  *(a2 + 8) = v24;
  *(a2 + 16) = v25;
  *(a2 + 26) = v27;
  *(a2 + 24) = v26;
  *(a2 + 32) = v22;
  *(a2 + 40) = v23;
  v13 = sub_1ABA7D120();
  sub_1ABAF8040(v13, v14, v15, v16);

  sub_1ABA84B54(a1);
  v17 = sub_1ABA7D120();
  sub_1ABAF7FB8(v17, v18, v19, v20);
}

unint64_t sub_1ABAFFEF0()
{
  result = qword_1EB4D2058;
  if (!qword_1EB4D2058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2058);
  }

  return result;
}

unint64_t sub_1ABAFFF44()
{
  result = qword_1EB4D2060;
  if (!qword_1EB4D2060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2060);
  }

  return result;
}

unint64_t sub_1ABAFFF98()
{
  result = qword_1EB4D2080;
  if (!qword_1EB4D2080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2080);
  }

  return result;
}

uint64_t sub_1ABAFFFEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D2068, &qword_1ABF41380);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ABB00058(uint64_t a1)
{
  *(a1 + 8) = sub_1ABB00088();
  result = sub_1ABB000DC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABB00088()
{
  result = qword_1EB4D2088;
  if (!qword_1EB4D2088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2088);
  }

  return result;
}

unint64_t sub_1ABB000DC()
{
  result = qword_1EB4D2090;
  if (!qword_1EB4D2090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2090);
  }

  return result;
}

uint64_t sub_1ABB00148(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABB0019C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetRegistryAssetEntry.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABB002EC()
{
  result = qword_1EB4D2098;
  if (!qword_1EB4D2098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2098);
  }

  return result;
}

unint64_t sub_1ABB00344()
{
  result = qword_1EB4D20A0;
  if (!qword_1EB4D20A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D20A0);
  }

  return result;
}

unint64_t sub_1ABB0039C()
{
  result = qword_1EB4D20A8;
  if (!qword_1EB4D20A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D20A8);
  }

  return result;
}

void AssetRegistryAssetLocation.LocalAsset.localURL.getter()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABF21C24();
  v2 = sub_1ABA7BB64(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7BC58();
  v9 = v8 - v7;
  v10 = *(*(sub_1ABAD219C(&qword_1EB4D1E40, &qword_1ABF349F0) - 8) + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v21 - v12;
  v14 = v0[1];
  if (v0[3])
  {
    v15 = v0[2];
    LOBYTE(v22) = *v0 & 1;
    v23 = v14;
    v24 = v15;
    AssetRegistryAssetLocation.LocalAsset.LocalRelativeAsset.localURL.getter();
  }

  else
  {
    v22 = *v0;
    v23 = v14;
    sub_1ABA7E32C();
    v21[1] = v16;
    v21[2] = v17;
    sub_1ABAAA4A0();
    sub_1ABAAA44C();
    if (sub_1ABF23B44())
    {
      v18 = sub_1ABF21CF4();
      sub_1ABA7B9B4(v13, 1, 1, v18);
      (*(v4 + 104))(v9, *MEMORY[0x1E6968F70], v1);

      sub_1ABF21CD4();
    }

    else
    {
      sub_1ABAF8054();
      v19 = sub_1ABA7BD00();
      sub_1ABA8E0B8(v19, v20);
    }
  }

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AssetRegistryAssetLocation.verifyValidity()()
{
  *(v0 + 26);
  v1 = *(v0 + 12);
  if ((v1 & 0x80) == 0)
  {
    if (v1)
    {
      v20 = v0[1];
      v22 = v0[2];
      sub_1ABA7E32C();
      v18 = v2;
      sub_1ABAAA4A0();
      v3 = sub_1ABAAA44C();
      sub_1ABA7D134(v3, MEMORY[0x1E69E6158], v4, v5, v3, v6, v7, v8, v18);
      if ((sub_1ABF23B44() & 1) == 0)
      {
        return;
      }

      sub_1ABAFC69C();
    }

    else
    {
      v21 = *v0;
      v23 = v0[1];
      sub_1ABA7E32C();
      v19 = v9;
      sub_1ABAAA4A0();
      v10 = sub_1ABAAA44C();
      sub_1ABA7D134(v10, MEMORY[0x1E69E6158], v11, v12, v10, v13, v14, v15, v19);
      if (sub_1ABF23B44())
      {
        return;
      }

      sub_1ABAF8054();
    }

    v16 = sub_1ABA7BD00();
    sub_1ABA8E0B8(v16, v17);
  }
}

IntelligencePlatform::AssetRegistryAcceptableBundleName_optional __swiftcall AssetRegistryAcceptableBundleName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

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

unint64_t AssetRegistryAcceptableBundleName.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000018;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

unint64_t sub_1ABB00774@<X0>(unint64_t *a1@<X8>)
{
  result = AssetRegistryAcceptableBundleName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void AssetRegistryAssetLocation.LocalAsset.LocalAbsoluteAsset.localURL.getter()
{
  sub_1ABA7BCA8();
  v2 = sub_1ABF21C24();
  v3 = sub_1ABA7BB64(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  v10 = v9 - v8;
  v11 = *(*(sub_1ABAD219C(&qword_1EB4D1E40, &qword_1ABF349F0) - 8) + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BCE0();
  v13 = *v0;
  v14 = v0[1];
  sub_1ABA7E32C();
  sub_1ABAAA4A0();
  sub_1ABAAA44C();
  sub_1ABAA4434();
  if (sub_1ABF23B44())
  {
    v15 = sub_1ABF21CF4();
    sub_1ABA7B9B4(v1, 1, 1, v15);
    (*(v5 + 104))(v10, *MEMORY[0x1E6968F70], v2);

    sub_1ABF21CD4();
  }

  else
  {
    sub_1ABAF8054();
    v16 = sub_1ABA7BD00();
    sub_1ABA8E0B8(v16, v17);
  }

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AssetRegistryAssetLocation.LocalAsset.LocalAbsoluteAsset.verifyValidity()()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1ABA7E32C();
  v12 = v3;
  sub_1ABAAA4A0();
  v4 = sub_1ABAAA44C();
  sub_1ABA7D134(v4, MEMORY[0x1E69E6158], v5, v6, v4, v7, v8, v9, v12);
  if ((sub_1ABF23B44() & 1) == 0)
  {
    sub_1ABAF8054();
    v10 = sub_1ABA7BD00();
    sub_1ABA8E0B8(v10, v11);
  }
}

IntelligencePlatform::AssetRegistryAssetLocation::LocalAsset::LocalAbsoluteAsset __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AssetRegistryAssetLocation.LocalAsset.LocalAbsoluteAsset.init(absoluteFilePath:)(Swift::String absoluteFilePath)
{
  object = absoluteFilePath._object;
  countAndFlagsBits = absoluteFilePath._countAndFlagsBits;
  v4 = v1;
  sub_1ABA7E32C();
  v16 = v5;
  sub_1ABAAA4A0();
  v6 = sub_1ABAAA44C();
  sub_1ABA7D134(v6, MEMORY[0x1E69E6158], v7, v8, v6, v9, v10, v11, v16);
  v12 = sub_1ABF23B44();
  if (v12)
  {
    *v4 = countAndFlagsBits;
    v4[1] = object;
  }

  else
  {
    sub_1ABAF8054();
    sub_1ABA7BD00();
    *v14 = 0;
    swift_willThrow();
  }

  result.absoluteFilePath._object = v13;
  result.absoluteFilePath._countAndFlagsBits = v12;
  return result;
}

void AssetRegistryAssetLocation.LocalAsset.LocalAbsoluteAsset.init(filePathURL:)()
{
  sub_1ABA7BCA8();
  v1 = v0;
  v3 = v2;
  v4 = sub_1ABF21CF4();
  v5 = sub_1ABA7BB64(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BC58();
  v12 = v11 - v10;
  if (sub_1ABF21C04())
  {
    v20 = v3;
    sub_1ABF21C14();
    v13 = sub_1ABF21CB4();
    v15 = v14;
    v16 = *(v7 + 8);
    v16(v12, v4);
    sub_1ABA7E32C();
    sub_1ABAAA4A0();
    sub_1ABAAA44C();
    sub_1ABAA4434();
    if (sub_1ABF23B44())
    {
      v16(v1, v4);
      *v20 = v13;
      v20[1] = v15;
    }

    else
    {
      sub_1ABAF8054();
      v18 = sub_1ABA7BD00();
      sub_1ABA8E0B8(v18, v19);
      v16(v1, v4);
    }
  }

  else
  {
    sub_1ABAF8054();
    sub_1ABA7BD00();
    *v17 = 1;
    swift_willThrow();
    (*(v7 + 8))(v1, v4);
  }

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABB00D20(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001ABF7EDC0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABB00DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB00D20(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABB00DEC(uint64_t a1)
{
  v2 = sub_1ABB02738();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB00E28(uint64_t a1)
{
  v2 = sub_1ABB02738();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetRegistryAssetLocation.LocalAsset.LocalAbsoluteAsset.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D20B0, &qword_1ABF354D8);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7ED98();
  v10 = *v0;
  v11 = v0[1];
  v12 = v3[4];
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABB02738();
  sub_1ABA8E0D4();
  sub_1ABF252E4();
  sub_1ABAA2F9C();
  sub_1ABF24F34();
  (*(v6 + 8))(v1, v4);
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void AssetRegistryAssetLocation.LocalAsset.LocalAbsoluteAsset.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D20C0, &qword_1ABF354E0);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7ED98();
  v9 = v2[3];
  v10 = v2[4];
  v11 = sub_1ABAA2F9C();
  sub_1ABA88DCC(v11, v12);
  sub_1ABB02738();
  sub_1ABA8E0D4();
  sub_1ABF252C4();
  if (!v0)
  {
    v13 = sub_1ABF24E14();
    v15 = v14;
    v16 = sub_1ABA7BCF0();
    v17(v16);
    *v4 = v13;
    v4[1] = v15;
  }

  sub_1ABA84B54(v2);
  sub_1ABA7BC90();
}

void AssetRegistryAssetLocation.LocalAsset.LocalRelativeAsset.localURL.getter()
{
  sub_1ABA7BCA8();
  v36 = v2;
  v3 = sub_1ABF21C24();
  v4 = sub_1ABA7BB64(v3);
  v34 = v5;
  v35 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v33 = v9 - v8;
  v10 = *(*(sub_1ABAD219C(&qword_1EB4D1E40, &qword_1ABF349F0) - 8) + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BCE0();
  v12 = sub_1ABF21CF4();
  v13 = sub_1ABA7BB64(v12);
  v32 = v14;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v31 - v20;
  v22 = *v0;
  v23 = *(v0 + 2);
  v39 = *(v0 + 1);
  v40 = v23;
  sub_1ABA7E32C();
  v37 = v24;
  v38 = v25;
  sub_1ABAAA4A0();
  sub_1ABAAA44C();
  sub_1ABAA4434();
  if (sub_1ABF23B44())
  {
    sub_1ABAFC69C();
    sub_1ABA7BD00();
    *v26 = 0;
LABEL_13:
    swift_willThrow();
    goto LABEL_14;
  }

  if (v22)
  {
    if (qword_1ED870628 != -1)
    {
      swift_once();
    }

    v27 = &qword_1ED870630;
  }

  else
  {
    if (qword_1ED871EA0 != -1)
    {
      swift_once();
    }

    v27 = &qword_1ED871EA8;
  }

  v28 = [*v27 resourceURL];
  if (!v28)
  {
    sub_1ABAFC5D8();
    sub_1ABA7BD00();
    goto LABEL_13;
  }

  v29 = v28;
  sub_1ABF21CA4();

  v30 = v32;
  (*(v32 + 32))(v21, v19, v12);
  (*(v30 + 16))(v1, v21, v12);
  sub_1ABA7B9B4(v1, 0, 1, v12);
  (*(v34 + 104))(v33, *MEMORY[0x1E6968F70], v35);

  sub_1ABF21CD4();
  (*(v30 + 8))(v21, v12);
LABEL_14:
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AssetRegistryAssetLocation.LocalAsset.LocalRelativeAsset.verifyValidity()()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  sub_1ABA7E32C();
  v12 = v3;
  sub_1ABAAA4A0();
  v4 = sub_1ABAAA44C();
  sub_1ABA7D134(v4, MEMORY[0x1E69E6158], v5, v6, v4, v7, v8, v9, v12);
  if (sub_1ABF23B44())
  {
    sub_1ABAFC69C();
    v10 = sub_1ABA7BD00();
    sub_1ABA8E0B8(v10, v11);
  }
}

uint64_t _s20IntelligencePlatform013AssetRegistryC8LocationO05LocalC0O0f8AbsoluteC0V13ValidityErrorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t AssetRegistryAssetLocation.LocalAsset.LocalRelativeAsset.ResourceError.hashValue.getter()
{
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0](0);
  return sub_1ABF25294();
}

uint64_t sub_1ABB0164C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E656C646E7562 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001ABF86A60 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABB0172C(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x614E656C646E7562;
  }
}

uint64_t sub_1ABB017BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB0164C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB017E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABB01724();
  *a1 = result;
  return result;
}

uint64_t sub_1ABB0180C(uint64_t a1)
{
  v2 = sub_1ABB03B44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB01848(uint64_t a1)
{
  v2 = sub_1ABB03B44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetRegistryAssetLocation.LocalAsset.LocalRelativeAsset.encode(to:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D20C8, &qword_1ABF354E8);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E338();
  v11 = *v0;
  v13 = *(v0 + 2);
  v14 = *(v0 + 1);
  v12 = v4[4];
  sub_1ABA88DCC(v4, v4[3]);
  sub_1ABB03B44();
  sub_1ABAA2B8C();
  sub_1ABB03B98();
  sub_1ABAA5ECC();
  sub_1ABF24F84();
  if (!v1)
  {
    sub_1ABAA4870();
  }

  (*(v7 + 8))(v2, v5);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void AssetRegistryAssetLocation.LocalAsset.LocalRelativeAsset.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D20E0, &qword_1ABF354F0);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7ED98();
  v9 = v2[3];
  v10 = v2[4];
  v11 = sub_1ABAA2F9C();
  sub_1ABA88DCC(v11, v12);
  sub_1ABB03B44();
  sub_1ABA8E0D4();
  sub_1ABF252C4();
  if (!v0)
  {
    sub_1ABB03BEC();
    sub_1ABA979C0();
    sub_1ABF24E64();
    sub_1ABAA3B9C();
    v13 = sub_1ABF24E14();
    v15 = v14;
    v16 = sub_1ABA7BCF0();
    v17(v16);
    *v4 = v10;
    *(v4 + 8) = v13;
    *(v4 + 16) = v15;
  }

  sub_1ABA84B54(v2);
  sub_1ABA7BC90();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AssetRegistryAssetLocation.LocalAsset.verifyValidity()()
{
  if (v0[3])
  {
    v19 = v0[1];
    v21 = v0[2];
    sub_1ABA7E32C();
    v17 = v1;
    sub_1ABAAA4A0();
    v2 = sub_1ABAAA44C();
    sub_1ABA7D134(v2, MEMORY[0x1E69E6158], v3, v4, v2, v5, v6, v7, v17);
    if ((sub_1ABF23B44() & 1) == 0)
    {
      return;
    }

    sub_1ABAFC69C();
  }

  else
  {
    v20 = *v0;
    v22 = v0[1];
    sub_1ABA7E32C();
    v18 = v8;
    sub_1ABAAA4A0();
    v9 = sub_1ABAAA44C();
    sub_1ABA7D134(v9, MEMORY[0x1E69E6158], v10, v11, v9, v12, v13, v14, v18);
    if (sub_1ABF23B44())
    {
      return;
    }

    sub_1ABAF8054();
  }

  v15 = sub_1ABA7BD00();
  sub_1ABA8E0B8(v15, v16);
}

uint64_t sub_1ABB01C58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574756C6F736261 && a2 == 0xE800000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001ABF7EDE0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABB01D28(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6574756C6F736261;
  }
}

uint64_t sub_1ABB01D68(uint64_t a1)
{
  v2 = sub_1ABB03D3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB01DA4(uint64_t a1)
{
  v2 = sub_1ABB03D3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB01DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB01C58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB01E10(uint64_t a1)
{
  v2 = sub_1ABB03C40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB01E4C(uint64_t a1)
{
  v2 = sub_1ABB03C40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB01E88(uint64_t a1)
{
  v2 = sub_1ABB03C94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB01EC4(uint64_t a1)
{
  v2 = sub_1ABB03C94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetRegistryAssetLocation.LocalAsset.encode(to:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D20E8, &qword_1ABF354F8);
  v6 = sub_1ABA7BB64(v5);
  v34 = v7;
  v35 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BCE0();
  v11 = sub_1ABAD219C(&qword_1EB4D20F0, &qword_1ABF35500);
  v12 = sub_1ABA7BB64(v11);
  v32 = v13;
  v33 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v38 = sub_1ABAD219C(&qword_1EB4D20F8, &qword_1ABF35508);
  sub_1ABA7BB64(v38);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA7ED98();
  v24 = v0[1];
  v36 = *v0;
  v37 = v24;
  v31 = v0[2];
  v25 = *(v0 + 24);
  v26 = v4[4];
  sub_1ABA88DCC(v4, v4[3]);
  sub_1ABB03C40();
  sub_1ABA8E0D4();
  sub_1ABF252E4();
  if (v25)
  {
    LOBYTE(v39) = 1;
    sub_1ABB03C94();
    v27 = v38;
    sub_1ABA979C0();
    sub_1ABF24EC4();
    LOBYTE(v39) = v36 & 1;
    v40 = v37;
    v41 = v31;
    sub_1ABB03CE8();
    v28 = v35;
    sub_1ABF24F84();
    (*(v34 + 8))(v2, v28);
  }

  else
  {
    LOBYTE(v39) = 0;
    sub_1ABB03D3C();
    v27 = v38;
    sub_1ABA979C0();
    sub_1ABF24EC4();
    v39 = v36;
    v40 = v37;
    sub_1ABB03D90();
    v29 = v33;
    sub_1ABF24F84();
    (*(v32 + 8))(v18, v29);
  }

  (*(v20 + 8))(v1, v27);
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void AssetRegistryAssetLocation.LocalAsset.init(from:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  v43 = v5;
  v6 = sub_1ABAD219C(&qword_1EB4D2128, &qword_1ABF35510);
  sub_1ABA7BB64(v6);
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7E338();
  v10 = sub_1ABAD219C(&qword_1EB4D2130, &qword_1ABF35518);
  sub_1ABA7BB64(v10);
  v41 = v11;
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7BCE0();
  v15 = sub_1ABAD219C(&qword_1EB4D2138, &unk_1ABF35520);
  sub_1ABA7BB64(v15);
  v42 = v16;
  v18 = *(v17 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7ED98();
  v20 = v4[4];
  sub_1ABA88DCC(v4, v4[3]);
  sub_1ABB03C40();
  sub_1ABA8E0D4();
  sub_1ABF252C4();
  if (v0)
  {
    goto LABEL_9;
  }

  v47 = v4;
  v21 = sub_1ABF24EA4();
  v25 = sub_1ABAD4EA4(v21, 0);
  if (v23 == v24 >> 1)
  {
LABEL_7:
    v28 = sub_1ABF24B44();
    sub_1ABA7BD00();
    v30 = v29;
    v31 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v30 = &type metadata for AssetRegistryAssetLocation.LocalAsset;
    sub_1ABF24DA4();
    sub_1ABA835CC();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v42 + 8))(v1, v15);
    v4 = v47;
LABEL_9:
    sub_1ABA84B54(v4);
LABEL_10:
    sub_1ABA7FC10();
    sub_1ABA7BC90();
    return;
  }

  if (v23 < (v24 >> 1))
  {
    v26 = *(v22 + v23);
    sub_1ABAD4E90(v23 + 1);
    sub_1ABA97444();
    if (!(v25 >> 1))
    {
      v27 = v26;
      if (v26)
      {
        sub_1ABB03C94();
        sub_1ABA979C0();
        sub_1ABF24D94();
        sub_1ABB03DE4();
        sub_1ABAA56AC();
        swift_unknownObjectRelease();
        v32 = sub_1ABA8E620();
        v33(v32);
        v34 = sub_1ABA814FC();
        v35(v34);
        v36 = 1;
        v38 = v45;
        v37 = v46;
        v27 = v26;
      }

      else
      {
        LOBYTE(v44) = 0;
        sub_1ABB03D3C();
        sub_1ABA979C0();
        sub_1ABF24D94();
        sub_1ABB03E38();
        sub_1ABF24E64();
        swift_unknownObjectRelease();
        (*(v41 + 8))(v2, v10);
        v39 = sub_1ABA814FC();
        v40(v39);
        v37 = 0;
        v36 = v44;
        v38 = v45;
      }

      *v43 = v36;
      *(v43 + 8) = v38;
      *(v43 + 16) = v37;
      *(v43 + 24) = v27;
      sub_1ABA84B54(v47);
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_1ABB02738()
{
  result = qword_1EB4D20B8;
  if (!qword_1EB4D20B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D20B8);
  }

  return result;
}

uint64_t sub_1ABB028C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F74636166 && a2 == 0xE600000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7079547465737361 && a2 == 0xE900000000000065;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEF736E6F6974704FLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1ABB02A34(char a1)
{
  result = 0x63617073656D616ELL;
  switch(a1)
  {
    case 1:
      result = 0x726F74636166;
      break;
    case 2:
      result = 0x7079547465737361;
      break;
    case 3:
      result = 0x64616F6C6E776F64;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABB02AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB028C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB02AF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABB02A2C();
  *a1 = result;
  return result;
}

uint64_t sub_1ABB02B18(uint64_t a1)
{
  v2 = sub_1ABB03EE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB02B54(uint64_t a1)
{
  v2 = sub_1ABB03EE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetRegistryAssetLocation.TrialAsset.encode(to:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D2158, &qword_1ABF35530);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E338();
  v11 = *v0;
  v15 = *(v0 + 2);
  v16 = *(v0 + 1);
  v13 = *(v0 + 25);
  v14 = v0[24];
  v12 = v4[4];
  sub_1ABA88DCC(v4, v4[3]);
  sub_1ABB03EE0();
  sub_1ABAA2B8C();
  sub_1ABB03F34();
  sub_1ABAA5ECC();
  sub_1ABF24F84();
  if (!v1)
  {
    sub_1ABAA4870();
    sub_1ABB03F88();
    sub_1ABAA5ECC();
    sub_1ABF24F84();
    sub_1ABB03FDC();
    sub_1ABAA5ECC();
    sub_1ABF24F14();
  }

  (*(v7 + 8))(v2, v5);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void AssetRegistryAssetLocation.TrialAsset.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, __int16 a11, char a12)
{
  sub_1ABA7BCA8();
  v14 = v13;
  v16 = v15;
  v17 = sub_1ABAD219C(&qword_1EB4D2180, &qword_1ABF35538);
  sub_1ABA7BB64(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7BCE0();
  v23 = v14[3];
  v24 = v14[4];
  v25 = sub_1ABAA2F9C();
  sub_1ABA88DCC(v25, v26);
  sub_1ABB03EE0();
  sub_1ABF252C4();
  if (v12)
  {
    sub_1ABA84B54(v14);
  }

  else
  {
    sub_1ABB04030();
    sub_1ABA905C0();
    sub_1ABF24E64();
    sub_1ABAA3B9C();
    v27 = sub_1ABF24E14();
    v29 = v28;
    v33 = v27;
    sub_1ABB04084();
    sub_1ABA905C0();
    sub_1ABF24E64();
    sub_1ABB040D8();
    sub_1ABA905C0();
    sub_1ABF24DF4();
    v30 = *(v19 + 8);
    v31 = sub_1ABA7BC4C();
    v32(v31);
    *v16 = v24;
    *(v16 + 8) = v33;
    *(v16 + 16) = v29;
    *(v16 + 24) = a12;
    *(v16 + 25) = a10;

    sub_1ABA84B54(v14);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABB02F70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7373416C61636F6CLL && a2 == 0xEA00000000007465;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7373416C61697274 && a2 == 0xEA00000000007465)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABB03048(char a1)
{
  if (a1)
  {
    return 0x7373416C61697274;
  }

  else
  {
    return 0x7373416C61636F6CLL;
  }
}

uint64_t sub_1ABB0307C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABB030EC()
{
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0](0);
  return sub_1ABF25294();
}

uint64_t sub_1ABB03158(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABB031AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB02F70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB031D4(uint64_t a1)
{
  v2 = sub_1ABB0412C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB03210(uint64_t a1)
{
  v2 = sub_1ABB0412C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB0324C(uint64_t a1)
{
  v2 = sub_1ABB04228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB03288(uint64_t a1)
{
  v2 = sub_1ABB04228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB032C4(uint64_t a1)
{
  v2 = sub_1ABB04180();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB03300(uint64_t a1)
{
  v2 = sub_1ABB04180();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetRegistryAssetLocation.encode(to:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D2198, &qword_1ABF35540);
  v6 = sub_1ABA7BB64(v5);
  v32 = v7;
  v33 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BCE0();
  v11 = sub_1ABAD219C(&qword_1EB4D21A0, &qword_1ABF35548);
  v12 = sub_1ABA7BB64(v11);
  v30 = v13;
  v31 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v37 = sub_1ABAD219C(&qword_1EB4D21A8, &qword_1ABF35550);
  sub_1ABA7BB64(v37);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA7ED98();
  v24 = v0[1];
  v34 = *v0;
  v35 = v24;
  v36 = v0[2];
  v25 = *(v0 + 12) | (*(v0 + 26) << 16);
  v26 = v4[4];
  sub_1ABA88DCC(v4, v4[3]);
  sub_1ABB0412C();
  sub_1ABA8E0D4();
  sub_1ABF252E4();
  if ((v25 & 0x80) != 0)
  {
    LOBYTE(v38) = 1;
    sub_1ABB04180();
    v27 = v37;
    sub_1ABA979C0();
    sub_1ABF24EC4();
    LOBYTE(v38) = v34;
    v39 = v35;
    v40 = v36;
    v41 = v25 & 1;
    v42 = v25 >> 8;
    sub_1ABB041D4();
    v29 = v33;
    sub_1ABF24F84();
    (*(v32 + 8))(v2, v29);
  }

  else
  {
    LOBYTE(v38) = 0;
    sub_1ABB04228();
    v27 = v37;
    sub_1ABA979C0();
    sub_1ABF24EC4();
    v38 = v34;
    v39 = v35;
    v40 = v36;
    v41 = v25 & 1;
    sub_1ABB0427C();
    v28 = v31;
    sub_1ABF24F84();
    (*(v30 + 8))(v18, v28);
  }

  (*(v20 + 8))(v1, v27);
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void AssetRegistryAssetLocation.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v43 = v4;
  v5 = sub_1ABAD219C(&qword_1EB4D21D8, &qword_1ABF35558);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7E338();
  v9 = sub_1ABAD219C(&qword_1EB4D21E0, &qword_1ABF35560);
  sub_1ABA7BB64(v9);
  v11 = *(v10 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7ED98();
  v13 = sub_1ABAD219C(&qword_1EB4D21E8, &qword_1ABF35568);
  sub_1ABA7BB64(v13);
  v42 = v14;
  v16 = *(v15 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7BCE0();
  v18 = v3[4];
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABB0412C();
  sub_1ABF252C4();
  if (v0)
  {
    goto LABEL_8;
  }

  v49 = v3;
  v19 = sub_1ABF24EA4();
  v23 = sub_1ABAD4EA4(v19, 0);
  if (v21 == v22 >> 1)
  {
LABEL_7:
    v24 = sub_1ABF24B44();
    sub_1ABA7BD00();
    v26 = v25;
    v27 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v26 = &type metadata for AssetRegistryAssetLocation;
    sub_1ABF24DA4();
    sub_1ABA835CC();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v42 + 8))(v1, v13);
    v3 = v49;
LABEL_8:
    sub_1ABA84B54(v3);
LABEL_9:
    sub_1ABA7FC10();
    sub_1ABA7BC90();
    return;
  }

  if (v21 < (v22 >> 1))
  {
    v41 = *(v20 + v21);
    sub_1ABAD4E90(v21 + 1);
    sub_1ABA97444();
    if (!(v23 >> 1))
    {
      if (v41)
      {
        sub_1ABB04180();
        sub_1ABAA24CC();
        sub_1ABB042D0();
        sub_1ABAA56AC();
        swift_unknownObjectRelease();
        v28 = sub_1ABA8E620();
        v29(v28);
        v30 = sub_1ABA835BC();
        v31(v30);
        v37 = 1;
        v38 = v45;
        v39 = v46;
        if (v47)
        {
          v32 = 129;
        }

        else
        {
          v32 = 128;
        }

        v40 = v32 | (v48 << 8);
      }

      else
      {
        LOBYTE(v44) = 0;
        sub_1ABB04228();
        sub_1ABAA24CC();
        sub_1ABB04324();
        sub_1ABAA56AC();
        swift_unknownObjectRelease();
        v33 = sub_1ABA8E620();
        v34(v33);
        v35 = sub_1ABA835BC();
        v36(v35);
        v37 = v44;
        v38 = v45;
        v39 = v46;
        v40 = v47;
      }

      *v43 = v37;
      *(v43 + 8) = v38;
      *(v43 + 16) = v39;
      *(v43 + 24) = v40;
      *(v43 + 26) = BYTE2(v40);
      sub_1ABA84B54(v3);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_1ABB03B44()
{
  result = qword_1EB4D20D0;
  if (!qword_1EB4D20D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D20D0);
  }

  return result;
}

unint64_t sub_1ABB03B98()
{
  result = qword_1EB4D20D8;
  if (!qword_1EB4D20D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D20D8);
  }

  return result;
}

unint64_t sub_1ABB03BEC()
{
  result = qword_1ED86B430;
  if (!qword_1ED86B430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B430);
  }

  return result;
}

unint64_t sub_1ABB03C40()
{
  result = qword_1EB4D2100;
  if (!qword_1EB4D2100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2100);
  }

  return result;
}

unint64_t sub_1ABB03C94()
{
  result = qword_1EB4D2108;
  if (!qword_1EB4D2108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2108);
  }

  return result;
}

unint64_t sub_1ABB03CE8()
{
  result = qword_1EB4D2110;
  if (!qword_1EB4D2110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2110);
  }

  return result;
}

unint64_t sub_1ABB03D3C()
{
  result = qword_1EB4D2118;
  if (!qword_1EB4D2118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2118);
  }

  return result;
}

unint64_t sub_1ABB03D90()
{
  result = qword_1EB4D2120;
  if (!qword_1EB4D2120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2120);
  }

  return result;
}

unint64_t sub_1ABB03DE4()
{
  result = qword_1EB4D2140;
  if (!qword_1EB4D2140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2140);
  }

  return result;
}

unint64_t sub_1ABB03E38()
{
  result = qword_1EB4D2148;
  if (!qword_1EB4D2148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2148);
  }

  return result;
}

unint64_t sub_1ABB03E8C()
{
  result = qword_1EB4D2150;
  if (!qword_1EB4D2150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2150);
  }

  return result;
}

unint64_t sub_1ABB03EE0()
{
  result = qword_1EB4D2160;
  if (!qword_1EB4D2160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2160);
  }

  return result;
}

unint64_t sub_1ABB03F34()
{
  result = qword_1EB4D2168;
  if (!qword_1EB4D2168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2168);
  }

  return result;
}

unint64_t sub_1ABB03F88()
{
  result = qword_1EB4D2170;
  if (!qword_1EB4D2170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2170);
  }

  return result;
}

unint64_t sub_1ABB03FDC()
{
  result = qword_1EB4D2178;
  if (!qword_1EB4D2178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2178);
  }

  return result;
}

unint64_t sub_1ABB04030()
{
  result = qword_1EB4D2188;
  if (!qword_1EB4D2188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2188);
  }

  return result;
}

unint64_t sub_1ABB04084()
{
  result = qword_1EB4D2190;
  if (!qword_1EB4D2190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2190);
  }

  return result;
}

unint64_t sub_1ABB040D8()
{
  result = qword_1ED86B550;
  if (!qword_1ED86B550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B550);
  }

  return result;
}

unint64_t sub_1ABB0412C()
{
  result = qword_1EB4D21B0;
  if (!qword_1EB4D21B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D21B0);
  }

  return result;
}

unint64_t sub_1ABB04180()
{
  result = qword_1EB4D21B8;
  if (!qword_1EB4D21B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D21B8);
  }

  return result;
}

unint64_t sub_1ABB041D4()
{
  result = qword_1EB4D21C0;
  if (!qword_1EB4D21C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D21C0);
  }

  return result;
}

unint64_t sub_1ABB04228()
{
  result = qword_1EB4D21C8;
  if (!qword_1EB4D21C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D21C8);
  }

  return result;
}

unint64_t sub_1ABB0427C()
{
  result = qword_1EB4D21D0;
  if (!qword_1EB4D21D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D21D0);
  }

  return result;
}

unint64_t sub_1ABB042D0()
{
  result = qword_1EB4D21F0;
  if (!qword_1EB4D21F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D21F0);
  }

  return result;
}

unint64_t sub_1ABB04324()
{
  result = qword_1EB4D21F8;
  if (!qword_1EB4D21F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D21F8);
  }

  return result;
}

unint64_t sub_1ABB0437C()
{
  result = qword_1EB4D2200;
  if (!qword_1EB4D2200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2200);
  }

  return result;
}

unint64_t sub_1ABB043D4()
{
  result = qword_1EB4D2208;
  if (!qword_1EB4D2208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2208);
  }

  return result;
}

unint64_t sub_1ABB04428(uint64_t a1)
{
  result = sub_1ABB04450();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABB04450()
{
  result = qword_1EB4D2210;
  if (!qword_1EB4D2210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2210);
  }

  return result;
}

unint64_t sub_1ABB044A4(uint64_t a1)
{
  result = sub_1ABB044CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABB044CC()
{
  result = qword_1EB4D2218;
  if (!qword_1EB4D2218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2218);
  }

  return result;
}

unint64_t sub_1ABB04550()
{
  result = qword_1EB4D2220;
  if (!qword_1EB4D2220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2220);
  }

  return result;
}

unint64_t sub_1ABB045A8()
{
  result = qword_1EB4D2228;
  if (!qword_1EB4D2228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2228);
  }

  return result;
}

unint64_t sub_1ABB045FC(uint64_t a1)
{
  result = sub_1ABB04624();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABB04624()
{
  result = qword_1EB4D2230;
  if (!qword_1EB4D2230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2230);
  }

  return result;
}

unint64_t sub_1ABB04678(uint64_t a1)
{
  result = sub_1ABB046A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABB046A0()
{
  result = qword_1EB4D2238;
  if (!qword_1EB4D2238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2238);
  }

  return result;
}

unint64_t sub_1ABB04720(uint64_t a1)
{
  result = sub_1ABB04748();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABB04748()
{
  result = qword_1EB4D2240;
  if (!qword_1EB4D2240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2240);
  }

  return result;
}

unint64_t sub_1ABB0479C(uint64_t a1)
{
  result = sub_1ABB047C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABB047C4()
{
  result = qword_1EB4D2248;
  if (!qword_1EB4D2248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2248);
  }

  return result;
}

unint64_t sub_1ABB04844(uint64_t a1)
{
  result = sub_1ABB0486C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABB0486C()
{
  result = qword_1EB4D2250;
  if (!qword_1EB4D2250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2250);
  }

  return result;
}

unint64_t sub_1ABB048EC(uint64_t a1)
{
  result = sub_1ABB04914();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABB04914()
{
  result = qword_1EB4D2258;
  if (!qword_1EB4D2258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2258);
  }

  return result;
}

uint64_t sub_1ABB04994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

__n128 sub_1ABB04A04(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_1ABB04A18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 27))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 24) & 0x7E | (*(a1 + 24) >> 7) & 1) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1ABB04A60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 27) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 27) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 26) = 0;
      *(result + 24) = 2 * ((((-a2 >> 1) & 0x3F) - (a2 << 6)) & 0x7F);
    }
  }

  return result;
}

uint64_t sub_1ABB04AC4(uint64_t a1)
{
  v2 = *(a1 + 24);
  result = a1 + 24;
  v3 = *(result + 2);
  *result = v2 & 0xFF7F;
  *(result + 2) = (v2 & 0xFFFFFF7F | (v3 << 16)) >> 16;
  return result;
}

uint64_t sub_1ABB04AE4(uint64_t a1, char a2)
{
  v3 = *(a1 + 24);
  result = a1 + 24;
  v4 = v3 & 0xFFFFFF01 | (*(result + 2) << 16);
  *result = v3 & 0xFF01 | ((a2 & 1) << 7);
  *(result + 2) = BYTE2(v4);
  return result;
}

uint64_t sub_1ABB04B18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_1ABB04B58(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1ABB04BD0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1ABB04C10(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1ABB04C74(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 27))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1ABB04CB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 27) = 1;
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

    *(result + 27) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABB04D14(uint64_t a1, unsigned int a2)
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

uint64_t sub_1ABB04D54(uint64_t result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AssetRegistryAssetLocation.TrialAsset.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABB04EEC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABB04FC8(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABB05078()
{
  result = qword_1EB4D2260;
  if (!qword_1EB4D2260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2260);
  }

  return result;
}

unint64_t sub_1ABB050D0()
{
  result = qword_1EB4D2268;
  if (!qword_1EB4D2268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2268);
  }

  return result;
}

unint64_t sub_1ABB05128()
{
  result = qword_1EB4D2270;
  if (!qword_1EB4D2270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2270);
  }

  return result;
}

unint64_t sub_1ABB05180()
{
  result = qword_1EB4D2278;
  if (!qword_1EB4D2278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2278);
  }

  return result;
}

unint64_t sub_1ABB051D8()
{
  result = qword_1EB4D2280;
  if (!qword_1EB4D2280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2280);
  }

  return result;
}

unint64_t sub_1ABB05230()
{
  result = qword_1EB4D2288;
  if (!qword_1EB4D2288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2288);
  }

  return result;
}

unint64_t sub_1ABB05288()
{
  result = qword_1EB4D2290;
  if (!qword_1EB4D2290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2290);
  }

  return result;
}

unint64_t sub_1ABB052E0()
{
  result = qword_1EB4D2298;
  if (!qword_1EB4D2298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2298);
  }

  return result;
}

unint64_t sub_1ABB05338()
{
  result = qword_1EB4D22A0;
  if (!qword_1EB4D22A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D22A0);
  }

  return result;
}

unint64_t sub_1ABB05390()
{
  result = qword_1EB4D22A8;
  if (!qword_1EB4D22A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D22A8);
  }

  return result;
}

unint64_t sub_1ABB053E8()
{
  result = qword_1EB4D22B0;
  if (!qword_1EB4D22B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D22B0);
  }

  return result;
}

unint64_t sub_1ABB05440()
{
  result = qword_1EB4D22B8;
  if (!qword_1EB4D22B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D22B8);
  }

  return result;
}

unint64_t sub_1ABB05498()
{
  result = qword_1EB4D22C0;
  if (!qword_1EB4D22C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D22C0);
  }

  return result;
}

unint64_t sub_1ABB054F0()
{
  result = qword_1EB4D22C8;
  if (!qword_1EB4D22C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D22C8);
  }

  return result;
}

unint64_t sub_1ABB05548()
{
  result = qword_1EB4D22D0;
  if (!qword_1EB4D22D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D22D0);
  }

  return result;
}

unint64_t sub_1ABB055A0()
{
  result = qword_1EB4D22D8;
  if (!qword_1EB4D22D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D22D8);
  }

  return result;
}

unint64_t sub_1ABB055F8()
{
  result = qword_1EB4D22E0;
  if (!qword_1EB4D22E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D22E0);
  }

  return result;
}

unint64_t sub_1ABB05650()
{
  result = qword_1EB4D22E8;
  if (!qword_1EB4D22E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D22E8);
  }

  return result;
}

unint64_t sub_1ABB056A8()
{
  result = qword_1EB4D22F0;
  if (!qword_1EB4D22F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D22F0);
  }

  return result;
}

unint64_t sub_1ABB05700()
{
  result = qword_1EB4D22F8;
  if (!qword_1EB4D22F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D22F8);
  }

  return result;
}

unint64_t sub_1ABB05758()
{
  result = qword_1EB4D2300;
  if (!qword_1EB4D2300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2300);
  }

  return result;
}

unint64_t sub_1ABB057B0()
{
  result = qword_1EB4D2308;
  if (!qword_1EB4D2308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2308);
  }

  return result;
}

unint64_t sub_1ABB05808()
{
  result = qword_1EB4D2310;
  if (!qword_1EB4D2310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2310);
  }

  return result;
}

unint64_t sub_1ABB05860()
{
  result = qword_1EB4D2318;
  if (!qword_1EB4D2318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2318);
  }

  return result;
}

unint64_t sub_1ABB058B8()
{
  result = qword_1EB4D2320;
  if (!qword_1EB4D2320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2320);
  }

  return result;
}

unint64_t sub_1ABB05910()
{
  result = qword_1EB4D2328;
  if (!qword_1EB4D2328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2328);
  }

  return result;
}

unint64_t sub_1ABB05968()
{
  result = qword_1EB4D2330;
  if (!qword_1EB4D2330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2330);
  }

  return result;
}

unint64_t sub_1ABB059BC()
{
  result = qword_1ED86B438;
  if (!qword_1ED86B438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B438);
  }

  return result;
}

uint64_t AssetRegistryRemoteBackendType.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

unint64_t sub_1ABB05B04()
{
  result = qword_1EB4D2338;
  if (!qword_1EB4D2338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2338);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetRegistryRemoteBackendType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t AssetRegistryBasicServer.assetEntryResult(for:in:localOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1ABB05DC0(v5, a3, a4, a1, a2, &v11);
  result = v11;
  v8 = v12;
  v9 = v13;
  v10 = v14;
  *a5 = v11;
  *(a5 + 16) = v8;
  *(a5 + 24) = v9;
  *(a5 + 40) = v10;
  *(a5 + 48) = 0;
  return result;
}

uint64_t sub_1ABB05DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a1 + 16);
  result = sub_1ABB102C8(a2, a3, *(a1 + 24));
  if (!v6)
  {
    if (v14)
    {
      sub_1ABB0914C(a4, a5, v15, &v22);

      v17 = v26;
      if (v26 != 1)
      {
        v19 = v25;
        v20 = v24;
        v21 = v23;
        *a6 = v22;
        *(a6 + 16) = v21;
        *(a6 + 26) = BYTE2(v20);
        *(a6 + 24) = v20;
        *(a6 + 32) = v19;
        *(a6 + 40) = v17;
        return result;
      }

      sub_1ABB05FF4();
      swift_allocError();
      *v18 = a4;
      *(v18 + 8) = a5;
      *(v18 + 16) = 1;
      swift_willThrow();
    }

    else
    {
      sub_1ABB05FF4();
      swift_allocError();
      *v16 = a2;
      *(v16 + 8) = a3;
      *(v16 + 16) = 0;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t AssetRegistryBasicServer.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t AssetRegistryBasicServer.__deallocating_deinit()
{
  AssetRegistryBasicServer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABB05F8C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1ABB05FA0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1ABB05FA0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_1ABB05FF4()
{
  result = qword_1EB4CFB98;
  if (!qword_1EB4CFB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFB98);
  }

  return result;
}

uint64_t sub_1ABB06048(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001ABF86AD0 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E64497465737361 && a2 == 0xEF646E756F46746FLL;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000013 && 0x80000001ABF86AF0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABB0616C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x4E64497465737361;
  }

  return 0xD000000000000013;
}

uint64_t sub_1ABB061DC(uint64_t a1)
{
  v2 = sub_1ABB06820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB06218(uint64_t a1)
{
  v2 = sub_1ABB06820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB06274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB06048(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB0629C(uint64_t a1)
{
  v2 = sub_1ABB06778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB062D8(uint64_t a1)
{
  v2 = sub_1ABB06778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB06314(uint64_t a1)
{
  v2 = sub_1ABB06874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB06350(uint64_t a1)
{
  v2 = sub_1ABB06874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB0638C(uint64_t a1)
{
  v2 = sub_1ABB067CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB063C8(uint64_t a1)
{
  v2 = sub_1ABB067CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetRegistryLookupError.encode(to:)()
{
  sub_1ABA7BCA8();
  v52 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D2340, &qword_1ABF36A20);
  v6 = sub_1ABA7BB64(v5);
  v47 = v7;
  v48 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7FBE0();
  v46 = v11;
  v12 = sub_1ABAD219C(&qword_1EB4D2348, &qword_1ABF36A28);
  v13 = sub_1ABA7BB64(v12);
  v44 = v14;
  v45 = v13;
  v16 = *(v15 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7E358();
  v18 = sub_1ABAD219C(&qword_1EB4D2350, &qword_1ABF36A30);
  v19 = sub_1ABA7BB64(v18);
  v42 = v20;
  v43 = v19;
  v22 = *(v21 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v41 - v24;
  v51 = sub_1ABAD219C(&qword_1EB4D2358, &qword_1ABF36A38);
  sub_1ABA7BB64(v51);
  v27 = v26;
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA7ED98();
  v31 = v0[1];
  v49 = *v0;
  v50 = v31;
  v32 = *(v0 + 16);
  v33 = v4[4];
  sub_1ABA93E20(v4, v4[3]);
  sub_1ABB06778();
  sub_1ABF252E4();
  v34 = (v27 + 8);
  if (v32)
  {
    if (v32 == 1)
    {
      sub_1ABB06820();
      sub_1ABAA4CAC();
      v35 = v45;
      sub_1ABF24F34();
      v36 = sub_1ABA8150C();
    }

    else
    {
      sub_1ABB067CC();
      v40 = v46;
      sub_1ABAA4CAC();
      v35 = v48;
      sub_1ABF24F34();
      v37 = *(v47 + 8);
      v36 = v40;
    }

    v37(v36, v35);
    (*v34)(v2, v25);
  }

  else
  {
    sub_1ABB06874();
    v38 = v51;
    sub_1ABF24EC4();
    v39 = v43;
    sub_1ABF24F34();
    (*(v42 + 8))(v25, v39);
    (*v34)(v2, v38);
  }

  sub_1ABA7BC90();
}

unint64_t sub_1ABB06778()
{
  result = qword_1EB4D2360;
  if (!qword_1EB4D2360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2360);
  }

  return result;
}

unint64_t sub_1ABB067CC()
{
  result = qword_1EB4D2368;
  if (!qword_1EB4D2368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2368);
  }

  return result;
}

unint64_t sub_1ABB06820()
{
  result = qword_1EB4D2370;
  if (!qword_1EB4D2370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2370);
  }

  return result;
}

unint64_t sub_1ABB06874()
{
  result = qword_1EB4D2378;
  if (!qword_1EB4D2378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2378);
  }

  return result;
}

void AssetRegistryLookupError.init(from:)()
{
  sub_1ABA7BCA8();
  v81 = v0;
  v2 = v1;
  v78 = v3;
  v74 = sub_1ABAD219C(&qword_1EB4D2380, &qword_1ABF36A40);
  sub_1ABA7BB64(v74);
  v77 = v4;
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7FBE0();
  v79 = v8;
  v9 = sub_1ABAD219C(&qword_1EB4D2388, &qword_1ABF36A48);
  v75 = sub_1ABA7BB64(v9);
  v76 = v10;
  v12 = *(v11 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7ED98();
  v14 = sub_1ABAD219C(&qword_1EB4D2390, &qword_1ABF36A50);
  sub_1ABA7BB64(v14);
  v73 = v15;
  v17 = *(v16 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7E358();
  v19 = sub_1ABAD219C(&qword_1EB4D2398, &unk_1ABF36A58);
  sub_1ABA7BB64(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v70 - v25;
  v28 = v2[3];
  v27 = v2[4];
  v80 = v2;
  sub_1ABA93E20(v2, v28);
  sub_1ABB06778();
  v29 = v81;
  sub_1ABF252C4();
  if (v29)
  {
    goto LABEL_11;
  }

  v71 = 0;
  v72 = v21;
  v81 = v26;
  v30 = sub_1ABF24EA4();
  sub_1ABAD4EA4(v30, 0);
  v32 = v19;
  if (v33 == v31 >> 1)
  {
LABEL_10:
    v44 = sub_1ABF24B44();
    swift_allocError();
    v46 = v45;
    v47 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v46 = &type metadata for AssetRegistryLookupError;
    sub_1ABF24DA4();
    sub_1ABA835CC();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
    swift_willThrow();
    swift_unknownObjectRelease();
    v48 = sub_1ABA8B474();
    v49(v48, v32);
LABEL_11:
    v50 = v80;
    goto LABEL_12;
  }

  sub_1ABA83F18();
  if (v36 == v37)
  {
    __break(1u);
    return;
  }

  v38 = *(v35 + v34);
  sub_1ABAD4E90(v34 + 1);
  v40 = v39;
  v42 = v41;
  swift_unknownObjectRelease();
  if (v40 != v42 >> 1)
  {
    v32 = v19;
    goto LABEL_10;
  }

  if (v38)
  {
    v82 = v38;
    if (v38 == 1)
    {
      sub_1ABB06820();
      sub_1ABAA56CC();
      v43 = v78;
      v54 = sub_1ABF24E14();
      v59 = v58;
      v71 = v54;
      swift_unknownObjectRelease();
      v60 = sub_1ABA83F30();
      v61(v60);
      v62 = v80;
      v63 = v72;
    }

    else
    {
      sub_1ABB067CC();
      sub_1ABAA56CC();
      v62 = v80;
      v43 = v78;
      v56 = v74;
      v57 = sub_1ABF24E14();
      v63 = v72;
      v59 = v67;
      v71 = v57;
      swift_unknownObjectRelease();
      v68 = sub_1ABA8150C();
      v69(v68, v56);
    }

    goto LABEL_18;
  }

  sub_1ABB06874();
  v51 = v71;
  sub_1ABF24D94();
  if (!v51)
  {
    v55 = sub_1ABF24E14();
    v62 = v80;
    v63 = v72;
    v59 = v64;
    v71 = v55;
    v82 = 0;
    swift_unknownObjectRelease();
    v65 = sub_1ABA8150C();
    v66(v65, v14);
    v43 = v78;
LABEL_18:
    (*(v63 + 8))(v81, v19);
    *v43 = v71;
    *(v43 + 8) = v59;
    *(v43 + 16) = v82;
    sub_1ABA84B54(v62);
    goto LABEL_13;
  }

  v52 = sub_1ABA8B474();
  v53(v52, v19);
  swift_unknownObjectRelease();
  v50 = v80;
LABEL_12:
  sub_1ABA84B54(v50);
LABEL_13:
  sub_1ABA7BC90();
}

uint64_t sub_1ABB06F20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000023 && 0x80000001ABF86B10 == a2;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001ABF86AD0 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4E64497465737361 && a2 == 0xEF646E756F46746FLL;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000013 && 0x80000001ABF86AF0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1ABB07088(char a1)
{
  result = 0x4E64497465737361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD000000000000023;
      break;
  }

  return result;
}

uint64_t sub_1ABB0712C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 2;
}

uint64_t sub_1ABB07170(uint64_t a1)
{
  v2 = sub_1ABB08064();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB071AC(uint64_t a1)
{
  v2 = sub_1ABB08064();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB071E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABB0723C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB06F20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB07264(uint64_t a1)
{
  v2 = sub_1ABB07FBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB072A0(uint64_t a1)
{
  v2 = sub_1ABB07FBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB072DC(uint64_t a1)
{
  v2 = sub_1ABB080B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB07318(uint64_t a1)
{
  v2 = sub_1ABB080B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB07354(uint64_t a1)
{
  v2 = sub_1ABB08010();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB07390(uint64_t a1)
{
  v2 = sub_1ABB08010();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB073CC(uint64_t a1)
{
  v2 = sub_1ABB0810C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB07408(uint64_t a1)
{
  v2 = sub_1ABB0810C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetRegistryOverrideError.encode(to:)()
{
  sub_1ABA7BCA8();
  v59 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D23A0, &qword_1ABF36A68);
  v6 = sub_1ABA7BB64(v5);
  v54 = v7;
  v55 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7FBE0();
  v53 = v11;
  v12 = sub_1ABAD219C(&qword_1EB4D23A8, &qword_1ABF36A70);
  v13 = sub_1ABA7BB64(v12);
  v51 = v14;
  v52 = v13;
  v16 = *(v15 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7FBE0();
  v50 = v18;
  v19 = sub_1ABAD219C(&qword_1EB4D23B0, &qword_1ABF36A78);
  v20 = sub_1ABA7BB64(v19);
  v48 = v21;
  v49 = v20;
  v23 = *(v22 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v24);
  v25 = sub_1ABAD219C(&qword_1EB4D23B8, &qword_1ABF36A80);
  v26 = sub_1ABA7BB64(v25);
  v46 = v27;
  v47 = v26;
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v46 - v31;
  v58 = sub_1ABAD219C(&qword_1EB4D23C0, &qword_1ABF36A88);
  sub_1ABA7BB64(v58);
  v34 = v33;
  v36 = *(v35 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA7ED98();
  v38 = v0[1];
  v56 = *v0;
  v57 = v38;
  v39 = *(v0 + 16);
  v40 = v4[4];
  sub_1ABA93E20(v4, v4[3]);
  sub_1ABB07FBC();
  sub_1ABF252E4();
  switch(v39)
  {
    case 1:
      sub_1ABB080B8();
      sub_1ABA7BD18();
      v43 = v49;
      sub_1ABF24F34();
      v44 = sub_1ABA8FE20();
      v45(v44, v43);
      goto LABEL_7;
    case 2:
      sub_1ABB08064();
      v32 = v50;
      sub_1ABA7BD18();
      v41 = v52;
      sub_1ABA8E0E0();
      v42 = v51;
      goto LABEL_5;
    case 3:
      sub_1ABB08010();
      v32 = v53;
      sub_1ABA7BD18();
      v41 = v55;
      sub_1ABA8E0E0();
      v42 = v54;
      goto LABEL_5;
    default:
      sub_1ABB0810C();
      sub_1ABA7BD18();
      v41 = v47;
      sub_1ABA8E0E0();
      v42 = v46;
LABEL_5:
      (*(v42 + 8))(v32, v41);
LABEL_7:
      (*(v34 + 8))(v2, v39);
      sub_1ABA7BC90();
      return;
  }
}

void AssetRegistryOverrideError.init(from:)()
{
  sub_1ABA7BCA8();
  v93 = v0;
  v3 = v2;
  v88 = v4;
  v5 = sub_1ABAD219C(&qword_1EB4D23F0, &qword_1ABF36A90);
  v6 = sub_1ABA7BB64(v5);
  v86 = v7;
  v87 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7FBE0();
  v91 = v11;
  v12 = sub_1ABAD219C(&qword_1EB4D23F8, &qword_1ABF36A98);
  v84 = sub_1ABA7BB64(v12);
  v85 = v13;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7FBE0();
  v90 = v17;
  v89 = sub_1ABAD219C(&qword_1EB4D2400, &qword_1ABF36AA0);
  sub_1ABA7BB64(v89);
  v83 = v18;
  v20 = *(v19 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7E358();
  v22 = sub_1ABAD219C(&qword_1EB4D2408, &qword_1ABF36AA8);
  sub_1ABA7BB64(v22);
  v82 = v23;
  v25 = *(v24 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v76 - v27;
  v29 = sub_1ABAD219C(&qword_1EB4D2410, &qword_1ABF36AB0);
  sub_1ABA7BB64(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v34);
  v35 = v3[3];
  v36 = v3[4];
  v92 = v3;
  sub_1ABA93E20(v3, v35);
  sub_1ABB07FBC();
  v37 = v93;
  sub_1ABF252C4();
  if (!v37)
  {
    v79 = v22;
    v80 = v28;
    v81 = v1;
    v38 = v90;
    v93 = v31;
    v39 = sub_1ABF24EA4();
    sub_1ABAD4EA4(v39, 0);
    if (v41 != v40 >> 1)
    {
      sub_1ABA83F18();
      if (v44 == v45)
      {
        __break(1u);
        return;
      }

      v46 = 0;
      v77 = *(v43 + v42);
      v47 = sub_1ABAD4E90(v42 + 1);
      v49 = v48;
      v51 = v50;
      swift_unknownObjectRelease();
      v78 = v47;
      if (v49 == v51 >> 1)
      {
        v52 = v88;
        switch(v77)
        {
          case 1:
            sub_1ABB080B8();
            v60 = v81;
            sub_1ABA80688();
            v71 = v92;
            goto LABEL_14;
          case 2:
            sub_1ABB08064();
            v60 = v38;
            sub_1ABA80688();
            v71 = v92;
LABEL_14:
            v64 = v60;
            sub_1ABF24E14();
            v76 = 0;
            sub_1ABAA5EDC();
            v72 = sub_1ABA7E348();
            v73(v72);
            break;
          case 3:
            sub_1ABB08010();
            sub_1ABA80688();
            v71 = v92;
            v61 = v87;
            v62 = sub_1ABF24E14();
            v76 = 0;
            v46 = v62;
            v66 = v65;
            swift_unknownObjectRelease();
            v67 = sub_1ABA8B474();
            v68(v67, v61);
            v64 = v66;
            break;
          default:
            sub_1ABB0810C();
            v53 = v80;
            sub_1ABA80688();
            v63 = v79;
            v64 = v53;
            sub_1ABF24E14();
            v76 = 0;
            sub_1ABAA5EDC();
            v69 = sub_1ABA8FE20();
            v70(v69, v63);
            v71 = v92;
            break;
        }

        v74 = sub_1ABA8BE60();
        v75(v74);
        *v52 = v46;
        *(v52 + 8) = v64;
        *(v52 + 16) = v77;
        sub_1ABA84B54(v71);
        goto LABEL_10;
      }
    }

    v54 = sub_1ABF24B44();
    swift_allocError();
    v56 = v55;
    v57 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v56 = &type metadata for AssetRegistryOverrideError;
    sub_1ABF24DA4();
    sub_1ABA835CC();
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8], v54);
    swift_willThrow();
    swift_unknownObjectRelease();
    v58 = sub_1ABA8B474();
    v59(v58, v29);
  }

  sub_1ABA84B54(v92);
LABEL_10:
  sub_1ABA7BC90();
}

uint64_t sub_1ABB07F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 3;
}

unint64_t sub_1ABB07FBC()
{
  result = qword_1EB4D23C8;
  if (!qword_1EB4D23C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D23C8);
  }

  return result;
}

unint64_t sub_1ABB08010()
{
  result = qword_1EB4D23D0;
  if (!qword_1EB4D23D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D23D0);
  }

  return result;
}

unint64_t sub_1ABB08064()
{
  result = qword_1EB4D23D8;
  if (!qword_1EB4D23D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D23D8);
  }

  return result;
}

unint64_t sub_1ABB080B8()
{
  result = qword_1EB4D23E0;
  if (!qword_1EB4D23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D23E0);
  }

  return result;
}

unint64_t sub_1ABB0810C()
{
  result = qword_1EB4D23E8;
  if (!qword_1EB4D23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D23E8);
  }

  return result;
}

unint64_t sub_1ABB081A0()
{
  result = qword_1EB4CFBA0;
  if (!qword_1EB4CFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFBA0);
  }

  return result;
}

unint64_t sub_1ABB081F4()
{
  result = qword_1EB4CFBA8[0];
  if (!qword_1EB4CFBA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4CFBA8);
  }

  return result;
}

uint64_t sub_1ABB08288(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1ABB082DC()
{
  result = qword_1EB4D2418;
  if (!qword_1EB4D2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2418);
  }

  return result;
}

unint64_t sub_1ABB08330()
{
  result = qword_1EB4D2420;
  if (!qword_1EB4D2420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2420);
  }

  return result;
}

unint64_t sub_1ABB08384()
{
  result = qword_1EB4D2428;
  if (!qword_1EB4D2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2428);
  }

  return result;
}

uint64_t sub_1ABB083E4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1ABB08424(uint64_t result, int a2, int a3)
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

uint64_t sub_1ABB0848C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t sub_1ABB084CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

_BYTE *storeEnumTagSinglePayload for AssetRegistryOverrideError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetRegistryLookupError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABB08734(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABB087E4()
{
  result = qword_1EB4D2430;
  if (!qword_1EB4D2430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2430);
  }

  return result;
}

unint64_t sub_1ABB0883C()
{
  result = qword_1EB4D2438;
  if (!qword_1EB4D2438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2438);
  }

  return result;
}

unint64_t sub_1ABB08894()
{
  result = qword_1EB4D2440;
  if (!qword_1EB4D2440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2440);
  }

  return result;
}

unint64_t sub_1ABB088EC()
{
  result = qword_1EB4D2448;
  if (!qword_1EB4D2448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2448);
  }

  return result;
}

unint64_t sub_1ABB08944()
{
  result = qword_1EB4D2450;
  if (!qword_1EB4D2450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2450);
  }

  return result;
}

unint64_t sub_1ABB0899C()
{
  result = qword_1EB4D2458;
  if (!qword_1EB4D2458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2458);
  }

  return result;
}

unint64_t sub_1ABB089F4()
{
  result = qword_1EB4D2460;
  if (!qword_1EB4D2460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2460);
  }

  return result;
}

unint64_t sub_1ABB08A4C()
{
  result = qword_1EB4D2468;
  if (!qword_1EB4D2468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2468);
  }

  return result;
}

unint64_t sub_1ABB08AA4()
{
  result = qword_1EB4D2470;
  if (!qword_1EB4D2470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2470);
  }

  return result;
}

unint64_t sub_1ABB08AFC()
{
  result = qword_1EB4D2478;
  if (!qword_1EB4D2478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2478);
  }

  return result;
}

unint64_t sub_1ABB08B54()
{
  result = qword_1EB4D2480;
  if (!qword_1EB4D2480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2480);
  }

  return result;
}

unint64_t sub_1ABB08BAC()
{
  result = qword_1EB4D2488;
  if (!qword_1EB4D2488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2488);
  }

  return result;
}

unint64_t sub_1ABB08C04()
{
  result = qword_1EB4D2490;
  if (!qword_1EB4D2490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2490);
  }

  return result;
}

unint64_t sub_1ABB08C5C()
{
  result = qword_1EB4D2498;
  if (!qword_1EB4D2498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2498);
  }

  return result;
}

unint64_t sub_1ABB08CB4()
{
  result = qword_1EB4D24A0;
  if (!qword_1EB4D24A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D24A0);
  }

  return result;
}

unint64_t sub_1ABB08D0C()
{
  result = qword_1EB4D24A8;
  if (!qword_1EB4D24A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D24A8);
  }

  return result;
}

unint64_t sub_1ABB08D64()
{
  result = qword_1EB4D24B0;
  if (!qword_1EB4D24B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D24B0);
  }

  return result;
}

unint64_t sub_1ABB08DBC()
{
  result = qword_1EB4D24B8;
  if (!qword_1EB4D24B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D24B8);
  }

  return result;
}

unint64_t sub_1ABB08E14()
{
  result = qword_1EB4D24C0;
  if (!qword_1EB4D24C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D24C0);
  }

  return result;
}

unint64_t sub_1ABB08E6C()
{
  result = qword_1EB4D24C8;
  if (!qword_1EB4D24C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D24C8);
  }

  return result;
}

unint64_t sub_1ABB08EC4()
{
  result = qword_1EB4D24D0;
  if (!qword_1EB4D24D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D24D0);
  }

  return result;
}

unint64_t sub_1ABB08F1C()
{
  result = qword_1EB4D24D8;
  if (!qword_1EB4D24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D24D8);
  }

  return result;
}

unint64_t sub_1ABB08F74()
{
  result = qword_1EB4D24E0;
  if (!qword_1EB4D24E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D24E0);
  }

  return result;
}

unint64_t sub_1ABB08FCC()
{
  result = qword_1EB4D24E8;
  if (!qword_1EB4D24E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D24E8);
  }

  return result;
}

unint64_t sub_1ABB09024()
{
  result = qword_1EB4D24F0;
  if (!qword_1EB4D24F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D24F0);
  }

  return result;
}

unint64_t sub_1ABB0907C()
{
  result = qword_1EB4D24F8;
  if (!qword_1EB4D24F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D24F8);
  }

  return result;
}

unint64_t sub_1ABB090D4()
{
  result = qword_1EB4D2500;
  if (!qword_1EB4D2500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2500);
  }

  return result;
}

uint64_t sub_1ABB0914C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (!*(a3 + 16) || (result = sub_1ABA94FC8(result, a2), (v6 & 1) == 0))
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0;
    *(a4 + 40) = 1;
    return result;
  }

  v12 = *(a3 + 56) + 72 * result;
  v13 = *v12;
  v14 = *(v12 + 16);
  v15 = *(v12 + 32);
  *&v60[15] = *(v12 + 47);
  v59 = v14;
  *v60 = v15;
  v58 = v13;
  v16 = *(v12 + 64);
  v61 = *(v12 + 56);
  v17 = *(&v13 + 1);
  v18 = v13;
  v19 = *(&v14 + 1);
  v20 = v14;
  if (v60[18])
  {
    v56 = v59;
    v21 = *&v60[8];
    v55 = *&v60[16];

    sub_1ABA9A290(v22, v23, v24, v25, v26, v27, v28);

    v29._countAndFlagsBits = v18;
    v29._object = v17;
    TrialNamespace.init(rawValue:)(v29);
    if (v57 == 9)
    {

      sub_1ABB03E8C();
      sub_1ABA7D104();
      swift_allocError();
      *v30 = v18;
      *(v30 + 8) = v17;
      *(v30 + 16) = 0;
LABEL_18:
      swift_willThrow();
      return sub_1ABB0A890(&v58);
    }

    v34 = sub_1ABF24D84();
    if (v34 >= 2)
    {

      sub_1ABB03E8C();
      sub_1ABA7D104();
      swift_allocError();
      *v50 = *v60;
      *(v50 + 8) = v21;
      *(v50 + 16) = 1;
      goto LABEL_18;
    }

    v35 = v34;

    result = sub_1ABB0A890(&v58);
    v36 = v35 | (v55 << 8) | 0x80;
    v17 = v56;
    v18 = v57;
    goto LABEL_25;
  }

  if (BYTE8(v59))
  {
    sub_1ABA9A290(result, v6, v7, v8, v9, v10, v11);
    sub_1ABAAA4A0();
    sub_1ABAAA44C();

    v31 = sub_1ABF23B44();

    if (v31)
    {
      sub_1ABAFC69C();
      sub_1ABA7D104();
      v32 = swift_allocError();
      sub_1ABA8E0B8(v32, v33);
    }

    v18 &= 1u;
    result = sub_1ABF23B44();
    if (result)
    {
      sub_1ABAFC69C();
      sub_1ABA7D104();
      v44 = swift_allocError();
      sub_1ABA8E0B8(v44, v45);
      v46 = v18;
      v47 = v17;
      v48 = v20;
      v49 = 1;
LABEL_22:
      sub_1ABAF7FB8(v46, v47, v48, v49);
    }

    v36 = 1;
    v19 = v20;
  }

  else
  {
    v37 = sub_1ABA9A290(result, v6, v7, v8, v9, v10, v11);
    sub_1ABA9A290(v37, v38, v39, v40, v41, v42, v43);
    sub_1ABAAA4A0();
    sub_1ABAAA44C();

    if ((sub_1ABF23B44() & 1) == 0)
    {

      sub_1ABAF8054();
      sub_1ABA7D104();
      v51 = swift_allocError();
      sub_1ABA8E0B8(v51, v52);
      sub_1ABB0A890(&v58);
      return sub_1ABB0A890(&v58);
    }

    sub_1ABB0A890(&v58);
    result = sub_1ABF23B44();
    if ((result & 1) == 0)
    {
      sub_1ABAF8054();
      sub_1ABA7D104();
      v53 = swift_allocError();
      sub_1ABA8E0B8(v53, v54);
      sub_1ABA7D104();
      goto LABEL_22;
    }

    v36 = 0;
    v19 = 0;
  }

LABEL_25:
  *a4 = v18;
  *(a4 + 8) = v17;
  *(a4 + 16) = v19;
  *(a4 + 24) = v36;
  *(a4 + 32) = v61;
  *(a4 + 40) = v16;
  return result;
}

uint64_t sub_1ABB09550(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C646E7562 && a2 == 0xE600000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001ABF86A60 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABB0961C(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x656C646E7562;
  }
}

void sub_1ABB09654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1ABA7BCA8();
  v15 = v14;
  v17 = v16;
  v18 = sub_1ABAD219C(&qword_1EB4D2568, &qword_1ABF381E8);
  sub_1ABA7BB64(v18);
  v20 = *(v19 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7ED98();
  sub_1ABA9474C();
  sub_1ABB0B670();
  sub_1ABA7BD38();
  if (!v13)
  {
    sub_1ABB03BEC();
    sub_1ABA81518();
    sub_1ABF24E64();
    v22 = sub_1ABF24E14();
    v24 = v23;
    v25 = sub_1ABA7BCF0();
    v26(v25);
    *v17 = a13;
    *(v17 + 8) = v22;
    *(v17 + 16) = v24;
  }

  sub_1ABA84B54(v15);
  sub_1ABA7BC90();
}

uint64_t sub_1ABB097B0()
{
  v0 = sub_1ABF24D84();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABB09824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB09550(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB0984C(uint64_t a1)
{
  v2 = sub_1ABB0B670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB09888(uint64_t a1)
{
  v2 = sub_1ABB0B670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB09900@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1ABB097B0();
  *a2 = result;
  return result;
}

unint64_t sub_1ABB09930@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1ABAB83BC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1ABB09964@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABB097B0();
  *a1 = result;
  return result;
}

uint64_t sub_1ABB0998C(uint64_t a1)
{
  v2 = sub_1ABB0B02C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB099C8(uint64_t a1)
{
  v2 = sub_1ABB0B02C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1ABB09A04()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v5 = v4;
  v6 = sub_1ABAD219C(&qword_1EB4D2538, &qword_1ABF37CD8);
  sub_1ABA7BB64(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7ED98();
  sub_1ABA9474C();
  sub_1ABB0B02C();
  sub_1ABA7BD38();
  if (!v0)
  {
    v12 = sub_1ABF24E14();
    v14 = v13;
    (*(v8 + 8))(v1, v6);
    *v5 = v12;
    *(v5 + 8) = v14;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
  }

  sub_1ABA84B54(v3);
  sub_1ABA7BC90();
}

uint64_t sub_1ABB09BD4(char a1)
{
  result = 0x63617073656D616ELL;
  switch(a1)
  {
    case 1:
      result = 0x726F74636166;
      break;
    case 2:
      result = 0x7079547465737361;
      break;
    case 3:
      result = 0x64616F6C6E776F64;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1ABB09C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, __int16 a11)
{
  sub_1ABA7BCA8();
  v13 = v12;
  v15 = v14;
  v16 = sub_1ABAD219C(&qword_1EB4D2530, &qword_1ABF37CD0);
  sub_1ABA7BB64(v16);
  v18 = *(v17 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  v20 = v13[4];
  sub_1ABA93E20(v13, v13[3]);
  sub_1ABB0AFD8();
  sub_1ABF252C4();
  if (v11)
  {
    sub_1ABA84B54(v13);
  }

  else
  {
    v21 = sub_1ABF24E14();
    v32 = v22;
    v23 = sub_1ABF24E14();
    v31 = v24;
    v29 = v23;
    v28 = sub_1ABF24E14();
    v30 = v25;
    sub_1ABB040D8();
    sub_1ABF24DF4();
    v26 = sub_1ABA7D158();
    v27(v26);
    *v15 = v21;
    *(v15 + 8) = v32;
    *(v15 + 16) = v29;
    *(v15 + 24) = v31;
    *(v15 + 32) = v28;
    *(v15 + 40) = v30;
    *(v15 + 48) = a11;

    sub_1ABA84B54(v13);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABB09F28(uint64_t a1)
{
  v2 = sub_1ABB0AFD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB09F64(uint64_t a1)
{
  v2 = sub_1ABB0AFD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB09FB8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1ABAD0068();
}

uint64_t sub_1ABB09FDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1ABAB83F8();
  *a2 = result;
  return result;
}

uint64_t sub_1ABB0A00C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABAB8444(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABB0A040@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABAB83F8();
  *a1 = result;
  return result;
}

uint64_t sub_1ABB0A068(uint64_t a1)
{
  v2 = sub_1ABB0AE0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB0A0A4(uint64_t a1)
{
  v2 = sub_1ABB0AE0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1ABB0A0E0()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D2520, &unk_1ABF37CC0);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7ED98();
  sub_1ABA9474C();
  sub_1ABB0AE0C();
  sub_1ABA7BD38();
  if (!v0)
  {
    sub_1ABB0AE60();
    sub_1ABA81518();
    sub_1ABF24E64();
    v15 = v16;
    LOBYTE(v16) = 2;
    v9 = sub_1ABF24E54();
    sub_1ABAD219C(&qword_1EB4D2068, &qword_1ABF41380);
    sub_1ABB0AF5C();
    sub_1ABA9926C();
    sub_1ABF24E64();
    v10 = sub_1ABA7BCF0();
    v11(v10);
    *v4 = v15;
    *(v4 + 8) = v17;
    *(v4 + 16) = v18;
    *(v4 + 24) = v19;
    *(v4 + 32) = v14;
    *(v4 + 40) = v13;
    *(v4 + 48) = v12;
    *(v4 + 50) = 0;
    *(v4 + 56) = v9;
    *(v4 + 64) = v16;
  }

  sub_1ABA84B54(v2);
  sub_1ABA7BC90();
}

uint64_t sub_1ABB0A390(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656972746E65 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABB0A454(char a1)
{
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](a1 & 1);
  return sub_1ABF25294();
}

uint64_t sub_1ABB0A49C(char a1)
{
  if (a1)
  {
    return 0x73656972746E65;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_1ABB0A4D0(uint64_t *a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4D2508, &qword_1ABF37A60);
  sub_1ABA7BB64(v3);
  v5 = *(v4 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7ED98();
  v7 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABB0AA30();
  sub_1ABF252C4();
  if (!v1)
  {
    v7 = sub_1ABF24E14();
    sub_1ABAD219C(&qword_1EB4D2510, &qword_1ABF37A68);
    sub_1ABB0AA84();
    sub_1ABA9926C();
    sub_1ABF24E64();
    v9 = sub_1ABA835EC();
    v10(v9);
  }

  sub_1ABA84B54(a1);
  return v7;
}

uint64_t sub_1ABB0A6B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABB0A704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB0A390(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB0A72C(uint64_t a1)
{
  v2 = sub_1ABB0AA30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB0A768(uint64_t a1)
{
  v2 = sub_1ABB0AA30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB0A7A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ABB0A4D0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1ABB0A7D4(uint64_t a1)
{
  v2 = sub_1ABB0B304();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1ABB0A810(uint64_t a1)
{
  v2 = sub_1ABB0B304();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1ABB0A8C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1ABB0A900(uint64_t result, int a2, int a3)
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

__n128 sub_1ABB0A964(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1ABB0A980(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 51))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 50);
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

uint64_t sub_1ABB0A9C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      *(result + 50) = -a2;
    }
  }

  return result;
}

unint64_t sub_1ABB0AA30()
{
  result = qword_1ED86B548;
  if (!qword_1ED86B548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B548);
  }

  return result;
}

unint64_t sub_1ABB0AA84()
{
  result = qword_1ED86B3F8;
  if (!qword_1ED86B3F8)
  {
    sub_1ABAE2850(&qword_1EB4D2510, &qword_1ABF37A68);
    sub_1ABB0AB10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B3F8);
  }

  return result;
}

unint64_t sub_1ABB0AB10()
{
  result = qword_1ED86B4B8;
  if (!qword_1ED86B4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B4B8);
  }

  return result;
}

__n128 sub_1ABB0AB74(uint64_t a1, uint64_t a2)
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

uint64_t sub_1ABB0AB90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 50))
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

uint64_t sub_1ABB0ABD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABB0AC40(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABB0AC94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

unint64_t sub_1ABB0AD08()
{
  result = qword_1EB4D2518;
  if (!qword_1EB4D2518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2518);
  }

  return result;
}

unint64_t sub_1ABB0AD60()
{
  result = qword_1ED86B538;
  if (!qword_1ED86B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B538);
  }

  return result;
}

unint64_t sub_1ABB0ADB8()
{
  result = qword_1ED86B540;
  if (!qword_1ED86B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B540);
  }

  return result;
}

unint64_t sub_1ABB0AE0C()
{
  result = qword_1ED86B4D0;
  if (!qword_1ED86B4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B4D0);
  }

  return result;
}

unint64_t sub_1ABB0AE60()
{
  result = qword_1ED86B4F8;
  if (!qword_1ED86B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B4F8);
  }

  return result;
}

unint64_t sub_1ABB0AEB4()
{
  result = qword_1ED86B4D8;
  if (!qword_1ED86B4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B4D8);
  }

  return result;
}

unint64_t sub_1ABB0AF08()
{
  result = qword_1EB4D2528;
  if (!qword_1EB4D2528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2528);
  }

  return result;
}

unint64_t sub_1ABB0AF5C()
{
  result = qword_1ED86B400;
  if (!qword_1ED86B400)
  {
    sub_1ABAE2850(&qword_1EB4D2068, &qword_1ABF41380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B400);
  }

  return result;
}

unint64_t sub_1ABB0AFD8()
{
  result = qword_1ED86B4F0;
  if (!qword_1ED86B4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B4F0);
  }

  return result;
}

unint64_t sub_1ABB0B02C()
{
  result = qword_1ED86B510;
  if (!qword_1ED86B510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B510);
  }

  return result;
}

unint64_t sub_1ABB0B080()
{
  result = qword_1ED86B518;
  if (!qword_1ED86B518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B518);
  }

  return result;
}

_BYTE *sub_1ABB0B0F4(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1ABB0B19C(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_1ABA8BE70(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABB0B284()
{
  result = qword_1EB4D2540;
  if (!qword_1EB4D2540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2540);
  }

  return result;
}

unint64_t sub_1ABB0B2DC(uint64_t a1)
{
  result = sub_1ABB0B304();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABB0B304()
{
  result = qword_1EB4D2548;
  if (!qword_1EB4D2548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2548);
  }

  return result;
}

unint64_t sub_1ABB0B35C()
{
  result = qword_1EB4D2550;
  if (!qword_1EB4D2550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2550);
  }

  return result;
}

unint64_t sub_1ABB0B3B4()
{
  result = qword_1EB4D2558;
  if (!qword_1EB4D2558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2558);
  }

  return result;
}

unint64_t sub_1ABB0B40C()
{
  result = qword_1EB4D2560;
  if (!qword_1EB4D2560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2560);
  }

  return result;
}

unint64_t sub_1ABB0B464()
{
  result = qword_1ED86B500;
  if (!qword_1ED86B500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B500);
  }

  return result;
}

unint64_t sub_1ABB0B4BC()
{
  result = qword_1ED86B508;
  if (!qword_1ED86B508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B508);
  }

  return result;
}

unint64_t sub_1ABB0B514()
{
  result = qword_1ED86B4E0;
  if (!qword_1ED86B4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B4E0);
  }

  return result;
}

unint64_t sub_1ABB0B56C()
{
  result = qword_1ED86B4E8;
  if (!qword_1ED86B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B4E8);
  }

  return result;
}

unint64_t sub_1ABB0B5C4()
{
  result = qword_1ED86B4C0;
  if (!qword_1ED86B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B4C0);
  }

  return result;
}

unint64_t sub_1ABB0B61C()
{
  result = qword_1ED86B4C8;
  if (!qword_1ED86B4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B4C8);
  }

  return result;
}

unint64_t sub_1ABB0B670()
{
  result = qword_1ED86B530;
  if (!qword_1ED86B530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B530);
  }

  return result;
}

_BYTE *sub_1ABB0B6C4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          result = sub_1ABA8BE70(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABB0B7A0()
{
  result = qword_1EB4D2570;
  if (!qword_1EB4D2570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2570);
  }

  return result;
}

unint64_t sub_1ABB0B7F8()
{
  result = qword_1ED86B520;
  if (!qword_1ED86B520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B520);
  }

  return result;
}

unint64_t sub_1ABB0B850()
{
  result = qword_1ED86B528;
  if (!qword_1ED86B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B528);
  }

  return result;
}

uint64_t sub_1ABB0B8BC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FileLoader();

  v4 = static FileLoader.inIntelligencePlatform(searchPaths:)(&unk_1F208ECD8);
  if (v2)
  {
  }

  v6 = v4;
  type metadata accessor for AssetRegistryServerConfigLoader();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  type metadata accessor for AssetRegistryBasicServer();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a2;
  result = swift_allocObject();
  *(result + 16) = v8;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1ABB0B984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(v5 + 16);
  AssetRegistryBasicServer.assetEntryResult(for:in:localOptions:)(a1, a2, a3, a4, v9);
  sub_1ABB0D100(a5);
  return sub_1ABB0BA88(v9);
}

uint64_t sub_1ABB0B9E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1ABB0BA0C()
{
  sub_1ABB0B9E4();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABB0BA88(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D2578, &unk_1ABF38350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AssetRegistryOverrideAssetEntryParameters.verifyValidity()()
{
  *(v0 + 26);
  v1 = *(v0 + 12);
  if ((v1 & 0x80) == 0)
  {
    if (v1)
    {
      v3 = v0[1];
      v5 = v0[2];
      sub_1ABAAA4A0();
      sub_1ABAAA44C();
      if ((sub_1ABA80668() & 1) == 0)
      {
        return;
      }

      sub_1ABAFC69C();
    }

    else
    {
      v4 = *v0;
      v6 = v0[1];
      sub_1ABAAA4A0();
      sub_1ABAAA44C();
      if (sub_1ABA80668())
      {
        return;
      }

      sub_1ABAF8054();
    }

    swift_allocError();
    *v2 = 0;
    swift_willThrow();
  }
}

uint64_t sub_1ABB0BBE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656469727265766FLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65764F7261656C63 && a2 == 0xED00006564697272)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABB0BCB4(char a1)
{
  if (a1)
  {
    return 0x65764F7261656C63;
  }

  else
  {
    return 0x656469727265766FLL;
  }
}

uint64_t sub_1ABB0BCF8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001ABF86B90 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABB0BD94(uint64_t a1)
{
  v2 = sub_1ABB0C320();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB0BDD0(uint64_t a1)
{
  v2 = sub_1ABB0C320();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB0BE14()
{
  v1 = *v0;
  sub_1ABF25234();
  sub_1ABAB8190(v3, v1);
  return sub_1ABF25294();
}

uint64_t sub_1ABB0BE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB0BBE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB0BE88(uint64_t a1)
{
  v2 = sub_1ABB0C2CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB0BEC4(uint64_t a1)
{
  v2 = sub_1ABB0C2CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB0BF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB0BCF8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABB0BF30(uint64_t a1)
{
  v2 = sub_1ABB0C374();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB0BF6C(uint64_t a1)
{
  v2 = sub_1ABB0C374();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetRegistryOverrideAssetEntryParameters.encode(to:)(void *a1)
{
  v38 = sub_1ABAD219C(&qword_1EB4D2580, &qword_1ABF38360);
  sub_1ABA7BB64(v38);
  v36 = v3;
  v5 = *(v4 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v31 - v7;
  v39 = sub_1ABAD219C(&qword_1EB4D2588, &qword_1ABF38368);
  sub_1ABA7BB64(v39);
  v37 = v8;
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v40 = sub_1ABAD219C(&qword_1EB4D2590, &qword_1ABF38370);
  sub_1ABA7BB64(v40);
  v15 = v14;
  v17 = *(v16 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  v21 = *v1;
  v33 = v1[1];
  v34 = v21;
  v32 = v1[2];
  v22 = *(v1 + 26);
  v23 = *(v1 + 12);
  v24 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABB0C2CC();
  sub_1ABF252E4();
  if ((~v23 & 0xFE) != 0)
  {
    v28 = v23 | (v22 << 16);
    LOBYTE(v41) = 0;
    sub_1ABB0C374();
    v29 = v40;
    sub_1ABF24EC4();
    v41 = v34;
    v42 = v33;
    v43 = v32;
    v45 = BYTE2(v28);
    v44 = v28;
    sub_1ABAFFF44();
    v30 = v39;
    sub_1ABF24F84();
    (*(v37 + 8))(v13, v30);
    return (*(v15 + 8))(v20, v29);
  }

  else
  {
    LOBYTE(v41) = 1;
    sub_1ABB0C320();
    v25 = v35;
    v26 = v40;
    sub_1ABF24EC4();
    (*(v36 + 8))(v25, v38);
    return (*(v15 + 8))(v20, v26);
  }
}

unint64_t sub_1ABB0C2CC()
{
  result = qword_1EB4D2598;
  if (!qword_1EB4D2598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2598);
  }

  return result;
}

unint64_t sub_1ABB0C320()
{
  result = qword_1EB4D25A0;
  if (!qword_1EB4D25A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D25A0);
  }

  return result;
}

unint64_t sub_1ABB0C374()
{
  result = qword_1EB4D25A8;
  if (!qword_1EB4D25A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D25A8);
  }

  return result;
}

uint64_t AssetRegistryOverrideAssetEntryParameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v61 = sub_1ABAD219C(&qword_1EB4D25B0, &qword_1ABF38378);
  sub_1ABA7BB64(v61);
  v58 = v3;
  v5 = *(v4 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v53[-v7];
  v9 = sub_1ABAD219C(&qword_1EB4D25B8, &qword_1ABF38380);
  sub_1ABA7BB64(v9);
  v59 = v10;
  v12 = *(v11 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53[-v14];
  v16 = sub_1ABAD219C(&qword_1EB4D25C0, &unk_1ABF38388);
  sub_1ABA7BB64(v16);
  v60 = v17;
  v19 = *(v18 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53[-v21];
  v23 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABB0C2CC();
  v24 = v67;
  sub_1ABF252C4();
  if (v24)
  {
    return sub_1ABA84B54(a1);
  }

  v56 = v8;
  v57 = v15;
  v67 = a1;
  v55 = v9;
  v25 = v61;
  v26 = v62;
  v27 = sub_1ABF24EA4();
  result = sub_1ABAD4EA4(v27, 0);
  v32 = result;
  if (v30 == v31 >> 1)
  {
    goto LABEL_7;
  }

  if (v30 >= (v31 >> 1))
  {
    __break(1u);
    return result;
  }

  v54 = *(v29 + v30);
  v33 = sub_1ABAD4E90(v30 + 1);
  v35 = v34;
  v37 = v36;
  swift_unknownObjectRelease();
  v32 = v33;
  if (v35 != v37 >> 1)
  {
LABEL_7:
    v62 = v32;
    v39 = sub_1ABF24B44();
    swift_allocError();
    v41 = v40;
    v42 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v41 = &type metadata for AssetRegistryOverrideAssetEntryParameters;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
    swift_willThrow();
    swift_unknownObjectRelease();
    v43 = sub_1ABA7D168();
    v44(v43, v16);
    a1 = v67;
    return sub_1ABA84B54(a1);
  }

  if (v54)
  {
    LOBYTE(v63) = 1;
    sub_1ABB0C320();
    v38 = v56;
    sub_1ABA7BD5C();
    swift_unknownObjectRelease();
    (*(v58 + 8))(v38, v25);
    v45 = sub_1ABA7D168();
    v46(v45, v16);
    v47 = 0;
    v48 = 0uLL;
    v49 = 254;
  }

  else
  {
    LOBYTE(v63) = 0;
    sub_1ABB0C374();
    sub_1ABA7BD5C();
    sub_1ABAFFF98();
    sub_1ABF24E64();
    v50 = v60;
    swift_unknownObjectRelease();
    v51 = sub_1ABA806A8();
    v52(v51);
    (*(v50 + 8))(v22, v16);
    v48 = v63;
    v47 = v64;
    v49 = v65 | (v66 << 16);
  }

  *v26 = v48;
  *(v26 + 16) = v47;
  *(v26 + 24) = v49;
  *(v26 + 26) = BYTE2(v49);
  return sub_1ABA84B54(v67);
}

unint64_t sub_1ABB0C944(uint64_t a1)
{
  *(a1 + 8) = sub_1ABB0C974();
  result = sub_1ABB0C9C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABB0C974()
{
  result = qword_1EB4D25C8;
  if (!qword_1EB4D25C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D25C8);
  }

  return result;
}

unint64_t sub_1ABB0C9C8()
{
  result = qword_1EB4D25D0;
  if (!qword_1EB4D25D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D25D0);
  }

  return result;
}

uint64_t sub_1ABB0CA1C(uint64_t a1)
{
  *(a1 + 26);
  if ((*(a1 + 24) & 0x7E) != 0)
  {
    return (*(a1 + 24) << 24 >> 31) - (*(a1 + 24) & 0x7Eu) + 128;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABB0CA44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 27))
  {
    return (*a1 + 126);
  }

  v3 = (*(a1 + 24) & 0x7E | (*(a1 + 24) >> 7) & 1) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABB0CA94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 23) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 27) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 27) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 26) = 0;
      *(result + 24) = (a2 ^ 0x7F) & 0xFE | ((a2 ^ 0x7F) << 7);
    }
  }

  return result;
}

uint64_t sub_1ABB0CAF4(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 - 127;
  }

  else if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 2 * ((((-a2 >> 1) & 0x3F) - (a2 << 6)) & 0x7F);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetRegistryOverrideAssetEntryParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetRegistryOverrideAssetEntryParameters.OverrideCodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABB0CCE8()
{
  result = qword_1EB4D25D8;
  if (!qword_1EB4D25D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D25D8);
  }

  return result;
}

unint64_t sub_1ABB0CD40()
{
  result = qword_1EB4D25E0;
  if (!qword_1EB4D25E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D25E0);
  }

  return result;
}

unint64_t sub_1ABB0CD98()
{
  result = qword_1EB4D25E8;
  if (!qword_1EB4D25E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D25E8);
  }

  return result;
}

unint64_t sub_1ABB0CDF0()
{
  result = qword_1EB4D25F0;
  if (!qword_1EB4D25F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D25F0);
  }

  return result;
}

unint64_t sub_1ABB0CE48()
{
  result = qword_1EB4D25F8;
  if (!qword_1EB4D25F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D25F8);
  }

  return result;
}

unint64_t sub_1ABB0CEA0()
{
  result = qword_1EB4D2600;
  if (!qword_1EB4D2600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2600);
  }

  return result;
}

unint64_t sub_1ABB0CEF8()
{
  result = qword_1EB4D2608;
  if (!qword_1EB4D2608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2608);
  }

  return result;
}

unint64_t sub_1ABB0CF50()
{
  result = qword_1EB4D2610;
  if (!qword_1EB4D2610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2610);
  }

  return result;
}

uint64_t sub_1ABB0CFA4(char *a1)
{
  v1 = *a1;
  v2 = [objc_allocWithZone(GDXPCAssetRegistryService) init];
  v3 = sub_1ABF21854();
  sub_1ABA806BC(v3);
  v4 = sub_1ABF21844();
  v5 = sub_1ABF217F4();
  sub_1ABA806BC(v5);
  v6 = sub_1ABF217E4();
  result = swift_allocObject();
  *(result + 24) = v1;
  *(result + 16) = v2;
  *(result + 32) = v4;
  *(result + 40) = v6;
  return result;
}

uint64_t AssetRegistryRemoteWritableBackendXPC.__allocating_init<>()()
{
  v0 = [objc_allocWithZone(GDXPCAssetRegistryService) init];
  v1 = sub_1ABF21854();
  sub_1ABA806BC(v1);
  v2 = sub_1ABF21844();
  v3 = sub_1ABF217F4();
  sub_1ABA806BC(v3);
  v4 = sub_1ABF217E4();
  v5 = swift_allocObject();
  sub_1ABAD219C(&qword_1EB4D2040, &qword_1ABF35230);
  v6 = swift_allocObject();
  *(v6 + 24) = 1;
  *(v6 + 16) = v0;
  *(v6 + 32) = v2;
  *(v6 + 40) = v4;
  *(v5 + 16) = v6;
  return v5;
}

uint64_t sub_1ABB0D100@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  if (v1[3])
  {
    v10 = *v1;
    v11 = *(v1 + 2);
    sub_1ABB0DD10(v2, v3, v4);
    sub_1ABB05FF4();
    if (sub_1ABF25014())
    {
      sub_1ABB05FA0(v10, *(&v10 + 1), v11);
    }

    else
    {
      swift_allocError();
      *v9 = v10;
      *(v9 + 16) = v11;
    }

    return swift_willThrow();
  }

  else
  {
    v5 = *(v1 + 4);
    v6 = *(v1 + 5);
    v7 = *(v1 + 6);
    *a1 = v2;
    *(a1 + 8) = v3;
    *(a1 + 16) = v4;
    *(a1 + 24) = v7;
    *(a1 + 26) = BYTE2(v7);
    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
    sub_1ABAF8040(v2, v3, v4, v7);
  }
}

uint64_t sub_1ABB0D1E8(uint64_t result, uint64_t a2, __int16 a3)
{
  if ((a3 & 0x100) != 0)
  {
    *&v4 = result;
    *(&v4 + 1) = a2;
    v5 = a3;
    sub_1ABB0DD28(result, a2, a3);
    sub_1ABB08384();
    if (sub_1ABF25014())
    {
      sub_1ABB0DC54(v4, *(&v4 + 1), v5);
    }

    else
    {
      swift_allocError();
      *v3 = v4;
      *(v3 + 16) = v5;
    }

    return swift_willThrow();
  }

  return result;
}

void sub_1ABB0D298(uint64_t a1@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  sub_1ABB0D570(v1, &v26, v27);
  if (v2)
  {
    objc_autoreleasePoolPop(v4);
  }

  else
  {
    objc_autoreleasePoolPop(v4);
    v5 = v27[0];
    v6 = *(v1 + 16);
    v7 = sub_1ABF23BD4();
    sub_1ABA8EF78();
    v8 = sub_1ABF23BD4();
    sub_1ABA7D0F8();
    v9 = sub_1ABF21DB4();
    *&v27[0] = 0;
    v10 = [v6 assetEntryResultDataForAssetId:v7 inDomainId:v8 remoteOptionsData:v9 error:v27];

    v11 = *&v27[0];
    if (v10)
    {
      sub_1ABF21DD4();

      v12 = *(v1 + 40);
      v13 = sub_1ABA8EF78();
      sub_1ABB0DBF0(v13, v14);

      v15 = objc_autoreleasePoolPush();
      sub_1ABAD219C(&qword_1EB4D2578, &unk_1ABF38350);
      sub_1ABB0DD40(&qword_1EB4D26F0, &qword_1EB4D2578, &unk_1ABF38350);
      sub_1ABA7EDA8();
      sub_1ABF217D4();
      objc_autoreleasePoolPop(v15);
      v29[0] = v27[0];
      v29[1] = v27[1];
      v29[2] = v27[2];
      v30 = v28;
      sub_1ABD4EA04();

      v20 = sub_1ABA8EF78();
      sub_1ABA96210(v20, v21);
      sub_1ABB0D100(a1);
      v24 = sub_1ABA8EF78();
      sub_1ABA96210(v24, v25);
      sub_1ABA96210(v5, *(&v5 + 1));
      sub_1ABB0BA88(v29);
    }

    else
    {
      v16 = v11;
      v17 = sub_1ABF21BE4();

      swift_willThrow();
      sub_1ABB0DB9C();
      swift_allocError();
      *v18 = v17;
      swift_willThrow();
      v19 = sub_1ABA7D0F8();
      sub_1ABA96210(v19, v22);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1ABB0D570@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a1 + 32);
  v9 = *(a1 + 24);
  sub_1ABAFCB88();
  result = sub_1ABF21834();
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *a3 = result;
    a3[1] = v8;
  }

  return result;
}

void *sub_1ABB0D5E4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t sub_1ABB0D614()
{
  sub_1ABB0D5E4();

  return swift_deallocClassInstance();
}

uint64_t AssetRegistryRemoteWritableBackendXPC.overrideAssetEntry(for:in:overrideAssetEntryParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = *a5;
  v7 = *(a5 + 8);
  v8 = *(a5 + 16);
  v9 = *(a5 + 24) | (*(a5 + 26) << 16);
  v10 = sub_1ABB0D678();
  v11 = sub_1ABB0D970(v10, v6, v7, v8, v9);
  v13 = v12;

  if (!v5)
  {
    v15 = sub_1ABB0D66C();
    v16 = sub_1ABF23BD4();
    v17 = sub_1ABF23BD4();
    sub_1ABA7D0F8();
    v18 = sub_1ABF21DB4();
    v38 = 0;
    v19 = [v15 overrideAssetEntryForAssetId:v16 inDomainId:v17 overrideAssetEntryParametersData:v18 error:&v38];
    swift_unknownObjectRelease();

    v20 = v38;
    if (v19)
    {
      v37 = v13;
      sub_1ABF21DD4();

      sub_1ABB0D684();
      v21 = sub_1ABA8EF78();
      sub_1ABB0DBF0(v21, v22);
      v23 = objc_autoreleasePoolPush();
      sub_1ABAD219C(&qword_1EB4D2620, &qword_1ABF38818);
      sub_1ABB0DD40(&qword_1EB4D2628, &qword_1EB4D2620, &qword_1ABF38818);
      sub_1ABA7EDA8();
      sub_1ABF217D4();
      objc_autoreleasePoolPop(v23);

      v29 = sub_1ABA8EF78();
      sub_1ABA96210(v29, v30);
      v31 = v38;
      v32 = v39;
      v33 = v41;
      LOBYTE(v23) = v40;
      sub_1ABB0D1E8(v38, v39, v40 | (v41 << 8));
      v34 = sub_1ABA8EF78();
      sub_1ABA96210(v34, v35);
      sub_1ABA96210(v11, v37);
      result = sub_1ABB0DC48(v31, v32, v23, v33);
    }

    else
    {
      v24 = v20;
      v25 = sub_1ABF21BE4();

      swift_willThrow();
      sub_1ABB0DB9C();
      swift_allocError();
      *v26 = v25;
      swift_willThrow();
      v27 = sub_1ABA7D0F8();
      result = sub_1ABA96210(v27, v28);
    }
  }

  v36 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *sub_1ABB0D970(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if ((a5 & 0x80) == 0)
  {
    if (a5)
    {
      v17 = a3;
      v18 = a4;
      sub_1ABAAA4A0();
      sub_1ABAAA44C();
      v11 = &v17;
      if (sub_1ABF23B44())
      {
        sub_1ABAFC69C();
LABEL_10:
        swift_allocError();
        *v15 = 0;
        swift_willThrow();
        return v11;
      }
    }

    else
    {
      v17 = a2;
      v18 = a3;
      sub_1ABAAA4A0();
      sub_1ABAAA44C();
      v11 = &v17;
      if ((sub_1ABF23B44() & 1) == 0)
      {
        sub_1ABAF8054();
        goto LABEL_10;
      }
    }
  }

  v12 = a5 & 0xFFFFFF;
  v13 = objc_autoreleasePoolPush();
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v21 = BYTE2(v12);
  v20 = v12;
  sub_1ABB0C9C8();
  v11 = a1;
  v14 = sub_1ABF21834();
  if (!v5)
  {
    v11 = v14;
  }

  objc_autoreleasePoolPop(v13);
  return v11;
}

uint64_t AssetRegistryRemoteWritableBackendXPC.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AssetRegistryRemoteWritableBackendXPC.__deallocating_deinit()
{
  AssetRegistryRemoteWritableBackendXPC.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1ABB0DB9C()
{
  result = qword_1EB4D2618;
  if (!qword_1EB4D2618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2618);
  }

  return result;
}

uint64_t sub_1ABB0DBF0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1ABB0DC48(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {
    return sub_1ABB0DC54(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1ABB0DC54(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_1ABB0DD10(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1ABB0DD28(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_1ABB0DD40(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AssetRegistryResult.init(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v33 = a7;
  v13 = sub_1ABF247E4();
  v14 = sub_1ABA7BB64(v13);
  v32[0] = v15;
  v32[1] = v14;
  v17 = *(v16 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BD7C();
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7BC58();
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v32[2] = a6;
  v38 = a6;
  v22 = type metadata accessor for AssetRegistryResult();
  sub_1ABA7BB64(v22);
  v24 = v23;
  v26 = *(v25 + 64);
  sub_1ABA7BB88();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = v32 - v29;
  a1(v28);
  swift_storeEnumTagMultiPayload();
  return (*(v24 + 32))(v33, v30, v22);
}

uint64_t AssetRegistryResult.get()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  sub_1ABA7BD7C();
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v27 - v14;
  v16 = sub_1ABA7BB64(v13);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7BC58();
  v21 = v20 - v19;
  (*(v22 + 16))(v20 - v19);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a2, v21);
  }

  v23 = *(v6 + 32);
  v23(v15, v21, v4);
  (*(v6 + 16))(v12, v15, v4);
  v24 = *(a1[6] + 24);
  if (sub_1ABF25014())
  {
    (*(v6 + 8))(v12, v4);
  }

  else
  {
    swift_allocError();
    v23(v26, v12, v4);
  }

  swift_willThrow();
  return (*(v6 + 8))(v15, v4);
}

uint64_t sub_1ABB0E328(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABB0E3F8(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

BOOL sub_1ABB0E428(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  return sub_1ABAB6DB0(*a1, *a2);
}

uint64_t sub_1ABB0E444(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  return sub_1ABB0A454(*v1);
}

uint64_t sub_1ABB0E45C(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  return sub_1ABAB8190(a1, *v2);
}

uint64_t sub_1ABB0E474(uint64_t a1, void *a2)
{
  sub_1ABF25234();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  sub_1ABAB8190(v10, *v2);
  return sub_1ABF25294();
}

uint64_t sub_1ABB0E4C4(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  return sub_1ABB0E3F8(*v1);
}

uint64_t sub_1ABB0E4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  result = sub_1ABB0E328(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1ABB0E514(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  return sub_1ABACA7A4();
}

uint64_t sub_1ABB0E544@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  result = sub_1ABB01724();
  *a2 = result;
  return result;
}

uint64_t sub_1ABB0E57C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABB0E5D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABB0E6B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABB0E708(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABB0E778(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  return _s20IntelligencePlatform34LocationEmbedderInferenceInterfaceO6ErrorsO8RunErrorO9hashValueSivg_0();
}

uint64_t sub_1ABB0E7BC(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void, void, void))
{
  sub_1ABF25234();
  a4(v7, a2[2], a2[3], a2[4], a2[5], a2[6]);
  return sub_1ABF25294();
}
uint64_t sub_1D2FDAC90@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1D2FDADD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D30E8C9C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D2FDAE3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D30E8C9C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D2FDAEB4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D2FDAEFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1D2FE022C(v3 + 16, a2);
}

uint64_t sub_1D2FDAF4C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D30E8A4C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D2FDAFF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D30E8A4C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2FDB09C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D30E8A2C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D2FDB148(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D30E8A2C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2FDB2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1D300250C(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1D2FDB304()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7498F8, qword_1D30F1A48);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

void *sub_1D2FDB334()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &unk_1F4EAE870;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_1D2FDB3A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1D2FE022C(v3 + 16, a2);
}

uint64_t sub_1D2FDB3F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AssetPackHost();
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
      v13 = sub_1D30E8D5C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D2FDB514(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AssetPackHost();
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
      v13 = sub_1D30E8D5C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D2FDB640@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1D2FE022C(v3 + 16, a2);
}

uint64_t sub_1D2FDB700()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B60, &qword_1D30F31C8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D2FDB74C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D2FDB78C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D2FDB7C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C88, &qword_1D30F33A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1D2FDB874()
{
  v1 = (type metadata accessor for LicenseRecord.ElementID(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7 + 136) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  v12 = *(v0 + 32);

  v13 = (v0 + v3);
  v14 = *(v13 + 1);

  v15 = *(v13 + 3);

  v16 = *(v13 + 5);

  v17 = v1[7];
  v18 = sub_1D30E8A4C();
  (*(*(v18 - 8) + 8))(&v13[v17], v18);
  v19 = *(v0 + v4 + 8);

  v20 = *(v0 + v4 + 24);

  v21 = *(v0 + v4 + 40);

  v22 = *(v0 + v4 + 64);

  v23 = *(v0 + v4 + 80);

  v24 = *(v0 + v4 + 120);

  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v10 | 7);
}

uint64_t sub_1D2FDBA68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C00, &qword_1D30F34F0);
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

uint64_t sub_1D2FDBAE0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C00, &qword_1D30F34F0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D2FDBB6C()
{
  if (*v0)
  {
    result = 0x676E696E676973;
  }

  else
  {
    result = 0x6974707972636E65;
  }

  *v0;
  return result;
}

uint64_t sub_1D2FDBBAC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  v3 = *(result + 24) >> 1;
  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1D2FDBDC8()
{
  v1 = 28532;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_1D2FDBE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D30DAC9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D2FDBE44()
{
  if (*v0)
  {
    result = 0x6B72616D6B6F6F62;
  }

  else
  {
    result = 0x6150656372756F73;
  }

  *v0;
  return result;
}

unint64_t sub_1D2FDBE90()
{
  if (*v0)
  {
    result = 0x44496D616574;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

unint64_t sub_1D2FDBED8()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 12383;
  }

  *v0;
  return result;
}

unint64_t sub_1D2FDC3D0()
{
  if (*v0)
  {
    result = 0xD00000000000001ELL;
  }

  else
  {
    result = 1752457584;
  }

  *v0;
  return result;
}

uint64_t sub_1D2FDC5A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D30E852C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D2FDC614(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D30E852C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D2FDC6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D30E8D9C();
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

uint64_t sub_1D2FDC788(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D30E8D9C();
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

uint64_t sub_1D2FDC844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Helper.Message(0);
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

uint64_t sub_1D2FDC900(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Helper.Message(0);
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

uint64_t sub_1D2FDC9B8()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AD20, &qword_1D30F6618);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D2FDC9E8()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AD28, &qword_1D30F6620);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D2FDCA18()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AD30, &qword_1D30F6628);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D2FDCA50()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AD38, qword_1D30F66A8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D2FDCAB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B0A8, &qword_1D30FD1D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D2FDCBE0()
{
  v1 = 0x6574736575716572;
  if (*v0 != 1)
  {
    v1 = 0x65726576696C6564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69646E6570;
  }
}

_OWORD *sub_1D2FDCC64(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D2FDCC74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D2FDF438(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D2FDCD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[4];
  v6 = v3[2];
  if (v6 < v5)
  {
    __break(1u);
  }

  else
  {
    v7 = *v3;
    v8 = v3[1];
    v9 = *(a1 + 16);
    v10 = sub_1D2FDCEC0(v5, v6, v7, v8, v9);
    sub_1D2FDCF08(v10, v11, v9);
    v5 = v7;
    v6 = v8;
    a3 = v9;
  }

  return MEMORY[0x1EEE69C20](v5, v6, a3);
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

__n128 sub_1D2FDCDA8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

uint64_t sub_1D2FDCDBC(uint64_t a1, int a2)
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

uint64_t sub_1D2FDCDDC(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D2FDCE38(uint64_t a1, int a2)
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

uint64_t sub_1D2FDCE58(uint64_t result, int a2, int a3)
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

uint64_t sub_1D2FDCEC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result < 0 || a4 < a2)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return 0;
    }

    if (!__OFSUB__(a2, result))
    {
      return a3 + *(*(a5 - 8) + 72) * result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2FDCF08(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    result = swift_arrayDestroy();
    if ((a2 * *(*(a3 - 8) + 72)) >> 64 == (a2 * *(*(a3 - 8) + 72)) >> 63)
    {
      return v3;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_1D2FDCF78@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void *sub_1D2FDCF94(void *result, void *a2)
{
  v2 = result[4];
  v3 = result[2];
  if (v3 < v2)
  {
    __break(1u);
  }

  else
  {
    v4 = v2 - 1;
    v5 = 56 * v2 + 8;
    while (v4 - v3 != -1)
    {
      v6 = *(*result + v5);
      ++v4;
      v5 += 56;
      if (v6 == *a2)
      {
        return v4;
      }
    }

    return 0;
  }

  return result;
}

void sub_1D2FDD054(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1D2FDD0A0()
{
  v1 = *v0;
  sub_1D30E98AC();
  MEMORY[0x1D38B2DE0](v1);
  return sub_1D30E98EC();
}

uint64_t sub_1D2FDD0E8()
{
  v1 = *v0;
  sub_1D30E98AC();
  MEMORY[0x1D38B2DE0](v1);
  return sub_1D30E98EC();
}

uint64_t sub_1D2FDD138(uint64_t a1)
{
  v2 = sub_1D2FE0588();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FDD174(uint64_t a1)
{
  v2 = sub_1D2FE0588();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2FDD1B0(void *a1, uint64_t a2)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749238, &qword_1D30EECF0);
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v28 = &v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749240, &qword_1D30EECF8);
  v26 = *(v6 - 8);
  v27 = v6;
  v7 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749248, &qword_1D30EED00);
  v25 = *(v10 - 8);
  v11 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749250, &qword_1D30EED08);
  v15 = *(v14 - 8);
  v16 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v18 = &v24 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2FE0588();
  v20 = v31;
  sub_1D30E992C();
  if (!v20)
  {
    v33 = 0;
    sub_1D2FE06D8();
    sub_1D30E96DC();
    (*(v25 + 8))(v13, v10);
    return (*(v15 + 8))(v18, v14);
  }

  if (v20 == 1)
  {
    v34 = 1;
    sub_1D2FE0684();
    sub_1D30E96DC();
    (*(v26 + 8))(v9, v27);
    return (*(v15 + 8))(v18, v14);
  }

  v35 = 2;
  sub_1D2FE05DC();
  v22 = v28;
  sub_1D30E96DC();
  v32 = v20;
  sub_1D2FE0630();
  v23 = v30;
  sub_1D30E974C();
  (*(v29 + 8))(v22, v23);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1D2FDD58C()
{
  sub_1D30E98AC();
  MEMORY[0x1D38B2DE0](0);
  return sub_1D30E98EC();
}

uint64_t sub_1D2FDD5D0()
{
  sub_1D30E98AC();
  MEMORY[0x1D38B2DE0](0);
  return sub_1D30E98EC();
}

uint64_t sub_1D2FDD628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D30E97CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D2FDD6B0(uint64_t a1)
{
  v2 = sub_1D2FE05DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FDD6EC(uint64_t a1)
{
  v2 = sub_1D2FE05DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2FDD734(uint64_t a1)
{
  v2 = sub_1D2FE06D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FDD770(uint64_t a1)
{
  v2 = sub_1D2FE06D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2FDD7AC(uint64_t a1)
{
  v2 = sub_1D2FE0684();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FDD7E8(uint64_t a1)
{
  v2 = sub_1D2FE0684();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2FDD824@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D2FDF560(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D2FDD86C()
{
  v1 = 0x65726576696C6544;
  if (*v0 == 1)
  {
    v1 = 0x6574736575716552;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69646E6550;
  }
}

uint64_t sub_1D2FDD8D0()
{
  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C58, type metadata accessor for Schema1_0_1.LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord);
  sub_1D30E8F0C();

  return v0;
}

uint64_t sub_1D2FDD9D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C58, type metadata accessor for Schema1_0_1.LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord);
  sub_1D30E8F0C();

  *a2 = v4;
  return result;
}

uint64_t sub_1D2FDDAE0()
{
  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord);
  sub_1D30E8F1C();
}

uint64_t sub_1D2FDDB88()
{
  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C58, type metadata accessor for Schema1_0_1.LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord);
  sub_1D2FE0174(&qword_1EC749218, &qword_1EC749220);
  sub_1D30E8F0C();

  return v0;
}

uint64_t sub_1D2FDDCC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C58, type metadata accessor for Schema1_0_1.LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord);
  sub_1D2FE0174(&qword_1EC749218, &qword_1EC749220);
  sub_1D30E8F0C();

  *a2 = v4;
  return result;
}

uint64_t sub_1D2FDDE10(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C58, type metadata accessor for Schema1_0_1.LicenseRecord);
  sub_1D30E8ADC();
}

uint64_t sub_1D2FDDED4()
{
  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord);
  sub_1D2FE0174(&qword_1EC749200, &qword_1EC749210);
  sub_1D30E8F1C();
}

uint64_t sub_1D2FDDFB8()
{
  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C58, type metadata accessor for Schema1_0_1.LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord);
  sub_1D2FE0104();
  sub_1D30E8F0C();

  return v0;
}

uint64_t sub_1D2FDE0C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C58, type metadata accessor for Schema1_0_1.LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord);
  sub_1D2FE0104();
  sub_1D30E8F0C();

  *a2 = v4;
  return result;
}

uint64_t sub_1D2FDE1D0()
{
  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord);
  sub_1D2FE00B0();
  sub_1D30E8F1C();
}

uint64_t sub_1D2FDE27C()
{
  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C58, type metadata accessor for Schema1_0_1.LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord);
  sub_1D2FDFFF8(&qword_1EC7491E0, &qword_1EC7491E8);
  sub_1D30E8F0C();
}

uint64_t sub_1D2FDE3BC(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C58, type metadata accessor for Schema1_0_1.LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord);
  sub_1D2FDFFF8(&qword_1EC7491E0, &qword_1EC7491E8);
  sub_1D30E8F0C();
}

uint64_t sub_1D2FDE4FC(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491C8, &qword_1D30EEC10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v6 = &v9[-v5];
  sub_1D2FDFEBC(a1, &v9[-v5]);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_1D2FE0438(&qword_1EE313C58, type metadata accessor for Schema1_0_1.LicenseRecord);
  sub_1D30E8ADC();

  return sub_1D2FDFF48(v6);
}

uint64_t sub_1D2FDE62C()
{
  swift_getKeyPath();
  sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord);
  sub_1D2FDFFF8(&qword_1EC7491D0, &qword_1EC7491D8);
  sub_1D30E8F1C();
}

void *sub_1D2FDE70C(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491C8, &qword_1D30EEC10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v7 = v12 - v6;
  v2[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749228, &unk_1D30EEC20);
  v8 = sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord);
  v12[0] = v4;
  v12[1] = v4;
  v12[2] = v8;
  v12[3] = v8;
  v2[7] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0Tm(v2 + 3);
  sub_1D30E8ECC();
  sub_1D30E896C();
  v9 = sub_1D30E8A2C();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
  swift_getKeyPath();
  sub_1D2FDFFF8(&qword_1EC7491D0, &qword_1EC7491D8);
  sub_1D30E8DEC();

  sub_1D2FDFF48(v7);
  *(v2 + 16) = 0;
  sub_1D30E8AFC();
  *(v2 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v2 + 3);
  sub_1D2FE02DC(a1, (v2 + 3));
  swift_endAccess();
  return v2;
}

uint64_t sub_1D2FDE988()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v1 = OBJC_IVAR____TtCO29ManagedBackgroundAssetsHelper11Schema1_0_113LicenseRecord___observationRegistrar;
  v2 = sub_1D30E8B0C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for Schema1_0_1.LicenseRecord()
{
  result = qword_1EE313C28;
  if (!qword_1EE313C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2FDEA80()
{
  result = sub_1D30E8B0C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D2FDEB5C()
{
  v0 = sub_1D30E8F9C();
  __swift_allocate_value_buffer(v0, qword_1EE315318);
  __swift_project_value_buffer(v0, qword_1EE315318);
  return sub_1D30E8FAC();
}

char *sub_1D2FDEBB4()
{
  v9 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749230, &unk_1D30F2B00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D30EE910;
  v1 = type metadata accessor for AppReviewRecord();
  v2 = sub_1D2FE0438(&qword_1EE313708, type metadata accessor for AppReviewRecord);
  *(inited + 32) = v1;
  *(inited + 40) = v2;
  v3 = type metadata accessor for AssetPackRecord(0);
  v4 = sub_1D2FE0438(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = type metadata accessor for Schema1_0_1.LicenseRecord();
  v6 = sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord);
  result = sub_1D30D7C08(1, 3, 1, inited);
  *(result + 2) = 3;
  *(result + 8) = v5;
  *(result + 9) = v6;
  qword_1EE315310 = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D2FDED2C()
{
  if (qword_1EE313B48 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D2FDED88@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE313B50 != -1)
  {
    swift_once();
  }

  v2 = sub_1D30E8F9C();
  v3 = __swift_project_value_buffer(v2, qword_1EE315318);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D2FDEE30(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_1D2FDE70C(a1);
  return v5;
}

uint64_t sub_1D2FDEEB8(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1D2FE02DC(a1, v1 + 24);
  return swift_endAccess();
}

void (*sub_1D2FDEF10(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1D2FE022C(v1 + 24, v4);
  return sub_1D2FDEFA0;
}

void sub_1D2FDEFA0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1D2FE022C(*a1, v2 + 40);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 24));
    sub_1D2FE02DC((v2 + 40), v3 + 24);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 24));
    sub_1D2FE02DC(v2, v3 + 24);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_1D2FDF05C()
{
  v2 = *v0;
  sub_1D30E98AC();
  sub_1D30E903C();
  return sub_1D30E98EC();
}

uint64_t sub_1D2FDF0C0()
{
  v1 = *v0;
  sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord);
  return sub_1D30E8EFC();
}

uint64_t sub_1D2FDF134()
{
  v2 = *v0;
  sub_1D30E98AC();
  sub_1D30E903C();
  return sub_1D30E98EC();
}

uint64_t sub_1D2FDF194()
{
  v1 = *v0;
  sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord);
  return sub_1D30E8EEC();
}

uint64_t sub_1D2FDF208(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1D2FE0438(&qword_1EE313C50, type metadata accessor for Schema1_0_1.LicenseRecord);

  return MEMORY[0x1EEDD9288](v3, v4, v2, v5);
}

uint64_t sub_1D2FDF438(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646E6570 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574736575716572 && a2 == 0xE900000000000064 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65726576696C6564 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D30E97CC();

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

uint64_t sub_1D2FDF560(uint64_t *a1)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749280, &qword_1D30EED10);
  v39 = *(v37 - 8);
  v2 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v41 = &v34 - v3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749288, &qword_1D30EED18);
  v38 = *(v40 - 8);
  v4 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749290, &qword_1D30EED20);
  v36 = *(v7 - 8);
  v8 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749298, &qword_1D30EED28);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v15 = &v34 - v14;
  v17 = a1[3];
  v16 = a1[4];
  v43 = a1;
  v18 = __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D2FE0588();
  v19 = v42;
  sub_1D30E990C();
  if (!v19)
  {
    v35 = v7;
    v42 = 0;
    v20 = v40;
    v21 = sub_1D30E96AC();
    v22 = (2 * *(v21 + 16)) | 1;
    v44 = v21;
    v45 = v21 + 32;
    v46 = 0;
    v47 = v22;
    v23 = sub_1D302D668();
    v18 = v15;
    if (v23 == 3 || v46 != v47 >> 1)
    {
      v25 = sub_1D30E94EC();
      swift_allocError();
      v27 = v26;
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7492A0, &qword_1D30EED30) + 48);
      *v27 = &type metadata for Schema1_0_1.LicenseRecord.State;
      sub_1D30E960C();
      sub_1D30E94DC();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
    }

    else
    {
      if (v23)
      {
        if (v23 == 1)
        {
          LOBYTE(v48) = 1;
          sub_1D2FE0684();
          v24 = v42;
          sub_1D30E95FC();
          if (!v24)
          {
            (*(v38 + 8))(v6, v20);
            (*(v12 + 8))(v15, v11);
            swift_unknownObjectRelease();
            v18 = 1;
            goto LABEL_11;
          }
        }

        else
        {
          LOBYTE(v48) = 2;
          sub_1D2FE05DC();
          v31 = v42;
          sub_1D30E95FC();
          if (!v31)
          {
            v32 = v15;
            sub_1D2FE072C();
            v33 = v37;
            sub_1D30E967C();
            (*(v39 + 8))(0, v33);
            (*(v12 + 8))(v32, v11);
            swift_unknownObjectRelease();
            v18 = v48;
            goto LABEL_11;
          }
        }

        (*(v12 + 8))(v15, v11);
LABEL_10:
        swift_unknownObjectRelease();
        goto LABEL_11;
      }

      LOBYTE(v48) = 0;
      sub_1D2FE06D8();
      v30 = v42;
      sub_1D30E95FC();
      if (!v30)
      {
        (*(v36 + 8))(v10, v35);
        (*(v12 + 8))(v15, v11);
        swift_unknownObjectRelease();
        v18 = 0;
        goto LABEL_11;
      }
    }

    (*(v12 + 8))(v18, v11);
    goto LABEL_10;
  }

LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v43);
  return v18;
}

uint64_t sub_1D2FDFB60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491B8, &qword_1D30EEB60);
  v0 = *(sub_1D30E8F8C() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D30EE920;
  swift_getKeyPath();
  v11 = 0u;
  v12 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491C0, &qword_1D30EEB90);
  v4 = *(sub_1D30E8FCC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1D30EE930;
  sub_1D30E8FBC();
  v7 = sub_1D30E8FDC();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1D30E8FEC();
  sub_1D2FE0438(&qword_1EE3140E0, MEMORY[0x1E697BD30]);
  sub_1D30E8F7C();
  swift_getKeyPath();
  sub_1D30E8F7C();
  swift_getKeyPath();
  v11 = 0u;
  *&v12 = 0;
  sub_1D30E8F7C();
  swift_getKeyPath();
  *(&v12 + 1) = sub_1D30E8A2C();
  __swift_allocate_boxed_opaque_existential_0Tm(&v11);
  sub_1D30E896C();
  sub_1D30E8F7C();
  return v3;
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

uint64_t sub_1D2FDFEBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491C8, &qword_1D30EEC10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2FDFF2C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1D2FDE62C();
}

uint64_t sub_1D2FDFF48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491C8, &qword_1D30EEC10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_1D2FDFFF8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7491C8, &qword_1D30EEC10);
    sub_1D2FE0438(a2, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D2FE0094()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1D2FDE1D0();
}

unint64_t sub_1D2FE00B0()
{
  result = qword_1EC7491F0;
  if (!qword_1EC7491F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7491F0);
  }

  return result;
}

unint64_t sub_1D2FE0104()
{
  result = qword_1EC7491F8;
  if (!qword_1EC7491F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7491F8);
  }

  return result;
}

uint64_t sub_1D2FE0158()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1D2FDDED4();
}

uint64_t sub_1D2FE0174(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749208, &qword_1D30EEC18);
    sub_1D2FE0438(a2, type metadata accessor for LicenseRecord.ElementID);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D2FE0210()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1D2FDDAE0();
}

uint64_t sub_1D2FE022C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_1D2FE02DC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

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

uint64_t sub_1D2FE0438(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_29ManagedBackgroundAssetsHelper11Schema1_0_1O13LicenseRecordC5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D2FE04A4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D2FE04F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1D2FE0558(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_1D2FE0588()
{
  result = qword_1EC749258;
  if (!qword_1EC749258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749258);
  }

  return result;
}

unint64_t sub_1D2FE05DC()
{
  result = qword_1EC749260;
  if (!qword_1EC749260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749260);
  }

  return result;
}

unint64_t sub_1D2FE0630()
{
  result = qword_1EC749268;
  if (!qword_1EC749268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749268);
  }

  return result;
}

unint64_t sub_1D2FE0684()
{
  result = qword_1EC749270;
  if (!qword_1EC749270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749270);
  }

  return result;
}

unint64_t sub_1D2FE06D8()
{
  result = qword_1EC749278;
  if (!qword_1EC749278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749278);
  }

  return result;
}

unint64_t sub_1D2FE072C()
{
  result = qword_1EC7492A8;
  if (!qword_1EC7492A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7492A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Schema1_0_1.LicenseRecord.State.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Schema1_0_1.LicenseRecord.State.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Schema1_0_1.LicenseRecord.State.DeliveredCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Schema1_0_1.LicenseRecord.State.DeliveredCodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_1D2FE09E8()
{
  result = qword_1EC7492B0;
  if (!qword_1EC7492B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7492B0);
  }

  return result;
}

unint64_t sub_1D2FE0A40()
{
  result = qword_1EC7492B8;
  if (!qword_1EC7492B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7492B8);
  }

  return result;
}

unint64_t sub_1D2FE0A98()
{
  result = qword_1EC7492C0;
  if (!qword_1EC7492C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7492C0);
  }

  return result;
}

unint64_t sub_1D2FE0AF0()
{
  result = qword_1EC7492C8;
  if (!qword_1EC7492C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7492C8);
  }

  return result;
}

unint64_t sub_1D2FE0B48()
{
  result = qword_1EC7492D0;
  if (!qword_1EC7492D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7492D0);
  }

  return result;
}

unint64_t sub_1D2FE0BA0()
{
  result = qword_1EC7492D8;
  if (!qword_1EC7492D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7492D8);
  }

  return result;
}

unint64_t sub_1D2FE0BF8()
{
  result = qword_1EC7492E0;
  if (!qword_1EC7492E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7492E0);
  }

  return result;
}

unint64_t sub_1D2FE0C50()
{
  result = qword_1EC7492E8;
  if (!qword_1EC7492E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7492E8);
  }

  return result;
}

unint64_t sub_1D2FE0CA8()
{
  result = qword_1EC7492F0;
  if (!qword_1EC7492F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7492F0);
  }

  return result;
}

unint64_t sub_1D2FE0D00()
{
  result = qword_1EC7492F8;
  if (!qword_1EC7492F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7492F8);
  }

  return result;
}

unint64_t sub_1D2FE0D5C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x4449656C646E7562;
    v6 = 0x6C646E7542707061;
    v7 = 0x65726F7453707061;
    if (a1 != 3)
    {
      v7 = 0x70756F7247707061;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x7542746E65726170;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000012;
    if (a1 == 9)
    {
      v1 = 0xD00000000000001FLL;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000017;
    }

    v2 = 0x44496D616574;
    v3 = 0xD000000000000010;
    if (a1 != 6)
    {
      v3 = 0x7473655461746562;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D2FE0EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D2FE32E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D2FE0F2C(uint64_t a1)
{
  v2 = sub_1D2FE2E38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FE0F68(uint64_t a1)
{
  v2 = sub_1D2FE2E38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppInfo.bundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AppInfo.parentBundleID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AppInfo.appBundleID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t AppInfo.appGroupID.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t AppInfo.teamID.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t AppInfo.distributorNameForCurrentLocale.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t AppInfo.description.getter()
{
  v1 = 0xE900000000000065;
  v3 = *v0;
  v2 = v0[1];
  v5 = v0[3];
  v4 = v0[4];
  v7 = v0[5];
  v6 = v0[6];
  v54 = v0[7];
  v55 = v0[8];
  v8 = v0[9];
  v9 = v0[10];
  v10 = v0[12];
  v56 = *(v0 + 88);
  v57 = *(v0 + 104);
  v12 = v0[14];
  v11 = v0[15];
  v58 = v0[16];
  if (!v5)
  {
    if (v9)
    {
      v17 = v0[9];
      if (v11)
      {
        v49 = v0[12];
        v51 = v0[14];
        v53 = v0[15];
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0xD000000000000017, 0x80000001D30EA610);
        MEMORY[0x1D38B2610](v3, v2);
        MEMORY[0x1D38B2610](0xD000000000000010, 0x80000001D30EA630);
        MEMORY[0x1D38B2610](v4, v7);
        MEMORY[0x1D38B2610](0xD000000000000014, 0x80000001D30EA650);
        v18 = sub_1D30E977C();
        MEMORY[0x1D38B2610](v18);

        MEMORY[0x1D38B2610](0x6F72672070706120, 0xEF203A4449207075);
        MEMORY[0x1D38B2610](v54, v55);
        MEMORY[0x1D38B2610](0x4449206D61657420, 0xEA0000000000203ALL);
        MEMORY[0x1D38B2610](v17, v9);
        MEMORY[0x1D38B2610](0xD000000000000015, 0x80000001D30EA670);
        if (v56)
        {
          v19 = 1702195828;
        }

        else
        {
          v19 = 0x65736C6166;
        }

        if (v56)
        {
          v20 = 0xE400000000000000;
        }

        else
        {
          v20 = 0xE500000000000000;
        }

LABEL_45:
        MEMORY[0x1D38B2610](v19, v20);

        MEMORY[0x1D38B2610](0xD000000000000013, 0x80000001D30EA690);
        type metadata accessor for MIBetaTesterType(0);
        sub_1D30E955C();
        MEMORY[0x1D38B2610](0xD00000000000001DLL, 0x80000001D30EA6B0);
        if (v57)
        {
          v30 = 1702195828;
        }

        else
        {
          v30 = 0x65736C6166;
        }

        if (v57)
        {
          v31 = 0xE400000000000000;
        }

        else
        {
          v31 = 0xE500000000000000;
        }

        MEMORY[0x1D38B2610](v30, v31);

        MEMORY[0x1D38B2610](0xD000000000000026, 0x80000001D30EA770);
        MEMORY[0x1D38B2610](v51, v53);
        goto LABEL_100;
      }

      sub_1D30E948C();
      MEMORY[0x1D38B2610](0xD000000000000017, 0x80000001D30EA610);
      MEMORY[0x1D38B2610](v3, v2);
      MEMORY[0x1D38B2610](0xD000000000000010, 0x80000001D30EA630);
      MEMORY[0x1D38B2610](v4, v7);
      MEMORY[0x1D38B2610](0xD000000000000014, 0x80000001D30EA650);
      v32 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v32);

      MEMORY[0x1D38B2610](0x6F72672070706120, 0xEF203A4449207075);
      MEMORY[0x1D38B2610](v54, v55);
      MEMORY[0x1D38B2610](0x4449206D61657420, 0xEA0000000000203ALL);
      MEMORY[0x1D38B2610](v17, v9);
      MEMORY[0x1D38B2610](0xD000000000000015, 0x80000001D30EA670);
      if (v56)
      {
        v33 = 1702195828;
      }

      else
      {
        v33 = 0x65736C6166;
      }

      if (v56)
      {
        v34 = 0xE400000000000000;
      }

      else
      {
        v34 = 0xE500000000000000;
      }

      MEMORY[0x1D38B2610](v33, v34);
    }

    else
    {
      v28 = v0[12];
      if (v11)
      {
        v51 = v0[14];
        v53 = v0[15];
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0xD000000000000017, 0x80000001D30EA610);
        MEMORY[0x1D38B2610](v3, v2);
        MEMORY[0x1D38B2610](0xD000000000000010, 0x80000001D30EA630);
        MEMORY[0x1D38B2610](v4, v7);
        MEMORY[0x1D38B2610](0xD000000000000014, 0x80000001D30EA650);
        v29 = sub_1D30E977C();
        MEMORY[0x1D38B2610](v29);

        MEMORY[0x1D38B2610](0x6F72672070706120, 0xEF203A4449207075);
        MEMORY[0x1D38B2610](v54, v55);
        MEMORY[0x1D38B2610](0xD000000000000015, 0x80000001D30EA670);
        if (v56)
        {
          v19 = 1702195828;
        }

        else
        {
          v19 = 0x65736C6166;
        }

        if (v56)
        {
          v20 = 0xE400000000000000;
        }

        else
        {
          v20 = 0xE500000000000000;
        }

        goto LABEL_45;
      }

      sub_1D30E948C();
      MEMORY[0x1D38B2610](0xD000000000000017, 0x80000001D30EA610);
      MEMORY[0x1D38B2610](v3, v2);
      MEMORY[0x1D38B2610](0xD000000000000010, 0x80000001D30EA630);
      MEMORY[0x1D38B2610](v4, v7);
      MEMORY[0x1D38B2610](0xD000000000000014, 0x80000001D30EA650);
      v40 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v40);

      MEMORY[0x1D38B2610](0x6F72672070706120, 0xEF203A4449207075);
      MEMORY[0x1D38B2610](v54, v55);
      MEMORY[0x1D38B2610](0xD000000000000015, 0x80000001D30EA670);
      if (v56)
      {
        v41 = 1702195828;
      }

      else
      {
        v41 = 0x65736C6166;
      }

      if (v56)
      {
        v42 = 0xE400000000000000;
      }

      else
      {
        v42 = 0xE500000000000000;
      }

      MEMORY[0x1D38B2610](v41, v42);

      MEMORY[0x1D38B2610](0xD000000000000013, 0x80000001D30EA690);
      type metadata accessor for MIBetaTesterType(0);
      sub_1D30E955C();
    }

    MEMORY[0x1D38B2610](0xD00000000000001DLL, 0x80000001D30EA6B0);
    if (v57)
    {
      v43 = 1702195828;
    }

    else
    {
      v43 = 0x65736C6166;
    }

    if (v57)
    {
      v44 = 0xE400000000000000;
    }

    else
    {
      v44 = 0xE500000000000000;
    }

    MEMORY[0x1D38B2610](v43, v44);

LABEL_100:
    MEMORY[0x1D38B2610](0xD000000000000017, 0x80000001D30EA6D0);
    if (v58 > 2)
    {
      switch(v58)
      {
        case 3:
          v45 = 0x6976655220707041;
          v1 = 0xEA00000000007765;
          break;
        case 4:
          v1 = 0x80000001D30EA750;
          v45 = 0xD000000000000012;
          break;
        case 5:
          v1 = 0x80000001D30EA730;
          v45 = 0xD000000000000014;
          break;
        default:
          goto LABEL_115;
      }
    }

    else if (v58)
    {
      if (v58 == 1)
      {
        v45 = 0x67696C4674736554;
        v1 = 0xEA00000000007468;
      }

      else
      {
        if (v58 != 2)
        {
          goto LABEL_115;
        }

        v45 = 0x6143206C61636F4CLL;
        v1 = 0xEB00000000656863;
      }
    }

    else
    {
      v45 = 0x726F745320707041;
    }

    MEMORY[0x1D38B2610](v45, v1);
    goto LABEL_114;
  }

  v13 = v0[2];
  if (v9)
  {
    v47 = v0[9];
    v48 = v0[12];
    if (v11)
    {
      v50 = v0[14];
      v52 = v0[15];
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0xD000000000000017, 0x80000001D30EA610);
      MEMORY[0x1D38B2610](v3, v2);
      MEMORY[0x1D38B2610](0xD000000000000013, 0x80000001D30EA7A0);
      MEMORY[0x1D38B2610](v13, v5);
      MEMORY[0x1D38B2610](0xD000000000000010, 0x80000001D30EA630);
      MEMORY[0x1D38B2610](v4, v7);
      MEMORY[0x1D38B2610](0xD000000000000014, 0x80000001D30EA650);
      v14 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v14);

      MEMORY[0x1D38B2610](0x6F72672070706120, 0xEF203A4449207075);
      MEMORY[0x1D38B2610](v54, v55);
      MEMORY[0x1D38B2610](0x4449206D61657420, 0xEA0000000000203ALL);
      MEMORY[0x1D38B2610](v47, v9);
      MEMORY[0x1D38B2610](0xD000000000000015, 0x80000001D30EA670);
      if (v56)
      {
        v15 = 1702195828;
      }

      else
      {
        v15 = 0x65736C6166;
      }

      if (v56)
      {
        v16 = 0xE400000000000000;
      }

      else
      {
        v16 = 0xE500000000000000;
      }

LABEL_25:
      MEMORY[0x1D38B2610](v15, v16);

      MEMORY[0x1D38B2610](0xD000000000000013, 0x80000001D30EA690);
      type metadata accessor for MIBetaTesterType(0);
      sub_1D30E955C();
      MEMORY[0x1D38B2610](0xD00000000000001DLL, 0x80000001D30EA6B0);
      if (v57)
      {
        v23 = 1702195828;
      }

      else
      {
        v23 = 0x65736C6166;
      }

      if (v57)
      {
        v24 = 0xE400000000000000;
      }

      else
      {
        v24 = 0xE500000000000000;
      }

      MEMORY[0x1D38B2610](v23, v24);

      MEMORY[0x1D38B2610](0xD000000000000026, 0x80000001D30EA770);
      MEMORY[0x1D38B2610](v50, v52);
      goto LABEL_72;
    }

    sub_1D30E948C();
    MEMORY[0x1D38B2610](0xD000000000000017, 0x80000001D30EA610);
    MEMORY[0x1D38B2610](v3, v2);
    MEMORY[0x1D38B2610](0xD000000000000013, 0x80000001D30EA7A0);
    MEMORY[0x1D38B2610](v13, v5);
    MEMORY[0x1D38B2610](0xD000000000000010, 0x80000001D30EA630);
    MEMORY[0x1D38B2610](v4, v7);
    MEMORY[0x1D38B2610](0xD000000000000014, 0x80000001D30EA650);
    v25 = sub_1D30E977C();
    MEMORY[0x1D38B2610](v25);

    MEMORY[0x1D38B2610](0x6F72672070706120, 0xEF203A4449207075);
    MEMORY[0x1D38B2610](v54, v55);
    MEMORY[0x1D38B2610](0x4449206D61657420, 0xEA0000000000203ALL);
    MEMORY[0x1D38B2610](v47, v9);
    MEMORY[0x1D38B2610](0xD000000000000015, 0x80000001D30EA670);
    if (v56)
    {
      v26 = 1702195828;
    }

    else
    {
      v26 = 0x65736C6166;
    }

    if (v56)
    {
      v27 = 0xE400000000000000;
    }

    else
    {
      v27 = 0xE500000000000000;
    }
  }

  else
  {
    v21 = v0[12];
    if (v11)
    {
      v50 = v0[14];
      v52 = v0[15];
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0xD000000000000017, 0x80000001D30EA610);
      MEMORY[0x1D38B2610](v3, v2);
      MEMORY[0x1D38B2610](0xD000000000000013, 0x80000001D30EA7A0);
      MEMORY[0x1D38B2610](v13, v5);
      MEMORY[0x1D38B2610](0xD000000000000010, 0x80000001D30EA630);
      MEMORY[0x1D38B2610](v4, v7);
      MEMORY[0x1D38B2610](0xD000000000000014, 0x80000001D30EA650);
      v22 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v22);

      MEMORY[0x1D38B2610](0x6F72672070706120, 0xEF203A4449207075);
      MEMORY[0x1D38B2610](v54, v55);
      MEMORY[0x1D38B2610](0xD000000000000015, 0x80000001D30EA670);
      if (v56)
      {
        v15 = 1702195828;
      }

      else
      {
        v15 = 0x65736C6166;
      }

      if (v56)
      {
        v16 = 0xE400000000000000;
      }

      else
      {
        v16 = 0xE500000000000000;
      }

      goto LABEL_25;
    }

    sub_1D30E948C();
    MEMORY[0x1D38B2610](0xD000000000000017, 0x80000001D30EA610);
    MEMORY[0x1D38B2610](v3, v2);
    MEMORY[0x1D38B2610](0xD000000000000013, 0x80000001D30EA7A0);
    MEMORY[0x1D38B2610](v13, v5);
    MEMORY[0x1D38B2610](0xD000000000000010, 0x80000001D30EA630);
    MEMORY[0x1D38B2610](v4, v7);
    MEMORY[0x1D38B2610](0xD000000000000014, 0x80000001D30EA650);
    v35 = sub_1D30E977C();
    MEMORY[0x1D38B2610](v35);

    MEMORY[0x1D38B2610](0x6F72672070706120, 0xEF203A4449207075);
    MEMORY[0x1D38B2610](v54, v55);
    MEMORY[0x1D38B2610](0xD000000000000015, 0x80000001D30EA670);
    if (v56)
    {
      v26 = 1702195828;
    }

    else
    {
      v26 = 0x65736C6166;
    }

    if (v56)
    {
      v27 = 0xE400000000000000;
    }

    else
    {
      v27 = 0xE500000000000000;
    }
  }

  MEMORY[0x1D38B2610](v26, v27);

  MEMORY[0x1D38B2610](0xD000000000000013, 0x80000001D30EA690);
  type metadata accessor for MIBetaTesterType(0);
  sub_1D30E955C();
  MEMORY[0x1D38B2610](0xD00000000000001DLL, 0x80000001D30EA6B0);
  if (v57)
  {
    v36 = 1702195828;
  }

  else
  {
    v36 = 0x65736C6166;
  }

  if (v57)
  {
    v37 = 0xE400000000000000;
  }

  else
  {
    v37 = 0xE500000000000000;
  }

  MEMORY[0x1D38B2610](v36, v37);

LABEL_72:
  MEMORY[0x1D38B2610](0xD000000000000017, 0x80000001D30EA6D0);
  if (v58 > 2)
  {
    switch(v58)
    {
      case 3:
        v38 = 0x6976655220707041;
        v39 = 0xEA00000000007765;
        goto LABEL_85;
      case 4:
        v39 = 0x80000001D30EA750;
        v38 = 0xD000000000000012;
        goto LABEL_85;
      case 5:
        v39 = 0x80000001D30EA730;
        v38 = 0xD000000000000014;
        goto LABEL_85;
    }
  }

  else
  {
    switch(v58)
    {
      case 0:
        v39 = 0xE900000000000065;
        v38 = 0x726F745320707041;
        goto LABEL_85;
      case 1:
        v38 = 0x67696C4674736554;
        v39 = 0xEA00000000007468;
LABEL_85:
        MEMORY[0x1D38B2610](v38, v39);
LABEL_114:

        MEMORY[0x1D38B2610](62, 0xE100000000000000);
        return 0;
      case 2:
        v38 = 0x6143206C61636F4CLL;
        v39 = 0xEB00000000656863;
        goto LABEL_85;
    }
  }

LABEL_115:
  result = sub_1D30E957C();
  __break(1u);
  return result;
}

uint64_t AppInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749300, &unk_1D30EF100);
  v5 = *(v78 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v8 = &v31 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2FE2E38();
  sub_1D30E990C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v45 = a2;
  v46 = v5;
  LOBYTE(v56) = 0;
  *&v44 = sub_1D30E963C();
  *(&v44 + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749310, &unk_1D30EF350);
  LOBYTE(v47) = 1;
  v11 = sub_1D2FE2EF4(&qword_1EC749318);
  sub_1D30E967C();
  v41 = v11;
  v43 = *(&v56 + 1);
  v12 = v56;
  LOBYTE(v56) = 2;
  v39 = sub_1D30E963C();
  v40 = v12;
  v42 = v13;
  LOBYTE(v56) = 3;
  v38 = sub_1D30E969C();
  LOBYTE(v56) = 4;
  v36 = sub_1D30E963C();
  v37 = v14;
  LOBYTE(v47) = 5;
  sub_1D30E967C();
  v15 = v56;
  v34 = 0;
  v35 = *(&v56 + 1);
  LOBYTE(v56) = 6;
  v16 = sub_1D30E964C();
  v33 = v15;
  v32 = v16;
  LOBYTE(v56) = 7;
  v17 = sub_1D30E966C();
  LOBYTE(v56) = 8;
  v18 = sub_1D30E964C();
  LOBYTE(v47) = 9;
  sub_1D30E967C();
  v41 = *(&v56 + 1);
  v31 = v56;
  type metadata accessor for ManifestDataSource(0);
  v74 = 10;
  sub_1D2FE2F60(&qword_1EC749320);
  sub_1D30E967C();
  v32 &= 1u;
  LOBYTE(v12) = v32;
  v19 = v18 & 1;
  LODWORD(v34) = v18 & 1;
  (*(v46 + 8))(v8, v78);
  v20 = v75;
  v47 = v44;
  v21 = v42;
  *&v48 = v40;
  *(&v48 + 1) = v43;
  *&v49 = v39;
  *(&v49 + 1) = v42;
  *&v50 = v38;
  *(&v50 + 1) = v36;
  *&v51 = v37;
  *(&v51 + 1) = v33;
  *&v52 = v35;
  BYTE8(v52) = v12;
  HIDWORD(v52) = *(v77 + 3);
  *(&v52 + 9) = v77[0];
  *&v53 = v17;
  BYTE8(v53) = v19;
  HIDWORD(v53) = *&v76[3];
  *(&v53 + 9) = *v76;
  v22 = v41;
  *&v54 = v31;
  *(&v54 + 1) = v41;
  v55 = v75;
  v23 = v53;
  v24 = v54;
  v25 = v45;
  *(v45 + 128) = v75;
  v25[6] = v23;
  v25[7] = v24;
  v26 = v47;
  v27 = v48;
  v28 = v52;
  v25[4] = v51;
  v25[5] = v28;
  v29 = v50;
  v25[2] = v49;
  v25[3] = v29;
  *v25 = v26;
  v25[1] = v27;
  sub_1D2FE2E8C(&v47, &v56);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v56 = v44;
  v57 = v40;
  v58 = v43;
  v59 = v39;
  v60 = v21;
  v61 = v38;
  v62 = v36;
  v63 = v37;
  v64 = v33;
  v65 = v35;
  v66 = v32;
  *v67 = v77[0];
  *&v67[3] = *(v77 + 3);
  v68 = v17;
  v69 = v34;
  *&v70[3] = *&v76[3];
  *v70 = *v76;
  v71 = v31;
  v72 = v22;
  v73 = v20;
  return sub_1D2FE2EC4(&v56);
}

uint64_t AppInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749328, &qword_1D30EF110);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v7 = &v20 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v33 = v1[3];
  v34 = v10;
  v11 = v1[4];
  v31 = v1[5];
  v32 = v11;
  v12 = v1[6];
  v13 = v1[7];
  v14 = v1[9];
  v29 = v1[8];
  v30 = v12;
  v26 = v14;
  v27 = v1[10];
  v28 = v13;
  v38 = *(v1 + 88);
  v25 = v1[12];
  v24 = *(v1 + 104);
  v15 = v1[15];
  v22 = v1[14];
  v23 = v15;
  v21 = v1[16];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2FE2E38();
  sub_1D30E992C();
  LOBYTE(v36) = 0;
  v17 = v35;
  sub_1D30E970C();
  if (!v17)
  {
    v36 = v34;
    v37 = v33;
    v39 = 1;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749310, &unk_1D30EF350);
    sub_1D2FE2EF4(&qword_1EC749330);
    sub_1D30E974C();
    v35 = v18;
    LOBYTE(v36) = 2;
    sub_1D30E970C();
    LOBYTE(v36) = 3;
    sub_1D30E975C();
    LOBYTE(v36) = 4;
    sub_1D30E970C();
    v36 = v26;
    v37 = v27;
    v39 = 5;
    sub_1D30E974C();
    LOBYTE(v36) = 6;
    sub_1D30E971C();
    LOBYTE(v36) = 7;
    sub_1D30E973C();
    LOBYTE(v36) = 8;
    sub_1D30E971C();
    v36 = v22;
    v37 = v23;
    v39 = 9;
    sub_1D30E974C();
    v36 = v21;
    v39 = 10;
    type metadata accessor for ManifestDataSource(0);
    sub_1D2FE2F60(&qword_1EC749338);
    sub_1D30E974C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D2FE2E38()
{
  result = qword_1EC749308;
  if (!qword_1EC749308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749308);
  }

  return result;
}

uint64_t sub_1D2FE2EF4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749310, &unk_1D30EF350);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D2FE2F60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ManifestDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1D2FE2FD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1D2FE3020(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D2FE31E4()
{
  result = qword_1EC749340;
  if (!qword_1EC749340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749340);
  }

  return result;
}

unint64_t sub_1D2FE323C()
{
  result = qword_1EC749348;
  if (!qword_1EC749348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749348);
  }

  return result;
}

unint64_t sub_1D2FE3294()
{
  result = qword_1EC749350;
  if (!qword_1EC749350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749350);
  }

  return result;
}

uint64_t sub_1D2FE32E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7542746E65726170 && a2 == 0xEE004449656C646ELL || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C646E7542707061 && a2 == 0xEB00000000444965 || (sub_1D30E97CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65726F7453707061 && a2 == 0xEE0044496D657449 || (sub_1D30E97CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x70756F7247707061 && a2 == 0xEA00000000004449 || (sub_1D30E97CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x44496D616574 && a2 == 0xE600000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D30EA7C0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7473655461746562 && a2 == 0xEE00657079547265 || (sub_1D30E97CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D30EA7E0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001D30EA800 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D30EA820 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1D30E97CC();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t type metadata accessor for HelperError()
{
  result = qword_1EE313E30;
  if (!qword_1EE313E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2FE3730()
{
  sub_1D30E8D9C();
  if (v0 <= 0x3F)
  {
    sub_1D2FE38C0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Helper.Reply(319);
      if (v2 <= 0x3F)
      {
        sub_1D2FE38F0();
        if (v3 <= 0x3F)
        {
          sub_1D30E8F6C();
          if (v4 <= 0x3F)
          {
            sub_1D2FE3920();
            if (v5 <= 0x3F)
            {
              sub_1D2FE3A3C(319, &qword_1EE313040, sub_1D2FE3998);
              if (v6 <= 0x3F)
              {
                type metadata accessor for MIBetaTesterType(319);
                if (v7 <= 0x3F)
                {
                  sub_1D2FE3A3C(319, &qword_1EE3140A8, sub_1D2FE39EC);
                  if (v8 <= 0x3F)
                  {
                    sub_1D2FE3A3C(319, &qword_1EE313098, MEMORY[0x1E69E83A8]);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D2FE38C0()
{
  result = qword_1EE313080;
  if (!qword_1EE313080)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE313080);
  }

  return result;
}

uint64_t sub_1D2FE38F0()
{
  result = qword_1EE313088;
  if (!qword_1EE313088)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE313088);
  }

  return result;
}

void sub_1D2FE3920()
{
  if (!qword_1EE313070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749310, &unk_1D30EF350);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE313070);
    }
  }
}

unint64_t sub_1D2FE3998()
{
  result = qword_1EE313038;
  if (!qword_1EE313038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC749360, qword_1D30EF360);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EE313038);
  }

  return result;
}

void sub_1D2FE39EC()
{
  if (!qword_1EE3140A0)
  {
    v0 = sub_1D30E938C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE3140A0);
    }
  }
}

void sub_1D2FE3A3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D2FE3AD0()
{
  v1 = sub_1D30E8F6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Helper.Reply(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D30E8D9C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HelperError();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D2FE4818(v0, v18);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v47 = *v18;
      v48 = v18[1];
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x100000000000002DLL, 0x80000001D30EAD20);
      MEMORY[0x1D38B2610](v47, v48);
      goto LABEL_37;
    case 2u:
      v38 = *v18;
      v39 = v18[1];
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x1000000000000031, 0x80000001D30EACA0);
      MEMORY[0x1D38B2610](v38, v39);

      v40 = "e with the ID “";
      v41 = 0x100000000000003DLL;
      goto LABEL_27;
    case 3u:
      v44 = *v18;
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x1000000000000038, 0x80000001D30EAC60);
      v71 = v44;
      v24 = sub_1D30E977C();
      goto LABEL_36;
    case 4u:
      sub_1D2FE48C4(v18, v9);
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_1D30E948C();

      v65 = 0x1000000000000028;
      v66 = 0x80000001D30EAC30;
      v28 = Helper.Reply.description.getter();
      MEMORY[0x1D38B2610](v28);

      MEMORY[0x1D38B2610](782074082, 0xA400000000000000);
      v29 = v65;
      sub_1D2FE4928(v9);
      return v29;
    case 5u:
      (*(v11 + 32))(v14, v18, v10);
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_1D30E948C();

      v65 = 0x100000000000001DLL;
      v66 = 0x80000001D30EAC10;
      goto LABEL_24;
    case 6u:
      v54 = *v18;
      v55 = v18[1];
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x1000000000000024, 0x80000001D30EAB40);
      MEMORY[0x1D38B2610](v54, v55);

      v40 = "th the bundle ID “";
      v41 = 0x100000000000001ELL;
LABEL_27:
      v43 = v40 | 0x8000000000000000;
      goto LABEL_38;
    case 7u:
      v45 = *v18;
      v46 = v18[1];
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_1D30E948C();

      v65 = 0x1000000000000020;
      v66 = 0x80000001D30EAAE0;
      MEMORY[0x1D38B2610](v45, v46);
      goto LABEL_17;
    case 8u:
      v57 = *v18;
      v56 = v18[1];
      v59 = v18[2];
      v58 = v18[3];
      v61 = v18[4];
      v60 = v18[5];
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_1D30E948C();

      v71 = 0x1000000000000020;
      v72 = 0x80000001D30EAAB0;
      v65 = v57;
      v66 = v56;
      v67 = v59;
      v68 = v58;
      v69 = v61;
      v70 = v60;
      v62 = AssetPackRecord.GlobalID.description.getter();
      v64 = v63;

      MEMORY[0x1D38B2610](v62, v64);

      MEMORY[0x1D38B2610](0x20736177209D80E2, 0xAE002E646E756F66);
      return v71;
    case 9u:
      v36 = *v18;
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x100000000000002ALL, 0x80000001D30EAA80);
      v71 = v36;
      v37 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v37);
LABEL_17:

      v41 = 0x20736177209D80E2;
      v43 = 0xAE002E646E756F66;
      goto LABEL_38;
    case 0xAu:
      (*(v2 + 32))(v5, v18, v1);
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x1000000000000024, 0x80000001D30EAA50);
      sub_1D30E955C();
      MEMORY[0x1D38B2610](0x20736177209D80E2, 0xAE002E646E756F66);
      v29 = v65;
      (*(v2 + 8))(v5, v1);
      return v29;
    case 0xBu:
      (*(v11 + 32))(v14, v18, v10);
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_1D30E948C();

      v65 = 0x1000000000000011;
      v66 = 0x80000001D30EA860;
      sub_1D2FE487C(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v25 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v25);

      v20 = "” is unexpectedly relative.";
      goto LABEL_7;
    case 0xCu:
      v31 = v18[1];
      v30 = v18[2];
      v32 = v18[3];
      if (v31)
      {
        v33 = *v18;
        v65 = 0;
        v66 = 0xE000000000000000;
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0x1000000000000017, 0x80000001D30EA9E0);
        MEMORY[0x1D38B2610](v33, v31);

        v34 = "The actual team ID, “";
        v35 = 0x100000000000002ELL;
      }

      else
      {
        v65 = 0;
        v66 = 0xE000000000000000;
        sub_1D30E948C();
        v34 = " couldn’t be created at “";
        v35 = 0x1000000000000052;
      }

      MEMORY[0x1D38B2610](v35, v34 | 0x8000000000000000);
      v24 = v30;
      goto LABEL_36;
    case 0xDu:
      (*(v11 + 32))(v14, v18, v10);
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x100000000000002DLL, 0x80000001D30EA950);
LABEL_24:
      sub_1D2FE487C(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v52 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v52);

      v27 = 782074082;
      v50 = 0xA400000000000000;
      goto LABEL_25;
    case 0xEu:
      v23 = *v18;
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_1D30E948C();

      v65 = 0x1000000000000024;
      v66 = 0x80000001D30EA920;
      v24 = sub_1D30E995C();
LABEL_36:
      MEMORY[0x1D38B2610](v24);
LABEL_37:

      v41 = 782074082;
      v43 = 0xA400000000000000;
      goto LABEL_38;
    case 0xFu:
      v42 = *v18;
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x1000000000000018, 0x80000001D30EA900);
      v71 = v42;
      type metadata accessor for MIBetaTesterType(0);
      sub_1D30E955C();
      goto LABEL_14;
    case 0x10u:
      v21 = v18[1];
      if (v21)
      {
        v22 = *v18;
        v65 = 0;
        v66 = 0xE000000000000000;
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0x100000000000002FLL, 0x80000001D30EA8D0);
        MEMORY[0x1D38B2610](v22, v21);

LABEL_14:
        v41 = 0x75207369209D80E2;
        v43 = 0xAF2E6E776F6E6B6ELL;
LABEL_38:
        MEMORY[0x1D38B2610](v41, v43);
        result = v65;
      }

      else
      {
        result = 0xD000000000000018;
      }

      break;
    case 0x11u:
      (*(v11 + 32))(v14, v18, v10);
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x1000000000000011, 0x80000001D30EA860);
      sub_1D2FE487C(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v49 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v49);

      v26 = "The file path “";
      v27 = 0x1000000000000027;
      goto LABEL_20;
    case 0x12u:
      return 0x1000000000000053;
    case 0x13u:
      return 0xD000000000000017;
    case 0x14u:
      return 0x1000000000000028;
    default:
      (*(v11 + 32))(v14, v18, v10);
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_1D30E948C();

      v65 = 0x1000000000000011;
      v66 = 0x80000001D30EA860;
      sub_1D2FE487C(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v19 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v19);

      v20 = "” is unexpectedly absolute.";
LABEL_7:
      v26 = v20 - 32;
      v27 = 0x100000000000001DLL;
LABEL_20:
      v50 = v26 | 0x8000000000000000;
LABEL_25:
      MEMORY[0x1D38B2610](v27, v50);
      v53 = v65;
      (*(v11 + 8))(v14, v10);
      result = v53;
      break;
  }

  return result;
}

uint64_t sub_1D2FE478C()
{
  sub_1D2FE487C(&qword_1EE313E48, type metadata accessor for HelperError);

  return sub_1D30E984C();
}

uint64_t sub_1D2FE4818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HelperError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2FE487C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2FE48C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Helper.Reply(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2FE4928(uint64_t a1)
{
  v2 = type metadata accessor for Helper.Reply(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D2FE49A0()
{
  v0 = sub_1D30E8B3C();
  __swift_allocate_value_buffer(v0, qword_1EC749380);
  __swift_project_value_buffer(v0, qword_1EC749380);
  return sub_1D30E8B2C();
}

uint64_t XPCPeerRequirementValidator.init(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D30E8C9C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1D2FE4A8C(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  *token.val = sub_1D30E8C7C();
  token.val[2] = v2;
  token.val[3] = v3;
  token.val[4] = v4;
  token.val[5] = v5;
  token.val[6] = v6;
  token.val[7] = v7;
  v8 = SecTaskCreateWithAuditToken(0, &token);
  if (!v8)
  {
    if (qword_1EC748FE0 != -1)
    {
      swift_once();
    }

    v17 = sub_1D30E8B3C();
    __swift_project_value_buffer(v17, qword_1EC749380);
    v18 = sub_1D30E92AC();
    v19 = sub_1D30E8B1C();
    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D2FD9000, v19, v18, "A security task couldn’t be created.", v20, 2u);
      MEMORY[0x1D38B3760](v20, -1, -1);
    }

    goto LABEL_42;
  }

  v9 = v8;
  error = 0;
  v10 = SecTaskCopySigningIdentifier(v8, &error);
  if (!v10)
  {
LABEL_34:
    v13 = 0;
    v12 = 0;
    if (!error)
    {
      goto LABEL_6;
    }

LABEL_35:

    v40 = error;
    if (qword_1EC748FE0 != -1)
    {
      swift_once();
    }

    v41 = sub_1D30E8B3C();
    __swift_project_value_buffer(v41, qword_1EC749380);
    v42 = sub_1D30E929C();
    v43 = v40;
    v44 = sub_1D30E8B1C();

    if (os_log_type_enabled(v44, v42))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138543362;
      type metadata accessor for CFError(0);
      sub_1D2FE58E8();
      swift_allocError();
      *v47 = v43;
      v48 = v43;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 4) = v49;
      *v46 = v49;
      _os_log_impl(&dword_1D2FD9000, v44, v42, "The signing ID couldn’t be copied: %{public}@", v45, 0xCu);
      sub_1D2FE5940(v46);
      MEMORY[0x1D38B3760](v46, -1, -1);
      MEMORY[0x1D38B3760](v45, -1, -1);
      v43 = v44;
      v44 = v9;
      v9 = v48;
    }

    goto LABEL_40;
  }

  v11 = v10;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_34;
  }

  *token.val = 0;
  *&token.val[2] = 0;
  sub_1D30E907C();

  v12 = *&token.val[2];
  if (!*&token.val[2])
  {
    goto LABEL_34;
  }

  v13 = *token.val;
  if (error)
  {
    goto LABEL_35;
  }

LABEL_6:
  if (v12)
  {
    v14 = 1;
    *token.val = 1;
    v15 = *(a1 + 16);
    if (v15)
    {
      v56 = v9;
      v16 = (a1 + 40);
      do
      {
        v22 = *(v16 - 1);
        v21 = *v16;
        v23 = v13 == v22 && v12 == v21;
        if (v23 || (v24 = *(v16 - 1), v25 = *v16, (sub_1D30E97CC() & 1) != 0))
        {
          v55 = *token.val;

          sub_1D2FE59A8(v55);

          goto LABEL_49;
        }

        v26 = sub_1D2FE511C(&token);
        if (v26)
        {
          v27 = v26;
          v28 = [v26 containingBundleRecord];
          if (v28 && (v29 = v28, v30 = [v28 bundleIdentifier], v29, v30))
          {
            v31 = sub_1D30E908C();
            v33 = v32;

            if (v31 == v22 && v33 == v21)
            {

LABEL_53:
              sub_1D2FE59A8(*token.val);
LABEL_49:

              result = 1;
              goto LABEL_43;
            }

            v34 = sub_1D30E97CC();

            if (v34)
            {
              goto LABEL_53;
            }
          }

          else
          {

            if (qword_1EC748FE0 != -1)
            {
              swift_once();
            }

            v35 = sub_1D30E8B3C();
            __swift_project_value_buffer(v35, qword_1EC749380);
            v36 = sub_1D30E92AC();

            v37 = sub_1D30E8B1C();

            if (os_log_type_enabled(v37, v36))
            {
              v38 = swift_slowAlloc();
              v39 = swift_slowAlloc();
              v57 = v39;
              *v38 = 136446210;
              *(v38 + 4) = sub_1D2FFEA04(v13, v12, &v57);
              _os_log_impl(&dword_1D2FD9000, v37, v36, "The app extension with the bundle ID “%{public}s” lacks a containing bundle.", v38, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v39);
              MEMORY[0x1D38B3760](v39, -1, -1);
              MEMORY[0x1D38B3760](v38, -1, -1);
            }
          }
        }

        else
        {
        }

        v16 += 2;
        --v15;
      }

      while (v15);
      v14 = *token.val;
      v9 = v56;
    }

    sub_1D2FE59A8(v14);

    goto LABEL_41;
  }

  if (qword_1EC748FE0 != -1)
  {
    swift_once();
  }

  v52 = sub_1D30E8B3C();
  __swift_project_value_buffer(v52, qword_1EC749380);
  v53 = sub_1D30E92AC();
  v44 = sub_1D30E8B1C();
  if (os_log_type_enabled(v44, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_1D2FD9000, v44, v53, "The peer lacks a signing ID.", v54, 2u);
    MEMORY[0x1D38B3760](v54, -1, -1);
  }

LABEL_40:

LABEL_41:
LABEL_42:
  result = 0;
LABEL_43:
  v51 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1D2FE511C(void **a1)
{
  v1 = *a1;
  v2 = *a1;
  if (*a1 == 1)
  {
    v2 = sub_1D2FE51A8();
    swift_beginAccess();
    v4 = *a1;
    *a1 = v2;
    v5 = v2;
    sub_1D2FE59A8(v4);
  }

  sub_1D2FE59B8(v1);
  return v2;
}

id sub_1D2FE51A8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69635D0]);

  return sub_1D2FE581C();
}

uint64_t sub_1D2FE53A0(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  *token.val = sub_1D30E8C7C();
  token.val[2] = v4;
  token.val[3] = v5;
  token.val[4] = v6;
  token.val[5] = v7;
  token.val[6] = v8;
  token.val[7] = v9;
  v10 = SecTaskCreateWithAuditToken(0, &token);
  if (v10)
  {
    v11 = v10;
    v12 = SecTaskCopyTeamIdentifier();
    if (v12)
    {
      v13 = v12;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        *token.val = 0;
        *&token.val[2] = 0;
        sub_1D30E907C();

        v12 = *&token.val[2];
        if (*&token.val[2])
        {
          v14 = *token.val;
          goto LABEL_11;
        }
      }

      else
      {
      }

      v14 = 0;
      v12 = 0;
    }

    else
    {
      v14 = 0;
    }

LABEL_11:
    if (v12)
    {
      if (v14 == a1 && v12 == a2)
      {
        v19 = 1;
      }

      else
      {
        v19 = sub_1D30E97CC();
      }
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_18;
  }

  if (qword_1EC748FE0 != -1)
  {
    swift_once();
  }

  v15 = sub_1D30E8B3C();
  __swift_project_value_buffer(v15, qword_1EC749380);
  v16 = sub_1D30E92AC();
  v17 = sub_1D30E8B1C();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1D2FD9000, v17, v16, "A security task couldn’t be created.", v18, 2u);
    MEMORY[0x1D38B3760](v18, -1, -1);
  }

  v19 = 0;
LABEL_18:
  v20 = *MEMORY[0x1E69E9840];
  return v19 & 1;
}

uint64_t type metadata accessor for XPCPeerRequirementValidator()
{
  result = qword_1EE313128;
  if (!qword_1EE313128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2FE57B0()
{
  result = sub_1D30E8C9C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1D2FE581C()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1D30E906C();

  v7[0] = 0;
  v2 = [v0 initWithBundleIdentifier:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_1D30E87DC();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

unint64_t sub_1D2FE58E8()
{
  result = qword_1EC749398;
  if (!qword_1EC749398)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749398);
  }

  return result;
}

uint64_t sub_1D2FE5940(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493A0, &qword_1D30EF480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D2FE59A8(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_1D2FE59B8(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1D2FE59C8()
{
  sub_1D30E8B8C();
  result = sub_1D30E8B4C();
  qword_1EC7493A8 = result;
  byte_1EC7493B0 = 0;
  return result;
}

uint64_t sub_1D2FE5A24()
{
  v0 = sub_1D30E8B3C();
  __swift_allocate_value_buffer(v0, qword_1EE3134F8);
  __swift_project_value_buffer(v0, qword_1EE3134F8);
  return sub_1D30E8B2C();
}

void *sub_1D2FE5AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v12 = *v4;
  if (qword_1EE3134F0 != -1)
  {
    swift_once();
  }

  v13 = sub_1D30E8B3C();
  __swift_project_value_buffer(v13, qword_1EE3134F8);
  v14 = sub_1D30E928C();

  v15 = sub_1D30E8B1C();

  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v16 = 136446722;
    type metadata accessor for ContainerManager();

    v17 = sub_1D30E909C();
    v36 = v14;
    v19 = sub_1D2FFEA04(v17, v18, &v38);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2082;
    sub_1D30E8EAC();

    v20 = sub_1D30E909C();
    v22 = sub_1D2FFEA04(v20, v21, &v38);

    *(v16 + 14) = v22;
    *(v16 + 22) = 2082;
    v23 = swift_allocObject();
    *(v23 + 16) = a3;
    *(v23 + 24) = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749468, &qword_1D30EF5D8);
    v24 = sub_1D30E909C();
    v26 = sub_1D2FFEA04(v24, v25, &v38);

    *(v16 + 24) = v26;
    _os_log_impl(&dword_1D2FD9000, v15, v36, "Init container manager: %{public}s model container: %{public}s TestFlight manifest request: %{public}s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v37, -1, -1);
    v27 = v16;
    v6 = v5;
    MEMORY[0x1D38B3760](v27, -1, -1);
  }

  v7[2] = a1;
  v7[3] = a2;
  v28 = type metadata accessor for StorefrontMap();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  swift_retain_n();

  v31 = v6;
  v32 = sub_1D303DF3C(a1);

  if (v31)
  {

    v33 = v7[2];

    v34 = v7[3];

    swift_deallocPartialClassInstance();
  }

  else
  {
    v7[4] = v32;
    v7[5] = a3;
    v7[6] = a4;
  }

  return v7;
}

void *sub_1D2FE5E08()
{
  v1 = v0;
  if (qword_1EE3134F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE3134F8);
  v3 = sub_1D30E928C();
  v4 = sub_1D30E8B1C();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D2FD9000, v4, v3, "Deinit", v5, 2u);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v6 = v1[2];

  v7 = v1[3];

  v8 = v1[4];

  v9 = v1[6];

  return v1;
}

uint64_t sub_1D2FE5F04()
{
  sub_1D2FE5E08();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1D2FE5F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 112) = a4;
  *(v6 + 120) = v5;
  *(v6 + 385) = a5;
  *(v6 + 96) = a2;
  *(v6 + 104) = a3;
  *(v6 + 88) = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493B8, &qword_1D30EF4F8) - 8) + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  v8 = sub_1D30E866C();
  *(v6 + 136) = v8;
  v9 = *(v8 - 8);
  *(v6 + 144) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500) - 8) + 64) + 15;
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = swift_task_alloc();
  v12 = sub_1D30E88CC();
  *(v6 + 192) = v12;
  v13 = *(v12 - 8);
  *(v6 + 200) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2FE6130, 0, 0);
}

uint64_t sub_1D2FE6130()
{
  v178 = v0;
  v1 = *(v0 + 112);
  v2 = &qword_1EE313000;
  if (v1)
  {
    if (qword_1EE3134F0 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 96);
    v4 = sub_1D30E8B3C();
    __swift_project_value_buffer(v4, qword_1EE3134F8);
    v5 = sub_1D30E928C();

    v6 = sub_1D30E8B1C();

    if (!os_log_type_enabled(v6, v5))
    {
      goto LABEL_11;
    }

    v7 = *(v0 + 385);
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v10 = *(v0 + 88);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v177[0] = v12;
    *v11 = 136446722;
    *(v11 + 4) = sub_1D2FFEA04(v10, v9, v177);
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_1D2FFEA04(v8, v1, v177);
    *(v11 + 22) = 1024;
    *(v11 + 24) = v7;
    v2 = &qword_1EE313000;
    _os_log_impl(&dword_1D2FD9000, v6, v5, "Manifest data for app with bundle ID: %{public}s team ID: %{public}s bypass local cache: %{BOOL}d", v11, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v12, -1, -1);
    v13 = v11;
  }

  else
  {
    if (qword_1EE3134F0 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 96);
    v15 = sub_1D30E8B3C();
    __swift_project_value_buffer(v15, qword_1EE3134F8);
    v16 = sub_1D30E928C();

    v6 = sub_1D30E8B1C();

    if (!os_log_type_enabled(v6, v16))
    {
      goto LABEL_11;
    }

    v17 = *(v0 + 385);
    v19 = *(v0 + 88);
    v18 = *(v0 + 96);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v177[0] = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_1D2FFEA04(v19, v18, v177);
    *(v20 + 12) = 1024;
    *(v20 + 14) = v17;
    _os_log_impl(&dword_1D2FD9000, v6, v16, "Manifest data for app with bundle ID: %{public}s bypass local cache: %{BOOL}d", v20, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1D38B3760](v21, -1, -1);
    v13 = v20;
  }

  MEMORY[0x1D38B3760](v13, -1, -1);
LABEL_11:

  v22 = *(v0 + 88);
  v23 = *(v0 + 96);
  objc_allocWithZone(MEMORY[0x1E69635F8]);

  v24 = sub_1D3028864(v22, v23, 1);
  *(v0 + 232) = v24;
  *(v0 + 240) = 0;
  v25 = v24;
  v26 = [v25 bundleIdentifier];
  if (!v26)
  {
    goto LABEL_21;
  }

  v28 = *(v0 + 88);
  v27 = *(v0 + 96);
  v29 = v26;
  v30 = sub_1D30E908C();
  v32 = v31;

  if (v30 == v28 && v32 == v27)
  {

    goto LABEL_16;
  }

  v33 = *(v0 + 88);
  v34 = *(v0 + 96);
  v35 = sub_1D30E97CC();

  if ((v35 & 1) == 0)
  {
LABEL_21:
    type metadata accessor for ManifestManagerError();
    sub_1D2FF1A68(&qword_1EC7493C8, type metadata accessor for ManifestManagerError);
    swift_allocError();
    v45 = v44;
    v46 = [v25 bundleIdentifier];

    if (v46)
    {
      v47 = sub_1D30E908C();
      v49 = v48;
    }

    else
    {
      v47 = 0;
      v49 = 0;
    }

    v50 = *(v0 + 88);
    v51 = *(v0 + 96);
    *v45 = v47;
    v45[1] = v49;
    v45[2] = v50;
    v45[3] = v51;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_25;
  }

LABEL_16:

  if (v1)
  {
    v36 = *(v0 + 112);

    v37 = [v25 teamIdentifier];
    if (v37)
    {
      v39 = *(v0 + 104);
      v38 = *(v0 + 112);
      v40 = v37;
      v41 = sub_1D30E908C();
      v43 = v42;

      if (v41 == v39 && v38 == v43)
      {

LABEL_34:

        goto LABEL_35;
      }

      v66 = *(v0 + 104);
      v67 = sub_1D30E97CC();

      if (v67)
      {
        goto LABEL_34;
      }
    }

    if ((sub_1D30D94B0() & 1) == 0)
    {
      type metadata accessor for HelperError();
      sub_1D2FF1A68(&qword_1EE313E48, type metadata accessor for HelperError);
      swift_allocError();
      v91 = v90;
      v92 = [v25 teamIdentifier];
      if (v92)
      {
        v93 = v92;
        v94 = sub_1D30E908C();
        v96 = v95;
      }

      else
      {
        v94 = 0;
        v96 = 0;
      }

      v124 = *(v0 + 104);
      *v91 = v94;
      v91[1] = v96;
      v91[2] = v124;
      v91[3] = v36;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  if ((os_variant_allows_internal_security_policies() & 1) == 0)
  {
    v64 = *(v0 + 88);
    v63 = *(v0 + 96);
    type metadata accessor for ManifestManagerError();
    sub_1D2FF1A68(&qword_1EC7493C8, type metadata accessor for ManifestManagerError);
    swift_allocError();
    *v65 = v64;
    v65[1] = v63;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_25:

LABEL_26:

LABEL_27:
    v53 = *(v0 + 216);
    v52 = *(v0 + 224);
    v54 = *(v0 + 208);
    v56 = *(v0 + 176);
    v55 = *(v0 + 184);
    v58 = *(v0 + 160);
    v57 = *(v0 + 168);
    v59 = *(v0 + 152);
    v60 = *(v0 + 128);

    v61 = *(v0 + 8);

    return v61();
  }

LABEL_35:
  if (os_variant_has_internal_content() & 1) == 0 && (![v25 isProfileValidated] || (objc_msgSend(v25, sel_isBeta)))
  {
LABEL_59:
    sub_1D30E91FC();
    *(v0 + 288) = sub_1D30E91EC();
    v103 = sub_1D30E91AC();

    return MEMORY[0x1EEE6DFA0](sub_1D2FE7904, v103, v102);
  }

  has_internal_content = os_variant_has_internal_content();
  v69 = v2[158];
  if (has_internal_content)
  {
    if (v69 != -1)
    {
      swift_once();
    }

    v70 = sub_1D30E8B3C();
    __swift_project_value_buffer(v70, qword_1EE3134F8);
    v71 = sub_1D30E927C();
    v72 = sub_1D30E8B1C();
    if (os_log_type_enabled(v72, v71))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_1D2FD9000, v72, v71, "The system has internal content; checking for a URL override…", v73, 2u);
      v74 = v73;
LABEL_48:
      MEMORY[0x1D38B3760](v74, -1, -1);
    }
  }

  else
  {
    if (v69 != -1)
    {
      swift_once();
    }

    v75 = *(v0 + 96);
    v76 = sub_1D30E8B3C();
    __swift_project_value_buffer(v76, qword_1EE3134F8);
    v77 = sub_1D30E927C();

    v72 = sub_1D30E8B1C();

    if (os_log_type_enabled(v72, v77))
    {
      v79 = *(v0 + 88);
      v78 = *(v0 + 96);
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v177[0] = v81;
      *v80 = 136446210;
      *(v80 + 4) = sub_1D2FFEA04(v79, v78, v177);
      _os_log_impl(&dword_1D2FD9000, v72, v77, "The app with the bundle ID “%{public}s” was installed for development; checking for a URL override…", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v81);
      MEMORY[0x1D38B3760](v81, -1, -1);
      v74 = v80;
      goto LABEL_48;
    }
  }

  v82 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v83 = sub_1D30E906C();
  v84 = [v82 initWithSuiteName_];
  *(v0 + 248) = v84;

  if (!v84)
  {
    (*(*(v0 + 200) + 56))(*(v0 + 184), 1, 1, *(v0 + 192));
LABEL_58:
    sub_1D2FF14DC(*(v0 + 184), &qword_1EC7493C0, &qword_1D30EF500);
    goto LABEL_59;
  }

  v85 = v84;
  v86 = sub_1D30E906C();
  v87 = [v85 URLForKey_];

  if (v87)
  {
    v88 = *(v0 + 176);
    sub_1D30E886C();

    v89 = 0;
  }

  else
  {
    v89 = 1;
  }

  v97 = *(v0 + 192);
  v98 = *(v0 + 200);
  v100 = *(v0 + 176);
  v99 = *(v0 + 184);
  (*(v98 + 56))(v100, v89, 1, v97);
  sub_1D2FF03B4(v100, v99);
  v101 = *(v98 + 48);
  if (v101(v99, 1, v97) == 1)
  {

    goto LABEL_58;
  }

  v173 = (*(v0 + 200) + 32);
  v174 = v101;
  v172 = *v173;
  (*v173)(*(v0 + 224), *(v0 + 184), *(v0 + 192));
  if (v2[158] != -1)
  {
    swift_once();
  }

  v104 = sub_1D30E8B3C();
  __swift_project_value_buffer(v104, qword_1EE3134F8);
  v105 = sub_1D30E8B1C();
  v106 = sub_1D30E92BC();
  v176 = v85;
  if (os_log_type_enabled(v105, v106))
  {
    v107 = *(v0 + 224);
    v108 = *(v0 + 192);
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v177[0] = v110;
    *v109 = 136446210;
    swift_beginAccess();
    sub_1D2FF1A68(&qword_1EC7493D8, MEMORY[0x1E6968FB0]);
    v111 = sub_1D30E977C();
    v113 = sub_1D2FFEA04(v111, v112, v177);

    *(v109 + 4) = v113;
    _os_log_impl(&dword_1D2FD9000, v105, v106, "A URL override with the value “%{public}s” is set.", v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v110);
    MEMORY[0x1D38B3760](v110, -1, -1);
    MEMORY[0x1D38B3760](v109, -1, -1);
  }

  v114 = *(v0 + 224);
  swift_beginAccess();
  sub_1D30E887C();
  if (v115)
  {
  }

  else
  {
    v125 = sub_1D30E8B1C();
    v126 = sub_1D30E92BC();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = *(v0 + 224);
      v128 = *(v0 + 192);
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v177[0] = v130;
      *v129 = 136446210;
      sub_1D2FF1A68(&qword_1EC7493D8, MEMORY[0x1E6968FB0]);
      v131 = sub_1D30E977C();
      v133 = sub_1D2FFEA04(v131, v132, v177);

      *(v129 + 4) = v133;
      _os_log_impl(&dword_1D2FD9000, v125, v126, "The development-override URL “%{public}s” lacks a host component; reinterpreting it as a string and constructing a URL explicitly…", v129, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v130);
      MEMORY[0x1D38B3760](v130, -1, -1);
      MEMORY[0x1D38B3760](v129, -1, -1);
    }

    v134 = v176;
    v135 = sub_1D30E906C();
    v136 = [v134 stringForKey_];

    if (!v136)
    {
      v151 = *(v0 + 224);
      v152 = *(v0 + 192);
      v153 = *(v0 + 200);
      type metadata accessor for ManifestManagerError();
      sub_1D2FF1A68(&qword_1EC7493C8, type metadata accessor for ManifestManagerError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v153 + 8))(v151, v152);

      goto LABEL_26;
    }

    v137 = *(v0 + 192);
    v138 = *(v0 + 168);
    v139 = sub_1D30E908C();
    v141 = v140;

    sub_1D30E88AC();
    v142 = v174(v138, 1, v137);
    v143 = *(v0 + 224);
    if (v142 == 1)
    {
      v144 = *(v0 + 192);
      v145 = *(v0 + 200);
      sub_1D2FF14DC(*(v0 + 168), &qword_1EC7493C0, &qword_1D30EF500);
      type metadata accessor for ManifestManagerError();
      sub_1D2FF1A68(&qword_1EC7493C8, type metadata accessor for ManifestManagerError);
      swift_allocError();
      *v146 = v139;
      v146[1] = v141;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v145 + 8))(v143, v144);

      goto LABEL_26;
    }

    v154 = *(v0 + 216);
    v155 = *(v0 + 192);
    v156 = *(v0 + 200);
    v157 = *(v0 + 168);

    v172(v154, v157, v155);
    swift_beginAccess();
    (*(v156 + 40))(v143, v154, v155);
  }

  v116 = *(v0 + 224);
  v117 = *(v0 + 136);
  v118 = *(v0 + 144);
  v119 = *(v0 + 128);
  sub_1D30E860C();
  if ((*(v118 + 48))(v119, 1, v117) == 1)
  {
    v120 = *(v0 + 224);
    v122 = *(v0 + 192);
    v121 = *(v0 + 200);
    sub_1D2FF14DC(*(v0 + 128), &qword_1EC7493B8, &qword_1D30EF4F8);
    type metadata accessor for ManifestManagerError();
    sub_1D2FF1A68(&qword_1EC7493C8, type metadata accessor for ManifestManagerError);
    swift_allocError();
    (*(v121 + 16))(v123, v120, v122);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v121 + 8))(v120, v122);

    goto LABEL_26;
  }

  (*(*(v0 + 144) + 32))(*(v0 + 152), *(v0 + 128), *(v0 + 136));
  MEMORY[0x1D38B1B60](0x736566696E616D2FLL, 0xE900000000000074);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493D0, &qword_1D30EF518);
  v147 = *(sub_1D30E85AC() - 8);
  v148 = *(v147 + 72);
  v149 = (*(v147 + 80) + 32) & ~*(v147 + 80);
  *(swift_allocObject() + 16) = xmmword_1D30EE930;
  v150 = v25;
  sub_1D300AC00(v150);
  v158 = *(v0 + 192);
  v159 = *(v0 + 152);
  v160 = *(v0 + 160);
  sub_1D30E859C();

  sub_1D30E85EC();
  sub_1D30E861C();
  v161 = v174(v160, 1, v158);
  v162 = *(v0 + 192);
  if (v161 == 1)
  {
    v175 = *(v0 + 224);
    v163 = *(v0 + 200);
    v164 = *(v0 + 144);
    v165 = *(v0 + 152);
    v166 = *(v0 + 136);
    sub_1D2FF14DC(*(v0 + 160), &qword_1EC7493C0, &qword_1D30EF500);
    type metadata accessor for ManifestManagerError();
    sub_1D2FF1A68(&qword_1EC7493C8, type metadata accessor for ManifestManagerError);
    swift_allocError();
    (*(v164 + 16))(v167, v165, v166);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v164 + 8))(v165, v166);
    (*(v163 + 8))(v175, v162);
    goto LABEL_27;
  }

  v172(*(v0 + 208), *(v0 + 160), *(v0 + 192));
  v168 = swift_task_alloc();
  *(v0 + 256) = v168;
  *v168 = v0;
  v168[1] = sub_1D2FE7544;
  v169 = *(v0 + 208);
  v170 = *(v0 + 88);
  v171 = *(v0 + 96);

  return sub_1D2FF0B48(v169, v170, v171);
}

uint64_t sub_1D2FE7544(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 256);
  v8 = *v3;
  *(*v3 + 264) = v2;

  if (v2)
  {
    v9 = sub_1D2FE77C8;
  }

  else
  {
    *(v6 + 272) = a2;
    *(v6 + 280) = a1;
    v9 = sub_1D2FE7678;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D2FE7678()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v8 = *(v0 + 136);

  v9 = *(v4 + 8);
  v9(v3, v5);
  (*(v7 + 8))(v6, v8);
  v9(v1, v5);
  v10 = *(v0 + 272);
  v22 = *(v0 + 280);
  v12 = *(v0 + 216);
  v11 = *(v0 + 224);
  v13 = *(v0 + 208);
  v15 = *(v0 + 176);
  v14 = *(v0 + 184);
  v17 = *(v0 + 160);
  v16 = *(v0 + 168);
  v18 = *(v0 + 152);
  v19 = *(v0 + 128);

  v20 = *(v0 + 8);

  return v20(v22, v10, 5);
}

uint64_t sub_1D2FE77C8()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v8 = *(v0 + 136);

  v9 = *(v4 + 8);
  v9(v3, v5);
  (*(v7 + 8))(v6, v8);
  v9(v1, v5);
  v10 = *(v0 + 264);
  v12 = *(v0 + 216);
  v11 = *(v0 + 224);
  v13 = *(v0 + 208);
  v15 = *(v0 + 176);
  v14 = *(v0 + 184);
  v17 = *(v0 + 160);
  v16 = *(v0 + 168);
  v18 = *(v0 + 152);
  v19 = *(v0 + 128);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1D2FE7904()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 240);
  v3 = *(v0 + 120);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);

  sub_1D2FE81A8(v3, v5, v4, (v0 + 384));
  *(v0 + 296) = v2;
  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2FE7AA8, 0, 0);
  }

  else if (*(v0 + 385) != 1 || (*(v0 + 384) & 1) != 0)
  {
    v9 = swift_task_alloc();
    *(v0 + 344) = v9;
    *v9 = v0;
    v9[1] = sub_1D2FE7DB8;
    v10 = *(v0 + 232);
    v11 = *(v0 + 120);

    return sub_1D2FE9884(v10);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 304) = v6;
    *v6 = v0;
    v6[1] = sub_1D2FE7B88;
    v7 = *(v0 + 232);
    v8 = *(v0 + 120);

    return sub_1D2FE88A8(v7);
  }
}

uint64_t sub_1D2FE7AA8()
{
  v1 = *(v0 + 296);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 208);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v9 = *(v0 + 152);
  v10 = *(v0 + 128);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D2FE7B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 304);
  v10 = *v4;
  *(*v4 + 312) = v3;

  if (v3)
  {
    v11 = sub_1D2FE7FE8;
  }

  else
  {
    v8[40] = a3;
    v8[41] = a2;
    v8[42] = a1;
    v11 = sub_1D2FE7CC4;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1D2FE7CC4()
{
  v13 = *(v0 + 328);
  v14 = *(v0 + 336);
  v1 = *(v0 + 320);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 208);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v9 = *(v0 + 152);
  v10 = *(v0 + 128);

  v11 = *(v0 + 8);

  return v11(v14, v13, v1);
}

uint64_t sub_1D2FE7DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 344);
  v10 = *v4;
  *(*v4 + 352) = v3;

  if (v3)
  {
    v11 = sub_1D2FE80C8;
  }

  else
  {
    v8[45] = a3;
    v8[46] = a2;
    v8[47] = a1;
    v11 = sub_1D2FE7EF4;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1D2FE7EF4()
{
  v13 = *(v0 + 368);
  v14 = *(v0 + 376);
  v1 = *(v0 + 360);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 208);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v9 = *(v0 + 152);
  v10 = *(v0 + 128);

  v11 = *(v0 + 8);

  return v11(v14, v13, v1);
}

uint64_t sub_1D2FE7FE8()
{
  v1 = *(v0 + 312);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 208);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v9 = *(v0 + 152);
  v10 = *(v0 + 128);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D2FE80C8()
{
  v1 = *(v0 + 352);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 208);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v9 = *(v0 + 152);
  v10 = *(v0 + 128);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D2FE81A8@<X0>(uint64_t a1@<X0>, BOOL *a2@<X1>, BOOL *a3@<X2>, BOOL *a4@<X8>)
{
  v24 = a3;
  v22 = a4;
  v23 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749430, &unk_1D30FD0E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749438, &unk_1D30EF580);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *(a1 + 24);
  v15 = sub_1D30E8E7C();
  MEMORY[0x1EEE9AC00](v15);
  v16 = v24;
  *(&v22 - 2) = v23;
  *(&v22 - 1) = v16;
  v26 = type metadata accessor for AppReviewRecord();
  sub_1D30E8ACC();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749440, &unk_1D30FD0F0);
  (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
  sub_1D2FF1A68(&qword_1EE313708, type metadata accessor for AppReviewRecord);
  sub_1D30E8EBC();
  v18 = v25;
  v19 = sub_1D30E8E1C();
  (*(v10 + 8))(v13, v9);
  if (v18)
  {
  }

  else
  {

    if (v19 >> 62)
    {
      v21 = sub_1D30E958C();
    }

    else
    {
      v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *v22 = v21 != 0;
  }

  return result;
}

uint64_t sub_1D2FE84D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a2;
  v25 = a3;
  v27 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749448, &unk_1D30EF590);
  v28 = *(v5 - 8);
  v29 = v5;
  v6 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749450, &unk_1D30FD100);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749458, &qword_1D30EF5A0);
  v14 = *(v26 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v17 = &v24 - v16;
  v18 = *a1;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D2FF1768(&qword_1EE313FD8, &qword_1EC749450, &unk_1D30FD100);
  sub_1D30E87BC();
  swift_getKeyPath();
  sub_1D30E876C();

  (*(v10 + 8))(v13, v9);
  v30 = v24;
  v31 = v25;
  sub_1D30E87AC();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749460, &qword_1D30EF5D0);
  v20 = v27;
  v27[3] = v19;
  v20[4] = sub_1D2FF15A8();
  __swift_allocate_boxed_opaque_existential_0Tm(v20);
  sub_1D2FF1768(&qword_1EE313FF0, &qword_1EC749458, &qword_1D30EF5A0);
  sub_1D2FF1768(&qword_1EE314000, &qword_1EC749448, &unk_1D30EF590);
  v21 = v26;
  v22 = v29;
  sub_1D30E875C();
  (*(v28 + 8))(v8, v22);
  (*(v14 + 8))(v17, v21);
}

uint64_t sub_1D2FE88A8(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_1D30E88CC();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2FE89AC, 0, 0);
}

uint64_t sub_1D2FE89AC()
{
  v62 = v0;
  if (qword_1EE3134F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE3134F8);
  v3 = sub_1D30E928C();
  v4 = v1;
  v5 = sub_1D30E8B1C();

  if (os_log_type_enabled(v5, v3))
  {
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1D2FD9000, v5, v3, "Manifest data from server for: %{public}@", v7, 0xCu);
    sub_1D2FF14DC(v8, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  v10 = *(v0 + 48);

  v11 = [v10 bundleIdentifier];
  if (!v11)
  {
    type metadata accessor for ManifestManagerError();
    sub_1D2FF1A68(&qword_1EC7493C8, type metadata accessor for ManifestManagerError);
    swift_allocError();
LABEL_8:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_9:
    v19 = *(v0 + 88);
    v18 = *(v0 + 96);
    v20 = *(v0 + 80);

    v21 = *(v0 + 8);

    return v21();
  }

  v12 = *(v0 + 48);
  v13 = v11;
  v14 = sub_1D30E908C();
  v16 = v15;

  *(v0 + 104) = v16;
  v17 = sub_1D303B8B4();
  if (v17)
  {

    v23 = sub_1D30E8B1C();
    v24 = sub_1D30E92BC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v61[0] = v26;
      *v25 = 136446210;
      v27 = sub_1D2FFEA04(v14, v16, v61);

      *(v25 + 4) = v27;
      _os_log_impl(&dword_1D2FD9000, v23, v24, "The app with the bundle ID “%{public}s” is configured to use Apple hosting.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1D38B3760](v26, -1, -1);
      MEMORY[0x1D38B3760](v25, -1, -1);
    }

    else
    {
    }

    v35 = [*(v0 + 48) iTunesMetadata];
    v36 = [v35 distributorInfo];

    v37 = [v36 betaTesterType];
    if ((v37 - 1) < 2)
    {
      v38 = swift_task_alloc();
      *(v0 + 120) = v38;
      *v38 = v0;
      v38[1] = sub_1D2FE945C;
      v39 = *(v0 + 48);
      v40 = *(v0 + 56);

      return sub_1D2FEB804(v39);
    }

    if (!v37)
    {
      v49 = swift_task_alloc();
      *(v0 + 112) = v49;
      *v49 = v0;
      v49[1] = sub_1D2FE92E4;
      v50 = *(v0 + 48);
      v51 = *(v0 + 56);

      return sub_1D2FEAF4C(v50);
    }

    v52 = *(v0 + 48);
    type metadata accessor for ManifestManagerError();
    sub_1D2FF1A68(&qword_1EC7493C8, type metadata accessor for ManifestManagerError);
    swift_allocError();
    v54 = v53;
    v55 = [v52 iTunesMetadata];
    v56 = [v55 distributorInfo];

    v57 = [v56 betaTesterType];
    *v54 = v57;
    goto LABEL_8;
  }

  v29 = *(v0 + 88);
  v28 = *(v0 + 96);
  v30 = *(v0 + 64);
  v31 = *(v0 + 72);
  v32 = [*(v0 + 48) infoDictionary];
  sub_1D2FEC2A4(0x6566696E614D4142, 0xED00004C52557473, v28);

  sub_1D2FF13B0(v28, v29);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    v33 = *(v0 + 96);
    sub_1D2FF14DC(*(v0 + 88), &qword_1EC7493C0, &qword_1D30EF500);
    type metadata accessor for ManifestManagerError();
    sub_1D2FF1A68(&qword_1EC7493C8, type metadata accessor for ManifestManagerError);
    swift_allocError();
    *v34 = v14;
    v34[1] = v16;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D2FF14DC(v33, &qword_1EC7493C0, &qword_1D30EF500);
    goto LABEL_9;
  }

  (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 88), *(v0 + 64));

  v41 = sub_1D30E8B1C();
  v42 = sub_1D30E92BC();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v61[0] = v44;
    *v43 = 136446210;
    *(v43 + 4) = sub_1D2FFEA04(v14, v16, v61);
    _os_log_impl(&dword_1D2FD9000, v41, v42, "The app with the bundle ID “%{public}s” is configured to use third-party hosting.", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x1D38B3760](v44, -1, -1);
    MEMORY[0x1D38B3760](v43, -1, -1);
  }

  v45 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493D0, &qword_1D30EF518);
  v46 = *(sub_1D30E85AC() - 8);
  v47 = *(v46 + 72);
  v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  *(swift_allocObject() + 16) = xmmword_1D30EE930;
  sub_1D300AC00(v45);
  v58 = *(v0 + 80);
  sub_1D30E859C();

  sub_1D30E889C();

  v59 = swift_task_alloc();
  *(v0 + 128) = v59;
  *v59 = v0;
  v59[1] = sub_1D2FE95D4;
  v60 = *(v0 + 80);

  return sub_1D2FF0B48(v60, v14, v16);
}

uint64_t sub_1D2FE92E4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 112);
  v8 = *v3;

  v9 = v6[12];
  v10 = v6[11];
  v11 = v6[10];

  v15 = *(v8 + 8);
  if (!v2)
  {
    v12 = a1;
    v13 = a2;
    v14 = 0;
  }

  return v15(v12, v13, v14);
}

uint64_t sub_1D2FE945C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 120);
  v8 = *v3;

  v9 = v6[12];
  v10 = v6[11];
  v11 = v6[10];

  v15 = *(v8 + 8);
  if (!v2)
  {
    v12 = a1;
    v13 = a2;
    v14 = 1;
  }

  return v15(v12, v13, v14);
}

uint64_t sub_1D2FE95D4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v6 = v4[16];
  v7 = v4[13];
  v10 = *v3;
  v5[17] = v2;

  if (v2)
  {
    v8 = sub_1D2FE97D0;
  }

  else
  {
    v8 = sub_1D2FE970C;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D2FE970C()
{
  v1 = v0[12];
  (*(v0[9] + 8))(v0[10], v0[8]);
  sub_1D2FF14DC(v1, &qword_1EC7493C0, &qword_1D30EF500);
  v3 = v0[3];
  v2 = v0[4];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];

  v7 = v0[1];

  return v7(v3, v2, 4);
}

uint64_t sub_1D2FE97D0()
{
  v1 = v0[12];
  (*(v0[9] + 8))(v0[10], v0[8]);
  sub_1D2FF14DC(v1, &qword_1EC7493C0, &qword_1D30EF500);
  v2 = v0[17];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D2FE9884(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1D30E881C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_1D30E88CC();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = sub_1D30E8D9C();
  v2[11] = v10;
  v11 = *(v10 - 8);
  v2[12] = v11;
  v12 = *(v11 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v13 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1D2FE9A84, 0, 0);
}

uint64_t sub_1D2FE9A84()
{
  v97 = v0;
  v96[1] = *MEMORY[0x1E69E9840];
  if (qword_1EE3134F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE3134F8);
  v3 = sub_1D30E928C();
  v4 = v1;
  v5 = sub_1D30E8B1C();

  if (os_log_type_enabled(v5, v3))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1D2FD9000, v5, v3, "Manifest data for: %{public}@", v7, 0xCu);
    sub_1D2FF14DC(v8, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  v10 = *(v0 + 16);

  v11 = [v10 bundleIdentifier];
  if (!v11)
  {
    type metadata accessor for ManifestManagerError();
    sub_1D2FF1A68(&qword_1EC7493C8, type metadata accessor for ManifestManagerError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_8:
    v19 = *(v0 + 120);
    v18 = *(v0 + 128);
    v21 = *(v0 + 104);
    v20 = *(v0 + 112);
    v22 = *(v0 + 80);
    v24 = *(v0 + 48);
    v23 = *(v0 + 56);

    v25 = *(v0 + 8);
    v26 = *MEMORY[0x1E69E9840];

    return v25();
  }

  v12 = *(v0 + 128);
  v13 = *(v0 + 24);
  v14 = v11;
  v15 = sub_1D30E908C();
  v17 = v16;

  sub_1D2FEABF8(v15, v17, v12);
  v28 = *(v0 + 128);
  *(v0 + 232) = 1;
  v29 = [objc_opt_self() defaultManager];
  sub_1D30E8D3C();
  v30 = sub_1D30E906C();

  v31 = [v29 fileExistsAtPath:v30 isDirectory:v0 + 232];

  if ((v31 & 1) == 0)
  {
    (*(*(v0 + 96) + 16))(*(v0 + 120), *(v0 + 128), *(v0 + 88));

    v49 = sub_1D30E8B1C();
    v50 = sub_1D30E92BC();

    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 120);
    v53 = *(v0 + 88);
    v54 = *(v0 + 96);
    if (v51)
    {
      v55 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v96[0] = v93;
      *v55 = 136446466;
      v56 = sub_1D2FFEA04(v15, v17, v96);

      *(v55 + 4) = v56;
      *(v55 + 12) = 2082;
      sub_1D2FF1A68(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v57 = sub_1D30E977C();
      v59 = v58;
      v60 = *(v54 + 8);
      v60(v52, v53);
      v61 = sub_1D2FFEA04(v57, v59, v96);

      *(v55 + 14) = v61;
      _os_log_impl(&dword_1D2FD9000, v49, v50, "The manifest for the app with the bundle ID “%{public}s” doesn’t exist locally at “%{public}s”; downloading it from the appropriate server…", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v93, -1, -1);
      MEMORY[0x1D38B3760](v55, -1, -1);
    }

    else
    {

      v60 = *(v54 + 8);
      v60(v52, v53);
    }

    *(v0 + 136) = v60;
    v72 = swift_task_alloc();
    *(v0 + 144) = v72;
    *v72 = v0;
    v73 = sub_1D2FEA4F0;
    goto LABEL_23;
  }

  v32 = *(v0 + 88);
  v33 = (*(v0 + 96) + 16);
  v34 = *(v0 + 128);
  if (*(v0 + 232) == 1)
  {
    v35 = *(v0 + 112);
    v36 = sub_1D30E92AC();
    (*v33)(v35, v34, v32);

    v37 = sub_1D30E8B1C();

    v38 = os_log_type_enabled(v37, v36);
    v39 = *(v0 + 112);
    v41 = *(v0 + 88);
    v40 = *(v0 + 96);
    if (v38)
    {
      log = v37;
      v42 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v96[0] = v92;
      *v42 = 136446466;
      sub_1D2FF1A68(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v43 = sub_1D30E977C();
      v89 = v36;
      v45 = v44;
      v46 = *(v40 + 8);
      v46(v39, v41);
      v47 = sub_1D2FFEA04(v43, v45, v96);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2082;
      v48 = sub_1D2FFEA04(v15, v17, v96);

      *(v42 + 14) = v48;
      _os_log_impl(&dword_1D2FD9000, log, v89, "The item at “%{public}s” is unexpectedly a directory; removing it and redownloading the manifest for the app with the bundle ID “%{public}s” from the appropriate server…", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v92, -1, -1);
      MEMORY[0x1D38B3760](v42, -1, -1);
    }

    else
    {

      v46 = *(v40 + 8);
      v46(v39, v41);
    }

    *(v0 + 184) = v46;
    v72 = swift_task_alloc();
    *(v0 + 192) = v72;
    *v72 = v0;
    v73 = sub_1D2FEA774;
LABEL_23:
    v72[1] = v73;
    v74 = *(v0 + 16);
    v75 = *(v0 + 24);
    v76 = *MEMORY[0x1E69E9840];

    return sub_1D2FE88A8(v74);
  }

  v62 = *(v0 + 104);
  v63 = *(v0 + 72);
  v65 = *(v0 + 48);
  v64 = *(v0 + 56);
  v66 = *(v0 + 40);
  loga = *(v0 + 32);
  v94 = *(v0 + 64);

  v67 = *v33;
  (*v33)(v62, v34, v32);
  (*(v66 + 104))(v65, *MEMORY[0x1E6968F68], loga);
  sub_1D3040AB4(v62, v65, v64);
  if ((*(v63 + 48))(v64, 1, v94) == 1)
  {
    v68 = *(v0 + 128);
    v69 = *(v0 + 88);
    v70 = *(v0 + 96);
    sub_1D2FF14DC(*(v0 + 56), &qword_1EC7493C0, &qword_1D30EF500);
    type metadata accessor for HelperError();
    sub_1D2FF1A68(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    v67(v71, v68, v69);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v70 + 8))(v68, v69);
    goto LABEL_8;
  }

  (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 56), *(v0 + 64));
  v77 = sub_1D30E88DC();
  v95 = v78;
  v79 = v77;
  v80 = *(v0 + 96);
  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  v81 = *(v0 + 120);
  v83 = *(v0 + 104);
  v82 = *(v0 + 112);
  v84 = *(v0 + 80);
  v86 = *(v0 + 48);
  v85 = *(v0 + 56);
  (*(v80 + 8))(*(v0 + 128), *(v0 + 88));

  v87 = *(v0 + 8);
  v88 = *MEMORY[0x1E69E9840];

  return v87(v79, v95, 2);
}

uint64_t sub_1D2FEA4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = *v4;
  v9 = *(*v4 + 144);
  v14 = *v4;
  *(*v4 + 152) = v3;

  if (v3)
  {
    v10 = sub_1D2FEA9FC;
  }

  else
  {
    v8[20] = a3;
    v8[21] = a2;
    v8[22] = a1;
    v10 = sub_1D2FEA654;
  }

  v11 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1D2FEA654()
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 168);
  v13 = *(v0 + 176);
  v2 = *(v0 + 160);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 104);
  v6 = *(v0 + 80);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 96) + 8;
  (*(v0 + 136))(*(v0 + 128), *(v0 + 88));

  v10 = *(v0 + 8);
  v11 = *MEMORY[0x1E69E9840];

  return v10(v13, v1, v2);
}

uint64_t sub_1D2FEA774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = *v4;
  v9 = *(*v4 + 192);
  v14 = *v4;
  *(*v4 + 200) = v3;

  if (v3)
  {
    v10 = sub_1D2FEAAF8;
  }

  else
  {
    v8[26] = a3;
    v8[27] = a2;
    v8[28] = a1;
    v10 = sub_1D2FEA8D8;
  }

  v11 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1D2FEA8D8()
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 216);
  v13 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 120);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 80);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 96) + 8;
  (*(v0 + 184))(*(v0 + 128), *(v0 + 88));

  v10 = *(v0 + 8);
  v11 = *MEMORY[0x1E69E9840];

  return v10(v13, v1, v2);
}

uint64_t sub_1D2FEA9FC()
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 96) + 8;
  (*(v0 + 136))(*(v0 + 128), *(v0 + 88));
  v2 = *(v0 + 152);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 80);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);

  v10 = *(v0 + 8);
  v11 = *MEMORY[0x1E69E9840];

  return v10();
}

uint64_t sub_1D2FEAAF8()
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 96) + 8;
  (*(v0 + 184))(*(v0 + 128), *(v0 + 88));
  v2 = *(v0 + 200);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 80);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);

  v10 = *(v0 + 8);
  v11 = *MEMORY[0x1E69E9840];

  return v10();
}

uint64_t sub_1D2FEABF8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v36 = a1;
  v34 = a3;
  v4 = type metadata accessor for FilePath.ResolutionError();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1D30E8D9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v33 = &v30 - v14;
  if (qword_1EE3134F0 != -1)
  {
    swift_once();
  }

  v15 = sub_1D30E8B3C();
  __swift_project_value_buffer(v15, qword_1EE3134F8);
  v16 = sub_1D30E928C();

  v17 = sub_1D30E8B1C();

  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v32 = v4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v31 = v7;
    v21 = v9;
    v22 = v20;
    v38 = v20;
    *v19 = 136446210;
    v23 = v36;
    *(v19 + 4) = sub_1D2FFEA04(v36, a2, &v38);
    _os_log_impl(&dword_1D2FD9000, v17, v16, "Path to manifest for app with bundle ID: %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v24 = v22;
    v9 = v21;
    v7 = v31;
    MEMORY[0x1D38B3760](v24, -1, -1);
    MEMORY[0x1D38B3760](v19, -1, -1);
  }

  else
  {

    v23 = v36;
  }

  v25 = *(v35 + 16);
  v26 = v37;
  sub_1D302D670(v23, a2, v7, v13);
  if (v26)
  {
    sub_1D2FF1A68(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);
    swift_allocError();
    return sub_1D2FF153C(v7, v27);
  }

  else
  {
    v29 = v33;
    sub_1D30E8D8C();
    sub_1D3003CF4(v29, 2, v34);
    return (*(v9 + 8))(v29, v8);
  }
}

uint64_t sub_1D2FEAF4C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1D30E852C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2FEB00C, 0, 0);
}

uint64_t sub_1D2FEB00C()
{
  if (qword_1EE3134F0 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_1D30E8B3C();
  v0[7] = __swift_project_value_buffer(v2, qword_1EE3134F8);
  v3 = sub_1D30E928C();
  v4 = v1;
  v5 = sub_1D30E8B1C();

  if (os_log_type_enabled(v5, v3))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1D2FD9000, v5, v3, "App Store manifest data for: %{public}@", v7, 0xCu);
    sub_1D2FF14DC(v8, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  v10 = v0[2];

  v11 = [v10 bundleIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1D30E908C();
    v15 = v14;

    v0[8] = v13;
    v0[9] = v15;
    v16 = swift_task_alloc();
    v0[10] = v16;
    *v16 = v0;
    v16[1] = sub_1D2FEB2B4;
    v17 = v0[6];
    v18 = v0[2];
    v19 = v0[3];

    return sub_1D2FEC92C(v17, v18);
  }

  else
  {
    type metadata accessor for ManifestManagerError();
    sub_1D2FF1A68(&qword_1EC7493C8, type metadata accessor for ManifestManagerError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v21 = v0[6];

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_1D2FEB2B4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);

    v5 = sub_1D2FEB7A0;
  }

  else
  {
    v5 = sub_1D2FEB3D0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D2FEB3D0()
{
  v15 = v0;
  v1 = v0[9];
  v2 = v0[7];

  v3 = sub_1D30E8B1C();
  v4 = sub_1D30E92BC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  if (v5)
  {
    v7 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    v10 = sub_1D2FFEA04(v7, v6, &v14);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_1D2FD9000, v3, v4, "Fetching the download manifest for the app with the bundle ID “%{public}s” from the App Store…", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D38B3760](v9, -1, -1);
    MEMORY[0x1D38B3760](v8, -1, -1);
  }

  else
  {
  }

  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = sub_1D2FEB56C;
  v12 = v0[6];

  return sub_1D2FF0424(v12);
}

uint64_t sub_1D2FEB56C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 96);
  v8 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v9 = sub_1D2FEB724;
  }

  else
  {
    *(v6 + 112) = a2;
    *(v6 + 120) = a1;
    v9 = sub_1D2FEB6A0;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D2FEB6A0()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];
  v3 = v0[14];
  v2 = v0[15];

  return v1(v2, v3);
}

uint64_t sub_1D2FEB724()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[13];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D2FEB7A0()
{
  v1 = v0[11];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D2FEB804(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1D30E852C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2FEB8C4, 0, 0);
}

uint64_t sub_1D2FEB8C4()
{
  v35 = v0;
  if (qword_1EE3134F0 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE3134F8);
  v3 = sub_1D30E928C();
  v4 = v1;
  v5 = sub_1D30E8B1C();

  if (os_log_type_enabled(v5, v3))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1D2FD9000, v5, v3, "TestFlight manifest data for: %{public}@", v7, 0xCu);
    sub_1D2FF14DC(v8, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  v10 = v0[2];

  v11 = [v10 bundleIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1D30E908C();
    v15 = v14;

    v16 = sub_1D30E8B1C();
    v17 = sub_1D30E92BC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34[0] = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_1D2FFEA04(v13, v15, v34);
      _os_log_impl(&dword_1D2FD9000, v16, v17, "Asking the TestFlight extension via the App Store Dæmon for the URL request to use to fetch the download manifest for the app with the bundle ID “%{public}s”…", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1D38B3760](v19, -1, -1);
      MEMORY[0x1D38B3760](v18, -1, -1);
    }

    v20 = v0[6];
    v21 = v0[3];
    v22 = *(v21 + 48);
    (*(v21 + 40))(v0[2]);

    v26 = sub_1D30E8B1C();
    v27 = sub_1D30E92BC();

    if (os_log_type_enabled(v26, v27))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34[0] = v30;
      *v29 = 136446210;
      v31 = sub_1D2FFEA04(v13, v15, v34);

      *(v29 + 4) = v31;
      _os_log_impl(&dword_1D2FD9000, v26, v27, "Fetching the download manifest for the app with the bundle ID “%{public}s” from TestFlight…", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1D38B3760](v30, -1, -1);
      MEMORY[0x1D38B3760](v29, -1, -1);
    }

    else
    {
    }

    v32 = swift_task_alloc();
    v0[7] = v32;
    *v32 = v0;
    v32[1] = sub_1D2FEBD44;
    v33 = v0[6];

    return sub_1D2FF0424(v33);
  }

  else
  {
    type metadata accessor for ManifestManagerError();
    sub_1D2FF1A68(&qword_1EC7493C8, type metadata accessor for ManifestManagerError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v23 = v0[6];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_1D2FEBD44(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 56);
  v8 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {
    v9 = sub_1D2FEBEFC;
  }

  else
  {
    *(v6 + 72) = a2;
    *(v6 + 80) = a1;
    v9 = sub_1D2FEBE78;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D2FEBE78()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];
  v3 = v0[9];
  v2 = v0[10];

  return v1(v2, v3);
}

uint64_t sub_1D2FEBEFC()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D2FEBF78(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D3030DF0(MEMORY[0x1E69E6370]);
  if (v6)
  {
    *&v21 = a1;
    *(&v21 + 1) = a2;

    sub_1D30E911C();
    v7 = sub_1D30E906C();

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [v2 objectForKey:v7 ofClass:ObjCClassFromMetadata valuesOfClass:swift_getObjCClassFromMetadata()];
LABEL_5:
    v10 = v9;

    if (v10)
    {
      sub_1D30E93AC();
      swift_unknownObjectRelease();
      sub_1D2FDCC64(&v19, &v21);
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    v11 = &qword_1EC749418;
    v12 = &qword_1D30F4A10;
    goto LABEL_9;
  }

  if (v5 != sub_1D2FF1494(0, &qword_1EC749410, 0x1E695DFF8))
  {
    goto LABEL_4;
  }

  *&v19 = a1;
  *(&v19 + 1) = a2;

  sub_1D30E911C();
  v14 = sub_1D30E906C();

  sub_1D2FF1494(0, &qword_1EC749400, 0x1E696AEC0);
  v15 = [v2 objectForKey:v14 ofClass:swift_getObjCClassFromMetadata()];

  if (v15)
  {
    sub_1D30E93AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (!*(&v20 + 1))
  {
    sub_1D2FF14DC(&v21, &qword_1EC749418, &qword_1D30F4A10);
    goto LABEL_4;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_4:
    *&v21 = a1;
    *(&v21 + 1) = a2;

    sub_1D30E911C();
    v7 = sub_1D30E906C();

    v9 = [v2 objectForKey:v7 ofClass:swift_getObjCClassFromMetadata()];
    goto LABEL_5;
  }

  v16 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
  v17 = sub_1D30E906C();

  v18 = [v16 initWithString_];

  *&v21 = v18;
  v11 = &unk_1EC749420;
  v12 = &unk_1D30EF570;
LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
    LOBYTE(v19) = 2;
  }

  return v19;
}

uint64_t sub_1D2FEC2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1D30E88CC();
  v8 = sub_1D3030DF0(v7);
  if (v9)
  {
    *&v25 = a1;
    *(&v25 + 1) = a2;

    sub_1D30E911C();
    v10 = sub_1D30E906C();

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [v3 objectForKey:v10 ofClass:ObjCClassFromMetadata valuesOfClass:swift_getObjCClassFromMetadata()];
  }

  else
  {
    if (v8 == sub_1D2FF1494(0, &qword_1EC749410, 0x1E695DFF8))
    {
      *&v23 = a1;
      *(&v23 + 1) = a2;

      sub_1D30E911C();
      v18 = sub_1D30E906C();

      sub_1D2FF1494(0, &qword_1EC749400, 0x1E696AEC0);
      v19 = [v3 objectForKey:v18 ofClass:swift_getObjCClassFromMetadata()];

      if (v19)
      {
        sub_1D30E93AC();
        swift_unknownObjectRelease();
      }

      else
      {
        v23 = 0u;
        v24 = 0u;
      }

      v25 = v23;
      v26 = v24;
      if (*(&v24 + 1))
      {
        if (swift_dynamicCast())
        {
          v20 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
          v21 = sub_1D30E906C();

          v22 = [v20 initWithString_];

          *&v25 = v22;
          v14 = &unk_1EC749420;
          v15 = &unk_1D30EF570;
          goto LABEL_9;
        }
      }

      else
      {
        sub_1D2FF14DC(&v25, &qword_1EC749418, &qword_1D30F4A10);
      }
    }

    *&v25 = a1;
    *(&v25 + 1) = a2;

    sub_1D30E911C();
    v10 = sub_1D30E906C();

    v12 = [v3 objectForKey:v10 ofClass:swift_getObjCClassFromMetadata()];
  }

  v13 = v12;

  if (v13)
  {
    sub_1D30E93AC();
    swift_unknownObjectRelease();
    sub_1D2FDCC64(&v23, &v25);
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v14 = &qword_1EC749418;
  v15 = &qword_1D30F4A10;
LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  v16 = swift_dynamicCast();
  return (*(*(v7 - 8) + 56))(a3, v16 ^ 1u, 1, v7);
}

uint64_t sub_1D2FEC604(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D3030DF0(MEMORY[0x1E69E6158]);
  if (v6)
  {
    *&v21 = a1;
    *(&v21 + 1) = a2;

    sub_1D30E911C();
    v7 = sub_1D30E906C();

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [v2 objectForKey:v7 ofClass:ObjCClassFromMetadata valuesOfClass:swift_getObjCClassFromMetadata()];
LABEL_5:
    v10 = v9;

    if (v10)
    {
      sub_1D30E93AC();
      swift_unknownObjectRelease();
      sub_1D2FDCC64(&v19, &v21);
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    v11 = &qword_1EC749418;
    v12 = &qword_1D30F4A10;
    goto LABEL_9;
  }

  if (v5 != sub_1D2FF1494(0, &qword_1EC749410, 0x1E695DFF8))
  {
    goto LABEL_4;
  }

  *&v19 = a1;
  *(&v19 + 1) = a2;

  sub_1D30E911C();
  v14 = sub_1D30E906C();

  sub_1D2FF1494(0, &qword_1EC749400, 0x1E696AEC0);
  v15 = [v2 objectForKey:v14 ofClass:swift_getObjCClassFromMetadata()];

  if (v15)
  {
    sub_1D30E93AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (!*(&v20 + 1))
  {
    sub_1D2FF14DC(&v21, &qword_1EC749418, &qword_1D30F4A10);
    goto LABEL_4;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_4:
    *&v21 = a1;
    *(&v21 + 1) = a2;

    sub_1D30E911C();
    v7 = sub_1D30E906C();

    v9 = [v2 objectForKey:v7 ofClass:swift_getObjCClassFromMetadata()];
    goto LABEL_5;
  }

  v16 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
  v17 = sub_1D30E906C();

  v18 = [v16 initWithString_];

  *&v21 = v18;
  v11 = &unk_1EC749420;
  v12 = &unk_1D30EF570;
LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  return v19;
}

uint64_t sub_1D2FEC92C(uint64_t a1, uint64_t a2)
{
  v3[38] = a2;
  v3[39] = v2;
  v3[37] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493F0, &qword_1D30EF558);
  v3[40] = v4;
  v5 = *(v4 - 8);
  v3[41] = v5;
  v6 = *(v5 + 64) + 15;
  v3[42] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493F8, &unk_1D30EF560);
  v3[43] = v7;
  v8 = *(v7 - 8);
  v3[44] = v8;
  v9 = *(v8 + 64) + 15;
  v3[45] = swift_task_alloc();
  v10 = sub_1D30E866C();
  v3[46] = v10;
  v11 = *(v10 - 8);
  v3[47] = v11;
  v12 = *(v11 + 64) + 15;
  v3[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2FECAC0, 0, 0);
}

uint64_t sub_1D2FECAC0()
{
  v52 = v0;
  if (qword_1EE3134F0 != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = sub_1D30E8B3C();
  v0[49] = __swift_project_value_buffer(v2, qword_1EE3134F8);
  v3 = sub_1D30E928C();
  v4 = v1;
  v5 = sub_1D30E8B1C();

  if (os_log_type_enabled(v5, v3))
  {
    v6 = v0[38];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1D2FD9000, v5, v3, "App Store manifest request for: %{public}@", v7, 0xCu);
    sub_1D2FF14DC(v8, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  v10 = v0[38];

  v11 = [v10 bundleIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1D30E908C();
    v15 = v14;
    v16 = sub_1D30E8B1C();
    v17 = sub_1D30E92BC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v51 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_1D2FFEA04(v13, v15, &v51);
      _os_log_impl(&dword_1D2FD9000, v16, v17, "Constructing the request to use to fetch the download manifest for the app with the bundle ID “%{public}s” from the App Store…", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1D38B3760](v19, -1, -1);
      MEMORY[0x1D38B3760](v18, -1, -1);
    }

    v20 = [objc_allocWithZone(MEMORY[0x1E698CAC8]) initWithBundleIdentifier_];
    v0[50] = v20;

    v21 = objc_opt_self();
    v22 = sub_1D30E906C();
    v23 = sub_1D30E906C();
    v24 = [v21 bagForProfile:v22 profileVersion:v23 processInfo:0];

    v25 = objc_allocWithZone(MEMORY[0x1E698C9E8]);
    v26 = sub_1D30E906C();
    v27 = [v25 initWithClientIdentifier:v26 bag:v24];

    v28 = [objc_opt_self() createBagForSubProfile];
    if (v28)
    {
      v29 = v28;
      v30 = v0[48];

      v31 = [objc_allocWithZone(MEMORY[0x1E698C9C0]) initWithTokenService:v27 bag:v29];
      v0[51] = v31;

      v32 = v20;
      [v31 setClientInfo_];
      sub_1D30E865C();
      sub_1D30E864C();
      v33 = sub_1D30E927C();
      v34 = sub_1D30E8B1C();
      if (os_log_type_enabled(v34, v33))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1D2FD9000, v34, v33, "Fetching the bag…", v35, 2u);
        MEMORY[0x1D38B3760](v35, -1, -1);
      }

      v37 = v0[44];
      v36 = v0[45];
      v38 = v0[43];

      v39 = sub_1D30E906C();
      v40 = sub_1D30E906C();
      v41 = [v21 bagForProfile:v39 profileVersion:v40 processInfo:v32];

      v42 = sub_1D30E906C();
      v43 = [v41 stringForKey_];

      v44 = [v43 valuePromise];
      v0[52] = v44;

      v0[2] = v0;
      v0[7] = v0 + 34;
      v0[3] = sub_1D2FED234;
      swift_continuation_init();
      v0[25] = v38;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 22);
      sub_1D2FF1494(0, &qword_1EC749400, 0x1E696AEC0);
      v0[53] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493E0, &qword_1D30EF530);
      sub_1D30E91BC();
      (*(v37 + 32))(boxed_opaque_existential_0Tm, v36, v38);
      v0[18] = MEMORY[0x1E69E9820];
      v0[19] = 1107296256;
      v0[20] = sub_1D2FEE198;
      v0[21] = &block_descriptor;
      [v44 resultWithTimeout:10.0 completion:?];
      (*(v37 + 8))(boxed_opaque_existential_0Tm, v38);
      v28 = v0 + 2;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEC8](v28);
  }

  else
  {
    type metadata accessor for ManifestManagerError();
    sub_1D2FF1A68(&qword_1EC7493C8, type metadata accessor for ManifestManagerError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v46 = v0[48];
    v47 = v0[45];
    v48 = v0[42];

    v49 = v0[1];

    return v49();
  }
}

uint64_t sub_1D2FED234()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 432) = v2;
  if (v2)
  {
    v3 = sub_1D2FEDDB4;
  }

  else
  {
    v3 = sub_1D2FED344;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D2FED344()
{
  v1 = v0[52];
  v2 = v0[48];
  v3 = v0[34];
  v4 = sub_1D30E908C();
  v6 = v5;

  MEMORY[0x1D38B1B50](v4, v6);
  v7 = v0[49];
  v8 = sub_1D30E927C();
  v9 = sub_1D30E8B1C();
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1D2FD9000, v9, v8, "Loading the storefront map…", v10, 2u);
    MEMORY[0x1D38B3760](v10, -1, -1);
  }

  v11 = v0[38];
  v12 = v0[39];

  v13 = *(v12 + 32);
  v14 = [v11 iTunesMetadata];
  v15 = [v14 storeFront];

  v16 = swift_task_alloc();
  v0[55] = v16;
  *v16 = v0;
  v16[1] = sub_1D2FED4B8;

  return sub_1D303E57C(v15);
}

uint64_t sub_1D2FED4B8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 440);
  v8 = *v3;
  *(*v3 + 448) = v2;

  if (v2)
  {
    v9 = sub_1D2FEE01C;
  }

  else
  {
    *(v6 + 456) = a2;
    *(v6 + 464) = a1;
    v9 = sub_1D2FED5EC;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D2FED5EC()
{
  v46 = v0;
  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[48];
  v4 = v0[38];
  sub_1D30E948C();

  strcpy(v45, "/v1/catalog/");
  BYTE5(v45[1]) = 0;
  HIWORD(v45[1]) = -5120;
  MEMORY[0x1D38B2610](v1, v2);

  MEMORY[0x1D38B2610](0x702D74657373612FLL, 0xEC000000736B6361);
  MEMORY[0x1D38B1B60](v45[0], v45[1]);
  sub_1D300AC00(v4);
  if (v5 == 4)
  {
    v6 = v0[38];
    type metadata accessor for HelperError();
    sub_1D2FF1A68(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    v8 = v7;
    v9 = [v6 bundleIdentifier];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1D30E908C();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v35 = v0[50];
    v34 = v0[51];
    v36 = v0[47];
    v37 = v0[48];
    v38 = v0[46];
    *v8 = v11;
    v8[1] = v13;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v36 + 8))(v37, v38);
    v39 = v0[48];
    v40 = v0[45];
    v41 = v0[42];

    v42 = v0[1];

    return v42();
  }

  else
  {
    v15 = v0[48];
    v14 = v0[49];
    v16 = v0[38];
    v17 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493D0, &qword_1D30EF518);
    v18 = *(sub_1D30E85AC() - 8);
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    *(swift_allocObject() + 16) = xmmword_1D30EF4A0;
    sub_1D303B7F4(v17);
    sub_1D30E908C();
    sub_1D30E859C();

    v21 = [v16 iTunesMetadata];
    v22 = [v21 storeItemIdentifier];

    v0[35] = v22;
    sub_1D30E977C();
    sub_1D30E859C();

    sub_1D30E859C();
    sub_1D30E85EC();
    v23 = sub_1D30E927C();
    v24 = sub_1D30E8B1C();
    if (os_log_type_enabled(v24, v23))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D2FD9000, v24, v23, "Encoding the request…", v25, 2u);
      MEMORY[0x1D38B3760](v25, -1, -1);
    }

    v44 = v0[53];
    v26 = v0[51];
    v27 = v0[48];
    v29 = v0[41];
    v28 = v0[42];
    v30 = v0[40];

    v31 = sub_1D30E85FC();
    v32 = [v26 requestWithComponents_];
    v0[59] = v32;

    v0[10] = v0;
    v0[15] = v0 + 36;
    v0[11] = sub_1D2FEDBC8;
    swift_continuation_init();
    v0[33] = v30;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 30);
    sub_1D2FF1494(0, &qword_1EC749408, 0x1E698CB80);
    sub_1D30E91BC();
    (*(v29 + 32))(boxed_opaque_existential_0Tm, v28, v30);
    v0[26] = MEMORY[0x1E69E9820];
    v0[27] = 1107296256;
    v0[28] = sub_1D2FEE1AC;
    v0[29] = &block_descriptor_20;
    [v32 resultWithCompletion_];
    (*(v29 + 8))(boxed_opaque_existential_0Tm, v30);

    return MEMORY[0x1EEE6DEC8](v0 + 10);
  }
}

uint64_t sub_1D2FEDBC8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 480) = v2;
  if (v2)
  {
    v3 = sub_1D2FEE0CC;
  }

  else
  {
    v3 = sub_1D2FEDCD8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D2FEDCD8()
{
  v1 = v0[59];
  v3 = v0[50];
  v2 = v0[51];
  v5 = v0[47];
  v4 = v0[48];
  v7 = v0[45];
  v6 = v0[46];
  v8 = v0[42];
  v10 = v0[36];
  v9 = v0[37];
  sub_1D30E850C();

  (*(v5 + 8))(v4, v6);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D2FEDDB4()
{
  v1 = v0[54];
  v2 = v0[52];
  v3 = v0[49];
  swift_willThrow();

  v4 = sub_1D30E929C();
  v5 = v1;
  v6 = sub_1D30E8B1C();

  if (os_log_type_enabled(v6, v4))
  {
    v7 = v0[54];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D2FD9000, v6, v4, "The Media API host couldn’t be fetched from the bag: %{public}@", v8, 0xCu);
    sub_1D2FF14DC(v9, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v9, -1, -1);
    MEMORY[0x1D38B3760](v8, -1, -1);
  }

  v12 = v0[54];
  v13 = v0[48];

  MEMORY[0x1D38B1B50](0xD000000000000016, 0x80000001D30EAF20);
  v14 = v0[49];
  v15 = sub_1D30E927C();
  v16 = sub_1D30E8B1C();
  if (os_log_type_enabled(v16, v15))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1D2FD9000, v16, v15, "Loading the storefront map…", v17, 2u);
    MEMORY[0x1D38B3760](v17, -1, -1);
  }

  v18 = v0[38];
  v19 = v0[39];

  v20 = *(v19 + 32);
  v21 = [v18 iTunesMetadata];
  v22 = [v21 storeFront];

  v23 = swift_task_alloc();
  v0[55] = v23;
  *v23 = v0;
  v23[1] = sub_1D2FED4B8;

  return sub_1D303E57C(v22);
}

uint64_t sub_1D2FEE01C()
{
  v1 = *(v0 + 400);
  v3 = *(v0 + 376);
  v2 = *(v0 + 384);
  v4 = *(v0 + 368);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 448);
  v6 = *(v0 + 384);
  v7 = *(v0 + 360);
  v8 = *(v0 + 336);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1D2FEE0CC()
{
  v2 = v0[59];
  v1 = v0[60];
  v4 = v0[50];
  v3 = v0[51];
  v6 = v0[47];
  v5 = v0[48];
  v7 = v0[46];
  swift_willThrow();

  (*(v6 + 8))(v5, v7);
  v8 = v0[60];
  v9 = v0[48];
  v10 = v0[45];
  v11 = v0[42];

  v12 = v0[1];

  return v12();
}

void sub_1D2FEE1C0(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v9 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    sub_1D30E91CC();
  }

  else if (a2)
  {
    v10 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    sub_1D30E91DC();
  }

  else
  {
    __break(1u);
  }
}

char *sub_1D2FEE270(void *a1)
{
  v2 = v1;
  v105[1] = *MEMORY[0x1E69E9840];
  v98 = sub_1D30E881C();
  v96 = *(v98 - 8);
  v4 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v95 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v97 = &v91 - v8;
  v9 = sub_1D30E88CC();
  v99 = *(v9 - 8);
  v100 = v9;
  v10 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D30E8D9C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v93 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v91 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v91 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v91 - v23;
  if (qword_1EE3134F0 != -1)
  {
    swift_once();
  }

  v25 = sub_1D30E8B3C();
  v26 = __swift_project_value_buffer(v25, qword_1EE3134F8);
  v27 = sub_1D30E928C();
  v28 = a1;
  v101 = v26;
  v29 = sub_1D30E8B1C();

  if (os_log_type_enabled(v29, v27))
  {
    v30 = swift_slowAlloc();
    v94 = v24;
    v102 = v12;
    v31 = v13;
    v32 = v19;
    v33 = v22;
    v34 = v30;
    v35 = swift_slowAlloc();
    *v34 = 138543362;
    *(v34 + 4) = v28;
    *v35 = v28;
    v36 = v28;
    _os_log_impl(&dword_1D2FD9000, v29, v27, "Local cache manifest data for: %{public}@", v34, 0xCu);
    sub_1D2FF14DC(v35, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v35, -1, -1);
    v37 = v34;
    v22 = v33;
    v19 = v32;
    v2 = v1;
    v13 = v31;
    v12 = v102;
    v24 = v94;
    MEMORY[0x1D38B3760](v37, -1, -1);
  }

  v38 = [v28 bundleIdentifier];
  if (v38)
  {
    v39 = v38;
    v40 = sub_1D30E908C();
    v42 = v41;

    sub_1D2FEABF8(v40, v42, v24);
    if (v2)
    {
    }

    else
    {
      v94 = v22;
      v103 = v13;
      v104 = 1;
      v45 = [objc_opt_self() defaultManager];
      sub_1D30E8D3C();
      v46 = sub_1D30E906C();

      v47 = [v45 fileExistsAtPath:v46 isDirectory:&v104];

      if (v47)
      {
        v91 = 0;

        v48 = v103;
        if (v104 == 1)
        {
          v49 = sub_1D30E92AC();
          (*(v48 + 16))(v19, v24, v12);
          v50 = v24;
          v51 = sub_1D30E8B1C();
          if (os_log_type_enabled(v51, v49))
          {
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v105[0] = v53;
            *v52 = 136446210;
            sub_1D2FF1A68(&unk_1EC749370, MEMORY[0x1E69E83A8]);
            v94 = v50;
            v54 = sub_1D30E977C();
            v56 = v55;
            v57 = *(v48 + 8);
            v57(v19, v12);
            v58 = sub_1D2FFEA04(v54, v56, v105);

            *(v52 + 4) = v58;
            _os_log_impl(&dword_1D2FD9000, v51, v49, "The item at “%{public}s” is unexpectedly a directory.", v52, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v53);
            MEMORY[0x1D38B3760](v53, -1, -1);
            MEMORY[0x1D38B3760](v52, -1, -1);

            v57(v94, v12);
          }

          else
          {

            v87 = *(v48 + 8);
            v87(v19, v12);
            v87(v50, v12);
          }

          v24 = 0;
        }

        else
        {
          v77 = *(v103 + 16);
          v78 = v93;
          v77(v93, v24, v12);
          v79 = v95;
          (*(v96 + 104))(v95, *MEMORY[0x1E6968F68], v98);
          v80 = v97;
          sub_1D3040AB4(v78, v79, v97);
          v82 = v99;
          v81 = v100;
          v83 = v24;
          if ((*(v99 + 48))(v80, 1, v100) == 1)
          {
            sub_1D2FF14DC(v80, &qword_1EC7493C0, &qword_1D30EF500);
            v24 = type metadata accessor for HelperError();
            sub_1D2FF1A68(&qword_1EE313E48, type metadata accessor for HelperError);
            swift_allocError();
            v77(v84, v83, v12);
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            (*(v48 + 8))(v83, v12);
          }

          else
          {
            v88 = v92;
            (*(v82 + 32))(v92, v80, v81);
            v89 = v91;
            v90 = sub_1D30E88DC();
            if (v89)
            {
              (*(v82 + 8))(v88, v81);
              (*(v48 + 8))(v24, v12);
            }

            else
            {
              v24 = v90;
              (*(v82 + 8))(v88, v81);
              (*(v48 + 8))(v83, v12);
            }
          }
        }
      }

      else
      {
        v59 = v103;
        v60 = v94;
        (*(v103 + 16))(v94, v24, v12);

        v61 = sub_1D30E8B1C();
        v102 = v12;
        v62 = v61;
        v63 = sub_1D30E92BC();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v91 = 0;
          v65 = v64;
          v101 = swift_slowAlloc();
          v105[0] = v101;
          *v65 = 136446466;
          v66 = sub_1D2FFEA04(v40, v42, v105);
          LODWORD(v100) = v63;
          v67 = v66;

          *(v65 + 4) = v67;
          *(v65 + 12) = 2082;
          sub_1D2FF1A68(&unk_1EC749370, MEMORY[0x1E69E83A8]);
          v68 = v102;
          v69 = sub_1D30E977C();
          v71 = v70;
          v72 = *(v59 + 8);
          v72(v60, v68);
          v73 = sub_1D2FFEA04(v69, v71, v105);
          v74 = v24;
          v75 = v73;

          *(v65 + 14) = v75;
          _os_log_impl(&dword_1D2FD9000, v62, v100, "The manifest for the app with the bundle ID “%{public}s” doesn’t exist locally at “%{public}s”.", v65, 0x16u);
          v76 = v101;
          swift_arrayDestroy();
          MEMORY[0x1D38B3760](v76, -1, -1);
          MEMORY[0x1D38B3760](v65, -1, -1);

          v72(v74, v68);
        }

        else
        {

          v85 = *(v59 + 8);
          v86 = v102;
          v85(v60, v102);
          v85(v24, v86);
        }

        v24 = 0;
      }
    }
  }

  else
  {
    v24 = type metadata accessor for ManifestManagerError();
    sub_1D2FF1A68(&qword_1EC7493C8, type metadata accessor for ManifestManagerError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v43 = *MEMORY[0x1E69E9840];
  return v24;
}

uint64_t sub_1D2FEED7C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v78 = a2;
  v7 = sub_1D30E881C();
  v70 = *(v7 - 8);
  v71 = v7;
  v8 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v77 = &v62 - v12;
  v13 = sub_1D30E88CC();
  v73 = *(v13 - 8);
  v74 = v13;
  v14 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v72 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D30E8D9C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v68 = &v62 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v79 = &v62 - v24;
  if (qword_1EE3134F0 != -1)
  {
    swift_once();
  }

  v25 = sub_1D30E8B3C();
  v26 = __swift_project_value_buffer(v25, qword_1EE3134F8);
  v27 = sub_1D30E928C();
  v28 = v78;
  sub_1D2FF17B0(a1, v78);

  v65 = v26;
  v29 = sub_1D30E8B1C();
  sub_1D2FF1804(a1, v28);

  v30 = os_log_type_enabled(v29, v27);
  v66 = v21;
  v67 = a1;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v80 = v64;
    *v31 = 136446466;
    v32 = sub_1D30E88EC();
    v34 = sub_1D2FFEA04(v32, v33, &v80);
    v63 = v29;
    v35 = v17;
    v36 = v34;

    *(v31 + 4) = v36;
    v17 = v35;
    *(v31 + 12) = 2082;
    *(v31 + 14) = sub_1D2FFEA04(a3, a4, &v80);
    v29 = v63;
    _os_log_impl(&dword_1D2FD9000, v63, v27, "Install manifest from: %{public}s for app with bundle ID: %{public}s", v31, 0x16u);
    v37 = v64;
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v37, -1, -1);
    MEMORY[0x1D38B3760](v31, -1, -1);
  }

  v38 = v76;
  result = sub_1D2FEABF8(a3, a4, v79);
  v40 = v77;
  if (!v38)
  {
    v75 = a3;
    v76 = a4;
    v41 = *(v17 + 16);
    v42 = v68;
    v41(v68, v79, v16);
    v43 = v69;
    (*(v70 + 104))(v69, *MEMORY[0x1E6968F68], v71);
    sub_1D3040AB4(v42, v43, v40);
    v44 = v73;
    v45 = v40;
    v46 = v40;
    v47 = v74;
    if ((*(v73 + 48))(v45, 1, v74) == 1)
    {
      sub_1D2FF14DC(v46, &qword_1EC7493C0, &qword_1D30EF500);
      type metadata accessor for HelperError();
      sub_1D2FF1A68(&qword_1EE313E48, type metadata accessor for HelperError);
      swift_allocError();
      v41(v48, v79, v16);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (*(v17 + 8))(v79, v16);
    }

    else
    {
      v71 = v17;
      (*(v44 + 32))(v72, v46, v47);
      v49 = v66;
      v41(v66, v79, v16);
      v50 = v76;

      v51 = sub_1D30E8B1C();
      v52 = sub_1D30E92BC();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v77 = v16;
        v70 = v54;
        v80 = v54;
        *v53 = 136446466;
        sub_1D2FF1A68(&unk_1EC749370, MEMORY[0x1E69E83A8]);
        LODWORD(v69) = v52;
        v55 = sub_1D30E977C();
        v57 = v56;
        v58 = *(v71 + 8);
        v58(v49, v77);
        v59 = sub_1D2FFEA04(v55, v57, &v80);

        *(v53 + 4) = v59;
        *(v53 + 12) = 2082;
        *(v53 + 14) = sub_1D2FFEA04(v75, v50, &v80);
        _os_log_impl(&dword_1D2FD9000, v51, v69, "Installing a manifest at “%{public}s” for the app with the bundle ID “%{public}s”…", v53, 0x16u);
        v60 = v70;
        swift_arrayDestroy();
        v16 = v77;
        MEMORY[0x1D38B3760](v60, -1, -1);
        MEMORY[0x1D38B3760](v53, -1, -1);
      }

      else
      {

        v58 = *(v71 + 8);
        v58(v49, v16);
      }

      v61 = v72;
      sub_1D30E894C();
      (*(v73 + 8))(v61, v74);
      return (v58)(v79, v16);
    }
  }

  return result;
}

uint64_t sub_1D2FEF53C(uint64_t a1, unint64_t a2)
{
  v70[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D30E8D9C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v69 = &v60 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v60 - v12;
  if (qword_1EE3134F0 != -1)
  {
    swift_once();
  }

  v14 = sub_1D30E8B3C();
  v15 = __swift_project_value_buffer(v14, qword_1EE3134F8);
  v16 = sub_1D30E928C();

  v66 = v15;
  v17 = sub_1D30E8B1C();

  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v65 = v9;
    v20 = v5;
    v21 = v13;
    v22 = v4;
    v23 = v19;
    v70[0] = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_1D2FFEA04(a1, a2, v70);
    _os_log_impl(&dword_1D2FD9000, v17, v16, "Uninstall manifest for app with bundle ID: %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v24 = v23;
    v4 = v22;
    v13 = v21;
    v5 = v20;
    v9 = v65;
    MEMORY[0x1D38B3760](v24, -1, -1);
    MEMORY[0x1D38B3760](v18, -1, -1);
  }

  v25 = v68;
  result = sub_1D2FEABF8(a1, a2, v13);
  v27 = v69;
  if (!v25)
  {
    v28 = v5[2];
    v67 = v5 + 2;
    v68 = 0;
    v65 = v28;
    (v28)(v69, v13, v4);

    v29 = sub_1D30E8B1C();
    v30 = sub_1D30E92BC();

    v31 = os_log_type_enabled(v29, v30);
    v63 = a1;
    v64 = v5;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v70[0] = v62;
      *v32 = 136446466;
      sub_1D2FF1A68(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v61 = v30;
      v33 = sub_1D30E977C();
      v34 = v27;
      v35 = v4;
      v37 = v36;
      v69 = v5[1];
      (v69)(v34, v35);
      v38 = sub_1D2FFEA04(v33, v37, v70);
      v4 = v35;

      *(v32 + 4) = v38;
      *(v32 + 12) = 2082;
      *(v32 + 14) = sub_1D2FFEA04(v63, a2, v70);
      _os_log_impl(&dword_1D2FD9000, v29, v61, "Uninstalling the manifest at “%{public}s” for the app with the bundle ID “%{public}s”…", v32, 0x16u);
      v39 = v62;
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v39, -1, -1);
      MEMORY[0x1D38B3760](v32, -1, -1);
    }

    else
    {

      v69 = v5[1];
      (v69)(v27, v4);
    }

    v40 = objc_opt_self();
    v41 = [v40 defaultManager];
    sub_1D30E8D3C();
    v42 = sub_1D30E906C();

    v43 = [v41 fileExistsAtPath_];

    if (v43)
    {
      v44 = [v40 defaultManager];
      sub_1D30E8D3C();
      v45 = sub_1D30E906C();

      v70[0] = 0;
      v46 = [v44 removeItemAtPath:v45 error:v70];

      if (v46)
      {
        v47 = v70[0];
      }

      else
      {
        v57 = v70[0];
        sub_1D30E87DC();

        swift_willThrow();
      }

      result = (v69)(v13, v4);
    }

    else
    {
      (v65)(v9, v13, v4);

      v48 = sub_1D30E8B1C();
      v49 = sub_1D30E92BC();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v70[0] = v67;
        *v50 = 136446466;
        sub_1D2FF1A68(&unk_1EC749370, MEMORY[0x1E69E83A8]);
        v51 = sub_1D30E977C();
        v52 = v4;
        v60 = v4;
        v54 = v53;
        (v69)(v9, v52);
        v55 = sub_1D2FFEA04(v51, v54, v70);

        *(v50 + 4) = v55;
        *(v50 + 12) = 2082;
        *(v50 + 14) = sub_1D2FFEA04(v63, a2, v70);
        _os_log_impl(&dword_1D2FD9000, v48, v49, "No manifest exists at “%{public}s” for the app with the bundle ID “%{public}s”.", v50, 0x16u);
        v56 = v67;
        swift_arrayDestroy();
        MEMORY[0x1D38B3760](v56, -1, -1);
        MEMORY[0x1D38B3760](v50, -1, -1);

        result = (v69)(v13, v60);
      }

      else
      {

        v58 = v69;
        (v69)(v9, v4);
        result = v58(v13, v4);
      }
    }
  }

  v59 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1D2FEFCB8()
{
  v1 = v0;
  v2 = sub_1D30E866C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D30E88CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ManifestManagerError();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D2FF1A04(v1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        (*(v3 + 32))(v6, v15, v2);
        v39 = 0;
        v40 = 0xE000000000000000;
        sub_1D30E948C();

        v39 = 0x1000000000000016;
        v40 = 0x80000001D30EB080;
        sub_1D2FF1A68(&qword_1EC749488, MEMORY[0x1E69681B8]);
        v24 = sub_1D30E977C();
        MEMORY[0x1D38B2610](v24);

        MEMORY[0x1D38B2610](0x1000000000000010, 0x80000001D30EB0A0);
        v25 = v39;
        (*(v3 + 8))(v6, v2);
        return v25;
      }

      v34 = *v15;
      v35 = v15[1];
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x1000000000000031, 0x80000001D30EACA0);
      MEMORY[0x1D38B2610](v34, v35);

      v30 = " app with the bundle ID “";
      v31 = 0x1000000000000036;
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload)
    {
      (*(v8 + 32))(v11, v15, v7);
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_1D30E948C();

      v39 = 0x204C525520656854;
      v40 = 0xAB000000009C80E2;
      sub_1D2FF1A68(&qword_1EC7493D8, MEMORY[0x1E6968FB0]);
      v32 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v32);

      MEMORY[0x1D38B2610](0x69207369209D80E2, 0xAF2E64696C61766ELL);
      v33 = v39;
      (*(v8 + 8))(v11, v7);
      return v33;
    }

    v19 = v15[1];
    v18 = v15[2];
    v20 = v15[3];
    if (v19)
    {
      v21 = *v15;
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x1000000000000019, 0x80000001D30EB140);
      MEMORY[0x1D38B2610](v21, v19);

      v22 = "The actual bundle ID, “";
      v23 = 0x1000000000000030;
    }

    else
    {
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_1D30E948C();
      v22 = "The bundle ID is unavailable.";
      v23 = 0x1000000000000056;
    }

    MEMORY[0x1D38B2610](v23, v22 | 0x8000000000000000);
    MEMORY[0x1D38B2610](v18, v20);
LABEL_22:

    v31 = 782074082;
    v36 = 0xA400000000000000;
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v37 = *v15;
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x1000000000000018, 0x80000001D30EAFE0);
      v38[1] = v37;
      type metadata accessor for MIBetaTesterType(0);
      sub_1D30E955C();
      v31 = 0x75207369209D80E2;
      v36 = 0xAF2E6E776F6E6B6ELL;
      goto LABEL_23;
    }

    v26 = *v15;
    v27 = v15[1];
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1D30E948C();
    MEMORY[0x1D38B2610](0x100000000000003BLL, 0x80000001D30EB000);
    MEMORY[0x1D38B2610](v26, v27);
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v28 = *v15;
    v29 = v15[1];
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1D30E948C();
    MEMORY[0x1D38B2610](0x6972747320656854, 0xAE009C80E220676ELL);
    MEMORY[0x1D38B2610](v28, v29);

    v30 = "The file path “";
    v31 = 0x1000000000000027;
LABEL_17:
    v36 = v30 | 0x8000000000000000;
LABEL_23:
    MEMORY[0x1D38B2610](v31, v36);
    return v39;
  }

  if (EnumCaseMultiPayload == 7)
  {
    return 0xD00000000000001DLL;
  }

  else
  {
    return 0xD000000000000020;
  }
}

uint64_t type metadata accessor for ManifestManagerError()
{
  result = qword_1EC749470;
  if (!qword_1EC749470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2FF03B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2FF0424(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_1D30E8B6C();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = sub_1D30E852C();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2FF054C, 0, 0);
}

uint64_t sub_1D2FF054C()
{
  v34 = v0;
  if (qword_1EE3134F0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[3];
  v5 = sub_1D30E8B3C();
  __swift_project_value_buffer(v5, qword_1EE3134F8);
  v6 = sub_1D30E928C();
  v7 = *(v3 + 16);
  v7(v1, v4, v2);
  v8 = sub_1D30E8B1C();
  v9 = os_log_type_enabled(v8, v6);
  v10 = v0[10];
  v12 = v0[7];
  v11 = v0[8];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v13 = 136446210;
    sub_1D2FF1A68(&qword_1EC7493E8, MEMORY[0x1E6967EC8]);
    v31 = v6;
    v14 = v7;
    v15 = sub_1D30E977C();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v7 = v14;
    v19 = sub_1D2FFEA04(v18, v17, &v33);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1D2FD9000, v8, v31, "Manifest data for: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x1D38B3760](v32, -1, -1);
    MEMORY[0x1D38B3760](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  if (qword_1EC748FE8 != -1)
  {
    swift_once();
  }

  v20 = qword_1EC7493A8;
  v0[11] = qword_1EC7493A8;
  if (byte_1EC7493B0)
  {
    v0[2] = v20;
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493E0, &qword_1D30EF530);
    swift_willThrowTypedImpl();
    v23 = v0[9];
    v22 = v0[10];
    v24 = v0[6];

    v25 = v0[1];

    return v25();
  }

  else
  {
    v27 = v0[6];
    v7(v0[9], v0[3], v0[7]);

    sub_1D30E8B7C();
    v28 = *(MEMORY[0x1E69ADD60] + 4);
    v29 = swift_task_alloc();
    v0[12] = v29;
    *v29 = v0;
    v29[1] = sub_1D2FF08DC;
    v30 = v0[6];

    return MEMORY[0x1EEE1ADC8](v30);
  }
}

uint64_t sub_1D2FF08DC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 96);
  v8 = *v3;
  v6[13] = v2;

  v9 = v6[11];
  if (v2)
  {
    (*(v6[5] + 8))(v6[6], v6[4]);
    sub_1D2FF13A4(v9, 0);

    return MEMORY[0x1EEE6DFA0](sub_1D2FF0AC8, 0, 0);
  }

  else
  {
    v11 = v6[9];
    v10 = v6[10];
    (*(v6[5] + 8))(v6[6], v6[4]);
    sub_1D2FF13A4(v9, 0);

    v12 = *(v8 + 8);

    return v12(a1, a2);
  }
}

uint64_t sub_1D2FF0AC8()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D2FF0B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1D30E852C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1D30E88CC();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2FF0C80, 0, 0);
}

uint64_t sub_1D2FF0C80()
{
  v45 = v0;
  if (qword_1EE3134F0 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[4];
  v5 = v0[2];
  v6 = sub_1D30E8B3C();
  __swift_project_value_buffer(v6, qword_1EE3134F8);
  v7 = sub_1D30E928C();
  v8 = *(v3 + 16);
  v8(v1, v5, v2);

  v9 = sub_1D30E8B1C();

  v10 = os_log_type_enabled(v9, v7);
  v11 = v0[12];
  v13 = v0[8];
  v12 = v0[9];
  if (v10)
  {
    v39 = v0[3];
    v40 = v0[4];
    v14 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v44 = v41;
    *v14 = 136446466;
    sub_1D2FF1A68(&qword_1EC7493D8, MEMORY[0x1E6968FB0]);
    v15 = sub_1D30E977C();
    v16 = v8;
    v18 = v17;
    v43 = *(v12 + 8);
    v43(v11, v13);
    v19 = sub_1D2FFEA04(v15, v18, &v44);
    v8 = v16;

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_1D2FFEA04(v39, v40, &v44);
    _os_log_impl(&dword_1D2FD9000, v9, v7, "Manifest data at: %{public}s for app with bundle ID: %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v41, -1, -1);
    MEMORY[0x1D38B3760](v14, -1, -1);
  }

  else
  {

    v43 = *(v12 + 8);
    v43(v11, v13);
  }

  v20 = v0[4];
  v8(v0[11], v0[2], v0[8]);

  v21 = sub_1D30E8B1C();
  v22 = sub_1D30E92BC();

  v23 = os_log_type_enabled(v21, v22);
  v24 = v0[11];
  v25 = v0[8];
  v26 = v0[9];
  if (v23)
  {
    v42 = v8;
    v28 = v0[3];
    v27 = v0[4];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v44 = v30;
    *v29 = 136446466;
    *(v29 + 4) = sub_1D2FFEA04(v28, v27, &v44);
    *(v29 + 12) = 2082;
    sub_1D2FF1A68(&qword_1EC7493D8, MEMORY[0x1E6968FB0]);
    v31 = sub_1D30E977C();
    v33 = v32;
    v43(v24, v25);
    v34 = sub_1D2FFEA04(v31, v33, &v44);
    v8 = v42;

    *(v29 + 14) = v34;
    _os_log_impl(&dword_1D2FD9000, v21, v22, "Fetching the download manifest for the app with the bundle ID “%{public}s” at “%{public}s”…", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v30, -1, -1);
    MEMORY[0x1D38B3760](v29, -1, -1);
  }

  else
  {

    v43(v24, v25);
  }

  v35 = v0[7];
  v8(v0[10], v0[2], v0[8]);
  sub_1D30E851C();
  v36 = swift_task_alloc();
  v0[13] = v36;
  *v36 = v0;
  v36[1] = sub_1D2FF1150;
  v37 = v0[7];

  return sub_1D2FF0424(v37);
}

uint64_t sub_1D2FF1150(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 104);
  v7 = *v3;
  v7[14] = v2;

  if (v2)
  {
    (*(v7[6] + 8))(v7[7], v7[5]);

    return MEMORY[0x1EEE6DFA0](sub_1D2FF1318, 0, 0);
  }

  else
  {
    v9 = v7[11];
    v8 = v7[12];
    v10 = v7[10];
    (*(v7[6] + 8))(v7[7], v7[5]);

    v11 = v7[1];

    return v11(a1, a2);
  }
}

uint64_t sub_1D2FF1318()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];

  v5 = v0[1];
  v6 = v0[14];

  return v5();
}

void sub_1D2FF13A4(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1D2FF13B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2FF1430(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D2FF1494(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D2FF14DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D2FF153C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilePath.ResolutionError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D2FF15A8()
{
  result = qword_1EE314010;
  if (!qword_1EE314010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749460, &qword_1D30EF5D0);
    sub_1D2FF1634();
    sub_1D2FF16E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314010);
  }

  return result;
}

unint64_t sub_1D2FF1634()
{
  result = qword_1EE313FF8;
  if (!qword_1EE313FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749458, &qword_1D30EF5A0);
    sub_1D2FF1768(&qword_1EE313FE0, &qword_1EC749450, &unk_1D30FD100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE313FF8);
  }

  return result;
}

unint64_t sub_1D2FF16E4()
{
  result = qword_1EE314008;
  if (!qword_1EE314008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749448, &unk_1D30EF590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314008);
  }

  return result;
}

uint64_t sub_1D2FF1768(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D2FF17B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D2FF1804(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D2FF1858(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

void sub_1D2FF1884()
{
  sub_1D2FE3920();
  if (v0 <= 0x3F)
  {
    sub_1D30E88CC();
    if (v1 <= 0x3F)
    {
      sub_1D30E866C();
      if (v2 <= 0x3F)
      {
        sub_1D2FE38C0();
        if (v3 <= 0x3F)
        {
          sub_1D2FF195C();
          if (v4 <= 0x3F)
          {
            type metadata accessor for MIBetaTesterType(319);
            if (v5 <= 0x3F)
            {
              sub_1D2FF198C();
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D2FF195C()
{
  result = qword_1EE3140B8;
  if (!qword_1EE3140B8)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE3140B8);
  }

  return result;
}

uint64_t sub_1D2FF198C()
{
  result = qword_1EC749480;
  if (!qword_1EC749480)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EC749480);
  }

  return result;
}

uint64_t sub_1D2FF1A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManifestManagerError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2FF1A68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LicenseRecord.ElementID.globalID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v4;
}

uint64_t LicenseRecord.ElementID.versionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LicenseRecord.ElementID(0) + 20);
  v4 = sub_1D30E8A4C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LicenseRecord.ElementID.description.getter()
{
  v1 = v0;
  sub_1D30E948C();
  MEMORY[0x1D38B2610](0xD000000000000019, 0x80000001D30EB1A0);
  v8 = *v0;
  v10 = v0[1];
  v11 = *(v0 + 1);
  v12 = v0[4];
  v13 = v0[5];
  v2 = AssetPackRecord.GlobalID.description.getter();
  MEMORY[0x1D38B2610](v2);

  MEMORY[0x1D38B2610](0x6E6F697372657620, 0xED0000203A444920);
  v3 = type metadata accessor for LicenseRecord.ElementID(0);
  v4 = *(v3 + 20);
  sub_1D30E8A4C();
  sub_1D2FF675C(&qword_1EC749490, MEMORY[0x1E69695A8]);
  v5 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v5);

  MEMORY[0x1D38B2610](0xD000000000000016, 0x80000001D30EB1C0);
  v9 = *(v1 + *(v3 + 24));
  v6 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v6);

  MEMORY[0x1D38B2610](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D2FF1E04()
{
  v1 = 0x496E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44496C61626F6C67;
  }
}

uint64_t sub_1D2FF1E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D2FF6A78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D2FF1E90(uint64_t a1)
{
  v2 = sub_1D2FF66B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FF1ECC(uint64_t a1)
{
  v2 = sub_1D2FF66B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LicenseRecord.ElementID.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749498, &qword_1D30EF6B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2FF66B4();
  sub_1D30E992C();
  v11 = v3[1];
  v12 = v3[2];
  v13 = v3[5];
  v19 = *v3;
  v20 = v11;
  v21 = v12;
  v22 = *(v3 + 3);
  v23 = v13;
  v18[15] = 0;
  sub_1D2FF6708();

  sub_1D30E974C();

  if (!v2)
  {
    v14 = type metadata accessor for LicenseRecord.ElementID(0);
    v15 = *(v14 + 20);
    LOBYTE(v19) = 1;
    sub_1D30E8A4C();
    sub_1D2FF675C(&qword_1EC7494B0, MEMORY[0x1E69695A8]);
    sub_1D30E974C();
    v16 = *(v3 + *(v14 + 24));
    LOBYTE(v19) = 2;
    sub_1D30E975C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t LicenseRecord.ElementID.hashValue.getter()
{
  sub_1D30E98AC();
  v1 = type metadata accessor for LicenseRecord.ElementID(0);
  MEMORY[0x1D38B2E00](*(v0 + *(v1 + 24)));
  return sub_1D30E98EC();
}

uint64_t LicenseRecord.ElementID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_1D30E8A4C();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7494B8, &qword_1D30EF6B8);
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for LicenseRecord.ElementID(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D2FF66B4();
  sub_1D30E990C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v18 = v27;
  v35 = 0;
  sub_1D2FF67A4();
  sub_1D30E967C();
  v19 = v31;
  v20 = v33;
  v21 = v34;
  *v15 = v30;
  *(v15 + 1) = v19;
  *(v15 + 1) = v32;
  *(v15 + 4) = v20;
  *(v15 + 5) = v21;
  LOBYTE(v30) = 1;
  sub_1D2FF675C(&qword_1EC7494C8, MEMORY[0x1E69695A8]);
  sub_1D30E967C();
  (*(v26 + 32))(&v15[*(v12 + 20)], v7, v4);
  LOBYTE(v30) = 2;
  v22 = sub_1D30E969C();
  (*(v18 + 8))(v11, v28);
  *&v15[*(v12 + 24)] = v22;
  sub_1D2FF69B0(v15, v25, type metadata accessor for LicenseRecord.ElementID);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_1D2FF6A18(v15, type metadata accessor for LicenseRecord.ElementID);
}

uint64_t sub_1D2FF25D8(uint64_t a1)
{
  sub_1D30E98AC();
  MEMORY[0x1D38B2E00](*(v1 + *(a1 + 24)));
  return sub_1D30E98EC();
}

uint64_t sub_1D2FF2654(uint64_t a1, uint64_t a2)
{
  sub_1D30E98AC();
  MEMORY[0x1D38B2E00](*(v2 + *(a2 + 24)));
  return sub_1D30E98EC();
}

uint64_t sub_1D2FF26B4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749650, &qword_1D30F03C8);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749658, &qword_1D30F03D0);
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749660, &qword_1D30F03D8);
  v30 = *(v10 - 8);
  v31 = v10;
  v11 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749668, &qword_1D30F03E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - v17;
  v19 = v1[1];
  v37 = *v1;
  v28 = v19;
  v20 = *(v1 + 2);
  v29 = *(v1 + 1);
  v38 = v20;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2FF864C();
  sub_1D30E992C();
  v22 = (*(&v38 + 1) >> 60) & 3;
  if (!v22)
  {
    LOBYTE(v39) = 1;
    sub_1D2FF86F4();
    sub_1D30E96DC();
    v39 = v37;
    v40 = v28;
    v42 = v38;
    v41 = v29;
    sub_1D2FF87F0();
    v25 = v33;
    sub_1D30E974C();
    (*(v32 + 8))(v9, v25);
    return (*(v15 + 8))(v18, v14);
  }

  if (v22 == 1)
  {
    LOBYTE(v39) = 2;
    sub_1D2FF86A0();
    v23 = v34;
    sub_1D30E96DC();
    v39 = v37;
    sub_1D2FE0630();
    v24 = v36;
    sub_1D30E974C();
    (*(v35 + 8))(v23, v24);
    return (*(v15 + 8))(v18, v14);
  }

  LOBYTE(v39) = 0;
  sub_1D2FF879C();
  sub_1D30E96DC();
  (*(v30 + 8))(v13, v31);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1D2FF2AEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749608, &qword_1D30F03A8);
  v45 = *(v42 - 8);
  v3 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v48 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749610, &qword_1D30F03B0);
  v6 = *(v5 - 8);
  v43 = v5;
  v44 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749618, &qword_1D30F03B8);
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749620, &qword_1D30F03C0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v42 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D2FF864C();
  v21 = v49;
  sub_1D30E990C();
  if (!v21)
  {
    v49 = 0;
    v22 = v47;
    v23 = sub_1D30E96AC();
    v24 = (2 * *(v23 + 16)) | 1;
    v54 = v23;
    v55 = v23 + 32;
    v56 = 0;
    v57 = v24;
    v25 = sub_1D302D668();
    if (v25 == 3 || v56 != v57 >> 1)
    {
      v33 = sub_1D30E94EC();
      swift_allocError();
      v34 = v18;
      v36 = v35;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7492A0, &qword_1D30EED30) + 48);
      *v36 = &type metadata for LicenseRecord.State;
      sub_1D30E960C();
      sub_1D30E94DC();
      (*(*(v33 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v33);
      swift_willThrow();
      (*(v15 + 8))(v34, v14);
    }

    else
    {
      if (v25)
      {
        if (v25 == 1)
        {
          LOBYTE(v50) = 1;
          sub_1D2FF86F4();
          v26 = v49;
          sub_1D30E95FC();
          if (!v26)
          {
            sub_1D2FF8748();
            v27 = v43;
            sub_1D30E967C();
            (*(v44 + 8))(v9, v27);
            (*(v15 + 8))(v18, v14);
            swift_unknownObjectRelease();
            v28 = v50;
            v29 = v51;
            v31 = v52;
            v30 = v53;
            v32 = v46;
LABEL_16:
            *v32 = v28;
            *(v32 + 8) = v29;
            *(v32 + 16) = v31;
            *(v32 + 32) = v30;
            return __swift_destroy_boxed_opaque_existential_1(v58);
          }
        }

        else
        {
          LOBYTE(v50) = 2;
          sub_1D2FF86A0();
          v40 = v49;
          sub_1D30E95FC();
          v32 = v46;
          if (!v40)
          {
            v49 = v18;
            sub_1D2FE072C();
            v41 = v42;
            sub_1D30E967C();
            (*(v45 + 8))(0, v41);
            (*(v15 + 8))(v49, v14);
            swift_unknownObjectRelease();
            v29 = 0;
            v28 = v50;
            v30 = xmmword_1D30EF690;
            v31 = 0uLL;
            goto LABEL_16;
          }
        }
      }

      else
      {
        LOBYTE(v50) = 0;
        sub_1D2FF879C();
        v39 = v49;
        sub_1D30E95FC();
        if (!v39)
        {
          (*(v22 + 8))(v13, v10);
          (*(v15 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v28 = 0;
          v29 = 0;
          v30 = xmmword_1D30EF6A0;
          v31 = 0uLL;
          v32 = v46;
          goto LABEL_16;
        }
      }

      (*(v15 + 8))(v18, v14);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v58);
}

uint64_t sub_1D2FF3140(uint64_t a1)
{
  v2 = sub_1D2FF864C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FF317C(uint64_t a1)
{
  v2 = sub_1D2FF864C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2FF31B8(uint64_t a1)
{
  v2 = sub_1D2FF86A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FF31F4(uint64_t a1)
{
  v2 = sub_1D2FF86A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2FF3230(uint64_t a1)
{
  v2 = sub_1D2FF879C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FF326C(uint64_t a1)
{
  v2 = sub_1D2FF879C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2FF32B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D30E97CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D2FF3334(uint64_t a1)
{
  v2 = sub_1D2FF86F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FF3370(uint64_t a1)
{
  v2 = sub_1D2FF86F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2FF33DC()
{
  v1 = (*(v0 + 40) >> 60) & 3;
  v2 = 0x676E69646E6550;
  if (v1 == 1)
  {
    v2 = 0x65726576696C6544;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x6574736575716552;
  }
}

uint64_t sub_1D2FF3444(void *a1, int a2)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749550, &qword_1D30EFDB8);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749558, &qword_1D30EFDC0);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749560, &qword_1D30EFDC8);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749568, &qword_1D30EFDD0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2FF7EA8();
  sub_1D30E992C();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_1D2FF7F50();
      sub_1D30E96DC();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_1D2FF7EFC();
      v21 = v27;
      sub_1D30E96DC();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_1D2FF7FA4();
    sub_1D30E96DC();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

uint64_t sub_1D2FF37C4(uint64_t a1)
{
  v2 = sub_1D2FF7EA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FF3800(uint64_t a1)
{
  v2 = sub_1D2FF7EA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2FF383C(uint64_t a1)
{
  v2 = sub_1D2FF7EFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FF3878(uint64_t a1)
{
  v2 = sub_1D2FF7EFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2FF38B4(uint64_t a1)
{
  v2 = sub_1D2FF7FA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FF38F0(uint64_t a1)
{
  v2 = sub_1D2FF7FA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2FF392C(uint64_t a1)
{
  v2 = sub_1D2FF7F50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FF3968(uint64_t a1)
{
  v2 = sub_1D2FF7F50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2FF39A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D2FF6BA0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D2FF39EC()
{
  v1 = 0x6574736575716552;
  if (*v0 != 1)
  {
    v1 = 0x65726576696C6544;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69646E6550;
  }
}

uint64_t LicenseRecord.StaticRepresentation.description.getter()
{
  v1 = v0;
  sub_1D30E948C();
  MEMORY[0x1D38B2610](0xD000000000000025, 0x80000001D30EB1E0);
  v12 = *v0;
  v2 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v2);

  MEMORY[0x1D38B2610](0x746E656D656C6520, 0xEE00203A73444920);
  v3 = v0[1];
  v4 = type metadata accessor for LicenseRecord.ElementID(0);
  v5 = MEMORY[0x1D38B26B0](v3, v4);
  MEMORY[0x1D38B2610](v5);

  MEMORY[0x1D38B2610](0x203A657461747320, 0xE800000000000000);
  v6 = 0x6574736575716552;
  if (*(v1 + 16) != 1)
  {
    v6 = 0x65726576696C6544;
  }

  if (*(v1 + 16))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x676E69646E6550;
  }

  if (*(v1 + 16))
  {
    v8 = 0xE900000000000064;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  MEMORY[0x1D38B2610](v7, v8);

  MEMORY[0x1D38B2610](0x7473657571657220, 0xEF203A6574616420);
  v9 = *(type metadata accessor for LicenseRecord.StaticRepresentation(0) + 28);
  sub_1D30E8A2C();
  sub_1D2FF675C(&qword_1EC7494D0, MEMORY[0x1E6969530]);
  v10 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v10);

  MEMORY[0x1D38B2610](62, 0xE100000000000000);
  return 0;
}

uint64_t static LicenseRecord.StaticRepresentation.< infix(_:_:)(void *a1, void *a2)
{
  v4 = *(type metadata accessor for LicenseRecord.StaticRepresentation(0) + 28);
  if (sub_1D30E89FC())
  {
    return *a1 < *a2;
  }

  return sub_1D30E89EC();
}

uint64_t sub_1D2FF3D24()
{
  v1 = 0x4965736E6563696CLL;
  v2 = 0x6574617473;
  if (*v0 != 2)
  {
    v2 = 0x4474736575716572;
  }

  if (*v0)
  {
    v1 = 0x49746E656D656C65;
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

uint64_t sub_1D2FF3DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D2FF7110(a1, a2);
  *a3 = result;
  return result;
}
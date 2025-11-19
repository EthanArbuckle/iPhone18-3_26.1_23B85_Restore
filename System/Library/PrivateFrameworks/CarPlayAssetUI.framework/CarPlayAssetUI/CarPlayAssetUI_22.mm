unint64_t sub_242E21ED0()
{
  result = qword_27ECF86B0;
  if (!qword_27ECF86B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF86B0);
  }

  return result;
}

uint64_t sub_242E21F24(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF86B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s14CarPlayAssetUI5ThemeO7ColorIDO10genericIDsSayAEGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF87A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F09530;
  v1 = MEMORY[0x277D84F90];
  v38 = MEMORY[0x277D84F90];
  sub_242E3BCD0(0, 53, 0);
  v2 = v38;
  v3 = *(v38 + 16);
  v4 = 24 * v3;
  v5 = -1272;
  v6 = &byte_28557AC98;
  do
  {
    v8 = *v6++;
    v7 = v8;
    v39 = v2;
    v9 = *(v2 + 24);
    v10 = v3 + 1;
    if (v3 >= v9 >> 1)
    {
      sub_242E3BCD0((v9 > 1), v3 + 1, 1);
      v2 = v39;
    }

    *(v2 + 16) = v10;
    v11 = v2 + v4 + v5;
    *(v11 + 1304) = v7;
    *(v11 + 1312) = 0;
    *(v11 + 1320) = 0;
    v3 = v10;
    v5 += 24;
  }

  while (v5);
  *(inited + 32) = v2;
  sub_242E3BCD0(0, 46, 0);
  v12 = v1;
  v13 = *(v1 + 16);
  v14 = 24 * v13;
  v15 = -1104;
  v16 = &byte_28557ACF0;
  do
  {
    v18 = *v16++;
    v17 = v18;
    v40 = v12;
    v19 = *(v12 + 24);
    v20 = v13 + 1;
    if (v13 >= v19 >> 1)
    {
      sub_242E3BCD0((v19 > 1), v13 + 1, 1);
      v12 = v40;
    }

    *(v12 + 16) = v20;
    v21 = v12 + v14 + v15;
    *(v21 + 1136) = v17;
    *(v21 + 1144) = 0;
    *(v21 + 1152) = 1;
    v13 = v20;
    v15 += 24;
  }

  while (v15);
  *(inited + 40) = v12;
  sub_242E3BCD0(0, 31, 0);
  v22 = v1;
  v23 = *(v1 + 16);
  v24 = 24 * v23;
  v25 = -744;
  v26 = &byte_28557AD68;
  do
  {
    v28 = *v26++;
    v27 = v28;
    v41 = v22;
    v29 = *(v22 + 24);
    v30 = v23 + 1;
    if (v23 >= v29 >> 1)
    {
      sub_242E3BCD0((v29 > 1), v23 + 1, 1);
      v22 = v41;
    }

    *(v22 + 16) = v30;
    v31 = v22 + v24 + v25;
    *(v31 + 776) = v27;
    *(v31 + 784) = 0;
    *(v31 + 792) = 2;
    v23 = v30;
    v25 += 24;
  }

  while (v25);
  *(inited + 48) = v22;
  v42 = v1;
  sub_242E3BCD0(0, 1, 0);
  v32 = v1;
  v34 = *(v1 + 16);
  v33 = *(v42 + 24);
  if (v34 >= v33 >> 1)
  {
    sub_242E3BCD0((v33 > 1), v34 + 1, 1);
    v32 = v42;
  }

  *(v32 + 16) = v34 + 1;
  v35 = v32 + 24 * v34;
  *(v35 + 32) = 0;
  *(v35 + 40) = 0;
  *(v35 + 48) = 3;
  *(inited + 56) = v32;
  v36 = sub_242C80390(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF86F0);
  swift_arrayDestroy();
  return v36;
}

uint64_t _s14CarPlayAssetUI5ThemeO7ColorIDO8allCasesSayAEGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF87A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F0A4E0;
  *(inited + 32) = _s14CarPlayAssetUI5ThemeO7ColorIDO10genericIDsSayAEGvgZ_0();
  swift_beginAccess();
  v1 = off_27ECF8698;
  v2 = MEMORY[0x277D84F90];
  if (off_27ECF8698)
  {

    v4 = v1(v3);
    sub_242C655DC(v1);
    v5 = *(v4 + 16);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_9:

    v6 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v4 = MEMORY[0x277D84F90];
  v5 = *(MEMORY[0x277D84F90] + 16);
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_3:
  v15 = inited;
  sub_242E3BCD0(0, v5, 0);
  v6 = v2;
  v7 = (v4 + 40);
  do
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    v11 = *(v6 + 16);
    v10 = *(v6 + 24);

    if (v11 >= v10 >> 1)
    {
      sub_242E3BCD0((v10 > 1), v11 + 1, 1);
    }

    *(v6 + 16) = v11 + 1;
    v12 = v6 + 24 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v9;
    *(v12 + 48) = 4;
    v7 += 2;
    --v5;
  }

  while (v5);

  inited = v15;
LABEL_10:
  *(inited + 40) = v6;
  v13 = sub_242C80390(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF86F0);
  swift_arrayDestroy();
  return v13;
}

unint64_t sub_242E2246C(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_242F05140();
  }

  __break(1u);
  return result;
}

unint64_t sub_242E224B8()
{
  result = qword_27ECF86D8;
  if (!qword_27ECF86D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF86D8);
  }

  return result;
}

unint64_t sub_242E22510()
{
  result = qword_27ECF86E0;
  if (!qword_27ECF86E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF86E0);
  }

  return result;
}

unint64_t sub_242E22598()
{
  result = qword_27ECF86F8;
  if (!qword_27ECF86F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF86F8);
  }

  return result;
}

unint64_t sub_242E22620()
{
  result = qword_27ECF8710;
  if (!qword_27ECF8710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8710);
  }

  return result;
}

unint64_t sub_242E226A8()
{
  result = qword_27ECF8728;
  if (!qword_27ECF8728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8728);
  }

  return result;
}

unint64_t sub_242E22730()
{
  result = qword_27ECF8740;
  if (!qword_27ECF8740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8740);
  }

  return result;
}

uint64_t sub_242E227E4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Theme.RadialColorID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCC)
  {
    goto LABEL_17;
  }

  if (a2 + 52 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 52) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 52;
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

      return (*a1 | (v4 << 8)) - 52;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 52;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x35;
  v8 = v6 - 53;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Theme.RadialColorID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 52 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 52) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCC)
  {
    v4 = 0;
  }

  if (a2 > 0xCB)
  {
    v5 = ((a2 - 204) >> 8) + 1;
    *result = a2 + 52;
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
    *result = a2 + 52;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Theme.ModularColorID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD3)
  {
    goto LABEL_17;
  }

  if (a2 + 45 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 45) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 45;
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

      return (*a1 | (v4 << 8)) - 45;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 45;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2E;
  v8 = v6 - 46;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Theme.ModularColorID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 45 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 45) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD3)
  {
    v4 = 0;
  }

  if (a2 > 0xD2)
  {
    v5 = ((a2 - 211) >> 8) + 1;
    *result = a2 + 45;
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
    *result = a2 + 45;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Theme.MapsMediaColorID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 30;
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

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Theme.MapsMediaColorID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_242E22CD8()
{
  result = qword_27ECF8768;
  if (!qword_27ECF8768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8768);
  }

  return result;
}

unint64_t sub_242E22D30()
{
  result = qword_27ECF8770;
  if (!qword_27ECF8770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8770);
  }

  return result;
}

unint64_t sub_242E22D88()
{
  result = qword_27ECF8778;
  if (!qword_27ECF8778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8778);
  }

  return result;
}

unint64_t sub_242E22DDC()
{
  result = qword_27ECF8780;
  if (!qword_27ECF8780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8780);
  }

  return result;
}

unint64_t sub_242E22E30()
{
  result = qword_27ECF8788;
  if (!qword_27ECF8788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8788);
  }

  return result;
}

unint64_t sub_242E22E84()
{
  result = qword_27ECF8790;
  if (!qword_27ECF8790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8790);
  }

  return result;
}

unint64_t sub_242E22ED8()
{
  result = qword_27ECF8798;
  if (!qword_27ECF8798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8798);
  }

  return result;
}

unint64_t sub_242E22F2C()
{
  result = qword_27ECF87A0;
  if (!qword_27ECF87A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF87A0);
  }

  return result;
}

uint64_t sub_242E22F80@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x250uLL);
  memcpy(v37, __src, sizeof(v37));
  v5 = Display.assets.getter();
  sub_242C6CE30(__dst);
  v6 = sub_242E23870(v5);
  v8 = v7;

  if (v2)
  {
    return result;
  }

  v32 = v6;
  v33 = a2;
  v10 = sub_242CE68D0(MEMORY[0x277D84F90]);
  v35 = *(v8 + 16);
  if (!v35)
  {
LABEL_18:

    *v33 = v10;
    v33[1] = v32;
    return result;
  }

  v11 = 0;
  v12 = v8 + 32;
  v34 = v8;
  while (v11 < *(v8 + 16))
  {
    sub_242C6CF00(v12, v37);
    v14 = v37[3];
    v15 = v37[4];
    __swift_project_boxed_opaque_existential_2Tm(v37, v37[3]);
    v16 = (*(v15 + 8))(v14, v15);
    v18 = v17;
    sub_242C6CF00(v37, v36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v10;
    v21 = sub_242CE519C(v16, v18);
    v22 = v10[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_21;
    }

    v25 = v20;
    if (v10[3] >= v24)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v20)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_242D01220();
        if (v25)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_242D041E4(v24, isUniquelyReferenced_nonNull_native);
      v26 = sub_242CE519C(v16, v18);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_23;
      }

      v21 = v26;
      if (v25)
      {
LABEL_4:

        v10 = v39;
        v13 = v39[7] + 40 * v21;
        __swift_destroy_boxed_opaque_existential_2Tm(v13);
        sub_242C65564(v36, v13);
        goto LABEL_5;
      }
    }

    v10 = v39;
    v39[(v21 >> 6) + 8] |= 1 << v21;
    v28 = (v10[6] + 16 * v21);
    *v28 = v16;
    v28[1] = v18;
    sub_242C65564(v36, v10[7] + 40 * v21);
    v29 = v10[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_22;
    }

    v10[2] = v31;
LABEL_5:
    ++v11;
    __swift_destroy_boxed_opaque_existential_2Tm(v37);
    v12 += 40;
    v8 = v34;
    if (v35 == v11)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_242F06320();
  __break(1u);
  return result;
}

uint64_t AssetManifestEntry.path.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AssetManifestEntry.path.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_242E2331C()
{
  v1 = 0x7079547465737361;
  if (*v0 != 1)
  {
    v1 = 0x74616E6974736564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1752457584;
  }
}

uint64_t sub_242E2337C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E24870(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242E233A4(uint64_t a1)
{
  v2 = sub_242E2463C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E233E0(uint64_t a1)
{
  v2 = sub_242E2463C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssetManifestEntry.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF87B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - v6;
  v15 = *(v1 + 16);
  v14[0] = *(v1 + 24);
  v8 = a1[3];
  v9 = a1;
  v11 = v10;
  __swift_project_boxed_opaque_existential_2Tm(v9, v8);
  sub_242E2463C();
  sub_242F064C0();
  v19 = 0;
  sub_242F05EC0();
  if (!v2)
  {
    v12 = v14[0];
    v18 = v15;
    v17 = 1;
    sub_242E24690();
    sub_242F05F20();
    v14[1] = v12;
    v16 = 2;
    sub_242D6F59C();
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v11);
}

uint64_t AssetManifestEntry.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF87C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E2463C();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v20 = 0;
  v9 = sub_242F05DA0();
  v11 = v10;
  v12 = v9;
  v18 = 1;
  sub_242E246E4();
  sub_242F05E00();
  v16 = v19;
  v17 = 2;
  sub_242D6F644();
  sub_242F05E00();
  (*(v6 + 8))(v8, v5);
  v14 = v15[1];
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v16;
  *(a2 + 24) = v14;

  __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242E23870(uint64_t a1)
{
  v130 = sub_242F03720();
  v2 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v129 = v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_242F03390();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_242F033A0();
  MEMORY[0x28223BE20](v7);
  v11 = v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v124[1] = v6;
    v125 = v11;
    v126 = v9;
    v127 = v8;
    v13 = a1 + 32;
    v128 = (v2 + 8);
    v14 = MEMORY[0x277D84F98];
    v15 = MEMORY[0x277D84F98];
    while (1)
    {
      sub_242C6CF00(v13, &v141);
      v31 = v142;
      v32 = v143;
      __swift_project_boxed_opaque_existential_2Tm(&v141, v142);
      v33 = (*(v32 + 8))(v31, v32);
      v35 = *(v15 + 16);
      v133 = v12;
      v144 = v13;
      if (!v35)
      {

LABEL_14:
        v132 = v15;
        v62 = v142;
        v63 = v143;
        __swift_project_boxed_opaque_existential_2Tm(&v141, v142);
        *&v134 = (*(v63 + 32))(v62, v63);
        *(&v134 + 1) = v64;
        v139 = 47;
        v140 = 0xE100000000000000;
        v137 = 95;
        v138 = 0xE100000000000000;
        sub_242C6CB78();
        v65 = sub_242F058D0();
        v15 = v66;

        v67 = HIBYTE(v15) & 0xF;
        if ((v15 & 0x2000000000000000) == 0)
        {
          v67 = v65 & 0xFFFFFFFFFFFFLL;
        }

        if (!v67)
        {
LABEL_59:

          sub_242F03380();
LABEL_60:
          sub_242CE678C(MEMORY[0x277D84F90]);
          sub_242D6F49C();
          v121 = v125;
          v122 = v127;
          sub_242F035C0();
          sub_242F03310();
          (*(v126 + 8))(v121, v122);
          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_2Tm(&v141);

          return v15;
        }

        v68 = v142;
        v69 = v143;
        __swift_project_boxed_opaque_existential_2Tm(&v141, v142);
        (*(v69 + 16))(&v139, v68, v69);
        *&v134 = 0;
        *(&v134 + 1) = 0xE000000000000000;
        if (v139)
        {
          if (v139 == 1)
          {
            v70 = 0x73746E6F46;
          }

          else
          {
            v70 = 0x656372756F736552;
          }

          if (v139 == 1)
          {
            v71 = 0xE500000000000000;
          }

          else
          {
            v71 = 0xE900000000000073;
          }
        }

        else
        {
          v71 = 0xE600000000000000;
          v70 = 0x736567616D49;
        }

        MEMORY[0x245D26660](v70, v71);

        MEMORY[0x245D26660](47, 0xE100000000000000);
        MEMORY[0x245D26660](v65, v15);
        v72 = *(&v134 + 1);
        v73 = v134;
        if (*(v14 + 16) && (v74 = sub_242CE519C(v134, *(&v134 + 1)), (v75 & 1) != 0))
        {
          sub_242C6CF00(*(v14 + 56) + 40 * v74, &v134);

          sub_242E24994(&v134);
          v76 = sub_242F04F00();
          v77 = [v76 stringByDeletingPathExtension];

          v78 = sub_242F04F30();
          v80 = v79;

          v81 = sub_242F04F00();

          v82 = [v81 pathExtension];

          v83 = sub_242F04F30();
          v85 = v84;

          *&v134 = v78;
          *(&v134 + 1) = v80;
          MEMORY[0x245D26660](95, 0xE100000000000000);
          v86 = v142;
          v87 = v143;
          __swift_project_boxed_opaque_existential_2Tm(&v141, v142);
          v88 = (*(v87 + 8))(v86, v87);
          MEMORY[0x245D26660](v88);

          MEMORY[0x245D26660](46, 0xE100000000000000);
          MEMORY[0x245D26660](v83, v85);

          v139 = 47;
          v140 = 0xE100000000000000;
          v137 = 95;
          v138 = 0xE100000000000000;
          v89 = sub_242F058D0();
          v91 = v90;

          v92 = HIBYTE(v91) & 0xF;
          if ((v91 & 0x2000000000000000) == 0)
          {
            v92 = v89 & 0xFFFFFFFFFFFFLL;
          }

          if (!v92)
          {
            goto LABEL_59;
          }

          v93 = v142;
          v94 = v143;
          __swift_project_boxed_opaque_existential_2Tm(&v141, v142);
          (*(v94 + 16))(&v139, v93, v94);
          *&v134 = 0;
          *(&v134 + 1) = 0xE000000000000000;
          if (v139)
          {
            if (v139 == 1)
            {
              v95 = 0x73746E6F46;
            }

            else
            {
              v95 = 0x656372756F736552;
            }

            if (v139 == 1)
            {
              v96 = 0xE500000000000000;
            }

            else
            {
              v96 = 0xE900000000000073;
            }
          }

          else
          {
            v96 = 0xE600000000000000;
            v95 = 0x736567616D49;
          }

          MEMORY[0x245D26660](v95, v96);

          MEMORY[0x245D26660](47, 0xE100000000000000);
          MEMORY[0x245D26660](v89, v91);

          v72 = *(&v134 + 1);
          v73 = v134;
          if (*(v14 + 16))
          {
            v100 = sub_242CE519C(v134, *(&v134 + 1));
            if (v101)
            {
              sub_242C6CF00(*(v14 + 56) + 40 * v100, &v134);

              sub_242E24994(&v134);
              v102 = v129;
              sub_242F03710();
              v103 = sub_242F036F0();
              v105 = v104;
              (*v128)(v102, v130);
              v106 = v142;
              v107 = v143;
              __swift_project_boxed_opaque_existential_2Tm(&v141, v142);
              (*(v107 + 16))(&v139, v106, v107);
              *&v134 = 0;
              *(&v134 + 1) = 0xE000000000000000;
              if (v139)
              {
                if (v139 == 1)
                {
                  v108 = 0xE500000000000000;
                  v109 = 0x73746E6F46;
                }

                else
                {
                  v109 = 0x656372756F736552;
                  v108 = 0xE900000000000073;
                }
              }

              else
              {
                v108 = 0xE600000000000000;
                v109 = 0x736567616D49;
              }

              MEMORY[0x245D26660](v109, v108);

              MEMORY[0x245D26660](47, 0xE100000000000000);
              MEMORY[0x245D26660](v103, v105);

              v72 = *(&v134 + 1);
              v73 = v134;
              if (*(v14 + 16))
              {
                v110 = sub_242CE519C(v134, *(&v134 + 1));
                if (v111)
                {
                  sub_242C6CF00(*(v14 + 56) + 40 * v110, &v134);

                  sub_242E24994(&v134);
                  sub_242F03370();
                  goto LABEL_60;
                }
              }
            }
          }

          v136 = 0;
          v134 = 0u;
          v135 = 0u;
        }

        else
        {
          v136 = 0;
          v134 = 0u;
          v135 = 0u;
        }

        sub_242E24994(&v134);
        v16 = v142;
        v17 = v143;
        __swift_project_boxed_opaque_existential_2Tm(&v141, v142);
        v18 = (*(v17 + 8))(v16, v17);
        v20 = v19;
        v21 = v142;
        v22 = v143;
        __swift_project_boxed_opaque_existential_2Tm(&v141, v142);
        (*(v22 + 16))(&v139, v21, v22);
        v23 = v142;
        v24 = v143;
        v25 = v139;
        __swift_project_boxed_opaque_existential_2Tm(&v141, v142);
        (*(v24 + 24))(&v134, v23, v24);
        v26 = v134;

        v27 = v132;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v134 = v27;
        sub_242CDE0E8(v73, v72, v25, v26, v18, v20, isUniquelyReferenced_nonNull_native);

        v15 = v134;
        sub_242C6CF00(&v141, &v134);
        v29 = swift_isUniquelyReferenced_nonNull_native();
        v139 = v14;
        sub_242CDDF94(&v134, v73, v72, v29);

        v14 = v139;
LABEL_5:
        v30 = v144;
        goto LABEL_6;
      }

      v36 = sub_242CE519C(v33, v34);
      v38 = v37;

      if ((v38 & 1) == 0)
      {
        goto LABEL_14;
      }

      v131 = v14;
      v39 = *(v15 + 56) + 32 * v36;
      v41 = *v39;
      v40 = *(v39 + 8);
      LODWORD(v132) = *(v39 + 16);
      v42 = *(v39 + 24);
      v43 = v142;
      v44 = v143;
      __swift_project_boxed_opaque_existential_2Tm(&v141, v142);
      v45 = *(v44 + 24);

      v45(&v134, v43, v44);
      v46 = v134;
      v47 = v142;
      v48 = v143;
      __swift_project_boxed_opaque_existential_2Tm(&v141, v142);
      v49 = (*(v48 + 8))(v47, v48);
      v51 = v50;
      v52 = v15;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      *&v134 = v52;
      v54 = sub_242CE519C(v49, v51);
      v56 = v52[2];
      v57 = (v55 & 1) == 0;
      v58 = __OFADD__(v56, v57);
      v59 = v56 + v57;
      if (v58)
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        result = sub_242F06320();
        __break(1u);
        return result;
      }

      v60 = v55;
      if (v52[3] < v59)
      {
        break;
      }

      if (v53)
      {
        goto LABEL_38;
      }

      v112 = v54;
      sub_242D013C8();
      v54 = v112;
      v97 = v46 | v42;
      if (v60)
      {
LABEL_39:
        v98 = v54;

        v15 = v134;
        v99 = *(v134 + 56) + 32 * v98;
        *v99 = v41;
        *(v99 + 8) = v40;
        *(v99 + 16) = v132;
        *(v99 + 24) = v97;

        v14 = v131;
        goto LABEL_5;
      }

LABEL_52:
      v15 = v134;
      *(v134 + 8 * (v54 >> 6) + 64) |= 1 << v54;
      v113 = (*(v15 + 48) + 16 * v54);
      *v113 = v49;
      v113[1] = v51;
      v114 = *(v15 + 56) + 32 * v54;
      *v114 = v41;
      *(v114 + 8) = v40;
      *(v114 + 16) = v132;
      *(v114 + 24) = v97;
      v115 = *(v15 + 16);
      v58 = __OFADD__(v115, 1);
      v116 = v115 + 1;
      v30 = v144;
      if (v58)
      {
        goto LABEL_64;
      }

      *(v15 + 16) = v116;
      v14 = v131;
LABEL_6:
      __swift_destroy_boxed_opaque_existential_2Tm(&v141);
      v13 = v30 + 40;
      v12 = v133 - 1;
      if (v133 == 1)
      {
        goto LABEL_55;
      }
    }

    sub_242D044A8(v59, v53);
    v54 = sub_242CE519C(v49, v51);
    if ((v60 & 1) != (v61 & 1))
    {
      goto LABEL_66;
    }

LABEL_38:
    v97 = v46 | v42;
    if (v60)
    {
      goto LABEL_39;
    }

    goto LABEL_52;
  }

  v14 = MEMORY[0x277D84F98];
  v15 = MEMORY[0x277D84F98];
LABEL_55:
  v117 = *(v14 + 16);
  if (v117)
  {
    v118 = v14;
    v119 = sub_242CDD9E0(*(v14 + 16), 0);
    v120 = sub_242CDFFD0(&v141, (v119 + 4), v117, v118);

    sub_242C6548C();
    if (v120 != v117)
    {
      goto LABEL_65;
    }
  }

  else
  {
  }

  return v15;
}

BOOL _s14CarPlayAssetUI0C13ManifestEntryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (sub_242F06110() & 1) != 0)
  {
    v7 = 0xE400000000000000;
    v8 = 1953394534;
    if (v2 != 1)
    {
      v8 = 0x656372756F736572;
      v7 = 0xE800000000000000;
    }

    if (v2)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x6567616D69;
    }

    if (v2)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    v11 = 0xE400000000000000;
    v12 = 1953394534;
    if (v4 != 1)
    {
      v12 = 0x656372756F736572;
      v11 = 0xE800000000000000;
    }

    if (v4)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0x6567616D69;
    }

    if (v4)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    if (v9 == v13 && v10 == v14)
    {

      return v3 == v5;
    }

    v15 = sub_242F06110();

    if (v15)
    {
      return v3 == v5;
    }
  }

  return 0;
}

unint64_t sub_242E2463C()
{
  result = qword_27ECF87B8;
  if (!qword_27ECF87B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF87B8);
  }

  return result;
}

unint64_t sub_242E24690()
{
  result = qword_27ECF87C0;
  if (!qword_27ECF87C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF87C0);
  }

  return result;
}

unint64_t sub_242E246E4()
{
  result = qword_27ECF87D0;
  if (!qword_27ECF87D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF87D0);
  }

  return result;
}

unint64_t sub_242E2476C()
{
  result = qword_27ECF87D8;
  if (!qword_27ECF87D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF87D8);
  }

  return result;
}

unint64_t sub_242E247C4()
{
  result = qword_27ECF87E0;
  if (!qword_27ECF87E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF87E0);
  }

  return result;
}

unint64_t sub_242E2481C()
{
  result = qword_27ECF87E8;
  if (!qword_27ECF87E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF87E8);
  }

  return result;
}

uint64_t sub_242E24870(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1752457584 && a2 == 0xE400000000000000;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7079547465737361 && a2 == 0xE900000000000065 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69)
  {

    return 2;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t sub_242E24994(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFAD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static DecodableDefault.== infix(_:_:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_242F04EE0() & 1;
}

uint64_t DecodableNil.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_242F05860();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DecodableNil.wrappedValue.setter(uint64_t a1)
{
  v3 = sub_242F05860();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DecodableNil.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(*(a1 - 8) + 56);
  (v6)((a1 - 8), a2, 1, 1, a1);
  v4 = sub_242F05860();
  (*(*(v4 - 8) + 8))(a2, v4);

  return v6(a2, 1, 1, a1);
}

uint64_t DecodableNil.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  v5 = sub_242F05860();
  v6 = *(*(v5 - 8) + 40);

  return v6(a3, a1, v5);
}

uint64_t DecodableNil.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a6;
  v11 = sub_242F05860();
  v12 = *(v11 - 8);
  v29 = v11;
  v30 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  v35[0] = a2;
  v35[1] = a3;
  v28 = a3;
  v35[2] = a4;
  v36 = a5;
  v37 = type metadata accessor for DecodableNil();
  v33 = *(v37 - 8);
  v15 = MEMORY[0x28223BE20](v37);
  v17 = &v26 - v16;
  v18 = *(a2 - 8);
  v19 = *(v18 + 56);
  v20 = v18 + 56;
  v19(&v26 - v16, 1, 1, a2, v15);
  v21 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v21);
  v22 = v32;
  sub_242F06470();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v34);
    return (*(v33 + 8))(v17, v37);
  }

  else
  {
    v32 = v20;
    v27 = v19;
    __swift_project_boxed_opaque_existential_2Tm(v35, v36);
    if (sub_242F06170())
    {
      (*(v30 + 8))(v17, v29);
      v27(v17, 1, 1, a2);
    }

    else
    {
      __swift_project_boxed_opaque_existential_2Tm(v35, v36);
      sub_242F06160();
      v27(v14, 0, 1, a2);
      (*(v30 + 40))(v17, v14, v29);
    }

    __swift_destroy_boxed_opaque_existential_2Tm(v35);
    v24 = v33;
    v25 = v37;
    (*(v33 + 16))(v31, v17, v37);
    __swift_destroy_boxed_opaque_existential_2Tm(v34);
    return (*(v24 + 8))(v17, v25);
  }
}

BOOL static DecodableNil.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v28 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_242F05860();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v32 = &v27 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = *(TupleTypeMetadata2 - 8);
  v15 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v17 = &v27 - v16;
  v19 = *(v18 + 48);
  v31 = v12;
  v20 = *(v12 + 16);
  v20(&v27 - v16, a1, v11, v15);
  (v20)(&v17[v19], a2, v11);
  v21 = *(v9 + 48);
  if (v21(v17, 1, a3) != 1)
  {
    (v20)(v32, v17, v11);
    if (v21(&v17[v19], 1, a3) != 1)
    {
      v23 = v28;
      (*(v9 + 32))(v28, &v17[v19], a3);
      v24 = v32;
      v25 = sub_242F04EE0();
      v26 = *(v9 + 8);
      v26(v23, a3);
      v26(v24, a3);
      (*(v31 + 8))(v17, v11);
      return (v25 & 1) != 0;
    }

    (*(v9 + 8))(v32, a3);
LABEL_6:
    (*(v30 + 8))(v17, TupleTypeMetadata2);
    return 0;
  }

  if (v21(&v17[v19], 1, a3) != 1)
  {
    goto LABEL_6;
  }

  (*(v31 + 8))(v17, v11);
  return 1;
}

uint64_t sub_242E253C4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x5664657070617277 && a2 == 0xEC00000065756C61)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_242F06110();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_242E25460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E253C4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_242E25498@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242C6EEB4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_242E254D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_242E25524(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t DecodableNil.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v9[0] = *(a2 + 32);
  v9[1] = v3;
  v9[2] = v3;
  v9[3] = v9[0];
  type metadata accessor for DecodableNil.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_242F05F30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F064C0();
  sub_242F05EB0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t DecodableNil.hash(into:)()
{
  sub_242F05860();

  return sub_242F05870();
}

uint64_t DecodableNil.hashValue.getter()
{
  sub_242F06390();
  sub_242F05860();
  sub_242F05870();
  return sub_242F063E0();
}

uint64_t DecodableDefault.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, v1, AssociatedTypeWitness);
}

uint64_t DecodableDefault.wrappedValue.setter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 40);

  return v4(v1, a1, AssociatedTypeWitness);
}

uint64_t DecodableDefault.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 32);

  return v5(a2, a1, AssociatedTypeWitness);
}

uint64_t DecodableDefault.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v18 - v7;
  v9 = type metadata accessor for DecodableDefault();
  v22 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  v12 = v27;
  sub_242F06470();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v18 = v8;
    v19 = v11;
    v27 = a1;
    v14 = AssociatedTypeWitness;
    v20 = v9;
    __swift_project_boxed_opaque_existential_2Tm(v25, v26);
    if (sub_242F06170())
    {
      v15 = v19;
      (*(a3 + 40))(a2, a3);
    }

    else
    {
      __swift_project_boxed_opaque_existential_2Tm(v25, v26);
      swift_getAssociatedConformanceWitness();
      v16 = v18;
      sub_242F06160();
      v15 = v19;
      (*(v21 + 32))(v19, v16, v14);
    }

    __swift_destroy_boxed_opaque_existential_2Tm(v25);
    (*(v22 + 32))(v23, v15, v20);
    v13 = v27;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v13);
}

uint64_t sub_242E25CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E253C4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_242E25CE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242C6EEB4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_242E25D20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_242E25D74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t DecodableDefault.encode(to:)(void *a1, uint64_t a2)
{
  v8 = *(a2 + 16);
  type metadata accessor for DecodableDefault.CodingKeys();
  swift_getWitnessTable();
  v3 = sub_242F05F30();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F064C0();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_242F05F20();
  return (*(v4 + 8))(v6, v3);
}

uint64_t DecodableDefault.hash(into:)()
{
  swift_getAssociatedTypeWitness();

  return sub_242F04D90();
}

uint64_t DecodableDefault.hashValue.getter()
{
  sub_242F06390();
  DecodableDefault.hash(into:)();
  return sub_242F063E0();
}

uint64_t sub_242E2608C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  sub_242F06390();
  a4(v7, a2);
  return sub_242F063E0();
}

uint64_t sub_242E26178@<X0>(uint64_t *a1@<X8>)
{
  result = static EmptyDictionary.default.getter();
  *a1 = result;
  return result;
}

uint64_t sub_242E261B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static EmptyArray.default.getter(*(a1 + 16));
  *a2 = result;
  return result;
}

uint64_t static FirstCase.default.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_242F05860();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v13 - v9;
  sub_242F05A90();
  swift_getAssociatedConformanceWitness();
  sub_242F05600();
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  v11 = *(a1 - 8);
  result = (*(v11 + 48))(v6, 1, a1);
  if (result != 1)
  {
    return (*(v11 + 32))(a2, v6, a1);
  }

  __break(1u);
  return result;
}

uint64_t sub_242E263DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = static EmptySet.default.getter(*(a1 + 16), a2, a3, *(a1 + 40));
  *a4 = result;
  return result;
}

uint64_t sub_242E264B8()
{
  result = sub_242F04740();
  qword_27ECF87F8 = result;
  return result;
}

uint64_t sub_242E2654C(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (*a2 != -1)
  {
    v6 = a4;
    v7 = a3;
    swift_once();
    a3 = v7;
    a4 = v6;
  }

  *a4 = *a3;
}

uint64_t sub_242E265F4@<X0>(void *a1@<X2>, void *a2@<X3>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift_once();
    a3 = v6;
    a2 = v5;
  }

  *a3 = *a2;
}

uint64_t sub_242E266A0()
{
  xmmword_27ECF8808 = 0u;
  unk_27ECF8818 = 0u;
  qword_27ECF8840 = 0;
  qword_27ECF8848 = 0;
  xmmword_27ECF8828 = xmmword_242F385A0;
  sub_242DD77E4(0, 0, 0, 0, 254);
  byte_27ECF8838 = 0;
  qword_27ECF8840 = 0;
  qword_27ECF8848 = 0;
}

uint64_t static EmptyTexture.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF6F0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *&byte_27ECF8838;
  v8[2] = xmmword_27ECF8828;
  v8[3] = *&byte_27ECF8838;
  v2 = qword_27ECF8848;
  v9 = qword_27ECF8848;
  v4 = xmmword_27ECF8808;
  v3 = unk_27ECF8818;
  v8[0] = xmmword_27ECF8808;
  v8[1] = unk_27ECF8818;
  *(a1 + 32) = xmmword_27ECF8828;
  *(a1 + 48) = v1;
  *(a1 + 64) = v2;
  *a1 = v4;
  *(a1 + 16) = v3;
  return sub_242DD822C(v8, v7);
}

uint64_t sub_242E267A8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF6F0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *&byte_27ECF8838;
  v8[2] = xmmword_27ECF8828;
  v8[3] = *&byte_27ECF8838;
  v2 = qword_27ECF8848;
  v9 = qword_27ECF8848;
  v4 = xmmword_27ECF8808;
  v3 = unk_27ECF8818;
  v8[0] = xmmword_27ECF8808;
  v8[1] = unk_27ECF8818;
  *(a1 + 32) = xmmword_27ECF8828;
  *(a1 + 48) = v1;
  *(a1 + 64) = v2;
  *a1 = v4;
  *(a1 + 16) = v3;
  return sub_242DD822C(v8, v7);
}

unint64_t sub_242E26BF8()
{
  result = qword_27ECF8850;
  if (!qword_27ECF8850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8850);
  }

  return result;
}

unint64_t sub_242E26C4C()
{
  result = qword_27ECF8858;
  if (!qword_27ECF8858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8858);
  }

  return result;
}

unint64_t sub_242E26CAC()
{
  result = qword_27ECF8860;
  if (!qword_27ECF8860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8860);
  }

  return result;
}

unint64_t sub_242E26D0C()
{
  result = qword_27ECF8868;
  if (!qword_27ECF8868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8868);
  }

  return result;
}

unint64_t sub_242E26D64()
{
  result = qword_27ECF8870;
  if (!qword_27ECF8870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8870);
  }

  return result;
}

unint64_t sub_242E26DBC()
{
  result = qword_27ECF8878[0];
  if (!qword_27ECF8878[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ECF8878);
  }

  return result;
}

uint64_t sub_242E26E20()
{
  result = sub_242F05860();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_242E26E90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_242E27010(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_242E2723C()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_242E272B8(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v5)
  {
LABEL_23:
    v11 = *(v4 + 48);

    return v11(a1);
  }

  v7 = 8 * v6;
  if (v6 <= 3)
  {
    v9 = ((a2 - v5 + ~(-1 << v7)) >> v7) + 1;
    if (HIWORD(v9))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 < 2)
    {
LABEL_22:
      if (v5)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v10 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v10 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v10) + 1;
}

void sub_242E27448(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (a3 <= v7)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 - v7 + ~(-1 << (8 * v8))) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (v7 < a2)
  {
    v10 = ~v7 + a2;
    if (v8 < 4)
    {
      v11 = (v10 >> (8 * v8)) + 1;
      if (v8)
      {
        v14 = v10 & ~(-1 << (8 * v8));
        bzero(a1, v8);
        if (v8 != 3)
        {
          if (v8 == 2)
          {
            *a1 = v14;
            if (v9 > 1)
            {
LABEL_39:
              if (v9 == 2)
              {
                *&a1[v8] = v11;
              }

              else
              {
                *&a1[v8] = v11;
              }

              return;
            }
          }

          else
          {
            *a1 = v10;
            if (v9 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v14;
        a1[2] = BYTE2(v14);
      }

      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v9)
    {
      a1[v8] = v11;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v8] = 0;
  }

  else if (v9)
  {
    a1[v8] = 0;
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
  v15 = *(v6 + 56);

  v15(a1, a2);
}

void sub_242E2790C(uint64_t a1, void **a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v20 = v6;
  v21 = v2;
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      do
      {
LABEL_8:
        v9 = *(a1 + 56) + 48 * (__clz(__rbit64(v5)) | (v7 << 6));
        v10 = *v9;
        v11 = *(v9 + 8);
        v12 = *(v9 + 16);
        v13 = *(v9 + 24);
        v14 = *(v9 + 32);
        v27 = *(v9 + 40);
        v15 = *a2;
        sub_242C7F6C4(v10, v11, v12, v13, v14);
        sub_242C7F6C4(v10, v11, v12, v13, v14);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v15 = sub_242C82D10(0, v15[2] + 1, 1, v15);
          *a2 = v15;
        }

        v18 = v15[2];
        v17 = v15[3];
        if (v18 >= v17 >> 1)
        {
          v15 = sub_242C82D10((v17 > 1), v18 + 1, 1, v15);
          *a2 = v15;
        }

        v5 &= v5 - 1;
        v25 = &type metadata for ImageAsset;
        v26 = &protocol witness table for ImageAsset;
        v19 = swift_allocObject();
        *&v24 = v19;
        *(v19 + 16) = v10;
        *(v19 + 24) = v11;
        *(v19 + 32) = v12;
        *(v19 + 40) = v13;
        *(v19 + 48) = v14;
        *(v19 + 56) = v27;
        v15[2] = v18 + 1;
        sub_242C65564(&v24, &v15[5 * v18 + 4]);
        sub_242C7F724(v10, v11, v12, v13, v14);
        v6 = v20;
        v2 = v21;
      }

      while (v5);
    }
  }

  __break(1u);
}

void *MeasurementLabelConfiguration.assets.getter()
{
  v1 = *(v0 + 24);
  v24 = *(v0 + 8);
  v25 = v1;
  v26 = *(v0 + 40);
  v27 = *(v0 + 56);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  v7 = *(v0 + 264);
  v6 = *(v0 + 272);
  v9 = *(v0 + 280);
  v8 = *(v0 + 288);
  sub_242C94884(&v24, &v20);
  v19 = v3;
  sub_242C94804(v2, v3, v4);
  v10 = sub_242C82D10(0, 1, 1, MEMORY[0x277D84F90]);
  v12 = v10[2];
  v11 = v10[3];
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    v10 = sub_242C82D10((v11 > 1), v12 + 1, 1, v10);
  }

  v21 = &type metadata for RasterFont;
  v22 = &protocol witness table for RasterFont;
  v14 = swift_allocObject();
  *&v20 = v14;
  v15 = v25;
  *(v14 + 16) = v24;
  *(v14 + 32) = v15;
  *(v14 + 48) = v26;
  *(v14 + 64) = v27;
  v10[2] = v13;
  sub_242C65564(&v20, &v10[5 * v12 + 4]);
  v23 = v10;
  if (v4)
  {
    v16 = v10[3];
    if ((v12 + 2) > (v16 >> 1))
    {
      v10 = sub_242C82D10((v16 > 1), v12 + 2, 1, v10);
    }

    v21 = &type metadata for RasterFont;
    v22 = &protocol witness table for RasterFont;
    v17 = swift_allocObject();
    *&v20 = v17;
    *(v17 + 16) = v2;
    *(v17 + 24) = v19;
    *(v17 + 32) = v4;
    *(v17 + 40) = v5;
    *(v17 + 48) = v7 & 1;
    *(v17 + 49) = BYTE1(v7) & 1;
    *(v17 + 56) = v6;
    *(v17 + 64) = v9;
    v10[2] = v12 + 2;
    sub_242C65564(&v20, &v10[5 * v13 + 4]);
    v23 = v10;
  }

  sub_242E2790C(v8, &v23);
  return v23;
}

uint64_t MeasurementLabelConfiguration.restoreAssets(from:)(uint64_t a1)
{
  v4 = *(v1 + 288);
  v5 = sub_242CE6D94(MEMORY[0x277D84F90]);
  v9[2] = a1;
  v6 = sub_242C8A810(v5, sub_242C8B824, v9, v4);
  if (v2)
  {
  }

  v8 = v6;

  *(v1 + 288) = v8;
  return result;
}

uint64_t sub_242E27DE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = sub_242CDD790(*(a2 + 16), 0);
    v5 = sub_242CE3FBC(v23, v4 + 32, v3, a2);

    sub_242E0F19C();
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v23[0] = v4;
  sub_242E0F1A0(v23);
  v6 = v23[0];
  v7 = *(v23[0] + 2);
  if (!v7)
  {
  }

  v8 = 0;
  v9 = v23[0] + 32;
  v21 = *(v23[0] + 2);
  v22 = v23[0];
  v20 = v23[0] + 32;
  while (v8 < *(v6 + 2))
  {
    v10 = &v9[16 * v8];
    v11 = *v10;
    v12 = v10[1];

    sub_242F04DD0();
    if (*(a2 + 16) && (v13 = sub_242CE519C(v11, v12), (v14 & 1) != 0))
    {
      v15 = *(*(a2 + 56) + 8 * v13);
      v16 = *(v15 + 16);

      if (v16)
      {
        v17 = 0;
        v18 = v15 + 32;
        while (v17 < *(v15 + 16))
        {
          sub_242C6CF00(v18, v23);
          ++v17;
          __swift_project_boxed_opaque_existential_2Tm(v23, v23[3]);
          sub_242E0EF0C();
          sub_242E2E574();
          sub_242E099F4();
          __swift_destroy_boxed_opaque_existential_2Tm(v23);
          v18 += 40;
          if (v16 == v17)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
        break;
      }

LABEL_16:

      v7 = v21;
      v6 = v22;
      v9 = v20;
    }

    else
    {
    }

    if (++v8 == v7)
    {
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_242E28004(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  v3 = a2;
  v39 = a1;
  if (v2)
  {
    v5 = sub_242CDD790(v2, 0);
    v6 = sub_242CE3FBC(&v43, v5 + 32, v2, a1);

    sub_242E0F19C();
    if (v6 == v2)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_6:
  v43 = v5;
  sub_242E0F1A0(&v43);
  v7 = v43;
  v8 = v39;
  v35 = *(v43 + 2);
  if (!v35)
  {
LABEL_23:

    return 1;
  }

  v9 = 0;
  v37 = v43 + 32;
  v34 = v3;
  v36 = v43;
  while (2)
  {
    if (v9 < *(v7 + 16))
    {
      if (*(v8 + 16))
      {
        v10 = &v37[16 * v9];
        v12 = *v10;
        v11 = v10[1];

        v13 = sub_242CE519C(v12, v11);
        if (v14)
        {
          if (*(v3 + 16))
          {
            v15 = *(*(v8 + 56) + 8 * v13);

            v16 = sub_242CE519C(v12, v11);
            v18 = v17;

            if (v18)
            {
              v19 = *(*(v3 + 56) + 8 * v16);
              v20 = *(v19 + 16);
              v41 = *(v15 + 16);
              if (v41 == v20)
              {
                v38 = v9 + 1;

                v21 = 0;
                v7 = 32;
                v40 = v15;
                while (v41 != v21)
                {
                  if (v21 >= *(v15 + 16))
                  {
                    __break(1u);
LABEL_28:
                    __break(1u);
                    goto LABEL_29;
                  }

                  sub_242C6CF00(v15 + v7, v42);
                  v22 = *(v19 + 16);
                  if (v21 == v22)
                  {
                    __swift_destroy_boxed_opaque_existential_2Tm(v42);
                    break;
                  }

                  if (v21++ >= v22)
                  {
                    goto LABEL_28;
                  }

                  v23 = v7 + 40;
                  sub_242C65564(v42, &v43);
                  sub_242C6CF00(v19 + v7, v46);
                  v25 = v44;
                  v24 = v45;
                  v26 = __swift_project_boxed_opaque_existential_2Tm(&v43, v44);
                  v27 = *(v25 - 8);
                  MEMORY[0x28223BE20](v26);
                  v29 = &v33 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
                  (*(v27 + 16))(v29);
                  __swift_destroy_boxed_opaque_existential_2Tm(&v43);
                  v30 = sub_242E0EF0C();
                  v31 = sub_242E2D70C();
                  LOBYTE(v30) = sub_242E09F2C(v29, v46, &type metadata for MeasurementLabelConfiguration, v25, v30, v31, *(*(v24 + 24) + 8));
                  (*(v27 + 8))(v29, v25);
                  __swift_destroy_boxed_opaque_existential_2Tm(v46);
                  v7 = v23;
                  v15 = v40;
                  if ((v30 & 1) == 0)
                  {

                    return 0;
                  }
                }

                v9 = v38;
                v8 = v39;
                v3 = v34;
                v7 = v36;
                if (v38 != v35)
                {
                  continue;
                }

                goto LABEL_23;
              }
            }
          }
        }
      }

      return 0;
    }

    break;
  }

LABEL_29:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_242E283E0@<X0>(int a1@<W0>, unint64_t *a2@<X8>)
{
  v5 = *v2;
  memcpy(__dst, v2 + 1, sizeof(__dst));
  sub_242D48DCC(v2, &v18);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = sub_242CE7A40(MEMORY[0x277D84F90]);
  }

  v21 = v6;

  v7 = sub_242E285E0();
  v9 = v7;
  v10 = v8;
  if (*(v6 + 16) && (v11 = sub_242CE519C(v7, v8), (v12 & 1) != 0))
  {
    v13 = *(*(v6 + 56) + 8 * v11);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_242C83AF4(0, v13[2] + 1, 1, v13);
  }

  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = sub_242C83AF4((v14 > 1), v15 + 1, 1, v13);
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8E08);
  v20 = sub_242C7E000(&qword_27ECF8E10, &qword_27ECF8E08);
  BYTE2(v18) = BYTE2(a1);
  LOWORD(v18) = a1;
  BYTE3(v18) = HIBYTE(a1) & 1;
  v13[2] = v15 + 1;
  sub_242C65564(&v18, &v13[5 * v15 + 4]);
  sub_242E082AC(v13, v9, v10);
  v16 = v21;

  *a2 = v16;
  memcpy(a2 + 1, __dst, 0x148uLL);
}

uint64_t sub_242E285E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8E18);
  sub_242F05C20();
  sub_242C6CB78();
  sub_242F05890();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8288);
  sub_242C7E000(&qword_27ECF8290, &qword_27ECF8288);
  v0 = sub_242F04E40();

  return v0;
}

uint64_t MeasurementLabelConfiguration.overrides.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t MeasurementLabelConfiguration.ColorIDs.iconRedactedColorID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 40);
  *(a1 + 16) = v4;
  return sub_242C7CE5C(v2, v3, v4);
}

uint64_t MeasurementLabelConfiguration.ColorIDs.valueRedactedColorID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 64);
  *(a1 + 16) = v4;
  return sub_242C7CE5C(v2, v3, v4);
}

uint64_t MeasurementLabelConfiguration.ColorIDs.unitRedactedColorID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 88);
  *(a1 + 16) = v4;
  return sub_242C7CE5C(v2, v3, v4);
}

uint64_t MeasurementLabelConfiguration.ColorIDs.init(iconColorIDs:valueColorIDs:unitColorIDs:iconRedactedColorID:valueRedactedColorID:unitRedactedColorID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_242C7CEB0(*a6, *(a6 + 8), *(a6 + 16));
  v13 = *(a4 + 16);
  v14 = *a5;
  v15 = *(a5 + 8);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = *a4;
  *(a7 + 40) = v13;
  *(a7 + 48) = v14;
  *(a7 + 56) = v15;
  v16 = *(a5 + 16);
  *(a7 + 64) = v16;
  *(a7 + 72) = v14;
  *(a7 + 80) = v15;
  *(a7 + 88) = v16;

  return sub_242C7CE5C(v14, v15, v16);
}

uint64_t MeasurementLabelConfiguration.ColorIDs.init(iconColorID:valueColorID:unitColorID:iconRedactedColorID:valueRedactedColorID:unitRedactedColorID:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 16);
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 16);
  v25 = a3[1];
  v26 = *a3;
  v24 = *(a3 + 16);
  v34 = a4[1];
  v35 = *a4;
  v33 = *(a4 + 16);
  v31 = a5[1];
  v32 = *a5;
  v30 = *(a5 + 16);
  v28 = a6[1];
  v29 = *a6;
  v27 = *(a6 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3378);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F09510;
  *(inited + 32) = 0;
  v15 = inited + 32;
  *(inited + 40) = v8;
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  v16 = sub_242CE7008(inited);
  swift_setDeallocating();
  sub_242C6D138(v15, &qword_27ECF1F18);
  *a7 = v16;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_242F09510;
  *(v17 + 32) = 0;
  v18 = v17 + 32;
  *(v17 + 40) = v11;
  *(v17 + 48) = v12;
  *(v17 + 56) = v13;
  v19 = sub_242CE7008(v17);
  swift_setDeallocating();
  sub_242C6D138(v18, &qword_27ECF1F18);
  *(a7 + 8) = v19;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_242F09510;
  *(v20 + 32) = 0;
  v21 = v20 + 32;
  *(v20 + 40) = v26;
  *(v20 + 48) = v25;
  *(v20 + 56) = v24;
  v22 = sub_242CE7008(v20);
  swift_setDeallocating();
  result = sub_242C6D138(v21, &qword_27ECF1F18);
  *(a7 + 16) = v22;
  *(a7 + 24) = v35;
  *(a7 + 32) = v34;
  *(a7 + 40) = v33;
  *(a7 + 48) = v32;
  *(a7 + 56) = v31;
  *(a7 + 64) = v30;
  *(a7 + 72) = v29;
  *(a7 + 80) = v28;
  *(a7 + 88) = v27;
  return result;
}

unint64_t sub_242E28A58()
{
  v1 = *v0;
  v2 = 0x6F6C6F436E6F6369;
  v3 = 0xD000000000000013;
  v4 = 0xD000000000000013;
  if (v1 == 4)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C6F4365756C6176;
  if (v1 != 1)
  {
    v5 = 0x6F6C6F4374696E75;
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

uint64_t sub_242E28B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E2DCEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242E28B50(uint64_t a1)
{
  v2 = sub_242E2D26C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E28B8C(uint64_t a1)
{
  v2 = sub_242E2D26C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MeasurementLabelConfiguration.ColorIDs.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8D00);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v10 = *(v1 + 24);
  v26 = *(v1 + 16);
  v27 = v8;
  v11 = *(v1 + 32);
  v24 = v10;
  v25 = v11;
  v31 = *(v1 + 40);
  v12 = *(v1 + 48);
  v23 = *(v1 + 56);
  v22 = *(v1 + 64);
  v13 = *(v1 + 80);
  v20 = *(v1 + 72);
  v21 = v12;
  v18 = v13;
  v19 = *(v1 + 88);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E2D26C();

  v14 = v4;
  sub_242F064C0();
  v28 = v9;
  v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8);
  sub_242CCFBCC(&qword_27ECF1C00, sub_242C7DEA0);
  sub_242F05F20();
  if (v2)
  {

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v15 = v26;

    v28 = v27;
    v32 = 1;
    sub_242F05F20();
    v28 = v15;
    v32 = 2;
    sub_242F05F20();
    v28 = v24;
    v29 = v25;
    v30 = v31;
    v32 = 3;
    sub_242C7CE5C(v24, v25, v31);
    sub_242C7DEA0();
    sub_242F05F20();
    sub_242C7CEB0(v28, v29, v30);
    v28 = v21;
    v29 = v23;
    v30 = v22;
    v32 = 4;
    sub_242C7CE5C(v21, v23, v22);
    sub_242F05F20();
    sub_242C7CEB0(v28, v29, v30);
    v28 = v20;
    v29 = v18;
    v30 = v19;
    v32 = 5;
    sub_242C7CE5C(v20, v18, v19);
    sub_242F05F20();
    sub_242C7CEB0(v28, v29, v30);
    return (*(v5 + 8))(v7, v14);
  }
}

uint64_t MeasurementLabelConfiguration.ColorIDs.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  sub_242C79508(a1, *v1);
  sub_242C79508(a1, v3);
  sub_242C79508(a1, v4);
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();
}

uint64_t MeasurementLabelConfiguration.ColorIDs.hashValue.getter()
{
  sub_242F06390();
  MeasurementLabelConfiguration.ColorIDs.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t MeasurementLabelConfiguration.ColorIDs.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8D10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E2D26C();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v33 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8);
  LOBYTE(v34) = 0;
  sub_242CCFBCC(&qword_27ECF1C10, sub_242C7DFAC);
  sub_242F05E00();
  v9 = v39;
  LOBYTE(v34) = 1;
  sub_242F05E00();
  v32 = v39;
  LOBYTE(v34) = 2;
  sub_242F05E00();
  v30 = v39;
  LOBYTE(v34) = 3;
  sub_242C7DFAC();
  sub_242F05E00();
  v28 = v39;
  v27 = v40;
  v29 = v41;
  LOBYTE(v34) = 4;
  sub_242F05E00();
  v26 = v39;
  v31 = v40;
  v54 = v41;
  v55 = 5;
  sub_242F05E00();
  (*(v6 + 8))(v8, v5);
  v25 = v51;
  v24 = v52;
  v23 = v53;
  v10 = v9;
  *&v34 = v9;
  v11 = v32;
  *(&v34 + 1) = v32;
  v12 = v30;
  *&v35 = v30;
  v13 = v28;
  *(&v35 + 1) = v28;
  v14 = v27;
  *&v36 = v27;
  v15 = v29;
  BYTE8(v36) = v29;
  *&v37 = v26;
  *(&v37 + 1) = v31;
  v38[0] = v54;
  *&v38[8] = v51;
  *&v38[16] = v52;
  v38[24] = v53;
  v16 = v35;
  v17 = v33;
  *v33 = v34;
  v17[1] = v16;
  v18 = v36;
  v19 = v37;
  v20 = *v38;
  *(v17 + 73) = *&v38[9];
  v17[3] = v19;
  v17[4] = v20;
  v17[2] = v18;
  sub_242E2D2C0(&v34, &v39);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  v39 = v10;
  v40 = v11;
  v41 = v12;
  v42 = v13;
  v43 = v14;
  v44 = v15;
  v45 = v26;
  v46 = v31;
  v47 = v54;
  v48 = v25;
  v49 = v24;
  v50 = v23;
  return sub_242E2D2F8(&v39);
}

uint64_t sub_242E2970C()
{
  sub_242F06390();
  MeasurementLabelConfiguration.ColorIDs.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242E29750()
{
  sub_242F06390();
  MeasurementLabelConfiguration.ColorIDs.hash(into:)(v1);
  return sub_242F063E0();
}

CarPlayAssetUI::MeasurementLabelConfiguration::Alignment_optional __swiftcall MeasurementLabelConfiguration.Alignment.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x302010004uLL >> (8 * rawValue);
  if (rawValue >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *v1 = v2;
  return rawValue;
}

CarPlayAssetUI::MeasurementLabelConfiguration::OffsetType_optional __swiftcall MeasurementLabelConfiguration.OffsetType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t MeasurementLabelConfiguration.OffsetType.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t MeasurementLabelConfiguration.font.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v7[0] = *(v1 + 8);
  v7[1] = v2;
  v8 = *(v1 + 40);
  v3 = v8;
  v9 = *(v1 + 56);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_242C94884(v7, v6);
}

uint64_t sub_242E299C0(__int128 *a1, uint64_t a2)
{
  v3 = a1[1];
  v8 = *a1;
  v9 = v3;
  v10 = a1[2];
  v11 = *(a1 + 6);
  v12[0] = *(a2 + 8);
  v4 = *(a2 + 40);
  v12[1] = *(a2 + 24);
  v12[2] = v4;
  v13 = *(a2 + 56);
  sub_242C94884(&v8, v7);
  sub_242C954DC(v12);
  v5 = v9;
  *(a2 + 8) = v8;
  *(a2 + 24) = v5;
  *(a2 + 40) = v10;
  *(a2 + 56) = v11;
  return sub_242E29AC0();
}

uint64_t MeasurementLabelConfiguration.font.setter(uint64_t a1)
{
  v3 = *(v1 + 24);
  v6[0] = *(v1 + 8);
  v6[1] = v3;
  v6[2] = *(v1 + 40);
  v7 = *(v1 + 56);
  sub_242C954DC(v6);
  v4 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v4;
  *(v1 + 40) = *(a1 + 32);
  *(v1 + 56) = *(a1 + 48);
  return sub_242E29AC0();
}

uint64_t sub_242E29AC0()
{
  v1 = v0;
  v2 = RasterFont.cpFont.getter();
  v3 = sub_242EB8B1C();

  if (*(v3 + 16))
  {
    v4 = *(v3 + 32);

    v6 = v4;
    *(v1 + 300) = v6;
  }

  else
  {

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

uint64_t sub_242E29BC4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_242E29AC0();
  }

  return result;
}

uint64_t MeasurementLabelConfiguration.colorIDs.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[7];
  v10 = v1[6];
  v2 = v10;
  v11 = v3;
  v12[0] = v1[8];
  v4 = v12[0];
  *(v12 + 9) = *(v1 + 137);
  v6 = v1[5];
  v9[0] = v1[4];
  v5 = v9[0];
  v9[1] = v6;
  *(a1 + 73) = *(v12 + 9);
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_242E2D2C0(v9, &v8);
}

__n128 MeasurementLabelConfiguration.colorIDs.setter(uint64_t a1)
{
  v3 = v1[7];
  v8[2] = v1[6];
  v8[3] = v3;
  v9[0] = v1[8];
  *(v9 + 9) = *(v1 + 137);
  v4 = v1[5];
  v8[0] = v1[4];
  v8[1] = v4;
  sub_242E2D2F8(v8);
  v5 = *(a1 + 48);
  v1[6] = *(a1 + 32);
  v1[7] = v5;
  v1[8] = *(a1 + 64);
  *(v1 + 137) = *(a1 + 73);
  result = *a1;
  v7 = *(a1 + 16);
  v1[4] = *a1;
  v1[5] = v7;
  return result;
}

uint64_t MeasurementLabelConfiguration.minFractionDigits.setter(uint64_t result, char a2)
{
  *(v2 + 168) = result;
  *(v2 + 176) = a2 & 1;
  return result;
}

uint64_t MeasurementLabelConfiguration.minIntegerDigits.setter(uint64_t result, char a2)
{
  *(v2 + 184) = result;
  *(v2 + 192) = a2 & 1;
  return result;
}

uint64_t MeasurementLabelConfiguration.defaultUnitLabel.getter()
{
  v1 = *(v0 + 208);

  return v1;
}

uint64_t MeasurementLabelConfiguration.defaultUnitLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
  return result;
}

uint64_t MeasurementLabelConfiguration.unitLabels.setter(uint64_t a1)
{

  *(v1 + 224) = a1;
  return result;
}

uint64_t MeasurementLabelConfiguration.unitFont.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[29];
  v3 = v1[30];
  v4 = v1[31];
  v5 = v1[32];
  v6 = v1[33];
  v7 = v1[34];
  v8 = v1[35];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_242C94804(v2, v3, v4);
}

__n128 MeasurementLabelConfiguration.unitFont.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  sub_242C94844(*(v1 + 232), *(v1 + 240), *(v1 + 248));
  v4 = *a1;
  *(v1 + 248) = a1[1];
  *(v1 + 232) = v4;
  result = v6;
  *(v1 + 264) = v6;
  *(v1 + 280) = v3;
  return result;
}

uint64_t MeasurementLabelConfiguration.statefulImages.setter(uint64_t a1)
{

  *(v1 + 288) = a1;
  return result;
}

uint64_t MeasurementLabelConfiguration.valueTracking.setter(uint64_t result)
{
  *(v1 + 312) = result;
  *(v1 + 316) = BYTE4(result) & 1;
  return result;
}

uint64_t MeasurementLabelConfiguration.trailingString.getter()
{
  v1 = *(v0 + 320);

  return v1;
}

uint64_t MeasurementLabelConfiguration.trailingString.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 320) = a1;
  *(v2 + 328) = a2;
  return result;
}

uint64_t MeasurementLabelConfiguration.init(font:colorIDs:precision:minFractionDigits:minIntegerDigits:divider:defaultUnitLabel:unitLabels:unitFont:images:imagePadding:labelSpacing:valueYOffset:offsetType:valueTracking:alignment:trailingString:)@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, float a11@<S1>, uint64_t a12, uint64_t a13, uint64_t a14, __int128 *a15, uint64_t a16, uint64_t a17, char *a18, int a19, char a20, char *a21, uint64_t a22, uint64_t a23)
{
  v32 = a1[1];
  v60 = *a1;
  v61 = v32;
  v62 = a1[2];
  v63 = *(a1 + 6);
  v54 = a15[1];
  v55 = *a15;
  v53 = *(a15 + 4);
  v51 = *(a15 + 6);
  v52 = *(a15 + 5);
  v33 = *a18;
  v34 = *a21;
  v59 = a5 & 1;
  v58 = a7 & 1;
  sub_242C94884(&v60, v56);
  sub_242C94844(0, 0, 0);
  if ((a17 & 0x100000000) == 0)
  {
    sub_242C954DC(&v60);
    v35 = *&a17;
LABEL_5:
    LOBYTE(v56[0]) = a20 & 1;
    v44 = v59;
    v45 = v58;
    *a9 = 0;
    v46 = a1[1];
    *(a9 + 8) = *a1;
    *(a9 + 24) = v46;
    *(a9 + 40) = a1[2];
    result = *(a1 + 6);
    *(a9 + 56) = result;
    v48 = a2[3];
    *(a9 + 96) = a2[2];
    *(a9 + 112) = v48;
    *(a9 + 128) = a2[4];
    *(a9 + 137) = *(a2 + 73);
    v49 = a2[1];
    *(a9 + 64) = *a2;
    *(a9 + 80) = v49;
    *(a9 + 160) = a3;
    *(a9 + 168) = a4;
    *(a9 + 176) = v44;
    *(a9 + 184) = a6;
    *(a9 + 192) = v45;
    *(a9 + 200) = a8;
    *(a9 + 208) = a12;
    *(a9 + 216) = a13;
    *(a9 + 224) = a14;
    *(a9 + 248) = v54;
    *(a9 + 232) = v55;
    *(a9 + 264) = v53;
    *(a9 + 272) = v52;
    *(a9 + 280) = v51;
    *(a9 + 288) = a16;
    *(a9 + 296) = a10;
    *(a9 + 300) = v35;
    *(a9 + 304) = a11;
    *(a9 + 308) = v33;
    *(a9 + 312) = a19;
    *(a9 + 316) = a20 & 1;
    *(a9 + 317) = v34;
    *(a9 + 320) = a22;
    *(a9 + 328) = a23;
    return result;
  }

  v50 = v33;
  v36 = v34;
  v37 = a3;
  v38 = a4;
  v39 = a6;
  v40 = a8;
  v56[0] = v60;
  v56[1] = v61;
  v56[2] = v62;
  v57 = v63;
  v41 = RasterFont.cpFont.getter();
  v42 = sub_242EB8B1C();

  if (*(v42 + 16))
  {
    v43 = *(v42 + 32);
    sub_242C954DC(&v60);

    v35 = v43;
    a8 = v40;
    a6 = v39;
    a4 = v38;
    a3 = v37;
    v34 = v36;
    v33 = v50;
    goto LABEL_5;
  }

  result = sub_242F05C60();
  __break(1u);
  return result;
}

uint64_t MeasurementLabelConfiguration.init(font:colorIDs:precision:minFractionDigits:minIntegerDigits:divider:defaultUnitLabel:unitLabels:unitFont:image:imagePadding:labelSpacing:valueYOffset:offsetType:valueTracking:alignment:trailingString:)@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, float a11@<S1>, uint64_t a12, uint64_t a13, uint64_t a14, __int128 *a15, __int128 *a16, uint64_t a17, char *a18, int a19, char a20, char *a21, uint64_t a22, uint64_t a23)
{
  v31 = a1[1];
  v66 = *a1;
  v67 = v31;
  v68 = a1[2];
  v69 = *(a1 + 6);
  v51 = a15[1];
  v52 = *a15;
  v55 = a15[2];
  v54 = *(a15 + 6);
  v32 = *(a16 + 4);
  v53 = *a18;
  v56 = *a21;
  if ((~*(a16 + 8) & 0xFELL) != 0)
  {
    v48 = *(a16 + 5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8D18);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_242F09510;
    v49 = a7;
    *(inited + 32) = 0;
    v35 = inited + 32;
    v36 = *a16;
    *(inited + 56) = a16[1];
    *(inited + 40) = v36;
    *(inited + 72) = v32;
    *(inited + 80) = v48;
    v33 = sub_242CE6D94(inited);
    swift_setDeallocating();
    v37 = v35;
    a7 = v49;
    sub_242C6D138(v37, &qword_27ECF8D20);
  }

  else
  {
    v33 = sub_242CE6D94(MEMORY[0x277D84F90]);
  }

  v62 = v66;
  v63 = v67;
  v64 = v68;
  v65 = v69;
  v61 = a5 & 1;
  v60 = a7 & 1;
  sub_242C94884(&v66, v58);
  sub_242C94844(0, 0, 0);
  if ((a17 & 0x100000000) == 0)
  {
    result = sub_242C954DC(&v66);
    v39 = *&a17;
LABEL_8:
    LOBYTE(v58[0]) = a20 & 1;
    v43 = v61;
    v44 = v60;
    *a9 = 0;
    v45 = v63;
    *(a9 + 8) = v62;
    *(a9 + 24) = v45;
    *(a9 + 40) = v64;
    *(a9 + 56) = v65;
    v46 = a2[3];
    *(a9 + 96) = a2[2];
    *(a9 + 112) = v46;
    *(a9 + 128) = a2[4];
    *(a9 + 137) = *(a2 + 73);
    v47 = a2[1];
    *(a9 + 64) = *a2;
    *(a9 + 80) = v47;
    *(a9 + 160) = a3;
    *(a9 + 168) = a4;
    *(a9 + 176) = v43;
    *(a9 + 184) = a6;
    *(a9 + 192) = v44;
    *(a9 + 200) = a8;
    *(a9 + 208) = a12;
    *(a9 + 216) = a13;
    *(a9 + 224) = a14;
    *(a9 + 232) = v52;
    *(a9 + 248) = v51;
    *(a9 + 264) = v55;
    *(a9 + 280) = v54;
    *(a9 + 288) = v33;
    *(a9 + 296) = a10;
    *(a9 + 300) = v39;
    *(a9 + 304) = a11;
    *(a9 + 308) = v53;
    *(a9 + 312) = a19;
    *(a9 + 316) = a20 & 1;
    *(a9 + 317) = v56;
    *(a9 + 320) = a22;
    *(a9 + 328) = a23;
    return result;
  }

  v58[0] = v66;
  v58[1] = v67;
  v58[2] = v68;
  v59 = v69;
  v40 = RasterFont.cpFont.getter();
  sub_242C954DC(&v66);
  v41 = sub_242EB8B1C();

  if (*(v41 + 16))
  {
    v42 = *(v41 + 32);

    v39 = v42;
    goto LABEL_8;
  }

  result = sub_242F05C60();
  __break(1u);
  return result;
}

void sub_242E2A77C(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 48);
  v13 = *(a2 + 40);
  *&v16 = *(a2 + 8);
  *(&v16 + 1) = v9;
  *&v17 = v10;
  *(&v17 + 1) = v11;
  LOBYTE(v18) = v13;
  *(&v18 + 1) = v12;

  sub_242C7F6C4(v16, v9, v10, v11, v13);
  ImageAsset.restore(from:)(a3);
  if (v4)
  {
    sub_242C7F724(v16, *(&v16 + 1), v17, *(&v17 + 1), v18);
  }

  else
  {
    v19[0] = v16;
    v19[1] = v17;
    v19[2] = v18;
    sub_242E2E5C8(v19, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15[0] = v7;
    sub_242CDF7DC(v19, v8, isUniquelyReferenced_nonNull_native);
    sub_242C7F724(v16, *(&v16 + 1), v17, *(&v17 + 1), v18);
    *a4 = v15[0];
  }
}

unint64_t sub_242E2A8A0(char a1)
{
  result = 0x656469727265766FLL;
  switch(a1)
  {
    case 1:
      result = 1953394534;
      break;
    case 2:
      result = 0x734449726F6C6F63;
      break;
    case 3:
      result = 0x6F69736963657270;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x72656469766964;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6562614C74696E75;
      break;
    case 9:
      result = 0x746E6F4674696E75;
      break;
    case 10:
      result = 0x6C75666574617473;
      break;
    case 11:
      result = 0x6461506567616D69;
      break;
    case 12:
      result = 0x6170536C6562616CLL;
      break;
    case 13:
      result = 0x664F5965756C6176;
      break;
    case 14:
      result = 0x795474657366666FLL;
      break;
    case 15:
      result = 0x61725465756C6176;
      break;
    case 16:
      result = 0x6E656D6E67696C61;
      break;
    case 17:
      result = 0x676E696C69617274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_242E2AAD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E2DF00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242E2AB08(uint64_t a1)
{
  v2 = sub_242E2D328();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E2AB44(uint64_t a1)
{
  v2 = sub_242E2D328();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MeasurementLabelConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8D28);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v25 - v5;
  v7 = *v1;
  v8 = *(v1 + 3);
  v71 = *(v1 + 1);
  v72 = v8;
  v73 = *(v1 + 5);
  v74 = v1[7];
  v9 = *(v1 + 7);
  v77 = *(v1 + 6);
  v78 = v9;
  v79[0] = *(v1 + 8);
  *(v79 + 9) = *(v1 + 137);
  v10 = *(v1 + 5);
  v75 = *(v1 + 4);
  v76 = v10;
  v11 = v1[21];
  v46 = v1[20];
  v44 = v11;
  v45 = *(v1 + 176);
  v12 = v1[23];
  v43 = *(v1 + 192);
  v13 = v1[26];
  v41 = v1[25];
  v42 = v12;
  v14 = v1[27];
  v15 = v1[28];
  v39 = v13;
  v40 = v14;
  v16 = v1[30];
  v31 = v1[29];
  v32 = v16;
  v17 = v1[32];
  v37 = v1[31];
  v38 = v15;
  v18 = v1[34];
  v35 = v1[33];
  v36 = v17;
  v19 = v1[36];
  v33 = v1[35];
  v34 = v18;
  v30 = v19;
  v20 = *(v1 + 76);
  v29 = *(v1 + 308);
  v28 = *(v1 + 78);
  LODWORD(v14) = *(v1 + 316);
  v26 = *(v1 + 317);
  v27 = v14;
  v21 = v1[41];
  v25[1] = v1[40];
  v25[2] = v21;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E2D328();

  sub_242F064C0();
  *&v59 = v7;
  LOBYTE(v56[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8D38);
  sub_242C7E000(&qword_27ECF8D40, &qword_27ECF8D38);
  v22 = v47;
  sub_242F05EB0();

  if (v22)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v67 = v71;
  v68 = v72;
  v69 = v73;
  v70 = v74;
  v66 = 1;
  sub_242C94884(&v71, &v59);
  v23 = sub_242C95488();
  sub_242F05F20();
  v47 = v23;
  v64[0] = v67;
  v64[1] = v68;
  v64[2] = v69;
  v65 = v70;
  sub_242C954DC(v64);
  v61 = v77;
  v62 = v78;
  v63[0] = v79[0];
  *(v63 + 9) = *(v79 + 9);
  v59 = v75;
  v60 = v76;
  v58 = 2;
  sub_242E2D2C0(&v75, v56);
  sub_242E2D37C();
  sub_242F05F20();
  v56[2] = v61;
  v56[3] = v62;
  *v57 = v63[0];
  *&v57[9] = *(v63 + 9);
  v56[0] = v59;
  v56[1] = v60;
  sub_242E2D2F8(v56);
  LOBYTE(v48) = 3;
  sub_242F05F00();
  LOBYTE(v48) = 4;
  sub_242F05E90();
  LOBYTE(v48) = 5;
  sub_242F05E90();
  LOBYTE(v48) = 6;
  sub_242F05F00();
  LOBYTE(v48) = 7;
  sub_242F05E50();
  v48 = v38;
  v55 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3438);
  sub_242D491A0(&qword_27ECF3440);
  sub_242F05EB0();
  v48 = v31;
  v49 = v32;
  v50 = v37;
  v51 = v36;
  v52 = v35;
  v53 = v34;
  v54 = v33;
  v55 = 9;
  sub_242C94804(v31, v32, v37);
  sub_242F05EB0();
  sub_242C94844(v48, v49, v50);
  v48 = v30;
  v55 = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0448);
  sub_242E2D3D0(&qword_27ECF0450, sub_242C8B8E8);
  sub_242F05F20();
  LOBYTE(v48) = 11;
  sub_242F05EF0();
  LOBYTE(v48) = 12;
  sub_242F05EF0();
  LODWORD(v48) = v20;
  v55 = 13;
  sub_242F05F20();
  LOBYTE(v48) = v29;
  v55 = 14;
  sub_242E2D454();
  sub_242F05F20();
  LOBYTE(v48) = 15;
  v55 = v27;
  sub_242F05E80();
  LOBYTE(v48) = v26;
  v55 = 16;
  sub_242E2D4A8();
  sub_242F05F20();
  LOBYTE(v48) = 17;
  sub_242F05E50();
  return (*(v4 + 8))(v6, 0);
}

uint64_t MeasurementLabelConfiguration.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 160);
  v5 = *(v1 + 176);
  v13 = *(v1 + 168);
  v14 = *(v1 + 184);
  v6 = *(v1 + 192);
  v21 = *(v1 + 200);
  v7 = *(v1 + 216);
  v8 = *(v1 + 224);
  v19 = *(v1 + 240);
  v20 = *(v1 + 232);
  v9 = *(v1 + 248);
  v17 = *(v1 + 264);
  v18 = *(v1 + 256);
  v16 = *(v1 + 272);
  v15 = *(v1 + 280);
  v24 = *(v1 + 308);
  v25 = *(v1 + 316);
  v26 = *(v1 + 317);
  v22 = *(v1 + 328);
  v23 = *(v1 + 288);
  if (*v1)
  {
    sub_242F063B0();
    sub_242E27DE4(a1, v3);
  }

  else
  {
    sub_242F063B0();
  }

  v10 = *(v1 + 24);
  v31 = *(v1 + 8);
  v32 = v10;
  v33 = *(v1 + 40);
  v34 = *(v1 + 56);
  RasterFont.hash(into:)();
  MeasurementLabelConfiguration.ColorIDs.hash(into:)(a1);
  MEMORY[0x245D279A0](v4);
  sub_242F063B0();
  if (!v5)
  {
    MEMORY[0x245D279A0](v13);
  }

  sub_242F063B0();
  if (!v6)
  {
    MEMORY[0x245D279A0](v14);
  }

  MEMORY[0x245D279A0](v21);
  if (v7)
  {
    sub_242F063B0();
    sub_242F04DD0();
    if (v8)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_242F063B0();
    if (v9)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  sub_242F063B0();
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_10:
  sub_242F063B0();
  sub_242C796C4(a1, v8);
  if (v9)
  {
LABEL_11:
    *&v27 = v20;
    *(&v27 + 1) = v19;
    *&v28 = v9;
    *(&v28 + 1) = v18;
    *&v29 = v17;
    *(&v29 + 1) = v16;
    sub_242F063B0();
    v30[0] = v20;
    v30[1] = v19;
    v30[2] = v9;
    v30[3] = v18;
    v30[4] = v17;
    v30[5] = v16;
    v30[6] = v15;
    sub_242C94884(v30, &v31);
    RasterFont.hash(into:)();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    v34 = v15;
    sub_242C954DC(&v31);
    goto LABEL_15;
  }

LABEL_14:
  sub_242F063B0();
LABEL_15:
  sub_242C799A8(a1, v23);
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  if (v24)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  MEMORY[0x245D279A0](v11);
  sub_242F063B0();
  if (!v25)
  {
    sub_242F063C0();
  }

  MEMORY[0x245D279A0](v26 + 1);
  if (!v22)
  {
    return sub_242F063B0();
  }

  sub_242F063B0();
  return sub_242F04DD0();
}

uint64_t MeasurementLabelConfiguration.hashValue.getter()
{
  sub_242F06390();
  MeasurementLabelConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t MeasurementLabelConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8D60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v9);
  sub_242E2D328();
  sub_242F06480();
  if (v2)
  {
    v50 = 0;
    v51 = 0;
    v47 = 0;
    v48 = 0;
    v45 = 0;
    v46 = 0;
    v49 = 0;
    __swift_destroy_boxed_opaque_existential_2Tm(v44);

    return sub_242C94844(v51, v50, v48);
  }

  else
  {
    v43 = v6;
    v41 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8D38);
    LOBYTE(v52[0]) = 0;
    sub_242C7E000(&qword_27ECF8D68, &qword_27ECF8D38);
    sub_242F05D90();
    v40 = v53;

    v101 = 1;
    sub_242C95584();
    sub_242F05E00();
    v119 = v102;
    v120 = v103;
    v121 = v104;
    v122 = v105;
    v95 = 2;
    sub_242E2D4FC();
    sub_242F05E00();
    v116 = v98;
    v117 = v99;
    v118[0] = *v100;
    *(v118 + 9) = *&v100[9];
    v114 = v96;
    v115 = v97;
    LOBYTE(v53) = 3;
    v11 = sub_242F05DE0();
    LOBYTE(v53) = 4;
    v39 = sub_242F05D70();
    v112 = v12 & 1;
    LOBYTE(v53) = 5;
    v38 = sub_242F05D70();
    v110 = v13 & 1;
    LOBYTE(v53) = 6;
    v37 = sub_242F05DE0();
    LOBYTE(v53) = 7;
    v36 = sub_242F05D30();
    v49 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3438);
    LOBYTE(v52[0]) = 8;
    sub_242D491A0(&qword_27ECF3450);
    sub_242F05D90();
    v15 = v53;
    LOBYTE(v52[0]) = 9;
    sub_242F05D90();
    v50 = v54;
    v51 = v53;
    v47 = v55;
    v48 = *(&v54 + 1);
    v45 = v56;
    v46 = *(&v55 + 1);
    v16 = *(&v56 + 1);
    sub_242C94844(0, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0448);
    LOBYTE(v52[0]) = 10;
    sub_242E2D3D0(&qword_27ECF0470, sub_242C8BA70);
    sub_242F05E00();
    v42 = v53;
    LOBYTE(v53) = 11;
    sub_242F05DD0();
    v18 = v17;
    LOBYTE(v53) = 12;
    sub_242F05DD0();
    v20 = v19;
    LOBYTE(v52[0]) = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8D78);
    sub_242C7E000(&qword_27ECF8D80, &qword_27ECF8D78);
    sub_242F05D90();
    if (BYTE4(v53))
    {
      v21 = 0.0;
    }

    else
    {
      v21 = *&v53;
    }

    LOBYTE(v53) = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8D88);
    sub_242C7E000(&qword_27ECF8D90, &qword_27ECF8D88);
    sub_242F05D90();
    v34 = LOBYTE(v52[0]);
    LOBYTE(v53) = 15;
    v35 = sub_242F05D60();
    v106 = BYTE4(v35) & 1;
    LOBYTE(v52[0]) = 16;
    sub_242E2D550();
    sub_242F05E00();
    v33 = v53;
    v94 = 17;
    v22 = sub_242F05D30();
    v32 = v23;
    v24 = v22;
    v34 &= 1u;
    (*(v43 + 8))(v8, v5);
    *&v52[0] = v40;
    *(v52 + 8) = v119;
    *(&v52[1] + 8) = v120;
    *(&v52[2] + 8) = v121;
    *(&v52[3] + 1) = v122;
    v52[6] = v116;
    v52[7] = v117;
    v52[8] = v118[0];
    *(&v52[8] + 9) = *(v118 + 9);
    v52[4] = v114;
    v52[5] = v115;
    *(&v52[9] + 9) = *v113;
    HIDWORD(v52[9]) = *&v113[3];
    v31 = v11;
    *&v52[10] = v11;
    *(&v52[10] + 1) = v39;
    LODWORD(v43) = v112;
    LOBYTE(v52[11]) = v112;
    *(&v52[11] + 1) = *v111;
    DWORD1(v52[11]) = *&v111[3];
    *(&v52[11] + 1) = v38;
    HIDWORD(v29) = v110;
    LOBYTE(v52[12]) = v110;
    *(&v52[12] + 1) = *v109;
    DWORD1(v52[12]) = *&v109[3];
    *(&v52[12] + 1) = v37;
    *&v52[13] = v36;
    *(&v52[13] + 1) = v49;
    *&v52[14] = v15;
    v30 = v15;
    *(&v52[14] + 1) = v51;
    *&v52[15] = v50;
    *(&v52[15] + 1) = v48;
    *&v52[16] = v47;
    *(&v52[16] + 1) = v46;
    *&v52[17] = v45;
    *(&v52[17] + 1) = v16;
    *&v52[18] = v42;
    *(&v52[18] + 1) = __PAIR64__(v20, v18);
    *&v52[19] = v21;
    v25 = v33;
    BYTE4(v52[19]) = v34;
    *(&v52[19] + 5) = v107;
    BYTE7(v52[19]) = v108;
    v26 = v35;
    DWORD2(v52[19]) = v35;
    v27 = v106;
    BYTE12(v52[19]) = v106;
    BYTE13(v52[19]) = v33;
    v28 = v32;
    *&v52[20] = v24;
    *(&v52[20] + 1) = v32;
    memcpy(v41, v52, 0x150uLL);
    sub_242D48DCC(v52, &v53);
    __swift_destroy_boxed_opaque_existential_2Tm(v44);
    v54 = v119;
    v55 = v120;
    v56 = v121;
    v53 = v40;
    v57 = v122;
    v60 = v116;
    v61 = v117;
    *v62 = v118[0];
    *&v62[9] = *(v118 + 9);
    v58 = v114;
    v59 = v115;
    *v63 = *v113;
    *&v63[3] = *&v113[3];
    v64 = v31;
    v65 = v39;
    v66 = v43;
    *v67 = *v111;
    *&v67[3] = *&v111[3];
    v68 = v38;
    v69 = BYTE4(v29);
    *v70 = *v109;
    *&v70[3] = *&v109[3];
    v71 = v37;
    v72 = v36;
    v73 = v49;
    v74 = v30;
    v75 = v51;
    v76 = v50;
    v77 = v48;
    v78 = v47;
    v79 = v46;
    v80 = v45;
    v81 = v16;
    v82 = v42;
    v83 = v18;
    v84 = v20;
    v85 = v21;
    v86 = v34;
    v87 = v107;
    v88 = v108;
    v89 = v26;
    v90 = v27;
    v91 = v25;
    v92 = v24;
    v93 = v28;
    return sub_242D48E28(&v53);
  }
}

uint64_t sub_242E2C330(uint64_t a1)
{
  v4 = *(v1 + 288);
  v5 = sub_242CE6D94(MEMORY[0x277D84F90]);
  v9[2] = a1;
  v6 = sub_242C8A810(v5, sub_242C8C7E4, v9, v4);
  if (v2)
  {
  }

  v8 = v6;

  *(v1 + 288) = v8;
  return result;
}

uint64_t sub_242E2C404()
{
  sub_242F06390();
  MeasurementLabelConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242E2C448()
{
  sub_242F06390();
  MeasurementLabelConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242E2C490(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t static MeasurementLabelConfiguration.ColorIDs.single(_:redacted:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3378);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F09510;
  *(inited + 32) = 0;
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  *(inited + 56) = v8;
  sub_242C7CE5C(v4, v5, v8);
  sub_242C7CE5C(v6, v7, v9);
  v11 = sub_242CE7008(inited);
  swift_setDeallocating();
  sub_242C7CE5C(v4, v5, v8);
  sub_242C7CE5C(v6, v7, v9);
  sub_242C7CE5C(v4, v5, v8);
  sub_242C7CE5C(v6, v7, v9);
  sub_242C6D138(inited + 32, &qword_27ECF1F18);
  *a3 = v11;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_242F09510;
  *(v12 + 32) = 0;
  v13 = v12 + 32;
  *(v12 + 40) = v4;
  *(v12 + 48) = v5;
  *(v12 + 56) = v8;
  v14 = sub_242CE7008(v12);
  swift_setDeallocating();
  sub_242C6D138(v13, &qword_27ECF1F18);
  *(a3 + 8) = v14;
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_242F09510;
  *(v15 + 32) = 0;
  v16 = v15 + 32;
  *(v15 + 40) = v4;
  *(v15 + 48) = v5;
  *(v15 + 56) = v8;
  v17 = sub_242CE7008(v15);
  swift_setDeallocating();
  result = sub_242C6D138(v16, &qword_27ECF1F18);
  *(a3 + 16) = v17;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
  *(a3 + 40) = v9;
  *(a3 + 48) = v6;
  *(a3 + 56) = v7;
  *(a3 + 64) = v9;
  *(a3 + 72) = v6;
  *(a3 + 80) = v7;
  *(a3 + 88) = v9;
  return result;
}

uint64_t MeasurementLabelConfiguration.setRightHandDriveAlignmentOverride()@<X0>(unint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3 = dword_242F38E20[__dst[317]];
  if (qword_27ECEF678 != -1)
  {
    swift_once();
  }

  v4 = word_27ECF6D52 | (HIBYTE(word_27ECF6D52) << 8);
  swift_getKeyPath();
  sub_242E283E0(v4 | v3, a1);
}

uint64_t _s14CarPlayAssetUI29MeasurementLabelConfigurationV8ColorIDsV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_242C75A30(*a1, *a2) & 1) == 0 || (sub_242C75A30(v2, v4) & 1) == 0 || (sub_242C75A30(v3, v5) & 1) == 0)
  {
    goto LABEL_15;
  }

  v6 = Theme.ColorID.rawValue.getter();
  v8 = v7;
  if (v6 == Theme.ColorID.rawValue.getter() && v8 == v9)
  {
  }

  else
  {
    v10 = sub_242F06110();

    if ((v10 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v11 = Theme.ColorID.rawValue.getter();
  v13 = v12;
  if (v11 == Theme.ColorID.rawValue.getter() && v13 == v14)
  {

    goto LABEL_12;
  }

  v15 = sub_242F06110();

  if ((v15 & 1) == 0)
  {
LABEL_15:
    v20 = 0;
    return v20 & 1;
  }

LABEL_12:
  v16 = Theme.ColorID.rawValue.getter();
  v18 = v17;
  if (v16 == Theme.ColorID.rawValue.getter() && v18 == v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_242F06110();
  }

  return v20 & 1;
}

BOOL _s14CarPlayAssetUI29MeasurementLabelConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 24);
  v123[0] = *(a1 + 8);
  v123[1] = v5;
  v123[2] = *(a1 + 40);
  v124 = *(a1 + 56);
  v6 = *(a1 + 112);
  v127 = *(a1 + 96);
  v128 = v6;
  v129[0] = *(a1 + 128);
  *(v129 + 9) = *(a1 + 137);
  v7 = *(a1 + 80);
  v125 = *(a1 + 64);
  v126 = v7;
  v92 = *(a1 + 160);
  v88 = *(a1 + 168);
  v91 = *(a1 + 176);
  v89 = *(a1 + 192);
  v84 = *(a1 + 184);
  v85 = *(a1 + 200);
  v82 = *(a1 + 216);
  v77 = *(a1 + 208);
  v78 = *(a1 + 224);
  v9 = *(a1 + 232);
  v8 = *(a1 + 240);
  v11 = *(a1 + 248);
  v10 = *(a1 + 256);
  v13 = *(a1 + 264);
  v12 = *(a1 + 272);
  v15 = *(a1 + 280);
  v14 = *(a1 + 288);
  v16 = *(a1 + 296);
  v17 = *(a1 + 300);
  v18 = *(a1 + 304);
  v19 = *(a1 + 308);
  v20 = *(a1 + 312);
  v21 = *(a1 + 316);
  v22 = *(a1 + 317);
  v23 = *(a1 + 320);
  v24 = *(a1 + 328);
  v25 = *a2;
  v26 = *(a2 + 24);
  v130[0] = *(a2 + 8);
  v130[1] = v26;
  v130[2] = *(a2 + 40);
  v131 = *(a2 + 56);
  v27 = *(a2 + 112);
  v134 = *(a2 + 96);
  v135 = v27;
  v136[0] = *(a2 + 128);
  *(v136 + 9) = *(a2 + 137);
  v28 = *(a2 + 80);
  v132 = *(a2 + 64);
  v133 = v28;
  v29 = *(a2 + 160);
  v87 = *(a2 + 168);
  v90 = *(a2 + 176);
  v30 = *(a2 + 296);
  v31 = *(a2 + 300);
  v32 = *(a2 + 304);
  v33 = *(a2 + 312);
  v34 = *(a2 + 184);
  v35 = *(a2 + 192);
  v83 = *(a2 + 200);
  v76 = *(a2 + 208);
  v81 = *(a2 + 216);
  v75 = *(a2 + 224);
  v86 = *(a2 + 232);
  v79 = *(a2 + 240);
  v74 = *(a2 + 248);
  v72 = *(a2 + 256);
  v80 = *(a2 + 264);
  v73 = *(a2 + 272);
  if (v4)
  {
    if (!v25)
    {
      return 0;
    }

    v64 = v14;
    v65 = *(a2 + 280);
    v63 = *(a2 + 288);
    v60 = *(a2 + 316);
    v61 = *(a2 + 308);
    v57 = *(a2 + 317);
    v58 = v22;
    v53 = *(a2 + 320);
    v54 = v23;
    v55 = *(a2 + 328);
    v56 = v24;
    v62 = v19;
    v59 = v21;
    v69 = v9;
    *&v70 = v11;
    v67 = v8;
    v68 = v12;
    *(&v70 + 1) = v10;
    v71 = v13;
    v66 = v15;

    v36 = sub_242E28004(v4, v25);

    if ((v36 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v25)
    {
      return 0;
    }

    v64 = v14;
    v65 = *(a2 + 280);
    v63 = *(a2 + 288);
    v60 = *(a2 + 316);
    v61 = *(a2 + 308);
    v57 = *(a2 + 317);
    v58 = v22;
    v53 = *(a2 + 320);
    v54 = v23;
    v55 = *(a2 + 328);
    v56 = v24;
    v62 = v19;
    v59 = v21;
    v69 = v9;
    *&v70 = v11;
    v67 = v8;
    v68 = v12;
    *(&v70 + 1) = v10;
    v71 = v13;
    v66 = v15;
  }

  v37 = *(a1 + 24);
  v114 = *(a1 + 8);
  v115 = v37;
  v116 = *(a1 + 40);
  *&v117 = *(a1 + 56);
  v38 = *(a2 + 24);
  v109 = *(a2 + 8);
  v110 = v38;
  v111 = *(a2 + 40);
  *&v112 = *(a2 + 56);
  sub_242C94884(v123, &v104);
  sub_242C94884(v130, &v104);
  v39 = _s14CarPlayAssetUI10RasterFontV2eeoiySbAC_ACtFZ_0(&v114, &v109);
  v119[0] = v109;
  v119[1] = v110;
  v119[2] = v111;
  v120 = v112;
  sub_242C954DC(v119);
  v121[0] = v114;
  v121[1] = v115;
  v121[2] = v116;
  v122 = v117;
  sub_242C954DC(v121);
  if ((v39 & 1) == 0)
  {
    return 0;
  }

  v106 = v127;
  v107 = v128;
  v108[0] = v129[0];
  *(v108 + 9) = *(v129 + 9);
  v104 = v125;
  v105 = v126;
  v101 = v134;
  v102 = v135;
  v103[0] = v136[0];
  *(v103 + 9) = *(v136 + 9);
  v99 = v132;
  v100 = v133;
  sub_242E2D2C0(&v125, v97);
  sub_242E2D2C0(&v132, v97);
  v40 = _s14CarPlayAssetUI29MeasurementLabelConfigurationV8ColorIDsV2eeoiySbAE_AEtFZ_0(&v104, &v99);
  v111 = v101;
  v112 = v102;
  v113[0] = v103[0];
  *(v113 + 9) = *(v103 + 9);
  v109 = v99;
  v110 = v100;
  sub_242E2D2F8(&v109);
  v116 = v106;
  v117 = v107;
  v118[0] = v108[0];
  *(v118 + 9) = *(v108 + 9);
  v114 = v104;
  v115 = v105;
  sub_242E2D2F8(&v114);
  if ((v40 & 1) == 0 || v92 != v29)
  {
    return 0;
  }

  if (v91)
  {
    if (!v90)
    {
      return 0;
    }
  }

  else
  {
    v41 = v90;
    if (v88 != v87)
    {
      v41 = 1;
    }

    if (v41)
    {
      return 0;
    }
  }

  if (v89)
  {
    if (!v35)
    {
      return 0;
    }
  }

  else
  {
    if (v84 == v34)
    {
      v42 = v35;
    }

    else
    {
      v42 = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  if (v85 != v83)
  {
    return 0;
  }

  if (v82)
  {
    v43 = v79;
    if (!v81 || (v77 != v76 || v82 != v81) && (sub_242F06110() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v43 = v79;
    if (v81)
    {
      return 0;
    }
  }

  if (v78)
  {
    if (!v75)
    {
      return 0;
    }

    v44 = sub_242C7653C(v78, v75);

    if ((v44 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v75)
  {
    return 0;
  }

  if (!v70)
  {
    sub_242C94804(v69, v67, 0);
    v46 = v74;
    if (!v74)
    {
      sub_242C94804(v86, v43, 0);
      sub_242C94844(v69, v67, 0);
      goto LABEL_45;
    }

    sub_242C94804(v86, v43, v74);
    v45 = v67;
    v48 = v69;
    v49 = 0;
LABEL_43:
    sub_242C94844(v48, v45, v49);
    sub_242C94844(v86, v43, v46);
    return 0;
  }

  *&v104 = v69;
  v45 = v67;
  *(&v104 + 1) = v67;
  v105 = v70;
  *&v106 = v71;
  *(&v106 + 1) = v68;
  *&v107 = v66;
  v46 = v74;
  if (!v74)
  {
    v99 = v104;
    v100 = v105;
    v101 = v106;
    *&v102 = v107;
    v48 = v69;
    sub_242C94804(v69, v67, v70);
    v43 = v79;
    sub_242C94804(v86, v79, 0);
    sub_242C94804(v69, v67, v70);
    sub_242C954DC(&v99);
    v49 = v70;
    goto LABEL_43;
  }

  *&v93 = v86;
  *(&v93 + 1) = v79;
  *&v94 = v74;
  *(&v94 + 1) = v72;
  *&v95 = v80;
  *(&v95 + 1) = v73;
  v96 = v65;
  sub_242C94804(v69, v67, v70);
  sub_242C94804(v86, v79, v74);
  sub_242C94804(v69, v67, v70);
  v47 = _s14CarPlayAssetUI10RasterFontV2eeoiySbAC_ACtFZ_0(&v104, &v93);
  v97[0] = v93;
  v97[1] = v94;
  v97[2] = v95;
  v98 = v96;
  sub_242C954DC(v97);
  v99 = v104;
  v100 = v105;
  v101 = v106;
  *&v102 = v107;
  sub_242C954DC(&v99);
  sub_242C94844(v69, v67, v70);
  if ((v47 & 1) == 0)
  {
    return 0;
  }

LABEL_45:
  sub_242C778E4(v64, v63);
  if ((v50 & 1) == 0 || v16 != v30 || v17 != v31 || v18 != v32 || v62 != v61)
  {
    return 0;
  }

  if (v59)
  {
    if (!v60)
    {
      return 0;
    }
  }

  else
  {
    v52 = v60;
    if (v20 != v33)
    {
      v52 = 1;
    }

    if (v52)
    {
      return 0;
    }
  }

  if (v58 != v57)
  {
    return 0;
  }

  if (!v56)
  {
    return !v55;
  }

  return v55 && (v54 == v53 && v56 == v55 || (sub_242F06110() & 1) != 0);
}

unint64_t sub_242E2D26C()
{
  result = qword_27ECF8D08;
  if (!qword_27ECF8D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8D08);
  }

  return result;
}

unint64_t sub_242E2D328()
{
  result = qword_27ECF8D30;
  if (!qword_27ECF8D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8D30);
  }

  return result;
}

unint64_t sub_242E2D37C()
{
  result = qword_27ECF8D48;
  if (!qword_27ECF8D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8D48);
  }

  return result;
}

uint64_t sub_242E2D3D0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0448);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242E2D454()
{
  result = qword_27ECF8D50;
  if (!qword_27ECF8D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8D50);
  }

  return result;
}

unint64_t sub_242E2D4A8()
{
  result = qword_27ECF8D58;
  if (!qword_27ECF8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8D58);
  }

  return result;
}

unint64_t sub_242E2D4FC()
{
  result = qword_27ECF8D70;
  if (!qword_27ECF8D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8D70);
  }

  return result;
}

unint64_t sub_242E2D550()
{
  result = qword_27ECF8D98;
  if (!qword_27ECF8D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8D98);
  }

  return result;
}

unint64_t sub_242E2D5A8()
{
  result = qword_27ECF8DA0;
  if (!qword_27ECF8DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8DA0);
  }

  return result;
}

unint64_t sub_242E2D5FC()
{
  result = qword_27ECF8DA8;
  if (!qword_27ECF8DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8DA8);
  }

  return result;
}

unint64_t sub_242E2D658()
{
  result = qword_27ECF8DB0;
  if (!qword_27ECF8DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8DB0);
  }

  return result;
}

unint64_t sub_242E2D6B0()
{
  result = qword_27ECF8DB8;
  if (!qword_27ECF8DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8DB8);
  }

  return result;
}

unint64_t sub_242E2D70C()
{
  result = qword_27ECF8DC0;
  if (!qword_27ECF8DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8DC0);
  }

  return result;
}

unint64_t sub_242E2D760(uint64_t a1)
{
  *(a1 + 16) = sub_242D48F24();
  result = sub_242D48ED0();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_242E2D798(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 336))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242E2D7E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 336) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_242E2D8AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_242E2D8F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MeasurementLabelConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MeasurementLabelConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_242E2DAE0()
{
  result = qword_27ECF8DC8;
  if (!qword_27ECF8DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8DC8);
  }

  return result;
}

unint64_t sub_242E2DB38()
{
  result = qword_27ECF8DD0;
  if (!qword_27ECF8DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8DD0);
  }

  return result;
}

unint64_t sub_242E2DB90()
{
  result = qword_27ECF8DD8;
  if (!qword_27ECF8DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8DD8);
  }

  return result;
}

unint64_t sub_242E2DBE8()
{
  result = qword_27ECF8DE0;
  if (!qword_27ECF8DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8DE0);
  }

  return result;
}

unint64_t sub_242E2DC40()
{
  result = qword_27ECF8DE8;
  if (!qword_27ECF8DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8DE8);
  }

  return result;
}

unint64_t sub_242E2DC98()
{
  result = qword_27ECF8DF0;
  if (!qword_27ECF8DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8DF0);
  }

  return result;
}

uint64_t sub_242E2DCEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6C6F436E6F6369 && a2 == 0xEC00000073444972;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F4365756C6176 && a2 == 0xED0000734449726FLL || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6C6F4374696E75 && a2 == 0xEC00000073444972 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000242F5BED0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000242F5BEF0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000242F5BF10 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t sub_242E2DF00(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656469727265766FLL && a2 == 0xE900000000000073 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953394534 && a2 == 0xE400000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x734449726F6C6F63 && a2 == 0xE800000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F69736963657270 && a2 == 0xE90000000000006ELL || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F5BF30 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F5BF50 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x72656469766964 && a2 == 0xE700000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F5BF70 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6562614C74696E75 && a2 == 0xEA0000000000736CLL || (sub_242F06110() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x746E6F4674696E75 && a2 == 0xE800000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6C75666574617473 && a2 == 0xEE00736567616D49 || (sub_242F06110() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6461506567616D69 && a2 == 0xEC000000676E6964 || (sub_242F06110() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6170536C6562616CLL && a2 == 0xEC000000676E6963 || (sub_242F06110() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x664F5965756C6176 && a2 == 0xEC00000074657366 || (sub_242F06110() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x795474657366666FLL && a2 == 0xEA00000000006570 || (sub_242F06110() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x61725465756C6176 && a2 == 0xED0000676E696B63 || (sub_242F06110() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074 || (sub_242F06110() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x676E696C69617274 && a2 == 0xEE00676E69727453)
  {

    return 17;
  }

  else
  {
    v5 = sub_242F06110();

    if (v5)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

unint64_t sub_242E2E4CC()
{
  result = qword_27ECF8DF8;
  if (!qword_27ECF8DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8DF8);
  }

  return result;
}

unint64_t sub_242E2E520()
{
  result = qword_27ECF8E00;
  if (!qword_27ECF8E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8E00);
  }

  return result;
}

unint64_t sub_242E2E574()
{
  result = qword_27ECF8E20[0];
  if (!qword_27ECF8E20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ECF8E20);
  }

  return result;
}

uint64_t sub_242E2E6F8(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = &v7 - v2;
  (*(v4 + 16))(&v7 - v2, v1);
  v5 = type metadata accessor for CodableWrapper();
  return CodableWrapper.wrappedValue.setter(v3, v5);
}

void (*CodableWrapper.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *(a2 + 24);
  v6[1] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v6[2] = v9;
  v6[3] = v9;
  v11 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v7[5] = v12;
  (*(v10 + 16))();
  return sub_242E2E904;
}

void sub_242E2E904(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))(*(*a1 + 32), v4, v7);
    (*(v5 + 40))(v8, v3, v7);
    (*(v6 + 8))(v4, v7);
  }

  else
  {
    (*(v2[2] + 40))(*v2, v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t CodableWrapper.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_242C6CF00(v11, v14);
  sub_242F054A0();
  if (v4)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  (*(a4 + 32))(a2, a4);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  return (*(v8 + 8))(v10, a2);
}

uint64_t CodableWrapper.encode(to:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 16);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v5, v2, v10);
  (*(*(a2 + 32) + 40))(v5, v7, *(a2 + 32));
  sub_242F04D70();
  return (*(v8 + 8))(v12, v7);
}

uint64_t CodableWrapper<>.hashValue.getter()
{
  sub_242F06390();
  sub_242F04D90();
  return sub_242F063E0();
}

uint64_t sub_242E2EDA4()
{
  sub_242F06390();
  CodableWrapper<>.hash(into:)();
  return sub_242F063E0();
}

uint64_t sub_242E2EE40()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_242E2EEB0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_242E2EFF0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
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
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_242E2F290@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_242F04000();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2CF8);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PopoverView(0);
  sub_242CA321C(v1 + *(v10 + 20), v9, &qword_27ECF2CF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_242CF6B3C(v9, a1, &qword_27ECF3030);
  }

  sub_242F05710();
  v12 = sub_242F04360();
  sub_242F03930();

  sub_242F03FF0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_242E2F478@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2170);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for PopoverView(0);
  sub_242E307E0(v1, a1 + *(v6 + 24), type metadata accessor for PopoverModel);
  *(a1 + *(v6 + 20)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2CF8);
  swift_storeEnumTagMultiPayload();
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_242CA321C(v1, v5, &qword_27ECF2170);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8F50);
  return sub_242CF6B3C(v5, a1 + *(v7 + 52), &qword_27ECF2168);
}

uint64_t PopoverView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for PopoverView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_242E307E0(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PopoverView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_242E30778(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a1 = sub_242E307DC;
  a1[1] = v7;
  return result;
}

uint64_t sub_242E2F6CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PopoverView(0);
  v5 = v4 - 8;
  v43 = *(v4 - 8);
  v42 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40 - v8;
  v10 = type metadata accessor for Slot();
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242F03CF0();
  v15 = v14;
  v17 = v16;
  v18 = type metadata accessor for Instrument();
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v20 = v11[11];
  v19(&v13[v20], 1, 1, v18);
  v21 = &v13[v11[12]];
  v22 = &v13[v11[13]];
  sub_242F03710();
  *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140) + 52)] = 7;
  *&v13[v11[14]] = 0;
  *(v13 + 15) = 12624;
  *(v13 + 16) = 0xE200000000000000;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  *(v13 + 5) = 1;
  *(v13 + 6) = 0;
  *(v13 + 7) = 0;
  *(v13 + 8) = v15;
  *(v13 + 9) = v17;
  *(v13 + 5) = 0u;
  *(v13 + 6) = 0u;
  *(v13 + 14) = 0;
  sub_242CF42A0(v9, &v13[v20]);
  *v21 = 0;
  *(v21 + 1) = 0;
  sub_242E2FAD4(v13, a1 + *(v5 + 32), a2);
  v23 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8F18) + 36);
  v24 = type metadata accessor for PlatterView();
  _s7SwiftUI10ShapeStyleP012CarPlayAssetB0AA8MaterialVRszrlE07platterH0AFvgZ_0();
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  *(v23 + 24) = swift_getKeyPath();
  *(v23 + 32) = 0;
  *(v23 + 40) = 0x4044000000000000;
  v25 = (v23 + *(v24 + 32));
  *v25 = 0;
  v25[1] = 0;
  v25[2] = 0;
  v26 = sub_242F04A70();
  v28 = v27;
  v29 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6960) + 36));
  *v29 = v26;
  v29[1] = v28;
  v30 = sub_242F04A40();
  v32 = v31;
  v33 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8F20) + 36);
  PopoverView.overlayButton()(v33);
  sub_242E30F1C(v13, type metadata accessor for Slot);
  v34 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8F28) + 36));
  *v34 = v30;
  v34[1] = v32;
  v35 = v41;
  sub_242E307E0(a1, v41, type metadata accessor for PopoverView);
  v36 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v37 = swift_allocObject();
  sub_242E30778(v35, v37 + v36);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8F30);
  v39 = (a2 + *(result + 36));
  *v39 = sub_242E30F7C;
  v39[1] = v37;
  v39[2] = 0;
  v39[3] = 0;
  return result;
}

uint64_t sub_242E2FAD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v35 = a2;
  v38 = a1;
  v41 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8F38);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v36 = (&v32 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3030);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3028);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  v16 = sub_242F04000();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v4;
  v21 = v4[1];
  if (*(v4 + 16) == 1)
  {
    sub_242CA0064(*v4, v4[1]);
    if (v22)
    {
      goto LABEL_3;
    }

LABEL_6:
    v23 = 1;
    return (*(v39 + 56))(v41, v23, 1, v40);
  }

  v33 = v18;

  sub_242F05710();
  v24 = sub_242F04360();
  v34 = v4;
  v25 = v24;
  sub_242F03930();

  sub_242F03FF0();
  swift_getAtKeyPath();
  sub_242E188A8(v22, v21, 0);
  (*(v17 + 8))(v20, v33);
  v22 = v42;
  v21 = v43;
  if (!v42)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_242E2F290(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_242D0DC4C(v22, v21);
    sub_242C6D138(v11, &qword_27ECF3030);
    v23 = 1;
  }

  else
  {
    sub_242CF6B3C(v11, v15, &qword_27ECF3028);

    v26 = v38;
    v27 = v22(v38, v35, v15);
    sub_242D0DC4C(v22, v21);
    sub_242D0DC4C(v22, v21);
    sub_242C6D138(v15, &qword_27ECF3028);
    v28 = type metadata accessor for Slot();
    v29 = v37;
    sub_242CA321C(v26 + *(v28 + 44), v37, &qword_27ECF2140);
    v30 = v36;
    sub_242CF6B3C(v29, v36 + *(v40 + 52), &qword_27ECF2138);
    *v30 = v27;
    sub_242CF6B3C(v30, v41, &qword_27ECF8F38);
    v23 = 0;
  }

  return (*(v39 + 56))(v41, v23, 1, v40);
}

uint64_t PopoverView.overlayButton()@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7CB0);
  v22 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8EA8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = type metadata accessor for PopoverView(0);
  v9 = v8 - 8;
  v21 = *(v8 - 8);
  v10 = *(v21 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = type metadata accessor for IconNotificationButton(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v9 + 32);
  v23 = v1;
  if (*(v1 + v14 + *(type metadata accessor for PopoverModel(0) + 20)) == 1)
  {
    if (qword_27ECEF6C0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for IconNotificationButtonConfiguration(0);
    v16 = __swift_project_value_buffer(v15, qword_27ECF7C98);
    sub_242E307E0(v16, v13 + *(v11 + 24), type metadata accessor for IconNotificationButtonConfiguration);
    sub_242E307E0(v23, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PopoverView);
    v17 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v18 = swift_allocObject();
    sub_242E30778(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
    *v13 = sub_242F047F0();
    v13[1] = sub_242E30B24;
    v13[2] = v18;
    sub_242E307E0(v13, v7, type metadata accessor for IconNotificationButton);
    swift_storeEnumTagMultiPayload();
    sub_242E30FFC(&qword_27ECF7FE8, type metadata accessor for IconNotificationButton);
    sub_242C7E000(&qword_27ECF7CC8, &qword_27ECF7CB0);
    sub_242F041C0();
    return sub_242E30F1C(v13, type metadata accessor for IconNotificationButton);
  }

  else
  {
    sub_242F048E0();
    v20 = v22;
    (*(v22 + 16))(v7, v4, v2);
    swift_storeEnumTagMultiPayload();
    sub_242E30FFC(&qword_27ECF7FE8, type metadata accessor for IconNotificationButton);
    sub_242C7E000(&qword_27ECF7CC8, &qword_27ECF7CB0);
    sub_242F041C0();
    return (*(v20 + 8))(v4, v2);
  }
}

uint64_t sub_242E30450@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_242E307E0(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PopoverView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_242E30778(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_242E31114;
  a2[1] = v7;
  return result;
}

uint64_t _s14CarPlayAssetUI12PopoverModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2170);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2168);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  sub_242CA321C(a1, v6, &qword_27ECF2170);
  sub_242CF6B3C(v6, v12, &qword_27ECF2168);
  sub_242CA321C(a2, v6, &qword_27ECF2170);
  sub_242CF6B3C(v6, v9, &qword_27ECF2168);
  sub_242F03720();
  sub_242E30FFC(&qword_27ECF2260, MEMORY[0x277CC95F0]);
  v13 = sub_242F04EE0();
  sub_242C6D138(v9, &qword_27ECF2168);
  sub_242C6D138(v12, &qword_27ECF2168);
  if (v13)
  {
    v14 = type metadata accessor for PopoverModel(0);
    v15 = *(a1 + *(v14 + 20)) ^ *(a2 + *(v14 + 20)) ^ 1;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_242E30778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PopoverView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_242E307E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for PopoverView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_242E188A8(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2CF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3028);
    if (!(*(*(v7 - 8) + 48))(v5 + v6, 1, v7))
    {
      v8 = sub_242F03720();
      (*(*(v8 - 8) + 8))(v5 + v6, v8);
    }
  }

  else
  {
  }

  v9 = v5 + *(v1 + 24);
  v10 = sub_242F03720();
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = v9 + *(type metadata accessor for Instrument() + 20);
  v27 = *(v11 + 464);
  v28 = *(v11 + 480);
  v25 = *(v11 + 432);
  v26 = *(v11 + 448);
  v23 = *(v11 + 400);
  v24 = *(v11 + 416);
  v21 = *(v11 + 368);
  v22 = *(v11 + 384);
  v19 = *(v11 + 336);
  v20 = *(v11 + 352);
  v17 = *(v11 + 304);
  v18 = *(v11 + 320);
  v15 = *(v11 + 272);
  v16 = *(v11 + 288);
  v13 = *(v11 + 240);
  v14 = *(v11 + 256);
  sub_242D3B6A0(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24), *(v11 + 32), *(v11 + 40), *(v11 + 48), *(v11 + 56), *(v11 + 64), *(v11 + 72), *(v11 + 80), *(v11 + 88), *(v11 + 96), *(v11 + 104), *(v11 + 112), *(v11 + 120), *(v11 + 128), *(v11 + 136), *(v11 + 144), *(v11 + 152), *(v11 + 160), *(v11 + 168), *(v11 + 176), *(v11 + 184), *(v11 + 192), *(v11 + 200), *(v11 + 208), *(v11 + 216), *(v11 + 224), *(v11 + 232), v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16, *(&v16 + 1), v17, *(&v17 + 1), v18, *(&v18 + 1), v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28, SBYTE8(v28), *(v11 + 496));

  type metadata accessor for PopoverModel(0);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_242E30B24()
{
  v1 = type metadata accessor for PopoverView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + *(v1 + 24);
  v4 = type metadata accessor for PopoverModel(0);
  return (*(v3 + *(v4 + 28) + v2))();
}

unint64_t sub_242E30BE4()
{
  result = type metadata accessor for Instrument();
  if (v1 <= 0x3F)
  {
    result = sub_242E30C70();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_242E30C70()
{
  result = qword_27ECF8EC0;
  if (!qword_27ECF8EC0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27ECF8EC0);
  }

  return result;
}

void sub_242E30CE8()
{
  sub_242DB2054(319, &qword_27ECF8EE0, &qword_27ECF8EE8);
  if (v0 <= 0x3F)
  {
    sub_242DB2054(319, &qword_27ECF8EF0, &qword_27ECF3030);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PopoverModel(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_242E30DB4()
{
  result = qword_27ECF8F08;
  if (!qword_27ECF8F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF8F10);
    sub_242E30FFC(&qword_27ECF7FE8, type metadata accessor for IconNotificationButton);
    sub_242C7E000(&qword_27ECF7CC8, &qword_27ECF7CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8F08);
  }

  return result;
}

uint64_t sub_242E30E9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PopoverView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_242E2F6CC(v4, a1);
}

uint64_t sub_242E30F1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_242E30F7C()
{
  v1 = type metadata accessor for PopoverView(0);
  v2 = v0 + *(v1 + 24) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = type metadata accessor for PopoverModel(0);
  return (*(v2 + *(v3 + 24)))(v2);
}

uint64_t sub_242E30FFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_242E3108C()
{
  result = type metadata accessor for PopoverModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Color.init(r:g:b:a:)()
{
  v0 = sub_242F04700();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  return sub_242F047A0();
}

uint64_t Color.init(hex:alpha:)()
{
  v0 = sub_242F04700();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v1);
  return sub_242F047A0();
}

id WidgetContainerViewController.__allocating_init(widgetViewController:iconImageInfo:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = objc_allocWithZone(v5);
  v11[OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_showsSquareCorners] = 0;
  *&v11[OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_widgetViewController] = a1;
  v12 = &v11[OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_iconImageInfo];
  *v12 = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  *&v11[OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_presentationMode] = 2;
  v14.receiver = v11;
  v14.super_class = v5;
  return objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
}

id WidgetContainerViewController.init(widgetViewController:iconImageInfo:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5[OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_showsSquareCorners] = 0;
  *&v5[OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_widgetViewController] = a1;
  v6 = &v5[OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_iconImageInfo];
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  *&v5[OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_presentationMode] = 2;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for WidgetContainerViewController();
  return objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
}

id WidgetContainerViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void WidgetContainerViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_showsSquareCorners) = 0;
  sub_242F05C60();
  __break(1u);
}

void sub_242E31588()
{
  v23.receiver = v0;
  v23.super_class = type metadata accessor for WidgetContainerViewController();
  objc_msgSendSuper2(&v23, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  v3 = [objc_opt_self() blackColor];
  [v2 setBackgroundColor_];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 layer];

  v7 = &v0[OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_iconImageInfo];
  swift_beginAccess();
  [v6 setCornerRadius_];

  v8 = *&v0[OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_widgetViewController];
  [v0 bs:v8 addChildViewController:?];
  v9 = [v8 view];
  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v9;
  v11 = [v0 view];
  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = v11;
  [v11 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [v10 setFrame_];
  v21 = [v8 view];
  if (v21)
  {
    v22 = v21;
    [v21 setAutoresizingMask_];

    return;
  }

LABEL_11:
  __break(1u);
}

double sub_242E31820()
{
  v1 = v0 + OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_iconImageInfo;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_242E318D8(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_iconImageInfo);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

id sub_242E319A4()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

double sub_242E31B14()
{
  v1 = v0 + OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_iconImageInfo;
  swift_beginAccess();
  return *(v1 + 24);
}

uint64_t sub_242E31BA4()
{
  v1 = OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_showsSquareCorners;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_242E31C3C(char a1)
{
  v3 = OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_showsSquareCorners;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_242E31D34()
{
  v1 = OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_presentationMode;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_242E31DFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_presentationMode;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = 3;
  if (a1 != 1)
  {
    v4 = 1;
  }

  if (a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2;
  }

  return [*(v1 + OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_widgetViewController) setPresentationMode_];
}

id sub_242E31E7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_presentationMode;
  swift_beginAccess();
  *(v3 + v4) = v2;
  v5 = 3;
  if (v2 != 1)
  {
    v5 = 1;
  }

  if (v2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 2;
  }

  return [*(v3 + OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_widgetViewController) setPresentationMode_];
}

void (*sub_242E31F00(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_presentationMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_242E31F88;
}

void sub_242E31F88(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + v3[4]);
    v6 = 3;
    if (v5 != 1)
    {
      v6 = 1;
    }

    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 2;
    }

    [*(v4 + OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_widgetViewController) setPresentationMode_];
  }

  free(v3);
}

id WidgetContainerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_242F04F00();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id WidgetContainerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetContainerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

int *WidgetGallery.init(extensionProvider:excluding:denyListExtensions:addWidget:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  *a6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9050);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for WidgetGallery();
  *(a6 + result[5]) = a1;
  *(a6 + result[6]) = a2;
  *(a6 + result[7]) = a3;
  v13 = (a6 + result[8]);
  *v13 = a4;
  v13[1] = a5;
  return result;
}

char *WidgetGallery.makeUIViewController(context:)()
{
  v1 = v0;
  v2 = type metadata accessor for WidgetGallery();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v10 = *(v0 + v9[7]);
  v11 = *(v0 + v9[8]);
  v12 = *(v0 + v9[9]);
  sub_242E32C1C(v1, &v18 - v7);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_242E32C80(v8, v14 + v13);
  sub_242E32C1C(v1, v5);
  v15 = swift_allocObject();
  sub_242E32C80(v5, v15 + v13);
  objc_allocWithZone(type metadata accessor for WidgetGalleryViewController());
  v16 = v10;

  return WidgetGalleryViewController.init(extensionProvider:excluding:denyListExtensions:_:addWidget:)(v16, v11, v12, sub_242E32CE4, v14, sub_242E32CE8, v15);
}

uint64_t sub_242E32620(uint64_t a1)
{
  v2 = sub_242F04000();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9050);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = sub_242F03CE0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242E3322C(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_242F05710();
    v13 = sub_242F04360();
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_242F03CD0();
  return (*(v10 + 8))(v12, v9);
}

char *sub_242E3288C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v11 = *(v2 + v10[7]);
  v12 = *(v2 + v10[8]);
  v13 = *(v2 + v10[9]);
  sub_242E32C1C(v3, &v19 - v8);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_242E32C80(v9, v15 + v14);
  sub_242E32C1C(v3, v6);
  v16 = swift_allocObject();
  sub_242E32C80(v6, v16 + v14);
  objc_allocWithZone(type metadata accessor for WidgetGalleryViewController());
  v17 = v11;

  return WidgetGalleryViewController.init(extensionProvider:excluding:denyListExtensions:_:addWidget:)(v17, v12, v13, sub_242E332A0, v15, sub_242E3329C, v16);
}

uint64_t sub_242E32A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242E32F74(&qword_27ECF9098);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_242E32B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242E32F74(&qword_27ECF9098);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_242E32B8C()
{
  sub_242E32F74(&qword_27ECF9098);
  sub_242F04330();
  __break(1u);
}

uint64_t type metadata accessor for WidgetGallery()
{
  result = qword_27ECF9068;
  if (!qword_27ECF9068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242E32C1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetGallery();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242E32C80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetGallery();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_242E32D48()
{
  sub_242E32E74(319, &qword_27ECF9078, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for WidgetExtensionProvider();
    if (v1 <= 0x3F)
    {
      sub_242E32E74(319, &qword_27ECF9080, sub_242E32ED8, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_242E32F24();
        if (v3 <= 0x3F)
        {
          sub_242E30C70();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_242E32E74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_242E32ED8()
{
  result = qword_27ECF9088;
  if (!qword_27ECF9088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECF9088);
  }

  return result;
}

void sub_242E32F24()
{
  if (!qword_27ECF9090)
  {
    v0 = sub_242F053E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF9090);
    }
  }
}

uint64_t sub_242E32F74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WidgetGallery();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242E32FB8()
{
  v1 = *(type metadata accessor for WidgetGallery() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_242E32620(v2);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for WidgetGallery();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9050);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_242F03CE0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_242E3322C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_242E332A4(void *a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_galleryLayoutSize] = 0;
  swift_unknownObjectWeakInit();
  v7 = &v3[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_addWidget];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v3[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_titledButtonsAlpha] = 0x3FF0000000000000;
  *&v3[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_extensionProvider] = a1;
  v8 = type metadata accessor for WidgetExtensionProviderObserver();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver__id] = 0;
  v10 = &v9[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_onChange];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = a1;
  sub_242F037A0();
  *&v9[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_provider] = v11;
  v28.receiver = v9;
  v28.super_class = v8;
  *&v3[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_extensionProviderObserver] = objc_msgSendSuper2(&v28, sel_init);
  v12 = [objc_allocWithZone(MEMORY[0x277D66108]) initWithWidgetExtensionProvider_];
  *&v3[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_configurationManager] = v12;
  *&v3[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_listLayoutProvider] = [objc_allocWithZone(MEMORY[0x277D66160]) initWithScreenType_];
  v13 = &v3[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_dismiss];
  *v13 = a2;
  *(v13 + 1) = a3;
  v14 = objc_allocWithZone(MEMORY[0x277D66288]);

  v15 = [v14 init];
  type metadata accessor for WidgetGalleryManager.IconViewProvider();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v16 + 24) = v15;
  *&v3[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager__iconViewProvider] = v16;
  v27.receiver = v3;
  v27.super_class = type metadata accessor for WidgetGalleryManager();
  v17 = v15;
  v18 = objc_msgSendSuper2(&v27, sel_init);
  [v17 setDelegate_];
  swift_unknownObjectWeakAssign();
  v19 = *&v18[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_extensionProviderObserver];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = &v19[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_onChange];
  v22 = *&v19[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_onChange];
  *v21 = sub_242E34940;
  v21[1] = v20;
  v23 = v19;
  swift_retain_n();
  sub_242C655DC(v22);
  [*&v23[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_provider] registerObserver_];

  v24 = OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_configurationManager;
  [*&v18[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_configurationManager] setAllowsFakeWidgets_];
  v25 = *&v18[v24];
  [v25 setConfigurationManagerDelegate_];

  [*&v18[v24] setAddWidgetSheetLocation_];
  [*&v18[v24] setMinimumRequiredSDKVersion_];

  return v18;
}

void sub_242E335E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      [*&v1[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_configurationManager] updatePresentedWidgetEditingViewController_];
    }
  }
}

uint64_t sub_242E33794()
{
  sub_242CC5024(v0 + 16);

  return swift_deallocClassInstance();
}

id sub_242E33804()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetGalleryManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_242E33998(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9410);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v68 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0960);
  result = [a1 icon];
  if (!result)
  {
    return result;
  }

  result = [a1 icon];
  if (!result)
  {
    return result;
  }

  v8 = result;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {
    goto LABEL_26;
  }

  v10 = [v9 activeDataSource];
  if (!v10)
  {
    goto LABEL_26;
  }

  v11 = v10;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12 || (v13 = v12, (v14 = [v12 extensionBundleIdentifier]) == 0))
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v15 = v14;
  v16 = sub_242F04F30();
  v18 = v17;
  v19 = [v13 containerBundleIdentifier];
  if (!v19)
  {

    swift_unknownObjectRelease();

    return 0;
  }

  v71 = v16;
  v72 = v8;
  v74 = v18;
  v20 = v19;
  v70 = sub_242F04F30();
  v73 = v21;
  v22 = *(v1 + OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_extensionProvider);
  v23 = [v13 kind];
  v75 = v11;
  if (!v23)
  {
    sub_242F04F30();
    v23 = sub_242F04F00();
  }

  v69 = v22;
  v24 = [v22 sbh:v23 descriptorWithKind:v15 extensionBundleIdentifier:v20 containerBundleIdentifier:?];

  v25 = v24;
  if (!v24)
  {

    swift_unknownObjectRelease();

    return 0;
  }

  v26 = v1;
  sub_242F057A0();
  sub_242F03810();
  sub_242F03810();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9420);
  (*(*(v27 - 8) + 56))(v5, 0, 1, v27);
  v28 = sub_242F05790();
  v29 = [v13 kind];
  v8 = v72;
  if (!v29)
  {
    sub_242F04F30();
    v29 = sub_242F04F00();
  }

  v30 = [v25 defaultIntentReference];
  v31 = objc_allocWithZone(MEMORY[0x277CFA358]);
  v32 = v28;
  v33 = [v31 initWithExtensionIdentity:v32 kind:v29 family:1 intentReference:v30 activityIdentifier:0];

  v34 = [objc_allocWithZone(MEMORY[0x277D66160]) init];
  v35 = [v34 layoutForIconLocation_];
  if (!v35)
  {

LABEL_25:
    swift_unknownObjectRelease();
LABEL_26:

    return 0;
  }

  v36 = v35;
  v37 = v26;
  if (([v35 respondsToSelector_] & 1) == 0)
  {

    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  [v36 iconImageInfoForGridSizeClass_];
  v39 = v38;
  v41 = v40;
  swift_unknownObjectRelease();
  v42 = v33;
  v43 = [objc_allocWithZone(MEMORY[0x277CFA430]) initWithRenderingMode:0 backgroundViewPolicy:1];
  [a1 iconImageInfo];
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = fabs(v41);
  v53 = fabs(v39);
  if (v53 < v52)
  {
    v52 = v53;
  }

  v54 = _sSo16CHSWidgetMetricsC14CarPlayAssetUIE03cardB04withAB12CoreGraphics7CGFloatV_tFZ_0(v45 / v52);
  v55 = objc_allocWithZone(MEMORY[0x277D66358]);
  v73 = v54;
  v74 = v42;
  v56 = v25;
  v57 = [v55 initWithWidget:v42 metrics:v54 widgetConfigurationIdentifier:0];
  [v57 setContentType_];
  [v57 setCanAppearInSecureEnvironment_];
  [v57 setDrawSystemBackgroundMaterialIfNecessary_];
  [v57 setVisibility_];
  [v57 setShouldShareTouchesWithHost_];
  [v57 sbh:v69 setWidgetExtensionProvider:?];
  [v57 setDelegate_];
  [v57 setColorScheme_];
  [v57 setRenderScheme_];
  v58 = [objc_allocWithZone(MEMORY[0x277D66330]) initWithRenderScheme:v43 colorScheme:2];
  [v57 sbh:v58 setCustomDisplayConfiguration:?];

  [v57 setSupportedColorSchemes_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1988);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_242F112E0;
  *(v59 + 32) = v43;
  sub_242C8760C(0, &qword_27ECF9430);
  v60 = v43;
  v61 = sub_242F052E0();

  [v57 setSupportedRenderSchemes_];

  [a1 setIconContentScalingEnabled_];
  if ([v56 isBackgroundRemovable])
  {
    [a1 setIconContentScale_];
  }

  v62 = type metadata accessor for WidgetContainerViewController();
  v63 = objc_allocWithZone(v62);
  v63[OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_showsSquareCorners] = 0;
  *&v63[OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_widgetViewController] = v57;
  v64 = &v63[OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_iconImageInfo];
  *v64 = v45;
  *(v64 + 1) = v47;
  *(v64 + 2) = v49;
  *(v64 + 3) = v51;
  *&v63[OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_presentationMode] = 2;
  v76.receiver = v63;
  v76.super_class = v62;
  v65 = objc_msgSendSuper2(&v76, sel_initWithNibName_bundle_, 0, 0);
  v66 = [v65 traitOverrides];
  v67 = [objc_opt_self() defaultStyleConfiguration];
  sub_242C8760C(0, &qword_27ECF9438);
  [v66 setObject:v67 forTrait:swift_getObjCClassFromMetadata()];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v65;
}

void sub_242E345C0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];

    if (v2)
    {
      v3 = [v2 window];

      if (v3)
      {
        if (!swift_dynamicCastObjCProtocolConditional())
        {
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_242E3466C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_dismiss);

  v4(v5);

  v6 = [a1 icon];
  if (!v6)
  {
    return;
  }

  v32 = v6;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7 || (v8 = [v7 activeWidget]) == 0)
  {
LABEL_17:
    v30 = v32;
    goto LABEL_18;
  }

  v31 = v8;
  v9 = [v8 displayName];
  if (v9)
  {
    v10 = v9;
    v11 = sub_242F04F30();
    v13 = v12;

    v14 = [v31 extensionBundleIdentifier];
    if (!v14)
    {

      goto LABEL_13;
    }

    v15 = v14;
    v16 = sub_242F04F30();
    v18 = v17;

    v19 = [v31 containerBundleIdentifier];
    if (!v19)
    {

      goto LABEL_13;
    }

    v20 = v19;
    v21 = sub_242F04F30();
    v23 = v22;

    v24 = *(v2 + OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_addWidget);
    if (v24)
    {

      v25 = [v31 kind];
      v26 = sub_242F04F30();
      v27 = v21;
      v29 = v28;

      v24(v11, v13, v26, v29, v16, v18, v27, v23);
      sub_242C655DC(v24);

LABEL_13:

      return;
    }

    goto LABEL_17;
  }

  v30 = v31;
LABEL_18:
}

char *WidgetGalleryViewController.init(extensionProvider:excluding:denyListExtensions:_:addWidget:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v72[5] = *MEMORY[0x277D85DE8];
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  v16 = objc_allocWithZone(type metadata accessor for WidgetGalleryManager());
  v17 = a1;

  v69 = v17;
  v18 = sub_242E332A4(v17, sub_242CD5510, v15);
  v19 = OBJC_IVAR____TtC14CarPlayAssetUI27WidgetGalleryViewController_galleryManager;
  *&v8[OBJC_IVAR____TtC14CarPlayAssetUI27WidgetGalleryViewController_galleryManager] = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a6;
  *(v20 + 24) = a7;
  v21 = &v18[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_addWidget];
  v22 = *&v18[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_addWidget];
  v23 = *&v18[OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_addWidget + 8];
  *v21 = sub_242E3510C;
  v21[1] = v20;
  v24 = v18;

  sub_242D0DC4C(v22, v23);

  v25 = [objc_opt_self() mainScreen];
  [v25 scale];

  SBHAddWidgetSheetListViewIconMetricsForScale();
  v26 = objc_allocWithZone(MEMORY[0x277D661D0]);
  v27 = sub_242F04F00();
  v28 = [v26 initWithName:v27 iconImageInfo:{*&v72[1], *&v72[2], *&v72[3], *&v72[4]}];

  v29 = *&v8[v19];
  v67 = v28;
  v30 = [objc_allocWithZone(MEMORY[0x277D66110]) initWithListLayoutProvider:*(v29 + OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_listLayoutProvider) iconViewProvider:*(v29 + OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager__iconViewProvider) allowedWidgets:2 appCellIconImageCache:1 addWidgetSheetStyle:{v28, 0}];
  v31 = *(*&v8[v19] + OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_configurationManager);
  v32 = v30;
  [v32 setAddWidgetSheetLocation_];
  [v32 setAllowsFakeWidgets_];
  [v32 setGalleryLayoutSize_];
  [v32 setDelegate_];
  [v32 setPresenter_];
  [v32 setAddWidgetSheetWidgetBackgroundType_];

  *&v8[OBJC_IVAR____TtC14CarPlayAssetUI27WidgetGalleryViewController_addWidgetSheetViewController] = v32;
  swift_unknownObjectWeakAssign();
  v71.receiver = v8;
  v71.super_class = type metadata accessor for WidgetGalleryViewController();
  v33 = v32;
  v34 = objc_msgSendSuper2(&v71, sel_initWithNibName_bundle_, 0, 0);
  [v34 setPreferredContentSize_];
  v35 = [objc_allocWithZone(MEMORY[0x277D661B8]) initWithCHSWidgetFamilyMask_];
  v36 = OBJC_IVAR____TtC14CarPlayAssetUI27WidgetGalleryViewController_galleryManager;
  v37 = *&v34[OBJC_IVAR____TtC14CarPlayAssetUI27WidgetGalleryViewController_galleryManager];
  v38 = *(v37 + OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_configurationManager);
  v72[0] = v35;
  v39 = [v38 applicationWidgetCollectionsForEditingViewController:v37 withAllowedSizeClasses:v72 allowingNonStackableItems:1];
  v40 = v72[0];

  if (!v39)
  {
    sub_242C8760C(0, &qword_27ECF9570);
    sub_242F05310();
    v39 = sub_242F052E0();
  }

  [v33 setApplicationWidgetCollections_];

  v41 = [objc_allocWithZone(MEMORY[0x277CEB990]) initWithClientSessionIdentifier:0 widgetClient:2];
  v42 = [objc_allocWithZone(MEMORY[0x277CEB9A0]) initWithClientIdentity_];

  [v42 setGalleryVariant_];
  [v42 setWidgetFamilyMask_];
  [v42 setWidgetGridSize_];
  sub_242C8760C(0, &qword_27ECF9578);
  v43 = sub_242F057F0();
  [v42 setLimit_];

  if (a2 >> 62)
  {
    v44 = sub_242F059B0();
    if (v44)
    {
      goto LABEL_5;
    }

LABEL_15:

    v46 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v44 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v44)
  {
    goto LABEL_15;
  }

LABEL_5:
  v72[0] = MEMORY[0x277D84F90];
  sub_242E3BC70(0, v44 & ~(v44 >> 63), 0);
  if (v44 < 0)
  {
    __break(1u);
  }

  v64 = v40;
  v65 = v33;
  v66 = v34;
  v45 = 0;
  v46 = v72[0];
  v47 = a2;
  v70 = a2 & 0xC000000000000001;
  v48 = v36;
  v49 = v47;
  v50 = v44;
  do
  {
    if (v70)
    {
      v51 = MEMORY[0x245D270D0](v45);
    }

    else
    {
      v51 = *(v47 + 8 * v45 + 32);
    }

    v52 = v51;
    v53 = CHSWidget.asDenyListRepresentation.getter();
    v55 = v54;

    v72[0] = v46;
    v57 = v46[2];
    v56 = v46[3];
    if (v57 >= v56 >> 1)
    {
      sub_242E3BC70((v56 > 1), v57 + 1, 1);
      v46 = v72[0];
    }

    ++v45;
    v46[2] = v57 + 1;
    v58 = &v46[2 * v57];
    v58[4] = v53;
    v58[5] = v55;
    v47 = v49;
  }

  while (v50 != v45);
  v36 = v48;

  v33 = v65;
  v34 = v66;
  v40 = v64;
LABEL_16:
  v72[0] = v46;
  sub_242C81C48(a3);
  v59 = sub_242F052E0();

  [v42 setDenyListOfExtensions_];

  v60 = *(*&v34[v36] + OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_configurationManager);
  v61 = v33;
  v62 = v60;
  [v62 fetchGalleryContentForHomeScreenEditingWithRequest:v42 addWidgetSheetViewController:v61];

  return v34;
}

void sub_242E3522C(char a1)
{
  v2 = v1;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for WidgetGalleryViewController();
  objc_msgSendSuper2(&v12, sel_viewWillAppear_, a1 & 1);
  v4 = [v2 sheetPresentationController];
  if (v4)
  {
    v5 = v4;
    [v4 _setShouldDismissWhenTappedOutside_];
  }

  v6 = [v2 sheetPresentationController];
  if (v6)
  {
    v7 = v6;
    [v6 setPrefersGrabberVisible_];
  }

  v8 = [v2 sheetPresentationController];
  if (v8)
  {
    v9 = v8;
    sub_242F057B0();
  }

  v10 = [v2 sheetPresentationController];
  if (v10)
  {
    v11 = v10;
    [v10 _setAdditionalMinimumTopInset_];
  }
}

void sub_242E35398()
{
  v38.receiver = v0;
  v38.super_class = type metadata accessor for WidgetGalleryViewController();
  objc_msgSendSuper2(&v38, sel_viewWillLayoutSubviews);
  v1 = OBJC_IVAR____TtC14CarPlayAssetUI27WidgetGalleryViewController_addWidgetSheetViewController;
  v2 = [*&v0[OBJC_IVAR____TtC14CarPlayAssetUI27WidgetGalleryViewController_addWidgetSheetViewController] view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  v4 = [v0 view];
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v3 setFrame_];
  v14 = [v0 view];
  if (v14)
  {
    v15 = v14;
    [v14 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = *&v0[v1];
    [v24 preferredInsetsForSheetPresentationInInterfaceOrientation_];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v33 = *&v0[v1];
    v34 = UIEdgeInsetsInsetRect(v17, v19, v21, v23, v26, v28, v30, v32);
    v36 = v35;
    v37 = v33;
    [v37 setPreferredContentSize_];

    return;
  }

LABEL_7:
  __break(1u);
}

id WidgetGalleryViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_242F04F00();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id WidgetGalleryViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetGalleryViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *NinePartImage.assets.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 24);
  v128 = *(v0 + 16);
  v129 = v3;
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v96 = *(v0 + 40);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v124 = v1;
  v125 = v6;
  v8 = *(v0 + 72);
  v126 = *(v0 + 80);
  v9 = *(v0 + 96);
  v89 = *(v0 + 88);
  v120 = v7;
  v121 = v9;
  v10 = *(v0 + 112);
  v127 = *(v0 + 104);
  v11 = *(v0 + 120);
  v12 = *(v0 + 128);
  v14 = *(v0 + 136);
  v13 = *(v0 + 144);
  v122 = v10;
  v123 = v13;
  v15 = *(v0 + 152);
  v117 = *(v0 + 160);
  v118 = v15;
  v111 = *(v0 + 168);
  v110 = *(v0 + 176);
  v16 = *(v0 + 184);
  v17 = *(v0 + 192);
  v78 = v14;
  v79 = v16;
  v18 = *(v0 + 208);
  v102 = *(v0 + 200);
  v103 = v17;
  v19 = *(v0 + 224);
  v100 = *(v0 + 216);
  v101 = v18;
  v20 = *(v0 + 240);
  v99 = *(v0 + 232);
  v21 = *(v0 + 256);
  v108 = *(v0 + 248);
  v109 = v20;
  v107 = v21;
  v106 = *(v0 + 264);
  v105 = *(v0 + 272);
  v22 = *(v0 + 280);
  v23 = *(v0 + 288);
  v115 = *(v0 + 296);
  v116 = v23;
  v24 = *(v0 + 304);
  v113 = *(v0 + 312);
  v114 = v24;
  v112 = *(v0 + 320);
  v26 = *(v0 + 328);
  v25 = *(v0 + 336);
  v80 = v22;
  v81 = v26;
  v88 = v25;
  v27 = *(v0 + 344);
  v86 = *(v0 + 352);
  v87 = v27;
  v84 = *(v0 + 360);
  v119 = *(v0 + 368);
  v28 = *(v0 + 384);
  v82 = *(v0 + 376);
  v29 = *(v0 + 400);
  v93 = *(v0 + 392);
  v94 = v28;
  v92 = v29;
  v91 = *(v0 + 408);
  v90 = *(v0 + 416);
  v83 = *(v0 + 424);
  v138[8] = &type metadata for ImageAsset;
  v138[9] = &protocol witness table for ImageAsset;
  v104 = v19;
  v77 = ~v19;
  v30 = swift_allocObject();
  v98 = v2;
  v31 = v124;
  *(v30 + 16) = v2;
  *(v30 + 24) = v31;
  v32 = v129;
  *(v30 + 32) = v128;
  *(v30 + 40) = v32;
  v97 = v4;
  *(v30 + 48) = v4;
  *(v30 + 56) = v96;
  v138[5] = v30;
  v138[13] = &type metadata for ImageAsset;
  v138[14] = &protocol witness table for ImageAsset;
  v33 = swift_allocObject();
  v95 = v8;
  v96 = v5;
  v34 = v120;
  *(v33 + 16) = v5;
  *(v33 + 24) = v34;
  *(v33 + 32) = v125;
  *(v33 + 40) = v8;
  *(v33 + 48) = v126;
  *(v33 + 56) = v89;
  v138[10] = v33;
  v138[18] = &type metadata for ImageAsset;
  v138[19] = &protocol witness table for ImageAsset;
  v35 = swift_allocObject();
  v36 = v127;
  *(v35 + 16) = v121;
  *(v35 + 24) = v36;
  *(v35 + 32) = v122;
  *(v35 + 40) = v11;
  v89 = v11;
  v85 = v12;
  *(v35 + 48) = v12;
  *(v35 + 56) = v78;
  v138[15] = v35;
  v138[23] = &type metadata for ImageAsset;
  v138[24] = &protocol witness table for ImageAsset;
  v37 = swift_allocObject();
  v138[20] = v37;
  v39 = v117;
  v38 = v118;
  *(v37 + 16) = v123;
  *(v37 + 24) = v38;
  v40 = v111;
  *(v37 + 32) = v39;
  *(v37 + 40) = v40;
  *(v37 + 48) = v110;
  *(v37 + 56) = v79;
  if ((v77 & 0xFE) != 0)
  {
    v41 = swift_allocObject();
    v44 = v102;
    *(v41 + 16) = v103;
    *(v41 + 24) = v44;
    v45 = v100;
    *(v41 + 32) = v101;
    *(v41 + 40) = v45;
    *(v41 + 48) = v104;
    *(v41 + 56) = v99;
    v43 = &protocol witness table for ImageAsset;
    v42 = &type metadata for ImageAsset;
  }

  else
  {
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v138[27] = 0;
    v138[26] = 0;
  }

  v138[25] = v41;
  v138[28] = v42;
  v138[29] = v43;
  v138[33] = &type metadata for ImageAsset;
  v138[34] = &protocol witness table for ImageAsset;
  v46 = swift_allocObject();
  v47 = v108;
  *(v46 + 16) = v109;
  *(v46 + 24) = v47;
  v48 = v106;
  *(v46 + 32) = v107;
  *(v46 + 40) = v48;
  *(v46 + 48) = v105;
  *(v46 + 56) = v80;
  v138[30] = v46;
  v138[38] = &type metadata for ImageAsset;
  v138[39] = &protocol witness table for ImageAsset;
  v49 = swift_allocObject();
  v50 = v115;
  *(v49 + 16) = v116;
  *(v49 + 24) = v50;
  v51 = v113;
  *(v49 + 32) = v114;
  *(v49 + 40) = v51;
  *(v49 + 48) = v112;
  *(v49 + 56) = v81;
  v138[35] = v49;
  v138[43] = &type metadata for ImageAsset;
  v138[44] = &protocol witness table for ImageAsset;
  v52 = swift_allocObject();
  v53 = v87;
  v54 = v88;
  *(v52 + 16) = v88;
  *(v52 + 24) = v53;
  v55 = v86;
  v56 = v84;
  *(v52 + 32) = v86;
  *(v52 + 40) = v56;
  *(v52 + 48) = v119;
  *(v52 + 56) = v82;
  v138[40] = v52;
  v138[48] = &type metadata for ImageAsset;
  v138[49] = &protocol witness table for ImageAsset;
  v57 = swift_allocObject();
  v138[45] = v57;
  v59 = v93;
  v58 = v94;
  *(v57 + 16) = v94;
  *(v57 + 24) = v59;
  v61 = v91;
  v60 = v92;
  *(v57 + 32) = v92;
  *(v57 + 40) = v61;
  v62 = v90;
  *(v57 + 48) = v90;
  *(v57 + 56) = v83;
  sub_242C7F6C4(v98, v124, v128, v129, v97);
  sub_242C7F6C4(v96, v120, v125, v95, v126);
  sub_242C7F6C4(v121, v127, v122, v89, v85);
  sub_242C7F6C4(v123, v118, v117, v111, v110);
  sub_242DD7788(v103, v102, v101, v100, v104);
  sub_242C7F6C4(v109, v108, v107, v106, v105);
  sub_242C7F6C4(v116, v115, v114, v113, v112);
  sub_242C7F6C4(v54, v53, v55, v56, v119);
  sub_242C7F6C4(v58, v59, v60, v61, v62);
  v63 = MEMORY[0x277D84F90];
  for (i = 4; i != 49; i += 5)
  {
    sub_242E35D90(&v138[i + 1], &v135);
    v130[0] = v135;
    v130[1] = v136;
    v131 = v137;
    if (*(&v136 + 1))
    {
      sub_242C65564(v130, v132);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v138[0] = v63;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v63 = sub_242C82D10(0, v63[2] + 1, 1, v63);
        v138[0] = v63;
      }

      v67 = v63[2];
      v66 = v63[3];
      if (v67 >= v66 >> 1)
      {
        v63 = sub_242C82D10((v66 > 1), v67 + 1, 1, v63);
        v138[0] = v63;
      }

      v68 = v133;
      v69 = v134;
      v70 = __swift_mutable_project_boxed_opaque_existential_1(v132, v133);
      v71 = MEMORY[0x28223BE20](v70);
      v73 = &v76 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v74 + 16))(v73, v71);
      sub_242CCEB08(v67, v73, v138, v68, v69);
      __swift_destroy_boxed_opaque_existential_2Tm(v132);
    }

    else
    {
      sub_242E24994(v130);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFAD8);
  swift_arrayDestroy();
  return v63;
}

uint64_t sub_242E35D90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFAD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void NinePartImage.restoreAssets(from:)(void *a1)
{
  ImageAsset.restore(from:)(a1);
  if (!v2)
  {
    ImageAsset.restore(from:)(a1);
    ImageAsset.restore(from:)(a1);
    ImageAsset.restore(from:)(a1);
    if ((~*(v1 + 224) & 0xFELL) != 0)
    {
      ImageAsset.restore(from:)(a1);
    }

    ImageAsset.restore(from:)(a1);
    ImageAsset.restore(from:)(a1);
    ImageAsset.restore(from:)(a1);
    ImageAsset.restore(from:)(a1);
  }
}

__n128 NinePartImage.init(topLeftCorner:topEdge:topRightCorner:leftEdge:middle:rightEdge:bottomLeftCorner:bottomEdge:bottomRightCorner:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X4>, __int128 *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, __n128 *a10)
{
  v12 = *(a1 + 5);
  v13 = *(a2 + 32);
  v14 = *(a2 + 5);
  v15 = *(a3 + 32);
  v16 = *(a3 + 5);
  v17 = *(a4 + 32);
  v18 = *(a4 + 5);
  v48 = *a5;
  v54 = a5[5];
  v53 = *a6;
  v52 = *(a6 + 2);
  v51 = *(a6 + 3);
  v50 = *(a6 + 32);
  v49 = *(a6 + 5);
  v19 = *a1;
  v20 = a1[1];
  v47 = *a7;
  v21 = a7[1];
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 40) = v12;
  v45 = a7[2];
  v46 = v21;
  v44 = a7[3];
  *(a9 + 192) = 0u;
  *(a9 + 208) = 0u;
  *(a9 + 224) = xmmword_242F385A0;
  v22 = *a2;
  v23 = a2[1];
  v43 = *(a7 + 32);
  v24 = a7[5];
  *(a9 + 80) = v13;
  *(a9 + 88) = v14;
  v41 = *a8;
  v42 = v24;
  v40 = a8[1];
  *a9 = v19;
  *(a9 + 16) = v20;
  v25 = *a3;
  v26 = a3[1];
  *(a9 + 128) = v15;
  v27 = a8[2];
  v28 = a8[3];
  *(a9 + 136) = v16;
  v29 = *(a8 + 32);
  v30 = a8[5];
  *(a9 + 48) = v22;
  *(a9 + 64) = v23;
  v39 = *a10;
  *(a9 + 96) = v25;
  *(a9 + 112) = v26;
  v31 = *a4;
  v32 = a4[1];
  *(a9 + 176) = v17;
  v33 = a10[1].n128_u64[0];
  v34 = a10[1].n128_u64[1];
  *(a9 + 184) = v18;
  v35 = a10[2].n128_u8[0];
  v36 = a10[2].n128_u64[1];
  *(a9 + 144) = v31;
  *(a9 + 160) = v32;
  sub_242DD77E4(0, 0, 0, 0, 254);
  *(a9 + 192) = v48;
  v37 = *(a5 + 1);
  *(a9 + 216) = *(a5 + 3);
  *(a9 + 200) = v37;
  *(a9 + 232) = v54;
  *(a9 + 240) = v53;
  *(a9 + 256) = v52;
  *(a9 + 264) = v51;
  *(a9 + 272) = v50;
  *(a9 + 280) = v49;
  *(a9 + 288) = v47;
  *(a9 + 296) = v46;
  *(a9 + 304) = v45;
  *(a9 + 312) = v44;
  *(a9 + 320) = v43;
  *(a9 + 328) = v42;
  *(a9 + 336) = v41;
  *(a9 + 344) = v40;
  *(a9 + 352) = v27;
  *(a9 + 360) = v28;
  *(a9 + 368) = v29;
  *(a9 + 376) = v30;
  result = v39;
  *(a9 + 384) = v39;
  *(a9 + 400) = v33;
  *(a9 + 408) = v34;
  *(a9 + 416) = v35;
  *(a9 + 424) = v36;
  return result;
}

unint64_t sub_242E360B0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x437466654C706F74;
    v6 = 0x7468676952706F74;
    if (a1 != 2)
    {
      v6 = 0x656764457466656CLL;
    }

    if (a1)
    {
      v5 = 0x65676445706F74;
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
    v1 = 0xD000000000000010;
    v2 = 0x64456D6F74746F62;
    if (a1 != 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x656C6464696DLL;
    if (a1 != 4)
    {
      v3 = 0x6764457468676972;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_242E361F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E37890(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242E3621C(uint64_t a1)
{
  v2 = sub_242E375F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E36258(uint64_t a1)
{
  v2 = sub_242E375F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NinePartImage.encode(to:)(void *a1)
{
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9580);
  v90 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v4 = &v38 - v3;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v86 = *v1;
  v87 = v8;
  v10 = *(v1 + 64);
  v84 = *(v1 + 56);
  v85 = v9;
  v82 = *(v1 + 72);
  v83 = v10;
  v97 = *(v1 + 80);
  v11 = *(v1 + 88);
  v80 = *(v1 + 96);
  v81 = v11;
  v12 = *(v1 + 104);
  v78 = *(v1 + 112);
  v79 = v12;
  v77 = *(v1 + 120);
  v76 = *(v1 + 128);
  v13 = *(v1 + 144);
  v75 = *(v1 + 136);
  v69 = v13;
  v14 = *(v1 + 160);
  v70 = *(v1 + 152);
  v71 = v14;
  v72 = *(v1 + 168);
  v74 = *(v1 + 176);
  v15 = *(v1 + 192);
  v73 = *(v1 + 184);
  v63 = v15;
  v16 = *(v1 + 208);
  v64 = *(v1 + 200);
  v65 = v16;
  v17 = *(v1 + 224);
  v66 = *(v1 + 216);
  v68 = v17;
  v18 = *(v1 + 240);
  v67 = *(v1 + 232);
  v57 = v18;
  v19 = *(v1 + 256);
  v58 = *(v1 + 248);
  v59 = v19;
  v62 = *(v1 + 264);
  v61 = *(v1 + 272);
  v20 = *(v1 + 288);
  v60 = *(v1 + 280);
  v51 = v20;
  v21 = *(v1 + 304);
  v52 = *(v1 + 296);
  v53 = v21;
  v56 = *(v1 + 312);
  v55 = *(v1 + 320);
  v22 = *(v1 + 336);
  v54 = *(v1 + 328);
  v45 = v22;
  v23 = *(v1 + 352);
  v46 = *(v1 + 344);
  v47 = v23;
  v50 = *(v1 + 360);
  v49 = *(v1 + 368);
  v24 = *(v1 + 384);
  v48 = *(v1 + 376);
  v39 = v24;
  v25 = *(v1 + 400);
  v40 = *(v1 + 392);
  v41 = v25;
  v42 = *(v1 + 408);
  v43 = *(v1 + 416);
  v44 = *(v1 + 424);
  v26 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  v27 = v86;
  sub_242C7F6C4(v86, v5, v6, v7, v26);
  sub_242E375F4();
  sub_242F064C0();
  v91 = v27;
  v92 = v5;
  v28 = v88;
  v93 = v6;
  v94 = v7;
  v29 = v4;
  LOBYTE(v95) = v26;
  v96 = v87;
  v98 = 0;
  v30 = sub_242C8B8E8();
  v31 = v89;
  sub_242F05F20();
  if (v31)
  {
    sub_242C7F724(v91, v92, v93, v94, v95);
    return (*(v90 + 8))(v4, v28);
  }

  else
  {
    v34 = v77;
    v33 = v78;
    v36 = v79;
    v35 = v80;
    v37 = v90;
    sub_242C7F724(v91, v92, v93, v94, v95);
    v91 = v85;
    v92 = v84;
    v93 = v83;
    v94 = v82;
    LOBYTE(v95) = v97;
    v96 = v81;
    v98 = 1;
    sub_242C7F6C4(v85, v84, v83, v82, v97);
    v89 = v30;
    sub_242F05F20();
    sub_242C7F724(v91, v92, v93, v94, v95);
    v91 = v35;
    v92 = v36;
    v93 = v33;
    v94 = v34;
    LOBYTE(v95) = v76;
    v96 = v75;
    v98 = 2;
    sub_242C7F6C4(v35, v36, v33, v34, v76);
    sub_242F05F20();
    sub_242C7F724(v91, v92, v93, v94, v95);
    v91 = v69;
    v92 = v70;
    v93 = v71;
    v94 = v72;
    LOBYTE(v95) = v74;
    v96 = v73;
    v98 = 3;
    sub_242C7F6C4(v69, v70, v71, v72, v74);
    sub_242F05F20();
    sub_242C7F724(v91, v92, v93, v94, v95);
    v91 = v63;
    v92 = v64;
    v93 = v65;
    v94 = v66;
    v95 = v68;
    v96 = v67;
    v98 = 4;
    sub_242DD7788(v63, v64, v65, v66, v68);
    sub_242F05EB0();
    sub_242DD77E4(v91, v92, v93, v94, v95);
    v91 = v57;
    v92 = v58;
    v93 = v59;
    v94 = v62;
    LOBYTE(v95) = v61;
    v96 = v60;
    v98 = 5;
    sub_242C7F6C4(v57, v58, v59, v62, v61);
    sub_242F05F20();
    sub_242C7F724(v91, v92, v93, v94, v95);
    v91 = v51;
    v92 = v52;
    v93 = v53;
    v94 = v56;
    LOBYTE(v95) = v55;
    v96 = v54;
    v98 = 6;
    sub_242C7F6C4(v51, v52, v53, v56, v55);
    sub_242F05F20();
    sub_242C7F724(v91, v92, v93, v94, v95);
    v91 = v45;
    v92 = v46;
    v93 = v47;
    v94 = v50;
    LOBYTE(v95) = v49;
    v96 = v48;
    v98 = 7;
    sub_242C7F6C4(v45, v46, v47, v50, v49);
    sub_242F05F20();
    sub_242C7F724(v91, v92, v93, v94, v95);
    v91 = v39;
    v92 = v40;
    v93 = v41;
    v94 = v42;
    LOBYTE(v95) = v43;
    v96 = v44;
    v98 = 8;
    sub_242C7F6C4(v39, v40, v41, v42, v43);
    sub_242F05F20();
    sub_242C7F724(v91, v92, v93, v94, v95);
    return (*(v37 + 8))(v29, v28);
  }
}

void NinePartImage.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9590);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = a1[3];
  v154 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v9);
  sub_242E375F4();
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v154);
    sub_242DD77E4(0, 0, 0, 0, 254);
  }

  else
  {
    v10 = v6;
    v76 = a2;
    LOBYTE(v77[0]) = 0;
    sub_242C8BA70();
    sub_242F05E00();
    v71 = v78;
    v72 = v79;
    v73 = v80;
    v74 = v81;
    v75 = v82;
    v11 = v83;
    LOBYTE(v77[0]) = 1;
    sub_242F05E00();
    v70 = v11;
    v63 = v78;
    v64 = v79;
    v60 = v80;
    v61 = v81;
    v62 = v82;
    v12 = v83;
    LOBYTE(v77[0]) = 2;
    sub_242F05E00();
    v39 = v12;
    v55 = v78;
    v56 = v79;
    v57 = v80;
    v58 = v81;
    v59 = v82;
    v13 = v83;
    LOBYTE(v77[0]) = 3;
    sub_242F05E00();
    v38 = v13;
    v65 = v78;
    v66 = v79;
    v67 = v80;
    v69 = v81;
    v68 = v82;
    v14 = v83;
    LOBYTE(v77[0]) = 4;
    sub_242F05D90();
    v34 = v79;
    v35 = v78;
    v32 = v80;
    v33 = v82;
    v36 = v83;
    v37 = v81;
    sub_242DD77E4(0, 0, 0, 0, 254);
    LOBYTE(v77[0]) = 5;
    sub_242F05E00();
    LODWORD(v31) = 1;
    v53 = v79;
    v54 = v78;
    v51 = v81;
    v52 = v80;
    v50 = v82;
    v30 = v83;
    LOBYTE(v77[0]) = 6;
    sub_242F05E00();
    v45 = v78;
    v46 = v79;
    v47 = v80;
    v48 = v81;
    v49 = v82;
    v29 = v83;
    LOBYTE(v77[0]) = 7;
    sub_242F05E00();
    v40 = v78;
    v41 = v79;
    v42 = v80;
    v43 = v81;
    v44 = v82;
    v27 = v83;
    v28 = v14;
    v139 = 8;
    sub_242F05E00();
    (*(v10 + 8))(v8, v5);
    v25 = v141;
    v26 = v140;
    *(&v77[40] + 1) = *v148;
    *(&v77[46] + 1) = *v147;
    v23 = v143;
    v24 = v142;
    *(&v77[52] + 1) = *v146;
    v22 = v144;
    HIDWORD(v77[40]) = *&v148[3];
    HIDWORD(v77[46]) = *&v147[3];
    HIDWORD(v77[52]) = *&v146[3];
    v31 = v145;
    v77[0] = v71;
    v77[1] = v72;
    v77[2] = v73;
    v77[3] = v74;
    LOBYTE(v77[4]) = v75;
    v77[5] = v70;
    v77[6] = v63;
    v77[7] = v64;
    v77[8] = v60;
    v77[9] = v61;
    LOBYTE(v77[10]) = v62;
    v15 = v39;
    v77[11] = v39;
    v77[12] = v55;
    v77[13] = v56;
    v77[14] = v57;
    v77[15] = v58;
    LOBYTE(v77[16]) = v59;
    v77[17] = v38;
    v17 = v65;
    v16 = v66;
    v77[18] = v65;
    v77[19] = v66;
    v18 = v67;
    v77[20] = v67;
    v77[21] = v69;
    v19 = v68;
    LOBYTE(v77[22]) = v68;
    v77[23] = v28;
    v77[24] = v35;
    v77[25] = v34;
    v20 = v32;
    v77[26] = v32;
    v77[27] = v37;
    v77[28] = v33;
    v77[29] = v36;
    v77[30] = v54;
    v77[31] = v53;
    v77[32] = v52;
    v77[33] = v51;
    LOBYTE(v77[34]) = v50;
    v77[35] = v30;
    v77[36] = v45;
    v77[37] = v46;
    v77[38] = v47;
    v77[39] = v48;
    LOBYTE(v77[40]) = v49;
    v77[41] = v29;
    v77[42] = v40;
    v77[43] = v41;
    v77[44] = v42;
    v77[45] = v43;
    LOBYTE(v77[46]) = v44;
    v77[47] = v27;
    v77[48] = v140;
    v77[49] = v141;
    v77[50] = v142;
    v77[51] = v143;
    LOBYTE(v77[52]) = v144;
    v77[53] = v145;
    memcpy(v76, v77, 0x1B0uLL);
    sub_242E1CDE4(v77, &v78);
    __swift_destroy_boxed_opaque_existential_2Tm(v154);
    v78 = v71;
    v79 = v72;
    v80 = v73;
    v81 = v74;
    LOBYTE(v82) = v75;
    v83 = v70;
    v84 = v63;
    v85 = v64;
    v86 = v60;
    v87 = v61;
    v88 = v62;
    v90 = v15;
    v91 = v55;
    v92 = v56;
    v93 = v57;
    v94 = v58;
    v95 = v59;
    v97 = v38;
    v98 = v17;
    v99 = v16;
    v100 = v18;
    v101 = v69;
    v102 = v19;
    v104 = v28;
    v105 = v35;
    v106 = v34;
    v107 = v20;
    *(&v82 + 1) = v153[0];
    HIDWORD(v82) = *(v153 + 3);
    *v89 = *v152;
    *&v89[3] = *&v152[3];
    *v96 = *v151;
    *&v96[3] = *&v151[3];
    *&v103[3] = *&v150[3];
    *v103 = *v150;
    v108 = v37;
    v109 = v33;
    v110 = v36;
    v111 = v54;
    v112 = v53;
    v113 = v52;
    v114 = v51;
    v115 = v50;
    *v116 = *v149;
    *&v116[3] = *&v149[3];
    v117 = v30;
    v118 = v45;
    v119 = v46;
    v120 = v47;
    v121 = v48;
    v122 = v49;
    *v123 = *v148;
    *&v123[3] = *&v148[3];
    v124 = v29;
    v125 = v40;
    v126 = v41;
    v127 = v42;
    v128 = v43;
    v129 = v44;
    *v130 = *v147;
    *&v130[3] = *&v147[3];
    v131 = v27;
    v132 = v26;
    v133 = v25;
    v134 = v24;
    v135 = v23;
    v136 = v22;
    *v137 = *v146;
    *&v137[3] = *&v146[3];
    v138 = v31;
    sub_242E1CE90(&v78);
  }
}

unint64_t sub_242E375F4()
{
  result = qword_27ECF9588;
  if (!qword_27ECF9588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9588);
  }

  return result;
}

uint64_t sub_242E37650(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 432))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 32) & 0x7E | (*(a1 + 32) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_242E376A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 424) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 432) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 432) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

unint64_t sub_242E3778C()
{
  result = qword_27ECF9598;
  if (!qword_27ECF9598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9598);
  }

  return result;
}

unint64_t sub_242E377E4()
{
  result = qword_27ECF95A0;
  if (!qword_27ECF95A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF95A0);
  }

  return result;
}

unint64_t sub_242E3783C()
{
  result = qword_27ECF95A8;
  if (!qword_27ECF95A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF95A8);
  }

  return result;
}

uint64_t sub_242E37890(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x437466654C706F74 && a2 == 0xED000072656E726FLL;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65676445706F74 && a2 == 0xE700000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7468676952706F74 && a2 == 0xEE0072656E726F43 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656764457466656CLL && a2 == 0xE800000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C6464696DLL && a2 == 0xE600000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6764457468676972 && a2 == 0xE900000000000065 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F5C6B0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64456D6F74746F62 && a2 == 0xEA00000000006567 || (sub_242F06110() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F5C6D0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_242F06110();

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

Swift::Void __swiftcall ArcPackage.removeLocalNotifications()()
{
  v1 = v0;
  v2 = *(v0 + 112);
  v3 = *(v2 + 16);
  if (v3)
  {
    v28 = MEMORY[0x277D84F90];
    sub_242E3BC90(0, v3, 0);
    v4 = v28;
    v5 = v3 - 1;
    for (i = 32; ; i += 592)
    {
      memcpy(__dst, (v2 + i), sizeof(__dst));
      sub_242C6CDD4(__dst, &v16);

      memcpy(__src, __dst, sizeof(__src));
      v21 = *&__dst[63];
      v20 = *&__dst[61];
      v26 = __dst[73];
      v25 = *&__dst[71];
      v24 = *&__dst[69];
      v22 = *&__dst[65];
      v23 = *&__dst[67];
      v19 = *&__dst[59];
      v18 = *&__dst[57];
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      v28 = v4;
      if (v8 >= v7 >> 1)
      {
        sub_242E3BC90((v7 > 1), v8 + 1, 1);
        v4 = v28;
      }

      *(v4 + 16) = v8 + 1;
      v9 = v4 + 592 * v8;
      memcpy((v9 + 32), __src, 0x1C0uLL);
      *(v9 + 480) = 0;
      *(v9 + 488) = v18;
      v10 = v22;
      v11 = v20;
      v12 = v19;
      *(v9 + 536) = v21;
      *(v9 + 552) = v10;
      *(v9 + 504) = v12;
      *(v9 + 520) = v11;
      v13 = v25;
      v14 = v24;
      v15 = v23;
      *(v9 + 616) = v26;
      *(v9 + 584) = v14;
      *(v9 + 600) = v13;
      *(v9 + 568) = v15;
      if (!v5)
      {
        break;
      }

      --v5;
    }
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  *(v1 + 112) = v4;
}

uint64_t ArcPackage.infoPlistContent.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[5];
  v14 = v1[9];
  v9 = v1[11];
  v8 = v1[12];
  v15 = *(v1 + 104);
  v18[0] = *v1;
  v18[1] = v3;
  v17 = v18;
  swift_bridgeObjectRetain_n();
  v10 = sub_242E383F8(sub_242C9B7C0, v16, &unk_28557A398);
  swift_arrayDestroy();
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v12 = byte_27ECF3A00;

  if (v12)
  {
    if (v12 != 1)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        LOBYTE(v18[0]) = 1;
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = v7;
        *(a1 + 24) = v4;
        *(a1 + 32) = v3;
        *(a1 + 40) = v9;
        *(a1 + 48) = v8;
        *(a1 + 56) = v15;
        *(a1 + 57) = 2;
        *(a1 + 64) = xmmword_242F2D330;
        *(a1 + 80) = 0;
        *(a1 + 88) = 1;
      }

      goto LABEL_14;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
LABEL_9:
      LOBYTE(v18[0]) = 0;
      *a1 = v6;
      *(a1 + 8) = v5;
      *(a1 + 16) = v7;
      *(a1 + 24) = v4;
      *(a1 + 32) = v3;
      *(a1 + 40) = v9;
      *(a1 + 48) = v8;
      *(a1 + 56) = v15;
      *(a1 + 57) = v11;
      *(a1 + 64) = xmmword_242F2D330;
      *(a1 + 80) = v14;
      *(a1 + 88) = 0;
    }

    __break(1u);
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}
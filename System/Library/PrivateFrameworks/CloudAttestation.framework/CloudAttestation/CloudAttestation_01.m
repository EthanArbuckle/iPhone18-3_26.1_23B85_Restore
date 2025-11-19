uint64_t sub_22FEB16E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5[0] = a1;
    v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v3 = v5;
    return sub_22FEB1604(v3, a3);
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF19B8, &unk_22FFB33C0);
    return sub_22FFB19A8();
  }

  v3 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return sub_22FEB1604(v3, a3);
}

uint64_t sub_22FEB1798(uint64_t *a1, char *a2, size_t *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 != 2)
    {
      *(&v32 + 7) = 0;
      *&v32 = 0;
      v8 = sysctlbyname(a2, &v32, a3, 0, 0);
      goto LABEL_20;
    }

    v11 = *a1;

    sub_22FEA55AC(v6, v5);
    *&v32 = v6;
    *(&v32 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_22FFB33B0;
    sub_22FEA55AC(0, 0xC000000000000000);
    sub_22FFB06C8();
    v12 = *(v32 + 16);
    result = sub_22FFB0588();
    if (!result)
    {
      __break(1u);
      goto LABEL_27;
    }

    v14 = result;
    v15 = sub_22FFB05B8();
    v16 = __OFSUB__(v12, v15);
    v17 = v12 - v15;
    if (!v16)
    {
      sub_22FFB05A8();
      v8 = sysctlbyname(a2, (v14 + v17), a3, 0, 0);
      v18 = *(&v32 + 1) | 0x8000000000000000;
      *a1 = v32;
LABEL_19:
      a1[1] = v18;
      goto LABEL_20;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v7)
  {
    sub_22FEA55AC(v6, v5);
    *&v32 = v6;
    WORD4(v32) = v5;
    BYTE10(v32) = BYTE2(v5);
    BYTE11(v32) = BYTE3(v5);
    BYTE12(v32) = BYTE4(v5);
    BYTE13(v32) = BYTE5(v5);
    BYTE14(v32) = BYTE6(v5);
    v8 = sysctlbyname(a2, &v32, a3, 0, 0);
    v9 = DWORD2(v32) | ((WORD6(v32) | (BYTE14(v32) << 16)) << 32);
    *a1 = v32;
    a1[1] = v9;
LABEL_20:
    result = v8 == 0;
    v29 = *MEMORY[0x277D85DE8];
    return result;
  }

  v19 = v5 & 0x3FFFFFFFFFFFFFFFLL;

  sub_22FEA55AC(v6, v5);
  *a1 = xmmword_22FFB33B0;
  sub_22FEA55AC(0, 0xC000000000000000);
  v20 = v6 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v20 < v6)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (sub_22FFB0588() && __OFSUB__(v6, sub_22FFB05B8()))
    {
LABEL_25:
      __break(1u);
    }

    v21 = sub_22FFB05D8();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = sub_22FFB0568();

    v19 = v24;
  }

  if (v20 < v6)
  {
    goto LABEL_22;
  }

  result = sub_22FFB0588();
  if (result)
  {
    v25 = result;
    v26 = sub_22FFB05B8();
    v27 = v6 - v26;
    if (!__OFSUB__(v6, v26))
    {
      sub_22FFB05A8();
      v28 = sysctlbyname(a2, (v25 + v27), a3, 0, 0);

      v8 = v28;
      v18 = v19 | 0x4000000000000000;
      *a1 = v6;
      goto LABEL_19;
    }

    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22FEB1B20(uint64_t a1, uint64_t a2)
{
  sub_22FEB16E4(a1, a2, &v6);
  v2 = *(&v6 + 1);
  if (*(&v6 + 1) >> 60 == 15)
  {
    return 2;
  }

  v4 = v6;
  v5 = sub_22FEB157C(v6, *(&v6 + 1));
  sub_22FEA56EC(v4, v2);
  if ((v5 & 0x100) != 0)
  {
    return 2;
  }

  else
  {
    return v5 == 1;
  }
}

uint64_t sub_22FEB1BA8(uint64_t result, unint64_t a2, int a3)
{
  if (result <= -9 || result > 8)
  {
LABEL_3:
    LOBYTE(v3) = 0;
    v4 = 0;
    if (a2 >= 8)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (result < 0)
  {
    if (result == -8)
    {
      goto LABEL_3;
    }

    v4 = a3 << -result;
    if (a2 >= 8)
    {
LABEL_8:
      LOBYTE(v3) = 0;
      goto LABEL_12;
    }
  }

  else
  {
    if (result == 8)
    {
      goto LABEL_3;
    }

    v4 = a3 >> result;
    if (a2 >= 8)
    {
      goto LABEL_8;
    }
  }

LABEL_11:
  v3 = 1 << a2;
LABEL_12:
  v5 = v3 - 1;
  if ((v5 & 0xFFFFFF00) == 0)
  {
    return v5 & v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_22FEB1C2C()
{
  qword_281491490 = 0xD00000000000001BLL;
  *algn_281491498 = 0x800000022FFC9900;
  qword_2814914A0 = 0xD00000000000001ALL;
  unk_2814914A8 = 0x800000022FFC90A0;
  qword_2814914B0 = 0xD00000000000001BLL;
  unk_2814914B8 = 0x800000022FFC9920;
  qword_2814914C0 = 0xD00000000000001ALL;
  unk_2814914C8 = 0x800000022FFC90A0;
  qword_2814914D0 = 0xD000000000000017;
  unk_2814914D8 = 0x800000022FFC9940;
  qword_2814914E0 = 0xD00000000000001ALL;
  unk_2814914E8 = 0x800000022FFC90A0;
  qword_2814914F0 = 0xD00000000000001ELL;
  unk_2814914F8 = 0x800000022FFC9960;
  qword_281491500 = 0xD00000000000001ALL;
  unk_281491508 = 0x800000022FFC90A0;
  qword_281491510 = 0xD000000000000018;
  unk_281491518 = 0x800000022FFC9980;
  qword_281491520 = 0xD00000000000001ALL;
  unk_281491528 = 0x800000022FFC90A0;
  qword_281491530 = 0xD000000000000015;
  unk_281491538 = 0x800000022FFC99A0;
  qword_281491540 = 0xD00000000000001ALL;
  unk_281491548 = 0x800000022FFC90A0;
  qword_281491550 = 0xD000000000000011;
  unk_281491558 = 0x800000022FFC99C0;
  qword_281491560 = 0xD00000000000001ALL;
  unk_281491568 = 0x800000022FFC90A0;
  qword_281491570 = 0xD000000000000016;
  unk_281491578 = 0x800000022FFC99E0;
  qword_281491580 = 0xD00000000000001ALL;
  unk_281491588 = 0x800000022FFC90A0;
  strcpy(&qword_281491590, "allowExpired");
  unk_28149159D = 0;
  unk_28149159E = -5120;
  qword_2814915A0 = 0xD00000000000001ALL;
  unk_2814915A8 = 0x800000022FFC90A0;
  result = 0xEB0000000073666FLL;
  qword_2814915B0 = 0x6F72506568636163;
  unk_2814915B8 = 0xEB0000000073666FLL;
  qword_2814915C0 = 0xD00000000000001ALL;
  unk_2814915C8 = 0x800000022FFC90A0;
  qword_2814915D0 = 0xD000000000000013;
  unk_2814915D8 = 0x800000022FFC9A00;
  qword_2814915E0 = 0xD00000000000001ALL;
  unk_2814915E8 = 0x800000022FFC90A0;
  qword_2814915F0 = 0xD000000000000017;
  unk_2814915F8 = 0x800000022FFC9A20;
  qword_281491600 = 0xD00000000000001ALL;
  unk_281491608 = 0x800000022FFC90A0;
  qword_281491610 = 0x4365726975716572;
  unk_281491618 = 0xEF31786574707972;
  qword_281491620 = 0xD00000000000001ALL;
  unk_281491628 = 0x800000022FFC90A0;
  qword_281491630 = 0xD000000000000018;
  unk_281491638 = 0x800000022FFC9A40;
  qword_281491640 = 0xD00000000000001ALL;
  unk_281491648 = 0x800000022FFC90A0;
  qword_281491650 = 0xD00000000000001ALL;
  unk_281491658 = 0x800000022FFC9A60;
  qword_281491660 = 0xD00000000000001ALL;
  unk_281491668 = 0x800000022FFC90A0;
  return result;
}

void *static Environment.default.getter@<X0>(char *a1@<X8>)
{
  is_darwinos = os_variant_is_darwinos();
  if (is_darwinos)
  {
    result = sub_22FEB1F20(v7, is_darwinos);
    v4 = v7[0];
    if (LOBYTE(v7[0]) == 12)
    {
      v4 = 0;
    }

    *a1 = v4;
  }

  else
  {
    if (os_variant_has_internal_content())
    {
      v5 = 7;
    }

    else
    {
      v5 = 9;
    }

    result = os_variant_allows_internal_security_policies();
    if (result)
    {
      v7[3] = &type metadata for PrivateCloudComputeFeatures;
      v7[4] = sub_22FEB1ECC();
      v6 = sub_22FFB09A8();
      result = __swift_destroy_boxed_opaque_existential_1(v7);
      if ((v6 & 1) == 0)
      {
        result = sub_22FEB1F20(v7, result);
        if (LOBYTE(v7[0]) != 12)
        {
          v5 = v7[0];
        }
      }
    }

    *a1 = v5;
  }

  return result;
}

unint64_t sub_22FEB1ECC()
{
  result = qword_281491020[0];
  if (!qword_281491020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281491020);
  }

  return result;
}

CloudAttestation::Environment_optional __swiftcall Environment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22FFB1B28();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22FEB20A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF19D0, &unk_22FFB3580);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v30 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v30 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  v20 = *v3;
  if (v20 <= 5)
  {
    v34 = a1;
    v35 = a2;
    v32 = 1685025392;
    v33 = 0xE400000000000000;
    v30 = 3236209;
    v31 = 0xE300000000000000;
    sub_22FEB2CAC();
    sub_22FFB18B8();
    sub_22FFB0688();

    v21 = sub_22FFB06B8();
    v22 = *(v21 - 8);
    result = (*(v22 + 48))(v17, 1, v21);
    if (result != 1)
    {
      return (*(v22 + 32))(a3, v17, v21);
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v20 - 6 < 3)
  {
    v34 = a1;
    v35 = a2;
    v32 = 1685025392;
    v33 = 0xE400000000000000;
    v30 = 0x7972726163;
    v31 = 0xE500000000000000;
    sub_22FEB2CAC();
    sub_22FFB18B8();
    sub_22FFB0688();

    v24 = sub_22FFB06B8();
    v25 = *(v24 - 8);
    result = (*(v25 + 48))(v14, 1, v24);
    if (result != 1)
    {
      return (*(v25 + 32))(a3, v14, v24);
    }

    goto LABEL_14;
  }

  if (v20 - 10 >= 2)
  {
    sub_22FFB0688();
    v28 = sub_22FFB06B8();
    v29 = *(v28 - 8);
    result = (*(v29 + 48))(v11, 1, v28);
    if (result != 1)
    {
      return (*(v29 + 32))(a3, v11, v28);
    }

    goto LABEL_16;
  }

  v34 = a1;
  v35 = a2;
  v32 = 1685025392;
  v33 = 0xE400000000000000;
  v30 = 3301745;
  v31 = 0xE300000000000000;
  sub_22FEB2CAC();
  sub_22FFB18B8();
  sub_22FFB0688();

  v26 = sub_22FFB06B8();
  v27 = *(v26 - 8);
  result = (*(v27 + 48))(v19, 1, v26);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  return (*(v27 + 32))(a3, v19, v26);
}

uint64_t sub_22FEB25DC(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = Environment.description.getter(a1);
  v4 = v3;
  if (v2 == Environment.description.getter(v2) && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22FFB1BC8();
  }

  return v7 & 1;
}

uint64_t sub_22FEB2678()
{
  v1 = *v0;
  v2 = sub_22FFB1CA8();
  Environment.description.getter(v2);
  sub_22FFB1548();

  return sub_22FFB1CF8();
}

uint64_t sub_22FEB26E0(uint64_t a1)
{
  v3 = *v1;
  Environment.description.getter(a1);
  sub_22FFB1548();
}

uint64_t sub_22FEB2744()
{
  v1 = *v0;
  v2 = sub_22FFB1CA8();
  Environment.description.getter(v2);
  sub_22FFB1548();

  return sub_22FFB1CF8();
}

uint64_t sub_22FEB27B4@<X0>(uint64_t *a1@<X8>)
{
  result = Environment.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22FEB2890()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0x69746375646F7270;
    v8 = 0x616D697250326171;
    if (v1 != 10)
    {
      v8 = 0x7265746E49326171;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 7627125;
    v10 = 0x7972726163;
    if (v1 != 7)
    {
      v10 = 0x6E6F6576696CLL;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 7759204;
    v3 = 0x69746E6172617571;
    v4 = 24945;
    if (v1 != 4)
    {
      v4 = 0x676E6967617473;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x6172656D65687065;
    if (v1 != 1)
    {
      v5 = 1718773104;
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
}

unint64_t sub_22FEB2A24()
{
  result = qword_27DAF19C0;
  if (!qword_27DAF19C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF19C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Environment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Environment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22FEB2C58()
{
  result = qword_27DAF19C8;
  if (!qword_27DAF19C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF19C8);
  }

  return result;
}

unint64_t sub_22FEB2CAC()
{
  result = qword_27DAF19D8;
  if (!qword_27DAF19D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF19D8);
  }

  return result;
}

void DeviceIdentifiers.chipID.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  v5 = *(v1 + 18);
  v6 = *(v1 + 20);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
  *(a1 + 18) = v5;
  *(a1 + 20) = v6;
}

uint64_t DeviceIdentifiers.udid.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84CC0];
  *(v3 + 16) = xmmword_22FFB2D20;
  v5 = MEMORY[0x277D84D30];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = v1;
  v6 = MEMORY[0x277D84D90];
  *(v3 + 96) = MEMORY[0x277D84D38];
  *(v3 + 104) = v6;
  *(v3 + 72) = v2;

  return sub_22FFB14D8();
}

uint64_t DeviceIdentifiers.init(chipID:boardID:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *(result + 17);
  v6 = *(result + 18);
  v7 = *(result + 20);
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 17) = v5;
  *(a3 + 18) = v6;
  *(a3 + 20) = v7;
  *(a3 + 24) = a2;
  return result;
}

uint64_t sub_22FEB2E28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v20[0] = 0;
  v15[0] = 0;
  v15[3] = v20;
  v15[4] = v15;
  sub_22FED55F8(v5, v6, sub_22FEB341C);
  v7 = v18;
  if (v18 == 2)
  {
    sub_22FEA55AC(v4, v3);
    sub_22FEA55AC(v5, v6);
    v8 = 0;
LABEL_6:
    sub_22FEB3438();
    swift_allocError();
    *v12 = v8;
    result = swift_willThrow();
    goto LABEL_7;
  }

  v9 = v16;
  v14 = v17;
  v16 = v4;
  v17 = v3;
  v18 = v5;
  v19 = v6;
  v10 = SEP.Attestation.boardID.getter();
  sub_22FEA55AC(v4, v3);
  result = sub_22FEA55AC(v5, v6);
  if ((v10 & 0x100000000) != 0)
  {
    v8 = 1;
    goto LABEL_6;
  }

  *a2 = v9;
  *(a2 + 8) = v14;
  *(a2 + 16) = v7 & 1;
  *(a2 + 17) = BYTE1(v7) & 1;
  *(a2 + 18) = BYTE2(v7);
  *(a2 + 20) = HIDWORD(v7);
  *(a2 + 24) = v10;
LABEL_7:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static DeviceIdentifiers.== infix(_:_:)(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *(a1 + 18);
  v7 = a1[5];
  v8 = a1[6];
  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = *(a2 + 16);
  v12 = *(a2 + 17);
  v13 = *(a2 + 18);
  v14 = a2[6];
  v21 = a2[5];
  v22 = v2;
  v23 = v3;
  v24 = v4;
  v25 = v5;
  v26 = v6;
  v27 = v7;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  return _s16CloudAttestation3SEPO8IdentityV2eeoiySbAE_AEtFZ_0(&v22, &v16) & (v8 == v14);
}

uint64_t DeviceIdentifiers.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  v6 = v0[5];
  v7 = v0[6];
  sub_22FFB1CD8();
  MEMORY[0x23190E490](v2);
  sub_22FFB1CC8();
  sub_22FFB1CD8();
  return sub_22FFB1CD8();
}

uint64_t DeviceIdentifiers.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  v6 = v0[5];
  v7 = v0[6];
  sub_22FFB1CA8();
  sub_22FFB1CD8();
  MEMORY[0x23190E490](v2);
  sub_22FFB1CC8();
  sub_22FFB1CD8();
  sub_22FFB1CD8();
  return sub_22FFB1CF8();
}

uint64_t sub_22FEB31AC()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  v6 = v0[5];
  v7 = v0[6];
  sub_22FFB1CA8();
  sub_22FFB1CD8();
  MEMORY[0x23190E490](v2);
  sub_22FFB1CC8();
  sub_22FFB1CD8();
  sub_22FFB1CD8();
  return sub_22FFB1CF8();
}

uint64_t sub_22FEB326C(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *(a1 + 18);
  v7 = a1[5];
  v8 = a1[6];
  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = *(a2 + 16);
  v12 = *(a2 + 17);
  v13 = *(a2 + 18);
  v14 = a2[6];
  v21 = a2[5];
  v22 = v2;
  v23 = v3;
  v24 = v4;
  v25 = v5;
  v26 = v6;
  v27 = v7;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  return _s16CloudAttestation3SEPO8IdentityV2eeoiySbAE_AEtFZ_0(&v22, &v16) & (v8 == v14);
}

unint64_t sub_22FEB3308()
{
  result = qword_27DAF19E0;
  if (!qword_27DAF19E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF19E0);
  }

  return result;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_22FEB3370(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 28))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_22FEB33C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_22FEB3438()
{
  result = qword_27DAF19E8;
  if (!qword_27DAF19E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF19E8);
  }

  return result;
}

uint64_t _s5ErrorOwet_0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s5ErrorOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22FEB35E0()
{
  result = qword_27DAF19F0;
  if (!qword_27DAF19F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF19F0);
  }

  return result;
}

uint64_t EnsembleAttestor.attestingKey.getter()
{
  if (qword_27DAF14C8 != -1)
  {
    swift_once();
  }

  if (qword_27DB05B28)
  {
    v1 = qword_27DB05B28;
    Duplicate = SecKeyCreateDuplicate();
    if (Duplicate)
    {
      v0 = Duplicate;
    }

    else
    {
      type metadata accessor for NodeAttestor.Error();
      sub_22FEAF398();
      swift_allocError();
      v0 = v6;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
      (*(*(v7 - 8) + 56))(v0, 1, 7, v7);
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for NodeAttestor.Error();
    sub_22FEAF398();
    swift_allocError();
    v4 = v3;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
    (*(*(v5 - 8) + 56))(v4, 1, 7, v5);
    swift_willThrow();
  }

  return v0;
}

double sub_22FEB37F0@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = xmmword_22FFB3760;
  *(a2 + 88) = &type metadata for SEP.PhysicalDevice;
  *(a2 + 96) = &protocol witness table for SEP.PhysicalDevice;
  *(a2 + 147) = 0;
  *(v12 + 8) = xmmword_22FFB3760;
  *(&v16 + 1) = &type metadata for SEP.PhysicalDevice;
  *&v17 = &protocol witness table for SEP.PhysicalDevice;
  *(&v19[1] + 3) = 0;
  static Environment.default.getter(&v9);
  sub_22FF9A7CC(a1, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(&v15);
  v17 = v10[6];
  v18 = v10[7];
  v19[0] = *v11;
  *(v19 + 13) = *&v11[13];
  v13 = v10[2];
  v14 = v10[3];
  v15 = v10[4];
  v16 = v10[5];
  v12[0] = v10[0];
  v12[1] = v10[1];
  __swift_destroy_boxed_opaque_existential_1((a2 + 64));
  v4 = v18;
  *(a2 + 96) = v17;
  *(a2 + 112) = v4;
  *(a2 + 128) = v19[0];
  *(a2 + 141) = *(v19 + 13);
  v5 = v14;
  *(a2 + 32) = v13;
  *(a2 + 48) = v5;
  v6 = v16;
  *(a2 + 64) = v15;
  *(a2 + 80) = v6;
  result = *v12;
  v8 = v12[1];
  *a2 = v12[0];
  *(a2 + 16) = v8;
  return result;
}

__n128 EnsembleAttestor.init(attestor:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 141) = *(a1 + 141);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *a1;
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  return result;
}

uint64_t EnsembleAttestor.init<A>(assetProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  (*(v8 + 16))(v11, a1, a2);
  v12 = NodeAttestor.init<A, B>(transparencyProver:assetProvider:)(&v15, v11, &type metadata for NopTransparencyLog, a2, &protocol witness table for NopTransparencyLog, a3, a4);
  return (*(v8 + 8))(a1, a2, v12);
}

uint64_t EnsembleAttestor.attest(key:using:expiration:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FEAA0D4;

  return NodeAttestor.attest(key:using:expiration:nonce:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22FEB3B54()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB059A0);
  __swift_project_value_buffer(v0, qword_27DB059A0);
  return sub_22FFB12E8();
}

uint64_t type metadata accessor for EnsembleValidator()
{
  result = qword_27DAF1A38;
  if (!qword_27DAF1A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EnsembleValidator.strictCertificateValidation.setter(char a1)
{
  result = type metadata accessor for EnsembleValidator();
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t EnsembleValidator.roots.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnsembleValidator() + 72));
}

uint64_t EnsembleValidator.roots.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EnsembleValidator() + 72);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t EnsembleValidator.clock.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for EnsembleValidator() + 76);

  return sub_22FEB3E04(a1, v3);
}

uint64_t sub_22FEB3E04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t EnsembleValidator.init()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnsembleValidator();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + v5[15]);
  *v8 = 0;
  v8[1] = 0;
  *(a1 + v5[16]) = 0;
  *(a1 + v5[17]) = 1;
  *(a1 + v5[18]) = 1;
  *(a1 + v5[19]) = 1;
  v9 = v5[21];
  v10 = sub_22FFB0908();
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v13[3] = &type metadata for SEP.PhysicalDevice;
  v13[4] = &protocol witness table for SEP.PhysicalDevice;
  sub_22FEB4010(v13, v7);
  result = sub_22FEAEA34(a1 + v9, &qword_27DAF1510, &qword_22FFB3800);
  if (!v1)
  {
    return sub_22FEBF7D4(v7, a1, type metadata accessor for EnsembleValidator);
  }

  return result;
}

uint64_t sub_22FEB4010@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  static DeviceMode.local.getter(v7);
  v4 = LOWORD(v7[0]) | (BYTE2(v7[0]) << 16);
  if (LOBYTE(v7[0]) == 2)
  {
    sub_22FEB44C8();
    swift_allocError();
    *v5 = 11;
    swift_willThrow();
  }

  else
  {
    sub_22FEAF43C(a1, v7);
    sub_22FEB451C(v7, v4 & 0x1010101, a2);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t EnsembleValidator.init<A>(sepProtocol:assetProvider:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DeviceMode.local.getter(v18);
  v14 = LOWORD(v18[0]) | (BYTE2(v18[0]) << 16);
  if (LOBYTE(v18[0]) == 2)
  {
    sub_22FEB44C8();
    swift_allocError();
    *v15 = 11;
    swift_willThrow();
  }

  else
  {
    sub_22FEAF43C(a1, v18);
    (*(v10 + 16))(v13, a2, a3);
    v19 = v14 & 0x101;
    v20 = BYTE2(v14) & 1;
    sub_22FEB4AC0(v18, v13, &v19, a3, a4, a5);
  }

  (*(v10 + 8))(a2, a3);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t EnsembleValidator.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a1;
  v27 = a2;
  v4 = type metadata accessor for EnsembleValidator();
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  v12 = (a3 + v9[13]);
  *v12 = 0;
  v12[1] = 0;
  *(a3 + v9[14]) = 0;
  *(a3 + v9[15]) = 1;
  *(a3 + v9[16]) = 1;
  *(a3 + v9[17]) = 1;
  v13 = v9[19];
  v14 = sub_22FFB0908();
  v15 = *(*(v14 - 8) + 56);
  v15(a3 + v13, 1, 1, v14);
  v16 = &v11[v4[13]];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v11[v4[14]] = 0;
  v11[v4[15]] = 1;
  v11[v4[16]] = 1;
  v11[v4[17]] = 1;
  v17 = v4[19];
  v15(&v11[v17], 1, 1, v14);
  v26[3] = &type metadata for SEP.PhysicalDevice;
  v26[4] = &protocol witness table for SEP.PhysicalDevice;
  v18 = v25;
  sub_22FEB4010(v26, v8);
  sub_22FEAEA34(&v11[v17], &qword_27DAF1510, &qword_22FFB3800);
  if (v18)
  {

    return sub_22FEAEA34(a3 + v13, &qword_27DAF1510, &qword_22FFB3800);
  }

  else
  {
    sub_22FEBF7D4(v8, v11, type metadata accessor for EnsembleValidator);
    sub_22FEAEA34(a3 + v13, &qword_27DAF1510, &qword_22FFB3800);
    sub_22FEBF7D4(v11, a3, type metadata accessor for EnsembleValidator);
    v20 = (a3 + v4[11]);
    v21 = v20[1];

    v22 = v27;
    *v20 = v24;
    v20[1] = v22;
  }

  return result;
}

unint64_t sub_22FEB44C8()
{
  result = qword_27DAF19F8;
  if (!qword_27DAF19F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF19F8);
  }

  return result;
}

void sub_22FEB451C(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for EnsembleValidator();
  v8 = (a3 + v7[13]);
  *v8 = 0;
  v8[1] = 0;
  *(a3 + v7[14]) = 0;
  *(a3 + v7[15]) = 1;
  *(a3 + v7[16]) = 1;
  *(a3 + v7[17]) = 1;
  v9 = v7[19];
  v10 = sub_22FFB0908();
  v11 = *(*(v10 - 8) + 56);
  v11(a3 + v9, 1, 1, v10);
  *(a3 + v7[18]) = MEMORY[0x277D84F90];
  sub_22FEAEA34(a3 + v9, &qword_27DAF1510, &qword_22FFB3800);
  v11(a3 + v9, 1, 1, v10);
  sub_22FEB5254(&v44);
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_22FEAEA34(a3 + v9, &qword_27DAF1510, &qword_22FFB3800);
    return;
  }

  v12 = v45;
  v13 = v46;
  v14 = v47;
  v15 = v48;
  v16 = a3 + v7[5];
  *v16 = v44;
  *(v16 + 8) = v12;
  *(v16 + 16) = v13;
  *(v16 + 17) = v14;
  *(v16 + 18) = v15;
  *(v16 + 20) = v49;
  v17 = type metadata accessor for Release();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FEBB004(0, v20);
  sub_22FEBF7D4(v20, a3, type metadata accessor for Release);
  if (a2)
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  *(a3 + v7[6]) = v21;
  if ((a2 & 0x100) != 0)
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  *(a3 + v7[7]) = v22;
  if ((a2 & 0x10000) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = 1;
  }

  *(a3 + v7[8]) = v23;
  v24 = sub_22FEA2AC0();
  if (qword_281490280 != -1)
  {
    swift_once();
  }

  v25 = sub_22FFB0958();
  v26 = __swift_project_value_buffer(v25, qword_281491418);
  if (*(v24 + 16) && (v27 = sub_22FFA6214(v26), (v28 & 1) != 0) && (v29 = *(*(v24 + 56) + 8 * v27), , , (v30 = *(v29 + 16)) != 0))
  {
    v31 = *(v29 + (v30 << 6));

    v32 = (v31 >> 2) & 1;
  }

  else
  {

    LOBYTE(v32) = 0;
  }

  *(a3 + v7[9]) = v32;
  v33 = (a3 + v7[11]);
  *v33 = sub_22FEB5580;
  v33[1] = 0;
  v34 = a3 + v7[12];
  *(v34 + 24) = &type metadata for PCC.AssetProvider;
  *(v34 + 32) = &protocol witness table for PCC.AssetProvider;
  if (!MEMORY[0x277CDBC48] || !MEMORY[0x277CDBC58] || !MEMORY[0x277CDBC60] || !MEMORY[0x277CDBC38] || !MEMORY[0x277CDBC40] || !MEMORY[0x277CDBC50])
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    *(a3 + v7[10]) = 2;
    return;
  }

  sub_22FFB0A68();
  v35 = sub_22FFB0A48();
  v36 = sub_22FFB0A58();
  if (v36 <= 1)
  {
    if (!v36)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);

      *(a3 + v7[10]) = 0;
      return;
    }

    if (v36 == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);

LABEL_42:
      v37 = v7[10];
      v38 = 2;
      goto LABEL_43;
    }

LABEL_34:
    if (qword_27DAF1248 != -1)
    {
      swift_once();
    }

    v39 = sub_22FFB12F8();
    __swift_project_value_buffer(v39, qword_27DB059A0);
    v40 = v35;
    v41 = sub_22FFB12D8();
    v42 = sub_22FFB1838();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 134349056;
      sub_22FFB0A58();
      *(v43 + 4) = sub_22FFB0A78();

      _os_log_impl(&dword_22FE99000, v41, v42, "Unknown config security policy %{public}ld, defaulting to customer", v43, 0xCu);
      MEMORY[0x23190EFF0](v43, -1, -1);
    }

    else
    {

      v41 = v40;
    }

    __swift_destroy_boxed_opaque_existential_1(a1);
    goto LABEL_42;
  }

  if (v36 == 2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    v37 = v7[10];
    v38 = 3;
  }

  else
  {
    if (v36 != 3)
    {
      goto LABEL_34;
    }

    __swift_destroy_boxed_opaque_existential_1(a1);

    v37 = v7[10];
    v38 = 1;
  }

LABEL_43:
  *(a3 + v37) = v38;
}

uint64_t sub_22FEB4AC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v70 = a5;
  v78 = a2;
  v10 = *a3;
  v67 = a3[1];
  v68 = a3[2];
  LODWORD(v69) = v10;
  v11 = type metadata accessor for EnsembleValidator();
  v12 = (a6 + v11[13]);
  *v12 = 0;
  v12[1] = 0;
  *(a6 + v11[14]) = 0;
  *(a6 + v11[15]) = 1;
  *(a6 + v11[16]) = 1;
  *(a6 + v11[17]) = 1;
  v13 = v11[19];
  v14 = sub_22FFB0908();
  v15 = *(*(v14 - 8) + 56);
  v15(a6 + v13, 1, 1, v14);
  *(a6 + v11[18]) = MEMORY[0x277D84F90];
  sub_22FEAEA34(a6 + v13, &qword_27DAF1510, &qword_22FFB3800);
  v71 = v13;
  v15(a6 + v13, 1, 1, v14);
  sub_22FEB5254(&v72);
  if (v6)
  {
    (*(*(a4 - 8) + 8))(v78, a4);
    v16 = a1;
    goto LABEL_3;
  }

  v17 = v69;
  v66 = a1;
  v18 = v73;
  v19 = v74;
  v20 = v75;
  v21 = v76;
  v22 = a6 + v11[5];
  *v22 = v72;
  *(v22 + 8) = v18;
  *(v22 + 16) = v19;
  *(v22 + 17) = v20;
  *(v22 + 18) = v21;
  *(v22 + 20) = v77;
  v23 = type metadata accessor for Release();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v70;
  static Release.local<A>(assetProvider:)(a4, v70, v26);
  sub_22FEBF7D4(v26, a6, type metadata accessor for Release);
  if (v17)
  {
    v28 = 2;
  }

  else
  {
    v28 = 1;
  }

  *(a6 + v11[6]) = v28;
  if (v67)
  {
    v29 = 2;
  }

  else
  {
    v29 = 1;
  }

  *(a6 + v11[7]) = v29;
  if (v68)
  {
    v30 = 2;
  }

  else
  {
    v30 = 1;
  }

  *(a6 + v11[8]) = v30;
  v31 = (*(v27 + 24))(a4, v27);
  v69 = 0;
  v33 = v31;
  if (qword_281490280 != -1)
  {
    swift_once();
  }

  v34 = sub_22FFB0958();
  v35 = __swift_project_value_buffer(v34, qword_281491418);
  if (*(v33 + 16) && (v36 = sub_22FFA6214(v35), (v37 & 1) != 0) && (v38 = *(*(v33 + 56) + 8 * v36), , , (v39 = *(v38 + 16)) != 0))
  {
    v40 = *(v38 + (v39 << 6));

    v41 = (v40 >> 2) & 1;
  }

  else
  {

    LOBYTE(v41) = 0;
  }

  *(a6 + v11[9]) = v41;
  v43 = (a6 + v11[11]);
  *v43 = sub_22FEB5580;
  v43[1] = 0;
  v44 = (a6 + v11[12]);
  v44[3] = a4;
  v44[4] = v27;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  v46 = a4;
  v47 = *(a4 - 8);
  v48 = v47;
  v49 = v46;
  (*(v47 + 16))(boxed_opaque_existential_1, v78);
  if (!MEMORY[0x277CDBC48] || !MEMORY[0x277CDBC58] || !MEMORY[0x277CDBC60] || !MEMORY[0x277CDBC38] || !MEMORY[0x277CDBC40] || !MEMORY[0x277CDBC50])
  {
    (*(v47 + 8))(v78, v49);
    result = __swift_destroy_boxed_opaque_existential_1(v66);
    *(a6 + v11[10]) = 2;
    return result;
  }

  sub_22FFB0A68();
  v50 = v69;
  v51 = sub_22FFB0A48();
  if (v50)
  {
    (*(v47 + 8))(v78, v49);
    __swift_destroy_boxed_opaque_existential_1(v66);
    sub_22FEBF83C(a6, type metadata accessor for Release);
    if (v69)
    {
      return sub_22FEAEA34(a6 + v71, &qword_27DAF1510, &qword_22FFB3800);
    }

    v42 = *(a6 + v11[11] + 8);

    v16 = (a6 + v11[12]);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(v16);
    return sub_22FEAEA34(a6 + v71, &qword_27DAF1510, &qword_22FFB3800);
  }

  v52 = v51;
  v53 = sub_22FFB0A58();
  if (v53 <= 1)
  {
    v54 = v49;
    if (!v53)
    {

      (*(v47 + 8))(v78, v49);
      result = __swift_destroy_boxed_opaque_existential_1(v66);
      *(a6 + v11[10]) = 0;
      return result;
    }

    v55 = v11;
    if (v53 == 1)
    {

      (*(v47 + 8))(v78, v54);
      v56 = v66;
LABEL_49:
      result = __swift_destroy_boxed_opaque_existential_1(v56);
      v57 = v55[10];
      v58 = 2;
      goto LABEL_50;
    }

LABEL_41:
    if (qword_27DAF1248 != -1)
    {
      swift_once();
    }

    v59 = sub_22FFB12F8();
    __swift_project_value_buffer(v59, qword_27DB059A0);
    v60 = v52;
    v61 = sub_22FFB12D8();
    v62 = sub_22FFB1838();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 134349056;
      LODWORD(v71) = v62;
      sub_22FFB0A58();
      *(v63 + 4) = sub_22FFB0A78();

      _os_log_impl(&dword_22FE99000, v61, v71, "Unknown config security policy %{public}ld, defaulting to customer", v63, 0xCu);
      MEMORY[0x23190EFF0](v63, -1, -1);
    }

    else
    {
    }

    v64 = v66;

    (*(v48 + 8))(v78, v54);
    v56 = v64;
    goto LABEL_49;
  }

  v54 = v49;
  if (v53 == 2)
  {

    (*(v47 + 8))(v78, v49);
    result = __swift_destroy_boxed_opaque_existential_1(v66);
    v57 = v11[10];
    v58 = 3;
  }

  else
  {
    v55 = v11;
    if (v53 != 3)
    {
      goto LABEL_41;
    }

    (*(v47 + 8))(v78, v54);
    result = __swift_destroy_boxed_opaque_existential_1(v66);
    v57 = v11[10];
    v58 = 1;
  }

LABEL_50:
  *(a6 + v57) = v58;
  return result;
}

uint64_t sub_22FEB5254@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for IORegistryEntry();
  inited = swift_initStackObject();
  v3 = *MEMORY[0x277CD2898];
  v4 = sub_22FFB1488();
  v5 = IORegistryEntryCopyFromPath(v3, v4);

  *(inited + 16) = v5;
  if (!v5)
  {
    swift_setDeallocating();
    IOObjectRelease(0);
    sub_22FEB44C8();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  result = sub_22FF95280();
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_9;
  }

  if ((result & 0xFFFFFF00) != 0)
  {
    __break(1u);
    return result;
  }

  if (result > 3u)
  {
LABEL_9:
    sub_22FEB44C8();
    swift_allocError();
    v15 = 1;
    goto LABEL_10;
  }

  v7 = result;
  v8 = sub_22FF95280();
  if ((v8 & 0x100000000) != 0)
  {
    sub_22FEB44C8();
    swift_allocError();
    v15 = 2;
    goto LABEL_10;
  }

  v9 = v8;
  v10 = sub_22FF95280();
  if ((v10 & 0x100000000) != 0)
  {
    sub_22FEB44C8();
    swift_allocError();
    v15 = 3;
    goto LABEL_10;
  }

  v11 = v10;
  v12 = sub_22FF95474();
  if (v13)
  {
    sub_22FEB44C8();
    swift_allocError();
    v15 = 6;
LABEL_10:
    *v14 = v15;
    swift_willThrow();
    swift_setDeallocating();
    return IOObjectRelease(v5);
  }

  v21 = v12;
  v17 = sub_22FF95280();
  if ((v17 & 0x100000000) != 0)
  {
    sub_22FEB44C8();
    swift_allocError();
    v15 = 5;
    goto LABEL_10;
  }

  v18 = v17;
  v19 = sub_22FF95280();
  if ((v19 & 0x100000000) != 0)
  {
    sub_22FEB44C8();
    swift_allocError();
    v15 = 4;
    goto LABEL_10;
  }

  v20 = v19;
  swift_setDeallocating();
  result = IOObjectRelease(v5);
  *a1 = v18;
  *(a1 + 8) = v21;
  *(a1 + 16) = v11 == 1;
  *(a1 + 17) = v9 == 1;
  *(a1 + 18) = v7;
  *(a1 + 20) = 0;
  *(a1 + 24) = v20;
  return result;
}

uint64_t EnsembleValidator.policy.getter@<X0>(uint64_t a1@<X8>)
{
  v110 = a1;
  v2 = type metadata accessor for SoftwareReleasePolicy();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v111 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v108 = &v89 - v6;
  v104 = sub_22FFB0A08();
  v103 = *(v104 - 8);
  v7 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v101 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for KeyOptionsPolicy(0);
  v9 = *(*(v102 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v102);
  v109 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v106 = &v89 - v12;
  v13 = type metadata accessor for SecureConfigPolicy(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v107 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v114 = &v89 - v17;
  v18 = type metadata accessor for EnsembleValidator();
  v98 = *(v18 - 1);
  v19 = *(v98 + 64);
  MEMORY[0x28223BE20](v18);
  v99 = v20;
  v100 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A00, &qword_22FFB3808);
  v96 = *(v97 - 1);
  v21 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v94 = &v89 - v22;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A08, &unk_22FFB3810);
  v23 = *(*(v91 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v91);
  v92 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v93 = &v89 - v27;
  MEMORY[0x28223BE20](v26);
  v90 = &v89 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A10, &qword_22FFC02F0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v105 = &v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v112 = &v89 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v89 - v36;
  v38 = type metadata accessor for X509Policy();
  v39 = (v38 - 8);
  v40 = *(*(v38 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v113 = &v89 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = &v89 - v43;
  v45 = *(v1 + v18[17]);
  v46 = v1;
  v47 = sub_22FEB6388();
  sub_22FEBF3A4(v46 + v18[19], v37, &qword_27DAF1510, &qword_22FFB3800);
  *(v44 + 1) = MEMORY[0x277D84F90];
  v48 = v39[8];
  v49 = sub_22FFB0908();
  v50 = 1;
  (*(*(v49 - 8) + 56))(&v44[v48], 1, 1, v49);
  v51 = &v44[v39[9]];
  *v51 = 0;
  v51[8] = 1;
  v52 = &v44[v39[10]];
  v95 = v45;
  *v44 = v45;
  v53 = v18;
  sub_22FED2C04(v47);
  sub_22FEB3E04(v37, &v44[v48]);
  *v52 = 0;
  *(v52 + 1) = 0;
  *v51 = 0;
  v51[8] = 1;
  v54 = *(v46 + v18[14]);
  if (v54)
  {

    v55 = v90;
    sub_22FFB12E8();
    v56 = sub_22FEBE724(v54);

    *(v55 + *(v91 + 36)) = v56;
    v57 = v93;
    sub_22FEBF3A4(v55, v93, &qword_27DAF1A08, &unk_22FFB3810);
    v58 = v92;
    sub_22FEBF3A4(v57, v92, &qword_27DAF1A08, &unk_22FFB3810);
    v59 = v58;
    v60 = v94;
    sub_22FEBF4E4(v59, v94, &qword_27DAF1A08, &unk_22FFB3810);
    sub_22FEAEA34(v55, &qword_27DAF1A08, &unk_22FFB3810);
    sub_22FEAEA34(v57, &qword_27DAF1A08, &unk_22FFB3810);
    v61 = v112;
    sub_22FEBF4E4(v60, v112, &qword_27DAF1A00, &qword_22FFB3808);
    v50 = 0;
  }

  else
  {
    v61 = v112;
  }

  (*(v96 + 56))(v61, v50, 1, v97);
  SEPAttestationPolicy.init(insecure:)(v95 ^ 1, &v129);
  v62 = v130;
  v97 = v129;
  v63 = v100;
  sub_22FEBF40C(v46, v100, type metadata accessor for EnsembleValidator);
  v64 = (*(v98 + 80) + 16) & ~*(v98 + 80);
  v99 = swift_allocObject();
  sub_22FEBF7D4(v63, v99 + v64, type metadata accessor for EnsembleValidator);
  sub_22FEA5C80(v62);
  LODWORD(v100) = *(v46 + v53[9]);
  v65 = type metadata accessor for SEP.SealedHash(0);
  (*(*(v65 - 8) + 56))(v114, 1, 1, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A18, &unk_22FFB3820);
  v66 = v103;
  v67 = *(v103 + 72);
  v68 = (*(v103 + 80) + 32) & ~*(v103 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_22FFB2D20;
  sub_22FFB09E8();
  sub_22FFB09D8();
  v129 = v69;
  sub_22FEBF300(&qword_281491308, MEMORY[0x277CEE010]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A20, &unk_22FFC0180);
  sub_22FEBF78C(&qword_28148F150, &qword_27DAF1A20, &unk_22FFC0180);
  v70 = v101;
  v71 = v104;
  sub_22FFB1938();
  v72 = v106;
  (*(v66 + 32))(v106, v70, v71);
  type metadata accessor for KeyOptionsPolicy.Assertion(0);
  swift_storeEnumTagMultiPayload();
  v73 = *(v102 + 20);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A28, &unk_22FFB3830);
  (*(*(v74 - 8) + 56))(v72 + v73, 1, 1, v74);
  v75 = v108;
  sub_22FEBF40C(v46, v108, type metadata accessor for Release);
  v76 = v53[6];
  v77 = v46 + v53[5];
  LODWORD(v104) = *(v77 + 16);
  LODWORD(v103) = *(v77 + 17);
  LODWORD(v102) = *(v77 + 18);
  LODWORD(v101) = *v77;
  LODWORD(v98) = *(v77 + 24);
  LOBYTE(v77) = *(v46 + v76);
  LOBYTE(v76) = *(v46 + v53[7]);
  v78 = *(v46 + v53[8]);
  LODWORD(v96) = 0x10002u >> (8 * v77);
  v95 = 0x10002u >> (8 * v76);
  LODWORD(v71) = 0x10002u >> (8 * v78);
  v79 = *(v46 + v53[10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A30, &qword_22FFB4C70);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_22FFB2D10;
  *(v80 + 32) = v79;
  v81 = v113;
  sub_22FEBF40C(v44, v113, type metadata accessor for X509Policy);
  v129 = v81;
  v82 = v105;
  sub_22FEBF3A4(v61, v105, &qword_27DAF1A10, &qword_22FFC02F0);
  v126 = v97;
  v127 = sub_22FEBAF78;
  v128 = v99;
  v124 = 0;
  v125 = v100;
  v130 = v82;
  v131 = &v126;
  v132 = &v124;
  v100 = v44;
  v83 = v114;
  v84 = v107;
  sub_22FEBF40C(v114, v107, type metadata accessor for SecureConfigPolicy);
  v133 = v84;
  v85 = v109;
  sub_22FEBF40C(v72, v109, type metadata accessor for KeyOptionsPolicy);
  v134 = v85;
  v86 = v111;
  sub_22FEBF40C(v75, v111, type metadata accessor for SoftwareReleasePolicy);
  v119[0] = v104;
  v119[1] = v103;
  v119[2] = v102;
  v120 = v101;
  v121 = v98;
  v122 = 2;
  v123 = 0;
  v135 = v86;
  v136 = v119;
  v116[0] = v96;
  v116[1] = v95;
  v116[2] = v71;
  v118 = 0;
  v117 = 2;
  v115[0] = v80;
  v115[1] = MEMORY[0x277D84F90];
  v137 = v116;
  v138 = v115;
  sub_22FFA20EC(&v129, v110);
  sub_22FEBF83C(v75, type metadata accessor for SoftwareReleasePolicy);
  sub_22FEBF83C(v72, type metadata accessor for KeyOptionsPolicy);
  sub_22FEBF83C(v83, type metadata accessor for SecureConfigPolicy);
  sub_22FEAEA34(v112, &qword_27DAF1A10, &qword_22FFC02F0);
  sub_22FEBF83C(v100, type metadata accessor for X509Policy);

  sub_22FEBF83C(v86, type metadata accessor for SoftwareReleasePolicy);
  sub_22FEBF83C(v85, type metadata accessor for KeyOptionsPolicy);
  sub_22FEBF83C(v84, type metadata accessor for SecureConfigPolicy);

  v87 = v127;
  sub_22FEBAFF4(v126);
  sub_22FEA5C80(v87);
  sub_22FEAEA34(v82, &qword_27DAF1A10, &qword_22FFC02F0);
  return sub_22FEBF83C(v113, type metadata accessor for X509Policy);
}

uint64_t sub_22FEB6388()
{
  v1 = type metadata accessor for EnsembleValidator();
  if (*(v0 + *(v1 + 60)) == 1)
  {
    if (qword_281490B50 != -1)
    {
      swift_once();
    }
  }

  else
  {
    v3 = *(v0 + *(v1 + 72));
    v4 = qword_281490B50;

    if (v4 != -1)
    {
      swift_once();
    }

    sub_22FECB2C8(v5);
    if (qword_27DAF1268 != -1)
    {
      swift_once();
    }

    sub_22FECB2C8(v6);
    return v3;
  }
}

uint64_t sub_22FEB64AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v68 = a3;
  v87 = *MEMORY[0x277D85DE8];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1AB8, &qword_22FFB3A90);
  v7 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v69 = &v64 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1AC0, &qword_22FFB3A98);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v72 = &v64 - v12;
  v13 = type metadata accessor for PolicyBuilder.PredicatePolicy();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v71 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v78 = &v64 - v18;
  MEMORY[0x28223BE20](v17);
  v77 = &v64 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1AC8, &qword_22FFB3AA0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v73 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v64 - v24;
  v26 = *a1;
  v74 = a1[1];
  v75 = v26;
  v27 = a1[2];
  v28 = a1[3];
  v29 = type metadata accessor for EnsembleValidator();
  v30 = v29;
  v31 = (a2 + *(v29 + 52));
  v32 = v31[1];
  v76 = v25;
  if (v32)
  {
    v65 = v10;
    v66 = v9;
    v67 = a2;
    v33 = *v31;
    v83[0] = 0;
    v79 = 0;
    MEMORY[0x28223BE20](v29);
    *(&v64 - 2) = v83;
    *(&v64 - 1) = &v79;
    sub_22FED55F8(v27, v28, sub_22FEBFA54);
    v34 = 0;
    v35 = 0;
    if (v82 != 2)
    {
      v36 = v80;
      v37 = v81;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_22FFB2D20;
      v39 = MEMORY[0x277D84D30];
      *(v38 + 56) = MEMORY[0x277D84CC0];
      *(v38 + 64) = v39;
      v40 = MEMORY[0x277D84D38];
      *(v38 + 32) = v36;
      v41 = MEMORY[0x277D84D90];
      *(v38 + 96) = v40;
      *(v38 + 104) = v41;
      *(v38 + 72) = v37;
      v34 = sub_22FFB14D8();
      v35 = v42;
    }

    *(&v64 - 4) = MEMORY[0x28223BE20](v34);
    *(&v64 - 3) = v35;
    *(&v64 - 2) = v33;
    *(&v64 - 1) = v32;
    v43 = v77;
    sub_22FFB0998();

    v44 = v78;
    sub_22FEBF40C(v43, v78, type metadata accessor for PolicyBuilder.PredicatePolicy);
    v45 = v71;
    sub_22FEBF40C(v44, v71, type metadata accessor for PolicyBuilder.PredicatePolicy);
    v46 = v45;
    v47 = v72;
    sub_22FEBF7D4(v46, v72, type metadata accessor for PolicyBuilder.PredicatePolicy);
    sub_22FEBF83C(v43, type metadata accessor for PolicyBuilder.PredicatePolicy);
    sub_22FEBF83C(v44, type metadata accessor for PolicyBuilder.PredicatePolicy);
    v25 = v76;
    sub_22FEBF4E4(v47, v76, &qword_27DAF1AC0, &qword_22FFB3A98);
    (*(v65 + 56))(v25, 0, 1, v66);
    v4 = v3;
    a2 = v67;
  }

  else
  {
    (*(v10 + 56))(v25, 1, 1, v9);
  }

  v48 = a2 + *(v30 + 44);
  v50 = *v48;
  v49 = *(v48 + 8);
  v80 = v75;
  v81 = v74;
  *&v82 = v27;
  *(&v82 + 1) = v28;
  sub_22FEA5608(v75, v74);
  sub_22FEA5608(v27, v28);
  sub_22FEB2E28(&v80, v83);
  if (v4)
  {
    result = sub_22FEAEA34(v25, &qword_27DAF1AC8, &qword_22FFB3AA0);
  }

  else
  {
    LODWORD(v80) = v83[0];
    v81 = v83[1];
    LOWORD(v82) = v84;
    BYTE2(v82) = v85;
    *(&v82 + 4) = v86;
    v52 = v50(&v80);
    v75 = &v64;
    *(&v64 - 16) = MEMORY[0x28223BE20](v52) & 1;
    v53 = v77;
    sub_22FFB0998();
    v54 = v73;
    sub_22FEBF3A4(v25, v73, &qword_27DAF1AC8, &qword_22FFB3AA0);
    v55 = v78;
    sub_22FEBF40C(v53, v78, type metadata accessor for PolicyBuilder.PredicatePolicy);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1AD0, &qword_22FFB3AA8);
    v57 = v68;
    v68[3] = v56;
    v57[4] = &protocol witness table for PolicyBuilder.TuplePolicy<Pack{repeat A}>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
    v59 = v54;
    v60 = v69;
    sub_22FEBF3A4(v59, v69, &qword_27DAF1AC8, &qword_22FFB3AA0);
    v61 = v70;
    v62 = *(v70 + 48);
    sub_22FEBF40C(v55, v60 + v62, type metadata accessor for PolicyBuilder.PredicatePolicy);
    sub_22FEBF4E4(v60, boxed_opaque_existential_1, &qword_27DAF1AC8, &qword_22FFB3AA0);
    sub_22FEBF7D4(v60 + v62, boxed_opaque_existential_1 + *(v61 + 48), type metadata accessor for PolicyBuilder.PredicatePolicy);
    sub_22FEBF83C(v53, type metadata accessor for PolicyBuilder.PredicatePolicy);
    sub_22FEAEA34(v76, &qword_27DAF1AC8, &qword_22FFB3AA0);
    sub_22FEBF83C(v55, type metadata accessor for PolicyBuilder.PredicatePolicy);
    result = sub_22FEAEA34(v73, &qword_27DAF1AC8, &qword_22FFB3AA0);
  }

  v63 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FEB6BFC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1AD8, &qword_22FFB3AB0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - v16;
  v20 = a1;
  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1AE0, &qword_22FFB3AB8);
  sub_22FFB0638();
  v20 = a3;
  v21 = a4;
  sub_22FFB0638();
  a5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1AE8, &qword_22FFB3AC0);
  a5[4] = sub_22FEBF68C(&qword_27DAF1AF0, &qword_27DAF1AE8, &qword_22FFB3AC0, sub_22FEBF54C);
  __swift_allocate_boxed_opaque_existential_1(a5);
  sub_22FEBF78C(&qword_27DAF1B10, &qword_27DAF1AD8, &qword_22FFB3AB0);
  sub_22FEBF620(&qword_27DAF1B18);
  sub_22FFB0628();
  v18 = *(v11 + 8);
  v18(v15, v10);
  return (v18)(v17, v10);
}

uint64_t sub_22FEB6E3C@<X0>(char a1@<W1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B20, &qword_22FFB3AC8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v14[-v10];
  v14[15] = a1;
  sub_22FFB0638();
  v14[14] = 1;
  sub_22FFB0638();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B28, &unk_22FFB3AD0);
  a2[4] = sub_22FEBF68C(&qword_27DAF1B30, &qword_27DAF1B28, &unk_22FFB3AD0, sub_22FEBF708);
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_22FEBF78C(&qword_27DAF1B40, &qword_27DAF1B20, &qword_22FFB3AC8);
  sub_22FFB0628();
  v12 = *(v5 + 8);
  v12(v9, v4);
  return (v12)(v11, v4);
}

uint64_t EnsembleValidator.validate(bundle:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = type metadata accessor for EnsembleValidator();
  v7[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEB70DC, 0, 0);
}

uint64_t sub_22FEB70DC()
{
  v1 = (v0[8] + *(v0[9] + 48));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_22FEB7208;

  return v8(v2, v3);
}

uint64_t sub_22FEB7208(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;

  if (v1)
  {

    v7 = sub_22FEB761C;
  }

  else
  {
    *(v4 + 96) = a1;
    v7 = sub_22FEB7334;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22FEB7334()
{
  v1 = v0[12];
  sub_22FEBF40C(v0[8], v0[10], type metadata accessor for EnsembleValidator);
  if (v1)
  {
    v2 = v0[12];
    v4 = v0[9];
    v3 = v0[10];
    *(v3 + *(v4 + 68)) = *(v2 + 16) != 0;
    v5 = sub_22FEBE9A0(v2);

    *(v3 + *(v4 + 60)) = v5 & 1;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    v8 = v0[9];
    v7 = v0[10];
    *(v7 + *(v8 + 68)) = 0;
    *(v7 + *(v8 + 60)) = 0;
  }

  *(v0[10] + *(v0[9] + 64)) = v6;
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_22FEB7484;
  v10 = v0[10];
  v11 = v0[6];
  v12 = v0[7];
  v13 = v0[4];
  v14 = v0[5];
  v15 = v0[2];
  v16 = v0[3];

  return (sub_22FEB7794)(v15, v16, v13, v14, v11, v12);
}

uint64_t sub_22FEB7484()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_22FEB7710;
  }

  else
  {
    v3 = sub_22FEB7598;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FEB7598()
{
  sub_22FEBF83C(*(v0 + 80), type metadata accessor for EnsembleValidator);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FEB761C()
{
  sub_22FEBF40C(v0[8], v0[10], type metadata accessor for EnsembleValidator);
  v2 = v0[9];
  v1 = v0[10];
  *(v1 + *(v2 + 68)) = 0;
  *(v1 + *(v2 + 60)) = 0;
  *(v0[10] + *(v0[9] + 64)) = 0;
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_22FEB7484;
  v4 = v0[10];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  return sub_22FEB7794(v9, v10, v7, v8, v5, v6);
}

uint64_t sub_22FEB7710()
{
  sub_22FEBF83C(v0[10], type metadata accessor for EnsembleValidator);

  v1 = v0[1];
  v2 = v0[14];

  return v1();
}

uint64_t sub_22FEB7794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = *MEMORY[0x277D85DE8];
  v7[35] = a6;
  v7[36] = v6;
  v7[33] = a4;
  v7[34] = a5;
  v7[31] = a2;
  v7[32] = a3;
  v7[30] = a1;
  v8 = *(*(type metadata accessor for AttestationBundle(0) - 8) + 64) + 15;
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30) - 8) + 64) + 15;
  v7[39] = swift_task_alloc();
  v10 = sub_22FFB0EE8();
  v7[40] = v10;
  v11 = *(v10 - 8);
  v7[41] = v11;
  v12 = *(v11 + 64) + 15;
  v7[42] = swift_task_alloc();
  v13 = sub_22FFB0908();
  v7[43] = v13;
  v14 = *(v13 - 8);
  v7[44] = v14;
  v15 = *(v14 + 64) + 15;
  v7[45] = swift_task_alloc();
  v7[46] = swift_task_alloc();
  v16 = sub_22FFB13C8();
  v7[47] = v16;
  v17 = *(v16 - 8);
  v7[48] = v17;
  v18 = *(v17 + 64) + 15;
  v7[49] = swift_task_alloc();
  v19 = sub_22FFB1398();
  v7[50] = v19;
  v20 = *(v19 - 8);
  v7[51] = v20;
  v21 = *(v20 + 64) + 15;
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1AA0, &qword_22FFB3A78) - 8) + 64) + 15;
  v7[54] = swift_task_alloc();
  v23 = sub_22FFB12F8();
  v7[55] = v23;
  v24 = *(v23 - 8);
  v7[56] = v24;
  v25 = *(v24 + 64) + 15;
  v7[57] = swift_task_alloc();
  v26 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22FEB7ABC, 0, 0);
}

uint64_t sub_22FEB7ABC()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[57];
  v2 = v0[54];
  v3 = v0[36];
  v0[22] = type metadata accessor for EnsembleValidator();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1AA8, &qword_22FFB3A80);
  sub_22FFB1508();
  sub_22FFB12E8();
  v0[23] = sub_22FFA7050(MEMORY[0x277D84F90]);
  EnsembleValidator.policy.getter(v2);
  v4 = swift_task_alloc();
  v0[58] = v4;
  *v4 = v0;
  v4[1] = sub_22FEB7C20;
  v5 = v0[54];
  v6 = v0[33];
  v7 = *MEMORY[0x277D85DE8];

  return sub_22FFA3330(v6, (v0 + 23));
}

uint64_t sub_22FEB7C20()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;
  *(*v1 + 472) = v0;

  sub_22FEAEA34(*(v2 + 432), &qword_27DAF1AA0, &qword_22FFB3A78);
  if (v0)
  {
    v5 = sub_22FEB90C8;
  }

  else
  {
    v5 = sub_22FEB7D90;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FEB7D90()
{
  v206 = v0;
  v1 = v0;
  v205 = *MEMORY[0x277D85DE8];
  v3 = (v0 + 184);
  v2 = *(v0 + 184);
  v4 = (v0 + 16);
  if (*(v2 + 16) && (v5 = sub_22FFA62AC(&type metadata for SEPAttestationPolicy, &protocol witness table for SEPAttestationPolicy, 0xD000000000000014, 0x800000022FFC9B50), (v6 & 1) != 0))
  {
    sub_22FEBF2A4(*(v2 + 56) + 32 * v5, v4);
  }

  else
  {
    *v4 = 0u;
    *(v0 + 32) = 0u;
  }

  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A88, &qword_22FFB3A60);
    if (swift_dynamicCast())
    {
      v197 = *(v0 + 64);
      v199 = *(v0 + 48);
      v7 = *(v0 + 472);
      goto LABEL_12;
    }
  }

  else
  {
    sub_22FEAEA34(v4, &qword_27DAF1A78, &unk_22FFB3A50);
  }

  v7 = *(v0 + 472);
  v8 = *(v0 + 264);
  v9 = *(v8 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  swift_beginAccess();
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  sub_22FEA5608(v10, v11);
  SEP.Attestation.init(from:)(v10, v11, &v201);
  if (v7)
  {
    v12 = *v3;
LABEL_14:

LABEL_15:
    v23 = v1[57];
    v24 = v7;
    v25 = sub_22FFB12D8();
    v26 = sub_22FFB1838();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = v25;
      v28 = v7;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = v28;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_22FE99000, v27, v26, "AttestationBundle validation failed: %@", v29, 0xCu);
      sub_22FEAEA34(v30, &qword_27DAF1680, &unk_22FFB4B10);
      MEMORY[0x23190EFF0](v30, -1, -1);
      v25 = v27;
      MEMORY[0x23190EFF0](v29, -1, -1);
    }

    v34 = v1[56];
    v33 = v1[57];
    v36 = v1[54];
    v35 = v1[55];
    v38 = v1[52];
    v37 = v1[53];
    v39 = v1[49];
    v188 = v1[46];
    v190 = v1[45];
    v191 = v1[42];
    v194 = v1[39];
    v198 = v1[38];
    v200 = v1[37];

    swift_willThrow();
    (*(v34 + 8))(v33, v35);

    v40 = v1[1];
    v41 = *MEMORY[0x277D85DE8];
    goto LABEL_18;
  }

  v197 = v202;
  v199 = v201;
LABEL_12:
  v13 = v3 + 1;
  v14 = v3 + 2;
  v15 = v1[57];
  v17 = v1[34];
  v16 = v1[35];
  v193 = v3;
  v18 = v1[33];
  v1[24] = 0;
  v1[25] = 0;
  v19 = swift_task_alloc();
  *(v19 + 16) = v13;
  *(v19 + 24) = v14;
  v20 = *(&v197 + 1);
  sub_22FED55F8(v197, *(&v197 + 1), sub_22FEBFA3C);

  v21 = v201;
  sub_22FF85468(v17, v16, v201, *(&v201 + 1), v18, v15);
  sub_22FEA56EC(v21, *(&v21 + 1));
  if (v7)
  {
    sub_22FEA55AC(v199, *(&v199 + 1));
    sub_22FEA55AC(v197, *(&v197 + 1));
    v22 = *v193;
    goto LABEL_14;
  }

  v192 = v197;
  v201 = v199;
  v202 = v197;
  SEP.Attestation.publicKeyData.getter(&v203);
  *&v197 = v204;
  if ((~v204 & 0x3000000000000000) == 0)
  {
    v43 = *v193;

    type metadata accessor for CloudAttestationError(0);
    sub_22FEBF300(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
    v44 = swift_allocError();
    *v45 = 0xD000000000000017;
    v45[1] = 0x800000022FFC9B70;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v7 = v44;
LABEL_23:
    sub_22FEA55AC(v199, *(&v199 + 1));
    sub_22FEA55AC(v192, v20);
    goto LABEL_15;
  }

  v46 = v193;
  v47 = v203;
  v48 = v1[57];
  sub_22FEA5600(v203, v204);
  v49 = sub_22FFB12D8();
  v50 = sub_22FFB1848();
  sub_22FEBF27C(v47, v197);
  v189 = v47;
  if (os_log_type_enabled(v49, v50))
  {
    v51 = v1[53];
    v183 = v1[51];
    v177 = v1[50];
    v52 = v1[49];
    v169 = v1[48];
    v53 = v1[47];
    buf = swift_slowAlloc();
    v186 = swift_slowAlloc();
    *&v201 = v186;
    *buf = 136315138;
    sub_22FEA5600(v47, v197);
    sub_22FEBF300(&qword_28148F198, MEMORY[0x277CC5540]);
    log = v49;
    sub_22FFB1388();
    sub_22FEA5600(v47, v197);
    sub_22FF9EA78(v47, v197 & 0xDFFFFFFFFFFFFFFFLL);
    sub_22FEBF27C(v47, v197);
    sub_22FFB1368();
    sub_22FEBF27C(v47, v197);
    v54 = v53;
    v46 = v193;
    (*(v169 + 8))(v52, v54);
    sub_22FEBF300(&qword_28148F1B0, MEMORY[0x277CC5290]);
    v55 = sub_22FFB1BA8();
    v57 = v56;
    (*(v183 + 8))(v51, v177);
    v58 = sub_22FF9E448(v55, v57, &v201);

    *(buf + 4) = v58;
    _os_log_impl(&dword_22FE99000, log, v50, "AttestationBundle passed validation for public key: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v186);
    MEMORY[0x23190EFF0](v186, -1, -1);
    MEMORY[0x23190EFF0](buf, -1, -1);
  }

  else
  {
  }

  v59 = v1[33];
  v60 = type metadata accessor for Proto_AttestationBundle(0);
  v61 = *(v59 + *(v60 + 20));
  v62 = (v61 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  swift_beginAccess();
  v63 = *v62;
  v64 = v62[1];
  v65 = v64 >> 62;
  if ((v64 >> 62) > 1)
  {
    if (v65 != 2 || *(v63 + 16) == *(v63 + 24))
    {
      goto LABEL_41;
    }
  }

  else if (v65)
  {
    if (v63 == v63 >> 32)
    {
      goto LABEL_41;
    }
  }

  else if ((v64 & 0xFF000000000000) == 0)
  {
    goto LABEL_41;
  }

  v46[3] = 0;
  v46[4] = 0;
  v66 = swift_task_alloc();
  *(v66 + 16) = v46 + 3;
  *(v66 + 24) = v46 + 4;
  sub_22FED55F8(v192, *(&v197 + 1), sub_22FEBFA3C);

  if (*(&v201 + 1) >> 60 == 15)
  {
    v67 = v1[57];
    v68 = v1[23];

    v69 = sub_22FFB12D8();
    v70 = sub_22FFB1838();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_22FE99000, v69, v70, "Bundle AppData is non-empty, but attestation contains no nonce", v71, 2u);
      MEMORY[0x23190EFF0](v71, -1, -1);
    }

    type metadata accessor for CloudAttestationError(0);
    sub_22FEBF300(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
    v72 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v7 = v72;
    sub_22FEBF27C(v189, v197);
    sub_22FEA55AC(v199, *(&v199 + 1));
    sub_22FEA55AC(v192, *(&v197 + 1));
    goto LABEL_15;
  }

  v174 = v60;
  v73 = v1[52];
  v187 = v1[51];
  v74 = v1[49];
  bufa = v1[50];
  v184 = v201;
  v75 = v1[47];
  v76 = v1[48];
  v160 = v1;
  v77 = *v62;
  v78 = v62[1];
  sub_22FEA5608(*v62, v78);
  sub_22FEBF300(&qword_28148F198, MEMORY[0x277CC5540]);
  sub_22FFB1388();
  sub_22FEA5608(v77, v78);
  sub_22FF9EA78(v77, v78);
  sub_22FEA55AC(v77, v78);
  sub_22FFB1368();
  sub_22FEA55AC(v77, v78);
  v79 = *(v76 + 8);
  v80 = v75;
  v81 = *(&v184 + 1);
  v79(v74, v80);
  v82 = v184;
  v83 = sub_22FECAD68(v184, *(&v184 + 1));
  v84 = *(v187 + 8);
  v84(v73, bufa);
  if ((v83 & 1) == 0)
  {
    v136 = v160[57];
    v137 = v160[37];
    v138 = v160[33];
    v139 = v160[23];

    sub_22FEBF40C(v138, v137, type metadata accessor for AttestationBundle);
    sub_22FEA5608(v184, *(&v184 + 1));
    v140 = sub_22FFB12D8();
    v141 = sub_22FFB1838();
    sub_22FEA56EC(v184, *(&v184 + 1));
    if (os_log_type_enabled(v140, v141))
    {
      bufc = v141;
      v142 = v160[52];
      v143 = v160[49];
      v171 = v160[50];
      v144 = v160[47];
      v145 = v160[37];
      v166 = v145;
      v168 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      *&v201 = v196;
      *v168 = 136446466;
      v146 = *(v145 + SHIDWORD(v174[2].isa));
      v176 = v140;
      v147 = (v146 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
      swift_beginAccess();
      v149 = *v147;
      v148 = v147[1];
      sub_22FEA5608(v149, v148);
      sub_22FFB1388();
      sub_22FEA5608(v149, v148);
      sub_22FF9EA78(v149, v148);
      sub_22FEA55AC(v149, v148);
      sub_22FFB1368();
      sub_22FEA55AC(v149, v148);
      v150 = v144;
      v81 = *(&v184 + 1);
      v82 = v184;
      v79(v143, v150);
      v151 = sub_22FF95DBC();
      v153 = v152;
      v84(v142, v171);
      sub_22FEBF83C(v166, type metadata accessor for AttestationBundle);
      v154 = sub_22FF9E448(v151, v153, &v201);

      *(v168 + 4) = v154;
      *(v168 + 12) = 2082;
      v155 = sub_22FEB0B54(v184, *(&v184 + 1));
      v157 = sub_22FF9E448(v155, v156, &v201);

      *(v168 + 14) = v157;
      _os_log_impl(&dword_22FE99000, v176, bufc, "Bundle AppData failed integrity check: (digest:%{public}s != nonce:%{public}s", v168, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190EFF0](v196, -1, -1);
      MEMORY[0x23190EFF0](v168, -1, -1);

      v1 = v160;
    }

    else
    {
      v1 = v160;
      v158 = v160[37];

      sub_22FEBF83C(v158, type metadata accessor for AttestationBundle);
    }

    v20 = *(&v197 + 1);
    type metadata accessor for CloudAttestationError(0);
    sub_22FEBF300(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
    v159 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v7 = v159;
    sub_22FEBF27C(v189, v197);
    sub_22FEA56EC(v82, v81);
    goto LABEL_23;
  }

  sub_22FEA56EC(v184, *(&v184 + 1));
  v1 = v160;
LABEL_41:
  v85 = v1[40];
  v86 = v1[41];
  v87 = v1[39];
  v88 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEBF3A4(v61 + v88, v87, &qword_27DAF1520, &qword_22FFB3A30);
  v89 = *(v86 + 48);
  if (v89(v87, 1, v85) == 1)
  {
    v90 = v1[39];
    v91 = v1[40];
    v92 = v1[42];
    sub_22FFB0ED8();
    if (v89(v90, 1, v91) != 1)
    {
      sub_22FEAEA34(v1[39], &qword_27DAF1520, &qword_22FFB3A30);
    }
  }

  else
  {
    (*(v1[41] + 32))(v1[42], v1[39], v1[40]);
  }

  v94 = v1[45];
  v93 = v1[46];
  v96 = v1[43];
  v95 = v1[44];
  v98 = v1[41];
  v97 = v1[42];
  v99 = v1[40];
  sub_22FFB0EB8();
  (*(v98 + 8))(v97, v99);
  sub_22FFB08E8();
  LOBYTE(v99) = sub_22FFB0888();
  v100 = *(v95 + 8);
  v100(v94, v96);
  v101 = v1[46];
  v102 = v1[43];
  v103 = v1[44];
  if ((v99 & 1) == 0)
  {
    v133 = *v193;

    type metadata accessor for CloudAttestationError(0);
    sub_22FEBF300(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
    v134 = swift_allocError();
    (*(v103 + 16))(v135, v101, v102);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v7 = v134;
    sub_22FEA55AC(v199, *(&v199 + 1));
    sub_22FEA55AC(v192, *(&v197 + 1));
    sub_22FEBF27C(v189, v197);
    v100(v101, v102);
    goto LABEL_15;
  }

  v104 = v1[38];
  v105 = v1[33];
  v107 = v1[30];
  v106 = v1[31];
  *v107 = v47;
  v107[1] = v197;
  (*(v103 + 16))(v106, v101, v102);
  sub_22FEBF40C(v105, v104, type metadata accessor for AttestationBundle);
  v1[28] = 0;
  v1[29] = 0;
  v108 = swift_task_alloc();
  *(v108 + 16) = v193 + 5;
  *(v108 + 24) = v193 + 6;
  sub_22FEBF290(v47, v197);
  sub_22FED55F8(v192, *(&v197 + 1), sub_22FEBFA54);

  v109 = 0;
  v110 = 0;
  if (v202 != 2)
  {
    v111 = v201;
    v112 = *(&v201 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_22FFB2D20;
    v114 = MEMORY[0x277D84D30];
    *(v113 + 56) = MEMORY[0x277D84CC0];
    *(v113 + 64) = v114;
    v115 = MEMORY[0x277D84D38];
    *(v113 + 32) = v111;
    v116 = MEMORY[0x277D84D90];
    *(v113 + 96) = v115;
    *(v113 + 104) = v116;
    *(v113 + 72) = v112;
    v109 = sub_22FFB14D8();
  }

  v163 = v110;
  v118 = v1[56];
  v117 = v1[57];
  v119 = v1[55];
  v167 = v1[54];
  v170 = v1[53];
  loga = v1[52];
  v175 = v1[49];
  v120 = v1[46];
  v161 = v109;
  v121 = v1[43];
  v178 = v1[45];
  bufb = v1[42];
  v185 = v1[39];
  v162 = v1[38];
  v195 = v1[37];
  v122 = v1[32];
  v203 = v1[23];
  v123 = sub_22FEE2580();
  v164 = v124;
  v165 = v123;
  *&v201 = v1[23];
  v125 = AttestationPolicyContext.releaseDigest.getter();
  v127 = v126;
  sub_22FEA55AC(v199, *(&v199 + 1));
  sub_22FEA55AC(v192, *(&v197 + 1));
  sub_22FEBF27C(v189, v197);
  v100(v120, v121);
  (*(v118 + 8))(v117, v119);

  v128 = type metadata accessor for Validated.AttestationBundle(0);
  *(v122 + v128[8]) = 0;
  sub_22FEBF7D4(v162, v122, type metadata accessor for AttestationBundle);
  v129 = (v122 + v128[5]);
  *v129 = v161;
  v129[1] = v163;
  v130 = (v122 + v128[6]);
  *v130 = v165;
  v130[1] = v164;
  v131 = (v122 + v128[7]);
  *v131 = v125;
  v131[1] = v127;

  v40 = v1[1];
  v132 = *MEMORY[0x277D85DE8];
LABEL_18:

  return v40();
}

uint64_t sub_22FEB90C8()
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = v0[23];

  v2 = v0[59];
  v3 = v0[57];
  v4 = v2;
  v5 = sub_22FFB12D8();
  v6 = sub_22FFB1838();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22FE99000, v5, v6, "AttestationBundle validation failed: %@", v7, 0xCu);
    sub_22FEAEA34(v8, &qword_27DAF1680, &unk_22FFB4B10);
    MEMORY[0x23190EFF0](v8, -1, -1);
    MEMORY[0x23190EFF0](v7, -1, -1);
  }

  v11 = v0[56];
  v12 = v0[57];
  v13 = v5;
  v15 = v0[54];
  v14 = v0[55];
  v17 = v0[52];
  v16 = v0[53];
  v18 = v0[49];
  v19 = v0[46];
  v23 = v0[45];
  v24 = v0[42];
  v25 = v0[39];
  v26 = v0[38];
  v27 = v0[37];

  swift_willThrow();
  (*(v11 + 8))(v12, v14);

  v20 = v0[1];
  v21 = *MEMORY[0x277D85DE8];

  return v20();
}

uint64_t sub_22FEB9308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = *MEMORY[0x277D85DE8];
  v7[35] = a6;
  v7[36] = v6;
  v7[33] = a4;
  v7[34] = a5;
  v7[31] = a2;
  v7[32] = a3;
  v7[30] = a1;
  v8 = *(*(type metadata accessor for AttestationBundle(0) - 8) + 64) + 15;
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30) - 8) + 64) + 15;
  v7[39] = swift_task_alloc();
  v10 = sub_22FFB0EE8();
  v7[40] = v10;
  v11 = *(v10 - 8);
  v7[41] = v11;
  v12 = *(v11 + 64) + 15;
  v7[42] = swift_task_alloc();
  v13 = sub_22FFB0908();
  v7[43] = v13;
  v14 = *(v13 - 8);
  v7[44] = v14;
  v15 = *(v14 + 64) + 15;
  v7[45] = swift_task_alloc();
  v7[46] = swift_task_alloc();
  v16 = sub_22FFB13C8();
  v7[47] = v16;
  v17 = *(v16 - 8);
  v7[48] = v17;
  v18 = *(v17 + 64) + 15;
  v7[49] = swift_task_alloc();
  v19 = sub_22FFB1398();
  v7[50] = v19;
  v20 = *(v19 - 8);
  v7[51] = v20;
  v21 = *(v20 + 64) + 15;
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A68, &qword_22FFB3A38) - 8) + 64) + 15;
  v7[54] = swift_task_alloc();
  v23 = sub_22FFB12F8();
  v7[55] = v23;
  v24 = *(v23 - 8);
  v7[56] = v24;
  v25 = *(v24 + 64) + 15;
  v7[57] = swift_task_alloc();
  v26 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22FEB9630, 0, 0);
}

uint64_t sub_22FEB9630()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[57];
  v2 = v0[54];
  v3 = v0[36];
  v0[22] = type metadata accessor for PCC.ComputeNodeValidator();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A70, &unk_22FFB3A40);
  sub_22FFB1508();
  sub_22FFB12E8();
  v0[23] = sub_22FFA7050(MEMORY[0x277D84F90]);
  PCC.ComputeNodeValidator.policy.getter(v2);
  v4 = swift_task_alloc();
  v0[58] = v4;
  *v4 = v0;
  v4[1] = sub_22FEB9794;
  v5 = v0[54];
  v6 = v0[33];
  v7 = *MEMORY[0x277D85DE8];

  return sub_22FFA3FB4(v6, (v0 + 23));
}

uint64_t sub_22FEB9794()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;
  *(*v1 + 472) = v0;

  sub_22FEAEA34(*(v2 + 432), &qword_27DAF1A68, &qword_22FFB3A38);
  if (v0)
  {
    v5 = sub_22FEBF9C8;
  }

  else
  {
    v5 = sub_22FEB9904;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FEB9904()
{
  v206 = v0;
  v1 = v0;
  v205 = *MEMORY[0x277D85DE8];
  v3 = (v0 + 184);
  v2 = *(v0 + 184);
  v4 = (v0 + 16);
  if (*(v2 + 16) && (v5 = sub_22FFA62AC(&type metadata for SEPAttestationPolicy, &protocol witness table for SEPAttestationPolicy, 0xD000000000000014, 0x800000022FFC9B50), (v6 & 1) != 0))
  {
    sub_22FEBF2A4(*(v2 + 56) + 32 * v5, v4);
  }

  else
  {
    *v4 = 0u;
    *(v0 + 32) = 0u;
  }

  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A88, &qword_22FFB3A60);
    if (swift_dynamicCast())
    {
      v197 = *(v0 + 64);
      v199 = *(v0 + 48);
      v7 = *(v0 + 472);
      goto LABEL_12;
    }
  }

  else
  {
    sub_22FEAEA34(v4, &qword_27DAF1A78, &unk_22FFB3A50);
  }

  v7 = *(v0 + 472);
  v8 = *(v0 + 264);
  v9 = *(v8 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  swift_beginAccess();
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  sub_22FEA5608(v10, v11);
  SEP.Attestation.init(from:)(v10, v11, &v201);
  if (v7)
  {
    v12 = *v3;
LABEL_14:

LABEL_15:
    v23 = v1[57];
    v24 = v7;
    v25 = sub_22FFB12D8();
    v26 = sub_22FFB1838();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = v25;
      v28 = v7;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = v28;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_22FE99000, v27, v26, "AttestationBundle validation failed: %@", v29, 0xCu);
      sub_22FEAEA34(v30, &qword_27DAF1680, &unk_22FFB4B10);
      MEMORY[0x23190EFF0](v30, -1, -1);
      v25 = v27;
      MEMORY[0x23190EFF0](v29, -1, -1);
    }

    v34 = v1[56];
    v33 = v1[57];
    v36 = v1[54];
    v35 = v1[55];
    v38 = v1[52];
    v37 = v1[53];
    v39 = v1[49];
    v188 = v1[46];
    v190 = v1[45];
    v191 = v1[42];
    v194 = v1[39];
    v198 = v1[38];
    v200 = v1[37];

    swift_willThrow();
    (*(v34 + 8))(v33, v35);

    v40 = v1[1];
    v41 = *MEMORY[0x277D85DE8];
    goto LABEL_18;
  }

  v197 = v202;
  v199 = v201;
LABEL_12:
  v13 = v3 + 1;
  v14 = v3 + 2;
  v15 = v1[57];
  v17 = v1[34];
  v16 = v1[35];
  v193 = v3;
  v18 = v1[33];
  v1[24] = 0;
  v1[25] = 0;
  v19 = swift_task_alloc();
  *(v19 + 16) = v13;
  *(v19 + 24) = v14;
  v20 = *(&v197 + 1);
  sub_22FED55F8(v197, *(&v197 + 1), sub_22FEBF260);

  v21 = v201;
  sub_22FF85468(v17, v16, v201, *(&v201 + 1), v18, v15);
  sub_22FEA56EC(v21, *(&v21 + 1));
  if (v7)
  {
    sub_22FEA55AC(v199, *(&v199 + 1));
    sub_22FEA55AC(v197, *(&v197 + 1));
    v22 = *v193;
    goto LABEL_14;
  }

  v192 = v197;
  v201 = v199;
  v202 = v197;
  SEP.Attestation.publicKeyData.getter(&v203);
  *&v197 = v204;
  if ((~v204 & 0x3000000000000000) == 0)
  {
    v43 = *v193;

    type metadata accessor for CloudAttestationError(0);
    sub_22FEBF300(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
    v44 = swift_allocError();
    *v45 = 0xD000000000000017;
    v45[1] = 0x800000022FFC9B70;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v7 = v44;
LABEL_23:
    sub_22FEA55AC(v199, *(&v199 + 1));
    sub_22FEA55AC(v192, v20);
    goto LABEL_15;
  }

  v46 = v193;
  v47 = v203;
  v48 = v1[57];
  sub_22FEA5600(v203, v204);
  v49 = sub_22FFB12D8();
  v50 = sub_22FFB1848();
  sub_22FEBF27C(v47, v197);
  v189 = v47;
  if (os_log_type_enabled(v49, v50))
  {
    v51 = v1[53];
    v183 = v1[51];
    v177 = v1[50];
    v52 = v1[49];
    v169 = v1[48];
    v53 = v1[47];
    buf = swift_slowAlloc();
    v186 = swift_slowAlloc();
    *&v201 = v186;
    *buf = 136315138;
    sub_22FEA5600(v47, v197);
    sub_22FEBF300(&qword_28148F198, MEMORY[0x277CC5540]);
    log = v49;
    sub_22FFB1388();
    sub_22FEA5600(v47, v197);
    sub_22FF9EA78(v47, v197 & 0xDFFFFFFFFFFFFFFFLL);
    sub_22FEBF27C(v47, v197);
    sub_22FFB1368();
    sub_22FEBF27C(v47, v197);
    v54 = v53;
    v46 = v193;
    (*(v169 + 8))(v52, v54);
    sub_22FEBF300(&qword_28148F1B0, MEMORY[0x277CC5290]);
    v55 = sub_22FFB1BA8();
    v57 = v56;
    (*(v183 + 8))(v51, v177);
    v58 = sub_22FF9E448(v55, v57, &v201);

    *(buf + 4) = v58;
    _os_log_impl(&dword_22FE99000, log, v50, "AttestationBundle passed validation for public key: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v186);
    MEMORY[0x23190EFF0](v186, -1, -1);
    MEMORY[0x23190EFF0](buf, -1, -1);
  }

  else
  {
  }

  v59 = v1[33];
  v60 = type metadata accessor for Proto_AttestationBundle(0);
  v61 = *(v59 + *(v60 + 20));
  v62 = (v61 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  swift_beginAccess();
  v63 = *v62;
  v64 = v62[1];
  v65 = v64 >> 62;
  if ((v64 >> 62) > 1)
  {
    if (v65 != 2 || *(v63 + 16) == *(v63 + 24))
    {
      goto LABEL_41;
    }
  }

  else if (v65)
  {
    if (v63 == v63 >> 32)
    {
      goto LABEL_41;
    }
  }

  else if ((v64 & 0xFF000000000000) == 0)
  {
    goto LABEL_41;
  }

  v46[3] = 0;
  v46[4] = 0;
  v66 = swift_task_alloc();
  *(v66 + 16) = v46 + 3;
  *(v66 + 24) = v46 + 4;
  sub_22FED55F8(v192, *(&v197 + 1), sub_22FEBFA3C);

  if (*(&v201 + 1) >> 60 == 15)
  {
    v67 = v1[57];
    v68 = v1[23];

    v69 = sub_22FFB12D8();
    v70 = sub_22FFB1838();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_22FE99000, v69, v70, "Bundle AppData is non-empty, but attestation contains no nonce", v71, 2u);
      MEMORY[0x23190EFF0](v71, -1, -1);
    }

    type metadata accessor for CloudAttestationError(0);
    sub_22FEBF300(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
    v72 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v7 = v72;
    sub_22FEBF27C(v189, v197);
    sub_22FEA55AC(v199, *(&v199 + 1));
    sub_22FEA55AC(v192, *(&v197 + 1));
    goto LABEL_15;
  }

  v174 = v60;
  v73 = v1[52];
  v187 = v1[51];
  v74 = v1[49];
  bufa = v1[50];
  v184 = v201;
  v75 = v1[47];
  v76 = v1[48];
  v160 = v1;
  v77 = *v62;
  v78 = v62[1];
  sub_22FEA5608(*v62, v78);
  sub_22FEBF300(&qword_28148F198, MEMORY[0x277CC5540]);
  sub_22FFB1388();
  sub_22FEA5608(v77, v78);
  sub_22FF9EA78(v77, v78);
  sub_22FEA55AC(v77, v78);
  sub_22FFB1368();
  sub_22FEA55AC(v77, v78);
  v79 = *(v76 + 8);
  v80 = v75;
  v81 = *(&v184 + 1);
  v79(v74, v80);
  v82 = v184;
  v83 = sub_22FECAD68(v184, *(&v184 + 1));
  v84 = *(v187 + 8);
  v84(v73, bufa);
  if ((v83 & 1) == 0)
  {
    v136 = v160[57];
    v137 = v160[37];
    v138 = v160[33];
    v139 = v160[23];

    sub_22FEBF40C(v138, v137, type metadata accessor for AttestationBundle);
    sub_22FEA5608(v184, *(&v184 + 1));
    v140 = sub_22FFB12D8();
    v141 = sub_22FFB1838();
    sub_22FEA56EC(v184, *(&v184 + 1));
    if (os_log_type_enabled(v140, v141))
    {
      bufc = v141;
      v142 = v160[52];
      v143 = v160[49];
      v171 = v160[50];
      v144 = v160[47];
      v145 = v160[37];
      v166 = v145;
      v168 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      *&v201 = v196;
      *v168 = 136446466;
      v146 = *(v145 + SHIDWORD(v174[2].isa));
      v176 = v140;
      v147 = (v146 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
      swift_beginAccess();
      v149 = *v147;
      v148 = v147[1];
      sub_22FEA5608(v149, v148);
      sub_22FFB1388();
      sub_22FEA5608(v149, v148);
      sub_22FF9EA78(v149, v148);
      sub_22FEA55AC(v149, v148);
      sub_22FFB1368();
      sub_22FEA55AC(v149, v148);
      v150 = v144;
      v81 = *(&v184 + 1);
      v82 = v184;
      v79(v143, v150);
      v151 = sub_22FF95DBC();
      v153 = v152;
      v84(v142, v171);
      sub_22FEBF83C(v166, type metadata accessor for AttestationBundle);
      v154 = sub_22FF9E448(v151, v153, &v201);

      *(v168 + 4) = v154;
      *(v168 + 12) = 2082;
      v155 = sub_22FEB0B54(v184, *(&v184 + 1));
      v157 = sub_22FF9E448(v155, v156, &v201);

      *(v168 + 14) = v157;
      _os_log_impl(&dword_22FE99000, v176, bufc, "Bundle AppData failed integrity check: (digest:%{public}s != nonce:%{public}s", v168, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190EFF0](v196, -1, -1);
      MEMORY[0x23190EFF0](v168, -1, -1);

      v1 = v160;
    }

    else
    {
      v1 = v160;
      v158 = v160[37];

      sub_22FEBF83C(v158, type metadata accessor for AttestationBundle);
    }

    v20 = *(&v197 + 1);
    type metadata accessor for CloudAttestationError(0);
    sub_22FEBF300(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
    v159 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v7 = v159;
    sub_22FEBF27C(v189, v197);
    sub_22FEA56EC(v82, v81);
    goto LABEL_23;
  }

  sub_22FEA56EC(v184, *(&v184 + 1));
  v1 = v160;
LABEL_41:
  v85 = v1[40];
  v86 = v1[41];
  v87 = v1[39];
  v88 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEBF3A4(v61 + v88, v87, &qword_27DAF1520, &qword_22FFB3A30);
  v89 = *(v86 + 48);
  if (v89(v87, 1, v85) == 1)
  {
    v90 = v1[39];
    v91 = v1[40];
    v92 = v1[42];
    sub_22FFB0ED8();
    if (v89(v90, 1, v91) != 1)
    {
      sub_22FEAEA34(v1[39], &qword_27DAF1520, &qword_22FFB3A30);
    }
  }

  else
  {
    (*(v1[41] + 32))(v1[42], v1[39], v1[40]);
  }

  v94 = v1[45];
  v93 = v1[46];
  v96 = v1[43];
  v95 = v1[44];
  v98 = v1[41];
  v97 = v1[42];
  v99 = v1[40];
  sub_22FFB0EB8();
  (*(v98 + 8))(v97, v99);
  sub_22FFB08E8();
  LOBYTE(v99) = sub_22FFB0888();
  v100 = *(v95 + 8);
  v100(v94, v96);
  v101 = v1[46];
  v102 = v1[43];
  v103 = v1[44];
  if ((v99 & 1) == 0)
  {
    v133 = *v193;

    type metadata accessor for CloudAttestationError(0);
    sub_22FEBF300(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
    v134 = swift_allocError();
    (*(v103 + 16))(v135, v101, v102);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v7 = v134;
    sub_22FEA55AC(v199, *(&v199 + 1));
    sub_22FEA55AC(v192, *(&v197 + 1));
    sub_22FEBF27C(v189, v197);
    v100(v101, v102);
    goto LABEL_15;
  }

  v104 = v1[38];
  v105 = v1[33];
  v107 = v1[30];
  v106 = v1[31];
  *v107 = v47;
  v107[1] = v197;
  (*(v103 + 16))(v106, v101, v102);
  sub_22FEBF40C(v105, v104, type metadata accessor for AttestationBundle);
  v1[28] = 0;
  v1[29] = 0;
  v108 = swift_task_alloc();
  *(v108 + 16) = v193 + 5;
  *(v108 + 24) = v193 + 6;
  sub_22FEBF290(v47, v197);
  sub_22FED55F8(v192, *(&v197 + 1), sub_22FEB341C);

  v109 = 0;
  v110 = 0;
  if (v202 != 2)
  {
    v111 = v201;
    v112 = *(&v201 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_22FFB2D20;
    v114 = MEMORY[0x277D84D30];
    *(v113 + 56) = MEMORY[0x277D84CC0];
    *(v113 + 64) = v114;
    v115 = MEMORY[0x277D84D38];
    *(v113 + 32) = v111;
    v116 = MEMORY[0x277D84D90];
    *(v113 + 96) = v115;
    *(v113 + 104) = v116;
    *(v113 + 72) = v112;
    v109 = sub_22FFB14D8();
  }

  v163 = v110;
  v118 = v1[56];
  v117 = v1[57];
  v119 = v1[55];
  v167 = v1[54];
  v170 = v1[53];
  loga = v1[52];
  v175 = v1[49];
  v120 = v1[46];
  v161 = v109;
  v121 = v1[43];
  v178 = v1[45];
  bufb = v1[42];
  v185 = v1[39];
  v162 = v1[38];
  v195 = v1[37];
  v122 = v1[32];
  v203 = v1[23];
  v123 = sub_22FEE2580();
  v164 = v124;
  v165 = v123;
  *&v201 = v1[23];
  v125 = AttestationPolicyContext.releaseDigest.getter();
  v127 = v126;
  sub_22FEA55AC(v199, *(&v199 + 1));
  sub_22FEA55AC(v192, *(&v197 + 1));
  sub_22FEBF27C(v189, v197);
  v100(v120, v121);
  (*(v118 + 8))(v117, v119);

  v128 = type metadata accessor for Validated.AttestationBundle(0);
  *(v122 + v128[8]) = 0;
  sub_22FEBF7D4(v162, v122, type metadata accessor for AttestationBundle);
  v129 = (v122 + v128[5]);
  *v129 = v161;
  v129[1] = v163;
  v130 = (v122 + v128[6]);
  *v130 = v165;
  v130[1] = v164;
  v131 = (v122 + v128[7]);
  *v131 = v125;
  v131[1] = v127;

  v40 = v1[1];
  v132 = *MEMORY[0x277D85DE8];
LABEL_18:

  return v40();
}

uint64_t sub_22FEBAC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FEAA0D4;

  return EnsembleValidator.validate(bundle:nonce:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22FEBAD18(uint64_t a1)
{
  v2 = sub_22FFB0958();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v26 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v26 - v11;
  v13 = *(a1 + 16);
  v14 = sub_22FEBF300(&qword_281491320, MEMORY[0x277CC95F0]);
  result = MEMORY[0x23190DF70](v13, v2, v14);
  v16 = 0;
  v27 = a1;
  v28 = result;
  v19 = *(a1 + 64);
  v18 = a1 + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v3 + 32;
  v26[3] = v3 + 16;
  v26[1] = v3 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v3 + 16))(v12, *(v27 + 48) + *(v3 + 72) * (v25 | (v24 << 6)), v2);
      (*(v3 + 32))(v7, v12, v2);
      sub_22FEBC51C(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return v28;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_22FEBAFF4(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_22FEBB004@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v126 = *MEMORY[0x277D85DE8];
  v5 = sub_22FFB06B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedDataAccessor];
  *&v122 = 0;
  v11 = [v10 copyPathForPersonalizedData:2 error:&v122];

  v12 = v122;
  if (!v11)
  {
    v19 = v122;
    v18 = sub_22FFB0648();

    swift_willThrow();
    goto LABEL_5;
  }

  v112 = a2;
  sub_22FFB1498();
  v14 = v13;
  v15 = v12;

  sub_22FFB0668();

  v16 = sub_22FFB06D8();
  v18 = v2;
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
LABEL_5:
    sub_22FEBF89C();
    swift_allocError();
    *v20 = v18;
    *(v20 + 8) = 0;
    *(v20 + 16) = 1;
    result = swift_willThrow();
LABEL_92:
    v92 = *MEMORY[0x277D85DE8];
    return result;
  }

  v22 = v16;
  v23 = v17;
  (*(v6 + 8))(v9, v5);
  v24 = sub_22FEA2AC0();
  if (qword_281490280 != -1)
  {
    swift_once();
  }

  v25 = sub_22FFB0958();
  v26 = __swift_project_value_buffer(v25, qword_281491418);
  v27 = MEMORY[0x277CC9318];
  v28 = MEMORY[0x277CC9300];
  if (!*(v24 + 16) || (v29 = sub_22FFA6214(v26), (v30 & 1) == 0))
  {

    v111 = 0;
    goto LABEL_68;
  }

  v31 = *(*(v24 + 56) + 8 * v29);

  v32 = *(v31 + 16);
  if (!v32)
  {
    v111 = MEMORY[0x277D84F90];
LABEL_67:

    v27 = MEMORY[0x277CC9318];
    v28 = MEMORY[0x277CC9300];
LABEL_68:
    *(&v123 + 1) = v27;
    *&v124 = v28;
    *&v122 = v22;
    *(&v122 + 1) = v23;
    v73 = __swift_project_boxed_opaque_existential_1(&v122, v27);
    v74 = *v73;
    v75 = v73[1];
    v76 = v75 >> 62;
    if ((v75 >> 62) > 1)
    {
      if (v76 != 2)
      {
        *(v121 + 6) = 0;
        *&v121[0] = 0;
        sub_22FEA5608(v22, v23);
        v77 = v121;
        goto LABEL_90;
      }

      v78 = *(v74 + 16);
      v79 = *(v74 + 24);
      sub_22FEA5608(v22, v23);
      v80 = sub_22FFB0588();
      if (v80)
      {
        v81 = sub_22FFB05B8();
        v74 = v78 - v81;
        if (__OFSUB__(v78, v81))
        {
          goto LABEL_99;
        }

        v80 += v74;
      }

      v82 = __OFSUB__(v79, v78);
      v83 = v79 - v78;
      if (!v82)
      {
        goto LABEL_82;
      }

      __break(1u);
    }

    else if (!v76)
    {
      *&v121[0] = *v73;
      WORD4(v121[0]) = v75;
      BYTE10(v121[0]) = BYTE2(v75);
      BYTE11(v121[0]) = BYTE3(v75);
      BYTE12(v121[0]) = BYTE4(v75);
      BYTE13(v121[0]) = BYTE5(v75);
      sub_22FEA5608(v22, v23);
      v77 = v121 + BYTE6(v75);
LABEL_90:
      sub_22FF9E9E4(v121, v77, &v118);
LABEL_91:
      v91 = v118;
      __swift_destroy_boxed_opaque_existential_1(&v122);
      v122 = v91;
      LOBYTE(v123) = 0;
      sub_22FEC1A38(1);
      sub_22FEA55AC(v91, *(&v91 + 1));
      v93 = __dst;
      v94 = MEMORY[0x277D84F90];
      if (v111)
      {
        v95 = v111;
      }

      else
      {
        v95 = MEMORY[0x277D84F90];
      }

      sub_22FEA5608(__dst, *(&__dst + 1));
      v96 = (2 * *(sub_22FEC623C(v93, *(&v93 + 1)) + 16)) | 1;
      v97 = v112;
      sub_22FFB0BF8();
      v98 = sub_22FF67DCC(v95);

      v99 = sub_22FEBE804(v98);

      v100 = type metadata accessor for Release();
      *(v97 + *(v100 + 20)) = v99;
      sub_22FEA55AC(v93, *(&v93 + 1));
      result = sub_22FEA55AC(v22, v23);
      *(v97 + *(v100 + 24)) = v94;
      goto LABEL_92;
    }

    v84 = v74;
    v85 = v74 >> 32;
    v83 = v85 - v84;
    if (v85 >= v84)
    {
      sub_22FEA5608(v22, v23);
      v80 = sub_22FFB0588();
      if (!v80)
      {
LABEL_82:
        v87 = sub_22FFB05A8();
        if (v87 >= v83)
        {
          v88 = v83;
        }

        else
        {
          v88 = v87;
        }

        v89 = &v80[v88];
        if (v80)
        {
          v90 = v89;
        }

        else
        {
          v90 = 0;
        }

        sub_22FF9E9E4(v80, v90, &v118);
        goto LABEL_91;
      }

      v86 = sub_22FFB05B8();
      if (!__OFSUB__(v84, v86))
      {
        v80 += v84 - v86;
        goto LABEL_82;
      }

LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
    }

    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v33 = 0;
  if (a1)
  {
    v34 = 1;
  }

  else
  {
    v34 = 3;
  }

  v110 = v34;
  v35 = v32 - 1;
  v111 = MEMORY[0x277D84F90];
  while (1)
  {
    v36 = (v33 << 6) | 0x20;
    v37 = v33;
    while (1)
    {
      if (v37 >= *(v31 + 16))
      {
        __break(1u);

        sub_22FEBF960(&v122);
        sub_22FEA55AC(v22, v23);
        sub_22FEA56EC(v108, v14);
        sub_22FEA55AC(v109, &v122);

        goto LABEL_92;
      }

      v38 = *(v31 + v36 + 48);
      v39 = *(v31 + v36);
      v40 = *(v31 + v36 + 16);
      v124 = *(v31 + v36 + 32);
      v125 = v38;
      v122 = v39;
      v123 = v40;
      v14 = *(&v40 + 1);
      if (*(&v40 + 1) >> 60 != 15 && v124 != 4)
      {
        break;
      }

      ++v37;
      v36 += 64;
      if (v32 == v37)
      {
        goto LABEL_67;
      }
    }

    v41 = v123;
    v119 = MEMORY[0x277CC9318];
    v120 = MEMORY[0x277CC9300];
    v118 = __PAIR128__(*(&v40 + 1), v123);
    v42 = __swift_project_boxed_opaque_existential_1(&v118, MEMORY[0x277CC9318]);
    v43 = *v42;
    *&v109 = v42[1];
    v44 = v109 >> 62;
    v107 = v35;
    v108 = v41;
    if ((v109 >> 62) <= 1)
    {
      break;
    }

    if (v44 != 2)
    {
      v48 = v43;
      sub_22FEBF8F0(v41, v14);
      sub_22FEBF8F0(v41, v14);
      sub_22FEBF904(&v122, &__dst);
      v49 = v109;
      goto LABEL_59;
    }

    v50 = *(v43 + 24);
    v105 = *(v43 + 16);
    v104 = v50;
    sub_22FEBF8F0(v41, v14);
    sub_22FEBF8F0(v41, v14);
    sub_22FEBF904(&v122, &__dst);
    v51 = sub_22FFB0588();
    if (v51)
    {
      v106 = v51;
      result = sub_22FFB05B8();
      v52 = v105;
      if (__OFSUB__(v105, result))
      {
        __break(1u);
        goto LABEL_104;
      }

      v106 = v106 + v105 - result;
    }

    else
    {
      v106 = 0;
      v52 = v105;
    }

    v55 = v104 - v52;
    if (__OFSUB__(v104, v52))
    {
      goto LABEL_102;
    }

    v56 = sub_22FFB05A8();
    if (v56 >= v55)
    {
      v57 = v55;
    }

    else
    {
      v57 = v56;
    }

    v49 = 0xC000000000000000;
    if (!v106 || !v57)
    {
      goto LABEL_54;
    }

    if (v57 < 15)
    {
      *(&__dst + 6) = 0;
      *&__dst = 0;
      BYTE14(__dst) = v57;
      memcpy(&__dst, v106, v57);
      v48 = __dst;
      v49 = v102 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
      v102 = v49;
      goto LABEL_59;
    }

    v58 = v57;
LABEL_52:
    v61 = sub_22FFB05D8();
    v62 = *(v61 + 48);
    v63 = *(v61 + 52);
    swift_allocObject();
    v64 = sub_22FFB0578();
    v65 = v64;
    if (v58 >= 0x7FFFFFFF)
    {
      sub_22FFB0738();
      v69 = swift_allocObject();
      *(v69 + 16) = 0;
      *(v69 + 24) = v58;
      v49 = v65 | 0x8000000000000000;
      v48 = v69;
    }

    else
    {
      v66 = v58 << 32;
      v49 = v64 | 0x4000000000000000;
      v48 = v66;
    }

LABEL_59:
    __swift_destroy_boxed_opaque_existential_1(&v118);
    *&v109 = v48;
    *&__dst = v48;
    *(&__dst + 1) = v49;
    v117 = v110;
    sub_22FEC1A38(1);
    sub_22FEBF960(&v122);
    sub_22FEA56EC(v108, v14);
    sub_22FEA55AC(v109, v49);
    v109 = v121[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v111 = sub_22FEC334C(0, *(v111 + 2) + 1, 1, v111);
    }

    v71 = *(v111 + 2);
    v70 = *(v111 + 3);
    if (v71 >= v70 >> 1)
    {
      v111 = sub_22FEC334C((v70 > 1), v71 + 1, 1, v111);
    }

    v33 = v37 + 1;
    v72 = v111;
    *(v111 + 2) = v71 + 1;
    *&v72[16 * v71 + 32] = v109;
    v35 = v107;
    if (v107 == v37)
    {
      goto LABEL_67;
    }
  }

  if (!v44)
  {
    __src = v43;
    v114 = v109;
    v115 = WORD2(v109);
    if (BYTE6(v109))
    {
      if (BYTE6(v109) <= 0xEuLL)
      {
        *(&__dst + 6) = 0;
        *&__dst = 0;
        BYTE14(__dst) = BYTE6(v109);
        memcpy(&__dst, &__src, BYTE6(v109));
        *&v109 = __dst;
        v67 = v41;
        v49 = v103 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
        sub_22FEBF8F0(v67, v14);
        v68 = v67;
        v48 = v109;
        sub_22FEBF8F0(v68, v14);
        sub_22FEBF904(&v122, &__dst);
        v103 = v49;
      }

      else
      {
        *&v109 = BYTE6(v109);
        v45 = sub_22FFB05D8();
        v46 = *(v45 + 48);
        v47 = *(v45 + 52);
        swift_allocObject();
        sub_22FEBF8F0(v41, v14);
        sub_22FEBF8F0(v41, v14);
        sub_22FEBF904(&v122, &__dst);
        v48 = v109 << 32;
        v49 = sub_22FFB0578() | 0x4000000000000000;
      }
    }

    else
    {
      sub_22FEBF8F0(v41, v14);
      sub_22FEBF8F0(v41, v14);
      sub_22FEBF904(&v122, &__dst);
      v48 = 0;
      v49 = 0xC000000000000000;
    }

    goto LABEL_59;
  }

  v106 = v43;
  v105 = (v43 >> 32) - v43;
  if (v43 >> 32 < v43)
  {
    goto LABEL_101;
  }

  v53 = v108;
  sub_22FEBF8F0(v108, v14);
  sub_22FEBF8F0(v53, v14);
  sub_22FEBF904(&v122, &__dst);
  v54 = sub_22FFB0588();
  if (!v54)
  {
    v106 = 0;
LABEL_45:
    v59 = sub_22FFB05A8();
    if (v59 >= v105)
    {
      v60 = v105;
    }

    else
    {
      v60 = v59;
    }

    v49 = 0xC000000000000000;
    if (!v106 || !v60)
    {
LABEL_54:
      v48 = 0;
      goto LABEL_59;
    }

    if (v60 < 15)
    {
      *(&__dst + 6) = 0;
      *&__dst = 0;
      BYTE14(__dst) = v60;
      memcpy(&__dst, v106, v60);
      v48 = __dst;
      v49 = v101 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
      v101 = v49;
      goto LABEL_59;
    }

    v58 = v60;
    goto LABEL_52;
  }

  v104 = v54;
  result = sub_22FFB05B8();
  if (!__OFSUB__(v106, result))
  {
    v106 = v106 + v104 - result;
    goto LABEL_45;
  }

LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_22FEBBDB4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22FFB0C28();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_22FEBF300(&qword_28148F1F0, MEMORY[0x277D6A8E8]);
  v36 = a2;
  v13 = sub_22FFB1428();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_22FEBF300(&qword_28148F1E8, MEMORY[0x277D6A8E8]);
      v23 = sub_22FFB1478();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_22FEBD114(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_22FEBC094(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_22FFB1CA8();
  sub_22FFB07F8();
  v8 = sub_22FFB1CF8();
  v9 = v6 + 56;
  v10 = -1 << *(v6 + 32);
  v11 = v8 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_62:
    v36 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v53 = *v43;
    sub_22FEA5608(a2, a3);
    sub_22FEBD3DC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v43 = *v53;
    *a1 = a2;
    a1[1] = a3;
    result = 1;
    goto LABEL_64;
  }

  v12 = ~v10;
  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 == 0xC000000000000000;
  }

  v14 = !v13;
  v51 = v14;
  v15 = a3 >> 62;
  v16 = __OFSUB__(HIDWORD(a2), a2);
  v48 = v16;
  v47 = a3;
  v49 = v12;
  v50 = BYTE6(a3);
  v45 = v6 + 56;
  v46 = v6;
  while (1)
  {
    v17 = (*(v6 + 48) + 16 * v11);
    v19 = *v17;
    v18 = v17[1];
    v20 = v18 >> 62;
    if (v18 >> 62 == 3)
    {
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18 == 0xC000000000000000;
      }

      v23 = !v21 || v15 < 3;
      if (((v23 | v51) & 1) == 0)
      {
        v39 = 0;
        v40 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v24 = 0;
      if (v15 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_36;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_66;
      }

      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v20)
    {
      LODWORD(v24) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_67;
      }

      v24 = v24;
      if (v15 <= 1)
      {
LABEL_33:
        v28 = v50;
        if (v15)
        {
          v28 = HIDWORD(a2) - a2;
          if (v48)
          {
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v24 = BYTE6(v18);
      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v15 != 2)
    {
      if (!v24)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v30 = *(a2 + 16);
    v29 = *(a2 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_65;
    }

LABEL_39:
    if (v24 != v28)
    {
      goto LABEL_13;
    }

    if (v24 < 1)
    {
      goto LABEL_61;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        *v53 = v19;
        *&v53[8] = v18;
        v53[10] = BYTE2(v18);
        v53[11] = BYTE3(v18);
        v53[12] = BYTE4(v18);
        v53[13] = BYTE5(v18);
        sub_22FEA5608(v19, v18);
        v12 = v49;
        goto LABEL_60;
      }

      if (v19 >> 32 < v19)
      {
        goto LABEL_68;
      }

      sub_22FEA5608(v19, v18);
      v33 = sub_22FFB0588();
      if (v33)
      {
        v35 = sub_22FFB05B8();
        if (__OFSUB__(v19, v35))
        {
          goto LABEL_71;
        }

        v33 += v19 - v35;
      }

      goto LABEL_57;
    }

    if (v20 != 2)
    {
      break;
    }

    v32 = *(v19 + 16);
    v31 = *(v19 + 24);
    sub_22FEA5608(v19, v18);
    v33 = sub_22FFB0588();
    if (v33)
    {
      v34 = sub_22FFB05B8();
      if (__OFSUB__(v32, v34))
      {
        goto LABEL_70;
      }

      v33 += v32 - v34;
    }

    if (__OFSUB__(v31, v32))
    {
      goto LABEL_69;
    }

LABEL_57:
    sub_22FFB05A8();
    a3 = v47;
    sub_22FEEBB68(v33, a2, v47, v53);
    sub_22FEA55AC(v19, v18);
    v9 = v45;
    v6 = v46;
    v12 = v49;
    if (v53[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v53[6] = 0;
  *v53 = 0;
  sub_22FEA5608(v19, v18);
LABEL_60:
  sub_22FEEBB68(v53, a2, a3, &v52);
  sub_22FEA55AC(v19, v18);
  if (!v52)
  {
    goto LABEL_13;
  }

LABEL_61:
  v39 = a2;
  v40 = a3;
LABEL_63:
  sub_22FEA55AC(v39, v40);
  v41 = *(*(v6 + 48) + 16 * v11);
  *a1 = v41;
  sub_22FEA5608(v41, *(&v41 + 1));
  result = 0;
LABEL_64:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FEBC51C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22FFB0958();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_22FEBF300(&qword_281491320, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_22FFB1428();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_22FEBF300(&qword_281491318, MEMORY[0x277CC95F0]);
      v23 = sub_22FFB1478();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_22FEBD854(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_22FEBC7FC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_22FFB0C28();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A98, &qword_22FFB3A70);
  result = sub_22FFB1988();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_22FEBF300(&qword_28148F1F0, MEMORY[0x277D6A8E8]);
      result = sub_22FFB1428();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_22FEBCB58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1AB0, &qword_22FFB3A88);
  result = sub_22FFB1988();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_22FFB1CA8();
      sub_22FFB07F8();
      result = sub_22FFB1CF8();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22FEBCDB8(uint64_t a1)
{
  v2 = v1;
  v41 = sub_22FFB0958();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A90, &qword_22FFB3A68);
  result = sub_22FFB1988();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_22FEBF300(&qword_281491320, MEMORY[0x277CC95F0]);
      result = sub_22FFB1428();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_22FEBD114(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_22FFB0C28();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22FEBC7FC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_22FEBDC78(MEMORY[0x277D6A8E8], &qword_27DAF1A98, &qword_22FFB3A70);
      goto LABEL_12;
    }

    sub_22FEBDEB0(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_22FEBF300(&qword_28148F1F0, MEMORY[0x277D6A8E8]);
  v15 = sub_22FFB1428();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_22FEBF300(&qword_28148F1E8, MEMORY[0x277D6A8E8]);
      v23 = sub_22FFB1478();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22FFB1C08();
  __break(1u);
  return result;
}

uint64_t sub_22FEBD3DC(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v53 = *MEMORY[0x277D85DE8];
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_22FEBCB58(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_22FEBDB1C();
        goto LABEL_68;
      }

      sub_22FEBE1CC(v8 + 1);
    }

    v10 = *v4;
    v11 = *(*v4 + 40);
    sub_22FFB1CA8();
    sub_22FFB07F8();
    result = sub_22FFB1CF8();
    v12 = v10 + 56;
    v13 = -1 << *(v10 + 32);
    a3 = result & ~v13;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      if (v7)
      {
        v15 = 0;
      }

      else
      {
        v15 = a2 == 0xC000000000000000;
      }

      v16 = !v15;
      v50 = v16;
      v17 = a2 >> 62;
      v18 = __OFSUB__(HIDWORD(v7), v7);
      v47 = v18;
      v46 = HIDWORD(v7) - v7;
      v48 = v14;
      v49 = BYTE6(a2);
      v43 = v7;
      v44 = a2;
      while (1)
      {
        v19 = (*(v10 + 48) + 16 * a3);
        v21 = *v19;
        v20 = v19[1];
        v22 = v20 >> 62;
        if (v20 >> 62 == 3)
        {
          break;
        }

        if (v22 > 1)
        {
          if (v22 != 2)
          {
            goto LABEL_32;
          }

          v32 = *(v21 + 16);
          v31 = *(v21 + 24);
          v30 = __OFSUB__(v31, v32);
          v26 = v31 - v32;
          if (v30)
          {
            goto LABEL_73;
          }
        }

        else if (v22)
        {
          LODWORD(v26) = HIDWORD(v21) - v21;
          if (__OFSUB__(HIDWORD(v21), v21))
          {
            goto LABEL_74;
          }

          v26 = v26;
        }

        else
        {
          v26 = BYTE6(v20);
        }

LABEL_33:
        if (v17 > 1)
        {
          if (v17 != 2)
          {
            if (!v26)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v29 = *(v7 + 16);
          v28 = *(v7 + 24);
          v30 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (v30)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v27 = v49;
          if (v17)
          {
            v27 = v46;
            if (v47)
            {
              goto LABEL_71;
            }
          }
        }

        if (v26 == v27)
        {
          if (v26 < 1)
          {
            goto LABEL_67;
          }

          if (v22 > 1)
          {
            if (v22 == 2)
            {
              v34 = *(v21 + 16);
              v33 = *(v21 + 24);
              sub_22FEA5608(v21, v20);
              v35 = sub_22FFB0588();
              if (v35)
              {
                v36 = sub_22FFB05B8();
                if (__OFSUB__(v34, v36))
                {
                  goto LABEL_77;
                }

                v35 += v34 - v36;
              }

              if (__OFSUB__(v33, v34))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v52[6] = 0;
            *v52 = 0;
            sub_22FEA5608(v21, v20);
          }

          else
          {
            if (v22)
            {
              if (v21 >> 32 < v21)
              {
                goto LABEL_75;
              }

              sub_22FEA5608(v21, v20);
              v35 = sub_22FFB0588();
              if (v35)
              {
                v37 = sub_22FFB05B8();
                if (__OFSUB__(v21, v37))
                {
                  goto LABEL_78;
                }

                v35 += v21 - v37;
              }

LABEL_63:
              sub_22FFB05A8();
              v7 = v43;
              a2 = v44;
              sub_22FEEBB68(v35, v43, v44, v52);
              result = sub_22FEA55AC(v21, v20);
              v12 = v10 + 56;
              v14 = v48;
              if (v52[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v52 = v21;
            *&v52[8] = v20;
            v52[10] = BYTE2(v20);
            v52[11] = BYTE3(v20);
            v52[12] = BYTE4(v20);
            v52[13] = BYTE5(v20);
            sub_22FEA5608(v21, v20);
            v14 = v48;
          }

          sub_22FEEBB68(v52, v7, a2, &v51);
          result = sub_22FEA55AC(v21, v20);
          if (v51)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v14;
        if (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 == 0xC000000000000000;
      }

      v25 = !v23 || v17 < 3;
      if (((v25 | v50) & 1) == 0)
      {
LABEL_67:
        result = sub_22FFB1C08();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v26 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v38 = *v45;
  *(*v45 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v39 = (*(v38 + 48) + 16 * a3);
  *v39 = v7;
  v39[1] = a2;
  v40 = *(v38 + 16);
  v30 = __OFADD__(v40, 1);
  v41 = v40 + 1;
  if (v30)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  *(v38 + 16) = v41;
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FEBD854(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_22FFB0958();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22FEBCDB8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_22FEBDC78(MEMORY[0x277CC95F0], &qword_27DAF1A90, &qword_22FFB3A68);
      goto LABEL_12;
    }

    sub_22FEBE408(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_22FEBF300(&qword_281491320, MEMORY[0x277CC95F0]);
  v15 = sub_22FFB1428();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_22FEBF300(&qword_281491318, MEMORY[0x277CC95F0]);
      v23 = sub_22FFB1478();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22FFB1C08();
  __break(1u);
  return result;
}

void *sub_22FEBDB1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1AB0, &qword_22FFB3A88);
  v2 = *v0;
  v3 = sub_22FFB1978();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_22FEA5608(v18, *(&v18 + 1));
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_22FEBDC78(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_22FFB1978();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

uint64_t sub_22FEBDEB0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_22FFB0C28();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A98, &qword_22FFB3A70);
  v10 = sub_22FFB1988();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
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
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_22FEBF300(&qword_28148F1F0, MEMORY[0x277D6A8E8]);
      result = sub_22FFB1428();
      v25 = -1 << *(v10 + 32);
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

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_22FEBE1CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1AB0, &qword_22FFB3A88);
  result = sub_22FFB1988();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_22FFB1CA8();
      sub_22FEA5608(v19, v20);
      sub_22FFB07F8();
      result = sub_22FFB1CF8();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22FEBE408(uint64_t a1)
{
  v2 = v1;
  v37 = sub_22FFB0958();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A90, &qword_22FFB3A68);
  v10 = sub_22FFB1988();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
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
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_22FEBF300(&qword_281491320, MEMORY[0x277CC95F0]);
      result = sub_22FFB1428();
      v25 = -1 << *(v10 + 32);
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

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_22FEBE724(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22FEBF348();
  result = MEMORY[0x23190DF70](v2, MEMORY[0x277CC9318], v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      sub_22FEA5608(v7, *v5);
      sub_22FEBC094(v8, v7, v6);
      sub_22FEA55AC(v8[0], v8[1]);
      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
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

uint64_t sub_22FEBE804(uint64_t a1)
{
  v2 = sub_22FFB0C28();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_22FEBF300(&qword_28148F1F0, MEMORY[0x277D6A8E8]);
  result = MEMORY[0x23190DF70](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_22FEBBDB4(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_22FEBE9A0(uint64_t a1)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - v5;
  v7 = type metadata accessor for X509Policy();
  v8 = *(*(v7 - 1) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  if (qword_281490B50 != -1)
  {
    swift_once();
  }

  v26 = qword_2814916A0;
  v14 = sub_22FFB0908();
  v15 = *(*(v14 - 8) + 56);
  v15(v6, 1, 1, v14);
  v16 = MEMORY[0x277D84F90];
  *(v13 + 1) = MEMORY[0x277D84F90];
  v17 = v7[6];
  v15(&v13[v17], 1, 1, v14);
  v18 = &v13[v7[7]];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v13[v7[8]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = v27;
  sub_22FEBF3A4(v6, v27, &qword_27DAF1510, &qword_22FFB3800);
  *(v11 + 1) = v16;
  v21 = v7[6];
  v15(&v11[v21], 1, 1, v14);
  v22 = &v11[v7[7]];
  *v22 = 0;
  v22[8] = 1;
  v23 = &v11[v7[8]];
  *v11 = 1;

  sub_22FED2C04(v24);
  sub_22FEAEA34(v6, &qword_27DAF1510, &qword_22FFB3800);
  sub_22FEB3E04(v20, &v11[v21]);
  *v23 = 0;
  *(v23 + 1) = 0;
  *v22 = 0;
  v22[8] = 1;
  sub_22FEAEA34(&v13[v17], &qword_27DAF1510, &qword_22FFB3800);
  sub_22FEBF7D4(v11, v13, type metadata accessor for X509Policy);
  sub_22FED22EC(v28);
  sub_22FEBF83C(v13, type metadata accessor for X509Policy);
  return 1;
}

void sub_22FEBED14()
{
  type metadata accessor for Release();
  if (v0 <= 0x3F)
  {
    sub_22FEBEEA8();
    if (v1 <= 0x3F)
    {
      sub_22FEBEEF8();
      if (v2 <= 0x3F)
      {
        sub_22FEBEF5C();
        if (v3 <= 0x3F)
        {
          sub_22FEBEFAC();
          if (v4 <= 0x3F)
          {
            sub_22FEBF010(319, &qword_28148F120, type metadata accessor for SecCertificate, MEMORY[0x277D83940]);
            if (v5 <= 0x3F)
            {
              sub_22FEBF010(319, &qword_281491328, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22FEBEEA8()
{
  result = qword_27DAF1A48;
  if (!qword_27DAF1A48)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27DAF1A48);
  }

  return result;
}

unint64_t sub_22FEBEEF8()
{
  result = qword_27DAF1A50;
  if (!qword_27DAF1A50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DAF1A50);
  }

  return result;
}

void sub_22FEBEF5C()
{
  if (!qword_28148F168)
  {
    v0 = sub_22FFB1888();
    if (!v1)
    {
      atomic_store(v0, &qword_28148F168);
    }
  }
}

void sub_22FEBEFAC()
{
  if (!qword_27DAF1A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF1A60, &qword_22FFB3928);
    v0 = sub_22FFB1888();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAF1A58);
    }
  }
}

void sub_22FEBF010(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_16CloudAttestation17EnsembleValidatorV5ErrorO013IntrospectionE0O(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_16CloudAttestation17EnsembleValidatorV5ErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 12;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22FEBF0B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF2 && *(a1 + 8))
  {
    return (*a1 + 2147483635);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 11;
  if (v4 < 0xD)
  {
    v5 = 0;
  }

  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FEBF114(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF3)
  {
    *result = 0;
    *result = a2 - 2147483635;
    if (a3 >= 0x7FFFFFF3)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF3)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 12;
    }
  }

  return result;
}

void *sub_22FEBF164(void *result, unsigned int a2)
{
  if (a2 >= 0x7FFFFFF4)
  {
    *result = 0;
    *result = a2 - 2147483636;
  }

  else if (a2)
  {
    *result = a2 + 11;
  }

  return result;
}

uint64_t sub_22FEBF1A8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF3 && *(a1 + 8))
  {
    return (*a1 + 2147483636);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 11;
  if (v4 >= 0xD)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FEBF200(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF4)
  {
    *result = 0;
    *result = a2 - 2147483636;
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 11;
    }
  }

  return result;
}

uint64_t sub_22FEBF27C(uint64_t a1, uint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    return sub_22FEA55A4(a1, a2);
  }

  return a1;
}

uint64_t sub_22FEBF290(uint64_t a1, uint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    return sub_22FEA5600(a1, a2);
  }

  return a1;
}

uint64_t sub_22FEBF2A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22FEBF300(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22FEBF348()
{
  result = qword_281491350;
  if (!qword_281491350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281491350);
  }

  return result;
}

uint64_t sub_22FEBF3A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22FEBF40C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
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

uint64_t sub_22FEBF4E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_22FEBF54C()
{
  result = qword_27DAF1AF8;
  if (!qword_27DAF1AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF1AD8, &qword_22FFB3AB0);
    sub_22FEBF620(&qword_27DAF1B00);
    sub_22FEBF620(&qword_27DAF1B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1AF8);
  }

  return result;
}

uint64_t sub_22FEBF620(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF1AE0, &qword_22FFB3AB8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FEBF68C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_22FEBF708()
{
  result = qword_27DAF1B38;
  if (!qword_27DAF1B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF1B20, &qword_22FFB3AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1B38);
  }

  return result;
}

uint64_t sub_22FEBF78C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_22FEBF7D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FEBF83C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22FEBF89C()
{
  result = qword_27DAF1B48;
  if (!qword_27DAF1B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1B48);
  }

  return result;
}

uint64_t sub_22FEBF8F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22FEA5608(a1, a2);
  }

  return a1;
}

uint64_t sub_22FEBF9C8()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_22FEB90C8();
}

uint64_t sub_22FEBFA6C()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB059B8);
  __swift_project_value_buffer(v0, qword_27DB059B8);
  return sub_22FFB12E8();
}

double GenericAttestor.init()@<D0>(uint64_t a1@<X8>)
{
  v2 = SecKeyCopySystemKey();
  *(a1 + 24) = &type metadata for SEP.PhysicalDevice;
  *(a1 + 32) = &protocol witness table for SEP.PhysicalDevice;
  *(a1 + 64) = &type metadata for GenericAttestor.AssetProvider;
  *(a1 + 72) = &off_2844D9CB0;
  result = -30564.724;
  *(a1 + 80) = xmmword_22FFB3760;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = v2;
  return result;
}

uint64_t GenericAttestor.defaultKeyDuration.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t GenericAttestor.defaultKeyDuration.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2;
  return result;
}

void GenericAttestor.enforcementOptions.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 97);
  *a1 = *(v1 + 96);
  a1[1] = v2;
}

_BYTE *GenericAttestor.enforcementOptions.setter(_BYTE *result)
{
  v2 = result[1];
  *(v1 + 96) = *result;
  *(v1 + 97) = v2;
  return result;
}

uint64_t GenericAttestor.sealedHashes.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 104);

  *(v1 + 104) = v2;
  return result;
}

uint64_t GenericAttestor.attestingKey.getter()
{
  v2 = *(v0 + 112);
  if (v2)
  {
    v3 = v2;
    Duplicate = SecKeyCreateDuplicate();
    if (Duplicate)
    {
      v1 = Duplicate;
    }

    else
    {
      v1 = type metadata accessor for CloudAttestationError(0);
      sub_22FEC1144(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for CloudAttestationError(0);
    sub_22FEC1144(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_22FEBFDA4()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

void sub_22FEBFE04(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 97);
  *a1 = *(v1 + 96);
  a1[1] = v2;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_22FEBFE50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_22FEBFE98(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22FEBFF14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FEABC3C;

  return sub_22FEC0A9C();
}

uint64_t sub_22FEBFFB4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_22FFB16E8();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_22FEC0050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B80, &unk_22FFB3BA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = aBlock - v8;
  sub_22FEC0240(a3);
  (*(v6 + 16))(v9, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  v12 = sub_22FFB1408();
  aBlock[4] = sub_22FEC11F8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22FEBFFB4;
  aBlock[3] = &block_descriptor_1;
  v13 = _Block_copy(aBlock);
  MAEIssueDCRTWithCompletion();

  _Block_release(v13);
}

uint64_t sub_22FEC0240(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B90, &qword_22FFB3BB0);
    v2 = sub_22FFB1AE8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_22FEBF2A4(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_22FEA2968(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_22FEA2968(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_22FEA2968(v32, v33);
    v17 = *(v2 + 40);
    result = sub_22FFB1968();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_22FEA2968(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

char *sub_22FEC0508(uint64_t a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_27DAF1250 != -1)
    {
      swift_once();
    }

    v4 = sub_22FFB12F8();
    __swift_project_value_buffer(v4, qword_27DB059B8);
    v5 = a2;
    v6 = sub_22FFB12D8();
    v7 = sub_22FFB1838();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_22FE99000, v6, v7, "failed to issue DCRT: %@", v8, 0xCu);
      sub_22FEAA1C8(v9);
      MEMORY[0x23190EFF0](v9, -1, -1);
      MEMORY[0x23190EFF0](v8, -1, -1);
    }

LABEL_23:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B80, &unk_22FFB3BA0);
    return sub_22FFB1788();
  }

  if (!a1 || (v12 = sub_22FEC0928(a1)) == 0)
  {
    if (qword_27DAF1250 != -1)
    {
      swift_once();
    }

    v25 = sub_22FFB12F8();
    __swift_project_value_buffer(v25, qword_27DB059B8);
    v26 = sub_22FFB12D8();
    v27 = sub_22FFB1838();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_22FE99000, v26, v27, "dcrt chain not castable to [SecCertificate]", v28, 2u);
      MEMORY[0x23190EFF0](v28, -1, -1);
    }

    sub_22FEC129C();
    swift_allocError();
    *v29 = 1;
    goto LABEL_23;
  }

  v13 = v12;
  if (!(v12 >> 62))
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_11;
    }

LABEL_30:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B80, &unk_22FFB3BA0);
    return sub_22FFB1798();
  }

  v14 = sub_22FFB1AB8();
  if (!v14)
  {
    goto LABEL_30;
  }

LABEL_11:
  v39 = MEMORY[0x277D84F90];
  result = sub_22FECD9FC(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = 0;
      do
      {
        v17 = MEMORY[0x23190E180](v16, v13);
        v18 = SecCertificateCopyData(v17);
        v19 = sub_22FFB07E8();
        v21 = v20;
        swift_unknownObjectRelease();

        v23 = *(v39 + 16);
        v22 = *(v39 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_22FECD9FC((v22 > 1), v23 + 1, 1);
        }

        ++v16;
        *(v39 + 16) = v23 + 1;
        v24 = v39 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
      }

      while (v14 != v16);
    }

    else
    {
      v30 = (v13 + 32);
      do
      {
        v31 = *v30;
        v32 = SecCertificateCopyData(v31);
        v33 = sub_22FFB07E8();
        v35 = v34;

        v37 = *(v39 + 16);
        v36 = *(v39 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_22FECD9FC((v36 > 1), v37 + 1, 1);
        }

        *(v39 + 16) = v37 + 1;
        v38 = v39 + 16 * v37;
        *(v38 + 32) = v33;
        *(v38 + 40) = v35;
        ++v30;
        --v14;
      }

      while (v14);
    }

    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_22FEC0928(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_22FFB1A38();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_22FEBF2A4(i, v6);
    type metadata accessor for SecCertificate(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_22FFB1A08();
    v4 = *(v7 + 16);
    sub_22FFB1A48();
    sub_22FFB1A58();
    sub_22FFB1A18();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

void (*sub_22FEC0A14(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23190E180](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_22FEC0A94;
  }

  __break(1u);
  return result;
}

uint64_t sub_22FEC0A9C()
{
  v1 = sub_22FFB1868();
  v0[20] = v1;
  v2 = *(v1 - 8);
  v0[21] = v2;
  v3 = *(v2 + 64) + 15;
  v0[22] = swift_task_alloc();
  v4 = sub_22FFB1858();
  v0[23] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v0[24] = swift_task_alloc();
  v6 = *(*(sub_22FFB1348() - 8) + 64) + 15;
  v0[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEC0BB4, 0, 0);
}

uint64_t sub_22FEC0BB4()
{
  v1 = v0[25];
  v2 = v0[23];
  v16 = v0[24];
  v17 = v0[22];
  v3 = v0[21];
  v18 = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B50, &unk_22FFB3B80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FFB2D20;
  v5 = *MEMORY[0x277D288D8];
  *(inited + 32) = sub_22FFB1498();
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = v6;
  *(inited + 48) = 60;
  v7 = *MEMORY[0x277D288D0];
  *(inited + 80) = sub_22FFB1498();
  *(inited + 88) = v8;
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = 0;
  v9 = sub_22FFA6C20(inited);
  v0[26] = v9;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B58, &qword_22FFC02B0);
  swift_arrayDestroy();
  sub_22FEC10F8();
  sub_22FFB1338();
  v0[18] = MEMORY[0x277D84F90];
  sub_22FEC1144(&qword_27DAF1B68, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B70, &unk_22FFB3B90);
  sub_22FEC118C();
  sub_22FFB1938();
  (*(v3 + 104))(v17, *MEMORY[0x277D85260], v18);
  v10 = sub_22FFB1878();
  v0[27] = v10;
  v11 = swift_task_alloc();
  v0[28] = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v12 = *(MEMORY[0x277D85A40] + 4);
  v13 = swift_task_alloc();
  v0[29] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A60, &qword_22FFB3928);
  *v13 = v0;
  v13[1] = sub_22FEC0E94;

  return MEMORY[0x2822008A0](v0 + 19, 0, 0, 0x5243446863746566, 0xEB00000000292854, sub_22FEC11F0, v11, v14);
}

uint64_t sub_22FEC0E94()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v8 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = sub_22FEC1050;
  }

  else
  {
    v5 = *(v2 + 224);
    v6 = *(v2 + 208);

    v4 = sub_22FEC0FBC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FEC0FBC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);

  v4 = *(v0 + 152);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_22FEC1050()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 192);
  v5 = *(v0 + 176);

  v6 = *(v0 + 8);
  v7 = *(v0 + 240);

  return v6();
}

unint64_t sub_22FEC10F8()
{
  result = qword_27DAF1B60;
  if (!qword_27DAF1B60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DAF1B60);
  }

  return result;
}

uint64_t sub_22FEC1144(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22FEC118C()
{
  result = qword_27DAF1B78;
  if (!qword_27DAF1B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF1B70, &unk_22FFB3B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1B78);
  }

  return result;
}

char *sub_22FEC11F8(uint64_t a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B80, &unk_22FFB3BA0) - 8) + 80);

  return sub_22FEC0508(a1, a2);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22FEC129C()
{
  result = qword_27DAF1B88;
  if (!qword_27DAF1B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1B88);
  }

  return result;
}

unint64_t sub_22FEC1304()
{
  result = qword_27DAF1B98[0];
  if (!qword_27DAF1B98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DAF1B98);
  }

  return result;
}

uint64_t sub_22FEC13F8(uint64_t a1)
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

uint64_t sub_22FEC1468(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
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

char *sub_22FEC15A8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
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

uint64_t Image4Manifest.data.getter()
{
  v1 = *v0;
  sub_22FEA5608(*v0, *(v0 + 8));
  return v1;
}

uint64_t Image4Manifest.init<A>(data:kind:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = sub_22FEC4190(a1, a3, *(*(*(*(a4 + 8) + 8) + 8) + 8));
  v11 = v10;
  result = (*(*(a3 - 8) + 8))(a1, a3);
  *a5 = v9;
  *(a5 + 8) = v11;
  *(a5 + 16) = v8;
  return result;
}

uint64_t Image4Manifest.init(file:kind:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = sub_22FFB06D8();
  if (v3)
  {
    v9 = sub_22FFB06B8();
    return (*(*(v9 - 8) + 8))(a1, v9);
  }

  else
  {
    v11 = v7;
    v12 = v8;
    v13 = sub_22FFB06B8();
    result = (*(*(v13 - 8) + 8))(a1, v13);
    *a3 = v11;
    *(a3 + 8) = v12;
    *(a3 + 16) = v6;
  }

  return result;
}

uint64_t Image4Manifest.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_22FFB1CA8();
  MEMORY[0x23190E460](v1);
  return sub_22FFB1CF8();
}

uint64_t Image4Manifest.canonicalize(evaluateTrust:)(char a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  return sub_22FEC1A38(a1);
}

uint64_t sub_22FEC1A38(char a1)
{
  v78 = *MEMORY[0x277D85DE8];
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_10;
    }

    if (*(v4 + 16) == *(v4 + 24))
    {
LABEL_12:
      sub_22FEC4B30();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      goto LABEL_13;
    }

LABEL_14:
    sub_22FEA5608(v4, v3);
    sub_22FEA5608(v4, v3);
    if (a1)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  if (v6)
  {
    if (v4 == v4 >> 32)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if ((v3 & 0xFF000000000000) == 0)
  {
LABEL_10:
    sub_22FEA55AC(v4, v3);
    sub_22FEA55AC(v4, v3);
    goto LABEL_12;
  }

  if (a1)
  {
LABEL_5:
    if (v5 <= 1 || v5 == 2)
    {
      goto LABEL_15;
    }

    v24 = MEMORY[0x277CC9318];
    v25 = MEMORY[0x277CC9300];
    v76 = MEMORY[0x277CC9318];
    v77 = MEMORY[0x277CC9300];
    v73 = v4;
    v74 = v3;
    v26 = __swift_project_boxed_opaque_existential_1(&v73, MEMORY[0x277CC9318]);
    v27 = *v26;
    v28 = v26[1];
    v29 = v28 >> 62;
    if ((v28 >> 62) > 1)
    {
      if (v29 != 2)
      {
        memset(v70, 0, 14);
        v30 = v70;
        goto LABEL_67;
      }

      v32 = *(v27 + 16);
      v31 = *(v27 + 24);
      v33 = sub_22FFB0588();
      if (v33)
      {
        v34 = sub_22FFB05B8();
        if (__OFSUB__(v32, v34))
        {
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

        v33 += v32 - v34;
      }

      v17 = __OFSUB__(v31, v32);
      v35 = v31 - v32;
      if (v17)
      {
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      v36 = sub_22FFB05A8();
      if (v36 >= v35)
      {
        v37 = v35;
      }

      else
      {
        v37 = v36;
      }

      v38 = &v33[v37];
      if (v33)
      {
        v39 = v38;
      }

      else
      {
        v39 = 0;
      }

      sub_22FF9E9E4(v33, v39, &v71);
      v24 = MEMORY[0x277CC9318];
    }

    else
    {
      if (!v29)
      {
        v70[0] = *v26;
        LOWORD(v70[1]) = v28;
        BYTE2(v70[1]) = BYTE2(v28);
        BYTE3(v70[1]) = BYTE3(v28);
        BYTE4(v70[1]) = BYTE4(v28);
        BYTE5(v70[1]) = BYTE5(v28);
        v30 = v70 + BYTE6(v28);
LABEL_67:
        sub_22FF9E9E4(v70, v30, &v71);
LABEL_68:
        v49 = v71;
        v50 = v72;
        __swift_destroy_boxed_opaque_existential_1(&v73);
        v73 = v49;
        v74 = v50;
        v75 = 1;
        sub_22FEC1A38(1, 0);
        if (!v2)
        {
          sub_22FEA55AC(v4, v3);
          result = sub_22FEA55AC(v49, v50);
          goto LABEL_38;
        }

        sub_22FEA55AC(v49, v50);
        v76 = v24;
        v77 = v25;
        v73 = v4;
        v74 = v3;
        v51 = __swift_project_boxed_opaque_existential_1(&v73, v24);
        v52 = *v51;
        v53 = v51[1];
        v54 = v53 >> 62;
        if ((v53 >> 62) > 1)
        {
          if (v54 != 2)
          {
            memset(v70, 0, 14);
            v56 = v70;
            v55 = v70;
            goto LABEL_92;
          }

          v57 = *(v52 + 16);
          v58 = *(v52 + 24);
          v59 = sub_22FFB0588();
          if (v59)
          {
            v60 = sub_22FFB05B8();
            v52 = v57 - v60;
            if (__OFSUB__(v57, v60))
            {
LABEL_102:
              __break(1u);
LABEL_103:
              __break(1u);
            }

            v59 += v52;
          }

          v17 = __OFSUB__(v58, v57);
          v61 = v58 - v57;
          if (!v17)
          {
LABEL_84:
            v65 = sub_22FFB05A8();
            if (v65 >= v61)
            {
              v66 = v61;
            }

            else
            {
              v66 = v65;
            }

            v67 = (v66 + v59);
            if (v59)
            {
              v55 = v67;
            }

            else
            {
              v55 = 0;
            }

            v56 = v59;
            goto LABEL_92;
          }

          __break(1u);
        }

        else if (!v54)
        {
          v70[0] = *v51;
          LOWORD(v70[1]) = v53;
          BYTE2(v70[1]) = BYTE2(v53);
          BYTE3(v70[1]) = BYTE3(v53);
          BYTE4(v70[1]) = BYTE4(v53);
          BYTE5(v70[1]) = BYTE5(v53);
          v55 = v70 + BYTE6(v53);
          v56 = v70;
LABEL_92:
          sub_22FF9E9E4(v56, v55, &v71);
          v68 = v71;
          v69 = v72;
          __swift_destroy_boxed_opaque_existential_1(&v73);
          v73 = v68;
          v74 = v69;
          v75 = 2;
          sub_22FEC1A38(1, 0);

          result = sub_22FEA55AC(v68, v69);
          goto LABEL_38;
        }

        v62 = v52;
        v63 = v52 >> 32;
        v61 = v63 - v62;
        if (v63 < v62)
        {
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        v59 = sub_22FFB0588();
        if (v59)
        {
          v64 = sub_22FFB05B8();
          if (__OFSUB__(v62, v64))
          {
            goto LABEL_103;
          }

          v59 += v62 - v64;
        }

        goto LABEL_84;
      }

      v40 = v27;
      v41 = v27 >> 32;
      v42 = v41 - v40;
      if (v41 < v40)
      {
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      v43 = sub_22FFB0588();
      if (v43)
      {
        v44 = sub_22FFB05B8();
        if (__OFSUB__(v40, v44))
        {
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        v43 += v40 - v44;
      }

      v24 = MEMORY[0x277CC9318];
      v45 = sub_22FFB05A8();
      if (v45 >= v42)
      {
        v46 = v42;
      }

      else
      {
        v46 = v45;
      }

      v47 = &v43[v46];
      if (v43)
      {
        v48 = v47;
      }

      else
      {
        v48 = 0;
      }

      sub_22FF9E9E4(v43, v48, &v71);
    }

    v25 = MEMORY[0x277CC9300];
    goto LABEL_68;
  }

LABEL_15:
  sub_22FEA55AC(v4, v3);
  sub_22FEA55AC(v4, v3);
  v10 = image4_environment_new();
  if (v10)
  {
    v71 = v10;
    if (v6 == 2)
    {
      v14 = *(v4 + 16);
      v15 = *(v4 + 24);
      v12 = sub_22FFB0588();
      if (v12)
      {
        v16 = sub_22FFB05B8();
        if (__OFSUB__(v14, v16))
        {
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        v12 += v14 - v16;
      }

      v17 = __OFSUB__(v15, v14);
      v11 = v15 - v14;
      if (!v17)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v6 != 1)
      {
        v73 = v4;
        LOWORD(v74) = v3;
        BYTE2(v74) = BYTE2(v3);
        BYTE3(v74) = BYTE3(v3);
        BYTE4(v74) = BYTE4(v3);
        BYTE5(v74) = BYTE5(v3);
        v21 = &v73 + BYTE6(v3);
        v22 = &v73;
LABEL_37:
        sub_22FEC21C0(v22, v21, &v71, v4, v3);
        result = image4_environment_destroy();
        goto LABEL_38;
      }

      v11 = (v4 >> 32) - v4;
      if (v4 >> 32 >= v4)
      {
        v12 = sub_22FFB0588();
        if (!v12)
        {
LABEL_29:
          v18 = sub_22FFB05A8();
          if (v18 >= v11)
          {
            v19 = v11;
          }

          else
          {
            v19 = v18;
          }

          v20 = (v19 + v12);
          if (v12)
          {
            v21 = v20;
          }

          else
          {
            v21 = 0;
          }

          v22 = v12;
          goto LABEL_37;
        }

        v13 = sub_22FFB05B8();
        if (!__OFSUB__(v4, v13))
        {
          v12 += v4 - v13;
          goto LABEL_29;
        }

        goto LABEL_96;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_95;
  }

  sub_22FEC4B30();
  swift_allocError();
  *v7 = xmmword_22FFB3CC0;
LABEL_13:
  *(v7 + 16) = 2;
  result = swift_willThrow();
LABEL_38:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FEC21C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t a5)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_15;
  }

  v5 = *a3;
  v6 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(a4 + 16);
    v7 = *(a4 + 24);
    a4 = v7 - v8;
    if (!__OFSUB__(v7, v8))
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_9;
  }

  if (v6)
  {
LABEL_9:
    if (!__OFSUB__(HIDWORD(a4), a4))
    {
      goto LABEL_10;
    }

    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_15:
    __break(1u);
  }

LABEL_10:
  v9 = image4_trust_new();
  if (v9)
  {
    v14 = v9;
    v15 = 0;
    v16 = 0;
    v17 = -256;
    image4_trust_evaluate();
    sub_22FEC4B30();
    swift_allocError();
    *v10 = xmmword_22FFB3CD0;
    *(v10 + 16) = 2;
    swift_willThrow();
    sub_22FEC4B84(v15, v16, v17);
    result = image4_trust_destroy();
  }

  else
  {
    sub_22FEC4B30();
    swift_allocError();
    *v11 = xmmword_22FFB3CE0;
    *(v11 + 16) = 2;
    result = swift_willThrow();
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Image4Manifest.digest<A>(using:)()
{
  v2 = *v0;
  v3 = v0[1];
  sub_22FEA5608(*v0, v3);
  sub_22FEB0E54();
  sub_22FFB1378();
  return sub_22FEA55AC(v2, v3);
}

uint64_t static Image4Manifest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  return sub_22FEC3DC8(*a1, *(a1 + 8), *a2, *(a2 + 8)) & (v2 == v3);
}

uint64_t sub_22FEC26B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  return sub_22FEC3DC8(*a1, *(a1 + 8), *a2, *(a2 + 8)) & (v2 == v3);
}

uint64_t Image4Manifest.Error.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    v2 = *(v0 + 8);
    if (*(v0 + 16) == 1)
    {
      MEMORY[0x23190E460](5);

      return sub_22FFB1548();
    }

    else
    {
      if (v1 > 1)
      {
        if (v1 ^ 2 | v2)
        {
          v4 = 4;
        }

        else
        {
          v4 = 2;
        }
      }

      else
      {
        v4 = (v1 | v2) != 0;
      }

      return MEMORY[0x23190E460](v4);
    }
  }

  else
  {
    MEMORY[0x23190E460](3);
    return sub_22FFB1CD8();
  }
}

uint64_t Image4Manifest.Error.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_22FFB1CA8();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x23190E460](5);
      sub_22FFB1548();
    }

    else
    {
      if (v1 > 1)
      {
        if (v1 ^ 2 | v2)
        {
          v4 = 4;
        }

        else
        {
          v4 = 2;
        }
      }

      else
      {
        v4 = (v1 | v2) != 0;
      }

      MEMORY[0x23190E460](v4);
    }
  }

  else
  {
    MEMORY[0x23190E460](3);
    sub_22FFB1CD8();
  }

  return sub_22FFB1CF8();
}

uint64_t sub_22FEC28B8()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    v2 = *(v0 + 8);
    if (*(v0 + 16) == 1)
    {
      MEMORY[0x23190E460](5);

      return sub_22FFB1548();
    }

    else
    {
      if (v1 > 1)
      {
        if (v1 ^ 2 | v2)
        {
          v4 = 4;
        }

        else
        {
          v4 = 2;
        }
      }

      else
      {
        v4 = (v1 | v2) != 0;
      }

      return MEMORY[0x23190E460](v4);
    }
  }

  else
  {
    MEMORY[0x23190E460](3);
    return sub_22FFB1CD8();
  }
}

uint64_t sub_22FEC2990()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_22FFB1CA8();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x23190E460](5);
      sub_22FFB1548();
    }

    else
    {
      if (v1 > 1)
      {
        if (v1 ^ 2 | v2)
        {
          v4 = 4;
        }

        else
        {
          v4 = 2;
        }
      }

      else
      {
        v4 = (v1 | v2) != 0;
      }

      MEMORY[0x23190E460](v4);
    }
  }

  else
  {
    MEMORY[0x23190E460](3);
    sub_22FFB1CD8();
  }

  return sub_22FFB1CF8();
}

uint64_t Image4Manifest.description.getter()
{
  v1 = sub_22FFB13C8();
  *&v34 = *(v1 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22FFB1398();
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = *v0;
  v13 = v0[1];
  sub_22FEC471C(&qword_28148F198, MEMORY[0x277CC5540]);
  sub_22FFB1388();
  sub_22FEA5608(v12, v13);
  sub_22FF9EA78(v12, v13);
  sub_22FEA55AC(v12, v13);
  sub_22FFB1368();
  (*(v34 + 8))(v4, v1);
  v14 = *(v33 + 16);
  v31 = v11;
  v14(v9, v11, v5);
  sub_22FEC471C(&qword_28148F1B8, MEMORY[0x277CC5290]);
  v32 = v5;
  result = sub_22FFB1608();
  v16 = v35;
  v17 = v36;
  v18 = *(v35 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v36 == v18)
  {
LABEL_2:
    (*(v33 + 8))(v31, v32);

    v35 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3740, &unk_22FFB4290);
    sub_22FEB0F00();
    v20 = sub_22FFB1458();

    return v20;
  }

  else
  {
    v34 = xmmword_22FFB2D10;
    v21 = v36;
    while ((v17 & 0x8000000000000000) == 0)
    {
      if (v21 >= *(v16 + 16))
      {
        goto LABEL_13;
      }

      v22 = *(v16 + 32 + v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
      v23 = swift_allocObject();
      *(v23 + 16) = v34;
      *(v23 + 56) = MEMORY[0x277D84B78];
      *(v23 + 64) = MEMORY[0x277D84BC0];
      *(v23 + 32) = v22;
      v24 = sub_22FFB14D8();
      v26 = v25;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22FEC2E8C(0, *(v19 + 16) + 1, 1, v19);
        v19 = result;
      }

      v28 = *(v19 + 16);
      v27 = *(v19 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_22FEC2E8C((v27 > 1), v28 + 1, 1, v19);
        v19 = result;
      }

      ++v21;
      *(v19 + 16) = v28 + 1;
      v29 = v19 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      if (v18 == v21)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

char *sub_22FEC2E8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1538, &qword_22FFB2D70);
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

char *sub_22FEC2F98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C38, &qword_22FFB3FA8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_22FEC30E4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 48);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[6 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 48 * v14);
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

char *sub_22FEC322C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C60, &qword_22FFB3FD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22FEC334C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C58, &qword_22FFB3FC8);
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

char *sub_22FEC3458(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C50, &qword_22FFB3FC0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_22FEC3580(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

size_t sub_22FEC369C(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C40, &unk_22FFB3FB0);
  v10 = *(sub_22FFB0CC8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22FFB0CC8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_22FEC3874(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C30, &qword_22FFB3FA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22FEC3980@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_22FF55698(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_22FFB05D8();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_22FFB0578();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_22FFB0738();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_22FEC3A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  v13 = a3;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return sub_22FEC3C68(MEMORY[0x277D84B78], sub_22FEC4D50, v10, a1, a2, MEMORY[0x277D84B78], MEMORY[0x277D84A98], TupleTypeMetadata2, MEMORY[0x277D84AC0], v9);
}

uint64_t sub_22FEC3B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v11 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v7 + 16))(v10, a2, a3);
  result = sub_22FFB1618();
  *(a4 + v11) = result;
  return result;
}

uint64_t sub_22FEC3C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  v13 = *(v12 + 64);
  v14 = (MEMORY[0x28223BE20])();
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v23 = v25 - v22;
  if (v18)
  {
    v24 = *(*(v20 - 8) + 72);
    if (v24)
    {
      if (v19 - v18 != 0x8000000000000000 || v24 != -1)
      {
        result = v21(v18, (v19 - v18) / v24, v16);
        if (!v10)
        {
          return result;
        }

        return (*(v12 + 32))(a10, v16, a7);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  result = v21(0, 0, v25 - v22);
  v16 = v23;
  if (v10)
  {
    return (*(v12 + 32))(a10, v16, a7);
  }

  return result;
}
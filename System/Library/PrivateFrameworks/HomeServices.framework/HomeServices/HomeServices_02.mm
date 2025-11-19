uint64_t sub_1D20CD9DC()
{
  v46 = v0;
  v1 = v0[82];
  v2 = v0[76];
  v3 = v0[75];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2114850;
  *(inited + 32) = 0x64496563617274;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v2;

  v5 = v1;
  v6 = sub_1D20CE8BC(inited);
  swift_setDeallocating();
  sub_1D20A862C(inited + 32, &qword_1EC6C73D8, &qword_1D21153A0);
  v7 = [objc_opt_self() processInfo];
  v8 = [v7 processName];

  v9 = sub_1D21137CC();
  v11 = v10;

  LOWORD(v45[0]) = 256;
  BYTE2(v45[0]) = 5;
  v45[1] = v9;
  v45[2] = v11;
  v45[3] = v6;
  static AutoBugCaptureManager.sendIssue(_:)(v45);

  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v12 = v0[76];
  v13 = sub_1D211362C();
  __swift_project_value_buffer(v13, qword_1EE0874C0);

  v14 = v1;
  v15 = sub_1D21135FC();
  v16 = sub_1D2113A7C();

  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[76];
  if (v17)
  {
    v19 = v0[75];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v45[0] = v22;
    *v20 = 136315394;
    v23 = sub_1D20B75F0(v19, v18, v45);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2112;
    v24 = v1;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v25;
    *v21 = v25;
    _os_log_impl(&dword_1D209F000, v15, v16, "URLSession Error while trying to fetch Grid Guidance. | traceId: %s, %@", v20, 0x16u);
    sub_1D20A862C(v21, &qword_1EC6C7950, qword_1D21153D0);
    MEMORY[0x1D3896EB0](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1D3896EB0](v22, -1, -1);
    MEMORY[0x1D3896EB0](v20, -1, -1);
  }

  else
  {
  }

  v26 = v0[63];
  v27 = v0[61];
  v0[55] = v1;
  v28 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A0, &qword_1D2115B70);
  v29 = swift_dynamicCast();
  v30 = v0[74];
  v31 = v0[73];
  v32 = v0[72];
  if (v29)
  {
    v33 = v0[63];

    sub_1D20CEBE0(v33, type metadata accessor for NetworkError);
    swift_willThrow();
  }

  else
  {
    v34 = v0[61];
    sub_1D20CB838();
    swift_allocError();
    sub_1D20F5FDC(v1, v35);
    swift_willThrow();
  }

  (*(v31 + 8))(v30, v32);
  v36 = v0[74];
  v37 = v0[71];
  v38 = v0[70];
  v39 = v0[67];
  v40 = v0[66];
  v42 = v0[62];
  v41 = v0[63];

  v43 = v0[1];

  return v43();
}

uint64_t sub_1D20CDE4C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7660, &qword_1D2116068);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v18 = *(v1 + 16);
  v15 = v1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20CEDF4();
  sub_1D2113F3C();
  v22 = 0;
  v11 = v16;
  sub_1D2113D8C();
  if (!v11)
  {
    v12 = v15;
    v21 = v18;
    v20 = 1;
    sub_1D20CEEF0();
    sub_1D2113DEC();
    v17 = v12;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7648, &qword_1D2116060);
    sub_1D20CEF44(&qword_1EC6C7670, sub_1D20CEFBC);
    sub_1D2113DEC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D20CE068@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7630, &qword_1D2116058);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20CEDF4();
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v11 = sub_1D2113D1C();
  v13 = v12;
  v14 = v11;
  v20 = 1;
  sub_1D20CEE48();
  sub_1D2113D7C();
  v18 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7648, &qword_1D2116060);
  v19 = 2;
  sub_1D20CEF44(&qword_1EC6C7650, sub_1D20CEE9C);
  sub_1D2113D7C();
  (*(v6 + 8))(v9, v5);
  v16 = v17[1];
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v18;
  *(a2 + 24) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D20CE308(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7690, &qword_1D2116078);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20CF30C();
  sub_1D2113F3C();
  v10[15] = 0;
  sub_1D2113DBC();
  if (!v1)
  {
    v10[14] = 1;
    sub_1D2113DDC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D20CE4A4()
{
  v1 = 0x636E657571657266;
  if (*v0 != 1)
  {
    v1 = 1635017060;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64496C616E676973;
  }
}

uint64_t sub_1D20CE4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D20CF010(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D20CE524(uint64_t a1)
{
  v2 = sub_1D20CEDF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20CE560(uint64_t a1)
{
  v2 = sub_1D20CEDF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D20CE5CC()
{
  if (*v0)
  {
    result = 0x676E69746172;
  }

  else
  {
    result = 0x7472617473;
  }

  *v0;
  return result;
}

uint64_t sub_1D20CE600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D2113E2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E69746172 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D2113E2C();

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

uint64_t sub_1D20CE6E0(uint64_t a1)
{
  v2 = sub_1D20CF30C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20CE71C(uint64_t a1)
{
  v2 = sub_1D20CF30C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D20CE758(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1D20CF130(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_1D20CE788(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 4);
  return sub_1D20CE308(a1);
}

unint64_t sub_1D20CE7A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7618, &qword_1D2115F10);
    v3 = sub_1D2113CFC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1D20E4570(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D20CE8BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73D0, &qword_1D2115398);
    v3 = sub_1D2113CFC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D20A8580(v4, &v13, &qword_1EC6C73D8, &qword_1D21153A0);
      v5 = v13;
      v6 = v14;
      result = sub_1D20E4570(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D20B3388(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D20CE9EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7620, &qword_1D2115F18);
    v3 = sub_1D2113CFC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D20A8580(v4, v13, &qword_1EC6C7628, &qword_1D2115F20);
      result = sub_1D20E459C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1D20B3388(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D20CEB28()
{
  result = qword_1EC6C7610;
  if (!qword_1EC6C7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7610);
  }

  return result;
}

uint64_t sub_1D20CEB7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridGuidance();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D20CEBE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D20CEC40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridGuidance();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D20CECB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_1D20CED00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
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

uint64_t sub_1D20CED5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D20CEDA4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1D20CEDF4()
{
  result = qword_1EC6C7638;
  if (!qword_1EC6C7638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7638);
  }

  return result;
}

unint64_t sub_1D20CEE48()
{
  result = qword_1EC6C7640;
  if (!qword_1EC6C7640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7640);
  }

  return result;
}

unint64_t sub_1D20CEE9C()
{
  result = qword_1EC6C7658;
  if (!qword_1EC6C7658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7658);
  }

  return result;
}

unint64_t sub_1D20CEEF0()
{
  result = qword_1EC6C7668;
  if (!qword_1EC6C7668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7668);
  }

  return result;
}

uint64_t sub_1D20CEF44(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C7648, &qword_1D2116060);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D20CEFBC()
{
  result = qword_1EC6C7678;
  if (!qword_1EC6C7678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7678);
  }

  return result;
}

uint64_t sub_1D20CF010(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C616E676973 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D2113E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xE900000000000079 || (sub_1D2113E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D2113E2C();

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

float sub_1D20CF130(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7680, &qword_1D2116070);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20CF30C();
  sub_1D2113F2C();
  if (!v1)
  {
    v14 = 0;
    sub_1D2113D4C();
    v13 = 1;
    sub_1D2113D6C();
    v2 = v11;
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

unint64_t sub_1D20CF30C()
{
  result = qword_1EC6C7688;
  if (!qword_1EC6C7688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7688);
  }

  return result;
}

unint64_t sub_1D20CF384()
{
  result = qword_1EC6C7698;
  if (!qword_1EC6C7698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7698);
  }

  return result;
}

unint64_t sub_1D20CF3DC()
{
  result = qword_1EC6C76A0;
  if (!qword_1EC6C76A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C76A0);
  }

  return result;
}

unint64_t sub_1D20CF434()
{
  result = qword_1EC6C76A8;
  if (!qword_1EC6C76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C76A8);
  }

  return result;
}

unint64_t sub_1D20CF48C()
{
  result = qword_1EC6C76B0;
  if (!qword_1EC6C76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C76B0);
  }

  return result;
}

unint64_t sub_1D20CF4E4()
{
  result = qword_1EC6C76B8;
  if (!qword_1EC6C76B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C76B8);
  }

  return result;
}

unint64_t sub_1D20CF53C()
{
  result = qword_1EC6C76C0;
  if (!qword_1EC6C76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C76C0);
  }

  return result;
}

void sub_1D20CF590(uint64_t *a1@<X8>)
{
  v2 = 24945;
  if (*v1)
  {
    v2 = 1685025392;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

BOOL sub_1D20CF5BC()
{
  v0 = sub_1D21137BC();
  v1 = sub_1D21137BC();
  v2 = CFPreferencesCopyAppValue(v0, v1);

  if (!v2 || (swift_dynamicCast() & 1) == 0)
  {
    return 1;
  }

  v4 = v12;
  v3 = v13;
  if (qword_1EE084468 != -1)
  {
    swift_once();
  }

  v5 = sub_1D211362C();
  __swift_project_value_buffer(v5, qword_1EE087518);

  v6 = sub_1D21135FC();
  v7 = sub_1D2113A9C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1D20B75F0(v4, v3, &v12);
    _os_log_impl(&dword_1D209F000, v6, v7, "Environment override detected. Using user set env value : %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D3896EB0](v9, -1, -1);
    MEMORY[0x1D3896EB0](v8, -1, -1);
  }

  v12 = v4;
  v13 = v3;
  sub_1D20B99F0();
  v10 = sub_1D2113B4C();

  return v10 == 0;
}

uint64_t sub_1D20CF7E0()
{
  if (!os_variant_has_internal_diagnostics())
  {
LABEL_19:
    v7 = sub_1D20CF5BC();
    return v7 & 1;
  }

  if (qword_1EE084468 != -1)
  {
    swift_once();
  }

  v0 = sub_1D211362C();
  __swift_project_value_buffer(v0, qword_1EE087518);
  v1 = sub_1D21135FC();
  v2 = sub_1D2113A9C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D209F000, v1, v2, "Internal build variant detected. Evaluating Server URL value for Environment information.", v3, 2u);
    MEMORY[0x1D3896EB0](v3, -1, -1);
  }

  v4 = sub_1D20ECE18();
  if (!v5)
  {
    v15 = sub_1D21135FC();
    v16 = sub_1D2113A7C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D209F000, v15, v16, "Unable to retrieve server Base URL. Returning default value", v17, 2u);
      MEMORY[0x1D3896EB0](v17, -1, -1);
    }

    goto LABEL_19;
  }

  v19[0] = v4;
  v19[1] = v5;
  sub_1D20B99F0();
  v6 = sub_1D2113B6C();

  v7 = v6 ^ 1;
  v8 = sub_1D21135FC();
  v9 = sub_1D2113A5C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136315138;
    if (v6)
    {
      v12 = 24945;
    }

    else
    {
      v12 = 1685025392;
    }

    if (v6)
    {
      v13 = 0xE200000000000000;
    }

    else
    {
      v13 = 0xE400000000000000;
    }

    v14 = sub_1D20B75F0(v12, v13, v19);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1D209F000, v8, v9, "%s env used for Internal calculation", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1D3896EB0](v11, -1, -1);
    MEMORY[0x1D3896EB0](v10, -1, -1);
  }

  return v7 & 1;
}

void sub_1D20CFA90()
{
  v0 = sub_1D20CF5BC();
  if (v0)
  {
    v1 = 1685025392;
  }

  else
  {
    v1 = 24945;
  }

  if (v0)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE200000000000000;
  }

  v3 = sub_1D20CF7E0();
  if (v3)
  {
    v4 = 1685025392;
  }

  else
  {
    v4 = 24945;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE200000000000000;
  }

  if (qword_1EE084468 != -1)
  {
    swift_once();
  }

  v6 = sub_1D211362C();
  __swift_project_value_buffer(v6, qword_1EE087518);

  v7 = sub_1D21135FC();
  v8 = sub_1D2113A9C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    v11 = sub_1D20B75F0(v4, v5, &v17);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_1D209F000, v7, v8, "Connected Server Environment : %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1D3896EB0](v10, -1, -1);
    MEMORY[0x1D3896EB0](v9, -1, -1);
  }

  else
  {
  }

  oslog = sub_1D21135FC();
  v12 = sub_1D2113A9C();

  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    v15 = sub_1D20B75F0(v1, v2, &v17);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_1D209F000, oslog, v12, "Config Environment : %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1D3896EB0](v14, -1, -1);
    MEMORY[0x1D3896EB0](v13, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1D20CFD14()
{
  if (qword_1EE083FF8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D20CB9A8();
  v2 = v1;

  qword_1EE0874E0 = v0;
  *algn_1EE0874E8 = v2;
  return result;
}

void sub_1D20CFDC0(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

double sub_1D20CFDF8(int64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && sub_1D20BC1E0(a2, a3))
  {
    v4 = fmod(0.0, a1);
    if (qword_1EE083DE8 == -1)
    {
LABEL_4:
      v5 = fabs(v4);
      v6 = sub_1D211362C();
      __swift_project_value_buffer(v6, qword_1EE0874C0);
      v7 = sub_1D21135FC();
      v8 = sub_1D2113A6C();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 134217984;
        *(v9 + 4) = v5;
        _os_log_impl(&dword_1D209F000, v7, v8, "Generated Jitter Value: %fs", v9, 0xCu);
        MEMORY[0x1D3896EB0](v9, -1, -1);
      }

      return v5;
    }

LABEL_19:
    v19 = v4;
    swift_once();
    v4 = v19;
    goto LABEL_4;
  }

  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D211362C();
  __swift_project_value_buffer(v10, qword_1EE0874C0);
  v11 = sub_1D21135FC();
  v12 = sub_1D2113A7C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1D209F000, v11, v12, "Unable to retrieve User's DSID or convert to a required format. Generating random jitter value.", v13, 2u);
    MEMORY[0x1D3896EB0](v13, -1, -1);
  }

  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (!a1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = sub_1D20B0B48(a1);
  v15 = sub_1D21135FC();
  v16 = sub_1D2113A6C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = v14;
    _os_log_impl(&dword_1D209F000, v15, v16, "Generated Jitter Value: %lds", v17, 0xCu);
    MEMORY[0x1D3896EB0](v17, -1, -1);
  }

  return v14;
}

double GridSignalFrequency.duration.getter()
{
  result = 300.0;
  if (*v0)
  {
    return 1800.0;
  }

  return result;
}

uint64_t static EnergyServices.gridGuidanceSignal(forGridID:withSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D20A8CBC;

  return sub_1D20CBB40(a1, a2, a3, a4);
}

uint64_t GridSignal.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1D20D01B0()
{
  v1 = 0x636E657571657266;
  if (*v0 != 1)
  {
    v1 = 0x65636E6164697567;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1D20D0214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D20D1B2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D20D023C(uint64_t a1)
{
  v2 = sub_1D20D15AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20D0278(uint64_t a1)
{
  v2 = sub_1D20D15AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GridSignal.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C76C8, &qword_1D21162A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v18 = *(v1 + 16);
  v15 = v1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20D15AC();
  sub_1D2113F3C();
  v22 = 0;
  v11 = v16;
  sub_1D2113D8C();
  if (!v11)
  {
    v12 = v15;
    v21 = v18;
    v20 = 1;
    sub_1D20CEEF0();
    sub_1D2113DEC();
    v17 = v12;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C76D8, &qword_1D21162B0);
    sub_1D20D164C(&qword_1EC6C76E0, &qword_1EC6C76E8);
    sub_1D2113DEC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t GridSignal.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C76F0, &qword_1D21162B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20D15AC();
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v11 = sub_1D2113D1C();
  v13 = v12;
  v14 = v11;
  v20 = 1;
  sub_1D20CEE48();
  sub_1D2113D7C();
  v18 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C76D8, &qword_1D21162B0);
  v19 = 2;
  sub_1D20D164C(&qword_1EC6C76F8, &qword_1EC6C7700);
  sub_1D2113D7C();
  (*(v6 + 8))(v9, v5);
  v16 = v17[1];
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v18;
  *(a2 + 24) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t GridGuidance.start.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D211319C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GridGuidance.end.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GridGuidance() + 20);
  v4 = sub_1D211319C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

BOOL static GridGuidance.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1D211315C() & 1) != 0 && (v4 = type metadata accessor for GridGuidance(), v5 = *(v4 + 20), (sub_1D211315C()))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D20D092C()
{
  v1 = 6581861;
  if (*v0 != 1)
  {
    v1 = 0x676E69746172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_1D20D0978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D20D1C54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D20D09A0(uint64_t a1)
{
  v2 = sub_1D20D16E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20D09DC(uint64_t a1)
{
  v2 = sub_1D20D16E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GridGuidance.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7708, &qword_1D21162C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20D16E8();
  sub_1D2113F3C();
  v18 = 0;
  sub_1D211319C();
  sub_1D20D173C(&qword_1EE083DA0, MEMORY[0x1E6969530]);
  sub_1D2113DEC();
  if (!v2)
  {
    v11 = type metadata accessor for GridGuidance();
    v12 = *(v11 + 20);
    v17 = 1;
    sub_1D2113DEC();
    v13 = *(v3 + *(v11 + 24));
    v16 = 2;
    sub_1D2113DDC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t GridGuidance.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v34 = sub_1D211319C();
  v32 = *(v34 - 8);
  v4 = *(v32 + 64);
  v5 = MEMORY[0x1EEE9AC00](v34);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7718, &qword_1D21162C8);
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  v13 = type metadata accessor for GridGuidance();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20D16E8();
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = v16;
  v30 = a1;
  v28 = v13;
  v39 = 0;
  sub_1D20D173C(&qword_1EE084908, MEMORY[0x1E6969530]);
  v18 = v33;
  v19 = v34;
  sub_1D2113D7C();
  v33 = *(v32 + 32);
  (v33)(v29, v18, v19);
  v38 = 1;
  v20 = v7;
  sub_1D2113D7C();
  v22 = v28;
  v21 = v29;
  (v33)(&v29[*(v28 + 20)], v20, v19);
  v37 = 2;
  sub_1D2113D6C();
  v23 = v21;
  v24 = v30;
  v26 = v25;
  (*(v35 + 8))(v12, v36);
  *(v23 + *(v22 + 24)) = v26;
  sub_1D20CEB7C(v23, v31);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_1D20D1784(v23);
}

BOOL sub_1D20D1060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1D211315C() & 1) != 0 && (v6 = *(a3 + 20), (sub_1D211315C()))
  {
    return *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
  }

  else
  {
    return 0;
  }
}

HomeServices::GridSignalFrequency_optional __swiftcall GridSignalFrequency.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D2113D0C();

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

uint64_t GridSignalFrequency.rawValue.getter()
{
  if (*v0)
  {
    result = 0x4D30335450;
  }

  else
  {
    result = 1295340624;
  }

  *v0;
  return result;
}

uint64_t sub_1D20D115C()
{
  v1 = *v0;
  sub_1D2113ECC();
  sub_1D211375C();

  return sub_1D2113F1C();
}

uint64_t sub_1D20D11D4()
{
  *v0;
  sub_1D211375C();
}

uint64_t sub_1D20D1238()
{
  v1 = *v0;
  sub_1D2113ECC();
  sub_1D211375C();

  return sub_1D2113F1C();
}

uint64_t sub_1D20D12AC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D2113D0C();

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

void sub_1D20D130C(uint64_t *a1@<X8>)
{
  v2 = 1295340624;
  if (*v1)
  {
    v2 = 0x4D30335450;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D20D13F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x4D30335450;
  }

  else
  {
    v4 = 1295340624;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x4D30335450;
  }

  else
  {
    v6 = 1295340624;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
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
    v9 = sub_1D2113E2C();
  }

  return v9 & 1;
}

uint64_t _s12HomeServices10GridSignalV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_1D2113E2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v4)
  {
    v10 = 0x4D30335450;
  }

  else
  {
    v10 = 1295340624;
  }

  if (v4)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  if (v7)
  {
    v12 = 0x4D30335450;
  }

  else
  {
    v12 = 1295340624;
  }

  if (v7)
  {
    v13 = 0xE500000000000000;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  if (v10 == v12 && v11 == v13)
  {
  }

  else
  {
    v15 = sub_1D2113E2C();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_1D20FD1A4(v5, v8);
}

unint64_t sub_1D20D15AC()
{
  result = qword_1EC6C76D0;
  if (!qword_1EC6C76D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C76D0);
  }

  return result;
}

uint64_t type metadata accessor for GridGuidance()
{
  result = qword_1EC6C7728;
  if (!qword_1EC6C7728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D20D164C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C76D8, &qword_1D21162B0);
    sub_1D20D173C(a2, type metadata accessor for GridGuidance);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D20D16E8()
{
  result = qword_1EC6C7710;
  if (!qword_1EC6C7710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7710);
  }

  return result;
}

uint64_t sub_1D20D173C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D20D1784(uint64_t a1)
{
  v2 = type metadata accessor for GridGuidance();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D20D17E4()
{
  result = qword_1EC6C7720;
  if (!qword_1EC6C7720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7720);
  }

  return result;
}

uint64_t sub_1D20D1870()
{
  result = sub_1D211319C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D20D1920()
{
  result = qword_1EC6C7738;
  if (!qword_1EC6C7738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7738);
  }

  return result;
}

unint64_t sub_1D20D1978()
{
  result = qword_1EC6C7740;
  if (!qword_1EC6C7740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7740);
  }

  return result;
}

unint64_t sub_1D20D19D0()
{
  result = qword_1EC6C7748;
  if (!qword_1EC6C7748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7748);
  }

  return result;
}

unint64_t sub_1D20D1A28()
{
  result = qword_1EC6C7750;
  if (!qword_1EC6C7750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7750);
  }

  return result;
}

unint64_t sub_1D20D1A80()
{
  result = qword_1EC6C7758;
  if (!qword_1EC6C7758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7758);
  }

  return result;
}

unint64_t sub_1D20D1AD8()
{
  result = qword_1EC6C7760;
  if (!qword_1EC6C7760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7760);
  }

  return result;
}

uint64_t sub_1D20D1B2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D2113E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xE900000000000079 || (sub_1D2113E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65636E6164697567 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D2113E2C();

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

uint64_t sub_1D20D1C54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D2113E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000 || (sub_1D2113E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69746172 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D2113E2C();

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

unint64_t sub_1D20D1D64()
{
  result = qword_1EC6C7768;
  if (!qword_1EC6C7768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7768);
  }

  return result;
}

uint64_t sub_1D20D1DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[49] = a3;
  v4[50] = a4;
  v4[47] = a1;
  v4[48] = a2;
  v5 = type metadata accessor for NetworkError(0);
  v4[51] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80) - 8) + 64) + 15;
  v4[54] = swift_task_alloc();
  v8 = sub_1D211319C();
  v4[55] = v8;
  v9 = *(v8 - 8);
  v4[56] = v9;
  v10 = *(v9 + 64) + 15;
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v11 = type metadata accessor for EnergyWindows(0);
  v4[61] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[62] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7508, &unk_1D2116AA0) - 8) + 64) + 15;
  v4[63] = swift_task_alloc();
  v14 = sub_1D2112B1C();
  v4[64] = v14;
  v15 = *(v14 - 8);
  v4[65] = v15;
  v16 = *(v15 + 64) + 15;
  v4[66] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D20D1FDC, 0, 0);
}

uint64_t sub_1D20D1FDC()
{
  v0[44] = 0;
  MEMORY[0x1D3896EC0](v0 + 44, 8);
  v1 = v0[44];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73A8, "J{");
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E76D8];
  *(v2 + 16) = xmmword_1D2114850;
  v4 = MEMORY[0x1E69E7738];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = v1;
  v0[67] = sub_1D21137FC();
  v0[68] = v5;
  v6 = swift_task_alloc();
  v0[69] = v6;
  *v6 = v0;
  v6[1] = sub_1D20D20F8;
  v7 = v0[50];

  return sub_1D20EF460(v7);
}

uint64_t sub_1D20D20F8()
{
  v1 = *(*v0 + 552);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D20D21F4, 0, 0);
}

uint64_t sub_1D20D21F4()
{
  v46 = v0;
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[65];
  v5 = v0[63];
  v4 = v0[64];
  v7 = v0[48];
  v6 = v0[49];
  type metadata accessor for EnergyWindowsRequest();
  swift_initStackObject();
  sub_1D20BC64C(v7, v6, v2, v1, v5);
  if ((*(v3 + 48))(v5, 1, v4) == 1)
  {
    v8 = v0[68];
    v9 = v0[67];
    sub_1D20A862C(v0[63], &qword_1EC6C7508, &unk_1D2116AA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D2114850;
    *(inited + 32) = 0x64496563617274;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v9;
    *(inited + 56) = v8;

    v11 = sub_1D20CE8BC(inited);
    swift_setDeallocating();
    sub_1D20A862C(inited + 32, &qword_1EC6C73D8, &qword_1D21153A0);
    v12 = [objc_opt_self() processInfo];
    v13 = [v12 processName];

    v14 = sub_1D21137CC();
    v16 = v15;

    LOWORD(v45[0]) = 1;
    BYTE2(v45[0]) = 1;
    v45[1] = v14;
    v45[2] = v16;
    v45[3] = v11;
    static AutoBugCaptureManager.sendIssue(_:)(v45);

    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v17 = v0[68];
    v18 = sub_1D211362C();
    __swift_project_value_buffer(v18, qword_1EE0874C0);

    v19 = sub_1D21135FC();
    v20 = sub_1D2113A7C();

    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[68];
    if (v21)
    {
      v23 = v0[67];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v45[0] = v25;
      *v24 = 136315138;
      v26 = sub_1D20B75F0(v23, v22, v45);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_1D209F000, v19, v20, "Unable generate request URL for EnergyWindow Request | traceId: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1D3896EB0](v25, -1, -1);
      MEMORY[0x1D3896EB0](v24, -1, -1);
    }

    else
    {
    }

    v31 = v0[51];
    sub_1D20D47CC(qword_1EE0841B0, type metadata accessor for NetworkError);
    swift_allocError();
    *v32 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v33 = v0[66];
    v35 = v0[62];
    v34 = v0[63];
    v37 = v0[59];
    v36 = v0[60];
    v39 = v0[57];
    v38 = v0[58];
    v41 = v0[53];
    v40 = v0[54];
    v44 = v0[52];

    v42 = v0[1];

    return v42();
  }

  else
  {
    (*(v0[65] + 32))(v0[66], v0[63], v0[64]);
    v27 = *(MEMORY[0x1E6969EC0] + 4);
    v28 = swift_task_alloc();
    v0[70] = v28;
    *v28 = v0;
    v28[1] = sub_1D20D26B0;
    v29 = v0[66];
    v30 = v0[50];

    return MEMORY[0x1EEDC6260](v29, 0);
  }
}

uint64_t sub_1D20D26B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 560);
  v9 = *v4;
  v5[71] = a1;
  v5[72] = a2;
  v5[73] = a3;
  v5[74] = v3;

  if (v3)
  {
    v7 = sub_1D20D4310;
  }

  else
  {
    v7 = sub_1D20D27D0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1D20D27D0()
{
  v280 = v0;
  v1 = *(v0 + 584);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = 0x1E696A000uLL;
  v4 = 0x1E83F6000uLL;
  v5 = 0x1E83F6000uLL;
  if (!v2)
  {
    v18 = MEMORY[0x1E69E6158];
    v19 = *(v0 + 544);
    v20 = *(v0 + 536);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    inited = swift_initStackObject();
    *(inited + 32) = 0x64496563617274;
    *(inited + 16) = xmmword_1D2114850;
    *(inited + 72) = v18;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v20;
    *(inited + 56) = v19;

    v22 = sub_1D20CE8BC(inited);
    swift_setDeallocating();
    sub_1D20A862C(inited + 32, &qword_1EC6C73D8, &qword_1D21153A0);
    v23 = [objc_opt_self() processInfo];
    v24 = [v23 processName];

    v25 = sub_1D21137CC();
    v27 = v26;

    LOWORD(v276) = 257;
    BYTE2(v276) = 2;
    v277 = v25;
    v278 = v27;
    v279 = v22;
    static AutoBugCaptureManager.sendIssue(_:)(&v276);

    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 544);
    v29 = sub_1D211362C();
    __swift_project_value_buffer(v29, qword_1EE0874C0);

    v30 = sub_1D21135FC();
    v31 = sub_1D2113A7C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = *(v0 + 544);
      v33 = *(v0 + 536);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v276 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1D20B75F0(v33, v32, &v276);
      _os_log_impl(&dword_1D209F000, v30, v31, "Unable to process EnergyWindow Response | traceId: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      v36 = v35;
      v3 = 0x1E696A000uLL;
      MEMORY[0x1D3896EB0](v36, -1, -1);
      MEMORY[0x1D3896EB0](v34, -1, -1);
    }

    v37 = *(v0 + 584);
    v38 = *(v0 + 576);
    v39 = *(v0 + 568);
    v40 = *(v0 + 408);
    sub_1D20D47CC(qword_1EE0841B0, type metadata accessor for NetworkError);
    v41 = swift_allocError();
    *v42 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_27;
  }

  v6 = v2;
  v7 = *(v0 + 584);
  v8 = v6;
  if ([v6 statusCode] != 200)
  {
    v43 = *(v0 + 544);
    v44 = *(v0 + 536);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    v45 = swift_initStackObject();
    *(v45 + 32) = 0x64496563617274;
    *(v45 + 16) = xmmword_1D2114850;
    *(v45 + 72) = MEMORY[0x1E69E6158];
    *(v45 + 40) = 0xE700000000000000;
    *(v45 + 48) = v44;
    *(v45 + 56) = v43;

    v46 = sub_1D20CE8BC(v45);
    swift_setDeallocating();
    sub_1D20A862C(v45 + 32, &qword_1EC6C73D8, &qword_1D21153A0);
    v47 = [objc_opt_self() processInfo];
    v48 = [v47 processName];

    v49 = sub_1D21137CC();
    v51 = v50;

    LOWORD(v276) = 257;
    BYTE2(v276) = 4;
    v277 = v49;
    v278 = v51;
    v279 = v46;
    static AutoBugCaptureManager.sendIssue(_:)(&v276);

    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v52 = *(v0 + 584);
    v53 = *(v0 + 544);
    v54 = sub_1D211362C();
    __swift_project_value_buffer(v54, qword_1EE0874C0);
    v55 = v52;

    v56 = sub_1D21135FC();
    v57 = sub_1D2113A7C();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = *(v0 + 584);
      v59 = *(v0 + 544);
      v60 = *(v0 + 536);
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v276 = v63;
      *v61 = 138412546;
      *(v61 + 4) = v8;
      *v62 = v8;
      *(v61 + 12) = 2080;
      v64 = v58;
      *(v61 + 14) = sub_1D20B75F0(v60, v59, &v276);
      _os_log_impl(&dword_1D209F000, v56, v57, "Unhandled response code received for EnergyWindow Request. %@ | traceId: %s", v61, 0x16u);
      sub_1D20A862C(v62, &qword_1EC6C7950, qword_1D21153D0);
      v65 = v62;
      v4 = 0x1E83F6000;
      MEMORY[0x1D3896EB0](v65, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v63);
      v66 = v63;
      v5 = 0x1E83F6000;
      MEMORY[0x1D3896EB0](v66, -1, -1);
      MEMORY[0x1D3896EB0](v61, -1, -1);
    }

    v67 = *(v0 + 584);
    v68 = *(v0 + 576);
    v69 = *(v0 + 568);
    v70 = *(v0 + 408);
    sub_1D20D47CC(qword_1EE0841B0, type metadata accessor for NetworkError);
    v41 = swift_allocError();
    *v71 = [v8 statusCode];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_1D20B98A4(v69, v68);
    v3 = 0x1E696A000;
    goto LABEL_35;
  }

  v9 = *(v0 + 592);
  v10 = *(v0 + 576);
  v11 = *(v0 + 568);
  v13 = *(v0 + 488);
  v12 = *(v0 + 496);
  v14 = sub_1D2112B4C();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_1D2112B3C();
  sub_1D20D47CC(qword_1EE083C20, type metadata accessor for EnergyWindows);
  v17 = sub_1D2112B2C();
  v271 = v9;
  if (v9)
  {

    v5 = 0x1E83F6000;
    v4 = 0x1E83F6000;
    v3 = 0x1E696A000;
LABEL_25:
    v110 = *(v0 + 408);
    v109 = *(v0 + 416);
    v41 = v271;
    *(v0 + 368) = v271;
    v111 = v271;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A0, &qword_1D2115B70);
    if (!swift_dynamicCast())
    {
      v112 = *(v0 + 544);
      v113 = *(v0 + 536);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
      v114 = swift_allocObject();
      *(v114 + 32) = 0x64496563617274;
      *(v114 + 16) = xmmword_1D2114850;
      *(v114 + 72) = MEMORY[0x1E69E6158];
      *(v114 + 40) = 0xE700000000000000;
      *(v114 + 48) = v113;
      *(v114 + 56) = v112;

      v115 = sub_1D20CE8BC(v114);
      swift_setDeallocating();
      sub_1D20A862C(v114 + 32, &qword_1EC6C73D8, &qword_1D21153A0);
      swift_deallocClassInstance();
      v116 = *(v3 + 3632);
      v117 = [objc_opt_self() *(v4 + 2096)];
      v118 = [v117 *(v5 + 2104)];

      v119 = sub_1D21137CC();
      v121 = v120;

      LOWORD(v276) = 257;
      BYTE2(v276) = 3;
      v277 = v119;
      v278 = v121;
      v279 = v115;
      static AutoBugCaptureManager.sendIssue(_:)(&v276);

      if (qword_1EE083DE8 != -1)
      {
        swift_once();
      }

      v122 = *(v0 + 544);
      v123 = sub_1D211362C();
      __swift_project_value_buffer(v123, qword_1EE0874C0);

      v124 = sub_1D21135FC();
      v125 = sub_1D2113A7C();

      if (os_log_type_enabled(v124, v125))
      {
        v126 = *(v0 + 544);
        v127 = *(v0 + 536);
        v128 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v276 = v129;
        *v128 = 136315138;
        *(v128 + 4) = sub_1D20B75F0(v127, v126, &v276);
        _os_log_impl(&dword_1D209F000, v124, v125, "Error while decoding Energy Intervals response from server | traceId: %s", v128, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v129);
        MEMORY[0x1D3896EB0](v129, -1, -1);
        MEMORY[0x1D3896EB0](v128, -1, -1);
      }

      v130 = *(v0 + 544);
      v131 = *(v0 + 584);

      v132 = sub_1D21135FC();
      v133 = sub_1D2113A7C();

      if (os_log_type_enabled(v132, v133))
      {
        v134 = *(v0 + 584);
        v135 = *(v0 + 544);
        v136 = *(v0 + 536);
        v137 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v276 = v138;
        *v137 = 136315394;
        v139 = [v134 description];
        v140 = sub_1D21137CC();
        v142 = v141;

        v143 = sub_1D20B75F0(v140, v142, &v276);

        *(v137 + 4) = v143;
        *(v137 + 12) = 2080;
        *(v137 + 14) = sub_1D20B75F0(v136, v135, &v276);
        _os_log_impl(&dword_1D209F000, v132, v133, "URL Response %s | traceId: %s", v137, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3896EB0](v138, -1, -1);
        MEMORY[0x1D3896EB0](v137, -1, -1);
      }

      v5 = 0x1E83F6000uLL;
      v4 = 0x1E83F6000uLL;
      v3 = 0x1E696A000uLL;
      v144 = *(v0 + 584);
      v145 = *(v0 + 576);
      v146 = *(v0 + 568);
      v147 = *(v0 + 408);
      sub_1D20D47CC(qword_1EE0841B0, type metadata accessor for NetworkError);
      v41 = swift_allocError();
      *v148 = 1;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_1D20B98A4(v146, v145);
      goto LABEL_35;
    }

    v37 = *(v0 + 584);
    v38 = *(v0 + 576);
    v39 = *(v0 + 568);
    sub_1D20D4814(*(v0 + 416), type metadata accessor for NetworkError);
    swift_willThrow();

LABEL_27:
    sub_1D20B98A4(v39, v38);
LABEL_35:
    v149 = *(v0 + 544);
    v150 = *(v0 + 536);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    v151 = swift_initStackObject();
    *(v151 + 32) = 0x64496563617274;
    *(v151 + 16) = xmmword_1D2114850;
    *(v151 + 72) = MEMORY[0x1E69E6158];
    *(v151 + 40) = 0xE700000000000000;
    *(v151 + 48) = v150;
    *(v151 + 56) = v149;

    v152 = v41;
    v153 = sub_1D20CE8BC(v151);
    swift_setDeallocating();
    sub_1D20A862C(v151 + 32, &qword_1EC6C73D8, &qword_1D21153A0);
    v154 = *(v3 + 3632);
    v155 = [objc_opt_self() *(v4 + 2096)];
    v156 = [v155 *(v5 + 2104)];

    v157 = sub_1D21137CC();
    v159 = v158;

    LOWORD(v276) = 257;
    BYTE2(v276) = 5;
    v277 = v157;
    v278 = v159;
    v279 = v153;
    static AutoBugCaptureManager.sendIssue(_:)(&v276);

    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v160 = *(v0 + 544);
    v161 = sub_1D211362C();
    __swift_project_value_buffer(v161, qword_1EE0874C0);

    v162 = v41;
    v163 = sub_1D21135FC();
    v164 = sub_1D2113A7C();

    v165 = os_log_type_enabled(v163, v164);
    v166 = *(v0 + 544);
    if (v165)
    {
      v167 = *(v0 + 536);
      v168 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      v276 = v170;
      *v168 = 138412546;
      v171 = v41;
      v172 = _swift_stdlib_bridgeErrorToNSError();
      *(v168 + 4) = v172;
      *v169 = v172;
      *(v168 + 12) = 2080;
      v173 = sub_1D20B75F0(v167, v166, &v276);

      *(v168 + 14) = v173;
      _os_log_impl(&dword_1D209F000, v163, v164, "URLSession Error while trying to fetch Energy Intervals. %@ | traceId: %s", v168, 0x16u);
      sub_1D20A862C(v169, &qword_1EC6C7950, qword_1D21153D0);
      MEMORY[0x1D3896EB0](v169, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v170);
      MEMORY[0x1D3896EB0](v170, -1, -1);
      MEMORY[0x1D3896EB0](v168, -1, -1);
    }

    else
    {
    }

    v174 = *(v0 + 424);
    v175 = *(v0 + 408);
    *(v0 + 360) = v41;
    v176 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A0, &qword_1D2115B70);
    v177 = swift_dynamicCast();
    v178 = *(v0 + 528);
    v179 = *(v0 + 520);
    v180 = *(v0 + 512);
    if (v177)
    {
      v181 = *(v0 + 424);

      sub_1D20D4814(v181, type metadata accessor for NetworkError);
      swift_willThrow();
    }

    else
    {
      v182 = *(v0 + 408);
      sub_1D20D47CC(qword_1EE0841B0, type metadata accessor for NetworkError);
      swift_allocError();
      sub_1D20F5FDC(v41, v183);
      swift_willThrow();
    }

    (*(v179 + 8))(v178, v180);
    v184 = *(v0 + 528);
    v186 = *(v0 + 496);
    v185 = *(v0 + 504);
    v188 = *(v0 + 472);
    v187 = *(v0 + 480);
    v190 = *(v0 + 456);
    v189 = *(v0 + 464);
    v192 = *(v0 + 424);
    v191 = *(v0 + 432);
    v193 = *(v0 + 416);

    v194 = *(v0 + 8);
    goto LABEL_44;
  }

  v72 = **(v0 + 496);
  if (!v72 || !*(v72 + 16))
  {
    v87 = *(v0 + 544);
    v88 = *(v0 + 536);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
    v89 = swift_allocObject();
    *(v89 + 32) = 0x64496563617274;
    *(v89 + 16) = xmmword_1D2114850;
    *(v89 + 72) = MEMORY[0x1E69E6158];
    *(v89 + 40) = 0xE700000000000000;
    *(v89 + 48) = v88;
    *(v89 + 56) = v87;

    v90 = sub_1D20CE8BC(v89);
    swift_setDeallocating();
    sub_1D20A862C(v89 + 32, &qword_1EC6C73D8, &qword_1D21153A0);
    swift_deallocClassInstance();
    v3 = 0x1E696A000uLL;
    v4 = 0x1E83F6000uLL;
    v91 = [objc_opt_self() processInfo];
    v5 = 0x1E83F6000uLL;
    v92 = [v91 processName];

    v93 = sub_1D21137CC();
    v95 = v94;

    LOWORD(v276) = 257;
    BYTE2(v276) = 0;
    v277 = v93;
    v278 = v95;
    v279 = v90;
    static AutoBugCaptureManager.sendIssue(_:)(&v276);

    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v96 = *(v0 + 544);
    v97 = sub_1D211362C();
    __swift_project_value_buffer(v97, qword_1EE087438);

    v98 = sub_1D21135FC();
    v99 = sub_1D2113A7C();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = *(v0 + 544);
      v101 = *(v0 + 536);
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v276 = v103;
      *v102 = 136315138;
      *(v102 + 4) = sub_1D20B75F0(v101, v100, &v276);
      _os_log_impl(&dword_1D209F000, v98, v99, "No EnergyWindows returned in response | traceId: %s", v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v103);
      v104 = v103;
      v4 = 0x1E83F6000uLL;
      MEMORY[0x1D3896EB0](v104, -1, -1);
      v105 = v102;
      v3 = 0x1E696A000uLL;
      MEMORY[0x1D3896EB0](v105, -1, -1);
    }

    v106 = *(v0 + 496);
    v107 = *(v0 + 408);
    sub_1D20D47CC(qword_1EE0841B0, type metadata accessor for NetworkError);
    v108 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v271 = v108;
    swift_willThrow();

    sub_1D20D4814(v106, type metadata accessor for EnergyWindows);
    goto LABEL_25;
  }

  v73 = *(v0 + 480);
  v74 = MEMORY[0x1D3896910](v17);
  sub_1D20BB8E8(v8);
  objc_autoreleasePoolPop(v74);
  if (qword_1EE084040 != -1)
  {
    swift_once();
  }

  v76 = *(v0 + 488);
  v75 = *(v0 + 496);
  v77 = *(v0 + 472);
  v78 = *(v0 + 480);
  v79 = *(v0 + 440);
  v80 = *(v0 + 448);
  v272 = *(v0 + 432);
  v81 = sub_1D20CFDF8(600, qword_1EE0874E0, *algn_1EE0874E8);
  sub_1D21130DC();
  v82 = *(v76 + 20);
  sub_1D20A862C(v75 + v82, &qword_1EC6C7248, &qword_1D2114A80);
  v83 = v77;
  v84 = *(v80 + 16);
  v84(v75 + v82, v83, v79);
  v85 = (*(v80 + 56))(v75 + v82, 0, 1, v79);
  v86 = MEMORY[0x1D3896910](v85);
  sub_1D20BBB90(v8, v272);
  objc_autoreleasePoolPop(v86);
  sub_1D20AD058(*(v0 + 432), *(v0 + 496) + *(*(v0 + 488) + 24));
  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v195 = *(v0 + 544);
  v196 = *(v0 + 480);
  v197 = *(v0 + 464);
  v198 = *(v0 + 440);
  v199 = sub_1D211362C();
  __swift_project_value_buffer(v199, qword_1EE0874C0);
  v269 = v84;
  v84(v197, v196, v198);

  v200 = sub_1D21135FC();
  v201 = sub_1D2113A6C();

  if (os_log_type_enabled(v200, v201))
  {
    v259 = *(v0 + 536);
    v261 = *(v0 + 544);
    v202 = *(v0 + 464);
    v203 = *(v0 + 448);
    v273 = *(v0 + 440);
    v204 = swift_slowAlloc();
    v264 = swift_slowAlloc();
    v276 = v264;
    *v204 = 136315394;
    v205 = sub_1D20D5C30();
    v206 = sub_1D21130EC();
    v207 = [v205 stringFromDate_];

    v208 = sub_1D21137CC();
    v210 = v209;

    v211 = v273;
    v274 = *(v203 + 8);
    v274(v202, v211);
    v212 = sub_1D20B75F0(v208, v210, &v276);

    *(v204 + 4) = v212;
    *(v204 + 12) = 2080;
    *(v204 + 14) = sub_1D20B75F0(v259, v261, &v276);
    _os_log_impl(&dword_1D209F000, v200, v201, "Window Response valid until %s | traceId: %s", v204, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3896EB0](v264, -1, -1);
    MEMORY[0x1D3896EB0](v204, -1, -1);
  }

  else
  {
    v213 = *(v0 + 464);
    v214 = *(v0 + 440);
    v215 = *(v0 + 448);

    v274 = *(v215 + 8);
    v274(v213, v214);
  }

  v216 = *(v0 + 544);

  v217 = sub_1D21135FC();
  v218 = sub_1D2113A6C();

  if (os_log_type_enabled(v217, v218))
  {
    v219 = *(v0 + 544);
    v220 = *(v0 + 536);
    v221 = swift_slowAlloc();
    v222 = swift_slowAlloc();
    v276 = v222;
    *v221 = 134218242;
    *(v221 + 4) = v81;
    *(v221 + 12) = 2080;
    *(v221 + 14) = sub_1D20B75F0(v220, v219, &v276);
    _os_log_impl(&dword_1D209F000, v217, v218, "Adding response jitter %fs | traceId: %s", v221, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v222);
    MEMORY[0x1D3896EB0](v222, -1, -1);
    MEMORY[0x1D3896EB0](v221, -1, -1);
  }

  v223 = *(v0 + 544);
  v269(*(v0 + 456), *(v0 + 472), *(v0 + 440));

  v224 = sub_1D21135FC();
  v225 = sub_1D2113A6C();

  v226 = os_log_type_enabled(v224, v225);
  v227 = *(v0 + 584);
  v268 = *(v0 + 568);
  v270 = *(v0 + 576);
  v267 = *(v0 + 544);
  if (v226)
  {
    v262 = *(v0 + 512);
    v265 = *(v0 + 528);
    v258 = *(v0 + 480);
    v260 = *(v0 + 520);
    log = v224;
    v257 = *(v0 + 472);
    v228 = *(v0 + 456);
    v253 = *(v0 + 448);
    v229 = *(v0 + 440);
    v254 = *(v0 + 536);
    v230 = swift_slowAlloc();
    v255 = swift_slowAlloc();
    v276 = v255;
    *v230 = 136315394;
    v231 = sub_1D20D5C30();
    v232 = sub_1D21130EC();
    v233 = [v231 stringFromDate_];

    v234 = sub_1D21137CC();
    v236 = v235;

    v274(v228, v229);
    v237 = sub_1D20B75F0(v234, v236, &v276);

    *(v230 + 4) = v237;
    *(v230 + 12) = 2080;
    v238 = sub_1D20B75F0(v254, v267, &v276);

    *(v230 + 14) = v238;
    _os_log_impl(&dword_1D209F000, log, v225, "Window Response re-poll date %s | traceId: %s", v230, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3896EB0](v255, -1, -1);
    MEMORY[0x1D3896EB0](v230, -1, -1);

    sub_1D20B98A4(v268, v270);

    v274(v257, v229);
    v274(v258, v229);
    (*(v260 + 8))(v265, v262);
  }

  else
  {
    v239 = *(v0 + 520);
    v263 = *(v0 + 512);
    v266 = *(v0 + 528);
    v241 = *(v0 + 472);
    v240 = *(v0 + 480);
    v242 = *(v0 + 448);
    v243 = *(v0 + 456);
    v244 = *(v0 + 440);

    sub_1D20B98A4(v268, v270);

    v274(v243, v244);
    v274(v241, v244);
    v274(v240, v244);
    (*(v239 + 8))(v266, v263);
  }

  v245 = *(v0 + 528);
  v246 = *(v0 + 496);
  v248 = *(v0 + 472);
  v247 = *(v0 + 480);
  v250 = *(v0 + 456);
  v249 = *(v0 + 464);
  v252 = *(v0 + 424);
  v251 = *(v0 + 432);
  v275 = *(v0 + 416);
  sub_1D20D4874(v246, *(v0 + 376));
  sub_1D20D4814(v246, type metadata accessor for EnergyWindows);

  v194 = *(v0 + 8);
LABEL_44:

  v194();
}

uint64_t sub_1D20D4310()
{
  v49 = v0;
  v1 = v0[74];
  v2 = v0[68];
  v3 = v0[67];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2114850;
  *(inited + 32) = 0x64496563617274;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v2;

  v5 = v1;
  v6 = sub_1D20CE8BC(inited);
  swift_setDeallocating();
  sub_1D20A862C(inited + 32, &qword_1EC6C73D8, &qword_1D21153A0);
  v7 = [objc_opt_self() processInfo];
  v8 = [v7 processName];

  v9 = sub_1D21137CC();
  v11 = v10;

  LOWORD(v48[0]) = 257;
  BYTE2(v48[0]) = 5;
  v48[1] = v9;
  v48[2] = v11;
  v48[3] = v6;
  static AutoBugCaptureManager.sendIssue(_:)(v48);

  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v12 = v0[68];
  v13 = sub_1D211362C();
  __swift_project_value_buffer(v13, qword_1EE0874C0);

  v14 = v1;
  v15 = sub_1D21135FC();
  v16 = sub_1D2113A7C();

  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[68];
  if (v17)
  {
    v19 = v0[67];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v48[0] = v22;
    *v20 = 138412546;
    v23 = v1;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v24;
    *v21 = v24;
    *(v20 + 12) = 2080;
    v25 = sub_1D20B75F0(v19, v18, v48);

    *(v20 + 14) = v25;
    _os_log_impl(&dword_1D209F000, v15, v16, "URLSession Error while trying to fetch Energy Intervals. %@ | traceId: %s", v20, 0x16u);
    sub_1D20A862C(v21, &qword_1EC6C7950, qword_1D21153D0);
    MEMORY[0x1D3896EB0](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1D3896EB0](v22, -1, -1);
    MEMORY[0x1D3896EB0](v20, -1, -1);
  }

  else
  {
  }

  v26 = v0[53];
  v27 = v0[51];
  v0[45] = v1;
  v28 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A0, &qword_1D2115B70);
  v29 = swift_dynamicCast();
  v30 = v0[66];
  v31 = v0[65];
  v32 = v0[64];
  if (v29)
  {
    v33 = v0[53];

    sub_1D20D4814(v33, type metadata accessor for NetworkError);
    swift_willThrow();
  }

  else
  {
    v34 = v0[51];
    sub_1D20D47CC(qword_1EE0841B0, type metadata accessor for NetworkError);
    swift_allocError();
    sub_1D20F5FDC(v1, v35);
    swift_willThrow();
  }

  (*(v31 + 8))(v30, v32);
  v36 = v0[66];
  v38 = v0[62];
  v37 = v0[63];
  v40 = v0[59];
  v39 = v0[60];
  v42 = v0[57];
  v41 = v0[58];
  v44 = v0[53];
  v43 = v0[54];
  v45 = v0[52];

  v46 = v0[1];

  return v46();
}

uint64_t sub_1D20D47CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D20D4814(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D20D4874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnergyWindows(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D20D4A2C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1D211362C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);

  return sub_1D211360C();
}

uint64_t sub_1D20D4AB4@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_1D21132EC();
  v28 = *(v1 - 8);
  v29 = v1;
  v2 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2112E7C();
  v25 = *(v5 - 8);
  v26 = v5;
  v6 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() currentCalendar];
  sub_1D211326C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C72A0, &qword_1D2115390);
  v10 = sub_1D21132CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D2116780;
  v15 = v14 + v13;
  v16 = *(v11 + 104);
  v16(v15, *MEMORY[0x1E6969A68], v10);
  v16(v15 + v12, *MEMORY[0x1E6969A78], v10);
  v16(v15 + 2 * v12, *MEMORY[0x1E6969A48], v10);
  v17 = v28;
  v16(v15 + 3 * v12, *MEMORY[0x1E6969A58], v10);
  v18 = v29;
  v16(v15 + 4 * v12, *MEMORY[0x1E6969A88], v10);
  sub_1D20BFD3C(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D211324C();

  v19 = *(v17 + 8);
  v19(v4, v18);
  result = sub_1D2112E1C();
  v21 = 0;
  if ((v22 & 1) == 0)
  {
    if (result > 19)
    {
      if (result > 0x31)
      {
        v23 = 80;
      }

      else
      {
        v23 = 50;
      }

      v24 = __OFADD__(result, v23 - result);
      result = v23;
      if (!v24)
      {
        goto LABEL_6;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v21 = result;
  }

  if (!__OFSUB__(20, v21))
  {
    result = 20;
    if (!__OFADD__(v21, 20 - v21))
    {
LABEL_6:
      sub_1D2112E2C();
      sub_1D21132AC();
      sub_1D211327C();
      v19(v4, v18);
      return (*(v25 + 8))(v8, v26);
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1D20D4E80@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v36 = sub_1D2112E7C();
  v39 = *(v36 - 8);
  v1 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D211321C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1D21132EC();
  v37 = *(v38 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7298, &unk_1D21149F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v34 - v14;
  v16 = sub_1D211335C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v34 - v22;
  sub_1D21132FC();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1D20D5BC8(v15);
    v24 = sub_1D211319C();
    return (*(*(v24 - 8) + 56))(v40, 1, 1, v24);
  }

  else
  {
    v26 = *(v17 + 32);
    v35 = v23;
    v26(v23, v15, v16);
    (*(v5 + 104))(v8, *MEMORY[0x1E6969868], v4);
    v34 = v11;
    sub_1D211322C();
    (*(v5 + 8))(v8, v4);
    (*(v17 + 16))(v21, v23, v16);
    sub_1D21132BC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C72A0, &qword_1D2115390);
    v27 = sub_1D21132CC();
    v28 = *(v27 - 8);
    v29 = *(v28 + 72);
    v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1D2116790;
    v32 = *(v28 + 104);
    v32(v31 + v30, *MEMORY[0x1E6969A68], v27);
    v32(v31 + v30 + v29, *MEMORY[0x1E6969A78], v27);
    v32(v31 + v30 + 2 * v29, *MEMORY[0x1E6969A48], v27);
    v32(v31 + v30 + 3 * v29, *MEMORY[0x1E6969A58], v27);
    v32(v31 + v30 + 4 * v29, *MEMORY[0x1E6969A88], v27);
    v32(v31 + v30 + 5 * v29, *MEMORY[0x1E6969A98], v27);
    sub_1D20BFD3C(v31);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v33 = v34;
    sub_1D211324C();

    sub_1D2112E1C();
    sub_1D2112E2C();
    sub_1D2112E5C();
    sub_1D2112D9C();
    sub_1D211327C();
    (*(v39 + 8))(v3, v36);
    (*(v37 + 8))(v33, v38);
    return (*(v17 + 8))(v35, v16);
  }
}

uint64_t sub_1D20D54A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7298, &unk_1D21149F0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v36 = &v29 - v2;
  v35 = sub_1D211335C();
  v32 = *(v35 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v29 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D21130AC();
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1D211308C();
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D211306C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D211307C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D21130CC();
  __swift_allocate_value_buffer(v22, qword_1EE0874F0);
  v23 = v32;
  __swift_project_value_buffer(v22, qword_1EE0874F0);
  (*(v18 + 104))(v21, *MEMORY[0x1E6969360], v17);
  v24 = v30;
  v25 = v12;
  v26 = v35;
  (*(v13 + 104))(v16, *MEMORY[0x1E6969358], v25);
  (*(v8 + 104))(v11, *MEMORY[0x1E6969370], v31);
  (*(v33 + 104))(v24, *MEMORY[0x1E6969380], v34);
  v27 = v36;
  sub_1D211332C();
  result = (*(v23 + 48))(v27, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v23 + 32))(v29, v27, v26);
    return sub_1D211309C();
  }

  return result;
}

id sub_1D20D58E0()
{
  v0 = sub_1D211321C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D21132EC();
  v5 = *(v20 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D211320C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1D21131EC();
  v15 = sub_1D21131FC();
  (*(v10 + 8))(v13, v9);
  [v14 setLocale_];

  (*(v1 + 104))(v4, *MEMORY[0x1E6969868], v0);
  sub_1D211322C();
  (*(v1 + 8))(v4, v0);
  v16 = sub_1D211325C();
  (*(v5 + 8))(v8, v20);
  [v14 setCalendar_];

  v17 = sub_1D21137BC();
  [v14 setDateFormat_];

  return v14;
}

uint64_t sub_1D20D5BC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7298, &unk_1D21149F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D20D5C30()
{
  v0 = sub_1D211321C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D21132EC();
  v5 = *(v20 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D211320C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1D21131EC();
  v15 = sub_1D21131FC();
  (*(v10 + 8))(v13, v9);
  [v14 setLocale_];

  (*(v1 + 104))(v4, *MEMORY[0x1E6969868], v0);
  sub_1D211322C();
  (*(v1 + 8))(v4, v0);
  v16 = sub_1D211325C();
  (*(v5 + 8))(v8, v20);
  [v14 setCalendar_];

  v17 = sub_1D21137BC();
  [v14 setDateFormat_];

  return v14;
}

uint64_t static EnergyServices.gridIDLookup(_:withSession:)(uint64_t a1, double a2, double a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D20D5FD8;

  return sub_1D20C8AB4(a1, a2, a3);
}

uint64_t sub_1D20D5FD8(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v7 = *v3;

  if (v2)
  {

    v8 = 0;
    v9 = 0;
  }

  else
  {
    v9 = a2;
    v8 = a1;
  }

  v10 = *(v7 + 8);

  return v10(v8, v9);
}

uint64_t static EnergyServices.energyWindows(for:withSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = sub_1D20D61B8;

  return sub_1D20D1DBC(a1, a2, a3, a4);
}

uint64_t sub_1D20D61B8()
{
  v2 = *(*v1 + 24);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_1D20D636C;
  }

  else
  {
    v3 = sub_1D20D62D0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D20D62D0()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for EnergyWindows(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D20D636C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for EnergyWindows(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t _s12HomeServices06EnergyB0V19getForecastGuidance8withType0G6GridId0G8RatePlan0G7SessionAA10HSGuidanceVAA0nH0O_SSAA06HSRateL0VSgSo12NSURLSessionCtYaAA0N5ErrorOYKFZ(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  v9 = *(*(sub_1D211319C() - 8) + 64) + 15;
  *(v7 + 64) = swift_task_alloc();
  *(v7 + 72) = swift_task_alloc();
  v10 = type metadata accessor for HSCleanGuidanceThresholds(0);
  *(v7 + 80) = v10;
  v11 = *(v10 - 8);
  *(v7 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  *(v7 + 96) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7598, &qword_1D2115B60) - 8) + 64) + 15;
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();
  v14 = *(*(type metadata accessor for HSGuidanceError(0) - 8) + 64) + 15;
  *(v7 + 120) = swift_task_alloc();
  v15 = type metadata accessor for HSGuidanceForecast(0);
  *(v7 + 128) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 153) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1D20D65B4, 0, 0);
}

uint64_t sub_1D20D65B4()
{
  if (qword_1EE084300 != -1)
  {
    swift_once();
  }

  *(v0 + 152) = *(v0 + 153);
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1D20D6694;
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);

  return sub_1D20C0CFC(v2, v6, v7, (v0 + 152), v4, v5, v3);
}

uint64_t sub_1D20D6694()
{
  v2 = *(*v1 + 144);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_1D20D6A44;
  }

  else
  {
    v3 = sub_1D20D67A4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D20D67A4()
{
  v1 = v0[17];
  v2 = *(v1 + 8);
  if (v2 && *(v2 + 16))
  {
    v3 = v0[16];
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[10];
    v8 = v0[8];
    v7 = v0[9];
    v9 = *(v0[11] + 80);
    sub_1D20D8F58(v2 + ((v9 + 32) & ~v9), v5, type metadata accessor for HSCleanGuidanceThresholds);
    v10 = *(v3 + 24);
    sub_1D2112C0C();
    sub_1D2112BDC();
    sub_1D2112BEC();
    v11 = *(v5 + *(v6 + 20));
    v12 = *(v5 + *(v6 + 24));
    sub_1D20D8FC0(v5, type metadata accessor for HSCleanGuidanceThresholds);
    v13 = 0;
    *(v4 + *(v6 + 20)) = v11;
    *(v4 + *(v6 + 24)) = v12;
    v1 = v0[17];
  }

  else
  {
    v13 = 1;
  }

  v14 = v0[16];
  v15 = v0[13];
  v16 = v0[14];
  v29 = v16;
  v30 = v0[12];
  v17 = v0[9];
  v31 = v0[8];
  v18 = v0[2];
  (*(v0[11] + 56))(v15, v13, 1, v0[10]);
  sub_1D20D86CC(v15, v16);
  sub_1D21131CC();
  v28 = *v1;
  v19 = v14[6];
  v20 = type metadata accessor for HSGuidance();
  v21 = v20[7];
  v22 = sub_1D2112C2C();
  v23 = *(*(v22 - 8) + 16);
  v23(v18 + v21, v1 + v19, v22);
  v24 = v14[8];
  v25 = *(v1 + v14[7]);
  v23(v18 + v20[9], v1 + v24, v22);
  *(v18 + v20[5]) = v28;
  sub_1D20D86CC(v29, v18 + v20[6]);
  *(v18 + v20[8]) = v25;

  sub_1D20D8FC0(v1, type metadata accessor for HSGuidanceForecast);

  v26 = v0[1];

  return v26();
}

uint64_t sub_1D20D6A44()
{
  v1 = v0[17];
  v2 = v0[14];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[8];
  v5 = v0[9];
  sub_1D20D88A0(v0[15], v0[7], type metadata accessor for HSGuidanceError);

  v7 = v0[1];

  return v7();
}

uint64_t HSGuidance.init(identifier:type:thresholds:interval:values:validInterval:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a2;
  v14 = sub_1D21131DC();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v15 = type metadata accessor for HSGuidance();
  *(a7 + v15[5]) = v13;
  sub_1D20D86CC(a3, a7 + v15[6]);
  v16 = v15[7];
  v17 = sub_1D2112C2C();
  v20 = *(*(v17 - 8) + 32);
  (v20)((v17 - 8), a7 + v16, a4, v17);
  *(a7 + v15[8]) = a5;
  v18 = a7 + v15[9];

  return v20(v18, a6, v17);
}

uint64_t HSGuidance.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D21131DC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HSGuidance.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for HSGuidance();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t HSGuidance.thresholds.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HSGuidance() + 24);

  return sub_1D20D8788(v3, a1);
}

uint64_t HSGuidance.interval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HSGuidance() + 28);
  v4 = sub_1D2112C2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HSGuidance.values.getter()
{
  v1 = *(v0 + *(type metadata accessor for HSGuidance() + 32));
}

uint64_t HSGuidance.validInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HSGuidance() + 36);
  v4 = sub_1D2112C2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D20D6E68()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6C61767265746E69;
  v4 = 0x7365756C6176;
  if (v1 != 4)
  {
    v4 = 0x746E4964696C6176;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701869940;
  if (v1 != 1)
  {
    v5 = 0x6C6F687365726874;
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

uint64_t sub_1D20D6F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D20D8D4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D20D6F50(uint64_t a1)
{
  v2 = sub_1D20D87F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20D6F8C(uint64_t a1)
{
  v2 = sub_1D20D87F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HSGuidance.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7780, &qword_1D21167B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20D87F8();
  sub_1D2113F3C();
  v23 = 0;
  sub_1D21131DC();
  sub_1D20D8A40(&qword_1EE0843D0, MEMORY[0x1E69695A8]);
  sub_1D2113DEC();
  if (!v2)
  {
    v11 = type metadata accessor for HSGuidance();
    v22 = *(v3 + v11[5]);
    v21 = 1;
    sub_1D20D884C();
    sub_1D2113DEC();
    v12 = v11[6];
    v20 = 2;
    type metadata accessor for HSCleanGuidanceThresholds(0);
    sub_1D20D8A40(qword_1EE083F40, type metadata accessor for HSCleanGuidanceThresholds);
    sub_1D2113DAC();
    v13 = v11[7];
    v19 = 3;
    sub_1D2112C2C();
    sub_1D20D8A40(&qword_1EE0843E8, MEMORY[0x1E6968130]);
    sub_1D2113DEC();
    v16[1] = *(v3 + v11[8]);
    v18 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7788, &qword_1D21167C0);
    sub_1D20D895C(&qword_1EE083DC8, qword_1EE084048);
    sub_1D2113DEC();
    v14 = v11[9];
    v17 = 5;
    sub_1D2113DEC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t HSGuidance.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HSCleanGuidanceThresholds(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7598, &qword_1D2115B60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v18 - v11;
  sub_1D21131DC();
  sub_1D20D8A40(&qword_1EC6C7790, MEMORY[0x1E69695A8]);
  sub_1D211374C();
  v13 = type metadata accessor for HSGuidance();
  v14 = *(v1 + v13[5]);
  sub_1D2113EFC();
  sub_1D20D8788(v1 + v13[6], v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1D2113EEC();
  }

  else
  {
    sub_1D20D88A0(v12, v8, type metadata accessor for HSCleanGuidanceThresholds);
    sub_1D2113EEC();
    HSCleanGuidanceThresholds.hash(into:)();
    sub_1D20D8FC0(v8, type metadata accessor for HSCleanGuidanceThresholds);
  }

  v15 = v13[7];
  sub_1D2112C2C();
  sub_1D20D8A40(&qword_1EC6C7798, MEMORY[0x1E6968130]);
  sub_1D211374C();
  sub_1D20D8184(a1, *(v2 + v13[8]));
  v16 = v2 + v13[9];
  return sub_1D211374C();
}

uint64_t HSGuidance.hashValue.getter()
{
  sub_1D2113ECC();
  HSGuidance.hash(into:)(v1);
  return sub_1D2113F1C();
}

uint64_t HSGuidance.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v40 = sub_1D2112C2C();
  v36 = *(v40 - 8);
  v3 = *(v36 + 64);
  v4 = MEMORY[0x1EEE9AC00](v40);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7598, &qword_1D2115B60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v31 - v9;
  v11 = sub_1D21131DC();
  v37 = *(v11 - 8);
  v12 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C77A0, &qword_1D21167C8);
  v39 = *(v41 - 8);
  v14 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v16 = &v31 - v15;
  v17 = type metadata accessor for HSGuidance();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20D87F8();
  v42 = v16;
  v22 = v43;
  sub_1D2113F2C();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v43 = v10;
  v32 = v17;
  v51 = 0;
  sub_1D20D8A40(&qword_1EE083D98, MEMORY[0x1E69695A8]);
  v23 = v38;
  sub_1D2113D7C();
  v24 = *(v37 + 32);
  v38 = v11;
  v24(v20, v23, v11);
  v49 = 1;
  sub_1D20D8908();
  sub_1D2113D7C();
  v25 = v32;
  v20[v32[5]] = v50;
  type metadata accessor for HSCleanGuidanceThresholds(0);
  v48 = 2;
  sub_1D20D8A40(&qword_1EE083908, type metadata accessor for HSCleanGuidanceThresholds);
  v26 = v43;
  sub_1D2113D3C();
  sub_1D20D86CC(v26, &v20[v25[6]]);
  v47 = 3;
  sub_1D20D8A40(&qword_1EE083DB0, MEMORY[0x1E6968130]);
  v27 = v35;
  sub_1D2113D7C();
  v28 = v27;
  v29 = *(v36 + 32);
  v29(&v20[v32[7]], v28, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7788, &qword_1D21167C0);
  v46 = 4;
  sub_1D20D895C(&qword_1EE0836A0, &qword_1EE083C00);
  sub_1D2113D7C();
  *&v20[v32[8]] = v44;
  v45 = 5;
  sub_1D2113D7C();
  (*(v39 + 8))(v42, v41);
  v29(&v20[v32[9]], v34, v40);
  sub_1D20D8F58(v20, v33, type metadata accessor for HSGuidance);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D20D8FC0(v20, type metadata accessor for HSGuidance);
}

uint64_t sub_1D20D7DF8()
{
  sub_1D2113ECC();
  HSGuidance.hash(into:)(v1);
  return sub_1D2113F1C();
}

uint64_t sub_1D20D7E3C()
{
  sub_1D2113ECC();
  HSGuidance.hash(into:)(v1);
  return sub_1D2113F1C();
}

uint64_t sub_1D20D7E7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1D38967E0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v6 == 0.0)
      {
        v7 = 0.0;
      }

      result = MEMORY[0x1D3896810](*&v7);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D20D7EE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1D38967E0](v3);
  if (v3)
  {
    v5 = (a2 + 72);
    do
    {
      v6 = *(v5 - 5);
      v7 = *(v5 - 4);
      v8 = *(v5 - 3);
      v9 = *(v5 - 2);
      v10 = *(v5 - 1);
      v11 = *v5;

      sub_1D211375C();
      sub_1D211375C();
      if (v10 == 0.0)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = v10;
      }

      MEMORY[0x1D3896810](*&v12);
      if (v11 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v11;
      }

      MEMORY[0x1D3896810](*&v13);

      v5 += 6;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D20D7FC0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for HSCleanGuidanceThresholds(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x1D38967E0](v8);
  if (v8)
  {
    v10 = *(v3 + 20);
    v11 = *(v3 + 24);
    v12 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = *(v4 + 72);
    do
    {
      sub_1D20D8F58(v12, v7, type metadata accessor for HSCleanGuidanceThresholds);
      sub_1D2112C2C();
      sub_1D20D8A40(&qword_1EC6C7798, MEMORY[0x1E6968130]);
      sub_1D211374C();
      v14 = *&v7[v10];
      if (v14 == 0.0)
      {
        v14 = 0.0;
      }

      MEMORY[0x1D3896810](*&v14);
      v15 = *&v7[v11];
      if (v15 == 0.0)
      {
        v15 = 0.0;
      }

      MEMORY[0x1D3896810](*&v15);
      result = sub_1D20D8FC0(v7, type metadata accessor for HSCleanGuidanceThresholds);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1D20D8184(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for HSGuidanceValue(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x1D38967E0](v8);
  if (v8)
  {
    v10 = *(v3 + 20);
    v11 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_1D20D8F58(v11, v7, type metadata accessor for HSGuidanceValue);
      sub_1D2112C2C();
      sub_1D20D8A40(&qword_1EC6C7798, MEMORY[0x1E6968130]);
      sub_1D211374C();
      v13 = *&v7[v10];
      if (v13 == 0.0)
      {
        v13 = 0.0;
      }

      MEMORY[0x1D3896810](*&v13);
      result = sub_1D20D8FC0(v7, type metadata accessor for HSGuidanceValue);
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t _s12HomeServices10HSGuidanceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HSCleanGuidanceThresholds(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7598, &qword_1D2115B60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C77B8, &qword_1D21169E8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  if ((sub_1D21131BC() & 1) == 0)
  {
    goto LABEL_18;
  }

  v17 = type metadata accessor for HSGuidance();
  if (*(a1 + *(v17 + 20)) != *(a2 + *(v17 + 20)))
  {
    goto LABEL_18;
  }

  v18 = v17;
  v19 = *(v17 + 24);
  v20 = *(v13 + 48);
  sub_1D20D8788(a1 + v19, v16);
  sub_1D20D8788(a2 + v19, &v16[v20]);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) != 1)
  {
    sub_1D20D8788(v16, v12);
    if (v21(&v16[v20], 1, v4) != 1)
    {
      sub_1D20D88A0(&v16[v20], v8, type metadata accessor for HSCleanGuidanceThresholds);
      if ((sub_1D2112BCC() & 1) != 0 && *&v12[*(v4 + 20)] == *&v8[*(v4 + 20)])
      {
        v27 = *(v4 + 24);
        v28 = *&v12[v27];
        v29 = *&v8[v27];
        sub_1D20D8FC0(v8, type metadata accessor for HSCleanGuidanceThresholds);
        sub_1D20D8FC0(v12, type metadata accessor for HSCleanGuidanceThresholds);
        sub_1D20A862C(v16, &qword_1EC6C7598, &qword_1D2115B60);
        if (v28 == v29)
        {
          goto LABEL_6;
        }

LABEL_18:
        v24 = 0;
        return v24 & 1;
      }

      sub_1D20D8FC0(v8, type metadata accessor for HSCleanGuidanceThresholds);
      sub_1D20D8FC0(v12, type metadata accessor for HSCleanGuidanceThresholds);
      v25 = &qword_1EC6C7598;
      v26 = &qword_1D2115B60;
LABEL_17:
      sub_1D20A862C(v16, v25, v26);
      goto LABEL_18;
    }

    sub_1D20D8FC0(v12, type metadata accessor for HSCleanGuidanceThresholds);
LABEL_11:
    v25 = &qword_1EC6C77B8;
    v26 = &qword_1D21169E8;
    goto LABEL_17;
  }

  if (v21(&v16[v20], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_1D20A862C(v16, &qword_1EC6C7598, &qword_1D2115B60);
LABEL_6:
  v22 = v18[7];
  if ((sub_1D2112BCC() & 1) == 0 || (sub_1D20FCB58(*(a1 + v18[8]), *(a2 + v18[8])) & 1) == 0)
  {
    goto LABEL_18;
  }

  v23 = v18[9];
  v24 = sub_1D2112BCC();
  return v24 & 1;
}

uint64_t sub_1D20D86CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7598, &qword_1D2115B60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for HSGuidance()
{
  result = qword_1EE0848D8;
  if (!qword_1EE0848D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D20D8788(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7598, &qword_1D2115B60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D20D87F8()
{
  result = qword_1EE0848F8;
  if (!qword_1EE0848F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0848F8);
  }

  return result;
}

unint64_t sub_1D20D884C()
{
  result = qword_1EE0841A8;
  if (!qword_1EE0841A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0841A8);
  }

  return result;
}

uint64_t sub_1D20D88A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D20D8908()
{
  result = qword_1EE083C18;
  if (!qword_1EE083C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083C18);
  }

  return result;
}

uint64_t sub_1D20D895C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C7788, &qword_1D21167C0);
    sub_1D20D8A40(a2, type metadata accessor for HSGuidanceValue);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D20D8A40(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D20D8AB0()
{
  sub_1D21131DC();
  if (v0 <= 0x3F)
  {
    sub_1D20D8BD0(319, qword_1EE0844F8, type metadata accessor for HSCleanGuidanceThresholds, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D2112C2C();
      if (v2 <= 0x3F)
      {
        sub_1D20D8BD0(319, &qword_1EE084428, type metadata accessor for HSGuidanceValue, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D20D8BD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D20D8C48()
{
  result = qword_1EC6C77B0;
  if (!qword_1EC6C77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C77B0);
  }

  return result;
}

unint64_t sub_1D20D8CA0()
{
  result = qword_1EE0848E8;
  if (!qword_1EE0848E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0848E8);
  }

  return result;
}

unint64_t sub_1D20D8CF8()
{
  result = qword_1EE0848F0;
  if (!qword_1EE0848F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0848F0);
  }

  return result;
}

uint64_t sub_1D20D8D4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D2113E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D2113E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xEA00000000007364 || (sub_1D2113E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000 || (sub_1D2113E2C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_1D2113E2C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E4964696C6176 && a2 == 0xED00006C61767265)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D2113E2C();

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

uint64_t sub_1D20D8F58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D20D8FC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D20D9024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_1D20E76A0(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_1D20E4570(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_1D20E7990();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_1D20E7368(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_1D20D912C(uint64_t a1, uint64_t a2)
{
  v36 = sub_1D2112C6C();
  v4 = *(v36 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v36);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C7258, &qword_1D21149C8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v31 - v13;
  v15 = sub_1D2112D0C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2112F1C();
  sub_1D2112CFC();

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1D20A862C(v14, &unk_1EC6C7258, &qword_1D21149C8);
    return 0;
  }

  (*(v16 + 32))(v19, v14, v15);
  result = sub_1D2112C7C();
  if (!result)
  {
LABEL_12:
    (*(v16 + 8))(v19, v15);
    return 0;
  }

  v21 = result;
  v32 = v19;
  v33 = v16;
  v34 = v15;
  v31 = v10;
  v22 = *(result + 16);
  if (!v22)
  {
LABEL_11:

    v16 = v33;
    v15 = v34;
    v19 = v32;
    goto LABEL_12;
  }

  v23 = 0;
  v35 = v4 + 16;
  while (v23 < *(v21 + 16))
  {
    (*(v4 + 16))(v8, v21 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v23, v36);
    if (sub_1D2112C4C() == a1 && v24 == a2)
    {

LABEL_16:

      v28 = v31;
      v29 = v36;
      (*(v4 + 32))(v31, v8, v36);
      v30 = sub_1D2112C5C();
      (*(v33 + 8))(v32, v34);
      (*(v4 + 8))(v28, v29);
      return v30;
    }

    v25 = a1;
    v26 = a2;
    v27 = sub_1D2113E2C();

    if (v27)
    {
      goto LABEL_16;
    }

    ++v23;
    result = (*(v4 + 8))(v8, v36);
    a2 = v26;
    a1 = v25;
    if (v22 == v23)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D20D94F0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v39 = a2;
  v40 = a5;
  v10 = sub_1D2112B1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D211319C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D211317C();
  sub_1D211314C();
  v21 = v20;
  (*(v16 + 8))(v19, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73A8, "J{");
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E63B0];
  *(v22 + 16) = xmmword_1D2114850;
  v24 = MEMORY[0x1E69E6438];
  *(v22 + 56) = v23;
  *(v22 + 64) = v24;
  *(v22 + 32) = floor(v21 * 1000.0 / 300000.0) * 300000.0;
  v25 = sub_1D21137FC();
  v27 = v26;
  v28 = v39;
  v38[1] = a3;
  v39 = a4;
  sub_1D20D9968(a1, v28, a3, a4, v25, v27);
  if (v29)
  {
    (*(v11 + 16))(v14, v6, v10);
    sub_1D20DA6E0();
    if (v30)
    {
      sub_1D2112AEC();
    }

    sub_1D2112AEC();

    sub_1D2112AEC();

    sub_1D2112AEC();
    sub_1D2112AEC();
    v31 = v40;
    (*(v11 + 32))(v40, v14, v10);
    v32 = 0;
  }

  else
  {

    if (qword_1EC6C7170 != -1)
    {
      swift_once();
    }

    v33 = sub_1D211362C();
    __swift_project_value_buffer(v33, qword_1EC6CE850);
    v34 = sub_1D21135FC();
    v35 = sub_1D2113A7C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1D209F000, v34, v35, "Unable to generate HMAC Signature", v36, 2u);
      MEMORY[0x1D3896EB0](v36, -1, -1);
    }

    v32 = 1;
    v31 = v40;
  }

  return (*(v11 + 56))(v31, v32, 1, v10);
}

uint64_t sub_1D20D9968(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v119 = a5;
  v121 = a3;
  v122 = a4;
  v126 = a1;
  v127 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C77C0, &qword_1D2116A20);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v130 = v114 - v10;
  v131 = sub_1D21136BC();
  v129 = *(v131 - 8);
  v11 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v128 = v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C7258, &qword_1D21149C8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v124 = v114 - v15;
  v125 = sub_1D211381C();
  v132 = *(v125 - 8);
  v16 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v18 = v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = v114 - v21;
  v23 = sub_1D2112F9C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2112ADC();
  v28 = v23;
  v29 = v24;
  if ((*(v24 + 48))(v22, 1, v28) == 1)
  {
    sub_1D20A862C(v22, &qword_1EC6C7250, &qword_1D21149C0);
    if (qword_1EC6C7170 != -1)
    {
      swift_once();
    }

    v30 = sub_1D211362C();
    __swift_project_value_buffer(v30, qword_1EC6CE850);
    v31 = sub_1D21135FC();
    v32 = sub_1D2113A7C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1D209F000, v31, v32, "Unable to retrieve URL from request.", v33, 2u);
      MEMORY[0x1D3896EB0](v33, -1, -1);
    }

    return 0;
  }

  else
  {
    v118 = v7;
    v35 = *(v24 + 32);
    v116 = v28;
    v35(v27, v22, v28);
    sub_1D2112A7C();
    v117 = v8;
    if (v36)
    {
      sub_1D211382C();
      v120 = v37;
    }

    else
    {
      v120 = 0xE000000000000000;
    }

    sub_1D2112F4C();
    v114[1] = sub_1D211382C();
    v123 = v38;

    v39 = sub_1D2112AAC();
    if (v39)
    {
      v40 = v39;
    }

    else
    {
      v40 = MEMORY[0x1E69E7CC8];
    }

    v139 = v40;
    v41 = sub_1D20DA6E0();
    if (v42)
    {
      sub_1D20D9024(v41, v42, 0xD000000000000016, 0x80000001D211B140);
      v40 = v139;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v135 = v40;
    sub_1D20E76A0(v119, a6, 0xD00000000000001BLL, 0x80000001D211B0E0, isUniquelyReferenced_nonNull_native);
    v44 = v135;
    v139 = v135;
    v45 = v122;

    v46 = swift_isUniquelyReferenced_nonNull_native();
    v135 = v44;
    sub_1D20E76A0(v121, v45, 0xD00000000000001BLL, 0x80000001D211B120, v46);
    v47 = sub_1D20DA90C(v135);
    v121 = v48;
    v122 = v47;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7410, &qword_1D2115438);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1D2115280;
    sub_1D211380C();
    v50 = sub_1D21137DC();
    v52 = v51;
    v53 = *(v132 + 8);
    v54 = v125;
    v132 += 8;
    v53(v18, v125);
    if (v52 >> 60 == 15)
    {
      if (qword_1EC6C7170 != -1)
      {
        swift_once();
      }

      v55 = sub_1D211362C();
      __swift_project_value_buffer(v55, qword_1EC6CE850);
      v56 = sub_1D21135FC();
      v57 = sub_1D2113A7C();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_1D209F000, v56, v57, "String encoding failed. Returning empty string", v58, 2u);
        MEMORY[0x1D3896EB0](v58, -1, -1);
      }

      v59 = 0;
      v60 = 0xE000000000000000;
    }

    else
    {
      v59 = sub_1D211300C();
      v60 = v61;
      sub_1D20A1284(v50, v52);
    }

    *(v49 + 32) = v59;
    *(v49 + 40) = v60;
    sub_1D211380C();
    v62 = sub_1D21137DC();
    v64 = v63;
    v53(v18, v54);
    if (v64 >> 60 == 15)
    {
      if (qword_1EC6C7170 != -1)
      {
        swift_once();
      }

      v65 = sub_1D211362C();
      __swift_project_value_buffer(v65, qword_1EC6CE850);
      v66 = sub_1D21135FC();
      v67 = sub_1D2113A7C();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_1D209F000, v66, v67, "String encoding failed. Returning empty string", v68, 2u);
        MEMORY[0x1D3896EB0](v68, -1, -1);
      }

      v69 = 0;
      v70 = 0xE000000000000000;
    }

    else
    {
      v69 = sub_1D211300C();
      v70 = v71;
      sub_1D20A1284(v62, v64);
    }

    *(v49 + 48) = v69;
    *(v49 + 56) = v70;
    v72 = v124;
    sub_1D2112CCC();
    v73 = sub_1D2112D0C();
    v74 = *(v73 - 8);
    v75 = (*(v74 + 48))(v72, 1, v73);
    v123 = v27;
    if (v75 == 1)
    {
      sub_1D20A862C(v72, &unk_1EC6C7258, &qword_1D21149C8);
    }

    else
    {
      v76 = v72;
      v77 = sub_1D2112C9C();
      v79 = v78;
      (*(v74 + 8))(v76, v73);
      if (v79)
      {
        v80 = HIBYTE(v79) & 0xF;
        if ((v79 & 0x2000000000000000) == 0)
        {
          v80 = v77 & 0xFFFFFFFFFFFFLL;
        }

        if (v80)
        {
          sub_1D211380C();
          v81 = sub_1D21137DC();
          v83 = v82;
          v53(v18, v54);
          if (v83 >> 60 == 15)
          {
            if (qword_1EC6C7170 != -1)
            {
              swift_once();
            }

            v84 = sub_1D211362C();
            __swift_project_value_buffer(v84, qword_1EC6CE850);
            v85 = sub_1D21135FC();
            v86 = sub_1D2113A7C();
            if (os_log_type_enabled(v85, v86))
            {
              v87 = swift_slowAlloc();
              *v87 = 0;
              _os_log_impl(&dword_1D209F000, v85, v86, "String encoding failed. Returning empty string", v87, 2u);
              MEMORY[0x1D3896EB0](v87, -1, -1);
            }

            v88 = 0;
            v89 = 0xE000000000000000;
          }

          else
          {
            v88 = sub_1D211300C();
            v89 = v90;
            sub_1D20A1284(v81, v83);
          }

          v92 = *(v49 + 16);
          v91 = *(v49 + 24);
          if (v92 >= v91 >> 1)
          {
            v49 = sub_1D20B6FAC((v91 > 1), v92 + 1, 1, v49);
          }

          *(v49 + 16) = v92 + 1;
          v93 = v49 + 16 * v92;
          *(v93 + 32) = v88;
          *(v93 + 40) = v89;
        }

        else
        {
        }
      }
    }

    v95 = *(v49 + 16);
    v94 = *(v49 + 24);
    v115 = v29;
    if (v95 >= v94 >> 1)
    {
      v49 = sub_1D20B6FAC((v94 > 1), v95 + 1, 1, v49);
    }

    *(v49 + 16) = v95 + 1;
    v96 = v49 + 16 * v95;
    v97 = v121;
    *(v96 + 32) = v122;
    *(v96 + 40) = v97;
    v135 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7320, &qword_1D2114A98);
    sub_1D20DE7E4(&qword_1EE084418, &qword_1EC6C7320, &qword_1D2114A98);
    v98 = sub_1D211376C();
    v100 = v99;

    v101 = sub_1D20DADE8(v98, v100);
    v132 = v101;
    v103 = v102;
    v104 = v127;

    v135 = sub_1D20DADE8(v126, v104);
    v136 = v105;
    v106 = v128;
    sub_1D21136AC();
    v135 = v101;
    v136 = v103;
    sub_1D21136EC();
    sub_1D20DE668(&qword_1EE084448, MEMORY[0x1E6966620]);
    sub_1D20DE790();
    v107 = v130;
    sub_1D21136CC();
    v108 = v118;
    v137 = v118;
    v138 = sub_1D20DE7E4(&qword_1EE084450, &qword_1EC6C77C0, &qword_1D2116A20);
    v109 = __swift_allocate_boxed_opaque_existential_1(&v135);
    v110 = v117;
    (*(v117 + 16))(v109, v107, v108);
    __swift_project_boxed_opaque_existential_1(&v135, v137);
    sub_1D2112EBC();
    v111 = v133;
    v112 = v134;
    __swift_destroy_boxed_opaque_existential_1(&v135);
    v113 = sub_1D211300C();
    sub_1D20B98A4(v111, v112);
    sub_1D20B98A4(v132, v103);

    (*(v110 + 8))(v107, v108);
    (*(v129 + 8))(v106, v131);
    (*(v115 + 8))(v123, v116);
    return v113;
  }
}

uint64_t sub_1D20DA6E0()
{
  v0 = sub_1D21136EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = sub_1D211369C();
  v5 = *(v15[0] - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v15[0]);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2112AFC();
  if (v10 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  if (v10 >> 60 == 15)
  {
    v12 = 0xC000000000000000;
  }

  else
  {
    v12 = v10;
  }

  sub_1D20DE668(&qword_1EE084448, MEMORY[0x1E6966620]);
  sub_1D211368C();
  sub_1D20C7064(v11, v12);
  sub_1D20DE488(v11, v12);
  sub_1D20B98A4(v11, v12);
  sub_1D211367C();
  (*(v1 + 8))(v4, v0);
  v13 = sub_1D20DB308();
  sub_1D20B98A4(v11, v12);
  (*(v5 + 8))(v8, v15[0]);
  return v13;
}

uint64_t sub_1D20DA90C(uint64_t a1)
{
  v2 = sub_1D211381C();
  v47 = *(v2 - 8);
  v3 = *(v47 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v48 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = 0;
  v52 = 0xE000000000000000;
  v6 = *(a1 + 16);
  v44 = v4;
  if (v6)
  {
    v7 = sub_1D20DC67C(v6, 0);
    v8 = sub_1D20DE1C8(&v49, v7 + 4, v6, a1);

    sub_1D20DEC68();
    if (v8 != v6)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v2 = v44;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v49 = v7;
  sub_1D20DD0D0(&v49);
  v9 = *(v49 + 2);
  if (v9)
  {
    v47 += 8;
    v43 = v49;
    v10 = (v49 + 40);
    do
    {
      if (*(a1 + 16))
      {
        v15 = *(v10 - 1);
        v14 = *v10;

        v16 = sub_1D20E4570(v15, v14);
        if (v17)
        {
          v18 = (*(a1 + 56) + 16 * v16);
          v19 = v18[1];
          v45 = *v18;
          v46 = v19;

          v20 = v48;
          sub_1D211380C();
          v21 = sub_1D21137DC();
          v23 = v22;
          v24 = *v47;
          (*v47)(v20, v2);
          if (v23 >> 60 == 15)
          {
            if (qword_1EC6C7170 != -1)
            {
              swift_once();
            }

            v25 = sub_1D211362C();
            __swift_project_value_buffer(v25, qword_1EC6CE850);
            v26 = sub_1D21135FC();
            v27 = sub_1D2113A7C();
            if (os_log_type_enabled(v26, v27))
            {
              v28 = swift_slowAlloc();
              *v28 = 0;
              _os_log_impl(&dword_1D209F000, v26, v27, "String encoding failed. Returning empty string", v28, 2u);
              v29 = v28;
              v2 = v44;
              MEMORY[0x1D3896EB0](v29, -1, -1);
            }

            v30 = 0;
            v31 = 0xE000000000000000;
          }

          else
          {
            v30 = sub_1D211300C();
            v31 = v32;
            sub_1D20A1284(v21, v23);
          }

          v49 = v30;
          v50 = v31;
          MEMORY[0x1D38961A0](124, 0xE100000000000000);
          MEMORY[0x1D38961A0](v49, v50);

          v33 = v48;
          sub_1D211380C();
          v34 = sub_1D21137DC();
          v36 = v35;
          v24(v33, v2);
          if (v36 >> 60 == 15)
          {
            if (qword_1EC6C7170 != -1)
            {
              swift_once();
            }

            v37 = sub_1D211362C();
            __swift_project_value_buffer(v37, qword_1EC6CE850);
            v38 = sub_1D21135FC();
            v39 = sub_1D2113A7C();
            if (os_log_type_enabled(v38, v39))
            {
              v40 = swift_slowAlloc();
              *v40 = 0;
              _os_log_impl(&dword_1D209F000, v38, v39, "String encoding failed. Returning empty string", v40, 2u);
              v41 = v40;
              v2 = v44;
              MEMORY[0x1D3896EB0](v41, -1, -1);
            }

            v11 = 0;
            v13 = 0xE000000000000000;
          }

          else
          {
            v11 = sub_1D211300C();
            v13 = v12;
            sub_1D20A1284(v34, v36);
          }

          v49 = v11;
          v50 = v13;
          MEMORY[0x1D38961A0](124, 0xE100000000000000);
          MEMORY[0x1D38961A0](v49, v50);
        }
      }

      v10 += 2;
      --v9;
    }

    while (v9);

    return v51;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1D20DADE8(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C77C8, &qword_1D2116A28);
  if (swift_dynamicCast())
  {
    sub_1D20DEC30(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_1D2112EBC();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1D20A862C(__src, &qword_1EC6C77D0, &qword_1D2116A30);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1D2113C5C();
  }

  sub_1D20DDBA8(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1D20DEA28(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v10 = sub_1D20DDC70(sub_1D20DEBC8);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1D2112FDC();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1D20DE8A4(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1D21138CC();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1D21138FC();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1D2113C5C();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1D20DE8A4(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1D21138DC();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_1D2112FEC();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_1D2112FEC();
    sub_1D20A1284(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_1D20A1284(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1D20C7064(*&__src[0], *(&__src[0] + 1));

  sub_1D20B98A4(v32, *(&v32 + 1));
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

uint64_t sub_1D20DB308()
{
  sub_1D211369C();
  sub_1D20DE668(&unk_1EE084458, MEMORY[0x1E69663E0]);
  v0 = sub_1D21136DC();
  v2 = sub_1D20DE320(v0, v1);

  v3 = *(v2 + 16);
  if (v3)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D20DC7F4(0, v3, 0);
    v4 = 32;
    v5 = v19;
    v6 = MEMORY[0x1E69E7508];
    v7 = MEMORY[0x1E69E7558];
    do
    {
      v8 = *(v2 + v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73A8, "J{");
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D2114850;
      *(v9 + 56) = v6;
      *(v9 + 64) = v7;
      *(v9 + 32) = v8;
      v10 = sub_1D21137FC();
      v20 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        v18 = v10;
        v15 = v11;
        sub_1D20DC7F4((v12 > 1), v13 + 1, 1);
        v11 = v15;
        v10 = v18;
        v5 = v20;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      ++v4;
      --v3;
    }

    while (v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7320, &qword_1D2114A98);
  sub_1D20DE7E4(&qword_1EE084418, &qword_1EC6C7320, &qword_1D2114A98);
  v16 = sub_1D211376C();

  return v16;
}

void sub_1D20DB540(unint64_t a1, NSObject *a2, uint64_t a3, int64_t a4)
{
  v8 = sub_1D2112AAC();
  if (v8)
  {
    v9 = v8;
    if (qword_1EE084470 != -1)
    {
LABEL_28:
      swift_once();
    }

    v10 = sub_1D211362C();
    __swift_project_value_buffer(v10, qword_1EE087530);

    v11 = sub_1D21135FC();
    v12 = sub_1D2113A9C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v9;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v44 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1D20B75F0(a3, a4, &v44);
      _os_log_impl(&dword_1D209F000, v11, v12, ">>> %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1D3896EB0](v15, -1, -1);
      v16 = v14;
      v9 = v13;
      MEMORY[0x1D3896EB0](v16, -1, -1);
    }

    v17 = sub_1D21135FC();
    a3 = sub_1D2113A9C();

    if (os_log_type_enabled(v17, a3))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v44 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1D20B75F0(a1, a2, &v44);
      _os_log_impl(&dword_1D209F000, v17, a3, "%s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1D3896EB0](v19, -1, -1);
      MEMORY[0x1D3896EB0](v18, -1, -1);
    }

    a2 = sub_1D21135FC();
    v20 = sub_1D2113A9C();
    if (os_log_type_enabled(a2, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D209F000, a2, v20, "======== Headers =======", v21, 2u);
      MEMORY[0x1D3896EB0](v21, -1, -1);
    }

    v22 = 0;
    v23 = v9 + 64;
    v24 = 1 << *(v9 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    a1 = v25 & *(v9 + 64);
    v26 = (v24 + 63) >> 6;
    v40 = v9;
    while (a1)
    {
      a4 = v22;
LABEL_19:
      v27 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v28 = (a4 << 10) | (16 * v27);
      v29 = *(v9 + 48) + v28;
      a2 = *v29;
      v30 = *(v29 + 8);
      v31 = (*(v9 + 56) + v28);
      a3 = v31[1];
      v42 = *v31;

      v32 = sub_1D21135FC();
      v33 = sub_1D2113A9C();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v44 = v41;
        *v34 = 136315394;
        v35 = sub_1D20B75F0(a2, v30, &v44);

        *(v34 + 4) = v35;
        *(v34 + 12) = 2080;
        v36 = sub_1D20B75F0(v42, a3, &v44);

        *(v34 + 14) = v36;
        _os_log_impl(&dword_1D209F000, v32, v33, "%s: %s", v34, 0x16u);
        a2 = v41;
        swift_arrayDestroy();
        MEMORY[0x1D3896EB0](v41, -1, -1);
        v37 = v34;
        v9 = v40;
        MEMORY[0x1D3896EB0](v37, -1, -1);
      }

      else
      {
      }

      v22 = a4;
    }

    while (1)
    {
      a4 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (a4 >= v26)
      {
        break;
      }

      a1 = *(v23 + 8 * a4);
      ++v22;
      if (a1)
      {
        goto LABEL_19;
      }
    }

    oslog = sub_1D21135FC();
    v38 = sub_1D2113A9C();
    if (os_log_type_enabled(oslog, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1D209F000, oslog, v38, "========================", v39, 2u);
      MEMORY[0x1D3896EB0](v39, -1, -1);
    }
  }
}

void sub_1D20DBA60(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v122 = *MEMORY[0x1E69E9840];
  v10 = sub_1D211381C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v112 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = (&v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v109 - v18;
  v20 = sub_1D2112B1C();
  v21 = *(v20 - 8);
  isa = v21[8].isa;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a4 + 16);
  v26 = (a4 + 32);
  while (v25)
  {
    v27 = *v26++;
    --v25;
    if (v27 == a3)
    {
      goto LABEL_50;
    }
  }

  v116 = sub_1D2112AAC();
  if (v116)
  {
    v115 = a1;
    v117 = v21;
    if (qword_1EE084470 != -1)
    {
LABEL_52:
      swift_once();
    }

    v28 = sub_1D211362C();
    v29 = __swift_project_value_buffer(v28, qword_1EE087530);

    v114 = v29;
    v30 = sub_1D21135FC();
    v31 = sub_1D2113A7C();

    v32 = os_log_type_enabled(v30, v31);
    v110 = v5;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v120 = v34;
      *v33 = 136315394;
      *(v33 + 4) = sub_1D20B75F0(v115, a2, &v120);
      *(v33 + 12) = 2048;
      *(v33 + 14) = a3;
      _os_log_impl(&dword_1D209F000, v30, v31, "Failure while trying to %s, with status Code: %ld", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1D3896EB0](v34, -1, -1);
      v35 = v33;
      v5 = v110;
      MEMORY[0x1D3896EB0](v35, -1, -1);
    }

    v36 = v117;
    (v117[2].isa)(v24, v5, v20);
    v37 = sub_1D21135FC();
    a3 = sub_1D2113A7C();
    if (os_log_type_enabled(v37, a3))
    {
      v38 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      *&v120 = v113;
      v115 = v38;
      *v38 = 136315138;
      sub_1D2112ADC();
      v39 = sub_1D2112F9C();
      v40 = *(v39 - 8);
      if ((*(v40 + 48))(v19, 1, v39) == 1)
      {
        sub_1D20A862C(v19, &qword_1EC6C7250, &qword_1D21149C0);
        v41 = 0;
        v42 = 0xE000000000000000;
      }

      else
      {
        v41 = sub_1D2112F1C();
        v42 = v43;
        (*(v40 + 8))(v19, v39);
      }

      (v117[1].isa)(v24, v20);
      v44 = sub_1D20B75F0(v41, v42, &v120);

      v45 = v115;
      *(v115 + 1) = v44;
      _os_log_impl(&dword_1D209F000, v37, a3, "Request : %s", v45, 0xCu);
      v46 = v113;
      __swift_destroy_boxed_opaque_existential_1(v113);
      MEMORY[0x1D3896EB0](v46, -1, -1);
      MEMORY[0x1D3896EB0](v45, -1, -1);
    }

    else
    {

      (v36[1].isa)(v24, v20);
    }

    sub_1D2112ADC();
    v47 = sub_1D2112F9C();
    v48 = *(v47 - 8);
    v49 = (*(v48 + 48))(v17, 1, v47);
    v24 = v114;
    if (v49 == 1)
    {
      sub_1D20A862C(v17, &qword_1EC6C7250, &qword_1D21149C0);
    }

    else
    {
      v50 = sub_1D2112F6C();
      v52 = v51;
      (*(v48 + 8))(v17, v47);
      if (v52)
      {

        v53 = sub_1D21135FC();
        v54 = sub_1D2113A7C();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          *&v120 = v17;
          *v55 = 136315138;
          v56 = sub_1D20B75F0(v50, v52, &v120);

          *(v55 + 4) = v56;
          _os_log_impl(&dword_1D209F000, v53, v54, "Query : %s", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v17);
          MEMORY[0x1D3896EB0](v17, -1, -1);
          MEMORY[0x1D3896EB0](v55, -1, -1);
        }

        else
        {
        }
      }
    }

    v57 = sub_1D21135FC();
    v58 = sub_1D2113A7C();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_1D209F000, v57, v58, "======== Headers =======", v59, 2u);
      MEMORY[0x1D3896EB0](v59, -1, -1);
    }

    v61 = 0;
    a2 = v116 + 64;
    v62 = *(v116 + 64);
    v63 = 1 << *(v116 + 32);
    v64 = -1;
    if (v63 < 64)
    {
      v64 = ~(-1 << v63);
    }

    v65 = v64 & v62;
    v5 = (v63 + 63) >> 6;
    *&v60 = 136315394;
    v111 = v60;
    if ((v64 & v62) != 0)
    {
      while (1)
      {
        v19 = v61;
LABEL_31:
        v66 = __clz(__rbit64(v65));
        v65 &= v65 - 1;
        v67 = (v19 << 10) | (16 * v66);
        v68 = (*(v116 + 48) + v67);
        a3 = *v68;
        v20 = v68[1];
        v69 = (*(v116 + 56) + v67);
        v70 = v69[1];
        v115 = *v69;

        v17 = v24;
        v71 = sub_1D21135FC();
        v72 = sub_1D2113A7C();
        v117 = v71;
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          *&v120 = v113;
          *v73 = v111;
          a3 = sub_1D20B75F0(a3, v20, &v120);

          *(v73 + 4) = a3;
          *(v73 + 12) = 2080;
          v17 = sub_1D20B75F0(v115, v70, &v120);

          *(v73 + 14) = v17;
          v74 = v72;
          v75 = v117;
          _os_log_impl(&dword_1D209F000, v117, v74, "%s: %s", v73, 0x16u);
          v76 = v113;
          swift_arrayDestroy();
          MEMORY[0x1D3896EB0](v76, -1, -1);
          v77 = v73;
          v24 = v114;
          MEMORY[0x1D3896EB0](v77, -1, -1);

          v61 = v19;
          if (!v65)
          {
            goto LABEL_28;
          }
        }

        else
        {

          v61 = v19;
          v24 = v17;
          if (!v65)
          {
            goto LABEL_28;
          }
        }
      }
    }

    while (1)
    {
LABEL_28:
      v19 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        __break(1u);
        goto LABEL_52;
      }

      if (v19 >= v5)
      {
        break;
      }

      v65 = *(a2 + 8 * v19);
      ++v61;
      if (v65)
      {
        goto LABEL_31;
      }
    }

    v78 = sub_1D21135FC();
    v79 = sub_1D2113A7C();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_1D209F000, v78, v79, "========================", v80, 2u);
      MEMORY[0x1D3896EB0](v80, -1, -1);
    }

    v81 = sub_1D2112AFC();
    if (v82 >> 60 != 15)
    {
      v83 = v81;
      v84 = v82;
      v85 = objc_opt_self();
      v86 = sub_1D2112FFC();
      v118 = 0;
      v87 = [v85 JSONObjectWithData:v86 options:0 error:&v118];

      v88 = v118;
      if (v87)
      {
        sub_1D2113B7C();
        swift_unknownObjectRelease();
        sub_1D20B3388(v119, &v120);
        __swift_project_boxed_opaque_existential_1(&v120, v121);
        v89 = sub_1D2113E1C();
        *&v119[0] = 0;
        v90 = [v85 dataWithJSONObject:v89 options:1 error:v119];
        swift_unknownObjectRelease();
        v91 = *&v119[0];
        if (v90)
        {
          v92 = sub_1D211301C();
          v94 = v93;

          sub_1D211380C();
          v95 = sub_1D21137EC();
          if (v96)
          {
            v97 = v96;
            v98 = v95;
            v99 = sub_1D21135FC();
            v100 = sub_1D2113A7C();
            if (os_log_type_enabled(v99, v100))
            {
              v101 = swift_slowAlloc();
              v102 = swift_slowAlloc();
              *&v119[0] = v102;
              *v101 = 136315138;
              v103 = sub_1D20B75F0(v98, v97, v119);

              *(v101 + 4) = v103;
              _os_log_impl(&dword_1D209F000, v99, v100, "Body : %s", v101, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v102);
              MEMORY[0x1D3896EB0](v102, -1, -1);
              MEMORY[0x1D3896EB0](v101, -1, -1);
              sub_1D20A1284(v83, v84);
              sub_1D20B98A4(v92, v94);
            }

            else
            {
              sub_1D20A1284(v83, v84);
              sub_1D20B98A4(v92, v94);
            }
          }

          else
          {
            sub_1D20A1284(v83, v84);
            sub_1D20B98A4(v92, v94);
          }
        }

        else
        {
          v106 = v91;
          v107 = sub_1D2112EFC();

          swift_willThrow();
          sub_1D20A1284(v83, v84);
        }

        __swift_destroy_boxed_opaque_existential_1(&v120);
      }

      else
      {
        v104 = v88;
        v105 = sub_1D2112EFC();

        swift_willThrow();
        sub_1D20A1284(v83, v84);
      }
    }
  }

LABEL_50:
  v108 = *MEMORY[0x1E69E9840];
}

void *sub_1D20DC67C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7410, &qword_1D2115438);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1D20DC700(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7588, &qword_1D2115AD8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

char *sub_1D20DC784(char *a1, int64_t a2, char a3)
{
  result = sub_1D20DC8EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D20DC7A4(size_t a1, int64_t a2, char a3)
{
  result = sub_1D20DC9F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D20DC7C4(char *a1, int64_t a2, char a3)
{
  result = sub_1D20DCE08(a1, a2, a3, *v3, &qword_1EC6C7430, &unk_1D2115458);
  *v3 = result;
  return result;
}

char *sub_1D20DC7F4(char *a1, int64_t a2, char a3)
{
  result = sub_1D20DCBE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D20DC814(char *a1, int64_t a2, char a3)
{
  result = sub_1D20DCCEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D20DC834(char *a1, int64_t a2, char a3)
{
  result = sub_1D20DCE08(a1, a2, a3, *v3, &qword_1EC6C77E8, &qword_1D2116A48);
  *v3 = result;
  return result;
}

size_t sub_1D20DC864(size_t a1, int64_t a2, char a3)
{
  result = sub_1D20DCEF4(a1, a2, a3, *v3, &qword_1EC6C7420, &qword_1D2115448, type metadata accessor for HSGuidanceValue);
  *v3 = result;
  return result;
}

size_t sub_1D20DC8A8(size_t a1, int64_t a2, char a3)
{
  result = sub_1D20DCEF4(a1, a2, a3, *v3, &qword_1EC6C73F0, &unk_1D2115730, type metadata accessor for HSCleanGuidanceThresholds);
  *v3 = result;
  return result;
}

char *sub_1D20DC8EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7588, &qword_1D2115AD8);
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

size_t sub_1D20DC9F0(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C77D8, &qword_1D2116A38);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C77E0, &qword_1D2116A40) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C77E0, &qword_1D2116A40) - 8);
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

char *sub_1D20DCBE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7410, &qword_1D2115438);
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

char *sub_1D20DCCEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C77F0, &unk_1D2116A50);
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

char *sub_1D20DCE08(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

size_t sub_1D20DCEF4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1D20DD0D0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D20DE890(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D20DD13C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D20DD13C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D2113DFC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D21139FC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D20DD304(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D20DD234(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D20DD234(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1D2113E2C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D20DD304(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1D20DDB94(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1D20DD8E0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1D2113E2C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1D2113E2C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D20B70E0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1D20B70E0((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1D20DD8E0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D20DDB94(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1D20DDB08(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1D2113E2C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1D20DD8E0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1D2113E2C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1D2113E2C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1D20DDB08(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D20DDB94(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1D20DDBA8@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1D20DE970(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1D2112D7C();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_1D2112D2C();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1D2112FCC();
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

void *sub_1D20DDC70(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1D20B98A4(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1D20B98A4(v6, v5);
    *v3 = xmmword_1D21169F0;
    sub_1D20B98A4(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1D2112D3C() && __OFSUB__(v6, sub_1D2112D6C()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_1D2112D7C();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1D2112D1C();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_1D20DE114(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_1D20B98A4(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1D21169F0;
    sub_1D20B98A4(0, 0xC000000000000000);
    sub_1D2112FAC();
    result = sub_1D20DE114(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *sub_1D20DE014@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1D20DE970(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1D20DEAC8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1D20DEB44(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1D20DE0A8(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1D20DE114(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1D2112D3C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1D2112D6C();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1D2112D5C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

void *sub_1D20DE1C8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D20DE320(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = v2 - a2;
  if (v2 != a2)
  {
    if (v2 > a2)
    {
      if (a2 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (!v2)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v5 = 0;
      v6 = (a2 + result + 32);
      v7 = (MEMORY[0x1E69E7CC0] + 32);
      while (1)
      {
        v9 = *v6++;
        v8 = v9;
        if (!v5)
        {
          v10 = v3[3];
          if (((v10 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_28;
          }

          v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
          if (v11 <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = v11;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7430, &unk_1D2115458);
          v13 = swift_allocObject();
          v14 = 2 * _swift_stdlib_malloc_size(v13) - 64;
          v13[2] = v12;
          v13[3] = v14;
          v15 = (v13 + 4);
          v16 = v3[3] >> 1;
          if (v3[2])
          {
            if (v13 != v3 || v15 >= v3 + v16 + 32)
            {
              memmove(v13 + 4, v3 + 4, v16);
            }

            v3[2] = 0;
          }

          v7 = (v15 + v16);
          v5 = (v14 >> 1) - v16;

          v3 = v13;
        }

        v18 = __OFSUB__(v5--, 1);
        if (v18)
        {
          break;
        }

        *v7++ = v8;
        if (!--v4)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v5 = 0;
LABEL_23:
  v19 = v3[3];
  if (v19 < 2)
  {
    return v3;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v5);
  v21 = v20 - v5;
  if (!v18)
  {
    v3[2] = v21;
    return v3;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D20DE488(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_1D21136EC();
      sub_1D20DE668(&qword_1EE084448, MEMORY[0x1E6966620]);
      result = sub_1D211366C();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1D20DE6B0(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D20DE668(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D20DE6B0(uint64_t a1, uint64_t a2)
{
  result = sub_1D2112D3C();
  if (!result || (result = sub_1D2112D6C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1D2112D5C();
      sub_1D21136EC();
      sub_1D20DE668(&qword_1EE084448, MEMORY[0x1E6966620]);
      return sub_1D211366C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1D20DE790()
{
  result = qword_1EE084910;
  if (!qword_1EE084910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084910);
  }

  return result;
}

uint64_t sub_1D20DE7E4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1D20DE8A4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D211390C();
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
    v5 = MEMORY[0x1D38961F0](15, a1 >> 16);
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

uint64_t sub_1D20DE920@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_1D2113C3C();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D20DE970(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D20DEA28(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_1D2112D7C();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1D2112D4C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1D2112FCC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1D20DEAC8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1D2112D7C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1D2112D2C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D2112FCC();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1D20DEB44(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1D2112D7C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1D2112D2C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

void *sub_1D20DEBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1D20DE0A8(sub_1D20DEC48, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1D20DEC30(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1D20DEC74@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17[-v4];
  v6 = sub_1D2112F9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D20ECA00(v18);
  if (*(&v18[0] + 1) != 1)
  {
    v19 = v18[2];
    sub_1D20BD1B0(&v19, v17);
    sub_1D20A862C(v18, &qword_1EC6C7518, &unk_1D2116AB0);
    if (*(&v19 + 1))
    {
      sub_1D210CA58(v5);
      if ((*(v7 + 48))(v5, 1, v6) != 1)
      {
        (*(v7 + 32))(v10, v5, v6);
        sub_1D2112F3C();
        sub_1D20A862C(&v19, &qword_1EC6C7510, &unk_1D2115710);
        (*(v7 + 8))(v10, v6);
        v15 = 0;
        return (*(v7 + 56))(a1, v15, 1, v6);
      }

      sub_1D20A862C(&v19, &qword_1EC6C7510, &unk_1D2115710);
      sub_1D20A862C(v5, &qword_1EC6C7250, &qword_1D21149C0);
    }
  }

  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D211362C();
  __swift_project_value_buffer(v11, qword_1EE0874C0);
  v12 = sub_1D21135FC();
  v13 = sub_1D2113A7C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D209F000, v12, v13, "Unable to compute API Path for energy windows.", v14, 2u);
    MEMORY[0x1D3896EB0](v14, -1, -1);
  }

  v15 = 1;
  return (*(v7 + 56))(a1, v15, 1, v6);
}

uint64_t sub_1D20DEF68@<X0>(void (*a1)(char *, uint64_t)@<X0>, char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v93 = a3;
  v94 = a4;
  v90 = a1;
  v91 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7508, &unk_1D2116AA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v87 = &v83 - v8;
  v9 = sub_1D2112B1C();
  v95 = *(v9 - 8);
  v96 = v9;
  v10 = *(v95 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v85 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v88 = &v83 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v92 = &v83 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v83 - v21;
  v23 = sub_1D2112F9C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v86 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v83 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v89 = &v83 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v83 - v33;
  sub_1D20DEC74(v22);
  v35 = *(v24 + 48);
  if (v35(v22, 1, v23) != 1)
  {
    v84 = a5;
    v83 = *(v24 + 32);
    v83(v34, v22, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73B0, &unk_1D2115420);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D2114850;
    *(inited + 32) = 0x644964697267;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = v90;
    *(inited + 56) = v91;

    v91 = v34;
    sub_1D2112F1C();
    sub_1D2112F7C();
    if (v35(v18, 1, v23) == 1)
    {

      sub_1D20A862C(v18, &qword_1EC6C7250, &qword_1D21149C0);
      v47 = v92;
      (*(v24 + 56))(v92, 1, 1, v23);
      v48 = v94;
    }

    else
    {
      v83(v30, v18, v23);
      v49 = v92;
      sub_1D20F108C(inited, 1, 0, v92);
      v47 = v49;

      v50 = *(v24 + 8);
      v50(v30, v23);
      v51 = v35(v49, 1, v23);
      v48 = v94;
      if (v51 != 1)
      {
        v90 = v50;
        v64 = v89;
        v83(v89, v49, v23);
        (*(v24 + 16))(v86, v64, v23);
        v65 = v88;
        sub_1D2112ACC();
        sub_1D2112A8C();
        if (sub_1D20CF7E0())
        {
          v66 = &unk_1F4D9E0E0;
        }

        else
        {
          v66 = &unk_1F4D9E120;
        }

        v67 = sub_1D20BABD4(v66, &unk_1F4D9E080);
        v69 = v68;
        sub_1D20CF7E0();
        v70 = v67;
        v71 = v87;
        sub_1D20D94F0(v70, v69, 49, 0xE100000000000000, v87);

        v54 = v95;
        v53 = v96;
        if ((*(v95 + 48))(v71, 1, v96) != 1)
        {
          v79 = v85;
          (*(v54 + 16))(v85, v71, v53);
          sub_1D2112AEC();
          sub_1D2112AEC();
          v80 = *(v54 + 8);
          v80(v71, v53);
          v81 = v84;
          (*(v54 + 32))(v84, v79, v53);
          sub_1D2112B0C();
          v80(v65, v53);
          v82 = v90;
          v90(v89, v23);
          v82(v91, v23);
          return (*(v54 + 56))(v81, 0, 1, v53);
        }

        v72 = v23;
        sub_1D20A862C(v71, &qword_1EC6C7508, &unk_1D2116AA0);
        v59 = v84;
        if (qword_1EE083DE8 != -1)
        {
          swift_once();
        }

        v73 = sub_1D211362C();
        __swift_project_value_buffer(v73, qword_1EE0874C0);

        v74 = sub_1D21135FC();
        v75 = sub_1D2113A7C();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v97[0] = v77;
          *v76 = 136315138;
          *(v76 + 4) = sub_1D20B75F0(v93, v48, v97);
          _os_log_impl(&dword_1D209F000, v74, v75, "Unable to create signed Energy Interval request | traceId: %s", v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v77);
          MEMORY[0x1D3896EB0](v77, -1, -1);
          MEMORY[0x1D3896EB0](v76, -1, -1);
        }

        (*(v54 + 8))(v88, v53);
        v78 = v90;
        v90(v89, v72);
        v78(v91, v72);
        return (*(v54 + 56))(v59, 1, 1, v53);
      }
    }

    v52 = v24;
    sub_1D20A862C(v47, &qword_1EC6C7250, &qword_1D21149C0);
    v54 = v95;
    v53 = v96;
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v55 = sub_1D211362C();
    __swift_project_value_buffer(v55, qword_1EE0874C0);

    v56 = sub_1D21135FC();
    v57 = sub_1D2113A7C();

    v58 = os_log_type_enabled(v56, v57);
    v59 = v84;
    v60 = v91;
    if (v58)
    {
      v61 = swift_slowAlloc();
      v94 = v23;
      v62 = v61;
      v63 = swift_slowAlloc();
      v97[0] = v63;
      *v62 = 136315138;
      *(v62 + 4) = sub_1D20B75F0(v93, v48, v97);
      _os_log_impl(&dword_1D209F000, v56, v57, "Unable to create Grid Guidance URL with required query parameters | traceId: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x1D3896EB0](v63, -1, -1);
      MEMORY[0x1D3896EB0](v62, -1, -1);

      (*(v52 + 8))(v60, v94);
    }

    else
    {

      (*(v52 + 8))(v60, v23);
    }

    return (*(v54 + 56))(v59, 1, 1, v53);
  }

  sub_1D20A862C(v22, &qword_1EC6C7250, &qword_1D21149C0);
  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v36 = sub_1D211362C();
  __swift_project_value_buffer(v36, qword_1EE0874C0);
  v37 = v94;

  v38 = sub_1D21135FC();
  v39 = sub_1D2113A7C();

  v40 = os_log_type_enabled(v38, v39);
  v42 = v95;
  v41 = v96;
  if (v40)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v97[0] = v44;
    *v43 = 136315138;
    *(v43 + 4) = sub_1D20B75F0(v93, v37, v97);
    _os_log_impl(&dword_1D209F000, v38, v39, "Request URL for Grid Guidance API URL not found | traceId: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x1D3896EB0](v44, -1, -1);
    MEMORY[0x1D3896EB0](v43, -1, -1);
  }

  return (*(v42 + 56))(a5, 1, 1, v41);
}

uint64_t sub_1D20DFABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  v8[5] = a1;
  v8[6] = a2;
  v9 = type metadata accessor for NetworkError(0);
  v8[13] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[14] = swift_task_alloc();
  v11 = sub_1D2112F9C();
  v8[15] = v11;
  v12 = *(v11 - 8);
  v8[16] = v12;
  v13 = *(v12 + 64) + 15;
  v8[17] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7508, &unk_1D2116AA0) - 8) + 64) + 15;
  v8[18] = swift_task_alloc();
  v15 = sub_1D2112B1C();
  v8[19] = v15;
  v16 = *(v15 - 8);
  v8[20] = v16;
  v17 = *(v16 + 64) + 15;
  v8[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D20DFC4C, 0, 0);
}

uint64_t sub_1D20DFC4C()
{
  v30 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v9 = v0[6];
  v8 = v0[7];
  type metadata accessor for GridLookupRequest();
  swift_initStackObject();
  sub_1D210CF3C(v9, v8, v7, v6, v5, v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D20A862C(v0[18], &qword_1EC6C7508, &unk_1D2116AA0);
    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v10 = v0[12];
    v11 = sub_1D211362C();
    __swift_project_value_buffer(v11, qword_1EE087438);

    v12 = sub_1D21135FC();
    v13 = sub_1D2113A7C();

    if (os_log_type_enabled(v12, v13))
    {
      v15 = v0[11];
      v14 = v0[12];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1D20B75F0(v15, v14, &v29);
      _os_log_impl(&dword_1D209F000, v12, v13, "Unable generate request URL for Grid ID Lookup | traceId: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1D3896EB0](v17, -1, -1);
      MEMORY[0x1D3896EB0](v16, -1, -1);
    }

    (*(v0[16] + 56))(v0[5], 1, 1, v0[15]);
    v18 = v0[21];
    v19 = v0[17];
    v20 = v0[18];
    v21 = v0[14];

    v22 = v0[1];

    return v22(0);
  }

  else
  {
    (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
    v24 = *(MEMORY[0x1E6969ED8] + 4);
    v25 = swift_task_alloc();
    v0[22] = v25;
    *v25 = v0;
    v25[1] = sub_1D20DFF54;
    v26 = v0[21];
    v27 = v0[17];
    v28 = v0[8];

    return MEMORY[0x1EEDC6278](v27, v26, 0);
  }
}

uint64_t sub_1D20DFF54(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v7 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v5 = sub_1D20E0BD0;
  }

  else
  {
    v5 = sub_1D20E0068;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D20E0068()
{
  v106 = v0;
  v1 = *(v0 + 184);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 statusCode];
    if (v4 == 304)
    {
      if (qword_1EE0836C8 != -1)
      {
        swift_once();
      }

      v32 = *(v0 + 96);
      v33 = sub_1D211362C();
      __swift_project_value_buffer(v33, qword_1EE087438);

      v34 = sub_1D21135FC();
      v35 = sub_1D2113A6C();

      v36 = os_log_type_enabled(v34, v35);
      v38 = *(v0 + 160);
      v37 = *(v0 + 168);
      v104 = *(v0 + 152);
      v40 = *(v0 + 128);
      v39 = *(v0 + 136);
      v41 = *(v0 + 120);
      if (v36)
      {
        v102 = *(v0 + 120);
        v43 = *(v0 + 88);
        v42 = *(v0 + 96);
        v101 = *(v0 + 168);
        v44 = swift_slowAlloc();
        v100 = v39;
        v45 = swift_slowAlloc();
        v105[0] = v45;
        *v44 = 136315138;
        *(v44 + 4) = sub_1D20B75F0(v43, v42, v105);
        _os_log_impl(&dword_1D209F000, v34, v35, "Geohash File unmodified. Use existing file on disk. | traceId: %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        MEMORY[0x1D3896EB0](v45, -1, -1);
        MEMORY[0x1D3896EB0](v44, -1, -1);

        (*(v40 + 8))(v100, v102);
        (*(v38 + 8))(v101, v104);
      }

      else
      {

        (*(v40 + 8))(v39, v41);
        (*(v38 + 8))(v37, v104);
      }

      (*(*(v0 + 128) + 56))(*(v0 + 40), 1, 1, *(v0 + 120));
      goto LABEL_27;
    }

    if (v4 == 200)
    {
      if (qword_1EE0836C8 != -1)
      {
        swift_once();
      }

      v5 = *(v0 + 96);
      v6 = sub_1D211362C();
      __swift_project_value_buffer(v6, qword_1EE087438);

      v7 = sub_1D21135FC();
      v8 = sub_1D2113A6C();

      v9 = os_log_type_enabled(v7, v8);
      v10 = *(v0 + 160);
      v11 = *(v0 + 168);
      v12 = *(v0 + 152);
      if (v9)
      {
        v103 = *(v0 + 168);
        v14 = *(v0 + 88);
        v13 = *(v0 + 96);
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v105[0] = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_1D20B75F0(v14, v13, v105);
        _os_log_impl(&dword_1D209F000, v7, v8, "New Geo Tile fetched | traceId: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x1D3896EB0](v16, -1, -1);
        MEMORY[0x1D3896EB0](v15, -1, -1);

        (*(v10 + 8))(v103, v12);
      }

      else
      {

        (*(v10 + 8))(v11, v12);
      }

      v64 = *(v0 + 128);
      v65 = *(v0 + 120);
      v66 = *(v0 + 40);
      (*(v64 + 32))(v66, *(v0 + 136), v65);
      (*(v64 + 56))(v66, 0, 1, v65);
LABEL_27:
      v67 = *(v0 + 168);
      v69 = *(v0 + 136);
      v68 = *(v0 + 144);
      v70 = *(v0 + 112);

      v71 = *(v0 + 8);

      return v71(v3);
    }

    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v46 = *(v0 + 96);
    v47 = sub_1D211362C();
    __swift_project_value_buffer(v47, qword_1EE087438);

    v48 = sub_1D21135FC();
    v49 = sub_1D2113A7C();

    if (os_log_type_enabled(v48, v49))
    {
      v51 = *(v0 + 88);
      v50 = *(v0 + 96);
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v105[0] = v53;
      *v52 = 136315138;
      *(v52 + 4) = sub_1D20B75F0(v51, v50, v105);
      _os_log_impl(&dword_1D209F000, v48, v49, "Error while checking for geohash tiles | traceId: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x1D3896EB0](v53, -1, -1);
      MEMORY[0x1D3896EB0](v52, -1, -1);
    }

    v54 = *(v0 + 184);
    v55 = [v3 description];
    v56 = sub_1D21137CC();
    v58 = v57;

    v59 = sub_1D21135FC();
    v60 = sub_1D2113A7C();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v105[0] = v62;
      *v61 = 136315138;
      v63 = sub_1D20B75F0(v56, v58, v105);

      *(v61 + 4) = v63;
      _os_log_impl(&dword_1D209F000, v59, v60, "%s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x1D3896EB0](v62, -1, -1);
      MEMORY[0x1D3896EB0](v61, -1, -1);
    }

    else
    {
    }

    v73 = *(v0 + 184);
    v75 = *(v0 + 128);
    v74 = *(v0 + 136);
    v76 = *(v0 + 120);
    v77 = *(v0 + 104);
    sub_1D20E299C(qword_1EE0841B0, type metadata accessor for NetworkError);
    v30 = swift_allocError();
    *v78 = [v3 statusCode];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v75 + 8))(v74, v76);
  }

  else
  {
    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 96);
    v18 = sub_1D211362C();
    __swift_project_value_buffer(v18, qword_1EE087438);

    v19 = sub_1D21135FC();
    v20 = sub_1D2113A7C();

    if (os_log_type_enabled(v19, v20))
    {
      v22 = *(v0 + 88);
      v21 = *(v0 + 96);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v105[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1D20B75F0(v22, v21, v105);
      _os_log_impl(&dword_1D209F000, v19, v20, "Unable to process GeoTiles Response. | traceId: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1D3896EB0](v24, -1, -1);
      MEMORY[0x1D3896EB0](v23, -1, -1);
    }

    v25 = *(v0 + 184);
    v27 = *(v0 + 128);
    v26 = *(v0 + 136);
    v28 = *(v0 + 120);
    v29 = *(v0 + 104);
    sub_1D20E299C(qword_1EE0841B0, type metadata accessor for NetworkError);
    v30 = swift_allocError();
    *v31 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v27 + 8))(v26, v28);
  }

  if (qword_1EE0836C8 != -1)
  {
    swift_once();
  }

  v79 = *(v0 + 96);
  v80 = sub_1D211362C();
  __swift_project_value_buffer(v80, qword_1EE087438);

  v81 = v30;
  v82 = sub_1D21135FC();
  v83 = sub_1D2113A7C();

  if (os_log_type_enabled(v82, v83))
  {
    v85 = *(v0 + 88);
    v84 = *(v0 + 96);
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v105[0] = v88;
    *v86 = 138412546;
    v89 = v30;
    v90 = _swift_stdlib_bridgeErrorToNSError();
    *(v86 + 4) = v90;
    *v87 = v90;
    *(v86 + 12) = 2080;
    *(v86 + 14) = sub_1D20B75F0(v85, v84, v105);
    _os_log_impl(&dword_1D209F000, v82, v83, "Error while trying to fetch geohash tiles from server %@ | traceId: %s", v86, 0x16u);
    sub_1D20A862C(v87, &qword_1EC6C7950, qword_1D21153D0);
    MEMORY[0x1D3896EB0](v87, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v88);
    MEMORY[0x1D3896EB0](v88, -1, -1);
    MEMORY[0x1D3896EB0](v86, -1, -1);
  }

  v91 = *(v0 + 104);
  v92 = *(v0 + 112);
  *(v0 + 32) = v30;
  v93 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A0, &qword_1D2115B70);
  if (swift_dynamicCast())
  {
    sub_1D20C6F38(*(v0 + 112));
    swift_willThrow();
  }

  else
  {
    v94 = *(v0 + 104);
    sub_1D20E299C(qword_1EE0841B0, type metadata accessor for NetworkError);
    swift_allocError();
    sub_1D20F5FDC(v30, v95);
    swift_willThrow();
  }

  v96 = *(v0 + 144);
  v97 = *(v0 + 136);
  v98 = *(v0 + 112);
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

  v99 = *(v0 + 8);

  return v99();
}

uint64_t sub_1D20E0BD0()
{
  v25 = v0;
  v1 = v0[24];
  if (qword_1EE0836C8 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v3 = sub_1D211362C();
  __swift_project_value_buffer(v3, qword_1EE087438);

  v4 = v1;
  v5 = sub_1D21135FC();
  v6 = sub_1D2113A7C();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[11];
    v7 = v0[12];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v9 = 138412546;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v13;
    *v10 = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_1D20B75F0(v8, v7, &v24);
    _os_log_impl(&dword_1D209F000, v5, v6, "Error while trying to fetch geohash tiles from server %@ | traceId: %s", v9, 0x16u);
    sub_1D20A862C(v10, &qword_1EC6C7950, qword_1D21153D0);
    MEMORY[0x1D3896EB0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1D3896EB0](v11, -1, -1);
    MEMORY[0x1D3896EB0](v9, -1, -1);
  }

  v15 = v0[13];
  v14 = v0[14];
  v0[4] = v1;
  v16 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A0, &qword_1D2115B70);
  if (swift_dynamicCast())
  {
    sub_1D20C6F38(v0[14]);
    swift_willThrow();
  }

  else
  {
    v17 = v0[13];
    sub_1D20E299C(qword_1EE0841B0, type metadata accessor for NetworkError);
    swift_allocError();
    sub_1D20F5FDC(v1, v18);
    swift_willThrow();
  }

  v19 = v0[18];
  v20 = v0[17];
  v21 = v0[14];
  (*(v0[20] + 8))(v0[21], v0[19]);

  v22 = v0[1];

  return v22();
}

void sub_1D20E0ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v121 = a2;
  v122 = a3;
  v125 = sub_1D2112F9C();
  v4 = *(v125 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v7 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D211381C();
  v9 = *(v8 - 8);
  isa = v9[8].isa;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v120 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v128 = &v111 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v111 - v15;
  if (qword_1EE0836C8 != -1)
  {
    swift_once();
  }

  v130 = v7;
  v17 = sub_1D211362C();
  v18 = __swift_project_value_buffer(v17, qword_1EE087438);
  v19 = sub_1D21135FC();
  v20 = sub_1D2113A5C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1D209F000, v19, v20, "Generating individual geohash tiles from parent geohash.", v21, 2u);
    MEMORY[0x1D3896EB0](v21, -1, -1);
  }

  v124 = a1;
  sub_1D2112F4C();
  sub_1D211380C();
  v22 = type metadata accessor for StreamReader();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  v26 = OBJC_IVAR____TtC12HomeServices12StreamReader_fileHandle;
  *(v25 + OBJC_IVAR____TtC12HomeServices12StreamReader_fileHandle) = 0;
  *(v25 + OBJC_IVAR____TtC12HomeServices12StreamReader_atEof) = 0;
  *(v25 + OBJC_IVAR____TtC12HomeServices12StreamReader_chunkSize) = 4096;
  v126 = v9[2].isa;
  v127 = v9 + 2;
  v126(v25 + OBJC_IVAR____TtC12HomeServices12StreamReader_encoding, v16, v8);
  v27 = sub_1D21137BC();

  v28 = [objc_opt_self() fileHandleForReadingAtPath_];

  if (!v28)
  {
    (v9[1].isa)(v16, v8);
    goto LABEL_9;
  }

  v129 = v8;
  v29 = sub_1D21137DC();
  if (v30 >> 60 == 15)
  {
    (v9[1].isa)(v16, v129);

LABEL_9:
    v31 = v130;
    goto LABEL_10;
  }

  v44 = v29;
  v45 = v30;
  v123 = v18;
  v46 = [objc_allocWithZone(MEMORY[0x1E695DF88]) initWithCapacity_];
  v48 = v9[1].isa;
  v47 = v9 + 1;
  v118 = v48;
  v48(v16, v129);
  v31 = v130;
  if (!v46)
  {
LABEL_60:
    sub_1D20DEC70(v44, v45);

LABEL_10:
    *(v26 + v25) = 0;
    *(v25 + OBJC_IVAR____TtC12HomeServices12StreamReader_delimData) = xmmword_1D2116AC0;
    *(v25 + OBJC_IVAR____TtC12HomeServices12StreamReader_buffer) = 0;
    swift_setDeallocating();
    v32 = *sub_1D211284C();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_deallocClassInstance();
    v35 = v125;
    (*(v4 + 16))(v31, v124, v125);
    v36 = sub_1D21135FC();
    v37 = sub_1D2113A7C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v133 = v39;
      *v38 = 136315138;
      v40 = sub_1D2112F4C();
      v42 = v41;
      (*(v4 + 8))(v31, v35);
      v43 = sub_1D20B75F0(v40, v42, &v133);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_1D209F000, v36, v37, "Unable to open file stream for file :%s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1D3896EB0](v39, -1, -1);
      MEMORY[0x1D3896EB0](v38, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v31, v35);
    }

    return;
  }

  *(v26 + v25) = v28;
  v49 = (v25 + OBJC_IVAR____TtC12HomeServices12StreamReader_delimData);
  *v49 = v44;
  v49[1] = v45;
  v44 = &OBJC_IVAR____TtC12HomeServices12StreamReader_buffer;
  *(v25 + OBJC_IVAR____TtC12HomeServices12StreamReader_buffer) = v46;
  if (qword_1EE083D48 != -1)
  {
LABEL_73:
    swift_once();
  }

  v45 = qword_1EE087480;
  v50 = *algn_1EE087488;
  v133 = qword_1EE087480;
  v134 = *algn_1EE087488;

  v51 = sub_1D20CF5BC();
  v52 = !v51;
  if (v51)
  {
    v53 = 1685025392;
  }

  else
  {
    v53 = 24945;
  }

  if (v52)
  {
    v54 = 0xE200000000000000;
  }

  else
  {
    v54 = 0xE400000000000000;
  }

  MEMORY[0x1D38961A0](v53, v54);

  MEMORY[0x1D38961A0](47, 0xE100000000000000);
  MEMORY[0x1D38961A0](v121, v122);
  v28 = v134;
  v4 = sub_1D20EA4D8();

  if ((v4 & 1) == 0)
  {
    v93 = sub_1D21135FC();
    v94 = sub_1D2113A7C();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_1D209F000, v93, v94, "Unable to create directory for saving GeoHash Polygons", v95, 2u);
      MEMORY[0x1D3896EB0](v95, -1, -1);
    }

LABEL_63:

    goto LABEL_64;
  }

  v112 = v50;
  v113 = v45;
  v114 = v47;
  v117 = [objc_opt_self() defaultManager];
  v130 = OBJC_IVAR____TtC12HomeServices12StreamReader_fileHandle;
  if (!*(v25 + OBJC_IVAR____TtC12HomeServices12StreamReader_fileHandle))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v116 = 0;
  v115 = 0;
  v26 = (v25 + OBJC_IVAR____TtC12HomeServices12StreamReader_delimData);
  v125 = OBJC_IVAR____TtC12HomeServices12StreamReader_atEof;
  v31 = *v44;
  v124 = OBJC_IVAR____TtC12HomeServices12StreamReader_encoding;
  *&v55 = 136315138;
  v111 = v55;
  v119 = v31;
  while (2)
  {
    while (2)
    {
      if (*(v25 + v125))
      {
        goto LABEL_66;
      }

      v56 = *(v25 + v31);
      if (!v56)
      {
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        return;
      }

      v57 = v129;
      if (v26[1] >> 60 == 15)
      {
        goto LABEL_77;
      }

      v58 = *v26;
      v59 = sub_1D2112FFC();
      v60 = [v56 rangeOfData:v59 options:0 range:{0, objc_msgSend(v56, sel_length)}];
      v45 = v61;

      if (v60 != sub_1D2112A6C())
      {
LABEL_41:
        v72 = [v56 subdataWithRange_];
        v73 = sub_1D211301C();
        v75 = v74;

        v126(v128, (v25 + v124), v57);
        v44 = sub_1D21137EC();
        v47 = v76;
        sub_1D20B98A4(v73, v75);
        if (__OFADD__(v60, v45))
        {
          __break(1u);
          goto LABEL_73;
        }

        [v56 replaceBytesInRange:0 withBytes:&v60[v45] length:{0, 0}];
        if (v47)
        {
          goto LABEL_46;
        }

LABEL_66:
        v99 = sub_1D21135FC();
        v100 = sub_1D2113A9C();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          *v101 = 0;
          _os_log_impl(&dword_1D209F000, v99, v100, "Wrote all geohash tile to disk.", v101, 2u);
          MEMORY[0x1D3896EB0](v101, -1, -1);
        }

        swift_setDeallocating();
        v102 = *sub_1D211284C();
        v103 = *(v102 + 48);
        v104 = *(v102 + 52);
        swift_deallocClassInstance();
        return;
      }

      while (1)
      {
        v62 = *(v25 + v130);
        if (!v62)
        {
          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        v63 = [v62 readDataOfLength_];
        v64 = sub_1D211301C();
        v66 = v65;

        v67 = v66 >> 62;
        if ((v66 >> 62) > 1)
        {
          break;
        }

        if (v67)
        {
          if (v64 == v64 >> 32)
          {
            goto LABEL_44;
          }
        }

        else if ((v66 & 0xFF000000000000) == 0)
        {
          goto LABEL_44;
        }

LABEL_38:
        v68 = sub_1D2112FFC();
        [v56 appendData_];

        if (v26[1] >> 60 == 15)
        {
          goto LABEL_75;
        }

        v69 = *v26;
        v70 = sub_1D2112FFC();
        v60 = [v56 rangeOfData:v70 options:0 range:{0, objc_msgSend(v56, sel_length)}];
        v45 = v71;
        sub_1D20B98A4(v64, v66);

        if (v60 != sub_1D2112A6C())
        {
          v31 = v119;
          goto LABEL_41;
        }
      }

      if (v67 == 2 && *(v64 + 16) != *(v64 + 24))
      {
        goto LABEL_38;
      }

LABEL_44:
      *(v25 + v125) = 1;
      if ([v56 length] < 1)
      {
        sub_1D20B98A4(v64, v66);
        goto LABEL_66;
      }

      v77 = sub_1D211301C();
      v45 = v78;
      v126(v128, (v25 + v124), v57);
      v44 = sub_1D21137EC();
      v47 = v79;
      sub_1D20B98A4(v77, v45);
      [v56 setLength_];
      sub_1D20B98A4(v64, v66);
      v31 = v119;
      if (!v47)
      {
        goto LABEL_66;
      }

LABEL_46:
      v80 = sub_1D20EA8E0();
      if (!v81)
      {

        v28 = sub_1D21135FC();
        v4 = sub_1D2113A7C();
        if (os_log_type_enabled(v28, v4))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_1D209F000, v28, v4, "Unable to find file name for the geo hash string", v45, 2u);
          MEMORY[0x1D3896EB0](v45, -1, -1);
        }

        if (!*(v25 + v130))
        {
          goto LABEL_59;
        }

        continue;
      }

      break;
    }

    v133 = v113;
    v134 = v112;
    v82 = v80;
    v83 = v81;

    v84 = sub_1D20CF5BC();
    v85 = !v84;
    if (v84)
    {
      v86 = 1685025392;
    }

    else
    {
      v86 = 24945;
    }

    if (v85)
    {
      v87 = 0xE200000000000000;
    }

    else
    {
      v87 = 0xE400000000000000;
    }

    MEMORY[0x1D38961A0](v86, v87);

    MEMORY[0x1D38961A0](47, 0xE100000000000000);
    MEMORY[0x1D38961A0](v121, v122);
    MEMORY[0x1D38961A0](47, 0xE100000000000000);
    MEMORY[0x1D38961A0](v82, v83);

    MEMORY[0x1D38961A0](0x6E6F736A2ELL, 0xE500000000000000);
    v89 = v133;
    v88 = v134;
    v133 = v44;
    v134 = v47;
    v131 = v89;
    v132 = v88;
    v45 = v120;
    sub_1D211380C();
    sub_1D20B99F0();
    v4 = v115;
    sub_1D2113B5C();
    if (!v4)
    {
      v118(v45, v129);

      v90 = sub_1D21135FC();
      v44 = sub_1D2113A6C();

      v91 = os_log_type_enabled(v90, v44);
      v115 = 0;
      if (v91)
      {
        v45 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v133 = v92;
        *v45 = v111;
        *(v45 + 4) = sub_1D20B75F0(v89, v88, &v133);
        _os_log_impl(&dword_1D209F000, v90, v44, "Successfully wrote to %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v92);
        MEMORY[0x1D3896EB0](v92, -1, -1);
        MEMORY[0x1D3896EB0](v45, -1, -1);
      }

      v28 = sub_1D21137BC();

      v116 = [v117 fileExistsAtPath_];

      v31 = v119;
      if (!*(v25 + v130))
      {
        goto LABEL_59;
      }

      continue;
    }

    break;
  }

  v118(v45, v129);

  v105 = v4;
  v93 = sub_1D21135FC();
  v106 = sub_1D2113A7C();

  if (os_log_type_enabled(v93, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    *v107 = 138412290;
    v109 = v4;
    v110 = _swift_stdlib_bridgeErrorToNSError();
    *(v107 + 4) = v110;
    *v108 = v110;
    _os_log_impl(&dword_1D209F000, v93, v106, "Error while trying to geohash String to file %@", v107, 0xCu);
    sub_1D20A862C(v108, &qword_1EC6C7950, qword_1D21153D0);
    MEMORY[0x1D3896EB0](v108, -1, -1);
    MEMORY[0x1D3896EB0](v107, -1, -1);

    goto LABEL_63;
  }

LABEL_64:
  swift_setDeallocating();
  v96 = *sub_1D211284C();
  v97 = *(v96 + 48);
  v98 = *(v96 + 52);
  swift_deallocClassInstance();
}

uint64_t sub_1D20E1E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v35 - v6;
  v8 = sub_1D211319C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0836C8 != -1)
  {
    swift_once();
  }

  v13 = sub_1D211362C();
  v14 = __swift_project_value_buffer(v13, qword_1EE087438);
  v15 = sub_1D21135FC();
  v16 = sub_1D2113A5C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1D209F000, v15, v16, "Trying to save metadata about downloaded geohash tile.", v17, 2u);
    MEMORY[0x1D3896EB0](v17, -1, -1);
  }

  sub_1D20BB444(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D20A862C(v7, &qword_1EC6C7248, &qword_1D2114A80);
  }

  (*(v9 + 32))(v12, v7, v8);
  v19 = sub_1D20BB58C();
  if (v20)
  {
    v21 = v19;
    v22 = v20;
    v35 = v14;
    v39 = a2;
    v40 = v36;
    v41 = 0u;
    v42 = 0u;

    sub_1D20B9E08();
    v38 = MEMORY[0x1E69E6158];
    v37[0] = v21;
    v37[1] = v22;
    v23 = sub_1D21137BC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7960, &qword_1D2116AD0);
    v24 = sub_1D2113AFC();
    v25 = sub_1D21137BC();
    CFPreferencesSetAppValue(v23, v24, v25);

    swift_unknownObjectRelease();
    v26 = sub_1D21137BC();
    CFPreferencesAppSynchronize(v26);

    sub_1D20A862C(v37, &qword_1EC6C7960, &qword_1D2116AD0);
    sub_1D20B9EF4();

    v38 = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
    (*(v9 + 16))(boxed_opaque_existential_1, v12, v8);
    v28 = sub_1D21137BC();

    v29 = sub_1D2113AFC();
    v30 = sub_1D21137BC();
    CFPreferencesSetAppValue(v28, v29, v30);

    swift_unknownObjectRelease();
    v31 = sub_1D21137BC();
    CFPreferencesAppSynchronize(v31);

    sub_1D20A862C(v37, &qword_1EC6C7960, &qword_1D2116AD0);
    v32 = sub_1D21135FC();
    v33 = sub_1D2113A9C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D209F000, v32, v33, "Saved metadata about downloaded geohash tile to defaults", v34, 2u);
      MEMORY[0x1D3896EB0](v34, -1, -1);
    }
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D20E22FC()
{
  v0 = sub_1D21136EC();
  v26 = *(v0 - 8);
  v1 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D211369C();
  v25 = *(v27 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D211381C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_1D2113C2C();

  v28 = 0xD000000000000027;
  v29 = 0x80000001D211B1A0;
  v11 = sub_1D20CF5BC();
  v12 = !v11;
  if (v11)
  {
    v13 = 1685025392;
  }

  else
  {
    v13 = 24945;
  }

  if (v12)
  {
    v14 = 0xE200000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  MEMORY[0x1D38961A0](v13, v14);

  v15 = v28;
  v16 = v29;
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_1D2113A1C();
  MEMORY[0x1D38961A0](46, 0xE100000000000000);
  sub_1D2113A1C();
  MEMORY[0x1D38961A0](46, 0xE100000000000000);
  MEMORY[0x1D38961A0](v15, v16);

  sub_1D211380C();
  v17 = sub_1D21137DC();
  v19 = v18;

  (*(v7 + 8))(v10, v6);
  result = 0;
  if (v19 >> 60 != 15)
  {
    sub_1D20E299C(&qword_1EE084448, MEMORY[0x1E6966620]);
    sub_1D211368C();
    sub_1D20C7064(v17, v19);
    sub_1D20DE488(v17, v19);
    sub_1D20DEC70(v17, v19);
    v21 = v24;
    sub_1D211367C();
    (*(v26 + 8))(v3, v0);
    v22 = sub_1D20DB308();
    sub_1D20DEC70(v17, v19);
    (*(v25 + 8))(v21, v27);
    return v22;
  }

  return result;
}

uint64_t sub_1D20E26DC()
{
  sub_1D20E22FC();
  if (!v0)
  {
    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v14 = sub_1D211362C();
    __swift_project_value_buffer(v14, qword_1EE087438);
    v10 = sub_1D21135FC();
    v11 = sub_1D2113A7C();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_18;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Unable to generate key for looking up grid info.";
    goto LABEL_17;
  }

  v1 = sub_1D21137BC();

  v2 = sub_1D21137BC();
  v3 = CFPreferencesCopyAppValue(v1, v2);

  if (!v3 || (swift_dynamicCast() & 1) == 0)
  {
    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v9 = sub_1D211362C();
    __swift_project_value_buffer(v9, qword_1EE087438);
    v10 = sub_1D21135FC();
    v11 = sub_1D2113A7C();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_18;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Unable to lookup computed grid from disk.";
LABEL_17:
    _os_log_impl(&dword_1D209F000, v10, v11, v13, v12, 2u);
    MEMORY[0x1D3896EB0](v12, -1, -1);
LABEL_18:

    return 0;
  }

  if (qword_1EE0836C8 != -1)
  {
    swift_once();
  }

  v4 = sub_1D211362C();
  __swift_project_value_buffer(v4, qword_1EE087438);
  v5 = sub_1D21135FC();
  v6 = sub_1D2113A9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D209F000, v5, v6, "Successfully retrieved computed grid from disk.", v7, 2u);
    MEMORY[0x1D3896EB0](v7, -1, -1);
  }

  return v15;
}
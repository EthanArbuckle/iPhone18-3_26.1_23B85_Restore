uint64_t sub_247D73654()
{
  result = sub_247DD20DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5Cosmo0A5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_247D736F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_247D73740(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_247D73784(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CosmoSerialChannelHost.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CosmoSerialChannelHost.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_247D7390C()
{
  result = qword_27EE73780;
  if (!qword_27EE73780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73780);
  }

  return result;
}

unint64_t sub_247D73964()
{
  result = qword_27EE73788;
  if (!qword_27EE73788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73788);
  }

  return result;
}

unint64_t sub_247D739BC()
{
  result = qword_27EE73790;
  if (!qword_27EE73790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73790);
  }

  return result;
}

unint64_t sub_247D73A10()
{
  result = qword_27EE73798;
  if (!qword_27EE73798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73798);
  }

  return result;
}

unint64_t sub_247D73A64()
{
  result = qword_27EE737A0;
  if (!qword_27EE737A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE737A0);
  }

  return result;
}

unint64_t sub_247D73AB8()
{
  result = qword_27EE737A8;
  if (!qword_27EE737A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE737A8);
  }

  return result;
}

uint64_t sub_247D73B0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_247D73B74()
{
  result = qword_27EE737B8;
  if (!qword_27EE737B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE737B8);
  }

  return result;
}

unint64_t sub_247D73BC8()
{
  result = qword_27EE737C0;
  if (!qword_27EE737C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE737C0);
  }

  return result;
}

unint64_t sub_247D73C1C()
{
  result = qword_27EE737D0;
  if (!qword_27EE737D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE737D0);
  }

  return result;
}

unint64_t sub_247D73C70()
{
  result = qword_27EE737D8;
  if (!qword_27EE737D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE737D8);
  }

  return result;
}

unint64_t sub_247D73CC4()
{
  result = qword_27EE737E0;
  if (!qword_27EE737E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE737E0);
  }

  return result;
}

unint64_t sub_247D73D18()
{
  result = qword_27EE737E8;
  if (!qword_27EE737E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE737E8);
  }

  return result;
}

unint64_t sub_247D73D6C()
{
  result = qword_27EE737F0;
  if (!qword_27EE737F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE737F0);
  }

  return result;
}

unint64_t sub_247D73DC0()
{
  result = qword_27EE737F8;
  if (!qword_27EE737F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE737F8);
  }

  return result;
}

unint64_t sub_247D73E74()
{
  result = qword_27EE73800;
  if (!qword_27EE73800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73800);
  }

  return result;
}

unint64_t sub_247D73EC8()
{
  result = qword_27EE73808;
  if (!qword_27EE73808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73808);
  }

  return result;
}

unint64_t sub_247D73F48()
{
  result = qword_27EE73810;
  if (!qword_27EE73810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73810);
  }

  return result;
}

unint64_t sub_247D73F9C()
{
  result = qword_27EE73818;
  if (!qword_27EE73818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73818);
  }

  return result;
}

uint64_t sub_247D7401C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 16) = a4();
  result = a5();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_247D74058()
{
  result = qword_27EE73820;
  if (!qword_27EE73820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73820);
  }

  return result;
}

unint64_t sub_247D740AC()
{
  result = qword_27EE73828;
  if (!qword_27EE73828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73828);
  }

  return result;
}

unint64_t sub_247D74100()
{
  result = qword_27EE73838;
  if (!qword_27EE73838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73838);
  }

  return result;
}

unint64_t sub_247D74154()
{
  result = qword_27EE73850;
  if (!qword_27EE73850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73850);
  }

  return result;
}

unint64_t sub_247D741A8()
{
  result = qword_27EE73868;
  if (!qword_27EE73868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73868);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransferConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TransferConstants(_WORD *result, int a2, int a3)
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

unint64_t sub_247D74308()
{
  result = qword_27EE73878;
  if (!qword_27EE73878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73878);
  }

  return result;
}

unint64_t sub_247D74360()
{
  result = qword_27EE73880;
  if (!qword_27EE73880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73880);
  }

  return result;
}

unint64_t sub_247D743B8()
{
  result = qword_27EE73888;
  if (!qword_27EE73888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73888);
  }

  return result;
}

unint64_t sub_247D74410()
{
  result = qword_27EE73890;
  if (!qword_27EE73890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73890);
  }

  return result;
}

unint64_t sub_247D74468()
{
  result = qword_27EE73898;
  if (!qword_27EE73898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73898);
  }

  return result;
}

unint64_t sub_247D744C0()
{
  result = qword_27EE738A0;
  if (!qword_27EE738A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE738A0);
  }

  return result;
}

unint64_t sub_247D74518()
{
  result = qword_27EE738A8;
  if (!qword_27EE738A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE738A8);
  }

  return result;
}

unint64_t sub_247D74570()
{
  result = qword_27EE738B0;
  if (!qword_27EE738B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE738B0);
  }

  return result;
}

unint64_t sub_247D745C8()
{
  result = qword_27EE738B8;
  if (!qword_27EE738B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE738B8);
  }

  return result;
}

uint64_t sub_247D74640()
{
  MEMORY[0x24C1BA0A0](*v0, v0[1]);
  result = sub_247D7482C(v0);
  v2 = result;
  v4 = v3;
  v5 = v0[3];
  if (v5 >> 60 == 15)
  {
    v6 = 0xE300000000000000;
    v7 = 7104878;
LABEL_12:
    MEMORY[0x24C1BA0A0](v7, v6);

    sub_247DD304C();

    MEMORY[0x24C1BA0A0](0x3D68746170, 0xE500000000000000);

    MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
    MEMORY[0x24C1BA0A0](v2, v4);

    MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
    MEMORY[0x24C1BA0A0](0x7A69732D79646F62, 0xEA00000000003D65);

    MEMORY[0x24C1BA0A0](41, 0xE100000000000000);
    return 0x5250545448776152;
  }

  v8 = v0[2];
  v9 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_11;
    }

    v12 = v8 + 16;
    v10 = *(v8 + 16);
    v11 = *(v12 + 8);
    v13 = __OFSUB__(v11, v10);
    v8 = v11 - v10;
    if (!v13)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v9)
  {
    goto LABEL_11;
  }

  if (!__OFSUB__(HIDWORD(v8), v8))
  {
LABEL_11:
    v7 = sub_247DD2CFC();
    v6 = v14;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_247D7482C(uint64_t a1)
{
  v15 = 0;
  v16 = 0xE000000000000000;
  v1 = *(a1 + 32);
  v2 = swift_allocObject();
  *(v2 + 16) = &v15;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_247D8098C;
  *(v3 + 24) = v2;
  v13 = sub_247D809CC;
  v14 = v3;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_247D749D4;
  v12 = &block_descriptor_0;
  v4 = _Block_copy(&v9);

  nw_http_request_access_method();
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v9 = 0x3D646F6874656DLL;
    v10 = 0xE700000000000000;
    v6 = v15;
    v7 = v16;

    MEMORY[0x24C1BA0A0](v6, v7);

    v8 = v9;

    return v8;
  }

  return result;
}

uint64_t sub_247D74A00()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_247D74640();
}

uint64_t sub_247D74A3C()
{
  v1 = sub_247DD20DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73500, &unk_247DD4310);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v36 - v11;
  strcpy(v38, "http-status=");
  BYTE5(v38[1]) = 0;
  HIWORD(v38[1]) = -5120;
  LOWORD(v37) = *v0;
  v13 = sub_247DD321C();
  MEMORY[0x24C1BA0A0](v13);

  v15 = v38[0];
  v16 = v38[1];
  strcpy(v38, "body-size=");
  BYTE3(v38[1]) = 0;
  HIDWORD(v38[1]) = -369098752;
  v17 = *(v0 + 16);
  v36 = v15;
  if (v17 >> 60 != 15)
  {
    v20 = *(v0 + 8);
    v21 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v21 != 2)
      {
        v20 = 0;
        goto LABEL_13;
      }

      v24 = v20 + 16;
      v22 = *(v20 + 16);
      v23 = *(v24 + 8);
      v25 = __OFSUB__(v23, v22);
      v20 = v23 - v22;
      if (!v25)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v21)
    {
      v20 = BYTE6(v17);
LABEL_13:
      v37 = v20;
      v19 = sub_247DD2CFC();
      v18 = v26;
      goto LABEL_14;
    }

    v25 = __OFSUB__(HIDWORD(v20), v20);
    LODWORD(v20) = HIDWORD(v20) - v20;
    if (v25)
    {
      __break(1u);
      return result;
    }

    v20 = v20;
    goto LABEL_13;
  }

  v18 = 0xE300000000000000;
  v19 = 7104878;
LABEL_14:
  MEMORY[0x24C1BA0A0](v19, v18);

  v27 = v38[0];
  v28 = v38[1];
  v38[0] = 0x3D656C6966;
  v38[1] = 0xE500000000000000;
  v29 = type metadata accessor for RawHTTPResponse(0);
  sub_247D6BA6C(v0 + *(v29 + 24), v12, &unk_27EE73500, &unk_247DD4310);
  if ((*(v2 + 48))(v12, 1, v1) == 1)
  {
    v30 = 0xE300000000000000;
    v31 = 7104878;
  }

  else
  {
    (*(v2 + 32))(v8, v12, v1);
    (*(v2 + 16))(v6, v8, v1);
    v32 = sub_247DD2CFC();
    v30 = v33;
    (*(v2 + 8))(v8, v1);
    v31 = v32;
  }

  MEMORY[0x24C1BA0A0](v31, v30);

  v35 = v38[0];
  v34 = v38[1];
  v38[0] = 0;
  v38[1] = 0xE000000000000000;
  sub_247DD304C();

  v38[0] = 0xD000000000000010;
  v38[1] = 0x8000000247DD8F10;
  MEMORY[0x24C1BA0A0](v36, v16);

  MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
  MEMORY[0x24C1BA0A0](v27, v28);

  MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
  MEMORY[0x24C1BA0A0](v35, v34);

  MEMORY[0x24C1BA0A0](41, 0xE100000000000000);
  return v38[0];
}

Cosmo::CosmoHttpConnection::State_optional __swiftcall CosmoHttpConnection.State.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_247DD312C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CosmoHttpConnection.State.rawValue.getter()
{
  v1 = 0x64656C65636E6163;
  if (*v0 != 1)
  {
    v1 = 0x64656C696166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7964616572;
  }
}

uint64_t sub_247D74EC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x64656C65636E6163;
  if (v2 != 1)
  {
    v4 = 0x64656C696166;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7964616572;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x64656C65636E6163;
  if (*a2 != 1)
  {
    v8 = 0x64656C696166;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7964616572;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_247DD322C();
  }

  return v11 & 1;
}

uint64_t sub_247D74FBC()
{
  v1 = *v0;
  sub_247DD32BC();
  sub_247DD2D7C();

  return sub_247DD32EC();
}

uint64_t sub_247D75058()
{
  *v0;
  *v0;
  sub_247DD2D7C();
}

uint64_t sub_247D750E0()
{
  v1 = *v0;
  sub_247DD32BC();
  sub_247DD2D7C();

  return sub_247DD32EC();
}

void sub_247D75184(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x64656C65636E6163;
  if (v2 != 1)
  {
    v5 = 0x64656C696166;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7964616572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t CosmoHttpConnection.Configuration.receiveFileDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CosmoHttpConnection.Configuration(0) + 20);
  v4 = sub_247DD20DC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CosmoHttpConnection.Configuration.init(quicKeepAliveSeconds:receiveFileDirectory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for CosmoHttpConnection.Configuration(0) + 20);
  v6 = sub_247DD20DC();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_247D75304@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_247D83A78;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_247D6ACFC(v4);
}

uint64_t sub_247D75398(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_247D83A50;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_247D6ACFC(v3);
  return sub_247D6A24C(v8);
}

uint64_t sub_247D75454()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_247D6ACFC(v1);
  return v1;
}

uint64_t sub_247D754A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_247D6A24C(v5);
}

uint64_t CosmoHttpConnection.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_id;
  v4 = sub_247DD225C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

_OWORD *sub_247D755C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v99 = a5;
  v96 = a4;
  v91 = a3;
  *&v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73970, &qword_247DD5260);
  v85 = *(v102 - 8);
  v9 = *(v85 + 64);
  MEMORY[0x28223BE20](v102);
  v84 = v77 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73978, &qword_247DD5268);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v86 = v77 - v13;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73980, &qword_247DD5270);
  v87 = *(v88 - 8);
  v14 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v78 = v77 - v15;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73988, &qword_247DD5278);
  v93 = *(v101 - 8);
  v16 = *(v93 + 64);
  MEMORY[0x28223BE20](v101);
  v92 = v77 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73990, &qword_247DD5280);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  *&v100 = v77 - v20;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73998, &qword_247DD5288);
  v94 = *(v95 - 8);
  v21 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v79 = v77 - v22;
  v98 = sub_247DD21EC();
  v97 = *(v98 - 8);
  v23 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v25 = v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_247DD2F6C();
  v82 = *(v83 - 8);
  v26 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v81 = v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_247DD2F3C();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v80 = v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_247DD2A2C();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = sub_247DD225C();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = v77 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[4] = 0u;
  v5[5] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  v5[1] = 0u;
  v38 = OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection;
  *(v5 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection) = 0;
  *(v5 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_awaitingFileTransfer) = 0;
  sub_247DD224C();
  v39 = v37;
  v40 = v99;
  (*(v34 + 32))(v5 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_id, v39, v33);
  v89 = a1;
  sub_247D81F30(a1, v5 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_config, type metadata accessor for CosmoHttpConnection.Configuration);
  v90 = a2;
  sub_247D81F30(a2, v5 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_descriptor, type metadata accessor for NetworkDescriptor);
  if (v40)
  {
    v41 = v40;
  }

  else
  {
    v77[1] = sub_247D6A0F4();
    v77[0] = &OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_httpRequestErrorCallback;
    sub_247DD2A1C();
    *&v104 = MEMORY[0x277D84F90];
    sub_247D83AA0(&unk_27EE73390, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE739B0, &unk_247DD3F70);
    sub_247D6AE30(&qword_27EE733A0, &unk_27EE739B0, &unk_247DD3F70);
    sub_247DD2FFC();
    (*(v82 + 104))(v81, *MEMORY[0x277D85260], v83);
    v41 = sub_247DD2F8C();
  }

  *(v5 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_queue) = v41;
  v42 = v40;
  sub_247DD21DC();
  sub_247DD21BC();
  v44 = v43;
  (*(v97 + 8))(v25, v98);
  v45 = v44 * 1000.0;
  v46 = v100;
  v47 = v101;
  if (COERCE__INT64(fabs(v44 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v45 <= -1.0)
  {
    goto LABEL_17;
  }

  if (v45 < 1.84467441e19)
  {
    v99 = v42;
    *(v5 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_epochMillisAtInit) = v45;
    *(v5 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_initiated) = v91 & 1;
    v48 = *(v5 + v38);
    *(v6 + v38) = v96;

    sub_247DD263C();
    if (qword_27EE732F0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  swift_once();
LABEL_9:
  __swift_project_value_buffer(v47, qword_27EE74060);
  sub_247DD2E5C();

  sub_247D6AE30(&qword_27EE739C0, &qword_27EE73988, &qword_247DD5278);
  v49 = v92;
  v50 = v101;
  sub_247DD236C();
  sub_247DD238C();
  (*(v93 + 8))(v49, v50);

  v51 = v94;
  v52 = v95;
  v53 = (*(v94 + 48))(v46, 1, v95);
  v54 = v102;
  if (v53 == 1)
  {
    sub_247D6BAD4(v46, &qword_27EE73990, &qword_247DD5280);
    sub_247DD263C();
    if (qword_27EE732F8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v54, qword_27EE74078);
    sub_247DD2E5C();

    sub_247D6AE30(&qword_27EE739C8, &qword_27EE73970, &qword_247DD5260);
    v55 = v84;
    sub_247DD236C();
    v56 = v86;
    v57 = v102;
    sub_247DD238C();
    (*(v85 + 8))(v55, v57);

    v58 = v87;
    v59 = v56;
    v60 = v56;
    v61 = v88;
    if ((*(v87 + 48))(v59, 1, v88) == 1)
    {
      sub_247D6BAD4(v60, &qword_27EE73978, &qword_247DD5268);
      v62 = sub_247DD263C();
      v64 = v63;

      sub_247D7FD5C(v90, type metadata accessor for NetworkDescriptor);
      sub_247D7FD5C(v89, type metadata accessor for CosmoHttpConnection.Configuration);
    }

    else
    {
      v71 = v78;
      (*(v58 + 32))(v78, v60, v61);
      sub_247DD239C();

      v72 = MEMORY[0x24C1BA020](v107, v108, v109, v110);
      v74 = v73;

      *&v104 = v72;
      *(&v104 + 1) = v74;

      MEMORY[0x24C1BA0A0](0xD000000000000015, 0x8000000247DD9170);

      v64 = *(&v104 + 1);
      v62 = v104;
      sub_247D7FD5C(v90, type metadata accessor for NetworkDescriptor);
      sub_247D7FD5C(v89, type metadata accessor for CosmoHttpConnection.Configuration);
      (*(v58 + 8))(v71, v61);
    }
  }

  else
  {
    (*(v51 + 32))();
    sub_247DD239C();

    v100 = v111;
    v66 = v112;
    v65 = v113;
    v102 = v114;
    v67 = v116;
    v101 = v115;
    v68 = MEMORY[0x24C1BA020](v107, v108, v109, v110);
    v70 = v69;

    *&v104 = v68;
    *(&v104 + 1) = v70;

    MEMORY[0x24C1BA0A0](0xD000000000000018, 0x8000000247DD9190);

    v103 = v104;
    v104 = v100;
    v105 = v66;
    v106 = v65;
    sub_247D83AE8();
    sub_247DD2D9C();

    v104 = v103;

    MEMORY[0x24C1BA0A0](10272, 0xE200000000000000);

    v103 = v104;
    v104 = v102;
    v105 = v101;
    v106 = v67;
    sub_247DD2D9C();

    v104 = v103;

    MEMORY[0x24C1BA0A0](23849, 0xE200000000000000);

    v64 = *(&v104 + 1);
    v62 = v104;
    sub_247D7FD5C(v90, type metadata accessor for NetworkDescriptor);
    sub_247D7FD5C(v89, type metadata accessor for CosmoHttpConnection.Configuration);
    (*(v51 + 8))(v79, v52);
  }

  v75 = (v6 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_name);
  *v75 = v62;
  v75[1] = v64;
  return v6;
}

uint64_t sub_247D76600(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection))
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection);

    v4 = sub_247D76840(v3);
    v6 = v5;
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v7 = sub_247DD23CC();
    __swift_project_value_buffer(v7, qword_27EE7B878);

    v8 = sub_247DD23AC();
    v9 = sub_247DD2F2C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_247D72868(v4, v6, &v15);
      _os_log_impl(&dword_247D56000, v8, v9, "Starting %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x24C1BAF60](v11, -1, -1);
      MEMORY[0x24C1BAF60](v10, -1, -1);
    }

    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = v4;
    v13[4] = v6;

    sub_247D6ACFC(sub_247D83A0C);
    sub_247DD264C();

    v14 = *(v1 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_queue);
    sub_247DD269C();
  }

  return result;
}

uint64_t sub_247D76840(uint64_t a1)
{
  if (a1)
  {
    sub_247DD258C();
    v1 = sub_247DD321C();
    MEMORY[0x24C1BA0A0](v1);

    MEMORY[0x24C1BA0A0](41, 0xE100000000000000);
    v3 = 4401184;
    v2 = 0xE300000000000000;
  }

  else
  {
    v3 = 0;
    v2 = 0xE000000000000000;
  }

  v4 = sub_247D88148();
  sub_247DD304C();

  MEMORY[0x24C1BA0A0](0x7473205054544820, 0xEC0000006D616572);
  MEMORY[0x24C1BA0A0](v3, v2);

  return v4;
}

void sub_247D7695C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v176 = a4;
  v172 = a3;
  v5 = sub_247DD249C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v163 = &v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73B60, &qword_247DD5250);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v167 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v159 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v164 = &v159 - v16;
  MEMORY[0x28223BE20](v15);
  v168 = &v159 - v17;
  v18 = sub_247DD294C();
  v177 = *(v18 - 8);
  v19 = v177[8];
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v159 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v174 = &v159 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v165 = &v159 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v171 = &v159 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v159 - v30;
  MEMORY[0x28223BE20](v29);
  v173 = (&v159 - v32);
  v162 = sub_247DD280C();
  v161 = *(v162 - 8);
  v33 = *(v161 + 64);
  MEMORY[0x28223BE20](v162);
  v160 = (&v159 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v170 = type metadata accessor for NetworkDescriptor();
  v35 = *(*(v170 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v170);
  v166 = &v159 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v169 = &v159 - v39;
  MEMORY[0x28223BE20](v38);
  v41 = &v159 - v40;
  v42 = sub_247DD268C();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  v46 = &v159 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  (*(v43 + 16))(v46, a1, v42);
  v47 = (*(v43 + 88))(v46, v42);
  if (v47 == *MEMORY[0x277CD8DE8])
  {
    (*(v43 + 96))(v46, v42);
    v48 = v177;
    v49 = v174;
    v173 = v177[4];
    v173(v174, v46, v18);
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v50 = sub_247DD23CC();
    __swift_project_value_buffer(v50, qword_27EE7B878);
    v51 = v48[2];
    v51(v22, v49, v18);
    v52 = v176;

    v53 = sub_247DD23AC();
    v54 = sub_247DD2F2C();

    if (os_log_type_enabled(v53, v54))
    {
      LODWORD(v170) = v54;
      v55 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      v178[0] = v169;
      *v55 = 136315394;
      *(v55 + 4) = sub_247D72868(v172, v52, v178);
      *(v55 + 12) = 2080;
      v51(v14, v22, v18);
      (v48[7])(v14, 0, 1, v18);
      v56 = v167;
      sub_247D6BA6C(v14, v167, &unk_27EE73B60, &qword_247DD5250);
      if ((v48[6])(v56, 1, v18) == 1)
      {
        v57 = 7104878;
        v58 = 0xE300000000000000;
      }

      else
      {
        v83 = v56;
        v84 = v171;
        v173(v171, v83, v18);
        v51(v165, v84, v18);
        v57 = sub_247DD2CFC();
        v58 = v85;
        (v48[1])(v84, v18);
      }

      sub_247D6BAD4(v14, &unk_27EE73B60, &qword_247DD5250);
      v75 = v48[1];
      v75(v22, v18);
      v86 = sub_247D72868(v57, v58, v178);

      *(v55 + 14) = v86;
      _os_log_impl(&dword_247D56000, v53, v170, "%s in waiting state, error=%s", v55, 0x16u);
      v87 = v169;
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v87, -1, -1);
      MEMORY[0x24C1BAF60](v55, -1, -1);
    }

    else
    {

      v75 = v48[1];
      v75(v22, v18);
    }

    sub_247D781D4();

    v75(v174, v18);
    return;
  }

  if (v47 == *MEMORY[0x277CD8DE0])
  {
    (*(v43 + 96))(v46, v42);
    v59 = v177;
    v60 = v173;
    v61 = v18;
    v174 = v177[4];
    (v174)(v173, v46, v18);
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v62 = sub_247DD23CC();
    __swift_project_value_buffer(v62, qword_27EE7B878);
    v63 = v59[2];
    v63(v31, v60, v61);
    v64 = v176;

    v65 = sub_247DD23AC();
    v66 = sub_247DD2F0C();

    v67 = os_log_type_enabled(v65, v66);
    v68 = Strong;
    if (v67)
    {
      LODWORD(v167) = v66;
      v69 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v178[0] = v162;
      *v69 = 136315394;
      *(v69 + 4) = sub_247D72868(v172, v64, v178);
      *(v69 + 12) = 2080;
      v70 = v168;
      v63(v168, v31, v61);
      (v59[7])(v70, 0, 1, v61);
      v71 = v70;
      v72 = v164;
      sub_247D6BA6C(v71, v164, &unk_27EE73B60, &qword_247DD5250);
      if ((v59[6])(v72, 1, v61) == 1)
      {
        v73 = 7104878;
        v74 = 0xE300000000000000;
      }

      else
      {
        v91 = v72;
        v92 = v171;
        (v174)(v171, v91, v61);
        v63(v165, v92, v61);
        v73 = sub_247DD2CFC();
        v74 = v93;
        (v59[1])(v92, v61);
      }

      sub_247D6BAD4(v168, &unk_27EE73B60, &qword_247DD5250);
      v88 = v59[1];
      v88(v31, v61);
      v94 = sub_247D72868(v73, v74, v178);

      *(v69 + 14) = v94;
      _os_log_impl(&dword_247D56000, v65, v167, "%s failed, error=%s", v69, 0x16u);
      v95 = v162;
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v95, -1, -1);
      MEMORY[0x24C1BAF60](v69, -1, -1);
    }

    else
    {

      v88 = v59[1];
      v88(v31, v61);
    }

    sub_247D781D4();
    v96 = OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_descriptor;
    v97 = v169;
    sub_247D81F30(v68 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_descriptor, v169, type metadata accessor for NetworkDescriptor);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_247D7FD5C(v97, type metadata accessor for NetworkDescriptor);
    if (EnumCaseMultiPayload == 2 && *(v68 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_initiated) == 1 && (v99 = v171, *v171 = 53, (v177[13])(v99, *MEMORY[0x277CD8FB0], v61), v100 = MEMORY[0x24C1B9C30](v173, v99), v88(v99, v61), (v100 & 1) != 0))
    {
      sub_247D873E8(v163);
      sub_247D879F4();
      v101 = sub_247DD26FC();
      v102 = *(v101 + 48);
      v103 = *(v101 + 52);
      swift_allocObject();
      v104 = sub_247DD265C();
      v105 = *(v68 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection);
      *(v68 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection) = v104;

      sub_247D765E0(v106);

      v88(v173, v61);
    }

    else
    {
      v107 = v166;
      sub_247D81F30(v68 + v96, v166, type metadata accessor for NetworkDescriptor);
      v108 = swift_getEnumCaseMultiPayload();
      sub_247D7FD5C(v107, type metadata accessor for NetworkDescriptor);
      if (v108 != 2)
      {
        goto LABEL_43;
      }

      v109 = v171;
      *v171 = 54;
      v110 = *MEMORY[0x277CD8FB0];
      v111 = v177[13];
      v111(v109, v110, v61);
      v112 = MEMORY[0x24C1B9C30](v173, v109);
      v88(v109, v61);
      if (v112 & 1) != 0 || (v113 = v171, *v171 = 96, v111(v113, v110, v61), v114 = MEMORY[0x24C1B9C30](v173, v113), v88(v113, v61), (v114))
      {
        swift_beginAccess();
        v115 = *(v68 + 16);
        if (v115)
        {
          v116 = *(v68 + 24);
          v179 = 1;

          v115(&v179);
          sub_247D6A24C(v115);
        }

        v88(v173, v61);
      }

      else
      {
LABEL_43:
        swift_beginAccess();
        v117 = *(v68 + 16);
        if (v117)
        {
          v118 = *(v68 + 24);
          v179 = 2;

          v117(&v179);
          sub_247D6A24C(v117);
        }

        v88(v173, v61);
      }
    }

    return;
  }

  if (v47 == *MEMORY[0x277CD8DD8])
  {
    v76 = v176;
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v77 = sub_247DD23CC();
    __swift_project_value_buffer(v77, qword_27EE7B878);

    v78 = sub_247DD23AC();
    v79 = sub_247DD2F2C();

    if (!os_log_type_enabled(v78, v79))
    {
      goto LABEL_30;
    }

    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v178[0] = v81;
    *v80 = 136315138;
    *(v80 + 4) = sub_247D72868(v172, v76, v178);
    v82 = "%s in setup state";
LABEL_29:
    _os_log_impl(&dword_247D56000, v78, v79, v82, v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v81);
    MEMORY[0x24C1BAF60](v81, -1, -1);
    MEMORY[0x24C1BAF60](v80, -1, -1);
LABEL_30:

    return;
  }

  v89 = v176;
  if (v47 == *MEMORY[0x277CD8DF8])
  {
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v90 = sub_247DD23CC();
    __swift_project_value_buffer(v90, qword_27EE7B878);

    v78 = sub_247DD23AC();
    v79 = sub_247DD2F2C();

    if (!os_log_type_enabled(v78, v79))
    {
      goto LABEL_30;
    }

    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v178[0] = v81;
    *v80 = 136315138;
    *(v80 + 4) = sub_247D72868(v172, v89, v178);
    v82 = "%s in preparing state";
    goto LABEL_29;
  }

  if (v47 == *MEMORY[0x277CD8DD0])
  {
    v119 = Strong;
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v120 = sub_247DD23CC();
    __swift_project_value_buffer(v120, qword_27EE7B878);

    v121 = sub_247DD23AC();
    v122 = sub_247DD2F2C();

    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v178[0] = v124;
      *v123 = 136315138;
      *(v123 + 4) = sub_247D72868(v172, v89, v178);
      _os_log_impl(&dword_247D56000, v121, v122, "%s in ready state", v123, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v124);
      MEMORY[0x24C1BAF60](v124, -1, -1);
      MEMORY[0x24C1BAF60](v123, -1, -1);
    }

    sub_247D81F30(v119 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_descriptor, v41, type metadata accessor for NetworkDescriptor);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_247D6A1F8(*(v41 + 1), *(v41 + 2));
      sub_247D6A1F8(*(v41 + 3), *(v41 + 4));
      v125 = *(v41 + 5);
      swift_unknownObjectRelease();
      v126 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73580, &qword_247DD4348) + 96);
      v127 = sub_247DD225C();
      (*(*(v127 - 8) + 8))(&v41[v126], v127);
      if (!*(v119 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection))
      {
        goto LABEL_78;
      }

      sub_247DD285C();

      sub_247DD27FC();
      v128 = sub_247DD26DC();

      if (!v128)
      {
        goto LABEL_78;
      }

      sub_247DD284C();
      if (swift_dynamicCastClass())
      {

        v129 = sub_247DD23AC();
        v130 = sub_247DD2EEC();

        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          v178[0] = v132;
          *v131 = 136315394;
          *(v131 + 4) = sub_247D72868(v172, v176, v178);
          *(v131 + 12) = 2048;
          *(v131 + 14) = *(v119 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_config);

          _os_log_impl(&dword_247D56000, v129, v130, "%s setting keep-alive to %ld seconds", v131, 0x16u);
          __swift_destroy_boxed_opaque_existential_0Tm(v132);
          v133 = v132;
          v89 = v176;
          MEMORY[0x24C1BAF60](v133, -1, -1);
          MEMORY[0x24C1BAF60](v131, -1, -1);
        }

        else
        {
        }

        v148 = v160;
        *v160 = *(v119 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_config);
        (*(v161 + 104))(v148, *MEMORY[0x277CD8EA0], v162);
        sub_247DD283C();
        if ((*(v119 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_initiated) & 1) == 0)
        {
          v149 = sub_247DD281C();
          if (__OFADD__(*v150, 2))
          {
            __break(1u);
            return;
          }

          *v150 += 2;
          v149(v178, 0);

          v151 = sub_247DD23AC();
          v152 = sub_247DD2EEC();

          if (!os_log_type_enabled(v151, v152))
          {

            goto LABEL_78;
          }

          v153 = swift_slowAlloc();
          v154 = swift_slowAlloc();
          v155 = v89;
          v156 = v154;
          v178[0] = v154;
          *v153 = 136315394;
          *(v153 + 4) = sub_247D72868(v172, v155, v178);
          *(v153 + 12) = 2048;
          *(v153 + 14) = sub_247DD282C();

          _os_log_impl(&dword_247D56000, v151, v152, "%s set localMaxStreamsBidirectional to %ld", v153, 0x16u);
          __swift_destroy_boxed_opaque_existential_0Tm(v156);
          MEMORY[0x24C1BAF60](v156, -1, -1);
          MEMORY[0x24C1BAF60](v153, -1, -1);
        }
      }
    }

    else
    {
      sub_247D7FD5C(v41, type metadata accessor for NetworkDescriptor);
    }

LABEL_78:
    swift_beginAccess();
    v157 = *(v119 + 16);
    if (v157)
    {
      v158 = *(v119 + 24);
      v179 = 0;

      v157(&v179);
      sub_247D6A24C(v157);
    }

    if ((*(v119 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_initiated) & 1) == 0)
    {
      sub_247D7AD70();
    }

LABEL_65:

    return;
  }

  if (v47 == *MEMORY[0x277CD8DF0])
  {
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v134 = sub_247DD23CC();
    __swift_project_value_buffer(v134, qword_27EE7B878);

    v135 = sub_247DD23AC();
    v136 = sub_247DD2F2C();

    v137 = os_log_type_enabled(v135, v136);
    v138 = Strong;
    if (v137)
    {
      v139 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v178[0] = v140;
      *v139 = 136315138;
      *(v139 + 4) = sub_247D72868(v172, v89, v178);
      _os_log_impl(&dword_247D56000, v135, v136, "%s in cancelled state", v139, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v140);
      MEMORY[0x24C1BAF60](v140, -1, -1);
      MEMORY[0x24C1BAF60](v139, -1, -1);
    }

    swift_beginAccess();
    v141 = *(v138 + 16);
    if (v141)
    {
      v142 = *(v138 + 24);
      v179 = 1;

      v141(&v179);
      sub_247D6A24C(v141);
    }

    goto LABEL_65;
  }

  if (qword_27EE73260 != -1)
  {
    swift_once();
  }

  v143 = sub_247DD23CC();
  __swift_project_value_buffer(v143, qword_27EE7B878);

  v144 = sub_247DD23AC();
  v145 = sub_247DD2F0C();

  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    v178[0] = v147;
    *v146 = 136315138;
    *(v146 + 4) = sub_247D72868(v172, v89, v178);
    _os_log_impl(&dword_247D56000, v144, v145, "%s in unknown state", v146, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v147);
    MEMORY[0x24C1BAF60](v147, -1, -1);
    MEMORY[0x24C1BAF60](v146, -1, -1);
  }

  (*(v43 + 8))(v46, v42);
}

uint64_t sub_247D781F4(uint64_t a1, uint64_t a2)
{
  v5 = sub_247DD2A0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_247DD2A2C();
  v10 = *(v17 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v17);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_queue);
  aBlock[4] = a1;
  v20 = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v18 = MEMORY[0x277D84F90];
  sub_247D83AA0(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v13, v9, v14);
  _Block_release(v14);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v17);
}

uint64_t sub_247D784A0(uint64_t a1)
{
  v2 = sub_247DD268C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v30 - v9;
  v11 = OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection;
  if (*(a1 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection))
  {
    swift_beginAccess();
    v12 = *(a1 + 16);
    if (v12)
    {
      v31 = v11;
      v13 = *(a1 + 24);

      sub_247D6ACFC(v12);
      sub_247DD26AC();
      (*(v3 + 104))(v7, *MEMORY[0x277CD8DD8], v2);
      v14 = MEMORY[0x24C1B9970](v10, v7);
      v15 = *(v3 + 8);
      v15(v7, v2);
      v15(v10, v2);
      if (v14)
      {
        v30 = v12;
        if (qword_27EE73260 != -1)
        {
          swift_once();
        }

        v16 = sub_247DD23CC();
        __swift_project_value_buffer(v16, qword_27EE7B878);

        v17 = sub_247DD23AC();
        v18 = sub_247DD2F2C();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v32 = v20;
          *v19 = 136315138;
          v21 = *(a1 + v31);

          v23 = sub_247D76840(v22);
          v25 = v24;

          v26 = sub_247D72868(v23, v25, &v32);

          *(v19 + 4) = v26;
          _os_log_impl(&dword_247D56000, v17, v18, "%s, canceling (never started)", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v20);
          MEMORY[0x24C1BAF60](v20, -1, -1);
          MEMORY[0x24C1BAF60](v19, -1, -1);
        }

        LOBYTE(v32) = 1;
        v27 = v30;
        v30(&v32);
        v28 = v27;
      }

      else
      {
        v28 = v12;
      }

      sub_247D6A24C(v28);
      v11 = v31;
    }

    else
    {
    }

    sub_247DD26BC();

    v29 = *(a1 + v11);
    *(a1 + v11) = 0;
  }

  return result;
}

void sub_247D787E4(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, void *a4)
{
  v8 = sub_247DD21EC();
  v113 = *(v8 - 8);
  v114 = v8;
  isa = v113[8].isa;
  MEMORY[0x28223BE20](v8);
  v112 = v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73500, &unk_247DD4310);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v102 - v13;
  v15 = sub_247DD20DC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v117 = v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v19;
  MEMORY[0x28223BE20](v18);
  v119 = v102 - v20;
  v121 = sub_247DD261C();
  v21 = *(v121 - 8);
  v22 = v21[8];
  v23 = MEMORY[0x28223BE20](v121);
  MEMORY[0x28223BE20](v23);
  v27 = (v102 - v26);
  v120 = a1;
  v28 = *(a1 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection);
  if (v28)
  {
    v108 = v25;
    v109 = v24;
    v115 = v16;
    v116 = v15;
    sub_247D6B5C0(a4, v123);
    v29 = swift_retain_n();
    v30 = v120;
    v31 = sub_247D76840(v29);
    v33 = v32;
    LODWORD(v30) = *(v30 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_initiated);
    v34 = swift_allocObject();
    v110 = v30;
    *(v34 + 16) = v30;
    *(v34 + 24) = v31;
    *(v34 + 32) = v33;
    *(v34 + 40) = v28;
    *(v34 + 48) = a2;
    *(v34 + 56) = a3;
    *v27 = sub_247D8188C;
    v27[1] = v34;
    v35 = *MEMORY[0x277CD8DB0];
    v36 = v21[13];
    v118 = v27;
    v36(v27, v35, v121);

    sub_247D6ACFC(a2);
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v37 = sub_247DD23CC();
    __swift_project_value_buffer(v37, qword_27EE7B878);

    v38 = sub_247DD23AC();
    v39 = sub_247DD2F2C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v107 = v21;
      v42 = v41;
      v122 = v41;
      *v40 = 136315394;
      v43 = sub_247D72868(v31, v33, &v122);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2080;
      v44 = sub_247D79350(v123);
      v46 = sub_247D72868(v44, v45, &v122);

      *(v40 + 14) = v46;
      _os_log_impl(&dword_247D56000, v38, v39, "%s sending message=%s", v40, 0x16u);
      swift_arrayDestroy();
      v21 = v107;
      MEMORY[0x24C1BAF60](v42, -1, -1);
      MEMORY[0x24C1BAF60](v40, -1, -1);
    }

    else
    {
    }

    v54 = nw_content_context_create("context");
    v55 = a4[3];
    v56 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v55);
    v57 = (*(v56 + 8))(v55, v56);
    nw_content_context_set_metadata_for_protocol(v54, v57);
    swift_unknownObjectRelease();
    v58 = a4[3];
    v59 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v58);
    (*(v59 + 24))(v58, v59);
    v61 = v115;
    v60 = v116;
    if ((*(v115 + 48))(v14, 1, v116) == 1)
    {

      sub_247D6BAD4(v14, &unk_27EE73500, &unk_247DD4310);
      v62 = sub_247DD260C();
      v63 = *(v62 + 48);
      v64 = *(v62 + 52);
      swift_allocObject();
      swift_unknownObjectRetain();
      sub_247DD25DC();
      v65 = a4[3];
      v66 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, v65);
      v67 = (*(v66 + 16))(v65, v66);
      v69 = v68;
      sub_247DD266C();
      sub_247D6C0AC(v67, v69);

      if (v110)
      {
LABEL_17:
        v70 = a4[3];
        v71 = a4[4];
        __swift_project_boxed_opaque_existential_1(a4, v70);
        if ((*(v71 + 32))(v70, v71))
        {
          *(v120 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_awaitingFileTransfer) = 1;
        }

        sub_247D7AD70();

        swift_unknownObjectRelease();
        goto LABEL_28;
      }

LABEL_27:
      swift_unknownObjectRelease();

LABEL_28:
      (v21[1])(v118, v121);
      __swift_destroy_boxed_opaque_existential_0Tm(v123);
      return;
    }

    v107 = *(v61 + 32);
    (v107)(v119, v14, v60);
    nw_content_context_set_is_final(v54, 0);
    v72 = sub_247DD260C();
    v73 = *(v72 + 48);
    v74 = *(v72 + 52);
    swift_allocObject();
    swift_unknownObjectRetain();
    v75 = sub_247DD25DC();
    v76 = URL.fileSize.getter();
    if (v77)
    {
      v78 = 1;
    }

    else
    {
      v78 = v76;
    }

    v106 = sub_247D76840(v28);
    v105 = v79;

    v80 = v112;
    sub_247DD21CC();
    sub_247DD21BC();
    v82 = v81;
    (v113[1].isa)(v80, v114);
    v83 = v82 * 1000.0;
    if (COERCE__INT64(fabs(v82 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v83 > -1.0)
    {
      if (v83 < 1.84467441e19)
      {
        v84 = v83;
        v103 = v83;
        v104 = swift_allocObject();
        *(v104 + 16) = v84;
        v85 = *(v61 + 16);
        v112 = v75;
        v85(v117, v119, v60);
        (v21[2])(v109, v118, v121);
        v86 = *(v61 + 80);
        v113 = v54;
        v87 = (v86 + 32) & ~v86;
        v88 = v111 + v87 + 7;
        v111 = v78;
        v89 = v88 & 0xFFFFFFFFFFFFFFF8;
        v90 = ((v88 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
        v102[1] = v61 + 32;
        v91 = (v90 + 23) & 0xFFFFFFFFFFFFFFF8;
        v92 = *(v21 + 80);
        v114 = a4;
        v93 = (v92 + v91 + 8) & ~v92;
        v94 = v21;
        v95 = (v108 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
        v96 = swift_allocObject();
        v97 = v105;
        *(v96 + 16) = v106;
        *(v96 + 24) = v97;
        (v107)(v96 + v87, v117, v60);
        *(v96 + v89) = v103;
        v98 = (v96 + v90);
        v99 = v104;
        *v98 = sub_247D83B84;
        v98[1] = v99;
        *(v96 + v91) = v28;
        v100 = v96 + v93;
        a4 = v114;
        (v94[4])(v100, v109, v121);
        *(v96 + v95) = v111;
        v21 = v94;
        swift_retain_n();

        v101 = v119;
        sub_247DD26EC();

        (*(v115 + 8))(v101, v116);
        if (v110)
        {
          goto LABEL_17;
        }

        goto LABEL_27;
      }

LABEL_32:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_32;
  }

  if (qword_27EE73260 != -1)
  {
    swift_once();
  }

  v47 = sub_247DD23CC();
  __swift_project_value_buffer(v47, qword_27EE7B878);
  v48 = sub_247DD23AC();
  v49 = sub_247DD2F0C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v123[0] = v51;
    *v50 = 136315138;
    *(v50 + 4) = sub_247D72868(0xD00000000000001ELL, 0x8000000247DD8F70, v123);
    _os_log_impl(&dword_247D56000, v48, v49, "%s connection is nil", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v51);
    MEMORY[0x24C1BAF60](v51, -1, -1);
    MEMORY[0x24C1BAF60](v50, -1, -1);
  }

  if (a2)
  {
    sub_247D6AFB0();
    v52 = swift_allocError();
    *v53 = 0xD000000000000030;
    *(v53 + 8) = 0x8000000247DD8F30;
    *(v53 + 16) = 1;
    a2(v52, 1);
  }
}

uint64_t sub_247D79350(void *a1)
{
  v2 = sub_247DD20DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v49 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73500, &unk_247DD4310);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  v52 = 0x7A69732D79646F62;
  v53 = 0xEA00000000003D65;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = (*(v17 + 16))(v16, v17);
  if (v19 >> 60 != 15)
  {
    v22 = v19 >> 62;
    if ((v19 >> 62) > 1)
    {
      if (v22 != 2)
      {
        sub_247D6C0AC(v18, v19);
        v24 = 0;
        goto LABEL_13;
      }

      v26 = *(v18 + 16);
      v25 = *(v18 + 24);
      v18 = sub_247D6C0AC(v18, v19);
      v24 = v25 - v26;
      if (!__OFSUB__(v25, v26))
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v22)
    {
      v23 = BYTE6(v19);
      sub_247D6C0AC(v18, v19);
      v24 = v23;
LABEL_13:
      v51 = v24;
      v21 = sub_247DD2CFC();
      v20 = v30;
      goto LABEL_14;
    }

    v27 = HIDWORD(v18);
    v28 = v18;
    result = sub_247D6C0AC(v18, v19);
    LODWORD(v24) = v27 - v28;
    if (__OFSUB__(v27, v28))
    {
      __break(1u);
      return result;
    }

    v24 = v24;
    goto LABEL_13;
  }

  v20 = 0xE300000000000000;
  v21 = 7104878;
LABEL_14:
  MEMORY[0x24C1BA0A0](v21, v20);

  v31 = v53;
  v50 = v52;
  v52 = 0x3D656C6966;
  v53 = 0xE500000000000000;
  v32 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  (*(v33 + 24))(v32, v33);
  sub_247D6BA6C(v15, v13, &unk_27EE73500, &unk_247DD4310);
  if ((*(v3 + 48))(v13, 1, v2) == 1)
  {
    v34 = 0xE300000000000000;
    v35 = 7104878;
  }

  else
  {
    v36 = v49;
    (*(v3 + 32))(v49, v13, v2);
    (*(v3 + 16))(v7, v36, v2);
    v35 = sub_247DD2CFC();
    v34 = v37;
    (*(v3 + 8))(v36, v2);
  }

  sub_247D6BAD4(v15, &unk_27EE73500, &unk_247DD4310);
  MEMORY[0x24C1BA0A0](v35, v34);

  v39 = v52;
  v38 = v53;
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_247DD304C();

  v52 = 0xD000000000000016;
  v53 = 0x8000000247DD8FA0;
  v40 = a1[3];
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v40);
  v42 = (*(v41 + 32))(v40, v41);
  v43 = (v42 & 1) == 0;
  if (v42)
  {
    v44 = 1702195828;
  }

  else
  {
    v44 = 0x65736C6166;
  }

  if (v43)
  {
    v45 = 0xE500000000000000;
  }

  else
  {
    v45 = 0xE400000000000000;
  }

  MEMORY[0x24C1BA0A0](v44, v45);

  v47 = v52;
  v46 = v53;
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_247DD304C();

  v52 = 0xD000000000000011;
  v53 = 0x8000000247DD8FC0;
  MEMORY[0x24C1BA0A0](v50, v31);

  MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
  MEMORY[0x24C1BA0A0](v39, v38);

  MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
  MEMORY[0x24C1BA0A0](v47, v46);

  MEMORY[0x24C1BA0A0](41, 0xE100000000000000);
  return v52;
}

uint64_t sub_247D79818(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t), uint64_t a7)
{
  v70 = a7;
  v71 = a6;
  v68 = a5;
  v65 = a4;
  v63 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73B60, &qword_247DD5250);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v69 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v64 = &v56 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v66 = &v56 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v56 - v17;
  v19 = sub_247DD294C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v67 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v62 = &v56 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v56 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v56 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v56 - v32;
  v34 = *(v20 + 48);
  v72 = a1;
  result = v34(a1, 1, v19);
  if (result != 1 || (a2 & 1) == 0)
  {
    sub_247D6BA6C(v72, v18, &unk_27EE73B60, &qword_247DD5250);
    if (v34(v18, 1, v19) == 1)
    {
      sub_247D6BAD4(v18, &unk_27EE73B60, &qword_247DD5250);
    }

    else
    {
      v57 = *(v20 + 32);
      v58 = v20 + 32;
      v57(v33, v18, v19);
      if (qword_27EE73260 != -1)
      {
        swift_once();
      }

      v36 = sub_247DD23CC();
      __swift_project_value_buffer(v36, qword_27EE7B878);
      v60 = *(v20 + 16);
      v60(v31, v33, v19);
      v61 = v33;
      v37 = v65;

      v38 = sub_247DD23AC();
      v39 = sub_247DD2F0C();

      v59 = v39;
      if (os_log_type_enabled(v38, v39))
      {
        v56 = v38;
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v73 = v41;
        *v40 = 136315394;
        *(v40 + 4) = sub_247D72868(v63, v37, &v73);
        *(v40 + 12) = 2080;
        v42 = v66;
        v60(v66, v31, v19);
        (*(v20 + 56))(v42, 0, 1, v19);
        v43 = v42;
        v44 = v64;
        sub_247D6BA6C(v43, v64, &unk_27EE73B60, &qword_247DD5250);
        if (v34(v44, 1, v19) == 1)
        {
          v45 = 0xE300000000000000;
          v65 = 7104878;
        }

        else
        {
          v57(v28, v44, v19);
          v60(v62, v28, v19);
          v65 = sub_247DD2CFC();
          v45 = v47;
          (*(v20 + 8))(v28, v19);
        }

        sub_247D6BAD4(v66, &unk_27EE73B60, &qword_247DD5250);
        v48 = *(v20 + 8);
        v48(v31, v19);
        v49 = sub_247D72868(v65, v45, &v73);

        *(v40 + 14) = v49;
        v50 = v56;
        _os_log_impl(&dword_247D56000, v56, v59, "%s encountered error=%s while sending", v40, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v41, -1, -1);
        MEMORY[0x24C1BAF60](v40, -1, -1);

        v48(v61, v19);
      }

      else
      {

        v46 = *(v20 + 8);
        v46(v31, v19);
        v46(v61, v19);
      }
    }

    result = sub_247DD26BC();
  }

  v51 = v71;
  if (v71)
  {
    v52 = v69;
    sub_247D6BA6C(v72, v69, &unk_27EE73B60, &qword_247DD5250);
    if (v34(v52, 1, v19) == 1)
    {

      sub_247D6BAD4(v52, &unk_27EE73B60, &qword_247DD5250);
      v51(0, 0);
      return sub_247D6A24C(v51);
    }

    else
    {
      v53 = v67;
      (*(v20 + 32))(v67, v52, v19);
      sub_247D83AA0(&qword_27EE73948, MEMORY[0x277CD8FC0]);
      v54 = swift_allocError();
      (*(v20 + 16))(v55, v53, v19);

      v51(v54, 1);
      sub_247D6A24C(v51);

      return (*(v20 + 8))(v53, v19);
    }
  }

  return result;
}

uint64_t sub_247D79F50(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t (*a8)(void), uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v130 = a7;
  v131 = a8;
  v136 = a6;
  v137 = a4;
  LODWORD(v138) = a2;
  v141 = a9;
  v142 = a5;
  v14 = sub_247DD21EC();
  v133 = *(v14 - 8);
  v134 = v14;
  v15 = *(v133 + 64);
  MEMORY[0x28223BE20](v14);
  v132 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_247DD20DC();
  v140 = *(v17 - 8);
  v18 = *(v140 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v139 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v135 = &v115 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73B60, &qword_247DD5250);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v127 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v128 = &v115 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v115 - v28;
  v30 = sub_247DD294C();
  v31 = *(v30 - 8);
  v32 = v31[8];
  v33 = MEMORY[0x28223BE20](v30);
  v125 = &v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v126 = &v115 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v115 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v115 - v40;
  sub_247D6BA6C(a3, v29, &unk_27EE73B60, &qword_247DD5250);
  v42 = v31[6];
  if (v42(v29, 1, v30) == 1)
  {
    sub_247D6BAD4(v29, &unk_27EE73B60, &qword_247DD5250);
    v43 = v142;
  }

  else
  {
    v120 = v42;
    v129 = v17;
    v124 = a1;
    v44 = v31[4];
    v118 = v31 + 4;
    v117 = v44;
    v44(v41, v29, v30);
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v45 = sub_247DD23CC();
    __swift_project_value_buffer(v45, qword_27EE7B878);
    v119 = v31[2];
    v119(v39, v41, v30);
    v46 = v140;
    v47 = *(v140 + 16);
    v122 = v39;
    v123 = v41;
    v48 = v135;
    v49 = v129;
    v47(v135, v136, v129);
    v43 = v142;

    v50 = sub_247DD23AC();
    v51 = v31;
    v52 = sub_247DD2F0C();

    v121 = v52;
    if (os_log_type_enabled(v50, v52))
    {
      v116 = v50;
      v53 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v143[0] = v115;
      *v53 = 136315650;
      *(v53 + 4) = sub_247D72868(v137, v43, v143);
      *(v53 + 12) = 2080;
      v54 = v128;
      v55 = v122;
      v56 = v119;
      (v119)(v128);
      (v51[7])(v54, 0, 1, v30);
      v57 = v127;
      sub_247D6BA6C(v54, v127, &unk_27EE73B60, &qword_247DD5250);
      v58 = v51;
      if (v120(v57, 1, v30) == 1)
      {
        v59 = 0xE300000000000000;
        v60 = 7104878;
      }

      else
      {
        v62 = v126;
        v117(v126, v57, v30);
        v56(v125, v62, v30);
        v60 = sub_247DD2CFC();
        v59 = v63;
        (v58[1])(v62, v30);
      }

      a1 = v124;
      v64 = v135;
      sub_247D6BAD4(v54, &unk_27EE73B60, &qword_247DD5250);
      v65 = v58[1];
      v65(v55, v30);
      v66 = sub_247D72868(v60, v59, v143);

      *(v53 + 14) = v66;
      *(v53 + 22) = 2080;
      sub_247D83AA0(&qword_27EE735C0, MEMORY[0x277CC9260]);
      v67 = v129;
      v68 = sub_247DD321C();
      v70 = v69;
      (*(v140 + 8))(v64, v67);
      v71 = sub_247D72868(v68, v70, v143);

      *(v53 + 24) = v71;
      v72 = v116;
      _os_log_impl(&dword_247D56000, v116, v121, "%s encountered error=%s while writing file=%s", v53, 0x20u);
      v73 = v115;
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v73, -1, -1);
      MEMORY[0x24C1BAF60](v53, -1, -1);

      v65(v123, v30);
      v17 = v67;
      v43 = v142;
    }

    else
    {

      (*(v46 + 8))(v48, v49);
      v61 = v51[1];
      v61(v122, v30);
      v61(v123, v30);
      a1 = v124;
      v17 = v49;
    }
  }

  v74 = v139;
  if ((v138 & 1) == 0)
  {
    if (qword_27EE73260 == -1)
    {
LABEL_20:
      v98 = sub_247DD23CC();
      __swift_project_value_buffer(v98, qword_27EE7B878);

      v99 = sub_247DD23AC();
      v100 = sub_247DD2EEC();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v143[0] = v102;
        *v101 = 136316162;
        *(v101 + 4) = sub_247D72868(v137, v43, v143);
        *(v101 + 12) = 2048;
        *(v101 + 14) = a1 / a12 * 100.0;
        *(v101 + 22) = 2048;
        *(v101 + 24) = a1;
        *(v101 + 32) = 2048;
        *(v101 + 34) = a12;
        *(v101 + 42) = 2080;
        v103 = v131();
        v105 = sub_247D72868(v103, v104, v143);

        *(v101 + 44) = v105;
        _os_log_impl(&dword_247D56000, v99, v100, "%s wrote %f%%, %ld/%llu bytes, %s elapsed", v101, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v102, -1, -1);
        MEMORY[0x24C1BAF60](v101, -1, -1);
      }

      return 1;
    }

LABEL_32:
    swift_once();
    goto LABEL_20;
  }

  v75 = v132;
  sub_247DD21CC();
  sub_247DD21BC();
  v77 = v76;
  (*(v133 + 8))(v75, v134);
  v78 = v77 * 1000.0;
  if (COERCE__INT64(fabs(v77 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v78 <= -1.0)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v78 >= 1.84467441e19)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v78 >= v130)
  {
    v138 = v78 - v130;
    if (qword_27EE73260 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  swift_once();
LABEL_17:
  v79 = sub_247DD23CC();
  v80 = __swift_project_value_buffer(v79, qword_27EE7B878);
  v81 = v140;
  (*(v140 + 16))(v74, v136, v17);

  v82 = sub_247DD23AC();
  v83 = sub_247DD2F2C();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v136 = v80;
    v85 = v81;
    v86 = v84;
    v87 = swift_slowAlloc();
    v143[0] = v87;
    *v86 = 136315906;
    *(v86 + 4) = sub_247D72868(v137, v43, v143);
    *(v86 + 12) = 2080;
    sub_247D83AA0(&qword_27EE735C0, MEMORY[0x277CC9260]);
    v88 = sub_247DD321C();
    v89 = v74;
    v90 = a1;
    v92 = v91;
    (*(v85 + 8))(v89, v17);
    v93 = sub_247D72868(v88, v92, v143);

    *(v86 + 14) = v93;
    *(v86 + 22) = 2080;
    v43 = v142;
    v95 = (v131)(v94);
    v97 = sub_247D72868(v95, v96, v143);

    *(v86 + 24) = v97;
    a1 = v90;
    *(v86 + 32) = 2048;
    *(v86 + 34) = v90;
    _os_log_impl(&dword_247D56000, v82, v83, "%s finished sending file=%s after duration=%s with size=%ld", v86, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v87, -1, -1);
    MEMORY[0x24C1BAF60](v86, -1, -1);
  }

  else
  {

    (*(v81 + 8))(v74, v17);
  }

  v106 = sub_247DD23AC();
  v107 = sub_247DD2F2C();

  if (!os_log_type_enabled(v106, v107))
  {
    goto LABEL_29;
  }

  v108 = v138 / 1000.0;
  v109 = swift_slowAlloc();
  v110 = swift_slowAlloc();
  v143[0] = v110;
  *v109 = 136315394;
  result = sub_247D72868(v137, v43, v143);
  *(v109 + 4) = result;
  *(v109 + 12) = 2080;
  if (v108 == INFINITY)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v108 <= -9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v108 < 9.22337204e18)
  {
    v112 = sub_247D93E14(a1, v108);
    v114 = sub_247D72868(v112, v113, v143);

    *(v109 + 14) = v114;
    _os_log_impl(&dword_247D56000, v106, v107, "%s observed throughput of %s", v109, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v110, -1, -1);
    MEMORY[0x24C1BAF60](v109, -1, -1);
LABEL_29:

    sub_247DD260C();
    sub_247DD25BC();
    sub_247DD266C();

    return 1;
  }

LABEL_39:
  __break(1u);
  return result;
}

void sub_247D7AD70()
{
  v1 = sub_247DD2ABC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_247DD2ADC();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v8 = *(v0 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection);
  if (v8)
  {
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    swift_retain_n();

    sub_247DD26CC();

    return;
  }

  if (qword_27EE73260 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v11 = sub_247DD23CC();
  __swift_project_value_buffer(v11, qword_27EE7B878);
  v12 = sub_247DD23AC();
  v13 = sub_247DD2F0C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_247D72868(0xD000000000000014, 0x8000000247DD9150, &v17);
    _os_log_impl(&dword_247D56000, v12, v13, "%s connection is nil", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x24C1BAF60](v15, -1, -1);
    MEMORY[0x24C1BAF60](v14, -1, -1);
  }
}

void sub_247D7B038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73B60, &qword_247DD5250);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v77 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v79 = &v68 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - v16;
  v18 = sub_247DD294C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v68 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v68 - v28;
  MEMORY[0x28223BE20](v27);
  v82 = &v68 - v30;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v76 = a7;
    v81 = Strong;
    v78 = sub_247D76840(a7);
    v33 = v32;
    v80 = a3;
    if (a3)
    {
      sub_247D6BA6C(a5, v17, &unk_27EE73B60, &qword_247DD5250);
      v34 = v19;
      v35 = *(v19 + 48);
      if (v35(v17, 1, v18) == 1)
      {
        v36 = v80;

        sub_247D6BAD4(v17, &unk_27EE73B60, &qword_247DD5250);
      }

      else
      {
        v72 = v35;
        v43 = v82;
        v70 = *(v34 + 32);
        v71 = v34 + 32;
        v70(v82, v17, v18);
        v44 = qword_27EE73260;

        if (v44 != -1)
        {
          swift_once();
        }

        v45 = sub_247DD23CC();
        __swift_project_value_buffer(v45, qword_27EE7B878);
        v74 = *(v34 + 16);
        v74(v29, v43, v18);

        v46 = sub_247DD23AC();
        v47 = sub_247DD2F0C();
        v48 = v33;
        v49 = v47;
        v75 = v48;

        v73 = v49;
        if (os_log_type_enabled(v46, v49))
        {
          v69 = v46;
          v50 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v83 = v68;
          *v50 = 136315394;
          v33 = v75;
          *(v50 + 4) = sub_247D72868(v78, v75, &v83);
          *(v50 + 12) = 2080;
          v51 = v79;
          v74(v79, v29, v18);
          (*(v34 + 56))(v51, 0, 1, v18);
          v52 = v51;
          v53 = v77;
          sub_247D6BA6C(v52, v77, &unk_27EE73B60, &qword_247DD5250);
          if (v72(v53, 1, v18) == 1)
          {
            v54 = 0xE300000000000000;
            v55 = 7104878;
          }

          else
          {
            v70(v26, v53, v18);
            v74(v23, v26, v18);
            v55 = sub_247DD2CFC();
            v54 = v57;
            (*(v34 + 8))(v26, v18);
          }

          v36 = v80;
          sub_247D6BAD4(v79, &unk_27EE73B60, &qword_247DD5250);
          v58 = *(v34 + 8);
          v58(v29, v18);
          v59 = sub_247D72868(v55, v54, &v83);

          *(v50 + 14) = v59;
          v60 = v69;
          _os_log_impl(&dword_247D56000, v69, v73, "%s encountered error=%s while reading HTTP headers", v50, 0x16u);
          v61 = v68;
          swift_arrayDestroy();
          MEMORY[0x24C1BAF60](v61, -1, -1);
          MEMORY[0x24C1BAF60](v50, -1, -1);

          v58(v82, v18);
        }

        else
        {

          v56 = *(v34 + 8);
          v56(v29, v18);
          v56(v43, v18);
          v36 = v80;
          v33 = v75;
        }
      }

      if (sub_247DD25FC())
      {
        if (qword_27EE73260 != -1)
        {
          swift_once();
        }

        v62 = sub_247DD23CC();
        __swift_project_value_buffer(v62, qword_27EE7B878);

        v63 = sub_247DD23AC();
        v64 = sub_247DD2F2C();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v83 = v66;
          *v65 = 136315138;
          v67 = sub_247D72868(v78, v33, &v83);

          *(v65 + 4) = v67;
          _os_log_impl(&dword_247D56000, v63, v64, "%s read close", v65, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v66);
          MEMORY[0x24C1BAF60](v66, -1, -1);
          MEMORY[0x24C1BAF60](v65, -1, -1);
        }

        else
        {
        }

        sub_247DD26BC();
      }

      else
      {
        if (*(v81 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_initiated) == 1)
        {
          sub_247D7BF00(v36, v78, v33);

          return;
        }

        sub_247D7B8D0(v36, v78, v33);
      }
    }

    else
    {
      if (qword_27EE73260 != -1)
      {
        swift_once();
      }

      v37 = sub_247DD23CC();
      __swift_project_value_buffer(v37, qword_27EE7B878);

      v38 = sub_247DD23AC();
      v39 = sub_247DD2F2C();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v83 = v41;
        *v40 = 136315138;
        v42 = sub_247D72868(v78, v33, &v83);

        *(v40 + 4) = v42;
        _os_log_impl(&dword_247D56000, v38, v39, "%s receiveHTTPMessage has nil context", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v41);
        MEMORY[0x24C1BAF60](v41, -1, -1);
        MEMORY[0x24C1BAF60](v40, -1, -1);
      }

      else
      {
      }
    }
  }
}

void sub_247D7B8D0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_247DD2ABC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v30[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_queue);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v13 = v12;
  v14 = sub_247DD2ADC();
  (*(v8 + 8))(v11, v7);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  v15 = sub_247D82DA8(a1, a2, a3);
  if (v16)
  {
    v18 = v15;
    v19 = v16;
    v20 = v17;
    v21 = swift_allocObject();
    swift_weakInit();

    swift_unknownObjectRetain();

    sub_247D83444(v3, v21, v18, v19, v20, a2, a3);

    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease_n();

    return;
  }

  v14 = v3;
  if (qword_27EE73260 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  v22 = sub_247DD23CC();
  __swift_project_value_buffer(v22, qword_27EE7B878);

  v23 = sub_247DD23AC();
  v24 = sub_247DD2F0C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v30[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_247D72868(a2, a3, v30);
    _os_log_impl(&dword_247D56000, v23, v24, "%s failed to read HTTP Request", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    MEMORY[0x24C1BAF60](v26, -1, -1);
    MEMORY[0x24C1BAF60](v25, -1, -1);
  }

  v27 = *(v14 + 48);
  if (v27)
  {
    v28 = *(v14 + 56);
    v30[0] = 0;
    v30[1] = 0;
    v31 = 3;

    v27(v30);
    sub_247D6A24C(v27);
  }
}

void sub_247D7BBE8(void *a1, unint64_t a2, char a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a3)
    {
      v17 = Strong;
      if (qword_27EE73260 != -1)
      {
        swift_once();
      }

      v18 = sub_247DD23CC();
      __swift_project_value_buffer(v18, qword_27EE7B878);
      sub_247D82D5C(a1, a2, 1);

      v19 = sub_247DD23AC();
      v20 = sub_247DD2F0C();

      sub_247D82D68(a1, a2, 1);
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v31 = v22;
        *v21 = 136315394;
        *(v21 + 4) = sub_247D72868(a8, a9, &v31);
        *(v21 + 12) = 2080;
        v23 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
        v24 = sub_247DD2CFC();
        v26 = sub_247D72868(v24, v25, &v31);

        *(v21 + 14) = v26;
        _os_log_impl(&dword_247D56000, v19, v20, "%s failed to receive HTTP body, error=%s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v22, -1, -1);
        MEMORY[0x24C1BAF60](v21, -1, -1);
      }

      v27 = *(v17 + 48);
      if (v27)
      {
        v28 = *(v17 + 56);
        v31 = a1;
        v32 = 0;
        LOBYTE(v33) = 2;
        sub_247D82D5C(a1, a2, 1);
        sub_247D6ACFC(v27);
        v27(&v31);
        sub_247D6A24C(v27);

        sub_247D82AF0(v31, v32, v33);
        return;
      }
    }

    else
    {
      v29 = *(Strong + 32);
      if (v29)
      {
        v30 = *(Strong + 40);
        v31 = a5;
        v32 = a6;
        v33 = a1;
        v34 = a2;
        v35 = a7;
        sub_247D6ACFC(v29);

        sub_247D82D5C(a1, a2, 0);
        swift_unknownObjectRetain();
        v29(&v31);
        sub_247D6A24C(v29);

        sub_247D6C0AC(a1, a2);
        swift_unknownObjectRelease();
        return;
      }
    }
  }
}

void sub_247D7BF00(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v203 = *MEMORY[0x277D85DE8];
  v7 = sub_247DD225C();
  v192 = *(v7 - 8);
  v193 = v7;
  v8 = *(v192 + 8);
  MEMORY[0x28223BE20](v7);
  v191 = &v180 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for CosmoHttpConnection.Configuration(0);
  v10 = *(*(v190 - 8) + 64);
  MEMORY[0x28223BE20](v190);
  v12 = &v180 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_247DD20DC();
  v196 = *(v198 - 8);
  v13 = v196[8];
  v14 = MEMORY[0x28223BE20](v198);
  v187 = &v180 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v188 = &v180 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v189 = &v180 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v194 = &v180 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v195 = &v180 - v22;
  MEMORY[0x28223BE20](v21);
  v197 = &v180 - v23;
  v24 = sub_247DD2ABC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = (&v180 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v199 = v3;
  v29 = *(v3 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_queue);
  *v28 = v29;
  (*(v25 + 104))(v28, *MEMORY[0x277D85200], v24);
  v30 = v29;
  LOBYTE(v29) = sub_247DD2ADC();
  (*(v25 + 8))(v28, v24);
  if ((v29 & 1) == 0)
  {
    __break(1u);
LABEL_85:
    swift_once();
LABEL_25:
    v49 = sub_247DD23CC();
    __swift_project_value_buffer(v49, qword_27EE7B878);

    v50 = sub_247DD23AC();
    v51 = sub_247DD2F0C();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v201 = v53;
      *v52 = 136315138;
      *(v52 + 4) = sub_247D72868(a2, a3, &v201);
      _os_log_impl(&dword_247D56000, v50, v51, "%s failed to read HTTP response", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      MEMORY[0x24C1BAF60](v53, -1, -1);
      MEMORY[0x24C1BAF60](v52, -1, -1);
    }

    v54 = v199;
    v55 = *(v199 + 80);
    if (v55)
    {
      v56 = *(v199 + 88);
      v201 = 0uLL;
      v202 = 3;

      v55(&v201);
      sub_247D6A24C(v55);
    }

    if (*(v54 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection))
    {
      v57 = *(v54 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection);

      sub_247DD26BC();
LABEL_117:

      goto LABEL_118;
    }

    goto LABEL_118;
  }

  v31 = sub_247D821BC(a1, a2, a3);
  if (!v32)
  {
    if (qword_27EE73260 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_85;
  }

  v33 = v32;
  v34 = v199;
  if (*(v199 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_awaitingFileTransfer) == 1)
  {
    v184 = v31;
    v185 = a2;
    v186 = a3;
    v35 = nw_http_response_copy_header_fields();
    v36 = *MEMORY[0x277CD9270];
    if (!nw_http_fields_copy_value_by_name())
    {
      goto LABEL_75;
    }

    v37 = sub_247DD2DBC();
    v39 = v38;
    v40 = HIBYTE(v38) & 0xF;
    v41 = v37 & 0xFFFFFFFFFFFFLL;
    if ((v39 & 0x2000000000000000) != 0)
    {
      v42 = v40;
    }

    else
    {
      v42 = v37 & 0xFFFFFFFFFFFFLL;
    }

    if (v42)
    {
      if ((v39 & 0x1000000000000000) == 0)
      {
        if ((v39 & 0x2000000000000000) != 0)
        {
          *&v201 = v37;
          *(&v201 + 1) = v39 & 0xFFFFFFFFFFFFFFLL;
          if (v37 == 43)
          {
            if (v40)
            {
              if (--v40)
              {
                v45 = 0;
                v66 = &v201 + 1;
                while (1)
                {
                  v67 = *v66 - 48;
                  if (v67 > 9)
                  {
                    break;
                  }

                  v68 = 10 * v45;
                  if ((v45 * 10) >> 64 != (10 * v45) >> 63)
                  {
                    break;
                  }

                  v45 = v68 + v67;
                  if (__OFADD__(v68, v67))
                  {
                    break;
                  }

                  ++v66;
                  if (!--v40)
                  {
                    goto LABEL_74;
                  }
                }
              }

              goto LABEL_73;
            }

LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (v37 != 45)
          {
            if (v40)
            {
              v45 = 0;
              v71 = &v201;
              while (1)
              {
                v72 = *v71 - 48;
                if (v72 > 9)
                {
                  break;
                }

                v73 = 10 * v45;
                if ((v45 * 10) >> 64 != (10 * v45) >> 63)
                {
                  break;
                }

                v45 = v73 + v72;
                if (__OFADD__(v73, v72))
                {
                  break;
                }

                v71 = (v71 + 1);
                if (!--v40)
                {
                  goto LABEL_74;
                }
              }
            }

            goto LABEL_73;
          }

          if (v40)
          {
            if (--v40)
            {
              v45 = 0;
              v60 = &v201 + 1;
              while (1)
              {
                v61 = *v60 - 48;
                if (v61 > 9)
                {
                  break;
                }

                v62 = 10 * v45;
                if ((v45 * 10) >> 64 != (10 * v45) >> 63)
                {
                  break;
                }

                v45 = v62 - v61;
                if (__OFSUB__(v62, v61))
                {
                  break;
                }

                ++v60;
                if (!--v40)
                {
                  goto LABEL_74;
                }
              }
            }

            goto LABEL_73;
          }
        }

        else
        {
          if ((v37 & 0x1000000000000000) != 0)
          {
            v43 = ((v39 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v43 = sub_247DD308C();
          }

          v44 = *v43;
          if (v44 == 43)
          {
            if (v41 >= 1)
            {
              v40 = v41 - 1;
              if (v41 != 1)
              {
                v45 = 0;
                if (v43)
                {
                  v63 = v43 + 1;
                  while (1)
                  {
                    v64 = *v63 - 48;
                    if (v64 > 9)
                    {
                      goto LABEL_73;
                    }

                    v65 = 10 * v45;
                    if ((v45 * 10) >> 64 != (10 * v45) >> 63)
                    {
                      goto LABEL_73;
                    }

                    v45 = v65 + v64;
                    if (__OFADD__(v65, v64))
                    {
                      goto LABEL_73;
                    }

                    ++v63;
                    if (!--v40)
                    {
                      goto LABEL_74;
                    }
                  }
                }

                goto LABEL_65;
              }

              goto LABEL_73;
            }

            goto LABEL_122;
          }

          if (v44 != 45)
          {
            if (v41)
            {
              v45 = 0;
              if (v43)
              {
                while (1)
                {
                  v69 = *v43 - 48;
                  if (v69 > 9)
                  {
                    goto LABEL_73;
                  }

                  v70 = 10 * v45;
                  if ((v45 * 10) >> 64 != (10 * v45) >> 63)
                  {
                    goto LABEL_73;
                  }

                  v45 = v70 + v69;
                  if (__OFADD__(v70, v69))
                  {
                    goto LABEL_73;
                  }

                  ++v43;
                  if (!--v41)
                  {
                    goto LABEL_65;
                  }
                }
              }

              goto LABEL_65;
            }

LABEL_73:
            v45 = 0;
            LOBYTE(v40) = 1;
LABEL_74:
            LOBYTE(v200) = v40;
            v74 = v40;

            if (v74)
            {
              goto LABEL_75;
            }

LABEL_88:
            sub_247DD2D1C();
            v86 = nw_http_fields_copy_value_by_name();

            if (!v86)
            {
              if (qword_27EE73260 != -1)
              {
                swift_once();
              }

              v98 = sub_247DD23CC();
              __swift_project_value_buffer(v98, qword_27EE7B878);
              v99 = v186;

              v100 = sub_247DD23AC();
              v101 = sub_247DD2F0C();

              if (os_log_type_enabled(v100, v101))
              {
                v102 = swift_slowAlloc();
                v103 = swift_slowAlloc();
                *&v201 = v103;
                *v102 = 136315394;
                *(v102 + 4) = sub_247D72868(v185, v99, &v201);
                *(v102 + 12) = 2080;
                *(v102 + 14) = sub_247D72868(0x656D614E656C6946, 0xE800000000000000, &v201);
                _os_log_impl(&dword_247D56000, v100, v101, "%s failed to read '%s' header", v102, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x24C1BAF60](v103, -1, -1);
                MEMORY[0x24C1BAF60](v102, -1, -1);
              }

              v104 = v199;
              v105 = *(v199 + 80);
              if (v105)
              {
                v106 = *(v199 + 88);
                v201 = xmmword_247DD4E30;
                v202 = 0;

                v105(&v201);
                sub_247D6A24C(v105);
                sub_247D82AF0(v201, *(&v201 + 1), v202);
              }

              if (!*(v104 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection))
              {
                goto LABEL_83;
              }

LABEL_82:

              sub_247DD26BC();

LABEL_83:
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              goto LABEL_118;
            }

            v181 = v86;
            v183 = v45;
            sub_247D81F30(v34 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_config, v12, type metadata accessor for CosmoHttpConnection.Configuration);
            v87 = *(v190 + 20);
            *&v201 = *(v34 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_epochMillisAtInit);
            sub_247DD321C();
            v88 = v195;
            sub_247DD209C();

            v89 = v196 + 1;
            v90 = v196[1];
            v91 = &v12[v87];
            v92 = v198;
            v90(v91, v198);
            v93 = v191;
            sub_247DD224C();
            sub_247DD220C();
            (*(v192 + 1))(v93, v193);
            sub_247DD209C();

            v192 = v90;
            v193 = v89;
            v90(v88, v92);
            v12 = objc_opt_self();
            v39 = 0x278EDE000uLL;
            v94 = [v12 defaultManager];
            v95 = sub_247DD208C();
            *&v201 = 0;
            LODWORD(v89) = [v94 createDirectoryAtURL:v95 withIntermediateDirectories:1 attributes:0 error:&v201];

            v182 = v35;
            if (v89)
            {
              v96 = v201;
              v97 = v194;
LABEL_104:
              v191 = v33;
              sub_247DD2DBC();
              sub_247DD209C();

              v127 = [v12 *(v39 + 3912)];
              sub_247DD20CC();
              v128 = sub_247DD2C7C();

              v129 = [v127 fileExistsAtPath_];

              if (v129)
              {
                v130 = v97;
                v131 = v39;
                if (qword_27EE73260 != -1)
                {
                  swift_once();
                }

                v132 = sub_247DD23CC();
                v133 = __swift_project_value_buffer(v132, qword_27EE7B878);
                v134 = v196[2];
                v135 = v189;
                v136 = v198;
                v181 = v196 + 2;
                v180 = v134;
                v134(v189, v130, v198);
                v188 = v133;
                v137 = sub_247DD23AC();
                v138 = sub_247DD2F0C();
                if (os_log_type_enabled(v137, v138))
                {
                  v139 = swift_slowAlloc();
                  v190 = v12;
                  v140 = v139;
                  v141 = swift_slowAlloc();
                  *&v201 = v141;
                  *v140 = 136315138;
                  sub_247D83AA0(&qword_27EE735C0, MEMORY[0x277CC9260]);
                  v142 = sub_247DD321C();
                  v144 = v143;
                  v192(v135, v198);
                  v145 = sub_247D72868(v142, v144, &v201);

                  *(v140 + 4) = v145;
                  _os_log_impl(&dword_247D56000, v137, v138, "WARNING: Overwriting existing file=%s", v140, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0Tm(v141);
                  v146 = v141;
                  v136 = v198;
                  MEMORY[0x24C1BAF60](v146, -1, -1);
                  v147 = v140;
                  v12 = v190;
                  v130 = v194;
                  MEMORY[0x24C1BAF60](v147, -1, -1);
                }

                else
                {

                  v192(v135, v136);
                }

                v148 = [v12 (v131 + 1595)];
                v149 = sub_247DD208C();
                *&v201 = 0;
                v150 = [v148 removeItemAtURL:v149 error:&v201];

                v97 = v130;
                if (v150)
                {
                  v151 = v201;
                }

                else
                {
                  v152 = v201;
                  v153 = sub_247DD205C();

                  swift_willThrow();
                  v154 = v187;
                  v180(v187, v130, v136);
                  v155 = v153;
                  v156 = sub_247DD23AC();
                  v157 = sub_247DD2F0C();

                  if (os_log_type_enabled(v156, v157))
                  {
                    v158 = swift_slowAlloc();
                    v159 = swift_slowAlloc();
                    *&v201 = v159;
                    *v158 = 136315394;
                    sub_247D83AA0(&qword_27EE735C0, MEMORY[0x277CC9260]);
                    v160 = sub_247DD321C();
                    v162 = v161;
                    v192(v154, v198);
                    v163 = sub_247D72868(v160, v162, &v201);

                    *(v158 + 4) = v163;
                    *(v158 + 12) = 2080;
                    v200 = v153;
                    v164 = v153;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
                    v165 = sub_247DD2CFC();
                    v167 = sub_247D72868(v165, v166, &v201);

                    *(v158 + 14) = v167;
                    _os_log_impl(&dword_247D56000, v156, v157, "Error while removing existing file=%s error=%s", v158, 0x16u);
                    swift_arrayDestroy();
                    MEMORY[0x24C1BAF60](v159, -1, -1);
                    MEMORY[0x24C1BAF60](v158, -1, -1);
                  }

                  else
                  {

                    v192(v154, v136);
                  }

                  v97 = v194;
                }
              }

              v168 = swift_allocObject();
              swift_weakInit();
              v170 = v195;
              v169 = v196;
              v171 = v198;
              (v196[2])(v195, v97, v198);
              v172 = v97;
              v173 = (*(v169 + 80) + 26) & ~*(v169 + 80);
              v174 = (v13 + v173 + 7) & 0xFFFFFFFFFFFFFFF8;
              v175 = swift_allocObject();
              *(v175 + 16) = v168;
              *(v175 + 24) = v184;
              (v169[4])(v175 + v173, v170, v171);
              *(v175 + v174) = v191;
              v176 = (v175 + ((v174 + 15) & 0xFFFFFFFFFFFFFFF8));
              v177 = v186;
              *v176 = v185;
              v176[1] = v177;

              swift_unknownObjectRetain();

              sub_247D7E1B4(v172, v183, 0, 0, sub_247D82C0C, v175);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              v178 = v192;
              v192(v172, v171);
              v178(v197, v171);
              goto LABEL_117;
            }

            v107 = v201;
            v35 = sub_247DD205C();

            swift_willThrow();
            if (qword_27EE73260 == -1)
            {
LABEL_100:
              v108 = sub_247DD23CC();
              __swift_project_value_buffer(v108, qword_27EE7B878);
              v109 = v188;
              v110 = v198;
              (v196[2])(v188, v197, v198);
              v111 = v35;
              v112 = sub_247DD23AC();
              v113 = sub_247DD2F0C();

              if (os_log_type_enabled(v112, v113))
              {
                v114 = swift_slowAlloc();
                v190 = v12;
                v115 = v114;
                v116 = swift_slowAlloc();
                *&v201 = v116;
                *v115 = 136315394;
                sub_247D83AA0(&qword_27EE735C0, MEMORY[0x277CC9260]);
                v117 = sub_247DD321C();
                v119 = v118;
                v192(v109, v198);
                v120 = sub_247D72868(v117, v119, &v201);

                *(v115 + 4) = v120;
                *(v115 + 12) = 2080;
                v200 = v35;
                v121 = v35;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
                v122 = sub_247DD2CFC();
                v124 = sub_247D72868(v122, v123, &v201);

                *(v115 + 14) = v124;
                _os_log_impl(&dword_247D56000, v112, v113, "Error creating directory=%s, error=%s", v115, 0x16u);
                swift_arrayDestroy();
                v125 = v116;
                v39 = 0x278EDE000;
                MEMORY[0x24C1BAF60](v125, -1, -1);
                v126 = v115;
                v12 = v190;
                MEMORY[0x24C1BAF60](v126, -1, -1);
              }

              else
              {

                v192(v109, v110);
              }

              v97 = v194;
              goto LABEL_104;
            }

LABEL_124:
            swift_once();
            goto LABEL_100;
          }

          if (v41 >= 1)
          {
            v40 = v41 - 1;
            if (v41 != 1)
            {
              v45 = 0;
              if (v43)
              {
                v46 = v43 + 1;
                while (1)
                {
                  v47 = *v46 - 48;
                  if (v47 > 9)
                  {
                    goto LABEL_73;
                  }

                  v48 = 10 * v45;
                  if ((v45 * 10) >> 64 != (10 * v45) >> 63)
                  {
                    goto LABEL_73;
                  }

                  v45 = v48 - v47;
                  if (__OFSUB__(v48, v47))
                  {
                    goto LABEL_73;
                  }

                  ++v46;
                  if (!--v40)
                  {
                    goto LABEL_74;
                  }
                }
              }

LABEL_65:
              LOBYTE(v40) = 0;
              goto LABEL_74;
            }

            goto LABEL_73;
          }

          __break(1u);
        }

        __break(1u);
LABEL_122:
        __break(1u);
        goto LABEL_123;
      }

      LOBYTE(v200) = 0;
      v45 = sub_247D80A80(v37, v39, 10);
      v85 = v84;

      if ((v85 & 1) == 0)
      {
        goto LABEL_88;
      }
    }

    else
    {
    }

LABEL_75:
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v75 = sub_247DD23CC();
    __swift_project_value_buffer(v75, qword_27EE7B878);
    v76 = v186;

    v77 = sub_247DD23AC();
    v78 = sub_247DD2F0C();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *&v201 = v80;
      *v79 = 136315138;
      *(v79 + 4) = sub_247D72868(v185, v76, &v201);
      _os_log_impl(&dword_247D56000, v77, v78, "%s failed to read 'Content-Length' header", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v80);
      MEMORY[0x24C1BAF60](v80, -1, -1);
      v81 = v79;
      v34 = v199;
      MEMORY[0x24C1BAF60](v81, -1, -1);
    }

    v82 = *(v34 + 80);
    if (v82)
    {
      v83 = *(v34 + 88);
      v201 = xmmword_247DD4E40;
      v202 = 0;

      v82(&v201);
      sub_247D6A24C(v82);
      sub_247D82AF0(v201, *(&v201 + 1), v202);
    }

    if (!*(v34 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection))
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

  v58 = v31;
  v59 = swift_allocObject();
  swift_weakInit();

  sub_247D82724(v34, v59, v58, v33, a2, a3);

  swift_unknownObjectRelease();

LABEL_118:
  v179 = *MEMORY[0x277D85DE8];
}

uint64_t sub_247D7D510(void *a1, char a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v15 = type metadata accessor for RawHTTPResponse(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    if (a2)
    {
      if (qword_27EE73260 != -1)
      {
        swift_once();
      }

      v21 = sub_247DD23CC();
      __swift_project_value_buffer(v21, qword_27EE7B878);

      sub_247D6BC90(a1, 1);
      v22 = sub_247DD23AC();
      v23 = sub_247DD2F0C();

      sub_247D6B9F8(a1, 1);
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v38 = v25;
        *v24 = 136315394;
        *(v24 + 4) = sub_247D72868(a7, a8, &v38);
        *(v24 + 12) = 2080;
        v37[1] = a1;
        v26 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
        v27 = sub_247DD2CFC();
        v29 = sub_247D72868(v27, v28, &v38);

        *(v24 + 14) = v29;
        _os_log_impl(&dword_247D56000, v22, v23, "%s failed to receive HTTP file, error=%s", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v25, -1, -1);
        MEMORY[0x24C1BAF60](v24, -1, -1);
      }

      v30 = *(v20 + 80);
      if (v30)
      {
        v31 = *(v20 + 88);
        v38 = a1;
        v39 = 0;
        v40 = 1;
        sub_247D6BC90(a1, 1);
        sub_247D6ACFC(v30);
        v30(&v38);
        sub_247D6A24C(v30);
        sub_247D82AF0(v38, v39, v40);
      }
    }

    else
    {
      v32 = *(result + 64);
      if (v32)
      {
        v37[0] = *(result + 72);
        v33 = *(v15 + 24);
        v34 = sub_247DD20DC();
        v35 = *(v34 - 8);
        (*(v35 + 16))(&v18[v33], a5, v34);
        (*(v35 + 56))(&v18[v33], 0, 1, v34);
        *v18 = a4;
        *(v18 + 8) = xmmword_247DD3EC0;
        *&v18[*(v15 + 28)] = a6;
        sub_247D6ACFC(v32);
        swift_unknownObjectRetain();
        v32(v18);
        sub_247D6A24C(v32);
        sub_247D7FD5C(v18, type metadata accessor for RawHTTPResponse);
      }
    }

    if (*(v20 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection))
    {
      v36 = *(v20 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection);

      sub_247DD26BC();
    }
  }

  return result;
}

uint64_t sub_247D7D8E0(void *a1, unint64_t a2, char a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v15 = type metadata accessor for RawHTTPResponse(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    if (a3)
    {
      if (qword_27EE73260 != -1)
      {
        swift_once();
      }

      v21 = sub_247DD23CC();
      __swift_project_value_buffer(v21, qword_27EE7B878);
      sub_247D82D5C(a1, a2, 1);

      v22 = sub_247DD23AC();
      v23 = sub_247DD2F0C();

      sub_247D82D68(a1, a2, 1);
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v38 = v25;
        *v24 = 136315394;
        *(v24 + 4) = sub_247D72868(a7, a8, &v38);
        *(v24 + 12) = 2080;
        v37[1] = a1;
        v26 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
        v27 = sub_247DD2CFC();
        v29 = sub_247D72868(v27, v28, &v38);

        *(v24 + 14) = v29;
        _os_log_impl(&dword_247D56000, v22, v23, "%s failed to receive HTTP body, error=%s", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v25, -1, -1);
        MEMORY[0x24C1BAF60](v24, -1, -1);
      }

      v30 = *(v20 + 80);
      if (v30)
      {
        v31 = *(v20 + 88);
        v38 = a1;
        v39 = 0;
        v40 = 2;
        sub_247D82D5C(a1, a2, 1);
        sub_247D6ACFC(v30);
        v30(&v38);
        sub_247D6A24C(v30);
        sub_247D82AF0(v38, v39, v40);
      }
    }

    else
    {
      v32 = *(result + 64);
      if (v32)
      {
        v33 = *(result + 72);
        v34 = *(v15 + 24);
        v35 = sub_247DD20DC();
        (*(*(v35 - 8) + 56))(&v18[v34], 1, 1, v35);
        *v18 = a5;
        *(v18 + 1) = a1;
        *(v18 + 2) = a2;
        *&v18[*(v15 + 28)] = a6;
        sub_247D6ACFC(v32);
        sub_247D82D5C(a1, a2, 0);
        swift_unknownObjectRetain();
        v32(v18);
        sub_247D6A24C(v32);
        sub_247D7FD5C(v18, type metadata accessor for RawHTTPResponse);
      }
    }

    if (*(v20 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection))
    {
      v36 = *(v20 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection);

      sub_247DD26BC();
    }
  }

  return result;
}

uint64_t sub_247D7DC88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void *, void, uint64_t), uint64_t a9)
{
  v51 = a2;
  v52 = a3;
  v50 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73B60, &qword_247DD5250);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v43 - v14;
  v16 = sub_247DD294C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v43 - v22;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v48 = a9;
    v49 = a8;
    v25 = sub_247D76840(a7);
    v27 = v26;
    sub_247D6BA6C(a5, v15, &unk_27EE73B60, &qword_247DD5250);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {

      sub_247D6BAD4(v15, &unk_27EE73B60, &qword_247DD5250);
    }

    else
    {
      (*(v17 + 32))(v23, v15, v16);
      if (qword_27EE73260 != -1)
      {
        swift_once();
      }

      v28 = sub_247DD23CC();
      __swift_project_value_buffer(v28, qword_27EE7B878);
      v47 = *(v17 + 16);
      v47(v21, v23, v16);

      v29 = sub_247DD23AC();
      v30 = sub_247DD2F0C();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v45 = v30;
        v32 = v31;
        v44 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v53 = v46;
        *v32 = 136315650;
        *(v32 + 4) = sub_247D72868(0xD000000000000023, 0x8000000247DD90B0, &v53);
        *(v32 + 12) = 2080;
        v33 = sub_247D72868(v25, v27, &v53);

        *(v32 + 14) = v33;
        *(v32 + 22) = 2112;
        sub_247D83AA0(&qword_27EE73948, MEMORY[0x277CD8FC0]);
        swift_allocError();
        v47(v34, v21, v16);
        v35 = _swift_stdlib_bridgeErrorToNSError();
        v36 = *(v17 + 8);
        v36(v21, v16);
        *(v32 + 24) = v35;
        v37 = v44;
        *v44 = v35;
        _os_log_impl(&dword_247D56000, v29, v45, "%s %s receiveMessage encountered error=%@", v32, 0x20u);
        sub_247D6BAD4(v37, &unk_27EE73950, &qword_247DD5258);
        MEMORY[0x24C1BAF60](v37, -1, -1);
        v38 = v46;
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v38, -1, -1);
        MEMORY[0x24C1BAF60](v32, -1, -1);

        v36(v23, v16);
      }

      else
      {

        v39 = *(v17 + 8);
        v39(v21, v16);
        v39(v23, v16);
      }
    }

    v40 = v49;
    if (v52)
    {
      v49(v50, v51, 0);
    }

    else
    {
      sub_247D6AFB0();
      v41 = swift_allocError();
      *v42 = 0xD000000000000043;
      *(v42 + 8) = 0x8000000247DD90E0;
      *(v42 + 16) = 0;
      v40(v41, 0, 1);
    }
  }

  return result;
}

void sub_247D7E1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v75 = a4;
  v70 = a3;
  v71 = a2;
  v77 = a1;
  v9 = sub_247DD21EC();
  v73 = *(v9 - 8);
  v74 = v9;
  v10 = *(v73 + 64);
  MEMORY[0x28223BE20](v9);
  v72 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_247DD20DC();
  v76 = *(v12 - 8);
  v13 = *(v76 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v69 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v63 - v15;
  v17 = sub_247DD2ABC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v6 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_queue);
  *v21 = v22;
  (*(v18 + 104))(v21, *MEMORY[0x277D85200], v17);
  v23 = v22;
  LOBYTE(v22) = sub_247DD2ADC();
  v25 = *(v18 + 8);
  v24 = v18 + 8;
  v25(v21, v17);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
LABEL_4:
    v27 = sub_247DD23CC();
    __swift_project_value_buffer(v27, qword_27EE7B878);
    v28 = v76;
    v29 = v12;
    v63 = *(v76 + 16);
    v63(v16, v77, v12);

    v30 = sub_247DD23AC();
    a5 = sub_247DD2F2C();

    v31 = os_log_type_enabled(v30, a5);
    v64 = v24;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v78 = v33;
      *v32 = 136315394;
      *(v32 + 4) = sub_247D72868(v68, v24, &v78);
      *(v32 + 12) = 2080;
      sub_247D83AA0(&qword_27EE735C0, MEMORY[0x277CC9260]);
      v34 = sub_247DD321C();
      v36 = v35;
      (*(v76 + 8))(v16, v29);
      v37 = sub_247D72868(v34, v36, &v78);

      *(v32 + 14) = v37;
      _os_log_impl(&dword_247D56000, v30, a5, "%s receiving file at file=%s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v33, -1, -1);
      MEMORY[0x24C1BAF60](v32, -1, -1);
    }

    else
    {

      (*(v28 + 8))(v16, v12);
    }

    v45 = v72;
    sub_247DD21CC();
    sub_247DD21BC();
    v47 = v46;
    (*(v73 + 8))(v45, v74);
    v48 = v47 * 1000.0;
    if (COERCE__INT64(fabs(v47 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v48 > -1.0)
    {
      if (v48 < 1.84467441e19)
      {
        v49 = v48;
        v73 = v48;
        v74 = swift_allocObject();
        *(v74 + 16) = v49;
        v50 = v69;
        v63(v69, v77, v29);
        v51 = v76;
        v52 = (*(v76 + 80) + 56) & ~*(v76 + 80);
        v53 = (v13 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
        v54 = (v53 + 23) & 0xFFFFFFFFFFFFFFF8;
        v55 = swift_allocObject();
        v56 = v64;
        *(v55 + 2) = v68;
        *(v55 + 3) = v56;
        v57 = v70;
        v58 = v75;
        *(v55 + 4) = v70;
        *(v55 + 5) = v58;
        *(v55 + 6) = v73;
        (*(v51 + 32))(&v55[v52], v50, v29);
        v59 = &v55[v53];
        v60 = v74;
        *v59 = sub_247D81F98;
        v59[1] = v60;
        *&v55[v54] = v71;
        v61 = &v55[(v54 + 15) & 0xFFFFFFFFFFFFFFF8];
        v62 = v67;
        *v61 = v66;
        *(v61 + 1) = v62;
        sub_247D6ACFC(v57);

        sub_247DD259C();

        return;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (*(v6 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection))
  {
    v66 = a5;
    v67 = a6;

    v68 = sub_247D76840(v65);
    v24 = v26;
    if (qword_27EE73260 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  if (qword_27EE73260 != -1)
  {
LABEL_20:
    swift_once();
  }

  v38 = sub_247DD23CC();
  __swift_project_value_buffer(v38, qword_27EE7B878);
  v39 = sub_247DD23AC();
  v40 = sub_247DD2F0C();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v78 = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_247D72868(0xD00000000000003DLL, 0x8000000247DD9030, &v78);
    _os_log_impl(&dword_247D56000, v39, v40, "%s connection is nil", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    MEMORY[0x24C1BAF60](v42, -1, -1);
    MEMORY[0x24C1BAF60](v41, -1, -1);
  }

  sub_247D6AFB0();
  v43 = swift_allocError();
  *v44 = 0xD00000000000004FLL;
  *(v44 + 8) = 0x8000000247DD8FE0;
  *(v44 + 16) = 1;
  a5(v43, 1);
}

uint64_t sub_247D7E960(unint64_t a1)
{
  v2 = sub_247DD21EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247DD21CC();
  sub_247DD21BC();
  v8 = v7;
  result = (*(v3 + 8))(v6, v2);
  v10 = v8 * 1000.0;
  if (COERCE__INT64(fabs(v8 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v10 <= -1.0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v10 >= 1.84467441e19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 >= a1)
  {
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    sub_247DD2ECC();
    MEMORY[0x24C1BA0A0](115, 0xE100000000000000);
    return v11[0];
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_247D7EADC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(uint64_t), uint64_t a8, unint64_t a9, char *a10, uint64_t (*a11)(void), uint64_t a12, uint64_t a13, void (*a14)(void, void))
{
  v99 = a8;
  v100 = a5;
  v101 = a7;
  v106 = a6;
  LODWORD(v102) = a3;
  v16 = sub_247DD20DC();
  v104 = *(v16 - 8);
  v105 = v16;
  v17 = *(v104 + 64);
  MEMORY[0x28223BE20](v16);
  v103 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_247DD21EC();
  v97 = *(v19 - 8);
  v98 = v19;
  v20 = *(v97 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73B60, &qword_247DD5250);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v93 - v25;
  v27 = sub_247DD294C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v93 - v33;
  sub_247D6BA6C(a4, v26, &unk_27EE73B60, &qword_247DD5250);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_247D6BAD4(v26, &unk_27EE73B60, &qword_247DD5250);
    v35 = v106;
  }

  else
  {
    (*(v28 + 32))(v34, v26, v27);
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v36 = sub_247DD23CC();
    __swift_project_value_buffer(v36, qword_27EE7B878);
    v96 = *(v28 + 16);
    v96(v32, v34, v27);
    v35 = v106;

    v37 = sub_247DD23AC();
    v38 = sub_247DD2F0C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v94 = v38;
      v40 = v39;
      v93 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v107[0] = v95;
      *v40 = 136315650;
      *(v40 + 4) = sub_247D72868(0xD00000000000003DLL, 0x8000000247DD9030, v107);
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_247D72868(v100, v35, v107);
      *(v40 + 22) = 2112;
      sub_247D83AA0(&qword_27EE73948, MEMORY[0x277CD8FC0]);
      swift_allocError();
      v41 = a1;
      v96(v42, v32, v27);
      v43 = _swift_stdlib_bridgeErrorToNSError();
      v44 = *(v28 + 8);
      v44(v32, v27);
      *(v40 + 24) = v43;
      v45 = v93;
      *v93 = v43;
      a1 = v41;
      v35 = v106;
      _os_log_impl(&dword_247D56000, v37, v94, "%s %s receiveFile encountered error=%@", v40, 0x20u);
      sub_247D6BAD4(v45, &unk_27EE73950, &qword_247DD5258);
      MEMORY[0x24C1BAF60](v45, -1, -1);
      v46 = v95;
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v46, -1, -1);
      MEMORY[0x24C1BAF60](v40, -1, -1);

      v44(v34, v27);
    }

    else
    {

      v47 = *(v28 + 8);
      v47(v32, v27);
      v47(v34, v27);
    }
  }

  v48 = v104;
  v49 = v105;
  v50 = v103;
  if (v101)
  {
    v101(a1);
  }

  if ((v102 & 1) == 0)
  {
    v49 = a11;
    if (qword_27EE73260 == -1)
    {
LABEL_19:
      v75 = sub_247DD23CC();
      __swift_project_value_buffer(v75, qword_27EE7B878);

      v76 = sub_247DD23AC();
      v77 = sub_247DD2EEC();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = v35;
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v107[0] = v80;
        *v79 = 136316162;
        *(v79 + 4) = sub_247D72868(v100, v78, v107);
        *(v79 + 12) = 2048;
        *(v79 + 14) = a1 / a13 * 100.0;
        *(v79 + 22) = 2048;
        *(v79 + 24) = a1;
        *(v79 + 32) = 2048;
        *(v79 + 34) = a13;
        *(v79 + 42) = 2080;
        v81 = v49();
        v83 = sub_247D72868(v81, v82, v107);

        *(v79 + 44) = v83;
        _os_log_impl(&dword_247D56000, v76, v77, "%s read %f%%, %ld/%ld bytes, %s elapsed", v79, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v80, -1, -1);
        MEMORY[0x24C1BAF60](v79, -1, -1);
      }

      return 1;
    }

LABEL_31:
    swift_once();
    goto LABEL_19;
  }

  sub_247DD21CC();
  v51 = v22;
  sub_247DD21BC();
  v53 = v52;
  (*(v97 + 8))(v22, v98);
  v54 = v53 * 1000.0;
  if (COERCE__INT64(fabs(v53 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v54 <= -1.0)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v54 >= 1.84467441e19)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v54 >= a9)
  {
    v101 = (v54 - a9);
    v102 = a11;
    v104 = a13;
    v51 = a10;
    if (qword_27EE73260 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  swift_once();
LABEL_16:
  v55 = sub_247DD23CC();
  v56 = __swift_project_value_buffer(v55, qword_27EE7B878);
  (*(v48 + 16))(v50, v51, v49);

  v57 = sub_247DD23AC();
  v58 = sub_247DD2F2C();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v99 = v56;
    v60 = v50;
    v61 = v48;
    v62 = v59;
    v63 = swift_slowAlloc();
    v107[0] = v63;
    *v62 = 136315906;
    *(v62 + 4) = sub_247D72868(v100, v106, v107);
    *(v62 + 12) = 2080;
    sub_247D83AA0(&qword_27EE735C0, MEMORY[0x277CC9260]);
    v64 = sub_247DD321C();
    v65 = v49;
    v66 = a1;
    v68 = v67;
    (*(v61 + 8))(v60, v65);
    v69 = sub_247D72868(v64, v68, v107);
    a1 = v66;

    *(v62 + 14) = v69;
    *(v62 + 22) = 2080;
    v71 = (v102)(v70);
    v73 = sub_247D72868(v71, v72, v107);

    *(v62 + 24) = v73;
    *(v62 + 32) = 2048;
    *(v62 + 34) = v104;
    _os_log_impl(&dword_247D56000, v57, v58, "%s finished receiving file=%s after duration=%s with size=%ld", v62, 0x2Au);
    swift_arrayDestroy();
    v74 = v63;
    v35 = v106;
    MEMORY[0x24C1BAF60](v74, -1, -1);
    MEMORY[0x24C1BAF60](v62, -1, -1);
  }

  else
  {

    (*(v48 + 8))(v50, v49);
  }

  v84 = sub_247DD23AC();
  v85 = sub_247DD2F2C();

  if (!os_log_type_enabled(v84, v85))
  {
    goto LABEL_28;
  }

  v86 = v101 / 1000.0;
  v87 = swift_slowAlloc();
  v88 = swift_slowAlloc();
  v107[0] = v88;
  *v87 = 136315394;
  result = sub_247D72868(v100, v35, v107);
  *(v87 + 4) = result;
  *(v87 + 12) = 2080;
  if (v86 == INFINITY)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v86 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v86 < 9.22337204e18)
  {
    v90 = sub_247D93E14(a1, v86);
    v92 = sub_247D72868(v90, v91, v107);

    *(v87 + 14) = v92;
    _os_log_impl(&dword_247D56000, v84, v85, "%s observed throughput of %s", v87, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v88, -1, -1);
    MEMORY[0x24C1BAF60](v87, -1, -1);
LABEL_28:

    a14(0, 0);
    return 1;
  }

LABEL_38:
  __break(1u);
  return result;
}

void sub_247D7F680(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_27EE73260 != -1)
  {
    swift_once();
  }

  v5 = sub_247DD23CC();
  __swift_project_value_buffer(v5, qword_27EE7B878);

  oslog = sub_247DD23AC();
  v6 = sub_247DD2EEC();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_247D72868(a2, a3, &v13);
    *(v7 + 12) = 2080;
    v9 = sub_247DD2DBC();
    v11 = sub_247D72868(v9, v10, &v13);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_247D56000, oslog, v6, "%s received %s request", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v8, -1, -1);
    MEMORY[0x24C1BAF60](v7, -1, -1);
  }
}

void sub_247D7F818(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    v7 = sub_247DD2DBC();
    v9 = v8;
    swift_beginAccess();
    v10 = *(a2 + 24);
    *(a2 + 16) = v7;
    *(a2 + 24) = v9;

    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v11 = sub_247DD23CC();
    __swift_project_value_buffer(v11, qword_27EE7B878);

    v12 = sub_247DD23AC();
    v13 = sub_247DD2EEC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_247D72868(a3, a4, &v22);
      *(v14 + 12) = 2080;
      swift_beginAccess();
      if (*(a2 + 24))
      {
        v20 = *(a2 + 16);
        v21 = *(a2 + 24);

        v16 = sub_247DD2CFC();
        v18 = v17;
      }

      else
      {
        v18 = 0xE300000000000000;
        v16 = 7104878;
      }

      v19 = sub_247D72868(v16, v18, &v22);

      *(v14 + 14) = v19;
      _os_log_impl(&dword_247D56000, v12, v13, "%s to %s path", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v15, -1, -1);
      MEMORY[0x24C1BAF60](v14, -1, -1);
    }
  }
}

uint64_t sub_247D7FA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (qword_27EE73260 != -1)
  {
    swift_once();
  }

  v8 = sub_247DD23CC();
  __swift_project_value_buffer(v8, qword_27EE7B878);

  v9 = sub_247DD23AC();
  v10 = sub_247DD2EEC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_247D72868(a5, a6, &v20);
    *(v11 + 12) = 2080;
    v13 = sub_247DD2DBC();
    v15 = sub_247D72868(v13, v14, &v20);

    *(v11 + 14) = v15;
    *(v11 + 22) = 2080;
    v16 = sub_247DD2DBC();
    v18 = sub_247D72868(v16, v17, &v20);

    *(v11 + 24) = v18;
    _os_log_impl(&dword_247D56000, v9, v10, "%s read HTTP header '%s' with value '%s'", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v12, -1, -1);
    MEMORY[0x24C1BAF60](v11, -1, -1);
  }

  return 1;
}

uint64_t *CosmoHttpConnection.deinit()
{
  v1 = v0[3];
  sub_247D6A24C(v0[2]);
  v2 = v0[5];
  sub_247D6A24C(v0[4]);
  v3 = v0[7];
  sub_247D6A24C(v0[6]);
  v4 = v0[9];
  sub_247D6A24C(v0[8]);
  v5 = v0[11];
  sub_247D6A24C(v0[10]);
  v6 = OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_id;
  v7 = sub_247DD225C();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  sub_247D7FD5C(v0 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_config, type metadata accessor for CosmoHttpConnection.Configuration);
  sub_247D7FD5C(v0 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_descriptor, type metadata accessor for NetworkDescriptor);

  v8 = *(v0 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_name + 8);

  v9 = *(v0 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection);

  return v0;
}

uint64_t sub_247D7FD5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CosmoHttpConnection.__deallocating_deinit()
{
  CosmoHttpConnection.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_247D7FE18()
{
  result = qword_27EE738C8;
  if (!qword_27EE738C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE738C8);
  }

  return result;
}

uint64_t sub_247D7FEB4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_id;
  v5 = sub_247DD225C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t get_enum_tag_for_layout_string_5Cosmo0A9HttpErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_247D7FF54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_247D7FF9C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_247D7FFE0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CosmoListener.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CosmoListener.State(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_247D80180()
{
  result = sub_247DD225C();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for CosmoHttpConnection.Configuration(319);
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = type metadata accessor for NetworkDescriptor();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_247D8036C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_247DD20DC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_247D803F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_247DD20DC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_247D80474()
{
  result = sub_247DD20DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_247D80504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73500, &unk_247DD4310);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_247D805E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73500, &unk_247DD4310);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_247D806CC()
{
  sub_247D80778();
  if (v0 <= 0x3F)
  {
    sub_247D807C8();
    if (v1 <= 0x3F)
    {
      sub_247D80820();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_247D80778()
{
  if (!qword_27EE73930)
  {
    v0 = sub_247DD2F9C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE73930);
    }
  }
}

void sub_247D807C8()
{
  if (!qword_27EE73938)
  {
    sub_247DD20DC();
    v0 = sub_247DD2F9C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE73938);
    }
  }
}

unint64_t sub_247D80820()
{
  result = qword_27EE73940;
  if (!qword_27EE73940)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27EE73940);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_247D808DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_247D80924(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_247D8098C()
{
  v1 = *(v0 + 16);
  v2 = sub_247DD2DBC();
  v3 = v1[1];
  *v1 = v2;
  v1[1] = v4;
}

uint64_t sub_247D809CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_247D80A0C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73960, &qword_247DD48E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_247D80A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_247DD2E4C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_247D8100C();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_247DD308C();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
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

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_247D8100C()
{
  v0 = sub_247DD2E5C();
  v4 = sub_247D8108C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_247D8108C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_247DD2D6C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_247DD2FAC();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_247D80A0C(v9, 0);
  v12 = sub_247D811E4(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_247DD2D6C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_247DD308C();
LABEL_4:

  return sub_247DD2D6C();
}

unint64_t sub_247D811E4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_247D81404(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_247DD2E0C();
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
          result = sub_247DD308C();
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

    result = sub_247D81404(v12, a6, a7);
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

    result = sub_247DD2DEC();
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

uint64_t sub_247D81404(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_247DD2E1C();
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
    v5 = MEMORY[0x24C1BA0F0](15, a1 >> 16);
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

uint64_t sub_247D81480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_247DD2A0C();
  v26 = *(v12 - 8);
  v13 = *(v26 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_247DD2A2C();
  v16 = *(v25 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v25);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[3] = a5;
  v30[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  v21 = *(a4 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_queue);
  sub_247D6B5C0(v30, v29);
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a2;
  v22[4] = a3;
  sub_247D6B5A8(v29, (v22 + 5));
  aBlock[4] = sub_247D8182C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_58;
  v23 = _Block_copy(aBlock);

  sub_247D6ACFC(a2);
  sub_247DD2A1C();
  v27 = MEMORY[0x277D84F90];
  sub_247D83AA0(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v19, v15, v23);
  _Block_release(v23);
  (*(v26 + 8))(v15, v12);
  (*(v16 + 8))(v19, v25);

  return __swift_destroy_boxed_opaque_existential_0Tm(v30);
}

uint64_t sub_247D817DC()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 5);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_247D8183C()
{
  v1 = v0[4];

  v2 = v0[5];

  if (v0[6])
  {
    v3 = v0[7];
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_247D818A0()
{
  v1 = sub_247DD20DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_247DD261C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 + v6 + 8) & ~v9;
  v16 = v3 | v9;
  v11 = (*(v8 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5 + 8);

  v14 = *(v0 + v6);

  (*(v8 + 8))(v0 + v10, v7);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v16 | 7);
}

uint64_t sub_247D81A3C(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *(sub_247DD20DC() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(sub_247DD261C() - 8);
  v13 = (*(v12 + 80) + v11 + 8) & ~*(v12 + 80);
  return sub_247D79F50(a1, a2, a3, *(v3 + 16), *(v3 + 24), v3 + v8, *(v3 + v9), *(v3 + v10), *(v3 + v10 + 8), *(v3 + v11), v3 + v13, *(v3 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8))) & 1;
}

uint64_t sub_247D81B94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for NetworkDescriptor();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CosmoHttpConnection.Configuration(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection))
  {
    sub_247DD26FC();
    swift_retain_n();
    sub_247D879F4();
    v16 = sub_247DD257C();
    if (v16)
    {
      v17 = v16;
      sub_247D81F30(a1, v15, type metadata accessor for CosmoHttpConnection.Configuration);
      sub_247D81F30(a2, v11, type metadata accessor for NetworkDescriptor);
      v18 = type metadata accessor for CosmoHttpConnection(0);
      v19 = *(v18 + 48);
      v20 = *(v18 + 52);
      v21 = swift_allocObject();
      sub_247D755C4(v15, v11, 1, v17, a4);

      sub_247D7FD5C(a2, type metadata accessor for NetworkDescriptor);
      sub_247D7FD5C(a1, type metadata accessor for CosmoHttpConnection.Configuration);
      return v21;
    }

    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v27 = sub_247DD23CC();
    __swift_project_value_buffer(v27, qword_27EE7B878);
    v24 = sub_247DD23AC();
    v28 = sub_247DD2F0C();
    if (os_log_type_enabled(v24, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      MEMORY[0x24C1BAF60](v29, -1, -1);
    }
  }

  else
  {
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v23 = sub_247DD23CC();
    __swift_project_value_buffer(v23, qword_27EE7B878);
    v24 = sub_247DD23AC();
    v25 = sub_247DD2F0C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      MEMORY[0x24C1BAF60](v26, -1, -1);
    }
  }

  sub_247D7FD5C(a2, type metadata accessor for NetworkDescriptor);
  sub_247D7FD5C(a1, type metadata accessor for CosmoHttpConnection.Configuration);
  return 0;
}

uint64_t sub_247D81F30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_247D81FB4()
{
  v1 = sub_247DD20DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 3);

  if (*(v0 + 4))
  {
    v6 = *(v0 + 5);
  }

  v7 = (v3 + 56) & ~v3;
  v8 = (v4 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(&v0[v7], v1);
  v10 = *&v0[v8 + 8];

  v11 = *&v0[v9 + 8];

  return MEMORY[0x2821FE8E8](v0, v9 + 16, v3 | 7);
}

uint64_t sub_247D820BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v9 = *(sub_247DD20DC() - 8);
  v10 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = v4 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = *(v13 + 8);
  return sub_247D7EADC(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), (v4 + v10), *(v4 + v11), *(v4 + v11 + 8), *(v4 + v12), *v13) & 1;
}

uint64_t sub_247D821BC(uint64_t a1, uint64_t a2, unint64_t isEscapingClosureAtFileLocation)
{
  v5 = sub_247DD25EC();
  v6 = nw_protocol_copy_http_definition();
  v7 = nw_content_context_copy_protocol_metadata(v5, v6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v7)
  {
    if (!nw_http_metadata_copy_response())
    {
      if (qword_27EE73260 != -1)
      {
        swift_once();
      }

      v22 = sub_247DD23CC();
      __swift_project_value_buffer(v22, qword_27EE7B878);

      v23 = sub_247DD23AC();
      v24 = sub_247DD2F0C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v27[0] = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_247D72868(a2, isEscapingClosureAtFileLocation, v27);
        _os_log_impl(&dword_247D56000, v23, v24, "%s could not extract HTTP response metadata", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        MEMORY[0x24C1BAF60](v26, -1, -1);
        MEMORY[0x24C1BAF60](v25, -1, -1);
      }

      swift_unknownObjectRelease();
      return 0;
    }

    status_code = nw_http_response_get_status_code();
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v9 = sub_247DD23CC();
    __swift_project_value_buffer(v9, qword_27EE7B878);

    v10 = sub_247DD23AC();
    v11 = sub_247DD2EEC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v27[0] = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_247D72868(a2, isEscapingClosureAtFileLocation, v27);
      *(v12 + 12) = 512;
      *(v12 + 14) = status_code;
      _os_log_impl(&dword_247D56000, v10, v11, "%s read HTTP status %hu", v12, 0x10u);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x24C1BAF60](v13, -1, -1);
      MEMORY[0x24C1BAF60](v12, -1, -1);
    }

    nw_http_response_copy();
    nw_http_response_copy_header_fields();
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = isEscapingClosureAtFileLocation;
    a2 = swift_allocObject();
    *(a2 + 16) = sub_247D82D74;
    *(a2 + 24) = v14;
    v27[4] = sub_247D82D7C;
    v27[5] = a2;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 1107296256;
    v27[2] = sub_247D7FC1C;
    v27[3] = &block_descriptor_96_0;
    v15 = _Block_copy(v27);

    nw_http_fields_enumerate();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return status_code;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (qword_27EE73260 != -1)
  {
LABEL_20:
    swift_once();
  }

  v17 = sub_247DD23CC();
  __swift_project_value_buffer(v17, qword_27EE7B878);

  v18 = sub_247DD23AC();
  v19 = sub_247DD2F0C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_247D72868(a2, isEscapingClosureAtFileLocation, v27);
    _os_log_impl(&dword_247D56000, v18, v19, "%s could not extract HTTP definition for HTTP response", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x24C1BAF60](v21, -1, -1);
    MEMORY[0x24C1BAF60](v20, -1, -1);
  }

  return 0;
}

uint64_t sub_247D826EC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247D82724(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = sub_247DD2ABC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  v31 = a5;
  *(v17 + 48) = a6;
  v18 = *(a1 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_queue);
  *v16 = v18;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);

  swift_unknownObjectRetain();

  v19 = v18;
  LOBYTE(v18) = sub_247DD2ADC();
  (*(v13 + 8))(v16, v12);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  v20 = *(a1 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection);
  if (v20)
  {
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = v20;
    v22[4] = sub_247D82D18;
    v22[5] = v17;
    swift_retain_n();

    sub_247DD262C();
  }

  if (qword_27EE73260 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v23 = sub_247DD23CC();
  __swift_project_value_buffer(v23, qword_27EE7B878);
  v24 = sub_247DD23AC();
  v25 = sub_247DD2F0C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v32 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_247D72868(0xD000000000000023, 0x8000000247DD90B0, &v32);
    _os_log_impl(&dword_247D56000, v24, v25, "%s connection is nil", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x24C1BAF60](v27, -1, -1);
    MEMORY[0x24C1BAF60](v26, -1, -1);
  }

  sub_247D6AFB0();
  v28 = swift_allocError();
  *v29 = 0xD000000000000035;
  *(v29 + 8) = 0x8000000247DD9070;
  *(v29 + 16) = 1;
  sub_247D7D8E0(v28, 0, 1, a2, a3, a4, v31, a6);
}

void sub_247D82AF0(void *a1, id a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_247D82B18()
{
  v1 = sub_247DD20DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 26) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);
  swift_unknownObjectRelease();
  v9 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_247D82C0C(void *a1, char a2)
{
  v5 = *(sub_247DD20DC() - 8);
  v6 = (*(v5 + 80) + 26) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = (v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v2 + 24);

  return sub_247D7D510(a1, a2 & 1, v8, v13, v2 + v6, v9, v11, v12);
}

uint64_t sub_247D82CD0()
{
  v1 = v0[2];

  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

id sub_247D82D5C(id a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_247D6C0B0(a1, a2, a3);
  }
}

void sub_247D82D68(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_247D6C0AC(a1, a2);
  }
}

uint64_t sub_247D82D7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_247D82DA8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_247DD25EC();
  v6 = nw_protocol_copy_http_definition();
  v7 = nw_content_context_copy_protocol_metadata(v5, v6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v7)
  {
    if (qword_27EE73260 == -1)
    {
LABEL_8:
      v18 = sub_247DD23CC();
      __swift_project_value_buffer(v18, qword_27EE7B878);

      v19 = sub_247DD23AC();
      v20 = sub_247DD2F0C();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        aBlock = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_247D72868(a2, a3, &aBlock);
        _os_log_impl(&dword_247D56000, v19, v20, "%s could not extract HTTP definition for HTTP request", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v22);
        MEMORY[0x24C1BAF60](v22, -1, -1);
        MEMORY[0x24C1BAF60](v21, -1, -1);
      }

      return 0;
    }

LABEL_25:
    swift_once();
    goto LABEL_8;
  }

  if (nw_http_metadata_copy_request())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_247D83924;
    *(v9 + 24) = v8;
    v39 = sub_247D83B9C;
    v40 = v9;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_247D749D4;
    v38 = &block_descriptor_115;
    v10 = _Block_copy(&aBlock);

    nw_http_request_access_method();
    _Block_release(v10);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if (v10)
    {
      __break(1u);
    }

    else
    {
      v11 = swift_allocObject();
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = a2;
      v33 = a2;
      v12[4] = a3;
      a2 = swift_allocObject();
      *(a2 + 16) = sub_247D83940;
      *(a2 + 24) = v12;
      v39 = sub_247D8394C;
      v40 = a2;
      aBlock = MEMORY[0x277D85DD0];
      v36 = 1107296256;
      v37 = sub_247D7FA30;
      v38 = &block_descriptor_127;
      v13 = _Block_copy(&aBlock);

      nw_http_request_access_path();
      _Block_release(v13);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        swift_beginAccess();
        if (*(v11 + 24))
        {
          v15 = *(v11 + 16);
          v16 = *(v11 + 24);

          swift_unknownObjectRelease();
          return v15;
        }

        if (qword_27EE73260 != -1)
        {
          swift_once();
        }

        v28 = sub_247DD23CC();
        __swift_project_value_buffer(v28, qword_27EE7B878);

        v29 = sub_247DD23AC();
        v30 = sub_247DD2F0C();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v34 = v32;
          *v31 = 136315138;
          *(v31 + 4) = sub_247D72868(v33, a3, &v34);
          _os_log_impl(&dword_247D56000, v29, v30, "%s got bad request with no HTTP path", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v32);
          MEMORY[0x24C1BAF60](v32, -1, -1);
          MEMORY[0x24C1BAF60](v31, -1, -1);
        }

        swift_unknownObjectRelease();
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  if (qword_27EE73260 != -1)
  {
    swift_once();
  }

  v23 = sub_247DD23CC();
  __swift_project_value_buffer(v23, qword_27EE7B878);

  v24 = sub_247DD23AC();
  v25 = sub_247DD2F0C();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_247D72868(a2, a3, &aBlock);
    _os_log_impl(&dword_247D56000, v24, v25, "%s could not extract HTTP request metadata", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x24C1BAF60](v27, -1, -1);
    MEMORY[0x24C1BAF60](v26, -1, -1);
  }

LABEL_21:
  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_247D83444(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v36 = a7;
  v13 = sub_247DD2ABC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v34 = a3;
  v35 = a6;
  v19 = a5;
  v20 = v36;
  v18[4] = a4;
  v18[5] = v19;
  v18[6] = a6;
  v18[7] = v20;
  v21 = *(a1 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_queue);
  *v17 = v21;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13);

  swift_unknownObjectRetain();

  v22 = v21;
  LOBYTE(v21) = sub_247DD2ADC();
  (*(v14 + 8))(v17, v13);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  v23 = *(a1 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection);
  if (v23)
  {
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = v23;
    v25[4] = sub_247D8386C;
    v25[5] = v18;
    swift_retain_n();

    sub_247DD262C();
  }

  if (qword_27EE73260 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v26 = sub_247DD23CC();
  __swift_project_value_buffer(v26, qword_27EE7B878);
  v27 = sub_247DD23AC();
  v28 = sub_247DD2F0C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_247D72868(0xD000000000000023, 0x8000000247DD90B0, &v37);
    _os_log_impl(&dword_247D56000, v27, v28, "%s connection is nil", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x24C1BAF60](v30, -1, -1);
    MEMORY[0x24C1BAF60](v29, -1, -1);
  }

  sub_247D6AFB0();
  v31 = swift_allocError();
  *v32 = 0xD000000000000035;
  *(v32 + 8) = 0x8000000247DD9070;
  *(v32 + 16) = 1;
  sub_247D7BBE8(v31, 0, 1, a2, v34, a4, v19, v35, v20);
}

uint64_t sub_247D8381C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();
  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_86Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_247D838EC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247D8394C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_247D83974()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_120Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_247D83A18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247D83A50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_247D83A78()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_247D83AA0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_247D83AE8()
{
  result = qword_27EE739D0;
  if (!qword_27EE739D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE739D0);
  }

  return result;
}

uint64_t sub_247D83BA0(uint64_t a1, uint64_t a2)
{
  v4[2] = a2;
  sub_247DD2F9C();
  sub_247D83C38(sub_247D84244, v4, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v2, v5);
  if (v5[1])
  {
    return v5[0];
  }

  else
  {
    return 7104878;
  }
}

uint64_t sub_247D83C38@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t sub_247D83FA4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_247DD23CC();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_247DD23BC();
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

uint64_t sub_247D840F0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_247DD23CC();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_247DD23BC();
}

uint64_t sub_247D84174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_247DD2CFC();
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_247D84264()
{
  v0 = sub_247DD23CC();
  __swift_allocate_value_buffer(v0, qword_27EE739E0);
  v1 = __swift_project_value_buffer(v0, qword_27EE739E0);
  if (qword_27EE73268 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27EE7B890);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_247D8432C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6164696C61766E69;
  }

  else
  {
    v4 = 0x7964616572;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xEB00000000646574;
  }

  if (*a2)
  {
    v6 = 0x6164696C61766E69;
  }

  else
  {
    v6 = 0x7964616572;
  }

  if (*a2)
  {
    v7 = 0xEB00000000646574;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_247DD322C();
  }

  return v9 & 1;
}

uint64_t sub_247D843D8()
{
  v1 = *v0;
  sub_247DD32BC();
  sub_247DD2D7C();

  return sub_247DD32EC();
}

uint64_t sub_247D84460()
{
  *v0;
  sub_247DD2D7C();
}

uint64_t sub_247D844D4()
{
  v1 = *v0;
  sub_247DD32BC();
  sub_247DD2D7C();

  return sub_247DD32EC();
}

uint64_t sub_247D84558@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_247DD312C();

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

void sub_247D845B8(uint64_t *a1@<X8>)
{
  v2 = 0x7964616572;
  if (*v1)
  {
    v2 = 0x6164696C61766E69;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000646574;
  }

  *a1 = v2;
  a1[1] = v3;
}

void *sub_247D845FC(char *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v47 = a1;
  v48 = a2;
  v8 = sub_247DD249C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NetworkDescriptor();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v44 - v16;
  v18 = sub_247DD2F6C();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_247DD2F3C();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v24 = sub_247DD2A2C();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v4[2] = 0;
  v4[3] = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_isReady) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_terminated) = 0;
  v26 = MEMORY[0x277D84F90];
  *(v4 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_requestQueue) = MEMORY[0x277D84F90];
  v27 = v48;
  v4[4] = v47;
  v4[5] = v27;
  if (a4)
  {
    v28 = a4;
  }

  else
  {
    v29 = sub_247D6A0F4();
    v47 = "";
    v48 = v29;
    sub_247DD2A1C();
    v50 = v26;
    v44[1] = sub_247D86968(&unk_27EE73390, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE739B0, &unk_247DD3F70);
    sub_247D869B0(&qword_27EE733A0, &unk_27EE739B0, &unk_247DD3F70);
    a4 = 0;
    sub_247DD2FFC();
    (*(v45 + 104))(v21, *MEMORY[0x277D85260], v46);
    v28 = sub_247DD2F8C();
  }

  v4[6] = v28;
  sub_247D86A04(a3, v4 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_descriptor);
  sub_247D86A04(a3, v17);
  v30 = a4;
  v31 = v28;
  sub_247D873E8(v49);
  sub_247D879F4();
  v32 = sub_247DD26FC();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_247DD265C();
  sub_247D86A04(v17, v15);
  v36 = type metadata accessor for CosmoConnection();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v39 = sub_247D8AE8C(v15, 1, v35, v28);

  sub_247D8690C(a3);
  sub_247D8690C(v17);
  *(v5 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_connection) = v39;
  v40 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v41 = *(v39 + 2);
  v42 = *(v39 + 3);
  *(v39 + 2) = sub_247D86A68;
  *(v39 + 3) = v40;

  sub_247D6A24C(v41);

  return v5;
}

uint64_t sub_247D84A90(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = v1;
    sub_247D85190(&v3);
  }

  return result;
}

uint64_t sub_247D84B1C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_connection);
  v2 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *(v1 + 32) = sub_247D86904;
  *(v1 + 40) = v2;

  sub_247D6A24C(v3);

  if (qword_27EE732A0 != -1)
  {
    swift_once();
  }

  v5 = sub_247DD23CC();
  __swift_project_value_buffer(v5, qword_27EE739E0);

  v6 = sub_247DD23AC();
  v7 = sub_247DD2F2C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    v10 = sub_247D86568();
    v12 = sub_247D72868(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_247D56000, v6, v7, "Starting channel, %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x24C1BAF60](v9, -1, -1);
    MEMORY[0x24C1BAF60](v8, -1, -1);
  }

  return sub_247D8BC28();
}

uint64_t sub_247D84CF8(int a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_247D858DC(a1, a2, a3);
  }

  return result;
}

uint64_t sub_247D84D94(uint64_t a1, uint64_t a2)
{
  v5 = sub_247DD2A0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_247DD2A2C();
  v10 = *(v17 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v17);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + 48);
  aBlock[4] = a1;
  v20 = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v18 = MEMORY[0x277D84F90];
  sub_247D86968(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D869B0(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v13, v9, v14);
  _Block_release(v14);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v17);
}

uint64_t sub_247D85024(uint64_t a1)
{
  if (qword_27EE732A0 != -1)
  {
    swift_once();
  }

  v2 = sub_247DD23CC();
  __swift_project_value_buffer(v2, qword_27EE739E0);

  v3 = sub_247DD23AC();
  v4 = sub_247DD2F2C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = sub_247D86568();
    v9 = sub_247D72868(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_247D56000, v3, v4, "Stopping channel, %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x24C1BAF60](v6, -1, -1);
    MEMORY[0x24C1BAF60](v5, -1, -1);
  }

  v10 = *(a1 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_connection);
  return sub_247D8E4CC();
}

uint64_t sub_247D85190(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_247DD2ABC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  v10 = v2[6];
  *v8 = v10;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_247DD2ADC();
  result = (*(v5 + 8))(v8, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_12;
  }

  if (v9)
  {
    if ((*(v2 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_terminated) & 1) == 0)
    {
      if (qword_27EE732A0 != -1)
      {
        swift_once();
      }

      v13 = sub_247DD23CC();
      __swift_project_value_buffer(v13, qword_27EE739E0);

      v14 = sub_247DD23AC();
      v15 = sub_247DD2F2C();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v37 = v17;
        *v16 = 136315394;
        v36[7] = v9;
        v18 = sub_247DD2CFC();
        v20 = sub_247D72868(v18, v19, &v37);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2080;
        v21 = sub_247D86568();
        v23 = sub_247D72868(v21, v22, &v37);

        *(v16 + 14) = v23;
        _os_log_impl(&dword_247D56000, v14, v15, "Channel invalidated, connection-state=%s %s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v17, -1, -1);
        MEMORY[0x24C1BAF60](v16, -1, -1);
      }

      v24 = v2[2];
      if (v24)
      {
        v25 = v2[3];

        v24(1);
        sub_247D6A24C(v24);
      }

      return sub_247D855C0();
    }

    return result;
  }

  *(v2 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_isReady) = 1;
  if (qword_27EE732A0 != -1)
  {
    goto LABEL_19;
  }

LABEL_12:
  v26 = sub_247DD23CC();
  __swift_project_value_buffer(v26, qword_27EE739E0);

  v27 = sub_247DD23AC();
  v28 = sub_247DD2F2C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37 = v30;
    *v29 = 136315138;
    v31 = sub_247D86568();
    v33 = sub_247D72868(v31, v32, &v37);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_247D56000, v27, v28, "Channel ready, %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x24C1BAF60](v30, -1, -1);
    MEMORY[0x24C1BAF60](v29, -1, -1);
  }

  v34 = v2[2];
  if (v34)
  {
    v35 = v2[3];

    v34(0);
    sub_247D6A24C(v34);
  }

  return sub_247D85CC4();
}

uint64_t sub_247D855C0()
{
  v2 = v0;
  v3 = sub_247DD2ABC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + 48);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_247DD2ADC();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  *(v2 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_isReady) = 0;
  *(v2 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_terminated) = 1;
  v1 = OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_requestQueue;
  result = swift_beginAccess();
  if (!*(*(v2 + v1) + 16))
  {
    return result;
  }

  if (qword_27EE732A0 != -1)
  {
    goto LABEL_13;
  }

LABEL_4:
  v11 = sub_247DD23CC();
  __swift_project_value_buffer(v11, qword_27EE739E0);

  v12 = sub_247DD23AC();
  v13 = sub_247DD2F2C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v29 = v15;
    *v14 = 136315138;
    v16 = sub_247D86568();
    v18 = sub_247D72868(v16, v17, &v29);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_247D56000, v12, v13, "Failing pending requests, %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x24C1BAF60](v15, -1, -1);
    MEMORY[0x24C1BAF60](v14, -1, -1);
  }

  v19 = *(v2 + v1);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = *(v2 + v1);

    v22 = (v19 + 64);
    v28 = xmmword_247DD52A0;
    do
    {
      v23 = *(v22 - 3);
      v24 = *(v22 - 2);
      v26 = *(v22 - 1);
      v25 = *v22;
      v29 = v28;
      v30 = 258;
      sub_247D6A2E8(v23, v24);

      v26(&v29);
      sub_247D6A1F8(v23, v24);

      v22 += 5;
      --v20;
    }

    while (v20);

    v27 = *(v2 + v1);
  }

  *(v2 + v1) = MEMORY[0x277D84F90];
}

void sub_247D858DC(int a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_247DD2ABC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + 48);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v13 = v12;
  LOBYTE(v12) = sub_247DD2ADC();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_27:
    swift_once();
LABEL_10:
    v23 = sub_247DD23CC();
    __swift_project_value_buffer(v23, qword_27EE739E0);
    sub_247D6C0B0(a2, a3, v24);

    v25 = sub_247DD23AC();
    v26 = sub_247DD2F0C();
    sub_247D6C0AC(a2, a3);

    if (!os_log_type_enabled(v25, v26))
    {
LABEL_25:

      return;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v42 = v28;
    *v27 = 67109634;
    *(v27 + 4) = a1;
    *(v27 + 8) = 2080;
    if (a3 >> 60 == 15)
    {
      v29 = 0xE300000000000000;
      v30 = 7104878;
LABEL_24:
      v37 = sub_247D72868(v30, v29, &v42);

      *(v27 + 10) = v37;
      *(v27 + 18) = 2080;
      v38 = sub_247D86568();
      v40 = sub_247D72868(v38, v39, &v42);

      *(v27 + 20) = v40;
      _os_log_impl(&dword_247D56000, v25, v26, "[Received] Unexpected message received with no pending requests, type=%u size=%s %s", v27, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v28, -1, -1);
      MEMORY[0x24C1BAF60](v27, -1, -1);
      goto LABEL_25;
    }

    v31 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v31 != 2)
      {
        v32 = 0;
        goto LABEL_23;
      }

      v34 = *(a2 + 16);
      v33 = *(a2 + 24);
      v35 = __OFSUB__(v33, v34);
      v32 = v33 - v34;
      if (!v35)
      {
        goto LABEL_23;
      }

      __break(1u);
    }

    else if (!v31)
    {
      v32 = BYTE6(a3);
LABEL_23:
      v41[1] = v32;
      v30 = sub_247DD2CFC();
      v29 = v36;
      goto LABEL_24;
    }

    LODWORD(v32) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      __break(1u);
      return;
    }

    v32 = v32;
    goto LABEL_23;
  }

  v14 = OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_requestQueue;
  swift_beginAccess();
  v15 = *(v3 + v14);
  if (!v15[2])
  {
    if (qword_27EE732A0 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

  swift_beginAccess();
  v16 = v15[5];
  v17 = v15[6];
  v19 = v15[7];
  v18 = v15[8];
  sub_247D6A2E8(v16, v17);

  sub_247DA4E7C(0, 1);
  swift_endAccess();
  if (a3 >> 60 == 15)
  {
    v21 = 0;
  }

  else
  {
    v21 = a2;
  }

  v22 = 0xC000000000000000;
  if (a3 >> 60 != 15)
  {
    v22 = a3;
  }

  v42 = v21;
  v43 = v22;
  v44 = 0;
  sub_247D6C0B0(a2, a3, v20);
  v19(&v42);
  sub_247D6A1F8(v16, v17);

  sub_247D868B0(v42, v43, v44, SHIBYTE(v44));
}

uint64_t sub_247D85CC4()
{
  v1 = v0;
  v47 = sub_247DD2A0C();
  i = *(v47 - 8);
  v3 = i[8];
  MEMORY[0x28223BE20](v47);
  v46 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_247DD2A2C();
  v5 = *(v45 - 8);
  v6 = *(v5 + 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_247DD2ABC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + 48);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  v15 = sub_247DD2ADC();
  v17 = *(v9 + 8);
  v16 = v9 + 8;
  v17(v12, v8);
  if ((v15 & 1) == 0)
  {
    goto LABEL_13;
  }

  v16 = OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_requestQueue;
  result = swift_beginAccess();
  if (*(*(v1 + v16) + 16))
  {
    if (qword_27EE732A0 != -1)
    {
      goto LABEL_14;
    }

    while (1)
    {
      v19 = sub_247DD23CC();
      __swift_project_value_buffer(v19, qword_27EE739E0);

      v20 = sub_247DD23AC();
      v21 = sub_247DD2F2C();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = v5;
        v24 = swift_slowAlloc();
        aBlock[0] = v24;
        *v22 = 136315138;
        v25 = sub_247D86568();
        v27 = sub_247D72868(v25, v26, aBlock);

        *(v22 + 4) = v27;
        _os_log_impl(&dword_247D56000, v20, v21, "[Flush] Flushing request-queue, %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
        v28 = v24;
        v5 = v23;
        MEMORY[0x24C1BAF60](v28, -1, -1);
        MEMORY[0x24C1BAF60](v22, -1, -1);
      }

      result = *(v1 + v16);
      v29 = *(result + 16);
      if (!v29)
      {
        break;
      }

      v43 = *(v1 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_connection);
      v41 = v52;
      v42 = OBJC_IVAR____TtC5Cosmo15CosmoConnection_queue;
      v40 = (i + 1);
      v39 = (v5 + 8);

      for (i = (v38 + 64); ; i += 5)
      {
        v16 = *(i - 8);
        if (!v16)
        {
          break;
        }

        v30 = *(i - 3);
        v31 = *(i - 2);
        v32 = v43;
        v33 = *(v43 + v42);
        v48 = *i;
        v49 = v33;
        v34 = swift_allocObject();
        *(v34 + 16) = v32;
        *(v34 + 24) = v16;
        *(v34 + 32) = v30;
        *(v34 + 40) = v31;
        v52[2] = sub_247D86888;
        v52[3] = v34;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v52[0] = sub_247D598D4;
        v52[1] = &block_descriptor_1;
        v35 = _Block_copy(aBlock);
        sub_247D6A2E8(v30, v31);

        sub_247D6A2E8(v30, v31);
        v5 = v44;
        sub_247DD2A1C();
        v50 = MEMORY[0x277D84F90];
        sub_247D86968(&unk_27EE73AF0, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
        sub_247D869B0(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
        v36 = v46;
        v1 = v47;
        sub_247DD2FFC();
        MEMORY[0x24C1BA270](0, v5, v36, v35);
        _Block_release(v35);
        sub_247D6A1F8(v30, v31);

        (*v40)(v36, v1);
        (*v39)(v5, v45);

        if (!--v29)
        {
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      swift_once();
    }
  }

  return result;
}

uint64_t sub_247D86294()
{
  v1 = *(v0 + 24);
  sub_247D6A24C(*(v0 + 16));
  v2 = *(v0 + 40);

  sub_247D8690C(v0 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_descriptor);
  v3 = *(v0 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_connection);

  v4 = *(v0 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_requestQueue);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for CosmoSerialChannelClient()
{
  result = qword_27EE73A18;
  if (!qword_27EE73A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247D86384()
{
  result = type metadata accessor for NetworkDescriptor();
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

uint64_t sub_247D86460(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_247D864A8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_247D86514()
{
  result = qword_27EE73A28;
  if (!qword_27EE73A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73A28);
  }

  return result;
}

uint64_t sub_247D86568()
{
  v1 = 0xE500000000000000;
  v16[0] = 0x3D656D616ELL;
  v16[1] = 0xE500000000000000;
  MEMORY[0x24C1BA0A0](*(v0 + 32), *(v0 + 40));
  strcpy(v16, "descriptor=");
  HIDWORD(v16[1]) = -352321536;
  v2 = NetworkDescriptor.description.getter();
  MEMORY[0x24C1BA0A0](v2);

  v4 = v16[0];
  v3 = v16[1];
  strcpy(v16, "isReady=");
  BYTE1(v16[1]) = 0;
  WORD1(v16[1]) = 0;
  HIDWORD(v16[1]) = -402653184;
  if (*(v0 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_isReady))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_isReady))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x24C1BA0A0](v5, v6);

  v8 = v16[0];
  v7 = v16[1];
  strcpy(v16, "isTerminated=");
  HIWORD(v16[1]) = -4864;
  if (*(v0 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_terminated))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_terminated))
  {
    v1 = 0xE400000000000000;
  }

  MEMORY[0x24C1BA0A0](v9, v1);

  v10 = OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_requestQueue;
  swift_beginAccess();
  v11 = 0xE000000000000000;
  if (*(*(v0 + v10) + 16))
  {
    sub_247DD304C();

    v15 = *(*(v0 + v10) + 16);
    v12 = sub_247DD321C();
    MEMORY[0x24C1BA0A0](v12);

    v13 = 0xD000000000000014;
    v11 = 0x8000000247DD9210;
  }

  else
  {
    v13 = 0;
  }

  MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
  MEMORY[0x24C1BA0A0](v4, v3);

  MEMORY[0x24C1BA0A0](v13, v11);

  MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
  MEMORY[0x24C1BA0A0](v8, v7);

  MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
  MEMORY[0x24C1BA0A0](v16[0], v16[1]);

  return 0x3D656D616ELL;
}

uint64_t sub_247D86838()
{
  v1 = v0[2];

  v2 = v0[5];
  if (v2 >> 60 != 15)
  {
    sub_247D6A1F8(v0[4], v2);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247D868B0(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {
    return sub_247D6AD68(a1, a2, a3);
  }

  else
  {
    return sub_247D6A1F8(a1, a2);
  }
}

uint64_t sub_247D868CC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247D8690C(uint64_t a1)
{
  v2 = type metadata accessor for NetworkDescriptor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247D86968(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_247D869B0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_247D86A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247D86A80()
{
  type metadata accessor for CosmoMessageProtocol();
  sub_247D87394();
  v0 = sub_247DD287C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_247DD286C();
  qword_27EE73A30 = result;
  return result;
}

uint64_t static CosmoMessageProtocol.definition.getter()
{
  if (qword_27EE732A8 != -1)
  {
    swift_once();
  }
}

uint64_t CosmoMessageProtocol.__allocating_init(framer:)()
{

  return swift_allocObject();
}

uint64_t sub_247D86BA4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CD8EB8];
  v3 = sub_247DD288C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t NWProtocolFramer.Message.messageTypeHeader.getter()
{
  sub_247DD28BC();
  if (v3)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v1;
    }
  }

  else
  {
    sub_247D86FF4(v2);
    return 0;
  }

  return result;
}

uint64_t NWProtocolFramer.Message.init(messageTypeHeader:)()
{
  if (qword_27EE732A8 != -1)
  {
    swift_once();
  }

  v0 = sub_247DD289C();

  sub_247DD28CC();

  return v0;
}

uint64_t sub_247D86D88()
{

  type metadata accessor for CosmoMessageProtocol();

  return swift_allocObject();
}

uint64_t sub_247D86DBC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  sub_247DD28BC();
  if (v17)
  {
    if (swift_dynamicCast())
    {
      v4 = v13;
      goto LABEL_6;
    }
  }

  else
  {
    sub_247D86FF4(&v15);
  }

  v4 = 0;
LABEL_6:
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
  }

  if (HIDWORD(a3))
  {
    goto LABEL_10;
  }

  LODWORD(v13) = v4;
  v14 = a3;
  v15 = sub_247D99734(&v13, 4);
  v16 = v5;
  v6 = sub_247D99734(&v14, 4);
  v8 = v7;
  sub_247DD218C();
  sub_247D6A1F8(v6, v8);
  v9 = v15;
  v10 = v16;
  sub_247DD290C();
  sub_247D6A1F8(v9, v10);
  result = sub_247DD291C();
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_247D86FF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73A38, &qword_247DD54F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247D87340(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 0;
  }

  result = *(v3 + 16);
  if (a1)
  {
    if (a2 - a1 >= result)
    {
      v6 = *(v3 + 24);
      *v6 = *a1;
      *(v6 + 8) = 0;
    }

    else
    {
      return 0;
    }
  }

  else if (result <= 0)
  {
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

unint64_t sub_247D87394()
{
  result = qword_27EE73A48;
  if (!qword_27EE73A48)
  {
    type metadata accessor for CosmoMessageProtocol();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73A48);
  }

  return result;
}

uint64_t sub_247D873E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = sub_247DD225C();
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_247DD248C();
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = *(v52 + 64);
  MEMORY[0x28223BE20](v7);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73AD8, &qword_247DD5650);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v52 - v12;
  v14 = sub_247DD254C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for NetworkDescriptor();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (&v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C00, &qword_247DD55F8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v52 - v28;
  sub_247D86A04(v2, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v40 = *v22;
      v39 = v22[1];
      v58 = v40;
      v59 = v39;
      SharedSecret.advertisementIdentifer.getter(v6);
      sub_247D887C8(v57);
      sub_247D6A1F8(v40, v39);
      return (*(v54 + 8))(v6, v55);
    }

    else
    {
      sub_247D6A1F8(v22[1], v22[2]);
      sub_247D6A1F8(v22[3], v22[4]);
      v41 = v22[5];
      swift_unknownObjectRelease();
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73580, &qword_247DD4348);
      v43 = v54;
      v44 = v22 + *(v42 + 96);
      v45 = v55;
      (*(v54 + 32))(v6, v44, v55);
      sub_247D887C8(v57);
      return (*(v43 + 8))(v6, v45);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73AA0, &qword_247DD5630);
      v32 = (v22 + *(v31 + 48));

      v22 = v32;
    }

    v33 = v56;
    sub_247D89BE0(v22, v29);
    sub_247DD255C();
    result = (*(v15 + 48))(v13, 1, v14);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v35 = *(v15 + 32);
      v35(v18, v13, v14);
      sub_247D89BE0(v29, v27);
      v37 = v52;
      v36 = v53;
      v38 = *(v52 + 48);
      if (v38(v27, 1, v53) == 1)
      {
        sub_247DD247C();
        if (v38(v27, 1, v36) != 1)
        {
          sub_247D6BAD4(v27, &unk_27EE73C00, &qword_247DD55F8);
        }
      }

      else
      {
        (*(v37 + 32))(v33, v27, v36);
      }

      v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73AE0, &qword_247DD5658) + 48);
      v47 = v57;
      v35(v57, v18, v14);
      v48 = *MEMORY[0x277CD8AD8];
      v49 = sub_247DD245C();
      (*(*(v49 - 8) + 104))(v47, v48, v49);
      (*(v37 + 32))(v47 + v46, v33, v36);
      v50 = *MEMORY[0x277CD8B08];
      v51 = sub_247DD249C();
      return (*(*(v51 - 8) + 104))(v47, v50, v51);
    }
  }

  return result;
}

uint64_t sub_247D879F4()
{
  v1 = sub_247DD256C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NetworkDescriptor();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D86A04(v0, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v21 = *v9;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73AA0, &qword_247DD5630);
      v23 = v22;
      v24 = *&v9[*(v22 + 64)];
      if (v24)
      {
        KeyPair = *&v9[*(v22 + 64)];
      }

      else
      {
        KeyPair = createKeyPair(*MEMORY[0x277CDC040], 256);
        v24 = 0;
      }

      v68 = *(v23 + 48);
      v67 = v24;
      v52 = secIdentityFromKeyPair(KeyPair);
      v53 = publicKeyFromIdentity(v52);
      v54 = sub_247DD217C();
      v56 = v55;

      v57 = swift_allocObject();
      *(v57 + 16) = v52;
      *(v57 + 24) = v21;
      *(v57 + 32) = v54;
      *(v57 + 40) = v56;
      *(v57 + 48) = v54;
      *(v57 + 56) = v56;
      *(v57 + 64) = 1;
      v73 = sub_247D8A494;
      v74 = v57;
      aBlock = MEMORY[0x277D85DD0];
      v70 = 1107296256;
      v71 = sub_247D88768;
      v72 = &block_descriptor_8;
      v58 = _Block_copy(&aBlock);
      sub_247D6A2E8(v54, v56);
      sub_247D6A2E8(v54, v56);
      swift_unknownObjectRetain();

      nw_parameters_create_quic(v58);
      _Block_release(v58);
      nw_parameters_set_attach_protocol_listener();
      sub_247DD276C();
      swift_unknownObjectRetain();
      v16 = sub_247DD277C();
      sub_247DD270C();
      options = nw_http3_create_options();
      v60 = sub_247DD274C();
      v61 = nw_parameters_copy_default_protocol_stack(v60);
      swift_unknownObjectRelease();
      nw_protocol_stack_prepend_application_protocol(v61, options);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      sub_247D6A1F8(v54, v56);
      swift_unknownObjectRelease();
      v17 = &v9[v68];
    }

    else
    {
      v11 = sub_247DD2EAC();
      *(v11 + 16) = 8;
      *(v11 + 32) = 0;
      v12 = (v11 + 32);
      SecRandomCopyBytes(*MEMORY[0x277CDC540], 8uLL, (v11 + 32));
      v13 = sub_247D99734(v12, 8);
      v15 = v14;

      aBlock = v13;
      v70 = v15;
      v16 = sub_247D88300(0, &aBlock, 0);
      sub_247D6A1F8(aBlock, v70);
      v17 = v9;
    }

    sub_247D6BAD4(v17, &unk_27EE73C00, &qword_247DD55F8);
    return v16;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v19 = *(v9 + 1);
    v20 = v9[16];
    aBlock = *v9;
    v18 = aBlock;
    v70 = v19;
    v16 = sub_247D88300(v20, &aBlock, 1);
    sub_247D6A1F8(v18, v19);
    return v16;
  }

  v26 = *v9;
  v65 = v2;
  v28 = *(v9 + 1);
  v68 = *(v9 + 2);
  v27 = v68;
  v30 = *(v9 + 3);
  v29 = *(v9 + 4);
  v31 = *(v9 + 5);
  v64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73580, &qword_247DD4348);
  v32 = v9[*(v64[0] + 112)];
  v66 = v32;
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = v26;
  *(v33 + 32) = v28;
  *(v33 + 40) = v27;
  *(v33 + 48) = v30;
  *(v33 + 56) = v29;
  *(v33 + 64) = v32;
  v73 = sub_247D89C54;
  v74 = v33;
  aBlock = MEMORY[0x277D85DD0];
  v70 = 1107296256;
  v71 = sub_247D88768;
  v72 = &block_descriptor_2;
  v34 = _Block_copy(&aBlock);
  v64[1] = v31;
  swift_unknownObjectRetain();
  v67 = v28;
  v35 = v28;
  v36 = v68;
  v37 = v30;
  sub_247D6A2E8(v35, v68);
  sub_247D6A2E8(v30, v29);

  nw_parameters_create_quic(v34);
  _Block_release(v34);
  nw_parameters_set_attach_protocol_listener();
  sub_247DD276C();
  swift_unknownObjectRetain();
  v16 = sub_247DD277C();
  sub_247DD270C();
  (*(v65 + 104))(v5, *MEMORY[0x277CD8CE8], v1);
  sub_247DD273C();
  if (v66 == 1)
  {
    v38 = nw_http3_create_options();
    v39 = sub_247DD274C();
    v40 = nw_parameters_copy_default_protocol_stack(v39);
    swift_unknownObjectRelease();
    nw_protocol_stack_prepend_application_protocol(v40, v38);
    sub_247D6A1F8(v30, v29);
    sub_247D6A1F8(v67, v36);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_14:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v50 = *(v64[0] + 96);
    v51 = sub_247DD225C();
    (*(*(v51 - 8) + 8))(&v9[v50], v51);
    return v16;
  }

  v41 = v29;
  v42 = v37;
  v43 = v67;
  if (qword_27EE732A8 != -1)
  {
    swift_once();
  }

  v44 = sub_247DD28EC();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();

  v47 = sub_247DD28DC();
  sub_247DD272C();

  v49 = sub_247DD271C();
  if (!(*v48 >> 62))
  {
    goto LABEL_13;
  }

  if (*v48 < 0)
  {
    v63 = *v48;
  }

  result = sub_247DD30BC();
  if ((result & 0x8000000000000000) == 0)
  {
LABEL_13:
    sub_247DA4D8C(0, 0, v47);

    v49(&aBlock, 0);
    sub_247D6A1F8(v42, v41);
    sub_247D6A1F8(v43, v68);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_247D88148()
{
  v1 = v0;
  v2 = type metadata accessor for NetworkDescriptor();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_247D86A04(v1, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v8 = *(v5 + 16);
      sub_247D6A1F8(*v5, v5[1]);
      if (v8)
      {
        return 5459028;
      }

      else
      {
        return 5260116;
      }
    }

    else
    {
      v7 = 1128879441;
      sub_247D6A1F8(v5[1], v5[2]);
      sub_247D6A1F8(v5[3], v5[4]);
      v11 = v5[5];
      swift_unknownObjectRelease();
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73580, &qword_247DD4348) + 96);
      v13 = sub_247DD225C();
      (*(*(v13 - 8) + 8))(v5 + v12, v13);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v7 = 1128879441;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73AA0, &qword_247DD5630);
    v10 = *(v9 + 48);

    sub_247D6BAD4(v5 + v10, &unk_27EE73C00, &qword_247DD55F8);
  }

  else
  {
    v7 = 5260116;
    sub_247D6BAD4(v5, &unk_27EE73C00, &qword_247DD55F8);
  }

  return v7;
}

uint64_t sub_247D88300(char a1, uint64_t *a2, char a3)
{
  v6 = sub_247DD256C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = a2[1];
  v13 = sub_247DD27BC();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_247DD27AC();
  sub_247DD279C();
  sub_247DD278C();
  v17 = 0;
  if (a1)
  {
    v27[0] = v11;
    v27[1] = v12;
    v17 = sub_247D89C70(v27);
  }

  sub_247DD276C();

  v18 = MEMORY[0x24C1B9A50](v17, v16);
  sub_247DD270C();
  if (a3)
  {
    (*(v7 + 104))(v10, *MEMORY[0x277CD8CE8], v6);
    sub_247DD273C();
  }

  if (qword_27EE732A8 != -1)
  {
    swift_once();
  }

  v19 = sub_247DD28EC();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();

  v22 = sub_247DD28DC();
  sub_247DD272C();

  v24 = sub_247DD271C();
  if (!(*v23 >> 62))
  {
    goto LABEL_8;
  }

  if (*v23 < 0)
  {
    v26 = *v23;
  }

  result = sub_247DD30BC();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
LABEL_8:
    sub_247DA4D8C(0, 0, v22);

    v24(v27, 0);

    return v18;
  }

  return result;
}

uint64_t sub_247D88588(NSObject *a1, NSObject *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, char a8)
{
  v15 = nw_quic_copy_sec_protocol_options(a1);
  sec_protocol_options_set_local_identity(v15, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73AD0, &qword_247DD5648);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_247DD54D0;
  if (a3)
  {
    *(v16 + 32) = a4;
    *(v16 + 40) = a5;
    sub_247D6A2E8(a4, a5);
    v17 = sub_247DD2E8C();

    sec_protocol_options_set_client_raw_public_key_certificates();

    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_247DD54D0;
    *(v18 + 32) = a6;
    *(v18 + 40) = a7;
    v19 = a6;
    v20 = a7;
  }

  else
  {
    *(v16 + 32) = a6;
    *(v16 + 40) = a7;
    sub_247D6A2E8(a6, a7);
    v21 = sub_247DD2E8C();

    sec_protocol_options_set_client_raw_public_key_certificates();

    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_247DD54D0;
    *(v22 + 32) = a4;
    *(v22 + 40) = a5;
    v19 = a4;
    v20 = a5;
  }

  sub_247D6A2E8(v19, v20);
  v23 = sub_247DD2E8C();

  sec_protocol_options_set_server_raw_public_key_certificates();

  sec_protocol_options_set_peer_authentication_required(v15, 1);
  if (a8)
  {
    sec_protocol_options_clear_tls_application_protocols();
    sec_protocol_options_add_tls_application_protocol(v15, "h3");
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_247D88768(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_247D887C8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73AA8, &qword_247DD5638);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  sub_247DD220C();
  v6 = sub_247DD2D1C();

  v7 = sub_247DD2D1C();
  v8 = sub_247DD2D1C();
  nw_endpoint_create_bonjour_service((v6 + 32), (v7 + 32), (v8 + 32));

  swift_unknownObjectRetain();
  sub_247DD24AC();
  v9 = sub_247DD249C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    sub_247D6BAD4(v5, &unk_27EE73AA8, &qword_247DD5638);
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v12 = sub_247DD23CC();
    __swift_project_value_buffer(v12, qword_27EE7B878);
    v13 = sub_247DD23AC();
    v14 = sub_247DD2F1C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_247D56000, v13, v14, "[Endpoint] Could not create NWEndpoint from nw_endpoint_t", v15, 2u);
      MEMORY[0x24C1BAF60](v15, -1, -1);
    }

    result = sub_247DD30AC();
    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return (*(v10 + 32))(a1, v5, v9);
  }

  return result;
}

uint64_t sub_247D88A6C()
{
  v1 = v0;
  v2 = sub_247DD225C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NetworkDescriptor();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D86A04(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v14 = *(v10 + 1);
      v21[0] = *v10;
      v13 = v21[0];
      v21[1] = v14;
      SharedSecret.advertisementIdentifer.getter(v6);
      v15 = sub_247DD220C();
      sub_247D6A1F8(v13, v14);
    }

    else
    {
      sub_247D6A1F8(*(v10 + 1), *(v10 + 2));
      sub_247D6A1F8(*(v10 + 3), *(v10 + 4));
      v19 = *(v10 + 5);
      swift_unknownObjectRelease();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73580, &qword_247DD4348);
      (*(v3 + 32))(v6, &v10[*(v20 + 96)], v2);
      v15 = sub_247DD220C();
    }

    (*(v3 + 8))(v6, v2);
    return v15;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73AA0, &qword_247DD5630);
      v17 = *(v16 + 48);

      v12 = &v10[v17];
    }

    else
    {
      v12 = v10;
    }

    sub_247D6BAD4(v12, &unk_27EE73C00, &qword_247DD55F8);
    return 0;
  }
}

uint64_t sub_247D88CCC()
{
  v1 = type metadata accessor for NetworkDescriptor();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D86A04(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_247D8690C(v4);
      return 0x63746F6D736F635FLL;
    }

    else
    {
      sub_247D6A1F8(*(v4 + 1), *(v4 + 2));
      sub_247D6A1F8(*(v4 + 3), *(v4 + 4));
      v10 = *(v4 + 5);
      swift_unknownObjectRelease();
      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73580, &qword_247DD4348) + 96);
      v12 = sub_247DD225C();
      (*(*(v12 - 8) + 8))(&v4[v11], v12);
      return 0x75716F6D736F635FLL;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73AA0, &qword_247DD5630);
      v9 = *(v8 + 48);

      v6 = &v4[v9];
    }

    else
    {
      v6 = v4;
    }

    sub_247D6BAD4(v6, &unk_27EE73C00, &qword_247DD55F8);
    return 0;
  }
}

uint64_t sub_247D88E80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NetworkDescriptor();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D86A04(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_247D8690C(v7);
      strcpy(a1, "_cosmotcp._tcp");
      *(a1 + 15) = -18;
      *(a1 + 16) = xmmword_247DD55A0;
      v11 = *MEMORY[0x277CD90D8];
      v12 = sub_247DD295C();
      v13 = *(v12 - 8);
      (*(v13 + 104))(a1, v11, v12);
      return (*(v13 + 56))(a1, 0, 1, v12);
    }

    else
    {
      sub_247D6A1F8(*(v7 + 1), *(v7 + 2));
      sub_247D6A1F8(*(v7 + 3), *(v7 + 4));
      v17 = *(v7 + 5);
      swift_unknownObjectRelease();
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73580, &qword_247DD4348) + 96);
      *a1 = 0x75716F6D736F635FLL;
      *(a1 + 8) = 0xEF7064755F2E6369;
      *(a1 + 16) = xmmword_247DD55A0;
      v19 = *MEMORY[0x277CD90D8];
      v20 = sub_247DD295C();
      v21 = *(v20 - 8);
      (*(v21 + 104))(a1, v19, v20);
      (*(v21 + 56))(a1, 0, 1, v20);
      v22 = sub_247DD225C();
      return (*(*(v22 - 8) + 8))(&v7[v18], v22);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73AA0, &qword_247DD5630);
    v15 = *(v14 + 48);

    v16 = sub_247DD295C();
    (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
    return sub_247D6BAD4(&v7[v15], &unk_27EE73C00, &qword_247DD55F8);
  }

  else
  {
    v9 = sub_247DD295C();
    (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
    return sub_247D6BAD4(v7, &unk_27EE73C00, &qword_247DD55F8);
  }
}
uint64_t sub_1DD6DDD98(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SessionClient.__allocating_init(configuration:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  type metadata accessor for SessionClient.ReverseServer();
  sub_1DD6E2848();
  v5 = swift_allocObject();
  sub_1DD6DE128();
  v12 = v3;
  v13 = v4;
  v6 = *(v1 + 168);

  v8 = v6(v7, &v12);
  v9 = v8;
  if (v2)
  {
  }

  else
  {
    v10 = *(v8 + 56);
    *(v9 + 56) = v5;
    swift_unknownObjectRelease();
  }

  return v9;
}

uint64_t sub_1DD6DDF08()
{

  return swift_slowAlloc();
}

uint64_t sub_1DD6DDF20()
{
  v3 = *(v1 - 120);

  return sub_1DD6E5E68(v0, 0, 1, v3);
}

uint64_t sub_1DD6DDF40()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void *sub_1DD6DDF58()
{
  v2 = v0[66];

  return memcpy(v0 + 44, v0 + 11, 0x58uLL);
}

uint64_t sub_1DD6DDF78()
{

  return sub_1DD8748F0();
}

uint64_t sub_1DD6DDFD0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_1DD6DE00C()
{

  return sub_1DD785BBC(v0, type metadata accessor for SearchOverrides_OverrideBehavior);
}

void sub_1DD6DE034()
{
  v0[v1[9]] = 2;
  *&v0[v1[10]] = 512;
  *&v0[v1[11]] = 0;
  v3 = &v0[v1[12]];
  *v3 = 0;
  *(v3 + 1) = 0;
  *(v3 + 4) = 0;
  *&v0[v1[13]] = 4;
  v0[v1[14]] = 2;
  v4 = &v0[v1[15]];
  *v4 = 0;
  v4[1] = 0;
  *v0 = v2;
}

uint64_t sub_1DD6DE0F4()
{

  return sub_1DD875110();
}

__n128 sub_1DD6DE114()
{
  result = *(v0 + 16);
  v3 = *(v0 + 32);
  *(v1 - 128) = result;
  *(v1 - 112) = v3;
  *(v1 - 96) = *(v0 + 48);
  return result;
}

uint64_t sub_1DD6DE128()
{
  v1 = sub_1DD8745E0();
  sub_1DD6DE2C8(v1);
  swift_allocObject();
  *(v0 + 16) = sub_1DD8745D0();
  sub_1DD710A9C(&qword_1ECD16778, &unk_1DD8B1700);
  v2 = swift_allocObject();
  *(v2 + 48) = 0;
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v0 + 24) = v2;
  return v0;
}

uint64_t sub_1DD6DE22C()
{

  return swift_slowAlloc();
}

uint64_t sub_1DD6DE250()
{
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  v8 = v0[12];
  v9 = v0[10];
}

void *sub_1DD6DE2A8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst)
{
  v12 = *(v10 + 528);

  return memcpy(&__dst, (v10 + 88), 0x58uLL);
}

uint64_t sub_1DD6DE2C8(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

uint64_t sub_1DD6DE31C()
{
  *(v3 - 296) = v0;
  v4 = *(v1 + 8);
  return v2;
}

void sub_1DD6DE3B8()
{
  v2 = v0[2];
  *(v1 - 112) = v0[3];
  *(v1 - 104) = v2;
  v3 = v0[4];
  *(v1 - 128) = v0[5];
  *(v1 - 120) = v3;
}

uint64_t sub_1DD6DE3CC()
{
  v2 = *(v0[9] + 24);
  v0[6] = v0[8];

  return MEMORY[0x1EEE12310](0);
}

uint64_t sub_1DD6DE3F0(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t SessionClient.__allocating_init(localObject:configuration:)()
{
  sub_1DD6FABA4();
  sub_1DD6E6B30();
  swift_allocObject();
  sub_1DD6DEB18();
  SessionClient.init(localObject:configuration:)();
  return v0;
}

void sub_1DD6DE474()
{

  JUMPOUT(0x1E12B5DE0);
}

void sub_1DD6DE4D0()
{

  JUMPOUT(0x1E12B4C10);
}

uint64_t sub_1DD6DE4EC(uint64_t result)
{
  *v1 = result;
  *(result + 528) = v2;
  return result;
}

uint64_t sub_1DD6DE550@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_1DD75EF08(v3, v4 + a3, a1, a2);
}

uint64_t sub_1DD6DE59C()
{

  return sub_1DD785BBC(v0, type metadata accessor for OverridesCommon_OverrideDialog);
}

uint64_t sub_1DD6DE5DC()
{

  return sub_1DD875860();
}

uint64_t sub_1DD6DE618@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 320);
  v5 = *(v1 - 328);

  return sub_1DD875910();
}

void *sub_1DD6DE64C()
{
  v2 = *v0;
  v3 = v1[4];
  return sub_1DD6DF224(v1, v1[3]);
}

void SessionClient.init(localObject:configuration:)()
{
  sub_1DD6DED2C();
  v2 = v0;
  v4 = v3;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = sub_1DD874610();
  *(v0 + 16) = 0u;
  v9 = v0 + 16;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  sub_1DD6DE2C8(v8);
  swift_allocObject();
  *(v0 + 64) = sub_1DD874600();
  v10 = sub_1DD8745E0();
  sub_1DD6DE2C8(v10);
  swift_allocObject();
  v11 = sub_1DD8745D0();
  *(v0 + 56) = v4;
  *(v0 + 72) = v11;
  *(v0 + 80) = v6;
  *(v0 + 88) = v7;
  sub_1DD6DEC94(qword_1EE0159F0, v12, type metadata accessor for SessionClient);
  v13 = sub_1DD710A9C(&qword_1ECD16700, &qword_1DD8B10A0);
  sub_1DD6DE2C8(v13);
  swift_allocObject();
  swift_unknownObjectRetain_n();

  v14 = sub_1DD874DA0();
  if (v1)
  {

    swift_unknownObjectRelease();

LABEL_10:
    sub_1DD6E0C78();
    return;
  }

  v15 = v14;
  *(&v23 + 1) = v13;
  v24 = sub_1DD6DF59C(&unk_1EE013A80, &qword_1ECD16700, &qword_1DD8B10A0);
  *&v22 = v15;
  swift_beginAccess();
  if (*(v2 + 40))
  {
    sub_1DD6E1EC8(v9);
  }

  sub_1DD6DF5E4(&v22, v9);
  swift_endAccess();
  v16 = *(v2 + 64);
  *&v22 = v6;
  BYTE8(v22) = v7;
  sub_1DD6DF5FC();
  sub_1DD8745F0();
  if (*(v2 + 40))
  {
    sub_1DD6E0F0C(v9, &v22);
  }

  else
  {
    v17 = *(v9 + 16);
    v22 = *v9;
    v23 = v17;
    v24 = *(v9 + 32);
  }

  if (*(&v23 + 1))
  {

    v18 = sub_1DD6DEA7C(&v22, *(&v23 + 1));
    MEMORY[0x1EEE9AC00](v18);
    sub_1DD6E0EC8();
    sub_1DD874D80();
    v19 = sub_1DD6DFF24();
    sub_1DD6E6658(v19, v20);
    swift_unknownObjectRelease();

    sub_1DD6E1EC8(&v22);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1DD6DEB50()
{

  return swift_task_alloc();
}

uint64_t sub_1DD6DEB68()
{

  return swift_beginAccess();
}

uint64_t sub_1DD6DEBC8()
{

  return sub_1DD875800();
}

uint64_t sub_1DD6DEBFC()
{
  v2 = *(v0 - 136);
  v3 = *(v0 - 128);
  v4 = *(v0 - 120);

  return sub_1DD8758D0();
}

uint64_t sub_1DD6DEC30()
{

  return sub_1DD8759D0();
}

uint64_t sub_1DD6DEC94(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1DD6DED44(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0x58uLL);
}

uint64_t sub_1DD6DED78()
{

  return sub_1DD875800();
}

uint64_t sub_1DD6DEDA4()
{

  return sub_1DD875B20();
}

uint64_t sub_1DD6DEDE0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t sub_1DD6DEE4C()
{
  v0 = sub_1DD874B40();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69A90B0], v0);
  sub_1DD874B30();
  return (*(v1 + 8))(v4, v0);
}

id sub_1DD6DEF68(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

uint64_t sub_1DD6DEFDC(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

id static SessionXPCServerService.customize(serverInterface:)()
{
  sub_1DD874EE0();
  v0 = sub_1DD6DF1B8();
  [v0 v1];
  sub_1DD874EE0();
  v2 = sub_1DD6DF1B8();

  return [v2 v3];
}

uint64_t sub_1DD6DF100()
{

  return sub_1DD875730();
}

uint64_t sub_1DD6DF12C()
{

  return sub_1DD875730();
}

uint64_t sub_1DD6DF19C()
{

  return sub_1DD8758D0();
}

void *sub_1DD6DF224(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t **sub_1DD6DF2E8(uint64_t **result)
{
  v2 = **result;
  v1 = (*result)[1];
  v3 = *(*result + 8);
  v5 = (*result)[2];
  v4 = (*result)[3];
  return result;
}

uint64_t sub_1DD6DF2FC()
{

  return swift_once();
}

uint64_t sub_1DD6DF374()
{

  return sub_1DD73C43C();
}

uint64_t sub_1DD6DF3FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t sub_1DD6DF48C()
{

  return sub_1DD8758D0();
}

uint64_t sub_1DD6DF508()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1DD6DF59C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DD717E88(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD6DF5E4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_1DD6DF5FC()
{
  result = qword_1EE015198[0];
  if (!qword_1EE015198[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE015198);
  }

  return result;
}

uint64_t SessionClientConfiguration.encode(to:)(void *a1)
{
  v4 = sub_1DD710A9C(&qword_1ECD10810, &qword_1DD886DA0);
  v5 = sub_1DD6DDEAC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v15 - v10;
  v12 = *v1;
  v15[2] = *(v1 + 8);
  v13 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD6DF84C();

  sub_1DD875BB0();
  v18 = v12;
  v17 = 0;
  sub_1DD710A9C(&qword_1ECD10818, &qword_1DD886DA8);
  sub_1DD6DF8A0(&qword_1EE013A18, &qword_1EE015AD0);
  sub_1DD8759D0();

  if (!v2)
  {
    v16 = 1;
    sub_1DD875980();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_1DD6DF84C()
{
  result = qword_1EE016DD0[0];
  if (!qword_1EE016DD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE016DD0);
  }

  return result;
}

uint64_t sub_1DD6DF8A0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DD717E88(&qword_1ECD10818, &qword_1DD886DA8);
    sub_1DD6E87D8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD6DF928(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    v4 = v3;
    sub_1DD717E88(&qword_1ECD10818, &qword_1DD886DA8);
    sub_1DD6E881C(v4);
    sub_1DD6E5CB8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionClientConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1DD6DFA84);
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

uint64_t getEnumTagSinglePayload for ClientIdentityPack.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void ClientAction.Definition.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v0;
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD163E0, &qword_1DD8AF000);
  sub_1DD6DDEAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v13 = v4[4];
  sub_1DD6DF224(v4, v4[3]);
  sub_1DD6DFE7C();
  sub_1DD875BB0();
  v14 = *v2;
  v15 = v2[1];
  sub_1DD6DE334();
  sub_1DD875970();
  if (!v1)
  {
    v16 = v2[2];
    v17 = v2[3];
    sub_1DD6DE334();
    sub_1DD875970();
    v25 = v2[4];
    v24 = 2;
    sub_1DD710A9C(&qword_1ECD163E8, &qword_1DD8AF008);
    sub_1DD6E00FC(&unk_1EE013A28);
    sub_1DD6DEA94();
    sub_1DD6DE334();
    sub_1DD8759D0();
    v18 = type metadata accessor for ClientAction.Definition(0);
    v19 = v18[7];
    sub_1DD874FC0();
    sub_1DD6E1518();
    sub_1DD6E1588(v20);
    sub_1DD6DE334();
    sub_1DD8759D0();
    v21 = *(v2 + v18[8]);
    sub_1DD6DE334();
    sub_1DD875980();
    v26 = *(v2 + v18[9]);
    v24 = 5;
    sub_1DD710A9C(&qword_1ECD163F0, &qword_1DD8AF010);
    sub_1DD6E1748(&unk_1EE013A38);
    sub_1DD6DEA94();
    sub_1DD6DE334();
    sub_1DD8759D0();
    v27 = *(v2 + v18[10]);
    v24 = 6;
    sub_1DD6DEA94();
    sub_1DD6DE334();
    sub_1DD8759D0();
    v22 = *(v2 + v18[11]);
    sub_1DD6DE334();
    sub_1DD875980();
  }

  (*(v7 + 8))(v12, v5);
  sub_1DD6E0C78();
}

unint64_t sub_1DD6DFE7C()
{
  result = qword_1EE018BB8[0];
  if (!qword_1EE018BB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE018BB8);
  }

  return result;
}

void *sub_1DD6DFEE8()
{

  return memcpy((v0 + 160), (v0 + 80), 0x50uLL);
}

uint64_t sub_1DD6DFF80()
{
  *(v0 - 65) = 0;
  v2 = *(v0 - 96);

  return sub_1DD875970();
}

unint64_t sub_1DD6DFFDC(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x7470697263736564;
      break;
    case 2:
      result = 0x6574656D61726170;
      break;
    case 3:
      result = 0x795474757074756FLL;
      break;
    case 4:
      result = 0x62616F646E557369;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0x5358697269537369;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DD6E00FC(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    v4 = v3;
    sub_1DD717E88(&qword_1ECD163E8, &qword_1DD8AF008);
    sub_1DD6E1588(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClientAction.Definition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x1DD6E0280);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t ClientAction.Definition.ParameterDefinition.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = sub_1DD710A9C(&qword_1ECD163B0, &qword_1DD8AEFD8);
  sub_1DD6DDEAC(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DE340();
  v12 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD6E11C0();
  sub_1DD875BB0();
  v13 = *v4;
  v14 = v4[1];
  sub_1DD875970();
  if (!v2)
  {
    v15 = v4[2];
    v16 = v4[3];
    sub_1DD875970();
    v17 = *(type metadata accessor for ClientAction.Definition.ParameterDefinition(0) + 24);
    sub_1DD874FC0();
    sub_1DD6E1518();
    sub_1DD6E1588(v18);
    sub_1DD8759D0();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_1DD6E0494@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2;
  *(result + 40) = 0xEB00000000656761;
  return result;
}

uint64_t sub_1DD6E0514()
{
  v4 = v0[7];
  v0[10] = v0[6];
  v0[11] = v4;
  v5 = v0[5];
  v0[8] = v0[4];
  v0[9] = v5;

  return sub_1DD6EE7DC((v0 + 8), v1, v2);
}

uint64_t sub_1DD6E0600()
{

  return sub_1DD8759D0();
}

uint64_t sub_1DD6E0628(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{

  return sub_1DD7018D0(v4, v3, a3);
}

uint64_t sub_1DD6E0640()
{

  return sub_1DD6E2098(v0, type metadata accessor for ClientAction);
}

uint64_t getEnumTagSinglePayload for IntelligenceEngineAsset(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1DD6E073C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DD6E074C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DD6E076C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DD6E077C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DD6E078C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DD6E079C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DD6E07AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_1DD6E07FC()
{
  v1 = *(v0 + 80);
  *(v0 + 256) = *(v0 + 64);
  *(v0 + 272) = v1;
  result = *(v0 + 96);
  v3 = *(v0 + 112);
  *(v0 + 288) = result;
  *(v0 + 304) = v3;
  return result;
}

uint64_t sub_1DD6E0868()
{

  return sub_1DD755E70();
}

uint64_t sub_1DD6E0918()
{

  return sub_1DD875BB0();
}

uint64_t sub_1DD6E0954()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1DD6E098C()
{

  return swift_beginAccess();
}

__n128 sub_1DD6E0A28()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 80);
  result = *(v0 + 96);
  v4 = *(v0 + 112);
  return result;
}

uint64_t sub_1DD6E0B5C()
{

  return sub_1DD875B90();
}

uint64_t sub_1DD6E0B90()
{
  *(v4 - 112) = v1;
  *(v4 - 104) = v0;
  *(v4 - 96) = v2;
  *(v4 - 88) = v3;
  return 0;
}

uint64_t sub_1DD6E0BB4()
{

  return sub_1DD8745F0();
}

uint64_t type metadata accessor for SessionClientID()
{
  result = qword_1EE015628;
  if (!qword_1EE015628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 *sub_1DD6E0C9C(__n128 *result, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  result[4] = a5;
  result[5] = a4;
  result[6] = a3;
  result[7] = a2;
  return result;
}

uint64_t sub_1DD6E0D34(uint64_t a1)
{

  return sub_1DD722F80(a1, type metadata accessor for SessionServerDebuggerEvent.Payload);
}

uint64_t sub_1DD6E0D74()
{

  return sub_1DD874AA0();
}

uint64_t sub_1DD6E0D94(uint64_t a1)
{
  v2 = *(a1 + 56);

  return sub_1DD7533B8();
}

uint64_t sub_1DD6E0E50()
{

  return sub_1DD6E2098(v0, type metadata accessor for MessagePayload.ClientEffectResolved.Result);
}

uint64_t sub_1DD6E0E78()
{
  result = *(v0 + 56);
  v2 = *(v0 + 8);
  return result;
}

id sub_1DD6E0E8C(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1DD6E0EA8()
{

  return sub_1DD875BB0();
}

unint64_t sub_1DD6E0EC8()
{
  result = qword_1EE018CD8;
  if (!qword_1EE018CD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE018CD8);
  }

  return result;
}

uint64_t sub_1DD6E0F0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1DD6E0F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(v9, &a9, 0x50uLL);
}

uint64_t sub_1DD6E0FC0()
{

  return swift_once();
}

void sub_1DD6E1018()
{
  v1 = *(v0 - 184);
  *(v0 - 144) = *(v0 - 192);
  *(v0 - 136) = v1;
  v2 = *(v0 - 208);
  *(v0 - 128) = *(v0 - 176);
  *(v0 - 120) = v2;
}

uint64_t sub_1DD6E1030()
{

  return sub_1DD875B90();
}

uint64_t sub_1DD6E1054(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0x7470697263736564;
  }

  return 0x70795465756C6176;
}

void *sub_1DD6E10DC(void *a1)
{

  return memcpy(a1, (v1 + 352), 0x58uLL);
}

uint64_t sub_1DD6E113C()
{
  *(v1 - 120) = v0;
  v3 = *(v1 - 112);

  return sub_1DD875B90();
}

uint64_t sub_1DD6E1164()
{

  return sub_1DD8750C0();
}

uint64_t sub_1DD6E1198()
{

  return sub_1DD833690();
}

unint64_t sub_1DD6E11C0()
{
  result = qword_1EE018C68;
  if (!qword_1EE018C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018C68);
  }

  return result;
}

uint64_t sub_1DD6E1224(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1DD6E12F0()
{

  return sub_1DD6E5A64(v0, type metadata accessor for SessionServerMessage);
}

uint64_t sub_1DD6E1530()
{

  return swift_once();
}

unint64_t sub_1DD6E1588(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClientAction.Definition.ParameterDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1DD6E1698);
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

uint64_t getEnumTagSinglePayload for SiriXResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_1DD6E1748(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    v4 = v3;
    sub_1DD717E88(&qword_1ECD163F0, &qword_1DD8AF010);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

__n128 *sub_1DD6E17BC(__n128 *result, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  result[2] = a4;
  result[3] = a5;
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t sub_1DD6E1808()
{

  return sub_1DD875BB0();
}

uint64_t sub_1DD6E1828@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 256);
  v5 = *(v1 - 264);

  return sub_1DD875910();
}

void sub_1DD6E18A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, SEL *a9)
{
  sub_1DD6E2848();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  v15 = sub_1DD874750();
  v18[4] = a7;
  v18[5] = v14;
  sub_1DD6ED704();
  sub_1DD6E0BD4();
  v18[2] = v16;
  v18[3] = a8;
  v17 = _Block_copy(v18);

  [a1 *a9];
  _Block_release(v17);
}

uint64_t sub_1DD6E198C(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x6341746E65696C63;
  }
}

uint64_t SessionReverseClient.__allocating_init(existingConnection:localObject:)()
{
  sub_1DD6FABA4();
  sub_1DD6E2848();
  swift_allocObject();
  sub_1DD6DEB18();
  SessionReverseClient.init(existingConnection:localObject:)();
  return v0;
}

uint64_t sub_1DD6E1A70@<X0>(uint64_t *a1@<X8>)
{
  result = SessionReverseClient.__allocating_init(existingConnection:localObject:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void *QueryDecoration.init()()
{
  type metadata accessor for QueryDecorationClient();
  swift_allocObject();
  v0[2] = sub_1DD6E4348();
  type metadata accessor for ContextClient();
  swift_allocObject();
  v0[3] = sub_1DD6E6B78();
  v1 = sub_1DD874610();
  sub_1DD6DE2C8(v1);
  swift_allocObject();
  v0[4] = sub_1DD874600();
  v2 = sub_1DD8745E0();
  sub_1DD6DE2C8(v2);
  swift_allocObject();
  v0[5] = sub_1DD8745D0();
  return v0;
}

void sub_1DD6E1B38(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1DD6E1BD0()
{

  return sub_1DD730620(v0 + 288, v0 + 360, v1, v2);
}

void *sub_1DD6E1C3C()
{

  return memcpy((v0 + 744), (v1 - 192), 0x68uLL);
}

uint64_t sub_1DD6E1C9C()
{
  v2 = *(v0 - 160);

  return sub_1DD875910();
}

uint64_t sub_1DD6E1CE0()
{
  sub_1DD875B20();
  sub_1DD874820();
  sub_1DD6E1DAC(&qword_1EE015D90, MEMORY[0x1E69695A8]);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

uint64_t sub_1DD6E1D64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD6E1DAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD6E1DF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD6E1E3C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DD6E1E84(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1DD6E1EC8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1DD6E1FC0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  return result;
}

uint64_t sub_1DD6E2014()
{
}

uint64_t sub_1DD6E2040(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1DD6DF448(v4);
  v6 = *(v5 + 16);
  v7 = sub_1DD6DDEFC();
  v8(v7);
  return a2;
}

uint64_t sub_1DD6E2098(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1DD6DE1C4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD6E2124()
{

  return sub_1DD8750F0();
}

uint64_t sub_1DD6E2158()
{

  return sub_1DD755E70();
}

uint64_t sub_1DD6E21A4()
{
  result = v1 - 192;
  v3 = *(v0 + 32);
  v4 = *(v0 + 24);
  return result;
}

uint64_t sub_1DD6E2250()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1DD6E2270()
{

  return sub_1DD8745C0();
}

uint64_t sub_1DD6E22B0()
{

  return swift_beginAccess();
}

uint64_t sub_1DD6E22D0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
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

uint64_t initializeBufferWithCopyOfBuffer for MessagePayload.RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1DD6E2324(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void ClientAction.Definition.ParameterDefinition.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v28 = v3;
  v29 = sub_1DD874FC0();
  v4 = sub_1DD6DDEAC(v29);
  v27 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DE4A8();
  v10 = v9 - v8;
  v30 = sub_1DD710A9C(&qword_1ECD163C0, &qword_1DD8AEFE0);
  sub_1DD6DDEAC(v30);
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  v14 = type metadata accessor for ClientAction.Definition.ParameterDefinition(0);
  v15 = sub_1DD6DE1C4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DE4A8();
  v20 = (v19 - v18);
  v21 = v2[4];
  sub_1DD6DF224(v2, v2[3]);
  sub_1DD6E11C0();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1EC8(v2);
  }

  else
  {
    *v20 = sub_1DD875870();
    v20[1] = v22;
    v20[2] = sub_1DD875870();
    v20[3] = v23;
    sub_1DD6E1518();
    sub_1DD6E1588(v24);
    sub_1DD8758D0();
    v25 = sub_1DD6E4A18();
    v26(v25);
    (*(v27 + 32))(v20 + *(v14 + 24), v10, v29);
    sub_1DD6E2040(v20, v28, type metadata accessor for ClientAction.Definition.ParameterDefinition);
    sub_1DD6E1EC8(v2);
    sub_1DD6E2098(v20, type metadata accessor for ClientAction.Definition.ParameterDefinition);
  }

  sub_1DD6E0C78();
}

uint64_t sub_1DD6E26C8(uint64_t result)
{
  *v1 = result;
  *(result + 384) = v2;
  return result;
}

uint64_t sub_1DD6E2718()
{

  return sub_1DD7533B8();
}

void sub_1DD6E2730()
{
  v1 = *(v0 - 312);
  v2 = *(v0 - 320);
  v3 = *(v0 - 336);
  v4 = *(v0 - 328);
}

uint64_t sub_1DD6E2778@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 72);
  v5 = *(v1 - 248);

  return sub_1DD875910();
}

uint64_t sub_1DD6E27F8(uint64_t a1)
{

  return MEMORY[0x1EEE6AE10](a1, v1);
}

uint64_t sub_1DD6E2828()
{

  return swift_task_alloc();
}

uint64_t sub_1DD6E2888@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1DD874ED0();
  v6 = sub_1DD6E1224(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t ClientIdentityPack.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  MEMORY[0x1E12B4C10]();
  MEMORY[0x1E12B4C10](124, 0xE100000000000000);
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    a3 = 7104878;
    v6 = 0xE300000000000000;
  }

  MEMORY[0x1E12B4C10](a3, v6);

  MEMORY[0x1E12B4C10](62, 0xE100000000000000);
  return 0x7C4449433CLL;
}

uint64_t SessionReverseClient.init(existingConnection:localObject:)()
{
  v2 = sub_1DD874610();
  sub_1DD6DE2C8(v2);
  swift_allocObject();
  *(v0 + 16) = sub_1DD874600();
  *(v0 + 24) = 0;
  sub_1DD6DEC94(&qword_1EE015430, v3, type metadata accessor for SessionReverseClient);
  v4 = sub_1DD710A9C(&qword_1ECD16718, qword_1DD8B10B8);
  sub_1DD6DE2C8(v4);
  swift_allocObject();

  sub_1DD6DDEDC();
  v5 = sub_1DD874D90();
  if (!v1)
  {
    v6 = *(v0 + 24);
    *(v0 + 24) = v5;
  }

  return v0;
}

uint64_t SessionClientConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1DD710A9C(&qword_1ECD10820, &qword_1DD886DB0);
  v6 = sub_1DD6DDEAC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v17[-v11];
  v13 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD6DF84C();
  sub_1DD875B90();
  if (v2)
  {
    return sub_1DD6E1EC8(a1);
  }

  sub_1DD710A9C(&qword_1ECD10818, &qword_1DD886DA8);
  v17[15] = 0;
  sub_1DD6DF8A0(&qword_1EE013A10, &qword_1EE015AC8);
  sub_1DD8758D0();
  v14 = v18;
  v17[14] = 1;
  v15 = sub_1DD875880();
  (*(v8 + 8))(v12, v5);
  *a2 = v14;
  *(a2 + 8) = v15 & 1;

  sub_1DD6E1EC8(a1);
}

void ClientAction.Definition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DD6DED2C();
  v12 = v11;
  v39 = v13;
  v14 = sub_1DD874FC0();
  v15 = sub_1DD6DDEAC(v14);
  v41 = v16;
  v42 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DE4A8();
  v21 = v20 - v19;
  v40 = sub_1DD710A9C(&qword_1ECD163F8, &unk_1DD8AF018);
  sub_1DD6DDEAC(v40);
  v23 = *(v22 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v24);
  v43 = type metadata accessor for ClientAction.Definition(0);
  v25 = sub_1DD6DE1C4(v43);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD6DE4A8();
  v30 = (v29 - v28);
  v31 = v12[4];
  sub_1DD6DF224(v12, v12[3]);
  sub_1DD6DFE7C();
  sub_1DD875B90();
  if (v10)
  {
    sub_1DD6E1EC8(v12);
  }

  else
  {
    LOBYTE(a10) = 0;
    *v30 = sub_1DD875870();
    v30[1] = v32;
    sub_1DD6E2814(1);
    v30[2] = sub_1DD875870();
    v30[3] = v33;
    sub_1DD710A9C(&qword_1ECD163E8, &qword_1DD8AF008);
    sub_1DD6E00FC(&unk_1EE013A20);
    sub_1DD8758D0();
    v30[4] = a10;
    LOBYTE(a10) = 3;
    sub_1DD6E1518();
    sub_1DD6E1588(v34);
    sub_1DD8758D0();
    (*(v41 + 32))(v30 + v43[7], v21, v42);
    sub_1DD6E2814(4);
    *(v30 + v43[8]) = sub_1DD875880() & 1;
    sub_1DD710A9C(&qword_1ECD163F0, &qword_1DD8AF010);
    sub_1DD6E1748(&unk_1EE013A30);
    sub_1DD6EE2E0();
    *(v30 + v43[9]) = a10;
    sub_1DD6EE2E0();
    *(v30 + v43[10]) = a10;
    sub_1DD6E2814(7);
    v35 = sub_1DD875880();
    v36 = sub_1DD6DE684();
    v37(v36);
    *(v30 + v43[11]) = v35 & 1;
    sub_1DD6E093C();
    sub_1DD6E2040(v30, v39, v38);
    sub_1DD6E1EC8(v12);
    sub_1DD6E2098(v30, type metadata accessor for ClientAction.Definition);
  }

  sub_1DD6E0C78();
}

uint64_t QueryDecoration.__deallocating_deinit()
{
  QueryDecoration.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

void *QueryDecoration.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return v0;
}

uint64_t QueryDecorationClient.__deallocating_deinit()
{
  QueryDecorationClient.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

void *QueryDecorationClient.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t sub_1DD6E33A4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1DD6E3410()
{
  sub_1DD6ED2E8();
  swift_beginAccess();
  if (*(v0 + 40))
  {
    sub_1DD6E0F0C(v0 + 16, &v4);
  }

  else
  {
    sub_1DD6E6D08();
  }

  if (v5)
  {
    v2 = sub_1DD6DEA7C(&v4, v5);
    MEMORY[0x1EEE9AC00](v2);
    sub_1DD6E0EC8();
    sub_1DD7032C4();
    if (!v1)
    {
    }

    sub_1DD6E1EC8(&v4);
    sub_1DD6E1868();
  }

  else
  {
    __break(1u);
  }
}

void sub_1DD6E34FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  sub_1DD6E2848();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  v15 = sub_1DD8747C0();
  v18[4] = a6;
  v18[5] = v14;
  sub_1DD6ED704();
  sub_1DD6E0BD4();
  v18[2] = v16;
  v18[3] = a7;
  v17 = _Block_copy(v18);

  [a1 *a8];
  _Block_release(v17);
}

uint64_t sub_1DD6E3640()
{
  v0 = sub_1DD6E0A5C();
  v2 = v1(v0);
  sub_1DD6DE1C4(v2);
  v4 = *(v3 + 16);
  v5 = sub_1DD6DDEFC();

  return v6(v5);
}

uint64_t sub_1DD6E36C0()
{
  v0 = sub_1DD825000();
  v2 = *(v1(v0) + 24);
  sub_1DD826944();
  return sub_1DD6E5870();
}

uint64_t sub_1DD6E372C()
{
}

uint64_t sub_1DD6E3770()
{
  sub_1DD76D0F4(v1, v0);
  sub_1DD76D0F4(v3, v2);
  return v1;
}

uint64_t sub_1DD6E37B0()
{
  v0 = sub_1DD826B18();
  v2 = v1(v0);
  sub_1DD6E9B14(*(v2 + 20));
  return sub_1DD6DDEFC();
}

uint64_t sub_1DD6E3808(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  return result;
}

uint64_t sub_1DD6E3824()
{

  return sub_1DD7533B8();
}

uint64_t sub_1DD6E3850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1DD6E5E68(a1, 1, 1, a4);
}

void sub_1DD6E3880(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_1DD6E38A4()
{
  v0 = *(type metadata accessor for ClientAction.Definition.ParameterDefinition(0) + 24);

  return sub_1DD874FC0();
}

uint64_t SessionServerMessage.init(sessionId:eventId:queryEventId:clientRequestId:clientSessionId:timestamp:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1DD826528();
  v48 = v20;
  v49 = v21;
  v47 = v22;
  v24 = v23;
  sub_1DD825B54();
  v25 = sub_1DD874820();
  sub_1DD6DE1C4(v25);
  v27 = *(v26 + 32);
  v27(v16, v19, v25);
  v28 = type metadata accessor for SessionServerMessage(0);
  sub_1DD827658(v28);
  v27(v16 + v29, v18, v25);
  v30 = v19[6];
  sub_1DD6E3A64();
  v31 = v19[8];
  sub_1DD6E27BC();
  sub_1DD6E59B8();
  v32 = (v16 + v19[7]);
  *v32 = v17;
  v32[1] = v24;
  v33 = (v16 + v19[9]);
  *v33 = v47;
  v33[1] = v48;
  v34 = v19[10];
  v35 = sub_1DD874790();
  sub_1DD6DF448(v35);
  v37 = *(v36 + 32);
  sub_1DD8264FC();

  return v41(v38, v39, v40, v41, v42, v43, v44, v45, a9, v47, v48, v49, a13, a14, a15, a16);
}

uint64_t sub_1DD6E3A44@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  v5 = v2[2];
  return result;
}

uint64_t sub_1DD6E3A64()
{
  sub_1DD6E1F34();
  v5 = sub_1DD8278A8(v1, v2, v3, v4);
  sub_1DD6DF448(v5);
  v7 = *(v6 + 32);
  v8 = sub_1DD6DDEFC();
  v9(v8);
  return v0;
}

uint64_t sub_1DD6E3AB0()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  return result;
}

uint64_t SessionID.hash(into:)()
{
  sub_1DD874820();
  sub_1DD6E1394();
  sub_1DD6E1DF4(v0, v1);

  return sub_1DD8750C0();
}

uint64_t SessionID.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DD874820();
  v5 = sub_1DD6DE1C4(v4);
  v7 = *(v6 + 32);

  return v7(a2, a1, v5);
}

uint64_t IntelligenceFlowClient.__deallocating_deinit()
{
  SessionClient.deinit();
  v0 = sub_1DD6E6B30();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t *SessionClient.deinit()
{
  _s16IntelligenceFlow13SessionClientC40xpcBidirectionalConnectionWasInvalidatedyyF_0();
  if (v0[5])
  {
    sub_1DD6E1EC8(v0 + 2);
  }

  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[8];

  v3 = v0[9];

  v4 = v0[10];

  return v0;
}

uint64_t _s16IntelligenceFlow13SessionClientC40xpcBidirectionalConnectionWasInvalidatedyyF_0()
{
  v1 = *(v0 + 56);
  v5[4] = nullsub_1;
  v5[5] = 0;
  sub_1DD6ED704();
  sub_1DD6E0BD4();
  v5[2] = v2;
  v5[3] = &unk_1F58E67F8;
  v3 = _Block_copy(v5);
  [swift_unknownObjectRetain() connectionClosedWith_];
  _Block_release(v3);
  return swift_unknownObjectRelease();
}

void sub_1DD6E3D08(uint64_t a1, void (**a2)(void, void, void))
{
  v23 = sub_1DD710A9C(&qword_1ECD10300, &qword_1DD884D20);
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v23);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = *(a1 + 24);
  os_unfair_lock_lock((v11 + 48));
  *(v11 + 24) = 1;
  v12 = *(v11 + 16);
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  os_unfair_lock_unlock((v11 + 48));
  v13 = *(v12 + 16);
  if (v13)
  {
    v21 = v12;
    v22 = a2;
    v14 = *(v23 + 48);
    v15 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = *(v4 + 72);
    do
    {
      sub_1DD6E7A88(v15, v10, &qword_1ECD10300, &qword_1DD884D20);
      v17 = *(v23 + 48);
      v18 = sub_1DD874820();
      (*(*(v18 - 8) + 32))(v8, v10, v18);
      v19 = sub_1DD710A9C(&qword_1ECD166F0, &unk_1DD8B1090);
      (*(*(v19 - 8) + 32))(&v8[v17], &v10[v14], v19);
      sub_1DD864664();
      v24 = swift_allocError();
      sub_1DD8753C0();
      sub_1DD6FC560(v8, &qword_1ECD10300, &qword_1DD884D20);
      v15 += v16;
      --v13;
    }

    while (v13);

    a2 = v22;
  }

  else
  {
  }

  sub_1DD6E0EC8();
  v20 = sub_1DD875590();
  (a2)[2](a2, v20, 0);

  _Block_release(a2);
}

uint64_t sub_1DD6E3FA0()
{
  sub_1DD6E3FD0();
  sub_1DD6E2848();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DD6E3FD0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1DD6E3FF8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1DD6E4050(void *a1)
{

  return memcpy(a1, v1, 0x58uLL);
}

uint64_t sub_1DD6E4090()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_1DD6E40A8()
{

  return sub_1DD8758D0();
}

uint64_t sub_1DD6E40E4(uint64_t result)
{
  *(v2 - 400) = v1;
  *(v2 - 224) = result;
  return result;
}

uint64_t sub_1DD6E4110()
{
  v2 = *(v0 - 256);

  return sub_1DD875910();
}

uint64_t sub_1DD6E413C()
{
  v1 = sub_1DD6E0CA8();
  type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction.LinkAction(v1);
  v2 = sub_1DD6E492C();

  return sub_1DD6E5ED0(v2, v0, v3);
}

uint64_t sub_1DD6E4198()
{
}

uint64_t sub_1DD6E41BC()
{

  return swift_allocError();
}

uint64_t sub_1DD6E422C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      return sub_1DD6DEAA4(*a1 + 2147483646);
    }

    v3 = *(a1 + 16);
    sub_1DD6F9A8C();
  }

  else
  {
    v4 = -1;
  }

  return sub_1DD6DEAA4(v4);
}

void *sub_1DD6E4278(void *a1)
{

  return memcpy(a1, (v1 + 320), 0x50uLL);
}

uint64_t sub_1DD6E42B4()
{

  return sub_1DD8336E4(v1, v0);
}

uint64_t sub_1DD6E42D0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

void *sub_1DD6E4348()
{
  v1 = sub_1DD874ED0();
  v2 = sub_1DD6DDEAC(v1);
  v50 = v3;
  v51 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1DD874E40();
  v7 = sub_1DD6DDEAC(v52);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  v17 = sub_1DD874E60();
  v18 = sub_1DD6DDEAC(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v47 - v26;
  v0[2] = 0;
  v28 = sub_1DD874610();
  sub_1DD6DE3F0(v28);
  v0[3] = sub_1DD874600();
  v29 = sub_1DD8745E0();
  sub_1DD6DE3F0(v29);
  v30 = sub_1DD8745D0();
  v53 = v0;
  v0[4] = v30;
  sub_1DD874B50();
  sub_1DD874B50();
  sub_1DD874E50();
  sub_1DD874E20();
  v31 = *(v20 + 8);
  v31(v24, v17);
  v32 = sub_1DD874E50();
  v33 = sub_1DD875530();
  if (sub_1DD8755B0())
  {
    v34 = swift_slowAlloc();
    v48 = v17;
    v35 = v13;
    v36 = v34;
    *v34 = 0;
    v37 = sub_1DD874E30();
    _os_signpost_emit_with_name_impl(&dword_1DD6DC000, v32, v33, v37, "QueryDecorationClient.init", "", v36, 2u);
    v38 = v36;
    v13 = v35;
    v17 = v48;
    MEMORY[0x1E12B5DE0](v38, -1, -1);
  }

  v39 = v52;
  (*(v9 + 16))(v13, v16, v52);
  v40 = sub_1DD874EA0();
  sub_1DD6DE3F0(v40);
  sub_1DD874E90();
  (*(v9 + 8))(v16, v39);
  v31(v27, v17);
  sub_1DD6E4A38(qword_1EE017168, v41, type metadata accessor for QueryDecorationClient);
  v42 = sub_1DD710A9C(&qword_1ECD166E0, &qword_1DD8B1070);
  sub_1DD6DE3F0(v42);
  v43 = v53;

  v44 = sub_1DD874D10();
  v45 = v43[2];
  v43[2] = v44;

  sub_1DD710A9C(&qword_1ECD166E8, &qword_1DD8B1078);
  sub_1DD874CE0();

  sub_1DD6E4E70();

  return v43;
}

uint64_t sub_1DD6E48EC()
{
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[30];
  v7 = v0[27];
  v6 = v0[28];
}

uint64_t sub_1DD6E4938()
{
  v2 = *(v0 - 104);

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_1DD6E49DC()
{
  v2 = *(v0 - 72);

  return sub_1DD8758D0();
}

uint64_t sub_1DD6E4A18()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 88);
  return result;
}

uint64_t sub_1DD6E4A38(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD6E4A98()
{
  v0 = sub_1DD874B40();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69A90B0], v0);
  sub_1DD874B30();
  return (*(v1 + 8))(v4, v0);
}

uint64_t static QueryDecorationXPCService.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE019088 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD874ED0();
  v3 = sub_1DD6E1224(v2, qword_1EE019090);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id static QueryDecorationXPCService.interface.getter()
{
  if (qword_1EE019078 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE019080;

  return v1;
}

uint64_t static QueryDecorationXPCService.selectorClasses.getter()
{
  if (qword_1EE0190B0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DD6E4D64@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1DD85FD88;
  *(v5 + 24) = v4;
  *a2 = sub_1DD85FD98;
  a2[1] = v5;

  return swift_unknownObjectRetain();
}

uint64_t sub_1DD6E4DFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD6E4E34()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD6E4E70()
{
  v0 = sub_1DD874E70();
  v21 = *(v0 - 8);
  v1 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_1DD874E40();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1DD874E60();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DD874B50();
  v13 = sub_1DD874E50();
  sub_1DD874E80();
  v20 = sub_1DD875520();
  if (sub_1DD8755B0())
  {

    sub_1DD874EB0();

    v14 = v21;
    if ((*(v21 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v3, v0);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1DD874E30();
    _os_signpost_emit_with_name_impl(&dword_1DD6DC000, v13, v20, v17, "QueryDecorationClient.init", v15, v16, 2u);
    MEMORY[0x1E12B5DE0](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1DD6E5180(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD6E5250()
{

  return sub_1DD874CB0();
}

void sub_1DD6E5278()
{
  v1 = v0[7];
  v2 = *(v0[5] + 16);
  v0[2] = v0[6];
  v0[3] = v1;
}

uint64_t UUID.init(namespace:name:)(uint64_t a1)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1DD875190();

  v3 = sub_1DD875310();
  *(v3 + 16) = 20;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  v26[0] = v3;
  memset(&c, 0, sizeof(c));
  CC_SHA1_Init(&c);
  v4 = sub_1DD874800();
  sub_1DD6E5668(v4, v5, v2, v26, &c);
  v6 = v26[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD85E8D0(v6);
    v6 = v18;
  }

  v7 = *(v6 + 16);
  if (v7 < 7)
  {
    __break(1u);
    goto LABEL_14;
  }

  *(v6 + 38) = *(v6 + 38) & 0xF | 0x50;
  if (v7 < 9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v6 + 40) = *(v6 + 40) & 0x3F | 0x80;
  if (v7 == 9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v7 < 0xB)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v7 == 11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v7 < 0xD)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v7 == 13)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7 < 0xF)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  if (v7 == 15)
  {
    goto LABEL_21;
  }

  v8 = *(v6 + 32);
  v9 = *(v6 + 33);
  v10 = *(v6 + 34);
  v11 = *(v6 + 35);
  v12 = *(v6 + 36);
  v13 = *(v6 + 37);
  v14 = *(v6 + 39);
  v24 = *(v6 + 46);
  v23 = *(v6 + 45);
  v22 = *(v6 + 44);
  v21 = *(v6 + 43);
  v20 = *(v6 + 42);
  v19 = *(v6 + 41);
  sub_1DD8747F0();
  v15 = sub_1DD874820();
  (*(*(v15 - 8) + 8))(a1, v15);

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DD6E5668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, CC_SHA1_CTX *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  data[0] = a1;
  data[1] = a2;
  v8 = *(a3 + 16);
  v9 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DD85E8D0(v9);
    v9 = v13;
    *a4 = v13;
  }

  sub_1DD6E5758(v9 + 32, v9 + 32 + *(v9 + 16), a5, data, &v15, (a3 + 32), a3 + 32 + v8);
  *a4 = v9;

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DD6E5758(uint64_t result, int a2, CC_SHA1_CTX *c, void *data, uint64_t a5, const void *a6, uint64_t a7)
{
  if (data)
  {
    v10 = a5 - data;
  }

  else
  {
    v10 = 0;
  }

  if (result)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v10))
    {
      v11 = result;
      result = CC_SHA1_Update(c, data, v10);
      v12 = a7 - a6;
      if (!a6)
      {
        v12 = 0;
      }

      v13 = v12 - 1;
      if (!__OFSUB__(v12, 1))
      {
        if ((v13 & 0x8000000000000000) == 0)
        {
          if (!HIDWORD(v13))
          {
            CC_SHA1_Update(c, a6, v13);
            v14 = v11;
            return CC_SHA1_Final(v14, c);
          }

          goto LABEL_26;
        }

LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_24;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (HIDWORD(v10))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  result = CC_SHA1_Update(c, data, v10);
  v15 = a7 - a6;
  if (!a6)
  {
    v15 = 0;
  }

  v16 = v15 - 1;
  if (__OFSUB__(v15, 1))
  {
    goto LABEL_29;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!HIDWORD(v16))
  {
    CC_SHA1_Update(c, a6, v16);
    v14 = 0;
    return CC_SHA1_Final(v14, c);
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1DD6E5870()
{
  sub_1DD6E1F34();
  v2 = v1(0);
  sub_1DD6DF448(v2);
  v4 = *(v3 + 16);
  v5 = sub_1DD6DDEFC();
  v6(v5);
  return v0;
}

void sub_1DD6E5958()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t sub_1DD6E59B8()
{
  sub_1DD6E1F34();
  v2 = v1(0);
  sub_1DD6DF448(v2);
  v4 = *(v3 + 32);
  v5 = sub_1DD6DDEFC();
  v6(v5);
  return v0;
}

uint64_t sub_1DD6E5A0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1DD6DF448(v4);
  v6 = *(v5 + 32);
  v7 = sub_1DD6DDEFC();
  v8(v7);
  return a2;
}

uint64_t sub_1DD6E5A64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1DD6DE1C4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD6E5ABC()
{
  v1 = sub_1DD6DE290();
  v3 = v2(v1);
  sub_1DD6DE1C4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1DD6E5B50@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1DD6E59B8();
}

void SessionClientMessage.init(sessionId:clientRequestId:payload:)()
{
  sub_1DD827764();
  sub_1DD8257B8();
  sub_1DD6E0A5C();
  v3 = sub_1DD874820();
  sub_1DD6DDEAC(v3);
  v5 = v4;
  v7 = *(v6 + 16);
  v8 = sub_1DD701470();
  v9(v8);
  v10 = type metadata accessor for SessionClientMessage(0);
  v11 = *(v10 + 24);
  sub_1DD6E5344();
  sub_1DD826B70();
  sub_1DD6E5870();
  if (!v1)
  {
    v2 = 0;
    v1 = 0xE000000000000000;
  }

  sub_1DD6E5ABC();
  v12 = *(v5 + 8);
  v13 = sub_1DD6EFF74();
  v14(v13);
  v15 = (v0 + *(v10 + 20));
  *v15 = v2;
  v15[1] = v1;
  sub_1DD827720();
}

void *sub_1DD6E5C88(void *a1)
{

  return memcpy(a1, (v1 + 384), 0x48uLL);
}

uint64_t sub_1DD6E5CC8()
{
  v1 = *(v0 - 176);
  v2 = *(*(v0 - 184) + 8);
  return *(v0 - 168);
}

void *sub_1DD6E5CE4@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 - 256);
  *v4 = a1;
  v4[1] = v1;
  result = v4;
  v6 = *(v3 - 256);
  return result;
}

void *sub_1DD6E5CF8(void *a1)
{

  return memcpy(a1, (v1 + 1768), 0x58uLL);
}

uint64_t sub_1DD6E5D90()
{

  return sub_1DD7533B8();
}

uint64_t sub_1DD6E5DF8()
{
  *(v0 - 104) = 1;
  v2 = *(v0 - 120);

  return sub_1DD8758D0();
}

void sub_1DD6E5E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  *(v7 - 84) = a7;
  *(v7 - 104) = a4;
  *(v7 - 96) = a5;
  *(v7 - 112) = a3;
}

uint64_t sub_1DD6E5E90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_1DD6E5F10()
{
}

uint64_t sub_1DD6E5F28()
{
  v2 = *(*(v1 - 264) + 8);
  result = v0;
  v4 = *(v1 - 256);
  return result;
}

uint64_t sub_1DD6E6008()
{

  return sub_1DD8758D0();
}

uint64_t sub_1DD6E6030()
{
  v1 = v0[19];
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(v0[9] + 32);
  return 0;
}

uint64_t sub_1DD6E6048()
{
  v2 = *(v0 - 120);

  return sub_1DD875910();
}

uint64_t sub_1DD6E6068()
{

  return swift_beginAccess();
}

uint64_t sub_1DD6E6098()
{
  v2 = *(v0 - 72);

  return sub_1DD8759D0();
}

void *sub_1DD6E60B4()
{
  v2 = v0[54];

  return memcpy(v0 + 36, v0 + 9, 0x48uLL);
}

uint64_t sub_1DD6E6130()
{
  v4 = *(v1 - 128);
  v3 = *(v1 - 120);
  *(v1 - 136) = v0;

  return sub_1DD8758D0();
}

uint64_t sub_1DD6E6198()
{
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[30];
  v7 = v0[27];
  v6 = v0[28];
}

__n128 sub_1DD6E61E0()
{
  v2 = *(v1 - 112) + *(v0 + 24);
  *v2 = *(v1 - 104);
  result = *(v1 - 96);
  *(v2 + 8) = result;
  return result;
}

uint64_t sub_1DD6E6240()
{

  return sub_1DD875BB0();
}

uint64_t sub_1DD6E6260()
{

  return sub_1DD8757A0();
}

uint64_t sub_1DD6E6298(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1DD6E62D8(uint64_t result, int a2, int a3)
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

void *sub_1DD6E6320(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst)
{
  v12 = *(v10 + 432);

  return memcpy(&__dst, (v10 + 72), 0x48uLL);
}

uint64_t sub_1DD6E6340()
{

  return sub_1DD7533B8();
}

uint64_t sub_1DD6E6368()
{
  result = *v1;
  v3 = *v0;
  return result;
}

uint64_t sub_1DD6E63BC()
{
  v2 = *(v0 - 176);

  return sub_1DD875800();
}

uint64_t sub_1DD6E6448(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1DD6E64D4()
{

  return sub_1DD875800();
}

uint64_t sub_1DD6E64F4()
{

  return swift_beginAccess();
}

void *sub_1DD6E650C()
{
  v2 = v0[60];

  return memcpy(v0 + 40, v0 + 10, 0x50uLL);
}

uint64_t sub_1DD6E652C(uint64_t *a1)
{
  result = *a1;
  v4 = *(v2 + 8);
  v5 = *v1;
  v6 = v1[1];
  return result;
}

uint64_t sub_1DD6E658C()
{

  return sub_1DD875800();
}

uint64_t sub_1DD6E65AC()
{
  v2 = *(v0 - 176);

  return sub_1DD875800();
}

uint64_t sub_1DD6E6628()
{

  return sub_1DD8758D0();
}

uint64_t sub_1DD6E6658(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void SessionConfiguration.init()(uint64_t a1@<X8>)
{
  *a1 = 5;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 2;
  v2 = type metadata accessor for SessionConfiguration(0);
  v3 = v2[8];
  sub_1DD6ED288();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v4, v5, v6, v7);
  *(a1 + v2[9]) = 2;
  *(a1 + v2[10]) = 512;
  *(a1 + v2[11]) = 0;
  sub_1DD6E3880(a1 + v2[12]);
  *(a1 + v2[13]) = 4;
  *(a1 + v2[14]) = 2;
  v8 = (a1 + v2[15]);
  *v8 = 0;
  v8[1] = 0;
}

uint64_t _s16IntelligenceFlow10AuditTokenV8rawValueACSo13audit_token_ta_tcfC_0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD874C20();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_1DD6E67B4(uint64_t a1, uint64_t a2)
{
  sub_1DD6E0D28();
  v4 = sub_1DD874890();

  return sub_1DD6E5ED0(v2, a2, v4);
}

uint64_t sub_1DD6E67F8()
{
  result = v0;
  v3 = *(v1 - 256);
  return result;
}

uint64_t type metadata accessor for SessionID()
{
  result = qword_1EE013B28;
  if (!qword_1EE013B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SessionIdentityPack()
{
  result = qword_1EE0154F0;
  if (!qword_1EE0154F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SessionIdentityPack.description.getter()
{
  sub_1DD8756B0();

  v2 = MEMORY[0x1E12B41F0](v1);
  MEMORY[0x1E12B4C10](v2);

  sub_1DD6DE4D0();
  v3 = (v0 + *(type metadata accessor for SessionIdentityPack() + 20));
  MEMORY[0x1E12B4C10](*v3, v3[1]);
  sub_1DD6DE4D0();
  MEMORY[0x1E12B4C10](v3[2], v3[3]);
  sub_1DD6DE4D0();
  if (v3[5])
  {
    v4 = v3[4];
    v5 = v3[5];
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x1E12B4C10](v4, v5);

  MEMORY[0x1E12B4C10](62, 0xE100000000000000);
  return 0x7C4449533CLL;
}

uint64_t sub_1DD6E69B8()
{
  v2 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  v8 = v0[12];
  v9 = v0[10];
}

uint64_t sub_1DD6E69F8()
{

  return type metadata accessor for SessionIdentityPack();
}

uint64_t sub_1DD6E6A14()
{

  return swift_once();
}

uint64_t sub_1DD6E6A44()
{

  return sub_1DD875A30();
}

uint64_t sub_1DD6E6A74@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_1DD75EE80(v4 + a3, v3, a1, a2);
}

unint64_t sub_1DD6E6B0C()
{
  v2 = v0[11];
  v0[2] = v0[10];
  v0[3] = v2;

  return sub_1DD6EF294();
}

uint64_t sub_1DD6E6B78()
{
  *(v0 + 16) = 0;
  sub_1DD6E5180(&qword_1EE0188C8, type metadata accessor for ContextClient);
  v1 = sub_1DD710A9C(&qword_1ECD0E900, qword_1DD87ABD0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();

  v4 = sub_1DD874D10();
  v5 = *(v0 + 16);
  *(v0 + 16) = v4;

  return v0;
}

void sub_1DD6E6C28(uint64_t a1@<X8>)
{
  v4 = (v1 + a1);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = *(v2 - 96);
  v6 = *(v2 - 72);

  sub_1DD6FE380();
}

void *sub_1DD6E6C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v9 + 480);

  return memcpy(&a9, (v9 + 80), 0x50uLL);
}

uint64_t sub_1DD6E6CD4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 312);
  v5 = *(v1 - 320);

  return sub_1DD875910();
}

__n128 sub_1DD6E6D08()
{
  result = *(v0 + 16);
  v3 = *(v0 + 32);
  *(v1 - 112) = result;
  *(v1 - 96) = v3;
  *(v1 - 80) = *(v0 + 48);
  return result;
}

uint64_t sub_1DD6E6D1C()
{

  return sub_1DD875110();
}

uint64_t sub_1DD6E6D64(uint64_t a1, uint64_t a2)
{
  sub_1DD6E0D28();
  v4 = sub_1DD874890();

  return sub_1DD6E5E68(v2, a2, a2, v4);
}

_BYTE *storeEnumTagSinglePayload for SessionConfiguration.PlannerType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x1DD6E6E84);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD6E6EC0(uint64_t result, int a2, int a3)
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

void sub_1DD6E6EEC()
{
  sub_1DD6E72DC();
  if (v5)
  {
    sub_1DD6E1FA0();
    if (v7 != v8)
    {
      sub_1DD6FF9A0();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1DD6E88C8();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1DD6E9604(v6);
  if (v3)
  {
    sub_1DD710A9C(&qword_1ECD10320, &qword_1DD884D40);
    v9 = swift_allocObject();
    v10 = j__malloc_size_0(v9);
    *(v9 + 2) = v2;
    *(v9 + 3) = 2 * ((v10 - 32) / 48);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[48 * v2] <= v11)
    {
      memmove(v11, v12, 48 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

IntelligenceFlow::ClientIdentityChain __swiftcall ClientIdentityChain.init(identities:appendingCurrentProcess:)(IntelligenceFlow::ClientIdentityChain identities, Swift::Bool appendingCurrentProcess)
{
  rawValue = identities.identities._rawValue;
  v4 = v2;
  if (appendingCurrentProcess)
  {
    v5 = sub_1DD874C10();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    sub_1DD874CA0();
    v12 = sub_1DD874C60();
    identities.identities._rawValue = swift_isUniquelyReferenced_nonNull_native();
    if ((identities.identities._rawValue & 1) == 0)
    {
      v15 = rawValue[2];
      sub_1DD6E6EEC();
      rawValue = identities.identities._rawValue;
    }

    v13 = rawValue[2];
    if (v13 >= rawValue[3] >> 1)
    {
      sub_1DD6E6EEC();
      rawValue = identities.identities._rawValue;
    }

    rawValue[2] = v13 + 1;
    v14 = &rawValue[6 * v13];
    *(v14 + 4) = v5;
    *(v14 + 5) = v7;
    *(v14 + 6) = v9;
    *(v14 + 7) = v11;
    v14[64] = 0;
    *(v14 + 9) = v12;
  }

  *v4 = rawValue;
  return identities;
}

uint64_t sub_1DD6E7130()
{

  return sub_1DD730620(v0 + 320, v0 + 400, v1, v2);
}

uint64_t sub_1DD6E7150()
{

  return sub_1DD875800();
}

unint64_t sub_1DD6E7174()
{
  v4 = v0 + *(v1 + 24);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  *(v2 - 104) = *v4;
  *(v2 - 96) = v5;
  *(v2 - 88) = v6;
  *(v2 - 65) = 2;

  return sub_1DD70396C();
}

uint64_t sub_1DD6E71A4()
{

  return sub_1DD8759D0();
}

uint64_t sub_1DD6E71FC()
{

  return sub_1DD875110();
}

void *sub_1DD6E722C(void *a1)
{

  return memcpy(a1, (v1 + 1520), 0x50uLL);
}

uint64_t sub_1DD6E7268()
{
  v2 = *(v0 - 72);

  return sub_1DD8759D0();
}

__n128 sub_1DD6E7284()
{
  v3 = v1 + *(v0 + 24);
  *v3 = *(v2 - 104);
  result = *(v2 - 96);
  *(v3 + 8) = result;
  *(v2 - 104) = 3;
  return result;
}

uint64_t sub_1DD6E72C0()
{

  return swift_unknownObjectRelease();
}

unsigned __int8 *sub_1DD6E72F8@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  *a2 = 5;
  return result;
}

uint64_t sub_1DD6E733C@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 160);
  return result;
}

uint64_t SessionConfiguration.identityChain.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for SessionConfiguration(0) + 44);
  v4 = *(v1 + v3);

  *(v1 + v3) = v2;
  return result;
}

uint64_t LocaleSettings.init(deviceLocale:userLocale:responseLocale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1DD874890();
  sub_1DD6DE1C4(v8);
  v13 = *(v9 + 32);
  v13(a4, a1, v8);
  v10 = type metadata accessor for LocaleSettings(0);
  v13(a4 + *(v10 + 20), a2, v8);
  v11 = a4 + *(v10 + 24);

  return (v13)(v11, a3, v8);
}

uint64_t sub_1DD6E7470(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD0E358, &unk_1DD878670);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SessionConfiguration.initialLocaleSettings.setter()
{
  v2 = sub_1DD6DE290();
  v3 = v1 + *(type metadata accessor for SessionConfiguration(v2) + 32);

  return sub_1DD6E7470(v0, v3);
}

uint64_t SessionConfiguration.genderSettings.setter(__int16 *a1)
{
  v2 = *a1;
  result = type metadata accessor for SessionConfiguration(0);
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t storeEnumTagSinglePayload for GenderSettings(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
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
    v6 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1DD6E761CLL);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t SessionConfiguration.crossAPIAssociationKey.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for SessionConfiguration(0) + 60));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_1DD6E769C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1DD710A9C(&qword_1ECD0E358, &unk_1DD878670);
    v8 = v5 + *(a4 + 32);

    return sub_1DD6E5E68(v8, a2, a2, v7);
  }

  return result;
}

void sub_1DD6E7728()
{
  sub_1DD6DED2C();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v40[2] = v9;
  v10 = sub_1DD710A9C(&qword_1ECD16708, &qword_1DD8B10A8);
  sub_1DD6DEA10(v10);
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v40 - v14;
  v16 = type metadata accessor for SessionConfiguration(0);
  v17 = sub_1DD6DE1C4(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DE4A8();
  v22 = v21 - v20;
  sub_1DD6E7A88(v4, v15, &qword_1ECD16708, &qword_1DD8B10A8);
  if (sub_1DD6E5ED0(v15, 1, v16) == 1)
  {
    *v22 = 5;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    *(v22 + 24) = 2;
    v23 = v16[8];
    v24 = type metadata accessor for LocaleSettings(0);
    sub_1DD6E5E68(v22 + v23, 1, 1, v24);
    *(v22 + v16[9]) = 2;
    *(v22 + v16[10]) = 512;
    *(v22 + v16[11]) = 0;
    v25 = v22 + v16[12];
    *v25 = 0;
    *(v25 + 8) = 0;
    *(v25 + 16) = 0;
    *(v22 + v16[13]) = 4;
    *(v22 + v16[14]) = 2;
    v26 = (v22 + v16[15]);
    *v26 = 0;
    v26[1] = 0;
    if (sub_1DD6E5ED0(v15, 1, v16) != 1)
    {
      sub_1DD6FC560(v15, &qword_1ECD16708, &qword_1DD8B10A8);
    }
  }

  else
  {
    sub_1DD6E7B9C(v15, v22);
  }

  if (v6)
  {
    v27 = v8;
  }

  else
  {
    v27 = 0;
  }

  if (v6)
  {
    v28 = v6;
  }

  else
  {
    v28 = 0xE000000000000000;
  }

  v29 = *(v2 + 64);
  sub_1DD6FC500();
  sub_1DD6DEC94(v30, 255, v31);

  v32 = sub_1DD8745F0();
  if (v1)
  {
    sub_1DD6DF518();
    sub_1DD6EEEFC(v22, v34);

LABEL_18:
    sub_1DD6E0C78();
    return;
  }

  v35 = v32;
  v36 = v33;
  empty = xpc_dictionary_create_empty();
  sub_1DD6EF494();
  sub_1DD6ED2E8();
  swift_beginAccess();
  if (*(v2 + 40))
  {
    sub_1DD6E0F0C(v2 + 16, &v41);
  }

  else
  {
    v37 = *(v2 + 32);
    v41 = *(v2 + 16);
    v42 = v37;
    v43 = *(v2 + 48);
  }

  if (*(&v42 + 1))
  {
    v40[0] = v43;
    v38 = sub_1DD6DEA7C(&v41, *(&v42 + 1));
    v40[1] = v40;
    MEMORY[0x1EEE9AC00](v38);
    v40[-6] = v27;
    v40[-5] = v28;
    v40[-4] = v35;
    v40[-3] = v36;
    v40[-2] = empty;
    sub_1DD874820();
    sub_1DD874D80();
    sub_1DD6DF518();
    sub_1DD6EEEFC(v22, v39);

    sub_1DD6E6658(v35, v36);
    swift_unknownObjectRelease();
    sub_1DD6E1EC8(&v41);
    goto LABEL_18;
  }

  __break(1u);
}

uint64_t sub_1DD6E7A88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1DD710A9C(a3, a4);
  sub_1DD6DE1C4(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD6E7AFC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_1DD710A9C(&qword_1ECD0E358, &unk_1DD878670);
    v10 = a1 + *(a3 + 32);

    return sub_1DD6E5ED0(v10, a2, v9);
  }
}

uint64_t sub_1DD6E7B9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SessionConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1DD710A9C(&qword_1ECD10848, &qword_1DD886F98);
  sub_1DD6DDEAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DEA6C();
  v11 = a1[4];
  sub_1DD6DEA7C(a1, a1[3]);
  sub_1DD6E80A8();
  sub_1DD6E17D8();
  sub_1DD6F0A68();
  sub_1DD875BB0();
  v25 = *v3;
  sub_1DD6E8120();
  sub_1DD6E5334();
  sub_1DD875960();
  if (!v2)
  {
    v26 = *(v3 + 1);
    sub_1DD6FF8F4();
    sub_1DD710A9C(&qword_1ECD10850, &unk_1DD886FA0);
    sub_1DD6E86F0(&unk_1EE0139F8);
    sub_1DD6E0AD4();
    sub_1DD6DE334();
    sub_1DD875960();
    v27 = *(v3 + 2);
    sub_1DD6EFF88();
    sub_1DD710A9C(&qword_1ECD10818, &qword_1DD886DA8);
    sub_1DD6DF928(&qword_1EE013A18);
    sub_1DD6E0AD4();
    sub_1DD6DE334();
    sub_1DD875960();
    v12 = v3[24];
    sub_1DD6E5334();
    sub_1DD875930();
    v13 = type metadata accessor for SessionConfiguration(0);
    v14 = v13[8];
    type metadata accessor for LocaleSettings(0);
    sub_1DD6E88EC();
    sub_1DD6E881C(v15);
    sub_1DD6DE334();
    sub_1DD875960();
    v28 = v3[v13[9]];
    sub_1DD6E8D50();
    sub_1DD6E5334();
    sub_1DD875960();
    v29 = *&v3[v13[10]];
    sub_1DD6E8DAC();
    sub_1DD6E5334();
    sub_1DD875960();
    v30 = *&v3[v13[11]];
    v16 = sub_1DD6E8E4C();

    sub_1DD6E0AD4();
    sub_1DD6DE334();
    sub_1DD875960();
    if (!v16)
    {

      v17 = &v3[v13[12]];
      v31 = *v17;
      v34 = *(v17 + 1);
      v36 = *(v17 + 4);
      v18 = sub_1DD6ED8E0();

      sub_1DD6E0AD4();
      sub_1DD6DE334();
      sub_1DD875960();

      if (v18)
      {
        goto LABEL_13;
      }

      v32 = *&v3[v13[13]];
      sub_1DD6E99E8();
      sub_1DD6E5334();
      sub_1DD875960();
      v19 = v3[v13[14]];
      sub_1DD6E5334();
      sub_1DD875930();
      v24 = &v3[v13[15]];
      v33 = *v24;
      v35 = v24[1];
      sub_1DD6EF294();

      sub_1DD6E0AD4();
      sub_1DD6DE334();
      sub_1DD875960();
    }
  }

LABEL_13:
  v20 = *(v7 + 8);
  v21 = sub_1DD6DEA04();
  return v22(v21);
}

unint64_t sub_1DD6E80A8()
{
  result = qword_1EE0173A8[0];
  if (!qword_1EE0173A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0173A8);
  }

  return result;
}

unint64_t sub_1DD6E8120()
{
  result = qword_1EE015460;
  if (!qword_1EE015460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015460);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetsUsageKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SessionConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
        JUMPOUT(0x1DD6E82C8);
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_1DD6E83C8()
{
  result = qword_1EE017390;
  if (!qword_1EE017390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE017390);
  }

  return result;
}

uint64_t sub_1DD6E841C@<X0>(uint64_t *a1@<X8>)
{
  result = SessionConfiguration.PlannerType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SessionConfiguration.PlannerType.rawValue.getter()
{
  result = 0x647261646E617473;
  switch(*v0)
  {
    case 1:
      result = 0x796D6D7564;
      break;
    case 2:
      result = 0x676E6974736574;
      break;
    case 3:
      result = 7169123;
      break;
    case 4:
      result = 0x506369746E656761;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DD6E84F8(char a1)
{
  result = 0x5472656E6E616C70;
  switch(a1)
  {
    case 1:
      result = 0x6645746E65696C63;
      break;
    case 2:
      result = 0x6341746E65696C63;
      break;
    case 3:
      result = 0x436D726177657270;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x797469746E656469;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x65537265646E6567;
      break;
    case 10:
      result = 0xD000000000000028;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DD6E86F0(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    v4 = v3;
    sub_1DD717E88(&qword_1ECD10850, &unk_1DD886FA0);
    v4();
    sub_1DD6E5CB8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1DD6E875C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = a16;

  return sub_1DD6F388C(v17, a2, &a11);
}

uint64_t sub_1DD6E8774(uint64_t a1)
{
  v3 = *(a1 + 56);
  *(v2 - 96) = v1;
  return v1;
}

uint64_t sub_1DD6E8794()
{

  return sub_1DD755E70();
}

uint64_t sub_1DD6E87C4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  result = a1[1];
  v4 = *(a1 + 4);
  *v1 = v3;
  *(v1 + 8) = result;
  *(v1 + 16) = v4;
  return result;
}

uint64_t sub_1DD6E87D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ClientAction.Definition(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD6E881C(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1DD6E8860(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  return result;
}

void *sub_1DD6E887C()
{

  return memcpy((v0 + 176), (v0 + 88), 0x58uLL);
}

uint64_t sub_1DD6E88D8(uint64_t result)
{
  v2 = *(result + 20);
  *(v1 - 104) = 1;
  return result;
}

uint64_t sub_1DD6E891C()
{
  v3 = *(v0 + 32);
  result = v1;
  v5 = *(v2 - 72);
  return result;
}

uint64_t sub_1DD6E8940()
{

  return sub_1DD86766C(v1, v0);
}

void LocaleSettings.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD108D0, &qword_1DD887000);
  sub_1DD6DDEAC(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DE340();
  v10 = v3[4];
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD6E8B14();
  sub_1DD6F0A68();
  sub_1DD875BB0();
  sub_1DD874890();
  sub_1DD6DF414();
  sub_1DD6E881C(v11);
  sub_1DD6DEC30();
  if (!v0)
  {
    v12 = type metadata accessor for LocaleSettings(0);
    v13 = *(v12 + 20);
    sub_1DD6DEC30();
    v14 = *(v12 + 24);
    sub_1DD6DEC30();
  }

  (*(v6 + 8))(v1, v4);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

unint64_t sub_1DD6E8B14()
{
  result = qword_1EE018650;
  if (!qword_1EE018650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018650);
  }

  return result;
}

_BYTE *sub_1DD6E8B70(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1DD6EE784(result, v6);
        break;
      case 2:
        result = sub_1DD6E3744(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1DD6E8C2CLL);
      case 4:
        result = sub_1DD6E991C(result, v6);
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
          result = sub_1DD6E5904(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD6E8C54(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1DD6DEAA4(-1);
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
      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 3);
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

      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 3);
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

  return sub_1DD6DEAA4(v8);
}

uint64_t sub_1DD6E8CE0(char a1)
{
  if (!a1)
  {
    return 0x6F4C656369766564;
  }

  if (a1 == 1)
  {
    return 0x61636F4C72657375;
  }

  return 0x65736E6F70736572;
}

unint64_t sub_1DD6E8D50()
{
  result = qword_1EE015448;
  if (!qword_1EE015448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015448);
  }

  return result;
}

unint64_t sub_1DD6E8DAC()
{
  result = qword_1EE0155C8;
  if (!qword_1EE0155C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0155C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DebuggerSettings(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 4))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 1);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

unint64_t sub_1DD6E8E4C()
{
  result = qword_1EE015528;
  if (!qword_1EE015528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015528);
  }

  return result;
}

void ClientIdentityChain.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD10A18, &qword_1DD8870E0);
  sub_1DD6DDEAC(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DE340();
  v10 = *v0;
  v11 = v3[4];
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD6E902C();

  sub_1DD6DFF18();
  sub_1DD875BB0();
  sub_1DD710A9C(&qword_1ECD10A20, &qword_1DD8870E8);
  sub_1DD7982D4(&unk_1EE013A08);
  sub_1DD8759D0();

  (*(v6 + 8))(v1, v4);
  sub_1DD6E0C78();
}

unint64_t sub_1DD6E902C()
{
  result = qword_1EE017478;
  if (!qword_1EE017478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE017478);
  }

  return result;
}

_BYTE *sub_1DD6E9088(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x1DD6E9124);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void ClientIdentity.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v0;
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD10A30, &qword_1DD8870F8);
  sub_1DD6DDEAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DEA6C();
  v11 = *(v2 + 32);
  v12 = *(v2 + 5);
  v13 = v4[4];
  sub_1DD6DEA7C(v4, v4[3]);
  sub_1DD6E9318();
  sub_1DD6E17D8();
  sub_1DD6DFF18();
  sub_1DD875BB0();
  v18 = v2[1];
  v17 = *v2;
  sub_1DD6E936C();
  sub_1DD875960();
  if (!v1)
  {
    sub_1DD6FF8F4();

    sub_1DD710A9C(&qword_1ECD10A38, &qword_1DD887100);
    sub_1DD6E9994(&unk_1EE015860);
    sub_1DD6DE334();
    sub_1DD8759D0();
  }

  v14 = *(v7 + 8);
  v15 = sub_1DD6DEA04();
  v16(v15);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

unint64_t sub_1DD6E9318()
{
  result = qword_1EE018770[0];
  if (!qword_1EE018770[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE018770);
  }

  return result;
}

unint64_t sub_1DD6E936C()
{
  result = qword_1EE015BA8;
  if (!qword_1EE015BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015BA8);
  }

  return result;
}

uint64_t sub_1DD6E93C0(uint64_t a1, int a2)
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

_BYTE *sub_1DD6E93E0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1DD6EE784(result, v6);
        break;
      case 2:
        result = sub_1DD6E3744(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1DD6E949CLL);
      case 4:
        result = sub_1DD6E991C(result, v6);
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
          result = sub_1DD6E5904(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD6E94D0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1DD6DEAA4(-1);
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
      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 2);
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

      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 2);
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

  return sub_1DD6DEAA4(v8);
}

uint64_t sub_1DD6E95A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = a20;

  return sub_1DD72F3CC(v21, a2, &a12);
}

void sub_1DD6E9604(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_1DD6E9614()
{

  return sub_1DD875800();
}

uint64_t sub_1DD6E9658()
{

  return swift_getWitnessTable();
}

uint64_t sub_1DD6E9684()
{
  v2 = *(v0 - 160);

  return sub_1DD78FC8C();
}

__n128 sub_1DD6E96EC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t AuditToken.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1DD710A9C(&qword_1ECD10A08, &qword_1DD8870D0);
  sub_1DD6DDEAC(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEBA0();
  v8 = a1[4];
  sub_1DD6DEA7C(a1, a1[3]);
  sub_1DD6E9838();
  sub_1DD6E4218();
  sub_1DD6F0A68();
  sub_1DD875BB0();
  v12 = *v2;
  v13 = v2[1];
  sub_1DD6E989C();
  sub_1DD8759D0();
  v9 = sub_1DD6ED4B8();
  return v10(v9);
}

unint64_t sub_1DD6E9838()
{
  result = qword_1EE018C90;
  if (!qword_1EE018C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018C90);
  }

  return result;
}

unint64_t sub_1DD6E989C()
{
  result = qword_1EE013AA8;
  if (!qword_1EE013AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE013AA8);
  }

  return result;
}

uint64_t sub_1DD6E994C(char a1)
{
  if (a1)
  {
    return 0x7469746E6564695FLL;
  }

  else
  {
    return 0xD000000000000013;
  }
}

unint64_t sub_1DD6E9994(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    sub_1DD717E88(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD6E99E8()
{
  result = qword_1EE015840;
  if (!qword_1EE015840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015840);
  }

  return result;
}

uint64_t sub_1DD6E9A54()
{

  return sub_1DD719110();
}

uint64_t sub_1DD6E9A74()
{

  return sub_1DD753360(v0, type metadata accessor for ResponseGenerationOverrides_ListPredicate);
}

uint64_t sub_1DD6E9AA8()
{

  return sub_1DD8750F0();
}

void *sub_1DD6E9AEC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v1[4];
  return sub_1DD6DF224(v1, v1[3]);
}

uint64_t sub_1DD6E9B14@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

void MessagePayload.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v25;
  a20 = v26;
  a10 = v22;
  v705 = v21;
  v28 = v27;
  v29 = sub_1DD710A9C(&qword_1ECD11B18, &qword_1DD889920);
  sub_1DD6DF3FC(v29, &v711);
  v572 = v30;
  v32 = *(v31 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD6E0C6C();
  v35 = sub_1DD6ED230(v34);
  v36 = type metadata accessor for ActionExecutionOutcome(v35);
  v37 = sub_1DD6DEDE0(v36, &v710[80]);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v40);
  v41 = sub_1DD710A9C(&qword_1ECD11B20, &qword_1DD889928);
  sub_1DD6DF3FC(v41, &v710[72]);
  v571 = v42;
  v44 = *(v43 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v46);
  v47 = sub_1DD710A9C(&qword_1ECD11B28, &qword_1DD889930);
  sub_1DD6DF3FC(v47, &v710[56]);
  v570 = v48;
  v50 = *(v49 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1DD8253F8(v52, v557);
  v53 = sub_1DD710A9C(&qword_1ECD11B30, &qword_1DD889938);
  sub_1DD6DF3FC(v53, &v710[48]);
  v569 = v54;
  v56 = *(v55 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v57);
  sub_1DD82538C(v58);
  v59 = sub_1DD710A9C(&qword_1ECD11B38, &qword_1DD889940);
  sub_1DD6DF3FC(v59, &v710[24]);
  v568 = v60;
  v62 = *(v61 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v63);
  sub_1DD6E0C6C();
  v65 = sub_1DD6ED230(v64);
  v66 = type metadata accessor for SessionServerDebuggerEvent(v65);
  v67 = sub_1DD6DEDE0(v66, v710);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v70);
  v71 = sub_1DD710A9C(&qword_1ECD11B40, &qword_1DD889948);
  sub_1DD6DF3FC(v71, &v709);
  v567 = v72;
  v74 = *(v73 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v75);
  sub_1DD6E0C6C();
  v77 = sub_1DD6ED230(v76);
  v78 = type metadata accessor for SessionClientDebuggerEvent(v77);
  v79 = sub_1DD6DEDE0(v78, &v708[80]);
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v79);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v82);
  v83 = sub_1DD710A9C(&qword_1ECD11B48, &qword_1DD889950);
  sub_1DD6DF3FC(v83, &v708[72]);
  v566 = v84;
  v86 = *(v85 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v87);
  sub_1DD6E0C6C();
  v89 = sub_1DD6ED230(v88);
  v90 = type metadata accessor for MessagePayload.ActionSummaryUpdate(v89);
  v91 = sub_1DD6DEDE0(v90, &v708[48]);
  v93 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v91);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v94);
  v95 = sub_1DD710A9C(&qword_1ECD11B50, &qword_1DD889958);
  sub_1DD6DF3FC(v95, &v708[40]);
  v565 = v96;
  v98 = *(v97 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v99);
  sub_1DD6E0C6C();
  v101 = sub_1DD6ED230(v100);
  v102 = type metadata accessor for MessagePayload.ClientUndoRedoRequest(v101);
  v103 = sub_1DD6DEDE0(v102, &v708[16]);
  v105 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v103);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v106);
  v107 = sub_1DD710A9C(&qword_1ECD11B58, &qword_1DD889960);
  sub_1DD6DF3FC(v107, &v708[8]);
  v564 = v108;
  v110 = *(v109 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v111);
  sub_1DD8253C8(v112, v558);
  v113 = sub_1DD710A9C(&qword_1ECD11B60, &qword_1DD889968);
  sub_1DD6DF3FC(v113, &v707);
  v563 = v114;
  v116 = *(v115 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v117);
  sub_1DD8254B0(v118, v559);
  v119 = sub_1DD710A9C(&qword_1ECD11B68, &qword_1DD889970);
  sub_1DD6DF3FC(v119, &v705);
  v562 = v120;
  v122 = *(v121 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v123);
  sub_1DD6E0C6C();
  v125 = sub_1DD6ED230(v124);
  v126 = type metadata accessor for MessagePayload.ExternalAgentOutcome(v125);
  v127 = sub_1DD6DEDE0(v126, &v702);
  v129 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v127);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v130);
  v131 = sub_1DD710A9C(&qword_1ECD11B70, &qword_1DD889978);
  sub_1DD6DF3FC(v131, &v701);
  v561 = v132;
  v134 = *(v133 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v135);
  sub_1DD6E0C6C();
  v137 = sub_1DD6ED230(v136);
  v138 = type metadata accessor for MessagePayload.ExternalAgentRequest(v137);
  v139 = sub_1DD6DEDE0(v138, &v698);
  v141 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v139);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v142);
  v143 = sub_1DD710A9C(&qword_1ECD11B78, &qword_1DD889980);
  sub_1DD6DF3FC(v143, &v697);
  v560 = v144;
  v146 = *(v145 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v147);
  sub_1DD6E0C6C();
  v149 = sub_1DD6ED230(v148);
  v150 = type metadata accessor for MessagePayload.ExternalAgentSpeechQuery(v149);
  v151 = sub_1DD6DEDE0(v150, &v694);
  v153 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v151);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v154);
  v155 = sub_1DD710A9C(&qword_1ECD11B80, &qword_1DD889988);
  sub_1DD6DF3FC(v155, &v693);
  v157 = *(v156 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v158);
  sub_1DD6E0C6C();
  v160 = sub_1DD6ED230(v159);
  v161 = type metadata accessor for MessagePayload.ExternalAgentTextQuery(v160);
  v162 = sub_1DD6DEDE0(v161, &v690);
  v164 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v162);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v165);
  v166 = sub_1DD710A9C(&qword_1ECD11B88, &qword_1DD889990);
  sub_1DD6DF3FC(v166, &v689);
  v168 = *(v167 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v169);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v170);
  v171 = sub_1DD710A9C(&qword_1ECD11B90, &qword_1DD889998);
  sub_1DD6DF3FC(v171, &v687);
  v173 = *(v172 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v174);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v175);
  v176 = sub_1DD710A9C(&qword_1ECD11B98, &qword_1DD8899A0);
  sub_1DD6DF3FC(v176, &v685);
  v178 = *(v177 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v179);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v180);
  v181 = sub_1DD710A9C(&qword_1ECD11BA0, &qword_1DD8899A8);
  sub_1DD6DF3FC(v181, &v683);
  v183 = *(v182 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v184);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v185);
  v186 = sub_1DD710A9C(&qword_1ECD11BA8, &qword_1DD8899B0);
  sub_1DD6DF3FC(v186, &v682);
  v188 = *(v187 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v189);
  sub_1DD6E0C6C();
  v191 = sub_1DD6ED230(v190);
  v192 = type metadata accessor for IntermediateSystemResponseRendered(v191);
  v193 = sub_1DD6DEDE0(v192, &v678);
  v195 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v193);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v196);
  v197 = sub_1DD710A9C(&qword_1ECD11BB0, &qword_1DD8899B8);
  sub_1DD6DF3FC(v197, &v677);
  v199 = *(v198 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v200);
  sub_1DD6E0C6C();
  v202 = sub_1DD6ED230(v201);
  v203 = type metadata accessor for IntermediateSystemResponse(v202);
  v204 = sub_1DD6DEDE0(v203, &v674);
  v206 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v204);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v207);
  v208 = sub_1DD710A9C(&qword_1ECD11BB8, &qword_1DD8899C0);
  sub_1DD6DF3FC(v208, &v673);
  v210 = *(v209 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v211);
  sub_1DD6E0C6C();
  v213 = sub_1DD6ED230(v212);
  v214 = type metadata accessor for SystemResponse(v213);
  v215 = sub_1DD6DEDE0(v214, &v670);
  v217 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v215);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v218);
  v219 = sub_1DD710A9C(&qword_1ECD11BC0, &qword_1DD8899C8);
  sub_1DD6DF3FC(v219, &v669);
  v221 = *(v220 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v222);
  sub_1DD6E0C6C();
  v224 = sub_1DD6ED230(v223);
  v225 = type metadata accessor for ActionResponse(v224);
  v226 = sub_1DD6DEDE0(v225, &v666);
  v228 = *(v227 + 64);
  MEMORY[0x1EEE9AC00](v226);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v229);
  v230 = sub_1DD710A9C(&qword_1ECD11BC8, &qword_1DD8899D0);
  sub_1DD6DF3FC(v230, &v665);
  v232 = *(v231 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v233);
  sub_1DD6E0C6C();
  v235 = sub_1DD6ED230(v234);
  v236 = type metadata accessor for SystemPromptResolution(v235);
  v237 = sub_1DD6DEDE0(v236, &v662);
  v239 = *(v238 + 64);
  MEMORY[0x1EEE9AC00](v237);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v240);
  v241 = sub_1DD710A9C(&qword_1ECD11BD0, &qword_1DD8899D8);
  sub_1DD6DF3FC(v241, &v661);
  v243 = *(v242 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v244);
  sub_1DD6E0C6C();
  v246 = sub_1DD6ED230(v245);
  v247 = type metadata accessor for SystemPrompt(v246);
  v248 = sub_1DD6DEDE0(v247, &v658);
  v250 = *(v249 + 64);
  MEMORY[0x1EEE9AC00](v248);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v251);
  v252 = sub_1DD710A9C(&qword_1ECD11BD8, &qword_1DD8899E0);
  sub_1DD6DF3FC(v252, &v657);
  v254 = *(v253 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v255);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v256);
  v257 = sub_1DD710A9C(&qword_1ECD11BE0, &qword_1DD8899E8);
  sub_1DD6DF3FC(v257, &v656);
  v259 = *(v258 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v260);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v261);
  v262 = sub_1DD710A9C(&qword_1ECD11BE8, &qword_1DD8899F0);
  sub_1DD6DF3FC(v262, &v653);
  v264 = *(v263 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v265);
  sub_1DD6E0C6C();
  v267 = sub_1DD6ED230(v266);
  v268 = type metadata accessor for MessagePayload.ClientActionResult(v267);
  v269 = sub_1DD6DEDE0(v268, &v650);
  v271 = *(v270 + 64);
  MEMORY[0x1EEE9AC00](v269);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v272);
  v273 = sub_1DD710A9C(&qword_1ECD11BF0, &qword_1DD8899F8);
  sub_1DD6DF3FC(v273, &v649);
  v275 = *(v274 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v276);
  sub_1DD6E0C6C();
  v278 = sub_1DD6ED230(v277);
  v279 = type metadata accessor for MessagePayload.ClientAction(v278);
  v280 = sub_1DD6DEDE0(v279, &v646);
  v282 = *(v281 + 64);
  MEMORY[0x1EEE9AC00](v280);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v283);
  v284 = sub_1DD710A9C(&qword_1ECD11BF8, &qword_1DD889A00);
  sub_1DD6DF3FC(v284, &v645);
  v286 = *(v285 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v287);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v288);
  v289 = sub_1DD710A9C(&qword_1ECD11C00, &qword_1DD889A08);
  sub_1DD6DF3FC(v289, &v643);
  v291 = *(v290 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v292);
  sub_1DD6E0C6C();
  v294 = sub_1DD6ED230(v293);
  v295 = type metadata accessor for MessagePayload.ClientEffectResolved(v294);
  v296 = sub_1DD6DEDE0(v295, &v640);
  v298 = *(v297 + 64);
  MEMORY[0x1EEE9AC00](v296);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v299);
  v300 = sub_1DD710A9C(&qword_1ECD11C08, &qword_1DD889A10);
  sub_1DD6DF3FC(v300, &v639);
  v302 = *(v301 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v303);
  sub_1DD6E0C6C();
  v305 = sub_1DD6ED230(v304);
  v306 = type metadata accessor for MessagePayload.ClientEffectInvocation(v305);
  v307 = sub_1DD6DEDE0(v306, &v636);
  v309 = *(v308 + 64);
  MEMORY[0x1EEE9AC00](v307);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v310);
  v311 = sub_1DD710A9C(&qword_1ECD11C10, &qword_1DD889A18);
  sub_1DD6DF3FC(v311, &v635);
  v313 = *(v312 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v314);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v315);
  v316 = sub_1DD710A9C(&qword_1ECD11C18, &qword_1DD889A20);
  sub_1DD6DF3FC(v316, &v633);
  v318 = *(v317 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v319);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v320);
  v321 = sub_1DD710A9C(&qword_1ECD11C20, &qword_1DD889A28);
  sub_1DD6DF3FC(v321, &v631);
  v323 = *(v322 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v324);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v325);
  v326 = sub_1DD710A9C(&qword_1ECD11C28, &qword_1DD889A30);
  sub_1DD6DF3FC(v326, &v629);
  v328 = *(v327 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v329);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v330);
  v331 = sub_1DD710A9C(&qword_1ECD11C30, &qword_1DD889A38);
  sub_1DD6DF3FC(v331, &v627);
  v333 = *(v332 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v334);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v335);
  v336 = sub_1DD710A9C(&qword_1ECD11C38, &qword_1DD889A40);
  sub_1DD6DF3FC(v336, &v625);
  v338 = *(v337 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v339);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v340);
  v341 = sub_1DD710A9C(&qword_1ECD11C40, &qword_1DD889A48);
  sub_1DD6DF3FC(v341, &v623);
  v343 = *(v342 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v344);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v345);
  v346 = sub_1DD710A9C(&qword_1ECD11C48, &qword_1DD889A50);
  sub_1DD6DF3FC(v346, &v621);
  v348 = *(v347 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v349);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v350);
  v351 = sub_1DD710A9C(&qword_1ECD11C50, &qword_1DD889A58);
  sub_1DD6DF3FC(v351, &v619);
  v353 = *(v352 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v354);
  sub_1DD6E0C6C();
  v356 = sub_1DD6ED230(v355);
  v357 = type metadata accessor for MessagePayload.StepExecutedWithReturnedValue(v356);
  v358 = sub_1DD6DEDE0(v357, &v616);
  v360 = *(v359 + 64);
  MEMORY[0x1EEE9AC00](v358);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v361);
  v362 = sub_1DD710A9C(&qword_1ECD11C58, &qword_1DD889A60);
  sub_1DD6DF3FC(v362, &v615);
  v364 = *(v363 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v365);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v366);
  v367 = sub_1DD710A9C(&qword_1ECD11C60, &qword_1DD889A68);
  sub_1DD6DF3FC(v367, &v613);
  v369 = *(v368 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v370);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v371);
  v372 = sub_1DD710A9C(&qword_1ECD11C68, &qword_1DD889A70);
  sub_1DD6DF3FC(v372, &v611);
  v374 = *(v373 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v375);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v376);
  v377 = sub_1DD710A9C(&qword_1ECD11C70, &qword_1DD889A78);
  sub_1DD6DF3FC(v377, &v610);
  v379 = *(v378 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v380);
  sub_1DD6E0C6C();
  v382 = sub_1DD6ED230(v381);
  v383 = type metadata accessor for MessagePayload.Request(v382);
  v384 = sub_1DD6DEDE0(v383, &v606);
  v386 = *(v385 + 64);
  MEMORY[0x1EEE9AC00](v384);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v387);
  v388 = sub_1DD710A9C(&qword_1ECD11C78, &qword_1DD889A80);
  sub_1DD6DF3FC(v388, &v605);
  v390 = *(v389 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v391);
  sub_1DD6E7258();
  v392 = type metadata accessor for MessagePayload.UserTurnStarted(0);
  v393 = sub_1DD6DE1C4(v392);
  v395 = *(v394 + 64);
  MEMORY[0x1EEE9AC00](v393);
  sub_1DD6ED3C0();
  v396 = type metadata accessor for MessagePayload(0);
  v397 = sub_1DD8247B4(v396);
  v399 = *(v398 + 64);
  MEMORY[0x1EEE9AC00](v397);
  sub_1DD824734();
  v400 = sub_1DD710A9C(&qword_1ECD11C80, &qword_1DD889A88);
  sub_1DD6DF3FC(v400, &a12);
  v704 = v401;
  v403 = *(v402 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v404);
  sub_1DD6F0A58();
  v406 = *(v28 + 24);
  v405 = *(v28 + 32);
  sub_1DD6E1C64();
  sub_1DD6FAA1C();
  v706 = v24;
  sub_1DD6EF0F4();
  sub_1DD875BB0();
  sub_1DD6E5344();
  sub_1DD826894();
  sub_1DD6E5870();
  sub_1DD6E0F70();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD6E5B50(&v607);
      v710[0] = 1;
      sub_1DD8028FC();
      sub_1DD6E6CD4(&v608);
      sub_1DD825F98();
      sub_1DD6E1E84(v468);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v610);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v469 = sub_1DD6FC4B0(&v561);
      v470(v469);
      goto LABEL_55;
    case 2u:
      v710[0] = 2;
      sub_1DD6F9C40();
      sub_1DD6E6CD4(&v609);
      sub_1DD6F9C94();
      sub_1DD6E374C(&v611);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v437 = &v562;
      goto LABEL_52;
    case 3u:
      v710[0] = 3;
      sub_1DD802854();
      sub_1DD6E6CD4(&v612);
      sub_1DD8028A8();
      sub_1DD6E374C(&v613);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v437 = &v563;
      goto LABEL_52;
    case 4u:
      v710[0] = 4;
      sub_1DD8027AC();
      sub_1DD6E6CD4(&v614);
      sub_1DD802800();
      sub_1DD6E374C(&v615);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v437 = &v564;
      goto LABEL_52;
    case 5u:
      sub_1DD6E5B50(&v617);
      v710[0] = 5;
      sub_1DD802758();
      sub_1DD6E6CD4(&v618);
      sub_1DD825EF0();
      sub_1DD6E1E84(v484);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v619);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v485 = sub_1DD6FC4B0(&v565);
      v486(v485);
      goto LABEL_55;
    case 6u:
      v495 = *v23;
      v496 = *(v23 + 8);
      v497 = *(v23 + 16);
      v710[0] = 6;
      sub_1DD8026B0();
      sub_1DD825698(&v620);
      sub_1DD6F0A74();
      sub_1DD82708C();
      *v710 = v495;
      v710[8] = v496;
      *&v710[16] = v497;
      sub_1DD802704();
      v498 = v589;
      sub_1DD826DD4();
      v499 = sub_1DD824BFC(&v566);
      v500(v499, v498);
      v501 = sub_1DD824880(&a9);
      v502(v501, v23);
      sub_1DD71900C(v495);
      goto LABEL_50;
    case 7u:
      v459 = *v23;
      v458 = *(v23 + 8);
      v460 = *(v23 + 16);
      v461 = *(v23 + 24);
      v710[0] = 7;
      sub_1DD802608();
      sub_1DD825698(&v622);
      sub_1DD6F0A74();
      v463 = *(v462 - 256);
      sub_1DD875910();
      *v710 = v459;
      *&v710[8] = v458;
      v710[16] = v460;
      *&v710[24] = v461;
      sub_1DD80265C();
      sub_1DD6FAC4C(&v623);
      sub_1DD826DD4();
      v448 = &v567;
      goto LABEL_24;
    case 8u:
      v508 = *(v23 + 8);
      v705 = *v23;
      v509 = *(v23 + 16);
      v510 = *(v23 + 24);
      v512 = *(v23 + 32);
      v511 = *(v23 + 40);
      v710[0] = 8;
      sub_1DD802560();
      sub_1DD825CA4(&v624);
      sub_1DD6F0A74();
      sub_1DD827830();
      *v710 = v705;
      *&v710[8] = v508;
      v703 = v508;
      v705 = v509;
      *&v710[16] = v509;
      v710[24] = v510;
      *&v710[32] = v512;
      *&v710[40] = v511;
      sub_1DD8025B4();
      v513 = v593;
      sub_1DD826A40();
      v514 = sub_1DD6E1858(&v568);
      v515(v514, v513);
      v516 = sub_1DD6FA9F4(&a9);
      v517(v516, v23);

      sub_1DD826894();
      goto LABEL_38;
    case 9u:
      v442 = *v23;
      v443 = *(v23 + 8);
      v445 = *(v23 + 16);
      v444 = *(v23 + 24);
      v710[0] = 9;
      sub_1DD8024B8();
      sub_1DD825698(&v626);
      sub_1DD6F0A74();
      v447 = *(v446 - 256);
      sub_1DD875910();
      *v710 = v442;
      v710[8] = v443;
      *&v710[16] = v445;
      *&v710[24] = v444;
      sub_1DD80250C();
      sub_1DD6FAC4C(&v627);
      sub_1DD826DD4();
      v448 = &v569;
LABEL_24:
      v464 = sub_1DD6FAC78(v448);
      v465(v464);
      v466 = sub_1DD6E1858(&a9);
      goto LABEL_37;
    case 0xAu:
      sub_1DD8273D8();
      v710[0] = 10;
      sub_1DD802410();
      sub_1DD825CA4(&v628);
      sub_1DD6F0A74();
      sub_1DD82708C();
      sub_1DD8273CC();
      sub_1DD802464();
      sub_1DD6FAC4C(&v629);
      sub_1DD826A40();
      v413 = &v570;
      goto LABEL_36;
    case 0xBu:
      v418 = *v23;
      v436 = *(v23 + 8);
      v710[0] = 11;
      sub_1DD802368();
      sub_1DD6F9BEC(&v630);
      sub_1DD6F0A74();
      sub_1DD6E4110();
      *v710 = v418;
      *&v710[8] = v436;
      sub_1DD8023BC();
      sub_1DD6FE84C(&v631);
      v419 = &v571;
      goto LABEL_48;
    case 0xCu:
      v418 = *v23;
      v441 = *(v23 + 8);
      v710[0] = 12;
      sub_1DD8022C0();
      sub_1DD6F9BEC(&v632);
      sub_1DD6F0A74();
      sub_1DD6E4110();
      *v710 = v418;
      *&v710[8] = v441;
      sub_1DD802314();
      sub_1DD6FE84C(&v633);
      v419 = &v572;
      goto LABEL_48;
    case 0xDu:
      v490 = *v23;
      v710[0] = 13;
      sub_1DD802218();
      sub_1DD6F9BEC(&v634);
      sub_1DD6F3128();
      sub_1DD875910();
      *v710 = v490;
      sub_1DD80226C();
      sub_1DD8255D0(&v635);
      sub_1DD8759D0();
      v491 = sub_1DD6DF174(&v573);
      v492(v491);
      v493 = sub_1DD6E6CB0(&a9);
      goto LABEL_49;
    case 0xEu:
      sub_1DD6E5B50(&v637);
      v710[0] = 14;
      sub_1DD8021C4();
      sub_1DD6E6CD4(&v638);
      sub_1DD826028();
      sub_1DD6E1E84(v430);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v639);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v431 = sub_1DD6FC4B0(&v574);
      v432(v431);
      goto LABEL_55;
    case 0xFu:
      sub_1DD6E5B50(&v641);
      v710[0] = 15;
      sub_1DD802170();
      sub_1DD6E6CD4(&v642);
      sub_1DD825FB0();
      sub_1DD6E1E84(v455);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v643);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v456 = sub_1DD6FC4B0(&v575);
      v457(v456);
      goto LABEL_55;
    case 0x10u:
      memcpy(v710, v23, sizeof(v710));
      v708[0] = 16;
      sub_1DD8020C8();
      sub_1DD6E6CD4(&v644);
      memcpy(v708, v710, sizeof(v708));
      sub_1DD80211C();
      sub_1DD6E374C(&v645);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v423 = sub_1DD6FC4B0(&v576);
      v424(v423);
      v425 = sub_1DD702E84(&a9);
      v426(v425, v20);
      sub_1DD800214(v710);
      goto LABEL_58;
    case 0x11u:
      sub_1DD6E5B50(&v647);
      v710[0] = 17;
      sub_1DD802074();
      sub_1DD6E6CD4(&v648);
      sub_1DD825F50();
      sub_1DD6E1E84(v474);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v649);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v475 = sub_1DD6FC4B0(&v577);
      v476(v475);
      goto LABEL_55;
    case 0x12u:
      sub_1DD6E5B50(&v651);
      v710[0] = 18;
      sub_1DD802020();
      sub_1DD6E6CD4(&v652);
      sub_1DD825EC0();
      sub_1DD6E1E84(v503);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v653);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v504 = sub_1DD6FC4B0(&v578);
      v505(v504);
      goto LABEL_55;
    case 0x13u:
      v528 = *v23;
      v701 = *(v23 + 8);
      v529 = *(v23 + 16);
      v530 = *(v23 + 24);
      v532 = *(v23 + 32);
      v531 = *(v23 + 40);
      v710[0] = 19;
      sub_1DD801F78();
      sub_1DD8269BC(&v654);
      sub_1DD6F0A74();
      sub_1DD827830();
      v702 = v528;
      *v710 = v528;
      v533 = v701;
      *&v710[8] = v701;
      *&v710[16] = v529;
      v703 = v529;
      *&v710[24] = v530;
      *&v710[32] = v532;
      v705 = v531;
      *&v710[40] = v531;
      sub_1DD801FCC();
      sub_1DD827280();
      sub_1DD6DEDD4(&v579);
      v534 = sub_1DD825980();
      v535(v534);
      v536 = sub_1DD6FA9F4(&a9);
      v537(v536, v23);
      sub_1DD6E6658(v702, v533);
      sub_1DD6E6658(v703, v530);
      sub_1DD826894();
      goto LABEL_50;
    case 0x14u:
      v418 = *v23;
      v483 = *(v23 + 8);
      v710[0] = 20;
      sub_1DD801ED0();
      sub_1DD6F9BEC(&v655);
      sub_1DD6F0A74();
      sub_1DD6E4110();
      *v710 = v418;
      *&v710[8] = v483;
      sub_1DD801F24();
      sub_1DD6FE84C(&v657);
      v419 = &v580;
      goto LABEL_48;
    case 0x15u:
      sub_1DD6E5B50(&v659);
      v710[0] = 21;
      sub_1DD801E7C();
      sub_1DD6E6CD4(&v660);
      sub_1DD825ED8();
      sub_1DD6E1E84(v487);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v661);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v488 = sub_1DD6FC4B0(&v581);
      v489(v488);
      goto LABEL_55;
    case 0x16u:
      sub_1DD6E5B50(&v663);
      v710[0] = 22;
      sub_1DD801E28();
      sub_1DD6E6CD4(&v664);
      sub_1DD6FAD50();
      sub_1DD6E1E84(v522);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v665);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v523 = sub_1DD6FC4B0(&v582);
      v524(v523);
      goto LABEL_55;
    case 0x17u:
      sub_1DD6E5B50(&v667);
      v710[0] = 23;
      sub_1DD801DD4();
      sub_1DD6E6CD4(&v668);
      sub_1DD825E90();
      sub_1DD6E1E84(v543);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v669);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v544 = sub_1DD6FC4B0(&v583);
      v545(v544);
      goto LABEL_55;
    case 0x18u:
      sub_1DD6E5B50(&v671);
      v710[0] = 24;
      sub_1DD801D80();
      sub_1DD6E6CD4(&v672);
      sub_1DD825FC8();
      sub_1DD6E1E84(v452);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v673);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v453 = sub_1DD6FC4B0(&v584);
      v454(v453);
      goto LABEL_55;
    case 0x19u:
      sub_1DD6E5B50(&v675);
      v710[0] = 25;
      sub_1DD801D2C();
      sub_1DD6E6CD4(&v676);
      sub_1DD825FE0();
      sub_1DD6E1E84(v449);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v677);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v450 = sub_1DD6FC4B0(&v585);
      v451(v450);
      goto LABEL_55;
    case 0x1Au:
      sub_1DD6E5B50(&v679);
      v710[0] = 26;
      sub_1DD801CD8();
      sub_1DD6E6CD4(&v680);
      sub_1DD825E60();
      sub_1DD6E1E84(v554);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v682);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v555 = sub_1DD6FC4B0(&v586);
      v556(v555);
      goto LABEL_55;
    case 0x1Bu:
      v418 = *v23;
      v417 = *(v23 + 8);
      v710[0] = 27;
      sub_1DD801C30();
      sub_1DD6F9BEC(&v681);
      sub_1DD6F0A74();
      sub_1DD6E4110();
      *v710 = v418;
      *&v710[8] = v417;
      sub_1DD801C84();
      sub_1DD6FE84C(&v683);
      v419 = &v587;
      goto LABEL_48;
    case 0x1Cu:
      v418 = *v23;
      v546 = *(v23 + 8);
      v710[0] = 28;
      sub_1DD801B88();
      sub_1DD6F9BEC(&v684);
      sub_1DD6F0A74();
      sub_1DD6E4110();
      *v710 = v418;
      *&v710[8] = v546;
      sub_1DD801BDC();
      sub_1DD6FE84C(&v685);
      v419 = &v588;
      goto LABEL_48;
    case 0x1Du:
      v710[0] = 29;
      sub_1DD801AE0();
      sub_1DD6E6CD4(&v686);
      sub_1DD801B34();
      sub_1DD6E374C(&v687);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v437 = &v589;
LABEL_52:
      v549 = sub_1DD6FC4B0(v437);
      v550(v549);
      goto LABEL_56;
    case 0x1Eu:
      v418 = *v23;
      v518 = *(v23 + 8);
      v710[0] = 30;
      sub_1DD801A38();
      sub_1DD6F9BEC(&v688);
      sub_1DD6F0A74();
      sub_1DD6E4110();
      *v710 = v418;
      *&v710[8] = v518;
      sub_1DD801A8C();
      sub_1DD6FE84C(&v689);
      v419 = &v590;
LABEL_48:
      v547 = sub_1DD824880(v419);
      v548(v547, v418);
      v493 = sub_1DD6FC4B0(&a9);
LABEL_49:
      v494(v493);
      goto LABEL_50;
    case 0x1Fu:
      sub_1DD6E5B50(&v691);
      v710[0] = 31;
      sub_1DD8019E4();
      sub_1DD6E6CD4(&v692);
      sub_1DD825F80();
      sub_1DD6E1E84(v471);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v693);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v472 = sub_1DD6FC4B0(&v591);
      v473(v472);
      goto LABEL_55;
    case 0x20u:
      sub_1DD6E5B50(&v695);
      v710[0] = 32;
      sub_1DD801990();
      sub_1DD6E6CD4(&v696);
      sub_1DD6FF5DC();
      sub_1DD6E1E84(v519);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v697);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v520 = sub_1DD6FC4B0(&v592);
      v521(v520);
      goto LABEL_55;
    case 0x21u:
      sub_1DD6E5B50(&v699);
      v710[0] = 33;
      sub_1DD6FDB5C();
      sub_1DD6E6CD4(&v700);
      sub_1DD826010();
      sub_1DD6E1E84(v433);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v701);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v434 = sub_1DD6FC4B0(&v593);
      v435(v434);
      goto LABEL_55;
    case 0x22u:
      sub_1DD6E5B50(&v703);
      v710[0] = 34;
      sub_1DD703164();
      sub_1DD6E6CD4(&v704);
      sub_1DD826058();
      sub_1DD6E1E84(v420);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v705);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v421 = sub_1DD6FC4B0(&v594);
      v422(v421);
      goto LABEL_55;
    case 0x23u:
      sub_1DD8273D8();
      v710[0] = 35;
      sub_1DD80193C();
      sub_1DD825CA4(&v706);
      sub_1DD6F0A74();
      sub_1DD82708C();
      sub_1DD8273CC();
      sub_1DD800760();
      sub_1DD6FAC4C(&v707);
      sub_1DD826A40();
      v413 = &v595;
      goto LABEL_36;
    case 0x24u:
      sub_1DD8273D8();
      v710[0] = 36;
      sub_1DD8018E8();
      sub_1DD825CA4(v708);
      sub_1DD6F0A74();
      sub_1DD82708C();
      sub_1DD8273CC();
      sub_1DD6FF638();
      sub_1DD6FAC4C(&v708[8]);
      sub_1DD826A40();
      v413 = &v596;
      goto LABEL_36;
    case 0x25u:
      sub_1DD6E5B50(&v708[24]);
      v710[0] = 37;
      sub_1DD801894();
      sub_1DD6E6CD4(&v708[32]);
      sub_1DD826070();
      sub_1DD6E1E84(v414);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v708[40]);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v415 = sub_1DD6FC4B0(&v597);
      v416(v415);
      goto LABEL_55;
    case 0x26u:
      sub_1DD6E5B50(&v708[56]);
      v710[0] = 38;
      sub_1DD801840();
      sub_1DD6E6CD4(&v708[64]);
      sub_1DD825E78();
      sub_1DD6E1E84(v551);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v708[72]);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v552 = sub_1DD6FC4B0(&v598);
      v553(v552);
      goto LABEL_55;
    case 0x27u:
      sub_1DD6E5B50(&v708[88]);
      v710[0] = 39;
      sub_1DD8017EC();
      sub_1DD6E6CD4(&v708[96]);
      sub_1DD825EA8();
      sub_1DD6E1E84(v525);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v709);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v526 = sub_1DD6FC4B0(&v599);
      v527(v526);
      goto LABEL_55;
    case 0x28u:
      sub_1DD6E5B50(&v710[8]);
      v710[0] = 40;
      sub_1DD801798();
      sub_1DD6E6CD4(&v710[16]);
      sub_1DD7014A0();
      sub_1DD6E1E84(v438);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v710[24]);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v439 = sub_1DD6FC4B0(&v600);
      v440(v439);
      goto LABEL_55;
    case 0x29u:
      v477 = *(v23 + 16);
      *v710 = *v23;
      *&v710[16] = v477;
      v478 = *(v23 + 48);
      *&v710[32] = *(v23 + 32);
      *&v710[48] = v478;
      v708[0] = 41;
      sub_1DD8016F0();
      sub_1DD6E6CD4(&v710[32]);
      *v708 = *v710;
      *&v708[16] = *&v710[16];
      *&v708[32] = *&v710[32];
      *&v708[48] = *&v710[48];
      sub_1DD801744();
      sub_1DD6E374C(&v710[48]);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v479 = sub_1DD6FC4B0(&v601);
      v480(v479);
      v481 = sub_1DD702E84(&a9);
      v482(v481, v20);
      sub_1DD801448(v710);
      goto LABEL_58;
    case 0x2Au:
      v538 = *v23;
      v539 = *(v23 + 8);
      v710[0] = 42;
      sub_1DD801648();
      sub_1DD825CA4(&v710[40]);
      sub_1DD6F0A74();
      sub_1DD6E4110();
      *v710 = v538;
      *&v710[8] = v539;
      sub_1DD80169C();
      v540 = v697;
      sub_1DD826A40();
      v541 = sub_1DD6E1858(&v602);
      v542(v541, v540);
      v466 = sub_1DD6E5DE8(&a9);
      goto LABEL_37;
    case 0x2Bu:
      sub_1DD8273D8();
      v710[0] = 43;
      sub_1DD8015A0();
      sub_1DD825CA4(&v710[64]);
      sub_1DD6F0A74();
      sub_1DD82708C();
      sub_1DD8273CC();
      sub_1DD8015F4();
      sub_1DD6FAC4C(&v710[72]);
      sub_1DD826A40();
      v413 = &v603;
LABEL_36:
      v506 = sub_1DD6E1858(v413);
      v507(v506, v405);
      v466 = sub_1DD824880(&a9);
LABEL_37:
      v467(v466, v23);
LABEL_38:

LABEL_50:

      goto LABEL_58;
    case 0x2Cu:
      sub_1DD6E5B50(&v710[88]);
      v710[0] = 44;
      sub_1DD80154C();
      sub_1DD6E6CD4(&v710[96]);
      sub_1DD826040();
      sub_1DD6E1E84(v427);
      sub_1DD6FAD44();
      sub_1DD6E374C(&v711);
      sub_1DD8255A4();
      sub_1DD8759D0();
      v428 = sub_1DD6FC4B0(&v604);
      v429(v428);
LABEL_55:
      sub_1DD6E5ABC();
LABEL_56:
      v410 = sub_1DD702E84(&a9);
      v411 = v20;
      goto LABEL_57;
    default:
      sub_1DD6E40D8();
      sub_1DD6E59B8();
      v710[0] = 0;
      sub_1DD802950();
      sub_1DD6F3128();
      sub_1DD875910();
      sub_1DD826088();
      sub_1DD6E1E84(v407);
      sub_1DD8276C8();
      sub_1DD6FAC4C(&v605);
      sub_1DD826A40();
      v408 = sub_1DD6E1858(&v560);
      v409(v408, v405);
      sub_1DD7061EC();
      sub_1DD6E5ABC();
      v410 = sub_1DD6E6CB0(&a9);
LABEL_57:
      v412(v410, v411);
LABEL_58:
      sub_1DD825AC0();
      sub_1DD6E0C78();
      return;
  }
}

uint64_t sub_1DD6ED13C()
{

  return sub_1DD8750F0();
}

uint64_t _s16IntelligenceFlow14ResponseVisualV6UITypeO20PluginSnippetPayloadV15pluginModelData8bundleIdAG10Foundation0K0V_SStcfC_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1DD6ED1B4()
{
  v2 = *(v0 - 208);

  return sub_1DD875800();
}

uint64_t sub_1DD6ED1D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 216);

  return sub_1DD875800();
}

uint64_t sub_1DD6ED240()
{

  return sub_1DD730620(v0 + 256, v0 + 320, v1, v2);
}

uint64_t sub_1DD6ED2A4()
{

  return sub_1DD875B90();
}

uint64_t sub_1DD6ED37C()
{

  return sub_1DD710A9C(v0, v1);
}

uint64_t sub_1DD6ED3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{

  return sub_1DD843248(&a33, &a25);
}

uint64_t sub_1DD6ED414()
{
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(v0[3] + 24);

  return swift_task_alloc();
}

uint64_t sub_1DD6ED4F0()
{

  return sub_1DD8759D0();
}

uint64_t sub_1DD6ED54C()
{

  return swift_allocObject();
}

uint64_t sub_1DD6ED588(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 16) = v2;

  return type metadata accessor for SessionIdentityPack();
}

__n128 sub_1DD6ED5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __n128 a11, __int128 a12)
{
  *v12 = a9;
  v12[1] = a10;
  result = a11;
  v12[2] = a11;
  v12[3] = a12;
  return result;
}

uint64_t sub_1DD6ED614(uint64_t result)
{
  v3 = result & ~(-1 << *(v1 + 32));
  v4 = *(*(v2 - 72) + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3;
  return result;
}

uint64_t sub_1DD6ED63C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  return result;
}

uint64_t sub_1DD6ED6C0()
{

  return swift_getAssociatedConformanceWitness();
}

void sub_1DD6ED6DC()
{

  JUMPOUT(0x1E12B4C10);
}

uint64_t sub_1DD6ED724()
{

  return sub_1DD8759D0();
}

void *sub_1DD6ED760(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __src)
{

  return memcpy(a1, &__src, 0x58uLL);
}

uint64_t sub_1DD6ED778()
{

  return sub_1DD753308();
}

uint64_t sub_1DD6ED7B4()
{

  return sub_1DD874910();
}

uint64_t sub_1DD6ED7E8()
{
  v2 = *(v0 - 152);

  return sub_1DD875800();
}

uint64_t getEnumTagSinglePayload for GenderSettings(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 65283 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65283 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65284;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_1DD6ED8E0()
{
  result = qword_1EE015AA8;
  if (!qword_1EE015AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015AA8);
  }

  return result;
}

void GenderSettings.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD10948, &qword_1DD887060);
  sub_1DD6DDEAC(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DEA6C();
  v10 = *v0;
  v15 = v0[1];
  v11 = v3[4];
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD6EDAA4();
  sub_1DD6E17D8();
  sub_1DD6F0A68();
  sub_1DD875BB0();
  sub_1DD6EDAF8();
  sub_1DD6DE334();
  sub_1DD8759D0();
  if (!v1)
  {
    sub_1DD6DE334();
    sub_1DD8759D0();
  }

  v12 = *(v6 + 8);
  v13 = sub_1DD6DEA04();
  v14(v13);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

unint64_t sub_1DD6EDAA4()
{
  result = qword_1EE018670;
  if (!qword_1EE018670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018670);
  }

  return result;
}

unint64_t sub_1DD6EDAF8()
{
  result = qword_1EE015850;
  if (!qword_1EE015850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015850);
  }

  return result;
}

void GenderSettings.Gender.encode(to:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD108E8, &qword_1DD887010);
  v6 = sub_1DD6DDEAC(v5);
  v52 = v7;
  v53 = v6;
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6E0C6C();
  v51 = v11;
  v12 = sub_1DD710A9C(&qword_1ECD108F0, &qword_1DD887018);
  v13 = sub_1DD6DDEAC(v12);
  v49 = v14;
  v50 = v13;
  v16 = *(v15 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6E0C6C();
  v48 = v18;
  v19 = sub_1DD710A9C(&qword_1ECD108F8, &qword_1DD887020);
  v20 = sub_1DD6DDEAC(v19);
  v46 = v21;
  v47 = v20;
  v23 = *(v22 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6E0C6C();
  v45 = v25;
  v26 = sub_1DD710A9C(&qword_1ECD10900, &qword_1DD887028);
  v27 = sub_1DD6DDEAC(v26);
  v43 = v28;
  v44 = v27;
  v30 = *(v29 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6DEBA0();
  v32 = sub_1DD710A9C(&qword_1ECD10908, &qword_1DD887030);
  sub_1DD6DDEAC(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD6E7258();
  v38 = *v0;
  v39 = v4[4];
  sub_1DD6DEA7C(v4, v4[3]);
  sub_1DD6EDF28();
  sub_1DD875BB0();
  switch(v38)
  {
    case 1:
      sub_1DD6E4104();
      sub_1DD6EF100();
      v40 = v45;
      sub_1DD6E710C();
      sub_1DD875910();
      v42 = v46;
      v41 = v47;
      goto LABEL_6;
    case 2:
      sub_1DD797F38();
      v40 = v48;
      sub_1DD6E710C();
      sub_1DD875910();
      v42 = v49;
      v41 = v50;
      goto LABEL_6;
    case 3:
      sub_1DD797EE4();
      v40 = v51;
      sub_1DD6E710C();
      sub_1DD875910();
      v42 = v52;
      v41 = v53;
LABEL_6:
      (*(v42 + 8))(v40, v41);
      break;
    default:
      sub_1DD6EF240();
      sub_1DD6E710C();
      sub_1DD875910();
      (*(v43 + 8))(v1, v44);
      break;
  }

  (*(v34 + 8))(v2, v32);
  sub_1DD6E0C78();
}

unint64_t sub_1DD6EDF28()
{
  result = qword_1EE0186D8[0];
  if (!qword_1EE0186D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0186D8);
  }

  return result;
}

void sub_1DD6EDF7C()
{
  v2 = v0[2];
  *(v1 - 120) = v0[3];
  *(v1 - 112) = v2;
  v3 = v0[4];
  *(v1 - 136) = v0[5];
  *(v1 - 128) = v3;
}

uint64_t sub_1DD6EDF90(uint64_t a1, uint64_t a2)
{

  return sub_1DD76DFE0(a1, a2, v2, v3);
}

uint64_t sub_1DD6EDFA8()
{
  v2 = *(v0 - 256);

  return sub_1DD8758D0();
}

uint64_t SessionIdentityPack.clientGroupId.getter()
{
  v0 = type metadata accessor for SessionIdentityPack();
  sub_1DD6E0508(v0);
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  return sub_1DD6DDEFC();
}

uint64_t ClientAction.Definition.ParameterDefinition.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1DD6DDEFC();
}

uint64_t ClientAction.Definition.ParameterDefinition.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1DD6DDEFC();
}

uint64_t ClientAction.Definition.ParameterDefinition.valueType.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_1DD6E38A4();
  v5 = sub_1DD6DE1C4(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v2, v5);
}

uint64_t ClientAction.Definition.outputType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClientAction.Definition(0) + 28);
  v4 = sub_1DD874FC0();
  v5 = sub_1DD6DE1C4(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t ClientAction.Definition.positiveExampleInvocations.getter()
{
  v1 = *(v0 + *(type metadata accessor for ClientAction.Definition(0) + 36));
}

uint64_t ClientAction.Definition.negativeExampleInvocations.getter()
{
  v1 = *(v0 + *(type metadata accessor for ClientAction.Definition(0) + 40));
}

uint64_t sub_1DD6EE234()
{

  return sub_1DD75DBD4(v1, v0);
}

uint64_t sub_1DD6EE2A4()
{
  v2 = *(v0 - 120);

  return sub_1DD875800();
}

uint64_t sub_1DD6EE2E0()
{

  return sub_1DD8758D0();
}

uint64_t SessionIdentityPack.clientSessionId.getter()
{
  v0 = type metadata accessor for SessionIdentityPack();
  sub_1DD6E0508(v0);
  v2 = *v1;
  v3 = v1[1];

  return sub_1DD6DDEFC();
}

uint64_t SessionIdentityPack.clientApplicationId.getter()
{
  v0 = type metadata accessor for SessionIdentityPack();
  sub_1DD6E0508(v0);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return sub_1DD6DDEFC();
}

uint64_t sub_1DD6EE398()
{
  v0 = sub_1DD6EE3EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DD6EE3EC()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = sub_1DD8755C0();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  return v0;
}

uint64_t sub_1DD6EE5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 72);
  if (!v3)
  {
    v10 = 0u;
    v11 = 0u;
LABEL_11:
    sub_1DD6EE7DC(&v10, &qword_1ECD0E838, &unk_1DD87AA30);
    return 0;
  }

  v4 = sub_1DD875110();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_1DD8755F0();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_11;
  }

  sub_1DD6EE7DC(&v10, &qword_1ECD0E838, &unk_1DD87AA30);
  v6 = sub_1DD875110();
  [v3 integerForKey_];

  sub_1DD710A9C(&qword_1ECD0E858, &qword_1DD88A080);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD6EE70C()
{
  sub_1DD718F6C(v0);
}

uint64_t sub_1DD6EE744()
{

  return sub_1DD753360(v0, type metadata accessor for OverridesCommon_StringPredicate);
}

uint64_t sub_1DD6EE7DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1DD710A9C(a2, a3);
  sub_1DD6E0540(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void *sub_1DD6EE838()
{

  return memcpy((v0 + 144), (v0 + 72), 0x48uLL);
}

uint64_t sub_1DD6EE854()
{
  result = *v0;
  if ((v0[1] & 0x2000000000000000) == 0)
  {
    v2 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1DD6EE86C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, char a4@<W8>)
{
  *v5 = a1;
  *(v5 + 8) = *a2;
  *(v5 + 24) = a4;
  *(v5 + 32) = *a3;
  *(v5 + 48) = v4;
  result = type metadata accessor for ResponseOutput(0);
  v7 = *(result + 36);
  return result;
}

char *sub_1DD6EE8E0(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_1DD6EE91C(a1);
}

char *sub_1DD6EE91C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 80);
  v6 = sub_1DD8755C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  (*(*(v4 + 88) + 8))(v5);
  v11 = sub_1DD874C50();
  (*(*(v11 - 8) + 8))(a1, v11);
  (*(v7 + 32))(&v2[*(*v2 + 96)], v10, v6);
  return v2;
}

uint64_t static Preferences.subscript.getter(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  if (qword_1EE015B18 != -1)
  {
    sub_1DD6E6A14();
  }

  swift_beginAccess();
  memcpy(__dst, &unk_1EE0267D8, sizeof(__dst));
  memcpy(v2, &unk_1EE0267D8, sizeof(v2));
  sub_1DD6EEC9C(__dst, v4);
  swift_getAtKeyPath();
  memcpy(v4, v2, sizeof(v4));
  return sub_1DD6EED04(v4);
}

uint64_t sub_1DD6EECD4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD6EECF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = a1;
}

uint64_t sub_1DD6EED74()
{
  v2 = *(v0 - 120);

  return sub_1DD8758D0();
}

uint64_t sub_1DD6EEDF4()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

__n128 sub_1DD6EEE24(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1DD6EEE50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1DD6DE1C4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD6EEEA8()
{
  v1 = sub_1DD6DE290();
  v3 = v2(v1);
  sub_1DD6DE1C4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1DD6EEEFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1DD6DE1C4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD6EEF84(char a1)
{
  result = 0x6669636570736E75;
  switch(a1)
  {
    case 1:
      result = 0x656C616D6566;
      break;
    case 2:
      result = 1701601645;
      break;
    case 3:
      result = 0x6C61727475656ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD6EF024(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1DD6DEAA4(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 4);
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

      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1DD6DEAA4(v8);
}

uint64_t sub_1DD6EF0B0(char a1)
{
  if (a1)
  {
    return 0x646E654772657375;
  }

  else
  {
    return 0x6E65476563696F76;
  }
}

unint64_t sub_1DD6EF100()
{
  result = qword_1EE0186B0;
  if (!qword_1EE0186B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0186B0);
  }

  return result;
}

_BYTE *sub_1DD6EF15C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1DD6EE784(result, v6);
        break;
      case 2:
        result = sub_1DD6E3744(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1DD6EF218);
      case 4:
        result = sub_1DD6E991C(result, v6);
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
          result = sub_1DD6E5904(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD6EF240()
{
  result = qword_1EE018688;
  if (!qword_1EE018688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018688);
  }

  return result;
}

unint64_t sub_1DD6EF294()
{
  result = qword_1EE015340;
  if (!qword_1EE015340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015340);
  }

  return result;
}

uint64_t CrossAPIAssociationKey.encode(to:)(void *a1)
{
  v4 = sub_1DD710A9C(&qword_1ECD0E018, &qword_1DD876B80);
  v5 = sub_1DD6E125C(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v16 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD6EF42C();
  sub_1DD875BB0();
  sub_1DD875970();
  return (*(v7 + 8))(v11, v2);
}

unint64_t sub_1DD6EF42C()
{
  result = qword_1EE017018[0];
  if (!qword_1EE017018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE017018);
  }

  return result;
}

uint64_t sub_1DD6EF494()
{
  v2 = sub_1DD6DE290();
  result = type metadata accessor for SessionConfiguration(v2);
  v4 = *(v1 + *(result + 44));
  if (!v4)
  {
    return result;
  }

  empty = xpc_array_create_empty();
  v6 = *(v4 + 16);
  if (v6)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1DD6EF668(0, v6, 0);
    v7 = v18;
    v8 = *(v18 + 16);
    v9 = (v4 + 72);
    do
    {
      v11 = *v9;
      v9 += 6;
      v10 = v11;
      v12 = v8 + 1;
      v13 = *(v18 + 24);

      if (v8 >= v13 >> 1)
      {
        sub_1DD6EF668(v13 > 1, v8 + 1, 1);
      }

      *(v18 + 16) = v12;
      *(v18 + 8 * v8++ + 32) = v10;
      --v6;
    }

    while (v6);
    goto LABEL_10;
  }

  v7 = MEMORY[0x1E69E7CC0];
  v12 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v12)
  {
LABEL_10:
    v14 = 32;
    do
    {
      if (*(v7 + v14))
      {
        v15 = *(v7 + v14);

        v16 = sub_1DD874C90();
      }

      else
      {
        v16 = xpc_null_create();
      }

      xpc_array_append_value(empty, v16);

      swift_unknownObjectRelease();
      v14 += 8;
      --v12;
    }

    while (v12);
  }

  v17 = sub_1DD875190();
  swift_unknownObjectRetain();
  xpc_dictionary_set_value(v0, (v17 + 32), empty);
  swift_unknownObjectRelease_n();
}

uint64_t sub_1DD6EF668(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DD6EF688(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD6EF688(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1DD710A9C(&qword_1ECD0FA38, &qword_1DD881438);
      v10 = swift_allocObject();
      v11 = j__malloc_size_0(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1DD785054((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1DD710A9C(&qword_1ECD0FA40, &qword_1DD881440);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1DD6EF7A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = sub_1DD875110();
  v13 = sub_1DD874750();
  v15[4] = a2;
  v15[5] = a3;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1DD6FC2C0;
  v15[3] = &unk_1F58E6708;
  v14 = _Block_copy(v15);

  [a1 startSessionWithId:v12 configData:v13 xpcData:a8 with:v14];
  _Block_release(v14);
}

void SessionConfiguration.init(from:)()
{
  sub_1DD6DED2C();
  v64 = v0;
  v66 = v2;
  v54 = v3;
  v4 = *(*(sub_1DD710A9C(&qword_1ECD0E358, &unk_1DD878670) - 8) + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E0C6C();
  v61 = v6;
  v63 = sub_1DD710A9C(&qword_1ECD10858, &qword_1DD886FB0);
  sub_1DD6DDEAC(v63);
  v60 = v7;
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6E7258();
  v11 = type metadata accessor for SessionConfiguration(0);
  v12 = (v11 - 8);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v15 = 5;
  *(v15 + 1) = 0;
  v16 = v15 + 8;
  *(v15 + 2) = 0;
  v15[24] = 2;
  v17 = v12[10];
  v18 = type metadata accessor for LocaleSettings(0);
  v58 = v17;
  v59 = v18;
  sub_1DD6E0C90();
  sub_1DD6E5E68(v19, v20, v21, v22);
  v57 = v12[11];
  v15[v57] = 2;
  v23 = v12[12];
  *&v15[v23] = 512;
  v55 = v12[13];
  v56 = v23;
  *&v15[v55] = 0;
  v24 = &v15[v12[14]];
  *v24 = 0;
  *(v24 + 1) = 0;
  *(v24 + 4) = 0;
  v25 = v12[15];
  *&v15[v25] = 4;
  v26 = v12[16];
  v15[v26] = 2;
  v27 = v12[17];
  v65 = v15;
  v28 = &v15[v27];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = v66[4];
  sub_1DD6DEA7C(v66, v66[3]);
  sub_1DD6E80A8();
  v62 = v1;
  v30 = v64;
  sub_1DD875B90();
  if (v30)
  {
    sub_1DD6E1EC8(v66);
  }

  else
  {
    v64 = v24;
    v52 = v26;
    v53 = v25;
    v51 = v28;
    v32 = v60;
    v31 = v61;
    sub_1DD6EFEF0();
    sub_1DD6E40F8();
    sub_1DD875860();
    v33 = v65;
    *v65 = v67;
    sub_1DD710A9C(&qword_1ECD10850, &unk_1DD886FA0);
    sub_1DD6FF8F4();
    sub_1DD6E86F0(&unk_1EE0139F0);
    sub_1DD6E40F8();
    sub_1DD875860();
    *v16 = v67;
    sub_1DD710A9C(&qword_1ECD10818, &qword_1DD886DA8);
    sub_1DD6EFF88();
    sub_1DD6DF928(&qword_1EE013A10);
    sub_1DD6E40F8();
    sub_1DD875860();
    *(v33 + 2) = v67;
    LOBYTE(v67) = 3;
    v33[24] = sub_1DD875830();
    LOBYTE(v67) = 4;
    sub_1DD6E88EC();
    sub_1DD6E881C(v34);
    sub_1DD875860();
    sub_1DD6E7470(v31, &v33[v58]);
    sub_1DD6F0510();
    sub_1DD6DE5DC();
    v33[v57] = v67;
    sub_1DD6F0570();
    sub_1DD6DE5DC();
    *&v33[v56] = v67;
    sub_1DD6F0604();
    sub_1DD6DE5DC();
    v35 = v67;
    v36 = v55;
    v37 = *&v33[v55];

    *&v33[v36] = v35;
    sub_1DD6F0D50();
    sub_1DD6DE5DC();
    v38 = v67;
    v39 = v68;
    v40 = v69;
    v41 = v64;
    v42 = *(v64 + 1);

    *v41 = v38;
    *(v41 + 1) = v39;
    *(v41 + 4) = v40;
    sub_1DD6F0DE4();
    sub_1DD6DE5DC();
    *&v65[v53] = v67;
    LOBYTE(v67) = 10;
    v65[v52] = sub_1DD875830();
    sub_1DD6F17DC();
    sub_1DD6E40F8();
    sub_1DD79A3A4();
    sub_1DD875860();
    v43 = *(v32 + 8);
    v44 = sub_1DD6E21D0();
    v45(v44);
    v46 = v67;
    v47 = v68;
    v48 = v51;
    v49 = *(v51 + 1);

    *v48 = v46;
    *(v48 + 1) = v47;
    sub_1DD6F04B8(v65, v54);
    sub_1DD6E1EC8(v66);
    sub_1DD6DDEFC();
  }

  sub_1DD6EEEA8();
  sub_1DD6E0C78();
}

unint64_t sub_1DD6EFEF0()
{
  result = qword_1EE015450;
  if (!qword_1EE015450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015450);
  }

  return result;
}

uint64_t sub_1DD6EFF5C()
{

  return sub_1DD874910();
}

IntelligenceFlow::SessionConfiguration::PlannerType_optional __swiftcall SessionConfiguration.PlannerType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD8757F0();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void LocaleSettings.init(from:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v43 = v4;
  v46 = sub_1DD874890();
  v5 = sub_1DD6DDEAC(v46);
  v44 = v6;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v39 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v39 - v15;
  v16 = sub_1DD710A9C(&qword_1ECD108E0, &qword_1DD887008);
  v17 = sub_1DD6DDEAC(v16);
  v47 = v18;
  v48 = v17;
  v20 = *(v19 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6DE340();
  v22 = type metadata accessor for LocaleSettings(0);
  v23 = sub_1DD6DE1C4(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v3[4];
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD6E8B14();
  v49 = v1;
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1EC8(v3);
  }

  else
  {
    v41 = v22;
    v42 = v14;
    v50 = v3;
    v40 = v11;
    sub_1DD6DF414();
    v30 = sub_1DD6E881C(v29);
    v31 = v45;
    v32 = v46;
    sub_1DD8758D0();
    v33 = v27;
    v39 = *(v44 + 32);
    v39(v27, v31, v32);
    sub_1DD6DEC54();
    v34 = v42;
    v45 = v30;
    sub_1DD8758D0();
    v35 = v34;
    v36 = v41;
    v37 = v39;
    v39(&v27[*(v41 + 20)], v35, v32);
    sub_1DD8758D0();
    v38 = v50;
    (*(v47 + 8))(v49, v48);
    v37(v33 + *(v36 + 24), v40, v32);
    sub_1DD6F04B8(v33, v43);
    sub_1DD6E1EC8(v38);
    sub_1DD6EEEA8();
  }

  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

uint64_t sub_1DD6F04B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DD6E0D28();
  v5 = v4(v3);
  sub_1DD6DE1C4(v5);
  v7 = *(v6 + 16);
  v8 = sub_1DD6DDEFC();
  v9(v8);
  return a2;
}

unint64_t sub_1DD6F0510()
{
  result = qword_1EE015440;
  if (!qword_1EE015440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015440);
  }

  return result;
}

uint64_t sub_1DD6F0564()
{
  result = v0;
  v3 = *(v1 - 256);
  return result;
}

unint64_t sub_1DD6F0570()
{
  result = qword_1EE0155C0;
  if (!qword_1EE0155C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0155C0);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for DebuggerSettings(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1DD6F0604()
{
  result = qword_1EE015520;
  if (!qword_1EE015520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015520);
  }

  return result;
}

void ClientIdentityChain.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DD6DED2C();
  sub_1DD6E1C58();
  v13 = sub_1DD710A9C(&qword_1ECD10A28, &qword_1DD8870F0);
  sub_1DD6DDEAC(v13);
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DEBA0();
  sub_1DD6DE568();
  sub_1DD6E902C();
  sub_1DD6E4218();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (!v11)
  {
    sub_1DD710A9C(&qword_1ECD10A20, &qword_1DD8870E8);
    sub_1DD7982D4(&unk_1EE013A00);
    sub_1DD8758D0();
    v17 = sub_1DD6E21F4();
    v18(v17);
    *v12 = a10;
  }

  sub_1DD6E1EC8(v10);
  sub_1DD6E0C78();
}

void ClientIdentity.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD6E1C58();
  v3 = sub_1DD710A9C(&qword_1ECD10A40, &qword_1DD887108);
  sub_1DD6DDEAC(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD6E9318();
  sub_1DD6FC48C();
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD6F0AC8();
    sub_1DD6E6CC4();
    sub_1DD875860();
    sub_1DD710A9C(&qword_1ECD10A38, &qword_1DD887100);
    sub_1DD6FF8F4();
    sub_1DD6E9994(&unk_1EE015858);
    sub_1DD6F178C();
    sub_1DD8758D0();
    v7 = sub_1DD6DEA2C();
    v8(v7);
    *v2 = v9;
    *(v2 + 16) = v10;
    *(v2 + 32) = v11;
    *(v2 + 40) = v9;

    sub_1DD6E1EC8(v0);
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD6F09F8()
{
  v2 = *(v0 - 72);

  return sub_1DD874AD0();
}

uint64_t sub_1DD6F0A9C()
{

  return swift_task_alloc();
}

unint64_t sub_1DD6F0AC8()
{
  result = qword_1EE015BA0;
  if (!qword_1EE015BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015BA0);
  }

  return result;
}

void AuditToken.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD6E1C58();
  v3 = sub_1DD710A9C(&qword_1ECD10A10, &qword_1DD8870D8);
  sub_1DD6DDEAC(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD6E9838();
  sub_1DD6FC48C();
  if (!v1)
  {
    sub_1DD6F0C40();
    sub_1DD6E6CC4();
    sub_1DD8758D0();
    v7 = sub_1DD6DEA2C();
    v8(v7);
    *v2 = v9;
    v2[1] = v10;
  }

  sub_1DD6E1EC8(v0);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

unint64_t sub_1DD6F0C40()
{
  result = qword_1EE013AA0;
  if (!qword_1EE013AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE013AA0);
  }

  return result;
}

uint64_t sub_1DD6F0C94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DD6E1EC8(a1);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v5, v6, v7, a2);
  v8 = sub_1DD8755C0();
  sub_1DD6DE1C4(v8);
  (*(v9 + 8))(a3);
  sub_1DD6E0C90();
  return sub_1DD6E5E68(v10, v11, v12, a2);
}

__n128 sub_1DD6F0D3C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

unint64_t sub_1DD6F0D50()
{
  result = qword_1EE015AA0;
  if (!qword_1EE015AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015AA0);
  }

  return result;
}

uint64_t sub_1DD6F0DA4(uint64_t result, int a2, int a3)
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

unint64_t sub_1DD6F0DE4()
{
  result = qword_1EE015838;
  if (!qword_1EE015838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015838);
  }

  return result;
}

void GenderSettings.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14)
{
  sub_1DD6DED2C();
  sub_1DD6E1C58();
  v17 = sub_1DD710A9C(&qword_1ECD10950, &qword_1DD887068);
  sub_1DD6DDEAC(v17);
  v19 = *(v18 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD6EDAA4();
  sub_1DD6FC48C();
  if (!v15)
  {
    sub_1DD6F0FB0();
    sub_1DD6E710C();
    sub_1DD6F178C();
    sub_1DD8758D0();
    sub_1DD6E710C();
    sub_1DD6F178C();
    sub_1DD8758D0();
    v21 = sub_1DD6DEA2C();
    v22(v21);
    *v16 = a14;
    v16[1] = a12;
  }

  sub_1DD6E1EC8(v14);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

unint64_t sub_1DD6F0FB0()
{
  result = qword_1EE015848;
  if (!qword_1EE015848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015848);
  }

  return result;
}

void GenderSettings.Gender.init(from:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v49 = v4;
  v52 = sub_1DD710A9C(&qword_1ECD10920, &qword_1DD887038);
  sub_1DD6DDEAC(v52);
  v48 = v5;
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E0C6C();
  v51 = v9;
  v10 = sub_1DD710A9C(&qword_1ECD10928, &qword_1DD887040);
  sub_1DD6DDEAC(v10);
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6E0C6C();
  v14 = sub_1DD710A9C(&qword_1ECD10930, &qword_1DD887048);
  sub_1DD6DDEAC(v14);
  v16 = *(v15 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DDFE4();
  v18 = sub_1DD710A9C(&qword_1ECD10938, &qword_1DD887050);
  sub_1DD6DDEAC(v18);
  v20 = *(v19 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6DEBA0();
  v22 = sub_1DD710A9C(&qword_1ECD10940, &qword_1DD887058);
  sub_1DD6DDEAC(v22);
  v50 = v23;
  v25 = *(v24 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6DEA6C();
  v27 = v3[4];
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD6EDF28();
  sub_1DD6E17D8();
  sub_1DD875B90();
  if (v0)
  {
    goto LABEL_8;
  }

  v53 = v3;
  v28 = v1;
  v29 = sub_1DD875900();
  sub_1DD6ED750(v29, 0);
  if (v31 == v30 >> 1)
  {
    goto LABEL_7;
  }

  sub_1DD6E6120();
  if (v35 >= (v34 >> 1))
  {
    __break(1u);
    JUMPOUT(0x1DD6F15B0);
  }

  v36 = *(v33 + v32);
  sub_1DD6ED830(v32 + 1);
  v38 = v37;
  v40 = v39;
  swift_unknownObjectRelease();
  if (v38 != v40 >> 1)
  {
LABEL_7:
    v44 = sub_1DD875740();
    swift_allocError();
    v46 = v45;
    v47 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v46 = &type metadata for GenderSettings.Gender;
    sub_1DD875810();
    sub_1DD6DF100();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v50 + 8))(v28, v22);
    v3 = v53;
LABEL_8:
    sub_1DD6E1EC8(v3);
    goto LABEL_9;
  }

  switch(v36)
  {
    case 1:
      sub_1DD6E4104();
      sub_1DD6EF100();
      sub_1DD6ED1B4();
      swift_unknownObjectRelease();
      goto LABEL_13;
    case 2:
      sub_1DD797F38();
      sub_1DD6ED1B4();
      swift_unknownObjectRelease();
LABEL_13:
      v41 = sub_1DD6DED98();
      goto LABEL_14;
    case 3:
      sub_1DD797EE4();
      sub_1DD875800();
      swift_unknownObjectRelease();
      (*(v48 + 8))(v51, v52);
      goto LABEL_15;
    default:
      sub_1DD6EF240();
      sub_1DD6ED1B4();
      swift_unknownObjectRelease();
      v41 = sub_1DD6DED98();
      v43 = v18;
LABEL_14:
      v42(v41, v43);
LABEL_15:
      (*(v50 + 8))(v28, v22);
      *v49 = v36;
      sub_1DD6E1EC8(v53);
      break;
  }

LABEL_9:
  sub_1DD6E0C78();
}

uint64_t sub_1DD6F15D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD6F1600(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD6F1600(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6669636570736E75 && a2 == 0xEB00000000646569;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C616D6566 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701601645 && a2 == 0xE400000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C61727475656ELL && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD875A30();

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

unint64_t sub_1DD6F17DC()
{
  result = qword_1EE015338;
  if (!qword_1EE015338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015338);
  }

  return result;
}

uint64_t CrossAPIAssociationKey.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = sub_1DD710A9C(&qword_1ECD0E020, &qword_1DD876B88);
  v7 = sub_1DD6E125C(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v19 - v12;
  v14 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD6EF42C();
  sub_1DD875B90();
  if (!v2)
  {
    v15 = sub_1DD875870();
    v17 = v16;
    (*(v9 + 8))(v13, v3);
    *a2 = v15;
    a2[1] = v17;
  }

  return sub_1DD6E1EC8(a1);
}

_BYTE *storeEnumTagSinglePayload for CrossAPIAssociationKey.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x1DD6F1A48);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SessionConfiguration.identityChain.getter()
{
  v2 = sub_1DD6E0A5C();
  *v0 = *(v1 + *(type metadata accessor for SessionConfiguration(v2) + 44));
}

void __swiftcall ClientSessionIdentityPack.init(clientSessionId:clientApplicationId:clientGroupId:)(IntelligenceFlow::ClientSessionIdentityPack *__return_ptr retstr, IntelligenceFlow::ClientSessionID clientSessionId, IntelligenceFlow::ClientApplicationID clientApplicationId, IntelligenceFlow::ClientGroupID_optional clientGroupId)
{
  retstr->clientSessionId = clientSessionId;
  retstr->clientApplicationId = clientApplicationId;
  retstr->clientGroupId.value.value._countAndFlagsBits = clientGroupId.value.value._countAndFlagsBits;
  retstr->clientGroupId.value.value._object = clientGroupId.value.value._object;
}

uint64_t sub_1DD6F1B94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD874820();

  return sub_1DD6E5E68(a1, a2, a2, v4);
}

uint64_t sub_1DD6F1BF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD874820();

  return sub_1DD6E5ED0(a1, a2, v4);
}

uint64_t sub_1DD6F1C3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionID();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 SessionIdentityPack.init(sessionId:clientIdentity:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DD6F1C3C(a1, a3);
  v4 = type metadata accessor for SessionIdentityPack();
  sub_1DD6E0508(v4);
  v5 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v5;
  result = *(a2 + 32);
  *(v6 + 32) = result;
  return result;
}

uint64_t SessionConfiguration.participantSettings.getter()
{
  v2 = sub_1DD6E0A5C();
  result = type metadata accessor for SessionConfiguration(v2);
  *v0 = *(v1 + *(result + 36));
  return result;
}

uint64_t SessionConfiguration.debuggerSettings.getter()
{
  v2 = sub_1DD6E0A5C();
  result = type metadata accessor for SessionConfiguration(v2);
  *v0 = *(v1 + *(result + 40));
  return result;
}

uint64_t static IntelligenceFlowPreferencesDomain.userDefaultsContainer.getter()
{
  if (qword_1EE015BD8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE015BE0;
  v1 = qword_1EE015BE0;
  return v0;
}

uint64_t sub_1DD6F1DD8@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v30 = a5;
  v31 = a2;
  v32 = a1;
  v29 = *(a3 - 8);
  v10 = *(v29 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v26);
  if (sub_1DD6E5ED0(v24, 1, v15) == 1)
  {
    return sub_1DD6E5E68(a6, 1, 1, a4);
  }

  (*(v16 + 32))(v20, v24, v15);
  v32(v20, v13);
  result = (*(v16 + 8))(v20, v15);
  if (v6)
  {
    return (*(v29 + 32))(v30, v13, a3);
  }

  return result;
}

uint64_t Preference.userDefaultsValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (v2 + *(a1 + 56));
  v5 = v4[1];
  v11 = *v4;
  v12 = v5;
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);

  sub_1DD710A9C(&qword_1ECD0E848, &qword_1DD87A870);
  sub_1DD6F1DD8(sub_1DD6F2678, v8, MEMORY[0x1E69E73E0], v10, v6, a2);
}

uint64_t sub_1DD6F210C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v51 = a4;
  v7 = sub_1DD710A9C(&qword_1ECD16C10, &qword_1DD878230);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v47 - v12;
  v14 = sub_1DD8755C0();
  v49 = *(v14 - 8);
  v50 = v14;
  v15 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v48 = &v47 - v16;
  v18 = *a1;
  v17 = a1[1];
  v19 = *(a2 + *(type metadata accessor for Preference() + 60));
  if (!v19)
  {
    v54 = 0u;
    v55 = 0u;
LABEL_9:
    sub_1DD6FDBEC(&v54);
    return sub_1DD6E5E68(v51, 1, 1, a3);
  }

  v20 = sub_1DD875110();
  v21 = [v19 objectForKey_];

  if (v21)
  {
    sub_1DD8755F0();
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  v54 = v52;
  v55 = v53;
  if (!*(&v53 + 1))
  {
    goto LABEL_9;
  }

  sub_1DD730C48(&v54, v56);
  if (swift_dynamicCastMetatype())
  {
    v22 = sub_1DD875110();
    v23 = [v19 BOOLForKey_];

    sub_1DD6E1EC8(v56);
    LOBYTE(v54) = v23;
    v24 = &unk_1ECD0E860;
    v25 = &unk_1DD87A860;
  }

  else if (swift_dynamicCastMetatype())
  {
    v27 = sub_1DD875110();
    v28 = [v19 integerForKey_];

    sub_1DD6E1EC8(v56);
    *&v54 = v28;
    BYTE8(v54) = 0;
    v24 = &qword_1ECD0E858;
    v25 = &qword_1DD88A080;
  }

  else if (swift_dynamicCastMetatype())
  {
    v29 = sub_1DD875110();
    [v19 floatForKey_];
    v31 = v30;

    sub_1DD6E1EC8(v56);
    LODWORD(v54) = v31;
    BYTE4(v54) = 0;
    v24 = &unk_1ECD0E850;
    v25 = &unk_1DD87A850;
  }

  else if (swift_dynamicCastMetatype())
  {
    v32 = sub_1DD875110();
    [v19 doubleForKey_];
    v34 = v33;

    sub_1DD6E1EC8(v56);
    *&v54 = v34;
    BYTE8(v54) = 0;
    v24 = &unk_1ECD0E840;
    v25 = &unk_1DD87A840;
  }

  else
  {
    v38 = sub_1DD874740();
    if (swift_dynamicCastMetatype())
    {
      v39 = sub_1DD875110();
      v40 = [v19 URLForKey_];

      if (v40)
      {
        sub_1DD874700();

        v41 = 0;
      }

      else
      {
        v41 = 1;
      }

      sub_1DD6E1EC8(v56);
      sub_1DD6E5E68(v11, v41, 1, v38);
      sub_1DD6FB7B4(v11, v13);
      v35 = v48;
      if (swift_dynamicCast())
      {
        v37 = v35;
        v36 = 0;
      }

      else
      {
        v37 = v35;
        v36 = 1;
      }

      goto LABEL_18;
    }

    if (!swift_dynamicCastMetatype())
    {
      sub_1DD730C48(v56, &v54);
      goto LABEL_17;
    }

    v42 = sub_1DD875110();
    v43 = [v19 stringForKey_];

    if (v43)
    {
      v44 = sub_1DD875140();
      v46 = v45;
    }

    else
    {
      v44 = 0;
      v46 = 0;
    }

    sub_1DD6E1EC8(v56);
    *&v54 = v44;
    *(&v54 + 1) = v46;
    v24 = &unk_1ECD0E848;
    v25 = &unk_1DD87A870;
  }

  sub_1DD710A9C(v24, v25);
LABEL_17:
  v35 = v48;
  v36 = swift_dynamicCast() ^ 1;
  v37 = v35;
LABEL_18:
  sub_1DD6E5E68(v37, v36, 1, a3);
  return (*(v49 + 32))(v51, v35, v50);
}

uint64_t sub_1DD6F2678@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return sub_1DD6F210C(a1, v2[5], v2[3], a2);
}

uint64_t sub_1DD6F26FC()
{
  sub_1DD6E48E0();
  v1 = v0[3];
  v2 = *(v0[4] + 16);
  type metadata accessor for SessionServerMessage(0);
  sub_1DD6F3284();
  sub_1DD6DEC94(v3, 255, v4);
  v5 = sub_1DD8745F0();
  v0[5] = v5;
  v0[6] = v6;
  v7 = *(v0[4] + 24);
  v0[7] = v7;
  if (v7)
  {
    v8 = v5;
    v9 = v6;
    v10 = swift_task_alloc();
    v0[8] = v10;
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    v11 = *(MEMORY[0x1E69C5B18] + 4);

    v12 = swift_task_alloc();
    v0[9] = v12;
    sub_1DD6E0EC8();
    *v12 = v0;
    v12[1] = sub_1DD6FA448;
    sub_1DD702AA0();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2EEA0]();
}

uint64_t Preference.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 32);
  v44 = *(a1 + 16);
  v45 = v6;
  swift_getAssociatedTypeWitness();
  v7 = sub_1DD8755C0();
  sub_1DD6DF290();
  v43 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  v14 = *(a1 + 24);
  v15 = sub_1DD8755C0();
  sub_1DD6DF290();
  v17 = *(v16 + 64);
  v19 = (MEMORY[0x1EEE9AC00])(v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (MEMORY[0x1EEE9AC00])(v19);
  v24 = &v40 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v40 - v25;
  v27 = *(a1 + 52);
  v46 = v28;
  (*(v28 + 16))(&v40 - v25, v3 + v27, v15);
  sub_1DD6DF31C(v26);
  if (v29)
  {
    v41 = a2;
    v42 = v15;
    Preference.userDefaultsValue.getter(a1, v24);
    sub_1DD6DF31C(v24);
    if (v29)
    {
      v30 = sub_1DD7317E4(a1, v13);
      v40 = &v40;
      v31 = *(v3 + 16);
      *&v32 = MEMORY[0x1EEE9AC00](v30);
      v33 = v45;
      *(&v40 - 6) = v44;
      *(&v40 - 5) = v14;
      *(&v40 - 4) = v33;
      *(&v40 - 3) = v32;
      sub_1DD6F1DD8(sub_1DD731A60, (&v40 - 8), MEMORY[0x1E69E73E0], v14, v34, v21);
      (*(v43 + 8))(v13, v7);
      sub_1DD6DF31C(v21);
      if (v29)
      {
        (*(*(v14 - 8) + 16))(v41, v3 + *(a1 + 48), v14);
        sub_1DD6DF31C(v21);
        v38 = v42;
        if (!v29)
        {
          (*(v46 + 8))(v21, v42);
        }
      }

      else
      {
        sub_1DD6E0540(v14);
        (*(v39 + 32))(v41, v21, v14);
        v38 = v42;
      }

      sub_1DD6DF31C(v24);
      if (!v29)
      {
        (*(v46 + 8))(v24, v38);
      }
    }

    else
    {
      sub_1DD6E0540(v14);
      (*(v37 + 32))(v41, v24, v14);
      v38 = v42;
    }

    result = sub_1DD6DF31C(v26);
    if (!v29)
    {
      return (*(v46 + 8))(v26, v38);
    }
  }

  else
  {
    sub_1DD6E0540(v14);
    return (*(v35 + 32))(a2, v26, v14);
  }

  return result;
}

uint64_t dispatch thunk of SessionReverseClient.send(message:)()
{
  sub_1DD6E1F54();
  v2 = v1;
  sub_1DD6DE6BC();
  v4 = *(v3 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 16) = v6;
  *v6 = v0;
  v6[1] = sub_1DD6FA5C4;

  return v8(v2);
}

uint64_t sub_1DD6F2D9C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return sub_1DD6E13F8();
}

void SessionServerMessage.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6FE1BC();
  v2 = sub_1DD710A9C(&qword_1ECD10BD8, &qword_1DD8890F8);
  sub_1DD6E49A8(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD6F3014();
  sub_1DD6E1808();
  sub_1DD825C8C();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v8);
  sub_1DD6E5FDC();
  sub_1DD8759D0();
  if (!v0)
  {
    v9 = type metadata accessor for SessionServerMessage(0);
    sub_1DD825AA8(v9);
    sub_1DD6E5FDC();
    sub_1DD8759D0();
    v10 = v1[6];
    sub_1DD6E5FDC();
    sub_1DD875960();
    sub_1DD82595C(v1[7]);
    sub_1DD6E6174();
    sub_1DD824BDC();
    sub_1DD875970();
    v11 = v1[8];
    sub_1DD82636C();
    type metadata accessor for MessagePayload(0);
    sub_1DD6E3758();
    sub_1DD6E1E84(v12);
    sub_1DD8265F0();
    sub_1DD6E63A8();
    sub_1DD8759D0();
    sub_1DD82595C(v1[9]);
    sub_1DD8267FC();
    sub_1DD824BDC();
    sub_1DD875970();
    v13 = v1[10];
    sub_1DD827548();
    sub_1DD874790();
    sub_1DD826214();
    sub_1DD6E1E84(v14);
    sub_1DD6E63A8();
    sub_1DD8759D0();
  }

  v15 = *(v4 + 8);
  v16 = sub_1DD6DEA04();
  v17(v16);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

unint64_t sub_1DD6F3014()
{
  result = qword_1EE0172C0[0];
  if (!qword_1EE0172C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0172C0);
  }

  return result;
}

uint64_t sub_1DD6F309C()
{

  return sub_1DD730620(v0 + 352, v0 + 440, v1, v2);
}

uint64_t sub_1DD6F30D0()
{

  return sub_1DD7533B8();
}

uint64_t sub_1DD6F30F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DD710A9C(a3, a4);
}

uint64_t sub_1DD6F3114()
{
  v1 = *(*(v0 - 160) + 8);
  result = *(v0 - 72);
  v3 = *(v0 - 144);
  return result;
}

uint64_t sub_1DD6F3168()
{
  *v0 = 5;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 2;
  v3 = type metadata accessor for SessionConfiguration(0);
  v4 = v3[8];
  v5 = type metadata accessor for LocaleSettings(0);
  sub_1DD6E5E68(v0 + v4, 1, 1, v5);
  *(v0 + v3[9]) = 2;
  *(v0 + v3[10]) = 512;
  *(v0 + v3[11]) = 0;
  v6 = v0 + v3[12];
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *(v0 + v3[13]) = 4;
  *(v0 + v3[14]) = 2;
  v7 = (v0 + v3[15]);
  *v7 = 0;
  v7[1] = 0;
  *v0 = v2;

  return sub_1DD6E7470(v1, v0 + v4);
}

void *sub_1DD6F3270(void *result)
{
  *(v1 + 136) = result;
  result[2] = v3;
  result[3] = v2;
  result[4] = v4;
  result[5] = v5;
  return result;
}

_BYTE *sub_1DD6F32B8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result = sub_1DD6EE784(result, v6);
        break;
      case 2:
        result = sub_1DD6E3744(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1DD6F3374);
      case 4:
        result = sub_1DD6E991C(result, v6);
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
          result = sub_1DD6E5904(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}
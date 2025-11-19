uint64_t sub_2529FF268(uint64_t a1, uint64_t a2)
{
  v2 = sub_2529E7424();
  v23 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
LABEL_22:
    v18 = v2;
    v3 = sub_252E378C4();
    v2 = v18;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v20 = v2;
      v21 = v2 & 0xC000000000000001;
      v5 = v2 & 0xFFFFFFFFFFFFFF8;
      v6 = v2 + 32;
      while (1)
      {
LABEL_5:
        if (v21)
        {
          v8 = MEMORY[0x2530ADF00](v4, v20);
          v9 = __OFADD__(v4++, 1);
          if (v9)
          {
LABEL_19:
            __break(1u);
LABEL_20:
            v17 = v23;
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *(v5 + 16))
          {
            __break(1u);
            goto LABEL_22;
          }

          v8 = *(v6 + 8 * v4);

          v9 = __OFADD__(v4++, 1);
          if (v9)
          {
            goto LABEL_19;
          }
        }

        v10 = *(a2 + 16);
        if (v10)
        {
          v11 = 0;
          while (2)
          {
            v12 = *(a2 + 32 + 8 * v11++);
            v13 = (*(*v8 + 336))();
            v14 = *(v13 + 16);
            v15 = 32;
            while (v14)
            {
              v16 = *(v13 + v15);
              v15 += 8;
              --v14;
              if (v16 == v12)
              {

                sub_252E37A94();
                v7 = *(v23 + 16);
                sub_252E37AC4();
                sub_252E37AD4();
                v2 = sub_252E37AA4();
                if (v4 == v3)
                {
                  goto LABEL_20;
                }

                goto LABEL_5;
              }
            }

            if (v11 != v10)
            {
              continue;
            }

            break;
          }
        }

        if (v4 == v3)
        {
          goto LABEL_20;
        }
      }
    }
  }

  v17 = MEMORY[0x277D84F90];
LABEL_24:

  return v17;
}

uint64_t sub_2529FF45C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_252E379A4();
    v6 = 0;
    v7 = v5 + 56;
    v8 = a1 + 32;
    while (1)
    {
      v12 = *(v8 + 8 * v6);
      v13 = *(v5 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v12);
      result = sub_252E37F14();
      v15 = ~(-1 << *(v5 + 32));
      v16 = result & v15;
      v17 = (result & v15) >> 6;
      v18 = *(v7 + 8 * v17);
      v19 = 1 << (result & v15);
      v20 = *(v5 + 48);
      if ((v19 & v18) != 0)
      {
        while (*(v20 + 8 * v16) != v12)
        {
          v16 = (v16 + 1) & v15;
          v17 = v16 >> 6;
          v18 = *(v7 + 8 * (v16 >> 6));
          v19 = 1 << v16;
          if (((1 << v16) & v18) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v7 + 8 * v17) = v19 | v18;
        *(v20 + 8 * v16) = v12;
        v9 = *(v5 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v5 + 16) = v11;
      }

      if (++v6 == v3)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2529FF590(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416A0, &qword_252E40968);
    v3 = sub_252E379A4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      v12 = *(v3 + 40);
      result = sub_252E37EB4();
      v14 = result & v7;
      v15 = (result & v7) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v7);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v11)
        {
          v14 = (v14 + 1) & v7;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_2529FF6BC(unint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = result;
  v4 = result >> 62;
  if (result >> 62)
  {
    v8 = a3;
    v9 = a2;
    result = sub_252E378C4();
    a2 = v9;
    a3 = v8;
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      result = sub_252E379A4();
      v5 = result;
      v6 = v3 & 0xFFFFFFFFFFFFFF8;
      if (!v4)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_252E378C4();
      v7 = result;
      if (!result)
      {
        return v5;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v5 = MEMORY[0x277D84FA0];
  v6 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v4)
  {
    goto LABEL_8;
  }

LABEL_4:
  v7 = *(v6 + 16);
  if (!v7)
  {
    return v5;
  }

LABEL_9:
  v10 = 0;
  v11 = v5 + 56;
  v34 = v7;
  v35 = v3 & 0xC000000000000001;
  v31 = v3 + 32;
  v32 = v3 & 0xFFFFFFFFFFFFFF8;
  v33 = v3;
  while (v35)
  {
    result = MEMORY[0x2530ADF00](v10, v3);
    v12 = result;
    v13 = __OFADD__(v10, 1);
    v14 = v10 + 1;
    if (v13)
    {
      goto LABEL_35;
    }

LABEL_19:
    v36 = v14;
    v15 = *(v5 + 40);
    sub_252E37EC4();
    sub_252E32E84();
    sub_2529FEBDC(&qword_27F540680, MEMORY[0x277CC95F0]);
    sub_252E36E94();
    v16 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType;
    MEMORY[0x2530AE390](*(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
    v17 = (v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v18 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v19 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    sub_252E37044();

    result = sub_252E37F14();
    v20 = -1 << *(v5 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    v23 = *(v11 + 8 * (v21 >> 6));
    v24 = 1 << v21;
    if (((1 << v21) & v23) != 0)
    {
      v25 = ~v20;
      do
      {
        v26 = *(*(v5 + 48) + 8 * v21);

        if ((sub_252E32E54() & 1) != 0 && *(v26 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) == *(v12 + v16))
        {
          if (*(v26 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *v17 && *(v26 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v17[1])
          {

LABEL_11:

            v3 = v33;
            goto LABEL_12;
          }

          v28 = sub_252E37DB4();

          if (v28)
          {
            goto LABEL_11;
          }
        }

        else
        {
        }

        v21 = (v21 + 1) & v25;
        v22 = v21 >> 6;
        v23 = *(v11 + 8 * (v21 >> 6));
        v24 = 1 << v21;
      }

      while ((v23 & (1 << v21)) != 0);
      v3 = v33;
    }

    *(v11 + 8 * v22) = v23 | v24;
    *(*(v5 + 48) + 8 * v21) = v12;
    v29 = *(v5 + 16);
    v13 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v13)
    {
      goto LABEL_36;
    }

    *(v5 + 16) = v30;
LABEL_12:
    v10 = v36;
    if (v36 == v34)
    {
      return v5;
    }
  }

  if (v10 >= *(v32 + 16))
  {
    goto LABEL_37;
  }

  v12 = *(v31 + 8 * v10);

  v13 = __OFADD__(v10, 1);
  v14 = v10 + 1;
  if (!v13)
  {
    goto LABEL_19;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_2529FFA08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541668, &qword_252E40930);
    v3 = sub_252E379A4();
    v4 = 0;
    v5 = v3 + 56;
    v36 = a1 + 32;
    v35 = v1;
    while (1)
    {
      v6 = *(v36 + v4);
      v7 = *(v3 + 40);
      sub_252E37EC4();
      AccessoryTypeSemantic.rawValue.getter();
      sub_252E37044();

      result = sub_252E37F14();
      v9 = ~(-1 << *(v3 + 32));
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v5 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) != 0)
      {
        while (1)
        {
          v14 = 0xE900000000000062;
          v15 = 0x6C7562746867696CLL;
          switch(*(*(v3 + 48) + v10))
          {
            case 1:
              v14 = 0xE800000000000000;
              v15 = 0x6B636F4C726F6F64;
              break;
            case 2:
              v14 = 0xE800000000000000;
              v15 = 0x6172656D61437069;
              break;
            case 3:
              v15 = 0x65526172656D6163;
              v14 = 0xEF676E6964726F63;
              break;
            case 4:
              v15 = 0xD000000000000011;
              v14 = 0x8000000252E65490;
              break;
            case 5:
              v15 = 0xD000000000000010;
              v14 = 0x8000000252E654B0;
              break;
            case 6:
              v14 = 0xE600000000000000;
              v15 = 0x74656C74756FLL;
              break;
            case 7:
              v14 = 0xE600000000000000;
              v15 = 0x686374697773;
              break;
            case 8:
              v14 = 0xEA00000000007461;
              v15 = 0x74736F6D72656874;
              break;
            case 9:
              v15 = 0x616C6C69746E6576;
              v14 = 0xEF6E61466E6F6974;
              break;
            case 0xA:
              v14 = 0xE600000000000000;
              v15 = 0x73646E696C62;
              break;
            case 0xB:
              v15 = 0x53636972656E6567;
              goto LABEL_51;
            case 0xC:
              v15 = 0x65536E6F69746F6DLL;
              v14 = 0xED000073726F736ELL;
              break;
            case 0xD:
              v15 = 0xD000000000000011;
              v14 = 0x8000000252E65510;
              break;
            case 0xE:
              v15 = 0x79746964696D7568;
              v14 = 0xEE00726F736E6553;
              break;
            case 0xF:
              v15 = 0xD000000000000010;
              v14 = 0x8000000252E65540;
              break;
            case 0x10:
              v15 = 0xD000000000000014;
              v14 = 0x8000000252E65560;
              break;
            case 0x11:
              v15 = 0xD000000000000013;
              v14 = 0x8000000252E65580;
              break;
            case 0x12:
              v17 = 0x53656B6F6D73;
              goto LABEL_48;
            case 0x13:
              v15 = 0x53746361746E6F63;
LABEL_51:
              v16 = 1869835877;
              goto LABEL_52;
            case 0x14:
              v15 = 0x657A69726F746F6DLL;
              v16 = 1869562980;
LABEL_52:
              v14 = v16 | 0xED00007200000000;
              break;
            case 0x15:
              v15 = 0x657A69726F746F6DLL;
              v14 = 0xEF776F646E695764;
              break;
            case 0x16:
              v17 = 0x53746867696CLL;
LABEL_48:
              v15 = v17 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
              v14 = 0xEB00000000726F73;
              break;
            case 0x17:
              v15 = 0x636E61707563636FLL;
              v14 = 0xEF726F736E655379;
              break;
            case 0x18:
              v14 = 0xEA0000000000726FLL;
              v15 = 0x736E65536B61656CLL;
              break;
            case 0x19:
              v14 = 0xE700000000000000;
              v15 = 0x79726574746162;
              break;
            case 0x1A:
              v14 = 0xE800000000000000;
              v15 = 0x6C6C6542726F6F64;
              break;
            case 0x1B:
              v14 = 0xEB00000000726569;
              v15 = 0x6669727550726961;
              break;
            case 0x1C:
              v15 = 0xD000000000000011;
              v14 = 0x8000000252E65610;
              break;
            case 0x1D:
              v14 = 0xE600000000000000;
              v15 = 0x726574616568;
              break;
            case 0x1E:
              v14 = 0xE600000000000000;
              v15 = 0x72656C6F6F63;
              break;
            case 0x1F:
              v14 = 0xE400000000000000;
              v15 = 1952541811;
              break;
            case 0x20:
              v15 = 0x7974697275636573;
              v14 = 0xEE006D6574737953;
              break;
            case 0x21:
              v14 = 0xEA00000000007265;
              v15 = 0x69666964696D7568;
              break;
            case 0x22:
              v15 = 0x6964696D75686564;
              v14 = 0xEC00000072656966;
              break;
            case 0x23:
              v15 = 0xD000000000000011;
              v14 = 0x8000000252E65660;
              break;
            case 0x24:
              v15 = 0x5F79616C70726961;
              v14 = 0xEF72656B61657073;
              break;
            case 0x25:
              v14 = 0xE800000000000000;
              v15 = 0x76745F656C707061;
              break;
            case 0x26:
              v15 = 0x5F74726F70726961;
              v14 = 0xEF73736572707865;
              break;
            case 0x27:
              v14 = 0xE700000000000000;
              v15 = 0x646F70656D6F68;
              break;
            case 0x28:
              v15 = 0x5F646F70656D6F68;
              v14 = 0xEC000000696E696DLL;
              break;
            case 0x29:
              v14 = 0xE400000000000000;
              v15 = 1684099177;
              break;
            case 0x2A:
              v14 = 0xE600000000000000;
              v15 = 0x656E6F685069;
              break;
            case 0x2B:
              v14 = 0xE700000000000000;
              v15 = 0x72656B61657073;
              break;
            case 0x2C:
              v15 = 0x69736976656C6574;
              v14 = 0xEA00000000006E6FLL;
              break;
            case 0x2D:
              v15 = 0x6974616769727269;
              v14 = 0xEF65766C61566E6FLL;
              break;
            case 0x2E:
              v14 = 0xE900000000000074;
              v15 = 0x654A7265776F6873;
              break;
            case 0x2F:
              v14 = 0xE600000000000000;
              v15 = 0x7265776F6873;
              break;
            case 0x30:
              v14 = 0xE400000000000000;
              v15 = 1802398067;
              break;
            case 0x31:
              v14 = 0xE900000000000072;
              v15 = 0x656C6B6E69727073;
              break;
            case 0x32:
              v15 = 0xD000000000000012;
              v14 = 0x8000000252E65350;
              break;
            case 0x33:
              v14 = 0xE800000000000000;
              v15 = 0x706F4D746F626F72;
              break;
            default:
              break;
          }

          v18 = 0x6C7562746867696CLL;
          v19 = 0xE900000000000062;
          switch(v6)
          {
            case 1:
              v19 = 0xE800000000000000;
              if (v15 == 0x6B636F4C726F6F64)
              {
                goto LABEL_161;
              }

              goto LABEL_162;
            case 2:
              v19 = 0xE800000000000000;
              if (v15 != 0x6172656D61437069)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 3:
              v19 = 0xEF676E6964726F63;
              if (v15 != 0x65526172656D6163)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 4:
              v19 = 0x8000000252E65490;
              if (v15 != 0xD000000000000011)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 5:
              v19 = 0x8000000252E654B0;
              if (v15 != 0xD000000000000010)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 6:
              v19 = 0xE600000000000000;
              if (v15 != 0x74656C74756FLL)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 7:
              v19 = 0xE600000000000000;
              if (v15 != 0x686374697773)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 8:
              v19 = 0xEA00000000007461;
              if (v15 != 0x74736F6D72656874)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 9:
              v19 = 0xEF6E61466E6F6974;
              if (v15 != 0x616C6C69746E6576)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 10:
              v19 = 0xE600000000000000;
              if (v15 != 0x73646E696C62)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 11:
              v27 = 0x53636972656E6567;
              goto LABEL_141;
            case 12:
              v27 = 0x65536E6F69746F6DLL;
              v28 = 0x73726F736ELL;
              goto LABEL_143;
            case 13:
              v19 = 0x8000000252E65510;
              if (v15 != 0xD000000000000011)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 14:
              v25 = 0x79746964696D7568;
              v26 = 0x726F736E6553;
              goto LABEL_131;
            case 15:
              v19 = 0x8000000252E65540;
              if (v15 != 0xD000000000000010)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 16:
              v19 = 0x8000000252E65560;
              if (v15 != 0xD000000000000014)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 17:
              v19 = 0x8000000252E65580;
              if (v15 != 0xD000000000000013)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 18:
              v30 = 0x53656B6F6D73;
              goto LABEL_136;
            case 19:
              v27 = 0x53746361746E6F63;
LABEL_141:
              v29 = 1869835877;
              goto LABEL_142;
            case 20:
              v27 = 0x657A69726F746F6DLL;
              v29 = 1869562980;
LABEL_142:
              v28 = v29 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
LABEL_143:
              v19 = v28 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              if (v15 != v27)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 21:
              v19 = 0xEF776F646E695764;
              if (v15 != 0x657A69726F746F6DLL)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 22:
              v30 = 0x53746867696CLL;
LABEL_136:
              v19 = 0xEB00000000726F73;
              if (v15 != (v30 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000))
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 23:
              v21 = 0x636E61707563636FLL;
              v22 = 0x6F736E655379;
              goto LABEL_148;
            case 24:
              v19 = 0xEA0000000000726FLL;
              if (v15 != 0x736E65536B61656CLL)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 25:
              v19 = 0xE700000000000000;
              if (v15 != 0x79726574746162)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 26:
              v19 = 0xE800000000000000;
              if (v15 != 0x6C6C6542726F6F64)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 27:
              v19 = 0xEB00000000726569;
              if (v15 != 0x6669727550726961)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 28:
              v19 = 0x8000000252E65610;
              if (v15 != 0xD000000000000011)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 29:
              v19 = 0xE600000000000000;
              v20 = 1952540008;
              goto LABEL_153;
            case 30:
              v19 = 0xE600000000000000;
              v20 = 1819242339;
              goto LABEL_153;
            case 31:
              v19 = 0xE400000000000000;
              if (v15 != 1952541811)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 32:
              v25 = 0x7974697275636573;
              v26 = 0x6D6574737953;
LABEL_131:
              v19 = v26 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
              if (v15 != v25)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 33:
              v19 = 0xEA00000000007265;
              if (v15 != 0x69666964696D7568)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 34:
              v23 = 0x6964696D75686564;
              v24 = 1919248742;
              goto LABEL_92;
            case 35:
              v19 = 0x8000000252E65660;
              if (v15 != 0xD000000000000011)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 36:
              v21 = 0x5F79616C70726961;
              v22 = 0x656B61657073;
LABEL_148:
              v19 = v22 & 0xFFFFFFFFFFFFLL | 0xEF72000000000000;
              if (v15 != v21)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 37:
              v19 = 0xE800000000000000;
              if (v15 != 0x76745F656C707061)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 38:
              v19 = 0xEF73736572707865;
              if (v15 != 0x5F74726F70726961)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 39:
              v19 = 0xE700000000000000;
              if (v15 != 0x646F70656D6F68)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 40:
              v23 = 0x5F646F70656D6F68;
              v24 = 1768843629;
LABEL_92:
              v19 = v24 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              if (v15 != v23)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 41:
              v19 = 0xE400000000000000;
              if (v15 != 1684099177)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 42:
              v19 = 0xE600000000000000;
              if (v15 != 0x656E6F685069)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 43:
              v19 = 0xE700000000000000;
              if (v15 != 0x72656B61657073)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 44:
              v19 = 0xEA00000000006E6FLL;
              if (v15 != 0x69736976656C6574)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 45:
              v19 = 0xEF65766C61566E6FLL;
              if (v15 != 0x6974616769727269)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 46:
              v19 = 0xE900000000000074;
              v18 = 0x654A7265776F6873;
              goto LABEL_160;
            case 47:
              v19 = 0xE600000000000000;
              v20 = 2003789939;
LABEL_153:
              if (v15 != (v20 & 0xFFFF0000FFFFFFFFLL | 0x726500000000))
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 48:
              v19 = 0xE400000000000000;
              if (v15 != 1802398067)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 49:
              v19 = 0xE900000000000072;
              if (v15 != 0x656C6B6E69727073)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 50:
              v19 = 0x8000000252E65350;
              if (v15 != 0xD000000000000012)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 51:
              v19 = 0xE800000000000000;
              if (v15 != 0x706F4D746F626F72)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            default:
LABEL_160:
              if (v15 != v18)
              {
                goto LABEL_162;
              }

LABEL_161:
              if (v14 == v19)
              {

                goto LABEL_4;
              }

LABEL_162:
              v31 = sub_252E37DB4();

              if (v31)
              {
                goto LABEL_4;
              }

              v10 = (v10 + 1) & v9;
              v11 = v10 >> 6;
              v12 = *(v5 + 8 * (v10 >> 6));
              v13 = 1 << v10;
              if ((v12 & (1 << v10)) == 0)
              {
                goto LABEL_167;
              }

              break;
          }
        }
      }

LABEL_167:
      *(v5 + 8 * v11) = v12 | v13;
      *(*(v3 + 48) + v10) = v6;
      v32 = *(v3 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        break;
      }

      *(v3 + 16) = v34;
LABEL_4:
      if (++v4 == v35)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_252A00850(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_252E37DB4() & 1;
  }
}

uint64_t sub_252A008A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416B0, &qword_252E40978);
    v3 = sub_252E379A4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v11 = (v6 + 16 * v4);
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v3 + 40);
      sub_252E37EC4();
      sub_252E37EE4();
      if (v13 != 1)
      {
        MEMORY[0x2530AE390](v12);
      }

      result = sub_252E37F14();
      v16 = ~(-1 << *(v3 + 32));
      v17 = result & v16;
      v18 = (result & v16) >> 6;
      v19 = *(v5 + 8 * v18);
      v20 = 1 << (result & v16);
      v21 = *(v3 + 48);
      if ((v20 & v19) != 0)
      {
        do
        {
          v23 = v21 + 16 * v17;
          if (*(v23 + 8))
          {
            if (v13)
            {
              goto LABEL_5;
            }
          }

          else
          {
            if (*v23 == v12)
            {
              v22 = v13;
            }

            else
            {
              v22 = 1;
            }

            if ((v22 & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v17 = (v17 + 1) & v16;
          v18 = v17 >> 6;
          v19 = *(v5 + 8 * (v17 >> 6));
          v20 = 1 << v17;
        }

        while ((v19 & (1 << v17)) != 0);
      }

      *(v5 + 8 * v18) = v19 | v20;
      v7 = v21 + 16 * v17;
      *v7 = v12;
      *(v7 + 8) = v13;
      v8 = *(v3 + 16);
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        break;
      }

      *(v3 + 16) = v10;
LABEL_5:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_252A00A2C(id a1, char a2, void (*a3)(id))
{
  if (a2)
  {
  }

  else
  {
    a3(a1);
  }
}

_OWORD *sub_252A00AF4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_252A00B04(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void *sub_252A00BB4(char *a1)
{
  v2 = v1;
  v4 = sub_252E32E84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277D57570]) init];
  if (!v9)
  {
    if (qword_27F53F530 != -1)
    {
LABEL_66:
      swift_once();
    }

    v17 = sub_252E36AD4();
    __swift_project_value_buffer(v17, qword_27F544E38);
    sub_252CC4050(0xD000000000000025, 0x8000000252E71520, 0xD000000000000077, 0x8000000252E71550, 0xD000000000000017, 0x8000000252E715D0, 49);
    return 0;
  }

  v10 = v9;
  sub_252E32E74();
  v11 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v12 = sub_252E32E44();
  v13 = [v11 initWithNSUUID_];

  (*(v5 + 8))(v8, v4);
  [v10 setCommandId_];

  v14 = 1;
  [v10 setCommandType_];
  v15 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  swift_beginAccess();
  v16 = *(v2 + v15);
  if (v16 <= 4)
  {
    if (!v16)
    {
      v14 = 0;
      goto LABEL_12;
    }

    if (v16 != 3)
    {
      if (v16 != 4)
      {
        goto LABEL_13;
      }

LABEL_12:
      [v10 setCommandOutcome_];
      goto LABEL_13;
    }

LABEL_11:
    v14 = 2;
    goto LABEL_12;
  }

  if ((v16 - 5) < 2 || v16 == 100)
  {
    goto LABEL_11;
  }

LABEL_13:
  v18 = [objc_allocWithZone(MEMORY[0x277D57580]) init];
  if (!v18)
  {
    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v25 = sub_252E36AD4();
    __swift_project_value_buffer(v25, qword_27F544E38);
    sub_252CC4050(0xD000000000000025, 0x8000000252E71520, 0xD000000000000077, 0x8000000252E71550, 0xD000000000000017, 0x8000000252E715D0, 60);

    return 0;
  }

  v19 = v18;
  if ([v10 commandOutcome] == 1)
  {
    goto LABEL_35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
  inited = swift_initStackObject();
  v21 = inited;
  *(inited + 16) = xmmword_252E3C290;
  v22 = *(v2 + v15);
  if (v22 > 4)
  {
    switch(v22)
    {
      case 100:
        v26 = "failureNoMatchingEntities";
        break;
      case 6:
        v26 = "failureRequiringAppLaunch";
        break;
      case 5:
        v23 = 0xE700000000000000;
        v24 = 0x6572756C696166;
        goto LABEL_34;
      default:
LABEL_29:
        v23 = 0xE700000000000000;
        v24 = 0x6E776F6E6B6E75;
        goto LABEL_34;
    }

    v23 = (v26 - 32) | 0x8000000000000000;
    v24 = 0xD000000000000019;
    goto LABEL_34;
  }

  if (!v22)
  {
    goto LABEL_29;
  }

  if (v22 == 3)
  {
    v23 = 0xEA00000000007373;
    v24 = 0x6572676F72506E69;
    goto LABEL_34;
  }

  if (v22 != 4)
  {
    goto LABEL_29;
  }

  v23 = 0xE700000000000000;
  v24 = 0x73736563637573;
LABEL_34:
  *(inited + 32) = v24;
  *(inited + 40) = v23;
  sub_252AD4414(inited);
  swift_setDeallocating();
  sub_252A01B34(v21 + 32);
  v27 = sub_252E37254();

  [v19 setHomeAutomationRequestErrorReasons_];

LABEL_35:
  v28 = [a1 automatableTask];
  if (v28)
  {
    v29 = v28;
    v143 = v10;
    type metadata accessor for ControlAutomateHomeIntent();
    v30 = swift_dynamicCastClass();
    if (!v30)
    {
      v35 = v29;
      goto LABEL_126;
    }

    v31 = *(v30 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
    v32 = *(v30 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters);
    v33 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
    v34 = v31;

    v35 = [v33 init];
    [v35 setUserTask_];
    v36 = type metadata accessor for HomeFilter();
    v37 = sub_252E37254();

    [v35 setFilters_];

    [v35 setTime_];
    v142 = type metadata accessor for HomeStore();
    v38 = static HomeStore.shared.getter();
    v39 = v38[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
    if (v39 != 2 && (v39 & 1) == 0 || (v40 = [v35 filters]) == 0)
    {

      goto LABEL_70;
    }

    v41 = v40;
    v141 = v36;
    v42 = sub_252E37264();

    v43 = [v35 userTask];
    v44 = HomeStore.services(matching:supporting:)(v42, v43);
    v46 = v45;

    if (v46)
    {
      sub_252929F10(v44, 1);
LABEL_69:
      v36 = v141;
LABEL_70:
      v69 = [v35 userTask];
      if (v69)
      {
        v70 = v69;
        v71 = [v69 attribute];

        if (v71 != 67)
        {
          goto LABEL_95;
        }

        v72 = static HomeStore.shared.getter();
        v73 = v72[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
        if (v73 == 2 || (v73) && (v74 = [v35 filters]) != 0)
        {
          v75 = v74;
          v76 = sub_252E37264();

          v77 = [v35 userTask];
          v78 = HomeStore.accessories(matching:supporting:)(v76, v77);
          v80 = v79;

          if (v80)
          {
            sub_252929F10(v78, 1);
            goto LABEL_95;
          }

          v140 = a1;
          v141 = v36;
          v81 = v78 & 0xFFFFFFFFFFFFFF8;
          v139 = v35;
          if (v78 >> 62)
          {
            v82 = sub_252E378C4();
            if (v82)
            {
              goto LABEL_81;
            }
          }

          else
          {
            v82 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v82)
            {
LABEL_81:
              v138 = v19;
              v35 = 0;
              v83 = v78;
              v144 = v78 & 0xC000000000000001;
              a1 = MEMORY[0x277D84F90];
              v84 = v78 & 0xFFFFFFFFFFFFFF8;
              while (1)
              {
                if (v144)
                {
                  v85 = MEMORY[0x2530ADF00](v35, v83);
                  v19 = (v35 + 1);
                  if (__OFADD__(v35, 1))
                  {
                    goto LABEL_136;
                  }
                }

                else
                {
                  if (v35 >= *(v81 + 16))
                  {
                    goto LABEL_137;
                  }

                  v85 = v83[v35 + 4];

                  v19 = (v35 + 1);
                  if (__OFADD__(v35, 1))
                  {
LABEL_136:
                    __break(1u);
LABEL_137:
                    __break(1u);
LABEL_138:
                    v127 = sub_252E378C4();

LABEL_125:
                    sub_252C77358(v127);
                    goto LABEL_126;
                  }
                }

                v86 = (*(*v85 + 256))();
                v87 = HomeDeviceType.description.getter(v86);
                v89 = v88;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  a1 = sub_2529F7A80(0, *(a1 + 2) + 1, 1, a1);
                }

                v91 = *(a1 + 2);
                v90 = *(a1 + 3);
                if (v91 >= v90 >> 1)
                {
                  a1 = sub_2529F7A80((v90 > 1), v91 + 1, 1, a1);
                }

                *(a1 + 2) = v91 + 1;
                v92 = &a1[16 * v91];
                *(v92 + 4) = v87;
                *(v92 + 5) = v89;
                ++v35;
                v81 = v84;
                if (v19 == v82)
                {
                  sub_252929F10(v83, 0);
                  v19 = v138;
                  sub_252C76E8C(a1);
                  goto LABEL_94;
                }
              }
            }
          }

          sub_252929F10(v78, 0);
          v35 = v139;
          a1 = v140;
        }

        else
        {
        }
      }

      else
      {
        sub_252C515AC();
      }

LABEL_95:
      v93 = [v35 filters];
      if (v93)
      {
        v94 = v93;
        v95 = sub_252E37264();

        LOBYTE(v94) = sub_252B1F8D4(v95);

        v93 = dword_252E40B2C[v94];
      }

      sub_252C7704C(v93);
      v96 = [v35 userTask];
      if (v96)
      {
        v97 = v96;
        v98 = [v96 attribute];

        if (v98 == 67)
        {
          v99 = [v35 userTask];
          if (v99)
          {
            v100 = v99;
            v101 = [v99 value];

            if (v101)
            {
              v102 = [v101 cleaningJob];

              if (v102)
              {
                v103 = sub_252DB7E0C(v102);
                sub_252C771A8(v103, v104);

                goto LABEL_108;
              }
            }
          }
        }
      }

      else
      {
        sub_252C515AC();
      }

      v105 = [v35 userTask];
      if (v105)
      {
        v106 = v105;
        v107 = [v105 attribute];

        v105 = HomeAttributeType.description.getter(v107);
        v109 = v108;
      }

      else
      {
        v109 = 0;
      }

      sub_252C771A8(v105, v109);
LABEL_108:

      if (sub_252C4D664(5))
      {
        v110 = static HomeStore.shared.getter();
        v111 = [v35 filters];
        if (v111)
        {
          v112 = v111;
          v113 = sub_252E37264();
        }

        else
        {
          v113 = MEMORY[0x277D84F90];
        }

        v114 = HomeStore.scenes(matching:)(v113);
        v116 = v115;

        if ((v116 & 1) == 0)
        {
          v126 = sub_2529289F0(v114);
          sub_252929F10(v114, 0);
          if (v126 >> 62)
          {
            goto LABEL_138;
          }

          v127 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);

          goto LABEL_125;
        }

        sub_252929F10(v114, 1);
      }

      v117 = static HomeStore.shared.getter();
      v118 = v117[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
      if (v118 == 2 || (v118) && (v119 = [v35 filters]) != 0)
      {
        v120 = v119;
        v121 = sub_252E37264();

        v122 = [v35 userTask];
        v123 = HomeStore.services(matching:supporting:)(v121, v122);
        v125 = v124;

        if ((v125 & 1) == 0)
        {
          if (v123 >> 62)
          {
            v127 = sub_252E378C4();
          }

          else
          {
            v127 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          sub_252929F10(v123, 0);
          goto LABEL_125;
        }

        sub_252929F10(v123, 1);
      }

      else
      {

        v35 = v117;
      }

LABEL_126:

      v10 = v143;
      goto LABEL_127;
    }

    v47 = v44 & 0xFFFFFFFFFFFFFF8;
    v140 = a1;
    if (v44 >> 62)
    {
      v48 = sub_252E378C4();
      if (v48)
      {
LABEL_46:
        v138 = v19;
        v139 = v35;
        v49 = 0;
        v50 = MEMORY[0x277D84F90];
        v144 = v44 & 0xC000000000000001;
        do
        {
          if (v144)
          {
            v51 = MEMORY[0x2530ADF00](v49, v44);
            v52 = v49 + 1;
            if (__OFADD__(v49, 1))
            {
              goto LABEL_64;
            }
          }

          else
          {
            if (v49 >= *(v47 + 16))
            {
              goto LABEL_65;
            }

            v51 = *(v44 + 8 * v49 + 32);

            v52 = v49 + 1;
            if (__OFADD__(v49, 1))
            {
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }
          }

          v53 = v48;
          v54 = v47;
          v55 = [*(v51 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
          v56 = sub_252E36F34();
          v58 = v57;

          if (qword_27F53F8B8 != -1)
          {
            swift_once();
          }

          v59 = off_27F546230;
          if (*(off_27F546230 + 2) && (v60 = sub_252A44A10(v56, v58), (v61 & 1) != 0))
          {
            v62 = *(v59[7] + 8 * v60);
          }

          else
          {
            v62 = 0;
          }

          v63 = HomeDeviceType.description.getter(v62);
          v65 = v64;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_2529F7A80(0, *(v50 + 2) + 1, 1, v50);
          }

          v67 = *(v50 + 2);
          v66 = *(v50 + 3);
          if (v67 >= v66 >> 1)
          {
            v50 = sub_2529F7A80((v66 > 1), v67 + 1, 1, v50);
          }

          *(v50 + 2) = v67 + 1;
          v68 = &v50[16 * v67];
          *(v68 + 4) = v63;
          *(v68 + 5) = v65;
          ++v49;
          v48 = v53;
          v47 = v54;
        }

        while (v52 != v53);
        sub_252929F10(v44, 0);
        v19 = v138;
        sub_252C76E8C(v50);
LABEL_94:

        v35 = v139;
        a1 = v140;
        goto LABEL_95;
      }
    }

    else
    {
      v48 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v48)
      {
        goto LABEL_46;
      }
    }

    sub_252929F10(v44, 0);
    a1 = v140;
    goto LABEL_69;
  }

LABEL_127:
  v128 = [a1 trigger];
  if (v128)
  {
    v129 = sub_252B8DE98();

    v130 = v129;
  }

  else
  {
    v130 = 0;
  }

  v145 = v128 == 0;
  sub_252C774DC(v130 | ((v128 == 0) << 32));
  v131 = [a1 trigger];
  if (v131)
  {
    v132 = v131;
    v133 = [v131 recurrence];

    if (v133)
    {

      LOBYTE(v131) = 1;
    }

    else
    {
      LOBYTE(v131) = 0;
    }
  }

  sub_252C7763C(v131);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_252E3C130;
  *(v134 + 32) = v19;
  sub_252A01B88();
  v135 = v19;
  v136 = sub_252E37254();

  [v10 setHomeAutomationRequests_];

  return v10;
}

unint64_t sub_252A01B88()
{
  result = qword_27F5418B8;
  if (!qword_27F5418B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5418B8);
  }

  return result;
}

uint64_t sub_252A01C18@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TurnOffWhenEqualsOrLessThanZeroHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_252A01C4C(void *a1)
{
  result = [a1 userTask];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = [result value];

  if (!v4)
  {
    return 0;
  }

  if ([v4 type] == 2)
  {
    [v4 doubleValue];
    v6 = v5;
  }

  else
  {
    if ([v4 type] != 4)
    {

      return 0;
    }

    v7 = [v4 integerValue];

    v6 = v7;
  }

  v8 = sub_252C4B5D4();
  result = 0;
  if (!v8 || v6 > 0.0)
  {
    return result;
  }

  type metadata accessor for HomeStore();
  v9 = static HomeStore.shared.getter();
  v10 = v9[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v10 != 2 && (v10 & 1) == 0 || (v11 = [a1 filters]) == 0)
  {

LABEL_48:
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v38 = sub_252E36AD4();
    __swift_project_value_buffer(v38, qword_27F544DA8);
    sub_252CC3D90(0xD000000000000046, 0x8000000252E71680, 0xD00000000000009FLL, 0x8000000252E716D0);
    return 0;
  }

  v12 = v11;
  type metadata accessor for HomeFilter();
  v13 = sub_252E37264();

  v14 = [a1 userTask];
  v15 = HomeStore.services(matching:supporting:)(v13, v14);
  v17 = v16;

  if (v17)
  {
    v18 = v15;
    v19 = 1;
LABEL_47:
    sub_252929F10(v18, v19);
    goto LABEL_48;
  }

  if (v15 >> 62)
  {
LABEL_45:
    v20 = sub_252E378C4();
    if (v20)
    {
      goto LABEL_18;
    }

LABEL_46:
    v18 = v15;
    v19 = 0;
    goto LABEL_47;
  }

  v20 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    goto LABEL_46;
  }

LABEL_18:
  v21 = 0;
  v39 = MEMORY[0x277D84F90];
  while ((v15 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2530ADF00](v21, v15);
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_26;
    }

LABEL_22:
    v24 = sub_252CD9C58();

    sub_25297A864(v24);
    ++v21;
    if (v23 == v20)
    {
      goto LABEL_27;
    }
  }

  if (v21 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_45;
  }

  v22 = *(v15 + 8 * v21 + 32);

  v23 = v21 + 1;
  if (!__OFADD__(v21, 1))
  {
    goto LABEL_22;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  sub_252929F10(v15, 0);
  v25 = [a1 userTask];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 attribute];

    if (v27 == 11)
    {
      v28 = *(v39 + 16);
      if (v28)
      {
        v29 = 32;
        while (1)
        {
          v30 = vdupq_n_s64(*(v39 + v29));
          if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_2864A9218, v30), vceqq_s64(unk_2864A9228, v30)))) & 1) == 0)
          {
            break;
          }

          v29 += 8;
          if (!--v28)
          {
LABEL_33:

            return 1;
          }
        }
      }
    }
  }

  else
  {
    sub_252C515AC();
  }

  v31 = [a1 userTask];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 attribute];

    if (v33 == 2)
    {
      v34 = *(v39 + 16);
      if (v34)
      {
        v35 = 32;
        while (1)
        {
          v36 = *(v39 + v35);
          v37 = vdupq_n_s64(v36);
          if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_2864A91D0, v37), vceqq_s64(unk_2864A91E0, v37)))) & 1) == 0 && qword_2864A91F0 != v36)
          {
            break;
          }

          v35 += 8;
          if (!--v34)
          {
            goto LABEL_33;
          }
        }
      }
    }
  }

  else
  {

    sub_252C515AC();
  }

  return 0;
}

id sub_252A020B4(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v3 = sub_252E36F04();
  v4 = [v2 initWithIdentifier:0 displayString:v3];

  v5 = v4;
  [v5 setBoolValue_];
  [v5 setType_];

  v6 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v7 = sub_252E36F04();
  v8 = [v6 initWithIdentifier:0 displayString:v7];

  v9 = v8;
  [v9 setTaskType_];
  [v9 setAttribute_];
  [v9 setValue_];

  v10 = [a1 filters];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for HomeFilter();
    v12 = sub_252E37264();
  }

  else
  {
    v12 = 0;
  }

  v13 = [a1 time];
  v14 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v14 setUserTask_];
  if (v12)
  {
    type metadata accessor for HomeFilter();
    v15 = sub_252E37254();
  }

  else
  {
    v15 = 0;
  }

  [v14 setFilters_];

  [v14 setTime_];
  return v14;
}

uint64_t sub_252A02300(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25293B808;

  return (sub_252A02548)(a2);
}

void *sub_252A023B0@<X0>(void *a1@<X8>)
{
  type metadata accessor for BlockMulticardinalRequestsHandler();
  swift_allocObject();
  result = sub_252D192A0();
  *a1 = result;
  return result;
}

BOOL sub_252A023EC(void *a1, __int128 *a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 17);
  v5 = *(a2 + 18);
  v6 = [a1 userTask];
  if (v6 && (v7 = v6, v8 = [v6 attribute], v7, v8 == 6))
  {
    return 0;
  }

  else
  {

    v11 = sub_252C7634C(v10);

    v12 = *(v11 + 16);

    if (v12 > 1)
    {
      return 1;
    }

    v14 = sub_252C7634C(v13);

    v15 = *(v14 + 16);

    if (v15 > 1)
    {
      return 1;
    }

    v17 = sub_252C75848(v16);

    v18 = *(v17 + 16);

    if (v18 <= 1)
    {
      v24 = a2[4];
      v25 = a2[5];
      v26 = a2[6];
      v27 = a2[7];
      v20 = *a2;
      v21 = a2[1];
      v22 = a2[2];
      v23 = a2[3];
      memcpy(v28, a2 + 152, sizeof(v28));
      return sub_252A0E3E4();
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_252A02548(uint64_t a1)
{
  *(v2 + 1000) = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8) + 64) + 15;
  *(v2 + 1008) = swift_task_alloc();
  v5 = *(a1 + 48);
  *(v2 + 904) = *(a1 + 32);
  *(v2 + 920) = v5;
  *(v2 + 936) = *(a1 + 64);
  v6 = *(a1 + 16);
  *(v2 + 872) = *a1;
  *(v2 + 888) = v6;
  *(v2 + 1016) = *(a1 + 80);
  v7 = *(a1 + 104);
  *(v2 + 952) = *(a1 + 88);
  *(v2 + 968) = v7;
  *(v2 + 984) = *(a1 + 120);
  *(v2 + 1024) = *(a1 + 136);
  memcpy((v2 + 520), (a1 + 152), 0x160uLL);

  return MEMORY[0x2822009F8](sub_252A02644, 0, 0);
}

uint64_t sub_252A02644()
{
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1016);
  v2 = *(v0 + 1000);
  v3 = sub_252E36AD4();
  v18 = *(v0 + 1024);
  __swift_project_value_buffer(v3, qword_27F544DA8);
  sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E717B0, 0xD000000000000088, 0x8000000252E717E0);
  v4 = *(v2 + 16);
  v5 = *(v0 + 920);
  *(v0 + 48) = *(v0 + 904);
  *(v0 + 64) = v5;
  *(v0 + 80) = *(v0 + 936);
  v6 = *(v0 + 888);
  *(v0 + 16) = *(v0 + 872);
  *(v0 + 32) = v6;
  v7 = *(v0 + 968);
  *(v0 + 104) = *(v0 + 952);
  *(v0 + 96) = v1;
  *(v0 + 120) = v7;
  *(v0 + 136) = *(v0 + 984);
  *(v0 + 152) = v18;
  memcpy((v0 + 168), (v0 + 520), 0x160uLL);
  if (sub_252956B94((v0 + 16)) == 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v10 = *(*(v0 + 1024) + 16) > 1uLL || *(*(v0 + 1032) + 16) > 1uLL;
    v9 = *(*(v0 + 144) + 16) > 1;
    v8 = *(*(v0 + 1016) + 16) > 1uLL;
  }

  v11 = *(v0 + 1008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_252E3C280;
  *(v12 + 32) = 0xD000000000000015;
  *(v12 + 40) = 0x8000000252E718A0;
  v13 = MEMORY[0x277D839B0];
  *(v12 + 48) = v9;
  *(v12 + 72) = v13;
  *(v12 + 80) = 0xD00000000000001ALL;
  *(v12 + 88) = 0x8000000252E718C0;
  *(v12 + 96) = v10;
  *(v12 + 120) = v13;
  *(v12 + 128) = 0xD000000000000019;
  *(v12 + 136) = 0x8000000252E718E0;
  *(v12 + 168) = v13;
  *(v12 + 144) = v8;

  sub_252E362B4();

  v14 = swift_task_alloc();
  *(v0 + 1040) = v14;
  *v14 = v0;
  v14[1] = sub_252A02928;
  v15 = *(v0 + 1008);
  v16 = *(v0 + 1000);

  return sub_252958364(v15);
}

uint64_t sub_252A02928()
{
  v2 = *(*v1 + 1040);
  v3 = *(*v1 + 1008);
  v4 = *v1;
  v4[131] = v0;

  sub_25295A3FC(v3);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252A02A8C, 0, 0);
  }

  else
  {
    v5 = v4[126];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_252A02A8C()
{
  v1 = v0[126];

  v2 = v0[1];
  v3 = v0[131];

  return v2();
}

uint64_t sub_252A02AF0()
{
  if (*v0)
  {
    result = 0x707365526B736174;
  }

  else
  {
    result = 0x797469746E65;
  }

  *v0;
  return result;
}

uint64_t sub_252A02B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x797469746E65 && a2 == 0xE600000000000000;
  if (v6 || (sub_252E37DB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x707365526B736174 && a2 == 0xED00007365736E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();

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

uint64_t sub_252A02C14(uint64_t a1)
{
  v2 = sub_252A05FE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252A02C50(uint64_t a1)
{
  v2 = sub_252A05FE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252A02C8C(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5418D8, &qword_252E40EB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  *(v1 + 16) = 0;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A05FE4();
  sub_252E37F74();
  if (v2)
  {
    v11 = *(v1 + 16);

    type metadata accessor for CodableEntityResponse();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for CodableEntity();
    v14 = 0;
    sub_252A06D60(&qword_27F5418E8, type metadata accessor for CodableEntity);
    sub_252E37C64();
    v10 = *(v1 + 16);
    *(v1 + 16) = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5418F0, &qword_252E40EB8);
    v14 = 1;
    sub_252A06CC4(&qword_27F5418F8, &qword_27F541900);
    sub_252E37C64();
    (*(v5 + 8))(v8, v4);
    *(v1 + 24) = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_252A02F14(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5419A0, &qword_252E40F10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A05FE4();
  sub_252E37F84();
  v13 = *(v3 + 16);
  HIBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5419A8, &qword_252E40F18);
  sub_252A06C10();
  sub_252E37D54();
  if (!v2)
  {
    v13 = *(v3 + 24);
    HIBYTE(v12) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5418F0, &qword_252E40EB8);
    sub_252A06CC4(&qword_27F5419C0, &qword_27F5419C8);
    sub_252E37D54();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_252A03108()
{
  type metadata accessor for HomeEntityResponse.Builder();
  v1 = swift_allocObject();
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  v2.n128_f64[0] = HomeEntity.Builder.init()();
  v4 = (*(*v3 + 448))(v2);

  v5 = MEMORY[0x277D84F90];
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  if (*(v0 + 16))
  {
    v6 = *(v0 + 16);

    v7 = v1;
    v8 = sub_252A03EDC();

    *(v7 + 16) = v8;
  }

  v9 = *(v0 + 24);
  if (v9 >> 62)
  {
    goto LABEL_26;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (v10)
  {
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x2530ADF00](v11, v9);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v12 = *(v9 + 8 * v11 + 32);

        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          v10 = sub_252E378C4();
          goto LABEL_5;
        }
      }

      v14 = objc_allocWithZone(type metadata accessor for HomeUserTask());
      v15 = sub_252E36F04();
      v16 = [v14 initWithIdentifier:0 displayString:v15];

      v17 = v16;
      [v17 setTaskType_];
      [v17 setAttribute_];
      [v17 setValue_];

      v18 = sub_252E285FC(*(v12 + 24));
      if (v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = v18;
      }

      if (*(v12 + 16))
      {
        v21 = *(v12 + 16);

        v22 = sub_252A05170();

        v17 = v22;
      }

      v23 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
      v24 = v17;
      v25 = sub_252E36F04();
      v26 = [v23 initWithIdentifier:0 displayString:v25];

      v27 = v26;
      [v27 setTaskOutcome_];
      [v27 setUserTask_];

      MEMORY[0x2530AD700](v28);
      if (*(v5 + 16) >= *(v5 + 24) >> 1)
      {
        v29 = *(v5 + 16);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v11;
      if (v13 == v10)
      {
        v30 = v5;
        goto LABEL_23;
      }
    }
  }

  v30 = MEMORY[0x277D84F90];
LABEL_23:

  v31 = sub_25297D0C0(v30);

  v33 = (*(*v31 + 192))(v32);

  return v33;
}

uint64_t sub_252A034B8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_252A0351C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x69746E45656D6F68;
    v6 = 0xD000000000000010;
    if (a1 != 2)
    {
      v6 = 0x7954656369766564;
    }

    if (a1)
    {
      v5 = 1701869940;
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
    v1 = 1701670760;
    v2 = 0x70756F7267;
    if (a1 != 7)
    {
      v2 = 0x73656E6F7ALL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x707954656E656373;
    if (a1 != 4)
    {
      v3 = 1836019570;
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

uint64_t sub_252A036A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252A0745C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252A036CC(uint64_t a1)
{
  v2 = sub_252A06038();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252A03708(uint64_t a1)
{
  v2 = sub_252A06038();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252A03744(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541908, &qword_252E40EC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A06038();
  sub_252E37F74();
  if (v2)
  {
    v14 = *(v1 + 24);

    v15 = *(v1 + 48);

    v16 = *(v1 + 80);

    v17 = *(v1 + 96);

    v18 = *(v1 + 112);

    type metadata accessor for CodableEntity();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v33) = 0;
    v10 = sub_252E37BA4();
    v11 = *(v1 + 24);
    *(v1 + 16) = v10;
    *(v1 + 24) = v12;

    LOBYTE(v33) = 1;
    *(v1 + 32) = sub_252E37C44();
    LOBYTE(v33) = 2;
    v13 = sub_252E37BA4();
    v20 = *(v1 + 48);
    *(v1 + 40) = v13;
    *(v1 + 48) = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416D8, &qword_252E40998);
    v32 = 3;
    sub_252A06B28(&qword_27F541918);
    sub_252E37C64();
    *(v1 + 56) = v33;
    LOBYTE(v33) = 4;
    *(v1 + 64) = sub_252E37C44();
    LOBYTE(v33) = 5;
    v22 = sub_252E37BA4();
    v23 = *(v1 + 80);
    *(v1 + 72) = v22;
    *(v1 + 80) = v24;

    LOBYTE(v33) = 6;
    v25 = sub_252E37BA4();
    v26 = *(v1 + 96);
    *(v1 + 88) = v25;
    *(v1 + 96) = v27;

    LOBYTE(v33) = 7;
    v28 = sub_252E37BA4();
    v29 = *(v1 + 112);
    *(v1 + 104) = v28;
    *(v1 + 112) = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
    v32 = 8;
    sub_252A0608C();
    sub_252E37C64();
    (*(v5 + 8))(v8, v4);
    *(v1 + 120) = v33;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_252A03B40(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541990, &qword_252E40F08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A06038();
  sub_252E37F84();
  v16 = *(v3 + 16);
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_25292FA38();
  sub_252E37D54();
  if (!v2)
  {
    v11 = *(v3 + 32);
    LOBYTE(v16) = 1;
    sub_252E37D34();
    v16 = *(v3 + 40);
    v15 = 2;
    sub_252E37D54();
    *&v16 = *(v3 + 56);
    v15 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416D8, &qword_252E40998);
    sub_252A06B28(&qword_27F541998);
    sub_252E37D54();
    v12 = *(v3 + 64);
    LOBYTE(v16) = 4;
    sub_252E37D34();
    v16 = *(v3 + 72);
    v15 = 5;
    sub_252E37D54();
    v16 = *(v3 + 88);
    v15 = 6;
    sub_252E37D54();
    v16 = *(v3 + 104);
    v15 = 7;
    sub_252E37D54();
    *&v16 = *(v3 + 120);
    v15 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
    sub_252A06B94();
    sub_252E37D54();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_252A03EDC()
{
  v1 = v0;
  v2 = sub_252E25BD0(v0[4]);
  v4 = v3;
  v5 = v1[7];
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v1[7];

    v8 = MEMORY[0x277D84F90];
    v9 = 32;
    do
    {
      v10 = sub_252E25FC4(*(v5 + v9));
      if ((v11 & 1) == 0)
      {
        v12 = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2529F7B8C(0, *(v8 + 2) + 1, 1, v8);
        }

        v14 = *(v8 + 2);
        v13 = *(v8 + 3);
        if (v14 >= v13 >> 1)
        {
          v8 = sub_2529F7B8C((v13 > 1), v14 + 1, 1, v8);
        }

        *(v8 + 2) = v14 + 1;
        *&v8[8 * v14 + 32] = v12;
      }

      v9 += 8;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  if (v4)
  {
    v15 = 0;
  }

  else
  {
    v15 = v2;
  }

  v16 = sub_252E263B8(v1[8]);
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  HomeEntity.Builder.init()();
  v19 = v1[2];
  v20 = v1[3];
  v22 = *(*v21 + 376);

  v23 = v22(v19, v20);

  v24 = (*(*v23 + 384))(v15);

  v25 = v1[5];
  v26 = v1[6];
  v27 = *(*v24 + 392);

  v28 = v27(v25, v26);

  v29 = (*(*v28 + 400))(v8);

  v30 = (*(*v29 + 408))(v18);

  v31 = v1[9];
  v32 = v1[10];
  v33 = *(*v30 + 416);

  v34 = v33(v31, v32);

  v35 = v1[11];
  v36 = v1[12];
  v37 = *(*v34 + 424);

  v38 = v37(v35, v36);

  v39 = v1[13];
  v40 = v1[14];
  v41 = *(*v38 + 432);

  v42 = v41(v39, v40);

  v43 = v1[15];
  v44 = *(*v42 + 440);

  v46 = v44(v45);

  v48 = (*(*v46 + 448))(v47);

  return v48;
}

void *sub_252A04394()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[15];

  return v0;
}

uint64_t sub_252A043E4()
{
  sub_252A04394();

  return swift_deallocClassInstance();
}

uint64_t sub_252A044A4()
{
  v1 = *v0;
  sub_252E37EC4();
  MEMORY[0x2530AE390](v1);
  return sub_252E37F14();
}

uint64_t sub_252A044EC()
{
  v1 = *v0;
  sub_252E37EC4();
  MEMORY[0x2530AE390](v1);
  return sub_252E37F14();
}

uint64_t sub_252A04530()
{
  if (*v0)
  {
    result = 0x6374754F6B736174;
  }

  else
  {
    result = 0x6B73615472657375;
  }

  *v0;
  return result;
}

uint64_t sub_252A04574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B73615472657375 && a2 == 0xE800000000000000;
  if (v6 || (sub_252E37DB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6374754F6B736174 && a2 == 0xEB00000000656D6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();

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

uint64_t sub_252A04654(uint64_t a1)
{
  v2 = sub_252A06108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252A04690(uint64_t a1)
{
  v2 = sub_252A06108();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252A046CC(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541920, &qword_252E40EC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  *(v1 + 16) = 0;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A06108();
  sub_252E37F74();
  if (v2)
  {
    v12 = *(v1 + 16);

    type metadata accessor for CodableHomeUserTaskResponse();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for CodableUserTask();
    v15[15] = 0;
    sub_252A06D60(&qword_27F541930, type metadata accessor for CodableUserTask);
    sub_252E37BE4();
    v11 = *(v1 + 16);
    *(v1 + 16) = v16;

    v15[14] = 1;
    v14 = sub_252E37C44();
    (*(v6 + 8))(v9, v5);
    *(v3 + 24) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_252A048F0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541970, &qword_252E40EF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A06108();
  sub_252E37F84();
  v14 = *(v3 + 16);
  v13[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541978, &qword_252E40F00);
  sub_252A06A74();
  sub_252E37D54();
  if (!v2)
  {
    v12 = *(v3 + 24);
    v13[6] = 1;
    sub_252E37D34();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_252A04A9C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_252A04B60()
{
  v1 = 0x7475626972747461;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657079546B736174;
  }
}

uint64_t sub_252A04BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252A07750(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252A04BE4(uint64_t a1)
{
  v2 = sub_252A05F90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252A04C20(uint64_t a1)
{
  v2 = sub_252A05F90();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_252A04C5C(void *a1)
{
  v2 = v1;
  v1[4] = 0;
  v1[2] = [a1 taskType];
  v1[3] = [a1 attribute];
  v4 = [a1 value];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for CodableAttributeValue();
    swift_allocObject();
    v6 = sub_252A061B0(v5);

    v7 = v2[4];
    v2[4] = v6;
  }

  else
  {
  }

  return v2;
}

void *sub_252A04D10(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5418C0, &qword_252E40EA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v1[4] = 0;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A05F90();
  sub_252E37F74();
  if (v2)
  {
    v10 = v1[4];

    type metadata accessor for CodableUserTask();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = 0;
    v1[2] = sub_252E37C44();
    v15 = 1;
    v1[3] = sub_252E37C44();
    type metadata accessor for CodableAttributeValue();
    v14 = 2;
    sub_252A06D60(&qword_27F5418D0, type metadata accessor for CodableAttributeValue);
    sub_252E37BE4();
    (*(v5 + 8))(v8, v4);
    v12 = v1[4];
    v1[4] = v13[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_252A04F7C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541950, &qword_252E40EE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A05F90();
  sub_252E37F84();
  v11 = v3[2];
  v17 = 0;
  sub_252E37D34();
  if (!v2)
  {
    v13 = v3[3];
    v16 = 1;
    sub_252E37D34();
    v15 = v3[4];
    v14[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541958, &qword_252E40EF0);
    sub_252A069C0();
    sub_252E37D54();
  }

  return (*(v6 + 8))(v9, v5);
}

id sub_252A05170()
{
  v1 = sub_252E26B5C(v0[2]);
  v3 = v2;
  v4 = sub_252E26F50(v0[3]);
  v6 = v5;
  if (v0[4])
  {

    v7 = sub_252A05A90();
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v4;
  }

  if (v3)
  {
    v1 = 0;
  }

  v9 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v10 = sub_252E36F04();
  v11 = [v9 initWithIdentifier:0 displayString:v10];

  v12 = v11;
  [v12 setTaskType_];
  [v12 setAttribute_];
  [v12 setValue_];

  return v12;
}

uint64_t sub_252A05280()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_252A052DC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1701869940;
    v6 = 0x6156656C62756F64;
    if (a1 != 2)
    {
      v6 = 0x5672656765746E69;
    }

    if (a1)
    {
      v5 = 0x756C61566C6F6F62;
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
    v1 = 0x6E61527265707075;
    v2 = 0x6E61527265776F6CLL;
    if (a1 != 7)
    {
      v2 = 1953066613;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6156676E69727473;
    if (a1 != 4)
    {
      v3 = 0x6C615674696D696CLL;
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

uint64_t sub_252A0547C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252A0786C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252A054A4(uint64_t a1)
{
  v2 = sub_252A0615C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252A054E0(uint64_t a1)
{
  v2 = sub_252A0615C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252A0551C(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541938, &qword_252E40ED0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A0615C();
  sub_252E37F74();
  if (v2)
  {
    v12 = *(v1 + 56);

    type metadata accessor for CodableAttributeValue();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20[31] = 0;
    *(v1 + 16) = sub_252E37C44();
    v20[30] = 1;
    *(v1 + 24) = sub_252E37C14() & 1;
    v20[29] = 2;
    sub_252E37C24();
    *(v1 + 32) = v11;
    v20[28] = 3;
    *(v1 + 40) = sub_252E37C44();
    v20[27] = 4;
    v14 = sub_252E37BA4();
    v15 = *(v1 + 56);
    *(v1 + 48) = v14;
    *(v1 + 56) = v16;

    v20[26] = 5;
    *(v1 + 64) = sub_252E37C44();
    v20[25] = 6;
    sub_252E37C24();
    *(v1 + 80) = v17;
    v20[24] = 7;
    sub_252E37C24();
    *(v1 + 88) = v18;
    v20[15] = 8;
    v19 = sub_252E37C44();
    (*(v6 + 8))(v9, v5);
    *(v3 + 72) = v19;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_252A057DC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541948, &unk_252E40ED8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A0615C();
  sub_252E37F84();
  v11 = *(v3 + 16);
  LOBYTE(v21) = 0;
  sub_252E37D34();
  if (!v2)
  {
    v12 = *(v3 + 24);
    LOBYTE(v21) = 1;
    sub_252E37D04();
    v13 = *(v3 + 32);
    LOBYTE(v21) = 2;
    sub_252E37D14();
    v14 = *(v3 + 40);
    LOBYTE(v21) = 3;
    sub_252E37D34();
    v21 = *(v3 + 48);
    v20[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    sub_25292FA38();
    sub_252E37D54();
    v15 = *(v3 + 64);
    LOBYTE(v21) = 5;
    sub_252E37D34();
    v16 = *(v3 + 80);
    LOBYTE(v21) = 6;
    sub_252E37D14();
    v17 = *(v3 + 88);
    LOBYTE(v21) = 7;
    sub_252E37D14();
    v18 = *(v3 + 72);
    LOBYTE(v21) = 8;
    sub_252E37D34();
  }

  return (*(v6 + 8))(v9, v5);
}

id sub_252A05A90()
{
  v1 = sub_252E27344(*(v0 + 16));
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1;
  }

  v4 = sub_252E263B8(*(v0 + 72));
  v5 = 0;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  if (v3 > 3)
  {
    switch(v3)
    {
      case 4:
        v25 = *(v0 + 40);
        v26 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v27 = sub_252E36F04();
        v28 = [v26 initWithIdentifier:0 displayString:v27];

        v5 = v28;
        [v5 setIntegerValue_];
        [v5 setUnit_];
        [v5 setType_];
        break;
      case 5:
        v33 = *(v0 + 64);
        if (v33 == 2)
        {
          v34 = 2;
        }

        else
        {
          v34 = v33 == 1;
        }

        v35 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v36 = sub_252E36F04();
        v37 = [v35 initWithIdentifier:0 displayString:v36];

        v5 = v37;
        [v5 setType_];
        [v5 setLimitValue_];
        break;
      case 6:
        v12 = *(v0 + 80);
        v11 = *(v0 + 88);
        v13 = objc_allocWithZone(type metadata accessor for HomeAttributeRange());
        v14 = sub_252E36F04();
        v15 = [v13 initWithIdentifier:0 displayString:v14];

        v16 = v15;
        [v16 setLowerValue_];
        [v16 setUpperValue_];

        v17 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v18 = sub_252E36F04();
        v19 = [v17 initWithIdentifier:0 displayString:v18];

        v5 = v19;
        [v5 setType_];
        v20 = v16;
        [v5 setRangeValue_];

        break;
      default:
        return v5;
    }

LABEL_24:

    return v5;
  }

  switch(v3)
  {
    case 1:
      v21 = *(v0 + 24);
      v22 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v23 = sub_252E36F04();
      v24 = [v22 initWithIdentifier:0 displayString:v23];

      v5 = v24;
      [v5 setBoolValue_];
      [v5 setType_];
      goto LABEL_24;
    case 2:
      v29 = *(v0 + 32);
      v30 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v31 = sub_252E36F04();
      v32 = [v30 initWithIdentifier:0 displayString:v31];

      v5 = v32;
      [v5 setDoubleValue_];
      [v5 setUnit_];
      [v5 setType_];
      goto LABEL_24;
    case 3:
      v8 = *(v0 + 56);
      if (v8)
      {
        v9 = *(v0 + 48);
        v10 = v8;
      }

      else
      {
        v9 = 0;
        v10 = 0xE000000000000000;
      }

      type metadata accessor for HomeAttributeValue();

      return HomeAttributeValue.__allocating_init(stringValue:unit:)(v9, v10, v7);
  }

  return v5;
}

uint64_t sub_252A05E5C()
{
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_252A05EFC@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t *a4@<X8>)
{
  a2();
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

unint64_t sub_252A05F90()
{
  result = qword_27F5418C8;
  if (!qword_27F5418C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5418C8);
  }

  return result;
}

unint64_t sub_252A05FE4()
{
  result = qword_27F5418E0;
  if (!qword_27F5418E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5418E0);
  }

  return result;
}

unint64_t sub_252A06038()
{
  result = qword_27F541910;
  if (!qword_27F541910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541910);
  }

  return result;
}

unint64_t sub_252A0608C()
{
  result = qword_27F540920;
  if (!qword_27F540920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540480, &qword_252E3C910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540920);
  }

  return result;
}

unint64_t sub_252A06108()
{
  result = qword_27F541928;
  if (!qword_27F541928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541928);
  }

  return result;
}

unint64_t sub_252A0615C()
{
  result = qword_27F541940;
  if (!qword_27F541940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541940);
  }

  return result;
}

uint64_t sub_252A061B0(void *a1)
{
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 16) = [a1 type];
  *(v1 + 24) = [a1 BOOLValue];
  [a1 doubleValue];
  *(v1 + 32) = v3;
  *(v1 + 40) = [a1 integerValue];
  v4 = [a1 stringValue];
  if (v4)
  {
    v5 = v4;
    v6 = sub_252E36F34();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = *(v1 + 56);
  *(v1 + 48) = v6;
  *(v1 + 56) = v8;

  *(v1 + 64) = [a1 limitValue];
  v10 = [a1 rangeValue];
  v11 = 0;
  v12 = 0;
  if (v10)
  {
    v13 = v10;
    [v10 upperValue];
    v12 = v14;
  }

  *(v1 + 80) = v12;
  v15 = [a1 rangeValue];
  if (v15)
  {
    v16 = v15;
    [v15 lowerValue];
    v11 = v17;
  }

  *(v1 + 88) = v11;
  *(v1 + 72) = [a1 unit];
  return v1;
}

void sub_252A06320(void *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  v3 = [a1 homeEntityName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_252E36F34();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = *(v1 + 24);
  *(v1 + 16) = v5;
  *(v1 + 24) = v7;

  *(v1 + 32) = [a1 type];
  v9 = [a1 entityIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = sub_252E36F34();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = *(v1 + 48);
  *(v1 + 40) = v11;
  *(v1 + 48) = v13;

  v15 = [a1 deviceTypes];
  if (v15)
  {
    v16 = v15;
    v17 = sub_252E37264();

    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = sub_2529F8104(0, 1, 1, MEMORY[0x277D84F90]);
      v20 = (v17 + 32);
      v21 = *(v19 + 2);
      do
      {
        v23 = *v20++;
        v22 = v23;
        v24 = *(v19 + 3);
        if (v21 >= v24 >> 1)
        {
          v19 = sub_2529F8104((v24 > 1), v21 + 1, 1, v19);
        }

        *(v19 + 2) = v21 + 1;
        *&v19[8 * v21++ + 32] = v22;
        --v18;
      }

      while (v18);
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v19 = &unk_2864A9290;
  }

  *(v1 + 56) = v19;
  *(v1 + 64) = [a1 sceneType];
  v25 = [a1 room];
  if (v25)
  {
    v26 = v25;
    v27 = sub_252E36F34();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v30 = *(v1 + 80);
  *(v1 + 72) = v27;
  *(v1 + 80) = v29;

  v31 = [a1 home];
  if (v31)
  {
    v32 = v31;
    v33 = sub_252E36F34();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  v36 = *(v1 + 96);
  *(v1 + 88) = v33;
  *(v1 + 96) = v35;

  v37 = [a1 group];
  if (v37)
  {
    v38 = v37;
    v39 = sub_252E36F34();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  v42 = *(v1 + 112);
  *(v1 + 104) = v39;
  *(v1 + 112) = v41;

  v43 = [a1 zones];
  if (!v43)
  {
    v49 = MEMORY[0x277D84F90];
LABEL_39:
    *(v1 + 120) = v49;
    return;
  }

  v44 = v43;
  v45 = sub_252E37264();

  v46 = *(v45 + 16);
  if (!v46)
  {
    v49 = MEMORY[0x277D84F90];
LABEL_38:

    goto LABEL_39;
  }

  v47 = 0;
  v48 = (v45 + 40);
  v49 = MEMORY[0x277D84F90];
  while (v47 < *(v45 + 16))
  {
    v51 = *(v48 - 1);
    v50 = *v48;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_2529F7A80(0, *(v49 + 2) + 1, 1, v49);
    }

    v53 = *(v49 + 2);
    v52 = *(v49 + 3);
    if (v53 >= v52 >> 1)
    {
      v49 = sub_2529F7A80((v52 > 1), v53 + 1, 1, v49);
    }

    ++v47;
    *(v49 + 2) = v53 + 1;
    v54 = &v49[16 * v53];
    *(v54 + 4) = v51;
    *(v54 + 5) = v50;
    v48 += 2;
    if (v46 == v47)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
}

unint64_t sub_252A066DC(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  v4 = [a1 entity];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for CodableEntity();
    swift_allocObject();
    sub_252A06320(v5);
    v7 = v6;

    v8 = *(v2 + 16);
    *(v2 + 16) = v7;
  }

  v9 = [a1 taskResponses];
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = v9;
    type metadata accessor for HomeUserTaskResponse();
    v12 = sub_252E37264();

    v29 = v10;
    if (v12 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v28 = v2;
      v2 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x2530ADF00](v2, v12);
        }

        else
        {
          if (v2 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v14 = *(v12 + 8 * v2 + 32);
        }

        v15 = v14;
        v10 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        type metadata accessor for CodableHomeUserTaskResponse();
        v16 = swift_allocObject();
        *(v16 + 16) = 0;
        v17 = [v15 userTask];
        if (v17)
        {
          v18 = v17;
          type metadata accessor for CodableUserTask();
          v19 = swift_allocObject();
          v19[4] = 0;
          v19[2] = [v18 taskType];
          v19[3] = [v18 attribute];
          v20 = [v18 value];
          if (v20)
          {
            v21 = v20;
            type metadata accessor for CodableAttributeValue();
            swift_allocObject();
            v22 = sub_252A061B0(v21);

            v23 = v19[4];
            v19[4] = v22;
          }

          else
          {
          }

          v24 = *(v16 + 16);
          *(v16 + 16) = v19;
        }

        v25 = [v15 taskOutcome];

        *(v16 + 24) = v25;
        MEMORY[0x2530AD700]();
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v26 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v2;
        if (v10 == i)
        {
          v10 = v29;
          v2 = v28;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

LABEL_21:
  }

  *(v2 + 24) = v10;
  return v2;
}

unint64_t sub_252A069C0()
{
  result = qword_27F541960;
  if (!qword_27F541960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F541958, &qword_252E40EF0);
    sub_252A06D60(&qword_27F541968, type metadata accessor for CodableAttributeValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541960);
  }

  return result;
}

unint64_t sub_252A06A74()
{
  result = qword_27F541980;
  if (!qword_27F541980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F541978, &qword_252E40F00);
    sub_252A06D60(&qword_27F541988, type metadata accessor for CodableUserTask);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541980);
  }

  return result;
}

uint64_t sub_252A06B28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5416D8, &qword_252E40998);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252A06B94()
{
  result = qword_27F540B18;
  if (!qword_27F540B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540480, &qword_252E3C910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540B18);
  }

  return result;
}

unint64_t sub_252A06C10()
{
  result = qword_27F5419B0;
  if (!qword_27F5419B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5419A8, &qword_252E40F18);
    sub_252A06D60(&qword_27F5419B8, type metadata accessor for CodableEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5419B0);
  }

  return result;
}

uint64_t sub_252A06CC4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5418F0, &qword_252E40EB8);
    sub_252A06D60(a2, type metadata accessor for CodableHomeUserTaskResponse);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252A06D60(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeAutomationIntent.Verb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeAutomationIntent.Verb(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252A06F38()
{
  result = qword_27F5419D0;
  if (!qword_27F5419D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5419D0);
  }

  return result;
}

unint64_t sub_252A06F90()
{
  result = qword_27F5419D8;
  if (!qword_27F5419D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5419D8);
  }

  return result;
}

unint64_t sub_252A06FE8()
{
  result = qword_27F5419E0;
  if (!qword_27F5419E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5419E0);
  }

  return result;
}

unint64_t sub_252A07040()
{
  result = qword_27F5419E8;
  if (!qword_27F5419E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5419E8);
  }

  return result;
}

unint64_t sub_252A07098()
{
  result = qword_27F5419F0;
  if (!qword_27F5419F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5419F0);
  }

  return result;
}

unint64_t sub_252A070F0()
{
  result = qword_27F5419F8;
  if (!qword_27F5419F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5419F8);
  }

  return result;
}

unint64_t sub_252A07148()
{
  result = qword_27F541A00;
  if (!qword_27F541A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541A00);
  }

  return result;
}

unint64_t sub_252A071A0()
{
  result = qword_27F541A08;
  if (!qword_27F541A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541A08);
  }

  return result;
}

unint64_t sub_252A071F8()
{
  result = qword_27F541A10;
  if (!qword_27F541A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541A10);
  }

  return result;
}

unint64_t sub_252A07250()
{
  result = qword_27F541A18;
  if (!qword_27F541A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541A18);
  }

  return result;
}

unint64_t sub_252A072A8()
{
  result = qword_27F541A20;
  if (!qword_27F541A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541A20);
  }

  return result;
}

unint64_t sub_252A07300()
{
  result = qword_27F541A28;
  if (!qword_27F541A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541A28);
  }

  return result;
}

unint64_t sub_252A07358()
{
  result = qword_27F541A30;
  if (!qword_27F541A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541A30);
  }

  return result;
}

unint64_t sub_252A073B0()
{
  result = qword_27F541A38;
  if (!qword_27F541A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541A38);
  }

  return result;
}

unint64_t sub_252A07408()
{
  result = qword_27F541A40;
  if (!qword_27F541A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541A40);
  }

  return result;
}

uint64_t sub_252A0745C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746E45656D6F68 && a2 == 0xEE00656D614E7974;
  if (v4 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000252E66560 == a2 || (sub_252E37DB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEB00000000736570 || (sub_252E37DB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x707954656E656373 && a2 == 0xE900000000000065 || (sub_252E37DB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1836019570 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1701670760 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x73656E6F7ALL && a2 == 0xE500000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_252E37DB4();

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

uint64_t sub_252A07750(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657079546B736174 && a2 == 0xE800000000000000;
  if (v4 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xE900000000000065 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_252E37DB4();

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

uint64_t sub_252A0786C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756C61566C6F6F62 && a2 == 0xE900000000000065 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6156656C62756F64 && a2 == 0xEB0000000065756CLL || (sub_252E37DB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5672656765746E69 && a2 == 0xEC00000065756C61 || (sub_252E37DB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6156676E69727473 && a2 == 0xEB0000000065756CLL || (sub_252E37DB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C615674696D696CLL && a2 == 0xEA00000000006575 || (sub_252E37DB4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E61527265707075 && a2 == 0xEA00000000006567 || (sub_252E37DB4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E61527265776F6CLL && a2 == 0xEA00000000006567 || (sub_252E37DB4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_252E37DB4();

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

id EventTriggerValue.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id EventTriggerValue.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EventTriggerValue();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EventTriggerValue()
{
  result = qword_27F541A50;
  if (!qword_27F541A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252A07F00()
{
  sub_252A08028(319, &qword_27F541A60, MEMORY[0x277CC8990]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_252A08028(319, &qword_27F5415C0, MEMORY[0x277CC9578]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_252A08028(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_252E37734();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_252A080E8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25293B808;

  return (sub_252A081D4)(a2);
}

void *sub_252A08198@<X0>(void *a1@<X8>)
{
  type metadata accessor for BlockMissingSceneHandler();
  swift_allocObject();
  result = sub_252D192A0();
  *a1 = result;
  return result;
}

uint64_t sub_252A081D4()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A08270, 0, 0);
}

uint64_t sub_252A08270()
{
  v1 = v0[3];
  v2 = *(v0[2] + 16);

  sub_252E362B4();

  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_25295A234;
  v5 = v0[2];
  v4 = v0[3];

  return sub_252958618(v4);
}

uint64_t sub_252A08364()
{
  v1 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_event;
  v2 = sub_252E36324();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_time) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_offset) = 0;
  v3(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_home, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isOffsetToPast) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isRecurrence) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isWeekday) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isWeekend) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isEveryday) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_recurrence) = 0;
  return v0;
}

uint64_t sub_252A08464()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_event);
  v1 = *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_time);

  v2 = *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_offset);

  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_home);
  v3 = *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_recurrence);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_252A08508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v31 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  if (a1 == 0x746E657665 && a2 == 0xE500000000000000 || (result = sub_252E37DB4(), (result & 1) != 0))
  {
    sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_event, v16);
    v18 = sub_252E36324();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v16, 1, v18) == 1)
    {
      v20 = v16;
LABEL_6:
      result = sub_252938BBC(v20);
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v18;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    return (*(v19 + 32))(boxed_opaque_existential_0, v16, v18);
  }

  if (a1 == 1701669236 && a2 == 0xE400000000000000 || (result = sub_252E37DB4(), (result & 1) != 0))
  {
    v22 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_time);
    if (!v22)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  result = 0x74657366666FLL;
  if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000 || (result = sub_252E37DB4(), (result & 1) != 0))
  {
    v22 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_offset);
    if (!v22)
    {
      goto LABEL_7;
    }

    v23 = sub_252E36294();
    goto LABEL_14;
  }

  if ((a1 != 1701670760 || a2 != 0xE400000000000000) && (sub_252E37DB4() & 1) == 0)
  {
    result = 0x74657366664F7369;
    if (a1 == 0x74657366664F7369 && a2 == 0xEE00747361506F54 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v27 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isOffsetToPast;
    }

    else
    {
      result = 0x7272756365527369;
      if (a1 == 0x7272756365527369 && a2 == 0xEC00000065636E65 || (result = sub_252E37DB4(), (result & 1) != 0))
      {
        v27 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isRecurrence;
      }

      else
      {
        result = 0x61646B6565577369;
        if (a1 == 0x61646B6565577369 && a2 == 0xE900000000000079 || (result = sub_252E37DB4(), (result & 1) != 0))
        {
          v27 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isWeekday;
        }

        else
        {
          result = 0x6E656B6565577369;
          if (a1 == 0x6E656B6565577369 && a2 == 0xE900000000000064 || (result = sub_252E37DB4(), (result & 1) != 0))
          {
            v27 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isWeekend;
          }

          else
          {
            result = 0x6479726576457369;
            if (a1 != 0x6479726576457369 || a2 != 0xEA00000000007961)
            {
              result = sub_252E37DB4();
              if ((result & 1) == 0)
              {
                result = 0x6E65727275636572;
                if (a1 == 0x6E65727275636572 && a2 == 0xEA00000000006563 || (result = sub_252E37DB4(), (result & 1) != 0))
                {
                  v22 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_recurrence);
                  if (!v22)
                  {
                    goto LABEL_7;
                  }

LABEL_13:
                  v23 = sub_252E36224();
LABEL_14:
                  *(a3 + 24) = v23;
                  *a3 = v22;
                }

                if (a1 == 0x42746E6576457369 && a2 == 0xEC00000064657361 || (sub_252E37DB4() & 1) != 0)
                {
                  sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_event, v11);
                  v29 = sub_252E36324();
                  v30 = (*(*(v29 - 8) + 48))(v11, 1, v29) != 1;
                  result = sub_252938BBC(v11);
                  *(a3 + 24) = MEMORY[0x277D839B0];
                  *a3 = v30;
                  return result;
                }

                result = 0x6142656D69547369;
                if (a1 != 0x6142656D69547369 || a2 != 0xEB00000000646573)
                {
                  result = sub_252E37DB4();
                  if ((result & 1) == 0)
                  {
                    goto LABEL_7;
                  }
                }

                v28 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_time) != 0;
LABEL_33:
                *(a3 + 24) = MEMORY[0x277D839B0];
                *a3 = v28;
                return result;
              }
            }

            v27 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isEveryday;
          }
        }
      }
    }

    v28 = *(v3 + v27);
    goto LABEL_33;
  }

  sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_home, v14);
  v24 = sub_252E36324();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v14, 1, v24) == 1)
  {
    v20 = v14;
    goto LABEL_6;
  }

  *(a3 + 24) = v24;
  v26 = __swift_allocate_boxed_opaque_existential_0(a3);
  return (*(v25 + 32))(v26, v14, v24);
}

uint64_t sub_252A08B58(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6E656B6565577369;
    v6 = 0x6479726576457369;
    if (a1 != 8)
    {
      v6 = 0x6E65727275636572;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7272756365527369;
    if (a1 != 5)
    {
      v7 = 0x61646B6565577369;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x746E657665;
    v2 = 0x74657366666FLL;
    v3 = 1701670760;
    if (a1 != 3)
    {
      v3 = 0x74657366664F7369;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1701669236;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_252A08CA0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_252A08B58(*a1);
  v5 = v4;
  if (v3 == sub_252A08B58(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252A08D28()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252A08B58(v1);
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A08D8C()
{
  sub_252A08B58(*v0);
  sub_252E37044();
}

uint64_t sub_252A08DE0()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252A08B58(v1);
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A08E40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252A0A218();
  *a2 = result;
  return result;
}

uint64_t sub_252A08E70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252A08B58(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_252A08EB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252A0A218();
  *a1 = result;
  return result;
}

uint64_t sub_252A08EEC(uint64_t a1)
{
  v2 = sub_252A09DF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252A08F28(uint64_t a1)
{
  v2 = sub_252A09DF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252A08F64()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_event);
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_time);

  v2 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_offset);

  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_home);
  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_recurrence);

  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

void sub_252A09038()
{
  sub_2529576E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_252A090EC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AB0, &qword_252E41650);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A09DF8();
  sub_252E37F84();
  LOBYTE(v22) = 0;
  sub_252E36324();
  sub_252A09DB0(&qword_27F540548, MEMORY[0x277D55C48]);
  v20 = v3;
  sub_252E37CD4();
  if (!v2)
  {
    v22 = *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_time);
    v21 = 1;
    v11 = sub_252E36224();
    v12 = sub_252A09DB0(&qword_27F541AB8, MEMORY[0x277D55B90]);
    sub_252E37CD4();
    v19[0] = v12;
    v19[1] = v11;
    v22 = *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_offset);
    v21 = 2;
    sub_252E36294();
    sub_252A09DB0(&qword_27F540E10, MEMORY[0x277D55BB0]);
    sub_252E37CD4();
    LOBYTE(v22) = 3;
    sub_252E37CD4();
    v13 = *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isOffsetToPast);
    LOBYTE(v22) = 4;
    sub_252E37D04();
    v14 = *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isRecurrence);
    LOBYTE(v22) = 5;
    sub_252E37D04();
    v15 = *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isWeekday);
    LOBYTE(v22) = 6;
    sub_252E37D04();
    v16 = *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isWeekend);
    LOBYTE(v22) = 7;
    sub_252E37D04();
    v17 = *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isEveryday);
    LOBYTE(v22) = 8;
    sub_252E37D04();
    v22 = *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_recurrence);
    v21 = 9;
    sub_252E37CD4();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_252A09540()
{
  sub_2529576E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

id *sub_252A095F0(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - v10;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541A98, &qword_252E41648);
  v12 = *(v26 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v26);
  v15 = v24 - v14;
  v3[2] = 0;
  v17 = a1[3];
  v16 = a1[4];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_252A09DF8();
  sub_252E37F74();
  if (v2)
  {

    type metadata accessor for HomeAutomationDialogTrigger(0);
    v19 = *(*v3 + 12);
    v20 = *(*v3 + 26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v25 = v12;
    sub_252E36324();
    LOBYTE(v29) = 0;
    v18 = sub_252A09DB0(&qword_27F540538, MEMORY[0x277D55C48]);
    sub_252E37BE4();
    v24[3] = v18;
    sub_2529439A0(v11, v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_event);
    v22 = sub_252E36224();
    v28 = 1;
    v23 = sub_252A09DB0(&qword_27F541AA8, MEMORY[0x277D55B90]);
    sub_252E37BE4();
    v24[1] = v23;
    v24[2] = v22;
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_time) = v29;
    sub_252E36294();
    v28 = 2;
    sub_252A09DB0(&qword_27F540DF8, MEMORY[0x277D55BB0]);
    sub_252E37BE4();
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_offset) = v29;
    LOBYTE(v29) = 3;
    sub_252E37BE4();
    sub_2529439A0(v9, v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_home);
    LOBYTE(v29) = 4;
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isOffsetToPast) = sub_252E37C14() & 1;
    LOBYTE(v29) = 5;
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isRecurrence) = sub_252E37C14() & 1;
    LOBYTE(v29) = 6;
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isWeekday) = sub_252E37C14() & 1;
    LOBYTE(v29) = 7;
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isWeekend) = sub_252E37C14() & 1;
    LOBYTE(v29) = 8;
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isEveryday) = sub_252E37C14() & 1;
    v28 = 9;
    sub_252E37BE4();
    (*(v25 + 8))(v15, v26);
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_recurrence) = v29;
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
  return v3;
}

id *sub_252A09CA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for HomeAutomationDialogTrigger(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = sub_252A095F0(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_252A09DB0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_252A09DF8()
{
  result = qword_27F541AA0;
  if (!qword_27F541AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541AA0);
  }

  return result;
}

uint64_t sub_252A09E4C(uint64_t a1)
{
  *(v1 + 16) = 0;
  v3 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_event;
  swift_beginAccess();
  sub_252956C1C(a1 + v3, v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_event);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_time) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_time);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_offset) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_offset);
  v4 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_home;
  swift_beginAccess();
  sub_252956C1C(a1 + v4, v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_home);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isOffsetToPast) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isOffsetToPast);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isRecurrence) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isRecurrence);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isWeekday) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isWeekday);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isWeekend) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isWeekend);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isEveryday) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isEveryday);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_recurrence) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_recurrence);

  return v1;
}

uint64_t getEnumTagSinglePayload for HomeAutomationDialogTrigger.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeAutomationDialogTrigger.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252A0A114()
{
  result = qword_27F541AC0;
  if (!qword_27F541AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541AC0);
  }

  return result;
}

unint64_t sub_252A0A16C()
{
  result = qword_27F541AC8;
  if (!qword_27F541AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541AC8);
  }

  return result;
}

unint64_t sub_252A0A1C4()
{
  result = qword_27F541AD0;
  if (!qword_27F541AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541AD0);
  }

  return result;
}

uint64_t sub_252A0A218()
{
  v0 = sub_252E37B74();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252A0A2B4()
{
  type metadata accessor for AutomateHomeIntentDefaultHandleDelegate();
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(type metadata accessor for AutomateHomeIntentResponse()) init];
  v2 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  swift_beginAccess();
  *&v1[v2] = 5;
  [v1 setUserActivity_];
  *(v0 + 16) = v1;
  return v0;
}

id sub_252A0A354()
{
  v1 = [v0 type];
  if (v1 >= 7)
  {
    v2 = 0;
  }

  else
  {
    v2 = v1;
  }

  v28 = [v0 BOOLValue];
  [v0 doubleValue];
  v4 = v3;
  v5 = [v0 integerValue];
  v6 = [v0 stringValue];
  if (v6)
  {
    v7 = v6;
    sub_252E36F34();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v0 limitValue];
  v11 = [v0 unit];
  if (v11 >= 6)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  v13 = [v0 rangeValue];
  [v13 lowerValue];
  v15 = v14;
  [v13 upperValue];
  v17 = v16;
  v18 = objc_allocWithZone(type metadata accessor for HomeAttributeRange());
  v19 = sub_252E36F04();
  v20 = [v18 initWithIdentifier:0 displayString:v19];

  v21 = v20;
  [v21 setLowerValue_];
  [v21 setUpperValue_];

  v22 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v23 = sub_252E36F04();
  v24 = [v22 initWithIdentifier:0 displayString:v23];

  [v24 setType_];
  [v24 setUnit_];
  if (v2 > 2)
  {
    if (v2 > 4)
    {
      if (v2 == 5)
      {
        if (v10 >= 3)
        {
          v26 = 0;
        }

        else
        {
          v26 = v10;
        }

        [v24 setLimitValue_];
      }

      else
      {

        [v24 setRangeValue_];
      }
    }

    else if (v2 == 3)
    {
      if (v9)
      {
        v25 = sub_252E36F04();

        [v24 setStringValue_];
      }
    }

    else
    {

      [v24 setIntegerValue_];
    }

    goto LABEL_27;
  }

  if (v2)
  {

    if (v2 == 1)
    {
      [v24 setBoolValue_];
    }

    else
    {
      [v24 setDoubleValue_];
    }

LABEL_27:

    return v24;
  }

  return v24;
}

unint64_t HomeAttributeUnit.toProtobuf()(unint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  return result;
}

id sub_252A0A6A0()
{
  result = [v0 doubleValue];
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.22337204e18)
  {
    v3 = v2;
    v4 = [v0 unit];
    v5 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v6 = sub_252E36F04();
    v7 = [v5 initWithIdentifier:0 displayString:v6];

    [v7 setType_];
    [v7 setUnit_];
    [v7 setIntegerValue_];
    return v7;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t HomeDeviceType.toProtobuf()(unint64_t a1)
{
  if (a1 < 0x30)
  {
    return qword_252E417F8[a1];
  }

  result = sub_252E37DF4();
  __break(1u);
  return result;
}

unint64_t INHomeDeviceType.toCustom()(unint64_t result)
{
  if (result >= 0x2E)
  {
    return 0;
  }

  return result;
}

uint64_t sub_252A0A844(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006B63;
  v3 = 0x616C426863746970;
  v4 = a1;
  v5 = 0x6769724279726576;
  v6 = 0xEA00000000007468;
  if (a1 != 5)
  {
    v5 = 0x6E776F6E6B6E75;
    v6 = 0xE700000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7170404;
  if (a1 != 3)
  {
    v8 = 0x746867697262;
    v7 = 0xE600000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6B72614479726576;
  if (a1 != 1)
  {
    v10 = 1802658148;
    v9 = 0xE400000000000000;
  }

  if (!a1)
  {
    v10 = 0x616C426863746970;
    v9 = 0xEA00000000006B63;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x6B72614479726576)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE400000000000000;
        if (v11 != 1802658148)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEA00000000007468;
        if (v11 != 0x6769724279726576)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x6E776F6E6B6E75)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE300000000000000;
      if (v11 != 7170404)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v2 = 0xE600000000000000;
    v3 = 0x746867697262;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = sub_252E37DB4();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_252A0AA3C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64656B636F6C6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x64656D6D616ALL;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x64656B636F6CLL;
    }

    else
    {
      v4 = 0x64656B636F6C6E75;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x64656D6D616ALL;
  if (a2 != 2)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x64656B636F6CLL;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252A0AB70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1919508838;
  v6 = 0xE800000000000000;
  v7 = 0x726F697265666E69;
  if (a1 != 4)
  {
    v7 = 1919905648;
    v6 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x6E656C6C65637865;
  v9 = 0xE900000000000074;
  if (a1 != 1)
  {
    v8 = 1685024615;
    v9 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1919508838)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x726F697265666E69)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1919905648)
      {
LABEL_34:
        v13 = sub_252E37DB4();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000074;
      if (v10 != 0x6E656C6C65637865)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1685024615)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x6E776F6E6B6E75)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_252A0AD2C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6465736F6C63;
    }

    else
    {
      v5 = 1852141679;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    if (a1 == 2)
    {
      v4 = 1852141679;
      goto LABEL_12;
    }

    if (a1 == 3)
    {
      v4 = 1936682083;
LABEL_12:
      v5 = v4 | 0x676E6900000000;
      goto LABEL_14;
    }

    v5 = 0x646570706F7473;
  }

LABEL_14:
  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6465736F6C63;
    }

    else
    {
      v9 = 1852141679;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v5 != v9)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v6 = 0x676E69736F6C63;
    if (a2 != 3)
    {
      v6 = 0x646570706F7473;
    }

    if (a2 == 2)
    {
      v7 = 0x676E696E65706FLL;
    }

    else
    {
      v7 = v6;
    }

    v8 = 0xE700000000000000;
    if (v5 != v7)
    {
      goto LABEL_31;
    }
  }

  if (v3 != v8)
  {
LABEL_31:
    v10 = sub_252E37DB4();
    goto LABEL_32;
  }

  v10 = 1;
LABEL_32:

  return v10 & 1;
}

uint64_t sub_252A0AE98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0x6964696D75686564;
  v5 = 0xEA00000000007966;
  v6 = 1869903201;
  if (a1 != 4)
  {
    v6 = 1701736302;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = 0xE400000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 28271;
  if (a1 != 1)
  {
    v8 = 0x79666964696D7568;
    v7 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 6710895;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xEA00000000007966;
      if (v9 != 0x6964696D75686564)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE400000000000000;
      if (a2 == 4)
      {
        if (v9 != 1869903201)
        {
          goto LABEL_34;
        }
      }

      else if (v9 != 1701736302)
      {
LABEL_34:
        v12 = sub_252E37DB4();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xE200000000000000;
      if (v9 != 28271)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE800000000000000;
      if (v9 != 0x79666964696D7568)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v11 = 0xE300000000000000;
    if (v9 != 6710895)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t sub_252A0B044(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1701670760;
    }

    else
    {
      v4 = 6710895;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 2036430689;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x746867696ELL;
  }

  else
  {
    v4 = 0x6572656767697274;
    v3 = 0xE900000000000064;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1701670760;
    }

    else
    {
      v9 = 6710895;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x746867696ELL;
    if (a2 != 3)
    {
      v6 = 0x6572656767697274;
      v5 = 0xE900000000000064;
    }

    if (a2 == 2)
    {
      v7 = 2036430689;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_252E37DB4();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_252A0B1A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 1952540008;
  v5 = 1819242339;
  if (a1 != 4)
  {
    v5 = 1869903201;
  }

  if (a1 != 3)
  {
    v4 = v5;
  }

  v6 = 0xE300000000000000;
  v7 = 6710895;
  if (a1 != 1)
  {
    v7 = 28271;
    v6 = 0xE200000000000000;
  }

  if (a1)
  {
    v3 = v6;
  }

  else
  {
    v7 = 1701736302;
  }

  if (a1 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  if (v2 <= 2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (a2 > 2u)
  {
    v10 = 0xE400000000000000;
    if (a2 == 3)
    {
      if (v8 != 1952540008)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      if (v8 != 1819242339)
      {
        goto LABEL_34;
      }
    }

    else if (v8 != 1869903201)
    {
LABEL_34:
      v11 = sub_252E37DB4();
      goto LABEL_35;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0xE300000000000000;
      if (v8 != 6710895)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v10 = 0xE200000000000000;
      if (v8 != 28271)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v10 = 0xE400000000000000;
    if (v8 != 1701736302)
    {
      goto LABEL_34;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_34;
  }

  v11 = 1;
LABEL_35:

  return v11 & 1;
}

uint64_t sub_252A0B328(char a1, unsigned __int8 a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0x656D75736572;
    }

    else
    {
      v2 = 0x6C65636E6163;
    }

    v3 = 0xE600000000000000;
    v4 = a2;
    if (a2)
    {
LABEL_6:
      if (v4 == 1)
      {
        v5 = 0x656D75736572;
      }

      else
      {
        v5 = 0x6C65636E6163;
      }

      v6 = 0xE600000000000000;
      if (v2 != v5)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v2 = 0x6573756170;
    v4 = a2;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v6 = 0xE500000000000000;
  if (v2 != 0x6573756170)
  {
LABEL_15:
    v7 = sub_252E37DB4();
    goto LABEL_16;
  }

LABEL_13:
  if (v3 != v6)
  {
    goto LABEL_15;
  }

  v7 = 1;
LABEL_16:

  return v7 & 1;
}

uint64_t sub_252A0B420(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006C616369;
  v3 = 0x6863726172656968;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6F7268636F6E6F6DLL;
    }

    else
    {
      v5 = 0x657474656C6170;
    }

    if (v4 == 2)
    {
      v6 = 0xEA0000000000656DLL;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6C6F6369746C756DLL;
    }

    else
    {
      v5 = 0x6863726172656968;
    }

    if (v4)
    {
      v6 = 0xEA0000000000726FLL;
    }

    else
    {
      v6 = 0xEC0000006C616369;
    }
  }

  v7 = 0x6F7268636F6E6F6DLL;
  v8 = 0xE700000000000000;
  if (a2 == 2)
  {
    v8 = 0xEA0000000000656DLL;
  }

  else
  {
    v7 = 0x657474656C6170;
  }

  if (a2)
  {
    v3 = 0x6C6F6369746C756DLL;
    v2 = 0xEA0000000000726FLL;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252A0B578(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0xD000000000000016;
    }

    else
    {
      v4 = 0x656D695469726973;
    }

    if (v2)
    {
      v3 = 0x8000000252E68640;
    }

    else
    {
      v3 = 0xEB0000000074756FLL;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x8000000252E68660;
    v4 = 0xD000000000000015;
  }

  else if (a1 == 3)
  {
    v3 = 0x8000000252E68680;
    v4 = 0xD000000000000017;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = 0x656D695469726973;
    }

    if (a2)
    {
      v5 = 0x8000000252E68640;
    }

    else
    {
      v5 = 0xEB0000000074756FLL;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x8000000252E68660;
    if (v4 != 0xD000000000000015)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x8000000252E68680;
    if (v4 != 0xD000000000000017)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    if (v4 != 0x6E776F6E6B6E75)
    {
LABEL_31:
      v7 = sub_252E37DB4();
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_252A0B718(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF73736563637573;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000015;
    }

    else
    {
      v5 = 0xD000000000000023;
    }

    if (v3 == 2)
    {
      v4 = 0x8000000252E684C0;
    }

    else
    {
      v4 = 0x8000000252E684E0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xEF6572756C696166;
    }

    else
    {
      v4 = 0xEF73736563637573;
    }

    v5 = 0x2E656D6F6374754FLL;
  }

  v6 = 0xD000000000000015;
  v7 = 0x8000000252E684E0;
  if (a2 == 2)
  {
    v7 = 0x8000000252E684C0;
  }

  else
  {
    v6 = 0xD000000000000023;
  }

  if (a2)
  {
    v2 = 0xEF6572756C696166;
  }

  if (a2 <= 1u)
  {
    v8 = 0x2E656D6F6374754FLL;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v5 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_252E37DB4();
  }

  return v10 & 1;
}

uint64_t sub_252A0B850(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 12639;
  v5 = 0xE600000000000000;
  v6 = 0x444961657261;
  v7 = 0xE500000000000000;
  v8 = 0x444970616DLL;
  if (a1 != 4)
  {
    v8 = 1701667182;
    v7 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x65746174536E7572;
  if (a1 != 1)
  {
    v10 = 0x646F4D6E61656C63;
    v9 = 0xEA00000000007365;
  }

  if (a1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x444961657261)
      {
        goto LABEL_33;
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x444970616DLL)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v13 = 0xE400000000000000;
      if (v11 != 1701667182)
      {
LABEL_33:
        v14 = sub_252E37DB4();
        goto LABEL_34;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x65746174536E7572)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v13 = 0xEA00000000007365;
      if (v11 != 0x646F4D6E61656C63)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    v13 = 0xE200000000000000;
    if (v11 != 12639)
    {
      goto LABEL_33;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_33;
  }

  v14 = 1;
LABEL_34:

  return v14 & 1;
}

uint64_t sub_252A0BA18(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000014;
  v3 = "assistantIdentifier";
  v4 = a1;
  v5 = 0xD00000000000002FLL;
  if (a1 == 4)
  {
    v6 = "estrictedGuestUserDueToRemote";
  }

  else
  {
    v5 = 0xD00000000000001CLL;
    v6 = "estrictedGuestUserDueToSchedule";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000002DLL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v6 = "proceedAsNonRestrictedUser";
  }

  v8 = 0xD00000000000001ALL;
  if (v4 == 1)
  {
    v8 = 0xD000000000000014;
    v9 = "ueToNoTargetedHome";
  }

  else
  {
    v9 = "unableToProceedAtAll";
  }

  if (!v4)
  {
    v8 = 0xD000000000000022;
    v9 = "assistantIdentifier";
  }

  if (v4 <= 2)
  {
    v10 = v9;
  }

  else
  {
    v8 = v7;
    v10 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000002DLL;
      v3 = "proceedAsNonRestrictedUser";
    }

    else if (a2 == 4)
    {
      v2 = 0xD00000000000002FLL;
      v3 = "estrictedGuestUserDueToRemote";
    }

    else
    {
      v2 = 0xD00000000000001CLL;
      v3 = "estrictedGuestUserDueToSchedule";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v3 = "ueToNoTargetedHome";
    }

    else
    {
      v2 = 0xD00000000000001ALL;
      v3 = "unableToProceedAtAll";
    }
  }

  else
  {
    v2 = 0xD000000000000022;
  }

  if (v8 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252A0BB8C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1701670771;
    }

    else
    {
      v4 = 6647407;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE300000000000000;
    v4 = 7105633;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1752461154;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x747065637865;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1701670771;
    }

    else
    {
      v9 = 6647407;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1752461154;
    if (a2 != 3)
    {
      v6 = 0x747065637865;
      v5 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v7 = 7105633;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_252E37DB4();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_252A0BCD8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000747865;
  v3 = 0x547972616D697270;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0x4C6D7269666E6F63;
    v14 = 0xEC0000006C656261;
    if (a1 != 2)
    {
      v13 = 0x6562614C796E6564;
      v14 = 0xE90000000000006CLL;
    }

    v15 = 0x7261646E6F636573;
    v16 = 0xED00007478655479;
    if (!a1)
    {
      v15 = 0x547972616D697270;
      v16 = 0xEB00000000747865;
    }

    if (a1 <= 1u)
    {
      v11 = v15;
    }

    else
    {
      v11 = v13;
    }

    if (v4 <= 1)
    {
      v12 = v16;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v5 = 0x7572747365447369;
    v6 = 0xED00006576697463;
    v7 = 0x8000000252E67840;
    v8 = 0xD000000000000011;
    if (a1 != 7)
    {
      v8 = 0xD000000000000010;
      v7 = 0x8000000252E67860;
    }

    if (a1 != 6)
    {
      v5 = v8;
      v6 = v7;
    }

    v9 = 0x8000000252E677F0;
    v10 = 0xD000000000000017;
    if (a1 != 4)
    {
      v10 = 0xD000000000000014;
      v9 = 0x8000000252E67810;
    }

    if (a1 <= 5u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 5)
    {
      v12 = v9;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0x8000000252E677F0;
        if (v11 != 0xD000000000000017)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0x8000000252E67810;
        if (v11 != 0xD000000000000014)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 != 6)
    {
      if (a2 == 7)
      {
        v2 = 0x8000000252E67840;
        if (v11 != 0xD000000000000011)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      v3 = 0xD000000000000010;
      v2 = 0x8000000252E67860;
      goto LABEL_45;
    }

    v17 = 0x7572747365447369;
    v18 = 0x6576697463;
LABEL_40:
    v2 = v18 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
    if (v11 != v17)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0xEC0000006C656261;
      if (v11 != 0x4C6D7269666E6F63)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v2 = 0xE90000000000006CLL;
      if (v11 != 0x6562614C796E6564)
      {
        goto LABEL_49;
      }
    }

    goto LABEL_46;
  }

  if (a2)
  {
    v17 = 0x7261646E6F636573;
    v18 = 0x7478655479;
    goto LABEL_40;
  }

LABEL_45:
  if (v11 != v3)
  {
LABEL_49:
    v19 = sub_252E37DB4();
    goto LABEL_50;
  }

LABEL_46:
  if (v12 != v2)
  {
    goto LABEL_49;
  }

  v19 = 1;
LABEL_50:

  return v19 & 1;
}

uint64_t sub_252A0BFF0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000657275;
  v3 = 0x74617265706D6574;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x547972616D697270;
    }

    else
    {
      v5 = 0x74617265706D6574;
    }

    if (v4)
    {
      v6 = 0xEB00000000747865;
    }

    else
    {
      v6 = 0xEB00000000657275;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x7261646E6F636573;
    v6 = 0xED00007478655479;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6E69746165487369;
    }

    else
    {
      v5 = 0x74754F68636E7570;
    }

    if (v4 == 3)
    {
      v6 = 0xE900000000000067;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  v7 = 0x7261646E6F636573;
  v8 = 0xED00007478655479;
  v9 = 0x6E69746165487369;
  v10 = 0xE900000000000067;
  if (a2 != 3)
  {
    v9 = 0x74754F68636E7570;
    v10 = 0xE800000000000000;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v8 = v10;
  }

  if (a2)
  {
    v3 = 0x547972616D697270;
    v2 = 0xEB00000000747865;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_252E37DB4();
  }

  return v13 & 1;
}

uint64_t sub_252A0C1A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000747865;
  v3 = 0x547972616D697270;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x6572676F72506E69;
    v12 = 0xEA00000000007373;
    if (a1 != 6)
    {
      v11 = 0x6E45656C67676F74;
      v12 = 0xED000064656C6261;
    }

    v13 = 0x7365636375537369;
    v14 = 0xE900000000000073;
    if (a1 != 4)
    {
      v13 = 0x74754F68636E7570;
      v14 = 0xE800000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v11;
    }

    if (v4 <= 5)
    {
      v10 = v14;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v5 = 0x8000000252E67EC0;
    v6 = 0xD000000000000015;
    if (a1 != 2)
    {
      v6 = 0xD000000000000011;
      v5 = 0x8000000252E67840;
    }

    v7 = 0x7261646E6F636573;
    v8 = 0xED00007478655479;
    if (!a1)
    {
      v7 = 0x547972616D697270;
      v8 = 0xEB00000000747865;
    }

    if (a1 <= 1u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0xE900000000000073;
        if (v9 != 0x7365636375537369)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v9 != 0x74754F68636E7570)
        {
          goto LABEL_44;
        }
      }

      goto LABEL_40;
    }

    if (a2 == 6)
    {
      v2 = 0xEA00000000007373;
      if (v9 != 0x6572676F72506E69)
      {
        goto LABEL_44;
      }

      goto LABEL_40;
    }

    v15 = 0x6E45656C67676F74;
    v16 = 0x64656C6261;
    goto LABEL_43;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0x8000000252E67EC0;
      if (v9 != 0xD000000000000015)
      {
        goto LABEL_44;
      }

      goto LABEL_40;
    }

    v3 = 0xD000000000000011;
    v2 = 0x8000000252E67840;
  }

  else if (a2)
  {
    v15 = 0x7261646E6F636573;
    v16 = 0x7478655479;
LABEL_43:
    v2 = v16 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
    if (v9 != v15)
    {
      goto LABEL_44;
    }

    goto LABEL_40;
  }

  if (v9 != v3)
  {
LABEL_44:
    v17 = sub_252E37DB4();
    goto LABEL_45;
  }

LABEL_40:
  if (v10 != v2)
  {
    goto LABEL_44;
  }

  v17 = 1;
LABEL_45:

  return v17 & 1;
}

uint64_t sub_252A0C460(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000079746974;
  v3 = 0x6E45656369766544;
  v4 = a1;
  v5 = 0x79726F6765746143;
  v6 = 0xEE00797469746E45;
  v7 = 0x69746E456D6F6F52;
  v8 = 0xEA00000000007974;
  if (a1 != 4)
  {
    v7 = 1701736302;
    v8 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x69746E45656D6F48;
  v10 = 0xEA00000000007974;
  if (a1 != 1)
  {
    v9 = 0x746E45656E656353;
    v10 = 0xEB00000000797469;
  }

  if (!a1)
  {
    v9 = 0x6E45656369766544;
    v10 = 0xEC00000079746974;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEE00797469746E45;
      if (v11 != 0x79726F6765746143)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    if (a2 == 4)
    {
      v13 = 1836019538;
LABEL_22:
      v2 = 0xEA00000000007974;
      if (v11 != (v13 | 0x69746E4500000000))
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    v2 = 0xE400000000000000;
    if (v11 != 1701736302)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = 1701670728;
        goto LABEL_22;
      }

      v3 = 0x746E45656E656353;
      v2 = 0xEB00000000797469;
    }

    if (v11 != v3)
    {
LABEL_31:
      v14 = sub_252E37DB4();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v14 = 1;
LABEL_32:

  return v14 & 1;
}

uint64_t sub_252A0C64C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C6562616CLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6E6F69746361;
    }

    else
    {
      v4 = 0x666E6F436E6F6369;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEA00000000006769;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x614C686365657073;
    }

    else
    {
      v4 = 0x6C6562616CLL;
    }

    if (v3)
    {
      v5 = 0xEB000000006C6562;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x6E6F69746361;
  if (a2 != 2)
  {
    v8 = 0x666E6F436E6F6369;
    v7 = 0xEA00000000006769;
  }

  if (a2)
  {
    v2 = 0x614C686365657073;
    v6 = 0xEB000000006C6562;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252A0C79C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746E6563726570;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 0x4773656572676564;
    }

    if (v3 == 2)
    {
      v5 = 0x8000000252E67E40;
    }

    else
    {
      v5 = 0xEE00636972656E65;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x4373656572676564;
    }

    else
    {
      v4 = 0x746E6563726570;
    }

    if (v3)
    {
      v5 = 0xEE00737569736C65;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xD000000000000011;
  v8 = 0x8000000252E67E40;
  if (a2 != 2)
  {
    v7 = 0x4773656572676564;
    v8 = 0xEE00636972656E65;
  }

  if (a2)
  {
    v2 = 0x4373656572676564;
    v6 = 0xEE00737569736C65;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252A0C910(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x61746C6564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x65766F6261;
    }

    else
    {
      v4 = 0x776F6C6562;
    }

    v5 = 0xE500000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x61746C65646E6F6ELL;
    }

    else
    {
      v4 = 0x61746C6564;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x65766F6261;
  if (a2 != 2)
  {
    v7 = 0x776F6C6562;
  }

  if (a2)
  {
    v2 = 0x61746C65646E6F6ELL;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_252E37DB4();
  }

  return v10 & 1;
}

uint64_t sub_252A0CA40(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006570;
  v3 = 0x696669746E656469;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 1701667182;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v4 == 2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0x8000000252E66720;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x7954797469746E65;
    }

    else
    {
      v5 = 0x696669746E656469;
    }

    if (v4)
    {
      v6 = 0xEA00000000006570;
    }

    else
    {
      v6 = 0xEA00000000007265;
    }
  }

  v7 = 1701667182;
  v8 = 0x8000000252E66720;
  if (a2 == 2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (a2)
  {
    v3 = 0x7954797469746E65;
  }

  else
  {
    v2 = 0xEA00000000007265;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252A0CB74(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000073;
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 0x8000000252E67D00;
    v13 = 0xD000000000000013;
    if (a1 != 2)
    {
      v13 = 0xD000000000000015;
      v12 = 0x8000000252E67D20;
    }

    v14 = 0x8000000252E67CE0;
    v15 = 0xD000000000000014;
    if (!a1)
    {
      v15 = 0x746867694C6D6964;
      v14 = 0xE900000000000073;
    }

    if (a1 <= 1u)
    {
      v10 = v15;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 1)
    {
      v11 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0x8000000252E67D80;
    v5 = 0x8000000252E67DA0;
    v6 = 0xD000000000000011;
    if (a1 == 7)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v5 = 0x8000000252E67DC0;
    }

    if (a1 == 6)
    {
      v7 = 0xD000000000000015;
    }

    else
    {
      v7 = v6;
    }

    if (a1 != 6)
    {
      v4 = v5;
    }

    v8 = 0x8000000252E67D40;
    v9 = 0xD000000000000019;
    if (a1 != 4)
    {
      v9 = 0xD000000000000012;
      v8 = 0x8000000252E67D60;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    if (v3 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v16 = "getStateOfGarageDoors";
LABEL_47:
        v2 = (v16 - 32) | 0x8000000000000000;
        if (v10 != 0xD000000000000015)
        {
          goto LABEL_54;
        }

        goto LABEL_52;
      }

      v2 = 0x8000000252E67D00;
      if (v10 != 0xD000000000000013)
      {
        goto LABEL_54;
      }
    }

    else if (a2)
    {
      v2 = 0x8000000252E67CE0;
      if (v10 != 0xD000000000000014)
      {
        goto LABEL_54;
      }
    }

    else if (v10 != 0x746867694C6D6964)
    {
      goto LABEL_54;
    }
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v16 = "getStateOfLightsPower";
      }

      else
      {
        if (a2 != 7)
        {
          v2 = 0x8000000252E67DC0;
          if (v10 != 0xD000000000000011)
          {
            goto LABEL_54;
          }

          goto LABEL_52;
        }

        v16 = "getStateOfTemperature";
      }

      goto LABEL_47;
    }

    if (a2 == 4)
    {
      v2 = 0x8000000252E67D40;
      if (v10 != 0xD000000000000019)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v2 = 0x8000000252E67D60;
      if (v10 != 0xD000000000000012)
      {
LABEL_54:
        v17 = sub_252E37DB4();
        goto LABEL_55;
      }
    }
  }

LABEL_52:
  if (v11 != v2)
  {
    goto LABEL_54;
  }

  v17 = 1;
LABEL_55:

  return v17 & 1;
}

uint64_t sub_252A0CE08(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x65756C615678616DLL;
    }

    else
    {
      v4 = 0x6574656C706D6F63;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEA0000000000796CLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x65756C61566E696DLL;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x65756C615678616DLL;
  if (a2 != 2)
  {
    v8 = 0x6574656C706D6F63;
    v7 = 0xEA0000000000796CLL;
  }

  if (a2)
  {
    v2 = 0x65756C61566E696DLL;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252A0CF54(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656D6FLL;
  v3 = 0x685F657669727261;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x657369726E7573;
    }

    else
    {
      v5 = 0x7465736E7573;
    }

    if (v4 == 2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6F685F657661656CLL;
    }

    else
    {
      v5 = 0x685F657669727261;
    }

    if (v4)
    {
      v6 = 0xEA0000000000656DLL;
    }

    else
    {
      v6 = 0xEB00000000656D6FLL;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x657369726E7573;
  if (a2 != 2)
  {
    v8 = 0x7465736E7573;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v3 = 0x6F685F657661656CLL;
    v2 = 0xEA0000000000656DLL;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252A0D09C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x474E4954414548;
  v3 = a1;
  v4 = 0xE700000000000000;
  v5 = 0x5455415F54414548;
  v6 = 0xE90000000000004FLL;
  if (a1 != 5)
  {
    v5 = 0x5455415F4C4F4F43;
    v6 = 0xE90000000000004FLL;
  }

  v7 = 1162626121;
  if (a1 != 3)
  {
    v7 = 1330926913;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = 0xE400000000000000;
  }

  v8 = 0xE700000000000000;
  v9 = 0x474E494C4F4F43;
  if (a1 != 1)
  {
    v9 = 4605519;
    v8 = 0xE300000000000000;
  }

  if (a1)
  {
    v4 = v8;
  }

  else
  {
    v9 = 0x474E4954414548;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v3 <= 2)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE700000000000000;
        v2 = 0x474E494C4F4F43;
      }

      else
      {
        v12 = 0xE300000000000000;
        v2 = 4605519;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v13 = 1413563720;
    }

    else
    {
      v13 = 1280266051;
    }

    v2 = v13 | 0x5455415F00000000;
    v12 = 0xE90000000000004FLL;
  }

  else
  {
    v12 = 0xE400000000000000;
    if (a2 == 3)
    {
      v2 = 1162626121;
    }

    else
    {
      v2 = 1330926913;
    }
  }

  if (v10 == v2 && v11 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_252E37DB4();
  }

  return v14 & 1;
}

uint64_t sub_252A0D268(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000011;
  v3 = a1;
  if (a1 > 4u)
  {
    v10 = 0x8000000252E68440;
    v11 = 0x8000000252E68460;
    v12 = 0xD000000000000018;
    if (a1 == 8)
    {
      v12 = 0xD000000000000013;
    }

    else
    {
      v11 = 0x8000000252E68480;
    }

    if (a1 == 7)
    {
      v13 = 0xD000000000000011;
    }

    else
    {
      v13 = v12;
    }

    if (a1 != 7)
    {
      v10 = v11;
    }

    v14 = 0x4274737544637672;
    if (a1 == 5)
    {
      v15 = 0xEE006C6C75466E69;
    }

    else
    {
      v14 = 0xD000000000000013;
      v15 = 0x8000000252E68420;
    }

    if (a1 <= 6u)
    {
      v8 = v14;
    }

    else
    {
      v8 = v13;
    }

    if (v3 <= 6)
    {
      v9 = v15;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v4 = 0x8000000252E683D0;
    v5 = 0xD00000000000001BLL;
    if (a1 != 3)
    {
      v5 = 0xD000000000000011;
      v4 = 0x8000000252E683F0;
    }

    if (a1 == 2)
    {
      v5 = 0x6E776F6E6B6E75;
      v4 = 0xE700000000000000;
    }

    v6 = 0x8000000252E67470;
    v7 = 0xD000000000000016;
    if (a1)
    {
      v7 = 0xD00000000000001DLL;
      v6 = 0x8000000252E683B0;
    }

    if (a1 <= 1u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (v3 <= 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v2 = 0x4274737544637672;
        v16 = 0xEE006C6C75466E69;
        goto LABEL_52;
      }

      v17 = "rvcWaterTankMissing";
    }

    else
    {
      if (a2 == 7)
      {
        v18 = "rvcWaterTankEmpty";
        goto LABEL_47;
      }

      if (a2 != 8)
      {
        v16 = 0x8000000252E68480;
        v2 = 0xD000000000000018;
        goto LABEL_52;
      }

      v17 = "rvcWaterTankLidOpen";
    }

    v16 = (v17 - 32) | 0x8000000000000000;
    v2 = 0xD000000000000013;
    goto LABEL_52;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v16 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      goto LABEL_52;
    }

    if (a2 == 3)
    {
      v16 = 0x8000000252E683D0;
      v2 = 0xD00000000000001BLL;
      goto LABEL_52;
    }

    v18 = "rvcDustBinMissing";
LABEL_47:
    v16 = (v18 - 32) | 0x8000000000000000;
    goto LABEL_52;
  }

  if (a2)
  {
    v16 = 0x8000000252E683B0;
    v2 = 0xD00000000000001DLL;
  }

  else
  {
    v16 = 0x8000000252E67470;
    v2 = 0xD000000000000016;
  }

LABEL_52:
  if (v8 == v2 && v9 == v16)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_252E37DB4();
  }

  return v19 & 1;
}

uint64_t sub_252A0D524(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7628135;
  v3 = a1;
  if (a1 <= 3u)
  {
    v11 = 7628147;
    v12 = 0xE600000000000000;
    v13 = 0x656C67676F74;
    if (a1 != 2)
    {
      v13 = 2003789939;
      v12 = 0xE400000000000000;
    }

    if (a1)
    {
      v11 = 7628135;
    }

    if (a1 <= 1u)
    {
      v9 = v11;
    }

    else
    {
      v9 = v13;
    }

    if (v3 <= 1)
    {
      v10 = 0xE300000000000000;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v4 = 0x8000000252E678C0;
    v5 = 0x8000000252E678E0;
    v6 = 0xD000000000000012;
    if (a1 != 7)
    {
      v6 = 0x656E4F6863696877;
      v5 = 0xEF64656C69614673;
    }

    if (a1 == 6)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v4 = v5;
    }

    v7 = 0xE500000000000000;
    v8 = 0xD000000000000011;
    if (a1 == 4)
    {
      v8 = 0x746E756F63;
    }

    else
    {
      v7 = 0x8000000252E678A0;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v3 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0xE600000000000000;
        if (v9 != 0x656C67676F74)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v14 = 0xE400000000000000;
        if (v9 != 2003789939)
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
      if (!a2)
      {
        v2 = 7628147;
      }

      v14 = 0xE300000000000000;
      if (v9 != v2)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v14 = 0xE500000000000000;
      if (v9 != 0x746E756F63)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0x8000000252E678A0;
      if (v9 != 0xD000000000000011)
      {
LABEL_52:
        v15 = sub_252E37DB4();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v14 = 0x8000000252E678C0;
    if (v9 != 0xD000000000000010)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v14 = 0x8000000252E678E0;
    if (v9 != 0xD000000000000012)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v14 = 0xEF64656C69614673;
    if (v9 != 0x656E4F6863696877)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v14)
  {
    goto LABEL_52;
  }

  v15 = 1;
LABEL_53:

  return v15 & 1;
}

uint64_t sub_252A0D7C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x4D74636566726570;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 0x74614D7361696C61;
    }

    if (v3 == 2)
    {
      v5 = 0x8000000252E65390;
    }

    else
    {
      v5 = 0xEA00000000006863;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x4D6C616974726170;
    }

    else
    {
      v4 = 0x4D74636566726570;
    }

    v5 = 0xEC00000068637461;
  }

  v6 = 0xD000000000000010;
  v7 = 0x8000000252E65390;
  if (a2 != 2)
  {
    v6 = 0x74614D7361696C61;
    v7 = 0xEA00000000006863;
  }

  if (a2)
  {
    v2 = 0x4D6C616974726170;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = 0xEC00000068637461;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_252E37DB4();
  }

  return v10 & 1;
}

uint64_t sub_252A0D908(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v8 = 0xE500000000000000;
        v7 = 0x7365707974;
      }

      else
      {
        v8 = 0xE600000000000000;
        v7 = 0x736574617473;
      }
    }

    else
    {
      v8 = 0xE400000000000000;
      if (a1 == 4)
      {
        v7 = 1701670760;
      }

      else
      {
        v7 = 1701869940;
      }
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1836019570;
    if (a1 != 2)
    {
      v4 = 0x73656E6F7ALL;
      v3 = 0xE500000000000000;
    }

    v5 = 0xD000000000000010;
    v6 = 0x8000000252E66560;
    if (!a1)
    {
      v5 = 0x614E797469746E65;
      v6 = 0xEA0000000000656DLL;
    }

    if (a1 <= 1u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v9 = 0xD000000000000010;
      }

      else
      {
        v9 = 0x614E797469746E65;
      }

      if (a2)
      {
        v10 = 0x8000000252E66560;
      }

      else
      {
        v10 = 0xEA0000000000656DLL;
      }

      if (v7 != v9)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

    if (a2 == 2)
    {
      v10 = 0xE400000000000000;
      if (v7 != 1836019570)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

    v10 = 0xE500000000000000;
    v11 = 1701736314;
LABEL_40:
    if (v7 != (v11 & 0xFFFF0000FFFFFFFFLL | 0x7300000000))
    {
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v10 = 0xE500000000000000;
      v11 = 1701869940;
      goto LABEL_40;
    }

    v10 = 0xE600000000000000;
    if (v7 != 0x736574617473)
    {
LABEL_46:
      v12 = sub_252E37DB4();
      goto LABEL_47;
    }
  }

  else
  {
    v10 = 0xE400000000000000;
    if (a2 == 4)
    {
      if (v7 != 1701670760)
      {
        goto LABEL_46;
      }
    }

    else if (v7 != 1701869940)
    {
      goto LABEL_46;
    }
  }

LABEL_44:
  if (v8 != v10)
  {
    goto LABEL_46;
  }

  v12 = 1;
LABEL_47:

  return v12 & 1;
}

uint64_t sub_252A0DB28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x797469746E45;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x5374736575716552;
    }

    else
    {
      v4 = 0x6574617453;
    }

    if (v3 == 2)
    {
      v5 = 0xEB00000000746E65;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E6F707365526F4ELL;
    }

    else
    {
      v4 = 0x797469746E45;
    }

    if (v3)
    {
      v5 = 0xEA00000000006573;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0x5374736575716552;
  v8 = 0xEB00000000746E65;
  if (a2 != 2)
  {
    v7 = 0x6574617453;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6E6F707365526F4ELL;
    v6 = 0xEA00000000006573;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}
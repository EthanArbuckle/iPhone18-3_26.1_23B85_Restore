uint64_t type metadata accessor for StaticCharacteristic()
{
  result = qword_1EE07A678;
  if (!qword_1EE07A678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D1CD8538(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BA8, &unk_1D1E6E8F0);
    v3 = sub_1D1E68BCC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D1741C08(v4, &v13, &qword_1EC646238, &qword_1D1E7E8D0);
      v5 = v13;
      v6 = v14;
      result = sub_1D171D2F0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D1742194(&v15, (v3[7] + 32 * result));
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

uint64_t _s13HomeDataModel20StaticCharacteristicV026typedValueIsRoughlyEqualToG0ySbAA0E4KindO0G0O_So8NSObjectCtFZ_0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
  if (v2 > 5)
  {
    v5 = *(a1 + 8);
    if (*(a1 + 16) <= 8u)
    {
      if (v2 != 6)
      {
        if (v2 == 7)
        {
          objc_opt_self();
          v6 = swift_dynamicCastObjCClass();
          if (v6)
          {
            [v6 doubleValue];
            if (v7 + -2.0 < *&v1)
            {
              v4 = v7 + 2.0 > *&v1;
              return v4 & 1;
            }
          }
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            sub_1D1E6780C();
          }
        }

LABEL_43:
        v4 = 0;
        return v4 & 1;
      }

      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (!v10)
      {
        goto LABEL_43;
      }

      v11 = [v10 intValue];
LABEL_27:
      v4 = v11 == v1;
      return v4 & 1;
    }

    if (v2 == 9)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_1D1741854(v1, v5);
        sub_1D1E668AC();
      }

      else
      {
        sub_1D1741854(v1, v5);
      }

      if (v5 >> 60 == 15)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v2 != 10)
      {
        goto LABEL_43;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_1D1741854(v1, v5);
        sub_1D1E668AC();
      }

      else
      {
        sub_1D1741854(v1, v5);
      }

      if (v5 >> 60 == 15)
      {
LABEL_41:
        sub_1D1716AA4(v1, v5);
        v4 = 1;
        return v4 & 1;
      }
    }

    sub_1D1716AA4(v1, v5);
    sub_1D1716AA4(0, 0xF000000000000000);
    goto LABEL_43;
  }

  if (*(a1 + 16) > 2u)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8)
        {
          v4 = v1 == [v8 unsignedLongLongValue];
          return v4 & 1;
        }
      }

      else
      {
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (v14)
        {
          v4 = [v14 integerValue] == v1;
          return v4 & 1;
        }
      }

      goto LABEL_43;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (!v12)
    {
      goto LABEL_43;
    }

    v11 = [v12 unsignedIntValue];
    goto LABEL_27;
  }

  if (!*(a1 + 16))
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v4 = [v9 BOOLValue] ^ v1 ^ 1;
      return v4 & 1;
    }

    goto LABEL_43;
  }

  if (v2 != 1)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v4 = [v13 unsignedShortValue] == v1;
      return v4 & 1;
    }

    goto LABEL_43;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    goto LABEL_43;
  }

  v4 = [v3 unsignedCharValue] == v1;
  return v4 & 1;
}

uint64_t sub_1D1CD8B4C(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D1778244(result, a2, a3);
  }

  return result;
}

uint64_t sub_1D1CD8B60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1D17418FC(a1, a2, a3, a4);
  }

  return a1;
}

unint64_t sub_1D1CD8B74()
{
  result = qword_1EC64D030;
  if (!qword_1EC64D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D030);
  }

  return result;
}

unint64_t sub_1D1CD8BC8()
{
  result = qword_1EC64D038;
  if (!qword_1EC64D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D038);
  }

  return result;
}

unint64_t sub_1D1CD8C1C()
{
  result = qword_1EC64D040;
  if (!qword_1EC64D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D040);
  }

  return result;
}

unint64_t sub_1D1CD8C70()
{
  result = qword_1EC64D048;
  if (!qword_1EC64D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D048);
  }

  return result;
}

unint64_t sub_1D1CD8CC4()
{
  result = qword_1EC64D050;
  if (!qword_1EC64D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D050);
  }

  return result;
}

unint64_t sub_1D1CD8D18()
{
  result = qword_1EC64D058;
  if (!qword_1EC64D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D058);
  }

  return result;
}

unint64_t sub_1D1CD8D6C()
{
  result = qword_1EC64D068;
  if (!qword_1EC64D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D068);
  }

  return result;
}

unint64_t sub_1D1CD8DC0()
{
  result = qword_1EC64D070;
  if (!qword_1EC64D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D070);
  }

  return result;
}

unint64_t sub_1D1CD8E14()
{
  result = qword_1EC64D078;
  if (!qword_1EC64D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D078);
  }

  return result;
}

unint64_t sub_1D1CD8E68()
{
  result = qword_1EC64D080;
  if (!qword_1EC64D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D080);
  }

  return result;
}

unint64_t sub_1D1CD8EBC()
{
  result = qword_1EC64D088;
  if (!qword_1EC64D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D088);
  }

  return result;
}

uint64_t sub_1D1CD8F10(uint64_t a1)
{
  v2 = type metadata accessor for StaticCharacteristic();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D1CD8F6C()
{
  result = qword_1EC64D0A8;
  if (!qword_1EC64D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D0A8);
  }

  return result;
}

unint64_t sub_1D1CD8FC0()
{
  result = qword_1EC64D0B0;
  if (!qword_1EC64D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D0B0);
  }

  return result;
}

unint64_t sub_1D1CD9014()
{
  result = qword_1EC64D0B8;
  if (!qword_1EC64D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D0B8);
  }

  return result;
}

unint64_t sub_1D1CD9068()
{
  result = qword_1EC64D0E0;
  if (!qword_1EC64D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D0E0);
  }

  return result;
}

unint64_t sub_1D1CD90BC()
{
  result = qword_1EC64D128;
  if (!qword_1EC64D128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D128);
  }

  return result;
}

unint64_t sub_1D1CD9110()
{
  result = qword_1EC64D130;
  if (!qword_1EC64D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D130);
  }

  return result;
}

unint64_t sub_1D1CD9164()
{
  result = qword_1EC64D138;
  if (!qword_1EC64D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D138);
  }

  return result;
}

unint64_t sub_1D1CD91B8()
{
  result = qword_1EC64D140;
  if (!qword_1EC64D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D140);
  }

  return result;
}

unint64_t sub_1D1CD920C()
{
  result = qword_1EC64D148;
  if (!qword_1EC64D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D148);
  }

  return result;
}

unint64_t sub_1D1CD9260()
{
  result = qword_1EC64D150;
  if (!qword_1EC64D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D150);
  }

  return result;
}

unint64_t sub_1D1CD92B4()
{
  result = qword_1EC64D158;
  if (!qword_1EC64D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D158);
  }

  return result;
}

unint64_t sub_1D1CD9308()
{
  result = qword_1EC64D160;
  if (!qword_1EC64D160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D160);
  }

  return result;
}

unint64_t sub_1D1CD935C()
{
  result = qword_1EC64D168;
  if (!qword_1EC64D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D168);
  }

  return result;
}

unint64_t sub_1D1CD93B0()
{
  result = qword_1EC64D1A8;
  if (!qword_1EC64D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D1A8);
  }

  return result;
}

unint64_t sub_1D1CD9404()
{
  result = qword_1EC64D1B0;
  if (!qword_1EC64D1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D1B0);
  }

  return result;
}

uint64_t sub_1D1CD94A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D1CD9534()
{
  result = qword_1EC64D1C0;
  if (!qword_1EC64D1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D1C0);
  }

  return result;
}

unint64_t sub_1D1CD958C()
{
  result = qword_1EC64D1C8;
  if (!qword_1EC64D1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D1C8);
  }

  return result;
}

unint64_t sub_1D1CD95E4()
{
  result = qword_1EC64D1D0;
  if (!qword_1EC64D1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D1D0);
  }

  return result;
}

void sub_1D1CD9660()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D1E669FC();
    if (v1 <= 0x3F)
    {
      sub_1D1CD972C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D1CD972C()
{
  if (!qword_1EE07A0E8)
  {
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07A0E8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel20StaticCharacteristicV12LoadingStateO(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_1D1CD9798(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

unint64_t sub_1D1CD98A8()
{
  result = qword_1EC64D1D8;
  if (!qword_1EC64D1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D1D8);
  }

  return result;
}

unint64_t sub_1D1CD9900()
{
  result = qword_1EC64D1E0;
  if (!qword_1EC64D1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D1E0);
  }

  return result;
}

unint64_t sub_1D1CD9958()
{
  result = qword_1EC64D1E8;
  if (!qword_1EC64D1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D1E8);
  }

  return result;
}

unint64_t sub_1D1CD99B0()
{
  result = qword_1EC64D1F0;
  if (!qword_1EC64D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D1F0);
  }

  return result;
}

unint64_t sub_1D1CD9A08()
{
  result = qword_1EC64D1F8;
  if (!qword_1EC64D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D1F8);
  }

  return result;
}

unint64_t sub_1D1CD9A60()
{
  result = qword_1EC64D200;
  if (!qword_1EC64D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D200);
  }

  return result;
}

unint64_t sub_1D1CD9AB8()
{
  result = qword_1EC64D208;
  if (!qword_1EC64D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D208);
  }

  return result;
}

unint64_t sub_1D1CD9B10()
{
  result = qword_1EC64D210;
  if (!qword_1EC64D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D210);
  }

  return result;
}

unint64_t sub_1D1CD9B68()
{
  result = qword_1EC64D218;
  if (!qword_1EC64D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D218);
  }

  return result;
}

unint64_t sub_1D1CD9BC0()
{
  result = qword_1EC64D220;
  if (!qword_1EC64D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D220);
  }

  return result;
}

unint64_t sub_1D1CD9C18()
{
  result = qword_1EC64D228;
  if (!qword_1EC64D228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D228);
  }

  return result;
}

unint64_t sub_1D1CD9C70()
{
  result = qword_1EC64D230;
  if (!qword_1EC64D230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D230);
  }

  return result;
}

unint64_t sub_1D1CD9CC8()
{
  result = qword_1EC64D238;
  if (!qword_1EC64D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D238);
  }

  return result;
}

unint64_t sub_1D1CD9D20()
{
  result = qword_1EC64D240;
  if (!qword_1EC64D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D240);
  }

  return result;
}

unint64_t sub_1D1CD9D78()
{
  result = qword_1EC64D248;
  if (!qword_1EC64D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D248);
  }

  return result;
}

unint64_t sub_1D1CD9DD0()
{
  result = qword_1EC64D250;
  if (!qword_1EC64D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D250);
  }

  return result;
}

unint64_t sub_1D1CD9E28()
{
  result = qword_1EC64D258;
  if (!qword_1EC64D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D258);
  }

  return result;
}

unint64_t sub_1D1CD9E80()
{
  result = qword_1EC64D260;
  if (!qword_1EC64D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D260);
  }

  return result;
}

unint64_t sub_1D1CD9ED8()
{
  result = qword_1EC64D268;
  if (!qword_1EC64D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D268);
  }

  return result;
}

unint64_t sub_1D1CD9F30()
{
  result = qword_1EC64D270;
  if (!qword_1EC64D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D270);
  }

  return result;
}

unint64_t sub_1D1CD9F88()
{
  result = qword_1EC64D278;
  if (!qword_1EC64D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D278);
  }

  return result;
}

unint64_t sub_1D1CD9FE0()
{
  result = qword_1EC64D280;
  if (!qword_1EC64D280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D280);
  }

  return result;
}

unint64_t sub_1D1CDA038()
{
  result = qword_1EC64D288;
  if (!qword_1EC64D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D288);
  }

  return result;
}

unint64_t sub_1D1CDA090()
{
  result = qword_1EC64D290;
  if (!qword_1EC64D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D290);
  }

  return result;
}

unint64_t sub_1D1CDA0E8()
{
  result = qword_1EC64D298;
  if (!qword_1EC64D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D298);
  }

  return result;
}

unint64_t sub_1D1CDA140()
{
  result = qword_1EC64D2A0;
  if (!qword_1EC64D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D2A0);
  }

  return result;
}

unint64_t sub_1D1CDA198()
{
  result = qword_1EC64D2A8;
  if (!qword_1EC64D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D2A8);
  }

  return result;
}

unint64_t sub_1D1CDA1F0()
{
  result = qword_1EC64D2B0;
  if (!qword_1EC64D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D2B0);
  }

  return result;
}

unint64_t sub_1D1CDA248()
{
  result = qword_1EC64D2B8;
  if (!qword_1EC64D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D2B8);
  }

  return result;
}

unint64_t sub_1D1CDA2A0()
{
  result = qword_1EC64D2C0;
  if (!qword_1EC64D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D2C0);
  }

  return result;
}

unint64_t sub_1D1CDA2F8()
{
  result = qword_1EC64D2C8;
  if (!qword_1EC64D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D2C8);
  }

  return result;
}

uint64_t sub_1D1CDA34C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC82A0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61566465707974 && a2 == 0xEA00000000006575 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756C61567473616CLL && a2 == 0xEF65746164705565 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x53676E6964616F6CLL && a2 == 0xEC00000065746174 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4965636976726573 && a2 == 0xE900000000000064 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1D1CDA600(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64696C61766E69 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72506E4964616572 && a2 == 0xEE0073736572676FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x506E496574697277 && a2 == 0xEF73736572676F72 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7964616572 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC82C0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D1CDA80C()
{
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D1CDA8FC()
{
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D1CDAA00()
{
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D1CDAB44()
{
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D1CDAC6C()
{
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t StaticCharacteristicMetadata.IntMetadata.validValues.getter()
{
  if (v0[4])
  {
    v1 = v0[4];
  }

  else
  {
    if (v0[2] <= 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = v0[2];
    }

    v1 = sub_1D1C279CC(v0[1], *v0, v2);
  }

  return v1;
}

void sub_1D1CDADF0(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_16;
  }

  v4 = *a2;
  v5 = a1;
  v6 = [v5 format];
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = v6;
  v8 = sub_1D1E6781C();
  v10 = v9;

  if (v4 == 11)
  {
    v11._countAndFlagsBits = v8;
    v11._object = v10;
    CharacteristicKind.Format.init(rawValue:)(v11);
    v4 = v19;
    if (v19 > 6u)
    {
LABEL_5:
      if (v4 != 7)
      {
        if (v4 == 8)
        {
          v12 = [v5 maxLength];
          if (v12)
          {
            v13 = v12;
            v14 = [v12 integerValue];
          }

          else
          {
            v14 = 0x7FFFFFFFFFFFFFFFLL;
          }

          a3[1] = 0;
          a3[2] = 0;
          *a3 = v14;
          v18 = xmmword_1D1EA4A70;
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      sub_1D1CDAF88(v5, &v19);
      v15 = v20;
      v17 = v22;
      v16 = v21 | 0x4000000000000000;
LABEL_12:
      *a3 = v19;
      a3[2] = v15;
      a3[3] = v16;
      a3[4] = v17;
      return;
    }
  }

  else
  {

    if (v4 > 6)
    {
      goto LABEL_5;
    }
  }

  if ((v4 - 1) < 6)
  {
    sub_1D1CDB250(v5, &v19);
    v15 = v20;
    v16 = v21;
    v17 = v22;
    goto LABEL_12;
  }

  if (v4)
  {
LABEL_15:

LABEL_16:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v18 = xmmword_1D1EA3980;
    goto LABEL_17;
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v18 = xmmword_1D1EA4A60;
LABEL_17:
  *(a3 + 3) = v18;
}

void sub_1D1CDAF88(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 maximumValue];
  if (v4)
  {
    v5 = v4;
    [v4 doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = 0x7FEFFFFFFFFFFFFFLL;
  }

  v8 = [a1 minimumValue];
  if (v8)
  {
    v9 = v8;
    [v8 doubleValue];
    v11 = v10;
  }

  else
  {
    v11 = 0x10000000000000;
  }

  v12 = [a1 stepValue];
  if (v12)
  {
    v13 = v12;
    [v12 doubleValue];
    v15 = v14;
  }

  else
  {
    v15 = 1.0;
  }

  v16 = [a1 units];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1D1E6781C();
    v20 = v19;

    v21._countAndFlagsBits = v18;
    v21._object = v20;
    StaticCharacteristicMetadata.Unit.init(rawValue:)(v21);
    v22 = v37;
  }

  else
  {
    v22 = 8;
  }

  v23 = [a1 validValues];
  if (!v23)
  {

    v28 = 0;
LABEL_28:
    *a2 = v7;
    *(a2 + 8) = v11;
    *(a2 + 16) = v15;
    *(a2 + 24) = v22;
    *(a2 + 32) = v28;
    return;
  }

  v24 = v23;
  sub_1D197CCD0();
  v25 = sub_1D1E67C1C();

  if (!(v25 >> 62))
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

  v26 = sub_1D1E6873C();
  if (!v26)
  {
LABEL_27:

    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

LABEL_16:
  v38 = MEMORY[0x1E69E7CC0];
  sub_1D178D49C(0, v26 & ~(v26 >> 63), 0);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v35 = v22;
    v36 = a2;
    v27 = 0;
    v28 = v38;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1D3891EF0](v27, v25);
      }

      else
      {
        v29 = *(v25 + 8 * v27 + 32);
      }

      v30 = v29;
      [v29 doubleValue];
      v32 = v31;

      v34 = *(v38 + 16);
      v33 = *(v38 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1D178D49C((v33 > 1), v34 + 1, 1);
      }

      ++v27;
      *(v38 + 16) = v34 + 1;
      *(v38 + 8 * v34 + 32) = v32;
    }

    while (v26 != v27);

    a2 = v36;
    v22 = v35;
    goto LABEL_28;
  }

  __break(1u);
}

void sub_1D1CDB250(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 maximumValue];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 integerValue];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = [a1 minimumValue];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 integerValue];
  }

  else
  {
    v9 = 0x8000000000000000;
  }

  v10 = [a1 stepValue];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 integerValue];
  }

  else
  {
    v12 = 1;
  }

  v13 = [a1 units];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1D1E6781C();
    v17 = v16;

    v18._countAndFlagsBits = v15;
    v18._object = v17;
    StaticCharacteristicMetadata.Unit.init(rawValue:)(v18);
    v19 = v36;
  }

  else
  {
    v19 = 8;
  }

  v20 = [a1 validValues];
  if (v20)
  {
    v21 = v20;
    v35 = v12;
    sub_1D197CCD0();
    v22 = sub_1D1E67C1C();

    if (v22 >> 62)
    {
      v23 = sub_1D1E6873C();
      if (v23)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
LABEL_16:
        v37 = MEMORY[0x1E69E7CC0];
        sub_1D178D4BC(0, v23 & ~(v23 >> 63), 0);
        if (v23 < 0)
        {
          __break(1u);
          return;
        }

        v32 = v9;
        v33 = a1;
        v34 = v6;
        v24 = 0;
        v25 = v37;
        do
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v26 = MEMORY[0x1D3891EF0](v24, v22);
          }

          else
          {
            v26 = *(v22 + 8 * v24 + 32);
          }

          v27 = v26;
          v28 = [v26 integerValue];

          v30 = *(v37 + 16);
          v29 = *(v37 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_1D178D4BC((v29 > 1), v30 + 1, 1);
          }

          ++v24;
          *(v37 + 16) = v30 + 1;
          *(v37 + 8 * v30 + 32) = v28;
        }

        while (v23 != v24);

        v6 = v34;
        v9 = v32;
        goto LABEL_28;
      }
    }

    v25 = MEMORY[0x1E69E7CC0];
LABEL_28:
    v12 = v35;
    goto LABEL_29;
  }

  v25 = 0;
LABEL_29:
  if (v12 <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = v12;
  }

  *a2 = v6;
  *(a2 + 8) = v9;
  *(a2 + 16) = v31;
  *(a2 + 24) = v19;
  *(a2 + 32) = v25;
}

uint64_t StaticCharacteristicMetadata.FloatMetadata.validValues.getter()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v3 = *v0;
    v2 = *(v0 + 8);
    if (v2 <= *v0)
    {
      v4 = *(v0 + 16);
      if (v4 <= 0.0)
      {
        v4 = 1.0;
      }

      v5 = *(v0 + 32);
      v1 = sub_1D1C27CF0(v2, v3, v4);
    }

    else
    {
      v1 = MEMORY[0x1E69E7CC0];
    }
  }

  return v1;
}

uint64_t sub_1D1CDB5BC(uint64_t a1)
{
  v2 = sub_1D1CDE4B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CDB5F8(uint64_t a1)
{
  v2 = sub_1D1CDE4B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCharacteristicMetadata.FloatMetadata.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D2D0, &unk_1D1EA4A80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v18 = *(v1 + 24);
  v12 = v1[4];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CDE4B0();
  v14 = v4;
  sub_1D1E6930C();
  v25 = 0;
  sub_1D1E68EEC();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v15 = v18;
  v24 = 1;
  sub_1D1E68EEC();
  v23 = 2;
  sub_1D1E68EEC();
  v22 = v15;
  v21 = 3;
  sub_1D1CDE504();
  sub_1D1E68E5C();
  v20 = v12;
  v19 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644F48, &qword_1D1E78420);
  sub_1D1CDE5AC(&qword_1EC64D2E8);
  sub_1D1E68E5C();
  return (*(v5 + 8))(v8, v14);
}

uint64_t StaticCharacteristicMetadata.FloatMetadata.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  if (*v2 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1D3892890](*&v4);
  if (v5 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v5;
  }

  MEMORY[0x1D3892890](*&v9);
  if (v6 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v6;
  }

  MEMORY[0x1D3892890](*&v10);
  if (v7 == 8)
  {
    sub_1D1E6922C();
    if (!v8)
    {
      return sub_1D1E6922C();
    }
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E678EC();

    if (!v8)
    {
      return sub_1D1E6922C();
    }
  }

  sub_1D1E6922C();

  return sub_1D176F87C(a1, v8);
}

uint64_t StaticCharacteristicMetadata.FloatMetadata.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v3 = *(v0 + 4);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_1D1E6920C();
  StaticCharacteristicMetadata.FloatMetadata.hash(into:)(v5);
  return sub_1D1E6926C();
}

uint64_t StaticCharacteristicMetadata.FloatMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D2F0, &qword_1D1EA4A90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CDE4B0();
  sub_1D1E692FC();
  if (!v2)
  {
    v26 = 0;
    sub_1D1E68D4C();
    v12 = v11;
    v25 = 1;
    sub_1D1E68D4C();
    v15 = v14;
    v24 = 2;
    sub_1D1E68D4C();
    v17 = v16;
    v22 = 3;
    sub_1D1CDE558();
    sub_1D1E68CBC();
    v18 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644F48, &qword_1D1E78420);
    v20[15] = 4;
    sub_1D1CDE5AC(&qword_1EC64D300);
    sub_1D1E68CBC();
    (*(v6 + 8))(v9, v5);
    v19 = v21;
    *a2 = v12;
    *(a2 + 8) = v15;
    *(a2 + 16) = v17;
    *(a2 + 24) = v18;
    *(a2 + 32) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1CDBDBC()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v3 = *(v0 + 4);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_1D1E6920C();
  StaticCharacteristicMetadata.FloatMetadata.hash(into:)(v5);
  return sub_1D1E6926C();
}

uint64_t sub_1D1CDBE24()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v3 = *(v0 + 4);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_1D1E6920C();
  StaticCharacteristicMetadata.FloatMetadata.hash(into:)(v5);
  return sub_1D1E6926C();
}

uint64_t sub_1D1CDBEFC(uint64_t a1)
{
  v2 = sub_1D1CDE618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CDBF38(uint64_t a1)
{
  v2 = sub_1D1CDE618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCharacteristicMetadata.IntMetadata.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D308, &qword_1D1EA4A98);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  v10 = *v1;
  v9 = v1[1];
  v20 = v1[2];
  v21 = v9;
  HIDWORD(v19) = *(v1 + 24);
  v11 = v1[4];
  v13 = a1[3];
  v12 = a1[4];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_1D1CDE618();
  sub_1D1E6930C();
  v28 = 0;
  sub_1D1E68EFC();
  if (!v2)
  {
    v17 = BYTE4(v19);
    v27 = 1;
    sub_1D1E68EFC();
    v26 = 2;
    sub_1D1E68EFC();
    v25 = v17;
    v24 = 3;
    sub_1D1CDE504();
    sub_1D1E68E5C();
    v22 = v11;
    v23 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BF58, &qword_1D1EA4AA0);
    sub_1D1BA3DAC(&qword_1EC64BF60);
    sub_1D1E68E5C();
  }

  return (*(v5 + 8))(v8, v16);
}

uint64_t StaticCharacteristicMetadata.IntMetadata.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  MEMORY[0x1D3892850](*v0);
  MEMORY[0x1D3892850](v1);
  MEMORY[0x1D3892850](v2);
  if (v3 == 8)
  {
    sub_1D1E6922C();
    if (!v4)
    {
      return sub_1D1E6922C();
    }
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E678EC();

    if (!v4)
    {
      return sub_1D1E6922C();
    }
  }

  sub_1D1E6922C();
  result = MEMORY[0x1D3892850](*(v4 + 16));
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = (v4 + 32);
    do
    {
      v8 = *v7++;
      result = MEMORY[0x1D3892850](v8);
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t StaticCharacteristicMetadata.IntMetadata.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  v5 = *(v0 + 4);
  sub_1D1E6920C();
  StaticCharacteristicMetadata.IntMetadata.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t StaticCharacteristicMetadata.IntMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D318, &qword_1D1EA4AA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CDE618();
  sub_1D1E692FC();
  if (!v2)
  {
    v25 = 0;
    v11 = sub_1D1E68D5C();
    v24 = 1;
    v13 = sub_1D1E68D5C();
    v23 = 2;
    v18 = sub_1D1E68D5C();
    v21 = 3;
    sub_1D1CDE558();
    sub_1D1E68CBC();
    v17 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BF58, &qword_1D1EA4AA0);
    v20 = 4;
    sub_1D1BA3DAC(&qword_1EC64BF70);
    sub_1D1E68CBC();
    (*(v6 + 8))(v9, v5);
    v14 = v18;
    v15 = v19;
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
    *(a2 + 24) = v17;
    *(a2 + 32) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1CDC6B8()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  v5 = *(v0 + 4);
  sub_1D1E6920C();
  StaticCharacteristicMetadata.IntMetadata.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D1CDC720()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  v5 = *(v0 + 4);
  sub_1D1E6920C();
  StaticCharacteristicMetadata.IntMetadata.hash(into:)();
  return sub_1D1E6926C();
}

HomeDataModel::StaticCharacteristicMetadata::Unit_optional __swiftcall StaticCharacteristicMetadata.Unit.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D1E68C2C();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StaticCharacteristicMetadata.Unit.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x737569736C6563;
  v3 = 7172208;
  if (v1 != 6)
  {
    v3 = 0x6172676F7263696DLL;
  }

  v4 = 0x73646E6F636573;
  if (v1 != 4)
  {
    v4 = 7894380;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x61746E6563726570;
  if (v1 != 2)
  {
    v5 = 0x6572676564637261;
  }

  if (*v0)
  {
    v2 = 0x65686E6572686166;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_1D1CDC914(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x737569736C6563;
  v5 = 0xE300000000000000;
  v6 = 7172208;
  if (v2 != 6)
  {
    v6 = 0x6172676F7263696DLL;
    v5 = 0xEE00335E6D2F736DLL;
  }

  v7 = 0xE700000000000000;
  v8 = 0x73646E6F636573;
  if (v2 != 4)
  {
    v8 = 7894380;
    v7 = 0xE300000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x61746E6563726570;
  v10 = 0xEA00000000007365;
  if (v2 == 2)
  {
    v10 = 0xEA00000000006567;
  }

  else
  {
    v9 = 0x6572676564637261;
  }

  if (*v1)
  {
    v4 = 0x65686E6572686166;
    v3 = 0xEA00000000007469;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1D1CDCAF0(uint64_t a1)
{
  v2 = sub_1D1CDE9CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CDCB2C(uint64_t a1)
{
  v2 = sub_1D1CDE9CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CDCB68()
{
  v1 = 7630441;
  v2 = 0x676E69727473;
  if (*v0 != 2)
  {
    v2 = 1819242338;
  }

  if (*v0)
  {
    v1 = 0x74616F6C66;
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

uint64_t sub_1D1CDCBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1CDF900(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1CDCBF4(uint64_t a1)
{
  v2 = sub_1D1CDE978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CDCC30(uint64_t a1)
{
  v2 = sub_1D1CDE978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CDCC6C(uint64_t a1)
{
  v2 = sub_1D1CDEA74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CDCCA8(uint64_t a1)
{
  v2 = sub_1D1CDEA74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CDCCE4(uint64_t a1)
{
  v2 = sub_1D1CDEB1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CDCD20(uint64_t a1)
{
  v2 = sub_1D1CDEB1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CDCD78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74676E654C78616DLL && a2 == 0xE900000000000068)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D1E6904C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D1CDCE08(uint64_t a1)
{
  v2 = sub_1D1CDEA20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CDCE44(uint64_t a1)
{
  v2 = sub_1D1CDEA20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCharacteristicMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D320, &qword_1D1EA4AB0);
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v32 - v5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D328, &qword_1D1EA4AB8);
  v37 = *(v39 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v35 = &v32 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D330, &qword_1D1EA4AC0);
  v34 = *(v36 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D338, &qword_1D1EA4AC8);
  v33 = *(v11 - 8);
  v12 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D340, &qword_1D1EA4AD0);
  v46 = *(v15 - 8);
  v47 = v15;
  v16 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - v17;
  v19 = *v1;
  v20 = v1[2];
  v21 = v1[3];
  v42 = v1[1];
  v43 = v20;
  v44 = v1[4];
  v45 = v19;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CDE978();
  sub_1D1E6930C();
  v23 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v23 == 2)
    {
      LOBYTE(v48) = 2;
      sub_1D1CDEA20();
      v25 = v35;
      v24 = v47;
      sub_1D1E68DFC();
      v26 = v39;
      sub_1D1E68EFC();
      (*(v37 + 8))(v25, v26);
      return (*(v46 + 8))(v18, v24);
    }

    LOBYTE(v48) = 3;
    sub_1D1CDE9CC();
    v30 = v38;
    v31 = v47;
    sub_1D1E68DFC();
    (*(v40 + 8))(v30, v41);
    return (*(v46 + 8))(v18, v31);
  }

  else
  {
    if (!v23)
    {
      LOBYTE(v48) = 0;
      sub_1D1CDEB1C();
      v24 = v47;
      sub_1D1E68DFC();
      v48 = v45;
      v49 = v42;
      v50 = v43;
      v51 = v21;
      v52 = v44;
      sub_1D1CDEB70();
      sub_1D1E68F1C();
      (*(v33 + 8))(v14, v11);
      return (*(v46 + 8))(v18, v24);
    }

    LOBYTE(v48) = 1;
    sub_1D1CDEA74();
    v28 = v47;
    sub_1D1E68DFC();
    v48 = v45;
    v49 = v42;
    v50 = v43;
    v51 = v21;
    v52 = v44;
    sub_1D1CDEAC8();
    v29 = v36;
    sub_1D1E68F1C();
    (*(v34 + 8))(v10, v29);
    return (*(v46 + 8))(v18, v28);
  }
}

uint64_t StaticCharacteristicMetadata.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[3] >> 62;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      MEMORY[0x1D3892850](2);
      v9 = v3;
    }

    else
    {
      v9 = 3;
    }

    return MEMORY[0x1D3892850](v9);
  }

  else
  {
    v6 = v1[1];
    v5 = v1[2];
    v7 = v1[4];
    if (v4)
    {
      MEMORY[0x1D3892850](1);
      return StaticCharacteristicMetadata.FloatMetadata.hash(into:)(a1);
    }

    else
    {
      MEMORY[0x1D3892850](0);
      return StaticCharacteristicMetadata.IntMetadata.hash(into:)();
    }
  }
}

uint64_t StaticCharacteristicMetadata.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_1D1E6920C();
  v6 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v6 == 2)
    {
      MEMORY[0x1D3892850](2);
      v7 = v1;
    }

    else
    {
      v7 = 3;
    }

    MEMORY[0x1D3892850](v7);
  }

  else if (v6)
  {
    MEMORY[0x1D3892850](1);
    StaticCharacteristicMetadata.FloatMetadata.hash(into:)(v9);
  }

  else
  {
    MEMORY[0x1D3892850](0);
    StaticCharacteristicMetadata.IntMetadata.hash(into:)();
  }

  return sub_1D1E6926C();
}

uint64_t StaticCharacteristicMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D380, &qword_1D1EA4AD8);
  v62 = *(v56 - 8);
  v3 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v61 = &v51 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D388, &qword_1D1EA4AE0);
  v59 = *(v54 - 8);
  v5 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v60 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D390, &qword_1D1EA4AE8);
  v57 = *(v7 - 8);
  v58 = v7;
  v8 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v51 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D398, &qword_1D1EA4AF0);
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D3A0, &unk_1D1EA4AF8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v51 - v18;
  v21 = a1[3];
  v20 = a1[4];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D1CDE978();
  v22 = v64;
  sub_1D1E692FC();
  if (!v22)
  {
    v23 = v14;
    v52 = v11;
    v25 = v60;
    v24 = v61;
    v53 = 0;
    v64 = v16;
    v27 = v62;
    v26 = v63;
    v28 = sub_1D1E68DDC();
    v29 = (2 * *(v28 + 16)) | 1;
    v69 = v28;
    v70 = v28 + 32;
    v71 = 0;
    v72 = v29;
    v30 = sub_1D18085BC();
    if (v30 == 4 || v71 != v72 >> 1)
    {
      v38 = v15;
      v39 = sub_1D1E688EC();
      swift_allocError();
      v41 = v40;
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
      *v41 = &type metadata for StaticCharacteristicMetadata;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
      swift_willThrow();
      (*(v64 + 8))(v19, v38);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v73);
    }

    if (v30 <= 1u)
    {
      if (v30)
      {
        LOBYTE(v65) = 1;
        sub_1D1CDEA74();
        v47 = v53;
        sub_1D1E68C4C();
        v32 = v64;
        if (!v47)
        {
          sub_1D1CDEBC4();
          v48 = v58;
          sub_1D1E68D7C();
          (*(v57 + 8))(v10, v48);
          (*(v32 + 8))(v19, v15);
          swift_unknownObjectRelease();
          v34 = v65;
          v35 = v66;
          v37 = v68;
          v36 = v67 | 0x4000000000000000;
          goto LABEL_20;
        }
      }

      else
      {
        LOBYTE(v65) = 0;
        sub_1D1CDEB1C();
        v31 = v53;
        sub_1D1E68C4C();
        v32 = v64;
        if (!v31)
        {
          sub_1D1CDEC18();
          v33 = v52;
          sub_1D1E68D7C();
          (*(v55 + 8))(v23, v33);
          (*(v32 + 8))(v19, v15);
          swift_unknownObjectRelease();
          v34 = v65;
          v35 = v66;
          v36 = v67;
          v37 = v68;
LABEL_20:
          v45 = v26;
          goto LABEL_21;
        }
      }

      goto LABEL_18;
    }

    if (v30 == 2)
    {
      LOBYTE(v65) = 2;
      sub_1D1CDEA20();
      v44 = v53;
      sub_1D1E68C4C();
      if (!v44)
      {
        v45 = v26;
        v46 = v54;
        v50 = sub_1D1E68D5C();
        (*(v59 + 8))(v25, v46);
        (*(v64 + 8))(v19, v15);
        swift_unknownObjectRelease();
        v35 = 0;
        v37 = 0;
        v34 = v50;
        v36 = 0x8000000000000000;
LABEL_21:
        *v45 = v34;
        *(v45 + 16) = v35;
        *(v45 + 24) = v36;
        *(v45 + 32) = v37;
        return __swift_destroy_boxed_opaque_existential_1(v73);
      }
    }

    else
    {
      LOBYTE(v65) = 3;
      sub_1D1CDE9CC();
      v49 = v53;
      sub_1D1E68C4C();
      if (!v49)
      {
        v45 = v26;
        (*(v27 + 8))(v24, v56);
        (*(v64 + 8))(v19, v15);
        swift_unknownObjectRelease();
        v35 = 0;
        v37 = 0;
        v34 = 0uLL;
        v36 = 0xC000000000000000;
        goto LABEL_21;
      }
    }

    v32 = v64;
LABEL_18:
    (*(v32 + 8))(v19, v15);
    goto LABEL_9;
  }

  return __swift_destroy_boxed_opaque_existential_1(v73);
}

uint64_t sub_1D1CDDDA4()
{
  v1 = *(v0 + 4);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_1D1E6920C();
  StaticCharacteristicMetadata.hash(into:)(v4);
  return sub_1D1E6926C();
}

void StaticCharacteristicMetadata.validated(value:)(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  v5 = v2[3];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 == 2)
    {
      goto LABEL_31;
    }

    if (*(a1 + 16) <= 2u)
    {
      if (*(a1 + 16))
      {
        if (v4 == 1)
        {
          v18 = v3;
          goto LABEL_40;
        }

        if (!v3)
        {
          goto LABEL_37;
        }
      }

      else if ((v3 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_41;
    }

LABEL_26:
    if ((v4 - 5) >= 2)
    {
      if (v4 == 3)
      {
        if (v3)
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      if (v4 == 4)
      {
        v18 = v3;
        if ((v3 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_31;
        }

LABEL_40:
        if (v18 > 0)
        {
          goto LABEL_41;
        }

LABEL_37:
        v19 = 0;
LABEL_42:
        *a2 = v19;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        return;
      }

LABEL_31:
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = -1;
      return;
    }

    if (v3 <= 0)
    {
      goto LABEL_37;
    }

LABEL_41:
    v19 = 1;
    goto LABEL_42;
  }

  v8 = *v2;
  v7 = v2[1];
  v9 = v2[2];
  v10 = v2[4];
  if (!v6)
  {
    v26 = *v2;
    v27 = v7;
    v28 = v9;
    v29 = v5;
    v30 = v10;
    if (v4 <= 2)
    {
      if (v4)
      {
        v11 = a2;
        if (v4 == 1)
        {
          v12 = v3;
        }

        else
        {
          v12 = v3;
        }
      }

      else
      {
        v11 = a2;
        v12 = v3 & 1;
      }

LABEL_44:
      v20 = sub_1D1CDE084(v12);
      if (v21)
      {
        v22 = 0uLL;
        v23 = -1;
      }

      else
      {
        sub_1D1CDE1F4(v20, &v24);
        v22 = v24;
        v23 = v25;
      }

      *v11 = v22;
      *(v11 + 16) = v23;
      return;
    }

    if ((v4 - 5) < 2)
    {
      v11 = a2;
      v12 = v3;
      goto LABEL_44;
    }

    if (v4 == 3)
    {
      v11 = a2;
      v12 = v3;
      goto LABEL_44;
    }

    if (v4 != 4)
    {
      goto LABEL_31;
    }

    v11 = a2;
    v12 = v3;
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_44;
    }

    __break(1u);
    goto LABEL_26;
  }

  v26 = *v2;
  v27 = v7;
  v28 = v9;
  v29 = v5;
  v30 = v10;
  if (v4 != 7)
  {
    goto LABEL_31;
  }

  sub_1D1CDE14C(*&v3);
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  if (v15)
  {
    v17 = -1;
  }

  else
  {
    v17 = 7;
  }

  *a2 = v16;
  *(a2 + 8) = 0;
  *(a2 + 16) = v17;
}

uint64_t sub_1D1CDE084(uint64_t result)
{
  if (v1[2] <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1[2];
  }

  v3 = round(result / v2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = v3 * v2;
  if ((v3 * v2) >> 64 != v4 >> 63)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v5 = v1[4];
  if (v5)
  {
    return sub_1D1CDE2CC(v4, v5);
  }

  result = *v1;
  if (*v1 >= v4)
  {
    if (v4 <= v1[1])
    {
      return v1[1];
    }

    else
    {
      return v3 * v2;
    }
  }

  return result;
}

double sub_1D1CDE14C(double a1)
{
  v2 = *(v1 + 16);
  if (v2 <= 0.0)
  {
    v2 = 1.0;
  }

  else
  {
    a1 = a1 / v2;
  }

  result = v2 * round(a1);
  v4 = *(v1 + 32);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      v8 = *(v4 + 32);
      v7 = v4 + 32;
      v6 = v8;
      v9 = 1;
LABEL_7:
      v10 = vabdd_f64(v6, result);
      while (v5 != v9)
      {
        v11 = *(v7 + 8 * v9++);
        if (vabdd_f64(v11, result) < v10)
        {
          v6 = v11;
          goto LABEL_7;
        }
      }
    }
  }

  else if (*v1 >= result)
  {
    v12 = *(v1 + 8);
  }

  return result;
}

uint64_t sub_1D1CDE1F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  if (v3 > 2)
  {
    v12 = v3 - 5;
    v13 = 0x7FFFFFFFLL;
    if (result < 0x7FFFFFFF)
    {
      v13 = result;
    }

    if (v13 <= 0xFFFFFFFF80000000)
    {
      LODWORD(v13) = 0x80000000;
    }

    v14 = 0xFFFFFFFFLL;
    if (result < 0xFFFFFFFFLL)
    {
      v14 = result;
    }

    v15 = v14 & ~(v14 >> 63);
    v16 = result & ~(result >> 63);
    if (v3 == 4)
    {
      v17 = 4;
    }

    else
    {
      v16 = 0;
      v17 = -1;
    }

    v18 = v3 == 3;
    if (v3 == 3)
    {
      v19 = v15;
    }

    else
    {
      v19 = v16;
    }

    if (v18)
    {
      v20 = 3;
    }

    else
    {
      v20 = v17;
    }

    if (v12 >= 2)
    {
      v10 = v19;
    }

    else
    {
      v10 = v13;
    }

    if (v12 >= 2)
    {
      v11 = v20;
    }

    else
    {
      v11 = 5;
    }
  }

  else
  {
    v4 = 255;
    if (result < 255)
    {
      v4 = result;
    }

    v5 = v4 & ~(v4 >> 63);
    v6 = 0xFFFFLL;
    if (result < 0xFFFF)
    {
      v6 = result;
    }

    v7 = v6 & ~(v6 >> 63);
    if (v3 == 2)
    {
      v8 = 2;
    }

    else
    {
      v7 = 0;
      v8 = -1;
    }

    if (v3 == 1)
    {
      v9 = 1;
    }

    else
    {
      v5 = v7;
      v9 = v8;
    }

    if (*(v2 + 16))
    {
      v10 = v5;
    }

    else
    {
      v10 = result > 0;
    }

    if (*(v2 + 16))
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  *a2 = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  return result;
}

uint64_t sub_1D1CDE2CC(uint64_t a1, void *a2)
{
  v2 = a2[2];
  if (!v2)
  {
    return 0;
  }

  result = a2[4];
  v5 = v2 - 1;
  if (v2 != 1)
  {
    v6 = a2 + 5;
    while (1)
    {
      v7 = result - a1;
      if (__OFSUB__(result, a1))
      {
        break;
      }

      v9 = *v6++;
      v8 = v9;
      if (v7 < 0)
      {
        v11 = __OFSUB__(0, v7);
        v7 = a1 - result;
        if (v11)
        {
          goto LABEL_22;
        }

        v10 = v8 - a1;
        if (__OFSUB__(v8, a1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        v10 = v8 - a1;
        if (__OFSUB__(v8, a1))
        {
          goto LABEL_21;
        }
      }

      if (v10 < 0)
      {
        v11 = __OFSUB__(0, v10);
        v10 = -v10;
        if (v11)
        {
          __break(1u);
          return 0;
        }
      }

      if (v10 < v7)
      {
        result = v8;
      }

      if (!--v5)
      {
        return result;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  return result;
}

BOOL _s13HomeDataModel28StaticCharacteristicMetadataO03IntF0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  if (v6 == 8)
  {
    if (v8 != 8)
    {
      return 0;
    }
  }

  else if (v8 == 8 || (sub_1D179F7D4(v6, *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    return v9 && (sub_1D177A0E4(v7, v9) & 1) != 0;
  }

  return !v9;
}

BOOL _s13HomeDataModel28StaticCharacteristicMetadataO05FloatF0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  if (v6 == 8)
  {
    if (v8 != 8)
    {
      return 0;
    }
  }

  else if (v8 == 8 || (sub_1D179F7D4(v6, *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    return v9 && (sub_1D177A200(v7, v9) & 1) != 0;
  }

  return !v9;
}

unint64_t sub_1D1CDE4B0()
{
  result = qword_1EC64D2D8;
  if (!qword_1EC64D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D2D8);
  }

  return result;
}

unint64_t sub_1D1CDE504()
{
  result = qword_1EC64D2E0;
  if (!qword_1EC64D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D2E0);
  }

  return result;
}

unint64_t sub_1D1CDE558()
{
  result = qword_1EC64D2F8;
  if (!qword_1EC64D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D2F8);
  }

  return result;
}

uint64_t sub_1D1CDE5AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644F48, &qword_1D1E78420);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1CDE618()
{
  result = qword_1EC64D310;
  if (!qword_1EC64D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D310);
  }

  return result;
}

BOOL _s13HomeDataModel28StaticCharacteristicMetadataO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v12 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v12)
    {
      if (v9 >> 62 == 1)
      {
        v26 = *a1;
        v27 = v3;
        v28 = v5;
        v29 = v4;
        v30 = v6;
        v21 = v7;
        v22 = v8;
        v23 = v10;
        v24 = v9;
        v25 = v11;
        sub_1D18F3250(v7, v8, v10, v9);
        sub_1D18F3250(v2, v3, v5, v4);
        sub_1D18F3250(v2, v3, v5, v4);
        sub_1D18F3250(v7, v8, v10, v9);
        v13 = _s13HomeDataModel28StaticCharacteristicMetadataO05FloatF0V2eeoiySbAE_AEtFZ_0(&v26, &v21);
        goto LABEL_10;
      }
    }

    else if (!(v9 >> 62))
    {
      v26 = *a1;
      v27 = v3;
      v28 = v5;
      v29 = v4;
      v30 = v6;
      v21 = v7;
      v22 = v8;
      v23 = v10;
      v24 = v9;
      v25 = v11;
      sub_1D18F3250(v7, v8, v10, v9);
      sub_1D18F3250(v2, v3, v5, v4);
      sub_1D18F3250(v2, v3, v5, v4);
      sub_1D18F3250(v7, v8, v10, v9);
      v13 = _s13HomeDataModel28StaticCharacteristicMetadataO03IntF0V2eeoiySbAE_AEtFZ_0(&v26, &v21);
LABEL_10:
      v15 = v5;
      v20 = v5;
      v14 = v13;
      sub_1D18F3274(v2, v3, v15, v4);
      sub_1D18F3274(v7, v8, v10, v9);
      sub_1D18F3274(v7, v8, v10, v9);
      sub_1D18F3274(v2, v3, v20, v4);
      return v14;
    }

    v18 = a1[4];

LABEL_21:
    sub_1D18F3250(v7, v8, v10, v9);
    sub_1D18F3274(v2, v3, v5, v4);
    sub_1D18F3274(v7, v8, v10, v9);
    return 0;
  }

  if (v12 != 2)
  {
    if (v9 >> 62 == 3 && v9 == 0xC000000000000000 && (v8 | v7 | v10 | v11) == 0)
    {
      sub_1D18F3274(*a1, v3, v5, v4);
      sub_1D18F3274(0, 0, 0, 0xC000000000000000);
      return 1;
    }

    goto LABEL_21;
  }

  if (v9 >> 62 != 2)
  {
    goto LABEL_21;
  }

  sub_1D18F3274(*a1, v3, v5, v4);
  sub_1D18F3274(v7, v8, v10, v9);
  return v2 == v7;
}

unint64_t sub_1D1CDE978()
{
  result = qword_1EC64D348;
  if (!qword_1EC64D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D348);
  }

  return result;
}

unint64_t sub_1D1CDE9CC()
{
  result = qword_1EC64D350;
  if (!qword_1EC64D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D350);
  }

  return result;
}

unint64_t sub_1D1CDEA20()
{
  result = qword_1EC64D358;
  if (!qword_1EC64D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D358);
  }

  return result;
}

unint64_t sub_1D1CDEA74()
{
  result = qword_1EC64D360;
  if (!qword_1EC64D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D360);
  }

  return result;
}

unint64_t sub_1D1CDEAC8()
{
  result = qword_1EC64D368;
  if (!qword_1EC64D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D368);
  }

  return result;
}

unint64_t sub_1D1CDEB1C()
{
  result = qword_1EC64D370;
  if (!qword_1EC64D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D370);
  }

  return result;
}

unint64_t sub_1D1CDEB70()
{
  result = qword_1EC64D378;
  if (!qword_1EC64D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D378);
  }

  return result;
}

unint64_t sub_1D1CDEBC4()
{
  result = qword_1EC64D3A8;
  if (!qword_1EC64D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D3A8);
  }

  return result;
}

unint64_t sub_1D1CDEC18()
{
  result = qword_1EC64D3B0;
  if (!qword_1EC64D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D3B0);
  }

  return result;
}

unint64_t sub_1D1CDEC70()
{
  result = qword_1EC64D3B8;
  if (!qword_1EC64D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D3B8);
  }

  return result;
}

unint64_t sub_1D1CDECC8()
{
  result = qword_1EC64D3C0;
  if (!qword_1EC64D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D3C0);
  }

  return result;
}

unint64_t sub_1D1CDED20()
{
  result = qword_1EC64D3C8;
  if (!qword_1EC64D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D3C8);
  }

  return result;
}

unint64_t sub_1D1CDED78()
{
  result = qword_1EC64D3D0;
  if (!qword_1EC64D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D3D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel28StaticCharacteristicMetadataO(uint64_t a1)
{
  v1 = *(a1 + 24) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D1CDEE18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 25);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1D1CDEE64(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = -a2 << 8;
      *(result + 32) = 0;
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

void *sub_1D1CDEEC8(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    result[3] = *(result + 24) | (a2 << 62);
  }

  else
  {
    result[1] = 0;
    result[2] = 0;
    *result = (a2 - 3);
    *(result + 3) = xmmword_1D1EA4A60;
  }

  return result;
}

uint64_t sub_1D1CDEF18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D1CDEF74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_1D1CDF064()
{
  result = qword_1EC64D3D8;
  if (!qword_1EC64D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D3D8);
  }

  return result;
}

unint64_t sub_1D1CDF0BC()
{
  result = qword_1EC64D3E0;
  if (!qword_1EC64D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D3E0);
  }

  return result;
}

unint64_t sub_1D1CDF114()
{
  result = qword_1EC64D3E8;
  if (!qword_1EC64D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D3E8);
  }

  return result;
}

unint64_t sub_1D1CDF16C()
{
  result = qword_1EC64D3F0;
  if (!qword_1EC64D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D3F0);
  }

  return result;
}

unint64_t sub_1D1CDF1C4()
{
  result = qword_1EC64D3F8;
  if (!qword_1EC64D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D3F8);
  }

  return result;
}

unint64_t sub_1D1CDF21C()
{
  result = qword_1EC64D400;
  if (!qword_1EC64D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D400);
  }

  return result;
}

unint64_t sub_1D1CDF274()
{
  result = qword_1EC64D408;
  if (!qword_1EC64D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D408);
  }

  return result;
}

unint64_t sub_1D1CDF2CC()
{
  result = qword_1EC64D410;
  if (!qword_1EC64D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D410);
  }

  return result;
}

unint64_t sub_1D1CDF324()
{
  result = qword_1EC64D418;
  if (!qword_1EC64D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D418);
  }

  return result;
}

unint64_t sub_1D1CDF37C()
{
  result = qword_1EC64D420;
  if (!qword_1EC64D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D420);
  }

  return result;
}

unint64_t sub_1D1CDF3D4()
{
  result = qword_1EC64D428;
  if (!qword_1EC64D428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D428);
  }

  return result;
}

unint64_t sub_1D1CDF42C()
{
  result = qword_1EC64D430;
  if (!qword_1EC64D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D430);
  }

  return result;
}

unint64_t sub_1D1CDF484()
{
  result = qword_1EC64D438;
  if (!qword_1EC64D438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D438);
  }

  return result;
}

unint64_t sub_1D1CDF4DC()
{
  result = qword_1EC64D440;
  if (!qword_1EC64D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D440);
  }

  return result;
}

unint64_t sub_1D1CDF534()
{
  result = qword_1EC64D448;
  if (!qword_1EC64D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D448);
  }

  return result;
}

unint64_t sub_1D1CDF58C()
{
  result = qword_1EC64D450;
  if (!qword_1EC64D450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D450);
  }

  return result;
}

unint64_t sub_1D1CDF5E4()
{
  result = qword_1EC64D458;
  if (!qword_1EC64D458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D458);
  }

  return result;
}

unint64_t sub_1D1CDF63C()
{
  result = qword_1EC64D460;
  if (!qword_1EC64D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D460);
  }

  return result;
}

unint64_t sub_1D1CDF694()
{
  result = qword_1EC64D468;
  if (!qword_1EC64D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D468);
  }

  return result;
}

unint64_t sub_1D1CDF6EC()
{
  result = qword_1EC64D470;
  if (!qword_1EC64D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D470);
  }

  return result;
}

uint64_t sub_1D1CDF740(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7889261 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7235949 && a2 == 0xE300000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756C615670657473 && a2 == 0xE900000000000065 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EC8310 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D1CDF900(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7630441 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616F6C66 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1819242338 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1D1CDFA5C()
{
  result = qword_1EC64D478;
  if (!qword_1EC64D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D478);
  }

  return result;
}

uint64_t sub_1D1CDFAC4(void (*a1)(_BYTE *), uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v62 = &v53[-v7];
  v60 = type metadata accessor for StaticCharacteristic();
  v8 = *(v60 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v60);
  v56 = &v53[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v53[-v12];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645548, &unk_1D1E79AE0);
  v13 = *(*(v65 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v65);
  v57 = &v53[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v67 = &v53[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v53[-v18];
  v21 = a3 + 64;
  v20 = *(a3 + 64);
  v58 = MEMORY[0x1E69E7CC8];
  v69 = MEMORY[0x1E69E7CC8];
  v22 = 1 << *(a3 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v20;
  v25 = (v22 + 63) >> 6;
  v61 = v8;
  v59 = (v8 + 48);
  v66 = a3;

  v27 = 0;
  while (1)
  {
    v28 = v27;
    if (!v24)
    {
      break;
    }

LABEL_9:
    v29 = __clz(__rbit64(v24)) | (v27 << 6);
    v30 = v65;
    v31 = *(*(v66 + 48) + v29);
    v32 = *(v61 + 72);
    sub_1D1CE6DD4(*(v66 + 56) + v32 * v29, &v19[*(v65 + 48)], type metadata accessor for StaticCharacteristic);
    *v19 = v31;
    v33 = v67;
    sub_1D1741A90(v19, v67, &qword_1EC645548, &unk_1D1E79AE0);
    v34 = &v33[*(v30 + 48)];
    v35 = v62;
    v63(v34);
    if (v3)
    {
      sub_1D1741A30(v67, &qword_1EC645548, &unk_1D1E79AE0);
      v52 = v58;

      return v52;
    }

    v24 &= v24 - 1;
    if ((*v59)(v35, 1, v60) == 1)
    {
      sub_1D1741A30(v67, &qword_1EC645548, &unk_1D1E79AE0);
      result = sub_1D1741A30(v35, &qword_1EC643630, &qword_1D1E71D10);
    }

    else
    {
      v36 = v55;
      sub_1D1CE8D8C(v35, v55);
      sub_1D1741A90(v67, v57, &qword_1EC645548, &unk_1D1E79AE0);
      sub_1D1CE8D8C(v36, v56);
      v37 = v58[2];
      if (v58[3] <= v37)
      {
        sub_1D1730FB4(v37 + 1, 1);
      }

      v38 = v69;
      v39 = *v57;
      v40 = *(v69 + 40);
      sub_1D1E6920C();
      v54 = v39;
      v68 = v39;
      CharacteristicKind.rawValue.getter();
      sub_1D1E678EC();

      result = sub_1D1E6926C();
      v41 = v38 + 64;
      v58 = v38;
      v42 = -1 << *(v38 + 32);
      v43 = result & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v38 + 64 + 8 * (v43 >> 6))) == 0)
      {
        v46 = 0;
        v47 = (63 - v42) >> 6;
        while (++v44 != v47 || (v46 & 1) == 0)
        {
          v48 = v44 == v47;
          if (v44 == v47)
          {
            v44 = 0;
          }

          v46 |= v48;
          v49 = *(v41 + 8 * v44);
          if (v49 != -1)
          {
            v45 = __clz(__rbit64(~v49)) + (v44 << 6);
            goto LABEL_24;
          }
        }

        goto LABEL_28;
      }

      v45 = __clz(__rbit64((-1 << v43) & ~*(v38 + 64 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
      v50 = *(v65 + 48);
      *(v41 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
      v51 = v58;
      *(v58[6] + v45) = v54;
      sub_1D1CE8D8C(v56, v51[7] + v45 * v32);
      ++v51[2];
      result = sub_1D1CE6D74(&v57[v50], type metadata accessor for StaticCharacteristic);
    }
  }

  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v25)
    {

      return v58;
    }

    v24 = *(v21 + 8 * v27);
    ++v28;
    if (v24)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t StaticCharacteristicsBag.staticCharacteristic(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*(v4 + 16) && (v5 = sub_1D171D140(*a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = type metadata accessor for StaticCharacteristic();
    v16 = *(v9 - 8);
    sub_1D1CE6DD4(v8 + *(v16 + 72) * v7, a2, type metadata accessor for StaticCharacteristic);
    v10 = *(v16 + 56);
    v11 = a2;
    v12 = 0;
    v13 = v9;
  }

  else
  {
    v14 = type metadata accessor for StaticCharacteristic();
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a2;
    v12 = 1;
  }

  return v10(v11, v12, 1, v13);
}

uint64_t StaticCharacteristicsBag.isUpdating(for:)(void *a1)
{
  v3 = type metadata accessor for StaticCharacteristic();
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = *v1;
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v7 + 64);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v12 = (v9 + 63) >> 6;
  v37 = a1;
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1 + 7;
  result = swift_bridgeObjectRetain_n();
  v14 = 0;
  v34 = v7;
  while (v11)
  {
LABEL_13:
    sub_1D1CE6DD4(*(v7 + 56) + *(v33 + 72) * (__clz(__rbit64(v11)) | (v14 << 6)), v35, type metadata accessor for StaticCharacteristic);
    if (v37[2])
    {
      v16 = *(v35 + *(v32 + 20));
      v17 = v37;
      v18 = v37[5];
      sub_1D1E6920C();
      v38 = v16;
      CharacteristicKind.rawValue.getter();
      sub_1D1E678EC();

      v19 = sub_1D1E6926C();
      v20 = -1 << *(v17 + 32);
      v21 = v19 & ~v20;
      if ((*(v36 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v39 = *(v37[6] + v21);
          v38 = v16;
          v23 = CharacteristicKind.rawValue.getter();
          v25 = v24;
          if (v23 == CharacteristicKind.rawValue.getter() && v25 == v26)
          {
            break;
          }

          v28 = sub_1D1E6904C();

          if (v28)
          {
            goto LABEL_6;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v36 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        if (!v31[*(v32 + 32)])
        {

          sub_1D1CE6D74(v35, type metadata accessor for StaticCharacteristic);
          v29 = 1;
LABEL_24:

          return v29;
        }
      }
    }

LABEL_7:
    v11 &= v11 - 1;
    result = sub_1D1CE6D74(v35, type metadata accessor for StaticCharacteristic);
    v7 = v34;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      v29 = 0;
      goto LABEL_24;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t StaticCharacteristicsBag.staticCharacteristic(for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;

  sub_1D1747C74(sub_1D1CC3E9C, v3, a1);
}

uint64_t StaticCharacteristicsBag.data(for:)(unsigned __int8 *a1)
{
  v3 = type metadata accessor for StaticCharacteristic();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  if (!*(v8 + 16))
  {
    return 0;
  }

  v9 = sub_1D171D140(*a1);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  sub_1D1CE6DD4(*(v8 + 56) + *(v4 + 72) * v9, v7, type metadata accessor for StaticCharacteristic);
  v11 = &v7[*(v3 + 24)];
  if (v11[16] == 10)
  {
    v12 = *v11;
    sub_1D1741854(*v11, *(v11 + 1));
  }

  else
  {
    v12 = 0;
  }

  sub_1D1CE6D74(v7, type metadata accessor for StaticCharacteristic);
  return v12;
}

uint64_t sub_1D1CE15C8(uint64_t a1)
{
  v3 = type metadata accessor for StaticCharacteristic();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  if (!*(v8 + 16))
  {
    return 0;
  }

  v9 = sub_1D171D140(a1);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  sub_1D1CE6DD4(*(v8 + 56) + *(v4 + 72) * v9, v7, type metadata accessor for StaticCharacteristic);
  v11 = &v7[*(v3 + 24)];
  if (v11[16] == 8)
  {
    v12 = *v11;
    v13 = *(v11 + 1);
  }

  else
  {
    v12 = 0;
  }

  sub_1D1CE6D74(v7, type metadata accessor for StaticCharacteristic);
  return v12;
}

uint64_t sub_1D1CE1860(unsigned __int8 a1)
{
  v4 = *v1;
  v3 = a1;
  return sub_1D1CE4920(&v3);
}

Swift::Int sub_1D1CE19D0(char a1)
{
  v4 = *v1;
  v3 = a1;
  v5 = StaticCharacteristicsBag.int(for:)(&v3);
  if (v5.is_nil)
  {
    v5.value = 0;
  }

  return v5.value;
}

uint64_t sub_1D1CE1A70(char a1, uint64_t (*a2)(char *))
{
  v5 = *v2;
  v4 = a1;
  return a2(&v4);
}

uint64_t StaticCharacteristicsBag.init(updateType:from:previousStaticCharacteristicsBag:coverages:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void **a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v396 = a5;
  v394 = sub_1D1E66A7C();
  v9 = *(v394 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v394);
  v393 = &v367 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v392 = (&v367 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v390 = &v367 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v389 = &v367 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v387 = &v367 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v391 = &v367 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v388 = &v367 - v24;
  v395 = type metadata accessor for StaticCharacteristic();
  v25 = *(v395 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v395);
  v386 = (&v367 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x1EEE9AC00](v27);
  v385 = (&v367 - v30);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v367 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v384 = (&v367 - v34);
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v36 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v38 = &v367 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *a3;
  v40 = sub_1D1CC911C(a4);

  if ((v40 & 1) == 0)
  {

    v52 = sub_1D18DB9B4(MEMORY[0x1E69E7CC0]);

    goto LABEL_223;
  }

  sub_1D1CE6DD4(a1, v38, type metadata accessor for StateSnapshot.UpdateType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D1CE6D74(v38, type metadata accessor for StateSnapshot.UpdateType);
LABEL_13:
    v54 = HMService.supportedCharacteristicKinds.getter();
    MEMORY[0x1EEE9AC00](v54);
    *(&v367 - 4) = a2;
    *(&v367 - 3) = v39;
    *(&v367 - 2) = a1;
    v55 = sub_1D1789A74(sub_1D1CE6E3C, (&v367 - 3), v54);

    if (*(v55 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A28, &qword_1D1E6E780);
      v56 = sub_1D1E68BCC();
    }

    else
    {
      v56 = MEMORY[0x1E69E7CC8];
    }

    *&v404 = v56;
    sub_1D1CE89D4(v55, 1, &v404);

    v52 = v404;
    goto LABEL_223;
  }

  v41 = *(v38 + 1);
  v383 = *v38;
  v42 = v38[16];
  if (!v39)
  {
    sub_1D1AC373C(v383, v41, v42);
    goto LABEL_13;
  }

  v381 = v41;
  if (v42 <= 1)
  {
    if (!v42)
    {
      v57 = a2;
      v58 = v383;
      v59 = v381;
      sub_1D1CC5310(v383, v381, 0);
      v60 = sub_1D1CE7C5C(v58, v57);

      MEMORY[0x1EEE9AC00](v61);
      *(&v367 - 4) = v57;
      *(&v367 - 3) = v39;
      *(&v367 - 2) = a1;

      sub_1D1C9282C(v62, sub_1D1CE8DF0, (&v367 - 3), v60);
      v52 = v63;

      sub_1D1AC373C(v58, v59, 0);

      goto LABEL_223;
    }

    v378 = a1;
    v276 = a2;
    v277 = sub_1D1CE84CC(v383, v276);
    v387 = v276;

    v278 = v277 + 64;
    v279 = 1 << v277[32];
    v280 = -1;
    if (v279 < 64)
    {
      v280 = ~(-1 << v279);
    }

    v281 = v280 & *(v277 + 8);
    v282 = (v279 + 63) >> 6;
    v386 = (v25 + 48);
    v385 = (v25 + 56);
    v393 = v277;

    v283 = 0;
    *&v284 = 138412290;
    v380 = v284;
    v52 = v39;
    v389 = v282;
    if (v281)
    {
      goto LABEL_184;
    }

    do
    {
LABEL_180:
      v285 = v283 + 1;
      if (__OFADD__(v283, 1))
      {
        goto LABEL_227;
      }

      if (v285 >= v282)
      {

        sub_1D1AC373C(v383, v381, 1u);
        goto LABEL_221;
      }

      v281 = *&v278[8 * v285];
      ++v283;
    }

    while (!v281);
    v283 = v285;
    while (1)
    {
LABEL_184:
      v286 = __clz(__rbit64(v281)) | (v283 << 6);
      v287 = *(*(v393 + 48) + 8 * v286);
      v288 = *(v393 + 56) + 32 * v286;
      v290 = *v288;
      v289 = *(v288 + 8);
      v291 = *(v288 + 16);
      v292 = *(v288 + 24);
      v293 = v287;
      v394 = v289;
      sub_1D17418FC(v290, v289, v291, v292);
      if ([v293 value])
      {
        sub_1D1E6866C();
        swift_unknownObjectRelease();
      }

      else
      {
        v404 = 0u;
        v405 = 0u;
      }

      v294 = v293;
      v295 = v394;
      sub_1D17418FC(v290, v394, v291, v292);

      v296 = [v294 service];
      v297 = v292;
      if (!v296)
      {
        break;
      }

      v298 = v296;
      v299 = v290;
      v392 = v291;
      LODWORD(v390) = v297;
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v300 = v387;
      v301 = sub_1D1E684FC();

      if ((v301 & 1) == 0)
      {

        v348 = v394;
        v291 = v392;
        LOBYTE(v297) = v390;
        sub_1D1757A60(v290, v394, v392, v390);
        v346 = v290;
        v347 = v348;
        goto LABEL_205;
      }

      v382 = v52;
      v302 = [v300 serviceType];
      v303 = sub_1D1E6781C();
      v305 = v304;

      v306._countAndFlagsBits = v303;
      v306._object = v305;
      ServiceKind.init(rawValue:)(v306);
      v307 = v401;
      if (v401 == 53)
      {
        v307 = 0;
      }

      LOBYTE(v401) = v307;
      v308 = ServiceKind.requiredCharacteristicKinds.getter();
      v309 = [v300 serviceType];
      v310 = sub_1D1E6781C();
      v312 = v311;

      v313._countAndFlagsBits = v310;
      v313._object = v312;
      ServiceKind.init(rawValue:)(v313);
      v314 = v397;
      if (v397 == 53)
      {
        v314 = 0;
      }

      LOBYTE(v397) = v314;
      v315 = ServiceKind.optionalCharacteristicKinds.getter();
      v316 = sub_1D18C0104(v315, v308);
      v317 = [v294 characteristicType];
      v318 = sub_1D1E6781C();
      v320 = v319;

      v321._countAndFlagsBits = v318;
      v321._object = v320;
      CharacteristicKind.init(rawValue:)(v321);
      if (v401 == 174)
      {
        v322 = 0;
      }

      else
      {
        v322 = v401;
      }

      v323 = sub_1D171974C(v322, v316);

      if (v323)
      {
        v403 = v382;
        sub_1D1741C08(&v404, &v401, &qword_1EC649700, &qword_1D1E6E910);
        v324 = v394;
        v397 = v290;
        v398 = v394;
        v325 = v392;
        v399 = v392;
        v326 = v390;
        v400 = v390;
        v327 = v294;
        v328 = v324;
        v329 = v327;
        sub_1D17418FC(v299, v324, v325, v326);

        v330 = v388;
        StaticCharacteristic.init(from:value:loadingState:)(v329, &v401, &v397, v388);
        v331 = v395;
        if ((*v386)(v330, 1, v395) != 1)
        {
          v352 = v384;
          sub_1D1CE8D8C(v330, v384);
          v353 = [v329 characteristicType];
          v354 = sub_1D1E6781C();
          *&v379 = v329;
          v355 = v331;
          v357 = v356;

          v358._countAndFlagsBits = v354;
          v358._object = v357;
          CharacteristicKind.init(rawValue:)(v358);
          v359 = v401;
          if (v401 == 174)
          {
            v359 = 0;
          }

          LODWORD(v377) = v359;
          v360 = v326;
          v361 = v391;
          sub_1D1CE6DD4(v352, v391, type metadata accessor for StaticCharacteristic);
          (*v385)(v361, 0, 1, v355);
          sub_1D1B0F194(v361, v377);
          sub_1D1CE6D74(v352, type metadata accessor for StaticCharacteristic);

          v362 = v394;
          v363 = v392;
          sub_1D1757A60(v299, v394, v392, v360);
          v342 = v299;
          v343 = v362;
          v344 = v363;
          v345 = v360;
          goto LABEL_216;
        }

        sub_1D1741A30(v330, &qword_1EC643630, &qword_1D1E71D10);
        if ([v329 value])
        {
          sub_1D1E6866C();
          swift_unknownObjectRelease();
          sub_1D1741A30(&v401, &qword_1EC649700, &qword_1D1E6E910);
          if (qword_1EE07B5D0 != -1)
          {
            swift_once();
          }

          v332 = sub_1D1E6709C();
          __swift_project_value_buffer(v332, qword_1EE07B5D8);
          v333 = v329;
          v334 = sub_1D1E6707C();
          v335 = sub_1D1E6833C();

          if (os_log_type_enabled(v334, v335))
          {
            v336 = swift_slowAlloc();
            v337 = v326;
            v338 = swift_slowAlloc();
            *v336 = v380;
            *(v336 + 4) = v333;
            *v338 = v333;
            v339 = v333;
            _os_log_impl(&dword_1D16EC000, v334, v335, "updatedCharacteristicValuesDictionary() unable to slurp value for characteristic %@", v336, 0xCu);
            sub_1D1741A30(v338, &unk_1EC644000, &unk_1D1E75B00);
            MEMORY[0x1D3893640](v338, -1, -1);
            MEMORY[0x1D3893640](v336, -1, -1);

            v340 = v394;
            v341 = v392;
            sub_1D1757A60(v299, v394, v392, v337);
            v342 = v299;
            v343 = v340;
            v344 = v341;
            v345 = v337;
LABEL_216:
            sub_1D1757A60(v342, v343, v344, v345);
            v282 = v389;
            v52 = v403;
            goto LABEL_207;
          }

          v364 = v394;
          v365 = v392;
          sub_1D1757A60(v299, v394, v392, v326);
          v342 = v299;
          v343 = v364;
          v344 = v365;
        }

        else
        {
          v401 = 0u;
          v402 = 0u;
          sub_1D1741A30(&v401, &qword_1EC649700, &qword_1D1E6E910);

          sub_1D1757A60(v299, v328, v325, v326);
          v342 = v299;
          v343 = v328;
          v344 = v325;
        }

        v345 = v326;
        goto LABEL_216;
      }

      v349 = v394;
      v350 = v392;
      v351 = v390;
      sub_1D1757A60(v290, v394, v392, v390);
      sub_1D1757A60(v290, v349, v350, v351);
      v52 = v382;
LABEL_206:
      v282 = v389;
LABEL_207:
      v281 &= v281 - 1;
      sub_1D1741A30(&v404, &qword_1EC649700, &qword_1D1E6E910);
      if (!v281)
      {
        goto LABEL_180;
      }
    }

    sub_1D1757A60(v290, v295, v291, v292);
    v346 = v290;
    v347 = v295;
LABEL_205:
    sub_1D1757A60(v346, v347, v291, v297);
    goto LABEL_206;
  }

  v378 = a1;
  if (v42 == 2)
  {
    v117 = a2;
    v118 = sub_1D1CE868C(v383, v117);
    v386 = v117;

    v119 = v118 + 8;
    v120 = 1 << *(v118 + 32);
    v121 = -1;
    if (v120 < 64)
    {
      v121 = ~(-1 << v120);
    }

    v122 = v121 & v118[8];
    v123 = (v120 + 63) >> 6;
    v384 = (v25 + 48);
    *&v380 = v25 + 56;

    v124 = 0;
    v125 = 0;
    *&v126 = 138412290;
    v379 = v126;
    v52 = v39;
    v388 = v123;
    v385 = v118;
    while (1)
    {
      if (v122)
      {
        goto LABEL_76;
      }

      do
      {
        v127 = v125 + 1;
        if (__OFADD__(v125, 1))
        {
          __break(1u);
          goto LABEL_225;
        }

        if (v127 >= v123)
        {

          sub_1D1AC373C(v383, v381, 2u);
LABEL_221:

          goto LABEL_222;
        }

        v122 = v119[v127];
        ++v125;
      }

      while (!v122);
      v125 = v127;
LABEL_76:
      v128 = __clz(__rbit64(v122)) | (v125 << 6);
      v129 = *(v118[6] + 8 * v128);
      v130 = v118[7] + 24 * v128;
      v132 = *v130;
      v131 = *(v130 + 8);
      v133 = *(v130 + 16);
      LODWORD(v394) = v133;
      v392 = v132;
      v393 = v131;
      if (v133 > 2)
      {
        if (v133 == 3)
        {
          v124 = v132 >> 8;
          sub_1D1741830(v132, v131, 3);

          v135 = MEMORY[0x1E69E6158];
        }

        else if (v133 == 4)
        {
          v124 = v132 >> 8;
          sub_1D1741830(v132, v131, 4);
          sub_1D1741854(v132, v131);
          v135 = MEMORY[0x1E6969080];
        }

        else
        {
          v124 = 0;
          LOBYTE(v132) = 0;
          v135 = 0;
          v131 = 0;
        }
      }

      else
      {
        v134 = MEMORY[0x1E69E63B0];
        if (v133 != 1)
        {
          v134 = MEMORY[0x1E69E6530];
        }

        if (v133)
        {
          v124 = v132 >> 8;
        }

        else
        {
          LOBYTE(v132) = v132 & 1;
        }

        v135 = MEMORY[0x1E69E6370];
        if (v133)
        {
          v135 = v134;
        }

        v131 = v390;
      }

      *&v404 = v132 | (v124 << 8);
      *(&v404 + 1) = v131;
      v390 = v131;
      *&v405 = 0;
      *(&v405 + 1) = v135;
      v136 = v129;
      v137 = [v136 service];
      if (!v137)
      {

        sub_1D1778940(v392, v393, v394);
        goto LABEL_70;
      }

      v138 = v137;
      v389 = v124;
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v139 = v386;
      v140 = sub_1D1E684FC();

      if ((v140 & 1) == 0)
      {

        sub_1D1778940(v392, v393, v394);
LABEL_109:
        v118 = v385;
        v124 = v389;
        goto LABEL_70;
      }

      v382 = v52;
      v141 = [v139 serviceType];
      v142 = sub_1D1E6781C();
      v144 = v143;

      v145._countAndFlagsBits = v142;
      v145._object = v144;
      ServiceKind.init(rawValue:)(v145);
      v146 = v401;
      if (v401 == 53)
      {
        v146 = 0;
      }

      LOBYTE(v401) = v146;
      v147 = ServiceKind.requiredCharacteristicKinds.getter();
      v148 = [v139 serviceType];
      v149 = sub_1D1E6781C();
      v151 = v150;

      v152._countAndFlagsBits = v149;
      v152._object = v151;
      ServiceKind.init(rawValue:)(v152);
      v153 = v397;
      if (v397 == 53)
      {
        v153 = 0;
      }

      LOBYTE(v397) = v153;
      v154 = ServiceKind.optionalCharacteristicKinds.getter();
      v155 = sub_1D18C0104(v154, v147);
      v156 = [v136 characteristicType];
      v157 = sub_1D1E6781C();
      v159 = v158;

      v160._countAndFlagsBits = v157;
      v160._object = v159;
      CharacteristicKind.init(rawValue:)(v160);
      if (v401 == 174)
      {
        v161 = 0;
      }

      else
      {
        v161 = v401;
      }

      v162 = sub_1D171974C(v161, v155);

      if ((v162 & 1) == 0)
      {

        sub_1D1778940(v392, v393, v394);
        v52 = v382;
        goto LABEL_109;
      }

      v403 = v382;
      sub_1D1741C08(&v404, &v401, &qword_1EC649700, &qword_1D1E6E910);
      v397 = 0;
      v398 = 0;
      v399 = 0;
      v400 = 1;
      v163 = v136;

      v164 = v387;
      StaticCharacteristic.init(from:value:loadingState:)(v163, &v401, &v397, v387);
      if ((*v384)(v164, 1, v395) != 1)
      {
        sub_1D1CE8D8C(v164, v33);
        v171 = [v163 characteristicType];
        v172 = sub_1D1E6781C();
        v174 = v173;

        v175._countAndFlagsBits = v172;
        v175._object = v174;
        CharacteristicKind.init(rawValue:)(v175);
        if (v401 == 174)
        {
          v176 = 0;
        }

        else
        {
          v176 = v401;
        }

        v177 = v391;
        sub_1D1CE6DD4(v33, v391, type metadata accessor for StaticCharacteristic);
        (*v380)(v177, 0, 1, v395);
        sub_1D1B0F194(v177, v176);
        sub_1D1CE6D74(v33, type metadata accessor for StaticCharacteristic);

        goto LABEL_115;
      }

      sub_1D1741A30(v164, &qword_1EC643630, &qword_1D1E71D10);
      if (![v163 value])
      {
        v401 = 0u;
        v402 = 0u;
        sub_1D1741A30(&v401, &qword_1EC649700, &qword_1D1E6E910);

LABEL_115:

        goto LABEL_116;
      }

      sub_1D1E6866C();
      swift_unknownObjectRelease();
      sub_1D1741A30(&v401, &qword_1EC649700, &qword_1D1E6E910);
      if (qword_1EE07B5D0 != -1)
      {
        swift_once();
      }

      v165 = sub_1D1E6709C();
      __swift_project_value_buffer(v165, qword_1EE07B5D8);
      v166 = v163;
      v167 = sub_1D1E6707C();
      v168 = sub_1D1E6833C();

      if (os_log_type_enabled(v167, v168))
      {
        v169 = swift_slowAlloc();
        v170 = swift_slowAlloc();
        *v169 = v379;
        *(v169 + 4) = v166;
        *v170 = v166;
        v166 = v166;
        _os_log_impl(&dword_1D16EC000, v167, v168, "updatedCharacteristicValuesDictionary() unable to slurp value for characteristic %@", v169, 0xCu);
        sub_1D1741A30(v170, &unk_1EC644000, &unk_1D1E75B00);
        MEMORY[0x1D3893640](v170, -1, -1);
        MEMORY[0x1D3893640](v169, -1, -1);
      }

LABEL_116:
      sub_1D1778940(v392, v393, v394);
      v118 = v385;
      v124 = v389;
      v52 = v403;
LABEL_70:
      v123 = v388;
      v122 &= v122 - 1;
      sub_1D1741A30(&v404, &qword_1EC649700, &qword_1D1E6E910);
    }
  }

  if (v42 != 3)
  {
    v178 = a2;
    v179 = sub_1D1CE868C(v383, v178);
    v372 = v178;

    v180 = v179 + 8;
    v181 = 1 << *(v179 + 32);
    v182 = -1;
    if (v181 < 64)
    {
      v182 = ~(-1 << v181);
    }

    v183 = v182 & v179[8];
    v184 = (v181 + 63) >> 6;
    v374 = *MEMORY[0x1E696CA80];
    v371 = (v9 + 32);
    v370 = (v9 + 8);
    v369 = (v25 + 48);
    v368 = (v25 + 56);
    v376 = v179;

    v387 = 0;
    v185 = 0;
    *&v186 = 138412290;
    v367 = v186;
    v52 = v39;
    v373 = v184;
    while (1)
    {
      if (!v183)
      {
        v192 = v387;
        while (1)
        {
          v193 = v185 + 1;
          if (__OFADD__(v185, 1))
          {
            goto LABEL_226;
          }

          if (v193 >= v184)
          {
            break;
          }

          v183 = v180[v193];
          ++v185;
          if (v183)
          {
            v191 = v52;
            v185 = v193;
            goto LABEL_130;
          }
        }

        sub_1D1AC373C(v383, v381, 4u);

LABEL_222:
        a1 = v378;
LABEL_223:
        *v396 = v52;
        return sub_1D1CE6D74(a1, type metadata accessor for StateSnapshot.UpdateType);
      }

      v191 = v52;
      v192 = v387;
LABEL_130:
      v194 = __clz(__rbit64(v183)) | (v185 << 6);
      v195 = *(v376[6] + 8 * v194);
      v196 = v376[7] + 24 * v194;
      v198 = *v196;
      v197 = *(v196 + 8);
      v199 = *(v196 + 16);
      *&v380 = sub_1D1E6781C();
      v384 = v200;
      v201 = v195;
      v388 = v198;
      v385 = v197;
      LODWORD(v389) = v199;
      sub_1D1741830(v198, v197, v199);
      v202 = [v201 service];
      if (!v202 || (v203 = v202, v204 = [v202 accessory], v203, !v204))
      {
        v212 = 2;
        *&v379 = 4;
        v52 = v191;
        v184 = v373;
        goto LABEL_140;
      }

      v205 = [v204 uniqueIdentifier];

      v206 = v393;
      sub_1D1E66A5C();

      v207 = v392;
      (*v371)(v392, v206, v394);
      v208 = v381;
      if (!*(v381 + 16))
      {
        break;
      }

      v209 = sub_1D1742188(v207);
      if ((v210 & 1) == 0)
      {
        break;
      }

      v211 = *(*(v208 + 56) + v209);
      (*v370)(v207, v394);
      v184 = v373;
      if (v211 != 1)
      {
        goto LABEL_138;
      }

      *&v380 = 0;
      v384 = 0;
      v212 = 3;
      v213 = 1;
LABEL_139:
      *&v379 = v213;
      v52 = v191;
LABEL_140:
      if (v389 > 2)
      {
        if (v389 == 3)
        {
          v220 = v388;
          v192 = v388 >> 8;

          v216 = MEMORY[0x1E69E6158];
          v214 = v220;
        }

        else if (v389 == 4)
        {
          v218 = v388;
          v192 = v388 >> 8;
          v387 = v201;
          v219 = v385;
          sub_1D1741854(v388, v385);
          v217 = v219;
          v201 = v387;
          v216 = MEMORY[0x1E6969080];
          v214 = v218;
        }

        else
        {
          v217 = 0;
          v216 = 0;
          v214 = 0;
          v192 = 0;
        }
      }

      else
      {
        v214 = v388 & 1;
        v215 = MEMORY[0x1E69E63B0];
        if (v389 != 1)
        {
          v215 = MEMORY[0x1E69E6530];
        }

        v216 = MEMORY[0x1E69E6370];
        if (v389)
        {
          v216 = v215;
          v214 = v388;
          v192 = v388 >> 8;
        }

        v217 = v377;
      }

      v387 = v192;
      *&v404 = v214 | (v192 << 8);
      *(&v404 + 1) = v217;
      v377 = v217;
      *&v405 = 0;
      *(&v405 + 1) = v216;
      v221 = [v201 service];
      if (!v221)
      {

        sub_1D1778940(v388, v385, v389);
        v187 = v379;
        v188 = v380;
        v189 = v384;
        v190 = v212;
LABEL_121:
        sub_1D1757A60(v187, v188, v189, v190);
        goto LABEL_122;
      }

      v222 = v221;
      v375 = v212;
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v223 = v372;
      v224 = sub_1D1E684FC();

      if ((v224 & 1) == 0)
      {

        sub_1D1778940(v388, v385, v389);
        v187 = v379;
        v188 = v380;
        v189 = v384;
        v190 = v375;
        goto LABEL_121;
      }

      v382 = v52;
      v225 = [v223 serviceType];
      v226 = sub_1D1E6781C();
      v228 = v227;

      v229._countAndFlagsBits = v226;
      v229._object = v228;
      ServiceKind.init(rawValue:)(v229);
      v230 = v401;
      if (v401 == 53)
      {
        v230 = 0;
      }

      LOBYTE(v401) = v230;
      v231 = ServiceKind.requiredCharacteristicKinds.getter();
      v232 = [v223 serviceType];
      v233 = sub_1D1E6781C();
      v235 = v234;

      v236._countAndFlagsBits = v233;
      v236._object = v235;
      ServiceKind.init(rawValue:)(v236);
      v237 = v397;
      if (v397 == 53)
      {
        v237 = 0;
      }

      LOBYTE(v397) = v237;
      v238 = ServiceKind.optionalCharacteristicKinds.getter();
      v239 = sub_1D18C0104(v238, v231);
      v240 = [v201 characteristicType];
      v241 = sub_1D1E6781C();
      v243 = v242;

      v244._countAndFlagsBits = v241;
      v244._object = v243;
      CharacteristicKind.init(rawValue:)(v244);
      if (v401 == 174)
      {
        v245 = 0;
      }

      else
      {
        v245 = v401;
      }

      v246 = sub_1D171974C(v245, v239);

      if ((v246 & 1) == 0)
      {

        sub_1D1778940(v388, v385, v389);
        sub_1D1757A60(v379, v380, v384, v375);
        v52 = v382;
        goto LABEL_122;
      }

      v403 = v382;
      sub_1D1741C08(&v404, &v401, &qword_1EC649700, &qword_1D1E6E910);
      v247 = v379;
      v248 = v380;
      v397 = v379;
      v398 = v380;
      v249 = v384;
      v399 = v384;
      v250 = v375;
      v400 = v375;
      v251 = v201;
      v252 = v248;
      v253 = v251;
      v254 = v249;

      v255 = v247;
      v256 = v253;
      sub_1D17418FC(v255, v252, v249, v250);
      v257 = v390;
      StaticCharacteristic.init(from:value:loadingState:)(v256, &v401, &v397, v390);
      if ((*v369)(v257, 1, v395) != 1)
      {
        v268 = v386;
        sub_1D1CE8D8C(v257, v386);
        v269 = [v256 characteristicType];
        v270 = sub_1D1E6781C();
        *&v380 = v252;
        v272 = v271;

        v273._countAndFlagsBits = v270;
        v273._object = v272;
        CharacteristicKind.init(rawValue:)(v273);
        if (v401 == 174)
        {
          v274 = 0;
        }

        else
        {
          v274 = v401;
        }

        v384 = v254;
        v275 = v391;
        sub_1D1CE6DD4(v268, v391, type metadata accessor for StaticCharacteristic);
        (*v368)(v275, 0, 1, v395);
        sub_1D1B0F194(v275, v274);
        sub_1D1CE6D74(v268, type metadata accessor for StaticCharacteristic);

        sub_1D1778940(v388, v385, v389);
        v265 = v379;
        v266 = v380;
        v267 = v384;
        goto LABEL_176;
      }

      sub_1D1741A30(v257, &qword_1EC643630, &qword_1D1E71D10);
      if (![v256 value])
      {
        v401 = 0u;
        v402 = 0u;
        sub_1D1741A30(&v401, &qword_1EC649700, &qword_1D1E6E910);

        sub_1D1778940(v388, v385, v389);
        v265 = v379;
        v266 = v252;
LABEL_175:
        v267 = v249;
        goto LABEL_176;
      }

      sub_1D1E6866C();
      swift_unknownObjectRelease();
      sub_1D1741A30(&v401, &qword_1EC649700, &qword_1D1E6E910);
      if (qword_1EE07B5D0 != -1)
      {
        swift_once();
      }

      v258 = sub_1D1E6709C();
      __swift_project_value_buffer(v258, qword_1EE07B5D8);
      v259 = v256;
      v260 = sub_1D1E6707C();
      v261 = sub_1D1E6833C();

      if (!os_log_type_enabled(v260, v261))
      {

        sub_1D1778940(v388, v385, v389);
        v265 = v379;
        v266 = v380;
        goto LABEL_175;
      }

      v262 = swift_slowAlloc();
      v263 = swift_slowAlloc();
      *v262 = v367;
      *(v262 + 4) = v259;
      *v263 = v259;
      v264 = v259;
      _os_log_impl(&dword_1D16EC000, v260, v261, "updatedCharacteristicValuesDictionary() unable to slurp value for characteristic %@", v262, 0xCu);
      sub_1D1741A30(v263, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v263, -1, -1);
      MEMORY[0x1D3893640](v262, -1, -1);

      sub_1D1778940(v388, v385, v389);
      v265 = v379;
      v266 = v380;
      v267 = v249;
LABEL_176:
      sub_1D1757A60(v265, v266, v267, v375);
      v52 = v403;
LABEL_122:
      v183 &= v183 - 1;
      sub_1D1741A30(&v404, &qword_1EC649700, &qword_1D1E6E910);
    }

    (*v370)(v207, v394);
    v184 = v373;
LABEL_138:
    v212 = 2;
    v213 = 4;
    goto LABEL_139;
  }

  v43 = a2;
  v44 = sub_1D1CE868C(v383, v43);
  v387 = v43;

  v45 = v44 + 8;
  v46 = 1 << *(v44 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & v44[8];
  v49 = (v46 + 63) >> 6;
  v386 = (v25 + 48);
  v384 = (v25 + 56);
  v390 = v44;

  v50 = 0;
  *&v51 = 138412290;
  v380 = v51;
  v52 = v39;
  v53 = 0;
  while (v48)
  {
LABEL_26:
    v65 = __clz(__rbit64(v48)) | (v50 << 6);
    v66 = *(*(v390 + 48) + 8 * v65);
    v67 = *(v390 + 56) + 24 * v65;
    v69 = *v67;
    v68 = *(v67 + 8);
    v70 = *(v67 + 16);
    v393 = *v67;
    v394 = v68;
    if (v70 > 2)
    {
      if (v70 == 3)
      {
        v53 = v69 >> 8;
        sub_1D1741830(v69, v68, 3);

        v73 = MEMORY[0x1E69E6158];
      }

      else if (v70 == 4)
      {
        v53 = v69 >> 8;
        sub_1D1741830(v69, v68, 4);
        sub_1D1741854(v69, v68);
        v73 = MEMORY[0x1E6969080];
      }

      else
      {
        LOBYTE(v69) = 0;
        v73 = 0;
        v53 = 0;
        v68 = 0;
      }
    }

    else
    {
      v71 = MEMORY[0x1E69E63B0];
      if (v70 != 1)
      {
        v71 = MEMORY[0x1E69E6530];
      }

      v72 = v69 >> 8;
      if (!v70)
      {
        LOBYTE(v69) = v69 & 1;
      }

      v73 = MEMORY[0x1E69E6370];
      if (v70)
      {
        v73 = v71;
        v53 = v72;
      }

      v68 = v392;
    }

    *&v404 = v69 | (v53 << 8);
    *(&v404 + 1) = v68;
    v392 = v68;
    *&v405 = 0;
    *(&v405 + 1) = v73;
    v74 = v66;
    v75 = [v74 service];
    if (!v75)
    {

      sub_1D1778940(v393, v394, v70);
      goto LABEL_20;
    }

    v76 = v75;
    v388 = v53;
    sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
    v77 = v387;
    v78 = sub_1D1E684FC();

    if ((v78 & 1) == 0)
    {

      sub_1D1778940(v393, v394, v70);
LABEL_58:
      v53 = v388;
      goto LABEL_20;
    }

    v382 = v52;
    v79 = [v77 serviceType];
    v80 = sub_1D1E6781C();
    v82 = v81;

    v83._countAndFlagsBits = v80;
    v83._object = v82;
    ServiceKind.init(rawValue:)(v83);
    v84 = v401;
    if (v401 == 53)
    {
      v84 = 0;
    }

    LOBYTE(v401) = v84;
    v85 = ServiceKind.requiredCharacteristicKinds.getter();
    v86 = [v77 serviceType];
    v87 = sub_1D1E6781C();
    v89 = v88;

    v90._countAndFlagsBits = v87;
    v90._object = v89;
    ServiceKind.init(rawValue:)(v90);
    v91 = v397;
    if (v397 == 53)
    {
      v91 = 0;
    }

    LOBYTE(v397) = v91;
    v92 = ServiceKind.optionalCharacteristicKinds.getter();
    v93 = sub_1D18C0104(v92, v85);
    v94 = [v74 characteristicType];
    v95 = sub_1D1E6781C();
    v97 = v96;

    v98._countAndFlagsBits = v95;
    v98._object = v97;
    CharacteristicKind.init(rawValue:)(v98);
    if (v401 == 174)
    {
      v99 = 0;
    }

    else
    {
      v99 = v401;
    }

    v100 = sub_1D171974C(v99, v93);

    if ((v100 & 1) == 0)
    {

      sub_1D1778940(v393, v394, v70);
      v52 = v382;
      goto LABEL_58;
    }

    v403 = v382;
    sub_1D1741C08(&v404, &v401, &qword_1EC649700, &qword_1D1E6E910);
    v397 = 2;
    v398 = 0;
    v399 = 0;
    v400 = 3;
    v101 = v74;

    v102 = v389;
    StaticCharacteristic.init(from:value:loadingState:)(v101, &v401, &v397, v389);
    if ((*v386)(v102, 1, v395) == 1)
    {
      sub_1D1741A30(v102, &qword_1EC643630, &qword_1D1E71D10);
      if ([v101 value])
      {
        sub_1D1E6866C();
        swift_unknownObjectRelease();
        sub_1D1741A30(&v401, &qword_1EC649700, &qword_1D1E6E910);
        if (qword_1EE07B5D0 != -1)
        {
          swift_once();
        }

        v103 = sub_1D1E6709C();
        __swift_project_value_buffer(v103, qword_1EE07B5D8);
        v104 = v101;
        v105 = sub_1D1E6707C();
        v106 = sub_1D1E6833C();

        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          *v107 = v380;
          *(v107 + 4) = v104;
          *v108 = v104;
          v104 = v104;
          _os_log_impl(&dword_1D16EC000, v105, v106, "updatedCharacteristicValuesDictionary() unable to slurp value for characteristic %@", v107, 0xCu);
          sub_1D1741A30(v108, &unk_1EC644000, &unk_1D1E75B00);
          MEMORY[0x1D3893640](v108, -1, -1);
          MEMORY[0x1D3893640](v107, -1, -1);
        }

        goto LABEL_65;
      }

      v401 = 0u;
      v402 = 0u;
      sub_1D1741A30(&v401, &qword_1EC649700, &qword_1D1E6E910);
    }

    else
    {
      v109 = v385;
      sub_1D1CE8D8C(v102, v385);
      v110 = [v101 characteristicType];
      v111 = sub_1D1E6781C();
      *&v379 = v101;
      v113 = v112;

      v114._countAndFlagsBits = v111;
      v114._object = v113;
      CharacteristicKind.init(rawValue:)(v114);
      if (v401 == 174)
      {
        v115 = 0;
      }

      else
      {
        v115 = v401;
      }

      v116 = v391;
      sub_1D1CE6DD4(v109, v391, type metadata accessor for StaticCharacteristic);
      (*v384)(v116, 0, 1, v395);
      sub_1D1B0F194(v116, v115);
      sub_1D1CE6D74(v109, type metadata accessor for StaticCharacteristic);
    }

LABEL_65:
    sub_1D1778940(v393, v394, v70);
    v53 = v388;
    v52 = v403;
LABEL_20:
    v48 &= v48 - 1;
    sub_1D1741A30(&v404, &qword_1EC649700, &qword_1D1E6E910);
  }

  while (1)
  {
    v64 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v64 >= v49)
    {

      sub_1D1AC373C(v383, v381, 3u);
      goto LABEL_221;
    }

    v48 = v45[v64];
    ++v50;
    if (v48)
    {
      v50 = v64;
      goto LABEL_26;
    }
  }

LABEL_225:
  __break(1u);
LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);

  __break(1u);
  return result;
}

size_t StaticCharacteristicsBag.staticCharacteristics.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1D18044EC(v2, 0);
  v4 = *(type metadata accessor for StaticCharacteristic() - 8);
  v5 = sub_1D1805F54(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, v1);

  sub_1D1716918();
  if (v5 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1D1CE43CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001ELL && 0x80000001D1EC8330 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D1E6904C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D1CE4460(uint64_t a1)
{
  v2 = sub_1D1CE8E10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CE449C(uint64_t a1)
{
  v2 = sub_1D1CE8E10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCharacteristicsBag.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D480, &qword_1D1EA56E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CE8E10();

  sub_1D1E6930C();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D490, &qword_1D1EA56E8);
  sub_1D1CE8E64();
  sub_1D1E68F1C();

  return (*(v4 + 8))(v7, v3);
}

uint64_t StaticCharacteristicsBag.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D18563E0(v3, v1);
  return sub_1D1E6926C();
}

uint64_t StaticCharacteristicsBag.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D4A0, &qword_1D1EA56F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CE8E10();
  sub_1D1E692FC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D490, &qword_1D1EA56E8);
    sub_1D1CE8F20();
    sub_1D1E68D7C();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1CE4828()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D18563E0(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1CE4878()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D18563E0(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1CE4920(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v70 = &v67 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v67 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v67 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v67 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v67 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v67 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v67 - v25;
  v27 = *a1;
  v28 = *v1;
  if (*(v28 + 16) && (v29 = sub_1D171D140(v27), (v30 & 1) != 0))
  {
    v31 = v29;
    v68 = v7;
    v32 = v24;
    v33 = v21;
    v34 = v15;
    v35 = v12;
    v36 = *(v28 + 56);
    v37 = type metadata accessor for StaticCharacteristic();
    v38 = *(v37 - 8);
    v69 = v18;
    v39 = v38;
    v40 = v36 + *(v38 + 72) * v31;
    v12 = v35;
    v15 = v34;
    v21 = v33;
    v24 = v32;
    v7 = v68;
    sub_1D1CE6DD4(v40, v26, type metadata accessor for StaticCharacteristic);
    (*(v39 + 56))(v26, 0, 1, v37);
    v18 = v69;
    if (v27 > 113)
    {
LABEL_4:
      if (v27 != 114)
      {
        if (v27 != 149)
        {
          if (v27 == 156)
          {
            sub_1D1741A90(v26, v18, &qword_1EC643630, &qword_1D1E71D10);
            v41 = type metadata accessor for StaticCharacteristic();
            if ((*(*(v41 - 8) + 48))(v18, 1, v41) == 1)
            {
              v42 = v18;
LABEL_25:
              sub_1D1741A30(v42, &qword_1EC643630, &qword_1D1E71D10);
              return 2;
            }

            v58 = &v18[*(v41 + 24)];
            v53 = *v58;
            v59 = v58[16];
            if (v59 <= 3)
            {
              switch(v59)
              {
                case 1:
                  v53 = v53;
                  goto LABEL_111;
                case 2:
                  v53 = v53;
                  goto LABEL_111;
                case 3:
                  v53 = v53;
LABEL_111:
                  v66 = v18;
                  goto LABEL_118;
              }

              goto LABEL_106;
            }

            if (v59 != 4)
            {
              if (v59 == 6 || v59 == 5)
              {
                v53 = v53;
                goto LABEL_111;
              }

LABEL_106:
              sub_1D1CE6D74(v18, type metadata accessor for StaticCharacteristic);
              return 2;
            }

            if ((v53 & 0x8000000000000000) == 0)
            {
              goto LABEL_111;
            }

            __break(1u);
LABEL_94:
            if (v53 < 0)
            {
              __break(1u);
              goto LABEL_96;
            }

LABEL_113:
            sub_1D1CE6D74(v12, type metadata accessor for StaticCharacteristic);
            return v53 != 1;
          }

          goto LABEL_19;
        }

        sub_1D1741A90(v26, v24, &qword_1EC643630, &qword_1D1E71D10);
        v49 = type metadata accessor for StaticCharacteristic();
        if ((*(*(v49 - 8) + 48))(v24, 1, v49) == 1)
        {
          v42 = v24;
          goto LABEL_25;
        }

        v62 = &v24[*(v49 + 24)];
        v53 = *v62;
        v63 = v62[16];
        if (v63 <= 3)
        {
          switch(v63)
          {
            case 1:
              v53 = v53;
              goto LABEL_115;
            case 2:
              v53 = v53;
              goto LABEL_115;
            case 3:
              v53 = v53;
LABEL_115:
              v66 = v24;
              goto LABEL_118;
          }

          goto LABEL_108;
        }

        if (v63 != 4)
        {
          if (v63 == 6 || v63 == 5)
          {
            v53 = v53;
            goto LABEL_115;
          }

LABEL_108:
          sub_1D1CE6D74(v24, type metadata accessor for StaticCharacteristic);
          return 2;
        }

        if ((v53 & 0x8000000000000000) == 0)
        {
          goto LABEL_115;
        }

        __break(1u);
        goto LABEL_104;
      }

      v45 = v70;
      sub_1D1741A90(v26, v70, &qword_1EC643630, &qword_1D1E71D10);
      v46 = type metadata accessor for StaticCharacteristic();
      if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
      {
        v42 = v70;
        goto LABEL_25;
      }

      v52 = (v70 + *(v46 + 24));
      v53 = *v52;
      v54 = *(v52 + 16);
      if (v54 <= 3)
      {
        switch(v54)
        {
          case 1:
            v53 = v53;
            goto LABEL_97;
          case 2:
LABEL_96:
            v53 = v53;
            goto LABEL_97;
          case 3:
            v53 = v53;
LABEL_97:
            v66 = v70;
LABEL_118:
            sub_1D1CE6D74(v66, type metadata accessor for StaticCharacteristic);
            return v53 == 0;
        }

        goto LABEL_88;
      }

      if (v54 != 4)
      {
        if (v54 == 6 || v54 == 5)
        {
          v53 = v53;
          goto LABEL_97;
        }

LABEL_88:
        sub_1D1CE6D74(v70, type metadata accessor for StaticCharacteristic);
        return 2;
      }

      if ((v53 & 0x8000000000000000) == 0)
      {
        goto LABEL_97;
      }

      __break(1u);
      goto LABEL_86;
    }
  }

  else
  {
    v43 = type metadata accessor for StaticCharacteristic();
    (*(*(v43 - 8) + 56))(v26, 1, 1, v43);
    if (v27 > 113)
    {
      goto LABEL_4;
    }
  }

  switch(v27)
  {
    case 0x1F:
      sub_1D1741A90(v26, v21, &qword_1EC643630, &qword_1D1E71D10);
      v47 = type metadata accessor for StaticCharacteristic();
      if ((*(*(v47 - 8) + 48))(v21, 1, v47) == 1)
      {
        v42 = v21;
        goto LABEL_25;
      }

      v55 = &v21[*(v47 + 24)];
      v53 = *v55;
      v56 = v55[16];
      if (v56 > 3)
      {
        if (v56 == 4)
        {
LABEL_86:
          if (v53 < 0)
          {
            __break(1u);
            goto LABEL_88;
          }

LABEL_99:
          v66 = v21;
          goto LABEL_118;
        }

        if (v56 == 6 || v56 == 5)
        {
          v53 = v53;
          goto LABEL_99;
        }
      }

      else
      {
        switch(v56)
        {
          case 1:
            v53 = v53;
            goto LABEL_99;
          case 2:
            v53 = v53;
            goto LABEL_99;
          case 3:
            v53 = v53;
            goto LABEL_99;
        }
      }

      sub_1D1CE6D74(v21, type metadata accessor for StaticCharacteristic);
      return 2;
    case 0x26:
      sub_1D1741A90(v26, v15, &qword_1EC643630, &qword_1D1E71D10);
      v50 = type metadata accessor for StaticCharacteristic();
      if ((*(*(v50 - 8) + 48))(v15, 1, v50) == 1)
      {
        v42 = v15;
        goto LABEL_25;
      }

      v64 = &v15[*(v50 + 24)];
      v53 = *v64;
      v65 = v64[16];
      if (v65 > 3)
      {
        if (v65 == 4)
        {
LABEL_104:
          if (v53 < 0)
          {
            __break(1u);
            goto LABEL_106;
          }

LABEL_117:
          v66 = v15;
          goto LABEL_118;
        }

        if (v65 == 6 || v65 == 5)
        {
          v53 = v53;
          goto LABEL_117;
        }
      }

      else
      {
        switch(v65)
        {
          case 1:
            v53 = v53;
            goto LABEL_117;
          case 2:
            v53 = v53;
            goto LABEL_117;
          case 3:
            v53 = v53;
            goto LABEL_117;
        }
      }

      sub_1D1CE6D74(v15, type metadata accessor for StaticCharacteristic);
      return 2;
    case 0x2F:
      sub_1D1741A90(v26, v12, &qword_1EC643630, &qword_1D1E71D10);
      v44 = type metadata accessor for StaticCharacteristic();
      if ((*(*(v44 - 8) + 48))(v12, 1, v44) == 1)
      {
        v42 = v12;
        goto LABEL_25;
      }

      v60 = &v12[*(v44 + 24)];
      v53 = *v60;
      v61 = v60[16];
      if (v61 > 3)
      {
        if (v61 == 4)
        {
          goto LABEL_94;
        }

        if (v61 == 6 || v61 == 5)
        {
          v53 = v53;
          goto LABEL_113;
        }
      }

      else
      {
        switch(v61)
        {
          case 1:
            v53 = v53;
            goto LABEL_113;
          case 2:
            v53 = v53;
            goto LABEL_113;
          case 3:
            v53 = v53;
            goto LABEL_113;
        }
      }

      sub_1D1CE6D74(v12, type metadata accessor for StaticCharacteristic);
      return 2;
  }

LABEL_19:
  sub_1D1741A90(v26, v7, &qword_1EC643630, &qword_1D1E71D10);
  v48 = type metadata accessor for StaticCharacteristic();
  if ((*(*(v48 - 8) + 48))(v7, 1, v48) == 1)
  {
    v42 = v7;
    goto LABEL_25;
  }

  v57 = StaticCharacteristic.BOOLValue.getter();
  sub_1D1CE6D74(v7, type metadata accessor for StaticCharacteristic);
  return v57;
}

double sub_1D1CE53A4(unsigned __int8 *a1)
{
  v3 = type metadata accessor for StaticCharacteristic();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *v1;
  if (*(v9 + 16))
  {
    v10 = sub_1D171D140(v8);
    if (v11)
    {
      sub_1D1CE6DD4(*(v9 + 56) + *(v4 + 72) * v10, v7, type metadata accessor for StaticCharacteristic);
      v12 = &v7[*(v3 + 24)];
      if (v12[16] == 7)
      {
        v13 = *v12;
        sub_1D1CE6D74(v7, type metadata accessor for StaticCharacteristic);
        return result;
      }

      sub_1D1CE6D74(v7, type metadata accessor for StaticCharacteristic);
    }
  }

  v16 = v9;
  HIBYTE(v15) = v8;
  v17 = StaticCharacteristicsBag.int(for:)((&v15 + 7));
  if (!v17.is_nil)
  {
    return v17.value;
  }

  return result;
}

uint64_t sub_1D1CE5894@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v38 - v10;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v13 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D4D0, &qword_1D1EA5918);
  if (swift_dynamicCast())
  {
    sub_1D16EEE20(v38, v41);
    v17 = v42;
    v18 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    sub_1D18BA9DC(v17, v18, a4);
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v39 = 0;
  memset(v38, 0, sizeof(v38));
  sub_1D1741A30(v38, &qword_1EC64D4D8, &unk_1D1EA5920);
  sub_1D1CE6DD4(a3, v15, type metadata accessor for StateSnapshot.UpdateType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v15;
    v20 = *(v15 + 1);
    v22 = v15[16];
    if (v22 == 1)
    {
      if (*(v21 + 16))
      {
        v23 = *(v15 + 1);
        v24 = sub_1D171D368(v16);
        if (v25)
        {
          v26 = *(v21 + 56) + 32 * v24;
          v27 = *v26;
          v28 = *(v26 + 8);
          v29 = *(v26 + 16);
          v30 = *(v26 + 24);
          sub_1D17418FC(*v26, v28, v29, v30);
          result = sub_1D1AC373C(v21, v23, 1u);
          *a4 = v27;
          *(a4 + 8) = v28;
          *(a4 + 16) = v29;
          *(a4 + 24) = v30;
          return result;
        }

        v31 = v21;
        v20 = v23;
      }

      else
      {
        v31 = *v15;
      }

      LOBYTE(v22) = 1;
    }

    else
    {
      v31 = *v15;
    }

    sub_1D1AC373C(v31, v20, v22);
  }

  else
  {
    sub_1D1CE6D74(v15, type metadata accessor for StateSnapshot.UpdateType);
  }

  sub_1D1741C08(a2, v11, &qword_1EC643630, &qword_1D1E71D10);
  v32 = type metadata accessor for StaticCharacteristic();
  if ((*(*(v32 - 8) + 48))(v11, 1, v32) == 1)
  {
    result = sub_1D1741A30(v11, &qword_1EC643630, &qword_1D1E71D10);
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = 0;
    *(a4 + 24) = -1;
  }

  else
  {
    v33 = &v11[*(v32 + 32)];
    v34 = *v33;
    v35 = *(v33 + 1);
    v36 = *(v33 + 2);
    v37 = v33[24];
    sub_1D17418FC(*v33, v35, v36, v37);
    result = sub_1D1CE6D74(v11, type metadata accessor for StaticCharacteristic);
    *a4 = v34;
    *(a4 + 8) = v35;
    *(a4 + 16) = v36;
    *(a4 + 24) = v37;
  }

  return result;
}

uint64_t sub_1D1CE5BF8@<X0>(uint64_t *a1@<X0>, void **a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v33 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v32 - v13;
  v15 = *a1;
  v16 = *a2;
  if ([v16 value])
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v40, 0, sizeof(v40));
  }

  v17 = [v16 characteristicType];
  v18 = sub_1D1E6781C();
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  CharacteristicKind.init(rawValue:)(v21);
  if (*(a4 + 16) && (v37 != 174 ? (v22 = v37) : (v22 = 0), v23 = sub_1D171D140(v22), (v24 & 1) != 0))
  {
    v25 = v23;
    v26 = *(a4 + 56);
    v27 = type metadata accessor for StaticCharacteristic();
    v28 = *(v27 - 8);
    sub_1D1CE6DD4(v26 + *(v28 + 72) * v25, v14, type metadata accessor for StaticCharacteristic);
    (*(v28 + 56))(v14, 0, 1, v27);
  }

  else
  {
    v29 = type metadata accessor for StaticCharacteristic();
    (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
  }

  sub_1D1CE5894(v16, v14, a5, &v37);
  sub_1D1741A30(v14, &qword_1EC643630, &qword_1D1E71D10);
  v34 = v37;
  v35 = v38;
  v36 = v39;
  v30 = sub_1D1CE915C(v16, v40, a3, v15, &v34);
  sub_1D1B0C0CC(v34, *(&v34 + 1), v35, v36);
  result = sub_1D1741A30(v40, &qword_1EC649700, &qword_1D1E6E910);
  *v33 = v30;
  return result;
}

uint64_t sub_1D1CE5EB0(id *a1, uint64_t a2, void *a3)
{
  v37 = a3;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v38 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v35 - v19;
  v21 = [*a1 service];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 uniqueIdentifier];

    sub_1D1E66A5C();
    v24 = v5[7];
    v24(v20, 0, 1, v4);
  }

  else
  {
    v24 = v5[7];
    v24(v20, 1, 1, v4);
  }

  v25 = [v37 uniqueIdentifier];
  sub_1D1E66A5C();

  v24(v18, 0, 1, v4);
  v26 = *(v8 + 48);
  sub_1D1741C08(v20, v11, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741C08(v18, &v11[v26], &qword_1EC642590, qword_1D1E71260);
  v27 = v5;
  v28 = v5[6];
  if (v28(v11, 1, v4) != 1)
  {
    sub_1D1741C08(v11, v38, &qword_1EC642590, qword_1D1E71260);
    if (v28(&v11[v26], 1, v4) != 1)
    {
      v30 = v27;
      v31 = v36;
      (v27[4])(v36, &v11[v26], v4);
      sub_1D1CE9684(&qword_1EE07D170, MEMORY[0x1E69695A8]);
      v32 = v38;
      v29 = sub_1D1E6775C();
      v33 = v30[1];
      v33(v31, v4);
      sub_1D1741A30(v18, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v20, &qword_1EC642590, qword_1D1E71260);
      v33(v32, v4);
      sub_1D1741A30(v11, &qword_1EC642590, qword_1D1E71260);
      return v29 & 1;
    }

    sub_1D1741A30(v18, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v20, &qword_1EC642590, qword_1D1E71260);
    (v27[1])(v38, v4);
    goto LABEL_9;
  }

  sub_1D1741A30(v18, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v20, &qword_1EC642590, qword_1D1E71260);
  if (v28(&v11[v26], 1, v4) != 1)
  {
LABEL_9:
    sub_1D1741A30(v11, &qword_1EC642980, &unk_1D1E6E6E0);
    v29 = 0;
    return v29 & 1;
  }

  sub_1D1741A30(v11, &qword_1EC642590, qword_1D1E71260);
  v29 = 1;
  return v29 & 1;
}

uint64_t sub_1D1CE6390@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v47 = a3;
  v49 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v46 - v11;
  v13 = type metadata accessor for StaticCharacteristic();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v46 = &v46 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v48 = &v46 - v21;
  v22 = *a1;
  LOBYTE(v56[0]) = v22;
  v23 = HMService.subscript.getter(v56);
  if (!v23)
  {
    goto LABEL_12;
  }

  v24 = v23;
  if ([v23 value])
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
    if (!a2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    memset(v56, 0, sizeof(v56));
    if (!a2)
    {
      goto LABEL_9;
    }
  }

  if (*(a2 + 16))
  {
    v25 = sub_1D171D140(v22);
    if (v26)
    {
      sub_1D1CE6DD4(*(a2 + 56) + *(v14 + 72) * v25, v10, type metadata accessor for StaticCharacteristic);
      (*(v14 + 56))(v10, 0, 1, v13);
      goto LABEL_10;
    }
  }

LABEL_9:
  (*(v14 + 56))(v10, 1, 1, v13);
LABEL_10:
  sub_1D1CE5894(v24, v10, v47, &v53);
  sub_1D1741A30(v10, &qword_1EC643630, &qword_1D1E71D10);
  v50 = v53;
  v51 = v54;
  v52 = v55;
  v27 = v24;
  StaticCharacteristic.init(from:value:loadingState:)(v27, v56, &v50, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {

    sub_1D1741A30(v12, &qword_1EC643630, &qword_1D1E71D10);
LABEL_12:
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643248, &qword_1D1E716A0);
    return (*(*(v28 - 8) + 56))(v49, 1, 1, v28);
  }

  sub_1D1CE8D8C(v12, v48);
  if (a2 && *(a2 + 16) && (v30 = sub_1D171D140(v22), (v31 & 1) != 0))
  {
    sub_1D1CE6DD4(*(a2 + 56) + *(v14 + 72) * v30, v18, type metadata accessor for StaticCharacteristic);
    v32 = v46;
    sub_1D1CE8D8C(v18, v46);
  }

  else
  {
    v32 = v46;
    sub_1D1CE6DD4(v48, v46, type metadata accessor for StaticCharacteristic);
  }

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643248, &qword_1D1E716A0);
  v34 = *(v33 + 48);
  v35 = v49;
  *v49 = v22;
  v36 = v32 + *(v13 + 32);
  v37 = *(v36 + 24);
  if (v37 == 1)
  {
    goto LABEL_19;
  }

  v38 = *v36;
  v39 = *(v36 + 8);
  v40 = *(v36 + 16);
  if (!*(v36 + 24))
  {
    v43 = *v36;
    v44 = *(v36 + 8);
    v45 = 0;
LABEL_30:
    sub_1D1757A60(v43, v44, v40, v45);
    sub_1D1757A60(2, 0, 0, 3);

    goto LABEL_31;
  }

  if (v37 == 2)
  {
    v41 = *(v36 + 16);
    swift_bridgeObjectRetain_n();
    sub_1D1757A60(v38, v39, v41, 2);
    sub_1D1757A60(2, 0, 0, 3);

    v42 = v41;
    v32 = v46;
    sub_1D1757A60(v38, v39, v42, 2);
LABEL_31:
    sub_1D1CE8D8C(v48, &v35[v34]);
    goto LABEL_32;
  }

  if (!(v40 | v39 | v38))
  {
    v43 = 0;
    goto LABEL_29;
  }

  if (v38 == 1 && !(v40 | v39))
  {
    v43 = 1;
LABEL_29:
    v44 = 0;
    v40 = 0;
    v45 = 3;
    goto LABEL_30;
  }

  sub_1D1757A60(2, 0, 0, 3);
  sub_1D1757A60(2, 0, 0, 3);
LABEL_19:

  sub_1D1CE6D74(v48, type metadata accessor for StaticCharacteristic);
  sub_1D1CE6DD4(v32, &v35[v34], type metadata accessor for StaticCharacteristic);
LABEL_32:
  (*(*(v33 - 8) + 56))(v35, 0, 1, v33);
  return sub_1D1CE6D74(v32, type metadata accessor for StaticCharacteristic);
}

HomeDataModel::StaticCharacteristicsBag __swiftcall StaticCharacteristicsBag.copyReplacing(characteristicValuesDictionary:)(Swift::OpaquePointer_optional characteristicValuesDictionary)
{
  v3 = v1;
  if (characteristicValuesDictionary.value._rawValue)
  {
    rawValue = characteristicValuesDictionary.value._rawValue;
  }

  else
  {
    rawValue = *v2;
  }

  *v3 = rawValue;
}

uint64_t StaticCharacteristicsBag.copy(mappingCharacteristics:addingCharacteristics:)@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v37 = a4;
  v8 = type metadata accessor for StaticCharacteristic();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - v14;
  v16 = *v4;
  if (a1)
  {

    sub_1D18AFEFC(a1);
    v17 = sub_1D1CDFAC4(a1, a2, v16);

    result = sub_1D17169C0(a1);
    v16 = v17;
    if (!a3)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (!a3)
    {
LABEL_19:
      *v37 = v16;
      return result;
    }
  }

  v19 = *(a3 + 16);
  if (!v19)
  {
    goto LABEL_19;
  }

  v20 = *(v8 + 20);
  v21 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v22 = *(v9 + 72);
  while (1)
  {
    sub_1D1CE6DD4(v21, v15, type metadata accessor for StaticCharacteristic);
    v23 = v15[v20];
    sub_1D1CE8D8C(v15, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v16;
    v25 = sub_1D171D140(v23);
    v27 = v16[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      break;
    }

    v31 = v26;
    if (v16[3] < v30)
    {
      sub_1D1730FB4(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_1D171D140(v23);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_22;
      }

LABEL_14:
      v16 = v38;
      if (v31)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v35 = v25;
    sub_1D173DAEC();
    v25 = v35;
    v16 = v38;
    if (v31)
    {
LABEL_7:
      result = sub_1D1C8D250(v13, v16[7] + v25 * v22);
      goto LABEL_8;
    }

LABEL_15:
    v16[(v25 >> 6) + 8] |= 1 << v25;
    *(v16[6] + v25) = v23;
    result = sub_1D1CE8D8C(v13, v16[7] + v25 * v22);
    v33 = v16[2];
    v29 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (v29)
    {
      goto LABEL_21;
    }

    v16[2] = v34;
LABEL_8:
    v21 += v22;
    if (!--v19)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

unint64_t *sub_1D1CE6C3C(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    sub_1D1CE8838(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

void *sub_1D1CE6CD4(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void *, uint64_t, uint64_t, id))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a4;
    v11 = a5(v9, a2, a3, v10);

    return v11;
  }

  return result;
}

uint64_t sub_1D1CE6D74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1CE6DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D1CE6E5C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v59 = a2;
  v73 = a4;
  v62 = a1;
  v75 = sub_1D1E66A7C();
  v5 = *(v75 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v61 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v8 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v10 = &v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v76 = &v59 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v59 - v18;
  v63 = 0;
  v20 = 0;
  v74 = a3;
  v21 = a3;
  v22 = v19;
  v25 = *(v21 + 56);
  v24 = v21 + 56;
  v23 = v25;
  v26 = 1 << *(v24 - 24);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v23;
  v29 = (v26 + 63) >> 6;
  v68 = (v5 + 48);
  v69 = (v5 + 56);
  v60 = (v5 + 32);
  v64 = (v5 + 8);
  v65 = v22;
  v30 = v15;
  v31 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  v70 = v29;
  v71 = v24;
  v66 = v30;
  while (v28)
  {
    v33 = __clz(__rbit64(v28));
    v79 = (v28 - 1) & v28;
LABEL_13:
    v36 = v33 | (v20 << 6);
    v37 = *(v74 + 48);
    v67 = v36;
    v78 = *(v37 + 8 * v36);
    v38 = [v78 service];
    if (v38)
    {
      v39 = v38;
      v40 = [v38 v31[61]];

      sub_1D1E66A5C();
      v41 = 0;
    }

    else
    {
      v41 = 1;
    }

    v42 = *v69;
    v43 = v75;
    (*v69)(v22, v41, 1, v75);
    v44 = [v73 v31[61]];
    v45 = v22;
    v46 = v43;
    v47 = v76;
    sub_1D1E66A5C();

    v42(v47, 0, 1, v46);
    v48 = *(v72 + 48);
    sub_1D1741C08(v45, v10, &qword_1EC642590, qword_1D1E71260);
    v77 = v48;
    sub_1D1741C08(v47, &v10[v48], &qword_1EC642590, qword_1D1E71260);
    v49 = *v68;
    if ((*v68)(v10, 1, v46) == 1)
    {
      sub_1D1741A30(v47, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v45, &qword_1EC642590, qword_1D1E71260);
      v32 = v49(&v10[v77], 1, v46);
      v22 = v45;
      if (v32 != 1)
      {
        goto LABEL_5;
      }

      sub_1D1741A30(v10, &qword_1EC642590, qword_1D1E71260);

      v29 = v70;
      v24 = v71;
      v31 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
      v28 = v79;
LABEL_22:
      *(v62 + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v67;
      if (__OFADD__(v63++, 1))
      {
        __break(1u);
LABEL_25:
        v58 = v74;

        sub_1D19E2060(v62, v59, v63, v58);
        return;
      }
    }

    else
    {
      v50 = v66;
      sub_1D1741C08(v10, v66, &qword_1EC642590, qword_1D1E71260);
      v51 = v77;
      if (v49(&v10[v77], 1, v46) == 1)
      {
        sub_1D1741A30(v76, &qword_1EC642590, qword_1D1E71260);
        v22 = v65;
        sub_1D1741A30(v65, &qword_1EC642590, qword_1D1E71260);
        (*v64)(v50, v75);
LABEL_5:
        sub_1D1741A30(v10, &qword_1EC642980, &unk_1D1E6E6E0);

        v29 = v70;
        v24 = v71;
        v31 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        v28 = v79;
      }

      else
      {
        v52 = v61;
        v53 = &v10[v51];
        v54 = v75;
        (*v60)(v61, v53, v75);
        sub_1D1CE9684(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        LODWORD(v77) = sub_1D1E6775C();
        v55 = *v64;
        (*v64)(v52, v54);
        v56 = v55;
        sub_1D1741A30(v76, &qword_1EC642590, qword_1D1E71260);
        v22 = v65;
        sub_1D1741A30(v65, &qword_1EC642590, qword_1D1E71260);
        v56(v50, v54);
        sub_1D1741A30(v10, &qword_1EC642590, qword_1D1E71260);

        v29 = v70;
        v24 = v71;
        v31 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        v28 = v79;
        if (v77)
        {
          goto LABEL_22;
        }
      }
    }
  }

  v34 = v20;
  while (1)
  {
    v20 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v20 >= v29)
    {
      goto LABEL_25;
    }

    v35 = *(v24 + 8 * v20);
    ++v34;
    if (v35)
    {
      v33 = __clz(__rbit64(v35));
      v79 = (v35 - 1) & v35;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1D1CE7490(uint64_t a1, void *a2)
{
  v3 = v2;
  v80 = *MEMORY[0x1E69E9840];
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 1);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v6);
  v60 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v10 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v72 = v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v66 = v57 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v76 = (v57 - v19);
  v20 = *(a1 + 32);
  v21 = v20 & 0x3F;
  v58 = ((1 << v20) + 63) >> 6;
  v22 = 8 * v58;
  v23 = a2;
  v75 = v23;
  if (v21 > 0xD)
  {
    goto LABEL_29;
  }

  while (2)
  {
    v65 = v16;
    v57[1] = v3;
    v57[0] = v57;
    MEMORY[0x1EEE9AC00](v23);
    v61 = v57 - ((v22 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v61, v22);
    v63 = 0;
    v22 = 0;
    v74 = a1;
    v25 = *(a1 + 56);
    a1 += 56;
    v24 = v25;
    v26 = 1 << *(a1 - 24);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & v24;
    v29 = (v26 + 63) >> 6;
    v71 = (v7 + 7);
    v59 = (v7 + 4);
    v64 = v7 + 1;
    v30 = v66;
    v68 = a1;
    v69 = v29;
    v77 = v6;
    v70 = (v7 + 6);
    while (v28)
    {
      v32 = __clz(__rbit64(v28));
      v79 = (v28 - 1) & v28;
LABEL_14:
      v35 = v32 | (v22 << 6);
      v36 = *(v74 + 48);
      v67 = v35;
      v78 = *(v36 + 8 * v35);
      v37 = [v78 service];
      if (v37)
      {
        v38 = v37;
        v39 = [v37 uniqueIdentifier];

        v6 = v76;
        sub_1D1E66A5C();

        v40 = 0;
      }

      else
      {
        v40 = 1;
        v6 = v76;
      }

      v41 = *v71;
      v7 = v77;
      (*v71)(v6, v40, 1, v77);
      v42 = [v75 uniqueIdentifier];
      sub_1D1E66A5C();

      v41(v30, 0, 1, v7);
      v16 = v72;
      v43 = *(v73 + 48);
      sub_1D1741C08(v6, v72, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741C08(v30, &v16[v43], &qword_1EC642590, qword_1D1E71260);
      v3 = *v70;
      if ((*v70)(v16, 1, v7) == 1)
      {
        sub_1D1741A30(v30, &qword_1EC642590, qword_1D1E71260);
        v31 = v6;
        v6 = &qword_1EC642590;
        sub_1D1741A30(v31, &qword_1EC642590, qword_1D1E71260);
        if ((v3)(&v16[v43], 1, v7) != 1)
        {
          goto LABEL_6;
        }

        sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);

        a1 = v68;
        v29 = v69;
        v28 = v79;
LABEL_23:
        *&v61[(v67 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v67;
        if (__OFADD__(v63++, 1))
        {
          __break(1u);
LABEL_26:
          v52 = sub_1D19E2060(v61, v58, v63, v74);

          goto LABEL_27;
        }
      }

      else
      {
        v44 = v65;
        sub_1D1741C08(v16, v65, &qword_1EC642590, qword_1D1E71260);
        v45 = (v3)(&v16[v43], 1, v7);
        v3 = v7;
        if (v45 == 1)
        {
          v46 = v66;
          v7 = &qword_1EC642590;
          sub_1D1741A30(v66, &qword_1EC642590, qword_1D1E71260);
          sub_1D1741A30(v76, &qword_1EC642590, qword_1D1E71260);
          v30 = v46;
          (*v64)(v44, v3);
LABEL_6:
          sub_1D1741A30(v16, &qword_1EC642980, &unk_1D1E6E6E0);

          a1 = v68;
          v29 = v69;
          v28 = v79;
        }

        else
        {
          v47 = &v16[v43];
          v48 = v60;
          (*v59)(v60, v47, v7);
          sub_1D1CE9684(&qword_1EE07D170, MEMORY[0x1E69695A8]);
          v49 = sub_1D1E6775C();
          v6 = v77;
          v62 = v49;
          v7 = v64;
          v3 = *v64;
          (*v64)(v48, v77);
          v50 = v66;
          sub_1D1741A30(v66, &qword_1EC642590, qword_1D1E71260);
          sub_1D1741A30(v76, &qword_1EC642590, qword_1D1E71260);
          (v3)(v44, v6);
          v30 = v50;
          sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);

          a1 = v68;
          v29 = v69;
          v28 = v79;
          if (v62)
          {
            goto LABEL_23;
          }
        }
      }
    }

    v33 = v22;
    while (1)
    {
      v22 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v22 >= v29)
      {
        goto LABEL_26;
      }

      v34 = *(a1 + 8 * v22);
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v79 = (v34 - 1) & v34;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v55 = swift_slowAlloc();
  v56 = v75;
  v52 = sub_1D1CE6CD4(v55, v58, a1, v56, sub_1D1CE6E5C);

  MEMORY[0x1D3893640](v55, -1, -1);

LABEL_27:
  v53 = *MEMORY[0x1E69E9840];
  return v52;
}

uint64_t sub_1D1CE7C5C(uint64_t a1, void *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v8 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v54 - v17;
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1D1CE7490(a1, a2);
  }

  v62 = v4;
  v58 = v16;
  v67 = MEMORY[0x1E69E7CD0];
  v71 = MEMORY[0x1E69E7CD0];
  v66 = a2;
  v65 = sub_1D1E686EC();
  v18 = sub_1D1E6877C();
  if (v18)
  {
    v19 = v18;
    v61 = sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    v20 = v19;
    v59 = (v5 + 48);
    v60 = (v5 + 56);
    v55 = (v5 + 32);
    v67 = MEMORY[0x1E69E7CD0];
    v57 = (v5 + 8);
    v21 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    v22 = v58;
    v23 = v63;
    while (1)
    {
      v69 = v20;
      swift_dynamicCast();
      v33 = [v70 service];
      if (v33)
      {
        v34 = v21[61];
        v35 = v33;
        v36 = [v33 v34];

        v21 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        sub_1D1E66A5C();

        v37 = 0;
      }

      else
      {
        v37 = 1;
      }

      v38 = *v60;
      v39 = v68;
      v40 = v62;
      (*v60)(v68, v37, 1, v62);
      v41 = [v66 v21[61]];
      sub_1D1E66A5C();

      v38(v15, 0, 1, v40);
      v42 = *(v64 + 48);
      sub_1D1741C08(v39, v23, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741C08(v15, v23 + v42, &qword_1EC642590, qword_1D1E71260);
      v43 = *v59;
      if ((*v59)(v23, 1, v40) == 1)
      {
        break;
      }

      sub_1D1741C08(v23, v22, &qword_1EC642590, qword_1D1E71260);
      if (v43(v23 + v42, 1, v40) == 1)
      {
        sub_1D1741A30(v15, &qword_1EC642590, qword_1D1E71260);
        sub_1D1741A30(v68, &qword_1EC642590, qword_1D1E71260);
        (*v57)(v22, v40);
LABEL_16:
        sub_1D1741A30(v23, &qword_1EC642980, &unk_1D1E6E6E0);
        goto LABEL_17;
      }

      v44 = v56;
      (*v55)(v56, v23 + v42, v40);
      sub_1D1CE9684(&qword_1EE07D170, MEMORY[0x1E69695A8]);
      v45 = sub_1D1E6775C();
      v46 = *v57;
      v47 = v44;
      v22 = v58;
      (*v57)(v47, v40);
      sub_1D1741A30(v15, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v68, &qword_1EC642590, qword_1D1E71260);
      v46(v22, v40);
      sub_1D1741A30(v23, &qword_1EC642590, qword_1D1E71260);
      if (v45)
      {
        goto LABEL_19;
      }

LABEL_17:

LABEL_7:
      v20 = sub_1D1E6877C();
      v21 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    sub_1D1741A30(v15, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v68, &qword_1EC642590, qword_1D1E71260);
    if (v43(v23 + v42, 1, v40) == 1)
    {
      sub_1D1741A30(v23, &qword_1EC642590, qword_1D1E71260);
LABEL_19:
      v48 = v70;
      v49 = v67[2];
      if (v67[3] <= v49)
      {
        sub_1D1939118(v49 + 1);
      }

      v24 = v71;
      v25 = *(v71 + 40);
      result = sub_1D1E684EC();
      v27 = v24 + 56;
      v67 = v24;
      v28 = -1 << *(v24 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v24 + 56 + 8 * (v29 >> 6))) != 0)
      {
        v31 = __clz(__rbit64((-1 << v29) & ~*(v24 + 56 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v50 = 0;
        v51 = (63 - v28) >> 6;
        do
        {
          if (++v30 == v51 && (v50 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v52 = v30 == v51;
          if (v30 == v51)
          {
            v30 = 0;
          }

          v50 |= v52;
          v53 = *(v27 + 8 * v30);
        }

        while (v53 == -1);
        v31 = __clz(__rbit64(~v53)) + (v30 << 6);
      }

      *(v27 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      v32 = v67;
      *(v67[6] + 8 * v31) = v48;
      ++v32[2];
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_29:

  return v67;
}

void sub_1D1CE831C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v28 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v31 = (v10 - 1) & v10;
    v32 = v5;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(a3 + 56);
    v37 = *(*(a3 + 48) + 8 * v15);
    v17 = v15;
    v18 = v16 + 32 * v15;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v33 = *v18;
    v19 = v33;
    v34 = v20;
    v35 = v21;
    v36 = *(v18 + 24);
    v22 = v36;
    v23 = v37;
    sub_1D17418FC(v19, v20, v21, v22);
    v24 = sub_1D1CE5EB0(&v37, &v33, a4);
    v5 = v32;
    sub_1D1757A60(v33, v34, v35, v36);

    if (v32)
    {
      return;
    }

    v10 = v31;
    if (v24)
    {
      *(a1 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1D188DD5C(a1, a2, v28, a3);
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v31 = (v14 - 1) & v14;
      v32 = v5;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1D1CE84CC(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = a2;
  v9 = v8;
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();
      v16 = v9;
      v12 = sub_1D1CE6CD4(v15, v6, a1, v16, sub_1D1CE831C);
      MEMORY[0x1D3893640](v15, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  bzero(v17 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), 8 * v6);
  v10 = v9;
  sub_1D1CE831C((v17 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a1, v10);
  v12 = v11;

  if (v2)
  {
    swift_willThrow();
  }

LABEL_6:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

unint64_t *sub_1D1CE868C(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = a2;
  v9 = v8;
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();
      v16 = v9;
      v12 = sub_1D1CE6C3C(v15, v6, a1, v16);
      MEMORY[0x1D3893640](v15, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  bzero(v17 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), 8 * v6);
  v10 = v9;
  sub_1D1CE8838((v17 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a1, v10);
  v12 = v11;

  if (v2)
  {
    swift_willThrow();
  }

LABEL_6:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_1D1CE8838(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v26 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v29 = v5;
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(a3 + 56);
    v33 = *(*(a3 + 48) + 8 * v15);
    v17 = v16 + 24 * v15;
    v19 = *(v17 + 8);
    v30 = *v17;
    v18 = v30;
    v31 = v19;
    v32 = *(v17 + 16);
    v20 = v32;
    v21 = v33;
    sub_1D1741830(v18, v19, v20);
    v22 = sub_1D1CE5EB0(&v33, &v30, a4);
    v5 = v29;
    sub_1D1778940(v30, v31, v32);

    if (v29)
    {
      return;
    }

    if (v22)
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1D188DB08(a1, a2, v26, a3);
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v29 = v5;
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1D1CE89D4(uint64_t a1, char a2, void *a3)
{
  v6 = type metadata accessor for StaticCharacteristic();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643248, &qword_1D1E716A0);
  v12 = *(*(v11 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v11);
  v16 = &v47 - v15;
  v17 = *(a1 + 16);
  if (v17)
  {
    v49 = a1;
    v50 = v7;
    v18 = *(result + 48);
    v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v52 = *(v14 + 72);
    v48 = v19;
    sub_1D1741C08(a1 + v19, &v47 - v15, &qword_1EC643248, &qword_1D1E716A0);
    v20 = *v16;
    v51 = v18;
    sub_1D1CE8D8C(&v16[v18], v10);
    v21 = *a3;
    v23 = sub_1D171D140(v20);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_23;
    }

    LOBYTE(v7) = v22;
    if (v21[3] >= v26)
    {
      if ((a2 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_7;
    }

    sub_1D1730FB4(v26, a2 & 1);
    v27 = *a3;
    v28 = sub_1D171D140(v20);
    if ((v7 & 1) == (v29 & 1))
    {
      v23 = v28;
LABEL_7:
      v30 = v50;
      while (1)
      {
        v50 = v17;
        v31 = *a3;
        if (v7)
        {
          v17 = *(v30 + 72);
          result = sub_1D1C8D250(v10, v31[7] + v17 * v23);
        }

        else
        {
          v31[(v23 >> 6) + 8] |= 1 << v23;
          *(v31[6] + v23) = v20;
          v17 = *(v30 + 72);
          result = sub_1D1CE8D8C(v10, v31[7] + v17 * v23);
          v32 = v31[2];
          v33 = __OFADD__(v32, 1);
          v34 = v32 + 1;
          if (v33)
          {
            goto LABEL_24;
          }

          v31[2] = v34;
        }

        v35 = v50 - 1;
        if (v50 == 1)
        {
          return result;
        }

        v7 = v49 + v52 + v48;
        while (1)
        {
          sub_1D1741C08(v7, v16, &qword_1EC643248, &qword_1D1E716A0);
          v20 = *v16;
          sub_1D1CE8D8C(&v16[v51], v10);
          v36 = *a3;
          v37 = sub_1D171D140(v20);
          v39 = v36[2];
          v40 = (v38 & 1) == 0;
          v33 = __OFADD__(v39, v40);
          v41 = v39 + v40;
          if (v33)
          {
            break;
          }

          v23 = v38;
          if (v36[3] < v41)
          {
            sub_1D1730FB4(v41, 1);
            v42 = *a3;
            v37 = sub_1D171D140(v20);
            if ((v23 & 1) != (v43 & 1))
            {
              goto LABEL_26;
            }
          }

          v44 = *a3;
          if (v23)
          {
            result = sub_1D1C8D250(v10, v44[7] + v17 * v37);
          }

          else
          {
            v44[(v37 >> 6) + 8] |= 1 << v37;
            *(v44[6] + v37) = v20;
            result = sub_1D1CE8D8C(v10, v44[7] + v17 * v37);
            v45 = v44[2];
            v33 = __OFADD__(v45, 1);
            v46 = v45 + 1;
            if (v33)
            {
              goto LABEL_24;
            }

            v44[2] = v46;
          }

          v7 += v52;
          if (!--v35)
          {
            return result;
          }
        }

LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v30 = v50;
        sub_1D173DAEC();
      }
    }

LABEL_26:
    result = sub_1D1E690FC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1CE8D8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticCharacteristic();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D1CE8E10()
{
  result = qword_1EC64D488;
  if (!qword_1EC64D488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D488);
  }

  return result;
}

unint64_t sub_1D1CE8E64()
{
  result = qword_1EC64D498;
  if (!qword_1EC64D498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64D490, &qword_1D1EA56E8);
    sub_1D1CD8BC8();
    sub_1D1CE9684(&qword_1EC644B10, type metadata accessor for StaticCharacteristic);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D498);
  }

  return result;
}

unint64_t sub_1D1CE8F20()
{
  result = qword_1EC64D4A8;
  if (!qword_1EC64D4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64D490, &qword_1D1EA56E8);
    sub_1D1CD8D6C();
    sub_1D1CE9684(&qword_1EC644B28, type metadata accessor for StaticCharacteristic);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D4A8);
  }

  return result;
}

unint64_t sub_1D1CE8FE0()
{
  result = qword_1EC64D4B0;
  if (!qword_1EC64D4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D4B0);
  }

  return result;
}

unint64_t sub_1D1CE9058()
{
  result = qword_1EC64D4B8;
  if (!qword_1EC64D4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D4B8);
  }

  return result;
}

unint64_t sub_1D1CE90B0()
{
  result = qword_1EC64D4C0;
  if (!qword_1EC64D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D4C0);
  }

  return result;
}

unint64_t sub_1D1CE9108()
{
  result = qword_1EC64D4C8;
  if (!qword_1EC64D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D4C8);
  }

  return result;
}

uint64_t sub_1D1CE915C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v58 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v54 - v14;
  v16 = type metadata accessor for StaticCharacteristic();
  v59 = *(v16 - 8);
  v17 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a5;
  v21 = *(a5 + 8);
  v56 = *(a5 + 16);
  v57 = v20;
  v55 = *(a5 + 24);
  v22 = [a1 service];
  if (!v22)
  {
    goto LABEL_14;
  }

  v23 = v22;
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v24 = a3;
  v25 = sub_1D1E684FC();

  if ((v25 & 1) == 0)
  {
    goto LABEL_14;
  }

  v54 = v13;
  v26 = HMService.supportedCharacteristicKinds.getter();
  v27 = [a1 characteristicType];
  v28 = sub_1D1E6781C();
  v30 = v29;

  v31._countAndFlagsBits = v28;
  v31._object = v30;
  CharacteristicKind.init(rawValue:)(v31);
  v32 = LOBYTE(v62[0]) == 174 ? 0 : LOBYTE(v62[0]);
  v33 = sub_1D171974C(v32, v26);

  if (v33)
  {
    v63 = a4;
    sub_1D1741C08(v58, v62, &qword_1EC649700, &qword_1D1E6E910);
    v35 = v56;
    v34 = v57;
    v60[0] = v57;
    v60[1] = v21;
    v60[2] = v56;
    v36 = v55;
    v61 = v55;

    v37 = a1;
    sub_1D1CD8B60(v34, v21, v35, v36);
    StaticCharacteristic.init(from:value:loadingState:)(v37, v62, v60, v15);
    v38 = v59;
    if ((*(v59 + 48))(v15, 1, v16) == 1)
    {
      sub_1D1741A30(v15, &qword_1EC643630, &qword_1D1E71D10);
      if ([v37 value])
      {
        sub_1D1E6866C();
        swift_unknownObjectRelease();
        sub_1D1741A30(v62, &qword_1EC649700, &qword_1D1E6E910);
        if (qword_1EE07B5D0 != -1)
        {
          swift_once();
        }

        v39 = sub_1D1E6709C();
        __swift_project_value_buffer(v39, qword_1EE07B5D8);
        v40 = v37;
        v41 = sub_1D1E6707C();
        v42 = sub_1D1E6833C();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *v43 = 138412290;
          *(v43 + 4) = v40;
          *v44 = v40;
          v45 = v40;
          _os_log_impl(&dword_1D16EC000, v41, v42, "updatedCharacteristicValuesDictionary() unable to slurp value for characteristic %@", v43, 0xCu);
          sub_1D1741A30(v44, &unk_1EC644000, &unk_1D1E75B00);
          MEMORY[0x1D3893640](v44, -1, -1);
          MEMORY[0x1D3893640](v43, -1, -1);
        }

        return v63;
      }

      else
      {
        memset(v62, 0, sizeof(v62));
        sub_1D1741A30(v62, &qword_1EC649700, &qword_1D1E6E910);
        return v63;
      }
    }

    else
    {
      sub_1D1CE8D8C(v15, v19);
      v47 = [v37 characteristicType];
      v48 = sub_1D1E6781C();
      v50 = v49;

      v51._countAndFlagsBits = v48;
      v51._object = v50;
      CharacteristicKind.init(rawValue:)(v51);
      if (LOBYTE(v62[0]) == 174)
      {
        v52 = 0;
      }

      else
      {
        v52 = LOBYTE(v62[0]);
      }

      v53 = v54;
      sub_1D1CE6DD4(v19, v54, type metadata accessor for StaticCharacteristic);
      (*(v38 + 56))(v53, 0, 1, v16);
      sub_1D1B0F194(v53, v52);
      sub_1D1CE6D74(v19, type metadata accessor for StaticCharacteristic);
      return v63;
    }
  }

  else
  {
LABEL_14:
  }

  return a4;
}

uint64_t sub_1D1CE9684(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D1CE96D0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v5 = [a1 manufacturer];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1D1E6781C();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = type metadata accessor for StaticDeviceMetadata();
  v11 = (a2 + v10[5]);
  *v11 = v7;
  v11[1] = v9;
  v12 = [a1 model];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1D1E6781C();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = (a2 + v10[6]);
  *v17 = v14;
  v17[1] = v16;
  v18 = [a1 serialNumber];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1D1E6781C();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = (a2 + v10[7]);
  *v23 = v20;
  v23[1] = v22;
  v24 = [a1 firmwareVersion];
  if (v24)
  {
    v25 = v24;
    v26 = sub_1D1E6781C();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v29 = (a2 + v10[8]);
  *v29 = v26;
  v29[1] = v28;
  *(a2 + v10[9]) = [a1 supportsCHIP];
  *(a2 + v10[10]) = [a1 certificationStatus] == 2;
  *(a2 + v10[11]) = [a1 mfiCertifiedACWG];
  v30 = [a1 supportsUWBUnlock];

  *(a2 + v10[12]) = v30;
}

uint64_t StaticDeviceMetadata.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticDeviceMetadata.manufacturer.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticDeviceMetadata() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for StaticDeviceMetadata()
{
  result = qword_1EE07DF38;
  if (!qword_1EE07DF38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StaticDeviceMetadata.model.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticDeviceMetadata() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticDeviceMetadata.serialNumber.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticDeviceMetadata() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticDeviceMetadata.firmwareVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticDeviceMetadata() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1D1CE9B0C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x6C65646F6DLL;
    if (a1 != 2)
    {
      v6 = 0x754E6C6169726573;
    }

    if (a1)
    {
      v5 = 0x74636166756E616DLL;
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
    v1 = 0x6669747265437369;
    if (a1 == 7)
    {
      v2 = 0xD000000000000012;
    }

    else
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x657261776D726966;
    if (a1 != 4)
    {
      v3 = 0x72657474614D7369;
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

uint64_t sub_1D1CE9C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1CEB164(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1CE9C74(uint64_t a1)
{
  v2 = sub_1D1CEAD9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CE9CB0(uint64_t a1)
{
  v2 = sub_1D1CEAD9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticDeviceMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D4E0, &qword_1D1EA5930);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CEAD9C();
  sub_1D1E6930C();
  v29[15] = 0;
  sub_1D1E66A7C();
  sub_1D1CEAEF8(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for StaticDeviceMetadata();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v29[14] = 1;
    sub_1D1E68E0C();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    v29[13] = 2;
    sub_1D1E68E0C();
    v18 = (v3 + v11[7]);
    v19 = *v18;
    v20 = v18[1];
    v29[12] = 3;
    sub_1D1E68E0C();
    v21 = (v3 + v11[8]);
    v22 = *v21;
    v23 = v21[1];
    v29[11] = 4;
    sub_1D1E68E0C();
    v24 = *(v3 + v11[9]);
    v29[10] = 5;
    sub_1D1E68EDC();
    v25 = *(v3 + v11[10]);
    v29[9] = 6;
    sub_1D1E68EDC();
    v26 = *(v3 + v11[11]);
    v29[8] = 7;
    sub_1D1E68EDC();
    v27 = *(v3 + v11[12]);
    v29[7] = 8;
    sub_1D1E68EDC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticDeviceMetadata.hash(into:)()
{
  sub_1D1E66A7C();
  sub_1D1CEAEF8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for StaticDeviceMetadata();
  v2 = (v0 + v1[5]);
  if (v2[1])
  {
    v3 = *v2;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v4 = (v0 + v1[6]);
  if (v4[1])
  {
    v5 = *v4;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v6 = (v0 + v1[7]);
  if (v6[1])
  {
    v7 = *v6;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v8 = (v0 + v1[8]);
  if (v8[1])
  {
    v9 = *v8;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v10 = *(v0 + v1[9]);
  sub_1D1E6922C();
  v11 = *(v0 + v1[10]);
  sub_1D1E6922C();
  v12 = *(v0 + v1[11]);
  sub_1D1E6922C();
  v13 = *(v0 + v1[12]);
  return sub_1D1E6922C();
}

uint64_t StaticDeviceMetadata.hashValue.getter()
{
  sub_1D1E6920C();
  StaticDeviceMetadata.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t StaticDeviceMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_1D1E66A7C();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D4F0, &unk_1D1EA5938);
  v34 = *(v37 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v9 = &v31 - v8;
  v10 = type metadata accessor for StaticDeviceMetadata();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CEAD9C();
  v36 = v9;
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v34;
  v46 = 0;
  sub_1D1CEAEF8(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  v16 = v35;
  sub_1D1E68D7C();
  (*(v33 + 32))(v13, v16, v4);
  v45 = 1;
  v17 = sub_1D1E68C6C();
  v31 = v4;
  v18 = &v13[v10[5]];
  *v18 = v17;
  v18[1] = v19;
  v44 = 2;
  v35 = 0;
  v20 = sub_1D1E68C6C();
  v21 = &v13[v10[6]];
  *v21 = v20;
  v21[1] = v22;
  v43 = 3;
  v23 = sub_1D1E68C6C();
  v24 = &v13[v10[7]];
  *v24 = v23;
  v24[1] = v25;
  v42 = 4;
  v26 = sub_1D1E68C6C();
  v27 = &v13[v10[8]];
  *v27 = v26;
  v27[1] = v28;
  v41 = 5;
  v13[v10[9]] = sub_1D1E68D3C() & 1;
  v40 = 6;
  v13[v10[10]] = sub_1D1E68D3C() & 1;
  v39 = 7;
  v13[v10[11]] = sub_1D1E68D3C() & 1;
  v38 = 8;
  v29 = sub_1D1E68D3C();
  (*(v15 + 8))(v36, v37);
  v13[v10[12]] = v29 & 1;
  sub_1D1CEADF0(v13, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1CEAE54(v13);
}

uint64_t sub_1D1CEA760()
{
  sub_1D1E6920C();
  StaticDeviceMetadata.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D1CEA7A4()
{
  sub_1D1E6920C();
  StaticDeviceMetadata.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t StaticDeviceMetadata.copyReplacing(id:manufacturer:model:serialNumber:firmwareVersion:isMatter:isCertified:isMFICertifiedACWG:supportsUWBUnlock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, char a13, char a14)
{
  v62 = a6;
  v63 = a8;
  v60 = a2;
  v61 = a4;
  v64 = a3;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v53 - v21;
  v23 = sub_1D1E66A7C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17783E0(a1, v22);
  v28 = *(v24 + 48);
  v29 = v28(v22, 1, v23);
  v56 = v23;
  v57 = v27;
  if (v29 == 1)
  {
    (*(v24 + 16))(v27, v14, v23);
    if (v28(v22, 1, v23) != 1)
    {
      sub_1D1835548(v22);
    }
  }

  else
  {
    (*(v24 + 32))(v27, v22, v23);
  }

  v30 = v64;
  if (!v64)
  {
    v31 = (v14 + *(type metadata accessor for StaticDeviceMetadata() + 20));
    v30 = v31[1];
    v60 = *v31;
  }

  v32 = a5;
  v58 = a5;
  if (!a5)
  {
    v33 = (v14 + *(type metadata accessor for StaticDeviceMetadata() + 24));
    v34 = v33[1];
    v61 = *v33;
  }

  v55 = v32;
  v35 = a7;
  v59 = a7;
  if (!a7)
  {
    v36 = (v14 + *(type metadata accessor for StaticDeviceMetadata() + 28));
    v37 = v36[1];
    v62 = *v36;
  }

  v54 = v35;
  v38 = a11;
  v39 = a10;
  if (!a10)
  {
    v40 = (v14 + *(type metadata accessor for StaticDeviceMetadata() + 32));
    v39 = v40[1];
    v63 = *v40;
  }

  v41 = a12;
  if (a11 == 2)
  {
    v38 = *(v14 + *(type metadata accessor for StaticDeviceMetadata() + 36));
  }

  v42 = a13;
  if (a12 == 2)
  {
    v41 = *(v14 + *(type metadata accessor for StaticDeviceMetadata() + 40));
  }

  v43 = a14;
  if (a13 == 2)
  {
    v42 = *(v14 + *(type metadata accessor for StaticDeviceMetadata() + 44));
  }

  if (a14 == 2)
  {
    v43 = *(v14 + *(type metadata accessor for StaticDeviceMetadata() + 48));
  }

  (*(v24 + 32))(a9, v57, v56);
  v44 = type metadata accessor for StaticDeviceMetadata();
  v45 = (a9 + v44[5]);
  v46 = v61;
  *v45 = v60;
  v45[1] = v30;
  v47 = (a9 + v44[6]);
  v48 = v55;
  *v47 = v46;
  v47[1] = v48;
  v49 = (a9 + v44[7]);
  v50 = v54;
  *v49 = v62;
  v49[1] = v50;
  v51 = (a9 + v44[8]);
  *v51 = v63;
  v51[1] = v39;
  *(a9 + v44[9]) = v38 & 1;
  *(a9 + v44[10]) = v41 & 1;
  *(a9 + v44[11]) = v42 & 1;
  *(a9 + v44[12]) = v43 & 1;
}

uint64_t _s13HomeDataModel20StaticDeviceMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_39;
  }

  v4 = type metadata accessor for StaticDeviceMetadata();
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_39;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_1D1E6904C();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        goto LABEL_39;
      }
    }
  }

  else if (v9)
  {
    goto LABEL_39;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      goto LABEL_39;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_1D1E6904C();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        goto LABEL_39;
      }
    }
  }

  else if (v17)
  {
    goto LABEL_39;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_39;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = sub_1D1E6904C();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        goto LABEL_39;
      }
    }
  }

  else if (v25)
  {
    goto LABEL_39;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      goto LABEL_39;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v34 = v4;
      v35 = sub_1D1E6904C();
      v4 = v34;
      if ((v35 & 1) == 0)
      {
        goto LABEL_39;
      }
    }
  }

  else if (v33)
  {
    goto LABEL_39;
  }

  if (*(a1 + v4[9]) == *(a2 + v4[9]) && *(a1 + v4[10]) == *(a2 + v4[10]) && *(a1 + v4[11]) == *(a2 + v4[11]))
  {
    v36 = *(a1 + v4[12]) ^ *(a2 + v4[12]) ^ 1;
    return v36 & 1;
  }

LABEL_39:
  v36 = 0;
  return v36 & 1;
}

unint64_t sub_1D1CEAD9C()
{
  result = qword_1EC64D4E8;
  if (!qword_1EC64D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D4E8);
  }

  return result;
}

uint64_t sub_1D1CEADF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticDeviceMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1CEAE54(uint64_t a1)
{
  v2 = type metadata accessor for StaticDeviceMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1CEAEF8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D1CEAFB0()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D17786E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D1CEB060()
{
  result = qword_1EC64D500;
  if (!qword_1EC64D500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D500);
  }

  return result;
}

unint64_t sub_1D1CEB0B8()
{
  result = qword_1EC64D508;
  if (!qword_1EC64D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D508);
  }

  return result;
}

unint64_t sub_1D1CEB110()
{
  result = qword_1EC64D510;
  if (!qword_1EC64D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D510);
  }

  return result;
}

uint64_t sub_1D1CEB164(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74636166756E616DLL && a2 == 0xEC00000072657275 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x72657474614D7369 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6669747265437369 && a2 == 0xEB00000000646569 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC8350 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC8370 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t StaticHome.home.getter()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D1CEB4E8;

  return sub_1D1CF1B0C();
}

uint64_t sub_1D1CEB4E8(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1CEB5E8, 0, 0);
}

uint64_t sub_1D1CEB5E8()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[2];
    v3 = v1;
    v4 = [v3 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    v5 = sub_1D1E67C1C();

    v6 = swift_task_alloc();
    *(v6 + 16) = v2;
    v7 = sub_1D174A6C4(sub_1D1BFA878, v6, v5);
  }

  else
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v8 = sub_1D1E6709C();
    __swift_project_value_buffer(v8, qword_1EE07B5D8);
    v9 = sub_1D1E6707C();
    v10 = sub_1D1E6833C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D16EC000, v9, v10, "StaticHome → HMHome: Failed to find a valid HMHomeManager instance for this process, returning nil", v11, 2u);
      MEMORY[0x1D3893640](v11, -1, -1);
    }

    v7 = 0;
  }

  v12 = v0[1];

  return v12(v7);
}

uint64_t StaticHome.name.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticHome() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticHome.actionSetsSortOrder.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticHome() + 56));
}

uint64_t StaticHome.cameraProfilesSortOrder.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticHome() + 64));
}

uint64_t StaticHome.residentsSortOrder.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticHome() + 80));
}

void *sub_1D1CEB928(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticHome();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v10 = sub_1D1E67C1C();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_13:

    v13 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v20 = v13;

    sub_1D1CF8424(&v20, a2);

    return v20;
  }

  v11 = sub_1D1E6873C();
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_3:
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D178D050(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v19 = a2;
    v12 = 0;
    v13 = v20;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1D3891EF0](v12, v10);
      }

      else
      {
        v14 = *(v10 + 8 * v12 + 32);
      }

      sub_1D1CEBBBC(v14, a1, v8);
      v20 = v13;
      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        sub_1D178D050(v15 > 1, v16 + 1, 1);
        v13 = v20;
      }

      ++v12;
      v13[2] = v16 + 1;
      sub_1D1CF8DC4(v8, v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, type metadata accessor for StaticHome);
    }

    while (v11 != v12);

    a2 = v19;
    goto LABEL_14;
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_1D1CEBBBC(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v106 = a2;
  v99 = sub_1D1E66A7C();
  v107 = *(v99 - 8);
  v5 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v88 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v7 = *(*(v100 - 8) + 64);
  MEMORY[0x1EEE9AC00](v100);
  v105 = &v87 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v101 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v103 = &v87 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v104 = &v87 - v15;
  v16 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v17 = [a1 name];
  v18 = sub_1D1E6781C();
  v20 = v19;

  v21 = type metadata accessor for StaticHome();
  v22 = (a3 + v21[5]);
  *v22 = v18;
  v22[1] = v20;
  v23 = a3 + v21[6];
  v24 = a3;
  v97 = a3;
  HMHome.dateAdded.getter(v23);
  v25 = a1;
  v26 = [v25 roomForEntireHome];
  v27 = MEMORY[0x1E69E7CC0];
  v28 = sub_1D18D5304(MEMORY[0x1E69E7CC0]);
  v29 = sub_1D18D50D4(v27);
  v30 = sub_1D18D5520(v27);
  v31 = sub_1D18D573C(v27);
  v32 = sub_1D18D5958(v27);
  v90 = sub_1D18D5B74(v27);
  v98 = sub_1D18D5D90(v27);
  v33 = v24 + v21[7];
  v102 = sub_1D1D1B8DC(v25, v26);
  v34 = v26;
  v96 = sub_1D1CBA2C4(v28, v34);

  v35 = v34;
  v95 = sub_1D1CBA9B4(v29, v35);

  v36 = v35;
  v94 = sub_1D1CBB268(v30, v36);

  v37 = v36;
  v93 = sub_1D1CBB77C(v31, v37);

  v38 = v37;
  v92 = sub_1D1CBBC90(v32, v38);

  v39 = v38;
  v91 = sub_1D1CBC380(v90, v39);

  v40 = v39;
  v90 = sub_1D1CBCA70(v98, v40);

  v41 = [v40 uniqueIdentifier];
  sub_1D1E66A5C();

  v42 = [v40 name];
  v89 = sub_1D1E6781C();
  v44 = v43;

  v45 = type metadata accessor for StaticRoom(0);
  sub_1D18B1B7C(v33 + v45[6]);
  sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
  v46 = [v25 roomForEntireHome];
  LOBYTE(v26) = sub_1D1E684FC();

  v47 = [v25 uniqueIdentifier];
  v48 = v33 + v45[9];
  sub_1D1E66A5C();

  v98 = "showPredictedScenesOnDashboard";
  v49 = sub_1D18AF4CC(0xD000000000000028, 0x80000001D1EBB9B0);
  v50 = sub_1D18AF4CC(0xD000000000000026, 0x80000001D1EBBBB0);
  v51 = sub_1D18B13F4();

  v52 = (v33 + v45[5]);
  *v52 = v89;
  v52[1] = v44;
  *(v33 + v45[7]) = v26 & 1;
  *(v33 + v45[8]) = v102;
  v53 = v97;
  *(v33 + v45[10]) = v96;
  v54 = v94;
  *(v33 + v45[11]) = v95;
  *(v33 + v45[12]) = v54;
  v55 = v92;
  *(v33 + v45[13]) = v93;
  *(v33 + v45[14]) = v55;
  v56 = v90;
  *(v33 + v45[15]) = v91;
  *(v33 + v45[16]) = v56;
  *(v33 + v45[17]) = v49;
  *(v33 + v45[18]) = v50;
  *(v33 + v45[19]) = v51;
  v57 = v104;
  v58 = [v25 currentUser];
  v59 = v21[8];
  v60 = v25;
  v61 = v99;
  v62 = v60;
  sub_1D1D3335C(v58, v60, v53 + v59);
  v102 = v62;
  v63 = [v62 uniqueIdentifier];
  sub_1D1E66A5C();

  v64 = *(v107 + 56);
  v65 = 1;
  v64(v57, 0, 1, v61);
  v66 = [v106 currentHome];
  if (v66)
  {
    v67 = v66;
    v68 = [v66 uniqueIdentifier];

    v69 = v103;
    sub_1D1E66A5C();

    v65 = 0;
  }

  else
  {
    v69 = v103;
  }

  v64(v69, v65, 1, v61);
  v70 = *(v100 + 48);
  v71 = v105;
  sub_1D1741C08(v57, v105, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741C08(v69, v71 + v70, &qword_1EC642590, qword_1D1E71260);
  v72 = *(v107 + 48);
  v73 = v72(v71, 1, v61);
  v74 = v101;
  if (v73 == 1)
  {
    sub_1D1741A30(v69, &qword_1EC642590, qword_1D1E71260);
    v75 = v105;
    sub_1D1741A30(v57, &qword_1EC642590, qword_1D1E71260);
    if (v72(v75 + v70, 1, v61) == 1)
    {
      sub_1D1741A30(v75, &qword_1EC642590, qword_1D1E71260);
      v76 = 1;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_1D1741C08(v71, v101, &qword_1EC642590, qword_1D1E71260);
  if (v72(v71 + v70, 1, v61) == 1)
  {
    sub_1D1741A30(v103, &qword_1EC642590, qword_1D1E71260);
    v75 = v105;
    sub_1D1741A30(v104, &qword_1EC642590, qword_1D1E71260);
    (*(v107 + 8))(v74, v61);
LABEL_9:
    sub_1D1741A30(v75, &qword_1EC642980, &unk_1D1E6E6E0);
    v76 = 0;
    goto LABEL_11;
  }

  v77 = v107;
  v78 = v88;
  (*(v107 + 32))(v88, v71 + v70, v61);
  sub_1D1CF8D7C(&qword_1EE07D170, MEMORY[0x1E69695A8]);
  v76 = sub_1D1E6775C();
  v79 = *(v77 + 8);
  v79(v78, v61);
  sub_1D1741A30(v103, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v104, &qword_1EC642590, qword_1D1E71260);
  v79(v74, v61);
  sub_1D1741A30(v71, &qword_1EC642590, qword_1D1E71260);
LABEL_11:
  *(v53 + v21[9]) = v76 & 1;
  v80 = v102;
  sub_1D1CEF2D4(v80, v108);
  v81 = v108[0];
  *(v53 + v21[10]) = v108[0];
  v82 = 0x10200u >> (8 * v81);
  if (v76)
  {
    LOBYTE(v82) = 0;
  }

  *(v53 + v21[11]) = v82;
  *(v53 + v21[12]) = sub_1D18AF4CC(0xD000000000000023, 0x80000001D1EBBA70);
  *(v53 + v21[13]) = HMHome.sectionsSortOrder.getter();
  *(v53 + v21[14]) = sub_1D18AF4CC(0xD000000000000028, v98 | 0x8000000000000000);
  *(v53 + v21[15]) = sub_1D18AF4CC(0xD000000000000026, 0x80000001D1EBBA10);
  *(v53 + v21[16]) = sub_1D18AF4CC(0xD000000000000025, 0x80000001D1EBB9E0);
  *(v53 + v21[17]) = sub_1D18AF4CC(0xD000000000000030, 0x80000001D1EBBAD0);
  v83 = sub_1D18AD70C();
  if (!v83)
  {
    v83 = sub_1D18ADE40();
    if (!v83)
    {
      v83 = MEMORY[0x1E69E7CC0];
    }
  }

  *(v53 + v21[18]) = v83;
  *(v53 + v21[19]) = [v80 isAutomaticSoftwareUpdateEnabled];
  *(v53 + v21[20]) = sub_1D1D03040(v80);
  *(v53 + v21[21]) = [v80 supportsResidentSelection];
  v84 = v21[22];
  v85 = [v80 userSelectedPreferredResident];
  if (v85)
  {
    StaticResident.init(with:home:)(v85, v80, v53 + v84);
  }

  else
  {

    v86 = type metadata accessor for StaticResident();
    (*(*(v86 - 8) + 56))(v53 + v84, 1, 1, v86);
  }
}

uint64_t StaticHome.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticHome.remoteAccessState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticHome();
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t StaticHome.nonResponsiveType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticHome();
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t StaticHome.sidebarRoomsSortOrder.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticHome() + 48));
}

uint64_t StaticHome.sectionsSortOrder.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticHome() + 52));
}

uint64_t StaticHome.servicesSortOrder.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticHome() + 60));
}

uint64_t StaticHome.umbrellaCategoriesSortOrder.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticHome() + 68));
}

uint64_t StaticHome.colorPickerFavorites.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticHome() + 72));
}

uint64_t StaticHome.init(id:name:dateAdded:defaultRoom:currentStaticUser:isUserAtHome:remoteAccessState:nonResponsiveType:sidebarRoomsSortOrder:sectionsSortOrder:actionSetsSortOrder:servicesSortOrder:cameraProfilesSortOrder:umbrellaCategoriesSortOrder:colorPickerFavorites:supportAutomaticSoftwareUpdate:residentsSortOrder:supportsResidentSelection:userSelectedResident:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21)
{
  v27 = *a8;
  v28 = *a10;
  v29 = sub_1D1E66A7C();
  (*(*(v29 - 8) + 32))(a9, a1, v29);
  v30 = type metadata accessor for StaticHome();
  v31 = (a9 + v30[5]);
  *v31 = a2;
  v31[1] = a3;
  sub_1D1741A90(a4, a9 + v30[6], &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1CF8DC4(a5, a9 + v30[7], type metadata accessor for StaticRoom);
  sub_1D1CF8DC4(a6, a9 + v30[8], type metadata accessor for StaticUser);
  *(a9 + v30[9]) = a7;
  *(a9 + v30[10]) = v27;
  *(a9 + v30[11]) = v28;
  *(a9 + v30[12]) = a11;
  *(a9 + v30[13]) = a12;
  *(a9 + v30[14]) = a13;
  *(a9 + v30[15]) = a14;
  *(a9 + v30[16]) = a15;
  *(a9 + v30[17]) = a16;
  *(a9 + v30[20]) = a19;
  *(a9 + v30[18]) = a17;
  *(a9 + v30[19]) = a18;
  *(a9 + v30[21]) = a20;
  return sub_1D1741A90(a21, a9 + v30[22], &qword_1EC64D530, &qword_1D1EA5BD8);
}

unint64_t sub_1D1CECC30(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x6564644165746164;
      break;
    case 3:
      result = 0x52746C7561666564;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x7441726573557369;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0xD00000000000001BLL;
      break;
    case 14:
    case 18:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0xD00000000000001ELL;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D1CECE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1CF850C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1CECE78(uint64_t a1)
{
  v2 = sub_1D1CF4D90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CECEB4(uint64_t a1)
{
  v2 = sub_1D1CF4D90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}
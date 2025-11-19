BOOL _s14CarPlayAssetUI14VisibilityRuleO011ChargeStateF0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = InstrumentDataIdentifier.rawValue.getter();
  v6 = v5;
  if (v4 == InstrumentDataIdentifier.rawValue.getter() && v6 == v7)
  {

    return v2 == v3;
  }

  v9 = sub_242F06110();

  result = 0;
  if (v9)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t _s14CarPlayAssetUI14DriverSideRuleV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v3 = InstrumentDataIdentifier.rawValue.getter();
    v5 = v4;
    if (v3 == InstrumentDataIdentifier.rawValue.getter() && v5 == v6)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_242F06110();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t _s14CarPlayAssetUI14VisibilityRuleO08ActivityF0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = InstrumentDataIdentifier.rawValue.getter();
  v8 = v7;
  if (v6 == InstrumentDataIdentifier.rawValue.getter() && v8 == v9)
  {

    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v11 = sub_242F06110();

  result = 0;
  if ((v11 & 1) != 0 && v2 == v4)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

uint64_t sub_242CB7D1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a2 + 1);
  v4 = InstrumentDataIdentifier.rawValue.getter();
  v6 = v5;
  if (v4 == InstrumentDataIdentifier.rawValue.getter() && v6 == v7)
  {

    return v2 ^ v3 ^ 1u;
  }

  v9 = sub_242F06110();

  result = 0;
  if (v9)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

BOOL _s14CarPlayAssetUI14VisibilityRuleO9AnimationV2eeoiySbAE_AEtFZ_0(float *a1, float *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  return (sub_242F04B20() & 1) != 0 && (sub_242F04B20() & 1) != 0;
}

unint64_t sub_242CB7E60()
{
  result = qword_27ECF10E0;
  if (!qword_27ECF10E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF10E0);
  }

  return result;
}

unint64_t sub_242CB7EB4()
{
  result = qword_27ECF10E8;
  if (!qword_27ECF10E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF10E8);
  }

  return result;
}

unint64_t sub_242CB7F08()
{
  result = qword_27ECF10F0;
  if (!qword_27ECF10F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF10F0);
  }

  return result;
}

unint64_t sub_242CB7F5C()
{
  result = qword_27ECF10F8;
  if (!qword_27ECF10F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF10F8);
  }

  return result;
}

unint64_t sub_242CB7FB0()
{
  result = qword_27ECF1100;
  if (!qword_27ECF1100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1100);
  }

  return result;
}

unint64_t sub_242CB8004()
{
  result = qword_27ECF1108;
  if (!qword_27ECF1108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1108);
  }

  return result;
}

unint64_t sub_242CB8058()
{
  result = qword_27ECF1110;
  if (!qword_27ECF1110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1110);
  }

  return result;
}

unint64_t sub_242CB80AC()
{
  result = qword_27ECF1118;
  if (!qword_27ECF1118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1118);
  }

  return result;
}

unint64_t sub_242CB8100()
{
  result = qword_27ECF1120;
  if (!qword_27ECF1120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1120);
  }

  return result;
}

unint64_t sub_242CB8154()
{
  result = qword_27ECF1128;
  if (!qword_27ECF1128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1128);
  }

  return result;
}

unint64_t sub_242CB81A8()
{
  result = qword_27ECF1130;
  if (!qword_27ECF1130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1130);
  }

  return result;
}

unint64_t sub_242CB81FC()
{
  result = qword_27ECF1138;
  if (!qword_27ECF1138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1138);
  }

  return result;
}

unint64_t sub_242CB8250()
{
  result = qword_27ECF1140;
  if (!qword_27ECF1140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1140);
  }

  return result;
}

unint64_t sub_242CB82A4()
{
  result = qword_27ECF1148;
  if (!qword_27ECF1148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1148);
  }

  return result;
}

unint64_t sub_242CB82F8()
{
  result = qword_27ECF1150;
  if (!qword_27ECF1150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1150);
  }

  return result;
}

unint64_t sub_242CB834C()
{
  result = qword_27ECF1158;
  if (!qword_27ECF1158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1158);
  }

  return result;
}

unint64_t sub_242CB83A0()
{
  result = qword_27ECF1160;
  if (!qword_27ECF1160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1160);
  }

  return result;
}

unint64_t sub_242CB83F4()
{
  result = qword_27ECF1168;
  if (!qword_27ECF1168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1168);
  }

  return result;
}

unint64_t sub_242CB8448()
{
  result = qword_27ECF1170;
  if (!qword_27ECF1170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1170);
  }

  return result;
}

unint64_t sub_242CB849C()
{
  result = qword_27ECF1178;
  if (!qword_27ECF1178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1178);
  }

  return result;
}

unint64_t sub_242CB84F0()
{
  result = qword_27ECF1180;
  if (!qword_27ECF1180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1180);
  }

  return result;
}

unint64_t sub_242CB8544()
{
  result = qword_27ECF1188;
  if (!qword_27ECF1188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1188);
  }

  return result;
}

unint64_t sub_242CB8598()
{
  result = qword_27ECF1190;
  if (!qword_27ECF1190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1190);
  }

  return result;
}

unint64_t sub_242CB85EC()
{
  result = qword_27ECF1198;
  if (!qword_27ECF1198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1198);
  }

  return result;
}

unint64_t sub_242CB8640()
{
  result = qword_27ECF11A0;
  if (!qword_27ECF11A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF11A0);
  }

  return result;
}

unint64_t sub_242CB8694()
{
  result = qword_27ECF11A8;
  if (!qword_27ECF11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF11A8);
  }

  return result;
}

unint64_t sub_242CB86E8()
{
  result = qword_27ECF11B0;
  if (!qword_27ECF11B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF11B0);
  }

  return result;
}

unint64_t sub_242CB873C()
{
  result = qword_27ECF11B8;
  if (!qword_27ECF11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF11B8);
  }

  return result;
}

unint64_t sub_242CB8790()
{
  result = qword_27ECF11C0;
  if (!qword_27ECF11C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF11C0);
  }

  return result;
}

unint64_t sub_242CB87E4()
{
  result = qword_27ECF11C8;
  if (!qword_27ECF11C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF11C8);
  }

  return result;
}

unint64_t sub_242CB8838()
{
  result = qword_27ECF11D0;
  if (!qword_27ECF11D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF11D0);
  }

  return result;
}

unint64_t sub_242CB888C()
{
  result = qword_27ECF11D8;
  if (!qword_27ECF11D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF11D8);
  }

  return result;
}

unint64_t sub_242CB88E0()
{
  result = qword_27ECF1260;
  if (!qword_27ECF1260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1260);
  }

  return result;
}

unint64_t sub_242CB8934()
{
  result = qword_27ECF1268;
  if (!qword_27ECF1268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1268);
  }

  return result;
}

unint64_t sub_242CB89A4()
{
  result = qword_27ECF1270;
  if (!qword_27ECF1270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1270);
  }

  return result;
}

unint64_t sub_242CB8A14()
{
  result = qword_27ECF1278;
  if (!qword_27ECF1278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1278);
  }

  return result;
}

unint64_t sub_242CB8A88()
{
  result = qword_27ECF1280;
  if (!qword_27ECF1280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1280);
  }

  return result;
}

unint64_t sub_242CB8AF8()
{
  result = qword_27ECF1288;
  if (!qword_27ECF1288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1288);
  }

  return result;
}

unint64_t sub_242CB8B6C()
{
  result = qword_27ECF1290;
  if (!qword_27ECF1290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1290);
  }

  return result;
}

unint64_t sub_242CB8BE4()
{
  result = qword_27ECF1298;
  if (!qword_27ECF1298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1298);
  }

  return result;
}

unint64_t sub_242CB8C54()
{
  result = qword_27ECF12A0;
  if (!qword_27ECF12A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF12A0);
  }

  return result;
}

unint64_t sub_242CB8CC4()
{
  result = qword_27ECF12A8;
  if (!qword_27ECF12A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF12A8);
  }

  return result;
}

unint64_t sub_242CB8D18()
{
  result = qword_27ECF12B0;
  if (!qword_27ECF12B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF12B0);
  }

  return result;
}

unint64_t sub_242CB8D6C()
{
  result = qword_27ECF12B8;
  if (!qword_27ECF12B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF12B8);
  }

  return result;
}

unint64_t sub_242CB8DC0()
{
  result = qword_27ECF12C0;
  if (!qword_27ECF12C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF12C0);
  }

  return result;
}

unint64_t sub_242CB8E34()
{
  result = qword_27ECF12C8;
  if (!qword_27ECF12C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF12C8);
  }

  return result;
}

unint64_t sub_242CB8EA4()
{
  result = qword_27ECF12D0;
  if (!qword_27ECF12D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF12D0);
  }

  return result;
}

unint64_t sub_242CB8F14()
{
  result = qword_27ECF12D8;
  if (!qword_27ECF12D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF12D8);
  }

  return result;
}

unint64_t sub_242CB8F68()
{
  result = qword_27ECF12E8;
  if (!qword_27ECF12E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF12E8);
  }

  return result;
}

unint64_t sub_242CB8FBC()
{
  result = qword_27ECF12F0;
  if (!qword_27ECF12F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF12F0);
  }

  return result;
}

unint64_t sub_242CB9010()
{
  result = qword_27ECF1300;
  if (!qword_27ECF1300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1300);
  }

  return result;
}

unint64_t sub_242CB9064()
{
  result = qword_27ECF1310;
  if (!qword_27ECF1310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1310);
  }

  return result;
}

unint64_t sub_242CB90B8()
{
  result = qword_27ECF1318;
  if (!qword_27ECF1318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1318);
  }

  return result;
}

unint64_t sub_242CB910C()
{
  result = qword_27ECF1328;
  if (!qword_27ECF1328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1328);
  }

  return result;
}

unint64_t sub_242CB9160()
{
  result = qword_27ECF1338;
  if (!qword_27ECF1338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1338);
  }

  return result;
}

unint64_t sub_242CB91B4()
{
  result = qword_27ECF1340;
  if (!qword_27ECF1340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1340);
  }

  return result;
}

unint64_t sub_242CB9208()
{
  result = qword_27ECF1350;
  if (!qword_27ECF1350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1350);
  }

  return result;
}

unint64_t sub_242CB925C()
{
  result = qword_27ECF1360;
  if (!qword_27ECF1360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1360);
  }

  return result;
}

unint64_t sub_242CB92B0()
{
  result = qword_27ECF1368;
  if (!qword_27ECF1368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1368);
  }

  return result;
}

unint64_t sub_242CB9304()
{
  result = qword_27ECF1378;
  if (!qword_27ECF1378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1378);
  }

  return result;
}

unint64_t sub_242CB9358()
{
  result = qword_27ECF1388;
  if (!qword_27ECF1388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1388);
  }

  return result;
}

unint64_t sub_242CB93AC()
{
  result = qword_27ECF1390;
  if (!qword_27ECF1390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1390);
  }

  return result;
}

unint64_t sub_242CB9400()
{
  result = qword_27ECF13A0;
  if (!qword_27ECF13A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF13A0);
  }

  return result;
}

unint64_t sub_242CB9454()
{
  result = qword_27ECF13B0;
  if (!qword_27ECF13B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF13B0);
  }

  return result;
}

unint64_t sub_242CB94A8()
{
  result = qword_27ECF13B8;
  if (!qword_27ECF13B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF13B8);
  }

  return result;
}

unint64_t sub_242CB94FC()
{
  result = qword_27ECF13C8;
  if (!qword_27ECF13C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF13C8);
  }

  return result;
}

unint64_t sub_242CB9550()
{
  result = qword_27ECF13D8;
  if (!qword_27ECF13D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF13D8);
  }

  return result;
}

unint64_t sub_242CB95A4()
{
  result = qword_27ECF13F0;
  if (!qword_27ECF13F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF13F0);
  }

  return result;
}

unint64_t sub_242CB95F8()
{
  result = qword_27ECF1408;
  if (!qword_27ECF1408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF1400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1408);
  }

  return result;
}

unint64_t sub_242CB965C()
{
  result = qword_27ECF1418;
  if (!qword_27ECF1418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1418);
  }

  return result;
}

unint64_t sub_242CB96B0()
{
  result = qword_27ECF1420;
  if (!qword_27ECF1420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1420);
  }

  return result;
}

unint64_t sub_242CB9704()
{
  result = qword_27ECF1430;
  if (!qword_27ECF1430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1430);
  }

  return result;
}

unint64_t sub_242CB9758()
{
  result = qword_27ECF1440;
  if (!qword_27ECF1440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1440);
  }

  return result;
}

unint64_t sub_242CB97AC()
{
  result = qword_27ECF1458;
  if (!qword_27ECF1458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1458);
  }

  return result;
}

unint64_t sub_242CB9800()
{
  result = qword_27ECF1470;
  if (!qword_27ECF1470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1470);
  }

  return result;
}

unint64_t sub_242CB9854()
{
  result = qword_27ECF1478;
  if (!qword_27ECF1478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1478);
  }

  return result;
}

unint64_t sub_242CB98A8()
{
  result = qword_27ECF1488;
  if (!qword_27ECF1488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1488);
  }

  return result;
}

unint64_t sub_242CB98FC()
{
  result = qword_27ECF1498;
  if (!qword_27ECF1498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1498);
  }

  return result;
}

unint64_t sub_242CB9950()
{
  result = qword_27ECF14A0;
  if (!qword_27ECF14A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF14A0);
  }

  return result;
}

unint64_t sub_242CB99A4()
{
  result = qword_27ECF14B0;
  if (!qword_27ECF14B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF14B0);
  }

  return result;
}

unint64_t sub_242CB99F8()
{
  result = qword_27ECF14C0;
  if (!qword_27ECF14C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF14C0);
  }

  return result;
}

unint64_t sub_242CB9A4C()
{
  result = qword_27ECF14D8;
  if (!qword_27ECF14D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF14D8);
  }

  return result;
}

unint64_t sub_242CB9AA0()
{
  result = qword_27ECF14F0;
  if (!qword_27ECF14F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF14F0);
  }

  return result;
}

unint64_t sub_242CB9AF8()
{
  result = qword_27ECF1500;
  if (!qword_27ECF1500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1500);
  }

  return result;
}

unint64_t sub_242CB9B50()
{
  result = qword_27ECF1508;
  if (!qword_27ECF1508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1508);
  }

  return result;
}

unint64_t sub_242CB9BA8()
{
  result = qword_27ECF1510;
  if (!qword_27ECF1510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1510);
  }

  return result;
}

unint64_t sub_242CB9C00()
{
  result = qword_27ECF1518;
  if (!qword_27ECF1518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1518);
  }

  return result;
}

unint64_t sub_242CB9C58()
{
  result = qword_27ECF1520;
  if (!qword_27ECF1520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1520);
  }

  return result;
}

unint64_t sub_242CB9CB0()
{
  result = qword_27ECF1528;
  if (!qword_27ECF1528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1528);
  }

  return result;
}

unint64_t sub_242CB9D08()
{
  result = qword_27ECF1530;
  if (!qword_27ECF1530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1530);
  }

  return result;
}

unint64_t sub_242CB9D60()
{
  result = qword_27ECF1538;
  if (!qword_27ECF1538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1538);
  }

  return result;
}

unint64_t sub_242CB9DB8()
{
  result = qword_27ECF1540;
  if (!qword_27ECF1540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1540);
  }

  return result;
}

unint64_t sub_242CB9E10()
{
  result = qword_27ECF1548;
  if (!qword_27ECF1548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1548);
  }

  return result;
}

unint64_t sub_242CB9E68()
{
  result = qword_27ECF1550;
  if (!qword_27ECF1550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1550);
  }

  return result;
}

unint64_t sub_242CB9EC0()
{
  result = qword_27ECF1558;
  if (!qword_27ECF1558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1558);
  }

  return result;
}

unint64_t sub_242CB9F18()
{
  result = qword_27ECF1560;
  if (!qword_27ECF1560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1560);
  }

  return result;
}

unint64_t sub_242CB9F70()
{
  result = qword_27ECF1568;
  if (!qword_27ECF1568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1568);
  }

  return result;
}

unint64_t sub_242CB9FC8()
{
  result = qword_27ECF1570;
  if (!qword_27ECF1570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1570);
  }

  return result;
}

unint64_t sub_242CBA020()
{
  result = qword_27ECF1578;
  if (!qword_27ECF1578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1578);
  }

  return result;
}

unint64_t sub_242CBA078()
{
  result = qword_27ECF1580;
  if (!qword_27ECF1580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1580);
  }

  return result;
}

unint64_t sub_242CBA0D0()
{
  result = qword_27ECF1588;
  if (!qword_27ECF1588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1588);
  }

  return result;
}

unint64_t sub_242CBA128()
{
  result = qword_27ECF1590;
  if (!qword_27ECF1590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1590);
  }

  return result;
}

unint64_t sub_242CBA180()
{
  result = qword_27ECF1598;
  if (!qword_27ECF1598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1598);
  }

  return result;
}

unint64_t sub_242CBA1D8()
{
  result = qword_27ECF15A0;
  if (!qword_27ECF15A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF15A0);
  }

  return result;
}

unint64_t sub_242CBA230()
{
  result = qword_27ECF15A8;
  if (!qword_27ECF15A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF15A8);
  }

  return result;
}

unint64_t sub_242CBA288()
{
  result = qword_27ECF15B0;
  if (!qword_27ECF15B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF15B0);
  }

  return result;
}

unint64_t sub_242CBA2E0()
{
  result = qword_27ECF15B8;
  if (!qword_27ECF15B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF15B8);
  }

  return result;
}

unint64_t sub_242CBA338()
{
  result = qword_27ECF15C0;
  if (!qword_27ECF15C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF15C0);
  }

  return result;
}

unint64_t sub_242CBA390()
{
  result = qword_27ECF15C8;
  if (!qword_27ECF15C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF15C8);
  }

  return result;
}

unint64_t sub_242CBA3E8()
{
  result = qword_27ECF15D0;
  if (!qword_27ECF15D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF15D0);
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

uint64_t getEnumTagSinglePayload for VisibilityRule(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 136))
  {
    return (*a1 + 2);
  }

  v3 = vld1q_dup_f32(a1);
  v4 = vandq_s8(vshlq_u32(v3, xmmword_242F0D220), xmmword_242F0D230);
  *v4.i8 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
  if ((v4.i32[0] | v4.i32[1]) == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for VisibilityRule(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *result = 2155905152;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
      *(result + 40) = 0u;
      *(result + 56) = 0u;
      *(result + 72) = 0u;
      *(result + 88) = 0u;
      *(result + 104) = 0u;
      *(result + 120) = 0u;
    }
  }

  return result;
}

int8x8_t sub_242CBA578(unint64_t *a1, unsigned int a2)
{
  v2 = vdupq_n_s32(a2);
  v3 = vorrq_s8(vandq_s8(vshlq_u64(v2, xmmword_242F0D240), xmmword_242F0D270), vandq_s8(vshlq_u64(v2, xmmword_242F0D250), xmmword_242F0D260));
  result = vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL));
  *a1 = *&result | *a1 & 0xFFFFFFFF7F7F7F7FLL;
  return result;
}

uint64_t sub_242CBA5F8(uint64_t a1, int a2)
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

uint64_t sub_242CBA618(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for VisibilityRule.TickmarksSpeedUnitRule(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 3;
  v6 = v4 - 3;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for VisibilityRule.TickmarksSpeedUnitRule(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_242CBA7C0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[51])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_242CBA804(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DriverSideRule(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for DriverSideRule(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t getEnumTagSinglePayload for VisibilityRule.LayoutModeRule(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[8])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for VisibilityRule.LayoutModeRule(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VisibilityRule.LayoutModeRule.Level(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VisibilityRule.LayoutModeRule.Level(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InstrumentDataIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xAB)
  {
    goto LABEL_17;
  }

  if (a2 + 85 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 85) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 85;
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

      return (*a1 | (v4 << 8)) - 85;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 85;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x56;
  v8 = v6 - 86;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InstrumentDataIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 85 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 85) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xAB)
  {
    v4 = 0;
  }

  if (a2 > 0xAA)
  {
    v5 = ((a2 - 171) >> 8) + 1;
    *result = a2 + 85;
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
    *result = a2 + 85;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VisibilityRule.TemperatureLabelRule(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Wallpaper.Traits(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for VisibilityRule.ActivityRule(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for VisibilityRule.ActivityRule(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VisibilityRule.EmphasizedEngineGaugeRule(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 4))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 2);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for VisibilityRule.EmphasizedEngineGaugeRule(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 2) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VisibilityRule.SideIndicatorRule(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *(a1 + 2);
  v5 = v4 >= 2;
  v6 = v4 - 2;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for VisibilityRule.SideIndicatorRule(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_242CBB070(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_242CBB114(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VisibilityRule.ChargeStateRule(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xAB && a1[16])
  {
    return (*a1 + 171);
  }

  v3 = *a1;
  v4 = v3 >= 0x56;
  v5 = v3 - 86;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for VisibilityRule.ChargeStateRule(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xAA)
  {
    *result = a2 - 171;
    *(result + 8) = 0;
    if (a3 >= 0xAB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xAB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 85;
    }
  }

  return result;
}

unint64_t sub_242CBB47C()
{
  result = qword_27ECF15D8;
  if (!qword_27ECF15D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF15D8);
  }

  return result;
}

unint64_t sub_242CBB4D4()
{
  result = qword_27ECF15E0;
  if (!qword_27ECF15E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF15E0);
  }

  return result;
}

unint64_t sub_242CBB52C()
{
  result = qword_27ECF15E8;
  if (!qword_27ECF15E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF15E8);
  }

  return result;
}

unint64_t sub_242CBB584()
{
  result = qword_27ECF15F0;
  if (!qword_27ECF15F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF15F0);
  }

  return result;
}

unint64_t sub_242CBB5DC()
{
  result = qword_27ECF15F8;
  if (!qword_27ECF15F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF15F8);
  }

  return result;
}

unint64_t sub_242CBB634()
{
  result = qword_27ECF1600;
  if (!qword_27ECF1600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1600);
  }

  return result;
}

unint64_t sub_242CBB68C()
{
  result = qword_27ECF1608;
  if (!qword_27ECF1608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1608);
  }

  return result;
}

unint64_t sub_242CBB6E4()
{
  result = qword_27ECF1610;
  if (!qword_27ECF1610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1610);
  }

  return result;
}

unint64_t sub_242CBB73C()
{
  result = qword_27ECF1618;
  if (!qword_27ECF1618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1618);
  }

  return result;
}

unint64_t sub_242CBB794()
{
  result = qword_27ECF1620;
  if (!qword_27ECF1620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1620);
  }

  return result;
}

unint64_t sub_242CBB7EC()
{
  result = qword_27ECF1628;
  if (!qword_27ECF1628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1628);
  }

  return result;
}

unint64_t sub_242CBB844()
{
  result = qword_27ECF1630;
  if (!qword_27ECF1630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1630);
  }

  return result;
}

unint64_t sub_242CBB89C()
{
  result = qword_27ECF1638;
  if (!qword_27ECF1638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1638);
  }

  return result;
}

unint64_t sub_242CBB8F4()
{
  result = qword_27ECF1640;
  if (!qword_27ECF1640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1640);
  }

  return result;
}

unint64_t sub_242CBB94C()
{
  result = qword_27ECF1648;
  if (!qword_27ECF1648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1648);
  }

  return result;
}

unint64_t sub_242CBB9A4()
{
  result = qword_27ECF1650;
  if (!qword_27ECF1650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1650);
  }

  return result;
}

unint64_t sub_242CBB9FC()
{
  result = qword_27ECF1658;
  if (!qword_27ECF1658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1658);
  }

  return result;
}

unint64_t sub_242CBBA54()
{
  result = qword_27ECF1660;
  if (!qword_27ECF1660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1660);
  }

  return result;
}

unint64_t sub_242CBBAAC()
{
  result = qword_27ECF1668;
  if (!qword_27ECF1668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1668);
  }

  return result;
}

unint64_t sub_242CBBB04()
{
  result = qword_27ECF1670;
  if (!qword_27ECF1670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1670);
  }

  return result;
}

unint64_t sub_242CBBB5C()
{
  result = qword_27ECF1678;
  if (!qword_27ECF1678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1678);
  }

  return result;
}

unint64_t sub_242CBBBB4()
{
  result = qword_27ECF1680;
  if (!qword_27ECF1680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1680);
  }

  return result;
}

unint64_t sub_242CBBC0C()
{
  result = qword_27ECF1688;
  if (!qword_27ECF1688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1688);
  }

  return result;
}

unint64_t sub_242CBBC64()
{
  result = qword_27ECF1690;
  if (!qword_27ECF1690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1690);
  }

  return result;
}

unint64_t sub_242CBBCBC()
{
  result = qword_27ECF1698;
  if (!qword_27ECF1698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1698);
  }

  return result;
}

unint64_t sub_242CBBD14()
{
  result = qword_27ECF16A0;
  if (!qword_27ECF16A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF16A0);
  }

  return result;
}

unint64_t sub_242CBBD6C()
{
  result = qword_27ECF16A8;
  if (!qword_27ECF16A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF16A8);
  }

  return result;
}

unint64_t sub_242CBBDC4()
{
  result = qword_27ECF16B0;
  if (!qword_27ECF16B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF16B0);
  }

  return result;
}

unint64_t sub_242CBBE1C()
{
  result = qword_27ECF16B8;
  if (!qword_27ECF16B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF16B8);
  }

  return result;
}

unint64_t sub_242CBBE74()
{
  result = qword_27ECF16C0;
  if (!qword_27ECF16C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF16C0);
  }

  return result;
}

unint64_t sub_242CBBECC()
{
  result = qword_27ECF16C8;
  if (!qword_27ECF16C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF16C8);
  }

  return result;
}

unint64_t sub_242CBBF24()
{
  result = qword_27ECF16D0;
  if (!qword_27ECF16D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF16D0);
  }

  return result;
}

unint64_t sub_242CBBF7C()
{
  result = qword_27ECF16D8;
  if (!qword_27ECF16D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF16D8);
  }

  return result;
}

unint64_t sub_242CBBFD4()
{
  result = qword_27ECF16E0;
  if (!qword_27ECF16E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF16E0);
  }

  return result;
}

unint64_t sub_242CBC02C()
{
  result = qword_27ECF16E8;
  if (!qword_27ECF16E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF16E8);
  }

  return result;
}

unint64_t sub_242CBC084()
{
  result = qword_27ECF16F0;
  if (!qword_27ECF16F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF16F0);
  }

  return result;
}

unint64_t sub_242CBC0DC()
{
  result = qword_27ECF16F8;
  if (!qword_27ECF16F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF16F8);
  }

  return result;
}

unint64_t sub_242CBC134()
{
  result = qword_27ECF1700;
  if (!qword_27ECF1700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1700);
  }

  return result;
}

unint64_t sub_242CBC18C()
{
  result = qword_27ECF1708;
  if (!qword_27ECF1708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1708);
  }

  return result;
}

unint64_t sub_242CBC1E4()
{
  result = qword_27ECF1710;
  if (!qword_27ECF1710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1710);
  }

  return result;
}

unint64_t sub_242CBC23C()
{
  result = qword_27ECF1718;
  if (!qword_27ECF1718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1718);
  }

  return result;
}

unint64_t sub_242CBC294()
{
  result = qword_27ECF1720;
  if (!qword_27ECF1720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1720);
  }

  return result;
}

unint64_t sub_242CBC2EC()
{
  result = qword_27ECF1728;
  if (!qword_27ECF1728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1728);
  }

  return result;
}

unint64_t sub_242CBC344()
{
  result = qword_27ECF1730;
  if (!qword_27ECF1730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1730);
  }

  return result;
}

unint64_t sub_242CBC39C()
{
  result = qword_27ECF1738;
  if (!qword_27ECF1738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1738);
  }

  return result;
}

unint64_t sub_242CBC3F4()
{
  result = qword_27ECF1740;
  if (!qword_27ECF1740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1740);
  }

  return result;
}

unint64_t sub_242CBC44C()
{
  result = qword_27ECF1748;
  if (!qword_27ECF1748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1748);
  }

  return result;
}

unint64_t sub_242CBC4A4()
{
  result = qword_27ECF1750;
  if (!qword_27ECF1750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1750);
  }

  return result;
}

unint64_t sub_242CBC4FC()
{
  result = qword_27ECF1758;
  if (!qword_27ECF1758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1758);
  }

  return result;
}

unint64_t sub_242CBC554()
{
  result = qword_27ECF1760;
  if (!qword_27ECF1760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1760);
  }

  return result;
}

unint64_t sub_242CBC5AC()
{
  result = qword_27ECF1768;
  if (!qword_27ECF1768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1768);
  }

  return result;
}

unint64_t sub_242CBC604()
{
  result = qword_27ECF1770;
  if (!qword_27ECF1770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1770);
  }

  return result;
}

unint64_t sub_242CBC65C()
{
  result = qword_27ECF1778;
  if (!qword_27ECF1778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1778);
  }

  return result;
}

unint64_t sub_242CBC6B4()
{
  result = qword_27ECF1780;
  if (!qword_27ECF1780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1780);
  }

  return result;
}

unint64_t sub_242CBC70C()
{
  result = qword_27ECF1788;
  if (!qword_27ECF1788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1788);
  }

  return result;
}

unint64_t sub_242CBC764()
{
  result = qword_27ECF1790;
  if (!qword_27ECF1790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1790);
  }

  return result;
}

unint64_t sub_242CBC7BC()
{
  result = qword_27ECF1798;
  if (!qword_27ECF1798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1798);
  }

  return result;
}

unint64_t sub_242CBC814()
{
  result = qword_27ECF17A0;
  if (!qword_27ECF17A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF17A0);
  }

  return result;
}

unint64_t sub_242CBC86C()
{
  result = qword_27ECF17A8;
  if (!qword_27ECF17A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF17A8);
  }

  return result;
}

unint64_t sub_242CBC8C4()
{
  result = qword_27ECF17B0;
  if (!qword_27ECF17B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF17B0);
  }

  return result;
}

unint64_t sub_242CBC91C()
{
  result = qword_27ECF17B8;
  if (!qword_27ECF17B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF17B8);
  }

  return result;
}

unint64_t sub_242CBC974()
{
  result = qword_27ECF17C0;
  if (!qword_27ECF17C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF17C0);
  }

  return result;
}

unint64_t sub_242CBC9CC()
{
  result = qword_27ECF17C8;
  if (!qword_27ECF17C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF17C8);
  }

  return result;
}

unint64_t sub_242CBCA24()
{
  result = qword_27ECF17D0;
  if (!qword_27ECF17D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF17D0);
  }

  return result;
}

unint64_t sub_242CBCA7C()
{
  result = qword_27ECF17D8;
  if (!qword_27ECF17D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF17D8);
  }

  return result;
}

unint64_t sub_242CBCAD4()
{
  result = qword_27ECF17E0;
  if (!qword_27ECF17E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF17E0);
  }

  return result;
}

unint64_t sub_242CBCB2C()
{
  result = qword_27ECF17E8;
  if (!qword_27ECF17E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF17E8);
  }

  return result;
}

unint64_t sub_242CBCB84()
{
  result = qword_27ECF17F0;
  if (!qword_27ECF17F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF17F0);
  }

  return result;
}

unint64_t sub_242CBCBDC()
{
  result = qword_27ECF17F8;
  if (!qword_27ECF17F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF17F8);
  }

  return result;
}

unint64_t sub_242CBCC34()
{
  result = qword_27ECF1800;
  if (!qword_27ECF1800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1800);
  }

  return result;
}

unint64_t sub_242CBCC8C()
{
  result = qword_27ECF1808;
  if (!qword_27ECF1808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1808);
  }

  return result;
}

unint64_t sub_242CBCCE4()
{
  result = qword_27ECF1810;
  if (!qword_27ECF1810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1810);
  }

  return result;
}

unint64_t sub_242CBCD3C()
{
  result = qword_27ECF1818;
  if (!qword_27ECF1818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1818);
  }

  return result;
}

unint64_t sub_242CBCD94()
{
  result = qword_27ECF1820;
  if (!qword_27ECF1820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1820);
  }

  return result;
}

unint64_t sub_242CBCDEC()
{
  result = qword_27ECF1828;
  if (!qword_27ECF1828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1828);
  }

  return result;
}

unint64_t sub_242CBCE44()
{
  result = qword_27ECF1830;
  if (!qword_27ECF1830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1830);
  }

  return result;
}

unint64_t sub_242CBCE9C()
{
  result = qword_27ECF1838;
  if (!qword_27ECF1838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1838);
  }

  return result;
}

unint64_t sub_242CBCEF4()
{
  result = qword_27ECF1840;
  if (!qword_27ECF1840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1840);
  }

  return result;
}

unint64_t sub_242CBCF4C()
{
  result = qword_27ECF1848;
  if (!qword_27ECF1848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1848);
  }

  return result;
}

unint64_t sub_242CBCFA4()
{
  result = qword_27ECF1850;
  if (!qword_27ECF1850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1850);
  }

  return result;
}

unint64_t sub_242CBCFFC()
{
  result = qword_27ECF1858;
  if (!qword_27ECF1858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1858);
  }

  return result;
}

unint64_t sub_242CBD054()
{
  result = qword_27ECF1860;
  if (!qword_27ECF1860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1860);
  }

  return result;
}

unint64_t sub_242CBD0AC()
{
  result = qword_27ECF1868;
  if (!qword_27ECF1868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1868);
  }

  return result;
}

unint64_t sub_242CBD104()
{
  result = qword_27ECF1870;
  if (!qword_27ECF1870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1870);
  }

  return result;
}

unint64_t sub_242CBD15C()
{
  result = qword_27ECF1878;
  if (!qword_27ECF1878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1878);
  }

  return result;
}

unint64_t sub_242CBD1B4()
{
  result = qword_27ECF1880;
  if (!qword_27ECF1880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1880);
  }

  return result;
}

unint64_t sub_242CBD20C()
{
  result = qword_27ECF1888;
  if (!qword_27ECF1888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1888);
  }

  return result;
}

unint64_t sub_242CBD264()
{
  result = qword_27ECF1890;
  if (!qword_27ECF1890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1890);
  }

  return result;
}

unint64_t sub_242CBD2BC()
{
  result = qword_27ECF1898;
  if (!qword_27ECF1898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1898);
  }

  return result;
}

unint64_t sub_242CBD314()
{
  result = qword_27ECF18A0;
  if (!qword_27ECF18A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF18A0);
  }

  return result;
}

unint64_t sub_242CBD36C()
{
  result = qword_27ECF18A8;
  if (!qword_27ECF18A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF18A8);
  }

  return result;
}

unint64_t sub_242CBD3C4()
{
  result = qword_27ECF18B0;
  if (!qword_27ECF18B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF18B0);
  }

  return result;
}

unint64_t sub_242CBD41C()
{
  result = qword_27ECF18B8;
  if (!qword_27ECF18B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF18B8);
  }

  return result;
}

unint64_t sub_242CBD474()
{
  result = qword_27ECF18C0;
  if (!qword_27ECF18C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF18C0);
  }

  return result;
}

unint64_t sub_242CBD4CC()
{
  result = qword_27ECF18C8;
  if (!qword_27ECF18C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF18C8);
  }

  return result;
}

unint64_t sub_242CBD524()
{
  result = qword_27ECF18D0;
  if (!qword_27ECF18D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF18D0);
  }

  return result;
}

unint64_t sub_242CBD57C()
{
  result = qword_27ECF18D8;
  if (!qword_27ECF18D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF18D8);
  }

  return result;
}

unint64_t sub_242CBD5D4()
{
  result = qword_27ECF18E0;
  if (!qword_27ECF18E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF18E0);
  }

  return result;
}

unint64_t sub_242CBD62C()
{
  result = qword_27ECF18E8;
  if (!qword_27ECF18E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF18E8);
  }

  return result;
}

uint64_t sub_242CBD680(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000242F59820 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F59840 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D694C6465657073 && a2 == 0xEC00000072657469 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E696E69616D6572 && a2 == 0xEE0065676E615267 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4D74756F79616CLL && a2 == 0xEA00000000006564 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4464696C61766E69 && a2 == 0xEB00000000617461 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xEE00646565705379 || (sub_242F06110() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F59860 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xED00006574617453 || (sub_242F06110() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F59880 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000242F585E0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x69646E4965646973 && a2 == 0xED0000726F746163 || (sub_242F06110() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x646F4D6576697264 && a2 == 0xE900000000000065 || (sub_242F06110() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x74736F6F62 && a2 == 0xE500000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7453656772616863 && a2 == 0xEB00000000657461)
  {

    return 14;
  }

  else
  {
    v5 = sub_242F06110();

    if (v5)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_242CBDB68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701606770 && a2 == 0xE400000000000000;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D696E41776F6873 && a2 == 0xED00006E6F697461 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D696E4165646968 && a2 == 0xED00006E6F697461)
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

uint64_t sub_242CBDC90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79616C6564 && a2 == 0xE500000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x75437265697A6562 && a2 == 0xEB00000000657672)
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

uint64_t sub_242CBDDA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701606770 && a2 == 0xE400000000000000;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000242F598A0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000242F598C0 == a2)
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

uint64_t sub_242CBDECC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701606770 && a2 == 0xE400000000000000;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F598E0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000242F59900 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000242F59920 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t sub_242CBE038(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701606770 && a2 == 0xE400000000000000;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000242F59730 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000242F59940 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000242F59960 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t sub_242CBE1A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F59980 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000242F599A0 == a2)
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

uint64_t sub_242CBE2D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000023 && 0x8000000242F599E0 == a2;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000028 && 0x8000000242F59A10 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7079546567756167 && a2 == 0xE900000000000065 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F59A40 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t sub_242CBE448(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000242F59A60 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000242F59A80 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701079411 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_242F06110();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_242CBE570()
{
  result = qword_27ECF18F0;
  if (!qword_27ECF18F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF18F0);
  }

  return result;
}

unint64_t sub_242CBE5C4()
{
  result = qword_27ECF18F8;
  if (!qword_27ECF18F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF18F8);
  }

  return result;
}

unint64_t sub_242CBE618()
{
  result = qword_27ECF1900;
  if (!qword_27ECF1900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1900);
  }

  return result;
}

unint64_t sub_242CBE66C()
{
  result = qword_27ECF1908;
  if (!qword_27ECF1908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1908);
  }

  return result;
}

unint64_t sub_242CBE6C0()
{
  result = qword_27ECF1910;
  if (!qword_27ECF1910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1910);
  }

  return result;
}

unint64_t sub_242CBE714()
{
  result = qword_27ECF1918;
  if (!qword_27ECF1918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1918);
  }

  return result;
}

unint64_t sub_242CBE768()
{
  result = qword_27ECF1920;
  if (!qword_27ECF1920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1920);
  }

  return result;
}

unint64_t sub_242CBE7BC()
{
  result = qword_27ECF1928;
  if (!qword_27ECF1928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1928);
  }

  return result;
}

id sub_242CBE8FC()
{
  result = _sSo16CHSWidgetMetricsC14CarPlayAssetUIE03cardB04withAB12CoreGraphics7CGFloatV_tFZ_0(1.0);
  qword_27ECF1930 = result;
  return result;
}

double WidgetMultiStackRowLayout.scaleFactor.getter()
{
  v1 = *v0;
  if (qword_27ECEEF90 != -1)
  {
    swift_once();
  }

  [qword_27ECF1930 size];
  return v1 / v2;
}

double WidgetMultiStackRowLayout.cornerRadius.getter()
{
  v1 = *v0;
  if (qword_27ECEEF90 != -1)
  {
    swift_once();
  }

  v2 = qword_27ECF1930;
  [qword_27ECF1930 cornerRadius];
  v4 = v3;
  [v2 size];
  return v4 * (v1 / v5);
}

uint64_t WidgetMultiStackRowLayout.description.getter()
{
  sub_242F05A80();
  MEMORY[0x245D26660](0xD00000000000002BLL, 0x8000000242F59AC0);
  v0 = sub_242F05470();
  MEMORY[0x245D26660](v0);

  MEMORY[0x245D26660](0x3A746E756F63202CLL, 0xE900000000000020);
  v1 = sub_242F05F60();
  MEMORY[0x245D26660](v1);

  MEMORY[0x245D26660](0xD000000000000016, 0x8000000242F59AF0);
  v2 = sub_242F05470();
  MEMORY[0x245D26660](v2);

  MEMORY[0x245D26660](0xD000000000000017, 0x8000000242F59B10);
  v3 = sub_242F05470();
  MEMORY[0x245D26660](v3);

  MEMORY[0x245D26660](41, 0xE100000000000000);
  return 0;
}

uint64_t WidgetHostManager.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*WidgetHostManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 48);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_242CBED64;
}

void sub_242CBED64(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 48) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *WidgetHostManager.__allocating_init(displayProperties:identifier:)(void *a1, uint64_t a2, unint64_t a3)
{
  swift_allocObject();
  v6 = sub_242CC4A88(a1, a2, a3);

  return v6;
}

void *WidgetHostManager.init(displayProperties:identifier:)(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = sub_242CC4A88(a1, a2, a3);

  return v4;
}

uint64_t sub_242CBEE78()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    WidgetHostManager.rebuildAndTransmitConfiguredWidgetData()();
  }

  return result;
}

Swift::Void __swiftcall WidgetHostManager.rebuildAndTransmitConfiguredWidgetData()()
{
  v2 = v0;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  v3 = v0[6];
  v83 = MEMORY[0x277D84FA0];
  v82 = MEMORY[0x277D84F90];
  ObjectType = swift_getObjectType();
  v5 = v3[1](v84, v0, ObjectType, v3);
  v7 = v6;
  if (qword_27ECEF4C8 != -1)
  {
    goto LABEL_61;
  }

LABEL_3:
  v8 = sub_242F039D0();
  v9 = __swift_project_value_buffer(v8, qword_27ED5D2F8);

  v10 = sub_242F039B0();
  v11 = sub_242F05720();

  v72 = v5;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v81[0] = v13;
    *v12 = 136446210;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0260);
    v15 = MEMORY[0x245D26920](v72, v14);
    v1 = sub_242C8FD38(v15, v16, v81);

    *(v12 + 4) = v1;
    _os_log_impl(&dword_242C53000, v10, v11, "Updating widget host with stacks: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v13);
    MEMORY[0x245D287D0](v13, -1, -1);
    v17 = v12;
    v5 = v72;
    MEMORY[0x245D287D0](v17, -1, -1);
  }

  v77 = v2;
  v74 = *(v7 + 2);
  if (v74)
  {
    v18 = 0;
    v73 = v7 + 32;
    v78 = *(MEMORY[0x277CFA180] + 8);
    v79 = *MEMORY[0x277CFA180];
    v19 = *(MEMORY[0x277CFA180] + 16);
    v20 = *(MEMORY[0x277CFA180] + 24);
    v1 = *MEMORY[0x277D666D0];
    v76 = *MEMORY[0x277D66548];
    v5 = &unk_278D8C000;
    v71 = v7;
LABEL_7:
    v21 = &v73[80 * v18];
    v22 = *(v21 + 4);
    v24 = *(v21 + 1);
    v23 = *(v21 + 2);
    v81[3] = *(v21 + 3);
    v81[4] = v22;
    v81[1] = v24;
    v81[2] = v23;
    v81[0] = *v21;
    v25 = v24;
    v9 = *(v24 + 16);
    if (!v9)
    {
      goto LABEL_18;
    }

    v75 = v18;
    sub_242C90A34(v81, v80);
    if (qword_27ECEEF90 != -1)
    {
      swift_once();
    }

    v26 = (v25 + 32);
    v27 = qword_27ECF1930;
    while (1)
    {
      v31 = *v26;
      [v27 size];
      v33 = v32;
      v34 = [objc_allocWithZone(MEMORY[0x277D66160]) init];
      v35 = [v34 layoutForIconLocation_];
      if (v35)
      {
        v36 = v35;
        if ([v35 respondsToSelector_])
        {
          [v36 &selRef:v76 alternateMetricsForFamily:?];
          v28 = v37;
          v29 = v38;
          swift_unknownObjectRelease();
          goto LABEL_13;
        }

        swift_unknownObjectRelease();
      }

      v28 = 170.0;
      v29 = 170.0;
LABEL_13:
      v30 = [objc_allocWithZone(MEMORY[0x277CFA3E8]) initWithSafeAreaInsets:v79 layoutInsets:v78 contentMargins:v19 backgroundRemovedContentMargins:{v20, v79, v78, v19, v20, v28 * 0.101265823, v28 * 0.101265823, v28 * 0.101265823, v28 * 0.101265823, v28 * 0.0443037975, v28 * 0.0443037975, v28 * 0.0443037975, v28 * 0.0443037975}];
      v2 = [objc_allocWithZone(MEMORY[0x277CFA3F0]) initWithSize:0 cornerRadius:v30 scaleFactor:2 fontStyle:v28 margins:v29 supportsDynamicText:{23.0, v31 / v33}];

      sub_242CC1298(v80, v2, &qword_27ECF1940, 0x277CFA3F0, &qword_27ECF19A0, &unk_242F113E0);
      v26 += 5;
      if (!--v9)
      {
        sub_242C90A04(v81);
        v7 = v71;
        v18 = v75;
LABEL_18:
        if (++v18 != v74)
        {
          if (v18 >= *(v7 + 2))
          {
            __break(1u);
            goto LABEL_58;
          }

          goto LABEL_7;
        }

        v5 = v72;
        v2 = v72[2];
        if (!v2)
        {
          goto LABEL_45;
        }

LABEL_22:
        v39 = 0;
        v7 = (v5 + 4);
        while (v39 < v5[2])
        {
          v40 = *&v7[8 * v39];
          if (v40 >> 62)
          {
            v48 = sub_242F059B0();
            if (v48 < 0)
            {
              goto LABEL_59;
            }

            v5 = v48;
            if (v48)
            {
LABEL_27:
              if (v39 < *(v85 + 16))
              {
                v41 = 0;
                v42 = (v85 + 40 * v39);
                while (1)
                {
                  v43 = *&v7[8 * v39];
                  if ((v43 & 0xC000000000000001) != 0)
                  {

                    v1 = MEMORY[0x245D270D0](v41, v43);
                  }

                  else
                  {
                    if (v41 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
LABEL_54:
                      v60 = 0;
                      goto LABEL_55;
                    }

                    v1 = *(v43 + 8 * v41 + 32);
                  }

                  v44 = v42[4];
                  if (qword_27ECEEF90 != -1)
                  {
                    swift_once();
                  }

                  [qword_27ECF1930 size];
                  v9 = _sSo16CHSWidgetMetricsC14CarPlayAssetUIE03cardB04withAB12CoreGraphics7CGFloatV_tFZ_0(v44 / v45);
                  v46 = sub_242CBFA28(v1, v9);
                  if (v46)
                  {
                    v47 = v46;
                    MEMORY[0x245D268D0]();
                    if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      v79 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      sub_242F05330();
                    }

                    sub_242F05370();
                  }

                  else
                  {
                  }

                  if (v5 == ++v41)
                  {
                    goto LABEL_23;
                  }
                }
              }

              goto LABEL_60;
            }
          }

          else
          {
            v5 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v5)
            {
              goto LABEL_27;
            }
          }

LABEL_23:
          ++v39;
          v5 = v72;
          if (v39 == v2)
          {
            goto LABEL_45;
          }
        }

LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        swift_once();
        goto LABEL_3;
      }
    }
  }

  v2 = v5[2];
  if (v2)
  {
    goto LABEL_22;
  }

LABEL_45:
  sub_242C90A04(v84);

  v49 = sub_242CBFFE0();
  if (v49)
  {
    v50 = *&v49;
    v51 = sub_242CC00A4(v49, &v83);

    v52 = v51;
    v53 = sub_242F039B0();
    v54 = sub_242F05720();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138543362;
      v57 = [v52 metricsForFamily_];
      *(v55 + 4) = v57;
      *v56 = v57;
      _os_log_impl(&dword_242C53000, v53, v54, "Configured metrics specifications metrics: %{public}@", v55, 0xCu);
      sub_242CC4FBC(v56);
      MEMORY[0x245D287D0](v56, -1, -1);
      MEMORY[0x245D287D0](v55, -1, -1);
    }

    v42 = v52;
    v43 = sub_242F039B0();
    LOBYTE(v5) = sub_242F05720();

    if (os_log_type_enabled(v43, v5))
    {
      v79 = v50;
      v1 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v81[0] = v9;
      *v1 = 136446210;
      v58 = [v42 alternateMetricsForFamily_];
      if (!v58)
      {
        goto LABEL_54;
      }

      v59 = v58;
      sub_242C8760C(0, &qword_27ECF1940);
      sub_242C875BC(&qword_27ECF1948, &qword_27ECF1940);
      v60 = sub_242F054D0();

LABEL_55:
      v61 = v77;
      v62 = sub_242CC092C(v60);
      v64 = v63;

      v65 = sub_242C8FD38(v62, v64, v81);

      *(v1 + 1) = v65;
      _os_log_impl(&dword_242C53000, v43, v5, "Configured metrics specifications alt metrics: %{public}s", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v9);
      MEMORY[0x245D287D0](v9, -1, -1);
      MEMORY[0x245D287D0](v1, -1, -1);

      v50 = v79;
    }

    else
    {

      v61 = v77;
    }

    v66 = objc_allocWithZone(MEMORY[0x277CFA2B0]);
    sub_242C8760C(0, &qword_27ECF1938);
    v67 = v42;
    v68 = sub_242F052E0();

    v69 = [v66 initWithContainerDescriptors:v68 metricsSpecification:v67];

    sub_242CC4D10();
    sub_242C8760C(0, &qword_27ECF03B0);
    sub_242C875BC(&qword_27ECF03B8, &qword_27ECF03B0);
    v70 = sub_242F054C0();

    [v69 setRateLimitPolicies_];

    [v69 setAutomaticallyOrphaned_];
    [v61[2] setConfiguration_];

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

id *WidgetHostManager.deinit()
{
  [v0[2] deactivate];
  [v0[2] invalidate];

  sub_242CC5024((v0 + 5));
  return v0;
}

uint64_t WidgetHostManager.__deallocating_deinit()
{
  [v0[2] deactivate];
  [v0[2] invalidate];

  sub_242CC5024((v0 + 5));

  return swift_deallocClassInstance();
}

id sub_242CBFA28(unint64_t a1, void *a2)
{
  v2 = a1;
  v3 = *(a1 + OBJC_IVAR____TtC14CarPlayAssetUI11WidgetStack_icon);
  v45 = [v3 gridSizeClass];
  v4 = CHSWidgetFamilyForSBHIconGridSizeClass();
  v5 = [v3 activeWidget];
  v6 = &unk_278D8C000;
  if (v5)
  {
    v7 = v5;
    v8 = [v5 uniqueIdentifier];

    v49 = sub_242F04F30();
    v10 = v9;
  }

  else
  {
    v49 = 0;
    v10 = 0;
  }

  if (qword_27ECEF4C8 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v11 = sub_242F039D0();
    __swift_project_value_buffer(v11, qword_27ED5D2F8);

    v12 = v2;
    v13 = sub_242F039B0();
    v14 = sub_242F05720();

    v46 = v10;
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v52 = v16;
      *v15 = 136446722;
      v17 = [v3 *(v6 + 2776)];
      sub_242F04F30();

      v18 = sub_242F04F90();
      v20 = sub_242C8FD38(v18, v19, &v52);

      *(v15 + 4) = v20;
      v6 = 2082;
      *(v15 + 12) = 2082;
      v21 = NSStringFromWidgetFamily();
      v22 = sub_242F04F30();
      v24 = v23;

      v25 = sub_242C8FD38(v22, v24, &v52);
      v10 = v46;

      *(v15 + 14) = v25;
      *(v15 + 22) = 2082;
      if (v46)
      {
        v26 = v49;
      }

      else
      {
        v26 = 7104878;
      }

      if (v46)
      {
        v27 = v46;
      }

      else
      {
        v27 = 0xE300000000000000;
      }

      v28 = sub_242C8FD38(v26, v27, &v52);

      *(v15 + 24) = v28;
      _os_log_impl(&dword_242C53000, v13, v14, "Creating widget container descriptor for stack %{public}s: widgetFamily = %{public}s, activeWidgetIdentifier = %{public}s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x245D287D0](v16, -1, -1);
      MEMORY[0x245D287D0](v15, -1, -1);
    }

    v29 = [v3 widgets];
    sub_242C8760C(0, &qword_27ECF19A8);
    v2 = sub_242F05310();

    v50 = MEMORY[0x277D84F90];
    if (v2 >> 62)
    {
      break;
    }

    v30 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v43 = v3;
    v44 = v4;
    if (!v30)
    {
      goto LABEL_30;
    }

LABEL_15:
    v31 = 0;
    v3 = (v2 & 0xC000000000000001);
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    v32 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v3)
      {
        v33 = MEMORY[0x245D270D0](v31, v2);
      }

      else
      {
        if (v31 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v33 = *(v2 + 8 * v31 + 32);
      }

      v34 = v33;
      v6 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      v52 = v33;
      sub_242CC01CC(&v52, v48, a2, v49, v10, &v51);

      if (v51)
      {
        MEMORY[0x245D268D0]();
        if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_242F05330();
        }

        sub_242F05370();
        v32 = v50;
        v10 = v46;
      }

      ++v31;
      if (v6 == v30)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
  }

  v30 = sub_242F059B0();
  v43 = v3;
  v44 = v4;
  if (v30)
  {
    goto LABEL_15;
  }

LABEL_30:
  v32 = MEMORY[0x277D84F90];
LABEL_31:

  if (v32 >> 62)
  {
    v41 = sub_242F059B0();
    v35 = v43;
    v36 = v44;
    if (!v41)
    {
      goto LABEL_40;
    }

LABEL_33:
    v37 = [v35 uniqueIdentifier];
    if (!v37)
    {
      sub_242F04F30();
      v37 = sub_242F04F00();
    }

    sub_242C8760C(0, &qword_27ECF19B0);
    v38 = sub_242F052E0();

    if (v10)
    {
      v39 = sub_242F04F00();
    }

    else
    {
      v39 = 0;
    }

    v40 = [objc_allocWithZone(MEMORY[0x277CFA1E0]) initWithUniqueIdentifier:v37 location:9 canAppearInSecureEnvironment:1 page:1 family:v36 widgets:v38 activeWidget:v39];
  }

  else
  {
    v35 = v43;
    v36 = v44;
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }

LABEL_40:

    return 0;
  }

  return v40;
}

uint64_t sub_242CBFFE0()
{
  v1 = *v0;
  v2 = *v0 & 0xC000000000000001;
  if (!v2)
  {
    if (*(v1 + 16))
    {
      v3 = sub_242F05940();
      v5 = *(v1 + 36);
      goto LABEL_6;
    }

    return 0;
  }

  if (!sub_242F059B0())
  {
    return 0;
  }

  v3 = sub_242F05970();
  v5 = v4;
LABEL_6:
  v6 = v2 != 0;
  sub_242CC4804(v3, v5, v6);
  v8 = v7;
  sub_242C9E060(v3, v5, v6);
  return v8;
}

id sub_242CC00A4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CFA2D0]) init];
  [v4 setMetrics:a1 forFamily:1];
  if ((*a2 & 0xC000000000000001) == 0)
  {
    if (!*(*a2 + 16))
    {
      return v4;
    }

    goto LABEL_3;
  }

  v5 = sub_242F059B0();

  if (v5)
  {
LABEL_3:
    sub_242C8760C(0, &qword_27ECF1940);
    sub_242C875BC(&qword_27ECF1948, &qword_27ECF1940);

    v6 = sub_242F054C0();

    [v4 setAlternateMetrics:v6 forFamily:1];
  }

  return v4;
}

void sub_242CC01CC(id *a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v62 = a3;
  v8 = *a1;
  v9 = *(a2 + 24);
  v10 = [*a1 uniqueIdentifier];
  v11 = sub_242F04F30();
  v13 = v12;

  v61[0] = v11;
  v61[1] = v13;
  v14 = sub_242EFB43C(v61, v9);

  if (v14)
  {
    v15 = [v8 uniqueIdentifier];
    if (!v15)
    {
      sub_242F04F30();
      v15 = sub_242F04F00();
    }

    v16 = objc_allocWithZone(MEMORY[0x277CFA288]);
    v17 = [v16 initWithUniqueIdentifier:v15 widget:v14 metrics:v62];

    v58 = *(a2 + 32);
    [v17 setDisplayProperties_];
    [v17 setSuggestion_];
    [v17 setSystemConfigured_];
    [v17 setSupportedColorSchemes_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1988);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_242F112E0;
    *(v18 + 32) = [objc_allocWithZone(MEMORY[0x277CFA430]) initWithRenderingMode:0 backgroundViewPolicy:1];
    sub_242C8760C(0, &qword_27ECF9430);
    v19 = sub_242F052E0();

    [v17 setSupportedRenderSchemes_];

    v20 = [v8 uniqueIdentifier];
    v21 = sub_242F04F30();
    v23 = v22;

    if (!a5 || v21 == a4 && v23 == a5)
    {
    }

    else
    {
      sub_242F06110();
    }

    v31 = objc_opt_self();
    v32 = sub_242F04F00();

    v33 = [v31 rateLimitedWithPolicyIdentifier_];

    [v17 setRefreshStrategy_];
    swift_unknownObjectRelease();
    if (qword_27ECEF4C8 != -1)
    {
      swift_once();
    }

    v34 = sub_242F039D0();
    __swift_project_value_buffer(v34, qword_27ED5D2F8);
    v35 = v8;
    v36 = sub_242F039B0();
    v37 = sub_242F05720();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138543362;
      *(v38 + 4) = v35;
      *v39 = v35;
      v40 = v35;
      _os_log_impl(&dword_242C53000, v36, v37, "Found configured widget: %{public}@", v38, 0xCu);
      sub_242CC4FBC(v39);
      MEMORY[0x245D287D0](v39, -1, -1);
      MEMORY[0x245D287D0](v38, -1, -1);
    }

    v41 = v14;
    v42 = sub_242F039B0();
    v43 = sub_242F05720();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138543362;
      *(v44 + 4) = v41;
      *v45 = v14;
      v46 = v41;
      _os_log_impl(&dword_242C53000, v42, v43, " chrono widget: %{public}@", v44, 0xCu);
      sub_242CC4FBC(v45);
      MEMORY[0x245D287D0](v45, -1, -1);
      MEMORY[0x245D287D0](v44, -1, -1);
    }

    v47 = v62;
    v48 = sub_242F039B0();
    v49 = sub_242F05720();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138543362;
      *(v50 + 4) = v47;
      *v51 = v47;
      v52 = v47;
      _os_log_impl(&dword_242C53000, v48, v49, " metrics: %{public}@", v50, 0xCu);
      sub_242CC4FBC(v51);
      MEMORY[0x245D287D0](v51, -1, -1);
      MEMORY[0x245D287D0](v50, -1, -1);
    }

    v53 = sub_242F039B0();
    v54 = sub_242F05720();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138543362;
      *(v55 + 4) = v58;
      *v56 = v58;
      v57 = v58;
      _os_log_impl(&dword_242C53000, v53, v54, " displayProperties: %{public}@", v55, 0xCu);
      sub_242CC4FBC(v56);
      MEMORY[0x245D287D0](v56, -1, -1);
      MEMORY[0x245D287D0](v55, -1, -1);
    }
  }

  else
  {
    if (qword_27ECEF4C8 != -1)
    {
      swift_once();
    }

    v24 = sub_242F039D0();
    __swift_project_value_buffer(v24, qword_27ED5D2F8);
    v25 = v8;
    v26 = sub_242F039B0();
    v27 = sub_242F05720();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138543362;
      *(v28 + 4) = v25;
      *v29 = v25;
      v30 = v25;
      _os_log_impl(&dword_242C53000, v26, v27, "No chrono widget found for widget: %{public}@", v28, 0xCu);
      sub_242CC4FBC(v29);
      MEMORY[0x245D287D0](v29, -1, -1);
      MEMORY[0x245D287D0](v28, -1, -1);
    }

    v17 = 0;
  }

  *a6 = v17;
}

uint64_t sub_242CC092C(uint64_t a1)
{
  if (a1)
  {
    sub_242C8760C(0, &qword_27ECF1940);
    sub_242C875BC(&qword_27ECF1948, &qword_27ECF1940);
    return sub_242F054E0();
  }

  else
  {
    sub_242F05A80();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1980);
    v2 = sub_242F06580();
    MEMORY[0x245D26660](v2);

    MEMORY[0x245D26660](0x656E6F6E2E3ELL, 0xE600000000000000);
    return 0x6C616E6F6974704FLL;
  }
}

uint64_t sub_242CC0A30(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_242F06390();
  sub_242F04DD0();
  v8 = sub_242F063E0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_242F06110() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_242CC3E34(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_242CC0B80(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_242F06390();
  sub_242F04DD0();
  v8 = sub_242F063E0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_242F06110() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_242CC3FB4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_242CC0D18(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *v4;
  sub_242F06390();
  v30 = a2;
  v31 = a4;
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  v9 = sub_242F063E0();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = *(v8 + 48) + 24 * v11;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      sub_242C7CE5C(*v13, v15, v16);
      v17 = Theme.ColorID.rawValue.getter();
      v19 = v18;
      if (v17 == Theme.ColorID.rawValue.getter() && v19 == v20)
      {
        break;
      }

      v21 = sub_242F06110();
      sub_242C7CEB0(v14, v15, v16);

      if (v21)
      {
        goto LABEL_9;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    sub_242C7CEB0(v14, v15, v16);

LABEL_9:
    sub_242C7CEB0(v30, a3, v31);
    v24 = *(v8 + 48) + 24 * v11;
    v25 = *v24;
    v26 = *(v24 + 8);
    *a1 = *v24;
    *(a1 + 8) = v26;
    v27 = *(v24 + 16);
    *(a1 + 16) = v27;
    sub_242C7CE5C(v25, v26, v27);
    return 0;
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *v28;
    sub_242C7CE5C(v30, a3, v31);
    sub_242CC42C4(v30, a3, v31, v11, isUniquelyReferenced_nonNull_native);
    *v28 = v32;
    *a1 = v30;
    *(a1 + 8) = a3;
    *(a1 + 16) = v31;
    return 1;
  }
}

uint64_t sub_242CC0F70(uint64_t a1, uint64_t *a2)
{
  v4 = *v2;
  sub_242F06390();
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v37 = a2;
  v11 = a2[6];
  sub_242F04DD0();
  sub_242C7A3DC(v46, v7);
  v41 = v9;
  v42 = v8;
  sub_242F04DD0();
  v39 = v11;
  v40 = v10;
  sub_242F04DD0();
  v12 = sub_242F063E0();
  v43 = v4 + 56;
  v44 = v4;
  v13 = -1 << *(v4 + 32);
  v14 = v12 & ~v13;
  if (((*(v4 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_22:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = *v36;
    sub_242C8745C(v37, v46);
    sub_242CC4518(v37, v14, isUniquelyReferenced_nonNull_native);
    *v36 = v45;
    v27 = *(v37 + 16);
    *a1 = *v37;
    *(a1 + 16) = v27;
    *(a1 + 32) = *(v37 + 32);
    *(a1 + 48) = *(v37 + 48);
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = (*(v44 + 48) + 56 * v14);
    v18 = v16[2];
    v17 = v16[3];
    v19 = v16[4];
    v20 = v16[5];
    v21 = v16[6];
    v22 = *v16 == v5 && v16[1] == v6;
    if (!v22 && (sub_242F06110() & 1) == 0)
    {
      goto LABEL_4;
    }

    if ((sub_242C746FC(v18) & 1) == 0 || (v17 == v42 ? (v23 = v19 == v41) : (v23 = 0), !v23 && (sub_242F06110() & 1) == 0))
    {

      goto LABEL_4;
    }

    if (v20 == v40 && v21 == v39)
    {
      break;
    }

    v25 = sub_242F06110();

    if (v25)
    {
      goto LABEL_24;
    }

LABEL_4:
    v14 = (v14 + 1) & v15;
    if (((*(v43 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_24:
  sub_242CC50B0(v37);
  v29 = (*(v44 + 48) + 56 * v14);
  v30 = v29[1];
  v32 = v29[2];
  v31 = v29[3];
  v34 = v29[4];
  v33 = v29[5];
  v35 = v29[6];
  *a1 = *v29;
  *(a1 + 8) = v30;
  *(a1 + 16) = v32;
  *(a1 + 24) = v31;
  *(a1 + 32) = v34;
  *(a1 + 40) = v33;
  *(a1 + 48) = v35;

  return 0;
}

uint64_t sub_242CC1298(void *a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = v6;
  v13 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v13 < 0)
    {
      v14 = *v6;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = a2;

    v16 = sub_242F059D0();

    if (v16)
    {

      sub_242C8760C(0, a3);
      swift_dynamicCast();
      result = 0;
      *a1 = v34;
    }

    else
    {
      result = sub_242F059B0();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v26 = sub_242CC150C(v14, result + 1, a5, a6, a3);
        v27 = *(v26 + 16);
        if (*(v26 + 24) <= v27)
        {
          sub_242CC2290(v27 + 1, a5);
        }

        v28 = v15;
        sub_242CC24B0(v28, v26);

        *v10 = v26;
        *a1 = v28;
        return 1;
      }
    }
  }

  else
  {
    sub_242C8760C(0, a3);
    v18 = sub_242F05800();
    v19 = -1 << *(v13 + 32);
    v20 = v18 & ~v19;
    if ((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v21 = ~v19;
      while (1)
      {
        v22 = *(*(v13 + 48) + 8 * v20);
        v23 = sub_242F05810();

        if (v23)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v29 = *(*(v13 + 48) + 8 * v20);
      *a1 = v29;
      v30 = v29;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *v10;
      v25 = a2;
      sub_242CC4134(v25, v20, isUniquelyReferenced_nonNull_native, a5, a6, a3);
      *v10 = v35;
      *a1 = v25;
      return 1;
    }
  }

  return result;
}

uint64_t sub_242CC150C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v7 = sub_242F05A10();
    v20 = v7;
    sub_242F05980();
    if (sub_242F059E0())
    {
      sub_242C8760C(0, a5);
      do
      {
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          sub_242CC2290(v14 + 1, a3);
        }

        v7 = v20;
        result = sub_242F05800();
        v9 = v20 + 56;
        v10 = -1 << *(v20 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v20 + 48) + 8 * v13) = v19;
        ++*(v20 + 16);
      }

      while (sub_242F059E0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v7;
}

uint64_t sub_242CC170C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1970);
  result = sub_242F05A00();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_242F06390();
      sub_242F04DD0();
      result = sub_242F063E0();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_242CC196C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1968);
  result = sub_242F05A00();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_242F06390();
      sub_242F04DD0();
      result = sub_242F063E0();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_242CC1BCC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1978);
  result = sub_242F05A00();
  v4 = result;
  if (*(v2 + 16))
  {
    v29 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 24 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      sub_242F06390();
      Theme.ColorID.rawValue.getter();
      sub_242F04DD0();

      result = sub_242F063E0();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      ++*(v4 + 16);
      v2 = v29;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      bzero(v6, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_242CC1E60()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1960);
  v3 = sub_242F05A00();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v35 = v0;
    v36 = (v2 + 56);
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v37 = v3 + 56;
    v38 = v9;
    v39 = v3;
    v40 = v2;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v47 = (v8 - 1) & v8;
LABEL_14:
      v48 = v5;
      v16 = (*(v2 + 48) + 56 * (v12 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      v19 = v16[2];
      v43 = v16[4];
      v44 = v16[3];
      v41 = v16[6];
      v42 = v16[5];
      sub_242F06390();
      v45 = v18;
      v46 = v17;
      sub_242F04DD0();
      v20 = 1 << *(v19 + 32);
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      else
      {
        v21 = -1;
      }

      v22 = v21 & *(v19 + 64);
      v23 = (v20 + 63) >> 6;

      v24 = 0;
      v25 = 0;
      if (!v22)
      {
LABEL_19:
        if (v23 <= v25 + 1)
        {
          v27 = v25 + 1;
        }

        else
        {
          v27 = v23;
        }

        v28 = v27 - 1;
        while (1)
        {
          v26 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v26 >= v23)
          {
            sub_242C7F83C(__src);
            memcpy(v55, __src, sizeof(v55));
            v22 = 0;
            v33 = v54;
            goto LABEL_27;
          }

          v22 = *(v19 + 64 + 8 * v26);
          ++v25;
          if (v22)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
        goto LABEL_37;
      }

      while (1)
      {
        v26 = v25;
LABEL_26:
        v29 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        v30 = v29 | (v26 << 6);
        v31 = (*(v19 + 48) + 944 * v30);
        memcpy(__dst, v31, sizeof(__dst));
        v32 = *(*(v19 + 56) + 8 * v30);
        memmove(__src, v31, 0x3B0uLL);
        v54 = v32;
        nullsub_2(__src);
        sub_242C7F7E0(__dst, v51);
        memcpy(v55, __src, sizeof(v55));
        v33 = v54;

        v28 = v26;
LABEL_27:
        memcpy(__src, v55, sizeof(__src));
        v54 = v33;
        if (j__get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(__src) == 1)
        {
          break;
        }

        memcpy(v51, v55, sizeof(v51));
        v49[2] = v58;
        v49[3] = v59;
        v50 = v60;
        v49[0] = v56;
        v49[1] = v57;
        ColorSet.hash(into:)(v49);
        memcpy(__dst, v51, sizeof(__dst));
        sub_242C7C7BC(__dst);
        sub_242C7A5F8(v49, v33);

        result = sub_242F063E0();
        v24 ^= result;
        v25 = v28;
        if (!v22)
        {
          goto LABEL_19;
        }
      }

      MEMORY[0x245D279A0](v24);
      sub_242F04DD0();
      sub_242F04DD0();
      sub_242F063E0();
      v4 = v39;
      v10 = sub_242F05960();
      *(v37 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      v11 = (*(v39 + 48) + 56 * v10);
      *v11 = v46;
      v11[1] = v45;
      v11[2] = v19;
      v11[3] = v44;
      v11[4] = v43;
      v11[5] = v42;
      v11[6] = v41;
      ++*(v39 + 16);
      v2 = v40;
      v8 = v47;
      v5 = v48;
      v9 = v38;
    }

    v13 = v5;
    result = v36;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        v34 = 1 << *(v2 + 32);
        if (v34 >= 64)
        {
          bzero(v36, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v36 = -1 << v34;
        }

        v1 = v35;
        *(v2 + 16) = 0;
        goto LABEL_35;
      }

      v15 = v36[v5];
      ++v13;
      if (v15)
      {
        v12 = __clz(__rbit64(v15));
        v47 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

LABEL_37:
    __break(1u);
  }

  else
  {
LABEL_35:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_242CC2290(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_242F05A00();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_242F05800();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

unint64_t sub_242CC24B0(uint64_t a1, uint64_t a2)
{
  sub_242F05800();
  result = sub_242F05960();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_242CC2534()
{
  v1 = v0;

  v2 = sub_242F059B0();
  v3 = swift_unknownObjectRetain();
  v4 = sub_242CC150C(v3, v2, &qword_27ECF19A0, &unk_242F113E0, &qword_27ECF1940);
  v13 = v4;

  v5 = sub_242F05800();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    sub_242C8760C(0, &qword_27ECF1940);
    while (1)
    {
      v9 = *(*(v4 + 48) + 8 * v7);
      v10 = sub_242F05810();

      if (v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v11 = *(*(v4 + 48) + 8 * v7);
  sub_242CC3C94(v7);
  result = sub_242F05810();
  if (result)
  {
    *v1 = v13;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_242CC26BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1970);
  v2 = *v0;
  v3 = sub_242F059F0();
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
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

void *sub_242CC2818()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1968);
  v2 = *v0;
  v3 = sub_242F059F0();
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
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

void *sub_242CC2974()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1978);
  v2 = *v0;
  v3 = sub_242F059F0();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        result = sub_242C7CE5C(v19, v20, v22);
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

void *sub_242CC2ADC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1960);
  v2 = *v0;
  v3 = sub_242F059F0();
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
        v17 = 56 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v21 = v18[2];
        v20 = v18[3];
        v23 = v18[4];
        v22 = v18[5];
        v24 = v18[6];
        v25 = (*(v4 + 48) + v17);
        *v25 = *v18;
        v25[1] = v19;
        v25[2] = v21;
        v25[3] = v20;
        v25[4] = v23;
        v25[5] = v22;
        v25[6] = v24;
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

id sub_242CC2C74(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_242F059F0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_242CC2DB4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1970);
  result = sub_242F05A00();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_242F06390();

      sub_242F04DD0();
      result = sub_242F063E0();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_242CC2FEC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1968);
  result = sub_242F05A00();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v18 = *v16;
      v17 = v16[1];
      sub_242F06390();
      sub_242F04DD0();
      result = sub_242F063E0();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v18;
      v12[1] = v17;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_242CC3224()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1978);
  result = sub_242F05A00();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 24 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      sub_242F06390();
      sub_242C7CE5C(v18, v19, v20);
      Theme.ColorID.rawValue.getter();
      sub_242F04DD0();

      result = sub_242F063E0();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      ++*(v4 + 16);
      v2 = v28;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_242CC3498()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1960);
  result = sub_242F05A00();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v34 = v0;
    v35 = v2 + 56;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v36 = result + 56;
    v37 = v9;
    v38 = result;
    v39 = v2;
    while (v8)
    {
      v11 = __clz(__rbit64(v8));
      v45 = (v8 - 1) & v8;
LABEL_14:
      v46 = v5;
      v14 = (*(v2 + 48) + 56 * (v11 | (v5 << 6)));
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v42 = v14[3];
      v18 = v14[4];
      v41 = v14[5];
      v19 = v14[6];
      sub_242F06390();

      v40 = v19;

      v43 = v16;
      v44 = v15;
      sub_242F04DD0();
      v20 = 1 << *(v17 + 32);
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      else
      {
        v21 = -1;
      }

      v22 = v21 & *(v17 + 64);
      v23 = (v20 + 63) >> 6;

      v24 = 0;
      v25 = 0;
      if (!v22)
      {
LABEL_19:
        if (v23 <= v25 + 1)
        {
          v27 = v25 + 1;
        }

        else
        {
          v27 = v23;
        }

        v28 = v27 - 1;
        while (1)
        {
          v26 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v26 >= v23)
          {
            sub_242C7F83C(__src);
            memcpy(v53, __src, sizeof(v53));
            v22 = 0;
            v33 = v52;
            goto LABEL_27;
          }

          v22 = *(v17 + 64 + 8 * v26);
          ++v25;
          if (v22)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
        goto LABEL_35;
      }

      while (1)
      {
        v26 = v25;
LABEL_26:
        v29 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        v30 = v29 | (v26 << 6);
        v31 = (*(v17 + 48) + 944 * v30);
        memcpy(__dst, v31, sizeof(__dst));
        v32 = *(*(v17 + 56) + 8 * v30);
        memmove(__src, v31, 0x3B0uLL);
        v52 = v32;
        nullsub_2(__src);
        sub_242C7F7E0(__dst, v49);
        memcpy(v53, __src, sizeof(v53));
        v33 = v52;

        v28 = v26;
LABEL_27:
        memcpy(__src, v53, sizeof(__src));
        v52 = v33;
        if (j__get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(__src) == 1)
        {
          break;
        }

        memcpy(v49, v53, sizeof(v49));
        v47[2] = v56;
        v47[3] = v57;
        v48 = v58;
        v47[0] = v54;
        v47[1] = v55;
        ColorSet.hash(into:)(v47);
        memcpy(__dst, v49, sizeof(__dst));
        sub_242C7C7BC(__dst);
        sub_242C7A5F8(v47, v33);

        result = sub_242F063E0();
        v24 ^= result;
        v25 = v28;
        if (!v22)
        {
          goto LABEL_19;
        }
      }

      MEMORY[0x245D279A0](v24);
      sub_242F04DD0();
      sub_242F04DD0();
      sub_242F063E0();
      v4 = v38;
      result = sub_242F05960();
      *(v36 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v10 = (*(v38 + 48) + 56 * result);
      *v10 = v44;
      v10[1] = v43;
      v10[2] = v17;
      v10[3] = v42;
      v10[4] = v18;
      v10[5] = v41;
      v10[6] = v40;
      ++*(v38 + 16);
      v2 = v39;
      v8 = v45;
      v5 = v46;
      v9 = v37;
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v34;
        goto LABEL_33;
      }

      v13 = *(v35 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v45 = (v13 - 1) & v13;
        goto LABEL_14;
      }
    }

LABEL_35:
    __break(1u);
  }

  else
  {

LABEL_33:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_242CC38C4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_242F05A00();
  v6 = result;
  if (*(v4 + 16))
  {
    v25 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_242F05800();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v25;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

unint64_t sub_242CC3AD0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_242F05950();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_242F06390();

        sub_242F04DD0();
        v10 = sub_242F063E0();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_242CC3C94(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_242F05950();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_242F05800();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_242CC3E34(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_242CC170C();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_242CC26BC();
      goto LABEL_16;
    }

    sub_242CC2DB4();
  }

  v10 = *v4;
  sub_242F06390();
  sub_242F04DD0();
  result = sub_242F063E0();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_242F06110();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_242F06310();
  __break(1u);
  return result;
}

uint64_t sub_242CC3FB4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_242CC196C();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_242CC2818();
      goto LABEL_16;
    }

    sub_242CC2FEC();
  }

  v10 = *v4;
  sub_242F06390();
  sub_242F04DD0();
  result = sub_242F063E0();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_242F06110();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_242F06310();
  __break(1u);
  return result;
}

void sub_242CC4134(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_242CC2290(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      sub_242CC2C74(a4);
      goto LABEL_12;
    }

    v11 = a6;
    sub_242CC38C4(v9 + 1, a4);
  }

  v12 = *v6;
  v13 = sub_242F05800();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    sub_242C8760C(0, v11);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_242F05810();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_242F06310();
  __break(1u);
}

uint64_t sub_242CC42C4(uint64_t result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v27 = result;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 > v10 && (a5 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a5)
  {
    sub_242CC1BCC();
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_242CC2974();
      goto LABEL_14;
    }

    sub_242CC3224();
  }

  v12 = *v5;
  sub_242F06390();
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  result = sub_242F063E0();
  v13 = -1 << *(v12 + 32);
  a4 = result & ~v13;
  if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v14 = ~v13;
    do
    {
      v15 = *(v12 + 48) + 24 * a4;
      v6 = *v15;
      v7 = *(v15 + 8);
      v8 = *(v15 + 16);
      sub_242C7CE5C(*v15, v7, v8);
      v16 = Theme.ColorID.rawValue.getter();
      v18 = v17;
      if (v16 == Theme.ColorID.rawValue.getter() && v18 == v19)
      {
        goto LABEL_17;
      }

      v20 = sub_242F06110();
      sub_242C7CEB0(v6, v7, v8);

      if (v20)
      {
        goto LABEL_18;
      }

      a4 = (a4 + 1) & v14;
    }

    while (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_14:
  v21 = *v26;
  *(*v26 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v22 = *(v21 + 48) + 24 * a4;
  *v22 = v27;
  *(v22 + 8) = a2;
  *(v22 + 16) = a3;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_17:
  sub_242C7CEB0(v6, v7, v8);

LABEL_18:
  result = sub_242F06310();
  __break(1u);
  return result;
}

uint64_t sub_242CC4518(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v35 = result;
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_242CC1E60();
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_242CC2ADC();
        goto LABEL_29;
      }

      sub_242CC3498();
    }

    v8 = *v3;
    sub_242F06390();
    v9 = *v5;
    v10 = v5[1];
    v11 = v5[2];
    v12 = v5[3];
    v13 = v5[4];
    v14 = v5[5];
    v15 = v5[6];
    sub_242F04DD0();
    sub_242C7A3DC(v42, v11);
    v38 = v13;
    v39 = v12;
    sub_242F04DD0();
    v37 = v14;
    sub_242F04DD0();
    result = sub_242F063E0();
    v40 = v8 + 56;
    v41 = v8;
    v16 = -1 << *(v8 + 32);
    a2 = result & ~v16;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v36 = v15;
      v17 = ~v16;
      do
      {
        v18 = (*(v41 + 48) + 56 * a2);
        v20 = v18[2];
        v19 = v18[3];
        v22 = v18[4];
        v21 = v18[5];
        v23 = v18[6];
        v24 = *v18 == v9 && v18[1] == v10;
        if (v24 || (result = sub_242F06110(), (result & 1) != 0))
        {

          if (sub_242C746FC(v20) & 1) != 0 && (v19 == v39 ? (v25 = v22 == v38) : (v25 = 0), v25 || (sub_242F06110()))
          {
            if (v21 == v37 && v23 == v36)
            {
              goto LABEL_32;
            }

            v27 = sub_242F06110();

            if (v27)
            {
              goto LABEL_33;
            }
          }

          else
          {
          }
        }

        a2 = (a2 + 1) & v17;
      }

      while (((*(v40 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_29:
  v28 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v29 = *(v28 + 48) + 56 * a2;
  v30 = *(v35 + 16);
  *v29 = *v35;
  *(v29 + 16) = v30;
  *(v29 + 32) = *(v35 + 32);
  *(v29 + 48) = *(v35 + 48);
  v31 = *(v28 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
LABEL_32:

LABEL_33:
    result = sub_242F06310();
    __break(1u);
  }

  else
  {
    *(v28 + 16) = v33;
  }

  return result;
}

void sub_242CC4804(unint64_t a1, void *a2, char a3)
{
  v4 = a1;
  v5 = *v3;
  if ((*v3 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (v5 < 0)
      {
        v6 = *v3;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x245D26FC0](a1, a2, v6);
      sub_242C8760C(0, &qword_27ECF1940);

      swift_dynamicCast();
      sub_242CC2534();

      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  v7 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  if (a3)
  {
    v11 = v3;
    sub_242C8760C(0, &qword_27ECF1940);
    if (sub_242F05990() != *(v10 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_242F059A0();
    swift_dynamicCast();
    v7 = v16;
    v3 = v16;
    v12 = sub_242F05800();
    v13 = -1 << *(v10 + 32);
    v4 = v12 & ~v13;
    if ((*(v10 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(v10 + 48) + 8 * v4);
        v3 = sub_242F05810();

        if (v3)
        {
          goto LABEL_19;
        }

        v4 = (v4 + 1) & v14;
      }

      while (((*(v10 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
    }

    __break(1u);
  }

  if ((v4 & 0x8000000000000000) != 0 || 1 << *(v10 + 32) <= v4)
  {
    goto LABEL_24;
  }

  if (((*(v10 + 8 * (v4 >> 6) + 56) >> v4) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = v3;
  if (*(v10 + 36) != v7)
  {
    __break(1u);
LABEL_19:
  }

  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_242CC2C74(&qword_27ECF19A0);
  }

  sub_242CC3C94(v4);
  *v11 = v10;
}

void *sub_242CC4A88(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = [objc_opt_self() widgets];
  v9 = [objc_allocWithZone(type metadata accessor for WidgetExtensionProvider()) initWithOptions_];

  v4[3] = v9;
  v4[6] = 0;
  swift_unknownObjectWeakInit();
  v10 = sub_242F04F00();
  CHUISSetDefaultRendererBundleID();

  v4[4] = a1;
  v11 = a1;
  sub_242F05A80();

  v28 = 0xD000000000000012;
  v29 = 0x8000000242F59C60;
  if (a3)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0x746C7561666564;
  }

  if (!a3)
  {
    a3 = 0xE700000000000000;
  }

  MEMORY[0x245D26660](v12, a3);

  v13 = objc_allocWithZone(MEMORY[0x277CFA3D0]);
  v14 = sub_242F04F00();

  v15 = [v13 initWithInactiveIdentifier_];

  v4[2] = v15;
  v16 = v4[3];
  v17 = type metadata accessor for WidgetExtensionProviderObserver();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver__id] = 0;
  v19 = &v18[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_onChange];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = v16;
  sub_242F037A0();
  *&v18[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_provider] = v20;
  v27.receiver = v18;
  v27.super_class = v17;
  v21 = objc_msgSendSuper2(&v27, sel_init);
  v4[7] = v21;
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = &v21[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_onChange];
  v24 = *&v21[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_onChange];
  *v23 = sub_242CC5104;
  v23[1] = v22;
  v25 = v21;
  swift_retain_n();
  sub_242C655DC(v24);
  [*&v25[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_provider] registerObserver_];

  return v4;
}

uint64_t sub_242CC4D10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1988);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F112F0;
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_242F112E0;
  *(v1 + 32) = [objc_allocWithZone(MEMORY[0x277CFA400]) initWithMaximumRefreshes:1 perWindow:300.0];
  sub_242C86580(v1);
  swift_setDeallocating();
  swift_arrayDestroy();
  v2 = objc_allocWithZone(MEMORY[0x277CFA408]);
  v3 = sub_242F04F00();
  sub_242C8760C(0, &qword_27ECF03C0);
  sub_242C875BC(&qword_27ECF03C8, &qword_27ECF03C0);
  v4 = sub_242F054C0();

  v5 = [v2 initWithIdentifier:v3 rateLimits:v4];

  *(inited + 32) = v5;
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_242F112E0;
  *(v6 + 32) = [objc_allocWithZone(MEMORY[0x277CFA400]) initWithMaximumRefreshes:1 perWindow:1200.0];
  sub_242C86580(v6);
  swift_setDeallocating();
  swift_arrayDestroy();
  v7 = objc_allocWithZone(MEMORY[0x277CFA408]);
  v8 = sub_242F04F00();
  v9 = sub_242F054C0();

  v10 = [v7 initWithIdentifier:v8 rateLimits:v9];

  *(inited + 40) = v10;
  v11 = sub_242C865B0(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v11;
}

uint64_t sub_242CC4FBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242CC5170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4C54527369 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242CC51F4(uint64_t a1)
{
  v2 = sub_242CC53A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CC5230(uint64_t a1)
{
  v2 = sub_242CC53A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LinearTicksConfiguration.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1B00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CC53A4();
  sub_242F064C0();
  sub_242F05ED0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_242CC53A4()
{
  result = qword_27ECF1B08;
  if (!qword_27ECF1B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1B08);
  }

  return result;
}

uint64_t LinearTicksConfiguration.hashValue.getter()
{
  sub_242F06390();
  sub_242F063B0();
  return sub_242F063E0();
}

uint64_t LinearTicksConfiguration.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1B10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CC53A4();
  sub_242F06480();
  if (!v2)
  {
    v9 = sub_242F05DB0();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CC55DC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1B00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CC53A4();
  sub_242F064C0();
  sub_242F05ED0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_242CC5714()
{
  sub_242F06390();
  sub_242F063B0();
  return sub_242F063E0();
}

uint64_t sub_242CC5788()
{
  sub_242F06390();
  sub_242F063B0();
  return sub_242F063E0();
}

double sub_242CC57CC()
{
  if (qword_27ECEF780 != -1)
  {
    swift_once();
  }

  xmmword_27ECF19B8 = xmmword_27ECFAF30;
  qword_27ECF19C8 = byte_27ECFAF40;
  result = dbl_27ECFAF48[0];
  unk_27ECF19D0 = *dbl_27ECFAF48;
  return result;
}

double static Instrument.GaugeStyle.TicksStyle.default.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF98 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_27ECF19D8;
  result = *&xmmword_27ECF19B8;
  v3 = *&qword_27ECF19C8;
  *a1 = xmmword_27ECF19B8;
  *(a1 + 16) = v3;
  *(a1 + 32) = v1;
  return result;
}

uint64_t sub_242CC58D4(uint64_t a1)
{
  v2 = sub_242CCED20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CC5910(uint64_t a1)
{
  v2 = sub_242CCED20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CC594C()
{
  if (*v0)
  {
    return 0x7261656E696CLL;
  }

  else
  {
    return 0x72616C7563726963;
  }
}

uint64_t sub_242CC5984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72616C7563726963 && a2 == 0xE800000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7261656E696CLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

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

uint64_t sub_242CC5A5C(uint64_t a1)
{
  v2 = sub_242CCEC24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CC5A98(uint64_t a1)
{
  v2 = sub_242CCEC24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CC5AD4(uint64_t a1)
{
  v2 = sub_242CCEC78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CC5B10(uint64_t a1)
{
  v2 = sub_242CCEC78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Instrument.GaugeStyle.TicksStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1B18);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v20 = &v20 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1B20);
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1B28);
  v8 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v10 = &v20 - v9;
  v24 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CCEC24();
  sub_242F064C0();
  if (v12 < 0)
  {
    LOBYTE(v26) = 1;
    sub_242CCEC78();
    v17 = v20;
    v18 = v25;
    sub_242F05E40();
    LOBYTE(v26) = v24 & 1;
    sub_242CCECCC();
    v19 = v22;
    sub_242F05F20();
    (*(v21 + 8))(v17, v19);
    return (*(v8 + 8))(v10, v18);
  }

  else
  {
    LOBYTE(v26) = 0;
    sub_242CCED20();
    v15 = v25;
    sub_242F05E40();
    v26 = v24;
    v27 = v11;
    v28 = v12 & 1;
    v29 = v13;
    v30 = v14;
    sub_242CCED74();
    sub_242F05F20();
    (*(v23 + 8))(v7, v5);
    return (*(v8 + 8))(v10, v15);
  }
}

uint64_t Instrument.GaugeStyle.TicksStyle.hash(into:)()
{
  v1 = *v0;
  if ((v0[2] & 0x8000000000000000) != 0)
  {
    MEMORY[0x245D279A0](1);
    return sub_242F063B0();
  }

  else
  {
    v3 = v0[3];
    v2 = v0[4];
    v4 = *(v0 + 1);
    MEMORY[0x245D279A0](0);
    if ((*&v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v1;
    }

    else
    {
      v5 = 0.0;
    }

    MEMORY[0x245D279D0](*&v5);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x245D279D0](v6);
    sub_242F063B0();

    return sub_242C9457C(v3, v2);
  }
}

uint64_t Instrument.GaugeStyle.TicksStyle.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = v0[3];
  v5 = v0[4];
  sub_242F06390();
  if (v3 < 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242F063B0();
  }

  else
  {
    MEMORY[0x245D279A0](0);
    if ((*&v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v1;
    }

    else
    {
      v6 = 0.0;
    }

    MEMORY[0x245D279D0](*&v6);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v2;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x245D279D0](v7);
    sub_242F063B0();
    sub_242C9457C(v4, v5);
  }

  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.TicksStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1B58);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1B60);
  v32 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1B68);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v14);
  sub_242CCEC24();
  v15 = v36;
  sub_242F06480();
  if (!v15)
  {
    v36 = v11;
    v16 = v35;
    v17 = sub_242F05E10();
    v18 = (2 * *(v17 + 16)) | 1;
    v41 = v17;
    v42 = v17 + 32;
    v43 = 0;
    v44 = v18;
    v19 = sub_242C7FBE4();
    v20 = v10;
    if (v19 == 2 || v43 != v44 >> 1)
    {
      v22 = sub_242F05B10();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10);
      *v24 = &type metadata for Instrument.GaugeStyle.TicksStyle;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v19)
      {
        LOBYTE(v37) = 1;
        sub_242CCEC78();
        sub_242F05D10();
        v21 = v36;
        sub_242CCEDC8();
        v27 = v33;
        sub_242F05E00();
        (*(v34 + 8))(v6, v27);
        (*(v21 + 8))(v13, v20);
        swift_unknownObjectRelease();
        v28 = 0;
        v29 = v37;
        v30 = 0uLL;
        v31 = 0x8000000000000000;
      }

      else
      {
        LOBYTE(v37) = 0;
        sub_242CCED20();
        sub_242F05D10();
        v26 = v36;
        sub_242CCEE1C();
        sub_242F05E00();
        (*(v32 + 8))(v9, v7);
        (*(v26 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v29 = v37;
        v28 = v38;
        v31 = v39;
        v30 = v40;
      }

      *v16 = v29;
      *(v16 + 8) = v28;
      *(v16 + 16) = v31;
      *(v16 + 24) = v30;
    }
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v45);
}

uint64_t sub_242CC65A0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = v0[3];
  v5 = v0[4];
  sub_242F06390();
  if (v3 < 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242F063B0();
  }

  else
  {
    MEMORY[0x245D279A0](0);
    if ((*&v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v1;
    }

    else
    {
      v6 = 0.0;
    }

    MEMORY[0x245D279D0](*&v6);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v2;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x245D279D0](v7);
    sub_242F063B0();
    sub_242C9457C(v4, v5);
  }

  return sub_242F063E0();
}

double sub_242CC6654@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF98 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_27ECF19D8;
  result = *&xmmword_27ECF19B8;
  v3 = *&qword_27ECF19C8;
  *a1 = xmmword_27ECF19B8;
  *(a1 + 16) = v3;
  *(a1 + 32) = v1;
  return result;
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.OrnamentTextConfiguration.ornamentLabels.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.OrnamentTextConfiguration.ornamentFont.getter@<X0>(uint64_t a1@<X8>)
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

__n128 Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.OrnamentTextConfiguration.ornamentFont.setter(uint64_t a1)
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
  result = *(a1 + 32);
  *(v1 + 40) = result;
  *(v1 + 56) = *(a1 + 48);
  return result;
}

__n128 Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.OrnamentTextConfiguration.init(ornamentLabels:ornamentFont:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  v3 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  result = *(a2 + 32);
  *(a3 + 40) = result;
  *(a3 + 56) = *(a2 + 48);
  return result;
}

uint64_t sub_242CC6860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x746E656D616E726FLL && a2 == 0xEE00736C6562614CLL;
  if (v5 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E656D616E726FLL && a2 == 0xEC000000746E6F46)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

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

uint64_t sub_242CC6940(uint64_t a1)
{
  v2 = sub_242CCEF98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CC697C(uint64_t a1)
{
  v2 = sub_242CCEF98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.OrnamentTextConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1B80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 3);
  v17 = *(v1 + 1);
  v18 = v9;
  v19 = *(v1 + 5);
  v20 = v1[7];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CCEF98();

  sub_242F064C0();
  *&v13 = v8;
  LOBYTE(v11[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0160);
  sub_242C86D4C(&qword_27ECF01B8);
  sub_242F05F20();

  if (!v2)
  {
    v13 = v17;
    v14 = v18;
    v15 = v19;
    v16 = v20;
    v21 = 1;
    sub_242C94884(&v17, v11);
    sub_242C95488();
    sub_242F05F20();
    v11[0] = v13;
    v11[1] = v14;
    v11[2] = v15;
    v12 = v16;
    sub_242C954DC(v11);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.OrnamentTextConfiguration.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x245D279A0](*(*v0 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {

      sub_242F04DD0();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  return RasterFont.hash(into:)();
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.OrnamentTextConfiguration.hashValue.getter()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {

      sub_242F04DD0();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  RasterFont.hash(into:)();
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.OrnamentTextConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1B90);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CCEF98();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v8 = v5;
  v9 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0160);
  LOBYTE(v15[0]) = 0;
  sub_242C86D4C(&qword_27ECF01F0);
  sub_242F05E00();
  v10 = v16;
  v21 = 1;
  sub_242C95584();
  sub_242F05E00();
  (*(v8 + 8))(v7, v4);
  v26 = v22;
  v27 = v23;
  v28 = v24;
  v29 = v25;
  *&v15[0] = v10;
  *(v15 + 8) = v22;
  *(&v15[1] + 8) = v23;
  *(&v15[2] + 8) = v24;
  *(&v15[3] + 1) = v25;
  v11 = v15[0];
  v12 = v15[1];
  v13 = v15[3];
  v9[2] = v15[2];
  v9[3] = v13;
  *v9 = v11;
  v9[1] = v12;
  sub_242CCEFEC(v15, &v16);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  v16 = v10;
  v17 = v26;
  v18 = v27;
  v19 = v28;
  v20 = v29;
  return sub_242CCF024(&v16);
}

uint64_t sub_242CC707C()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {

      sub_242F04DD0();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  RasterFont.hash(into:)();
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.labelsFont.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v2;
  v8 = *(v1 + 48);
  v3 = v8;
  v9 = *(v1 + 64);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_242C94884(v7, v6);
}

__n128 Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.labelsFont.setter(uint64_t a1)
{
  v3 = *(v1 + 32);
  v6[0] = *(v1 + 16);
  v6[1] = v3;
  v6[2] = *(v1 + 48);
  v7 = *(v1 + 64);
  sub_242C954DC(v6);
  v4 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  result = *(a1 + 32);
  *(v1 + 48) = result;
  *(v1 + 64) = *(a1 + 48);
  return result;
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.labelColors.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[12];
  v3 = v1[13];
  *a1 = v1[11];
  a1[1] = v2;
  a1[2] = v3;
}

__n128 Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.labelColors.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];

  result = *a1;
  *(v1 + 88) = *a1;
  *(v1 + 104) = v3;
  return result;
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.labelOverrides.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.ornamentTextConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[9];
  v7[0] = v1[8];
  v7[1] = v2;
  v4 = v1[11];
  v8 = v1[10];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_242CA321C(v7, &v6, &qword_27ECF1B98);
}

__n128 Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.ornamentTextConfiguration.setter(uint64_t a1)
{
  v3 = v1[9];
  v8[0] = v1[8];
  v8[1] = v3;
  v4 = v1[11];
  v8[2] = v1[10];
  v8[3] = v4;
  sub_242C6D138(v8, &qword_27ECF1B98);
  v5 = *(a1 + 16);
  v1[8] = *a1;
  v1[9] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[10] = result;
  v1[11] = v7;
  return result;
}

__n128 Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.init(maxLabelsCount:inset:zeroLabelInset:labelsFont:continuousFill:hideFirstLabel:labelDivider:labelColors:edgeLabelsShiftCount:labelOverrides:ornamentTextConfiguration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, float a11@<S1>, uint64_t a12)
{
  v13 = *(a6 + 16);
  *a9 = a1;
  *(a9 + 8) = a10;
  *(a9 + 12) = a11;
  v14 = *(a2 + 16);
  *(a9 + 16) = *a2;
  *(a9 + 32) = v14;
  *(a9 + 48) = *(a2 + 32);
  *(a9 + 64) = *(a2 + 48);
  *(a9 + 72) = a3;
  *(a9 + 73) = a4;
  *(a9 + 80) = a5;
  *(a9 + 88) = *a6;
  *(a9 + 112) = a8;
  *(a9 + 120) = a7;
  *(a9 + 104) = v13;
  memset(v18, 0, sizeof(v18));
  sub_242C6D138(v18, &qword_27ECF1B98);
  v15 = *(a12 + 16);
  *(a9 + 128) = *a12;
  *(a9 + 144) = v15;
  result = *(a12 + 32);
  v17 = *(a12 + 48);
  *(a9 + 160) = result;
  *(a9 + 176) = v17;
  return result;
}

uint64_t sub_242CC75F4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6C6562614C78616DLL;
    v7 = 0x6562614C6F72657ALL;
    v8 = 0x6F46736C6562616CLL;
    if (a1 != 3)
    {
      v8 = 0x6F756E69746E6F63;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x7465736E69;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x65764F6C6562616CLL;
    v2 = 0xD000000000000014;
    if (a1 != 9)
    {
      v2 = 0xD000000000000019;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x7372694665646968;
    v4 = 0x7669446C6562616CLL;
    if (a1 != 6)
    {
      v4 = 0x6C6F436C6562616CLL;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_242CC77A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242CD288C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242CC77DC(uint64_t a1)
{
  v2 = sub_242CCF88C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CC7818(uint64_t a1)
{
  v2 = sub_242CCF88C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BA0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = *(v1 + 32);
  v35 = *(v1 + 16);
  v36 = v7;
  v37 = *(v1 + 48);
  v38 = *(v1 + 64);
  v43 = *(v1 + 72);
  v22 = *(v1 + 73);
  v8 = *(v1 + 80);
  v20 = *(v1 + 88);
  v21 = v8;
  v9 = *(v1 + 104);
  v18 = *(v1 + 96);
  v19 = v9;
  v10 = *(v1 + 112);
  v16 = *(v1 + 120);
  v17 = v10;
  v11 = *(v1 + 144);
  v39 = *(v1 + 128);
  v40 = v11;
  v12 = *(v1 + 176);
  v41 = *(v1 + 160);
  v42 = v12;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CCF88C();
  sub_242F064C0();
  LOBYTE(v25) = 0;
  v13 = v23;
  sub_242F05F00();
  if (!v13)
  {
    v14 = v20;
    LOBYTE(v25) = 1;
    sub_242F05EF0();
    LOBYTE(v25) = 2;
    sub_242F05EF0();
    v31 = v35;
    v32 = v36;
    v33 = v37;
    v34 = v38;
    v45 = 3;
    sub_242C94884(&v35, &v25);
    sub_242C95488();
    sub_242F05F20();
    v29[0] = v31;
    v29[1] = v32;
    v29[2] = v33;
    v30 = v34;
    sub_242C954DC(v29);
    LOBYTE(v25) = 4;
    sub_242F05ED0();
    LOBYTE(v25) = 5;
    sub_242F05ED0();
    LOBYTE(v25) = 6;
    sub_242F05F00();
    *&v25 = v14;
    *(&v25 + 1) = v18;
    *&v26 = v19;
    LOBYTE(v24[0]) = 7;
    sub_242CCF8E0();

    sub_242F05F20();

    *&v25 = v17;
    LOBYTE(v24[0]) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0160);
    sub_242C86D4C(&qword_27ECF01B8);
    sub_242F05EB0();
    *&v25 = v16;
    LOBYTE(v24[0]) = 9;
    sub_242F05F20();
    v25 = v39;
    v26 = v40;
    v27 = v41;
    v28 = v42;
    v44 = 10;
    sub_242CA321C(&v39, v24, &qword_27ECF1B98);
    sub_242CCF934();
    sub_242F05EB0();
    v24[0] = v25;
    v24[1] = v26;
    v24[2] = v27;
    v24[3] = v28;
    sub_242C6D138(v24, &qword_27ECF1B98);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.hash(into:)(uint64_t a1)
{
  v3 = v1[10];
  v4 = v1[11];
  v6 = v1[12];
  v5 = v1[13];
  v7 = v1[14];
  v13 = v1[15];
  v14 = v1[16];
  MEMORY[0x245D279A0](*v1);
  sub_242F063C0();
  sub_242F063C0();
  RasterFont.hash(into:)();
  sub_242F063B0();
  sub_242F063B0();
  MEMORY[0x245D279A0](v3);
  sub_242C79508(a1, v4);
  sub_242C79508(a1, v6);
  if (v5)
  {
    sub_242F063B0();
    sub_242C79508(a1, v5);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_242F063B0();
    goto LABEL_9;
  }

  sub_242F063B0();
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_242F063B0();
  MEMORY[0x245D279A0](*(v7 + 16));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 40;
    do
    {

      sub_242F04DD0();

      v9 += 16;
      --v8;
    }

    while (v8);
  }

LABEL_9:
  MEMORY[0x245D279A0](v13);
  if (!v14)
  {
    return sub_242F063B0();
  }

  sub_242F063B0();
  MEMORY[0x245D279A0](*(v14 + 16));
  v10 = *(v14 + 16);
  if (v10)
  {
    v11 = v14 + 40;
    do
    {

      sub_242F04DD0();

      v11 += 16;
      --v10;
    }

    while (v10);
  }

  return RasterFont.hash(into:)();
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.hashValue.getter()
{
  sub_242F06390();
  Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BC0);
  v5 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v7 = &v33 - v6;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CCF88C();
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    return sub_242C6D138(&v59, &qword_27ECF1B98);
  }

  else
  {
    v8 = v5;
    LOBYTE(v59) = 0;
    v46 = sub_242F05DE0();
    LOBYTE(v59) = 1;
    sub_242F05DD0();
    v10 = v9;
    LOBYTE(v59) = 2;
    sub_242F05DD0();
    v13 = v12;
    v89 = 3;
    sub_242C95584();
    sub_242F05E00();
    v94 = v90;
    v95 = v91;
    v96 = v92;
    v97 = v93;
    LOBYTE(v59) = 4;
    v14 = sub_242F05DB0();
    LOBYTE(v59) = 5;
    v44 = sub_242F05DB0();
    LODWORD(v45) = v14;
    LOBYTE(v59) = 6;
    v43 = sub_242F05DE0();
    LOBYTE(v48[0]) = 7;
    sub_242CCF988();
    sub_242F05E00();
    *v42 = v59;
    *&v42[16] = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0160);
    LOBYTE(v48[0]) = 8;
    sub_242C86D4C(&qword_27ECF01F0);
    sub_242F05D90();
    v15 = v59;
    LOBYTE(v48[0]) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BD0);
    sub_242C7E000(&qword_27ECF1BD8, &qword_27ECF1BD0);
    sub_242F05D90();
    LODWORD(v41) = BYTE8(v59);
    v16 = v59;
    v80 = 10;
    sub_242CCF9DC();
    sub_242F05D90();
    v40 = v45 & 1;
    v44 &= 1u;
    v17 = 4;
    if (!v41)
    {
      v17 = v16;
    }

    v45 = v17;
    (*(v8 + 8))(v7, v98);
    v18 = v81;
    v98 = v81;
    v19 = v83;
    v41 = v83;
    v36 = v84;
    v37 = v82;
    v20 = v85;
    v21 = v87;
    v38 = v87;
    v39 = v85;
    v34 = v88;
    v35 = v86;
    memset(v47, 0, sizeof(v47));
    sub_242C6D138(v47, &qword_27ECF1B98);
    *&v48[0] = v46;
    *(&v48[0] + 1) = __PAIR64__(v13, v10);
    *&v51 = v97;
    v48[1] = v94;
    v49 = v95;
    v50 = v96;
    BYTE8(v51) = v40;
    BYTE9(v51) = v44;
    *&v52 = v43;
    *(&v52 + 1) = *v42;
    v53 = *&v42[8];
    *&v54 = v15;
    *(&v54 + 1) = v45;
    *&v55 = v18;
    v22 = v37;
    *(&v55 + 1) = v37;
    *&v56 = v19;
    v23 = v36;
    *(&v56 + 1) = v36;
    *&v57 = v20;
    v24 = v35;
    *(&v57 + 1) = v35;
    *&v58 = v21;
    v25 = v34;
    *(&v58 + 1) = v34;
    v26 = v94;
    *a2 = v48[0];
    a2[1] = v26;
    v27 = v50;
    a2[2] = v49;
    a2[3] = v27;
    v28 = v51;
    v29 = v52;
    v30 = v54;
    a2[6] = v53;
    a2[7] = v30;
    a2[4] = v28;
    a2[5] = v29;
    v31 = v56;
    a2[8] = v55;
    a2[9] = v31;
    v32 = v58;
    a2[10] = v57;
    a2[11] = v32;
    sub_242CCFA30(v48, &v59);
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    *&v59 = v46;
    *(&v59 + 1) = __PAIR64__(v13, v10);
    v60 = v94;
    v61 = v95;
    v62 = v96;
    v63 = v97;
    v64 = v40;
    v65 = v44;
    v66 = v43;
    v67 = *v42;
    v68 = *&v42[8];
    v69 = *&v42[16];
    v70 = v15;
    v71 = v45;
    v72 = v98;
    v73 = v22;
    v74 = v41;
    v75 = v23;
    v76 = v39;
    v77 = v24;
    v78 = v38;
    v79 = v25;
    return sub_242CCFA68(&v59);
  }
}
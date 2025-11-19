uint64_t sub_1ABACF828()
{
  sub_1ABAB6548();
  v3 = v2;
  switch(v4)
  {
    case 1:
      v0 = 0xE600000000000000;
      v3 = sub_1ABA8B08C();
      break;
    case 2:
      v3 = sub_1ABA8ACF8();
      v0 = 0xE900000000000073;
      break;
    case 3:
      v3 = sub_1ABA8E050();
      break;
    case 4:
      v3 = sub_1ABA8B09C();
      break;
    case 5:
      v5 = sub_1ABA8B08C();
      v3 = sub_1ABA9FBAC(v5);
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(v1)
  {
    case 1:
      v6 = 0xE600000000000000;
      sub_1ABA83E94();
      break;
    case 2:
      sub_1ABA8A5B0();
      v6 = 0xE900000000000073;
      break;
    case 3:
      sub_1ABAD4EC8();
      break;
    case 4:
      sub_1ABA8B220();
      break;
    case 5:
      sub_1ABA83E94();
      sub_1ABA8AE90();
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28();
  }

  return v8 & 1;
}

uint64_t sub_1ABACF934()
{
  sub_1ABA7BB94();
  v3 = v0;
  if (v0)
  {
    if (v0 == 1)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0x6C65646F6DLL;
    }

    if (v3 == 1)
    {
      v5 = 0x80000001ABF86090;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0x80000001ABF86070;
    v4 = v2 + 2;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v6 = v2;
    }

    else
    {
      v6 = 0x6C65646F6DLL;
    }

    if (v1 == 1)
    {
      v7 = 0x80000001ABF86090;
    }

    else
    {
      v7 = 0xE500000000000000;
    }
  }

  else
  {
    v7 = 0x80000001ABF86070;
    v6 = v2 + 2;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1ABA8BE28();
  }

  return v9 & 1;
}

uint64_t sub_1ABACFA08(char a1)
{
  sub_1ABA9FAD8(a1, 0xD000000000000017);
  if (v10)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  v4 = v3 | 0x8000000000000000;
  sub_1ABAD4F08();
  if (v10)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = v5 == v6 && v4 == (v9 | 0x8000000000000000);
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1ABA8BE28();
  }

  return v11 & 1;
}

uint64_t sub_1ABACFA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return sub_1ABA7E270();
  }

  else
  {
    return sub_1ABA946D8();
  }
}

uint64_t sub_1ABACFAA8()
{
  sub_1ABA829E0();
  v3 = v2;
  v4 = 0xEA00000000007963;
  v5 = "semistructuredSearch";
  switch(v6)
  {
    case 1:
      v3 = sub_1ABA8BC08();
      break;
    case 2:
      v3 = sub_1ABAD4EE8();
      break;
    case 3:
      sub_1ABA8B08C();
      goto LABEL_7;
    case 4:
      v4 = 0x80000001ABF7F180;
      v3 = 0xD000000000000014;
      break;
    case 5:
      v3 = sub_1ABA8C8F0(16);
      break;
    case 6:
LABEL_7:
      sub_1ABA83EA4();
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      sub_1ABAA0674();
      break;
    case 2:
      sub_1ABA9639C();
      break;
    case 3:
      sub_1ABA83E94();
      goto LABEL_14;
    case 4:
      v0 = (v5 - 32) | 0x8000000000000000;
      sub_1ABA7BB94();
      v2 = v7 | 4;
      break;
    case 5:
      sub_1ABAD4F14();
      break;
    case 6:
LABEL_14:
      sub_1ABA8CC50();
      break;
    default:
      break;
  }

  if (v3 == v2 && v4 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1ABA9055C();
  }

  return v9 & 1;
}

uint64_t sub_1ABACFBFC()
{
  sub_1ABA9FE38();
  switch(v2)
  {
    case 1:
      sub_1ABAA0868();
      break;
    case 2:
      v0 = 0xEF6C65646F4D6C61;
      break;
    case 3:
      v0 = 0x80000001ABF7F110;
      break;
    case 4:
      sub_1ABA8CC50();
      break;
    case 5:
      v0 = 0x80000001ABF7F130;
      break;
    default:
      break;
  }

  sub_1ABA95098();
  switch(v6)
  {
    case 1:
      sub_1ABAB685C();
      break;
    case 2:
      v4 = 0x75747865746E6F63;
      v1 = 0xEF6C65646F4D6C61;
      break;
    case 3:
      v4 = 0xD000000000000011;
      v1 = (v5 - 32) | 0x8000000000000000;
      break;
    case 4:
      sub_1ABA83EA4();
      break;
    case 5:
      sub_1ABA8A488();
      v4 = 0xD000000000000015;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28();
  }

  return v8 & 1;
}

uint64_t sub_1ABACFDAC(unsigned __int8 a1, char a2)
{
  v2 = 1953718636;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1954047342;
    }

    else
    {
      v4 = 0x7473726966;
    }

    if (v3 == 1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1953718636;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 1954047342;
    }

    else
    {
      v2 = 0x7473726966;
    }

    if (a2 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28();
  }

  return v8 & 1;
}

uint64_t sub_1ABACFE80()
{
  v0 = 0xEC0000006449746ELL;
  sub_1ABA8C508();
  v3 = v2;
  v4 = 0xEC0000006449746ELL;
  switch(v5)
  {
    case 1:
      v3 = 0x696669746E656469;
      v4 = 0xEA00000000007265;
      break;
    case 2:
      sub_1ABAB5988();
      sub_1ABAB685C();
      break;
    case 3:
      v4 = 0xE700000000000000;
      v3 = sub_1ABA95FB4();
      break;
    case 4:
      v4 = 0xE800000000000000;
      v3 = sub_1ABAB57C0();
      break;
    case 5:
      sub_1ABAA16B0();
      sub_1ABA82D80();
      break;
    case 6:
      v4 = 0xE500000000000000;
      v3 = sub_1ABA8C6D0();
      break;
    case 7:
      v4 = 0xE800000000000000;
      v3 = sub_1ABAA5E90();
      break;
    case 8:
      v4 = 0xE600000000000000;
      v3 = sub_1ABA96F2C();
      break;
    case 9:
      sub_1ABA7AB48();
      sub_1ABAA0874();
      v4 = v6 + 20;
      break;
    case 10:
      v3 = sub_1ABAA1228();
      v4 = 0xEA00000000007478;
      break;
    case 11:
      v4 = 0xE700000000000000;
      v3 = sub_1ABAB55F0();
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v2 = 0x696669746E656469;
      v0 = 0xEA00000000007265;
      break;
    case 2:
      sub_1ABA951D8();
      sub_1ABAA0868();
      break;
    case 3:
      v0 = 0xE700000000000000;
      sub_1ABA90C38();
      break;
    case 4:
      v0 = 0xE800000000000000;
      sub_1ABAABC20();
      break;
    case 5:
      sub_1ABA88568();
      sub_1ABAB523C();
      break;
    case 6:
      v0 = 0xE500000000000000;
      sub_1ABAA0B3C();
      break;
    case 7:
      v0 = 0xE800000000000000;
      sub_1ABA9A254();
      break;
    case 8:
      v0 = 0xE600000000000000;
      sub_1ABAA0A00();
      break;
    case 9:
      sub_1ABA95428();
      sub_1ABAA0874();
      v0 = v7 + 20;
      break;
    case 10:
      sub_1ABAA105C();
      v0 = 0xEA00000000007478;
      break;
    case 11:
      v0 = 0xE700000000000000;
      sub_1ABAB53F8();
      break;
    default:
      break;
  }

  if (v3 == v2 && v4 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1ABA9055C();
  }

  return v9 & 1;
}

uint64_t sub_1ABAD0068()
{
  sub_1ABA9FCC4();
  sub_1ABA9FE38();
  switch(v2)
  {
    case 2:
      v0 = 0xED00007265626D75;
      break;
    case 3:
      v0 = 0xE800000000000000;
      break;
    default:
      break;
  }

  sub_1ABA95098();
  switch(v5)
  {
    case 1:
      v4 = 0x6C61697274;
      break;
    case 2:
      v4 = 0x4E74656863746172;
      v1 = 0xED00007265626D75;
      break;
    case 3:
      v1 = 0xE800000000000000;
      v4 = 0x6F666E4972657375;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1ABA8BE28();
  }

  return v7 & 1;
}

uint64_t sub_1ABAD01A0(char a1, char a2)
{
  v2 = "intelligencePlatformCore";
  if (a1)
  {
    v3 = "absoluteFilePath";
  }

  else
  {
    v3 = "intelligencePlatformCore";
  }

  if (a2)
  {
    v2 = "absoluteFilePath";
  }

  if ((v3 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v4 = 1;
  }

  else
  {
    sub_1ABA97980();
    sub_1ABA8BA2C();
    v4 = sub_1ABF25054();
  }

  return v4 & 1;
}

uint64_t sub_1ABAD0234(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000067;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  sub_1ABAD4F08();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28();
  }

  return v8 & 1;
}

uint64_t sub_1ABAD02C8(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000077;
  v3 = 0x6B5A7374726F7073;
  v4 = a1;
  v5 = 0x6B5A7374726F7073;
  v6 = 0xE900000000000077;
  v7 = "musicRecommendation";
  switch(v4)
  {
    case 1:
      v6 = 0x80000001ABF86030;
      v5 = 0xD000000000000013;
      break;
    case 2:
      v5 = sub_1ABA8C8F0(17);
      break;
    case 3:
      v6 = 0xE600000000000000;
      v5 = 0x6C6F6F747069;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = (v7 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000013;
      break;
    case 2:
      sub_1ABAD4F14();
      break;
    case 3:
      v2 = 0xE600000000000000;
      v3 = 0x6C6F6F747069;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1ABA9055C();
  }

  return v9 & 1;
}

uint64_t sub_1ABAD0400()
{
  sub_1ABA9FE38();
  switch(v2)
  {
    case 1:
      v0 = 0xEB0000000044495FLL;
      break;
    case 2:
      v0 = 0xE700000000000000;
      break;
    case 3:
      v0 = 0xE600000000000000;
      break;
    case 4:
      v0 = 0xE800000000000000;
      break;
    default:
      break;
  }

  sub_1ABA95098();
  switch(v5)
  {
    case 1:
      v4 = 0x61746164696B6957;
      v1 = 0xEB0000000044495FLL;
      break;
    case 2:
      v1 = 0xE700000000000000;
      v4 = 0x44495F6D616441;
      break;
    case 3:
      v1 = 0xE600000000000000;
      v4 = 0x44495F434D55;
      break;
    case 4:
      v1 = 0xE800000000000000;
      v4 = 0x44495F7374617453;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1ABA8BE28();
  }

  return v7 & 1;
}

uint64_t sub_1ABAD0584(unsigned __int8 a1, char a2)
{
  v2 = 0xEE007372657A696CLL;
  v3 = 0x616D726F4E6C6C61;
  v4 = a1;
  v5 = 0x616D726F4E6C6C61;
  v6 = 0xEE007372657A696CLL;
  v7 = "filterSpecialCharacter";
  switch(v4)
  {
    case 1:
      sub_1ABAB685C();
      break;
    case 2:
      v5 = 0x6F72706572506F6ELL;
      v6 = 0xEF676E6973736563;
      break;
    case 3:
      v6 = 0x80000001ABF81BE0;
      v5 = 0xD000000000000016;
      break;
    case 4:
      v5 = 0x696C617469706163;
      v6 = 0xEA0000000000657ALL;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v5 = 0x74786554646170;
      break;
    case 6:
      v5 = sub_1ABA8C8F0(18);
      break;
    case 7:
      v6 = 0xE700000000000000;
      v5 = 0x6E756870726F6DLL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      sub_1ABAA0868();
      break;
    case 2:
      v3 = 0x6F72706572506F6ELL;
      v2 = 0xEF676E6973736563;
      break;
    case 3:
      v2 = (v7 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000016;
      break;
    case 4:
      v3 = 0x696C617469706163;
      v2 = 0xEA0000000000657ALL;
      break;
    case 5:
      v2 = 0xE700000000000000;
      v3 = 0x74786554646170;
      break;
    case 6:
      sub_1ABAD4F14();
      break;
    case 7:
      v2 = 0xE700000000000000;
      v3 = 0x6E756870726F6DLL;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1ABA9055C();
  }

  return v9 & 1;
}

uint64_t sub_1ABAD07A8(char a1, char a2)
{
  v2 = 0xD000000000000011;
  v3 = "nonDiscretionary";
  v5 = 0xD000000000000011;
  v6 = "nonDiscretionary";
  switch(a1)
  {
    case 1:
      v6 = "includesOpenRange";
      goto LABEL_8;
    case 2:
      v6 = "includesClosedRange";
      goto LABEL_8;
    case 3:
      v6 = "includedInOpenRange";
      v5 = 0xD000000000000015;
      break;
    case 4:
      v6 = "includedInClosedRange";
      goto LABEL_10;
    case 5:
      v6 = "partialRangeFrom";
LABEL_8:
      v5 = 0xD000000000000013;
      break;
    case 6:
      v6 = "partialRangeThrough";
LABEL_10:
      v5 = 0xD000000000000010;
      break;
    case 7:
      v6 = "partialRangeUpTo";
      v5 = 0xD000000000000011;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "includesOpenRange";
      goto LABEL_18;
    case 2:
      v3 = "includesClosedRange";
      goto LABEL_18;
    case 3:
      v3 = "includedInOpenRange";
      v2 = 0xD000000000000015;
      break;
    case 4:
      v3 = "includedInClosedRange";
      goto LABEL_20;
    case 5:
      v3 = "partialRangeFrom";
LABEL_18:
      v2 = 0xD000000000000013;
      break;
    case 6:
      v3 = "partialRangeThrough";
LABEL_20:
      v2 = 0xD000000000000010;
      break;
    case 7:
      v3 = "partialRangeUpTo";
      break;
    default:
      break;
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28();
  }

  return v8 & 1;
}

uint64_t sub_1ABAD094C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6974657263736964;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = 0x80000001ABF86150;
  }

  else
  {
    v4 = 0xED00007972616E6FLL;
  }

  if (a2)
  {
    v5 = 0x6974657263736964;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (a2)
  {
    v6 = 0xED00007972616E6FLL;
  }

  else
  {
    v6 = 0x80000001ABF86150;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28();
  }

  return v8 & 1;
}

uint64_t sub_1ABAD09F0(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000079;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  sub_1ABAD4F08();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28();
  }

  return v8 & 1;
}

uint64_t sub_1ABAD0A7C(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000657079;
  v3 = 0x745F6C616E676973;
  v4 = a1;
  v5 = 0x745F6C616E676973;
  v6 = 0xEB00000000657079;
  switch(v4)
  {
    case 1:
      v5 = 0x745F797469746E65;
      v6 = 0xEB00000000657079;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v5 = 0x7361696C61;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v5 = 0x44495F444DLL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x745F797469746E65;
      break;
    case 2:
      v2 = 0xE500000000000000;
      v3 = 0x7361696C61;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v3 = 0x44495F444DLL;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA9055C();
  }

  return v8 & 1;
}

uint64_t sub_1ABAD0BB0()
{
  sub_1ABA9FE38();
  switch(v2)
  {
    case 1:
      sub_1ABAB5988();
      sub_1ABAA0868();
      break;
    case 2:
      v0 = 0xE700000000000000;
      sub_1ABA95FB4();
      break;
    case 3:
      v0 = 0xE800000000000000;
      sub_1ABAB57C0();
      break;
    case 4:
      sub_1ABAA16B0();
      sub_1ABAB523C();
      break;
    case 5:
      sub_1ABA8C6D0();
      break;
    case 6:
      v0 = 0xE800000000000000;
      sub_1ABAA5E90();
      break;
    case 7:
      v0 = 0xE600000000000000;
      sub_1ABA96F2C();
      break;
    case 8:
      sub_1ABA7AB48();
      sub_1ABAA0874();
      v0 = v3 + 20;
      break;
    case 9:
      sub_1ABAA1228();
      v0 = 0xEA00000000007478;
      break;
    case 10:
      v0 = 0xE700000000000000;
      sub_1ABAB55F0();
      break;
    default:
      break;
  }

  sub_1ABA95098();
  switch(v6)
  {
    case 1:
      sub_1ABA951D8();
      sub_1ABAB685C();
      break;
    case 2:
      v1 = 0xE700000000000000;
      sub_1ABA90C38();
      break;
    case 3:
      v1 = 0xE800000000000000;
      sub_1ABAABC20();
      break;
    case 4:
      sub_1ABA88568();
      sub_1ABA82D80();
      break;
    case 5:
      sub_1ABAA0B3C();
      break;
    case 6:
      v1 = 0xE800000000000000;
      sub_1ABA9A254();
      break;
    case 7:
      v1 = 0xE600000000000000;
      sub_1ABAA0A00();
      break;
    case 8:
      sub_1ABA95428();
      sub_1ABAA0874();
      v1 = v7 + 20;
      break;
    case 9:
      sub_1ABAA105C();
      v1 = 0xEA00000000007478;
      break;
    case 10:
      v1 = 0xE700000000000000;
      sub_1ABAB53F8();
      break;
    default:
      break;
  }

  if (v4 == v5 && v0 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1ABA8BE28();
  }

  return v9 & 1;
}

uint64_t sub_1ABAD0D4C(unsigned __int8 a1, char a2)
{
  v2 = 0x656C706F6570;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x656C706F6570;
  switch(v4)
  {
    case 1:
      v5 = sub_1ABA7CFCC(0x61636F6Cu);
      v3 = 0xE900000000000073;
      break;
    case 2:
      v5 = 0x73746E657665;
      break;
    case 3:
      v5 = 0x616C6C656373696DLL;
      v3 = 0xED000073756F656ELL;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      sub_1ABA9FCC4();
      sub_1ABAB57D4();
      v6 = 0xE900000000000073;
      break;
    case 2:
      v2 = 0x73746E657665;
      break;
    case 3:
      v2 = 0x616C6C656373696DLL;
      v6 = 0xED000073756F656ELL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28();
  }

  return v8 & 1;
}

uint64_t sub_1ABAD0E8C()
{
  sub_1ABAD4F08();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1ABF25054();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1ABAD0F00(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000474946;
  v3 = 0x4E4F435F4452454ELL;
  v4 = a1;
  v5 = 0x4E4F435F4452454ELL;
  v6 = 0xEB00000000474946;
  switch(v4)
  {
    case 1:
      v7 = "STANDING_MULTITASK";
      goto LABEL_10;
    case 2:
      v6 = 0x80000001ABF7EC70;
      v5 = 0xD000000000000028;
      break;
    case 3:
      v6 = 0x80000001ABF7ECA0;
      v5 = 0xD000000000000020;
      break;
    case 4:
      v6 = 0x80000001ABF7ECD0;
      v5 = 0xD00000000000001CLL;
      break;
    case 5:
      v6 = 0x80000001ABF7ECF0;
      v5 = 0xD00000000000002ELL;
      break;
    case 6:
      v6 = 0x80000001ABF7ED20;
      v5 = 0xD00000000000001DLL;
      break;
    case 7:
      v7 = "KNOWLEDGE_CONSTRUCTION_PERSON";
LABEL_10:
      v6 = v7 | 0x8000000000000000;
      v5 = 0xD00000000000001FLL;
      break;
    case 8:
      break;
    default:
      v6 = 0x80000001ABF7EC20;
      v5 = 0xD000000000000022;
      break;
  }

  switch(a2)
  {
    case 1:
      v8 = "STANDING_MULTITASK";
      goto LABEL_20;
    case 2:
      v2 = 0x80000001ABF7EC70;
      v3 = 0xD000000000000028;
      break;
    case 3:
      v2 = 0x80000001ABF7ECA0;
      v3 = 0xD000000000000020;
      break;
    case 4:
      v2 = 0x80000001ABF7ECD0;
      v3 = 0xD00000000000001CLL;
      break;
    case 5:
      v2 = 0x80000001ABF7ECF0;
      v3 = 0xD00000000000002ELL;
      break;
    case 6:
      v2 = 0x80000001ABF7ED20;
      v3 = 0xD00000000000001DLL;
      break;
    case 7:
      v8 = "KNOWLEDGE_CONSTRUCTION_PERSON";
LABEL_20:
      v2 = v8 | 0x8000000000000000;
      v3 = 0xD00000000000001FLL;
      break;
    case 8:
      break;
    default:
      v2 = 0x80000001ABF7EC20;
      v3 = 0xD000000000000022;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1ABA9055C();
  }

  return v10 & 1;
}

uint64_t sub_1ABAD10F8()
{
  sub_1ABA8B604();
  v2 = 0xE700000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      sub_1ABAA0868();
      break;
    case 2:
      v5 = sub_1ABA7CFCC(0x616C6572u);
      v2 = 0xEE00644970696873;
      break;
    case 3:
      v5 = 0xD000000000000015;
      v2 = 0x80000001ABF859E0;
      break;
    case 4:
      v2 = 0xE600000000000000;
      v5 = 0x7463656A626FLL;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(v0)
  {
    case 1:
      sub_1ABAB685C();
      break;
    case 2:
      sub_1ABAB57D4();
      v6 = 0xEE00644970696873;
      break;
    case 3:
      sub_1ABA8A488();
      break;
    case 4:
      v6 = 0xE600000000000000;
      v1 = 0x7463656A626FLL;
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28();
  }

  return v8 & 1;
}

uint64_t sub_1ABAD1260(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x4974736575716572;
  v4 = 0xE900000000000064;
  v5 = a1;
  v6 = 0x4974736575716572;
  switch(v5)
  {
    case 1:
      v6 = sub_1ABAB5988();
      v4 = 0xE900000000000065;
      break;
    case 2:
      v4 = 0xE700000000000000;
      v6 = sub_1ABA95FB4();
      break;
    case 3:
      v4 = 0xE800000000000000;
      v6 = sub_1ABAB57C0();
      break;
    case 4:
      sub_1ABAA16B0();
      sub_1ABA82D80();
      break;
    case 5:
      v4 = 0xE500000000000000;
      v6 = sub_1ABA8C6D0();
      break;
    case 6:
      v4 = 0xE800000000000000;
      v6 = sub_1ABAA5E90();
      break;
    case 7:
      v4 = 0xE600000000000000;
      v6 = sub_1ABA96F2C();
      break;
    case 8:
      v6 = sub_1ABA7AB48();
      v4 = 0xE900000000000079;
      break;
    case 9:
      v6 = sub_1ABAA1228();
      v4 = 0xEA00000000007478;
      break;
    case 10:
      v4 = 0xE700000000000000;
      v6 = sub_1ABAB55F0();
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      sub_1ABA951D8();
      v2 = 0xE900000000000065;
      break;
    case 2:
      v2 = 0xE700000000000000;
      sub_1ABA90C38();
      break;
    case 3:
      v2 = 0xE800000000000000;
      sub_1ABAABC20();
      break;
    case 4:
      sub_1ABA88568();
      sub_1ABAB523C();
      break;
    case 5:
      v2 = 0xE500000000000000;
      sub_1ABAA0B3C();
      break;
    case 6:
      v2 = 0xE800000000000000;
      sub_1ABA9A254();
      break;
    case 7:
      v2 = 0xE600000000000000;
      sub_1ABAA0A00();
      break;
    case 8:
      sub_1ABA95428();
      v2 = 0xE900000000000079;
      break;
    case 9:
      sub_1ABAA105C();
      v2 = 0xEA00000000007478;
      break;
    case 10:
      v2 = 0xE700000000000000;
      sub_1ABAB53F8();
      break;
    default:
      break;
  }

  if (v6 == v3 && v4 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA9055C();
  }

  return v8 & 1;
}

uint64_t sub_1ABAD1410(unsigned __int8 a1, char a2)
{
  v2 = 0x796C6B656577;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x796C68746E6F6DLL;
    }

    else
    {
      v4 = 0x6C61756E6E61;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x796C6B656577;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x796C68746E6F6DLL;
    }

    else
    {
      v2 = 0x6C61756E6E61;
    }

    if (a2 == 1)
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
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28();
  }

  return v8 & 1;
}

uint64_t sub_1ABAD1524(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_1ABA9FF78();
  (a3)(a2);
  sub_1ABAA00D8();
  v7 = v7 && v3 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28();
  }

  return v8 & 1;
}

uint64_t sub_1ABAD15A0(unsigned __int8 a1, char a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x726F63655273746BLL;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (v2 == 1)
    {
      v4 = 0xED00006570795464;
    }

    else
    {
      v4 = 0x80000001ABF85F90;
    }
  }

  else
  {
    v4 = 0x80000001ABF85F60;
    v3 = 0xD000000000000014;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x726F63655273746BLL;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (a2 == 1)
    {
      v6 = 0xED00006570795464;
    }

    else
    {
      v6 = 0x80000001ABF85F90;
    }
  }

  else
  {
    v6 = 0x80000001ABF85F60;
    v5 = 0xD000000000000014;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28();
  }

  return v8 & 1;
}

uint64_t sub_1ABAD1684()
{
  sub_1ABAB6548();
  v3 = v2;
  switch(v4)
  {
    case 1:
      v3 = sub_1ABA8ACF8();
      v0 = 0xE900000000000073;
      break;
    case 2:
      v3 = sub_1ABA8E050();
      break;
    case 3:
      v3 = sub_1ABA8B09C();
      break;
    case 4:
      v5 = sub_1ABA8B08C();
      v3 = sub_1ABA9FBAC(v5);
      break;
    case 5:
      v3 = 0x6E69727473627573;
      v0 = 0xE900000000000067;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(v1)
  {
    case 1:
      sub_1ABA8A5B0();
      v6 = 0xE900000000000073;
      break;
    case 2:
      sub_1ABAD4EC8();
      break;
    case 3:
      sub_1ABA8B220();
      break;
    case 4:
      sub_1ABA83E94();
      sub_1ABA8AE90();
      break;
    case 5:
      v2 = 0x6E69727473627573;
      v6 = 0xE900000000000067;
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28();
  }

  return v8 & 1;
}

uint64_t sub_1ABAD17B8(unsigned __int8 a1, char a2)
{
  v2 = 0x73736563637573;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x73736563637573;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x746C757365526F6ELL;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x726F727265;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x746E65746E496F6ELL;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x746C757365526F6ELL;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x726F727265;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v2 = 0x746E65746E496F6ELL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28();
  }

  return v8 & 1;
}

uint64_t sub_1ABAD18F0()
{
  v0 = 0xEF656C626154746ELL;
  sub_1ABA7BB94();
  sub_1ABA8C508();
  v4 = "ktsCadenceAnnual";
  v5 = "ktsCadenceMonthly";
  v6 = v2;
  v7 = 0xEF656C626154746ELL;
  v8 = "ktsCadenceWeekly";
  switch(v9)
  {
    case 1:
      v10 = "veScore";
      goto LABEL_5;
    case 2:
      v7 = 0x80000001ABF85F20;
      v6 = v3 + 1;
      break;
    case 3:
      v10 = "ktsCadenceMonthly";
LABEL_5:
      v7 = v10 | 0x8000000000000000;
      v6 = sub_1ABA97980();
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v11 = v8 - 32;
      goto LABEL_10;
    case 2:
      v0 = (v5 - 32) | 0x8000000000000000;
      v2 = v3 + 1;
      break;
    case 3:
      v11 = v4 - 32;
LABEL_10:
      v0 = v11 | 0x8000000000000000;
      sub_1ABA8BA2C();
      break;
    default:
      break;
  }

  if (v6 == v2 && v7 == v0)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1ABA9055C();
  }

  return v13 & 1;
}

uint64_t sub_1ABAD1A5C()
{
  sub_1ABA7AB5C();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1ABF23D34();
  return sub_1ABF25294();
}

uint64_t sub_1ABAD1BAC()
{
  sub_1ABA7AB5C();
  v1 = *v0;
  v2 = v0[1];
  sub_1ABF23D34();
  return sub_1ABF25294();
}

uint64_t sub_1ABAD1C3C()
{
  sub_1ABA81488();
  sub_1ABA7AB5C();
  sub_1ABF23D34();
  return sub_1ABF25294();
}

uint64_t sub_1ABAD1DAC()
{
  sub_1ABA7AB5C();
  sub_1ABF23D34();
  return sub_1ABF25294();
}

uint64_t sub_1ABAD1DFC()
{
  sub_1ABF25234();
  sub_1ABAD4B80();
  sub_1ABF23A94();
  return sub_1ABF25294();
}

uint64_t sub_1ABAD1E60(char a1)
{
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0]((a1 & 1u) + 1);
  return sub_1ABF25294();
}

uint64_t sub_1ABAD1EB0(char a1)
{
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0](a1 & 1);
  return sub_1ABF25294();
}

uint64_t sub_1ABAD1F38(uint64_t a1, void (*a2)(uint64_t))
{
  sub_1ABA7AB5C();
  a2(a1);
  sub_1ABAA023C();

  return sub_1ABF25294();
}

uint64_t sub_1ABAD1FDC()
{
  sub_1ABA7AB5C();
  Features.FeatureFlag.feature.getter();
  sub_1ABF24AE4();
  sub_1ABAA023C();

  return sub_1ABF25294();
}

uint64_t sub_1ABAD202C()
{
  sub_1ABA7AB5C();
  sub_1ABF25264();
  return sub_1ABF25294();
}

uint64_t sub_1ABAD206C(unsigned __int8 a1, void (*a2)(void))
{
  sub_1ABA7AB5C();
  a2(a1);
  return sub_1ABF25294();
}

uint64_t sub_1ABAD20CC(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_1ABA7AB5C();
  a2(v5, a1);
  return sub_1ABF25294();
}

uint64_t sub_1ABAD2114(uint64_t a1)
{
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0](a1);
  return sub_1ABF25294();
}

uint64_t sub_1ABAD2154(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1ABAD219C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1ABAD21E4()
{
  result = qword_1EB4D05C8;
  if (!qword_1EB4D05C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D05C8);
  }

  return result;
}

unint64_t sub_1ABAD2238()
{
  result = qword_1EB4D05D0;
  if (!qword_1EB4D05D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D05D0);
  }

  return result;
}

unint64_t sub_1ABAD228C()
{
  result = qword_1EB4D05D8;
  if (!qword_1EB4D05D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D05D8);
  }

  return result;
}

unint64_t sub_1ABAD22E0()
{
  result = qword_1EB4D05E0;
  if (!qword_1EB4D05E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D05E0);
  }

  return result;
}

unint64_t sub_1ABAD2334()
{
  result = qword_1EB4D05E8;
  if (!qword_1EB4D05E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D05E8);
  }

  return result;
}

unint64_t sub_1ABAD2388()
{
  result = qword_1EB4D05F0;
  if (!qword_1EB4D05F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D05F0);
  }

  return result;
}

unint64_t sub_1ABAD23DC()
{
  result = qword_1EB4D05F8;
  if (!qword_1EB4D05F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D05F8);
  }

  return result;
}

unint64_t sub_1ABAD2430()
{
  result = qword_1EB4D0600;
  if (!qword_1EB4D0600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0600);
  }

  return result;
}

unint64_t sub_1ABAD2484()
{
  result = qword_1EB4D0608;
  if (!qword_1EB4D0608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0608);
  }

  return result;
}

unint64_t sub_1ABAD24D8()
{
  result = qword_1EB4D0610;
  if (!qword_1EB4D0610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0610);
  }

  return result;
}

unint64_t sub_1ABAD252C()
{
  result = qword_1EB4D0618;
  if (!qword_1EB4D0618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0618);
  }

  return result;
}

unint64_t sub_1ABAD2580()
{
  result = qword_1EB4D0620;
  if (!qword_1EB4D0620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0620);
  }

  return result;
}

unint64_t sub_1ABAD25D4()
{
  result = qword_1EB4D0628;
  if (!qword_1EB4D0628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0628);
  }

  return result;
}

unint64_t sub_1ABAD2628()
{
  result = qword_1EB4D0630;
  if (!qword_1EB4D0630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0630);
  }

  return result;
}

unint64_t sub_1ABAD267C()
{
  result = qword_1EB4D0638;
  if (!qword_1EB4D0638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0638);
  }

  return result;
}

unint64_t sub_1ABAD26D0()
{
  result = qword_1EB4D0640;
  if (!qword_1EB4D0640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0640);
  }

  return result;
}

unint64_t sub_1ABAD2724()
{
  result = qword_1EB4D0648;
  if (!qword_1EB4D0648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0648);
  }

  return result;
}

unint64_t sub_1ABAD2778()
{
  result = qword_1EB4D0650;
  if (!qword_1EB4D0650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0650);
  }

  return result;
}

unint64_t sub_1ABAD27CC()
{
  result = qword_1EB4D0658;
  if (!qword_1EB4D0658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0658);
  }

  return result;
}

unint64_t sub_1ABAD2820()
{
  result = qword_1EB4D0660;
  if (!qword_1EB4D0660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0660);
  }

  return result;
}

unint64_t sub_1ABAD2874()
{
  result = qword_1EB4D0668;
  if (!qword_1EB4D0668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0668);
  }

  return result;
}

unint64_t sub_1ABAD28C8()
{
  result = qword_1EB4D0670;
  if (!qword_1EB4D0670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0670);
  }

  return result;
}

unint64_t sub_1ABAD291C()
{
  result = qword_1EB4D0678;
  if (!qword_1EB4D0678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0678);
  }

  return result;
}

unint64_t sub_1ABAD2970()
{
  result = qword_1EB4D0680;
  if (!qword_1EB4D0680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0680);
  }

  return result;
}

unint64_t sub_1ABAD29C4()
{
  result = qword_1EB4D0688;
  if (!qword_1EB4D0688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0688);
  }

  return result;
}

unint64_t sub_1ABAD2A18()
{
  result = qword_1EB4D0690;
  if (!qword_1EB4D0690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0690);
  }

  return result;
}

uint64_t sub_1ABAD2A7C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1AC5A9A70](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1ABAD2AD4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1ABF24424();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_1ABAD2B2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABAD2B54();
  *a1 = result;
  return result;
}

uint64_t sub_1ABAD2B64()
{
  sub_1ABF23C04();
  sub_1ABF23D34();
}

uint64_t sub_1ABAD2BD0()
{
  v1 = sub_1ABA8B804();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1ABAD2BF8@<X0>(_DWORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1ABAD2C24()
{
  sub_1ABA8B804();
  result = sub_1ABE41F70();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void *sub_1ABAD2C4C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1ABAD2C5C()
{
  v2 = *v0;
  sub_1ABAD2154(&qword_1EB4D0E40, type metadata accessor for BPSDemand);
  sub_1ABAD2154(&qword_1EB4D0E48, type metadata accessor for BPSDemand);
  return sub_1ABF24D74();
}

uint64_t sub_1ABAD2D18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1ABF23BD4();

  *a2 = v5;
  return result;
}

uint64_t sub_1ABAD2D60()
{
  sub_1ABA8B804();
  result = sub_1ABAF81A4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1ABAD2D88()
{
  sub_1ABAD2154(&qword_1ED86B968, type metadata accessor for MLModelMetadataKey);
  sub_1ABAD2154(&unk_1EB4D0EE0, type metadata accessor for MLModelMetadataKey);

  return sub_1ABF24D74();
}

uint64_t sub_1ABAD2E44()
{
  sub_1ABAD2154(&qword_1EB4D0E30, type metadata accessor for BMUseCaseIdentifier);
  sub_1ABAD2154(&qword_1EB4D0E38, type metadata accessor for BMUseCaseIdentifier);

  return sub_1ABF24D74();
}

void sub_1ABAD2F18(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_1ABA90548();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_1ABAD2F54()
{
  result = qword_1EB4D0838;
  if (!qword_1EB4D0838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0838);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EntityIdentifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EntityIdentifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

__n128 sub_1ABAD3034(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1ABAD3048(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABAD3068(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

uint64_t sub_1ABAD318C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABAD31AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1ABAD31D4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE8)
  {
    if (a2 + 24 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 24) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 25;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v5 = v6 - 25;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1ABAD325C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE7)
  {
    v6 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
          *result = a2 + 24;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABAD34CC()
{
  result = qword_1EB4D0C50;
  if (!qword_1EB4D0C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0C50);
  }

  return result;
}

unint64_t sub_1ABAD371C()
{
  result = qword_1EB4D0C90;
  if (!qword_1EB4D0C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0C90);
  }

  return result;
}

unint64_t sub_1ABAD3774()
{
  result = qword_1EB4D0C98;
  if (!qword_1EB4D0C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0C98);
  }

  return result;
}

unint64_t sub_1ABAD37CC()
{
  result = qword_1EB4D0CA0;
  if (!qword_1EB4D0CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0CA0);
  }

  return result;
}

unint64_t sub_1ABAD3824()
{
  result = qword_1EB4D0CA8;
  if (!qword_1EB4D0CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0CA8);
  }

  return result;
}

unint64_t sub_1ABAD387C()
{
  result = qword_1EB4D0CB0;
  if (!qword_1EB4D0CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0CB0);
  }

  return result;
}

unint64_t sub_1ABAD38D4()
{
  result = qword_1EB4D0CB8;
  if (!qword_1EB4D0CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0CB8);
  }

  return result;
}

unint64_t sub_1ABAD392C()
{
  result = qword_1EB4D0CC0;
  if (!qword_1EB4D0CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0CC0);
  }

  return result;
}

unint64_t sub_1ABAD3984()
{
  result = qword_1EB4D0CC8;
  if (!qword_1EB4D0CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0CC8);
  }

  return result;
}

unint64_t sub_1ABAD39DC()
{
  result = qword_1EB4D0CD0;
  if (!qword_1EB4D0CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0CD0);
  }

  return result;
}

unint64_t sub_1ABAD3A34()
{
  result = qword_1EB4D0CD8;
  if (!qword_1EB4D0CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0CD8);
  }

  return result;
}

unint64_t sub_1ABAD3A8C()
{
  result = qword_1EB4D0CE0;
  if (!qword_1EB4D0CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0CE0);
  }

  return result;
}

unint64_t sub_1ABAD3AE4()
{
  result = qword_1EB4D0CE8;
  if (!qword_1EB4D0CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0CE8);
  }

  return result;
}

unint64_t sub_1ABAD3B3C()
{
  result = qword_1EB4D0CF0;
  if (!qword_1EB4D0CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0CF0);
  }

  return result;
}

unint64_t sub_1ABAD3B94()
{
  result = qword_1EB4D0CF8;
  if (!qword_1EB4D0CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0CF8);
  }

  return result;
}

unint64_t sub_1ABAD3BEC()
{
  result = qword_1EB4D0D00;
  if (!qword_1EB4D0D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D00);
  }

  return result;
}

unint64_t sub_1ABAD3C44()
{
  result = qword_1EB4D0D08;
  if (!qword_1EB4D0D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D08);
  }

  return result;
}

unint64_t sub_1ABAD3C9C()
{
  result = qword_1EB4D0D10;
  if (!qword_1EB4D0D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D10);
  }

  return result;
}

unint64_t sub_1ABAD3CF4()
{
  result = qword_1EB4D0D18;
  if (!qword_1EB4D0D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D18);
  }

  return result;
}

unint64_t sub_1ABAD3D4C()
{
  result = qword_1EB4D0D20;
  if (!qword_1EB4D0D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D20);
  }

  return result;
}

unint64_t sub_1ABAD3DA4()
{
  result = qword_1EB4D0D28;
  if (!qword_1EB4D0D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D28);
  }

  return result;
}

unint64_t sub_1ABAD3DFC()
{
  result = qword_1EB4D0D30;
  if (!qword_1EB4D0D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D30);
  }

  return result;
}

unint64_t sub_1ABAD3E54()
{
  result = qword_1EB4D0D38;
  if (!qword_1EB4D0D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D38);
  }

  return result;
}

unint64_t sub_1ABAD3EAC()
{
  result = qword_1EB4D0D40;
  if (!qword_1EB4D0D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D40);
  }

  return result;
}

unint64_t sub_1ABAD3F04()
{
  result = qword_1EB4D0D48;
  if (!qword_1EB4D0D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D48);
  }

  return result;
}

unint64_t sub_1ABAD3F5C()
{
  result = qword_1EB4D0D50;
  if (!qword_1EB4D0D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D50);
  }

  return result;
}

unint64_t sub_1ABAD3FB4()
{
  result = qword_1EB4D0D58;
  if (!qword_1EB4D0D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D58);
  }

  return result;
}

unint64_t sub_1ABAD400C()
{
  result = qword_1EB4D0D60;
  if (!qword_1EB4D0D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D60);
  }

  return result;
}

unint64_t sub_1ABAD4064()
{
  result = qword_1EB4D0D68;
  if (!qword_1EB4D0D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D68);
  }

  return result;
}

unint64_t sub_1ABAD40BC()
{
  result = qword_1EB4D0D70;
  if (!qword_1EB4D0D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D70);
  }

  return result;
}

unint64_t sub_1ABAD4114()
{
  result = qword_1EB4D0D78;
  if (!qword_1EB4D0D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D78);
  }

  return result;
}

unint64_t sub_1ABAD416C()
{
  result = qword_1EB4D0D80;
  if (!qword_1EB4D0D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D80);
  }

  return result;
}

unint64_t sub_1ABAD41C4()
{
  result = qword_1EB4D0D88;
  if (!qword_1EB4D0D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D88);
  }

  return result;
}

unint64_t sub_1ABAD421C()
{
  result = qword_1EB4D0D90;
  if (!qword_1EB4D0D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D90);
  }

  return result;
}

unint64_t sub_1ABAD4274()
{
  result = qword_1EB4D0D98;
  if (!qword_1EB4D0D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D98);
  }

  return result;
}

unint64_t sub_1ABAD42CC()
{
  result = qword_1EB4D0DA0;
  if (!qword_1EB4D0DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0DA0);
  }

  return result;
}

unint64_t sub_1ABAD4324()
{
  result = qword_1EB4D0DA8;
  if (!qword_1EB4D0DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0DA8);
  }

  return result;
}

unint64_t sub_1ABAD437C()
{
  result = qword_1EB4D0DB0;
  if (!qword_1EB4D0DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0DB0);
  }

  return result;
}

unint64_t sub_1ABAD43D4()
{
  result = qword_1EB4D0DB8;
  if (!qword_1EB4D0DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0DB8);
  }

  return result;
}

unint64_t sub_1ABAD442C()
{
  result = qword_1EB4D0DC0;
  if (!qword_1EB4D0DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0DC0);
  }

  return result;
}

unint64_t sub_1ABAD4484()
{
  result = qword_1EB4D0DC8;
  if (!qword_1EB4D0DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0DC8);
  }

  return result;
}

unint64_t sub_1ABAD44DC()
{
  result = qword_1EB4D0DD0;
  if (!qword_1EB4D0DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0DD0);
  }

  return result;
}

unint64_t sub_1ABAD4534()
{
  result = qword_1EB4D0DD8;
  if (!qword_1EB4D0DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0DD8);
  }

  return result;
}

unint64_t sub_1ABAD458C()
{
  result = qword_1EB4D0DE0;
  if (!qword_1EB4D0DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0DE0);
  }

  return result;
}

unint64_t sub_1ABAD45E4()
{
  result = qword_1EB4D0DE8;
  if (!qword_1EB4D0DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0DE8);
  }

  return result;
}

unint64_t sub_1ABAD463C()
{
  result = qword_1EB4D0DF0;
  if (!qword_1EB4D0DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0DF0);
  }

  return result;
}

unint64_t sub_1ABAD4694()
{
  result = qword_1EB4D0DF8;
  if (!qword_1EB4D0DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0DF8);
  }

  return result;
}

unint64_t sub_1ABAD46EC()
{
  result = qword_1EB4D0E00;
  if (!qword_1EB4D0E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0E00);
  }

  return result;
}

unint64_t sub_1ABAD4744()
{
  result = qword_1EB4D0E08;
  if (!qword_1EB4D0E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0E08);
  }

  return result;
}

unint64_t sub_1ABAD479C()
{
  result = qword_1EB4D0E10;
  if (!qword_1EB4D0E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0E10);
  }

  return result;
}

unint64_t sub_1ABAD47F4()
{
  result = qword_1EB4D0E18;
  if (!qword_1EB4D0E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0E18);
  }

  return result;
}

unint64_t sub_1ABAD484C()
{
  result = qword_1EB4D0E20;
  if (!qword_1EB4D0E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0E20);
  }

  return result;
}

unint64_t sub_1ABAD48A4()
{
  result = qword_1EB4D0E28;
  if (!qword_1EB4D0E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0E28);
  }

  return result;
}

uint64_t sub_1ABAD48F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1ABAD4974()
{
  sub_1ABF23C04();
  sub_1ABA9FF78();
  sub_1ABF23C04();
  sub_1ABAA00D8();
  v2 = v2 && v0 == v1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1ABA8BE28();
  }

  return v3 & 1;
}

uint64_t sub_1ABAD49E4()
{
  sub_1ABF23C04();
  sub_1ABF25234();
  sub_1ABF23D34();
  v0 = sub_1ABF25294();

  return v0;
}

uint64_t sub_1ABAD4A58()
{
  sub_1ABA81488();

  v2 = sub_1ABF23BF4();
  *v0 = 0;
  return v2 & 1;
}

uint64_t sub_1ABAD4AD4()
{
  v0 = sub_1ABF23C04();
  v1 = MEMORY[0x1AC5A94D0](v0);

  return v1;
}

uint64_t sub_1ABAD4B0C()
{
  sub_1ABA81488();

  result = sub_1ABF23BE4();
  *v0 = 0;
  return result;
}

unint64_t sub_1ABAD4B80()
{
  result = qword_1EB4D0E50;
  if (!qword_1EB4D0E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0E50);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for MockLocationFeatures(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1ABAD4E20()
{
  sub_1ABF23C04();
  v0 = sub_1ABF23BD4();

  return v0;
}

double sub_1ABAD4F50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0.0;
  }

  v2 = (a1 + 32);
  result = 0.0;
  do
  {
    v4 = *v2++;
    result = result + v4;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1ABAD4F7C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v10 = *(v0 + 112);
  v11 = *(v0 + 120);
  v8 = *(v0 + 80);
  v9 = *(v0 + 96);
  sub_1ABAD4FFC(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1ABAD4FFC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1ABAD509C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v2 = sub_1ABAF81A8(), (v3 & 1) != 0))
  {
    sub_1ABA97EC0(v2);
  }

  else
  {
    sub_1ABA8BA38();
  }

  return sub_1ABA7D000();
}

uint64_t sub_1ABAD50DC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1ABAF8208();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1ABAA146C(v2);
}

uint64_t sub_1ABAD5128(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v2 = sub_1ABAF8208(), (v3 & 1) != 0))
  {
    sub_1ABA97EC0(v2);
  }

  else
  {
    sub_1ABA8BA38();
  }

  return sub_1ABA7D000();
}

double sub_1ABAD5168(uint64_t a1, uint64_t a2)
{
  sub_1ABAB5250(a1, a2);
  if (!v3)
  {
    return sub_1ABA9923C();
  }

  v4 = sub_1ABAF8388(v2);
  if ((v5 & 1) == 0)
  {
    return sub_1ABA9923C();
  }

  sub_1ABAA00F8(v4);
  return result;
}

void sub_1ABAD51A4(uint64_t a1, uint64_t a2)
{
  sub_1ABAB5250(a1, a2);
  v3 = 0uLL;
  if (v4)
  {
    v5 = sub_1ABAF8328();
    if (v6)
    {
      sub_1ABA8EE70(v5);
      v8 = *(v7 + 2);
      v11 = *(v7 + 24);
      v12 = *v7;
      v9 = *(v7 + 5);

      v10 = v11;
      v3 = v12;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = 0uLL;
      v3 = 0uLL;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0uLL;
  }

  *v2 = v3;
  *(v2 + 16) = v8;
  *(v2 + 24) = v10;
  *(v2 + 40) = v9;
}

uint64_t sub_1ABAD5260(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1ABAF8574(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1ABAA146C(v2);
}

uint64_t sub_1ABAD52AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 20;
  }

  v4 = sub_1ABA94FC8(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 20;
  }
}

void sub_1ABAD52F8()
{
  sub_1ABAA00E4();
  sub_1ABA963BC(v1, v2, v3);
  if (v6 && (v7 = sub_1ABA94FC8(v4, v5), (v8 & 1) != 0))
  {
    sub_1ABA8EE70(v7);
    v11 = *v9;
    v10 = v9[1];
    v12 = v9[2];
    v13 = *(v9 + 24);
    v15 = v9[4];
    v14 = v9[5];
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v15 = 0;
    v14 = 0;
  }

  *v0 = v11;
  v0[1] = v10;
  v0[2] = v12;
  v0[3] = v13;
  v0[4] = v15;
  v0[5] = v14;
  sub_1ABA82A00();
}

void sub_1ABAD538C(uint64_t a1, uint64_t a2)
{
  sub_1ABAB5250(a1, a2);
  if (v8)
  {
    v3 = v7;
    v9 = sub_1ABAF8328();
    if (v10)
    {
      sub_1ABA8EE70(v9);
      v5 = *v11;
      v3 = v11[1];
      v13 = *(v11 + 1);
      v6 = v11[4];
      v4 = v11[5];

      swift_unknownObjectRetain();

      v12 = v13;
    }

    else
    {
      sub_1ABA8BC20();
      v12 = 0uLL;
    }
  }

  else
  {
    sub_1ABA8BC20();
  }

  *v2 = v5;
  *(v2 + 8) = v3;
  *(v2 + 16) = v12;
  *(v2 + 32) = v6;
  *(v2 + 40) = v4;
}

double sub_1ABAD5444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABA963BC(a1, a2, a3);
  if (v7 && (v8 = v6, v9 = sub_1ABA94FC8(v4, v5), (v10 & 1) != 0))
  {
    v11 = *(v8 + 56) + 32 * v9;

    sub_1ABAE2BF0(v11, v3);
  }

  else
  {
    result = 0.0;
    *v3 = 0u;
    v3[1] = 0u;
  }

  return result;
}

uint64_t sub_1ABAD54A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1ABA94FC8(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_1ABAA146C(v3);
}

void sub_1ABAD54F0(uint64_t a1, uint64_t a2)
{
  sub_1ABAB5250(a1, a2);
  v4 = 0uLL;
  if (v5)
  {
    v6 = v3;
    v7 = sub_1ABAF8684();
    if (v8)
    {
      v9 = *(v6 + 56) + 40 * v7;
      v10 = *v9;
      v13 = *(v9 + 8);
      v12 = *(v9 + 24);
      v11 = *(v9 + 32);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v4 = v13;
    }

    else
    {
      v10 = 0;
      v12 = 0;
      v11 = 0;
      v4 = 0uLL;
    }
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v11 = 0;
  }

  *v2 = v10;
  *(v2 + 8) = v4;
  *(v2 + 24) = v12;
  *(v2 + 32) = v11;
}

uint64_t sub_1ABAD55A0(uint64_t a1, uint64_t a2)
{
  sub_1ABAB5250(a1, a2);
  if (v4 && (v5 = v3, v6 = sub_1ABAF81A8(), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = sub_1ABAD219C(&qword_1EB4D19B0, &unk_1ABF33B40);
    sub_1ABA7BBB0(v10);
    (*(v11 + 16))(v2, v9 + *(v11 + 72) * v8, v10);
    sub_1ABA8C6E0();
    v15 = v10;
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4D19B0, &unk_1ABF33B40);
    v12 = sub_1ABA8C900();
  }

  return sub_1ABA7B9B4(v12, v13, v14, v15);
}

uint64_t sub_1ABAD5664(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1ABAFF5A4();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = (*(a2 + 56) + 16 * v3);
  result = *v5;
  v7 = v5[1];
  return result;
}

double sub_1ABAD56E0(uint64_t a1, uint64_t a2)
{
  sub_1ABAB5250(a1, a2);
  if (v5 && (v6 = v3, v7 = v4(), (v8 & 1) != 0))
  {
    v9 = *(v6 + 56) + 32 * v7;

    sub_1ABAE2BF0(v9, v2);
  }

  else
  {
    result = 0.0;
    *v2 = 0u;
    v2[1] = 0u;
  }

  return result;
}

void *sub_1ABAD5744(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1ABAF87E4();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

unint64_t sub_1ABAD578C(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = sub_1ABAF8820(a1);
  if ((v5 & 1) == 0)
  {
    v2 = 0;
LABEL_5:
    v6 = 1;
    return v2 | (v6 << 32);
  }

  v6 = 0;
  v2 = *(*(a2 + 56) + 4 * v4);
  return v2 | (v6 << 32);
}

void sub_1ABAD57E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABA963BC(a1, a2, a3);
  if (v7 && (v8 = v6, v9 = sub_1ABA94FC8(v4, v5), (v10 & 1) != 0))
  {
    sub_1ABAE2D04(*(v8 + 56) + 8 * v9, v3);
    v11 = 0;
  }

  else
  {
    *v3 = 0;
    v11 = 1;
  }

  *(v3 + 8) = v11;
}

uint64_t sub_1ABAD583C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1ABA94FC8(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_1ABAA146C(v3);
}

uint64_t sub_1ABAD58A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a3();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_1ABAA146C(v3);
}

uint64_t sub_1ABAD58F0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1ABAAFEB4();
  if (v3)
  {
    return sub_1ABAA146C(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABAD5944(uint64_t a1, double a2)
{
  if (*(a1 + 16) && (v2 = sub_1ABAF892C(a2), (v3 & 1) != 0))
  {
    sub_1ABA97EC0(v2);
  }

  else
  {
    sub_1ABA8BA38();
  }

  return sub_1ABA7D000();
}

uint64_t sub_1ABAD5984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1ABA94FC8(a1, a2);
  if (v4)
  {
    return sub_1ABAA146C(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABAD59D8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1ABAAFEB4();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1ABAA146C(v2);
}

double sub_1ABAD5A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABA963BC(a1, a2, a3);
  if (!v5)
  {
    return sub_1ABA9923C();
  }

  v6 = sub_1ABA94FC8(v3, v4);
  if ((v7 & 1) == 0)
  {
    return sub_1ABA9923C();
  }

  sub_1ABAA00F8(v6);
  return result;
}

void sub_1ABAD5A60(uint64_t a1, uint64_t a2)
{
  sub_1ABAB5250(a1, a2);
  if (v5 && (v6 = v4, v7 = sub_1ABAFF5BC(v3), (v8 & 1) != 0))
  {
    v9 = *(v6 + 56) + 48 * v7;

    sub_1ABAE2C4C(v9, v2);
  }

  else
  {
    sub_1ABA9923C();
    *(v2 + 40) = -1;
  }
}

void sub_1ABAD5AC8(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1ABAF8A7C(), (v5 & 1) != 0))
  {
    sub_1ABAE2CA8(*(a1 + 56) + 8 * v4, a2);
    v6 = 0;
  }

  else
  {
    *a2 = 0;
    v6 = 1;
  }

  *(a2 + 8) = v6;
}

uint64_t sub_1ABAD5B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABA963BC(a1, a2, a3);
  if (v7 && (v8 = v6, v9 = sub_1ABA94FC8(v4, v5), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(v8 + 56);
    v13 = sub_1ABF21EB4();
    sub_1ABA7BBB0(v13);
    (*(v14 + 16))(v3, v12 + *(v14 + 72) * v11, v13);
    sub_1ABA8C6E0();
    v18 = v13;
  }

  else
  {
    sub_1ABF21EB4();
    v15 = sub_1ABA8C900();
  }

  return sub_1ABA7B9B4(v15, v16, v17, v18);
}

unint64_t sub_1ABAD5BC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = sub_1ABAFF5A4();
  if ((v5 & 1) == 0)
  {
    v2 = 0;
LABEL_5:
    v6 = 1;
    return v2 | (v6 << 32);
  }

  v6 = 0;
  v2 = *(*(a2 + 56) + 4 * v4);
  return v2 | (v6 << 32);
}

uint64_t sub_1ABAD5C24()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = sub_1ABF247E4();
  sub_1ABA7BBB0(v3);
  (*(v4 + 8))(v0 + v1);
  v5 = *(*v0 + 104);
  swift_weakDestroy();
  v6 = *(v0 + *(*v0 + 112));

  return v0;
}

uint64_t sub_1ABAD5CD8()
{
  sub_1ABAD5C24();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1ABAD5D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABAA068C();
  if (v7)
  {
    v8 = v6;
    v9 = v5;
    v10 = *(v3 + 16);

    result = sub_1ABA967E4(v9, v8);
    v12 = result;
    v13 = 0;
    v14 = *(result + 16);
    v15 = (result + 40);
    while (v14 != v13)
    {
      if (v13 >= *(v12 + 16))
      {
        __break(1u);
        return result;
      }

      v16 = *(v15 - 1);
      v17 = *v15;
      swift_beginAccess();
      v18 = *(v10 + 40);
      if (!*(v18 + 16) || (v19 = sub_1ABA826A8(), v21 = sub_1ABA980D8(v19, v20), (v22 & 1) == 0))
      {

        return a3;
      }

      v23 = *(*(v18 + 56) + 8 * v21);

      ++v13;
      v15 += 2;
      v10 = v23;
    }

    v24 = *(v10 + 48);
    v25 = *(v10 + 52);

    if (v25)
    {
      return a3;
    }

    else
    {
      return v24;
    }
  }

  return a3;
}

uint64_t DictionaryTrie.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t DictionaryTrie.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t AddressEmbedder.__allocating_init(modelName:dictionaryPaths:)()
{
  v0 = swift_allocObject();
  v1 = sub_1ABA805B4();
  AddressEmbedder.init(modelName:dictionaryPaths:)(v1);
  return v0;
}

uint64_t sub_1ABAD5F24@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for LocationEmbedderInferenceInterface.Output();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1ABAD219C(&qword_1EB4D1AA0, &unk_1ABF33C30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v19 - v10;
  v12 = *(v1 + 16);

  v13 = sub_1ABA826A8();
  sub_1ABAD6090(v13, v14, 0, 1, v15);

  if (!v2)
  {
    sub_1ABAE2D60(v11, v7);
    v17 = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
    sub_1ABA7BBB0(v17);
    return (*(v18 + 32))(a1, v7);
  }

  return result;
}

uint64_t sub_1ABAD6090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v32 = a5;
  v35 = a4;
  v34 = a3;
  v8 = sub_1ABAD219C(&qword_1EB4D1AB0, &qword_1ABF33C40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v33 = &v32 - v10;
  v11 = sub_1ABAD219C(&qword_1EB4D1AB8, &qword_1ABF33C48);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v36 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v37 = &v32 - v15;
  v16 = sub_1ABAD219C(&qword_1EB4D1AC0, &qword_1ABF33C50);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v32 - v18;
  v20 = dispatch_semaphore_create(0);
  v21 = sub_1ABAD219C(&qword_1EB4D1AC8, &qword_1ABF33C58);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  sub_1ABA7B9B4(v24 + *(*v24 + 96), 1, 1, v11);
  v25 = sub_1ABF24294();
  sub_1ABA7B9B4(v19, 1, 1, v25);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = v20;
  *(v26 + 40) = v5;
  *(v26 + 48) = a1;
  *(v26 + 56) = a2;
  *(v26 + 64) = v34;
  *(v26 + 72) = v35 & 1;
  *(v26 + 80) = v24;
  v27 = v20;

  v28 = v33;

  sub_1ABD4AC88(0, 0, v19, &unk_1ABF33C68, v26);

  sub_1ABF24734();
  swift_beginAccess();
  sub_1ABAE2EC4();
  if (sub_1ABA7E1E0(v28, 1, v11) == 1)
  {
    sub_1ABAB480C(v28, &qword_1EB4D1AB0, &qword_1ABF33C40);
    result = sub_1ABF24CD4();
    __break(1u);
  }

  else
  {
    v29 = v37;
    sub_1ABAE2F1C();
    v30 = v36;
    sub_1ABAE2EC4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v38 = *v30;
      sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
      swift_willThrowTypedImpl();

      return sub_1ABAB480C(v29, &qword_1EB4D1AB8, &qword_1ABF33C48);
    }

    else
    {

      sub_1ABAB480C(v29, &qword_1EB4D1AB8, &qword_1ABF33C48);
      return sub_1ABAE2F1C();
    }
  }

  return result;
}

uint64_t AddressEmbedder.getEmbedding(address:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  String.wordCharTokens(max_words:max_chars:vocab:)(10, 10, *(v3 + 24));
  String.bpeTokens(max_words:max_tokens:vocab:)(10, 5, *(v3 + 32), a1, a2);
  sub_1ABAD5F24(a3);
}

void String.wordCharTokens(max_words:max_chars:vocab:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABAE28EC();
  v6 = sub_1ABF24884();
  v7 = __OFSUB__(a1, 1);
  v8 = a1 - 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v9 = v6;

    sub_1ABAD6B90(0, v8, 1, v9, a2, a3);
  }
}

void String.bpeTokens(max_words:max_tokens:vocab:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x1AC5A9410](a4, a5);

  MEMORY[0x1AC5A9410](29487, 0xE200000000000000);

  v7 = objc_autoreleasePoolPush();
  v55[0] = 12147;
  v55[1] = 0xE200000000000000;
  v54[0] = 32;
  v54[1] = 0xE100000000000000;
  sub_1ABAE28EC();
  v8 = sub_1ABF24884();

  v9 = *(v8 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v51 = v7;
    v53 = a2;
    v55[0] = MEMORY[0x1E69E7CC0];
    sub_1ABADDBD4();
    v11 = v55[0];
    v12 = (v8 + 40);
    do
    {
      v13 = v11;
      v14 = *(v12 - 1);
      v15 = *v12;

      v16 = v14;
      v11 = v13;
      v17 = sub_1ABAD78A8(v16);
      v19 = v18;

      v55[0] = v13;
      v20 = *(v13 + 16);
      v21 = *(v11 + 24);
      if (v20 >= v21 >> 1)
      {
        sub_1ABA7BBEC(v21);
        sub_1ABADDBD4();
        v11 = v55[0];
      }

      *(v11 + 16) = v20 + 1;
      v22 = v11 + 16 * v20;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v12 += 2;
      --v9;
    }

    while (v9);

    v10 = MEMORY[0x1E69E7CC0];
    v7 = v51;
    a2 = v53;
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v55[0] = v11;
  objc_autoreleasePoolPop(v7);
  v54[0] = v10;
  if (__OFSUB__(a1, 1))
  {
    goto LABEL_53;
  }

  if (*(v11 + 16) - 1 >= a1 - 1)
  {
    v23 = a1 - 1;
  }

  else
  {
    v23 = *(v11 + 16) - 1;
  }

  v24 = sub_1ABAD70C4(0, v23, 1, v55, v54, a1, a2);
  v25 = *(v24 + 16);
  v26 = a1 - v25;
  if (a1 <= v25)
  {
    goto LABEL_15;
  }

  if (a1 - v25 < 0)
  {
    goto LABEL_54;
  }

  if (a1 == v25)
  {
    goto LABEL_15;
  }

  v27 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    goto LABEL_55;
  }

  v28 = 0;
  v50 = a1 - v25;
LABEL_18:
  if (v28 >= v26)
  {
    goto LABEL_51;
  }

  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    do
    {
      if (v33 >= v27)
      {
        if ((v33 != v27) | v32 & 1)
        {
          v52 = v30;
          sub_1ABADDE7C(0, v31, 0);
          v34 = v10;
          v35 = 0;
          v36 = 0;
          if (!v31)
          {
            goto LABEL_41;
          }

          do
          {
            if (v36 >= v27)
            {
              if (v35 & 1 | (v36 != v27))
              {
                goto LABEL_50;
              }

              v35 = 1;
              v36 = v27;
            }

            else
            {
              ++v36;
            }

            v37 = sub_1ABA8B810();
            v39 = *(v34 + 16);
            v38 = *(v34 + 24);
            if (v39 >= v38 >> 1)
            {
              v40 = sub_1ABA7BBEC(v38);
              sub_1ABADDE7C(v40, v39 + 1, 1);
            }

            *(v34 + 16) = v39 + 1;
            *(v34 + 4 * v39 + 32) = v37;
            --v31;
          }

          while (v31);
          while (1)
          {
LABEL_41:
            if (v36 >= v27)
            {
              if ((v36 != v27) | v35 & 1)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v47 = *(v24 + 16);
                  sub_1ABADCD70();
                  v24 = v48;
                }

                v10 = MEMORY[0x1E69E7CC0];
                v46 = *(v24 + 16);
                v45 = *(v24 + 24);
                if (v46 >= v45 >> 1)
                {
                  sub_1ABA7BBEC(v45);
                  sub_1ABADCD70();
                  v24 = v49;
                }

                *(v24 + 16) = v46 + 1;
                *(v24 + 8 * v46 + 32) = v34;
                v26 = v50;
                v28 = v52;
                if (v52 == v50)
                {
LABEL_15:

                  return;
                }

                goto LABEL_18;
              }

              v35 = 1;
              v36 = v27;
            }

            else
            {
              ++v36;
            }

            v41 = sub_1ABA8B810();
            v43 = *(v34 + 16);
            v42 = *(v34 + 24);
            if (v43 >= v42 >> 1)
            {
              v44 = sub_1ABA7BBEC(v42);
              sub_1ABADDE7C(v44, v43 + 1, 1);
            }

            *(v34 + 16) = v43 + 1;
            *(v34 + 4 * v43 + 32) = v41;
          }
        }

        v32 = 1;
        v33 = v27;
      }

      else
      {
        ++v33;
      }

      v29 = __OFADD__(v31++, 1);
    }

    while (!v29);
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

void *AddressEmbedder.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t AddressEmbedder.__deallocating_deinit()
{
  AddressEmbedder.deinit();

  return swift_deallocClassInstance();
}

unint64_t String.charTokens(max_chars:vocab:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {

    return sub_1ABAD73A0(0, v4, 1, a3, a4, a2);
  }

  return result;
}

void sub_1ABAD6B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1;
  v9 = sub_1ABAE2A40(a1, a2, a3);
  v58 = MEMORY[0x1E69E7CC0];
  sub_1ABADDE3C();
  if ((v9 & 0x8000000000000000) == 0)
  {
    if (!v9)
    {
      v53 = 0;
      v54 = 0;
      v49 = a5 - 1;
      v31 = __OFSUB__(a5, 1);
      v50 = v31;
      v13 = a2;
      v12 = a3;
      goto LABEL_47;
    }

    v48 = v9;
    v10 = 0;
    v53 = 0;
    v54 = 0;
    v49 = a5 - 1;
    v11 = __OFSUB__(a5, 1);
    v50 = v11;
    v12 = a3;
    v13 = a2;
    while (1)
    {
      v14 = v8 <= v13;
      if (v12 > 0)
      {
        v14 = v8 >= v13;
      }

      if (v14)
      {
        if (v53 & 1 | (v8 != v13))
        {
          goto LABEL_90;
        }

        if (!(BYTE4(v53) & 1 | (v54 != 0x8000000000000000)))
        {
          goto LABEL_94;
        }

        LOBYTE(v53) = 1;
      }

      else
      {
        v15 = !__OFADD__(v8, v12);
        BYTE4(v53) = v15;
        v16 = 0x8000000000000000;
        if (!__OFADD__(v8, v12))
        {
          v16 = 0;
        }

        v54 = v16;
        v13 = __OFADD__(v8, v12) ? ((v8 + v12) >> 63) ^ 0x8000000000000000 : v8 + v12;
      }

      v51 = v13;
      if (v8 >= *(a4 + 16))
      {
        break;
      }

      if (v8 < 0)
      {
        goto LABEL_91;
      }

      if (v50)
      {
        goto LABEL_93;
      }

      v17 = (a4 + 32 + 16 * v8);
      v18 = *v17;
      v19 = v17[1];

      v20 = sub_1ABAD73A0(0, v49, 1, v18, v19, a6);
LABEL_25:
      v21 = *(v58 + 16);
      if (v21 >= *(v58 + 24) >> 1)
      {
        sub_1ABADDE3C();
      }

      ++v10;
      *(v58 + 16) = v21 + 1;
      *(v58 + 8 * v21 + 32) = v20;
      v8 = v51;
      v13 = a2;
      v12 = a3;
      if (v10 == v48)
      {
        v8 = v51;
LABEL_47:
        v52 = (v12 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
        while (1)
        {
          v32 = v8 <= v13;
          if (v12 > 0)
          {
            v32 = v8 >= v13;
          }

          if (v32)
          {
            if (v8 != v13 || (v53 & 1) != 0 || !(BYTE4(v53) & 1 | (v54 != 0x8000000000000000)))
            {

              return;
            }

            LOBYTE(v53) = 1;
          }

          else
          {
            v33 = __OFADD__(v8, v12);
            if (v33)
            {
              v13 = v52;
            }

            else
            {
              v13 = v8 + v12;
            }

            v34 = 0x8000000000000000;
            if (!v33)
            {
              v34 = 0;
            }

            v54 = v34;
            BYTE4(v53) = !v33;
          }

          if (v8 >= *(a4 + 16))
          {
            if (a5 < 1)
            {
              goto LABEL_87;
            }

            v40 = 1;
            v38 = MEMORY[0x1E69E7CC0];
            while (1)
            {
              if (*(a6 + 16) && (v41 = sub_1ABA94FC8(0x3E6461703CLL, 0xE500000000000000), (v42 & 1) != 0))
              {
                v43 = *(*(a6 + 56) + 4 * v41);
              }

              else
              {
                v43 = 0;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v45 = *(v38 + 16);
                sub_1ABAD9278();
                v38 = v46;
              }

              v44 = *(v38 + 16);
              if (v44 >= *(v38 + 24) >> 1)
              {
                sub_1ABAD9278();
                v38 = v47;
              }

              *(v38 + 16) = v44 + 1;
              *(v38 + 4 * v44 + 32) = v43;
              if (a5 == v40)
              {
                break;
              }

              v27 = __OFADD__(v40++, 1);
              if (v27)
              {
                __break(1u);
                goto LABEL_86;
              }
            }
          }

          else
          {
            if (v8 < 0)
            {
              goto LABEL_88;
            }

            if (v50)
            {
              goto LABEL_89;
            }

            v35 = (a4 + 32 + 16 * v8);
            v36 = *v35;
            v37 = v35[1];

            v38 = sub_1ABAD73A0(0, v49, 1, v36, v37, a6);
          }

          v39 = *(v58 + 16);
          if (v39 >= *(v58 + 24) >> 1)
          {
            sub_1ABADDE3C();
          }

          *(v58 + 16) = v39 + 1;
          *(v58 + 8 * v39 + 32) = v38;
          v8 = v13;
          v13 = a2;
          v12 = a3;
        }
      }
    }

    if (a5 >= 1)
    {
      v22 = 1;
      v20 = MEMORY[0x1E69E7CC0];
      do
      {
        if (*(a6 + 16) && (v23 = sub_1ABA94FC8(0x3E6461703CLL, 0xE500000000000000), (v24 & 1) != 0))
        {
          v25 = *(*(a6 + 56) + 4 * v23);
        }

        else
        {
          v25 = 0;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = *(v20 + 16);
          sub_1ABAD9278();
          v20 = v29;
        }

        v26 = *(v20 + 16);
        if (v26 >= *(v20 + 24) >> 1)
        {
          sub_1ABAD9278();
          v20 = v30;
        }

        *(v20 + 16) = v26 + 1;
        *(v20 + 4 * v26 + 32) = v25;
        if (a5 == v22)
        {
          goto LABEL_25;
        }

        v27 = __OFADD__(v22++, 1);
      }

      while (!v27);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
    }

    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABAD70C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v11 = a1;
  v12 = sub_1ABAE2A40(a1, a2, a3);
  v37 = MEMORY[0x1E69E7CC0];
  sub_1ABADDE3C();
  if (v12 < 0)
  {
    goto LABEL_47;
  }

  v13 = v37;
  if (!v12)
  {
    v27 = 0;
    v33 = 0;
    v32 = 0;
    goto LABEL_24;
  }

  v27 = 0;
  v33 = 0;
  v32 = 0;
  while (1)
  {
    v14 = v11 <= a2;
    if (a3 > 0)
    {
      v14 = v11 >= a2;
    }

    if (!v14)
    {
      v16 = !__OFADD__(v11, a3);
      v32 = v16;
      v17 = 0x8000000000000000;
      if (!__OFADD__(v11, a3))
      {
        v17 = 0;
      }

      v33 = v17;
      v15 = v11;
      if (__OFADD__(v11, a3))
      {
        v11 = ((v11 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v11 += a3;
      }

      goto LABEL_18;
    }

    if (v27 & 1 | (v11 != a2))
    {
      break;
    }

    if (!v32 && v33 == 0x8000000000000000)
    {
      goto LABEL_46;
    }

    v27 = 1;
    v15 = a2;
    v11 = a2;
LABEL_18:
    v34 = v15;
    v35 = 0;
    sub_1ABAD79DC(&v34, a4, a5, a6, a7, &v36);
    if (v8)
    {
      goto LABEL_48;
    }

    v8 = 0;
    v18 = v36;
    v37 = v13;
    v19 = *(v13 + 16);
    if (v19 >= *(v13 + 24) >> 1)
    {
      sub_1ABADDE3C();
      v13 = v37;
    }

    *(v13 + 16) = v19 + 1;
    *(v13 + 8 * v19 + 32) = v18;
    if (!--v12)
    {
      while (1)
      {
LABEL_24:
        v20 = v11 <= a2;
        if (a3 > 0)
        {
          v20 = v11 >= a2;
        }

        if (v20)
        {
          if (v11 != a2 || (v27 & 1) != 0 || !v32 && v33 == 0x8000000000000000)
          {

            return v13;
          }

          v27 = 1;
          v21 = a2;
        }

        else
        {
          v22 = __OFADD__(v11, a3);
          if (v22)
          {
            v21 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v11 + a3;
          }

          v23 = 0x8000000000000000;
          if (!v22)
          {
            v23 = 0;
          }

          v33 = v23;
          v32 = !v22;
        }

        v34 = v11;
        sub_1ABAD79DC(&v34, a4, a5, a6, a7, &v36);
        if (v8)
        {
          goto LABEL_48;
        }

        v8 = 0;
        v24 = v36;
        v37 = v13;
        v25 = *(v13 + 16);
        if (v25 >= *(v13 + 24) >> 1)
        {
          sub_1ABADDE3C();
          v13 = v37;
        }

        *(v13 + 16) = v25 + 1;
        *(v13 + 8 * v25 + 32) = v24;
        v11 = v21;
      }
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:

  __break(1u);
  return result;
}

unint64_t sub_1ABAD73A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = sub_1ABAE2A40(a1, a2, a3);
  v56 = MEMORY[0x1E69E7CC0];
  result = sub_1ABADDE7C(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    goto LABEL_78;
  }

  v53 = v7;
  v52 = v8;
  v49 = v7 >> 63;
  if (!v10)
  {
    v51 = 0;
    v55 = 0;
    v54 = 0;
    goto LABEL_39;
  }

  v51 = 0;
  v55 = 0;
  v54 = 0;
  v50 = (v7 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
  v12 = v9;
  do
  {
    v13 = v12 <= v8;
    if (v7 > 0)
    {
      v13 = v12 >= v8;
    }

    if (v13)
    {
      if (v51 & 1 | (v12 != v8))
      {
        goto LABEL_75;
      }

      if (!v54 && v55 == 0x8000000000000000)
      {
        goto LABEL_77;
      }

      v51 = 1;
      v9 = v8;
    }

    else
    {
      v14 = __OFADD__(v12, v7);
      if (v14)
      {
        v9 = v50;
      }

      else
      {
        v9 = v12 + v7;
      }

      v15 = 0x8000000000000000;
      if (!v14)
      {
        v15 = 0;
      }

      v55 = v15;
      v54 = !v14;
    }

    result = sub_1ABF23D44();
    if (v12 >= result)
    {
      if (!*(a6 + 16))
      {
        goto LABEL_33;
      }

      v25 = 0x3E6461703CLL;
      v26 = 0xE500000000000000;
      goto LABEL_30;
    }

    v16 = sub_1ABF23D84();
    result = sub_1ABF23D84();
    if (result >> 14 < v16 >> 14)
    {
      goto LABEL_76;
    }

    v17 = sub_1ABF23EC4();
    v18 = MEMORY[0x1AC5A9330](v17);
    v20 = v19;

    if (*(a6 + 16))
    {
      sub_1ABA94FC8(v18, v20);
      if (v21)
      {
        if (*(a6 + 16))
        {
          v22 = sub_1ABA94FC8(v18, v20);
          if (v23)
          {
            v24 = *(*(a6 + 56) + 4 * v22);

            goto LABEL_34;
          }
        }

        goto LABEL_33;
      }
    }

    if (*(a6 + 16))
    {
      v25 = 0x6E776F6E6B6E753CLL;
      v26 = 0xE90000000000003ELL;
LABEL_30:
      result = sub_1ABA94FC8(v25, v26);
      if (v27)
      {
        v24 = *(*(a6 + 56) + 4 * result);
        goto LABEL_34;
      }
    }

LABEL_33:
    v24 = -1;
LABEL_34:
    v29 = *(v56 + 16);
    v28 = *(v56 + 24);
    if (v29 >= v28 >> 1)
    {
      result = sub_1ABADDE7C((v28 > 1), v29 + 1, 1);
    }

    *(v56 + 16) = v29 + 1;
    *(v56 + 4 * v29 + 32) = v24;
    v12 = v9;
    --v10;
    v7 = v53;
    v8 = v52;
  }

  while (v10);
  while (1)
  {
LABEL_39:
    v30 = v9 <= v8;
    if (v7 > 0)
    {
      v30 = v9 >= v8;
    }

    if (v30)
    {
      if (v9 != v8 || (v51 & 1) != 0 || !v54 && v55 == 0x8000000000000000)
      {

        return v56;
      }

      v51 = 1;
      v31 = v8;
    }

    else
    {
      v32 = __OFADD__(v9, v7);
      if (v32)
      {
        v31 = v49 ^ 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = v9 + v7;
      }

      v33 = 0x8000000000000000;
      if (!v32)
      {
        v33 = 0;
      }

      v55 = v33;
      v54 = !v32;
    }

    if (v9 >= sub_1ABF23D44())
    {
      if (!*(a6 + 16))
      {
        goto LABEL_69;
      }

      v43 = 0x3E6461703CLL;
      v44 = 0xE500000000000000;
      goto LABEL_66;
    }

    v34 = sub_1ABF23D84();
    result = sub_1ABF23D84();
    if (result >> 14 < v34 >> 14)
    {
      break;
    }

    v35 = sub_1ABF23EC4();
    v36 = MEMORY[0x1AC5A9330](v35);
    v38 = v37;

    if (*(a6 + 16))
    {
      sub_1ABA94FC8(v36, v38);
      if (v39)
      {
        if (*(a6 + 16))
        {
          v40 = sub_1ABA94FC8(v36, v38);
          if (v41)
          {
            v42 = *(*(a6 + 56) + 4 * v40);

            goto LABEL_70;
          }
        }

        goto LABEL_69;
      }
    }

    if (*(a6 + 16))
    {
      v43 = 0x6E776F6E6B6E753CLL;
      v44 = 0xE90000000000003ELL;
LABEL_66:
      v45 = sub_1ABA94FC8(v43, v44);
      if (v46)
      {
        v42 = *(*(a6 + 56) + 4 * v45);
        goto LABEL_70;
      }
    }

LABEL_69:
    v42 = -1;
LABEL_70:
    v48 = *(v56 + 16);
    v47 = *(v56 + 24);
    if (v48 >= v47 >> 1)
    {
      sub_1ABADDE7C((v47 > 1), v48 + 1, 1);
    }

    *(v56 + 16) = v48 + 1;
    *(v56 + 4 * v48 + 32) = v42;
    v9 = v31;
    v7 = v53;
    v8 = v52;
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
  return result;
}

uint64_t sub_1ABAD78A8(uint64_t a1)
{
  sub_1ABAE28EC();
  if ((sub_1ABA956B4() & 1) == 0 || (sub_1ABA956B4() & 1) == 0)
  {
    if (sub_1ABA956B4())
    {
      v6 = a1;

      v2 = 95;
      v3 = 0xE100000000000000;
    }

    else
    {
      v6 = a1;
      if ((sub_1ABA956B4() & 1) == 0)
      {
        v4 = sub_1ABAB6564();
        MEMORY[0x1AC5A9410](v4);

        MEMORY[0x1AC5A9410](95, 0xE100000000000000);

        return v6;
      }

      v2 = sub_1ABAB6564();
    }

    MEMORY[0x1AC5A9410](v2, v3);
    return v6;
  }

  return a1;
}

void sub_1ABAD79DC(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_51;
  }

  if (v7 >= *(*a2 + 16))
  {
LABEL_52:
    __break(1u);
  }

  else
  {
    v8 = *a2 + 16 * v7;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);

    v11 = sub_1ABF23D44();
    v12 = v11 - 1;
    if (!__OFSUB__(v11, 1))
    {
      v49 = a6;
      v13 = MEMORY[0x1E69E7CC0];
      while ((v12 & 0x8000000000000000) == 0 && *(*a3 + 16) < a4)
      {
        if (*(v13 + 16) >= a5)
        {
LABEL_45:

LABEL_46:
          *v49 = v13;
          return;
        }

        v14 = sub_1ABF23D84();
        if (sub_1ABF23D84() >> 14 < v14 >> 14)
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        sub_1ABF23D54();
        v15 = sub_1ABF23EC4();
        v16 = MEMORY[0x1AC5A9330](v15);
        v18 = v17;

        v19 = sub_1ABAD5D30(v16, v18, 0xFFFFFFFFLL);

        if (v19 != -1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = *(v13 + 16);
            sub_1ABAD9278();
            v13 = v33;
          }

          v20 = *(v13 + 16);
          if (v20 >= *(v13 + 24) >> 1)
          {
            sub_1ABAD9278();
            v13 = v34;
          }

          *(v13 + 16) = v20 + 1;
          *(v13 + 4 * v20 + 32) = v19;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_49;
          }

          if (v12 + 1 >= sub_1ABF23D44())
          {

            v9 = 0;
            v10 = 0xE000000000000000;
          }

          else
          {
            v21 = sub_1ABF23D84();
            v22 = v9 & 0xFFFFFFFFFFFFLL;
            if ((v10 & 0x2000000000000000) != 0)
            {
              v22 = HIBYTE(v10) & 0xF;
            }

            if (4 * v22 < v21 >> 14)
            {
              goto LABEL_50;
            }

            v23 = sub_1ABF23EC4();
            v25 = v24;
            v27 = v26;
            v29 = v28;

            v9 = MEMORY[0x1AC5A9330](v23, v25, v27, v29);
            v10 = v30;
          }

          v12 = sub_1ABF23D44();
        }

        if (__OFSUB__(v12--, 1))
        {
          goto LABEL_48;
        }
      }

      v35 = v9 & 0xFFFFFFFFFFFFLL;
      if ((v10 & 0x2000000000000000) != 0)
      {
        v35 = HIBYTE(v10) & 0xF;
      }

      if (v35)
      {
        while (1)
        {
          sub_1ABF23DE4();
          if (!v36)
          {
            break;
          }

          if (*(*a3 + 16) >= a4)
          {
            break;
          }

          if (*(v13 + 16) >= a5)
          {
            goto LABEL_45;
          }

          v37 = sub_1ABAD5D30(4935253, 0xE300000000000000, 0xFFFFFFFFLL);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = *(v13 + 16);
            sub_1ABAD9278();
            v13 = v40;
          }

          v38 = *(v13 + 16);
          if (v38 >= *(v13 + 24) >> 1)
          {
            sub_1ABAD9278();
            v13 = v41;
          }

          *(v13 + 16) = v38 + 1;
          *(v13 + 4 * v38 + 32) = v37;
        }
      }

      v42 = *(v13 + 16);
      v43 = a5 - v42;
      if (a5 > v42)
      {
        if (a5 - v42 < 0)
        {
          goto LABEL_54;
        }

        do
        {
          v44 = sub_1ABAD5D30(0x3E6461703CLL, 0xE500000000000000, 0xFFFFFFFFLL);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = *(v13 + 16);
            sub_1ABAD9278();
            v13 = v47;
          }

          v45 = *(v13 + 16);
          if (v45 >= *(v13 + 24) >> 1)
          {
            sub_1ABAD9278();
            v13 = v48;
          }

          *(v13 + 16) = v45 + 1;
          *(v13 + 4 * v45 + 32) = v44;
          --v43;
        }

        while (v43);
      }

      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
}

uint64_t sub_1ABAD7E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 88) = a4;
  *(v6 + 96) = v5;
  *(v6 + 57) = a5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a3;
  *(v6 + 64) = a1;
  v7 = sub_1ABAD219C(&qword_1EB4D1AD8, &qword_1ABF33C88);
  *(v6 + 104) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1ABAD7F10, 0, 0);
}

uint64_t sub_1ABAD7F10()
{
  v1 = *(v0 + 57);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = v2[5];
  v7 = v2[6];
  sub_1ABA93E20(v2 + 2, v6);
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  *(v0 + 32) = 0xD000000000000019;
  *(v0 + 40) = 0x80000001ABF86560;
  *(v0 + 48) = v3;
  *(v0 + 56) = v1 & 1;
  v8 = *(v7 + 32);

  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  *v10 = v0;
  v10[1] = sub_1ABAD80B0;
  v11 = *(v0 + 112);

  return v13(v11, v0 + 16, &type metadata for LocationEmbedderInferenceInterface, v6, v7);
}

uint64_t sub_1ABAD80B0()
{
  sub_1ABA7BC04();
  sub_1ABA7BC10();
  v3 = v2;
  v4 = v2[15];
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  v3[16] = v0;

  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[5];

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABAD81D4()
{
  sub_1ABA7BC04();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[8];
  sub_1ABAE2FE4(v1, v3);
  v4 = *(v1 + *(v2 + 28));
  sub_1ABAB480C(v1, &qword_1EB4D1AD8, &qword_1ABF33C88);
  *(v3 + *(sub_1ABAD219C(&qword_1EB4D1AA0, &unk_1ABF33C30) + 28)) = v4;

  sub_1ABA7BBE0();

  return v5();
}

uint64_t sub_1ABAD8288()
{
  sub_1ABA7BBF8();
  v1 = *(v0 + 112);

  sub_1ABA7BBE0();
  v3 = *(v0 + 128);

  return v2();
}

uint64_t sub_1ABAD82E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a4;
  v8[9] = v19;
  v12 = *(*(sub_1ABAD219C(&qword_1EB4D1AB0, &qword_1ABF33C40) - 8) + 64) + 15;
  v8[10] = swift_task_alloc();
  v13 = *(*(sub_1ABAD219C(&qword_1EB4D1AA0, &unk_1ABF33C30) - 8) + 64) + 15;
  v14 = swift_task_alloc();
  v8[11] = v14;
  v15 = swift_task_alloc();
  v8[12] = v15;
  *v15 = v8;
  v15[1] = sub_1ABAD8448;

  return sub_1ABAD7E64(v14, a6, a7, a8, v18 & 1);
}

uint64_t sub_1ABAD8448()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = *(v2 + 96);
  v4 = *v1;
  sub_1ABA7BBC0();
  *v5 = v4;
  *(v6 + 104) = v0;

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABAD8548()
{
  sub_1ABA7BC04();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  sub_1ABAE2F1C();
  v4 = sub_1ABAD219C(&qword_1EB4D1AB8, &qword_1ABF33C48);
  swift_storeEnumTagMultiPayload();
  sub_1ABA8C6E0();
  sub_1ABA7B9B4(v5, v6, v7, v4);
  v8 = *(*v3 + 96);
  swift_beginAccess();
  sub_1ABAE2F74(v2, v3 + v8);
  swift_endAccess();
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[8];
  sub_1ABF24744();

  sub_1ABA7BBE0();

  return v12();
}

uint64_t sub_1ABAD8650()
{
  sub_1ABA7BC04();
  v2 = v0[9];
  v1 = v0[10];
  *v1 = v0[13];
  v3 = sub_1ABAD219C(&qword_1EB4D1AB8, &qword_1ABF33C48);
  swift_storeEnumTagMultiPayload();
  sub_1ABA8C6E0();
  sub_1ABA7B9B4(v4, v5, v6, v3);
  v7 = *(*v2 + 96);
  swift_beginAccess();
  sub_1ABAE2F74(v1, v2 + v7);
  swift_endAccess();
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[8];
  sub_1ABF24744();

  sub_1ABA7BBE0();

  return v11();
}

void sub_1ABAD8758()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v6 != v7)
    {
      sub_1ABAA4834();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1ABA8E5E4(v5);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D10A0, &qword_1ABF33228);
    v8 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      sub_1ABA972A4(v9, v10);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD8820()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA946F8(v6);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D10C8, &unk_1ABF33250);
    v9 = sub_1ABAA1B54();
    sub_1ABA80590(v9);
    v9[2] = v3;
    v9[3] = v10;
  }

  v11 = sub_1ABA97400();
  if (v1)
  {
    sub_1ABA8857C();
    if (v16)
    {
      v17 = v15 > v13;
    }

    else
    {
      v17 = 0;
    }

    if (!v17)
    {
      memmove(v13, v14, 16 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v3);
  }
}

void sub_1ABAD88DC()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA8E5E4(v6);
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D1A58, &qword_1ABF33BE8);
    v9 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v9);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 144 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD89DC()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v6 != v7)
    {
      sub_1ABAA4834();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1ABA8E5E4(v5);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D17C0, &qword_1ABF33950);
    v8 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      sub_1ABA9FF84(v9, v10);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD8AA4()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA8E5E4(v6);
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D1130, &qword_1ABF332B8);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    sub_1ABAB5070(v10);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1ABAA3730();
  if (v1)
  {
    if (v9 != v0 || &v12[v2] <= v11)
    {
      memmove(v11, v12, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, v2);
  }
}

void sub_1ABAD8BA4()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v6 != v7)
    {
      sub_1ABAA4834();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1ABA8E5E4(v5);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D17D0, &qword_1ABF33960);
    v8 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      sub_1ABA9FF84(v9, v10);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD8C6C()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA8E5E4(v6);
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D1198, &qword_1ABF33320);
    v9 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v9);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 120 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD8D3C()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA8E5E4(v6);
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D10D8, &unk_1ABF33260);
    v9 = sub_1ABAA21A8();
    sub_1ABA80590(v9);
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1ABAA3730();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD8E08()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA8E5E4(v6);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D1A60, &unk_1ABF33BF0);
    v3 = 56;
    v9 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v9);
  }

  sub_1ABAB0FDC();
  if (v1)
  {
    sub_1ABA95FC8();
    if (v11)
    {
      v12 = v10 > v3;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      v13 = sub_1ABA826A8();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4D1A68, &unk_1ABF6BE10);
    sub_1ABA83EB4();
  }
}

void sub_1ABAD8EE4()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v6 != v7)
    {
      sub_1ABAA4834();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1ABA8E5E4(v5);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D17A8, &qword_1ABF33938);
    v8 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v11)
    {
      v12 = v10 > v9;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      sub_1ABAA0E48();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD8FE8()
{
  sub_1ABA968E8();
  if (v3)
  {
    sub_1ABA93188();
    if (v4 != v5)
    {
      sub_1ABAA4834();
      if (v4)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABAA1E48();
  if (v4 ^ v5 | v13)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    sub_1ABAB540C(v6, v7, v8, v9, v10, v11);
    v15 = swift_allocObject();
    sub_1ABA81494(v15);
    *(v14 + 16) = v2;
    *(v14 + 24) = 2 * (v16 / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = sub_1ABAA3730();
  if (v1)
  {
    if (v14 != v0 || &v18[40 * v2] <= v17)
    {
      memmove(v17, v18, 40 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD90DC()
{
  sub_1ABA968E8();
  if (v3)
  {
    sub_1ABA93188();
    if (v4 != v5)
    {
      sub_1ABAA4834();
      if (v4)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABAA1E48();
  if (v4 ^ v5 | v13)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    sub_1ABAB540C(v6, v7, v8, v9, v10, v11);
    v15 = swift_allocObject();
    sub_1ABA81494(v15);
    *(v14 + 16) = v2;
    *(v14 + 24) = 2 * (v16 / 112);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = sub_1ABAA3730();
  if (v1)
  {
    if (v14 != v0 || &v18[112 * v2] <= v17)
    {
      memmove(v17, v18, 112 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD91B4()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA946F8(v6);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D1150, &qword_1ABF332D8);
    v9 = sub_1ABAA21A8();
    j__malloc_size(v9);
    sub_1ABA83554();
    v9[2] = v3;
    v9[3] = v10;
  }

  v11 = sub_1ABA97400();
  if (v1)
  {
    sub_1ABAB2A9C();
    if (v16)
    {
      v17 = v15 > v13;
    }

    else
    {
      v17 = 0;
    }

    if (!v17)
    {
      memmove(v13, v14, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v3);
  }
}

void sub_1ABAD9278()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA946F8(v6);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D1380, &qword_1ABF33508);
    v9 = sub_1ABAA21A8();
    sub_1ABAA3B60(v9);
    sub_1ABA8BE44(v10);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1ABA97400();
  if (v1)
  {
    if (v9 != v0 || &v12[4 * v3] <= v11)
    {
      memmove(v11, v12, 4 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 4 * v3);
  }
}

void sub_1ABAD9378()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v6 != v7)
    {
      sub_1ABAA4834();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1ABA8E5E4(v5);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D1848, &qword_1ABF339D8);
    v8 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      sub_1ABA9FF84(v9, v10);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD9440()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v6 != v7)
    {
      sub_1ABAA4834();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1ABA8E5E4(v5);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D1228, &qword_1ABF333B0);
    v8 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      sub_1ABA972A4(v9, v10);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD9508()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA8E5E4(v6);
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D1840, &qword_1ABF339D0);
    v9 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v9);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 56 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD96B8()
{
  sub_1ABA9A268();
  if (v4)
  {
    sub_1ABA90578();
    if (v6 != v7)
    {
      sub_1ABA97710();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABAA5EA4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_1ABAABC34(v2, v5, &qword_1EB4D1108, &qword_1ABF33290);
  sub_1ABA89364();
  v9 = sub_1ABF21EB4();
  sub_1ABA826B4(v9);
  v11 = *(v10 + 80);
  sub_1ABA7AB74();
  if (v1)
  {
    sub_1ABAA218C(MEMORY[0x1E6969530], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAA5198();
  }
}

void sub_1ABAD9790()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA8E5E4(v6);
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D17A0, &qword_1ABF33930);
    v9 = sub_1ABAA21A8();
    sub_1ABA81494(v9);
    sub_1ABA9922C(v10);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA0A10();
    if (v14)
    {
      v15 = v13 > v11;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      memmove(v11, v12, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD9858()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA8E5E4(v6);
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D10A8, &qword_1ABF33230);
    v9 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v9);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 136 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD9928()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA8E5E4(v6);
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D1A50, &qword_1ABF33BE0);
    v9 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v9);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 56 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD99F8()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v6 != v7)
    {
      sub_1ABAA4834();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1ABA8E5E4(v5);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D19E8, &qword_1ABF33B78);
    v8 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v11)
    {
      v12 = v10 > v9;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      sub_1ABAA0E48();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD9AE8()
{
  sub_1ABA7E294();
  if (v7)
  {
    sub_1ABA93188();
    if (v9 != v10)
    {
      sub_1ABAA4834();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v8 = v4;
  }

  v11 = *(v0 + 16);
  sub_1ABADD158(v11, v8, v5, v6);
  v13 = v12;
  v14 = sub_1ABA7ECFC();
  v16 = sub_1ABAD219C(v14, v15);
  sub_1ABA826B4(v16);
  v18 = *(v17 + 80);
  sub_1ABA7AB74();
  if (v3)
  {
    sub_1ABADD54C(v0 + v19, v11, v13 + v19, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD9BE8()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA8E5E4(v6);
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D1978, &qword_1ABF33B08);
    v9 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v9);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1ABAA3730();
  if (v1)
  {
    if (v3 != v0 || &v11[328 * v2] <= v10)
    {
      memmove(v10, v11, 328 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD9CB8()
{
  sub_1ABA9A268();
  if (v4)
  {
    sub_1ABA90578();
    if (v6 != v7)
    {
      sub_1ABA97710();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABAA5EA4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_1ABAABC34(v2, v5, &qword_1EB4D1A28, &qword_1ABF33BB8);
  v9 = sub_1ABA89364();
  v10 = type metadata accessor for ViewService.DefaultResolverInteractionsView.Interaction(v9);
  sub_1ABA826B4(v10);
  v12 = *(v11 + 80);
  sub_1ABA7AB74();
  if (v1)
  {
    sub_1ABAA218C(type metadata accessor for ViewService.DefaultResolverInteractionsView.Interaction, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAA5198();
  }
}

void sub_1ABAD9D90()
{
  sub_1ABA9A268();
  if (v4)
  {
    sub_1ABA90578();
    if (v6 != v7)
    {
      sub_1ABA97710();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABAA5EA4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_1ABAABC34(v2, v5, &qword_1EB4D1A20, &qword_1ABF33BB0);
  v9 = sub_1ABA89364();
  v10 = type metadata accessor for ViewService.DefaultResolverInteractionsView.Event(v9);
  sub_1ABA826B4(v10);
  v12 = *(v11 + 80);
  sub_1ABA7AB74();
  if (v1)
  {
    sub_1ABAA218C(type metadata accessor for ViewService.DefaultResolverInteractionsView.Event, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAA5198();
  }
}

void sub_1ABAD9E68()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA8E5E4(v6);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D1140, &qword_1ABF332C8);
    v3 = 104;
    v9 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v9);
  }

  sub_1ABAB0FDC();
  if (v1)
  {
    sub_1ABA8CA68();
    if (v11)
    {
      v12 = v10 > v3;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      v13 = sub_1ABA826A8();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
    sub_1ABA83EB4();
  }
}

void sub_1ABAD9F38()
{
  sub_1ABAA4428();
  if (v7)
  {
    sub_1ABA93188();
    if (v9 != v10)
    {
      sub_1ABAA4834();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_1ABA8E5E4(v8);
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D1A10, &qword_1ABF33BA0);
    v11 = sub_1ABAA21A8();
    sub_1ABA81494(v11);
    sub_1ABA9922C(v12);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1ABAB0FDC();
  if (v1)
  {
    if (v3 != v0 || v5 + 32 * v2 <= v4)
    {
      v14 = sub_1ABA826A8();
      memmove(v14, v15, v16);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4D1A18, &qword_1ABF33BA8);
    sub_1ABA83EB4();
  }
}

void sub_1ABADA018()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA8E5E4(v6);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D1A00, &qword_1ABF33B90);
    v3 = 24;
    v9 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v9);
  }

  sub_1ABAB0FDC();
  if (v1)
  {
    sub_1ABA95FC8();
    if (v11)
    {
      v12 = v10 > v3;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      v13 = sub_1ABA826A8();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4D1A08, &qword_1ABF33B98);
    sub_1ABA83EB4();
  }
}

void sub_1ABADA0F4()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA8E5E4(v6);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D19C8, &qword_1ABF33B58);
    v3 = 40;
    v9 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v9);
  }

  sub_1ABAB0FDC();
  if (v1)
  {
    sub_1ABA95FC8();
    if (v11)
    {
      v12 = v10 > v3;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      sub_1ABAA0E48();
      v13 = sub_1ABA826A8();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4D19D0, &qword_1ABF33B60);
    sub_1ABA83EB4();
  }
}

void sub_1ABADA1CC()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA946F8(v6);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D1378, &qword_1ABF33500);
    v9 = sub_1ABAA21A8();
    j__malloc_size(v9);
    sub_1ABA83554();
    v9[2] = v3;
    v9[3] = v10;
  }

  v11 = sub_1ABA97400();
  if (v1)
  {
    sub_1ABAB2A9C();
    if (v16)
    {
      v17 = v15 > v13;
    }

    else
    {
      v17 = 0;
    }

    if (!v17)
    {
      memmove(v13, v14, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v3);
  }
}

void sub_1ABADA2B4()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA946F8(v6);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D1360, &unk_1ABF41170);
    v9 = sub_1ABAA21A8();
    sub_1ABAA3B60(v9);
    sub_1ABA8BE44(v10);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1ABA97400();
  if (v1)
  {
    if (v9 != v0 || &v12[4 * v3] <= v11)
    {
      memmove(v11, v12, 4 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 4 * v3);
  }
}

void sub_1ABADA37C()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA8E5E4(v6);
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D1958, &qword_1ABF33AE8);
    v9 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v9);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 1160 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADA44C()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v6 != v7)
    {
      sub_1ABAA4834();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1ABA8E5E4(v5);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D1960, &qword_1ABF33AF0);
    v8 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      sub_1ABA972A4(v9, v10);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADA538()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA946F8(v6);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D1950, &qword_1ABF33AE0);
    v9 = sub_1ABAA1B54();
    sub_1ABA80590(v9);
    v9[2] = v3;
    v9[3] = v10;
  }

  v11 = sub_1ABA97400();
  if (v1)
  {
    sub_1ABA8857C();
    if (v16)
    {
      v17 = v15 > v13;
    }

    else
    {
      v17 = 0;
    }

    if (!v17)
    {
      memmove(v13, v14, 16 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v3);
  }
}

void sub_1ABADA5F4()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA946F8(v6);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D1940, &qword_1ABF33AD0);
    v9 = sub_1ABAB5604();
    sub_1ABA7ECDC(v9);
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1ABA97400();
  if (v1)
  {
    if (v9 != v0 || &v12[80 * v3] <= v11)
    {
      memmove(v11, v12, 80 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADA6CC()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA8E5E4(v6);
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D1780, &qword_1ABF33910);
    v9 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v9);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 104 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADA79C()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA8E5E4(v6);
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D1788, &qword_1ABF33918);
    v9 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v9);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 48 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADA86C()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA8E5E4(v6);
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D1990, &qword_1ABF33B20);
    v9 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v9);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1ABAA3730();
  if (v1)
  {
    if (v3 != v0 || &v11[184 * v2] <= v10)
    {
      memmove(v10, v11, 184 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADA93C()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA946F8(v6);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D1938, &qword_1ABF33AC8);
    v9 = sub_1ABAB5604();
    sub_1ABA7ECDC(v9);
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1ABA97400();
  if (v1)
  {
    if (v9 != v0 || &v12[24 * v3] <= v11)
    {
      memmove(v11, v12, 24 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 24 * v3);
  }
}

void sub_1ABADAA14()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA946F8(v6);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D1930, &qword_1ABF33AC0);
    v9 = sub_1ABAA21A8();
    j__malloc_size(v9);
    sub_1ABA8FDCC();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1ABA97400();
  if (v1)
  {
    if (v9 != v0 || &v12[32 * v3] <= v11)
    {
      memmove(v11, v12, 32 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 32 * v3);
  }
}

void sub_1ABADAB00()
{
  sub_1ABAA00E4();
  sub_1ABA7E294();
  if (v6)
  {
    sub_1ABA93188();
    if (v8 != v9)
    {
      sub_1ABAA4834();
      if (v8)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v7 = v5;
  }

  sub_1ABAA5668(v7);
  if (v3)
  {
    sub_1ABAB540C(v10, v11, v12, v13, v14, v15);
    v16 = sub_1ABAA21A8();
    sub_1ABA80590(v16);
    v16[2] = v2;
    v16[3] = v17;
  }

  sub_1ABA82D94();
  if (v1)
  {
    sub_1ABA96F3C();
    if (v19)
    {
      v20 = v18 > v4;
    }

    else
    {
      v20 = 0;
    }

    if (!v20)
    {
      v21 = sub_1ABA894A0();
      memmove(v21, v22, v23);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v24 = sub_1ABA7ECFC();
    sub_1ABAD219C(v24, v25);
    sub_1ABA8E070();
    swift_arrayInitWithCopy();
  }

  sub_1ABA82A00();
}

void sub_1ABADAC00()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA8E5E4(v6);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D18E8, &qword_1ABF33A78);
    v3 = 120;
    v9 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v9);
  }

  sub_1ABAB0FDC();
  if (v1)
  {
    sub_1ABA95FC8();
    if (v11)
    {
      v12 = v10 > v3;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      v13 = sub_1ABA826A8();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4D18F0, &qword_1ABF33A80);
    sub_1ABA83EB4();
  }
}

void sub_1ABADAD14()
{
  sub_1ABA9A268();
  if (v4)
  {
    sub_1ABA90578();
    if (v6 != v7)
    {
      sub_1ABA97710();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABAA5EA4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_1ABAABC34(v2, v5, &qword_1EB4D1230, &qword_1ABF333B8);
  v9 = sub_1ABA89364();
  v10 = type metadata accessor for CustomGraphDateRelationship(v9);
  sub_1ABA826B4(v10);
  v12 = *(v11 + 80);
  sub_1ABA7AB74();
  if (v1)
  {
    sub_1ABAA218C(type metadata accessor for CustomGraphDateRelationship, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAA5198();
  }
}

void sub_1ABADAE94()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v6 != v7)
    {
      sub_1ABAA4834();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1ABA8E5E4(v5);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D1808, &qword_1ABF33998);
    v8 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v11)
    {
      v12 = v10 > v9;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      sub_1ABAA0E48();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADAF60()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA8E5E4(v6);
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D1870, &qword_1ABF33A00);
    v9 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v9);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 232 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADB04C()
{
  sub_1ABA968E8();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA7FBEC(v6);
  if (v3)
  {
    sub_1ABAB540C(v9, v10, v11, v12, v13, v14);
    v15 = swift_allocObject();
    sub_1ABAA3B60(v15);
    sub_1ABAB6868(v16);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v17 = v15 + 32;
  v18 = v0 + 32;
  if (v1)
  {
    if (v15 != v0 || &v18[64 * v2] <= v17)
    {
      memmove(v17, v18, v2 << 6);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADB13C()
{
  sub_1ABAA00E4();
  sub_1ABA7E294();
  if (v7)
  {
    sub_1ABA93188();
    if (v9 != v10)
    {
      sub_1ABAA4834();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_1ABAA5668(v8);
  if (v3)
  {
    sub_1ABAB540C(v11, v12, v13, v14, v15, v16);
    v17 = swift_allocObject();
    sub_1ABAA3B60(v17);
    sub_1ABA96BB8(v18 / 64);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_1ABA82D94();
  if (v1)
  {
    if (v17 != v0 || v5 + (v2 << 6) <= v4)
    {
      v20 = sub_1ABA894A0();
      memmove(v20, v21, v22);
    }

    v0[2] = 0;
  }

  else
  {
    v23 = sub_1ABA7ECFC();
    sub_1ABAD219C(v23, v24);
    sub_1ABA8E070();
    swift_arrayInitWithCopy();
  }

  sub_1ABA82A00();
}

void sub_1ABADB250()
{
  sub_1ABAA00E4();
  sub_1ABA7E294();
  if (v4)
  {
    sub_1ABA93188();
    if (v9 != v10)
    {
      sub_1ABAA4834();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v8 = v3;
  }

  v11 = v0[2];
  if (v8 <= v11)
  {
    v12 = v0[2];
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    sub_1ABAB540C(v2, v3, v4, v5, v6, v7);
    v13 = swift_allocObject();
    sub_1ABAA3B60(v13);
    v13[2] = v11;
    v13[3] = 2 * (v14 / 40);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v13 != v0 || &v0[5 * v11 + 4] <= v13 + 4)
    {
      v16 = sub_1ABA894A0();
      memmove(v16, v17, v18);
    }

    v0[2] = 0;
  }

  else
  {
    v19 = sub_1ABA7ECFC();
    sub_1ABAD219C(v19, v20);
    sub_1ABA8E070();
    swift_arrayInitWithCopy();
  }

  sub_1ABA82A00();
}

void sub_1ABADB37C()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA946F8(v6);
  if (v2)
  {
    sub_1ABAB540C(v9, v10, v11, v12, v13, v14);
    v15 = sub_1ABAA21A8();
    j__malloc_size(v15);
    sub_1ABA83554();
    v15[2] = v3;
    v15[3] = v16;
  }

  v17 = sub_1ABA97400();
  if (v1)
  {
    sub_1ABAB2A9C();
    if (v22)
    {
      v23 = v21 > v19;
    }

    else
    {
      v23 = 0;
    }

    if (!v23)
    {
      memmove(v19, v20, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v17, v18, 8 * v3);
  }
}

void sub_1ABADB430()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA8E5E4(v6);
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D1778, &qword_1ABF33908);
    v9 = sub_1ABAA21A8();
    j__malloc_size(v9);
    sub_1ABA83554();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1ABAA3730();
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v2] <= v11)
    {
      memmove(v11, v12, 8 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADB500()
{
  sub_1ABA9A268();
  if (v4)
  {
    sub_1ABA90578();
    if (v6 != v7)
    {
      sub_1ABA97710();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABAA5EA4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_1ABAABC34(v2, v5, &qword_1EB4D1110, &qword_1ABF33298);
  sub_1ABA89364();
  v9 = type metadata accessor for K2TTextualization();
  sub_1ABA826B4(v9);
  v11 = *(v10 + 80);
  sub_1ABA7AB74();
  if (v1)
  {
    sub_1ABAA218C(type metadata accessor for K2TTextualization, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAA5198();
  }
}

void sub_1ABADB5D8()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA8E5E4(v6);
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D1318, &unk_1ABF334A0);
    v9 = sub_1ABAA21A8();
    j__malloc_size(v9);
    sub_1ABA83554();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1ABAA3730();
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v2] <= v11)
    {
      memmove(v11, v12, 8 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADB6BC()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA946F8(v6);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D1320, qword_1ABF5EC20);
    v9 = sub_1ABAA21A8();
    sub_1ABAA3B60(v9);
    sub_1ABA8BE44(v10);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1ABA97400();
  if (v1)
  {
    if (v9 != v0 || &v12[2 * v3] <= v11)
    {
      memmove(v11, v12, 2 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 2 * v3);
  }
}

void sub_1ABADB784()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA8E5E4(v6);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D1328, &unk_1ABF334B0);
    v3 = 24;
    v9 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v9);
  }

  sub_1ABAB0FDC();
  if (v1)
  {
    sub_1ABA95FC8();
    if (v11)
    {
      v12 = v10 > v3;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      v13 = sub_1ABA826A8();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4D1330, &unk_1ABF69190);
    sub_1ABA83EB4();
  }
}

void sub_1ABADB87C()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA8E5E4(v6);
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D1768, &qword_1ABF338F8);
    v9 = sub_1ABAA21A8();
    sub_1ABA81494(v9);
    sub_1ABA9922C(v10);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA0A10();
    if (v14)
    {
      v15 = v13 > v11;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      memmove(v11, v12, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADB944()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA8E5E4(v6);
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D17C8, &qword_1ABF33958);
    v9 = sub_1ABAA21A8();
    sub_1ABA81494(v9);
    sub_1ABA9922C(v10);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA0A10();
    if (v14)
    {
      v15 = v13 > v11;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      memmove(v11, v12, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADBA0C()
{
  sub_1ABAA4428();
  if (v7)
  {
    sub_1ABA93188();
    if (v9 != v10)
    {
      sub_1ABAA4834();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_1ABA8E5E4(v8);
  if (v3)
  {
    sub_1ABAD219C(&unk_1EB4D17B0, &qword_1ABF33940);
    v11 = swift_allocObject();
    sub_1ABA81494(v11);
    sub_1ABA9922C(v12);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1ABAB0FDC();
  if (v1)
  {
    if (v3 != v0 || v5 + (v2 << 6) <= v4)
    {
      v14 = sub_1ABA826A8();
      memmove(v14, v15, v16);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAD219C(&unk_1EB4D2E40, &qword_1ABF33948);
    sub_1ABA83EB4();
  }
}

void sub_1ABADBB08()
{
  sub_1ABA9A268();
  if (v4)
  {
    sub_1ABA90578();
    if (v6 != v7)
    {
      sub_1ABA97710();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABAA5EA4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_1ABAABC34(v2, v5, &qword_1EB4D1758, &qword_1ABF338E8);
  v9 = sub_1ABA89364();
  v10 = type metadata accessor for CustomGraphPerson(v9);
  sub_1ABA826B4(v10);
  v12 = *(v11 + 80);
  sub_1ABA7AB74();
  if (v1)
  {
    sub_1ABAA218C(type metadata accessor for CustomGraphPerson, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAA5198();
  }
}

void sub_1ABADBBE0()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA8E5E4(v6);
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D1750, &qword_1ABF338E0);
    v9 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v9);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 400 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADBCB0()
{
  sub_1ABA9A268();
  if (v4)
  {
    sub_1ABA90578();
    if (v6 != v7)
    {
      sub_1ABA97710();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABAA5EA4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_1ABAABC34(v2, v5, &qword_1EB4D1480, &qword_1ABF33608);
  v9 = sub_1ABA89364();
  v10 = type metadata accessor for CustomGraphActivityEvent(v9);
  sub_1ABA826B4(v10);
  v12 = *(v11 + 80);
  sub_1ABA7AB74();
  if (v1)
  {
    sub_1ABAA218C(type metadata accessor for CustomGraphActivityEvent, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAA5198();
  }
}

void sub_1ABADBD88()
{
  sub_1ABA9A268();
  if (v4)
  {
    sub_1ABA90578();
    if (v6 != v7)
    {
      sub_1ABA97710();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABAA5EA4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_1ABAABC34(v2, v5, &qword_1EB4D1760, &qword_1ABF338F0);
  v9 = sub_1ABA89364();
  v10 = type metadata accessor for CustomGraphBehaviorActivityEvent(v9);
  sub_1ABA826B4(v10);
  v12 = *(v11 + 80);
  sub_1ABA7AB74();
  if (v1)
  {
    sub_1ABAA218C(type metadata accessor for CustomGraphBehaviorActivityEvent, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAA5198();
  }
}

void sub_1ABADC01C()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA946F8(v6);
  if (v2)
  {
    sub_1ABAB540C(v9, v10, v11, v12, v13, v14);
    v15 = sub_1ABAA1B54();
    sub_1ABA80590(v15);
    v15[2] = v3;
    v15[3] = v16;
  }

  v17 = sub_1ABA97400();
  if (v1)
  {
    sub_1ABA8857C();
    if (v22)
    {
      v23 = v21 > v19;
    }

    else
    {
      v23 = 0;
    }

    if (!v23)
    {
      memmove(v19, v20, 16 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v17, v18, 16 * v3);
  }
}

void sub_1ABADC278()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA946F8(v6);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D1478, &qword_1ABF33600);
    v9 = sub_1ABAA1B54();
    sub_1ABA80590(v9);
    v9[2] = v3;
    v9[3] = v10;
  }

  v11 = sub_1ABA97400();
  if (v1)
  {
    sub_1ABA8857C();
    if (v16)
    {
      v17 = v15 > v13;
    }

    else
    {
      v17 = 0;
    }

    if (!v17)
    {
      memmove(v13, v14, 16 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v3);
  }
}

void sub_1ABADC334()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA8E5E4(v6);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D1538, &qword_1ABF336C8);
    v3 = 40;
    v9 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v9);
  }

  sub_1ABAB0FDC();
  if (v1)
  {
    sub_1ABA95FC8();
    if (v11)
    {
      v12 = v10 > v3;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      sub_1ABAA0E48();
      v13 = sub_1ABA826A8();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4D1540, &qword_1ABF336D0);
    sub_1ABA83EB4();
  }
}

void sub_1ABADC430()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v6 != v7)
    {
      sub_1ABAA4834();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1ABA8E5E4(v5);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D1490, &qword_1ABF33618);
    v8 = sub_1ABAA3F10();
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v11)
    {
      v12 = v10 > v9;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      sub_1ABAA0E48();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADC558()
{
  sub_1ABA9A268();
  if (v4)
  {
    sub_1ABA90578();
    if (v6 != v7)
    {
      sub_1ABA97710();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABAA5EA4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_1ABAABC34(v2, v5, &qword_1EB4D1350, qword_1ABF68740);
  sub_1ABA89364();
  v9 = type metadata accessor for KGQ.Value();
  sub_1ABA826B4(v9);
  v11 = *(v10 + 80);
  sub_1ABA7AB74();
  if (v1)
  {
    sub_1ABAA218C(type metadata accessor for KGQ.Value, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAA5198();
  }
}

void sub_1ABADC630()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA946F8(v6);
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D1308, &qword_1ABF33490);
    v9 = sub_1ABAB5604();
    sub_1ABA7ECDC(v9);
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1ABA97400();
  if (v1)
  {
    if (v9 != v0 || &v12[24 * v3] <= v11)
    {
      memmove(v11, v12, 24 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADC71C()
{
  sub_1ABAA4428();
  if (v5)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1ABA8E5E4(v6);
  if (v3)
  {
    sub_1ABAB540C(v9, v10, v11, v12, v13, v14);
    v15 = swift_allocObject();
    v16 = j__malloc_size(v15);
    sub_1ABAB5070(v16);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v17 = sub_1ABAA3730();
  if (v1)
  {
    if (v15 != v0 || &v18[v2] <= v17)
    {
      memmove(v17, v18, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v17, v18, v2);
  }
}
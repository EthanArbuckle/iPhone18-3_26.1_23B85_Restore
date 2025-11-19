uint64_t sub_2144A7150(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF646E756F726779;
  v3 = 0x616C50726F467369;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x7365636166;
    }

    else
    {
      v5 = 0x6E6F69676572;
    }

    if (v4 == 2)
    {
      v6 = 0xE500000000000000;
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
      v5 = 0x736E6F69676572;
    }

    else
    {
      v5 = 0x616C50726F467369;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEF646E756F726779;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x7365636166;
  if (a2 != 2)
  {
    v8 = 0x6E6F69676572;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v3 = 0x736E6F69676572;
    v2 = 0xE700000000000000;
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
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2144A728C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x64757469676E6F6CLL;
    }

    else
    {
      v4 = 0x656475746974616CLL;
    }

    if (v2)
    {
      v3 = 0xE900000000000065;
    }

    else
    {
      v3 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x7972657571;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x6C6562616CLL;
  }

  else
  {
    v4 = 0x6B6361626C6C6166;
    v3 = 0xEB000000006C7255;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x64757469676E6F6CLL;
    }

    else
    {
      v9 = 0x656475746974616CLL;
    }

    if (a2)
    {
      v8 = 0xE900000000000065;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x6C6562616CLL;
    if (a2 != 3)
    {
      v6 = 0x6B6361626C6C6166;
      v5 = 0xEB000000006C7255;
    }

    if (a2 == 2)
    {
      v7 = 0x7972657571;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
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
    v10 = sub_2146DA6A8();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2144A7420(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x616D49696A6F6D65;
    }

    else
    {
      v5 = 0x6669636570736E75;
    }

    if (v4)
    {
      v6 = 0xEA00000000006567;
    }

    else
    {
      v6 = 0xEB00000000646569;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE700000000000000;
    v5 = 0x72656B63697473;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x746F68506576696CLL;
    }

    else
    {
      v5 = 0x73654D6F69647561;
    }

    if (v4 == 3)
    {
      v6 = 0xE90000000000006FLL;
    }

    else
    {
      v6 = 0xEC00000065676173;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x72656B63697473;
  v9 = 0x746F68506576696CLL;
  v10 = 0xE90000000000006FLL;
  if (a2 != 3)
  {
    v9 = 0x73654D6F69647561;
    v10 = 0xEC00000065676173;
  }

  if (a2 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  if (a2)
  {
    v3 = 0x616D49696A6F6D65;
    v2 = 0xEA00000000006567;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_2146DA6A8();
  }

  return v13 & 1;
}

uint64_t sub_2144A75C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6D756964656DLL;
    }

    else
    {
      v3 = 7827308;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE400000000000000;
    v3 = 1751607656;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 7823730;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2 == 3)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6D756964656DLL;
    }

    else
    {
      v6 = 7827308;
    }

    if (a2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE400000000000000;
    if (v3 != 1751607656)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE300000000000000;
    if (v3 != 7823730)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    if (v3 != 0x6E776F6E6B6E75)
    {
LABEL_34:
      v7 = sub_2146DA6A8();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_2144A772C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000013;
  v3 = "statusKitInvitation";
  v4 = a1;
  v5 = 0xD00000000000001CLL;
  if (a1 == 4)
  {
    v6 = "idsHealthInvitation";
  }

  else
  {
    v5 = 0xD00000000000001ALL;
    v6 = "idsActivitySharingInvitation";
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000013;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v8 = "idsKCSharingInvitation";
  }

  else
  {
    v8 = v6;
  }

  v9 = 0xD000000000000016;
  if (a1 == 1)
  {
    v9 = 0xD000000000000014;
    v10 = "idsSampleInvitation";
  }

  else
  {
    v10 = "idsHomekitInvitation";
  }

  if (v4)
  {
    v11 = v10;
  }

  else
  {
    v9 = 0xD000000000000013;
    v11 = "statusKitInvitation";
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v7;
  }

  if (v4 <= 2)
  {
    v13 = v11;
  }

  else
  {
    v13 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v3 = "idsKCSharingInvitation";
    }

    else if (a2 == 4)
    {
      v2 = 0xD00000000000001CLL;
      v3 = "idsHealthInvitation";
    }

    else
    {
      v2 = 0xD00000000000001ALL;
      v3 = "idsActivitySharingInvitation";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000014;
      v3 = "idsSampleInvitation";
    }

    else
    {
      v2 = 0xD000000000000016;
      v3 = "idsHomekitInvitation";
    }
  }

  if (v12 == v2 && (v13 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_2146DA6A8();
  }

  return v14 & 1;
}

uint64_t sub_2144A7890(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE400000000000000;
  v5 = 1936943467;
  if (a1 != 6)
  {
    v5 = 0x7265676E61;
    v4 = 0xE500000000000000;
  }

  v6 = 0x6563657264616572;
  v7 = 0xEB00000000747069;
  if (a1 != 4)
  {
    v6 = 0x6F65646976;
    v7 = 0xE500000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x6165627472616568;
  v9 = 0xE900000000000074;
  if (a1 != 2)
  {
    v8 = 0x7061746B63697571;
    v9 = 0xE800000000000000;
  }

  v10 = 0x656C646F6F64;
  if (a1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v10 = 7364980;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE400000000000000;
        if (v11 != 1936943467)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x7265676E61)
        {
LABEL_45:
          v14 = sub_2146DA6A8();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEB00000000747069;
      if (v11 != 0x6563657264616572)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x6F65646976)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE900000000000074;
      if (v11 != 0x6165627472616568)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x7061746B63697571)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE600000000000000;
    if (v11 != 0x656C646F6F64)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE300000000000000;
    if (v11 != 7364980)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_2144A7AF0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD00000000000001BLL;
    }

    else
    {
      v3 = 0xD000000000000022;
    }

    if (v2 == 2)
    {
      v4 = 0x8000000214787FB0;
    }

    else
    {
      v4 = 0x8000000214787FD0;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x323030327061;
    }

    else
    {
      v3 = 0x313030327061;
    }

    v4 = 0xE600000000000000;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD00000000000001BLL;
    }

    else
    {
      v7 = 0xD000000000000022;
    }

    if (a2 == 2)
    {
      v6 = 0x8000000214787FB0;
    }

    else
    {
      v6 = 0x8000000214787FD0;
    }

    if (v3 != v7)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x323030327061;
    }

    else
    {
      v5 = 0x313030327061;
    }

    v6 = 0xE600000000000000;
    if (v3 != v5)
    {
      goto LABEL_27;
    }
  }

  if (v4 != v6)
  {
LABEL_27:
    v8 = sub_2146DA6A8();
    goto LABEL_28;
  }

  v8 = 1;
LABEL_28:

  return v8 & 1;
}

uint64_t sub_2144A7C28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB000000006E6F69;
  v3 = 0x7461746E6569726FLL;
  v4 = a1;
  v5 = 0x797453656C746974;
  v6 = 0xEA0000000000656CLL;
  v7 = 0xD000000000000010;
  v8 = 0x8000000214785FB0;
  if (a1 != 4)
  {
    v7 = 0x6C79745364726163;
    v8 = 0xEC0000006C725565;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x696C416567616D69;
  v10 = 0xEE00746E656D6E67;
  if (a1 != 1)
  {
    v9 = 0x6874646977;
    v10 = 0xE500000000000000;
  }

  if (!a1)
  {
    v9 = 0x7461746E6569726FLL;
    v10 = 0xEB000000006E6F69;
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
      v2 = 0xEA0000000000656CLL;
      if (v11 != 0x797453656C746974)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x8000000214785FB0;
      if (v11 != 0xD000000000000010)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xEC0000006C725565;
      if (v11 != 0x6C79745364726163)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEE00746E656D6E67;
        if (v11 != 0x696C416567616D69)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE500000000000000;
      v3 = 0x6874646977;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_2146DA6A8();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_2144A7E28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6D69547472617473;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x656D6954646E65;
    }

    else
    {
      v5 = 0x6D69547472617473;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE500000000000000;
    v5 = 0x656C746974;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x72637365446C6163;
    }

    else
    {
      v5 = 0x6B6361626C6C6166;
    }

    if (v4 == 3)
    {
      v6 = 0xEE006E6F69747069;
    }

    else
    {
      v6 = 0xEB000000006C7255;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x656C746974;
  v9 = 0x72637365446C6163;
  v10 = 0xEE006E6F69747069;
  if (a2 != 3)
  {
    v9 = 0x6B6361626C6C6166;
    v10 = 0xEB000000006C7255;
  }

  if (a2 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  if (a2)
  {
    v3 = 0x656D6954646E65;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_2146DA6A8();
  }

  return v13 & 1;
}

uint64_t sub_2144A7FCC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00737365726464;
  v3 = 0x41657361426C696ELL;
  v4 = a1;
  if (a1 <= 2u)
  {
    v7 = 0x4674707572726F63;
    v8 = 0xEB00000000656C69;
    if (a1 == 1)
    {
      v7 = 0x41657361426C696ELL;
      v8 = 0xEE00737365726464;
    }

    if (a1)
    {
      v5 = v7;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (v4)
    {
      v6 = v8;
    }

    else
    {
      v6 = 0x8000000214786200;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0xD000000000000015;
    }

    if (v4 == 5)
    {
      v6 = 0x8000000214786260;
    }

    else
    {
      v6 = 0x8000000214786280;
    }
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x4964696C61766E69;
    }

    else
    {
      v5 = 0xD000000000000014;
    }

    if (v4 == 3)
    {
      v6 = 0xEC0000006567616DLL;
    }

    else
    {
      v6 = 0x8000000214786240;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        v2 = 0xEB00000000656C69;
        if (v5 != 0x4674707572726F63)
        {
          goto LABEL_45;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v2 = 0x8000000214786200;
      v3 = 0xD000000000000012;
    }

    if (v5 != v3)
    {
LABEL_45:
      v10 = sub_2146DA6A8();
      goto LABEL_46;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v9 = 0xD000000000000012;
    }

    else
    {
      v9 = 0xD000000000000015;
    }

    if (a2 == 5)
    {
      v2 = 0x8000000214786260;
    }

    else
    {
      v2 = 0x8000000214786280;
    }

    if (v5 != v9)
    {
      goto LABEL_45;
    }
  }

  else if (a2 == 3)
  {
    v2 = 0xEC0000006567616DLL;
    if (v5 != 0x4964696C61766E69)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v2 = 0x8000000214786240;
    if (v5 != 0xD000000000000014)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v6 != v2)
  {
    goto LABEL_45;
  }

  v10 = 1;
LABEL_46:

  return v10 & 1;
}

uint64_t sub_2144A820C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0xE600000000000000;
    v10 = 0x746867696568;
    if (a1 != 6)
    {
      v10 = 0xD000000000000012;
      v9 = 0x8000000214787A20;
    }

    v11 = 0x80000002147879E0;
    v12 = 0xD000000000000011;
    if (a1 == 4)
    {
      v12 = 0xD000000000000014;
    }

    else
    {
      v11 = 0x8000000214787A00;
    }

    if (a1 <= 5u)
    {
      v7 = v12;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x6C6946616964656DLL;
    v5 = 0xED0000657A695365;
    if (a1 != 2)
    {
      v4 = 0x69616E626D756874;
      v5 = 0xEC0000006C72556CLL;
    }

    v6 = 0xD000000000000010;
    if (a1)
    {
      v3 = 0x80000002147879B0;
    }

    else
    {
      v6 = 0x6C7255616964656DLL;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE600000000000000;
        if (v7 != 0x746867696568)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v13 = 0x8000000214787A20;
        if (v7 != 0xD000000000000012)
        {
LABEL_48:
          v14 = sub_2146DA6A8();
          goto LABEL_49;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0x80000002147879E0;
      if (v7 != 0xD000000000000014)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v13 = 0x8000000214787A00;
      if (v7 != 0xD000000000000011)
      {
        goto LABEL_48;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xED0000657A695365;
      if (v7 != 0x6C6946616964656DLL)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v13 = 0xEC0000006C72556CLL;
      if (v7 != 0x69616E626D756874)
      {
        goto LABEL_48;
      }
    }
  }

  else if (a2)
  {
    v13 = 0x80000002147879B0;
    if (v7 != 0xD000000000000010)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v13 = 0xE800000000000000;
    if (v7 != 0x6C7255616964656DLL)
    {
      goto LABEL_48;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_48;
  }

  v14 = 1;
LABEL_49:

  return v14 & 1;
}

uint64_t sub_2144A84CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF726F7461636964;
  v3 = 0x6E49676E69707974;
  v4 = a1;
  v5 = 0x73654D6F69647561;
  v6 = 0xEC00000065676173;
  v7 = 0x726F707075736E75;
  v8 = 0xEB00000000646574;
  if (a1 != 4)
  {
    v7 = 0x706154696A6F6D65;
    v8 = 0xEC0000006B636162;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x7373654D74786574;
  v10 = 0xEB00000000656761;
  if (a1 != 1)
  {
    v9 = 0x6B636162706174;
    v10 = 0xE700000000000000;
  }

  if (!a1)
  {
    v9 = 0x6E49676E69707974;
    v10 = 0xEF726F7461636964;
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

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = 0x7373654D74786574;
        v14 = 6645601;
        goto LABEL_22;
      }

      v2 = 0xE700000000000000;
      v3 = 0x6B636162706174;
    }

    if (v11 != v3)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (a2 == 3)
  {
    v15 = 0x73654D6F69647561;
    v16 = 1701273971;
  }

  else
  {
    if (a2 == 4)
    {
      v13 = 0x726F707075736E75;
      v14 = 6579572;
LABEL_22:
      v2 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      if (v11 != v13)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    v15 = 0x706154696A6F6D65;
    v16 = 1801675106;
  }

  v2 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  if (v11 != v15)
  {
LABEL_32:
    v17 = sub_2146DA6A8();
    goto LABEL_33;
  }

LABEL_30:
  if (v12 != v2)
  {
    goto LABEL_32;
  }

  v17 = 1;
LABEL_33:

  return v17 & 1;
}

uint64_t sub_2144A86D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 7632239;
    }

    else
    {
      v3 = 28265;
    }

    if (v2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x7265746E65;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 1953069157;
    }

    else
    {
      v3 = 0x6D72657465646E75;
    }

    if (v2 == 3)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xEC00000064656E69;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 7632239;
    }

    else
    {
      v6 = 28265;
    }

    if (a2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE500000000000000;
    if (v3 != 0x7265746E65)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE400000000000000;
    if (v3 != 1953069157)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEC00000064656E69;
    if (v3 != 0x6D72657465646E75)
    {
LABEL_34:
      v7 = sub_2146DA6A8();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_2144A8854(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 << 48 == a2 << 48)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2146DA6A8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_2144A88CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x656B6F727473;
    }

    else
    {
      v4 = 1701736302;
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

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x63696D6F63;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x7966667570;
  }

  else
  {
    v4 = 0x6563736564697269;
    v3 = 0xEA0000000000746ELL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x656B6F727473;
    }

    else
    {
      v9 = 1701736302;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x7966667570;
    if (a2 != 3)
    {
      v6 = 0x6563736564697269;
      v5 = 0xEA0000000000746ELL;
    }

    if (a2 == 2)
    {
      v7 = 0x63696D6F63;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
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
    v10 = sub_2146DA6A8();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2144A8A40(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x746E656964617267;
  v6 = 0x746E656964617267;
  v7 = 0xEB00000000584656;
  if (a1 != 4)
  {
    v6 = 0x63696D616E7964;
    v7 = 0xE700000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x696A6F6D656DLL;
  if (a1 != 1)
  {
    v9 = 0x6D6172676F6E6F6DLL;
    v8 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x736F746F6870;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
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
      v12 = 0xE800000000000000;
      if (v10 != 0x746E656964617267)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEB00000000584656;
      if (v10 != 0x746E656964617267)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x63696D616E7964)
      {
LABEL_34:
        v13 = sub_2146DA6A8();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x696A6F6D656DLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6D6172676F6E6F6DLL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x736F746F6870)
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

uint64_t sub_2144A8C2C(char a1, char a2)
{
  if (*&aLatn_1[8 * a1] == *&aLatn_1[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2146DA6A8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_2144A8C94(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v8 = 0x8000000214786C70;
      v7 = 0xD00000000000001CLL;
      goto LABEL_16;
    }

    v2 = 0x8000000214786C90;
    v3 = 0xD000000000000013;
    v4 = 0x8000000214786CB0;
    v5 = 0xD000000000000015;
    v6 = a1 == 4;
  }

  else
  {
    v2 = 0x8000000214786C30;
    v3 = 0xD000000000000012;
    v4 = 0x8000000214786C50;
    if (a1 == 1)
    {
      v5 = 0x74697277646E6168;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (a1 == 1)
    {
      v4 = 0xEB00000000676E69;
    }

    v6 = a1 == 0;
  }

  if (v6)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v6)
  {
    v8 = v2;
  }

  else
  {
    v8 = v4;
  }

LABEL_16:
  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v10 = 0x8000000214786C70;
      if (v7 != 0xD00000000000001CLL)
      {
        goto LABEL_38;
      }
    }

    else if (a2 == 4)
    {
      v10 = 0x8000000214786C90;
      if (v7 != 0xD000000000000013)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v10 = 0x8000000214786CB0;
      if (v7 != 0xD000000000000015)
      {
LABEL_38:
        v11 = sub_2146DA6A8();
        goto LABEL_39;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v9 = 0x74697277646E6168;
    }

    else
    {
      v9 = 0xD000000000000010;
    }

    if (a2 == 1)
    {
      v10 = 0xEB00000000676E69;
    }

    else
    {
      v10 = 0x8000000214786C50;
    }

    if (v7 != v9)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v10 = 0x8000000214786C30;
    if (v7 != 0xD000000000000012)
    {
      goto LABEL_38;
    }
  }

  if (v8 != v10)
  {
    goto LABEL_38;
  }

  v11 = 1;
LABEL_39:

  return v11 & 1;
}

uint64_t sub_2144A8E70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006574;
  v3 = 0x7465756F686C6973;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x696A6F6D65;
    }

    else
    {
      v5 = 0x6567616D69;
    }

    v6 = 0xE500000000000000;
  }

  else
  {
    if (a1)
    {
      v5 = 0x6D6172676F6E6F6DLL;
    }

    else
    {
      v5 = 0x7465756F686C6973;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEA00000000006574;
    }
  }

  v7 = 0x696A6F6D65;
  if (a2 != 2)
  {
    v7 = 0x6567616D69;
  }

  if (a2)
  {
    v3 = 0x6D6172676F6E6F6DLL;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v5 == v8 && v6 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2146DA6A8();
  }

  return v10 & 1;
}

uint64_t sub_2144A8FA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6F5465766F6DLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6F546576727563;
    }

    else
    {
      v4 = 0x74615065736F6C63;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE900000000000068;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6F54656E696CLL;
    }

    else
    {
      v4 = 0x6F5465766F6DLL;
    }

    v5 = 0xE600000000000000;
  }

  v6 = 0xE700000000000000;
  v7 = 0x6F546576727563;
  if (a2 != 2)
  {
    v7 = 0x74615065736F6C63;
    v6 = 0xE900000000000068;
  }

  if (a2)
  {
    v2 = 0x6F54656E696CLL;
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
    v9 = 0xE600000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2146DA6A8();
  }

  return v10 & 1;
}

uint64_t sub_2144A90E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF726F7461636964;
  v3 = 0x6E49676E69707974;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0xE700000000000000;
    v14 = 0x6B636162706174;
    if (a1 != 2)
    {
      v14 = 0x506E6F6F6C6C6162;
      v13 = 0xED00006E6967756CLL;
    }

    v15 = 0x7373654D74786574;
    v16 = 0xEB00000000656761;
    if (!a1)
    {
      v15 = 0x6E49676E69707974;
      v16 = 0xEF726F7461636964;
    }

    if (a1 <= 1u)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    if (v4 <= 1)
    {
      v12 = v16;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = 0x706154696A6F6D65;
    v6 = 0xEC0000006B636162;
    v7 = 0x5472656B63697473;
    v8 = 0xEE006B6361627061;
    if (a1 != 7)
    {
      v7 = 0xD000000000000015;
      v8 = 0x8000000214786CB0;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v6 = v8;
    }

    v9 = 0xE700000000000000;
    v10 = 0x72656B63697473;
    if (a1 != 4)
    {
      v10 = 0x73654D6F69647561;
      v9 = 0xEC00000065676173;
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
        v2 = 0xE700000000000000;
        if (v11 != 0x72656B63697473)
        {
          goto LABEL_49;
        }

        goto LABEL_45;
      }

      v17 = 0x73654D6F69647561;
      v18 = 1701273971;
    }

    else
    {
      if (a2 != 6)
      {
        if (a2 == 7)
        {
          v2 = 0xEE006B6361627061;
          if (v11 != 0x5472656B63697473)
          {
            goto LABEL_49;
          }

          goto LABEL_45;
        }

        v3 = 0xD000000000000015;
        v2 = 0x8000000214786CB0;
        goto LABEL_44;
      }

      v17 = 0x706154696A6F6D65;
      v18 = 1801675106;
    }

    v2 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v11 != v17)
    {
      goto LABEL_49;
    }

    goto LABEL_45;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x6B636162706174)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v2 = 0xED00006E6967756CLL;
      if (v11 != 0x506E6F6F6C6C6162)
      {
        goto LABEL_49;
      }
    }

    goto LABEL_45;
  }

  if (a2)
  {
    v2 = 0xEB00000000656761;
    if (v11 != 0x7373654D74786574)
    {
      goto LABEL_49;
    }

    goto LABEL_45;
  }

LABEL_44:
  if (v11 != v3)
  {
LABEL_49:
    v19 = sub_2146DA6A8();
    goto LABEL_50;
  }

LABEL_45:
  if (v12 != v2)
  {
    goto LABEL_49;
  }

  v19 = 1;
LABEL_50:

  return v19 & 1;
}

uint64_t sub_2144A93F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0x6373654464726163;
  v5 = 0xEF6E6F6974706972;
  v6 = 0xE800000000000000;
  v7 = 0x7473694C70696863;
  if (a1 != 4)
  {
    v7 = 0xD000000000000010;
    v6 = 0x8000000214788010;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x616964656DLL;
  if (a1 != 1)
  {
    v8 = 0x656C746974;
  }

  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v8 = 0x74756F79616CLL;
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
      v11 = 0xEF6E6F6974706972;
      if (v9 != 0x6373654464726163)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE800000000000000;
      if (v9 != 0x7473694C70696863)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0x8000000214788010;
      if (v9 != 0xD000000000000010)
      {
LABEL_34:
        v12 = sub_2146DA6A8();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE500000000000000;
    if (a2 == 1)
    {
      if (v9 != 0x616964656DLL)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 0x656C746974)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = 0xE600000000000000;
    if (v9 != 0x74756F79616CLL)
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

uint64_t sub_2144A95DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000676ELL;
  v3 = 0x69737365636F7270;
  v4 = a1;
  if (a1 <= 1u)
  {
    v6 = 0xD000000000000011;
    if (v4)
    {
      v5 = 0x8000000214787720;
    }

    else
    {
      v5 = 0x8000000214787700;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0x69737365636F7270;
    v5 = 0xEA0000000000676ELL;
  }

  else if (a1 == 3)
  {
    v5 = 0xE700000000000000;
    v6 = 0x79616C70736964;
  }

  else
  {
    v6 = 0x726F777265746E69;
    v5 = 0xEC000000676E696BLL;
  }

  v7 = 0xE700000000000000;
  v8 = 0x79616C70736964;
  if (a2 != 3)
  {
    v8 = 0x726F777265746E69;
    v7 = 0xEC000000676E696BLL;
  }

  if (a2 != 2)
  {
    v3 = v8;
    v2 = v7;
  }

  v9 = 0x8000000214787720;
  if (!a2)
  {
    v9 = 0x8000000214787700;
  }

  if (a2 <= 1u)
  {
    v10 = 0xD000000000000011;
  }

  else
  {
    v10 = v3;
  }

  if (a2 <= 1u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v2;
  }

  if (v6 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_2146DA6A8();
  }

  return v12 & 1;
}

uint64_t sub_2144A977C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x676E69727473;
  v3 = a1;
  v4 = 0xE500000000000000;
  v5 = 0x7961727261;
  v6 = 1819242338;
  if (a1 != 4)
  {
    v6 = 1819047278;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = 0xE400000000000000;
  }

  v7 = 0x7265626D756ELL;
  if (a1 != 1)
  {
    v7 = 0x7463656A626FLL;
  }

  if (!a1)
  {
    v7 = 0x676E69727473;
  }

  if (a1 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v3 <= 2)
  {
    v9 = 0xE600000000000000;
  }

  else
  {
    v9 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v10 = 0xE500000000000000;
      if (v8 != 0x7961727261)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v10 = 0xE400000000000000;
      if (a2 == 4)
      {
        if (v8 != 1819242338)
        {
          goto LABEL_31;
        }
      }

      else if (v8 != 1819047278)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v10 = 0xE600000000000000;
    if (a2)
    {
      if (a2 == 1)
      {
        if (v8 != 0x7265626D756ELL)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0x7463656A626FLL;
    }

    if (v8 != v2)
    {
LABEL_31:
      v11 = sub_2146DA6A8();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v9 != v10)
  {
    goto LABEL_31;
  }

  v11 = 1;
LABEL_32:

  return v11 & 1;
}

uint64_t sub_2144A990C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x67696C4174786574;
  v5 = 0xE90000000000006ELL;
  v6 = 0xE400000000000000;
  v7 = 1953394534;
  if (a1 != 4)
  {
    v7 = 0x756F72676B636162;
    v6 = 0xEF6567616D49646ELL;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE500000000000000;
  v9 = 0x726F6C6F63;
  if (a1 != 1)
  {
    v9 = 0x756F72676B636162;
    v8 = 0xEF726F6C6F43646ELL;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x64696C61766E69;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE90000000000006ELL;
      if (v10 != 0x67696C4174786574)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1953394534)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEF6567616D49646ELL;
      if (v10 != 0x756F72676B636162)
      {
LABEL_34:
        v13 = sub_2146DA6A8();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x726F6C6F63)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEF726F6C6F43646ELL;
      if (v10 != 0x756F72676B636162)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x64696C61766E69)
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

uint64_t sub_2144A9B04(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x2D6567617373656DLL;
  v5 = 0xEB00000000786F62;
  v6 = 0x61632D6C6C616D73;
  v7 = 0xED00006E6F697470;
  if (a1 != 4)
  {
    v6 = 0x622D737574617473;
    v7 = 0xEA00000000007261;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 1852793705;
  if (a1 != 1)
  {
    v8 = 1970169197;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v8 = 0x6E6F6974706163;
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
      v11 = 0xEB00000000786F62;
      if (v9 != 0x2D6567617373656DLL)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xED00006E6F697470;
      if (v9 != 0x61632D6C6C616D73)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xEA00000000007261;
      if (v9 != 0x622D737574617473)
      {
LABEL_34:
        v12 = sub_2146DA6A8();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE400000000000000;
    if (a2 == 1)
    {
      if (v9 != 1852793705)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 1970169197)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x6E6F6974706163)
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

uint64_t sub_2144A9CF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656772616C2D78;
  if (a1 != 5)
  {
    v5 = 0x656772616C2D7878;
    v4 = 0xE800000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x6D756964656DLL;
  if (a1 != 3)
  {
    v7 = 0x656772616CLL;
    v6 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x6C6C616D732D78;
  if (a1 != 1)
  {
    v9 = 0x6C6C616D73;
    v8 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6C6C616D732D7878;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
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

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x6C6C616D732D78)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE500000000000000;
        if (v10 != 0x6C6C616D73)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6C6C616D732D7878)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x656772616C2D78)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x656772616C2D7878)
      {
LABEL_39:
        v13 = sub_2146DA6A8();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x6D756964656DLL)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x656772616CLL)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_2144A9F0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 28005;
    }

    else
    {
      v3 = 30821;
    }

    v4 = 0xE200000000000000;
  }

  else
  {
    if (a1)
    {
      v3 = 30832;
    }

    else
    {
      v3 = 37;
    }

    if (v2)
    {
      v4 = 0xE200000000000000;
    }

    else
    {
      v4 = 0xE100000000000000;
    }
  }

  v5 = 0xE100000000000000;
  v6 = 37;
  v7 = 28005;
  if (a2 != 2)
  {
    v7 = 30821;
  }

  if (a2)
  {
    v6 = 30832;
    v5 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0xE200000000000000;
  }

  if (v3 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2146DA6A8();
  }

  return v10 & 1;
}

uint64_t sub_2144A9FFC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000644965;
  v3 = 0x636E657265666572;
  v4 = a1;
  v5 = 25705;
  if (a1 == 6)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v5 = 0x4379616C70736964;
    v6 = 0xEE00746E65746E6FLL;
  }

  v7 = 0xE400000000000000;
  v8 = 1869768040;
  if (a1 != 4)
  {
    v8 = 0xD000000000000017;
    v7 = 0x8000000214788230;
  }

  if (a1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656C746974627573;
  if (a1 != 2)
  {
    v10 = 1852793705;
    v9 = 0xE400000000000000;
  }

  v11 = 0xE500000000000000;
  v12 = 0x656C746974;
  if (!a1)
  {
    v12 = 0x636E657265666572;
    v11 = 0xEB00000000644965;
  }

  if (a1 <= 1u)
  {
    v10 = v12;
    v9 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v5;
  }

  if (v4 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE200000000000000;
        if (v13 != 25705)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v2 = 0xEE00746E65746E6FLL;
        if (v13 != 0x4379616C70736964)
        {
          goto LABEL_42;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE400000000000000;
      if (v13 != 1869768040)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v2 = 0x8000000214788230;
      if (v13 != 0xD000000000000017)
      {
        goto LABEL_42;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE800000000000000;
        if (v13 != 0x656C746974627573)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      v2 = 0xE400000000000000;
      v3 = 1852793705;
    }

    else if (a2)
    {
      v2 = 0xE500000000000000;
      if (v13 != 0x656C746974)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    if (v13 != v3)
    {
LABEL_42:
      v15 = sub_2146DA6A8();
      goto LABEL_43;
    }
  }

LABEL_39:
  if (v14 != v2)
  {
    goto LABEL_42;
  }

  v15 = 1;
LABEL_43:

  return v15 & 1;
}

__n128 sub_2144AA298(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 144);
  *(v2 + 144) = *(a1 + 128);
  *(v2 + 160) = v3;
  v4 = *(a1 + 176);
  *(v2 + 176) = *(a1 + 160);
  *(v2 + 192) = v4;
  v5 = *(a1 + 80);
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = v5;
  v6 = *(a1 + 112);
  *(v2 + 112) = *(a1 + 96);
  *(v2 + 128) = v6;
  v7 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v2 + 48) = result;
  *(v2 + 64) = v9;
  return result;
}

void sub_2144AA2F8(uint64_t a1, unint64_t a2)
{
  v5 = v3;
  pixelBufferOut[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v8 = *(v2 + 96);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      if (v8)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v12 = __OFSUB__(v10, v11);
    v13 = v10 - v11;
    if (!v12)
    {
      if (v8 != v13)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_134;
  }

  if (!v9)
  {
    if (v8 != BYTE6(a2))
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v8 != HIDWORD(a1) - a1)
  {
LABEL_15:
    sub_2146D9BA8();
    if (qword_280B30DD8 == -1)
    {
LABEL_16:
      sub_2146D91D8();
      sub_214061118();
      swift_allocError();
      *v15 = 0;
      *(v15 + 8) = 0;
      swift_willThrow();
LABEL_119:
      v95 = *MEMORY[0x277D85DE8];
      return;
    }

LABEL_135:
    swift_once();
    goto LABEL_16;
  }

LABEL_8:
  v14 = *(v2 + 89);
  if (v14 == 4)
  {
    sub_2146D9BA8();
    if (qword_280B30DD8 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_135;
  }

  pixelBufferOut[0] = 0;
  if (*(v2 + 121) != 1)
  {
LABEL_29:
    v29 = sub_21405019C(*&a420v[8 * v14], 0xE400000000000000);
    if (v29 == sub_21405019C(0x41524742uLL, 0xE400000000000000))
    {
      v30 = sub_214045DA4(MEMORY[0x277D84F90]);
      v31 = MEMORY[0x277D83B88];
      v133 = a1;
      if (*(v2 + 120))
      {
        if (*(v2 + 40))
        {
          goto LABEL_32;
        }
      }

      else
      {
        v131 = *(v2 + 112);
        v41 = *MEMORY[0x277CC4D60];
        type metadata accessor for CFString(0);
        sub_2143A6B04();
        v42 = v41;
        v31 = MEMORY[0x277D83B88];
        sub_2146D9E98();
        v142 = v31;
        *&v140 = v131;
        sub_213FDC730(&v140, v139);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v138 = v30;
        sub_2140528AC(v139, &pixelTransferSessionOut, isUniquelyReferenced_nonNull_native);
        sub_21408DE3C(&pixelTransferSessionOut);
        if (*(v2 + 40))
        {
LABEL_32:
          if (*(v2 + 56))
          {
            goto LABEL_33;
          }

          goto LABEL_49;
        }
      }

      v131 = *(v2 + 32);
      *&v140 = *MEMORY[0x277CC4DC0];
      v44 = v140;
      type metadata accessor for CFString(0);
      sub_2143A6B04();
      v45 = v44;
      v31 = MEMORY[0x277D83B88];
      sub_2146D9E98();
      v142 = v31;
      *&v140 = v131;
      sub_213FDC730(&v140, v139);
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v138 = v30;
      sub_2140528AC(v139, &pixelTransferSessionOut, v46);
      sub_21408DE3C(&pixelTransferSessionOut);
      if (*(v2 + 56))
      {
LABEL_33:
        if (*(v2 + 72))
        {
          goto LABEL_34;
        }

        goto LABEL_50;
      }

LABEL_49:
      v131 = *(v2 + 48);
      *&v140 = *MEMORY[0x277CC4DA0];
      v47 = v140;
      type metadata accessor for CFString(0);
      sub_2143A6B04();
      v48 = v47;
      v31 = MEMORY[0x277D83B88];
      sub_2146D9E98();
      v142 = v31;
      *&v140 = v131;
      sub_213FDC730(&v140, v139);
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v138 = v30;
      sub_2140528AC(v139, &pixelTransferSessionOut, v49);
      sub_21408DE3C(&pixelTransferSessionOut);
      if (*(v2 + 72))
      {
LABEL_34:
        if (*(v2 + 88))
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

LABEL_50:
      v131 = *(v2 + 64);
      *&v140 = *MEMORY[0x277CC4DB0];
      v50 = v140;
      type metadata accessor for CFString(0);
      sub_2143A6B04();
      v51 = v50;
      v31 = MEMORY[0x277D83B88];
      sub_2146D9E98();
      v142 = v31;
      *&v140 = v131;
      sub_213FDC730(&v140, v139);
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v138 = v30;
      sub_2140528AC(v139, &pixelTransferSessionOut, v52);
      sub_21408DE3C(&pixelTransferSessionOut);
      if (*(v2 + 88))
      {
LABEL_36:
        v35 = *(v2 + 16);
        v36 = *(v2 + 24);
        v23 = sub_21405019C(*&a420v[8 * v14], 0xE400000000000000);
        v14 = sub_2146D9468();

        v37 = CVPixelBufferCreate(0, v35, v36, v23, v14, pixelBufferOut);

        if (v37 || !pixelBufferOut[0])
        {
          sub_2146D9BA8();
          if (qword_280B30DD8 != -1)
          {
            swift_once();
          }

          sub_2146D91D8();
LABEL_46:
          sub_214061118();
          swift_allocError();
          *v40 = 512;
LABEL_117:
          *(v40 + 8) = 0;
          swift_willThrow();
LABEL_118:

          goto LABEL_119;
        }

        v4 = pixelBufferOut[0];
        DataSize = CVPixelBufferGetDataSize(v4);
        if (v9 <= 1)
        {
          a1 = v133;
          if (!v9)
          {
            v39 = BYTE6(a2);
            goto LABEL_74;
          }

          LODWORD(v39) = HIDWORD(v133) - v133;
          if (!__OFSUB__(HIDWORD(v133), v133))
          {
            v39 = v39;
            goto LABEL_74;
          }

LABEL_161:
          __break(1u);
          goto LABEL_162;
        }

        a1 = v133;
        if (v9 != 2)
        {
          if (!DataSize)
          {
LABEL_75:
            CVPixelBufferLockBaseAddress(v4, 1uLL);
            if (!CVPixelBufferGetBaseAddress(v4))
            {
              sub_2146D9BA8();
              if (qword_280B30DD8 != -1)
              {
                swift_once();
              }

              sub_2146D91D8();
              sub_214061118();
              swift_allocError();
              v79 = 1792;
              goto LABEL_123;
            }

            if (v9 > 1)
            {
              if (v9 == 2 && __OFSUB__(*(a1 + 24), *(a1 + 16)))
              {
                __break(1u);
LABEL_115:
                sub_2146D9BA8();
                if (qword_280B30DD8 == -1)
                {
LABEL_116:
                  sub_2146D91D8();
                  sub_214061118();
                  swift_allocError();
                  *v40 = 0;
                  goto LABEL_117;
                }

LABEL_153:
                swift_once();
                goto LABEL_116;
              }
            }

            else if (v9 && __OFSUB__(HIDWORD(a1), a1))
            {
              __break(1u);
            }

            sub_2146D8AA8();
            CVPixelBufferUnlockBaseAddress(v4, 1uLL);
            v96 = *(v2 + 200);
            if (v96 >> 60 == 15)
            {
              sub_214061118();
              swift_allocError();
              v79 = 2048;
              goto LABEL_123;
            }

            v97 = *(v2 + 192);
            v98 = objc_opt_self();
            sub_21402D9F8(v97, v96);
            v99 = sub_2146D8A38();
            pixelTransferSessionOut = 0;
            v100 = [v98 propertyListWithData:v99 options:0 format:0 error:&pixelTransferSessionOut];

            if (v100)
            {
              v101 = pixelTransferSessionOut;
              sub_2146D9E28();
              swift_unknownObjectRelease();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
              if (swift_dynamicCast())
              {
                v102 = sub_2146D9468();

                CVBufferSetAttachments(v4, v102, kCVAttachmentMode_ShouldPropagate);

                sub_213FDC6BC(v97, v96);
                if (pixelBufferOut[0])
                {
                  goto LABEL_119;
                }

                goto LABEL_46;
              }

              sub_214061118();
              swift_allocError();
              *v104 = 2304;
              *(v104 + 8) = 0;
            }

            else
            {
              v103 = pixelTransferSessionOut;
              sub_2146D8838();
            }

            swift_willThrow();
            sub_213FDC6BC(v97, v96);
            goto LABEL_124;
          }

LABEL_80:
          sub_214061118();
          swift_allocError();
          v79 = 512;
LABEL_123:
          *v78 = v79;
          *(v78 + 8) = 0;
          swift_willThrow();
LABEL_124:

          goto LABEL_118;
        }

        v68 = *(v133 + 16);
        v67 = *(v133 + 24);
        v12 = __OFSUB__(v67, v68);
        v39 = v67 - v68;
        if (!v12)
        {
LABEL_74:
          if (DataSize == v39)
          {
            goto LABEL_75;
          }

          goto LABEL_80;
        }

        __break(1u);
        goto LABEL_64;
      }

LABEL_35:
      v128 = *(v2 + 80);
      *&v140 = *MEMORY[0x277CC4DB8];
      v32 = v140;
      type metadata accessor for CFString(0);
      sub_2143A6B04();
      v131 = v14;
      v33 = v32;
      sub_2146D9E98();
      v142 = v31;
      *&v140 = v128;
      sub_213FDC730(&v140, v139);
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v138 = v30;
      sub_2140528AC(v139, &pixelTransferSessionOut, v34);
      sub_21408DE3C(&pixelTransferSessionOut);
      goto LABEL_36;
    }

    sub_2146D9BA8();
    if (qword_280B30DD8 == -1)
    {
      goto LABEL_116;
    }

LABEL_148:
    swift_once();
    goto LABEL_116;
  }

  v137 = 0;
  v140 = 0uLL;
  v141 = 1;
  v16 = *(v2 + 184);
  if (!v16)
  {
    goto LABEL_83;
  }

  if (!*(v16 + 16))
  {
    __break(1u);
    goto LABEL_148;
  }

  if (*(v16 + 32) < 16)
  {
LABEL_83:
    v80 = sub_21405019C(*&a420v[8 * v14], 0xE400000000000000);
    if (v80 != sub_21405019C(0x30323478uLL, 0xE400000000000000))
    {
      v81 = sub_21405019C(*&a420v[8 * v14], 0xE400000000000000);
      if (v81 != sub_21405019C(0x66303234uLL, 0xE400000000000000))
      {
        v82 = sub_21405019C(*&a420v[8 * v14], 0xE400000000000000);
        if (v82 != sub_21405019C(0x76303234uLL, 0xE400000000000000))
        {
          sub_2146D9BA8();
          if (qword_280B30DD8 == -1)
          {
            goto LABEL_116;
          }

          goto LABEL_153;
        }
      }
    }

    if ((*(v2 + 152) & 1) != 0 || *(v2 + 144) != 2)
    {
      sub_2146D9BA8();
      if (qword_280B30DD8 == -1)
      {
        goto LABEL_116;
      }

      goto LABEL_153;
    }

    v83 = *(v2 + 160);
    if (!v83 || (v84 = *(v2 + 168)) == 0 || (v85 = *(v2 + 176)) == 0 || (v86 = a1, (v87 = *(v2 + 184)) == 0))
    {
      sub_2146D9BA8();
      if (qword_280B30DD8 == -1)
      {
        goto LABEL_116;
      }

      goto LABEL_153;
    }

    if (*(v83 + 2) == 2 && *(v84 + 16) == 2 && v85[2] == 2 && v87[2] == 2)
    {
      v88 = *(v2 + 160);

      v89 = sub_2146D9B98();
      v127 = v89;
      if (qword_280B30DD8 != -1)
      {
        swift_once();
        v89 = v127;
      }

      v130 = qword_280B30DE0;
      if (os_log_type_enabled(qword_280B30DE0, v89))
      {
        v132 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        pixelTransferSessionOut = v125;
        *v132 = 136315394;
        v90 = MEMORY[0x216054820](v85, MEMORY[0x277D83B88]);
        v122 = sub_2144AEA38(v90, v91, &pixelTransferSessionOut);

        *(v132 + 4) = v122;
        *(v132 + 12) = 2080;
        v92 = MEMORY[0x216054820](v87, MEMORY[0x277D83B88]);
        v123 = sub_2144AEA38(v92, v93, &pixelTransferSessionOut);

        *(v132 + 14) = v123;
        _os_log_impl(&dword_213FAF000, v130, v127, "Pixel buffer plane information. bytesPerRow: %s offsets: %s", v132, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x216056AC0](v125, -1, -1);
        MEMORY[0x216056AC0](v132, -1, -1);
      }

      v138 = MEMORY[0x277D84F90];
      *&v139[0] = v86;
      v135 = MEMORY[0x277D84F90];
      v136 = MEMORY[0x277D84F90];
      v134 = MEMORY[0x277D84F90];
      *(&v139[0] + 1) = a2;

      sub_21402D9F8(v86, a2);
      v94 = sub_2144AF6EC(v139, 2uLL, v85, v83, v84, v87, &v138, &v136, &v135, &v140, &v137 + 1, &v134, &v137, v2, v14);
      if (v5)
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

LABEL_158:
        sub_213FB54FC(*&v139[0], *(&v139[0] + 1));
LABEL_159:

        goto LABEL_118;
      }

      a2 = v94;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      v9 = *(v2 + 200);
      if (v9 >> 60 == 15)
      {
        sub_214061118();
        swift_allocError();
        *v105 = 2048;
        *(v105 + 8) = 0;
        swift_willThrow();
LABEL_157:

        goto LABEL_158;
      }

      v106 = v2;
      v2 = *(v2 + 192);
      v107 = objc_opt_self();
      sub_21402D9F8(v2, v9);
      v108 = sub_2146D8A38();
      pixelTransferSessionOut = 0;
      v109 = [v107 propertyListWithData:v108 options:0 format:0 error:&pixelTransferSessionOut];

      if (v109)
      {
        v110 = pixelTransferSessionOut;
        sub_2146D9E28();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        if (swift_dynamicCast())
        {
          v111 = sub_2146D9468();

          CVBufferSetAttachments(a2, v111, kCVAttachmentMode_ShouldPropagate);

          if (!CVPixelBufferCreate(0, *(v106 + 16), *(v106 + 24), 0x42475241u, 0, pixelBufferOut) && pixelBufferOut[0])
          {
            pixelTransferSessionOut = 0;
            v4 = pixelBufferOut[0];
            if (!VTPixelTransferSessionCreate(0, &pixelTransferSessionOut) && pixelTransferSessionOut)
            {
              v112 = pixelTransferSessionOut;
              if (VTPixelTransferSessionTransferImage(v112, a2, v4))
              {
                sub_214061118();
                swift_allocError();
                *v113 = 1024;
                *(v113 + 8) = 0;
                swift_willThrow();
                sub_213FDC6BC(v2, v9);

LABEL_163:
                sub_213FB54FC(*&v139[0], *(&v139[0] + 1));

                goto LABEL_159;
              }

              VTPixelTransferSessionInvalidate(v112);
              sub_213FDC6BC(v2, v9);

              sub_213FB54FC(*&v139[0], *(&v139[0] + 1));

              if (pixelBufferOut[0])
              {
                goto LABEL_119;
              }

              goto LABEL_46;
            }

LABEL_162:
            sub_214061118();
            swift_allocError();
            *v118 = 768;
            *(v118 + 8) = 0;
            swift_willThrow();
            sub_213FDC6BC(v2, v9);

            goto LABEL_163;
          }

          sub_2146D9BA8();
          sub_2146D91D8();
          sub_214061118();
          swift_allocError();
          v116 = 512;
        }

        else
        {
          sub_214061118();
          swift_allocError();
          v116 = 2304;
        }

        *v115 = v116;
        *(v115 + 8) = 0;
      }

      else
      {
        v114 = pixelTransferSessionOut;
        sub_2146D8838();
      }

      swift_willThrow();
      sub_213FDC6BC(v2, v9);
      goto LABEL_157;
    }

    goto LABEL_115;
  }

  LOBYTE(v137) = 1;
  v17 = sub_2146D8A78();
  v19 = v18;
  sub_2144AF650(v17, v18);
  v9 = v17;
  v21 = v20;
  v22 = v19;
  v23 = v21;
  sub_213FB54FC(v17, v22);
  v131 = v9;
  v133 = a1;
  if ((v23 >> 62) > 1)
  {
    if (v23 >> 62 != 2)
    {
      goto LABEL_168;
    }

    a1 = v2;
    v9 = *(v9 + 16);
    v53 = sub_2146D8728();
    if (v53)
    {
      v26 = v53;
      v2 = v23 & 0x3FFFFFFFFFFFFFFFLL;
      v54 = sub_2146D8758();
      v28 = v9 - v54;
      if (!__OFSUB__(v9, v54))
      {
        goto LABEL_55;
      }

      __break(1u);
      goto LABEL_161;
    }

LABEL_64:
    sub_2146D8748();
    goto LABEL_65;
  }

  if (v23 >> 62 == 1)
  {
    v24 = v9;
    v9 = v9;
    if (v9 > v24 >> 32)
    {
      __break(1u);
      goto LABEL_153;
    }

    a1 = v2;
    v25 = sub_2146D8728();
    if (!v25)
    {
      goto LABEL_64;
    }

    v26 = v25;
    v2 = v23 & 0x3FFFFFFFFFFFFFFFLL;
    v27 = sub_2146D8758();
    v28 = v9 - v27;
    if (!__OFSUB__(v9, v27))
    {
LABEL_55:
      v55 = (v28 + v26);
      sub_2146D8748();
      if (v55)
      {
        v57 = v55[2];
        v56 = v55[3];
        v59 = v55;
        v58 = *v55;
        v126 = v56;
        v129 = v59[1];
        v60 = sub_2146D9B98();
        v2 = a1;
        if (qword_280B30DD8 != -1)
        {
          v117 = v60;
          swift_once();
          v60 = v117;
        }

        v124 = v60;
        v61 = qword_280B30DE0;
        if (os_log_type_enabled(qword_280B30DE0, v60))
        {
          v121 = v23;
          v119 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          *&v139[0] = v120;
          *v119 = 136315138;
          pixelTransferSessionOut = __PAIR64__(v129, v58);
          v144 = v57;
          v145 = v126;
          type metadata accessor for CVPlanarPixelBufferInfo_YCbCrBiPlanar(0);
          v62 = sub_2146D9608();
          v64 = v58;
          v65 = sub_2144AEA38(v62, v63, v139);

          *(v119 + 4) = v65;
          v66 = v129;
          _os_log_impl(&dword_213FAF000, v61, v124, "Pixel Buffer Info from Header: %s", v119, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v120);
          MEMORY[0x216056AC0](v120, -1, -1);
          MEMORY[0x216056AC0](v119, -1, -1);
          sub_213FB54FC(v131, v121);
          a1 = v133;
        }

        else
        {
          sub_213FB54FC(v131, v23);
          a1 = v133;
          v64 = v58;
          v66 = v129;
        }

        *&v140 = v64 | (v66 << 32);
        *(&v140 + 1) = v57 | (v126 << 32);
        v141 = 0;
        goto LABEL_83;
      }

LABEL_65:
      v69 = v23;
      sub_2146D9BA8();
      v2 = a1;
      if (qword_280B30DD8 != -1)
      {
        swift_once();
      }

      v70 = qword_280B30DE0;
      sub_2146D91D8();
      sub_214061118();
      v71 = swift_allocError();
      *v72 = 1792;
      *(v72 + 8) = 0;
      swift_willThrow();
      v73 = sub_2146D9BA8();
      if (qword_280B30DD8 != -1)
      {
        swift_once();
      }

      if (os_log_type_enabled(v70, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *v74 = 138412290;
        v76 = v71;
        v77 = _swift_stdlib_bridgeErrorToNSError();
        *(v74 + 4) = v77;
        *v75 = v77;
        _os_log_impl(&dword_213FAF000, v70, v73, "Invalid header format. Error: %@", v74, 0xCu);
        sub_213FB2DF4(v75, &qword_27C9041E0, &qword_214736EF0);
        MEMORY[0x216056AC0](v75, -1, -1);
        MEMORY[0x216056AC0](v74, -1, -1);
      }

      sub_213FB54FC(v131, v69);

      v5 = 0;
      HIBYTE(v137) = 1;
      a1 = v133;
      goto LABEL_83;
    }

    __break(1u);
    goto LABEL_29;
  }

  __break(1u);
LABEL_168:
  __break(1u);
}

uint64_t sub_2144ABAB0()
{
  sub_214061118();
  swift_allocError();
  *v0 = 1280;
  *(v0 + 8) = 0;
  return swift_willThrow();
}

BlastDoor::BlastDoorPixelBufferFormats_optional __swiftcall BlastDoorPixelBufferFormats.init(rawValue:)(Swift::UInt32 rawValue)
{
  v3 = v1;
  v4 = sub_21405019C(0x76303234uLL, 0xE400000000000000);
  if (v4 == rawValue)
  {
    v5 = 0;
  }

  else
  {
    v4 = sub_21405019C(0x66303234uLL, 0xE400000000000000);
    if (v4 == rawValue)
    {
      v5 = 1;
    }

    else
    {
      v4 = sub_21405019C(0x30323478uLL, 0xE400000000000000);
      if (v4 == rawValue)
      {
        v5 = 2;
      }

      else
      {
        v4 = sub_21405019C(0x41524742uLL, 0xE400000000000000);
        if (v4 == rawValue)
        {
          v5 = 3;
        }

        else
        {
          v5 = 4;
        }
      }
    }
  }

  *v3 = v5;
  return v4;
}

uint64_t sub_2144ABC24@<X0>(_DWORD *a1@<X8>)
{
  result = sub_21405019C(*&a420v[8 * *v1], 0xE400000000000000);
  *a1 = result;
  return result;
}

uint64_t sub_2144ABD70()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_2144ABD7C(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t sub_2144ABDAC()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t sub_2144ABDB8(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t sub_2144ABDE8()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t sub_2144ABDF4(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t sub_2144ABE24()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t sub_2144ABE30(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t sub_2144ABEF8()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t sub_2144ABF04(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t sub_2144ABF64()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t sub_2144ABF70(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t sub_2144ABFA0()
{
  result = *(v0 + 128);
  v2 = *(v0 + 136);
  return result;
}

uint64_t sub_2144ABFAC(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

uint64_t sub_2144ABFE4(uint64_t a1)
{
  v3 = *(v1 + 144);

  *(v1 + 144) = a1;
  return result;
}

uint64_t sub_2144AC038(uint64_t a1)
{
  v3 = *(v1 + 152);

  *(v1 + 152) = a1;
  return result;
}

uint64_t sub_2144AC08C(uint64_t a1)
{
  v3 = *(v1 + 160);

  *(v1 + 160) = a1;
  return result;
}

uint64_t sub_2144AC0E0(uint64_t a1)
{
  v3 = *(v1 + 168);

  *(v1 + 168) = a1;
  return result;
}

uint64_t sub_2144AC12C()
{
  v1 = *(v0 + 176);
  sub_213FDCA18(v1, *(v0 + 184));
  return v1;
}

uint64_t sub_2144AC160(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 176), *(v2 + 184));
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return result;
}

double sub_2144AC1B8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1025;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0xF000000000000000;
  *(a1 + 105) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 80) = 0;
  return result;
}

uint64_t sub_2144AC218@<X0>(__CVBuffer *a1@<X0>, uint64_t a2@<X8>)
{
  v114[4] = *MEMORY[0x277D85DE8];
  v96 = sub_2146D9458();
  v95 = *(v96 - 8);
  v4 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v94 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = 1;
  v110 = 1;
  v109 = 1;
  v108 = 1;
  v107 = 1;
  v106 = 1;
  v105 = 1;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  BlastDoorPixelBufferFormats.init(rawValue:)(PixelFormatType);
  v9 = LOBYTE(v113[0]);
  DataSize = CVPixelBufferGetDataSize(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  IsPlanar = CVPixelBufferIsPlanar(a1);
  v101 = v9;
  v100 = DataSize;
  if (IsPlanar)
  {
    PlaneCount = CVPixelBufferGetPlaneCount(a1);
    v105 = 0;
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    v102 = Width;
    v99 = Height;
    v98 = BytesPerRow;
    v104 = PlaneCount;
    if (BaseAddress)
    {
      if ((PlaneCount & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_80:
        __break(1u);
      }

      if (PlaneCount)
      {
        v13 = 0;
        v14 = MEMORY[0x277D84F90];
        v15 = MEMORY[0x277D84F90];
        v16 = MEMORY[0x277D84F90];
        v17 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v14)
          {
            WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, v13);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = sub_214095ECC(0, *(v14 + 2) + 1, 1, v14);
            }

            v21 = *(v14 + 2);
            v20 = *(v14 + 3);
            if (v21 >= v20 >> 1)
            {
              v14 = sub_214095ECC((v20 > 1), v21 + 1, 1, v14);
            }

            *(v14 + 2) = v21 + 1;
            *&v14[8 * v21 + 32] = WidthOfPlane;
          }

          if (v15)
          {
            HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, v13);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_214095ECC(0, *(v15 + 2) + 1, 1, v15);
            }

            v24 = *(v15 + 2);
            v23 = *(v15 + 3);
            if (v24 >= v23 >> 1)
            {
              v15 = sub_214095ECC((v23 > 1), v24 + 1, 1, v15);
            }

            *(v15 + 2) = v24 + 1;
            *&v15[8 * v24 + 32] = HeightOfPlane;
          }

          if (v16)
          {
            BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, v13);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_214095ECC(0, *(v16 + 2) + 1, 1, v16);
            }

            v27 = *(v16 + 2);
            v26 = *(v16 + 3);
            if (v27 >= v26 >> 1)
            {
              v16 = sub_214095ECC((v26 > 1), v27 + 1, 1, v16);
            }

            *(v16 + 2) = v27 + 1;
            *&v16[8 * v27 + 32] = BytesPerRowOfPlane;
          }

          if (v17)
          {
            BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, v13);
            if (!BaseAddressOfPlane)
            {
              goto LABEL_80;
            }

            v29 = BaseAddressOfPlane;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_214095ECC(0, *(v17 + 2) + 1, 1, v17);
            }

            v31 = *(v17 + 2);
            v30 = *(v17 + 3);
            if (v31 >= v30 >> 1)
            {
              v17 = sub_214095ECC((v30 > 1), v31 + 1, 1, v17);
            }

            v18 = v29 - BaseAddress;
            *(v17 + 2) = v31 + 1;
            *&v17[8 * v31 + 32] = v18;
          }

          if (v104 == ++v13)
          {
            goto LABEL_33;
          }
        }
      }
    }

    v14 = MEMORY[0x277D84F90];
    v15 = MEMORY[0x277D84F90];
    v16 = MEMORY[0x277D84F90];
    v17 = MEMORY[0x277D84F90];
LABEL_33:
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  }

  else
  {
    v102 = CVPixelBufferGetWidth(a1);
    v99 = CVPixelBufferGetHeight(a1);
    v98 = CVPixelBufferGetBytesPerRow(a1);
    v104 = 0;
    v14 = MEMORY[0x277D84F90];
    v15 = MEMORY[0x277D84F90];
    v16 = MEMORY[0x277D84F90];
    v17 = MEMORY[0x277D84F90];
  }

  v32 = CVPixelBufferCopyCreationAttributes(a1);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_71;
  }

  *&v113[0] = 0;
  sub_2146D9478();

  v33 = *&v113[0];
  if (!*&v113[0])
  {
LABEL_71:
    v41 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    BaseAddress = 0;
    goto LABEL_72;
  }

  if (!*(*&v113[0] + 16))
  {

    goto LABEL_71;
  }

  v114[0] = *MEMORY[0x277CC4D60];
  v34 = v114[0];
  type metadata accessor for CFString(0);
  v36 = v35;
  sub_2143A6B04();
  v37 = v34;
  v91 = v36;
  sub_2146D9E98();
  if (*(v33 + 16) && (v38 = sub_21408C378(v113), (v39 & 1) != 0))
  {
    sub_2140537E4(*(v33 + 56) + 32 * v38, v114);
    sub_21408DE3C(v113);
    v40 = swift_dynamicCast();
    if (v40)
    {
      v41 = v112;
    }

    else
    {
      v41 = 0;
    }

    v42 = v40 ^ 1;
  }

  else
  {
    sub_21408DE3C(v113);
    v41 = 0;
    v42 = 1;
  }

  v107 = v42;
  v114[0] = *MEMORY[0x277CC4DC0];
  v43 = v114[0];
  sub_2146D9E98();
  if (*(v33 + 16) && (v44 = sub_21408C378(v113), (v45 & 1) != 0))
  {
    sub_2140537E4(*(v33 + 56) + 32 * v44, v114);
    sub_21408DE3C(v113);
    v46 = swift_dynamicCast();
    v47 = v112;
    if (!v46)
    {
      v47 = 0;
    }

    BaseAddress = v47;
    v48 = v46 ^ 1;
  }

  else
  {
    sub_21408DE3C(v113);
    BaseAddress = 0;
    v48 = 1;
  }

  v111 = v48;
  v114[0] = *MEMORY[0x277CC4DA0];
  v49 = v114[0];
  sub_2146D9E98();
  if (*(v33 + 16) && (v50 = sub_21408C378(v113), (v51 & 1) != 0))
  {
    sub_2140537E4(*(v33 + 56) + 32 * v50, v114);
    sub_21408DE3C(v113);
    v52 = swift_dynamicCast();
    v53 = v112;
    if (!v52)
    {
      v53 = 0;
    }

    v93 = v53;
    v54 = v52 ^ 1;
  }

  else
  {
    sub_21408DE3C(v113);
    v93 = 0;
    v54 = 1;
  }

  v110 = v54;
  v114[0] = *MEMORY[0x277CC4DB0];
  v55 = v114[0];
  sub_2146D9E98();
  if (*(v33 + 16) && (v56 = sub_21408C378(v113), (v57 & 1) != 0))
  {
    sub_2140537E4(*(v33 + 56) + 32 * v56, v114);
    sub_21408DE3C(v113);
    v58 = swift_dynamicCast();
    v59 = v112;
    if (!v58)
    {
      v59 = 0;
    }

    v92 = v59;
    v60 = v58 ^ 1;
  }

  else
  {
    sub_21408DE3C(v113);
    v92 = 0;
    v60 = 1;
  }

  v109 = v60;
  v112 = *MEMORY[0x277CC4DB8];
  v61 = v112;
  sub_2146D9E98();
  if (*(v33 + 16) && (v62 = sub_21408C378(v113), (v63 & 1) != 0))
  {
    sub_2140537E4(*(v33 + 56) + 32 * v62, v114);
    sub_21408DE3C(v113);

    v64 = swift_dynamicCast();
    v65 = v112;
    if (!v64)
    {
      v65 = 0;
    }

    v91 = v65;
    v108 = v64 ^ 1;
  }

  else
  {

    sub_21408DE3C(v113);
    v91 = 0;
    v108 = 1;
  }

LABEL_72:
  v66 = v94;
  sub_2146D9B58();
  v67 = sub_2146D9448();
  (*(v95 + 8))(v66, v96);
  v114[0] = v67;
  if (v67[2])
  {
    v96 = v41;
    sub_2144AEF6C(0x53726F6C6F434743, 0xEC00000065636170, v113);
    sub_213FB2DF4(v113, &qword_27C913170, &qword_2146EAB20);
    sub_2144AEF6C(0xD000000000000017, 0x800000021479B810, v113);
    sub_213FB2DF4(v113, &qword_27C913170, &qword_2146EAB20);
    v68 = objc_opt_self();
    v69 = sub_2146D9468();

    *&v113[0] = 0;
    v70 = [v68 dataWithPropertyList:v69 format:200 options:0 error:v113];

    v71 = *&v113[0];
    if (v70)
    {
      v72 = sub_2146D8A58();
      v74 = v73;
    }

    else
    {
      v78 = v71;
      v79 = sub_2146D8838();

      swift_willThrow();
      v72 = 0;
      v74 = 0xF000000000000000;
    }

    v76 = BaseAddress;
    v77 = v93;
    result = sub_213FDC6BC(0, 0xF000000000000000);
    v41 = v96;
  }

  else
  {

    v72 = 0;
    v74 = 0xF000000000000000;
    v76 = BaseAddress;
    v77 = v93;
  }

  v80 = v111;
  v81 = IsPlanar != 0;
  v82 = v110;
  v83 = v109;
  v84 = v108;
  v85 = v107;
  v86 = v106;
  v87 = v105;
  v88 = v99;
  *a2 = v102;
  *(a2 + 8) = v88;
  *(a2 + 16) = v76;
  *(a2 + 24) = v80;
  *(a2 + 32) = v77;
  *(a2 + 40) = v82;
  *(a2 + 48) = v92;
  *(a2 + 56) = v83;
  *(a2 + 64) = v91;
  *(a2 + 72) = v84;
  *(a2 + 73) = v101;
  v89 = v98;
  *(a2 + 80) = v100;
  *(a2 + 88) = v89;
  *(a2 + 96) = v41;
  *(a2 + 104) = v85;
  *(a2 + 105) = v81;
  *(a2 + 112) = 0;
  *(a2 + 120) = v86;
  *(a2 + 128) = v104;
  *(a2 + 136) = v87;
  *(a2 + 144) = v14;
  *(a2 + 152) = v15;
  *(a2 + 160) = v16;
  *(a2 + 168) = v17;
  *(a2 + 176) = v72;
  *(a2 + 184) = v74;
  v90 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2144ACD28(char a1)
{
  result = 0xD000000000000010;
  switch(a1)
  {
    case 1:
    case 6:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
    case 9:
      result = 0xD00000000000001FLL;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    case 5:
      result = 0xD00000000000001ELL;
      break;
    case 7:
    case 10:
      result = 0xD000000000000013;
      break;
    case 8:
    case 14:
    case 17:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000019;
      break;
    case 12:
    case 13:
      result = 0xD000000000000015;
      break;
    case 15:
      result = 0xD00000000000001BLL;
      break;
    case 16:
      result = 0xD000000000000021;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2144ACEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2144B1EF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2144ACEEC(uint64_t a1)
{
  v2 = sub_2144B1A2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144ACF28(uint64_t a1)
{
  v2 = sub_2144B1A2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2144ACF64(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9147D8, &unk_214751078);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v9 = *v1;
  v8 = v1[1];
  v40 = v1[2];
  v41 = v8;
  v45 = *(v1 + 24);
  v39 = v1[4];
  LODWORD(v8) = *(v1 + 40);
  v36 = v1[6];
  v37 = *(v1 + 56);
  v38 = v8;
  v34 = v1[8];
  v35 = *(v1 + 72);
  v33 = *(v1 + 73);
  v10 = v1[10];
  v31 = v1[11];
  v32 = v10;
  v29 = v1[12];
  v30 = *(v1 + 104);
  LODWORD(v10) = *(v1 + 105);
  v26 = v1[14];
  v27 = *(v1 + 120);
  v28 = v10;
  v11 = v1[16];
  v25 = *(v1 + 136);
  v12 = v1[19];
  v23 = v1[18];
  v24 = v11;
  v22 = v12;
  v13 = v1[21];
  v21 = v1[20];
  v20 = v13;
  v14 = v1[23];
  v19 = v1[22];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144B1A2C();
  sub_2146DAA28();
  LOBYTE(v43) = 0;
  v16 = v42;
  sub_2146DA368();
  if (!v16)
  {
    v42 = v14;
    LOBYTE(v43) = 1;
    sub_2146DA368();
    LOBYTE(v43) = 2;
    sub_2146DA2E8();
    LOBYTE(v43) = 3;
    sub_2146DA2E8();
    LOBYTE(v43) = 4;
    sub_2146DA2E8();
    LOBYTE(v43) = 5;
    sub_2146DA2E8();
    LOBYTE(v43) = v33;
    v46 = 6;
    sub_2144B1A80();
    sub_2146DA308();
    LOBYTE(v43) = 7;
    sub_2146DA368();
    LOBYTE(v43) = 8;
    sub_2146DA368();
    LOBYTE(v43) = 9;
    sub_2146DA2E8();
    LOBYTE(v43) = 10;
    sub_2146DA338();
    LOBYTE(v43) = 11;
    sub_2146DA2E8();
    LOBYTE(v43) = 12;
    sub_2146DA2E8();
    v43 = v23;
    v46 = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D0, &qword_2146F5CA0);
    sub_2144B1B28(&qword_27C90A1B0);
    sub_2146DA308();
    v43 = v22;
    v46 = 14;
    sub_2146DA308();
    v43 = v21;
    v46 = 15;
    sub_2146DA308();
    v43 = v20;
    v46 = 16;
    sub_2146DA308();
    v43 = v19;
    v44 = v42;
    v46 = 17;
    sub_213FDCA18(v19, v42);
    sub_214061684();
    sub_2146DA308();
    sub_213FDC6BC(v43, v44);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2144AD51C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9147F0, &qword_214751088);
  v5 = *(v119 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v119);
  v8 = &v33 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144B1A2C();
  sub_2146DAA08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    return sub_213FDC6BC(0, 0xF000000000000000);
  }

  else
  {
    v54 = v5;
    LOBYTE(v67[0]) = 0;
    v53 = sub_2146DA1A8();
    LOBYTE(v67[0]) = 1;
    v52 = sub_2146DA1A8();
    LOBYTE(v67[0]) = 2;
    v51 = sub_2146DA128();
    v118 = v10 & 1;
    LOBYTE(v67[0]) = 3;
    v50 = sub_2146DA128();
    v116 = v11 & 1;
    LOBYTE(v67[0]) = 4;
    v49 = sub_2146DA128();
    v114 = v12 & 1;
    LOBYTE(v67[0]) = 5;
    v48 = sub_2146DA128();
    v112 = v13 & 1;
    LOBYTE(v55) = 6;
    sub_2144B1AD4();
    sub_2146DA148();
    v14 = LOBYTE(v67[0]);
    LOBYTE(v67[0]) = 7;
    v47 = sub_2146DA1A8();
    LOBYTE(v67[0]) = 8;
    v46 = sub_2146DA1A8();
    v45 = v14;
    LOBYTE(v67[0]) = 9;
    v15 = sub_2146DA128();
    v109 = v16 & 1;
    LOBYTE(v67[0]) = 10;
    v44 = sub_2146DA178();
    LOBYTE(v67[0]) = 11;
    v43 = sub_2146DA128();
    v106 = v17 & 1;
    LOBYTE(v67[0]) = 12;
    v42 = sub_2146DA128();
    v104 = v18 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D0, &qword_2146F5CA0);
    LOBYTE(v55) = 13;
    v41 = sub_2144B1B28(&qword_27C90A1A0);
    sub_2146DA148();
    v40 = v67[0];
    LOBYTE(v55) = 14;
    sub_2146DA148();
    v39 = v67[0];
    LOBYTE(v55) = 15;
    sub_2146DA148();
    v19 = v67[0];
    LOBYTE(v55) = 16;
    sub_2146DA148();
    v20 = v67[0];
    v100 = 17;
    sub_21406116C();
    sub_2146DA148();
    v44 &= 1u;
    (*(v54 + 8))(v8, v119);
    v21 = v101;
    v33 = v102;
    v34 = v101;
    sub_213FDC6BC(0, 0xF000000000000000);
    *&v55 = v53;
    *(&v55 + 1) = v52;
    *&v56 = v51;
    LODWORD(v119) = v118;
    BYTE8(v56) = v118;
    *(&v56 + 9) = *v117;
    HIDWORD(v56) = *&v117[3];
    *&v57 = v50;
    LODWORD(v54) = v116;
    BYTE8(v57) = v116;
    *(&v57 + 9) = *v115;
    HIDWORD(v57) = *&v115[3];
    *&v58 = v49;
    LODWORD(v41) = v114;
    BYTE8(v58) = v114;
    *(&v58 + 9) = *v113;
    HIDWORD(v58) = *&v113[3];
    *&v59 = v48;
    v38 = v112;
    BYTE8(v59) = v112;
    BYTE9(v59) = v45;
    *(&v59 + 10) = v110;
    HIWORD(v59) = v111;
    *&v60 = v47;
    *(&v60 + 1) = v46;
    v37 = v15;
    *&v61 = v15;
    v36 = v109;
    BYTE8(v61) = v109;
    BYTE9(v61) = v44;
    HIWORD(v61) = v108;
    *(&v61 + 10) = v107;
    *&v62 = v43;
    v35 = v106;
    BYTE8(v62) = v106;
    HIDWORD(v62) = *&v105[3];
    *(&v62 + 9) = *v105;
    *&v63 = v42;
    HIDWORD(v63) = *&v103[3];
    *(&v63 + 9) = *v103;
    LOBYTE(v15) = v104;
    BYTE8(v63) = v104;
    *&v64 = v40;
    *(&v64 + 1) = v39;
    *&v65 = v19;
    *(&v65 + 1) = v20;
    *&v66 = v21;
    v22 = v33;
    *(&v66 + 1) = v33;
    v23 = v55;
    v24 = v56;
    v25 = v58;
    a2[2] = v57;
    a2[3] = v25;
    *a2 = v23;
    a2[1] = v24;
    v26 = v59;
    v27 = v60;
    v28 = v62;
    a2[6] = v61;
    a2[7] = v28;
    a2[4] = v26;
    a2[5] = v27;
    v29 = v63;
    v30 = v64;
    v31 = v66;
    a2[10] = v65;
    a2[11] = v31;
    a2[8] = v29;
    a2[9] = v30;
    sub_214060FB0(&v55, v67);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v67[0] = v53;
    v67[1] = v52;
    v67[2] = v51;
    v68 = v119;
    *v69 = *v117;
    *&v69[3] = *&v117[3];
    v70 = v50;
    v71 = v54;
    *v72 = *v115;
    *&v72[3] = *&v115[3];
    v73 = v49;
    v74 = v41;
    *v75 = *v113;
    *&v75[3] = *&v113[3];
    v76 = v48;
    v77 = v38;
    v78 = v45;
    v79 = v110;
    v80 = v111;
    v81 = v47;
    v82 = v46;
    v83 = v37;
    v84 = v36;
    v85 = v44;
    v86 = v107;
    v87 = v108;
    v88 = v43;
    v89 = v35;
    *&v90[3] = *&v105[3];
    *v90 = *v105;
    v91 = v42;
    v92 = v15;
    *&v93[3] = *&v103[3];
    *v93 = *v103;
    v94 = v40;
    v95 = v39;
    v96 = v19;
    v97 = v20;
    v98 = v34;
    v99 = v22;
    return sub_214061060(v67);
  }
}

uint64_t sub_2144ADE34()
{
  swift_beginAccess();
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_2144ADE6C(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t sub_2144ADF10@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[11];
  v4 = v1[9];
  v29 = v1[10];
  v30 = v3;
  v5 = v1[11];
  v6 = v1[13];
  v31 = v1[12];
  v7 = v31;
  v32 = v6;
  v8 = v1[7];
  v10 = v1[5];
  v25 = v1[6];
  v9 = v25;
  v26 = v8;
  v11 = v1[7];
  v12 = v1[9];
  v27 = v1[8];
  v13 = v27;
  v28 = v12;
  v14 = v1[3];
  v22[0] = v1[2];
  v22[1] = v14;
  v15 = v1[5];
  v17 = v1[2];
  v16 = v1[3];
  v23 = v1[4];
  v18 = v23;
  v24 = v15;
  a1[8] = v29;
  a1[9] = v5;
  v19 = v1[13];
  a1[10] = v7;
  a1[11] = v19;
  a1[4] = v9;
  a1[5] = v11;
  a1[6] = v13;
  a1[7] = v4;
  *a1 = v17;
  a1[1] = v16;
  a1[2] = v18;
  a1[3] = v10;
  return sub_214060FB0(v22, v21);
}

uint64_t sub_2144ADFC8(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[10];
  v4 = v1[12];
  v5 = v1[13];
  v17[9] = v1[11];
  v17[10] = v4;
  v17[11] = v5;
  v6 = v1[7];
  v17[4] = v1[6];
  v17[5] = v6;
  v7 = v1[9];
  v17[6] = v1[8];
  v17[7] = v7;
  v17[8] = v3;
  v8 = v1[3];
  v17[0] = v1[2];
  v17[1] = v8;
  v9 = v1[5];
  v17[2] = v1[4];
  v17[3] = v9;
  v10 = a1[9];
  v1[10] = a1[8];
  v1[11] = v10;
  v11 = a1[11];
  v1[12] = a1[10];
  v1[13] = v11;
  v12 = a1[5];
  v1[6] = a1[4];
  v1[7] = v12;
  v13 = a1[7];
  v1[8] = a1[6];
  v1[9] = v13;
  v14 = a1[1];
  v1[2] = *a1;
  v1[3] = v14;
  v15 = a1[3];
  v1[4] = a1[2];
  v1[5] = v15;
  return sub_214061060(v17);
}

__n128 sub_2144AE0CC(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  v3 = *(a1 + 144);
  *(v2 + 160) = *(a1 + 128);
  *(v2 + 176) = v3;
  v4 = *(a1 + 176);
  *(v2 + 192) = *(a1 + 160);
  *(v2 + 208) = v4;
  v5 = *(a1 + 80);
  *(v2 + 96) = *(a1 + 64);
  *(v2 + 112) = v5;
  v6 = *(a1 + 112);
  *(v2 + 128) = *(a1 + 96);
  *(v2 + 144) = v6;
  v7 = *(a1 + 16);
  *(v2 + 32) = *a1;
  *(v2 + 48) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v2 + 64) = result;
  *(v2 + 80) = v9;
  return result;
}

uint64_t sub_2144AE138(_OWORD *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v2 = a1[9];
  *(v1 + 160) = a1[8];
  *(v1 + 176) = v2;
  v3 = a1[11];
  *(v1 + 192) = a1[10];
  *(v1 + 208) = v3;
  v4 = a1[5];
  *(v1 + 96) = a1[4];
  *(v1 + 112) = v4;
  v5 = a1[7];
  *(v1 + 128) = a1[6];
  *(v1 + 144) = v5;
  v6 = a1[1];
  *(v1 + 32) = *a1;
  *(v1 + 48) = v6;
  v7 = a1[3];
  *(v1 + 64) = a1[2];
  *(v1 + 80) = v7;
  return v1;
}

uint64_t sub_2144AE17C(_OWORD *a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 1;
  v7 = a1[9];
  *(v6 + 160) = a1[8];
  *(v6 + 176) = v7;
  v8 = a1[11];
  *(v6 + 192) = a1[10];
  *(v6 + 208) = v8;
  v9 = a1[5];
  *(v6 + 96) = a1[4];
  *(v6 + 112) = v9;
  v10 = a1[7];
  *(v6 + 128) = a1[6];
  *(v6 + 144) = v10;
  v11 = a1[1];
  *(v6 + 32) = *a1;
  *(v6 + 48) = v11;
  v12 = a1[3];
  *(v6 + 64) = a1[2];
  *(v6 + 80) = v12;
  swift_beginAccess();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3 & 1;
  return v6;
}

uint64_t sub_2144AE234(_OWORD *a1, uint64_t a2, char a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  v6 = a1[9];
  *(v3 + 160) = a1[8];
  *(v3 + 176) = v6;
  v7 = a1[11];
  *(v3 + 192) = a1[10];
  *(v3 + 208) = v7;
  v8 = a1[5];
  *(v3 + 96) = a1[4];
  *(v3 + 112) = v8;
  v9 = a1[7];
  *(v3 + 128) = a1[6];
  *(v3 + 144) = v9;
  v10 = a1[1];
  *(v3 + 32) = *a1;
  *(v3 + 48) = v10;
  v11 = a1[3];
  *(v3 + 64) = a1[2];
  *(v3 + 80) = v11;
  swift_beginAccess();
  *(v3 + 16) = a2;
  *(v3 + 24) = a3 & 1;
  return v3;
}

uint64_t sub_2144AE2FC(__CVBuffer *a1)
{
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  if (BaseAddress)
  {
    v4 = BaseAddress;
    swift_beginAccess();
    v5 = sub_2144668E8(v4, *(v1 + 112));
    v7 = v6;
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
    sub_2146D8A68();
    return sub_213FB54FC(v5, v7);
  }

  else
  {
    sub_214061118();
    swift_allocError();
    *v9 = 257;
    *(v9 + 8) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_2144AE3EC(__CVBuffer *a1)
{
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  if (BaseAddress)
  {
    v4 = BaseAddress;
    swift_beginAccess();
    v1 = sub_2144668E8(v4, *(v1 + 112));
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  }

  else
  {
    sub_214061118();
    swift_allocError();
    *v5 = 257;
    *(v5 + 8) = 0;
    swift_willThrow();
  }

  return v1;
}

_OWORD *sub_2144AE4B0()
{
  v1 = v0[11];
  v8[8] = v0[10];
  v8[9] = v1;
  v2 = v0[13];
  v8[10] = v0[12];
  v8[11] = v2;
  v3 = v0[7];
  v8[4] = v0[6];
  v8[5] = v3;
  v4 = v0[9];
  v8[6] = v0[8];
  v8[7] = v4;
  v5 = v0[3];
  v8[0] = v0[2];
  v8[1] = v5;
  v6 = v0[5];
  v8[2] = v0[4];
  v8[3] = v6;
  sub_214061060(v8);
  return v0;
}

uint64_t sub_2144AE508()
{
  v1 = v0[11];
  v8[8] = v0[10];
  v8[9] = v1;
  v2 = v0[13];
  v8[10] = v0[12];
  v8[11] = v2;
  v3 = v0[7];
  v8[4] = v0[6];
  v8[5] = v3;
  v4 = v0[9];
  v8[6] = v0[8];
  v8[7] = v4;
  v5 = v0[3];
  v8[0] = v0[2];
  v8[1] = v5;
  v6 = v0[5];
  v8[2] = v0[4];
  v8[3] = v6;
  sub_214061060(v8);
  return swift_deallocClassInstance();
}

__n128 sub_2144AE56C@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
  v5 = *(a1 + 144);
  *(v4 + 160) = *(a1 + 128);
  *(v4 + 176) = v5;
  v6 = *(a1 + 176);
  *(v4 + 192) = *(a1 + 160);
  *(v4 + 208) = v6;
  v7 = *(a1 + 80);
  *(v4 + 96) = *(a1 + 64);
  *(v4 + 112) = v7;
  v8 = *(a1 + 112);
  *(v4 + 128) = *(a1 + 96);
  *(v4 + 144) = v8;
  v9 = *(a1 + 16);
  *(v4 + 32) = *a1;
  *(v4 + 48) = v9;
  result = *(a1 + 32);
  v11 = *(a1 + 48);
  *(v4 + 64) = result;
  *(v4 + 80) = v11;
  *a2 = v4;
  return result;
}

uint64_t sub_2144AE60C(__CVBuffer *a1)
{
  v4 = *v1;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  if (BaseAddress)
  {
    v6 = BaseAddress;
    swift_beginAccess();
    v2 = sub_2144668E8(v6, *(v4 + 112));
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  }

  else
  {
    sub_214061118();
    swift_allocError();
    *v7 = 257;
    *(v7 + 8) = 0;
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_2144AE6DC@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[10];
  v4 = v1[8];
  v29 = v1[9];
  v30 = v3;
  v5 = v1[10];
  v6 = v1[12];
  v31 = v1[11];
  v7 = v31;
  v32 = v6;
  v8 = v1[6];
  v10 = v1[4];
  v25 = v1[5];
  v9 = v25;
  v26 = v8;
  v11 = v1[6];
  v12 = v1[8];
  v27 = v1[7];
  v13 = v27;
  v28 = v12;
  v14 = v1[2];
  v22[0] = v1[1];
  v22[1] = v14;
  v15 = v1[4];
  v17 = v1[1];
  v16 = v1[2];
  v23 = v1[3];
  v18 = v23;
  v24 = v15;
  a1[8] = v29;
  a1[9] = v5;
  v19 = v1[12];
  a1[10] = v7;
  a1[11] = v19;
  a1[4] = v9;
  a1[5] = v11;
  a1[6] = v13;
  a1[7] = v4;
  *a1 = v17;
  a1[1] = v16;
  a1[2] = v18;
  a1[3] = v10;
  return sub_214060FB0(v22, v21);
}

uint64_t sub_2144AE794(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[9];
  v4 = v1[11];
  v5 = v1[12];
  v17[9] = v1[10];
  v17[10] = v4;
  v17[11] = v5;
  v6 = v1[6];
  v17[4] = v1[5];
  v17[5] = v6;
  v7 = v1[8];
  v17[6] = v1[7];
  v17[7] = v7;
  v17[8] = v3;
  v8 = v1[2];
  v17[0] = v1[1];
  v17[1] = v8;
  v9 = v1[4];
  v17[2] = v1[3];
  v17[3] = v9;
  v10 = a1[9];
  v1[9] = a1[8];
  v1[10] = v10;
  v11 = a1[11];
  v1[11] = a1[10];
  v1[12] = v11;
  v12 = a1[5];
  v1[5] = a1[4];
  v1[6] = v12;
  v13 = a1[7];
  v1[7] = a1[6];
  v1[8] = v13;
  v14 = a1[1];
  v1[1] = *a1;
  v1[2] = v14;
  v15 = a1[3];
  v1[3] = a1[2];
  v1[4] = v15;
  return sub_214061060(v17);
}

_OWORD *sub_2144AE89C(_OWORD *a1)
{
  v2 = a1[9];
  v1[9] = a1[8];
  v1[10] = v2;
  v3 = a1[11];
  v1[11] = a1[10];
  v1[12] = v3;
  v4 = a1[5];
  v1[5] = a1[4];
  v1[6] = v4;
  v5 = a1[7];
  v1[7] = a1[6];
  v1[8] = v5;
  v6 = a1[1];
  v1[1] = *a1;
  v1[2] = v6;
  v7 = a1[3];
  v1[3] = a1[2];
  v1[4] = v7;
  return v1;
}

_OWORD *sub_2144AE8D4()
{
  v1 = v0[10];
  v8[8] = v0[9];
  v8[9] = v1;
  v2 = v0[12];
  v8[10] = v0[11];
  v8[11] = v2;
  v3 = v0[6];
  v8[4] = v0[5];
  v8[5] = v3;
  v4 = v0[8];
  v8[6] = v0[7];
  v8[7] = v4;
  v5 = v0[2];
  v8[0] = v0[1];
  v8[1] = v5;
  v6 = v0[4];
  v8[2] = v0[3];
  v8[3] = v6;
  sub_214061060(v8);
  return v0;
}

uint64_t sub_2144AE92C()
{
  v1 = v0[10];
  v8[8] = v0[9];
  v8[9] = v1;
  v2 = v0[12];
  v8[10] = v0[11];
  v8[11] = v2;
  v3 = v0[6];
  v8[4] = v0[5];
  v8[5] = v3;
  v4 = v0[8];
  v8[6] = v0[7];
  v8[7] = v4;
  v5 = v0[2];
  v8[0] = v0[1];
  v8[1] = v5;
  v6 = v0[4];
  v8[2] = v0[3];
  v8[3] = v6;
  sub_214061060(v8);
  return swift_deallocClassInstance();
}

_BYTE **sub_2144AE9A4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_2144AE9DC(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_2144AEA38(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_2144AEA38(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2144AEB04(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2140537E4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2144AEB04(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2144AEC10(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2146D9F88();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2144AEC10(uint64_t a1, unint64_t a2)
{
  v4 = sub_2144AEC5C(a1, a2);
  sub_2144AED8C(&unk_2826533D0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2144AEC5C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2146701CC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2146D9F88();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2146D9708();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2146701CC(v10, 0);
        result = sub_2146D9EB8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2144AED8C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2144AEE78(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_2144AEE78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914828, &unk_2147514F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

double sub_2144AEF6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_21408C300(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_214482C24();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_213FDC730((*(v12 + 56) + 32 * v9), a3);
    sub_214481C3C(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_2144AF010@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_21408C508(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2144831F0();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = sub_2146DA008();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_213FDC730((*(v11 + 56) + 32 * v8), a2);
    sub_21448210C(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_2144AF0EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_21408C300(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2144838E8();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_213FB77C8((*(v12 + 56) + 40 * v9), a3);
    sub_214482A68(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t *sub_2144AF198(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v36 = *MEMORY[0x277D85DE8];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_213FB54FC(v5, v4);
      *&v35 = v5;
      *(&v35 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_2146ECC00;
      sub_213FB54FC(0, 0xC000000000000000);
      result = sub_2144AF544(&v35, a2);
      v16 = v35;
      v17 = *(&v35 + 1) | 0x4000000000000000;
LABEL_26:
      *v3 = v16;
      v3[1] = v17;
      goto LABEL_39;
    }

    result = sub_213FB54FC(v5, v4);
    *&v35 = v5;
    WORD4(v35) = v4;
    BYTE10(v35) = BYTE2(v4);
    BYTE11(v35) = BYTE3(v4);
    BYTE12(v35) = BYTE4(v4);
    BYTE13(v35) = BYTE5(v4);
    BYTE14(v35) = BYTE6(v4);
    if ((a2 & 0x8000000000000000) == 0)
    {
      if (a2)
      {
        if (a2 > 7)
        {
          v7 = a2 & 0x7FFFFFFFFFFFFFF8;
          v19 = &v36;
          v20 = a2 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v21 = vrev32q_s8(*v19);
            v19[-1] = vrev32q_s8(v19[-1]);
            *v19 = v21;
            v19 += 2;
            v20 -= 8;
          }

          while (v20);
          if (v7 == a2)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v7 = 0;
        }

        v22 = a2 - v7;
        v23 = &v35 + v7;
        do
        {
          *v23 = bswap32(*v23);
          ++v23;
          --v22;
        }

        while (v22);
      }

LABEL_25:
      v16 = v35;
      v17 = DWORD2(v35) | ((WORD6(v35) | (BYTE14(v35) << 16)) << 32);
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (v6 != 2)
  {
    *(&v35 + 7) = 0;
    *&v35 = 0;
    if ((a2 & 0x8000000000000000) == 0)
    {
      if (a2)
      {
        if (a2 > 7)
        {
          v18 = a2 & 0x7FFFFFFFFFFFFFF8;
          v24 = &v36;
          v25 = a2 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v26 = vrev32q_s8(*v24);
            v24[-1] = vrev32q_s8(v24[-1]);
            *v24 = v26;
            v24 += 2;
            v25 -= 8;
          }

          while (v25);
          if (v18 == a2)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v18 = 0;
        }

        v27 = a2 - v18;
        v28 = &v35 + v18;
        do
        {
          *v28 = bswap32(*v28);
          ++v28;
          --v27;
        }

        while (v27);
      }

LABEL_39:
      v34 = *MEMORY[0x277D85DE8];
      return result;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  sub_213FB54FC(v5, v4);
  *&v35 = v5;
  *(&v35 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_2146ECC00;
  sub_213FB54FC(0, 0xC000000000000000);
  sub_2146D8968();
  v8 = v35;
  v9 = *(v35 + 16);
  v10 = *(v35 + 24);
  result = sub_2146D8728();
  if (result)
  {
    v11 = result;
    v12 = sub_2146D8758();
    v13 = v9 - v12;
    if (__OFSUB__(v9, v12))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (__OFSUB__(v10, v9))
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }

    v14 = v12;
    result = sub_2146D8748();
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_44;
    }

    if (a2)
    {
      if (a2 > 7)
      {
        v15 = a2 & 0x7FFFFFFFFFFFFFF8;
        v29 = (v11 + v13 + 16);
        v30 = a2 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v31 = vrev32q_s8(*v29);
          v29[-1] = vrev32q_s8(v29[-1]);
          *v29 = v31;
          v29 += 2;
          v30 -= 8;
        }

        while (v30);
        if (v15 == a2)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v15 = 0;
      }

      v32 = a2 - v15;
      v33 = (v11 + v9 + 4 * v15 - v14);
      do
      {
        *v33 = bswap32(*v33);
        ++v33;
        --v32;
      }

      while (v32);
    }

LABEL_38:
    *v3 = v8;
    v3[1] = *(&v8 + 1) | 0x8000000000000000;
    goto LABEL_39;
  }

  __break(1u);
  return result;
}

uint64_t sub_2144AF544(int *a1, unint64_t a2)
{
  result = sub_2146D89A8();
  v5 = *a1;
  if (a1[1] < v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = *(a1 + 1);

  result = sub_2146D8728();
  if (result)
  {
    v7 = result;
    result = sub_2146D8758();
    v8 = v5 - result;
    if (!__OFSUB__(v5, result))
    {
      v9 = result;
      result = sub_2146D8748();
      if ((a2 & 0x8000000000000000) == 0)
      {
        if (a2)
        {
          if (a2 > 7)
          {
            v10 = a2 & 0x7FFFFFFFFFFFFFF8;
            v11 = (v8 + v7 + 16);
            v12 = a2 & 0x7FFFFFFFFFFFFFF8;
            do
            {
              v13 = vrev32q_s8(*v11);
              v11[-1] = vrev32q_s8(v11[-1]);
              *v11 = v13;
              v11 += 2;
              v12 -= 8;
            }

            while (v12);
            if (v10 == a2)
            {
            }
          }

          else
          {
            v10 = 0;
          }

          v14 = a2 - v10;
          v15 = (v7 + v5 + 4 * v10 - v9);
          do
          {
            *v15 = bswap32(*v15);
            ++v15;
            --v14;
          }

          while (v14);
        }
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_2144AF650(uint64_t a1, unint64_t a2)
{
  v6[1] = a2;
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v3 = 0;
    if (v2 != 2)
    {
      goto LABEL_11;
    }

    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    v3 = v4 - v5;
    if (!__OFSUB__(v4, v5))
    {
LABEL_10:
      sub_21402D9F8(a1, a2);
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v3 = BYTE6(a2);
LABEL_11:
    sub_2144AF198(v6, v3 / 4);
    return;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v3 = HIDWORD(a1) - a1;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_2144AF6EC(uint64_t *a1, size_t a2, void *a3, __CVBuffer *a4, uint64_t a5, void *a6, char **a7, char **a8, char **a9, uint64_t a10, _BYTE *a11, char **a12, _BYTE *a13, void *a14, char a15)
{
  v15 = a4;
  v16 = a3;
  v260 = *MEMORY[0x277D85DE8];
  v18 = *a1;
  v19 = a1[1];
  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v20 != 2)
    {
      *(&dataPtr + 7) = 0;
      *&dataPtr = 0;
      if ((a2 & 0x8000000000000000) != 0)
      {
LABEL_313:
        __break(1u);
        goto LABEL_314;
      }

      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      if (a2)
      {
        v86 = 4;
        v87 = a2;
        while (1)
        {
          v88 = v86 - 4;
          if ((v86 - 4) >= v16[2])
          {
            goto LABEL_289;
          }

          if (v88 >= *(v15 + 2))
          {
            goto LABEL_291;
          }

          if (v88 >= *(a5 + 16))
          {
            goto LABEL_293;
          }

          if (v88 >= a6[2])
          {
            goto LABEL_297;
          }

          v89 = v16[v86];
          if (v89 < 0)
          {
            break;
          }

          v90 = *(v15 + v86);
          if (v90 < 0)
          {
            break;
          }

          v91 = *(a5 + 8 * v86);
          if (v91 < 0)
          {
            break;
          }

          *pixelFormatTypea = a6[v86];
          v92 = *a7;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a7 = v92;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v92 = sub_214095ECC(0, *(v92 + 2) + 1, 1, v92);
            *a7 = v92;
          }

          v95 = *(v92 + 2);
          v94 = *(v92 + 3);
          if (v95 >= v94 >> 1)
          {
            v92 = sub_214095ECC((v94 > 1), v95 + 1, 1, v92);
            *a7 = v92;
          }

          *(v92 + 2) = v95 + 1;
          *&v92[8 * v95 + 32] = v89;
          v96 = *a8;
          v97 = swift_isUniquelyReferenced_nonNull_native();
          *a8 = v96;
          if ((v97 & 1) == 0)
          {
            v96 = sub_214095ECC(0, *(v96 + 2) + 1, 1, v96);
            *a8 = v96;
          }

          v99 = *(v96 + 2);
          v98 = *(v96 + 3);
          if (v99 >= v98 >> 1)
          {
            v96 = sub_214095ECC((v98 > 1), v99 + 1, 1, v96);
            *a8 = v96;
          }

          *(v96 + 2) = v99 + 1;
          *&v96[8 * v99 + 32] = v90;
          v100 = *a9;
          v101 = swift_isUniquelyReferenced_nonNull_native();
          *a9 = v100;
          if ((v101 & 1) == 0)
          {
            v100 = sub_214095ECC(0, *(v100 + 2) + 1, 1, v100);
            *a9 = v100;
          }

          v15 = a4;
          v103 = *(v100 + 2);
          v102 = *(v100 + 3);
          if (v103 >= v102 >> 1)
          {
            v100 = sub_214095ECC((v102 > 1), v103 + 1, 1, v100);
            *a9 = v100;
          }

          *(v100 + 2) = v103 + 1;
          *&v100[8 * v103 + 32] = v91;
          v16 = a3;
          if ((*pixelFormatTypea & 0x8000000000000000) != 0)
          {
            break;
          }

          v104 = v91 * v89;
          if ((v91 * v89) >> 64 != (v91 * v89) >> 63)
          {
            goto LABEL_305;
          }

          v40 = __OFADD__(*pixelFormatTypea, v104);
          v105 = *pixelFormatTypea + v104;
          if (v40)
          {
            goto LABEL_307;
          }

          if (v105 >= 1)
          {
            break;
          }

          if ((*(a10 + 16) & 1) != 0 || (v106 = a10, v86 != 4) && (v106 = (a10 + 8), v86 != 5) || (v107 = *v106, *pixelFormatTypea != v107) || v89 != HIDWORD(v107))
          {
            *a11 = 1;
          }

          v108 = *a12;
          v109 = swift_isUniquelyReferenced_nonNull_native();
          *a12 = v108;
          if ((v109 & 1) == 0)
          {
            v108 = sub_214095FD0(0, *(v108 + 2) + 1, 1, v108);
            *a12 = v108;
          }

          v111 = *(v108 + 2);
          v110 = *(v108 + 3);
          if (v111 >= v110 >> 1)
          {
            v108 = sub_214095FD0((v110 > 1), v111 + 1, 1, v108);
            *a12 = v108;
          }

          *(v108 + 2) = v111 + 1;
          *&v108[8 * v111 + 32] = &dataPtr + *pixelFormatTypea;
          ++v86;
          if (!--v87)
          {
            goto LABEL_128;
          }
        }

        sub_214061118();
        swift_allocError();
        *v226 = 2560;
        *(v226 + 8) = 0;
        swift_willThrow();
      }

      else
      {
LABEL_128:
        if ((*a13 & 1) != 0 && *a11 == 1)
        {
          v112 = a6[2];
          if (!v112)
          {
LABEL_322:
            __break(1u);
            goto LABEL_323;
          }

          v113 = a6[4];
          if (v113 < 0xFFFFFFFF80000000)
          {
LABEL_324:
            __break(1u);
            goto LABEL_325;
          }

          if (v113 > 0x7FFFFFFF)
          {
LABEL_326:
            __break(1u);
            goto LABEL_327;
          }

          v114 = v16[2];
          if (!v114)
          {
LABEL_330:
            __break(1u);
            goto LABEL_331;
          }

          v115 = v16[4];
          if ((v115 & 0x8000000000000000) != 0)
          {
LABEL_334:
            __break(1u);
            goto LABEL_335;
          }

          if (HIDWORD(v115))
          {
LABEL_338:
            __break(1u);
            goto LABEL_339;
          }

          if (v112 == 1)
          {
LABEL_342:
            __break(1u);
            goto LABEL_343;
          }

          v116 = a6[5];
          if (v116 < 0xFFFFFFFF80000000)
          {
LABEL_346:
            __break(1u);
            goto LABEL_347;
          }

          if (v116 > 0x7FFFFFFF)
          {
LABEL_350:
            __break(1u);
            goto LABEL_351;
          }

          if (v114 == 1)
          {
LABEL_354:
            __break(1u);
            goto LABEL_355;
          }

          v117 = v16[5];
          if ((v117 & 0x8000000000000000) != 0)
          {
LABEL_358:
            __break(1u);
            goto LABEL_359;
          }

          if (HIDWORD(v117))
          {
LABEL_362:
            __break(1u);
            goto LABEL_363;
          }

          *&dataPtr = _byteswap_uint64(__PAIR64__(v113, v115));
          *(&dataPtr + 1) = _byteswap_uint64(__PAIR64__(v116, v117));
        }

        v258 = 0;
        swift_beginAccess();
        v118 = a14[2];
        v119 = a14[3];
        v254 = sub_21405019C(*&a420v[8 * a15], 0xE400000000000000);
        v245 = a14[12];
        v120 = *a12;
        v121 = swift_isUniquelyReferenced_nonNull_native();
        *a12 = v120;
        if ((v121 & 1) == 0)
        {
          v120 = sub_214095FD0(0, *(v120 + 2), 0, v120);
        }

        *a12 = v120;
        v122 = *a8;

        v123 = swift_isUniquelyReferenced_nonNull_native();
        *a8 = v122;
        if ((v123 & 1) == 0)
        {
          v122 = sub_214095ECC(0, *(v122 + 2), 0, v122);
        }

        *a8 = v122;
        v124 = *a9;

        v125 = swift_isUniquelyReferenced_nonNull_native();
        *a9 = v124;
        if ((v125 & 1) == 0)
        {
          v124 = sub_214095ECC(0, *(v124 + 2), 0, v124);
        }

        *a9 = v124;
        v126 = *a7;

        v127 = swift_isUniquelyReferenced_nonNull_native();
        *a7 = v126;
        if ((v127 & 1) == 0)
        {
          v126 = sub_214095ECC(0, *(v126 + 2), 0, v126);
        }

        *a7 = v126;

        CVPixelBufferCreateWithPlanarBytes(0, v118, v119, v254, &dataPtr, v245, a2, v120 + 4, v122 + 4, v124 + 4, v126 + 4, 0, 0, 0, &v258);

        v15 = v258;
        if (v258)
        {
        }

        else
        {
          sub_214061118();
          swift_allocError();
          *v166 = 256;
          *(v166 + 8) = 0;
          swift_willThrow();
          v167 = v258;

          v15 = a4;
        }
      }

      goto LABEL_287;
    }

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    sub_21402D9F8(v18, v19);
    sub_213FB54FC(v18, v19);
    *&dataPtr = v18;
    *(&dataPtr + 1) = v19 & 0x3FFFFFFFFFFFFFFFLL;
    v237 = a1;
    *a1 = xmmword_2146ECC00;
    sub_213FB54FC(0, 0xC000000000000000);
    sub_2146D8968();
    v48 = *(dataPtr + 16);
    v49 = *(dataPtr + 24);

    v233 = *(&dataPtr + 1);
    result = sub_2146D8728();
    if (result)
    {
      v51 = result;
      v52 = sub_2146D8758();
      v53 = v48 - v52;
      if (__OFSUB__(v48, v52))
      {
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
        goto LABEL_316;
      }

      v40 = __OFSUB__(v49, v48);
      v54 = v49 - v48;
      if (v40)
      {
LABEL_316:
        __break(1u);
        goto LABEL_317;
      }

      v55 = sub_2146D8748();
      if (v55 >= v54)
      {
        v56 = v54;
      }

      else
      {
        v56 = v55;
      }

      v235 = v56;
      if ((a2 & 0x8000000000000000) != 0)
      {
        goto LABEL_318;
      }

      v231 = dataPtr;
      v238 = (v51 + v53);
      if (a2)
      {
        v57 = 4;
        v58 = a2;
        while (1)
        {
          v59 = v57 - 4;
          if ((v57 - 4) >= v16[2])
          {
            goto LABEL_294;
          }

          if (v59 >= *(v15 + 2))
          {
            goto LABEL_298;
          }

          if (v59 >= *(a5 + 16))
          {
            goto LABEL_300;
          }

          if (v59 >= a6[2])
          {
            goto LABEL_302;
          }

          v60 = v16[v57];
          if (v60 < 0)
          {
            break;
          }

          v61 = *(v15 + v57);
          if (v61 < 0)
          {
            break;
          }

          v62 = *(a5 + 8 * v57);
          if (v62 < 0)
          {
            break;
          }

          *pixelFormatType = a6[v57];
          v63 = *a7;
          v64 = swift_isUniquelyReferenced_nonNull_native();
          *a7 = v63;
          if ((v64 & 1) == 0)
          {
            v63 = sub_214095ECC(0, *(v63 + 2) + 1, 1, v63);
            *a7 = v63;
          }

          v66 = *(v63 + 2);
          v65 = *(v63 + 3);
          if (v66 >= v65 >> 1)
          {
            v63 = sub_214095ECC((v65 > 1), v66 + 1, 1, v63);
            *a7 = v63;
          }

          *(v63 + 2) = v66 + 1;
          *&v63[8 * v66 + 32] = v60;
          v67 = *a8;
          v68 = swift_isUniquelyReferenced_nonNull_native();
          *a8 = v67;
          if ((v68 & 1) == 0)
          {
            v67 = sub_214095ECC(0, *(v67 + 2) + 1, 1, v67);
            *a8 = v67;
          }

          v70 = *(v67 + 2);
          v69 = *(v67 + 3);
          if (v70 >= v69 >> 1)
          {
            v67 = sub_214095ECC((v69 > 1), v70 + 1, 1, v67);
            *a8 = v67;
          }

          *(v67 + 2) = v70 + 1;
          *&v67[8 * v70 + 32] = v61;
          v71 = *a9;
          v72 = swift_isUniquelyReferenced_nonNull_native();
          *a9 = v71;
          if ((v72 & 1) == 0)
          {
            v71 = sub_214095ECC(0, *(v71 + 2) + 1, 1, v71);
            *a9 = v71;
          }

          v15 = a4;
          v74 = *(v71 + 2);
          v73 = *(v71 + 3);
          if (v74 >= v73 >> 1)
          {
            v71 = sub_214095ECC((v73 > 1), v74 + 1, 1, v71);
            *a9 = v71;
          }

          *(v71 + 2) = v74 + 1;
          *&v71[8 * v74 + 32] = v62;
          v16 = a3;
          if ((*pixelFormatType & 0x8000000000000000) != 0)
          {
            break;
          }

          v75 = v62 * v60;
          if ((v62 * v60) >> 64 != (v62 * v60) >> 63)
          {
            goto LABEL_308;
          }

          v40 = __OFADD__(*pixelFormatType, v75);
          v76 = *pixelFormatType + v75;
          if (v40)
          {
            goto LABEL_310;
          }

          if (v235 < v76)
          {
            break;
          }

          if ((*(a10 + 16) & 1) != 0 || (v77 = a10, v57 != 4) && (v77 = (a10 + 8), v57 != 5) || (v78 = *v77, *pixelFormatType != v78) || v60 != HIDWORD(v78))
          {
            *a11 = 1;
          }

          v79 = *a12;
          v80 = swift_isUniquelyReferenced_nonNull_native();
          *a12 = v79;
          if ((v80 & 1) == 0)
          {
            v79 = sub_214095FD0(0, *(v79 + 2) + 1, 1, v79);
            *a12 = v79;
          }

          v82 = *(v79 + 2);
          v81 = *(v79 + 3);
          if (v82 >= v81 >> 1)
          {
            v79 = sub_214095FD0((v81 > 1), v82 + 1, 1, v79);
            *a12 = v79;
          }

          *(v79 + 2) = v82 + 1;
          *&v79[8 * v82 + 32] = v238 + *pixelFormatType;
          ++v57;
          if (!--v58)
          {
            goto LABEL_179;
          }
        }

        sub_214061118();
        swift_allocError();
        *v227 = 2560;
        *(v227 + 8) = 0;
        swift_willThrow();

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      else
      {
LABEL_179:
        if ((*a13 & 1) != 0 && *a11 == 1)
        {
          v146 = a6[2];
          if (!v146)
          {
LABEL_328:
            __break(1u);
            goto LABEL_329;
          }

          v147 = a6[4];
          if (v147 < 0xFFFFFFFF80000000)
          {
LABEL_332:
            __break(1u);
            goto LABEL_333;
          }

          if (v147 > 0x7FFFFFFF)
          {
LABEL_336:
            __break(1u);
            goto LABEL_337;
          }

          v148 = v16[2];
          if (!v148)
          {
LABEL_340:
            __break(1u);
            goto LABEL_341;
          }

          v149 = v16[4];
          if ((v149 & 0x8000000000000000) != 0)
          {
LABEL_344:
            __break(1u);
            goto LABEL_345;
          }

          if (HIDWORD(v149))
          {
LABEL_348:
            __break(1u);
            goto LABEL_349;
          }

          if (v146 == 1)
          {
LABEL_352:
            __break(1u);
            goto LABEL_353;
          }

          v150 = a6[5];
          if (v150 < 0xFFFFFFFF80000000)
          {
LABEL_356:
            __break(1u);
            goto LABEL_357;
          }

          if (v150 > 0x7FFFFFFF)
          {
LABEL_360:
            __break(1u);
            goto LABEL_361;
          }

          if (v148 == 1)
          {
LABEL_364:
            __break(1u);
            goto LABEL_365;
          }

          v151 = v16[5];
          if ((v151 & 0x8000000000000000) != 0)
          {
LABEL_366:
            __break(1u);
            goto LABEL_367;
          }

          if (HIDWORD(v151))
          {
LABEL_368:
            __break(1u);
LABEL_369:
            __break(1u);
          }

          *v238 = bswap32(v147);
          v238[1] = bswap32(v149);
          v238[2] = bswap32(v150);
          v238[3] = bswap32(v151);
        }

        v258 = 0;
        swift_beginAccess();
        v153 = a14[2];
        v152 = a14[3];
        v154 = sub_21405019C(*&a420v[8 * a15], 0xE400000000000000);
        v155 = a14[12];
        v156 = *a12;
        v157 = swift_isUniquelyReferenced_nonNull_native();
        *a12 = v156;
        v256 = v152;
        if ((v157 & 1) == 0)
        {
          v156 = sub_214095FD0(0, *(v156 + 2), 0, v156);
        }

        *a12 = v156;
        v158 = *a8;

        v159 = swift_isUniquelyReferenced_nonNull_native();
        *a8 = v158;
        if ((v159 & 1) == 0)
        {
          v158 = sub_214095ECC(0, *(v158 + 2), 0, v158);
        }

        *a8 = v158;
        v160 = *a9;

        v161 = swift_isUniquelyReferenced_nonNull_native();
        *a9 = v160;
        if ((v161 & 1) == 0)
        {
          v160 = sub_214095ECC(0, *(v160 + 2), 0, v160);
        }

        *a9 = v160;
        v162 = *a7;

        v163 = swift_isUniquelyReferenced_nonNull_native();
        *a7 = v162;
        if ((v163 & 1) == 0)
        {
          v162 = sub_214095ECC(0, *(v162 + 2), 0, v162);
        }

        *a7 = v162;

        CVPixelBufferCreateWithPlanarBytes(0, v153, v256, v154, v238, v155, a2, v156 + 4, v158 + 4, v160 + 4, v162 + 4, 0, 0, 0, &v258);

        v15 = v258;
        if (v258)
        {

          v164 = v233 | 0x8000000000000000;
          goto LABEL_278;
        }

        sub_214061118();
        swift_allocError();
        *v169 = 256;
        *(v169 + 8) = 0;
        swift_willThrow();
        v170 = v258;

        v15 = a4;
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      v228 = v233 | 0x8000000000000000;
LABEL_286:
      *v237 = v231;
      v237[1] = v228;
      goto LABEL_287;
    }

    __break(1u);
  }

  else
  {
    v237 = a1;
    if (!v20)
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      sub_213FB54FC(v18, v19);
      *&dataPtr = v18;
      WORD4(dataPtr) = v19;
      BYTE10(dataPtr) = BYTE2(v19);
      BYTE11(dataPtr) = BYTE3(v19);
      BYTE12(dataPtr) = BYTE4(v19);
      BYTE13(dataPtr) = BYTE5(v19);
      BYTE14(dataPtr) = BYTE6(v19);
      if ((a2 & 0x8000000000000000) != 0)
      {
LABEL_312:
        __break(1u);
        goto LABEL_313;
      }

      v15 = a4;
      v21 = a5;
      if (a2)
      {
        v22 = 0;
        v232 = BYTE6(v19);
        while (v22 < a3[2])
        {
          if (v22 >= *(v15 + 2))
          {
            goto LABEL_290;
          }

          if (v22 >= *(v21 + 16))
          {
            goto LABEL_292;
          }

          if (v22 >= a6[2])
          {
            goto LABEL_296;
          }

          v23 = a3[v22 + 4];
          if (v23 < 0)
          {
            goto LABEL_204;
          }

          v24 = *(a4 + v22 + 4);
          if (v24 < 0)
          {
            goto LABEL_204;
          }

          v25 = *(a5 + 32 + 8 * v22);
          if (v25 < 0)
          {
            goto LABEL_204;
          }

          v26 = a6[v22 + 4];
          v27 = *a7;
          v28 = swift_isUniquelyReferenced_nonNull_native();
          *a7 = v27;
          if ((v28 & 1) == 0)
          {
            v27 = sub_214095ECC(0, *(v27 + 2) + 1, 1, v27);
            *a7 = v27;
          }

          v30 = *(v27 + 2);
          v29 = *(v27 + 3);
          if (v30 >= v29 >> 1)
          {
            v27 = sub_214095ECC((v29 > 1), v30 + 1, 1, v27);
            *a7 = v27;
          }

          *(v27 + 2) = v30 + 1;
          *&v27[8 * v30 + 32] = v23;
          v31 = *a8;
          v32 = swift_isUniquelyReferenced_nonNull_native();
          *a8 = v31;
          if ((v32 & 1) == 0)
          {
            v31 = sub_214095ECC(0, *(v31 + 2) + 1, 1, v31);
            *a8 = v31;
          }

          v34 = *(v31 + 2);
          v33 = *(v31 + 3);
          if (v34 >= v33 >> 1)
          {
            v31 = sub_214095ECC((v33 > 1), v34 + 1, 1, v31);
            *a8 = v31;
          }

          *(v31 + 2) = v34 + 1;
          *&v31[8 * v34 + 32] = v24;
          v35 = *a9;
          v36 = swift_isUniquelyReferenced_nonNull_native();
          *a9 = v35;
          if ((v36 & 1) == 0)
          {
            v35 = sub_214095ECC(0, *(v35 + 2) + 1, 1, v35);
            *a9 = v35;
          }

          v15 = a4;
          v38 = *(v35 + 2);
          v37 = *(v35 + 3);
          if (v38 >= v37 >> 1)
          {
            v35 = sub_214095ECC((v37 > 1), v38 + 1, 1, v35);
            *a9 = v35;
          }

          *(v35 + 2) = v38 + 1;
          *&v35[8 * v38 + 32] = v25;
          if (v26 < 0)
          {
LABEL_204:
            sub_214061118();
            swift_allocError();
            *v165 = 2560;
            *(v165 + 8) = 0;
            swift_willThrow();
            goto LABEL_178;
          }

          v39 = v25 * v23;
          if ((v25 * v23) >> 64 != (v25 * v23) >> 63)
          {
            goto LABEL_304;
          }

          v40 = __OFADD__(v26, v39);
          v41 = v26 + v39;
          if (v40)
          {
            goto LABEL_306;
          }

          if (v232 < v41)
          {
            goto LABEL_204;
          }

          if ((*(a10 + 16) & 1) != 0 || (v42 = a10, v22) && (v42 = (a10 + 8), v22 != 1) || (v43 = *v42, v26 != v43) || v23 != HIDWORD(v43))
          {
            *a11 = 1;
          }

          v44 = *a12;
          v45 = swift_isUniquelyReferenced_nonNull_native();
          *a12 = v44;
          if ((v45 & 1) == 0)
          {
            v44 = sub_214095FD0(0, *(v44 + 2) + 1, 1, v44);
            *a12 = v44;
          }

          v47 = *(v44 + 2);
          v46 = *(v44 + 3);
          if (v47 >= v46 >> 1)
          {
            v44 = sub_214095FD0((v46 > 1), v47 + 1, 1, v44);
            *a12 = v44;
          }

          ++v22;
          *(v44 + 2) = v47 + 1;
          *&v44[8 * v47 + 32] = &dataPtr + v26;
          v21 = a5;
          if (a2 == v22)
          {
            goto LABEL_153;
          }
        }

        __break(1u);
LABEL_289:
        __break(1u);
LABEL_290:
        __break(1u);
LABEL_291:
        __break(1u);
LABEL_292:
        __break(1u);
LABEL_293:
        __break(1u);
LABEL_294:
        __break(1u);
LABEL_295:
        __break(1u);
LABEL_296:
        __break(1u);
LABEL_297:
        __break(1u);
LABEL_298:
        __break(1u);
LABEL_299:
        __break(1u);
LABEL_300:
        __break(1u);
LABEL_301:
        __break(1u);
LABEL_302:
        __break(1u);
LABEL_303:
        __break(1u);
LABEL_304:
        __break(1u);
LABEL_305:
        __break(1u);
LABEL_306:
        __break(1u);
LABEL_307:
        __break(1u);
LABEL_308:
        __break(1u);
LABEL_309:
        __break(1u);
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
        goto LABEL_312;
      }

LABEL_153:
      if ((*a13 & 1) != 0 && *a11 == 1)
      {
        v128 = a6[2];
        if (!v128)
        {
LABEL_323:
          __break(1u);
          goto LABEL_324;
        }

        v129 = a6[4];
        if (v129 < 0xFFFFFFFF80000000)
        {
LABEL_325:
          __break(1u);
          goto LABEL_326;
        }

        if (v129 > 0x7FFFFFFF)
        {
LABEL_327:
          __break(1u);
          goto LABEL_328;
        }

        v130 = a3[2];
        if (!v130)
        {
LABEL_331:
          __break(1u);
          goto LABEL_332;
        }

        v131 = a3[4];
        if ((v131 & 0x8000000000000000) != 0)
        {
LABEL_335:
          __break(1u);
          goto LABEL_336;
        }

        if (HIDWORD(v131))
        {
LABEL_339:
          __break(1u);
          goto LABEL_340;
        }

        if (v128 == 1)
        {
LABEL_343:
          __break(1u);
          goto LABEL_344;
        }

        v132 = a6[5];
        if (v132 < 0xFFFFFFFF80000000)
        {
LABEL_347:
          __break(1u);
          goto LABEL_348;
        }

        if (v132 > 0x7FFFFFFF)
        {
LABEL_351:
          __break(1u);
          goto LABEL_352;
        }

        if (v130 == 1)
        {
LABEL_355:
          __break(1u);
          goto LABEL_356;
        }

        v133 = a3[5];
        if ((v133 & 0x8000000000000000) != 0)
        {
LABEL_359:
          __break(1u);
          goto LABEL_360;
        }

        if (HIDWORD(v133))
        {
LABEL_363:
          __break(1u);
          goto LABEL_364;
        }

        *&dataPtr = _byteswap_uint64(__PAIR64__(v129, v131));
        *(&dataPtr + 1) = _byteswap_uint64(__PAIR64__(v132, v133));
      }

      v258 = 0;
      swift_beginAccess();
      v134 = a14[2];
      v135 = a14[3];
      v255 = sub_21405019C(*&a420v[8 * a15], 0xE400000000000000);
      v246 = a14[12];
      v136 = *a12;
      v137 = swift_isUniquelyReferenced_nonNull_native();
      *a12 = v136;
      if ((v137 & 1) == 0)
      {
        v136 = sub_214095FD0(0, *(v136 + 2), 0, v136);
      }

      *a12 = v136;
      v138 = *a8;

      v139 = swift_isUniquelyReferenced_nonNull_native();
      *a8 = v138;
      if ((v139 & 1) == 0)
      {
        v138 = sub_214095ECC(0, *(v138 + 2), 0, v138);
      }

      *a8 = v138;
      v140 = *a9;

      v141 = swift_isUniquelyReferenced_nonNull_native();
      *a9 = v140;
      if ((v141 & 1) == 0)
      {
        v140 = sub_214095ECC(0, *(v140 + 2), 0, v140);
      }

      *a9 = v140;
      v142 = *a7;

      v143 = swift_isUniquelyReferenced_nonNull_native();
      *a7 = v142;
      if ((v143 & 1) == 0)
      {
        v142 = sub_214095ECC(0, *(v142 + 2), 0, v142);
      }

      *a7 = v142;

      CVPixelBufferCreateWithPlanarBytes(0, v134, v135, v255, &dataPtr, v246, a2, v136 + 4, v138 + 4, v140 + 4, v142 + 4, 0, 0, 0, &v258);

      v15 = v258;
      if (!v258)
      {
        sub_214061118();
        swift_allocError();
        *v168 = 256;
        *(v168 + 8) = 0;
        swift_willThrow();

        v15 = a4;
      }

LABEL_178:
      v144 = dataPtr;
      v145 = DWORD2(dataPtr) | ((WORD6(dataPtr) | (BYTE14(dataPtr) << 16)) << 32);

      *v237 = v144;
      v237[1] = v145;
      goto LABEL_287;
    }

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    sub_21402D9F8(v18, v19);
    sub_213FB54FC(v18, v19);
    *a1 = xmmword_2146ECC00;
    sub_213FB54FC(0, 0xC000000000000000);
    v234 = v19 & 0x3FFFFFFFFFFFFFFFLL;
    v83 = v18;
    v231 = v18;
    v84 = v18 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v84 < v83)
      {
LABEL_320:
        __break(1u);
LABEL_321:
        __break(1u);
        goto LABEL_322;
      }

      if (sub_2146D8728() && __OFSUB__(v83, sub_2146D8758()))
      {
        goto LABEL_321;
      }

      v171 = sub_2146D8778();
      v172 = *(v171 + 48);
      v173 = *(v171 + 52);
      swift_allocObject();
      v174 = sub_2146D8708();

      v234 = v174;
    }

    v175 = v84 < v83;
    v176 = v84 - v83;
    if (v175)
    {
      goto LABEL_315;
    }

    result = sub_2146D8728();
    if (result)
    {
      v177 = result;
      v178 = sub_2146D8758();
      v179 = v83 - v178;
      if (__OFSUB__(v83, v178))
      {
LABEL_317:
        __break(1u);
LABEL_318:
        __break(1u);
LABEL_319:
        __break(1u);
        goto LABEL_320;
      }

      v180 = sub_2146D8748();
      if (v180 >= v176)
      {
        v181 = v176;
      }

      else
      {
        v181 = v180;
      }

      v236 = v181;
      if ((a2 & 0x8000000000000000) != 0)
      {
        goto LABEL_319;
      }

      v239 = (v177 + v179);
      if (a2)
      {
        v182 = 4;
        v183 = a2;
        while (1)
        {
          v184 = v182 - 4;
          if ((v182 - 4) >= v16[2])
          {
            goto LABEL_295;
          }

          if (v184 >= *(v15 + 2))
          {
            goto LABEL_299;
          }

          if (v184 >= *(a5 + 16))
          {
            goto LABEL_301;
          }

          if (v184 >= a6[2])
          {
            goto LABEL_303;
          }

          v185 = v16[v182];
          if (v185 < 0)
          {
            break;
          }

          v186 = *(v15 + v182);
          if (v186 < 0)
          {
            break;
          }

          v187 = *(a5 + 8 * v182);
          if (v187 < 0)
          {
            break;
          }

          *pixelFormatTypeb = a6[v182];
          v188 = *a7;
          v189 = swift_isUniquelyReferenced_nonNull_native();
          *a7 = v188;
          if ((v189 & 1) == 0)
          {
            v188 = sub_214095ECC(0, *(v188 + 2) + 1, 1, v188);
            *a7 = v188;
          }

          v191 = *(v188 + 2);
          v190 = *(v188 + 3);
          if (v191 >= v190 >> 1)
          {
            v188 = sub_214095ECC((v190 > 1), v191 + 1, 1, v188);
            *a7 = v188;
          }

          *(v188 + 2) = v191 + 1;
          *&v188[8 * v191 + 32] = v185;
          v192 = *a8;
          v193 = swift_isUniquelyReferenced_nonNull_native();
          *a8 = v192;
          if ((v193 & 1) == 0)
          {
            v192 = sub_214095ECC(0, *(v192 + 2) + 1, 1, v192);
            *a8 = v192;
          }

          v195 = *(v192 + 2);
          v194 = *(v192 + 3);
          if (v195 >= v194 >> 1)
          {
            v192 = sub_214095ECC((v194 > 1), v195 + 1, 1, v192);
            *a8 = v192;
          }

          *(v192 + 2) = v195 + 1;
          *&v192[8 * v195 + 32] = v186;
          v196 = *a9;
          v197 = swift_isUniquelyReferenced_nonNull_native();
          *a9 = v196;
          if ((v197 & 1) == 0)
          {
            v196 = sub_214095ECC(0, *(v196 + 2) + 1, 1, v196);
            *a9 = v196;
          }

          v15 = a4;
          v199 = *(v196 + 2);
          v198 = *(v196 + 3);
          if (v199 >= v198 >> 1)
          {
            v196 = sub_214095ECC((v198 > 1), v199 + 1, 1, v196);
            *a9 = v196;
          }

          *(v196 + 2) = v199 + 1;
          *&v196[8 * v199 + 32] = v187;
          v16 = a3;
          if ((*pixelFormatTypeb & 0x8000000000000000) != 0)
          {
            break;
          }

          v200 = v187 * v185;
          if ((v187 * v185) >> 64 != (v187 * v185) >> 63)
          {
            goto LABEL_309;
          }

          v40 = __OFADD__(*pixelFormatTypeb, v200);
          v201 = *pixelFormatTypeb + v200;
          if (v40)
          {
            goto LABEL_311;
          }

          if (v236 < v201)
          {
            break;
          }

          if ((*(a10 + 16) & 1) != 0 || (v202 = a10, v182 != 4) && (v202 = (a10 + 8), v182 != 5) || (v203 = *v202, *pixelFormatTypeb != v203) || v185 != HIDWORD(v203))
          {
            *a11 = 1;
          }

          v204 = *a12;
          v205 = swift_isUniquelyReferenced_nonNull_native();
          *a12 = v204;
          if ((v205 & 1) == 0)
          {
            v204 = sub_214095FD0(0, *(v204 + 2) + 1, 1, v204);
            *a12 = v204;
          }

          v207 = *(v204 + 2);
          v206 = *(v204 + 3);
          if (v207 >= v206 >> 1)
          {
            v204 = sub_214095FD0((v206 > 1), v207 + 1, 1, v204);
            *a12 = v204;
          }

          *(v204 + 2) = v207 + 1;
          *&v204[8 * v207 + 32] = v239 + *pixelFormatTypeb;
          ++v182;
          if (!--v183)
          {
            goto LABEL_253;
          }
        }

        sub_214061118();
        swift_allocError();
        *v229 = 2560;
        *(v229 + 8) = 0;
        swift_willThrow();
        v225 = v234;

        swift_bridgeObjectRelease_n();
        goto LABEL_285;
      }

LABEL_253:
      if ((*a13 & 1) != 0 && *a11 == 1)
      {
        v208 = a6[2];
        if (!v208)
        {
LABEL_329:
          __break(1u);
          goto LABEL_330;
        }

        v209 = a6[4];
        if (v209 < 0xFFFFFFFF80000000)
        {
LABEL_333:
          __break(1u);
          goto LABEL_334;
        }

        if (v209 > 0x7FFFFFFF)
        {
LABEL_337:
          __break(1u);
          goto LABEL_338;
        }

        v210 = v16[2];
        if (!v210)
        {
LABEL_341:
          __break(1u);
          goto LABEL_342;
        }

        v211 = v16[4];
        if ((v211 & 0x8000000000000000) != 0)
        {
LABEL_345:
          __break(1u);
          goto LABEL_346;
        }

        if (HIDWORD(v211))
        {
LABEL_349:
          __break(1u);
          goto LABEL_350;
        }

        if (v208 == 1)
        {
LABEL_353:
          __break(1u);
          goto LABEL_354;
        }

        v212 = a6[5];
        if (v212 < 0xFFFFFFFF80000000)
        {
LABEL_357:
          __break(1u);
          goto LABEL_358;
        }

        if (v212 > 0x7FFFFFFF)
        {
LABEL_361:
          __break(1u);
          goto LABEL_362;
        }

        if (v210 == 1)
        {
LABEL_365:
          __break(1u);
          goto LABEL_366;
        }

        v213 = v16[5];
        if ((v213 & 0x8000000000000000) != 0)
        {
LABEL_367:
          __break(1u);
          goto LABEL_368;
        }

        if (HIDWORD(v213))
        {
          goto LABEL_369;
        }

        *v239 = bswap32(v209);
        v239[1] = bswap32(v211);
        v239[2] = bswap32(v212);
        v239[3] = bswap32(v213);
      }

      *&dataPtr = 0;
      swift_beginAccess();
      v214 = a14[2];
      v257 = a14[3];
      pixelFormatTypec = sub_21405019C(*&a420v[8 * a15], 0xE400000000000000);
      v247 = a14[12];
      v215 = *a12;
      v216 = swift_isUniquelyReferenced_nonNull_native();
      *a12 = v215;
      if ((v216 & 1) == 0)
      {
        v215 = sub_214095FD0(0, *(v215 + 2), 0, v215);
      }

      *a12 = v215;
      v217 = *a8;

      v218 = swift_isUniquelyReferenced_nonNull_native();
      *a8 = v217;
      if ((v218 & 1) == 0)
      {
        v217 = sub_214095ECC(0, *(v217 + 2), 0, v217);
      }

      *a8 = v217;
      v219 = *a9;

      v220 = swift_isUniquelyReferenced_nonNull_native();
      *a9 = v219;
      if ((v220 & 1) == 0)
      {
        v219 = sub_214095ECC(0, *(v219 + 2), 0, v219);
      }

      *a9 = v219;
      v221 = *a7;

      v222 = swift_isUniquelyReferenced_nonNull_native();
      *a7 = v221;
      if ((v222 & 1) == 0)
      {
        v221 = sub_214095ECC(0, *(v221 + 2), 0, v221);
      }

      *a7 = v221;

      CVPixelBufferCreateWithPlanarBytes(0, v214, v257, pixelFormatTypec, v239, v247, a2, v215 + 4, v217 + 4, v219 + 4, v221 + 4, 0, 0, 0, &dataPtr);

      v15 = dataPtr;
      if (!dataPtr)
      {
        sub_214061118();
        swift_allocError();
        *v223 = 256;
        *(v223 + 8) = 0;
        swift_willThrow();
        v224 = dataPtr;
        v225 = v234;

        v15 = a4;

        swift_bridgeObjectRelease_n();

LABEL_285:

        v228 = v225 | 0x4000000000000000;
        goto LABEL_286;
      }

      v164 = v234 | 0x4000000000000000;
LABEL_278:
      *v237 = v231;
      v237[1] = v164;
LABEL_287:

      v230 = *MEMORY[0x277D85DE8];
      return v15;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2144B1A2C()
{
  result = qword_27C9147E0;
  if (!qword_27C9147E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9147E0);
  }

  return result;
}

unint64_t sub_2144B1A80()
{
  result = qword_27C9147E8;
  if (!qword_27C9147E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9147E8);
  }

  return result;
}

unint64_t sub_2144B1AD4()
{
  result = qword_27C9147F8;
  if (!qword_27C9147F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9147F8);
  }

  return result;
}

uint64_t sub_2144B1B28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9041D0, &qword_2146F5CA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2144B1B98()
{
  result = qword_27C914800;
  if (!qword_27C914800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914800);
  }

  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_2144B1C30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 192))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 144);
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

uint64_t sub_2144B1C8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *(result + 144) = a2;
    }
  }

  return result;
}

unint64_t sub_2144B1DEC()
{
  result = qword_27C914808;
  if (!qword_27C914808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914808);
  }

  return result;
}

unint64_t sub_2144B1E44()
{
  result = qword_27C914810;
  if (!qword_27C914810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914810);
  }

  return result;
}

unint64_t sub_2144B1E9C()
{
  result = qword_27C914818;
  if (!qword_27C914818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914818);
  }

  return result;
}

uint64_t sub_2144B1EF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x800000021479B8A0 == a2;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021479B8C0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000021479B8E0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000021479B900 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000021479B920 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000021479B940 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021479B960 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021479B980 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021479B9A0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000021479B9C0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021479B9E0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000019 && 0x800000021479BA00 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x800000021479BA20 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x800000021479BA40 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021479BA60 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000021479BA80 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000021 && 0x800000021479BAA0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021479BAD0 == a2)
  {

    return 17;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

unint64_t sub_2144B2468()
{
  result = qword_27C914820;
  if (!qword_27C914820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914820);
  }

  return result;
}

uint64_t sub_2144B2510()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

uint64_t sub_2144B2590()
{
  v1 = v0 + *(type metadata accessor for IDSHomeKitInvitation(0) + 32);
  if (*(v1 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    result = *(v1 + 16);
    v3 = *(v1 + 24) & 1;
  }

  return result;
}

uint64_t sub_2144B262C()
{
  v1 = v0 + *(type metadata accessor for IDSHomeKitInvitation(0) + 48);
  if (*(v1 + 24) >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    sub_213FDCA18(v2, *(v1 + 24));
    return v2;
  }

  return result;
}

uint64_t sub_2144B26C4()
{
  v1 = v0 + *(type metadata accessor for IDSHomeKitInvitation(0) + 52);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  return result;
}

uint64_t sub_2144B2754()
{
  v1 = v0 + *(type metadata accessor for IDSHomeKitInvitation(0) + 64);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  return result;
}

uint64_t sub_2144B27E4()
{
  v1 = v0 + *(type metadata accessor for IDSHomeKitInvitation(0) + 68);
  if (*(v1 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    result = *(v1 + 16);
    v3 = *(v1 + 24) & 1;
  }

  return result;
}

uint64_t sub_2144B2860()
{
  v1 = v0 + *(type metadata accessor for IDSHomeKitInvitation(0) + 72);
  if (*(v1 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    result = *(v1 + 16);
    v3 = *(v1 + 24) & 1;
  }

  return result;
}

uint64_t sub_2144B28DC()
{
  v1 = v0 + *(type metadata accessor for IDSHomeKitInvitation(0) + 76);
  if (*(v1 + 24) >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    sub_213FDCA18(v2, *(v1 + 24));
    return v2;
  }

  return result;
}

uint64_t sub_2144B2974()
{
  if (*(v0 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    result = *(v0 + 16);
    v2 = *(v0 + 24) & 1;
  }

  return result;
}

uint64_t sub_2144B29E0()
{
  if (*(v0 + 57))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    result = *(v0 + 48);
    v2 = *(v0 + 56) & 1;
  }

  return result;
}

uint64_t sub_2144B2A4C()
{
  if (*(v0 + 89))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    result = *(v0 + 80);
    v2 = *(v0 + 88) & 1;
  }

  return result;
}

unint64_t sub_2144B2AEC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_214751550;
  *(v4 + 16) = sub_21447174C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142DFFF8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F30, &unk_2147319A0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214471750;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_2140428D0(inited, a1);
}

unint64_t sub_2144B2C30@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059908;
  v5[3] = 0;
  v5[4] = 128;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

unint64_t sub_2144B2E3C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_214751560;
  *(v8 + 16) = a1;
  *(v8 + 24) = v9;
  *(v7 + 32) = v8;
  v10 = sub_2142DFFF8(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F30, &unk_2147319A0);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = a2;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_2140428D0(inited, a3);
}

unint64_t sub_2144B2FB4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059908;
  v5[3] = 0;
  v5[4] = 520;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A571C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5724;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

uint64_t sub_2144B311C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2144B3174(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_i64[0];
  v8 = v1[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144B31DC@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v8;
  *(a1 + 26) = v3;
}

__n128 sub_2144B3244(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 32));
  v8 = v7->n128_u64[1];

  result = *a1;
  *v7 = *a1;
  v7[1].n128_u64[0] = v3;
  v7[1].n128_u8[8] = v4;
  v7[1].n128_u8[9] = v5;
  v7[1].n128_u8[10] = v6;
  return result;
}

uint64_t sub_2144B32B4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_21404F7E0(v6, v7);
}

__n128 sub_2144B3320(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 48));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_i64[0];
  v9 = v6[1].n128_u64[1];

  sub_214032564(v8, v9);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144B3398@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 52));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_2144B3404(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 52));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_i64[0];
  v9 = v6[1].n128_i64[1];

  sub_213FDC6D0(v8, v9);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144B347C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 64));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_2144B34E8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 64));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_i64[0];
  v9 = v6[1].n128_i64[1];

  sub_213FDC6D0(v8, v9);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144B3560@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v8;
  *(a1 + 26) = v3;
}

__n128 sub_2144B35C8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 68));
  v8 = v7->n128_u64[1];

  result = *a1;
  *v7 = *a1;
  v7[1].n128_u64[0] = v3;
  v7[1].n128_u8[8] = v4;
  v7[1].n128_u8[9] = v5;
  v7[1].n128_u8[10] = v6;
  return result;
}

uint64_t sub_2144B3638@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 72));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v8;
  *(a1 + 26) = v3;
}

__n128 sub_2144B36A0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 72));
  v8 = v7->n128_u64[1];

  result = *a1;
  *v7 = *a1;
  v7[1].n128_u64[0] = v3;
  v7[1].n128_u8[8] = v4;
  v7[1].n128_u8[9] = v5;
  v7[1].n128_u8[10] = v6;
  return result;
}

uint64_t sub_2144B3710@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 76));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_21404F7E0(v6, v7);
}

__n128 sub_2144B377C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 76));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_i64[0];
  v9 = v6[1].n128_u64[1];

  sub_214032564(v8, v9);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

unint64_t sub_2144B37F4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_214751570;
  *(v4 + 16) = sub_21447174C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142DFFF8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F30, &unk_2147319A0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403255C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_2140428D0(inited, a1);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2146E9BF0;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_2146E9BF0;
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_214751570;
  *(v11 + 16) = sub_21447174C;
  *(v11 + 24) = v12;
  *(v10 + 32) = v11;
  v13 = sub_2142DFFF8(v10);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v14 + 16) = sub_214471750;
  *(v14 + 24) = v15;
  *(v9 + 32) = v14;
  sub_2140428D0(v9, a1 + 32);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_2146E9BF0;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_2146E9BF0;
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_214751580;
  *(v18 + 16) = sub_21447174C;
  *(v18 + 24) = v19;
  *(v17 + 32) = v18;
  v20 = sub_2142DFFF8(v17);
  v21 = swift_allocObject();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v21 + 16) = sub_214471750;
  *(v21 + 24) = v22;
  *(v16 + 32) = v21;
  return sub_2140428D0(v16, a1 + 64);
}

uint64_t sub_2144B3B00@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  v6 = *(v1 + 26);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_2144B3B2C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = v1->n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  v1[1].n128_u8[9] = v5;
  v1[1].n128_u8[10] = v6;
  return result;
}

uint64_t sub_2144B3B8C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 57);
  v6 = *(v1 + 58);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_2144B3BB8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = v1[2].n128_u64[1];

  result = *a1;
  v1[2] = *a1;
  v1[3].n128_u64[0] = v3;
  v1[3].n128_u8[8] = v4;
  v1[3].n128_u8[9] = v5;
  v1[3].n128_u8[10] = v6;
  return result;
}

uint64_t sub_2144B3C18@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 89);
  v6 = *(v1 + 90);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_2144B3C44(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = v1[4].n128_u64[1];

  result = *a1;
  v1[4] = *a1;
  v1[5].n128_u64[0] = v3;
  v1[5].n128_u8[8] = v4;
  v1[5].n128_u8[9] = v5;
  v1[5].n128_u8[10] = v6;
  return result;
}

unint64_t sub_2144B3CA4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040D8, &qword_2146EAA28);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_213FDC8D0;
  v4[3] = 0;
  v4[4] = 1;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_2140597F4;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2147494C0;
  *(v5 + 16) = sub_214032554;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2144B95B8;
  *(v7 + 24) = v5;
  *(inited + 40) = v7;
  return sub_214044AC0(inited, a1);
}

BOOL sub_2144B3E10(uint64_t a1, char a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v6 = (a1 + 32);
  do
  {
    v7 = v5;
    if (!v5)
    {
      break;
    }

    v8 = *v6++;
    v14 = v8;
    v9 = *(a3 + 16);
    v10 = *(a3 + 24);
    v13 = a2;
    v11 = v9(&v14, &v13);
    v5 = v7 - 1;
  }

  while ((v11 & 1) != 0);
  return v7 == 0;
}

uint64_t sub_2144B3E8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v11 = *(v3 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 16), *(v3 + 24));

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2144B3FD0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214074090;
  }

  return result;
}

void (*sub_2144B40A8(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21407449C;
}

uint64_t sub_2144B41C0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(v3 + 32);

  return sub_2142F56E4(v4, v5);
}

__n128 sub_2144B4218(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 24);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  sub_2142F5584(*v4, *(v4 + 8));
  result = *a1;
  v9 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v9;
  *(v4 + 32) = v3;
  return result;
}

uint64_t sub_2144B42DC(char a1)
{
  result = type metadata accessor for IDSHomeKitInvitation(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_2144B4354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for IDSHomeKitInvitation(0);
  v5 = a1 + *(result + 32);
  if (*(v5 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v6 = *(v5 + 24);
    *a2 = *(v5 + 16);
    *(a2 + 8) = v6 & 1;
  }

  return result;
}

uint64_t (*sub_2144B4430(uint64_t a1))(uint64_t)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for IDSHomeKitInvitation(0) + 32);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  if (*(v4 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 24);
    *a1 = *(v4 + 16);
    *(a1 + 8) = v5 & 1;
    return sub_2144B95CC;
  }

  return result;
}

uint64_t sub_2144B44E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v8;
  *(a2 + 26) = v3;
}

uint64_t sub_2144B4550(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 26);
  v8 = a2 + *(type metadata accessor for IDSHomeKitInvitation(0) + 32);
  v9 = *(v8 + 8);

  *v8 = v3;
  *(v8 + 8) = v2;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 25) = v6;
  *(v8 + 26) = v7;
  return result;
}

void (*sub_2144B45D4(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for IDSHomeKitInvitation(0) + 32);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  v11 = *(v6 + 25);
  LOBYTE(v6) = *(v6 + 26);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v11;
  *(v4 + 26) = v6;

  return sub_2144B95D0;
}

uint64_t sub_2144B46AC(char a1)
{
  result = type metadata accessor for IDSHomeKitInvitation(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_2144B4724@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_2142F5800(v4);
}

uint64_t sub_2144B476C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 40));
  v5 = v4[1];
  result = sub_2142F56A0(*v4);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_2144B48D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 48);
  v4 = *(v3 + 24);
  if (v4 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v3 + 16);
    *a2 = v5;
    a2[1] = v4;

    return sub_213FDCA18(v5, v4);
  }

  return result;
}

uint64_t sub_2144B4970(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for IDSHomeKitInvitation(0) + 48);
  sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2144B4A38(uint64_t a1, unint64_t a2)
{
  v5 = v2 + *(type metadata accessor for IDSHomeKitInvitation(0) + 48);
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2144B4B18(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for IDSHomeKitInvitation(0) + 48);
  *(a1 + 24) = v3;
  v4 = v1 + v3;
  v5 = *(v4 + 24);
  if (v5 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v6 = *(v4 + 16);
    *a1 = v6;
    *(a1 + 8) = v5;
    sub_213FDCA18(v6, v5);
    return sub_2144B4BCC;
  }

  return result;
}

uint64_t sub_2144B4BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSHomeKitInvitation(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_21404F7E0(v6, v7);
}

uint64_t sub_2144B4C40(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for IDSHomeKitInvitation(0) + 48);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);

  sub_21404F7E0(v4, v5);

  result = sub_214032564(v9, v10);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}
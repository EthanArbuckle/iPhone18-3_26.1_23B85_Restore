uint64_t sub_1D6DDC45C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000657275;
  v3 = 0x74617265706D6574;
  v4 = a1;
  v5 = 0xED000065646F436ELL;
  if (a1 == 5)
  {
    v6 = 0x6F697469646E6F63;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (a1 != 5)
  {
    v5 = 0x80000001D73BACA0;
  }

  v7 = 0x80000001D73BAC60;
  if (a1 == 3)
  {
    v8 = 0xD000000000000014;
  }

  else
  {
    v8 = 0x6F697469646E6F63;
  }

  if (a1 != 3)
  {
    v7 = 0xE90000000000006ELL;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = 0x706D655468676968;
  v10 = 0xEF65727574617265;
  if (a1 != 1)
  {
    v9 = 0x65706D6554776F6CLL;
    v10 = 0xEE00657275746172;
  }

  if (!a1)
  {
    v9 = 0x74617265706D6574;
    v10 = 0xEB00000000657275;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEF65727574617265;
        if (v11 != 0x706D655468676968)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v2 = 0xEE00657275746172;
        if (v11 != 0x65706D6554776F6CLL)
        {
          goto LABEL_43;
        }
      }

      goto LABEL_40;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xED000065646F436ELL;
        if (v11 != 0x6F697469646E6F63)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v2 = 0x80000001D73BACA0;
        if (v11 != 0xD000000000000013)
        {
          goto LABEL_43;
        }
      }

      goto LABEL_40;
    }

    if (a2 == 3)
    {
      v2 = 0x80000001D73BAC60;
      if (v11 != 0xD000000000000014)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v3 = 0x6F697469646E6F63;
    v2 = 0xE90000000000006ELL;
  }

  if (v11 != v3)
  {
LABEL_43:
    v13 = sub_1D72646CC();
    goto LABEL_44;
  }

LABEL_40:
  if (v12 != v2)
  {
    goto LABEL_43;
  }

  v13 = 1;
LABEL_44:

  return v13 & 1;
}

uint64_t sub_1D6DDC6C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000657275;
  v3 = 0x74617265706D6574;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x65706D6554776F6CLL;
    }

    else
    {
      v5 = 0xD000000000000014;
    }

    if (v4 == 2)
    {
      v6 = 0xEE00657275746172;
    }

    else
    {
      v6 = 0x80000001D73BAC60;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x706D655468676968;
    }

    else
    {
      v5 = 0x74617265706D6574;
    }

    if (v4)
    {
      v6 = 0xEF65727574617265;
    }

    else
    {
      v6 = 0xEB00000000657275;
    }
  }

  v7 = 0x65706D6554776F6CLL;
  v8 = 0x80000001D73BAC60;
  if (a2 == 2)
  {
    v8 = 0xEE00657275746172;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (a2)
  {
    v3 = 0x706D655468676968;
    v2 = 0xEF65727574617265;
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
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DDC83C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000676E696461;
  v3 = 0x654C6F5465676170;
  v4 = a1;
  v5 = 0x654C6F5470616E73;
  v6 = 0xE800000000000000;
  if (a1 == 2)
  {
    v6 = 0xED0000676E696461;
  }

  else
  {
    v5 = 0x797469636F6C6576;
  }

  v7 = 0x65436F5465676170;
  v8 = 0xEC0000007265746ELL;
  if (!a1)
  {
    v7 = 0x654C6F5465676170;
    v8 = 0xED0000676E696461;
  }

  if (a1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0x654C6F5470616E73;
  v12 = 0xE800000000000000;
  if (a2 == 2)
  {
    v12 = 0xED0000676E696461;
  }

  else
  {
    v11 = 0x797469636F6C6576;
  }

  if (a2)
  {
    v3 = 0x65436F5465676170;
    v2 = 0xEC0000007265746ELL;
  }

  if (a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v11;
  }

  if (a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1D72646CC();
  }

  return v15 & 1;
}

uint64_t sub_1D6DDC990(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x656568536F6C736FLL;
    }

    else
    {
      v3 = 0xD000000000000011;
    }

    if (v2)
    {
      v4 = 0xE900000000000074;
    }

    else
    {
      v4 = 0x80000001D73BAA80;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x7465656853736D61;
  }

  else if (a1 == 3)
  {
    v3 = 0x50676E69646E616CLL;
    v4 = 0xEB00000000656761;
  }

  else
  {
    v4 = 0x80000001D73BAAC0;
    v3 = 0xD000000000000014;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x656568536F6C736FLL;
    }

    else
    {
      v7 = 0xD000000000000011;
    }

    if (a2)
    {
      v6 = 0xE900000000000074;
    }

    else
    {
      v6 = 0x80000001D73BAA80;
    }

    if (v3 != v7)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xE800000000000000;
    if (v3 != 0x7465656853736D61)
    {
LABEL_34:
      v8 = sub_1D72646CC();
      goto LABEL_35;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0x50676E69646E616CLL;
    }

    else
    {
      v5 = 0xD000000000000014;
    }

    if (a2 == 3)
    {
      v6 = 0xEB00000000656761;
    }

    else
    {
      v6 = 0x80000001D73BAAC0;
    }

    if (v3 != v5)
    {
      goto LABEL_34;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_34;
  }

  v8 = 1;
LABEL_35:

  return v8 & 1;
}

uint64_t sub_1D6DDCB4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x73676E69646E6962;
  if (a1 != 6)
  {
    v5 = 7105633;
    v4 = 0xE300000000000000;
  }

  v6 = 0xE800000000000000;
  v7 = 0x6574616C706D6574;
  if (a1 != 4)
  {
    v7 = 0x747865746E6F63;
    v6 = 0xE700000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x40736E6F6974706FLL;
  v9 = 0xEE0074756F79616CLL;
  if (a1 != 2)
  {
    v8 = 0x726F73727563;
    v9 = 0xE600000000000000;
  }

  v10 = 0x40736E6F6974706FLL;
  if (a1)
  {
    v3 = 0xEC000000646E6962;
  }

  else
  {
    v10 = 0x736E6F6974706FLL;
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
        v13 = 0xE800000000000000;
        if (v11 != 0x73676E69646E6962)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE300000000000000;
        if (v11 != 7105633)
        {
LABEL_45:
          v14 = sub_1D72646CC();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x6574616C706D6574)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x747865746E6F63)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEE0074756F79616CLL;
      if (v11 != 0x40736E6F6974706FLL)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x726F73727563)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEC000000646E6962;
    if (v11 != 0x40736E6F6974706FLL)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v11 != 0x736E6F6974706FLL)
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

uint64_t sub_1D6DDCDD4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736302;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x646E616D6D6F63;
    }

    else
    {
      v4 = 0x686374697773;
    }

    if (v3 == 2)
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
    if (a1)
    {
      v4 = 0x4C52556E65706FLL;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x646E616D6D6F63;
  if (a2 != 2)
  {
    v8 = 0x686374697773;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x4C52556E65706FLL;
    v6 = 0xE700000000000000;
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
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DDCF08(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0xE800000000000000;
    v10 = 0x64656C6261736964;
    if (a1 != 6)
    {
      v10 = 0x726574756F72;
      v9 = 0xE600000000000000;
    }

    v11 = 0x616C506F65646976;
    v12 = 0xEF79616C50726579;
    if (a1 != 4)
    {
      v11 = 0xD000000000000013;
      v12 = 0x80000001D73BA8E0;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xE700000000000000;
    v5 = 0x4C52556E65706FLL;
    if (a1 != 2)
    {
      v5 = 0x6574756F72;
      v4 = 0xE500000000000000;
    }

    v6 = 0x676E69646E6962;
    if (a1)
    {
      v3 = 0xE700000000000000;
    }

    else
    {
      v6 = 0x65746167656C6564;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE800000000000000;
        if (v7 != 0x64656C6261736964)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE600000000000000;
        if (v7 != 0x726574756F72)
        {
LABEL_47:
          v14 = sub_1D72646CC();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEF79616C50726579;
      if (v7 != 0x616C506F65646976)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0x80000001D73BA8E0;
      if (v7 != 0xD000000000000013)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE700000000000000;
      if (v7 != 0x4C52556E65706FLL)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xE500000000000000;
      if (v7 != 0x6574756F72)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE700000000000000;
    if (v7 != 0x676E69646E6962)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE800000000000000;
    if (v7 != 0x65746167656C6564)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_1D6DDD190(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C616373;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1701603700;
    }

    else
    {
      v4 = 0x69736E6972746E69;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE900000000000063;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1886351971;
    }

    else
    {
      v4 = 0x656C616373;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE400000000000000;
  v8 = 1701603700;
  if (a2 != 2)
  {
    v8 = 0x69736E6972746E69;
    v7 = 0xE900000000000063;
  }

  if (a2)
  {
    v2 = 1886351971;
    v6 = 0xE400000000000000;
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
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DDD2B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE600000000000000;
    v12 = 0xE600000000000000;
    v13 = 0x6D6F74746F62;
    if (a1 != 2)
    {
      v13 = 1952867692;
      v12 = 0xE400000000000000;
    }

    v14 = 7368564;
    if (a1)
    {
      v11 = 0xE300000000000000;
    }

    else
    {
      v14 = 0x7265746E6563;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x7468676952706F74;
    v5 = 0x654C6D6F74746F62;
    v6 = 0xEA00000000007466;
    if (a1 != 7)
    {
      v5 = 0x69526D6F74746F62;
      v6 = 0xEB00000000746867;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0xE500000000000000;
    v8 = 0x7468676972;
    if (a1 != 4)
    {
      v8 = 0x7466654C706F74;
      v7 = 0xE700000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE600000000000000;
        if (v9 != 0x6D6F74746F62)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE400000000000000;
        if (v9 != 1952867692)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE300000000000000;
      if (v9 != 7368564)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x7265746E6563)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE500000000000000;
      if (v9 != 0x7468676972)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x7466654C706F74)
      {
LABEL_52:
        v16 = sub_1D72646CC();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xE800000000000000;
    if (v9 != 0x7468676952706F74)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xEA00000000007466;
    if (v9 != 0x654C6D6F74746F62)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xEB00000000746867;
    if (v9 != 0x69526D6F74746F62)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_1D6DDD55C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6574756C6F736261;
    }

    else
    {
      v4 = 0x656E696C6E69;
    }

    if (v2)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x7465737361;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6E6F6974706FLL;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x79747265706F7270;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6574756C6F736261;
    }

    else
    {
      v9 = 0x656E696C6E69;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x6E6F6974706FLL;
    if (a2 != 3)
    {
      v6 = 0x79747265706F7270;
      v5 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x7465737361;
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
    v10 = sub_1D72646CC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1D6DDD6D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v8 = 0xE500000000000000;
    v9 = 0x646E656C62;
    if (a1 != 6)
    {
      v9 = 0xD000000000000011;
      v8 = 0x80000001D73BA880;
    }

    v10 = 0x6F697469646E6F63;
    v11 = 0xEB000000006C616ELL;
    if (a1 != 4)
    {
      v10 = 0x6563616C706572;
      v11 = 0xE700000000000000;
    }

    if (a1 <= 5u)
    {
      v6 = v10;
    }

    else
    {
      v6 = v9;
    }

    if (v2 <= 5)
    {
      v7 = v11;
    }

    else
    {
      v7 = v8;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E6769737361;
    if (a1 != 2)
    {
      v4 = 0x796669646F6DLL;
    }

    v5 = 0x6D694C6172747865;
    if (a1)
    {
      v3 = 0xEC00000064657469;
    }

    else
    {
      v5 = 0x646574696D696CLL;
    }

    if (a1 <= 1u)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 1)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0xE600000000000000;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v12 = 0xE500000000000000;
        if (v6 != 0x646E656C62)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v12 = 0x80000001D73BA880;
        if (v6 != 0xD000000000000011)
        {
LABEL_47:
          v13 = sub_1D72646CC();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEB000000006C616ELL;
      if (v6 != 0x6F697469646E6F63)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v6 != 0x6563616C706572)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    v12 = 0xE600000000000000;
    if (a2 == 2)
    {
      if (v6 != 0x6E6769737361)
      {
        goto LABEL_47;
      }
    }

    else if (v6 != 0x796669646F6DLL)
    {
      goto LABEL_47;
    }
  }

  else if (a2)
  {
    v12 = 0xEC00000064657469;
    if (v6 != 0x6D694C6172747865)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v6 != 0x646574696D696CLL)
    {
      goto LABEL_47;
    }
  }

  if (v7 != v12)
  {
    goto LABEL_47;
  }

  v13 = 1;
LABEL_48:

  return v13 & 1;
}

uint64_t sub_1D6DDD958(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006B61657274;
  v3 = 0x53747365676E6F6CLL;
  v4 = a1;
  if (a1 <= 4u)
  {
    v9 = 0x5373656C7A7A7570;
    v10 = 0xED00006465766C6FLL;
    v11 = 0x5374636566726570;
    v12 = 0xED00006465766C6FLL;
    if (a1 != 3)
    {
      v11 = 0x74615265766C6F73;
      v12 = 0xE900000000000065;
    }

    if (a1 != 2)
    {
      v9 = v11;
      v10 = v12;
    }

    v13 = 0x53746E6572727563;
    if (!a1)
    {
      v13 = 0x53747365676E6F6CLL;
    }

    if (a1 <= 1u)
    {
      v7 = v13;
    }

    else
    {
      v7 = v9;
    }

    if (v4 <= 1)
    {
      v8 = 0xED00006B61657274;
    }

    else
    {
      v8 = v10;
    }
  }

  else if (a1 > 7u)
  {
    v14 = 0xD000000000000015;
    if (a1 == 9)
    {
      v14 = 0x53646570756F7267;
      v15 = 0xEC00000073746174;
    }

    else
    {
      v15 = 0x80000001D73B7480;
    }

    if (a1 == 8)
    {
      v7 = 0xD00000000000001DLL;
    }

    else
    {
      v7 = v14;
    }

    if (v4 == 8)
    {
      v8 = 0x80000001D73B7450;
    }

    else
    {
      v8 = v15;
    }
  }

  else
  {
    v5 = 0xD00000000000001CLL;
    v6 = 0x80000001D73B7410;
    if (a1 != 6)
    {
      v5 = 0xD00000000000001DLL;
      v6 = 0x80000001D73B7430;
    }

    if (a1 == 5)
    {
      v7 = 0xD00000000000001CLL;
    }

    else
    {
      v7 = v5;
    }

    if (v4 == 5)
    {
      v8 = 0x80000001D73B73F0;
    }

    else
    {
      v8 = v6;
    }
  }

  if (a2 > 4u)
  {
    if (a2 > 7u)
    {
      if (a2 != 8)
      {
        if (a2 == 9)
        {
          v2 = 0xEC00000073746174;
          if (v7 != 0x53646570756F7267)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v2 = 0x80000001D73B7480;
          if (v7 != 0xD000000000000015)
          {
            goto LABEL_63;
          }
        }

        goto LABEL_60;
      }

      v18 = "averageScoreByDifficultyLevel";
    }

    else
    {
      if (a2 == 5)
      {
        v16 = "fastestTimeByDifficultyLevel";
LABEL_52:
        v2 = (v16 - 32) | 0x8000000000000000;
        if (v7 != 0xD00000000000001CLL)
        {
          goto LABEL_63;
        }

        goto LABEL_60;
      }

      if (a2 == 6)
      {
        v16 = "averageTimeByDifficultyLevel";
        goto LABEL_52;
      }

      v18 = "highestScoreByDifficultyLevel";
    }

    v2 = (v18 - 32) | 0x8000000000000000;
    v3 = 0xD00000000000001DLL;
    goto LABEL_59;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      if (v7 != 0x53746E6572727563)
      {
        goto LABEL_63;
      }

      goto LABEL_60;
    }

LABEL_59:
    if (v7 != v3)
    {
LABEL_63:
      v19 = sub_1D72646CC();
      goto LABEL_64;
    }

    goto LABEL_60;
  }

  if (a2 == 2)
  {
    v17 = 0x5373656C7A7A7570;
  }

  else
  {
    if (a2 != 3)
    {
      v2 = 0xE900000000000065;
      if (v7 != 0x74615265766C6F73)
      {
        goto LABEL_63;
      }

      goto LABEL_60;
    }

    v17 = 0x5374636566726570;
  }

  v2 = 0xED00006465766C6FLL;
  if (v7 != v17)
  {
    goto LABEL_63;
  }

LABEL_60:
  if (v8 != v2)
  {
    goto LABEL_63;
  }

  v19 = 1;
LABEL_64:

  return v19 & 1;
}

uint64_t sub_1D6DDDCCC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000676E6970;
  v3 = 0x7061725764726F77;
  v4 = a1;
  v5 = 0xEC00000064616548;
  v6 = 0xEC0000006C696154;
  if (a1 != 4)
  {
    v6 = 0xEE00656C6464694DLL;
  }

  if (a1 != 3)
  {
    v5 = v6;
  }

  v7 = 0xD000000000000011;
  v8 = 0x80000001D73BB9F0;
  if (a1 != 1)
  {
    v7 = 1885957219;
    v8 = 0xE400000000000000;
  }

  if (!a1)
  {
    v7 = 0x7061725764726F77;
    v8 = 0xEC000000676E6970;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x657461636E757274;
  }

  if (v4 <= 2)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 1684104520;
    }

    else
    {
      if (a2 != 4)
      {
        v2 = 0xEE00656C6464694DLL;
        if (v9 != 0x657461636E757274)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v11 = 1818845524;
    }

    v2 = v11 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v9 != 0x657461636E757274)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x80000001D73BB9F0;
      if (v9 != 0xD000000000000011)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    v2 = 0xE400000000000000;
    v3 = 1885957219;
  }

  if (v9 != v3)
  {
LABEL_31:
    v12 = sub_1D72646CC();
    goto LABEL_32;
  }

LABEL_28:
  if (v10 != v2)
  {
    goto LABEL_31;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_1D6DDDEA0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7468676972;
    }

    else
    {
      v3 = 1952867692;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x7265746E6563;
  }

  else if (a1 == 3)
  {
    v3 = 0x656966697473756ALL;
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x6C61727574616ELL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7468676972;
    }

    else
    {
      v9 = 1952867692;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x656966697473756ALL;
    v6 = 0xE900000000000064;
    if (a2 != 3)
    {
      v5 = 0x6C61727574616ELL;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x7265746E6563;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_1D72646CC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1D6DDE01C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "Access-Control-Allow-Origin";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "thumbnailBackgroundColor";
      v4 = 0xD000000000000012;
    }

    else
    {
      v5 = "thumbnailTextColor";
      v4 = 0xD000000000000014;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000018;
    }

    else
    {
      v4 = 0xD000000000000015;
    }

    if (v3)
    {
      v5 = "thumbnailPrimaryColor";
    }

    else
    {
      v5 = "Access-Control-Allow-Origin";
    }
  }

  if (a2 > 1u)
  {
    v2 = "thumbnailBackgroundColor";
    v6 = "thumbnailTextColor";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000012;
    }

    else
    {
      v8 = 0xD000000000000014;
    }
  }

  else
  {
    v6 = "thumbnailPrimaryColor";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000018;
    }

    else
    {
      v8 = 0xD000000000000015;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D72646CC();
  }

  return v10 & 1;
}

uint64_t sub_1D6DDE148(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006E6FLL;
  v3 = 0x6974616D6F747561;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0xE500000000000000;
    v14 = 0x656C746974;
    if (a1 != 2)
    {
      v14 = 0x63784574726F6873;
      v13 = 0xEC00000074707265;
    }

    v15 = 0x696669746E656469;
    v16 = 0xEA00000000007265;
    if (!a1)
    {
      v15 = 0x6974616D6F747561;
      v16 = 0xEA00000000006E6FLL;
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
    v5 = 0x656873696C627570;
    v6 = 0xED0000656D614E72;
    v7 = 0xE800000000000000;
    v8 = 0x65676175676E616CLL;
    if (a1 != 7)
    {
      v8 = 0x446873696C627570;
      v7 = 0xEB00000000657461;
    }

    if (a1 != 6)
    {
      v5 = v8;
      v6 = v7;
    }

    v9 = 0x6D69546C61746F74;
    v10 = 0xE900000000000065;
    if (a1 != 4)
    {
      v9 = 0x73726F68747561;
      v10 = 0xE700000000000000;
    }

    if (a1 <= 5u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 5)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE500000000000000;
        if (v11 != 0x656C746974)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xEC00000074707265;
        if (v11 != 0x63784574726F6873)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2)
    {
      v2 = 0xEA00000000007265;
      if (v11 != 0x696669746E656469)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0xE900000000000065;
        if (v11 != 0x6D69546C61746F74)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x73726F68747561)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v2 = 0xED0000656D614E72;
      if (v11 != 0x656873696C627570)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x65676175676E616CLL)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v3 = 0x446873696C627570;
    v2 = 0xEB00000000657461;
  }

  if (v11 != v3)
  {
LABEL_49:
    v17 = sub_1D72646CC();
    goto LABEL_50;
  }

LABEL_46:
  if (v12 != v2)
  {
    goto LABEL_49;
  }

  v17 = 1;
LABEL_50:

  return v17 & 1;
}

uint64_t sub_1D6DDE430(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x7365636341736168;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0x646961507369;
    }

    if (v4 == 2)
    {
      v6 = 0x80000001D73BA330;
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
      v5 = 0x626D756854736168;
    }

    else
    {
      v5 = 0x7365636341736168;
    }

    if (v4)
    {
      v6 = 0xEC0000006C69616ELL;
    }

    else
    {
      v6 = 0xE900000000000073;
    }
  }

  v7 = 0xD000000000000010;
  v8 = 0x80000001D73BA330;
  if (a2 != 2)
  {
    v7 = 0x646961507369;
    v8 = 0xE600000000000000;
  }

  if (a2)
  {
    v3 = 0x626D756854736168;
    v2 = 0xEC0000006C69616ELL;
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
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DDE57C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7453656C7A7A7570;
    }

    else
    {
      v3 = 0x7250656C7A7A7570;
    }

    if (v2)
    {
      v4 = 0xEB00000000657461;
    }

    else
    {
      v4 = 0xEE0073736572676FLL;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6152656C7A7A7570;
    v4 = 0xEF65746174536B6ELL;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2 == 3)
    {
      v4 = 0x80000001D73BA740;
    }

    else
    {
      v4 = 0x80000001D73BA760;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x7453656C7A7A7570;
    }

    else
    {
      v7 = 0x7250656C7A7A7570;
    }

    if (a2)
    {
      v6 = 0xEB00000000657461;
    }

    else
    {
      v6 = 0xEE0073736572676FLL;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xEF65746174536B6ELL;
    if (v3 != 0x6152656C7A7A7570)
    {
LABEL_37:
      v8 = sub_1D72646CC();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (a2 == 3)
    {
      v6 = 0x80000001D73BA740;
    }

    else
    {
      v6 = 0x80000001D73BA760;
    }

    if (v3 != v5)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_37;
  }

  v8 = 1;
LABEL_38:

  return v8 & 1;
}

uint64_t sub_1D6DDE758(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0x654C6D6F74746F62;
  v5 = 0xEA00000000007466;
  if (a1 != 6)
  {
    v4 = 0x69526D6F74746F62;
    v5 = 0xEB00000000746867;
  }

  v6 = 0xE700000000000000;
  v7 = 0x7466654C706F74;
  if (a1 != 4)
  {
    v7 = 0x7468676952706F74;
    v6 = 0xE800000000000000;
  }

  if (a1 <= 5u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE400000000000000;
  v9 = 1952867692;
  if (a1 != 2)
  {
    v9 = 0x7468676972;
    v8 = 0xE500000000000000;
  }

  v10 = 0x6D6F74746F62;
  if (a1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v10 = 7368564;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  else
  {
    v9 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v4;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEA00000000007466;
        if (v11 != 0x654C6D6F74746F62)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xEB00000000746867;
        if (v11 != 0x69526D6F74746F62)
        {
LABEL_45:
          v14 = sub_1D72646CC();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x7466654C706F74)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x7468676952706F74)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE400000000000000;
      if (v11 != 1952867692)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x7468676972)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE600000000000000;
    if (v11 != 0x6D6F74746F62)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE300000000000000;
    if (v11 != 7368564)
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

uint64_t sub_1D6DDE9C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x70756F7267;
    }

    else
    {
      v4 = 1835365481;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x686374697773;
  }

  else
  {
    v3 = 0xE700000000000000;
    if (a1 == 3)
    {
      v4 = 0x646E616D6D6F63;
    }

    else
    {
      v4 = 0x676E69646E6962;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x70756F7267;
    }

    else
    {
      v8 = 1835365481;
    }

    if (a2)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x646E616D6D6F63;
    if (a2 != 3)
    {
      v5 = 0x676E69646E6962;
    }

    if (a2 == 2)
    {
      v6 = 0x686374697773;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    if (v4 != v6)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v7)
  {
LABEL_33:
    v9 = sub_1D72646CC();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

uint64_t sub_1D6DDEB30(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736302;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1751607656;
    }

    else
    {
      v4 = 0x756F72636964756CLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE900000000000073;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 7827308;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE400000000000000;
  v8 = 1751607656;
  if (a2 != 2)
  {
    v8 = 0x756F72636964756CLL;
    v7 = 0xE900000000000073;
  }

  if (a2)
  {
    v2 = 7827308;
    v6 = 0xE300000000000000;
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
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DDEC54(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6465626D45626577;
  if (a1 != 5)
  {
    v5 = 1684366694;
    v4 = 0xE400000000000000;
  }

  v6 = 0xE800000000000000;
  v7 = 0x656E696C64616568;
  if (a1 != 3)
  {
    v7 = 0x6575737369;
    v6 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x72656874616577;
  if (a1 != 1)
  {
    v8 = 0x6C6C6177796170;
  }

  if (a1)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v8 = 6775156;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v11 = 0xE700000000000000;
      if (a2 == 1)
      {
        if (v9 != 0x72656874616577)
        {
          goto LABEL_39;
        }
      }

      else if (v9 != 0x6C6C6177796170)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE300000000000000;
      if (v9 != 6775156)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE800000000000000;
      if (v9 != 0x6465626D45626577)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE400000000000000;
      if (v9 != 1684366694)
      {
LABEL_39:
        v12 = sub_1D72646CC();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v11 = 0xE800000000000000;
    if (v9 != 0x656E696C64616568)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v11 = 0xE500000000000000;
    if (v9 != 0x6575737369)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_1D6DDEE60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE800000000000000;
    v12 = 0xE300000000000000;
    v13 = 6775156;
    if (a1 != 2)
    {
      v13 = 0x6465626D45626577;
      v12 = 0xE800000000000000;
    }

    v14 = 0x6575737369;
    if (a1)
    {
      v11 = 0xE500000000000000;
    }

    else
    {
      v14 = 0x656E696C64616568;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x7453656C7A7A7570;
    v4 = 0xEF63697473697461;
    v5 = 0xE500000000000000;
    v6 = 0x726F727265;
    if (a1 != 7)
    {
      v6 = 0x657069636572;
      v5 = 0xE600000000000000;
    }

    if (a1 != 6)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0xE600000000000000;
    v8 = 0x656C7A7A7570;
    if (a1 != 4)
    {
      v8 = 0x7954656C7A7A7570;
      v7 = 0xEA00000000006570;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
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
        v15 = 0xE300000000000000;
        if (v9 != 6775156)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE800000000000000;
        if (v9 != 0x6465626D45626577)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE500000000000000;
      if (v9 != 0x6575737369)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE800000000000000;
      if (v9 != 0x656E696C64616568)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x656C7A7A7570)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xEA00000000006570;
      if (v9 != 0x7954656C7A7A7570)
      {
LABEL_52:
        v16 = sub_1D72646CC();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xEF63697473697461;
    if (v9 != 0x7453656C7A7A7570)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xE500000000000000;
    if (v9 != 0x726F727265)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xE600000000000000;
    if (v9 != 0x657069636572)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_1D6DDF110(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1920298082;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7373616C67;
    }

    else
    {
      v4 = 0x6F72477373616C67;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xEA00000000007075;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7262695672756C62;
    }

    else
    {
      v4 = 1920298082;
    }

    if (v3)
    {
      v5 = 0xEC00000079636E61;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x7373616C67;
  if (a2 != 2)
  {
    v8 = 0x6F72477373616C67;
    v7 = 0xEA00000000007075;
  }

  if (a2)
  {
    v2 = 0x7262695672756C62;
    v6 = 0xEC00000079636E61;
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
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DDF25C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6C79745374786574;
    }

    else
    {
      v4 = 1953394534;
    }

    if (v2)
    {
      v3 = 0xE900000000000065;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1702521203;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x746867696577;
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x656C616373;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6C79745374786574;
    }

    else
    {
      v9 = 1953394534;
    }

    if (a2)
    {
      v8 = 0xE900000000000065;
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
    v5 = 0xE600000000000000;
    v6 = 0x746867696577;
    if (a2 != 3)
    {
      v6 = 0x656C616373;
      v5 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1702521203;
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
    v10 = sub_1D72646CC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1D6DDF3C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00726F6C6F4374;
  v3 = 0x7865547265766F63;
  v4 = a1;
  v5 = 0x80000001D73BA410;
  if (a1 == 4)
  {
    v6 = 0x7865547265766F63;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (a1 == 4)
  {
    v5 = 0xEE00726F6C6F4374;
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000014;
    v7 = 0x80000001D73BA3E0;
  }

  else
  {
    v7 = v5;
  }

  v8 = 0x80000001D73BA380;
  v9 = 0x80000001D73BA3A0;
  v10 = 0xD000000000000018;
  if (v4 != 1)
  {
    v10 = 0xD00000000000001DLL;
    v9 = 0x80000001D73BA3C0;
  }

  if (v4)
  {
    v8 = v9;
  }

  else
  {
    v10 = 0xD000000000000011;
  }

  if (v4 <= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v8;
  }

  else
  {
    v12 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x80000001D73BA3E0;
      v3 = 0xD000000000000014;
    }

    else if (a2 != 4)
    {
      v2 = 0x80000001D73BA410;
      if (v11 != 0xD000000000000010)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    if (v11 != v3)
    {
LABEL_36:
      v13 = sub_1D72646CC();
      goto LABEL_37;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x80000001D73BA3A0;
      if (v11 != 0xD000000000000018)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v2 = 0x80000001D73BA3C0;
      if (v11 != 0xD00000000000001DLL)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    v2 = 0x80000001D73BA380;
    if (v11 != 0xD000000000000011)
    {
      goto LABEL_36;
    }
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

uint64_t sub_1D6DDF570(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x696669746E656469;
  v3 = 0xEA00000000007265;
  v4 = a1;
  v5 = 0xE800000000000000;
  v6 = 0x65676175676E616CLL;
  if (a1 != 5)
  {
    v6 = 0x6974616D6F747561;
    v5 = 0xEA00000000006E6FLL;
  }

  v7 = 0xD000000000000010;
  v8 = 0x80000001D73BA360;
  if (a1 != 3)
  {
    v7 = 0x656873696C627570;
    v8 = 0xED0000656D614E72;
  }

  if (a1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE500000000000000;
  v10 = 0x656C746974;
  if (a1 != 1)
  {
    v10 = 0x7461447265766F63;
    v9 = 0xE900000000000065;
  }

  if (!a1)
  {
    v10 = 0x696669746E656469;
    v9 = 0xEA00000000007265;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = 0xE500000000000000;
        if (v11 != 0x656C746974)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v3 = 0xE900000000000065;
        if (v11 != 0x7461447265766F63)
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
        v3 = 0xE800000000000000;
        if (v11 != 0x65676175676E616CLL)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v3 = 0xEA00000000006E6FLL;
        if (v11 != 0x6974616D6F747561)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v3 = 0x80000001D73BA360;
      if (v11 != 0xD000000000000010)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v2 = 0x656873696C627570;
    v3 = 0xED0000656D614E72;
  }

  if (v11 != v2)
  {
LABEL_36:
    v13 = sub_1D72646CC();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v3)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_1D6DDF7A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x646961507369;
    }

    else
    {
      v3 = 0x6E65727275437369;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE900000000000074;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x656C646E75427369;
    v4 = 0xEC00000064696150;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000001D73BA330;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x74666172447369;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x646961507369;
    }

    else
    {
      v6 = 0x6E65727275437369;
    }

    if (a2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE900000000000074;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEC00000064696150;
    if (v3 != 0x656C646E75427369)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000001D73BA330;
    if (v3 != 0xD000000000000010)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    if (v3 != 0x74666172447369)
    {
LABEL_31:
      v7 = sub_1D72646CC();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_1D6DDF954(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE300000000000000;
  v5 = 6775156;
  v6 = 0xE400000000000000;
  v7 = 1684366694;
  if (a1 != 4)
  {
    v7 = 0x7463655364656566;
    v6 = 0xEB000000006E6F69;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x656E696C64616568;
  if (a1 != 1)
  {
    v9 = 0x6575737369;
    v8 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x656C7A7A7570;
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
      v12 = 0xE300000000000000;
      if (v10 != 6775156)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1684366694)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEB000000006E6F69;
      if (v10 != 0x7463655364656566)
      {
LABEL_34:
        v13 = sub_1D72646CC();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x656E696C64616568)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6575737369)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x656C7A7A7570)
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

uint64_t sub_1D6DDFB20(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x72656874616577;
    }

    else
    {
      v3 = 6775156;
    }

    if (v2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0xE400000000000000;
    v3 = 1684366694;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x7463655364656566;
      v4 = 7237481;
    }

    else
    {
      v3 = 0x76457374726F7073;
      v4 = 7630437;
    }

    v5 = v4 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v10 = 0x72656874616577;
    }

    else
    {
      v10 = 6775156;
    }

    if (a2)
    {
      v9 = 0xE700000000000000;
    }

    else
    {
      v9 = 0xE300000000000000;
    }

    if (v3 != v10)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v6 = 0x7463655364656566;
    v7 = 0xEB000000006E6F69;
    if (a2 != 3)
    {
      v6 = 0x76457374726F7073;
      v7 = 0xEB00000000746E65;
    }

    if (a2 == 2)
    {
      v8 = 1684366694;
    }

    else
    {
      v8 = v6;
    }

    if (a2 == 2)
    {
      v9 = 0xE400000000000000;
    }

    else
    {
      v9 = v7;
    }

    if (v3 != v8)
    {
      goto LABEL_34;
    }
  }

  if (v5 != v9)
  {
LABEL_34:
    v11 = sub_1D72646CC();
    goto LABEL_35;
  }

  v11 = 1;
LABEL_35:

  return v11 & 1;
}

uint64_t sub_1D6DDFCB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x76457374726F7073;
  v5 = 0xEB00000000746E65;
  if (a1 != 6)
  {
    v4 = 0x657069636572;
    v5 = 0xE600000000000000;
  }

  v6 = 0xE400000000000000;
  v7 = 1684366694;
  if (a1 != 4)
  {
    v7 = 0x7463655364656566;
    v6 = 0xEB000000006E6F69;
  }

  if (a1 <= 5u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE500000000000000;
  v9 = 0x6575737369;
  if (a1 != 2)
  {
    v9 = 0x72656874616577;
    v8 = 0xE700000000000000;
  }

  v10 = 6775156;
  if (a1)
  {
    v3 = 0xE300000000000000;
  }

  else
  {
    v10 = 0x656E696C64616568;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  else
  {
    v9 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v4;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x6575737369)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v11 != 0x72656874616577)
        {
          goto LABEL_45;
        }
      }
    }

    else if (a2)
    {
      v13 = 0xE300000000000000;
      if (v11 != 6775156)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x656E696C64616568)
      {
        goto LABEL_45;
      }
    }

    goto LABEL_43;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v13 = 0xE400000000000000;
      if (v11 != 1684366694)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v14 = 0x7463655364656566;
    v15 = 7237481;
LABEL_38:
    v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v11 != v14)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (a2 == 6)
  {
    v14 = 0x76457374726F7073;
    v15 = 7630437;
    goto LABEL_38;
  }

  v13 = 0xE600000000000000;
  if (v11 != 0x657069636572)
  {
LABEL_45:
    v16 = sub_1D72646CC();
    goto LABEL_46;
  }

LABEL_43:
  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v16 = 1;
LABEL_46:

  return v16 & 1;
}

uint64_t sub_1D6DDFF0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0x7463655364656566;
  v5 = 0xEB000000006E6F69;
  if (a1 != 5)
  {
    v4 = 0x76457374726F7073;
    v5 = 0xEB00000000746E65;
  }

  v6 = 0x7954656C7A7A7570;
  v7 = 0xEA00000000006570;
  if (a1 != 3)
  {
    v6 = 1684366694;
    v7 = 0xE400000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE800000000000000;
  v9 = 0x656E696C64616568;
  if (a1 != 1)
  {
    v9 = 6775156;
    v8 = 0xE300000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6575737369;
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

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x656E696C64616568)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE300000000000000;
        if (v10 != 6775156)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6575737369)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v13 = 0x7463655364656566;
      v14 = 7237481;
    }

    else
    {
      v13 = 0x76457374726F7073;
      v14 = 7630437;
    }

    v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v10 != v13)
    {
      goto LABEL_39;
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEA00000000006570;
    if (v10 != 0x7954656C7A7A7570)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1684366694)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
LABEL_39:
    v15 = sub_1D72646CC();
    goto LABEL_40;
  }

  v15 = 1;
LABEL_40:

  return v15 & 1;
}

uint64_t sub_1D6DE0134(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 6775156;
    }

    else
    {
      v4 = 0x656E696C64616568;
    }

    if (v2)
    {
      v3 = 0xE300000000000000;
    }

    else
    {
      v3 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x6575737369;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1684366694;
  }

  else
  {
    v4 = 0x7463655364656566;
    v3 = 0xEB000000006E6F69;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 6775156;
    }

    else
    {
      v9 = 0x656E696C64616568;
    }

    if (a2)
    {
      v8 = 0xE300000000000000;
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
    v5 = 0xE400000000000000;
    v6 = 1684366694;
    if (a2 != 3)
    {
      v6 = 0x7463655364656566;
      v5 = 0xEB000000006E6F69;
    }

    if (a2 == 2)
    {
      v7 = 0x6575737369;
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
    v10 = sub_1D72646CC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1D6DE02A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x7463655364656566;
    }

    else
    {
      v4 = 1684366694;
    }

    if (v2)
    {
      v3 = 0xEB000000006E6F69;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE800000000000000;
    v4 = 0x656E696C64616568;
  }

  else if (a1 == 3)
  {
    v3 = 0xE300000000000000;
    v4 = 6775156;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x6465626D45626577;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7463655364656566;
    }

    else
    {
      v9 = 1684366694;
    }

    if (a2)
    {
      v8 = 0xEB000000006E6F69;
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
    v5 = 0xE300000000000000;
    v6 = 6775156;
    if (a2 != 3)
    {
      v6 = 0x6465626D45626577;
      v5 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x656E696C64616568;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
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
    v10 = sub_1D72646CC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1D6DE042C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x73656D656874;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x69747265706F7270;
    }

    else
    {
      v4 = 0x726F7463656C6573;
    }

    if (v3 == 2)
    {
      v5 = 0xEA00000000007365;
    }

    else
    {
      v5 = 0xE900000000000073;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x3273656D656874;
    }

    else
    {
      v4 = 0x73656D656874;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0x69747265706F7270;
  v8 = 0xEA00000000007365;
  if (a2 != 2)
  {
    v7 = 0x726F7463656C6573;
    v8 = 0xE900000000000073;
  }

  if (a2)
  {
    v2 = 0x3273656D656874;
    v6 = 0xE700000000000000;
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
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DE057C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x7954656C7A7A7570;
  v5 = 0xEA00000000006570;
  if (a1 != 6)
  {
    v4 = 0x657069636572;
    v5 = 0xE600000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x70756F7267;
  if (a1 != 4)
  {
    v7 = 0x76457374726F7073;
    v6 = 0xEB00000000746E65;
  }

  if (a1 <= 5u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE500000000000000;
  v9 = 0x6575737369;
  if (a1 != 2)
  {
    v9 = 0x6E6F6974706FLL;
    v8 = 0xE600000000000000;
  }

  v10 = 6775156;
  if (a1)
  {
    v3 = 0xE300000000000000;
  }

  else
  {
    v10 = 0x656E696C64616568;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  else
  {
    v9 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v4;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEA00000000006570;
        if (v11 != 0x7954656C7A7A7570)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE600000000000000;
        if (v11 != 0x657069636572)
        {
LABEL_45:
          v14 = sub_1D72646CC();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x70756F7267)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xEB00000000746E65;
      if (v11 != 0x76457374726F7073)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x6575737369)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x6E6F6974706FLL)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE300000000000000;
    if (v11 != 6775156)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE800000000000000;
    if (v11 != 0x656E696C64616568)
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

uint64_t sub_1D6DE07DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE0065636E657265;
  v3 = 0x6665725072657375;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x737569736C6563;
    }

    else
    {
      v5 = 0x6665725072657375;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEE0065636E657265;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x65686E6572686166;
    v6 = 0xEA00000000007469;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6965686E65726166;
    }

    else
    {
      v5 = 0x6E69766C656BLL;
    }

    if (v4 == 3)
    {
      v6 = 0xE900000000000074;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  v7 = 0x65686E6572686166;
  v8 = 0xEA00000000007469;
  v9 = 0x6965686E65726166;
  v10 = 0xE900000000000074;
  if (a2 != 3)
  {
    v9 = 0x6E69766C656BLL;
    v10 = 0xE600000000000000;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v8 = v10;
  }

  if (a2)
  {
    v3 = 0x737569736C6563;
    v2 = 0xE700000000000000;
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
    v13 = sub_1D72646CC();
  }

  return v13 & 1;
}

uint64_t sub_1D6DE0970(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6465626D45626577;
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 0x6575737369;
    if (a1 != 2)
    {
      v12 = 0x70756F7267;
    }

    v13 = 0x656E696C64616568;
    if (!a1)
    {
      v13 = 0x6465626D45626577;
    }

    if (a1 <= 1u)
    {
      v10 = v13;
    }

    else
    {
      v10 = v12;
    }

    if (v3 <= 1)
    {
      v11 = 0xE800000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }
  }

  else
  {
    v4 = 0xE600000000000000;
    v5 = 0x656C7A7A7570;
    v6 = 0x7453656C7A7A7570;
    v7 = 0xEF63697473697461;
    if (a1 != 7)
    {
      v6 = 0x657069636572;
      v7 = 0xE600000000000000;
    }

    if (a1 != 6)
    {
      v5 = v6;
      v4 = v7;
    }

    v8 = 0xE300000000000000;
    v9 = 6775156;
    if (a1 != 4)
    {
      v9 = 0x76457374726F7073;
      v8 = 0xEB00000000746E65;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v5;
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
      v14 = 0xE500000000000000;
      if (a2 == 2)
      {
        if (v10 != 0x6575737369)
        {
          goto LABEL_49;
        }
      }

      else if (v10 != 0x70756F7267)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v14 = 0xE800000000000000;
    if (a2)
    {
      if (v10 != 0x656E696C64616568)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v14 = 0xE300000000000000;
        if (v10 != 6775156)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v14 = 0xEB00000000746E65;
        if (v10 != 0x76457374726F7073)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v14 = 0xE600000000000000;
      if (v10 != 0x656C7A7A7570)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v14 = 0xEF63697473697461;
      if (v10 != 0x7453656C7A7A7570)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v14 = 0xE600000000000000;
    v2 = 0x657069636572;
  }

  if (v10 != v2)
  {
LABEL_49:
    v15 = sub_1D72646CC();
    goto LABEL_50;
  }

LABEL_46:
  if (v11 != v14)
  {
    goto LABEL_49;
  }

  v15 = 1;
LABEL_50:

  return v15 & 1;
}

uint64_t sub_1D6DE0C10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656E696C64616568;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x70756F7267;
    }

    else
    {
      v4 = 0x6E6F6974706FLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6575737369;
    }

    else
    {
      v4 = 0x656E696C64616568;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x70756F7267;
  if (a2 != 2)
  {
    v8 = 0x6E6F6974706FLL;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x6575737369;
    v6 = 0xE500000000000000;
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
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DE0D3C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 7566194;
    }

    else
    {
      v4 = 0x6F65646976;
    }

    if (v3 == 2)
    {
      v5 = 0xE300000000000000;
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
      v4 = 6712929;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE300000000000000;
  v8 = 7566194;
  if (a2 != 2)
  {
    v8 = 0x6F65646976;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 6712929;
    v6 = 0xE300000000000000;
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
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DE0E58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7465736E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x74697265686E69;
    }

    else
    {
      v4 = 0x726F7463656C6573;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E6564646968;
    }

    else
    {
      v4 = 0x7465736E75;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x74697265686E69;
  if (a2 != 2)
  {
    v8 = 0x726F7463656C6573;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x6E6564646968;
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
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DE0F90(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6465626D45626577;
  v6 = 0xE500000000000000;
  v7 = 0x70756F7267;
  if (a1 != 4)
  {
    v7 = 6775156;
    v6 = 0xE300000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x74496D6F74737563;
  v9 = 0xEA00000000006D65;
  if (a1 != 1)
  {
    v8 = 0x656E696C64616568;
    v9 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6E6F6974706FLL;
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
      v12 = 0xE800000000000000;
      if (v10 != 0x6465626D45626577)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x70756F7267)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 6775156)
      {
LABEL_34:
        v13 = sub_1D72646CC();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEA00000000006D65;
      if (v10 != 0x74496D6F74737563)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x656E696C64616568)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x6E6F6974706FLL)
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

uint64_t sub_1D6DE1164(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x65726F6E6769;
  v6 = 0xE800000000000000;
  v7 = 0x657461676976616ELL;
  if (a1 != 4)
  {
    v7 = 0x6553657069636572;
    v6 = 0xEC00000068637261;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE500000000000000;
  v9 = 0x6B636F6C62;
  if (a1 != 1)
  {
    v9 = 0x6974634165726F6DLL;
    v8 = 0xEB00000000736E6FLL;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x776F6C6C6F66;
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
      v12 = 0xE600000000000000;
      if (v10 != 0x65726F6E6769)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x657461676976616ELL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEC00000068637261;
      if (v10 != 0x6553657069636572)
      {
LABEL_34:
        v13 = sub_1D72646CC();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6B636F6C62)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEB00000000736E6FLL;
      if (v10 != 0x6974634165726F6DLL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x776F6C6C6F66)
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

uint64_t sub_1D6DE1358(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 0x656873696C627570;
    }

    if (v2)
    {
      v4 = 0x80000001D73B9BF0;
    }

    else
    {
      v4 = 0xED00006F676F4C72;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE400000000000000;
    v3 = 1852793705;
  }

  else
  {
    v3 = 0x6F4C7374726F7073;
    if (v2 == 3)
    {
      v4 = 0xEA00000000006F67;
    }

    else
    {
      v4 = 0xED0000746C416F67;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0x656873696C627570;
    }

    if (a2)
    {
      v5 = 0x80000001D73B9BF0;
    }

    else
    {
      v5 = 0xED00006F676F4C72;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE400000000000000;
    if (v3 != 1852793705)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEA00000000006F67;
    if (v3 != 0x6F4C7374726F7073)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xED0000746C416F67;
    if (v3 != 0x6F4C7374726F7073)
    {
LABEL_31:
      v7 = sub_1D72646CC();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_1D6DE1504(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE500000000000000;
    v12 = 0x7976616568;
    if (a1 != 2)
    {
      v12 = 0x746867696CLL;
    }

    v13 = 1684828002;
    if (a1)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v13 = 0x6B63616C62;
    }

    if (a1 <= 1u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = 0xE500000000000000;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x646C6F62696D6573;
    v5 = 0xE400000000000000;
    v6 = 1852401780;
    if (a1 != 7)
    {
      v6 = 0x67694C6172746C75;
      v5 = 0xEA00000000007468;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0xE600000000000000;
    v8 = 0x6D756964656DLL;
    if (a1 != 4)
    {
      v8 = 0x72616C75676572;
      v7 = 0xE700000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      v14 = 0xE500000000000000;
      if (a2 == 2)
      {
        if (v9 != 0x7976616568)
        {
          goto LABEL_52;
        }
      }

      else if (v9 != 0x746867696CLL)
      {
        goto LABEL_52;
      }
    }

    else if (a2)
    {
      v14 = 0xE400000000000000;
      if (v9 != 1684828002)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE500000000000000;
      if (v9 != 0x6B63616C62)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v14 = 0xE600000000000000;
      if (v9 != 0x6D756964656DLL)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE700000000000000;
      if (v9 != 0x72616C75676572)
      {
LABEL_52:
        v15 = sub_1D72646CC();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v14 = 0xE800000000000000;
    if (v9 != 0x646C6F62696D6573)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v14 = 0xE400000000000000;
    if (v9 != 1852401780)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v14 = 0xEA00000000007468;
    if (v9 != 0x67694C6172746C75)
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

uint64_t sub_1D6DE178C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x676E696461656CLL;
    }

    else
    {
      v4 = 7368564;
    }

    if (v2)
    {
      v3 = 0xE700000000000000;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE800000000000000;
    v4 = 0x676E696C69617274;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6D6F74746F62;
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 7105633;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x676E696461656CLL;
    }

    else
    {
      v9 = 7368564;
    }

    if (a2)
    {
      v8 = 0xE700000000000000;
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
    v5 = 0xE600000000000000;
    v6 = 0x6D6F74746F62;
    if (a2 != 3)
    {
      v6 = 7105633;
      v5 = 0xE300000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x676E696C69617274;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
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
    v10 = sub_1D72646CC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1D6DE18F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1633905005;
  if (a1 != 6)
  {
    v5 = 0x66456C6175736976;
    v4 = 0xEC00000074636566;
  }

  v6 = 0x74696C7073;
  if (a1 != 4)
  {
    v6 = 0x6567616D69;
  }

  if (a1 <= 5u)
  {
    v5 = v6;
    v4 = 0xE500000000000000;
  }

  v7 = 0x72476C6169646172;
  v8 = 0xEE00746E65696461;
  if (a1 != 2)
  {
    v7 = 0x656E696873;
    v8 = 0xE500000000000000;
  }

  v9 = 0x746E656964617267;
  if (a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v9 = 0x726F6C6F63;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  else
  {
    v7 = v9;
  }

  if (a1 <= 3u)
  {
    v10 = v7;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 3)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x746E656964617267)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v12 = 0xE500000000000000;
        if (v10 != 0x726F6C6F63)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_43;
    }

    if (a2 == 2)
    {
      v12 = 0xEE00746E65696461;
      if (v10 != 0x72476C6169646172)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v12 = 0xE500000000000000;
    v13 = 1852401779;
LABEL_40:
    if (v10 != (v13 & 0xFFFF0000FFFFFFFFLL | 0x6500000000))
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (a2 <= 5u)
  {
    v12 = 0xE500000000000000;
    if (a2 == 4)
    {
      if (v10 != 0x74696C7073)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v13 = 1734438249;
    goto LABEL_40;
  }

  if (a2 == 6)
  {
    v12 = 0xE400000000000000;
    if (v10 != 1633905005)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v12 = 0xEC00000074636566;
    if (v10 != 0x66456C6175736976)
    {
LABEL_45:
      v14 = sub_1D72646CC();
      goto LABEL_46;
    }
  }

LABEL_43:
  if (v11 != v12)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_1D6DE1B58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x7265746E656376;
  if (a1 == 5)
  {
    v5 = 0x7265746E656368;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  v6 = 0xE800000000000000;
  v7 = 0x676E696C69617274;
  if (a1 != 3)
  {
    v7 = 0x7265746E6563;
    v6 = 0xE600000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x6D6F74746F62;
  if (a1 != 1)
  {
    v9 = 0x676E696461656CLL;
    v8 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 7368564;
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
        v12 = 0xE600000000000000;
        if (v10 != 0x6D6F74746F62)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x676E696461656CLL)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 7368564)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x7265746E656368)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x7265746E656376)
      {
LABEL_40:
        v13 = sub_1D72646CC();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x676E696C69617274)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x7265746E6563)
    {
      goto LABEL_40;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

uint64_t sub_1D6DE1D58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C6169726F747574;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0x80000001D73B94B0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656C7A7A7570;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x6C6169726F747574;
  v8 = 0x80000001D73B94B0;
  if (a2 == 2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (a2)
  {
    v2 = 0x656C7A7A7570;
    v6 = 0xE600000000000000;
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
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DE1E94(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0xD000000000000011;
    v10 = 0x80000001D73BAC00;
    if (a1 != 6)
    {
      v9 = 0x64726F577962;
      v10 = 0xE600000000000000;
    }

    v11 = 0xEB00000000687361;
    if (a1 != 4)
    {
      v11 = 0xEE00746F44687361;
    }

    if (a1 <= 5u)
    {
      v7 = 0x446E726574746170;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v11;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0xE600000000000000;
    v5 = 0x656C62756F64;
    if (a1 != 2)
    {
      v5 = 0x446E726574746170;
      v4 = 0xEA0000000000746FLL;
    }

    v6 = 0x6B63696874;
    if (a1)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v6 = 0x656C676E6973;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v12 = 0x80000001D73BAC00;
        if (v7 != 0xD000000000000011)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        if (v7 != 0x64726F577962)
        {
LABEL_47:
          v13 = sub_1D72646CC();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEB00000000687361;
      if (v7 != 0x446E726574746170)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v12 = 0xEE00746F44687361;
      if (v7 != 0x446E726574746170)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v12 = 0xE600000000000000;
      if (v7 != 0x656C62756F64)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v12 = 0xEA0000000000746FLL;
      if (v7 != 0x446E726574746170)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v12 = 0xE500000000000000;
    if (v7 != 0x6B63696874)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v7 != 0x656C676E6973)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v12)
  {
    goto LABEL_47;
  }

  v13 = 1;
LABEL_48:

  return v13 & 1;
}

uint64_t sub_1D6DE2118(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000061746144;
  v3 = 0x73736572676F7270;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0xE500000000000000;
    v14 = 0x65726F6373;
    if (a1 != 2)
    {
      v14 = 0x70795465726F6373;
      v13 = 0xE900000000000065;
    }

    v15 = 0xED00006C6576654CLL;
    if (!a1)
    {
      v15 = 0xEC00000061746144;
    }

    if (a1 <= 1u)
    {
      v11 = 0x73736572676F7270;
    }

    else
    {
      v11 = v14;
    }

    if (v4 <= 1)
    {
      v12 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = 0x6172754479616C70;
    v6 = 0xEC0000006E6F6974;
    v7 = 0xE800000000000000;
    v8 = 0x6465766C6F537369;
    if (a1 != 7)
    {
      v8 = 0xD000000000000018;
      v7 = 0x80000001D73B7720;
    }

    if (a1 != 6)
    {
      v5 = v8;
      v6 = v7;
    }

    v9 = 0xE600000000000000;
    v10 = 0x44496B6E6172;
    if (a1 != 4)
    {
      v10 = 0x6576655264657375;
      v9 = 0xEA00000000006C61;
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

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE500000000000000;
        if (v11 != 0x65726F6373)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xE900000000000065;
        if (v11 != 0x70795465726F6373)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2)
    {
      v2 = 0xED00006C6576654CLL;
      if (v11 != 0x73736572676F7270)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x44496B6E6172)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xEA00000000006C61;
        if (v11 != 0x6576655264657375)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v2 = 0xEC0000006E6F6974;
      if (v11 != 0x6172754479616C70)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x6465766C6F537369)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v3 = 0xD000000000000018;
    v2 = 0x80000001D73B7720;
  }

  if (v11 != v3)
  {
LABEL_49:
    v16 = sub_1D72646CC();
    goto LABEL_50;
  }

LABEL_46:
  if (v12 != v2)
  {
    goto LABEL_49;
  }

  v16 = 1;
LABEL_50:

  return v16 & 1;
}

uint64_t sub_1D6DE23D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000074786554;
  v3 = 0x656C626978656C66;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0xE500000000000000;
    v14 = 0x726568746FLL;
    if (a1 != 2)
    {
      v14 = 0x686374697773;
      v13 = 0xE600000000000000;
    }

    v15 = 0xE400000000000000;
    v16 = 1954047348;
    if (!a1)
    {
      v16 = 0x656C626978656C66;
      v15 = 0xEC00000074786554;
    }

    if (a1 <= 1u)
    {
      v11 = v16;
    }

    else
    {
      v11 = v14;
    }

    if (v4 <= 1)
    {
      v12 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = 0x6978656C46746C61;
    v6 = 0xEF74786554656C62;
    v7 = 0x6C6F686563616C70;
    v8 = 0xEF74786554726564;
    if (a1 != 7)
    {
      v7 = 0xD000000000000017;
      v8 = 0x80000001D73B9050;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v6 = v8;
    }

    v9 = 0x694C656C676E6973;
    v10 = 0xEA0000000000656ELL;
    if (a1 != 4)
    {
      v9 = 0x74786554746C61;
      v10 = 0xE700000000000000;
    }

    if (a1 <= 5u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 5)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE500000000000000;
        if (v11 != 0x726568746FLL)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x686374697773)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2)
    {
      v2 = 0xE400000000000000;
      if (v11 != 1954047348)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0xEA0000000000656ELL;
        if (v11 != 0x694C656C676E6973)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x74786554746C61)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v17 = 0x6978656C46746C61;
      v18 = 1415933026;
LABEL_40:
      v2 = v18 | 0xEF74786500000000;
      if (v11 != v17)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v17 = 0x6C6F686563616C70;
      v18 = 1416783204;
      goto LABEL_40;
    }

    v3 = 0xD000000000000017;
    v2 = 0x80000001D73B9050;
  }

  if (v11 != v3)
  {
LABEL_49:
    v19 = sub_1D72646CC();
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

uint64_t sub_1D6DE269C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = a1;
  v5 = 0xE500000000000000;
  v6 = 0x7469617274;
  if (a1 != 5)
  {
    v6 = 0x65676175676E616CLL;
    v5 = 0xE800000000000000;
  }

  v7 = 1886152040;
  if (a1 != 3)
  {
    v7 = 1953393000;
  }

  if (a1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  v8 = 0xE500000000000000;
  v9 = 0x6C6562616CLL;
  if (a1 != 1)
  {
    v9 = 0x65756C6176;
    v8 = 0xE500000000000000;
  }

  if (!a1)
  {
    v9 = 0x696669746E656469;
    v8 = 0xEA00000000007265;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v2 = 0xE500000000000000;
      if (a2 == 1)
      {
        if (v10 != 0x6C6562616CLL)
        {
          goto LABEL_36;
        }
      }

      else if (v10 != 0x65756C6176)
      {
        goto LABEL_36;
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
        v2 = 0xE500000000000000;
        if (v10 != 0x7469617274)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v10 != 0x65676175676E616CLL)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    v2 = 0xE400000000000000;
    if (a2 == 3)
    {
      if (v10 != 1886152040)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v3 = 1953393000;
  }

  if (v10 != v3)
  {
LABEL_36:
    v12 = sub_1D72646CC();
    goto LABEL_37;
  }

LABEL_33:
  if (v11 != v2)
  {
    goto LABEL_36;
  }

  v12 = 1;
LABEL_37:

  return v12 & 1;
}

uint64_t sub_1D6DE287C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 7827310;
  v6 = 0x46746E6174736964;
  v7 = 0xED00006572757475;
  if (a1 != 4)
  {
    v6 = 0x50746E6174736964;
    v7 = 0xEB00000000747361;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x74657366666FLL;
  if (a1 != 1)
  {
    v9 = 0x313036386F7369;
    v8 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x676E69646E6962;
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
      v12 = 0xE300000000000000;
      if (v10 != 7827310)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xED00006572757475;
      if (v10 != 0x46746E6174736964)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEB00000000747361;
      if (v10 != 0x50746E6174736964)
      {
LABEL_34:
        v13 = sub_1D72646CC();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x74657366666FLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x313036386F7369)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x676E69646E6962)
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

uint64_t sub_1D6DE2A74(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x5272655065636E6FLL;
    }

    else
    {
      v3 = 1701015151;
    }

    if (v2)
    {
      v4 = 0xEE00687365726665;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x63536E4F65636E6FLL;
    v4 = 0xEC0000006E656572;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000016;
    v4 = 0x80000001D73B8F80;
  }

  else
  {
    v4 = 0xE600000000000000;
    v3 = 0x737961776C61;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x5272655065636E6FLL;
    }

    else
    {
      v6 = 1701015151;
    }

    if (a2)
    {
      v5 = 0xEE00687365726665;
    }

    else
    {
      v5 = 0xE400000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEC0000006E656572;
    if (v3 != 0x63536E4F65636E6FLL)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000001D73B8F80;
    if (v3 != 0xD000000000000016)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    if (v3 != 0x737961776C61)
    {
LABEL_31:
      v7 = sub_1D72646CC();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_1D6DE2C30(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x80000001D73B8D90;
    v10 = 0xD000000000000017;
    if (a1 == 6)
    {
      v10 = 0xD000000000000019;
    }

    else
    {
      v9 = 0x80000001D73B8DB0;
    }

    v11 = 0x7453796C696D6166;
    v12 = 0xEC00000073757461;
    if (a1 != 4)
    {
      v11 = 0x7474656C7377656ELL;
      v12 = 0xEB00000000737265;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x7461745364656566;
    v5 = 0xE900000000000065;
    if (a1 != 2)
    {
      v4 = 0xD000000000000013;
      v5 = 0x80000001D73B8D60;
    }

    v6 = 0x456C616974696E69;
    if (a1)
    {
      v3 = 0xEF657275736F7078;
    }

    else
    {
      v6 = 0x6E6F6973736573;
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
        v13 = 0x80000001D73B8D90;
        if (v7 != 0xD000000000000019)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v13 = 0x80000001D73B8DB0;
        if (v7 != 0xD000000000000017)
        {
LABEL_48:
          v14 = sub_1D72646CC();
          goto LABEL_49;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEC00000073757461;
      if (v7 != 0x7453796C696D6166)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v13 = 0xEB00000000737265;
      if (v7 != 0x7474656C7377656ELL)
      {
        goto LABEL_48;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE900000000000065;
      if (v7 != 0x7461745364656566)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v13 = 0x80000001D73B8D60;
      if (v7 != 0xD000000000000013)
      {
        goto LABEL_48;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEF657275736F7078;
    if (v7 != 0x456C616974696E69)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v7 != 0x6E6F6973736573)
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

uint64_t sub_1D6DE2F08(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6669636570736E75;
    }

    else
    {
      v4 = 0x746C7561666564;
    }

    if (v2)
    {
      v3 = 0xEA00000000006465;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x6C6C616D73;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6D756964656DLL;
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x656772616CLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6669636570736E75;
    }

    else
    {
      v9 = 0x746C7561666564;
    }

    if (a2)
    {
      v8 = 0xEA00000000006465;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x6D756964656DLL;
    if (a2 != 3)
    {
      v6 = 0x656772616CLL;
      v5 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6C6C616D73;
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
    v10 = sub_1D72646CC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1D6DE3084(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006465;
  v3 = 0x6669636570736E75;
  v4 = a1;
  v5 = 0xE400000000000000;
  if (a1 > 4u)
  {
    v13 = 1684828002;
    v14 = 0x7976616568;
    if (a1 != 8)
    {
      v14 = 0x6B63616C62;
    }

    if (a1 != 7)
    {
      v13 = v14;
      v5 = 0xE500000000000000;
    }

    v15 = 0xE600000000000000;
    v16 = 0x6D756964656DLL;
    if (a1 != 5)
    {
      v16 = 0x646C6F62696D6573;
      v15 = 0xE800000000000000;
    }

    if (a1 <= 6u)
    {
      v11 = v16;
    }

    else
    {
      v11 = v13;
    }

    if (v4 <= 6)
    {
      v12 = v15;
    }

    else
    {
      v12 = v5;
    }
  }

  else
  {
    v6 = 1852401780;
    v7 = 0xE500000000000000;
    v8 = 0x746867696CLL;
    if (a1 != 3)
    {
      v8 = 0x72616C75676572;
      v7 = 0xE700000000000000;
    }

    if (a1 != 2)
    {
      v6 = v8;
      v5 = v7;
    }

    v9 = 0x67694C6172746C75;
    v10 = 0xEA00000000007468;
    if (!a1)
    {
      v9 = 0x6669636570736E75;
      v10 = 0xEA00000000006465;
    }

    if (a1 <= 1u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v6;
    }

    if (v4 <= 1)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x6D756964656DLL)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x646C6F62696D6573)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_51;
    }

    if (a2 == 7)
    {
      v2 = 0xE400000000000000;
      if (v11 != 1684828002)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    v2 = 0xE500000000000000;
    if (a2 == 8)
    {
      if (v11 != 0x7976616568)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    v3 = 0x6B63616C62;
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE400000000000000;
        if (v11 != 1852401780)
        {
          goto LABEL_54;
        }
      }

      else if (a2 == 3)
      {
        v2 = 0xE500000000000000;
        if (v11 != 0x746867696CLL)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x72616C75676572)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_51;
    }

    if (a2)
    {
      v2 = 0xEA00000000007468;
      if (v11 != 0x67694C6172746C75)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }
  }

  if (v11 != v3)
  {
LABEL_54:
    v17 = sub_1D72646CC();
    goto LABEL_55;
  }

LABEL_51:
  if (v12 != v2)
  {
    goto LABEL_54;
  }

  v17 = 1;
LABEL_55:

  return v17 & 1;
}

uint64_t sub_1D6DE333C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0x74616C736E617274;
  v5 = 0xE900000000000065;
  v6 = 0x74616C736E617274;
  v7 = 0xEE0065676E615265;
  if (a1 != 4)
  {
    v6 = 0xD000000000000012;
    v7 = 0x80000001D73B8CD0;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x6E6152656C616373;
  v9 = 0xEA00000000006567;
  if (a1 != 1)
  {
    v8 = 0x617254656C616373;
    v9 = 0xEE006574616C736ELL;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x656C616373;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
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

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x656C616373)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    if (a2 == 1)
    {
      v12 = 0xEA00000000006567;
      if (v10 != 0x6E6152656C616373)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v13 = 0x617254656C616373;
    v14 = 0x6574616C736ELL;
LABEL_29:
    v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    if (v10 != v13)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 3)
  {
    v12 = 0xE900000000000065;
    if (v10 != 0x74616C736E617274)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 4)
  {
    v13 = 0x74616C736E617274;
    v14 = 0x65676E615265;
    goto LABEL_29;
  }

  v12 = 0x80000001D73B8CD0;
  if (v10 != 0xD000000000000012)
  {
LABEL_34:
    v15 = sub_1D72646CC();
    goto LABEL_35;
  }

LABEL_32:
  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v15 = 1;
LABEL_35:

  return v15 & 1;
}

uint64_t sub_1D6DE3550(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7466654C706F74;
    }

    else
    {
      v3 = 7105633;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x7468676952706F74;
  }

  else if (a1 == 3)
  {
    v3 = 0x654C6D6F74746F62;
    v4 = 0xEA00000000007466;
  }

  else
  {
    v3 = 0x69526D6F74746F62;
    v4 = 0xEB00000000746867;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7466654C706F74;
    }

    else
    {
      v9 = 7105633;
    }

    if (a2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x654C6D6F74746F62;
    v6 = 0xEA00000000007466;
    if (a2 != 3)
    {
      v5 = 0x69526D6F74746F62;
      v6 = 0xEB00000000746867;
    }

    if (a2 == 2)
    {
      v7 = 0x7468676952706F74;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_1D72646CC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1D6DE36EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x696853656C746974;
    }

    else
    {
      v4 = 0x6E69685364726163;
    }

    if (v2)
    {
      v3 = 0xEA0000000000656ELL;
    }

    else
    {
      v3 = 0xE900000000000065;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001D73B8BC0;
  }

  else if (a1 == 3)
  {
    v3 = 0x80000001D73B8BE0;
    v4 = 0xD000000000000015;
  }

  else
  {
    v4 = 0x69685370756F7267;
    v3 = 0xEA0000000000656ELL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x696853656C746974;
    }

    else
    {
      v6 = 0x6E69685364726163;
    }

    if (a2)
    {
      v5 = 0xEA0000000000656ELL;
    }

    else
    {
      v5 = 0xE900000000000065;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x80000001D73B8BC0;
    if (v4 != 0xD000000000000011)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000001D73B8BE0;
    if (v4 != 0xD000000000000015)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEA0000000000656ELL;
    if (v4 != 0x69685370756F7267)
    {
LABEL_31:
      v7 = sub_1D72646CC();
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

uint64_t sub_1D6DE38B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746C7561666564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6669726573;
    }

    else
    {
      v4 = 0x636170736F6E6F6DLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xEA00000000006465;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6465646E756F72;
    }

    else
    {
      v4 = 0x746C7561666564;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x6669726573;
  if (a2 != 2)
  {
    v7 = 0x636170736F6E6F6DLL;
    v6 = 0xEA00000000006465;
  }

  if (a2)
  {
    v2 = 0x6465646E756F72;
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
    v9 = 0xE700000000000000;
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
    v10 = sub_1D72646CC();
  }

  return v10 & 1;
}

uint64_t sub_1D6DE39F4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF64657373657270;
  v3 = 0x6D6F436172746C75;
  if (a1 > 4u)
  {
    v4 = 0x61707845696D6573;
    v5 = 0xEC0000006465646ELL;
    v11 = 0xE800000000000000;
    v12 = 0x6465646E61707865;
    if (a1 != 8)
    {
      v12 = 0x7078456172747865;
      v11 = 0xED00006465646E61;
    }

    if (a1 != 7)
    {
      v4 = v12;
      v5 = v11;
    }

    v8 = 0x646E6F43696D6573;
    v9 = 0xED00006465736E65;
    if (a1 != 5)
    {
      v8 = 0x647261646E617473;
      v9 = 0xE800000000000000;
    }

    v10 = a1 <= 6u;
  }

  else
  {
    v4 = 0x73736572706D6F63;
    v5 = 0xEA00000000006465;
    v6 = 0x6E6F436172747865;
    v7 = 0xEE006465736E6564;
    if (a1 != 3)
    {
      v6 = 0x65736E65646E6F63;
      v7 = 0xE900000000000064;
    }

    if (a1 != 2)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0x6D6F436172747865;
    if (!a1)
    {
      v8 = 0x6D6F436172746C75;
    }

    v9 = 0xEF64657373657270;
    v10 = a1 <= 1u;
  }

  if (v10)
  {
    v13 = v8;
  }

  else
  {
    v13 = v4;
  }

  if (v10)
  {
    v14 = v9;
  }

  else
  {
    v14 = v5;
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v2 = 0xED00006465736E65;
        if (v13 != 0x646E6F43696D6573)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v13 != 0x647261646E617473)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_47;
    }

    if (a2 == 7)
    {
      v2 = 0xEC0000006465646ELL;
      if (v13 != 0x61707845696D6573)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    if (a2 == 8)
    {
      v2 = 0xE800000000000000;
      if (v13 != 0x6465646E61707865)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    v3 = 0x7078456172747865;
    v2 = 0xED00006465646E61;
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEA00000000006465;
        if (v13 != 0x73736572706D6F63)
        {
          goto LABEL_50;
        }
      }

      else if (a2 == 3)
      {
        v2 = 0xEE006465736E6564;
        if (v13 != 0x6E6F436172747865)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v2 = 0xE900000000000064;
        if (v13 != 0x65736E65646E6F63)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_47;
    }

    if (a2)
    {
      if (v13 != 0x6D6F436172747865)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }
  }

  if (v13 != v3)
  {
LABEL_50:
    v15 = sub_1D72646CC();
    goto LABEL_51;
  }

LABEL_47:
  if (v14 != v2)
  {
    goto LABEL_50;
  }

  v15 = 1;
LABEL_51:

  return v15 & 1;
}

uint64_t sub_1D6DE3D34(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6D6F74737563;
    }

    else
    {
      v3 = 0x6D6574737973;
    }

    v2 = 0xE600000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0xE600000000000000;
    v3 = 0x65746F6D6572;
  }

  else
  {
    v2 = 0xE700000000000000;
    if (a1 == 3)
    {
      v3 = 0x676E69646E6962;
    }

    else
    {
      v3 = 0x646E756F626E75;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x6D6F74737563;
    }

    else
    {
      v7 = 0x6D6574737973;
    }

    v6 = 0xE600000000000000;
    if (v3 != v7)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0x676E69646E6962;
    if (a2 != 3)
    {
      v4 = 0x646E756F626E75;
    }

    if (a2 == 2)
    {
      v5 = 0x65746F6D6572;
    }

    else
    {
      v5 = v4;
    }

    if (a2 == 2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_28;
    }
  }

  if (v2 != v6)
  {
LABEL_28:
    v8 = sub_1D72646CC();
    goto LABEL_29;
  }

  v8 = 1;
LABEL_29:

  return v8 & 1;
}

uint64_t sub_1D6DE3EA8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64696C6F73;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEE00746E65696461;
    v4 = 0xE500000000000000;
    if (a1 == 2)
    {
      v6 = 0x72476C6169646172;
    }

    else
    {
      v6 = 0x656E696873;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0xE800000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x746E656964617267;
    }

    else
    {
      v6 = 0x64696C6F73;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE500000000000000;
  v9 = 0x72476C6169646172;
  v10 = 0xEE00746E65696461;
  if (a2 != 2)
  {
    v9 = 0x656E696873;
    v10 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x746E656964617267;
    v8 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1D72646CC();
  }

  return v13 & 1;
}

uint64_t sub_1D6DE3FF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x676E696E726F6DLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x676E696E657665;
    }

    else
    {
      v4 = 0x746867696ELL;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
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
      v4 = 0x6F6F6E7265746661;
    }

    else
    {
      v4 = 0x676E696E726F6DLL;
    }

    if (v3)
    {
      v5 = 0xE90000000000006ELL;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x676E696E657665;
  if (a2 != 2)
  {
    v8 = 0x746867696ELL;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6F6F6E7265746661;
    v6 = 0xE90000000000006ELL;
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
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DE4138(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C6F6F706572;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6563726F66;
    }

    else
    {
      v4 = 0x6F6C6F6E6F726863;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xED00006C61636967;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x446873696C627570;
    }

    else
    {
      v4 = 0x6C6F6F706572;
    }

    if (v3)
    {
      v5 = 0xEB00000000657461;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x6563726F66;
  if (a2 != 2)
  {
    v8 = 0x6F6C6F6E6F726863;
    v7 = 0xED00006C61636967;
  }

  if (a2)
  {
    v2 = 0x446873696C627570;
    v6 = 0xEB00000000657461;
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
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6DE4298(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED000073656C7552;
  if (a1 <= 3u)
  {
    v3 = 0x80000001D73B7150;
    v11 = 0xD000000000000013;
    if (a1 != 2)
    {
      v11 = 0xD00000000000001BLL;
      v3 = 0x80000001D73B7170;
    }

    v7 = 0x80000001D73B7110;
    if (a1)
    {
      v7 = 0x80000001D73B7130;
    }

    v9 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v10 = 0xD000000000000010;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v3 = 0x80000001D73B71A0;
    v4 = 0xD00000000000001ELL;
    v5 = 0x80000001D73B71C0;
    v6 = 0xD000000000000016;
    if (a1 == 7)
    {
      v6 = 0xD00000000000001ELL;
    }

    else
    {
      v5 = 0x80000001D73B71E0;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0x80000001D73B8720;
    v8 = 0xD00000000000001FLL;
    if (a1 != 4)
    {
      v8 = 0x676E6970756F7267;
      v7 = 0xED000073656C7552;
    }

    v9 = a1 <= 5u;
    if (a1 <= 5u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (v9)
  {
    v12 = v7;
  }

  else
  {
    v12 = v3;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x80000001D73B7150;
        if (v10 != 0xD000000000000013)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0x80000001D73B7170;
        if (v10 != 0xD00000000000001BLL)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      if (a2)
      {
        v14 = "maxNumberOfItems";
      }

      else
      {
        v14 = "minNumberOfItems";
      }

      v2 = (v14 - 32) | 0x8000000000000000;
      if (v10 != 0xD000000000000010)
      {
        goto LABEL_49;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v2 = 0x80000001D73B8720;
      if (v10 != 0xD00000000000001FLL)
      {
        goto LABEL_49;
      }
    }

    else if (v10 != 0x676E6970756F7267)
    {
LABEL_49:
      v15 = sub_1D72646CC();
      goto LABEL_50;
    }
  }

  else
  {
    if (a2 == 6)
    {
      v13 = "minNumberOfItemsDepthTransform";
    }

    else
    {
      if (a2 != 7)
      {
        v2 = 0x80000001D73B71E0;
        if (v10 != 0xD000000000000016)
        {
          goto LABEL_49;
        }

        goto LABEL_47;
      }

      v13 = "maxNumberOfItemsDepthTransform";
    }

    v2 = (v13 - 32) | 0x8000000000000000;
    if (v10 != 0xD00000000000001ELL)
    {
      goto LABEL_49;
    }
  }

LABEL_47:
  if (v12 != v2)
  {
    goto LABEL_49;
  }

  v15 = 1;
LABEL_50:

  return v15 & 1;
}

uint64_t sub_1D6DE452C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD00000000000001ALL;
    }

    else
    {
      v3 = 0xD00000000000001CLL;
    }

    if (v2 == 2)
    {
      v4 = 0x80000001D73B86C0;
    }

    else
    {
      v4 = 0x80000001D73B86E0;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x52646574746F6C73;
    }

    else
    {
      v3 = 0x52746C7561666564;
    }

    if (v2)
    {
      v4 = 0xED0000736F697461;
    }

    else
    {
      v4 = 0xEC0000006F697461;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD00000000000001ALL;
    }

    else
    {
      v7 = 0xD00000000000001CLL;
    }

    if (a2 == 2)
    {
      v6 = 0x80000001D73B86C0;
    }

    else
    {
      v6 = 0x80000001D73B86E0;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x52646574746F6C73;
    }

    else
    {
      v5 = 0x52746C7561666564;
    }

    if (a2)
    {
      v6 = 0xED0000736F697461;
    }

    else
    {
      v6 = 0xEC0000006F697461;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
LABEL_32:
    v8 = sub_1D72646CC();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

uint64_t sub_1D6DE468C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1954047342;
  v3 = a1;
  v4 = 0xE400000000000000;
  v5 = 1885956979;
  if (a1 != 5)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = 0xE700000000000000;
  v7 = 0x646570706F7264;
  if (a1 != 3)
  {
    v7 = 0x7972746572;
    v6 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 1953718636;
  if (a1 != 1)
  {
    v8 = 1819242352;
  }

  if (!a1)
  {
    v8 = 1954047342;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v3 <= 2)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    v11 = 0xE400000000000000;
    if (a2)
    {
      if (a2 == 1)
      {
        if (v9 != 1953718636)
        {
          goto LABEL_36;
        }
      }

      else if (v9 != 1819242352)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      v11 = 0xE400000000000000;
      if (a2 == 5)
      {
        if (v9 != 1885956979)
        {
          goto LABEL_36;
        }
      }

      else if (v9 != 1701736302)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x646570706F7264)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v11 = 0xE500000000000000;
    v2 = 0x7972746572;
  }

  if (v9 != v2)
  {
LABEL_36:
    v12 = sub_1D72646CC();
    goto LABEL_37;
  }

LABEL_33:
  if (v10 != v11)
  {
    goto LABEL_36;
  }

  v12 = 1;
LABEL_37:

  return v12 & 1;
}

uint64_t sub_1D6DE4850(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x776F6C6C61;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1885956979;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0x80000001D73B72B0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x65766F6D6572;
    }

    else
    {
      v4 = 0x776F6C6C61;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 1885956979;
  v8 = 0x80000001D73B72B0;
  if (a2 == 2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (a2)
  {
    v2 = 0x65766F6D6572;
    v6 = 0xE600000000000000;
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
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}
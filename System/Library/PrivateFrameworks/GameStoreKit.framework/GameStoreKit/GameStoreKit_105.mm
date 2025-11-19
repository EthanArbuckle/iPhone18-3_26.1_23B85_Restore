uint64_t sub_24F0CB578(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6B63696C63;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x676F6C616964;
    }

    else
    {
      v4 = 0x6973736572706D69;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEB00000000736E6FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x686372616573;
    }

    else
    {
      v4 = 0x6B63696C63;
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
  v7 = 0xE600000000000000;
  v8 = 0x676F6C616964;
  if (a2 != 2)
  {
    v8 = 0x6973736572706D69;
    v7 = 0xEB00000000736E6FLL;
  }

  if (a2)
  {
    v2 = 0x686372616573;
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
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0CB6B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0x7250646E65697266;
    v12 = 0xED0000656C69666FLL;
    v13 = 0xE700000000000000;
    v14 = 0x73646E65697266;
    if (a1 != 8)
    {
      v14 = 0x72616F6268736164;
      v13 = 0xE900000000000064;
    }

    if (a1 != 7)
    {
      v11 = v14;
      v12 = v13;
    }

    v15 = 0x6D65766569686361;
    v16 = 0xEB00000000746E65;
    if (a1 != 5)
    {
      v15 = 0x656C69666F7270;
      v16 = 0xE700000000000000;
    }

    if (a1 <= 6u)
    {
      v9 = v15;
    }

    else
    {
      v9 = v11;
    }

    if (v2 <= 6)
    {
      v10 = v16;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0xD000000000000016;
    v5 = 0x800000024FA42BD0;
    v6 = 0x6F6272656461656CLL;
    v7 = 0xEB00000000647261;
    if (a1 != 3)
    {
      v6 = 0x49656C69666F7270;
      v7 = 0xEC0000006567616DLL;
    }

    if (a1 != 2)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0x614E726579616C70;
    if (a1)
    {
      v3 = 0xEA0000000000656DLL;
    }

    else
    {
      v8 = 0x656461637261;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v17 = 0x6D65766569686361;
        v18 = 7630437;
LABEL_42:
        v19 = v18 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v9 != v17)
        {
          goto LABEL_57;
        }

        goto LABEL_55;
      }

      v19 = 0xE700000000000000;
      if (v9 != 0x656C69666F7270)
      {
LABEL_57:
        v20 = sub_24F92CE08();
        goto LABEL_58;
      }
    }

    else if (a2 == 7)
    {
      v19 = 0xED0000656C69666FLL;
      if (v9 != 0x7250646E65697266)
      {
        goto LABEL_57;
      }
    }

    else if (a2 == 8)
    {
      v19 = 0xE700000000000000;
      if (v9 != 0x73646E65697266)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v19 = 0xE900000000000064;
      if (v9 != 0x72616F6268736164)
      {
        goto LABEL_57;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v19 = 0x800000024FA42BD0;
        if (v9 != 0xD000000000000016)
        {
          goto LABEL_57;
        }

        goto LABEL_55;
      }

      if (a2 != 3)
      {
        v19 = 0xEC0000006567616DLL;
        if (v9 != 0x49656C69666F7270)
        {
          goto LABEL_57;
        }

        goto LABEL_55;
      }

      v17 = 0x6F6272656461656CLL;
      v18 = 6582881;
      goto LABEL_42;
    }

    if (a2)
    {
      v19 = 0xEA0000000000656DLL;
      if (v9 != 0x614E726579616C70)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v19 = 0xE600000000000000;
      if (v9 != 0x656461637261)
      {
        goto LABEL_57;
      }
    }
  }

LABEL_55:
  if (v10 != v19)
  {
    goto LABEL_57;
  }

  v20 = 1;
LABEL_58:

  return v20 & 1;
}

uint64_t sub_24F0CBA10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x42656D6F636C6577;
    }

    else
    {
      v3 = 0x6F50737365636361;
    }

    if (v2)
    {
      v4 = 0xED000072656E6E61;
    }

    else
    {
      v4 = 0xEB00000000746E69;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x800000024FA42B00;
    v3 = 0xD000000000000017;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000020;
    }

    else
    {
      v3 = 0xD00000000000001ELL;
    }

    if (v2 == 3)
    {
      v4 = 0x800000024FA42B70;
    }

    else
    {
      v4 = 0x800000024FA42BA0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x42656D6F636C6577;
    }

    else
    {
      v9 = 0x6F50737365636361;
    }

    if (a2)
    {
      v8 = 0xED000072656E6E61;
    }

    else
    {
      v8 = 0xEB00000000746E69;
    }

    if (v3 != v9)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v5 = 0x800000024FA42B70;
    v6 = 0xD000000000000020;
    if (a2 != 3)
    {
      v6 = 0xD00000000000001ELL;
      v5 = 0x800000024FA42BA0;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000017;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0x800000024FA42B00;
    }

    else
    {
      v8 = v5;
    }

    if (v3 != v7)
    {
      goto LABEL_36;
    }
  }

  if (v4 != v8)
  {
LABEL_36:
    v10 = sub_24F92CE08();
    goto LABEL_37;
  }

  v10 = 1;
LABEL_37:

  return v10 & 1;
}

uint64_t sub_24F0CBBB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000746E69;
  v3 = 0x6F50737365636361;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x42656D6F636C6577;
    v12 = 0xED000072656E6E61;
    if (a1 != 6)
    {
      v11 = 0xD000000000000016;
      v12 = 0x800000024FA42B20;
    }

    v13 = 0x800000024FA3ED00;
    v14 = 0xD000000000000020;
    if (a1 != 4)
    {
      v14 = 0xD00000000000001ELL;
      v13 = 0x800000024FA3ED30;
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v11;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v5 = 0x800000024FA42B00;
    v6 = 0xD000000000000017;
    if (a1 != 2)
    {
      v6 = 0x6142656D61476E69;
      v5 = 0xEC00000072656E6ELL;
    }

    v7 = 0x800000024FA42A80;
    if (a1)
    {
      v8 = 0xD000000000000014;
    }

    else
    {
      v8 = 0x6F50737365636361;
    }

    if (!a1)
    {
      v7 = 0xEB00000000746E69;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xED000072656E6E61;
        if (v9 != 0x42656D6F636C6577)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v2 = 0x800000024FA42B20;
        if (v9 != 0xD000000000000016)
        {
          goto LABEL_47;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x800000024FA3ED00;
      if (v9 != 0xD000000000000020)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v2 = 0x800000024FA3ED30;
      if (v9 != 0xD00000000000001ELL)
      {
        goto LABEL_47;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x800000024FA42B00;
        if (v9 != 0xD000000000000017)
        {
          goto LABEL_47;
        }

        goto LABEL_44;
      }

      v3 = 0x6142656D61476E69;
      v2 = 0xEC00000072656E6ELL;
    }

    else if (a2)
    {
      v2 = 0x800000024FA42A80;
      if (v9 != 0xD000000000000014)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

    if (v9 != v3)
    {
LABEL_47:
      v15 = sub_24F92CE08();
      goto LABEL_48;
    }
  }

LABEL_44:
  if (v10 != v2)
  {
    goto LABEL_47;
  }

  v15 = 1;
LABEL_48:

  return v15 & 1;
}

uint64_t sub_24F0CBE4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 1701667182;
    }

    else
    {
      v3 = 0x657079546469;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000012;
    v4 = 0x800000024FA42AC0;
  }

  else
  {
    v3 = 0x6973736572706D69;
    if (v2 == 3)
    {
      v4 = 0xEF7865646E496E6FLL;
    }

    else
    {
      v4 = 0xEE00657079546E6FLL;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 1701667182;
    }

    else
    {
      v8 = 0x657079546469;
    }

    if (a2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    if (v3 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xEF7865646E496E6FLL;
    if (a2 != 3)
    {
      v5 = 0xEE00657079546E6FLL;
    }

    if (a2 == 2)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0x6973736572706D69;
    }

    if (a2 == 2)
    {
      v7 = 0x800000024FA42AC0;
    }

    else
    {
      v7 = v5;
    }

    if (v3 != v6)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v7)
  {
LABEL_33:
    v9 = sub_24F92CE08();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

uint64_t sub_24F0CBFEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000746E69;
  v3 = a1;
  v4 = 0x72656E6E6162;
  v5 = 0xE400000000000000;
  if (a1 == 2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v4 = 1701736302;
  }

  v6 = 0xD000000000000014;
  v7 = 0x800000024FA42A80;
  if (!a1)
  {
    v6 = 0x6F50737365636361;
    v7 = 0xEB00000000746E69;
  }

  if (a1 <= 1u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (v3 <= 1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (a2 > 1u)
  {
    v11 = a2 == 2;
    v2 = 0xE600000000000000;
    v10 = 0xE400000000000000;
    if (a2 == 2)
    {
      v12 = 0x72656E6E6162;
    }

    else
    {
      v12 = 1701736302;
    }
  }

  else
  {
    v10 = 0x800000024FA42A80;
    v11 = a2 == 0;
    if (a2)
    {
      v12 = 0xD000000000000014;
    }

    else
    {
      v12 = 0x6F50737365636361;
    }
  }

  if (v11)
  {
    v13 = v2;
  }

  else
  {
    v13 = v10;
  }

  if (v8 == v12 && v9 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_24F92CE08();
  }

  return v14 & 1;
}

uint64_t sub_24F0CC114(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x707954746E657665;
  v4 = 0xE800000000000000;
  if (a1 > 4u)
  {
    v5 = 0x6E6F697461636F6CLL;
    v11 = 0x6973736572706D69;
    v12 = 0xEB00000000736E6FLL;
    if (a1 != 8)
    {
      v11 = 0x707041666572;
      v12 = 0xE600000000000000;
    }

    if (a1 != 7)
    {
      v5 = v11;
      v4 = v12;
    }

    v8 = 0x7954746567726174;
    v9 = 0xEA00000000006570;
    if (a1 != 5)
    {
      v8 = 0x6449746567726174;
      v9 = 0xE800000000000000;
    }

    v10 = a1 <= 6u;
  }

  else
  {
    v5 = 0x6570795465676170;
    v6 = 0xE600000000000000;
    v7 = 0x644965676170;
    if (a1 != 3)
    {
      v7 = 0x746E6F4365676170;
      v6 = 0xEB00000000747865;
    }

    if (a1 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x79546E6F69746361;
    v9 = 0xEA00000000006570;
    if (!a1)
    {
      v8 = 0x707954746E657665;
      v9 = 0xE900000000000065;
    }

    v10 = a1 <= 1u;
  }

  if (v10)
  {
    v13 = v8;
  }

  else
  {
    v13 = v5;
  }

  if (v10)
  {
    v14 = v9;
  }

  else
  {
    v14 = v4;
  }

  if (a2 <= 4u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE800000000000000;
        if (v13 != 0x6570795465676170)
        {
          goto LABEL_50;
        }

        goto LABEL_47;
      }

      if (a2 == 3)
      {
        v2 = 0xE600000000000000;
        if (v13 != 0x644965676170)
        {
          goto LABEL_50;
        }

        goto LABEL_47;
      }

      v15 = 0x746E6F4365676170;
      v16 = 7632997;
LABEL_43:
      v2 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      if (v13 != v15)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    if (a2)
    {
      v17 = 0x6E6F69746361;
      goto LABEL_36;
    }

    goto LABEL_46;
  }

  if (a2 > 6u)
  {
    if (a2 == 7)
    {
      v2 = 0xE800000000000000;
      if (v13 != 0x6E6F697461636F6CLL)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    if (a2 == 8)
    {
      v15 = 0x6973736572706D69;
      v16 = 7564911;
      goto LABEL_43;
    }

    v2 = 0xE600000000000000;
    v3 = 0x707041666572;
LABEL_46:
    if (v13 != v3)
    {
LABEL_50:
      v18 = sub_24F92CE08();
      goto LABEL_51;
    }

    goto LABEL_47;
  }

  if (a2 == 5)
  {
    v17 = 0x746567726174;
LABEL_36:
    v2 = 0xEA00000000006570;
    if (v13 != (v17 & 0xFFFFFFFFFFFFLL | 0x7954000000000000))
    {
      goto LABEL_50;
    }

    goto LABEL_47;
  }

  v2 = 0xE800000000000000;
  if (v13 != 0x6449746567726174)
  {
    goto LABEL_50;
  }

LABEL_47:
  if (v14 != v2)
  {
    goto LABEL_50;
  }

  v18 = 1;
LABEL_51:

  return v18 & 1;
}

uint64_t sub_24F0CC400(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000074786554;
  v3 = 0x6C6169726574616DLL;
  v4 = a1;
  v5 = 0xD000000000000010;
  v6 = 0x800000024FA42980;
  v7 = 0x6F4D656C676E6973;
  v8 = 0xEC000000656C7564;
  if (a1 != 4)
  {
    v7 = 0xD000000000000010;
    v8 = 0x800000024FA429A0;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE400000000000000;
  v10 = 1954047348;
  if (a1 != 1)
  {
    v10 = 0x70756B636F6CLL;
    v9 = 0xE600000000000000;
  }

  if (!a1)
  {
    v10 = 0x6C6169726574616DLL;
    v9 = 0xEC00000074786554;
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

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x800000024FA42980;
      if (v11 != 0xD000000000000010)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEC000000656C7564;
      if (v11 != 0x6F4D656C676E6973)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0x800000024FA429A0;
      if (v11 != 0xD000000000000010)
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
        v2 = 0xE400000000000000;
        if (v11 != 1954047348)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE600000000000000;
      v3 = 0x70756B636F6CLL;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_24F92CE08();
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

uint64_t sub_24F0CC5CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 4u)
  {
    v8 = 0xE500000000000000;
    v9 = 0xE400000000000000;
    v10 = 1752397168;
    v11 = 0x4D746E6573657270;
    v12 = 0xEC0000006C61646FLL;
    if (a1 != 3)
    {
      v11 = 0xD000000000000015;
      v12 = 0x800000024FA428C0;
    }

    if (a1 != 2)
    {
      v10 = v11;
      v9 = v12;
    }

    v13 = 0x61746544776F6873;
    if (a1)
    {
      v8 = 0xEA00000000006C69;
    }

    else
    {
      v13 = 0x7265666E69;
    }

    if (a1 <= 1u)
    {
      v7 = v13;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 1)
    {
      v14 = v8;
    }

    else
    {
      v14 = v9;
    }
  }

  else
  {
    if (a1 > 7u)
    {
      v3 = 0x800000024FA42940;
      v4 = 0xE600000000000000;
      v15 = 0x7463656C6573;
      if (a1 != 9)
      {
        v15 = 0x6563616C706572;
        v4 = 0xE700000000000000;
      }

      v6 = a1 == 8;
      if (a1 == 8)
      {
        v7 = 0xD000000000000013;
      }

      else
      {
        v7 = v15;
      }
    }

    else
    {
      v3 = 0x800000024FA428E0;
      v4 = 0x800000024FA42900;
      v5 = 0xD00000000000001ALL;
      if (a1 == 6)
      {
        v5 = 0xD000000000000016;
      }

      else
      {
        v4 = 0x800000024FA42920;
      }

      v6 = a1 == 5;
      if (a1 == 5)
      {
        v7 = 0xD000000000000015;
      }

      else
      {
        v7 = v5;
      }
    }

    if (v6)
    {
      v14 = v3;
    }

    else
    {
      v14 = v4;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v16 = 0xEA00000000006C69;
        if (v7 != 0x61746544776F6873)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v16 = 0xE500000000000000;
        if (v7 != 0x7265666E69)
        {
          goto LABEL_63;
        }
      }

      goto LABEL_61;
    }

    if (a2 == 2)
    {
      v16 = 0xE400000000000000;
      if (v7 != 1752397168)
      {
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    if (a2 == 3)
    {
      v16 = 0xEC0000006C61646FLL;
      if (v7 != 0x4D746E6573657270)
      {
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    v17 = "presentModalFormSheet";
    goto LABEL_54;
  }

  if (a2 <= 7u)
  {
    if (a2 != 5)
    {
      if (a2 == 6)
      {
        v16 = 0x800000024FA42900;
        if (v7 != 0xD000000000000016)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v16 = 0x800000024FA42920;
        if (v7 != 0xD00000000000001ALL)
        {
          goto LABEL_63;
        }
      }

      goto LABEL_61;
    }

    v17 = "presentModalPageSheet";
LABEL_54:
    v16 = (v17 - 32) | 0x8000000000000000;
    if (v7 != 0xD000000000000015)
    {
      goto LABEL_63;
    }

    goto LABEL_61;
  }

  if (a2 == 8)
  {
    v16 = 0x800000024FA42940;
    if (v7 != 0xD000000000000013)
    {
      goto LABEL_63;
    }
  }

  else if (a2 == 9)
  {
    v16 = 0xE600000000000000;
    if (v7 != 0x7463656C6573)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v16 = 0xE700000000000000;
    if (v7 != 0x6563616C706572)
    {
LABEL_63:
      v18 = sub_24F92CE08();
      goto LABEL_64;
    }
  }

LABEL_61:
  if (v14 != v16)
  {
    goto LABEL_63;
  }

  v18 = 1;
LABEL_64:

  return v18 & 1;
}

uint64_t sub_24F0CC930(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1869768040;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xE900000000000064;
    v4 = 0xEB000000006C6961;
    if (a1 == 2)
    {
      v6 = 0x72614379726F7473;
    }

    else
    {
      v6 = 0x74654479726F7473;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xED000074756F6B61;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x657242656772616CLL;
    }

    else
    {
      v6 = 1869768040;
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

  v8 = 0xE400000000000000;
  v9 = 0x72614379726F7473;
  v10 = 0xE900000000000064;
  if (a2 != 2)
  {
    v9 = 0x74654479726F7473;
    v10 = 0xEB000000006C6961;
  }

  if (a2)
  {
    v2 = 0x657242656772616CLL;
    v8 = 0xED000074756F6B61;
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
    v13 = sub_24F92CE08();
  }

  return v13 & 1;
}

uint64_t sub_24F0CCA98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006465;
  v3 = 0x6269726373627573;
  v4 = a1;
  if (a1 <= 2u)
  {
    v11 = 0xE500000000000000;
    v12 = 0x6C61697274;
    if (a1 != 1)
    {
      v12 = 0x6973616863727570;
      v11 = 0xEA0000000000676ELL;
    }

    if (a1)
    {
      v9 = v12;
    }

    else
    {
      v9 = 0x6269726373627573;
    }

    if (v4)
    {
      v10 = v11;
    }

    else
    {
      v10 = 0xEA00000000006465;
    }
  }

  else
  {
    v5 = 0x7265746544746F6ELL;
    v6 = 0xED000064656E696DLL;
    if (a1 != 5)
    {
      v5 = 0xD000000000000011;
      v6 = 0x800000024FA42890;
    }

    v7 = 0x800000024FA42840;
    v8 = 0xD00000000000001FLL;
    if (a1 == 3)
    {
      v8 = 0xD00000000000001CLL;
    }

    else
    {
      v7 = 0x800000024FA42860;
    }

    if (a1 <= 4u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v4 <= 4)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE500000000000000;
        if (v9 != 0x6C61697274)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v2 = 0xEA0000000000676ELL;
        if (v9 != 0x6973616863727570)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_37;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xED000064656E696DLL;
        if (v9 != 0x7265746544746F6ELL)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v2 = 0x800000024FA42890;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_37;
    }

    if (a2 == 3)
    {
      v2 = 0x800000024FA42840;
      if (v9 != 0xD00000000000001CLL)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    v2 = 0x800000024FA42860;
    v3 = 0xD00000000000001FLL;
  }

  if (v9 != v3)
  {
LABEL_40:
    v13 = sub_24F92CE08();
    goto LABEL_41;
  }

LABEL_37:
  if (v10 != v2)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

uint64_t sub_24F0CCCE0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF74736575716552;
  v3 = 0x7975426F546B7361;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x68736E6565726373;
    }

    else
    {
      v5 = 0x666C656873;
    }

    if (v4 == 2)
    {
      v6 = 0xEB0000000073746FLL;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x756B636F4C706F74;
    }

    else
    {
      v5 = 0x7975426F546B7361;
    }

    if (v4)
    {
      v6 = 0xE900000000000070;
    }

    else
    {
      v6 = 0xEF74736575716552;
    }
  }

  v7 = 0x68736E6565726373;
  v8 = 0xEB0000000073746FLL;
  if (a2 != 2)
  {
    v7 = 0x666C656873;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x756B636F4C706F74;
    v2 = 0xE900000000000070;
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
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0CCE3C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      if (a1 == 5)
      {
        v6 = 0x800000024FA425F0;
        v5 = 0xD000000000000012;
      }

      else
      {
        v5 = 0x65706F6C65766564;
        v6 = 0xED00006F666E4972;
      }
    }

    else if (a1 == 7)
    {
      v6 = 0xE300000000000000;
      v5 = 6775156;
    }

    else
    {
      v6 = 0xE700000000000000;
      if (a1 == 8)
      {
        v5 = 0x72656469766964;
      }

      else
      {
        v5 = 0x6E776F6E6B6E75;
      }
    }
  }

  else if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x736F507472616863;
    }

    else
    {
      v5 = 0x6974615272657375;
    }

    if (v2)
    {
      v6 = 0xEE00736E6F697469;
    }

    else
    {
      v6 = 0xEA0000000000676ELL;
    }
  }

  else
  {
    v3 = 0x800000024FA425B0;
    v4 = 0xD000000000000015;
    if (a1 != 3)
    {
      v4 = 0xD00000000000001FLL;
      v3 = 0x800000024FA425D0;
    }

    if (a1 == 2)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0x800000024FA42590;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v7 = 0x800000024FA425F0;
        if (v5 != 0xD000000000000012)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v7 = 0xED00006F666E4972;
        if (v5 != 0x65706F6C65766564)
        {
LABEL_59:
          v9 = sub_24F92CE08();
          goto LABEL_60;
        }
      }
    }

    else if (a2 == 7)
    {
      v7 = 0xE300000000000000;
      if (v5 != 6775156)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v7 = 0xE700000000000000;
      if (a2 == 8)
      {
        if (v5 != 0x72656469766964)
        {
          goto LABEL_59;
        }
      }

      else if (v5 != 0x6E776F6E6B6E75)
      {
        goto LABEL_59;
      }
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x736F507472616863;
    }

    else
    {
      v8 = 0x6974615272657375;
    }

    if (a2)
    {
      v7 = 0xEE00736E6F697469;
    }

    else
    {
      v7 = 0xEA0000000000676ELL;
    }

    if (v5 != v8)
    {
      goto LABEL_59;
    }
  }

  else if (a2 == 2)
  {
    v7 = 0x800000024FA42590;
    if (v5 != 0xD000000000000010)
    {
      goto LABEL_59;
    }
  }

  else if (a2 == 3)
  {
    v7 = 0x800000024FA425B0;
    if (v5 != 0xD000000000000015)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v7 = 0x800000024FA425D0;
    if (v5 != 0xD00000000000001FLL)
    {
      goto LABEL_59;
    }
  }

  if (v6 != v7)
  {
    goto LABEL_59;
  }

  v9 = 1;
LABEL_60:

  return v9 & 1;
}

uint64_t sub_24F0CD188(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6573756170;
    }

    else
    {
      v3 = 2036427888;
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
    v4 = 0xE400000000000000;
    v3 = 1702131053;
  }

  else if (a1 == 3)
  {
    v3 = 0x657263736C6C7566;
    v4 = 0xEA00000000006E65;
  }

  else
  {
    v4 = 0xE600000000000000;
    v3 = 0x656E696C6E69;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6573756170;
    }

    else
    {
      v9 = 2036427888;
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
    v5 = 0x657263736C6C7566;
    v6 = 0xEA00000000006E65;
    if (a2 != 3)
    {
      v5 = 0x656E696C6E69;
      v6 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1702131053;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
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
    v10 = sub_24F92CE08();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_24F0CD2F4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6574756D6E75;
  v6 = 0x6C75467265746E65;
  v7 = 0xEF6E65657263736CLL;
  if (a1 != 4)
  {
    v6 = 0x6C6C754674697865;
    v7 = 0xEE006E6565726373;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE500000000000000;
  v9 = 0x6573756170;
  if (a1 != 1)
  {
    v9 = 1702131053;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 2036427888;
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
      if (v10 != 0x6574756D6E75)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEF6E65657263736CLL;
      if (v10 != 0x6C75467265746E65)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE006E6565726373;
      if (v10 != 0x6C6C754674697865)
      {
LABEL_34:
        v13 = sub_24F92CE08();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6573756170)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1702131053)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 2036427888)
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

uint64_t sub_24F0CD4E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1954047348;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6D754E656E6F6870;
    }

    else
    {
      v4 = 0x506C616D69636564;
    }

    if (v3 == 2)
    {
      v5 = 0xEB00000000726562;
    }

    else
    {
      v5 = 0xEA00000000006461;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C69616D65;
    }

    else
    {
      v4 = 1954047348;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x6D754E656E6F6870;
  v8 = 0xEB00000000726562;
  if (a2 != 2)
  {
    v7 = 0x506C616D69636564;
    v8 = 0xEA00000000006461;
  }

  if (a2)
  {
    v2 = 0x6C69616D65;
    v6 = 0xE500000000000000;
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
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0CD630(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x79726575516C7275;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x79646F426E6F736ALL;
    }

    else
    {
      v4 = 0x79646F426D726F66;
    }

    v5 = 0xE800000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x726564616568;
    }

    else
    {
      v4 = 0x79726575516C7275;
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
  v7 = 0x79646F426E6F736ALL;
  if (a2 != 2)
  {
    v7 = 0x79646F426D726F66;
  }

  if (a2)
  {
    v2 = 0x726564616568;
    v6 = 0xE600000000000000;
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
    v9 = 0xE800000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_24F92CE08();
  }

  return v10 & 1;
}

uint64_t sub_24F0CD76C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000013;
  v3 = "";
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v7 = "CONTROLLER_REQUIRED";
    }

    else
    {
      v7 = "CONTROLLER_OPTIONAL";
    }

    v6 = (v7 - 32);
    v5 = 0xD000000000000013;
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 0xD000000000000022;
    }

    if (v4)
    {
      v6 = "ONTROLLER_REQUIRED";
    }

    else
    {
      v6 = "";
    }
  }

  if (a2 > 1u)
  {
    v3 = "SIRI_REMOTE_REQUIRED";
    v8 = "CONTROLLER_REQUIRED";
    v9 = a2 == 2;
  }

  else
  {
    v8 = "ONTROLLER_REQUIRED";
    v9 = a2 == 0;
    if (a2)
    {
      v2 = 0xD000000000000014;
    }

    else
    {
      v2 = 0xD000000000000022;
    }
  }

  if (!v9)
  {
    v3 = v8;
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_24F92CE08();
  }

  return v10 & 1;
}

uint64_t sub_24F0CD880(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE300000000000000;
  v5 = 6513005;
  if (a1 != 5)
  {
    v5 = 0x6E6F69736976;
    v4 = 0xE600000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x6863746177;
  if (a1 != 3)
  {
    v7 = 30324;
    v6 = 0xE200000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE300000000000000;
  v9 = 6578544;
  if (a1 != 1)
  {
    v9 = 0x736567617373656DLL;
    v8 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x656E6F6870;
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
        v12 = 0xE300000000000000;
        if (v10 != 6578544)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x736567617373656DLL)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x656E6F6870)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE300000000000000;
      if (v10 != 6513005)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6E6F69736976)
      {
LABEL_39:
        v13 = sub_24F92CE08();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x6863746177)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE200000000000000;
    if (v10 != 30324)
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

uint64_t sub_24F0CDA64(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00397836316E6FLL;
  v3 = 0xD000000000000011;
  v4 = a1;
  if (a1 > 1u)
  {
    v5 = 0xD000000000000014;
    if (v4 == 2)
    {
      v5 = 0xD000000000000017;
      v6 = 0x800000024FA3F070;
    }

    else
    {
      v6 = 0x800000024FA3F090;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0x69746F4D6F726568;
    }

    if (v4)
    {
      v6 = 0x800000024FA3F050;
    }

    else
    {
      v6 = 0xEE00397836316E6FLL;
    }
  }

  v7 = 0xD000000000000017;
  v8 = 0x800000024FA3F090;
  if (a2 == 2)
  {
    v8 = 0x800000024FA3F070;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (a2)
  {
    v2 = 0x800000024FA3F050;
  }

  else
  {
    v3 = 0x69746F4D6F726568;
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
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0CDB98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65726F6373;
  v6 = 0xE600000000000000;
  if (a1 != 5)
  {
    v5 = 0x7365726F6373;
    v4 = 0xE600000000000000;
  }

  v7 = 0x646E65697266;
  if (a1 != 3)
  {
    v7 = 0x6D65766569686361;
    v6 = 0xEB00000000746E65;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x68746957656D6167;
  v9 = 0xEF73726579616C50;
  if (a1 != 1)
  {
    v8 = 0x6957726579616C70;
    v9 = 0xEE00656D61476874;
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

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xEF73726579616C50;
        if (v10 != 0x68746957656D6167)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xEE00656D61476874;
        if (v10 != 0x6957726579616C70)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x65726F6373)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x7365726F6373)
      {
LABEL_39:
        v13 = sub_24F92CE08();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x646E65697266)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xEB00000000746E65;
    if (v10 != 0x6D65766569686361)
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

uint64_t sub_24F0CDDEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x4373726F74696465;
    v10 = 0xED00006563696F68;
    if (a1 != 6)
    {
      v9 = 1701736302;
      v10 = 0xE400000000000000;
    }

    v11 = 0xE800000000000000;
    v12 = 0x746E656964617267;
    if (a1 != 4)
    {
      v12 = 0xD000000000000010;
      v11 = 0x800000024FA42360;
    }

    if (a1 <= 5u)
    {
      v7 = v12;
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
    v3 = 0xE700000000000000;
    v4 = 0x7265764F6B726164;
    v5 = 0xEB0000000079616CLL;
    if (a1 != 2)
    {
      v4 = 0x7463617265746E69;
      v5 = 0xEB00000000657669;
    }

    v6 = 0x726F6C6F63;
    if (a1)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v6 = 0x6B726F77747261;
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
        v13 = 0xED00006563696F68;
        if (v7 != 0x4373726F74696465)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE400000000000000;
        if (v7 != 1701736302)
        {
LABEL_47:
          v16 = sub_24F92CE08();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE800000000000000;
      if (v7 != 0x746E656964617267)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0x800000024FA42360;
      if (v7 != 0xD000000000000010)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v14 = 0x7265764F6B726164;
      v15 = 7954796;
    }

    else
    {
      v14 = 0x7463617265746E69;
      v15 = 6649449;
    }

    v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v7 != v14)
    {
      goto LABEL_47;
    }
  }

  else if (a2)
  {
    v13 = 0xE500000000000000;
    if (v7 != 0x726F6C6F63)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v7 != 0x6B726F77747261)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v16 = 1;
LABEL_48:

  return v16 & 1;
}

uint64_t sub_24F0CE080(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656C6269736976;
  if (a1 != 5)
  {
    v5 = 0x6574656C706D6F63;
    v4 = 0xE900000000000064;
  }

  v6 = 0xE800000000000000;
  v7 = 0x6E65657263536E6FLL;
  if (a1 != 3)
  {
    v7 = 0x656572635366666FLL;
    v6 = 0xE90000000000006ELL;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x65746E4565676170;
  v9 = 0xE900000000000072;
  if (a1 != 1)
  {
    v8 = 0x7469784565676170;
    v9 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x646563616C70;
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

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE900000000000072;
        if (v10 != 0x65746E4565676170)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x7469784565676170)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x646563616C70)
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
      if (v10 != 0x656C6269736976)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE900000000000064;
      if (v10 != 0x6574656C706D6F63)
      {
LABEL_39:
        v13 = sub_24F92CE08();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x6E65657263536E6FLL)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE90000000000006ELL;
    if (v10 != 0x656572635366666FLL)
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

uint64_t sub_24F0CE2CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000072;
  v3 = 0x65706F6C65766564;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x79636176697270;
    }

    else
    {
      v5 = 0x65706F6C65766564;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000072;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE400000000000000;
    v5 = 1634497893;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x74726F70707573;
    }

    else
    {
      v5 = 0x504174726F706572;
    }

    if (v4 == 3)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEE006D656C626F72;
    }
  }

  v7 = 0xE400000000000000;
  v8 = 1634497893;
  v9 = 0xE700000000000000;
  v10 = 0x74726F70707573;
  if (a2 != 3)
  {
    v10 = 0x504174726F706572;
    v9 = 0xEE006D656C626F72;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 0x79636176697270;
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
    v13 = sub_24F92CE08();
  }

  return v13 & 1;
}

uint64_t sub_24F0CE458(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0x437055656E4FLL;
  if (a1 != 6)
  {
    v4 = 0x447055656E4FLL;
  }

  v5 = 0x417055656E4FLL;
  if (a1 != 4)
  {
    v5 = 0x427055656E4FLL;
  }

  if (a1 <= 5u)
  {
    v4 = v5;
  }

  v6 = 0xE300000000000000;
  v7 = 7233862;
  if (a1 != 2)
  {
    v7 = 0x7274656D6D797341;
    v6 = 0xEC0000006C616369;
  }

  v8 = 0x70556565726854;
  if (a1)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v8 = 0x70556F7754;
  }

  if (a1 > 1u)
  {
    v3 = v6;
  }

  else
  {
    v7 = v8;
  }

  if (a1 <= 3u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 3)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (a2 > 3u)
  {
    v11 = 0xE600000000000000;
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        if (v9 != 0x437055656E4FLL)
        {
          goto LABEL_45;
        }
      }

      else if (v9 != 0x447055656E4FLL)
      {
LABEL_45:
        v12 = sub_24F92CE08();
        goto LABEL_46;
      }
    }

    else if (a2 == 4)
    {
      if (v9 != 0x417055656E4FLL)
      {
        goto LABEL_45;
      }
    }

    else if (v9 != 0x427055656E4FLL)
    {
      goto LABEL_45;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0xE300000000000000;
      if (v9 != 7233862)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v11 = 0xEC0000006C616369;
      if (v9 != 0x7274656D6D797341)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x70556565726854)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v11 = 0xE500000000000000;
    if (v9 != 0x70556F7754)
    {
      goto LABEL_45;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_24F0CE69C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x416E6769736564;
  v3 = a1;
  if (a1 > 4u)
  {
    v11 = 0x476E6769736564;
    v12 = 0x486E6769736564;
    if (a1 != 8)
    {
      v12 = 0x496E6769736564;
    }

    if (a1 != 7)
    {
      v11 = v12;
    }

    v13 = 0x456E6769736564;
    if (a1 != 5)
    {
      v13 = 0x466E6769736564;
    }

    if (a1 <= 6u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v11;
    }

    v10 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
    v5 = 0x436E6769736564;
    v6 = 0xE700000000000000;
    v7 = 0x446E6769736564;
    if (a1 != 3)
    {
      v7 = 0x44446E6769736564;
      v6 = 0xEC00000065736E65;
    }

    if (a1 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x426E6769736564;
    if (!a1)
    {
      v8 = 0x416E6769736564;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v3 <= 1)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 > 4u)
  {
    v14 = 0xE700000000000000;
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        if (v9 != 0x456E6769736564)
        {
          goto LABEL_52;
        }
      }

      else if (v9 != 0x466E6769736564)
      {
        goto LABEL_52;
      }

      goto LABEL_49;
    }

    if (a2 == 7)
    {
      if (v9 != 0x476E6769736564)
      {
        goto LABEL_52;
      }

      goto LABEL_49;
    }

    if (a2 == 8)
    {
      if (v9 != 0x486E6769736564)
      {
        goto LABEL_52;
      }

      goto LABEL_49;
    }

    v2 = 0x496E6769736564;
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0xE700000000000000;
        if (v9 != 0x436E6769736564)
        {
          goto LABEL_52;
        }
      }

      else if (a2 == 3)
      {
        v14 = 0xE700000000000000;
        if (v9 != 0x446E6769736564)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v14 = 0xEC00000065736E65;
        if (v9 != 0x44446E6769736564)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_49;
    }

    v14 = 0xE700000000000000;
    if (a2)
    {
      if (v9 != 0x426E6769736564)
      {
        goto LABEL_52;
      }

      goto LABEL_49;
    }
  }

  if (v9 != v2)
  {
LABEL_52:
    v15 = sub_24F92CE08();
    goto LABEL_53;
  }

LABEL_49:
  if (v10 != v14)
  {
    goto LABEL_52;
  }

  v15 = 1;
LABEL_53:

  return v15 & 1;
}

uint64_t sub_24F0CE988(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7265666E69;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1802658148;
    }

    else
    {
      v4 = 0x6867696C746F7073;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE900000000000074;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x746867696CLL;
    }

    else
    {
      v4 = 0x7265666E69;
    }

    v5 = 0xE500000000000000;
  }

  v6 = 0xE400000000000000;
  v7 = 1802658148;
  if (a2 != 2)
  {
    v7 = 0x6867696C746F7073;
    v6 = 0xE900000000000074;
  }

  if (a2)
  {
    v2 = 0x746867696CLL;
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
    v9 = 0xE500000000000000;
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
    v10 = sub_24F92CE08();
  }

  return v10 & 1;
}

uint64_t sub_24F0CEABC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7368564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x676E696461656CLL;
    }

    else
    {
      v4 = 0x676E696C69617274;
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
      v4 = 0x6D6F74746F62;
    }

    else
    {
      v4 = 7368564;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x676E696461656CLL;
  if (a2 != 2)
  {
    v8 = 0x676E696C69617274;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x6D6F74746F62;
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
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0CEBF0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF796C6E4F746E69;
  if (a1 > 3u)
  {
    v3 = 0x800000024FA3ED50;
    v4 = 0xD00000000000001FLL;
    if (a1 != 6)
    {
      v4 = 0x6142656D61476E69;
      v3 = 0xEC00000072656E6ELL;
    }

    v5 = 0x800000024FA3ED00;
    v6 = 0xD000000000000020;
    if (a1 != 4)
    {
      v6 = 0xD00000000000001ELL;
      v5 = 0x800000024FA3ED30;
    }

    v7 = a1 <= 5u;
  }

  else
  {
    v3 = 0x800000024FA3ECC0;
    v4 = 0xD00000000000001BLL;
    if (a1 != 2)
    {
      v4 = 0xD000000000000011;
      v3 = 0x800000024FA3ECE0;
    }

    v5 = 0x800000024FA3EC90;
    if (a1)
    {
      v6 = 0x6F50737365636361;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (a1)
    {
      v5 = 0xEF796C6E4F746E69;
    }

    v7 = a1 <= 1u;
  }

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (v7)
  {
    v9 = v5;
  }

  else
  {
    v9 = v3;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x800000024FA3ED50;
        if (v8 != 0xD00000000000001FLL)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0xEC00000072656E6ELL;
        if (v8 != 0x6142656D61476E69)
        {
LABEL_45:
          v11 = sub_24F92CE08();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x800000024FA3ED00;
      if (v8 != 0xD000000000000020)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v2 = 0x800000024FA3ED30;
      if (v8 != 0xD00000000000001ELL)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v10 = "achievementBanner";
LABEL_40:
      v2 = (v10 - 32) | 0x8000000000000000;
      if (v8 != 0xD000000000000011)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v2 = 0x800000024FA3ECC0;
    if (v8 != 0xD00000000000001BLL)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (!a2)
    {
      v10 = "welcomeBannerOnly";
      goto LABEL_40;
    }

    if (v8 != 0x6F50737365636361)
    {
      goto LABEL_45;
    }
  }

LABEL_43:
  if (v9 != v2)
  {
    goto LABEL_45;
  }

  v11 = 1;
LABEL_46:

  return v11 & 1;
}

uint64_t sub_24F0CEE64(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000072;
  v3 = 0x65706F6C65766564;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x656461637261;
    }

    else
    {
      v5 = 0x6863746177;
    }

    if (v4 == 2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x79726F7473;
    }

    else
    {
      v5 = 0x65706F6C65766564;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE900000000000072;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x656461637261;
  if (a2 != 2)
  {
    v8 = 0x6863746177;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x79726F7473;
    v2 = 0xE500000000000000;
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
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0CEF8C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 2036427888;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1801807219;
    }

    else
    {
      v4 = 0x756A644165746172;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xEA00000000007473;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1886352499;
    }

    else
    {
      v4 = 2036427888;
    }

    v5 = 0xE400000000000000;
  }

  v6 = 0xE400000000000000;
  v7 = 1801807219;
  if (a2 != 2)
  {
    v7 = 0x756A644165746172;
    v6 = 0xEA00000000007473;
  }

  if (a2)
  {
    v2 = 1886352499;
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
    v9 = 0xE400000000000000;
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
    v10 = sub_24F92CE08();
  }

  return v10 & 1;
}

uint64_t sub_24F0CF0B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000063;
  v3 = 0x6974616D6F747561;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x614C656E696C6E69;
    }

    else
    {
      v5 = 0x656E696C6E69;
    }

    if (v4 == 2)
    {
      v6 = 0xEB00000000656772;
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
      v5 = 0x656772616CLL;
    }

    else
    {
      v5 = 0x6974616D6F747561;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE900000000000063;
    }
  }

  v7 = 0x614C656E696C6E69;
  v8 = 0xEB00000000656772;
  if (a2 != 2)
  {
    v7 = 0x656E696C6E69;
    v8 = 0xE600000000000000;
  }

  if (a2)
  {
    v3 = 0x656772616CLL;
    v2 = 0xE500000000000000;
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
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0CF1F4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0xE800000000000000;
    v10 = 0x746E657645707061;
    if (a1 != 6)
    {
      v10 = 0x6553646564697567;
      v9 = 0xEC00000068637261;
    }

    v11 = 0xE600000000000000;
    v12 = 0x656C646E7562;
    if (a1 != 4)
    {
      v12 = 0xD000000000000010;
      v11 = 0x800000024FA42070;
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
    v3 = 0xE700000000000000;
    v4 = 0x6169726F74696465;
    v5 = 0xE90000000000006CLL;
    if (a1 != 2)
    {
      v4 = 0x7275507070416E69;
      v5 = 0xED00006573616863;
    }

    v6 = 0x747265766461;
    if (a1)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v6 = 0x746E65746E6F63;
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
        v13 = 0xE800000000000000;
        if (v7 != 0x746E657645707061)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xEC00000068637261;
        if (v7 != 0x6553646564697567)
        {
LABEL_47:
          v14 = sub_24F92CE08();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE600000000000000;
      if (v7 != 0x656C646E7562)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0x800000024FA42070;
      if (v7 != 0xD000000000000010)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE90000000000006CLL;
      if (v7 != 0x6169726F74696465)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xED00006573616863;
      if (v7 != 0x7275507070416E69)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE600000000000000;
    if (v7 != 0x747265766461)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v7 != 0x746E65746E6F63)
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

uint64_t sub_24F0CF494(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7265666E69;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x65676E61726FLL;
    }

    else
    {
      v4 = 0x6574696877;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
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
      v4 = 1702194274;
    }

    else
    {
      v4 = 0x7265666E69;
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
  v7 = 0xE600000000000000;
  v8 = 0x65676E61726FLL;
  if (a2 != 2)
  {
    v8 = 0x6574696877;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 1702194274;
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
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0CF5B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000022;
  v3 = "reviewSummaryText";
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = "oreKit.playTogetherSparseCount";
    v12 = 0xD000000000000027;
    if (a1 != 6)
    {
      v12 = 0xD000000000000026;
      v11 = "oreKit.homeContentLimit";
    }

    v13 = "oreKit.bagV3OfflineMaxAge";
    v14 = 0xD00000000000002FLL;
    if (a1 != 4)
    {
      v14 = 0xD00000000000002ELL;
      v13 = "oreKit.playTogetherContentLimit";
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0xD000000000000036;
    v6 = "oreKit.debugOverlay";
    v7 = 0xD000000000000029;
    if (a1 == 2)
    {
      v7 = 0xD000000000000022;
    }

    else
    {
      v6 = "oreKit.bagV3MaxAge";
    }

    v8 = "scriptionStateOverride";
    if (a1)
    {
      v5 = 0xD000000000000023;
    }

    else
    {
      v8 = "reviewSummaryText";
    }

    if (a1 <= 1u)
    {
      v9 = v5;
    }

    else
    {
      v9 = v7;
    }

    if (v4 <= 1)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "oreKit.playTogetherSparseCount";
        v2 = 0xD000000000000027;
      }

      else
      {
        v3 = "oreKit.homeContentLimit";
        v2 = 0xD000000000000026;
      }
    }

    else if (a2 == 4)
    {
      v3 = "oreKit.bagV3OfflineMaxAge";
      v2 = 0xD00000000000002FLL;
    }

    else
    {
      v3 = "oreKit.playTogetherContentLimit";
      v2 = 0xD00000000000002ELL;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = "oreKit.debugOverlay";
    }

    else
    {
      v3 = "oreKit.bagV3MaxAge";
      v2 = 0xD000000000000029;
    }
  }

  else if (a2)
  {
    v3 = "scriptionStateOverride";
    v2 = 0xD000000000000023;
  }

  else
  {
    v2 = 0xD000000000000036;
  }

  if (v9 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_24F92CE08();
  }

  return v15 & 1;
}

uint64_t sub_24F0CF7C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x657461647075;
    }

    else
    {
      v4 = 0x6F6C6E776F646572;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEA00000000006461;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6573616863727570;
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
  v7 = 0xE600000000000000;
  v8 = 0x657461647075;
  if (a2 != 2)
  {
    v8 = 0x6F6C6E776F646572;
    v7 = 0xEA00000000006461;
  }

  if (a2)
  {
    v2 = 0x6573616863727570;
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
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0CF904(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x534E4F4954504FLL;
  if (a1 != 6)
  {
    v5 = 0x4543415254;
    v4 = 0xE500000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x4554454C4544;
  if (a1 != 4)
  {
    v7 = 0x5443454E4E4F43;
    v6 = 0xE700000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE400000000000000;
  v9 = 1145128264;
  if (a1 != 2)
  {
    v9 = 5526864;
    v8 = 0xE300000000000000;
  }

  v10 = 1414745936;
  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v10 = 5522759;
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
        v13 = 0xE700000000000000;
        if (v11 != 0x534E4F4954504FLL)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x4543415254)
        {
LABEL_45:
          v14 = sub_24F92CE08();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x4554454C4544)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x5443454E4E4F43)
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
      if (v11 != 1145128264)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE300000000000000;
      if (v11 != 5526864)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE400000000000000;
    if (v11 != 1414745936)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE300000000000000;
    if (v11 != 5522759)
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

uint64_t sub_24F0CFB34(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x800000024FA41D90;
      v3 = 0xD000000000000012;
    }

    else
    {
      v4 = 0xE400000000000000;
      v3 = 1701736302;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x726F6C6F63;
    }

    if (v2)
    {
      v4 = 0x800000024FA41D70;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x800000024FA41D90;
      if (v3 != 0xD000000000000012)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xE400000000000000;
      if (v3 != 1701736302)
      {
LABEL_26:
        v7 = sub_24F92CE08();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0x726F6C6F63;
    }

    if (a2)
    {
      v6 = 0x800000024FA41D70;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_24F0CFC84(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C6C616D73;
  if (a1 > 1u)
  {
    v4 = a1 == 2;
    v3 = 0xEA00000000006567;
    if (a1 == 2)
    {
      v5 = 0x72614C6172747865;
    }

    else
    {
      v5 = 0x646578696DLL;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = a1 == 0;
    if (a1)
    {
      v5 = 0x656772616CLL;
    }

    else
    {
      v5 = 0x6C6C616D73;
    }
  }

  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x72614C6172747865;
  v8 = 0xEA00000000006567;
  if (a2 != 2)
  {
    v7 = 0x646578696DLL;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x656772616CLL;
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
    v10 = 0xE500000000000000;
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
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0CFDB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6552686372616573;
    }

    else
    {
      v5 = 0x614C686372616573;
    }

    if (v2)
    {
      v6 = 0xED000073746C7573;
    }

    else
    {
      v6 = 0xED0000676E69646ELL;
    }
  }

  else
  {
    v3 = 0x50746375646F7270;
    v4 = 0xEF4C414D59656761;
    if (a1 != 3)
    {
      v3 = 0xD00000000000001DLL;
      v4 = 0x800000024FA41CD0;
    }

    if (a1 == 2)
    {
      v5 = 0x7961646F74;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x6552686372616573;
    }

    else
    {
      v11 = 0x614C686372616573;
    }

    if (a2)
    {
      v10 = 0xED000073746C7573;
    }

    else
    {
      v10 = 0xED0000676E69646ELL;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x50746375646F7270;
    v8 = 0x800000024FA41CD0;
    if (a2 == 3)
    {
      v8 = 0xEF4C414D59656761;
    }

    else
    {
      v7 = 0xD00000000000001DLL;
    }

    if (a2 == 2)
    {
      v9 = 0x7961646F74;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE500000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_24F92CE08();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_24F0CFF70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE300000000000000;
    v12 = 0xE600000000000000;
    v13 = 0x6D6F74746F62;
    if (a1 != 2)
    {
      v13 = 0x676E696C69617274;
      v12 = 0xE800000000000000;
    }

    v14 = 0x676E696461656CLL;
    if (a1)
    {
      v11 = 0xE700000000000000;
    }

    else
    {
      v14 = 7368564;
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
    v3 = 0x654C6D6F74746F62;
    v4 = 0xED0000676E696461;
    v5 = 0x72546D6F74746F62;
    v6 = 0xEE00676E696C6961;
    if (a1 != 7)
    {
      v5 = 0x7265746E6563;
      v6 = 0xE600000000000000;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x696461654C706F74;
    v8 = 0xEA0000000000676ELL;
    if (a1 != 4)
    {
      v7 = 0x6C69617254706F74;
      v8 = 0xEB00000000676E69;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
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
        v15 = 0xE600000000000000;
        if (v9 != 0x6D6F74746F62)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE800000000000000;
        if (v9 != 0x676E696C69617274)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x676E696461656CLL)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE300000000000000;
      if (v9 != 7368564)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xEA0000000000676ELL;
      if (v9 != 0x696461654C706F74)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xEB00000000676E69;
      if (v9 != 0x6C69617254706F74)
      {
LABEL_52:
        v16 = sub_24F92CE08();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xED0000676E696461;
    if (v9 != 0x654C6D6F74746F62)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xEE00676E696C6961;
    if (v9 != 0x72546D6F74746F62)
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

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_24F0D0260(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000014;
      v4 = 0x800000024FA40FB0;
    }

    else
    {
      v3 = 0x65736E65646E6F63;
      v4 = 0xEF68637261655364;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x64417465736E69;
    }

    else
    {
      v3 = 25697;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x800000024FA40FB0;
      if (v3 != 0xD000000000000014)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xEF68637261655364;
      if (v3 != 0x65736E65646E6F63)
      {
LABEL_26:
        v7 = sub_24F92CE08();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x64417465736E69;
    }

    else
    {
      v5 = 25697;
    }

    if (a2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE200000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_24F0D03CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1802398060;
  v3 = a1;
  v4 = 0xE400000000000000;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 1954047348;
    }

    else
    {
      v5 = 0xD000000000000021;
    }

    if (v3 == 2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0x800000024FA40560;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x7473694C6F666E69;
    }

    else
    {
      v5 = 1802398060;
    }

    if (v3)
    {
      v6 = 0xEC0000006D657449;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  v7 = 1954047348;
  v8 = 0x800000024FA40560;
  if (a2 == 2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xD000000000000021;
  }

  if (a2)
  {
    v2 = 0x7473694C6F666E69;
    v4 = 0xEC0000006D657449;
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
    v10 = v4;
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
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0D0500(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x722D686372616573;
    }

    else
    {
      v3 = 0x6C2D686372616573;
    }

    if (v2)
    {
      v4 = 0xEE0073746C757365;
    }

    else
    {
      v4 = 0xEE00676E69646E61;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x7961646F74;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0xD000000000000021;
    }

    if (v2 == 3)
    {
      v4 = 0x800000024FA40510;
    }

    else
    {
      v4 = 0x800000024FA40530;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x722D686372616573;
    }

    else
    {
      v7 = 0x6C2D686372616573;
    }

    if (a2)
    {
      v6 = 0xEE0073746C757365;
    }

    else
    {
      v6 = 0xEE00676E69646E61;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xE500000000000000;
    if (v3 != 0x7961646F74)
    {
LABEL_37:
      v8 = sub_24F92CE08();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0xD000000000000021;
    }

    if (a2 == 3)
    {
      v6 = 0x800000024FA40510;
    }

    else
    {
      v6 = 0x800000024FA40530;
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

uint64_t sub_24F0D06B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0x654C6D6F74746F62;
    v12 = 0xED0000676E696461;
    v13 = 0xE600000000000000;
    v14 = 0x6D6F74746F62;
    if (a1 != 8)
    {
      v14 = 0x72546D6F74746F62;
      v13 = 0xEE00676E696C6961;
    }

    if (a1 != 7)
    {
      v11 = v14;
      v12 = v13;
    }

    v15 = 0xE600000000000000;
    v16 = 0x7265746E6563;
    if (a1 != 5)
    {
      v16 = 0x676E696C69617274;
      v15 = 0xE800000000000000;
    }

    if (a1 <= 6u)
    {
      v9 = v16;
    }

    else
    {
      v9 = v11;
    }

    if (v2 <= 6)
    {
      v10 = v15;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xE300000000000000;
    v5 = 7368564;
    v6 = 0x6C69617254706F74;
    v7 = 0xEB00000000676E69;
    if (a1 != 3)
    {
      v6 = 0x676E696461656CLL;
      v7 = 0xE700000000000000;
    }

    if (a1 != 2)
    {
      v5 = v6;
      v4 = v7;
    }

    v8 = 0x696461654C706F74;
    if (a1)
    {
      v3 = 0xEA0000000000676ELL;
    }

    else
    {
      v8 = 1869768058;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v17 = 0xE600000000000000;
        if (v9 != 0x7265746E6563)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v17 = 0xE800000000000000;
        if (v9 != 0x676E696C69617274)
        {
LABEL_57:
          v18 = sub_24F92CE08();
          goto LABEL_58;
        }
      }
    }

    else if (a2 == 7)
    {
      v17 = 0xED0000676E696461;
      if (v9 != 0x654C6D6F74746F62)
      {
        goto LABEL_57;
      }
    }

    else if (a2 == 8)
    {
      v17 = 0xE600000000000000;
      if (v9 != 0x6D6F74746F62)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v17 = 0xEE00676E696C6961;
      if (v9 != 0x72546D6F74746F62)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v17 = 0xEA0000000000676ELL;
      if (v9 != 0x696461654C706F74)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v17 = 0xE400000000000000;
      if (v9 != 1869768058)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 == 2)
  {
    v17 = 0xE300000000000000;
    if (v9 != 7368564)
    {
      goto LABEL_57;
    }
  }

  else if (a2 == 3)
  {
    v17 = 0xEB00000000676E69;
    if (v9 != 0x6C69617254706F74)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v17 = 0xE700000000000000;
    if (v9 != 0x676E696461656CLL)
    {
      goto LABEL_57;
    }
  }

  if (v10 != v17)
  {
    goto LABEL_57;
  }

  v18 = 1;
LABEL_58:

  return v18 & 1;
}

uint64_t sub_24F0D09DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x656772616CLL;
  v6 = 0x72614C6172747865;
  v7 = 0xEA00000000006567;
  if (a1 != 4)
  {
    v6 = 1869768040;
    v7 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE700000000000000;
  v9 = 0x746361706D6F63;
  if (a1 != 1)
  {
    v9 = 0x7469617274726F70;
    v8 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6C6C616D73;
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
      v12 = 0xE500000000000000;
      if (v10 != 0x656772616CLL)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEA00000000006567;
      if (v10 != 0x72614C6172747865)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1869768040)
      {
LABEL_34:
        v13 = sub_24F92CE08();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x746361706D6F63)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x7469617274726F70)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x6C6C616D73)
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

uint64_t sub_24F0D0BB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006275487365;
  v3 = 0x676E656C6C616863;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000019;
    }

    else
    {
      v5 = 0x6669636570736E75;
    }

    if (v4 == 2)
    {
      v6 = 0x800000024FA40430;
    }

    else
    {
      v6 = 0xEB00000000646569;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x61746544656D6167;
    }

    else
    {
      v5 = 0x676E656C6C616863;
    }

    if (v4)
    {
      v6 = 0xEB00000000736C69;
    }

    else
    {
      v6 = 0xED00006275487365;
    }
  }

  v7 = 0xD000000000000019;
  v8 = 0x800000024FA40430;
  if (a2 != 2)
  {
    v7 = 0x6669636570736E75;
    v8 = 0xEB00000000646569;
  }

  if (a2)
  {
    v3 = 0x61746544656D6167;
    v2 = 0xEB00000000736C69;
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
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0D0D1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000072;
  v3 = 0x65746E4565676170;
  v4 = a1;
  v5 = 0xE500000000000000;
  v6 = 0x72656D6974;
  if (a1 != 5)
  {
    v6 = 0x726576656ELL;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7265746E45707061;
  if (a1 != 3)
  {
    v8 = 0x747475426B636162;
    v7 = 0xEA00000000006E6FLL;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x7469784565676170;
  if (a1 != 1)
  {
    v10 = 0x74697845707061;
    v9 = 0xE700000000000000;
  }

  if (!a1)
  {
    v10 = 0x65746E4565676170;
    v9 = 0xE900000000000072;
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
        v2 = 0xE800000000000000;
        if (v11 != 0x7469784565676170)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x74697845707061)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_35;
    }

LABEL_31:
    if (v11 != v3)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  if (a2 > 4u)
  {
    v2 = 0xE500000000000000;
    if (a2 == 5)
    {
      v13 = 1701669236;
    }

    else
    {
      v13 = 1702258030;
    }

    if (v11 != (v13 & 0xFFFF0000FFFFFFFFLL | 0x7200000000))
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  if (a2 != 3)
  {
    v3 = 0x747475426B636162;
    v2 = 0xEA00000000006E6FLL;
    goto LABEL_31;
  }

  v2 = 0xE800000000000000;
  if (v11 != 0x7265746E45707061)
  {
    goto LABEL_37;
  }

LABEL_35:
  if (v12 != v2)
  {
LABEL_37:
    v14 = sub_24F92CE08();
    goto LABEL_38;
  }

  v14 = 1;
LABEL_38:

  return v14 & 1;
}

uint64_t sub_24F0D0F28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6775626564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C616E7265746E69;
    }

    else
    {
      v4 = 0x69746375646F7270;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEA00000000006E6FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x65677265766E6F63;
    }

    else
    {
      v4 = 0x6775626564;
    }

    if (v3)
    {
      v5 = 0xEB0000000065636ELL;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x6C616E7265746E69;
  if (a2 != 2)
  {
    v8 = 0x69746375646F7270;
    v7 = 0xEA00000000006E6FLL;
  }

  if (a2)
  {
    v2 = 0x65677265766E6F63;
    v6 = 0xEB0000000065636ELL;
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
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0D1080(unsigned __int8 a1, unsigned __int8 a2)
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
      v3 = 0x65676150656D6167;
    }

    if (v2)
    {
      v4 = 0x800000024FA40280;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x46776F4E79616C70;
    v4 = 0xEB00000000646565;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6552686372616573;
    }

    else
    {
      v3 = 0x79616C7265766FLL;
    }

    if (v2 == 3)
    {
      v4 = 0xED000073746C7573;
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
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0x65676150656D6167;
    }

    if (a2)
    {
      v5 = 0x800000024FA40280;
    }

    else
    {
      v5 = 0xE800000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEB00000000646565;
    if (v3 != 0x46776F4E79616C70)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xED000073746C7573;
    if (v3 != 0x6552686372616573)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    if (v3 != 0x79616C7265766FLL)
    {
LABEL_34:
      v7 = sub_24F92CE08();
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

uint64_t sub_24F0D124C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00736C69617465;
  v3 = 0x44746E756F636361;
  v4 = a1;
  v5 = 0xD000000000000013;
  v6 = 0x800000024FA40260;
  if (a1 != 6)
  {
    v5 = 0x6573616863727570;
    v6 = 0xEF79726F74736948;
  }

  v7 = 0xE800000000000000;
  v8 = 0x74666947646E6573;
  if (a1 != 4)
  {
    v8 = 0x6853796C696D6166;
    v7 = 0xED0000676E697261;
  }

  if (a1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6D6565646572;
  if (a1 != 2)
  {
    v10 = 0x73646E7546646461;
    v9 = 0xE800000000000000;
  }

  v11 = 0x6341657461657263;
  v12 = 0xED0000746E756F63;
  if (!a1)
  {
    v11 = 0x44746E756F636361;
    v12 = 0xEE00736C69617465;
  }

  if (a1 <= 1u)
  {
    v10 = v11;
    v9 = v12;
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
        v2 = 0x800000024FA40260;
        if (v13 != 0xD000000000000013)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xEF79726F74736948;
        if (v13 != 0x6573616863727570)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      if (a2 != 4)
      {
        v15 = 0x6853796C696D6166;
        v16 = 0x676E697261;
LABEL_34:
        v2 = v16 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        if (v13 != v15)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v2 = 0xE800000000000000;
      if (v13 != 0x74666947646E6573)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE600000000000000;
        if (v13 != 0x6D6565646572)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v2 = 0xE800000000000000;
      v3 = 0x73646E7546646461;
    }

    else if (a2)
    {
      v15 = 0x6341657461657263;
      v16 = 0x746E756F63;
      goto LABEL_34;
    }

    if (v13 != v3)
    {
LABEL_41:
      v17 = sub_24F92CE08();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v17 = 1;
LABEL_42:

  return v17 & 1;
}

uint64_t sub_24F0D14EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6D6565646572;
    }

    else
    {
      v4 = 0x746E756F636361;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1952868711;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6D6F74737563;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x79746972616863;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6D6565646572;
    }

    else
    {
      v9 = 0x746E756F636361;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
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
    v6 = 0x6D6F74737563;
    if (a2 != 3)
    {
      v6 = 0x79746972616863;
      v5 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1952868711;
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
    v10 = sub_24F92CE08();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_24F0D1658(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000013;
  v3 = "macOS";
  v4 = a1;
  v5 = 0xD000000000000016;
  if (a1 == 4)
  {
    v6 = "didBecomeArcadeTrialEligible";
  }

  else
  {
    v5 = 0xD000000000000013;
    v6 = "didBecomeNonSubscribed";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000001CLL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v6 = "didSubscribeToArcade";
  }

  if (a1 == 1)
  {
    v8 = 0xD000000000000013;
  }

  else
  {
    v8 = 0xD000000000000014;
  }

  if (v4 == 1)
  {
    v9 = "arcadeTabDidComeOnScreen";
  }

  else
  {
    v9 = "arcadePageDidAppear";
  }

  if (!v4)
  {
    v8 = 0xD000000000000018;
    v9 = "macOS";
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
      v2 = 0xD00000000000001CLL;
      v3 = "didSubscribeToArcade";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000016;
      v3 = "didBecomeArcadeTrialEligible";
    }

    else
    {
      v3 = "didBecomeNonSubscribed";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v3 = "arcadeTabDidComeOnScreen";
    }

    else
    {
      v2 = 0xD000000000000014;
      v3 = "arcadePageDidAppear";
    }
  }

  else
  {
    v2 = 0xD000000000000018;
  }

  if (v8 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0D17C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x656E696665646E75;
  v4 = a1;
  v5 = 0xE400000000000000;
  v6 = 1397716596;
  v7 = 0xE700000000000000;
  v8 = 0x534F6863746177;
  if (a1 != 4)
  {
    v8 = 0x534F6E6F69736976;
    v7 = 0xE800000000000000;
  }

  if (a1 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 5459817;
  if (a1 != 1)
  {
    v10 = 0x534F63616DLL;
    v9 = 0xE500000000000000;
  }

  if (!a1)
  {
    v10 = 0x656E696665646E75;
    v9 = 0xE900000000000064;
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

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE400000000000000;
      if (v11 != 1397716596)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x534F6863746177)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x534F6E6F69736976)
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
        v2 = 0xE300000000000000;
        if (v11 != 5459817)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE500000000000000;
      v3 = 0x534F63616DLL;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_24F92CE08();
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

Swift::Bool __swiftcall RestrictionsProtocol.isAgeRestricted(bundleId:contentRating:)(Swift::String_optional bundleId, Swift::Int contentRating)
{
  v4 = v3;
  v5 = v2;
  object = bundleId.value._object;
  countAndFlagsBits = bundleId.value._countAndFlagsBits;
  if ((*(v3 + 24))())
  {
    if ((*(v4 + 8))(v5, v4) >= contentRating)
    {
      return 0;
    }

    v9 = ASKDeviceTypeGetCurrent();
    v10 = sub_24F92B0D8();
    v12 = v11;
    if (v10 == sub_24F92B0D8() && v12 == v13)
    {

      return 0;
    }

    v15 = sub_24F92CE08();

    if (v15)
    {
      return 0;
    }

    if (object)
    {
      v17 = (*(v4 + 16))(v5, v4);
      if (*(v17 + 16) && (v18 = sub_24E76D644(countAndFlagsBits, object), (v19 & 1) != 0))
      {
        v20 = *(*(v17 + 56) + 8 * v18);

        if (v20 >= contentRating)
        {
          return 0;
        }
      }

      else
      {
      }
    }
  }

  return 1;
}

BOOL RestrictionsProtocol.doesAllow(_:properties:)(char *a1, uint64_t a2)
{
  v10 = *a1;
  if (a2)
  {
    v3 = *(a2 + 40);
    v2 = *(a2 + 48);
    v4 = *(a2 + 128);
    v5 = *(a2 + 136);
    if (*(a2 + 16) <= 1u || *(a2 + 16) == 2)
    {
      v6 = sub_24F92CE08();
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
    v4 = 0;
    v3 = 0;
    v2 = 0;
    v5 = 1;
  }

  v7.value._countAndFlagsBits = v3;
  v7.value._object = v2;
  v11.value = v4;
  v11.is_nil = v5;
  v8 = RestrictionsProtocol.doesAllow(_:bundleId:contentRating:isArcadeApp:)(&v10, v7, v11, v6 & 1);

  return v8;
}

uint64_t RestrictionsCheckIntent.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

Swift::Bool __swiftcall RestrictionsProtocol.doesAllow(_:bundleId:contentRating:isArcadeApp:)(GameStoreKit::RestrictionsCheckIntent _, Swift::String_optional bundleId, Swift::Int_optional contentRating, Swift::Bool isArcadeApp)
{
  v6 = v5;
  v7 = v4;
  is_nil = contentRating.is_nil;
  value = contentRating.value;
  object = bundleId.value._object;
  countAndFlagsBits = bundleId.value._countAndFlagsBits;
  v13 = *_;
  if (((*(v5 + 24))() & 1) == 0 || ((*(v6 + 40))(v7, v6) & 1) != 0 && !isArcadeApp)
  {
    v14 = 0;
    return v14 & 1;
  }

  if (v13)
  {
    if (is_nil)
    {
      v14 = 1;
      return v14 & 1;
    }

LABEL_11:
    v17.value._countAndFlagsBits = countAndFlagsBits;
    v17.value._object = object;
    v14 = !RestrictionsProtocol.isAgeRestricted(bundleId:contentRating:)(v17, value);
    return v14 & 1;
  }

  v16 = (*(v6 + 48))(v7, v6);
  v14 = v16 ^ 1;
  if ((v16 & 1) == 0 && !is_nil)
  {
    goto LABEL_11;
  }

  return v14 & 1;
}

unint64_t sub_24F0D1E00()
{
  result = qword_27F239078;
  if (!qword_27F239078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239078);
  }

  return result;
}

unint64_t sub_24F0D1E58()
{
  result = qword_27F239080;
  if (!qword_27F239080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239080);
  }

  return result;
}

uint64_t sub_24F0D1F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239090);
  MEMORY[0x28223BE20](v3);
  v5 = v12 - v4;
  type metadata accessor for VideoPlaybackCoordinator();
  sub_24F0D221C();
  v6 = sub_24F923628();
  v7 = sub_24F922F98();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2390A0);
  (*(*(v8 - 8) + 16))(v5, a1, v8);
  v9 = &v5[*(v3 + 36)];
  *v9 = v7;
  v9[1] = v6;
  swift_allocObject();
  v10 = sub_24F923628();
  swift_unknownObjectWeakInit();

  sub_24F0D22B4();
  sub_24F925F28();

  return sub_24F0D2398(v5);
}

void sub_24F0D20E4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_visibleVideoFrames;
    swift_beginAccess();
    v5 = *&v3[v4];

    v6 = sub_24F7CDA88(v5, a1);

    if ((v6 & 1) == 0)
    {
      v7 = *&v3[v4];
      *&v3[v4] = a1;

      sub_24EEC4000(v7);

      sub_24EEC6054();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24F923098();

      if ((v8 & 1) == 0)
      {
        sub_24EEC66B8();
      }
    }
  }
}

unint64_t sub_24F0D221C()
{
  result = qword_27F239098;
  if (!qword_27F239098)
  {
    type metadata accessor for VideoPlaybackCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239098);
  }

  return result;
}

uint64_t sub_24F0D2274()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_24F0D22B4()
{
  result = qword_27F2390A8;
  if (!qword_27F2390A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239090);
    sub_24E602068(&qword_27F2390B0, &qword_27F2390A0);
    sub_24E602068(&qword_27F2390B8, &qword_27F2390C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2390A8);
  }

  return result;
}

uint64_t sub_24F0D2398(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F0D2408()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239090);
  sub_24F0D22B4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F0D2494(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[9];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227328);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[11];

  return v17(v18, a2, v16);
}

uint64_t sub_24F0D26D4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227328);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[11];

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for ActivityInviteCard()
{
  result = qword_27F2390C8;
  if (!qword_27F2390C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F0D294C()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
    if (v1 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
      if (v2 <= 0x3F)
      {
        sub_24F0D2AEC(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CommonCardAttributes(319);
          if (v4 <= 0x3F)
          {
            sub_24F0D2AEC(319, &qword_27F213FD0, MEMORY[0x277D21C48]);
            if (v5 <= 0x3F)
            {
              sub_24E6BCB04();
              if (v6 <= 0x3F)
              {
                sub_24F0D2AEC(319, &qword_27F22DA50, type metadata accessor for PlayerAvatar);
                if (v7 <= 0x3F)
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
}

void sub_24F0D2AEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24F0D2B40(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x4D747865746E6F63;
    if (a1 != 2)
    {
      v6 = 0xD000000000000011;
    }

    if (a1)
    {
      v5 = 0x6575676573;
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
    v1 = 0x48746361706D6F63;
    v2 = 0x4172657469766E69;
    if (a1 != 7)
    {
      v2 = 0x7265764F6E497369;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000014;
    if (a1 != 4)
    {
      v3 = 0x6E6F6349656D6167;
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

uint64_t sub_24F0D2C80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227328);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v41 - v6;
  v46 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v46);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2390E8);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v16 = &v41 - v15;
  v17 = type metadata accessor for ActivityInviteCard();
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v19 + 40) = 0u;
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  *(v19 + 56) = 0u;
  *(v19 + 9) = 0;
  v51 = v19 + 40;
  sub_24E61DA68(&v55, (v19 + 40), qword_27F21B590);
  v52 = v17;
  v20 = *(v17 + 24);
  v21 = sub_24F92A6D8();
  v22 = *(*(v21 - 8) + 56);
  v54 = v20;
  v22(&v19[v20], 1, 1, v21);
  v23 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24F0D3938();
  v48 = v16;
  v24 = v50;
  sub_24F92D108();
  if (v24)
  {
    v26 = v51;
    __swift_destroy_boxed_opaque_existential_1(v53);
    sub_24E601704(v26, qword_27F24EC90);
    return sub_24E601704(&v19[v54], &qword_27F215440);
  }

  else
  {
    v50 = v14;
    v41 = v8;
    v42 = v11;
    v25 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v58 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v27 = v56;
    *v19 = v55;
    *(v19 + 1) = v27;
    *(v19 + 4) = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v58 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v28 = v25;
    sub_24E61DA68(&v55, v51, qword_27F24EC90);
    LOBYTE(v55) = 2;
    sub_24E65CAA0();
    v29 = v50;
    sub_24F92CC68();
    sub_24E61DA68(v29, &v19[v54], &qword_27F215440);
    sub_24F929608();
    LOBYTE(v55) = 3;
    sub_24F0D398C(&qword_27F213F48, MEMORY[0x277D21F70]);
    v30 = v42;
    sub_24F92CC18();
    v31 = v52;
    sub_24E6009C8(v30, &v19[v52[7]], &qword_27F213E68);
    LOBYTE(v55) = 4;
    sub_24F0D398C(&qword_27F219690, type metadata accessor for CommonCardAttributes);
    v32 = v41;
    sub_24F92CC68();
    sub_24E706B90(v32, &v19[v31[8]]);
    sub_24F9289E8();
    LOBYTE(v55) = 5;
    sub_24F0D398C(&qword_27F214018, MEMORY[0x277D21C48]);
    v33 = v45;
    sub_24F92CC18();
    sub_24E6009C8(v33, &v19[v31[9]], &qword_27F213FB0);
    LOBYTE(v55) = 6;
    v34 = sub_24F92CBC8();
    v35 = &v19[v31[10]];
    *v35 = v34;
    v35[1] = v36;
    type metadata accessor for PlayerAvatar(0);
    LOBYTE(v55) = 7;
    sub_24F0D398C(&qword_27F2185A0, type metadata accessor for PlayerAvatar);
    v37 = v44;
    sub_24F92CC18();
    sub_24E6009C8(v37, &v19[v31[11]], &qword_27F227328);
    LOBYTE(v55) = 8;
    v38 = v48;
    v39 = sub_24F92CC38();
    (*(v28 + 8))(v38, v49);
    v19[v31[12]] = v39 & 1;
    sub_24F0D39D4(v19, v43, type metadata accessor for ActivityInviteCard);
    __swift_destroy_boxed_opaque_existential_1(v53);
    return sub_24F0D3A3C(v19, type metadata accessor for ActivityInviteCard);
  }
}

uint64_t sub_24F0D36BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F0D3BB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F0D36E4(uint64_t a1)
{
  v2 = sub_24F0D3938();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F0D3720(uint64_t a1)
{
  v2 = sub_24F0D3938();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F0D3794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

uint64_t sub_24F0D386C(uint64_t a1)
{
  *(a1 + 8) = sub_24F0D398C(&qword_27F21AA78, type metadata accessor for ActivityInviteCard);
  result = sub_24F0D398C(&qword_27F2390D8, type metadata accessor for ActivityInviteCard);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24F0D3938()
{
  result = qword_27F2390F0;
  if (!qword_27F2390F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2390F0);
  }

  return result;
}

uint64_t sub_24F0D398C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F0D39D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F0D3A3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F0D3AB0()
{
  result = qword_27F2390F8;
  if (!qword_27F2390F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2390F8);
  }

  return result;
}

unint64_t sub_24F0D3B08()
{
  result = qword_27F239100;
  if (!qword_27F239100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239100);
  }

  return result;
}

unint64_t sub_24F0D3B60()
{
  result = qword_27F239108;
  if (!qword_27F239108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239108);
  }

  return result;
}

uint64_t sub_24F0D3BB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA46110 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x48746361706D6F63 && a2 == 0xEE00676E69646165 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4172657469766E69 && a2 == 0xED00007261746176 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7265764F6E497369 && a2 == 0xEB0000000079616CLL)
  {

    return 8;
  }

  else
  {
    v6 = sub_24F92CE08();

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

__n128 ProductPageIntent.init(url:preloading:referrerData:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(a3 + 32);
  v9 = *(a3 + 40);
  *a4 = 0xD000000000000011;
  *(a4 + 1) = 0x800000024F9C7D60;
  v10 = type metadata accessor for ProductPageIntent();
  v11 = v10[5];
  v12 = sub_24F91F4A8();
  v15 = *(a3 + 16);
  v16 = *a3;
  (*(*(v12 - 8) + 32))(&a4[v11], a1, v12);
  a4[v10[6]] = a2;
  v13 = &a4[v10[7]];
  result = v16;
  *v13 = v16;
  *(v13 + 1) = v15;
  *(v13 + 4) = v8;
  v13[40] = v9;
  return result;
}

uint64_t type metadata accessor for ProductPageIntent()
{
  result = qword_27F239120;
  if (!qword_27F239120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double ProductPageIntent.init(deserializing:using:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v54 = a2;
  v5 = sub_24F9285B8();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v44 - v8;
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v46 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v19 = sub_24F91F4A8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v50 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a3;
  *a3 = 0xD000000000000011;
  a3[1] = 0x800000024F9C7D60;
  v59 = a1;
  sub_24F928398();
  sub_24F928268();
  v22 = v18;
  v48 = *(v11 + 8);
  v49 = v10;
  v23 = v11 + 8;
  v48(v22, v10);
  if ((*(v20 + 48))(v9, 1, v19) == 1)
  {
    sub_24E601704(v9, &qword_27F228530);
    v24 = sub_24F92AC38();
    sub_24F0D49E0(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v26 = v25;
    v27 = type metadata accessor for ProductPageIntent();
    *v26 = 7107189;
    v26[1] = 0xE300000000000000;
    v26[2] = v27;
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D22530], v24);
    swift_willThrow();
    (*(v52 + 8))(v54, v53);
    v48(v59, v49);
  }

  else
  {
    v29 = v50;
    (*(v20 + 32))(v50, v9, v19);
    sub_24F928398();
    v30 = sub_24F928278();
    v31 = v48;
    v32 = v49;
    v44 = v23;
    v48(v15, v49);
    v33 = type metadata accessor for ProductPageIntent();
    v34 = *(v33 + 20);
    v35 = v33;
    v45 = v33;
    v36 = v51;
    (*(v20 + 16))(v51 + v34, v29, v19);
    *(v36 + *(v35 + 24)) = v30 & 1;
    sub_24F928398();
    v37 = v52;
    v38 = v53;
    v39 = v54;
    (*(v52 + 16))(v47, v54, v53);
    sub_24EC55728();
    sub_24F929548();
    (*(v37 + 8))(v39, v38);
    v31(v59, v32);
    (*(v20 + 8))(v50, v19);
    v40 = v57;
    v41 = v58;
    v42 = v51 + *(v45 + 28);
    result = *&v55;
    v43 = v56;
    *v42 = v55;
    *(v42 + 1) = v43;
    *(v42 + 4) = v40;
    v42[40] = v41;
  }

  return result;
}

uint64_t ProductPageIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ProductPageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductPageIntent() + 20);
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void ProductPageIntent.referrerData.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ProductPageIntent() + 28);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(v3 + 40);
  *(a1 + 40) = v9;

  sub_24EA145F0(v4, v5, v6, v7, v8, v9);
}

JSValue __swiftcall ProductPageIntent.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = objc_opt_self();
  result.super.isa = [v4 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_10;
  }

  isa = result.super.isa;
  v7 = type metadata accessor for ProductPageIntent();
  v8 = isa;
  sub_24F91F398();
  v9 = [v4 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_24F92C328();
  v10 = [v4 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_24F92C328();
  if (*(v2 + *(v7 + 28) + 8) == 1)
  {
    v11 = in.super.isa;
    v12 = 0;
  }

  else
  {
    v15 = sub_24EDC3010();
    v13 = in.super.isa;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
    v12 = sub_24F92CDE8();
    sub_24E601704(&v15, &qword_27F251730);
  }

  v14 = [v4 valueWithObject:v12 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (v14)
  {
    sub_24F92C328();

    return v8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_24F0D49E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F0D4A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F91F4A8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F0D4B00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F91F4A8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24F0D4BA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_24F0D4C00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_24F0D4C90@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v38 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239138);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239140);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239148);
  MEMORY[0x28223BE20](v19);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239150);
  MEMORY[0x28223BE20](v22);
  v24 = &v37 - v23;
  v25 = *a1;
  v40 = v16;
  v41 = a4;
  v39 = v26;
  if (v25 <= 3)
  {
    if (v25 > 1)
    {
      if (v25 != 2)
      {
        goto LABEL_14;
      }

      v43 = *(a1 + 3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
      sub_24F926F38();
      if (v46 != 1)
      {
        goto LABEL_14;
      }
    }

    else if (v25)
    {
LABEL_14:
      sub_24F927618();
      sub_24F9238C8();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239158);
      (*(*(v30 - 8) + 16))(v15, v38, v30);
      v31 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239160) + 36)];
      v32 = v44;
      *v31 = v43;
      *(v31 + 1) = v32;
      *(v31 + 2) = v45;
      v33 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239168) + 36)];
      *v33 = a3;
      v33[1] = a5;
      v33[2] = a6;
      v33[3] = a7;
      *(v33 + 16) = 256;
      LOBYTE(v33) = a1[40];
      v34 = &v15[*(v13 + 36)];
      *v34 = a3;
      *(v34 + 1) = a5;
      *(v34 + 2) = a6;
      *(v34 + 3) = a7;
      v35 = *(a1 + 24);
      v46 = *(a1 + 3);
      *(v34 + 2) = v35;
      v34[48] = v33 & 1;
      sub_24E60169C(v15, v21, &qword_27F239138);
      swift_storeEnumTagMultiPayload();
      sub_24E60169C(&v46, v42, &qword_27F233468);
      sub_24E602068(&qword_27F239170, &qword_27F239158);
      sub_24F0D53EC();
      sub_24F924E28();
      sub_24E60169C(v24, v18, &qword_27F239150);
      swift_storeEnumTagMultiPayload();
      sub_24F0D563C();
      sub_24F924E28();
      sub_24E601704(v24, &qword_27F239150);
      v28 = v15;
      v29 = &qword_27F239138;
      return sub_24E601704(v28, v29);
    }
  }

  else if (v25 <= 5)
  {
    if (v25 != 4)
    {
      goto LABEL_14;
    }

    v43 = *(a1 + 3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
    sub_24F926F38();
    if ((v46 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v25 == 6 || v25 == 7)
  {
    goto LABEL_14;
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239158);
  (*(*(v27 - 8) + 16))(v21, v38, v27);
  swift_storeEnumTagMultiPayload();
  sub_24E602068(&qword_27F239170, &qword_27F239158);
  sub_24F0D53EC();
  sub_24F924E28();
  sub_24E60169C(v24, v18, &qword_27F239150);
  swift_storeEnumTagMultiPayload();
  sub_24F0D563C();
  sub_24F924E28();
  v28 = v24;
  v29 = &qword_27F239150;
  return sub_24E601704(v28, v29);
}

uint64_t sub_24F0D52B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  v12 = *v2;
  v13 = v4;
  v5 = v2[3];
  v14 = v2[2];
  v15 = v5;
  sub_24F0D4C90(&v12, a1, v12, a2, *(&v12 + 1), *&v13, 0.0);
  v6 = swift_allocObject();
  v7 = v13;
  *(v6 + 1) = v12;
  *(v6 + 2) = v7;
  v8 = v15;
  *(v6 + 3) = v14;
  *(v6 + 4) = v8;
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239130) + 36));
  *v9 = sub_24F0D53AC;
  v9[1] = v6;
  return sub_24F0D53B4(&v12, &v11);
}

uint64_t sub_24F0D536C()
{

  return swift_deallocObject();
}

unint64_t sub_24F0D53EC()
{
  result = qword_27F239178;
  if (!qword_27F239178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239138);
    sub_24F0D5478();
    sub_24F0D55E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239178);
  }

  return result;
}

unint64_t sub_24F0D5478()
{
  result = qword_27F239180;
  if (!qword_27F239180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239168);
    sub_24F0D5530();
    sub_24E602068(&qword_27F239190, &qword_27F239198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239180);
  }

  return result;
}

unint64_t sub_24F0D5530()
{
  result = qword_27F239188;
  if (!qword_27F239188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239160);
    sub_24E602068(&qword_27F239170, &qword_27F239158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239188);
  }

  return result;
}

unint64_t sub_24F0D55E8()
{
  result = qword_27F2391A0;
  if (!qword_27F2391A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2391A0);
  }

  return result;
}

unint64_t sub_24F0D563C()
{
  result = qword_27F2391A8;
  if (!qword_27F2391A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239150);
    sub_24E602068(&qword_27F239170, &qword_27F239158);
    sub_24F0D53EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2391A8);
  }

  return result;
}

uint64_t sub_24F0D56F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
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

uint64_t sub_24F0D5750(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_24F0D57C4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && a1[32])
  {
    return (*a1 + 248);
  }

  v3 = *a1;
  v4 = v3 >= 9;
  v5 = v3 - 9;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24F0D5808(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 8;
    }
  }

  return result;
}

unint64_t sub_24F0D5860()
{
  result = qword_27F2391B0;
  if (!qword_27F2391B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239130);
    sub_24F0D5918();
    sub_24E602068(&qword_27F233450, &qword_27F233458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2391B0);
  }

  return result;
}

unint64_t sub_24F0D5918()
{
  result = qword_27F2391B8;
  if (!qword_27F2391B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2391C0);
    sub_24F0D599C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2391B8);
  }

  return result;
}

unint64_t sub_24F0D599C()
{
  result = qword_27F2391C8;
  if (!qword_27F2391C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2391D0);
    sub_24F0D563C();
    sub_24E602068(&qword_27F239170, &qword_27F239158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2391C8);
  }

  return result;
}

uint64_t sub_24F0D5A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2391F8);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239200);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = *(v2 + 4);
  if (v10 && (v2[48] & 1) == 0)
  {
    v13 = *v2;
    v30 = *v2;
    v14 = *(v2 + 1);
    v15 = *(v2 + 2);
    v16 = *(v2 + 3);

    v17 = sub_24F927618();
    v19 = v18;
    sub_24F923658();

    v20 = sub_24F927618();
    v28 = v21;
    v29 = v20;
    LOBYTE(v36) = v13;
    *(&v36 + 1) = v14;
    *&v37 = v15;
    *(&v37 + 1) = v16;
    v38 = v33;
    v39 = v34;
    *&v40 = v35;
    *(&v40 + 1) = v10;
    LOWORD(v41) = 256;
    *(&v41 + 1) = v20;
    *&v42 = v21;
    *(&v42 + 1) = v17;
    v43 = v19;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239208);
    (*(*(v22 - 8) + 16))(v9, a1, v22);
    v23 = &v9[*(v7 + 36)];
    v24 = v41;
    *(v23 + 4) = v40;
    *(v23 + 5) = v24;
    *(v23 + 6) = v42;
    *(v23 + 14) = v43;
    v25 = v37;
    *v23 = v36;
    *(v23 + 1) = v25;
    v26 = v39;
    *(v23 + 2) = v38;
    *(v23 + 3) = v26;
    v44[0] = v30;
    v45 = v14;
    v46 = v15;
    v47 = v16;
    v48 = v33;
    v49 = v34;
    v50 = v35;
    v51 = v10;
    v52 = 256;
    v53 = v29;
    v54 = v28;
    v55 = v17;
    v56 = v19;
    sub_24E60169C(&v36, &v32, &qword_27F239228);
    sub_24E601704(v44, &qword_27F239228);
    sub_24E60169C(v9, v6, &qword_27F239200);
    swift_storeEnumTagMultiPayload();
    sub_24F0D6454();
    sub_24E602068(&qword_27F239218, &qword_27F239208);
    sub_24F924E28();

    return sub_24E601704(v9, &qword_27F239200);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239208);
    (*(*(v11 - 8) + 16))(v6, a1, v11);
    swift_storeEnumTagMultiPayload();
    sub_24F0D6454();
    sub_24E602068(&qword_27F239218, &qword_27F239208);
    return sub_24F924E28();
  }
}

__n128 sub_24F0D5EA0@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v11 = sub_24F924248();
  MEMORY[0x28223BE20](v11);
  v13 = (v28.n128_f64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_24F924B38();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v5 + 8);
  v20 = *(v5 + 16);
  v21 = *(v5 + 24);
  LOBYTE(v30) = *v5;
  v18 = v30;
  v22 = Artwork.Style.iconCornerRadius(for:isPlaceholder:)(0, v19, v20);
  (*(v15 + 104))(v17, **(&unk_27968E910 + v18), v14);
  if (v18 > 3)
  {
    if (v18 > 5)
    {
      if (v18 == 6)
      {
        v25 = [objc_opt_self() bezierPathWithRoundedRect:2 byRoundingCorners:a2 cornerRadii:{a3, a4, a5, v22, v22}];
        v26 = [v25 CGPath];
        sub_24F925B48();
        v28 = v31;
        v29 = v30;
        v23 = v32;

        goto LABEL_16;
      }

      if (v18 == 7)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    if (v18 == 4)
    {
LABEL_12:
      sub_24F927798();
      goto LABEL_13;
    }

LABEL_14:
    v24 = sub_24F924258();
    (*(v15 + 16))(v13 + *(v24 + 20), v17, v14);
    *v13 = v22;
    v13[1] = v22;
    *(v13 + *(v11 + 20)) = v21;
    sub_24F924238();
    v28 = v31;
    v29 = v30;
    v23 = v32;
    sub_24E6458F0(v13);
    goto LABEL_16;
  }

  if (v18 <= 1)
  {
    if (!v18)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (v18 == 2)
  {
    goto LABEL_12;
  }

  sub_24F926FF8();
LABEL_13:
  v28 = v31;
  v29 = v30;
  v23 = v32;
LABEL_16:
  (*(v15 + 8))(v17, v14);
  result = v28;
  *a1 = v29;
  *(a1 + 16) = result;
  *(a1 + 32) = v23;
  return result;
}

double sub_24F0D61A8@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  sub_24F0D5EA0(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_24F0D61EC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

uint64_t sub_24F0D6274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F0D6538();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24F0D62D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F0D6538();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24F0D633C(uint64_t a1)
{
  v2 = sub_24F0D6538();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_24F0D638C()
{
  result = qword_27F2391E8;
  if (!qword_27F2391E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2391E8);
  }

  return result;
}

unint64_t sub_24F0D63E4()
{
  result = qword_27F2391F0;
  if (!qword_27F2391F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2391F0);
  }

  return result;
}

unint64_t sub_24F0D6454()
{
  result = qword_27F239210;
  if (!qword_27F239210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239200);
    sub_24E602068(&qword_27F239218, &qword_27F239208);
    sub_24E602068(&qword_27F239220, &qword_27F239228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239210);
  }

  return result;
}

unint64_t sub_24F0D6538()
{
  result = qword_27F239230;
  if (!qword_27F239230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239230);
  }

  return result;
}

unint64_t sub_24F0D6590()
{
  result = qword_27F239238;
  if (!qword_27F239238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239240);
    sub_24F0D6454();
    sub_24E602068(&qword_27F239218, &qword_27F239208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239238);
  }

  return result;
}

const char *sub_24F0D6654(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v47 = a5;
  v59 = a3;
  v60 = a4;
  v9 = sub_24F92AC68();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_24F927D88();
  v13 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v16 = MEMORY[0x25304F260]();
  if (v16)
  {
    v45 = v10;
    v46 = v9;
    v56 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C8D8);
    v17 = sub_24F92A9E8();
    v53 = v15;
    v18 = OBJC_IVAR____TtC12GameStoreKit16JSTimeoutManager_activePromisesBox;
    v19 = *(a2 + OBJC_IVAR____TtC12GameStoreKit16JSTimeoutManager_activePromisesBox);
    MEMORY[0x28223BE20](v17);
    v57 = v12;
    v44[-4] = sub_24F0D6648;
    v44[-3] = 0;
    v42 = v19;
    v55 = a1;
    v20 = v60;

    v48 = v13;
    v49 = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239258);
    sub_24F92BF18();
    v54 = v6;

    v21 = v61;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v21;
    sub_24E822200(v17, v59, v20, isUniquelyReferenced_nonNull_native);

    v51 = v61;
    v52 = v44;
    v44[1] = a2;
    v24 = *(a2 + v18);
    MEMORY[0x28223BE20](v23);
    v42 = v25;
    v50 = *(v24 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
    v26 = v48;
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_24F93DE60;

    sub_24F927D78();
    v61 = v27;
    sub_24F0D81FC(&qword_27F222930, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
    v28 = v57;
    sub_24E9723D4(&qword_27F222940, &qword_27F222310);
    v29 = v53;
    v30 = v49;
    v31 = v58;
    v32 = sub_24F92C6A8();
    MEMORY[0x28223BE20](v32);
    v44[-4] = sub_24F0D8514;
    v44[-3] = &v44[-4];
    v42 = v24;
    v33 = v54;
    sub_24F92BF08();
    v34 = v33;

    (*(v26 + 8))(v29, v31);

    v35 = swift_allocObject();
    v36 = v56;
    *(v35 + 16) = v30;
    *(v35 + 24) = v36;

    v37 = v55;

    sub_24F92AC48();
    if (v33)
    {
    }

    else
    {
      v39 = v59;
      v38 = v60;
      if (v47)
      {
        v40 = v47;
        sub_24F0D75D0(v30, v39, v38, v40);
      }

      v34 = sub_24F92AC58();

      (*(v45 + 8))(v28, v46);
    }
  }

  else
  {
    v34 = "JSTimeoutManager.promiseQueue";
    sub_24F92A868();
    sub_24F0D81FC(&qword_27F222F70, MEMORY[0x277D22430]);
    swift_allocError();
    v42 = 0;
    v43 = 0;
    sub_24F92A808();
    swift_willThrow();
  }

  return v34;
}

uint64_t sub_24F0D6C38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v22 = a4;
  v19 = a3;
  v20 = a1;
  v6 = sub_24F9281B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + 16);
  v11(v10, a2, v6, v9);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  v13 = *(v7 + 32);
  v13(v18 + v12, v10, v6);
  (v11)(v10, v19, v6);
  v14 = swift_allocObject();
  v13(v14 + v12, v10, v6);
  v15 = v20;
  *(v14 + ((v12 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
  v23[3] = sub_24F9298F8();
  v23[4] = MEMORY[0x277D22078];
  v23[0] = v21;
  v16 = v15;

  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

void sub_24F0D6E44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F93DE60;
  v1 = [objc_allocWithZone(MEMORY[0x277CD4658]) init];
  *(v0 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0);
  *(v0 + 32) = v1;
  v2 = sub_24F9281A8();
}

void sub_24F0D70C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F93DE60;
  v6 = sub_24E69A5C4(0, &qword_27F21C8E0);
  v7 = MEMORY[0x253051C90](a1, a3);
  *(v5 + 56) = v6;
  *(v5 + 32) = v7;
  v8 = sub_24F9281A8();
}

uint64_t sub_24F0D742C(void *a1, uint64_t a2, uint64_t a3)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239258);
  sub_24F92BF18();

  if (!*(v10 + 16))
  {
  }

  v6 = sub_24E76D644(a2, a3);
  if ((v7 & 1) == 0)
  {
  }

  v8 = *(*(v10 + 56) + 8 * v6);

  if ((sub_24F92A928() & 1) == 0)
  {
    sub_24F0D75D0(v8, a2, a3, a1);
  }
}

uint64_t sub_24F0D75D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v25 = a2;
  v30 = sub_24F927D88();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_24F927DC8();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F927DE8();
  v27 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  v28 = *(v4 + OBJC_IVAR____TtC12GameStoreKit16JSTimeoutManager_promiseQueue);
  sub_24F927DD8();
  [a4 doubleValue];
  sub_24F927E58();
  v26 = *(v13 + 8);
  v26(v15, v12);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = a1;
  v20[4] = v25;
  v20[5] = a3;
  aBlock[4] = sub_24F0D81B4;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_113;
  v21 = _Block_copy(aBlock);

  sub_24F927DA8();
  v33 = MEMORY[0x277D84F90];
  sub_24F0D81FC(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  v22 = v30;
  sub_24F92C6A8();
  MEMORY[0x253051820](v18, v11, v9, v21);
  _Block_release(v21);
  (*(v32 + 8))(v9, v22);
  (*(v29 + 8))(v11, v31);
  v26(v18, v27);
}

void sub_24F0D79E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_24F927D88();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = sub_24F92A928();
    if ((v13 & 1) == 0)
    {
      v23 = v22;
      v14 = OBJC_IVAR____TtC12GameStoreKit16JSTimeoutManager_activePromisesBox;
      v15 = *&v12[OBJC_IVAR____TtC12GameStoreKit16JSTimeoutManager_activePromisesBox];
      MEMORY[0x28223BE20](v13);
      v25 = a2;
      v22[-4] = sub_24F0D6648;
      v22[-3] = 0;
      v22[-2] = v15;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239258);
      sub_24F92BF18();
      v24 = 0;

      sub_24E9902D8(a3, a4);

      v22[2] = v27;
      v23 = v22;
      v17 = *&v12[v14];
      MEMORY[0x28223BE20](v16);
      v22[-2] = v18;
      v22[1] = *(v17 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_24F93DE60;

      sub_24F927D78();
      v26 = v19;
      sub_24F0D81FC(&qword_27F222930, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
      sub_24E9723D4(&qword_27F222940, &qword_27F222310);
      v20 = sub_24F92C6A8();
      MEMORY[0x28223BE20](v20);
      v22[-4] = sub_24F0D81D8;
      v22[-3] = &v22[-4];
      v22[-2] = v17;
      sub_24F92BF08();

      (*(v8 + 8))(v10, v7);

      v21 = [objc_allocWithZone(MEMORY[0x277CD4658]) init];
      v27 = v21;
      sub_24F92A9C8();
    }
  }
}

id sub_24F0D7D98()
{
  v13 = sub_24F92BEE8();
  v0 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v2 = v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F92BE88();
  MEMORY[0x28223BE20](v3);
  v4 = sub_24F927DC8();
  MEMORY[0x28223BE20](v4 - 8);
  v12 = OBJC_IVAR____TtC12GameStoreKit16JSTimeoutManager_promiseQueue;
  v11[1] = sub_24E69A5C4(0, &qword_27F222300);
  sub_24F927DA8();
  v16 = MEMORY[0x277D84F90];
  sub_24F0D81FC(&qword_27F2394E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30);
  sub_24F92C6A8();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v13);
  v5 = sub_24F92BF38();
  v6 = v14;
  *&v14[v12] = v5;
  v7 = OBJC_IVAR____TtC12GameStoreKit16JSTimeoutManager_activePromisesBox;
  v8 = sub_24E60FF64(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239260);
  swift_allocObject();
  *&v6[v7] = sub_24EA50028(v8);
  v9 = type metadata accessor for JSTimeoutManager();
  v15.receiver = v6;
  v15.super_class = v9;
  return objc_msgSendSuper2(&v15, sel_init);
}

id sub_24F0D8090()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSTimeoutManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24F0D8134()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24F0D816C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_113(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F0D81FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F0D8244(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
}

uint64_t sub_24F0D8288()
{

  return swift_deallocObject();
}

uint64_t sub_24F0D82E4()
{
  v1 = sub_24F9281B8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_24F0D836C()
{
  sub_24F9281B8();

  sub_24F0D6E44();
}

uint64_t sub_24F0D83DC()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24F0D8478(uint64_t a1)
{
  v3 = *(sub_24F9281B8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24F0D70C8(a1, v1 + v4, v5);
}

GameStoreKit::PrivacyTypeStyle_optional __swiftcall PrivacyTypeStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PrivacyTypeStyle.rawValue.getter()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 0x61506C6961746564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x50746375646F7270;
  }
}

uint64_t sub_24F0D85E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000016;
  v4 = 0x800000024FA3EFD0;
  if (v2 == 1)
  {
    v5 = 0x800000024FA3EFD0;
  }

  else
  {
    v3 = 0x61506C6961746564;
    v5 = 0xEA00000000006567;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x50746375646F7270;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEB00000000656761;
  }

  v8 = 0xD000000000000016;
  if (*a2 != 1)
  {
    v8 = 0x61506C6961746564;
    v4 = 0xEA00000000006567;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x50746375646F7270;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEB00000000656761;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0D86E8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0D879C()
{
  sub_24F92B218();
}

uint64_t sub_24F0D883C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F0D88F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000656761;
  v4 = 0x800000024FA3EFD0;
  v5 = 0xD000000000000016;
  if (v2 != 1)
  {
    v5 = 0x61506C6961746564;
    v4 = 0xEA00000000006567;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x50746375646F7270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t PrivacyType.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PrivacyType.detail.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PrivacyType.clickSender.getter@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

uint64_t PrivacyType.__allocating_init(id:title:detail:artwork:categories:style:clickAction:wantsScrollFocus:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v30 = a6;
  v31 = a7;
  v32 = a11;
  v33 = a2;
  v36 = a10;
  v34 = a9;
  v35 = a3;
  v15 = sub_24F91F6B8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v20 = *a8;
  sub_24E60169C(a1, &v39, &qword_27F235830);
  if (*(&v40 + 1))
  {
    v21 = v40;
    *(v19 + 80) = v39;
    *(v19 + 96) = v21;
    *(v19 + 112) = v41;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v29 = a4;
    v24 = v23;
    (*(v16 + 8))(v18, v15);
    v37 = v22;
    v38 = v24;
    a4 = v29;
    sub_24F92C7F8();
    sub_24E601704(&v39, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  sub_24E65E0D4(v32, v19 + OBJC_IVAR____TtC12GameStoreKit11PrivacyType_impressionMetrics);
  v25 = v35;
  *(v19 + 16) = v33;
  *(v19 + 24) = v25;
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;
  v26 = v31;
  *(v19 + 48) = v30;
  *(v19 + 56) = v26;
  *(v19 + 64) = v20;
  *(v19 + 72) = v34;
  *(v19 + 65) = v36 & 1;
  return v19;
}
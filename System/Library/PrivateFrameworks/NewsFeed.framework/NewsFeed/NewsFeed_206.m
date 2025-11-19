uint64_t sub_1D6DE4978(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x446873696C627570;
    }

    else
    {
      v3 = 0x6C6F6F706572;
    }

    if (v2)
    {
      v4 = 0xEB00000000657461;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x6563726F66;
  }

  else if (a1 == 3)
  {
    v3 = 0x6F6C6F6E6F726863;
    v4 = 0xED00006C61636967;
  }

  else
  {
    v4 = 0xE600000000000000;
    v3 = 0x6769666E6F63;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x446873696C627570;
    }

    else
    {
      v9 = 0x6C6F6F706572;
    }

    if (a2)
    {
      v8 = 0xEB00000000657461;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6F6C6F6E6F726863;
    v6 = 0xED00006C61636967;
    if (a2 != 3)
    {
      v5 = 0x6769666E6F63;
      v6 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6563726F66;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
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

uint64_t sub_1D6DE4B18(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED000073656C7552;
  if (a1 > 3u)
  {
    v3 = 0x80000001D73B71C0;
    v8 = 0xD00000000000001ELL;
    v9 = 0xD000000000000016;
    if (a1 == 6)
    {
      v9 = 0xD00000000000001ELL;
    }

    else
    {
      v3 = 0x80000001D73B71E0;
    }

    v5 = 0x80000001D73B71A0;
    if (a1 == 4)
    {
      v8 = 0x676E6970756F7267;
      v5 = 0xED000073656C7552;
    }

    v6 = a1 <= 5u;
    if (a1 <= 5u)
    {
      v7 = v8;
    }

    else
    {
      v7 = v9;
    }
  }

  else
  {
    v3 = 0x80000001D73B7150;
    v4 = 0xD000000000000013;
    if (a1 != 2)
    {
      v4 = 0xD00000000000001BLL;
      v3 = 0x80000001D73B7170;
    }

    v5 = 0x80000001D73B7110;
    if (a1)
    {
      v5 = 0x80000001D73B7130;
    }

    v6 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v7 = v4;
    }
  }

  if (v6)
  {
    v10 = v5;
  }

  else
  {
    v10 = v3;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x80000001D73B7150;
        if (v7 != 0xD000000000000013)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v2 = 0x80000001D73B7170;
        if (v7 != 0xD00000000000001BLL)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
      if (a2)
      {
        v11 = "maxNumberOfItems";
      }

      else
      {
        v11 = "minNumberOfItems";
      }

      v2 = (v11 - 32) | 0x8000000000000000;
      if (v7 != 0xD000000000000010)
      {
        goto LABEL_44;
      }
    }

    goto LABEL_42;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      if (v7 != 0x676E6970756F7267)
      {
        goto LABEL_44;
      }

      goto LABEL_42;
    }

    v12 = "minNumberOfItemsDepthTransform";
LABEL_37:
    v2 = (v12 - 32) | 0x8000000000000000;
    if (v7 != 0xD00000000000001ELL)
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (a2 == 6)
  {
    v12 = "maxNumberOfItemsDepthTransform";
    goto LABEL_37;
  }

  v2 = 0x80000001D73B71E0;
  if (v7 != 0xD000000000000016)
  {
LABEL_44:
    v13 = sub_1D72646CC();
    goto LABEL_45;
  }

LABEL_42:
  if (v10 != v2)
  {
    goto LABEL_44;
  }

  v13 = 1;
LABEL_45:

  return v13 & 1;
}

uint64_t sub_1D6DE4D64(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1684627824;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1752461154;
    }

    else
    {
      v4 = 0x7265687469656ELL;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
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
      v4 = 0x646961706E75;
    }

    else
    {
      v4 = 1684627824;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE400000000000000;
  v8 = 1752461154;
  if (a2 != 2)
  {
    v8 = 0x7265687469656ELL;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x646961706E75;
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

uint64_t sub_1D6DE4E88(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C616974696E69;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x646573756170;
    }

    else
    {
      v4 = 0x6574656C706D6F63;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE900000000000064;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x676E6979616C70;
    }

    else
    {
      v4 = 0x6C616974696E69;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x646573756170;
  if (a2 != 2)
  {
    v7 = 0x6574656C706D6F63;
    v6 = 0xE900000000000064;
  }

  if (a2)
  {
    v2 = 0x676E6979616C70;
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

uint64_t sub_1D6DE4FCC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736302;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0x6C616E6F73726570;
    }

    if (v3 == 2)
    {
      v5 = 0x80000001D73B7A90;
    }

    else
    {
      v5 = 0xEF6E6F6974617A69;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6F6C6F6E6F726863;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3)
    {
      v5 = 0xED00006C61636967;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xD000000000000014;
  v8 = 0x80000001D73B7A90;
  if (a2 != 2)
  {
    v7 = 0x6C616E6F73726570;
    v8 = 0xEF6E6F6974617A69;
  }

  if (a2)
  {
    v2 = 0x6F6C6F6E6F726863;
    v6 = 0xED00006C61636967;
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

uint64_t sub_1D6DE5138(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7961646E6F6DLL;
  v3 = a1;
  if (a1 <= 3u)
  {
    v10 = 0x7961646E7573;
    v11 = 0xE700000000000000;
    v12 = 0x79616473657574;
    if (a1 != 2)
    {
      v12 = 0x616473656E646577;
      v11 = 0xE900000000000079;
    }

    if (a1)
    {
      v10 = 0x7961646E6F6DLL;
    }

    if (a1 <= 1u)
    {
      v8 = v10;
    }

    else
    {
      v8 = v12;
    }

    if (v3 <= 1)
    {
      v9 = 0xE600000000000000;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    v4 = 0x7961647275746173;
    v5 = 0x737961646B656577;
    if (a1 != 7)
    {
      v5 = 0x73646E656B656577;
    }

    if (a1 != 6)
    {
      v4 = v5;
    }

    v6 = 0xE800000000000000;
    v7 = 0x7961647372756874;
    if (a1 != 4)
    {
      v7 = 0x796164697266;
      v6 = 0xE600000000000000;
    }

    if (a1 <= 5u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    if (v3 <= 5)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0xE800000000000000;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v13 = 0xE700000000000000;
        if (v8 != 0x79616473657574)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v13 = 0xE900000000000079;
        if (v8 != 0x616473656E646577)
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
      if (!a2)
      {
        v2 = 0x7961646E7573;
      }

      v13 = 0xE600000000000000;
      if (v8 != v2)
      {
        goto LABEL_50;
      }
    }

    goto LABEL_48;
  }

  if (a2 > 5u)
  {
    v13 = 0xE800000000000000;
    if (a2 != 6)
    {
      if (a2 == 7)
      {
        if (v8 != 0x737961646B656577)
        {
          goto LABEL_50;
        }
      }

      else if (v8 != 0x73646E656B656577)
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }

    v14 = 0x647275746173;
LABEL_41:
    if (v8 != (v14 & 0xFFFFFFFFFFFFLL | 0x7961000000000000))
    {
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  if (a2 == 4)
  {
    v13 = 0xE800000000000000;
    v14 = 0x647372756874;
    goto LABEL_41;
  }

  v13 = 0xE600000000000000;
  if (v8 != 0x796164697266)
  {
LABEL_50:
    v15 = sub_1D72646CC();
    goto LABEL_51;
  }

LABEL_48:
  if (v9 != v13)
  {
    goto LABEL_50;
  }

  v15 = 1;
LABEL_51:

  return v15 & 1;
}

uint64_t sub_1D6DE53B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x64656C6F6F706572;
  if (a1 != 5)
  {
    v5 = 0x6465646E61707865;
    v4 = 0xE800000000000000;
  }

  v6 = 0x656546664F646E65;
  v7 = 0xE900000000000064;
  if (a1 != 3)
  {
    v6 = 0x646568636163;
    v7 = 0xE600000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE400000000000000;
  v9 = 1852138867;
  if (a1 != 1)
  {
    v9 = 0x6E657A6F7266;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x657669746361;
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
        v12 = 0xE400000000000000;
        if (v10 != 1852138867)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x6E657A6F7266)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x657669746361)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    v12 = 0xE800000000000000;
    if (a2 == 5)
    {
      v13 = 0x6C6F6F706572;
    }

    else
    {
      v13 = 0x646E61707865;
    }

    if (v10 != (v13 & 0xFFFFFFFFFFFFLL | 0x6465000000000000))
    {
      goto LABEL_39;
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE900000000000064;
    if (v10 != 0x656546664F646E65)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x646568636163)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
LABEL_39:
    v14 = sub_1D72646CC();
    goto LABEL_40;
  }

  v14 = 1;
LABEL_40:

  return v14 & 1;
}

uint64_t sub_1D6DE55B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x656E696C64616568;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
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
    v4 = 1835365481;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x657069636572;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x656E696C64616568;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
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
    v5 = 0xE400000000000000;
    v6 = 1835365481;
    if (a2 != 3)
    {
      v6 = 0x657069636572;
      v5 = 0xE600000000000000;
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

uint64_t sub_1D6DE5724(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6E69776F6C6C6F66;
    }

    else
    {
      v4 = 0x6F69647561;
    }

    if (v2)
    {
      v3 = 0xE900000000000067;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x656E697A6167616DLL;
    v3 = 0xE900000000000073;
  }

  else if (a1 == 3)
  {
    v3 = 0xE800000000000000;
    v4 = 0x7374726F7073796DLL;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x756F79726F66;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6E69776F6C6C6F66;
    }

    else
    {
      v9 = 0x6F69647561;
    }

    if (a2)
    {
      v8 = 0xE900000000000067;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x7374726F7073796DLL;
    if (a2 != 3)
    {
      v6 = 0x756F79726F66;
      v5 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x656E697A6167616DLL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE900000000000073;
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

uint64_t sub_1D6DE58BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006E6FLL;
  v3 = 0x69746375646F7270;
  v4 = a1;
  v5 = 0xE500000000000000;
  v6 = 0x316F6D6564;
  v7 = 0xE500000000000000;
  if (a1 != 6)
  {
    v6 = 0x326F6D6564;
    v5 = 0xE500000000000000;
  }

  v8 = 0x6C65766564;
  if (a1 != 4)
  {
    v8 = 0x786F62646E6173;
    v7 = 0xE700000000000000;
  }

  if (a1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE200000000000000;
  v10 = 24945;
  if (a1 != 2)
  {
    v10 = 1953719668;
    v9 = 0xE400000000000000;
  }

  v11 = 0xE700000000000000;
  v12 = 0x676E6967617473;
  if (!a1)
  {
    v12 = 0x69746375646F7270;
    v11 = 0xEA00000000006E6FLL;
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
    v13 = v6;
  }

  if (v4 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      v2 = 0xE500000000000000;
      if (a2 == 6)
      {
        if (v13 != 0x316F6D6564)
        {
          goto LABEL_41;
        }
      }

      else if (v13 != 0x326F6D6564)
      {
        goto LABEL_41;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE500000000000000;
      if (v13 != 0x6C65766564)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE700000000000000;
      if (v13 != 0x786F62646E6173)
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
        v2 = 0xE200000000000000;
        if (v13 != 24945)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v2 = 0xE400000000000000;
      v3 = 1953719668;
    }

    else if (a2)
    {
      v2 = 0xE700000000000000;
      if (v13 != 0x676E6967617473)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v13 != v3)
    {
LABEL_41:
      v15 = sub_1D72646CC();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t sub_1D6DE5ADC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7364726177726F66;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1752461154;
    }

    else
    {
      v4 = 0x6465766F6D6572;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
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
      v4 = 0x647261776B636162;
    }

    else
    {
      v4 = 0x7364726177726F66;
    }

    if (v3)
    {
      v5 = 0xE900000000000073;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xE400000000000000;
  v8 = 1752461154;
  if (a2 != 2)
  {
    v8 = 0x6465766F6D6572;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x647261776B636162;
    v6 = 0xE900000000000073;
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

uint64_t sub_1D6DE5C18(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C616974696E69;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6465786966;
    }

    else
    {
      v4 = 2003792487;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1869903201;
    }

    else
    {
      v4 = 0x6C616974696E69;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x6465786966;
  if (a2 != 2)
  {
    v8 = 2003792487;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 1869903201;
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

uint64_t sub_1D6DE5D30(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0x656D614E6C6C7566;
  if (a1 != 2)
  {
    v3 = 0x656D616E6B63696ELL;
  }

  v4 = 0xD000000000000010;
  v5 = 0x80000001D73B7EE0;
  if (a1)
  {
    v4 = 0x4E7972616D697270;
    v5 = 0xEB00000000656D61;
  }

  if (a1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (v2 <= 1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v10 = 0x656D614E6C6C7566;
    }

    else
    {
      v10 = 0x656D616E6B63696ELL;
    }

    v9 = 0xE800000000000000;
    if (v6 != v10)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (a2)
    {
      v8 = 0x4E7972616D697270;
    }

    else
    {
      v8 = 0xD000000000000010;
    }

    if (a2)
    {
      v9 = 0xEB00000000656D61;
    }

    else
    {
      v9 = 0x80000001D73B7EE0;
    }

    if (v6 != v8)
    {
      goto LABEL_26;
    }
  }

  if (v7 != v9)
  {
LABEL_26:
    v11 = sub_1D72646CC();
    goto LABEL_27;
  }

  v11 = 1;
LABEL_27:

  return v11 & 1;
}

uint64_t sub_1D6DE5E7C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6E776F44666C6168;
  if (a1 != 5)
  {
    v5 = 0x7055666C6168;
    v4 = 0xE600000000000000;
  }

  v6 = 0xE200000000000000;
  v7 = 28789;
  if (a1 != 3)
  {
    v7 = 0x6E657645666C6168;
    v6 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE500000000000000;
  v9 = 0x726F6F6C66;
  if (a1 != 1)
  {
    v9 = 1853321060;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x676E696C696563;
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
        v12 = 0xE500000000000000;
        if (v10 != 0x726F6F6C66)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE400000000000000;
        if (v10 != 1853321060)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x676E696C696563)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6E776F44666C6168)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x7055666C6168)
      {
LABEL_39:
        v13 = sub_1D72646CC();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE200000000000000;
    if (v10 != 28789)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x6E657645666C6168)
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

uint64_t sub_1D6DE6074(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C616D69636564;
  v3 = a1;
  if (a1 <= 3u)
  {
    v11 = 0x6669746E65696373;
    v12 = 0xEA00000000006369;
    if (a1 != 2)
    {
      v11 = 0x74754F6C6C657073;
      v12 = 0xE800000000000000;
    }

    v13 = 0x746E6563726570;
    if (!a1)
    {
      v13 = 0x6C616D69636564;
    }

    if (a1 <= 1u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v11;
    }

    if (v3 <= 1)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v4 = 0xD000000000000012;
    v5 = 0x80000001D73B7E90;
    v6 = 0xEF65646F434F5349;
    if (a1 != 7)
    {
      v6 = 0xEE006C6172756C50;
    }

    if (a1 != 6)
    {
      v4 = 0x79636E6572727563;
      v5 = v6;
    }

    v7 = 0xE700000000000000;
    v8 = 0x6C616E6964726FLL;
    if (a1 != 4)
    {
      v8 = 0x79636E6572727563;
      v7 = 0xE800000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v3 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0xEA00000000006369;
        if (v9 != 0x6669746E65696373)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v14 = 0xE800000000000000;
        if (v9 != 0x74754F6C6C657073)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    v14 = 0xE700000000000000;
    if (a2)
    {
      if (v9 != 0x746E6563726570)
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
        v14 = 0xE700000000000000;
        if (v9 != 0x6C616E6964726FLL)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v14 = 0xE800000000000000;
        if (v9 != 0x79636E6572727563)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v14 = 0x80000001D73B7E90;
      if (v9 != 0xD000000000000012)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v2 = 0x79636E6572727563;
    if (a2 == 7)
    {
      v14 = 0xEF65646F434F5349;
      if (v9 != 0x79636E6572727563)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v14 = 0xEE006C6172756C50;
  }

  if (v9 != v2)
  {
LABEL_49:
    v15 = sub_1D72646CC();
    goto LABEL_50;
  }

LABEL_46:
  if (v10 != v14)
  {
    goto LABEL_49;
  }

  v15 = 1;
LABEL_50:

  return v15 & 1;
}

uint64_t sub_1D6DE6350(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v6 = 0xE800000000000000;
      v5 = 0x6D6574497473696CLL;
    }

    else
    {
      if (a1 == 4)
      {
        v5 = 0xD000000000000013;
      }

      else
      {
        v5 = 0xD000000000000010;
      }

      if (v2 == 4)
      {
        v6 = 0x80000001D73B7E00;
      }

      else
      {
        v6 = 0x80000001D73B7E20;
      }
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x63696D616E7964;
    if (a1 != 1)
    {
      v4 = 0x6F6C61646E617473;
      v3 = 0xEA0000000000656ELL;
    }

    if (a1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v7 = 0xE800000000000000;
      if (v5 != 0x6D6574497473696CLL)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (a2 == 4)
      {
        v8 = 0xD000000000000013;
      }

      else
      {
        v8 = 0xD000000000000010;
      }

      if (a2 == 4)
      {
        v7 = 0x80000001D73B7E00;
      }

      else
      {
        v7 = 0x80000001D73B7E20;
      }

      if (v5 != v8)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v7 = 0xE700000000000000;
      if (v5 != 0x63696D616E7964)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v7 = 0xEA0000000000656ELL;
      if (v5 != 0x6F6C61646E617473)
      {
LABEL_39:
        v9 = sub_1D72646CC();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v7 = 0xE700000000000000;
    if (v5 != 0x6E776F6E6B6E75)
    {
      goto LABEL_39;
    }
  }

  if (v6 != v7)
  {
    goto LABEL_39;
  }

  v9 = 1;
LABEL_40:

  return v9 & 1;
}

uint64_t sub_1D6DE6550(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x74726F6873;
    }

    else
    {
      v4 = 1701736302;
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
    v4 = 0x6D756964656DLL;
  }

  else
  {
    v3 = 0xE400000000000000;
    if (a1 == 3)
    {
      v4 = 1735290732;
    }

    else
    {
      v4 = 1819047270;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x74726F6873;
    }

    else
    {
      v8 = 1701736302;
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
    v5 = 1735290732;
    if (a2 != 3)
    {
      v5 = 1819047270;
    }

    if (a2 == 2)
    {
      v6 = 0x6D756964656DLL;
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
      v7 = 0xE400000000000000;
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

uint64_t static FormatColorAssignComponentProcessor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1D6DD3A24(*a1, *a2) & (v2 == v3);
}

unint64_t sub_1D6DE66DC(uint64_t a1)
{
  result = sub_1D6DE6704();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6DE6704()
{
  result = qword_1EC896538;
  if (!qword_1EC896538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896538);
  }

  return result;
}

id sub_1D6DE6758(uint64_t a1, id a2, char a3, double a4)
{
  v6 = [a2 resolvedColorWithTraitCollection_];
  v9 = a3;
  v7 = sub_1D6866FC4(&v9, a4);

  return v7;
}

unint64_t sub_1D6DE67CC(void *a1)
{
  a1[1] = sub_1D665B348();
  a1[2] = sub_1D67060B4();
  result = sub_1D6DE6804();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6DE6804()
{
  result = qword_1EC896540;
  if (!qword_1EC896540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896540);
  }

  return result;
}

uint64_t sub_1D6DE68B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 1702257011;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0x80000001D73BA7A0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 1702257011;
  }

  if (*a2)
  {
    v6 = 0x80000001D73BA7A0;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6DE695C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6DE69DC()
{
  sub_1D72621EC();
}

uint64_t sub_1D6DE6A48()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6DE6AC4@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D6DE6B24(unint64_t *a1@<X8>)
{
  v2 = 0x80000001D73BA7A0;
  v3 = 1702257011;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t FormatRecipeBinding.Command.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6DE6C98()
{
  result = qword_1EC896548;
  if (!qword_1EC896548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896548);
  }

  return result;
}

unint64_t sub_1D6DE6CEC(uint64_t a1)
{
  result = sub_1D6DE6D14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6DE6D14()
{
  result = qword_1EC896550;
  if (!qword_1EC896550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896550);
  }

  return result;
}

unint64_t sub_1D6DE6D68(void *a1)
{
  a1[1] = sub_1D6680648();
  a1[2] = sub_1D66FFDE8();
  result = sub_1D6DE6C98();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6DE6DF4()
{
  result = qword_1EC896558;
  if (!qword_1EC896558)
  {
    sub_1D6DE6E4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896558);
  }

  return result;
}

void sub_1D6DE6E4C()
{
  if (!qword_1EC896560)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC896560);
    }
  }
}

unint64_t sub_1D6DE6EA0()
{
  result = qword_1EC896568;
  if (!qword_1EC896568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896568);
  }

  return result;
}

unint64_t sub_1D6DE6EF4()
{
  result = qword_1EC896570;
  if (!qword_1EC896570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896570);
  }

  return result;
}

uint64_t sub_1D6DE6F48@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v5 = type metadata accessor for FormatInspectionItem(0);
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = *a1;
  v46 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E47A08(a2, v46);
  if (v12)
  {
    v13 = 0xD000000000000013;
  }

  else
  {
    v13 = 1702257011;
  }

  if (v12)
  {
    v14 = 0x80000001D73BA7A0;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  v15 = sub_1D5C73AB0(v13, v14);
  if (v16)
  {
    v52 = v15;
    v53 = v16;
    sub_1D5BF4D9C();
    v17 = sub_1D7263A0C();
    v19 = v18;

    v20 = sub_1D5FD24A4(1uLL, v13, v14);
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v27 = MEMORY[0x1DA6F97E0](v20, v22, v24, v26);
    v29 = v28;

    v50 = v17;
    v51 = v19;

    MEMORY[0x1DA6F9910](v27, v29);

    v13 = v50;
    v14 = v51;
  }

  if (v12)
  {
    if (qword_1EDF3AFA0 != -1)
    {
      swift_once();
    }

    v30 = qword_1EDF3AFA8;
    v31 = v46;
    v32 = *(v46 + 56);
    type metadata accessor for FormatCommandAction();
    swift_allocObject();

    v33 = v32;
    v34 = sub_1D68AC870(v30, v32);
  }

  else
  {
    if (qword_1EDF3AE18 != -1)
    {
      swift_once();
    }

    v35 = qword_1EDF3AE20;
    v31 = v46;
    v36 = *(v46 + 56);
    type metadata accessor for FormatCommandAction();
    swift_allocObject();

    v37 = v36;
    v34 = sub_1D68A9450(v35, v36, 257);
  }

  v38 = v34;

  v39 = v48;
  v40 = *(v48 + 24);
  *(v8 + v40) = v38;
  v41 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v41 - 8) + 56))(v8 + v40, 0, 1, v41);
  *v8 = v13;
  v8[1] = v14;
  v8[2] = 0;
  v8[3] = 0;
  v42 = v8 + *(v39 + 28);
  *v42 = 0;
  *(v42 + 1) = 0;
  v42[16] = -1;
  sub_1D5E47A6C(v31);
  v43 = v49;
  sub_1D613ADAC(v8, v49);
  (*(v47 + 56))(v43, 0, 1, v39);
  sub_1D5EA74B8();
  return (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
}

id sub_1D6DE7380()
{
  v1 = v0;
  v40 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v40 setLineSpacing_];
  [v40 setAlignment_];

  MEMORY[0x1DA6F9910](10, 0xE100000000000000);
  v2 = sub_1D726203C();

  v3 = sub_1D726203C();
  v4 = sub_1D5B5A498(0, &unk_1EDF1A640);
  v5 = sub_1D726373C();
  sub_1D5B67B90(0, &qword_1EDF3C5E0, sub_1D5B8EA84);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7270C10;
  *(v6 + 56) = v4;
  v7 = sub_1D6DE78F4();
  *(v6 + 32) = v2;
  *(v6 + 96) = v4;
  *(v6 + 104) = v7;
  *(v6 + 64) = v7;
  *(v6 + 72) = v3;
  v8 = v2;
  v39 = v3;
  v41 = sub_1D726374C();

  v9 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithString_];
  sub_1D5B67B90(0, &qword_1EDF194E0, sub_1D5C09DD4);
  inited = swift_initStackObject();
  v11 = MEMORY[0x1E69DB648];
  *(inited + 16) = xmmword_1D7273AE0;
  v12 = *v11;
  *(inited + 32) = *v11;
  v13 = v1;
  v14 = *(v1 + 16);
  v15 = sub_1D5B5A498(0, &qword_1EDF1A720);
  *(inited + 64) = v15;
  *(inited + 40) = v14;
  v16 = v12;
  v17 = v14;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D69D7BC4(inited + 32);
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v18 = sub_1D7261D2C();

  v38 = v8;
  [v9 addAttributes:v18 range:{0, objc_msgSend(v8, sel_length)}];

  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1D7273AE0;
  *(v19 + 32) = v16;
  v20 = *(v13 + 24);
  *(v19 + 64) = v15;
  *(v19 + 40) = v20;
  v21 = v20;
  sub_1D5C09CEC(v19);
  swift_setDeallocating();
  sub_1D69D7BC4(v19 + 32);
  v22 = sub_1D7261D2C();

  v23 = [v8 length];
  v24 = v9;
  [v9 addAttributes:v22 range:{v23, objc_msgSend(v39, sel_length)}];

  v25 = swift_initStackObject();
  v26 = MEMORY[0x1E69DB650];
  *(v25 + 16) = xmmword_1D7270C10;
  v27 = *v26;
  *(v25 + 32) = *v26;
  v28 = *(v13 + 40);
  v29 = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(v25 + 40) = v28;
  v30 = *MEMORY[0x1E69DB688];
  *(v25 + 64) = v29;
  *(v25 + 72) = v30;
  *(v25 + 104) = sub_1D5B5A498(0, &qword_1EDF1A840);
  *(v25 + 80) = v40;
  v31 = v27;
  v32 = v28;
  v33 = v30;
  v34 = v40;
  sub_1D5C09CEC(v25);
  swift_setDeallocating();
  sub_1D5C09DD4();
  swift_arrayDestroy();
  v35 = sub_1D7261D2C();

  v36 = v24;
  [v36 addAttributes:v35 range:{0, objc_msgSend(v36, sel_length)}];

  return v36;
}

uint64_t sub_1D6DE7854()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  return swift_deallocClassInstance();
}

unint64_t sub_1D6DE78F4()
{
  result = qword_1EDF1A630;
  if (!qword_1EDF1A630)
  {
    sub_1D5B5A498(255, &unk_1EDF1A640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1A630);
  }

  return result;
}

char *sub_1D6DE795C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC8NewsFeed15FormatStateView_identifier];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = OBJC_IVAR____TtC8NewsFeed15FormatStateView_formatLayoutView;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for FormatLayoutView()) initWithFrame_];
  v12 = &v4[OBJC_IVAR____TtC8NewsFeed15FormatStateView_state];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed15FormatStateView_stateAccessibilityRenderer] = 0;
  v13 = &v4[OBJC_IVAR____TtC8NewsFeed15FormatStateView_renderBlock];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v4[OBJC_IVAR____TtC8NewsFeed15FormatStateView_lastRenderedState];
  *v14 = 0;
  *(v14 + 1) = 0;
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  [v15 addSubview_];
  return v15;
}

void sub_1D6DE7B38()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed15FormatStateView_state + 8);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed15FormatStateView_state);
    v3 = (v0 + OBJC_IVAR____TtC8NewsFeed15FormatStateView_lastRenderedState);
    v4 = *(v0 + OBJC_IVAR____TtC8NewsFeed15FormatStateView_lastRenderedState + 8);
    if (!v4 || (*v3 == v2 ? (v5 = v4 == v1) : (v5 = 0), !v5 && (sub_1D72646CC() & 1) == 0))
    {
      *v3 = v2;
      v3[1] = v1;
      swift_bridgeObjectRetain_n();

      v6 = *(v0 + OBJC_IVAR____TtC8NewsFeed15FormatStateView_renderBlock);
      if (v6)
      {

        v7 = v6(v2, v1);

        sub_1D5B74328(v6);
      }

      else
      {

        v7 = 0;
      }

      *(v0 + OBJC_IVAR____TtC8NewsFeed15FormatStateView_stateAccessibilityRenderer) = v7;
    }
  }
}

uint64_t sub_1D6DE7D28()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8NewsFeed15FormatStateView_identifier);

  return v1;
}

uint64_t sub_1D6DE7D68()
{
  v1 = *v0;
  FormatLayoutView.prepareForReuse()();
  v2 = (v1 + OBJC_IVAR____TtC8NewsFeed15FormatStateView_lastRenderedState);
  *v2 = 0;
  v2[1] = 0;
}

void sub_1D6DE7DBC()
{
  sub_1D6DE8078(&qword_1EC8965A8);

  JUMPOUT(0x1DA6F6FC0);
}

BOOL sub_1D6DE7E14()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed15FormatStateView_formatLayoutView);
  v2 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_scrollObservers;
  swift_beginAccess();
  if (*(*(v1 + v2) + 16))
  {
    return 1;
  }

  v4 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewAnimations;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5 >> 62)
  {
    v6 = sub_1D7263BFC();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6 != 0;
}

uint64_t sub_1D6DE8078(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatStateView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6DE80B8()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed15FormatStateView_identifier);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = OBJC_IVAR____TtC8NewsFeed15FormatStateView_formatLayoutView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for FormatLayoutView()) initWithFrame_];
  v3 = (v0 + OBJC_IVAR____TtC8NewsFeed15FormatStateView_state);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed15FormatStateView_stateAccessibilityRenderer) = 0;
  v4 = (v0 + OBJC_IVAR____TtC8NewsFeed15FormatStateView_renderBlock);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC8NewsFeed15FormatStateView_lastRenderedState);
  *v5 = 0;
  v5[1] = 0;
  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D6DE819C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = a1 + 81;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = *(v2 - 49);
    sub_1D6DF15CC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D698BE40(0, *(v3 + 2) + 1, 1, v3);
    }

    v6 = *(v3 + 2);
    v5 = *(v3 + 3);
    v7 = v3;
    if (v6 >= v5 >> 1)
    {
      v7 = sub_1D698BE40((v5 > 1), v6 + 1, 1, v3);
    }

    result = sub_1D6DF15D4();
    *(v7 + 2) = v6 + 1;
    v3 = v7;
    v9 = v7 + 32;
    *&v7[8 * v6 + 32] = v4;
    v2 += 56;
    --v1;
  }

  while (v1);
  v10 = 0;
  v11 = v6 + 1;
  v12 = MEMORY[0x1E69E7CC0];
  v13 = (v7 + 32);
LABEL_9:
  v14 = *v13;
  v13 = &v9[8 * v10];
  while (1)
  {
    if (v11 == v10)
    {

      return v12;
    }

    v15 = *(v3 + 2);
    if (v10 >= v15)
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v7 = *v13;
    if (v10 == v15 - 1)
    {
      break;
    }

    if (__OFADD__(v7, 1))
    {
      goto LABEL_31;
    }

    if (++v10 >= v15)
    {
      goto LABEL_32;
    }

    v16 = v13[1];
    ++v13;
    if (v7 + 1 != v16)
    {
      if (v7 < v14)
      {
        __break(1u);
        return result;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D698BD2C(0, *(v12 + 2) + 1, 1, v12);
        v12 = result;
      }

      v18 = *(v12 + 2);
      v17 = *(v12 + 3);
      if (v18 >= v17 >> 1)
      {
        result = sub_1D698BD2C((v17 > 1), v18 + 1, 1, v12);
        v12 = result;
      }

      *(v12 + 2) = v18 + 1;
      v19 = &v12[16 * v18];
      *(v19 + 4) = v14;
      *(v19 + 5) = v7;
      goto LABEL_9;
    }
  }

  if (v7 < v14)
  {
    goto LABEL_33;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_26;
  }

LABEL_34:
  v12 = sub_1D698BD2C(0, *(v12 + 2) + 1, 1, v12);
LABEL_26:
  v21 = *(v12 + 2);
  v20 = *(v12 + 3);
  if (v21 >= v20 >> 1)
  {
    v12 = sub_1D698BD2C((v20 > 1), v21 + 1, 1, v12);
  }

  *(v12 + 2) = v21 + 1;
  v22 = &v12[16 * v21];
  *(v22 + 4) = v14;
  *(v22 + 5) = v7;
  return v12;
}

uint64_t sub_1D6DE8450(char *a1, unint64_t a2, char a3, int a4)
{
  v5 = v4;
  v10 = type metadata accessor for FormatFile();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DebugFormatUploadPrivateEntry(0);
  v81 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v66 - v20);
  v22 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v79 = a2;
  if (a3)
  {
    LODWORD(v75) = a4;
    sub_1D6DF42FC(0, &qword_1EC8965B8, &type metadata for DebugFormatUploadData, MEMORY[0x1E69D6568]);
    swift_allocObject();
    v66 = sub_1D725AEFC();
    sub_1D725A78C();
    sub_1D725A7BC();
    swift_allocObject();
    v78 = sub_1D725A7AC();
    v80 = swift_allocObject();
    *(v80 + 16) = MEMORY[0x1E69E7CC0];
    v77 = *(v5 + 16);
    v82 = 0xD000000000000019;
    v83 = 0x80000001D73F31F0;

    sub_1D725B32C();

    sub_1D6DF42FC(0, &qword_1EDF17B98, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6770]);
    v25 = v24;
    v26 = objc_allocWithZone(v24);

    v27 = sub_1D725B3AC();
    v28 = objc_allocWithZone(v25);
    v76 = sub_1D725B3AC();
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = a1;
    *(v30 + 32) = a2;
    *(v30 + 40) = 1;
    v31 = v80;
    *(v30 + 48) = v66;
    *(v30 + 56) = v31;
    v32 = v76;

    sub_1D725ACDC();

    v76 = a1;
    v33 = *(a1 + 2);
    if (v33)
    {
      v34 = *(v81 + 80);
      v35 = &v76[(v34 + 32) & ~v34];
      v72 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_uploaderOperationQueue;
      v73 = v34;
      v81 = *(v81 + 72);
      v67 = (v34 + 16) & ~v34;
      v70 = ((v34 + 24) & ~v34) + v68;
      v71 = (v34 + 24) & ~v34;
      v69 = v75 & 1;
      v74 = v32;
      v75 = v27;
      do
      {
        sub_1D6DF43B0(v35, v21, type metadata accessor for DebugFormatUploadPrivateEntry);
        v47 = *(*v21 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
        if (v47 > 2)
        {
          if (*(*v21 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) <= 4u)
          {
            if (v47 == 3)
            {
              sub_1D6DF43B0(v21, v17, type metadata accessor for DebugFormatUploadPrivateEntry);
              v48 = v67;
              v49 = swift_allocObject();
              sub_1D6DEFEE8(v17, v49 + v48, type metadata accessor for DebugFormatUploadPrivateEntry);
              sub_1D6DF434C(0, &qword_1EC8965C0, type metadata accessor for DebugFormatUploadPrivateEntryResult, MEMORY[0x1E69D6770]);
              v51 = objc_allocWithZone(v50);
            }

            else
            {
              sub_1D6DF43B0(v21, v17, type metadata accessor for DebugFormatUploadPrivateEntry);
              v52 = v70;
              v53 = swift_allocObject();
              *(v53 + 16) = v5;
              sub_1D6DEFEE8(v17, v53 + v71, type metadata accessor for DebugFormatUploadPrivateEntry);
              *(v53 + v52) = v69;
              sub_1D6DF434C(0, &qword_1EC8965C0, type metadata accessor for DebugFormatUploadPrivateEntryResult, MEMORY[0x1E69D6770]);
              objc_allocWithZone(v54);
            }

            goto LABEL_5;
          }

          if (v47 == 5)
          {
            goto LABEL_6;
          }
        }

        sub_1D6DF43B0(v21, v17, type metadata accessor for DebugFormatUploadPrivateEntry);
        v36 = v70;
        v37 = swift_allocObject();
        *(v37 + 16) = v5;
        sub_1D6DEFEE8(v17, v37 + v71, type metadata accessor for DebugFormatUploadPrivateEntry);
        *(v37 + v36) = v69;
        sub_1D6DF434C(0, &qword_1EC8965C0, type metadata accessor for DebugFormatUploadPrivateEntryResult, MEMORY[0x1E69D6770]);
        v39 = objc_allocWithZone(v38);

LABEL_5:
        v40 = sub_1D725B3AC();
        v41 = swift_allocObject();
        swift_weakInit();
        v42 = swift_allocObject();
        v43 = v5;
        v44 = v80;
        *(v42 + 16) = v78;
        *(v42 + 24) = v44;
        *(v42 + 32) = v41;
        v45 = v79;
        *(v42 + 40) = v76;
        *(v42 + 48) = v45;
        *(v42 + 56) = 1;

        v5 = v43;

        v46 = v40;

        sub_1D725ACDC();

        v27 = v75;
        [v46 addDependency_];
        v32 = v74;
        [v74 addDependency_];
        [*(v77 + v72) addOperation_];

LABEL_6:
        sub_1D6DF0BAC(v21, type metadata accessor for DebugFormatUploadPrivateEntry);
        v35 += v81;
        --v33;
      }

      while (v33);
    }

    v63 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_uploaderOperationQueue;
    v64 = v77;
    [*(v77 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_uploaderOperationQueue) addOperation_];
    result = MEMORY[0x1DA6F2570]([*(v64 + v63) addOperation_]);
    if (result)
    {
      v65 = result;

      return v65;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v55 = *(a1 + 2);
    v56 = MEMORY[0x1E69E7CC0];
    if (v55)
    {
      v82 = MEMORY[0x1E69E7CC0];
      sub_1D7263ECC();
      v57 = &a1[(*(v81 + 80) + 32) & ~*(v81 + 80)];
      v58 = *(v81 + 72);
      do
      {
        sub_1D6DF43B0(v57, v17, type metadata accessor for DebugFormatUploadPrivateEntry);
        v59 = *v17;
        sub_1D6DF43B0(v17 + *(v14 + 20), v13, type metadata accessor for FormatFile);

        sub_1D6DF0BAC(v17, type metadata accessor for DebugFormatUploadPrivateEntry);
        type metadata accessor for DebugFormatUploadEntry();
        v60 = swift_allocObject();
        *(v60 + 16) = v59;
        sub_1D6DEFEE8(v13, v60 + OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_file, type metadata accessor for FormatFile);
        v61 = v60 + OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_target;
        *v61 = 0;
        *(v61 + 8) = 0;
        *(v61 + 16) = 2;
        *(v60 + OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_diff) = 0;
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
        v57 += v58;
        --v55;
      }

      while (v55);
      v56 = v82;
      a2 = v79;
    }

    v82 = v56;
    v83 = a2;
    sub_1D6DF42FC(0, &qword_1EC8965B0, &type metadata for DebugFormatUploadData, MEMORY[0x1E69D6B18]);
    swift_allocObject();

    return sub_1D725BB1C();
  }

  return result;
}

uint64_t sub_1D6DE8E58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
  if (v4 <= 2)
  {
    v5 = 0xE600000000000000;
    if (*(*a1 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
    {
      if (v4 == 1)
      {
        v6 = 0x726564616548;
      }

      else
      {
        v6 = 0x7265746F6F46;
      }
    }

    else
    {
      v6 = 0x74756F79614CLL;
    }
  }

  else if (*(*a1 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) > 4u)
  {
    if (v4 == 5)
    {
      v5 = 0xE700000000000000;
      v6 = 0x7972617262694CLL;
    }

    else
    {
      v5 = 0xEA0000000000646ELL;
      v6 = 0x756F72676B636142;
    }
  }

  else if (v4 == 3)
  {
    v5 = 0xE700000000000000;
    v6 = 0x6C6C6177796150;
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x656D656854;
  }

  MEMORY[0x1DA6F9910](v6, v5);

  MEMORY[0x1DA6F9910](58, 0xE100000000000000);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);

  MEMORY[0x1DA6F9910](v7, v8);

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1D6DE8FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7261ABC();
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D7261B2C();
  v10 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5DA7C();
  v14 = sub_1D726308C();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  aBlock[4] = sub_1D6DF2504;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_99;
  v16 = _Block_copy(aBlock);

  sub_1D7261AEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D6DF0E1C(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60]);
  v17 = MEMORY[0x1E69E7F60];
  sub_1D6DF434C(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D6DF0E64(&qword_1EDF1B560, &qword_1EDF1B570, v17);
  sub_1D7263B6C();
  MEMORY[0x1DA6FA730](0, v13, v9, v16);
  _Block_release(v16);

  (*(v20 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v19);
}

uint64_t sub_1D6DE92C4(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {

    sub_1D725B32C();

    sub_1D7263D4C();

    v3 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v3);

    MEMORY[0x1DA6F9910](0x6974617265706F20, 0xEA00000000006E6FLL);
    if (a1 == 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = 115;
    }

    if (a1 == 1)
    {
      v5 = 0xE000000000000000;
    }

    else
    {
      v5 = 0xE100000000000000;
    }

    MEMORY[0x1DA6F9910](v4, v5);

    MEMORY[0x1DA6F9910](0x696E69616D657220, 0xEA0000000000676ELL);
  }

  else
  {

    sub_1D725B32C();
  }

  sub_1D725B32C();
}

uint64_t sub_1D6DE94A0(uint64_t *a1, int a2)
{
  v3 = v2;
  v42 = a2;
  v43 = *v2;
  v5 = type metadata accessor for DebugFormatUploadPrivateEntry(0);
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v8 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DebugFormatUploadPrivateEntryResult(0);
  MEMORY[0x1EEE9AC00](v44, v9);
  v11 = (v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for FormatFile();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1 + *(v5 + 24);
  v19 = *v18;
  v20 = *(v18 + 1);
  v21 = v18[16];
  if (v21 >= 2)
  {
    v33 = *a1;
    sub_1D6DF43B0(a1 + *(v5 + 20), v17, type metadata accessor for FormatFile);
    type metadata accessor for DebugFormatUploadEntry();
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    sub_1D6DEFEE8(v17, v34 + OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_file, type metadata accessor for FormatFile);
    v35 = v34 + OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_target;
    *v35 = v19;
    *(v35 + 8) = v20;
    *(v35 + 16) = 2;
    *(v34 + OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_diff) = 0;
    *v11 = v34;
    swift_storeEnumTagMultiPayload();
    sub_1D6DF434C(0, &qword_1EC8965D8, type metadata accessor for DebugFormatUploadPrivateEntryResult, MEMORY[0x1E69D6B18]);
    swift_allocObject();

    return sub_1D725BB1C();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v14, v15);
    v36[-4] = v3;
    v36[-3] = v19;
    v36[-2] = v20;
    sub_1D5EAD0DC(v19, v20, v21);
    sub_1D6DF0D78(0, &qword_1EC880FE8, type metadata accessor for DebugNewsroomThemeData, sub_1D6DF0DE8);
    v39 = sub_1D725BDCC();
    sub_1D5DF6958(v19, v20, v21);
    v40 = type metadata accessor for DebugFormatUploadPrivateEntry;
    sub_1D6DF43B0(a1, v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DebugFormatUploadPrivateEntry);
    v22 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v41 = v22 + v6;
    v23 = swift_allocObject();
    v36[1] = v3;
    v37 = v22;
    v38 = type metadata accessor for DebugFormatUploadPrivateEntry;
    sub_1D6DEFEE8(v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for DebugFormatUploadPrivateEntry);
    v24 = sub_1D725B92C();
    sub_1D6DF17FC(0);
    sub_1D725BA9C();

    v25 = v40;
    sub_1D6DF43B0(a1, v8, v40);
    v26 = v41;
    v27 = swift_allocObject();
    sub_1D6DEFEE8(v8, v27 + v22, type metadata accessor for DebugFormatUploadPrivateEntry);
    *(v27 + v26) = v42 & 1;
    v28 = sub_1D725B92C();
    sub_1D725BAAC();

    sub_1D6DF43B0(a1, v8, v25);
    v29 = swift_allocObject();
    sub_1D6DEFEE8(v8, v29 + v37, v38);
    v30 = sub_1D725B92C();
    v31 = sub_1D725BB6C();

    return v31;
  }
}

uint64_t sub_1D6DE99E4(uint64_t *a1)
{
  v2 = type metadata accessor for DebugFormatUploadPrivateEntryResult(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DebugFormatUploadHiddenEntry();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  type metadata accessor for DebugFormatUploadHiddenReason();
  swift_storeEnumTagMultiPayload();
  *v9 = v10;
  sub_1D6DF43B0(v9, v5, type metadata accessor for DebugFormatUploadHiddenEntry);
  swift_storeEnumTagMultiPayload();
  sub_1D6DF434C(0, &qword_1EC8965D8, type metadata accessor for DebugFormatUploadPrivateEntryResult, MEMORY[0x1E69D6B18]);
  swift_allocObject();

  v11 = sub_1D725BB1C();
  sub_1D6DF0BAC(v9, type metadata accessor for DebugFormatUploadHiddenEntry);
  return v11;
}

uint64_t sub_1D6DE9B78(uint64_t *a1, int a2)
{
  v3 = v2;
  v42 = a2;
  v43 = *v2;
  v5 = type metadata accessor for DebugFormatUploadPrivateEntry(0);
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v8 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DebugFormatUploadPrivateEntryResult(0);
  MEMORY[0x1EEE9AC00](v44, v9);
  v11 = (v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for FormatFile();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1 + *(v5 + 24);
  v19 = *v18;
  v20 = *(v18 + 1);
  v21 = v18[16];
  if (v21 >= 2)
  {
    v33 = *a1;
    sub_1D6DF43B0(a1 + *(v5 + 20), v17, type metadata accessor for FormatFile);
    type metadata accessor for DebugFormatUploadEntry();
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    sub_1D6DEFEE8(v17, v34 + OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_file, type metadata accessor for FormatFile);
    v35 = v34 + OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_target;
    *v35 = v19;
    *(v35 + 8) = v20;
    *(v35 + 16) = 2;
    *(v34 + OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_diff) = 0;
    *v11 = v34;
    swift_storeEnumTagMultiPayload();
    sub_1D6DF434C(0, &qword_1EC8965D8, type metadata accessor for DebugFormatUploadPrivateEntryResult, MEMORY[0x1E69D6B18]);
    swift_allocObject();

    return sub_1D725BB1C();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v14, v15);
    v36[-4] = v3;
    v36[-3] = v19;
    v36[-2] = v20;
    sub_1D5EAD0DC(v19, v20, v21);
    sub_1D6DF0D78(0, &qword_1EC880FD8, type metadata accessor for DebugNewsroomLayoutData, sub_1D6DF00D4);
    v39 = sub_1D725BDCC();
    sub_1D5DF6958(v19, v20, v21);
    v40 = type metadata accessor for DebugFormatUploadPrivateEntry;
    sub_1D6DF43B0(a1, v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DebugFormatUploadPrivateEntry);
    v22 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v41 = v22 + v6;
    v23 = swift_allocObject();
    v36[1] = v3;
    v37 = v22;
    v38 = type metadata accessor for DebugFormatUploadPrivateEntry;
    sub_1D6DEFEE8(v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for DebugFormatUploadPrivateEntry);
    v24 = sub_1D725B92C();
    sub_1D6DF0A44(0);
    sub_1D725BA9C();

    v25 = v40;
    sub_1D6DF43B0(a1, v8, v40);
    v26 = v41;
    v27 = swift_allocObject();
    sub_1D6DEFEE8(v8, v27 + v22, type metadata accessor for DebugFormatUploadPrivateEntry);
    *(v27 + v26) = v42 & 1;
    v28 = sub_1D725B92C();
    sub_1D725BAAC();

    sub_1D6DF43B0(a1, v8, v25);
    v29 = swift_allocObject();
    sub_1D6DEFEE8(v8, v29 + v37, v38);
    v30 = sub_1D725B92C();
    v31 = sub_1D725BB6C();

    return v31;
  }
}

uint64_t sub_1D6DEA0BC()
{
  sub_1D6DF42FC(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BB1C();
}

uint64_t sub_1D6DEA11C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v10)
    {
      sub_1D725AECC();
    }

    else
    {
      v12 = *(a3 + 16);
      v13 = *(result + 16);

      sub_1D6DE8FC0(0, v12, v13);

      swift_beginAccess();
      v14 = *(a7 + 16);

      sub_1D6DF3E2C(a4, v14);

      sub_1D725AEEC();
    }
  }

  return result;
}

uint64_t sub_1D6DEA238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x1E69D6AF8];
  sub_1D6DF434C(0, &qword_1EC88F210, type metadata accessor for DebugFormatUploadPrivateEntryResult, MEMORY[0x1E69D6AF8]);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v23 - v12;
  sub_1D725A76C();
  sub_1D6DF0EC8(a1, v13, &qword_1EC88F210, type metadata accessor for DebugFormatUploadPrivateEntryResult, v8, sub_1D6DF434C);
  swift_beginAccess();
  v14 = *(a3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_1D6996598(0, v14[2] + 1, 1, v14);
    *(a3 + 16) = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_1D6996598(v16 > 1, v17 + 1, 1, v14);
  }

  v14[2] = v17 + 1;
  sub_1D6DF0B38(v13, v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v17, &qword_1EC88F210, type metadata accessor for DebugFormatUploadPrivateEntryResult, MEMORY[0x1E69D6AF8], sub_1D6DF434C);
  *(a3 + 16) = v14;
  swift_endAccess();
  sub_1D725A77C();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    v20 = [*(*(result + 16) + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_uploaderOperationQueue) operationCount];
    v21 = *(a5 + 16);
    v22 = *(v19 + 16);

    sub_1D6DE8FC0(v20, v21, v22);
  }

  return result;
}

uint64_t sub_1D6DEA4D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v36 = a1;
  v39 = a2;
  v35 = type metadata accessor for FormatFile();
  MEMORY[0x1EEE9AC00](v35, v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for FormatPackage();
  MEMORY[0x1EEE9AC00](v34, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D725BD1C();
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FormatVersioningModeRelease(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6DF434C(0, &unk_1EDF43AB0, MEMORY[0x1E69D6638], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v34 - v18;
  v20 = sub_1D725ACBC();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v22 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1D725972C();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1D6DF43B0(v36, v4, type metadata accessor for FormatFile);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        sub_1D6DEFEE8(v4, v7, type metadata accessor for FormatPackage);
        v31 = v37;
        v30 = v38;
        (*(v37 + 16))(v11, &v7[*(v34 + 96)], v38);
        sub_1D6DF0BAC(v7, type metadata accessor for FormatPackage);
        return (*(v31 + 32))(v39, v11, v30);
      }

      sub_1D6DF0BAC(v4, type metadata accessor for FormatFile);
    }

    else if (EnumCaseMultiPayload != 4)
    {
      if (qword_1EDF3CA50 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v38, qword_1EDF3CA58);
      sub_1D725BCFC();
      v28 = sub_1D725B17C();
      (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
      return sub_1D725BCEC();
    }

    if (qword_1EDF3CA50 != -1)
    {
      swift_once();
    }

    v32 = v38;
    v33 = __swift_project_value_buffer(v38, qword_1EDF3CA58);
    return (*(v37 + 16))(v39, v33, v32);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D6DEFEE8(v25, v15, type metadata accessor for FormatVersioningModeRelease);
      (*(v37 + 16))(v39, &v15[*(v12 + 20)], v38);
      return sub_1D6DF0BAC(v15, type metadata accessor for FormatVersioningModeRelease);
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_1D6DEFEE8(v25, v15, type metadata accessor for FormatVersioningModeRelease);
      sub_1D725BCFC();
      v27 = sub_1D725B17C();
      (*(*(v27 - 8) + 56))(v19, 1, 1, v27);
      sub_1D725BCEC();
      return sub_1D6DF0BAC(v15, type metadata accessor for FormatVersioningModeRelease);
    }

    return (*(v37 + 32))(v39, v25, v38);
  }
}

BOOL sub_1D6DEAAB8()
{
  sub_1D725BD1C();
  sub_1D6DF0E1C(&qword_1EDF43A50, MEMORY[0x1E69D6B38]);
  return (sub_1D7261F5C() & 1) == 0;
}

uint64_t sub_1D6DEAB4C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1D6DF0D78(0, &qword_1EC880FD8, type metadata accessor for DebugNewsroomLayoutData, sub_1D6DF00D4);
  v47 = *(v5 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v49 = &v45 - v7;
  sub_1D6DF0A44(0);
  v52 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v50 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E6720];
  sub_1D6DF434C(0, &qword_1EC8965D0, sub_1D604F944, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v46 = &v45 - v14;
  sub_1D6DF434C(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], v11);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v45 - v17;
  v19 = sub_1D725BD1C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v45 - v26;
  v54 = a1;
  v28 = sub_1D61FA708();
  v29 = a3 + *(type metadata accessor for DebugFormatUploadPrivateEntry(0) + 20);
  sub_1D6DEA4D8(v29, v23);
  v53 = v23;
  v30 = v51;
  sub_1D5E3EF78(sub_1D6DF15DC, v28, v18);
  v51 = v30;

  v31 = *(v20 + 8);
  v31(v23, v19);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v32 = MEMORY[0x1E69E6720];
    sub_1D6DF0C0C(v18, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D6DF434C);
    sub_1D604F944(0);
    v34 = v46;
    (*(*(v33 - 8) + 56))(v46, 1, 1, v33);
    v35 = *(v52 + 48);
    v36 = v34;
    v37 = v50;
    sub_1D6DF0B38(v36, v50, &qword_1EC8965D0, sub_1D604F944, v32, sub_1D6DF434C);
    sub_1D6DF15FC(v54, v37 + v35);
    sub_1D6DF434C(0, &qword_1EC896618, sub_1D6DF0A44, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  else
  {
    (*(v20 + 32))(v27, v18, v19);
    v39 = v54;
    sub_1D604D06C(v27, v54);
    v40 = v49;
    sub_1D6DF15FC(v39, v49);
    v41 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v42 = swift_allocObject();
    sub_1D6DF0AF0(v40, v42 + v41);
    v43 = sub_1D725B92C();
    v44 = sub_1D725BA8C();

    v31(v27, v19);
    return v44;
  }
}

uint64_t sub_1D6DEB0C8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v291 = a4;
  v310 = a2;
  v327 = a1;
  v324 = a5;
  v6 = type metadata accessor for DebugFormatUploadHiddenEntry();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v282 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6DF0C6C();
  v301 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v329 = &v282 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v303 = &v282 - v15;
  sub_1D6DF42FC(0, &qword_1EC8965E8, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6EF0]);
  v309 = v16;
  v316 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v315 = &v282 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v288 = &v282 - v21;
  sub_1D6DF0D78(0, &qword_1EC880FE8, type metadata accessor for DebugNewsroomThemeData, sub_1D6DF0DE8);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v296 = &v282 - v24;
  sub_1D6DF0D78(0, &qword_1EC880FD8, type metadata accessor for DebugNewsroomLayoutData, sub_1D6DF00D4);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v295 = &v282 - v27;
  v299 = type metadata accessor for DebugFormatUploadRemotePackage();
  MEMORY[0x1EEE9AC00](v299, v28);
  v314 = &v282 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v297 = &v282 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v287 = &v282 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v286 = &v282 - v38;
  v321 = type metadata accessor for FormatFile();
  MEMORY[0x1EEE9AC00](v321, v39);
  v302 = &v282 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v294 = &v282 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v292 = &v282 - v46;
  v47 = MEMORY[0x1E69E6720];
  sub_1D6DF434C(0, &qword_1EC8965D0, sub_1D604F944, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v298 = (&v282 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v51, v52);
  v305 = &v282 - v53;
  sub_1D6DF434C(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30], v47);
  MEMORY[0x1EEE9AC00](v54 - 8, v55);
  v308 = &v282 - v56;
  v307 = sub_1D7263FCC();
  v306 = *(v307 - 8);
  MEMORY[0x1EEE9AC00](v307, v57);
  v304 = &v282 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = type metadata accessor for FormatVersioningMode(0);
  MEMORY[0x1EEE9AC00](v312, v59);
  v313 = &v282 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = sub_1D725BD1C();
  v323 = *(v325 - 8);
  MEMORY[0x1EEE9AC00](v325, v61);
  v318 = &v282 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63, v64);
  v290 = &v282 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v293 = &v282 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v311 = &v282 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v326 = &v282 - v74;
  sub_1D6DF434C(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], v47);
  MEMORY[0x1EEE9AC00](v75 - 8, v76);
  v317 = &v282 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v78, v79);
  v289 = &v282 - v80;
  MEMORY[0x1EEE9AC00](v81, v82);
  v319 = &v282 - v83;
  MEMORY[0x1EEE9AC00](v84, v85);
  v87 = &v282 - v86;
  MEMORY[0x1EEE9AC00](v88, v89);
  v91 = &v282 - v90;
  v92 = sub_1D725785C();
  MEMORY[0x1EEE9AC00](v92, v93);
  v300 = a3;
  if (sub_1D5F18714())
  {
    v94 = *v327;
    type metadata accessor for DebugFormatUploadHiddenReason();
    swift_storeEnumTagMultiPayload();
    *v9 = v94;
    sub_1D6DEFEE8(v9, v324, type metadata accessor for DebugFormatUploadHiddenEntry);
    type metadata accessor for DebugFormatUploadPrivateEntryResult(0);
    swift_storeEnumTagMultiPayload();
  }

  v283 = v6;
  v284 = v9;
  sub_1D72578EC();
  swift_allocObject();
  v322 = sub_1D72578DC();
  v96 = MEMORY[0x1E6967F78];
  sub_1D6DF434C(0, &qword_1EC8813F0, MEMORY[0x1E6967F78], MEMORY[0x1E69E6F90]);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1D7279970;
  sub_1D725782C();
  sub_1D725784C();
  sub_1D725783C();
  *&v335 = v97;
  sub_1D6DF0E1C(&qword_1EC8813F8, MEMORY[0x1E6967F78]);
  sub_1D6DF434C(0, &qword_1EC881400, v96, MEMORY[0x1E69E62F8]);
  sub_1D6DF0E64(&qword_1EC881408, &qword_1EC881400, v96);
  v98 = v327;
  sub_1D7263B6C();
  sub_1D725786C();
  sub_1D6DEF788(v98, v91);
  sub_1D6DF0EC8(v91, v87, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D6DF434C);
  v99 = v323;
  v100 = *(v323 + 48);
  v101 = v325;
  if (v100(v87, 1, v325) == 1)
  {
    v102 = v326;
    if (qword_1EDF3CA50 != -1)
    {
      swift_once();
    }

    v103 = __swift_project_value_buffer(v101, qword_1EDF3CA58);
    (*(v99 + 16))(v102, v103, v101);
    if (v100(v87, 1, v101) != 1)
    {
      sub_1D6DF0C0C(v87, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D6DF434C);
    }
  }

  else
  {
    (*(v99 + 32))(v326, v87, v101);
  }

  v104 = v319;
  sub_1D6DF0EC8(v91, v319, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D6DF434C);
  v105 = v100(v104, 1, v101);
  v285 = v91;
  if (v105 == 1)
  {
    v106 = v99;
    sub_1D6DF0C0C(v104, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D6DF434C);
  }

  else
  {
    v108 = v311;
    (*(v99 + 32))(v311, v104, v101);
    v109 = v313;
    (*(v99 + 16))(v313, v108, v101);
    swift_storeEnumTagMultiPayload();
    v110 = sub_1D72578CC();
    v112 = v111;
    *&v330 = *v111;
    swift_bridgeObjectRetain_n();
    Dictionary<>.seedFormatCodingVersion(mode:)(v109);
    sub_1D6DF0BAC(v109, type metadata accessor for FormatVersioningMode);
    *v112 = v330;

    v110(&v335, 0);
    v106 = v99;
    (*(v99 + 8))(v108, v101);
  }

  v107 = v328;
  v113 = type metadata accessor for DebugFormatUploadPrivateEntry(0);
  v114 = *(v113 + 20);
  sub_1D6DF0E1C(&qword_1EC8857F0, type metadata accessor for FormatFile);
  v115 = sub_1D72578BC();
  v328 = v107;
  if (v107)
  {

    (*(v106 + 8))(v326, v101);
    return sub_1D6DF0C0C(v285, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D6DF434C);
  }

  v319 = v115;
  v320 = v116;
  v313 = v114;
  v117 = v308;
  sub_1D7263FBC();
  v118 = v306;
  v119 = v307;
  result = (*(v306 + 48))(v117, 1, v307);
  if (result != 1)
  {
    v120 = v304;
    (*(v118 + 32))(v304, v117, v119);
    v335 = 0u;
    v336 = 0u;
    v121 = sub_1D72578CC();
    sub_1D6D61ED0(&v335, v120);
    v121(&v330, 0);
    v122 = v310;
    v123 = v305;
    sub_1D6DF0EC8(v310, v305, &qword_1EC8965D0, sub_1D604F944, MEMORY[0x1E69E6720], sub_1D6DF434C);
    sub_1D604F944(0);
    v125 = v124;
    v126 = *(*(v124 - 8) + 48);
    if (v126(v123, 1, v124) == 1)
    {
      goto LABEL_19;
    }

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D6DF0BAC(v123, sub_1D604F944);
      v122 = v310;
LABEL_19:
      v312 = v113;
      v127 = v325;
      v321 = *(v106 + 16);
      (v321)(v318, v326, v325);
      v128 = v298;
      sub_1D6DF0EC8(v122, v298, &qword_1EC8965D0, sub_1D604F944, MEMORY[0x1E69E6720], sub_1D6DF434C);
      if (v126(v128, 1, v125) == 1)
      {
        sub_1D6DF0C0C(v128, &qword_1EC8965D0, sub_1D604F944, MEMORY[0x1E69E6720], sub_1D6DF434C);
        v311 = 0;
        v129 = v106;
        v130 = v320;
        v131 = v297;
      }

      else
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v130 = v320;
        v131 = v297;
        if (EnumCaseMultiPayload == 1)
        {
          v311 = *v128;
        }

        else
        {
          sub_1D6DF0BAC(v128, sub_1D604F944);
          v311 = 0;
        }

        v129 = v106;
      }

      (*(v129 + 56))(v317, 1, 1, v127);
      v142 = v300;
      sub_1D6DF43B0(v300, v131, type metadata accessor for DebugFormatUploadRemotePackage);
      v143 = swift_getEnumCaseMultiPayload() == 1;
      v144 = v319;
      v145 = v131;
      if (v143)
      {
        v146 = v296;
        sub_1D6DF0F3C(v145, v296);
        v147 = sub_1D614A520();
        v148 = &qword_1EC880FE8;
        v149 = type metadata accessor for DebugNewsroomThemeData;
        v150 = sub_1D6DF0DE8;
      }

      else
      {
        v146 = v295;
        sub_1D6DF0AF0(v145, v295);
        v147 = sub_1D61FA708();
        v148 = &qword_1EC880FD8;
        v149 = type metadata accessor for DebugNewsroomLayoutData;
        v150 = sub_1D6DF00D4;
      }

      sub_1D6DF0C0C(v146, v148, v149, v150, sub_1D6DF0D78);
      v151 = *v327;
      v152 = v142;
      v153 = v314;
      sub_1D6DF43B0(v152, v314, type metadata accessor for DebugFormatUploadRemotePackage);
      type metadata accessor for DebugFormatUploadDiff();
      v154 = swift_allocObject();
      *(v154 + 16) = v144;
      *(v154 + 24) = v130;
      (v321)(v154 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_localVersion, v318, v127);
      *(v154 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteData) = xmmword_1D72AFA90;
      *(v154 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteError) = v311;
      sub_1D6DF0EC8(v317, v154 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteVersion, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D6DF434C);
      *(v154 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteVersions) = v147;
      *(v154 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_package) = v151;
      v310 = v154;
      sub_1D6DF43B0(v153, v154 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remotePackage, type metadata accessor for DebugFormatUploadRemotePackage);

      sub_1D5E3E824(v144, v130);
      v311 = v151;

      v155 = v328;
      v156 = sub_1D60DA9EC(v144, v130);
      if (v157)
      {
        v158 = v156;
        v159 = v157;
        sub_1D5B952F8(v144, v130);
        v160 = v309;
        v161 = v301;
LABEL_41:
        *&v335 = v158;
        *(&v335 + 1) = v159;
        sub_1D5BF4D9C();
        v174 = sub_1D7263ACC();

        *&v335 = 0;
        *(&v335 + 1) = 0xE000000000000000;
        v175 = sub_1D7263ACC();
        v340 = MEMORY[0x1E69E7CD0];
        v339 = MEMORY[0x1E69E7CD0];
        v321 = v174;
        *&v335 = v174;
        *&v330 = v175;
        v176 = MEMORY[0x1E69E62F8];
        sub_1D6DF42FC(0, &qword_1EC8965F8, MEMORY[0x1E69E67B0], MEMORY[0x1E69E62F8]);
        sub_1D6DF0D28(&qword_1EC896600, &qword_1EC8965F8, v176);
        v177 = v315;
        sub_1D7261F2C();
        v178 = v329;
        (*(v316 + 16))(v329, v177, v160);
        v179 = *(v161 + 36);
        sub_1D6DF0D28(&qword_1EC8965F0, &qword_1EC8965E8, MEMORY[0x1E69E6EF0]);
        sub_1D7262BFC();
        sub_1D7262C5C();
        v180 = v178;
        v143 = *&v178[v179] == v335;
        v328 = v155;
        if (!v143)
        {
          v202 = MEMORY[0x1E69E67B0];
          while (1)
          {
            v203 = sub_1D7262D0C();
            v206 = v204[1];
            v205 = v204[2];
            v207 = *v204;
            v338 = *(v204 + 24);
            v336 = v206;
            v337 = v205;
            v335 = v207;
            sub_1D6DF0EC8(&v335, &v330, &unk_1EC896608, v202, MEMORY[0x1E69E6EE8], sub_1D6DF42FC);
            v203(&v333, 0);
            sub_1D7262C6C();
            if ((v338 & 0x100) == 0)
            {
              break;
            }

            if (v335 < *(v175 + 16))
            {
              goto LABEL_48;
            }

LABEL_45:
            sub_1D6DF0C0C(&v335, &unk_1EC896608, v202, MEMORY[0x1E69E6EE8], sub_1D6DF42FC);
            sub_1D7262C5C();
            v180 = v329;
            if (*&v329[v179] == v335)
            {
              goto LABEL_43;
            }
          }

          if (v335 >= *(v321 + 16))
          {
            goto LABEL_45;
          }

LABEL_48:
          sub_1D5FE917C(&v330, v335);
          goto LABEL_45;
        }

LABEL_43:
        sub_1D6DF0BAC(v180, sub_1D6DF0C6C);
        v181 = v310;
        *(v310 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_localOffsets) = v340;
        *(v181 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteOffsets) = v339;
        v182 = *(v321 + 16);

        *(v181 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_localNumberOfLines) = v182;
        v183 = *(v175 + 16);

        *(v181 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteNumberOfLines) = v183;
        v184 = v315;
        v185 = sub_1D726416C();
        v186 = sub_1D6DE819C(v185);

        *(v181 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_localHunkRanges) = v186;
        v187 = sub_1D726417C();
        v329 = sub_1D6DE819C(v187);

        (*(v316 + 8))(v184, v160);
        sub_1D6DF0BAC(v314, type metadata accessor for DebugFormatUploadRemotePackage);
        v188 = MEMORY[0x1E69D6B38];
        v189 = MEMORY[0x1E69E6720];
        sub_1D6DF0C0C(v317, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D6DF434C);
        v190 = *(v323 + 8);
        v191 = v325;
        v190(v318, v325);
        v190(v326, v191);
        sub_1D6DF0C0C(v285, &qword_1EDF45AC0, v188, v189, sub_1D6DF434C);
        *(v181 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteHunkRanges) = v329;
        v192 = v327;
        v193 = v302;
        sub_1D6DF43B0(&v313[v327], v302, type metadata accessor for FormatFile);
        v194 = v192 + *(v312 + 24);
        v195 = *v194;
        v196 = *(v194 + 8);
        LOBYTE(v188) = *(v194 + 16);
        type metadata accessor for DebugFormatUploadEntry();
        v197 = swift_allocObject();
        *(v197 + 16) = v311;
        sub_1D6DEFEE8(v193, v197 + OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_file, type metadata accessor for FormatFile);
        v198 = v197 + OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_target;
        *v198 = v195;
        *(v198 + 8) = v196;
        *(v198 + 16) = v188;
        *(v197 + OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_diff) = v181;
        *v324 = v197;
        type metadata accessor for DebugFormatUploadPrivateEntryResult(0);
        swift_storeEnumTagMultiPayload();
        v199 = v195;
        v200 = v196;
        v201 = v188;
        return sub_1D5EAD0DC(v199, v200, v201);
      }

      v333 = v144;
      v334 = v130;
      sub_1D5E3E824(v144, v130);
      sub_1D5B49474(0, &qword_1EC883708);
      v162 = swift_dynamicCast();
      v161 = v301;
      if (v162)
      {
        sub_1D5B7DDE8(&v330, &v335);
        __swift_project_boxed_opaque_existential_1(&v335, *(&v336 + 1));
        v163 = sub_1D726415C();
        v160 = v309;
        if (v163)
        {
          sub_1D5B952F8(v144, v320);
          __swift_project_boxed_opaque_existential_1(&v335, *(&v336 + 1));
          sub_1D726414C();
          v159 = *(&v330 + 1);
          v158 = v330;
          __swift_destroy_boxed_opaque_existential_1(&v335);
          goto LABEL_41;
        }

        __swift_destroy_boxed_opaque_existential_1(&v335);
      }

      else
      {
        v332 = 0;
        v330 = 0u;
        v331 = 0u;
        sub_1D6DF0BAC(&v330, sub_1D6DF1344);
        v160 = v309;
      }

      v172 = v320;
      v158 = sub_1D60DA7C8(v144, v320);
      v159 = v173;
      sub_1D5B952F8(v144, v172);
      goto LABEL_41;
    }

    v133 = v123;
    v134 = v292;
    sub_1D6DEFEE8(v133, v292, type metadata accessor for FormatFile);
    v135 = v294;
    v136 = v293;
    sub_1D6DEE7E0(v294, v293, v134, v326);
    v137 = v328;
    v138 = sub_1D72578BC();
    v140 = v325;
    if (v137)
    {
      v328 = v137;

      sub_1D5B952F8(v319, v320);
      v141 = *(v106 + 8);
      v141(v136, v140);
      sub_1D6DF0BAC(v135, type metadata accessor for FormatFile);
      sub_1D6DF0BAC(v134, type metadata accessor for FormatFile);
      v141(v326, v140);
      return sub_1D6DF0C0C(v285, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D6DF434C);
    }

    v164 = v138;
    v165 = v325;
    v166 = v326;
    v312 = v113;
    v167 = v106;
    if (v291)
    {
      v168 = v139;
      v169 = sub_1D6DF1464(v319, v320, v138, v139);
      v139 = v168;
      if (v169)
      {
        sub_1D5B952F8(v164, v168);

        sub_1D5B952F8(v319, v320);
        sub_1D6DF0BAC(v294, type metadata accessor for FormatFile);
        sub_1D6DF0BAC(v134, type metadata accessor for FormatFile);
        (*(v106 + 8))(v166, v165);
        sub_1D6DF0C0C(v285, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D6DF434C);
        v170 = *v327;
        v171 = v284;
        (*(v106 + 32))(v284 + *(v283 + 20), v293, v165);
        type metadata accessor for DebugFormatUploadHiddenReason();
        swift_storeEnumTagMultiPayload();
        *v171 = v170;
        sub_1D6DEFEE8(v171, v324, type metadata accessor for DebugFormatUploadHiddenEntry);
        type metadata accessor for DebugFormatUploadPrivateEntryResult(0);
        swift_storeEnumTagMultiPayload();
      }
    }

    v317 = v164;
    v318 = v139;
    v208 = sub_1D72578BC();
    v209 = v293;
    v328 = 0;
    v315 = v210;
    v321 = v208;
    v211 = v166;
    v212 = *(v167 + 16);
    v212(v290, v211, v165);
    v213 = v289;
    v329 = v212;
    v212(v289, v209, v165);
    (*(v167 + 56))(v213, 0, 1, v165);
    v214 = v300;
    v215 = v286;
    sub_1D6DF43B0(v300, v286, type metadata accessor for DebugFormatUploadRemotePackage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v216 = v296;
      sub_1D6DF0F3C(v215, v296);
      v217 = sub_1D614A520();
      v218 = &qword_1EC880FE8;
      v219 = type metadata accessor for DebugNewsroomThemeData;
      v220 = sub_1D6DF0DE8;
    }

    else
    {
      v216 = v295;
      sub_1D6DF0AF0(v215, v295);
      v217 = sub_1D61FA708();
      v218 = &qword_1EC880FD8;
      v219 = type metadata accessor for DebugNewsroomLayoutData;
      v220 = sub_1D6DF00D4;
    }

    sub_1D6DF0C0C(v216, v218, v219, v220, sub_1D6DF0D78);
    v221 = *v327;
    v222 = v287;
    sub_1D6DF43B0(v214, v287, type metadata accessor for DebugFormatUploadRemotePackage);
    type metadata accessor for DebugFormatUploadDiff();
    v223 = swift_allocObject();
    v224 = v319;
    v225 = v320;
    *(v223 + 16) = v319;
    *(v223 + 24) = v225;
    (v329)(v223 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_localVersion, v290, v165);
    v226 = (v223 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteData);
    v227 = v321;
    v228 = v315;
    *v226 = v321;
    v226[1] = v228;
    *(v223 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteError) = 0;
    sub_1D6DF0EC8(v289, v223 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteVersion, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D6DF434C);
    *(v223 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteVersions) = v217;
    *(v223 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_package) = v221;
    v314 = v223;
    v229 = v227;
    sub_1D6DF43B0(v222, v223 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remotePackage, type metadata accessor for DebugFormatUploadRemotePackage);

    sub_1D5E3E824(v227, v228);
    v311 = v221;

    sub_1D5E3E824(v227, v228);
    sub_1D5E3E824(v224, v225);
    v230 = v328;
    v231 = sub_1D60DA9EC(v224, v225);
    if (v232)
    {
      v233 = v231;
      v234 = v232;
      sub_1D5B952F8(v224, v225);
      v235 = v309;
      goto LABEL_62;
    }

    v333 = v224;
    v334 = v225;
    sub_1D5E3E824(v224, v225);
    sub_1D5B49474(0, &qword_1EC883708);
    v236 = swift_dynamicCast();
    v235 = v309;
    if (v236)
    {
      sub_1D5B7DDE8(&v330, &v335);
      __swift_project_boxed_opaque_existential_1(&v335, *(&v336 + 1));
      if (sub_1D726415C())
      {
        sub_1D5B952F8(v224, v320);
        __swift_project_boxed_opaque_existential_1(&v335, *(&v336 + 1));
        sub_1D726414C();
        v234 = *(&v330 + 1);
        v233 = v330;
        __swift_destroy_boxed_opaque_existential_1(&v335);
        v229 = v321;
        goto LABEL_62;
      }

      __swift_destroy_boxed_opaque_existential_1(&v335);
      v229 = v321;
    }

    else
    {
      v332 = 0;
      v330 = 0u;
      v331 = 0u;
      sub_1D6DF0BAC(&v330, sub_1D6DF1344);
    }

    v237 = v320;
    v233 = sub_1D60DA7C8(v224, v320);
    v234 = v238;
    sub_1D5B952F8(v224, v237);
LABEL_62:
    sub_1D5E3E824(v229, v228);
    sub_1D5E3E824(v229, v228);
    v239 = sub_1D60DA9EC(v229, v228);
    if (v240)
    {
      v241 = v239;
      v242 = v240;
      sub_1D5B952F8(v229, v228);
    }

    else
    {
      v333 = v229;
      v334 = v228;
      sub_1D5E3E824(v229, v228);
      sub_1D5B49474(0, &qword_1EC883708);
      if (swift_dynamicCast())
      {
        sub_1D5B7DDE8(&v330, &v335);
        __swift_project_boxed_opaque_existential_1(&v335, *(&v336 + 1));
        v243 = sub_1D726415C();
        v229 = v321;
        v244 = v243;
        sub_1D5B952F8(v321, v228);
        if (v244)
        {
          __swift_project_boxed_opaque_existential_1(&v335, *(&v336 + 1));
          sub_1D726414C();
          sub_1D5B952F8(v229, v228);
          sub_1D5B952F8(v229, v228);
          v242 = *(&v330 + 1);
          v241 = v330;
          __swift_destroy_boxed_opaque_existential_1(&v335);
LABEL_71:
          v328 = v230;
          *&v335 = v233;
          *(&v335 + 1) = v234;
          sub_1D5BF4D9C();
          v246 = sub_1D7263ACC();

          *&v335 = v241;
          *(&v335 + 1) = v242;
          v247 = sub_1D7263ACC();

          v340 = MEMORY[0x1E69E7CD0];
          v339 = MEMORY[0x1E69E7CD0];
          v329 = v246;
          *&v335 = v246;
          *&v330 = v247;
          v248 = MEMORY[0x1E69E62F8];
          sub_1D6DF42FC(0, &qword_1EC8965F8, MEMORY[0x1E69E67B0], MEMORY[0x1E69E62F8]);
          sub_1D6DF0D28(&qword_1EC896600, &qword_1EC8965F8, v248);
          v249 = v288;
          sub_1D7261F2C();
          v250 = v303;
          (*(v316 + 16))(v303, v249, v235);
          v251 = *(v301 + 36);
          sub_1D6DF0D28(&qword_1EC8965F0, &qword_1EC8965E8, MEMORY[0x1E69E6EF0]);
          sub_1D7262BFC();
          sub_1D7262C5C();
          v252 = v250;
          if (*&v250[v251] == v335)
          {
            v253 = v309;
LABEL_73:
            sub_1D6DF0BAC(v252, sub_1D6DF0C6C);
            v254 = v314;
            *(v314 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_localOffsets) = v340;
            *(v254 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteOffsets) = v339;
            v255 = v254;
            v256 = *(v329 + 2);

            *(v255 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_localNumberOfLines) = v256;
            v257 = *(v247 + 16);

            *(v255 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteNumberOfLines) = v257;
            v258 = v255;
            v259 = v288;
            v260 = sub_1D726416C();
            v261 = sub_1D6DE819C(v260);

            *(v258 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_localHunkRanges) = v261;
            v262 = sub_1D726417C();
            v263 = sub_1D6DE819C(v262);

            sub_1D5B952F8(v317, v318);

            sub_1D5B952F8(v321, v315);
            (*(v316 + 8))(v259, v253);
            sub_1D6DF0BAC(v287, type metadata accessor for DebugFormatUploadRemotePackage);
            v264 = MEMORY[0x1E69D6B38];
            v265 = MEMORY[0x1E69E6720];
            sub_1D6DF0C0C(v289, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D6DF434C);
            v266 = *(v323 + 8);
            v267 = v325;
            v266(v290, v325);
            v266(v293, v267);
            sub_1D6DF0BAC(v294, type metadata accessor for FormatFile);
            sub_1D6DF0BAC(v292, type metadata accessor for FormatFile);
            v266(v326, v267);
            sub_1D6DF0C0C(v285, &qword_1EDF45AC0, v264, v265, sub_1D6DF434C);
            v268 = v314;
            *(v314 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteHunkRanges) = v263;
            v269 = v327;
            v270 = v302;
            sub_1D6DF43B0(&v313[v327], v302, type metadata accessor for FormatFile);
            v271 = v269 + *(v312 + 24);
            v272 = *v271;
            v273 = *(v271 + 8);
            LOBYTE(v264) = *(v271 + 16);
            type metadata accessor for DebugFormatUploadEntry();
            v274 = swift_allocObject();
            *(v274 + 16) = v311;
            sub_1D6DEFEE8(v270, v274 + OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_file, type metadata accessor for FormatFile);
            v275 = v274 + OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_target;
            *v275 = v272;
            *(v275 + 8) = v273;
            *(v275 + 16) = v264;
            *(v274 + OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_diff) = v268;
            *v324 = v274;
            type metadata accessor for DebugFormatUploadPrivateEntryResult(0);
            swift_storeEnumTagMultiPayload();
            v199 = v272;
            v200 = v273;
            v201 = v264;
            return sub_1D5EAD0DC(v199, v200, v201);
          }

          v276 = MEMORY[0x1E69E67B0];
          while (1)
          {
            v277 = sub_1D7262D0C();
            v280 = v278[1];
            v279 = v278[2];
            v281 = *v278;
            v338 = *(v278 + 24);
            v336 = v280;
            v337 = v279;
            v335 = v281;
            sub_1D6DF0EC8(&v335, &v330, &unk_1EC896608, v276, MEMORY[0x1E69E6EE8], sub_1D6DF42FC);
            v277(&v333, 0);
            sub_1D7262C6C();
            if ((v338 & 0x100) == 0)
            {
              break;
            }

            if (v335 < *(v247 + 16))
            {
              goto LABEL_78;
            }

LABEL_75:
            sub_1D6DF0C0C(&v335, &unk_1EC896608, v276, MEMORY[0x1E69E6EE8], sub_1D6DF42FC);
            v253 = v309;
            sub_1D7262C5C();
            v252 = v303;
            if (*&v303[v251] == v335)
            {
              goto LABEL_73;
            }
          }

          if (v335 >= *(v329 + 2))
          {
            goto LABEL_75;
          }

LABEL_78:
          sub_1D5FE917C(&v330, v335);
          goto LABEL_75;
        }

        __swift_destroy_boxed_opaque_existential_1(&v335);
      }

      else
      {
        sub_1D5B952F8(v229, v228);
        v332 = 0;
        v330 = 0u;
        v331 = 0u;
        sub_1D6DF0BAC(&v330, sub_1D6DF1344);
      }

      v241 = sub_1D60DA7C8(v229, v228);
      v242 = v245;
    }

    sub_1D5B952F8(v229, v228);
    sub_1D5B952F8(v229, v228);
    goto LABEL_71;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6DEDEE4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1D6DF0D78(0, &qword_1EC880FE8, type metadata accessor for DebugNewsroomThemeData, sub_1D6DF0DE8);
  v47 = *(v5 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v49 = &v45 - v7;
  sub_1D6DF17FC(0);
  v52 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v50 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E6720];
  sub_1D6DF434C(0, &qword_1EC8965D0, sub_1D604F944, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v46 = &v45 - v14;
  sub_1D6DF434C(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], v11);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v45 - v17;
  v19 = sub_1D725BD1C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v45 - v26;
  v54 = a1;
  v28 = sub_1D614A520();
  v29 = a3 + *(type metadata accessor for DebugFormatUploadPrivateEntry(0) + 20);
  sub_1D6DEA4D8(v29, v23);
  v53 = v23;
  v30 = v51;
  sub_1D5E3EF78(sub_1D6DF4558, v28, v18);
  v51 = v30;

  v31 = *(v20 + 8);
  v31(v23, v19);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v32 = MEMORY[0x1E69E6720];
    sub_1D6DF0C0C(v18, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720], sub_1D6DF434C);
    sub_1D604F944(0);
    v34 = v46;
    (*(*(v33 - 8) + 56))(v46, 1, 1, v33);
    v35 = *(v52 + 48);
    v36 = v34;
    v37 = v50;
    sub_1D6DF0B38(v36, v50, &qword_1EC8965D0, sub_1D604F944, v32, sub_1D6DF434C);
    sub_1D6DF23E8(v54, v37 + v35);
    sub_1D6DF434C(0, &qword_1EC896628, sub_1D6DF17FC, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  else
  {
    (*(v20 + 32))(v27, v18, v19);
    v39 = v54;
    sub_1D604D8F8(v27, v54);
    v40 = v49;
    sub_1D6DF23E8(v39, v49);
    v41 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v42 = swift_allocObject();
    sub_1D6DF0F3C(v40, v42 + v41);
    v43 = sub_1D725B92C();
    v44 = sub_1D725BA8C();

    v31(v27, v19);
    return v44;
  }
}

uint64_t sub_1D6DEE460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a3(0) + 48);
  sub_1D6DF43B0(a1, a5, sub_1D604F944);
  sub_1D604F944(0);
  (*(*(v10 - 8) + 56))(a5, 0, 1, v10);
  return a4(a2, a5 + v9);
}

uint64_t sub_1D6DEE524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t (*a5)(void)@<X4>, void (*a6)(uint64_t, char *, __n128)@<X5>, void (*a7)(char *, char *)@<X6>, int a8@<W7>, uint64_t *a9@<X8>)
{
  v25[3] = a8;
  v27 = a4;
  v26 = a2;
  v14 = a5(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v25 - v17;
  v19 = type metadata accessor for DebugFormatUploadRemotePackage();
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  a6(a1, v18, v21);
  a7(&v18[*(v15 + 56)], v23);
  swift_storeEnumTagMultiPayload();
  sub_1D6DEB0C8(a3, a1, v23, v27, a9);
  sub_1D6DF0BAC(v23, type metadata accessor for DebugFormatUploadRemotePackage);
  return sub_1D6DF0C0C(v18, &qword_1EC8965D0, sub_1D604F944, MEMORY[0x1E69E6720], sub_1D6DF434C);
}

id sub_1D6DEE6E4@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for DebugFormatUploadHiddenReason();
  MEMORY[0x1EEE9AC00](v6, v6);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a2;
  *v8 = a1;
  swift_storeEnumTagMultiPayload();
  *a3 = v9;
  v10 = type metadata accessor for DebugFormatUploadHiddenEntry();
  sub_1D6DEFEE8(v8, a3 + *(v10 + 20), type metadata accessor for DebugFormatUploadHiddenReason);
  type metadata accessor for DebugFormatUploadPrivateEntryResult(0);
  swift_storeEnumTagMultiPayload();

  return a1;
}

uint64_t sub_1D6DEE7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v139 = a2;
  v140 = a4;
  v138 = a1;
  v5 = MEMORY[0x1E69E6720];
  sub_1D6DF434C(0, &qword_1EDF3BB50, MEMORY[0x1E69D6510], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v130 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v125 = &v116 - v11;
  v12 = sub_1D725ACBC();
  v136 = *(v12 - 8);
  v137 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v135 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v134 = &v116 - v17;
  sub_1D6DF434C(0, &unk_1EDF43AB0, MEMORY[0x1E69D6638], v5);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v123 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v124 = &v116 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v129 = &v116 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v128 = &v116 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v131 = &v116 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v133 = &v116 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v132 = (&v116 - v38);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v116 - v41;
  v43 = sub_1D725BD1C();
  v44 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v45);
  v47 = &v116 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for FormatPackage();
  MEMORY[0x1EEE9AC00](v48, v49);
  v127 = &v116 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v116 - v53;
  v55 = type metadata accessor for FormatFile();
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v116 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6DF43B0(a3, v58, type metadata accessor for FormatFile);
  v126 = v55;
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1D6DF43B0(a3, v138, type metadata accessor for FormatFile);
    (*(v44 + 16))(v139, v140, v43);
    v67 = type metadata accessor for FormatFile;
LABEL_6:
    v68 = v67;
    v69 = v58;
    return sub_1D6DF0BAC(v69, v68);
  }

  v120 = a3;
  sub_1D6DEFEE8(v58, v54, type metadata accessor for FormatPackage);
  v117 = v48;
  v59 = *(v48 + 96);
  v121 = v44;
  v122 = v43;
  (*(v44 + 16))(v47, &v54[v59], v43);
  sub_1D725BD0C();
  v60 = sub_1D725B17C();
  v118 = *(v60 - 8);
  v61 = *(v118 + 48);
  v62 = v61(v42, 1, v60);
  sub_1D6DF0C0C(v42, &unk_1EDF43AB0, MEMORY[0x1E69D6638], MEMORY[0x1E69E6720], sub_1D6DF434C);
  v63 = v140;
  if (v62 != 1)
  {
    v64 = v132;
    sub_1D725BD0C();
    v65 = v61(v64, 1, v60);
    sub_1D6DF0C0C(v64, &unk_1EDF43AB0, MEMORY[0x1E69D6638], MEMORY[0x1E69E6720], sub_1D6DF434C);
    if (v65 == 1)
    {
      v66 = v54;
LABEL_17:
      sub_1D6DF0BAC(v66, type metadata accessor for FormatPackage);
      sub_1D6DF43B0(v120, v138, type metadata accessor for FormatFile);
      return (*(v121 + 32))(v139, v47, v122);
    }
  }

  v119 = v54;
  v71 = v133;
  sub_1D725BD0C();
  v132 = v61;
  v72 = v61(v71, 1, v60);
  sub_1D6DF0C0C(v71, &unk_1EDF43AB0, MEMORY[0x1E69D6638], MEMORY[0x1E69E6720], sub_1D6DF434C);
  v73 = v137;
  if (v72 == 1)
  {
    v74 = v131;
    sub_1D725BD0C();
    v75 = v132(v74, 1, v60);
    sub_1D6DF0C0C(v74, &unk_1EDF43AB0, MEMORY[0x1E69D6638], MEMORY[0x1E69E6720], sub_1D6DF434C);
    if (v75 != 1)
    {
      v76 = v134;
      sub_1D725BCFC();
      v77 = v63;
      v78 = sub_1D725ACAC();
      v79 = *(v136 + 8);
      v79(v76, v73);
      v80 = v135;
      sub_1D725BCFC();
      v81 = sub_1D725ACAC();
      v79(v80, v73);
      v82 = v78 == v81;
      v83 = v77;
      if (v82)
      {
        v84 = v127;
        sub_1D6DEFEE8(v119, v127, type metadata accessor for FormatPackage);
        v86 = v121;
        v85 = v122;
        (*(v121 + 24))(v84 + *(v117 + 96), v83, v122);
        sub_1D6DF43B0(v84, v138, type metadata accessor for FormatPackage);
        swift_storeEnumTagMultiPayload();
        (*(v86 + 32))(v139, v47, v85);
        v68 = type metadata accessor for FormatPackage;
        v69 = v84;
        return sub_1D6DF0BAC(v69, v68);
      }
    }
  }

  v87 = v134;
  sub_1D725BCFC();
  v88 = sub_1D725ACAC();
  v89 = *(v136 + 8);
  v89(v87, v73);
  v90 = v135;
  sub_1D725BCFC();
  v91 = sub_1D725ACAC();
  v89(v90, v73);
  if (v88 != v91)
  {
    v66 = v119;
    goto LABEL_17;
  }

  v92 = v128;
  sub_1D725BD0C();
  v93 = v47;
  if (v132(v92, 1, v60) == 1)
  {
    sub_1D6DF0C0C(v92, &unk_1EDF43AB0, MEMORY[0x1E69D6638], MEMORY[0x1E69E6720], sub_1D6DF434C);
    v94 = 0;
    v95 = 1;
    v97 = v129;
    v96 = v130;
  }

  else
  {
    v98 = v125;
    sub_1D725B16C();
    (*(v118 + 8))(v92, v60);
    v99 = v137;
    v100 = (*(v136 + 48))(v98, 1, v137);
    v97 = v129;
    v96 = v130;
    if (v100 == 1)
    {
      sub_1D6DF0C0C(v98, &qword_1EDF3BB50, MEMORY[0x1E69D6510], MEMORY[0x1E69E6720], sub_1D6DF434C);
      v94 = 0;
      v95 = 1;
    }

    else
    {
      v101 = sub_1D725ACAC();
      v102 = v98;
      v94 = v101;
      v89(v102, v99);
      v95 = 0;
    }
  }

  sub_1D725BD0C();
  if (v132(v97, 1, v60) == 1)
  {
    sub_1D6DF0C0C(v97, &unk_1EDF43AB0, MEMORY[0x1E69D6638], MEMORY[0x1E69E6720], sub_1D6DF434C);
    if (v95)
    {
      goto LABEL_23;
    }

LABEL_35:
    sub_1D6DF0BAC(v119, type metadata accessor for FormatPackage);
    sub_1D6DF43B0(v120, v138, type metadata accessor for FormatFile);
    return (*(v121 + 32))(v139, v93, v122);
  }

  sub_1D725B16C();
  (*(v118 + 8))(v97, v60);
  v113 = v137;
  if ((*(v136 + 48))(v96, 1, v137) != 1)
  {
    v114 = sub_1D725ACAC();
    v89(v96, v113);
    if (v94 == v114)
    {
      v115 = v95;
    }

    else
    {
      v115 = 1;
    }

    if (v115 != 1)
    {
      goto LABEL_23;
    }

    goto LABEL_35;
  }

  sub_1D6DF0C0C(v96, &qword_1EDF3BB50, MEMORY[0x1E69D6510], MEMORY[0x1E69E6720], sub_1D6DF434C);
  if ((v95 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_23:
  v103 = v134;
  sub_1D725BCFC();
  v104 = v135;
  sub_1D725BCFC();
  sub_1D6DF0E1C(&qword_1EC896610, MEMORY[0x1E69D6510]);
  v105 = v137;
  v106 = sub_1D7261FBC();
  v89(v104, v105);
  v89(v103, v105);
  v108 = v121;
  v107 = v122;
  v109 = v117;
  if (v106)
  {
    goto LABEL_27;
  }

  v110 = v124;
  sub_1D725BD0C();
  v111 = v132(v110, 1, v60);
  sub_1D6DF0C0C(v110, &unk_1EDF43AB0, MEMORY[0x1E69D6638], MEMORY[0x1E69E6720], sub_1D6DF434C);
  if (v111 == 1)
  {
    goto LABEL_27;
  }

  v112 = v123;
  sub_1D725BD0C();
  if (v132(v112, 1, v60) == 1)
  {
    sub_1D6DF0C0C(v112, &unk_1EDF43AB0, MEMORY[0x1E69D6638], MEMORY[0x1E69E6720], sub_1D6DF434C);
LABEL_27:
    v58 = v127;
    sub_1D6DEFEE8(v119, v127, type metadata accessor for FormatPackage);
    (*(v108 + 24))(&v58[*(v109 + 96)], v140, v107);
    sub_1D6DF43B0(v58, v138, type metadata accessor for FormatPackage);
    swift_storeEnumTagMultiPayload();
    (*(v108 + 32))(v139, v93, v107);
    v67 = type metadata accessor for FormatPackage;
    goto LABEL_6;
  }

  sub_1D6DF0BAC(v119, type metadata accessor for FormatPackage);
  sub_1D6DF0C0C(v112, &unk_1EDF43AB0, MEMORY[0x1E69D6638], MEMORY[0x1E69E6720], sub_1D6DF434C);
  sub_1D6DF43B0(v120, v138, type metadata accessor for FormatFile);
  return (*(v108 + 32))(v139, v93, v107);
}

uint64_t sub_1D6DEF788@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v50 = a1;
  v51 = a2;
  v2 = type metadata accessor for FormatFile();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for FormatPackage();
  MEMORY[0x1EEE9AC00](v49, v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatVersioningModeRelease(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6DF434C(0, &unk_1EDF43AB0, MEMORY[0x1E69D6638], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v48 - v15;
  v17 = sub_1D725ACBC();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v19 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1D725972C();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D6DEFEE8(v22, v12, type metadata accessor for FormatVersioningModeRelease);
      v34 = *(v9 + 20);
      v35 = sub_1D725BD1C();
      v36 = *(v35 - 8);
      v37 = &v12[v34];
      v38 = v51;
      (*(v36 + 16))(v51, v37, v35);
      sub_1D6DF0BAC(v12, type metadata accessor for FormatVersioningModeRelease);
      return (*(v36 + 56))(v38, 0, 1, v35);
    }

    if (EnumCaseMultiPayload != 1)
    {
      v45 = sub_1D725BD1C();
      v46 = *(v45 - 8);
      v47 = v51;
      (*(v46 + 32))(v51, v22, v45);
      return (*(v46 + 56))(v47, 0, 1, v45);
    }

    sub_1D6DEFEE8(v22, v12, type metadata accessor for FormatVersioningModeRelease);
    sub_1D725BCFC();
    v24 = sub_1D725B17C();
    (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
    v25 = v51;
    sub_1D725BCEC();
    sub_1D6DF0BAC(v12, type metadata accessor for FormatVersioningModeRelease);
    v26 = sub_1D725BD1C();
    v27 = *(*(v26 - 8) + 56);
    v28 = v25;
    v29 = 0;
    return v27(v28, v29, 1, v26);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v39 = type metadata accessor for DebugFormatUploadPrivateEntry(0);
    sub_1D6DF43B0(v50 + *(v39 + 20), v5, type metadata accessor for FormatFile);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1D6DEFEE8(v5, v8, type metadata accessor for FormatPackage);
      v40 = *(v49 + 96);
      v41 = sub_1D725BD1C();
      v42 = *(v41 - 8);
      v43 = &v8[v40];
      v44 = v51;
      (*(v42 + 16))(v51, v43, v41);
      sub_1D6DF0BAC(v8, type metadata accessor for FormatPackage);
      return (*(v42 + 56))(v44, 0, 1, v41);
    }

    sub_1D6DF0BAC(v5, type metadata accessor for FormatFile);
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 4)
  {
LABEL_15:
    v26 = sub_1D725BD1C();
    v27 = *(*(v26 - 8) + 56);
    v28 = v51;
    v29 = 1;
    return v27(v28, v29, 1, v26);
  }

  if (qword_1EDF3CA50 != -1)
  {
    swift_once();
  }

  v30 = sub_1D725BD1C();
  __swift_project_value_buffer(v30, qword_1EDF3CA58);
  sub_1D725BCFC();
  v31 = sub_1D725B17C();
  (*(*(v31 - 8) + 56))(v16, 1, 1, v31);
  v32 = v51;
  sub_1D725BCEC();
  return (*(*(v30 - 8) + 56))(v32, 0, 1, v30);
}

uint64_t sub_1D6DEFEE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6DEFF50()
{
  v1 = *(type metadata accessor for DebugFormatUploadPrivateEntry(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1D6DE99E4(v2);
}

uint64_t sub_1D6DF0014(uint64_t (*a1)(uint64_t, void))
{
  v3 = *(type metadata accessor for DebugFormatUploadPrivateEntry(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));
  return a1(v4, *(v4 + *(v3 + 64)));
}

uint64_t objectdestroy_9Tm_2()
{
  v1 = type metadata accessor for DebugFormatUploadPrivateEntry(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v4 = v3 + *(v1 + 20);
  type metadata accessor for FormatFile();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      v5 = type metadata accessor for FormatContent(0);
      v6 = *(v5 + 20);
      v7 = sub_1D725891C();
      (*(*(v7 - 8) + 8))(v4 + v6, v7);

      v8 = *(v5 + 44);
      v9 = sub_1D72608BC();
      v10 = *(v9 - 8);
      if (!(*(v10 + 48))(v4 + v8, 1, v9))
      {
        (*(v10 + 8))(v4 + v8, v9);
      }

      goto LABEL_7;
    case 1u:

      if (*(v4 + 106) != 255)
      {
        v18 = *(v4 + 104) | (*(v4 + 106) << 16);
        sub_1D60CF684(*(v4 + 96), v18, SBYTE2(v18));
      }

      break;
    case 2u:

      if (*(v4 + 72) >= 3uLL)
      {
      }

      goto LABEL_34;
    case 3u:

      if (*(v4 + 56) >= 0x10uLL)
      {
      }

      goto LABEL_34;
    case 4u:

      goto LABEL_34;
    case 5u:

      if (*(v4 + 168) >= 3uLL)
      {
      }

      v30 = type metadata accessor for FormatPackage();
      v19 = v4 + v30[23];

      v29 = type metadata accessor for FormatCompilerOptions(0);
      v20 = v19 + *(v29 + 24);
      if (*(v20 + 8) != 1)
      {
      }

      v21 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
      v22 = sub_1D725B76C();
      v31 = *(v22 - 8);
      v23 = *(v31 + 48);
      if (!v23(v20 + v21, 1, v22))
      {
        (*(v31 + 8))(v20 + v21, v22);
      }

      v24 = *(v29 + 28);
      if (!v23(v19 + v24, 1, v22))
      {
        (*(v31 + 8))(v19 + v24, v22);
      }

      v25 = v30[24];
      v26 = sub_1D725BD1C();
      (*(*(v26 - 8) + 8))(v4 + v25, v26);
      v27 = v30[25];
      if (!v23(v4 + v27, 1, v22))
      {
        (*(v31 + 8))(v4 + v27, v22);
      }

      goto LABEL_34;
    case 6u:

      goto LABEL_34;
    case 7u:

      break;
    case 8u:

      goto LABEL_34;
    case 9u:

      goto LABEL_34;
    case 0xAu:

      sub_1D60CF6F4(*(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 80));
      break;
    case 0xBu:

      v11 = v4 + *(type metadata accessor for FormatBindingContent() + 28);

      v12 = type metadata accessor for FormatContent(0);
      v13 = *(v12 + 20);
      v14 = sub_1D725891C();
      (*(*(v14 - 8) + 8))(v11 + v13, v14);

      v15 = *(v12 + 44);
      v16 = sub_1D72608BC();
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(v11 + v15, 1, v16))
      {
        (*(v17 + 8))(v11 + v15, v16);
      }

LABEL_7:

      goto LABEL_34;
    case 0xCu:

LABEL_34:

      break;
    default:
      break;
  }

  sub_1D5DF6958(*(v3 + *(v1 + 24)), *(v3 + *(v1 + 24) + 8), *(v3 + *(v1 + 24) + 16));

  return swift_deallocObject();
}

uint64_t sub_1D6DF0B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D6DF0BAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6DF0C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1D6DF0C6C()
{
  if (!qword_1EC8965E0)
  {
    v0 = MEMORY[0x1E69E6EF0];
    sub_1D6DF42FC(255, &qword_1EC8965E8, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6EF0]);
    sub_1D6DF0D28(&qword_1EC8965F0, &qword_1EC8965E8, v0);
    v1 = sub_1D7263FAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8965E0);
    }
  }
}

uint64_t sub_1D6DF0D28(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D6DF42FC(255, a2, MEMORY[0x1E69E67B0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6DF0D78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = type metadata accessor for DebugNewsroomContainer();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D6DF0E1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6DF0E64(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D6DF434C(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6DF0EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D6DF0F84@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1D7257CAC();
    if (v10)
    {
      v11 = sub_1D7257CDC();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1D7257CCC();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1D7257CAC();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1D7257CDC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1D7257CCC();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1D6DF11B4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1D6DF13AC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1D5B952F8(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1D6DF0F84(v13, a3, a4, &v12);
  v10 = v4;
  sub_1D5B952F8(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

void sub_1D6DF1344()
{
  if (!qword_1EC89A1E0)
  {
    sub_1D5B49474(255, &qword_1EC883708);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC89A1E0);
    }
  }
}

uint64_t sub_1D6DF13AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1D7257CAC();
  v11 = result;
  if (result)
  {
    result = sub_1D7257CDC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1D7257CCC();
  sub_1D6DF0F84(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1D6DF1464(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1D5E3E824(a3, a4);
          return sub_1D6DF11B4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_1D6DF1838(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    sub_1D6DF434C(255, &qword_1EC8965D0, sub_1D604F944, MEMORY[0x1E69E6720]);
    sub_1D6DF0D78(255, a3, a4, a5);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v10)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t objectdestroy_25Tm_2()
{
  v1 = type metadata accessor for DebugFormatUploadPrivateEntry(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v4 = v3 + *(v1 + 20);
  type metadata accessor for FormatFile();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      v5 = type metadata accessor for FormatContent(0);
      v6 = *(v5 + 20);
      v7 = sub_1D725891C();
      (*(*(v7 - 8) + 8))(v4 + v6, v7);

      v8 = *(v5 + 44);
      v9 = sub_1D72608BC();
      v10 = *(v9 - 8);
      if (!(*(v10 + 48))(v4 + v8, 1, v9))
      {
        (*(v10 + 8))(v4 + v8, v9);
      }

      goto LABEL_7;
    case 1u:

      if (*(v4 + 106) != 255)
      {
        v18 = *(v4 + 104) | (*(v4 + 106) << 16);
        sub_1D60CF684(*(v4 + 96), v18, SBYTE2(v18));
      }

      break;
    case 2u:

      if (*(v4 + 72) >= 3uLL)
      {
      }

      goto LABEL_34;
    case 3u:

      if (*(v4 + 56) >= 0x10uLL)
      {
      }

      goto LABEL_34;
    case 4u:

      goto LABEL_34;
    case 5u:

      if (*(v4 + 168) >= 3uLL)
      {
      }

      v30 = type metadata accessor for FormatPackage();
      v19 = v4 + v30[23];

      v29 = type metadata accessor for FormatCompilerOptions(0);
      v20 = v19 + *(v29 + 24);
      if (*(v20 + 8) != 1)
      {
      }

      v21 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
      v22 = sub_1D725B76C();
      v31 = *(v22 - 8);
      v23 = *(v31 + 48);
      if (!v23(v20 + v21, 1, v22))
      {
        (*(v31 + 8))(v20 + v21, v22);
      }

      v24 = *(v29 + 28);
      if (!v23(v19 + v24, 1, v22))
      {
        (*(v31 + 8))(v19 + v24, v22);
      }

      v25 = v30[24];
      v26 = sub_1D725BD1C();
      (*(*(v26 - 8) + 8))(v4 + v25, v26);
      v27 = v30[25];
      if (!v23(v4 + v27, 1, v22))
      {
        (*(v31 + 8))(v4 + v27, v22);
      }

      goto LABEL_34;
    case 6u:

      goto LABEL_34;
    case 7u:

      break;
    case 8u:

      goto LABEL_34;
    case 9u:

      goto LABEL_34;
    case 0xAu:

      sub_1D60CF6F4(*(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 80));
      break;
    case 0xBu:

      v11 = v4 + *(type metadata accessor for FormatBindingContent() + 28);

      v12 = type metadata accessor for FormatContent(0);
      v13 = *(v12 + 20);
      v14 = sub_1D725891C();
      (*(*(v14 - 8) + 8))(v11 + v13, v14);

      v15 = *(v12 + 44);
      v16 = sub_1D72608BC();
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(v11 + v15, 1, v16))
      {
        (*(v17 + 8))(v11 + v15, v16);
      }

LABEL_7:

      goto LABEL_34;
    case 0xCu:

LABEL_34:

      break;
    default:
      break;
  }

  sub_1D5DF6958(*(v3 + *(v1 + 24)), *(v3 + *(v1 + 24) + 8), *(v3 + *(v1 + 24) + 16));

  return swift_deallocObject();
}

uint64_t sub_1D6DF2268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(uint64_t, char *, __n128)@<X3>, void (*a5)(char *, char *)@<X4>, int a6@<W5>, uint64_t *a7@<X8>)
{
  v15 = *(type metadata accessor for DebugFormatUploadPrivateEntry(0) - 8);
  v16 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  return sub_1D6DEE524(a1, a2, (v7 + v16), *(v7 + v16 + *(v15 + 64)), a3, a4, a5, a6, a7);
}

void *sub_1D6DF2510(uint64_t a1)
{
  v2 = type metadata accessor for DebugFormatUploadHiddenEntry();
  v205 = *(v2 - 8);
  v206 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v213 = v186 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v192 = (v186 - v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v191 = (v186 - v10);
  v11 = type metadata accessor for DebugFormatUploadHiddenReason();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v190 = v186 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v189 = v186 - v17;
  sub_1D6DF4238();
  v211 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v204 = v186 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v203 = v186 - v23;
  v24 = MEMORY[0x1E69E6720];
  sub_1D6DF434C(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v188 = v186 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v187 = v186 - v30;
  sub_1D5B592C0();
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v214 = v186 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = v186 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v199 = (v186 - v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = (v186 - v43);
  sub_1D6DF434C(0, &qword_1EC896640, type metadata accessor for DebugFormatUploadHiddenReason, v24);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v198 = (v186 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v48, v49);
  v197 = (v186 - v50);
  v202 = type metadata accessor for DebugFormatUploadPrivateEntry(0);
  v201 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202, v51);
  v194 = (v186 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v53, v54);
  v193 = (v186 - v55);
  MEMORY[0x1EEE9AC00](v56, v57);
  v210 = (v186 - v58);
  v219 = type metadata accessor for DebugFormatCompilerResultOutput();
  MEMORY[0x1EEE9AC00](v219, v59);
  v212 = (v186 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = type metadata accessor for FormatFile();
  MEMORY[0x1EEE9AC00](v61 - 8, v62);
  v221 = v186 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = type metadata accessor for DebugFormatCompilerResultEntry();
  v64 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218, v65);
  v67 = (v186 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  v223 = a1;
  sub_1D6DF434C(0, &qword_1EC88AAE8, type metadata accessor for DebugFormatCompilerResultEntry, MEMORY[0x1E69E62F8]);
  sub_1D6DF0E64(&qword_1EC88DDF0, &qword_1EC88AAE8, type metadata accessor for DebugFormatCompilerResultEntry);
  v68 = sub_1D72623CC();
  v69 = *(v68 + 16);
  if (v69)
  {
    v195 = 0;
    v70 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v186[1] = v68;
    v71 = v68 + v70;
    v217 = *(v64 + 72);
    v186[5] = v37 + 32;
    v196 = v37;
    v186[4] = v37 + 16;
    v207 = (v12 + 48);
    v208 = (v12 + 56);
    v186[3] = v44 + 4;
    v186[2] = v44 + 2;
    v72 = MEMORY[0x1E69E7CC0];
    v220 = MEMORY[0x1E69E7CC0];
    v200 = v44;
    v73 = v212;
    v209 = v11;
    while (1)
    {
      sub_1D6DF43B0(v71, v67, type metadata accessor for DebugFormatCompilerResultEntry);
      sub_1D6DF43B0(v67 + *(v218 + 20), v73, type metadata accessor for DebugFormatCompilerResultOutput);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v78 = *v73;
          v79 = *v67;
          v80 = v72;
          v81 = v213;
          *&v213[*(v206 + 20)] = *v73;
          swift_storeEnumTagMultiPayload();
          *v81 = v79;
          v72 = v80;

          v82 = v78;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v72 = sub_1D6994C14(0, v80[2] + 1, 1, v80);
          }

          v84 = v72[2];
          v83 = v72[3];
          if (v84 >= v83 >> 1)
          {
            v72 = sub_1D6994C14(v83 > 1, v84 + 1, 1, v72);
          }

          v72[2] = v84 + 1;
          v74 = v72 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v84;
          v75 = type metadata accessor for DebugFormatUploadHiddenEntry;
          v76 = v213;
          goto LABEL_4;
        }

        sub_1D67D37A8();
      }

      sub_1D6DEFEE8(v73, v221, type metadata accessor for FormatFile);

      sub_1D725972C();

      v86 = *v67;
      if (v223)
      {
        v215 = *v67;
        v216 = v72;
        if (v223 != 1)
        {

          sub_1D725972C();

          v100 = v222;
          v101 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions;
          v102 = v86 + *(type metadata accessor for FormatCompilerOptions(0) + 24);
          v103 = v214;
          sub_1D6DF43B0(v102 + v101, v214, sub_1D5B592C0);
          v104 = v196;
          sub_1D6DEFEE8(v103, v196, type metadata accessor for FormatCompilerOptions.Newsroom);
          v105 = v104[1];
          if (v100)
          {
            if (v100 == 1)
            {
              if (v105 != 1)
              {
                v105 = v104[3];
                v106 = &v216;
                goto LABEL_61;
              }

LABEL_36:
              sub_1D6DF0BAC(v104, type metadata accessor for FormatCompilerOptions.Newsroom);
LABEL_67:
              v153 = v214;
              sub_1D6DF43B0(v102 + v101, v214, sub_1D5B592C0);
              v154 = v199;
              sub_1D6DEFEE8(v153, v199, type metadata accessor for FormatCompilerOptions.Newsroom);
              v155 = *v154;
              v156 = v154[1];
              v157 = v154[2];
              v158 = v154[3];
              v159 = v154[4];
              v160 = v154[5];
              sub_1D5E4B8D0(*v154, v156);
              v161 = v154;
              v44 = v200;
              sub_1D6DF0BAC(v161, type metadata accessor for FormatCompilerOptions.Newsroom);
              v162 = v198;
              *v198 = v155;
              v162[1] = v156;
              v163 = v162;
              v162[2] = v157;
              v162[3] = v158;
              v162[4] = v159;
              v162[5] = v160;
              v150 = v209;
              swift_storeEnumTagMultiPayload();
              v164 = 0;
              v147 = 0;
              v105 = 0;
LABEL_68:
              v73 = v212;
              goto LABEL_69;
            }

            if (v105 == 1)
            {
              goto LABEL_36;
            }

            v105 = v104[5];
            v106 = &v217;
LABEL_61:
            v108 = *(v106 - 32);
          }

          else
          {
            v108 = v104;
            if (v105 == 1)
            {
              goto LABEL_36;
            }
          }

          v147 = *v108;

          sub_1D6DF0BAC(v104, type metadata accessor for FormatCompilerOptions.Newsroom);
          if (!v105)
          {
            goto LABEL_67;
          }

          v148 = v188;
          sub_1D725892C();

          v149 = sub_1D725895C();
          if ((*(*(v149 - 8) + 48))(v148, 1, v149) != 1)
          {
            sub_1D6DF0C0C(v148, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D6DF434C);
            v164 = 1;
            v150 = v209;
            v163 = v198;
            goto LABEL_68;
          }

          sub_1D6DF0C0C(v148, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D6DF434C);
          v150 = v209;
          if (v100)
          {
            if (v100 == 1)
            {
              v151 = 0xE700000000000000;
              v152 = 0x676E6967617453;
            }

            else
            {
              v151 = 0xEA00000000006E6FLL;
              v152 = 0x69746375646F7250;
            }
          }

          else
          {
            v151 = 0xE200000000000000;
            v152 = 16721;
          }

          v163 = v198;
          v73 = v212;
          *v198 = v152;
          v163[1] = v151;
          swift_storeEnumTagMultiPayload();
          v164 = 0;
          v147 = 0;
          v105 = 0;
LABEL_69:
          (*v208)(v163, v164, 1, v150);
          v165 = v163;
          v166 = *(v211 + 48);
          v167 = v204;
          *v204 = v147;
          *(v167 + 1) = v105;
          sub_1D6DF0B38(v165, &v167[v166], &qword_1EC896640, type metadata accessor for DebugFormatUploadHiddenReason, MEMORY[0x1E69E6720], sub_1D6DF434C);
          v168 = v167;
          v169 = *(v167 + 1);
          if (!v169)
          {
            v138 = v167;
            sub_1D6DF0BAC(v221, type metadata accessor for FormatFile);
            v178 = (*v207)(&v167[v166], 1, v150);
            v179 = v215;
            if (v178 == 1)
            {
              goto LABEL_86;
            }

            v180 = v138 + v166;
            v181 = v190;
            sub_1D6DEFEE8(v180, v190, type metadata accessor for DebugFormatUploadHiddenReason);
            v182 = v192;
            sub_1D6DF43B0(v181, v192 + *(v206 + 20), type metadata accessor for DebugFormatUploadHiddenReason);
            *v182 = v179;

            v72 = v216;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v72 = sub_1D6994C14(0, v72[2] + 1, 1, v72);
            }

            v184 = v72[2];
            v183 = v72[3];
            if (v184 >= v183 >> 1)
            {
              v72 = sub_1D6994C14(v183 > 1, v184 + 1, 1, v72);
            }

            sub_1D6DF0BAC(v190, type metadata accessor for DebugFormatUploadHiddenReason);
            v72[2] = v184 + 1;
            sub_1D6DEFEE8(v192, v72 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v184, type metadata accessor for DebugFormatUploadHiddenEntry);
            sub_1D6DF0BAC(v67, type metadata accessor for DebugFormatCompilerResultEntry);
            goto LABEL_83;
          }

          v170 = *v167;
          if ((*v207)(&v168[v166], 1, v150) != 1)
          {
            sub_1D6DF0BAC(v221, type metadata accessor for FormatFile);
            v146 = &v225;
            goto LABEL_85;
          }

          v171 = v194;
          *v194 = v215;
          v172 = v202;
          sub_1D6DEFEE8(v221, v171 + *(v202 + 20), type metadata accessor for FormatFile);
          v173 = v171 + *(v172 + 24);
          *v173 = v170;
          *(v173 + 1) = v169;
          v173[16] = 1;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v174 = v220;
          }

          else
          {
            v174 = sub_1D6994C48(0, v220[2] + 1, 1, v220);
          }

          v176 = v174[2];
          v175 = v174[3];
          v73 = v212;
          v72 = v216;
          if (v176 >= v175 >> 1)
          {
            v174 = sub_1D6994C48(v175 > 1, v176 + 1, 1, v174);
          }

          v174[2] = v176 + 1;
          v177 = (*(v201 + 80) + 32) & ~*(v201 + 80);
          v220 = v174;
          sub_1D6DEFEE8(v194, v174 + v177 + *(v201 + 72) * v176, type metadata accessor for DebugFormatUploadPrivateEntry);
          sub_1D6DF0BAC(v67, type metadata accessor for DebugFormatCompilerResultEntry);
LABEL_76:

          v195 = 1;
          goto LABEL_5;
        }

        sub_1D725972C();

        v87 = v222;
        v88 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions;
        v89 = v86 + *(type metadata accessor for FormatCompilerOptions(0) + 24);
        v90 = v214;
        sub_1D6DF43B0(v89 + v88, v214, sub_1D5B592C0);
        sub_1D6DEFEE8(v90, v44, type metadata accessor for FormatCompilerOptions.Newsroom);
        v91 = v44[1];
        if (v87)
        {
          if (v87 == 1)
          {
            if (v91 != 1)
            {
              v91 = v44[3];
              v92 = &v214;
              goto LABEL_38;
            }

LABEL_32:
            sub_1D6DF0BAC(v44, type metadata accessor for FormatCompilerOptions.Newsroom);
LABEL_44:
            v116 = v214;
            sub_1D6DF43B0(v89 + v88, v214, sub_1D5B592C0);
            v117 = v199;
            sub_1D6DEFEE8(v116, v199, type metadata accessor for FormatCompilerOptions.Newsroom);
            v118 = *v117;
            v119 = v117[1];
            v121 = v117[2];
            v120 = v117[3];
            v122 = v117[4];
            v123 = v117[5];
            sub_1D5E4B8D0(*v117, v119);
            sub_1D6DF0BAC(v117, type metadata accessor for FormatCompilerOptions.Newsroom);
            v113 = v197;
            *v197 = v118;
            v113[1] = v119;
            v113[2] = v121;
            v113[3] = v120;
            v113[4] = v122;
            v113[5] = v123;
            v73 = v212;
            v112 = v209;
LABEL_45:
            swift_storeEnumTagMultiPayload();
            v124 = 0;
            v109 = 0;
            v91 = 0;
            goto LABEL_46;
          }

          if (v91 == 1)
          {
            goto LABEL_32;
          }

          v91 = v44[5];
          v92 = &v215;
LABEL_38:
          v107 = *(v92 - 32);
        }

        else
        {
          v107 = v44;
          if (v91 == 1)
          {
            goto LABEL_32;
          }
        }

        v109 = *v107;

        sub_1D6DF0BAC(v44, type metadata accessor for FormatCompilerOptions.Newsroom);
        if (!v91)
        {
          goto LABEL_44;
        }

        v110 = v187;
        sub_1D725892C();

        v111 = sub_1D725895C();
        if ((*(*(v111 - 8) + 48))(v110, 1, v111) == 1)
        {

          sub_1D6DF0C0C(v110, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D6DF434C);
          v112 = v209;
          v113 = v197;
          if (v87)
          {
            if (v87 == 1)
            {
              v114 = 0xE700000000000000;
              v115 = 0x676E6967617453;
            }

            else
            {
              v114 = 0xEA00000000006E6FLL;
              v115 = 0x69746375646F7250;
            }
          }

          else
          {
            v114 = 0xE200000000000000;
            v115 = 16721;
          }

          *v197 = v115;
          v113[1] = v114;
          goto LABEL_45;
        }

        sub_1D6DF0C0C(v110, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D6DF434C);
        v124 = 1;
        v112 = v209;
        v113 = v197;
LABEL_46:
        (*v208)(v113, v124, 1, v112);
        v125 = *(v211 + 48);
        v126 = v203;
        *v203 = v109;
        *(v126 + 1) = v91;
        sub_1D6DF0B38(v113, &v126[v125], &qword_1EC896640, type metadata accessor for DebugFormatUploadHiddenReason, MEMORY[0x1E69E6720], sub_1D6DF434C);
        v127 = v126;
        v128 = *(v126 + 1);
        if (!v128)
        {
          v138 = v126;
          sub_1D6DF0BAC(v221, type metadata accessor for FormatFile);
          v139 = (*v207)(&v126[v125], 1, v112);
          v44 = v200;
          v140 = v215;
          if (v139 == 1)
          {
            goto LABEL_86;
          }

          v141 = v138 + v125;
          v142 = v189;
          sub_1D6DEFEE8(v141, v189, type metadata accessor for DebugFormatUploadHiddenReason);
          v143 = v191;
          sub_1D6DF43B0(v142, v191 + *(v206 + 20), type metadata accessor for DebugFormatUploadHiddenReason);
          *v143 = v140;

          v72 = v216;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v72 = sub_1D6994C14(0, v72[2] + 1, 1, v72);
          }

          v145 = v72[2];
          v144 = v72[3];
          if (v145 >= v144 >> 1)
          {
            v72 = sub_1D6994C14(v144 > 1, v145 + 1, 1, v72);
          }

          sub_1D6DF0BAC(v189, type metadata accessor for DebugFormatUploadHiddenReason);
          v72[2] = v145 + 1;
          sub_1D6DEFEE8(v191, v72 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v145, type metadata accessor for DebugFormatUploadHiddenEntry);
          sub_1D6DF0BAC(v67, type metadata accessor for DebugFormatCompilerResultEntry);
LABEL_83:

          goto LABEL_5;
        }

        v129 = *v126;
        v130 = (*v207)(&v127[v125], 1, v112);
        v44 = v200;
        if (v130 != 1)
        {
          sub_1D6DF0BAC(v221, type metadata accessor for FormatFile);
          v146 = &v224;
LABEL_85:
          v138 = *(v146 - 32);
LABEL_86:
          sub_1D6DF0BAC(v67, type metadata accessor for DebugFormatCompilerResultEntry);
          sub_1D6DF0BAC(v138, sub_1D6DF4238);
          v72 = v216;
          goto LABEL_5;
        }

        v131 = v193;
        *v193 = v215;
        v132 = v202;
        sub_1D6DEFEE8(v221, v131 + *(v202 + 20), type metadata accessor for FormatFile);
        v133 = v131 + *(v132 + 24);
        *v133 = v129;
        *(v133 + 1) = v128;
        v133[16] = 0;

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v134 = v220;
        }

        else
        {
          v134 = sub_1D6994C48(0, v220[2] + 1, 1, v220);
        }

        v136 = v134[2];
        v135 = v134[3];
        v73 = v212;
        v72 = v216;
        if (v136 >= v135 >> 1)
        {
          v134 = sub_1D6994C48(v135 > 1, v136 + 1, 1, v134);
        }

        v134[2] = v136 + 1;
        v137 = (*(v201 + 80) + 32) & ~*(v201 + 80);
        v220 = v134;
        sub_1D6DEFEE8(v193, v134 + v137 + *(v201 + 72) * v136, type metadata accessor for DebugFormatUploadPrivateEntry);
        sub_1D6DF0BAC(v67, type metadata accessor for DebugFormatCompilerResultEntry);
        goto LABEL_76;
      }

      v93 = v210;
      *v210 = v86;
      v94 = v202;
      sub_1D6DEFEE8(v221, v93 + *(v202 + 20), type metadata accessor for FormatFile);
      v95 = v93 + *(v94 + 24);
      *v95 = 0;
      *(v95 + 1) = 0;
      v95[16] = 2;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v96 = v220;
      }

      else
      {
        v96 = sub_1D6994C48(0, v220[2] + 1, 1, v220);
      }

      v98 = v96[2];
      v97 = v96[3];
      if (v98 >= v97 >> 1)
      {
        v96 = sub_1D6994C48(v97 > 1, v98 + 1, 1, v96);
      }

      v96[2] = v98 + 1;
      v99 = (*(v201 + 80) + 32) & ~*(v201 + 80);
      v220 = v96;
      v74 = v96 + v99 + *(v201 + 72) * v98;
      v75 = type metadata accessor for DebugFormatUploadPrivateEntry;
      v76 = v210;
LABEL_4:
      sub_1D6DEFEE8(v76, v74, v75);
      sub_1D6DF0BAC(v67, type metadata accessor for DebugFormatCompilerResultEntry);
LABEL_5:
      v71 += v217;
      if (!--v69)
      {

        return v220;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D6DF3E2C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatUploadHiddenEntry();
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v25 = &v24 - v9;
  sub_1D6DF434C(0, &qword_1EC88F210, type metadata accessor for DebugFormatUploadPrivateEntryResult, MEMORY[0x1E69D6AF8]);
  MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v24 - v13;
  v27 = MEMORY[0x1E69E7CC0];
  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v17 = *(v12 + 72);

    v18 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D6DF0EC8(v16, v14, &qword_1EC88F210, type metadata accessor for DebugFormatUploadPrivateEntryResult, MEMORY[0x1E69D6AF8], sub_1D6DF434C);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D6DF0C0C(v14, &qword_1EC88F210, type metadata accessor for DebugFormatUploadPrivateEntryResult, MEMORY[0x1E69D6AF8], sub_1D6DF434C);
      }

      else
      {
        type metadata accessor for DebugFormatUploadPrivateEntryResult(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v19 = v25;
          sub_1D6DEFEE8(v14, v25, type metadata accessor for DebugFormatUploadHiddenEntry);
          sub_1D6DF43B0(v19, v26, type metadata accessor for DebugFormatUploadHiddenEntry);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = sub_1D6994C14(0, a1[2] + 1, 1, a1);
          }

          v21 = a1[2];
          v20 = a1[3];
          if (v21 >= v20 >> 1)
          {
            a1 = sub_1D6994C14(v20 > 1, v21 + 1, 1, a1);
          }

          sub_1D6DF0BAC(v25, type metadata accessor for DebugFormatUploadHiddenEntry);
          a1[2] = v21 + 1;
          sub_1D6DEFEE8(v26, a1 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21, type metadata accessor for DebugFormatUploadHiddenEntry);
        }

        else
        {

          MEMORY[0x1DA6F9CE0](v22);
          if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          sub_1D726278C();

          v18 = v27;
        }
      }

      v16 += v17;
      --v15;
    }

    while (v15);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v18;
}

void sub_1D6DF4238()
{
  if (!qword_1EC896630)
  {
    sub_1D6DF42FC(255, &qword_1EC896638, &type metadata for FormatCompilerOptions.Newsroom.Environment, MEMORY[0x1E69E6720]);
    sub_1D6DF434C(255, &qword_1EC896640, type metadata accessor for DebugFormatUploadHiddenReason, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC896630);
    }
  }
}

void sub_1D6DF42FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D6DF434C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6DF43B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6DF4418()
{
  result = type metadata accessor for DebugFormatUploadEntry();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DebugFormatUploadHiddenEntry();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D6DF44B4()
{
  result = type metadata accessor for FormatPackageInventory();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FormatFile();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D6DF4574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1D5CEFFA0(a1, a4, type metadata accessor for FormatContent);
  v7 = type metadata accessor for FormatArrangementResolverResult();
  result = sub_1D5CEFFA0(a2, a4 + *(v7 + 36), type metadata accessor for FormatContentPool);
  *(a4 + *(v7 + 40)) = a3;
  return result;
}

void sub_1D6DF4688()
{
  type metadata accessor for FormatContent(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for FormatContentPool();
    if (v1 <= 0x3F)
    {
      sub_1D6DF4764();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D6DF4764()
{
  if (!qword_1EDF05208)
  {
    type metadata accessor for FeedGroupDebugCandidates();
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF05208);
    }
  }
}

uint64_t static Ratio.Aspect.aspect(for:min:max:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, double *a3@<X8>)
{
  v5 = [*(a1 + 40) thumbnailUltraHQ];
  if (v5)
  {
    v6 = v5;
    [v5 thumbnailSize];
    v8 = v7;
    v10 = v9;

    if (v10 == 0.0)
    {
      v11 = sub_1D725A34C();
      v12 = *(*(v11 - 8) + 16);
      v13 = v11;
      v14 = a3;
      v15 = a2;

      return v12(v14, v15, v13);
    }

    sub_1D725A33C();
    v18 = v17;
    v19 = v8 / v10;
    sub_1D725A33C();
    if (v20 >= v19)
    {
      v20 = v19;
    }

    if (v18 > v20)
    {
      v20 = v18;
    }

    *a3 = v20;
    v16 = *MEMORY[0x1E69D7350];
  }

  else
  {
    v16 = *MEMORY[0x1E69D7340];
  }

  v21 = sub_1D725A34C();
  v12 = *(*(v21 - 8) + 104);
  v13 = v21;
  v14 = a3;
  v15 = v16;

  return v12(v14, v15, v13);
}

uint64_t static SharingActivity.block(tag:)(uint64_t a1)
{
  sub_1D6DF5868();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D6DF58D4();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  if (!a1)
  {
    return 0;
  }

  v6 = qword_1EDF3AB68;
  swift_unknownObjectRetain();
  if (v6 != -1)
  {
    swift_once();
  }

  swift_unknownObjectRetain();

  sub_1D726203C();
  *(swift_allocObject() + 16) = a1;
  sub_1D5B65B58();
  swift_unknownObjectRetain();
  sub_1D725DAFC();
  sub_1D725DFEC();
  sub_1D725DAFC();
  swift_allocObject();
  v7 = sub_1D725D5BC();
  swift_unknownObjectRelease();
  return v7;
}

NewsFeed::BlockingCommandState_optional __swiftcall BlockingCommandState.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1D72641CC();

  if (v1 == 1)
  {
    v2.value = NewsFeed_BlockingCommandState_notBlocked;
  }

  else
  {
    v2.value = NewsFeed_BlockingCommandState_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t BlockingCommandState.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6B636F6C42746F6ELL;
  }

  else
  {
    return 0x64656B636F6C62;
  }
}

uint64_t sub_1D6DF4C08(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6B636F6C42746F6ELL;
  }

  else
  {
    v3 = 0x64656B636F6C62;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEA00000000006465;
  }

  if (*a2)
  {
    v5 = 0x6B636F6C42746F6ELL;
  }

  else
  {
    v5 = 0x64656B636F6C62;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006465;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6DF4CB4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6DF4D3C()
{
  sub_1D72621EC();
}

uint64_t sub_1D6DF4DB0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6DF4E34@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D6DF4E94(uint64_t *a1@<X8>)
{
  v2 = 0x64656B636F6C62;
  if (*v1)
  {
    v2 = 0x6B636F6C42746F6ELL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006465;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D6DF4ED8(uint64_t a1)
{
  v2 = sub_1D6DF597C();

  return MEMORY[0x1EEE48380](a1, v2);
}

uint64_t sub_1D6DF4F48()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  sub_1D5B67BE4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7273AE0;
  swift_getObjectType();
  v3 = FCTagProviding.localizedTagType.getter();
  v5 = v4;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D5B7E2C0();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  v6 = sub_1D72620BC();

  return v6;
}

id sub_1D6DF510C(_BYTE *a1)
{
  if (*a1)
  {
    if (qword_1EDF05CC8 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EDF05CD0;
  }

  else
  {
    if (qword_1EC87DAC0 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EC895150;
  }

  v2 = *v1;

  return v2;
}

uint64_t sub_1D6DF51B4(_BYTE *a1)
{
  if (*a1)
  {
    if (qword_1EDF05CC8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDF05CD0;
  }

  else
  {
    if (qword_1EC87DAC0 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC895150;
  }

  return sub_1D725DFDC();
}

uint64_t static KeyCommandItem.block(tag:)(uint64_t a1)
{
  sub_1D6DF58D4();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  if (qword_1EDF3AB68 != -1)
  {
    swift_once();
  }

  *(swift_allocObject() + 16) = a1;
  sub_1D5B65B58();
  swift_unknownObjectRetain_n();

  sub_1D725DAFC();
  return sub_1D725D14C();
}

uint64_t sub_1D6DF5410@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  sub_1D5B67BE4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7273AE0;
  swift_getObjectType();
  v5 = FCTagProviding.localizedTagType.getter();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D5B7E2C0();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v8 = sub_1D72620BC();
  v10 = v9;

  *a1 = v8;
  a1[1] = v10;
  return result;
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE5block3tagACSgSo14FCTagProviding_pSg_tFZ_0(uint64_t a1)
{
  sub_1D6DF59D0(0, &qword_1EDF170A0, MEMORY[0x1E69D7C80]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D6DF59D0(0, &qword_1EDF171B0, MEMORY[0x1E69D7AE0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  sub_1D6DF59D0(0, &unk_1EDF17180, MEMORY[0x1E69D7AE8]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  if (!a1)
  {
    return 0;
  }

  v8 = qword_1EDF3AB68;
  swift_unknownObjectRetain();
  if (v8 != -1)
  {
    swift_once();
  }

  *(swift_allocObject() + 16) = a1;
  sub_1D5B65B58();
  swift_unknownObjectRetain();

  sub_1D725DADC();
  sub_1D725DABC();
  sub_1D725DF0C();
  sub_1D725D3DC();
  swift_allocObject();
  return sub_1D725D3BC();
}

void sub_1D6DF5868()
{
  if (!qword_1EDF17120)
  {
    sub_1D725DFEC();
    sub_1D5B65B58();
    v0 = sub_1D725DB1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17120);
    }
  }
}

void sub_1D6DF58D4()
{
  if (!qword_1EDF17110)
  {
    sub_1D5B65B58();
    v0 = sub_1D725DB1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17110);
    }
  }
}

unint64_t sub_1D6DF597C()
{
  result = qword_1EC896670;
  if (!qword_1EC896670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896670);
  }

  return result;
}

void sub_1D6DF59D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5B65B58();
    v7 = a3(a1, &type metadata for BlockingCommandState, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6DF5A50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF && *(a1 + 8))
  {
    return (*a1 + 15);
  }

  v3 = (((*a1 >> 60) >> 3) & 0xFFFFFFF1 | (2 * ((*a1 >> 60) & 7))) ^ 0xF;
  if (v3 >= 0xE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D6DF5AA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *result = a2 - 15;
    if (a3 >= 0xF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 1) & 7) - 8 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1D6DF5B14(void *a1)
{
  v2 = v1;
  result = sub_1D6DF5C3C(a1, v2);
  if (result)
  {
    v5 = result;
    v6 = a1[5];
    if (v6)
    {
      swift_beginAccess();
      v7 = *(v6 + 136);
      if (v7)
      {
        if (*(v7 + 2))
        {
          *(swift_allocObject() + 16) = v7;

          v7 = sub_1D6DF72FC;
        }

        else
        {
          v7 = 0;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = sub_1D6DF6F74(a1, v5);
    if (v8)
    {
      v9 = a1[12];
      v10 = v8;
      v11 = [v8 imageWithRenderingMode_];
      sub_1D5B74328(v7);

      return v11;
    }

    else
    {
      sub_1D5B74328(v7);

      return 0;
    }
  }

  return result;
}

uint64_t sub_1D6DF5C3C(void *a1, uint64_t a2)
{
  v4 = sub_1D725DD0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v136 = sub_1D725EC7C();
  v141 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136, v9);
  v11 = (&v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[5];
  if (v12)
  {
    swift_beginAccess();
    v13 = *(v12 + 64);
    if (v13)
    {
      v14 = *(v13 + 16);
      if (v14)
      {
        v118 = a2;
        v15 = v14;
        sub_1D5B68374((a1 + 15), v182);
        v181 = MEMORY[0x1E69E7CC0];

        v140 = v15;
        sub_1D699A3CC(0, v15, 0);
        v16 = v13;
        v17 = 0;
        v124 = a1[13];
        v117 = v16;
        v139 = v16 + 32;
        v123 = *MEMORY[0x1E69D80E0];
        v116 = *MEMORY[0x1E69D8150];
        v115 = *MEMORY[0x1E69D8130];
        v114 = *MEMORY[0x1E69D8110];
        v113 = *MEMORY[0x1E69D8128];
        v112 = *MEMORY[0x1E69D80F8];
        v111 = *MEMORY[0x1E69D80F0];
        v110 = *MEMORY[0x1E69D8120];
        v109 = *MEMORY[0x1E69D80E8];
        v108 = *MEMORY[0x1E69D8118];
        v107 = *MEMORY[0x1E69D8108];
        v106 = *MEMORY[0x1E69D8100];
        v105 = *MEMORY[0x1E69D80D8];
        v104 = *MEMORY[0x1E69D80D0];
        v103 = *MEMORY[0x1E69D8140];
        v102 = *MEMORY[0x1E69D8138];
        v101 = *MEMORY[0x1E69D8148];
        v135 = *MEMORY[0x1E69D8288];
        v138 = (v141 + 104);
        v129 = *MEMORY[0x1E69D7B68];
        v128 = (v5 + 104);
        v127 = *MEMORY[0x1E69D87B8];
        v126 = *MEMORY[0x1E69D87C0];
        v122 = *MEMORY[0x1E69D82C0];
        v121 = *MEMORY[0x1E69D82B8];
        v134 = *MEMORY[0x1E69D8298];
        v18 = *MEMORY[0x1E69D82B0];
        v132 = *MEMORY[0x1E69D8290];
        v133 = v18;
        v137 = v141 + 32;
        v19 = v181;
        v120 = v4;
        v125 = v8;
        v20 = v136;
        v142 = v11;
        while (1)
        {
          v21 = (v139 + 136 * v17);
          v171 = *v21;
          v22 = v21[1];
          v23 = v21[2];
          v24 = v21[4];
          v174 = v21[3];
          v175 = v24;
          v172 = v22;
          v173 = v23;
          v25 = v21[5];
          v26 = v21[6];
          v27 = v21[7];
          v179 = *(v21 + 128);
          v177 = v26;
          v178 = v27;
          v176 = v25;
          memmove(v180, v21, 0x81uLL);
          v28 = sub_1D5F78DC4(v180);
          if (v28)
          {
            if (v28 != 1)
            {
              v53 = sub_1D5DEA32C(v180);
              v54 = *v53;
              if (*(v53 + 8) == 1)
              {
                v55 = sub_1D725EA1C();
                v56 = *(*(v55 - 8) + 104);
                v57 = v55;
                switch(v54)
                {
                  case 1:
                    v58 = v11;
                    v59 = v102;
                    break;
                  case 2:
                    v58 = v11;
                    v59 = v103;
                    break;
                  case 3:
                    v58 = v11;
                    v59 = v104;
                    break;
                  case 4:
                    v58 = v11;
                    v59 = v105;
                    break;
                  case 5:
                    v58 = v11;
                    v59 = v106;
                    break;
                  case 6:
                    v58 = v11;
                    v59 = v107;
                    break;
                  case 7:
                    v58 = v11;
                    v59 = v108;
                    break;
                  case 8:
                    v58 = v11;
                    v59 = v109;
                    break;
                  case 9:
                    v58 = v11;
                    v59 = v110;
                    break;
                  case 10:
                    v58 = v11;
                    v59 = v111;
                    break;
                  case 11:
                    v58 = v11;
                    v59 = v112;
                    break;
                  case 12:
                    v58 = v11;
                    v59 = v113;
                    break;
                  case 13:
                    v58 = v11;
                    v59 = v114;
                    break;
                  case 14:
                    v58 = v11;
                    v59 = v115;
                    break;
                  case 15:
                    v58 = v11;
                    v59 = v116;
                    break;
                  default:
                    v58 = v11;
                    v59 = v101;
                    break;
                }
              }

              else
              {
                *v11 = v54;
                v57 = sub_1D725EA1C();
                v56 = *(*(v57 - 8) + 104);
                v58 = v11;
                v59 = v123;
              }

              v56(v58, v59, v57);
              (*v138)(v11, v135, v20);
              goto LABEL_34;
            }

            v29 = sub_1D5DEA32C(v180);
            v162 = *v29;
            v30 = *(v29 + 64);
            v32 = *(v29 + 16);
            v31 = *(v29 + 32);
            v165 = *(v29 + 48);
            v166 = v30;
            v163 = v32;
            v164 = v31;
            v34 = *(v29 + 96);
            v33 = *(v29 + 112);
            v35 = *(v29 + 80);
            v170 = *(v29 + 128);
            v168 = v34;
            v169 = v33;
            v167 = v35;
            if (sub_1D6011234(&v162) == 1)
            {
              v36 = sub_1D5D756B8(&v162);
              v37 = *v36;
              v38 = *(v36 + 8);
              v153 = *v29;
              v39 = *(v29 + 64);
              v41 = *(v29 + 16);
              v40 = *(v29 + 32);
              v156 = *(v29 + 48);
              v157 = v39;
              v154 = v41;
              v155 = v40;
              v43 = *(v29 + 96);
              v42 = *(v29 + 112);
              v44 = *(v29 + 80);
              v161 = *(v29 + 128);
              v159 = v43;
              v160 = v42;
              v158 = v44;
              sub_1D5D756B8(&v153);
              *&v143[0] = v37;

              v46 = FormatColor.color.getter(v45);
              v47 = [(objc_class *)v46 resolvedColorWithTraitCollection:v124];

              *v142 = v47;
              *(v142 + 2) = v38;
              v11 = v142;
              v48 = sub_1D725ECAC();
              (*(*(v48 - 8) + 104))(v11, v121, v48);
            }

            else
            {
              v60 = sub_1D5D756B8(&v162);
              v61 = *(v60 + 48);
              v63 = *v60;
              v62 = *(v60 + 16);
              v147 = *(v60 + 32);
              v148 = v61;
              v145 = v63;
              v146 = v62;
              v64 = *(v60 + 112);
              v66 = *(v60 + 64);
              v65 = *(v60 + 80);
              v151 = *(v60 + 96);
              v152 = v64;
              v149 = v66;
              v150 = v65;
              if (sub_1D6011280(&v145) == 1)
              {
                v67 = sub_1D5D756C8(&v145);
                v144[4] = v67[4];
                v144[5] = v67[5];
                v144[6] = v67[6];
                v144[7] = v67[7];
                v144[0] = *v67;
                v144[1] = v67[1];
                v144[2] = v67[2];
                v144[3] = v67[3];
                v159 = v177;
                v160 = v178;
                v161 = v179;
                v155 = v173;
                v156 = v174;
                v157 = v175;
                v158 = v176;
                v153 = v171;
                v154 = v172;
                v68 = sub_1D5DEA32C(&v153);
                sub_1D5F78E88(v68, v143);
                sub_1D6A50794(v11);
                v69 = sub_1D725F87C();
                (*(*(v69 - 8) + 104))(v11, v126, v69);
              }

              else
              {
                v77 = sub_1D5D756C8(&v145);
                v79 = *v77;
                v78 = *(v77 + 8);
                v80 = *(v77 + 16);
                v130 = *(v77 + 32);
                v131 = v80;
                v81 = *(v79 + 16);
                if (v81)
                {
                  *&v143[0] = MEMORY[0x1E69E7CC0];
                  sub_1D5ECEF80(&v171, &v153);
                  v119 = v78;

                  v82 = sub_1D7263ECC();
                  v83 = (v79 + 32);
                  do
                  {
                    v84 = *v83++;
                    *&v153 = v84;
                    FormatColor.color.getter(v82);
                    sub_1D7263E9C();
                    sub_1D7263EDC();
                    sub_1D7263EEC();
                    v82 = sub_1D7263EAC();
                    --v81;
                  }

                  while (v81);
                  v11 = v142;
                  v4 = v120;
                }

                else
                {
                  sub_1D5ECEF80(&v171, &v153);
                }

                v8 = v125;
                v88 = v130;
                *v125 = v131;
                v8[1] = v88;
                (*v128)(v8, v129, v4);
                sub_1D725DCCC();
                v89 = sub_1D725F87C();
                (*(*(v89 - 8) + 104))(v11, v127, v89);
              }

              v90 = *(v60 + 128);
              sub_1D6DF7304();
              *(v11 + *(v91 + 48)) = v90;
              v92 = sub_1D725ECAC();
              (*(*(v92 - 8) + 104))(v11, v122, v92);
              v20 = v136;
            }

            (*v138)(v11, v134, v20);
          }

          else
          {
            v49 = sub_1D5DEA32C(v180);
            sub_1D5F78F40(v49, v143);
            v157 = v143[4];
            v158 = v143[5];
            v159 = v143[6];
            v160 = v143[7];
            v153 = v143[0];
            v154 = v143[1];
            v155 = v143[2];
            v156 = v143[3];
            if (sub_1D6011280(&v153) == 1)
            {
              v50 = sub_1D5D756C8(&v153);
              v149 = v50[4];
              v150 = v50[5];
              v151 = v50[6];
              v152 = v50[7];
              v145 = *v50;
              v146 = v50[1];
              v147 = v50[2];
              v148 = v50[3];
              v168 = v177;
              v169 = v178;
              v170 = v179;
              v164 = v173;
              v165 = v174;
              v166 = v175;
              v167 = v176;
              v162 = v171;
              v163 = v172;
              v51 = sub_1D5DEA32C(&v162);
              sub_1D5F78EE4(v51, v144);
              sub_1D6A50794(v11);
              v52 = sub_1D725F87C();
              (*(*(v52 - 8) + 104))(v11, v126, v52);
            }

            else
            {
              v70 = sub_1D5D756C8(&v153);
              v71 = *v70;
              v72 = *(v70 + 16);
              v130 = *(v70 + 32);
              v131 = v72;
              v73 = *(v71 + 16);
              if (v73)
              {
                *&v145 = MEMORY[0x1E69E7CC0];
                sub_1D5ECEF80(&v171, &v162);

                v74 = sub_1D7263ECC();
                v75 = (v71 + 32);
                do
                {
                  v76 = *v75++;
                  *&v162 = v76;
                  FormatColor.color.getter(v74);
                  sub_1D7263E9C();
                  sub_1D7263EDC();
                  sub_1D7263EEC();
                  v74 = sub_1D7263EAC();
                  --v73;
                }

                while (v73);
                v4 = v120;
                v8 = v125;
              }

              else
              {
                sub_1D5ECEF80(&v171, &v162);
              }

              v85 = v130;
              *v8 = v131;
              v8[1] = v85;
              (*v128)(v8, v129, v4);
              v11 = v142;
              sub_1D725DCCC();
              v86 = sub_1D725F87C();
              (*(*(v86 - 8) + 104))(v11, v127, v86);
              v20 = v136;
            }

            v87 = sub_1D725EC9C();
            (*(*(v87 - 8) + 104))(v11, v133, v87);
            (*v138)(v11, v132, v20);
          }

          sub_1D5ECEFDC(&v171);
LABEL_34:
          v181 = v19;
          v94 = *(v19 + 16);
          v93 = *(v19 + 24);
          if (v94 >= v93 >> 1)
          {
            sub_1D699A3CC(v93 > 1, v94 + 1, 1);
            v19 = v181;
          }

          ++v17;
          *(v19 + 16) = v94 + 1;
          v95 = v19 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v94;
          v11 = v142;
          (*(v141 + 32))(v95, v142, v20);
          if (v17 == v140)
          {

            v96 = sub_1D725ECBC();
            swift_allocObject();
            v97 = sub_1D725EC8C();
            *&v164 = MEMORY[0x1E69D82C8];
            *(&v163 + 1) = v96;
            *&v162 = v97;

            v98 = sub_1D725E07C();

            __swift_destroy_boxed_opaque_existential_1(&v162);
            return v98;
          }
        }
      }
    }
  }

  __swift_project_boxed_opaque_existential_1(a1 + 15, a1[18]);
  result = sub_1D725D2EC();
  if (!result)
  {
    __swift_project_boxed_opaque_existential_1(a1 + 15, a1[18]);
    return sub_1D725D29C();
  }

  return result;
}

void sub_1D6DF69E0(id a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    v34 = a6 * 0.5;
    v35 = a5 * 0.5;
    tx = a5 * -0.5;
    v12 = a6 * -0.5;
    v13 = (a2 + 40);
    do
    {
      v20 = *(v13 - 1);
      if (*v13 == 1)
      {
        v21 = [a1 CGContext];
        v22 = a3;
        v23 = a4;
        v24 = a5;
        v25 = a6;
        if (v20 == 0.0)
        {
          MaxX = CGRectGetMaxX(*&v22);
          v37.origin.x = a3;
          v37.origin.y = a4;
          v37.size.width = a5;
          v37.size.height = a6;
          MinY = CGRectGetMinY(v37);
          CGContextTranslateCTM(v21, MaxX, MinY);

          v28 = [a1 CGContext];
          v19 = v28;
          v29 = -1.0;
          v30 = 1.0;
        }

        else
        {
          MinX = CGRectGetMinX(*&v22);
          v36.origin.x = a3;
          v36.origin.y = a4;
          v36.size.width = a5;
          v36.size.height = a6;
          MaxY = CGRectGetMaxY(v36);
          CGContextTranslateCTM(v21, MinX, MaxY);

          v28 = [a1 CGContext];
          v19 = v28;
          v29 = 1.0;
          v30 = -1.0;
        }

        CGContextScaleCTM(v28, v29, v30);
      }

      else
      {
        v14 = fmod(*(v13 - 1), 360.0) * 3.14159265 / 180.0;
        if (v20 == 0.0)
        {
          v15 = 6.28318531;
        }

        else
        {
          v15 = v14;
        }

        v16 = [a1 CGContext];
        CGContextTranslateCTM(v16, v35, v34);

        v17 = [a1 CGContext];
        CGContextScaleCTM(v17, 1.0, 1.0);

        v18 = [a1 CGContext];
        CGContextRotateCTM(v18, v15);

        v19 = [a1 CGContext];
        CGContextTranslateCTM(v19, tx, v12);
      }

      v13 += 2;
      --v6;
    }

    while (v6);
  }
}

uint64_t sub_1D6DF6C54(uint64_t a1)
{
  sub_1D5B68374(a1, v4);
  sub_1D61BA350();
  type metadata accessor for FormatImageRequest();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v1 = sub_1D6DF5B14(v3);

  return v1;
}

id sub_1D6DF6CD8(uint64_t a1, void *a2)
{
  sub_1D5B68374(a1, v6);
  sub_1D61BA350();
  type metadata accessor for FormatImageRequest();
  if (swift_dynamicCast())
  {
    v2 = [a2 imageWithRenderingMode_];

    return v2;
  }

  else
  {

    return a2;
  }
}

id sub_1D6DF6D88(uint64_t a1, double a2, double a3, double a4)
{
  sub_1D726333C();
  v8 = v6;
  v9 = v7;
  if (*(a1 + 184))
  {
    if (*(a1 + 256))
    {
      v10 = 0.0;
    }

    else
    {
      v10 = *(a1 + 224) * a4;
    }

    if (*(a1 + 256))
    {
      v11 = 0.0;
    }

    else
    {
      v11 = *(a1 + 232) * a4;
    }

    if (*(a1 + 256))
    {
      v12 = v6;
    }

    else
    {
      v12 = *(a1 + 240) * a4;
    }

    if (*(a1 + 256))
    {
      v13 = v7;
    }

    else
    {
      v13 = *(a1 + 248) * a4;
    }

    v14 = *(a1 + 40);
    if (!v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = *(v14 + 112);
    if (v15 > 0xFD)
    {
      goto LABEL_18;
    }

    if ((v15 & 0x80) != 0)
    {
      v29.origin.x = v10;
      v29.origin.y = v11;
      v29.size.width = v12;
      v29.size.height = v13;
      Height = CGRectGetHeight(v29);
      v30.origin.x = v10;
      v30.origin.y = v11;
      v30.size.width = v12;
      v30.size.height = v13;
      Width = CGRectGetWidth(v30);
      if (Width >= Height)
      {
        Width = Height;
      }

      v21 = Width * 0.5;
      v20 = &unk_1F5119948;
      v22 = qword_1F5119958;
      if (qword_1F5119958)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v20 = *(v14 + 104);
      v21 = *(v14 + 96);
      sub_1D5ED34C4(*&v21, v20, v15);
      v22 = *(v20 + 2);
      if (v22)
      {
LABEL_23:
        v23 = 0;
        v24 = v20 + 32;
        do
        {
          v25 = *v24++;
          v26 = qword_1D7358F40[v25];
          if ((v26 & ~v23) == 0)
          {
            v26 = 0;
          }

          v23 |= v26;
          --v22;
        }

        while (v22);
        goto LABEL_32;
      }
    }

    v23 = 0;
LABEL_32:

    v19 = [objc_opt_self() bezierPathWithRoundedRect:v23 byRoundingCorners:v10 cornerRadii:{v11, v12, v13, v21 * a4, v21 * a4}];
    return v19;
  }

  v10 = 0.0;
  v11 = 0.0;
  v12 = v6;
  v13 = v7;
  v14 = *(a1 + 40);
  if (v14)
  {
    goto LABEL_17;
  }

LABEL_18:
  v16 = 0;
  v17 = 0;
  v31.origin.x = v10;
  v31.origin.y = v11;
  v31.size.width = v12;
  v31.size.height = v13;
  if (CGRectEqualToRect(*(&v8 - 2), v31))
  {
    return 0;
  }

  v19 = [objc_opt_self() bezierPathWithRect_];
  return v19;
}

uint64_t sub_1D6DF6F74(uint64_t a1, void *a2)
{
  sub_1D6081298();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 40);
  if (!v8)
  {
    return sub_1D726364C();
  }

  v9 = *(v8 + 128);
  if (v9 <= 1)
  {
    if (!v9)
    {
      v11 = 208;
      if (!*(a1 + 184))
      {
        v11 = 16;
      }

      v12 = 216;
      if (!*(a1 + 184))
      {
        v12 = 24;
      }

      v13 = sub_1D6DF6D88(a1, *(a1 + v11), *(a1 + v12), *(a1 + 32));
      v14 = sub_1D72635FC();

      return v14;
    }

    v20 = 208;
    if (!*(a1 + 184))
    {
      v20 = 16;
    }

    v21 = 216;
    if (!*(a1 + 184))
    {
      v21 = 24;
    }

    v17 = sub_1D6DF6D88(a1, *(a1 + v20), *(a1 + v21), 1.0);
    v22 = sub_1D725CB5C();
    (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
    v14 = sub_1D726363C();
  }

  else
  {
    if (v9 != 2)
    {
      if (v9 == 3)
      {
        return sub_1D726367C();
      }

      return sub_1D726364C();
    }

    v15 = 208;
    if (!*(a1 + 184))
    {
      v15 = 16;
    }

    v16 = 216;
    if (!*(a1 + 184))
    {
      v16 = 24;
    }

    v17 = sub_1D6DF6D88(a1, *(a1 + v15), *(a1 + v16), 1.0);
    v18 = [a2 resizableImageWithCapInsets:0 resizingMode:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    v19 = sub_1D725CB5C();
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
    v14 = sub_1D726363C();
  }

  sub_1D5C18264(v7);
  return v14;
}

void sub_1D6DF7304()
{
  if (!qword_1EC896678)
  {
    sub_1D725F87C();
    type metadata accessor for CGBlendMode(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC896678);
    }
  }
}

uint64_t FormatJsonConfigKey.rawValue.getter()
{
  if (*v0)
  {
    return 0x73676E69646E6962;
  }

  else
  {
    return 0x736E6F6974706FLL;
  }
}

NewsFeed::FormatJsonConfigKey_optional __swiftcall FormatJsonConfigKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

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

uint64_t sub_1D6DF7414(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x73676E69646E6962;
  }

  else
  {
    v3 = 0x736E6F6974706FLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x73676E69646E6962;
  }

  else
  {
    v5 = 0x736E6F6974706FLL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6DF74BC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6DF7540()
{
  sub_1D72621EC();
}

uint64_t sub_1D6DF75B0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6DF7630@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D6DF7690(uint64_t *a1@<X8>)
{
  v2 = 0x736E6F6974706FLL;
  if (*v1)
  {
    v2 = 0x73676E69646E6962;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t static FormatJsonConfigKey.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x73676E69646E6962;
  }

  else
  {
    v3 = 0x736E6F6974706FLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x73676E69646E6962;
  }

  else
  {
    v5 = 0x736E6F6974706FLL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

unint64_t sub_1D6DF77F0()
{
  result = qword_1EDF2C4C8;
  if (!qword_1EDF2C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C4C8);
  }

  return result;
}

unint64_t sub_1D6DF7844(uint64_t a1)
{
  *(a1 + 8) = sub_1D6DF7874();
  result = sub_1D6DF78C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6DF7874()
{
  result = qword_1EC896680;
  if (!qword_1EC896680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896680);
  }

  return result;
}

unint64_t sub_1D6DF78C8()
{
  result = qword_1EDF2C4C0;
  if (!qword_1EDF2C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C4C0);
  }

  return result;
}

unint64_t sub_1D6DF791C(uint64_t a1)
{
  result = sub_1D6DF7944();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6DF7944()
{
  result = qword_1EC896688;
  if (!qword_1EC896688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896688);
  }

  return result;
}

unint64_t sub_1D6DF7998(void *a1)
{
  a1[1] = sub_1D66FBB88();
  a1[2] = sub_1D5E1B3C8();
  result = sub_1D6DF77F0();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6DF79D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x73676E69646E6962;
  }

  else
  {
    v3 = 0x736E6F6974706FLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x73676E69646E6962;
  }

  else
  {
    v5 = 0x736E6F6974706FLL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6DF7A78(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0x73676E69646E6962;
  }

  else
  {
    v3 = 0x736E6F6974706FLL;
  }

  if (*a2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (v2)
  {
    v5 = 0x73676E69646E6962;
  }

  else
  {
    v5 = 0x736E6F6974706FLL;
  }

  if (v2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_1D6DF7B34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x73676E69646E6962;
  }

  else
  {
    v3 = 0x736E6F6974706FLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x73676E69646E6962;
  }

  else
  {
    v5 = 0x736E6F6974706FLL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_1D6DF7BF0(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0x73676E69646E6962;
  }

  else
  {
    v3 = 0x736E6F6974706FLL;
  }

  if (*a2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (v2)
  {
    v5 = 0x73676E69646E6962;
  }

  else
  {
    v5 = 0x736E6F6974706FLL;
  }

  if (v2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

void *sub_1D6DF7CAC()
{
  sub_1D5B563A0(0, &qword_1EC8966A0, MEMORY[0x1E69D7280], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v61 = v59 - v2;
  v3 = MEMORY[0x1E69E6F90];
  sub_1D5B563A0(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  sub_1D5B563A0(0, &qword_1EC880490, sub_1D5EA74B8, v3);
  v65 = v4;
  sub_1D5EA74B8();
  v68 = v5;
  v6 = *(*(v5 - 8) + 72);
  v64 = *(*(v5 - 8) + 80);
  v7 = (v64 + 32) & ~v64;
  v62 = v7;
  v8 = swift_allocObject();
  v60 = v8;
  *(v8 + 16) = xmmword_1D7283D50;
  v9 = (v8 + v7);
  sub_1D7259E7C();
  sub_1D712322C(0x74726F7077656956, 0xED0000657A695320, v10, v11, 0, v9);
  v12 = type metadata accessor for FormatInspectionItem(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v9, 0, 1, v12);
  sub_1D7259EFC();
  sub_1D712322C(0x20656C6269736956, 0xEC000000657A6953, v14, v15, 0, (v9 + v6));
  v13((v9 + v6), 0, 1, v12);
  v63 = 2 * v6;
  sub_1D7259E6C();
  sub_1D712322C(0x676E69646E756F42, 0xED0000657A695320, v16, v17, 0, (v9 + 2 * v6));
  v13((v9 + 2 * v6), 0, 1, v12);
  sub_1D7259E4C();
  v66 = 3 * v6;
  sub_1D712322C(0x5320776F646E6957, 0xEB00000000657A69, v18, v19, 0, (v9 + 3 * v6));
  v13((v9 + 3 * v6), 0, 1, v12);
  v59[1] = 4 * v6;
  sub_1D7259ECC();
  sub_1D712322C(0xD000000000000012, 0x80000001D73F3530, v20, v21, 0, (v9 + 4 * v6));
  v13((v9 + 4 * v6), 0, 1, v12);
  sub_1D7259E8C();
  *&v77 = v22;
  *(&v77 + 1) = v23;
  v78 = v24;
  v79 = v25;
  v80 = 0;
  sub_1D71268A8(0x4D2074756F79614CLL, 0xEE00736E69677261, &v77, (v9 + 5 * v6));
  v13((v9 + 5 * v6), 0, 1, v12);
  sub_1D7259E9C();
  *&v73 = v26;
  *(&v73 + 1) = v27;
  v74 = v28;
  v75 = v29;
  v76 = 0;
  sub_1D71268A8(0xD000000000000010, 0x80000001D73F3510, &v73, (v9 + 6 * v6));
  v13((v9 + 6 * v6), 0, 1, v12);
  v30 = v6;
  v31 = sub_1D7259EEC();
  sub_1D7126E90(0xD000000000000015, 0x80000001D73F3550, v31, (v9 + 7 * v6));
  v13((v9 + 7 * v6), 0, 1, v12);
  v32 = sub_1D7259EAC();
  sub_1D712741C(0xD000000000000010, 0x80000001D73F3570, v32, 0, &v9[v6]);
  v13(&v9[v6], 0, 1, v12);
  v6 *= 9;
  v59[0] = v30;
  v33 = v61;
  sub_1D7259EDC();
  v34 = sub_1D725A19C();
  (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  sub_1D71276DC(0xD000000000000014, 0x80000001D73F3590, v33, v9 + v6);
  v13((v9 + v6), 0, 1, v12);
  sub_1D7259F1C();
  sub_1D711A80C(0x656C616353, 0xE500000000000000, v35, 0, (v9 + 10 * v30));
  v13((v9 + 10 * v30), 0, 1, v12);
  sub_1D6795150(0x4F2074756F79614CLL, 0xEE00736E6F697470, 0, 0, v60, v69);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v36 = inited;
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(v36 + 64) = &off_1F518B2C0;
  v37 = v36;
  v38 = swift_allocObject();
  *(v37 + 32) = v38;
  v61 = (v37 + 32);
  *(v38 + 48) = v70;
  v39 = v69[1];
  *(v38 + 16) = v69[0];
  *(v38 + 32) = v39;
  v60 = "Context Resize Value";
  v40 = v62;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1D7274590;
  v42 = (v41 + v40);
  v43 = sub_1D7259EBC();
  v44 = [v43 horizontalSizeClass];

  sub_1D7127710(0xD000000000000015, 0x80000001D73F35D0, v44, 0, v42);
  v13(v42, 0, 1, v12);
  v45 = sub_1D7259EBC();
  v46 = [v45 verticalSizeClass];

  v47 = v59[0];
  sub_1D7127710(0xD000000000000013, 0x80000001D73F35F0, v46, 0, &v42[v59[0]]);
  v13(&v42[v47], 0, 1, v12);
  v48 = sub_1D7259EBC();
  v49 = [v48 userInterfaceStyle];

  v50 = v63;
  sub_1D71279D8(0xD000000000000014, 0x80000001D73F3610, v49, 0, &v42[v63]);
  v13(&v42[v50], 0, 1, v12);
  v51 = sub_1D7259EBC();
  v52 = [v51 userInterfaceIdiom];

  v53 = v66;
  sub_1D7127C9C(0xD000000000000014, 0x80000001D73F3630, v52, 0, &v42[v66]);
  v13(&v42[v53], 0, 1, v12);
  sub_1D6795150(0xD000000000000010, v60 | 0x8000000000000000, 0, 0, v41, v71);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v54 = inited;
  *(inited + 96) = &type metadata for FormatInspectionGroup;
  *(v54 + 104) = &off_1F518B2C0;
  v55 = swift_allocObject();
  *(v54 + 72) = v55;
  *(v55 + 48) = v72;
  v56 = v71[1];
  *(v55 + 16) = v71[0];
  *(v55 + 32) = v56;
  v57 = sub_1D7073500(v54);
  swift_setDeallocating();
  sub_1D5E4F358(0);
  swift_arrayDestroy();
  return v57;
}

void *sub_1D6DF85D0(uint64_t a1)
{
  v3 = MEMORY[0x1E69E6720];
  sub_1D5B563A0(0, &qword_1EC896690, MEMORY[0x1E69D7220], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v65 = &v59 - v6;
  sub_1D5B563A0(0, &qword_1EC896698, MEMORY[0x1E69D7118], v3);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v64 = &v59 - v9;
  v69 = sub_1D725A3AC();
  v70 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v10);
  v63 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B563A0(0, &unk_1EDF3C080, MEMORY[0x1E69D7138], v3);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v59 - v14;
  v16 = MEMORY[0x1E69E6F90];
  sub_1D5B563A0(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D5B563A0(0, &qword_1EC880490, sub_1D5EA74B8, v16);
  sub_1D5EA74B8();
  v67 = v17;
  v18 = *(*(v17 - 8) + 72);
  v19 = (*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80);
  v20 = swift_allocObject();
  v66 = v20;
  *(v20 + 16) = xmmword_1D7283D40;
  v21 = (v20 + v19);
  v22 = sub_1D7259D1C();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v15, a1, v22);
  (*(v23 + 56))(v15, 0, 1, v22);
  sub_1D7127FB4(0x53206E6D756C6F43, 0xED00006D65747379, v15, v21);
  v24 = type metadata accessor for FormatInspectionItem(0);
  v25 = *(*(v24 - 8) + 56);
  v25(v21, 0, 1, v24);
  v26 = sub_1D7259CCC();
  sub_1D71283D0(0x736E6D756C6F43, 0xE700000000000000, v26, 0, &v21[v18]);
  v25(&v21[v18], 0, 1, v24);
  v60 = v1;
  sub_1D7259C0C();
  sub_1D711A80C(0x57206E6D756C6F43, 0xEC00000068746469, v27, 0, &v21[2 * v18]);
  v25(&v21[2 * v18], 0, 1, v24);
  v28 = v63;
  sub_1D7259CAC();
  sub_1D725A38C();
  v30 = v29;
  v31 = *(v70 + 8);
  v70 += 8;
  v62 = v31;
  v31(v28, v69);
  sub_1D711A80C(0xD00000000000001CLL, 0x80000001D73F3450, v30, 0, &v21[3 * v18]);
  v25(&v21[3 * v18], 0, 1, v24);
  v61 = v18;
  v32 = v64;
  sub_1D7259CBC();
  v33 = sub_1D7259C8C();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  sub_1D71288E8(0x54206E6D756C6F43, 0xED00007374696172, v32, &v21[4 * v18]);
  v25(&v21[4 * v18], 0, 1, v24);
  sub_1D7259CAC();
  v34 = v65;
  sub_1D725A37C();
  v62(v28, v69);
  v35 = sub_1D725A0AC();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  sub_1D7128E04(0xD000000000000012, 0x80000001D73F3470, v34, &v21[5 * v18]);
  v25(&v21[5 * v18], 0, 1, v24);
  v36 = v61;
  sub_1D7259CEC();
  sub_1D711A80C(0xD000000000000010, 0x80000001D73F3490, v37, 0, &v21[6 * v36]);
  v25(&v21[6 * v36], 0, 1, v24);
  sub_1D7259C5C();
  sub_1D711A80C(0xD00000000000001BLL, 0x80000001D73F34B0, v38, 0, &v21[7 * v36]);
  v25(&v21[7 * v36], 0, 1, v24);
  sub_1D7259CDC();
  sub_1D711A80C(0xD000000000000012, 0x80000001D73F34D0, v39, 0, &v21[8 * v36]);
  v25(&v21[8 * v36], 0, 1, v24);
  sub_1D7259C4C();
  sub_1D711A80C(0xD00000000000001DLL, 0x80000001D73F34F0, v40, 0, &v21[9 * v36]);
  v25(&v21[9 * v36], 0, 1, v24);
  sub_1D7259C9C();
  *&v81 = v41;
  *(&v81 + 1) = v42;
  v82 = v43;
  v83 = v44;
  v84 = 0;
  sub_1D7129220(0x73646E756F42, 0xE600000000000000, &v81, &v21[10 * v36]);
  v25(&v21[10 * v36], 0, 1, v24);
  sub_1D7259C2C();
  *&v77 = v45;
  *(&v77 + 1) = v46;
  v78 = v47;
  v79 = v48;
  v80 = 0;
  sub_1D71268A8(0x4D2074756F79614CLL, 0xEE00736E69677261, &v77, &v21[11 * v36]);
  v25(&v21[11 * v36], 0, 1, v24);
  sub_1D7259C3C();
  *&v73 = v49;
  *(&v73 + 1) = v50;
  v74 = v51;
  v75 = v52;
  v76 = 0;
  sub_1D71268A8(0xD000000000000010, 0x80000001D73F3510, &v73, &v21[12 * v36]);
  v25(&v21[12 * v36], 0, 1, v24);
  sub_1D7259C1C();
  sub_1D711A80C(0x614620656C616353, 0xEC000000726F7463, v53, 0, &v21[13 * v36]);
  v25(&v21[13 * v36], 0, 1, v24);
  sub_1D6795150(0x4F206E6D756C6F43, 0xEE00736E6F697470, 0, 0, v66, v71);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v54 = inited;
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(v54 + 64) = &off_1F518B2C0;
  v55 = swift_allocObject();
  *(v54 + 32) = v55;
  *(v55 + 48) = v72;
  v56 = v71[1];
  *(v55 + 16) = v71[0];
  *(v55 + 32) = v56;
  v57 = sub_1D7073500(v54);
  swift_setDeallocating();
  sub_1D5F10AA0(v54 + 32);
  return v57;
}

void sub_1D6DF906C()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  v1 = [v0 navigationItem];
  sub_1D5E42B34();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D72816C0;
  v3 = sub_1D726203C();
  v4 = [objc_opt_self() systemImageNamed_];

  if (v4)
  {
    type metadata accessor for DebugFormatBarButtonItem();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:v4 style:0 target:v0 action:sel_doDismiss];

    *(v2 + 32) = v5;
    sub_1D5B816F8();
    v6 = sub_1D726265C();

    [v1 setRightBarButtonItems_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1D6DF9274(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v51 = a1;
  v53 = sub_1D7259D1C();
  v5 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v6);
  v49 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v45 = v44 - v10;
  v48 = sub_1D7259CFC();
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v11);
  v52 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D7259F5C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v44 - v20;
  sub_1D5B563A0(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  sub_1D6C86894();
  v23 = sub_1D6DF7CAC();
  v24 = *(v14 + 8);
  v46 = v13;
  v44[0] = v24;
  v24(v21, v13);
  *(inited + 32) = v23;
  v44[1] = inited + 32;
  *(inited + 56) = &type metadata for FormatInspection;
  *(inited + 64) = &off_1F51E3FD0;
  v25 = OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_columnSystem;
  swift_beginAccess();
  v27 = (v5 + 16);
  v26 = *(v5 + 16);
  v28 = v45;
  v26(v45, a2 + v25, v53);
  v50 = a2;
  sub_1D6C86894();
  v29 = v28;
  sub_1D7259D0C();
  --v27;
  (v44[0])(v17, v46);
  v30 = *v27;
  v31 = v29;
  v32 = v53;
  (*v27)(v31, v53);
  v33 = v49;
  v26(v49, v50 + v25, v32);
  v34 = v52;
  v35 = sub_1D6DF85D0(v33);
  v30(v33, v32);
  (*(v47 + 8))(v34, v48);
  *(inited + 96) = &type metadata for FormatInspection;
  *(inited + 104) = &off_1F51E3FD0;
  *(inited + 72) = v35;
  v36 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5E4F358(0);
  swift_arrayDestroy();
  v37 = sub_1D70732C4(v36);

  v3[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_autoPreferredContentSize] = 1;
  v3[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_autoDismissOnLayoutChange] = 1;
  *&v3[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_preferredArrowDirections] = 4;
  *&v3[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_preferredSize] = xmmword_1D72EC9C0;
  v38 = &v3[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filterTerm];
  *v38 = 0;
  v38[1] = 0xE000000000000000;
  v39 = OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_tableView;
  *&v3[v39] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_contentSizeObserver] = 0;
  *&v3[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_editor] = v51;
  *&v3[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_groups] = v37;
  *&v3[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filteredGroups] = v37;
  *&v3[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_image] = 0;
  v40 = type metadata accessor for DebugFormatInspectorPaneViewController();
  v54.receiver = v3;
  v54.super_class = v40;

  v41 = objc_msgSendSuper2(&v54, sel_initWithNibName_bundle_, 0, 0);
  v42 = sub_1D726203C();
  [v41 setTitle_];

  *(v41 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_autoPreferredContentSize) = 0;
  *(v41 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_autoDismissOnLayoutChange) = 0;
  return v41;
}

uint64_t sub_1D6DF98B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000019;
  }

  else
  {
    v3 = 0x7365636341736168;
  }

  if (v2)
  {
    v4 = 0xE900000000000073;
  }

  else
  {
    v4 = 0x80000001D73BA670;
  }

  if (*a2)
  {
    v5 = 0xD000000000000019;
  }

  else
  {
    v5 = 0x7365636341736168;
  }

  if (*a2)
  {
    v6 = 0x80000001D73BA670;
  }

  else
  {
    v6 = 0xE900000000000073;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6DF9968()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6DF99F4()
{
  sub_1D72621EC();
}

uint64_t sub_1D6DF9A6C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6DF9AF4@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D6DF9B54(unint64_t *a1@<X8>)
{
  v2 = 0x80000001D73BA670;
  v3 = 0x7365636341736168;
  if (*v1)
  {
    v3 = 0xD000000000000019;
  }

  else
  {
    v2 = 0xE900000000000073;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t FormatPuzzleBinding.Bool.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6DF9CEC()
{
  result = qword_1EC8966A8;
  if (!qword_1EC8966A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8966A8);
  }

  return result;
}

unint64_t sub_1D6DF9D40(uint64_t a1)
{
  result = sub_1D6DF9D68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6DF9D68()
{
  result = qword_1EC8966B0;
  if (!qword_1EC8966B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8966B0);
  }

  return result;
}

unint64_t sub_1D6DF9DBC(void *a1)
{
  a1[1] = sub_1D667C75C();
  a1[2] = sub_1D6700BE0();
  result = sub_1D6DF9CEC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6DF9E48()
{
  result = qword_1EC8966B8;
  if (!qword_1EC8966B8)
  {
    sub_1D6DF9EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8966B8);
  }

  return result;
}

void sub_1D6DF9EA0()
{
  if (!qword_1EC8966C0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8966C0);
    }
  }
}

unint64_t sub_1D6DF9EF4()
{
  result = qword_1EC8966C8;
  if (!qword_1EC8966C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8966C8);
  }

  return result;
}

unint64_t sub_1D6DF9F48()
{
  result = qword_1EDF2C1B8;
  if (!qword_1EDF2C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C1B8);
  }

  return result;
}

uint64_t sub_1D6DF9F9C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*a1)
  {
    sub_1D5F2DEAC(a2, v13);
    v4 = [v14 ignoreFromStatsAndStreaks];
    v5 = type metadata accessor for FormatInspectionItem(0);
    v6 = *(v5 + 24);
    *(a3 + v6) = v4;
    v7 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v7 - 8) + 56))(a3 + v6, 0, 1, v7);
    *a3 = 0xD00000000000001BLL;
    a3[1] = 0x80000001D73F3650;
  }

  else
  {
    sub_1D5F2DEAC(a2, v13);
    v8 = (v15 & 0xFE) != 2;
    v5 = type metadata accessor for FormatInspectionItem(0);
    v9 = *(v5 + 24);
    *(a3 + v9) = v8;
    v10 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v10 - 8) + 56))(a3 + v9, 0, 1, v10);
    *a3 = xmmword_1D73591B0;
  }

  a3[2] = 0;
  a3[3] = 0;
  v11 = a3 + *(v5 + 28);
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = -1;
  sub_1D5F2DF58(v13);
  type metadata accessor for FormatInspectionItem(0);
  return (*(*(v5 - 8) + 56))(a3, 0, 1, v5);
}

uint64_t getEnumTagSinglePayload for DebugFormatSnapshotGestureState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DebugFormatSnapshotGestureState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
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

  *(result + 41) = v3;
  return result;
}

uint64_t sub_1D6DFA1DC(uint64_t a1)
{
  if (*(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6DFA1F8(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    *(result + 40) = 1;
  }

  else
  {
    *(result + 40) = 0;
  }

  return result;
}

uint64_t sub_1D6DFA234()
{
  sub_1D6DFA418(0, &qword_1EDF16E10, sub_1D6DFA3E4, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D6DFA418(0, &qword_1EDF16DE0, sub_1D6DFA3E4, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF16C50 = result;
  return result;
}

uint64_t static Commands.viewRadarText.getter()
{
  if (qword_1EDF16C48 != -1)
  {
    swift_once();
  }
}

void sub_1D6DFA418(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t FormatPrefetchResources.tagAssetBindings.getter()
{
  v1 = *(v0 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v8;
    }

    v4 = *(v1 + 56 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      do
      {
LABEL_8:
        v10 = *(*(v1 + 48) + (__clz(__rbit64(v4)) | (v7 << 6)));
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D69965CC(0, *(v8 + 16) + 1, 1, v8);
          v8 = result;
        }

        v12 = *(v8 + 16);
        v11 = *(v8 + 24);
        if (v12 >= v11 >> 1)
        {
          result = sub_1D69965CC((v11 > 1), v12 + 1, 1, v8);
          v8 = result;
        }

        v4 &= v4 - 1;
        *(v8 + 16) = v12 + 1;
        *(v8 + v12 + 32) = v10;
      }

      while (v4);
    }
  }

  __break(1u);
  return result;
}

id FormatPluginConfig.__allocating_init(pluginData:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1D5F423D0(a1, v3 + OBJC_IVAR____TtC8NewsFeed18FormatPluginConfig_pluginData);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1D6912180(a1);
  return v4;
}

uint64_t FormatPluginConfig.pluginData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8NewsFeed18FormatPluginConfig_pluginData;
  swift_beginAccess();
  return sub_1D5F423D0(v1 + v3, a1);
}

uint64_t FormatPluginConfig.pluginData.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8NewsFeed18FormatPluginConfig_pluginData;
  swift_beginAccess();
  sub_1D6DFA7C0(a1, v1 + v3);
  return swift_endAccess();
}

id FormatPluginConfig.init(pluginData:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1D5F423D0(a1, v1 + OBJC_IVAR____TtC8NewsFeed18FormatPluginConfig_pluginData);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1D6912180(a1);
  return v4;
}

uint64_t sub_1D6DFA7C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatPluginData();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t FormatModule.createPlugin(identifier:layoutOptionsProvider:config:eventDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1D725A5EC();
  __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC8NewsFeed12FormatModule_resolver), *(v7 + OBJC_IVAR____TtC8NewsFeed12FormatModule_resolver + 24));
  type metadata accessor for FormatViewController();
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = v12;
  swift_unknownObjectRetain();
  v14 = a5;

  v15 = sub_1D725AA9C();

  if (v15)
  {
    v17 = &v15[OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier];
    swift_beginAccess();
    *v17 = a1;
    *(v17 + 1) = a2;

    *(*&v15[OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler] + 40) = a7;
    swift_unknownObjectWeakAssign();
    sub_1D6DFAB70();
    sub_1D725F78C();
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v18 = sub_1D725F72C();

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6DFAA58(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6DFAE38();
  sub_1D725A83C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatPluginConfig();
  sub_1D725A84C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D725A60C();
  return sub_1D725A84C();
}

unint64_t sub_1D6DFAB70()
{
  result = qword_1EDF0EAF8;
  if (!qword_1EDF0EAF8)
  {
    type metadata accessor for FormatViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EAF8);
  }

  return result;
}

id FormatModule.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t type metadata accessor for FormatPluginConfig()
{
  result = qword_1EDF102D8;
  if (!qword_1EDF102D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6DFAD40()
{
  result = type metadata accessor for FormatPluginData();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D6DFAE38()
{
  result = qword_1EDF16EA8;
  if (!qword_1EDF16EA8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF16EA8);
  }

  return result;
}

uint64_t FormatFlexBoxNodeDisplay.rawValue.getter()
{
  if (*v0)
  {
    return 0x656E696C6E69;
  }

  else
  {
    return 0x6B636F6C62;
  }
}

NewsFeed::FormatFlexBoxNodeDisplay_optional __swiftcall FormatFlexBoxNodeDisplay.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

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

uint64_t sub_1D6DFAF44(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656E696C6E69;
  }

  else
  {
    v3 = 0x6B636F6C62;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x656E696C6E69;
  }

  else
  {
    v5 = 0x6B636F6C62;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

unint64_t sub_1D6DFAFE8()
{
  result = qword_1EDF26168;
  if (!qword_1EDF26168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26168);
  }

  return result;
}

uint64_t sub_1D6DFB03C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6DFB0B8()
{
  sub_1D72621EC();
}

uint64_t sub_1D6DFB120()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}
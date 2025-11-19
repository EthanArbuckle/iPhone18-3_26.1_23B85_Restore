uint64_t sub_217C9FA1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0xD000000000000010;
    v12 = 0x8000000217DCC760;
    v13 = 0x8000000217DCC780;
    v14 = 0xD000000000000016;
    if (a1 != 8)
    {
      v14 = 0x6E65746E49707061;
      v13 = 0xE900000000000074;
    }

    if (a1 != 7)
    {
      v11 = v14;
      v12 = v13;
    }

    v15 = 1869768040;
    if (a1 != 5)
    {
      v15 = 1769105779;
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
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xE700000000000000;
    v5 = 0x776F4E79616C70;
    v6 = 0x636172547478656ELL;
    v7 = 0xE90000000000006BLL;
    if (a1 != 3)
    {
      v6 = 0x697242796C696164;
      v7 = 0xED0000676E696665;
    }

    if (a1 != 2)
    {
      v5 = v6;
      v4 = v7;
    }

    v8 = 0x7473696C79616C70;
    if (a1)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v8 = 0x6E776F6E6B6E75;
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
      v16 = 0xE400000000000000;
      if (a2 == 5)
      {
        if (v9 != 1869768040)
        {
          goto LABEL_57;
        }
      }

      else if (v9 != 1769105779)
      {
LABEL_57:
        v17 = sub_217D89D4C();
        goto LABEL_58;
      }
    }

    else if (a2 == 7)
    {
      v16 = 0x8000000217DCC760;
      if (v9 != 0xD000000000000010)
      {
        goto LABEL_57;
      }
    }

    else if (a2 == 8)
    {
      v16 = 0x8000000217DCC780;
      if (v9 != 0xD000000000000016)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v16 = 0xE900000000000074;
      if (v9 != 0x6E65746E49707061)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v16 = 0xE800000000000000;
      if (v9 != 0x7473696C79616C70)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v16 = 0xE700000000000000;
      if (v9 != 0x6E776F6E6B6E75)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 == 2)
  {
    v16 = 0xE700000000000000;
    if (v9 != 0x776F4E79616C70)
    {
      goto LABEL_57;
    }
  }

  else if (a2 == 3)
  {
    v16 = 0xE90000000000006BLL;
    if (v9 != 0x636172547478656ELL)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v16 = 0xED0000676E696665;
    if (v9 != 0x697242796C696164)
    {
      goto LABEL_57;
    }
  }

  if (v10 != v16)
  {
    goto LABEL_57;
  }

  v17 = 1;
LABEL_58:

  return v17 & 1;
}

uint64_t sub_217C9FD40(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x756F72676B636162;
  v5 = 0xEA0000000000646ELL;
  if (a1 != 5)
  {
    v4 = 0x646957656C6F6877;
    v5 = 0xEB00000000746567;
  }

  v6 = 0x4E6E6F6974636573;
  v7 = 0xEB00000000656D61;
  if (a1 != 3)
  {
    v6 = 0x6465626D45626577;
    v7 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE700000000000000;
  v9 = 0x656C6369747261;
  if (a1 != 1)
  {
    v9 = 0x6569726F74536F6ELL;
    v8 = 0xE900000000000073;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
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
        v14 = 0xE700000000000000;
        if (v10 != 0x656C6369747261)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v14 = 0xE900000000000073;
        if (v10 != 0x6569726F74536F6ELL)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v14 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v14 = 0xEA0000000000646ELL;
        if (v10 != 0x756F72676B636162)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }

      v12 = 0x646957656C6F6877;
      v13 = 7628135;
    }

    else
    {
      if (a2 != 3)
      {
        v14 = 0xE800000000000000;
        if (v10 != 0x6465626D45626577)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }

      v12 = 0x4E6E6F6974636573;
      v13 = 6647137;
    }

    v14 = v13 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v10 != v12)
    {
LABEL_39:
      v15 = sub_217D89D4C();
      goto LABEL_40;
    }
  }

LABEL_37:
  if (v11 != v14)
  {
    goto LABEL_39;
  }

  v15 = 1;
LABEL_40:

  return v15 & 1;
}

uint64_t sub_217C9FF94(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x45736569726F7473;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v3 = 0xEE006465736F7078;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x6569726F74536F6ELL;
    v3 = 0xE900000000000073;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x726F727265;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x656E696C66666FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x45736569726F7473;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xEE006465736F7078;
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
    v5 = 0xE500000000000000;
    v6 = 0x726F727265;
    if (a2 != 3)
    {
      v6 = 0x656E696C66666FLL;
      v5 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6569726F74536F6ELL;
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
    v10 = sub_217D89D4C();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_217CA0138(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7469617274726F70;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000012;
    v4 = 0x8000000217DCB8E0;
  }

  else
  {
    v3 = 0x70616373646E616CLL;
    if (v2 == 3)
    {
      v4 = 0xED00007466654C65;
    }

    else
    {
      v4 = 0xEE00746867695265;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x7469617274726F70;
    }

    else
    {
      v8 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    if (v3 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xED00007466654C65;
    if (a2 != 3)
    {
      v5 = 0xEE00746867695265;
    }

    if (a2 == 2)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0x70616373646E616CLL;
    }

    if (a2 == 2)
    {
      v7 = 0x8000000217DCB8E0;
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
    v9 = sub_217D89D4C();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

uint64_t sub_217CA02EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 1869903201;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x6C6C6F4664726168;
    v4 = 0xEA0000000000776FLL;
  }

  else if (a1 == 3)
  {
    v4 = 0xE700000000000000;
    v5 = 0x64657461727563;
  }

  else
  {
    v4 = 0xE400000000000000;
    v5 = 1869048929;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE700000000000000;
    v7 = 0xE400000000000000;
    v8 = 1869903201;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x6C6C6F4664726168;
    v6 = 0xEA0000000000776FLL;
    v7 = 0xE700000000000000;
    v8 = 0x64657461727563;
    if (a2 != 3)
    {
      v8 = 1869048929;
      v7 = 0xE400000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_217D89D4C();
  }

  return v12 & 1;
}

uint64_t sub_217CA0450(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64657461657263;
  v3 = a1;
  v4 = 0xE700000000000000;
  v5 = 0x6564726163736964;
  v6 = 0x656C6C69666C7566;
  if (a1 != 4)
  {
    v6 = 0x65746E6573657270;
  }

  if (a1 != 3)
  {
    v5 = v6;
  }

  v7 = 0xE600000000000000;
  v8 = 0x64656C696166;
  if (a1 != 1)
  {
    v8 = 0x676E69646E6570;
    v7 = 0xE700000000000000;
  }

  if (a1)
  {
    v4 = v7;
  }

  else
  {
    v8 = 0x64657461657263;
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
    v10 = v4;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x6564726163736964;
    }

    else if (a2 == 4)
    {
      v2 = 0x656C6C69666C7566;
    }

    else
    {
      v2 = 0x65746E6573657270;
    }

    v11 = 0xE900000000000064;
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xE600000000000000;
      v2 = 0x64656C696166;
    }

    else
    {
      v11 = 0xE700000000000000;
      v2 = 0x676E69646E6570;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  if (v9 == v2 && v10 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_217D89D4C();
  }

  return v12 & 1;
}

uint64_t sub_217CA0610(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xEE007265646E6552;
  v5 = 0x4674736575716572;
  if (a1 == 2)
  {
    v5 = 0x6F5464656C696166;
  }

  else
  {
    v4 = 0xED000064656C6961;
  }

  v6 = 0xD000000000000015;
  if (a1)
  {
    v3 = 0x8000000217DCC600;
  }

  else
  {
    v6 = 0x726568746FLL;
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

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x6F5464656C696166;
    }

    else
    {
      v11 = 0x4674736575716572;
    }

    if (a2 == 2)
    {
      v10 = 0xEE007265646E6552;
    }

    else
    {
      v10 = 0xED000064656C6961;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000015;
    }

    else
    {
      v9 = 0x726568746FLL;
    }

    if (a2)
    {
      v10 = 0x8000000217DCC600;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_217D89D4C();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_217CA0784(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x65726F7473707061;
    }

    else
    {
      v4 = 6448503;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1937204590;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
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
  v7 = 0xE800000000000000;
  v8 = 0x65726F7473707061;
  if (a2 != 2)
  {
    v8 = 6448503;
    v7 = 0xE300000000000000;
  }

  if (a2)
  {
    v2 = 1937204590;
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
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

uint64_t sub_217CA08A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEC0000006B6E694CLL;
    v4 = 0xEC0000006E6F6974;
    if (a1 == 2)
    {
      v6 = 0x6C616E7265747865;
    }

    else
    {
      v6 = 0x6163696669746F6ELL;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xEB00000000746567;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x6469577961646F74;
    }

    else
    {
      v6 = 0x6E776F6E6B6E75;
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

  v8 = 0xE700000000000000;
  v9 = 0x6C616E7265747865;
  v10 = 0xEC0000006B6E694CLL;
  if (a2 != 2)
  {
    v9 = 0x6163696669746F6ELL;
    v10 = 0xEC0000006E6F6974;
  }

  if (a2)
  {
    v2 = 0x6469577961646F74;
    v8 = 0xEB00000000746567;
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
    v13 = sub_217D89D4C();
  }

  return v13 & 1;
}

uint64_t sub_217CA0A18(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 6775156;
    }

    else
    {
      v4 = 0x657069636572;
    }

    if (v3 == 2)
    {
      v5 = 0xE300000000000000;
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
      v4 = 0x656C6369747261;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0xE300000000000000;
  v7 = 6775156;
  if (a2 != 2)
  {
    v7 = 0x657069636572;
    v6 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x656C6369747261;
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
    v10 = sub_217D89D4C();
  }

  return v10 & 1;
}

uint64_t sub_217CA0B44(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000018;
  if (a1 == 5)
  {
    v5 = 0x8000000217DCC250;
  }

  else
  {
    v4 = 0x6169726F74696465;
    v5 = 0xEF756F59726F466CLL;
  }

  v6 = 0x656873696C627570;
  v7 = 0xEF756F59726F4672;
  if (a1 != 3)
  {
    v6 = 0xD00000000000001ALL;
    v7 = 0x8000000217DCC230;
  }

  if (a1 > 4u)
  {
    v6 = v4;
    v7 = v5;
  }

  v8 = 0x8000000217DCC1E0;
  if (v2 != 1)
  {
    v8 = 0x8000000217DCC200;
  }

  if (v2)
  {
    v9 = 0xD000000000000012;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v3 = v8;
  }

  if (v2 <= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0x8000000217DCC1E0;
      }

      else
      {
        v12 = 0x8000000217DCC200;
      }

      if (v10 != 0xD000000000000012)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_42;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0x8000000217DCC250;
      if (v10 != 0xD000000000000018)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v12 = 0xEF756F59726F466CLL;
      if (v10 != 0x6169726F74696465)
      {
LABEL_42:
        v13 = sub_217D89D4C();
        goto LABEL_43;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEF756F59726F4672;
    if (v10 != 0x656873696C627570)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v12 = 0x8000000217DCC230;
    if (v10 != 0xD00000000000001ALL)
    {
      goto LABEL_42;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_42;
  }

  v13 = 1;
LABEL_43:

  return v13 & 1;
}

uint64_t sub_217CA0D50(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x705565636166;
  if (a1 != 5)
  {
    v5 = 0x6E776F4465636166;
    v4 = 0xE800000000000000;
  }

  v6 = 0xED00007466654C65;
  if (a1 != 3)
  {
    v6 = 0xEE00746867695265;
  }

  if (a1 > 4u)
  {
    v7 = v4;
  }

  else
  {
    v5 = 0x70616373646E616CLL;
    v7 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x7469617274726F70;
  if (a1 != 1)
  {
    v9 = 0xD000000000000012;
    v8 = 0x8000000217DCB8E0;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
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
    v11 = v7;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x7469617274726F70)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0x8000000217DCB8E0;
        if (v10 != 0xD000000000000012)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x705565636166)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6E776F4465636166)
      {
LABEL_40:
        v13 = sub_217D89D4C();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xED00007466654C65;
    if (v10 != 0x70616373646E616CLL)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0xEE00746867695265;
    if (v10 != 0x70616373646E616CLL)
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

uint64_t sub_217CA0F94(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000012;
  v5 = 0x8000000217DCABB0;
  v6 = 0x54676E6964616F6CLL;
  v7 = 0xEE0074756F656D69;
  if (a1 != 4)
  {
    v6 = 0x64656C696166;
    v7 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x6572676F72506E69;
  v9 = 0xEA00000000007373;
  if (a1 != 1)
  {
    v8 = 0x506F547964616572;
    v9 = 0xEB0000000079616CLL;
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
      v12 = 0x8000000217DCABB0;
      if (v10 != 0xD000000000000012)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEE0074756F656D69;
      if (v10 != 0x54676E6964616F6CLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x64656C696166)
      {
LABEL_34:
        v13 = sub_217D89D4C();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEA00000000007373;
      if (v10 != 0x6572676F72506E69)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEB0000000079616CLL;
      if (v10 != 0x506F547964616572)
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

uint64_t sub_217CA11A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1685221239;
    }

    else
    {
      v4 = 0x72657474656CLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
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
      v4 = 7105633;
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
  v7 = 0xE400000000000000;
  v8 = 1685221239;
  if (a2 != 2)
  {
    v8 = 0x72657474656CLL;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 7105633;
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
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

uint64_t sub_217CA12BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0x6E4F64656B636970;
    v12 = 0xEE00656369766544;
    v13 = 0xE800000000000000;
    v14 = 0x64657265746C6966;
    if (a1 != 8)
    {
      v14 = 0x6E65476961;
      v13 = 0xE500000000000000;
    }

    if (a1 != 7)
    {
      v11 = v14;
      v12 = v13;
    }

    v15 = 0x647541664F646E65;
    v16 = 0xEF6B636172546F69;
    if (a1 != 5)
    {
      v15 = 0xD00000000000001DLL;
      v16 = 0x8000000217DCC5B0;
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
    v3 = 0xE700000000000000;
    v4 = 0x6169726F74696465;
    v5 = 0xE90000000000006CLL;
    v6 = 0xE800000000000000;
    v7 = 0x657573734977656ELL;
    if (a1 != 3)
    {
      v7 = 0x656C6369747261;
      v6 = 0xE700000000000000;
    }

    if (a1 != 2)
    {
      v4 = v7;
      v5 = v6;
    }

    v8 = 0x6E6974656B72616DLL;
    if (a1)
    {
      v3 = 0xE900000000000067;
    }

    else
    {
      v8 = 0x6E776F6E6B6E75;
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
        v17 = 0xEF6B636172546F69;
        if (v9 != 0x647541664F646E65)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v17 = 0x8000000217DCC5B0;
        if (v9 != 0xD00000000000001DLL)
        {
LABEL_57:
          v18 = sub_217D89D4C();
          goto LABEL_58;
        }
      }
    }

    else if (a2 == 7)
    {
      v17 = 0xEE00656369766544;
      if (v9 != 0x6E4F64656B636970)
      {
        goto LABEL_57;
      }
    }

    else if (a2 == 8)
    {
      v17 = 0xE800000000000000;
      if (v9 != 0x64657265746C6966)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v17 = 0xE500000000000000;
      if (v9 != 0x6E65476961)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v17 = 0xE900000000000067;
      if (v9 != 0x6E6974656B72616DLL)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v17 = 0xE700000000000000;
      if (v9 != 0x6E776F6E6B6E75)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 == 2)
  {
    v17 = 0xE90000000000006CLL;
    if (v9 != 0x6169726F74696465)
    {
      goto LABEL_57;
    }
  }

  else if (a2 == 3)
  {
    v17 = 0xE800000000000000;
    if (v9 != 0x657573734977656ELL)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v17 = 0xE700000000000000;
    if (v9 != 0x656C6369747261)
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

uint64_t sub_217CA160C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x656E697A6167616DLL;
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
    v3 = 0xE600000000000000;
    v4 = 0x756F59726F66;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x6C656E6E616863;
  }

  else
  {
    v4 = 0x756F72676B636162;
    v3 = 0xEA0000000000646ELL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x656E697A6167616DLL;
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
    v5 = 0xE700000000000000;
    v6 = 0x6C656E6E616863;
    if (a2 != 3)
    {
      v6 = 0x756F72676B636162;
      v5 = 0xEA0000000000646ELL;
    }

    if (a2 == 2)
    {
      v7 = 0x756F59726F66;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
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
    v10 = sub_217D89D4C();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_217CA1798(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C7A7A7570;
  if (a1 != 5)
  {
    v5 = 0x657069636572;
    v4 = 0xE600000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x6575737369;
  if (a1 != 3)
  {
    v7 = 0x76457374726F7073;
    v6 = 0xEB00000000746E65;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x656C6369747261;
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
    v9 = 0x6E776F6E6B6E75;
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
        if (v10 != 0x656C6369747261)
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
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    v12 = 0xE600000000000000;
    if (a2 == 5)
    {
      if (v10 != 0x656C7A7A7570)
      {
        goto LABEL_39;
      }
    }

    else if (v10 != 0x657069636572)
    {
LABEL_39:
      v13 = sub_217D89D4C();
      goto LABEL_40;
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x6575737369)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xEB00000000746E65;
    if (v10 != 0x76457374726F7073)
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

uint64_t sub_217CA19AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000070;
  v5 = 0x6974737265746E69;
  if (a1 == 5)
  {
    v5 = 0x696B536F65646976;
  }

  else
  {
    v4 = 0xEF7061546C616974;
  }

  v6 = 0x7561506F65646976;
  v7 = 0xEA00000000006573;
  if (a1 != 3)
  {
    v6 = 0xD000000000000012;
    v7 = 0x8000000217DCBA70;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x615472656E6E6162;
  v9 = 0xE900000000000070;
  if (a1 != 1)
  {
    v8 = 0x616C506F65646976;
    v9 = 0xE900000000000079;
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
    if (!a2)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }

    if (a2 != 1)
    {
      v12 = 0xE900000000000079;
      if (v10 != 0x616C506F65646976)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }

    v13 = 0x615472656E6E6162;
    goto LABEL_29;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v12 = 0xEA00000000006573;
      if (v10 != 0x7561506F65646976)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0x8000000217DCBA70;
      if (v10 != 0xD000000000000012)
      {
        goto LABEL_40;
      }
    }

    goto LABEL_38;
  }

  if (a2 == 5)
  {
    v13 = 0x696B536F65646976;
LABEL_29:
    v12 = 0xE900000000000070;
    if (v10 != v13)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v12 = 0xEF7061546C616974;
  if (v10 != 0x6974737265746E69)
  {
LABEL_40:
    v14 = sub_217D89D4C();
    goto LABEL_41;
  }

LABEL_38:
  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v14 = 1;
LABEL_41:

  return v14 & 1;
}

uint64_t sub_217CA1C08(unsigned __int8 a1, unsigned __int8 a2)
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
      v5 = 0x8000000217DCB080;
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
  v8 = 0x8000000217DCB080;
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
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

uint64_t sub_217CA1D44(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 0x656C6369747261;
    }

    else
    {
      v2 = 0x6E776F6E6B6E75;
    }

    v3 = 0xE700000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0x466C656E6E616863;
    v3 = 0xEB00000000646565;
  }

  else if (a1 == 3)
  {
    v2 = 0x656E697A6167616DLL;
    v3 = 0xEC00000064656546;
  }

  else
  {
    v3 = 0xE600000000000000;
    v2 = 0x657069636572;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x656C6369747261;
    }

    else
    {
      v8 = 0x6E776F6E6B6E75;
    }

    v7 = 0xE700000000000000;
    if (v2 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0x656E697A6167616DLL;
    v5 = 0xEC00000064656546;
    if (a2 != 3)
    {
      v4 = 0x657069636572;
      v5 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v6 = 0x466C656E6E616863;
    }

    else
    {
      v6 = v4;
    }

    if (a2 == 2)
    {
      v7 = 0xEB00000000646565;
    }

    else
    {
      v7 = v5;
    }

    if (v2 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v3 != v7)
  {
LABEL_28:
    v9 = sub_217D89D4C();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t sub_217CA1EE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xE700000000000000;
    v11 = 0xE400000000000000;
    v12 = 2036427888;
    if (a1 != 2)
    {
      v12 = 0x6573756170;
      v11 = 0xE500000000000000;
    }

    v13 = 0x616C506F54706174;
    if (a1)
    {
      v10 = 0xE900000000000079;
    }

    else
    {
      v13 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v12;
    }

    if (v2 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    v3 = 0x6168436465657073;
    v4 = 0xEB0000000065676ELL;
    v5 = 0x636172547478656ELL;
    v6 = 0xE90000000000006BLL;
    if (a1 != 7)
    {
      v5 = 0x6B63614270696B73;
      v6 = 0xE800000000000000;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x656D75736572;
    if (a1 != 4)
    {
      v7 = 0x64656C696166;
    }

    if (a1 <= 5u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v3;
    }

    if (v2 <= 5)
    {
      v9 = 0xE600000000000000;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0xE400000000000000;
        if (v8 != 2036427888)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v14 = 0xE500000000000000;
        if (v8 != 0x6573756170)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v14 = 0xE900000000000079;
      if (v8 != 0x616C506F54706174)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE700000000000000;
      if (v8 != 0x6E776F6E6B6E75)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    v14 = 0xE600000000000000;
    if (a2 == 4)
    {
      if (v8 != 0x656D75736572)
      {
        goto LABEL_52;
      }
    }

    else if (v8 != 0x64656C696166)
    {
LABEL_52:
      v15 = sub_217D89D4C();
      goto LABEL_53;
    }
  }

  else if (a2 == 6)
  {
    v14 = 0xEB0000000065676ELL;
    if (v8 != 0x6168436465657073)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v14 = 0xE90000000000006BLL;
    if (v8 != 0x636172547478656ELL)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v14 = 0xE800000000000000;
    if (v8 != 0x6B63614270696B73)
    {
      goto LABEL_52;
    }
  }

  if (v9 != v14)
  {
    goto LABEL_52;
  }

  v15 = 1;
LABEL_53:

  return v15 & 1;
}

uint64_t sub_217CA21A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C616E7265747865;
    }

    else
    {
      v4 = 0x79616C50726163;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
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
      v4 = 0x7070416E69;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x6C616E7265747865;
  if (a2 != 2)
  {
    v8 = 0x79616C50726163;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x7070416E69;
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
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

uint64_t sub_217CA22E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x6F46794272756F66;
  v5 = 0xEA00000000007275;
  v6 = 0x756F467942786973;
  v7 = 0xE900000000000072;
  if (a1 != 4)
  {
    v6 = 0x6F77547942656E6FLL;
    v7 = 0xE800000000000000;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6F775479426F7774;
  if (a1 != 1)
  {
    v9 = 0x756F4679426F7774;
    v8 = 0xE900000000000072;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
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
    if (!a2)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    if (a2 == 1)
    {
      v12 = 0xE800000000000000;
      v13 = 1114601332;
      goto LABEL_31;
    }

    v14 = 1114601332;
LABEL_28:
    v12 = 0xE900000000000072;
    if (v10 != (v14 | 0x756F467900000000))
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 3)
  {
    v12 = 0xEA00000000007275;
    if (v10 != 0x6F46794272756F66)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 4)
  {
    v14 = 1115187571;
    goto LABEL_28;
  }

  v12 = 0xE800000000000000;
  v13 = 1113943663;
LABEL_31:
  if (v10 != (v13 | 0x6F77547900000000))
  {
LABEL_34:
    v15 = sub_217D89D4C();
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

uint64_t sub_217CA24B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x8000000217DCC900;
  v5 = 0xD000000000000013;
  if (a1 != 4)
  {
    v5 = 0xD000000000000014;
    v4 = 0x8000000217DCC920;
  }

  if (a1 == 3)
  {
    v5 = 0xD000000000000011;
    v4 = 0x8000000217DCC8E0;
  }

  v6 = 0x6761507961646F74;
  v7 = 0xE900000000000065;
  if (v2 != 1)
  {
    v6 = 0xD000000000000011;
    v7 = 0x8000000217DCC8C0;
  }

  if (v2)
  {
    v3 = v7;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2 <= 2)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  if (v2 <= 2)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v10 = 0xE700000000000000;
      if (v8 != 0x6E776F6E6B6E75)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    if (a2 == 1)
    {
      v10 = 0xE900000000000065;
      if (v8 != 0x6761507961646F74)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v10 = 0x8000000217DCC8C0;
LABEL_29:
    if (v8 != 0xD000000000000011)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 3)
  {
    v10 = 0x8000000217DCC8E0;
    goto LABEL_29;
  }

  if (a2 == 4)
  {
    v10 = 0x8000000217DCC900;
    if (v8 != 0xD000000000000013)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v10 = 0x8000000217DCC920;
    if (v8 != 0xD000000000000014)
    {
LABEL_34:
      v11 = sub_217D89D4C();
      goto LABEL_35;
    }
  }

LABEL_32:
  if (v9 != v10)
  {
    goto LABEL_34;
  }

  v11 = 1;
LABEL_35:

  return v11 & 1;
}

uint64_t sub_217CA2670(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1937204590;
    }

    else
    {
      v4 = 6448503;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x65726F7453707061;
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
  v7 = 0xE400000000000000;
  v8 = 1937204590;
  if (a2 != 2)
  {
    v8 = 6448503;
    v7 = 0xE300000000000000;
  }

  if (a2)
  {
    v2 = 0x65726F7453707061;
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
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

uint64_t sub_217CA2794(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x534F64615069;
    }

    else
    {
      v4 = 0x534F63616DLL;
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
      v4 = 5459817;
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
  v7 = 0xE600000000000000;
  v8 = 0x534F64615069;
  if (a2 != 2)
  {
    v8 = 0x534F63616DLL;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 5459817;
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
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

uint64_t sub_217CA28B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x72656E6E6162;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1 == 2)
    {
      v5 = 0x566C6C6F52657270;
      v6 = 1868915817;
    }

    else
    {
      if (a1 == 3)
      {
        v4 = 0xE800000000000000;
        v5 = 0x644165766974616ELL;
        goto LABEL_14;
      }

      v5 = 0x6974737265746E69;
      v6 = 1818323316;
    }

    v4 = v6 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  }

LABEL_14:
  if (a2 <= 1u)
  {
    v7 = 0xE700000000000000;
    v8 = 0xE600000000000000;
    v9 = 0x72656E6E6162;
    v10 = a2 == 0;
  }

  else
  {
    v2 = 0x566C6C6F52657270;
    v7 = 0xEC0000006F656469;
    v8 = 0xE800000000000000;
    v9 = 0x644165766974616ELL;
    if (a2 != 3)
    {
      v9 = 0x6974737265746E69;
      v8 = 0xEC0000006C616974;
    }

    v10 = a2 == 2;
  }

  if (v10)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (v10)
  {
    v12 = v7;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v4 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_217D89D4C();
  }

  return v13 & 1;
}

uint64_t sub_217CA2A48(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 0x656C6369747261;
    }

    else
    {
      v2 = 0x6E776F6E6B6E75;
    }

    v3 = 0xE700000000000000;
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v2 = 1684366694;
  }

  else if (a1 == 3)
  {
    v2 = 0x747241664F646E65;
    v3 = 0xEC000000656C6369;
  }

  else
  {
    v2 = 0x636552664F646E65;
    v3 = 0xEB00000000657069;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x656C6369747261;
    }

    else
    {
      v8 = 0x6E776F6E6B6E75;
    }

    v7 = 0xE700000000000000;
    if (v2 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0x747241664F646E65;
    v5 = 0xEC000000656C6369;
    if (a2 != 3)
    {
      v4 = 0x636552664F646E65;
      v5 = 0xEB00000000657069;
    }

    if (a2 == 2)
    {
      v6 = 1684366694;
    }

    else
    {
      v6 = v4;
    }

    if (a2 == 2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = v5;
    }

    if (v2 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v3 != v7)
  {
LABEL_28:
    v9 = sub_217D89D4C();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t sub_217CA2BE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x6E69776F6C6C6F66;
  v5 = 0xEF6573776F724267;
  if (a1 != 4)
  {
    v4 = 0xD000000000000017;
    v5 = 0x8000000217DCB010;
  }

  if (a1 == 3)
  {
    v4 = 0xD000000000000011;
    v5 = 0x8000000217DCAFE0;
  }

  v6 = 0xD000000000000016;
  if (a1 == 1)
  {
    v6 = 0x6E69776F6C6C6F66;
    v7 = 0xE900000000000067;
  }

  else
  {
    v7 = 0x8000000217DCAFC0;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v8 = v6;
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
    v9 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v10 = 0x8000000217DCAFE0;
      if (v8 != 0xD000000000000011)
      {
        goto LABEL_35;
      }
    }

    else if (a2 == 4)
    {
      v10 = 0xEF6573776F724267;
      if (v8 != 0x6E69776F6C6C6F66)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v10 = 0x8000000217DCB010;
      if (v8 != 0xD000000000000017)
      {
LABEL_35:
        v11 = sub_217D89D4C();
        goto LABEL_36;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0xE900000000000067;
      if (v8 != 0x6E69776F6C6C6F66)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v10 = 0x8000000217DCAFC0;
      if (v8 != 0xD000000000000016)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v10 = 0xE700000000000000;
    if (v8 != 0x6E776F6E6B6E75)
    {
      goto LABEL_35;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_35;
  }

  v11 = 1;
LABEL_36:

  return v11 & 1;
}

uint64_t sub_217CA2DE0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x646564616F6CLL;
    }

    else
    {
      v4 = 0x676B636142707061;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEF6465646E756F72;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656E6F646E616261;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE900000000000064;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x646564616F6CLL;
  if (a2 != 2)
  {
    v8 = 0x676B636142707061;
    v7 = 0xEF6465646E756F72;
  }

  if (a2)
  {
    v2 = 0x656E6F646E616261;
    v6 = 0xE900000000000064;
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
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

uint64_t sub_217CA2F3C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6C616E7265747865;
  if (a1 != 6)
  {
    v5 = 0x72756769666E6F63;
    v4 = 0xEC000000656C6261;
  }

  v6 = 0x43656C646E754273;
  v7 = 0xEE00726569727261;
  if (a1 != 4)
  {
    v6 = 0x7748656C646E7562;
    v7 = 0xE900000000000064;
  }

  if (a1 <= 5u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x656C646E7562;
  if (a1 != 2)
  {
    v9 = 0x656C646E754273;
    v8 = 0xE700000000000000;
  }

  v10 = 0x6574726143616C61;
  if (a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v10 = 0x6E776F6E6B6E75;
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
        v13 = 0xE800000000000000;
        if (v11 != 0x6C616E7265747865)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xEC000000656C6261;
        if (v11 != 0x72756769666E6F63)
        {
LABEL_45:
          v14 = sub_217D89D4C();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEE00726569727261;
      if (v11 != 0x43656C646E754273)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE900000000000064;
      if (v11 != 0x7748656C646E7562)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x656C646E7562)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x656C646E754273)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE800000000000000;
    if (v11 != 0x6574726143616C61)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v11 != 0x6E776F6E6B6E75)
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

uint64_t sub_217CA31DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x65736C6166;
    }

    else
    {
      v4 = 0x656279616DLL;
    }

    v5 = 0xE500000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 1702195828;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
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
  v7 = 0x65736C6166;
  if (a2 != 2)
  {
    v7 = 0x656279616DLL;
  }

  if (a2)
  {
    v2 = 1702195828;
    v6 = 0xE400000000000000;
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
    v10 = sub_217D89D4C();
  }

  return v10 & 1;
}

uint64_t sub_217CA3300(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 <= 3u)
  {
    v11 = 0x4D747865746E6F63;
    v12 = 0xEB00000000756E65;
    if (a1 != 2)
    {
      v11 = 0x7463416570697773;
      v12 = 0xEB000000006E6F69;
    }

    v13 = 0x776F7272616873;
    if (!a1)
    {
      v13 = 0x6E776F6E6B6E75;
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
    v4 = 0xE400000000000000;
    v5 = 2003134838;
    v6 = 0x616D6D6F4379656BLL;
    v7 = 0xEA0000000000646ELL;
    if (a1 != 7)
    {
      v6 = 0x6E65746E49707061;
      v7 = 0xE900000000000074;
    }

    if (a1 != 6)
    {
      v5 = v6;
      v4 = v7;
    }

    v8 = 0x7261626C6F6F74;
    if (a1 != 4)
    {
      v8 = 0x726162756E656DLL;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v3 <= 5)
    {
      v10 = 0xE700000000000000;
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
        v15 = 0x4D747865746E6F63;
        v16 = 7695973;
      }

      else
      {
        v15 = 0x7463416570697773;
        v16 = 7237481;
      }

      v14 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      if (v9 != v15)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    }

    v14 = 0xE700000000000000;
    if (a2)
    {
      if (v9 != 0x776F7272616873)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      v14 = 0xE700000000000000;
      if (a2 == 4)
      {
        v17 = 1819242356;
      }

      else
      {
        v17 = 1970169197;
      }

      if (v9 != (v17 | 0x72616200000000))
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    }

    if (a2 == 6)
    {
      v14 = 0xE400000000000000;
      if (v9 != 2003134838)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    }

    if (a2 == 7)
    {
      v14 = 0xEA0000000000646ELL;
      if (v9 != 0x616D6D6F4379656BLL)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    }

    v2 = 0x6E65746E49707061;
    v14 = 0xE900000000000074;
  }

  if (v9 != v2)
  {
LABEL_49:
    v18 = sub_217D89D4C();
    goto LABEL_50;
  }

LABEL_45:
  if (v10 != v14)
  {
    goto LABEL_49;
  }

  v18 = 1;
LABEL_50:

  return v18 & 1;
}

uint64_t sub_217CA35AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656E696C6E69;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7473616F74;
    }

    else
    {
      v4 = 0x6954656C62627562;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE900000000000070;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x72656E6E6162;
    }

    else
    {
      v4 = 0x656E696C6E69;
    }

    v5 = 0xE600000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x7473616F74;
  if (a2 != 2)
  {
    v7 = 0x6954656C62627562;
    v6 = 0xE900000000000070;
  }

  if (a2)
  {
    v2 = 0x72656E6E6162;
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
    v10 = sub_217D89D4C();
  }

  return v10 & 1;
}

uint64_t sub_217CA36E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 4u)
  {
    v11 = 0x6C6C696B676973;
    v12 = 0x6D726574676973;
    if (a1 != 8)
    {
      v12 = 0x74697571676973;
    }

    if (a1 != 7)
    {
      v11 = v12;
    }

    v13 = 0xE600000000000000;
    v14 = 0x737562676973;
    if (a1 != 5)
    {
      v14 = 0x70617274676973;
      v13 = 0xE700000000000000;
    }

    if (a1 <= 6u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v11;
    }

    if (v3 <= 6)
    {
      v10 = v13;
    }

    else
    {
      v10 = 0xE700000000000000;
    }
  }

  else
  {
    v4 = 0xE600000000000000;
    v5 = 0x6C6C69676973;
    v6 = 0xE700000000000000;
    v7 = 0x74726261676973;
    if (a1 != 3)
    {
      v7 = 0x657066676973;
      v6 = 0xE600000000000000;
    }

    if (a1 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x76676573676973;
    if (!a1)
    {
      v8 = 0x6E776F6E6B6E75;
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
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v15 = 0xE600000000000000;
        if (v9 != 0x737562676973)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x70617274676973)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_51;
    }

    v15 = 0xE700000000000000;
    if (a2 == 7)
    {
      if (v9 != 0x6C6C696B676973)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    if (a2 == 8)
    {
      if (v9 != 0x6D726574676973)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    v2 = 0x74697571676973;
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE600000000000000;
        if (v9 != 0x6C6C69676973)
        {
          goto LABEL_54;
        }
      }

      else if (a2 == 3)
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x74726261676973)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v15 = 0xE600000000000000;
        if (v9 != 0x657066676973)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_51;
    }

    v15 = 0xE700000000000000;
    if (a2)
    {
      if (v9 != 0x76676573676973)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }
  }

  if (v9 != v2)
  {
LABEL_54:
    v16 = sub_217D89D4C();
    goto LABEL_55;
  }

LABEL_51:
  if (v10 != v15)
  {
    goto LABEL_54;
  }

  v16 = 1;
LABEL_55:

  return v16 & 1;
}

uint64_t sub_217CA39B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEA00000000006B63;
    v4 = 0xED00006B63617453;
    if (a1 == 2)
    {
      v6 = 0x6174537472616D73;
    }

    else
    {
      v6 = 0x7472616D536E6F6ELL;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xEC00000074656764;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x695764656E6E6970;
    }

    else
    {
      v6 = 0x6E776F6E6B6E75;
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

  v8 = 0xE700000000000000;
  v9 = 0x6174537472616D73;
  v10 = 0xEA00000000006B63;
  if (a2 != 2)
  {
    v9 = 0x7472616D536E6F6ELL;
    v10 = 0xED00006B63617453;
  }

  if (a2)
  {
    v2 = 0x695764656E6E6970;
    v8 = 0xEC00000074656764;
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
    v13 = sub_217D89D4C();
  }

  return v13 & 1;
}

uint64_t sub_217CA3B20(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1818845542;
    }

    else
    {
      v4 = 0x7373696D736964;
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
      v4 = 0x73736563637573;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0xE400000000000000;
  v7 = 1818845542;
  if (a2 != 2)
  {
    v7 = 0x7373696D736964;
    v6 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x73736563637573;
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
    v10 = sub_217D89D4C();
  }

  return v10 & 1;
}

uint64_t sub_217CA3C50(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1869768058;
    }

    else
    {
      v4 = 0x746C7561666564;
    }

    if (v2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0xE500000000000000;
    v4 = 0x7974666966;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 1214606959;
    }

    else
    {
      v3 = 1215264628;
    }

    v4 = v3 | 0x72646E7500000000;
    v5 = 0xEA00000000006465;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1869768058;
    }

    else
    {
      v9 = 0x746C7561666564;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v6 = 0x72646E7548656E6FLL;
    if (a2 != 3)
    {
      v6 = 0x72646E75486F7774;
    }

    if (a2 == 2)
    {
      v7 = 0x7974666966;
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
      v8 = 0xEA00000000006465;
    }

    if (v4 != v7)
    {
      goto LABEL_34;
    }
  }

  if (v5 != v8)
  {
LABEL_34:
    v10 = sub_217D89D4C();
    goto LABEL_35;
  }

  v10 = 1;
LABEL_35:

  return v10 & 1;
}

uint64_t sub_217CA3DC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7974666966;
  v6 = 0x4679746E65766573;
  v7 = 0xEB00000000657669;
  if (a1 != 4)
  {
    v6 = 0x72646E7548656E6FLL;
    v7 = 0xEA00000000006465;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE400000000000000;
  v9 = 1869768058;
  if (a1 != 1)
  {
    v9 = 0x694679746E657774;
    v8 = 0xEA00000000006576;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x746C7561666564;
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
      if (v10 != 0x7974666966)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEB00000000657669;
      if (v10 != 0x4679746E65766573)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEA00000000006465;
      if (v10 != 0x72646E7548656E6FLL)
      {
LABEL_34:
        v13 = sub_217D89D4C();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1869768058)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEA00000000006576;
      if (v10 != 0x694679746E657774)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x746C7561666564)
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

void *sub_217CA3FB8(unsigned __int8 a1)
{
  v2 = sub_217D87A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v16 = a1;
  v17 = MEMORY[0x277D84F90];
  if (((1 << v16) & 0x2D) == 0)
  {
    if (v16 == 1)
    {
      sub_217D87A1C();
      (*(v3 + 16))(v7, v10, v2);
      v17 = sub_217B5ABE8(0, 1, 1, MEMORY[0x277D84F90]);
      v19 = v17[2];
      v18 = v17[3];
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v17 = sub_217B5ABE8(v18 > 1, v19 + 1, 1, v17);
      }

      v15 = v10;
      v13 = v7;
    }

    else
    {
      sub_217D87A1C();
      (*(v3 + 16))(v13, v15, v2);
      v17 = sub_217B5ABE8(0, 1, 1, MEMORY[0x277D84F90]);
      v19 = v17[2];
      v21 = v17[3];
      v20 = v19 + 1;
      if (v19 >= v21 >> 1)
      {
        v17 = sub_217B5ABE8(v21 > 1, v19 + 1, 1, v17);
      }
    }

    (*(v3 + 8))(v15, v2);
    v17[2] = v20;
    (*(v3 + 32))(v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v19, v13, v2);
  }

  return v17;
}

void *sub_217CA4284(uint64_t a1, unsigned __int8 a2)
{
  v3 = sub_217D87A4C();
  v43 = *(v3 - 8);
  v4 = *(v43 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v42 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v42 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v42 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v42 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v42 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v42 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v42 - v26;
  v28 = a2;
  v29 = MEMORY[0x277D84F90];
  if (v28 > 2)
  {
    if ((v28 - 5) >= 4)
    {
      v42 = v3;
      if (v28 == 3)
      {
        sub_217D87A1C();
        (*(v43 + 16))(v7, v10, v3);
        v29 = sub_217B5ABE8(0, 1, 1, MEMORY[0x277D84F90]);
        v33 = v29[2];
        v35 = v29[3];
        v34 = v33 + 1;
        if (v33 >= v35 >> 1)
        {
          v29 = sub_217B5ABE8(v35 > 1, v33 + 1, 1, v29);
        }

        v27 = v10;
        v25 = v7;
        v30 = v43;
      }

      else
      {
        sub_217D87A1C();
        v30 = v43;
        (*(v43 + 16))(v13, v16, v3);
        v38 = sub_217B5ABE8(0, 1, 1, MEMORY[0x277D84F90]);
        v29 = v38;
        v33 = v38[2];
        v39 = v38[3];
        if (v33 >= v39 >> 1)
        {
          v29 = sub_217B5ABE8(v39 > 1, v33 + 1, 1, v38);
        }

        v27 = v16;
        v25 = v13;
        v34 = v33 + 1;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (!v28)
    {
      sub_217D87A1C();
      v30 = v43;
      v36 = *(v43 + 16);
      v42 = v3;
      v36(v25, v27, v3);
      v29 = sub_217B5ABE8(0, 1, 1, MEMORY[0x277D84F90]);
      v33 = v29[2];
      v37 = v29[3];
      v34 = v33 + 1;
      if (v33 >= v37 >> 1)
      {
        v29 = sub_217B5ABE8(v37 > 1, v33 + 1, 1, v29);
      }

      goto LABEL_18;
    }

    if (v28 != 1)
    {
      sub_217D87A1C();
      v30 = v43;
      v31 = *(v43 + 16);
      v42 = v3;
      v31(v19, v22, v3);
      v29 = sub_217B5ABE8(0, 1, 1, MEMORY[0x277D84F90]);
      v33 = v29[2];
      v32 = v29[3];
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v29 = sub_217B5ABE8(v32 > 1, v33 + 1, 1, v29);
      }

      v27 = v22;
      v25 = v19;
LABEL_18:
      v40 = v42;
      (*(v30 + 8))(v27, v42);
      v29[2] = v34;
      (*(v30 + 32))(v29 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v33, v25, v40);
    }
  }

  return v29;
}

void sub_217CA4794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a3;
  v78 = a2;
  v77 = sub_217D87A4C();
  v76 = *(v77 - 8);
  v5 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v80 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for MediaEngageEvent.Model(0);
  v7 = *(*(v88 - 1) + 64);
  MEMORY[0x28223BE20](v88);
  v81 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CA50DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_217D881AC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v64 - v16;
  sub_217CA5134();
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v13);
  v24 = swift_dynamicCast();
  v25 = *(v20 + 56);
  if (!v24)
  {
    v25(v12, 1, 1, v19);
    sub_217CA5210(v12, sub_217CA50DC);
    sub_217B0F048();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v25(v12, 0, 1, v19);
  (*(v20 + 32))(v23, v12, v19);
  v26 = sub_217D8816C();
  v27 = sub_217D887BC();
  if (v3)
  {
    (*(v20 + 8))(v23, v19);

    return;
  }

  v29 = v27;
  v30 = v28;

  v31 = sub_217D8796C();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  sub_217D8795C();
  sub_217CA51C8(&qword_27CBA37A8, type metadata accessor for MediaEngageEvent.Model);
  v34 = v81;
  v35 = v88;
  sub_217D8794C();
  v75 = v30;

  v36 = (v34 + v35[9]);
  v37 = *v36;
  v38 = *(v36 + 1);
  v39 = *(v36 + 2);
  v40 = *(v36 + 6);
  v41 = v36[28];
  v42 = v34 + v35[10];
  v43 = *v42;
  v44 = *(v42 + 8);
  v45 = *(v42 + 12);
  v46 = *(v42 + 16);
  v47 = *(v42 + 17);
  if (((1 << v37) & 0x2D) != 0)
  {
    goto LABEL_6;
  }

  if (*(v42 + 8) <= 3u)
  {
    if (*(v42 + 8) > 1u)
    {
      v69 = *v42;
      v74 = v37;
      v73 = v38;
      v72 = v39;
      v71 = v40;
      v70 = v41;
      v68 = v46;
      v67 = v45;
      v66 = v47;
    }

    else
    {
      if (*(v42 + 8))
      {

LABEL_6:
        (*(v20 + 8))(v23, v19);
        sub_217AE010C(v29, v75);
        sub_217CA5210(v34, type metadata accessor for MediaEngageEvent.Model);
        return;
      }

      v66 = *(v42 + 17);
      v67 = v45;
      v68 = v46;
      v69 = v43;
      v70 = v41;
      v71 = v40;
      v72 = v39;
      v73 = v38;
      v74 = v37;
    }
  }

  else
  {
    v74 = v37;
    v73 = v38;
    v72 = v39;
    v71 = v40;
    v70 = v41;
    v69 = v43;
    v68 = v46;
    v67 = v45;
    v66 = v47;
  }

  v48 = sub_217D89D4C();

  if (v48)
  {
    goto LABEL_6;
  }

  sub_217D87A1C();
  v49 = sub_217B5ABE8(0, 1, 1, MEMORY[0x277D84F90]);
  v51 = v49[2];
  v50 = v49[3];
  v52 = v51 + 1;
  if (v51 >= v50 >> 1)
  {
    v65 = v51 + 1;
    v63 = sub_217B5ABE8(v50 > 1, v51 + 1, 1, v49);
    v52 = v65;
    v49 = v63;
  }

  v49[2] = v52;
  (*(v76 + 32))(v49 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v51, v80, v77);
  v83 = v49;
  v53 = v34 + v88[5];
  v54 = *(v53 + 48);
  v84[2] = *(v53 + 32);
  v84[3] = v54;
  *&v85[15] = *(v53 + 127);
  v55 = *(v53 + 112);
  v84[6] = *(v53 + 96);
  *v85 = v55;
  v56 = *(v53 + 80);
  v84[4] = *(v53 + 64);
  v84[5] = v56;
  v57 = *v53;
  v84[1] = *(v53 + 16);
  v84[0] = v57;
  v58 = v34 + v88[6];
  v87 = *(v58 + 32);
  v59 = *(v58 + 16);
  v86[0] = *v58;
  v86[1] = v59;
  v60 = sub_217C81FAC(v84, v86, *(v34 + v88[8]), *(v34 + v88[8] + 8), *(v34 + v88[8] + 16), v78, v79);
  sub_217B0E7A0(v60);
  v61 = sub_217CA4284(v69, v44);
  sub_217B0E7A0(v61);
  v82 = v70;
  v62 = sub_217CA3FB8(v74);
  sub_217B0E7A0(v62);
  sub_217AE010C(v29, v75);
  (*(v20 + 8))(v23, v19);
  sub_217CA5210(v34, type metadata accessor for MediaEngageEvent.Model);
}

void sub_217CA50DC()
{
  if (!qword_27CBA37A0)
  {
    sub_217CA5134();
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA37A0);
    }
  }
}

void sub_217CA5134()
{
  if (!qword_2811C88F0)
  {
    type metadata accessor for MediaEngageEvent(255);
    sub_217CA51C8(qword_2811C5130, type metadata accessor for MediaEngageEvent);
    v0 = sub_217D881AC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C88F0);
    }
  }
}

uint64_t sub_217CA51C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_217CA5210(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_217CA5270()
{
  v0 = sub_217D881BC();
  __swift_allocate_value_buffer(v0, qword_2811C00F0);
  v1 = __swift_project_value_buffer(v0, qword_2811C00F0);
  *v1 = 0x7364612E6D6F63;
  *(v1 + 8) = 0xE700000000000000;
  *(v1 + 16) = 3;
  *(v1 + 24) = 0;
  v2 = *MEMORY[0x277CEACB0];
  v3 = *(*(v0 - 8) + 104);

  return v3();
}

uint64_t sub_217CA535C()
{
  v0 = sub_217D8856C();
  __swift_allocate_value_buffer(v0, qword_2811C00C8);
  v1 = __swift_project_value_buffer(v0, qword_2811C00C8);
  v2 = *MEMORY[0x277CEADA8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_217CA541C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C00A0);
  __swift_project_value_buffer(v0, qword_2811C00A0);
  return sub_217D8866C();
}

uint64_t BannerAdImpressionEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t BannerAdImpressionEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.adUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 24);
  sub_217CA6640(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BannerAdImpressionEvent.adUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 24);
  sub_217CA6640(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 28);
  sub_217CA6640(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BannerAdImpressionEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 28);
  sub_217CA6640(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 32);
  sub_217CA6640(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BannerAdImpressionEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 32);
  sub_217CA6640(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.adStateData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 36);
  sub_217CA6640(0, &qword_2811C87F8, sub_217BB5324, sub_217BB537C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BannerAdImpressionEvent.adStateData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 36);
  sub_217CA6640(0, &qword_2811C87F8, sub_217BB5324, sub_217BB537C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.adPlacementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 40);
  sub_217CA6640(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BannerAdImpressionEvent.adPlacementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 40);
  sub_217CA6640(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.adSizeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 44);
  sub_217CA6640(0, &qword_2811C8838, sub_217B95AC0, sub_217B95B14);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BannerAdImpressionEvent.adSizeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 44);
  sub_217CA6640(0, &qword_2811C8838, sub_217B95AC0, sub_217B95B14);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.adPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 48);
  sub_217CA6640(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BannerAdImpressionEvent.adPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 48);
  sub_217CA6640(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.adFeedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 52);
  sub_217CA6640(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BannerAdImpressionEvent.adFeedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 52);
  sub_217CA6640(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.bannerAdData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 56);
  sub_217CA6640(0, &qword_2811C87B0, sub_217C60A7C, sub_217C60AD4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BannerAdImpressionEvent.bannerAdData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 56);
  sub_217CA6640(0, &qword_2811C87B0, sub_217C60A7C, sub_217C60AD4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.adGroupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 60);
  sub_217CA6640(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217CA6640(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t BannerAdImpressionEvent.adGroupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 60);
  sub_217CA6640(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for BannerAdImpressionEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217CA6640(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217CA6640(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217CA6640(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217CA6640(0, &qword_2811C87F8, sub_217BB5324, sub_217BB537C);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217CA6640(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217CA6640(0, &qword_2811C8838, sub_217B95AC0, sub_217B95B14);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217CA6640(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC);
  (*(*(v21 - 8) + 104))(a1 + v20, v12, v21);
  v22 = v4[13];
  sub_217CA6640(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  (*(*(v23 - 8) + 104))(a1 + v22, v12, v23);
  v24 = v4[14];
  sub_217CA6640(0, &qword_2811C87B0, sub_217C60A7C, sub_217C60AD4);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_217CA6640(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
  v28 = *(*(v27 - 8) + 104);

  return v28(a1 + v26, v12, v27);
}

uint64_t sub_217CA6D88@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t BannerAdImpressionEvent.Model.adUserData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BannerAdImpressionEvent.Model(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t BannerAdImpressionEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BannerAdImpressionEvent.Model(0) + 28));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t BannerAdImpressionEvent.Model.channelData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BannerAdImpressionEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_217AD86BC(v4, v5);
}

uint64_t BannerAdImpressionEvent.Model.adStateData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BannerAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t BannerAdImpressionEvent.Model.adPlacementData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BannerAdImpressionEvent.Model(0) + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

double BannerAdImpressionEvent.Model.adSizeData.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for BannerAdImpressionEvent.Model(0) + 44));
  *a1 = result;
  return result;
}

uint64_t BannerAdImpressionEvent.Model.adPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for BannerAdImpressionEvent.Model(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t BannerAdImpressionEvent.Model.adFeedData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BannerAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t BannerAdImpressionEvent.Model.bannerAdData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BannerAdImpressionEvent.Model(0);
  v4 = (v1 + *(result + 56));
  v5 = *v4;
  v6 = v4[1];
  LOBYTE(v4) = v4[2];
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v4;
  return result;
}

uint64_t BannerAdImpressionEvent.Model.adGroupData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BannerAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

__n128 BannerAdImpressionEvent.Model.init(eventData:timedData:adUserData:userBundleSubscriptionContextData:channelData:adStateData:adPlacementData:adSizeData:adPositionData:adFeedData:bannerAdData:adGroupData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, int *a10, char *a11, char *a12, char *a13)
{
  v19 = *a3;
  v20 = a3[1];
  v21 = *(a5 + 32);
  v22 = *a6;
  v38 = a7[1];
  v39 = *a7;
  v40 = *(a10 + 4);
  v41 = *a10;
  v45 = *a12;
  v44 = a12[1];
  v42 = *a11;
  v43 = a12[2];
  v46 = *a13;
  v23 = sub_217D8899C();
  v24 = *a8;
  v36 = *(a5 + 16);
  v37 = *a5;
  (*(*(v23 - 8) + 32))(a9, a1, v23);
  v25 = type metadata accessor for BannerAdImpressionEvent.Model(0);
  v26 = v25[5];
  v27 = sub_217D889CC();
  (*(*(v27 - 8) + 32))(a9 + v26, a2, v27);
  v28 = (a9 + v25[6]);
  *v28 = v19;
  v28[1] = v20;
  v29 = a9 + v25[7];
  v30 = *(a4 + 16);
  *v29 = *a4;
  *(v29 + 16) = v30;
  *(v29 + 32) = *(a4 + 32);
  *(v29 + 48) = *(a4 + 48);
  v31 = a9 + v25[8];
  result = v37;
  *v31 = v37;
  *(v31 + 16) = v36;
  *(v31 + 32) = v21;
  *(a9 + v25[9]) = v22;
  v33 = (a9 + v25[10]);
  *v33 = v39;
  v33[1] = v38;
  *(a9 + v25[11]) = v24;
  v34 = a9 + v25[12];
  *v34 = v41;
  *(v34 + 4) = v40;
  *(a9 + v25[13]) = v42;
  v35 = (a9 + v25[14]);
  *v35 = v45;
  v35[1] = v44;
  v35[2] = v43;
  *(a9 + v25[15]) = v46;
  return result;
}

unint64_t sub_217CA72C8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6144646565466461;
    v7 = 0x644172656E6E6162;
    if (a1 != 10)
    {
      v7 = 0x4470756F72476461;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6D6563616C506461;
    v9 = 0x6144657A69536461;
    if (a1 != 7)
    {
      v9 = 0x697469736F506461;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746144746E657665;
    v2 = 0xD000000000000021;
    v3 = 0x446C656E6E616863;
    if (a1 != 4)
    {
      v3 = 0x4465746174536461;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x74614464656D6974;
    if (a1 != 1)
    {
      v4 = 0x6144726573556461;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_217CA7494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217CA9390(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217CA74BC(uint64_t a1)
{
  v2 = sub_217CA7BD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CA74F8(uint64_t a1)
{
  v2 = sub_217CA7BD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BannerAdImpressionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CA85A4(0, &qword_27CBA37B0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v33 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CA7BD8();
  sub_217D89E7C();
  LOBYTE(v46[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for BannerAdImpressionEvent.Model(0);
    v13 = v12[5];
    LOBYTE(v46[0]) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v14 = (v3 + v12[6]);
    v15 = v14[1];
    v49 = *v14;
    v50 = v15;
    v48 = 2;
    sub_217A586D4();

    sub_217D89CAC();

    v16 = (v3 + v12[7]);
    v17 = v16[1];
    v46[0] = *v16;
    v46[1] = v17;
    v19 = *v16;
    v18 = v16[1];
    v46[2] = v16[2];
    v47 = *(v16 + 48);
    v42 = v19;
    v43 = v18;
    v44 = v16[2];
    v45 = *(v16 + 48);
    v41 = 3;
    sub_217ACC004(v46, v39);
    sub_217A55B98();
    sub_217D89CAC();
    v39[0] = v42;
    v39[1] = v43;
    v39[2] = v44;
    v40 = v45;
    sub_217ACC69C(v39);
    v20 = (v3 + v12[8]);
    v21 = v20[1];
    v22 = v20[2];
    v23 = v20[3];
    v24 = v20[4];
    v34 = *v20;
    v35 = v21;
    v36 = v22;
    v37 = v23;
    v38 = v24;
    HIBYTE(v33) = 4;
    sub_217AD86BC(v34, v21);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v34, v35);
    LOBYTE(v34) = *(v3 + v12[9]);
    HIBYTE(v33) = 5;
    sub_217BB537C();
    sub_217D89CAC();
    v25 = (v3 + v12[10]);
    v26 = v25[1];
    v34 = *v25;
    v35 = v26;
    HIBYTE(v33) = 6;
    sub_217B3CE84();

    sub_217D89CAC();

    v34 = *(v3 + v12[11]);
    HIBYTE(v33) = 7;
    sub_217B95B14();
    sub_217D89CAC();
    v27 = (v3 + v12[12]);
    v28 = *v27;
    LOBYTE(v27) = *(v27 + 4);
    LODWORD(v34) = v28;
    BYTE4(v34) = v27;
    HIBYTE(v33) = 8;
    sub_217B3D0DC();
    sub_217D89C3C();
    LOBYTE(v34) = *(v3 + v12[13]);
    HIBYTE(v33) = 9;
    sub_217A5BFF4();
    sub_217D89C3C();
    v29 = (v3 + v12[14]);
    v30 = *v29;
    v31 = v29[1];
    LOBYTE(v29) = v29[2];
    LOBYTE(v34) = v30;
    BYTE1(v34) = v31;
    BYTE2(v34) = v29;
    HIBYTE(v33) = 10;
    sub_217C60AD4();
    sub_217D89CAC();
    LOBYTE(v34) = *(v3 + v12[15]);
    HIBYTE(v33) = 11;
    sub_217B3D560();
    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217CA7BD8()
{
  result = qword_27CBA37B8;
  if (!qword_27CBA37B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA37B8);
  }

  return result;
}

uint64_t BannerAdImpressionEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v46 = sub_217D889CC();
  v43 = *(v46 - 8);
  v3 = *(v43 + 64);
  MEMORY[0x28223BE20](v46);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v47 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CA85A4(0, &qword_27CBA37C0, MEMORY[0x277D844C8]);
  v49 = v9;
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v40 - v11;
  v13 = type metadata accessor for BannerAdImpressionEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CA7BD8();
  v48 = v12;
  v18 = v50;
  sub_217D89E5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v45;
  v41 = v13;
  v50 = v16;
  v20 = v46;
  LOBYTE(v54) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v21 = v47;
  sub_217D89BCC();
  v22 = v50;
  (*(v44 + 32))(v50, v21, v6);
  LOBYTE(v54) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  sub_217D89BCC();
  v40[1] = v6;
  v47 = 0;
  v23 = v41;
  (*(v43 + 32))(&v22[v41[5]], v5, v20);
  LOBYTE(v51) = 2;
  sub_217A5867C();
  sub_217D89BCC();
  v40[0] = a1;
  v24 = *(&v54 + 1);
  v25 = &v22[v23[6]];
  *v25 = v54;
  *(v25 + 1) = v24;
  v59 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  v26 = &v22[v23[7]];
  v27 = v55;
  *v26 = v54;
  *(v26 + 1) = v27;
  *(v26 + 2) = v56;
  v26[48] = v57;
  v58 = 4;
  sub_217AD07F8();
  sub_217D89B5C();
  v28 = v53;
  v29 = &v22[v23[8]];
  v30 = v52;
  *v29 = v51;
  *(v29 + 1) = v30;
  *(v29 + 4) = v28;
  v58 = 5;
  sub_217BB5324();
  sub_217D89BCC();
  v22[v23[9]] = v51;
  v58 = 6;
  sub_217B3CE30();
  sub_217D89BCC();
  v31 = *(&v51 + 1);
  v32 = &v22[v23[10]];
  *v32 = v51;
  *(v32 + 1) = v31;
  v58 = 7;
  sub_217B95AC0();
  sub_217D89BCC();
  *&v50[v41[11]] = v51;
  v58 = 8;
  sub_217B3D088();
  sub_217D89B5C();
  v33 = BYTE4(v51);
  v34 = &v50[v41[12]];
  *v34 = v51;
  v34[4] = v33;
  v58 = 9;
  sub_217A5BD70();
  sub_217D89B5C();
  v50[v41[13]] = v51;
  v58 = 10;
  sub_217C60A7C();
  sub_217D89BCC();
  v35 = BYTE1(v51);
  v36 = BYTE2(v51);
  v37 = &v50[v41[14]];
  *v37 = v51;
  v37[1] = v35;
  v37[2] = v36;
  v58 = 11;
  sub_217B3D50C();
  sub_217D89B5C();
  (*(v19 + 8))(v48, v49);
  v38 = v50;
  v50[v41[15]] = v51;
  sub_217CA8608(v38, v42);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217CA866C(v38);
}

void sub_217CA85A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CA7BD8();
    v7 = a3(a1, &type metadata for BannerAdImpressionEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CA8608(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BannerAdImpressionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CA866C(uint64_t a1)
{
  v2 = type metadata accessor for BannerAdImpressionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217CA87A0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217CA6640(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217CA6640(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217CA6640(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_217CA6640(0, &qword_2811C87F8, sub_217BB5324, sub_217BB537C);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217CA6640(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217CA6640(0, &qword_2811C8838, sub_217B95AC0, sub_217B95B14);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217CA6640(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC);
  (*(*(v22 - 8) + 104))(a2 + v21, v13, v22);
  v23 = a1[13];
  sub_217CA6640(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  (*(*(v24 - 8) + 104))(a2 + v23, v13, v24);
  v25 = a1[14];
  sub_217CA6640(0, &qword_2811C87B0, sub_217C60A7C, sub_217C60AD4);
  (*(*(v26 - 8) + 104))(a2 + v25, v4, v26);
  v27 = a1[15];
  sub_217CA6640(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
  v29 = *(*(v28 - 8) + 104);

  return v29(a2 + v27, v13, v28);
}

void sub_217CA8D4C()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217CA6640(319, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
      if (v2 <= 0x3F)
      {
        sub_217CA6640(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
        if (v3 <= 0x3F)
        {
          sub_217CA6640(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
          if (v4 <= 0x3F)
          {
            sub_217CA6640(319, &qword_2811C87F8, sub_217BB5324, sub_217BB537C);
            if (v5 <= 0x3F)
            {
              sub_217CA6640(319, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
              if (v6 <= 0x3F)
              {
                sub_217CA6640(319, &qword_2811C8838, sub_217B95AC0, sub_217B95B14);
                if (v7 <= 0x3F)
                {
                  sub_217CA6640(319, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC);
                  if (v8 <= 0x3F)
                  {
                    sub_217CA6640(319, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
                    if (v9 <= 0x3F)
                    {
                      sub_217CA6640(319, &qword_2811C87B0, sub_217C60A7C, sub_217C60AD4);
                      if (v10 <= 0x3F)
                      {
                        sub_217CA6640(319, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
                        if (v11 <= 0x3F)
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
      }
    }
  }
}

void sub_217CA9118()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217D889CC();
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C7D70);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_27CB9FD60);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_27CB9FD68);
          if (v4 <= 0x3F)
          {
            sub_217A5E974(319, &qword_27CB9FD70);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_217CA928C()
{
  result = qword_27CBA37D8;
  if (!qword_27CBA37D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA37D8);
  }

  return result;
}

unint64_t sub_217CA92E4()
{
  result = qword_27CBA37E0;
  if (!qword_27CBA37E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA37E0);
  }

  return result;
}

unint64_t sub_217CA933C()
{
  result = qword_27CBA37E8;
  if (!qword_27CBA37E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA37E8);
  }

  return result;
}

uint64_t sub_217CA9390(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6144726573556461 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4465746174536461 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D6563616C506461 && a2 == 0xEF61746144746E65 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6144657A69536461 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x697469736F506461 && a2 == 0xEE00617461446E6FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6144646565466461 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x644172656E6E6162 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x4470756F72476461 && a2 == 0xEB00000000617461)
  {

    return 11;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

NewsAnalytics::SubscriptionStatus_optional __swiftcall SubscriptionStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SubscriptionStatus.rawValue.getter()
{
  v1 = 0x6269726373627573;
  if (*v0 != 1)
  {
    v1 = 0x6373627553746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217CA9850(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6269726373627573;
  v4 = 0xEA00000000006465;
  if (v2 != 1)
  {
    v3 = 0x6373627553746F6ELL;
    v4 = 0xED00006465626972;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6269726373627573;
  v8 = 0xEA00000000006465;
  if (*a2 != 1)
  {
    v7 = 0x6373627553746F6ELL;
    v8 = 0xED00006465626972;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217CA9978()
{
  result = qword_27CBA37F0;
  if (!qword_27CBA37F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA37F0);
  }

  return result;
}

uint64_t sub_217CA99CC()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CA9A80()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217CA9B20()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CA9BDC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEA00000000006465;
  v5 = 0x6269726373627573;
  if (v2 != 1)
  {
    v5 = 0x6373627553746F6ELL;
    v4 = 0xED00006465626972;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217CA9D0C()
{
  result = qword_2811C2E18;
  if (!qword_2811C2E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2E18);
  }

  return result;
}

NewsAnalytics::MediaPlayMethod_optional __swiftcall MediaPlayMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MediaPlayMethod.rawValue.getter()
{
  v1 = 0x79616C706F747561;
  if (*v0 != 1)
  {
    v1 = 0x7474754279616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217CA9E24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x79616C706F747561;
  if (v2 != 1)
  {
    v4 = 0x7474754279616C70;
    v3 = 0xEF73736572506E6FLL;
  }

  if (*a1)
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

  v7 = 0xE800000000000000;
  v8 = 0x79616C706F747561;
  if (*a2 != 1)
  {
    v8 = 0x7474754279616C70;
    v7 = 0xEF73736572506E6FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217CA9F44()
{
  result = qword_27CBA37F8;
  if (!qword_27CBA37F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA37F8);
  }

  return result;
}

uint64_t sub_217CA9F98()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CAA048()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217CAA0E4()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CAA19C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x79616C706F747561;
  if (v2 != 1)
  {
    v5 = 0x7474754279616C70;
    v4 = 0xEF73736572506E6FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217CAA2C8()
{
  result = qword_27CBA3800;
  if (!qword_27CBA3800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3800);
  }

  return result;
}

uint64_t JourneyTriggerInactiveErrorDetailData.triggerName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t JourneyTriggerInactiveErrorDetailData.triggerName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

unint64_t sub_217CAA3F4()
{
  if (*v0)
  {
    result = 0xD00000000000001ALL;
  }

  else
  {
    result = 0x4E72656767697274;
  }

  *v0;
  return result;
}

uint64_t sub_217CAA43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4E72656767697274 && a2 == 0xEB00000000656D61;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DD1D40 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

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

uint64_t sub_217CAA524(uint64_t a1)
{
  v2 = sub_217CAA73C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CAA560(uint64_t a1)
{
  v2 = sub_217CAA73C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JourneyTriggerInactiveErrorDetailData.encode(to:)(void *a1)
{
  sub_217CAA9EC(0, &qword_27CBA3808, MEMORY[0x277D84538]);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *v1;
  v10 = v1[1];
  v18 = *(v1 + 16);
  v11 = a1[3];
  v12 = a1[4];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v11);
  sub_217CAA73C();
  sub_217D89E7C();
  v21 = 0;
  sub_217D89C0C();
  if (!v2)
  {
    v20 = v18;
    v19 = 1;
    sub_217CAA790();
    sub_217D89C3C();
  }

  return (*(v5 + 8))(v8, v15);
}

unint64_t sub_217CAA73C()
{
  result = qword_27CBA3810;
  if (!qword_27CBA3810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3810);
  }

  return result;
}

unint64_t sub_217CAA790()
{
  result = qword_27CBA3818;
  if (!qword_27CBA3818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3818);
  }

  return result;
}

uint64_t JourneyTriggerInactiveErrorDetailData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217CAA9EC(0, &qword_27CBA3820, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CAA73C();
  sub_217D89E5C();
  if (!v2)
  {
    v21 = 0;
    v12 = sub_217D89B2C();
    v14 = v13;
    v15 = v12;
    v19 = 1;
    sub_217CAAA50();
    sub_217D89B5C();
    (*(v7 + 8))(v10, v6);
    v16 = v20;
    *a2 = v15;
    *(a2 + 8) = v14;
    *(a2 + 16) = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CAA9EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CAA73C();
    v7 = a3(a1, &type metadata for JourneyTriggerInactiveErrorDetailData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CAAA50()
{
  result = qword_27CBA3828;
  if (!qword_27CBA3828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3828);
  }

  return result;
}

uint64_t sub_217CAAADC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_217CAAB38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_217CAABB0()
{
  result = qword_27CBA3830;
  if (!qword_27CBA3830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3830);
  }

  return result;
}

unint64_t sub_217CAAC08()
{
  result = qword_27CBA3838;
  if (!qword_27CBA3838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3838);
  }

  return result;
}

unint64_t sub_217CAAC60()
{
  result = qword_27CBA3840;
  if (!qword_27CBA3840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3840);
  }

  return result;
}

uint64_t sub_217CAAD7C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3878);
  __swift_project_value_buffer(v0, qword_27CBA3878);
  return sub_217D8866C();
}

uint64_t SearchEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SearchEvent.searchData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchEvent(0) + 20);
  sub_217CAB2E0(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchEvent.searchData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchEvent(0) + 20);
  sub_217CAB2E0(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchEvent(0) + 24);
  sub_217CAB2E0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchEvent(0) + 24);
  sub_217CAB2E0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchEvent(0) + 28);
  sub_217CAB2E0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217CAB2E0(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t SearchEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchEvent(0) + 28);
  sub_217CAB2E0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SearchEvent(0);
  v5 = v4[5];
  sub_217CAB2E0(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217CAB2E0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217CAB2E0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t SearchEvent.Model.searchData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SearchEvent.Model(0) + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
}

uint64_t SearchEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchEvent.Model(0) + 24));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t SearchEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 SearchEvent.Model.init(eventData:searchData:userBundleSubscriptionContextData:viewData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 16);
  v11 = a2[3];
  v12 = *a4;
  v13 = a4[1];
  v14 = *(a4 + 8);
  v15 = sub_217D8899C();
  (*(*(v15 - 8) + 32))(a5, a1, v15);
  v16 = type metadata accessor for SearchEvent.Model(0);
  v17 = a5 + v16[5];
  *v17 = v8;
  *(v17 + 8) = v9;
  *(v17 + 16) = v10;
  *(v17 + 24) = v11;
  v18 = a5 + v16[6];
  v19 = *(a3 + 16);
  *v18 = *a3;
  *(v18 + 16) = v19;
  result = *(a3 + 32);
  *(v18 + 32) = result;
  *(v18 + 48) = *(a3 + 48);
  v21 = a5 + v16[7];
  *v21 = v12;
  *(v21 + 8) = v13;
  *(v21 + 16) = v14;
  return result;
}

unint64_t sub_217CAB87C()
{
  v1 = 0x746144746E657665;
  v2 = 0xD000000000000021;
  if (*v0 != 2)
  {
    v2 = 0x6174614477656976;
  }

  if (*v0)
  {
    v1 = 0x6144686372616573;
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

uint64_t sub_217CAB904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217CAC970(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217CAB92C(uint64_t a1)
{
  v2 = sub_217CABD38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CAB968(uint64_t a1)
{
  v2 = sub_217CABD38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CAC240(0, &qword_27CBA3890, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v25[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CABD38();
  sub_217D89E7C();
  LOBYTE(v36[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for SearchEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[1];
    v15 = *(v13 + 16);
    v16 = v13[3];
    v39 = *v13;
    v40 = v14;
    v41 = v15;
    v42 = v16;
    v38 = 1;
    sub_217B23A38();

    sub_217D89CAC();

    v17 = (v3 + v12[6]);
    v18 = v17[1];
    v36[0] = *v17;
    v36[1] = v18;
    v20 = *v17;
    v19 = v17[1];
    v36[2] = v17[2];
    v37 = *(v17 + 48);
    v32 = v20;
    v33 = v19;
    v34 = v17[2];
    v35 = *(v17 + 48);
    v31 = 2;
    sub_217ACC004(v36, v29);
    sub_217A55B98();
    sub_217D89CAC();
    v29[0] = v32;
    v29[1] = v33;
    v29[2] = v34;
    v30 = v35;
    sub_217ACC69C(v29);
    v22 = (v3 + v12[7]);
    v23 = *v22;
    v24 = v22[1];
    LOWORD(v22) = *(v22 + 8);
    v26 = v23;
    v27 = v24;
    v28 = v22;
    v25[7] = 3;
    sub_217A5E790();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217CABD38()
{
  result = qword_27CBA3898;
  if (!qword_27CBA3898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3898);
  }

  return result;
}

uint64_t SearchEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_217D8899C();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CAC240(0, &qword_27CBA38A0, MEMORY[0x277D844C8]);
  v8 = *(v7 - 8);
  v35 = v7;
  v36 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = type metadata accessor for SearchEvent.Model(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CABD38();
  v37 = v11;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = a1;
  v17 = v15;
  v18 = v33;
  LOBYTE(v41) = 0;
  sub_217A602A0(&qword_2811C8408);
  v19 = v34;
  v20 = v35;
  sub_217D89BCC();
  (*(v18 + 32))(v17, v19, v4);
  LOBYTE(v38) = 1;
  sub_217B23D2C();
  sub_217D89BCC();
  v21 = *(&v41 + 1);
  v22 = v42;
  v23 = *(&v42 + 1);
  v24 = v17 + v12[5];
  *v24 = v41;
  *(v24 + 8) = v21;
  *(v24 + 16) = v22;
  *(v24 + 24) = v23;
  v46 = 2;
  sub_217A54D08();
  sub_217D89BCC();
  v25 = v17 + v12[6];
  v26 = v42;
  *v25 = v41;
  *(v25 + 16) = v26;
  *(v25 + 32) = v43;
  *(v25 + 48) = v44;
  v45 = 3;
  sub_217A5E738();
  sub_217D89BCC();
  (*(v36 + 8))(v37, v20);
  v27 = v39;
  v28 = v40;
  v29 = v17 + v12[7];
  *v29 = v38;
  *(v29 + 8) = v27;
  *(v29 + 16) = v28;
  sub_217CAC2A4(v17, v32);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_217CAC308(v17);
}

void sub_217CAC240(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CABD38();
    v7 = a3(a1, &type metadata for SearchEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CAC2A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CAC308(uint64_t a1)
{
  v2 = type metadata accessor for SearchEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217CAC43C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217CAB2E0(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217CAB2E0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217CAB2E0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_217CAC64C()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217CAB2E0(319, &qword_2811C8810, sub_217B23D2C, sub_217B23A38);
    if (v1 <= 0x3F)
    {
      sub_217CAB2E0(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
      if (v2 <= 0x3F)
      {
        sub_217CAB2E0(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_217CAC7D0()
{
  result = sub_217D8899C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217CAC86C()
{
  result = qword_27CBA38C8;
  if (!qword_27CBA38C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA38C8);
  }

  return result;
}

unint64_t sub_217CAC8C4()
{
  result = qword_27CBA38D0;
  if (!qword_27CBA38D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA38D0);
  }

  return result;
}

unint64_t sub_217CAC91C()
{
  result = qword_27CBA38D8;
  if (!qword_27CBA38D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA38D8);
  }

  return result;
}

uint64_t sub_217CAC970(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144686372616573 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t sub_217CACBB4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3910);
  __swift_project_value_buffer(v0, qword_27CBA3910);
  return sub_217D8866C();
}

uint64_t SubscribeButtonTapEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SubscribeButtonTapEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 20);
  sub_217CAE3A8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 20);
  sub_217CAE3A8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 24);
  sub_217CAE3A8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 24);
  sub_217CAE3A8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 28);
  sub_217CAE3A8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 28);
  sub_217CAE3A8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 32);
  sub_217CAE3A8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 32);
  sub_217CAE3A8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 36);
  sub_217CAE3A8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 36);
  sub_217CAE3A8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 40);
  sub_217CAE3A8(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 40);
  sub_217CAE3A8(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 44);
  sub_217CAE3A8(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 44);
  sub_217CAE3A8(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.purchaseSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 48);
  sub_217CAE3A8(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.purchaseSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 48);
  sub_217CAE3A8(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.paywallData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 52);
  sub_217CAE3A8(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.paywallData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 52);
  sub_217CAE3A8(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 56);
  sub_217CAE3A8(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 56);
  sub_217CAE3A8(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.subscribeButtonContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 60);
  sub_217CAE3A8(0, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.subscribeButtonContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 60);
  sub_217CAE3A8(0, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 64);
  sub_217CAE3A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 64);
  sub_217CAE3A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.puzzleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 68);
  sub_217CAE3A8(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.puzzleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 68);
  sub_217CAE3A8(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 72);
  sub_217CAE3A8(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217CAE3A8(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t SubscribeButtonTapEvent.recipeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 72);
  sub_217CAE3A8(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SubscribeButtonTapEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217CAE3A8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217CAE3A8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  sub_217CAE3A8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  sub_217CAE3A8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v13 - 8) + 104))(a1 + v12, v6, v13);
  v14 = v4[9];
  sub_217CAE3A8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v15 - 8) + 104))(a1 + v14, v6, v15);
  v16 = v4[10];
  sub_217CAE3A8(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  (*(*(v17 - 8) + 104))(a1 + v16, v6, v17);
  v18 = v4[11];
  sub_217CAE3A8(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  (*(*(v19 - 8) + 104))(a1 + v18, v6, v19);
  v20 = v4[12];
  sub_217CAE3A8(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  (*(*(v21 - 8) + 104))(a1 + v20, v6, v21);
  v22 = v4[13];
  sub_217CAE3A8(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  (*(*(v23 - 8) + 104))(a1 + v22, v6, v23);
  v24 = v4[14];
  sub_217CAE3A8(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v25 - 8) + 104))(a1 + v24, v6, v25);
  v26 = v4[15];
  sub_217CAE3A8(0, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58);
  (*(*(v27 - 8) + 104))(a1 + v26, v2, v27);
  v28 = v4[16];
  sub_217CAE3A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v29 - 8) + 104))(a1 + v28, v2, v29);
  v30 = v4[17];
  sub_217CAE3A8(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  (*(*(v31 - 8) + 104))(a1 + v30, v6, v31);
  v32 = v4[18];
  sub_217CAE3A8(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v34 = *(*(v33 - 8) + 104);

  return v34(a1 + v32, v6, v33);
}

uint64_t SubscribeButtonTapEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 20);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AE38AC(v17, v16, &qword_2811C7DB8);
}

uint64_t SubscribeButtonTapEvent.Model.channelData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  return sub_217AD86BC(v4, v5);
}

uint64_t SubscribeButtonTapEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t SubscribeButtonTapEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 32));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AE38AC(v17, &v16, &qword_2811BD178);
}

uint64_t SubscribeButtonTapEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t SubscribeButtonTapEvent.Model.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 40);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
}

uint64_t SubscribeButtonTapEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t SubscribeButtonTapEvent.Model.purchaseSessionData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 48));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SubscribeButtonTapEvent.Model.paywallData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for SubscribeButtonTapEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t SubscribeButtonTapEvent.Model.issueData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 56));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_217AE39D0(v4, v5);
}

uint64_t SubscribeButtonTapEvent.Model.subscribeButtonContextData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for SubscribeButtonTapEvent.Model(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t SubscribeButtonTapEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 64);
  v4 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v4;
  v9 = *(v3 + 32);
  v5 = v9;
  LOBYTE(v3) = *(v3 + 48);
  v10 = v3;
  *a1 = v8[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v3;
  return sub_217ACC004(v8, v7);
}

uint64_t SubscribeButtonTapEvent.Model.puzzleData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 68));
  v4 = v3[4];
  v14 = v3[3];
  v5 = v14;
  v15 = v4;
  v6 = v3[2];
  v12 = v3[1];
  v7 = v12;
  v13 = v6;
  v11 = *v3;
  v8 = v11;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v4;
  *a1 = v8;
  a1[1] = v7;
  return sub_217AE38AC(&v11, &v10, &qword_27CB9F6A0);
}

uint64_t SubscribeButtonTapEvent.Model.recipeData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 72));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  return sub_217AD86BC(v4, v5);
}

__n128 SubscribeButtonTapEvent.Model.init(eventData:articleData:channelData:feedData:groupData:viewData:sectionData:purchaseData:purchaseSessionData:paywallData:issueData:subscribeButtonContextData:userBundleSubscriptionContextData:puzzleData:recipeData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, uint64_t *a6@<X5>, __int128 *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, __int16 *a11, __int128 *a12, __int16 *a13, uint64_t a14, _OWORD *a15, uint64_t a16)
{
  v21 = *(a3 + 4);
  v51 = *a4;
  v50 = *(a4 + 2);
  v56 = *a6;
  v55 = a6[1];
  v54 = *(a6 + 8);
  v59 = *a7;
  v58 = *(a7 + 2);
  v57 = *(a7 + 24);
  v62 = *a8;
  v61 = a8[1];
  v60 = *(a8 + 16);
  v63 = a10[1];
  v64 = *a10;
  v65 = *a11;
  v66 = *a13;
  v69 = *(a16 + 32);
  v22 = sub_217D8899C();
  v67 = *(a16 + 16);
  v68 = *a16;
  v52 = a12[1];
  v53 = *a12;
  v48 = a3[1];
  v49 = *a3;
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v23 = type metadata accessor for SubscribeButtonTapEvent.Model(0);
  v24 = a9 + v23[5];
  v25 = *(a2 + 48);
  *(v24 + 32) = *(a2 + 32);
  *(v24 + 48) = v25;
  v26 = *(a2 + 16);
  *v24 = *a2;
  *(v24 + 16) = v26;
  *(v24 + 127) = *(a2 + 127);
  v27 = *(a2 + 112);
  *(v24 + 96) = *(a2 + 96);
  *(v24 + 112) = v27;
  v28 = *(a2 + 80);
  *(v24 + 64) = *(a2 + 64);
  *(v24 + 80) = v28;
  v29 = a9 + v23[6];
  *v29 = v49;
  *(v29 + 16) = v48;
  *(v29 + 32) = v21;
  v30 = a9 + v23[7];
  *v30 = v51;
  *(v30 + 16) = v50;
  v31 = (a9 + v23[8]);
  v32 = a5[7];
  v31[6] = a5[6];
  v31[7] = v32;
  v31[8] = a5[8];
  v33 = a5[3];
  v31[2] = a5[2];
  v31[3] = v33;
  v34 = a5[5];
  v31[4] = a5[4];
  v31[5] = v34;
  v35 = a5[1];
  *v31 = *a5;
  v31[1] = v35;
  v36 = a9 + v23[9];
  *v36 = v56;
  *(v36 + 8) = v55;
  *(v36 + 16) = v54;
  v37 = a9 + v23[10];
  *v37 = v59;
  *(v37 + 16) = v58;
  *(v37 + 24) = v57;
  v38 = a9 + v23[11];
  *v38 = v62;
  *(v38 + 8) = v61;
  *(v38 + 16) = v60;
  v39 = (a9 + v23[12]);
  *v39 = v64;
  v39[1] = v63;
  *(a9 + v23[13]) = v65;
  v40 = (a9 + v23[14]);
  *v40 = v53;
  v40[1] = v52;
  *(a9 + v23[15]) = v66;
  v41 = a9 + v23[16];
  *(v41 + 48) = *(a14 + 48);
  v42 = *(a14 + 32);
  *(v41 + 16) = *(a14 + 16);
  *(v41 + 32) = v42;
  *v41 = *a14;
  v43 = (a9 + v23[17]);
  v44 = a15[4];
  v43[3] = a15[3];
  v43[4] = v44;
  v45 = a15[2];
  v43[1] = a15[1];
  v43[2] = v45;
  *v43 = *a15;
  v46 = a9 + v23[18];
  result = v68;
  *v46 = v68;
  *(v46 + 16) = v67;
  *(v46 + 32) = v69;
  return result;
}

uint64_t sub_217CAF448(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      return 0x44656C6369747261;
    case 2:
      v4 = 0x656E6E616863;
      return v4 & 0xFFFFFFFFFFFFLL | 0x446C000000000000;
    case 3:
      v5 = 1684366694;
      return v5 | 0x6174614400000000;
    case 4:
      return 0x74614470756F7267;
    case 5:
      v5 = 2003134838;
      return v5 | 0x6174614400000000;
    case 6:
      return 0x446E6F6974636573;
    case 7:
      return 0x6573616863727570;
    case 8:
      return 0xD000000000000013;
    case 9:
      v4 = 0x6C6177796170;
      return v4 & 0xFFFFFFFFFFFFLL | 0x446C000000000000;
    case 10:
      return 0x7461446575737369;
    case 11:
      return 0xD00000000000001ALL;
    case 12:
      return 0xD000000000000021;
    case 13:
      v3 = 0x656C7A7A7570;
      goto LABEL_15;
    case 14:
      v3 = 0x657069636572;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217CAF5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217CB1FE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217CAF608(uint64_t a1)
{
  v2 = sub_217CB00DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CAF644(uint64_t a1)
{
  v2 = sub_217CB00DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscribeButtonTapEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CB0E2C(0, &qword_27CBA3928, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v70 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CB00DC();
  sub_217D89E7C();
  v141 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (v2)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v142 = v7;
  v13 = type metadata accessor for SubscribeButtonTapEvent.Model(0);
  v70 = v3;
  v71 = v13;
  v14 = v3 + *(v13 + 20);
  v15 = *(v14 + 96);
  v16 = *(v14 + 64);
  v138 = *(v14 + 80);
  v139 = v15;
  v17 = *(v14 + 96);
  *v140 = *(v14 + 112);
  v18 = *(v14 + 16);
  v19 = *(v14 + 48);
  v135 = *(v14 + 32);
  v136 = v19;
  v20 = *(v14 + 48);
  v137 = *(v14 + 64);
  v21 = *(v14 + 16);
  v134[0] = *v14;
  v134[1] = v21;
  v131 = v138;
  v132 = v17;
  v133[0] = *(v14 + 112);
  v128 = v135;
  v129 = v20;
  v130 = v16;
  *&v140[15] = *(v14 + 127);
  *(v133 + 15) = *(v14 + 127);
  v126 = v134[0];
  v127 = v18;
  v125 = 1;
  sub_217AE38AC(v134, &v110, &qword_2811C7DB8);
  sub_217ACF52C();
  sub_217D89C3C();
  v123[5] = v131;
  v123[6] = v132;
  *v124 = v133[0];
  *&v124[15] = *(v133 + 15);
  v123[2] = v128;
  v123[3] = v129;
  v123[4] = v130;
  v123[0] = v126;
  v123[1] = v127;
  sub_217AE4A44(v123, &qword_2811C7DB8);
  v22 = v70;
  v23 = (v70 + v71[6]);
  v24 = v23[1];
  v25 = v23[2];
  v26 = v23[3];
  v27 = v23[4];
  *&v110 = *v23;
  *(&v110 + 1) = v24;
  *&v111 = v25;
  *(&v111 + 1) = v26;
  *&v112 = v27;
  LOBYTE(v101) = 2;
  sub_217AD86BC(v110, v24);
  sub_217AD084C();
  sub_217D89C3C();
  sub_217AD96A4(v110, *(&v110 + 1));
  v28 = (v22 + v71[7]);
  v29 = v28[1];
  v30 = v28[2];
  v120 = *v28;
  v121 = v29;
  v122 = v30;
  v119 = 3;
  sub_217AD1A68(v120, v29, v30);
  sub_217A5BA2C();
  sub_217D89C3C();
  sub_217AD290C(v120, v121, v122);
  v31 = (v22 + v71[8]);
  v32 = v31[6];
  v33 = v31[4];
  v115 = v31[5];
  v116 = v32;
  v34 = v31[6];
  v35 = v31[8];
  v117 = v31[7];
  v118 = v35;
  v36 = v31[2];
  v37 = *v31;
  v111 = v31[1];
  v112 = v36;
  v38 = v31[2];
  v39 = v31[4];
  v113 = v31[3];
  v114 = v39;
  v40 = *v31;
  v107 = v34;
  v108 = v117;
  v109 = v31[8];
  v110 = v40;
  v103 = v38;
  v104 = v113;
  v105 = v33;
  v106 = v115;
  v101 = v37;
  v102 = v111;
  v100 = 4;
  sub_217AE38AC(&v110, v99, &qword_2811BD178);
  sub_217A5D3B4();
  sub_217D89C3C();
  v99[6] = v107;
  v99[7] = v108;
  v99[8] = v109;
  v99[2] = v103;
  v99[3] = v104;
  v99[4] = v105;
  v99[5] = v106;
  v99[0] = v101;
  v99[1] = v102;
  sub_217AE4A44(v99, &qword_2811BD178);
  v41 = (v22 + v71[9]);
  v42 = *v41;
  v43 = v41[1];
  LOWORD(v41) = *(v41 + 8);
  *&v87[0] = v42;
  *(&v87[0] + 1) = v43;
  LOWORD(v87[1]) = v41;
  LOBYTE(v80) = 5;
  sub_217A5E790();

  sub_217D89C3C();

  v44 = v22 + v71[10];
  v45 = *(v44 + 24);
  *&v87[0] = *v44;
  *(v87 + 8) = *(v44 + 8);
  BYTE8(v87[1]) = v45;
  LOBYTE(v80) = 6;
  sub_217B17644();

  sub_217D89C3C();

  v46 = (v22 + v71[11]);
  v47 = *v46;
  v48 = v46[1];
  LOBYTE(v46) = *(v46 + 16);
  *&v87[0] = v47;
  *(&v87[0] + 1) = v48;
  LOBYTE(v87[1]) = v46;
  LOBYTE(v80) = 7;
  sub_217AFF378();

  sub_217D89C3C();

  v49 = (v22 + v71[12]);
  v50 = v49[1];
  *&v87[0] = *v49;
  *(&v87[0] + 1) = v50;
  LOBYTE(v80) = 8;
  sub_217B1E4A0();

  sub_217D89C3C();

  LOWORD(v87[0]) = *(v22 + v71[13]);
  LOBYTE(v80) = 9;
  sub_217B1DEE8();
  sub_217D89C3C();
  v51 = (v22 + v71[14]);
  v52 = v51[1];
  v53 = v51[2];
  v54 = v51[3];
  *&v87[0] = *v51;
  *(&v87[0] + 1) = v52;
  *&v87[1] = v53;
  *(&v87[1] + 1) = v54;
  LOBYTE(v80) = 10;
  sub_217AE39D0(*&v87[0], v52);
  sub_217ACFF94();
  sub_217D89C3C();
  sub_217AE4AA0(*&v87[0], *(&v87[0] + 1));
  v98 = *(v70 + v71[15]);
  v97 = 11;
  sub_217B1EA58();
  sub_217D89CAC();
  v55 = (v70 + v71[16]);
  v56 = v55[1];
  v95[0] = *v55;
  v95[1] = v56;
  v58 = *v55;
  v57 = v55[1];
  v95[2] = v55[2];
  v96 = *(v55 + 48);
  v91 = v58;
  v92 = v57;
  v93 = v55[2];
  v94 = *(v55 + 48);
  v90 = 12;
  sub_217ACC004(v95, v87);
  sub_217A55B98();
  sub_217D89CAC();
  v85[0] = v91;
  v85[1] = v92;
  v85[2] = v93;
  v86 = v94;
  sub_217ACC69C(v85);
  v59 = (v70 + v71[17]);
  v60 = v59[4];
  v61 = v59[1];
  v62 = v59[2];
  v88 = v59[3];
  v89 = v60;
  v63 = *v59;
  v64 = *v59;
  v87[1] = v59[1];
  v87[2] = v62;
  v87[0] = v63;
  v82 = v62;
  v83 = v88;
  v84 = v59[4];
  v80 = v64;
  v81 = v61;
  v79 = 13;
  sub_217AE38AC(v87, v78, &qword_27CB9F6A0);
  sub_217AD6D08();
  sub_217D89C3C();
  v78[2] = v82;
  v78[3] = v83;
  v78[4] = v84;
  v78[0] = v80;
  v78[1] = v81;
  sub_217AE4A44(v78, &qword_27CB9F6A0);
  v65 = (v70 + v71[18]);
  v66 = v65[1];
  v67 = v65[2];
  v68 = v65[3];
  v69 = v65[4];
  v73 = *v65;
  v74 = v66;
  v75 = v67;
  v76 = v68;
  v77 = v69;
  v72 = 14;
  sub_217AD86BC(v73, v66);
  sub_217B1F08C();
  sub_217D89C3C();
  sub_217AD96A4(v73, v74);
  return (*(v142 + 8))(v10, v6);
}

unint64_t sub_217CB00DC()
{
  result = qword_27CBA3930;
  if (!qword_27CBA3930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3930);
  }

  return result;
}

uint64_t SubscribeButtonTapEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v4 = sub_217D8899C();
  v56 = *(v4 - 8);
  v5 = *(v56 + 64);
  MEMORY[0x28223BE20](v4);
  v60 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CB0E2C(0, &qword_27CBA3938, MEMORY[0x277D844C8]);
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v53 - v9;
  v11 = type metadata accessor for SubscribeButtonTapEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v96 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_217CB00DC();
  v61 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v96);
  }

  v17 = v57;
  v54 = v11;
  v55 = v14;
  LOBYTE(v87) = 0;
  sub_217A602A0(&qword_2811C8408);
  sub_217D89BCC();
  v18 = v55;
  (*(v56 + 32))(v55, v60, v4);
  v78 = 1;
  sub_217ACF4D8();
  sub_217D89B5C();
  v53 = v4;
  v60 = 0;
  v19 = &v18[v54[5]];
  v20 = v84;
  v21 = *v86;
  *(v19 + 6) = v85;
  *(v19 + 7) = v21;
  *(v19 + 127) = *&v86[15];
  v22 = v80;
  v23 = v82;
  *(v19 + 2) = v81;
  *(v19 + 3) = v23;
  *(v19 + 4) = v83;
  *(v19 + 5) = v20;
  *v19 = v79;
  *(v19 + 1) = v22;
  LOBYTE(v67) = 2;
  sub_217AD07F8();
  sub_217D89B5C();
  v24 = v89;
  v25 = &v18[v54[6]];
  v26 = v88;
  *v25 = v87;
  *(v25 + 1) = v26;
  *(v25 + 4) = v24;
  LOBYTE(v67) = 3;
  sub_217A5B978();
  sub_217D89B5C();
  v27 = v88;
  v28 = &v18[v54[7]];
  *v28 = v87;
  *(v28 + 2) = v27;
  v77 = 4;
  sub_217A5D308();
  sub_217D89B5C();
  v29 = &v18[v54[8]];
  v30 = v94;
  *(v29 + 6) = v93;
  *(v29 + 7) = v30;
  *(v29 + 8) = v95;
  v31 = v90;
  *(v29 + 2) = v89;
  *(v29 + 3) = v31;
  v32 = v92;
  *(v29 + 4) = v91;
  *(v29 + 5) = v32;
  v33 = v88;
  *v29 = v87;
  *(v29 + 1) = v33;
  LOBYTE(v73) = 5;
  sub_217A5E738();
  sub_217D89B5C();
  v34 = v68;
  v35 = &v18[v54[9]];
  *v35 = v67;
  *(v35 + 8) = v34;
  LOBYTE(v73) = 6;
  sub_217B175F0();
  sub_217D89B5C();
  v36 = v68;
  v37 = BYTE8(v68);
  v38 = &v18[v54[10]];
  *v38 = v67;
  *(v38 + 2) = v36;
  v38[24] = v37;
  LOBYTE(v73) = 7;
  sub_217AFF324();
  sub_217D89B5C();
  v39 = v68;
  v40 = &v55[v54[11]];
  *v40 = v67;
  v40[16] = v39;
  LOBYTE(v73) = 8;
  sub_217B1E44C();
  sub_217D89B5C();
  *&v55[v54[12]] = v67;
  LOBYTE(v73) = 9;
  sub_217B1DE94();
  sub_217D89B5C();
  *&v55[v54[13]] = v67;
  LOBYTE(v73) = 10;
  sub_217ACFF40();
  sub_217D89B5C();
  v41 = &v55[v54[14]];
  v42 = v68;
  *v41 = v67;
  *(v41 + 1) = v42;
  LOBYTE(v73) = 11;
  sub_217B1EA04();
  sub_217D89BCC();
  *&v55[v54[15]] = v67;
  v72 = 12;
  sub_217A54D08();
  sub_217D89BCC();
  v43 = &v55[v54[16]];
  v44 = v74;
  *v43 = v73;
  *(v43 + 1) = v44;
  *(v43 + 2) = v75;
  v43[48] = v76;
  v66 = 13;
  sub_217AD6CB4();
  sub_217D89B5C();
  v45 = &v55[v54[17]];
  v46 = v70;
  *(v45 + 2) = v69;
  *(v45 + 3) = v46;
  *(v45 + 4) = v71;
  v47 = v68;
  *v45 = v67;
  *(v45 + 1) = v47;
  v62 = 14;
  sub_217B1F038();
  sub_217D89B5C();
  (*(v58 + 8))(v61, v59);
  v48 = v65;
  v49 = v55;
  v50 = &v55[v54[18]];
  v51 = v64;
  *v50 = v63;
  *(v50 + 1) = v51;
  *(v50 + 4) = v48;
  sub_217CB0E90(v49, v17);
  __swift_destroy_boxed_opaque_existential_1(v96);
  return sub_217CB0EF4(v49);
}

void sub_217CB0E2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CB00DC();
    v7 = a3(a1, &type metadata for SubscribeButtonTapEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CB0E90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscribeButtonTapEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CB0EF4(uint64_t a1)
{
  v2 = type metadata accessor for SubscribeButtonTapEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217CB1028@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = *MEMORY[0x277CEACF0];
  sub_217CAE3A8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  sub_217CAE3A8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  sub_217CAE3A8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v12 - 8) + 104))(a2 + v11, v7, v12);
  v13 = a1[8];
  sub_217CAE3A8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v14 - 8) + 104))(a2 + v13, v7, v14);
  v15 = a1[9];
  sub_217CAE3A8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v16 - 8) + 104))(a2 + v15, v7, v16);
  v17 = a1[10];
  sub_217CAE3A8(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  (*(*(v18 - 8) + 104))(a2 + v17, v7, v18);
  v19 = a1[11];
  sub_217CAE3A8(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  (*(*(v20 - 8) + 104))(a2 + v19, v7, v20);
  v21 = a1[12];
  sub_217CAE3A8(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  (*(*(v22 - 8) + 104))(a2 + v21, v7, v22);
  v23 = a1[13];
  sub_217CAE3A8(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  (*(*(v24 - 8) + 104))(a2 + v23, v7, v24);
  v25 = a1[14];
  sub_217CAE3A8(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v26 - 8) + 104))(a2 + v25, v7, v26);
  v27 = a1[15];
  sub_217CAE3A8(0, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58);
  (*(*(v28 - 8) + 104))(a2 + v27, v4, v28);
  v29 = a1[16];
  sub_217CAE3A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v30 - 8) + 104))(a2 + v29, v4, v30);
  v31 = a1[17];
  sub_217CAE3A8(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  (*(*(v32 - 8) + 104))(a2 + v31, v7, v32);
  v33 = a1[18];
  sub_217CAE3A8(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v35 = *(*(v34 - 8) + 104);

  return v35(a2 + v33, v7, v34);
}

void sub_217CB1774()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217CAE3A8(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
    if (v1 <= 0x3F)
    {
      sub_217CAE3A8(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
      if (v2 <= 0x3F)
      {
        sub_217CAE3A8(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
        if (v3 <= 0x3F)
        {
          sub_217CAE3A8(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
          if (v4 <= 0x3F)
          {
            sub_217CAE3A8(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
            if (v5 <= 0x3F)
            {
              sub_217CAE3A8(319, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
              if (v6 <= 0x3F)
              {
                sub_217CAE3A8(319, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
                if (v7 <= 0x3F)
                {
                  sub_217CAE3A8(319, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
                  if (v8 <= 0x3F)
                  {
                    sub_217CAE3A8(319, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
                    if (v9 <= 0x3F)
                    {
                      sub_217CAE3A8(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
                      if (v10 <= 0x3F)
                      {
                        sub_217CAE3A8(319, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58);
                        if (v11 <= 0x3F)
                        {
                          sub_217CAE3A8(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                          if (v12 <= 0x3F)
                          {
                            sub_217CAE3A8(319, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
                            if (v13 <= 0x3F)
                            {
                              sub_217CAE3A8(319, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
                              if (v14 <= 0x3F)
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
            }
          }
        }
      }
    }
  }
}

void sub_217CB1C68()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811C7DB8);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C7D70);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD308);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD178);
          if (v4 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811BD200);
            if (v5 <= 0x3F)
            {
              sub_217A5E974(319, &qword_2811C7C80);
              if (v6 <= 0x3F)
              {
                sub_217A5E974(319, &qword_27CB9F108);
                if (v7 <= 0x3F)
                {
                  sub_217A5E974(319, &qword_27CB9F7C8);
                  if (v8 <= 0x3F)
                  {
                    sub_217A5E974(319, &qword_2811C7CF8);
                    if (v9 <= 0x3F)
                    {
                      sub_217A5E974(319, &qword_2811BD110);
                      if (v10 <= 0x3F)
                      {
                        sub_217A5E974(319, &qword_27CB9F6A0);
                        if (v11 <= 0x3F)
                        {
                          sub_217A5E974(319, &qword_2811C7EF8);
                          if (v12 <= 0x3F)
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
        }
      }
    }
  }
}

unint64_t sub_217CB1EE0()
{
  result = qword_27CBA3940;
  if (!qword_27CBA3940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3940);
  }

  return result;
}

unint64_t sub_217CB1F38()
{
  result = qword_27CBA3948;
  if (!qword_27CBA3948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3948);
  }

  return result;
}

unint64_t sub_217CB1F90()
{
  result = qword_27CBA3950;
  if (!qword_27CBA3950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3950);
  }

  return result;
}

uint64_t sub_217CB1FE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCD9D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x446C6C6177796170 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCD9F0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6144656C7A7A7570 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6144657069636572 && a2 == 0xEA00000000006174)
  {

    return 14;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_217CB24AC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

NewsAnalytics::AdEngagementType_optional __swiftcall AdEngagementType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AdEngagementType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x696B536F65646976;
  if (v1 != 5)
  {
    v3 = 0x6974737265746E69;
  }

  v4 = 0x7561506F65646976;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x615472656E6E6162;
  if (v1 != 1)
  {
    v5 = 0x616C506F65646976;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_217CB2628()
{
  result = qword_27CBA3958;
  if (!qword_27CBA3958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3958);
  }

  return result;
}

uint64_t sub_217CB2688()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

void sub_217CB27CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0x696B536F65646976;
  v6 = 0xE900000000000070;
  if (v2 != 5)
  {
    v5 = 0x6974737265746E69;
    v6 = 0xEF7061546C616974;
  }

  v7 = 0xEA00000000006573;
  v8 = 0x7561506F65646976;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x8000000217DCBA70;
  }

  if (*v1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x615472656E6E6162;
  v10 = 0xE900000000000070;
  if (v2 != 1)
  {
    v9 = 0x616C506F65646976;
    v10 = 0xE900000000000079;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v5;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v6;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_217CB298C()
{
  result = qword_27CBA3960;
  if (!qword_27CBA3960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3960);
  }

  return result;
}

uint64_t sub_217CB2AA8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C1348);
  __swift_project_value_buffer(v0, qword_2811C1348);
  return sub_217D8866C();
}

uint64_t FeedGroupLayoutEvent2.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FeedGroupLayoutEvent2.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent2(0) + 20);
  sub_217A60740(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGroupLayoutEvent2.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent2(0) + 20);
  sub_217A60740(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutEvent2.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent2(0) + 24);
  sub_217A60740(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGroupLayoutEvent2.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent2(0) + 24);
  sub_217A60740(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutEvent2.feedGroupLayoutData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent2(0) + 28);
  sub_217A60740(0, &qword_2811C8618, sub_217A63908, sub_217A63994);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGroupLayoutEvent2.feedGroupLayoutData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent2(0) + 28);
  sub_217A60740(0, &qword_2811C8618, sub_217A63908, sub_217A63994);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutEvent2.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent2(0) + 32);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutEvent2.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent2(0) + 36);
  sub_217A60740(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGroupLayoutEvent2.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent2(0) + 36);
  sub_217A60740(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutEvent2.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for FeedGroupLayoutEvent2(0);
  v5 = v4[5];
  sub_217A60740(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A60740(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217A60740(0, &qword_2811C8618, sub_217A63908, sub_217A63994);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217A608E0();
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217A60740(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v2, v15);
}

uint64_t FeedGroupLayoutEvent2.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedGroupLayoutEvent2.Model(0) + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t FeedGroupLayoutEvent2.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedGroupLayoutEvent2.Model(0) + 24));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AF7618(v17, &v16);
}

uint64_t FeedGroupLayoutEvent2.Model.feedGroupLayoutData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FeedGroupLayoutEvent2.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t sub_217CB37C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 32);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t FeedGroupLayoutEvent2.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedGroupLayoutEvent2.Model(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t FeedGroupLayoutEvent2.Model.init(eventData:feedData:groupData:feedGroupLayoutData:timedData:viewData:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, _OWORD *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a2;
  v12 = *(a2 + 1);
  v11 = *(a2 + 2);
  v13 = *a4;
  v14 = *a6;
  v15 = a6[1];
  v16 = *(a6 + 8);
  v17 = sub_217D8899C();
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = type metadata accessor for FeedGroupLayoutEvent2.Model(0);
  v19 = a7 + v18[5];
  *v19 = v10;
  *(v19 + 8) = v12;
  *(v19 + 16) = v11;
  v20 = (a7 + v18[6]);
  v21 = a3[7];
  v20[6] = a3[6];
  v20[7] = v21;
  v20[8] = a3[8];
  v22 = a3[3];
  v20[2] = a3[2];
  v20[3] = v22;
  v23 = a3[5];
  v20[4] = a3[4];
  v20[5] = v23;
  v24 = a3[1];
  *v20 = *a3;
  v20[1] = v24;
  *(a7 + v18[7]) = v13;
  v25 = v18[8];
  v26 = sub_217D889CC();
  result = (*(*(v26 - 8) + 32))(a7 + v25, a5, v26);
  v28 = a7 + v18[9];
  *v28 = v14;
  *(v28 + 8) = v15;
  *(v28 + 16) = v16;
  return result;
}

unint64_t sub_217CB39E4()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000013;
  v4 = 0x74614464656D6974;
  if (v1 != 4)
  {
    v4 = 0x6174614477656976;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6174614464656566;
  if (v1 != 1)
  {
    v5 = 0x74614470756F7267;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217CB3AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217CB4EC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217CB3AC8(uint64_t a1)
{
  v2 = sub_217CB3F78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CB3B04(uint64_t a1)
{
  v2 = sub_217CB3F78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedGroupLayoutEvent2.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CB47A0(0, &qword_27CBA3968, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v31 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CB3F78();
  sub_217D89E7C();
  LOBYTE(v47) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for FeedGroupLayoutEvent2.Model(0);
    v13 = (v3 + v12[5]);
    v14 = *(v13 + 1);
    v15 = *(v13 + 2);
    v57 = *v13;
    v58 = v14;
    v59 = v15;
    v56 = 1;
    sub_217A5BA2C();

    sub_217D89CAC();

    v16 = (v3 + v12[6]);
    v17 = v16[6];
    v18 = v16[4];
    v52 = v16[5];
    v53 = v17;
    v19 = v16[6];
    v20 = v16[8];
    v54 = v16[7];
    v55 = v20;
    v21 = v16[2];
    v22 = *v16;
    v48 = v16[1];
    v49 = v21;
    v23 = v16[2];
    v24 = v16[4];
    v50 = v16[3];
    v51 = v24;
    v25 = *v16;
    v44 = v19;
    v45 = v54;
    v46 = v16[8];
    v47 = v25;
    v40 = v23;
    v41 = v50;
    v42 = v18;
    v43 = v52;
    v38 = v22;
    v39 = v48;
    v37 = 2;
    sub_217AF7618(&v47, v36);
    sub_217A5D3B4();
    sub_217D89CAC();
    v36[7] = v45;
    v36[8] = v46;
    v36[2] = v40;
    v36[3] = v41;
    v36[5] = v43;
    v36[6] = v44;
    v36[4] = v42;
    v36[0] = v38;
    v36[1] = v39;
    sub_217AF8104(v36);
    LOBYTE(v32) = *(v3 + v12[7]);
    v35 = 3;
    sub_217A63994();
    sub_217D89C3C();
    v26 = v12[8];
    LOBYTE(v32) = 4;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v28 = (v3 + v12[9]);
    v29 = *v28;
    v30 = v28[1];
    LOWORD(v28) = *(v28 + 8);
    v32 = v29;
    v33 = v30;
    v34 = v28;
    v35 = 5;
    sub_217A5E790();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217CB3F78()
{
  result = qword_27CBA3970;
  if (!qword_27CBA3970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3970);
  }

  return result;
}

uint64_t FeedGroupLayoutEvent2.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v38 = sub_217D889CC();
  v40 = *(v38 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CB47A0(0, &qword_27CBA3978, MEMORY[0x277D844C8]);
  v44 = v9;
  v41 = *(v9 - 8);
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - v11;
  v13 = type metadata accessor for FeedGroupLayoutEvent2.Model(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CB3F78();
  v43 = v12;
  v18 = v58;
  sub_217D89E5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v5;
  v36 = a1;
  v20 = v16;
  v21 = v40;
  v50[0] = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  sub_217D89BCC();
  (*(v39 + 32))(v20, v42, v6);
  LOBYTE(v45) = 1;
  sub_217A5B978();
  sub_217D89BCC();
  v22 = v20 + *(v13 + 20);
  *v22 = v50[0];
  *(v22 + 8) = *&v50[8];
  v49 = 2;
  sub_217A5D308();
  v58 = 0;
  sub_217D89BCC();
  v23 = (v20 + *(v13 + 24));
  v24 = v56;
  v25 = v57;
  v23[6] = v55;
  v23[7] = v24;
  v23[8] = v25;
  v26 = v52;
  v23[2] = v51;
  v23[3] = v26;
  v27 = v54;
  v23[4] = v53;
  v23[5] = v27;
  v28 = *&v50[16];
  *v23 = *v50;
  v23[1] = v28;
  v48 = 3;
  sub_217A63908();
  sub_217D89B5C();
  v29 = v13;
  v30 = v41;
  *(v20 + v29[7]) = v45;
  LOBYTE(v45) = 4;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v31 = v38;
  sub_217D89BCC();
  (*(v21 + 32))(v20 + v29[8], v19, v31);
  v48 = 5;
  sub_217A5E738();
  sub_217D89BCC();
  (*(v30 + 8))(v43, v44);
  v32 = v46;
  v33 = v47;
  v34 = v20 + v29[9];
  *v34 = v45;
  *(v34 + 8) = v32;
  *(v34 + 16) = v33;
  sub_217CB4804(v20, v37);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return sub_217CB4868(v20);
}
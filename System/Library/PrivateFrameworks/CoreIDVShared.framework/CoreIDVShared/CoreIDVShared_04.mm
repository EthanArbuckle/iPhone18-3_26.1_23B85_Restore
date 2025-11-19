uint64_t sub_225A0ECBC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x695F6E6F73726570;
  if (a1 <= 3u)
  {
    v4 = 0x74735F6874726962;
    v5 = 0xEB00000000657461;
    if (a1 != 2)
    {
      v4 = 0x69635F6874726962;
      v5 = 0xEA00000000007974;
    }

    v8 = 0x6F635F6874726962;
    v9 = 0xED00007972746E75;
    if (!a1)
    {
      v8 = 0x695F6E6F73726570;
      v9 = 0xE900000000000064;
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = 0xD000000000000015;
    v5 = 0x8000000225D0B530;
    v6 = 0x8000000225D0B550;
    v7 = 0x746E656469736572;
    if (a1 == 7)
    {
      v7 = 0xD000000000000016;
    }

    else
    {
      v6 = 0xEE0065746174735FLL;
    }

    if (a1 != 6)
    {
      v4 = v7;
      v5 = v6;
    }

    v8 = 0xD000000000000015;
    v9 = 0x8000000225D0ADC0;
    if (a1 != 4)
    {
      v8 = 0x746E656469736572;
      v9 = 0xEF7465657274735FLL;
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 != 4)
      {
        v2 = 0xEF7465657274735FLL;
        if (v11 != 0x746E656469736572)
        {
          goto LABEL_46;
        }

        goto LABEL_43;
      }

      v13 = "administrative_number";
    }

    else
    {
      if (a2 != 6)
      {
        if (a2 == 7)
        {
          v2 = 0x8000000225D0B550;
          if (v11 != 0xD000000000000016)
          {
            goto LABEL_46;
          }

          goto LABEL_43;
        }

        v3 = 0x746E656469736572;
        v2 = 0xEE0065746174735FLL;
        goto LABEL_42;
      }

      v13 = "resident_house_number";
    }

    v2 = (v13 - 32) | 0x8000000000000000;
    if (v11 != 0xD000000000000015)
    {
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0xEB00000000657461;
      if (v11 != 0x74735F6874726962)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v2 = 0xEA00000000007974;
      if (v11 != 0x69635F6874726962)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_43;
  }

  if (a2)
  {
    v2 = 0xED00007972746E75;
    if (v11 != 0x6F635F6874726962)
    {
      goto LABEL_46;
    }

    goto LABEL_43;
  }

LABEL_42:
  if (v11 != v3)
  {
LABEL_46:
    v14 = sub_225CCF934();
    goto LABEL_47;
  }

LABEL_43:
  if (v12 != v2)
  {
    goto LABEL_46;
  }

  v14 = 1;
LABEL_47:

  return v14 & 1;
}

uint64_t sub_225A0EFC8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB0000000065646FLL;
  v3 = 0x63696E755F786573;
  v4 = a1;
  v5 = 0xD000000000000019;
  v6 = 0xE800000000000000;
  if (a1 == 5)
  {
    v6 = 0x8000000225D0B4D0;
  }

  else
  {
    v5 = 0x7469617274726F70;
  }

  v7 = 0x8000000225D0B410;
  v8 = 0xD000000000000018;
  if (a1 != 3)
  {
    v8 = 0x63696E755F786573;
    v7 = 0xEB0000000065646FLL;
  }

  if (a1 <= 4u)
  {
    v9 = v7;
  }

  else
  {
    v8 = v5;
    v9 = v6;
  }

  v10 = 0x8000000225D0B470;
  v11 = 0xD000000000000016;
  v12 = 0x8000000225D0B490;
  if (v4 == 1)
  {
    v13 = 0xD000000000000011;
  }

  else
  {
    v13 = 0xD000000000000012;
  }

  if (v4 != 1)
  {
    v12 = 0x8000000225D0B4B0;
  }

  if (v4)
  {
    v11 = v13;
    v10 = v12;
  }

  if (v4 <= 2)
  {
    v14 = v10;
  }

  else
  {
    v11 = v8;
    v14 = v9;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x8000000225D0B470;
      if (v11 != 0xD000000000000016)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    if (a2 == 1)
    {
      v2 = 0x8000000225D0B490;
      if (v11 != 0xD000000000000011)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v2 = 0x8000000225D0B4B0;
    v3 = 0xD000000000000012;
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x8000000225D0B4D0;
        if (v11 != 0xD000000000000019)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x7469617274726F70)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }

    if (a2 == 3)
    {
      v2 = 0x8000000225D0B410;
      if (v11 != 0xD000000000000018)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }
  }

  if (v11 != v3)
  {
LABEL_38:
    v15 = sub_225CCF934();
    goto LABEL_39;
  }

LABEL_35:
  if (v14 != v2)
  {
    goto LABEL_38;
  }

  v15 = 1;
LABEL_39:

  return v15 & 1;
}

uint64_t sub_225A0F1B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE0059454B5F4E4FLL;
  v3 = 0x4954505952434E45;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x4D544E4553455250;
      v6 = 0xEF59454B5F544E45;
    }

    else
    {
      v6 = 0x8000000225D0AB70;
      v5 = 0xD00000000000001DLL;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x4954505952434E45;
    }

    else
    {
      v5 = 0xD000000000000015;
    }

    if (v4)
    {
      v6 = 0xEE0059454B5F4E4FLL;
    }

    else
    {
      v6 = 0x8000000225D0AB30;
    }
  }

  v7 = 0x4D544E4553455250;
  v8 = 0x8000000225D0AB70;
  if (a2 == 2)
  {
    v8 = 0xEF59454B5F544E45;
  }

  else
  {
    v7 = 0xD00000000000001DLL;
  }

  if (!a2)
  {
    v3 = 0xD000000000000015;
    v2 = 0x8000000225D0AB30;
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
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225A0F320(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x65766973736170;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x79636167656CLL;
    }

    else
    {
      v4 = 0xD000000000000016;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0x8000000225D0C5C0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7453656E696C6E69;
    }

    else
    {
      v4 = 0x65766973736170;
    }

    if (v3)
    {
      v5 = 0xEC00000070557065;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x79636167656CLL;
  v8 = 0x8000000225D0C5C0;
  if (a2 == 2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xD000000000000016;
  }

  if (a2)
  {
    v2 = 0x7453656E696C6E69;
    v6 = 0xEC00000070557065;
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
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225A0F46C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64656E676973;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEA00000000006C69;
    v4 = 0xEE00657461647055;
    if (a1 == 2)
    {
      v6 = 0x746E5564696C6176;
    }

    else
    {
      v6 = 0x6465746365707865;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0xE90000000000006DLL;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x6F724664696C6176;
    }

    else
    {
      v6 = 0x64656E676973;
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

  v8 = 0xE600000000000000;
  v9 = 0x746E5564696C6176;
  v10 = 0xEA00000000006C69;
  if (a2 != 2)
  {
    v9 = 0x6465746365707865;
    v10 = 0xEE00657461647055;
  }

  if (a2)
  {
    v2 = 0x6F724664696C6176;
    v8 = 0xE90000000000006DLL;
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
    v13 = sub_225CCF934();
  }

  return v13 & 1;
}

uint64_t sub_225A0F5D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x79746964696C6176;
  v5 = 0xEC0000006F666E49;
  if (a1 != 5)
  {
    v4 = 0x737574617473;
    v5 = 0xE600000000000000;
  }

  v6 = 0x654B656369766564;
  v7 = 0xED00006F666E4979;
  if (a1 != 3)
  {
    v6 = 0x65707954636F64;
    v7 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x6C41747365676964;
  v9 = 0xEF6D687469726F67;
  if (a1 != 1)
  {
    v8 = 0x67694465756C6176;
    v9 = 0xEC00000073747365;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6E6F6973726576;
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
      v12 = 0xE700000000000000;
      if (v10 != 0x6E6F6973726576)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if (a2 == 1)
    {
      v12 = 0xEF6D687469726F67;
      if (v10 != 0x6C41747365676964)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v13 = 0x67694465756C6176;
    v14 = 1937011557;
LABEL_32:
    v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v10 != v13)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v12 = 0xED00006F666E4979;
      if (v10 != 0x654B656369766564)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x65707954636F64)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_37;
  }

  if (a2 == 5)
  {
    v13 = 0x79746964696C6176;
    v14 = 1868983881;
    goto LABEL_32;
  }

  v12 = 0xE600000000000000;
  if (v10 != 0x737574617473)
  {
LABEL_39:
    v15 = sub_225CCF934();
    goto LABEL_40;
  }

LABEL_37:
  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v15 = 1;
LABEL_40:

  return v15 & 1;
}

uint64_t sub_225A0F83C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000018;
  v3 = "approximate_mask";
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = 0xD000000000000018;
    }

    if (v4)
    {
      v5 = "HOLDER_PII_HASH_MISMATCH";
    }

    else
    {
      v5 = "approximate_mask";
    }
  }

  else if (a1 == 2)
  {
    v5 = "DOB_PII_HASH_MISMATCH";
    v6 = 0xD000000000000018;
  }

  else if (a1 == 3)
  {
    v5 = "EXPIRY_PII_HASH_MISMATCH";
    v6 = 0xD00000000000001DLL;
  }

  else
  {
    v5 = "NATIONALITY_PII_HASH_MISMATCH";
    v6 = 0xD00000000000001CLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xD000000000000015;
      v3 = "HOLDER_PII_HASH_MISMATCH";
    }
  }

  else if (a2 == 2)
  {
    v3 = "DOB_PII_HASH_MISMATCH";
  }

  else
  {
    v3 = "EXPIRY_PII_HASH_MISMATCH";
    if (a2 == 3)
    {
      v2 = 0xD00000000000001DLL;
    }

    else
    {
      v2 = 0xD00000000000001CLL;
    }

    if (a2 != 3)
    {
      v3 = "NATIONALITY_PII_HASH_MISMATCH";
    }
  }

  if (v6 == v2 && (v5 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_225CCF934();
  }

  return v7 & 1;
}

uint64_t sub_225A0F9A4(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 876098384;
    }

    else
    {
      v3 = 909455952;
    }

    v2 = 0xE400000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0xE400000000000000;
    v3 = 825374032;
  }

  else if (a1 == 3)
  {
    v2 = 0xE600000000000000;
    v3 = 0x393135353258;
  }

  else
  {
    v2 = 0xE400000000000000;
    v3 = 942945368;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 876098384;
    }

    else
    {
      v8 = 909455952;
    }

    v7 = 0xE400000000000000;
    if (v3 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0xE600000000000000;
    v5 = 0x393135353258;
    if (a2 != 3)
    {
      v5 = 942945368;
      v4 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v6 = 825374032;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = v4;
    }

    if (v3 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v2 != v7)
  {
LABEL_28:
    v9 = sub_225CCF934();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t sub_225A0FAF0(char a1, char a2)
{
  if (a1 == a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_225CCF934();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_225A0FB54(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x4449747365676964;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 0x56746E656D656C65;
    }

    if (v3 == 2)
    {
      v5 = 0x8000000225D0B590;
    }

    else
    {
      v5 = 0xEC00000065756C61;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6D6F646E6172;
    }

    else
    {
      v4 = 0x4449747365676964;
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
  v7 = 0xD000000000000011;
  v8 = 0x8000000225D0B590;
  if (a2 != 2)
  {
    v7 = 0x56746E656D656C65;
    v8 = 0xEC00000065756C61;
  }

  if (a2)
  {
    v2 = 0x6D6F646E6172;
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
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225A0FCA0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF312E3032323332;
  v3 = 0x2E6F73692E67726FLL;
  if (a1 <= 1u)
  {
    v4 = 0x8000000225D0ACA0;
    v5 = 0xD000000000000011;
    v6 = 0x8000000225D0ACC0;
    v7 = a1 == 0;
  }

  else
  {
    if (a1 == 2)
    {
      v8 = 0x2E6F73692E67726FLL;
      v9 = 0xEF312E3032323332;
      goto LABEL_11;
    }

    v4 = 0x8000000225D0ACF0;
    v5 = 0xD000000000000012;
    v6 = 0x8000000225D0AC80;
    v7 = a1 == 3;
  }

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xD000000000000017;
  }

  if (v7)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

LABEL_11:
  if (a2 <= 1u)
  {
    v10 = 0x8000000225D0ACA0;
    v11 = 0xD000000000000011;
    v12 = 0x8000000225D0ACC0;
    v13 = a2 == 0;
    goto LABEL_15;
  }

  if (a2 != 2)
  {
    v10 = 0x8000000225D0ACF0;
    v11 = 0xD000000000000012;
    v12 = 0x8000000225D0AC80;
    v13 = a2 == 3;
LABEL_15:
    if (v13)
    {
      v3 = v11;
    }

    else
    {
      v3 = 0xD000000000000017;
    }

    if (v13)
    {
      v2 = v10;
    }

    else
    {
      v2 = v12;
    }
  }

  if (v8 == v3 && v9 == v2)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_225CCF934();
  }

  return v14 & 1;
}

uint64_t sub_225A0FE18(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 5260627;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 5653577;
    }

    else
    {
      v4 = 20559;
    }

    if (v3 == 2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 17747;
    }

    else
    {
      v4 = 5260627;
    }

    if (v3)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE300000000000000;
  v8 = 5653577;
  if (a2 != 2)
  {
    v8 = 20559;
    v7 = 0xE200000000000000;
  }

  if (a2)
  {
    v2 = 17747;
    v6 = 0xE200000000000000;
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
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225A0FF10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000072;
  v3 = 0x6576726573766469;
  if (a1 <= 4u)
  {
    v4 = 0x732D656369766564;
    v5 = 0xEA00000000006565;
    v13 = 0xE300000000000000;
    v14 = 7302761;
    if (a1 != 3)
    {
      v14 = 28787;
      v13 = 0xE200000000000000;
    }

    if (a1 != 2)
    {
      v4 = v14;
      v5 = v13;
    }

    v8 = 0xE600000000000000;
    v9 = 0x656369766564;
    if (!a1)
    {
      v9 = 0x6576726573766469;
      v8 = 0xE900000000000072;
    }

    v12 = a1 <= 1u;
  }

  else
  {
    v4 = 0x73676E6975737369;
    v5 = 0xEE00656369767265;
    v6 = 0xE300000000000000;
    v7 = 7566953;
    if (a1 != 9)
    {
      v7 = 0x7373656E6576696CLL;
      v6 = 0xEE00776569766572;
    }

    if (a1 != 8)
    {
      v4 = v7;
      v5 = v6;
    }

    v8 = 0xE600000000000000;
    v9 = 0x616E65687461;
    v10 = 0xE800000000000000;
    v11 = 0x726F737365737361;
    if (a1 != 6)
    {
      v11 = 0x726575737369;
      v10 = 0xE600000000000000;
    }

    if (a1 != 5)
    {
      v9 = v11;
      v8 = v10;
    }

    v12 = a1 <= 7u;
  }

  if (v12)
  {
    v15 = v9;
  }

  else
  {
    v15 = v4;
  }

  if (v12)
  {
    v16 = v8;
  }

  else
  {
    v16 = v5;
  }

  if (a2 <= 4u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEA00000000006565;
        if (v15 != 0x732D656369766564)
        {
          goto LABEL_55;
        }
      }

      else if (a2 == 3)
      {
        v2 = 0xE300000000000000;
        if (v15 != 7302761)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v2 = 0xE200000000000000;
        if (v15 != 28787)
        {
          goto LABEL_55;
        }
      }

      goto LABEL_51;
    }

    if (a2)
    {
      v2 = 0xE600000000000000;
      if (v15 != 0x656369766564)
      {
        goto LABEL_55;
      }

      goto LABEL_51;
    }

LABEL_50:
    if (v15 != v3)
    {
LABEL_55:
      v19 = sub_225CCF934();
      goto LABEL_56;
    }

    goto LABEL_51;
  }

  if (a2 <= 7u)
  {
    if (a2 == 5)
    {
      v2 = 0xE600000000000000;
      if (v15 != 0x616E65687461)
      {
        goto LABEL_55;
      }

      goto LABEL_51;
    }

    if (a2 == 6)
    {
      v2 = 0xE800000000000000;
      if (v15 != 0x726F737365737361)
      {
        goto LABEL_55;
      }

      goto LABEL_51;
    }

    v2 = 0xE600000000000000;
    v3 = 0x726575737369;
    goto LABEL_50;
  }

  if (a2 == 8)
  {
    v17 = 0x73676E6975737369;
    v18 = 0x656369767265;
  }

  else
  {
    if (a2 == 9)
    {
      v2 = 0xE300000000000000;
      if (v15 != 7566953)
      {
        goto LABEL_55;
      }

      goto LABEL_51;
    }

    v17 = 0x7373656E6576696CLL;
    v18 = 0x776569766572;
  }

  v2 = v18 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
  if (v15 != v17)
  {
    goto LABEL_55;
  }

LABEL_51:
  if (v16 != v2)
  {
    goto LABEL_55;
  }

  v19 = 1;
LABEL_56:

  return v19 & 1;
}

uint64_t sub_225A10224(char a1, char a2)
{
  if (qword_225CD7CF8[a1] == qword_225CD7CF8[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_225CCF934();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_225A1028C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E6F6973726576;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 0x7541726564616572;
    }

    if (v3 == 2)
    {
      v5 = 0x8000000225D0B6A0;
    }

    else
    {
      v5 = 0xED00006C6C416874;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6575716552636F64;
    }

    else
    {
      v4 = 0x6E6F6973726576;
    }

    if (v3)
    {
      v5 = 0xEB00000000737473;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xD000000000000011;
  v8 = 0x8000000225D0B6A0;
  if (a2 != 2)
  {
    v7 = 0x7541726564616572;
    v8 = 0xED00006C6C416874;
  }

  if (a2)
  {
    v2 = 0x6575716552636F64;
    v6 = 0xEB00000000737473;
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
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225A103F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000017;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD00000000000001CLL;
    }

    else
    {
      v4 = 0xD00000000000003ALL;
    }

    if (v3 == 2)
    {
      v5 = 0x8000000225D0B6F0;
    }

    else
    {
      v5 = 0x8000000225D0B710;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000017;
    }

    else
    {
      v4 = 0x7365736143657375;
    }

    if (v3)
    {
      v5 = 0x8000000225D0B6D0;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xD00000000000001CLL;
  v7 = 0x8000000225D0B710;
  if (a2 == 2)
  {
    v7 = 0x8000000225D0B6F0;
  }

  else
  {
    v6 = 0xD00000000000003ALL;
  }

  if (a2)
  {
    v8 = 0x8000000225D0B6D0;
  }

  else
  {
    v2 = 0x7365736143657375;
    v8 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
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
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225A10524(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000017;
  v3 = "ain-intent-as-display-only";
  if (a1 == 5)
  {
    v4 = 0xD00000000000001CLL;
  }

  else
  {
    v4 = 0xD00000000000003ALL;
  }

  if (a1 == 5)
  {
    v5 = "com.apple.external-data";
  }

  else
  {
    v5 = "com.apple.logotype-icon-data";
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0xD000000000000017;
  }

  if (a1 == 3)
  {
    v7 = "maximumResponseSize";
  }

  else
  {
    v7 = "o";
  }

  if (a1 <= 4u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (a1 <= 4u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (a1 == 1)
  {
    v10 = 0xD000000000000011;
  }

  else
  {
    v10 = 0xD000000000000013;
  }

  if (a1 == 1)
  {
    v11 = "alternativeDataElements";
  }

  else
  {
    v11 = "issuerIdentifiers";
  }

  if (!a1)
  {
    v10 = 0xD000000000000017;
    v11 = "ain-intent-as-display-only";
  }

  v12 = a1 <= 2u;
  if (a1 <= 2u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v8;
  }

  if (v12)
  {
    v14 = v11;
  }

  else
  {
    v14 = v9;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xD000000000000011;
        v3 = "alternativeDataElements";
      }

      else
      {
        v2 = 0xD000000000000013;
        v3 = "issuerIdentifiers";
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0xD00000000000001CLL;
      v3 = "com.apple.external-data";
    }

    else
    {
      v2 = 0xD00000000000003ALL;
      v3 = "com.apple.logotype-icon-data";
    }
  }

  else if (a2 == 3)
  {
    v2 = 0xD000000000000014;
    v3 = "maximumResponseSize";
  }

  else
  {
    v3 = "o";
  }

  if (v13 == v2 && (v14 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_225CCF934();
  }

  return v15 & 1;
}

uint64_t sub_225A106BC(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x343833505F4345;
    }

    else
    {
      v3 = 0x363532505F4345;
    }

    v2 = 0xE700000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0xE700000000000000;
    v3 = 0x313235505F4345;
  }

  else if (a1 == 3)
  {
    v2 = 0xE800000000000000;
    v3 = 0x39313535325F4445;
  }

  else
  {
    v2 = 0xE600000000000000;
    v3 = 0x3834345F4445;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x343833505F4345;
    }

    else
    {
      v8 = 0x363532505F4345;
    }

    v7 = 0xE700000000000000;
    if (v3 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0xE800000000000000;
    v5 = 0x39313535325F4445;
    if (a2 != 3)
    {
      v5 = 0x3834345F4445;
      v4 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v6 = 0x313235505F4345;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = v4;
    }

    if (v3 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v2 != v7)
  {
LABEL_28:
    v9 = sub_225CCF934();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t sub_225A10840(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 7041136;
  v5 = 0xE300000000000000;
  if (a1 != 5)
  {
    v4 = 7628656;
    v5 = 0xE300000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x72616B6564;
  if (a1 != 3)
  {
    v7 = 7041904;
    v6 = 0xE300000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 7041899;
  if (a1 != 1)
  {
    v8 = 7038308;
  }

  if (a1)
  {
    v3 = 0xE300000000000000;
  }

  else
  {
    v8 = 0x64696C61766E69;
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

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x64696C61766E69)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    if (a2 != 1)
    {
      v11 = 0xE300000000000000;
      if (v9 != 7038308)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    v12 = 7041899;
    goto LABEL_33;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v11 = 0xE500000000000000;
      if (v9 != 0x72616B6564)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    v12 = 7041904;
LABEL_33:
    v11 = 0xE300000000000000;
    if (v9 != v12)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  if (a2 == 5)
  {
    v12 = 7041136;
    goto LABEL_33;
  }

  v11 = 0xE300000000000000;
  if (v9 != 7628656)
  {
LABEL_38:
    v13 = sub_225CCF934();
    goto LABEL_39;
  }

LABEL_36:
  if (v10 != v11)
  {
    goto LABEL_38;
  }

  v13 = 1;
LABEL_39:

  return v13 & 1;
}

uint64_t sub_225A109E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 7366003;
  v6 = 0x6C616E7265747865;
  v7 = 0xEB0000000065732DLL;
  if (a1 != 4)
  {
    v6 = 0x6E6961686379656BLL;
    v7 = 0xE800000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x732D79636167656CLL;
  v9 = 0xE900000000000065;
  if (a1 != 1)
  {
    v8 = 7562611;
    v9 = 0xE300000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x64696C61766E69;
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
      v12 = 0xE300000000000000;
      if (v10 != 7366003)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEB0000000065732DLL;
      if (v10 != 0x6C616E7265747865)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6E6961686379656BLL)
      {
LABEL_34:
        v13 = sub_225CCF934();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000065;
      if (v10 != 0x732D79636167656CLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 7562611)
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

uint64_t sub_225A10BD0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x65707954636F64;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6953656369766564;
    }

    else
    {
      v4 = 0x73726F727265;
    }

    if (v3 == 2)
    {
      v5 = 0xEC00000064656E67;
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
      v4 = 0x6953726575737369;
    }

    else
    {
      v4 = 0x65707954636F64;
    }

    if (v3)
    {
      v5 = 0xEC00000064656E67;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x6953656369766564;
  v8 = 0xEC00000064656E67;
  if (a2 != 2)
  {
    v7 = 0x73726F727265;
    v8 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x6953726575737369;
    v6 = 0xEC00000064656E67;
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
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225A10D2C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E6F6973726576;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x746E656D75636F64;
    }

    else
    {
      v4 = 0x737574617473;
    }

    if (v3 == 2)
    {
      v5 = 0xEE0073726F727245;
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
      v4 = 0x746E656D75636F64;
    }

    else
    {
      v4 = 0x6E6F6973726576;
    }

    if (v3)
    {
      v5 = 0xE900000000000073;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x746E656D75636F64;
  v8 = 0xEE0073726F727245;
  if (a2 != 2)
  {
    v7 = 0x737574617473;
    v8 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x746E656D75636F64;
    v6 = 0xE900000000000073;
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
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225A10E88(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0xD000000000000017;
    }

    if (v2 == 2)
    {
      v4 = 0x8000000225D0BAB0;
    }

    else
    {
      v4 = 0x8000000225D0BAD0;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x44676E697373696DLL;
    }

    else
    {
      v3 = 0x73736563637573;
    }

    if (v2)
    {
      v4 = 0xEF746E656D75636FLL;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = 0xD000000000000017;
    }

    if (a2 == 2)
    {
      v6 = 0x8000000225D0BAB0;
    }

    else
    {
      v6 = 0x8000000225D0BAD0;
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
      v5 = 0x44676E697373696DLL;
    }

    else
    {
      v5 = 0x73736563637573;
    }

    if (a2)
    {
      v6 = 0xEF746E656D75636FLL;
    }

    else
    {
      v6 = 0xE700000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
LABEL_32:
    v8 = sub_225CCF934();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

uint64_t sub_225A10FEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000676E6973;
  v3 = 0x73694D6C61636976;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x73694D79654B6573;
    }

    else
    {
      v5 = 0x4D6E6F6973736573;
    }

    if (v4 == 2)
    {
      v6 = 0xEC000000676E6973;
    }

    else
    {
      v6 = 0xEE00676E69737369;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x73694D6C61636976;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (v4)
    {
      v6 = 0xEC000000676E6973;
    }

    else
    {
      v6 = 0x8000000225D0BB10;
    }
  }

  v7 = 0x73694D79654B6573;
  if (a2 == 2)
  {
    v8 = 0xEC000000676E6973;
  }

  else
  {
    v7 = 0x4D6E6F6973736573;
    v8 = 0xEE00676E69737369;
  }

  if (!a2)
  {
    v3 = 0xD000000000000012;
    v2 = 0x8000000225D0BB10;
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
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225A11144(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "seKeyMissing";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000029;
    }

    else
    {
      v4 = 0xD000000000000028;
    }

    if (v3 == 2)
    {
      v5 = "rtificateInvalidLogoURL";
    }

    else
    {
      v5 = "rtificateDataHashMismatch";
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000027;
    }

    else
    {
      v4 = 0xD000000000000028;
    }

    if (v3)
    {
      v5 = "rtificateLogotypeMissing";
    }

    else
    {
      v5 = "seKeyMissing";
    }
  }

  if (a2 > 1u)
  {
    v2 = "rtificateInvalidLogoURL";
    v6 = "rtificateDataHashMismatch";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000029;
    }

    else
    {
      v8 = 0xD000000000000028;
    }
  }

  else
  {
    v6 = "rtificateLogotypeMissing";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000027;
    }

    else
    {
      v8 = 0xD000000000000028;
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
    v10 = sub_225CCF934();
  }

  return v10 & 1;
}

uint64_t sub_225A11248(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x73736563637573;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6572756C696166;
    }

    else
    {
      v4 = 0x686361436D6F7266;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE900000000000065;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6B6361626C6C6166;
    }

    else
    {
      v4 = 0x73736563637573;
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
  v7 = 0xE700000000000000;
  v8 = 0x6572756C696166;
  if (a2 != 2)
  {
    v8 = 0x686361436D6F7266;
    v7 = 0xE900000000000065;
  }

  if (a2)
  {
    v2 = 0x6B6361626C6C6166;
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
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225A11394(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v5 = 0xD000000000000011;
      v6 = 0x8000000225D0C990;
    }

    else if (a1 == 4)
    {
      v5 = 0x6942664F65746164;
      v6 = 0xEB00000000687472;
    }

    else
    {
      v6 = 0xE600000000000000;
      v5 = 0x7265646E6567;
    }
  }

  else
  {
    v3 = 0xD000000000000011;
    v4 = 0x8000000225D0C970;
    if (a1 != 1)
    {
      v3 = 0x6C616E6F6974616ELL;
      v4 = 0xEB00000000797469;
    }

    if (a1)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (v2)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0x8000000225D0C950;
    }
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v8 = 0x8000000225D0C990;
      if (v5 != 0xD000000000000011)
      {
        goto LABEL_36;
      }
    }

    else if (a2 == 4)
    {
      v8 = 0xEB00000000687472;
      if (v5 != 0x6942664F65746164)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v8 = 0xE600000000000000;
      if (v5 != 0x7265646E6567)
      {
LABEL_36:
        v9 = sub_225CCF934();
        goto LABEL_37;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = 0x6C616E6F6974616ELL;
    }

    if (a2 == 1)
    {
      v8 = 0x8000000225D0C970;
    }

    else
    {
      v8 = 0xEB00000000797469;
    }

    if (v5 != v7)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v8 = 0x8000000225D0C950;
    if (v5 != 0xD000000000000012)
    {
      goto LABEL_36;
    }
  }

  if (v6 != v8)
  {
    goto LABEL_36;
  }

  v9 = 1;
LABEL_37:

  return v9 & 1;
}

uint64_t sub_225A1159C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED000064656E7275;
  v3 = 0x7465527364697575;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x5473444955556F6ELL;
    }

    else
    {
      v5 = 0xD000000000000018;
    }

    if (v4 == 2)
    {
      v6 = 0xEF6E72757465526FLL;
    }

    else
    {
      v6 = 0x8000000225D0C190;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x526F544C43416F6ELL;
    }

    else
    {
      v5 = 0x7465527364697575;
    }

    if (v4)
    {
      v6 = 0xED00006E72757465;
    }

    else
    {
      v6 = 0xED000064656E7275;
    }
  }

  v7 = 0x5473444955556F6ELL;
  v8 = 0x8000000225D0C190;
  if (a2 == 2)
  {
    v8 = 0xEF6E72757465526FLL;
  }

  else
  {
    v7 = 0xD000000000000018;
  }

  if (a2)
  {
    v3 = 0x526F544C43416F6ELL;
    v2 = 0xED00006E72757465;
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
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225A11718(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF73746F6C534553;
  v3 = 0x64656E616870726FLL;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0xD000000000000014;
    }

    if (v4)
    {
      v6 = 0x8000000225D0C0F0;
    }

    else
    {
      v6 = 0x8000000225D0C0D0;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x64656E616870726FLL;
    v6 = 0xEF73746F6C534553;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0xD00000000000001BLL;
    }

    else
    {
      v5 = 0xD00000000000001CLL;
    }

    if (v4 == 3)
    {
      v6 = 0x8000000225D0C120;
    }

    else
    {
      v6 = 0x8000000225D0C140;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0xD000000000000016;
    }

    else
    {
      v7 = 0xD000000000000014;
    }

    if (a2)
    {
      v2 = 0x8000000225D0C0F0;
    }

    else
    {
      v2 = 0x8000000225D0C0D0;
    }

    if (v5 != v7)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v3 = 0xD00000000000001BLL;
      }

      else
      {
        v3 = 0xD00000000000001CLL;
      }

      if (a2 == 3)
      {
        v2 = 0x8000000225D0C120;
      }

      else
      {
        v2 = 0x8000000225D0C140;
      }
    }

    if (v5 != v3)
    {
      goto LABEL_35;
    }
  }

  if (v6 != v2)
  {
LABEL_35:
    v8 = sub_225CCF934();
    goto LABEL_36;
  }

  v8 = 1;
LABEL_36:

  return v8 & 1;
}

uint64_t sub_225A118B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0x4572657461657267;
  v5 = 0xEC0000006C617571;
  v6 = 0xE700000000000000;
  if (a1 != 5)
  {
    v4 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v7 = 0x72657461657267;
  if (a1 != 3)
  {
    v7 = 0x617571457373656CLL;
    v6 = 0xE90000000000006CLL;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6C61757145746F6ELL;
  if (a1 != 1)
  {
    v9 = 1936942444;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6C61757165;
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
        if (v10 != 0x6C61757145746F6ELL)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE400000000000000;
        if (v10 != 1936942444)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6C61757165)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEC0000006C617571;
      if (v10 != 0x4572657461657267)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
LABEL_39:
        v13 = sub_225CCF934();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x72657461657267)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE90000000000006CLL;
    if (v10 != 0x617571457373656CLL)
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

uint64_t sub_225A11AE0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x646563616C706572;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEA00000000006465;
    v4 = 0xEA00000000007475;
    if (a1 == 2)
    {
      v6 = 0x6C69614668747561;
    }

    else
    {
      v6 = 0x6F6B636F4C6F6962;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xEB00000000726567;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x6E6946676E6F7277;
    }

    else
    {
      v6 = 0x646563616C706572;
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

  v8 = 0xE800000000000000;
  v9 = 0x6C69614668747561;
  v10 = 0xEA00000000006465;
  if (a2 != 2)
  {
    v9 = 0x6F6B636F4C6F6962;
    v10 = 0xEA00000000007475;
  }

  if (a2)
  {
    v2 = 0x6E6946676E6F7277;
    v8 = 0xEB00000000726567;
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
    v13 = sub_225CCF934();
  }

  return v13 & 1;
}

uint64_t sub_225A11C40(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x73736563637573;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x64656C65636E6163;
    }

    else
    {
      v4 = 0x626967696C656E69;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEA0000000000656CLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x646573756572;
    }

    else
    {
      v4 = 0x73736563637573;
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
  v7 = 0xE800000000000000;
  v8 = 0x64656C65636E6163;
  if (a2 != 2)
  {
    v8 = 0x626967696C656E69;
    v7 = 0xEA0000000000656CLL;
  }

  if (a2)
  {
    v2 = 0x646573756572;
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
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225A11D84(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000746E6F72;
  v3 = 0x665F64695F776172;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x5F65766973736170;
    v12 = 0xED00006F65646976;
    if (a1 != 6)
    {
      v11 = 0x746E656D75636F64;
      v12 = 0xEC0000007A726D5FLL;
    }

    v13 = 0xE600000000000000;
    v14 = 0x6569666C6573;
    if (a1 != 4)
    {
      v14 = 0x7373656E6576696CLL;
      v13 = 0xEE006F656469765FLL;
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
    v5 = 0x8000000225D0C610;
    if (a1 == 2)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (a1 != 2)
    {
      v5 = 0x8000000225D0C630;
    }

    v7 = 0x625F64695F776172;
    v8 = 0xEB000000006B6361;
    if (!a1)
    {
      v7 = 0x665F64695F776172;
      v8 = 0xEC000000746E6F72;
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
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xED00006F65646976;
        if (v9 != 0x5F65766973736170)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v2 = 0xEC0000007A726D5FLL;
        if (v9 != 0x746E656D75636F64)
        {
          goto LABEL_47;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE600000000000000;
      if (v9 != 0x6569666C6573)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v2 = 0xEE006F656469765FLL;
      if (v9 != 0x7373656E6576696CLL)
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
        v2 = 0x8000000225D0C610;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_47;
        }

        goto LABEL_44;
      }

      v3 = 0xD000000000000011;
      v2 = 0x8000000225D0C630;
    }

    else if (a2)
    {
      v2 = 0xEB000000006B6361;
      if (v9 != 0x625F64695F776172)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

    if (v9 != v3)
    {
LABEL_47:
      v15 = sub_225CCF934();
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

uint64_t sub_225A1204C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 6451044;
    }

    else
    {
      v3 = 0x7265646C6F68;
    }

    if (v2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x797269707865;
  }

  else if (a1 == 3)
  {
    v3 = 0x6C616E6F6974616ELL;
    v4 = 0xEB00000000797469;
  }

  else
  {
    v3 = 0x65626D754E636F64;
    v4 = 0xE900000000000072;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 6451044;
    }

    else
    {
      v9 = 0x7265646C6F68;
    }

    if (a2)
    {
      v8 = 0xE300000000000000;
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
    v5 = 0x6C616E6F6974616ELL;
    v6 = 0xEB00000000797469;
    if (a2 != 3)
    {
      v5 = 0x65626D754E636F64;
      v6 = 0xE900000000000072;
    }

    if (a2 == 2)
    {
      v7 = 0x797269707865;
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
    v10 = sub_225CCF934();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_225A121D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB0000000073746FLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 0xD00000000000001ELL;
    }

    if (v3 == 2)
    {
      v5 = 0x8000000225D0B8E0;
    }

    else
    {
      v5 = 0x8000000225D0B900;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6F52726575737369;
    }

    else
    {
      v4 = 0xD000000000000011;
    }

    if (v3)
    {
      v5 = 0xEB0000000073746FLL;
    }

    else
    {
      v5 = 0x8000000225D0B8C0;
    }
  }

  v6 = 0x8000000225D0B8E0;
  v7 = 0xD00000000000001ELL;
  if (a2 == 2)
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x8000000225D0B900;
  }

  if (a2)
  {
    v8 = 0x6F52726575737369;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (!a2)
  {
    v2 = 0x8000000225D0B8C0;
  }

  if (a2 <= 1u)
  {
    v9 = v8;
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
    v10 = v6;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t errorFromCFError(_:_:_:)(__CFError *a1, uint64_t a2, unint64_t a3, __int16 *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v50[-v10];
  v12 = *a4;
  if (a1)
  {
    Code = CFErrorGetCode(a1);
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_225CCF204();

    v52 = a2;
    v53 = a3;
    MEMORY[0x22AA6CE70](0x727245666328202CLL, 0xED0000203D20726FLL);
    v51 = a1;
    type metadata accessor for CFError(0);
    sub_225A1FB50(&qword_281059B10, type metadata accessor for CFError);
    v14 = sub_225CCFB24();
    MEMORY[0x22AA6CE70](v14);

    MEMORY[0x22AA6CE70](41, 0xE100000000000000);
    v16 = v52;
    v15 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v18 = inited + 32;
    v19 = MEMORY[0x277D83B88];
    *(inited + 16) = xmmword_225CD30F0;
    v20 = MEMORY[0x277D83BF8];
    *(inited + 64) = v19;
    *(inited + 72) = v20;
    *(inited + 40) = Code;
    v21 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(v18, &qword_27D73B060);
    v22 = sub_225CCE954();
    v23 = *(v22 - 8);
    (*(v23 + 56))(v11, 1, 1, v22);
    LODWORD(v22) = (*(v23 + 48))(v11, 1, v22);
    sub_2259CB640(v11, &unk_27D73B050);
    if (!v22)
    {
      v12 = 23;
    }

    v24 = MEMORY[0x277D84F90];
    v25 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v25;
    sub_225B2C4A0(v21, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v52);

    v27 = v52;
    v28 = sub_225B29AA0(0, 1, 1, v24);
    v30 = *(v28 + 2);
    v29 = *(v28 + 3);
    if (v30 >= v29 >> 1)
    {
      v28 = sub_225B29AA0((v29 > 1), v30 + 1, 1, v28);
    }

    *(v28 + 2) = v30 + 1;
    v31 = &v28[56 * v30];
    *(v31 + 4) = v16;
    *(v31 + 5) = v15;
    *(v31 + 6) = 0xD000000000000025;
    *(v31 + 7) = 0x8000000225D173E0;
    *(v31 + 8) = 0xD000000000000018;
    *(v31 + 9) = 0x8000000225D17410;
    *(v31 + 10) = 731;
    sub_2259CB5EC();
    v32 = swift_allocError();
    *v33 = v12;
    *(v33 + 8) = v28;
    *(v33 + 16) = v16;
    *(v33 + 24) = v15;
    *(v33 + 32) = v27;
    *(v33 + 40) = 0;

    return v32;
  }

  else
  {
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_225CCF204();

    v52 = a2;
    v53 = a3;
    MEMORY[0x22AA6CE70](0xD000000000000011, 0x8000000225D173C0);
    v36 = v52;
    v35 = v53;
    v37 = MEMORY[0x277D84F90];
    v38 = sub_225B2C248(MEMORY[0x277D84F90]);
    v39 = sub_225CCE954();
    v40 = *(v39 - 8);
    (*(v40 + 56))(v11, 1, 1, v39);
    LODWORD(v39) = (*(v40 + 48))(v11, 1, v39);
    sub_2259CB640(v11, &unk_27D73B050);
    if (v39)
    {
      v41 = v12;
    }

    else
    {
      v41 = 23;
    }

    v42 = sub_225B2C374(v37);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v52 = v42;
    sub_225B2C4A0(v38, sub_225B2AC40, 0, v43, &v52);

    v44 = v52;
    v45 = sub_225B29AA0(0, 1, 1, v37);
    v47 = *(v45 + 2);
    v46 = *(v45 + 3);
    if (v47 >= v46 >> 1)
    {
      v45 = sub_225B29AA0((v46 > 1), v47 + 1, 1, v45);
    }

    *(v45 + 2) = v47 + 1;
    v48 = &v45[56 * v47];
    *(v48 + 4) = v36;
    *(v48 + 5) = v35;
    *(v48 + 6) = 0xD000000000000025;
    *(v48 + 7) = 0x8000000225D173E0;
    *(v48 + 8) = 0xD000000000000018;
    *(v48 + 9) = 0x8000000225D17410;
    *(v48 + 10) = 726;
    sub_2259CB5EC();
    result = swift_allocError();
    *v49 = v41;
    *(v49 + 8) = v45;
    *(v49 + 16) = v36;
    *(v49 + 24) = v35;
    *(v49 + 32) = v44;
    *(v49 + 40) = 0;
  }

  return result;
}

uint64_t copyPublicKeyDataFromCertificate(_:)(__SecCertificate *a1)
{
  v1 = SecCertificateCopyKey(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = copyPublicKeyDataFromSecKeyPublic(_:)(v1);

  return v3;
}

uint64_t sub_225A12964()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v20 - v2;
  v4 = MEMORY[0x277D84F90];
  v5 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v7 = v6;
  v8 = sub_225CCE954();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v3, 1, 1, v8);
  v10 = (*(v9 + 48))(v3, 1, v8);
  sub_2259CB640(v3, &unk_27D73B050);
  v11 = sub_225B2C374(v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v11;
  sub_225B2C4A0(v5, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v21);

  v13 = v21;
  v14 = sub_225B29AA0(0, 1, 1, v4);
  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_225B29AA0((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 2) = v16 + 1;
  v17 = &v14[56 * v16];
  *(v17 + 4) = 0xD000000000000036;
  *(v17 + 5) = 0x8000000225D17470;
  *(v17 + 6) = 0xD000000000000025;
  *(v17 + 7) = 0x8000000225D173E0;
  *(v17 + 8) = 0xD000000000000014;
  *(v17 + 9) = 0x8000000225D174B0;
  *(v17 + 10) = 39;
  if (v10)
  {
    v18 = 109;
  }

  else
  {
    v18 = 23;
  }

  *v7 = v18;
  *(v7 + 8) = v14;
  *(v7 + 16) = 0xD000000000000036;
  *(v7 + 24) = 0x8000000225D17470;
  *(v7 + 32) = v13;
  *(v7 + 40) = 0;
  return swift_willThrow();
}

void *sub_225A12C20(uint64_t a1, uint64_t a2, __SecKey *a3, const __CFString *a4)
{
  error[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v31 - v8;
  error[0] = 0;
  if (!SecKeyIsAlgorithmSupported(a3, kSecKeyOperationTypeSign, a4))
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0x687469726F676C61, 0xEA0000000000206DLL);
    v34 = a4;
    type metadata accessor for SecKeyAlgorithm(0);
    sub_225CCF434();
    MEMORY[0x22AA6CE70](0xD00000000000001FLL, 0x8000000225D16650);
    v13 = v35;
    Signature = v36;
    v32 = 0x8000000225D174D0;
    v33 = 0x8000000225D173E0;
    v14 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v16 = v15;
    v17 = sub_225CCE954();
    v18 = *(v17 - 8);
    (*(v18 + 56))(v9, 1, 1, v17);
    LODWORD(v17) = (*(v18 + 48))(v9, 1, v17);
    sub_2259CB640(v9, &unk_27D73B050);
    if (v17)
    {
      v19 = 250;
    }

    else
    {
      v19 = 23;
    }

    v20 = MEMORY[0x277D84F90];
    v21 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v21;
    sub_225B2C4A0(v14, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v35);

    v23 = v35;
    v24 = sub_225B29AA0(0, 1, 1, v20);
    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    if (v26 >= v25 >> 1)
    {
      v24 = sub_225B29AA0((v25 > 1), v26 + 1, 1, v24);
    }

    *(v24 + 2) = v26 + 1;
    v27 = &v24[56 * v26];
    *(v27 + 4) = v13;
    *(v27 + 5) = Signature;
    v28 = v33;
    *(v27 + 6) = 0xD000000000000025;
    *(v27 + 7) = v28;
    v29 = v32;
    *(v27 + 8) = 0xD00000000000001ALL;
    *(v27 + 9) = v29;
    *(v27 + 10) = 91;
    *v16 = v19;
    *(v16 + 8) = v24;
    *(v16 + 16) = v13;
    *(v16 + 24) = Signature;
    *(v16 + 32) = v23;
    *(v16 + 40) = 0;
    goto LABEL_11;
  }

  v10 = sub_225CCCF74();
  Signature = SecKeyCreateSignature(a3, a4, v10, error);

  if (!Signature)
  {
    LOWORD(v35) = 252;
    errorFromCFError(_:_:_:)(error[0], 0xD000000000000021, 0x8000000225D165C0, &v35);
LABEL_11:
    swift_willThrow();
    return Signature;
  }

  v12 = Signature;
  Signature = sub_225CCCFA4();

  return Signature;
}

void sub_225A13014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __SecKey *a5, const __CFString *a6)
{
  error[1] = *MEMORY[0x277D85DE8];
  v8 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  if (byte_28105B9F8 == 1)
  {
    v9 = a5;
    v10 = a6;
    v11 = sub_225CCE444();
    v12 = [v8 BOOLForKey_];

    a6 = v10;
    a5 = v9;

    if (v12)
    {
      return;
    }
  }

  else
  {
  }

  error[0] = 0;
  v13 = sub_225CCCF74();
  v14 = sub_225CCCF74();
  v15 = SecKeyVerifySignature(a5, a6, v13, v14, error);

  if (!v15)
  {
    v16 = 253;
    errorFromCFError(_:_:_:)(error[0], 0xD000000000000023, 0x8000000225D174F0, &v16);
    swift_willThrow();
  }
}

uint64_t sub_225A13214()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v20 - v2;
  v4 = MEMORY[0x277D84F90];
  v5 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v7 = v6;
  v8 = sub_225CCE954();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v3, 1, 1, v8);
  v10 = (*(v9 + 48))(v3, 1, v8);
  sub_2259CB640(v3, &unk_27D73B050);
  v11 = sub_225B2C374(v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v11;
  sub_225B2C4A0(v5, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v21);

  v13 = v21;
  v14 = sub_225B29AA0(0, 1, 1, v4);
  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_225B29AA0((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 2) = v16 + 1;
  v17 = &v14[56 * v16];
  *(v17 + 4) = 0xD00000000000002FLL;
  *(v17 + 5) = 0x8000000225D17520;
  *(v17 + 6) = 0xD000000000000025;
  *(v17 + 7) = 0x8000000225D173E0;
  *(v17 + 8) = 0xD00000000000001DLL;
  *(v17 + 9) = 0x8000000225D17550;
  *(v17 + 10) = 111;
  if (v10)
  {
    v18 = 109;
  }

  else
  {
    v18 = 23;
  }

  *v7 = v18;
  *(v7 + 8) = v14;
  *(v7 + 16) = 0xD00000000000002FLL;
  *(v7 + 24) = 0x8000000225D17520;
  *(v7 + 32) = v13;
  *(v7 + 40) = 0;
  return swift_willThrow();
}

uint64_t sub_225A13488()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v20 - v2;
  v4 = MEMORY[0x277D84F90];
  v5 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v7 = v6;
  v8 = sub_225CCE954();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v3, 1, 1, v8);
  v10 = (*(v9 + 48))(v3, 1, v8);
  sub_2259CB640(v3, &unk_27D73B050);
  v11 = sub_225B2C374(v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v11;
  sub_225B2C4A0(v5, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v21);

  v13 = v21;
  v14 = sub_225B29AA0(0, 1, 1, v4);
  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_225B29AA0((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 2) = v16 + 1;
  v17 = &v14[56 * v16];
  *(v17 + 4) = 0xD00000000000002FLL;
  *(v17 + 5) = 0x8000000225D17570;
  *(v17 + 6) = 0xD000000000000025;
  *(v17 + 7) = 0x8000000225D173E0;
  *(v17 + 8) = 0xD00000000000001DLL;
  *(v17 + 9) = 0x8000000225D175A0;
  *(v17 + 10) = 115;
  if (v10)
  {
    v18 = 109;
  }

  else
  {
    v18 = 23;
  }

  *v7 = v18;
  *(v7 + 8) = v14;
  *(v7 + 16) = 0xD00000000000002FLL;
  *(v7 + 24) = 0x8000000225D17570;
  *(v7 + 32) = v13;
  *(v7 + 40) = 0;
  return swift_willThrow();
}

const __CFDictionary *sub_225A136FC(__SecKey *a1, __SecKey *a2, const __CFString *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v33 = a1;
  v34 = a3;
  v35 = a2;
  error[1] = *MEMORY[0x277D85DE8];
  v9 = sub_225CCD954();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  error[0] = 0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v14 = off_28105B918;
  v15 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v16 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v16));
  (*(v10 + 16))(v13, &v14[v15], v9);
  os_unfair_lock_unlock(&v14[v16]);
  v17 = sub_225CCD934();
  v18 = sub_225CCED04();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2259A7000, v17, v18, "coreidvd: derive shared secret", v19, 2u);
    MEMORY[0x22AA6F950](v19, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B068);
  inited = swift_initStackObject();
  v21 = *MEMORY[0x277CDC3F8];
  *(inited + 32) = *MEMORY[0x277CDC3F8];
  v22 = MEMORY[0x277D83B88];
  *(inited + 16) = xmmword_225CD4890;
  *(inited + 40) = a4;
  v23 = *MEMORY[0x277CDC400];
  *(inited + 64) = v22;
  *(inited + 72) = v23;
  *(inited + 104) = MEMORY[0x277CC9318];
  *(inited + 80) = a5;
  *(inited + 88) = a6;
  v24 = v21;
  v25 = v23;
  sub_2259CB710(a5, a6);
  sub_225B2CFE0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B070);
  swift_arrayDestroy();
  sub_2259D8718(0, &qword_281059A60);
  sub_225A1D788();
  v26 = sub_225CCE2B4();

  v27 = SecKeyCopyKeyExchangeResult(v33, v34, v35, v26, error);

  if (v27)
  {
    type metadata accessor for DIPSecureData();
    v26 = swift_allocObject();
    *(v26 + 2) = v27;
    v28 = v27;
    BytePtr = CFDataGetBytePtr(v28);
    Length = CFDataGetLength(v28);

    mlock(BytePtr, Length);
  }

  else
  {
    v36 = 254;
    errorFromCFError(_:_:_:)(error[0], 0xD00000000000001DLL, 0x8000000225D175C0, &v36);
    swift_willThrow();
  }

  return v26;
}

uint64_t DIPKeystoreKeychain.__allocating_init(requireUserAuth:externalizedLAContext:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A13BBC;

  return DIPKeystoreKeychain.init(requireUserAuth:externalizedLAContext:)(a1, a2, a3);
}

uint64_t sub_225A13BBC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t DIPKeystoreKeychain.init(requireUserAuth:externalizedLAContext:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 80) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  *(v4 + 40) = swift_task_alloc();
  v5 = sub_225CCD954();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225A13DBC, 0, 0);
}

void sub_225A13DBC()
{
  v1 = *(v0 + 24);
  v2 = v1 >> 60;
  if (v1 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *(v0 + 16);
    sub_2259CB710(v4, *(v0 + 24));
    v3 = sub_225CCCF74();
    sub_2259B97A8(v4, v1);
  }

  v5 = [objc_allocWithZone(MEMORY[0x277CD4790]) initWithExternalizedContext_];

  if (v5)
  {
    v6 = *(v0 + 32);
    v7 = *(v0 + 80);
    *(v6 + 16) = v5;
    *(v6 + 24) = v7;
    if (v2 <= 0xE)
    {
      sub_2259B97A8(*(v0 + 16), *(v0 + 24));

      v9 = *(v0 + 8);
      v10 = *(v0 + 32);

      v9(v10);
    }

    else
    {
      v8 = swift_task_alloc();
      *(v0 + 72) = v8;
      *v8 = v0;
      v8[1] = sub_225A13F34;

      sub_225A14460();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_225A13F34(char a1)
{
  *(*v1 + 81) = a1;

  return MEMORY[0x2822009F8](sub_225A14034, 0, 0);
}

uint64_t sub_225A14034()
{
  v36 = v0;
  if (*(v0 + 81))
  {

    v1 = *(v0 + 8);
    v2 = *(v0 + 32);

    return v1(v2);
  }

  else
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = *(v0 + 48);
    v7 = off_28105B918;
    v8 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v9 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v9));
    (*(v5 + 16))(v4, &v7[v8], v6);
    os_unfair_lock_unlock(&v7[v9]);
    v10 = sub_225CCD934();
    v11 = sub_225CCED14();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2259A7000, v10, v11, "coreidvd: DIPCryptoKeychain.init failed to acquire user authentication", v12, 2u);
      MEMORY[0x22AA6F950](v12, -1, -1);
    }

    v14 = *(v0 + 56);
    v13 = *(v0 + 64);
    v15 = *(v0 + 40);
    v16 = *(v0 + 48);

    (*(v14 + 8))(v13, v16);
    v17 = MEMORY[0x277D84F90];
    v18 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v34 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050);
    v23 = sub_225B2C374(v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v23;
    sub_225B2C4A0(v18, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v35);

    v25 = v35;
    v26 = sub_225B29AA0(0, 1, 1, v17);
    v28 = *(v26 + 2);
    v27 = *(v26 + 3);
    if (v28 >= v27 >> 1)
    {
      v26 = sub_225B29AA0((v27 > 1), v28 + 1, 1, v26);
    }

    v30 = *(v0 + 16);
    v29 = *(v0 + 24);
    if (v34)
    {
      v31 = 255;
    }

    else
    {
      v31 = 23;
    }

    *(v26 + 2) = v28 + 1;
    v32 = &v26[56 * v28];
    *(v32 + 4) = 0xD000000000000025;
    *(v32 + 5) = 0x8000000225D175E0;
    *(v32 + 6) = 0xD000000000000025;
    *(v32 + 7) = 0x8000000225D173E0;
    *(v32 + 8) = 0xD00000000000002CLL;
    *(v32 + 9) = 0x8000000225D17610;
    *(v32 + 10) = 149;
    *v20 = v31;
    *(v20 + 8) = v26;
    *(v20 + 16) = 0xD000000000000025;
    *(v20 + 24) = 0x8000000225D175E0;
    *(v20 + 32) = v25;
    *(v20 + 40) = 0;
    swift_willThrow();

    sub_2259B97A8(v30, v29);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_225A14460()
{
  v1[25] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v1[26] = swift_task_alloc();
  v2 = sub_225CCD954();
  v1[27] = v2;
  v1[28] = *(v2 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B190);
  v1[33] = v3;
  v1[34] = *(v3 - 8);
  v1[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225A14610, 0, 0);
}

uint64_t sub_225A14610()
{
  v22 = v0;
  v21 = *MEMORY[0x277D85DE8];
  *(v0 + 168) = 0;
  if (*(*(v0 + 200) + 24))
  {
    v1 = 1073741825;
  }

  else
  {
    v1 = 0x40000000;
  }

  v2 = SecAccessControlCreateWithFlags(*MEMORY[0x277CBECE8], *MEMORY[0x277CDBF18], v1, (v0 + 168));
  *(v0 + 288) = v2;
  if (v2)
  {
    v3 = *(v0 + 272);
    v4 = *(v0 + 280);
    v5 = *(v0 + 264);
    v19 = *(*(v0 + 200) + 16);
    v18 = v2;
    sub_225B2D108(MEMORY[0x277D84F90]);
    v6 = sub_225CCE2B4();
    *(v0 + 296) = v6;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 176;
    *(v0 + 24) = sub_225A14A5C;
    swift_continuation_init();
    *(v0 + 136) = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B198);
    *(v0 + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_225CCE914();
    (*(v3 + 32))(boxed_opaque_existential_1, v4, v5);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_225A156D0;
    *(v0 + 104) = &block_descriptor_69;
    [v19 evaluateAccessControl:v18 operation:3 options:v6 reply:?];
    (*(v3 + 8))(boxed_opaque_existential_1, v5);

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v8 = *(v0 + 168);
    v20 = 0;
    v9 = errorFromCFError(_:_:_:)(v8, 0xD000000000000040, 0x8000000225D17E90, &v20);
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 240);
    v11 = *(v0 + 216);
    v12 = *(v0 + 224);
    v13 = off_28105B918;
    v14 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v15 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v15));
    (*(v12 + 16))(v10, &v13[v14], v11);
    os_unfair_lock_unlock(&v13[v15]);
    DIPLogError(_:message:log:)(v9, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v9);

    (*(v12 + 8))(v10, v11);

    v16 = *(v0 + 8);

    return v16(0);
  }
}

uint64_t sub_225A14A5C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_225A14F34;
  }

  else
  {
    v2 = sub_225A14B98;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225A14B98()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 176);

  v3 = MEMORY[0x277D841D0];
  if (v2)
  {

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 256);
    v5 = *(v0 + 216);
    v6 = *(v0 + 224);
    v7 = off_28105B918;
    v8 = *(*off_28105B918 + *v3 + 16);
    v9 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v9));
    (*(v6 + 16))(v4, &v7[v8], v5);
    os_unfair_lock_unlock(&v7[v9]);
    v10 = sub_225CCD934();
    v11 = sub_225CCECF4();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 256);
    v14 = *(v0 + 216);
    v15 = *(v0 + 224);
    if (v12)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2259A7000, v10, v11, "coreidvd: acquireUserAuthentication evaluateAccessControl success", v16, 2u);
      MEMORY[0x22AA6F950](v16, -1, -1);
    }

    (*(v15 + 8))(v13, v14);
    v3 = MEMORY[0x277D841D0];
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 248);
  v18 = *(v0 + 216);
  v19 = *(v0 + 224);
  v20 = off_28105B918;
  v21 = *(*off_28105B918 + *v3 + 16);
  v22 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v22));
  (*(v19 + 16))(v17, &v20[v21], v18);
  os_unfair_lock_unlock(&v20[v22]);
  v23 = sub_225CCD934();
  v24 = sub_225CCECF4();
  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 288);
  if (v25)
  {
    v27 = swift_slowAlloc();
    *v27 = 67240192;
    *(v27 + 4) = v2 != 0;
    _os_log_impl(&dword_2259A7000, v23, v24, "coreidvd: acquireUserAuthentication evaluateAccessControl result = %{BOOL,public}d", v27, 8u);
    MEMORY[0x22AA6F950](v27, -1, -1);
    v28 = v23;
  }

  else
  {
    v28 = *(v0 + 288);
    v26 = v23;
  }

  (*(*(v0 + 224) + 8))(*(v0 + 248), *(v0 + 216));

  v29 = *(v0 + 8);

  return v29(v2 != 0);
}

uint64_t sub_225A14F34()
{
  v66 = v0;
  v65[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 312);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  swift_willThrow();

  *(v0 + 184) = v1;
  v4 = v1;
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 208);

    v6 = MEMORY[0x277D84F90];
    v7 = sub_225B2C248(MEMORY[0x277D84F90]);
    v8 = sub_225CCE954();
    v9 = *(v8 - 8);
    (*(v9 + 56))(v5, 1, 1, v8);
    LODWORD(v8) = (*(v9 + 48))(v5, 1, v8);
    sub_2259CB640(v5, &unk_27D73B050);
    if (v8)
    {
      v10 = 300;
    }

    else
    {
      v10 = 23;
    }

    v11 = sub_225B2C374(v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65[0] = v11;
    sub_225B2C4A0(v7, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v65);

    v13 = v65[0];
    v14 = sub_225B29AA0(0, 1, 1, v6);
    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_225B29AA0((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    v17 = &v14[56 * v16];
    *(v17 + 4) = 0xD000000000000021;
    *(v17 + 5) = 0x8000000225D17F10;
    *(v17 + 6) = 0xD000000000000025;
    *(v17 + 7) = 0x8000000225D173E0;
    *(v17 + 8) = 0xD00000000000001BLL;
    *(v17 + 9) = 0x8000000225D17F40;
    *(v17 + 10) = 171;
    sub_2259CB5EC();
    v18 = swift_allocError();
    *v19 = v10;
    *(v19 + 8) = v14;
    *(v19 + 16) = 0xD000000000000021;
    *(v19 + 24) = 0x8000000225D17F10;
    *(v19 + 32) = v13;
    *(v19 + 40) = 0;

    v20 = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 288);
    v22 = *(v0 + 240);
    v23 = *(v0 + 216);
    v24 = *(v0 + 224);
    v25 = off_28105B918;
    v26 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v27 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v27));
    (*(v24 + 16))(v22, &v25[v26], v23);
    os_unfair_lock_unlock(&v25[v27]);
    DIPLogError(_:message:log:)(v18, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v18);

    (*(v24 + 8))(v22, v23);
  }

  else
  {

    v28 = &unk_28105B000;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v29 = *(v0 + 312);
    v31 = *(v0 + 224);
    v30 = *(v0 + 232);
    v32 = *(v0 + 216);
    v33 = off_28105B918;
    v34 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v35 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v35));
    (*(v31 + 16))(v30, &v33[v34], v32);
    os_unfair_lock_unlock(&v33[v35]);
    v36 = v29;
    v37 = sub_225CCD934();
    v38 = sub_225CCECF4();

    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 312);
    v42 = *(v0 + 224);
    v41 = *(v0 + 232);
    v43 = *(v0 + 216);
    if (v39)
    {
      v64 = *(v0 + 232);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v65[0] = v45;
      *v44 = 136446210;
      swift_getErrorValue();
      v46 = sub_225CCFB24();
      v48 = sub_2259BE198(v46, v47, v65);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_2259A7000, v37, v38, "coreidvd: acquireUserAuthentication evaluateAccessControl fail %{public}s ", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      v49 = v45;
      v28 = &unk_28105B000;
      MEMORY[0x22AA6F950](v49, -1, -1);
      MEMORY[0x22AA6F950](v44, -1, -1);

      (*(v42 + 8))(v64, v43);
    }

    else
    {

      (*(v42 + 8))(v41, v43);
    }

    if (v28[290] != -1)
    {
      swift_once();
    }

    v50 = *(v0 + 248);
    v51 = *(v0 + 216);
    v52 = *(v0 + 224);
    v53 = off_28105B918;
    v54 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v55 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v55));
    (*(v52 + 16))(v50, &v53[v54], v51);
    os_unfair_lock_unlock(&v53[v55]);
    v56 = sub_225CCD934();
    v57 = sub_225CCECF4();
    v58 = os_log_type_enabled(v56, v57);
    v59 = *(v0 + 288);
    if (v58)
    {
      v60 = swift_slowAlloc();
      *v60 = 67240192;
      _os_log_impl(&dword_2259A7000, v56, v57, "coreidvd: acquireUserAuthentication evaluateAccessControl result = %{BOOL,public}d", v60, 8u);
      MEMORY[0x22AA6F950](v60, -1, -1);
      v61 = v56;
    }

    else
    {
      v61 = *(v0 + 288);
      v59 = v56;
    }

    (*(*(v0 + 224) + 8))(*(v0 + 248), *(v0 + 216));
  }

  v62 = *(v0 + 8);

  return v62(0);
}

void sub_225A156D0(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B190);
    sub_225CCE924();
  }

  else
  {
    if (a2)
    {
      sub_225CCE2D4();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B190);
    sub_225CCE934();
  }
}

uint64_t sub_225A157BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v8 + 80) = a5;
  *(v8 + 88) = v7;
  *(v8 + 145) = a7;
  *(v8 + 144) = a6;
  *(v8 + 64) = a2;
  *(v8 + 72) = a3;
  *(v8 + 56) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = type metadata accessor for DIPSignpost.Config(0);
  *(v8 + 112) = swift_task_alloc();
  type metadata accessor for DIPSignpost(0);
  *(v8 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225A158C4, 0, 0);
}

uint64_t sub_225A158C4()
{
  if (qword_27D73A2A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = __swift_project_value_buffer(*(v0 + 104), qword_27D740A98);
  sub_2259CB588(v3, v1);
  DIPSignpost.init(_:)(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *v4 = v0;
  v4[1] = sub_225A159B8;
  v5 = *(v0 + 144);
  v6 = *(v0 + 80);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);

  return sub_225A15E84(v8, v7, v6, v5);
}

uint64_t sub_225A159B8()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_225A15DF8;
  }

  else
  {
    v2 = sub_225A15ACC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225A15ACC()
{
  v25 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 145);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  LOBYTE(v24[0]) = 0;
  sub_225A1805C(v4, v5, v3, v24, v2, v0 + 16);
  if (v1)
  {
LABEL_2:
    sub_2259CB6A0(*(v0 + 120));

    v6 = *(v0 + 8);
    goto LABEL_5;
  }

  if (!*(v0 + 40))
  {
    v9 = *(v0 + 96);
    sub_2259CB640(v0 + 16, &qword_27D73B078);
    v10 = MEMORY[0x277D84F90];
    v11 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v13 = v12;
    v14 = sub_225CCE954();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v9, 1, 1, v14);
    LODWORD(v14) = (*(v15 + 48))(v9, 1, v14);
    sub_2259CB640(v9, &unk_27D73B050);
    if (v14)
    {
      v16 = 107;
    }

    else
    {
      v16 = 23;
    }

    v17 = sub_225B2C374(v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24[0] = v17;
    sub_225B2C4A0(v11, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v24);

    v19 = v24[0];
    v20 = sub_225B29AA0(0, 1, 1, v10);
    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    if (v22 >= v21 >> 1)
    {
      v20 = sub_225B29AA0((v21 > 1), v22 + 1, 1, v20);
    }

    *(v20 + 2) = v22 + 1;
    v23 = &v20[56 * v22];
    *(v23 + 4) = 0xD000000000000046;
    *(v23 + 5) = 0x8000000225D17640;
    *(v23 + 6) = 0xD000000000000025;
    *(v23 + 7) = 0x8000000225D173E0;
    *(v23 + 8) = 0xD000000000000049;
    *(v23 + 9) = 0x8000000225D17690;
    *(v23 + 10) = 215;
    *v13 = v16;
    *(v13 + 8) = v20;
    *(v13 + 16) = 0xD000000000000046;
    *(v13 + 24) = 0x8000000225D17640;
    *(v13 + 32) = v19;
    *(v13 + 40) = 0;
    swift_willThrow();
    goto LABEL_2;
  }

  v7 = *(v0 + 120);
  sub_2259A9C20((v0 + 16), *(v0 + 56));
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v7);

  v6 = *(v0 + 8);
LABEL_5:

  return v6();
}

uint64_t sub_225A15DF8()
{
  sub_2259CB6A0(*(v0 + 120));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225A15E84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 376) = a4;
  *(v5 + 304) = a3;
  *(v5 + 312) = v4;
  *(v5 + 288) = a1;
  *(v5 + 296) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225A15F40, 0, 0);
}

uint64_t sub_225A15F40()
{
  v1 = *(v0 + 304);
  if (v1 && *(v1 + 16) && (v2 = sub_2259F1BAC(5u), (v3 & 1) != 0))
  {
    v4 = (*(v1 + 56) + 16 * v2);
    if (*v4 == 1702195828 && v4[1] == 0xE400000000000000)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_225CCF934();
    }
  }

  else
  {
    v6 = 0;
  }

  *(v0 + 377) = v6 & 1;
  v7 = *(*(v0 + 312) + 16);
  v8 = swift_task_alloc();
  *(v0 + 344) = v8;
  *v8 = v0;
  v8[1] = sub_225A16054;
  v9 = *(v0 + 376);
  v10 = *(v0 + 296);
  v11 = *(v0 + 304);
  v12 = *(v0 + 288);

  return sub_2259F8828(v12, v10, v7, v11, v9);
}

uint64_t sub_225A16054(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[44] = a1;
  v4[45] = a2;
  v4[46] = v2;

  if (v2)
  {
    v5 = sub_225A16E0C;
  }

  else
  {
    v5 = sub_225A1616C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_225A1616C()
{
  v108 = v0;
  v1 = *(v0 + 360);
  if (v1 >> 62)
  {
    v2 = sub_225CCF144();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 != 2)
  {
    v9 = *(v0 + 336);

    v10 = MEMORY[0x277D84F90];
    v11 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v101 = swift_allocError();
    v13 = v12;
    v14 = sub_225CCE954();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v9, 1, 1, v14);
    LODWORD(v14) = (*(v15 + 48))(v9, 1, v14);
    sub_2259CB640(v9, &unk_27D73B050);
    if (v14)
    {
      v16 = 235;
    }

    else
    {
      v16 = 23;
    }

    v17 = sub_225B2C374(v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v102 = v17;
    sub_225B2C4A0(v11, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v102);

    v19 = v102;
    v20 = sub_225B29AA0(0, 1, 1, v10);
    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    if (v22 >= v21 >> 1)
    {
      v20 = sub_225B29AA0((v21 > 1), v22 + 1, 1, v20);
    }

    v23 = *(v0 + 352);
    *(v20 + 2) = v22 + 1;
    v24 = &v20[56 * v22];
    *(v24 + 4) = 0xD000000000000030;
    *(v24 + 5) = 0x8000000225D17DA0;
    *(v24 + 6) = 0xD000000000000025;
    *(v24 + 7) = 0x8000000225D173E0;
    *(v24 + 8) = 0xD00000000000003ELL;
    *(v24 + 9) = 0x8000000225D17D60;
    *(v24 + 10) = 231;
    *v13 = v16;
    *(v13 + 8) = v20;
    *(v13 + 16) = 0xD000000000000030;
    *(v13 + 24) = 0x8000000225D17DA0;
    *(v13 + 32) = v19;
    *(v13 + 40) = 0;
    v25 = v101;
    swift_willThrow();
    goto LABEL_30;
  }

  v3 = *(v0 + 296);
  v4 = *(v0 + 368);
  if ((*(v0 + 377) & 1) == 0)
  {
    v5 = *(v0 + 288);
    v6 = sub_225CCE474();
    sub_225A1DC14(v5, v3, 0, 0xF000000000000000, v6, v7);
    if (v4)
    {
      v8 = v4;
LABEL_15:

      v29 = v8;
      v30 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v25 = swift_allocError();
      v32 = v31;
      swift_getErrorValue();
      v33 = *(v0 + 208);
      v34 = v8;
      sub_225B21FAC(v33, &v102);

      v35 = v103;
      if (v103)
      {
        v96 = v104;
        v98 = v102;
        v36 = v106;
        v92 = v107;
        v94 = v105;
      }

      else
      {
        *(v0 + 264) = v8;
        v37 = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
        sub_2259D8718(0, &qword_281059A90);
        if (swift_dynamicCast())
        {
          v38 = *(v0 + 272);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v40 = [v38 code];
          v41 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v41;
          *(inited + 40) = v40;
          v36 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060);

          v42 = v8;
          v94 = 0;
          v96 = 0;
          v98 = 0;
          v35 = MEMORY[0x277D84F90];
        }

        else
        {
          v46 = *(v0 + 320);
          *(v0 + 280) = v8;
          v47 = v8;
          v48 = sub_225CCE954();
          v49 = swift_dynamicCast();
          v50 = *(v48 - 8);
          (*(v50 + 56))(v46, v49 ^ 1u, 1, v48);
          LODWORD(v50) = (*(v50 + 48))(v46, 1, v48);
          sub_2259CB640(v46, &unk_27D73B050);
          if (v50)
          {
            v51 = 0;
          }

          else
          {
            v51 = 23;
          }

          v98 = v51;
          v35 = MEMORY[0x277D84F90];
          v36 = sub_225B2C374(MEMORY[0x277D84F90]);
          v52 = v8;
          v94 = 0x8000000225D17DE0;
          v96 = 0xD000000000000021;
        }

        v92 = v8;
      }

      v53 = swift_isUniquelyReferenced_nonNull_native();
      v102 = v36;
      sub_225B2C4A0(v30, sub_225B2AC40, 0, v53, &v102);

      v54 = v102;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_225B29AA0(0, *(v35 + 2) + 1, 1, v35);
      }

      v56 = *(v35 + 2);
      v55 = *(v35 + 3);
      if (v56 >= v55 >> 1)
      {
        v35 = sub_225B29AA0((v55 > 1), v56 + 1, 1, v35);
      }

      v23 = *(v0 + 352);

      *(v35 + 2) = v56 + 1;
      v57 = &v35[56 * v56];
      *(v57 + 4) = 0xD000000000000021;
      *(v57 + 5) = 0x8000000225D17DE0;
      *(v57 + 6) = 0xD000000000000025;
      *(v57 + 7) = 0x8000000225D173E0;
      *(v57 + 8) = 0xD00000000000003ELL;
      *(v57 + 9) = 0x8000000225D17D60;
      *(v57 + 10) = 247;
      *v32 = v98;
      *(v32 + 8) = v35;
      *(v32 + 16) = v96;
      *(v32 + 24) = v94;
      *(v32 + 32) = v54;
      *(v32 + 40) = v92;
      swift_willThrow();

LABEL_30:
      v58 = v0;

      v59 = v25;
      v60 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v62 = v61;
      swift_getErrorValue();
      v63 = v58[23];
      v64 = v25;
      sub_225B21FAC(v63, &v102);

      v65 = v103;
      v100 = v62;
      if (v103)
      {
        v66 = v58;
        v97 = v104;
        v99 = v102;
        v67 = v106;
        v93 = v107;
        v95 = v105;
      }

      else
      {
        v58[29] = v25;
        v68 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
        sub_2259D8718(0, &qword_281059A90);
        if (swift_dynamicCast())
        {
          v69 = v58[30];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          v66 = v58;
          v70 = swift_initStackObject();
          *(v70 + 16) = xmmword_225CD30F0;
          *(v70 + 32) = 20;
          v71 = [v69 code];
          v72 = MEMORY[0x277D83BF8];
          *(v70 + 64) = MEMORY[0x277D83B88];
          *(v70 + 72) = v72;
          *(v70 + 40) = v71;
          v67 = sub_225B2C374(v70);
          swift_setDeallocating();
          sub_2259CB640(v70 + 32, &qword_27D73B060);

          v73 = v25;
          v97 = 0;
          v99 = 0;
          v95 = 0;
          v65 = MEMORY[0x277D84F90];
        }

        else
        {
          v74 = v58[41];
          v58[31] = v25;
          v75 = v25;
          v76 = sub_225CCE954();
          v66 = v58;
          v77 = swift_dynamicCast();
          v78 = *(v76 - 8);
          (*(v78 + 56))(v74, v77 ^ 1u, 1, v76);
          LODWORD(v78) = (*(v78 + 48))(v74, 1, v76);
          sub_2259CB640(v74, &unk_27D73B050);
          if (v78)
          {
            v79 = 0;
          }

          else
          {
            v79 = 23;
          }

          v99 = v79;
          v65 = MEMORY[0x277D84F90];
          v67 = sub_225B2C374(MEMORY[0x277D84F90]);
          v80 = v25;
          v95 = 0x8000000225D17D30;
          v97 = 0xD000000000000029;
        }

        v93 = v25;
      }

      v81 = swift_isUniquelyReferenced_nonNull_native();
      v102 = v67;
      sub_225B2C4A0(v60, sub_225B2AC40, 0, v81, &v102);

      v82 = v102;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_225B29AA0(0, *(v65 + 2) + 1, 1, v65);
      }

      v84 = *(v65 + 2);
      v83 = *(v65 + 3);
      if (v84 >= v83 >> 1)
      {
        v65 = sub_225B29AA0((v83 > 1), v84 + 1, 1, v65);
      }

      *(v65 + 2) = v84 + 1;
      v85 = &v65[56 * v84];
      *(v85 + 4) = 0xD000000000000029;
      *(v85 + 5) = 0x8000000225D17D30;
      *(v85 + 6) = 0xD000000000000025;
      *(v85 + 7) = 0x8000000225D173E0;
      *(v85 + 8) = 0xD00000000000003ELL;
      *(v85 + 9) = 0x8000000225D17D60;
      *(v85 + 10) = 250;
      *v100 = v99;
      *(v100 + 8) = v65;
      *(v100 + 16) = v97;
      *(v100 + 24) = v95;
      *(v100 + 32) = v82;
      *(v100 + 40) = v93;
      swift_willThrow();

      v86 = v66[1];
      goto LABEL_44;
    }
  }

  v26 = *(v0 + 288);
  v27 = sub_225CCE474();
  sub_225A1DC14(v26, v3, 0, 0xF000000000000000, v27, v28);
  v8 = v4;
  if (v4)
  {
    goto LABEL_15;
  }

  v43 = *(v0 + 352);
  v45 = *(v0 + 288);
  v44 = *(v0 + 296);

  sub_225A1E4B4(v43, v45, v44);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v87 = MEMORY[0x22AA6DA80](0, *(v0 + 360));
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_58;
    }

    v87 = *(*(v0 + 360) + 32);
  }

  v88 = v87;
  v90 = *(v0 + 288);
  v89 = *(v0 + 296);
  type metadata accessor for DIPKeystoreKeychain();
  static DIPKeystoreKeychain.storeKeychainCertificate(_:label:failIfDuplicate:)(v88, v90, v89, 0);

  if ((v1 & 0xC000000000000001) == 0)
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v91 = *(*(v0 + 360) + 40);
      goto LABEL_54;
    }

LABEL_58:
    __break(1u);
    return;
  }

  v91 = MEMORY[0x22AA6DA80](1, *(v0 + 360));
LABEL_54:

  static DIPKeystoreKeychain.storeKeychainCertificate(_:label:failIfDuplicate:)(v91, 0xD000000000000017, 0x8000000225D17430, 0);

  v86 = *(v0 + 8);
LABEL_44:

  v86();
}

uint64_t sub_225A16E0C()
{
  v40 = v0;
  v1 = v0[46];
  v2 = v1;
  v3 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v33 = v4;
  swift_getErrorValue();
  v5 = v0[23];
  v6 = v1;
  sub_225B21FAC(v5, &v34);

  v7 = v35;
  if (v35)
  {
    v31 = v36;
    v32 = v34;
    v8 = v38;
    v29 = v39;
    v30 = v37;
  }

  else
  {
    v0[29] = v1;
    v9 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259D8718(0, &qword_281059A90);
    if (swift_dynamicCast())
    {
      v10 = v0[30];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v12 = [v10 code];
      v13 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v13;
      *(inited + 40) = v12;
      v8 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v14 = v1;
      v31 = 0;
      v32 = 0;
      v30 = 0;
      v7 = MEMORY[0x277D84F90];
    }

    else
    {
      v15 = v0[41];
      v0[31] = v1;
      v16 = v1;
      v17 = sub_225CCE954();
      v18 = swift_dynamicCast();
      v19 = *(v17 - 8);
      (*(v19 + 56))(v15, v18 ^ 1u, 1, v17);
      LODWORD(v19) = (*(v19 + 48))(v15, 1, v17);
      sub_2259CB640(v15, &unk_27D73B050);
      if (v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = 23;
      }

      v32 = v20;
      v7 = MEMORY[0x277D84F90];
      v8 = sub_225B2C374(MEMORY[0x277D84F90]);
      v21 = v1;
      v30 = 0x8000000225D17D30;
      v31 = 0xD000000000000029;
    }

    v29 = v1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v8;
  sub_225B2C4A0(v3, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v34);

  v23 = v34;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_225B29AA0(0, *(v7 + 2) + 1, 1, v7);
  }

  v25 = *(v7 + 2);
  v24 = *(v7 + 3);
  if (v25 >= v24 >> 1)
  {
    v7 = sub_225B29AA0((v24 > 1), v25 + 1, 1, v7);
  }

  *(v7 + 2) = v25 + 1;
  v26 = &v7[56 * v25];
  *(v26 + 4) = 0xD000000000000029;
  *(v26 + 5) = 0x8000000225D17D30;
  *(v26 + 6) = 0xD000000000000025;
  *(v26 + 7) = 0x8000000225D173E0;
  *(v26 + 8) = 0xD00000000000003ELL;
  *(v26 + 9) = 0x8000000225D17D60;
  *(v26 + 10) = 250;
  *v33 = v32;
  *(v33 + 8) = v7;
  *(v33 + 16) = v31;
  *(v33 + 24) = v30;
  *(v33 + 32) = v23;
  *(v33 + 40) = v29;
  swift_willThrow();

  v27 = v0[1];

  return v27();
}

uint64_t static DIPKeystoreKeychain.storeKeychainCertificate(_:label:failIfDuplicate:)(void *a1, uint64_t a2, unint64_t a3, int a4)
{
  v111 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v114 = &v109 - v9;
  v118 = sub_225CCD954();
  v117 = *(v118 - 8);
  v11 = MEMORY[0x28223BE20](v118, v10);
  v113 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v109 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v112 = (&v109 - v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD73A0;
  *(inited + 32) = sub_225CCE474();
  *(inited + 40) = v20;
  type metadata accessor for SecCertificate(0);
  *(inited + 72) = v21;
  *(inited + 48) = a1;
  *(inited + 80) = sub_225CCE474();
  *(inited + 88) = v22;
  *(inited + 120) = MEMORY[0x277D837D0];
  v115 = a2;
  *(inited + 96) = a2;
  *(inited + 104) = a3;
  *(inited + 128) = sub_225CCE474();
  *(inited + 136) = v23;
  v24 = *MEMORY[0x277CDC230];
  type metadata accessor for CFString(0);
  *(inited + 168) = v25;
  *(inited + 144) = v24;
  *(inited + 176) = sub_225CCE474();
  *(inited + 184) = v26;
  v27 = *MEMORY[0x277CDBF00];
  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B088);
  *(inited + 192) = v27;
  v28 = v27;
  v29 = a1;

  v30 = v24;
  sub_225B2C92C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B090);
  swift_arrayDestroy();
  v31 = sub_225CCE2B4();
  v32 = SecItemAdd(v31, 0);

  if (v32 != -25299)
  {
    if (!v32)
    {
      v33 = a3;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v34 = off_28105B918;
      v35 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v36 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v36));
      v37 = v117;
      v38 = v112;
      v39 = v118;
      (*(v117 + 16))(v112, &v34[v35], v118);
      os_unfair_lock_unlock(&v34[v36]);

      v40 = sub_225CCD934();
      v41 = sub_225CCED04();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v119 = v43;
        *v42 = 136315138;
        *(v42 + 4) = sub_2259BE198(v115, v33, &v119);
        _os_log_impl(&dword_2259A7000, v40, v41, "certificate %s is stored in the keychain", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x22AA6F950](v43, -1, -1);
        MEMORY[0x22AA6F950](v42, -1, -1);
      }

      return (*(v37 + 8))(v38, v39);
    }

    goto LABEL_9;
  }

  v112 = v29;
  v110 = v16;
  if (v111)
  {
LABEL_9:
    v45 = a3;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v46 = off_28105B918;
    v47 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v48 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v48));
    v49 = v117;
    v50 = v113;
    v51 = v118;
    (*(v117 + 16))(v113, &v46[v47], v118);
    os_unfair_lock_unlock(&v46[v48]);

    v52 = sub_225CCD934();
    v53 = sub_225CCED14();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v119 = v55;
      *v54 = 136315394;
      *(v54 + 4) = sub_2259BE198(v115, v45, &v119);
      *(v54 + 12) = 2082;
      v56 = SecCopyErrorMessageString(v32, 0);
      if (v56)
      {
        v57 = v56;
        v58 = sub_225CCE474();
        v60 = v59;
      }

      else
      {
        v58 = 0;
        v60 = 0xE000000000000000;
      }

      v66 = sub_2259BE198(v58, v60, &v119);

      *(v54 + 14) = v66;
      _os_log_impl(&dword_2259A7000, v52, v53, "failed to add certificate to key chain item: label = %s, error = %{public}s", v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA6F950](v55, -1, -1);
      MEMORY[0x22AA6F950](v54, -1, -1);

      (*(v117 + 8))(v50, v118);
    }

    else
    {

      (*(v49 + 8))(v50, v51);
    }

    v119 = 0;
    v120 = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000032, 0x8000000225D176E0);
    MEMORY[0x22AA6CE70](v115, v45);
    v67 = v119;
    v68 = v120;
    v118 = 0x8000000225D173E0;
    v117 = 0x8000000225D17720;
    v69 = MEMORY[0x277D84F90];
    v70 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v72 = v71;
    v73 = sub_225CCE954();
    v74 = *(v73 - 8);
    v75 = v114;
    (*(v74 + 56))(v114, 1, 1, v73);
    LODWORD(v73) = (*(v74 + 48))(v75, 1, v73);
    sub_2259CB640(v75, &unk_27D73B050);
    if (v73)
    {
      v76 = 241;
    }

    else
    {
      v76 = 23;
    }

    v77 = sub_225B2C374(v69);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v119 = v77;
    sub_225B2C4A0(v70, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v119);

    v79 = v119;
    v80 = sub_225B29AA0(0, 1, 1, v69);
    v82 = *(v80 + 2);
    v81 = *(v80 + 3);
    if (v82 >= v81 >> 1)
    {
      v80 = sub_225B29AA0((v81 > 1), v82 + 1, 1, v80);
    }

    *(v80 + 2) = v82 + 1;
    v83 = &v80[56 * v82];
    *(v83 + 4) = v67;
    *(v83 + 5) = v68;
    v84 = v118;
    *(v83 + 6) = 0xD000000000000025;
    *(v83 + 7) = v84;
    v85 = v117;
    *(v83 + 8) = 0xD000000000000032;
    *(v83 + 9) = v85;
    *(v83 + 10) = 414;
    *v72 = v76;
    *(v72 + 8) = v80;
    *(v72 + 16) = v67;
    *(v72 + 24) = v68;
    *(v72 + 32) = v79;
    *(v72 + 40) = 0;
    return swift_willThrow();
  }

  v113 = v30;
  v61 = SecCertificateCopySerialNumberData(v112, 0);
  v62 = a3;
  if (v61)
  {
    v63 = v61;
    v114 = sub_225CCCFA4();
    v65 = v64;
  }

  else
  {
    v114 = 0;
    v65 = 0xF000000000000000;
  }

  v86 = v118;
  v87 = v117;
  v88 = v110;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v89 = off_28105B918;
  v90 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v91 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v91));
  (*(v87 + 16))(v88, &v89[v90], v86);
  os_unfair_lock_unlock(&v89[v91]);

  v92 = v114;
  sub_2259CB6FC(v114, v65);
  v93 = sub_225CCD934();
  v94 = sub_225CCED04();

  sub_2259B97A8(v92, v65);
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v119 = v96;
    *v95 = 136315394;
    *(v95 + 4) = sub_2259BE198(v115, v62, &v119);
    *(v95 + 12) = 2082;
    if (v65 >> 60 == 15)
    {
      v97 = 0xEB00000000656C62;
      v98 = 0x616C696176616E75;
    }

    else
    {
      v99 = v116;
      v100 = sub_225B34448(v114, v65);
      v116 = v99;
      v121 = v100;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
      sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0);
      v101 = sub_225CCE384();
      v97 = v102;

      v98 = v101;
    }

    v103 = sub_2259BE198(v98, v97, &v119);

    *(v95 + 14) = v103;
    _os_log_impl(&dword_2259A7000, v93, v94, "certificate %s already exists in the keychain, serial# = %{public}s", v95, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v96, -1, -1);
    MEMORY[0x22AA6F950](v95, -1, -1);

    (*(v117 + 8))(v110, v118);
  }

  else
  {

    (*(v87 + 8))(v88, v86);
  }

  v104 = v112;
  v105 = sub_225CCE474();
  v106 = v114;
  v107 = v116;
  sub_225A1DC14(0, 0, v114, v65, v105, v108);

  if (!v107)
  {
    static DIPKeystoreKeychain.storeKeychainCertificate(_:label:failIfDuplicate:)(v104, v115, v62, 1);
  }

  return sub_2259B97A8(v106, v65);
}

uint64_t sub_225A1805C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unsigned __int8 *a4@<X3>, int a5@<W4>, unint64_t a6@<X8>)
{
  v7 = v6;
  v115 = a5;
  v116 = a3;
  v117 = a6;
  v124[29] = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v118 = &v113 - v13;
  v14 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD73A0;
  *(inited + 32) = sub_225CCE474();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v23;
  *(inited + 48) = a1;
  v119 = a1;
  *(inited + 56) = a2;
  *(inited + 80) = sub_225CCE474();
  *(inited + 88) = v24;
  v25 = *(v7 + 16);
  *(inited + 120) = sub_2259D8718(0, &qword_27D73B188);
  *(inited + 96) = v25;
  *(inited + 128) = sub_225CCE474();
  *(inited + 136) = v26;
  v27 = *MEMORY[0x277CDC250];
  type metadata accessor for CFString(0);
  *(inited + 168) = v28;
  *(inited + 144) = v27;
  *(inited + 176) = sub_225CCE474();
  *(inited + 184) = v29;
  *(inited + 216) = MEMORY[0x277D839B0];
  *(inited + 192) = 1;
  v120 = a2;

  v30 = v25;
  v31 = v27;
  sub_225B2C92C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B090);
  swift_arrayDestroy();
  v124[0] = 0;
  if (qword_27D73A2C8 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v14, qword_27D740AF8);
  sub_2259CB588(v32, v17);
  DIPSignpost.init(_:)(v17, v21);
  v33 = sub_225CCE2B4();

  v34 = SecItemCopyMatching(v33, v124);

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v35 = v21;
  if (v34 != -25300)
  {
    if (v34)
    {
      v117 = v21;
      v122 = 0;
      v123 = 0xE000000000000000;
      sub_225CCF204();
      MEMORY[0x22AA6CE70](0xD000000000000025, 0x8000000225D17C50);
      MEMORY[0x22AA6CE70](v119, v120);
      MEMORY[0x22AA6CE70](0x7473206874697720, 0xEF203D2073757461);
      v121 = v34;
      v45 = sub_225CCF824();
      MEMORY[0x22AA6CE70](v45);

      v46 = v123;
      v119 = 0x8000000225D173E0;
      v120 = v122;
      v116 = 0x8000000225D17C80;
      v47 = MEMORY[0x277D84F90];
      v48 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v50 = v49;
      v51 = sub_225CCE954();
      v52 = *(v51 - 8);
      v53 = v118;
      (*(v52 + 56))(v118, 1, 1, v51);
      LODWORD(v51) = (*(v52 + 48))(v53, 1, v51);
      sub_2259CB640(v53, &unk_27D73B050);
      if (v51)
      {
        v54 = 242;
      }

      else
      {
        v54 = 23;
      }

      v55 = sub_225B2C374(v47);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v122 = v55;
      sub_225B2C4A0(v48, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v122);

      v57 = v122;
      v58 = sub_225B29AA0(0, 1, 1, v47);
      v60 = *(v58 + 2);
      v59 = *(v58 + 3);
      if (v60 >= v59 >> 1)
      {
        v58 = sub_225B29AA0((v59 > 1), v60 + 1, 1, v58);
      }

      *(v58 + 2) = v60 + 1;
      v61 = &v58[56 * v60];
      v63 = v119;
      v62 = v120;
      *(v61 + 4) = v120;
      *(v61 + 5) = v46;
      *(v61 + 6) = 0xD000000000000025;
      *(v61 + 7) = v63;
      v64 = v116;
      v35 = v117;
      *(v61 + 8) = 0xD000000000000041;
      *(v61 + 9) = v64;
      v65 = 269;
    }

    else
    {
      if (v124[0])
      {
        v36 = swift_unknownObjectRetain();
        v37 = CFGetTypeID(v36);
        if (v37 == SecKeyGetTypeID())
        {
          type metadata accessor for SecKey(0);
          swift_unknownObjectRetain();
          v38 = swift_dynamicCastUnknownClassUnconditional();
          v39 = v116;
          if (v116 && *(v116 + 16) && (v40 = sub_2259F1BAC(1u), (v41 & 1) != 0))
          {
            v42 = *(*(v39 + 56) + 16 * v40);
          }

          else
          {
            v42 = 0;
            v43 = 0xE000000000000000;
          }

          v79 = (HIBYTE(v43) & 0xF);
          v80 = v42 & 0xFFFFFFFFFFFFLL;
          if ((v43 & 0x2000000000000000) != 0)
          {
            v81 = HIBYTE(v43) & 0xF;
          }

          else
          {
            v81 = v42 & 0xFFFFFFFFFFFFLL;
          }

          if (!v81)
          {
            v100 = v21;

            goto LABEL_91;
          }

          if ((v43 & 0x1000000000000000) != 0)
          {
            v100 = v21;
            v84 = sub_2259F3F08(v42, v43, 10);
            v112 = v111;

            if ((v112 & 1) == 0)
            {
              goto LABEL_92;
            }

            goto LABEL_91;
          }

          if ((v43 & 0x2000000000000000) != 0)
          {
            v122 = v42;
            v123 = v43 & 0xFFFFFFFFFFFFFFLL;
            if (v42 == 43)
            {
              if (v79)
              {
                if (--v79)
                {
                  v84 = 0;
                  v95 = &v122 + 1;
                  while (1)
                  {
                    v96 = *v95 - 48;
                    if (v96 > 9)
                    {
                      break;
                    }

                    v97 = 10 * v84;
                    if ((v84 * 10) >> 64 != (10 * v84) >> 63)
                    {
                      break;
                    }

                    v84 = v97 + v96;
                    if (__OFADD__(v97, v96))
                    {
                      break;
                    }

                    ++v95;
                    if (!--v79)
                    {
LABEL_88:
                      v100 = v21;
                      goto LABEL_90;
                    }
                  }
                }

                goto LABEL_89;
              }

LABEL_101:
              __break(1u);
            }

            if (v42 != 45)
            {
              if (v79)
              {
                v84 = 0;
                v101 = &v122;
                while (1)
                {
                  v102 = *v101 - 48;
                  if (v102 > 9)
                  {
                    break;
                  }

                  v103 = 10 * v84;
                  if ((v84 * 10) >> 64 != (10 * v84) >> 63)
                  {
                    break;
                  }

                  v84 = v103 + v102;
                  if (__OFADD__(v103, v102))
                  {
                    break;
                  }

                  v101 = (v101 + 1);
                  if (!--v79)
                  {
                    goto LABEL_88;
                  }
                }
              }

              goto LABEL_89;
            }

            if (v79)
            {
              if (--v79)
              {
                v84 = 0;
                v88 = &v122 + 1;
                while (1)
                {
                  v89 = *v88 - 48;
                  if (v89 > 9)
                  {
                    break;
                  }

                  v90 = 10 * v84;
                  if ((v84 * 10) >> 64 != (10 * v84) >> 63)
                  {
                    break;
                  }

                  v84 = v90 - v89;
                  if (__OFSUB__(v90, v89))
                  {
                    break;
                  }

                  ++v88;
                  if (!--v79)
                  {
                    goto LABEL_88;
                  }
                }
              }

              goto LABEL_89;
            }
          }

          else
          {
            if ((v42 & 0x1000000000000000) != 0)
            {
              v79 = ((v43 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v79 = sub_225CCF354();
            }

            v82 = *v79;
            if (v82 == 43)
            {
              if (v80 >= 1)
              {
                v91 = v80 - 1;
                if (v80 != 1)
                {
                  if (v79)
                  {
                    v84 = 0;
                    v92 = v79 + 1;
                    while (1)
                    {
                      v93 = *v92 - 48;
                      if (v93 > 9)
                      {
                        goto LABEL_89;
                      }

                      v94 = 10 * v84;
                      if ((v84 * 10) >> 64 != (10 * v84) >> 63)
                      {
                        goto LABEL_89;
                      }

                      v84 = v94 + v93;
                      if (__OFADD__(v94, v93))
                      {
                        goto LABEL_89;
                      }

                      ++v92;
                      if (!--v91)
                      {
LABEL_80:
                        v100 = v21;
                        LOBYTE(v79) = 0;
                        goto LABEL_90;
                      }
                    }
                  }

                  goto LABEL_81;
                }

                goto LABEL_89;
              }

              goto LABEL_100;
            }

            if (v82 != 45)
            {
              if (v80)
              {
                if (v79)
                {
                  v84 = 0;
                  while (1)
                  {
                    v98 = *v79 - 48;
                    if (v98 > 9)
                    {
                      goto LABEL_89;
                    }

                    v99 = 10 * v84;
                    if ((v84 * 10) >> 64 != (10 * v84) >> 63)
                    {
                      goto LABEL_89;
                    }

                    v84 = v99 + v98;
                    if (__OFADD__(v99, v98))
                    {
                      goto LABEL_89;
                    }

                    ++v79;
                    if (!--v80)
                    {
                      goto LABEL_80;
                    }
                  }
                }

                goto LABEL_81;
              }

LABEL_89:
              v100 = v21;
              v84 = 0;
              LOBYTE(v79) = 1;
LABEL_90:
              LOBYTE(v121) = v79;
              v104 = v79;

              if ((v104 & 1) == 0)
              {
LABEL_92:
                LOBYTE(v122) = v114;
                v105 = type metadata accessor for IdentityKeyWithKeychain();
                v106 = swift_allocObject();
                v107 = v120;

                v108 = v30;
                v109 = v38;
                IdentityKeyWithKeychain.init(label:privateKey:attestationType:laContext:validity:isTemporary:)(v119, v107, v109, &v122, v30, v84, 0, v115 & 1);
                v110 = v117;
                *(v117 + 24) = v105;
                v110[4] = &protocol witness table for IdentityKeyWithKeychain;
                swift_unknownObjectRelease();

                *v110 = v106;
                sub_2259CB6A0(v100);
                return swift_unknownObjectRelease();
              }

LABEL_91:
              v84 = 15;
              goto LABEL_92;
            }

            if (v80 >= 1)
            {
              v83 = v80 - 1;
              if (v80 != 1)
              {
                if (v79)
                {
                  v84 = 0;
                  v85 = v79 + 1;
                  while (1)
                  {
                    v86 = *v85 - 48;
                    if (v86 > 9)
                    {
                      goto LABEL_89;
                    }

                    v87 = 10 * v84;
                    if ((v84 * 10) >> 64 != (10 * v84) >> 63)
                    {
                      goto LABEL_89;
                    }

                    v84 = v87 - v86;
                    if (__OFSUB__(v87, v86))
                    {
                      goto LABEL_89;
                    }

                    ++v85;
                    if (!--v83)
                    {
                      goto LABEL_80;
                    }
                  }
                }

LABEL_81:
                v100 = v21;
                v84 = 0;
                goto LABEL_90;
              }

              goto LABEL_89;
            }

            __break(1u);
          }

          __break(1u);
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        swift_unknownObjectRelease();
      }

      v122 = 0;
      v123 = 0xE000000000000000;
      sub_225CCF204();
      MEMORY[0x22AA6CE70](0xD000000000000025, 0x8000000225D17CD0);
      MEMORY[0x22AA6CE70](v119, v120);
      MEMORY[0x22AA6CE70](0xD000000000000020, 0x8000000225D17D00);
      v46 = v123;
      v119 = 0x8000000225D173E0;
      v120 = v122;
      v117 = 0x8000000225D17C80;
      v66 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v50 = v67;
      v68 = sub_225CCE954();
      v69 = *(v68 - 8);
      v70 = v118;
      (*(v69 + 56))(v118, 1, 1, v68);
      LODWORD(v68) = (*(v69 + 48))(v70, 1, v68);
      sub_2259CB640(v70, &unk_27D73B050);
      if (v68)
      {
        v54 = 242;
      }

      else
      {
        v54 = 23;
      }

      v71 = MEMORY[0x277D84F90];
      v72 = sub_225B2C374(MEMORY[0x277D84F90]);
      v73 = swift_isUniquelyReferenced_nonNull_native();
      v122 = v72;
      sub_225B2C4A0(v66, sub_225B2AC40, 0, v73, &v122);

      v57 = v122;
      v58 = sub_225B29AA0(0, 1, 1, v71);
      v75 = *(v58 + 2);
      v74 = *(v58 + 3);
      if (v75 >= v74 >> 1)
      {
        v58 = sub_225B29AA0((v74 > 1), v75 + 1, 1, v58);
      }

      *(v58 + 2) = v75 + 1;
      v61 = &v58[56 * v75];
      v76 = v119;
      v62 = v120;
      *(v61 + 4) = v120;
      *(v61 + 5) = v46;
      *(v61 + 6) = 0xD000000000000025;
      *(v61 + 7) = v76;
      v77 = v117;
      *(v61 + 8) = 0xD000000000000041;
      *(v61 + 9) = v77;
      v65 = 274;
    }

    *(v61 + 10) = v65;
    *v50 = v54;
    *(v50 + 8) = v58;
    *(v50 + 16) = v62;
    *(v50 + 24) = v46;
    *(v50 + 32) = v57;
    *(v50 + 40) = 0;
    swift_willThrow();
    sub_2259CB6A0(v35);
    return swift_unknownObjectRelease();
  }

  sub_2259CB6A0(v21);
  v44 = v117;
  *v117 = 0u;
  *(v44 + 16) = 0u;
  *(v44 + 32) = 0;
  return swift_unknownObjectRelease();
}

uint64_t IdentityKeyWithKeychain.__allocating_init(label:privateKey:attestationType:laContext:validity:isTemporary:)(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4, void *a5, uint64_t a6, char a7, int a8)
{
  v16 = swift_allocObject();
  IdentityKeyWithKeychain.init(label:privateKey:attestationType:laContext:validity:isTemporary:)(a1, a2, a3, a4, a5, a6, a7 & 1, a8);
  return v16;
}

uint64_t sub_225A18DC4(uint64_t a1, unint64_t a2)
{
  v5 = sub_225CCE474();
  sub_225A1DC14(a1, a2, 0, 0xF000000000000000, v5, v6);
  if (!v2)
  {

    v7 = sub_225CCE474();
    sub_225A1DC14(a1, a2, 0, 0xF000000000000000, v7, v8);
  }
}

unint64_t static DIPKeystoreKeychain.deleteAll()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD7AD0;
  v1 = *MEMORY[0x277CDC238];
  *(inited + 32) = *MEMORY[0x277CDC238];
  v2 = *MEMORY[0x277CDC248];
  v3 = *MEMORY[0x277CDC230];
  *(inited + 40) = *MEMORY[0x277CDC248];
  *(inited + 48) = v3;
  v4 = *MEMORY[0x277CDC250];
  v5 = *MEMORY[0x277CDC240];
  *(inited + 56) = *MEMORY[0x277CDC250];
  *(inited + 64) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B0A0);
  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = 0;
  while (1)
  {
    v12 = (inited & 0xC000000000000001) != 0 ? MEMORY[0x22AA6DA80](v11, inited) : *(inited + 8 * v11 + 32);
    v13 = v12;
    v14 = sub_225CCE474();
    v16 = v15;
    v17 = sub_225CCF584();
    v18 = v13;
    result = sub_2259F18D4(v14, v16);
    if (v20)
    {
      break;
    }

    v17[(result >> 6) + 8] |= 1 << result;
    v21 = (v17[6] + 16 * result);
    *v21 = v14;
    v21[1] = v16;
    *(v17[7] + 8 * result) = v18;
    v22 = v17[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_10;
    }

    ++v11;
    v17[2] = v24;
    type metadata accessor for CFString(0);
    v25 = sub_225CCE2B4();

    SecItemDelete(v25);

    if (v11 == 5)
    {
      swift_setDeallocating();
      return swift_arrayDestroy();
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t DIPKeystoreKeychain.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_225A19104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = (*(**v7 + 120) + **(**v7 + 120));
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_2259FE39C;

  return v18(a1, a2, a3, a4, a5, a6, a7);
}

void IdentityKeyWithKeychain.init(label:privateKey:attestationType:laContext:validity:isTemporary:)(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4, void *a5, uint64_t a6, int a7, int a8)
{
  v9 = v8;
  LODWORD(v112) = a8;
  v109 = a7;
  v110 = a6;
  v113 = a5;
  v102 = sub_225CCDA34();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102, v14);
  v99 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_225CCDA64();
  v98 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v16);
  v97 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_225CCDA14();
  v104 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v22 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v103 = (&v96 - v24);
  v105 = sub_225CCDA94();
  v115 = *(v105 - 8);
  v26 = MEMORY[0x28223BE20](v105, v25);
  v106 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v96 - v29;
  v31 = sub_225CCEE04();
  v107 = *(v31 - 8);
  v108 = v31;
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a4;
  *(v9 + 56) = xmmword_225CD3100;
  *(v9 + 72) = 0;
  *(v9 + 74) = 0;
  *(v9 + 76) = 0;
  *(v9 + 88) = 0;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;

  v111 = a3;
  v36 = SecKeyCopyAttributes(v111);
  v114 = v30;
  if (!v36)
  {
    goto LABEL_17;
  }

  v37 = v36;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_17;
  }

  *&aBlock = 0;
  sub_225CCE2C4();

  v38 = aBlock;
  if (!aBlock)
  {
LABEL_17:
    *(v9 + 40) = 0;
    v39 = (v9 + 40);
    goto LABEL_18;
  }

  *(v9 + 40) = aBlock;
  v39 = (v9 + 40);
  if (!*(v38 + 16))
  {
    goto LABEL_18;
  }

  v40 = sub_2259F18D4(1667457889, 0xE400000000000000);
  if ((v41 & 1) == 0)
  {

    goto LABEL_18;
  }

  sub_2259CB810(*(v38 + 56) + 32 * v40, v122);

  sub_2259B9624(v122, &aBlock);
  sub_2259CB810(&aBlock, v122);
  type metadata accessor for SecAccessControl(0);
  swift_dynamicCast();
  v42 = v116;
  Constraints = SecAccessControlGetConstraints();
  if (!Constraints)
  {
    __swift_destroy_boxed_opaque_existential_0(&aBlock);

    goto LABEL_18;
  }

  v96 = v42;
  v44 = Constraints;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

LABEL_63:
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    goto LABEL_18;
  }

  v116 = 0;
  v45 = v44;
  sub_225CCE2C4();

  v46 = v116;
  if (!v116)
  {

    goto LABEL_63;
  }

  if (!v116[2] || (v47 = sub_2259F18D4(1852273519, 0xE400000000000000), (v48 & 1) == 0))
  {

    goto LABEL_63;
  }

  sub_2259CB810(v46[7] + 32 * v47, v122);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B0D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(&aBlock);

    goto LABEL_18;
  }

  v49 = v116;
  if (!v116[2] || (v50 = sub_2259F18D4(1953525616, 0xE400000000000000), (v51 & 1) == 0))
  {

    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    goto LABEL_66;
  }

  sub_2259CB810(v49[7] + 32 * v50, v122);

  __swift_destroy_boxed_opaque_existential_0(&aBlock);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_66:
    v52 = 0;
    goto LABEL_67;
  }

  v52 = v116;
LABEL_67:
  *(v9 + 74) = v52;
LABEL_18:
  v53 = *v39;
  if (*v39)
  {
    v54 = sub_225CCE474();
    v56 = v55;
    if (*(v53 + 16) && (v57 = v54, , v58 = sub_2259F18D4(v57, v56), v60 = v59, , (v60 & 1) != 0))
    {
      sub_2259CB810(*(v53 + 56) + 32 * v58, &aBlock);

      v61 = swift_dynamicCast();
      if (v61)
      {
        v62 = *&v122[0];
      }

      else
      {
        v62 = 0;
      }

      if (v61)
      {
        v53 = *(&v122[0] + 1);
      }

      else
      {
        v53 = 0;
      }
    }

    else
    {

      v62 = 0;
      v53 = 0;
    }
  }

  else
  {
    v62 = 0;
  }

  if (!*MEMORY[0x277CDC168])
  {
    goto LABEL_70;
  }

  v63 = sub_225CCE474();
  if (v53)
  {
    v65 = v113;
    if (v62 == v63 && v53 == v64)
    {
      v66 = 1;
    }

    else
    {
      v66 = sub_225CCF934();
    }
  }

  else
  {
    v66 = 0;
    v65 = v113;
  }

  *(v9 + 75) = v66 & 1;
  *(v9 + 48) = v65;
  *(v9 + 73) = v112 & 1;
  if (!v35)
  {
    v67 = v65;
LABEL_42:

    goto LABEL_44;
  }

  v68 = sub_225CCF934();
  v69 = v65;

  if (v68)
  {
    goto LABEL_44;
  }

  if (v35 == 1)
  {
    goto LABEL_42;
  }

  v70 = sub_225CCF934();

  if ((v70 & 1) == 0)
  {

    *(v9 + 72) = 2;
    *(v9 + 80) = 0;
    return;
  }

LABEL_44:
  *(v9 + 72) = v35;
  sub_2259D8718(0, &qword_28105B8C8);
  *&aBlock = MEMORY[0x277D84F90];
  sub_225A1FB50(&qword_27D73B0B0, MEMORY[0x277D85278]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B0B8);
  sub_2259D8B24(&unk_27D73B0C0, &qword_27D73B0B8);
  v71 = v108;
  sub_225CCF0E4();
  sub_2259D8718(0, &qword_28105BFA8);
  v72 = sub_225CCEDB4();
  v73 = sub_225CCEE14();

  (*(v107 + 8))(v34, v71);
  *(v9 + 80) = v73;
  v74 = 15;
  if ((v109 & 1) == 0)
  {
    v74 = v110;
  }

  v75 = __OFSUB__(v74, 1);
  v76 = v74 - 1;
  if (v75)
  {
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    return;
  }

  if (v76 <= 1)
  {
    v77 = 1;
  }

  else
  {
    v77 = v76;
  }

  v78 = v106;
  sub_225CCDA84();
  if ((v77 * 60) >> 64 != (60 * v77) >> 63)
  {
    goto LABEL_69;
  }

  v79 = v103;
  *v103 = 60 * v77;
  v80 = v104;
  v81 = *(v104 + 104);
  v81(v79, *MEMORY[0x277D85188], v18);
  MEMORY[0x22AA6C2E0](v78, v79);
  v82 = *(v80 + 8);
  v82(v79, v18);
  v83 = *(v115 + 8);
  v84 = v78;
  v85 = v105;
  v115 += 8;
  v112 = v83;
  v83(v84, v105);
  if (*(v9 + 80) && (ObjectType = swift_getObjectType(), v110 = v9, v87 = v85, v88 = v79, v89 = v22, v90 = ObjectType, v81(v88, *MEMORY[0x277D85180], v18), *v89 = 0, v81(v89, *MEMORY[0x277D85168], v18), MEMORY[0x22AA6D710](v114, v88, v89, v90), v82(v89, v18), v91 = v88, v85 = v87, v9 = v110, v82(v91, v18), *(v9 + 80)) && (swift_getObjectType(), v92 = swift_allocObject(), swift_weakInit(), v120 = sub_225A1FB98, v121 = v92, *&aBlock = MEMORY[0x277D85DD0], *(&aBlock + 1) = 1107296256, v118 = sub_225A1A000, v119 = &block_descriptor_1, v93 = _Block_copy(&aBlock), , v94 = v97, sub_225CCDA54(), v95 = v99, sub_225A1A048(), sub_225CCEE34(), _Block_release(v93), (*(v101 + 8))(v95, v102), (*(v98 + 8))(v94, v100), , , *(v9 + 80)))
  {
    swift_getObjectType();
    sub_225CCEE54();

    v112(v114, v85);
  }

  else
  {
    v112(v114, v85);
  }

  *(v9 + 88) = 1;
}

uint64_t sub_225A19FAC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 76) = 1;
  }

  return result;
}

uint64_t sub_225A1A000(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_225A1A048()
{
  sub_225CCDA34();
  sub_225A1FB50(&qword_28105BFD8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B170);
  sub_2259D8B24(&qword_28105BFD0, &unk_27D73B170);
  return sub_225CCF0E4();
}

uint64_t IdentityKeyWithKeychain.deinit()
{
  v1 = v0;
  v2 = sub_225CCDA34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_225CCDA64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 73) == 1)
  {
    v26 = v2;
    v27 = v3;
    v13 = *(v0 + 16);
    v12 = *(v0 + 24);
    v14 = sub_225CCE474();
    v16 = v15;

    sub_225A1DC14(v13, v12, 0, 0xF000000000000000, v14, v16);
    v17 = v8;

    v19 = *(v1 + 16);
    v18 = *(v1 + 24);
    v20 = sub_225CCE474();
    v22 = v21;

    sub_225A1DC14(v19, v18, 0, 0xF000000000000000, v20, v22);

    v8 = v17;
    v2 = v26;
    v3 = v27;
  }

  if (*(v1 + 88) == 1)
  {
    if (*(v1 + 80))
    {
      swift_getObjectType();
      aBlock[4] = nullsub_1;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_225A1A000;
      aBlock[3] = &block_descriptor_9;
      v23 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      sub_225CCDA54();
      sub_225A1A048();
      sub_225CCEE34();
      _Block_release(v23);
      swift_unknownObjectRelease();
      (*(v3 + 8))(v6, v2);
      (*(v8 + 8))(v11, v7);
      if (*(v1 + 80))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_225CCEE44();
        swift_unknownObjectRelease();
      }
    }

    *(v1 + 88) = 0;
  }

  sub_2259B97A8(*(v1 + 56), *(v1 + 64));
  swift_unknownObjectRelease();
  return v1;
}

uint64_t IdentityKeyWithKeychain.__deallocating_deinit()
{
  IdentityKeyWithKeychain.deinit();

  return swift_deallocClassInstance();
}

SecKeyRef sub_225A1A500()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v22 - v3;
  result = SecKeyCopyPublicKey(*(v0 + 32));
  if (!result)
  {
    v24 = 0x8000000225D173E0;
    v25 = 0;
    v23 = 0x8000000225D17790;
    v6 = MEMORY[0x277D84F90];
    v7 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v9 = v8;
    v10 = sub_225CCE954();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v4, 1, 1, v10);
    LODWORD(v10) = (*(v11 + 48))(v4, 1, v10);
    sub_2259CB640(v4, &unk_27D73B050);
    if (v10)
    {
      v12 = 249;
    }

    else
    {
      v12 = 23;
    }

    v13 = sub_225B2C374(v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v13;
    sub_225B2C4A0(v7, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v26);

    v15 = v26;
    v16 = sub_225B29AA0(0, 1, 1, v6);
    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_225B29AA0((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v19 = &v16[56 * v18];
    *(v19 + 4) = 0xD00000000000002ALL;
    *(v19 + 5) = 0x8000000225D17760;
    v20 = v24;
    *(v19 + 6) = 0xD000000000000025;
    *(v19 + 7) = v20;
    v21 = v23;
    *(v19 + 8) = 0xD000000000000016;
    *(v19 + 9) = v21;
    *(v19 + 10) = 545;
    *v9 = v12;
    *(v9 + 8) = v16;
    *(v9 + 16) = 0xD00000000000002ALL;
    *(v9 + 24) = 0x8000000225D17760;
    *(v9 + 32) = v15;
    *(v9 + 40) = 0;
    swift_willThrow();
    return v25;
  }

  return result;
}

uint64_t sub_225A1A79C()
{
  error[1] = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v30 - v3;
  if (*(v0 + 64) >> 60 == 15)
  {
    error[0] = 0;
    v5 = SecKeyCopyPublicKey(*(v0 + 32));
    if (v5)
    {
      v6 = v5;
      v7 = SecKeyCopyExternalRepresentation(v5, error);
      if (v7)
      {
        v8 = v7;
        v9 = sub_225CCCFA4();
        v11 = v10;
      }

      else
      {
        v9 = 0;
        v11 = 0xF000000000000000;
      }

      v27 = *(v0 + 56);
      v28 = *(v0 + 64);
      *(v0 + 56) = v9;
      *(v0 + 64) = v11;
      sub_2259B97A8(v27, v28);
      if (*(v0 + 64) >> 60 == 15)
      {
        LOWORD(v33) = 249;
        errorFromCFError(_:_:_:)(error[0], 0xD000000000000041, 0x8000000225D177D0, &v33);
        swift_willThrow();
      }

      else
      {
        v11 = *(v0 + 56);
        sub_2259CB6FC(v11, *(v0 + 64));
      }
    }

    else
    {
      v31 = 0x8000000225D177B0;
      v32 = 0x8000000225D173E0;
      v12 = MEMORY[0x277D84F90];
      v13 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v15 = v14;
      v16 = sub_225CCE954();
      v17 = *(v16 - 8);
      (*(v17 + 56))(v4, 1, 1, v16);
      LODWORD(v16) = (*(v17 + 48))(v4, 1, v16);
      sub_2259CB640(v4, &unk_27D73B050);
      if (v16)
      {
        v18 = 249;
      }

      else
      {
        v18 = 23;
      }

      v19 = sub_225B2C374(v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v19;
      sub_225B2C4A0(v13, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v33);

      v11 = v33;
      v21 = sub_225B29AA0(0, 1, 1, v12);
      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        v21 = sub_225B29AA0((v22 > 1), v23 + 1, 1, v21);
      }

      *(v21 + 2) = v23 + 1;
      v24 = &v21[56 * v23];
      *(v24 + 4) = 0xD00000000000002ALL;
      *(v24 + 5) = 0x8000000225D17760;
      v25 = v32;
      *(v24 + 6) = 0xD000000000000025;
      *(v24 + 7) = v25;
      v26 = v31;
      *(v24 + 8) = 0xD00000000000001ALL;
      *(v24 + 9) = v26;
      *(v24 + 10) = 565;
      *v15 = v18;
      *(v15 + 8) = v21;
      *(v15 + 16) = 0xD00000000000002ALL;
      *(v15 + 24) = 0x8000000225D17760;
      *(v15 + 32) = v11;
      *(v15 + 40) = 0;
      swift_willThrow();
    }
  }

  else
  {
    v11 = *(v0 + 56);
    sub_2259CB710(v11, *(v0 + 64));
  }

  return v11;
}

uint64_t sub_225A1AB34(uint64_t a1, unint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v44 - v8;
  v10 = MEMORY[0x277CDC300];
  if (!*(v2 + 75))
  {
    v10 = MEMORY[0x277CDC2B8];
  }

  v11 = *v10;
  SecKeyRef.signSHA256Digest(_:algorithm:)(a1, a2, v11);
  if (v3)
  {
    v49 = v13;
    v50 = v12;

    v47 = " (cfError = nil).";
    v14 = v3;
    v15 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v48 = swift_allocError();
    v17 = v16;
    swift_getErrorValue();
    v18 = v58;
    v19 = v3;
    sub_225B21FAC(v18, &v52);

    v20 = v53;
    if (v53)
    {
      v46 = v52;
      v21 = v54;
      v45 = v55;
      v23 = v56;
      v22 = v57;
    }

    else
    {
      v52 = v3;
      v26 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      sub_2259D8718(0, &qword_281059A90);
      if (swift_dynamicCast())
      {
        v27 = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v29 = [v27 code];
        v30 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v30;
        *(inited + 40) = v29;
        v23 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060);

        v31 = v3;
        v45 = 0;
        v21 = 0;
        v46 = 0;
        v20 = MEMORY[0x277D84F90];
      }

      else
      {
        v52 = v3;
        v32 = v3;
        v33 = sub_225CCE954();
        v34 = swift_dynamicCast();
        v35 = *(v33 - 8);
        (*(v35 + 56))(v9, v34 ^ 1u, 1, v33);
        LODWORD(v33) = (*(v35 + 48))(v9, 1, v33);
        sub_2259CB640(v9, &unk_27D73B050);
        if (v33)
        {
          v36 = 0;
        }

        else
        {
          v36 = 23;
        }

        v46 = v36;
        v20 = MEMORY[0x277D84F90];
        v23 = sub_225B2C374(MEMORY[0x277D84F90]);
        v37 = v3;
        v45 = 0;
        v21 = 0;
      }

      v22 = v3;
    }

    v38 = v47 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v23;
    sub_225B2C4A0(v15, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v52);

    v40 = v52;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_225B29AA0(0, *(v20 + 2) + 1, 1, v20);
    }

    v42 = *(v20 + 2);
    v41 = *(v20 + 3);
    if (v42 >= v41 >> 1)
    {
      v20 = sub_225B29AA0((v41 > 1), v42 + 1, 1, v20);
    }

    *(v20 + 2) = v42 + 1;
    v43 = &v20[56 * v42];
    *(v43 + 4) = 0;
    *(v43 + 5) = 0;
    *(v43 + 6) = 0xD000000000000025;
    *(v43 + 7) = v38;
    *(v43 + 8) = 0x293A5F286E676973;
    *(v43 + 9) = 0xE800000000000000;
    *(v43 + 10) = 588;
    *v17 = v46;
    *(v17 + 8) = v20;
    *(v17 + 16) = v21;
    *(v17 + 24) = v45;
    *(v17 + 32) = v40;
    *(v17 + 40) = v22;
    swift_willThrow();

    return v50;
  }

  else
  {
    v24 = v12;

    return v24;
  }
}

uint64_t sub_225A1B038()
{
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = sub_225CCE474();
  v7 = v6;

  sub_225A1DC14(v4, v3, 0, 0xF000000000000000, v5, v7);
  if (v2)
  {
  }

  else
  {

    if (*(v0 + 73))
    {
      v10 = *(v0 + 16);
      v9 = *(v0 + 24);
      v11 = sub_225CCE474();
      v13 = v12;

      sub_225A1DC14(v10, v9, 0, 0xF000000000000000, v11, v13);
    }

    v14 = sub_225A1B1A4();
    v16 = v15;

    *(v0 + 16) = v14;
    *(v0 + 24) = v16;

    sub_225A1E4B4(*(v0 + 32), v14, v16);

    *(v0 + 72) = 2;
  }

  return result;
}

uint64_t sub_225A1B1A4()
{
  sub_2259D8654();
  sub_225CCF034();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B158);
  sub_2259D8B24(&unk_27D73B160, &qword_27D73B158);
  v0 = sub_225CCE384();

  return v0;
}

uint64_t sub_225A1B2B8()
{
  v1[37] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B0D8);
  v1[40] = v2;
  v1[41] = *(v2 - 8);
  v1[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225A1B3C8, 0, 0);
}

uint64_t sub_225A1B3C8()
{
  v26 = v0;
  v1 = *(v0[37] + 48);
  v0[43] = v1;
  if (v1)
  {
    v3 = v0[41];
    v2 = v0[42];
    v4 = v0[40];
    v0[2] = v0;
    v0[7] = v0 + 31;
    v0[3] = sub_225A1B7F0;
    swift_continuation_init();
    v0[27] = v4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 24);
    v24 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B0E0);
    v0[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_225CCE914();
    (*(v3 + 32))(boxed_opaque_existential_1, v2, v4);
    v0[20] = MEMORY[0x277D85DD0];
    v0[21] = 1107296256;
    v0[22] = sub_225A1BE04;
    v0[23] = &block_descriptor_12;
    [v24 authMethodWithReply_];
    (*(v3 + 8))(boxed_opaque_existential_1, v4);

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v6 = v0[39];
    v7 = MEMORY[0x277D84F90];
    v8 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v10 = v9;
    v11 = sub_225CCE954();
    v12 = *(v11 - 8);
    (*(v12 + 56))(v6, 1, 1, v11);
    v13 = (*(v12 + 48))(v6, 1, v11);
    sub_2259CB640(v6, &unk_27D73B050);
    v14 = sub_225B2C374(v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v14;
    sub_225B2C4A0(v8, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v25);

    v16 = v25;
    v17 = sub_225B29AA0(0, 1, 1, v7);
    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_225B29AA0((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    v20 = &v17[56 * v19];
    *(v20 + 4) = 0xD000000000000028;
    *(v20 + 5) = 0x8000000225D17820;
    *(v20 + 6) = 0xD000000000000025;
    *(v20 + 7) = 0x8000000225D173E0;
    strcpy(v20 + 64, "authMethod()");
    v20[77] = 0;
    *(v20 + 39) = -5120;
    *(v20 + 10) = 638;
    if (v13)
    {
      v21 = 108;
    }

    else
    {
      v21 = 23;
    }

    *v10 = v21;
    *(v10 + 8) = v17;
    *(v10 + 16) = 0xD000000000000028;
    *(v10 + 24) = 0x8000000225D17820;
    *(v10 + 32) = v16;
    *(v10 + 40) = 0;
    swift_willThrow();

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_225A1B7F0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 360) = v1;
  if (v1)
  {
    v2 = sub_225A1B99C;
  }

  else
  {
    v2 = sub_225A1B900;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225A1B900()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_225A1B99C()
{
  v44 = v0;
  v1 = v0[45];
  swift_willThrow();
  v2 = v1;
  v3 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v37 = v4;
  swift_getErrorValue();
  v5 = v0[29];
  v6 = v1;
  sub_225B21FAC(v5, &v38);

  v7 = v39;
  if (v39)
  {
    v34 = v40;
    v35 = v41;
    v36 = v38;
    v8 = v42;
    v1 = v43;
  }

  else
  {
    v9 = v0[45];
    v0[34] = v9;
    v10 = v9;
    sub_2259D8718(0, &qword_281059A90);
    v11 = swift_dynamicCast();
    v12 = v0[45];
    if (v11)
    {
      v13 = v0[35];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v15 = [v13 code];
      v16 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v16;
      *(inited + 40) = v15;
      v8 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v17 = v12;
      v34 = 0;
      v35 = 0;
      v7 = MEMORY[0x277D84F90];
      v36 = 256;
    }

    else
    {
      v18 = v0[38];
      v0[36] = v12;
      v19 = v12;
      v20 = sub_225CCE954();
      v21 = swift_dynamicCast();
      v22 = *(v20 - 8);
      (*(v22 + 56))(v18, v21 ^ 1u, 1, v20);
      LODWORD(v22) = (*(v22 + 48))(v18, 1, v20);
      sub_2259CB640(v18, &unk_27D73B050);
      if (v22)
      {
        v23 = 256;
      }

      else
      {
        v23 = 23;
      }

      v36 = v23;
      v7 = MEMORY[0x277D84F90];
      v8 = sub_225B2C374(MEMORY[0x277D84F90]);
      v24 = v12;
      v34 = 0xD000000000000032;
      v35 = 0x8000000225D178A0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = v8;
  sub_225B2C4A0(v3, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v38);

  v26 = v38;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_225B29AA0(0, *(v7 + 2) + 1, 1, v7);
  }

  v28 = *(v7 + 2);
  v27 = *(v7 + 3);
  if (v28 >= v27 >> 1)
  {
    v7 = sub_225B29AA0((v27 > 1), v28 + 1, 1, v7);
  }

  v29 = v0[45];
  v30 = v0[43];

  *(v7 + 2) = v28 + 1;
  v31 = &v7[56 * v28];
  *(v31 + 4) = 0xD000000000000032;
  *(v31 + 5) = 0x8000000225D178A0;
  *(v31 + 6) = 0xD000000000000025;
  *(v31 + 7) = 0x8000000225D173E0;
  strcpy(v31 + 64, "authMethod()");
  v31[77] = 0;
  *(v31 + 39) = -5120;
  *(v31 + 10) = 643;
  *v37 = v36;
  *(v37 + 8) = v7;
  *(v37 + 16) = v34;
  *(v37 + 24) = v35;
  *(v37 + 32) = v26;
  *(v37 + 40) = v1;
  swift_willThrow();

  v32 = v0[1];

  return v32();
}

void sub_225A1BE04(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B0D8);
    sub_225CCE924();
  }

  else
  {
    if (a2)
    {
      v6 = a2;
      sub_225CCCFA4();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B0D8);
    sub_225CCE934();
  }
}

void sub_225A1BEE8(char *a1@<X8>)
{
  if (*(v1 + 74))
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*(v1 + 75))
  {
    v3 = v2;
  }

  else
  {
    v3 = *(v1 + 74);
  }

  *a1 = v3;
}

uint64_t sub_225A1C00C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2259FE1F0;

  return sub_225A1B2B8();
}

void *copyPublicKeyDataFromCertificateString(_:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v33 - v6;
  v8._countAndFlagsBits = a1;
  v8._object = a2;
  v9 = createCertificateFromString(_:)(v8);
  if (!v10)
  {
    v11 = v9;
    v12 = SecCertificateCopyKey(v9);
    if (v12 && (v13 = v12, a2 = copyPublicKeyDataFromSecKeyPublic(_:)(v12), v15 = v14, v13, v15 >> 60 != 15))
    {
    }

    else
    {
      v33 = 0x8000000225D17910;
      v34 = 0x8000000225D173E0;
      v16 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      a2 = swift_allocError();
      v18 = v17;
      v19 = sub_225CCE954();
      v20 = *(v19 - 8);
      (*(v20 + 56))(v7, 1, 1, v19);
      LODWORD(v19) = (*(v20 + 48))(v7, 1, v19);
      sub_2259CB640(v7, &unk_27D73B050);
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = 23;
      }

      v22 = MEMORY[0x277D84F90];
      v23 = sub_225B2C374(MEMORY[0x277D84F90]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v23;
      sub_225B2C4A0(v16, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v35);

      v25 = v35;
      v26 = sub_225B29AA0(0, 1, 1, v22);
      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_225B29AA0((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[56 * v28];
      *(v29 + 4) = 0xD00000000000002ALL;
      *(v29 + 5) = 0x8000000225D178E0;
      v30 = v34;
      *(v29 + 6) = 0xD000000000000025;
      *(v29 + 7) = v30;
      v31 = v33;
      *(v29 + 8) = 0xD00000000000002ALL;
      *(v29 + 9) = v31;
      *(v29 + 10) = 740;
      *v18 = v21;
      *(v18 + 8) = v26;
      *(v18 + 16) = 0xD00000000000002ALL;
      *(v18 + 24) = 0x8000000225D178E0;
      *(v18 + 32) = v25;
      *(v18 + 40) = 0;
      swift_willThrow();
    }
  }

  return a2;
}

SecCertificateRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> createCertificateFromString(_:)(Swift::String a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v40 - v3;
  v5 = sub_225CCCF04();
  if (v6 >> 60 == 15)
  {
    v42 = 0x8000000225D17970;
    v43 = 0x8000000225D173E0;
    v7 = MEMORY[0x277D84F90];
    v8 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v10 = v9;
    v11 = sub_225CCE954();
    v12 = *(v11 - 8);
    (*(v12 + 56))(v4, 1, 1, v11);
    LODWORD(v11) = (*(v12 + 48))(v4, 1, v11);
    sub_2259CB640(v4, &unk_27D73B050);
    if (v11)
    {
      v13 = 122;
    }

    else
    {
      v13 = 23;
    }

    v14 = sub_225B2C374(v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v14;
    sub_225B2C4A0(v8, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v44);

    v16 = v44;
    v17 = sub_225B29AA0(0, 1, 1, v7);
    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_225B29AA0((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    v20 = &v17[56 * v19];
    *(v20 + 4) = 0xD000000000000023;
    *(v20 + 5) = 0x8000000225D17940;
    *(v20 + 6) = 0xD000000000000025;
    *(v20 + 7) = v43;
    *(v20 + 8) = 0xD00000000000001FLL;
    *(v20 + 9) = v42;
    *(v20 + 10) = 747;
    *v10 = v13;
    *(v10 + 8) = v17;
    *(v10 + 16) = 0xD000000000000023;
    *(v10 + 24) = 0x8000000225D17940;
    *(v10 + 32) = v16;
    *(v10 + 40) = 0;
    swift_willThrow();
  }

  else
  {
    v21 = *MEMORY[0x277CBECE8];
    v22 = v5;
    v23 = v6;
    v24 = sub_225CCCF74();
    v8 = SecCertificateCreateWithData(v21, v24);

    if (v8)
    {
      sub_2259B97A8(v22, v23);
    }

    else
    {
      v42 = 0x8000000225D173E0;
      v43 = 0x8000000225D17990;
      v41 = 0x8000000225D17970;
      v25 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v8 = v26;
      v27 = sub_225CCE954();
      v28 = *(v27 - 8);
      (*(v28 + 56))(v4, 1, 1, v27);
      LODWORD(v27) = (*(v28 + 48))(v4, 1, v27);
      sub_2259CB640(v4, &unk_27D73B050);
      if (v27)
      {
        v29 = 124;
      }

      else
      {
        v29 = 23;
      }

      v30 = MEMORY[0x277D84F90];
      v31 = sub_225B2C374(MEMORY[0x277D84F90]);
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v44 = v31;
      sub_225B2C4A0(v25, sub_225B2AC40, 0, v32, &v44);

      v33 = v44;
      v34 = sub_225B29AA0(0, 1, 1, v30);
      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_225B29AA0((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[56 * v36];
      v38 = v43;
      *(v37 + 4) = 0xD000000000000027;
      *(v37 + 5) = v38;
      *(v37 + 6) = 0xD000000000000025;
      *(v37 + 7) = v42;
      *(v37 + 8) = 0xD00000000000001FLL;
      *(v37 + 9) = v41;
      *(v37 + 10) = 750;
      *v8 = v29;
      *(v8 + 1) = v34;
      *(v8 + 2) = 0xD000000000000027;
      *(v8 + 3) = v38;
      *(v8 + 4) = v33;
      *(v8 + 5) = 0;
      swift_willThrow();
      sub_2259B97A8(v22, v23);
    }
  }

  return v8;
}

uint64_t copyPublicKeyDataFromSecKeyPublic(_:)(__SecKey *a1)
{
  error[1] = *MEMORY[0x277D85DE8];
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  error[0] = 0;
  v7 = SecKeyCopyExternalRepresentation(a1, error);
  if (v7)
  {
    v8 = v7;
    v9 = sub_225CCCFA4();
  }

  else
  {
    v16 = 0;
    v10 = errorFromCFError(_:_:_:)(error[0], 0xD00000000000002DLL, 0x8000000225D179C0, &v16);
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v11 = off_28105B918;
    v12 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v13 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v13));
    (*(v3 + 16))(v6, &v11[v12], v2);
    os_unfair_lock_unlock(&v11[v13]);
    DIPLogError(_:message:log:)(v10, 0, 0xE000000000000000);
    _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v10);

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return v9;
}

uint64_t sub_225A1CB38(unsigned __int8 *a1, void *a2, char a3)
{
  v117 = a2;
  error[2] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v109 - v8;
  v10 = sub_225CCD954();
  RandomKey = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  MEMORY[0x28223BE20](v13, v14);
  v17 = &v109 - v16;
  v18 = *a1;
  v115 = v9;
  v116 = v3;
  if (v18)
  {
    if (v18 == 1)
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v19 = off_28105B918;
      v20 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v21 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v21));
      (*(RandomKey + 2))(v17, &v19[v20], v10);
      os_unfair_lock_unlock(&v19[v21]);
      v22 = sub_225CCD934();
      v23 = sub_225CCED14();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        error[0] = v25;
        *v24 = 136446466;
        v117 = *MEMORY[0x277CDC060];
        v26 = sub_225CCE474();
        v28 = sub_2259BE198(v26, v27, error);
        v111 = v10;
        v29 = v28;

        *(v24 + 4) = v29;
        *(v24 + 12) = 2050;
        *(v24 + 14) = 2048;
        _os_log_impl(&dword_2259A7000, v22, v23, "coreidvd: generateKeyAsym key algorithm %{public}s-%{public}ld not supported", v24, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x22AA6F950](v25, -1, -1);
        MEMORY[0x22AA6F950](v24, -1, -1);

        (*(RandomKey + 1))(v17, v111);
      }

      else
      {

        (*(RandomKey + 1))(v17, v10);
      }

      error[0] = 0;
      error[1] = 0xE000000000000000;
      sub_225CCF204();

      strcpy(error, "key algorithm ");
      HIBYTE(error[1]) = -18;
      v63 = sub_225CCE474();
      MEMORY[0x22AA6CE70](v63);

      MEMORY[0x22AA6CE70](45, 0xE100000000000000);
      v118[0] = 2048;
      v64 = sub_225CCF824();
      MEMORY[0x22AA6CE70](v64);

      MEMORY[0x22AA6CE70](0x70757320746F6E20, 0xEE00646574726F70);
      v66 = error[0];
      v65 = error[1];
      v117 = 0x8000000225D173E0;
      v114 = 0x8000000225D17F60;
      v67 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v69 = v68;
      v70 = sub_225CCE954();
      v71 = *(v70 - 8);
      v72 = v115;
      (*(v71 + 56))(v115, 1, 1, v70);
      LODWORD(v70) = (*(v71 + 48))(v72, 1, v70);
      sub_2259CB640(v72, &unk_27D73B050);
      if (v70)
      {
        v73 = 250;
      }

      else
      {
        v73 = 23;
      }

      v74 = MEMORY[0x277D84F90];
      v75 = sub_225B2C374(MEMORY[0x277D84F90]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      error[0] = v75;
      sub_225B2C4A0(v67, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, error);

      v77 = error[0];
      v78 = sub_225B29AA0(0, 1, 1, v74);
      RandomKey = *(v78 + 2);
      v79 = *(v78 + 3);
      if (RandomKey >= v79 >> 1)
      {
        v78 = sub_225B29AA0((v79 > 1), RandomKey + 1, 1, v78);
      }

      *(v78 + 2) = RandomKey + 1;
      v80 = &v78[56 * RandomKey];
      *(v80 + 4) = v66;
      *(v80 + 5) = v65;
      v81 = v117;
      *(v80 + 6) = 0xD000000000000025;
      *(v80 + 7) = v81;
      v82 = v114;
      *(v80 + 8) = 0xD000000000000026;
      *(v80 + 9) = v82;
      *(v80 + 10) = 57;
      *v69 = v73;
      *(v69 + 8) = v78;
      *(v69 + 16) = v66;
      *(v69 + 24) = v65;
      *(v69 + 32) = v77;
      *(v69 + 40) = 0;
      goto LABEL_36;
    }

    v30 = a3;
    v109 = v15;
    v31 = 1;
  }

  else
  {
    v30 = a3;
    v109 = v15;
    v31 = 0;
  }

  v32 = sub_225CCE474();
  v34 = v33;
  error[0] = 0;
  v35 = v117;
  if (!v117)
  {
    v35 = SecAccessControlCreateWithFlags(*MEMORY[0x277CBECE8], *MEMORY[0x277CDBEE8], 0x40000000uLL, error);
    if (!v35)
    {

      LOWORD(v118[0]) = 251;
      errorFromCFError(_:_:_:)(error[0], 0xD000000000000036, 0x8000000225D17F90, v118);
LABEL_36:
      swift_willThrow();
      return RandomKey;
    }
  }

  v114 = v35;
  v110 = RandomKey;
  v111 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B068);
  result = swift_initStackObject();
  *(result + 16) = xmmword_225CD73D0;
  v37 = *MEMORY[0x277CDBFD0];
  *(result + 32) = *MEMORY[0x277CDBFD0];
  v112 = v37;
  v113 = result + 32;
  v38 = MEMORY[0x277D839B0];
  v39 = MEMORY[0x277CDC028];
  *(result + 40) = 0;
  v40 = *v39;
  *(result + 64) = v38;
  *(result + 72) = v40;
  *(result + 104) = MEMORY[0x277D837D0];
  *(result + 80) = v32;
  *(result + 88) = v34;
  v41 = *MEMORY[0x277CDC3E0];
  if (*MEMORY[0x277CDC3E0])
  {
    v42 = result;
    *(result + 112) = v41;
    *(result + 120) = v31;
    v43 = *MEMORY[0x277CDC018];
    *(result + 144) = v38;
    *(result + 152) = v43;
    v44 = MEMORY[0x277D83B88];
    *(result + 160) = 256;
    v45 = *MEMORY[0x277CDC158];
    v46 = MEMORY[0x277CDC160];
    *(result + 184) = v44;
    *(result + 192) = v45;
    v47 = MEMORY[0x277CDC168];
    if ((v30 & 1) == 0)
    {
      v47 = v46;
    }

    v48 = *v47;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B088);
    v42[25] = v48;
    v50 = *MEMORY[0x277CDBEC0];
    v42[28] = v49;
    v42[29] = v50;
    type metadata accessor for SecAccessControl(0);
    v42[33] = v51;
    v52 = v114;
    v42[30] = v114;
    v53 = v48;
    v54 = v112;
    v55 = v40;
    v56 = v43;
    v57 = v45;
    v58 = v50;
    v59 = v41;
    v60 = v52;
    v61 = v117;
    sub_225B2CFE0(v42);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B070);
    swift_arrayDestroy();
    sub_2259D8718(0, &qword_281059A60);
    sub_225A1D788();
    v62 = sub_225CCE2B4();

    RandomKey = SecKeyCreateRandomKey(v62, error);

    if (RandomKey)
    {
      if (SecKeyCopyPublicKey(RandomKey))
      {
      }

      else
      {
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v83 = off_28105B918;
        v84 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v85 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v85));
        v86 = v111;
        v87 = &v83[v84];
        v88 = v109;
        (*(v110 + 2))(v109, v87, v111);
        os_unfair_lock_unlock(&v83[v85]);
        v89 = sub_225CCD934();
        v90 = sub_225CCED14();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          *v91 = 0;
          _os_log_impl(&dword_2259A7000, v89, v90, "coreidvd: generateKeyAsym SecKeyCopyPublicKey failed.", v91, 2u);
          MEMORY[0x22AA6F950](v91, -1, -1);
        }

        (*(v110 + 1))(v88, v86);
        v117 = 0x8000000225D18000;
        v113 = 0x8000000225D17F60;
        v114 = 0x8000000225D173E0;
        v92 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        swift_allocError();
        v94 = v93;
        v95 = sub_225CCE954();
        v96 = *(v95 - 8);
        v97 = v115;
        (*(v96 + 56))(v115, 1, 1, v95);
        LODWORD(v95) = (*(v96 + 48))(v97, 1, v95);
        sub_2259CB640(v97, &unk_27D73B050);
        if (v95)
        {
          v98 = 249;
        }

        else
        {
          v98 = 23;
        }

        v99 = MEMORY[0x277D84F90];
        v100 = sub_225B2C374(MEMORY[0x277D84F90]);
        v101 = swift_isUniquelyReferenced_nonNull_native();
        v118[0] = v100;
        sub_225B2C4A0(v92, sub_225B2AC40, 0, v101, v118);

        v102 = v118[0];
        v103 = sub_225B29AA0(0, 1, 1, v99);
        v105 = *(v103 + 2);
        v104 = *(v103 + 3);
        if (v105 >= v104 >> 1)
        {
          v103 = sub_225B29AA0((v104 > 1), v105 + 1, 1, v103);
        }

        *(v103 + 2) = v105 + 1;
        v106 = &v103[56 * v105];
        v107 = v117;
        *(v106 + 4) = 0xD00000000000002ALL;
        *(v106 + 5) = v107;
        v108 = v114;
        *(v106 + 6) = 0xD000000000000025;
        *(v106 + 7) = v108;
        *(v106 + 8) = 0xD000000000000026;
        *(v106 + 9) = v113;
        *(v106 + 10) = 82;
        *v94 = v98;
        *(v94 + 8) = v103;
        *(v94 + 16) = 0xD00000000000002ALL;
        *(v94 + 24) = v107;
        *(v94 + 32) = v102;
        *(v94 + 40) = 0;
        swift_willThrow();
      }
    }

    else
    {
      LOWORD(v118[0]) = 248;
      errorFromCFError(_:_:_:)(error[0], 0xD00000000000002CLL, 0x8000000225D17FD0, v118);
      swift_willThrow();
    }

    return RandomKey;
  }

  __break(1u);
  return result;
}

unint64_t sub_225A1D788()
{
  result = qword_281059A50;
  if (!qword_281059A50)
  {
    sub_2259D8718(255, &qword_281059A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059A50);
  }

  return result;
}

uint64_t sub_225A1D7F0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 *a5)
{
  v10 = sub_225CCD124();
  v46 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v41 - v16;
  v18 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v18 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    goto LABEL_10;
  }

  v19 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v19 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v20 = *a5;
    v45[0] = a1;
    v45[1] = a2;

    MEMORY[0x22AA6CE70](46, 0xE100000000000000);
    MEMORY[0x22AA6CE70](a3, a4);
    if (v20 > 1)
    {
      if (v20 == 2)
      {
        sub_225CCD114();
        v38 = sub_225CCD0C4();
        v40 = v39;
        (*(v46 + 8))(v13, v10);
        v43 = 46;
        v44 = 0xE100000000000000;
        MEMORY[0x22AA6CE70](v38, v40);

        MEMORY[0x22AA6CE70](v43, v44);
      }
    }

    else if (v20)
    {
      MEMORY[0x22AA6CE70](0x6F72676B6361622ELL, 0xEB00000000646E75);
    }

    return v45[0];
  }

  else
  {
LABEL_10:
    v46 = 0x8000000225D173E0;
    v42 = 0x8000000225D17E60;
    v21 = MEMORY[0x277D84F90];
    v22 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v24 = v23;
    v25 = sub_225CCE954();
    v26 = *(v25 - 8);
    (*(v26 + 56))(v17, 1, 1, v25);
    LODWORD(v25) = (*(v26 + 48))(v17, 1, v25);
    sub_2259CB640(v17, &unk_27D73B050);
    if (v25)
    {
      v27 = 108;
    }

    else
    {
      v27 = 23;
    }

    v28 = sub_225B2C374(v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45[0] = v28;
    sub_225B2C4A0(v22, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v45);

    v30 = v45[0];
    v31 = sub_225B29AA0(0, 1, 1, v21);
    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_225B29AA0((v32 > 1), v33 + 1, 1, v31);
    }

    *(v31 + 2) = v33 + 1;
    v34 = &v31[56 * v33];
    *(v34 + 4) = 0xD000000000000041;
    *(v34 + 5) = 0x8000000225D17E10;
    v35 = v46;
    *(v34 + 6) = 0xD000000000000025;
    *(v34 + 7) = v35;
    v36 = v42;
    *(v34 + 8) = 0xD000000000000024;
    *(v34 + 9) = v36;
    *(v34 + 10) = 183;
    *v24 = v27;
    *(v24 + 8) = v31;
    *(v24 + 16) = 0xD000000000000041;
    *(v24 + 24) = 0x8000000225D17E10;
    *(v24 + 32) = v30;
    *(v24 + 40) = 0;
    return swift_willThrow();
  }
}

void sub_225A1DC14(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v99 = a6;
  v97 = a5;
  v89 = a4;
  v85 = a3;
  v8 = sub_225CCD954();
  v10 = MEMORY[0x28223BE20](v8, v9);
  v94 = v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v84 = v83 - v15;
  v93 = (v16 + 16);
  v91 = a1;
  v92 = (v16 + 8);
  v90 = *MEMORY[0x277CDC080];
  if (a2)
  {
    v17 = a1;
  }

  else
  {
    v17 = 0;
  }

  v95 = *MEMORY[0x277CDC228];
  v18 = 0xE000000000000000;
  if (a2)
  {
    v18 = a2;
  }

  v87 = v18;
  v88 = v17;
  v83[1] = *MEMORY[0x277CDC110];
  *&v14 = 136315650;
  v86 = v14;
  v19 = 1;
  v107 = a2;
  v96 = v13;
  while (1)
  {
    v98 = v19;
    if (a2)
    {
      break;
    }

    v39 = v99;
    if (v89 >> 60 == 15)
    {
      v40 = v84;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v41 = off_28105B918;
      v42 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v43 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v43));
      (*v93)(v40, &v41[v42], v8);
      os_unfair_lock_unlock(&v41[v43]);
      v44 = sub_225CCD934();
      v45 = sub_225CCED14();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_2259A7000, v44, v45, "failed to delete key chain item: either label or serialNumber should be non-empty. ignore and continue.", v46, 2u);
        MEMORY[0x22AA6F950](v46, -1, -1);
      }

      (*v92)(v40, v8);
      goto LABEL_27;
    }

    v105[0] = sub_225CCE474();
    v105[1] = v47;
    v105[5] = MEMORY[0x277CC9318];
    v48 = v85;
    v49 = v89;
    v105[2] = v85;
    v105[3] = v89;
    v106[0] = sub_225CCE474();
    v106[1] = v50;
    v106[5] = MEMORY[0x277D837D0];
    v106[2] = v97;
    v106[3] = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B180);
    v23 = sub_225CCF584();

    sub_2259CB6FC(v48, v49);

    sub_225A20D68(v105, &v102);
    v51 = v102;
    v52 = v103;
    v53 = sub_2259F18D4(v102, v103);
    if (v54)
    {
      goto LABEL_39;
    }

    *(v23 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v53;
    v55 = (v23[6] + 16 * v53);
    *v55 = v51;
    v55[1] = v52;
    sub_2259B9624(v104, (v23[7] + 32 * v53));
    v56 = v23[2];
    v30 = __OFADD__(v56, 1);
    v57 = v56 + 1;
    if (v30)
    {
      goto LABEL_40;
    }

    v23[2] = v57;
    sub_225A20D68(v106, &v102);
    v58 = v102;
    v59 = v103;
    v60 = sub_2259F18D4(v102, v103);
    if (v61)
    {
      goto LABEL_39;
    }

    *(v23 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v60;
    v62 = (v23[6] + 16 * v60);
    *v62 = v58;
    v62[1] = v59;
    sub_2259B9624(v104, (v23[7] + 32 * v60));
    v63 = v23[2];
    v30 = __OFADD__(v63, 1);
    v38 = v63 + 1;
    if (v30)
    {
      goto LABEL_40;
    }

LABEL_26:
    v23[2] = v38;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B090);
    swift_arrayDestroy();
    v8 = v96;
LABEL_27:
    v64 = sub_225CCE2B4();

    v65 = SecItemDelete(v64);

    v19 = 0;
    a2 = v107;
    if (v65)
    {
      if (v65 == -25300)
      {
        return;
      }

      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v66 = off_28105B918;
      v67 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v68 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v68));
      v69 = v94;
      (*v93)(v94, &v66[v67], v8);
      os_unfair_lock_unlock(&v66[v68]);
      a2 = v107;

      v70 = v99;

      v71 = sub_225CCD934();
      v72 = v8;
      v73 = sub_225CCED14();

      if (os_log_type_enabled(v71, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v102 = v75;
        *v74 = v86;

        v76 = sub_2259BE198(v88, v87, &v102);

        *(v74 + 4) = v76;
        *(v74 + 12) = 2082;
        *(v74 + 14) = sub_2259BE198(v97, v70, &v102);
        *(v74 + 22) = 2082;
        v77 = SecCopyErrorMessageString(v65, 0);
        if (v77)
        {
          v78 = v77;
          v79 = sub_225CCE474();
          v81 = v80;
        }

        else
        {
          v79 = 0;
          v81 = 0xE000000000000000;
        }

        v82 = sub_2259BE198(v79, v81, &v102);

        *(v74 + 24) = v82;
        _os_log_impl(&dword_2259A7000, v71, v73, "failed to delete the key chain item: label = %s, class = %{public}s, error = %{public}s", v74, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AA6F950](v75, -1, -1);
        MEMORY[0x22AA6F950](v74, -1, -1);

        v8 = v96;
        (*v92)(v94, v96);
        a2 = v107;
      }

      else
      {

        (*v92)(v69, v72);
        v8 = v72;
      }

      v19 = 0;
      if (v98)
      {
        return;
      }
    }
  }

  v100[0] = sub_225CCE474();
  v100[1] = v20;
  v21 = MEMORY[0x277D837D0];
  v100[5] = MEMORY[0x277D837D0];
  v100[2] = v91;
  v100[3] = a2;
  v101[0] = sub_225CCE474();
  v101[1] = v22;
  v101[5] = v21;
  v101[2] = v97;
  v101[3] = v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B180);
  v23 = sub_225CCF584();

  sub_225A20D68(v100, &v102);
  v24 = v102;
  v25 = v103;
  v26 = sub_2259F18D4(v102, v103);
  if ((v27 & 1) == 0)
  {
    *(v23 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v26;
    v28 = (v23[6] + 16 * v26);
    *v28 = v24;
    v28[1] = v25;
    sub_2259B9624(v104, (v23[7] + 32 * v26));
    v29 = v23[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_38;
    }

    v23[2] = v31;
    sub_225A20D68(v101, &v102);
    v32 = v102;
    v33 = v103;
    v34 = sub_2259F18D4(v102, v103);
    if ((v35 & 1) == 0)
    {
      *(v23 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v34;
      v36 = (v23[6] + 16 * v34);
      *v36 = v32;
      v36[1] = v33;
      sub_2259B9624(v104, (v23[7] + 32 * v34));
      v37 = v23[2];
      v30 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v30)
      {
        goto LABEL_38;
      }

      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_225A1E4B4(void *a1, uint64_t a2, unint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v80 - v9;
  v83 = sub_225CCD954();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83, v11);
  v81 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD73A0;
  *(inited + 32) = sub_225CCE474();
  *(inited + 40) = v14;
  type metadata accessor for SecKey(0);
  *(inited + 72) = v15;
  *(inited + 48) = a1;
  *(inited + 80) = sub_225CCE474();
  *(inited + 88) = v16;
  *(inited + 120) = MEMORY[0x277D837D0];
  v86 = a2;
  *(inited + 96) = a2;
  *(inited + 104) = a3;
  *(inited + 128) = sub_225CCE474();
  *(inited + 136) = v17;
  v18 = *MEMORY[0x277CDC250];
  type metadata accessor for CFString(0);
  *(inited + 168) = v19;
  *(inited + 144) = v18;
  *(inited + 176) = sub_225CCE474();
  *(inited + 184) = v20;
  v21 = *MEMORY[0x277CDBF00];
  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B088);
  *(inited + 192) = v21;
  v22 = v21;
  v23 = a1;

  v24 = v18;
  sub_225B2C92C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B090);
  swift_arrayDestroy();
  v25 = sub_225CCE2B4();
  v26 = SecItemAdd(v25, 0);

  if (!v26)
  {
  }

  v80[1] = v3;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v27 = off_28105B918;
  v28 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v29 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v29));
  v30 = v82;
  v31 = &v27[v28];
  v32 = v81;
  v33 = v83;
  (*(v82 + 16))(v81, v31, v83);
  v34 = &v27[v29];
  v35 = v32;
  os_unfair_lock_unlock(v34);

  v36 = sub_225CCD934();
  v37 = sub_225CCED14();

  v38 = os_log_type_enabled(v36, v37);
  v80[0] = v10;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v84 = v40;
    *v39 = 136315394;
    *(v39 + 4) = sub_2259BE198(v86, a3, &v84);
    *(v39 + 12) = 2082;
    v41 = SecCopyErrorMessageString(v26, 0);
    if (v41)
    {
      v42 = v41;
      v43 = sub_225CCE474();
      v45 = v44;
    }

    else
    {
      v43 = 0;
      v45 = 0xE000000000000000;
    }

    v47 = sub_2259BE198(v43, v45, &v84);

    *(v39 + 14) = v47;
    _os_log_impl(&dword_2259A7000, v36, v37, "failed to add item to key chain: label = %s, error = %{public}s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v40, -1, -1);
    MEMORY[0x22AA6F950](v39, -1, -1);

    (*(v82 + 8))(v81, v83);
  }

  else
  {

    (*(v30 + 8))(v35, v33);
  }

  if (v26 == -25299)
  {
    v84 = 0;
    v85 = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD00000000000003FLL, 0x8000000225D17C10);
    MEMORY[0x22AA6CE70](v86, a3);
    v48 = v84;
    v49 = v85;
    v86 = 0x8000000225D173E0;
    v83 = 0x8000000225D17BF0;
    v50 = MEMORY[0x277D84F90];
    v51 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v53 = v52;
    v54 = sub_225CCE954();
    v55 = *(v54 - 8);
    v56 = v80[0];
    (*(v55 + 56))(v80[0], 1, 1, v54);
    LODWORD(v54) = (*(v55 + 48))(v56, 1, v54);
    sub_2259CB640(v56, &unk_27D73B050);
    if (v54)
    {
      v57 = 259;
    }

    else
    {
      v57 = 23;
    }

    v58 = sub_225B2C374(v50);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84 = v58;
    sub_225B2C4A0(v51, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v84);

    v60 = v84;
    v61 = sub_225B29AA0(0, 1, 1, v50);
    v63 = *(v61 + 2);
    v62 = *(v61 + 3);
    if (v63 >= v62 >> 1)
    {
      v61 = sub_225B29AA0((v62 > 1), v63 + 1, 1, v61);
    }

    *(v61 + 2) = v63 + 1;
    v64 = &v61[56 * v63];
    *(v64 + 4) = v48;
    *(v64 + 5) = v49;
    v65 = v86;
    *(v64 + 6) = 0xD000000000000025;
    *(v64 + 7) = v65;
    v66 = v83;
    *(v64 + 8) = 0xD00000000000001ALL;
    *(v64 + 9) = v66;
    v67 = 382;
  }

  else
  {
    v84 = 0;
    v85 = 0xE000000000000000;
    sub_225CCF204();

    v84 = 0xD00000000000002BLL;
    v85 = 0x8000000225D17BC0;
    MEMORY[0x22AA6CE70](v86, a3);
    v48 = v84;
    v49 = v85;
    v86 = 0x8000000225D173E0;
    v83 = 0x8000000225D17BF0;
    v68 = MEMORY[0x277D84F90];
    v69 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v53 = v70;
    v71 = sub_225CCE954();
    v72 = *(v71 - 8);
    v73 = v80[0];
    (*(v72 + 56))(v80[0], 1, 1, v71);
    LODWORD(v71) = (*(v72 + 48))(v73, 1, v71);
    sub_2259CB640(v73, &unk_27D73B050);
    if (v71)
    {
      v57 = 240;
    }

    else
    {
      v57 = 23;
    }

    v74 = sub_225B2C374(v68);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v84 = v74;
    sub_225B2C4A0(v69, sub_225B2AC40, 0, v75, &v84);

    v60 = v84;
    v61 = sub_225B29AA0(0, 1, 1, v68);
    v77 = *(v61 + 2);
    v76 = *(v61 + 3);
    if (v77 >= v76 >> 1)
    {
      v61 = sub_225B29AA0((v76 > 1), v77 + 1, 1, v61);
    }

    *(v61 + 2) = v77 + 1;
    v64 = &v61[56 * v77];
    *(v64 + 4) = v48;
    *(v64 + 5) = v49;
    v78 = v86;
    *(v64 + 6) = 0xD000000000000025;
    *(v64 + 7) = v78;
    v79 = v83;
    *(v64 + 8) = 0xD00000000000001ALL;
    *(v64 + 9) = v79;
    v67 = 384;
  }

  *(v64 + 10) = v67;
  *v53 = v57;
  *(v53 + 8) = v61;
  *(v53 + 16) = v48;
  *(v53 + 24) = v49;
  *(v53 + 32) = v60;
  *(v53 + 40) = 0;
  return swift_willThrow();
}

uint64_t sub_225A1EE94(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, CFTypeRef *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v61 = &v59[-v12];
  v63 = sub_225CCD954();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v13);
  v15 = &v59[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD73B0;
  *(inited + 32) = sub_225CCE474();
  v17 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v18;
  *(inited + 48) = a1;
  v64 = a1;
  *(inited + 56) = a2;
  *(inited + 80) = sub_225CCE474();
  *(inited + 88) = v19;
  *(inited + 120) = v17;
  v65 = a3;
  *(inited + 96) = a3;
  *(inited + 104) = a4;
  *(inited + 128) = sub_225CCE474();
  *(inited + 136) = v20;
  *(inited + 168) = MEMORY[0x277D839B0];
  *(inited + 144) = 1;

  sub_225B2C92C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B090);
  swift_arrayDestroy();
  v21 = sub_225CCE2B4();
  v22 = SecItemCopyMatching(v21, a5);

  if (v22 == -25300 || !v22)
  {
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v24 = off_28105B918;
  v25 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v26 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v26));
  v27 = v62;
  v28 = &v24[v25];
  v29 = v63;
  (*(v62 + 16))(v15, v28, v63);
  os_unfair_lock_unlock(&v24[v26]);

  v30 = sub_225CCD934();
  v31 = sub_225CCED14();

  if (os_log_type_enabled(v30, v31))
  {
    v60 = v31;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v66 = v33;
    *v32 = 136315650;
    *(v32 + 4) = sub_2259BE198(v64, a2, &v66);
    *(v32 + 12) = 2082;
    *(v32 + 14) = sub_2259BE198(v65, a4, &v66);
    *(v32 + 22) = 2082;
    v34 = SecCopyErrorMessageString(v22, 0);
    if (v34)
    {
      v35 = v34;
      v36 = sub_225CCE474();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0xE000000000000000;
    }

    v39 = sub_2259BE198(v36, v38, &v66);

    *(v32 + 24) = v39;
    _os_log_impl(&dword_2259A7000, v30, v60, "coreidvd: failed to query the key chain item: label = %s, class = %{public}s, error = %{public}s", v32, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v33, -1, -1);
    MEMORY[0x22AA6F950](v32, -1, -1);

    (*(v62 + 8))(v15, v63);
  }

  else
  {

    (*(v27 + 8))(v15, v29);
  }

  v66 = 0;
  v67 = 0xE000000000000000;
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD00000000000002ELL, 0x8000000225D17B60);
  MEMORY[0x22AA6CE70](v64, a2);
  MEMORY[0x22AA6CE70](0x207373616C63202CLL, 0xEA0000000000203DLL);
  MEMORY[0x22AA6CE70](v65, a4);
  v40 = v66;
  v41 = v67;
  v65 = 0x8000000225D173E0;
  v64 = 0x8000000225D17B90;
  v42 = MEMORY[0x277D84F90];
  v43 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v45 = v44;
  v46 = sub_225CCE954();
  v47 = *(v46 - 8);
  v48 = v61;
  (*(v47 + 56))(v61, 1, 1, v46);
  LODWORD(v46) = (*(v47 + 48))(v48, 1, v46);
  sub_2259CB640(v48, &unk_27D73B050);
  if (v46)
  {
    v49 = 242;
  }

  else
  {
    v49 = 23;
  }

  v50 = sub_225B2C374(v42);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v66 = v50;
  sub_225B2C4A0(v43, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v66);

  v52 = v66;
  v53 = sub_225B29AA0(0, 1, 1, v42);
  v55 = *(v53 + 2);
  v54 = *(v53 + 3);
  if (v55 >= v54 >> 1)
  {
    v53 = sub_225B29AA0((v54 > 1), v55 + 1, 1, v53);
  }

  *(v53 + 2) = v55 + 1;
  v56 = &v53[56 * v55];
  *(v56 + 4) = v40;
  *(v56 + 5) = v41;
  v57 = v65;
  *(v56 + 6) = 0xD000000000000025;
  *(v56 + 7) = v57;
  v58 = v64;
  *(v56 + 8) = 0xD000000000000027;
  *(v56 + 9) = v58;
  *(v56 + 10) = 323;
  *v45 = v49;
  *(v45 + 8) = v53;
  *(v45 + 16) = v40;
  *(v45 + 24) = v41;
  *(v45 + 32) = v52;
  *(v45 + 40) = 0;
  return swift_willThrow();
}

CFDataRef _s13CoreIDVShared19DIPKeystoreKeychainC20getIssuerCertificateySo03SecG3RefaSgAFFZ_0(__SecCertificate *a1)
{
  result[2] = *MEMORY[0x277D85DE8];
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v48 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = SecCertificateCopyNormalizedIssuerSequence(a1);
  if (v6)
  {
    v7 = v6;
    v47 = v3;
    v8 = sub_225CCCFA4();
    sub_225B4AAAC(2, v8, v9, result);
    v10 = result[0];
    v11 = result[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B080);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD73A0;
    *(inited + 32) = sub_225CCE474();
    *(inited + 40) = v13;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = 1;
    *(inited + 80) = sub_225CCE474();
    *(inited + 88) = v14;
    v15 = *MEMORY[0x277CDC438];
    type metadata accessor for CFString(0);
    v17 = v16;
    *(inited + 120) = v16;
    *(inited + 96) = v15;
    *(inited + 128) = sub_225CCE474();
    *(inited + 136) = v18;
    v19 = *MEMORY[0x277CDC230];
    *(inited + 168) = v17;
    *(inited + 144) = v19;
    *(inited + 176) = sub_225CCE474();
    *(inited + 184) = v20;
    *(inited + 216) = MEMORY[0x277CC9318];
    *(inited + 192) = v10;
    *(inited + 200) = v11;
    v21 = v15;
    v22 = v19;
    v45 = v10;
    v46 = v11;
    sub_2259CB710(v10, v11);
    sub_225B2C92C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B090);
    swift_arrayDestroy();
    result[0] = 0;
    v23 = sub_225CCE2B4();
    v24 = SecItemCopyMatching(v23, result);

    if (!v24 && result[0])
    {
      v25 = swift_unknownObjectRetain();
      v26 = CFGetTypeID(v25);
      if (v26 == SecCertificateGetTypeID())
      {

        sub_2259BEF00(v45, v46);

        type metadata accessor for SecCertificate(0);
        v27 = swift_dynamicCastUnknownClassUnconditional();
        swift_unknownObjectRelease();
        return v27;
      }

      swift_unknownObjectRelease();
    }

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v28 = off_28105B918;
    v29 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v30 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v30));
    v32 = v47;
    v31 = v48;
    (*(v47 + 16))(v48, &v28[v29], v2);
    os_unfair_lock_unlock(&v28[v30]);

    v33 = sub_225CCD934();
    v34 = v2;
    v35 = sub_225CCED14();
    if (os_log_type_enabled(v33, v35))
    {
      v44 = v34;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v49[0] = v37;
      *v36 = 136446210;
      v38 = SecCopyErrorMessageString(v24, 0);
      if (v38)
      {
        v39 = v38;
        v40 = sub_225CCE474();
        v42 = v41;
      }

      else
      {
        v40 = 0;
        v42 = 0xE000000000000000;
      }

      v43 = sub_2259BE198(v40, v42, v49);

      *(v36 + 4) = v43;
      _os_log_impl(&dword_2259A7000, v33, v35, "coreidvd: failed to query the key chain item with getting issuer certificate:  error = %{public}s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x22AA6F950](v37, -1, -1);
      MEMORY[0x22AA6F950](v36, -1, -1);

      sub_2259BEF00(v45, v46);
      (*(v47 + 8))(v48, v44);
    }

    else
    {

      sub_2259BEF00(v45, v46);
      (*(v32 + 8))(v31, v34);
    }

    swift_unknownObjectRelease();
    return 0;
  }

  return v6;
}

uint64_t sub_225A1FB50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  return sub_2259CB810(a2 + 32, a1 + 32);
}

{
  return sub_2259CB810(a2 + 32, a1 + 32);
}

uint64_t sub_225A1FBD0()
{
  v2 = v1;
  v64[1] = *MEMORY[0x277D85DE8];
  v3 = sub_225CCD954();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v58 - v11;
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v58 - v15;
  v17 = *(v0 + 72);
  v61 = v14;
  if (v17)
  {
    v18 = sub_225CCF934();

    if (v18)
    {
      goto LABEL_8;
    }

    if (*(v0 + 72) > 1u || !*(v0 + 72))
    {
      v19 = sub_225CCF934();

      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }
  }

LABEL_8:
  if (*(v0 + 76) == 1)
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v20 = off_28105B918;
    v21 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v22 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v22));
    v23 = v61;
    (*(v4 + 16))(v16, &v20[v21], v61);
    os_unfair_lock_unlock(&v20[v22]);
    v24 = sub_225CCD934();
    v25 = sub_225CCED04();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2259A7000, v24, v25, "SE/SEP attestation is about to expire; returning no attestations", v26, 2u);
      MEMORY[0x22AA6F950](v26, -1, -1);
    }

    (*(v4 + 8))(v16, v23);
    return MEMORY[0x277D84F90];
  }

LABEL_14:
  v29 = *(v0 + 16);
  v28 = *(v0 + 24);
  v64[0] = 0;
  v62 = MEMORY[0x277D84F90];
  v30 = sub_225CCE474();
  v32 = v31;

  sub_225A1EE94(v29, v28, v30, v32, v64);
  if (v2)
  {

    return swift_unknownObjectRelease();
  }

  if (v64[0])
  {
    v33 = swift_unknownObjectRetain();
    v34 = CFGetTypeID(v33);
    if (v34 == SecCertificateGetTypeID())
    {

      type metadata accessor for SecCertificate(0);
      swift_unknownObjectRetain();
      v35 = swift_dynamicCastUnknownClassUnconditional();
      MEMORY[0x22AA6D020]();
      if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_225CCE844();
      }

      sub_225CCE884();
      v36 = v62;
      v37 = _s13CoreIDVShared19DIPKeystoreKeychainC20getIssuerCertificateySo03SecG3RefaSgAFFZ_0(v35);
      v38 = v37;
      if (v37)
      {
        v39 = v37;
        MEMORY[0x22AA6D020]();
        if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_225CCE844();
        }

        sub_225CCE884();
        v36 = v62;
      }

      else
      {
        v59 = v35;
        v60 = 0;
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v50 = off_28105B918;
        v51 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v52 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v52));
        v53 = v61;
        (*(v4 + 16))(v12, &v50[v51], v61);
        os_unfair_lock_unlock(&v50[v52]);
        v54 = sub_225CCD934();
        v55 = sub_225CCECF4();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&dword_2259A7000, v54, v55, "coreidvd: no certificate was found for intermediate certificate", v56, 2u);
          MEMORY[0x22AA6F950](v56, -1, -1);
        }

        (*(v4 + 8))(v12, v53);
        v35 = v59;
      }

      v57 = sub_225B05900(v36);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      return v57;
    }

    swift_unknownObjectRelease();
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v40 = off_28105B918;
  v41 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v42 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v42));
  v43 = v61;
  (*(v4 + 16))(v8, &v40[v41], v61);
  os_unfair_lock_unlock(&v40[v42]);

  v44 = sub_225CCD934();
  v45 = sub_225CCED14();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v60 = 0;
    v48 = v47;
    v63 = v47;
    *v46 = 136315138;
    v49 = sub_2259BE198(v29, v28, &v63);

    *(v46 + 4) = v49;
    _os_log_impl(&dword_2259A7000, v44, v45, "coreidvd: no certificate was found for label %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x22AA6F950](v48, -1, -1);
    MEMORY[0x22AA6F950](v46, -1, -1);
  }

  else
  {
  }

  (*(v4 + 8))(v8, v43);
  swift_unknownObjectRelease();
  return MEMORY[0x277D84F90];
}
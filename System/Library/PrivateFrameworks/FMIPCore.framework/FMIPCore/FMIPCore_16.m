uint64_t sub_24A7D53B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E756F5379616C50;
  v3 = a1;
  v4 = 0x6F536574756D6E55;
  v5 = 0xEB00000000646E75;
  if (a1 != 2)
  {
    v4 = 0x6E756F53706F7453;
    v5 = 0xE900000000000064;
  }

  v6 = 0x6E756F536574754DLL;
  if (!a1)
  {
    v6 = 0x6E756F5379616C50;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (v3 <= 1)
  {
    v8 = 0xE900000000000064;
  }

  else
  {
    v8 = v5;
  }

  v9 = 0x6F536574756D6E55;
  v10 = 0xEB00000000646E75;
  if (a2 != 2)
  {
    v9 = 0x6E756F53706F7453;
    v10 = 0xE900000000000064;
  }

  if (a2)
  {
    v2 = 0x6E756F536574754DLL;
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
    v12 = 0xE900000000000064;
  }

  else
  {
    v12 = v10;
  }

  if (v7 == v11 && v8 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_24A82DC04();
  }

  return v13 & 1;
}

uint64_t sub_24A7D54F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x72624E72656E776FLL;
    }

    else
    {
      v3 = 1954047348;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6954657461657263;
    v4 = 0xEF706D617473656DLL;
  }

  else if (a1 == 3)
  {
    v3 = 0x6F43737574617473;
    v4 = 0xEA00000000006564;
  }

  else
  {
    v4 = 0xE800000000000000;
    v3 = 0x7478655472657375;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x72624E72656E776FLL;
    }

    else
    {
      v9 = 1954047348;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
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
    v5 = 0x6F43737574617473;
    v6 = 0xEA00000000006564;
    if (a2 != 3)
    {
      v5 = 0x7478655472657375;
      v6 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6954657461657263;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xEF706D617473656DLL;
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
    v10 = sub_24A82DC04();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_24A7D569C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1701869940;
  v6 = 0x6C61766F72707061;
  v7 = 0xED00006574617453;
  if (a1 != 4)
  {
    v6 = 1701667182;
    v7 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x696669746E656469;
  v9 = 0xEA00000000007265;
  if (a1 != 1)
  {
    v8 = 0x6E6F697461636F6CLL;
    v9 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x73736572646461;
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
      if (v10 != 1701869940)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xED00006574617453;
      if (v10 != 0x6C61766F72707061)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701667182)
      {
LABEL_34:
        v13 = sub_24A82DC04();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEA00000000007265;
      if (v10 != 0x696669746E656469)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6E6F697461636F6CLL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x73736572646461)
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

uint64_t sub_24A7D5884(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6F43726576726573;
    }

    else
    {
      v3 = 0x7472656C61;
    }

    if (v2)
    {
      v4 = 0xED0000747865746ELL;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x6F666E4972657375;
  }

  else if (a1 == 3)
  {
    v3 = 0x6F43737574617473;
    v4 = 0xEA00000000006564;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x746E65746E6F63;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6F43726576726573;
    }

    else
    {
      v9 = 0x7472656C61;
    }

    if (a2)
    {
      v8 = 0xED0000747865746ELL;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6F43737574617473;
    v6 = 0xEA00000000006564;
    if (a2 != 3)
    {
      v5 = 0x746E65746E6F63;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6F666E4972657375;
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
    v10 = sub_24A82DC04();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_24A7D5A2C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701667182;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xE900000000000065;
    v4 = 0xE500000000000000;
    if (a1 == 2)
    {
      v6 = 0x6C62616C69617661;
    }

    else
    {
      v6 = 0x646574756DLL;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xE700000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x676E6979616C70;
    }

    else
    {
      v6 = 1701667182;
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
  v9 = 0x6C62616C69617661;
  v10 = 0xE900000000000065;
  if (a2 != 2)
  {
    v9 = 0x646574756DLL;
    v10 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x676E6979616C70;
    v8 = 0xE700000000000000;
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
    v13 = sub_24A82DC04();
  }

  return v13 & 1;
}

uint64_t sub_24A7D5B64(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF64656C62616E45;
  v3 = 0x626154736D657469;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x626154736D657469;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (v4 == 2)
    {
      v6 = 0xEF64656C62616E45;
    }

    else
    {
      v6 = 0x800000024A843F00;
    }
  }

  else
  {
    v5 = 0xD000000000000014;
    if (v4)
    {
      v6 = 0x800000024A843ED0;
    }

    else
    {
      v5 = 0xD000000000000019;
      v6 = 0x800000024A843EB0;
    }
  }

  if (a2 != 2)
  {
    v3 = 0xD000000000000010;
    v2 = 0x800000024A843F00;
  }

  v7 = 0x800000024A843ED0;
  v8 = 0xD000000000000014;
  if (!a2)
  {
    v8 = 0xD000000000000019;
    v7 = 0x800000024A843EB0;
  }

  if (a2 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v3;
  }

  if (a2 <= 1u)
  {
    v10 = v7;
  }

  else
  {
    v10 = v2;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A82DC04();
  }

  return v11 & 1;
}

uint64_t sub_24A7D5C98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0x726576726573;
    }

    if (v2)
    {
      v4 = 0x800000024A844530;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x496B726F7774656ELL;
    v4 = 0xEC00000065757373;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x696C616974696E69;
    }

    else
    {
      v3 = 0x5441434552504544;
    }

    if (v2 == 3)
    {
      v4 = 0xEE006E6F6974617ALL;
    }

    else
    {
      v4 = 0xEA00000000004445;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = 0x726576726573;
    }

    if (a2)
    {
      v5 = 0x800000024A844530;
    }

    else
    {
      v5 = 0xE600000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEC00000065757373;
    if (v3 != 0x496B726F7774656ELL)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEE006E6F6974617ALL;
    if (v3 != 0x696C616974696E69)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEA00000000004445;
    if (v3 != 0x5441434552504544)
    {
LABEL_34:
      v7 = sub_24A82DC04();
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

uint64_t sub_24A7D5E68(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000656ELL;
  v3 = 0x6F6C61646E617473;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 1702060387;
    }

    else
    {
      v5 = 0x6F6C61646E617473;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xEA0000000000656ELL;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE700000000000000;
    v5 = 0x6475427466656CLL;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6475427468676972;
    }

    else
    {
      v5 = 0x636972656E6567;
    }

    if (v4 == 3)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x6475427466656CLL;
  v9 = 0xE800000000000000;
  v10 = 0x6475427468676972;
  if (a2 != 3)
  {
    v10 = 0x636972656E6567;
    v9 = 0xE700000000000000;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 1702060387;
    v2 = 0xE400000000000000;
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
    v13 = sub_24A82DC04();
  }

  return v13 & 1;
}

uint64_t sub_24A7D5FDC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  if (a1 <= 3u)
  {
    v3 = 0xEA00000000007372;
    v11 = 0x4153487369;
    if (a1 == 2)
    {
      v11 = 0x65626D654D736168;
    }

    else
    {
      v3 = 0xE500000000000000;
    }

    v12 = 0xD000000000000010;
    v8 = 0x800000024A844390;
    if (a1)
    {
      v12 = 0xD000000000000011;
      v8 = 0x800000024A8443B0;
    }

    v9 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v10 = v12;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6449656C707061;
    v5 = 0x696669746E656469;
    if (a1 == 7)
    {
      v6 = 0xEA00000000007265;
    }

    else
    {
      v5 = 0x6D754E656E6F6870;
      v6 = 0xEB00000000726562;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0x6D614E7473726966;
    v8 = 0xE900000000000065;
    if (a1 != 4)
    {
      v7 = 0x656D614E7473616CLL;
      v8 = 0xE800000000000000;
    }

    v9 = a1 <= 5u;
    if (a1 <= 5u)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (v9)
  {
    v13 = v8;
  }

  else
  {
    v13 = v3;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEA00000000007372;
        if (v10 != 0x65626D654D736168)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v2 = 0xE500000000000000;
        if (v10 != 0x4153487369)
        {
          goto LABEL_50;
        }
      }
    }

    else if (a2)
    {
      v2 = 0x800000024A8443B0;
      if (v10 != 0xD000000000000011)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v2 = 0x800000024A844390;
      if (v10 != 0xD000000000000010)
      {
        goto LABEL_50;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v2 = 0xE900000000000065;
      if (v10 != 0x6D614E7473726966)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v2 = 0xE800000000000000;
      if (v10 != 0x656D614E7473616CLL)
      {
LABEL_50:
        v14 = sub_24A82DC04();
        goto LABEL_51;
      }
    }
  }

  else if (a2 == 6)
  {
    v2 = 0xE700000000000000;
    if (v10 != 0x6449656C707061)
    {
      goto LABEL_50;
    }
  }

  else if (a2 == 7)
  {
    if (v10 != 0x696669746E656469)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v2 = 0xEB00000000726562;
    if (v10 != 0x6D754E656E6F6870)
    {
      goto LABEL_50;
    }
  }

  if (v13 != v2)
  {
    goto LABEL_50;
  }

  v14 = 1;
LABEL_51:

  return v14 & 1;
}

uint64_t static FMIPDevice.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v249 = type metadata accessor for FMIPItemGroup();
  v247 = *(v249 - 8);
  v4 = *(v247 + 64);
  MEMORY[0x28223BE20](v249);
  v6 = &v213[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v248 = &v213[-v9];
  v246 = sub_24A6BBA94(&qword_27EF5F160, &unk_24A83DE28);
  v10 = *(*(v246 - 8) + 64);
  MEMORY[0x28223BE20](v246);
  v250 = &v213[-v11];
  v242 = type metadata accessor for FMIPEraseMetadata();
  v239 = *(v242 - 1);
  v12 = *(v239 + 64);
  MEMORY[0x28223BE20](v242);
  v241 = &v213[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_24A6BBA94(&qword_27EF5DE48, &unk_24A8367C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v240 = &v213[-v16];
  v238 = sub_24A6BBA94(&qword_27EF5F168, &qword_24A83DE38);
  v17 = *(*(v238 - 8) + 64);
  MEMORY[0x28223BE20](v238);
  v243 = &v213[-v18];
  v236 = type metadata accessor for FMIPLockMetadata();
  v233 = *(v236 - 8);
  v19 = *(v233 + 64);
  MEMORY[0x28223BE20](v236);
  v235 = &v213[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_24A6BBA94(&qword_27EF5DE50, &qword_24A83DE40);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v234 = &v213[-v23];
  v232 = sub_24A6BBA94(&qword_27EF5F170, &unk_24A83DE48);
  v24 = *(*(v232 - 8) + 64);
  MEMORY[0x28223BE20](v232);
  v237 = &v213[-v25];
  v229 = type metadata accessor for FMIPDeviceLostModeMetadata();
  v227 = *(v229 - 8);
  v26 = *(v227 + 64);
  MEMORY[0x28223BE20](v229);
  v231 = &v213[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v228 = &v213[-v30];
  v226 = sub_24A6BBA94(&qword_27EF5F178, &qword_24A83DE58);
  v31 = *(*(v226 - 8) + 64);
  MEMORY[0x28223BE20](v226);
  v230 = &v213[-v32];
  v223 = type metadata accessor for FMIPPlaySoundMetadata();
  v221 = *(v223 - 8);
  v33 = *(v221 + 64);
  MEMORY[0x28223BE20](v223);
  v225 = &v213[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = sub_24A6BBA94(&qword_27EF5D5F8, &qword_24A83DE60);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v222 = &v213[-v37];
  v220 = sub_24A6BBA94(&qword_27EF5F180, &unk_24A83DE68);
  v38 = *(*(v220 - 8) + 64);
  MEMORY[0x28223BE20](v220);
  v224 = &v213[-v39];
  v40 = sub_24A82CA34();
  v253 = *(v40 - 8);
  v254 = v40;
  v41 = *(v253 + 64);
  MEMORY[0x28223BE20](v40);
  v251 = &v213[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43 - 8);
  v245 = &v213[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v213[-v48];
  v50 = MEMORY[0x28223BE20](v47);
  v52 = &v213[-v51];
  MEMORY[0x28223BE20](v50);
  v54 = &v213[-v53];
  v252 = sub_24A6BBA94(&qword_27EF5F188, &qword_24A83DE78);
  v55 = *(*(v252 - 8) + 64);
  v56 = MEMORY[0x28223BE20](v252);
  v244 = &v213[-((v57 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = MEMORY[0x28223BE20](v56);
  v60 = &v213[-v59];
  v61 = MEMORY[0x28223BE20](v58);
  v63 = &v213[-v62];
  MEMORY[0x28223BE20](v61);
  v65 = &v213[-v64];
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_24A82DC04() & 1) == 0)
  {
    goto LABEL_74;
  }

  v66 = *(a1 + 24);
  v67 = *(a2 + 24);
  if (v66)
  {
    if (!v67 || (*(a1 + 16) != *(a2 + 16) || v66 != v67) && (sub_24A82DC04() & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  else if (v67)
  {
    goto LABEL_74;
  }

  if ((*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_24A82DC04() & 1) == 0)
  {
    goto LABEL_74;
  }

  v68 = *(a1 + 56);
  v69 = *(a2 + 56);
  if (v68)
  {
    if (!v69 || (*(a1 + 48) != *(a2 + 48) || v68 != v69) && (sub_24A82DC04() & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  else if (v69)
  {
    goto LABEL_74;
  }

  if ((*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72)) && (sub_24A82DC04() & 1) == 0)
  {
    goto LABEL_74;
  }

  v219 = v6;
  if (qword_24A83EEC8[*(a1 + 80)] == qword_24A83EEC8[*(a2 + 80)])
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v70 = sub_24A82DC04();
    swift_bridgeObjectRelease_n();
    if ((v70 & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  v71 = *(a1 + 96);
  v72 = *(a2 + 96);
  if (v71)
  {
    if (!v72 || (*(a1 + 88) != *(a2 + 88) || v71 != v72) && (sub_24A82DC04() & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  else if (v72)
  {
    goto LABEL_74;
  }

  if ((*(a1 + 104) != *(a2 + 104) || *(a1 + 112) != *(a2 + 112)) && (sub_24A82DC04() & 1) == 0 || (*(a1 + 120) != *(a2 + 120) || *(a1 + 128) != *(a2 + 128)) && (sub_24A82DC04() & 1) == 0 || (*(a1 + 136) != *(a2 + 136) || *(a1 + 144) != *(a2 + 144)) && (sub_24A82DC04() & 1) == 0 || (*(a1 + 168) != *(a2 + 168) || *(a1 + 176) != *(a2 + 176)) && (sub_24A82DC04() & 1) == 0 || (*(a1 + 152) != *(a2 + 152) || *(a1 + 160) != *(a2 + 160)) && (sub_24A82DC04() & 1) == 0 || (sub_24A6A3BD4(*(a1 + 192), *(a2 + 192)) & 1) == 0 || *(a1 + 184) != *(a2 + 184) || *(a1 + 200) != *(a2 + 200) || *(a1 + 208) != *(a2 + 208))
  {
    goto LABEL_74;
  }

  v215 = type metadata accessor for FMIPDevice();
  v218 = v215[39];
  v73 = *(v252 + 48);
  sub_24A67E964(a1 + v218, v65, &qword_27EF5E0E0, &qword_24A836D90);
  v216 = v73;
  sub_24A67E964(a2 + v218, &v73[v65], &qword_27EF5E0E0, &qword_24A836D90);
  v74 = *(v253 + 48);
  v218 = v253 + 48;
  v75 = v74(v65, 1, v254);
  v217 = v74;
  if (v75 != 1)
  {
    sub_24A67E964(v65, v54, &qword_27EF5E0E0, &qword_24A836D90);
    if (v217(&v216[v65], 1, v254) != 1)
    {
      (*(v253 + 32))(v251, &v216[v65], v254);
      sub_24A7E0BD0(&qword_27EF5F190, MEMORY[0x277CC9578]);
      v214 = sub_24A82CF84();
      v216 = *(v253 + 8);
      (v216)(v251, v254);
      (v216)(v54, v254);
      sub_24A67F378(v65, &qword_27EF5E0E0, &qword_24A836D90);
      if ((v214 & 1) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_60;
    }

    (*(v253 + 8))(v54, v254);
LABEL_58:
    v76 = &qword_27EF5F188;
    v77 = &qword_24A83DE78;
    v78 = v65;
    goto LABEL_73;
  }

  if (v217(&v216[v65], 1, v254) != 1)
  {
    goto LABEL_58;
  }

  sub_24A67F378(v65, &qword_27EF5E0E0, &qword_24A836D90);
LABEL_60:
  v79 = v215[40];
  v80 = *(v252 + 48);
  sub_24A67E964(a1 + v79, v63, &qword_27EF5E0E0, &qword_24A836D90);
  v216 = v80;
  sub_24A67E964(a2 + v79, &v80[v63], &qword_27EF5E0E0, &qword_24A836D90);
  v81 = v254;
  v82 = v217;
  if (v217(v63, 1, v254) == 1)
  {
    if (v82(&v216[v63], 1, v81) == 1)
    {
      sub_24A67F378(v63, &qword_27EF5E0E0, &qword_24A836D90);
      goto LABEL_67;
    }

LABEL_65:
    v76 = &qword_27EF5F188;
    v77 = &qword_24A83DE78;
    v78 = v63;
    goto LABEL_73;
  }

  sub_24A67E964(v63, v52, &qword_27EF5E0E0, &qword_24A836D90);
  if (v82(&v216[v63], 1, v81) == 1)
  {
    (*(v253 + 8))(v52, v81);
    goto LABEL_65;
  }

  v83 = v253;
  (*(v253 + 32))(v251, &v216[v63], v81);
  sub_24A7E0BD0(&qword_27EF5F190, MEMORY[0x277CC9578]);
  LODWORD(v216) = sub_24A82CF84();
  v84 = *(v83 + 8);
  v84(v251, v81);
  v84(v52, v81);
  sub_24A67F378(v63, &qword_27EF5E0E0, &qword_24A836D90);
  if (v216)
  {
LABEL_67:
    v85 = v215[41];
    v86 = *(v252 + 48);
    sub_24A67E964(a1 + v85, v60, &qword_27EF5E0E0, &qword_24A836D90);
    sub_24A67E964(a2 + v85, v60 + v86, &qword_27EF5E0E0, &qword_24A836D90);
    v87 = v254;
    v88 = v217;
    if (v217(v60, 1, v254) == 1)
    {
      if (v88(v60 + v86, 1, v87) == 1)
      {
        sub_24A67F378(v60, &qword_27EF5E0E0, &qword_24A836D90);
        goto LABEL_77;
      }
    }

    else
    {
      sub_24A67E964(v60, v49, &qword_27EF5E0E0, &qword_24A836D90);
      if (v88(v60 + v86, 1, v87) != 1)
      {
        v91 = v253;
        v92 = v254;
        v93 = v251;
        (*(v253 + 32))(v251, v60 + v86, v254);
        sub_24A7E0BD0(&qword_27EF5F190, MEMORY[0x277CC9578]);
        v94 = sub_24A82CF84();
        v95 = *(v91 + 8);
        v95(v93, v92);
        v95(v49, v92);
        sub_24A67F378(v60, &qword_27EF5E0E0, &qword_24A836D90);
        if ((v94 & 1) == 0)
        {
          goto LABEL_74;
        }

LABEL_77:
        if (*(a1 + v215[38]) != *(a2 + v215[38]))
        {
          goto LABEL_74;
        }

        if (*(a1 + v215[43]) != *(a2 + v215[43]))
        {
          goto LABEL_74;
        }

        if (*(a1 + v215[44]) != *(a2 + v215[44]))
        {
          goto LABEL_74;
        }

        if (*(a1 + v215[45]) != *(a2 + v215[45]))
        {
          goto LABEL_74;
        }

        v96 = *(a1 + 216);
        if (v96 != *(a2 + 216))
        {
          goto LABEL_74;
        }

        v97 = *(a1 + 264);
        v98 = *(a2 + 264);
        if (v97)
        {
          v99 = *(a2 + 256);
          v100 = *(a2 + 272);
          v101 = *(a1 + 272);
          v261[0] = *(a1 + 256);
          v261[1] = v97;
          v261[2] = v101;
          if (!v98)
          {
LABEL_91:
            v113 = v97;
            v114 = 0;
LABEL_94:

            goto LABEL_74;
          }

          LOWORD(v259[0]) = v99 & 0x101;
          BYTE2(v259[0]) = BYTE2(v99) & 1;
          BYTE3(v259[0]) = BYTE3(v99);
          v259[1] = v98;
          v259[2] = v100;
          v102 = v97;
          v103 = v98;
          v104 = v102;
          v105 = _s8FMIPCore12FMIPLocationV2eeoiySbAC_ACtFZ_0(v261, v259);

          if ((v105 & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        else if (v98)
        {
          goto LABEL_93;
        }

        v97 = *(a1 + 288);
        v98 = *(a2 + 288);
        if (v97)
        {
          v106 = *(a2 + 280);
          v107 = *(a2 + 296);
          v108 = *(a1 + 296);
          v261[0] = *(a1 + 280);
          v261[1] = v97;
          v261[2] = v108;
          if (v98)
          {
            LOWORD(v259[0]) = v106 & 0x101;
            BYTE2(v259[0]) = BYTE2(v106) & 1;
            BYTE3(v259[0]) = BYTE3(v106);
            v259[1] = v98;
            v259[2] = v107;
            v109 = v97;
            v110 = v98;
            v111 = v109;
            v112 = _s8FMIPCore12FMIPLocationV2eeoiySbAC_ACtFZ_0(v261, v259);

            if ((v112 & 1) == 0)
            {
              goto LABEL_74;
            }

LABEL_95:
            v259[0] = *(a1 + 256);
            *&v259[1] = *(a1 + 264);
            v264[0] = *(a1 + 280);
            *&v264[1] = *(a1 + 288);
            v115 = (v96 >> 5) & 1;
            v116 = v215;
            v117 = v215[32];
            v118 = v259[1];
            v119 = v264[1];
            v120 = v118;
            v216 = v117;
            sub_24A7DC368(v259, v264, v115, &v117[a1], v261);

            v121 = v261[0];
            v122 = v261[1];
            v123 = v261[2];
            v264[0] = *(a2 + 256);
            *&v264[1] = *(a2 + 264);
            v263[0] = *(a2 + 280);
            *&v263[1] = *(a2 + 288);
            v124 = v264[1];
            v125 = v116[32];
            v126 = v263[1];
            v127 = v124;
            sub_24A7DC368(v264, v263, v115, a2 + v125, v259);

            v128 = v259[1];
            if (v122)
            {
              v264[0] = v121;
              v264[1] = v122;
              v264[2] = v123;
              if (v259[1])
              {
                LODWORD(v263[0]) = v259[0] & 0xFF010101;
                v263[1] = v259[1];
                v263[2] = v259[2];
                v129 = v122;
                v130 = _s8FMIPCore12FMIPLocationV2eeoiySbAC_ACtFZ_0(v264, v263);

                if ((v130 & 1) == 0)
                {
                  goto LABEL_74;
                }

LABEL_102:
                memcpy(v262, (a1 + 304), sizeof(v262));
                memcpy(v263, (a2 + 304), sizeof(v263));
                memcpy(v261, (a1 + 304), 0x120uLL);
                memcpy(&v261[36], (a2 + 304), 0x120uLL);
                memcpy(v264, (a1 + 304), 0x120uLL);
                if (sub_24A6921A8(v264) == 1)
                {
                  memcpy(v259, &v261[36], 0x120uLL);
                  if (sub_24A6921A8(v259) == 1)
                  {
                    memcpy(v260, v261, sizeof(v260));
                    sub_24A67E964(v262, v258, &unk_27EF5E0D0, &qword_24A8319E0);
                    sub_24A67E964(v263, v258, &unk_27EF5E0D0, &qword_24A8319E0);
                    sub_24A67F378(v260, &unk_27EF5E0D0, &qword_24A8319E0);
                    goto LABEL_110;
                  }

                  sub_24A67E964(v262, v260, &unk_27EF5E0D0, &qword_24A8319E0);
                  sub_24A67E964(v263, v260, &unk_27EF5E0D0, &qword_24A8319E0);
                }

                else
                {
                  memcpy(v260, v261, sizeof(v260));
                  memcpy(v258, v261, sizeof(v258));
                  memcpy(v259, &v261[36], 0x120uLL);
                  if (sub_24A6921A8(v259) != 1)
                  {
                    memcpy(v257, &v261[36], sizeof(v257));
                    v131 = _s8FMIPCore11FMIPAddressV2eeoiySbAC_ACtFZ_0(v258, v257);
                    memcpy(v255, v257, sizeof(v255));
                    sub_24A67E964(v262, v256, &unk_27EF5E0D0, &qword_24A8319E0);
                    sub_24A67E964(v263, v256, &unk_27EF5E0D0, &qword_24A8319E0);
                    sub_24A67E964(v260, v256, &unk_27EF5E0D0, &qword_24A8319E0);
                    sub_24A6CD854(v255);
                    memcpy(v256, v258, sizeof(v256));
                    sub_24A6CD854(v256);
                    memcpy(v257, v261, sizeof(v257));
                    sub_24A67F378(v257, &unk_27EF5E0D0, &qword_24A8319E0);
                    if ((v131 & 1) == 0)
                    {
                      goto LABEL_74;
                    }

LABEL_110:
                    if (*(a1 + 240) != *(a2 + 240))
                    {
                      goto LABEL_74;
                    }

                    v132 = v215[28];
                    v133 = *(v220 + 48);
                    v134 = v224;
                    sub_24A67E964(a1 + v132, v224, &qword_27EF5D5F8, &qword_24A83DE60);
                    sub_24A67E964(a2 + v132, &v134[v133], &qword_27EF5D5F8, &qword_24A83DE60);
                    v135 = *(v221 + 48);
                    if (v135(v134, 1, v223) == 1)
                    {
                      if (v135(&v224[v133], 1, v223) == 1)
                      {
                        sub_24A67F378(v224, &qword_27EF5D5F8, &qword_24A83DE60);
                        goto LABEL_118;
                      }
                    }

                    else
                    {
                      v136 = v224;
                      sub_24A67E964(v224, v222, &qword_27EF5D5F8, &qword_24A83DE60);
                      if (v135(&v136[v133], 1, v223) != 1)
                      {
                        v137 = v224;
                        v138 = &v224[v133];
                        v139 = v225;
                        sub_24A7E11A4(v138, v225, type metadata accessor for FMIPPlaySoundMetadata);
                        v140 = v222;
                        v141 = _s8FMIPCore21FMIPPlaySoundMetadataV2eeoiySbAC_ACtFZ_0(v222, v139);
                        sub_24A692298(v139, type metadata accessor for FMIPPlaySoundMetadata);
                        sub_24A692298(v140, type metadata accessor for FMIPPlaySoundMetadata);
                        sub_24A67F378(v137, &qword_27EF5D5F8, &qword_24A83DE60);
                        if ((v141 & 1) == 0)
                        {
                          goto LABEL_74;
                        }

LABEL_118:
                        v142 = v215[29];
                        v143 = *(v226 + 48);
                        v144 = v230;
                        sub_24A67E964(a1 + v142, v230, &unk_27EF5E0A0, &unk_24A8367D0);
                        sub_24A67E964(a2 + v142, &v144[v143], &unk_27EF5E0A0, &unk_24A8367D0);
                        v145 = *(v227 + 48);
                        if (v145(v144, 1, v229) == 1)
                        {
                          if (v145(&v230[v143], 1, v229) == 1)
                          {
                            sub_24A67F378(v230, &unk_27EF5E0A0, &unk_24A8367D0);
                            goto LABEL_125;
                          }
                        }

                        else
                        {
                          v146 = v230;
                          sub_24A67E964(v230, v228, &unk_27EF5E0A0, &unk_24A8367D0);
                          if (v145(&v146[v143], 1, v229) != 1)
                          {
                            v147 = v230;
                            v148 = &v230[v143];
                            v149 = v231;
                            sub_24A7E11A4(v148, v231, type metadata accessor for FMIPDeviceLostModeMetadata);
                            v150 = v228;
                            v151 = _s8FMIPCore26FMIPDeviceLostModeMetadataV2eeoiySbAC_ACtFZ_0(v228, v149);
                            sub_24A692298(v149, type metadata accessor for FMIPDeviceLostModeMetadata);
                            sub_24A692298(v150, type metadata accessor for FMIPDeviceLostModeMetadata);
                            sub_24A67F378(v147, &unk_27EF5E0A0, &unk_24A8367D0);
                            if ((v151 & 1) == 0)
                            {
                              goto LABEL_74;
                            }

LABEL_125:
                            v152 = v215[30];
                            v153 = *(v232 + 48);
                            v154 = v237;
                            sub_24A67E964(a1 + v152, v237, &qword_27EF5DE50, &qword_24A83DE40);
                            sub_24A67E964(a2 + v152, &v154[v153], &qword_27EF5DE50, &qword_24A83DE40);
                            v155 = *(v233 + 48);
                            if (v155(v154, 1, v236) == 1)
                            {
                              if (v155(&v237[v153], 1, v236) == 1)
                              {
                                sub_24A67F378(v237, &qword_27EF5DE50, &qword_24A83DE40);
                                goto LABEL_133;
                              }
                            }

                            else
                            {
                              v156 = v237;
                              sub_24A67E964(v237, v234, &qword_27EF5DE50, &qword_24A83DE40);
                              if (v155(&v156[v153], 1, v236) != 1)
                              {
                                sub_24A7E11A4(&v237[v153], v235, type metadata accessor for FMIPLockMetadata);
                                v157 = *(v236 + 20);
                                if ((sub_24A82C9E4() & 1) == 0)
                                {
                                  sub_24A692298(v235, type metadata accessor for FMIPLockMetadata);
                                  sub_24A692298(v234, type metadata accessor for FMIPLockMetadata);
                                  v76 = &qword_27EF5DE50;
                                  v77 = &qword_24A83DE40;
                                  v78 = v237;
                                  goto LABEL_73;
                                }

                                v158 = v234;
                                v159 = *v234;
                                v160 = *v235;
                                sub_24A692298(v235, type metadata accessor for FMIPLockMetadata);
                                v161 = qword_24A83EE38[v159];
                                v162 = qword_24A83EE38[v160];
                                sub_24A692298(v158, type metadata accessor for FMIPLockMetadata);
                                sub_24A67F378(v237, &qword_27EF5DE50, &qword_24A83DE40);
                                if (v161 != v162)
                                {
                                  goto LABEL_74;
                                }

LABEL_133:
                                v163 = v215[31];
                                v164 = *(v238 + 48);
                                v165 = v243;
                                sub_24A67E964(a1 + v163, v243, &qword_27EF5DE48, &unk_24A8367C0);
                                sub_24A67E964(a2 + v163, &v165[v164], &qword_27EF5DE48, &unk_24A8367C0);
                                v166 = *(v239 + 48);
                                if (v166(v165, 1, v242) == 1)
                                {
                                  if (v166(&v243[v164], 1, v242) == 1)
                                  {
                                    sub_24A67F378(v243, &qword_27EF5DE48, &unk_24A8367C0);
LABEL_136:
                                    if ((sub_24A6A4098(*(a1 + 232), *(a2 + 232)) & 1) == 0)
                                    {
                                      goto LABEL_74;
                                    }

                                    v167 = *(a1 + 248);
                                    v168 = *(a2 + 248);
                                    if (v167)
                                    {
                                      if (!v168)
                                      {
                                        goto LABEL_74;
                                      }

                                      v169 = *(a2 + 248);

                                      v170 = sub_24A7D8F24(v167, v168);

                                      if ((v170 & 1) == 0)
                                      {
                                        goto LABEL_74;
                                      }
                                    }

                                    else if (v168)
                                    {
                                      goto LABEL_74;
                                    }

                                    v187 = *(v246 + 48);
                                    v188 = v250;
                                    sub_24A67E964(&v216[a1], v250, &unk_27EF5E0B0, &qword_24A8338B0);
                                    sub_24A67E964(a2 + v125, &v188[v187], &unk_27EF5E0B0, &qword_24A8338B0);
                                    v189 = *(v247 + 48);
                                    if (v189(v188, 1, v249) == 1)
                                    {
                                      if (v189(&v250[v187], 1, v249) == 1)
                                      {
                                        sub_24A67F378(v250, &unk_27EF5E0B0, &qword_24A8338B0);
LABEL_164:
                                        if (*(a1 + v215[33]) != *(a2 + v215[33]) || (sub_24A6A428C(*(a1 + 224), *(a2 + 224)) & 1) == 0 || *(a1 + v215[34]) != *(a2 + v215[34]) || *(a1 + v215[36]) != *(a2 + v215[36]))
                                        {
                                          goto LABEL_74;
                                        }

                                        v196 = v215[37];
                                        v197 = (a1 + v196);
                                        v198 = *(a1 + v196 + 8);
                                        v199 = (a2 + v196);
                                        v200 = v199[1];
                                        if (v198)
                                        {
                                          if (!v200 || (*v197 != *v199 || v198 != v200) && (sub_24A82DC04() & 1) == 0)
                                          {
                                            goto LABEL_74;
                                          }
                                        }

                                        else if (v200)
                                        {
                                          goto LABEL_74;
                                        }

                                        v201 = v215[42];
                                        v202 = *(v252 + 48);
                                        v203 = a1 + v201;
                                        v204 = v244;
                                        sub_24A67E964(v203, v244, &qword_27EF5E0E0, &qword_24A836D90);
                                        sub_24A67E964(a2 + v201, &v204[v202], &qword_27EF5E0E0, &qword_24A836D90);
                                        if (v217(v204, 1, v254) == 1)
                                        {
                                          if (v217(&v244[v202], 1, v254) == 1)
                                          {
                                            sub_24A67F378(v244, &qword_27EF5E0E0, &qword_24A836D90);
                                            v89 = 1;
                                            return v89 & 1;
                                          }
                                        }

                                        else
                                        {
                                          v205 = v244;
                                          sub_24A67E964(v244, v245, &qword_27EF5E0E0, &qword_24A836D90);
                                          if (v217(&v205[v202], 1, v254) != 1)
                                          {
                                            v207 = v253;
                                            v206 = v254;
                                            v208 = v244;
                                            v209 = &v244[v202];
                                            v210 = v251;
                                            (*(v253 + 32))(v251, v209, v254);
                                            sub_24A7E0BD0(&qword_27EF5F190, MEMORY[0x277CC9578]);
                                            v211 = v245;
                                            v89 = sub_24A82CF84();
                                            v212 = *(v207 + 8);
                                            v212(v210, v206);
                                            v212(v211, v206);
                                            sub_24A67F378(v208, &qword_27EF5E0E0, &qword_24A836D90);
                                            return v89 & 1;
                                          }

                                          (*(v253 + 8))(v245, v254);
                                        }

                                        v76 = &qword_27EF5F188;
                                        v77 = &qword_24A83DE78;
                                        v78 = v244;
                                        goto LABEL_73;
                                      }
                                    }

                                    else
                                    {
                                      v190 = v250;
                                      sub_24A67E964(v250, v248, &unk_27EF5E0B0, &qword_24A8338B0);
                                      if (v189(&v190[v187], 1, v249) != 1)
                                      {
                                        v191 = v250;
                                        v192 = &v250[v187];
                                        v193 = v219;
                                        sub_24A7E11A4(v192, v219, type metadata accessor for FMIPItemGroup);
                                        v194 = v248;
                                        v195 = _s8FMIPCore13FMIPItemGroupV2eeoiySbAC_ACtFZ_0(v248, v193);
                                        sub_24A692298(v193, type metadata accessor for FMIPItemGroup);
                                        sub_24A692298(v194, type metadata accessor for FMIPItemGroup);
                                        sub_24A67F378(v191, &unk_27EF5E0B0, &qword_24A8338B0);
                                        if ((v195 & 1) == 0)
                                        {
                                          goto LABEL_74;
                                        }

                                        goto LABEL_164;
                                      }

                                      sub_24A692298(v248, type metadata accessor for FMIPItemGroup);
                                    }

                                    v76 = &qword_27EF5F160;
                                    v77 = &unk_24A83DE28;
                                    v78 = v250;
LABEL_73:
                                    sub_24A67F378(v78, v76, v77);
                                    goto LABEL_74;
                                  }
                                }

                                else
                                {
                                  v171 = v243;
                                  sub_24A67E964(v243, v240, &qword_27EF5DE48, &unk_24A8367C0);
                                  if (v166(&v171[v164], 1, v242) != 1)
                                  {
                                    sub_24A7E11A4(&v243[v164], v241, type metadata accessor for FMIPEraseMetadata);
                                    v172 = v242[5];
                                    if ((sub_24A82C9E4() & 1) == 0 || qword_24A83EE38[*v240] != qword_24A83EE38[*v241])
                                    {
                                      goto LABEL_155;
                                    }

                                    v173 = v242[7];
                                    v174 = &v240[v173];
                                    v175 = *&v240[v173];
                                    v176 = *&v240[v173 + 8];
                                    v177 = &v241[v173];
                                    if ((*v174 != *v177 || v176 != *(v177 + 1)) && (sub_24A82DC04() & 1) == 0)
                                    {
                                      goto LABEL_155;
                                    }

                                    v178 = v242[6];
                                    v179 = &v240[v178];
                                    v180 = *&v240[v178];
                                    v181 = *&v240[v178 + 8];
                                    v182 = &v241[v178];
                                    if ((*v179 != *v182 || v181 != *(v182 + 1)) && (sub_24A82DC04() & 1) == 0)
                                    {
LABEL_155:
                                      sub_24A692298(v241, type metadata accessor for FMIPEraseMetadata);
                                      sub_24A692298(v240, type metadata accessor for FMIPEraseMetadata);
                                      v76 = &qword_27EF5DE48;
                                      v77 = &unk_24A8367C0;
                                      v78 = v243;
                                      goto LABEL_73;
                                    }

                                    v183 = v242[8];
                                    v184 = v240;
                                    v185 = v240[v183];
                                    v186 = v241[v183];
                                    sub_24A692298(v241, type metadata accessor for FMIPEraseMetadata);
                                    sub_24A692298(v184, type metadata accessor for FMIPEraseMetadata);
                                    sub_24A67F378(v243, &qword_27EF5DE48, &unk_24A8367C0);
                                    if (v185 != v186)
                                    {
                                      goto LABEL_74;
                                    }

                                    goto LABEL_136;
                                  }

                                  sub_24A692298(v240, type metadata accessor for FMIPEraseMetadata);
                                }

                                v76 = &qword_27EF5F168;
                                v77 = &qword_24A83DE38;
                                v78 = v243;
                                goto LABEL_73;
                              }

                              sub_24A692298(v234, type metadata accessor for FMIPLockMetadata);
                            }

                            v76 = &qword_27EF5F170;
                            v77 = &unk_24A83DE48;
                            v78 = v237;
                            goto LABEL_73;
                          }

                          sub_24A692298(v228, type metadata accessor for FMIPDeviceLostModeMetadata);
                        }

                        v76 = &qword_27EF5F178;
                        v77 = &qword_24A83DE58;
                        v78 = v230;
                        goto LABEL_73;
                      }

                      sub_24A692298(v222, type metadata accessor for FMIPPlaySoundMetadata);
                    }

                    v76 = &qword_27EF5F180;
                    v77 = &unk_24A83DE68;
                    v78 = v224;
                    goto LABEL_73;
                  }

                  memcpy(v257, v261, sizeof(v257));
                  sub_24A67E964(v262, v256, &unk_27EF5E0D0, &qword_24A8319E0);
                  sub_24A67E964(v263, v256, &unk_27EF5E0D0, &qword_24A8319E0);
                  sub_24A67E964(v260, v256, &unk_27EF5E0D0, &qword_24A8319E0);
                  sub_24A6CD854(v257);
                }

                memcpy(v259, v261, sizeof(v259));
                v76 = &qword_27EF5D280;
                v77 = &unk_24A831EC0;
                v78 = v259;
                goto LABEL_73;
              }
            }

            else
            {
              if (!v259[1])
              {
                goto LABEL_102;
              }

              v122 = 0;
            }

            goto LABEL_74;
          }

          goto LABEL_91;
        }

        if (!v98)
        {
          goto LABEL_95;
        }

LABEL_93:
        v114 = v98;
        v113 = 0;
        goto LABEL_94;
      }

      (*(v253 + 8))(v49, v254);
    }

    v76 = &qword_27EF5F188;
    v77 = &qword_24A83DE78;
    v78 = v60;
    goto LABEL_73;
  }

LABEL_74:
  v89 = 0;
  return v89 & 1;
}

uint64_t sub_24A7D8568@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_24A7D85C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t FMIPDevice.shouldDisplaySeparatedLocation.getter()
{
  v1 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for FMIPDevice();
  sub_24A67E964(v0 + *(v5 + 128), v4, &unk_27EF5E0B0, &qword_24A8338B0);
  v6 = type metadata accessor for FMIPItemGroup();
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_24A67F378(v4, &unk_27EF5E0B0, &qword_24A8338B0);
    v7 = 0;
  }

  else
  {
    v7 = FMIPItemGroup.shouldDisplaySeparatedLocation.getter();
    sub_24A692298(v4, type metadata accessor for FMIPItemGroup);
  }

  return v7 & 1;
}

uint64_t sub_24A7D8798(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_24A82DC04() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_24A7D8828(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  result = sub_24A6AEB68();
  v4 = 0;
  while (2)
  {
    if (v2)
    {
      v29 = v4;
      v30 = v2;
      v6 = *(a1 + v4 + 35);
      v7 = *(a1 + v4 + 48);
      v8 = *(a1 + v4 + 34);
      v9 = *(a1 + v4 + 33);
      v10 = *(a1 + v4 + 32);
      v11 = *(a2 + v4 + 32);
      v12 = *(a2 + v4 + 33);
      v13 = *(a2 + v4 + 34);
      v31 = *(a2 + v4 + 35);
      v14 = *(a2 + v4 + 40);
      v15 = *(a2 + v4 + 48);
      v16 = *(a1 + v4 + 40);
      v17 = v14;
      v32 = v16;
      if ((sub_24A82D5E4() & 1) != 0 && v7 == v15 && ((v10 ^ v11) & 1) == 0 && ((v9 ^ v12) & 1) == 0 && ((v8 ^ v13) & 1) == 0)
      {
        v18 = 0xE700000000000000;
        v19 = 0x6E776F6E6B6E75;
        v20 = 0x6E776F6E6B6E75;
        switch(v6)
        {
          case 1:
            v20 = 0x756F7364776F7263;
            v18 = 0xEC00000064656372;
            break;
          case 2:
            v18 = 0xE300000000000000;
            v20 = 5460039;
            break;
          case 3:
            v18 = 0xE400000000000000;
            v20 = 1768319319;
            break;
          case 4:
            v20 = 0x61636F4C65666173;
            v18 = 0xEC0000006E6F6974;
            break;
          case 5:
            v20 = 0xD000000000000012;
            v18 = 0x800000024A8439F0;
            break;
          case 6:
            v18 = 0xE800000000000000;
            v20 = 0x656D69746C616572;
            break;
          case 7:
            v20 = 0x6F4C646572696170;
            v18 = 0xEE006E6F69746163;
            break;
          case 8:
            v20 = 0x6E6E6F437473616CLL;
            v21 = 1702126437;
            goto LABEL_32;
          case 9:
            v20 = 0xD000000000000019;
            v18 = 0x800000024A843A30;
            break;
          case 10:
            v20 = 0xD000000000000010;
            v18 = 0x800000024A843A50;
            break;
          case 11:
            v20 = 0x656E774F7261656ELL;
            v18 = 0xE900000000000072;
            break;
          case 12:
            v20 = 0xD000000000000018;
            v18 = 0x800000024A843A70;
            break;
          case 13:
            v20 = 0x786F725072656570;
            v18 = 0xEB00000000646569;
            break;
          case 14:
            v20 = 0x6C627550666C6573;
            v21 = 1701344105;
LABEL_32:
            v18 = v21 | 0xED00006400000000;
            break;
          case 15:
            v20 = 0xD000000000000014;
            v18 = 0x800000024A843AB0;
            break;
          case 16:
            v18 = 0xE600000000000000;
            v20 = 0x646568636163;
            break;
          case 17:
            v20 = 0x6552746E65746E69;
            v18 = 0xEE0065736E6F7073;
            break;
          case 18:
            v20 = 0xD000000000000014;
            v18 = 0x800000024A843AE0;
            break;
          case 19:
            v20 = 0xD000000000000013;
            v18 = 0x800000024A843B00;
            break;
          default:
            break;
        }

        v22 = 0xE700000000000000;
        switch(v31)
        {
          case 1:
            v23 = 0x756F7364776F7263;
            v24 = 1684366194;
            goto LABEL_43;
          case 2:
            v22 = 0xE300000000000000;
            if (v20 != 5460039)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 3:
            v22 = 0xE400000000000000;
            if (v20 != 1768319319)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 4:
            v23 = 0x61636F4C65666173;
            v24 = 1852795252;
LABEL_43:
            v22 = v24 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v20 != v23)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 5:
            v22 = 0x800000024A8439F0;
            if (v20 != 0xD000000000000012)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 6:
            v22 = 0xE800000000000000;
            if (v20 != 0x656D69746C616572)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 7:
            v25 = 0x6F4C646572696170;
            v26 = 0x6E6F69746163;
            goto LABEL_57;
          case 8:
            v19 = 0x6E6E6F437473616CLL;
            v22 = 0xED00006465746365;
            goto LABEL_70;
          case 9:
            v22 = 0x800000024A843A30;
            if (v20 != 0xD000000000000019)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 10:
            v22 = 0x800000024A843A50;
            if (v20 != 0xD000000000000010)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 11:
            v22 = 0xE900000000000072;
            if (v20 != 0x656E774F7261656ELL)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 12:
            v22 = 0x800000024A843A70;
            if (v20 != 0xD000000000000018)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 13:
            v22 = 0xEB00000000646569;
            if (v20 != 0x786F725072656570)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 14:
            v22 = 0xED00006465687369;
            if (v20 != 0x6C627550666C6573)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 15:
            v22 = 0x800000024A843AB0;
            if (v20 != 0xD000000000000014)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 16:
            v22 = 0xE600000000000000;
            if (v20 != 0x646568636163)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 17:
            v25 = 0x6552746E65746E69;
            v26 = 0x65736E6F7073;
LABEL_57:
            v22 = v26 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v20 != v25)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 18:
            v22 = 0x800000024A843AE0;
            if (v20 != 0xD000000000000014)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          case 19:
            v22 = 0x800000024A843B00;
            if (v20 != 0xD000000000000013)
            {
              goto LABEL_5;
            }

            goto LABEL_71;
          default:
LABEL_70:
            if (v20 != v19)
            {
              goto LABEL_5;
            }

LABEL_71:
            if (v18 == v22)
            {
            }

            else
            {
LABEL_5:
              v5 = sub_24A82DC04();

              if ((v5 & 1) == 0)
              {
                return 0;
              }
            }

            v4 = v29 + 24;
            v2 = v30 - 1;
            if (v30 != 1)
            {
              continue;
            }

            return 1;
        }
      }

      return 0;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_24A7D8F24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    sub_24A6AEB68();
    v5 = (a2 + 56);
    v6 = (a1 + 56);
    while (1)
    {
      v8 = *(v6 - 24);
      v9 = *(v6 - 1);
      v10 = *v6;
      v11 = *(v5 - 24);
      v12 = *(v5 - 2);
      v13 = *(v5 - 1);
      v14 = *v5;
      v15 = *(v6 - 2);
      v30 = v12;
      if ((sub_24A82D5E4() & 1) == 0)
      {
        break;
      }

      v16 = 0x6E776F6E6B6E75;
      v17 = 0xE700000000000000;
      switch(v8)
      {
        case 1:
          v16 = 0x756F7364776F7263;
          v17 = 0xEC00000064656372;
          break;
        case 2:
          v17 = 0xE300000000000000;
          v16 = 5460039;
          break;
        case 3:
          v17 = 0xE400000000000000;
          v16 = 1768319319;
          break;
        case 4:
          v16 = 0x61636F4C65666173;
          v17 = 0xEC0000006E6F6974;
          break;
        case 5:
          v16 = 0xD000000000000012;
          v17 = 0x800000024A8439F0;
          break;
        case 6:
          v17 = 0xE800000000000000;
          v16 = 0x656D69746C616572;
          break;
        case 7:
          v16 = 0x6F4C646572696170;
          v17 = 0xEE006E6F69746163;
          break;
        case 8:
          v16 = 0x6E6E6F437473616CLL;
          v18 = 1702126437;
          goto LABEL_27;
        case 9:
          v16 = 0xD000000000000019;
          v17 = 0x800000024A843A30;
          break;
        case 10:
          v16 = 0xD000000000000010;
          v17 = 0x800000024A843A50;
          break;
        case 11:
          v17 = 0xE900000000000072;
          v16 = 0x656E774F7261656ELL;
          break;
        case 12:
          v16 = 0xD000000000000018;
          v17 = 0x800000024A843A70;
          break;
        case 13:
          v16 = 0x786F725072656570;
          v17 = 0xEB00000000646569;
          break;
        case 14:
          v16 = 0x6C627550666C6573;
          v18 = 1701344105;
LABEL_27:
          v17 = v18 | 0xED00006400000000;
          break;
        case 15:
          v16 = 0xD000000000000014;
          v17 = 0x800000024A843AB0;
          break;
        case 16:
          v17 = 0xE600000000000000;
          v16 = 0x646568636163;
          break;
        case 17:
          v16 = 0x6552746E65746E69;
          v17 = 0xEE0065736E6F7073;
          break;
        case 18:
          v16 = 0xD000000000000014;
          v17 = 0x800000024A843AE0;
          break;
        case 19:
          v16 = 0xD000000000000013;
          v17 = 0x800000024A843B00;
          break;
        default:
          break;
      }

      v19 = 0x6E776F6E6B6E75;
      v20 = 0xE700000000000000;
      switch(v11)
      {
        case 1:
          v21 = 0x756F7364776F7263;
          v22 = 1684366194;
          goto LABEL_38;
        case 2:
          v20 = 0xE300000000000000;
          if (v16 != 5460039)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 3:
          v20 = 0xE400000000000000;
          if (v16 != 1768319319)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 4:
          v21 = 0x61636F4C65666173;
          v22 = 1852795252;
LABEL_38:
          v20 = v22 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v16 != v21)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 5:
          v20 = 0x800000024A8439F0;
          if (v16 != 0xD000000000000012)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 6:
          v20 = 0xE800000000000000;
          if (v16 != 0x656D69746C616572)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 7:
          v23 = 0x6F4C646572696170;
          v24 = 0x6E6F69746163;
          goto LABEL_52;
        case 8:
          v19 = 0x6E6E6F437473616CLL;
          v20 = 0xED00006465746365;
          goto LABEL_65;
        case 9:
          v20 = 0x800000024A843A30;
          if (v16 != 0xD000000000000019)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 10:
          v20 = 0x800000024A843A50;
          if (v16 != 0xD000000000000010)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 11:
          v20 = 0xE900000000000072;
          if (v16 != 0x656E774F7261656ELL)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 12:
          v20 = 0x800000024A843A70;
          if (v16 != 0xD000000000000018)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 13:
          v20 = 0xEB00000000646569;
          if (v16 != 0x786F725072656570)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 14:
          v20 = 0xED00006465687369;
          if (v16 != 0x6C627550666C6573)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 15:
          v20 = 0x800000024A843AB0;
          if (v16 != 0xD000000000000014)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 16:
          v20 = 0xE600000000000000;
          if (v16 != 0x646568636163)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 17:
          v23 = 0x6552746E65746E69;
          v24 = 0x65736E6F7073;
LABEL_52:
          v20 = v24 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v16 != v23)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 18:
          v20 = 0x800000024A843AE0;
          if (v16 != 0xD000000000000014)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        case 19:
          v20 = 0x800000024A843B00;
          if (v16 != 0xD000000000000013)
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        default:
LABEL_65:
          if (v16 != v19)
          {
            goto LABEL_69;
          }

LABEL_66:
          if (v17 == v20)
          {
          }

          else
          {
LABEL_69:
            v25 = sub_24A82DC04();

            if ((v25 & 1) == 0)
            {
              goto LABEL_92;
            }
          }

          if (v9 != v13)
          {
            goto LABEL_92;
          }

          if (v10 > 1)
          {
            if (v10 == 2)
            {
              v26 = 0xE800000000000000;
              v27 = 0x676E696772616843;
              if (v14 > 1)
              {
                goto LABEL_77;
              }
            }

            else
            {
              v27 = 0x6772616843746F4ELL;
              v26 = 0xEB00000000676E69;
              if (v14 > 1)
              {
LABEL_77:
                if (v14 == 2)
                {
                  v28 = 0xE800000000000000;
                  if (v27 != 0x676E696772616843)
                  {
                    goto LABEL_5;
                  }
                }

                else
                {
                  v28 = 0xEB00000000676E69;
                  if (v27 != 0x6772616843746F4ELL)
                  {
                    goto LABEL_5;
                  }
                }

                goto LABEL_89;
              }
            }
          }

          else
          {
            v26 = 0xE700000000000000;
            if (v10)
            {
              v27 = 0x64656772616843;
              if (v14 > 1)
              {
                goto LABEL_77;
              }
            }

            else
            {
              v27 = 0x6E776F6E6B6E55;
              if (v14 > 1)
              {
                goto LABEL_77;
              }
            }
          }

          v28 = 0xE700000000000000;
          if (v14)
          {
            if (v27 != 0x64656772616843)
            {
              goto LABEL_5;
            }
          }

          else if (v27 != 0x6E776F6E6B6E55)
          {
            goto LABEL_5;
          }

LABEL_89:
          if (v26 == v28)
          {

            goto LABEL_6;
          }

LABEL_5:
          v7 = sub_24A82DC04();

          if ((v7 & 1) == 0)
          {
            return 0;
          }

LABEL_6:
          v5 += 32;
          v6 += 4;
          if (!--v2)
          {
            return 1;
          }

          break;
      }
    }

LABEL_92:
  }

  return 0;
}

uint64_t sub_24A7D9750(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v41 = v2;
  v42 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 48);
    v28 = *(v5 + 32);
    v29 = v8;
    v30 = *(v5 + 64);
    v31 = *(v5 + 80);
    v9 = *(v5 + 16);
    v27[0] = *v5;
    v27[1] = v9;
    v26 = v31;
    v23 = v28;
    v24 = v8;
    v25 = v30;
    v21 = v27[0];
    v22 = v9;
    v10 = *(v6 + 48);
    v33 = *(v6 + 32);
    v34 = v10;
    v35 = *(v6 + 64);
    v36 = *(v6 + 80);
    v11 = *(v6 + 16);
    v32[0] = *v6;
    v32[1] = v11;
    v20 = v36;
    v16 = v11;
    v17 = v33;
    v18 = v10;
    v19 = v35;
    v15 = v32[0];
    sub_24A6EF948(v27, v14);
    sub_24A6EF948(v32, v14);
    v12 = _s8FMIPCore10FMIPPersonV2eeoiySbAC_ACtFZ_0(&v21, &v15);
    v37[2] = v17;
    v37[3] = v18;
    v37[4] = v19;
    v38 = v20;
    v37[0] = v15;
    v37[1] = v16;
    sub_24A6EF9B4(v37);
    v39[2] = v23;
    v39[3] = v24;
    v39[4] = v25;
    v40 = v26;
    v39[0] = v21;
    v39[1] = v22;
    sub_24A6EF9B4(v39);
    if ((v12 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 88;
    v5 += 88;
  }

  return 1;
}

uint64_t FMIPDevice.hasLocation.getter()
{
  v1 = v0;
  v2 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = *(type metadata accessor for FMIPDevice() + 128);
  sub_24A67E964(v1 + v6, v5, &unk_27EF5E0B0, &qword_24A8338B0);
  v7 = type metadata accessor for FMIPItemGroup();
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_24A67F378(v5, &unk_27EF5E0B0, &qword_24A8338B0);
  }

  else
  {
    v8 = FMIPItemGroup.shouldDisplaySeparatedLocation.getter();
    sub_24A692298(v5, type metadata accessor for FMIPItemGroup);
    if ((v8 & 1) != 0 && FMIPDevice.itemGroupsPartsHaveLocation.getter())
    {
      return 1;
    }
  }

  v18 = *(v1 + 256);
  v19 = *(v1 + 264);
  v16 = *(v1 + 280);
  v17 = *(v1 + 288);
  v10 = (*(v1 + 216) >> 5) & 1;
  v11 = v19;
  v12 = v17;
  v13 = v11;
  sub_24A7DC368(&v18, &v16, v10, v1 + v6, v20);

  v9 = v21 != 0;
  if (v21)
  {
  }

  return v9;
}

uint64_t FMIPDevice.init(device:separationMonitoringState:separationSupported:canBeLeashedByHost:safeLocations:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v71 = a5;
  v74 = a3;
  v75 = a4;
  v9 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v59 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v76 = &v58 - v13;
  v72 = *a2;
  v14 = type metadata accessor for FMIPDevice();
  v73 = v14[35];
  *(a6 + v73) = 1;
  v15 = *a1;
  v69 = *(a1 + 8);
  v16 = v69;
  *a6 = v15;
  *(a6 + 8) = v16;
  *(a6 + 16) = *(a1 + 16);
  v62 = *(a1 + 24);
  *(a6 + 24) = v62;
  v17 = *(a1 + 48);
  v67 = *(a1 + 40);
  *(a6 + 40) = v67;
  *(a6 + 48) = v17;
  *&v70 = *(a1 + 72);
  v18 = v70;
  v61 = *(a1 + 56);
  *(a6 + 56) = v61;
  *(a6 + 72) = v18;
  *(a6 + 80) = *(a1 + 80);
  *(a6 + 88) = *(a1 + 88);
  v60 = *(a1 + 96);
  *(a6 + 96) = v60;
  v19 = *(a1 + 120);
  v66 = *(a1 + 112);
  *(a6 + 112) = v66;
  *(a6 + 120) = v19;
  v68 = *(a1 + 176);
  v20 = v68;
  v21 = *(a1 + 136);
  v64 = *(a1 + 128);
  *(a6 + 128) = v64;
  *(a6 + 136) = v21;
  v22 = *(a1 + 152);
  v65 = *(a1 + 144);
  *(a6 + 144) = v65;
  *(a6 + 152) = v22;
  v23 = *(a1 + 168);
  v63 = *(a1 + 160);
  v24 = v63;
  *(a6 + 168) = v23;
  *(a6 + 176) = v20;
  *(a6 + 160) = v24;
  *(a6 + 184) = *(a1 + 184);
  *(a6 + 192) = *(a1 + 192);
  *(a6 + 200) = *(a1 + 200);
  sub_24A67E964(a1 + v14[39], a6 + v14[39], &qword_27EF5E0E0, &qword_24A836D90);
  sub_24A67E964(a1 + v14[40], a6 + v14[40], &qword_27EF5E0E0, &qword_24A836D90);
  sub_24A67E964(a1 + v14[41], a6 + v14[41], &qword_27EF5E0E0, &qword_24A836D90);
  sub_24A67E964(a1 + v14[42], a6 + v14[42], &qword_27EF5E0E0, &qword_24A836D90);
  *(a6 + v14[38]) = *(a1 + v14[38]);
  *(a6 + v14[43]) = *(a1 + v14[43]);
  *(a6 + v14[44]) = *(a1 + v14[44]);
  *(a6 + v14[45]) = *(a1 + v14[45]);
  *(a6 + 232) = *(a1 + 232);
  *(a6 + 248) = *(a1 + 248);
  v25 = qword_27EF5CBC8;

  if (v25 != -1)
  {
    swift_once();
  }

  if (byte_27EF5DEF1)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v26 = *(a1 + 256);
    v27 = *(a1 + 264);
    v28 = *(a1 + 272);
    v29 = v27;
  }

  v30 = v76;
  *(a6 + 256) = v26;
  *(a6 + 264) = v27;
  *(a6 + 272) = v28;
  memcpy(v78, (a1 + 304), 0x120uLL);
  memcpy((a6 + 304), (a1 + 304), 0x120uLL);
  sub_24A67E964(a1 + v14[28], a6 + v14[28], &qword_27EF5D5F8, &qword_24A83DE60);
  sub_24A67E964(a1 + v14[29], a6 + v14[29], &unk_27EF5E0A0, &unk_24A8367D0);
  sub_24A67E964(a1 + v14[30], a6 + v14[30], &qword_27EF5DE50, &qword_24A83DE40);
  sub_24A67E964(a1 + v14[31], a6 + v14[31], &qword_27EF5DE48, &unk_24A8367C0);
  *(a6 + 280) = *(a1 + 280);
  v70 = *(a1 + 288);
  *(a6 + 288) = v70;
  *(a6 + 224) = v71;
  v31 = v14[32];
  sub_24A67E964(a1 + v31, a6 + v31, &unk_27EF5E0B0, &qword_24A8338B0);
  v32 = v14[34];
  v33 = *(a1 + v32);
  v71 = v32;
  *(a6 + v32) = v33;
  *(a6 + v14[36]) = *(a1 + v14[36]);
  v34 = v14[37];
  v35 = *(a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a6 + v34);
  *v37 = v35;
  v37[1] = v36;
  sub_24A67E964(a6 + v31, v30, &unk_27EF5E0B0, &qword_24A8338B0);
  v38 = type metadata accessor for FMIPItemGroup();
  v39 = *(*(v38 - 8) + 48);
  v40 = v39(v30, 1, v38);
  v41 = v70;
  if (v40 == 1)
  {
    sub_24A67E964(v78, v77, &unk_27EF5E0D0, &qword_24A8319E0);

    v42 = v41;
    sub_24A67F378(v76, &unk_27EF5E0B0, &qword_24A8338B0);
    v43 = a1 + v31;
    v44 = v59;
    sub_24A67E964(v43, v59, &unk_27EF5E0B0, &qword_24A8338B0);
    v45 = 1;
    v46 = v39(v44, 1, v38);
    sub_24A67F378(v44, &unk_27EF5E0B0, &qword_24A8338B0);
    v47 = v72;
    if (v46 == 1 && (*(a1 + 243) & 4) == 0)
    {
      v45 = *(a1 + v71) == 5;
    }
  }

  else
  {
    sub_24A67E964(v78, v77, &unk_27EF5E0D0, &qword_24A8319E0);

    v48 = v41;
    sub_24A67F378(v76, &unk_27EF5E0B0, &qword_24A8338B0);
    v45 = 1;
    v47 = v72;
  }

  *(a6 + v14[33]) = v45;
  v49 = *(a1 + 216);
  if (v47 <= 1)
  {
    if (v47)
    {
      v50 = v49 | 0x1000;
      v51 = v49 & 0xFFFFFFFFFFFEEFFFLL | 0x1000;
      v52 = (v49 & 0x10000) == 0;
      goto LABEL_17;
    }

LABEL_15:
    v53 = v49 & 0xFFFFFFFFFFFEEFFFLL;
    goto LABEL_20;
  }

  if (v47 == 2)
  {
    goto LABEL_15;
  }

  v50 = v49 | 0x10000;
  v51 = v49 & 0xFFFFFFFFFFFEEFFFLL | 0x10000;
  v52 = (*(a1 + 216) & 0x1000) == 0;
LABEL_17:
  if (v52)
  {
    v53 = v50;
  }

  else
  {
    v53 = v51;
  }

LABEL_20:
  *(a6 + 216) = v53;
  v54 = 0x40000;
  if ((v74 & 1) == 0)
  {
    v54 = 0;
  }

  v55 = 0x400000;
  if ((v75 & 1) == 0)
  {
    v55 = 0;
  }

  *(a6 + 240) = *(a1 + 240) & 0xFFFFFFFFFFBBFFFFLL | v54 | v55;
  v56 = *(a1 + v14[35]);
  result = sub_24A692298(a1, type metadata accessor for FMIPDevice);
  *(a6 + v73) = v56;
  return result;
}

uint64_t FMIPBatteryStatus.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E55;
  v2 = 0x676E696772616843;
  if (*v0 != 2)
  {
    v2 = 0x6772616843746F4ELL;
  }

  if (*v0)
  {
    v1 = 0x64656772616843;
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

uint64_t FMIPDevice.isAppleAudioAccessory.getter()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for FMIPDevice();
  sub_24A67E964(v0 + *(v10 + 128), v9, &unk_27EF5E0B0, &qword_24A8338B0);
  v11 = type metadata accessor for FMIPItemGroup();
  if ((*(*(v11 - 8) + 48))(v9, 1, v11) == 1)
  {
    sub_24A67F378(v9, &unk_27EF5E0B0, &qword_24A8338B0);
    return 0;
  }

  else
  {
    v12 = *(v9 + 5);

    result = sub_24A692298(v9, type metadata accessor for FMIPItemGroup);
    v14 = 0;
    v15 = *(v12 + 16);
    while (1)
    {
      if (v15 == v14)
      {

        return 0;
      }

      if (v14 >= *(v12 + 16))
      {
        break;
      }

      sub_24A68FED4(v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v14++, v5, type metadata accessor for FMIPItem);
      v16 = v5[*(v1 + 84)];
      result = sub_24A692298(v5, type metadata accessor for FMIPItem);
      if (v16 == 1)
      {

        return 1;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A7DA414()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7DA4E0()
{
  *v0;
  *v0;
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A7DA598()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A7DA66C(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E55;
  v4 = 0xE800000000000000;
  v5 = 0x676E696772616843;
  if (*v1 != 2)
  {
    v5 = 0x6772616843746F4ELL;
    v4 = 0xEB00000000676E69;
  }

  if (*v1)
  {
    v3 = 0x64656772616843;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

FMIPCore::FMIPDeviceStatus_optional __swiftcall FMIPDeviceStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24A7DA874(char *a1, char *a2)
{
  if (qword_24A83EEC8[*a1] == qword_24A83EEC8[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_24A82DC04();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_24A7DA8DC()
{
  v1 = *v0;
  sub_24A82DCC4();
  v2 = qword_24A83EEC8[v1];
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7DA938()
{
  v1 = qword_24A83EEC8[*v0];
  sub_24A82D094();
}

uint64_t sub_24A7DA978()
{
  v1 = *v0;
  sub_24A82DCC4();
  v2 = qword_24A83EEC8[v1];
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7DAA28(uint64_t a1)
{
  v2 = sub_24A7E036C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7DAA64(uint64_t a1)
{
  v2 = sub_24A7E036C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7DAAAC(uint64_t a1)
{
  v2 = sub_24A68A874();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7DAAE8(uint64_t a1)
{
  v2 = sub_24A68A874();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7DAB24(uint64_t a1)
{
  v2 = sub_24A7E03C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7DAB60(uint64_t a1)
{
  v2 = sub_24A7E03C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7DAB9C(uint64_t a1)
{
  v2 = sub_24A7E0318();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7DABD8(uint64_t a1)
{
  v2 = sub_24A7E0318();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7DAC14(uint64_t a1)
{
  v2 = sub_24A7E02C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7DAC50(uint64_t a1)
{
  v2 = sub_24A7E02C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7DAC8C(uint64_t a1)
{
  v2 = sub_24A68ABEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7DACC8(uint64_t a1)
{
  v2 = sub_24A68ABEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7DAD04(uint64_t a1)
{
  v2 = sub_24A7E0414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7DAD40(uint64_t a1)
{
  v2 = sub_24A7E0414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7DAD7C(uint64_t a1)
{
  v2 = sub_24A7E0270();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7DADB8(uint64_t a1)
{
  v2 = sub_24A7E0270();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPBeaconType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_24A6BBA94(&qword_27EF5F198, &qword_24A83DE80);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v4);
  v58 = &v47 - v6;
  v7 = sub_24A6BBA94(&qword_27EF5F1A0, &qword_24A83DE88);
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  MEMORY[0x28223BE20](v7);
  v55 = &v47 - v9;
  v10 = sub_24A6BBA94(&qword_27EF5F1A8, &qword_24A83DE90);
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  MEMORY[0x28223BE20](v10);
  v52 = &v47 - v12;
  v13 = sub_24A6BBA94(&qword_27EF5F1B0, &qword_24A83DE98);
  v50 = *(v13 - 8);
  v51 = v13;
  v14 = *(v50 + 64);
  MEMORY[0x28223BE20](v13);
  v49 = &v47 - v15;
  v48 = sub_24A6BBA94(&qword_27EF5F1B8, &qword_24A83DEA0);
  v64 = *(v48 - 8);
  v16 = *(v64 + 64);
  MEMORY[0x28223BE20](v48);
  v63 = &v47 - v17;
  v47 = sub_24A6BBA94(&qword_27EF5F1C0, &qword_24A83DEA8);
  v62 = *(v47 - 8);
  v18 = *(v62 + 64);
  MEMORY[0x28223BE20](v47);
  v20 = &v47 - v19;
  v21 = sub_24A6BBA94(&qword_27EF5F1C8, &qword_24A83DEB0);
  v61 = *(v21 - 8);
  v22 = *(v61 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v47 - v23;
  v66 = sub_24A6BBA94(&qword_27EF5F1D0, &qword_24A83DEB8);
  v25 = *(v66 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v66);
  v28 = &v47 - v27;
  v29 = *v2;
  v30 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A68A874();
  v65 = v28;
  sub_24A82DD84();
  v31 = (v25 + 8);
  if (v29 <= 2)
  {
    v37 = v61;
    v38 = v62;
    v39 = v63;
    v40 = v64;
    if (v29)
    {
      if (v29 == 1)
      {
        v68 = 1;
        sub_24A7E0414();
        v42 = v65;
        v41 = v66;
        sub_24A82DAC4();
        (*(v38 + 8))(v20, v47);
      }

      else
      {
        v69 = 2;
        sub_24A7E03C0();
        v46 = v39;
        v42 = v65;
        v41 = v66;
        sub_24A82DAC4();
        (*(v40 + 8))(v46, v48);
      }

      return (*v31)(v42, v41);
    }

    else
    {
      v67 = 0;
      sub_24A68ABEC();
      v43 = v65;
      v44 = v66;
      sub_24A82DAC4();
      (*(v37 + 8))(v24, v21);
      return (*v31)(v43, v44);
    }
  }

  else
  {
    if (v29 > 4)
    {
      if (v29 == 5)
      {
        v72 = 5;
        sub_24A7E02C4();
        v32 = v55;
        v33 = v65;
        v34 = v66;
        sub_24A82DAC4();
        v36 = v56;
        v35 = v57;
      }

      else
      {
        v73 = 6;
        sub_24A7E0270();
        v32 = v58;
        v33 = v65;
        v34 = v66;
        sub_24A82DAC4();
        v36 = v59;
        v35 = v60;
      }
    }

    else if (v29 == 3)
    {
      v70 = 3;
      sub_24A7E036C();
      v32 = v49;
      v33 = v65;
      v34 = v66;
      sub_24A82DAC4();
      v36 = v50;
      v35 = v51;
    }

    else
    {
      v71 = 4;
      sub_24A7E0318();
      v32 = v52;
      v33 = v65;
      v34 = v66;
      sub_24A82DAC4();
      v36 = v53;
      v35 = v54;
    }

    (*(v36 + 8))(v32, v35);
    return (*v31)(v33, v34);
  }
}

uint64_t FMIPBeaconType.hashValue.getter()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

uint64_t sub_24A7DB564()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FMIPDevice.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FMIPDevice.baIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FMIPDevice.ownerIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t FMIPDevice.discoveryIdentifier.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t FMIPDevice.name.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t FMIPDevice.color.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t FMIPDevice.category.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t FMIPDevice.model.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

uint64_t FMIPDevice.rawModel.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return v1;
}

uint64_t FMIPDevice.modelDisplayName.getter()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return v1;
}

uint64_t FMIPDevice.displayName.getter()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return v1;
}

id FMIPDevice.location.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 256);
  v2 = *(v1 + 264);
  *(a1 + 8) = v2;
  return v2;
}

id FMIPDevice.crowdSourcedLocation.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 280);
  v2 = *(v1 + 288);
  *(a1 + 8) = v2;
  return v2;
}

uint64_t FMIPDevice.address.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 304), 0x120uLL);
  memcpy(a1, (v1 + 304), 0x120uLL);
  return sub_24A67E964(__dst, v4, &unk_27EF5E0D0, &qword_24A8319E0);
}

uint64_t FMIPDevice.beaconType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FMIPDevice();
  *a1 = *(v1 + *(result + 136));
  return result;
}

uint64_t FMIPDevice.brassStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FMIPDevice();
  *a1 = *(v1 + *(result + 140));
  return result;
}

uint64_t FMIPDevice.brassStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for FMIPDevice();
  *(v1 + *(result + 140)) = v2;
  return result;
}

FMIPCore::FMIPDevice::BrassStatus_optional __swiftcall FMIPDevice.BrassStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

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

uint64_t FMIPDevice.BrassStatus.rawValue.getter()
{
  if (*v0)
  {
    result = 0x65736C6166;
  }

  else
  {
    result = 1702195828;
  }

  *v0;
  return result;
}

uint64_t sub_24A7DBBCC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x65736C6166;
  }

  else
  {
    v4 = 1702195828;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x65736C6166;
  }

  else
  {
    v6 = 1702195828;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A82DC04();
  }

  return v9 & 1;
}

uint64_t sub_24A7DBC68()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7DBCE0()
{
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A7DBD44()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A7DBDB8(uint64_t *a1@<X8>)
{
  v2 = 1702195828;
  if (*v1)
  {
    v2 = 0x65736C6166;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FMIPDevice.isBrassStatusTrue.getter()
{
  if (*(v0 + *(type metadata accessor for FMIPDevice() + 140)))
  {
    v1 = sub_24A82DC04();
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t FMIPDevice.deviceConnectedState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FMIPDevice();
  *a1 = *(v1 + *(result + 144));
  return result;
}

uint64_t FMIPDevice.deviceConnectedWithBeacon.getter()
{
  v1 = (v0 + *(type metadata accessor for FMIPDevice() + 148));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FMIPDevice.isOwned.getter()
{
  if (*(v0 + 32) == 0x72656E776FLL && *(v0 + 40) == 0xE500000000000000)
  {
    return 1;
  }

  v2 = sub_24A82DC04();
  result = 0;
  if (v2)
  {
    return 1;
  }

  return result;
}

uint64_t FMIPDevice.isLocating.getter()
{
  v1 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for FMIPDevice();
  sub_24A67E964(v0 + *(v5 + 128), v4, &unk_27EF5E0B0, &qword_24A8338B0);
  v6 = type metadata accessor for FMIPItemGroup();
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_24A67F378(v4, &unk_27EF5E0B0, &qword_24A8338B0);
  }

  else
  {
    v7 = *(v4 + 8);
    sub_24A692298(v4, type metadata accessor for FMIPItemGroup);
    if ((v7 & 0x8000) != 0)
    {
      return 0;
    }
  }

  v8 = *(v0 + 216);
  if ((v8 & 0x10) != 0)
  {
    return 1;
  }

  else
  {
    return (v8 >> 11) & 1;
  }
}

uint64_t FMIPDevice.pairingIncomplete.getter()
{
  v1 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for FMIPDevice();
  sub_24A67E964(v0 + *(v5 + 128), v4, &unk_27EF5E0B0, &qword_24A8338B0);
  v6 = type metadata accessor for FMIPItemGroup();
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_24A67F378(v4, &unk_27EF5E0B0, &qword_24A8338B0);
    return 0;
  }

  else
  {
    v8 = *(v4 + 8);
    sub_24A692298(v4, type metadata accessor for FMIPItemGroup);
    return (v8 >> 15) & 1;
  }
}

void sub_24A7DC368(unint64_t *a1@<X0>, unint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v120 = sub_24A82CA34();
  v115 = *(v120 - 8);
  v10 = *(v115 + 64);
  v11 = MEMORY[0x28223BE20](v120);
  v119 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v118 = &v104 - v13;
  v14 = type metadata accessor for FMIPItem();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v18 = (&v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v104 - v21;
  v23 = type metadata accessor for FMIPItemGroup();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v116 = &v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    if (qword_281515DC8 == -1)
    {
LABEL_8:
      v43 = sub_24A82CDC4();
      sub_24A6797D0(v43, qword_281518F88);
      v44 = sub_24A82CD94();
      v45 = sub_24A82D4D4();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 67109120;
        _os_log_impl(&dword_24A675000, v44, v45, "FMIPDevice: isLocationEnabled: %{BOOL}d", v46, 8u);
        MEMORY[0x24C21E1D0](v46, -1, -1);
      }

      *a5 = 0;
      *(a5 + 1) = 0;
      *(a5 + 2) = 0;
      return;
    }

LABEL_58:
    swift_once();
    goto LABEL_8;
  }

  v28 = *a1;
  v27 = a1[1];
  v29 = a1[2];
  v113 = *a2;
  v114 = v27;
  v30 = a2[1];
  v31 = a2[2];
  v117 = v30;
  sub_24A67E964(a4, v22, &unk_27EF5E0B0, &qword_24A8338B0);
  if ((*(v24 + 48))(v22, 1, v23) != 1)
  {
    v47 = v116;
    sub_24A7E11A4(v22, v116, type metadata accessor for FMIPItemGroup);
    if (FMIPItemGroup.shouldDisplaySeparatedLocation.getter())
    {
      sub_24A692298(v47, type metadata accessor for FMIPItemGroup);
      *(a5 + 1) = 0;
      *(a5 + 2) = 0;
      *a5 = 0;
      return;
    }

    v111 = v31;
    v112 = v28;
    v109 = v29;
    v110 = a5;
    v48 = *(v47 + 40);
    v49 = *(v48 + 16);
    if (v49)
    {
      v50 = v48 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v51 = *(v15 + 72);
      v52 = MEMORY[0x277D84F90];
      do
      {
        sub_24A68FED4(v50, v18, type metadata accessor for FMIPItem);
        v55 = v18[48];
        v54 = v18[49];
        v56 = v18[50];
        v57 = v54;
        sub_24A692298(v18, type metadata accessor for FMIPItem);
        if (v54)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = sub_24A77FE20(0, *(v52 + 2) + 1, 1, v52);
          }

          v59 = *(v52 + 2);
          v58 = *(v52 + 3);
          if (v59 >= v58 >> 1)
          {
            v52 = sub_24A77FE20((v58 > 1), v59 + 1, 1, v52);
          }

          *(v52 + 2) = v59 + 1;
          v53 = &v52[24 * v59];
          v53[32] = v55 & 1;
          v53[33] = BYTE1(v55) & 1;
          v53[34] = BYTE2(v55) & 1;
          v53[35] = BYTE3(v55);
          *(v53 + 5) = v57;
          *(v53 + 6) = v56;
        }

        v50 += v51;
        --v49;
      }

      while (v49);
    }

    else
    {
      v52 = MEMORY[0x277D84F90];
    }

    v63 = v117;
    if (v117)
    {
      v64 = v113;
      v65 = v113 >> 24;
      sub_24A6BBA94(&qword_27EF5DA70, &qword_24A835300);
      v66 = swift_allocObject();
      v63 = v117;
      v67 = v66;
      *(v66 + 16) = xmmword_24A8327A0;
      *(v66 + 32) = v64 & 1;
      *(v66 + 33) = BYTE1(v64) & 1;
      *(v66 + 34) = BYTE2(v64) & 1;
      *(v66 + 35) = v65;
      v68 = v111;
      *(v66 + 40) = v63;
      *(v66 + 48) = v68;
    }

    else
    {
      v67 = MEMORY[0x277D84F90];
    }

    v69 = v110;
    v121 = v52;
    v70 = v63;
    sub_24A77E820(v67);
    v117 = v121;
    v71 = *(v121 + 2);
    if (!v71)
    {
      sub_24A692298(v116, type metadata accessor for FMIPItemGroup);

      v60 = v114;
      *v69 = v112;
      v69[1] = v60;
      v69[2] = v109;
      goto LABEL_37;
    }

    v72 = v117[32];
    v73 = v117[33];
    v74 = v117[34];
    v75 = v117[35];
    v76 = *(v117 + 6);
    v77 = *(v117 + 5);
    v78 = v77;
    if (v71 == 1)
    {
      v79 = v72;
      v80 = v73;
      v81 = v74;
      v82 = v75;
      v83 = v77;
      v84 = v76;
LABEL_48:

      sub_24A692298(v116, type metadata accessor for FMIPItemGroup);
      v98 = 256;
      if ((v80 & 1) == 0)
      {
        v98 = 0;
      }

      v99 = v98 & 0xFFFFFFFFFFFFFFFELL | v79 & 1;
      v100 = 0x10000;
      if ((v81 & 1) == 0)
      {
        v100 = 0;
      }

      *v69 = (v99 | v100) & 0xFFFFFFFF00FFFFFFLL | (v82 << 24);
      v69[1] = v83;
      v69[2] = v84;
      return;
    }

    v106 = v72;
    v107 = v73;
    v108 = v74;
    v109 = v71;
    v115 += 8;
    v86 = v118;
    v87 = v117 + 48;
    v88 = 1;
    v104 = v117 + 48;
LABEL_41:
    v105 = v75;
    a5 = &v87[24 * v88];
    v89 = v109 - v88;
    while (v88 < *(v117 + 2))
    {
      v114 = *(a5 - 16);
      LODWORD(v111) = *(a5 - 15);
      LODWORD(v112) = *(a5 - 14);
      v113 = *(a5 - 13);
      v84 = *a5;
      v83 = *(a5 - 1);
      v90 = v78;
      v91 = [v78 timestamp];
      sub_24A82C9F4();

      v92 = [v83 timestamp];
      v93 = v119;
      sub_24A82C9F4();

      LOBYTE(v92) = sub_24A82C9B4();
      v94 = *v115;
      v95 = v93;
      v96 = v120;
      (*v115)(v95, v120);
      v94(v86, v96);
      if (v92)
      {

        ++v88;
        v76 = v84;
        v78 = v83;
        v82 = v113;
        v79 = v114;
        v75 = v113;
        v81 = v112;
        v80 = v111;
        v107 = v111;
        v108 = v112;
        v106 = v114;
        v97 = v89 == 1;
        v69 = v110;
        v87 = v104;
        if (v97)
        {
          goto LABEL_48;
        }

        goto LABEL_41;
      }

      a5 += 24;
      ++v88;
      --v89;
      v78 = v90;
      if (!v89)
      {
        v79 = v106;
        v80 = v107;
        v81 = v108;
        v82 = v105;
        v83 = v78;
        v84 = v76;
        v69 = v110;
        goto LABEL_48;
      }
    }

    __break(1u);
    goto LABEL_58;
  }

  sub_24A67F378(v22, &unk_27EF5E0B0, &qword_24A8338B0);
  v32 = v117;
  if (!v117)
  {
    v60 = v114;
    *a5 = v28;
    *(a5 + 1) = v60;
    *(a5 + 2) = v29;
LABEL_37:

    v85 = v60;
    return;
  }

  if (v114)
  {
    v112 = v28;
    v33 = v117;
    v34 = v114;
    v35 = [v34 timestamp];
    v36 = v118;
    sub_24A82C9F4();

    v37 = [v33 timestamp];
    v38 = v119;
    sub_24A82C9F4();

    LOBYTE(v37) = sub_24A82C9B4();
    v39 = *(v115 + 8);
    v40 = v38;
    v41 = v120;
    v39(v40, v120);
    v39(v36, v41);
    if (v37)
    {

      v42 = v113;
LABEL_55:
      v102 = v117;
      *a5 = v42 & 0xFF010101;
      *(a5 + 1) = v102;
      *(a5 + 2) = v31;
      return;
    }

    v42 = v113;
    v122 = BYTE3(v113);
    if (FMIPLocationType.rawValue.getter() == 0x656D69746C616572 && v62 == 0xE800000000000000)
    {

      goto LABEL_55;
    }

    v101 = sub_24A82DC04();

    if (v101)
    {

      goto LABEL_55;
    }

    v103 = v114;
    *a5 = v112 & 0xFF010101;
    *(a5 + 1) = v103;
    *(a5 + 2) = v29;
  }

  else
  {
    *a5 = v113 & 0xFF010101;
    *(a5 + 1) = v32;
    *(a5 + 2) = v31;

    v61 = v32;
  }
}

BOOL FMIPDevice.itemGroupsPartsHaveLocation.getter()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v5 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32 - v8;
  v10 = *(type metadata accessor for FMIPDevice() + 128);
  sub_24A67E964(v0 + v10, v9, &unk_27EF5E0B0, &qword_24A8338B0);
  v11 = type metadata accessor for FMIPItemGroup();
  if ((*(*(v11 - 8) + 48))(v9, 1, v11) == 1)
  {
    sub_24A67F378(v9, &unk_27EF5E0B0, &qword_24A8338B0);
    return 0;
  }

  v12 = *(v9 + 5);

  sub_24A692298(v9, type metadata accessor for FMIPItemGroup);
  v35 = *(v0 + 256);
  v36 = *(v0 + 264);
  v33 = *(v0 + 280);
  v34 = *(v0 + 288);
  v13 = (*(v0 + 216) >> 5) & 1;
  v14 = v36;
  v15 = v34;
  v16 = v14;
  sub_24A7DC368(&v35, &v33, v13, v0 + v10, v37);

  v17 = v38;
  if (v38)
  {

    return 0;
  }

  v19 = *(v12 + 16);
  if (v19)
  {
    v20 = *(v2 + 80);
    v32 = v12;
    v21 = v12 + ((v20 + 32) & ~v20);
    v22 = *(v2 + 72);
    v23 = MEMORY[0x277D84F90];
    do
    {
      sub_24A68FED4(v21, v5, type metadata accessor for FMIPItem);
      v26 = v5[48];
      v25 = v5[49];
      v27 = v5[50];
      v28 = v25;
      sub_24A692298(v5, type metadata accessor for FMIPItem);
      if (v25)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_24A77FE20(0, *(v23 + 2) + 1, 1, v23);
        }

        v30 = *(v23 + 2);
        v29 = *(v23 + 3);
        if (v30 >= v29 >> 1)
        {
          v23 = sub_24A77FE20((v29 > 1), v30 + 1, 1, v23);
        }

        *(v23 + 2) = v30 + 1;
        v24 = &v23[24 * v30];
        v24[32] = v26 & 1;
        v24[33] = BYTE1(v26) & 1;
        v24[34] = BYTE2(v26) & 1;
        v24[35] = BYTE3(v26);
        *(v24 + 5) = v28;
        *(v24 + 6) = v27;
      }

      v21 += v22;
      --v19;
    }

    while (v19);
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  v31 = *(v23 + 2);

  return v31 != 0;
}

uint64_t FMIPDevice.uniqueIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24A82D014();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  if (v1[3])
  {
    v12 = v1[2];
    v13 = v1[3];

    sub_24A82CA44();

    v14 = sub_24A82CAA4();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v11, 1, v14) != 1)
    {
      return (*(v15 + 32))(a1, v11, v14);
    }
  }

  else
  {
    v17 = sub_24A82CAA4();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  }

  sub_24A67F378(v11, &qword_27EF5D020, &qword_24A830E40);
  v19 = *v1;
  v18 = v1[1];
  sub_24A82D004();
  v20 = sub_24A82CFD4();
  v22 = v21;
  (*(v4 + 8))(v7, v3);
  if (v22 >> 60 == 15)
  {
    sub_24A7E0468();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v23[0] = v20;
    v23[1] = v22;
    sub_24A770D64();
    sub_24A82C614();
    return sub_24A67E8E8(v20, v22);
  }
}

uint64_t sub_24A7DD3A4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24A6839DC(*a1);
  v5 = v4;
  if (v3 == sub_24A6839DC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}

uint64_t sub_24A7DD42C()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A6839DC(v1);
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7DD490()
{
  sub_24A6839DC(*v0);
  sub_24A82D094();
}

uint64_t sub_24A7DD4E4()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A6839DC(v1);
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7DD544@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A7E1150();
  *a2 = result;
  return result;
}

unint64_t sub_24A7DD574@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A6839DC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24A7DD5A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A7E1150();
  *a1 = result;
  return result;
}

uint64_t sub_24A7DD5D4(uint64_t a1)
{
  v2 = sub_24A683980();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7DD610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24A82CA34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  if (qword_27EF5CC28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = off_27EF5F158;
  v15 = *(off_27EF5F158 + 2);
  v49 = a1;
  if (v15 && (v16 = sub_24A6A2D48(a1, a2), (v17 & 1) != 0))
  {
    v48 = a2;
    v18 = (v14[7] + 24 * v16);
    v19 = v7;
    LODWORD(v46) = *v18;
    v20 = v18[1];
    v21 = v18[2];
    LODWORD(v47) = v18[3];
    v22 = *(v18 + 1);
    v23 = *(v18 + 2);
    swift_endAccess();
    v24 = v22;
    v25 = [v24 timestamp];
    sub_24A82C9F4();

    sub_24A82C9C4();
    v27 = v26;
    result = (*(v19 + 8))(v13, v6);
    if (v27 > -300.0)
    {
      *a3 = v46;
      *(a3 + 1) = v20;
      *(a3 + 2) = v21;
      LOBYTE(v29) = v47;
      goto LABEL_15;
    }

    v7 = v19;
    a2 = v48;
  }

  else
  {
    v30 = swift_endAccess();
  }

  v45 = v13;
  sub_24A7E0180(v30, 0.0, 300.0);
  sub_24A82CA24();
  sub_24A82C984();
  v31 = *(v7 + 8);
  v47 = v7 + 8;
  v48 = v31;
  v31(v11, v6);
  v32 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v33 = sub_24A82C994();
  v34 = [v32 initWithCoordinate:v33 altitude:37.3723 horizontalAccuracy:-122.0804 verticalAccuracy:100.0 course:35.0 speed:35.0 timestamp:{0.0, 0.0}];

  LOBYTE(v50) = 1;
  v35 = v34;
  FMIPLocation.init(location:type:)(v35, &v50, v51);
  v36 = v51[0];
  v37 = v51[1];
  v46 = v6;
  v38 = v51[2];
  v29 = v51[3];
  v39 = v52;
  v23 = v53;
  swift_beginAccess();

  v24 = v39;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = off_27EF5F158;
  off_27EF5F158 = 0x8000000000000000;
  if (v37)
  {
    v41 = 256;
  }

  else
  {
    v41 = 0;
  }

  v42 = v41 | v36;
  if (v38)
  {
    v43 = 0x10000;
  }

  else
  {
    v43 = 0;
  }

  sub_24A784C04(v42 | v43 | (v29 << 24), v24, v49, a2, isUniquelyReferenced_nonNull_native, v23);

  off_27EF5F158 = v50;
  swift_endAccess();

  result = v48(v45, v46);
  *a3 = v36;
  *(a3 + 1) = v37;
  *(a3 + 2) = v38;
LABEL_15:
  *(a3 + 3) = v29;
  *(a3 + 8) = v24;
  *(a3 + 16) = v23;
  return result;
}

Swift::Bool __swiftcall FMIPDevice.canEnableNotifyWhenFound()()
{
  v58 = sub_24A82CA34();
  v1 = *(v58 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v58);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMIPItem();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = (&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v56 - v12;
  v14 = *(v0 + 216);
  if ((v14 & 0x400) == 0)
  {
    v15 = *(type metadata accessor for FMIPDevice() + 128);
    sub_24A67E964(v0 + v15, v13, &unk_27EF5E0B0, &qword_24A8338B0);
    v16 = type metadata accessor for FMIPItemGroup();
    if ((*(*(v16 - 8) + 48))(v13, 1, v16) == 1)
    {
      sub_24A67F378(v13, &unk_27EF5E0B0, &qword_24A8338B0);
      v17 = v14 & 0x20;
    }

    else
    {
      v19 = *(v13 + 5);

      sub_24A692298(v13, type metadata accessor for FMIPItemGroup);
      v61 = *(v0 + 256);
      v62 = *(v0 + 264);
      v59 = *(v0 + 280);
      v60 = *(v0 + 288);
      v20 = v62;
      v21 = v60;
      v22 = v20;
      sub_24A7DC368(&v61, &v59, (v14 & 0x20) != 0, v0 + v15, &v63);

      v23 = v64;
      if (!v64)
      {
        v33 = v19;
        v34 = *(v19 + 16);
        if (v34)
        {
          v35 = v33 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
          v36 = *(v6 + 72);
          v56 = v33;
          v57 = v36;
          v32 = MEMORY[0x277D84F90];
          do
          {
            sub_24A68FED4(v35, v9, type metadata accessor for FMIPItem);
            v39 = v9[48];
            v38 = v9[49];
            v40 = v9[50];
            v41 = v38;
            sub_24A692298(v9, type metadata accessor for FMIPItem);
            if (v38)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v32 = sub_24A77FE20(0, *(v32 + 16) + 1, 1, v32);
              }

              v43 = *(v32 + 16);
              v42 = *(v32 + 24);
              if (v43 >= v42 >> 1)
              {
                v32 = sub_24A77FE20((v42 > 1), v43 + 1, 1, v32);
              }

              *(v32 + 16) = v43 + 1;
              v37 = v32 + 24 * v43;
              *(v37 + 32) = v39 & 1;
              *(v37 + 33) = BYTE1(v39) & 1;
              *(v37 + 34) = BYTE2(v39) & 1;
              *(v37 + 35) = BYTE3(v39);
              *(v37 + 40) = v41;
              *(v37 + 48) = v40;
            }

            v35 += v57;
            --v34;
          }

          while (v34);

          if (*(v32 + 16))
          {
LABEL_22:
            sub_24A82CA24();
            sub_24A82C9D4();
            v45 = v44;
            v46 = *(v1 + 8);
            result = v46(v4, v58);
            v48 = -*(v32 + 16);
            v49 = -1;
            v50 = 40;
            while (1)
            {
              v18 = v48 + v49 != -1;
              if (v48 + v49 == -1)
              {
                goto LABEL_26;
              }

              if (++v49 >= *(v32 + 16))
              {
                __break(1u);
                return result;
              }

              v51 = v50 + 24;
              v52 = *(v32 + v50);
              v53 = [v52 timestamp];
              sub_24A82C9F4();

              sub_24A82C9D4();
              v55 = v54;

              result = v46(v4, v58);
              v50 = v51;
              if (v45 - v55 > 180.0)
              {
                goto LABEL_26;
              }
            }
          }

LABEL_19:
          v18 = 1;
LABEL_26:

          return v18;
        }

LABEL_21:
        v32 = MEMORY[0x277D84F90];
        if (*(MEMORY[0x277D84F90] + 16))
        {
          goto LABEL_22;
        }

        goto LABEL_19;
      }

      v17 = v14 & 0x20;
    }

    v61 = *(v0 + 256);
    v62 = *(v0 + 264);
    v59 = *(v0 + 280);
    v60 = *(v0 + 288);
    v24 = v17 != 0;
    v25 = v62;
    v26 = v60;
    v27 = v25;
    sub_24A7DC368(&v61, &v59, v24, v0 + v15, &v63);

    v28 = v64;
    if (v64)
    {
      v29 = v65;
      v30 = v63;
      v31 = v63 >> 24;
      sub_24A6BBA94(&qword_27EF5DA70, &qword_24A835300);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_24A8327A0;
      *(v32 + 32) = v30 & 1;
      *(v32 + 33) = BYTE1(v30) & 1;
      *(v32 + 34) = BYTE2(v30) & 1;
      *(v32 + 35) = v31;
      *(v32 + 40) = v28;
      *(v32 + 48) = v29;
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  return 0;
}

uint64_t FMIPDevice.encode(to:)(void *a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v80 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v84 = &v74 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v83 = &v74 - v9;
  MEMORY[0x28223BE20](v8);
  v87 = &v74 - v10;
  v11 = sub_24A82CA34();
  v85 = *(v11 - 8);
  v86 = v11;
  v12 = *(v85 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v82 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v81 = &v74 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v74 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v74 - v20;
  v22 = sub_24A6BBA94(&qword_27EF5F298, &unk_24A83DF20);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v74 - v25;
  v27 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A683980();
  v28 = v22;
  v29 = v89;
  sub_24A82DD84();
  v30 = *v29;
  v31 = v29[1];
  LOBYTE(v93[0]) = 14;
  v32 = v88;
  sub_24A82DB04();
  if (v32)
  {
    return (*(v23 + 8))(v26, v28);
  }

  v78 = v19;
  v79 = v21;
  v34 = v87;
  v88 = v23;
  v93[0] = *(v29 + 1);
  v92[0] = 4;
  v35 = sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
  v36 = sub_24A6CCEB0();
  v37 = v26;
  sub_24A82DB44();
  v77 = v36;
  v38 = v29[4];
  v39 = v29[5];
  LOBYTE(v93[0]) = 39;
  sub_24A82DB04();
  v93[0] = *(v29 + 3);
  v92[0] = 12;
  sub_24A82DB44();
  v40 = v29[8];
  v41 = v29[9];
  LOBYTE(v93[0]) = 38;
  sub_24A82DB04();
  v42 = qword_24A83EEC8[*(v29 + 80)];
  LOBYTE(v93[0]) = 46;
  sub_24A82DB04();

  v93[0] = *(v29 + 11);
  v92[0] = 10;
  sub_24A82DB44();
  v43 = v29[13];
  v44 = v29[14];
  LOBYTE(v93[0]) = 9;
  sub_24A82DB04();
  v45 = v29[15];
  v46 = v29[16];
  LOBYTE(v93[0]) = 36;
  sub_24A82DB04();
  v76 = v35;
  v47 = v29[17];
  v48 = v29[18];
  LOBYTE(v93[0]) = 41;
  sub_24A82DB04();
  v49 = v29[19];
  v50 = v29[20];
  LOBYTE(v93[0]) = 37;
  v75 = v28;
  sub_24A82DB04();
  v51 = v89[21];
  v52 = v89[22];
  LOBYTE(v93[0]) = 11;
  sub_24A82DB04();
  v53 = v89[23];
  LOBYTE(v93[0]) = 2;
  sub_24A82DB24();
  *(v89 + 192);
  LOBYTE(v93[0]) = 3;
  sub_24A82DB04();

  v54 = v89[25];
  LOBYTE(v93[0]) = 40;
  sub_24A82DB34();
  v55 = v89[26];
  LOBYTE(v93[0]) = 33;
  sub_24A82DB34();
  v56 = type metadata accessor for FMIPDevice();
  sub_24A67E964(v89 + v56[39], v34, &qword_27EF5E0E0, &qword_24A836D90);
  v57 = *(v85 + 48);
  if (v57(v34, 1, v86) == 1)
  {
    sub_24A67F378(v34, &qword_27EF5E0E0, &qword_24A836D90);
  }

  else
  {
    (*(v85 + 32))(v79, v34, v86);
    sub_24A82C9D4();
    LOBYTE(v93[0]) = 32;
    sub_24A82DB24();
    (*(v85 + 8))(v79, v86);
  }

  v58 = v83;
  sub_24A67E964(v89 + v56[40], v83, &qword_27EF5E0E0, &qword_24A836D90);
  if (v57(v58, 1, v86) == 1)
  {
    sub_24A67F378(v83, &qword_27EF5E0E0, &qword_24A836D90);
  }

  else
  {
    (*(v85 + 32))(v78, v83, v86);
    sub_24A82C9D4();
    LOBYTE(v93[0]) = 30;
    sub_24A82DB24();
    (*(v85 + 8))(v78, v86);
  }

  v59 = v84;
  sub_24A67E964(v89 + v56[41], v84, &qword_27EF5E0E0, &qword_24A836D90);
  if (v57(v59, 1, v86) == 1)
  {
    sub_24A67F378(v84, &qword_27EF5E0E0, &qword_24A836D90);
  }

  else
  {
    (*(v85 + 32))(v81, v84, v86);
    sub_24A82C9D4();
    LOBYTE(v93[0]) = 48;
    sub_24A82DB24();
    (*(v85 + 8))(v81, v86);
  }

  v60 = v80;
  sub_24A67E964(v89 + v56[42], v80, &qword_27EF5E0E0, &qword_24A836D90);
  if (v57(v60, 1, v86) == 1)
  {
    sub_24A67F378(v80, &qword_27EF5E0E0, &qword_24A836D90);
  }

  else
  {
    (*(v85 + 32))(v82, v80, v86);
    sub_24A82C9D4();
    LOBYTE(v93[0]) = 53;
    sub_24A82DB24();
    (*(v85 + 8))(v82, v86);
  }

  v61 = *(v89 + v56[38]);
  LOBYTE(v93[0]) = 51;
  sub_24A82DB34();
  v62 = *(v89 + v56[43]);
  LOBYTE(v93[0]) = 8;
  sub_24A82DB14();
  v63 = *(v89 + v56[44]);
  LOBYTE(v93[0]) = 5;
  sub_24A82DB14();
  v64 = *(v89 + v56[45]);
  LOBYTE(v93[0]) = 7;
  sub_24A82DB14();
  *&v93[0] = v89[29];
  v92[0] = 1;
  sub_24A6BBA94(&qword_27EF5F270, &qword_24A83DF10);
  sub_24A7E05C4();
  sub_24A82DB44();
  *&v93[0] = v89[31];
  v92[0] = 47;
  sub_24A6BBA94(&qword_27EF5F2A0, &qword_24A83DF30);
  sub_24A7E069C();
  sub_24A82DB44();
  *&v93[0] = v89[32];
  *(v93 + 8) = *(v89 + 33);
  v92[0] = 29;
  v65 = *(&v93[0] + 1);
  sub_24A6BBA94(&qword_27EF5EA68, &qword_24A839E10);
  sub_24A7A8550();
  sub_24A82DB44();

  v94 = v89[35];
  v95 = *(v89 + 18);
  v98 = 6;
  v66 = v95;
  sub_24A82DB44();

  memcpy(v93, v89 + 38, sizeof(v93));
  memcpy(v92, v89 + 38, sizeof(v92));
  v97 = 0;
  sub_24A67E964(v93, v91, &unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A6BBA94(&unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A6CCD3C();
  sub_24A82DB44();
  memcpy(v91, v92, sizeof(v91));
  sub_24A67F378(v91, &unk_27EF5E0D0, &qword_24A8319E0);
  *&v90 = v89[30];
  v96 = 13;
  sub_24A7E07F8();
  sub_24A82DB44();
  v67 = v56[28];
  LOBYTE(v90) = 45;
  sub_24A6BBA94(&qword_27EF5D5F8, &qword_24A83DE60);
  sub_24A7E084C();
  sub_24A82DB44();
  v68 = v56[29];
  LOBYTE(v90) = 31;
  sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  sub_24A7E0900();
  sub_24A82DB44();
  v69 = v56[30];
  LOBYTE(v90) = 42;
  sub_24A6BBA94(&qword_27EF5DE50, &qword_24A83DE40);
  sub_24A7E09B4();
  sub_24A82DB44();
  v70 = v56[31];
  LOBYTE(v90) = 43;
  sub_24A6BBA94(&qword_27EF5DE48, &unk_24A8367C0);
  sub_24A7E0A68();
  sub_24A82DB44();
  *&v90 = v89[28];
  v96 = 44;
  sub_24A6BBA94(&qword_27EF5DFF0, &qword_24A839E00);
  sub_24A7A8700();
  sub_24A82DB44();
  v71 = v89[27];
  LOBYTE(v90) = 28;
  sub_24A82DB14();
  LOBYTE(v90) = 20;
  sub_24A82DB14();
  LOBYTE(v90) = 15;
  sub_24A82DB14();
  LOBYTE(v90) = 52;
  sub_24A82DB14();
  LOBYTE(v90) = 21;
  sub_24A82DB14();
  LOBYTE(v90) = 19;
  sub_24A82DB14();
  LOBYTE(v90) = 23;
  sub_24A82DB14();
  LOBYTE(v90) = 24;
  sub_24A82DB14();
  LOBYTE(v90) = 25;
  sub_24A82DB14();
  LOBYTE(v90) = 26;
  sub_24A82DB14();
  LOBYTE(v90) = 16;
  sub_24A82DB14();
  LOBYTE(v90) = 18;
  sub_24A82DB14();
  LOBYTE(v90) = 22;
  sub_24A82DB14();
  LOBYTE(v90) = 27;
  sub_24A82DB14();
  LOBYTE(v90) = 57;
  sub_24A82DB14();
  v72 = v56[32];
  LOBYTE(v90) = 49;
  sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  sub_24A7E0B1C();
  sub_24A82DB44();
  v73 = *(v89 + v56[33]);
  LOBYTE(v90) = 50;
  sub_24A82DB14();
  LOBYTE(v90) = *(v89 + v56[34]);
  v96 = 54;
  sub_24A7E0C18();
  sub_24A82DB44();
  LOBYTE(v90) = *(v89 + v56[36]);
  v96 = 55;
  sub_24A7E0C6C();
  sub_24A82DB44();
  v90 = *(v89 + v56[37]);
  v96 = 56;
  sub_24A82DB44();
  LOBYTE(v90) = *(v89 + v56[35]);
  v96 = 58;
  sub_24A7E0CC0();
  sub_24A82DAF4();
  return (*(v88 + 8))(v37, v75);
}

BOOL FMIPDevice.isLostModeActive.getter()
{
  v1 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v29 = &v28 - v3;
  v4 = type metadata accessor for FMIPDeviceLostModeMetadata();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = type metadata accessor for FMIPDevice();
  v16 = *(v15 + 116);
  sub_24A67E964(v0 + v16, v14, &unk_27EF5E0A0, &unk_24A8367D0);
  v17 = *(v5 + 48);
  v18 = v17(v14, 1, v4);
  v19 = v14;
  v20 = v15;
  v21 = v0;
  sub_24A67F378(v19, &unk_27EF5E0A0, &unk_24A8367D0);
  if (v18 != 1 && *(v0 + *(v20 + 136)) == 5)
  {
    return 1;
  }

  sub_24A67E964(v0 + v16, v12, &unk_27EF5E0A0, &unk_24A8367D0);
  if (v17(v12, 1, v4) == 1)
  {
    sub_24A67F378(v12, &unk_27EF5E0A0, &unk_24A8367D0);
LABEL_7:
    v24 = v29;
    sub_24A67E964(v21 + *(v20 + 128), v29, &unk_27EF5E0B0, &qword_24A8338B0);
    v25 = type metadata accessor for FMIPItemGroup();
    if ((*(*(v25 - 8) + 48))(v24, 1, v25) == 1)
    {
      sub_24A67F378(v24, &unk_27EF5E0B0, &qword_24A8338B0);
      return 0;
    }

    v26 = *(v24 + 64);
    sub_24A692298(v24, type metadata accessor for FMIPItemGroup);
    return (v26 & 8) != 0;
  }

  v22 = v28;
  sub_24A7E11A4(v12, v28, type metadata accessor for FMIPDeviceLostModeMetadata);
  v23 = *(v22 + 56);
  if (((1 << v23) & 0x1FFB) == 0 && (*(v21 + 216) & 2) != 0)
  {
    sub_24A692298(v22, type metadata accessor for FMIPDeviceLostModeMetadata);
    return 1;
  }

  sub_24A692298(v22, type metadata accessor for FMIPDeviceLostModeMetadata);
  if (v23 != 4)
  {
    goto LABEL_7;
  }

  return 1;
}

BOOL FMIPDevice.deviceIsPendingRemoval.getter()
{
  v1 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  if ((*(v0 + 218) & 2) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for FMIPDevice();
  sub_24A67E964(v0 + *(v6 + 168), v4, &qword_27EF5E0E0, &qword_24A836D90);
  v7 = sub_24A82CA34();
  v5 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_24A67F378(v4, &qword_27EF5E0E0, &qword_24A836D90);
  return v5;
}

uint64_t sub_24A7DF860(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v107 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_106:
    v107 = *v107;
    if (!v107)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_24A7E016C(v9);
      v9 = result;
    }

    v97 = v9 + 16;
    v98 = *(v9 + 2);
    if (v98 >= 2)
    {
      while (1)
      {
        v99 = *v6;
        if (!*v6)
        {
          goto LABEL_142;
        }

        v100 = &v9[16 * v98];
        v6 = *v100;
        v101 = &v97[2 * v98];
        v102 = v101[1];
        sub_24A7DFE90((v99 + 24 * *v100), (v99 + 24 * *v101), v99 + 24 * v102, v107);
        if (v5)
        {
        }

        if (v102 < v6)
        {
          goto LABEL_130;
        }

        if (v98 - 2 >= *v97)
        {
          goto LABEL_131;
        }

        *v100 = v6;
        *(v100 + 1) = v102;
        v103 = *v97 - v98;
        if (*v97 < v98)
        {
          goto LABEL_132;
        }

        v98 = *v97 - 1;
        result = memmove(v101, v101 + 2, 16 * v103);
        *v97 = v98;
        v6 = a3;
        if (v98 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *v6;
      v12 = (*v6 + 24 * v8);
      v13 = *v12;
      v14 = v12[1];
      v15 = (*v6 + 24 * v10);
      result = *v15;
      if (*v15 == v13 && v15[1] == v14)
      {
        v17 = 0;
      }

      else
      {
        result = sub_24A82DC04();
        v17 = result;
      }

      v8 = v10 + 2;
      if (v10 + 2 < v7)
      {
        v18 = (v11 + 24 * v10 + 32);
        v19 = v18;
        do
        {
          v21 = v19[3];
          v19 += 3;
          v20 = v21;
          result = *(v18 - 1);
          if (result == v18[2] && *v18 == v20)
          {
            if (v17)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_24A82DC04();
            if ((v17 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v8;
          v18 = v19;
        }

        while (v7 != v8);
        v8 = v7;
      }

LABEL_23:
      if (v17)
      {
LABEL_24:
        if (v8 < v10)
        {
          goto LABEL_135;
        }

        if (v10 < v8)
        {
          v23 = 24 * v8;
          v24 = 24 * v10 + 18;
          v25 = v8;
          v26 = v10;
          do
          {
            if (v26 != --v25)
            {
              v34 = *v6;
              if (!*v6)
              {
                goto LABEL_141;
              }

              v27 = (v34 + v24);
              v28 = *(v34 + v24 - 18);
              v29 = v34 + v23;
              v30 = *(v27 - 10);
              v31 = *(v27 - 2);
              v32 = *(v27 - 1);
              v33 = *v27;
              result = *(v29 - 8);
              *(v27 - 18) = *(v29 - 24);
              *(v27 - 2) = result;
              *(v29 - 24) = v28;
              *(v29 - 16) = v30;
              *(v29 - 8) = v31;
              *(v29 - 7) = v32;
              *(v29 - 6) = v33;
            }

            ++v26;
            v23 -= 24;
            v24 += 24;
          }

          while (v26 < v25);
        }
      }
    }

    v35 = v6[1];
    if (v8 < v35)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_134;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24A78056C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v51 = *(v9 + 2);
    v50 = *(v9 + 3);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      result = sub_24A78056C((v50 > 1), v51 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v52;
    v53 = &v9[16 * v51];
    *(v53 + 4) = v10;
    *(v53 + 5) = v8;
    v54 = *v107;
    if (!*v107)
    {
      goto LABEL_143;
    }

    if (v51)
    {
      while (1)
      {
        v55 = v52 - 1;
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v56 = *(v9 + 4);
          v57 = *(v9 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_75:
          if (v59)
          {
            goto LABEL_121;
          }

          v72 = &v9[16 * v52];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_124;
          }

          v78 = &v9[16 * v55 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_128;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v55 = v52 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v82 = &v9[16 * v52];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_89:
        if (v77)
        {
          goto LABEL_123;
        }

        v85 = &v9[16 * v55];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_126;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_96:
        v93 = v55 - 1;
        if (v55 - 1 >= v52)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*v6)
        {
          goto LABEL_140;
        }

        v94 = *&v9[16 * v93 + 32];
        v95 = *&v9[16 * v55 + 40];
        sub_24A7DFE90((*v6 + 24 * v94), (*v6 + 24 * *&v9[16 * v55 + 32]), *v6 + 24 * v95, v54);
        if (v5)
        {
        }

        if (v95 < v94)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24A7E016C(v9);
        }

        if (v93 >= *(v9 + 2))
        {
          goto LABEL_118;
        }

        v96 = &v9[16 * v93];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        result = sub_24A7E00E0(v55);
        v52 = *(v9 + 2);
        if (v52 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v9[16 * v52 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_119;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_120;
      }

      v67 = &v9[16 * v52];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_122;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_125;
      }

      if (v71 >= v63)
      {
        v89 = &v9[16 * v55 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_129;
        }

        if (v58 < v92)
        {
          v55 = v52 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_136;
  }

  v105 = v5;
  if (v10 + a4 >= v35)
  {
    v5 = v6[1];
  }

  else
  {
    v5 = v10 + a4;
  }

  if (v5 < v10)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v8 == v5)
  {
LABEL_54:
    v5 = v105;
    goto LABEL_55;
  }

  v36 = *v6;
  v37 = *v6 + 24 * v8 - 24;
  v104 = v10;
  v38 = v10 - v8;
LABEL_43:
  v39 = v38;
  v40 = v37;
  while (1)
  {
    v41 = v40 + 24;
    v42 = *v40 == *(v40 + 24) && *(v40 + 8) == *(v40 + 32);
    if (v42 || (result = sub_24A82DC04(), (result & 1) == 0))
    {
LABEL_42:
      ++v8;
      v37 += 24;
      --v38;
      if (v8 != v5)
      {
        goto LABEL_43;
      }

      v8 = v5;
      v6 = a3;
      v10 = v104;
      goto LABEL_54;
    }

    if (!v36)
    {
      break;
    }

    v44 = *(v40 + 24);
    v43 = *(v40 + 32);
    v45 = *(v40 + 40);
    v46 = *(v40 + 41);
    v47 = *(v40 + 42);
    v48 = *(v40 + 16);
    *v41 = *v40;
    *v40 = v44;
    *(v40 + 8) = v43;
    *(v40 + 16) = v45;
    *(v40 + 17) = v46;
    *(v40 + 18) = v47;
    v40 -= 24;
    *(v41 + 16) = v48;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_24A7DFE90(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    v12 = 24 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v16 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
      if (!v16 && (sub_24A82DC04() & 1) != 0)
      {
        break;
      }

      v14 = v4;
      v16 = v7 == v4;
      v4 += 24;
      if (!v16)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v16 = v7 == v6;
    v6 += 24;
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  v17 = 24 * v11;
  if (a4 != __src || &__src[v17] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v13 = &v4[v17];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v18 = v6 - 24;
    v5 -= 24;
    v19 = v13;
    do
    {
      v20 = *(v19 - 24);
      v21 = *(v19 - 16);
      v19 -= 24;
      v22 = *(v6 - 3) == v20 && *(v6 - 2) == v21;
      if (!v22 && (sub_24A82DC04() & 1) != 0)
      {
        if ((v5 + 24) != v6)
        {
          v24 = *v18;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v24;
        }

        if (v13 <= v4 || (v6 -= 24, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if ((v5 + 24) != v13)
      {
        v23 = *v19;
        *(v5 + 16) = *(v19 + 16);
        *v5 = v23;
      }

      v5 -= 24;
      v13 = v19;
    }

    while (v19 > v4);
    v13 = v19;
  }

LABEL_39:
  v25 = 24 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v25])
  {
    memmove(v6, v4, v25);
  }

  return 1;
}

uint64_t sub_24A7E00E0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24A7E016C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_24A7E0180(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x24C21E1F0](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    return sub_24A7E0180(v6, a2, a3);
  }

  return result;
}

uint64_t sub_24A7E0238(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_24A7E0270()
{
  result = qword_27EF5F1E0;
  if (!qword_27EF5F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F1E0);
  }

  return result;
}

unint64_t sub_24A7E02C4()
{
  result = qword_27EF5F1E8;
  if (!qword_27EF5F1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F1E8);
  }

  return result;
}

unint64_t sub_24A7E0318()
{
  result = qword_27EF5F1F0;
  if (!qword_27EF5F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F1F0);
  }

  return result;
}

unint64_t sub_24A7E036C()
{
  result = qword_27EF5F1F8;
  if (!qword_27EF5F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F1F8);
  }

  return result;
}

unint64_t sub_24A7E03C0()
{
  result = qword_27EF5F200;
  if (!qword_27EF5F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F200);
  }

  return result;
}

unint64_t sub_24A7E0414()
{
  result = qword_27EF5F208;
  if (!qword_27EF5F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F208);
  }

  return result;
}

unint64_t sub_24A7E0468()
{
  result = qword_27EF5F260;
  if (!qword_27EF5F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F260);
  }

  return result;
}

unint64_t sub_24A7E04BC()
{
  result = qword_281512BB0;
  if (!qword_281512BB0)
  {
    sub_24A6CCDC0(&qword_27EF5F270, &qword_24A83DF10);
    sub_24A6842C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281512BB0);
  }

  return result;
}

unint64_t sub_24A7E0540()
{
  result = qword_281512BA0;
  if (!qword_281512BA0)
  {
    sub_24A6CCDC0(&qword_27EF5F278, &qword_24A83DF18);
    sub_24A687E9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281512BA0);
  }

  return result;
}

unint64_t sub_24A7E05C4()
{
  result = qword_281512BB8;
  if (!qword_281512BB8)
  {
    sub_24A6CCDC0(&qword_27EF5F270, &qword_24A83DF10);
    sub_24A7E0648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281512BB8);
  }

  return result;
}

unint64_t sub_24A7E0648()
{
  result = qword_281514268[0];
  if (!qword_281514268[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281514268);
  }

  return result;
}

unint64_t sub_24A7E069C()
{
  result = qword_281512B98;
  if (!qword_281512B98)
  {
    sub_24A6CCDC0(&qword_27EF5F2A0, &qword_24A83DF30);
    sub_24A7E0720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281512B98);
  }

  return result;
}

unint64_t sub_24A7E0720()
{
  result = qword_281512BA8;
  if (!qword_281512BA8)
  {
    sub_24A6CCDC0(&qword_27EF5F278, &qword_24A83DF18);
    sub_24A7E07A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281512BA8);
  }

  return result;
}

unint64_t sub_24A7E07A4()
{
  result = qword_281513F50;
  if (!qword_281513F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281513F50);
  }

  return result;
}

unint64_t sub_24A7E07F8()
{
  result = qword_2815144F0;
  if (!qword_2815144F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815144F0);
  }

  return result;
}

unint64_t sub_24A7E084C()
{
  result = qword_281513F58;
  if (!qword_281513F58)
  {
    sub_24A6CCDC0(&qword_27EF5D5F8, &qword_24A83DE60);
    sub_24A7E0BD0(&qword_281513F68, type metadata accessor for FMIPPlaySoundMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281513F58);
  }

  return result;
}

unint64_t sub_24A7E0900()
{
  result = qword_281513590;
  if (!qword_281513590)
  {
    sub_24A6CCDC0(&unk_27EF5E0A0, &unk_24A8367D0);
    sub_24A7E0BD0(&qword_2815135A0, type metadata accessor for FMIPDeviceLostModeMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281513590);
  }

  return result;
}

unint64_t sub_24A7E09B4()
{
  result = qword_281514150;
  if (!qword_281514150)
  {
    sub_24A6CCDC0(&qword_27EF5DE50, &qword_24A83DE40);
    sub_24A7E0BD0(&qword_281514160, type metadata accessor for FMIPLockMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514150);
  }

  return result;
}

unint64_t sub_24A7E0A68()
{
  result = qword_281514120;
  if (!qword_281514120)
  {
    sub_24A6CCDC0(&qword_27EF5DE48, &unk_24A8367C0);
    sub_24A7E0BD0(&qword_281514130, type metadata accessor for FMIPEraseMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514120);
  }

  return result;
}

unint64_t sub_24A7E0B1C()
{
  result = qword_27EF5F2A8;
  if (!qword_27EF5F2A8)
  {
    sub_24A6CCDC0(&unk_27EF5E0B0, &qword_24A8338B0);
    sub_24A7E0BD0(&qword_27EF5E180, type metadata accessor for FMIPItemGroup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F2A8);
  }

  return result;
}

uint64_t sub_24A7E0BD0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24A7E0C18()
{
  result = qword_27EF5F2B0;
  if (!qword_27EF5F2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F2B0);
  }

  return result;
}

unint64_t sub_24A7E0C6C()
{
  result = qword_27EF5F2B8;
  if (!qword_27EF5F2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F2B8);
  }

  return result;
}

unint64_t sub_24A7E0CC0()
{
  result = qword_27EF5F2C0;
  if (!qword_27EF5F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F2C0);
  }

  return result;
}

unint64_t sub_24A7E0D18()
{
  result = qword_27EF5F2C8;
  if (!qword_27EF5F2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F2C8);
  }

  return result;
}

unint64_t sub_24A7E0D70()
{
  result = qword_27EF5F2D0;
  if (!qword_27EF5F2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F2D0);
  }

  return result;
}

unint64_t sub_24A7E0DC8()
{
  result = qword_27EF5F2D8;
  if (!qword_27EF5F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F2D8);
  }

  return result;
}

unint64_t sub_24A7E0E20()
{
  result = qword_27EF5F2E0;
  if (!qword_27EF5F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F2E0);
  }

  return result;
}

unint64_t sub_24A7E0E78()
{
  result = qword_27EF5F2E8;
  if (!qword_27EF5F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F2E8);
  }

  return result;
}

unint64_t sub_24A7E0ED0()
{
  result = qword_27EF5F2F0;
  if (!qword_27EF5F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F2F0);
  }

  return result;
}

unint64_t sub_24A7E0F28()
{
  result = qword_27EF5F2F8;
  if (!qword_27EF5F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F2F8);
  }

  return result;
}

unint64_t sub_24A7E0F80()
{
  result = qword_27EF5F300;
  if (!qword_27EF5F300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F300);
  }

  return result;
}

unint64_t sub_24A7E104C()
{
  result = qword_27EF5F318;
  if (!qword_27EF5F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F318);
  }

  return result;
}

unint64_t sub_24A7E10A4()
{
  result = qword_27EF5F320;
  if (!qword_27EF5F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F320);
  }

  return result;
}

unint64_t sub_24A7E10FC()
{
  result = qword_27EF5F328;
  if (!qword_27EF5F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F328);
  }

  return result;
}

uint64_t sub_24A7E1150()
{
  v0 = sub_24A82DC24();

  if (v0 >= 0x3B)
  {
    return 59;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24A7E11A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A7E121C()
{
  sub_24A82DCC4();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A7E1298()
{
  sub_24A82DCC4();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A7E12F0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A82D9C4();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_24A7E1388@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24A82D9C4();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_24A7E13E0(uint64_t a1)
{
  v2 = sub_24A7E1BC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7E141C(uint64_t a1)
{
  v2 = sub_24A7E1BC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7E1458(uint64_t *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_24A6BBA94(&qword_27EF5F3B8, &qword_24A83EF48);
  v68 = *(v6 - 8);
  v7 = *(v68 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v49 - v8;
  if (qword_281515DC8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v10 = sub_24A82CDC4();
    sub_24A6797D0(v10, qword_281518F88);
    v11 = sub_24A82CD94();
    v12 = sub_24A82D504();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24A675000, v11, v12, "FMIPUserInfoResponseFragment: initialized with coder", v13, 2u);
      MEMORY[0x24C21E1D0](v13, -1, -1);
    }

    v14 = a1[4];
    sub_24A67DF6C(a1, a1[3]);
    sub_24A7E1BC4();
    sub_24A82DD64();
    if (v3)
    {
      break;
    }

    sub_24A698230(a1, v75);
    FMIPPerson.init(from:)(v75, v76);
    v71 = v76[2];
    v72 = v76[3];
    v73 = v76[4];
    v74 = v77;
    v69 = v76[0];
    v70 = v76[1];
    v16 = sub_24A82CD94();
    v17 = sub_24A82D504();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_24A675000, v16, v17, "FMIPUserInfoResponseFragment: parsing family members", v18, 2u);
      MEMORY[0x24C21E1D0](v18, -1, -1);
    }

    sub_24A6BBA94(&qword_27EF5F3C0, &qword_24A83EF50);
    sub_24A7E1C18();
    sub_24A82DA84();
    v19 = 0;
    v21 = v78 + 64;
    v20 = *(v78 + 64);
    v53 = v78;
    v22 = 1 << *(v78 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & v20;
    v25 = (v22 + 63) >> 6;
    v26 = MEMORY[0x277D84F90];
    v52 = v4;
    v51 = v6;
    v50 = v9;
    v49 = v78 + 64;
    if ((v23 & v20) != 0)
    {
      do
      {
LABEL_17:
        v28 = __clz(__rbit64(v24)) | (v19 << 6);
        v29 = *(v53 + 56);
        v30 = (*(v53 + 48) + 16 * v28);
        v31 = v30[1];
        v66 = *v30;
        v32 = (v29 + 88 * v28);
        v33 = v32[1];
        v60 = *v32;
        v34 = v32[3];
        v59 = v32[2];
        v58 = *(v32 + 32);
        v57 = *(v32 + 33);
        v56 = *(v32 + 34);
        v55 = *(v32 + 35);
        v35 = v32[6];
        v54 = v32[5];
        v36 = v32[10];
        v64 = v32[9];
        v65 = v36;

        v63 = v33;

        v62 = v34;

        v61 = v35;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26 = sub_24A780A88(0, *(v26 + 2) + 1, 1, v26);
        }

        v39 = *(v26 + 2);
        v38 = *(v26 + 3);
        v9 = v50;
        v21 = v49;
        if (v39 >= v38 >> 1)
        {
          v26 = sub_24A780A88((v38 > 1), v39 + 1, 1, v26);
        }

        *(v26 + 2) = v39 + 1;
        v24 &= v24 - 1;
        v40 = &v26[88 * v39];
        v41 = v63;
        *(v40 + 4) = v60;
        *(v40 + 5) = v41;
        v42 = v62;
        *(v40 + 6) = v59;
        *(v40 + 7) = v42;
        v40[64] = v58;
        v40[65] = v57;
        v40[66] = v56;
        v40[67] = v55;
        v43 = v61;
        *(v40 + 9) = v54;
        *(v40 + 10) = v43;
        v44 = v67;
        *(v40 + 11) = v66;
        *(v40 + 12) = v44;
        v45 = v65;
        *(v40 + 13) = v64;
        *(v40 + 14) = v45;
        v4 = v52;
        v6 = v51;
      }

      while (v24);
    }

    while (1)
    {
      v27 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v27 >= v25)
      {

        (*(v68 + 8))(v9, v6);
        v46 = v72;
        *(v4 + 48) = v71;
        *(v4 + 64) = v46;
        *(v4 + 80) = v73;
        v47 = v74;
        v48 = v70;
        *(v4 + 16) = v69;
        *(v4 + 32) = v48;
        *(v4 + 96) = v47;
        *(v4 + 104) = v26;
        goto LABEL_7;
      }

      v24 = *(v21 + 8 * v27);
      ++v19;
      if (v24)
      {
        v19 = v27;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  type metadata accessor for FMIPUserInfoResponseFragment();
  swift_deallocPartialClassInstance();
LABEL_7:
  sub_24A6876E8(a1);
  return v4;
}

uint64_t sub_24A7E1AC0()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[8];
  v4 = v0[10];
  v5 = v0[12];

  v6 = v0[13];

  return swift_deallocClassInstance();
}

uint64_t sub_24A7E1B6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for FMIPUserInfoResponseFragment();
  v5 = swift_allocObject();
  result = sub_24A7E1458(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_24A7E1BC4()
{
  result = qword_2815131D0;
  if (!qword_2815131D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815131D0);
  }

  return result;
}

unint64_t sub_24A7E1C18()
{
  result = qword_281512BD8;
  if (!qword_281512BD8)
  {
    sub_24A6CCDC0(&qword_27EF5F3C0, &qword_24A83EF50);
    sub_24A693350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281512BD8);
  }

  return result;
}

unint64_t sub_24A7E1CB8()
{
  result = qword_27EF5F3C8;
  if (!qword_27EF5F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F3C8);
  }

  return result;
}

unint64_t sub_24A7E1D10()
{
  result = qword_2815131C0;
  if (!qword_2815131C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815131C0);
  }

  return result;
}

unint64_t sub_24A7E1D68()
{
  result = qword_2815131C8;
  if (!qword_2815131C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815131C8);
  }

  return result;
}

uint64_t FMIPShareItemAction.__allocating_init(item:handles:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  *(v7 + OBJC_IVAR____TtC8FMIPCore19FMIPShareItemAction_handles) = a2;
  sub_24A6CB364(a1, v7 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item);
  return v7;
}

uint64_t FMIPShareItemAction.init(item:handles:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8FMIPCore19FMIPShareItemAction_handles) = a2;
  sub_24A6CB364(a1, v2 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item);
  return v2;
}

uint64_t sub_24A7E1E5C()
{
  v1 = *v0;
  v2 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  sub_24A6CB660();
  v3 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v3);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  sub_24A82D854();

  MEMORY[0x24C21C9E0](*(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item + 352), *(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item + 360));
  MEMORY[0x24C21C9E0](0x73656C646E616820, 0xEB0000000027203ALL);
  v4 = MEMORY[0x24C21CB60](*(v0 + OBJC_IVAR____TtC8FMIPCore19FMIPShareItemAction_handles), MEMORY[0x277D837D0]);
  MEMORY[0x24C21C9E0](v4);

  MEMORY[0x24C21C9E0](15911, 0xE200000000000000);

  MEMORY[0x24C21C9E0](0x203A6D657469, 0xE600000000000000);

  return 60;
}

uint64_t FMIPShareItemAction.deinit()
{
  sub_24A69F324(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, type metadata accessor for FMIPItem);
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore19FMIPShareItemAction_handles);

  return v0;
}

uint64_t FMIPShareItemAction.__deallocating_deinit()
{
  sub_24A69F324(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, type metadata accessor for FMIPItem);
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore19FMIPShareItemAction_handles);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A7E2164()
{
  v1 = *v0;
  v2 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  sub_24A6CB660();
  v3 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v3);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  sub_24A82D854();

  sub_24A82CAA4();
  sub_24A7E2304();
  v4 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v4);

  MEMORY[0x24C21C9E0](15911, 0xE200000000000000);

  MEMORY[0x24C21C9E0](0xD000000000000011, 0x800000024A849FB0);

  return 60;
}

unint64_t sub_24A7E2304()
{
  result = qword_27EF5CEF0;
  if (!qword_27EF5CEF0)
  {
    sub_24A82CAA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5CEF0);
  }

  return result;
}

uint64_t FMIPStopSharingAction.__allocating_init(unknownItem:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_beaconIdentifier;
  v7 = sub_24A82CAA4();
  (*(*(v7 - 8) + 16))(v5 + v6, a1, v7);
  sub_24A69F324(a1, type metadata accessor for FMIPUnknownItem);
  *(v5 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_force) = 0;
  *(v5 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_isDelegated) = 0;
  return v5;
}

uint64_t FMIPStopSharingAction.init(unknownItem:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_beaconIdentifier;
  v4 = sub_24A82CAA4();
  (*(*(v4 - 8) + 16))(v1 + v3, a1, v4);
  sub_24A69F324(a1, type metadata accessor for FMIPUnknownItem);
  *(v1 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_force) = 0;
  *(v1 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_isDelegated) = 0;
  return v1;
}

uint64_t FMIPStopSharingAction.__allocating_init(beaconIdentifier:force:)(uint64_t a1, char a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_beaconIdentifier;
  v9 = sub_24A82CAA4();
  (*(*(v9 - 8) + 32))(v7 + v8, a1, v9);
  *(v7 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_force) = a2;
  *(v7 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_isDelegated) = 0;
  return v7;
}

uint64_t FMIPStopSharingAction.init(beaconIdentifier:force:)(uint64_t a1, char a2)
{
  v5 = OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_beaconIdentifier;
  v6 = sub_24A82CAA4();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_force) = a2;
  *(v2 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_isDelegated) = 0;
  return v2;
}

uint64_t FMIPStopSharingAction.__allocating_init(beaconIdentifier:force:isDelegated:)(uint64_t a1, char a2, char a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_beaconIdentifier;
  v11 = sub_24A82CAA4();
  (*(*(v11 - 8) + 32))(v9 + v10, a1, v11);
  *(v9 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_force) = a2;
  *(v9 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_isDelegated) = a3;
  return v9;
}

uint64_t FMIPStopSharingAction.init(beaconIdentifier:force:isDelegated:)(uint64_t a1, char a2, char a3)
{
  v7 = OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_beaconIdentifier;
  v8 = sub_24A82CAA4();
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  *(v3 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_force) = a2;
  *(v3 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_isDelegated) = a3;
  return v3;
}

uint64_t FMIPStopSharingAction.description.getter()
{
  v1 = *v0;
  v2 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  sub_24A6CB660();
  v3 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v3);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  sub_24A82D854();

  sub_24A82CAA4();
  sub_24A7E2304();
  v4 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v4);

  MEMORY[0x24C21C9E0](0x67656C6544736920, 0xED00003A64657461);
  if (*(v0 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_isDelegated))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_isDelegated))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v5, v6);

  MEMORY[0x24C21C9E0](15911, 0xE200000000000000);

  MEMORY[0x24C21C9E0](0xD000000000000012, 0x800000024A849FD0);

  return 60;
}

uint64_t sub_24A7E2A4C(uint64_t a1, uint64_t *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = *a2;
  v9 = sub_24A82CAA4();
  (*(*(v9 - 8) + 16))(v7 + v8, a1, v9);
  sub_24A69F324(a1, type metadata accessor for FMIPUnknownItem);
  return v7;
}

uint64_t sub_24A7E2AF8(uint64_t a1, void *a2)
{
  v5 = sub_24A82CAA4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5);
  sub_24A69F324(a1, type metadata accessor for FMIPUnknownItem);
  (*(v6 + 32))(v2 + *a2, v9, v5);
  return v2;
}

uint64_t sub_24A7E2C8C(uint64_t a1, uint64_t *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = *a2;
  v9 = sub_24A82CAA4();
  (*(*(v9 - 8) + 32))(v7 + v8, a1, v9);
  return v7;
}

uint64_t sub_24A7E2D1C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = sub_24A82CAA4();
  (*(*(v5 - 8) + 32))(v2 + v4, a1, v5);
  return v2;
}

uint64_t sub_24A7E2D94(uint64_t *a1)
{
  v3 = *v1;
  v4 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v4);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  sub_24A6CB660();
  v5 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v5);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  sub_24A82D854();

  v6 = *a1;
  sub_24A82CAA4();
  sub_24A7E2304();
  v7 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v7);

  MEMORY[0x24C21C9E0](15911, 0xE200000000000000);

  MEMORY[0x24C21C9E0](0xD000000000000012, 0x800000024A849FD0);

  return 60;
}

uint64_t sub_24A7E2F40(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_24A82CAA4();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  return v1;
}

uint64_t sub_24A7E2FA8(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_24A82CAA4();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A7E322C()
{
  result = sub_24A82CAA4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24A7E345C()
{
  result = sub_24A82CAA4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_24A7E3574(uint64_t a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5F480, &qword_24A83F528);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v31 - v5;
  v38 = type metadata accessor for FMIPUnknownItem();
  v7 = *(v38 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v38);
  v33 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v31 = &v31 - v11;
  v35 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24A82D704();
    sub_24A679170(0, &qword_27EF5DF78, 0x277D496E0);
    sub_24A7E4818();
    result = sub_24A82D414();
    a1 = v40;
    v13 = v41;
    v15 = v42;
    v14 = v43;
    v16 = v44;
  }

  else
  {
    v17 = -1 << *(a1 + 32);
    v13 = a1 + 56;
    v15 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(a1 + 56);

    v14 = 0;
  }

  v34 = v15;
  v37 = (v7 + 56);
  v32 = v7;
  v20 = (v7 + 48);
  v36 = MEMORY[0x277D84F90];
  while (a1 < 0)
  {
    v24 = sub_24A82D784();
    if (!v24 || (v39 = v24, sub_24A679170(0, &qword_27EF5DF78, 0x277D496E0), swift_dynamicCast(), (v23 = v45) == 0))
    {
LABEL_24:
      sub_24A6BAFBC();
      return v36;
    }

LABEL_17:
    v25 = v23;
    FMIPUnknownItem.init(with:)(v25, v6);
    v26 = v38;
    (*v37)(v6, 0, 1, v38);

    if ((*v20)(v6, 1, v26) == 1)
    {
      result = sub_24A67F378(v6, &qword_27EF5F480, &qword_24A83F528);
    }

    else
    {
      v27 = v31;
      sub_24A7F0958(v6, v31, type metadata accessor for FMIPUnknownItem);
      sub_24A7F0958(v27, v33, type metadata accessor for FMIPUnknownItem);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_24A780670(0, v36[2] + 1, 1, v36);
      }

      v29 = v36[2];
      v28 = v36[3];
      if (v29 >= v28 >> 1)
      {
        v36 = sub_24A780670(v28 > 1, v29 + 1, 1, v36);
      }

      v30 = v36;
      v36[2] = v29 + 1;
      result = sub_24A7F0958(v33, v30 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v29, type metadata accessor for FMIPUnknownItem);
    }
  }

  v21 = v14;
  v22 = v16;
  if (v16)
  {
LABEL_13:
    v16 = (v22 - 1) & v22;
    v23 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v23)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v14 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v14 >= ((v15 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v22 = *(v13 + 8 * v14);
    ++v21;
    if (v22)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A7E39A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (a2)
  {
    sub_24A82C884();
    v10 = sub_24A82C8B4();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  }

  else
  {
    v11 = sub_24A82C8B4();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  }

  v9(v7);

  return sub_24A67F378(v7, &unk_27EF5CCB8, &qword_24A82FDB0);
}

uint64_t sub_24A7E3B2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A79D24C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_24A6A7314(v3);
}

uint64_t sub_24A7E3BAC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A79D1CC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = a2[1];
  sub_24A6A7314(v3);
  result = sub_24A6AFFE8(v7);
  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t FMIPUnknownAccessoryDiscoveryController.Callbacks.discoveredAccessoriesCallback.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24A6A7314(v1);
  return v1;
}

uint64_t FMIPUnknownAccessoryDiscoveryController.Callbacks.discoveredAccessoriesCallback.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];
  result = sub_24A6AFFE8(*v2);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_24A7E3CD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A79D24C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_24A6A7314(v3);
}

uint64_t sub_24A7E3D54(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A79D1CC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  sub_24A6A7314(v3);
  result = sub_24A6AFFE8(v7);
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  return result;
}

uint64_t FMIPUnknownAccessoryDiscoveryController.Callbacks.lostAccessoriesCallback.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_24A6A7314(v1);
  return v1;
}

uint64_t FMIPUnknownAccessoryDiscoveryController.Callbacks.lostAccessoriesCallback.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  result = sub_24A6AFFE8(*(v2 + 16));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_24A7E3E7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A79D034;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_24A6A7314(v3);
}

uint64_t sub_24A7E3EFC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A79CFFC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  sub_24A6A7314(v3);
  result = sub_24A6AFFE8(v7);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  return result;
}

uint64_t FMIPUnknownAccessoryDiscoveryController.Callbacks.accessoryDiscoveryFinished.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_24A6A7314(v1);
  return v1;
}

uint64_t FMIPUnknownAccessoryDiscoveryController.Callbacks.accessoryDiscoveryFinished.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  result = sub_24A6AFFE8(*(v2 + 32));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_24A7E4024@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A7E9D8C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_24A6A7314(v3);
}

uint64_t sub_24A7E40A4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A7E9D64;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  sub_24A6A7314(v3);
  result = sub_24A6AFFE8(v7);
  *(a2 + 48) = v6;
  *(a2 + 56) = v5;
  return result;
}

uint64_t FMIPUnknownAccessoryDiscoveryController.Callbacks.errorHandler.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_24A6A7314(v1);
  return v1;
}

uint64_t FMIPUnknownAccessoryDiscoveryController.Callbacks.errorHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  result = sub_24A6AFFE8(*(v2 + 48));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_24A7E41D4(__int128 *a1, void *a2)
{
  v2 = a1[1];
  v12 = *a1;
  v13 = v2;
  v3 = a1[3];
  v14 = a1[2];
  v15 = v3;
  v4 = *a2;
  swift_beginAccess();
  v6 = v4[2];
  v5 = v4[3];
  v7 = v4[5];
  v16[2] = v4[4];
  v16[3] = v7;
  v16[0] = v6;
  v16[1] = v5;
  v8 = v13;
  v9 = v15;
  v4[4] = v14;
  v4[5] = v9;
  v4[2] = v12;
  v4[3] = v8;
  sub_24A7E42C8(&v12, v11);
  return sub_24A7E4364(v16);
}

uint64_t sub_24A7E4268@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[3];
  v8[0] = v1[2];
  v8[1] = v3;
  v5 = v1[5];
  v9 = v1[4];
  v4 = v9;
  v10 = v5;
  *a1 = v8[0];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_24A7E42C8(v8, v7);
}

uint64_t sub_24A7E4300(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[3];
  v8[0] = v1[2];
  v8[1] = v3;
  v4 = v1[5];
  v8[2] = v1[4];
  v8[3] = v4;
  v5 = a1[1];
  v1[2] = *a1;
  v1[3] = v5;
  v6 = a1[3];
  v1[4] = a1[2];
  v1[5] = v6;
  return sub_24A7E4364(v8);
}

uint64_t FMIPUnknownAccessoryDiscoveryController.__allocating_init()()
{
  v0 = swift_allocObject();
  FMIPUnknownAccessoryDiscoveryController.init()();
  return v0;
}

uint64_t FMIPUnknownAccessoryDiscoveryController.init()()
{
  v1 = v0;
  v2 = sub_24A82D554();
  v3 = *(v2 - 8);
  v21 = v2;
  v22 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82D534();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_24A82CE54();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v20[1] = sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
  v20[4] = "MIPStopDelegatedURLShareAction";
  sub_24A82CE24();
  v23 = MEMORY[0x277D84F90];
  v20[3] = sub_24A695740(&qword_2815146D0, MEMORY[0x277D85230]);
  v20[2] = sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  v11 = *MEMORY[0x277D85260];
  v12 = *(v22 + 104);
  v22 += 104;
  v12(v6, v11, v21);
  *(v0 + 16) = sub_24A82D594();
  sub_24A82CE24();
  v23 = MEMORY[0x277D84F90];
  sub_24A82D6B4();
  v12(v6, v11, v21);
  *(v0 + 24) = sub_24A82D594();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = [objc_allocWithZone(MEMORY[0x277D496E8]) init];
  *(v0 + 104) = 0;
  *(v0 + 112) = MEMORY[0x277D84FA0];
  v13 = objc_allocWithZone(MEMORY[0x277D496F0]);
  sub_24A679170(0, &qword_27EF5DF78, 0x277D496E0);
  sub_24A7E4818();
  v14 = sub_24A82D394();
  v15 = [v13 initWithUnknownAccessories_];

  v16 = v15;
  v17 = sub_24A7E9194(v15);

  v18 = *(v1 + 96);
  *(v1 + 96) = v17;

  return v1;
}

unint64_t sub_24A7E4818()
{
  result = qword_27EF5F460;
  if (!qword_27EF5F460)
  {
    sub_24A679170(255, &qword_27EF5DF78, 0x277D496E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F460);
  }

  return result;
}

uint64_t FMIPUnknownAccessoryDiscoveryController.deinit()
{
  [*(v0 + 96) stop];

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  sub_24A6AFFE8(*(v0 + 32));
  sub_24A6AFFE8(v2);
  sub_24A6AFFE8(v4);
  sub_24A6AFFE8(v6);

  v8 = *(v0 + 112);

  return v0;
}

uint64_t FMIPUnknownAccessoryDiscoveryController.__deallocating_deinit()
{
  [*(v0 + 96) stop];

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  sub_24A6AFFE8(*(v0 + 32));
  sub_24A6AFFE8(v2);
  sub_24A6AFFE8(v4);
  sub_24A6AFFE8(v6);

  v8 = *(v0 + 112);

  return swift_deallocClassInstance();
}

void sub_24A7E4A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A82CDF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v61 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A82CE54();
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = *(v62 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A82CE74();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v54 - v20;
  swift_beginAccess();
  if (*(a1 + 104))
  {
    v22 = sub_24A82D504();
    if (qword_27EF5CB80 != -1)
    {
      swift_once();
    }

    v23 = sub_24A82CDC4();
    sub_24A6797D0(v23, qword_27EF78BE8);
    v24 = sub_24A82CD94();
    if (os_log_type_enabled(v24, v22))
    {
      v25 = a2;
      v26 = swift_slowAlloc();
      v27 = a3;
      v28 = swift_slowAlloc();
      aBlock = v28;
      *v26 = 136315138;
      *(v26 + 4) = sub_24A68761C(0xD000000000000048, 0x800000024A84A3D0, &aBlock);
      _os_log_impl(&dword_24A675000, v24, v22, "FMIPUnknownAccessoryDiscoveryController: %s", v26, 0xCu);
      sub_24A6876E8(v28);
      v29 = v28;
      a3 = v27;
      MEMORY[0x24C21E1D0](v29, -1, -1);
      v30 = v26;
      a2 = v25;
      MEMORY[0x24C21E1D0](v30, -1, -1);
    }

    v31 = *(a1 + 24);
    v32 = swift_allocObject();
    *(v32 + 16) = a2;
    *(v32 + 24) = a3;
    v69 = sub_24A7F0A80;
    v70 = v32;
    aBlock = MEMORY[0x277D85DD0];
    v66 = 1107296256;
    v67 = sub_24A699BA0;
    v68 = &unk_285DCC068;
    v33 = _Block_copy(&aBlock);
    sub_24A6A7314(a2);
    sub_24A82CE24();
    v64 = MEMORY[0x277D84F90];
    sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    v34 = v13;
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v35 = v61;
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v13, v35, v33);
    _Block_release(v33);
    (*(v7 + 8))(v35, v6);
    goto LABEL_9;
  }

  v58 = v13;
  v59 = v7;
  v60 = v6;
  v36 = dispatch_group_create();
  dispatch_group_enter(v36);
  v37 = *(a1 + 96);
  v38 = swift_allocObject();
  v39 = a1;
  v40 = a2;
  v41 = v38;
  v55 = v39;
  swift_weakInit();
  v42 = swift_allocObject();
  v42[2] = v36;
  v42[3] = v41;
  v42[4] = v40;
  v42[5] = a3;
  v69 = sub_24A7E9EB4;
  v70 = v42;
  aBlock = MEMORY[0x277D85DD0];
  v66 = 1107296256;
  v54[1] = &v67;
  v67 = sub_24A7386AC;
  v68 = &unk_285DCBFC8;
  v43 = _Block_copy(&aBlock);
  v44 = v37;
  v45 = v36;
  v56 = v40;
  v57 = a3;
  sub_24A6A7314(v40);

  [v44 startDiscoveryWithCompletion_];
  _Block_release(v43);

  sub_24A82CE64();
  sub_24A82CE94();
  v46 = *(v15 + 8);
  v46(v19, v14);
  sub_24A82D514();
  v46(v21, v14);
  if (sub_24A82CDD4())
  {
    v47 = *(v55 + 24);
    v48 = swift_allocObject();
    v50 = v56;
    v49 = v57;
    *(v48 + 16) = v56;
    *(v48 + 24) = v49;
    v69 = sub_24A7F0A80;
    v70 = v48;
    aBlock = MEMORY[0x277D85DD0];
    v66 = 1107296256;
    v67 = sub_24A699BA0;
    v68 = &unk_285DCC018;
    v51 = _Block_copy(&aBlock);
    sub_24A6A7314(v50);
    v34 = v58;
    sub_24A82CE24();
    v64 = MEMORY[0x277D84F90];
    sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v52 = v60;
    v53 = v61;
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v34, v53, v51);
    _Block_release(v51);

    (*(v59 + 8))(v53, v52);
LABEL_9:
    (*(v62 + 8))(v34, v63);

    return;
  }
}

void sub_24A7E51B8(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a4;
  v58 = a5;
  v7 = sub_24A82CDF4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A82CE54();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v55 = v8;
    v56 = v7;
    v54 = v12;
    v53 = v13;
    if (a1)
    {
      v51 = v11;
      v19 = a1;
      v20 = a1;
      v21 = sub_24A82D4E4();
      if (qword_27EF5CB80 != -1)
      {
        swift_once();
      }

      v22 = sub_24A82CDC4();
      sub_24A6797D0(v22, qword_27EF78BE8);
      v23 = sub_24A82CD94();
      v24 = os_log_type_enabled(v23, v21);
      v52 = a2;
      if (v24)
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v66 = v26;
        *v25 = 136315138;
        aBlock = 0;
        v61 = 0xE000000000000000;
        sub_24A82D854();
        MEMORY[0x24C21C9E0](0xD000000000000034, 0x800000024A848600);
        swift_getErrorValue();
        v27 = sub_24A82DC74();
        MEMORY[0x24C21C9E0](v27);

        v28 = sub_24A68761C(aBlock, v61, &v66);

        *(v25 + 4) = v28;
        _os_log_impl(&dword_24A675000, v23, v21, "FMIPUnknownAccessoryDiscoveryController: %s", v25, 0xCu);
        sub_24A6876E8(v26);
        MEMORY[0x24C21E1D0](v26, -1, -1);
        MEMORY[0x24C21E1D0](v25, -1, -1);
      }

      LOBYTE(v66) = 0;
      v29 = a1;
      FMIPAccessoryError.init(underlyingError:discoveryType:)(a1, &v66, &aBlock);
      v30 = aBlock;
      v31 = v61;
      v66 = aBlock;
      v67 = v61;
      sub_24A7E8768(&v66);
      sub_24A79CFB0(v30, v31);
      v32 = *(v18 + 24);
      v33 = swift_allocObject();
      v35 = v57;
      v34 = v58;
      v33[2] = v57;
      v33[3] = v34;
      v33[4] = a1;
      v64 = sub_24A7F0AEC;
      v65 = v33;
      aBlock = MEMORY[0x277D85DD0];
      v61 = 1107296256;
      v62 = sub_24A699BA0;
      v63 = &unk_285DCC108;
      v36 = _Block_copy(&aBlock);
      sub_24A6A7314(v35);
      v37 = a1;
      sub_24A82CE24();
      v66 = MEMORY[0x277D84F90];
      sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198]);
      sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
      sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
      v38 = v51;
      v39 = v56;
      sub_24A82D6B4();
      MEMORY[0x24C21CE90](0, v16, v38, v36);
      _Block_release(v36);

      (*(v55 + 8))(v38, v39);
      (*(v53 + 8))(v16, v54);

      a2 = v52;
    }

    else
    {
      v40 = sub_24A82D504();
      if (qword_27EF5CB80 != -1)
      {
        swift_once();
      }

      v41 = sub_24A82CDC4();
      sub_24A6797D0(v41, qword_27EF78BE8);
      v42 = sub_24A82CD94();
      if (os_log_type_enabled(v42, v40))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        aBlock = v44;
        *v43 = 136315138;
        *(v43 + 4) = sub_24A68761C(0xD000000000000028, 0x800000024A8485D0, &aBlock);
        _os_log_impl(&dword_24A675000, v42, v40, "FMIPUnknownAccessoryDiscoveryController: %s", v43, 0xCu);
        sub_24A6876E8(v44);
        MEMORY[0x24C21E1D0](v44, -1, -1);
        MEMORY[0x24C21E1D0](v43, -1, -1);
      }

      swift_beginAccess();
      *(v18 + 104) = 1;
      v45 = *(v18 + 24);
      v46 = swift_allocObject();
      v48 = v57;
      v47 = v58;
      *(v46 + 16) = v57;
      *(v46 + 24) = v47;
      v64 = sub_24A7F0A84;
      v65 = v46;
      aBlock = MEMORY[0x277D85DD0];
      v61 = 1107296256;
      v62 = sub_24A699BA0;
      v63 = &unk_285DCC0B8;
      v49 = _Block_copy(&aBlock);
      sub_24A6A7314(v48);
      sub_24A82CE24();
      v59 = MEMORY[0x277D84F90];
      sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198]);
      sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
      sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
      v50 = v56;
      sub_24A82D6B4();
      MEMORY[0x24C21CE90](0, v16, v11, v49);
      _Block_release(v49);
      (*(v55 + 8))(v11, v50);
      (*(v53 + 8))(v16, v54);
    }
  }

  dispatch_group_leave(a2);
}

uint64_t sub_24A7E59D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v6 = v5;
  v9 = *v6;
  v10 = sub_24A82CDF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24A82CE54();
  v15 = *(v26 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v26);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v6[2];
  v19 = swift_allocObject();
  v19[2] = v6;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = v9;
  aBlock[4] = v23;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = v24;
  v20 = _Block_copy(aBlock);

  sub_24A6A7314(a1);
  sub_24A82CE24();
  v27 = MEMORY[0x277D84F90];
  sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v18, v14, v20);
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v26);
}

void sub_24A7E5CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A82CDF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v61 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A82CE54();
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = *(v62 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A82CE74();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v54 - v20;
  swift_beginAccess();
  if (*(a1 + 104) != 1)
  {
    v41 = sub_24A82D504();
    if (qword_27EF5CB80 != -1)
    {
      swift_once();
    }

    v42 = sub_24A82CDC4();
    sub_24A6797D0(v42, qword_27EF78BE8);
    v43 = sub_24A82CD94();
    if (os_log_type_enabled(v43, v41))
    {
      v44 = a2;
      v45 = swift_slowAlloc();
      v46 = a3;
      v47 = swift_slowAlloc();
      aBlock = v47;
      *v45 = 136315138;
      *(v45 + 4) = sub_24A68761C(0xD00000000000002BLL, 0x800000024A84A3A0, &aBlock);
      _os_log_impl(&dword_24A675000, v43, v41, "FMIPUnknownAccessoryDiscoveryController: %s", v45, 0xCu);
      sub_24A6876E8(v47);
      v48 = v47;
      a3 = v46;
      MEMORY[0x24C21E1D0](v48, -1, -1);
      v49 = v45;
      a2 = v44;
      MEMORY[0x24C21E1D0](v49, -1, -1);
    }

    v50 = *(a1 + 24);
    v51 = swift_allocObject();
    *(v51 + 16) = a2;
    *(v51 + 24) = a3;
    v69 = sub_24A7F0A80;
    v70 = v51;
    aBlock = MEMORY[0x277D85DD0];
    v66 = 1107296256;
    v67 = sub_24A699BA0;
    v68 = &unk_285DCBE10;
    v52 = _Block_copy(&aBlock);
    sub_24A6A7314(a2);
    sub_24A82CE24();
    v64 = MEMORY[0x277D84F90];
    sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    v38 = v13;
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v53 = v61;
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v13, v53, v52);
    _Block_release(v52);
    (*(v7 + 8))(v53, v6);
    goto LABEL_9;
  }

  v58 = v13;
  v59 = v7;
  v60 = v6;
  v22 = dispatch_group_create();
  dispatch_group_enter(v22);
  v23 = *(a1 + 96);
  v24 = swift_allocObject();
  v25 = a1;
  v26 = a2;
  v27 = v24;
  v55 = v25;
  swift_weakInit();
  v28 = swift_allocObject();
  v28[2] = v22;
  v28[3] = v27;
  v28[4] = v26;
  v28[5] = a3;
  v69 = sub_24A7E9E20;
  v70 = v28;
  aBlock = MEMORY[0x277D85DD0];
  v66 = 1107296256;
  v54[1] = &v67;
  v67 = sub_24A7386AC;
  v68 = &unk_285DCBE88;
  v29 = _Block_copy(&aBlock);
  v30 = v23;
  v31 = v22;
  v56 = v26;
  v57 = a3;
  sub_24A6A7314(v26);

  [v30 stopDiscoveryWithCompletion_];
  _Block_release(v29);

  sub_24A82CE64();
  sub_24A82CE94();
  v32 = *(v15 + 8);
  v32(v19, v14);
  sub_24A82D514();
  v32(v21, v14);
  if (sub_24A82CDD4())
  {
    v33 = *(v55 + 24);
    v34 = swift_allocObject();
    v36 = v56;
    v35 = v57;
    *(v34 + 16) = v56;
    *(v34 + 24) = v35;
    v69 = sub_24A7E9E2C;
    v70 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v66 = 1107296256;
    v67 = sub_24A699BA0;
    v68 = &unk_285DCBED8;
    v37 = _Block_copy(&aBlock);
    sub_24A6A7314(v36);
    v38 = v58;
    sub_24A82CE24();
    v64 = MEMORY[0x277D84F90];
    sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v39 = v60;
    v40 = v61;
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v38, v40, v37);
    _Block_release(v37);

    (*(v59 + 8))(v40, v39);
LABEL_9:
    (*(v62 + 8))(v38, v63);

    return;
  }
}

void sub_24A7E646C(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24A82CDF4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_24A82CE54();
  v64 = *(v65 - 8);
  v14 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v62 = v10;
    v63 = v9;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v18 = a1;
    if (Strong)
    {

      v19 = a1;
      v20 = sub_24A82D4E4();
      if (qword_27EF5CB80 != -1)
      {
        swift_once();
      }

      v21 = sub_24A82CDC4();
      sub_24A6797D0(v21, qword_27EF78BE8);
      v22 = sub_24A82CD94();
      if (os_log_type_enabled(v22, v20))
      {
        v23 = swift_slowAlloc();
        v61 = a2;
        v24 = v23;
        v25 = swift_slowAlloc();
        v60 = a5;
        v59 = v25;
        v75 = v25;
        *v24 = 136315138;
        aBlock = 0;
        v70 = 0xE000000000000000;
        sub_24A82D854();
        MEMORY[0x24C21C9E0](0xD000000000000033, 0x800000024A848470);
        swift_getErrorValue();
        v26 = sub_24A82DC74();
        v27 = v20;
        v28 = v16;
        v29 = v13;
        v30 = a4;
        MEMORY[0x24C21C9E0](v26);

        v31 = sub_24A68761C(aBlock, v70, &v75);

        *(v24 + 4) = v31;
        a4 = v30;
        v13 = v29;
        v16 = v28;
        _os_log_impl(&dword_24A675000, v22, v27, "FMIPUnknownAccessoryDiscoveryController: %s", v24, 0xCu);
        v32 = v59;
        sub_24A6876E8(v59);
        a5 = v60;
        MEMORY[0x24C21E1D0](v32, -1, -1);
        v33 = v24;
        a2 = v61;
        MEMORY[0x24C21E1D0](v33, -1, -1);
      }
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      LOBYTE(v67) = 0;
      v34 = a1;
      FMIPAccessoryError.init(underlyingError:discoveryType:)(a1, &v67, &aBlock);
      v35 = aBlock;
      v36 = a4;
      v37 = v70;
      v67 = aBlock;
      v68 = v70;
      sub_24A7E8768(&v67);

      v38 = v37;
      a4 = v36;
      sub_24A79CFB0(v35, v38);
    }

    swift_beginAccess();
    v39 = swift_weakLoadStrong();
    if (v39)
    {
      v40 = *(v39 + 24);

      v41 = swift_allocObject();
      v41[2] = a4;
      v41[3] = a5;
      v41[4] = a1;
      v73 = sub_24A7E9E44;
      v74 = v41;
      aBlock = MEMORY[0x277D85DD0];
      v70 = 1107296256;
      v71 = sub_24A699BA0;
      v72 = &unk_285DCBF78;
      v42 = _Block_copy(&aBlock);
      v43 = a1;
      sub_24A6A7314(a4);
      sub_24A82CE24();
      v66 = MEMORY[0x277D84F90];
      sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198]);
      sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
      sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
      v44 = v63;
      sub_24A82D6B4();
      MEMORY[0x24C21CE90](0, v16, v13, v42);
      _Block_release(v42);

      (*(v62 + 8))(v13, v44);
      (*(v64 + 8))(v16, v65);
    }

    else
    {
    }
  }

  else
  {
    swift_beginAccess();
    v45 = swift_weakLoadStrong();
    if (v45)
    {
      v46 = v45;
      v62 = v10;
      v63 = v9;
      v47 = sub_24A82D504();
      if (qword_27EF5CB80 != -1)
      {
        swift_once();
      }

      v48 = sub_24A82CDC4();
      sub_24A6797D0(v48, qword_27EF78BE8);
      v49 = sub_24A82CD94();
      v50 = a2;
      if (os_log_type_enabled(v49, v47))
      {
        v51 = a4;
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        aBlock = v53;
        *v52 = 136315138;
        *(v52 + 4) = sub_24A68761C(0xD000000000000029, 0x800000024A848440, &aBlock);
        _os_log_impl(&dword_24A675000, v49, v47, "FMIPUnknownAccessoryDiscoveryController: %s", v52, 0xCu);
        sub_24A6876E8(v53);
        MEMORY[0x24C21E1D0](v53, -1, -1);
        v54 = v52;
        a4 = v51;
        MEMORY[0x24C21E1D0](v54, -1, -1);
      }

      swift_beginAccess();
      *(v46 + 104) = 0;
      v55 = *(v46 + 24);
      v56 = swift_allocObject();
      *(v56 + 16) = a4;
      *(v56 + 24) = a5;
      v73 = sub_24A7E9E38;
      v74 = v56;
      aBlock = MEMORY[0x277D85DD0];
      v70 = 1107296256;
      v71 = sub_24A699BA0;
      v72 = &unk_285DCBF28;
      v57 = _Block_copy(&aBlock);
      sub_24A6A7314(a4);
      sub_24A82CE24();
      v67 = MEMORY[0x277D84F90];
      sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198]);
      sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
      sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
      v58 = v63;
      sub_24A82D6B4();
      MEMORY[0x24C21CE90](0, v16, v13, v57);
      _Block_release(v57);
      (*(v62 + 8))(v13, v58);
      (*(v64 + 8))(v16, v65);

      a2 = v50;
    }
  }

  dispatch_group_leave(a2);
}

void sub_24A7E6D4C(void (*a1)(id *), int a2, id a3)
{
  if (a1)
  {
    LOBYTE(v6) = 0;
    v5 = a3;
    FMIPAccessoryError.init(underlyingError:discoveryType:)(a3, &v6, &v9);
    v6 = v9;
    v7 = v10;
    v8 = 1;
    a1(&v6);
    sub_24A79D060(v6, v7, v8);
  }
}

void sub_24A7E6DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 96);
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a2;
  v8[4] = a3;
  v11[4] = sub_24A7E94D0;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24A7E39A4;
  v11[3] = &unk_285DCBAE0;
  v9 = _Block_copy(v11);
  v10 = v7;

  [v10 fetchEncryptedPayloadForUnknownBeacon:a1 completion:v9];
  _Block_release(v9);
}

uint64_t sub_24A7E6EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a3;
  v62 = a4;
  v60 = a2;
  v5 = sub_24A82CDF4();
  v67 = *(v5 - 8);
  v6 = *(v67 + 64);
  MEMORY[0x28223BE20](v5);
  v64 = &v52[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24A82CE54();
  v65 = *(v8 - 8);
  v66 = v8;
  v9 = *(v65 + 64);
  MEMORY[0x28223BE20](v8);
  v63 = &v52[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v52[-v13];
  v15 = sub_24A82C8B4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v59 = &v52[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v52[-v20];
  MEMORY[0x28223BE20](v19);
  v23 = &v52[-v22];
  sub_24A67E964(a1, v14, &unk_27EF5CCB8, &qword_24A82FDB0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_24A67F378(v14, &unk_27EF5CCB8, &qword_24A82FDB0);
    v24 = sub_24A82D504();
    if (qword_27EF5CB80 != -1)
    {
      swift_once();
    }

    v25 = sub_24A82CDC4();
    sub_24A6797D0(v25, qword_27EF78BE8);
    v26 = sub_24A82CD94();
    if (os_log_type_enabled(v26, v24))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_24A68761C(0xD00000000000003ELL, 0x800000024A84A320, &aBlock);
      _os_log_impl(&dword_24A675000, v26, v24, "FMIPUnknownAccessoryDiscoveryController: %s", v27, 0xCu);
      sub_24A6876E8(v28);
      MEMORY[0x24C21E1D0](v28, -1, -1);
      MEMORY[0x24C21E1D0](v27, -1, -1);
    }

    v29 = *(v60 + 24);
    v30 = swift_allocObject();
    v31 = v62;
    *(v30 + 16) = v61;
    *(v30 + 24) = v31;
    v73 = sub_24A7E9DB4;
    v74 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v70 = 1107296256;
    v71 = sub_24A699BA0;
    v72 = &unk_285DCBD70;
    v32 = _Block_copy(&aBlock);

    v33 = v63;
    sub_24A82CE24();
    v68 = MEMORY[0x277D84F90];
    sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v34 = v64;
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v33, v34, v32);
    _Block_release(v32);
    (*(v67 + 8))(v34, v5);
    (*(v65 + 8))(v33, v66);
  }

  else
  {
    v35 = *(v16 + 32);
    v57 = v16 + 32;
    v58 = v5;
    v56 = v35;
    v35(v23, v14, v15);
    v55 = *(v16 + 16);
    v55(v21, v23, v15);
    v36 = sub_24A82D504();
    if (qword_27EF5CB80 != -1)
    {
      swift_once();
    }

    v37 = sub_24A82CDC4();
    sub_24A6797D0(v37, qword_27EF78BE8);
    v38 = sub_24A82CD94();
    if (os_log_type_enabled(v38, v36))
    {
      v39 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v68 = v54;
      aBlock = 0;
      *v39 = 136315138;
      v70 = 0xE000000000000000;
      sub_24A82D854();
      MEMORY[0x24C21C9E0](0xD000000000000035, 0x800000024A84A360);
      v40 = sub_24A82C804();
      v53 = v36;
      MEMORY[0x24C21C9E0](v40);

      v41 = sub_24A68761C(aBlock, v70, &v68);

      *(v39 + 4) = v41;
      _os_log_impl(&dword_24A675000, v38, v53, "FMIPUnknownAccessoryDiscoveryController: %s", v39, 0xCu);
      v42 = v54;
      sub_24A6876E8(v54);
      MEMORY[0x24C21E1D0](v42, -1, -1);
      MEMORY[0x24C21E1D0](v39, -1, -1);
    }

    v54 = *(v16 + 8);
    (v54)(v21, v15);
    v43 = v59;
    v60 = *(v60 + 24);
    v55(v59, v23, v15);
    v44 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v45 = swift_allocObject();
    v46 = v62;
    *(v45 + 16) = v61;
    *(v45 + 24) = v46;
    v56(v45 + v44, v43, v15);
    v73 = sub_24A7E9DBC;
    v74 = v45;
    aBlock = MEMORY[0x277D85DD0];
    v70 = 1107296256;
    v71 = sub_24A699BA0;
    v72 = &unk_285DCBDC0;
    v47 = _Block_copy(&aBlock);

    v48 = v63;
    sub_24A82CE24();
    v68 = MEMORY[0x277D84F90];
    sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v49 = v64;
    v50 = v58;
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v48, v49, v47);
    _Block_release(v47);
    (*(v67 + 8))(v49, v50);
    (*(v65 + 8))(v48, v66);
    (v54)(v23, v15);
  }
}

uint64_t sub_24A7E7800(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = sub_24A6BBA94(&qword_27EF5F470, &qword_24A83F508);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  v9 = sub_24A82C8B4();
  (*(*(v9 - 8) + 16))(v8, a3, v9);
  swift_storeEnumTagMultiPayload();
  a1(v8);
  return sub_24A67F378(v8, &qword_27EF5F470, &qword_24A83F508);
}

uint64_t sub_24A7E7908(void (*a1)(char *))
{
  v2 = sub_24A6BBA94(&qword_27EF5F470, &qword_24A83F508);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  *v5 = 0;
  v5[8] = 0;
  swift_storeEnumTagMultiPayload();
  a1(v5);
  return sub_24A67F378(v5, &qword_27EF5F470, &qword_24A83F508);
}

uint64_t sub_24A7E79CC@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 112);

  sub_24A79F424(sub_24A7E94DC, v3, a1);
}

uint64_t sub_24A7E7A54(uint64_t a1)
{
  v2 = sub_24A82D4E4();
  if (qword_27EF5CB80 != -1)
  {
    swift_once();
  }

  v3 = sub_24A82CDC4();
  sub_24A6797D0(v3, qword_27EF78BE8);
  v4 = sub_24A82CD94();
  if (os_log_type_enabled(v4, v2))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_24A68761C(0xD000000000000018, 0x800000024A848370, &v13);
    _os_log_impl(&dword_24A675000, v4, v2, "FMIPUnknownAccessoryDiscoveryController: %s", v5, 0xCu);
    sub_24A6876E8(v6);
    MEMORY[0x24C21E1D0](v6, -1, -1);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  result = swift_beginAccess();
  if (*(a1 + 104) == 1)
  {
    v8 = sub_24A82D504();
    v9 = sub_24A82CD94();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_24A68761C(0xD000000000000052, 0x800000024A84A420, &v12);
      _os_log_impl(&dword_24A675000, v9, v8, "FMIPUnknownAccessoryDiscoveryController: %s", v10, 0xCu);
      sub_24A6876E8(v11);
      MEMORY[0x24C21E1D0](v11, -1, -1);
      MEMORY[0x24C21E1D0](v10, -1, -1);
    }

    return sub_24A7E8C58();
  }

  return result;
}

uint64_t sub_24A7E7C80(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A82CDF4();
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v57 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_24A82CE54();
  v56 = *(v58 - 8);
  v7 = *(v56 + 64);
  MEMORY[0x28223BE20](v58);
  v55 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v9 = sub_24A82D504();
  if (qword_27EF5CB80 != -1)
  {
    swift_once();
  }

  v10 = sub_24A82CDC4();
  sub_24A6797D0(v10, qword_27EF78BE8);
  v11 = sub_24A82CD94();
  if (os_log_type_enabled(v11, v9))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v66 = v13;
    *v12 = 136315138;
    aBlock = 0;
    v61 = 0xE000000000000000;
    sub_24A82D854();

    aBlock = 0xD000000000000016;
    v61 = 0x800000024A848680;
    sub_24A679170(0, &qword_27EF5DF78, 0x277D496E0);
    sub_24A7E4818();
    v14 = sub_24A82D3B4();
    MEMORY[0x24C21C9E0](v14);

    v15 = sub_24A68761C(aBlock, v61, &v66);

    *(v12 + 4) = v15;
    _os_log_impl(&dword_24A675000, v11, v9, "FMIPUnknownAccessoryDiscoveryController: %s", v12, 0xCu);
    sub_24A6876E8(v13);
    MEMORY[0x24C21E1D0](v13, -1, -1);
    MEMORY[0x24C21E1D0](v12, -1, -1);
  }

  v16 = sub_24A7E3574(a2);
  v17 = sub_24A71462C(v16);

  swift_beginAccess();
  v18 = *(a1 + 112);
  if (*(v18 + 16) <= *(v17 + 16) >> 3)
  {
    aBlock = v17;

    sub_24A7EAD88(v18);

    v20 = aBlock;
  }

  else
  {
    v19 = *(a1 + 112);

    v20 = sub_24A7ECFEC(v18, v17);
  }

  v21 = *(a1 + 112);
  if (*(v17 + 16) <= *(v21 + 16) >> 3)
  {
    aBlock = *(a1 + 112);

    sub_24A7EAD88(v17);
    v23 = aBlock;
  }

  else
  {
    v22 = *(a1 + 112);

    v23 = sub_24A7ECFEC(v17, v21);
  }

  v24 = *(a1 + 112);
  *(a1 + 112) = v17;

  v25 = sub_24A82D504();
  v26 = sub_24A82CD94();
  if (os_log_type_enabled(v26, v25))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v59 = v28;
    aBlock = 0;
    *v27 = 136315138;
    v61 = 0xE000000000000000;
    sub_24A82D854();

    aBlock = 0xD00000000000001CLL;
    v61 = 0x800000024A848660;
    type metadata accessor for FMIPUnknownItem();
    sub_24A695740(&qword_27EF5DD80, type metadata accessor for FMIPUnknownItem);
    v29 = sub_24A82D3B4();
    MEMORY[0x24C21C9E0](v29);

    v30 = sub_24A68761C(aBlock, v61, &v59);

    *(v27 + 4) = v30;
    _os_log_impl(&dword_24A675000, v26, v25, "FMIPUnknownAccessoryDiscoveryController: %s", v27, 0xCu);
    sub_24A6876E8(v28);
    MEMORY[0x24C21E1D0](v28, -1, -1);
    MEMORY[0x24C21E1D0](v27, -1, -1);
  }

  v31 = sub_24A82D504();
  v32 = sub_24A82CD94();
  if (os_log_type_enabled(v32, v31))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v59 = v34;
    aBlock = 0;
    *v33 = 136315138;
    v61 = 0xE000000000000000;
    sub_24A82D854();

    aBlock = 0xD000000000000012;
    v61 = 0x800000024A848640;
    type metadata accessor for FMIPUnknownItem();
    sub_24A695740(&qword_27EF5DD80, type metadata accessor for FMIPUnknownItem);
    v35 = sub_24A82D3B4();
    MEMORY[0x24C21C9E0](v35);

    v36 = sub_24A68761C(aBlock, v61, &v59);

    *(v33 + 4) = v36;
    _os_log_impl(&dword_24A675000, v32, v31, "FMIPUnknownAccessoryDiscoveryController: %s", v33, 0xCu);
    sub_24A6876E8(v34);
    MEMORY[0x24C21E1D0](v34, -1, -1);
    MEMORY[0x24C21E1D0](v33, -1, -1);
  }

  v37 = MEMORY[0x277D84F90];
  if (*(v20 + 16))
  {
    v52 = v23;
    v38 = *(a1 + 24);
    v39 = swift_allocObject();
    *(v39 + 16) = a1;
    *(v39 + 24) = v20;
    v64 = sub_24A7F08E0;
    v65 = v39;
    aBlock = MEMORY[0x277D85DD0];
    v61 = 1107296256;
    v62 = sub_24A699BA0;
    v63 = &unk_285DCC2C0;
    v40 = _Block_copy(&aBlock);

    v41 = v55;
    sub_24A82CE24();
    v42 = v37;
    v59 = v37;
    sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v43 = v57;
    v44 = v54;
    sub_24A82D6B4();
    v23 = v52;
    MEMORY[0x24C21CE90](0, v41, v43, v40);
    _Block_release(v40);
    v45 = v53;
    (*(v53 + 8))(v43, v44);
    (*(v56 + 8))(v41, v58);

    if (*(v23 + 16))
    {
LABEL_17:
      v46 = *(a1 + 24);
      v47 = swift_allocObject();
      *(v47 + 16) = a1;
      *(v47 + 24) = v23;
      v64 = sub_24A7F08E8;
      v65 = v47;
      aBlock = MEMORY[0x277D85DD0];
      v61 = 1107296256;
      v62 = sub_24A699BA0;
      v63 = &unk_285DCC310;
      v48 = _Block_copy(&aBlock);

      v49 = v55;
      sub_24A82CE24();
      v59 = v42;
      sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198]);
      sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
      sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
      v50 = v57;
      sub_24A82D6B4();
      MEMORY[0x24C21CE90](0, v49, v50, v48);
      _Block_release(v48);
      (*(v45 + 8))(v50, v44);
      (*(v56 + 8))(v49, v58);
    }
  }

  else
  {
    v42 = MEMORY[0x277D84F90];

    v45 = v53;
    v44 = v54;
    if (*(v23 + 16))
    {
      goto LABEL_17;
    }
  }
}

uint64_t sub_24A7E8680(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(a1 + 40);

    v5(a2);
    return sub_24A6AFFE8(v5);
  }

  return result;
}

uint64_t sub_24A7E86F4(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = *(a1 + 56);

    v5(a2);
    return sub_24A6AFFE8(v5);
  }

  return result;
}

uint64_t sub_24A7E8768(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A82CDF4();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24A82CE54();
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *a1;
  v13 = *(a1 + 8);
  sub_24A79CF9C(*a1, v13);
  v14 = sub_24A82D504();
  if (qword_27EF5CB80 != -1)
  {
    swift_once();
  }

  v15 = sub_24A82CDC4();
  sub_24A6797D0(v15, qword_27EF78BE8);
  v16 = sub_24A82CD94();
  if (os_log_type_enabled(v16, v14))
  {
    v17 = swift_slowAlloc();
    v28 = v14;
    v18 = v17;
    v19 = swift_slowAlloc();
    v35 = v19;
    aBlock = 0;
    *v18 = 136315138;
    v37 = 0xE000000000000000;
    sub_24A82D854();
    MEMORY[0x24C21C9E0](0xD000000000000039, 0x800000024A848290);
    v33 = v12;
    v34 = v13;
    v20 = FMIPAccessoryError.localizedDescription.getter();
    MEMORY[0x24C21C9E0](v20);

    v21 = sub_24A68761C(aBlock, v37, &v35);

    *(v18 + 4) = v21;
    _os_log_impl(&dword_24A675000, v16, v28, "FMIPUnknownAccessoryDiscoveryController: %s", v18, 0xCu);
    sub_24A6876E8(v19);
    MEMORY[0x24C21E1D0](v19, -1, -1);
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  sub_24A79CFB0(v12, v13);

  v22 = *(v2 + 24);
  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  *(v23 + 24) = v12;
  *(v23 + 32) = v13;
  v40 = sub_24A7E9D58;
  v41 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_24A699BA0;
  v39 = &unk_285DCBBE0;
  v24 = _Block_copy(&aBlock);
  sub_24A79CF9C(v12, v13);

  sub_24A82CE24();
  v33 = MEMORY[0x277D84F90];
  sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v25 = v32;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v11, v7, v24);
  _Block_release(v24);
  (*(v31 + 8))(v7, v25);
  (*(v29 + 8))(v11, v30);
}

uint64_t sub_24A7E8BD4(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 88);
    v9 = a2;
    v10 = a3;

    v7(&v9);
    return sub_24A6AFFE8(v7);
  }

  return result;
}

uint64_t sub_24A7E8C58()
{
  v1 = v0;
  v2 = sub_24A82CDF4();
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A82CE54();
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A82CE84();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_24A82D504();
  if (qword_27EF5CB80 != -1)
  {
    swift_once();
  }

  v16 = sub_24A82CDC4();
  sub_24A6797D0(v16, qword_27EF78BE8);
  v17 = sub_24A82CD94();
  if (os_log_type_enabled(v17, v15))
  {
    v18 = swift_slowAlloc();
    v27 = v2;
    v19 = v18;
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_24A68761C(0xD000000000000039, 0x800000024A84A2E0, aBlock);
    _os_log_impl(&dword_24A675000, v17, v15, "FMIPUnknownAccessoryDiscoveryController: %s", v19, 0xCu);
    sub_24A6876E8(v20);
    MEMORY[0x24C21E1D0](v20, -1, -1);
    v21 = v19;
    v2 = v27;
    MEMORY[0x24C21E1D0](v21, -1, -1);
  }

  v22 = *(v1 + 16);
  *v14 = v22;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10);
  v23 = v22;
  LOBYTE(v22) = sub_24A82CEA4();
  result = (*(v11 + 8))(v14, v10);
  if (v22)
  {
    swift_beginAccess();
    *(v1 + 104) = 0;
    v25 = *(v1 + 24);
    aBlock[4] = sub_24A7E9D50;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DCBB90;
    v26 = _Block_copy(aBlock);

    sub_24A82CE24();
    v31 = MEMORY[0x277D84F90];
    sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v9, v5, v26);
    _Block_release(v26);
    (*(v30 + 8))(v5, v2);
    (*(v28 + 8))(v9, v29);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24A7E90F8(void *a1)
{
  result = swift_beginAccess();
  v3 = a1[8];
  if (v3)
  {
    v4 = a1[9];
    swift_beginAccess();
    v5 = a1[14];
    sub_24A6A7314(v3);

    v3(v6);
    sub_24A6AFFE8(v3);
  }

  return result;
}

id sub_24A7E9194(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D496E8]) initWithPreviousState_];
  v2 = swift_allocObject();
  swift_weakInit();
  v15 = sub_24A7E9F94;
  v16 = v2;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_24A7E9744;
  v14 = &unk_285DCC130;
  v3 = _Block_copy(&v11);

  [v1 setAccessoryDiscoveredCallback_];
  _Block_release(v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v15 = sub_24A7E9F9C;
  v16 = v4;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_24A699BA0;
  v14 = &unk_285DCC158;
  v5 = _Block_copy(&v11);

  [v1 setSessionInvalidatedCallback_];
  _Block_release(v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v15 = sub_24A7E9FA4;
  v16 = v6;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_24A720114;
  v14 = &unk_285DCC180;
  v7 = _Block_copy(&v11);

  [v1 setAccessoryDiscoveryErrorCallback_];
  _Block_release(v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v15 = sub_24A7E9FAC;
  v16 = v8;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_24A699BA0;
  v14 = &unk_285DCC1A8;
  v9 = _Block_copy(&v11);

  [v1 setAccessoryDiscoveryFinishedCallback_];
  _Block_release(v9);
  return v1;
}

uint64_t sub_24A7E947C()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_24A7E9558()
{
  result = qword_27EF5F468;
  if (!qword_27EF5F468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F468);
  }

  return result;
}

uint64_t sub_24A7E95AC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = a1;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_24A7E9FD8;
    *(v6 + 24) = v5;
    aBlock[4] = sub_24A680674;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A6805E4;
    aBlock[3] = &unk_285DCC270;
    v7 = _Block_copy(aBlock);

    dispatch_sync(v3, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_24A7E9744(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_24A679170(0, &qword_27EF5DF78, 0x277D496E0);
  sub_24A7E4818();
  v3 = sub_24A82D3A4();

  v2(v3);
}

uint64_t sub_24A7E97D4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_24A7E9FD0;
    *(v3 + 24) = v2;
    aBlock[4] = sub_24A6806A0;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A6805E4;
    aBlock[3] = &unk_285DCC1F8;
    v4 = _Block_copy(aBlock);

    dispatch_sync(v1, v4);
    _Block_release(v4);
    LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

    if (v1)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_24A7E9938(void *a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    LOBYTE(v5) = 0;
    v2 = a1;
    FMIPAccessoryError.init(underlyingError:discoveryType:)(a1, &v5, &v7);
    v3 = v7;
    v4 = v8;
    v5 = v7;
    v6 = v8;
    sub_24A7E8768(&v5);

    sub_24A79CFB0(v3, v4);
  }
}

void sub_24A7E99D8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 16);

    sub_24A6BBA94(&qword_27EF5F478, &unk_24A83F510);
    sub_24A82D574();
  }
}

uint64_t sub_24A7E9A84@<X0>(BOOL *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v3 = result;
  if (result)
  {
    sub_24A7E8C58();
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_24A7E9D64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_24A7E9D8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_24A7E9DBC()
{
  v1 = *(sub_24A82C8B4() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_24A7E7800(v2, v3, v4);
}

uint64_t sub_24A7E9E64()
{
  v1 = *(v0 + 24);

  if (*(v0 + 32))
  {
    v2 = *(v0 + 40);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A7E9EC0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A7E9F00(uint64_t result, char a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v2 + 24);
    v5 = 0;
    v6 = result;
    v7 = a2 & 1;
    return v3(&v5);
  }

  return result;
}

uint64_t sub_24A7E9F4C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A7E9FE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for FMIPDiscoveredAccessory();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_24A82DCC4();
  FMIPDiscoveredAccessory.hash(into:)();
  v12 = sub_24A82DD24();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v24 = v2;
    v25 = v5;
    v26 = a2;
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_24A7F08F0(*(v10 + 48) + v16 * v14, v9, type metadata accessor for FMIPDiscoveredAccessory);
      v17 = _s8FMIPCore23FMIPDiscoveredAccessoryV2eeoiySbAC_ACtFZ_0(v9, a1);
      sub_24A7F09C0(v9, type metadata accessor for FMIPDiscoveredAccessory);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v18 = 1;
        a2 = v26;
        goto LABEL_10;
      }
    }

    v19 = v24;
    v20 = *v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v19;
    v27 = *v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24A711160();
      v22 = v27;
    }

    a2 = v26;
    sub_24A7F0958(*(v22 + 48) + v16 * v14, v26, type metadata accessor for FMIPDiscoveredAccessory);
    sub_24A7EA448(v14);
    v18 = 0;
    *v19 = v27;
LABEL_10:
    v5 = v25;
  }

  else
  {
    v18 = 1;
  }

  return (*(v6 + 56))(a2, v18, 1, v5);
}

uint64_t sub_24A7EA214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for FMIPUnknownItem();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_24A82DCC4();
  FMIPUnknownItem.hash(into:)(v27);
  v12 = sub_24A82DD24();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v24 = v2;
    v25 = v5;
    v26 = a2;
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_24A7F08F0(*(v10 + 48) + v16 * v14, v9, type metadata accessor for FMIPUnknownItem);
      v17 = _s8FMIPCore15FMIPUnknownItemV2eeoiySbAC_ACtFZ_0(v9, a1);
      sub_24A7F09C0(v9, type metadata accessor for FMIPUnknownItem);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v18 = 1;
        a2 = v26;
        goto LABEL_10;
      }
    }

    v19 = v24;
    v20 = *v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v19;
    v27[0] = *v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24A71136C();
      v22 = v27[0];
    }

    a2 = v26;
    sub_24A7F0958(*(v22 + 48) + v16 * v14, v26, type metadata accessor for FMIPUnknownItem);
    sub_24A7EA8F0(v14);
    v18 = 0;
    *v19 = v27[0];
LABEL_10:
    v5 = v25;
  }

  else
  {
    v18 = 1;
  }

  return (*(v6 + 56))(a2, v18, 1, v5);
}

uint64_t sub_24A7EA448(unint64_t a1)
{
  v45 = type metadata accessor for FMIPHawkeyeProductInformation();
  v3 = *(v45 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v45);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - v8;
  v10 = type metadata accessor for FMIPDiscoveredAccessory();
  v11 = *(*(v10 - 8) + 64);
  result = MEMORY[0x28223BE20](v10);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *v1;
  v17 = *v1 + 56;
  v18 = -1 << *(*v1 + 32);
  v19 = (a1 + 1) & ~v18;
  if (((1 << v19) & *(v17 + 8 * (v19 >> 6))) != 0)
  {
    v47 = v13;
    v48 = v3;
    v20 = ~v18;

    v21 = sub_24A82D6D4();
    if ((*(v17 + 8 * (v19 >> 6)) & (1 << v19)) != 0)
    {
      v22 = *(v47 + 72);
      v40 = (v48 + 48);
      v41 = v22;
      v43 = v17;
      v44 = v16;
      v42 = (v21 + 1) & v20;
      while (1)
      {
        v23 = *(v16 + 48);
        v48 = v22 * v19;
        sub_24A7F08F0(v23 + v22 * v19, v15, type metadata accessor for FMIPDiscoveredAccessory);
        v24 = *(v16 + 40);
        sub_24A82DCC4();
        v25 = *v15;
        sub_24A82D5F4();
        if (v15[3])
        {
          v46 = v15[5];
          v47 = a1;
          v26 = v15[4];
          v27 = v20;
          v28 = v10;
          v29 = v9;
          v30 = v15[1];
          v31 = v15[2];
          sub_24A82DCE4();
          MEMORY[0x24C21D5E0](v30);
          v9 = v29;
          v10 = v28;
          v20 = v27;
          sub_24A82D094();
          a1 = v47;
          sub_24A82D094();
        }

        else
        {
          sub_24A82DCE4();
        }

        sub_24A67E964(v15 + *(v10 + 24), v9, &qword_27EF5D360, &unk_24A836200);
        if ((*v40)(v9, 1, v45) == 1)
        {
          sub_24A82DCE4();
        }

        else
        {
          v32 = v39;
          sub_24A7F0958(v9, v39, type metadata accessor for FMIPHawkeyeProductInformation);
          sub_24A82DCE4();
          FMIPHawkeyeProductInformation.hash(into:)();
          sub_24A7F09C0(v32, type metadata accessor for FMIPHawkeyeProductInformation);
        }

        v17 = v43;
        v16 = v44;
        v33 = sub_24A82DD24();
        sub_24A7F09C0(v15, type metadata accessor for FMIPDiscoveredAccessory);
        v34 = v33 & v20;
        if (a1 >= v42)
        {
          break;
        }

        v22 = v41;
        if (v34 < v42)
        {
          goto LABEL_17;
        }

LABEL_18:
        v35 = v22 * a1;
        if ((v22 * a1) < v48 || *(v16 + 48) + v22 * a1 >= *(v16 + 48) + v48 + v22)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v19;
          if (v35 == v48)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v19;
LABEL_6:
        v19 = (v19 + 1) & v20;
        if (((*(v17 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v22 = v41;
      if (v34 < v42)
      {
        goto LABEL_6;
      }

LABEL_17:
      if (a1 < v34)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }

LABEL_22:

    *(v17 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v17 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v36 = *(v16 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v38;
    ++*(v16 + 36);
  }

  return result;
}
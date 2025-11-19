uint64_t sub_1C4685C88(unsigned __int8 a1, char a2)
{
  v2 = 7173491;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7173491;
  switch(v4)
  {
    case 1:
      v5 = 6780513;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x746E756F63;
      break;
    case 3:
      v5 = 0x756F635F71696E75;
      v3 = 0xEA0000000000746ELL;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v2 = 6780513;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x746E756F63;
      break;
    case 3:
      v2 = 0x756F635F71696E75;
      v6 = 0xEA0000000000746ELL;
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
    v8 = sub_1C43FFF90();
  }

  return v8 & 1;
}

uint64_t sub_1C4685DAC(char a1)
{
  v2 = 0xE600000000000000;
  switch(a1)
  {
    case 1:
      v2 = 0xE700000000000000;
      break;
    case 3:
      v2 = 0xE800000000000000;
      break;
    case 4:
      v2 = 0xE400000000000000;
      break;
    default:
      break;
  }

  sub_1C441022C();
  switch(v5)
  {
    case 1:
      v1 = 0xE700000000000000;
      v4 = 0x72656765746E69;
      break;
    case 2:
      v4 = 0x656C62756F64;
      break;
    case 3:
      v1 = 0xE800000000000000;
      v4 = 0x6E6F697461727564;
      break;
    case 4:
      v1 = 0xE400000000000000;
      v4 = 1702125924;
      break;
    default:
      break;
  }

  if (v3 == v4 && v2 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C43FFF90();
  }

  return v7 & 1;
}

uint64_t sub_1C4685F0C(char a1)
{
  if (a1)
  {
    v1 = 0xEC0000006E6F7372;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  sub_1C442BA28();
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
    v8 = sub_1C43FFF90();
  }

  return v8 & 1;
}

uint64_t sub_1C4685FA0(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 6581861;
  }

  else
  {
    v3 = 0x7472617473;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (a2)
  {
    v5 = 6581861;
  }

  else
  {
    v5 = 0x7472617473;
  }

  if (a2)
  {
    v6 = 0xE300000000000000;
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
    v8 = sub_1C43FFF90();
  }

  return v8 & 1;
}

uint64_t sub_1C4686028(char a1)
{
  if (a1)
  {
    v1 = 0xEF65636E61726165;
  }

  else
  {
    v1 = 0xED00006E6F697461;
  }

  sub_1C442BA28();
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
    v8 = sub_1C43FFF90();
  }

  return v8 & 1;
}

uint64_t sub_1C46860D0()
{
  sub_1C441C1B4();
  switch(v2)
  {
    case 2:
      v0 = 0xED00006C616E6F69;
      break;
    case 3:
      v0 = 0xE900000000000064;
      break;
    default:
      break;
  }

  sub_1C4424FF4();
  switch(v5)
  {
    case 1:
      v4 = 0x676E696F6774756FLL;
      break;
    case 2:
      v4 = 0x7463657269646962;
      v1 = 0xED00006C616E6F69;
      break;
    case 3:
      v4 = 0x656E696665646E75;
      v1 = 0xE900000000000064;
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
    v7 = sub_1C43FFF90();
  }

  return v7 & 1;
}

uint64_t sub_1C4686220()
{
  sub_1C441C1B4();
  switch(v2)
  {
    case 1:
      v0 = 0xEF65636976654468;
      break;
    case 2:
      v0 = 0xE500000000000000;
      break;
    case 3:
      v0 = 0xE600000000000000;
      break;
    case 4:
      v0 = 0xEF79746976697463;
      break;
    case 5:
      sub_1C441B81C();
      v0 = v3 | 0x8000000000000000;
      break;
    case 6:
      sub_1C441E2B4();
      break;
    default:
      break;
  }

  sub_1C4424FF4();
  switch(v6)
  {
    case 1:
      v5 = 0x746F6F7465756C62;
      v1 = 0xEF65636976654468;
      break;
    case 2:
      v1 = 0xE500000000000000;
      v5 = 0x6563616C70;
      break;
    case 3:
      v1 = 0xE600000000000000;
      v5 = 0x6E6F73726570;
      break;
    case 4:
      v5 = 0x416574756D6D6F63;
      v1 = 0xEF79746976697463;
      break;
    case 5:
      sub_1C442DE20();
      v1 = v7 | 0x8000000000000000;
      break;
    case 6:
      sub_1C44149A8();
      v5 = v8 | 6;
      break;
    default:
      break;
  }

  if (v4 == v5 && v0 == v1)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1C43FFF90();
  }

  return v10 & 1;
}

uint64_t sub_1C46863F4()
{
  sub_1C441EB38();
  if (v0)
  {
    v3 = 0x6172676F74736968;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v0)
  {
    v4 = 0xED0000617461446DLL;
  }

  else
  {
    v4 = v2;
  }

  if (v1)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x6172676F74736968;
  }

  if (v1)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0xED0000617461446DLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90();
  }

  return v8 & 1;
}

uint64_t sub_1C4686490(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 25188;
  switch(a1)
  {
    case 1:
      v3 = 0xE500000000000000;
      v4 = 0x656C626174;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v4 = 0x7364726F77;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v4 = 0x73656972657571;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v4 = 1701080941;
      break;
    case 5:
      v3 = 0xE600000000000000;
      v4 = 0x63697274656DLL;
      break;
    case 6:
      v4 = 0x6C437265746C6966;
      v3 = 0xEC00000065737561;
      break;
    case 7:
      v4 = 0x756C6F436E696F6ALL;
      v3 = 0xEA00000000006E6DLL;
      break;
    case 8:
      v4 = 0x6D756C6F4379656BLL;
      v3 = 0xE90000000000006ELL;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 25188;
  switch(a2)
  {
    case 1:
      v5 = 0xE500000000000000;
      v6 = 0x656C626174;
      break;
    case 2:
      v5 = 0xE500000000000000;
      v6 = 0x7364726F77;
      break;
    case 3:
      v5 = 0xE700000000000000;
      v6 = 0x73656972657571;
      break;
    case 4:
      v5 = 0xE400000000000000;
      v6 = 1701080941;
      break;
    case 5:
      v5 = 0xE600000000000000;
      v6 = 0x63697274656DLL;
      break;
    case 6:
      v6 = 0x6C437265746C6966;
      v5 = 0xEC00000065737561;
      break;
    case 7:
      v6 = 0x756C6F436E696F6ALL;
      v5 = 0xEA00000000006E6DLL;
      break;
    case 8:
      v6 = 0x6D756C6F4379656BLL;
      v5 = 0xE90000000000006ELL;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90();
  }

  return v8 & 1;
}

uint64_t sub_1C46866C8(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000079;
  v3 = 0x6144664F656D6974;
  v4 = 0xE900000000000079;
  v5 = a1;
  v6 = 0x6144664F656D6974;
  switch(v5)
  {
    case 1:
      v6 = 0x6144664F74726170;
      break;
    case 2:
      v6 = 0x6954657372616F63;
      v4 = 0xEF796144664F656DLL;
      break;
    case 3:
      v6 = 0x656557664F796164;
      v4 = 0xE90000000000006BLL;
      break;
    case 4:
      v6 = 0x6557664F74726170;
      v4 = 0xEA00000000006B65;
      break;
    case 5:
      v4 = 0xE300000000000000;
      v6 = 6909804;
      break;
    case 6:
      v6 = 0x636F4C6F7263696DLL;
      v7 = 0x6E6F697461;
      goto LABEL_14;
    case 7:
      sub_1C440E008();
      break;
    case 8:
      v6 = 0x6547657372616F63;
      v7 = 0x687361486FLL;
LABEL_14:
      v4 = v7 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 9:
      v6 = 0x6F6547656772616CLL;
      v4 = 0xEC00000068736148;
      break;
    case 10:
      v4 = 0xE400000000000000;
      v6 = 1768319351;
      break;
    case 11:
      v6 = 0x646F4D7375636F66;
      v4 = 0xE900000000000065;
      break;
    case 12:
      v6 = 0x74536E6F69746F6DLL;
      v4 = 0xEB00000000657461;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6144664F74726170;
      break;
    case 2:
      v3 = 0x6954657372616F63;
      v2 = 0xEF796144664F656DLL;
      break;
    case 3:
      v3 = 0x656557664F796164;
      v2 = 0xE90000000000006BLL;
      break;
    case 4:
      v3 = 0x6557664F74726170;
      v2 = 0xEA00000000006B65;
      break;
    case 5:
      v2 = 0xE300000000000000;
      v3 = 6909804;
      break;
    case 6:
      v3 = 0x636F4C6F7263696DLL;
      v8 = 0x6E6F697461;
      goto LABEL_28;
    case 7:
      sub_1C4416008();
      break;
    case 8:
      v3 = 0x6547657372616F63;
      v8 = 0x687361486FLL;
LABEL_28:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 9:
      v3 = 0x6F6547656772616CLL;
      v2 = 0xEC00000068736148;
      break;
    case 10:
      v2 = 0xE400000000000000;
      v3 = 1768319351;
      break;
    case 11:
      v3 = 0x646F4D7375636F66;
      v2 = 0xE900000000000065;
      break;
    case 12:
      v3 = 0x74536E6F69746F6DLL;
      v2 = 0xEB00000000657461;
      break;
    default:
      break;
  }

  if (v6 == v3 && v4 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1C43FED70();
  }

  return v10 & 1;
}

uint64_t sub_1C4686A00(char a1, char a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x7461447472617473;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x65746144646E65;
    }

    else
    {
      v4 = 0x746E65746E6F63;
    }

    v5 = 0xE700000000000000;
  }

  else
  {
    v4 = 0x7461447472617473;
    v5 = 0xE900000000000065;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x65746144646E65;
    }

    else
    {
      v3 = 0x746E65746E6F63;
    }

    v2 = 0xE700000000000000;
  }

  if (v4 == v3 && v5 == v2)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C43FED70();
  }

  return v7 & 1;
}

uint64_t sub_1C4686AF4()
{
  sub_1C43FD394();
  switch(v2)
  {
    case 1:
      v0 = 0xE500000000000000;
      break;
    case 2:
      v0 = 0xE500000000000000;
      break;
    case 4:
      v0 = 0xE800000000000000;
      break;
    case 6:
      v0 = 0xE400000000000000;
      break;
    case 7:
      v0 = 0xE600000000000000;
      break;
    case 8:
      v0 = 0xE600000000000000;
      break;
    case 9:
      v0 = 0xE400000000000000;
      break;
    case 10:
      v0 = 0xEA00000000006572;
      break;
    case 11:
      v0 = 0xED00007972657669;
      break;
    case 12:
      v0 = 0xE800000000000000;
      break;
    default:
      break;
  }

  sub_1C440D22C();
  switch(v5)
  {
    case 1:
      v1 = 0xE500000000000000;
      v4 = 0x6F65646976;
      break;
    case 2:
      v1 = 0xE500000000000000;
      v4 = 0x636973756DLL;
      break;
    case 3:
      v4 = 0x74736163646F70;
      break;
    case 4:
      v1 = 0xE800000000000000;
      v6 = 0x6973776F7262;
      goto LABEL_18;
    case 5:
      sub_1C4440FD8();
      break;
    case 6:
      v1 = 0xE400000000000000;
      v4 = 1818845549;
      break;
    case 7:
      v1 = 0xE600000000000000;
      v4 = 0x676E696D6167;
      break;
    case 8:
      v1 = 0xE600000000000000;
      v4 = 0x6C6169636F73;
      break;
    case 9:
      v1 = 0xE400000000000000;
      v4 = 1936744813;
      break;
    case 10:
      v4 = 0x6168735F65646972;
      v1 = 0xEA00000000006572;
      break;
    case 11:
      v4 = 0x6C65645F646F6F66;
      v1 = 0xED00007972657669;
      break;
    case 12:
      v1 = 0xE800000000000000;
      v6 = 0x6970706F6873;
LABEL_18:
      v4 = v6 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
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
    v8 = sub_1C43FFF90();
  }

  return v8 & 1;
}

uint64_t sub_1C4686D90(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000014;
  v3 = "raph";
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000017;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v4 == 1)
    {
      v6 = "motion_state_unknown";
    }

    else
    {
      v6 = "motion_state_stationary";
    }
  }

  else
  {
    v5 = 0xD000000000000014;
    v6 = "raph";
  }

  if (a2)
  {
    v3 = "motion_state_unknown";
    v2 = a2 == 1 ? 0xD000000000000017 : 0xD000000000000013;
    if (a2 != 1)
    {
      v3 = "motion_state_stationary";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90();
  }

  return v8 & 1;
}

uint64_t sub_1C4686E60()
{
  v0 = 0xEC00000065707954;
  sub_1C440BC08();
  v4 = v3;
  v5 = v2;
  v6 = 0xEC00000065707954;
  switch(v4)
  {
    case 1:
      sub_1C440F44C();
      sub_1C441591C();
      break;
    case 2:
      v5 = sub_1C442FC94();
      v6 = 0xEA00000000006563;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v5 = 0x737265626D656DLL;
      break;
    case 4:
      v6 = 0xE800000000000000;
      v5 = 0x617461646174656DLL;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      sub_1C4412EA0();
      sub_1C440C400();
      break;
    case 2:
      sub_1C4425A2C();
      v0 = 0xEA00000000006563;
      break;
    case 3:
      v0 = 0xE700000000000000;
      v2 = 0x737265626D656DLL;
      break;
    case 4:
      v0 = 0xE800000000000000;
      v2 = 0x617461646174656DLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FED70();
  }

  return v8 & 1;
}

uint64_t sub_1C4686FAC()
{
  sub_1C44320D4();
  switch(v2)
  {
    case 1:
      sub_1C441F674();
      break;
    case 2:
      sub_1C4406970();
      break;
    case 3:
      sub_1C440878C(21);
      break;
    case 4:
      sub_1C440DFF4();
      break;
    case 5:
      v0 = 0xE600000000000000;
      sub_1C440F44C();
      break;
    case 6:
      v0 = 0xE800000000000000;
      sub_1C440F44C();
      break;
    case 7:
      sub_1C43FC144();
      v0 = 0xE900000000000070;
      break;
    case 8:
      sub_1C43FD3B0();
      v0 = 0xEC00000065707954;
      break;
    default:
      break;
  }

  sub_1C440D22C();
  switch(v5)
  {
    case 1:
      sub_1C442C65C();
      break;
    case 2:
      sub_1C4419330();
      break;
    case 3:
      sub_1C44119D0();
      break;
    case 4:
      sub_1C4416F20();
      break;
    case 5:
      v1 = 0xE600000000000000;
      sub_1C4412EA0();
      break;
    case 6:
      v1 = 0xE800000000000000;
      sub_1C4412EA0();
      v4 = v6 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 7:
      sub_1C440A844();
      break;
    case 8:
      sub_1C443F14C();
      v1 = 0xEC00000065707954;
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
    v8 = sub_1C43FFF90();
  }

  return v8 & 1;
}

uint64_t sub_1C4687110()
{
  sub_1C4412EA0();
  v1 = 0xE600000000000000;
  switch(v2)
  {
    case 1:
      v1 = 0xEB00000000737361;
      break;
    case 2:
      v1 = 0xE800000000000000;
      sub_1C4409B6C();
      break;
    case 3:
      v1 = 0xE900000000000065;
      break;
    case 4:
      v1 = 0xE500000000000000;
      break;
    default:
      break;
  }

  sub_1C441022C();
  switch(v5)
  {
    case 1:
      v4 = 0x6C43797469746E65;
      v0 = 0xEB00000000737361;
      break;
    case 2:
      v0 = 0xE800000000000000;
      sub_1C4404DD4();
      v4 = v6 & 0xFFFFFFFFFFFFLL | 0x6574000000000000;
      break;
    case 3:
      v4 = 0x6D614E6567617473;
      v0 = 0xE900000000000065;
      break;
    case 4:
      v0 = 0xE500000000000000;
      v4 = 0x6E656B6F74;
      break;
    default:
      break;
  }

  if (v3 == v4 && v1 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90();
  }

  return v8 & 1;
}

uint64_t sub_1C4687270()
{
  sub_1C4433254();
  switch(v2)
  {
    case 1:
      sub_1C440878C(17);
      break;
    default:
      break;
  }

  sub_1C440D22C();
  switch(v5)
  {
    case 1:
      sub_1C44119D0();
      break;
    case 2:
      v6 = 0x644965636166;
      goto LABEL_7;
    case 3:
      v6 = 0x6E6F73726570;
LABEL_7:
      v4 = v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
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
    v8 = sub_1C43FFF90();
  }

  return v8 & 1;
}

uint64_t sub_1C4687398(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_1C447EFD0();
  a3();
  sub_1C445E7C4();
  v6 = v6 && v3 == v5;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C43FFF90();
  }

  return v7 & 1;
}

uint64_t sub_1C468743C()
{
  sub_1C44320D4();
  switch(v2)
  {
    case 1:
      sub_1C441F674();
      break;
    case 2:
      sub_1C4406970();
      break;
    case 3:
      v0 = 0x80000001C4F86600;
      break;
    case 4:
      sub_1C440DFF4();
      break;
    case 5:
      sub_1C440F44C();
      break;
    case 6:
      sub_1C442FC94();
      v0 = 0xEA00000000006563;
      break;
    case 7:
      sub_1C4402214();
      break;
    case 8:
      sub_1C43FC144();
      v0 = 0xE900000000000070;
      break;
    default:
      break;
  }

  sub_1C440D22C();
  switch(v6)
  {
    case 1:
      sub_1C442C65C();
      break;
    case 2:
      sub_1C4419330();
      break;
    case 3:
      v1 = (v5 - 32) | 0x8000000000000000;
      v4 = 0xD000000000000015;
      break;
    case 4:
      sub_1C4416F20();
      break;
    case 5:
      sub_1C4412EA0();
      v4 = v7 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    case 6:
      sub_1C4425A2C();
      v1 = 0xEA00000000006563;
      break;
    case 7:
      sub_1C44119D0();
      break;
    case 8:
      sub_1C440A844();
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C43FFF90();
  }

  return v9 & 1;
}

uint64_t sub_1C46875B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a5 && a2 == a6)
  {
    return sub_1C4415EFC();
  }

  else
  {
    return sub_1C441C8D4();
  }
}

uint64_t sub_1C46875D0(unsigned __int8 a1, char a2)
{
  v2 = 0xED00006D65747379;
  v3 = 0x53656761726F7473;
  v4 = a1;
  v5 = 0x53656761726F7473;
  v6 = 0xED00006D65747379;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = sub_1C43FD3B0();
      break;
    case 2:
      v5 = 0x7267694D77656976;
      v6 = 0xED00006E6F697461;
      break;
    case 3:
      v5 = 0x43656761726F7473;
      v6 = 0xEE0070756E61656CLL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      sub_1C443F14C();
      break;
    case 2:
      v3 = 0x7267694D77656976;
      v2 = 0xED00006E6F697461;
      break;
    case 3:
      v3 = 0x43656761726F7473;
      v2 = 0xEE0070756E61656CLL;
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
    v8 = sub_1C43FED70();
  }

  return v8 & 1;
}

uint64_t sub_1C4687758(char a1)
{
  v2 = 0xE800000000000000;
  switch(a1)
  {
    case 1:
      v2 = 0x80000001C4F86740;
      break;
    case 2:
      v2 = 0xEC000000746E6576;
      break;
    case 3:
      v3 = "entityIdentifier";
      goto LABEL_6;
    case 4:
      v3 = "lookaheadDuration";
LABEL_6:
      v2 = v3 | 0x8000000000000000;
      break;
    case 5:
      v2 = 0xEF657079546E6F69;
      break;
    case 6:
      v2 = 0xEB00000000656741;
      break;
    default:
      break;
  }

  sub_1C4424FF4();
  switch(v8)
  {
    case 1:
      v1 = (v7 - 32) | 0x8000000000000000;
      v5 = 0xD000000000000011;
      break;
    case 2:
      v5 = 0x456E6F6973736573;
      v1 = 0xEC000000746E6576;
      break;
    case 3:
      sub_1C442DE20();
      goto LABEL_14;
    case 4:
      v5 = 0xD000000000000016;
      v9 = v6 - 32;
LABEL_14:
      v1 = v9 | 0x8000000000000000;
      break;
    case 5:
      v5 = 0x7463617265746E69;
      v1 = 0xEF657079546E6F69;
      break;
    case 6:
      v5 = 0x646576726573626FLL;
      v1 = 0xEB00000000656741;
      break;
    default:
      break;
  }

  if (v4 == v5 && v2 == v1)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C43FFF90();
  }

  return v11 & 1;
}

uint64_t sub_1C4687968()
{
  sub_1C441EB38();
  if (v0)
  {
    v3 = 0x6E69646465626D65;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (v0)
  {
    v4 = 0xEF64726F63655267;
  }

  else
  {
    v4 = v2;
  }

  if (v1)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x6E69646465626D65;
  }

  if (v1)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0xEF64726F63655267;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90();
  }

  return v8 & 1;
}

uint64_t sub_1C4687A4C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return sub_1C4415EFC();
  }

  else
  {
    return sub_1C441C8D4();
  }
}

uint64_t sub_1C4687A74()
{
  sub_1C4440FD8();
  sub_1C4433254();
  switch(v2)
  {
    case 1:
      goto LABEL_3;
    case 2:
      sub_1C4409B6C();
LABEL_3:
      v0 = 0xE900000000000064;
      break;
    case 3:
      sub_1C440878C(24);
      break;
    default:
      break;
  }

  sub_1C440D22C();
  switch(v5)
  {
    case 1:
      v4 = 0x656C6C65636E6163;
      goto LABEL_8;
    case 2:
      sub_1C4404DD4();
      v4 = v6 & 0xFFFFFFFFFFFFLL | 0x6574000000000000;
LABEL_8:
      v1 = 0xE900000000000064;
      break;
    case 3:
      sub_1C44119D0();
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
    v8 = sub_1C43FFF90();
  }

  return v8 & 1;
}

uint64_t sub_1C4687B88()
{
  sub_1C441EB38();
  if (v0)
  {
    v3 = 0x7461636964657270;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (v0)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = v2;
  }

  if (v1)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x7461636964657270;
  }

  if (v1)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90();
  }

  return v8 & 1;
}

uint64_t sub_1C4687C1C(unsigned __int8 a1, char a2)
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
    v8 = sub_1C43FFF90();
  }

  return v8 & 1;
}

uint64_t sub_1C4687D00()
{
  sub_1C442BA28();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1C4F02938();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1C4687DAC(char a1, char a2)
{
  v2 = 0x64657461647075;
  if (a1)
  {
    sub_1C444FD08();
    if (v3)
    {
      v5 = 0x676E697461647075;
    }

    else
    {
      v5 = 0x647055736465656ELL;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xEB00000000657461;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
    v5 = 0x64657461647075;
  }

  if (a2)
  {
    sub_1C444FD08();
    if (v7)
    {
      v2 = 0x676E697461647075;
    }

    else
    {
      v2 = 0x647055736465656ELL;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xEB00000000657461;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C43FFF90();
  }

  return v11 & 1;
}

uint64_t sub_1C4687EA4(char a1)
{
  v2 = 0xE600000000000000;
  switch(a1)
  {
    case 1:
      v2 = 0x80000001C4F87960;
      break;
    case 2:
      v2 = 0x80000001C4F87980;
      break;
    case 3:
      v2 = 0x80000001C4F879A0;
      break;
    case 4:
      break;
    case 5:
      v2 = 0xE300000000000000;
      break;
    default:
      v2 = 0x80000001C4F87940;
      break;
  }

  sub_1C441022C();
  switch(v10)
  {
    case 1:
      v1 = (v8 - 32) | 0x8000000000000000;
      v4 = v5 + 4;
      break;
    case 2:
      v1 = (v7 - 32) | 0x8000000000000000;
      v4 = v5 + 9;
      break;
    case 3:
      v1 = (v6 - 32) | 0x8000000000000000;
      v4 = v5 + 7;
      break;
    case 4:
      break;
    case 5:
      v1 = 0xE300000000000000;
      v4 = 7368801;
      break;
    default:
      v1 = (v9 - 32) | 0x8000000000000000;
      v4 = 0xD000000000000014;
      break;
  }

  if (v3 == v4 && v2 == v1)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1C43FFF90();
  }

  return v12 & 1;
}

uint64_t sub_1C468801C(char a1, char a2)
{
  v2 = 0x656475746974616CLL;
  if (a1)
  {
    sub_1C4434F00();
    if (v4 == 1)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    if (v4 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = (v3 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0xE800000000000000;
    v8 = 0x656475746974616CLL;
  }

  if (a2)
  {
    sub_1C4434F00();
    v15 = (v14 - 32) | 0x8000000000000000;
    if (v10 == 1)
    {
      v2 = v11;
    }

    else
    {
      v2 = v13;
    }

    if (v10 == 1)
    {
      v16 = v12;
    }

    else
    {
      v16 = v15;
    }
  }

  else
  {
    v16 = 0xE800000000000000;
  }

  if (v8 == v2 && v9 == v16)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_1C43FFF90();
  }

  return v18 & 1;
}

uint64_t sub_1C46880DC()
{
  sub_1C4433254();
  switch(v2)
  {
    case 1:
      v0 = 0xEE00687061724765;
      break;
    case 2:
      v3 = 1702125924;
      goto LABEL_7;
    case 3:
      v0 = 0xE500000000000000;
      break;
    case 4:
      v0 = 0xE400000000000000;
      break;
    case 5:
      sub_1C441B81C();
      v0 = v4 | 0x8000000000000000;
      break;
    case 6:
      sub_1C441E2B4();
      break;
    case 7:
      v3 = 1852795252;
LABEL_7:
      v0 = v3 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  sub_1C440D22C();
  switch(v7)
  {
    case 1:
      v6 = 0x6764656C776F6E6BLL;
      v1 = 0xEE00687061724765;
      break;
    case 2:
      v6 = 0x7055737961776C61;
      v8 = 1702125924;
      goto LABEL_16;
    case 3:
      v1 = 0xE500000000000000;
      v6 = 0x656D6F6962;
      break;
    case 4:
      v1 = 0xE400000000000000;
      v6 = 2003134838;
      break;
    case 5:
      sub_1C442DE20();
      v1 = v9 | 0x8000000000000000;
      break;
    case 6:
      sub_1C44149A8();
      v6 = v10 | 4;
      break;
    case 7:
      v6 = 0x6163696669746F6ELL;
      v8 = 1852795252;
LABEL_16:
      v1 = v8 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v6 && v0 == v1)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1C43FFF90();
  }

  return v12 & 1;
}

uint64_t sub_1C46882F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_1C447EFD0();
  (a3)(a2);
  sub_1C445E7C4();
  v7 = v7 && v3 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90();
  }

  return v8 & 1;
}

uint64_t sub_1C468836C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x617247746E657665;
  }

  else
  {
    v3 = 0x7247656C62617473;
  }

  if (v2)
  {
    v4 = 0xEB00000000687061;
  }

  else
  {
    v4 = 0xEA00000000006870;
  }

  if (a2)
  {
    v5 = 0x617247746E657665;
  }

  else
  {
    v5 = 0x7247656C62617473;
  }

  if (a2)
  {
    v6 = 0xEA00000000006870;
  }

  else
  {
    v6 = 0xEB00000000687061;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90();
  }

  return v8 & 1;
}

uint64_t sub_1C468840C(unsigned __int8 a1, char a2)
{
  v2 = 0xEF6E776F6E6B6E55;
  v3 = 0x6D726F6674616C70;
  v4 = a1;
  v5 = 0x6D726F6674616C70;
  v6 = 0xEF6E776F6E6B6E55;
  switch(v4)
  {
    case 1:
      v6 = 0xEC00000064615069;
      goto LABEL_11;
    case 2:
      v7 = 0x656E6F685069;
      goto LABEL_10;
    case 3:
      v5 = 0xD000000000000012;
      v6 = 0x80000001C4F87CB0;
      break;
    case 4:
      v6 = 0x80000001C4F87CD0;
      v5 = 0xD000000000000013;
      break;
    case 5:
      v6 = 0xEA00000000005654;
      goto LABEL_11;
    case 6:
      v6 = 0xED00006863746157;
      goto LABEL_11;
    case 7:
      v6 = 0xEF646F50656D6F48;
      goto LABEL_11;
    case 8:
      v7 = 0x6E6F69736956;
LABEL_10:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
LABEL_11:
      v5 = 0x6D726F6674616C70;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xEC00000064615069;
      break;
    case 2:
      v8 = 0x656E6F685069;
      goto LABEL_21;
    case 3:
      sub_1C442DE20();
      v2 = v9 | 0x8000000000000000;
      break;
    case 4:
      v2 = 0x80000001C4F87CD0;
      v3 = 0xD000000000000013;
      break;
    case 5:
      v2 = 0xEA00000000005654;
      break;
    case 6:
      v2 = 0xED00006863746157;
      break;
    case 7:
      v2 = 0xEF646F50656D6F48;
      break;
    case 8:
      v8 = 0x6E6F69736956;
LABEL_21:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C43FED70();
  }

  return v11 & 1;
}

uint64_t sub_1C4688600()
{
  sub_1C4433254();
  switch(v2)
  {
    case 1:
    case 2:
      break;
    case 3:
      goto LABEL_5;
    case 4:
      sub_1C4402214();
      break;
    case 5:
      sub_1C4409B6C();
LABEL_5:
      v0 = 0xE900000000000064;
      break;
    default:
      sub_1C441E2B4();
      break;
  }

  sub_1C440D22C();
  switch(v5)
  {
    case 1:
      break;
    case 2:
      v4 = 0x64657261656C63;
      break;
    case 3:
      v7 = 0x61636E757274;
      goto LABEL_12;
    case 4:
      sub_1C44119D0();
      break;
    case 5:
      sub_1C4404DD4();
LABEL_12:
      v4 = v7 & 0xFFFFFFFFFFFFLL | 0x6574000000000000;
      v1 = 0xE900000000000064;
      break;
    default:
      sub_1C44149A8();
      v4 = v6 | 4;
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C43FFF90();
  }

  return v9 & 1;
}

uint64_t sub_1C468875C(unsigned __int8 a1, char a2)
{
  v2 = 0xED00006465726975;
  v3 = 0x7165527261656C63;
  v4 = a1;
  v5 = "fullRebuildRequired";
  v6 = 0x7165527261656C63;
  v7 = 0xED00006465726975;
  switch(v4)
  {
    case 1:
      v7 = 0x80000001C4F87C40;
      v6 = 0xD000000000000013;
      break;
    case 2:
      break;
    case 3:
      v6 = 0x676E616843736168;
      v7 = 0xEA00000000007365;
      break;
    case 4:
      v6 = 0x65676E6168436F6ELL;
      v7 = 0xE900000000000073;
      break;
    default:
      v6 = sub_1C441B81C();
      v7 = v8 | 0x8000000000000000;
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = (v5 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000013;
      break;
    case 2:
      break;
    case 3:
      v3 = 0x676E616843736168;
      v2 = 0xEA00000000007365;
      break;
    case 4:
      v3 = 0x65676E6168436F6ELL;
      v2 = 0xE900000000000073;
      break;
    default:
      sub_1C442DE20();
      v2 = v9 | 0x8000000000000000;
      break;
  }

  if (v6 == v3 && v7 == v2)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C43FED70();
  }

  return v11 & 1;
}

uint64_t sub_1C46888E4(char a1)
{
  if (a1)
  {
    v1 = 0xED00007463656A62;
  }

  else
  {
    v1 = 0xEB00000000646567;
  }

  sub_1C442BA28();
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
    v8 = sub_1C43FFF90();
  }

  return v8 & 1;
}

uint64_t sub_1C4688988()
{
  sub_1C47E1854();
  sub_1C447EFD0();
  sub_1C47E1854();
  sub_1C445E7C4();
  v2 = v2 && v0 == v1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1C43FFF90();
  }

  return v3 & 1;
}

Swift::Double __swiftcall ConfidenceService.confidence(source:signalType:)(Swift::String source, Swift::String_optional signalType)
{
  v3 = v2;
  object = signalType.value._object;
  countAndFlagsBits = signalType.value._countAndFlagsBits;
  v6 = source._object;
  v7 = source._countAndFlagsBits;
  v8 = *(*(sub_1C456902C(&qword_1EC0BACC0, &qword_1C4F17070) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v70.i8[-v10];
  v12 = sub_1C456902C(&qword_1EC0BACC8, &unk_1C4F17078);
  v13 = sub_1C43FCDF8(v12);
  v78 = v14;
  v79 = v13;
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v77 = &v70.i8[-v18];
  v19 = sub_1C4F00978();
  v20 = sub_1C43FCDF8(v19);
  v74 = v21;
  v75 = v20;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v20);
  v73 = &v70.i8[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v70.i8[-v26];
  v28 = sub_1C4EFFB98();
  v29 = sub_1C43FCDF8(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBCC4();
  v36 = v35 - v34;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v81 = v7;
  v76 = countAndFlagsBits;
  sub_1C4EFFBA8();
  v37 = OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_confidenceCache;
  v38 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_confidenceCache);

  sub_1C4F00218();

  if (v85)
  {
    v71 = v31;
    v72 = v28;
    v80 = v3;
    v39 = v3 + OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_config;
    v40 = *(v39 + *(type metadata accessor for Configuration() + 20));
    if (qword_1EDDFEC70 != -1)
    {
      sub_1C43FFFAC();
      v70 = v69;
      swift_once();
      v40 = v70;
    }

    sub_1C43FC158(xmmword_1EDDFEC78, v40);
    if (v41)
    {
      if (*(v80 + OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_globalKnowledgeStore))
      {
        v42 = v37;
        v43 = *(v80 + OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_globalKnowledgeStore);

        *&v44 = COERCE_DOUBLE(sub_1C482E5F0(v81, v6, v76, object));
        v46 = v45;

        v47 = v72;
        if (v46)
        {
          v48 = v80;
          v49 = *(v80 + 16);
        }

        else
        {
          v49 = *&v44;
          v48 = v80;
        }

LABEL_24:
        v66 = v71;
        v67 = *(v48 + v42);
        v82 = v49;

        sub_1C4F00228();

        (*(v66 + 8))(v36, v47);
        return v49;
      }

      sub_1C4F00148();
      v58 = sub_1C4F00968();
      v59 = sub_1C4F01CD8();
      v60 = os_log_type_enabled(v58, v59);
      v61 = v72;
      if (v60)
      {
        *swift_slowAlloc() = 0;
        sub_1C440BAE8(&dword_1C43F8000, v62, v63, "ConfidenceService: GlobalKnowledgeStore unavailable");
        sub_1C43FBE2C();
      }

      (*(v74 + 8))(v27, v75);
      (*(v71 + 8))(v36, v61);
      return *(v80 + 16);
    }

    else
    {
      v50 = OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_confidenceTrie;
      v48 = v80;
      swift_beginAccess();
      sub_1C4689548(v48 + v50, v11);
      v51 = v79;
      if (sub_1C44157D4(v11, 1, v79) != 1)
      {
        (*(v78 + 32))(v77, v11, v51);
        sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
        v42 = v37;
        v57 = swift_allocObject();
        if (object)
        {
          *(v57 + 16) = xmmword_1C4F0CE60;
          *(v57 + 32) = v81;
          *(v57 + 40) = v6;
          *(v57 + 48) = v76;
          *(v57 + 56) = object;
        }

        else
        {
          *(v57 + 16) = xmmword_1C4F0D130;
          *(v57 + 32) = v81;
          *(v57 + 40) = v6;
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v64 = v77;
        sub_1C4EFC7B8();

        (*(v78 + 8))(v64, v51);
        if (v83)
        {
          v65 = (v48 + 16);
        }

        else
        {
          v65 = &v82;
        }

        v49 = *v65;
        v47 = v72;
        goto LABEL_24;
      }

      sub_1C4423A0C(v11, &qword_1EC0BACC0, &qword_1C4F17070);
      v52 = v73;
      sub_1C4F00148();
      v53 = sub_1C4F00968();
      v54 = sub_1C4F01CD8();
      if (os_log_type_enabled(v53, v54))
      {
        *swift_slowAlloc() = 0;
        sub_1C440BAE8(&dword_1C43F8000, v55, v56, "ConfidenceService: ConfidenceTrie unavailable");
        sub_1C43FBE2C();
      }

      (*(v74 + 8))(v52, v75);
      (*(v71 + 8))(v36, v72);
      return *(v48 + 16);
    }
  }

  else
  {
    v49 = v84;
    (*(v31 + 8))(v36, v28);
  }

  return v49;
}

uint64_t sub_1C4689020(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C4F00978();
  v5 = sub_1C43FCDF8(v4);
  v36[1] = v6;
  v37.i64[0] = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v9 = *(*(sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v36 - v11;
  v13 = *(*(sub_1C456902C(&qword_1EC0BACC0, &qword_1C4F17070) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v36 - v15;
  v17 = type metadata accessor for Configuration();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  *(v1 + 16) = 0x3FE999999999999ALL;
  *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_globalKnowledgeStore) = 0;
  v22 = OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_confidenceTrie;
  v23 = sub_1C456902C(&qword_1EC0BACC8, &unk_1C4F17078);
  sub_1C440BAA8(v1 + v22, 1, 1, v23);
  sub_1C44098F0(a1, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_config);
  v24 = sub_1C456902C(&qword_1EC0BACD0, &qword_1C4F170D8);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_confidenceCache) = sub_1C4F00248();
  type metadata accessor for GlobalKnowledgeStore(0);
  sub_1C44098F0(a1, v21);
  v27 = sub_1C48300AC(v21);
  v28 = OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_globalKnowledgeStore;
  v29 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_globalKnowledgeStore);
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_globalKnowledgeStore) = v27;

  v30 = *(a1 + *(v17 + 20));
  if (qword_1EDDFEC70 != -1)
  {
    sub_1C43FFFAC();
    v37 = v35;
    swift_once();
    v30 = v37;
  }

  sub_1C43FC158(xmmword_1EDDFEC78, v30);
  if ((v31 & 1) != 0 || !*(v2 + v28))
  {
    sub_1C4467948(a1);
  }

  else
  {
    v32 = type metadata accessor for Source();
    sub_1C440BAA8(v12, 1, 1, v32);

    sub_1C482BA74(v16);

    sub_1C4467948(a1);
    sub_1C4423A0C(v12, &unk_1EC0C0760, &qword_1C4F170D0);
    v33 = OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_confidenceTrie;
    swift_beginAccess();
    sub_1C4689778(v16, v2 + v33);
    swift_endAccess();
  }

  return v2;
}

uint64_t ConfidenceService.deinit()
{
  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_config);
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_globalKnowledgeStore);

  sub_1C4423A0C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_confidenceTrie, &qword_1EC0BACC0, &qword_1C4F17070);
  v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_confidenceCache);

  return v0;
}

uint64_t ConfidenceService.__deallocating_deinit()
{
  ConfidenceService.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4689520@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = a3 & result;
  a5[1] = a4 & a2;
  return result;
}

uint64_t sub_1C4689548(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BACC0, &qword_1C4F17070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ConfidenceService()
{
  result = qword_1EDDF5300;
  if (!qword_1EDDF5300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C468960C()
{
  v0 = type metadata accessor for Configuration();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1C4689714();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C4689714()
{
  if (!qword_1EDDFA250)
  {
    sub_1C4572308(&qword_1EC0BACC8, &unk_1C4F17078);
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDFA250);
    }
  }
}

uint64_t sub_1C4689778(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BACC0, &qword_1C4F17070);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4689844()
{
  sub_1C4425000();
  switch(v0)
  {
    case 5:
      sub_1C4404DE4();
      sub_1C43FC174();
      break;
    case 6:
      sub_1C43FC174();
      sub_1C440CB64();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468994C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 6:
      sub_1C4410238();
      break;
    case 7:
      sub_1C4416008();
      break;
    case 8:
      sub_1C440C414();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C4689AEC()
{
  sub_1C44149B8();
  sub_1C4F01298();
}

uint64_t sub_1C4689B80(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
      sub_1C43FC174();
      sub_1C4404DE4();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C4689D4C()
{
  sub_1C4404208();
  switch(v0)
  {
    case 2:
    case 3:
      sub_1C43FC174();
      break;
    case 4:
      sub_1C4426AA0();
      sub_1C43FC174();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C4689E1C()
{
  sub_1C4425000();
  switch(v0)
  {
    case 1:
    case 3:
      sub_1C43FC174();
      break;
    case 4:
      sub_1C4416008();
      break;
    case 5:
      sub_1C440C414();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C4689F28()
{
  sub_1C440BC1C();
  sub_1C4F01298();
}

uint64_t sub_1C4689FD8()
{
  sub_1C442FCA8();
  sub_1C441E2C4();
  switch(v0)
  {
    case 2:
      sub_1C4404208();
      break;
    case 3:
      sub_1C441F690();
      break;
    case 4:
      sub_1C43FC174();
      sub_1C4426AA0();
      break;
    case 5:
      sub_1C4425A40();
      break;
    case 6:
      sub_1C4410AB0();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468A08C()
{
  sub_1C4F01298();
}

uint64_t sub_1C468A14C()
{
  sub_1C440879C();
  switch(v0)
  {
    case 1:
      sub_1C4433260();
      break;
    case 2:
      sub_1C441F690();
      break;
    case 3:
      sub_1C43FC174();
      sub_1C4426AA0();
      break;
    case 4:
      sub_1C4425A40();
      break;
    case 6:
      sub_1C440E034();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468A20C()
{
  sub_1C4F01298();
}

uint64_t sub_1C468A27C()
{
  sub_1C440BC1C();
  switch(v0)
  {
    case 1:
      sub_1C4415930();
      break;
    case 3:
      sub_1C440D238();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468A324()
{
  sub_1C441C1C0();
  sub_1C4F01298();
}

uint64_t sub_1C468A470()
{
  sub_1C4F01298();
}

uint64_t sub_1C468A4D0()
{
  sub_1C4F01298();
}

uint64_t sub_1C468A574()
{
  sub_1C441C1C0();
  sub_1C4F01298();
}

uint64_t sub_1C468A644()
{
  sub_1C4F01298();
}

uint64_t sub_1C468A6B4()
{
  sub_1C44149B8();
  sub_1C4F01298();
}

uint64_t sub_1C468A728()
{
  sub_1C4F01298();
}

uint64_t sub_1C468A860(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_1C4404208();
  }

  sub_1C4F01298();
}

uint64_t sub_1C468A8EC()
{
  sub_1C442FCA8();
  sub_1C441B82C();
  sub_1C4F01298();
}

uint64_t sub_1C468AA4C()
{
  sub_1C4F01298();
}

uint64_t sub_1C468AAD0()
{
  sub_1C4415930();
  switch(v0)
  {
    case 1:
      sub_1C440D238();
      break;
    case 2:
      sub_1C4410AB0();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468AB90()
{
  sub_1C440879C();
  switch(v0)
  {
    case 1:
      sub_1C4433260();
      break;
    case 2:
      sub_1C441F690();
      break;
    case 3:
      sub_1C43FC174();
      sub_1C4426AA0();
      break;
    case 4:
      sub_1C4425A40();
      break;
    case 5:
    case 6:
      sub_1C440D238();
      break;
    case 7:
      sub_1C440E034();
      break;
    case 8:
      sub_1C443FB80();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468AC4C()
{
  sub_1C441C1C0();
  sub_1C440D238();
  switch(v0)
  {
    case 2:
      sub_1C4409B7C();
      break;
    case 3:
      sub_1C4404208();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468AD08()
{
  sub_1C4425000();
  sub_1C4F01298();
}

uint64_t sub_1C468ADF0()
{
  sub_1C442FCA8();
  sub_1C441E2C4();
  switch(v0)
  {
    case 1:
      sub_1C43FC174();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468AEA0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_1C442BA34();
}

uint64_t sub_1C468AF08()
{
  sub_1C440879C();
  switch(v0)
  {
    case 1:
      sub_1C4433260();
      break;
    case 2:
      sub_1C441F690();
      break;
    case 3:
      sub_1C43FC174();
      break;
    case 4:
      sub_1C4425A40();
      break;
    case 5:
      sub_1C440D238();
      break;
    case 6:
      sub_1C4410AB0();
      break;
    case 7:
      sub_1C4404DE4();
      sub_1C43FC174();
      break;
    case 8:
      sub_1C440E034();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468B054()
{
  sub_1C4425000();
  sub_1C4F01298();
}

uint64_t sub_1C468B114()
{
  sub_1C4425000();
  switch(v0)
  {
    case 1:
    case 3:
    case 4:
      sub_1C43FC174();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468B22C()
{
  sub_1C4F01298();
}

uint64_t sub_1C468B2B0()
{
  sub_1C4F01298();
}

uint64_t sub_1C468B310()
{
  sub_1C44149B8();
  sub_1C4F01298();
}

uint64_t sub_1C468B3CC()
{
  sub_1C442FCA8();
  switch(v0)
  {
    case 2:
      sub_1C4409B7C();
      break;
    case 3:
      sub_1C43FC174();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468B478()
{
  sub_1C4F01298();
}

uint64_t sub_1C468B514()
{
  sub_1C4F01298();
}

uint64_t sub_1C468B59C()
{
  sub_1C4F01298();
}

uint64_t sub_1C468B630()
{
  sub_1C442FCA8();
  sub_1C441B82C();
  sub_1C4F01298();
}

uint64_t sub_1C468B6CC()
{
  sub_1C4F01298();
}

uint64_t sub_1C468B74C()
{
  sub_1C441C1C0();
  switch(v0)
  {
    case 4:
    case 5:
      break;
    default:
      sub_1C43FC174();
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468B834()
{
  sub_1C4F01298();
}

uint64_t sub_1C468B8E0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_1C442BA34();
}

uint64_t sub_1C468B924()
{
  sub_1C442FCA8();
  switch(v0)
  {
    case 5:
      sub_1C4404DE4();
      sub_1C43FC174();
      break;
    case 6:
      sub_1C43FC174();
      sub_1C440CB64();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468BA44()
{
  sub_1C442FCA8();
  switch(v0)
  {
    case 1:
    case 2:
    case 3:
      break;
    case 4:
      sub_1C4404DE4();
      sub_1C43FC174();
      break;
    case 5:
      sub_1C4409B7C();
      break;
    default:
      sub_1C43FC174();
      sub_1C440CB64();
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468BB14(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1C43FC174();
      sub_1C440CB64();
      break;
    case 2:
    case 3:
    case 4:
      break;
    default:
      sub_1C4404DE4();
      sub_1C43FC174();
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468BBF4()
{
  sub_1C4F01298();
}

uint64_t sub_1C468BC78(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
    case 4:
      sub_1C43FC174();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468BD90()
{
  sub_1C47E1854();
  sub_1C442BA34();
}

uint64_t sub_1C468BDD0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = a3 | result;
  a5[1] = a4 | a2;
  return result;
}

uint64_t sub_1C468BDE0()
{
  v1 = *(v0 + *(type metadata accessor for Configuration() + 20));
  if (qword_1EDDFEC70 != -1)
  {
    sub_1C43FFFAC();
    v5 = v4;
    swift_once();
    v1 = v5;
  }

  sub_1C43FC158(xmmword_1EDDFEC78, v1);
  if (v2)
  {
    return 200;
  }

  else
  {
    return 2000;
  }
}

uint64_t Configuration.baseURL.getter()
{
  sub_1C44059B8();
  v2 = sub_1C4EF98F8();
  v3 = *(*(v2 - 8) + 16);

  return v3(v0, v1, v2);
}

__n128 Configuration.options.getter()
{
  sub_1C44059B8();
  result = *(v1 + *(type metadata accessor for Configuration() + 20));
  *v0 = result;
  return result;
}

uint64_t Configuration.init(baseURL:options:overrideFeatureFlagOptions:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = sub_1C4EF98F8();
  v10 = *(v9 - 8);
  (*(v10 + 16))(a4, a1, v9);
  if (a3)
  {
    result = sub_1C4F024A8();
    __break(1u);
  }

  else
  {
    static Features.optionsForEnabledFeatures.getter(&v13);
    (*(v10 + 8))(a1, v9);
    v11 = sub_1C442DE2C();
    return sub_1C44320F0(v11);
  }

  return result;
}

BOOL static Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1C4EF98B8() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Configuration() + 20);
  v6 = *(a1 + v4);
  v5 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v9 = *v7;
  v8 = v7[1];
  return v6 == v9 && v5 == v8;
}

uint64_t Configuration.hash(into:)()
{
  sub_1C4EF98F8();
  sub_1C440A864();
  sub_1C468D25C(v1, v2);
  sub_1C4F00FE8();
  v3 = (v0 + *(type metadata accessor for Configuration() + 20));
  v4 = v3[1];
  MEMORY[0x1C69417F0](*v3);
  return MEMORY[0x1C69417F0](v4);
}

uint64_t Configuration.hashValue.getter()
{
  sub_1C4F02AF8();
  sub_1C4EF98F8();
  sub_1C440A864();
  sub_1C468D25C(v1, v2);
  sub_1C4F00FE8();
  v3 = (v0 + *(type metadata accessor for Configuration() + 20));
  v4 = v3[1];
  MEMORY[0x1C69417F0](*v3);
  MEMORY[0x1C69417F0](v4);
  return sub_1C4F02B68();
}

uint64_t sub_1C468C1BC(uint64_t a1, uint64_t a2)
{
  sub_1C4F02AF8();
  sub_1C4EF98F8();
  sub_1C468D25C(&qword_1EDDFFA00, MEMORY[0x1E6968FB0]);
  sub_1C4F00FE8();
  v4 = (v2 + *(a2 + 20));
  v5 = v4[1];
  MEMORY[0x1C69417F0](*v4);
  MEMORY[0x1C69417F0](v5);
  return sub_1C4F02B68();
}

uint64_t static Configuration.intelligenceplatformd.getter()
{
  sub_1C44059B8();
  v0 = sub_1C4EF98F8();
  v1 = sub_1C442C678(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C440E01C();
  if (qword_1EDDFEC70 != -1)
  {
    sub_1C43FFFAC();
    swift_once();
  }

  v13 = xmmword_1EDDFEC78;
  if (qword_1EDDFFA78 != -1)
  {
    sub_1C4416F34();
  }

  v14 = xmmword_1EDDFFA80;
  if (qword_1EDDFEBA0 != -1)
  {
    swift_once();
  }

  v15 = xmmword_1EDDFEBA8;
  if (qword_1EDDFCFF8 != -1)
  {
    swift_once();
  }

  v16 = xmmword_1EDDFD000;
  if (qword_1EDDFFA40 != -1)
  {
    sub_1C4402E14();
  }

  v17 = xmmword_1EDDFFA48;
  if (qword_1EDDFEBB8 != -1)
  {
    swift_once();
  }

  v18 = xmmword_1EDDFEBC0;
  if (qword_1EDDFEC48 != -1)
  {
    sub_1C441C8DC();
  }

  sub_1C4412EB0();
  v19 = xmmword_1EDDFEC50;
  do
  {
    sub_1C44119E0(v4);
    v4 = v5 + 16;
  }

  while (v4 != 112);
  sub_1C4F001A8();
  v6 = sub_1C4406994();
  v7(v6);
  static Features.optionsForEnabledFeatures.getter(&v12);
  v8 = sub_1C440F45C();
  v9(v8);
  v10 = sub_1C442DE2C();
  return sub_1C44320F0(v10);
}

uint64_t static Configuration.biomed.getter()
{
  sub_1C44059B8();
  v0 = sub_1C4EF98F8();
  v1 = sub_1C442C678(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C440E01C();
  if (qword_1EDDFEC70 != -1)
  {
    sub_1C43FFFAC();
    swift_once();
  }

  v13 = xmmword_1EDDFEC78;
  if (qword_1EDDF0C88 != -1)
  {
    swift_once();
  }

  v14 = xmmword_1EDDF0C90[0];
  if (qword_1EDDFEC10 != -1)
  {
    sub_1C43FD3C4();
  }

  sub_1C4412EB0();
  v15 = xmmword_1EDDFEC18;
  do
  {
    sub_1C44119E0(v4);
    v4 = v5 + 16;
  }

  while (v4 != 48);
  sub_1C4F001A8();
  v6 = sub_1C4406994();
  v7(v6);
  static Features.optionsForEnabledFeatures.getter(&v12);
  v8 = sub_1C440F45C();
  v9(v8);
  v10 = sub_1C442DE2C();
  return sub_1C44320F0(v10);
}

uint64_t static Configuration.intelligencePlatformComputeServiceMemoryReduction.getter()
{
  sub_1C44059B8();
  v0 = sub_1C4EF98F8();
  v1 = sub_1C442C678(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C440E01C();
  if (qword_1EDDFA610 != -1)
  {
    sub_1C4434F24();
  }

  v13 = xmmword_1EDDFA618;
  if (qword_1EDDFEC60 != -1)
  {
    sub_1C43FC180();
  }

  v14 = xmmword_1EDDFFAE0;
  if (qword_1EDDFEC28 != -1)
  {
    swift_once();
  }

  v15 = xmmword_1EDDFEC30;
  if (qword_1EDDFEC48 != -1)
  {
    sub_1C441C8DC();
  }

  v16 = xmmword_1EDDFEC50;
  if (qword_1EDDFEC10 != -1)
  {
    sub_1C43FD3C4();
  }

  sub_1C4412EB0();
  v17 = xmmword_1EDDFEC18;
  do
  {
    sub_1C44119E0(v4);
    v4 = v5 + 16;
  }

  while (v4 != 80);
  sub_1C4F001A8();
  v6 = sub_1C4406994();
  v7(v6);
  static Features.optionsForEnabledFeatures.getter(&v12);
  v8 = sub_1C440F45C();
  v9(v8);
  v10 = sub_1C442DE2C();
  return sub_1C44320F0(v10);
}

uint64_t static Configuration.knowledgeconstructiond.getter()
{
  sub_1C44059B8();
  v0 = sub_1C4EF98F8();
  v1 = sub_1C442C678(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C440E01C();
  if (qword_1EDDFFA78 != -1)
  {
    sub_1C4416F34();
  }

  v20[0] = xmmword_1EDDFFA80;
  if (qword_1EDDFFA40 != -1)
  {
    sub_1C4402E14();
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v20[1] = xmmword_1EDDFFA48;
  do
  {
    v8 = v6;
    v9 = &v20[v7];
    v11 = *v9;
    v10 = v9[1];
    if ((v11 & ~v4) != 0 || (v10 & v5) != v10)
    {
      v4 |= v11;
      v5 |= v10;
    }

    v6 = 1;
    v7 = 1;
  }

  while ((v8 & 1) == 0);
  sub_1C4F001A8();
  v13 = sub_1C4406994();
  v14(v13);
  static Features.optionsForEnabledFeatures.getter(&v19);
  v15 = sub_1C440F45C();
  v16(v15);
  v17 = type metadata accessor for Configuration();
  return sub_1C44320F0(v17);
}

uint64_t static Configuration.iptool.getter()
{
  sub_1C44059B8();
  v0 = sub_1C4EF98F8();
  v1 = sub_1C442C678(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C440E01C();
  sub_1C4F001A8();
  v4 = sub_1C4406994();
  v5(v4);
  static Features.optionsForEnabledFeatures.getter(&v10);
  v6 = sub_1C440F45C();
  v7(v6);
  v8 = type metadata accessor for Configuration();
  return sub_1C44320F0(v8);
}

uint64_t static Configuration.noOperation.getter()
{
  sub_1C44059B8();
  v0 = sub_1C4EF98F8();
  v1 = sub_1C442C678(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C440E01C();
  if (qword_1EDDFEC88 != -1)
  {
    swift_once();
  }

  sub_1C4F001A8();
  v4 = sub_1C4406994();
  v5(v4);
  static Features.optionsForEnabledFeatures.getter(&v10);
  v6 = sub_1C440F45C();
  v7(v6);
  v8 = type metadata accessor for Configuration();
  return sub_1C44320F0(v8);
}

BOOL Configuration.isFlagEnabled(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = sub_1C4409678(a1, v2);

  return sub_1C468D0D8(v4, v1, v2, v3);
}

unint64_t Configuration.description.getter()
{
  sub_1C4F02248();

  sub_1C4EF98F8();
  sub_1C440A864();
  sub_1C468D25C(v1, v2);
  v3 = sub_1C4F02858();
  MEMORY[0x1C6940010](v3);

  MEMORY[0x1C6940010](3826464, 0xE300000000000000);
  v6 = *(v0 + *(type metadata accessor for Configuration() + 20));
  v4 = Options.description.getter();
  MEMORY[0x1C6940010](v4);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0xD000000000000011;
}

BOOL sub_1C468D0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  v11 = (a2 + *(type metadata accessor for Configuration() + 20));
  v12 = *v11;
  v13 = v11[1];
  (*(a4 + 8))(v16, a3, a4);
  v14 = (v16[0] & ~v12 | v16[1] & ~v13) == 0;
  (*(v7 + 8))(v10, a3);
  return v14;
}

uint64_t sub_1C468D25C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ContactHandleBlockingFunction.init(predicates:relationshipPredicates:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1C468D2EC(void *a1, uint64_t a2, uint64_t *a3)
{
  v65 = a3;
  v62 = a1;
  v66 = sub_1C456902C(&qword_1EC0BACF0, &unk_1C4F23190);
  v4 = *(*(v66 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v66);
  v61 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v64 = &v55 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v55 - v10;
  v11 = a2 + 64;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 64);
  v63 = v9 + 8;
  v15 = (v12 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v16 = 0;
  v56 = a2;
  while (v14)
  {
LABEL_8:
    v18 = __clz(__rbit64(v14)) | (v16 << 6);
    v19 = *(a2 + 48);
    v20 = sub_1C4EFF8A8();
    v21 = *(v20 - 8);
    v22 = v21;
    v23 = v19 + *(v21 + 72) * v18;
    v24 = *(v21 + 16);
    v25 = v68;
    v67 = v20;
    v24(v68, v23);
    v26 = (*(a2 + 56) + 16 * v18);
    v27 = *v26;
    v28 = v26[1];
    v29 = v66;
    v30 = (v25 + *(v66 + 48));
    *v30 = v27;
    v30[1] = v28;
    v31 = v25;
    v32 = v64;
    sub_1C468FA10(v31, v64);
    v33 = *(v63 + *(v29 + 48));
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v34 = *v65;
    if (*(*v65 + 16) && (sub_1C457AC78(), (v36 & 1) != 0))
    {
      v60 = *(*(v34 + 56) + v35);
      v57 = *(v22 + 8);
      v57(v32, v67);
      v37 = v61;
      sub_1C468FA10(v68, v61);
      v38 = (v37 + *(v66 + 48));
      v40 = *v38;
      v39 = v38[1];
      v41 = v62;
      swift_isUniquelyReferenced_nonNull_native();
      v69 = v41;
      v58 = v40;
      v59 = v39;
      v42 = sub_1C445FAA8(v40, v39);
      if (__OFADD__(v41[2], (v43 & 1) == 0))
      {
        goto LABEL_25;
      }

      v44 = v42;
      LODWORD(v62) = v43;
      sub_1C456902C(&qword_1EC0BACF8, &qword_1C4F17410);
      if (sub_1C4F02458())
      {
        v45 = v59;
        v46 = sub_1C445FAA8(v58, v59);
        v48 = v62;
        if ((v62 & 1) != (v47 & 1))
        {
          goto LABEL_27;
        }

        v44 = v46;
      }

      else
      {
        v45 = v59;
        v48 = v62;
      }

      v49 = v69;
      v62 = v69;
      if (v48)
      {
        *(v69[7] + v44) = v60;
      }

      else
      {
        v69[(v44 >> 6) + 8] |= 1 << v44;
        v50 = (v49[6] + 16 * v44);
        *v50 = v58;
        v50[1] = v45;
        *(v49[7] + v44) = v60;
        v51 = v49[2];
        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (v52)
        {
          goto LABEL_26;
        }

        v49[2] = v53;
      }

      v57(v61, v67);
      a2 = v56;
    }

    else
    {
      (*(v22 + 8))(v32, v67);
    }

    v14 &= v14 - 1;
    sub_1C4420C3C(v68, &qword_1EC0BACF0, &unk_1C4F23190);
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      return v62;
    }

    v14 = *(v11 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C468D728(uint64_t a1, void *a2, void *a3)
{
  v70 = a3;
  v73 = a2;
  v76 = sub_1C4EFF8A8();
  v4 = *(v76 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4EFEEF8();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v69 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v83 = &v65 - v12;
  v13 = 0;
  v77 = (v14 + 8);
  v74 = *(a1 + 16);
  v71 = (v4 + 16);
  v72 = result;
  v66 = (v4 + 8);
  v67 = v4;
  v68 = a1;
  while (v74 != v13)
  {
    v15 = type metadata accessor for GraphTriple(0);
    v16 = a1 + ((*(*(v15 - 1) + 80) + 32) & ~*(*(v15 - 1) + 80));
    v17 = *(*(v15 - 1) + 72);
    v78 = v13;
    v18 = v16 + v17 * v13;
    v19 = v15[7];
    sub_1C4EFE808();
    sub_1C468FA80(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v81 == v79 && v82 == v80)
    {
      v21 = 1;
    }

    else
    {
      v21 = sub_1C4F02938();
    }

    v22 = *v77;
    (*v77)(v83, v7);
    if (v21)
    {
      v23 = v15[6];
      v24 = (v18 + v15[8]);
      v25 = *v24;
      v26 = v24[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v27 = v73;
      v28 = *v73;
      swift_isUniquelyReferenced_nonNull_native();
      v29 = *v27;
      v81 = v29;
      sub_1C457AC78();
      if (__OFADD__(v29[2], (v31 & 1) == 0))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        result = sub_1C4F029F8();
        __break(1u);
        return result;
      }

      v32 = v30;
      v33 = v31;
      sub_1C456902C(&qword_1EC0BA710, &unk_1C4F17420);
      if (sub_1C4F02458())
      {
        sub_1C457AC78();
        v7 = v72;
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_45;
        }

        v32 = v34;
      }

      else
      {
        v7 = v72;
      }

      v56 = v81;
      if (v33)
      {
        v57 = (v81[7] + 16 * v32);
        v58 = v57[1];
        *v57 = v25;
        v57[1] = v26;
      }

      else
      {
        v81[(v32 >> 6) + 8] |= 1 << v32;
        result = (*(v67 + 16))(v56[6] + *(v67 + 72) * v32, v18 + v23, v76);
        v59 = (v56[7] + 16 * v32);
        *v59 = v25;
        v59[1] = v26;
        v60 = v56[2];
        v61 = __OFADD__(v60, 1);
        v62 = v60 + 1;
        if (v61)
        {
          goto LABEL_43;
        }

        v56[2] = v62;
      }

      *v73 = v56;
      a1 = v68;
    }

    else
    {
      v36 = v69;
      sub_1C4EFE878();
      v37 = v36;
      sub_1C4F01578();
      sub_1C4F01578();
      if (v81 == v79 && v82 == v80)
      {

        v22(v36, v7);
      }

      else
      {
        v39 = sub_1C4F02938();

        result = (v22)(v37, v7);
        if ((v39 & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      v40 = *v71;
      (*v71)(v75, v18 + v15[6], v76);
      v41 = (v18 + v15[8]);
      v43 = *v41;
      v42 = v41[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v44 = sub_1C468DD94();
      if (v44 == 11)
      {
        v45 = 10;
      }

      else
      {
        v45 = v44;
      }

      v46 = v70;
      v47 = *v70;
      swift_isUniquelyReferenced_nonNull_native();
      v48 = *v46;
      v81 = v48;
      sub_1C457AC78();
      if (__OFADD__(v48[2], (v50 & 1) == 0))
      {
        goto LABEL_42;
      }

      v51 = v49;
      v52 = v50;
      sub_1C456902C(&qword_1EC0BAD00, &qword_1C4F17418);
      if (sub_1C4F02458())
      {
        sub_1C457AC78();
        if ((v52 & 1) != (v54 & 1))
        {
          goto LABEL_45;
        }

        v51 = v53;
      }

      v55 = v81;
      if (v52)
      {
        *(v81[7] + v51) = v45;
      }

      else
      {
        v81[(v51 >> 6) + 8] |= 1 << v51;
        v40((v55[6] + *(v67 + 72) * v51), v75, v76);
        *(v55[7] + v51) = v45;
        v63 = v55[2];
        v61 = __OFADD__(v63, 1);
        v64 = v63 + 1;
        if (v61)
        {
          goto LABEL_44;
        }

        v55[2] = v64;
      }

      *v70 = v55;
      result = (*v66)(v75, v76);
      v7 = v72;
    }

LABEL_39:
    v13 = v78 + 1;
  }

  return result;
}

uint64_t sub_1C468DD94()
{
  v0 = sub_1C4F025D8();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C468DDE0(char a1)
{
  result = 0x746E65726170;
  switch(a1)
  {
    case 1:
      result = 0x646C696863;
      break;
    case 2:
      result = 0x726170646E617267;
      break;
    case 3:
      result = 0x696863646E617267;
      break;
    case 4:
      result = 0x676E696C626973;
      break;
    case 5:
      result = 0x646E65697266;
      break;
    case 6:
      result = 0x6573756F7073;
      break;
    case 7:
      v3 = 0x656E74726170;
      goto LABEL_8;
    case 8:
      result = 0x6E61747369737361;
      break;
    case 9:
      v3 = 0x6567616E616DLL;
LABEL_8:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
      break;
    case 10:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C468DF20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C468DD94();
  *a2 = result;
  return result;
}

uint64_t sub_1C468DF50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C468DDE0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C468DF8C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore25ContactRelationshipSignal____lazy_storage___featureNames) = 0;
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  *(v3 + 40) = *(a1 + 24);
  sub_1C463F300(a2, v3 + OBJC_IVAR____TtC24IntelligencePlatformCore25ContactRelationshipSignal_config);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore25ContactRelationshipSignal_store) = a3;
  return v3;
}

uint64_t sub_1C468DFF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore25ContactRelationshipSignal____lazy_storage___featureNames);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore25ContactRelationshipSignal____lazy_storage___featureNames);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v43 = OBJC_IVAR____TtC24IntelligencePlatformCore25ContactRelationshipSignal____lazy_storage___featureNames;
    v46 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v3 = 0;
    v4 = v46;
    sub_1C440F46C();
    sub_1C4416F54();
    sub_1C4402E34();
    sub_1C44087BC();
    sub_1C43FD3E4();
    sub_1C44119FC();
    do
    {
      v15 = 0xE600000000000000;
      v16 = 0x746E65726170;
      switch(byte_1F43D8240[v3 + 32])
      {
        case 1:
          v15 = 0xE500000000000000;
          v16 = v8;
          break;
        case 2:
          v16 = v10;
          v15 = v9;
          break;
        case 3:
          v15 = 0xEA0000000000646CLL;
          v16 = v11;
          break;
        case 4:
          v15 = 0xE700000000000000;
          v16 = v12;
          break;
        case 5:
          v16 = v13;
          break;
        case 6:
          v16 = v14;
          break;
        case 7:
          v15 = 0xE700000000000000;
          v16 = v5;
          break;
        case 8:
          v15 = 0xE900000000000074;
          v16 = v6;
          break;
        case 9:
          v15 = 0xE700000000000000;
          v16 = v7;
          break;
        case 0xA:
          v15 = 0xE500000000000000;
          v16 = 0x726568746FLL;
          break;
        default:
          break;
      }

      v47 = v4;
      v18 = v4[2];
      v17 = v4[3];
      if (v18 >= v17 >> 1)
      {
        sub_1C43FCFE8(v17);
        v21 = v20;
        sub_1C44CD9C0();
        sub_1C44119FC();
        sub_1C43FD3E4();
        sub_1C44087BC();
        sub_1C4402E34();
        sub_1C4416F54();
        sub_1C440F46C();
        v9 = v21;
        v8 = 0x646C696863;
        v4 = v47;
      }

      ++v3;
      v4[2] = v18 + 1;
      v19 = &v4[2 * v18];
      v19[4] = v16;
      v19[5] = v15;
    }

    while (v3 != 11);
    v50 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v22 = v18 + 1;
    v23 = v4 + 5;
    do
    {
      v24 = *(v23 - 1);
      v25 = *v23;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F02248();

      sub_1C4412EC8();
      v48 = v26;
      sub_1C4410ACC();
      v49 = v27;
      sub_1C4415EA8();
      v28 = sub_1C4F01FD8();
      MEMORY[0x1C6940010](v28);

      v30 = *(v50 + 16);
      v29 = *(v50 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1C43FCFE8(v29);
        sub_1C44CD9C0();
      }

      *(v50 + 16) = v30 + 1;
      v31 = v50 + 16 * v30;
      *(v31 + 32) = v48;
      *(v31 + 40) = v49;
      v23 += 2;
      --v22;
    }

    while (v22);

    sub_1C4499940(v50, v32, v33, v34, v35, v36, v37, v38, v42, v43, v0, v24, v25, v48, v49, v50, v51, v52, v53, v54, v55, v56);
    v1 = v39;
    v40 = *(v45 + v44);
    *(v45 + v44) = v39;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return v1;
}

uint64_t sub_1C468E340()
{
  v201 = type metadata accessor for GraphTriple(0);
  v2 = sub_1C43FCDF8(v201);
  v180 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v200 = v7 - v6;
  v185 = sub_1C4EFF8A8();
  v8 = sub_1C43FCDF8(v185);
  v202 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  sub_1C43FCE30(v13 - v12);
  v14 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1C43FCE30(&v169 - v16);
  v184 = sub_1C4EFDE88();
  v17 = sub_1C43FCDF8(v184);
  v192 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FCE30(&v169 - v25);
  v199 = sub_1C4EFD548();
  v26 = sub_1C43FCDF8(v199);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  v33 = v32 - v31;
  v187 = sub_1C4EFDE98();
  v34 = sub_1C43FCDF8(v187);
  v195 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBCC4();
  sub_1C43FCE30(v39 - v38);
  v40 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v43 = &v169 - v42;
  v44 = sub_1C4EFF0C8();
  v45 = sub_1C43FCDF8(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBCC4();
  v52 = v51 - v50;
  v186 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore25ContactRelationshipSignal_store);
  sub_1C486DFC0();
  sub_1C4868198();

  v194 = v44;
  if (sub_1C44157D4(v43, 1, v44) == 1)
  {
    return sub_1C4420C3C(v43, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  v178 = v1;
  v179 = v0;
  v183 = v47;
  v54 = *(v47 + 32);
  v182 = v52;
  v54(v52, v43, v194);
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v55 = *(sub_1C4EFEEF8() - 8);
  v56 = *(v55 + 72);
  v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v58 = swift_allocObject();
  v193 = xmmword_1C4F0D130;
  *(v58 + 16) = xmmword_1C4F0D130;
  sub_1C4EFE638();
  sub_1C4D504A4();
  v174 = v59;
  v171 = sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  sub_1C442C690(inited);
  sub_1C4EFD318();
  v61 = sub_1C4EFD2F8();
  v63 = v62;
  (*(v28 + 8))(v33, v199);
  inited[2].n128_u64[0] = v61;
  inited[2].n128_u64[1] = v63;
  sub_1C448DE08(inited);
  v199 = v64;
  v65 = swift_allocObject();
  sub_1C442C690(v65);
  sub_1C4EFEBB8();
  sub_1C4D504A4();
  v67 = v66;
  v68 = *MEMORY[0x1E69A95C0];
  v69 = v192;
  v71 = v192 + 104;
  v70 = *(v192 + 104);
  v72 = v184;
  (v70)(v198, *MEMORY[0x1E69A95C0], v184);
  v73 = v188;
  sub_1C4432100();
  v70();
  sub_1C440D248(v210);
  sub_1C4432100();
  v70();
  sub_1C4432100();
  v70();
  v74 = v190;
  v177 = v68;
  sub_1C4432100();
  v176 = v71;
  v175 = v70;
  v70();
  v167 = v74;
  v168 = v67;
  v75 = v196;
  sub_1C4EFDCD8();

  v76 = *(v69 + 8);
  v76(v74, v72);
  v76(v75, v72);
  v76(v57, v72);
  v76(v73, v72);
  v174 = v76;
  v76(v198, v72);
  sub_1C4EFF8F8();
  v77 = sub_1C440D248(&v211);
  v173 = v78;
  sub_1C440BAA8(v77, 1, 1, v78);
  v79 = v197;
  v80 = sub_1C498DB80();
  sub_1C4420C3C(v57, &qword_1EC0BAA00, &unk_1C4F17400);
  v81 = *(v195 + 8);
  v195 += 8;
  v172 = v81;
  v81(v79, v187);
  v82 = v80[2];
  v83 = v69 + 8;
  v84 = v196;
  v170 = v80;
  if (v82)
  {
    v192 = v83;
    v205 = MEMORY[0x1E69E7CC0];
    sub_1C459D120();
    v85 = v205;
    v86 = v80 + ((*(v180 + 80) + 32) & ~*(v180 + 80));
    v199 = *(v180 + 72);
    v87 = (v202 + 2);
    v88 = v185;
    v89 = v181;
    do
    {
      v90 = v200;
      sub_1C449EE28(v86, v200, type metadata accessor for GraphTriple);
      (*v87)(v89, v90 + *(v201 + 24), v88);
      sub_1C449F17C(v90, type metadata accessor for GraphTriple);
      v205 = v85;
      v92 = *(v85 + 16);
      v91 = *(v85 + 24);
      if (v92 >= v91 >> 1)
      {
        sub_1C43FCFE8(v91);
        sub_1C459D120();
        v85 = v205;
      }

      *(v85 + 16) = v92 + 1;
      (v202[4])(v85 + ((*(v202 + 80) + 32) & ~*(v202 + 80)) + v202[9] * v92, v89, v88);
      v86 += v199;
      --v82;
    }

    while (v82);
    v93 = v194;
    v72 = v184;
    v84 = v196;
  }

  else
  {
    v93 = v194;
  }

  sub_1C459740C();
  v192 = v94;
  sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
  v95 = v183;
  v96 = *(v183 + 72);
  v97 = (*(v183 + 80) + 32) & ~*(v183 + 80);
  v98 = swift_allocObject();
  v99 = sub_1C442C690(v98);
  (*(v95 + 16))(v100 + v97, v182, v93, v99);
  sub_1C4D51ABC();
  v202 = v101;
  sub_1C440A87C();
  v102 = v175;
  v175();
  sub_1C440D248(v209);
  sub_1C440A87C();
  v102();
  v103 = v189;
  sub_1C440A87C();
  v102();
  sub_1C440A87C();
  v102();
  v104 = v190;
  sub_1C440A87C();
  v102();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v167 = v104;
  v168 = 0;
  v105 = v198;
  sub_1C4EFDCD8();

  v106 = v104;
  v107 = v174;
  v174(v106, v72);
  v107(v84, v72);
  v107(v103, v72);
  v107(v95, v72);
  v107(v105, v72);
  v108 = v191;
  sub_1C440BAA8(v191, 1, 1, v173);
  sub_1C440D248(&v213);
  v109 = sub_1C498DB80();
  sub_1C4420C3C(v108, &qword_1EC0BAA00, &unk_1C4F17400);
  v172(v95, v187);
  sub_1C468FA80(&qword_1EDDFE808, MEMORY[0x1E69A99E8]);
  v110 = MEMORY[0x1E69E7CC0];
  v212 = sub_1C4F00F28();
  v208 = sub_1C4F00F28();
  v111 = v178;
  sub_1C468D728(v109, &v212, &v208);
  v112 = v212;
  v113 = sub_1C4F00F28();
  v195 = v112;
  v114 = sub_1C468D2EC(v113, v112, &v208);
  v191 = v111;
  v115 = *(v114 + 16);
  if (v115)
  {
    v190 = v109;
    v207 = v110;
    sub_1C459D768(0, v115, 0);
    v116 = v207;
    v117 = sub_1C4703354(v114);
    LODWORD(v110) = v118;
    v120 = v119;
    v198 = v114 + 64;
    v197 = objc_opt_self();
    v121 = *(v179 + OBJC_IVAR____TtC24IntelligencePlatformCore25ContactRelationshipSignal_config + 8);
    v196 = *(v179 + OBJC_IVAR____TtC24IntelligencePlatformCore25ContactRelationshipSignal_config);
    v202 = v121;
    while ((v117 & 0x8000000000000000) == 0 && v117 < 1 << *(v114 + 32))
    {
      if (((*(v198 + ((v117 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v117) & 1) == 0)
      {
        goto LABEL_40;
      }

      if (*(v114 + 36) != v110)
      {
        goto LABEL_41;
      }

      LODWORD(v200) = v120;
      v201 = v116;
      v122 = *(v114 + 56);
      v123 = (*(v114 + 48) + 16 * v117);
      v124 = v123[1];
      v199 = *v123;
      v125 = *(v122 + v117);
      v205 = 0;
      v206 = 0xE000000000000000;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F02248();

      sub_1C4412EC8();
      v205 = v126;
      sub_1C4410ACC();
      v206 = v127;
      v128 = 0xE600000000000000;
      v129 = 0x746E65726170;
      switch(v125)
      {
        case 1:
          v128 = 0xE500000000000000;
          v129 = 0x646C696863;
          break;
        case 2:
          v129 = 0x726170646E617267;
          v128 = 0xEB00000000746E65;
          break;
        case 3:
          v128 = 0xEA0000000000646CLL;
          v129 = 0x696863646E617267;
          break;
        case 4:
          v128 = 0xE700000000000000;
          v129 = 0x676E696C626973;
          break;
        case 5:
          v129 = 0x646E65697266;
          break;
        case 6:
          v129 = 0x6573756F7073;
          break;
        case 7:
          v128 = 0xE700000000000000;
          v130 = 0x656E74726170;
          goto LABEL_23;
        case 8:
          v128 = 0xE900000000000074;
          v129 = 0x6E61747369737361;
          break;
        case 9:
          v128 = 0xE700000000000000;
          v130 = 0x6567616E616DLL;
LABEL_23:
          v129 = v130 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 10:
          v128 = 0xE500000000000000;
          v129 = 0x726568746FLL;
          break;
        default:
          break;
      }

      v203 = v129;
      v204 = v128;
      sub_1C4415EA8();
      v131 = sub_1C4F01FD8();
      v133 = v132;

      MEMORY[0x1C6940010](v131, v133);

      v134 = v205;
      v135 = v206;
      objc_allocWithZone(MEMORY[0x1E69A9EA8]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v136 = sub_1C4673B1C(v196, v202, v134, v135, v199, v124);
      v137 = [v197 featureValueWithInt64_];

      v116 = v201;
      v207 = v201;
      v139 = *(v201 + 16);
      v138 = *(v201 + 24);
      if (v139 >= v138 >> 1)
      {
        v143 = sub_1C43FCFE8(v138);
        sub_1C459D768(v143, v139 + 1, 1);
        v116 = v207;
      }

      *(v116 + 16) = v139 + 1;
      v140 = v116 + 16 * v139;
      *(v140 + 32) = v136;
      *(v140 + 40) = v137;
      v117 = sub_1C468F990(v117, v110, v200 & 1, v114);
      v110 = v141;
      v120 = v142;
      if (!--v115)
      {

        sub_1C440951C(v117, v110, v120 & 1);
        v144 = v116;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
    goto LABEL_36;
  }

  v144 = MEMORY[0x1E69E7CC0];
LABEL_33:
  v117 = v179;
  v146 = v179[2];
  v145 = v179[3];
  v148 = v179[4];
  v147 = v179[5];
  v149 = v179[6];
  v150 = swift_initStackObject();
  v202 = &v169;
  sub_1C442C690(v150);
  *(v151 + 32) = v146;
  *(v151 + 40) = v145;
  v152 = *(v149 + 16);
  *(&v169 - 6) = MEMORY[0x1EEE9AC00](v151);
  *(&v169 - 5) = v148;
  *(&v169 - 4) = v147;
  *(&v169 - 3) = v149;
  v167 = v144;
  swift_bridgeObjectRetain_n();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v153 = v191;
  sub_1C4418704(sub_1C4673BE8, (&v169 - 8), v154, v155, v156, v157, v158, v159, v169, v170);
  if (v153)
  {
    (*(v183 + 8))(v182, v194);

    swift_setDeallocating();
    sub_1C44DEE40();
  }

  swift_setDeallocating();
  sub_1C44DEE40();

  if (qword_1EDDFECD0 != -1)
  {
    goto LABEL_42;
  }

LABEL_36:
  v160 = sub_1C4F00978();
  sub_1C442B738(v160, qword_1EDE2DF70);

  v161 = sub_1C4F00968();
  v162 = sub_1C4F01CB8();

  v163 = os_log_type_enabled(v161, v162);
  v164 = v183;
  if (v163)
  {
    v165 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    v205 = v166;
    *v165 = 136315138;
    *(v165 + 4) = sub_1C441D828(*(v117 + OBJC_IVAR____TtC24IntelligencePlatformCore25ContactRelationshipSignal_config), *(v117 + OBJC_IVAR____TtC24IntelligencePlatformCore25ContactRelationshipSignal_config + 8), &v205);
    _os_log_impl(&dword_1C43F8000, v161, v162, "SignalView %s: wrote features", v165, 0xCu);
    sub_1C440962C(v166);
    MEMORY[0x1C6942830](v166, -1, -1);
    MEMORY[0x1C6942830](v165, -1, -1);
  }

  (*(v164 + 8))(v182, v194);
}

void *sub_1C468F6CC()
{
  v1 = v0[3];
  v3 = v0[5];
  v2 = v0[6];

  sub_1C449F17C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore25ContactRelationshipSignal_config, _s10ViewConfigVMa);
  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore25ContactRelationshipSignal_store);

  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore25ContactRelationshipSignal____lazy_storage___featureNames);

  return v0;
}

uint64_t sub_1C468F754()
{
  sub_1C468F6CC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ContactRelationshipSignal()
{
  result = qword_1EC0BACE0;
  if (!qword_1EC0BACE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C468F800()
{
  result = _s10ViewConfigVMa(319);
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

uint64_t sub_1C468F8B4()
{
  sub_1C468E340();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C468F990(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    result = sub_1C4F020F8();
    v5 = *(a4 + 36);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C468FA10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BACF0, &unk_1C4F23190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C468FA80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for ContactRelationshipSignal.ContactRelationshipType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactRelationshipSignal.ContactRelationshipType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C468FC30()
{
  result = qword_1EC0BAD08;
  if (!qword_1EC0BAD08)
  {
    sub_1C4572308(&qword_1EC0BAD10, qword_1C4F17448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BAD08);
  }

  return result;
}

unint64_t sub_1C468FC98()
{
  result = qword_1EC0BAD18;
  if (!qword_1EC0BAD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BAD18);
  }

  return result;
}

uint64_t sub_1C468FCEC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C4F00DD8();
  v3 = sub_1C43FCDF8(v2);
  v91 = v4;
  v92 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FD2D8();
  v89 = v7;
  sub_1C43FBE44();
  v8 = sub_1C4F00DC8();
  v9 = sub_1C43FCDF8(v8);
  v93 = v10;
  v94 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  v88 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  v90 = v82 - v15;
  sub_1C43FBE44();
  v98 = sub_1C4F01188();
  v16 = sub_1C43FCDF8(v98);
  v96 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2D8();
  v95 = v20;
  sub_1C43FBE44();
  v21 = sub_1C4EFD548();
  v22 = sub_1C43FCDF8(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBFDC();
  v86 = v27;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v82 - v29;
  if (qword_1EDDFED28 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Source();
  v32 = sub_1C442B738(v31, &unk_1EDDFD088);
  v33 = sub_1C44CB92C();
  v35 = v34;
  v36 = *(v31 + 24);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v37 = sub_1C4F00978();
  v38 = sub_1C442B738(v37, qword_1EDE2DE10);
  v39 = *(v24 + 16);
  v97 = v32;
  v84 = v24 + 16;
  v85 = v36;
  v83 = v39;
  v39(v30, (v32 + v36), v21);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v82[1] = v38;
  v40 = sub_1C4F00968();
  v41 = sub_1C4F01CB8();

  v42 = os_log_type_enabled(v40, v41);
  v87 = v21;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v82[0] = v33;
    v44 = v43;
    v99 = swift_slowAlloc();
    *v44 = 136381187;
    *(v44 + 4) = sub_1C441D828(v82[0], v35, &v99);
    *(v44 + 12) = 2080;
    sub_1C4693DE4(&qword_1EDDFA220, MEMORY[0x1E69A92C8]);
    v45 = sub_1C4F02858();
    v46 = v21;
    v47 = a1;
    v49 = v48;
    (*(v24 + 8))(v30, v46);
    v50 = sub_1C441D828(v45, v49, &v99);
    a1 = v47;

    *(v44 + 14) = v50;
    *(v44 + 22) = 1024;
    *(v44 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v40, v41, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v44, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    v33 = v82[0];
    sub_1C43FBE2C();
  }

  else
  {

    (*(v24 + 8))(v30, v21);
  }

  v51 = v97;
  v52 = *v97;
  v53 = *(v97 + 1);
  v99 = v33;
  v100 = v35;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v52, v53);

  v55 = v99;
  v54 = v100;
  v56 = v95;
  sub_1C4F01178();
  sub_1C4F01148();
  v58 = v57;
  (*(v96 + 8))(v56, v98);
  if (v58 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v59 = sub_1C4F00968();
    v60 = sub_1C4F01CD8();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v99 = v62;
      *v61 = 136380675;
      v63 = sub_1C441D828(v55, v54, &v99);

      *(v61 + 4) = v63;
      _os_log_impl(&dword_1C43F8000, v59, v60, "Source: failed to encode identifier as UTF8 data: %{private}s", v61, 0xCu);
      sub_1C440962C(v62);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    v79 = 1;
  }

  else
  {

    sub_1C4693DE4(&qword_1EDDFEAD0, MEMORY[0x1E6966620]);
    v64 = v89;
    v65 = v92;
    sub_1C4F00DB8();
    v66 = sub_1C43FD2BC();
    sub_1C44344B8(v66, v67);
    v68 = sub_1C43FD2BC();
    sub_1C4498FD8(v68, v69);
    v70 = sub_1C43FD2BC();
    sub_1C441DFEC(v70, v71);
    v72 = v90;
    sub_1C4F00DA8();
    (*(v91 + 8))(v64, v65);
    v83(v86, &v51[v85], v87);
    v73 = v93;
    (*(v93 + 16))(v88, v72, v94);
    sub_1C4EFF028();
    v74 = sub_1C43FD2BC();
    sub_1C441DFEC(v74, v75);
    v76 = *(v73 + 8);
    v77 = sub_1C4404C28();
    v78(v77);
    v79 = 0;
  }

  v80 = sub_1C4EFF0C8();
  return sub_1C440BAA8(a1, v79, 1, v80);
}

BOOL sub_1C46903EC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1C4EF9F88();
  v7 = sub_1C43FCDF8(v6);
  v73 = v8;
  v74 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD2D8();
  v76 = v11;
  sub_1C43FBE44();
  v12 = sub_1C4EF9648();
  v13 = sub_1C43FCDF8(v12);
  v78 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD2D8();
  v72 = v17;
  v18 = sub_1C456902C(&unk_1EC0BAD50, &unk_1C4F168E0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v69 - v23;
  v25 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v69 - v27;
  v29 = sub_1C4EF9CD8();
  v30 = sub_1C43FCDF8(v29);
  v71 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBFDC();
  v70 = v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  v75 = &v69 - v36;
  v37 = [a3 librarySpecificFetchOptions];
  [v37 setPersonContext_];
  v38 = objc_opt_self();
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v39 = swift_allocObject();
  v69 = xmmword_1C4F0D130;
  *(v39 + 16) = xmmword_1C4F0D130;
  *(v39 + 32) = a1;
  *(v39 + 40) = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v40 = sub_1C4F01658();

  v41 = [v38 fetchPersonsWithLocalIdentifiers:v40 options:v37];

  v42 = [v41 firstObject];
  if (!v42)
  {
    goto LABEL_11;
  }

  v43 = [v77 birthday];
  if (v43)
  {
    v44 = v43;
    sub_1C4EF9598();

    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  v46 = v29;
  sub_1C440BAA8(v22, v45, 1, v12);
  sub_1C44CDA7C();
  if (sub_1C44157D4(v24, 1, v12) == 1)
  {
    sub_1C4420C3C(v24, &unk_1EC0BAD50, &unk_1C4F168E0);
    sub_1C440BAA8(v28, 1, 1, v29);
LABEL_8:
    sub_1C4420C3C(v28, &unk_1EC0B84E0, qword_1C4F0D2D0);
    goto LABEL_9;
  }

  sub_1C4EF95B8();
  v48 = v78 + 8;
  v47 = *(v78 + 8);
  v47(v24, v12);
  if (sub_1C44157D4(v28, 1, v29) == 1)
  {
    goto LABEL_8;
  }

  v77 = v47;
  v51 = v71;
  (*(v71 + 32))(v75, v28, v29);
  sub_1C4EF9F58();
  sub_1C456902C(&unk_1EC0BAD80, qword_1C4F16920);
  v52 = sub_1C4EF9F68();
  sub_1C43FCDF8(v52);
  v54 = v53;
  v56 = *(v55 + 72);
  v57 = *(v53 + 80);
  v78 = v48;
  v58 = (v57 + 32) & ~v57;
  v59 = swift_allocObject();
  *(v59 + 16) = v69;
  (*(v54 + 104))(v59 + v58, *MEMORY[0x1E6969A68], v52);
  sub_1C4D51F7C();
  v60 = v70;
  sub_1C4EF9CC8();
  v61 = v72;
  v62 = v76;
  sub_1C4EF9E98();

  v63 = *(v51 + 8);
  v63(v60, v46);
  (*(v73 + 8))(v62, v74);
  v64 = sub_1C4EF95D8();
  LOBYTE(v62) = v65;
  v77(v61, v12);
  if ((v62 & 1) == 0)
  {
    v66 = v75;
    if (v64 >= 3)
    {
      if (v64 >= 0xD)
      {
        if (v64 >= 0x1F)
        {
          if (v64 >= 0x3C)
          {
            v67 = 4;
          }

          else
          {
            v67 = 5;
          }
        }

        else
        {
          v67 = 3;
        }
      }

      else
      {
        v67 = 2;
      }
    }

    else
    {
      v67 = 1;
    }

    v68 = [v42 ageType];

    v63(v66, v46);
    return v68 == v67;
  }

  v63(v75, v46);
LABEL_9:
  if ([v42 ageType] == 1)
  {

LABEL_11:
    return 0;
  }

  v50 = [v42 ageType];

  return v50 != 2;
}

uint64_t sub_1C4690A7C@<X0>(id *a1@<X0>, void *a2@<X2>, char *a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v284 = a7;
  v286 = a6;
  v287 = a5;
  v301 = a4;
  v308 = a3;
  v292 = a8;
  v281 = a10;
  v277 = a9;
  v278 = sub_1C456902C(&qword_1EC0BAD30, &unk_1C4F0E170);
  v280 = *(v278 - 8);
  v12 = *(v280 + 64);
  MEMORY[0x1EEE9AC00](v278);
  v279 = (&v274 - v13);
  v288 = type metadata accessor for CNContactStructs.Person(0);
  v14 = *(*(v288 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v288);
  v282 = &v274 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v274 - v17;
  v296 = type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType(0);
  v276 = *(v296 - 1);
  v19 = *(v276 + 64);
  v20 = MEMORY[0x1EEE9AC00](v296);
  v285 = &v274 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v290 = &v274 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v303 = &v274 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v307 = &v274 - v26;
  v27 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v283 = &v274 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v300 = &v274 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v274 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v274 - v36;
  v298 = sub_1C4EFF0C8();
  v291 = *(v298 - 8);
  v38 = *(v291 + 64);
  v39 = MEMORY[0x1EEE9AC00](v298);
  v275 = &v274 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v289 = &v274 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v302 = &v274 - v44;
  MEMORY[0x1EEE9AC00](v43);
  isUniquelyReferenced_nonNull_native = &v274 - v45;
  v293 = *a1;
  v294 = [v293 value];
  v47 = [v294 name];
  v48 = sub_1C4F01138();
  v50 = v49;

  v305 = a2;
  v51 = [a2 style];
  v304 = v48;
  v306 = v50;
  v52 = sub_1C46921E4(v48, v50, v51, v308);
  v53 = sub_1C4428DA0(v52);
  v299 = v52;
  if (v53 != 1 || !sub_1C4428DA0(v52))
  {
    goto LABEL_7;
  }

  sub_1C4431590(0, (v52 & 0xC000000000000001) == 0);
  if ((v52 & 0xC000000000000001) != 0)
  {
    goto LABEL_111;
  }

  v54 = *(v52 + 32);
LABEL_5:
  v55 = v54;
  v56 = v298;
  v57 = v307;
  sub_1C468FCEC(v37);
  if (sub_1C44157D4(v37, 1, v56) != 1)
  {
    v305 = v35;
    v307 = v18;
    v308 = v55;

    v306 = *(v291 + 32);
    v306(isUniquelyReferenced_nonNull_native, v37, v56);
    v106 = v301;
    if (*v301)
    {
      v107 = v308;
      v108 = [v308 identifier];
      sub_1C4F01138();

      v109 = v107;
      v110 = *v106;
      swift_isUniquelyReferenced_nonNull_native();
      v309 = *v106;
      sub_1C4661BF0();
      *v106 = v309;
    }

    v111 = sub_1C4EFEEF8();
    sub_1C440BAA8(v57, 1, 1, v111);
    v112 = v296;
    v113 = &v57[v296[5]];
    sub_1C4EFD318();
    v114 = v112[6];
    if (qword_1EDDFED28 != -1)
    {
      swift_once();
    }

    v115 = type metadata accessor for Source();
    sub_1C442B738(v115, &unk_1EDDFD088);
    sub_1C448CA30();
    v116 = &v57[v112[7]];
    sub_1C4EFE808();
    v117 = &v57[v112[9]];
    sub_1C4EFE878();
    v118 = &v57[v112[11]];
    sub_1C4EFEB48();
    v119 = &v57[v112[13]];
    sub_1C4EFE3A8();
    *&v57[v112[14]] = 0;
    v120 = &v57[v112[15]];
    sub_1C4EFE2A8();
    v121 = [v293 label];
    if (v121)
    {
      v122 = v121;
      v123 = sub_1C4F01138();
      v125 = v124;
    }

    else
    {
      v123 = 0;
      v125 = 0;
    }

    v152 = &v57[v296[10]];
    sub_1C4461BB8(0, &qword_1EDDFA430, 0x1E695CD58);
    v153 = sub_1C4F01F08();
    if (v125)
    {
      if (v123 == v153 && v125 == v154)
      {
        v157 = 0x796C696D6166;

        goto LABEL_76;
      }

      v156 = sub_1C4F02938();

      if (v156)
      {
        v157 = 0x796C696D6166;
LABEL_76:
        v160 = 0xE600000000000000;
        goto LABEL_78;
      }
    }

    else
    {
    }

    v158 = [v293 label];
    if (v158)
    {
      v159 = v158;
      sub_1C4F01138();
    }

    v161 = objc_opt_self();
    v162 = sub_1C4F01108();

    v163 = [v161 localizedStringForLabel_];

    v157 = sub_1C4F01138();
    v160 = v164;

LABEL_78:
    *v152 = v157;
    v152[1] = v160;
    v165 = [v293 label];
    if (v165)
    {
      v166 = v165;
      v167 = sub_1C4F01138();
      v169 = v168;
    }

    else
    {
      v167 = 0;
      v169 = 0xE000000000000000;
    }

    v170 = v286;
    v171 = &v57[v296[8]];
    v172 = &v57[v296[12]];
    v173 = v296[16];
    *v172 = v167;
    v172[1] = v169;
    *v171 = sub_1C4EFF048();
    v171[1] = v174;
    *&v57[v173] = xmmword_1C4F0D2B0;
    v175 = (v287 + *(v288 + 44));
    v176 = v175[1];
    if (v176 && (*v175 == 1702195828 ? (v177 = v176 == 0xE400000000000000) : (v177 = 0), v177 || (sub_1C4F02938() & 1) != 0))
    {
      sub_1C448CA30();
      v178 = [v293 label];
      if (v178)
      {
        v179 = v178;
        v180 = sub_1C4F01138();
        v182 = v181;
      }

      else
      {
        v180 = 0;
        v182 = 0xE000000000000000;
      }

      v192 = v295;
      v193 = sub_1C4579800(v180, v182, v170);
      v217 = v303;
      if (v192)
      {
        (*(v291 + 8))(isUniquelyReferenced_nonNull_native, v298);

        v216 = v308;
LABEL_105:

        sub_1C44C45FC(v217, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
        v151 = v57;
        return sub_1C44C45FC(v151, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
      }

      v194 = v193;
      v304 = isUniquelyReferenced_nonNull_native;

      v195 = v296;
      v196 = v296[14];
      v197 = *(v217 + v196);

      *(v217 + v196) = v194;
      v198 = v305;
      sub_1C468FCEC(v305);
      v199 = v298;
      if (sub_1C44157D4(v198, 1, v298) == 1)
      {
        sub_1C4420C3C(v198, &unk_1EC0BA0E0, &qword_1C4F105A0);
      }

      else
      {
        v218 = v302;
        v306(v302, v198, v199);
        v219 = sub_1C4EFF048();
        v220 = v199;
        v222 = v221;
        (*(v291 + 8))(v218, v220);
        v223 = (v217 + v195[8]);
        v224 = v223[1];

        *v223 = v219;
        v223[1] = v222;
      }

      v225 = v308;
      v226 = sub_1C44CB92C();
      v227 = v307;
      sub_1C44CBA5C(v226, v228, v229, v230, v231, v232, v233, v234, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285);
      v235 = v304;
      sub_1C456902C(&qword_1EC0BAD98, &unk_1C4F3E8A0);
      v255 = *(v276 + 72);
      v256 = *(v276 + 80);
      v295 = 0;
      v257 = swift_allocObject();
      *(v257 + 16) = xmmword_1C4F0D130;
      sub_1C448CA30();
      v258 = v288;
      v259 = *(v288 + 248);
      v260 = *&v227[v259];

      *&v227[v259] = v257;
      sub_1C44D8894();
      sub_1C44D93D0();
      v262 = v261;
      v263 = *(v258 + 244);
      v264 = *&v227[v263];

      *&v227[v263] = v262;
      sub_1C4D7F6AC();
      v265 = *&v227[v259];

      *&v227[v259] = 0;
      v266 = sub_1C44CB92C();
      v267 = *(v278 + 48);
      v268 = v279;
      *v279 = v266;
      v268[1] = v269;
      sub_1C448CA30();
      v270 = v281;
      sub_1C45890A0();
      v271 = *(*v270 + 16);
      sub_1C4589C60();

      (*(v291 + 8))(v235, v298);
      v272 = *v270;
      *(v272 + 16) = v271 + 1;
      v273 = v272 + ((*(v280 + 80) + 32) & ~*(v280 + 80)) + *(v280 + 72) * v271;
      sub_1C44CDA7C();
      sub_1C44C45FC(v227, type metadata accessor for CNContactStructs.Person);
      sub_1C44C45FC(v217, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
    }

    else
    {

      (*(v291 + 8))(isUniquelyReferenced_nonNull_native, v298);
    }

    v183 = v292;
    sub_1C448CA30();
    sub_1C440BAA8(v183, 0, 1, v296);
    v151 = v57;
    return sub_1C44C45FC(v151, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
  }

  sub_1C4420C3C(v37, &unk_1EC0BA0E0, &qword_1C4F105A0);
  v52 = v299;
LABEL_7:
  v58 = sub_1C4428DA0(v52);
  v35 = v300;
  v37 = v301;
  isUniquelyReferenced_nonNull_native = v52;
  v303 = v58;
  if (v58)
  {
    v59 = 0;
    v302 = (v52 & 0xC000000000000001);
    v297 = v52 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v302)
      {
        v60 = MEMORY[0x1C6940F90](v59, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        if (v59 >= *(v297 + 16))
        {
          goto LABEL_109;
        }

        v60 = *&isUniquelyReferenced_nonNull_native[8 * v59 + 32];
      }

      v61 = v60;
      if (__OFADD__(v59, 1))
      {
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        v54 = MEMORY[0x1C6940F90](0, v52);
        goto LABEL_5;
      }

      v308 = (v59 + 1);
      if (*v37)
      {
        break;
      }

LABEL_24:
      v81 = [v305 stringFromContact_];
      if (v81)
      {
        v52 = v81;
        sub_1C4F01138();

        v82 = sub_1C4F00FF8();
        v84 = v83;
      }

      else
      {
        v82 = 0;
        v84 = 0;
      }

      v85 = sub_1C4F00FF8();
      v18 = v86;
      if (!v84)
      {

LABEL_35:

        goto LABEL_39;
      }

      if (v82 == v85 && v84 == v86)
      {
      }

      else
      {
        v52 = sub_1C4F02938();

        if ((v52 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      sub_1C468FCEC(v35);
      if (sub_1C44157D4(v35, 1, v298) != 1)
      {

        v89 = *(v291 + 32);
        v89(v289, v35, v298);
        v90 = sub_1C4EFEEF8();
        v91 = v290;
        sub_1C440BAA8(v290, 1, 1, v90);
        v92 = v296;
        v93 = v91 + v296[5];
        sub_1C4EFD318();
        v94 = v92[6];
        if (qword_1EDDFED28 != -1)
        {
          swift_once();
        }

        v95 = type metadata accessor for Source();
        sub_1C442B738(v95, &unk_1EDDFD088);
        sub_1C448CA30();
        v96 = v91 + v92[7];
        sub_1C4EFE808();
        v97 = v91 + v92[9];
        sub_1C4EFE878();
        v98 = v91 + v92[11];
        sub_1C4EFEB48();
        v99 = v91 + v92[13];
        sub_1C4EFE3A8();
        *(v91 + v92[14]) = 0;
        v100 = v91 + v92[15];
        sub_1C4EFE2A8();
        v101 = [v293 label];
        if (v101)
        {
          v102 = v101;
          v103 = sub_1C4F01138();
          v105 = v104;
        }

        else
        {
          v103 = 0;
          v105 = 0xE000000000000000;
        }

        v126 = &v290[v296[12]];
        *v126 = v103;
        v126[1] = v105;
        v127 = [v293 label];
        v307 = v61;
        v308 = v89;
        if (v127)
        {
          v128 = v127;
          sub_1C4F01138();
        }

        v129 = v290;
        v130 = &v290[v296[8]];
        v131 = &v290[v296[10]];
        v132 = v296[16];
        v133 = objc_opt_self();
        v134 = sub_1C4F01108();

        v135 = [v133 localizedStringForLabel_];

        v136 = sub_1C4F01138();
        v138 = v137;

        *v131 = v136;
        v131[1] = v138;
        *v130 = sub_1C4EFF048();
        v130[1] = v139;
        *(v129 + v132) = xmmword_1C4F0D2B0;
        v140 = (v287 + *(v288 + 44));
        v141 = v140[1];
        if (v141 && (*v140 == 1702195828 ? (v142 = v141 == 0xE400000000000000) : (v142 = 0), v142 || (sub_1C4F02938() & 1) != 0))
        {
          v143 = v285;
          sub_1C448CA30();
          v144 = [v293 label];
          if (v144)
          {
            v145 = v144;
            v146 = sub_1C4F01138();
            v148 = v147;
          }

          else
          {
            v146 = 0;
            v148 = 0xE000000000000000;
          }

          v184 = v295;
          v185 = sub_1C4579800(v146, v148, v286);
          if (v184)
          {
            (*(v291 + 8))(v289, v298);

            v216 = v294;
            v217 = v143;
            v57 = v290;
            goto LABEL_105;
          }

          v186 = v185;

          v187 = v296;
          v188 = v296[14];
          v189 = *(v143 + v188);

          *(v143 + v188) = v186;
          v190 = v283;
          sub_1C468FCEC(v283);
          v191 = v298;
          if (sub_1C44157D4(v190, 1, v298) == 1)
          {
            sub_1C4420C3C(v190, &unk_1EC0BA0E0, &qword_1C4F105A0);
          }

          else
          {
            v200 = v275;
            (v308)(v275, v190, v191);
            v201 = sub_1C4EFF048();
            v203 = v202;
            (*(v291 + 8))(v200, v191);
            v204 = (v143 + v187[8]);
            v205 = v204[1];

            *v204 = v201;
            v204[1] = v203;
          }

          v206 = v282;
          v207 = v307;
          v208 = sub_1C44CB92C();
          sub_1C44CBA5C(v208, v209, v210, v211, v212, v213, v214, v215, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285);
          sub_1C456902C(&qword_1EC0BAD98, &unk_1C4F3E8A0);
          v236 = *(v276 + 72);
          v237 = (*(v276 + 80) + 32) & ~*(v276 + 80);
          v238 = swift_allocObject();
          *(v238 + 16) = xmmword_1C4F0D130;
          sub_1C448CA30();
          v239 = v288;
          v240 = *(v288 + 248);
          v241 = *(v206 + v240);

          *(v206 + v240) = v238;
          sub_1C44D8894();
          sub_1C44D93D0();
          v243 = v242;
          v244 = *(v239 + 244);
          v245 = *(v206 + v244);

          *(v206 + v244) = v243;
          sub_1C4D7F6AC();
          v246 = *(v206 + v240);

          *(v206 + v240) = 0;
          v247 = sub_1C44CB92C();
          v248 = *(v278 + 48);
          v249 = v279;
          *v279 = v247;
          v249[1] = v250;
          sub_1C448CA30();
          v251 = v281;
          sub_1C45890A0();
          v252 = *(*v251 + 16);
          sub_1C4589C60();

          (*(v291 + 8))(v289, v298);
          v253 = *v251;
          *(v253 + 16) = v252 + 1;
          v254 = v253 + ((*(v280 + 80) + 32) & ~*(v280 + 80)) + *(v280 + 72) * v252;
          sub_1C44CDA7C();
          sub_1C44C45FC(v206, type metadata accessor for CNContactStructs.Person);
          sub_1C44C45FC(v143, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
        }

        else
        {

          (*(v291 + 8))(v289, v298);
        }

        v149 = v290;
        v150 = v292;
        sub_1C448CA30();
        sub_1C440BAA8(v150, 0, 1, v296);
        v151 = v149;
        return sub_1C44C45FC(v151, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
      }

      sub_1C4420C3C(v35, &unk_1EC0BA0E0, &qword_1C4F105A0);
LABEL_39:
      ++v59;
      if (v308 == v303)
      {
        goto LABEL_40;
      }
    }

    v62 = [v60 identifier];
    v35 = sub_1C4F01138();
    v18 = v63;

    v307 = v61;
    v64 = v61;
    v65 = *v37;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v309 = *v37;
    v66 = v309;
    *v37 = 0x8000000000000000;
    v67 = sub_1C445FAA8(v35, v18);
    v69 = *(v66 + 16);
    v70 = (v68 & 1) == 0;
    v52 = v69 + v70;
    if (__OFADD__(v69, v70))
    {
      goto LABEL_108;
    }

    v37 = v67;
    v71 = v68;
    sub_1C456902C(&qword_1EC0BAD90, &unk_1C4F175C0);
    if (sub_1C4F02458())
    {
      v72 = sub_1C445FAA8(v35, v18);
      isUniquelyReferenced_nonNull_native = v299;
      if ((v71 & 1) != (v73 & 1))
      {
        result = sub_1C4F029F8();
        __break(1u);
        return result;
      }

      v37 = v72;
      if ((v71 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      isUniquelyReferenced_nonNull_native = v299;
      if ((v71 & 1) == 0)
      {
LABEL_19:
        v52 = v309;
        *(v309 + 8 * (v37 >> 6) + 64) |= 1 << v37;
        v74 = (*(v52 + 48) + 16 * v37);
        *v74 = v35;
        v74[1] = v18;
        *(*(v52 + 56) + 8 * v37) = v64;
        v75 = *(v52 + 16);
        v76 = __OFADD__(v75, 1);
        v77 = v75 + 1;
        if (v76)
        {
          goto LABEL_110;
        }

        *(v52 + 16) = v77;
        goto LABEL_23;
      }
    }

    v52 = v309;
    v78 = *(v309 + 56);
    v79 = *(v78 + 8 * v37);
    *(v78 + 8 * v37) = v64;

LABEL_23:
    v37 = v301;
    v80 = *v301;
    *v301 = v52;

    v61 = v307;
    v35 = v300;
    goto LABEL_24;
  }

LABEL_40:

  return sub_1C440BAA8(v292, 1, 1, v296);
}

uint64_t sub_1C46921E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_autoreleasePoolPush();
  sub_1C46938E0(a4, a3, v4, &v9);
  objc_autoreleasePoolPop(v7);
  return v9;
}

void *sub_1C469225C()
{
  sub_1C456902C(&qword_1EC0B9028, &qword_1C4F0EB10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C4F17540;
  v1 = *MEMORY[0x1E695C958];
  *(v0 + 32) = sub_1C4F01138();
  *(v0 + 40) = v2;
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C4F0D130;
  sub_1C4461BB8(0, &qword_1EDDFA430, 0x1E695CD58);
  *(v3 + 32) = sub_1C4F01F08();
  *(v3 + 40) = v4;
  *(v0 + 48) = v3;
  v5 = *MEMORY[0x1E695CB20];
  *(v0 + 56) = sub_1C4F01138();
  *(v0 + 64) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C4F0CE60;
  *(v7 + 32) = sub_1C4F01138();
  *(v7 + 40) = v8;
  *(v7 + 48) = sub_1C4F01F08();
  *(v7 + 56) = v9;
  *(v0 + 72) = v7;
  v10 = *MEMORY[0x1E695C6F0];
  *(v0 + 80) = sub_1C4F01138();
  *(v0 + 88) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C4F0CE60;
  *(v12 + 32) = sub_1C4F01138();
  *(v12 + 40) = v13;
  *(v12 + 48) = sub_1C4F01F08();
  *(v12 + 56) = v14;
  *(v0 + 96) = v12;
  v15 = *MEMORY[0x1E695C970];
  *(v0 + 104) = sub_1C4F01138();
  *(v0 + 112) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C4F0CE60;
  *(v17 + 32) = sub_1C4F01138();
  *(v17 + 40) = v18;
  *(v17 + 48) = sub_1C4F01F08();
  *(v17 + 56) = v19;
  *(v0 + 120) = v17;
  v20 = *MEMORY[0x1E695CB30];
  *(v0 + 128) = sub_1C4F01138();
  *(v0 + 136) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C4F0CE60;
  *(v22 + 32) = sub_1C4F01138();
  *(v22 + 40) = v23;
  *(v22 + 48) = sub_1C4F01F08();
  *(v22 + 56) = v24;
  *(v0 + 144) = v22;
  v25 = *MEMORY[0x1E695CB48];
  *(v0 + 152) = sub_1C4F01138();
  *(v0 + 160) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1C4F0CE60;
  *(v27 + 32) = sub_1C4F01138();
  *(v27 + 40) = v28;
  *(v27 + 48) = sub_1C4F01F08();
  *(v27 + 56) = v29;
  *(v0 + 168) = v27;
  v30 = *MEMORY[0x1E695C700];
  *(v0 + 176) = sub_1C4F01138();
  *(v0 + 184) = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1C4F0CE60;
  *(v32 + 32) = sub_1C4F01138();
  *(v32 + 40) = v33;
  *(v32 + 48) = sub_1C4F01F08();
  *(v32 + 56) = v34;
  *(v0 + 192) = v32;
  v35 = *MEMORY[0x1E695C718];
  *(v0 + 200) = sub_1C4F01138();
  *(v0 + 208) = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1C4F0CE60;
  *(v37 + 32) = sub_1C4F01138();
  *(v37 + 40) = v38;
  *(v37 + 48) = sub_1C4F01F08();
  *(v37 + 56) = v39;
  *(v0 + 216) = v37;
  v40 = *MEMORY[0x1E695C540];
  *(v0 + 224) = sub_1C4F01138();
  *(v0 + 232) = v41;
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1C4F0CE60;
  *(v42 + 32) = sub_1C4F01138();
  *(v42 + 40) = v43;
  *(v42 + 48) = sub_1C4F01F08();
  *(v42 + 56) = v44;
  *(v0 + 240) = v42;
  v45 = *MEMORY[0x1E695CAA8];
  *(v0 + 248) = sub_1C4F01138();
  *(v0 + 256) = v46;
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1C4F0CE60;
  *(v47 + 32) = sub_1C4F01138();
  *(v47 + 40) = v48;
  *(v47 + 48) = sub_1C4F01F08();
  *(v47 + 56) = v49;
  *(v0 + 264) = v47;
  v50 = *MEMORY[0x1E695CB40];
  *(v0 + 272) = sub_1C4F01138();
  *(v0 + 280) = v51;
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1C4F0CE60;
  *(v52 + 32) = sub_1C4F01138();
  *(v52 + 40) = v53;
  *(v52 + 48) = sub_1C4F01F08();
  *(v52 + 56) = v54;
  *(v0 + 288) = v52;
  v55 = *MEMORY[0x1E695C678];
  *(v0 + 296) = sub_1C4F01138();
  *(v0 + 304) = v56;
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1C4F0CE60;
  *(v57 + 32) = sub_1C4F01138();
  *(v57 + 40) = v58;
  *(v57 + 48) = sub_1C4F01F08();
  *(v57 + 56) = v59;
  *(v0 + 312) = v57;
  v60 = *MEMORY[0x1E695C710];
  *(v0 + 320) = sub_1C4F01138();
  *(v0 + 328) = v61;
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1C4F0CE60;
  *(v62 + 32) = sub_1C4F01138();
  *(v62 + 40) = v63;
  *(v62 + 48) = sub_1C4F01F08();
  *(v62 + 56) = v64;
  *(v0 + 336) = v62;
  v65 = *MEMORY[0x1E695C858];
  *(v0 + 344) = sub_1C4F01138();
  *(v0 + 352) = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1C4F0D130;
  v68 = *MEMORY[0x1E695C760];
  *(v67 + 32) = sub_1C4F01138();
  *(v67 + 40) = v69;
  *(v0 + 360) = v67;
  v70 = *MEMORY[0x1E695C750];
  *(v0 + 368) = sub_1C4F01138();
  *(v0 + 376) = v71;
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1C4F0D130;
  *(v72 + 32) = sub_1C4F01138();
  *(v72 + 40) = v73;
  *(v0 + 384) = v72;
  v74 = *MEMORY[0x1E695C9E0];
  *(v0 + 392) = sub_1C4F01138();
  *(v0 + 400) = v75;
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1C4F0D480;
  *(v76 + 32) = sub_1C4F01F08();
  *(v76 + 40) = v77;
  v78 = *MEMORY[0x1E695C950];
  *(v76 + 48) = sub_1C4F01138();
  *(v76 + 56) = v79;
  v80 = *MEMORY[0x1E695CAA0];
  *(v76 + 64) = sub_1C4F01138();
  *(v76 + 72) = v81;
  v82 = *MEMORY[0x1E695C848];
  *(v76 + 80) = sub_1C4F01138();
  *(v76 + 88) = v83;
  *(v0 + 408) = v76;
  *(v0 + 416) = sub_1C4F01138();
  *(v0 + 424) = v84;
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1C4F0C890;
  *(v85 + 32) = sub_1C4F01138();
  *(v85 + 40) = v86;
  *(v85 + 48) = sub_1C4F01138();
  *(v85 + 56) = v87;
  *(v85 + 64) = sub_1C4F01F08();
  *(v85 + 72) = v88;
  *(v0 + 432) = v85;
  *(v0 + 440) = sub_1C4F01138();
  *(v0 + 448) = v89;
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_1C4F0C890;
  *(v90 + 32) = sub_1C4F01138();
  *(v90 + 40) = v91;
  *(v90 + 48) = sub_1C4F01138();
  *(v90 + 56) = v92;
  *(v90 + 64) = sub_1C4F01F08();
  *(v90 + 72) = v93;
  *(v0 + 456) = v90;
  v94 = *MEMORY[0x1E695C860];
  *(v0 + 464) = sub_1C4F01138();
  *(v0 + 472) = v95;
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_1C4F0D130;
  *(v96 + 32) = sub_1C4F01138();
  *(v96 + 40) = v97;
  *(v0 + 480) = v96;
  v98 = *MEMORY[0x1E695C758];
  *(v0 + 488) = sub_1C4F01138();
  *(v0 + 496) = v99;
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_1C4F0D130;
  *(v100 + 32) = sub_1C4F01138();
  *(v100 + 40) = v101;
  *(v0 + 504) = v100;
  v102 = *MEMORY[0x1E695C770];
  *(v0 + 512) = sub_1C4F01138();
  *(v0 + 520) = v103;
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_1C4F0D130;
  *(v104 + 32) = sub_1C4F01138();
  *(v104 + 40) = v105;
  *(v0 + 528) = v104;
  v106 = *MEMORY[0x1E695C768];
  *(v0 + 536) = sub_1C4F01138();
  *(v0 + 544) = v107;
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_1C4F0D130;
  *(v108 + 32) = sub_1C4F01138();
  *(v108 + 40) = v109;
  *(v0 + 552) = v108;
  v110 = *MEMORY[0x1E695C538];
  *(v0 + 560) = sub_1C4F01138();
  *(v0 + 568) = v111;
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_1C4F0D130;
  *(v112 + 32) = sub_1C4F01138();
  *(v112 + 40) = v113;
  *(v0 + 576) = v112;
  v114 = *MEMORY[0x1E695C8F8];
  *(v0 + 584) = sub_1C4F01138();
  *(v0 + 592) = v115;
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_1C4F0D130;
  *(v116 + 32) = sub_1C4F01F08();
  *(v116 + 40) = v117;
  *(v0 + 600) = v116;
  v118 = *MEMORY[0x1E695C870];
  *(v0 + 608) = sub_1C4F01138();
  *(v0 + 616) = v119;
  v120 = swift_allocObject();
  *(v120 + 16) = xmmword_1C4F0CE60;
  *(v120 + 32) = sub_1C4F01138();
  *(v120 + 40) = v121;
  *(v120 + 48) = sub_1C4F01F08();
  *(v120 + 56) = v122;
  *(v0 + 624) = v120;
  v123 = *MEMORY[0x1E695C720];
  *(v0 + 632) = sub_1C4F01138();
  *(v0 + 640) = v124;
  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_1C4F0CE60;
  *(v125 + 32) = sub_1C4F01138();
  *(v125 + 40) = v126;
  *(v125 + 48) = sub_1C4F01F08();
  *(v125 + 56) = v127;
  *(v0 + 648) = v125;
  v128 = *MEMORY[0x1E695C590];
  *(v0 + 656) = sub_1C4F01138();
  *(v0 + 664) = v129;
  v130 = swift_allocObject();
  *(v130 + 16) = xmmword_1C4F0D130;
  *(v130 + 32) = sub_1C4F01F08();
  *(v130 + 40) = v131;
  *(v0 + 672) = v130;
  v132 = *MEMORY[0x1E695C658];
  *(v0 + 680) = sub_1C4F01138();
  *(v0 + 688) = v133;
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_1C4F0CE60;
  *(v134 + 32) = sub_1C4F01138();
  *(v134 + 40) = v135;
  *(v134 + 48) = sub_1C4F01F08();
  *(v134 + 56) = v136;
  *(v0 + 696) = v134;
  v137 = *MEMORY[0x1E695C9C0];
  *(v0 + 704) = sub_1C4F01138();
  *(v0 + 712) = v138;
  v139 = swift_allocObject();
  *(v139 + 16) = xmmword_1C4F0CE60;
  *(v139 + 32) = sub_1C4F01138();
  *(v139 + 40) = v140;
  *(v139 + 48) = sub_1C4F01F08();
  *(v139 + 56) = v141;
  *(v0 + 720) = v139;
  v142 = *MEMORY[0x1E695C7F8];
  *(v0 + 728) = sub_1C4F01138();
  *(v0 + 736) = v143;
  v144 = swift_allocObject();
  *(v144 + 16) = xmmword_1C4F0D130;
  *(v144 + 32) = sub_1C4F01F08();
  *(v144 + 40) = v145;
  *(v0 + 744) = v144;
  v146 = *MEMORY[0x1E695C7B0];
  *(v0 + 752) = sub_1C4F01138();
  *(v0 + 760) = v147;
  v148 = swift_allocObject();
  *(v148 + 16) = xmmword_1C4F0CE60;
  *(v148 + 32) = sub_1C4F01138();
  *(v148 + 40) = v149;
  *(v148 + 48) = sub_1C4F01F08();
  *(v148 + 56) = v150;
  *(v0 + 768) = v148;
  v151 = *MEMORY[0x1E695C798];
  *(v0 + 776) = sub_1C4F01138();
  *(v0 + 784) = v152;
  v153 = swift_allocObject();
  *(v153 + 16) = xmmword_1C4F0CE60;
  *(v153 + 32) = sub_1C4F01138();
  *(v153 + 40) = v154;
  *(v153 + 48) = sub_1C4F01F08();
  *(v153 + 56) = v155;
  *(v0 + 792) = v153;
  v156 = *MEMORY[0x1E695C838];
  *(v0 + 800) = sub_1C4F01138();
  *(v0 + 808) = v157;
  v158 = swift_allocObject();
  *(v158 + 16) = xmmword_1C4F0D130;
  *(v158 + 32) = sub_1C4F01F08();
  *(v158 + 40) = v159;
  *(v0 + 816) = v158;
  v160 = *MEMORY[0x1E695C830];
  *(v0 + 824) = sub_1C4F01138();
  *(v0 + 832) = v161;
  v162 = swift_allocObject();
  *(v162 + 16) = xmmword_1C4F0CE60;
  *(v162 + 32) = sub_1C4F01138();
  *(v162 + 40) = v163;
  *(v162 + 48) = sub_1C4F01F08();
  *(v162 + 56) = v164;
  *(v0 + 840) = v162;
  v165 = *MEMORY[0x1E695C828];
  *(v0 + 848) = sub_1C4F01138();
  *(v0 + 856) = v166;
  v167 = swift_allocObject();
  *(v167 + 16) = xmmword_1C4F0CE60;
  *(v167 + 32) = sub_1C4F01138();
  *(v167 + 40) = v168;
  *(v167 + 48) = sub_1C4F01F08();
  *(v167 + 56) = v169;
  *(v0 + 864) = v167;
  v170 = *MEMORY[0x1E695C780];
  *(v0 + 872) = sub_1C4F01138();
  *(v0 + 880) = v171;
  v172 = swift_allocObject();
  *(v172 + 16) = xmmword_1C4F0D130;
  *(v172 + 32) = sub_1C4F01F08();
  *(v172 + 40) = v173;
  *(v0 + 888) = v172;
  v174 = *MEMORY[0x1E695C790];
  *(v0 + 896) = sub_1C4F01138();
  *(v0 + 904) = v175;
  v176 = swift_allocObject();
  *(v176 + 16) = xmmword_1C4F0CE60;
  *(v176 + 32) = sub_1C4F01138();
  *(v176 + 40) = v177;
  *(v176 + 48) = sub_1C4F01F08();
  *(v176 + 56) = v178;
  *(v0 + 912) = v176;
  v179 = *MEMORY[0x1E695C800];
  *(v0 + 920) = sub_1C4F01138();
  *(v0 + 928) = v180;
  v181 = swift_allocObject();
  *(v181 + 16) = xmmword_1C4F0CE60;
  *(v181 + 32) = sub_1C4F01138();
  *(v181 + 40) = v182;
  *(v181 + 48) = sub_1C4F01F08();
  *(v181 + 56) = v183;
  *(v0 + 936) = v181;
  v184 = *MEMORY[0x1E695C810];
  *(v0 + 944) = sub_1C4F01138();
  *(v0 + 952) = v185;
  v186 = swift_allocObject();
  *(v186 + 16) = xmmword_1C4F0D130;
  *(v186 + 32) = sub_1C4F01F08();
  *(v186 + 40) = v187;
  *(v0 + 960) = v186;
  v188 = *MEMORY[0x1E695C820];
  *(v0 + 968) = sub_1C4F01138();
  *(v0 + 976) = v189;
  v190 = swift_allocObject();
  *(v190 + 16) = xmmword_1C4F0CE60;
  *(v190 + 32) = sub_1C4F01138();
  *(v190 + 40) = v191;
  *(v190 + 48) = sub_1C4F01F08();
  *(v190 + 56) = v192;
  *(v0 + 984) = v190;
  v193 = *MEMORY[0x1E695C840];
  *(v0 + 992) = sub_1C4F01138();
  *(v0 + 1000) = v194;
  v195 = swift_allocObject();
  *(v195 + 16) = xmmword_1C4F0CE60;
  *(v195 + 32) = sub_1C4F01138();
  *(v195 + 40) = v196;
  *(v195 + 48) = sub_1C4F01F08();
  *(v195 + 56) = v197;
  *(v0 + 1008) = v195;
  v198 = *MEMORY[0x1E695C900];
  *(v0 + 1016) = sub_1C4F01138();
  *(v0 + 1024) = v199;
  v200 = swift_allocObject();
  *(v200 + 16) = xmmword_1C4F0D130;
  *(v200 + 32) = sub_1C4F01F08();
  *(v200 + 40) = v201;
  *(v0 + 1032) = v200;
  v202 = *MEMORY[0x1E695C878];
  *(v0 + 1040) = sub_1C4F01138();
  *(v0 + 1048) = v203;
  v204 = swift_allocObject();
  *(v204 + 16) = xmmword_1C4F0CE60;
  *(v204 + 32) = sub_1C4F01138();
  *(v204 + 40) = v205;
  *(v204 + 48) = sub_1C4F01F08();
  *(v204 + 56) = v206;
  *(v0 + 1056) = v204;
  v207 = *MEMORY[0x1E695C728];
  *(v0 + 1064) = sub_1C4F01138();
  *(v0 + 1072) = v208;
  v209 = swift_allocObject();
  *(v209 + 16) = xmmword_1C4F0CE60;
  *(v209 + 32) = sub_1C4F01138();
  *(v209 + 40) = v210;
  *(v209 + 48) = sub_1C4F01F08();
  *(v209 + 56) = v211;
  *(v0 + 1080) = v209;
  v212 = *MEMORY[0x1E695C5B8];
  *(v0 + 1088) = sub_1C4F01138();
  *(v0 + 1096) = v213;
  v214 = swift_allocObject();
  *(v214 + 16) = xmmword_1C4F0D130;
  *(v214 + 32) = sub_1C4F01F08();
  *(v214 + 40) = v215;
  *(v0 + 1104) = v214;
  v216 = *MEMORY[0x1E695C5B0];
  *(v0 + 1112) = sub_1C4F01138();
  *(v0 + 1120) = v217;
  v218 = swift_allocObject();
  *(v218 + 16) = xmmword_1C4F0CE60;
  *(v218 + 32) = sub_1C4F01138();
  *(v218 + 40) = v219;
  *(v218 + 48) = sub_1C4F01F08();
  *(v218 + 56) = v220;
  *(v0 + 1128) = v218;
  v221 = *MEMORY[0x1E695C5A8];
  *(v0 + 1136) = sub_1C4F01138();
  *(v0 + 1144) = v222;
  v223 = swift_allocObject();
  *(v223 + 16) = xmmword_1C4F0CE60;
  *(v223 + 32) = sub_1C4F01138();
  *(v223 + 40) = v224;
  *(v223 + 48) = sub_1C4F01F08();
  *(v223 + 56) = v225;
  *(v0 + 1152) = v223;
  v226 = *MEMORY[0x1E695C960];
  *(v0 + 1160) = sub_1C4F01138();
  *(v0 + 1168) = v227;
  v228 = swift_allocObject();
  *(v228 + 16) = xmmword_1C4F0D130;
  *(v228 + 32) = sub_1C4F01F08();
  *(v228 + 40) = v229;
  *(v0 + 1176) = v228;
  v230 = *MEMORY[0x1E695CB28];
  *(v0 + 1184) = sub_1C4F01138();
  *(v0 + 1192) = v231;
  v232 = swift_allocObject();
  *(v232 + 16) = xmmword_1C4F0CE60;
  *(v232 + 32) = sub_1C4F01138();
  *(v232 + 40) = v233;
  *(v232 + 48) = sub_1C4F01F08();
  *(v232 + 56) = v234;
  *(v0 + 1200) = v232;
  v235 = *MEMORY[0x1E695C6F8];
  *(v0 + 1208) = sub_1C4F01138();
  *(v0 + 1216) = v236;
  v237 = swift_allocObject();
  *(v237 + 16) = xmmword_1C4F0CE60;
  *(v237 + 32) = sub_1C4F01138();
  *(v237 + 40) = v238;
  *(v237 + 48) = sub_1C4F01F08();
  *(v237 + 56) = v239;
  *(v0 + 1224) = v237;
  v240 = *MEMORY[0x1E695C978];
  *(v0 + 1232) = sub_1C4F01138();
  *(v0 + 1240) = v241;
  v242 = swift_allocObject();
  *(v242 + 16) = xmmword_1C4F0CE60;
  *(v242 + 32) = sub_1C4F01138();
  *(v242 + 40) = v243;
  *(v242 + 48) = sub_1C4F01F08();
  *(v242 + 56) = v244;
  *(v0 + 1248) = v242;
  v245 = *MEMORY[0x1E695CB38];
  *(v0 + 1256) = sub_1C4F01138();
  *(v0 + 1264) = v246;
  v247 = swift_allocObject();
  *(v247 + 16) = xmmword_1C4F0CE60;
  *(v247 + 32) = sub_1C4F01138();
  *(v247 + 40) = v248;
  *(v247 + 48) = sub_1C4F01F08();
  *(v247 + 56) = v249;
  *(v0 + 1272) = v247;
  v250 = *MEMORY[0x1E695C708];
  *(v0 + 1280) = sub_1C4F01138();
  *(v0 + 1288) = v251;
  v252 = swift_allocObject();
  *(v252 + 16) = xmmword_1C4F0CE60;
  *(v252 + 32) = sub_1C4F01138();
  *(v252 + 40) = v253;
  *(v252 + 48) = sub_1C4F01F08();
  *(v252 + 56) = v254;
  *(v0 + 1296) = v252;
  v255 = *MEMORY[0x1E695C548];
  *(v0 + 1304) = sub_1C4F01138();
  *(v0 + 1312) = v256;
  v257 = swift_allocObject();
  *(v257 + 16) = xmmword_1C4F0CE60;
  *(v257 + 32) = sub_1C4F01138();
  *(v257 + 40) = v258;
  *(v257 + 48) = sub_1C4F01F08();
  *(v257 + 56) = v259;
  *(v0 + 1320) = v257;
  v260 = *MEMORY[0x1E695CAB0];
  *(v0 + 1328) = sub_1C4F01138();
  *(v0 + 1336) = v261;
  v262 = swift_allocObject();
  *(v262 + 16) = xmmword_1C4F0CE60;
  *(v262 + 32) = sub_1C4F01138();
  *(v262 + 40) = v263;
  *(v262 + 48) = sub_1C4F01F08();
  *(v262 + 56) = v264;
  *(v0 + 1344) = v262;
  v265 = *MEMORY[0x1E695C680];
  *(v0 + 1352) = sub_1C4F01138();
  *(v0 + 1360) = v266;
  v267 = swift_allocObject();
  *(v267 + 16) = xmmword_1C4F0CE60;
  *(v267 + 32) = sub_1C4F01138();
  *(v267 + 40) = v268;
  *(v267 + 48) = sub_1C4F01F08();
  *(v267 + 56) = v269;
  *(v0 + 1368) = v267;
  v270 = *MEMORY[0x1E695C5C0];
  *(v0 + 1376) = sub_1C4F01138();
  *(v0 + 1384) = v271;
  v272 = swift_allocObject();
  *(v272 + 16) = xmmword_1C4F0D130;
  *(v272 + 32) = sub_1C4F01F08();
  *(v272 + 40) = v273;
  *(v0 + 1392) = v272;
  v274 = *MEMORY[0x1E695C5C8];
  *(v0 + 1400) = sub_1C4F01138();
  *(v0 + 1408) = v275;
  v276 = swift_allocObject();
  *(v276 + 16) = xmmword_1C4F0CE60;
  *(v276 + 32) = sub_1C4F01138();
  *(v276 + 40) = v277;
  *(v276 + 48) = sub_1C4F01F08();
  *(v276 + 56) = v278;
  *(v0 + 1416) = v276;
  v279 = *MEMORY[0x1E695C5A0];
  *(v0 + 1424) = sub_1C4F01138();
  *(v0 + 1432) = v280;
  v281 = swift_allocObject();
  *(v281 + 16) = xmmword_1C4F0CE60;
  *(v281 + 32) = sub_1C4F01138();
  *(v281 + 40) = v282;
  *(v281 + 48) = sub_1C4F01F08();
  *(v281 + 56) = v283;
  *(v0 + 1440) = v281;
  v284 = *MEMORY[0x1E695C598];
  *(v0 + 1448) = sub_1C4F01138();
  *(v0 + 1456) = v285;
  v286 = swift_allocObject();
  *(v286 + 16) = xmmword_1C4F0D130;
  *(v286 + 32) = sub_1C4F01F08();
  *(v286 + 40) = v287;
  *(v0 + 1464) = v286;
  v288 = *MEMORY[0x1E695C660];
  *(v0 + 1472) = sub_1C4F01138();
  *(v0 + 1480) = v289;
  v290 = swift_allocObject();
  *(v290 + 16) = xmmword_1C4F0CE60;
  *(v290 + 32) = sub_1C4F01138();
  *(v290 + 40) = v291;
  *(v290 + 48) = sub_1C4F01F08();
  *(v290 + 56) = v292;
  *(v0 + 1488) = v290;
  v293 = *MEMORY[0x1E695C9C8];
  *(v0 + 1496) = sub_1C4F01138();
  *(v0 + 1504) = v294;
  v295 = swift_allocObject();
  *(v295 + 16) = xmmword_1C4F0CE60;
  *(v295 + 32) = sub_1C4F01138();
  *(v295 + 40) = v296;
  *(v295 + 48) = sub_1C4F01F08();
  *(v295 + 56) = v297;
  *(v0 + 1512) = v295;
  v298 = *MEMORY[0x1E695C5D8];
  *(v0 + 1520) = sub_1C4F01138();
  *(v0 + 1528) = v299;
  v300 = swift_allocObject();
  *(v300 + 16) = xmmword_1C4F0D130;
  *(v300 + 32) = sub_1C4F01F08();
  *(v300 + 40) = v301;
  *(v0 + 1536) = v300;
  v302 = *MEMORY[0x1E695CAB8];
  *(v0 + 1544) = sub_1C4F01138();
  *(v0 + 1552) = v303;
  v304 = swift_allocObject();
  *(v304 + 16) = xmmword_1C4F0CE60;
  *(v304 + 32) = sub_1C4F01138();
  *(v304 + 40) = v305;
  *(v304 + 48) = sub_1C4F01F08();
  *(v304 + 56) = v306;
  *(v0 + 1560) = v304;
  v307 = *MEMORY[0x1E695C688];
  *(v0 + 1568) = sub_1C4F01138();
  *(v0 + 1576) = v308;
  v309 = swift_allocObject();
  *(v309 + 16) = xmmword_1C4F0CE60;
  *(v309 + 32) = sub_1C4F01138();
  *(v309 + 40) = v310;
  *(v309 + 48) = sub_1C4F01F08();
  *(v309 + 56) = v311;
  *(v0 + 1584) = v309;
  v312 = *MEMORY[0x1E695C850];
  *(v0 + 1592) = sub_1C4F01138();
  *(v0 + 1600) = v313;
  v314 = swift_allocObject();
  *(v314 + 16) = xmmword_1C4F0CE60;
  *(v314 + 32) = sub_1C4F01138();
  *(v314 + 40) = v315;
  *(v314 + 48) = sub_1C4F01F08();
  *(v314 + 56) = v316;
  *(v0 + 1608) = v314;
  v317 = *MEMORY[0x1E695C748];
  *(v0 + 1616) = sub_1C4F01138();
  *(v0 + 1624) = v318;
  v319 = swift_allocObject();
  *(v319 + 16) = xmmword_1C4F0CE60;
  *(v319 + 32) = sub_1C4F01138();
  *(v319 + 40) = v320;
  *(v319 + 48) = sub_1C4F01F08();
  *(v319 + 56) = v321;
  *(v0 + 1632) = v319;
  v322 = *MEMORY[0x1E695CA10];
  *(v0 + 1640) = sub_1C4F01138();
  *(v0 + 1648) = v323;
  v324 = swift_allocObject();
  *(v324 + 16) = xmmword_1C4F0D130;
  *(v324 + 32) = sub_1C4F01F08();
  *(v324 + 40) = v325;
  *(v0 + 1656) = v324;
  v326 = *MEMORY[0x1E695CA08];
  *(v0 + 1664) = sub_1C4F01138();
  *(v0 + 1672) = v327;
  v328 = swift_allocObject();
  *(v328 + 16) = xmmword_1C4F0CE60;
  *(v328 + 32) = sub_1C4F01138();
  *(v328 + 40) = v329;
  *(v328 + 48) = sub_1C4F01F08();
  *(v328 + 56) = v330;
  *(v0 + 1680) = v328;
  v331 = *MEMORY[0x1E695CA00];
  *(v0 + 1688) = sub_1C4F01138();
  *(v0 + 1696) = v332;
  v333 = swift_allocObject();
  *(v333 + 16) = xmmword_1C4F0CE60;
  *(v333 + 32) = sub_1C4F01138();
  *(v333 + 40) = v334;
  *(v333 + 48) = sub_1C4F01F08();
  *(v333 + 56) = v335;
  *(v0 + 1704) = v333;
  v336 = *MEMORY[0x1E695C9F0];
  *(v0 + 1712) = sub_1C4F01138();
  *(v0 + 1720) = v337;
  v338 = swift_allocObject();
  *(v338 + 16) = xmmword_1C4F0D130;
  *(v338 + 32) = sub_1C4F01F08();
  *(v338 + 40) = v339;
  *(v0 + 1728) = v338;
  v340 = *MEMORY[0x1E695C9F8];
  *(v0 + 1736) = sub_1C4F01138();
  *(v0 + 1744) = v341;
  v342 = swift_allocObject();
  *(v342 + 16) = xmmword_1C4F0CE60;
  *(v342 + 32) = sub_1C4F01138();
  *(v342 + 40) = v343;
  *(v342 + 48) = sub_1C4F01F08();
  *(v342 + 56) = v344;
  *(v0 + 1752) = v342;
  v345 = *MEMORY[0x1E695CA20];
  *(v0 + 1760) = sub_1C4F01138();
  *(v0 + 1768) = v346;
  v347 = swift_allocObject();
  *(v347 + 16) = xmmword_1C4F0CE60;
  *(v347 + 32) = sub_1C4F01138();
  *(v347 + 40) = v348;
  *(v347 + 48) = sub_1C4F01F08();
  *(v347 + 56) = v349;
  *(v0 + 1776) = v347;
  v350 = *MEMORY[0x1E695C4C0];
  *(v0 + 1784) = sub_1C4F01138();
  *(v0 + 1792) = v351;
  v352 = swift_allocObject();
  *(v352 + 16) = xmmword_1C4F0D130;
  v353 = *MEMORY[0x1E695C5D0];
  *(v352 + 32) = sub_1C4F01138();
  *(v352 + 40) = v354;
  *(v0 + 1800) = v352;
  v355 = *MEMORY[0x1E695C868];
  *(v0 + 1808) = sub_1C4F01138();
  *(v0 + 1816) = v356;
  v357 = swift_allocObject();
  *(v357 + 16) = xmmword_1C4F0D130;
  *(v357 + 32) = sub_1C4F01138();
  *(v357 + 40) = v358;
  *(v0 + 1824) = v357;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  result = sub_1C4F00F28();
  off_1EC0BAD20 = result;
  return result;
}

void sub_1C46938E0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X4>, uint64_t *a4@<X8>)
{
  v44[6] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1C4F17550;
    v8 = *MEMORY[0x1E695C258];
    v9 = *MEMORY[0x1E695C240];
    *(v7 + 32) = *MEMORY[0x1E695C258];
    *(v7 + 40) = v9;
    v43 = a4;
    v10 = *MEMORY[0x1E695C2F0];
    v11 = *MEMORY[0x1E695C230];
    *(v7 + 48) = *MEMORY[0x1E695C2F0];
    *(v7 + 56) = v11;
    v42 = a3;
    v12 = *MEMORY[0x1E695C390];
    v13 = *MEMORY[0x1E695C310];
    *(v7 + 64) = *MEMORY[0x1E695C390];
    *(v7 + 72) = v13;
    v14 = *MEMORY[0x1E695C300];
    v41 = a2;
    v15 = *MEMORY[0x1E695C308];
    *(v7 + 80) = *MEMORY[0x1E695C300];
    *(v7 + 88) = v15;
    v16 = v8;
    v17 = v9;
    v18 = v10;
    a4 = v43;
    v19 = v11;
    v20 = v12;
    a3 = v42;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    a2 = v41;
  }

  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0FCC0;
  v25 = objc_opt_self();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *(inited + 32) = [v25 descriptorForRequiredKeysForStyle_];
  sub_1C49D4318(inited);
  v26 = objc_opt_self();
  v27 = sub_1C4F01108();
  v28 = [v26 predicateForContactsMatchingName_];

  sub_1C456902C(&unk_1EC0BABE0, &unk_1C4F16F20);
  v29 = sub_1C4F01658();

  v44[0] = 0;
  v30 = [a3 unifiedContactsMatchingPredicate:v28 keysToFetch:v29 error:v44];

  v31 = v44[0];
  if (v30)
  {
    sub_1C4461BB8(0, &qword_1EDDFA430, 0x1E695CD58);
    v32 = sub_1C4F01678();
    v33 = v31;
  }

  else
  {
    v34 = v44[0];
    v35 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v36 = sub_1C4F00978();
    sub_1C442B738(v36, qword_1EDE2DE10);
    v37 = sub_1C4F00968();
    v38 = sub_1C4F01CF8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1C43F8000, v37, v38, "CNContactTransformer: Error querying contacts by name", v39, 2u);
      MEMORY[0x1C6942830](v39, -1, -1);
    }

    v32 = MEMORY[0x1E69E7CC0];
  }

  *a4 = v32;
  v40 = *MEMORY[0x1E69E9840];
}

id sub_1C4693CB0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1C4F01108();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithLabel:v5 value:a3];

  return v6;
}

uint64_t sub_1C4693D58(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C4F01108();

  v5 = [a3 localIdentifierWithUUID_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1C4F01138();

  return v6;
}

uint64_t sub_1C4693DE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4693E64()
{
  result = sub_1C4F01108();
  qword_1EDE2C8F0 = result;
  return result;
}

void *sub_1C4693E9C()
{
  type metadata accessor for ContactStoreMonitor();
  v0 = swift_allocObject();
  result = sub_1C4693ED8();
  qword_1EDE2CD28 = v0;
  return result;
}

void *sub_1C4693ED8()
{
  v1 = v0;
  v2 = *v0;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDDFECB8);
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CB8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = sub_1C46655C4();
    v10 = sub_1C441D828(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C43F8000, v4, v5, "<%s: Init>", v6, 0xCu);
    sub_1C440962C(v7);
    sub_1C43FFD4C();
    sub_1C43FBE2C();
  }

  type metadata accessor for ContactStoreMonitor.GuardedData();
  v11 = swift_allocObject();
  sub_1C4EF98F8();
  sub_1C4F00BC8();
  sub_1C4695550(&qword_1EDDFFA00, MEMORY[0x1E6968FB0]);
  *(v11 + 16) = sub_1C4F00F28();
  sub_1C456902C(&unk_1EC0BAE50, &qword_1C4F17690);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = v11;
  v1[2] = v12;
  return v1;
}

uint64_t sub_1C46940D8()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 24));
  sub_1C4694140((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));

  v2 = *(v0 + 16);

  return v0;
}

uint64_t sub_1C4694140(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = *(v1 + 16);
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v5; result = )
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = *(*(v2 + 56) + ((v10 << 9) | (8 * v11)));

    sub_1C4F00BB8();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
    }

    v5 = *(v2 + 64 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C469425C()
{
  sub_1C46940D8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C46942D8()
{
  v1 = v0;
  v2 = *v0;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDDFECB8);
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CB8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = sub_1C46655C4();
    v10 = sub_1C441D828(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C43F8000, v4, v5, "<%s: Starting observe notification>", v6, 0xCu);
    sub_1C440962C(v7);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v11 = v1[2];
  MEMORY[0x1EEE9AC00](v12);

  os_unfair_lock_lock((v11 + 24));
  sub_1C469530C((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
}

uint64_t sub_1C4694494(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v6 = type metadata accessor for Configuration();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = v8;
  v42 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C4F01D88();
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C4F01E38();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C456902C(&unk_1EC0BADE0, &unk_1C4F17660);
  v38 = *(v18 - 8);
  v39 = v18;
  v19 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v33 - v20;
  v22 = *a1;
  swift_beginAccess();
  if (*(*(v22 + 16) + 16))
  {
    sub_1C43FE83C();
    if (v23)
    {
      return swift_endAccess();
    }
  }

  v34 = a2;
  v35 = v3;
  swift_endAccess();
  v25 = [objc_opt_self() defaultCenter];
  if (qword_1EDDDB908 != -1)
  {
    swift_once();
  }

  sub_1C4F01E48();

  sub_1C4F01D78();
  sub_1C4665684();
  v26 = sub_1C4F01DA8();
  v44 = v26;
  sub_1C4695550(&qword_1EDDDB8D0, MEMORY[0x1E6969F20]);
  sub_1C4695550(&unk_1EDDDB910, sub_1C4665684);
  sub_1C4F00D08();

  (*(v36 + 8))(v12, v37);
  (*(v14 + 8))(v17, v13);
  v27 = v42;
  sub_1C44098F0(v34, v42);
  v28 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v29 = (v41 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_1C4409954(v27, v30 + v28);
  *(v30 + v29) = v43;
  sub_1C46953BC();
  v31 = v39;
  sub_1C4F00D28();

  (*(v38 + 8))(v21, v31);
  swift_beginAccess();
  v32 = *(v22 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v22 + 16);
  sub_1C4661C18();
  *(v22 + 16) = v45;
  return swift_endAccess();
}

uint64_t sub_1C469496C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Configuration();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v34 - v11;
  v13 = os_transaction_create();
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v14 = sub_1C4F00978();
  sub_1C442B738(v14, qword_1EDDFECB8);
  v15 = sub_1C4F00968();
  v16 = sub_1C4F01CB8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v36 = v7;
    v37 = v18;
    v34 = v18;
    *v17 = 136315138;
    v19 = sub_1C46655C4();
    v35 = a3;
    v21 = v13;
    v22 = v6;
    v23 = v12;
    v24 = v8;
    v25 = a2;
    v26 = sub_1C441D828(v19, v20, &v37);
    a3 = v35;

    *(v17 + 4) = v26;
    a2 = v25;
    v8 = v24;
    v12 = v23;
    v6 = v22;
    v13 = v21;
    _os_log_impl(&dword_1C43F8000, v15, v16, "<%s: Received notification>", v17, 0xCu);
    v27 = v34;
    sub_1C440962C(v34);
    v28 = v27;
    v7 = v36;
    MEMORY[0x1C6942830](v28, -1, -1);
    MEMORY[0x1C6942830](v17, -1, -1);
  }

  v29 = sub_1C4F018C8();
  sub_1C440BAA8(v12, 1, 1, v29);
  sub_1C44098F0(a2, v8);
  v30 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v31 = (v7 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  sub_1C4409954(v8, v32 + v30);
  *(v32 + v31) = v13;
  *(v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8)) = a3;
  sub_1C4785250();
}

uint64_t sub_1C4694C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  *(v6 + 32) = a6;
  return MEMORY[0x1EEE6DFA0](sub_1C4694C8C, 0, 0);
}

uint64_t sub_1C4694C8C()
{
  v15 = v0;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v1 = sub_1C4F00978();
  v0[5] = sub_1C442B738(v1, qword_1EDDFECB8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = sub_1C46655C4();
    v9 = sub_1C441D828(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1C43F8000, v2, v3, "<%s: Starting delta update>", v5, 0xCu);
    sub_1C440962C(v6);
    sub_1C43FFD4C();
    sub_1C43FBE2C();
  }

  if (qword_1EDDF0AB0 != -1)
  {
    swift_once();
  }

  v10 = v0[3];
  v0[6] = sub_1C4468E90();
  if (qword_1EDDFED28 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Source();
  sub_1C442B738(v11, &unk_1EDDFD088);
  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = sub_1C4695028;

  return sub_1C4ACB9F0();
}

uint64_t sub_1C4695028()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C4695160, 0, 0);
  }

  else
  {
    v4 = *(v2 + 48);

    sub_1C43FBDA0();

    return v5();
  }
}

uint64_t sub_1C4695160()
{
  v18 = v0;
  v2 = v0[6];

  v3 = v0[8];
  v4 = v0[5];
  v5 = v3;
  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CD8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = sub_1C46655C4();
    sub_1C441D828(v10, v11, &v17);
    sub_1C4410930();
    *(v9 + 4) = v1;
    *(v9 + 12) = 2080;
    v0[2] = v3;
    v12 = v3;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v13 = sub_1C4F01198();
    sub_1C441D828(v13, v14, &v17);
    sub_1C4410930();
    *(v9 + 14) = v1;
    _os_log_impl(&dword_1C43F8000, v6, v7, "<%s: Can't run delta updates for contacts due to: %s>", v9, 0x16u);
    swift_arrayDestroy();
    sub_1C43FFD4C();
    sub_1C43FBE2C();
  }

  else
  {
  }

  sub_1C43FBDA0();

  return v15();
}

uint64_t sub_1C4695328(uint64_t a1)
{
  v3 = type metadata accessor for Configuration();
  sub_1C43FCF7C(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C469496C(a1, v1 + v8, v9);
}

unint64_t sub_1C46953BC()
{
  result = qword_1EDDDBDC0;
  if (!qword_1EDDDBDC0)
  {
    sub_1C4572308(&unk_1EC0BADE0, &unk_1C4F17660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBDC0);
  }

  return result;
}

uint64_t sub_1C4695420(uint64_t a1)
{
  v4 = type metadata accessor for Configuration();
  sub_1C43FCF7C(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v8);
  v12 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1C4665934;

  return sub_1C4694C6C(a1, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_1C4695550(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4695598(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v6 = a4 + 32;
  v7 = *(a4 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 40;
    a2(&v10);
    v6 = v8;
    if (v4)
    {
    }
  }

  return v10;
}

uint64_t sub_1C469561C(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v6 = *(a4 + 16);
  v7 = (a4 + 32);
  if (!v6)
  {
    return v10;
  }

  while (1)
  {
    v9 = *v7;
    a2(&v10, &v9);
    if (v4)
    {
      break;
    }

    ++v7;
    if (!--v6)
    {
      return v10;
    }
  }
}

uint64_t sub_1C46956AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a2 + 56;
  v4 = *(a2 + 56);
  sub_1C44087F0(a1, a2);
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v27 = v11;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = 0;
  v14 = 0;
  if (v8)
  {
    while (1)
    {
LABEL_6:
      v16 = *(v31 + 16);
      if (*(v16 + 16) && (v17 = *(*(v27 + 48) + (__clz(__rbit64(v8)) | (v14 << 6))), result = sub_1C457ADD8(v17), (v18 & 1) != 0))
      {
        sub_1C442E860(*(v16 + 56) + 40 * result, v28);
        v26 = v3;
        v19 = v29;
        v20 = v30;
        sub_1C4409678(v28, v29);
        sub_1C456902C(&qword_1EC0B8BC8, &unk_1C4F17750);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C4F0D130;
        *(inited + 32) = v17;
        sub_1C4D50668(inited);
        v23 = (*(v20 + 8))(a1, v22, v19, v20);
        v3 = v26;

        if (v26)
        {

          return sub_1C440962C(v28);
        }

        result = sub_1C440962C(v28);
        if (v13)
        {
LABEL_12:
          v24 = sub_1C46958B0(v13, v23);

          v23 = v24;
        }
      }

      else
      {
        v23 = MEMORY[0x1E69E7CC0];
        if (v13)
        {
          goto LABEL_12;
        }
      }

      v8 &= v8 - 1;
      v13 = v23;
      if (!v8)
      {
        goto LABEL_2;
      }
    }
  }

  while (1)
  {
LABEL_2:
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v10)
    {
      break;
    }

    v8 = *(v5 + 8 * v15);
    ++v14;
    if (v8)
    {
      v14 = v15;
      goto LABEL_6;
    }
  }

  if (v13)
  {
    return v13;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1C46958B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B89F0, &qword_1C4F0DE10);
  v5 = sub_1C43FCDF8(v4);
  v86 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  v85 = v9 - v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  v84 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  v83 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  v82 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBF38();
  v81 = v18;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBF38();
  v80 = v20;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v76 - v22;
  v24 = sub_1C4EF9CD8();
  v25 = sub_1C43FCDF8(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v98 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C43FD1D0();
  result = MEMORY[0x1EEE9AC00](v29);
  v100 = &v76 - v31;
  v32 = 0;
  v33 = 0;
  v87 = a1;
  v89 = *(a1 + 16);
  v78 = (v34 + 16);
  v35 = (v34 + 8);
  v88 = MEMORY[0x1E69E7CC0];
  v92 = v4;
  v77 = a2;
  for (i = v23; ; v23 = i)
  {
    if (v33 >= v89 || v32 >= *(a2 + 16))
    {
      v75 = sub_1C469A0E0(v88);

      return v75;
    }

    if (v33 < 0)
    {
      break;
    }

    v36 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v37 = *(v86 + 72);
    v38 = v87 + v36 + v37 * v33;
    result = sub_1C469A9EC(v38, v23);
    if (v32 < 0)
    {
      goto LABEL_22;
    }

    v96 = v33;
    v97 = v32;
    v90 = v37;
    v91 = v36;
    v39 = a2 + v36 + v37 * v32;
    v40 = v80;
    sub_1C469A9EC(v39, v80);
    v41 = v38;
    v95 = sub_1C4575ED0();
    v42 = sub_1C4F01078();
    v43 = *v78;
    v99 = *v78;
    if (v42)
    {
      v44 = v40;
    }

    else
    {
      v44 = v23;
    }

    v43(v100, v44, v24);
    v45 = *(v4 + 48);
    v46 = *v35;
    (*v35)(v40 + v45, v24);
    v46(v40, v24);
    v46(&v23[v45], v24);
    v47 = sub_1C44149C8();
    (v46)(v47);
    v94 = v41;
    v48 = v81;
    sub_1C469A9EC(v41, v81);
    v49 = v48 + *(v4 + 48);
    v93 = v39;
    v50 = v82;
    sub_1C469A9EC(v39, v82);
    v51 = v50 + *(v4 + 48);
    if (sub_1C4F01068())
    {
      v52 = v51;
    }

    else
    {
      v52 = v49;
    }

    v53 = v98;
    v99(v98, v52, v24);
    v46(v51, v24);
    v54 = v50;
    v55 = v100;
    v46(v54, v24);
    v46(v49, v24);
    v56 = sub_1C44149C8();
    (v46)(v56);
    if (sub_1C4EF9C18())
    {
      v57 = *(v92 + 48);
      v58 = v83;
      v59 = v55;
      v60 = v99;
      v99(v83, v59, v24);
      v60(v58 + v57, v53, v24);
      v61 = v88;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = *(v61 + 16);
        sub_1C458AF94();
        v61 = v73;
      }

      a2 = v77;
      v63 = v93;
      v62 = v94;
      v64 = *(v61 + 16);
      if (v64 >= *(v61 + 24) >> 1)
      {
        sub_1C458AF94();
        v61 = v74;
      }

      *(v61 + 16) = v64 + 1;
      v88 = v61;
      sub_1C469A97C(v83, v61 + v91 + v64 * v90);
    }

    else
    {
      a2 = v77;
      v63 = v93;
      v62 = v94;
    }

    v65 = v84;
    sub_1C469A9EC(v62, v84);
    v4 = v92;
    v66 = *(v92 + 48);
    v67 = v63;
    v68 = v85;
    sub_1C469A9EC(v67, v85);
    v69 = *(v4 + 48);
    v70 = sub_1C4EF9C18();
    v46(v98, v24);
    v46(v100, v24);
    v46(v68 + v69, v24);
    v46(v68, v24);
    v46(v65 + v66, v24);
    v71 = sub_1C44149C8();
    result = (v46)(v71);
    v32 = v97 + ((v70 & 1) == 0);
    v33 = v96 + (v70 & 1);
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1C4695EE4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v10[3] = a3;
  v5 = a1;
  v10[2] = a2;
  v6 = sub_1C4695598(MEMORY[0x1E69E7CC8], sub_1C469A90C, v10, a1);
  v7 = *(v6 + 16);
  v8 = *(v5 + 16);

  if (v7 == v8)
  {
    type metadata accessor for ContextTimeIntervalAggregator();
    v5 = swift_allocObject();
    *(v5 + 16) = v6;
  }

  else
  {

    sub_1C469A928();
    swift_allocError();
    swift_willThrow();
  }

  sub_1C440962C(a3);
  sub_1C440962C(a2);
  return v5;
}

void sub_1C4695FEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1C442E860(a3, v33);
  v6 = a2[3];
  v7 = a2[4];
  sub_1C4409678(a2, v6);
  (*(v7 + 16))(&v29, v6, v7);
  if (v30)
  {
    sub_1C441D670(&v29, v31);
  }

  else
  {
    sub_1C442E860(a4, v31);
    if (v30)
    {
      sub_1C4423A0C(&v29, &qword_1EC0BAE68, &qword_1C4F17748);
    }
  }

  v8 = v32;
  v9 = sub_1C4418280(v31, v32);
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = *v13;
  v16 = v34;
  v17 = v35;
  v18 = sub_1C4418280(v33, v34);
  v19 = *(*(v16 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v20);
  v24 = sub_1C469A798(v22, v15, v16, v17);
  sub_1C440962C(v33);
  sub_1C440962C(v31);
  v25 = a2[3];
  v26 = a2[4];
  sub_1C4409678(a2, v25);
  v27 = (*(v26 + 8))(v25, v26);
  v34 = type metadata accessor for BehaviorEventTimeIntervalCalculator();
  v35 = &off_1F43E6980;
  v33[0] = v24;
  sub_1C4C80B90(v33, v27);
}

uint64_t sub_1C469628C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = a2 + 56;
  v5 = *(a2 + 56);
  sub_1C44087F0(a1, a2);
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = 0;
  v14 = 0;
  if (!v9)
  {
    goto LABEL_2;
  }

  do
  {
LABEL_6:
    result = sub_1C46963DC(a1, *(*(v4 + 48) + (__clz(__rbit64(v9)) | (v14 << 6))));
    if (v3)
    {
    }

    v16 = result;
    if (v13)
    {
      v17 = v4;
      v18 = sub_1C46958B0(v13, result);

      v16 = v18;
      v4 = v17;
      v3 = 0;
    }

    v9 &= v9 - 1;
    v13 = v16;
  }

  while (v9);
  while (1)
  {
LABEL_2:
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v11)
    {
      break;
    }

    v9 = *(v6 + 8 * v15);
    ++v14;
    if (v9)
    {
      v14 = v15;
      goto LABEL_6;
    }
  }

  if (v13)
  {
    return v13;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1C46963DC(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v6 = sub_1C45D7654(a2);
  if (v6)
  {
    return v6;
  }

  sub_1C46964BC(a1, v4);
  if (!v2)
  {
    v3 = v7;
    v8 = OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_cachedContextIntervals;
    swift_beginAccess();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v9 = *(a1 + v8);
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *(a1 + v8);
    sub_1C4660AC8();
    *(a1 + v8) = v11;
    swift_endAccess();
  }

  return v3;
}

void sub_1C46964BC(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1C4696EA0(a1, 28);
      break;
    case 2:
      v2 = 40;
      goto LABEL_7;
    case 3:
      sub_1C469764C(a1, 4);
      break;
    case 4:
      sub_1C4697DCC(a1, 5);
      break;
    case 5:
      sub_1C469960C();
      break;
    case 6:
      sub_1C4699418();
      break;
    case 7:
    case 8:
    case 9:
      sub_1C4698F34();
      break;
    case 10:
      sub_1C4699804();
      break;
    case 11:
      sub_1C46999F8();
      break;
    case 12:
      sub_1C4699BF0();
      break;
    default:
      v2 = 200;
LABEL_7:
      sub_1C46965C0(a1, v2, 28);
      break;
  }
}

uint64_t sub_1C46965C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = sub_1C441C8FC();
  sub_1C4696630(v6, v7, a3, v8);
  objc_autoreleasePoolPop(v3);
  return v10;
}

uint64_t sub_1C4696630@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v101 = a2;
  v75 = a4;
  v6 = sub_1C456902C(&qword_1EC0B89F0, &qword_1C4F0DE10);
  v89 = *(v6 - 8);
  v90 = v6;
  v7 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v99 = &v72 - v8;
  v88 = sub_1C4EF9F68();
  v95 = *(v88 - 8);
  v9 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v86 = &v72 - v13;
  v14 = sub_1C4EF9CD8();
  v96 = *(v14 - 8);
  v15 = *(v96 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v98 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v85 = &v72 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v94 = &v72 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v72 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v72 - v25;
  v93 = sub_1C4EF9F88();
  v76 = *(v93 - 8);
  v27 = *(v76 + 64);
  v28 = MEMORY[0x1EEE9AC00](v93);
  v83 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v72 - v30;
  v32 = a1[5];
  v33 = a1[6];
  v91 = a1;
  sub_1C4409678(a1 + 2, v32);
  v34 = *(v33 + 8);
  v35 = v33;
  v36 = v26;
  v34(v32, v35);
  sub_1C4EF9E78();
  v37 = objc_autoreleasePoolPush();
  v74 = v31;
  sub_1C4EF9E78();
  v38 = 86400.0 / v101;
  v39 = v96;
  sub_1C4EF9B78();
  v41 = v40;
  v42 = *(v39 + 8);
  v84 = v24;
  v100 = v42;
  v101 = v14;
  v42(v24, v14);
  v43 = v41 / v38;
  if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v43 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v43 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  objc_autoreleasePoolPop(v37);
  sub_1C4EF9BE8();
  if (a3 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v73 = v36;
  if (a3)
  {
    v82 = *MEMORY[0x1E6969A48];
    v81 = (v95 + 104);
    v80 = (v95 + 8);
    v79 = (v76 + 8);
    v77 = (v39 + 32);
    v78 = (v39 + 16);
    v44 = 1 - a3;
    v45 = MEMORY[0x1E69E7CC0];
    v92 = a3;
    v46 = a3;
    v97 = v39 + 8;
    while (v46 <= v92)
    {
      v96 = v45;
      v48 = v91[5];
      v47 = v91[6];
      sub_1C4409678(v91 + 2, v48);
      v49 = v83;
      (*(v47 + 8))(v48, v47);
      v50 = v87;
      v51 = v88;
      (*v81)(v87, v82, v88);
      v52 = v86;
      sub_1C4EF9F28();
      (*v80)(v50, v51);
      v53 = v101;
      (*v79)(v49, v93);
      v54 = sub_1C44157D4(v52, 1, v53);
      v95 = v46 - 1;
      if (v54 == 1)
      {
        v55 = v85;
        sub_1C4EF9BE8();
        v56 = sub_1C44157D4(v52, 1, v101);
        v45 = v96;
        if (v56 != 1)
        {
          sub_1C4423A0C(v52, &unk_1EC0B84E0, qword_1C4F0D2D0);
        }
      }

      else
      {
        v55 = v85;
        (*v77)(v85, v52, v101);
        v45 = v96;
      }

      v57 = v84;
      sub_1C4EF9BE8();
      v58 = v98;
      sub_1C4EF9BE8();
      v59 = v101;
      v100(v57, v101);
      v60 = *(v90 + 48);
      v61 = *v78;
      v62 = v99;
      (*v78)(v99, v55, v59);
      v61(v62 + v60, v58, v59);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = *(v45 + 16);
        sub_1C458AF94();
        v45 = v67;
      }

      v63 = *(v45 + 16);
      v46 = v95;
      if (v63 >= *(v45 + 24) >> 1)
      {
        sub_1C458AF94();
        v45 = v68;
      }

      v65 = v100;
      v64 = v101;
      v100(v98, v101);
      v65(v55, v64);
      *(v45 + 16) = v63 + 1;
      sub_1C469A97C(v99, v45 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v63);
      if (++v44 == 1)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_23:
  v45 = MEMORY[0x1E69E7CC0];
LABEL_24:
  v69 = v100;
  v70 = v101;
  v100(v94, v101);
  v69(v73, v70);
  result = (*(v76 + 8))(v74, v93);
  *v75 = v45;
  return result;
}

uint64_t sub_1C4696EB8@<X0>(void *a1@<X0>, void (**a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v86 = a2;
  v7 = sub_1C456902C(&qword_1EC0B89F0, &qword_1C4F0DE10);
  v79 = *(v7 - 8);
  v80 = v7;
  v8 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v89 = v65 - v9;
  v78 = sub_1C4EF9F68();
  v83 = *(v78 - 8);
  v10 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v77 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v76 = v65 - v14;
  v90 = sub_1C4EF9CD8();
  v15 = *(v90 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v90);
  v75 = v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v88 = v65 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v87 = v65 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = v65 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = v65 - v26;
  v68 = sub_1C4EF9F88();
  v67 = *(v68 - 8);
  v28 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v30 = v65 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1[5];
  v31 = a1[6];
  sub_1C4409678(a1 + 2, v32);
  v33 = *(v31 + 8);
  v34 = v31;
  v35 = v27;
  v33(v32, v34);
  v36 = OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date;
  sub_1C4EF9E78();
  type metadata accessor for PartOfDayBehaviorHistogram(0);
  v82 = v30;
  sub_1C4614F38();
  if (qword_1EDDE0E38 != -1)
  {
    swift_once();
  }

  v37 = sub_1C4EF9BE8();
  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v37 = v25;
  if (!a3)
  {
LABEL_21:
    v36 = *(v15 + 8);
    v40 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v65[0] = v35;
  v81 = v25;
  v66 = a4;
  v73 = *MEMORY[0x1E6969A48];
  v38 = *(v83 + 104);
  v83 += 104;
  v71 = (v83 - 96);
  v72 = v38;
  v69 = (v15 + 32);
  v70 = (v15 + 16);
  v39 = 1 - a3;
  v40 = MEMORY[0x1E69E7CC0];
  v86 = (v15 + 8);
  v65[1] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v41 = a3;
  v74 = a3;
  while (v41 <= a3)
  {
    v42 = v41 - 1;
    v44 = v77;
    v43 = v78;
    v72(v77, v73, v78);
    v45 = v76;
    v46 = v90;
    sub_1C4EF9F28();
    (*v71)(v44, v43);
    v47 = sub_1C44157D4(v45, 1, v46);
    v84 = v42;
    v85 = v40;
    if (v47 == 1)
    {
      v48 = v87;
      sub_1C4EF9BE8();
      if (sub_1C44157D4(v45, 1, v46) != 1)
      {
        sub_1C4423A0C(v45, &unk_1EC0B84E0, qword_1C4F0D2D0);
      }
    }

    else
    {
      v48 = v87;
      (*v69)(v87, v45, v46);
    }

    v49 = v75;
    sub_1C4EF9BE8();
    v50 = v48;
    v51 = v88;
    sub_1C4EF9BE8();
    v36 = *v86;
    v52 = v49;
    v53 = v90;
    (*v86)(v52, v90);
    v54 = *(v80 + 48);
    v55 = *v70;
    v56 = v89;
    (*v70)(v89, v50, v53);
    v55(v56 + v54, v51, v53);
    v40 = v85;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v60 = *(v40 + 16);
      sub_1C458AF94();
      v40 = v61;
    }

    v41 = v84;
    v57 = *(v40 + 16);
    v58 = v87;
    if (v57 >= *(v40 + 24) >> 1)
    {
      sub_1C458AF94();
      v40 = v62;
    }

    v59 = v90;
    v36(v88, v90);
    v36(v58, v59);
    *(v40 + 16) = v57 + 1;
    sub_1C469A97C(v89, v40 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v57);
    ++v39;
    a3 = v74;
    if (v39 == 1)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_18:
  a4 = v66;
  v37 = v81;
  v35 = v65[0];
LABEL_19:
  v63 = v90;
  v36(v37, v90);
  v36(v35, v63);
  result = (*(v67 + 8))(v82, v68);
  *a4 = v40;
  return result;
}

uint64_t sub_1C4697664@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v77 = a3;
  v82 = a2;
  v58 = a4;
  v5 = sub_1C456902C(&qword_1EC0B89F0, &qword_1C4F0DE10);
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v81 = v57 - v7;
  v75 = sub_1C4EF9F68();
  v78 = *(v75 - 8);
  v8 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v72 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v66 = v57 - v12;
  v13 = sub_1C4EF9F88();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C4EF9CD8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v63 = v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v80 = v57 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v79 = v57 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = v57 - v27;
  v30 = a1[5];
  v29 = a1[6];
  v73 = a1;
  sub_1C4409678(a1 + 2, v30);
  (*(v29 + 8))(v30, v29);
  v74 = v28;
  sub_1C4EF9E78();
  v31 = *(v14 + 8);
  v64 = v14 + 8;
  v65 = v13;
  v62 = v31;
  v31(v17, v13);
  v32 = v77;
  if (v77 < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (!v77)
  {
LABEL_21:
    v33 = MEMORY[0x1E69E7CC0];
    v55 = v58;
    result = (*(v19 + 8))(v74, v18);
    goto LABEL_19;
  }

  v71 = v17;
  v70 = *MEMORY[0x1E6969A48];
  v69 = (v78 + 104);
  v61 = (v78 + 8);
  v59 = (v19 + 32);
  v60 = (v19 + 16);
  v82 = 1 - v77;
  v33 = MEMORY[0x1E69E7CC0];
  v78 = v19 + 8;
  v34 = ((v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  v57[1] = v34;
  v35 = v77;
  v36 = v75;
  while (v35 <= v32)
  {
    v37 = v73[5];
    v38 = v73[6];
    sub_1C4409678(v73 + 2, v37);
    v39 = v71;
    (*(v38 + 8))(v37, v38);
    v40 = v72;
    (*v69)(v72, v70, v36);
    v34 = ((v82 * 7) >> 64);
    if (v34 != ((7 * v82) >> 63))
    {
      goto LABEL_17;
    }

    v77 = v33;
    v41 = v66;
    sub_1C4EF9F28();
    (*v61)(v40, v36);
    v62(v39, v65);
    v42 = sub_1C44157D4(v41, 1, v18);
    v76 = v35 - 1;
    if (v42 == 1)
    {
      v43 = v79;
      sub_1C4EF9BE8();
      if (sub_1C44157D4(v41, 1, v18) != 1)
      {
        sub_1C4423A0C(v41, &unk_1EC0B84E0, qword_1C4F0D2D0);
      }
    }

    else
    {
      v43 = v79;
      (*v59)(v79, v41, v18);
    }

    v44 = v63;
    sub_1C4EF9BE8();
    v45 = v80;
    sub_1C4EF9BE8();
    v46 = *v78;
    (*v78)(v44, v18);
    v47 = *(v68 + 48);
    v48 = *v60;
    v49 = v81;
    (*v60)(v81, v43, v18);
    v48(v49 + v47, v45, v18);
    v33 = v77;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = *(v33 + 16);
      sub_1C458AF94();
      v33 = v53;
    }

    v50 = *(v33 + 16);
    v36 = v75;
    v51 = v79;
    if (v50 >= *(v33 + 24) >> 1)
    {
      sub_1C458AF94();
      v33 = v54;
    }

    v46(v80, v18);
    v46(v51, v18);
    *(v33 + 16) = v50 + 1;
    sub_1C469A97C(v81, v33 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v50);
    ++v82;
    v34 = v46;
    v35 = v76;
    if (v82 == 1)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  v55 = v58;
  result = v34(v74, v18);
LABEL_19:
  *v55 = v33;
  return result;
}

uint64_t sub_1C4697DE4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = objc_autoreleasePoolPush();
  v6 = sub_1C441C8FC();
  a3(v6);
  objc_autoreleasePoolPop(v3);
  return v8;
}

uint64_t sub_1C4697E44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v160 = a3;
  v168 = a2;
  v123 = a4;
  v5 = sub_1C456902C(&qword_1EC0B89F0, &qword_1C4F0DE10);
  v153 = *(v5 - 8);
  v154 = v5;
  v6 = *(v153 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v150 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v132 = &v121 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v138 = &v121 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v137 = &v121 - v13;
  v14 = sub_1C456902C(&qword_1EC0BAE70, &unk_1C4F55920);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v136 = &v121 - v16;
  v140 = sub_1C4EF94F8();
  v166 = *(v140 - 8);
  v17 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v135 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v131 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v149 = &v121 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v158 = &v121 - v25;
  v26 = sub_1C4EF9F68();
  v27 = *(v26 - 8);
  v28 = v27[8];
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v121 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1C4EF9CD8();
  v163 = *(v31 - 8);
  v32 = *(v163 + 64);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v148 = &v121 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v147 = &v121 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v124 = &v121 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v130 = &v121 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v142 = &v121 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v144 = &v121 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v134 = &v121 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v133 = &v121 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v128 = &v121 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v127 = &v121 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v159 = &v121 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v121 - v55;
  v122 = sub_1C4EF9F88();
  v121 = *(v122 - 8);
  v57 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v59 = &v121 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1[5];
  v60 = a1[6];
  sub_1C4409678(a1 + 2, v61);
  (*(v60 + 8))(v61, v60);
  sub_1C4EF9E78();
  v62 = *MEMORY[0x1E6969AB0];
  v165[0] = v27[13];
  v165[1] = v27 + 13;
  (v165[0])(v30, v62, v26);
  v63 = sub_1C4EF9F78();
  v64 = v27[1];
  v161 = v26;
  v162 = v27 + 1;
  v164 = v64;
  v64(v30, v26);
  type metadata accessor for PartOfWeekBehaviorHistogram(0);
  v167 = v59;
  v65 = sub_1C4615E88();
  v66 = v160;
  v157 = v65;
  if (v160 < 0)
  {
    goto LABEL_43;
  }

  if (v160)
  {
    v156 = *MEMORY[0x1E6969A10];
    v155 = (v163 + 32);
    v151 = *MEMORY[0x1E6969A48];
    v141 = 2 - v63;
    v67 = __OFSUB__(2, v63);
    v143 = v67;
    v129 = 7 - v63;
    v145 = (v163 + 16);
    v163 += 8;
    v126 = (v166 + 32);
    v125 = (v166 + 8);
    v68 = 1 - v160;
    v168 = MEMORY[0x1E69E7CC0];
    v69 = v160;
    v152 = v56;
    v70 = v159;
    v146 = v30;
    while (1)
    {
      if (v69 > v66)
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        break;
      }

      v71 = v69 - 1;
      v72 = v161;
      (v165[0])(v30, v156, v161);
      v73 = v158;
      sub_1C4EF9F28();
      v164(v30, v72);
      if (sub_1C44157D4(v73, 1, v31) == 1)
      {
        sub_1C4EF9BE8();
        if (sub_1C44157D4(v73, 1, v31) != 1)
        {
          sub_1C4423A0C(v73, &unk_1EC0B84E0, qword_1C4F0D2D0);
        }
      }

      else
      {
        (*v155)(v70, v73, v31);
      }

      v166 = v71;
      if (v157)
      {
        (v165[0])(v30, v151, v72);
        if (v143)
        {
          goto LABEL_42;
        }

        v74 = v149;
        sub_1C4EF9F28();
        v164(v30, v72);
        if (sub_1C44157D4(v74, 1, v31) != 1)
        {
          v75 = v142;
          v139 = *v155;
          v139(v142, v149, v31);
          (v165[0])(v30, v151, v72);
          v76 = v131;
          sub_1C4EF9F28();
          v164(v30, v161);
          if (sub_1C44157D4(v76, 1, v31) != 1)
          {
            v101 = v139;
            v139(v130, v76, v31);
            v102 = v124;
            v103 = v142;
            sub_1C4EF9BE8();
            v104 = *(v154 + 48);
            v105 = v132;
            (*v145)(v132, v103, v31);
            v101(&v105[v104], v102, v31);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v116 = *(v168 + 16);
              sub_1C458AF94();
              v168 = v117;
            }

            v84 = *(v168 + 16);
            v85 = v84 + 1;
            v30 = v146;
            v70 = v159;
            v56 = v152;
            if (v84 >= *(v168 + 24) >> 1)
            {
              sub_1C458AF94();
              v168 = v118;
            }

            v80 = *v163;
            (*v163)(v130, v31);
            v80(v142, v31);
            v80(v70, v31);
            v86 = v165;
            goto LABEL_38;
          }

          (*v163)(v75, v31);
          v74 = v76;
        }

        sub_1C4423A0C(v74, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v77 = v147;
        sub_1C4EF9BE8();
        v78 = v144;
        sub_1C4EF9BE8();
        v79 = v148;
        sub_1C4EF9BE8();
        v80 = *v163;
        (*v163)(v78, v31);
        v81 = *(v154 + 48);
        v82 = *v145;
        v83 = v150;
        (*v145)(v150, v77, v31);
        v82(&v83[v81], v79, v31);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = *(v168 + 16);
          sub_1C458AF94();
          v168 = v108;
        }

        v84 = *(v168 + 16);
        v85 = v84 + 1;
        v30 = v146;
        v56 = v152;
        if (v84 >= *(v168 + 24) >> 1)
        {
          sub_1C458AF94();
          v168 = v109;
        }

        v70 = v159;
        v80(v148, v31);
        v80(v147, v31);
        v80(v70, v31);
        v86 = &v170;
      }

      else
      {
        v87 = v136;
        sub_1C4EF9EE8();
        v88 = v140;
        if (sub_1C44157D4(v87, 1, v140) != 1)
        {
          (*v126)(v135, v87, v88);
          v95 = v127;
          sub_1C4EF94E8();
          v96 = v128;
          sub_1C4EF94C8();
          v97 = *(v154 + 48);
          v98 = *v155;
          v99 = v137;
          (*v155)(v137, v95, v31);
          v98(&v99[v97], v96, v31);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = *(v168 + 16);
            sub_1C458AF94();
            v168 = v114;
          }

          v84 = *(v168 + 16);
          v85 = v84 + 1;
          v70 = v159;
          v56 = v152;
          v69 = v166;
          if (v84 >= *(v168 + 24) >> 1)
          {
            sub_1C458AF94();
            v168 = v115;
          }

          (*v125)(v135, v140);
          v80 = *v163;
          (*v163)(v70, v31);
          v100 = v137;
          goto LABEL_39;
        }

        sub_1C4423A0C(v87, &qword_1EC0BAE70, &unk_1C4F55920);
        v89 = v133;
        sub_1C4EF9BE8();
        v90 = v144;
        sub_1C4EF9BE8();
        v91 = v134;
        sub_1C4EF9BE8();
        v80 = *v163;
        (*v163)(v90, v31);
        v92 = *(v154 + 48);
        v93 = *v145;
        v94 = v138;
        (*v145)(v138, v89, v31);
        v93(&v94[v92], v91, v31);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = *(v168 + 16);
          sub_1C458AF94();
          v168 = v111;
        }

        v84 = *(v168 + 16);
        v85 = v84 + 1;
        v56 = v152;
        v30 = v146;
        v70 = v159;
        if (v84 >= *(v168 + 24) >> 1)
        {
          sub_1C458AF94();
          v168 = v112;
        }

        v80(v134, v31);
        v80(v133, v31);
        v80(v70, v31);
        v86 = &v169;
      }

LABEL_38:
      v100 = *(v86 - 32);
      v69 = v166;
LABEL_39:
      v106 = v168;
      *(v168 + 16) = v85;
      sub_1C469A97C(v100, v106 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v84);
      ++v68;
      v66 = v160;
      if (v68 == 1)
      {
        goto LABEL_45;
      }
    }
  }

  v80 = *(v163 + 8);
  v163 += 8;
  v168 = MEMORY[0x1E69E7CC0];
LABEL_45:
  v119 = v123;
  v80(v56, v31);
  result = (*(v121 + 8))(v167, v122);
  *v119 = v168;
  return result;
}

void sub_1C4698F34()
{
  sub_1C43FE96C();
  v3 = v2;
  v56 = v4;
  v5 = sub_1C4EF9CD8();
  v6 = sub_1C43FCDF8(v5);
  v54 = v7;
  v55 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  v12 = (v10 - v11);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v54 - v17;
  v19 = sub_1C4EFDAB8();
  v20 = sub_1C43FCDF8(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C440A89C();
  if (v3 == 2)
  {
    v34 = *MEMORY[0x1E69A93E8];
    v35 = sub_1C440E054();
    v36(v35);
    sub_1C43FEDA4(&v63);
    v37 = sub_1C43FC1A0();
    v38(v37);
    if (v65 != 20)
    {
      if (v65 != 255)
      {
        v28 = &v63;
        goto LABEL_13;
      }

      goto LABEL_20;
    }

    if ((v64 & 1) == 0)
    {
      goto LABEL_20;
    }

    v46 = v63;
    sub_1C44059C4();
    v86 = v46;
    v87 = v47;
    v89 = 0;
    v90 = 0;
    v88 = 0;
    v91 = 20;
    v92 = v46;
    v93 = 0u;
    v94 = 0u;
    v95 = 20;
    sub_1C4EF9CC8();
    v48 = *v0;
    sub_1C45E0CE4();
    if (v1)
    {
      v18 = v12;
      goto LABEL_29;
    }

    sub_1C442FCB4();
    v53 = v12;
    goto LABEL_33;
  }

  if (v3 != 1)
  {
    if (v3)
    {
      if (qword_1EDDFA668 != -1)
      {
        swift_once();
      }

      v39 = sub_1C4F00978();
      sub_1C442B738(v39, qword_1EDE2DDE0);
      v40 = sub_1C4F00968();
      v41 = sub_1C4F01CE8();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 134217984;
        *(v42 + 4) = v3;
        _os_log_impl(&dword_1C43F8000, v40, v41, "Behavior: geoHashBehavior - Unexpected geohash level: %ld", v42, 0xCu);
        MEMORY[0x1C6942830](v42, -1, -1);
      }

      goto LABEL_20;
    }

    v23 = *MEMORY[0x1E69A9408];
    v24 = sub_1C440E054();
    v25(v24);
    sub_1C43FEDA4(&v57);
    v26 = sub_1C43FC1A0();
    v27(v26);
    if (v59 != 18)
    {
      if (v59 != 255)
      {
        v28 = &v57;
LABEL_13:
        sub_1C4423A0C(v28, &qword_1EC0B9A20, &unk_1C4F10DF0);
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    if ((v58 & 1) == 0)
    {
      goto LABEL_20;
    }

    v49 = v57;
    sub_1C44059C4();
    v66 = v49;
    v67 = v50;
    v69 = 0;
    v70 = 0;
    v68 = 0;
    v71 = 18;
    v72 = v49;
    v73 = 0u;
    v74 = 0u;
    v75 = 18;
    sub_1C4EF9CC8();
    v51 = *v0;
    sub_1C45E0CE4();
    if (v1)
    {
LABEL_29:
      (*(v54 + 8))(v18, v55);
      goto LABEL_20;
    }

    sub_1C442FCB4();
    v53 = v18;
    goto LABEL_33;
  }

  v29 = *MEMORY[0x1E69A93F8];
  v30 = sub_1C440E054();
  v31(v30);
  sub_1C43FEDA4(&v60);
  v32 = sub_1C43FC1A0();
  v33(v32);
  if (v62 == 19)
  {
    if ((v61 & 1) == 0)
    {
      goto LABEL_20;
    }

    v43 = v60;
    sub_1C44059C4();
    v76 = v43;
    v77 = v44;
    v79 = 0;
    v80 = 0;
    v78 = 0;
    v81 = 19;
    v82 = v43;
    v83 = 0u;
    v84 = 0u;
    v85 = 19;
    sub_1C4EF9CC8();
    v45 = *v0;
    sub_1C45E0CE4();
    if (v1)
    {
      v18 = v16;
      goto LABEL_29;
    }

    sub_1C442FCB4();
    v53 = v16;
LABEL_33:
    v52(v53, v55);
    goto LABEL_20;
  }

  if (v62 != 255)
  {
    v28 = &v60;
    goto LABEL_13;
  }

LABEL_20:
  sub_1C443210C();
  sub_1C43FBC80();
}

void sub_1C4699418()
{
  sub_1C43FE96C();
  v1 = sub_1C4402E48();
  v2 = sub_1C43FCDF8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C440A89C();
  v5 = sub_1C4EFDAB8();
  v6 = sub_1C43FCDF8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v9 = *MEMORY[0x1E69A9428];
  v10 = sub_1C4411A10();
  v11(v10);
  sub_1C443327C();
  v12 = sub_1C44069AC();
  v13(v12);
  if (v21 != 255)
  {
    if (v21 == 7 && (v20 & 1) != 0)
    {
      sub_1C440D254();
      v22 = v19[0];
      v23 = v19[1];
      sub_1C441EB48(1);
      sub_1C4416F68(7);
      v24 = 0;
      sub_1C441F6B4(v14);
      sub_1C4EF9CC8();
      sub_1C4412EDC();
      if (v0)
      {
        v15 = sub_1C440A8B4();
        v16(v15);
        sub_1C43FD40C();
        sub_1C43FD40C();
        goto LABEL_7;
      }

      v17 = sub_1C440A8B4();
      v18(v17);
      sub_1C4423A0C(v19, &qword_1EC0B9A20, &unk_1C4F10DF0);
    }

    sub_1C4423A0C(v19, &qword_1EC0B9A20, &unk_1C4F10DF0);
  }

LABEL_7:
  sub_1C443210C();
  sub_1C43FBC80();
}

void sub_1C469960C()
{
  sub_1C43FE96C();
  v1 = sub_1C4402E48();
  v2 = sub_1C43FCDF8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C440A89C();
  v5 = sub_1C4EFDAB8();
  v6 = sub_1C43FCDF8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v9 = *MEMORY[0x1E69A9458];
  v10 = sub_1C4411A10();
  v11(v10);
  sub_1C443327C();
  v12 = sub_1C44069AC();
  v13(v12);
  if (v22 != 255)
  {
    if (v22 == 14 && (v21 & 1) != 0)
    {
      sub_1C440D254();
      v23 = v19[0];
      v24 = v19[1];
      sub_1C441EB48(v20 | 0x100000000);
      sub_1C4416F68(14);
      v25 = v20;
      sub_1C441F6B4(v14);
      sub_1C4EF9CC8();
      sub_1C4412EDC();
      if (v0)
      {
        v15 = sub_1C440A8B4();
        v16(v15);
        sub_1C43FD40C();
        sub_1C43FD40C();
        goto LABEL_7;
      }

      v17 = sub_1C440A8B4();
      v18(v17);
      sub_1C4423A0C(v19, &qword_1EC0B9A20, &unk_1C4F10DF0);
    }

    sub_1C4423A0C(v19, &qword_1EC0B9A20, &unk_1C4F10DF0);
  }

LABEL_7:
  sub_1C443210C();
  sub_1C43FBC80();
}

void sub_1C4699804()
{
  sub_1C43FE96C();
  v1 = sub_1C4402E48();
  v2 = sub_1C43FCDF8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C440A89C();
  v5 = sub_1C4EFDAB8();
  v6 = sub_1C43FCDF8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v9 = *MEMORY[0x1E69A9470];
  v10 = sub_1C4411A10();
  v11(v10);
  sub_1C443327C();
  v12 = sub_1C44069AC();
  v13(v12);
  if (v21 != 255)
  {
    if (v21 == 9 && (v20 & 1) != 0)
    {
      sub_1C440D254();
      v22 = v19[0];
      v23 = v19[1];
      sub_1C441EB48(1);
      sub_1C4416F68(9);
      v24 = 0;
      sub_1C441F6B4(v14);
      sub_1C4EF9CC8();
      sub_1C4412EDC();
      if (v0)
      {
        v15 = sub_1C440A8B4();
        v16(v15);
        sub_1C43FD40C();
        sub_1C43FD40C();
        goto LABEL_7;
      }

      v17 = sub_1C440A8B4();
      v18(v17);
      sub_1C4423A0C(v19, &qword_1EC0B9A20, &unk_1C4F10DF0);
    }

    sub_1C4423A0C(v19, &qword_1EC0B9A20, &unk_1C4F10DF0);
  }

LABEL_7:
  sub_1C443210C();
  sub_1C43FBC80();
}

void sub_1C46999F8()
{
  sub_1C43FE96C();
  v1 = sub_1C4402E48();
  v2 = sub_1C43FCDF8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C440A89C();
  v5 = sub_1C4EFDAB8();
  v6 = sub_1C43FCDF8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v9 = *MEMORY[0x1E69A9438];
  v10 = sub_1C4411A10();
  v11(v10);
  sub_1C443327C();
  v12 = sub_1C44069AC();
  v13(v12);
  if (v22 != 255)
  {
    if (v22 == 4 && (v21 & 1) != 0)
    {
      sub_1C440D254();
      v23 = v19[0];
      v24 = v19[1];
      sub_1C441EB48(v20 | 0x100000000);
      sub_1C4416F68(4);
      v25 = v20;
      sub_1C441F6B4(v14);
      sub_1C4EF9CC8();
      sub_1C4412EDC();
      if (v0)
      {
        v15 = sub_1C440A8B4();
        v16(v15);
        sub_1C43FD40C();
        sub_1C43FD40C();
        goto LABEL_7;
      }

      v17 = sub_1C440A8B4();
      v18(v17);
      sub_1C4423A0C(v19, &qword_1EC0B9A20, &unk_1C4F10DF0);
    }

    sub_1C4423A0C(v19, &qword_1EC0B9A20, &unk_1C4F10DF0);
  }

LABEL_7:
  sub_1C443210C();
  sub_1C43FBC80();
}

uint64_t sub_1C469A058()
{
  sub_1C440962C((v0 + 16));
  sub_1C440962C((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1C469A0E0(uint64_t a1)
{
  v2 = sub_1C4EF9CD8();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD08();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  v87 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v76 - v14;
  v15 = sub_1C456902C(&qword_1EC0B89F0, &qword_1C4F0DE10);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4423AFC();
  v89 = v20;
  sub_1C4404214();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C4423AFC();
  v81 = v22;
  sub_1C4404214();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C4423AFC();
  v80 = v24;
  sub_1C4404214();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C4423AFC();
  v94 = v26;
  sub_1C4404214();
  v28 = MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C4423AFC();
  v96 = v32;
  v33 = *(a1 + 16);
  if (!v33)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v100 = v31;
  v79 = v10;
  v34 = v29;
  v95 = *(v29 + 48);
  v98 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v35 = a1 + v98;
  v36 = *(v30 + 72);
  v37 = (v5 + 32);
  v90 = (v5 + 8);
  v77 = (v5 + 40);
  v102 = MEMORY[0x1E69E7CC0];
  v92 = v2;
  v93 = v29;
  v86 = v19;
  v99 = v36;
  v78 = (v5 + 16);
  v76 = (v5 + 32);
  while (1)
  {
    v101 = v33;
    v38 = v96;
    sub_1C469A9EC(v35, v96);
    v39 = v19;
    v40 = *(v34 + 48);
    v41 = *v37;
    v42 = v100;
    v43 = sub_1C44149C8();
    v41(v43);
    v97 = v40;
    v44 = v42 + v40;
    v19 = v39;
    v45 = v34;
    (v41)(v44, v38 + v95, v2);
    v46 = v102;
    v47 = *(v102 + 16);
    if (!v47)
    {
      goto LABEL_6;
    }

    v48 = v102 + v98;
    v49 = v94;
    sub_1C469A9EC(v102 + v98 + (v47 - 1) * v99, v94);
    v50 = v49 + *(v45 + 48);
    v51 = v49;
    v52 = v88;
    sub_1C4EF9BE8();
    v91 = sub_1C4575ED0();
    LOBYTE(v50) = sub_1C4F01068();
    v53 = *v90;
    result = (*v90)(v52, v2);
    if (v50)
    {
      sub_1C4423A0C(v51, &qword_1EC0B89F0, &qword_1C4F0DE10);
      v2 = v92;
      v45 = v93;
      v19 = v86;
      v42 = v100;
LABEL_6:
      v55 = v89;
      sub_1C469A9EC(v42, v89);
      v56 = *(v45 + 48);
      (v41)(v19, v55, v2);
      (v41)(&v19[v56], v55 + v56, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = *(v46 + 16);
        sub_1C458AF94();
        v46 = v73;
      }

      v57 = *(v46 + 16);
      if (v57 >= *(v46 + 24) >> 1)
      {
        sub_1C458AF94();
        v102 = v74;
      }

      else
      {
        v102 = v46;
      }

      v34 = v45;
      sub_1C4423A0C(v42, &qword_1EC0B89F0, &qword_1C4F0DE10);
      v58 = v102;
      *(v102 + 16) = v57 + 1;
      v59 = v99;
      sub_1C469A97C(v19, v58 + v98 + v57 * v99);
      goto LABEL_19;
    }

    v60 = *(v46 + 16);
    if (!v60)
    {
      break;
    }

    v83 = v53;
    v85 = v60;
    v59 = v99;
    v84 = (v60 - 1) * v99;
    v61 = v48 + v84;
    v62 = v80;
    sub_1C469A9EC(v61, v80);
    v63 = v92;
    v64 = *(v93 + 48);
    v65 = v81;
    (v41)(v81, v62, v92);
    (v41)(v65 + v64, v62 + v64, v63);
    v66 = v79;
    v82 = *v78;
    v82(v79, v65 + v64, v63);
    sub_1C4423A0C(v65, &qword_1EC0B89F0, &qword_1C4F0DE10);
    v67 = v100;
    v68 = v97;
    if (sub_1C4F01078())
    {
      v83(v66, v63);
      v82(v87, v67 + v68, v63);
    }

    else
    {
      (v41)(v87, v66, v63);
    }

    v19 = v86;
    v69 = v67;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = v93;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C4834804(v46);
      v102 = v75;
    }

    v2 = v92;
    sub_1C4423A0C(v94, &qword_1EC0B89F0, &qword_1C4F0DE10);
    result = sub_1C4423A0C(v69, &qword_1EC0B89F0, &qword_1C4F0DE10);
    if (v85 > *(v102 + 16))
    {
      goto LABEL_25;
    }

    v34 = v71;
    (*v77)(v102 + v98 + *(v71 + 48) + v84, v87, v2);
    v37 = v76;
LABEL_19:
    v35 += v59;
    v33 = v101 - 1;
    if (v101 == 1)
    {
      return v102;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void *sub_1C469A798(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v20 = a3;
  v21 = a4;
  v8 = v7;
  v9 = sub_1C4422F90(&v19);
  (*(*(a3 - 8) + 32))(v9, a1, a3);
  v18[3] = v8;
  v18[4] = &off_1F43E2390;
  v18[0] = a2;
  type metadata accessor for BehaviorEventTimeIntervalCalculator();
  v10 = swift_allocObject();
  v11 = sub_1C4418280(v18, v8);
  v12 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v18 - v13);
  (*(v15 + 16))(v18 - v13);
  v16 = *v14;
  v10[10] = v8;
  v10[11] = &off_1F43E2390;
  v10[7] = v16;
  sub_1C441D670(&v19, (v10 + 2));
  sub_1C440962C(v18);
  return v10;
}

unint64_t sub_1C469A928()
{
  result = qword_1EC0BAE60;
  if (!qword_1EC0BAE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BAE60);
  }

  return result;
}

uint64_t sub_1C469A97C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B89F0, &qword_1C4F0DE10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C469A9EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B89F0, &qword_1C4F0DE10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for ContextTimeIntervalAggregatorError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C469AB0C()
{
  result = qword_1EC0BAE78;
  if (!qword_1EC0BAE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BAE78);
  }

  return result;
}

_BYTE *sub_1C469AB78(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

__n128 sub_1C469AC50(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C469AC64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}
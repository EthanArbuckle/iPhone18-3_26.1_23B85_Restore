uint64_t sub_18E2D9038(uint64_t a1)
{
  v2 = sub_18E2F0C40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2D9074(uint64_t a1)
{
  v2 = sub_18E2F0C40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedTokenInputDenyListWithDefaultsBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E23A9B0(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v3);
  v5 = *(v4 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C8E58();
  v7 = sub_18E2706EC(&qword_1EABE22E8, &qword_18E4AACC8);
  sub_18E1C539C(v7);
  v9 = *(v8 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C61D0();
  v12 = v0[3];
  v11 = v0[4];
  sub_18E1C975C();
  sub_18E2F0C40();
  sub_18E1E2974();
  if (!v1)
  {
    v13 = sub_18E233460();
    sub_18E2706EC(v13, v14);
    sub_18E2F7E84();
    sub_18E1C6B74();
    sub_18E1E1638(v15, v16, &qword_18E4AACD0);
    sub_18E1E2D5C();
    sub_18E44F26C();
    sub_18E2F7E40();
    sub_18E1E1F48();
    sub_18E2C76F0();
    sub_18E1C68E8();
    sub_18E44F26C();
    sub_18E2F7E34();
    sub_18E1E3E3C();
    sub_18E1E33AC();
    sub_18E2243B8();
    sub_18E1D0108();
    sub_18E44F26C();
    sub_18E1E323C();
    sub_18E223BE8();
    sub_18E2C4300();
    sub_18E1E2CB0();
    sub_18E44F26C();
    sub_18E1D40A4();
    sub_18E1C86E0();
    v17 = swift_allocObject();
    sub_18E1D41CC(v17);
    sub_18E22461C();
    sub_18E1C86E0();
    v18 = swift_allocObject();
    sub_18E1E320C(v18);
    sub_18E2402BC();
    sub_18E1C86E0();
    v19 = swift_allocObject();
    v20 = sub_18E2092EC(v19);
    sub_18E223C30(v20);

    sub_18E201AA0();

    sub_18E44E54C();
    sub_18E1E6510(v30);
    if (v21)
    {
      v22 = sub_18E1CBE2C();
      v23(v22);
      sub_18E1E8F44(v30, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E1E3AC0();
    }

    else
    {
      sub_18E44E49C();
      v24 = sub_18E1CBE2C();
      v25(v24);
      sub_18E212008();
      v27 = *(v26 + 8);
      v28 = sub_18E1E63C0();
      v29(v28);

      sub_18E1E7B38();
    }

    sub_18E201A20();
  }

  sub_18E1C9934(v0);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void AssetBackedTokenInputDenyListWithDefaultsBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E1D848C();
  v1 = sub_18E2706EC(&qword_1EABE22F8, &qword_18E4AACD8);
  sub_18E1C4EAC(v1);
  v3 = *(v2 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1E88C0();
  sub_18E1D60D8();
  sub_18E2F0C40();
  sub_18E1E394C();
  sub_18E221B08();
  AssetBackedTokenInputDenyListWithDefaultsBundle.id.getter();
  sub_18E1CD638();
  v19[256] = 0;
  v5 = sub_18E1E33F0();
  sub_18E2706EC(v5, v6);
  sub_18E1C828C(&qword_1EABDF988);
  sub_18E1E1104();
  if (v0)
  {

    v7 = sub_18E1E3D10();
    v8(v7);
  }

  else
  {
    sub_18E2F7C48();
    sub_18E2F7C30();
    sub_18E2706EC(&qword_1EABE2228, &qword_18E4AAC50);
    if (sub_18E2387D0())
    {
      sub_18E221668();
      sub_18E2333B0();
      sub_18E2F8034();
      sub_18E2C7744();
      sub_18E2F79C4();
      sub_18E2CF438(&v20);
      sub_18E2F86A4();
      sub_18E2706EC(&qword_1EABE2288, &qword_18E4AAC90);
      if (sub_18E201784())
      {
        sub_18E220844();
        sub_18E221B14();
        sub_18E2F7E6C();
        sub_18E24B240();
        sub_18E224C68();
        sub_18E24B30C(v19);
        sub_18E2F8614();
        sub_18E2706EC(&qword_1EABE2290, &qword_18E4AAC98);
        if (sub_18E2372B0())
        {
          sub_18E201EF8();
          sub_18E2232D0(&v17);
          sub_18E2F7DE8();
          sub_18E2C4354();
          sub_18E2F7A24();
          v14 = sub_18E1E6C0C();
          v15(v14);
          sub_18E2CFAB0(&v18);
          goto LABEL_7;
        }

        sub_18E228994();
        sub_18E1C8558();
        sub_18E221DF4();
        v10 = v16 + 2;
      }

      else
      {
        sub_18E228994();
        sub_18E1C8558();
        sub_18E221DF4();
        v10 = v13 + 3;
      }
    }

    else
    {
      sub_18E228994();
      sub_18E1C8558();
      sub_18E221DF4();
    }

    sub_18E2231EC(v9, v10);
    v11 = sub_18E1E6C0C();
    v12(v11);
  }

LABEL_7:
  sub_18E1E2968();
  sub_18E1C6650();
}

void sub_18E2D98C4()
{
  sub_18E1C575C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v31 = v11;
  v13 = v12;
  v15 = v14;
  v16 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v16);
  v18 = *(v17 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v19);
  sub_18E221F50();
  v20 = *v13;
  v21 = v13[1];

  sub_18E44E50C();

  v22 = sub_18E44E54C();
  if (sub_18E1CAF28(v0, 1, v22) == 1)
  {
    sub_18E1E8F44(v0, &qword_1EABE2FE0, &qword_18E49CE00);
  }

  else
  {
    v20 = sub_18E44E49C();
    v30 = v6;
    v23 = v10;
    v24 = v4;
    v25 = v8;
    v26 = v2;
    v28 = v27;
    sub_18E1C82B8(v22);
    (*(v29 + 8))(v0, v22);

    v21 = v28;
    v2 = v26;
    v8 = v25;
    v4 = v24;
    v10 = v23;
    v6 = v30;
  }

  *v15 = v20;
  v15[1] = v21;
  v6(v31, v15 + 2);
  v4(v10, v15 + 7);
  v2(v8, v15 + 12);
  sub_18E1C5544();
}

void TokenInputDenyListWithDefaultsBundle.init(with:resources:)()
{
  sub_18E1C62A0();
  sub_18E2F7E20();
  v3 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v3);
  v5 = *(v4 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C57AC();
  sub_18E1E7430();
  sub_18E26C3FC(v1, v7);
  if (!v77)
  {

    sub_18E1E8F44(&v76, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_22:
    sub_18E1C9550();
    sub_18E44EFFC();

    sub_18E1CA5A4();
    *&v76 = 0xD000000000000015;
    *(&v76 + 1) = v23;
    goto LABEL_26;
  }

  sub_18E228754();
  if ((sub_18E223994() & 1) == 0)
  {

    goto LABEL_22;
  }

  sub_18E2F8264();
  v8 = sub_18E2201C4();
  if ((sub_18E32F0AC(v8, v9) & 1) == 0)
  {
    if (qword_1EABE0CF8 != -1)
    {
      sub_18E1C7804();
    }

    v10 = sub_18E44E83C();
    sub_18E1CE8B4(v10, qword_1EAC7F560);

    v11 = sub_18E44E80C();
    sub_18E44EE0C();

    if (sub_18E1E1A10())
    {
      v67 = v0;
      v12 = sub_18E1C5F74();
      v13 = sub_18E2216D0();
      sub_18E212178(v13);
      sub_18E2F804C(4.8149e-34);
      *(v12 + 4) = sub_18E1C9624(0xD000000000000015, v2, v14);
      sub_18E1E33B8(&dword_18E1C1000, v15, v16, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E221850();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }
  }

  sub_18E1E7400(&v76);
  if (!v77)
  {

    sub_18E1E8F44(&v76, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_25:
    sub_18E1C9550();
    sub_18E44EFFC();
    sub_18E1D7FD0();
    sub_18E2288EC();
LABEL_26:
    sub_18E44E99C();
    sub_18E2092F8();
    v24 = sub_18E1E2E14();
    MEMORY[0x193ACC300](v24);
LABEL_27:

    sub_18E2F7E78();
    goto LABEL_28;
  }

  sub_18E228754();
  if ((sub_18E223994() & 1) == 0)
  {

    goto LABEL_25;
  }

  sub_18E201714();
  while (1)
  {
    sub_18E220EA4();
    if (v22)
    {
      goto LABEL_43;
    }

    sub_18E1E1888();
    if (v17)
    {
      __break(1u);
LABEL_66:

      sub_18E2CF468(v75);
      sub_18E2CF288(v71);

LABEL_73:
      sub_18E220910();
      sub_18E44EFFC();
      sub_18E237298();
      sub_18E235264();
      v61 = sub_18E1CBE3C();
      MEMORY[0x193ACC300](v61);
LABEL_74:

LABEL_28:
      sub_18E2AE554();
      v25 = sub_18E1C8558();
      sub_18E1CFAB8(v25, v26);
LABEL_29:
      sub_18E1E86A4();
      sub_18E1C6650();
      return;
    }

    sub_18E2F88CC();
    v18 = v78;
    sub_18E1E15F4(&v76, v77);
    v19 = sub_18E1CD91C();
    v20(v19);
    sub_18E235A6C();
    v22 = v22 && v21 == v2;
    if (v22)
    {
      break;
    }

    sub_18E240E4C();
    sub_18E1E1F80();

    if (v18)
    {
      goto LABEL_31;
    }

    sub_18E1C9934(&v76);
    sub_18E23ED54();
  }

LABEL_31:
  v27 = sub_18E2235F8();
  sub_18E1C551C(v27, v28);
  sub_18E2706EC(&qword_1EABE0EA0, &qword_18E49D250);
  sub_18E2235F8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_43:

    sub_18E243B08();
    sub_18E1C9550();
    sub_18E44EFFC();
    sub_18E1D7FD0();
    sub_18E2288EC();
    v39 = sub_18E2201C4();
    MEMORY[0x193ACC300](v39);
    goto LABEL_27;
  }

  v29 = sub_18E228754();
  memcpy(v29, v30, 0xD8uLL);
  sub_18E2F8158();
  sub_18E220988();
  sub_18E26C3FC(v1, v31);
  sub_18E243B08();
  if (!v32)
  {

    sub_18E2CF468(v75);

    sub_18E1E8F44(v72, &qword_1EABE3B70, &qword_18E4AAB80);
    goto LABEL_46;
  }

  sub_18E238998();
  if ((sub_18E2281F0() & 1) == 0)
  {

    sub_18E2CF468(v75);

LABEL_46:
    sub_18E1D01D8();
    sub_18E44EFFC();
    sub_18E1DD584();
    sub_18E216910();
    sub_18E237D80();
    sub_18E2092F8();
    v40 = sub_18E1E2E14();
    MEMORY[0x193ACC300](v40);
LABEL_61:

    sub_18E2F7E4C();
    goto LABEL_28;
  }

  sub_18E2F7E0C();
  while (1)
  {
    sub_18E220EA4();
    if (v22)
    {
      goto LABEL_60;
    }

    sub_18E1E1888();
    if (v17)
    {
      break;
    }

    sub_18E2F8674();
    v33 = v73;
    v34 = v74;
    sub_18E1E15F4(v72, v73);
    v35 = sub_18E22879C(v34);
    v36(v35, v34);
    sub_18E235A6C();
    if (v22 && v37 == v2)
    {

LABEL_48:
      v41 = sub_18E2168F8();
      sub_18E1C551C(v41, v42);
      sub_18E2168F8();
      if ((sub_18E2F85B4() & 1) == 0)
      {
LABEL_60:

        sub_18E2CF468(v75);

        sub_18E243B08();
        sub_18E1D01D8();
        sub_18E44EFFC();
        sub_18E1DD584();
        v51 = sub_18E2F7C80();
        MEMORY[0x193ACC300](v51);
        v52 = sub_18E2201C4();
        MEMORY[0x193ACC300](v52);
        goto LABEL_61;
      }

      v43 = sub_18E238998();
      memcpy(v43, v44, 0xD8uLL);
      sub_18E1E7400(&v68);
      if (v69)
      {
        sub_18E2F7FC0();
        if (sub_18E223680())
        {

          v45 = v70;
          while (1)
          {
            sub_18E2329E0();
            if (v22)
            {
              goto LABEL_66;
            }

            sub_18E209364();
            if (v17)
            {
              goto LABEL_77;
            }

            sub_18E1E8C38(v66, &v68);
            v46 = v69;
            v47 = sub_18E1E1D24(&v68);
            v48(v47);
            sub_18E201EA0();
            if (v22 && v49 == v45)
            {

LABEL_68:

              v54 = sub_18E2F7ACC();
              sub_18E1C551C(v54, v55);
              sub_18E2F7ACC();
              if ((sub_18E22086C() & 1) == 0)
              {

                sub_18E2CF468(v75);
                sub_18E2CF288(v71);
                goto LABEL_73;
              }

              sub_18E2F0994();
              sub_18E1C86E0();
              v56 = swift_allocObject();
              sub_18E26566C(v56);
              sub_18E2F0ADC();
              sub_18E1C86E0();
              v57 = swift_allocObject();
              v58 = sub_18E1E8338(v57);
              sub_18E2F889C(v58);
              sub_18E2F0B30();
              sub_18E1C86E0();
              v59 = swift_allocObject();
              v60 = sub_18E1E8590(v59);
              sub_18E2F865C(v60);
              sub_18E1E19CC();
              sub_18E2F8244();
              sub_18E44E54C();
              sub_18E1D4C60(v67);
              if (v22)
              {

                sub_18E1E8F44(v67, &qword_1EABE2FE0, &qword_18E49CE00);
              }

              else
              {
                sub_18E44E49C();
                sub_18E2F7AB0();
                sub_18E25E19C();
                v63 = *(v62 + 8);
                v64 = sub_18E1CBE3C();
                v65(v64);
              }

              sub_18E1E1B50();
              sub_18E1E1040();
              goto LABEL_29;
            }

            sub_18E1E1530();
            sub_18E1E1F80();

            if (v46)
            {
              goto LABEL_68;
            }

            sub_18E1C9934(&v68);
            sub_18E2F7D58();
          }
        }

        sub_18E2CF468(v75);
        sub_18E2CF288(v71);
      }

      else
      {

        sub_18E2CF468(v75);
        sub_18E2CF288(v71);

        sub_18E1E8F44(&v68, &qword_1EABE3B70, &qword_18E4AAB80);
      }

      sub_18E220910();
      sub_18E44EFFC();
      sub_18E237298();
      sub_18E235264();
      sub_18E44E99C();
      sub_18E2092F8();
      v53 = sub_18E1E2E14();
      MEMORY[0x193ACC300](v53);
      goto LABEL_74;
    }

    sub_18E240E4C();
    sub_18E1E1F80();

    if (v33)
    {
      goto LABEL_48;
    }

    sub_18E1C9934(v72);
    sub_18E23ED54();
  }

  __break(1u);
LABEL_77:
  __break(1u);
}

uint64_t sub_18E2DA3E8()
{
  sub_18E1E2F2C();
  v4 = v4 && v3 == 0xE200000000000000;
  if (v4 || (sub_18E1E3894() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = v1 == sub_18E1E31A0() && v0 == v6;
    if (v7 || (sub_18E1CF3DC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      sub_18E2200A4();
      v9 = v1 == v2 + 1 && v8 == v0;
      if (v9 || (sub_18E1CF3DC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        sub_18E223BF4();
        if (v4 && v10 == v0)
        {

          return 3;
        }

        else
        {
          sub_18E1CF3DC();
          sub_18E1E6A20();
          if (v1)
          {
            return 3;
          }

          else
          {
            return 4;
          }
        }
      }
    }
  }
}

uint64_t sub_18E2DA4D0(uint64_t a1)
{
  v2 = sub_18E2F0CFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2DA50C(uint64_t a1)
{
  v2 = sub_18E2F0CFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TokenInputDenyListWithDefaultsBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E23A9B0(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v3);
  v5 = *(v4 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C8E58();
  v7 = sub_18E2706EC(&qword_1EABE2300, &qword_18E4AACE0);
  sub_18E1C539C(v7);
  v9 = *(v8 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C61D0();
  v12 = v0[3];
  v11 = v0[4];
  sub_18E1C975C();
  sub_18E2F0CFC();
  sub_18E1E2974();
  if (!v1)
  {
    v13 = sub_18E233460();
    sub_18E2706EC(v13, v14);
    sub_18E2F7E84();
    sub_18E1C6B74();
    sub_18E1E1638(v15, v16, &qword_18E4AACE8);
    sub_18E1E2D5C();
    sub_18E44F26C();
    sub_18E2F7E40();
    sub_18E1E1F48();
    sub_18E2C73A0();
    sub_18E1C68E8();
    sub_18E44F26C();
    sub_18E2F7E34();
    sub_18E1E3E3C();
    sub_18E1E33AC();
    sub_18E2C91FC();
    sub_18E1D0108();
    sub_18E44F26C();
    sub_18E1E323C();
    sub_18E223BE8();
    sub_18E2C3FB0();
    sub_18E1E2CB0();
    sub_18E44F26C();
    sub_18E2F0994();
    sub_18E1C86E0();
    v17 = swift_allocObject();
    sub_18E1D41CC(v17);
    sub_18E2F0ADC();
    sub_18E1C86E0();
    v18 = swift_allocObject();
    sub_18E1E320C(v18);
    sub_18E2F0B30();
    sub_18E1C86E0();
    v19 = swift_allocObject();
    v20 = sub_18E2092EC(v19);
    sub_18E223C30(v20);

    sub_18E201AA0();

    sub_18E44E54C();
    sub_18E1E6510(v30);
    if (v21)
    {
      v22 = sub_18E1CBE2C();
      v23(v22);
      sub_18E1E8F44(v30, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E1E3AC0();
    }

    else
    {
      sub_18E44E49C();
      v24 = sub_18E1CBE2C();
      v25(v24);
      sub_18E212008();
      v27 = *(v26 + 8);
      v28 = sub_18E1E63C0();
      v29(v28);

      sub_18E1E7B38();
    }

    sub_18E201A20();
  }

  sub_18E1C9934(v0);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void TokenInputDenyListWithDefaultsBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E1D848C();
  v1 = sub_18E2706EC(&qword_1EABE2320, &qword_18E4AACF0);
  sub_18E1C4EAC(v1);
  v3 = *(v2 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1E88C0();
  sub_18E1D60D8();
  sub_18E2F0CFC();
  sub_18E1E394C();
  sub_18E221B08();
  TokenInputDenyListWithDefaultsBundle.id.getter();
  sub_18E1CD638();
  v19[256] = 0;
  v5 = sub_18E1E33F0();
  sub_18E2706EC(v5, v6);
  sub_18E1C828C(&qword_1EABE2328);
  sub_18E1E1104();
  if (v0)
  {

    v7 = sub_18E1E3D10();
    v8(v7);
  }

  else
  {
    sub_18E2F7C48();
    sub_18E2F7C30();
    sub_18E2706EC(&qword_1EABE2268, &qword_18E4AAC70);
    if (sub_18E2387D0())
    {
      sub_18E221668();
      sub_18E2333B0();
      sub_18E2F8034();
      sub_18E2C73F4();
      sub_18E2F79C4();
      sub_18E2CF468(&v20);
      sub_18E2F86A4();
      sub_18E2706EC(&qword_1EABE22D8, &qword_18E4AACB8);
      if (sub_18E201784())
      {
        sub_18E220844();
        sub_18E221B14();
        sub_18E2F7E6C();
        sub_18E2C9250();
        sub_18E224C68();
        sub_18E2CF288(v19);
        sub_18E2F8614();
        sub_18E2706EC(&qword_1EABE22E0, &qword_18E4AACC0);
        if (sub_18E2372B0())
        {
          sub_18E201EF8();
          sub_18E2232D0(&v17);
          sub_18E2F7DE8();
          sub_18E2C4004();
          sub_18E2F7A24();
          v14 = sub_18E1E6C0C();
          v15(v14);
          sub_18E2CFAE0(&v18);
          goto LABEL_7;
        }

        sub_18E228994();
        sub_18E1C8558();
        sub_18E221DF4();
        v10 = v16 + 2;
      }

      else
      {
        sub_18E228994();
        sub_18E1C8558();
        sub_18E221DF4();
        v10 = v13 + 3;
      }
    }

    else
    {
      sub_18E228994();
      sub_18E1C8558();
      sub_18E221DF4();
    }

    sub_18E2231EC(v9, v10);
    v11 = sub_18E1E6C0C();
    v12(v11);
  }

LABEL_7:
  sub_18E1E2968();
  sub_18E1C6650();
}

void AssetBackedTokenOutputDenyListBundle.init(with:resources:)()
{
  sub_18E1C62A0();
  sub_18E2F7EB0();
  sub_18E2336A4();
  v3 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v3);
  v5 = *(v4 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E2352F4();
  sub_18E1E7430();
  sub_18E26C3FC(v2, v7);
  v8 = MEMORY[0x1E69E7CA0];
  if (!v56)
  {

    sub_18E1E8F44(&v55, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_21:
    sub_18E1E3B10();
    sub_18E44EFFC();

    sub_18E1CA5A4();
    *&v55 = v0 + 2;
    *(&v55 + 1) = v20;
LABEL_25:
    sub_18E44E99C();
    sub_18E22449C();

    v21 = v0;
LABEL_26:
    MEMORY[0x193ACC300](v21, v8);

LABEL_27:
    sub_18E2AE554();
    v22 = sub_18E1C8558();
    sub_18E1D7E28(v22, v23);
    goto LABEL_28;
  }

  sub_18E2F7B4C();
  if ((sub_18E22169C() & 1) == 0)
  {

    goto LABEL_21;
  }

  v8 = v54;
  type metadata accessor for Utils();
  v9 = sub_18E1D4B44();
  if (sub_18E32F0AC(v9, v10))
  {
    goto LABEL_8;
  }

  if (qword_1EABE0CF8 != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v11 = sub_18E44E83C();
    sub_18E1CE8B4(v11, qword_1EAC7F560);

    v12 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E216B90();
    if (sub_18E23CA28())
    {
      sub_18E1C5F74();
      *&v55 = sub_18E223E58();
      *(v1 + 4) = sub_18E2F83A4(4.8149e-34);
      sub_18E1D5F48(&dword_18E1C1000, v13, v14, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E221850();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

LABEL_8:
    sub_18E2F8824(&v55);
    if (!v56)
    {

      sub_18E1E8F44(&v55, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_24:
      sub_18E1E3B10();
      sub_18E44EFFC();
      sub_18E1E23D4();
      MEMORY[0x193ACC300](v0 + 55, 0x800000018E466BF0);
      goto LABEL_25;
    }

    sub_18E2F7B4C();
    if ((sub_18E2F7C18() & 1) == 0)
    {

      goto LABEL_24;
    }

    v0 = 0;
    v8 = v54;
    sub_18E232D04();
    v48 = v1;
LABEL_11:
    sub_18E24177C();
    if (v19)
    {
      goto LABEL_42;
    }

    sub_18E223464();
    if (!v15)
    {
      break;
    }

    __break(1u);
LABEL_57:
    sub_18E1C7804();
  }

  sub_18E1E8C38(v1, &v55);
  v16 = v56;
  sub_18E1C8570(&v55, v56);
  v17(v16);
  sub_18E220298();
  v19 = v19 && v18 == v54;
  if (!v19)
  {
    sub_18E221494();
    sub_18E201F20();
    if (v16)
    {
      goto LABEL_30;
    }

    sub_18E1E3BE0(&v55);
    goto LABEL_11;
  }

LABEL_30:
  v24 = sub_18E2F7F30();
  sub_18E1C551C(v24, v25);
  sub_18E2706EC(&unk_1EABE33F0, &unk_18E49D240);
  sub_18E2F7F30();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_42:

    sub_18E2336A4();
    sub_18E1E3B10();
    sub_18E44EFFC();
    sub_18E1E23D4();
    MEMORY[0x193ACC300](43, 0x800000018E466C40);
    v21 = v53;
    goto LABEL_26;
  }

  v26 = sub_18E2F7B4C();
  memcpy(v26, v27, 0xD8uLL);
  sub_18E2F8424(&v49);
  sub_18E2336A4();
  if (!v28)
  {

    sub_18E24FF48(&v53);

    sub_18E1E8F44(&v49, &qword_1EABE3B70, &qword_18E4AAB80);
    v29 = MEMORY[0x1E69E7CA0];
    goto LABEL_45;
  }

  v29 = MEMORY[0x1E69E7CA0];
  if ((sub_18E22169C() & 1) == 0)
  {

    sub_18E24FF48(&v53);

LABEL_45:
    sub_18E223C48();
    sub_18E44EFFC();
    sub_18E2F7EF8();
    v35 = sub_18E220CB4();
    MEMORY[0x193ACC300](v35);
    sub_18E216B20();
    sub_18E22449C();

    v36 = 0;
LABEL_54:
    MEMORY[0x193ACC300](v36, v29);

    goto LABEL_27;
  }

  v30 = v51;
  v29 = v52;
  while (1)
  {
    sub_18E24177C();
    if (v19)
    {

      sub_18E24FF48(&v53);

      sub_18E2336A4();
LABEL_53:
      sub_18E223C48();
      sub_18E44EFFC();
      sub_18E2F7EF8();
      MEMORY[0x193ACC300](41, 0x800000018E466CD0);
      v36 = v30;
      goto LABEL_54;
    }

    sub_18E223464();
    if (v15)
    {
      __break(1u);
      return;
    }

    sub_18E1E8C38(v48, &v49);
    v31 = v50;
    sub_18E1C8570(&v49, v50);
    v32(v31);
    sub_18E220C28();
    if (v19 && v33 == v29)
    {
      break;
    }

    sub_18E1E2878();
    sub_18E1E2238();

    if (v31)
    {
      goto LABEL_48;
    }

    sub_18E2336EC(&v49);
  }

LABEL_48:

  v37 = sub_18E2F7F10();
  sub_18E1C551C(v37, v38);
  sub_18E2F7F10();
  sub_18E2235B8();
  sub_18E2336A4();
  if ((v39 & 1) == 0)
  {

    sub_18E24FF48(&v53);
    goto LABEL_53;
  }

  sub_18E23A548();
  sub_18E1C86E0();
  v40 = swift_allocObject();
  sub_18E2F8324(v40);
  sub_18E2402BC();
  sub_18E1C86E0();
  v41 = swift_allocObject();
  v42 = sub_18E1D001C(v41);
  memcpy(v42, v43, 0xD8uLL);
  sub_18E2F880C();
  sub_18E2F8364();
  sub_18E44E54C();
  sub_18E1D4C60(&type metadata for AssetBackedEmbeddingDenyListBase);
  if (v19)
  {

    sub_18E1E8F44(&type metadata for AssetBackedEmbeddingDenyListBase, &qword_1EABE2FE0, &qword_18E49CE00);
  }

  else
  {
    sub_18E44E49C();
    sub_18E221D40();

    sub_18E25E19C();
    v45 = *(v44 + 8);
    v46 = sub_18E1E2088();
    v47(v46);
  }

  sub_18E2F8098();
LABEL_28:
  sub_18E1E2968();
  sub_18E1C6650();
}

uint64_t sub_18E2DB474(uint64_t a1)
{
  v2 = sub_18E2F0DB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2DB4B0(uint64_t a1)
{
  v2 = sub_18E2F0DB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedTokenOutputDenyListBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E1E2614(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v3);
  v5 = *(v4 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C8E58();
  v7 = sub_18E2706EC(&qword_1EABE2330, &qword_18E4AACF8);
  sub_18E1C539C(v7);
  v9 = *(v8 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1CAE74();
  sub_18E1C975C();
  sub_18E2F0DB8();
  sub_18E1CF90C();
  if (!v1)
  {
    v11 = sub_18E1E63B4();
    sub_18E2706EC(v11, v12);
    sub_18E240610();
    sub_18E1C6B74();
    sub_18E1E1638(v13, v14, &qword_18E4AAD00);
    sub_18E1E2D5C();
    sub_18E44F26C();
    sub_18E1E2AEC();
    sub_18E1D5E94();
    sub_18E251D50();
    sub_18E1C68E8();
    sub_18E44F26C();
    sub_18E242C9C();
    sub_18E23386C();
    sub_18E1E33AC();
    sub_18E2C4300();
    sub_18E1D0108();
    sub_18E44F26C();
    sub_18E23A548();
    sub_18E1C86E0();
    v15 = swift_allocObject();
    sub_18E1CFEE4(v15);
    sub_18E2402BC();
    sub_18E1C86E0();
    v16 = swift_allocObject();
    v17 = sub_18E1D001C(v16);
    memcpy(v17, v18, 0xD8uLL);

    sub_18E22EA6C();

    sub_18E44E54C();
    sub_18E1E6510(&qword_18E4AAD00);
    if (v19)
    {
      v20 = sub_18E1CBE2C();
      v21(v20);
      sub_18E1E8F44(&qword_18E4AAD00, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E1FF2C8();
    }

    else
    {
      v22 = sub_18E44E49C();
      v24 = sub_18E1E2B98(v22, v23);
      v25(v24);
      sub_18E212008();
      v27 = *(v26 + 8);
      v28 = sub_18E202CF4();
      v29(v28);

      sub_18E1E6458();
    }

    sub_18E1E195C();
  }

  sub_18E1C9934(v0);
  sub_18E1E2968();
  sub_18E1C6650();
}

void AssetBackedTokenOutputDenyListBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E1D848C();
  v1 = sub_18E2706EC(&qword_1EABE2350, &qword_18E4AAD08);
  sub_18E1C4EAC(v1);
  v3 = *(v2 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1E88C0();
  sub_18E1D60D8();
  sub_18E2F0DB8();
  sub_18E1E394C();
  sub_18E223988();
  AssetBackedTokenOutputDenyListBundle.id.getter();
  sub_18E1CD638();
  v16[256] = 0;
  v5 = sub_18E1E33F0();
  sub_18E2706EC(v5, v6);
  sub_18E1C828C(&qword_1EABE2358);
  sub_18E1EA540();
  if (v0)
  {

    v7 = sub_18E1E3D10();
    v8(v7);
  }

  else
  {
    sub_18E2F7C48();
    sub_18E2F7C30();
    sub_18E2706EC(&qword_1EABE2360, &qword_18E4AAD10);
    if (sub_18E1E69D8())
    {
      sub_18E1E851C();
      sub_18E224D5C();
      sub_18E1E20AC();
      sub_18E24FE9C();
      sub_18E220CD8();
      sub_18E24FF48(&v17);
      sub_18E238EA8();
      sub_18E2706EC(&qword_1EABE2290, &qword_18E4AAC98);
      if (sub_18E223580())
      {
        sub_18E1E1400();
        sub_18E224DA8();
        sub_18E223E10();
        sub_18E2C4354();
        sub_18E224F80();
        v14 = sub_18E1E6C0C();
        v15(v14);
        sub_18E2CFAB0(v16);
        goto LABEL_7;
      }

      sub_18E228994();
      sub_18E1C8558();
      sub_18E202CD4();
    }

    else
    {
      sub_18E228994();
      sub_18E1C8558();
      sub_18E202CD4();
      v11 = v10 | 2;
    }

    sub_18E2231EC(v9, v11);
    v12 = sub_18E1E6C0C();
    v13(v12);
  }

LABEL_7:
  sub_18E1E2968();
  sub_18E1C6650();
}

void sub_18E2DBB58()
{
  sub_18E1C575C();
  v4 = sub_18E1D625C(v2, v3);
  v63 = sub_18E1C4EAC(v4);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v7 = sub_18E1E1FD8();
  v8 = sub_18E1C4EAC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1CA704();
  MEMORY[0x1EEE9AC00](v13);
  v15 = *(v0 + 40);
  v14 = *(v0 + 48);
  sub_18E1C5040(v1 + 2, v15);
  v16(v15);
  sub_18E201EA0();
  v18 = v18 && v17 == 0xE700000000000000;
  if (v18)
  {

    goto LABEL_10;
  }

  sub_18E232E1C();
  sub_18E1E2238();

  if (v15)
  {
LABEL_10:
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  sub_18E2F81FC();
  v20 = v1[5];
  v19 = v1[6];
  sub_18E1C5040(v1 + 2, v20);
  v21(v20);
  sub_18E1D0274();
  sub_18E221BD4();
  sub_18E44E28C();

  sub_18E220AAC();
  sub_18E3EF9F0();
  sub_18E1E2388(v22);
  if (v23)
  {
    sub_18E1E3320();
    sub_18E3EF9F0();
    v20 = v59;
  }

  *(v20 + 16) = v19;
  sub_18E1CFBC0(v10);
  v25 = sub_18E1CF778(v24);
  v26(v25);
  sub_18E224178();
LABEL_11:
  v27 = v1[10];
  sub_18E1C5040(v1 + 7, v27);
  v28(v27);
  sub_18E201EA0();
  if (v18 && v29 == 0xE700000000000000)
  {
  }

  else
  {
    sub_18E232E1C();
    sub_18E1CF9C4();

    if ((v27 & 1) == 0)
    {
      v31 = v1[10];
      sub_18E1C5040(v1 + 7, v31);
      v32(v31);
      sub_18E1D0274();
      sub_18E22362C();
      sub_18E22324C();
      sub_18E44E28C();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = *(v20 + 16);
        sub_18E1C6868();
        sub_18E3EF9F0();
        v20 = v61;
      }

      v34 = *(v20 + 16);
      v33 = *(v20 + 24);
      sub_18E2F79B8();
      if (v23)
      {
        sub_18E1E3320();
        sub_18E3EF9F0();
        v20 = v62;
      }

      sub_18E1CA184();
      sub_18E1EA5D4();
      v35();
    }
  }

  sub_18E44E37C();
  sub_18E223EB0();
  sub_18E201E40();
  if (*(v20 + 16))
  {
    sub_18E2F85FC();
    sub_18E2F85E4();
    if (v7)
    {

      __break(1u);
      return;
    }

    sub_18E2F85CC();
  }

  else
  {
  }

  sub_18E44E36C();
  if (v36)
  {
    v37 = sub_18E1E3DDC();
    v38(v37);
    sub_18E2405F8();
  }

  else
  {
    if (qword_1ED6A8418 != -1)
    {
      sub_18E1C8AB4();
    }

    v39 = sub_18E44E83C();
    sub_18E1C95EC(v39, qword_1ED6A9858);
    v40 = sub_18E223FF0();
    v41(v40);
    v42 = sub_18E44E80C();
    v43 = sub_18E44EE0C();
    if (sub_18E201860(v43))
    {
      v44 = sub_18E2342D4();
      v45 = sub_18E2202BC();
      sub_18E2F7E00(v45);
      sub_18E232ED8(4.8151e-34);
      sub_18E2F0564();
      sub_18E1E1DB4();
      v46 = sub_18E44F39C();
      sub_18E2F86D4(v46, v47);
      sub_18E233674();
      sub_18E220B30();
      v48 = sub_18E223294();
      v49(v48);
      v50 = sub_18E1C5BFC();
      sub_18E1C9624(v50, v51, v52);
      sub_18E233674();
      *(v44 + 14) = v10;
      sub_18E1EA5F8(&dword_18E1C1000, v53, v54, "Unable to construct resource bundle identifier from %s. Falling back to %s");
      sub_18E2F7A80();
      v55 = sub_18E1D1964();
      MEMORY[0x193ACD400](v55);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {

      v56 = sub_18E223294();
      v57(v56);
    }

    sub_18E201938();
    v58 = sub_18E1E3DF8();
    v10(v58);
  }

  sub_18E216A6C();
  sub_18E1C5544();
}

void TokenOutputDenyListBundle.init(with:resources:)()
{
  sub_18E1C62A0();
  v1 = v0;
  v2 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v2);
  v4 = *(v3 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E2352F4();
  sub_18E1E7430();
  sub_18E26C3FC(v1, v6);
  v7 = MEMORY[0x1E69E7CA0];
  if (!v57)
  {

    sub_18E1E8F44(&v56, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_21:
    sub_18E1CC400();
    sub_18E44EFFC();

    sub_18E1CA5A4();
    sub_18E2F7D28(v22);
LABEL_25:
    sub_18E44E99C();
    sub_18E22449C();

    v23 = sub_18E2F7D34();
LABEL_26:
    MEMORY[0x193ACC300](v23, 0xD000000000000013);

    sub_18E223E34();
LABEL_27:
    sub_18E2AE554();
    v24 = sub_18E1C8558();
    sub_18E1CFAB8(v24, v25);
    goto LABEL_28;
  }

  sub_18E1E84CC();
  if ((sub_18E2281F0() & 1) == 0)
  {

    goto LABEL_21;
  }

  v8 = v55;
  type metadata accessor for Utils();
  if (sub_18E32F0AC(v54, v55))
  {
    goto LABEL_8;
  }

  if (qword_1EABE0CF8 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v9 = sub_18E44E83C();
    sub_18E1CE8B4(v9, qword_1EAC7F560);

    v10 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E2F871C();
    if (sub_18E23CA28())
    {
      sub_18E1C5F74();
      v11 = sub_18E223E58();
      sub_18E2F7D4C(v11);
      v12 = sub_18E2F7C70(4.8149e-34);
      *(v7 + 4) = sub_18E1C9624(v12, v8, v13);
      sub_18E1D5F48(&dword_18E1C1000, v14, v15, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E221850();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      v7 = MEMORY[0x1E69E7CA0];
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

LABEL_8:
    sub_18E2F8824(&v56);
    if (!v57)
    {

      sub_18E1E8F44(&v56, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_24:
      sub_18E1CC400();
      sub_18E44EFFC();
      sub_18E1D44E0();
      sub_18E1E1914();
      MEMORY[0x193ACC300]();
      goto LABEL_25;
    }

    sub_18E1E84CC();
    if ((sub_18E2281F0() & 1) == 0)
    {

      goto LABEL_24;
    }

    sub_18E2F7ED0();
    sub_18E20196C();
LABEL_11:
    sub_18E220EA4();
    if (v21)
    {
      goto LABEL_43;
    }

    sub_18E1E1888();
    if (!v16)
    {
      break;
    }

    __break(1u);
LABEL_58:
    sub_18E1C7804();
  }

  sub_18E220C68();
  v17 = v58;
  sub_18E1E15F4(&v56, v57);
  v18 = sub_18E1CD91C();
  v19(v18);
  sub_18E220298();
  v21 = v21 && v20 == 0xD000000000000013;
  if (!v21)
  {
    sub_18E221494();
    sub_18E1E1F80();

    if (v17)
    {
      goto LABEL_31;
    }

    sub_18E207AC8(&v56);
    goto LABEL_11;
  }

LABEL_31:
  v26 = sub_18E1E1C30();
  sub_18E1C551C(v26, v27);
  sub_18E2706EC(&qword_1EABE0EA0, &qword_18E49D250);
  sub_18E1E1C30();
  if ((sub_18E2F7DB8() & 1) == 0)
  {
LABEL_43:

    sub_18E2336A4();
    sub_18E1CC400();
    sub_18E44EFFC();
    sub_18E1D44E0();
    sub_18E1E1914();
    MEMORY[0x193ACC300]();
    v23 = sub_18E2F7D40();
    goto LABEL_26;
  }

  v28 = sub_18E1E84CC();
  memcpy(v28, v29, 0xD8uLL);
  sub_18E2F8424(&v50);
  v30 = 0xD000000000000013;
  if (!v51)
  {

    sub_18E2CF258(&v54);

    sub_18E1E8F44(&v50, &qword_1EABE3B70, &qword_18E4AAB80);
    goto LABEL_46;
  }

  sub_18E1E1A40();
  if ((sub_18E223680() & 1) == 0)
  {

    sub_18E2CF258(&v54);

LABEL_46:
    sub_18E223A3C();
    sub_18E44EFFC();
    sub_18E221770();
    sub_18E1E9DA0();
    MEMORY[0x193ACC300]();
    sub_18E223530();
    sub_18E22449C();

    v39 = sub_18E1E884C();
LABEL_55:
    MEMORY[0x193ACC300](v39, v30);

    goto LABEL_27;
  }

  v31 = 0;
  v30 = v53;
  while (1)
  {
    sub_18E223270();
    if (v21)
    {

      sub_18E2CF258(&v54);

LABEL_54:
      sub_18E223A3C();
      sub_18E44EFFC();
      sub_18E221770();
      sub_18E1E9DA0();
      MEMORY[0x193ACC300]();
      v39 = sub_18E1E861C();
      goto LABEL_55;
    }

    sub_18E224CBC();
    if (v16)
    {
      __break(1u);
      return;
    }

    sub_18E1E8C38(v32, &v50);
    v33 = v51;
    v34 = v52;
    v35 = sub_18E1E1D24(&v50);
    v36(v35);
    sub_18E220C28();
    if (v21 && v37 == v30)
    {
      break;
    }

    sub_18E1E2878();
    sub_18E1E1F80();

    if (v33)
    {
      goto LABEL_49;
    }

    sub_18E1C9934(&v50);
    ++v31;
  }

LABEL_49:

  v40 = sub_18E1E2920();
  sub_18E1C551C(v40, v41);
  sub_18E1E2920();
  if ((sub_18E22086C() & 1) == 0)
  {

    sub_18E2CF258(&v54);
    goto LABEL_54;
  }

  sub_18E2F0E74();
  sub_18E1C86E0();
  v42 = swift_allocObject();
  sub_18E1E3B8C(v42);
  sub_18E2F0B30();
  sub_18E1C86E0();
  v43 = swift_allocObject();
  v44 = sub_18E1E9C70(v43);
  memcpy(v44, v45, 0xD8uLL);
  sub_18E1E19CC();
  sub_18E223960();
  sub_18E44E54C();
  sub_18E1D4C60(v34);
  if (v21)
  {

    sub_18E1E8F44(v34, &qword_1EABE2FE0, &qword_18E49CE00);
  }

  else
  {
    sub_18E44E49C();
    sub_18E2F7AB0();
    sub_18E25E19C();
    v47 = *(v46 + 8);
    v48 = sub_18E1CBE3C();
    v49(v48);
  }

  sub_18E1E1B50();
  sub_18E23492C();
LABEL_28:
  sub_18E1C6650();
}

uint64_t sub_18E2DC754()
{
  sub_18E1E2F2C();
  v4 = v4 && v3 == 0xE200000000000000;
  if (v4 || (sub_18E1E3894() & 1) != 0)
  {

    return 0;
  }

  else
  {
    sub_18E2200A4();
    v7 = v1 == (v2 | 2) && v6 == v0;
    if (v7 || (sub_18E1CF3DC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      sub_18E223BF4();
      if (v4 && v8 == v0)
      {

        return 2;
      }

      else
      {
        sub_18E1CF3DC();
        sub_18E1E6A20();
        sub_18E228220();
        if (v4)
        {
          return v10 + 1;
        }

        else
        {
          return v10;
        }
      }
    }
  }
}

uint64_t sub_18E2DC814(uint64_t a1)
{
  v2 = sub_18E2F0EC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2DC850(uint64_t a1)
{
  v2 = sub_18E2F0EC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TokenOutputDenyListBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E1E2614(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v3);
  v5 = *(v4 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C8E58();
  v7 = sub_18E2706EC(&qword_1EABE2370, &qword_18E4AAD18);
  sub_18E1C539C(v7);
  v9 = *(v8 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1CAE74();
  sub_18E1C975C();
  sub_18E2F0EC8();
  sub_18E1CF90C();
  if (!v1)
  {
    v11 = sub_18E1E63B4();
    sub_18E2706EC(v11, v12);
    sub_18E240610();
    sub_18E1C6B74();
    sub_18E1E1638(v13, v14, &qword_18E4AAD20);
    sub_18E1E2D5C();
    sub_18E44F26C();
    sub_18E1E2AEC();
    sub_18E1D5E94();
    sub_18E2C9624();
    sub_18E1C68E8();
    sub_18E44F26C();
    sub_18E242C9C();
    sub_18E23386C();
    sub_18E1E33AC();
    sub_18E2C3FB0();
    sub_18E1D0108();
    sub_18E44F26C();
    sub_18E2F0E74();
    sub_18E1C86E0();
    v15 = swift_allocObject();
    sub_18E1CFEE4(v15);
    sub_18E2F0B30();
    sub_18E1C86E0();
    v16 = swift_allocObject();
    v17 = sub_18E1D001C(v16);
    memcpy(v17, v18, 0xD8uLL);

    sub_18E22EA6C();

    sub_18E44E54C();
    sub_18E1E6510(&qword_18E4AAD20);
    if (v19)
    {
      v20 = sub_18E1CBE2C();
      v21(v20);
      sub_18E1E8F44(&qword_18E4AAD20, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E1FF2C8();
    }

    else
    {
      v22 = sub_18E44E49C();
      v24 = sub_18E1E2B98(v22, v23);
      v25(v24);
      sub_18E212008();
      v27 = *(v26 + 8);
      v28 = sub_18E202CF4();
      v29(v28);

      sub_18E1E6458();
    }

    sub_18E1E195C();
  }

  sub_18E1C9934(v0);
  sub_18E1E2968();
  sub_18E1C6650();
}

void TokenOutputDenyListBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E1D848C();
  v1 = sub_18E2706EC(&qword_1EABE2390, &qword_18E4AAD28);
  sub_18E1C4EAC(v1);
  v3 = *(v2 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1E88C0();
  sub_18E1D60D8();
  sub_18E2F0EC8();
  sub_18E1E394C();
  sub_18E223988();
  TokenOutputDenyListBundle.id.getter();
  sub_18E1CD638();
  v16[256] = 0;
  v5 = sub_18E1E33F0();
  sub_18E2706EC(v5, v6);
  sub_18E1C828C(&qword_1EABE2398);
  sub_18E1EA540();
  if (v0)
  {

    v7 = sub_18E1E3D10();
    v8(v7);
  }

  else
  {
    sub_18E2F7C48();
    sub_18E2F7C30();
    sub_18E2706EC(&qword_1EABE23A0, &qword_18E4AAD30);
    if (sub_18E1E69D8())
    {
      sub_18E1E851C();
      sub_18E224D5C();
      sub_18E1E20AC();
      sub_18E2C9678();
      sub_18E220CD8();
      sub_18E2CF258(&v17);
      sub_18E238EA8();
      sub_18E2706EC(&qword_1EABE22E0, &qword_18E4AACC0);
      if (sub_18E223580())
      {
        sub_18E1E1400();
        sub_18E224DA8();
        sub_18E223E10();
        sub_18E2C4004();
        sub_18E224F80();
        v14 = sub_18E1E6C0C();
        v15(v14);
        sub_18E2CFAE0(v16);
        goto LABEL_7;
      }

      sub_18E228994();
      sub_18E1C8558();
      sub_18E202CD4();
    }

    else
    {
      sub_18E228994();
      sub_18E1C8558();
      sub_18E202CD4();
      v11 = v10 | 2;
    }

    sub_18E2231EC(v9, v11);
    v12 = sub_18E1E6C0C();
    v13(v12);
  }

LABEL_7:
  sub_18E1E2968();
  sub_18E1C6650();
}

void AssetBackedTokenOutputDenyListWithDefaultsBundle.init(with:resources:)()
{
  sub_18E1C62A0();
  sub_18E2F80F4();
  sub_18E2239D8();
  v4 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v4);
  v6 = *(v5 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E2352F4();
  sub_18E1E7430();
  sub_18E26C3FC(v1, v8);
  v9 = MEMORY[0x1E69E7CA0];
  if (!v76)
  {

    sub_18E1E8F44(v75, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_22:
    sub_18E1C9550();
    sub_18E44EFFC();

    sub_18E1CA5A4();
    v75[0] = v0 + 4;
    v75[1] = v25;
    goto LABEL_26;
  }

  sub_18E228754();
  if ((sub_18E2281F0() & 1) == 0)
  {

    goto LABEL_22;
  }

  sub_18E2F83E4();
  v68 = v2;
  v10 = sub_18E223B64();
  if ((sub_18E32F0AC(v10, v11) & 1) == 0)
  {
    if (qword_1EABE0CF8 != -1)
    {
      sub_18E1C7804();
    }

    v12 = sub_18E44E83C();
    sub_18E1C95EC(v12, qword_1EAC7F560);
    sub_18E1E673C();

    v13 = sub_18E44E80C();
    sub_18E44EE0C();

    if (sub_18E1E1A10())
    {
      v14 = sub_18E1C5F74();
      v15 = sub_18E2216D0();
      v66 = v3;
      sub_18E212178(v15);
      sub_18E2F804C(4.8149e-34);
      *(v14 + 4) = sub_18E1C9624(v2, v9, v16);
      sub_18E1E33B8(&dword_18E1C1000, v17, v18, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E221850();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }
  }

  sub_18E243B40();
  sub_18E26C3FC(v1, v19);
  if (!v76)
  {

    sub_18E1E8F44(v75, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_25:
    sub_18E1C9550();
    sub_18E44EFFC();
    sub_18E1D7FD0();
    sub_18E2288EC();
LABEL_26:
    sub_18E44E99C();
    sub_18E2092F8();
    v26 = sub_18E1E2E14();
    MEMORY[0x193ACC300](v26);
LABEL_27:

    sub_18E2F7E78();
    goto LABEL_28;
  }

  sub_18E228754();
  if ((sub_18E2F7C18() & 1) == 0)
  {

    goto LABEL_25;
  }

  sub_18E2332FC();
  while (1)
  {
    sub_18E24177C();
    if (v24)
    {
      goto LABEL_43;
    }

    sub_18E223464();
    if (v20)
    {
      __break(1u);
LABEL_66:

      sub_18E2CF438(v74);
      sub_18E24FF48(v71);

      sub_18E2239D8();
LABEL_73:
      sub_18E220910();
      sub_18E44EFFC();
      sub_18E237298();
      sub_18E235264();
      v60 = sub_18E1D4B44();
      MEMORY[0x193ACC300](v60);
LABEL_74:

LABEL_28:
      sub_18E2AE554();
      v27 = sub_18E1C8558();
      sub_18E1CFAB8(v27, v28);
LABEL_29:
      sub_18E1E29D0();
      sub_18E1C6650();
      return;
    }

    sub_18E2F88CC();
    v21 = v76;
    sub_18E1C8570(v75, v76);
    v22(v21);
    sub_18E235A6C();
    v24 = v24 && v23 == v3;
    if (v24)
    {
      break;
    }

    sub_18E240E4C();
    sub_18E201F20();
    if (v21)
    {
      goto LABEL_31;
    }

    sub_18E1C9934(v75);
    sub_18E21209C();
  }

LABEL_31:
  v29 = sub_18E2235F8();
  sub_18E1C551C(v29, v30);
  sub_18E2706EC(&unk_1EABE33F0, &unk_18E49D240);
  sub_18E2235F8();
  if ((sub_18E2F7DB8() & 1) == 0)
  {
LABEL_43:

    sub_18E2239D8();
    sub_18E1C9550();
    sub_18E44EFFC();
    sub_18E1D7FD0();
    sub_18E2288EC();
    v38 = sub_18E2201C4();
    MEMORY[0x193ACC300](v38);
    goto LABEL_27;
  }

  v31 = sub_18E228754();
  memcpy(v31, v32, 0xD8uLL);
  sub_18E2F8158();
  sub_18E2239D8();
  sub_18E1E7400(v33);
  if (!v73)
  {

    sub_18E2CF438(v74);

    sub_18E1E8F44(v72, &qword_1EABE3B70, &qword_18E4AAB80);
    goto LABEL_46;
  }

  sub_18E238998();
  if ((sub_18E2281F0() & 1) == 0)
  {

    sub_18E2CF438(v74);

LABEL_46:
    sub_18E1D01D8();
    sub_18E44EFFC();
    sub_18E1DD584();
    sub_18E216910();
    sub_18E237D80();
    sub_18E2092F8();
    v39 = sub_18E1E2E14();
    MEMORY[0x193ACC300](v39);
LABEL_61:

    sub_18E2F7E4C();
    goto LABEL_28;
  }

  sub_18E2F7EE4();
  while (1)
  {
    sub_18E24177C();
    if (v24)
    {
      goto LABEL_60;
    }

    sub_18E223464();
    if (v20)
    {
      break;
    }

    sub_18E2F8674();
    v34 = v73;
    sub_18E1C8570(v72, v73);
    v35(v34);
    sub_18E235A6C();
    if (v24 && v36 == v3)
    {

LABEL_48:
      v40 = sub_18E2168F8();
      sub_18E1C551C(v40, v41);
      sub_18E2168F8();
      if ((sub_18E2F868C() & 1) == 0)
      {
LABEL_60:

        sub_18E2CF438(v74);

        sub_18E2239D8();
        sub_18E1D01D8();
        sub_18E44EFFC();
        sub_18E1DD584();
        sub_18E216910();
        v49 = sub_18E2201C4();
        MEMORY[0x193ACC300](v49);
        goto LABEL_61;
      }

      v42 = sub_18E238998();
      memcpy(v42, v43, 0xD8uLL);
      sub_18E2239D8();
      sub_18E1E7400(v44);
      if (v70)
      {
        sub_18E2F7FC0();
        if (sub_18E2281F0())
        {

          sub_18E2F7F54();
          while (1)
          {
            sub_18E24177C();
            if (v24)
            {
              goto LABEL_66;
            }

            sub_18E223464();
            if (v20)
            {
              goto LABEL_77;
            }

            sub_18E1E8C38(v3, v69);
            v45 = v70;
            sub_18E1C8570(v69, v70);
            v46(v45);
            sub_18E223708();
            if (v24 && v47 == v1)
            {

LABEL_68:

              v51 = sub_18E2F7ACC();
              sub_18E1C551C(v51, v52);
              sub_18E2F7ACC();
              sub_18E2235B8();
              sub_18E2239D8();
              v53 = v65;
              if ((v54 & 1) == 0)
              {

                sub_18E2CF438(v74);
                sub_18E24FF48(v71);
                goto LABEL_73;
              }

              sub_18E1D40A4();
              sub_18E1C86E0();
              v55 = swift_allocObject();
              sub_18E26566C(v55);
              sub_18E23A548();
              sub_18E1C86E0();
              v56 = swift_allocObject();
              v57 = sub_18E1E8338(v56);
              sub_18E2F889C(v57);
              sub_18E2402BC();
              sub_18E1C86E0();
              v58 = swift_allocObject();
              v59 = sub_18E1E8590(v58);
              sub_18E2F865C(v59);

              sub_18E1D5F00();
              sub_18E44E50C();
              sub_18E44E54C();
              sub_18E1D4C60(v67);
              if (v24)
              {

                sub_18E1E8F44(v67, &qword_1EABE2FE0, &qword_18E49CE00);
              }

              else
              {
                sub_18E44E49C();
                sub_18E221D40();

                sub_18E25E19C();
                v62 = *(v61 + 8);
                v63 = sub_18E1CFFC0();
                v64(v63);

                v53 = v67;
              }

              *v66 = v68;
              v66[1] = v53;
              sub_18E1E1040();
              goto LABEL_29;
            }

            sub_18E1E1530();
            sub_18E1E2238();

            if (v45)
            {
              goto LABEL_68;
            }

            sub_18E2336EC(v69);
          }
        }

        sub_18E2CF438(v74);
        sub_18E24FF48(v71);
      }

      else
      {

        sub_18E2CF438(v74);
        sub_18E24FF48(v71);

        sub_18E1E8F44(v69, &qword_1EABE3B70, &qword_18E4AAB80);
      }

      sub_18E220910();
      sub_18E44EFFC();
      sub_18E237298();
      sub_18E235264();
      sub_18E237D80();
      sub_18E2092F8();
      v50 = sub_18E1E2E14();
      MEMORY[0x193ACC300](v50);
      goto LABEL_74;
    }

    sub_18E240E4C();
    sub_18E201F20();
    if (v34)
    {
      goto LABEL_48;
    }

    sub_18E1C9934(v72);
    sub_18E21209C();
  }

  __break(1u);
LABEL_77:
  __break(1u);
}

uint64_t sub_18E2DD8A0(uint64_t (*a1)(void))
{
  v2 = a1();
  sub_18E1DF33C(v2);
  sub_18E1C5D78();

  return v1;
}

void _s12ModelCatalog47AssetBackedTokenInputDenyListWithDefaultsBundleV05assetD9ResourcesSayAA0cD8Resource_pGvg_0()
{
  sub_18E1C575C();
  v3 = v1[5];
  v4 = sub_18E228964(v1[6]);
  sub_18E221834(v4);
  sub_18E1CF2D8();
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v18 = sub_18E1D6328(v10, v11, v12, v13, v14, v15, v16, v17, v77);
  (v2)(v18);
  sub_18E220AAC();
  sub_18E211EDC();
  sub_18E235294(v19);
  if (v20)
  {
    sub_18E1D4370();
    sub_18E211EDC();
    sub_18E216B58(v75);
  }

  sub_18E237A38();
  MEMORY[0x1EEE9AC00](v21);
  v22 = sub_18E2112EC();
  (v2)(v22);
  v23 = sub_18E1C5820(v79);
  sub_18E1DF2A8(v23, v24, v25, v26, v27);
  v28 = sub_18E2167D8();
  v29(v28);
  v30 = v1[10];
  v77 = v1[11];
  sub_18E221834(v1 + 7);
  v78 = &v77;
  sub_18E1CF2D8();
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_18E2F7994();
  v35 = sub_18E221D08(v34);
  v6(v35);
  sub_18E1D4294();
  if (v20)
  {
    sub_18E1D4370();
    sub_18E211EDC();
    v79 = v36;
    v80 = v36;
  }

  else
  {
    v79 = v0;
  }

  MEMORY[0x1EEE9AC00](v36);
  v37 = sub_18E2112EC();
  v6(v37);
  v38 = sub_18E1C5820(v77);
  sub_18E1DF2A8(v38, v39, v40, v41, v42);
  v43 = sub_18E2F81B4();
  v44(v43);
  v45 = v1[15];
  v46 = v1[16];
  sub_18E221834(v1 + 12);
  v78 = &v77;
  sub_18E1CF2D8();
  v48 = *(v47 + 64);
  v50 = MEMORY[0x1EEE9AC00](v49);
  v58 = sub_18E1D4D58(v50, v51, v52, v53, v54, v55, v56, v57, v77);
  (v2)(v58);
  sub_18E234004();
  if (v20)
  {
    sub_18E2F79AC();
    sub_18E211EDC();
    v79 = v76;
    v80 = v76;
  }

  sub_18E2F81DC();
  v60 = MEMORY[0x1EEE9AC00](v59);
  sub_18E1CEAD0(v60, v61, v62, v63, v64, v65, v66, v67, v77);
  sub_18E2F80D4();
  v2();
  v68 = *(v46 + 8);
  v69 = sub_18E1CF9A0();
  sub_18E1DF2A8(v69, v70, v71, v45, v72);
  v73 = sub_18E223F60();
  v74(v73, v45);
  sub_18E1C5544();
}

uint64_t sub_18E2DDBD0(uint64_t a1)
{
  v2 = sub_18E2F0F84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2DDC0C(uint64_t a1)
{
  v2 = sub_18E2F0F84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedTokenOutputDenyListWithDefaultsBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E23A9B0(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v3);
  v5 = *(v4 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C8E58();
  v7 = sub_18E2706EC(&qword_1EABE23A8, &qword_18E4AAD38);
  sub_18E1C539C(v7);
  v9 = *(v8 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C61D0();
  v12 = v0[3];
  v11 = v0[4];
  sub_18E1C975C();
  sub_18E2F0F84();
  sub_18E1E2974();
  if (!v1)
  {
    v13 = sub_18E233460();
    sub_18E2706EC(v13, v14);
    sub_18E2F7E84();
    sub_18E1C6B74();
    sub_18E1E1638(v15, v16, &qword_18E4AAD40);
    sub_18E1E2D5C();
    sub_18E44F26C();
    sub_18E2F7E40();
    sub_18E1E1F48();
    sub_18E2C76F0();
    sub_18E1C68E8();
    sub_18E44F26C();
    sub_18E2F7E34();
    sub_18E1E3E3C();
    sub_18E1E33AC();
    sub_18E251D50();
    sub_18E1D0108();
    sub_18E44F26C();
    sub_18E1E323C();
    sub_18E223BE8();
    sub_18E2C4300();
    sub_18E1E2CB0();
    sub_18E44F26C();
    sub_18E1D40A4();
    sub_18E1C86E0();
    v17 = swift_allocObject();
    sub_18E1D41CC(v17);
    sub_18E23A548();
    sub_18E1C86E0();
    v18 = swift_allocObject();
    sub_18E1E320C(v18);
    sub_18E2402BC();
    sub_18E1C86E0();
    v19 = swift_allocObject();
    v20 = sub_18E2092EC(v19);
    sub_18E223C30(v20);

    sub_18E201AA0();

    sub_18E44E54C();
    sub_18E1E6510(v30);
    if (v21)
    {
      v22 = sub_18E1CBE2C();
      v23(v22);
      sub_18E1E8F44(v30, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E1E3AC0();
    }

    else
    {
      sub_18E44E49C();
      v24 = sub_18E1CBE2C();
      v25(v24);
      sub_18E212008();
      v27 = *(v26 + 8);
      v28 = sub_18E1E63C0();
      v29(v28);

      sub_18E1E7B38();
    }

    sub_18E201A20();
  }

  sub_18E1C9934(v0);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void AssetBackedTokenOutputDenyListWithDefaultsBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E1D848C();
  v1 = sub_18E2706EC(&qword_1EABE23B8, &qword_18E4AAD48);
  sub_18E1C4EAC(v1);
  v3 = *(v2 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1E88C0();
  sub_18E1D60D8();
  sub_18E2F0F84();
  sub_18E1E394C();
  sub_18E221B08();
  AssetBackedTokenOutputDenyListWithDefaultsBundle.id.getter();
  sub_18E1CD638();
  v19[256] = 0;
  v5 = sub_18E1E33F0();
  sub_18E2706EC(v5, v6);
  sub_18E1C828C(&qword_1EABDF978);
  sub_18E1E1104();
  if (v0)
  {

    v7 = sub_18E1E3D10();
    v8(v7);
  }

  else
  {
    sub_18E2F7C48();
    sub_18E2F7C30();
    sub_18E2706EC(&qword_1EABE2228, &qword_18E4AAC50);
    if (sub_18E2387D0())
    {
      sub_18E221668();
      sub_18E2333B0();
      sub_18E2F8034();
      sub_18E2C7744();
      sub_18E2F79C4();
      sub_18E2CF438(&v20);
      sub_18E2F86A4();
      sub_18E2706EC(&qword_1EABE2360, &qword_18E4AAD10);
      if (sub_18E201784())
      {
        sub_18E220844();
        sub_18E221B14();
        sub_18E2F7E6C();
        sub_18E24FE9C();
        sub_18E224C68();
        sub_18E24FF48(v19);
        sub_18E2F8614();
        sub_18E2706EC(&qword_1EABE2290, &qword_18E4AAC98);
        if (sub_18E2372B0())
        {
          sub_18E201EF8();
          sub_18E2232D0(&v17);
          sub_18E2F7DE8();
          sub_18E2C4354();
          sub_18E2F7A24();
          v14 = sub_18E1E6C0C();
          v15(v14);
          sub_18E2CFAB0(&v18);
          goto LABEL_7;
        }

        sub_18E228994();
        sub_18E1C8558();
        sub_18E2F7970();
        v10 = v16 + 2;
      }

      else
      {
        sub_18E228994();
        sub_18E1C8558();
        sub_18E2F7970();
        v10 = v13 | 4;
      }
    }

    else
    {
      sub_18E228994();
      sub_18E1C8558();
      sub_18E2F7970();
    }

    sub_18E2231EC(v9, v10);
    v11 = sub_18E1E6C0C();
    v12(v11);
  }

LABEL_7:
  sub_18E1E2968();
  sub_18E1C6650();
}

void sub_18E2DE304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_18E1CFF04();
  a27 = v29;
  a28 = v30;
  sub_18E240A94();
  v32 = v31();
  v33 = sub_18E1DF33C(v32);

  if (*(v33 + 16))
  {
    v34 = sub_18E200E68();
    sub_18E224604(v34);
    sub_18E224080();
    do
    {
      sub_18E241A14(v35, v36);
      sub_18E1E15F4(&a11, a14);
      v37 = sub_18E208028();
      v38(v37);
      sub_18E1C9934(&a11);
      sub_18E1E686C();
      if (v40)
      {
        sub_18E2F7A64(v39 > 1);
      }

      sub_18E1E3050();
    }

    while (!v41);
  }

  v43 = (v28)(v42);
  sub_18E1DF33C(v43);
  sub_18E233F98();
  if (*(v28 + 16))
  {
    v44 = sub_18E200E68();
    sub_18E2F7CE0(v44);
    sub_18E2F7C0C();
    do
    {
      sub_18E232E6C(v45, v46);
      v47 = sub_18E1C8C94(&a11);
      v48(v47);
      sub_18E221954();
      sub_18E1C9934(&a11);
      sub_18E239C74();
      if (v40)
      {
        sub_18E201F38(v49 > 1);
      }

      sub_18E1CA5D4();
    }

    while (!v41);
  }

  v50 = sub_18E1E6BB0();
  sub_18E290008(v50, v51);
  sub_18E1E6A20();

  sub_18E2079F8();
}

void sub_18E2DE4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_18E2F7B84();
  a23 = v25;
  a24 = v26;
  sub_18E21D0B4();
  v27();
  sub_18E244890();

  v29 = (v24)(v28);
  sub_18E1DF33C(v29);
  v30 = sub_18E233F98();
  if (*(v24 + 16))
  {
    do
    {
      sub_18E2F7CF8(v30);
      v31 = sub_18E1CAD4C(&a10);
      v32(v31);
      sub_18E1C9934(&a10);
      sub_18E1D42A4();
      sub_18E44EB4C();

      sub_18E22365C();
    }

    while (!v33);

    sub_18E2232AC();
  }

  else
  {
    sub_18E2232AC();
  }
}

void sub_18E2DE674()
{
  sub_18E1C575C();
  v97 = v3;
  v96 = v4;
  v5 = v0;
  v100 = v6;
  v99 = sub_18E1CFD4C();
  v7 = sub_18E1C4EAC(v99);
  v98 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = sub_18E1E1FD8();
  v12 = sub_18E1C4EAC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_18E1CA704();
  MEMORY[0x1EEE9AC00](v17);
  sub_18E234640();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v94 - v19;
  v22 = v0[5];
  v21 = v0[6];
  sub_18E1C5040(v5 + 2, v22);
  v23(v22);
  sub_18E201EA0();
  v25 = v25 && v24 == 0xE700000000000000;
  if (v25)
  {

    goto LABEL_10;
  }

  sub_18E232E1C();
  sub_18E1E2238();

  if (v22)
  {
LABEL_10:
    v27 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v95 = v2;
  v27 = v5[5];
  v26 = v5[6];
  sub_18E1C5040(v5 + 2, v27);
  v28(v27);
  sub_18E1D0274();
  sub_18E1E2414();

  sub_18E220AAC();
  sub_18E3EF9F0();
  sub_18E2F7F8C(v29);
  if (v30)
  {
    sub_18E1E3320();
    sub_18E3EF9F0();
    v27 = v87;
  }

  *(v27 + 16) = v26;
  sub_18E1CFBC0(v14);
  sub_18E1E1938(v31);
  v34(v32 + v33 * "embeddingDenyListVariant", v20, v11);
LABEL_11:
  v35 = v5[10];
  v36 = v5[11];
  sub_18E1C5040(v5 + 7, v35);
  v37(v35);
  sub_18E232B70();
  if (v25 && v38 == 0xE700000000000000)
  {
  }

  else
  {
    sub_18E2208A8();
    sub_18E1E6A20();
    if ((v36 & 1) == 0)
    {
      v95 = v11;
      v40 = v5[10];
      v41 = v5[11];
      sub_18E1C5040(v5 + 7, v40);
      v42(v40);
      sub_18E223AE4();
      sub_18E44E28C();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = *(v27 + 16);
        sub_18E1C6868();
        sub_18E3EF9F0();
        v27 = v89;
      }

      sub_18E221FB8();
      if (v30)
      {
        sub_18E207B20();
        v27 = v90;
      }

      v43 = v95;
      *(v27 + 16) = v40;
      sub_18E1CFBC0(v14);
      sub_18E1E1938(v44);
      v47(v45 + v46 * v41, v1, v43);
    }
  }

  v48 = v5[15];
  v49 = v5[16];
  sub_18E1C5040(v5 + 12, v48);
  v50(v48);
  sub_18E232B70();
  if (v25 && v51 == 0xE700000000000000)
  {
  }

  else
  {
    sub_18E2208A8();
    sub_18E1E6A20();
    if ((v49 & 1) == 0)
    {
      v48 = v5[15];
      sub_18E1C5040(v5 + 12, v48);
      v53(v48);
      sub_18E223AE4();
      sub_18E2F82C4();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v91 = *(v27 + 16);
        sub_18E1C6868();
        sub_18E3EF9F0();
        v27 = v92;
      }

      sub_18E221FB8();
      if (v30)
      {
        sub_18E207B20();
        v27 = v93;
      }

      *(v27 + 16) = v48;
      v55 = *(v14 + 32);
      v54 = v14 + 32;
      v56 = *(v54 + 48);
      sub_18E1E2708();
      v57 = *(v54 + 40);
      sub_18E1EA5D4();
      v58();
    }
  }

  sub_18E44E37C();
  v59 = *v5;
  v60 = v5[1];

  MEMORY[0x193ACBAD0](v59, v60);
  if (*(v27 + 16))
  {
    v102 = v27;

    sub_18E2EEDB8(&v102);

    sub_18E44E2FC();
  }

  else
  {
  }

  v61 = sub_18E44E36C();
  if (v62)
  {
    v63 = v61;
    v64 = v62;
    v65 = *(v98 + 8);
    v66 = sub_18E1CF9A0();
    v67(v66);
    v59 = v63;
    v60 = v64;
  }

  else
  {
    if (qword_1ED6A8418 != -1)
    {
      sub_18E1C8AB4();
    }

    v68 = sub_18E44E83C();
    sub_18E1C95EC(v68, qword_1ED6A9858);
    v69 = sub_18E2F7CA0();
    v96(v69);
    v70 = sub_18E44E80C();
    v71 = sub_18E44EE0C();
    if (sub_18E201860(v71))
    {
      v48 = sub_18E2342D4();
      v101 = sub_18E2202BC();
      *v48 = 136315394;
      sub_18E1E1B74();
      sub_18E2F0564();
      sub_18E1E1DB4();
      v72 = sub_18E44F39C();
      v74 = v73;
      sub_18E1C9624(v72, v73, &v101);
      sub_18E223638();

      sub_18E223BA0();
      v75 = sub_18E2202E0();
      v76(v75);
      v77 = sub_18E2016D4();
      sub_18E1C9624(v77, v78, v79);
      sub_18E1E6C9C();

      *(v48 + 14) = v74;
      sub_18E2F8344(&dword_18E1C1000, v80, v81, "Unable to construct resource bundle identifier from %s. Falling back to %s");
      sub_18E2F7A80();
      v82 = sub_18E1D1964();
      MEMORY[0x193ACD400](v82);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {

      v83 = sub_18E2202E0();
      v84(v83);
    }

    sub_18E2F82A4();
    v85 = sub_18E1CF9A0();
    (v48)(v85);
  }

  sub_18E220C1C();
  *v86 = v59;
  v86[1] = v60;
  sub_18E1C5544();
}

uint64_t sub_18E2DED40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, void *)@<X5>, void (*a7)(uint64_t, void *)@<X6>, uint64_t (*a8)(uint64_t, void *)@<X7>, void *a9@<X8>)
{
  *a9 = a1;
  a9[1] = a2;
  a6(a3, a9 + 2);
  a7(a4, a9 + 7);

  return a8(a5, a9 + 12);
}

void TokenOutputDenyListWithDefaultsBundle.init(with:resources:)()
{
  sub_18E1C62A0();
  sub_18E2F7E20();
  v3 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v3);
  v5 = *(v4 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C57AC();
  sub_18E1E7430();
  sub_18E26C3FC(v1, v7);
  if (!v76)
  {

    sub_18E1E8F44(v75, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_22:
    sub_18E1C9550();
    sub_18E44EFFC();

    sub_18E1CA5A4();
    v75[0] = 0xD000000000000015;
    v75[1] = v24;
    goto LABEL_26;
  }

  sub_18E228754();
  if ((sub_18E223994() & 1) == 0)
  {

    goto LABEL_22;
  }

  sub_18E2F8264();
  v8 = sub_18E2201C4();
  if ((sub_18E32F0AC(v8, v9) & 1) == 0)
  {
    if (qword_1EABE0CF8 != -1)
    {
      sub_18E1C7804();
    }

    v10 = sub_18E44E83C();
    sub_18E1CE8B4(v10, qword_1EAC7F560);

    v11 = sub_18E44E80C();
    sub_18E44EE0C();

    if (sub_18E1E1A10())
    {
      v66 = v0;
      v12 = sub_18E1C5F74();
      v13 = sub_18E2216D0();
      sub_18E212178(v13);
      sub_18E2F804C(4.8149e-34);
      *(v12 + 4) = sub_18E1C9624(0xD000000000000011, v2, v14);
      sub_18E1E33B8(&dword_18E1C1000, v15, v16, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E221850();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }
  }

  sub_18E243B40();
  sub_18E26C3FC(v1, v17);
  if (!v76)
  {

    sub_18E1E8F44(v75, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_25:
    sub_18E1C9550();
    sub_18E44EFFC();
    sub_18E1D7FD0();
    sub_18E2F7C90();
    sub_18E2288EC();
LABEL_26:
    sub_18E44E99C();
    sub_18E2092F8();
    v25 = sub_18E1E2E14();
    MEMORY[0x193ACC300](v25);
LABEL_27:

    sub_18E2F7E78();
    goto LABEL_28;
  }

  sub_18E228754();
  if ((sub_18E223994() & 1) == 0)
  {

    goto LABEL_25;
  }

  sub_18E201714();
  while (1)
  {
    sub_18E220EA4();
    if (v23)
    {
      goto LABEL_43;
    }

    sub_18E1E1888();
    if (v18)
    {
      __break(1u);
LABEL_66:

      sub_18E2CF468(v74);
      sub_18E2CF258(v70);

LABEL_73:
      sub_18E220910();
      sub_18E44EFFC();
      sub_18E237298();
      sub_18E235264();
      v60 = sub_18E1CBE3C();
      MEMORY[0x193ACC300](v60);
LABEL_74:

LABEL_28:
      sub_18E2AE554();
      v26 = sub_18E1C8558();
      sub_18E1CFAB8(v26, v27);
LABEL_29:
      sub_18E1E86A4();
      sub_18E1C6650();
      return;
    }

    sub_18E2F88CC();
    v19 = v77;
    sub_18E1E15F4(v75, v76);
    v20 = sub_18E1CD91C();
    v21(v20);
    sub_18E235A6C();
    v23 = v23 && v22 == v2;
    if (v23)
    {
      break;
    }

    sub_18E240E4C();
    sub_18E1E1F80();

    if (v19)
    {
      goto LABEL_31;
    }

    sub_18E1C9934(v75);
    sub_18E23ED54();
  }

LABEL_31:
  v28 = sub_18E2235F8();
  sub_18E1C551C(v28, v29);
  sub_18E2706EC(&qword_1EABE0EA0, &qword_18E49D250);
  sub_18E2235F8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_43:

    sub_18E2239D8();
    sub_18E1C9550();
    sub_18E44EFFC();
    sub_18E1D7FD0();
    sub_18E2288EC();
    v39 = sub_18E2201C4();
    MEMORY[0x193ACC300](v39);
    goto LABEL_27;
  }

  v30 = sub_18E228754();
  memcpy(v30, v31, 0xD8uLL);
  sub_18E2F8158();
  sub_18E2239D8();
  sub_18E1E7400(v32);
  if (!v72)
  {

    sub_18E2CF468(v74);

    sub_18E1E8F44(v71, &qword_1EABE3B70, &qword_18E4AAB80);
    goto LABEL_46;
  }

  sub_18E238998();
  if ((sub_18E2281F0() & 1) == 0)
  {

    sub_18E2CF468(v74);

LABEL_46:
    sub_18E1D01D8();
    sub_18E44EFFC();
    sub_18E1DD584();
    sub_18E216910();
    sub_18E237D80();
    sub_18E2092F8();
    v40 = sub_18E1E2E14();
    MEMORY[0x193ACC300](v40);
LABEL_61:

    sub_18E2F7E4C();
    goto LABEL_28;
  }

  sub_18E2F7E0C();
  while (1)
  {
    sub_18E220EA4();
    if (v23)
    {
      goto LABEL_60;
    }

    sub_18E1E1888();
    if (v18)
    {
      break;
    }

    sub_18E2F8674();
    v33 = v72;
    v34 = v73;
    sub_18E1E15F4(v71, v72);
    v35 = sub_18E22879C(v34);
    v36(v35, v34);
    sub_18E235A6C();
    if (v23 && v37 == v2)
    {

LABEL_48:
      v41 = sub_18E2168F8();
      sub_18E1C551C(v41, v42);
      sub_18E2168F8();
      if ((sub_18E2F85B4() & 1) == 0)
      {
LABEL_60:

        sub_18E2CF468(v74);

        sub_18E2239D8();
        sub_18E1D01D8();
        sub_18E44EFFC();
        sub_18E1DD584();
        sub_18E216910();
        v51 = sub_18E2201C4();
        MEMORY[0x193ACC300](v51);
        goto LABEL_61;
      }

      v43 = sub_18E238998();
      memcpy(v43, v44, 0xD8uLL);
      sub_18E1E7400(&v67);
      if (v68)
      {
        sub_18E2F7FC0();
        if (sub_18E223680())
        {

          v45 = v69;
          while (1)
          {
            sub_18E2329E0();
            if (v23)
            {
              goto LABEL_66;
            }

            sub_18E209364();
            if (v18)
            {
              goto LABEL_77;
            }

            sub_18E1E8C38(v65, &v67);
            v46 = v68;
            v47 = sub_18E1E1D24(&v67);
            v48(v47);
            sub_18E201EA0();
            if (v23 && v49 == v45)
            {

LABEL_68:

              v53 = sub_18E2F7ACC();
              sub_18E1C551C(v53, v54);
              sub_18E2F7ACC();
              if ((sub_18E22086C() & 1) == 0)
              {

                sub_18E2CF468(v74);
                sub_18E2CF258(v70);
                goto LABEL_73;
              }

              sub_18E2F0994();
              sub_18E1C86E0();
              v55 = swift_allocObject();
              sub_18E26566C(v55);
              sub_18E2F0E74();
              sub_18E1C86E0();
              v56 = swift_allocObject();
              v57 = sub_18E1E8338(v56);
              sub_18E2F889C(v57);
              sub_18E2F0B30();
              sub_18E1C86E0();
              v58 = swift_allocObject();
              v59 = sub_18E1E8590(v58);
              sub_18E2F865C(v59);
              sub_18E1E19CC();
              sub_18E2F8244();
              sub_18E44E54C();
              sub_18E1D4C60(v66);
              if (v23)
              {

                sub_18E1E8F44(v66, &qword_1EABE2FE0, &qword_18E49CE00);
              }

              else
              {
                sub_18E44E49C();
                sub_18E2F7AB0();
                sub_18E25E19C();
                v62 = *(v61 + 8);
                v63 = sub_18E1CBE3C();
                v64(v63);
              }

              sub_18E1E1B50();
              sub_18E1E1040();
              goto LABEL_29;
            }

            sub_18E1E1530();
            sub_18E1E1F80();

            if (v46)
            {
              goto LABEL_68;
            }

            sub_18E1C9934(&v67);
            sub_18E2F7D58();
          }
        }

        sub_18E2CF468(v74);
        sub_18E2CF258(v70);
      }

      else
      {

        sub_18E2CF468(v74);
        sub_18E2CF258(v70);

        sub_18E1E8F44(&v67, &qword_1EABE3B70, &qword_18E4AAB80);
      }

      sub_18E220910();
      sub_18E44EFFC();
      sub_18E237298();
      sub_18E235264();
      sub_18E44E99C();
      sub_18E2092F8();
      v52 = sub_18E1E2E14();
      MEMORY[0x193ACC300](v52);
      goto LABEL_74;
    }

    sub_18E240E4C();
    sub_18E1E1F80();

    if (v33)
    {
      goto LABEL_48;
    }

    sub_18E1C9934(v71);
    sub_18E23ED54();
  }

  __break(1u);
LABEL_77:
  __break(1u);
}

void _s12ModelCatalog36TokenInputDenyListWithDefaultsBundleV9resourcesSayAA0B8Resource_pGvg_0()
{
  sub_18E1C575C();
  v3 = v1[5];
  v4 = sub_18E228964(v1[6]);
  sub_18E221834(v4);
  sub_18E1CF2D8();
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v18 = sub_18E1D6328(v10, v11, v12, v13, v14, v15, v16, v17, v76);
  (v2)(v18);
  sub_18E220AAC();
  sub_18E2451D0();
  sub_18E235294(v19);
  if (v20)
  {
    sub_18E1D4370();
    sub_18E2451D0();
    sub_18E216B58(v74);
  }

  sub_18E237A38();
  MEMORY[0x1EEE9AC00](v21);
  v22 = sub_18E2112EC();
  (v2)(v22);
  v23 = sub_18E1C5820(*(v78 + 8));
  sub_18E1DF2A8(v23, v24, v25, v26, v27);
  v28 = sub_18E2167D8();
  v29(v28);
  v30 = v1[10];
  v76 = v1[11];
  sub_18E221834(v1 + 7);
  v77 = &v76;
  sub_18E1CF2D8();
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_18E2F7994();
  v35 = sub_18E221D08(v34);
  v6(v35);
  sub_18E1D4294();
  if (v20)
  {
    sub_18E1D4370();
    sub_18E2451D0();
    v78 = v36;
    v79 = v36;
  }

  else
  {
    v78 = v0;
  }

  MEMORY[0x1EEE9AC00](v36);
  v37 = sub_18E2112EC();
  v6(v37);
  v38 = sub_18E1C5820(*(v76 + 8));
  sub_18E1DF2A8(v38, v39, v40, v41, v42);
  v43 = sub_18E2F81B4();
  v44(v43);
  v45 = v1[15];
  v46 = v1[16];
  sub_18E221834(v1 + 12);
  v77 = &v76;
  sub_18E1CF2D8();
  v48 = *(v47 + 64);
  v50 = MEMORY[0x1EEE9AC00](v49);
  v58 = sub_18E1D4D58(v50, v51, v52, v53, v54, v55, v56, v57, v76);
  (v2)(v58);
  sub_18E234004();
  if (v20)
  {
    sub_18E2F79AC();
    sub_18E2451D0();
    v78 = v75;
    v79 = v75;
  }

  sub_18E2F81DC();
  v60 = MEMORY[0x1EEE9AC00](v59);
  sub_18E1CEAD0(v60, v61, v62, v63, v64, v65, v66, v67, v76);
  sub_18E2F80D4();
  v2();
  v68 = sub_18E247014(*(v46 + 8));
  sub_18E1DF2A8(v68, v69, v70, v45, v71);
  v72 = sub_18E223F60();
  v73(v72, v45);
  sub_18E1C5544();
}

uint64_t sub_18E2DFA04()
{
  sub_18E1E2F2C();
  v4 = v4 && v3 == 0xE200000000000000;
  if (v4 || (sub_18E1E3894() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = v1 == sub_18E1E31A0() && v0 == v6;
    if (v7 || (sub_18E1CF3DC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      sub_18E2200A4();
      v9 = v1 == (v2 | 2) && v8 == v0;
      if (v9 || (sub_18E1CF3DC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        sub_18E223BF4();
        if (v4 && v10 == v0)
        {

          return 3;
        }

        else
        {
          sub_18E1CF3DC();
          sub_18E1E6A20();
          if (v1)
          {
            return 3;
          }

          else
          {
            return 4;
          }
        }
      }
    }
  }
}

uint64_t sub_18E2DFAF0(uint64_t a1)
{
  v2 = sub_18E2F1040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2DFB2C(uint64_t a1)
{
  v2 = sub_18E2F1040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TokenOutputDenyListWithDefaultsBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E23A9B0(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v3);
  v5 = *(v4 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C8E58();
  v7 = sub_18E2706EC(&qword_1EABE23C0, &qword_18E4AAD50);
  sub_18E1C539C(v7);
  v9 = *(v8 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C61D0();
  v12 = v0[3];
  v11 = v0[4];
  sub_18E1C975C();
  sub_18E2F1040();
  sub_18E1E2974();
  if (!v1)
  {
    v13 = sub_18E233460();
    sub_18E2706EC(v13, v14);
    sub_18E2F7E84();
    sub_18E1C6B74();
    sub_18E1E1638(v15, v16, &qword_18E4AAD58);
    sub_18E1E2D5C();
    sub_18E44F26C();
    sub_18E2F7E40();
    sub_18E1E1F48();
    sub_18E2C73A0();
    sub_18E1C68E8();
    sub_18E44F26C();
    sub_18E2F7E34();
    sub_18E1E3E3C();
    sub_18E1E33AC();
    sub_18E2C9624();
    sub_18E1D0108();
    sub_18E44F26C();
    sub_18E1E323C();
    sub_18E223BE8();
    sub_18E2C3FB0();
    sub_18E1E2CB0();
    sub_18E44F26C();
    sub_18E2F0994();
    sub_18E1C86E0();
    v17 = swift_allocObject();
    sub_18E1D41CC(v17);
    sub_18E2F0E74();
    sub_18E1C86E0();
    v18 = swift_allocObject();
    sub_18E1E320C(v18);
    sub_18E2F0B30();
    sub_18E1C86E0();
    v19 = swift_allocObject();
    v20 = sub_18E2092EC(v19);
    sub_18E223C30(v20);

    sub_18E201AA0();

    sub_18E44E54C();
    sub_18E1E6510(v30);
    if (v21)
    {
      v22 = sub_18E1CBE2C();
      v23(v22);
      sub_18E1E8F44(v30, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E1E3AC0();
    }

    else
    {
      sub_18E44E49C();
      v24 = sub_18E1CBE2C();
      v25(v24);
      sub_18E212008();
      v27 = *(v26 + 8);
      v28 = sub_18E1E63C0();
      v29(v28);

      sub_18E1E7B38();
    }

    sub_18E201A20();
  }

  sub_18E1C9934(v0);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void TokenOutputDenyListWithDefaultsBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E1D848C();
  v1 = sub_18E2706EC(&qword_1EABE23E0, &qword_18E4AAD60);
  sub_18E1C4EAC(v1);
  v3 = *(v2 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1E88C0();
  sub_18E1D60D8();
  sub_18E2F1040();
  sub_18E1E394C();
  sub_18E221B08();
  TokenOutputDenyListWithDefaultsBundle.id.getter();
  sub_18E1CD638();
  v19[256] = 0;
  v5 = sub_18E1E33F0();
  sub_18E2706EC(v5, v6);
  sub_18E1C828C(&qword_1EABE23E8);
  sub_18E1E1104();
  if (v0)
  {

    v7 = sub_18E1E3D10();
    v8(v7);
  }

  else
  {
    sub_18E2F7C48();
    sub_18E2F7C30();
    sub_18E2706EC(&qword_1EABE2268, &qword_18E4AAC70);
    if (sub_18E2387D0())
    {
      sub_18E221668();
      sub_18E2333B0();
      sub_18E2F8034();
      sub_18E2C73F4();
      sub_18E2F79C4();
      sub_18E2CF468(&v20);
      sub_18E2F86A4();
      sub_18E2706EC(&qword_1EABE23A0, &qword_18E4AAD30);
      if (sub_18E201784())
      {
        sub_18E220844();
        sub_18E221B14();
        sub_18E2F7E6C();
        sub_18E2C9678();
        sub_18E224C68();
        sub_18E2CF258(v19);
        sub_18E2F8614();
        sub_18E2706EC(&qword_1EABE22E0, &qword_18E4AACC0);
        if (sub_18E2372B0())
        {
          sub_18E201EF8();
          sub_18E2232D0(&v17);
          sub_18E2F7DE8();
          sub_18E2C4004();
          sub_18E2F7A24();
          v14 = sub_18E1E6C0C();
          v15(v14);
          sub_18E2CFAE0(&v18);
          goto LABEL_7;
        }

        sub_18E228994();
        sub_18E1C8558();
        sub_18E2F7970();
        v10 = v16 + 2;
      }

      else
      {
        sub_18E228994();
        sub_18E1C8558();
        sub_18E2F7970();
        v10 = v13 | 4;
      }
    }

    else
    {
      sub_18E228994();
      sub_18E1C8558();
      sub_18E2F7970();
    }

    sub_18E2231EC(v9, v10);
    v11 = sub_18E1E6C0C();
    v12(v11);
  }

LABEL_7:
  sub_18E1E2968();
  sub_18E1C6650();
}

void sub_18E2E0224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_18E1CFF04();
  a27 = v30;
  a28 = v31;
  sub_18E240A94();
  if (*(v32() + 16))
  {
    v33 = sub_18E200E68();
    sub_18E224604(v33);
    sub_18E224080();
    do
    {
      sub_18E241A14(v34, v35);
      sub_18E1E15F4(&a11, a14);
      v36 = sub_18E208028();
      v37(v36);
      sub_18E1C9934(&a11);
      sub_18E1E686C();
      if (v39)
      {
        sub_18E2F7A64(v38 > 1);
      }

      sub_18E1E3050();
    }

    while (!v40);
  }

  v42 = v28(v41);
  sub_18E2F8194(v42);
  if (v29)
  {
    v43 = sub_18E200E68();
    sub_18E2F7CE0(v43);
    sub_18E2F7C0C();
    do
    {
      sub_18E232E6C(v44, v45);
      v46 = sub_18E1C8C94(&a11);
      v47(v46);
      sub_18E221954();
      sub_18E1C9934(&a11);
      sub_18E239C74();
      if (v39)
      {
        sub_18E201F38(v48 > 1);
      }

      sub_18E1CA5D4();
    }

    while (!v40);
  }

  v49 = sub_18E1E6BB0();
  sub_18E290008(v49, v50);
  sub_18E1E6A20();

  sub_18E2079F8();
}

void sub_18E2E03D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_18E2F7B84();
  a23 = v26;
  a24 = v27;
  sub_18E21D0B4();
  v28();
  sub_18E244890();

  v30 = v24(v29);
  v31 = sub_18E2F8188(v30);
  if (v25)
  {
    do
    {
      sub_18E2F7CF8(v31);
      v32 = sub_18E1CAD4C(&a10);
      v33(v32);
      sub_18E1C9934(&a10);
      sub_18E1D42A4();
      sub_18E44EB4C();

      sub_18E22365C();
    }

    while (!v34);

    sub_18E2232AC();
  }

  else
  {
    sub_18E2232AC();
  }
}

uint64_t sub_18E2E04BC()
{
  sub_18E1E2E88();
  sub_18E44F48C();
  v0(v2);
  return sub_18E44F4CC();
}

uint64_t sub_18E2E0554()
{
  sub_18E1E33FC();
  v0(v2);
  return sub_18E44F4CC();
}

void AssetBackedTokenOutputRetainListBundle.init(with:resources:)()
{
  sub_18E1C62A0();
  sub_18E207440();
  sub_18E242CF0();
  v4 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v4);
  v6 = *(v5 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1CAFF0();
  sub_18E1E7430();
  sub_18E26C3FC(v3, v8);
  v9 = MEMORY[0x1E69E7CA0];
  if (!v38)
  {

    sub_18E1E8F44(v37, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_21:
    sub_18E1E1700();
    sub_18E44EFFC();

    sub_18E1CA5A4();
    v37[0] = v1;
    v37[1] = v24;
    goto LABEL_25;
  }

  sub_18E221B44();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_21;
  }

  sub_18E2F8854();
  v10 = sub_18E1E1B1C();
  if (sub_18E32F0AC(v10, v11))
  {
    goto LABEL_8;
  }

  if (qword_1EABE0CF8 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v12 = sub_18E44E83C();
    sub_18E1C95EC(v12, qword_1EAC7F560);
    sub_18E2F7964();

    v13 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E216B90();
    if (sub_18E23CA28())
    {
      sub_18E1C5F74();
      v14 = sub_18E2246EC();
      sub_18E2F7FA0(v14);
      sub_18E2F8164(4.8149e-34);
      *(v9 + 4) = sub_18E1C9624(v1, v9, v15);
      sub_18E1E2274(&dword_18E1C1000, v16, v17, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E1CF2EC();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

LABEL_8:
    sub_18E242CF0();
    sub_18E2F883C(v18);
    if (!v38)
    {

      sub_18E1E8F44(v37, &qword_1EABE3B70, &qword_18E4AAB80);
      goto LABEL_24;
    }

    sub_18E221B44();
    if ((sub_18E2F7C18() & 1) == 0)
    {
      break;
    }

    sub_18E23335C();
    while (1)
    {
      if (v0 == v2)
      {

        sub_18E243B08();
        goto LABEL_35;
      }

      sub_18E2F7F48();
      if (v19)
      {
        break;
      }

      sub_18E2F886C();
      v20 = v38;
      sub_18E1C8570(v37, v38);
      v21(v20);
      sub_18E223708();
      v23 = v23 && v22 == v3;
      if (v23)
      {

LABEL_30:

        v28 = sub_18E221F94();
        sub_18E1C551C(v28, v29);
        sub_18E2706EC(&unk_1EABE33F0, &unk_18E49D240);
        sub_18E232FD8();
        sub_18E243B08();
        if (v30)
        {

          sub_18E2F10FC();
          sub_18E1C86E0();
          v31 = swift_allocObject();
          sub_18E2F79E4(v31);
          sub_18E2F880C();
          sub_18E1E32E4();
          sub_18E44E50C();

          sub_18E44E54C();
          sub_18E1D4C60(v2);
          if (v23)
          {
            sub_18E1E8F44(v2, &qword_1EABE2FE0, &qword_18E49CE00);
          }

          else
          {
            sub_18E44E49C();
            sub_18E25E19C();
            v34 = *(v33 + 8);
            v35 = sub_18E1E2088();
            v36(v35);
          }

          sub_18E2F8544();
          goto LABEL_27;
        }

LABEL_35:
        sub_18E1E1700();
        sub_18E44EFFC();
        sub_18E2F7AD8();
        sub_18E2F7CC8();
        v32 = sub_18E1E2000();
        MEMORY[0x193ACC300](v32);
        goto LABEL_26;
      }

      sub_18E1E7B78();
      sub_18E1E2238();

      if (v20)
      {
        goto LABEL_30;
      }

      sub_18E2F7B58();
    }

    __break(1u);
LABEL_38:
    sub_18E1C7804();
  }

LABEL_24:
  sub_18E1E1700();
  sub_18E44EFFC();
  sub_18E2F7AD8();
  sub_18E2F7CC8();
LABEL_25:
  sub_18E44E99C();
  sub_18E22449C();

  v25 = sub_18E1CFFC0();
  MEMORY[0x193ACC300](v25);
LABEL_26:

  sub_18E2AE554();
  v26 = sub_18E1C8558();
  sub_18E1D7E28(v26, v27);
LABEL_27:
  sub_18E1E2968();
  sub_18E1C6650();
}

uint64_t sub_18E2E0AE8(uint64_t (*a1)(void))
{
  v2 = a1();
  sub_18E1DF33C(v2);
  sub_18E1C5D78();

  return v1;
}

uint64_t sub_18E2E0B20(uint64_t a1)
{
  v2 = sub_18E2F1150();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2E0B5C(uint64_t a1)
{
  v2 = sub_18E2F1150();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedTokenOutputRetainListBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E1CFE14(v3);
  v4 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v4);
  v6 = *(v5 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C57AC();
  v8 = sub_18E2706EC(&qword_1EABE23F0, &qword_18E4AAD68);
  sub_18E1C4EAC(v8);
  v10 = *(v9 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1C61D0();
  v13 = v2[3];
  v12 = v2[4];
  sub_18E1D5C08(v2);
  sub_18E2F1150();
  sub_18E221EAC();
  if (v0)
  {
    v18 = v2;
  }

  else
  {
    v14 = sub_18E1E63B4();
    sub_18E2706EC(v14, v15);
    sub_18E1E83D8();
    sub_18E1C6B74();
    sub_18E1E1638(v16, v17, &qword_18E4AAD70);
    sub_18E1C29D4();
    sub_18E44F26C();
    sub_18E243354();
    sub_18E1D4598();
    sub_18E2C9E70();
    sub_18E1CE9EC();
    sub_18E2F10FC();
    sub_18E1C86E0();
    v19 = swift_allocObject();
    v20 = sub_18E1E232C(v19);
    memcpy(v20, v21, 0xD8uLL);

    sub_18E232CB0();

    v22 = sub_18E44E54C();
    sub_18E1E3A14(v22);
    if (v23)
    {
      sub_18E1E8F44(v8, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E224154();
    }

    else
    {
      sub_18E1E7D60();
      sub_18E234628();
      v25 = *(v24 + 8);
      v26 = sub_18E223B64();
      v27(v26);

      sub_18E1E1C0C();
    }

    v29 = sub_18E1C88FC(v28);
    v30(v29);
    v18 = v1;
  }

  sub_18E1C9934(v18);
  sub_18E1E29D0();
  sub_18E1C6650();
}

void AssetBackedTokenOutputRetainListBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E1E37D0();
  v1 = sub_18E2706EC(&qword_1EABE2410, &qword_18E4AAD78);
  sub_18E1C539C(v1);
  v3 = *(v2 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1E2C60();
  sub_18E1D60D8();
  sub_18E2F1150();
  sub_18E1E3288();
  sub_18E237074();
  AssetBackedTokenOutputRetainListBundle.id.getter();
  sub_18E1CFA14();
  v5 = sub_18E1E33F0();
  sub_18E2706EC(v5, v6);
  sub_18E1C828C(&qword_1EABE2418);
  sub_18E1E1200();
  sub_18E221AD8();
  if (v0)
  {
    goto LABEL_5;
  }

  sub_18E1E68F0();
  sub_18E2706EC(&qword_1EABE2420, &qword_18E4AAD80);
  if (!sub_18E224D34())
  {
    sub_18E1E8AE8();
    sub_18E1C8558();
    sub_18E1E19F0(v9, 63);
LABEL_5:
    v10 = sub_18E1E67D0();
    v11(v10);
    goto LABEL_6;
  }

  sub_18E200510();
  sub_18E1E3E68();
  sub_18E233478();
  sub_18E2C9EC4();
  sub_18E22452C();
  sub_18E44F35C();
  v7 = sub_18E1DD364();
  v8(v7);
  sub_18E2CF1F8(&v12);
LABEL_6:
  sub_18E1E2968();
  sub_18E1C6650();
}

void sub_18E2E0FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_18E1CFF04();
  a27 = v29;
  a28 = v30;
  sub_18E240A94();
  v32 = v31();
  v33 = sub_18E1DF33C(v32);

  if (*(v33 + 16))
  {
    v34 = sub_18E200E68();
    sub_18E224604(v34);
    sub_18E224080();
    do
    {
      sub_18E241A14(v35, v36);
      sub_18E1E15F4(&a11, a14);
      v37 = sub_18E208028();
      v38(v37);
      sub_18E1C9934(&a11);
      sub_18E1E686C();
      if (v40)
      {
        sub_18E2F7A64(v39 > 1);
      }

      sub_18E1E3050();
    }

    while (!v41);
  }

  v43 = (v28)(v42);
  sub_18E1DF33C(v43);
  sub_18E233F98();
  if (*(v28 + 16))
  {
    v44 = sub_18E200E68();
    sub_18E2F7CE0(v44);
    sub_18E2F7C0C();
    do
    {
      sub_18E232E6C(v45, v46);
      v47 = sub_18E1C8C94(&a11);
      v48(v47);
      sub_18E221954();
      sub_18E1C9934(&a11);
      sub_18E239C74();
      if (v40)
      {
        sub_18E201F38(v49 > 1);
      }

      sub_18E1CA5D4();
    }

    while (!v41);
  }

  v50 = sub_18E1E6BB0();
  sub_18E290008(v50, v51);
  sub_18E1E6A20();

  sub_18E2079F8();
}

void sub_18E2E1194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_18E2F7B84();
  a23 = v25;
  a24 = v26;
  sub_18E21D0B4();
  v27();
  sub_18E244890();

  v29 = (v24)(v28);
  sub_18E1DF33C(v29);
  v30 = sub_18E233F98();
  if (*(v24 + 16))
  {
    do
    {
      sub_18E2F7CF8(v30);
      v31 = sub_18E1CAD4C(&a10);
      v32(v31);
      sub_18E1C9934(&a10);
      sub_18E1D42A4();
      sub_18E44EB4C();

      sub_18E22365C();
    }

    while (!v33);

    sub_18E2232AC();
  }

  else
  {
    sub_18E2232AC();
  }
}

void sub_18E2E1338()
{
  sub_18E1C575C();
  v46 = sub_18E223ED8(v4, v5);
  v6 = sub_18E1C4EAC(v46);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = sub_18E1E1FD8();
  v10 = sub_18E1C4EAC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C4EDC();
  sub_18E1FF2DC();
  v16 = *(v0 + 40);
  v15 = *(v0 + 48);
  sub_18E1C5040((v3 + 16), v16);
  v17(v16);
  sub_18E235A6C();
  v19 = v19 && v18 == 0xE700000000000000;
  if (v19)
  {

    goto LABEL_10;
  }

  sub_18E1D5EF4();
  sub_18E223B20();
  sub_18E1E2238();

  if (v1)
  {
LABEL_10:
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v20 = *(v3 + 40);
  sub_18E1C5040((v3 + 16), v20);
  v21(v20);
  sub_18E1D0274();
  sub_18E2F8058();
  sub_18E1E2414();

  sub_18E220AAC();
  sub_18E3EF9F0();
  sub_18E223F94(v22);
  if (v23)
  {
    sub_18E1E3320();
    sub_18E3EF9F0();
    v20 = v45;
  }

  sub_18E1CA184();
  sub_18E1EA5D4();
  v24();
LABEL_11:
  sub_18E44E37C();
  sub_18E223EB0();
  sub_18E201E40();
  if (*(v20 + 16))
  {
    sub_18E2F87C4();
    sub_18E2F87AC();
    if (v9)
    {

      __break(1u);
      return;
    }

    sub_18E2F8794();
  }

  else
  {
  }

  sub_18E44E36C();
  if (v25)
  {
    v26 = sub_18E1CF4F4();
    v27(v26);
    sub_18E2405F8();
  }

  else
  {
    if (qword_1ED6A8418 != -1)
    {
      sub_18E1C8AB4();
    }

    v28 = sub_18E44E83C();
    sub_18E1C95EC(v28, qword_1ED6A9858);
    v29 = sub_18E216A78();
    (v2)(v29);
    v30 = sub_18E44E80C();
    v31 = sub_18E44EE0C();
    if (sub_18E2333E4(v31))
    {
      sub_18E2342D4();
      v32 = sub_18E220C80();
      sub_18E2F7F74(v32);
      sub_18E2217B8(4.8151e-34);
      sub_18E2F0564();
      sub_18E1E1DB4();
      v33 = sub_18E44F39C();
      sub_18E2F86EC(v33, v34);
      sub_18E233674();
      sub_18E243EAC();
      v35 = sub_18E209370();
      v36(v35);
      v37 = sub_18E1C5BFC();
      sub_18E1C9624(v37, v38, v39);
      sub_18E233674();
      *(v2 + 14) = v12;
      sub_18E1D81D8(&dword_18E1C1000, v40, v41, "Unable to construct resource bundle identifier from %s. Falling back to %s");
      sub_18E232B30();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {

      v42 = sub_18E209370();
      v43(v42);
    }

    sub_18E2F877C();
    v44 = sub_18E1E3DF8();
    v12(v44);
  }

  sub_18E202D00();
  sub_18E1C5544();
}

void TokenOutputRetainListBundle.init(with:resources:)()
{
  sub_18E1C62A0();
  sub_18E202C9C();
  sub_18E242CF0();
  v5 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v5);
  v7 = *(v6 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E221F50();
  sub_18E1E7430();
  sub_18E26C3FC(v3, v9);
  if (!v41[3])
  {

    sub_18E1E8F44(v41, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_21:
    sub_18E1D442C();
    sub_18E44EFFC();

    sub_18E1CA5A4();
    v41[0] = v1;
    v41[1] = v27;
    goto LABEL_25;
  }

  if ((sub_18E1CC2D0() & 1) == 0)
  {

    goto LABEL_21;
  }

  sub_18E2F8854();
  v10 = sub_18E1E1B1C();
  if (sub_18E32F0AC(v10, v11))
  {
    goto LABEL_8;
  }

  if (qword_1EABE0CF8 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v12 = sub_18E44E83C();
    sub_18E1C95EC(v12, qword_1EAC7F560);
    sub_18E2F7964();

    v13 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E216B90();
    if (sub_18E23CA28())
    {
      sub_18E1C5F74();
      v14 = sub_18E2246EC();
      sub_18E2F7F80(v14);
      sub_18E2F8170(4.8149e-34);
      *(v2 + 4) = sub_18E1C9624(v1, v2, v15);
      sub_18E1E2274(&dword_18E1C1000, v16, v17, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E1CF2EC();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

LABEL_8:
    sub_18E242CF0();
    sub_18E2F883C(v18);
    sub_18E2F7FCC();
    if (!v19)
    {

      sub_18E1E8F44(v41, &qword_1EABE3B70, &qword_18E4AAB80);
      goto LABEL_24;
    }

    if ((sub_18E1CC2D0() & 1) == 0)
    {
      break;
    }

    sub_18E1E6B38();
    while (1)
    {
      if (v4 == v0)
      {

        sub_18E243B08();
        goto LABEL_35;
      }

      sub_18E1E6934();
      if (v20)
      {
        break;
      }

      sub_18E2F8764();
      v21 = v41[3];
      v22 = v41[4];
      sub_18E1E15F4(v41, v41[3]);
      v23 = sub_18E216870(v22);
      v24(v23, v22);
      sub_18E223708();
      v26 = v26 && v25 == v3;
      if (v26)
      {

LABEL_30:

        v31 = sub_18E2407DC();
        sub_18E1C551C(v31, v32);
        sub_18E2706EC(&qword_1EABE0EA0, &qword_18E49D250);
        sub_18E232FD8();
        sub_18E243B08();
        if (v33)
        {

          sub_18E2F120C();
          sub_18E1C86E0();
          v34 = swift_allocObject();
          v35 = sub_18E2F79A0(v34);
          memcpy(v35, v41, 0xD8uLL);

          sub_18E1E32E4();
          sub_18E44E50C();

          sub_18E44E54C();
          sub_18E1D4C60(v4);
          if (v26)
          {
            sub_18E1E8F44(v4, &qword_1EABE2FE0, &qword_18E49CE00);
          }

          else
          {
            sub_18E44E49C();
            sub_18E25E19C();
            v38 = *(v37 + 8);
            v39 = sub_18E1E2088();
            v40(v39);
          }

          sub_18E2F83C4();
          goto LABEL_27;
        }

LABEL_35:
        sub_18E1D442C();
        sub_18E44EFFC();
        sub_18E1E3D78();
        sub_18E2F7CB0();
        v36 = sub_18E1E2000();
        MEMORY[0x193ACC300](v36);
        goto LABEL_26;
      }

      sub_18E1E7B78();
      sub_18E1E2238();

      if (v21)
      {
        goto LABEL_30;
      }

      sub_18E1E1BB8();
    }

    __break(1u);
LABEL_38:
    sub_18E1C7804();
  }

LABEL_24:
  sub_18E1D442C();
  sub_18E44EFFC();
  sub_18E1E3D78();
  sub_18E2F7CB0();
LABEL_25:
  sub_18E2F874C();
  sub_18E22449C();

  v28 = sub_18E1CFFC0();
  MEMORY[0x193ACC300](v28);
LABEL_26:

  sub_18E2AE554();
  v29 = sub_18E1C8558();
  sub_18E1D7E28(v29, v30);
LABEL_27:
  sub_18E1E2968();
  sub_18E1C6650();
}

uint64_t sub_18E2E1B58()
{
  sub_18E1E2F2C();
  v3 = v3 && v2 == 0xE200000000000000;
  if (v3 || (sub_18E1E3894() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0xD000000000000015 && 0x800000018E458FF0 == v0)
  {

    return 1;
  }

  else
  {
    sub_18E1CF3DC();
    sub_18E1E6A20();
    sub_18E232B64();
    if (v3)
    {
      return v6 + 1;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_18E2E1BE8(uint64_t a1)
{
  v2 = sub_18E2F1260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2E1C24(uint64_t a1)
{
  v2 = sub_18E2F1260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TokenOutputRetainListBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E1CFE14(v3);
  v4 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v4);
  v6 = *(v5 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C57AC();
  v8 = sub_18E2706EC(&qword_1EABE2430, &qword_18E4AAD88);
  sub_18E1C4EAC(v8);
  v10 = *(v9 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1C61D0();
  v13 = v2[3];
  v12 = v2[4];
  sub_18E1D5C08(v2);
  sub_18E2F1260();
  sub_18E221EAC();
  if (v0)
  {
    v18 = v2;
  }

  else
  {
    v14 = sub_18E1E63B4();
    sub_18E2706EC(v14, v15);
    sub_18E1E83D8();
    sub_18E1C6B74();
    sub_18E1E1638(v16, v17, &qword_18E4AAD90);
    sub_18E1C29D4();
    sub_18E44F26C();
    sub_18E243354();
    sub_18E1D4598();
    sub_18E2C9A4C();
    sub_18E1CE9EC();
    sub_18E2F120C();
    sub_18E1C86E0();
    v19 = swift_allocObject();
    v20 = sub_18E1E232C(v19);
    memcpy(v20, v21, 0xD8uLL);

    sub_18E232CB0();

    v22 = sub_18E44E54C();
    sub_18E1E3A14(v22);
    if (v23)
    {
      sub_18E1E8F44(v8, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E224154();
    }

    else
    {
      sub_18E1E7D60();
      sub_18E234628();
      v25 = *(v24 + 8);
      v26 = sub_18E223B64();
      v27(v26);

      sub_18E1E1C0C();
    }

    v29 = sub_18E1C88FC(v28);
    v30(v29);
    v18 = v1;
  }

  sub_18E1C9934(v18);
  sub_18E1E29D0();
  sub_18E1C6650();
}

void TokenOutputRetainListBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E1E37D0();
  v1 = sub_18E2706EC(&qword_1EABE2450, &qword_18E4AAD98);
  sub_18E1C539C(v1);
  v3 = *(v2 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1E2C60();
  sub_18E1D60D8();
  sub_18E2F1260();
  sub_18E1E3288();
  sub_18E237074();
  TokenOutputRetainListBundle.id.getter();
  sub_18E1CFA14();
  v5 = sub_18E1E33F0();
  sub_18E2706EC(v5, v6);
  sub_18E1C828C(&qword_1EABE2458);
  sub_18E1E1200();
  sub_18E221AD8();
  if (v0)
  {
    goto LABEL_5;
  }

  sub_18E1E68F0();
  sub_18E2706EC(&qword_1EABE2460, &qword_18E4AADA0);
  if (!sub_18E224D34())
  {
    sub_18E1E8AE8();
    sub_18E1C8558();
    sub_18E1E19F0(v9, 63);
LABEL_5:
    v10 = sub_18E1E67D0();
    v11(v10);
    goto LABEL_6;
  }

  sub_18E200510();
  sub_18E1E3E68();
  sub_18E233478();
  sub_18E2C9AA0();
  sub_18E22452C();
  sub_18E44F35C();
  v7 = sub_18E1DD364();
  v8(v7);
  sub_18E2CF228(&v12);
LABEL_6:
  sub_18E1E2968();
  sub_18E1C6650();
}

void sub_18E2E2090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_18E1CFF04();
  a27 = v30;
  a28 = v31;
  sub_18E240A94();
  if (*(v32() + 16))
  {
    v33 = sub_18E200E68();
    sub_18E224604(v33);
    sub_18E224080();
    do
    {
      sub_18E241A14(v34, v35);
      sub_18E1E15F4(&a11, a14);
      v36 = sub_18E208028();
      v37(v36);
      sub_18E1C9934(&a11);
      sub_18E1E686C();
      if (v39)
      {
        sub_18E2F7A64(v38 > 1);
      }

      sub_18E1E3050();
    }

    while (!v40);
  }

  v42 = v28(v41);
  sub_18E2F8194(v42);
  if (v29)
  {
    v43 = sub_18E200E68();
    sub_18E2F7CE0(v43);
    sub_18E2F7C0C();
    do
    {
      sub_18E232E6C(v44, v45);
      v46 = sub_18E1C8C94(&a11);
      v47(v46);
      sub_18E221954();
      sub_18E1C9934(&a11);
      sub_18E239C74();
      if (v39)
      {
        sub_18E201F38(v48 > 1);
      }

      sub_18E1CA5D4();
    }

    while (!v40);
  }

  v49 = sub_18E1E6BB0();
  sub_18E290008(v49, v50);
  sub_18E1E6A20();

  sub_18E2079F8();
}

void sub_18E2E2240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_18E2F7B84();
  a23 = v26;
  a24 = v27;
  sub_18E21D0B4();
  v28();
  sub_18E244890();

  v30 = v24(v29);
  v31 = sub_18E2F8188(v30);
  if (v25)
  {
    do
    {
      sub_18E2F7CF8(v31);
      v32 = sub_18E1CAD4C(&a10);
      v33(v32);
      sub_18E1C9934(&a10);
      sub_18E1D42A4();
      sub_18E44EB4C();

      sub_18E22365C();
    }

    while (!v34);

    sub_18E2232AC();
  }

  else
  {
    sub_18E2232AC();
  }
}

void AssetBackedSecureAnalyticsBundle.init(with:resources:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E1C62A0();
  sub_18E207440();
  v15 = v14;
  v16 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v16);
  v18 = *(v17 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v19);
  sub_18E1C8E58();
  sub_18E1E7430();
  sub_18E26C3FC(v13, v20);
  v21 = MEMORY[0x1E69E7CA0];
  if (!v55)
  {

    sub_18E1E8F44(v54, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_21:
    sub_18E1E1700();
    sub_18E44EFFC();

    sub_18E1C8E68();
    v54[0] = v36;
    v54[1] = v35;
    goto LABEL_25;
  }

  if ((sub_18E2F7A44() & 1) == 0)
  {

    goto LABEL_21;
  }

  sub_18E2F88E4();
  v22 = sub_18E1E3DF8();
  if (sub_18E32F0AC(v22, v23))
  {
    goto LABEL_8;
  }

  if (qword_1EABE0CF8 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v24 = sub_18E44E83C();
    sub_18E1C95EC(v24, qword_1EAC7F560);
    sub_18E1E673C();

    v25 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E2F8704();
    if (sub_18E23CA28())
    {
      sub_18E1C5F74();
      a10 = v11;
      v50 = v12;
      v26 = sub_18E2246EC();
      sub_18E2F7FA0(v26);
      sub_18E2F8164(4.8149e-34);
      *(v12 + 4) = sub_18E1C9624(v21, v11, v27);
      sub_18E1E2274(&dword_18E1C1000, v28, v29, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E1CF2EC();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

LABEL_8:
    sub_18E1CC4E4();
    sub_18E23552C();
    sub_18E26C3FC(v13, v30);
    if (!v55)
    {

      sub_18E1E8F44(v54, &qword_1EABE3B70, &qword_18E4AAB80);
      goto LABEL_24;
    }

    if ((sub_18E2F7A44() & 1) == 0)
    {
      break;
    }

    sub_18E2F8524();
    sub_18E23335C();
    while (1)
    {
      if (v10 == v15)
      {

        goto LABEL_34;
      }

      sub_18E2F7F48();
      if (v31)
      {
        break;
      }

      sub_18E2F886C();
      v11 = v55;
      sub_18E1C8570(v54, v55);
      v32(v11);
      sub_18E223708();
      v34 = v34 && v33 == v13;
      if (v34)
      {

LABEL_30:

        v40 = sub_18E221F94();
        sub_18E1C551C(v40, v41);
        sub_18E2706EC(&unk_1EABE33F0, &unk_18E49D240);
        if (sub_18E232FD8())
        {

          v52 = &type metadata for AssetBackedSecureAnalyticsBase;
          v53 = sub_18E220354();
          sub_18E1C86E0();
          v42 = swift_allocObject();
          sub_18E2F79E4(v42);
          v43 = a10;

          sub_18E1E2F3C();
          sub_18E44E50C();

          sub_18E44E54C();
          sub_18E1D4C60(v50);
          if (v34)
          {
            sub_18E1E8F44(v50, &qword_1EABE2FE0, &qword_18E49CE00);
          }

          else
          {
            sub_18E44E49C();
            sub_18E221D40();
            sub_18E25E19C();
            v46 = *(v45 + 8);
            v47 = sub_18E1D4B44();
            v48(v47);

            v43 = v50;
          }

          *v49 = v21;
          v49[1] = v43;
          sub_18E1C551C(&v51, (v49 + 2));
          goto LABEL_27;
        }

LABEL_34:

        sub_18E1E1700();
        sub_18E44EFFC();
        sub_18E2F7AD8();
        sub_18E1E844C();
        sub_18E2F7CC8();
        v44 = sub_18E1E2000();
        MEMORY[0x193ACC300](v44);
        goto LABEL_26;
      }

      sub_18E1E7B78();
      sub_18E1E2238();

      if (v11)
      {
        goto LABEL_30;
      }

      sub_18E2F7B58();
    }

    __break(1u);
LABEL_37:
    sub_18E1C7804();
  }

LABEL_24:
  sub_18E1E1700();
  sub_18E44EFFC();
  sub_18E2F7AD8();
  sub_18E1E844C();
  sub_18E2F7CC8();
LABEL_25:
  sub_18E44E99C();
  sub_18E22449C();

  v37 = sub_18E1CFFC0();
  MEMORY[0x193ACC300](v37);
LABEL_26:

  sub_18E2AE554();
  v38 = sub_18E1C8558();
  sub_18E1D7E28(v38, v39);
LABEL_27:
  sub_18E1E2968();
  sub_18E1C6650();
}

uint64_t sub_18E2E288C(uint64_t a1)
{
  v2 = sub_18E2F131C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2E28C8(uint64_t a1)
{
  v2 = sub_18E2F131C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedSecureAnalyticsBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E1CFE14(v3);
  v4 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v4);
  v6 = *(v5 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C57AC();
  v8 = sub_18E2706EC(&qword_1EABE2468, &qword_18E4AADA8);
  sub_18E1C4EAC(v8);
  v10 = *(v9 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1C61D0();
  v13 = v2[3];
  v12 = v2[4];
  sub_18E1D5C08(v2);
  sub_18E2F131C();
  sub_18E221EAC();
  if (v0)
  {
    v18 = v2;
  }

  else
  {
    v14 = sub_18E1E63B4();
    sub_18E2706EC(v14, v15);
    sub_18E1E83D8();
    sub_18E1C6B74();
    sub_18E1E1638(v16, v17, &qword_18E4AADB0);
    sub_18E1C29D4();
    sub_18E44F26C();
    sub_18E243354();
    sub_18E1D4598();
    sub_18E2C907C();
    sub_18E1CE9EC();
    sub_18E220354();
    sub_18E1C86E0();
    v19 = swift_allocObject();
    v20 = sub_18E1E232C(v19);
    memcpy(v20, v21, 0xD8uLL);

    sub_18E232CB0();

    v22 = sub_18E44E54C();
    sub_18E1E3A14(v22);
    if (v23)
    {
      sub_18E1E8F44(v8, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E224154();
    }

    else
    {
      sub_18E1E7D60();
      sub_18E234628();
      v25 = *(v24 + 8);
      v26 = sub_18E223B64();
      v27(v26);

      sub_18E1E1C0C();
    }

    v29 = sub_18E1C88FC(v28);
    v30(v29);
    v18 = v1;
  }

  sub_18E1C9934(v18);
  sub_18E1E29D0();
  sub_18E1C6650();
}

void AssetBackedSecureAnalyticsBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E1E37D0();
  v1 = sub_18E2706EC(&qword_1EABE2488, &qword_18E4AADB8);
  sub_18E1C539C(v1);
  v3 = *(v2 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1E2C60();
  sub_18E1D60D8();
  sub_18E2F131C();
  sub_18E1E3288();
  sub_18E237074();
  AssetBackedSecureAnalyticsBundle.id.getter();
  sub_18E1CFA14();
  v5 = sub_18E1E33F0();
  sub_18E2706EC(v5, v6);
  sub_18E1C828C(&qword_1EABE2490);
  sub_18E1E1200();
  sub_18E221AD8();
  if (v0)
  {
    goto LABEL_5;
  }

  sub_18E1E68F0();
  sub_18E2706EC(&qword_1EABE2498, &qword_18E4AADC0);
  if (!sub_18E224D34())
  {
    sub_18E1E8AE8();
    sub_18E1C8558();
    sub_18E1E19F0(v9, 45);
LABEL_5:
    v10 = sub_18E1E67D0();
    v11(v10);
    goto LABEL_6;
  }

  sub_18E200510();
  sub_18E1E3E68();
  sub_18E233478();
  sub_18E2C90D0();
  sub_18E22452C();
  sub_18E44F35C();
  v7 = sub_18E1DD364();
  v8(v7);
  sub_18E2CF2B8(&v12);
LABEL_6:
  sub_18E1E2968();
  sub_18E1C6650();
}

void sub_18E2E2E28()
{
  sub_18E1C575C();
  v46 = sub_18E223ED8(v4, v5);
  v6 = sub_18E1C4EAC(v46);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = sub_18E1E1FD8();
  v10 = sub_18E1C4EAC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C4EDC();
  sub_18E1FF2DC();
  v16 = *(v0 + 40);
  v15 = *(v0 + 48);
  sub_18E1C5040((v3 + 16), v16);
  v17(v16);
  sub_18E235A6C();
  v19 = v19 && v18 == 0xE700000000000000;
  if (v19)
  {

    goto LABEL_10;
  }

  sub_18E1D5EF4();
  sub_18E223B20();
  sub_18E1E2238();

  if (v1)
  {
LABEL_10:
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v20 = *(v3 + 40);
  sub_18E1C5040((v3 + 16), v20);
  v21(v20);
  sub_18E1D0274();
  sub_18E2F8058();
  sub_18E216A24();

  sub_18E220AAC();
  sub_18E3EF9F0();
  sub_18E223F94(v22);
  if (v23)
  {
    sub_18E1E3320();
    sub_18E3EF9F0();
    v20 = v45;
  }

  sub_18E1CA184();
  sub_18E1EA5D4();
  v24();
LABEL_11:
  sub_18E44E37C();
  sub_18E223EB0();
  sub_18E201E40();
  if (*(v20 + 16))
  {
    sub_18E2F87C4();
    sub_18E2F87AC();
    if (v9)
    {

      __break(1u);
      return;
    }

    sub_18E2F8794();
  }

  else
  {
  }

  sub_18E44E36C();
  if (v25)
  {
    v26 = sub_18E1CF4F4();
    v27(v26);
    sub_18E2405F8();
  }

  else
  {
    if (qword_1ED6A8418 != -1)
    {
      sub_18E1C8AB4();
    }

    v28 = sub_18E44E83C();
    sub_18E1C95EC(v28, qword_1ED6A9858);
    v29 = sub_18E216A78();
    (v2)(v29);
    v30 = sub_18E44E80C();
    v31 = sub_18E44EE0C();
    if (sub_18E2333E4(v31))
    {
      sub_18E2342D4();
      v32 = sub_18E220C80();
      sub_18E2F7F74(v32);
      sub_18E2217B8(4.8151e-34);
      sub_18E2F0564();
      sub_18E1E1DB4();
      v33 = sub_18E44F39C();
      sub_18E2F86EC(v33, v34);
      sub_18E233674();
      sub_18E243EAC();
      v35 = sub_18E209370();
      v36(v35);
      v37 = sub_18E1C5BFC();
      sub_18E1C9624(v37, v38, v39);
      sub_18E233674();
      *(v2 + 14) = v12;
      sub_18E1D81D8(&dword_18E1C1000, v40, v41, "Unable to construct resource bundle identifier from %s. Falling back to %s");
      sub_18E232B30();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {

      v42 = sub_18E209370();
      v43(v42);
    }

    sub_18E2F877C();
    v44 = sub_18E1E3DF8();
    v12(v44);
  }

  sub_18E202D00();
  sub_18E1C5544();
}

void SecureAnalyticsBundle.init(with:resources:)()
{
  sub_18E1C62A0();
  sub_18E202C9C();
  v5 = v4;
  v6 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v6);
  v8 = *(v7 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v9);
  sub_18E1C8E58();
  sub_18E1E7430();
  sub_18E26C3FC(v3, v10);
  if (!v49[3])
  {

    sub_18E1E8F44(v49, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_21:
    sub_18E1D442C();
    sub_18E44EFFC();

    sub_18E1C8E68();
    v49[0] = v29;
    v49[1] = v28;
    goto LABEL_25;
  }

  if ((sub_18E1CC2D0() & 1) == 0)
  {

    goto LABEL_21;
  }

  sub_18E2F88E4();
  v11 = sub_18E1E3DF8();
  if (sub_18E32F0AC(v11, v12))
  {
    goto LABEL_8;
  }

  if (qword_1EABE0CF8 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v13 = sub_18E44E83C();
    sub_18E1C95EC(v13, qword_1EAC7F560);
    sub_18E1E673C();

    v14 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E2F8704();
    if (sub_18E23CA28())
    {
      sub_18E1C5F74();
      v44 = v2;
      v15 = sub_18E2246EC();
      sub_18E2F7F80(v15);
      sub_18E2F8170(4.8149e-34);
      *(v2 + 4) = sub_18E1C9624(v1, v45, v16);
      sub_18E1E2274(&dword_18E1C1000, v17, v18, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E1CF2EC();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

LABEL_8:
    sub_18E1CC4E4();
    sub_18E23552C();
    sub_18E26C3FC(v3, v19);
    sub_18E2F7FCC();
    if (!v20)
    {

      sub_18E1E8F44(v49, &qword_1EABE3B70, &qword_18E4AAB80);
      goto LABEL_24;
    }

    if ((sub_18E1CC2D0() & 1) == 0)
    {
      break;
    }

    sub_18E2F84C4();
    sub_18E1E6B38();
    while (1)
    {
      if (v5 == v0)
      {

        goto LABEL_34;
      }

      sub_18E1E6934();
      if (v21)
      {
        break;
      }

      sub_18E2F8764();
      v22 = v49[3];
      v23 = v49[4];
      sub_18E1E15F4(v49, v49[3]);
      v24 = sub_18E216870(v23);
      v25(v24, v23);
      sub_18E223708();
      v27 = v27 && v26 == v3;
      if (v27)
      {

LABEL_30:

        v33 = sub_18E2407DC();
        sub_18E1C551C(v33, v34);
        sub_18E2706EC(&qword_1EABE0EA0, &qword_18E49D250);
        if (sub_18E232FD8())
        {

          v47 = &type metadata for SecureAnalyticsBase;
          v48 = sub_18E2F13D8();
          sub_18E1C86E0();
          v35 = swift_allocObject();
          v36 = sub_18E2F79A0(v35);
          memcpy(v36, v49, 0xD8uLL);
          v37 = v45;

          sub_18E1E2F3C();
          sub_18E44E50C();

          sub_18E44E54C();
          sub_18E1D4C60(v44);
          if (v27)
          {
            sub_18E1E8F44(v44, &qword_1EABE2FE0, &qword_18E49CE00);
          }

          else
          {
            sub_18E44E49C();
            sub_18E221D40();
            sub_18E25E19C();
            v40 = *(v39 + 8);
            v41 = sub_18E1D4B44();
            v42(v41);

            v37 = v44;
          }

          *v43 = v1;
          v43[1] = v37;
          sub_18E1C551C(&v46, (v43 + 2));
          goto LABEL_27;
        }

LABEL_34:

        sub_18E1D442C();
        sub_18E44EFFC();
        sub_18E1E3D78();
        sub_18E1E844C();
        sub_18E2F7CB0();
        v38 = sub_18E1E2000();
        MEMORY[0x193ACC300](v38);
        goto LABEL_26;
      }

      sub_18E1E7B78();
      sub_18E1E2238();

      if (v22)
      {
        goto LABEL_30;
      }

      sub_18E1E1BB8();
    }

    __break(1u);
LABEL_37:
    sub_18E1C7804();
  }

LABEL_24:
  sub_18E1D442C();
  sub_18E44EFFC();
  sub_18E1E3D78();
  sub_18E1E844C();
  sub_18E2F7CB0();
LABEL_25:
  sub_18E2F874C();
  sub_18E22449C();

  v30 = sub_18E1CFFC0();
  MEMORY[0x193ACC300](v30);
LABEL_26:

  sub_18E2AE554();
  v31 = sub_18E1C8558();
  sub_18E1D7E28(v31, v32);
LABEL_27:
  sub_18E1E2968();
  sub_18E1C6650();
}

uint64_t sub_18E2E361C()
{
  sub_18E1E2F2C();
  v2 = v2 && v1 == 0xE200000000000000;
  if (v2 || (sub_18E1E3894() & 1) != 0)
  {

    return 0;
  }

  else
  {
    sub_18E221B94();
    if (v2 && v0 == v4)
    {

      return 1;
    }

    else
    {
      sub_18E1CF3DC();
      sub_18E1E6A20();
      sub_18E232B64();
      if (v2)
      {
        return v6 + 1;
      }

      else
      {
        return v6;
      }
    }
  }
}

uint64_t sub_18E2E369C(uint64_t a1)
{
  v2 = sub_18E2F142C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2E36D8(uint64_t a1)
{
  v2 = sub_18E2F142C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SecureAnalyticsBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E1CFE14(v3);
  v4 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v4);
  v6 = *(v5 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C57AC();
  v8 = sub_18E2706EC(&qword_1EABE24A0, &qword_18E4AADC8);
  sub_18E1C4EAC(v8);
  v10 = *(v9 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1C61D0();
  v13 = v2[3];
  v12 = v2[4];
  sub_18E1D5C08(v2);
  sub_18E2F142C();
  sub_18E221EAC();
  if (v0)
  {
    v18 = v2;
  }

  else
  {
    v14 = sub_18E1E63B4();
    sub_18E2706EC(v14, v15);
    sub_18E1E83D8();
    sub_18E1C6B74();
    sub_18E1E1638(v16, v17, &qword_18E4AADD0);
    sub_18E1C29D4();
    sub_18E44F26C();
    sub_18E243354();
    sub_18E1D4598();
    sub_18E2C8D2C();
    sub_18E1CE9EC();
    sub_18E2F13D8();
    sub_18E1C86E0();
    v19 = swift_allocObject();
    v20 = sub_18E1E232C(v19);
    memcpy(v20, v21, 0xD8uLL);

    sub_18E232CB0();

    v22 = sub_18E44E54C();
    sub_18E1E3A14(v22);
    if (v23)
    {
      sub_18E1E8F44(v8, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E224154();
    }

    else
    {
      sub_18E1E7D60();
      sub_18E234628();
      v25 = *(v24 + 8);
      v26 = sub_18E223B64();
      v27(v26);

      sub_18E1E1C0C();
    }

    v29 = sub_18E1C88FC(v28);
    v30(v29);
    v18 = v1;
  }

  sub_18E1C9934(v18);
  sub_18E1E29D0();
  sub_18E1C6650();
}

void SecureAnalyticsBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E1E37D0();
  v1 = sub_18E2706EC(&qword_1EABE24C0, &qword_18E4AADD8);
  sub_18E1C539C(v1);
  v3 = *(v2 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1E2C60();
  sub_18E1D60D8();
  sub_18E2F142C();
  sub_18E1E3288();
  sub_18E237074();
  SecureAnalyticsBundle.id.getter();
  sub_18E1CFA14();
  v5 = sub_18E1E33F0();
  sub_18E2706EC(v5, v6);
  sub_18E1C828C(&qword_1EABE24C8);
  sub_18E1E1200();
  sub_18E221AD8();
  if (v0)
  {
    goto LABEL_5;
  }

  sub_18E1E68F0();
  sub_18E2706EC(&qword_1EABE24D0, &unk_18E4AADE0);
  if (!sub_18E224D34())
  {
    sub_18E1E8AE8();
    sub_18E1C8558();
    sub_18E1E19F0(v9, 45);
LABEL_5:
    v10 = sub_18E1E67D0();
    v11(v10);
    goto LABEL_6;
  }

  sub_18E200510();
  sub_18E1E3E68();
  sub_18E233478();
  sub_18E2C8D80();
  sub_18E22452C();
  sub_18E44F35C();
  v7 = sub_18E1DD364();
  v8(v7);
  sub_18E2CF2E8(&v12);
LABEL_6:
  sub_18E1E2968();
  sub_18E1C6650();
}

void AssetBackedLLMBundle.init(with:resources:)()
{
  sub_18E1C62A0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v7);
  v9 = *(v8 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E221F50();
  sub_18E1E7430();
  sub_18E26C3FC(v4, v11);
  if (!*&v128[24])
  {

    sub_18E1E8F44(v128, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_22:
    sub_18E2F7A9C();
    sub_18E44EFFC();

    sub_18E1C8E68();
    goto LABEL_26;
  }

  if ((sub_18E22169C() & 1) == 0)
  {

    goto LABEL_22;
  }

  v12 = v127[1];
  type metadata accessor for Utils();
  v104 = v127[0];
  v13 = sub_18E1E1B1C();
  if ((sub_18E32F0AC(v13, v14) & 1) == 0)
  {
    if (qword_1EABE0CF8 != -1)
    {
      sub_18E1C7804();
    }

    v15 = sub_18E44E83C();
    sub_18E1C95EC(v15, qword_1EAC7F560);
    sub_18E2F7964();

    v16 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E216B90();
    if (sub_18E23CA28())
    {
      sub_18E1C5F74();
      *v128 = sub_18E223E58();
      *v6 = 136315138;
      *(v6 + 4) = sub_18E1C9624(v104, v12, v128);
      sub_18E1D5F48(&dword_18E1C1000, v17, v18, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E221F60();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E238D04();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }
  }

  sub_18E1D49B0();
  sub_18E2F7D70();
  sub_18E26C3FC(v4, v19);
  if (!*&v128[24])
  {

    sub_18E1E8F44(v128, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_25:
    sub_18E2F7A9C();
    sub_18E44EFFC();

    sub_18E1C8E68();
    v27 = v28 + 24;
LABEL_26:
    *v128 = v27;
    *&v128[8] = v26;
    sub_18E44E99C();
    sub_18E22449C();

    v29 = sub_18E1CFFC0();
    MEMORY[0x193ACC300](v29);
LABEL_27:

    goto LABEL_28;
  }

  if ((sub_18E22169C() & 1) == 0)
  {

    goto LABEL_25;
  }

  v103 = v12;
  v101 = v6;
  v106 = *(v2 + 16);
  v20 = v2 + 32;
  v102 = v2 + 32;
  while (1)
  {
    sub_18E220D08();
    if (v25)
    {
      goto LABEL_43;
    }

    sub_18E2F7B78();
    if (v21)
    {
      __break(1u);
LABEL_66:

      sub_18E1E01D0(v122);
LABEL_72:
      memcpy(v123, v122, sizeof(v123));
LABEL_73:
      sub_18E1C5B68();
      sub_18E26C3FC(v4, v121);
      if (*&v121[24])
      {
        if (sub_18E23D5A4())
        {
          v51 = *&v122[8];
          while (1)
          {
            sub_18E220D08();
            if (v25)
            {

              sub_18E1E01D0(v121);
              goto LABEL_92;
            }

            sub_18E2F7B78();
            if (v21)
            {
              goto LABEL_176;
            }

            sub_18E1E8C38(v102, v111);
            v52 = *&v111[24];
            sub_18E1C8570(v111, *&v111[24]);
            v53(v52);
            sub_18E223708();
            if (v25 && v54 == v51)
            {
              break;
            }

            sub_18E1E1574();
            sub_18E1CF9C4();

            if (v52)
            {
              goto LABEL_88;
            }

            sub_18E1E3BE0(v111);
          }

LABEL_88:

          sub_18E1C551C(v111, v118);
          if (sub_18E2245EC())
          {
            sub_18E220B7C(v119);
            nullsub_1(v119);
            sub_18E2235E0(v122);
          }

          else
          {
            sub_18E1E01D0(v122);
          }

          memcpy(v121, v122, sizeof(v121));
LABEL_92:
          sub_18E2F87DC(v122);
LABEL_93:
          sub_18E2329A4();
          sub_18E26C3FC(v4, v120);
          if (*&v120[24])
          {
            if (sub_18E23D5A4())
            {
              v56 = *&v121[8];
              while (1)
              {
                sub_18E220D08();
                if (v25)
                {

                  sub_18E1E01D0(v120);
                  goto LABEL_112;
                }

                sub_18E2F7B78();
                if (v21)
                {
                  goto LABEL_177;
                }

                sub_18E1E8C38(v102, v110);
                v57 = *&v110[24];
                sub_18E1C8570(v110, *&v110[24]);
                v58(v57);
                sub_18E223708();
                if (v25 && v59 == v56)
                {
                  break;
                }

                sub_18E1E1574();
                sub_18E1CF9C4();

                if (v57)
                {
                  goto LABEL_108;
                }

                sub_18E1E3BE0(v110);
              }

LABEL_108:

              sub_18E1C551C(v110, v111);
              if (sub_18E2245EC())
              {
                sub_18E2235E0(v118);
                nullsub_1(v118);
                sub_18E2F87F4(v121);
              }

              else
              {
                sub_18E1E01D0(v121);
              }

              sub_18E2F87DC(v120);
LABEL_112:
              sub_18E220B7C(v121);
LABEL_113:
              sub_18E242CF0();
              sub_18E2F883C(v119);
              if (*&v119[24])
              {
                if (sub_18E23D5A4())
                {
                  v61 = *&v120[8];
                  while (1)
                  {
                    sub_18E220D08();
                    if (v25)
                    {

                      sub_18E1E01D0(v119);
                      sub_18E242CF0();
                      goto LABEL_132;
                    }

                    sub_18E2F7B78();
                    if (v21)
                    {
                      goto LABEL_178;
                    }

                    sub_18E1E8C38(v102, v109);
                    v62 = *&v109[24];
                    sub_18E1C8570(v109, *&v109[24]);
                    v63(v62);
                    sub_18E223708();
                    if (v25 && v64 == v61)
                    {
                      break;
                    }

                    sub_18E1E1574();
                    sub_18E1CF9C4();

                    if (v62)
                    {
                      goto LABEL_128;
                    }

                    sub_18E1E3BE0(v109);
                  }

LABEL_128:

                  sub_18E1C551C(v109, v110);
                  sub_18E2245EC();
                  sub_18E242CF0();
                  if (v66)
                  {
                    sub_18E2F87F4(v111);
                    nullsub_1(v111);
                    memcpy(v120, v111, sizeof(v120));
                  }

                  else
                  {
                    sub_18E1E01D0(v120);
                  }

                  sub_18E220B7C(v119);
LABEL_132:
                  sub_18E2235E0(v120);
LABEL_133:
                  sub_18E2F883C(v118);

                  if (*&v118[24])
                  {
                    if (sub_18E23D5A4())
                    {
                      v67 = *&v119[8];
                      while (1)
                      {
                        sub_18E220D08();
                        if (v25)
                        {

                          sub_18E1E01D0(v118);
                          goto LABEL_154;
                        }

                        sub_18E2F7B78();
                        if (v21)
                        {
                          goto LABEL_179;
                        }

                        sub_18E1E8C38(v102, v108);
                        v68 = *&v108[24];
                        sub_18E1C8570(v108, *&v108[24]);
                        v69(v68);
                        sub_18E223708();
                        if (v25 && v70 == v67)
                        {

                          goto LABEL_150;
                        }

                        sub_18E1E1574();
                        sub_18E1E2238();

                        if (v68)
                        {
                          break;
                        }

                        sub_18E2336EC(v108);
                      }

LABEL_150:

                      sub_18E1C551C(v108, v109);
                      if (sub_18E2245EC())
                      {
                        memcpy(v110, v111, sizeof(v110));
                        nullsub_1(v110);
                        memcpy(v119, v110, sizeof(v119));
                      }

                      else
                      {
                        sub_18E1E01D0(v119);
                      }

                      sub_18E2235E0(v118);
LABEL_154:
                      sub_18E2F87F4(v119);
                      goto LABEL_155;
                    }
                  }

                  else
                  {

                    sub_18E1E8F44(v118, &qword_1EABE3B70, &qword_18E4AAB80);
                  }

                  sub_18E1E01D0(v119);
LABEL_155:
                  v116 = &type metadata for AssetBackedTokenizerBase;
                  v117 = sub_18E1E3434();
                  sub_18E1C86E0();
                  *&v115 = swift_allocObject();
                  memcpy((v115 + 16), v127, 0xD8uLL);
                  v113 = &type metadata for AssetBackedLLMModelBase;
                  v114 = sub_18E1E3358();
                  sub_18E1C86E0();
                  *&v112 = swift_allocObject();
                  memcpy((v112 + 16), v124, 0xD8uLL);
                  memcpy(v118, v123, sizeof(v118));
                  sub_18E221728(v118);
                  if (v25)
                  {
                    v73 = 0;
                    v130 = 0;
                    v72 = 0;
                  }

                  else
                  {
                    v72 = sub_18E220BC8();
                    sub_18E1C86E0();
                    v73 = swift_allocObject();
                    sub_18E2F87F4((v73 + 16));
                    v130 = &type metadata for AssetBackedLLMAdapterBase;
                  }

                  memcpy(v111, v122, sizeof(v111));
                  sub_18E221728(v111);
                  if (v25)
                  {
                    v102 = 0;
                    v100 = 0;
                    v107 = 0;
                  }

                  else
                  {
                    v107 = sub_18E1E7BB4();
                    sub_18E1C86E0();
                    v74 = swift_allocObject();
                    v75 = sub_18E23CA50(v74);
                    memcpy(v75, v111, 0xD8uLL);
                    v100 = &type metadata for AssetBackedLLMDraftModelBase;
                  }

                  sub_18E2F87DC(v110);
                  sub_18E221728(v110);
                  if (v25)
                  {
                    v97 = 0;
                    v98 = 0;
                    v99 = 0;
                  }

                  else
                  {
                    v99 = sub_18E220D24();
                    sub_18E1C86E0();
                    v76 = swift_allocObject();
                    v77 = sub_18E2F79A0(v76);
                    memcpy(v77, v110, 0xD8uLL);
                    v97 = &type metadata for AssetBackedImageTokenizerBase;
                  }

                  sub_18E220B7C(v109);
                  sub_18E221728(v109);
                  if (v25)
                  {
                    v94 = 0;
                    v95 = 0;
                    v96 = 0;
                  }

                  else
                  {
                    v96 = sub_18E221A84();
                    sub_18E1C86E0();
                    v95 = swift_allocObject();
                    memcpy((v95 + 16), v109, 0xD8uLL);
                    v94 = &type metadata for AssetBackedEmbeddingPreprocessorBase;
                  }

                  v78 = v0;
                  sub_18E2235E0(v108);
                  sub_18E221728(v108);
                  if (v25)
                  {
                    v80 = 0;
                    v93 = 0;
                    v79 = 0;
                  }

                  else
                  {
                    v79 = sub_18E2F1480();
                    sub_18E1C86E0();
                    v80 = swift_allocObject();
                    memcpy((v80 + 16), v108, 0xD8uLL);
                    v93 = &type metadata for AssetBackedLLMAdapterMetadataOverrideBase;
                  }

                  v81 = v103;

                  sub_18E44E50C();
                  v82 = sub_18E44E54C();
                  sub_18E220124(v78, 1, v82);
                  if (v25)
                  {

                    sub_18E1E8F44(v78, &qword_1EABE2FE0, &qword_18E49CE00);
                    v83 = v104;
                  }

                  else
                  {
                    v83 = sub_18E44E49C();
                    v105 = v80;
                    v84 = v79;
                    v85 = v73;
                    v86 = v72;
                    v88 = v87;

                    sub_18E1CE910();
                    v90 = *(v89 + 8);
                    v91 = sub_18E233460();
                    v92(v91);

                    v81 = v88;
                    v72 = v86;
                    v73 = v85;
                    v79 = v84;
                    v80 = v105;
                  }

                  *v101 = v83;
                  v101[1] = v81;
                  sub_18E1C551C(&v115, (v101 + 2));
                  sub_18E1C551C(&v112, (v101 + 7));
                  v101[12] = v73;
                  v101[13] = 0;
                  v101[14] = 0;
                  v101[15] = v130;
                  v101[16] = v72;
                  v101[17] = v102;
                  v101[18] = 0;
                  v101[19] = 0;
                  v101[20] = v100;
                  v101[21] = v107;
                  v101[22] = v98;
                  v101[23] = 0;
                  v101[24] = 0;
                  v101[25] = v97;
                  v101[26] = v99;
                  v101[27] = v95;
                  v101[28] = 0;
                  v101[29] = 0;
                  v101[30] = v94;
                  v101[31] = v96;
                  v101[32] = v80;
                  v101[33] = 0;
                  v101[34] = 0;
                  v101[35] = v93;
                  v101[36] = v79;
                  goto LABEL_29;
                }
              }

              else
              {
                sub_18E1E8F44(v119, &qword_1EABE3B70, &qword_18E4AAB80);
              }

              sub_18E1E01D0(v120);
              goto LABEL_133;
            }
          }

          else
          {
            sub_18E1E8F44(v120, &qword_1EABE3B70, &qword_18E4AAB80);
          }

          sub_18E1E01D0(v121);
          goto LABEL_113;
        }
      }

      else
      {
        sub_18E1E8F44(v121, &qword_1EABE3B70, &qword_18E4AAB80);
      }

      sub_18E1E01D0(v122);
      goto LABEL_93;
    }

    sub_18E1E8C38(v20, v128);
    v22 = *&v128[24];
    sub_18E1C8570(v128, *&v128[24]);
    v23(v22);
    sub_18E2F7F3C();
    v25 = v25 && v24 == v127[1];
    if (v25)
    {
      break;
    }

    sub_18E1D42A4();
    sub_18E2F8644();
    sub_18E1CF9C4();

    if (v22)
    {
      goto LABEL_32;
    }

    sub_18E1E3BE0(v128);
  }

LABEL_32:
  sub_18E1C551C(v128, &v129);
  sub_18E2706EC(&unk_1EABE33F0, &unk_18E49D240);
  if ((sub_18E2F8884() & 1) == 0)
  {
LABEL_43:

    sub_18E2F7A9C();
    sub_18E44EFFC();

    sub_18E1C8E68();
    *v128 = v37 + 15;
    *&v128[8] = v38;
    v39 = sub_18E1E1B1C();
    MEMORY[0x193ACC300](v39);
    goto LABEL_27;
  }

  memcpy(v127, v128, sizeof(v127));
  sub_18E1CC4E4();
  sub_18E23552C();
  sub_18E26C3FC(v4, v32);
  if (*&v125[24])
  {
    if (sub_18E223680())
    {
      while (1)
      {
        sub_18E220D08();
        if (v25)
        {
          goto LABEL_61;
        }

        sub_18E1E6934();
        if (v21)
        {
          break;
        }

        sub_18E1E8C38(v102, v125);
        v33 = *&v125[24];
        sub_18E1C8570(v125, *&v125[24]);
        v34(v33);
        sub_18E2F7F3C();
        if (v25 && v35 == v124[1])
        {

LABEL_49:
          sub_18E1C551C(v125, &v126);
          if ((sub_18E2245EC() & 1) == 0)
          {
LABEL_61:

            sub_18E2121D8(v127);

            sub_18E2F8078();
            sub_18E44EFFC();

            sub_18E1C8E68();
            *v125 = v48 + 14;
            *&v125[8] = v49;
            v50 = sub_18E1E1B1C();
            MEMORY[0x193ACC300](v50);
            goto LABEL_62;
          }

          memcpy(v124, v125, sizeof(v124));
          sub_18E2233C0();
          sub_18E26C3FC(v4, v122);
          if (*&v122[24])
          {
            if (sub_18E23D5A4())
            {
              v43 = v123[1];
              while (1)
              {
                sub_18E220D08();
                if (v25)
                {
                  goto LABEL_66;
                }

                sub_18E2F7B78();
                if (v21)
                {
                  goto LABEL_175;
                }

                sub_18E1E8C38(v102, v118);
                v44 = *&v118[24];
                sub_18E1C8570(v118, *&v118[24]);
                v45(v44);
                sub_18E223708();
                if (v25 && v46 == v43)
                {

LABEL_68:

                  sub_18E1C551C(v118, v119);
                  if (sub_18E2245EC())
                  {
                    sub_18E2F87DC(v120);
                    nullsub_1(v120);
                    sub_18E220B7C(v123);
                  }

                  else
                  {
                    sub_18E1E01D0(v123);
                  }

                  memcpy(v122, v123, sizeof(v122));
                  goto LABEL_72;
                }

                sub_18E1E1574();
                sub_18E1CF9C4();

                if (v44)
                {
                  goto LABEL_68;
                }

                sub_18E1E3BE0(v118);
              }
            }
          }

          else
          {
            sub_18E1E8F44(v122, &qword_1EABE3B70, &qword_18E4AAB80);
          }

          sub_18E1E01D0(v123);
          goto LABEL_73;
        }

        sub_18E1D42A4();
        sub_18E2F8644();
        sub_18E1CF9C4();

        if (v33)
        {
          goto LABEL_49;
        }

        sub_18E1E3BE0(v125);
      }

      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
      return;
    }

    sub_18E2121D8(v127);
  }

  else
  {

    sub_18E2121D8(v127);

    sub_18E1E8F44(v125, &qword_1EABE3B70, &qword_18E4AAB80);
  }

  sub_18E2F8078();
  sub_18E44EFFC();

  sub_18E1C8E68();
  *v125 = v40 + 25;
  *&v125[8] = v41;
  sub_18E44E99C();
  sub_18E22449C();

  v42 = sub_18E1CFFC0();
  MEMORY[0x193ACC300](v42);
LABEL_62:

LABEL_28:
  sub_18E2AE554();
  v30 = sub_18E1C8558();
  sub_18E1D7E28(v30, v31);
LABEL_29:
  sub_18E1E2968();
  sub_18E1C6650();
}

uint64_t sub_18E2E4F88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E2E4F80();
  *a1 = result;
  return result;
}

uint64_t sub_18E2E4FB0(uint64_t a1)
{
  v2 = sub_18E1E0B8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2E4FEC(uint64_t a1)
{
  v2 = sub_18E1E0B8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static AssetBackedLLMBundle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  AssetBackedLLMBundle.assetBackedResources.getter();
  v4 = sub_18E1DF33C(v3);

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_18E2247C8();
    sub_18E26F1E0(v6, v5, 0);
    v15 = v46;
    do
    {
      sub_18E2F862C(v7, v8, v9, v10, v11, v12, v13, v14, v45[0]);
      v16 = sub_18E1C8C94(v45);
      v17(v16);
      sub_18E221954();
      sub_18E1C9934(v45);
      v46 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      sub_18E22327C();
      if (v21)
      {
        v23 = sub_18E1C8C60(v20);
        sub_18E2F7AE4(v23);
        v15 = v46;
      }

      sub_18E240BE4();
    }

    while (!v22);
  }

  else
  {
  }

  AssetBackedLLMBundle.assetBackedResources.getter();
  v25 = v24;
  sub_18E1DF33C(v24);
  sub_18E233F98();
  if (*(a2 + 16))
  {
    v26 = sub_18E2247C8();
    sub_18E2F7CE0(v26);
    v35 = v46;
    do
    {
      sub_18E2F862C(v27, v28, v29, v30, v31, v32, v33, v34, v45[0]);
      v36 = sub_18E1C8C94(v45);
      v37(v36);
      sub_18E221954();
      sub_18E1C9934(v45);
      v46 = v35;
      v39 = *(v35 + 16);
      v38 = *(v35 + 24);
      sub_18E22327C();
      if (v21)
      {
        v41 = sub_18E1C8C60(v40);
        sub_18E2F7AE4(v41);
        v35 = v46;
      }

      sub_18E1CA5D4();
    }

    while (!v22);
  }

  v42 = sub_18E1E6BB0();
  sub_18E290008(v42, v43);
  sub_18E1E6A20();

  return v25 & 1;
}

void AssetBackedLLMBundle.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_18E2F7B84();
  a23 = v24;
  a24 = v25;
  sub_18E1E2E88();
  AssetBackedLLMBundle.id.getter();
  v26 = a11;
  sub_18E44EB4C();

  AssetBackedLLMBundle.assetBackedResources.getter();
  sub_18E1DF33C(v27);
  v28 = sub_18E233F98();
  if (*(v26 + 16))
  {
    do
    {
      sub_18E2F7CF8(v28);
      v29 = sub_18E1CAD4C(&a10);
      v30(v29);
      sub_18E1C9934(&a10);
      sub_18E1D42A4();
      sub_18E44EB4C();

      sub_18E22365C();
    }

    while (!v31);

    sub_18E2232AC();
  }

  else
  {
    sub_18E2232AC();
  }
}

__n128 sub_18E2E5434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t, uint64_t), void (*a22)(uint64_t, uint64_t))
{
  sub_18E1C575C();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v57 = v37;
  v56 = v38;
  v39 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v39);
  v41 = *(v40 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v42);
  sub_18E2352F4();
  v43 = *v34;
  v44 = v34[1];

  sub_18E44E50C();

  v45 = sub_18E44E54C();
  if (sub_18E1CAF28(v22, 1, v45) == 1)
  {
    sub_18E1E8F44(v22, &qword_1EABE2FE0, &qword_18E49CE00);
  }

  else
  {
    v43 = sub_18E44E49C();
    v55 = v24;
    v47 = v46;
    sub_18E1C82B8(v45);
    (*(v48 + 8))(v22, v45);

    v44 = v47;
    v24 = v55;
  }

  *v36 = v43;
  *(v36 + 8) = v44;
  a21(v56, v36 + 16);
  a22(v57, v36 + 56);
  v49 = *(v32 + 16);
  *(v36 + 96) = *v32;
  *(v36 + 112) = v49;
  *(v36 + 128) = *(v32 + 32);
  v50 = *(v30 + 16);
  *(v36 + 136) = *v30;
  *(v36 + 152) = v50;
  *(v36 + 168) = *(v30 + 32);
  *(v36 + 208) = *(v28 + 32);
  v51 = *(v28 + 16);
  *(v36 + 176) = *v28;
  *(v36 + 192) = v51;
  *(v36 + 248) = *(v26 + 4);
  v52 = *v26;
  *(v36 + 232) = v26[1];
  *(v36 + 216) = v52;
  *(v36 + 288) = *(v24 + 32);
  v53 = *(v24 + 16);
  *(v36 + 256) = *v24;
  *(v36 + 272) = v53;
  sub_18E1C5544();
  return result;
}

void LLMBundle.init(with:resources:)()
{
  sub_18E1C62A0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v7);
  v9 = *(v8 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C8E58();
  sub_18E1E7430();
  sub_18E26C3FC(v4, v11);
  if (!*&v138[24])
  {

    sub_18E1E8F44(v138, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_22:
    sub_18E1E2B20();
    sub_18E44EFFC();

    sub_18E1C8E68();
    goto LABEL_26;
  }

  if ((sub_18E22169C() & 1) == 0)
  {

    goto LABEL_22;
  }

  v140 = v2;
  v12 = v137[0];
  v13 = v137[1];
  type metadata accessor for Utils();
  if ((sub_18E32F0AC(v137[0], v137[1]) & 1) == 0)
  {
    if (qword_1EABE0CF8 != -1)
    {
      sub_18E1C7804();
    }

    v14 = sub_18E44E83C();
    sub_18E1C95EC(v14, qword_1EAC7F560);
    sub_18E1E6C9C();

    v15 = sub_18E44E80C();
    sub_18E44EE0C();

    if (sub_18E23CA28())
    {
      sub_18E1C5F74();
      *v138 = sub_18E223E58();
      *v4 = 136315138;
      *(v4 + 4) = sub_18E1C9624(v12, v13, v138);
      sub_18E1D5F48(&dword_18E1C1000, v16, v17, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E221F60();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }
  }

  sub_18E1D49B0();
  sub_18E2F7D70();
  sub_18E26C3FC(v4, v18);
  if (!*&v138[24])
  {

    sub_18E1E8F44(v138, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_25:
    sub_18E1E2B20();
    sub_18E44EFFC();

    sub_18E1C8E68();
    v28 = v29 + 24;
LABEL_26:
    *v138 = v28;
    *&v138[8] = v27;
    sub_18E44E99C();
    sub_18E22449C();

    v30 = sub_18E1CFFC0();
    MEMORY[0x193ACC300](v30);
LABEL_27:

    goto LABEL_28;
  }

  if ((sub_18E22169C() & 1) == 0)
  {

    goto LABEL_25;
  }

  v113 = v0;
  v114 = v4;
  v111 = v6;
  v19 = v137[0];
  v116 = *(v140 + 16);
  v20 = v140 + 32;
  v112 = v140 + 32;
  while (1)
  {
    sub_18E223494();
    if (v26)
    {
      goto LABEL_44;
    }

    sub_18E1E1888();
    if (v21)
    {
      __break(1u);
LABEL_67:

      sub_18E268E70(v132);
      v46 = v114;
LABEL_73:
      memcpy(v133, v132, sizeof(v133));
LABEL_74:
      sub_18E1C5B68();
      sub_18E26C3FC(v46, v129);
      if (*&v129[24])
      {
        if (sub_18E223680())
        {
          v19 = *&v132[8];
          v20 = v140 + 32;
          while (1)
          {
            sub_18E223494();
            if (v26)
            {

              sub_18E268E70(v129);
              v46 = v114;
              goto LABEL_93;
            }

            sub_18E223B14(v140);
            if (v21)
            {
              goto LABEL_177;
            }

            sub_18E1E8C38(v112, v130);
            v56 = v130[24];
            v57 = *&v130[32];
            sub_18E1E15F4(v130, *&v130[24]);
            v58 = sub_18E22879C(v57);
            v59(v58, v57);
            sub_18E223708();
            if (v26 && v60 == v19)
            {
              break;
            }

            sub_18E1E1574();
            sub_18E1E1F80();

            if (v56)
            {
              goto LABEL_89;
            }

            sub_18E207AC8(v130);
          }

LABEL_89:

          sub_18E1C551C(v130, v131);
          v46 = v114;
          if (sub_18E2240C8())
          {
            memcpy(v118, v122, sizeof(v118));
            nullsub_1(v118);
            memcpy(v132, v118, sizeof(v132));
          }

          else
          {
            sub_18E268E70(v132);
          }

          memcpy(v129, v132, sizeof(v129));
LABEL_93:
          memcpy(v132, v129, sizeof(v132));
LABEL_94:
          sub_18E2329A4();
          sub_18E26C3FC(v46, v129);
          if (*&v129[24])
          {
            if (sub_18E23507C())
            {
              sub_18E2231CC();
              while (1)
              {
                sub_18E223494();
                if (v26)
                {

                  sub_18E1E01D0(v129);
                  v46 = v114;
                  goto LABEL_113;
                }

                sub_18E223B14(v140);
                if (v21)
                {
                  goto LABEL_178;
                }

                sub_18E1E8C38(v20, v121);
                v62 = v121[24];
                v63 = *&v121[32];
                sub_18E1E15F4(v121, *&v121[24]);
                v64 = sub_18E22879C(v63);
                v65(v64, v63);
                sub_18E223708();
                if (v26 && v66 == v19)
                {
                  break;
                }

                sub_18E1E1574();
                sub_18E1E1F80();

                if (v62)
                {
                  goto LABEL_109;
                }

                sub_18E207AC8(v121);
              }

LABEL_109:

              sub_18E1C551C(v121, v130);
              v46 = v114;
              if (sub_18E2240C8())
              {
                memcpy(v131, v118, sizeof(v131));
                nullsub_1(v131);
                memcpy(v122, v131, 0xD8uLL);
              }

              else
              {
                sub_18E1E01D0(v122);
              }

              sub_18E224F3C();
LABEL_113:
              memcpy(v118, v129, 0xD8uLL);
LABEL_114:
              sub_18E242CF0();
              sub_18E26C3FC(v46, v129);
              if (*&v129[24])
              {
                if (sub_18E23507C())
                {
                  sub_18E2231CC();
                  while (1)
                  {
                    sub_18E223494();
                    if (v26)
                    {

                      sub_18E1E01D0(v129);
                      v46 = v114;
                      sub_18E242CF0();
                      goto LABEL_133;
                    }

                    sub_18E223B14(v140);
                    if (v21)
                    {
                      goto LABEL_179;
                    }

                    sub_18E1E8C38(v20, v120);
                    v68 = v120[24];
                    v69 = *&v120[32];
                    sub_18E1E15F4(v120, *&v120[24]);
                    v70 = sub_18E22879C(v69);
                    v71(v70, v69);
                    sub_18E223708();
                    if (v26 && v72 == v19)
                    {
                      break;
                    }

                    sub_18E1E1574();
                    sub_18E1E1F80();

                    if (v68)
                    {
                      goto LABEL_129;
                    }

                    sub_18E207AC8(v120);
                  }

LABEL_129:

                  sub_18E1C551C(v120, v121);
                  sub_18E2240C8();
                  v46 = v114;
                  sub_18E242CF0();
                  if (v74)
                  {
                    memcpy(v130, v131, sizeof(v130));
                    nullsub_1(v130);
                    memcpy(v122, v130, 0xD8uLL);
                  }

                  else
                  {
                    sub_18E1E01D0(v122);
                  }

                  sub_18E224F3C();
LABEL_133:
                  memcpy(v131, v129, sizeof(v131));
LABEL_134:
                  sub_18E26C3FC(v46, v129);

                  if (*&v129[24])
                  {
                    v75 = sub_18E23507C();
                    v76 = v140;
                    if (v75)
                    {
                      v77 = 0;
                      v78 = v122[1];
                      while (1)
                      {
                        if (v116 == v77)
                        {

                          sub_18E1E01D0(v129);
                          goto LABEL_155;
                        }

                        if (v77 >= *(v76 + 16))
                        {
                          goto LABEL_180;
                        }

                        sub_18E1E8C38(v112, v119);
                        v79 = v119[24];
                        v80 = sub_18E1E1D24(v119);
                        v81(v80);
                        sub_18E223708();
                        if (v26 && v82 == v78)
                        {

                          goto LABEL_151;
                        }

                        sub_18E1E1574();
                        sub_18E1E1F80();

                        if (v79)
                        {
                          break;
                        }

                        sub_18E1C9934(v119);
                        v112 += 40;
                        ++v77;
                        v76 = v140;
                      }

LABEL_151:

                      sub_18E1C551C(v119, v120);
                      if (sub_18E2240C8())
                      {
                        memcpy(v121, v130, sizeof(v121));
                        nullsub_1(v121);
                        memcpy(v122, v121, 0xD8uLL);
                      }

                      else
                      {
                        sub_18E1E01D0(v122);
                      }

                      sub_18E224F3C();
LABEL_155:
                      memcpy(v130, v129, sizeof(v130));
                      goto LABEL_156;
                    }
                  }

                  else
                  {

                    sub_18E1E8F44(v129, &qword_1EABE3B70, &qword_18E4AAB80);
                  }

                  sub_18E1E01D0(v130);
LABEL_156:
                  v127 = &type metadata for TokenizerBase;
                  v128 = sub_18E1E28CC();
                  sub_18E220B24();
                  *&v126 = swift_allocObject();
                  memcpy((v126 + 16), v137, 0xF8uLL);
                  v124 = &type metadata for LLMModelBase;
                  v125 = sub_18E1E2A0C();
                  sub_18E220B24();
                  *&v123 = swift_allocObject();
                  memcpy((v123 + 16), v134, 0xF8uLL);
                  memcpy(v129, v133, sizeof(v129));
                  sub_18E221728(v129);
                  if (v26)
                  {
                    v141 = 0;
                    v117 = 0;
                    v84 = 0;
                  }

                  else
                  {
                    v84 = sub_18E22402C();
                    sub_18E220B24();
                    v141 = swift_allocObject();
                    memcpy((v141 + 16), v129, 0xF8uLL);
                    v117 = &type metadata for LLMAdapterBase;
                  }

                  memcpy(v122, v132, sizeof(v122));
                  sub_18E221728(v122);
                  if (v26)
                  {
                    v112 = 0;
                    v110 = 0;
                    v115 = 0;
                  }

                  else
                  {
                    v115 = sub_18E216928();
                    sub_18E220B24();
                    v85 = swift_allocObject();
                    v86 = sub_18E23CA50(v85);
                    memcpy(v86, v122, 0xF8uLL);
                    v110 = &type metadata for LLMDraftModelBase;
                  }

                  memcpy(v121, v118, sizeof(v121));
                  sub_18E221728(v121);
                  if (v26)
                  {
                    v107 = 0;
                    v108 = 0;
                    v109 = 0;
                  }

                  else
                  {
                    v109 = sub_18E216AA0();
                    sub_18E1C86E0();
                    v87 = swift_allocObject();
                    v88 = sub_18E2092EC(v87);
                    memcpy(v88, v121, 0xD8uLL);
                    v107 = &type metadata for ImageTokenizerBase;
                  }

                  v89 = v12;
                  memcpy(v120, v131, sizeof(v120));
                  sub_18E221728(v120);
                  if (v26)
                  {
                    v91 = 0;
                    v92 = 0;
                    v90 = 0;
                  }

                  else
                  {
                    v90 = sub_18E2F1528();
                    sub_18E1C86E0();
                    v91 = swift_allocObject();
                    memcpy((v91 + 16), v120, 0xD8uLL);
                    v92 = &type metadata for EmbeddingPreprocessorBase;
                  }

                  memcpy(v119, v130, sizeof(v119));
                  sub_18E221728(v119);
                  if (v26)
                  {
                    v104 = 0;
                    v105 = 0;
                    v106 = 0;
                  }

                  else
                  {
                    v106 = sub_18E2F14D4();
                    sub_18E1C86E0();
                    v105 = swift_allocObject();
                    memcpy((v105 + 16), v119, 0xD8uLL);
                    v104 = &type metadata for LLMAdapterMetadataOverrideBase;
                  }

                  sub_18E1E2898();
                  sub_18E44E50C();
                  v93 = sub_18E44E54C();
                  sub_18E220124(v113, 1, v93);
                  if (v26)
                  {

                    sub_18E1E8F44(v113, &qword_1EABE2FE0, &qword_18E49CE00);
                  }

                  else
                  {
                    v89 = sub_18E44E49C();
                    v103 = v92;
                    v94 = v91;
                    v95 = v90;
                    v96 = v84;
                    v98 = v97;

                    sub_18E1CE910();
                    v100 = *(v99 + 8);
                    v101 = sub_18E233460();
                    v102(v101);

                    v13 = v98;
                    v84 = v96;
                    v90 = v95;
                    v91 = v94;
                    v92 = v103;
                  }

                  *v111 = v89;
                  v111[1] = v13;
                  sub_18E1C551C(&v126, (v111 + 2));
                  sub_18E1C551C(&v123, (v111 + 7));
                  v111[12] = v141;
                  v111[13] = 0;
                  v111[14] = 0;
                  v111[15] = v117;
                  v111[16] = v84;
                  v111[17] = v112;
                  v111[18] = 0;
                  v111[19] = 0;
                  v111[20] = v110;
                  v111[21] = v115;
                  v111[22] = v108;
                  v111[23] = 0;
                  v111[24] = 0;
                  v111[25] = v107;
                  v111[26] = v109;
                  v111[27] = v91;
                  v111[28] = 0;
                  v111[29] = 0;
                  v111[30] = v92;
                  v111[31] = v90;
                  v111[32] = v105;
                  v111[33] = 0;
                  v111[34] = 0;
                  v111[35] = v104;
                  v111[36] = v106;
                  goto LABEL_29;
                }
              }

              else
              {
                sub_18E1E8F44(v129, &qword_1EABE3B70, &qword_18E4AAB80);
              }

              sub_18E1E01D0(v131);
              goto LABEL_134;
            }
          }

          else
          {
            sub_18E1E8F44(v129, &qword_1EABE3B70, &qword_18E4AAB80);
          }

          sub_18E1E01D0(v118);
          goto LABEL_114;
        }
      }

      else
      {
        sub_18E1E8F44(v129, &qword_1EABE3B70, &qword_18E4AAB80);
      }

      sub_18E268E70(v132);
      goto LABEL_94;
    }

    sub_18E1E8C38(v20, v138);
    v22 = *&v138[32];
    sub_18E1E15F4(v138, *&v138[24]);
    v23 = sub_18E1E3118(v22);
    v24(v23, v22);
    sub_18E2F7F3C();
    v26 = v26 && v25 == v137[1];
    if (v26)
    {
      break;
    }

    sub_18E1D42A4();
    sub_18E2F8644();
    sub_18E1E1F80();

    if (v22)
    {
      goto LABEL_32;
    }

    sub_18E207AC8(v138);
  }

LABEL_32:
  sub_18E1C551C(v138, &v139);
  sub_18E2706EC(&qword_1EABE0EA0, &qword_18E49D250);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_44:

    sub_18E1E2B20();
    sub_18E44EFFC();

    sub_18E1C8E68();
    *v138 = v40 + 15;
    *&v138[8] = v41;
    v42 = sub_18E1E1B1C();
    MEMORY[0x193ACC300](v42);
    goto LABEL_27;
  }

  memcpy(v137, v138, sizeof(v137));
  sub_18E1CC4E4();
  sub_18E23552C();
  sub_18E26C3FC(v114, v33);
  if (*&v135[24])
  {
    if (sub_18E223680())
    {
      v19 = v134[0];
      v20 = v140 + 32;
      while (1)
      {
        sub_18E223494();
        if (v26)
        {
          goto LABEL_62;
        }

        sub_18E1E1888();
        if (v21)
        {
          break;
        }

        sub_18E1E8C38(v112, v135);
        v34 = v135[24];
        v35 = *&v135[32];
        sub_18E1E15F4(v135, *&v135[24]);
        v36 = sub_18E22879C(v35);
        v37(v36, v35);
        sub_18E2F7F3C();
        if (v26 && v38 == v134[1])
        {

LABEL_50:
          sub_18E1C551C(v135, &v136);
          if ((sub_18E2240C8() & 1) == 0)
          {
LABEL_62:

            sub_18E2CF1A4(v137);

            sub_18E2F8064();
            sub_18E44EFFC();

            sub_18E1C8E68();
            *v135 = v53 + 14;
            *&v135[8] = v54;
            v55 = sub_18E1E1B1C();
            MEMORY[0x193ACC300](v55);
            goto LABEL_63;
          }

          memcpy(v134, v135, sizeof(v134));
          sub_18E2233C0();
          v46 = v114;
          sub_18E26C3FC(v114, v132);
          if (*&v132[24])
          {
            if (sub_18E223680())
            {
              v19 = v133[1];
              v20 = v140 + 32;
              while (1)
              {
                sub_18E223494();
                if (v26)
                {
                  goto LABEL_67;
                }

                sub_18E223B14(v140);
                if (v21)
                {
                  goto LABEL_176;
                }

                sub_18E1E8C38(v112, v131);
                v47 = v131[24];
                v48 = *&v131[32];
                sub_18E1E15F4(v131, *&v131[24]);
                v49 = sub_18E22879C(v48);
                v50(v49, v48);
                sub_18E223708();
                if (v26 && v51 == v19)
                {

LABEL_69:

                  sub_18E1C551C(v131, v118);
                  v46 = v114;
                  if (sub_18E2240C8())
                  {
                    memcpy(v122, v129, sizeof(v122));
                    nullsub_1(v122);
                    memcpy(v133, v122, sizeof(v133));
                  }

                  else
                  {
                    sub_18E268E70(v133);
                  }

                  memcpy(v132, v133, sizeof(v132));
                  goto LABEL_73;
                }

                sub_18E1E1574();
                sub_18E1E1F80();

                if (v47)
                {
                  goto LABEL_69;
                }

                sub_18E207AC8(v131);
              }
            }
          }

          else
          {
            sub_18E1E8F44(v132, &qword_1EABE3B70, &qword_18E4AAB80);
          }

          sub_18E268E70(v133);
          goto LABEL_74;
        }

        sub_18E1D42A4();
        sub_18E2F8644();
        sub_18E1E1F80();

        if (v34)
        {
          goto LABEL_50;
        }

        sub_18E207AC8(v135);
      }

      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
      return;
    }

    sub_18E2CF1A4(v137);
  }

  else
  {

    sub_18E2CF1A4(v137);

    sub_18E1E8F44(v135, &qword_1EABE3B70, &qword_18E4AAB80);
  }

  sub_18E2F8064();
  sub_18E44EFFC();

  sub_18E1C8E68();
  *v135 = v43 + 25;
  *&v135[8] = v44;
  sub_18E44E99C();
  sub_18E22449C();

  v45 = sub_18E1CFFC0();
  MEMORY[0x193ACC300](v45);
LABEL_63:

LABEL_28:
  sub_18E2AE554();
  v31 = sub_18E1C8558();
  sub_18E1CFAB8(v31, v32);
LABEL_29:
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void LLMBundle.resources.getter()
{
  sub_18E1C575C();
  v2 = v0[5];
  v276 = v0[6];
  sub_18E221834(v0 + 2);
  sub_18E1CF2D8();
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_18E2F7994();
  v6 = sub_18E1CD9D8();
  (v1)(v6);
  sub_18E220AAC();
  sub_18E2451D0();
  v8 = sub_18E235294(v7);
  if (v10)
  {
    sub_18E1C6560(v9);
    sub_18E2451D0();
    v8 = sub_18E216B58(v252);
  }

  MEMORY[0x1EEE9AC00](v8);
  v11 = sub_18E2112EC();
  (v1)(v11);
  v12 = sub_18E1C5820(*(v276 + 8));
  sub_18E1DF2A8(v12, v13, v14, v15, v16);
  v17 = sub_18E2167D8();
  v18(v17);
  v259 = v0[11];
  v19 = sub_18E1E15F4(v0 + 7, v0[10]);
  sub_18E1C63B0(v19, v20, v21, v22, v23, v24, v25, v26, v259);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v38 = sub_18E1C5D50(v30, v31, v32, v33, v34, v35, v36, v37, v260);
  (v1)(v38);
  sub_18E1D4294();
  if (v10)
  {
    sub_18E1C6560(v39);
    sub_18E2451D0();
    sub_18E216B58(v253);
  }

  sub_18E2236E0();
  v41 = MEMORY[0x1EEE9AC00](v40);
  v49 = sub_18E1C8768(v41, v42, v43, v44, v45, v46, v47, v48, v261);
  (v1)(v49);
  sub_18E2F8028();
  v51 = sub_18E1C5820(*(v50 + 8));
  sub_18E1DF2A8(v51, v52, v53, v54, v55);
  v56 = sub_18E1CA2BC();
  v57(v56);
  sub_18E2F66D4((v0 + 12), v278, &qword_1EABE12F0, &unk_18E49ED90);
  if (v279)
  {
    v58 = sub_18E1E8728();
    sub_18E1C551C(v58, v59);
    v263 = v282;
    v60 = sub_18E1E15F4(v280, v281);
    sub_18E1C63B0(v60, v61, v62, v63, v64, v65, v66, v67, v263);
    v69 = *(v68 + 64);
    v71 = MEMORY[0x1EEE9AC00](v70);
    v79 = sub_18E1C5D50(v71, v72, v73, v74, v75, v76, v77, v78, v264);
    (v1)(v79);
    sub_18E1D4294();
    if (v10)
    {
      sub_18E1C6560(v80);
      sub_18E2451D0();
      sub_18E216B58(v254);
    }

    sub_18E2236E0();
    v82 = MEMORY[0x1EEE9AC00](v81);
    v90 = sub_18E1C8768(v82, v83, v84, v85, v86, v87, v88, v89, v265);
    (v1)(v90);
    sub_18E2F8028();
    v92 = sub_18E1C5820(*(v91 + 8));
    sub_18E1DF2A8(v92, v93, v94, v95, v96);
    v97 = sub_18E1CA2BC();
    v98(v97);
    sub_18E1E86DC();
  }

  else
  {
    sub_18E1E8F44(v278, &qword_1EABE12F0, &unk_18E49ED90);
  }

  sub_18E2F66D4((v0 + 17), v278, &qword_1EABE12F8, &qword_18E4AAE90);
  if (v279)
  {
    v99 = sub_18E1E8728();
    sub_18E1C551C(v99, v100);
    v266 = v282;
    v101 = sub_18E1E15F4(v280, v281);
    sub_18E1C63B0(v101, v102, v103, v104, v105, v106, v107, v108, v266);
    v110 = *(v109 + 64);
    v112 = MEMORY[0x1EEE9AC00](v111);
    v120 = sub_18E1C5D50(v112, v113, v114, v115, v116, v117, v118, v119, v267);
    (v1)(v120);
    sub_18E1D4294();
    if (v10)
    {
      sub_18E1C6560(v121);
      sub_18E2451D0();
      sub_18E216B58(v255);
    }

    sub_18E2236E0();
    v123 = MEMORY[0x1EEE9AC00](v122);
    v131 = sub_18E1C8768(v123, v124, v125, v126, v127, v128, v129, v130, v268);
    (v1)(v131);
    sub_18E2F8028();
    v133 = sub_18E1C5820(v132);
    sub_18E1DF2A8(v133, v134, v135, v136, v137);
    v138 = sub_18E1CA2BC();
    v139(v138);
    sub_18E1E86DC();
  }

  else
  {
    sub_18E1E8F44(v278, &qword_1EABE12F8, &qword_18E4AAE90);
  }

  sub_18E2F66D4((v0 + 22), v278, &qword_1EABE2568, &qword_18E4AAE98);
  if (v279)
  {
    v140 = sub_18E1E8728();
    sub_18E1C551C(v140, v141);
    v269 = v282;
    v142 = sub_18E1E15F4(v280, v281);
    sub_18E1C63B0(v142, v143, v144, v145, v146, v147, v148, v149, v269);
    v151 = *(v150 + 64);
    v153 = MEMORY[0x1EEE9AC00](v152);
    v161 = sub_18E1C5D50(v153, v154, v155, v156, v157, v158, v159, v160, v270);
    (v1)(v161);
    sub_18E1D4294();
    if (v10)
    {
      sub_18E1C6560(v162);
      sub_18E2451D0();
      sub_18E216B58(v256);
    }

    sub_18E2236E0();
    v164 = MEMORY[0x1EEE9AC00](v163);
    v172 = sub_18E1C8768(v164, v165, v166, v167, v168, v169, v170, v171, v271);
    (v1)(v172);
    sub_18E2F8028();
    v174 = sub_18E1C5820(v173);
    sub_18E1DF2A8(v174, v175, v176, v177, v178);
    v179 = sub_18E1CA2BC();
    v180(v179);
    sub_18E1E86DC();
  }

  else
  {
    sub_18E1E8F44(v278, &qword_1EABE2568, &qword_18E4AAE98);
  }

  sub_18E2F66D4((v0 + 27), v278, &qword_1EABE2570, &qword_18E4AAEA0);
  if (v279)
  {
    v181 = sub_18E1E8728();
    sub_18E1C551C(v181, v182);
    v272 = v282;
    v183 = sub_18E1E15F4(v280, v281);
    sub_18E1C63B0(v183, v184, v185, v186, v187, v188, v189, v190, v272);
    v192 = *(v191 + 64);
    v194 = MEMORY[0x1EEE9AC00](v193);
    v202 = sub_18E1C5D50(v194, v195, v196, v197, v198, v199, v200, v201, v273);
    (v1)(v202);
    sub_18E1D4294();
    if (v10)
    {
      sub_18E1C6560(v203);
      sub_18E2451D0();
      sub_18E216B58(v257);
    }

    sub_18E2236E0();
    v205 = MEMORY[0x1EEE9AC00](v204);
    v213 = sub_18E1C8768(v205, v206, v207, v208, v209, v210, v211, v212, v274);
    (v1)(v213);
    v214 = sub_18E1C5820(v262);
    sub_18E1DF2A8(v214, v215, v216, v217, v218);
    v219 = sub_18E1CA2BC();
    v220(v219);
    sub_18E1E86DC();
  }

  else
  {
    sub_18E1E8F44(v278, &qword_1EABE2570, &qword_18E4AAEA0);
  }

  sub_18E2F66D4((v0 + 32), v278, &qword_1EABE2578, &qword_18E4AAEA8);
  if (v279)
  {
    v221 = sub_18E1E8728();
    sub_18E1C551C(v221, v222);
    v223 = v281;
    v277 = v282;
    sub_18E1E15F4(v280, v281);
    sub_18E2349BC();
    sub_18E1C5780();
    v225 = *(v224 + 64);
    v227 = MEMORY[0x1EEE9AC00](v226);
    v235 = sub_18E1E89D0(v227, v228, v229, v230, v231, v232, v233, v234, v262);
    (v1)(v235);
    sub_18E1E597C();
    if (v10)
    {
      sub_18E1C8C60(v236);
      sub_18E1C5068();
      sub_18E2451D0();
      sub_18E216B58(v258);
    }

    sub_18E235258();
    v238 = MEMORY[0x1EEE9AC00](v237);
    sub_18E1CEAD0(v238, v239, v240, v241, v242, v243, v244, v245, v275);
    sub_18E223BDC();
    v1();
    sub_18E1E1A80(v277);
    v246 = sub_18E1CF9A0();
    sub_18E1DF2A8(v246, v247, v248, v223, v249);
    v250 = sub_18E221A60();
    v251(v250);
    sub_18E1C9934(v280);
  }

  else
  {
    sub_18E1E8F44(v278, &qword_1EABE2578, &qword_18E4AAEA8);
  }

  sub_18E1C5544();
}

uint64_t sub_18E2E7060()
{
  sub_18E1E2F2C();
  v3 = v3 && v2 == 0xE200000000000000;
  if (v3 || (sub_18E1E3894() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == sub_18E1D49B0() && v0 == 0xE900000000000072;
    if (v5 || (sub_18E1CF3DC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      sub_18E221B94();
      v6 = v3 && v0 == 0xE90000000000006CLL;
      if (v6 || (sub_18E1CF3DC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v7 = v1 == sub_18E2233C0() && v0 == 0xE700000000000000;
        if (v7 || (sub_18E1CF3DC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          sub_18E1D5DB4();
          v9 = v3 && v0 == v8;
          if (v9 || (sub_18E23552C(), (sub_18E1CF3DC() & 1) != 0))
          {

            return 4;
          }

          else
          {
            v11 = v1 == sub_18E220964() && v0 == v10;
            if (v11 || (sub_18E1CF3DC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v12 = v1 == 0xD000000000000015 && 0x800000018E458F70 == v0;
              if (v12 || (sub_18E1CF3DC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                sub_18E1C77B0();
                if (v1 == 0xD000000000000017 && v13 == v0)
                {

                  return 7;
                }

                else
                {
                  sub_18E1CF3DC();
                  sub_18E1E6A20();
                  if (v1)
                  {
                    return 7;
                  }

                  else
                  {
                    return 8;
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

uint64_t sub_18E2E7218(uint64_t a1)
{
  v2 = sub_18E2F157C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2E7254(uint64_t a1)
{
  v2 = sub_18E2F157C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LLMBundle.init(from:)()
{
  sub_18E1C62A0();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v52 = v4;
  v5 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v5);
  v7 = *(v6 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1C8E58();
  v9 = sub_18E2706EC(&qword_1EABE2590, &qword_18E4AAEB0);
  sub_18E1C4EAC(v9);
  v11 = *(v10 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v12);
  sub_18E1C61D0();
  v14 = *(v3 + 24);
  v13 = *(v3 + 32);
  v79 = v3;
  sub_18E1C975C();
  sub_18E2F157C();
  sub_18E1E2974();
  if (!v0)
  {
    v15 = sub_18E233460();
    sub_18E2706EC(v15, v16);
    v77[0] = 0;
    sub_18E1C6B74();
    sub_18E1E1638(v17, v18, &qword_18E4AAEB8);
    sub_18E1CFF6C();
    sub_18E44F26C();
    v19 = v78[1];
    v77[255] = 1;
    sub_18E2CFC90();
    sub_18E221DB8();
    v50 = v78[0];
    v20 = sub_18E223434();
    memcpy(v20, v78, 0xF8uLL);
    v75[255] = 2;
    sub_18E2CFCE4();
    sub_18E1CFF6C();
    sub_18E44F26C();
    memcpy(v75, v76, 0xF8uLL);
    v73[255] = 3;
    sub_18E2CFD8C();
    sub_18E1E2CB0();
    sub_18E44F20C();
    memcpy(v73, v74, 0xF8uLL);
    v71[255] = 4;
    sub_18E2CFD38();
    sub_18E1E2CB0();
    sub_18E44F20C();
    memcpy(v71, v72, 0xF8uLL);
    v69[223] = 5;
    sub_18E2C6000();
    sub_18E1E2CB0();
    sub_18E44F20C();
    memcpy(v69, v70, 0xD8uLL);
    v67[223] = 6;
    sub_18E2C4480();
    sub_18E1E2CB0();
    sub_18E44F20C();
    memcpy(v67, v68, 0xD8uLL);
    v65[255] = 7;
    sub_18E2C6464();
    sub_18E1E2CB0();
    sub_18E44F20C();
    v49 = v19;
    memcpy(v64, v66, sizeof(v64));
    v62 = &type metadata for TokenizerBase;
    v63 = sub_18E1E28CC();
    sub_18E220B24();
    *&v61 = swift_allocObject();
    memcpy((v61 + 16), v77, 0xF8uLL);
    v59 = &type metadata for LLMModelBase;
    v60 = sub_18E1E2A0C();
    sub_18E220B24();
    *&v58 = swift_allocObject();
    memcpy((v58 + 16), v75, 0xF8uLL);
    memcpy(v65, v73, 0xF8uLL);
    sub_18E221728(v65);
    if (v21)
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
    }

    else
    {
      v48 = sub_18E22402C();
      sub_18E220B24();
      v22 = swift_allocObject();
      v23 = sub_18E23CA50(v22);
      memcpy(v23, v65, 0xF8uLL);
      v46 = &type metadata for LLMAdapterBase;
    }

    v24 = v52;
    v25 = v1;
    memcpy(v57, v71, sizeof(v57));
    sub_18E221728(v57);
    if (v21)
    {
      v51 = 0;
      v45 = 0;
      v53 = 0;
    }

    else
    {
      v53 = sub_18E216928();
      sub_18E220B24();
      v51 = swift_allocObject();
      memcpy((v51 + 16), v57, 0xF8uLL);
      v45 = &type metadata for LLMDraftModelBase;
    }

    memcpy(v56, v69, sizeof(v56));
    sub_18E221728(v56);
    if (v21)
    {
      v43 = 0;
      v44 = 0;
      v42 = 0;
    }

    else
    {
      v44 = sub_18E216AA0();
      sub_18E1C86E0();
      v26 = swift_allocObject();
      v27 = sub_18E2F79A0(v26);
      memcpy(v27, v56, 0xD8uLL);
      v42 = &type metadata for ImageTokenizerBase;
    }

    memcpy(v55, v67, sizeof(v55));
    sub_18E221728(v55);
    if (v21)
    {
      v40 = 0;
      v41 = 0;
      v38 = 0;
    }

    else
    {
      v41 = sub_18E2F1528();
      sub_18E1C86E0();
      v38 = swift_allocObject();
      memcpy((v38 + 16), v55, 0xD8uLL);
      v40 = &type metadata for EmbeddingPreprocessorBase;
    }

    memcpy(v54, v64, sizeof(v54));
    sub_18E221728(v54);
    if (v21)
    {
      v39 = 0;
      v37 = 0;
      v28 = 0;
    }

    else
    {
      v39 = sub_18E2F14D4();
      sub_18E1C86E0();
      v28 = swift_allocObject();
      memcpy((v28 + 16), v54, 0xD8uLL);
      v37 = &type metadata for LLMAdapterMetadataOverrideBase;
    }

    sub_18E44E50C();

    v29 = sub_18E44E54C();
    sub_18E220124(v25, 1, v29);
    if (v21)
    {
      v30 = sub_18E1E3B24();
      v31(v30, v9);
      sub_18E1E8F44(v25, &qword_1EABE2FE0, &qword_18E49CE00);
      v33 = v49;
    }

    else
    {
      v50 = sub_18E44E49C();
      v33 = v32;
      v34 = sub_18E1E3B24();
      v35(v34, v9);
      sub_18E1C82B8(v29);
      (*(v36 + 8))(v25, v29);
    }

    *v24 = v50;
    v24[1] = v33;
    sub_18E1C551C(&v61, (v24 + 2));
    sub_18E1C551C(&v58, (v24 + 7));
    v24[12] = v47;
    v24[13] = 0;
    v24[14] = 0;
    v24[15] = v46;
    v24[16] = v48;
    v24[17] = v51;
    v24[18] = 0;
    v24[19] = 0;
    v24[20] = v45;
    v24[21] = v53;
    v24[22] = v43;
    v24[23] = 0;
    v24[24] = 0;
    v24[25] = v42;
    v24[26] = v44;
    v24[27] = v38;
    v24[28] = 0;
    v24[29] = 0;
    v24[30] = v40;
    v24[31] = v41;
    v24[32] = v28;
    v24[33] = 0;
    v24[34] = 0;
    v24[35] = v37;
    v24[36] = v39;
  }

  sub_18E1C9934(v79);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void LLMBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E1E65BC();
  v2 = sub_18E2706EC(&qword_1EABE25C0, &qword_18E4AAEE0);
  sub_18E1C539C(v2);
  v4 = *(v3 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1E2C60();
  sub_18E1D60D8();
  sub_18E2F157C();
  sub_18E1E3288();
  LLMBundle.id.getter();
  v35[0] = v36[0];
  v35[1] = v36[1];
  v34[0] = 0;
  v6 = sub_18E1E33F0();
  sub_18E2706EC(v6, v7);
  sub_18E1C828C(&qword_1EABDF958);
  sub_18E224E2C();
  sub_18E44F35C();
  if (!v0)
  {

    sub_18E2F7DD0();
    sub_18E2706EC(&qword_1EABE25C8, &qword_18E4AAEE8);
    if (!sub_18E2387D0())
    {
      goto LABEL_5;
    }

    memcpy(v35, v36, sizeof(v35));
    memcpy(v34, v36, sizeof(v34));
    v32[0] = 1;
    sub_18E2CF150();
    sub_18E22452C();
    sub_18E44F35C();
    sub_18E2CF1A4(v35);
    sub_18E1E8C38(v1 + 56, &v33);
    sub_18E2706EC(&qword_1EABE25D0, &qword_18E4AAEF0);
    if (swift_dynamicCast())
    {
      memcpy(v32, v34, sizeof(v32));
      memcpy(v31, v34, sizeof(v31));
      sub_18E2CF4F8();
      sub_18E22452C();
      sub_18E44F35C();
      sub_18E2CF54C(v32);
      sub_18E2F66D4(v1 + 96, v27, &qword_1EABE12F0, &unk_18E49ED90);
      if (v27[3])
      {
        sub_18E2706EC(&qword_1EABE2600, &qword_18E4AAF20);
        if (!swift_dynamicCast())
        {
          sub_18E1E8AE8();
          sub_18E1C8558();
          sub_18E1DD27C();
          v9 = v12 - 2;
          goto LABEL_6;
        }

        memcpy(v28, v29, sizeof(v28));
        nullsub_1(v28);
        memcpy(v30, v28, sizeof(v30));
      }

      else
      {
        sub_18E1E8F44(v27, &qword_1EABE12F0, &unk_18E49ED90);
        sub_18E268E70(v30);
      }

      memcpy(v29, v30, sizeof(v29));
      sub_18E2CF708();
      sub_18E22452C();
      sub_18E44F2FC();
      sub_18E1E8F44(v30, &qword_1EABE25A0, &qword_18E4AAEC0);
      sub_18E2F66D4(v1 + 136, v26, &qword_1EABE12F8, &qword_18E4AAE90);
      if (v26[3])
      {
        sub_18E2706EC(&qword_1EABE25F8, &qword_18E4AAF18);
        if (!swift_dynamicCast())
        {
          sub_18E1E8AE8();
          sub_18E1C8558();
          sub_18E1DD27C();
          v9 = v13 + 1;
          goto LABEL_6;
        }

        memcpy(v19, v27, sizeof(v19));
        nullsub_1(v19);
        memcpy(v28, v19, sizeof(v28));
      }

      else
      {
        sub_18E1E8F44(v26, &qword_1EABE12F8, &qword_18E4AAE90);
        sub_18E268E70(v28);
      }

      memcpy(v27, v28, sizeof(v27));
      sub_18E2CF5D0();
      sub_18E22452C();
      sub_18E44F2FC();
      sub_18E1E8F44(v28, &qword_1EABE25A8, &qword_18E4AAEC8);
      sub_18E2F66D4(v1 + 176, v24, &qword_1EABE2568, &qword_18E4AAE98);
      if (v24[3])
      {
        sub_18E2706EC(&qword_1EABE25F0, &qword_18E4AAF10);
        if (!swift_dynamicCast())
        {
          sub_18E1E8AE8();
          sub_18E1C8558();
          sub_18E1DD27C();
          v9 = v14 + 5;
          goto LABEL_6;
        }

        memcpy(v25, v26, sizeof(v25));
        nullsub_1(v25);
        memcpy(v19, v25, 0xD8uLL);
      }

      else
      {
        sub_18E1E8F44(v24, &qword_1EABE2568, &qword_18E4AAE98);
        sub_18E1E01D0(v19);
      }

      memcpy(v26, v19, sizeof(v26));
      sub_18E2C6054();
      sub_18E22452C();
      sub_18E44F2FC();
      sub_18E1E8F44(v19, &qword_1EABE25B0, &qword_18E4AAED0);
      sub_18E2F66D4(v1 + 216, v21, &qword_1EABE2570, &qword_18E4AAEA0);
      if (v21[3])
      {
        sub_18E2706EC(&qword_1EABE25E8, &qword_18E4AAF08);
        if (!swift_dynamicCast())
        {
          sub_18E1E8AE8();
          sub_18E1C8558();
          sub_18E1DD27C();
          v9 = v15 | 0xC;
          goto LABEL_6;
        }

        memcpy(v23, v24, sizeof(v23));
        nullsub_1(v23);
        memcpy(v25, v23, sizeof(v25));
      }

      else
      {
        sub_18E1E8F44(v21, &qword_1EABE2570, &qword_18E4AAEA0);
        sub_18E1E01D0(v25);
      }

      memcpy(v24, v25, sizeof(v24));
      sub_18E2C44D4();
      sub_18E22452C();
      sub_18E44F2FC();
      sub_18E1E8F44(v25, &qword_1EABE25B8, &qword_18E4AAED8);
      sub_18E2F66D4(v1 + 256, v22, &qword_1EABE2578, &qword_18E4AAEA8);
      if (!v22[3])
      {
        sub_18E1E8F44(v22, &qword_1EABE2578, &qword_18E4AAEA8);
        sub_18E1E01D0(v23);
        goto LABEL_40;
      }

      sub_18E2706EC(&qword_1EABE25E0, &qword_18E4AAF00);
      if (swift_dynamicCast())
      {
        memcpy(v20, v21, sizeof(v20));
        nullsub_1(v20);
        memcpy(v23, v20, sizeof(v23));
LABEL_40:
        memcpy(v21, v23, sizeof(v21));
        v20[0] = 7;
        sub_18E2C64B8();
        sub_18E22452C();
        sub_18E44F2FC();
        v16 = sub_18E2204B4();
        v17(v16);
        sub_18E1E8F44(v23, &qword_1EABE25D8, &qword_18E4AAEF8);
        goto LABEL_8;
      }

      sub_18E1E8AE8();
      sub_18E1C8558();
      sub_18E1DD27C();
      v9 = v18 | 0xE;
    }

    else
    {
LABEL_5:
      sub_18E1E8AE8();
      sub_18E1C8558();
      sub_18E1DD27C();
    }

LABEL_6:
    sub_18E200E00(v8, v9);
    goto LABEL_7;
  }

LABEL_7:
  v10 = sub_18E2204B4();
  v11(v10);
LABEL_8:
  sub_18E1E2968();
  sub_18E1C6650();
}

uint64_t static LLMBundle.== infix(_:_:)(uint64_t a1, char a2)
{
  LLMBundle.resources.getter();
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = sub_18E2247C8();
    sub_18E26F1E0(v6, v5, 0);
    v15 = v45;
    do
    {
      sub_18E2F862C(v7, v8, v9, v10, v11, v12, v13, v14, v44[0]);
      v16 = sub_18E1C8C94(v44);
      v17(v16);
      sub_18E221954();
      sub_18E1C9934(v44);
      v45 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      sub_18E22327C();
      if (v21)
      {
        v23 = sub_18E1C8C60(v20);
        sub_18E2F7AE4(v23);
        v15 = v45;
      }

      sub_18E240BE4();
    }

    while (!v22);
  }

  else
  {
  }

  LLMBundle.resources.getter();
  sub_18E2F8194(v24);
  if (v4)
  {
    v25 = sub_18E2247C8();
    sub_18E2F7CE0(v25);
    v34 = v45;
    do
    {
      sub_18E2F862C(v26, v27, v28, v29, v30, v31, v32, v33, v44[0]);
      v35 = sub_18E1C8C94(v44);
      v36(v35);
      sub_18E221954();
      sub_18E1C9934(v44);
      v45 = v34;
      v38 = *(v34 + 16);
      v37 = *(v34 + 24);
      sub_18E22327C();
      if (v21)
      {
        v40 = sub_18E1C8C60(v39);
        sub_18E2F7AE4(v40);
        v34 = v45;
      }

      sub_18E1CA5D4();
    }

    while (!v22);
  }

  v41 = sub_18E1E6BB0();
  sub_18E290008(v41, v42);
  sub_18E1E6A20();

  return a2 & 1;
}

void LLMBundle.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_18E2F7B84();
  a23 = v25;
  a24 = v26;
  sub_18E1E2E88();
  LLMBundle.id.getter();
  sub_18E44EB4C();

  LLMBundle.resources.getter();
  v28 = sub_18E2F8188(v27);
  if (v24)
  {
    do
    {
      sub_18E2F7CF8(v28);
      v29 = sub_18E1CAD4C(&a10);
      v30(v29);
      sub_18E1C9934(&a10);
      sub_18E1D42A4();
      sub_18E44EB4C();

      sub_18E22365C();
    }

    while (!v31);

    sub_18E2232AC();
  }

  else
  {
    sub_18E2232AC();
  }
}

uint64_t sub_18E2E87A4()
{
  sub_18E1E2E88();
  sub_18E44F48C();
  v0(v2);
  return sub_18E44F4CC();
}

uint64_t sub_18E2E883C()
{
  sub_18E1E33FC();
  v0(v2);
  return sub_18E44F4CC();
}

void AssetBackedLLMCompileDraftBundle.init(with:resources:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E1C62A0();
  sub_18E207440();
  v15 = v14;
  v16 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v16);
  v18 = *(v17 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v19);
  sub_18E1C8E58();
  sub_18E1E7430();
  sub_18E26C3FC(v13, v20);
  v21 = MEMORY[0x1E69E7CA0];
  if (!v55)
  {

    sub_18E1E8F44(&v54, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_21:
    sub_18E1E1700();
    sub_18E44EFFC();

    sub_18E1C8E68();
    *&v54 = v35;
    *(&v54 + 1) = v34;
    goto LABEL_25;
  }

  if ((sub_18E2F7A44() & 1) == 0)
  {

    goto LABEL_21;
  }

  sub_18E2F88E4();
  v22 = sub_18E1E3DF8();
  if (sub_18E32F0AC(v22, v23))
  {
    goto LABEL_8;
  }

  if (qword_1EABE0CF8 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v24 = sub_18E44E83C();
    sub_18E1C95EC(v24, qword_1EAC7F560);
    sub_18E1E673C();

    v25 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E2F8704();
    if (sub_18E23CA28())
    {
      sub_18E1C5F74();
      a10 = v11;
      v50 = v12;
      v26 = sub_18E2246EC();
      sub_18E2F7FA0(v26);
      sub_18E2F8164(4.8149e-34);
      *(v12 + 4) = sub_18E1C9624(v21, v11, v27);
      sub_18E1E2274(&dword_18E1C1000, v28, v29, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E1CF2EC();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

LABEL_8:
    sub_18E1C5B68();
    sub_18E26C3FC(v13, &v54);
    if (!v55)
    {

      sub_18E1E8F44(&v54, &qword_1EABE3B70, &qword_18E4AAB80);
      goto LABEL_24;
    }

    if ((sub_18E2F7A44() & 1) == 0)
    {
      break;
    }

    sub_18E2F8524();
    sub_18E23335C();
    while (1)
    {
      if (v10 == v15)
      {

        goto LABEL_34;
      }

      sub_18E2F7F48();
      if (v30)
      {
        break;
      }

      sub_18E2F886C();
      v11 = v55;
      sub_18E1C8570(&v54, v55);
      v31(v11);
      sub_18E223708();
      v33 = v33 && v32 == v13;
      if (v33)
      {

LABEL_30:

        v39 = sub_18E221F94();
        sub_18E1C551C(v39, v40);
        sub_18E2706EC(&unk_1EABE33F0, &unk_18E49D240);
        if (sub_18E232FD8())
        {

          v52 = &type metadata for AssetBackedLLMDraftModelBase;
          v53 = sub_18E1E7BB4();
          sub_18E1C86E0();
          v41 = swift_allocObject();
          sub_18E2F79E4(v41);
          v42 = a10;

          sub_18E1E2F3C();
          sub_18E44E50C();

          sub_18E44E54C();
          sub_18E1D4C60(v50);
          if (v33)
          {
            sub_18E1E8F44(v50, &qword_1EABE2FE0, &qword_18E49CE00);
          }

          else
          {
            sub_18E44E49C();
            sub_18E221D40();
            sub_18E25E19C();
            v46 = *(v45 + 8);
            v47 = sub_18E1D4B44();
            v48(v47);

            v42 = v50;
          }

          *v49 = v21;
          v49[1] = v42;
          sub_18E1C551C(&v51, (v49 + 2));
          goto LABEL_27;
        }

LABEL_34:

        sub_18E1E1700();
        sub_18E44EFFC();
        sub_18E2F7AD8();
        v43 = sub_18E1D0358();
        MEMORY[0x193ACC300](v43);
        v44 = sub_18E1E2000();
        MEMORY[0x193ACC300](v44);
        goto LABEL_26;
      }

      sub_18E1E7B78();
      sub_18E1E2238();

      if (v11)
      {
        goto LABEL_30;
      }

      sub_18E2F7B58();
    }

    __break(1u);
LABEL_37:
    sub_18E1C7804();
  }

LABEL_24:
  sub_18E1E1700();
  sub_18E44EFFC();
  sub_18E2F7AD8();
  sub_18E1E844C();
  sub_18E2F7CC8();
LABEL_25:
  sub_18E44E99C();
  sub_18E22449C();

  v36 = sub_18E1CFFC0();
  MEMORY[0x193ACC300](v36);
LABEL_26:

  sub_18E2AE554();
  v37 = sub_18E1C8558();
  sub_18E1D7E28(v37, v38);
LABEL_27:
  sub_18E1E2968();
  sub_18E1C6650();
}

void sub_18E2E8D88()
{
  sub_18E1C575C();
  v2 = *(v0 + 40);
  v3 = sub_18E228964(*(v0 + 48));
  sub_18E1E15F4(v3, v2);
  sub_18E1C5780();
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v15 = sub_18E220314(v7, v8, v9, v10, v11, v12, v13, v14, v31);
  v1(v15);
  sub_18E220AAC();
  sub_18E211EDC();
  v17 = sub_18E2F7F04(v16);
  v18 = *(v17 + 16);
  if (v18 >= *(v17 + 24) >> 1)
  {
    sub_18E2F79AC();
    sub_18E211EDC();
    v17 = sub_18E2F7F04(v30);
  }

  v19 = MEMORY[0x1EEE9AC00](v17);
  v27 = sub_18E228860(v19, v20, v21, v22, v23, v24, v25, v26, v32);
  v1(v27);
  sub_18E1DF2A8(v18, v5, &v34, v2, *(v33 + 8));
  v28 = sub_18E2232F4();
  v29(v28);
  sub_18E1C5544();
}

uint64_t sub_18E2E8EC4(uint64_t a1)
{
  v2 = sub_18E2F1638();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2E8F00(uint64_t a1)
{
  v2 = sub_18E2F1638();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedLLMCompileDraftBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E1CFE14(v3);
  v4 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v4);
  v6 = *(v5 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C57AC();
  v8 = sub_18E2706EC(&qword_1EABE2608, &qword_18E4AAF28);
  sub_18E1C4EAC(v8);
  v10 = *(v9 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1C61D0();
  v13 = v2[3];
  v12 = v2[4];
  sub_18E1D5C08(v2);
  sub_18E2F1638();
  sub_18E221EAC();
  if (v0)
  {
    v18 = v2;
  }

  else
  {
    v14 = sub_18E1E63B4();
    sub_18E2706EC(v14, v15);
    sub_18E1E83D8();
    sub_18E1C6B74();
    sub_18E1E1638(v16, v17, &qword_18E4AAF30);
    sub_18E1C29D4();
    sub_18E44F26C();
    sub_18E243354();
    sub_18E1D4598();
    sub_18E201890();
    sub_18E1CE9EC();
    sub_18E1E7BB4();
    sub_18E1C86E0();
    v19 = swift_allocObject();
    v20 = sub_18E1E232C(v19);
    memcpy(v20, v21, 0xD8uLL);

    sub_18E232CB0();

    v22 = sub_18E44E54C();
    sub_18E1E3A14(v22);
    if (v23)
    {
      sub_18E1E8F44(v8, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E224154();
    }

    else
    {
      sub_18E1E7D60();
      sub_18E234628();
      v25 = *(v24 + 8);
      v26 = sub_18E223B64();
      v27(v26);

      sub_18E1E1C0C();
    }

    v29 = sub_18E1C88FC(v28);
    v30(v29);
    v18 = v1;
  }

  sub_18E1C9934(v18);
  sub_18E1E29D0();
  sub_18E1C6650();
}

void AssetBackedLLMCompileDraftBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E1E37D0();
  v1 = sub_18E2706EC(&qword_1EABE2628, &qword_18E4AAF38);
  sub_18E1C539C(v1);
  v3 = *(v2 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1E2C60();
  sub_18E1D60D8();
  sub_18E2F1638();
  sub_18E1E3288();
  sub_18E237074();
  AssetBackedLLMCompileDraftBundle.id.getter();
  sub_18E1CFA14();
  v5 = sub_18E1E33F0();
  sub_18E2706EC(v5, v6);
  sub_18E1C828C(&qword_1EABE2630);
  sub_18E1E1200();
  sub_18E221AD8();
  if (v0)
  {
    goto LABEL_5;
  }

  sub_18E1E68F0();
  sub_18E2706EC(&qword_1EABE2558, &qword_18E4AAE78);
  if (!sub_18E224D34())
  {
    sub_18E1E8AE8();
    sub_18E1C8558();
    sub_18E1E19F0(v9, 46);
LABEL_5:
    v10 = sub_18E1E67D0();
    v11(v10);
    goto LABEL_6;
  }

  sub_18E200510();
  sub_18E1E3E68();
  sub_18E233478();
  sub_18E2122D0();
  sub_18E22452C();
  sub_18E44F35C();
  v7 = sub_18E1DD364();
  v8(v7);
  sub_18E2CF5A0(&v12);
LABEL_6:
  sub_18E1E2968();
  sub_18E1C6650();
}

void sub_18E2E9484()
{
  sub_18E1C575C();
  v46 = sub_18E223ED8(v4, v5);
  v6 = sub_18E1C4EAC(v46);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = sub_18E1E1FD8();
  v10 = sub_18E1C4EAC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C4EDC();
  sub_18E1FF2DC();
  v16 = *(v0 + 40);
  v15 = *(v0 + 48);
  sub_18E1C5040((v3 + 16), v16);
  v17(v16);
  sub_18E235A6C();
  v19 = v19 && v18 == 0xE700000000000000;
  if (v19)
  {

    goto LABEL_10;
  }

  sub_18E1D5EF4();
  sub_18E223B20();
  sub_18E1E2238();

  if (v1)
  {
LABEL_10:
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v20 = *(v3 + 40);
  sub_18E1C5040((v3 + 16), v20);
  v21(v20);
  sub_18E1D0274();
  sub_18E2F8058();
  sub_18E1E2414();

  sub_18E220AAC();
  sub_18E3EF9F0();
  sub_18E223F94(v22);
  if (v23)
  {
    sub_18E1E3320();
    sub_18E3EF9F0();
    v20 = v45;
  }

  sub_18E1CA184();
  sub_18E1EA5D4();
  v24();
LABEL_11:
  sub_18E44E37C();
  sub_18E223EB0();
  sub_18E201E40();
  if (*(v20 + 16))
  {
    sub_18E2F87C4();
    sub_18E2F87AC();
    if (v9)
    {

      __break(1u);
      return;
    }

    sub_18E2F8794();
  }

  else
  {
  }

  sub_18E44E36C();
  if (v25)
  {
    v26 = sub_18E1CF4F4();
    v27(v26);
    sub_18E2405F8();
  }

  else
  {
    if (qword_1ED6A8418 != -1)
    {
      sub_18E1C8AB4();
    }

    v28 = sub_18E44E83C();
    sub_18E1C95EC(v28, qword_1ED6A9858);
    v29 = sub_18E216A78();
    (v2)(v29);
    v30 = sub_18E44E80C();
    v31 = sub_18E44EE0C();
    if (sub_18E2333E4(v31))
    {
      sub_18E2342D4();
      v32 = sub_18E220C80();
      sub_18E2F7F74(v32);
      sub_18E2217B8(4.8151e-34);
      sub_18E2F0564();
      sub_18E1E1DB4();
      v33 = sub_18E44F39C();
      sub_18E2F86EC(v33, v34);
      sub_18E233674();
      sub_18E243EAC();
      v35 = sub_18E209370();
      v36(v35);
      v37 = sub_18E1C5BFC();
      sub_18E1C9624(v37, v38, v39);
      sub_18E233674();
      *(v2 + 14) = v12;
      sub_18E1D81D8(&dword_18E1C1000, v40, v41, "Unable to construct resource bundle identifier from %s. Falling back to %s");
      sub_18E232B30();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {

      v42 = sub_18E209370();
      v43(v42);
    }

    sub_18E2F877C();
    v44 = sub_18E1E3DF8();
    v12(v44);
  }

  sub_18E202D00();
  sub_18E1C5544();
}

void LLMCompileDraftBundle.init(with:resources:)()
{
  sub_18E1C62A0();
  sub_18E202C9C();
  v5 = v4;
  v6 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v6);
  v8 = *(v7 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v9);
  sub_18E1C8E58();
  sub_18E1E7430();
  sub_18E26C3FC(v3, v10);
  if (!*(&v49[1] + 1))
  {

    sub_18E1E8F44(v49, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_21:
    sub_18E1D442C();
    sub_18E44EFFC();

    sub_18E1C8E68();
    *&v49[0] = v28;
    *(&v49[0] + 1) = v27;
    goto LABEL_25;
  }

  if ((sub_18E1CC2D0() & 1) == 0)
  {

    goto LABEL_21;
  }

  sub_18E2F88E4();
  v11 = sub_18E1E3DF8();
  if (sub_18E32F0AC(v11, v12))
  {
    goto LABEL_8;
  }

  if (qword_1EABE0CF8 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v13 = sub_18E44E83C();
    sub_18E1C95EC(v13, qword_1EAC7F560);
    sub_18E1E673C();

    v14 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E2F8704();
    if (sub_18E23CA28())
    {
      sub_18E1C5F74();
      v44 = v2;
      v15 = sub_18E2246EC();
      sub_18E2F7F80(v15);
      sub_18E2F8170(4.8149e-34);
      *(v2 + 4) = sub_18E1C9624(v1, v45, v16);
      sub_18E1E2274(&dword_18E1C1000, v17, v18, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E1CF2EC();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

LABEL_8:
    sub_18E1C5B68();
    sub_18E26C3FC(v3, v49);
    sub_18E2F7FCC();
    if (!v19)
    {

      sub_18E1E8F44(v49, &qword_1EABE3B70, &qword_18E4AAB80);
      goto LABEL_24;
    }

    if ((sub_18E1CC2D0() & 1) == 0)
    {
      break;
    }

    sub_18E2F84C4();
    sub_18E1E6B38();
    while (1)
    {
      if (v5 == v0)
      {

        goto LABEL_34;
      }

      sub_18E1E6934();
      if (v20)
      {
        break;
      }

      sub_18E2F8764();
      v21 = BYTE8(v49[1]);
      v22 = *&v49[2];
      sub_18E1E15F4(v49, *(&v49[1] + 1));
      v23 = sub_18E216870(v22);
      v24(v23, v22);
      sub_18E223708();
      v26 = v26 && v25 == v3;
      if (v26)
      {

LABEL_30:

        v32 = sub_18E2407DC();
        sub_18E1C551C(v32, v33);
        sub_18E2706EC(&qword_1EABE0EA0, &qword_18E49D250);
        if (sub_18E232FD8())
        {

          v47 = &type metadata for LLMDraftModelBase;
          v48 = sub_18E216928();
          sub_18E220B24();
          v34 = swift_allocObject();
          v35 = sub_18E2F79A0(v34);
          memcpy(v35, v49, 0xF8uLL);
          v36 = v45;

          sub_18E1E2F3C();
          sub_18E44E50C();

          sub_18E44E54C();
          sub_18E1D4C60(v44);
          if (v26)
          {
            sub_18E1E8F44(v44, &qword_1EABE2FE0, &qword_18E49CE00);
          }

          else
          {
            sub_18E44E49C();
            sub_18E221D40();
            sub_18E25E19C();
            v40 = *(v39 + 8);
            v41 = sub_18E1D4B44();
            v42(v41);

            v36 = v44;
          }

          *v43 = v1;
          v43[1] = v36;
          sub_18E1C551C(&v46, (v43 + 2));
          goto LABEL_27;
        }

LABEL_34:

        sub_18E1D442C();
        sub_18E44EFFC();
        sub_18E1E3D78();
        v37 = sub_18E1D0358();
        MEMORY[0x193ACC300](v37);
        v38 = sub_18E1E2000();
        MEMORY[0x193ACC300](v38);
        goto LABEL_26;
      }

      sub_18E1E7B78();
      sub_18E1E2238();

      if (v21)
      {
        goto LABEL_30;
      }

      sub_18E1E1BB8();
    }

    __break(1u);
LABEL_37:
    sub_18E1C7804();
  }

LABEL_24:
  sub_18E1D442C();
  sub_18E44EFFC();
  sub_18E1E3D78();
  sub_18E1E844C();
  sub_18E2F7CB0();
LABEL_25:
  sub_18E2F874C();
  sub_18E22449C();

  v29 = sub_18E1CFFC0();
  MEMORY[0x193ACC300](v29);
LABEL_26:

  sub_18E2AE554();
  v30 = sub_18E1C8558();
  sub_18E1D7E28(v30, v31);
LABEL_27:
  sub_18E1E2968();
  sub_18E1C6650();
}

void sub_18E2E9C94()
{
  sub_18E1C575C();
  v2 = *(v0 + 40);
  v3 = sub_18E228964(*(v0 + 48));
  sub_18E1E15F4(v3, v2);
  sub_18E1C5780();
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v15 = sub_18E220314(v7, v8, v9, v10, v11, v12, v13, v14, v33);
  v1(v15);
  sub_18E220AAC();
  sub_18E2451D0();
  v17 = sub_18E2F7F04(v16);
  v18 = *(v17 + 16);
  if (v18 >= *(v17 + 24) >> 1)
  {
    sub_18E2F79AC();
    sub_18E2451D0();
    v17 = sub_18E2F7F04(v32);
  }

  v19 = MEMORY[0x1EEE9AC00](v17);
  v27 = sub_18E228860(v19, v20, v21, v22, v23, v24, v25, v26, v34);
  v1(v27);
  sub_18E1E1A80(v35);
  sub_18E1DF2A8(v18, v5, v28, v2, v29);
  v30 = sub_18E2232F4();
  v31(v30);
  sub_18E1C5544();
}

uint64_t sub_18E2E9DCC()
{
  sub_18E1E2F2C();
  v2 = v2 && v1 == 0xE200000000000000;
  if (v2 || (sub_18E1E3894() & 1) != 0)
  {

    return 0;
  }

  else
  {
    sub_18E1D5DB4();
    if (v2 && v0 == v4)
    {

      return 1;
    }

    else
    {
      sub_18E23552C();
      sub_18E1CF3DC();
      sub_18E1E6A20();
      sub_18E232B64();
      if (v2)
      {
        return v6 + 1;
      }

      else
      {
        return v6;
      }
    }
  }
}

uint64_t sub_18E2E9E40(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_18E44F48C();
  a4(v8, v6);
  return sub_18E44F4CC();
}

uint64_t sub_18E2E9E8C(uint64_t a1)
{
  v2 = sub_18E2F16F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2E9EC8(uint64_t a1)
{
  v2 = sub_18E2F16F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LLMCompileDraftBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E1CFE14(v3);
  v4 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v4);
  v6 = *(v5 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C57AC();
  v8 = sub_18E2706EC(&qword_1EABE2638, &qword_18E4AAF40);
  sub_18E1C4EAC(v8);
  v10 = *(v9 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1C61D0();
  v13 = v2[3];
  v12 = v2[4];
  sub_18E1D5C08(v2);
  sub_18E2F16F4();
  sub_18E221EAC();
  if (v0)
  {
    v18 = v2;
  }

  else
  {
    v14 = sub_18E1E63B4();
    sub_18E2706EC(v14, v15);
    sub_18E1E83D8();
    sub_18E1C6B74();
    sub_18E1E1638(v16, v17, &qword_18E4AAF48);
    sub_18E1C29D4();
    sub_18E44F26C();
    sub_18E243354();
    sub_18E1D4598();
    sub_18E2CFD38();
    sub_18E1CE9EC();
    sub_18E216928();
    sub_18E220B24();
    v19 = swift_allocObject();
    v20 = sub_18E1E232C(v19);
    memcpy(v20, v21, 0xF8uLL);

    sub_18E232CB0();

    v22 = sub_18E44E54C();
    sub_18E1E3A14(v22);
    if (v23)
    {
      sub_18E1E8F44(v8, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E224154();
    }

    else
    {
      sub_18E1E7D60();
      sub_18E234628();
      v25 = *(v24 + 8);
      v26 = sub_18E223B64();
      v27(v26);

      sub_18E1E1C0C();
    }

    v29 = sub_18E1C88FC(v28);
    v30(v29);
    v18 = v1;
  }

  sub_18E1C9934(v18);
  sub_18E1E29D0();
  sub_18E1C6650();
}

void LLMCompileDraftBundle.encode(to:)()
{
  sub_18E1C62A0();
  v1 = sub_18E2706EC(&qword_1EABE2658, &qword_18E4AAF50);
  sub_18E1C539C(v1);
  v3 = *(v2 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1E2C60();
  sub_18E1D60D8();
  sub_18E2F16F4();
  sub_18E1E3288();
  LLMCompileDraftBundle.id.getter();
  v13[0] = v14[0];
  v13[1] = v14[1];
  LOBYTE(v12[0]) = 0;
  v5 = sub_18E1E33F0();
  sub_18E2706EC(v5, v6);
  sub_18E1C828C(&qword_1EABE2660);
  sub_18E224E2C();
  sub_18E44F35C();
  sub_18E221AD8();
  if (v0)
  {
    goto LABEL_5;
  }

  sub_18E1E68F0();
  sub_18E2706EC(&qword_1EABE25F8, &qword_18E4AAF18);
  if (!sub_18E2387D0())
  {
    sub_18E1E8AE8();
    sub_18E1C8558();
    sub_18E1E19F0(v9, 46);
LABEL_5:
    v10 = sub_18E1E67D0();
    v11(v10);
    goto LABEL_6;
  }

  memcpy(v13, v14, sizeof(v13));
  memcpy(v12, v14, sizeof(v12));
  sub_18E233478();
  sub_18E2CF5D0();
  sub_18E22452C();
  sub_18E44F35C();
  v7 = sub_18E1DD364();
  v8(v7);
  sub_18E2CF624(v13);
LABEL_6:
  sub_18E1E2968();
  sub_18E1C6650();
}

uint64_t sub_18E2EA3C4()
{
  sub_18E1E2E88();
  sub_18E44F48C();
  v0(v2);
  return sub_18E44F4CC();
}

uint64_t sub_18E2EA45C()
{
  sub_18E1E33FC();
  v0(v2);
  return sub_18E44F4CC();
}

void AssetBackedLLMDraftBundle.init(with:resources:)()
{
  sub_18E1C62A0();
  sub_18E2F7FD8();
  v3 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v3);
  v5 = *(v4 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E2352F4();
  sub_18E1E7430();
  sub_18E26C3FC(v2, v7);
  v8 = MEMORY[0x1E69E7CA0];
  if (!v64)
  {

    sub_18E1E8F44(v63, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_21:
    sub_18E1CC400();
    sub_18E44EFFC();

    sub_18E1C8E68();
    sub_18E2F7D28(v22);
LABEL_25:
    sub_18E216B20();
    sub_18E22449C();

    v23 = sub_18E2F7D34();
LABEL_26:
    MEMORY[0x193ACC300](v23, v8);

    sub_18E223E34();
LABEL_27:
    sub_18E2AE554();
    v24 = sub_18E1C8558();
    sub_18E1D7E28(v24, v25);
    goto LABEL_28;
  }

  if ((sub_18E1E3488() & 1) == 0)
  {

    goto LABEL_21;
  }

  v56 = v0;
  v9 = v62;
  type metadata accessor for Utils();
  v57 = v61;
  v10 = sub_18E1E1B1C();
  if (sub_18E32F0AC(v10, v11))
  {
    goto LABEL_8;
  }

  if (qword_1EABE0CF8 != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v12 = sub_18E44E83C();
    sub_18E1C95EC(v12, qword_1EAC7F560);
    sub_18E2F7964();

    v13 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E216B90();
    if (sub_18E23CA28())
    {
      sub_18E1C5F74();
      v14 = sub_18E223E58();
      sub_18E2F7D4C(v14);
      *(v1 + 4) = sub_18E2F8384(4.8149e-34);
      sub_18E1D5F48(&dword_18E1C1000, v15, v16, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E221850();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E238D04();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

LABEL_8:
    sub_18E1D49B0();
    sub_18E2F7D70();
    sub_18E26C3FC(v2, v17);
    v8 = MEMORY[0x1E69E7CA0];
    if (!v64)
    {

      sub_18E1E8F44(v63, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_24:
      sub_18E1CC400();
      sub_18E44EFFC();
      sub_18E1D44E0();
      sub_18E1E844C();
      sub_18E1E1914();
      MEMORY[0x193ACC300]();
      goto LABEL_25;
    }

    if ((sub_18E1E3488() & 1) == 0)
    {

      goto LABEL_24;
    }

    v55 = v9;
    v53 = v1;
    v8 = v62;
    sub_18E232D04();
    v54 = v1;
LABEL_11:
    sub_18E24177C();
    if (v21)
    {
      goto LABEL_42;
    }

    sub_18E223464();
    if (!v18)
    {
      break;
    }

    __break(1u);
LABEL_57:
    sub_18E1C7804();
  }

  sub_18E220C68();
  v9 = v64;
  sub_18E1C8570(v63, v64);
  v19(v9);
  sub_18E220298();
  v21 = v21 && v20 == v62;
  if (!v21)
  {
    sub_18E221494();
    sub_18E201F20();
    if (v9)
    {
      goto LABEL_30;
    }

    sub_18E1E3BE0(v63);
    goto LABEL_11;
  }

LABEL_30:
  v26 = sub_18E1E1C30();
  sub_18E1C551C(v26, v27);
  sub_18E2706EC(&unk_1EABE33F0, &unk_18E49D240);
  sub_18E1E1C30();
  if ((sub_18E2F7DB8() & 1) == 0)
  {
LABEL_42:

    sub_18E1CC400();
    sub_18E44EFFC();

    sub_18E1C8E68();
    sub_18E2F7D28(v35);
    v23 = sub_18E2F7D40();
    goto LABEL_26;
  }

  v28 = sub_18E1E84CC();
  memcpy(v28, v29, 0xD8uLL);
  sub_18E1C5B68();
  sub_18E2F86BC();
  if (!v59)
  {

    sub_18E2121D8(&v61);

    sub_18E1E8F44(v58, &qword_1EABE3B70, &qword_18E4AAB80);
    goto LABEL_45;
  }

  sub_18E1E1A40();
  v30 = v55;
  if ((sub_18E223680() & 1) == 0)
  {

    sub_18E2121D8(&v61);

LABEL_45:
    sub_18E223A3C();
    sub_18E44EFFC();
    sub_18E221770();
    v36 = sub_18E1D0358();
    MEMORY[0x193ACC300](v36);
    sub_18E223530();
    sub_18E22449C();

    v37 = sub_18E1E884C();
LABEL_54:
    MEMORY[0x193ACC300](v37, v8);

    goto LABEL_27;
  }

  v8 = v60;
  while (1)
  {
    sub_18E24177C();
    if (v21)
    {

      sub_18E2121D8(&v61);

LABEL_53:
      sub_18E223A3C();
      sub_18E44EFFC();

      sub_18E1C8E68();
      v58[0] = v46 + 24;
      v58[1] = v45;
      v37 = sub_18E1E861C();
      goto LABEL_54;
    }

    sub_18E223464();
    if (v18)
    {
      __break(1u);
      return;
    }

    sub_18E1E8C38(v54, v58);
    v31 = v59;
    sub_18E1C8570(v58, v59);
    v32(v31);
    sub_18E220C28();
    if (v21 && v33 == v8)
    {
      break;
    }

    sub_18E1E2878();
    sub_18E1E2238();

    if (v31)
    {
      goto LABEL_48;
    }

    sub_18E2336EC(v58);
  }

LABEL_48:

  v38 = sub_18E1E2920();
  sub_18E1C551C(v38, v39);
  sub_18E1E2920();
  if ((sub_18E2235B8() & 1) == 0)
  {

    sub_18E2121D8(&v61);
    goto LABEL_53;
  }

  sub_18E1E3434();
  sub_18E1C86E0();
  v40 = swift_allocObject();
  sub_18E1E3B8C(v40);
  sub_18E1E7BB4();
  sub_18E1C86E0();
  v41 = swift_allocObject();
  v42 = sub_18E1E9C70(v41);
  memcpy(v42, v43, 0xD8uLL);

  v44 = v57;
  sub_18E44E50C();
  sub_18E44E54C();
  sub_18E1D4C60(v56);
  if (v21)
  {

    sub_18E1E8F44(v56, &qword_1EABE2FE0, &qword_18E49CE00);
  }

  else
  {
    v44 = sub_18E44E49C();
    v48 = v47;

    sub_18E25E19C();
    v50 = *(v49 + 8);
    v51 = sub_18E1CFFC0();
    v52(v51);

    v30 = v48;
  }

  *v53 = v44;
  v53[1] = v30;
  sub_18E23492C();
LABEL_28:
  sub_18E1E2968();
  sub_18E1C6650();
}
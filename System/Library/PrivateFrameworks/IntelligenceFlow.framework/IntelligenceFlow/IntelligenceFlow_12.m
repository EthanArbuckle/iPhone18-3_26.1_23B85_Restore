uint64_t sub_1DD7DCE98(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7DCF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7DCE98(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7DCF50(uint64_t a1)
{
  v2 = sub_1DD804DD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DCF8C(uint64_t a1)
{
  v2 = sub_1DD804DD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionSuccess.FollowUpAction.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6E593C();
  v0 = sub_1DD710A9C(&qword_1ECD12958, &qword_1DD88A0E8);
  sub_1DD6DDEAC(v0);
  v2 = *(v1 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEBA0();
  sub_1DD6DEAD0();
  sub_1DD804DD4();
  sub_1DD825588();
  type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction(0);
  sub_1DD825F38();
  sub_1DD6E1E84(v4);
  sub_1DD6E71A4();
  v5 = sub_1DD6ED4B8();
  v6(v5);
  sub_1DD6E1868();
  sub_1DD826CF4();
}

void ActionSuccess.FollowUpAction.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD825A04();
  v2 = type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction(0);
  v3 = sub_1DD6DE1C4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DDEE8();
  sub_1DD826760(v6);
  v7 = sub_1DD710A9C(&qword_1ECD12970, &qword_1DD88A0F0);
  sub_1DD6DDEAC(v7);
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1DD6E27D4();
  v12 = type metadata accessor for ActionSuccess.FollowUpAction(v11);
  v13 = sub_1DD6DEA10(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6E6200();
  v16 = v0[3];
  v17 = v0[4];
  sub_1DD824CF8(v0);
  sub_1DD804DD4();
  sub_1DD6ED2C8();
  sub_1DD875B90();
  if (!v1)
  {
    sub_1DD825F38();
    sub_1DD6E1E84(v18);
    sub_1DD826C90();
    sub_1DD6FAB58();
    sub_1DD8758D0();
    v19 = sub_1DD6ED80C();
    v20(v19, v7);
    sub_1DD824ED0();
    sub_1DD8259E0();
    sub_1DD6E59B8();
    sub_1DD6E3A2C();
    sub_1DD6FAA70();
    sub_1DD6E59B8();
  }

  sub_1DD6E1EC8(v0);
  sub_1DD703860();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7DD27C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61566E7275746572 && a2 == 0xEB0000000065756CLL;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E6F436F646E75 && a2 == 0xEB00000000747865;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001DD8B6E80 == a2;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7055776F6C6C6F66 && a2 == 0xEE006E6F69746341;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x704F646C756F6873 && a2 == 0xEA00000000006E65;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x80000001DD8B6EA0 == a2;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x726F747365636E61 && a2 == 0xEA00000000006449;
              if (v11 || (sub_1DD875A30() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD00000000000001DLL && 0x80000001DD8B6EC0 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_1DD875A30();

                if (v13)
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

uint64_t sub_1DD7DD544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7DD27C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7DD56C(uint64_t a1)
{
  v2 = sub_1DD7031E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DD5A8(uint64_t a1)
{
  v2 = sub_1DD7031E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7DD620(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x61566E7275746572 && a2 == 0xEB0000000065756CLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7DD6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7DD620(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7DD6EC(uint64_t a1)
{
  v2 = sub_1DD804E28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DD728(uint64_t a1)
{
  v2 = sub_1DD804E28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SnippetStream.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6E593C();
  v0 = sub_1DD710A9C(&qword_1ECD12990, &qword_1DD88A108);
  sub_1DD6DDEAC(v0);
  v2 = *(v1 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEBA0();
  sub_1DD6DEAD0();
  sub_1DD804E28();
  sub_1DD825588();
  sub_1DD874FA0();
  sub_1DD6E05D4();
  sub_1DD6E1E84(v4);
  sub_1DD6E71A4();
  v5 = sub_1DD6ED4B8();
  v6(v5);
  sub_1DD6E1868();
  sub_1DD826CF4();
}

void SnippetStream.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD8254C8(v2);
  v3 = sub_1DD874FA0();
  v4 = sub_1DD6E125C(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DDEE8();
  sub_1DD826760(v7);
  v8 = sub_1DD710A9C(&qword_1ECD129A0, &qword_1DD88A110);
  sub_1DD6DDEAC(v8);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1DD6E27D4();
  v13 = type metadata accessor for SnippetStream(v12);
  v14 = sub_1DD6DEA10(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6E6200();
  v17 = v0[3];
  v18 = v0[4];
  sub_1DD824CF8(v0);
  sub_1DD804E28();
  sub_1DD6ED2C8();
  sub_1DD875B90();
  if (!v1)
  {
    sub_1DD7028D8();
    sub_1DD6E05D4();
    sub_1DD6E1E84(v19);
    sub_1DD6E49DC();
    v20 = sub_1DD6F3238();
    v21(v20);
    v22 = sub_1DD6E891C();
    v23(v22);
    sub_1DD824E40();
    sub_1DD6FAA70();
    sub_1DD6E59B8();
  }

  sub_1DD6E1EC8(v0);
  sub_1DD703860();
  sub_1DD6E0C78();
}

BOOL static SystemRequirement.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  v12 = a2[4];
  v13 = *(a2 + 40);
  v56[0] = *a1;
  v56[1] = v2;
  v56[2] = v4;
  v56[3] = v5;
  v56[4] = v6;
  v57 = v7;
  v58 = v8;
  v59 = v9;
  v60 = v11;
  v61 = v10;
  v62 = v12;
  v63 = v13;
  switch(v7 >> 6)
  {
    case 1u:
      if ((v13 & 0xC0) != 0x40)
      {
        goto LABEL_32;
      }

      sub_1DD824154(v56, &unk_1ECD129A8);
      return ((v8 ^ v3) & 1) == 0;
    case 2u:
      if ((v13 & 0xC0) != 0x80)
      {
        goto LABEL_32;
      }

      v50[0] = v3 & 1;
      v51 = v2;
      v52 = v4 & 1;
      v53 = v5;
      v54 = v6;
      v55 = v7 & 1;
      v44[0] = v8 & 1;
      v45 = v9;
      v46 = v11 & 1;
      v47 = v10;
      v48 = v12;
      v49 = v13 & 1;
      v22 = static SystemRequirement.UserLocationForSystemRequest.== infix(_:_:)(v50, v44);
      sub_1DD824154(v56, &unk_1ECD129A8);
      return v22;
    case 3u:
      if (!(v4 | v2 | v3 | v5 | v6) && v7 == 192)
      {
        if (v13 >= 0xC0 && !(v11 | v9 | v8 | v10 | v12) && v13 == 192)
        {
          goto LABEL_65;
        }

        goto LABEL_32;
      }

      v23 = v4 | v2 | v5 | v6;
      v24 = v7 == 192 && v3 == 1;
      if (!v24 || v23)
      {
        v30 = v7 == 192 && v3 == 2;
        if (!v30 || v23)
        {
          v37 = v7 == 192 && v3 == 3;
          if (!v37 || v23)
          {
            if (v13 <= 0xBF)
            {
              goto LABEL_32;
            }

            if (v13 != 192 || v8 != 4)
            {
              goto LABEL_32;
            }
          }

          else
          {
            if (v13 < 0xC0)
            {
              goto LABEL_32;
            }

            if (v13 != 192 || v8 != 3)
            {
              goto LABEL_32;
            }
          }
        }

        else
        {
          if (v13 < 0xC0)
          {
            goto LABEL_32;
          }

          if (v13 != 192 || v8 != 2)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        if (v13 < 0xC0)
        {
          goto LABEL_32;
        }

        if (v13 != 192 || v8 != 1)
        {
          goto LABEL_32;
        }
      }

      if (v11 | v9 | v10 | v12)
      {
        goto LABEL_32;
      }

      goto LABEL_65;
    default:
      if (v13 >= 0x40)
      {

LABEL_32:
        v26 = sub_1DD6DED5C();
        sub_1DD80402C(v26, v27, v11, v28, v29, v13);
        sub_1DD824154(v56, &unk_1ECD129A8);
        return 0;
      }

      else
      {
        if (v3 == v8 && v2 == v9)
        {
          sub_1DD80402C(v3, v2, v11, v10, v12, v13);
          sub_1DD6F441C();
          sub_1DD826FB4();
          sub_1DD80402C(v32, v33, v34, v35, v36, v7);
LABEL_65:
          sub_1DD824154(v56, &unk_1ECD129A8);
        }

        else
        {
          v41 = v10;
          v42 = v12;
          v43 = sub_1DD875A30();
          v15 = sub_1DD6DED5C();
          sub_1DD80402C(v15, v16, v11, v41, v42, v13);
          sub_1DD6F441C();
          sub_1DD826FB4();
          sub_1DD80402C(v17, v18, v19, v20, v21, v7);
          sub_1DD824154(v56, &unk_1ECD129A8);
          v22 = 0;
          if ((v43 & 1) == 0)
          {
            return v22;
          }
        }

        return 1;
      }
  }
}

uint64_t sub_1DD7DDDA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001DD8B6EE0 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6975716552707061 && a2 == 0xEE00746E656D6572;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000001DD8B6F00 == a2;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x726F707075736E75 && a2 == 0xEB00000000646574)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD875A30();

        if (v9)
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

unint64_t sub_1DD7DDF18(char a1)
{
  result = 0x6975716552707061;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x726F707075736E75;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1DD7DDFBC(uint64_t a1)
{
  v2 = sub_1DD804FCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DDFF8(uint64_t a1)
{
  v2 = sub_1DD804FCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7DE03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7DDDA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7DE064(uint64_t a1)
{
  v2 = sub_1DD804E7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DE0A0(uint64_t a1)
{
  v2 = sub_1DD804E7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7DE0DC(uint64_t a1)
{
  v2 = sub_1DD804F24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DE118(uint64_t a1)
{
  v2 = sub_1DD804F24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7DE154(uint64_t a1)
{
  v2 = sub_1DD805074();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DE190(uint64_t a1)
{
  v2 = sub_1DD805074();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7DE1CC(uint64_t a1)
{
  v2 = sub_1DD804ED0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DE208(uint64_t a1)
{
  v2 = sub_1DD804ED0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionRequirement.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD129B0, &qword_1DD88A120);
  sub_1DD6DDEAC(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD824FEC(v7, v39);
  v8 = sub_1DD710A9C(&qword_1ECD129B8, &qword_1DD88A128);
  sub_1DD6DDEAC(v8);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD824A38(v12, v40);
  v13 = sub_1DD710A9C(&qword_1ECD129C0, &qword_1DD88A130);
  v42 = sub_1DD6DDEAC(v13);
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DEBA0();
  v17 = sub_1DD710A9C(&qword_1ECD129C8, &qword_1DD88A138);
  sub_1DD6DDEAC(v17);
  v19 = *(v18 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6E7258();
  v21 = sub_1DD710A9C(&qword_1ECD129D0, &qword_1DD88A140);
  sub_1DD6DDEAC(v21);
  v23 = *(v22 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6DE340();
  v41 = v0[1];
  v43 = *v0;
  sub_1DD8264F0(*(v0 + 4));
  v25 = *(v0 + 40);
  v27 = v2[3];
  v26 = v2[4];
  sub_1DD6FE8B0(v2);
  sub_1DD804E7C();
  sub_1DD8256E0();
  sub_1DD826FB4();
  sub_1DD875BB0();
  switch((v25 >> 4) & 3)
  {
    case 1u:
      sub_1DD8276A4();
      sub_1DD804FCC();
      sub_1DD824AB4();
      sub_1DD875910();
      sub_1DD805020();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v32 = sub_1DD6FF900();
      v33 = v42;
      goto LABEL_6;
    case 2u:
      sub_1DD827698();
      sub_1DD804F24();
      sub_1DD824AB4();
      sub_1DD875910();
      sub_1DD804F78();
      sub_1DD825AB4();
      sub_1DD8759D0();
      v32 = sub_1DD824838();
LABEL_6:
      v34(v32, v33);
      v30 = sub_1DD824A60();
      goto LABEL_7;
    case 3u:
      sub_1DD82756C();
      sub_1DD804ED0();
      sub_1DD6FA420();
      sub_1DD875910();
      v35 = sub_1DD6DED98();
      v36(v35);
      v37 = sub_1DD824A94();
      v38(v37);
      goto LABEL_8;
    default:
      sub_1DD805074();
      sub_1DD8251A8();
      sub_1DD875910();
      sub_1DD8050C8();
      sub_1DD826A40();
      v28 = sub_1DD824A04();
      v29(v28, v17);
      v30 = sub_1DD825148();
LABEL_7:
      v31(v30);
LABEL_8:
      sub_1DD7536FC();
      sub_1DD6E0C78();
      return;
  }
}

void ActionRequirement.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DD6DED2C();
  sub_1DD7038A0();
  v81 = v13;
  v82 = sub_1DD710A9C(&qword_1ECD12A18, &qword_1DD88A148);
  sub_1DD6DDEAC(v82);
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD824C9C(v17, v77);
  v79 = sub_1DD710A9C(&qword_1ECD12A20, &qword_1DD88A150);
  sub_1DD6DDEAC(v79);
  v19 = *(v18 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6E0C6C();
  sub_1DD8268FC(v21);
  v22 = sub_1DD710A9C(&qword_1ECD12A28, &qword_1DD88A158);
  v80 = sub_1DD6DDEAC(v22);
  v24 = *(v23 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD6DEA6C();
  v26 = sub_1DD710A9C(&qword_1ECD12A30, &qword_1DD88A160);
  sub_1DD6E49A8(v26);
  v28 = *(v27 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6F0A58();
  v30 = sub_1DD710A9C(&qword_1ECD12A38, &qword_1DD88A168);
  sub_1DD6DDEAC(v30);
  v32 = v31;
  v34 = *(v33 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD6DDFE4();
  v36 = v10[3];
  v37 = v10[4];
  v83 = v10;
  sub_1DD824D14(v10);
  sub_1DD804E7C();
  sub_1DD77E6F4();
  sub_1DD8274A0();
  sub_1DD875B90();
  if (!a10)
  {
    v38 = sub_1DD875900();
    sub_1DD6ED750(v38, 0);
    if (v40 != v39 >> 1)
    {
      sub_1DD6E6120();
      v78 = v30;
      sub_1DD6E42A8();
      if (v43 == v44)
      {
        __break(1u);
        return;
      }

      v45 = *(v42 + v41);
      sub_1DD6ED830(v41 + 1);
      v47 = v46;
      v49 = v48;
      swift_unknownObjectRelease();
      if (v47 == v49 >> 1)
      {
        switch(v45)
        {
          case 1:
            sub_1DD8276A4();
            sub_1DD804FCC();
            sub_1DD824BCC();
            sub_1DD875800();
            sub_1DD805170();
            sub_1DD79A3A4();
            sub_1DD8268C0();
            sub_1DD8758D0();
            sub_1DD827038();
            swift_unknownObjectRelease();
            v73 = sub_1DD6E4290();
            v74(v73, v80);
            v75 = sub_1DD824DC8();
            v76(v75, v78);
            v69 = v84;
            v70 = 0uLL;
            v72 = 16;
            goto LABEL_15;
          case 2:
            sub_1DD827698();
            sub_1DD804F24();
            sub_1DD79A3A4();
            sub_1DD825D44();
            sub_1DD875800();
            sub_1DD80511C();
            sub_1DD79A3A4();
            sub_1DD8268C0();
            sub_1DD8758D0();
            sub_1DD827038();
            swift_unknownObjectRelease();
            v61 = sub_1DD6E4290();
            v62(v61, v79);
            v63 = sub_1DD824DC8();
            v64(v63, v78);
            v69 = v84;
            v70 = 0uLL;
            v72 = 32;
            goto LABEL_15;
          case 3:
            sub_1DD82756C();
            sub_1DD804ED0();
            sub_1DD79A3A4();
            sub_1DD825D44();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v57 = sub_1DD6DED98();
            v58(v57, v82);
            v59 = sub_1DD824DC8();
            v60(v59, v78);
            v69 = 0;
            v70 = 0uLL;
            v72 = 48;
LABEL_15:
            v71 = 0uLL;
            break;
          default:
            LOBYTE(v84) = 0;
            sub_1DD805074();
            sub_1DD6E4040();
            sub_1DD825D44();
            sub_1DD875800();
            sub_1DD8051C4();
            sub_1DD6E4968();
            sub_1DD8758D0();
            sub_1DD827038();
            swift_unknownObjectRelease();
            v65 = sub_1DD6DE58C();
            v66(v65);
            v67 = sub_1DD824DC8();
            v68(v67, v78);
            v69 = v84;
            v70 = v85;
            v71 = v86;
            v72 = v87;
            break;
        }

        v56 = v83;
        *v81 = v69;
        *(v81 + 8) = v70;
        *(v81 + 24) = v71;
        *(v81 + 40) = v72;
        goto LABEL_11;
      }

      v30 = v78;
    }

    sub_1DD875740();
    sub_1DD6E41BC();
    sub_1DD82762C();
    v50 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v11 = &type metadata for ActionRequirement;
    sub_1DD875810();
    sub_1DD6DF12C();
    v51 = *MEMORY[0x1E69E6AF8];
    sub_1DD824B14();
    v53 = *(v52 + 104);
    v54 = sub_1DD6FEB10();
    v55(v54);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v32 + 8))(v12, v30);
  }

  v56 = v83;
LABEL_11:
  sub_1DD6E1EC8(v56);
  sub_1DD703860();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7DEDE8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001DD8B5FE0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7DEE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7DEDE8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7DEEB4(uint64_t a1)
{
  v2 = sub_1DD805218();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DEEF0(uint64_t a1)
{
  v2 = sub_1DD805218();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemRequirement.ProtectedAppRequest.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  v0 = sub_1DD710A9C(&qword_1ECD12A58, &qword_1DD88A170);
  sub_1DD6E125C(v0);
  v2 = *(v1 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD805218();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v4 = sub_1DD6FF808();
  v5(v4);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7DF070(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000022 && 0x80000001DD8B6F20 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001DD8B6F50 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD7DF174(uint64_t a1)
{
  v2 = sub_1DD805314();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DF1B0(uint64_t a1)
{
  v2 = sub_1DD805314();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7DF1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7DF070(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7DF21C(uint64_t a1)
{
  v2 = sub_1DD80526C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DF258(uint64_t a1)
{
  v2 = sub_1DD80526C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7DF294(uint64_t a1)
{
  v2 = sub_1DD8052C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DF2D0(uint64_t a1)
{
  v2 = sub_1DD8052C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemRequirement.AuthenticationRequest.AuthenticationLevel.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD826784();
  v2 = sub_1DD710A9C(&qword_1ECD12A70, &qword_1DD88A180);
  sub_1DD6DDEAC(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD82480C(v6, v26);
  v7 = sub_1DD710A9C(&qword_1ECD12A78, &qword_1DD88A188);
  sub_1DD6DDEAC(v7);
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6F0A58();
  v11 = sub_1DD710A9C(&qword_1ECD12A80, &qword_1DD88A190);
  sub_1DD6E125C(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6E7258();
  v17 = *v0;
  v18 = v1[3];
  v19 = v1[4];
  sub_1DD824CF8(v1);
  sub_1DD80526C();
  sub_1DD7039CC();
  sub_1DD700954();
  sub_1DD875BB0();
  v20 = (v13 + 8);
  if (v17)
  {
    sub_1DD6FF8F4();
    sub_1DD8052C0();
    sub_1DD824848();
    sub_1DD875910();
    v21 = sub_1DD6DED98();
  }

  else
  {
    sub_1DD805314();
    sub_1DD826808();
    sub_1DD824848();
    sub_1DD875910();
    v21 = sub_1DD6E4290();
  }

  v22(v21);
  v23 = *v20;
  v24 = sub_1DD825570();
  v25(v24);
  sub_1DD8268CC();
  sub_1DD6E0C78();
}

void SystemRequirement.AuthenticationRequest.AuthenticationLevel.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD826C50(v4);
  v46 = sub_1DD710A9C(&qword_1ECD12AA0, &qword_1DD88A198);
  sub_1DD6DDEAC(v46);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6E17C8();
  v8 = sub_1DD710A9C(&qword_1ECD12AA8, &qword_1DD88A1A0);
  sub_1DD6DDEAC(v8);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DDFE4();
  v12 = sub_1DD710A9C(&qword_1ECD12AB0, &qword_1DD88A1A8);
  sub_1DD6DDEAC(v12);
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DEBA0();
  v17 = v2[3];
  v16 = v2[4];
  sub_1DD6E6C94(v2);
  sub_1DD80526C();
  sub_1DD6E4218();
  sub_1DD82718C();
  if (!v1)
  {
    v47 = v2;
    sub_1DD826378();
    v18 = sub_1DD875900();
    sub_1DD6ED750(v18, 0);
    sub_1DD826B7C();
    if (!v19)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v20 == v21)
      {
        __break(1u);
        return;
      }

      v28 = *(v27 + v26);
      v29 = sub_1DD6F43D8(v22, v23, v24, v25, v26);
      sub_1DD6ED830(v29);
      sub_1DD6E0194();
      v31 = v30;
      swift_unknownObjectRelease();
      if (!(v31 >> 1))
      {
        if (v28)
        {
          sub_1DD6FF8F4();
          sub_1DD8052C0();
          sub_1DD824DB8();
          sub_1DD875800();
          sub_1DD701428();
          swift_unknownObjectRelease();
          v32 = sub_1DD825038();
          v34 = v46;
        }

        else
        {
          sub_1DD805314();
          sub_1DD826E4C();
          sub_1DD824DB8();
          sub_1DD875800();
          sub_1DD701428();
          swift_unknownObjectRelease();
          v32 = sub_1DD705C68();
          v34 = v8;
        }

        v33(v32, v34);
        v43 = *(v0 + 8);
        v44 = sub_1DD6E60FC();
        v45(v44);
        sub_1DD826EE8();
        goto LABEL_12;
      }
    }

    sub_1DD875740();
    sub_1DD6E41BC();
    sub_1DD82702C();
    v35 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v3 = &type metadata for SystemRequirement.AuthenticationRequest.AuthenticationLevel;
    sub_1DD826378();
    sub_1DD875810();
    sub_1DD6DF100();
    v36 = *MEMORY[0x1E69E6AF8];
    sub_1DD8250B8();
    v38 = *(v37 + 104);
    v39 = sub_1DD826518();
    v40(v39);
    swift_willThrow();
    swift_unknownObjectRelease();
    v41 = sub_1DD6E37A0();
    v42(v41);
    v2 = v47;
  }

  sub_1DD6E1EC8(v2);
LABEL_12:
  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7DF930(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001DD8B6F80 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7DF9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7DF930(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7DF9FC(uint64_t a1)
{
  v2 = sub_1DD805368();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DFA38(uint64_t a1)
{
  v2 = sub_1DD805368();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemRequirement.AuthenticationRequest.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD12AB8, &qword_1DD88A1B0);
  sub_1DD6DDEAC(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DEBA0();
  v7 = *v0;
  v8 = v2[3];
  v9 = v2[4];
  sub_1DD6E49C0(v2);
  sub_1DD805368();
  sub_1DD825588();
  sub_1DD8053BC();
  sub_1DD8759D0();
  v10 = sub_1DD6ED4B8();
  v11(v10);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void SystemRequirement.AuthenticationRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1DD6DED2C();
  sub_1DD70068C();
  v16 = v15;
  v17 = sub_1DD710A9C(&qword_1ECD12AD0, &qword_1DD88A1B8);
  sub_1DD6E125C(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD6DEBA0();
  sub_1DD6DE568();
  sub_1DD805368();
  sub_1DD6E4218();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (!v14)
  {
    sub_1DD805410();
    sub_1DD6E710C();
    sub_1DD6FAC28();
    sub_1DD8758D0();
    v23 = *(v19 + 8);
    v24 = sub_1DD6DDEDC();
    v25(v24);
    *v16 = a13;
  }

  sub_1DD6E1EC8(v13);
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t SystemRequirement.UserLocationForSystemRequest.minimumViableLocationAccuracy.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t SystemRequirement.UserLocationForSystemRequest.timeoutForLocationFetch.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return result;
}

uint64_t SystemRequirement.UserLocationForSystemRequest.timeoutForLocationFetch.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 24) = result;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3 & 1;
  return result;
}

uint64_t SystemRequirement.UserLocationForSystemRequest.init(isPreciseLocationRequired:minimumViableLocationAccuracy:timeoutForLocationFetch:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  return result;
}

BOOL static SystemRequirement.UserLocationForSystemRequest.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(a1 + 3);
  v6 = *(a1 + 4);
  v7 = *(a2 + 3);
  v8 = *(a2 + 4);
  v9 = a2[40];
  if (a1[16])
  {
    if (!a2[16])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 1) == *(a2 + 1))
    {
      v10 = a2[16];
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  if ((a1[40] & 1) == 0)
  {
    return (v9 & 1) == 0 && (sub_1DD875BD0() & 1) != 0;
  }

  return (v9 & 1) != 0;
}

uint64_t sub_1DD7DFDFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000019 && 0x80000001DD8B6FA0 == a2;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001DLL && 0x80000001DD8B6FC0 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000017 && 0x80000001DD8B6FE0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_1DD7DFF14(char a1)
{
  if (!a1)
  {
    return 0xD000000000000019;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001DLL;
  }

  return 0xD000000000000017;
}

uint64_t sub_1DD7DFF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7DFDFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7DFF98(uint64_t a1)
{
  v2 = sub_1DD805464();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7DFFD4(uint64_t a1)
{
  v2 = sub_1DD805464();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemRequirement.UserLocationForSystemRequest.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD12AE0, &qword_1DD88A1C0);
  sub_1DD6E49A8(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEA6C();
  v8 = *v0;
  v9 = *(v0 + 1);
  sub_1DD826A0C();
  v16 = *(v0 + 3);
  v15 = *(v0 + 4);
  v14 = v0[40];
  v11 = v3[3];
  v10 = v3[4];
  sub_1DD6FE8B0(v3);
  sub_1DD805464();
  sub_1DD6E17D8();
  sub_1DD826FA8();
  sub_1DD875BB0();
  sub_1DD6E5334();
  sub_1DD875980();
  if (!v1)
  {
    sub_1DD702E94();
    sub_1DD705DBC();
    sub_1DD875940();
    sub_1DD6EFF88();
    sub_1DD826748();
    sub_1DD6E5334();
    sub_1DD875960();
  }

  v12 = sub_1DD6FF768();
  v13(v12);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void SystemRequirement.UserLocationForSystemRequest.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD826838();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD12AF0, &qword_1DD88A1C8);
  sub_1DD6DDEAC(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD805464();
  sub_1DD6FC48C();
  if (!v1)
  {
    sub_1DD6F178C();
    v8 = sub_1DD875880();
    LOBYTE(v13) = 1;
    sub_1DD6F178C();
    v9 = sub_1DD875840();
    v15 = v10;
    sub_1DD6EFF88();
    sub_1DD8275D0();
    sub_1DD824BCC();
    sub_1DD875860();
    v11 = sub_1DD825098();
    v12(v11);
    *v3 = v8 & 1;
    *(v3 + 8) = v9;
    *(v3 + 16) = v15 & 1;
    *(v3 + 24) = v13;
    *(v3 + 40) = v14;
  }

  sub_1DD6E1EC8(v0);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7E0304(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x80000001DD8B7000 == a2;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000001DD8B7020 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001DD8B7040 == a2;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001DD8B7060 == a2;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000018 && 0x80000001DD8B7080 == a2;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001CLL && 0x80000001DD8B70A0 == a2;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001ALL && 0x80000001DD8B70C0 == a2;
              if (v11 || (sub_1DD875A30() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD00000000000001DLL && 0x80000001DD8B70E0 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_1DD875A30();

                if (v13)
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

unint64_t sub_1DD7E0570(char a1)
{
  result = 0xD000000000000014;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7E0678(uint64_t a1)
{
  v2 = sub_1DD8057AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E06B4(uint64_t a1)
{
  v2 = sub_1DD8057AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E06F0(uint64_t a1)
{
  v2 = sub_1DD805800();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E072C(uint64_t a1)
{
  v2 = sub_1DD805800();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E0768(uint64_t a1)
{
  v2 = sub_1DD805704();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E07A4(uint64_t a1)
{
  v2 = sub_1DD805704();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E07E0(uint64_t a1)
{
  v2 = sub_1DD805758();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E081C(uint64_t a1)
{
  v2 = sub_1DD805758();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E0860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7E0304(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7E0888(uint64_t a1)
{
  v2 = sub_1DD8054B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E08C4(uint64_t a1)
{
  v2 = sub_1DD8054B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E0900(uint64_t a1)
{
  v2 = sub_1DD805854();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E093C(uint64_t a1)
{
  v2 = sub_1DD805854();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E0978(uint64_t a1)
{
  v2 = sub_1DD80565C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E09B4(uint64_t a1)
{
  v2 = sub_1DD80565C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E09F0(uint64_t a1)
{
  v2 = sub_1DD8055B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E0A2C(uint64_t a1)
{
  v2 = sub_1DD8055B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E0A68(uint64_t a1)
{
  v2 = sub_1DD80550C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E0AA4(uint64_t a1)
{
  v2 = sub_1DD80550C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemRequirement.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v23;
  a20 = v24;
  a10 = v21;
  v26 = v25;
  v27 = sub_1DD710A9C(&qword_1ECD12AF8, &qword_1DD88A1D0);
  v28 = sub_1DD6DDEAC(v27);
  v125 = v29;
  v126 = v28;
  v31 = *(v30 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD824934(v33, v109);
  v34 = sub_1DD710A9C(&qword_1ECD12B00, &qword_1DD88A1D8);
  v35 = sub_1DD6DDEAC(v34);
  v123 = v36;
  v124 = v35;
  v38 = *(v37 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD824A38(v40, v110);
  v41 = sub_1DD710A9C(&qword_1ECD12B08, &qword_1DD88A1E0);
  v42 = sub_1DD6DDEAC(v41);
  v121 = v43;
  v122 = v42;
  v45 = *(v44 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v46);
  sub_1DD824B94(v47, v111);
  v48 = sub_1DD710A9C(&qword_1ECD12B10, &qword_1DD88A1E8);
  sub_1DD6DF3FC(v48, &a11);
  v115 = v49;
  v51 = *(v50 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v52);
  sub_1DD824AFC(v53, v112);
  v54 = sub_1DD710A9C(&qword_1ECD12B18, &qword_1DD88A1F0);
  sub_1DD6DF3FC(v54, &v138);
  v56 = *(v55 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v57);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v58);
  v59 = sub_1DD710A9C(&qword_1ECD12B20, &qword_1DD88A1F8);
  sub_1DD6DF3FC(v59, &a14);
  v116 = v60;
  v62 = *(v61 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v63);
  sub_1DD825498(v64, v113);
  v65 = sub_1DD710A9C(&qword_1ECD12B28, &qword_1DD88A200);
  sub_1DD6DF3FC(v65, &a17);
  v117 = v66;
  v68 = *(v67 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v69);
  sub_1DD705DF0(v70, v114);
  v120 = sub_1DD710A9C(&qword_1ECD12B30, &qword_1DD88A208);
  sub_1DD6DDEAC(v120);
  v119 = v71;
  v73 = *(v72 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v74);
  sub_1DD6DDFE4();
  v75 = sub_1DD710A9C(&qword_1ECD12B38, &qword_1DD88A210);
  v130 = sub_1DD6DDEAC(v75);
  v131 = v76;
  v78 = *(v77 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v79);
  sub_1DD6F0A58();
  v80 = *v20;
  v127 = v20[1];
  v128 = v80;
  v82 = v20[2];
  v81 = v20[3];
  v83 = v20[4];
  v84 = *(v20 + 40);
  v85 = v26;
  v86 = v26[3];
  v87 = v85[4];
  sub_1DD6FE770(v85);
  sub_1DD8054B8();
  v129 = v22;
  sub_1DD6EF0F4();
  sub_1DD875BB0();
  switch(v84 >> 6)
  {
    case 1u:
      sub_1DD8055B4();
      v88 = v130;
      sub_1DD824AB4();
      sub_1DD875910();
      LOBYTE(v132) = v128 & 1;
      sub_1DD805608();
      sub_1DD825AB4();
      sub_1DD8759D0();
      goto LABEL_8;
    case 2u:
      sub_1DD80550C();
      sub_1DD8272DC();
      sub_1DD82499C();
      sub_1DD875910();
      LOBYTE(v132) = v128 & 1;
      v133 = v127;
      v134 = v82 & 1;
      v135 = v81;
      v136 = v83;
      v137[0] = v84 & 1;
      sub_1DD805560();
      sub_1DD826DD4();
      v89 = sub_1DD824D98();
      v90(v89);
      v91 = sub_1DD824838();
      goto LABEL_10;
    case 3u:
      if (!(v82 | v127 | v128 | v81 | v83) && v84 == 192)
      {
        LOBYTE(v132) = 0;
        sub_1DD805854();
        sub_1DD79A3A4();
        sub_1DD875910();
        v94 = sub_1DD824880(&a18);
        v96 = v120;
LABEL_19:
        v95(v94, v96);
        v101 = *(v131 + 8);
        v102 = sub_1DD6E21D0();
        v103(v102);
        goto LABEL_11;
      }

      v99 = v82 | v127 | v81 | v83;
      v100 = v84 == 192 && v128 == 1;
      if (v100 && !v99)
      {
        sub_1DD8276A4();
        sub_1DD805800();
        sub_1DD705200(&a15);
        v94 = sub_1DD702E84(&a16);
        v96 = v118;
        goto LABEL_19;
      }

      v104 = v84 == 192 && v128 == 2;
      if (!v104 || v99)
      {
        v108 = v84 == 192 && v128 == 3;
        if (!v108 || v99)
        {
          LOBYTE(v132) = 4;
          sub_1DD805704();
          sub_1DD8269B0(&a9);
          v88 = v130;
          sub_1DD6F3128();
          sub_1DD875910();
          v105 = sub_1DD824890(&a10);
          v107 = &a11;
        }

        else
        {
          sub_1DD82756C();
          sub_1DD805758();
          sub_1DD8269B0(&v136);
          v88 = v130;
          sub_1DD6F3128();
          sub_1DD875910();
          v105 = sub_1DD824890(v137);
          v107 = &v138;
        }
      }

      else
      {
        sub_1DD827698();
        sub_1DD8057AC();
        sub_1DD8269B0(&a12);
        v88 = v130;
        sub_1DD6F3128();
        sub_1DD875910();
        v105 = sub_1DD824890(&a13);
        v107 = &a14;
      }

      v106(v105, *(v107 - 32));
      v91 = sub_1DD6DEBBC();
LABEL_9:
      v92 = v88;
LABEL_10:
      v93(v91, v92);
LABEL_11:
      sub_1DD7536FC();
      sub_1DD6E0C78();
      return;
    default:
      sub_1DD80565C();
      v88 = v130;
      sub_1DD824AB4();
      sub_1DD875910();
      v132 = v128;
      v133 = v127;
      sub_1DD8056B0();
      sub_1DD825AB4();
      sub_1DD8759D0();
LABEL_8:
      v97 = sub_1DD824838();
      v98(v97);
      v91 = sub_1DD6E61C4();
      goto LABEL_9;
  }
}

void SystemRequirement.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v22;
  a20 = v23;
  sub_1DD7038A0();
  v141 = v24;
  v140 = sub_1DD710A9C(&qword_1ECD12BA0, &qword_1DD88A218);
  sub_1DD6DDEAC(v140);
  v26 = *(v25 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD824A4C(v28, v131);
  v139 = sub_1DD710A9C(&qword_1ECD12BA8, &qword_1DD88A220);
  sub_1DD6DDEAC(v139);
  v30 = *(v29 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD824948(v32, v132);
  v138 = sub_1DD710A9C(&qword_1ECD12BB0, &qword_1DD88A228);
  sub_1DD6DDEAC(v138);
  v34 = *(v33 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD82495C(v36, v133);
  v37 = sub_1DD710A9C(&qword_1ECD12BB8, &qword_1DD88A230);
  sub_1DD6DDEAC(v37);
  v39 = *(v38 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1DD824FD8(v41, v134);
  v42 = sub_1DD710A9C(&qword_1ECD12BC0, &qword_1DD88A238);
  sub_1DD6DF3FC(v42, &a17);
  v44 = *(v43 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1DD824934(v46, v135);
  v137 = sub_1DD710A9C(&qword_1ECD12BC8, &qword_1DD88A240);
  sub_1DD6DDEAC(v137);
  v48 = *(v47 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1DD6E0C6C();
  sub_1DD8268FC(v50);
  v51 = sub_1DD710A9C(&qword_1ECD12BD0, &qword_1DD88A248);
  sub_1DD6DF3FC(v51, &a16);
  v53 = *(v52 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v54);
  sub_1DD6F0A58();
  v55 = sub_1DD710A9C(&qword_1ECD12BD8, &qword_1DD88A250);
  sub_1DD6DDEAC(v55);
  v57 = *(v56 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v58);
  sub_1DD6DE340();
  v59 = sub_1DD710A9C(&qword_1ECD12BE0, &qword_1DD88A258);
  sub_1DD6E49A8(v59);
  v61 = v60;
  v63 = *(v62 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v64);
  sub_1DD6DEBA0();
  v65 = v21[3];
  v66 = v21[4];
  v142 = v21;
  sub_1DD824CF8(v21);
  sub_1DD8054B8();
  sub_1DD6E4218();
  v67 = a10;
  sub_1DD875B90();
  if (!v67)
  {
    a10 = v61;
    sub_1DD6FA3D0();
    v68 = sub_1DD875900();
    sub_1DD6ED750(v68, 0);
    sub_1DD826B7C();
    if (!v69)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v76 == v77)
      {
        __break(1u);
        return;
      }

      v136 = *(v75 + v74);
      v78 = sub_1DD6F43D8(v70, v71, v72, v73, v74);
      v65 = sub_1DD6ED830(v78);
      v80 = v79;
      v82 = v81;
      swift_unknownObjectRelease();
      if (v80 == v82 >> 1)
      {
        switch(v136)
        {
          case 1:
            sub_1DD8276A4();
            sub_1DD805800();
            sub_1DD8269B0(&a10);
            sub_1DD824DF8();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v112 = sub_1DD824890(&a15);
            v113(v112);
            v114 = sub_1DD6FE110();
            v115(v114);
            *&v91 = sub_1DD8252DC();
            v90 = 1;
            goto LABEL_16;
          case 2:
            sub_1DD827698();
            sub_1DD8057AC();
            sub_1DD824DF8();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v104 = sub_1DD824890(&a18);
            v105(v104, v137);
            v106 = sub_1DD6FE110();
            v107(v106);
            *&v91 = sub_1DD8252DC();
            v90 = 2;
            goto LABEL_16;
          case 3:
            sub_1DD82756C();
            sub_1DD805758();
            sub_1DD8272DC();
            sub_1DD824DF8();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v108 = sub_1DD6E4290();
            v109(v108);
            v110 = sub_1DD6FE110();
            v111(v110);
            *&v91 = sub_1DD8252DC();
            v90 = 3;
            goto LABEL_16;
          case 4:
            sub_1DD805704();
            sub_1DD824DF8();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v100 = sub_1DD6E4290();
            v101(v100);
            v102 = sub_1DD6FE110();
            v103(v102);
            *&v91 = sub_1DD8252DC();
            v90 = 4;
            goto LABEL_16;
          case 5:
            LOBYTE(v143) = 5;
            sub_1DD80565C();
            sub_1DD824DF8();
            sub_1DD875800();
            sub_1DD805950();
            sub_1DD700C9C();
            sub_1DD8758D0();
            sub_1DD826640();
            swift_unknownObjectRelease();
            v121 = sub_1DD6FA9F4(&a11);
            v122(v121, v138);
            v123 = *(v82 + 8);
            v124 = sub_1DD6DDEDC();
            v125(v124);
            v88 = 0;
            v89 = 0;
            v90 = v143;
            v87 = v144;
            v91 = 0uLL;
            goto LABEL_17;
          case 6:
            sub_1DD8055B4();
            sub_1DD824DF8();
            sub_1DD875800();
            sub_1DD8058FC();
            sub_1DD700C9C();
            sub_1DD8758D0();
            sub_1DD826640();
            swift_unknownObjectRelease();
            v126 = sub_1DD6FA9F4(&a12);
            v127(v126, v139);
            v128 = *(v82 + 8);
            v129 = sub_1DD6DDEDC();
            v130(v129);
            sub_1DD8256F8();
            v90 = 6;
            v91 = 0uLL;
            v89 = 64;
            goto LABEL_17;
          case 7:
            sub_1DD80550C();
            sub_1DD824DF8();
            sub_1DD875800();
            sub_1DD8058A8();
            sub_1DD700C9C();
            sub_1DD8758D0();
            sub_1DD826640();
            swift_unknownObjectRelease();
            v116 = sub_1DD6FA9F4(&a13);
            v117(v116, v140);
            v118 = *(v82 + 8);
            v119 = sub_1DD6DDEDC();
            v120(v119);
            v90 = 7;
            v87 = v144;
            v88 = v145;
            v91 = v146;
            v89 = v147 | 0x80;
            goto LABEL_17;
          default:
            sub_1DD805854();
            sub_1DD8269B0(&a9);
            sub_1DD824DF8();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v83 = sub_1DD824890(&a14);
            v84(v83, v55);
            v85 = sub_1DD6FE110();
            v86(v85);
            *&v91 = sub_1DD8252DC();
LABEL_16:
            v20 = v142;
LABEL_17:
            *v141 = v90;
            *(v141 + 8) = v87;
            *(v141 + 16) = v88;
            *(v141 + 24) = v91;
            *(v141 + 40) = v89;
            break;
        }

        goto LABEL_10;
      }
    }

    sub_1DD875740();
    sub_1DD6E41BC();
    sub_1DD82762C();
    v92 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v65 = &type metadata for SystemRequirement;
    sub_1DD875810();
    sub_1DD6DF12C();
    v93 = *MEMORY[0x1E69E6AF8];
    sub_1DD824B14();
    v95 = *(v94 + 104);
    v96 = sub_1DD6FEB10();
    v97(v96);
    swift_willThrow();
    swift_unknownObjectRelease();
    v98 = sub_1DD6DEBBC();
    v99(v98, v20);
  }

  v20 = v142;
LABEL_10:
  sub_1DD6E1EC8(v20);
  sub_1DD703860();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7E1D0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65526E496E676973 && a2 == 0xEE00646572697571;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001DD8B7100 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000018 && 0x80000001DD8B7120 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD7E1E30(char a1)
{
  if (!a1)
  {
    return 0x65526E496E676973;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0xD000000000000018;
}

uint64_t sub_1DD7E1ECC(uint64_t a1)
{
  v2 = sub_1DD805A4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E1F08(uint64_t a1)
{
  v2 = sub_1DD805A4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E1F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7E1D0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7E1F74(uint64_t a1)
{
  v2 = sub_1DD8059A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E1FB0(uint64_t a1)
{
  v2 = sub_1DD8059A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E1FEC(uint64_t a1)
{
  v2 = sub_1DD805AA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E2028(uint64_t a1)
{
  v2 = sub_1DD805AA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E2064(uint64_t a1)
{
  v2 = sub_1DD8059F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E20A0(uint64_t a1)
{
  v2 = sub_1DD8059F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppRequirement.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD826784();
  v2 = sub_1DD710A9C(&qword_1ECD12C00, &qword_1DD88A260);
  sub_1DD6DDEAC(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD82480C(v6, v30);
  v7 = sub_1DD710A9C(&qword_1ECD12C08, &qword_1DD88A268);
  sub_1DD6DDEAC(v7);
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6E9924(v11, v31);
  v12 = sub_1DD710A9C(&qword_1ECD12C10, &qword_1DD88A270);
  sub_1DD6DDEAC(v12);
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DEA6C();
  v16 = sub_1DD710A9C(&qword_1ECD12C18, &qword_1DD88A278);
  sub_1DD6E125C(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6DDFE4();
  v22 = *v0;
  v24 = v1[3];
  v23 = v1[4];
  sub_1DD6FE770(v1);
  sub_1DD8059A4();
  sub_1DD77E6F4();
  sub_1DD875BB0();
  if (v22)
  {
    if (v22 == 1)
    {
      sub_1DD6DEC54();
      sub_1DD805A4C();
      sub_1DD824CD8();
    }

    else
    {
      sub_1DD6EFF88();
      sub_1DD8059F8();
      sub_1DD824AE4();
    }

    sub_1DD875910();
  }

  else
  {
    sub_1DD805AA0();
    sub_1DD824CD8();
    sub_1DD875910();
  }

  v25 = sub_1DD6DED98();
  v26(v25);
  v27 = *(v18 + 8);
  v28 = sub_1DD6E0F98();
  v29(v28);
  sub_1DD8268CC();
  sub_1DD6E0C78();
}

void AppRequirement.init(from:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v63 = v5;
  v65 = sub_1DD710A9C(&qword_1ECD12C40, &qword_1DD88A280);
  sub_1DD6DDEAC(v65);
  v64 = v6;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD824F70(v10);
  v11 = sub_1DD710A9C(&qword_1ECD12C48, &qword_1DD88A288);
  sub_1DD6DDEAC(v11);
  v13 = *(v12 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DE340();
  v15 = sub_1DD710A9C(&qword_1ECD12C50, &qword_1DD88A290);
  sub_1DD6DDEAC(v15);
  v17 = *(v16 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6F0A58();
  v19 = sub_1DD710A9C(&qword_1ECD12C58, &qword_1DD88A298);
  sub_1DD6E49A8(v19);
  v21 = *(v20 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD6DEBA0();
  v24 = v4[3];
  v23 = v4[4];
  sub_1DD6FE8B0(v4);
  sub_1DD8059A4();
  sub_1DD6E4218();
  sub_1DD827620();
  sub_1DD875B90();
  if (!v2)
  {
    v66 = v4;
    sub_1DD6FA3D0();
    v25 = sub_1DD875900();
    sub_1DD6ED750(v25, 0);
    sub_1DD826B24();
    if (!v26)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v33 == v34)
      {
        __break(1u);
        return;
      }

      v35 = *(v32 + v31);
      v36 = sub_1DD77E6E4(v27, v28, v29, v30, v31);
      sub_1DD6ED830(v36);
      sub_1DD6E0194();
      v38 = v37;
      swift_unknownObjectRelease();
      if (v23 == v38 >> 1)
      {
        if (v35)
        {
          if (v35 == 1)
          {
            sub_1DD6DEC54();
            sub_1DD805A4C();
            sub_1DD7031D0();
            sub_1DD875800();
            sub_1DD8274EC();
            swift_unknownObjectRelease();
            v49 = sub_1DD6E61C4();
            v50(v49);
            v51 = *(v0 + 8);
            v52 = sub_1DD825998();
            v53(v52);
          }

          else
          {
            sub_1DD6EFF88();
            sub_1DD8059F8();
            sub_1DD824DF8();
            sub_1DD875800();
            sub_1DD8274D8();
            swift_unknownObjectRelease();
            v58 = *(v64 + 8);
            v59 = sub_1DD705C50();
            v60(v59);
            v61 = sub_1DD82622C();
            v62(v61, v35);
          }
        }

        else
        {
          sub_1DD805AA0();
          sub_1DD6E4040();
          sub_1DD875800();
          swift_unknownObjectRelease();
          v54 = sub_1DD6DED98();
          v55(v54, v15);
          v56 = sub_1DD8255C0();
          v57(v56);
          v1 = v63;
        }

        *v1 = v35;
        sub_1DD6E1EC8(v66);
        goto LABEL_11;
      }
    }

    sub_1DD875740();
    sub_1DD6E41BC();
    v40 = v39;
    v41 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v40 = &type metadata for AppRequirement;
    sub_1DD6FA3D0();
    sub_1DD875810();
    sub_1DD6DF100();
    v42 = *MEMORY[0x1E69E6AF8];
    sub_1DD8250B8();
    v44 = *(v43 + 104);
    v45 = sub_1DD700660();
    v46(v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    v47 = sub_1DD6FE110();
    v48(v47);
    v4 = v66;
  }

  sub_1DD6E1EC8(v4);
LABEL_11:
  sub_1DD6F9B18();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7E28A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x80000001DD8B7140 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001BLL && 0x80000001DD8B7160 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000021 && 0x80000001DD8B7180 == a2;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001ALL && 0x80000001DD8B71B0 == a2;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000016 && 0x80000001DD8B71D0 == a2;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001BLL && 0x80000001DD8B71F0 == a2;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000018 && 0x80000001DD8B7210 == a2;
              if (v11 || (sub_1DD875A30() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD00000000000001ALL && 0x80000001DD8B7230 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_1DD875A30();

                if (v13)
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

unint64_t sub_1DD7E2B28(char a1)
{
  result = 0xD000000000000016;
  switch(a1)
  {
    case 1:
    case 5:
      result = 0xD00000000000001BLL;
      break;
    case 2:
      result = 0xD000000000000021;
      break;
    case 3:
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7E2C10(uint64_t a1)
{
  v2 = sub_1DD805BF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E2C4C(uint64_t a1)
{
  v2 = sub_1DD805BF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E2C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7E28A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7E2CB8(uint64_t a1)
{
  v2 = sub_1DD805AF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E2CF4(uint64_t a1)
{
  v2 = sub_1DD805AF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E2D30(uint64_t a1)
{
  v2 = sub_1DD805B48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E2D6C(uint64_t a1)
{
  v2 = sub_1DD805B48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E2DA8(uint64_t a1)
{
  v2 = sub_1DD805C98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E2DE4(uint64_t a1)
{
  v2 = sub_1DD805C98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E2E20(uint64_t a1)
{
  v2 = sub_1DD805B9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E2E5C(uint64_t a1)
{
  v2 = sub_1DD805B9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E2E98(uint64_t a1)
{
  v2 = sub_1DD805CEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E2ED4(uint64_t a1)
{
  v2 = sub_1DD805CEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E2F10(uint64_t a1)
{
  v2 = sub_1DD805D40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E2F4C(uint64_t a1)
{
  v2 = sub_1DD805D40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E2F88(uint64_t a1)
{
  v2 = sub_1DD805D94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E2FC4(uint64_t a1)
{
  v2 = sub_1DD805D94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E3000(uint64_t a1)
{
  v2 = sub_1DD805C44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E303C(uint64_t a1)
{
  v2 = sub_1DD805C44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PermissionRequirement.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v26 = sub_1DD710A9C(&qword_1ECD12C60, &qword_1DD88A2A0);
  sub_1DD6DDEAC(v26);
  v28 = *(v27 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD82486C(v30, v77);
  v31 = sub_1DD710A9C(&qword_1ECD12C68, &qword_1DD88A2A8);
  sub_1DD6DDEAC(v31);
  v33 = *(v32 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD824A4C(v35, v78);
  v36 = sub_1DD710A9C(&qword_1ECD12C70, &qword_1DD88A2B0);
  sub_1DD6DDEAC(v36);
  v38 = *(v37 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD824C9C(v40, v79);
  v41 = sub_1DD710A9C(&qword_1ECD12C78, &qword_1DD88A2B8);
  sub_1DD6DDEAC(v41);
  v43 = *(v42 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1DD824934(v45, v80);
  v46 = sub_1DD710A9C(&qword_1ECD12C80, &qword_1DD88A2C0);
  sub_1DD6DDEAC(v46);
  v48 = *(v47 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1DD824A38(v50, v81);
  v51 = sub_1DD710A9C(&qword_1ECD12C88, &qword_1DD88A2C8);
  sub_1DD6DDEAC(v51);
  v53 = *(v52 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v54);
  sub_1DD824B94(v55, v82);
  v83 = sub_1DD710A9C(&qword_1ECD12C90, &qword_1DD88A2D0);
  sub_1DD6DDEAC(v83);
  v57 = *(v56 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v58);
  sub_1DD6DEBA0();
  v59 = sub_1DD710A9C(&qword_1ECD12C98, &qword_1DD88A2D8);
  sub_1DD6DDEAC(v59);
  v61 = *(v60 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v62);
  sub_1DD6E9560();
  v84 = sub_1DD710A9C(&qword_1ECD12CA0, &qword_1DD88A2E0);
  sub_1DD6DDEAC(v84);
  v64 = v63;
  v66 = *(v65 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v67);
  sub_1DD6E7258();
  v68 = *v23;
  v69 = *(v25 + 24);
  v70 = *(v25 + 32);
  sub_1DD70066C();
  sub_1DD805AF4();
  sub_1DD7039CC();
  sub_1DD875BB0();
  switch(v68)
  {
    case 1:
      sub_1DD805D40();
      sub_1DD6FF0F0();
      sub_1DD875910();
      v71 = sub_1DD6E5DE8(&a18);
      v73 = v83;
      break;
    case 2:
      sub_1DD805CEC();
      sub_1DD6FF0F0();
      sub_1DD875910();
      goto LABEL_10;
    case 3:
      sub_1DD805C98();
      sub_1DD6FF0F0();
      sub_1DD875910();
      goto LABEL_10;
    case 4:
      sub_1DD805C44();
      sub_1DD6FF0F0();
      sub_1DD875910();
      goto LABEL_10;
    case 5:
      sub_1DD805BF0();
      sub_1DD6FF0F0();
      sub_1DD875910();
      goto LABEL_10;
    case 6:
      sub_1DD82753C();
      sub_1DD805B9C();
      sub_1DD6FF0F0();
      sub_1DD875910();
      goto LABEL_10;
    case 7:
      sub_1DD826E94();
      sub_1DD805B48();
      sub_1DD6FF0F0();
      sub_1DD875910();
LABEL_10:
      v71 = sub_1DD6E61C4();
      break;
    default:
      sub_1DD805D94();
      sub_1DD6FF0F0();
      sub_1DD875910();
      v71 = sub_1DD6FA9F4(&a17);
      v73 = v59;
      break;
  }

  v72(v71, v73);
  v74 = *(v64 + 8);
  v75 = sub_1DD825B84();
  v76(v75);
  sub_1DD6E0C78();
}

void PermissionRequirement.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v21;
  a20 = v22;
  sub_1DD705C5C();
  v101 = v23;
  v24 = sub_1DD710A9C(&qword_1ECD12CF0, &qword_1DD88A2E8);
  sub_1DD6DDEAC(v24);
  v26 = *(v25 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD82480C(v28, v93);
  v29 = sub_1DD710A9C(&qword_1ECD12CF8, &qword_1DD88A2F0);
  sub_1DD6DDEAC(v29);
  v31 = *(v30 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6FF92C(v33, v94);
  v34 = sub_1DD710A9C(&qword_1ECD12D00, &qword_1DD88A2F8);
  sub_1DD6DDEAC(v34);
  v36 = *(v35 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD6E5D10(v38, v95);
  v39 = sub_1DD710A9C(&qword_1ECD12D08, &qword_1DD88A300);
  sub_1DD6DDEAC(v39);
  v41 = *(v40 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1DD824A4C(v43, v96);
  v100 = sub_1DD710A9C(&qword_1ECD12D10, &qword_1DD88A308);
  sub_1DD6DDEAC(v100);
  v45 = *(v44 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v46);
  sub_1DD82495C(v47, v97);
  v48 = sub_1DD710A9C(&qword_1ECD12D18, &qword_1DD88A310);
  sub_1DD6DDEAC(v48);
  v50 = *(v49 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1DD82486C(v52, v98);
  v53 = sub_1DD710A9C(&qword_1ECD12D20, &qword_1DD88A318);
  sub_1DD6DF3FC(v53, &a18);
  v55 = *(v54 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v56);
  sub_1DD6DEA6C();
  v57 = sub_1DD710A9C(&qword_1ECD12D28, &qword_1DD88A320);
  sub_1DD6DDEAC(v57);
  v59 = *(v58 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v60);
  sub_1DD6F0A58();
  v61 = sub_1DD710A9C(&qword_1ECD12D30, &qword_1DD88A328);
  sub_1DD6DDEAC(v61);
  v63 = *(v62 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v64);
  sub_1DD6E9560();
  v65 = v20[3];
  v66 = v20[4];
  sub_1DD824D14(v20);
  sub_1DD805AF4();
  sub_1DD8259BC();
  sub_1DD8274A0();
  sub_1DD875B90();
  if (!v103)
  {
    v67 = sub_1DD875900();
    sub_1DD6ED750(v67, 0);
    if (v69 != v68 >> 1)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v72 == v73)
      {
        __break(1u);
        return;
      }

      v99 = *(v71 + v70);
      sub_1DD6ED830(v70 + 1);
      v75 = v74;
      v77 = v76;
      swift_unknownObjectRelease();
      if (v75 == v77 >> 1)
      {
        switch(v99)
        {
          case 1:
            sub_1DD805D40();
            sub_1DD8256D4(&a15);
            sub_1DD700C9C();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v78 = sub_1DD702E84(&a17);
            v80 = &a18;
            goto LABEL_16;
          case 2:
            sub_1DD805CEC();
            sub_1DD700C9C();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v78 = sub_1DD6E4290();
            break;
          case 3:
            sub_1DD805C98();
            sub_1DD700C9C();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v78 = sub_1DD6DED98();
            v90 = v100;
            break;
          case 4:
            sub_1DD805C44();
            sub_1DD700C9C();
            sub_1DD875800();
            swift_unknownObjectRelease();
            goto LABEL_19;
          case 5:
            sub_1DD805BF0();
            sub_1DD700C9C();
            sub_1DD875800();
            swift_unknownObjectRelease();
            goto LABEL_19;
          case 6:
            sub_1DD82753C();
            sub_1DD805B9C();
            sub_1DD700C9C();
            sub_1DD875800();
            swift_unknownObjectRelease();
            goto LABEL_19;
          case 7:
            sub_1DD826E94();
            sub_1DD805B48();
            sub_1DD700C9C();
            sub_1DD875800();
            swift_unknownObjectRelease();
LABEL_19:
            v78 = sub_1DD6DED98();
            break;
          default:
            sub_1DD805D94();
            sub_1DD8256D4(&a14);
            sub_1DD700C9C();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v78 = sub_1DD702E84(&a16);
            v80 = &a13;
LABEL_16:
            v90 = *(v80 - 32);
            break;
        }

        v79(v78, v90);
        v91 = sub_1DD825158();
        v92(v91);
        v89 = v20;
        *v101 = v99;
        goto LABEL_10;
      }
    }

    sub_1DD875740();
    sub_1DD6E41BC();
    sub_1DD82762C();
    v81 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v102 = &type metadata for PermissionRequirement;
    sub_1DD875810();
    sub_1DD6DF12C();
    v82 = *MEMORY[0x1E69E6AF8];
    sub_1DD824B14();
    v84 = *(v83 + 104);
    v85 = sub_1DD6FEB10();
    v86(v85);
    swift_willThrow();
    swift_unknownObjectRelease();
    v87 = sub_1DD825158();
    v88(v87);
  }

  v89 = v20;
LABEL_10:
  sub_1DD6E1EC8(v89);
  sub_1DD703860();
  sub_1DD6E0C78();
}

uint64_t ActionFailure.failure.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(v1 + 40);
  *(a1 + 40) = v7;
  return sub_1DD804044(v2, v3, v4, v5, v6, v7);
}

void ActionFailure.failure.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_1DD8040A4(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  sub_1DD6FEB38();
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
}

uint64_t ActionFailure.concludesStreamingStatementID.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1DD703958(v2, v3, v4);
}

__n128 ActionFailure.concludesStreamingStatementID.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_i64[0];
  sub_1DD70148C(v1[6], v1[7], v1[8]);
  result = v4;
  *(v1 + 3) = v4;
  v1[8] = v2;
  return result;
}

__n128 ActionFailure.init(failure:concludesStreamingStatementID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1DD826F78(a1, a2);
  v7 = *(v6 + 16);
  v9 = v8[1];
  *a3 = *v8;
  *(a3 + 16) = v9;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  v12 = sub_1DD825640();
  sub_1DD70148C(v12, v13, v14);
  result = v16;
  *(a3 + 48) = v16;
  *(a3 + 64) = v7;
  return result;
}

void static ActionFailure.Failure.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_1DD826DB8();
  a33 = v34;
  a34 = v35;
  v37 = *v36;
  v38 = *(v36 + 8);
  v40 = *(v36 + 16);
  v39 = *(v36 + 24);
  v41 = *(v36 + 32);
  v42 = *(v36 + 40);
  v44 = *v43;
  v45 = v43[1];
  v47 = v43[2];
  v46 = v43[3];
  v48 = v43[4];
  v49 = *(v43 + 40);
  a11 = *v36;
  a12 = v38;
  a13 = v40;
  a14 = v39;
  a15 = v41;
  a16 = v42;
  a17 = v44;
  a18 = v45;
  a19 = v47;
  a20 = v46;
  a21 = v48;
  a22 = v49;
  if (v42)
  {
    if (v42 == 1)
    {
      if (v49 == 1)
      {
        if (v38)
        {
          if (v45)
          {
            if (v37 != v44 || v38 != v45)
            {
              sub_1DD6DED5C();
              sub_1DD702AB4();
              v129 = v51;
              sub_1DD875A30();
              v52 = sub_1DD825378();
              sub_1DD804044(v52, v53, v54, v55, v129, 1);
              v56 = sub_1DD6E80FC();
              sub_1DD804044(v56, v57, v58, v59, v60, 1);
              sub_1DD824154(&a11, &unk_1ECD12D38);
              goto LABEL_171;
            }

            sub_1DD6DED5C();
            sub_1DD7051CC();
            sub_1DD804044(v92, v93, v94, v95, v96, 1);
            v97 = sub_1DD6DED5C();
LABEL_65:
            sub_1DD804044(v97, v98, v40, v39, v41, 1);
            sub_1DD824154(&a11, &unk_1ECD12D38);
            goto LABEL_171;
          }
        }

        else if (!v45)
        {
          sub_1DD7051CC();
          sub_1DD804044(v105, v106, v107, v108, v109, 1);
          v97 = v37;
          v98 = 0;
          goto LABEL_65;
        }

        v77 = sub_1DD825378();
        sub_1DD804044(v77, v78, v79, v80, v81, 1);
        v82 = sub_1DD6E80FC();
        v87 = 1;
LABEL_170:
        sub_1DD804044(v82, v83, v84, v85, v86, v87);
        sub_1DD824154(&a11, &unk_1ECD12D38);
        goto LABEL_171;
      }

      goto LABEL_169;
    }

    if (v40 | v38 | v37 | v39 | v41)
    {
      v74 = v40 | v38 | v39 | v41;
      if (v37 != 1 || v74)
      {
        if (v37 != 2 || v74)
        {
          if (v37 != 3 || v74)
          {
            if (v37 != 4 || v74)
            {
              if (v37 != 5 || v74)
              {
                if (v37 != 6 || v74)
                {
                  if (v37 != 7 || v74)
                  {
                    if (v37 != 8 || v74)
                    {
                      if (v37 != 9 || v74)
                      {
                        if (v37 != 10 || v74)
                        {
                          if (v37 != 11 || v74)
                          {
                            if (v37 != 12 || v74)
                            {
                              if (v37 != 13 || v74)
                              {
                                if (v37 != 14 || v74)
                                {
                                  if (v37 != 15 || v74)
                                  {
                                    if (v37 != 16 || v74)
                                    {
                                      if (v49 != 2 || v44 != 17)
                                      {
                                        goto LABEL_169;
                                      }
                                    }

                                    else if (v49 != 2 || v44 != 16)
                                    {
                                      goto LABEL_169;
                                    }
                                  }

                                  else if (v49 != 2 || v44 != 15)
                                  {
                                    goto LABEL_169;
                                  }
                                }

                                else if (v49 != 2 || v44 != 14)
                                {
                                  goto LABEL_169;
                                }
                              }

                              else if (v49 != 2 || v44 != 13)
                              {
                                goto LABEL_169;
                              }
                            }

                            else if (v49 != 2 || v44 != 12)
                            {
                              goto LABEL_169;
                            }
                          }

                          else if (v49 != 2 || v44 != 11)
                          {
                            goto LABEL_169;
                          }
                        }

                        else if (v49 != 2 || v44 != 10)
                        {
                          goto LABEL_169;
                        }
                      }

                      else if (v49 != 2 || v44 != 9)
                      {
                        goto LABEL_169;
                      }
                    }

                    else if (v49 != 2 || v44 != 8)
                    {
                      goto LABEL_169;
                    }
                  }

                  else if (v49 != 2 || v44 != 7)
                  {
                    goto LABEL_169;
                  }
                }

                else if (v49 != 2 || v44 != 6)
                {
                  goto LABEL_169;
                }
              }

              else if (v49 != 2 || v44 != 5)
              {
                goto LABEL_169;
              }
            }

            else if (v49 != 2 || v44 != 4)
            {
              goto LABEL_169;
            }
          }

          else if (v49 != 2 || v44 != 3)
          {
            goto LABEL_169;
          }
        }

        else if (v49 != 2 || v44 != 2)
        {
          goto LABEL_169;
        }
      }

      else if (v49 != 2 || v44 != 1)
      {
        goto LABEL_169;
      }

      if (v47 | v45 | v46 | v48)
      {
LABEL_169:
        v123 = sub_1DD825378();
        sub_1DD804044(v123, v124, v125, v126, v127, v128);
        v82 = sub_1DD6E80FC();
        v87 = v42;
        goto LABEL_170;
      }
    }

    else if (v49 != 2 || v47 | v45 | v44 | v46 | v48)
    {
      goto LABEL_169;
    }

    sub_1DD824154(&a11, &unk_1ECD12D38);
    goto LABEL_171;
  }

  if (v49)
  {
    goto LABEL_169;
  }

  if (v37 != v44 || v38 != v45)
  {
    sub_1DD6DED5C();
    sub_1DD702AB4();
    if ((sub_1DD875A30() & 1) == 0)
    {
      v99 = sub_1DD825378();
      sub_1DD804044(v99, v100, v101, v102, v103, 0);
      v82 = sub_1DD6E80FC();
      v87 = 0;
      goto LABEL_170;
    }
  }

  if (v40 == v47 && v39 == v46)
  {
    v89 = sub_1DD6F9BF8();
    sub_1DD804044(v89, v90, v40, v39, v91, 0);
  }

  else
  {
    sub_1DD6E87AC();
    sub_1DD7051CC();
    v64 = v63;
    sub_1DD875A30();
    v65 = sub_1DD825378();
    sub_1DD804044(v65, v66, v67, v68, v64, 0);
  }

  v69 = sub_1DD6E80FC();
  sub_1DD804044(v69, v70, v71, v72, v73, 0);
  sub_1DD824154(&a11, &unk_1ECD12D38);
LABEL_171:
  sub_1DD826D9C();
}

BOOL static ActionFailure.DeveloperDefinedError.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v1 == *v2 && v3[1] == v2[1];
  if (v10 || (sub_1DD875A30()) && (v4 == v7 ? (v11 = v5 == v8) : (v11 = 0), v11 || (sub_1DD6E8090(), (sub_1DD875A30())))
  {
    return v6 == v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD7E45AC(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1DD875A30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1DD7E4608(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001DD8B7250 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000017 && 0x80000001DD8B7270 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001DD8B7290 == a2;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6173694469666977 && a2 == 0xEC00000064656C62;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x80000001DD8B72B0 == a2;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x466B726F7774656ELL && a2 == 0xEE006572756C6961;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x466C616974726170 && a2 == 0xEE006572756C6961;
              if (v11 || (sub_1DD875A30() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000013 && 0x80000001DD8B72D0 == a2;
                if (v12 || (sub_1DD875A30() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001ALL && 0x80000001DD8B72F0 == a2;
                  if (v13 || (sub_1DD875A30() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6F4E797469746E65 && a2 == 0xEE00646E756F4674;
                    if (v14 || (sub_1DD875A30() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x80000001DD8B7310 == a2;
                      if (v15 || (sub_1DD875A30() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001BLL && 0x80000001DD8B7330 == a2;
                        if (v16 || (sub_1DD875A30() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x69686374614D6F6ELL && a2 == 0xEE006C6F6F54676ELL;
                          if (v17 || (sub_1DD875A30() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6F54656C62616E75 && a2 == 0xEC0000006F646E55;
                            if (v18 || (sub_1DD875A30() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x61436E6F69746361 && a2 == 0xEE0064656C65636ELL;
                              if (v19 || (sub_1DD875A30() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000015 && 0x80000001DD8B7350 == a2;
                                if (v20 || (sub_1DD875A30() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6F54656C62616E75 && a2 == 0xEE006C65636E6143;
                                  if (v21 || (sub_1DD875A30() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD00000000000001DLL && 0x80000001DD8B7370 == a2;
                                    if (v22 || (sub_1DD875A30() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000016 && 0x80000001DD8B7390 == a2;
                                      if (v23 || (sub_1DD875A30() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else if (a1 == 0xD000000000000015 && 0x80000001DD8B73B0 == a2)
                                      {

                                        return 19;
                                      }

                                      else
                                      {
                                        v25 = sub_1DD875A30();

                                        if (v25)
                                        {
                                          return 19;
                                        }

                                        else
                                        {
                                          return 20;
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
        }
      }
    }
  }
}

unint64_t sub_1DD7E4C08(char a1)
{
  result = 0x6173694469666977;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
    case 10:
      result = 0xD000000000000010;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x466B726F7774656ELL;
      break;
    case 6:
      result = 0x466C616974726170;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0x6F4E797469746E65;
      break;
    case 11:
      result = 0xD00000000000001BLL;
      break;
    case 12:
      result = 0x69686374614D6F6ELL;
      break;
    case 13:
    case 16:
      result = 0x6F54656C62616E75;
      break;
    case 14:
      result = 0x61436E6F69746361;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 17:
      result = 0xD00000000000001DLL;
      break;
    case 18:
      result = 0xD000000000000016;
      break;
    case 19:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_1DD7E4E74(uint64_t a1)
{
  v2 = sub_1DD806088();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E4EB0(uint64_t a1)
{
  v2 = sub_1DD806088();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E4EEC(uint64_t a1)
{
  v2 = sub_1DD8061D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E4F28(uint64_t a1)
{
  v2 = sub_1DD8061D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E4F64(uint64_t a1)
{
  v2 = sub_1DD8063D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E4FA0(uint64_t a1)
{
  v2 = sub_1DD8063D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E4FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7E4608(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7E500C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD7E4C00();
  *a1 = result;
  return result;
}

uint64_t sub_1DD7E5034(uint64_t a1)
{
  v2 = sub_1DD805DE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E5070(uint64_t a1)
{
  v2 = sub_1DD805DE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E50AC(uint64_t a1)
{
  v2 = sub_1DD805FE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E50E8(uint64_t a1)
{
  v2 = sub_1DD805FE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E5124(uint64_t a1)
{
  v2 = sub_1DD80622C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E5160(uint64_t a1)
{
  v2 = sub_1DD80622C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E519C(uint64_t a1)
{
  v2 = sub_1DD806280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E51D8(uint64_t a1)
{
  v2 = sub_1DD806280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E5214(uint64_t a1)
{
  v2 = sub_1DD806478();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E5250(uint64_t a1)
{
  v2 = sub_1DD806478();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E528C(uint64_t a1)
{
  v2 = sub_1DD80637C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E52C8(uint64_t a1)
{
  v2 = sub_1DD80637C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E5304(uint64_t a1)
{
  v2 = sub_1DD806130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E5340(uint64_t a1)
{
  v2 = sub_1DD806130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E537C(uint64_t a1)
{
  v2 = sub_1DD806328();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E53B8(uint64_t a1)
{
  v2 = sub_1DD806328();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E53F4(uint64_t a1)
{
  v2 = sub_1DD8064CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E5430(uint64_t a1)
{
  v2 = sub_1DD8064CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E546C(uint64_t a1)
{
  v2 = sub_1DD806520();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E54A8(uint64_t a1)
{
  v2 = sub_1DD806520();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E54E4(uint64_t a1)
{
  v2 = sub_1DD805F38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E5520(uint64_t a1)
{
  v2 = sub_1DD805F38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E555C(uint64_t a1)
{
  v2 = sub_1DD805F8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E5598(uint64_t a1)
{
  v2 = sub_1DD805F8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E55D4(uint64_t a1)
{
  v2 = sub_1DD805E3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E5610(uint64_t a1)
{
  v2 = sub_1DD805E3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E564C(uint64_t a1)
{
  v2 = sub_1DD8060DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E5688(uint64_t a1)
{
  v2 = sub_1DD8060DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E56C4(uint64_t a1)
{
  v2 = sub_1DD8062D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E5700(uint64_t a1)
{
  v2 = sub_1DD8062D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E573C(uint64_t a1)
{
  v2 = sub_1DD806184();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E5778(uint64_t a1)
{
  v2 = sub_1DD806184();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E57B4(uint64_t a1)
{
  v2 = sub_1DD805EE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E57F0(uint64_t a1)
{
  v2 = sub_1DD805EE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E582C(uint64_t a1)
{
  v2 = sub_1DD806424();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E5868(uint64_t a1)
{
  v2 = sub_1DD806424();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionFailure.Failure.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = sub_1DD710A9C(&qword_1ECD12D40, &qword_1DD88A338);
  v27 = sub_1DD6DDEAC(v26);
  v211 = v28;
  v212 = v27;
  v30 = *(v29 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD824FD8(v32, v172);
  v33 = sub_1DD710A9C(&qword_1ECD12D48, &qword_1DD88A340);
  sub_1DD6DF3FC(v33, &v191);
  v176 = v34;
  v36 = *(v35 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v38);
  v39 = sub_1DD710A9C(&qword_1ECD12D50, &qword_1DD88A348);
  sub_1DD6DF3FC(v39, &v188);
  v41 = *(v40 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v43);
  v44 = sub_1DD710A9C(&qword_1ECD12D58, &qword_1DD88A350);
  sub_1DD6DF3FC(v44, &v194);
  v177 = v45;
  v47 = *(v46 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v49);
  v50 = sub_1DD710A9C(&qword_1ECD12D60, &qword_1DD88A358);
  v51 = sub_1DD6DDEAC(v50);
  v208 = v52;
  v209 = v51;
  v54 = *(v53 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v55);
  sub_1DD824FEC(v56, v173);
  v57 = sub_1DD710A9C(&qword_1ECD12D68, &qword_1DD88A360);
  sub_1DD6DF3FC(v57, &v197);
  v178 = v58;
  v60 = *(v59 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v61);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v62);
  v63 = sub_1DD710A9C(&qword_1ECD12D70, &qword_1DD88A368);
  sub_1DD6DF3FC(v63, &v200);
  v179 = v64;
  v66 = *(v65 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v67);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v68);
  v69 = sub_1DD710A9C(&qword_1ECD12D78, &qword_1DD88A370);
  sub_1DD6DF3FC(v69, &v203);
  v180 = v70;
  v72 = *(v71 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v73);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v74);
  v75 = sub_1DD710A9C(&qword_1ECD12D80, &qword_1DD88A378);
  sub_1DD6DF3FC(v75, &v206);
  v181 = v76;
  v78 = *(v77 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v79);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v80);
  v81 = sub_1DD710A9C(&qword_1ECD12D88, &qword_1DD88A380);
  sub_1DD6DF3FC(v81, &v209);
  v182 = v82;
  v84 = *(v83 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v85);
  sub_1DD8253A0(v86);
  v87 = sub_1DD710A9C(&qword_1ECD12D90, &qword_1DD88A388);
  sub_1DD6DF3FC(v87, &v212);
  v183 = v88;
  v90 = *(v89 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v91);
  sub_1DD8253E0(v92, v174);
  v93 = sub_1DD710A9C(&qword_1ECD12D98, &qword_1DD88A390);
  sub_1DD6DF3FC(v93, &v215);
  v184 = v94;
  v96 = *(v95 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v97);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v98);
  v99 = sub_1DD710A9C(&qword_1ECD12DA0, &qword_1DD88A398);
  sub_1DD6DF3FC(v99, &v218);
  v185 = v100;
  v102 = *(v101 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v103);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v104);
  v105 = sub_1DD710A9C(&qword_1ECD12DA8, &qword_1DD88A3A0);
  sub_1DD6DF3FC(v105, &v221);
  v188 = v106;
  v108 = *(v107 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v109);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v110);
  v111 = sub_1DD710A9C(&qword_1ECD12DB0, &qword_1DD88A3A8);
  sub_1DD6DF3FC(v111, &a9);
  v191 = v112;
  v114 = *(v113 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v115);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v116);
  v117 = sub_1DD710A9C(&qword_1ECD12DB8, &qword_1DD88A3B0);
  sub_1DD6DF3FC(v117, &a12);
  v194 = v118;
  v120 = *(v119 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v121);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v122);
  v123 = sub_1DD710A9C(&qword_1ECD12DC0, &qword_1DD88A3B8);
  sub_1DD6DF3FC(v123, &a15);
  v197 = v124;
  v126 = *(v125 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v127);
  sub_1DD824FB0(v128);
  v129 = sub_1DD710A9C(&qword_1ECD12DC8, &qword_1DD88A3C0);
  sub_1DD6DF3FC(v129, &a18);
  v200 = v130;
  v132 = *(v131 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v133);
  sub_1DD825480(v134, v175);
  v135 = sub_1DD710A9C(&qword_1ECD12DD0, &qword_1DD88A3C8);
  v136 = sub_1DD6DDEAC(v135);
  v203 = v137;
  v204 = v136;
  v139 = *(v138 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v140);
  sub_1DD6E0C6C();
  sub_1DD826F24(v141);
  v142 = sub_1DD710A9C(&qword_1ECD12DD8, &qword_1DD88A3D0);
  v143 = sub_1DD6DDEAC(v142);
  v205 = v144;
  v206 = v143;
  v146 = *(v145 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v147);
  sub_1DD6DEA6C();
  v148 = sub_1DD710A9C(&qword_1ECD12DE0, &qword_1DD88A3D8);
  v215 = sub_1DD6DDEAC(v148);
  v216 = v149;
  v151 = *(v150 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v152);
  sub_1DD6DDFE4();
  v153 = v20[1];
  a10 = *v20;
  v154 = v20[3];
  v213 = v20[2];
  v155 = v20[4];
  v156 = *(v20 + 40);
  v157 = v25;
  v159 = v25[3];
  v158 = v25[4];
  sub_1DD6E6C94(v157);
  sub_1DD805DE8();
  v214 = v21;
  sub_1DD77E6F4();
  sub_1DD875BB0();
  if (!v156)
  {
    LOBYTE(v218) = 15;
    sub_1DD805FE0();
    sub_1DD824AB4();
    sub_1DD875910();
    v218 = a10;
    v219 = v153;
    v220 = v213;
    v221 = v154;
    v222 = v155;
    sub_1DD806034();
    sub_1DD825AB4();
    sub_1DD8759D0();
    goto LABEL_5;
  }

  if (v156 != 1)
  {
    if (v213 | v153 | a10 | v154 | v155)
    {
      v164 = v213 | v153 | v154 | v155;
      if (a10 != 1 || v164)
      {
        if (a10 != 2 || v164)
        {
          if (a10 != 3 || v164)
          {
            if (a10 != 4 || v164)
            {
              if (a10 != 5 || v164)
              {
                if (a10 != 6 || v164)
                {
                  if (a10 != 7 || v164)
                  {
                    if (a10 != 8 || v164)
                    {
                      if (a10 != 9 || v164)
                      {
                        if (a10 != 10 || v164)
                        {
                          if (a10 != 11 || v164)
                          {
                            if (a10 != 12 || v164)
                            {
                              if (a10 != 13 || v164)
                              {
                                if (a10 != 14 || v164)
                                {
                                  if (a10 != 15 || v164)
                                  {
                                    if (a10 != 16 || v164)
                                    {
                                      LOBYTE(v218) = 18;
                                      sub_1DD805EE4();
                                      sub_1DD705200(&v189);
                                      v165 = sub_1DD702E84(&v190);
                                      v168 = &v191;
                                    }

                                    else
                                    {
                                      LOBYTE(v218) = 17;
                                      sub_1DD805F38();
                                      sub_1DD705200(&v186);
                                      v165 = sub_1DD702E84(&v187);
                                      v168 = &v188;
                                    }
                                  }

                                  else
                                  {
                                    LOBYTE(v218) = 16;
                                    sub_1DD805F8C();
                                    sub_1DD705200(&v192);
                                    v165 = sub_1DD702E84(&v193);
                                    v168 = &v194;
                                  }
                                }

                                else
                                {
                                  LOBYTE(v218) = 14;
                                  sub_1DD806088();
                                  sub_1DD705200(&v195);
                                  v165 = sub_1DD702E84(&v196);
                                  v168 = &v197;
                                }
                              }

                              else
                              {
                                LOBYTE(v218) = 13;
                                sub_1DD8060DC();
                                sub_1DD705200(&v198);
                                v165 = sub_1DD702E84(&v199);
                                v168 = &v200;
                              }
                            }

                            else
                            {
                              LOBYTE(v218) = 12;
                              sub_1DD806130();
                              sub_1DD705200(&v201);
                              v165 = sub_1DD702E84(&v202);
                              v168 = &v203;
                            }
                          }

                          else
                          {
                            LOBYTE(v218) = 11;
                            sub_1DD806184();
                            sub_1DD705200(&v204);
                            v165 = sub_1DD702E84(&v205);
                            v168 = &v206;
                          }
                        }

                        else
                        {
                          LOBYTE(v218) = 10;
                          sub_1DD8061D8();
                          sub_1DD705200(&v207);
                          v165 = sub_1DD702E84(&v208);
                          v168 = &v209;
                        }
                      }

                      else
                      {
                        LOBYTE(v218) = 9;
                        sub_1DD80622C();
                        sub_1DD705200(&v210);
                        v165 = sub_1DD702E84(&v211);
                        v168 = &v212;
                      }
                    }

                    else
                    {
                      LOBYTE(v218) = 8;
                      sub_1DD806280();
                      sub_1DD705200(&v213);
                      v165 = sub_1DD702E84(&v214);
                      v168 = &v215;
                    }
                  }

                  else
                  {
                    LOBYTE(v218) = 7;
                    sub_1DD8062D4();
                    sub_1DD705200(&v216);
                    v165 = sub_1DD702E84(&v217);
                    v168 = &v218;
                  }
                }

                else
                {
                  LOBYTE(v218) = 6;
                  sub_1DD806328();
                  sub_1DD705200(&v219);
                  v165 = sub_1DD702E84(&v220);
                  v168 = &v221;
                }
              }

              else
              {
                LOBYTE(v218) = 5;
                sub_1DD80637C();
                sub_1DD705200(&v222);
                v165 = sub_1DD702E84(&v223);
                v168 = &a9;
              }
            }

            else
            {
              LOBYTE(v218) = 4;
              sub_1DD8063D0();
              sub_1DD705200(&a10);
              v165 = sub_1DD702E84(&a11);
              v168 = &a12;
            }
          }

          else
          {
            LOBYTE(v218) = 3;
            sub_1DD806424();
            sub_1DD705200(&a13);
            v165 = sub_1DD702E84(&a14);
            v168 = &a15;
          }
        }

        else
        {
          LOBYTE(v218) = 2;
          sub_1DD806478();
          sub_1DD705200(&a16);
          v165 = sub_1DD702E84(&a17);
          v168 = &a18;
        }

        v166 = *(v168 - 32);
        goto LABEL_59;
      }

      LOBYTE(v218) = 1;
      sub_1DD8064CC();
      sub_1DD824E08();
    }

    else
    {
      LOBYTE(v218) = 0;
      sub_1DD806520();
      sub_1DD824E08();
    }

    v165 = sub_1DD6DED98();
LABEL_59:
    v167(v165, v166);
    v169 = *(v216 + 8);
    v170 = sub_1DD6E21D0();
    v171(v170);
    goto LABEL_60;
  }

  LOBYTE(v218) = 19;
  sub_1DD805E3C();
  sub_1DD824AB4();
  sub_1DD875910();
  v218 = a10;
  v219 = v153;
  sub_1DD805E90();
  sub_1DD825AB4();
  sub_1DD8759D0();
LABEL_5:
  v160 = sub_1DD824838();
  v161(v160);
  v162 = sub_1DD824A60();
  v163(v162);
LABEL_60:
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void ActionFailure.Failure.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v22;
  a20 = v23;
  sub_1DD7038A0();
  v294 = v24;
  v25 = sub_1DD710A9C(&qword_1ECD12EA0, &qword_1DD88A3E0);
  sub_1DD6DF3FC(v25, &a14);
  v277 = v26;
  v28 = *(v27 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD824C9C(v30, v253);
  v31 = sub_1DD710A9C(&qword_1ECD12EA8, &qword_1DD88A3E8);
  sub_1DD6DF3FC(v31, &a12);
  v275 = v32;
  v34 = *(v33 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD824948(v36, v254);
  v37 = sub_1DD710A9C(&qword_1ECD12EB0, &qword_1DD88A3F0);
  sub_1DD6DF3FC(v37, &a10);
  v273 = v38;
  v40 = *(v39 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1DD824FD8(v42, v255);
  v43 = sub_1DD710A9C(&qword_1ECD12EB8, &qword_1DD88A3F8);
  sub_1DD6DF3FC(v43, &v302);
  v270 = v44;
  v46 = *(v45 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1DD824CB0(v48, v256);
  v49 = sub_1DD710A9C(&qword_1ECD12EC0, &qword_1DD88A400);
  sub_1DD6DF3FC(v49, &v304);
  v271[1] = v50;
  v52 = *(v51 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1DD824934(v54, v257);
  v55 = sub_1DD710A9C(&qword_1ECD12EC8, &qword_1DD88A408);
  sub_1DD6DF3FC(v55, &v300);
  v57 = *(v56 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v58);
  sub_1DD824FEC(v59, v258);
  v60 = sub_1DD710A9C(&qword_1ECD12ED0, &qword_1DD88A410);
  sub_1DD6DF3FC(v60, &v298);
  v62 = *(v61 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v63);
  sub_1DD824A38(v64, v259);
  v65 = sub_1DD710A9C(&qword_1ECD12ED8, &qword_1DD88A418);
  sub_1DD6DF3FC(v65, &v296);
  v67 = *(v66 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v68);
  sub_1DD82546C(v69, v260);
  v70 = sub_1DD710A9C(&qword_1ECD12EE0, &qword_1DD88A420);
  sub_1DD6DF3FC(v70, &v294);
  v72 = *(v71 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v73);
  sub_1DD825428(v74, v261);
  v75 = sub_1DD710A9C(&qword_1ECD12EE8, &qword_1DD88A428);
  sub_1DD6DF3FC(v75, &v292);
  v77 = *(v76 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v78);
  sub_1DD824B94(v79, v262);
  v80 = sub_1DD710A9C(&qword_1ECD12EF0, &qword_1DD88A430);
  sub_1DD6DF3FC(v80, &v290);
  v82 = *(v81 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v83);
  sub_1DD6E0C6C();
  sub_1DD826F24(v84);
  v85 = sub_1DD710A9C(&qword_1ECD12EF8, &qword_1DD88A438);
  sub_1DD6DF3FC(v85, &v287);
  v87 = *(v86 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v88);
  sub_1DD825480(v89, v263);
  v90 = sub_1DD710A9C(&qword_1ECD12F00, &qword_1DD88A440);
  sub_1DD6DF3FC(v90, &v285);
  v92 = *(v91 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v93);
  sub_1DD6FF92C(v94, v264);
  v95 = sub_1DD710A9C(&qword_1ECD12F08, &qword_1DD88A448);
  sub_1DD6DF3FC(v95, &v284);
  v97 = *(v96 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v98);
  sub_1DD824A4C(v99, v265);
  v100 = sub_1DD710A9C(&qword_1ECD12F10, &qword_1DD88A450);
  sub_1DD6DF3FC(v100, &v282);
  v102 = *(v101 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v103);
  sub_1DD825410(v104, v266);
  v105 = sub_1DD710A9C(&qword_1ECD12F18, &qword_1DD88A458);
  sub_1DD6DF3FC(v105, &v280);
  v107 = *(v106 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v108);
  sub_1DD8249DC(v109, v267);
  v110 = sub_1DD710A9C(&qword_1ECD12F20, &qword_1DD88A460);
  sub_1DD6DF3FC(v110, &v278);
  v112 = *(v111 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v113);
  sub_1DD82495C(v114, v268);
  v115 = sub_1DD710A9C(&qword_1ECD12F28, &qword_1DD88A468);
  sub_1DD6DF3FC(v115, &v276);
  v117 = *(v116 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v118);
  sub_1DD705DF0(v119, v269);
  v120 = sub_1DD710A9C(&qword_1ECD12F30, &qword_1DD88A470);
  sub_1DD6DF3FC(v120, &v274);
  v122 = *(v121 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v123);
  sub_1DD6F0A58();
  v124 = sub_1DD710A9C(&qword_1ECD12F38, &qword_1DD88A478);
  sub_1DD6DDEAC(v124);
  v126 = *(v125 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v127);
  sub_1DD6DEA6C();
  v128 = sub_1DD710A9C(&qword_1ECD12F40, &qword_1DD88A480);
  sub_1DD6E125C(v128);
  v130 = v129;
  v132 = *(v131 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v133);
  sub_1DD6DEBA0();
  v134 = v20[3];
  v135 = v20[4];
  v298 = v20;
  sub_1DD6E1C64();
  sub_1DD805DE8();
  sub_1DD6E4218();
  v136 = a10;
  sub_1DD875B90();
  if (!v136)
  {
    v137 = v296;
    a10 = v21;
    v138 = sub_1DD875900();
    sub_1DD6ED750(v138, 0);
    sub_1DD827758();
    if (v139)
    {
      v140 = v130;
    }

    else
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v141 == v142)
      {
        __break(1u);
        return;
      }

      v149 = *(v148 + v147);
      v150 = sub_1DD826C40(v143, v144, v145, v146, v147);
      sub_1DD6ED830(v150);
      v152 = v151;
      v154 = v153;
      swift_unknownObjectRelease();
      if (v152 == v154 >> 1)
      {
        v155 = v294;
        switch(v149)
        {
          case 1:
            LOBYTE(v299) = 1;
            sub_1DD8064CC();
            sub_1DD8256D4(v271);
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v212 = sub_1DD702E84(&v273);
            v213(v212);
            v214 = sub_1DD6EE278();
            v215(v214);
            sub_1DD6E388C();
            v164 = 1;
            break;
          case 2:
            LOBYTE(v299) = 2;
            sub_1DD806478();
            sub_1DD8256D4(&a15);
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v200 = sub_1DD702E84(&v275);
            v201(v200);
            v202 = sub_1DD6EE278();
            v203(v202);
            sub_1DD6EFFA0();
            v164 = 2;
            goto LABEL_21;
          case 3:
            LOBYTE(v299) = 3;
            sub_1DD806424();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v204 = sub_1DD824BFC(&v277);
            v205(v204);
            v206 = sub_1DD6EE278();
            v207(v206);
            sub_1DD6E388C();
            v164 = 3;
            break;
          case 4:
            LOBYTE(v299) = 4;
            sub_1DD8063D0();
            sub_1DD8256D4(&a17);
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v188 = sub_1DD702E84(&v279);
            v189(v188);
            v190 = sub_1DD6EE278();
            v191(v190);
            sub_1DD6E388C();
            v164 = 4;
            break;
          case 5:
            LOBYTE(v299) = 5;
            sub_1DD80637C();
            sub_1DD8256D4(&a18);
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v220 = sub_1DD702E84(&v281);
            v221(v220);
            v222 = sub_1DD6EE278();
            v223(v222);
            sub_1DD6E388C();
            v164 = 5;
            break;
          case 6:
            LOBYTE(v299) = 6;
            sub_1DD806328();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v228 = sub_1DD702E84(&v283);
            v229(v228);
            v230 = sub_1DD6EE278();
            v231(v230);
            sub_1DD6E388C();
            v164 = 6;
            break;
          case 7:
            LOBYTE(v299) = 7;
            sub_1DD8062D4();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v208 = sub_1DD6FA9F4(&v286);
            v209(v208);
            v210 = sub_1DD6EE278();
            v211(v210);
            sub_1DD6E388C();
            v164 = 7;
            break;
          case 8:
            LOBYTE(v299) = 8;
            sub_1DD806280();
            sub_1DD8256D4(&a16);
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v240 = sub_1DD702E84(&v288);
            v241(v240);
            v242 = sub_1DD6EE278();
            v243(v242);
            sub_1DD6E388C();
            v164 = 8;
            break;
          case 9:
            LOBYTE(v299) = 9;
            sub_1DD80622C();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v196 = sub_1DD702E84(&v289);
            v197(v196);
            v198 = sub_1DD6EE278();
            v199(v198);
            sub_1DD6E388C();
            v164 = 9;
            break;
          case 10:
            LOBYTE(v299) = 10;
            sub_1DD8061D8();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v236 = sub_1DD702E84(&v291);
            v237(v236);
            v238 = sub_1DD6EE278();
            v239(v238);
            sub_1DD6E388C();
            v164 = 10;
            break;
          case 11:
            LOBYTE(v299) = 11;
            sub_1DD806184();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v184 = sub_1DD702E84(&v293);
            v185(v184);
            v186 = sub_1DD6EE278();
            v187(v186);
            sub_1DD6E388C();
            v164 = 11;
            break;
          case 12:
            LOBYTE(v299) = 12;
            sub_1DD806130();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v192 = sub_1DD702E84(&v295);
            v193(v192);
            v194 = sub_1DD6EE278();
            v195(v194);
            sub_1DD6E388C();
            v164 = 12;
            break;
          case 13:
            LOBYTE(v299) = 13;
            sub_1DD8060DC();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v224 = sub_1DD702E84(&v297);
            v225(v224);
            v226 = sub_1DD6EE278();
            v227(v226);
            sub_1DD6E388C();
            v164 = 13;
            break;
          case 14:
            LOBYTE(v299) = 14;
            sub_1DD806088();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v180 = sub_1DD702E84(&v299);
            v181(v180);
            v182 = sub_1DD6EE278();
            v183(v182);
            sub_1DD6E388C();
            v164 = 14;
            break;
          case 15:
            LOBYTE(v299) = 15;
            sub_1DD805FE0();
            sub_1DD8272DC();
            sub_1DD6FA420();
            sub_1DD875800();
            sub_1DD8065C8();
            sub_1DD6F3128();
            sub_1DD8268C0();
            sub_1DD8758D0();
            sub_1DD827038();
            swift_unknownObjectRelease();
            v245 = sub_1DD824BFC(&v303);
            v246(v245, v272);
            v247 = sub_1DD6EE278();
            v248(v247);
            v179 = 0;
            v164 = v299;
            v160 = v300;
            v161 = v301;
            v162 = v302;
            v163 = v303;
            break;
          case 16:
            LOBYTE(v299) = 16;
            sub_1DD805F8C();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v175 = sub_1DD702E84(&v301);
            v176(v175, v271[0]);
            v177 = sub_1DD6EE278();
            v178(v177);
            sub_1DD6E388C();
            v164 = 15;
            break;
          case 17:
            LOBYTE(v299) = 17;
            sub_1DD805F38();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v216 = sub_1DD702E84(&a9);
            v217(v216, v274);
            v218 = sub_1DD6EE278();
            v219(v218);
            sub_1DD6E388C();
            v164 = 16;
            break;
          case 18:
            LOBYTE(v299) = 18;
            sub_1DD805EE4();
            sub_1DD827458();
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v232 = sub_1DD702E84(&a11);
            v233(v232, v276);
            v234 = sub_1DD6EE278();
            v235(v234);
            sub_1DD6E388C();
            v164 = 17;
            break;
          case 19:
            LOBYTE(v299) = 19;
            sub_1DD805E3C();
            sub_1DD6FA420();
            sub_1DD875800();
            sub_1DD806574();
            v244 = v278;
            sub_1DD6F3128();
            sub_1DD8268C0();
            sub_1DD8758D0();
            sub_1DD827038();
            swift_unknownObjectRelease();
            v249 = sub_1DD824BFC(&a13);
            v250(v249, v244);
            v251 = sub_1DD6EE278();
            v252(v251);
            v161 = 0;
            v162 = 0;
            v163 = 0;
            v164 = v299;
            v160 = v300;
            v179 = 1;
            break;
          default:
            LOBYTE(v299) = 0;
            sub_1DD806520();
            sub_1DD8256D4(&v270);
            sub_1DD6FA420();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v156 = sub_1DD702E84(&v272);
            v157(v156, v124);
            v158 = sub_1DD6EE278();
            v159(v158);
            sub_1DD6EFFA0();
LABEL_21:
            v179 = 2;
            break;
        }

        v174 = v298;
        *v155 = v164;
        *(v155 + 8) = v160;
        *(v155 + 16) = v161;
        *(v155 + 24) = v162;
        *(v155 + 32) = v163;
        *(v155 + 40) = v179;
        goto LABEL_13;
      }

      v140 = v130;
    }

    sub_1DD875740();
    sub_1DD6E41BC();
    sub_1DD82762C();
    v165 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v137 = &type metadata for ActionFailure.Failure;
    sub_1DD875810();
    sub_1DD6DF12C();
    v166 = *MEMORY[0x1E69E6AF8];
    sub_1DD824B14();
    v168 = *(v167 + 104);
    v169 = sub_1DD6FEB10();
    v170(v169);
    swift_willThrow();
    swift_unknownObjectRelease();
    v171 = *(v140 + 8);
    v172 = sub_1DD6ED180();
    v173(v172);
  }

  v174 = v298;
LABEL_13:
  sub_1DD6E1EC8(v174);
  sub_1DD703860();
  sub_1DD6E0C78();
}

uint64_t ActionFailure.UnableToHandleRequest.rewrittenUtterance.setter()
{
  sub_1DD6DE304();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

IntelligenceFlow::ActionFailure::UnableToHandleRequest __swiftcall ActionFailure.UnableToHandleRequest.init(rewrittenUtterance:)(Swift::String_optional rewrittenUtterance)
{
  sub_1DD8250F8();

  *v3 = v2;
  v3[1] = v1;
  result.rewrittenUtterance.value._object = v5;
  result.rewrittenUtterance.value._countAndFlagsBits = v4;
  return result;
}

uint64_t sub_1DD7E7DF8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001DD8B73D0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7E7E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7E7DF8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7E7EC4(uint64_t a1)
{
  v2 = sub_1DD80661C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E7F00(uint64_t a1)
{
  v2 = sub_1DD80661C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionFailure.UnableToHandleRequest.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  v0 = sub_1DD710A9C(&qword_1ECD12F58, &qword_1DD88A488);
  sub_1DD6E125C(v0);
  v2 = *(v1 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD80661C();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875920();
  v4 = sub_1DD6FF808();
  v5(v4);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void sub_1DD7E8050()
{
  sub_1DD6DED2C();
  v3 = v2;
  sub_1DD825A04();
  v24 = v4;
  v7 = sub_1DD825C68(v5, v6);
  v9 = sub_1DD710A9C(v7, v8);
  sub_1DD6E125C(v9);
  v23 = v10;
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DEBA0();
  v14 = v0[3];
  v15 = v0[4];
  v16 = sub_1DD6E7320(v0);
  v3(v16);
  sub_1DD825680();
  sub_1DD875B90();
  if (!v1)
  {
    sub_1DD6FAC28();
    v17 = sub_1DD875820();
    v19 = v18;
    v20 = *(v23 + 8);
    v21 = sub_1DD6DDEDC();
    v22(v21);
    *v24 = v17;
    v24[1] = v19;
  }

  sub_1DD6E1EC8(v0);
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t ActionFailure.DeveloperDefinedError.localizedString.setter()
{
  sub_1DD6DE304();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ActionFailure.DeveloperDefinedError.domain.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_1DD7E82C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657A696C61636F6CLL && a2 == 0xEF676E6972745364;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701080931 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD7E83D8(char a1)
{
  if (!a1)
  {
    return 0x657A696C61636F6CLL;
  }

  if (a1 == 1)
  {
    return 0x6E69616D6F64;
  }

  return 1701080931;
}

uint64_t sub_1DD7E8438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7E82C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7E8460(uint64_t a1)
{
  v2 = sub_1DD806670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E849C(uint64_t a1)
{
  v2 = sub_1DD806670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionFailure.DeveloperDefinedError.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD826F30();
  v2 = sub_1DD710A9C(&qword_1ECD12F70, &qword_1DD88A498);
  sub_1DD6DDEAC(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DEA6C();
  v7 = *v0;
  v6 = v0[1];
  v13 = v0[3];
  v14 = v0[2];
  v12 = v0[4];
  v8 = v1[3];
  v9 = v1[4];
  sub_1DD6E49C0(v1);
  sub_1DD806670();
  sub_1DD6E1808();
  sub_1DD705FD8();
  sub_1DD705C50();
  sub_1DD825CC8();
  sub_1DD875970();
  if (!v15)
  {
    sub_1DD8250C8();
    sub_1DD6E0E40();
    sub_1DD875970();
    sub_1DD6E0FF8();
    sub_1DD705E14();
    sub_1DD8759B0();
  }

  v10 = sub_1DD6EEDBC();
  v11(v10);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void ActionFailure.DeveloperDefinedError.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD12F80, &qword_1DD88A4A0);
  sub_1DD6DDEAC(v5);
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD806670();
  sub_1DD77E6F4();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1EC8(v2);
  }

  else
  {
    sub_1DD8259A4();
    sub_1DD825D44();
    v9 = sub_1DD875870();
    v17 = v10;
    sub_1DD824CE8();
    sub_1DD825D44();
    v15 = sub_1DD875870();
    v16 = v11;
    sub_1DD825178();
    v12 = sub_1DD8758B0();
    v13 = sub_1DD825098();
    v14(v13);
    *v4 = v9;
    v4[1] = v17;
    v4[2] = v15;
    v4[3] = v16;
    v4[4] = v12;

    sub_1DD6E1EC8(v2);
  }

  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7E87F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6572756C696166 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001DD8B6EC0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD7E88C0(char a1)
{
  if (a1)
  {
    return 0xD00000000000001DLL;
  }

  else
  {
    return 0x6572756C696166;
  }
}

uint64_t sub_1DD7E8938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7E87F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7E8960(uint64_t a1)
{
  v2 = sub_1DD8066C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E899C(uint64_t a1)
{
  v2 = sub_1DD8066C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionFailure.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v28 = sub_1DD710A9C(&qword_1ECD12F88, &qword_1DD88A4A8);
  sub_1DD6DDEAC(v28);
  v29 = v4;
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DE340();
  v8 = *v0;
  v9 = *(v0 + 8);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = *(v0 + 32);
  v25 = *(v0 + 56);
  v26 = *(v0 + 48);
  v24 = *(v0 + 64);
  v27 = v3[4];
  v30 = *(v0 + 40);
  sub_1DD6DF224(v3, v3[3]);
  sub_1DD826FA8();
  sub_1DD804044(v13, v14, v15, v16, v17, v30);
  sub_1DD8066C4();
  sub_1DD8256E0();
  sub_1DD875BB0();
  sub_1DD806718();
  sub_1DD8259D4();
  sub_1DD8759D0();
  sub_1DD8040A4(v8, v9, v10, v11, v12, v30);
  if (!v1)
  {
    sub_1DD6FF8F4();
    sub_1DD703958(v18, v19, v20);
    sub_1DD70396C();
    sub_1DD8259D4();
    sub_1DD875960();
    sub_1DD70148C(v26, v25, v24);
  }

  v21 = *(v29 + 8);
  v22 = sub_1DD6E21D0();
  v23(v22);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void ActionFailure.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD825058();
  v3 = sub_1DD710A9C(&qword_1ECD12FA0, &qword_1DD88A4B0);
  sub_1DD6DDEAC(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD8066C4();
  sub_1DD6ED2A4();
  if (v1)
  {
    sub_1DD6E1EC8(v0);
    v7 = sub_1DD825640();
    sub_1DD70148C(v7, v8, v9);
  }

  else
  {
    sub_1DD80676C();
    sub_1DD82499C();
    sub_1DD8758D0();
    v10 = v24;
    v22 = v26;
    sub_1DD8264F0(v27);
    v21 = v28;
    v35 = v29;
    sub_1DD6FF8F4();
    sub_1DD705D68();
    sub_1DD8275D0();
    sub_1DD82499C();
    sub_1DD875860();
    v11 = sub_1DD6DFF30();
    v12(v11);
    v13 = v33;
    v14 = v34;
    v19 = v33;
    v15 = sub_1DD825640();
    sub_1DD70148C(v15, v16, v17);
    v23[0] = v24;
    v23[1] = v25;
    v23[2] = v26;
    v23[3] = v20;
    v23[4] = v28;
    LOBYTE(v23[5]) = v29;
    v23[6] = v33;
    v23[7] = v34;
    sub_1DD826E88();
    v23[8] = v33;
    memcpy(v2, v23, 0x48uLL);
    sub_1DD8067C0(v23, &v24);
    sub_1DD6E1EC8(v0);
    sub_1DD826EA0();
    v24 = v10;
    v25 = v18;
    v26 = v22;
    v27 = v20;
    v28 = v21;
    v29 = v35;
    v30 = v19;
    v31 = v14;
    v32 = v13;
    sub_1DD8003B4(&v24);
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t ActionConfirmation.systemStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

__n128 ActionConfirmation.init(parameterValues:systemStyle:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1].n128_u16[0];
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0xE000000000000000;
  *(a3 + 32) = a1;
  result = *a2;
  *(a3 + 40) = *a2;
  *(a3 + 56) = v3;
  return result;
}

uint64_t ActionConfirmation.init(parameterValues:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = result;
  *(a2 + 56) = 0;
  return result;
}

uint64_t ActionConfirmation.init(affirmative:negative:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  type metadata accessor for ParameterValue(0);
  result = sub_1DD875080();
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 32) = result;
  *(a5 + 56) = 0;
  return result;
}

uint64_t ActionConfirmation.init(affirmative:negative:parameterValues:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 40) = 0;
  *(a6 + 48) = 0;
  *(a6 + 32) = a5;
  *(a6 + 56) = 0;
  return result;
}

uint64_t sub_1DD7E8FDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4151616964656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001DD8B73F0 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5665736F706D6F63 && a2 == 0xEE00697269536169;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6973734174786574 && a2 == 0xED0000746E617473)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD875A30();

        if (v9)
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

unint64_t sub_1DD7E914C(char a1)
{
  result = 0x4151616964656DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x5665736F706D6F63;
      break;
    case 3:
      result = 0x6973734174786574;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7E91F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7E8FDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7E921C(uint64_t a1)
{
  v2 = sub_1DD806818();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E9258(uint64_t a1)
{
  v2 = sub_1DD806818();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E9294(uint64_t a1)
{
  v2 = sub_1DD8068C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E92D0(uint64_t a1)
{
  v2 = sub_1DD8068C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E930C(uint64_t a1)
{
  v2 = sub_1DD806914();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E9348(uint64_t a1)
{
  v2 = sub_1DD806914();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E9384(uint64_t a1)
{
  v2 = sub_1DD806968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E93C0(uint64_t a1)
{
  v2 = sub_1DD806968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7E93FC(uint64_t a1)
{
  v2 = sub_1DD80686C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E9438(uint64_t a1)
{
  v2 = sub_1DD80686C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionConfirmation.SystemStyle.MontaraEnablement.Source.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD826F30();
  v2 = sub_1DD710A9C(&qword_1ECD12FB0, &qword_1DD88A4B8);
  sub_1DD6DDEAC(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD82480C(v6, v35);
  v7 = sub_1DD710A9C(&qword_1ECD12FB8, &qword_1DD88A4C0);
  sub_1DD6DDEAC(v7);
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6E9924(v11, v36);
  v12 = sub_1DD710A9C(&qword_1ECD12FC0, &qword_1DD88A4C8);
  sub_1DD6DDEAC(v12);
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD82495C(v16, v37);
  v17 = sub_1DD710A9C(&qword_1ECD12FC8, &qword_1DD88A4D0);
  sub_1DD6DDEAC(v17);
  v19 = *(v18 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6DEBA0();
  v21 = sub_1DD710A9C(&qword_1ECD12FD0, &qword_1DD88A4D8);
  sub_1DD6E125C(v21);
  v23 = v22;
  v25 = *(v24 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6E7258();
  v27 = *v0;
  v29 = v1[3];
  v28 = v1[4];
  sub_1DD6E49C0(v1);
  sub_1DD806818();
  sub_1DD7039CC();
  sub_1DD875BB0();
  switch(v27)
  {
    case 1:
      sub_1DD6E4104();
      sub_1DD806914();
      sub_1DD824848();
      sub_1DD875910();
      goto LABEL_6;
    case 2:
      sub_1DD82768C();
      sub_1DD8068C0();
      sub_1DD824848();
      sub_1DD875910();
      goto LABEL_6;
    case 3:
      sub_1DD7928CC();
      sub_1DD80686C();
      sub_1DD824848();
      sub_1DD875910();
LABEL_6:
      v30 = sub_1DD825950();
      break;
    default:
      sub_1DD806968();
      sub_1DD824848();
      sub_1DD875910();
      v30 = sub_1DD6FF900();
      break;
  }

  v31(v30);
  v32 = *(v23 + 8);
  v33 = sub_1DD825570();
  v34(v33);
  sub_1DD8268CC();
  sub_1DD6E0C78();
}

void ActionConfirmation.SystemStyle.MontaraEnablement.Source.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD826F30();
  v66 = v2;
  v68 = sub_1DD710A9C(&qword_1ECD13000, &qword_1DD88A4E0);
  sub_1DD6DDEAC(v68);
  v65 = v3;
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD824F70(v7);
  v8 = sub_1DD710A9C(&qword_1ECD13008, &qword_1DD88A4E8);
  sub_1DD6DDEAC(v8);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6E9924(v12, v64);
  v13 = sub_1DD710A9C(&qword_1ECD13010, &qword_1DD88A4F0);
  sub_1DD6DDEAC(v13);
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DDFE4();
  v17 = sub_1DD710A9C(&qword_1ECD13018, &qword_1DD88A4F8);
  sub_1DD6E125C(v17);
  v19 = *(v18 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6DEBA0();
  v21 = sub_1DD710A9C(&qword_1ECD13020, &qword_1DD88A500);
  sub_1DD6DDEAC(v21);
  v67 = v22;
  v24 = *(v23 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD6DEA6C();
  v26 = v1[3];
  v27 = v1[4];
  sub_1DD825500(v1);
  sub_1DD806818();
  sub_1DD6E17D8();
  sub_1DD875B90();
  if (!v69)
  {
    v28 = sub_1DD875900();
    sub_1DD6ED750(v28, 0);
    sub_1DD827758();
    if (!v29)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v36 == v37)
      {
        __break(1u);
        return;
      }

      v38 = *(v35 + v34);
      v39 = sub_1DD826C40(v30, v31, v32, v33, v34);
      sub_1DD6ED830(v39);
      v41 = v40;
      v43 = v42;
      swift_unknownObjectRelease();
      if (v41 == v43 >> 1)
      {
        switch(v38)
        {
          case 1:
            sub_1DD6E4104();
            sub_1DD806914();
            sub_1DD827458();
            sub_1DD8258DC();
            sub_1DD875800();
            swift_unknownObjectRelease();
            goto LABEL_14;
          case 2:
            sub_1DD82768C();
            sub_1DD8068C0();
            sub_1DD8258DC();
            sub_1DD875800();
            swift_unknownObjectRelease();
LABEL_14:
            v44 = sub_1DD6DED98();
            goto LABEL_15;
          case 3:
            sub_1DD7928CC();
            sub_1DD80686C();
            sub_1DD8258DC();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v58 = *(v65 + 8);
            v59 = sub_1DD8259C8();
            v60(v59);
            goto LABEL_16;
          default:
            sub_1DD806968();
            sub_1DD8258DC();
            sub_1DD875800();
            swift_unknownObjectRelease();
            v44 = sub_1DD6DED98();
            v46 = v0;
LABEL_15:
            v45(v44, v46);
LABEL_16:
            v61 = *(v67 + 8);
            v62 = sub_1DD82568C();
            v63(v62);
            *v66 = v38;
            sub_1DD6E1EC8(v1);
            break;
        }

        goto LABEL_10;
      }
    }

    sub_1DD875740();
    sub_1DD6E41BC();
    v48 = v47;
    v49 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v48 = &type metadata for ActionConfirmation.SystemStyle.MontaraEnablement.Source;
    sub_1DD875810();
    sub_1DD6DF100();
    v50 = *MEMORY[0x1E69E6AF8];
    sub_1DD824B14();
    v52 = *(v51 + 104);
    v53 = sub_1DD6FEB10();
    v54(v53);
    swift_willThrow();
    swift_unknownObjectRelease();
    v55 = *(v67 + 8);
    v56 = sub_1DD8259C8();
    v57(v56);
  }

  sub_1DD6E1EC8(v1);
LABEL_10:
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t static ActionConfirmation.SystemStyle.MontaraEnablement.== infix(_:_:)(uint64_t a1)
{
  sub_1DD6E27E8(a1);
  sub_1DD700BB8(v5);
  v8 = v8 && v6 == v7;
  if (v8)
  {
    if (v3 != v4)
    {
      return 0;
    }

    return v1 ^ v2 ^ 1u;
  }

  sub_1DD875A30();
  result = sub_1DD6FE86C();
  if ((v10 & 1) != 0 && v3 == v4)
  {
    return v1 ^ v2 ^ 1u;
  }

  return result;
}

uint64_t sub_1DD7E9DE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001DD8B5FE0 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x80000001DD8B7410 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD7E9EF8(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x656372756F73;
  }

  return 0xD000000000000011;
}

uint64_t sub_1DD7E9F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7E9DE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7E9F88(uint64_t a1)
{
  v2 = sub_1DD8069BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7E9FC4(uint64_t a1)
{
  v2 = sub_1DD8069BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionConfirmation.SystemStyle.MontaraEnablement.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD13028, &qword_1DD88A508);
  sub_1DD6E125C(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEA6C();
  v8 = *v0;
  v9 = v0[1];
  sub_1DD826A0C();
  v14 = *(v0 + 17);
  v11 = v3[3];
  v10 = v3[4];
  sub_1DD6FE8B0(v3);
  sub_1DD8069BC();
  sub_1DD6E17D8();
  sub_1DD826FA8();
  sub_1DD875BB0();
  sub_1DD705FD8();
  sub_1DD6E594C();
  sub_1DD875970();
  if (!v1)
  {
    sub_1DD6E4104();
    sub_1DD806A10();
    sub_1DD705E14();
    sub_1DD8759D0();
    sub_1DD8263D0();
    sub_1DD705E14();
    sub_1DD875980();
  }

  v12 = sub_1DD6EEDBC();
  v13(v12);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void ActionConfirmation.SystemStyle.MontaraEnablement.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_1DD6DED2C();
  sub_1DD8255B0();
  v17 = sub_1DD710A9C(&qword_1ECD13040, &qword_1DD88A510);
  sub_1DD6E125C(v17);
  v19 = *(v18 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD8069BC();
  sub_1DD6ED2A4();
  if (v13)
  {
    sub_1DD6E1EC8(v12);
  }

  else
  {
    sub_1DD8259A4();
    sub_1DD6E5374();
    sub_1DD875870();
    sub_1DD825610();
    sub_1DD806A64();
    sub_1DD705C28();
    sub_1DD8758D0();
    sub_1DD8263D0();
    sub_1DD6E5374();
    v21 = sub_1DD875880();
    v22 = sub_1DD6DEA2C();
    v23(v22);
    *v14 = v16;
    *(v14 + 8) = v15;
    *(v14 + 16) = a12;
    *(v14 + 17) = v21 & 1;

    sub_1DD826950();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

BOOL static ActionConfirmation.SystemStyle.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 17);
  v6 = *(v2 + 16);
  v7 = *(v2 + 17);
  if (v1 != *v2 || *(v3 + 8) != *(v2 + 8))
  {
    if ((sub_1DD875A30() & 1) == 0)
    {
      return 0;
    }

    return v4 == v6 && v5 == v7;
  }

  return v4 == v6 && ((v5 ^ v7) & 1) == 0;
}

uint64_t sub_1DD7EA3A0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001DD8B7430 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7EA440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7EA3A0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7EA46C(uint64_t a1)
{
  v2 = sub_1DD806AB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7EA4A8(uint64_t a1)
{
  v2 = sub_1DD806AB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7EA4E4(uint64_t a1)
{
  v2 = sub_1DD806B0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7EA520(uint64_t a1)
{
  v2 = sub_1DD806B0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionConfirmation.SystemStyle.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F8D24();
  v2 = sub_1DD710A9C(&qword_1ECD13050, &qword_1DD88A518);
  sub_1DD6DDEAC(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE340();
  v6 = sub_1DD710A9C(&qword_1ECD13058, &qword_1DD88A520);
  sub_1DD6DDEAC(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DDFE4();
  v12 = *v0;
  v22 = v0[1];
  v20 = *(v0 + 17);
  v21 = *(v0 + 16);
  v13 = v1[3];
  v14 = v1[4];
  sub_1DD6E7320(v1);
  sub_1DD806AB8();
  sub_1DD77E6F4();
  sub_1DD825680();
  sub_1DD875BB0();
  sub_1DD806B0C();
  sub_1DD82499C();
  sub_1DD875910();
  sub_1DD806B60();
  sub_1DD8759D0();
  v15 = sub_1DD8252CC();
  v16(v15);
  v17 = *(v8 + 8);
  v18 = sub_1DD6E5DB0();
  v19(v18);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void ActionConfirmation.SystemStyle.init(from:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v46 = v4;
  v5 = sub_1DD710A9C(&qword_1ECD13078, &qword_1DD88A528);
  sub_1DD6DDEAC(v5);
  v41 = v6;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6E7258();
  v10 = sub_1DD710A9C(&qword_1ECD13080, &qword_1DD88A530);
  sub_1DD6DDEAC(v10);
  v40 = v11;
  v13 = *(v12 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6E17C8();
  v16 = v3[3];
  v15 = v3[4];
  sub_1DD6FE8B0(v3);
  sub_1DD806AB8();
  sub_1DD825BBC();
  if (v0)
  {
    goto LABEL_9;
  }

  v17 = sub_1DD875900();
  sub_1DD6ED750(v17, 0);
  v19 = v10;
  if (v20 == v18 >> 1)
  {
LABEL_8:
    v25 = sub_1DD875740();
    sub_1DD6E41BC();
    v27 = v26;
    v28 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v27 = &type metadata for ActionConfirmation.SystemStyle;
    sub_1DD875810();
    sub_1DD6DF100();
    v29 = *MEMORY[0x1E69E6AF8];
    sub_1DD6E0540(v25);
    (*(v30 + 104))(v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    v31 = sub_1DD825950();
    v32(v31, v19);
LABEL_9:
    v39 = v3;
    goto LABEL_10;
  }

  sub_1DD825138();
  if (v22 == v23)
  {
    __break(1u);
    return;
  }

  v24 = sub_1DD826E1C(v21);
  sub_1DD6ED830(v24);
  sub_1DD827210();
  if (v15 != v10 >> 1)
  {
    v19 = v1;
    goto LABEL_8;
  }

  sub_1DD806B0C();
  sub_1DD826238();
  sub_1DD875800();
  sub_1DD806BB4();
  sub_1DD8250A8();
  sub_1DD8758D0();
  swift_unknownObjectRelease();
  v33 = *(v41 + 8);
  v34 = sub_1DD6DFF24();
  v35(v34);
  v36 = *(v40 + 8);
  v37 = sub_1DD705230();
  v38(v37);
  *v46 = v42;
  *(v46 + 8) = v43;
  *(v46 + 16) = v44;
  *(v46 + 17) = v45;
  v39 = v3;
LABEL_10:
  sub_1DD6E1EC8(v39);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7EAAA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616D7269666661 && a2 == 0xEB00000000657669;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x657669746167656ELL && a2 == 0xE800000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6574656D61726170 && a2 == 0xEF7365756C615672;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x74536D6574737973 && a2 == 0xEB00000000656C79)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD875A30();

        if (v9)
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

uint64_t sub_1DD7EAC10(char a1)
{
  result = 0x74616D7269666661;
  switch(a1)
  {
    case 1:
      result = 0x657669746167656ELL;
      break;
    case 2:
      result = 0x6574656D61726170;
      break;
    case 3:
      result = 0x74536D6574737973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7EACE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7EAAA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7EAD10(uint64_t a1)
{
  v2 = sub_1DD806C08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7EAD4C(uint64_t a1)
{
  v2 = sub_1DD806C08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActionConfirmation.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD13090, &qword_1DD88A538);
  sub_1DD6DDEAC(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEA6C();
  v9 = *v0;
  v8 = v0[1];
  v17 = v0[3];
  v18 = v0[2];
  v15 = v0[5];
  v16 = v0[4];
  v14 = v0[6];
  v19[0] = *(v0 + 28);
  v10 = v3[3];
  v11 = v3[4];
  sub_1DD6E49C0(v3);
  sub_1DD806C08();
  sub_1DD6E1808();
  sub_1DD705C50();
  sub_1DD825CC8();
  sub_1DD875970();
  if (!v1)
  {
    sub_1DD702E94();
    sub_1DD6E0E40();
    sub_1DD875970();
    sub_1DD6EFF88();
    sub_1DD710A9C(&qword_1ECD130A0, &qword_1DD88A540);
    sub_1DD806C5C();
    sub_1DD826748();
    sub_1DD6FF6E0();
    sub_1DD8759D0();
    sub_1DD7928CC();
    sub_1DD806D18();

    sub_1DD826748();
    sub_1DD6DE334();
    sub_1DD875960();
  }

  v12 = sub_1DD6EEDBC();
  v13(v12);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void ActionConfirmation.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD825058();
  v3 = sub_1DD710A9C(&qword_1ECD130C0, &qword_1DD88A548);
  sub_1DD6DDEAC(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6F0A58();
  v9 = v0[3];
  v10 = v0[4];
  sub_1DD6FE770(v0);
  sub_1DD806C08();
  sub_1DD825968();
  sub_1DD875B90();
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD6DEB0C();
    v11 = sub_1DD875870();
    v24 = v12;
    LOBYTE(v27[0]) = 1;
    sub_1DD6DEB0C();
    v13 = sub_1DD875870();
    *(&v23 + 1) = v14;
    *&v23 = v13;
    sub_1DD710A9C(&qword_1ECD130A0, &qword_1DD88A540);
    LOBYTE(v25[0]) = 2;
    sub_1DD806D6C();
    sub_1DD8268C0();
    sub_1DD8758D0();
    v22 = v27[0];
    sub_1DD7928CC();
    sub_1DD806E28();
    sub_1DD8275D0();
    sub_1DD8256A4();
    sub_1DD875860();
    v15 = *(v5 + 8);
    v16 = sub_1DD8259C8();
    v17(v16);
    sub_1DD8264F0(v33);
    v18 = v35;
    *&v25[0] = v11;
    *(&v25[0] + 1) = v24;
    v25[1] = v23;
    *v26 = v27[0];
    *&v26[8] = v19;
    *&v26[16] = v34;
    *&v26[24] = v35;
    *v2 = v25[0];
    v2[1] = v23;
    v2[2] = *v26;
    *(v2 + 42) = *&v26[10];
    sub_1DD806E7C(v25, v27);
    sub_1DD6E1EC8(v0);
    v27[0] = v11;
    v27[1] = v24;
    v28 = v23;
    v29 = v22;
    v30 = v21;
    sub_1DD826EA0();
    v31 = v20;
    v32 = v18;
    sub_1DD80043C(v27);
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t ParameterValue.promptSelection.getter()
{
  v1 = sub_1DD6E0A5C();
  v2 = type metadata accessor for ParameterValue(v1);
  result = sub_1DD6E0508(v2);
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *v0 = v5;
  *(v0 + 8) = v6;
  *(v0 + 9) = v4;
  return result;
}

uint64_t ParameterValue.promptSelection.setter(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = type metadata accessor for ParameterValue(0);
  result = sub_1DD6E0508(v4);
  *v6 = v1;
  *(v6 + 8) = v2;
  *(v6 + 9) = v3;
  return result;
}

uint64_t ParameterValue.promptSelection.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ParameterValue(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t ParameterValue.init(value:promptSelection:)()
{
  sub_1DD826938();
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  v5 = v0 + *(type metadata accessor for ParameterValue(0) + 20);
  *v5 = 0;
  *(v5 + 8) = 256;
  v6 = sub_1DD874FA0();
  sub_1DD6DF448(v6);
  v8 = *(v7 + 32);
  v9 = sub_1DD6E21D0();
  result = v10(v9);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 9) = v4;
  return result;
}

uint64_t static ParameterValue.== infix(_:_:)()
{
  sub_1DD6E1F34();
  if (_s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0())
  {
    v2 = *(type metadata accessor for ParameterValue(0) + 20);
    v3 = (v1 + v2);
    v4 = *(v1 + v2 + 9);
    v5 = (v0 + v2);
    v6 = *(v0 + v2 + 9);
    if (v4)
    {
      if (v6)
      {
        return 1;
      }
    }

    else if ((v6 & 1) == 0)
    {
      v8 = *v3;
      v9 = *(v3 + 8);
      v10 = *v5;
      v11 = *(v5 + 8);
      if (v9)
      {
        if (v8)
        {
          if ((v11 & 1) != 0 && v10)
          {
            return 1;
          }
        }

        else if ((v11 & 1) != 0 && !v10)
        {
          return 1;
        }
      }

      else if ((v11 & 1) == 0 && v8 == v10)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1DD7EB494()
{
  sub_1DD6E1F34();
  v3 = v1 == 0x65756C6176 && v2 == 0xE500000000000000;
  if (v3 || (sub_1DD824AA4(), (sub_1DD875A30() & 1) != 0))
  {

    return 0;
  }

  else if (v1 == 0x655374706D6F7270 && v0 == 0xEF6E6F697463656CLL)
  {

    return 1;
  }

  else
  {
    sub_1DD824AA4();
    sub_1DD875A30();
    sub_1DD82698C();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD7EB544(uint64_t a1)
{
  v2 = sub_1DD806EB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7EB580(uint64_t a1)
{
  v2 = sub_1DD806EB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ParameterValue.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  v2 = sub_1DD710A9C(&qword_1ECD130E0, &qword_1DD88A550);
  sub_1DD6E49A8(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD806EB4();
  sub_1DD6E1808();
  sub_1DD825C8C();
  sub_1DD874FA0();
  sub_1DD6E05D4();
  sub_1DD6E1E84(v6);
  sub_1DD6F9A4C();
  sub_1DD6E5924();
  sub_1DD8759D0();
  if (!v0)
  {
    v7 = (v1 + *(type metadata accessor for ParameterValue(0) + 20));
    v10 = *v7;
    v11 = *(v7 + 8);
    v12 = *(v7 + 9);
    sub_1DD82682C();
    sub_1DD806F08();
    sub_1DD824DE8();
    sub_1DD875960();
  }

  v8 = sub_1DD6EFFB4();
  v9(v8);
  sub_1DD825790();
  sub_1DD826CF4();
}

void ParameterValue.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD825A04();
  sub_1DD826914(v4);
  v25 = sub_1DD874FA0();
  v5 = sub_1DD6DDEAC(v25);
  v24 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD8247F4();
  v26 = sub_1DD710A9C(&qword_1ECD130F8, &qword_1DD88A558);
  sub_1DD6DDEAC(v26);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1DD700BA4();
  v13 = type metadata accessor for ParameterValue(v12);
  v14 = sub_1DD6DEA10(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD702A64();
  v18 = v1 + *(v17 + 28);
  *v18 = 0;
  *(v18 + 8) = 256;
  v19 = v0[3];
  v20 = v0[4];
  sub_1DD824CF8(v0);
  sub_1DD806EB4();
  sub_1DD6EF0F4();
  sub_1DD826A7C();
  sub_1DD875B90();
  if (v2)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD6E05D4();
    sub_1DD6E1E84(v21);
    sub_1DD6F9A4C();
    sub_1DD8268C0();
    sub_1DD8758D0();
    (*(v24 + 32))(v1, v3, v25);
    sub_1DD6DEC54();
    sub_1DD806F5C();
    sub_1DD8256A4();
    sub_1DD875860();
    v22 = sub_1DD6E4290();
    v23(v22, v26);
    *v18 = v27;
    *(v18 + 8) = v28;
    *(v18 + 9) = v29;
    sub_1DD6E5870();
    sub_1DD6E1EC8(v0);
    sub_1DD6E5ABC();
  }

  sub_1DD703860();
  sub_1DD6E0C78();
}

uint64_t static PromptSelection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DD7EBA68()
{
  sub_1DD6E1F34();
  v3 = v1 == 0x656D7269666E6F63 && v2 == 0xE900000000000064;
  if (v3 || (sub_1DD824AA4(), (sub_1DD875A30() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0xD000000000000018 && 0x80000001DD8B66B0 == v0;
    if (v5 || (sub_1DD824AA4(), (sub_1DD875A30() & 1) != 0))
    {

      return 1;
    }

    else if (v1 == 0x6465696E6564 && v0 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      sub_1DD824AA4();
      sub_1DD875A30();
      sub_1DD82698C();
      if (v1)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD7EBB60()
{
  sub_1DD705CF0();
  if (v2 == 0x7865646E69 && v1 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1DD8256B0();
    sub_1DD875A30();
    sub_1DD82698C();
    v4 = v0 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7EBBC4(uint64_t a1)
{
  v2 = sub_1DD806FB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7EBC00(uint64_t a1)
{
  v2 = sub_1DD806FB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7EBC3C(uint64_t a1)
{
  v2 = sub_1DD8070AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7EBC78(uint64_t a1)
{
  v2 = sub_1DD8070AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7EBCB4(uint64_t a1)
{
  v2 = sub_1DD807004();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7EBCF0(uint64_t a1)
{
  v2 = sub_1DD807004();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7EBD2C(uint64_t a1)
{
  v2 = sub_1DD807058();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7EBD68(uint64_t a1)
{
  v2 = sub_1DD807058();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PromptSelection.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD826784();
  v2 = sub_1DD710A9C(&qword_1ECD13108, &qword_1DD88A560);
  sub_1DD6DDEAC(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E9924(v6, v37);
  v7 = sub_1DD710A9C(&qword_1ECD13110, &qword_1DD88A568);
  v40 = sub_1DD6DDEAC(v7);
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD82480C(v11, v38);
  v12 = sub_1DD710A9C(&qword_1ECD13118, &qword_1DD88A570);
  sub_1DD6DDEAC(v12);
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD82495C(v16, v39);
  v17 = sub_1DD710A9C(&qword_1ECD13120, &qword_1DD88A578);
  sub_1DD6DDEAC(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD6DEBA0();
  v23 = *v0;
  v24 = *(v0 + 8);
  v25 = v1[3];
  v26 = v1[4];
  sub_1DD825500(v1);
  sub_1DD806FB0();
  sub_1DD6E4218();
  sub_1DD875BB0();
  if (v24 == 1)
  {
    if (v23)
    {
      sub_1DD6EFF88();
      sub_1DD807004();
      sub_1DD826E4C();
    }

    else
    {
      sub_1DD8070AC();
    }

    sub_1DD824DA8();
    sub_1DD875910();
    v32 = sub_1DD705C68();
    v33(v32);
    v34 = *(v19 + 8);
    v35 = sub_1DD8257C8();
    v36(v35);
  }

  else
  {
    sub_1DD6DEC54();
    sub_1DD807058();
    sub_1DD824DA8();
    sub_1DD875910();
    sub_1DD8759B0();
    v27 = sub_1DD705E24();
    v28(v27, v40);
    v29 = *(v19 + 8);
    v30 = sub_1DD8257C8();
    v31(v30);
  }

  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void PromptSelection.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD826F30();
  v60 = v2;
  v62 = sub_1DD710A9C(&qword_1ECD13148, &qword_1DD88A580);
  sub_1DD6DDEAC(v62);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD82486C(v6, v59);
  v61 = sub_1DD710A9C(&qword_1ECD13150, &qword_1DD88A588);
  sub_1DD6DDEAC(v61);
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DDFE4();
  v10 = sub_1DD710A9C(&qword_1ECD13158, &qword_1DD88A590);
  sub_1DD6DDEAC(v10);
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DEBA0();
  v14 = sub_1DD710A9C(&qword_1ECD13160, &qword_1DD88A598);
  sub_1DD6E49A8(v14);
  v16 = *(v15 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6E7258();
  v19 = v1[3];
  v18 = v1[4];
  sub_1DD6FE8B0(v1);
  sub_1DD806FB0();
  sub_1DD7039CC();
  sub_1DD875B90();
  if (!v63)
  {
    v20 = sub_1DD875900();
    sub_1DD6ED750(v20, 0);
    sub_1DD827598();
    if (!v21)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v22 == v23)
      {
        __break(1u);
        return;
      }

      v30 = *(v29 + v28);
      v31 = sub_1DD826480(v24, v25, v26, v27, v28);
      sub_1DD6ED830(v31);
      v33 = v32;
      v35 = v34;
      swift_unknownObjectRelease();
      if (v33 == v35 >> 1)
      {
        if (v30)
        {
          if (v30 == 1)
          {
            sub_1DD6DEC54();
            sub_1DD807058();
            sub_1DD8250E8();
            sub_1DD875800();
            v36 = v60;
            sub_1DD8258D0();
            v53 = sub_1DD8758B0();
            swift_unknownObjectRelease();
            v54 = sub_1DD824F60();
            v55(v54);
            v56 = sub_1DD82527C();
            v57(v56);
            v58 = 0;
          }

          else
          {
            sub_1DD6EFF88();
            sub_1DD807004();
            sub_1DD6E4040();
            sub_1DD826118();
            sub_1DD875800();
            v36 = v60;
            swift_unknownObjectRelease();
            v49 = sub_1DD6DED98();
            v50(v49, v62);
            v51 = sub_1DD82527C();
            v52(v51);
            v53 = 1;
            v58 = 1;
          }
        }

        else
        {
          sub_1DD8070AC();
          sub_1DD6E4040();
          sub_1DD826118();
          sub_1DD875800();
          swift_unknownObjectRelease();
          v45 = sub_1DD6DED98();
          v46(v45, v10);
          v47 = sub_1DD825864();
          v48(v47, v0);
          v53 = 0;
          v58 = 1;
          v36 = v60;
        }

        *v36 = v53;
        *(v36 + 8) = v58;
        sub_1DD6E1EC8(v1);
        goto LABEL_13;
      }
    }

    v37 = sub_1DD875740();
    sub_1DD6E41BC();
    v39 = v38;
    v40 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v39 = &type metadata for PromptSelection;
    sub_1DD7039C0();
    sub_1DD875810();
    sub_1DD6DF100();
    v41 = *MEMORY[0x1E69E6AF8];
    sub_1DD6E0540(v37);
    (*(v42 + 104))(v39);
    swift_willThrow();
    swift_unknownObjectRelease();
    v43 = sub_1DD705C68();
    v44(v43, v0);
  }

  sub_1DD6E1EC8(v1);
LABEL_13:
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

uint64_t ParameterNeedsValue.currentValue.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ParameterNeedsValue(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t ParameterNeedsValue.typeInstance.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ParameterNeedsValue(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t ParameterNeedsValue.context.getter()
{
  v2 = sub_1DD6E0A5C();
  v3 = (v1 + *(type metadata accessor for ParameterNeedsValue(v2) + 28));
  v4 = v3[1];
  *v0 = *v3;
  v0[1] = v4;
}

uint64_t ParameterNeedsValue.context.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = type metadata accessor for ParameterNeedsValue(0);
  result = sub_1DD6F43C0(*(v4 + 28));
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t ParameterNeedsValue.context.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ParameterNeedsValue(v0) + 28);
  return sub_1DD6DDF9C();
}

void ParameterNeedsValue.init(parameterId:typeInstance:context:)()
{
  sub_1DD6DEB38();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *v6;
  v8 = v6[1];
  v9 = type metadata accessor for ParameterNeedsValue(0);
  v10 = &v5[v9[7]];
  *v10 = 0;
  *(v10 + 1) = 0;
  *v5 = v3;
  *(v5 + 1) = v1;
  v11 = sub_1DD874F70();
  v12 = swift_allocBox();
  v13 = *MEMORY[0x1E69DADD8];
  sub_1DD6E0540(v11);
  (*(v14 + 104))();
  v15 = v9[5];
  *&v5[v15] = v12;
  v16 = *MEMORY[0x1E69DAE70];
  v17 = sub_1DD874FA0();
  sub_1DD6DF448(v17);
  (*(v18 + 104))(&v5[v15], v16);
  v19 = v9[6];
  v20 = sub_1DD874FC0();
  sub_1DD6DF448(v20);
  v22 = *(v21 + 32);
  v23 = sub_1DD6E26D8();
  v24(v23);
  v25 = *(v10 + 1);

  *v10 = v7;
  *(v10 + 1) = v8;
  sub_1DD6DFED0();
}

void ParameterNeedsValue.init(parameterId:currentValue:)()
{
  sub_1DD827764();
  sub_1DD8257B8();
  v4 = sub_1DD6E0A5C();
  v5 = type metadata accessor for ParameterNeedsValue(v4);
  v6 = &v0[*(v5 + 28)];
  *v6 = 0;
  *(v6 + 1) = 0;
  *v0 = v3;
  *(v0 + 1) = v2;
  sub_1DD701458(v5);
  v7 = sub_1DD874FA0();
  sub_1DD6DF448(v7);
  (*(v8 + 32))(&v0[v2], v1);
  v9 = sub_1DD875010();
  swift_allocBox();
  sub_1DD8274C0();
  v10 = sub_1DD874FF0();
  v11 = swift_allocBox();
  v12 = *MEMORY[0x1E69DB048];
  sub_1DD6E0540(v10);
  (*(v13 + 104))();
  *v3 = v11;
  v14 = *MEMORY[0x1E69DB0B0];
  sub_1DD6E0540(v9);
  (*(v15 + 104))(v3);
  v16 = *(v5 + 24);
  *&v0[v16] = v2;
  v17 = *MEMORY[0x1E69DAF30];
  v18 = sub_1DD874FC0();
  sub_1DD6DF448(v18);
  (*(v19 + 104))(&v0[v16], v17);
  v20 = *(v6 + 1);

  *v6 = 0;
  *(v6 + 1) = 0;
  sub_1DD827720();
}

void ParameterNeedsValue.init(parameterId:)()
{
  sub_1DD827764();
  v2 = v1;
  v4 = v3;
  sub_1DD6E0A5C();
  sub_1DD875010();
  v5 = swift_allocBox();
  v7 = v6;
  v8 = sub_1DD874FF0();
  v9 = swift_allocBox();
  v10 = *MEMORY[0x1E69DB048];
  sub_1DD6E0540(v8);
  (*(v11 + 104))();
  *v7 = v9;
  v12 = *MEMORY[0x1E69DB0B0];
  sub_1DD8250B8();
  v14 = *(v13 + 104);
  v15 = sub_1DD826A94();
  v16(v15);
  v17 = type metadata accessor for ParameterNeedsValue(0);
  v18 = v17[6];
  *&v0[v18] = v5;
  v19 = *MEMORY[0x1E69DAF30];
  v20 = sub_1DD874FC0();
  sub_1DD6DF448(v20);
  (*(v21 + 104))(&v0[v18], v19);
  v22 = &v0[v17[7]];
  *v22 = 0;
  *(v22 + 1) = 0;
  *v0 = v4;
  *(v0 + 1) = v2;
  v23 = sub_1DD874F70();
  v24 = swift_allocBox();
  v25 = *MEMORY[0x1E69DADD8];
  sub_1DD6E0540(v23);
  (*(v26 + 104))();
  v27 = v17[5];
  *&v0[v27] = v24;
  v28 = *MEMORY[0x1E69DAE70];
  v29 = sub_1DD874FA0();
  sub_1DD6DF448(v29);
  (*(v30 + 104))(&v0[v27], v28);
  v31 = *(v22 + 1);

  *v22 = 0;
  *(v22 + 1) = 0;
  sub_1DD827720();
}

uint64_t sub_1DD7ECCF4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7551686372616573 && a2 == 0xEB00000000797265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7ECD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7ECCF4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7ECDC0(uint64_t a1)
{
  v2 = sub_1DD807100();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7ECDFC(uint64_t a1)
{
  v2 = sub_1DD807100();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ParameterNeedsValue.Context.PhotosSearch.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  v0 = sub_1DD710A9C(&qword_1ECD13168, &qword_1DD88A5A0);
  sub_1DD6E125C(v0);
  v2 = *(v1 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD807100();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v4 = sub_1DD6FF808();
  v5(v4);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t static ParameterNeedsValue.Context.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  if (v1 == *v2 && *(v3 + 8) == v2[1])
  {
    return 1;
  }

  sub_1DD875A30();
  result = sub_1DD6FE86C();
  if (v6)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1DD7ECFC8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6553736F746F6870 && a2 == 0xEC00000068637261)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7ED068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7ECFC8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7ED094(uint64_t a1)
{
  v2 = sub_1DD807154();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7ED0D0(uint64_t a1)
{
  v2 = sub_1DD807154();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7ED10C(uint64_t a1)
{
  v2 = sub_1DD8071A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7ED148(uint64_t a1)
{
  v2 = sub_1DD8071A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ParameterNeedsValue.Context.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F8D24();
  v2 = sub_1DD710A9C(&qword_1ECD13180, &qword_1DD88A5B0);
  sub_1DD6DDEAC(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE340();
  v6 = sub_1DD710A9C(&qword_1ECD13188, &qword_1DD88A5B8);
  sub_1DD6DDEAC(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DDFE4();
  v12 = *v0;
  v20 = v0[1];
  v13 = v1[3];
  v14 = v1[4];
  sub_1DD6E7320(v1);
  sub_1DD807154();
  sub_1DD77E6F4();
  sub_1DD825680();
  sub_1DD875BB0();
  sub_1DD8071A8();
  sub_1DD82499C();
  sub_1DD875910();
  sub_1DD8071FC();
  sub_1DD8759D0();
  v15 = sub_1DD8252CC();
  v16(v15);
  v17 = *(v8 + 8);
  v18 = sub_1DD6E5DB0();
  v19(v18);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void ParameterNeedsValue.Context.init(from:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v44 = v4;
  v5 = sub_1DD710A9C(&qword_1ECD131A8, &qword_1DD88A5C0);
  sub_1DD6DDEAC(v5);
  v41 = v6;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6E7258();
  v10 = sub_1DD710A9C(&qword_1ECD131B0, &qword_1DD88A5C8);
  sub_1DD6DDEAC(v10);
  v40 = v11;
  v13 = *(v12 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6E17C8();
  v16 = v3[3];
  v15 = v3[4];
  sub_1DD6FE8B0(v3);
  sub_1DD807154();
  sub_1DD825BBC();
  if (v0)
  {
    goto LABEL_9;
  }

  v17 = sub_1DD875900();
  sub_1DD6ED750(v17, 0);
  v19 = v10;
  if (v20 == v18 >> 1)
  {
LABEL_8:
    v25 = sub_1DD875740();
    sub_1DD6E41BC();
    v27 = v26;
    v28 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v27 = &type metadata for ParameterNeedsValue.Context;
    sub_1DD875810();
    sub_1DD6DF100();
    v29 = *MEMORY[0x1E69E6AF8];
    sub_1DD6E0540(v25);
    (*(v30 + 104))(v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    v31 = sub_1DD825950();
    v32(v31, v19);
LABEL_9:
    v39 = v3;
    goto LABEL_10;
  }

  sub_1DD825138();
  if (v22 == v23)
  {
    __break(1u);
    return;
  }

  v24 = sub_1DD826E1C(v21);
  sub_1DD6ED830(v24);
  sub_1DD827210();
  if (v15 != v10 >> 1)
  {
    v19 = v1;
    goto LABEL_8;
  }

  sub_1DD8071A8();
  sub_1DD826238();
  sub_1DD875800();
  sub_1DD807250();
  sub_1DD8250A8();
  sub_1DD8758D0();
  swift_unknownObjectRelease();
  v33 = *(v41 + 8);
  v34 = sub_1DD6DFF24();
  v35(v34);
  v36 = *(v40 + 8);
  v37 = sub_1DD705230();
  v38(v37);
  *v44 = v42;
  v44[1] = v43;
  v39 = v3;
LABEL_10:
  sub_1DD6E1EC8(v39);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7ED6D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xEB00000000644972;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x56746E6572727563 && a2 == 0xEC00000065756C61;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74736E4965707974 && a2 == 0xEC00000065636E61;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD875A30();

        if (v9)
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

uint64_t sub_1DD7ED83C(char a1)
{
  result = 0x6574656D61726170;
  switch(a1)
  {
    case 1:
      result = 0x56746E6572727563;
      break;
    case 2:
      result = 0x74736E4965707974;
      break;
    case 3:
      result = 0x747865746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7ED8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7ED6D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7ED908(uint64_t a1)
{
  v2 = sub_1DD8072A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7ED944(uint64_t a1)
{
  v2 = sub_1DD8072A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ParameterNeedsValue.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6E86E0();
  v3 = sub_1DD710A9C(&qword_1ECD131C0, &qword_1DD88A5D0);
  sub_1DD6E49A8(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD8072A4();
  sub_1DD6E1808();
  v7 = *v1;
  v8 = v1[1];
  sub_1DD705DBC();
  sub_1DD875970();
  if (!v0)
  {
    v9 = type metadata accessor for ParameterNeedsValue(0);
    sub_1DD82553C(v9);
    sub_1DD874FA0();
    sub_1DD6E05D4();
    sub_1DD6E1E84(v10);
    sub_1DD8262A4();
    sub_1DD6E9630();
    sub_1DD8759D0();
    v11 = *(v2 + 24);
    sub_1DD874FC0();
    sub_1DD700C54();
    sub_1DD6E1E84(v12);
    sub_1DD8262A4();
    sub_1DD6E9630();
    sub_1DD8759D0();
    v13 = (v1 + *(v2 + 28));
    v14 = v13[1];
    v17 = *v13;
    sub_1DD8072F8();
    sub_1DD6E5E30();

    sub_1DD6DE334();
    sub_1DD875960();
  }

  v15 = sub_1DD6EFFB4();
  v16(v15);
  sub_1DD826F90();
  sub_1DD826CF4();
}

void ParameterNeedsValue.init(from:)()
{
  sub_1DD6DED2C();
  v5 = v4;
  v37 = sub_1DD874FC0();
  v6 = sub_1DD6DDEAC(v37);
  v36 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DDEE8();
  v35 = v10;
  sub_1DD6E9A9C();
  v11 = sub_1DD874FA0();
  v12 = sub_1DD6E125C(v11);
  v38 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD702A64();
  v39 = sub_1DD710A9C(&qword_1ECD131D8, &qword_1DD88A5D8);
  sub_1DD6DDEAC(v39);
  v17 = *(v16 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  v19 = sub_1DD6E27D4();
  v20 = type metadata accessor for ParameterNeedsValue(v19);
  v21 = sub_1DD6DE1C4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6DE4A8();
  sub_1DD700C78();
  v25 = (v3 + *(v24 + 28));
  *v25 = 0;
  v25[1] = 0;
  v40 = v25;
  v26 = v5[3];
  v27 = v5[4];
  sub_1DD824CF8(v5);
  sub_1DD8072A4();
  sub_1DD8259BC();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1EC8(v5);
    v28 = v40[1];
  }

  else
  {
    LOBYTE(v41) = 0;
    *v3 = sub_1DD875870();
    v3[1] = v29;
    sub_1DD826820();
    sub_1DD6E05D4();
    sub_1DD6E1E84(v30);
    sub_1DD8758D0();
    (*(v38 + 32))(v3 + *(v20 + 20), v2, v1);
    sub_1DD826B30();
    sub_1DD700C54();
    sub_1DD6E1E84(v31);
    sub_1DD8758D0();
    (*(v36 + 32))(v3 + *(v20 + 24), v35, v37);
    sub_1DD7928CC();
    sub_1DD80734C();
    sub_1DD826F48();
    sub_1DD875860();
    v32 = sub_1DD826FD8();
    v33(v32);
    v34 = v40[1];

    *v40 = v41;
    v40[1] = v42;
    sub_1DD6E5870();
    sub_1DD6E1EC8(v5);
    sub_1DD825E00();
    sub_1DD6E5ABC();
  }

  sub_1DD6F9B18();
  sub_1DD6E0C78();
}

uint64_t AttributedValue.ancestorId.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = type metadata accessor for AttributedValue(v0);
  v2 = sub_1DD8255E0(*(v1 + 20));

  return sub_1DD703958(v2, v3, v4);
}

__n128 AttributedValue.init(value:ancestorId:)()
{
  sub_1DD8250F8();
  v3 = *(v2 + 32);
  v4 = sub_1DD874FA0();
  sub_1DD6DF448(v4);
  v6 = *(v5 + 32);
  v12 = v0[1];
  v13 = *v0;
  v7 = sub_1DD6E87AC();
  v8(v7);
  sub_1DD825A74();
  v10 = (v1 + v9);
  result = v13;
  *v10 = v13;
  v10[1] = v12;
  v10[2].n128_u8[0] = v3;
  return result;
}

BOOL static AttributedValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  sub_1DD825A74();
  v6 = *(a1 + v4);
  v5 = *(a1 + v4 + 8);
  v8 = *(a1 + v4 + 16);
  v7 = *(a1 + v4 + 24);
  v9 = *(a1 + v4 + 32);
  v10 = (a2 + v4);
  v12 = *v10;
  v11 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  v15 = *(v10 + 32);
  if (v8 != 1)
  {
    v63[0] = v6;
    v63[1] = v5;
    v63[2] = v8;
    v63[3] = v7;
    v64 = v9;
    if (v13 != 1)
    {
      v58 = v12;
      v59 = v11;
      v60 = v13;
      v61 = v14;
      v62 = v15 & 1;
      v57 = static AncestorID.== infix(_:_:)(v63, &v58);
      v45 = sub_1DD824858();
      sub_1DD703958(v45, v46, v47);
      sub_1DD6E6378();
      sub_1DD826844();
      sub_1DD703958(v48, v49, v50);
      v51 = sub_1DD824858();
      sub_1DD703958(v51, v52, v53);

      v54 = sub_1DD824858();
      sub_1DD70148C(v54, v55, v56);
      return (v57 & 1) != 0;
    }

    v26 = sub_1DD824858();
    sub_1DD703958(v26, v27, v28);
    sub_1DD6E6378();
    sub_1DD8273E4();
    sub_1DD703958(v29, v30, v31);
    v32 = sub_1DD824858();
    sub_1DD703958(v32, v33, v34);

    goto LABEL_8;
  }

  sub_1DD6E0C60();
  sub_1DD8273F0();
  sub_1DD703958(v16, v17, v18);
  if (v13 != 1)
  {
    sub_1DD6E6378();
    sub_1DD826844();
    sub_1DD703958(v35, v36, v37);
LABEL_8:
    v38 = sub_1DD824858();
    sub_1DD70148C(v38, v39, v40);
    sub_1DD6E6378();
    sub_1DD826844();
    sub_1DD70148C(v41, v42, v43);
    return 0;
  }

  v19 = 1;
  sub_1DD6E6378();
  sub_1DD8273E4();
  sub_1DD703958(v20, v21, v22);
  sub_1DD6E0C60();
  sub_1DD8273F0();
  sub_1DD70148C(v23, v24, v25);
  return v19;
}

uint64_t sub_1DD7EE284(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F747365636E61 && a2 == 0xEA00000000006449)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD7EE350(char a1)
{
  if (a1)
  {
    return 0x726F747365636E61;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1DD7EE390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7EE284(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7EE3B8(uint64_t a1)
{
  v2 = sub_1DD8073C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7EE3F4(uint64_t a1)
{
  v2 = sub_1DD8073C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AttributedValue.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  v1 = sub_1DD710A9C(&qword_1ECD131E8, &qword_1DD88A5E0);
  sub_1DD6E49A8(v1);
  v3 = *(v2 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD8073C0();
  sub_1DD6E1808();
  LOBYTE(v15) = 0;
  sub_1DD874FA0();
  sub_1DD6E05D4();
  sub_1DD6E1E84(v5);
  sub_1DD825A9C();
  sub_1DD6E5924();
  sub_1DD8759D0();
  if (!v0)
  {
    v6 = type metadata accessor for AttributedValue(0);
    v7 = sub_1DD82595C(*(v6 + 20));
    v10 = sub_1DD826E70(v7, v8, v9);
    sub_1DD703958(v10, v11, v12);
    sub_1DD703904();
    sub_1DD824DE8();
    sub_1DD875960();
    sub_1DD70148C(v15, v16, v17);
  }

  v13 = sub_1DD6EFFB4();
  v14(v13);
  sub_1DD825790();
  sub_1DD826CF4();
}

void AttributedValue.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD826838();
  v24 = sub_1DD874FA0();
  v3 = sub_1DD6DDEAC(v24);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6E535C();
  v6 = sub_1DD710A9C(&qword_1ECD131F8, &qword_1DD88A5E8);
  v23 = sub_1DD6DDEAC(v6);
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1DD700BA4();
  v11 = type metadata accessor for AttributedValue(v10);
  v12 = sub_1DD6DE1C4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD824734();
  v15 = v0[3];
  v16 = v0[4];
  sub_1DD824794();
  sub_1DD8073C0();
  sub_1DD6EF0F4();
  sub_1DD875B90();
  if (v2)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    LOBYTE(v25) = 0;
    sub_1DD6E05D4();
    sub_1DD6E1E84(v17);
    sub_1DD8276BC();
    sub_1DD8758D0();
    sub_1DD826578();
    v18 = sub_1DD825B84();
    v19(v18);
    sub_1DD6FF8F4();
    sub_1DD705C9C();
    sub_1DD8250A8();
    sub_1DD875860();
    v20 = sub_1DD825068();
    v21(v20, v23);
    v22 = v1 + *(v11 + 20);
    *v22 = v25;
    *(v22 + 16) = v26;
    *(v22 + 32) = v27;
    sub_1DD825CEC();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v0);
    sub_1DD6E8904();
    sub_1DD6E5ABC();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7EE8E8()
{
  v3 = sub_1DD825000();
  v5 = *(v4(v3) + 24);
  v6 = v0(0);
  v7 = sub_1DD6DE1C4(v6);
  v9 = *(v8 + 16);

  return v9(v2, v1 + v5, v7);
}

uint64_t sub_1DD7EE960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v8 = sub_1DD6EE78C();
  v10 = v9(v8);
  sub_1DD6DDEAC(v10);
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DEA6C();
  v15 = *(v14 + 16);
  v16 = sub_1DD6E0C60();
  v17(v16);
  return a6(v6);
}

void ParameterConfirmation.item.setter()
{
  v1 = sub_1DD6DE290();
  v2 = v0 + *(type metadata accessor for ParameterConfirmation(v1) + 24);
  sub_1DD6E8904();
  sub_1DD6E5ABC();
  v3 = sub_1DD874FA0();
  sub_1DD6DF448(v3);
  v5 = *(v4 + 32);
  v6 = sub_1DD6E21D0();
  v7(v6);
  sub_1DD825A74();
  sub_1DD6F448C(v8);
  sub_1DD825D94(v9, xmmword_1DD8890D0);
}

void (*ParameterConfirmation.item.modify())(void **a1, char a2)
{
  v1 = sub_1DD7281CC(0x40uLL);
  sub_1DD82748C(v1);
  v2 = sub_1DD874FA0();
  *(v0 + 8) = v2;
  sub_1DD6DDEAC(v2);
  v4 = v3;
  *(v0 + 16) = v3;
  v6 = *(v5 + 64);
  *(v0 + 24) = sub_1DD7281CC(v6);
  *(v0 + 32) = sub_1DD7281CC(v6);
  *(v0 + 56) = *(type metadata accessor for ParameterConfirmation(0) + 24);
  *(v0 + 40) = *(v4 + 16);
  *(v0 + 48) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7 = sub_1DD700660();
  v8(v7);
  return sub_1DD7EEB84;
}

void sub_1DD7EEB84(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 5);
    v3 = *(v2 + 6);
    v6 = *(v2 + 3);
    v5 = *(v2 + 4);
    v7 = *(v2 + 1);
    v8 = *(v2 + 2);
    v9 = *v2 + v2[14];
    v10 = sub_1DD6F8CC0();
    v11(v10);
    sub_1DD6E8904();
    sub_1DD6E5ABC();
    sub_1DD8274CC();
    v12 = sub_1DD6E9594();
    v13(v12);
    sub_1DD825A74();
    v15 = (v9 + v14);
    v15->n128_u64[0] = 0;
    v15->n128_u64[1] = 0;
    sub_1DD825D94(v15, xmmword_1DD8890D0);
    v16 = *(v8 + 8);
    v17 = sub_1DD705564();
    v18(v17);
  }

  else
  {
    v6 = *(v2 + 3);
    v5 = *(v2 + 4);
    v19 = *(v2 + 1);
    v20 = *(v2 + 2);
    v21 = *v2 + v2[14];
    sub_1DD6E8904();
    sub_1DD6E5ABC();
    v22 = *(v20 + 32);
    v23 = sub_1DD6F4498();
    v24(v23);
    sub_1DD825A74();
    v26 = (v21 + v25);
    v26->n128_u64[0] = 0;
    v26->n128_u64[1] = 0;
    sub_1DD825D94(v26, xmmword_1DD8890D0);
  }

  free(v5);
  free(v6);

  free(v2);
}

uint64_t sub_1DD7EECF8()
{
  v0 = sub_1DD6EE78C();
  v2 = *(v1(v0) + 24);
  sub_1DD8275C4();
  return sub_1DD7FFEA0();
}

uint64_t ParameterConfirmation.attributedValue.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ParameterConfirmation(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t ParameterConfirmation.ancestorValue.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ParameterConfirmation(v0) + 28);
  return sub_1DD6DDF9C();
}

uint64_t ParameterConfirmation.itemDescription.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ParameterConfirmation(v0) + 32);
  return sub_1DD6DDF9C();
}

uint64_t ParameterConfirmation.propertyIdForItemDescription.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ParameterConfirmation(v0) + 36);
  return sub_1DD6DDF9C();
}

void ParameterConfirmation.init(parameterId:parameterIndex:attributedValue:ancestorValue:)()
{
  sub_1DD6DEB38();
  v5 = v4;
  v6 = sub_1DD6FC2A8();
  v7 = type metadata accessor for ParameterConfirmation(v6);
  v8 = v7[7];
  sub_1DD874FA0();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v9, v10, v11, v12);
  v13 = (v3 + v7[8]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v3 + v7[9]);
  *v14 = 0;
  v14[1] = 0;
  *v3 = v2;
  *(v3 + 8) = v1;
  *(v3 + 16) = v0;
  *(v3 + 24) = v5 & 1;
  v15 = v7[6];
  sub_1DD6DEAF4();
  sub_1DD6E59B8();
  sub_1DD807414();
  sub_1DD6DFED0();
}

void ParameterConfirmation.init(parameterId:parameterIndex:item:)()
{
  sub_1DD6DEB38();
  v4 = v3;
  sub_1DD8257B8();
  v6 = v5;
  v7 = type metadata accessor for ParameterConfirmation(0);
  v8 = v7[7];
  v9 = sub_1DD874FA0();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v10, v11, v12, v9);
  sub_1DD826754(v7[8]);
  sub_1DD826754(v7[9]);
  *v6 = v2;
  *(v6 + 8) = v1;
  *(v6 + 16) = v0;
  *(v6 + 24) = v4 & 1;
  v13 = v6 + v7[6];
  sub_1DD6E0540(v9);
  v15 = *(v14 + 32);
  v16 = sub_1DD6E21D0();
  v17(v16);
  sub_1DD825A74();
  sub_1DD6F448C(v18);
  sub_1DD825D94(v19, xmmword_1DD8890D0);
  sub_1DD6DFED0();
}

void ParameterConfirmation.init(parameterId:item:)()
{
  sub_1DD827764();
  sub_1DD824C64();
  *(v3 + 16) = 0;
  *(v2 + 24) = 1;
  v4 = type metadata accessor for ParameterConfirmation(0);
  v5 = v4[7];
  v6 = sub_1DD874FA0();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v7, v8, v9, v6);
  v10 = (v2 + v4[8]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v2 + v4[9]);
  *v11 = 0;
  v11[1] = 0;
  *v2 = v1;
  *(v2 + 8) = v0;
  v12 = v2 + v4[6];
  sub_1DD6E0540(v6);
  v14 = *(v13 + 32);
  v15 = sub_1DD6E21D0();
  v16(v15);
  sub_1DD825A74();
  sub_1DD6F448C(v17);
  sub_1DD825D94(v18, xmmword_1DD8890D0);
  sub_1DD827720();
}

void ParameterConfirmation.init(parameterId:item:itemDescription:propertyIdForItemDescription:)()
{
  sub_1DD6FF8A8();
  v26 = v2;
  v27 = v3;
  v5 = v4;
  v7 = v6;
  sub_1DD82758C();
  v9 = v8;
  *(v8 + 16) = 0;
  *(v8 + 24) = 1;
  v10 = type metadata accessor for ParameterConfirmation(0);
  v11 = v10[7];
  v12 = sub_1DD874FA0();
  sub_1DD825300();
  sub_1DD6E5E68(v13, v14, v15, v16);
  v17 = (v9 + v10[8]);
  v18 = (v9 + v10[9]);
  *v9 = v1;
  v9[1] = v0;
  v19 = v9 + v10[6];
  sub_1DD6E0540(v12);
  v21 = *(v20 + 32);
  v22 = sub_1DD6DDEDC();
  v23(v22);
  sub_1DD825A74();
  sub_1DD826754(v24);
  sub_1DD825D94(v25, xmmword_1DD8890D0);
  *v17 = v7;
  v17[1] = v5;
  *v18 = v26;
  v18[1] = v27;
  sub_1DD6E58C4();
}

uint64_t sub_1DD7EF21C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6574656D61726170 && a2 == 0xEB00000000644972;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574656D61726170 && a2 == 0xEE007865646E4972;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7475626972747461 && a2 == 0xEF65756C61566465;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x726F747365636E61 && a2 == 0xED000065756C6156;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x637365446D657469 && a2 == 0xEF6E6F6974706972;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD00000000000001CLL && 0x80000001DD8B7450 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DD875A30();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD7EF430(char a1)
{
  result = 0x6574656D61726170;
  switch(a1)
  {
    case 2:
      result = 0x7475626972747461;
      break;
    case 3:
      result = 0x726F747365636E61;
      break;
    case 4:
      result = 0x637365446D657469;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7EF518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7EF21C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7EF540(uint64_t a1)
{
  v2 = sub_1DD807460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7EF57C(uint64_t a1)
{
  v2 = sub_1DD807460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ParameterConfirmation.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6E86E0();
  v2 = sub_1DD710A9C(&qword_1ECD13200, &qword_1DD88A5F0);
  sub_1DD6E49A8(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD807460();
  sub_1DD6E1808();
  v6 = *v1;
  v7 = v1[1];
  sub_1DD705FD8();
  sub_1DD705DBC();
  sub_1DD875970();
  if (!v0)
  {
    v8 = v1[2];
    v9 = *(v1 + 24);
    sub_1DD8250C8();
    sub_1DD705DBC();
    sub_1DD875950();
    v10 = type metadata accessor for ParameterConfirmation(0);
    v11 = v10[6];
    sub_1DD6E0FF8();
    type metadata accessor for AttributedValue(0);
    sub_1DD826250();
    sub_1DD6E1E84(v12);
    sub_1DD8262A4();
    sub_1DD6E9630();
    sub_1DD8759D0();
    v13 = v10[7];
    sub_1DD6E6174();
    sub_1DD874FA0();
    sub_1DD6E05D4();
    sub_1DD6E1E84(v14);
    sub_1DD8262A4();
    sub_1DD6E9630();
    sub_1DD875960();
    sub_1DD6F8CE0(v10[8]);
    sub_1DD82636C();
    sub_1DD705DBC();
    sub_1DD875920();
    sub_1DD6F8CE0(v10[9]);
    sub_1DD8267FC();
    sub_1DD705DBC();
    sub_1DD875920();
  }

  v15 = sub_1DD6EFFB4();
  v16(v15);
  sub_1DD826F90();
  sub_1DD826CF4();
}

void ParameterConfirmation.init(from:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v47 = v5;
  v6 = sub_1DD710A9C(&qword_1ECD121B8, &qword_1DD889C00);
  sub_1DD6DEA10(v6);
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6E9924(v10, v47);
  v11 = type metadata accessor for AttributedValue(0);
  v12 = sub_1DD6DE1C4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD824734();
  v15 = sub_1DD710A9C(&qword_1ECD13218, &qword_1DD88A5F8);
  v16 = sub_1DD6DDEAC(v15);
  v48 = v17;
  v49 = v16;
  v19 = *(v18 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6DEBA0();
  v21 = type metadata accessor for ParameterConfirmation(0);
  v22 = sub_1DD6DE1C4(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD702A64();
  v50 = v25;
  v26 = v25[7];
  v27 = sub_1DD874FA0();
  v28 = v2;
  sub_1DD6E0C90();
  sub_1DD6E5E68(v29, v30, v31, v27);
  v33 = v4[3];
  v32 = v4[4];
  v52 = v4;
  sub_1DD824794();
  sub_1DD807460();
  sub_1DD6E4218();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1EC8(v4);
    sub_1DD824154(v28 + v26, &qword_1ECD121B8);
  }

  else
  {
    sub_1DD825188();
    v34 = v28;
    *v28 = sub_1DD875870();
    *(v28 + 8) = v35;
    sub_1DD824CE8();
    *(v28 + 16) = sub_1DD875850();
    *(v28 + 24) = v36 & 1;
    sub_1DD6E0FF8();
    sub_1DD826250();
    sub_1DD6E1E84(v37);
    sub_1DD827008();
    sub_1DD8758D0();
    v38 = v50[6];
    sub_1DD6DEAF4();
    sub_1DD6E59B8();
    sub_1DD6E6174();
    sub_1DD6E05D4();
    sub_1DD6E1E84(v39);
    sub_1DD826E4C();
    sub_1DD6E710C();
    sub_1DD875860();
    sub_1DD807414();
    sub_1DD82636C();
    v40 = sub_1DD875820();
    v41 = (v28 + v50[8]);
    *v41 = v40;
    v41[1] = v42;
    sub_1DD8267FC();
    v43 = sub_1DD875820();
    v51 = v44;
    v45 = v43;
    v46 = (v34 + v50[9]);
    (*(v48 + 8))(v1, v49);
    *v46 = v45;
    v46[1] = v51;
    sub_1DD6E5870();
    sub_1DD6E1EC8(v52);
    sub_1DD82579C();
    sub_1DD6E5ABC();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t ParameterDisambiguation.parameterId.setter()
{
  sub_1DD6DE304();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

void ParameterDisambiguation.items.getter()
{
  sub_1DD6DEB38();
  v2 = type metadata accessor for AttributedValue(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1DD6ED3C0();
  v5 = sub_1DD874FA0();
  v6 = sub_1DD6DDEAC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD824734();
  v11 = *(v0 + 32);
  v12 = *(v11 + 16);
  if (v12)
  {
    sub_1DD827134();
    v13 = v24;
    v14 = *(v3 + 80);
    sub_1DD6E17FC();
    sub_1DD826FC0();
    do
    {
      sub_1DD825C74();
      sub_1DD6E5870();
      v15 = *v1;
      v16 = sub_1DD6E40D8();
      v17(v16);
      sub_1DD6E8904();
      sub_1DD6E5ABC();
      sub_1DD8273FC();
      if (v18)
      {
        sub_1DD76C51C();
        v13 = v24;
      }

      *(v13 + 16) = v3;
      v19 = *(v8 + 80);
      sub_1DD825744();
      v21 = sub_1DD826AF0(v20);
      v22(v21);
      v11 += v23;
      --v12;
    }

    while (v12);
  }

  sub_1DD6DFED0();
}

void sub_1DD7EFEBC(uint64_t *a1)
{
  v1 = *a1;

  ParameterDisambiguation.items.setter();
}

void ParameterDisambiguation.items.setter()
{
  sub_1DD6DEB38();
  v4 = v3;
  v22 = type metadata accessor for AttributedValue(0);
  v5 = sub_1DD6DDEAC(v22);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E2220();
  v10 = *(v4 + 16);
  if (v10)
  {
    v21 = v0;
    sub_1DD8264BC(MEMORY[0x1E69E7CC0]);
    v11 = v25;
    v24 = sub_1DD874FA0();
    sub_1DD6DE1C4(v24);
    v23 = *(v12 + 16);
    v13 = v4 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v14 = *(v12 + 72);
    v15 = v22;
    do
    {
      v16 = sub_1DD8257C8();
      v23(v16);
      sub_1DD824F9C((v1 + *(v15 + 20)));
      sub_1DD827678();
      if (v17)
      {
        sub_1DD826584();
        v15 = v22;
        v11 = v25;
      }

      *(v11 + 16) = v2;
      v18 = *(v7 + 80);
      sub_1DD6E17FC();
      v19 = *(v7 + 72);
      sub_1DD6DEAF4();
      sub_1DD6E59B8();
      v13 += v14;
      --v10;
    }

    while (v10);

    v0 = v21;
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v20 = *(v0 + 32);

  *(v0 + 32) = v11;
  sub_1DD6DFED0();
}

void (*ParameterDisambiguation.items.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  ParameterDisambiguation.items.getter();
  *a1 = v3;
  return sub_1DD7F00E0;
}

void sub_1DD7F00E0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    ParameterDisambiguation.items.setter();
  }

  else
  {
    v5 = *a1;
    ParameterDisambiguation.items.setter();
  }
}

uint64_t ParameterDisambiguation.attributedValues.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t ParameterDisambiguation.itemDescriptions.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t ParameterDisambiguation.propertyIdForItemDescriptions.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return sub_1DD6DDEFC();
}

uint64_t ParameterDisambiguation.propertyIdForItemDescriptions.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t ParameterDisambiguation.init(parameterId:parameterIndex:attributedValues:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 48) = 0;
  *(a6 + 56) = 0;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  *(a6 + 32) = a5;
  *(a6 + 40) = 0;
  return result;
}

void ParameterDisambiguation.init(parameterId:parameterIndex:items:)()
{
  sub_1DD6DEB38();
  v6 = v5;
  v8 = v7;
  sub_1DD8257B8();
  v9 = sub_1DD6E0A5C();
  v28 = type metadata accessor for AttributedValue(v9);
  v10 = sub_1DD6DDEAC(v28);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6E6200();
  v15 = *(v6 + 16);
  if (v15)
  {
    v25 = v2;
    v26 = v1;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1DD76C574();
    v27 = sub_1DD874FA0();
    sub_1DD6DE1C4(v27);
    v17 = *(v16 + 16);
    v18 = v6 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v19 = *(v16 + 72);
    do
    {
      v20 = sub_1DD6FAA70();
      v17(v20);
      sub_1DD824F9C((v4 + *(v28 + 20)));
      v22 = *(v29 + 16);
      v21 = *(v29 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1DD705C8C(v21);
        sub_1DD76C574();
      }

      *(v29 + 16) = v22 + 1;
      v23 = *(v12 + 80);
      sub_1DD825744();
      v24 = *(v12 + 72);
      sub_1DD6DEAF4();
      sub_1DD6E59B8();
      v18 += v19;
      --v15;
    }

    while (v15);

    v1 = v26;
    v2 = v25;
  }

  else
  {
  }

  *v0 = v3;
  v0[1] = v2;
  v0[2] = v1;
  sub_1DD827664(v8 & 1);
  sub_1DD6DFED0();
}

void ParameterDisambiguation.init(parameterId:items:)()
{
  sub_1DD6DEB38();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1DD6E0A5C();
  v26 = type metadata accessor for AttributedValue(v8);
  v9 = sub_1DD6DDEAC(v26);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DE4A8();
  sub_1DD700C78();
  v14 = *(v3 + 16);
  if (v14)
  {
    v24 = v5;
    v27 = MEMORY[0x1E69E7CC0];
    sub_1DD76C574();
    v25 = sub_1DD874FA0();
    sub_1DD6DE1C4(v25);
    v16 = *(v15 + 16);
    v17 = v3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v18 = *(v15 + 72);
    do
    {
      v16(v1, v17, v25);
      sub_1DD8275F4(v26);
      sub_1DD824F9C(v19);
      v21 = *(v27 + 16);
      v20 = *(v27 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1DD705C8C(v20);
        sub_1DD76C574();
      }

      *(v27 + 16) = v21 + 1;
      v22 = *(v11 + 80);
      sub_1DD825744();
      v23 = *(v11 + 72);
      sub_1DD6DEAF4();
      sub_1DD6E59B8();
      v17 += v18;
      --v14;
    }

    while (v14);

    v5 = v24;
  }

  else
  {
  }

  *v0 = v7;
  v0[1] = v5;
  v0[2] = 0;
  sub_1DD827664(1);
  sub_1DD6DFED0();
}

void ParameterDisambiguation.init(parameterId:items:itemDescriptions:propertyIdForItemDescription:)()
{
  sub_1DD6DEB38();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v37 = type metadata accessor for AttributedValue(0);
  v15 = sub_1DD6DDEAC(v37);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6ED3C0();
  v20 = *(v8 + 16);
  if (v20)
  {
    v32 = v12;
    v33 = v10;
    v34 = v6;
    v35 = v2;
    v38 = MEMORY[0x1E69E7CC0];
    v21 = v8;
    sub_1DD76C574();
    v22 = v38;
    v36 = sub_1DD874FA0();
    sub_1DD6DE1C4(v36);
    v24 = *(v23 + 16);
    v25 = v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v26 = *(v23 + 72);
    do
    {
      v27 = sub_1DD825C04();
      v24(v27);
      sub_1DD824F9C((v0 + *(v37 + 20)));
      v29 = *(v38 + 16);
      v28 = *(v38 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1DD705C8C(v28);
        sub_1DD76C574();
      }

      *(v38 + 16) = v29 + 1;
      v30 = *(v17 + 80);
      sub_1DD825744();
      v31 = *(v17 + 72);
      sub_1DD6DEAF4();
      sub_1DD6E59B8();
      v25 += v26;
      --v20;
    }

    while (v20);

    v2 = v35;
    v6 = v34;
    v12 = v32;
    v10 = v33;
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  *v14 = v12;
  *(v14 + 8) = v10;
  *(v14 + 16) = 0;
  *(v14 + 24) = 1;
  *(v14 + 32) = v22;
  *(v14 + 40) = v6;
  *(v14 + 48) = v4;
  *(v14 + 56) = v2;
  sub_1DD6DFED0();
}

uint64_t sub_1DD7F07F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6574656D61726170 && a2 == 0xEB00000000644972;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574656D61726170 && a2 == 0xEE007865646E4972;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001DD8B7470 == a2;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001DD8B7490 == a2;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD00000000000001DLL && 0x80000001DD8B74B0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DD875A30();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1DD7F09A4(char a1)
{
  result = 0x6574656D61726170;
  switch(a1)
  {
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7F0A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7F07F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7F0A80(uint64_t a1)
{
  v2 = sub_1DD8074B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F0ABC(uint64_t a1)
{
  v2 = sub_1DD8074B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ParameterDisambiguation.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD13228, &qword_1DD88A600);
  sub_1DD6DDEAC(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEA6C();
  v9 = *v0;
  v8 = v0[1];
  sub_1DD826A64();
  v18 = *(v0 + 24);
  v16 = v0[5];
  v17 = v0[4];
  v14 = v0[7];
  v15 = v0[6];
  v10 = v3[3];
  v11 = v3[4];
  sub_1DD6E6C94(v3);
  sub_1DD8074B4();
  sub_1DD6E17D8();
  sub_1DD6DFF18();
  sub_1DD875BB0();
  sub_1DD6DDEDC();
  sub_1DD875970();
  if (!v1)
  {
    sub_1DD701464();
    sub_1DD6DE334();
    sub_1DD875950();
    sub_1DD705DE4();
    sub_1DD710A9C(&qword_1ECD13238, &qword_1DD88A608);
    sub_1DD807508();
    sub_1DD825BAC();
    sub_1DD6FF6E0();
    sub_1DD8759D0();
    sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
    sub_1DD824C1C(&unk_1EE015DC0);
    sub_1DD825BAC();
    sub_1DD6FF6E0();
    sub_1DD875960();
    sub_1DD6E594C();
    sub_1DD6DE334();
    sub_1DD875920();
  }

  v12 = sub_1DD825B08();
  v13(v12, v4);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void ParameterDisambiguation.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD6E6390();
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD13248, &qword_1DD88A610);
  sub_1DD6DDEAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6E7258();
  v11 = v0[3];
  v12 = v0[4];
  sub_1DD824D14(v0);
  sub_1DD8074B4();
  sub_1DD825968();
  sub_1DD826F60();
  sub_1DD875B90();
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD825ACC();
    v13 = sub_1DD875870();
    v26 = v14;
    LOBYTE(v31[0]) = 1;
    sub_1DD825ACC();
    v15 = sub_1DD875850();
    v37 = v16 & 1;
    sub_1DD710A9C(&qword_1ECD13238, &qword_1DD88A608);
    sub_1DD8075BC();
    sub_1DD825198();
    sub_1DD825ACC();
    sub_1DD8758D0();
    v25 = v31[0];
    sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
    LOBYTE(v27) = 3;
    sub_1DD6FF744(&qword_1EE015DB8);
    sub_1DD825198();
    sub_1DD825ACC();
    sub_1DD875860();
    v24 = v15;
    v17 = v31[0];
    sub_1DD6E70D8();
    sub_1DD825ACC();
    v18 = sub_1DD875820();
    v19 = v2;
    v21 = v20;
    (*(v7 + 8))(v19, v5);
    *&v27 = v13;
    *(&v27 + 1) = v26;
    *&v28 = v24;
    BYTE8(v28) = v37;
    *&v29 = v31[0];
    *(&v29 + 1) = v31[0];
    *&v30 = v18;
    *(&v30 + 1) = v21;
    v22 = v30;
    v4[2] = v29;
    v4[3] = v22;
    v23 = v28;
    *v4 = v27;
    v4[1] = v23;
    sub_1DD807670(&v27, v31);
    sub_1DD6E1EC8(v0);
    v31[0] = v13;
    v31[1] = v26;
    v31[2] = v24;
    v32 = v37;
    v33 = v25;
    v34 = v17;
    v35 = v18;
    v36 = v21;
    sub_1DD80040C(v31);
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

void ValueDisambiguation.items.getter()
{
  sub_1DD6DEB38();
  v2 = type metadata accessor for AttributedValue(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1DD6ED3C0();
  v5 = sub_1DD874FA0();
  v6 = sub_1DD6DDEAC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD824734();
  v11 = *v0;
  v12 = *(*v0 + 16);
  if (v12)
  {
    sub_1DD827134();
    v13 = v24;
    v14 = *(v3 + 80);
    sub_1DD6E17FC();
    sub_1DD826FC0();
    do
    {
      sub_1DD825C74();
      sub_1DD6E5870();
      v15 = *v1;
      v16 = sub_1DD6E40D8();
      v17(v16);
      sub_1DD6E8904();
      sub_1DD6E5ABC();
      sub_1DD8273FC();
      if (v18)
      {
        sub_1DD76C51C();
        v13 = v24;
      }

      *(v13 + 16) = v3;
      v19 = *(v8 + 80);
      sub_1DD825744();
      v21 = sub_1DD826AF0(v20);
      v22(v21);
      v11 += v23;
      --v12;
    }

    while (v12);
  }

  sub_1DD6DFED0();
}

void sub_1DD7F11FC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  ValueDisambiguation.items.getter();
  *a2 = v3;
}

void sub_1DD7F1238(uint64_t *a1)
{
  v1 = *a1;

  ValueDisambiguation.items.setter();
}

void ValueDisambiguation.items.setter()
{
  sub_1DD6DEB38();
  v4 = v3;
  v22 = type metadata accessor for AttributedValue(0);
  v5 = sub_1DD6DDEAC(v22);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E2220();
  v10 = *v0;

  v11 = *(v4 + 16);
  if (v11)
  {
    v21 = v0;
    sub_1DD8264BC(MEMORY[0x1E69E7CC0]);
    v12 = v25;
    v24 = sub_1DD874FA0();
    sub_1DD6DE1C4(v24);
    v23 = *(v13 + 16);
    v14 = v4 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v15 = *(v13 + 72);
    v16 = v22;
    do
    {
      v17 = sub_1DD8257C8();
      v23(v17);
      sub_1DD824F9C((v1 + *(v16 + 20)));
      sub_1DD827678();
      if (v18)
      {
        sub_1DD826584();
        v16 = v22;
        v12 = v25;
      }

      *(v12 + 16) = v2;
      v19 = *(v7 + 80);
      sub_1DD6E17FC();
      v20 = *(v7 + 72);
      sub_1DD6DEAF4();
      sub_1DD6E59B8();
      v14 += v15;
      --v11;
    }

    while (v11);

    v0 = v21;
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  *v0 = v12;
  sub_1DD6DFED0();
}

void (*ValueDisambiguation.items.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v5 = *v1;
  ValueDisambiguation.items.getter();
  *a1 = v3;
  return sub_1DD7F1454;
}

void sub_1DD7F1454(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    ValueDisambiguation.items.setter();
  }

  else
  {
    v5 = *a1;
    ValueDisambiguation.items.setter();
  }
}

IntelligenceFlow::ValueDisambiguation __swiftcall ValueDisambiguation.init(items:)(Swift::OpaquePointer items)
{
  sub_1DD6DEB38();
  v4 = v3;
  v5 = sub_1DD6E0A5C();
  v24 = type metadata accessor for AttributedValue(v5);
  v6 = sub_1DD6DDEAC(v24);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6E2220();
  v11 = *(v4 + 16);
  if (v11)
  {
    v22 = v1;
    sub_1DD8264BC(MEMORY[0x1E69E7CC0]);
    v12 = v25;
    v23 = sub_1DD874FA0();
    sub_1DD6DE1C4(v23);
    v14 = *(v13 + 16);
    v15 = v4 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v16 = *(v13 + 72);
    do
    {
      v17 = sub_1DD8257C8();
      v14(v17);
      sub_1DD824F9C((v2 + *(v24 + 20)));
      v18 = *(v25 + 16);
      if (v18 >= *(v25 + 24) >> 1)
      {
        sub_1DD826584();
      }

      *(v25 + 16) = v18 + 1;
      v19 = *(v8 + 80);
      sub_1DD825744();
      v20 = *(v8 + 72);
      sub_1DD6DEAF4();
      sub_1DD6E59B8();
      v15 += v16;
      --v11;
    }

    while (v11);

    v1 = v22;
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  *v1 = v12;
  sub_1DD6DFED0();
  return result;
}

uint64_t sub_1DD7F1658(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001DD8B7470 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7F16F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7F1658(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7F1724(uint64_t a1)
{
  v2 = sub_1DD8076A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7F1760(uint64_t a1)
{
  v2 = sub_1DD8076A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ValueDisambiguation.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD13258, &qword_1DD88A618);
  sub_1DD6E49A8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DE340();
  v9 = *v0;
  v10 = v2[3];
  v11 = v2[4];
  sub_1DD6E6C94(v2);
  sub_1DD8076A8();

  sub_1DD8256E0();
  sub_1DD6DFF18();
  sub_1DD875BB0();
  sub_1DD710A9C(&qword_1ECD13238, &qword_1DD88A608);
  sub_1DD807508();
  sub_1DD8262B0();
  sub_1DD824BEC();
  sub_1DD8759D0();
  sub_1DD827394();

  v12 = *(v5 + 8);
  v13 = sub_1DD6E40D8();
  v14(v13);
  sub_1DD825AC0();
  sub_1DD6E0C78();
}

void ValueDisambiguation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DD6DED2C();
  sub_1DD70068C();
  v13 = v12;
  v14 = sub_1DD710A9C(&qword_1ECD13268, &qword_1DD88A620);
  sub_1DD6E125C(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DEBA0();
  sub_1DD6DE568();
  sub_1DD8076A8();
  sub_1DD6E4218();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (!v11)
  {
    sub_1DD710A9C(&qword_1ECD13238, &qword_1DD88A608);
    sub_1DD8075BC();
    sub_1DD825118();
    sub_1DD6FAC28();
    sub_1DD8758D0();
    v20 = *(v16 + 8);
    v21 = sub_1DD6DDEDC();
    v22(v21);
    *v13 = a10;
  }

  sub_1DD6E1EC8(v10);
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t ParameterNotAllowed.value.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ParameterNotAllowed(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t ParameterNotAllowed.reason.getter()
{
  v2 = sub_1DD6E0A5C();
  result = type metadata accessor for ParameterNotAllowed(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t ParameterNotAllowed.reason.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ParameterNotAllowed(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t ParameterNotAllowed.reason.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ParameterNotAllowed(v0) + 24);
  return sub_1DD6DDF9C();
}

IntelligenceFlow::ParameterNotAllowed::Reason_optional __swiftcall ParameterNotAllowed.Reason.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1DD7F1BA8@<X0>(uint64_t *a1@<X8>)
{
  result = ParameterNotAllowed.Reason.rawValue.getter();
  *a1 = result;
  return result;
}
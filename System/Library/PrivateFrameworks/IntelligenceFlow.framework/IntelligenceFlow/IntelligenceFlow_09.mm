uint64_t sub_1DD7A04CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C626169726176 && a2 == 0xE900000000000073;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F4D797465666173 && a2 == 0xEA00000000006564;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6269726373657270 && a2 == 0xEE006E616C506465;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000016 && 0x80000001DD8B6500 == a2;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x80000001DD8B6520 == a2;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000013 && 0x80000001DD8B6540 == a2;
              if (v11 || (sub_1DD875A30() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000012 && 0x80000001DD8B64E0 == a2)
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

unint64_t sub_1DD7A0764(char a1)
{
  result = 0x746E65746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x656C626169726176;
      break;
    case 2:
      result = 0x6F4D797465666173;
      break;
    case 3:
      result = 0x6269726373657270;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7A0874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7A04CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7A089C(uint64_t a1)
{
  v2 = sub_1DD7FD144();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A08D8(uint64_t a1)
{
  v2 = sub_1DD7FD144();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.Request.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v23;
  a20 = v24;
  sub_1DD6E86E0();
  v25 = sub_1DD710A9C(&qword_1ECD10E48, &unk_1DD889250);
  sub_1DD6E49A8(v25);
  v27 = *(v26 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD7FD144();
  sub_1DD6E1808();
  LOBYTE(v54) = 0;
  type metadata accessor for MessagePayload.RequestContent(0);
  sub_1DD6F4434();
  sub_1DD6E1E84(v29);
  sub_1DD6E9630();
  sub_1DD8759D0();
  if (!v20)
  {
    v30 = type metadata accessor for MessagePayload.Request(0);
    sub_1DD825AA8(v30);
    *&v54 = *(v21 + v31);
    LOBYTE(v51) = 1;
    sub_1DD710A9C(&qword_1ECD10E58, &qword_1DD8AED90);
    sub_1DD7FD198();
    sub_1DD6E9630();
    sub_1DD875960();
    v32 = *(v21 + v22[6]);
    sub_1DD705DE4();
    sub_1DD6E5334();
    sub_1DD875980();
    v33 = (v21 + v22[7]);
    v34 = v33[1];
    v54 = *v33;
    v55 = v34;
    v36 = *v33;
    v35 = v33[1];
    v56[0] = v33[2];
    *(v56 + 9) = *(v33 + 41);
    v51 = v36;
    v52 = v35;
    v53[0] = v33[2];
    *(v53 + 9) = *(v33 + 41);
    v50[63] = 3;
    sub_1DD700E60();
    sub_1DD7FD254();
    sub_1DD6E5334();
    sub_1DD875960();
    sub_1DD8268A0();
    sub_1DD824154(v50, &unk_1ECD10E28);
    v37 = v22[8];
    sub_1DD874820();
    sub_1DD6E14DC();
    sub_1DD6E1E84(v38);
    sub_1DD8262A4();
    sub_1DD6E9630();
    sub_1DD875960();
    v47 = sub_1DD6F8CE0(v22[9]);
    v49 = *(v39 + 16);
    sub_1DD6FF5F4(v47, v40);
    sub_1DD6FF638();
    sub_1DD6E5334();
    sub_1DD875960();
    sub_1DD6F4468(&a14);
    v41 = (v21 + v22[10]);
    v42 = v41[1];
    v48 = *v41;
    sub_1DD7FD2A8();
    sub_1DD6E5E30();

    sub_1DD6DE334();
    sub_1DD875960();

    v43 = v22[11];
    sub_1DD874B70();
    sub_1DD6EEDA4();
    sub_1DD6E1E84(v44);
    sub_1DD6E9630();
    sub_1DD875960();
  }

  v45 = sub_1DD6EFFB4();
  v46(v45);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void MessagePayload.Request.init(from:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD10D50, &qword_1DD8891D0);
  sub_1DD6DEA10(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v8);
  v9 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v9);
  v11 = *(v10 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6E0C6C();
  v14 = sub_1DD6ED230(v13);
  v15 = type metadata accessor for MessagePayload.RequestContent(v14);
  v16 = sub_1DD6DE1C4(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v19);
  v20 = sub_1DD710A9C(&qword_1ECD10E78, &qword_1DD889260);
  sub_1DD6DF3FC(v20, &v75);
  v22 = *(v21 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1DD6DE340();
  v24 = type metadata accessor for MessagePayload.Request(0);
  v25 = sub_1DD6DE1C4(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD8247F4();
  v29 = (v1 + *(v28 + 28));
  sub_1DD8269C8();
  v31 = *(v30 + 32);
  v32 = sub_1DD874820();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v33, v34, v35, v32);
  v36 = (v1 + v24[9]);
  *v36 = 0;
  v36[1] = 0;
  v65 = v36;
  v36[2] = 0;
  v37 = (v1 + v24[10]);
  *v37 = 0;
  v37[1] = 0;
  v64 = v37;
  v38 = v24[11];
  v39 = sub_1DD874B70();
  v77 = v1;
  sub_1DD6E0C90();
  sub_1DD6E5E68(v40, v41, v42, v39);
  v44 = v3[3];
  v43 = v3[4];
  sub_1DD6FE8B0(v3);
  sub_1DD7FD144();
  sub_1DD8256E0();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD826A00();
    v46 = sub_1DD826894();
    sub_1DD6E1EC8(v46);

    v47 = v29[1];
    v74 = *v29;
    v75 = v47;
    v76[0] = v29[2];
    *(v76 + 9) = *(v29 + 41);
    sub_1DD824154(&v74, &unk_1ECD10E28);
    sub_1DD824154(v24 + v77, &qword_1ECD0E540);
    v48 = sub_1DD826718();
    sub_1DD6FE2E0(v48, v49);
    v50 = v64[1];

    sub_1DD700C6C();
    sub_1DD824154(v77 + v51, v52);
  }

  else
  {
    LOBYTE(v74) = 0;
    sub_1DD6F4434();
    sub_1DD6E1E84(v45);
    sub_1DD8269BC(&v74);
    sub_1DD6E99D8();
    sub_1DD8758D0();
    sub_1DD6E59B8();
    sub_1DD710A9C(&qword_1ECD10E58, &qword_1DD8AED90);
    LOBYTE(v71[0]) = 1;
    sub_1DD7FD2FC();
    sub_1DD826A88();
    sub_1DD6E99D8();
    sub_1DD875860();
    *(v77 + v24[5]) = v74;
    sub_1DD826FF0();
    v53 = sub_1DD875880();
    sub_1DD827578(v53);
    v73 = v54;
    sub_1DD7FD3B8();
    sub_1DD6E99D8();
    sub_1DD875860();
    v68 = v74;
    v69 = v75;
    *v70 = v76[0];
    *&v70[9] = *(v76 + 9);
    v55 = v29[1];
    v71[0] = *v29;
    v71[1] = v55;
    *v72 = v29[2];
    *&v72[9] = *(v29 + 41);
    sub_1DD824154(v71, &unk_1ECD10E28);
    *v29 = v68;
    v29[1] = v69;
    v29[2] = *v70;
    *(v29 + 41) = *&v70[9];
    LOBYTE(v66) = 4;
    sub_1DD6E14DC();
    sub_1DD6E1E84(v56);
    sub_1DD8256D4(&v72[24]);
    sub_1DD6E99D8();
    sub_1DD875860();
    sub_1DD826A00();
    sub_1DD807414();
    sub_1DD700CAC();
    sub_1DD6E99D8();
    sub_1DD875860();
    v57 = sub_1DD826718();
    sub_1DD6FE2E0(v57, v58);
    *v65 = v66;
    v65[2] = v67;
    sub_1DD7FD40C();
    sub_1DD6E99D8();
    sub_1DD875860();
    sub_1DD826E88();
    v59 = v64[1];

    *v64 = v66;
    v64[1] = v3;
    sub_1DD6EEDA4();
    sub_1DD6E1E84(v60);
    sub_1DD79A3A4();
    sub_1DD6E99D8();
    sub_1DD875860();
    v61 = sub_1DD6FFA00(&v74 + 8);
    v62(v61);
    sub_1DD700C6C();
    sub_1DD807414();
    sub_1DD70131C();
    sub_1DD6E5870();
    v63 = sub_1DD826894();
    sub_1DD6E1EC8(v63);
    sub_1DD8259F8();
    sub_1DD6E5ABC();
  }

  sub_1DD6F9B18();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7A155C(uint64_t a1)
{
  v2 = sub_1DD7FD460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A1598(uint64_t a1)
{
  v2 = sub_1DD7FD460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7A1650(uint64_t a1)
{
  v2 = sub_1DD6FE130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A168C(uint64_t a1)
{
  v2 = sub_1DD6FE130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessagePayload.RequestContent.SpeechContent.init(text:speechPackage:preITNSpeechPackage:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v5 = *a3;
  v6 = *a4;
  *a5 = result;
  a5[1] = a2;
  a5[2] = v5;
  a5[3] = v6;
  return result;
}

uint64_t MessagePayload.RequestContent.SpeechContent.init(text:speechPackage:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  a4[1] = a2;
  a4[2] = v4;
  a4[3] = 0;
  return result;
}

uint64_t sub_1DD7A1744(uint64_t a1)
{
  v2 = sub_1DD7FD4B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A1780(uint64_t a1)
{
  v2 = sub_1DD7FD4B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.RequestContent.SpeechContent.Candidate.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  v0 = sub_1DD710A9C(&qword_1ECD10EB8, &qword_1DD889280);
  sub_1DD6E125C(v0);
  v2 = *(v1 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD7FD4B4();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v4 = sub_1DD6FF808();
  v5(v4);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7A190C(uint64_t *a1)
{
  v1 = *a1;

  return MessagePayload.RequestContent.SpeechContent.candidates.setter(v2);
}

uint64_t MessagePayload.RequestContent.SpeechContent.init(candidates:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (a1[2])
  {
    v4 = a1[4];
    v3 = a1[5];
  }

  else
  {
    v4 = 0;
    v3 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v3;
  a2[2] = 0;
  a2[3] = 0;
  return result;
}

BOOL static MessagePayload.RequestContent.SpeechContent.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = v3[2];
  v5 = v3[3];
  v7 = v2[2];
  v6 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  if (!v8 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7)
    {
      goto LABEL_18;
    }

    v9 = sub_1DD6E0C60();
    if ((sub_1DD716910(v9, v10) & 1) == 0)
    {
      return 0;
    }

    if (v5)
    {
LABEL_10:
      if (v6)
      {
        v11 = sub_1DD6E21D0();
        return (sub_1DD716910(v11, v12) & 1) != 0;
      }

LABEL_18:

      return 0;
    }
  }

  else
  {
    if (v7)
    {
      goto LABEL_18;
    }

    if (v5)
    {
      goto LABEL_10;
    }
  }

  if (v6)
  {
    goto LABEL_18;
  }

  return 1;
}

uint64_t sub_1DD7A1AB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6150686365657073 && a2 == 0xED00006567616B63;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000013 && 0x80000001DD8B6560 == a2)
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

uint64_t sub_1DD7A1BD4(char a1)
{
  if (!a1)
  {
    return 1954047348;
  }

  if (a1 == 1)
  {
    return 0x6150686365657073;
  }

  return 0xD000000000000013;
}

uint64_t sub_1DD7A1C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7A1AB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7A1C64(uint64_t a1)
{
  v2 = sub_1DD7FD508();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A1CA0(uint64_t a1)
{
  v2 = sub_1DD7FD508();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.RequestContent.SpeechContent.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD10ED0, &qword_1DD889290);
  sub_1DD6E49A8(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEA6C();
  v8 = *v0;
  v9 = v0[1];
  v14 = v0[3];
  v15 = v0[2];
  v11 = v3[3];
  v10 = v3[4];
  sub_1DD6FE770(v3);
  sub_1DD7FD508();
  sub_1DD6E17D8();
  sub_1DD875BB0();
  sub_1DD6F9BF8();
  sub_1DD825668();
  sub_1DD875970();
  if (!v1)
  {
    sub_1DD82682C();
    sub_1DD7FD55C();

    sub_1DD6DE334();
    sub_1DD875960();

    sub_1DD705DE4();

    sub_1DD6DE334();
    sub_1DD875960();
  }

  v12 = sub_1DD6FF768();
  v13(v12);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void MessagePayload.RequestContent.SpeechContent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DD6DED2C();
  sub_1DD8255B0();
  v13 = sub_1DD710A9C(&qword_1ECD10EE8, &qword_1DD889298);
  sub_1DD6E125C(v13);
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6E7258();
  v17 = v10[3];
  v18 = v10[4];
  sub_1DD6E49C0(v10);
  sub_1DD7FD508();
  sub_1DD825968();
  sub_1DD827908();
  if (v11)
  {
    sub_1DD6E1EC8(v10);
  }

  else
  {
    LOBYTE(a10) = 0;
    sub_1DD825560();
    v22 = sub_1DD875870();
    v23 = v19;
    sub_1DD82682C();
    sub_1DD7FD5B0();
    sub_1DD6E710C();
    sub_1DD825ACC();
    sub_1DD875860();
    sub_1DD705DE4();
    sub_1DD6E710C();
    sub_1DD826118();
    sub_1DD875860();
    v20 = sub_1DD6E0E30();
    v21(v20);
    *v12 = v22;
    v12[1] = v23;
    v12[2] = a10;
    v12[3] = a10;

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

void static SystemPromptResolution.== infix(_:_:)()
{
  sub_1DD6DEB38();
  sub_1DD6ED7A4();
  v3 = sub_1DD874820();
  v4 = sub_1DD6DDEAC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6E535C();
  v9 = sub_1DD6ED130();
  v11 = sub_1DD710A9C(v9, v10);
  sub_1DD6DEA10(v11);
  v13 = *(v12 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DEBA0();
  v15 = sub_1DD710A9C(&qword_1ECD10E30, &qword_1DD889238);
  sub_1DD6DEA10(v15);
  v17 = *(v16 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DE340();
  v20 = *(v19 + 56);
  sub_1DD6FF97C();
  sub_1DD82598C();
  sub_1DD700E60();
  sub_1DD82598C();
  sub_1DD700E60();
  sub_1DD6E26E4(v2);
  if (!v21)
  {
    sub_1DD6EFF74();
    sub_1DD700E60();
    sub_1DD6E26E4(v2 + v20);
    if (!v21)
    {
      v25 = sub_1DD8252A0();
      v26(v25);
      sub_1DD6E14DC();
      sub_1DD6E1E84(v27);
      sub_1DD6E60FC();
      v28 = sub_1DD8750F0();
      v29 = *(v6 + 8);
      v30 = sub_1DD770D4C();
      v29(v30);
      v31 = sub_1DD8258C4();
      v29(v31);
      sub_1DD824154(v2, &qword_1ECD0E540);
      if ((v28 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_11;
    }

    v22 = *(v6 + 8);
    v23 = sub_1DD8258C4();
    v24(v23);
LABEL_9:
    sub_1DD824154(v2, &qword_1ECD10E30);
    goto LABEL_24;
  }

  sub_1DD6E26E4(v2 + v20);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_1DD824154(v2, &qword_1ECD0E540);
LABEL_11:
  v32 = type metadata accessor for SystemPromptResolution(0);
  sub_1DD826E64(v32[5]);
  if ((_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_1DD826E64(v32[6]);
  static SystemPromptResolution.UserAction.== infix(_:_:)();
  if ((v33 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_1DD825240((v1 + v32[7]));
  if (!v21)
  {
    goto LABEL_24;
  }

  sub_1DD826E58(v34);
  if (!v37)
  {
    if (v35)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (v35)
  {
    sub_1DD825B9C(v36);
    v40 = v21 && v38 == v39;
    if (v40 || (sub_1DD875A30() & 1) != 0)
    {
LABEL_22:
      v41 = v1 + v32[8];
      v42 = *(v41 + 8);
      v43 = *(v41 + 16);
      v44 = *(v41 + 24);
      v45 = *(v41 + 32);
      v69[0] = *v41;
      v69[1] = v42;
      v69[2] = v43;
      v69[3] = v44;
      v70 = v45;
      v46 = v0 + v32[8];
      v47 = *(v46 + 8);
      v48 = *(v46 + 16);
      v49 = *(v46 + 24);
      v50 = *(v46 + 32);
      v67[0] = *v46;
      v67[1] = v47;
      v67[2] = v48;
      v67[3] = v49;
      v68 = v50;
      sub_1DD6E65D0();
      sub_1DD7FD604(v51, v52, v53, v54, v45);
      sub_1DD826680();
      sub_1DD702AB4();
      sub_1DD7FD604(v55, v56, v57, v58, v50);
      static SystemPromptResolution.ResolutionInput.== infix(_:_:)(v69, v67);
      sub_1DD826680();
      sub_1DD702AB4();
      sub_1DD7FD670(v59, v60, v61, v62, v50);
      sub_1DD6E65D0();
      sub_1DD7FD670(v63, v64, v65, v66, v45);
    }
  }

LABEL_24:
  sub_1DD6DFED0();
}

uint64_t sub_1DD7A23E8(uint64_t a1)
{
  v2 = sub_1DD6FDD68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A2424(uint64_t a1)
{
  v2 = sub_1DD6FDD68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7A2460(uint64_t a1)
{
  v2 = sub_1DD7FD6DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A249C(uint64_t a1)
{
  v2 = sub_1DD7FD6DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7A24D8(uint64_t a1)
{
  v2 = sub_1DD7FD730();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A2514(uint64_t a1)
{
  v2 = sub_1DD7FD730();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7A2550(uint64_t a1)
{
  v2 = sub_1DD7FD7D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A258C(uint64_t a1)
{
  v2 = sub_1DD7FD7D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7A25C8(uint64_t a1)
{
  v2 = sub_1DD6FDF68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A2604(uint64_t a1)
{
  v2 = sub_1DD6FDF68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessagePayload.RequestPrescribedPlan.SearchTool.query.setter()
{
  sub_1DD6DE304();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

IntelligenceFlow::MessagePayload::RequestPrescribedPlan::SearchTool __swiftcall MessagePayload.RequestPrescribedPlan.SearchTool.init(query:isLowConfidenceKnowledge:shouldOpenResultIfApplicable:)(IntelligenceFlow::MessagePayload::RequestPrescribedPlan::SearchTool query, Swift::Bool isLowConfidenceKnowledge, Swift::Bool shouldOpenResultIfApplicable)
{
  *v3 = query.query;
  *(v3 + 16) = isLowConfidenceKnowledge;
  *(v3 + 17) = shouldOpenResultIfApplicable;
  query.isLowConfidenceKnowledge = isLowConfidenceKnowledge;
  return query;
}

IntelligenceFlow::MessagePayload::RequestPrescribedPlan::SearchTool __swiftcall MessagePayload.RequestPrescribedPlan.SearchTool.init(query:isLowConfidenceKnowledge:)(IntelligenceFlow::MessagePayload::RequestPrescribedPlan::SearchTool query, Swift::Bool isLowConfidenceKnowledge)
{
  *v2 = query.query;
  *(v2 + 16) = isLowConfidenceKnowledge;
  *(v2 + 17) = 0;
  query.isLowConfidenceKnowledge = isLowConfidenceKnowledge;
  return query;
}

uint64_t static MessagePayload.RequestPrescribedPlan.SearchTool.== infix(_:_:)(uint64_t a1)
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
  if ((v10 & 1) != 0 && ((v3 ^ v4) & 1) == 0)
  {
    return v1 ^ v2 ^ 1u;
  }

  return result;
}

uint64_t sub_1DD7A278C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x80000001DD8B65A0 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001CLL && 0x80000001DD8B65C0 == a2)
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

uint64_t sub_1DD7A28A4(char a1)
{
  if (!a1)
  {
    return 0x7972657571;
  }

  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return 0xD00000000000001CLL;
}

uint64_t sub_1DD7A2904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7A278C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7A292C(uint64_t a1)
{
  v2 = sub_1DD7FD928();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A2968(uint64_t a1)
{
  v2 = sub_1DD7FD928();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.RequestPrescribedPlan.SearchTool.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD10F90, &qword_1DD8892F0);
  sub_1DD6E125C(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEA6C();
  v8 = *v0;
  v9 = v0[1];
  sub_1DD826A0C();
  v14 = *(v0 + 17);
  v10 = v3[3];
  v11 = v3[4];
  sub_1DD6FE770(v3);
  sub_1DD7FD928();
  sub_1DD6E17D8();
  sub_1DD875BB0();
  sub_1DD825870();
  sub_1DD875970();
  if (!v1)
  {
    sub_1DD6DEC54();
    sub_1DD705E14();
    sub_1DD875980();
    sub_1DD6E0FF8();
    sub_1DD705E14();
    sub_1DD875980();
  }

  v12 = sub_1DD6EEDBC();
  v13(v12);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void MessagePayload.RequestPrescribedPlan.SearchTool.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD8255B0();
  v5 = sub_1DD710A9C(&qword_1ECD10FA0, &qword_1DD8892F8);
  sub_1DD6E125C(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD7FD928();
  sub_1DD6ED2A4();
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD8259A4();
    sub_1DD6E5374();
    sub_1DD875870();
    sub_1DD825CD4();
    sub_1DD824CE8();
    sub_1DD6E5374();
    v15 = sub_1DD875880();
    sub_1DD825178();
    sub_1DD6E5374();
    v11 = sub_1DD875880();
    v12 = *(v7 + 8);
    v13 = sub_1DD6E0F98();
    v14(v13);
    *v2 = v4;
    *(v2 + 8) = v3;
    *(v2 + 16) = v15 & 1;
    *(v2 + 17) = v11 & 1;

    sub_1DD826950();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t static StatementID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a2 + 16);
    if (v3)
    {
      if (v4)
      {
        v5 = *(a1 + 8) == *(a2 + 8) && v3 == v4;
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
  }

  return 0;
}

uint64_t sub_1DD7A2D48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001DD8B65E0 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x41746E656D656C65 && a2 == 0xEE007865646E4974)
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

uint64_t sub_1DD7A2E20(char a1)
{
  if (a1)
  {
    return 0x41746E656D656C65;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1DD7A2E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7A2D48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7A2E98(uint64_t a1)
{
  v2 = sub_1DD7FD97C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A2ED4(uint64_t a1)
{
  v2 = sub_1DD7FD97C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessagePayload.RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool.elementAtIndex.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t MessagePayload.RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool.elementAtIndex.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

IntelligenceFlow::MessagePayload::RequestPrescribedPlan::OpenSuccessValueFromLatestRequestTool __swiftcall MessagePayload.RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool.init(elementAtIndex:)(IntelligenceFlow::MessagePayload::RequestPrescribedPlan::OpenSuccessValueFromLatestRequestTool elementAtIndex)
{
  *v1 = elementAtIndex.elementAtIndex.value;
  *(v1 + 8) = elementAtIndex.elementAtIndex.is_nil;
  return elementAtIndex;
}

uint64_t static MessagePayload.RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1DD7A3028(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x41746E656D656C65 && a2 == 0xEE007865646E4974)
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

uint64_t sub_1DD7A30D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7A3028(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7A30FC(uint64_t a1)
{
  v2 = sub_1DD7FD9D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A3138(uint64_t a1)
{
  v2 = sub_1DD7FD9D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  v2 = sub_1DD710A9C(&qword_1ECD10FC0, &qword_1DD889310);
  sub_1DD6E125C(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DEBA0();
  v6 = *v0;
  v7 = *(v0 + 8);
  v8 = v1[3];
  v9 = v1[4];
  sub_1DD6E7320(v1);
  sub_1DD7FD9D0();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD8255A4();
  sub_1DD875950();
  v10 = sub_1DD6FF808();
  v11(v10);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void MessagePayload.RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD70068C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD10FD0, &qword_1DD889318);
  sub_1DD6E125C(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DEBA0();
  sub_1DD6DE568();
  sub_1DD7FD9D0();
  sub_1DD6E4218();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (!v1)
  {
    sub_1DD6FAC28();
    v10 = sub_1DD875850();
    v12 = v11;
    v13 = *(v6 + 8);
    v14 = sub_1DD6DDEDC();
    v15(v14);
    *v3 = v10;
    *(v3 + 8) = v12 & 1;
  }

  sub_1DD6E1EC8(v0);
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7A33D8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
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

uint64_t sub_1DD7A3464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7A33D8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7A3490(uint64_t a1)
{
  v2 = sub_1DD7FDA24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A34CC(uint64_t a1)
{
  v2 = sub_1DD7FDA24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.RequestPrescribedPlan.LowConfidenceKnowledgeTool.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  v0 = sub_1DD710A9C(&qword_1ECD10FD8, &qword_1DD889320);
  sub_1DD6E125C(v0);
  v2 = *(v1 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD7FDA24();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v4 = sub_1DD6FF808();
  v5(v4);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7A369C(uint64_t a1)
{
  v2 = sub_1DD7FDA78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A36D8(uint64_t a1)
{
  v2 = sub_1DD7FDA78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessagePayload.RequestPrescribedPlan.ConvertTool.query.setter()
{
  sub_1DD6DE304();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MessagePayload.RequestPrescribedPlan.ConvertTool.partner.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_1DD6DDEFC();
}

uint64_t MessagePayload.RequestPrescribedPlan.ConvertTool.partner.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t MessagePayload.RequestPrescribedPlan.ConvertTool.directInvocationClient.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return sub_1DD6DDEFC();
}

uint64_t MessagePayload.RequestPrescribedPlan.ConvertTool.directInvocationClient.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

void __swiftcall MessagePayload.RequestPrescribedPlan.ConvertTool.init(query:isExplicit:)(IntelligenceFlow::MessagePayload::RequestPrescribedPlan::ConvertTool *__return_ptr retstr, Swift::String query, Swift::Bool isExplicit)
{
  retstr->directInvocationClient = 0u;
  retstr->partner = 0u;
  sub_1DD8271EC(query._countAndFlagsBits, query._object, isExplicit, retstr);
}

void __swiftcall MessagePayload.RequestPrescribedPlan.ConvertTool.init(query:isExplicit:partner:)(IntelligenceFlow::MessagePayload::RequestPrescribedPlan::ConvertTool *__return_ptr retstr, Swift::String query, Swift::Bool isExplicit, Swift::String_optional partner)
{
  retstr->directInvocationClient.value._countAndFlagsBits = 0;
  retstr->directInvocationClient.value._object = 0;
  _s16IntelligenceFlow14MessagePayloadO21RequestPrescribedPlanO11DisplayToolV5query10isExplicit7partnerAGSS_SbSSSgtcfC_0(query._countAndFlagsBits, query._object, isExplicit, partner.value._countAndFlagsBits, partner.value._object, retstr);
}

void __swiftcall MessagePayload.RequestPrescribedPlan.ConvertTool.init(query:isExplicit:partner:directInvocationClient:)(IntelligenceFlow::MessagePayload::RequestPrescribedPlan::ConvertTool *__return_ptr retstr, Swift::String query, Swift::Bool isExplicit, Swift::String_optional partner, Swift::String_optional directInvocationClient)
{
  retstr->query = query;
  retstr->isExplicit = isExplicit;
  retstr->partner = partner;
  retstr->directInvocationClient = directInvocationClient;
}

void static MessagePayload.RequestPrescribedPlan.ConvertTool.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v1 = sub_1DD6E27E8(v0);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  v9 = *(v2 + 16);
  v11 = *(v2 + 24);
  v10 = *(v2 + 32);
  v13 = *(v2 + 40);
  v12 = *(v2 + 48);
  if (v1 == *v2 && *(v3 + 8) == *(v2 + 8))
  {
    if (v4 != v9)
    {
      goto LABEL_25;
    }
  }

  else
  {
    sub_1DD875A30();
    sub_1DD6FE86C();
    if (v15 & 1) == 0 || ((v4 ^ v9))
    {
      goto LABEL_25;
    }
  }

  if (v6)
  {
    if (!v10)
    {
      goto LABEL_25;
    }

    if (v5 != v11 || v6 != v10)
    {
      sub_1DD6EFF74();
      sub_1DD7051CC();
      if ((sub_1DD875A30() & 1) == 0)
      {
        goto LABEL_25;
      }
    }
  }

  else if (v10)
  {
    goto LABEL_25;
  }

  if (v8 && v12 && (v7 != v13 || v8 != v12))
  {
    sub_1DD6DDEFC();
    sub_1DD7013BC();
  }

LABEL_25:
  sub_1DD6DFED0();
}

uint64_t sub_1DD7A3A40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x63696C7078457369 && a2 == 0xEA00000000007469;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72656E74726170 && a2 == 0xE700000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000016 && 0x80000001DD8B6600 == a2)
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

unint64_t sub_1DD7A3BA4(char a1)
{
  result = 0x7972657571;
  switch(a1)
  {
    case 1:
      result = 0x63696C7078457369;
      break;
    case 2:
      result = 0x72656E74726170;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7A3C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7A3A40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7A3C5C(uint64_t a1)
{
  v2 = sub_1DD7FDACC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A3C98(uint64_t a1)
{
  v2 = sub_1DD7FDACC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.RequestPrescribedPlan.ConvertTool.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD700858();
  v2 = sub_1DD710A9C(&qword_1ECD11008, &qword_1DD889340);
  sub_1DD6DDEAC(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DEA6C();
  v6 = *v0;
  v7 = v0[1];
  sub_1DD826A0C();
  v13 = v0[4];
  v14 = v0[3];
  v11 = v0[6];
  v12 = v0[5];
  v8 = sub_1DD8267D8();
  sub_1DD6E7320(v8);
  sub_1DD7FDACC();
  sub_1DD6E17D8();
  sub_1DD825680();
  sub_1DD875BB0();
  sub_1DD824B80();
  sub_1DD6E0E40();
  sub_1DD875970();
  if (!v1)
  {
    sub_1DD6DEC54();
    sub_1DD705E14();
    sub_1DD875980();
    sub_1DD6E0FF8();
    sub_1DD6F9BF8();
    sub_1DD6E0E40();
    sub_1DD875920();
    sub_1DD6E6174();
    sub_1DD824D30();
    sub_1DD875920();
  }

  v9 = sub_1DD6EEDBC();
  v10(v9);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void MessagePayload.RequestPrescribedPlan.ConvertTool.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD6E6390();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD11018, &qword_1DD889348);
  sub_1DD6E125C(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6E7258();
  v10 = v0[3];
  v11 = v0[4];
  sub_1DD6FE770(v0);
  sub_1DD7FDACC();
  sub_1DD825968();
  sub_1DD875B90();
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD825188();
    sub_1DD825ACC();
    v12 = sub_1DD875870();
    v14 = v13;
    sub_1DD824CE8();
    sub_1DD825560();
    v25 = sub_1DD875880();
    sub_1DD825178();
    sub_1DD825560();
    v23 = sub_1DD875820();
    v24 = v15;
    sub_1DD6E6174();
    sub_1DD825560();
    sub_1DD875820();
    v17 = v16;
    sub_1DD826470();
    v18 = *(v6 + 8);
    v22 = v19;
    v20 = sub_1DD825570();
    v21(v20);
    *v3 = v12;
    *(v3 + 8) = v14;
    *(v3 + 16) = v25;
    *(v3 + 24) = v23;
    *(v3 + 32) = v24;
    *(v3 + 40) = v22;
    *(v3 + 48) = v17;

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

void __swiftcall MessagePayload.RequestPrescribedPlan.DisplayTool.init(query:isExplicit:)(IntelligenceFlow::MessagePayload::RequestPrescribedPlan::DisplayTool *__return_ptr retstr, Swift::String query, Swift::Bool isExplicit)
{
  retstr->partner.value._countAndFlagsBits = 0;
  retstr->partner.value._object = 0;
  sub_1DD8271EC(query._countAndFlagsBits, query._object, isExplicit, retstr);
}

uint64_t sub_1DD7A40C0(uint64_t a1)
{
  v2 = sub_1DD7FDB20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A40FC(uint64_t a1)
{
  v2 = sub_1DD7FDB20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _s16IntelligenceFlow14MessagePayloadO21RequestPrescribedPlanO11DisplayToolV2eeoiySbAG_AGtFZ_0(uint64_t a1)
{
  v1 = sub_1DD6E27E8(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v2 + 16);
  v9 = *(v2 + 24);
  v8 = *(v2 + 32);
  if (v1 == *v2 && *(v3 + 8) == *(v2 + 8))
  {
    if (v4 != v7)
    {
      return 0;
    }

    goto LABEL_9;
  }

  sub_1DD875A30();
  result = sub_1DD6FE86C();
  if ((v12 & 1) != 0 && ((v4 ^ v7) & 1) == 0)
  {
LABEL_9:
    if (v6)
    {
      if (v8)
      {
        if (v5 == v9 && v6 == v8)
        {
          return 1;
        }

        sub_1DD6DDEFC();
        if (sub_1DD7013BC())
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1DD7A42C8()
{
  sub_1DD6E1F34();
  v3 = v1 == 0x7972657571 && v2 == 0xE500000000000000;
  if (v3 || (sub_1DD824AA4(), (sub_1DD875A30() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x63696C7078457369 && v0 == 0xEA00000000007469;
    if (v5 || (sub_1DD824AA4(), (sub_1DD875A30() & 1) != 0))
    {

      return 1;
    }

    else if (v1 == 0x72656E74726170 && v0 == 0xE700000000000000)
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

uint64_t sub_1DD7A43B8(uint64_t a1)
{
  v2 = sub_1DD7FDB74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A43F4(uint64_t a1)
{
  v2 = sub_1DD7FDB74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DD7A4464()
{
  sub_1DD6DED2C();
  v21 = v2;
  v4 = v3;
  v6 = sub_1DD825C68(v3, v5);
  v8 = sub_1DD710A9C(v6, v7);
  sub_1DD6DDEAC(v8);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DEA6C();
  v12 = *v0;
  v13 = v0[1];
  sub_1DD826A0C();
  v19 = v0[4];
  v20 = v0[3];
  v14 = v4[3];
  v15 = v4[4];
  v16 = sub_1DD824D14(v4);
  v21(v16);
  sub_1DD875BB0();
  sub_1DD824B80();
  sub_1DD825CC8();
  sub_1DD875970();
  if (!v1)
  {
    sub_1DD6DEC54();
    sub_1DD705E14();
    sub_1DD875980();
    sub_1DD6E0FF8();
    sub_1DD824D30();
    sub_1DD875920();
  }

  v17 = sub_1DD6EEDBC();
  v18(v17);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void sub_1DD7A45D8()
{
  sub_1DD6DED2C();
  v4 = v3;
  sub_1DD825A04();
  v22 = v5;
  v8 = sub_1DD825C68(v6, v7);
  v23 = sub_1DD710A9C(v8, v9);
  sub_1DD6DDEAC(v23);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DDFE4();
  v15 = v0[3];
  v16 = v0[4];
  v17 = sub_1DD6E7320(v0);
  v4(v17);
  sub_1DD827014();
  sub_1DD827524();
  sub_1DD825680();
  sub_1DD875B90();
  if (v2)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD824D60();
    sub_1DD875870();
    sub_1DD825CD4();
    sub_1DD824CE8();
    sub_1DD825108();
    v24 = sub_1DD875880();
    sub_1DD825178();
    sub_1DD825108();
    sub_1DD875820();
    v19 = v18;
    sub_1DD826470();
    v21 = v20;
    (*(v11 + 8))(v1);
    *v22 = v15;
    *(v22 + 8) = 0;
    *(v22 + 16) = v24;
    *(v22 + 24) = v21;
    *(v22 + 32) = v19;

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t static MessagePayload.RequestPrescribedPlan.== infix(_:_:)(_OWORD *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[1];
  v110 = *a1;
  v111 = v8;
  *v112 = a1[2];
  v9 = *v112;
  v10 = a2[1];
  *v113 = *a2;
  *&v113[16] = v10;
  v12 = *a2;
  v11 = a2[1];
  *v114 = a2[2];
  *&v114[9] = *(a2 + 41);
  v13 = *(a1 + 41);
  *&v112[9] = v13;
  v115[0] = v110;
  v115[1] = v8;
  v116[0] = v9;
  *(v116 + 9) = v13;
  v116[2] = v12;
  v116[3] = v11;
  v117[0] = a2[2];
  *(v117 + 9) = *(a2 + 41);
  v14 = *(&v110 + 9) | ((*(&v110 + 13) | (HIBYTE(v110) << 16)) << 32);
  v15 = v8;
  v16 = BYTE1(v8);
  v17 = v13 >> 56;
  switch(HIBYTE(v13))
  {
    case 1:
      if (v114[24] != 1)
      {
        goto LABEL_34;
      }

      v46 = BYTE8(v110) | (v14 << 8);
      if (v110 == *v113 && v46 == *&v113[8])
      {
        v75 = sub_1DD8271F8(v17, v46, *v113, *&v113[8], a5, a6, a7, a8, *v91, *&v91[8], *&v91[16], v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, *(&v110 + 1), v111, *(&v111 + 1), *v112, *&v112[8], *&v112[16], *&v112[24], v113[0]);
        sub_1DD8272B0(v75, v76, v77, v78, v79, v80, v81, v82, *v91, *&v91[8], *&v91[16], v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
        sub_1DD824154(v115, &unk_1ECD11050);
        goto LABEL_46;
      }

      v48 = sub_1DD875A30();
      v49 = v48;
      v57 = sub_1DD8271F8(v48, v50, v51, v52, v53, v54, v55, v56, *v91, *&v91[8], *&v91[16], v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, *(&v110 + 1), v111, *(&v111 + 1), *v112, *&v112[8], *&v112[16], *&v112[24], v113[0]);
      sub_1DD8272B0(v57, v58, v59, v60, v61, v62, v63, v64, *v91, *&v91[8], *&v91[16], v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
      sub_1DD824154(v115, &unk_1ECD11050);
      v65 = 0;
      if (v49)
      {
        goto LABEL_46;
      }

      return v65 & 1;
    case 2:
      if (v114[24] == 2)
      {
        goto LABEL_10;
      }

      goto LABEL_33;
    case 3:
      if (v114[24] != 3)
      {

LABEL_33:

LABEL_34:

LABEL_35:
        sub_1DD8271F8(v17, a2, a3, a4, a5, a6, a7, a8, *v91, *&v91[8], *&v91[16], v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, *(&v110 + 1), v111, *(&v111 + 1), *v112, *&v112[8], *&v112[16], *&v112[24], v113[0]);
        sub_1DD824154(v115, &unk_1ECD11050);
        goto LABEL_36;
      }

      v95 = v110;
      v96 = BYTE8(v110) | (v14 << 8);
      LOBYTE(v97) = v8 & 1;
      v98 = *(&v8 + 1);
      LOBYTE(v99) = v112[0];
      *(&v99 + 1) = *&v112[1];
      HIBYTE(v99) = (*&v112[1] | ((*&v112[5] | (v112[7] << 16)) << 32)) >> 48;
      *(&v99 + 5) = *&v112[5];
      v100 = *&v112[8];
      v101 = v13 >> 56;
      *v91 = *v113;
      sub_1DD827644(&v110);
      v94 = *(v45 + 104);
      static MessagePayload.RequestPrescribedPlan.ConvertTool.== infix(_:_:)();
LABEL_31:
      v65 = v37;
      v66 = sub_1DD8271F8(v37, v38, v39, v40, v41, v42, v43, v44, *v91, *&v91[8], *&v91[16], v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, *(&v110 + 1), v111, *(&v111 + 1), *v112, *&v112[8], *&v112[16], *&v112[24], v113[0]);
      sub_1DD8272B0(v66, v67, v68, v69, v70, v71, v72, v73, *v91, *&v91[8], *&v91[16], v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
      sub_1DD824154(v115, &unk_1ECD11050);
      return v65 & 1;
    case 4:
      if (v114[24] == 4)
      {
        goto LABEL_10;
      }

      goto LABEL_33;
    case 5:
      if (v114[24] != 5)
      {
        goto LABEL_33;
      }

LABEL_10:
      v95 = v110;
      v96 = BYTE8(v110) | (v14 << 8);
      LOBYTE(v97) = v8 & 1;
      v98 = *(&v8 + 1);
      LOBYTE(v99) = v112[0];
      *(&v99 + 1) = *&v112[1];
      HIBYTE(v99) = (*&v112[1] | ((*&v112[5] | (v112[7] << 16)) << 32)) >> 48;
      *(&v99 + 5) = *&v112[5];
      *v91 = *v113;
      sub_1DD827644(&v110);
      v37 = static MessagePayload.RequestPrescribedPlan.DisplayTool.== infix(_:_:)(&v95);
      goto LABEL_31;
    case 6:
      if (v114[24] != 6)
      {
        goto LABEL_34;
      }

      LODWORD(v95) = v110;
      LOBYTE(v96) = BYTE8(v110);
      *(&v96 + 1) = *(&v110 + 9);
      HIBYTE(v96) = (*(&v110 + 9) | ((*(&v110 + 13) | (HIBYTE(v110) << 16)) << 32)) >> 48;
      *(&v96 + 5) = *(&v110 + 13);
      LOWORD(v97) = v8;
      *(&v97 + 2) = v8 >> 16;
      HIWORD(v97) = WORD3(v8);
      v98 = *(&v8 + 1);
      LOBYTE(v99) = v112[0] & 1;
      *v91 = *v113;
      *&v91[8] = *&v113[8];
      v92 = *&v113[24];
      LOBYTE(v93) = v114[0] & 1;
      v37 = static AncestorID.== infix(_:_:)(&v95, v91);
      goto LABEL_31;
    case 7:
      if (v114[24] != 7)
      {
        goto LABEL_35;
      }

      sub_1DD824154(v115, &unk_1ECD11050);
      if (BYTE8(v110))
      {
        if ((v113[8] & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_46;
      }

      if ((v113[8] & 1) == 0 && v110 == *v113)
      {
        goto LABEL_46;
      }

      goto LABEL_36;
    default:
      if (v114[24])
      {
        goto LABEL_34;
      }

      v18 = BYTE8(v110) | (v14 << 8);
      if (v110 == *v113 && v18 == *&v113[8])
      {
        v83 = sub_1DD8271F8(v17, v18, *v113, *&v113[8], a5, a6, a7, a8, *v91, *&v91[8], *&v91[16], v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, *(&v110 + 1), v111, *(&v111 + 1), *v112, *&v112[8], *&v112[16], *&v112[24], v113[0]);
        sub_1DD8272B0(v83, v84, v85, v86, v87, v88, v89, v90, *v91, *&v91[8], *&v91[16], v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
        sub_1DD824154(v115, &unk_1ECD11050);
      }

      else
      {
        v20 = sub_1DD875A30();
        v21 = v20;
        v29 = sub_1DD8271F8(v20, v22, v23, v24, v25, v26, v27, v28, *v91, *&v91[8], *&v91[16], v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, *(&v110 + 1), v111, *(&v111 + 1), *v112, *&v112[8], *&v112[16], *&v112[24], v113[0]);
        sub_1DD8272B0(v29, v30, v31, v32, v33, v34, v35, v36, *v91, *&v91[8], *&v91[16], v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
        sub_1DD824154(v115, &unk_1ECD11050);
        if ((v21 & 1) == 0)
        {
LABEL_36:
          v65 = 0;
          return v65 & 1;
        }
      }

      if ((v15 ^ v113[16]) & 1) != 0 || ((v16 ^ v113[17]))
      {
        goto LABEL_36;
      }

LABEL_46:
      v65 = 1;
      return v65 & 1;
  }
}

uint64_t sub_1DD7A4BE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F54686372616573 && a2 == 0xEA00000000006C6FLL;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x80000001DD8B6620 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C6F6F5474786574 && a2 == 0xE800000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x54747265766E6F63 && a2 == 0xEB000000006C6F6FLL;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x5479616C70736964 && a2 == 0xEB000000006C6F6FLL;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6764656C776F6E6BLL && a2 == 0xED00006C6F6F5465;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6C6F6F546E65706FLL && a2 == 0xE800000000000000;
              if (v11 || (sub_1DD875A30() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000025 && 0x80000001DD8B6640 == a2)
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

uint64_t sub_1DD7A4E78(char a1)
{
  result = 0x6F54686372616573;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      v3 = 1954047348;
      goto LABEL_10;
    case 3:
      result = 0x54747265766E6F63;
      break;
    case 4:
      result = 0x5479616C70736964;
      break;
    case 5:
      result = 0x6764656C776F6E6BLL;
      break;
    case 6:
      v3 = 1852141679;
LABEL_10:
      result = v3 | 0x6C6F6F5400000000;
      break;
    case 7:
      result = 0xD000000000000025;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7A4F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7A4BE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7A4FA4(uint64_t a1)
{
  v2 = sub_1DD7FDC00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A4FE0(uint64_t a1)
{
  v2 = sub_1DD7FDC00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7A501C(uint64_t a1)
{
  v2 = sub_1DD7FDEF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A5058(uint64_t a1)
{
  v2 = sub_1DD7FDEF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7A5094(uint64_t a1)
{
  v2 = sub_1DD7FDE4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A50D0(uint64_t a1)
{
  v2 = sub_1DD7FDE4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7A510C(uint64_t a1)
{
  v2 = sub_1DD7FDDA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A5148(uint64_t a1)
{
  v2 = sub_1DD7FDDA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7A5184(uint64_t a1)
{
  v2 = sub_1DD7FE044();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A51C0(uint64_t a1)
{
  v2 = sub_1DD7FE044();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7A51FC(uint64_t a1)
{
  v2 = sub_1DD7FDC54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A5238(uint64_t a1)
{
  v2 = sub_1DD7FDC54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7A5274(uint64_t a1)
{
  v2 = sub_1DD7FDCFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A52B0(uint64_t a1)
{
  v2 = sub_1DD7FDCFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7A52EC(uint64_t a1)
{
  v2 = sub_1DD7FE0EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A5328(uint64_t a1)
{
  v2 = sub_1DD7FE0EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7A5364(uint64_t a1)
{
  v2 = sub_1DD7FDF9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A53A0(uint64_t a1)
{
  v2 = sub_1DD7FDF9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.RequestPrescribedPlan.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = sub_1DD710A9C(&qword_1ECD11058, &qword_1DD889378);
  v27 = sub_1DD6DDEAC(v26);
  v102 = v28;
  v103 = v27;
  v30 = *(v29 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD824B94(v32, v90);
  v101 = sub_1DD710A9C(&qword_1ECD11060, &qword_1DD889380);
  sub_1DD6DDEAC(v101);
  v100 = v33;
  v35 = *(v34 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD8249DC(v37, v91);
  v38 = sub_1DD710A9C(&qword_1ECD11068, &qword_1DD889388);
  sub_1DD6DF3FC(v38, &a16);
  v99 = v39;
  v41 = *(v40 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1DD8247DC(v43, v92);
  v44 = sub_1DD710A9C(&qword_1ECD11070, &qword_1DD889390);
  sub_1DD6DF3FC(v44, &a13);
  v98 = v45;
  v47 = *(v46 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v49);
  v50 = sub_1DD710A9C(&qword_1ECD11078, &qword_1DD889398);
  sub_1DD6DF3FC(v50, &a10);
  v97 = v51;
  v53 = *(v52 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v54);
  sub_1DD825454(v55, v93);
  v56 = sub_1DD710A9C(&qword_1ECD11080, &qword_1DD8893A0);
  sub_1DD6DF3FC(v56, &v115 + 8);
  v96 = v57;
  v59 = *(v58 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v60);
  sub_1DD82543C(v61, v94);
  v62 = sub_1DD710A9C(&qword_1ECD11088, &qword_1DD8893A8);
  sub_1DD6DF3FC(v62, &v113);
  v64 = *(v63 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v65);
  sub_1DD6DE340();
  v66 = sub_1DD710A9C(&qword_1ECD11090, &qword_1DD8893B0);
  sub_1DD6DDEAC(v66);
  v68 = *(v67 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v69);
  sub_1DD6DEA6C();
  v70 = sub_1DD710A9C(&qword_1ECD11098, &qword_1DD8893B8);
  v108 = sub_1DD6DDEAC(v70);
  v109 = v71;
  v73 = *(v72 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v74);
  sub_1DD6DEBA0();
  v75 = v20[1];
  v106 = *v20;
  v107 = v75;
  v105 = v20[2];
  v95 = *(v20 + 5);
  v104 = *(v20 + 3);
  v76 = *(v20 + 56);
  v78 = v25[3];
  v77 = v25[4];
  sub_1DD6E7320(v25);
  sub_1DD7FDC00();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  switch(v76)
  {
    case 1:
      sub_1DD7FE044();
      sub_1DD824AD4();
      sub_1DD875910();
      v110 = v106;
      v111 = v107;
      sub_1DD7FE098();
      sub_1DD8759D0();
      v85 = sub_1DD824890(&v112);
      v86(v85);
      v81 = sub_1DD6FF900();
      goto LABEL_12;
    case 2:
      LOBYTE(v110) = 2;
      sub_1DD7FDF9C();
      sub_1DD6F9BEC(v114);
      sub_1DD824AD4();
      sub_1DD8271B0();
      sub_1DD825350();
      sub_1DD8275DC();
      sub_1DD7FDFF0();
      sub_1DD8255D0(&v115 + 8);
      sub_1DD8759D0();
      v84 = &v115;
      goto LABEL_10;
    case 3:
      LOBYTE(v110) = 3;
      sub_1DD7FDEF4();
      sub_1DD6F9BEC(&v116);
      sub_1DD824AD4();
      sub_1DD8271B0();
      sub_1DD825350();
      v115 = v95;
      sub_1DD8275DC();
      sub_1DD7FDF48();
      sub_1DD8255D0(&a10);
      sub_1DD8759D0();
      v84 = &a9;
      goto LABEL_10;
    case 4:
      LOBYTE(v110) = 4;
      sub_1DD7FDE4C();
      sub_1DD6F9BEC(&a11);
      sub_1DD824AD4();
      sub_1DD8271B0();
      sub_1DD825350();
      sub_1DD8275DC();
      sub_1DD7FDEA0();
      sub_1DD8255D0(&a13);
      sub_1DD8759D0();
      v84 = &a12;
      goto LABEL_10;
    case 5:
      LOBYTE(v110) = 5;
      sub_1DD7FDDA4();
      sub_1DD6F9BEC(&a14);
      sub_1DD824AD4();
      sub_1DD8271B0();
      sub_1DD825350();
      sub_1DD8275DC();
      sub_1DD7FDDF8();
      sub_1DD8255D0(&a16);
      sub_1DD8759D0();
      v84 = &a15;
      goto LABEL_10;
    case 6:
      a10 = WORD4(v104);
      sub_1DD7FDCFC();
      sub_1DD6F9BEC(&a17);
      sub_1DD824AD4();
      sub_1DD8271B0();
      LODWORD(v110) = v106;
      v111 = v107;
      v112 = v105;
      v113 = v104;
      v114[0] = BYTE8(v104) & 1;
      sub_1DD7FDD50();
      sub_1DD825AB4();
      sub_1DD8759D0();
      v84 = &a18;
LABEL_10:
      v87 = *(v84 - 32);
      goto LABEL_11;
    case 7:
      sub_1DD7FDC54();
      sub_1DD824AD4();
      sub_1DD8271B0();
      v110 = v106;
      LOBYTE(v111) = v107 & 1;
      sub_1DD7FDCA8();
      sub_1DD825AB4();
      sub_1DD8759D0();
LABEL_11:
      v88 = sub_1DD824838();
      v89(v88);
      v81 = sub_1DD6E61C4();
LABEL_12:
      v82 = v21;
      break;
    default:
      sub_1DD7FE0EC();
      sub_1DD6E710C();
      sub_1DD875910();
      v110 = v106;
      v111 = v107;
      LOWORD(v112) = v105 & 0x101;
      sub_1DD7FE140();
      sub_1DD8759D0();
      v79 = sub_1DD702E84(&v111);
      v80(v79, v66);
      v81 = sub_1DD6FBE88();
      break;
  }

  v83(v81, v82);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void MessagePayload.RequestPrescribedPlan.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v144 = v26;
  v142 = sub_1DD710A9C(&qword_1ECD11128, &qword_1DD8893C0);
  sub_1DD6DDEAC(v142);
  v145 = v27;
  v29 = *(v28 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD6E0C6C();
  sub_1DD8268FC(v31);
  v143 = sub_1DD710A9C(&qword_1ECD11130, &qword_1DD8893C8);
  sub_1DD6DDEAC(v143);
  v141 = v32;
  v34 = *(v33 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD824C9C(v36, v134);
  v37 = sub_1DD710A9C(&qword_1ECD11138, &qword_1DD8893D0);
  sub_1DD6DF3FC(v37, &a18);
  v39 = *(v38 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1DD824CB0(v41, v135);
  v140 = sub_1DD710A9C(&qword_1ECD11140, &qword_1DD8893D8);
  sub_1DD6DDEAC(v140);
  v43 = *(v42 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1DD824948(v45, v136);
  v46 = sub_1DD710A9C(&qword_1ECD11148, &qword_1DD8893E0);
  sub_1DD6DF3FC(v46, &a17);
  v48 = *(v47 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1DD824FEC(v50, v137);
  v51 = sub_1DD710A9C(&qword_1ECD11150, &qword_1DD8893E8);
  sub_1DD6DF3FC(v51, &a16);
  v53 = *(v52 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v54);
  sub_1DD824A38(v55, v138);
  v56 = sub_1DD710A9C(&qword_1ECD11158, &qword_1DD8893F0);
  sub_1DD6DF3FC(v56, &a15);
  v58 = *(v57 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v59);
  sub_1DD6E7258();
  v60 = sub_1DD710A9C(&qword_1ECD11160, &qword_1DD8893F8);
  sub_1DD6DDEAC(v60);
  v62 = *(v61 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v63);
  sub_1DD6DEBA0();
  v64 = sub_1DD710A9C(&qword_1ECD11168, &qword_1DD889400);
  sub_1DD6DDEAC(v64);
  v66 = *(v65 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v67);
  sub_1DD6F0A58();
  v69 = v25[3];
  v68 = v25[4];
  sub_1DD6E1C64();
  sub_1DD7FDC00();
  sub_1DD6EF0F4();
  sub_1DD875B90();
  if (!v20)
  {
    v70 = v146;
    v71 = sub_1DD875900();
    sub_1DD6ED750(v71, 0);
    sub_1DD826B24();
    v72 = v64;
    if (!v73)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v80 == v81)
      {
        __break(1u);
        return;
      }

      v139 = *(v79 + v78);
      v82 = sub_1DD77E6E4(v74, v75, v76, v77, v78);
      sub_1DD6ED830(v82);
      sub_1DD6E0194();
      v84 = v83;
      swift_unknownObjectRelease();
      if (v64 == v84 >> 1)
      {
        v85 = v64;
        v86 = v144;
        switch(v139)
        {
          case 1:
            LOBYTE(v148) = 1;
            sub_1DD7FE044();
            sub_1DD6EFF94(&v153);
            sub_1DD6E710C();
            sub_1DD875800();
            sub_1DD7FE38C();
            sub_1DD824DF8();
            sub_1DD8758D0();
            swift_unknownObjectRelease();
            v125 = sub_1DD6E5DE8(&a10);
            v126(v125);
            sub_1DD825128();
            v127(v21, v85);
            sub_1DD8256F8();
            v119 = v148;
            v120 = v149;
            v123 = v148 & 0xFFFFFFFF00000000;
            v124 = v149 & 0xFFFFFFFFFFFFFF00;
            goto LABEL_20;
          case 2:
            LOBYTE(v148) = 2;
            sub_1DD7FDF9C();
            sub_1DD8251C8();
            sub_1DD7FE338();
            sub_1DD824A28();
            sub_1DD826A34();
            sub_1DD8758D0();
            sub_1DD8252B8();
            swift_unknownObjectRelease();
            v100 = &a11;
            goto LABEL_18;
          case 3:
            LOBYTE(v148) = 3;
            sub_1DD7FDEF4();
            sub_1DD8251C8();
            sub_1DD7FE2E4();
            sub_1DD824A28();
            sub_1DD826A34();
            sub_1DD8758D0();
            sub_1DD8252B8();
            swift_unknownObjectRelease();
            v101 = sub_1DD6E1858(&a12);
            v102(v101);
            v103 = *(v21 + 8);
            v104 = sub_1DD8258AC();
            v105(v104);
            sub_1DD8256F8();
            v119 = v148;
            v120 = v149;
            v121 = v150;
            v114 = v151;
            v115 = v152;
            v123 = v148 & 0xFFFFFFFF00000000;
            v124 = v149 & 0xFFFFFFFFFFFFFF00;
            v116 = v153;
            v117 = v152 & 0xFFFFFFFFFFFFFF00;
            goto LABEL_20;
          case 4:
            LOBYTE(v148) = 4;
            sub_1DD7FDE4C();
            sub_1DD8251C8();
            sub_1DD7FE290();
            v70 = v140;
            sub_1DD6FF7A8();
            sub_1DD8258D0();
            sub_1DD8758D0();
            sub_1DD8252B8();
            swift_unknownObjectRelease();
            v98 = sub_1DD6FA9F4(&a13);
            goto LABEL_19;
          case 5:
            LOBYTE(v148) = 5;
            sub_1DD7FDDA4();
            sub_1DD8251C8();
            sub_1DD7FE23C();
            sub_1DD824A28();
            sub_1DD826A34();
            sub_1DD8758D0();
            sub_1DD8252B8();
            swift_unknownObjectRelease();
            v100 = &a14;
LABEL_18:
            v98 = sub_1DD6E1858(v100);
LABEL_19:
            v99(v98, v70);
            v128 = *(v21 + 8);
            v129 = sub_1DD8258AC();
            v130(v129);
            sub_1DD8256F8();
            v119 = v148;
            v120 = v149;
            v121 = v150;
            v123 = v148 & 0xFFFFFFFF00000000;
            v124 = v149 & 0xFFFFFFFFFFFFFF00;
            v114 = v151;
            v115 = v152;
            v117 = v152 & 0xFFFFFFFFFFFFFF00;
            goto LABEL_20;
          case 6:
            LOBYTE(v148) = 6;
            sub_1DD7FDCFC();
            sub_1DD6E710C();
            sub_1DD875800();
            sub_1DD7FE1E8();
            sub_1DD826238();
            sub_1DD8258D0();
            sub_1DD8758D0();
            sub_1DD827410();
            swift_unknownObjectRelease();
            (*(v141 + 8))(v146, v143);
            v131 = *v145;
            v132 = sub_1DD6DDEDC();
            v133(v132);
            v117 = 0;
            v123 = 0;
            v119 = v148;
            v120 = v149;
            v121 = v150;
            v114 = v151;
            v115 = v152;
            a10 = v152;
            v124 = v149 & 0xFFFFFFFFFFFFFF00;
            v122 = v150 >> 8;
            v118 = v150 & 0xFFFFFFFFFFFF0000;
            goto LABEL_20;
          case 7:
            LOBYTE(v148) = 7;
            sub_1DD7FDC54();
            sub_1DD6E710C();
            sub_1DD875800();
            sub_1DD7FE194();
            sub_1DD826238();
            sub_1DD8265A8();
            sub_1DD8758D0();
            sub_1DD827410();
            swift_unknownObjectRelease();
            (v145[1])(v147, v142);
            v106 = *v145;
            v107 = sub_1DD705C50();
            v108(v107);
            sub_1DD8256F8();
            v124 = 0;
            v119 = v148;
            v120 = v149;
            a10 = v149;
            v123 = v148 & 0xFFFFFFFF00000000;
            v97 = v25;
            v86 = v144;
            goto LABEL_21;
          default:
            LOBYTE(v148) = 0;
            sub_1DD7FE0EC();
            sub_1DD825CA4(&v152);
            sub_1DD8251C8();
            sub_1DD7FE3E0();
            sub_1DD824A28();
            sub_1DD826A34();
            sub_1DD8758D0();
            sub_1DD8252B8();
            swift_unknownObjectRelease();
            v109 = sub_1DD6E1858(&a9);
            v110(v109);
            v111 = *(v21 + 8);
            v112 = sub_1DD8258AC();
            v113(v112);
            v117 = 0;
            v118 = 0;
            v119 = v148;
            v120 = v149;
            v121 = v150;
            LOBYTE(v122) = BYTE1(v150);
            v123 = v148 & 0xFFFFFFFF00000000;
            v124 = v149 & 0xFFFFFFFFFFFFFF00;
LABEL_20:
            v97 = v25;
LABEL_21:
            *v86 = v123 | v119;
            *(v86 + 8) = v124 | v120;
            *(v86 + 16) = v118 | v121 | (v122 << 8);
            *(v86 + 24) = v114;
            *(v86 + 32) = v117 | v115;
            *(v86 + 40) = v116;
            *(v86 + 56) = v139;
            break;
        }

        goto LABEL_10;
      }
    }

    sub_1DD875740();
    sub_1DD6E41BC();
    v88 = v87;
    v89 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v88 = &type metadata for MessagePayload.RequestPrescribedPlan;
    sub_1DD875810();
    sub_1DD6DF12C();
    v90 = *MEMORY[0x1E69E6AF8];
    sub_1DD824B14();
    v92 = *(v91 + 104);
    v93 = sub_1DD6FEB10();
    v94(v93);
    swift_willThrow();
    swift_unknownObjectRelease();
    v95 = sub_1DD6FFA00(&v154);
    v96(v95, v72);
  }

  v97 = v25;
LABEL_10:
  sub_1DD6E1EC8(v97);
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7A6918(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000)
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

uint64_t sub_1DD7A69A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7A6918(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7A69D0(uint64_t a1)
{
  v2 = sub_1DD7FE434();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A6A0C(uint64_t a1)
{
  v2 = sub_1DD7FE434();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.RequestSuggestedInvocation.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  v0 = sub_1DD710A9C(&qword_1ECD111B0, &qword_1DD889408);
  sub_1DD6E125C(v0);
  v2 = *(v1 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD7FE434();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v4 = sub_1DD6FF808();
  v5(v4);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.Query.query.setter()
{
  sub_1DD6DE304();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MessagePayload.Query.variables.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t MessagePayload.Query.clientQueryId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_1DD6DDEFC();
}

uint64_t MessagePayload.Query.clientQueryId.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t MessagePayload.Query.init(query:safetyMode:clientQueryId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = 0;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  return result;
}

uint64_t MessagePayload.Query.init(query:variables:safetyMode:clientQueryId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t MessagePayload.Query.init(query:safetyMode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 24) = a3;
  return result;
}

uint64_t MessagePayload.Query.init(query:variables:safetyMode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t MessagePayload.Query.init(query:variables:)()
{
  sub_1DD8250F8();

  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *v2 = v1;
  *(v2 + 8) = v0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  return result;
}

uint64_t MessagePayload.Query.init(query:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  return result;
}

uint64_t MessagePayload.Query.init(query:variables:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0;
  return result;
}

void static MessagePayload.Query.== infix(_:_:)()
{
  sub_1DD827764();
  v1 = sub_1DD6E27E8(v0);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = *(v2 + 32);
  v10 = *(v2 + 40);
  v12 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (v12 || (sub_1DD875A30() & 1) != 0)
  {
    if (v4)
    {
      if (!v8)
      {
        goto LABEL_19;
      }

      sub_1DD6DDEDC();
      sub_1DD7A874C();
      sub_1DD827878();
      if ((v4 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v8)
    {
      goto LABEL_19;
    }

    if (((v5 ^ v9) & 1) == 0 && v7 && v10 && (v6 != v11 || v7 != v10))
    {
      sub_1DD6DDEFC();
      sub_1DD7013BC();
    }
  }

LABEL_19:
  sub_1DD827720();
}

uint64_t sub_1DD7A6E70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C626169726176 && a2 == 0xE900000000000073;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F4D797465666173 && a2 == 0xEA00000000006564;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7551746E65696C63 && a2 == 0xED00006449797265)
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

uint64_t sub_1DD7A6FDC(char a1)
{
  result = 0x7972657571;
  switch(a1)
  {
    case 1:
      result = 0x656C626169726176;
      break;
    case 2:
      result = 0x6F4D797465666173;
      break;
    case 3:
      result = 0x7551746E65696C63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7A7078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7A6E70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7A70A0(uint64_t a1)
{
  v2 = sub_1DD7FE488();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A70DC(uint64_t a1)
{
  v2 = sub_1DD7FE488();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.Query.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD111C8, &qword_1DD889418);
  sub_1DD6DDEAC(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEA6C();
  v9 = *v0;
  v8 = v0[1];
  v17 = *(v0 + 24);
  v15 = v0[4];
  v16 = v0[2];
  v14 = v0[5];
  v10 = v3[3];
  v11 = v3[4];
  sub_1DD6E49C0(v3);
  sub_1DD7FE488();
  sub_1DD6E1808();
  sub_1DD705FD8();
  sub_1DD705C50();
  sub_1DD825CC8();
  sub_1DD875970();
  if (!v1)
  {
    sub_1DD825014();
    sub_1DD710A9C(&qword_1ECD10E58, &qword_1DD8AED90);
    sub_1DD7FD198();
    sub_1DD825630();
    sub_1DD6FF6E0();
    sub_1DD875960();
    sub_1DD6E0FF8();
    sub_1DD705E14();
    sub_1DD875980();
    sub_1DD6E6174();
    sub_1DD824D30();
    sub_1DD875920();
  }

  v12 = sub_1DD6EEDBC();
  v13(v12);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void MessagePayload.Query.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD8255B0();
  v3 = sub_1DD710A9C(&qword_1ECD111D8, &qword_1DD889420);
  sub_1DD6E125C(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E7258();
  v9 = v0[3];
  v10 = v0[4];
  sub_1DD6E49C0(v0);
  sub_1DD7FE488();
  sub_1DD825968();
  sub_1DD827908();
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD825188();
    sub_1DD825ACC();
    v11 = sub_1DD875870();
    v13 = v12;
    sub_1DD710A9C(&qword_1ECD10E58, &qword_1DD8AED90);
    sub_1DD82552C();
    sub_1DD7FD2FC();
    sub_1DD824B6C();
    sub_1DD8258B8();
    sub_1DD825ACC();
    sub_1DD875860();
    sub_1DD825178();
    sub_1DD825560();
    v22 = sub_1DD875880();
    sub_1DD6E6174();
    sub_1DD825560();
    sub_1DD875820();
    v15 = v14;
    sub_1DD826470();
    v16 = *(v5 + 8);
    v20 = v17;
    v18 = sub_1DD825570();
    v19(v18);
    *v2 = v11;
    *(v2 + 8) = v13;
    *(v2 + 16) = v21;
    *(v2 + 24) = v22;
    *(v2 + 32) = v20;
    *(v2 + 40) = v15;

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7A74EC()
{
  sub_1DD705CF0();
  if (v2 == 0x74696E676F636572 && v0 == 0xEB000000006E6F69)
  {

    v4 = 0;
  }

  else
  {
    sub_1DD8256B0();
    sub_1DD875A30();
    sub_1DD82698C();
    v4 = v1 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7A7558(uint64_t a1)
{
  v2 = sub_1DD7FE4DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A7594(uint64_t a1)
{
  v2 = sub_1DD7FE4DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.SpeechQuery.Candidate.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  v0 = sub_1DD710A9C(&qword_1ECD111E0, &qword_1DD889428);
  sub_1DD6E125C(v0);
  v2 = *(v1 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD7FE4DC();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v4 = sub_1DD6FF808();
  v5(v4);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.SpeechQuery.clientQueryId.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

IntelligenceFlow::MessagePayload::SpeechQuery __swiftcall MessagePayload.SpeechQuery.init(candidates:safetyMode:clientQueryId:)(Swift::OpaquePointer candidates, Swift::Bool safetyMode, Swift::String_optional clientQueryId)
{
  *v3 = candidates;
  *(v3 + 8) = safetyMode;
  *(v3 + 16) = clientQueryId;
  result.clientQueryId = clientQueryId;
  result.candidates = candidates;
  result.safetyMode = safetyMode;
  return result;
}

IntelligenceFlow::MessagePayload::SpeechQuery __swiftcall MessagePayload.SpeechQuery.init(candidates:safetyMode:)(IntelligenceFlow::MessagePayload::SpeechQuery candidates, Swift::Bool safetyMode)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = candidates.candidates._rawValue;
  *(v2 + 8) = safetyMode;
  candidates.safetyMode = safetyMode;
  return candidates;
}

IntelligenceFlow::MessagePayload::SpeechQuery __swiftcall MessagePayload.SpeechQuery.init(candidates:)(IntelligenceFlow::MessagePayload::SpeechQuery candidates)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = candidates.candidates._rawValue;
  *(v1 + 8) = 0;
  return candidates;
}

uint64_t static MessagePayload.SpeechQuery.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1DD7152B8(*a1, *a2);
  result = sub_1DD6FE86C();
  if ((v9 & 1) != 0 && ((v2 ^ v5) & 1) == 0)
  {
    if (v3)
    {
      if (v6)
      {
        if (v4 == v7 && v3 == v6)
        {
          return 1;
        }

        sub_1DD6E21D0();
        if (sub_1DD7013BC())
        {
          return 1;
        }
      }
    }

    else if (!v6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1DD7A7850(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616469646E6163 && a2 == 0xEA00000000007365;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F4D797465666173 && a2 == 0xEA00000000006564;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7551746E65696C63 && a2 == 0xED00006449797265)
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

uint64_t sub_1DD7A7974(char a1)
{
  if (!a1)
  {
    return 0x74616469646E6163;
  }

  if (a1 == 1)
  {
    return 0x6F4D797465666173;
  }

  return 0x7551746E65696C63;
}

uint64_t sub_1DD7A79E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7A7850(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7A7A0C(uint64_t a1)
{
  v2 = sub_1DD7FE530();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A7A48(uint64_t a1)
{
  v2 = sub_1DD7FE530();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.SpeechQuery.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD111F8, &qword_1DD889438);
  sub_1DD6E49A8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DEA6C();
  v9 = *v0;
  v18 = *(v0 + 8);
  v16 = v0[3];
  v17 = v0[2];
  v10 = v2[3];
  v11 = v2[4];
  sub_1DD824D14(v2);
  v12 = sub_1DD7FE530();

  sub_1DD6E17D8();
  sub_1DD8268F0();
  sub_1DD875BB0();
  sub_1DD710A9C(&qword_1ECD11208, &qword_1DD889440);
  sub_1DD7FE584();
  sub_1DD825BAC();
  sub_1DD82557C();
  sub_1DD8265A8();
  sub_1DD8759D0();

  if (!v12)
  {
    sub_1DD8256BC();
    sub_1DD875980();
    sub_1DD6EFF74();
    sub_1DD825668();
    sub_1DD875920();
  }

  v13 = *(v5 + 8);
  v14 = sub_1DD6DEA04();
  v15(v14);
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

void MessagePayload.SpeechQuery.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DD6DED2C();
  sub_1DD8255B0();
  v13 = sub_1DD710A9C(&qword_1ECD11220, &qword_1DD889448);
  sub_1DD6E125C(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD7FE530();
  sub_1DD6ED2A4();
  if (v11)
  {
    sub_1DD6E1EC8(v10);
  }

  else
  {
    sub_1DD710A9C(&qword_1ECD11208, &qword_1DD889440);
    sub_1DD7FE65C();
    sub_1DD6E9644();
    sub_1DD8258B8();
    sub_1DD6FAE18();
    sub_1DD8758D0();
    sub_1DD6E5374();
    v19 = sub_1DD875880();
    sub_1DD6E5374();
    v20 = sub_1DD875820();
    v22 = v21;
    v27 = v19 & 1;
    v23 = *(v15 + 8);
    v24 = v20;
    v25 = sub_1DD6E0F98();
    v26(v25);
    *v12 = a10;
    *(v12 + 8) = v27;
    *(v12 + 16) = v24;
    *(v12 + 24) = v22;

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7A7E00(uint64_t a1, uint64_t a2)
{
  if (a1 == 1851878512 && a2 == 0xE400000000000000)
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

uint64_t sub_1DD7A7E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7A7E00(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7A7EB8(uint64_t a1)
{
  v2 = sub_1DD7FE734();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A7EF4(uint64_t a1)
{
  v2 = sub_1DD7FE734();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.PrescribedPlan.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  v0 = sub_1DD710A9C(&qword_1ECD11238, &qword_1DD889450);
  sub_1DD6E125C(v0);
  v2 = *(v1 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD7FE734();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v4 = sub_1DD6FF808();
  v5(v4);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7A8074(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x697263736E617274 && a2 == 0xEA00000000007470)
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

uint64_t sub_1DD7A8114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7A8074(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7A8140(uint64_t a1)
{
  v2 = sub_1DD7FE788();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A817C(uint64_t a1)
{
  v2 = sub_1DD7FE788();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.MockTranscript.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  v0 = sub_1DD710A9C(&qword_1ECD11250, &qword_1DD889460);
  sub_1DD6E125C(v0);
  v2 = *(v1 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD7FE788();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v4 = sub_1DD6FF808();
  v5(v4);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7A82FC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736C6562616CLL && a2 == 0xE600000000000000)
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

uint64_t sub_1DD7A8388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7A82FC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7A83B4(uint64_t a1)
{
  v2 = sub_1DD7FE7DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7A83F0(uint64_t a1)
{
  v2 = sub_1DD7FE7DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7A8520()
{
  v0 = sub_1DD826B18();
  v2 = v1(v0);
  sub_1DD6E9B14(*(v2 + 28));
  return sub_1DD6DDEFC();
}

uint64_t MessagePayload.ClientEffectInvocation.toolId.getter()
{
  v0 = type metadata accessor for MessagePayload.ClientEffectInvocation(0);
  sub_1DD6E9B14(*(v0 + 32));
  return sub_1DD6DDEFC();
}

uint64_t MessagePayload.ClientEffectInvocation.parameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessagePayload.ClientEffectInvocation(0) + 36));
}

void MessagePayload.ClientEffectInvocation.init(stepId:sessionId:clientRequestId:clientSessionId:toolName:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1DD826528();
  v45 = v30;
  v46 = v31;
  v44 = v32;
  sub_1DD825B3C();
  v34 = v33;
  v35 = sub_1DD874820();
  sub_1DD6DE1C4(v35);
  v37 = *(v36 + 32);
  v38 = sub_1DD6DFF24();
  v37(v38);
  v39 = type metadata accessor for MessagePayload.ClientEffectInvocation(0);
  sub_1DD826B0C(v39);
  (v37)(v34 + v40, v28, v35);
  v41 = (v34 + v29[6]);
  *v41 = v27;
  v41[1] = v26;
  v42 = (v34 + v29[7]);
  *v42 = v25;
  v42[1] = v44;
  v43 = (v34 + v29[8]);
  *v43 = v45;
  v43[1] = v46;
  *(v34 + v29[9]) = a25;
  sub_1DD8264FC();
}

void static MessagePayload.ClientEffectInvocation.== infix(_:_:)()
{
  sub_1DD6E1F34();
  if (_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0())
  {
    v0 = type metadata accessor for MessagePayload.ClientEffectInvocation(0);
    sub_1DD6F4D70(v0);
    if (_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0())
    {
      sub_1DD824820(v0[6]);
      v3 = v3 && v1 == v2;
      if (v3 || (sub_1DD875A30() & 1) != 0)
      {
        sub_1DD824820(v0[7]);
        v6 = v3 && v4 == v5;
        if (v6 || (sub_1DD875A30() & 1) != 0)
        {
          sub_1DD824820(v0[8]);
          v9 = v3 && v7 == v8;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {
            sub_1DD826EDC(v0[9]);

            sub_1DD7A874C();
          }
        }
      }
    }
  }
}

void sub_1DD7A874C()
{
  sub_1DD6DEB38();
  v2 = v1;
  sub_1DD6DE290();
  v3 = sub_1DD874FA0();
  v4 = sub_1DD6DDEAC(v3);
  v80 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DE21C();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD8268E4(&v69 - v12);
  v13 = sub_1DD710A9C(&qword_1ECD151C8, &qword_1DD8A70A8);
  v14 = sub_1DD6DEA10(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DE21C();
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v75 = v2;
  if (v0 == v2 || *(v0 + 16) != *(v75 + 16))
  {
LABEL_20:
    sub_1DD6DFED0();
  }

  else
  {
    v73 = &v69 - v18;
    v74 = v19;
    v72 = v10;
    v21 = 0;
    v70 = v0;
    v22 = *(v0 + 64);
    v69 = v0 + 64;
    v23 = 1 << *(v0 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & v22;
    v26 = (v23 + 63) >> 6;
    v76 = v80 + 16;
    v77 = (v80 + 32);
    v71 = (v80 + 8);
    while (1)
    {
      v27 = v74;
      if (!v25)
      {
        break;
      }

      v78 = (v25 - 1) & v25;
      v28 = __clz(__rbit64(v25)) | (v21 << 6);
LABEL_12:
      v31 = (*(v70 + 48) + 16 * v28);
      v32 = *v31;
      v33 = v31[1];
      v35 = v79;
      v34 = v80;
      (*(v80 + 16))(v79, *(v70 + 56) + *(v80 + 72) * v28, v3, v20);
      v36 = sub_1DD710A9C(&qword_1ECD0FA80, &qword_1DD881480);
      v37 = *(v36 + 48);
      *v27 = v32;
      *(v27 + 1) = v33;
      (*(v34 + 32))(&v27[v37], v35, v3);
      sub_1DD6E09D4();
      sub_1DD6E5E68(v38, v39, v40, v36);

LABEL_13:
      v41 = v73;
      sub_1DD6E3A64();
      v42 = sub_1DD710A9C(&qword_1ECD0FA80, &qword_1DD881480);
      sub_1DD6E26E4(v41);
      if (v43)
      {
        goto LABEL_20;
      }

      v44 = *(v42 + 48);
      v46 = *v41;
      v45 = *(v41 + 1);
      v47 = v75;
      (*v77)(v72, &v41[v44], v3);
      v48 = sub_1DD6E9594();
      v50 = sub_1DD6FB688(v48, v49);
      v52 = v51;

      if ((v52 & 1) == 0)
      {
        v66 = *v71;
        v67 = sub_1DD6FAA70();
        v68(v67);
        goto LABEL_20;
      }

      v53 = v80;
      v54 = *(v47 + 56) + *(v80 + 72) * v50;
      v55 = *(v80 + 16);
      v56 = sub_1DD826A94();
      v57(v56);
      sub_1DD6E05D4();
      sub_1DD6E1E84(&unk_1ECD0E2A0);
      sub_1DD8257C8();
      v58 = sub_1DD8750F0();
      v59 = *(v53 + 8);
      v60 = sub_1DD6E60FC();
      v59(v60);
      v61 = sub_1DD6FAA70();
      v59(v61);
      v25 = v78;
      if ((v58 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    while (1)
    {
      v29 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v29 >= v26)
      {
        sub_1DD710A9C(&qword_1ECD0FA80, &qword_1DD881480);
        sub_1DD6E0C90();
        sub_1DD6E5E68(v62, v63, v64, v65);
        v78 = 0;
        goto LABEL_13;
      }

      v30 = *(v69 + 8 * v29);
      ++v21;
      if (v30)
      {
        v78 = (v30 - 1) & v30;
        v28 = __clz(__rbit64(v30)) | (v29 << 6);
        v21 = v29;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_1DD7A8B68()
{
  sub_1DD6DEB38();
  if (v0 == v1 || (v2 = v1, v3 = v0, *(v0 + 16) != *(v1 + 16)))
  {
LABEL_13:
    sub_1DD6DFED0();
  }

  else
  {
    v4 = 0;
    v6 = v0 + 64;
    v5 = *(v0 + 64);
    v7 = *(v0 + 32);
    sub_1DD6E51DC();
    v10 = v9 & v8;
    v12 = (v11 + 63) >> 6;
    while (v10)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_11:
      v17 = v13 | (v4 << 6);
      v18 = (*(v3 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v21 = *(*(v3 + 56) + 8 * v17);

      v22 = sub_1DD6E5C7C();
      v24 = sub_1DD6FB688(v22, v23);
      v26 = v25;

      if ((v26 & 1) == 0 || *(*(v2 + 56) + 8 * v24) != v21)
      {
        goto LABEL_13;
      }
    }

    v14 = v4;
    while (1)
    {
      v4 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v4 >= v12)
      {
        goto LABEL_13;
      }

      ++v14;
      if (*(v6 + 8 * v4))
      {
        sub_1DD826C80();
        v10 = v16 & v15;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1DD7A8C6C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  v53 = result;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v54 = (v8 - 1) & v8;
LABEL_13:
    v13 = v10 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(v3 + 56) + 24 * v13;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);

    v55 = v19;
    sub_1DD800D00(v18, v19, v20);
    v21 = v15 == 0;
    if (!v15)
    {
      return v21;
    }

    v22 = sub_1DD6FB688(v16, v15);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_57;
    }

    v25 = *(v2 + 56) + 24 * v22;
    v27 = *v25;
    v26 = *(v25 + 8);
    v28 = *(v25 + 16);
    if (*(v25 + 16))
    {
      if (v28 != 1)
      {
        if (v20 != 2)
        {
LABEL_53:
          v50 = *(v25 + 8);
          goto LABEL_55;
        }

        v31 = v55;
        if (v27 == v18 && v26 == v55)
        {
          v46 = *(v25 + 8);

          v43 = v18;
          v44 = v55;
          v45 = 2;
          goto LABEL_38;
        }

        v40 = *v25;
        v41 = *(v25 + 8);
        v35 = sub_1DD875A30();

        sub_1DD800D28(v27, v26, 2);
        v36 = v18;
        v37 = v55;
        v38 = 2;
        goto LABEL_34;
      }

      if (v20 != 1)
      {
        v51 = *v25;
LABEL_55:

LABEL_56:
        sub_1DD800D28(v27, v26, v28);
LABEL_57:
        sub_1DD800D28(v18, v55, v20);
        return 0;
      }

      v29 = *(v27 + 16);
      if (v29 != *(v18 + 16))
      {
        goto LABEL_52;
      }

      if (v29)
      {
        if (v27 != v18)
        {
          v52 = v2;
          v47 = (v27 + 40);
          v48 = (v18 + 40);
          while (1)
          {
            v49 = *(v47 - 1) == *(v48 - 1) && *v47 == *v48;
            if (!v49 && (sub_1DD875A30() & 1) == 0)
            {
              break;
            }

            v47 += 2;
            v48 += 2;
            if (!--v29)
            {
              sub_1DD800D00(v27, v26, 1);
              sub_1DD800D28(v27, v26, 1);
              v2 = v52;
              goto LABEL_49;
            }
          }

LABEL_52:
          LOBYTE(v20) = 1;
          sub_1DD800D00(v27, v26, 1);
          goto LABEL_56;
        }

        sub_1DD800D00(v18, v26, 1);
        v30 = v18;
      }

      else
      {
        sub_1DD800D00(v27, v26, 1);
        v30 = v27;
      }

      sub_1DD800D28(v30, v26, 1);
LABEL_49:
      v8 = v54;
      v31 = v55;
LABEL_50:
      result = sub_1DD800D28(v18, v31, v28);
      v3 = v53;
    }

    else
    {
      if (v20)
      {
        goto LABEL_53;
      }

      v31 = v55;
      if (v27 == v18 && v26 == v55)
      {
        v42 = *(v25 + 8);

        v43 = v18;
        v44 = v55;
        v45 = 0;
LABEL_38:
        sub_1DD800D28(v43, v44, v45);
        v8 = v54;
        goto LABEL_50;
      }

      v33 = *v25;
      v34 = *(v25 + 8);
      v35 = sub_1DD875A30();

      sub_1DD800D28(v27, v26, 0);
      v36 = v18;
      v37 = v55;
      v38 = 0;
LABEL_34:
      result = sub_1DD800D28(v36, v37, v38);
      v3 = v53;
      v8 = v54;
      if ((v35 & 1) == 0)
      {
        return v21;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v54 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

void sub_1DD7A9018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagePayload.ActionWillExecute.ToolParameterValue.Value(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v79[2] = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MessagePayload.ActionWillExecute.ToolParameterValue(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v80 = v79 - v12;
  v89 = sub_1DD710A9C(&qword_1ECD11570, &qword_1DD889610);
  v13 = *(*(v89 - 8) + 64);
  MEMORY[0x1EEE9AC00](v89);
  v15 = v79 - v14;
  v88 = type metadata accessor for MessagePayload.ActionWillExecute.ParameterValue(0);
  v92 = *(v88 - 8);
  v16 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v93 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v79 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v86 = v79 - v22;
  v23 = sub_1DD710A9C(&qword_1ECD151D0, &qword_1DD8A70B0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = (v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  if (a1 == a2 || *(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v84 = a2;
  v85 = (v79 - v28);
  v87 = v7;
  v29 = 0;
  v30 = *(a1 + 64);
  v79[0] = a1 + 64;
  v79[1] = v10;
  v31 = 1 << *(a1 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v30;
  v34 = (v31 + 63) >> 6;
  v35 = &unk_1ECD151D8;
  v94 = v20;
  v82 = v34;
  v83 = a1;
  v81 = v26;
  while (v33)
  {
    v91 = (v33 - 1) & v33;
    v36 = __clz(__rbit64(v33)) | (v29 << 6);
LABEL_12:
    v39 = (*(a1 + 48) + 16 * v36);
    v41 = *v39;
    v40 = v39[1];
    v42 = *(a1 + 56) + *(v92 + 72) * v36;
    sub_1DD6E5870();
    v43 = sub_1DD710A9C(v35, &qword_1DD8A70B8);
    v44 = *(v43 + 48);
    *v26 = v41;
    v26[1] = v40;
    sub_1DD6E59B8();
    sub_1DD6E5E68(v26, 0, 1, v43);

LABEL_13:
    v45 = v35;
    v46 = v85;
    sub_1DD6E3A64();
    v47 = v45;
    v48 = sub_1DD710A9C(v45, &qword_1DD8A70B8);
    v49 = sub_1DD6E5ED0(v46, 1, v48) == 1;
    if (v49)
    {
      return;
    }

    v90 = v49;
    v50 = v15;
    v51 = *(v48 + 48);
    v52 = *v46;
    v53 = v46[1];
    sub_1DD6E59B8();
    v54 = v84;
    v55 = sub_1DD6FB688(v52, v53);
    v57 = v56;

    if ((v57 & 1) == 0)
    {
      goto LABEL_48;
    }

    v58 = *(v54 + 56) + *(v92 + 72) * v55;
    sub_1DD6E5870();
    v59 = v50;
    v60 = &v50[*(v89 + 48)];
    sub_1DD6E5870();
    sub_1DD6E5870();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DD6E5870();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1DD6E5ABC();
        goto LABEL_46;
      }

      sub_1DD6E59B8();
      v61 = _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
      sub_1DD6E5ABC();
      sub_1DD6E5ABC();
      v62 = v83;
      if ((v61 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v63 = v80;
      sub_1DD6E5870();
      v64 = *v63;
      v65 = v63[1];
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v59 = v50;
LABEL_46:
        sub_1DD824154(v59, &qword_1ECD11570);
        goto LABEL_47;
      }

      v66 = *v60;
      v67 = *(v60 + 1);
      if (v64 == v66 && v65 == v67)
      {

        v62 = v83;
      }

      else
      {
        v69 = sub_1DD875A30();

        v62 = v83;
        if ((v69 & 1) == 0)
        {
LABEL_43:
          sub_1DD6E5ABC();
LABEL_47:
          sub_1DD6E5ABC();
LABEL_48:
          sub_1DD6E5ABC();
          return;
        }
      }
    }

    sub_1DD6E5ABC();
    v70 = v88;
    v71 = &v93[*(v88 + 20)];
    v72 = *v71;
    v73 = v71[8];
    sub_1DD6E5ABC();
    v74 = &v94[*(v70 + 20)];
    v75 = *v74;
    v76 = v74[8];
    sub_1DD6E5ABC();
    if (v73 == 255)
    {
      v77 = v76 == 255;
      a1 = v62;
      v15 = v50;
      v26 = v81;
      v34 = v82;
      v35 = v47;
LABEL_40:
      v33 = v91;
      if (!v77)
      {
        return;
      }
    }

    else
    {
      v34 = v82;
      if (v76 == 255)
      {
        return;
      }

      v35 = v47;
      if (v73)
      {
        if (v73 == 1)
        {
          v77 = v76 == 1 && v72 == v75;
        }

        else
        {
          v77 = v76 == 2;
        }

        a1 = v62;
        v15 = v50;
        v26 = v81;
        goto LABEL_40;
      }

      a1 = v62;
      v15 = v50;
      v26 = v81;
      v33 = v91;
      if (v76)
      {
        return;
      }
    }
  }

  while (1)
  {
    v37 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v37 >= v34)
    {
      v78 = sub_1DD710A9C(v35, &qword_1DD8A70B8);
      sub_1DD6E5E68(v26, 1, 1, v78);
      v91 = 0;
      goto LABEL_13;
    }

    v38 = *(v79[0] + 8 * v37);
    ++v29;
    if (v38)
    {
      v91 = (v38 - 1) & v38;
      v36 = __clz(__rbit64(v38)) | (v37 << 6);
      v29 = v37;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1DD7A9870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagePayload.ClientAction.UnresolvedParameterValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v100 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DD874FA0();
  v108 = *(v7 - 8);
  v8 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v107 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v109 = &v83 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v83 - v13;
  v96 = sub_1DD710A9C(&qword_1ECD112A8, &qword_1DD8894A8);
  v15 = *(*(v96 - 8) + 64);
  MEMORY[0x1EEE9AC00](v96);
  v17 = &v83 - v16;
  v95 = type metadata accessor for MessagePayload.ClientAction.ShimParameterResolution(0);
  v101 = *(v95 - 8);
  v18 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v83 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v102 = &v83 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v83 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v92 = &v83 - v30;
  v31 = sub_1DD710A9C(&qword_1ECD151E0, &qword_1DD8A70C0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v97 = (&v83 - v36);
  if (a1 == a2)
  {
    return;
  }

  v37 = *(a1 + 16);
  v91 = a2;
  if (v37 != *(a2 + 16))
  {
    return;
  }

  v89 = v14;
  v90 = v23;
  v86 = v4;
  v38 = 0;
  v39 = *(a1 + 64);
  v85 = a1 + 64;
  v40 = 1 << *(a1 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & v39;
  v84 = (v40 + 63) >> 6;
  v88 = (v108 + 32);
  v105 = v108 + 16;
  v106 = (v108 + 8);
  v94 = v28;
  v99 = v34;
  v87 = v17;
  v83 = a1;
  v93 = v20;
  while (1)
  {
    if (!v42)
    {
      while (1)
      {
        v44 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v44 >= v84)
        {
          v82 = sub_1DD710A9C(&qword_1ECD151E8, &unk_1DD8A70C8);
          sub_1DD6E5E68(v34, 1, 1, v82);
          v98 = 0;
          goto LABEL_13;
        }

        v45 = *(v85 + 8 * v44);
        ++v38;
        if (v45)
        {
          v98 = (v45 - 1) & v45;
          v43 = __clz(__rbit64(v45)) | (v44 << 6);
          v38 = v44;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

    v98 = (v42 - 1) & v42;
    v43 = __clz(__rbit64(v42)) | (v38 << 6);
LABEL_12:
    v46 = (*(a1 + 48) + 16 * v43);
    v47 = *v46;
    v48 = v46[1];
    v49 = *(a1 + 56) + *(v101 + 72) * v43;
    sub_1DD6E5870();
    v50 = sub_1DD710A9C(&qword_1ECD151E8, &unk_1DD8A70C8);
    v51 = *(v50 + 48);
    v52 = v99;
    *v99 = v47;
    v52[1] = v48;
    v53 = v52;
    sub_1DD6E59B8();
    sub_1DD6E5E68(v53, 0, 1, v50);

LABEL_13:
    v54 = v97;
    sub_1DD6E3A64();
    v55 = sub_1DD710A9C(&qword_1ECD151E8, &unk_1DD8A70C8);
    if (sub_1DD6E5ED0(v54, 1, v55) == 1)
    {
      return;
    }

    v56 = *(v55 + 48);
    v57 = *v54;
    v58 = v54[1];
    sub_1DD6E59B8();
    v59 = v91;
    v60 = sub_1DD6FB688(v57, v58);
    v62 = v61;

    if ((v62 & 1) == 0)
    {
      goto LABEL_37;
    }

    v63 = *(v59 + 56) + *(v101 + 72) * v60;
    sub_1DD6E5870();
    v64 = *(v96 + 48);
    sub_1DD6E5870();
    sub_1DD6E5870();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v79 = v90;
      sub_1DD6E5870();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v80 = v89;
        (*v88)(v89, &v17[v64], v7);
        LODWORD(v104) = _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
        v81 = *v106;
        (*v106)(v80, v7);
        sub_1DD6E5ABC();
        sub_1DD6E5ABC();
        v81(v79, v7);
        if ((v104 & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_29;
      }

      sub_1DD6E5ABC();
      sub_1DD6E5ABC();
      (*v106)(v79, v7);
LABEL_36:
      sub_1DD824154(v17, &qword_1ECD112A8);
      return;
    }

    sub_1DD6E5870();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1DD6E5ABC();
      sub_1DD6E5ABC();
      sub_1DD6E5ABC();
      goto LABEL_36;
    }

    sub_1DD6E59B8();
    v65 = _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
    v66 = v109;
    if ((v65 & 1) == 0)
    {
      break;
    }

    v67 = *(v86 + 20);
    v68 = *&v93[v67];
    v69 = *&v100[v67];
    v70 = *(v68 + 16);
    if (v70 != *(v69 + 16))
    {
      break;
    }

    if (v70 && v68 != v69)
    {
      v71 = 0;
      v72 = (*(v108 + 80) + 32) & ~*(v108 + 80);
      v103 = v69 + v72;
      v104 = v68 + v72;
      while (v71 < *(v68 + 16))
      {
        v73 = *(v108 + 72) * v71;
        v74 = *(v108 + 16);
        v74(v66, v104 + v73, v7);
        if (v71 >= *(v69 + 16))
        {
          goto LABEL_41;
        }

        v75 = v107;
        v74(v107, v103 + v73, v7);
        sub_1DD6E1E84(&unk_1ECD0E2A0);
        v76 = sub_1DD8750F0();
        v77 = *v106;
        v78 = v75;
        v66 = v109;
        (*v106)(v78, v7);
        v77(v66, v7);
        if ((v76 & 1) == 0)
        {
          goto LABEL_32;
        }

        if (v70 == ++v71)
        {
          goto LABEL_26;
        }
      }

LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return;
    }

LABEL_26:
    sub_1DD6E5ABC();
    sub_1DD6E5ABC();
    sub_1DD6E5ABC();
    sub_1DD6E5ABC();
    v17 = v87;
    a1 = v83;
LABEL_29:
    sub_1DD6E5ABC();
    v42 = v98;
    v34 = v99;
  }

LABEL_32:
  sub_1DD6E5ABC();
  sub_1DD6E5ABC();
  sub_1DD6E5ABC();
  sub_1DD6E5ABC();
LABEL_37:
  sub_1DD6E5ABC();
}

void sub_1DD7AA328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagePayload.ClientAction.ShimParameter(0);
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  MEMORY[0x1EEE9AC00](v6);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v7 = 0;
    v8 = 1 << *(a1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a1 + 64);
    v11 = (v8 + 63) >> 6;
    v30 = v11;
    if (v10)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v10));
        v31 = (v10 - 1) & v10;
LABEL_12:
        v15 = v12 | (v7 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);

        v20 = sub_1DD6FB688(v17, v18);
        v22 = v21;

        if ((v22 & 1) == 0 || (v23 = *(*(a2 + 56) + 8 * v20), v24 = *(v23 + 16), v24 != *(v19 + 16)))
        {
LABEL_26:

          return;
        }

        if (v24 && v23 != v19)
        {
          break;
        }

LABEL_22:

        v11 = v30;
        v10 = v31;
        if (!v31)
        {
          goto LABEL_7;
        }
      }

      v29 = a2;
      v32 = v23 + ((*(v33 + 80) + 32) & ~*(v33 + 80));

      v25 = 0;
      while (v25 < *(v23 + 16))
      {
        v26 = *(v33 + 72) * v25;
        sub_1DD6E5870();
        if (v25 >= *(v19 + 16))
        {
          goto LABEL_30;
        }

        sub_1DD6E5870();
        static MessagePayload.ClientAction.ShimParameter.== infix(_:_:)();
        v28 = v27;
        sub_1DD6E5ABC();
        sub_1DD6E5ABC();
        if ((v28 & 1) == 0)
        {

          goto LABEL_26;
        }

        if (v24 == ++v25)
        {

          a2 = v29;
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v7;
      while (1)
      {
        v7 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          return;
        }

        v14 = *(a1 + 64 + 8 * v7);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v31 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }
}

void sub_1DD7AA640(uint64_t a1, uint64_t a2)
{
  v66 = type metadata accessor for ParameterValue(0);
  v71 = *(v66 - 8);
  v3 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v60 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v60 - v10;
  v11 = sub_1DD710A9C(&qword_1ECD151B8, &qword_1DD8A7098);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = (&v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v60 - v17);
  if (v16 == a2)
  {
    v68 = 1;
  }

  else if (*(v16 + 16) == *(a2 + 16))
  {
    v63 = v16;
    v64 = v5;
    v19 = 0;
    v20 = *(v16 + 64);
    v61 = v16 + 64;
    v21 = 1 << *(v16 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v20;
    v24 = (v21 + 63) >> 6;
    v69 = a2;
    v62 = v24;
    while (v23)
    {
      v70 = (v23 - 1) & v23;
      v25 = __clz(__rbit64(v23)) | (v19 << 6);
LABEL_12:
      v28 = (*(v16 + 48) + 16 * v25);
      v30 = *v28;
      v29 = v28[1];
      v31 = *(v16 + 56) + *(v71 + 72) * v25;
      sub_1DD6E5870();
      v32 = sub_1DD710A9C(&qword_1ECD151C0, &qword_1DD8A70A0);
      v33 = *(v32 + 48);
      *v14 = v30;
      v14[1] = v29;
      sub_1DD6E59B8();
      sub_1DD6E5E68(v14, 0, 1, v32);

      a2 = v69;
LABEL_13:
      sub_1DD6E3A64();
      v34 = sub_1DD710A9C(&qword_1ECD151C0, &qword_1DD8A70A0);
      v35 = sub_1DD6E5ED0(v18, 1, v34);
      v68 = v35 == 1;
      if (v35 == 1)
      {
        return;
      }

      v36 = v14;
      v37 = *(v34 + 48);
      v39 = *v18;
      v38 = v18[1];
      v40 = v18;
      sub_1DD6E59B8();
      v41 = sub_1DD6FB688(v39, v38);
      v43 = v42;

      if ((v43 & 1) == 0)
      {
        goto LABEL_34;
      }

      v44 = *(a2 + 56) + *(v71 + 72) * v41;
      v45 = v64;
      sub_1DD6E5870();
      if ((_s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0() & 1) == 0)
      {
        sub_1DD6E5ABC();
LABEL_34:
        sub_1DD6E5ABC();
        goto LABEL_35;
      }

      v46 = v66;
      v47 = &v45[*(v66 + 20)];
      v67 = *v47;
      v48 = v47[8];
      v49 = v47[9];
      sub_1DD6E5ABC();
      v50 = &v8[*(v46 + 20)];
      v51 = *v50;
      v52 = v8;
      v53 = v50[8];
      v54 = v50[9];
      v55 = v52;
      sub_1DD6E5ABC();
      if (v49)
      {
        a2 = v69;
        v23 = v70;
        v8 = v55;
        v14 = v36;
        v18 = v40;
        v24 = v62;
        v16 = v63;
        if ((v54 & 1) == 0)
        {
          return;
        }
      }

      else
      {
        if (v54)
        {
          return;
        }

        if (v48)
        {
          if (v67)
          {
            if ((v53 & 1) == 0)
            {
              return;
            }

            v56 = v51;
            a2 = v69;
            v23 = v70;
            v8 = v55;
            v14 = v36;
            v18 = v40;
            v24 = v62;
            v16 = v63;
            if (!v56)
            {
              return;
            }
          }

          else
          {
            if ((v53 & 1) == 0)
            {
              return;
            }

            v59 = v51;
            a2 = v69;
            v23 = v70;
            v8 = v55;
            v14 = v36;
            v18 = v40;
            v24 = v62;
            v16 = v63;
            if (v59)
            {
              return;
            }
          }
        }

        else
        {
          if (v53)
          {
            return;
          }

          v57 = v67 == v51;
          a2 = v69;
          v23 = v70;
          v8 = v55;
          v14 = v36;
          v18 = v40;
          v24 = v62;
          v16 = v63;
          if (!v57)
          {
            return;
          }
        }
      }
    }

    while (1)
    {
      v26 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v26 >= v24)
      {
        v58 = sub_1DD710A9C(&qword_1ECD151C0, &qword_1DD8A70A0);
        sub_1DD6E5E68(v14, 1, 1, v58);
        v70 = 0;
        goto LABEL_13;
      }

      v27 = *(v61 + 8 * v26);
      ++v19;
      if (v27)
      {
        v70 = (v27 - 1) & v27;
        v25 = __clz(__rbit64(v27)) | (v26 << 6);
        v19 = v26;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_35:
    v68 = 0;
  }
}

uint64_t sub_1DD7AAB98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644970657473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6552746E65696C63 && a2 == 0xEF64497473657571;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6553746E65696C63 && a2 == 0xEF64496E6F697373;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
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

uint64_t sub_1DD7AAD98(char a1)
{
  result = 0x644970657473;
  switch(a1)
  {
    case 1:
      result = 0x496E6F6973736573;
      break;
    case 2:
      result = 0x6552746E65696C63;
      break;
    case 3:
      result = 0x6553746E65696C63;
      break;
    case 4:
      result = 0x64496C6F6F74;
      break;
    case 5:
      result = 0x6574656D61726170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7AAE68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7AAB98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7AAE90(uint64_t a1)
{
  v2 = sub_1DD7FE830();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7AAECC(uint64_t a1)
{
  v2 = sub_1DD7FE830();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientEffectInvocation.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6FE1BC();
  v3 = sub_1DD710A9C(&qword_1ECD11280, &qword_1DD889488);
  sub_1DD6E49A8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD7FE830();
  sub_1DD6E1808();
  sub_1DD825C8C();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v9);
  sub_1DD6E5FDC();
  sub_1DD8759D0();
  if (!v1)
  {
    v10 = type metadata accessor for MessagePayload.ClientEffectInvocation(0);
    sub_1DD825AA8(v10);
    sub_1DD6E5FDC();
    sub_1DD8759D0();
    sub_1DD6FE1CC();
    sub_1DD824BDC();
    sub_1DD875970();
    sub_1DD82595C(v2[7]);
    sub_1DD6E6174();
    sub_1DD824BDC();
    sub_1DD875970();
    sub_1DD82595C(v2[8]);
    sub_1DD82636C();
    sub_1DD824BDC();
    sub_1DD875970();
    v14 = *(v0 + v2[9]);
    sub_1DD8267FC();
    sub_1DD710A9C(&qword_1ECD10E58, &qword_1DD8AED90);
    sub_1DD7FD198();
    sub_1DD826298();
    sub_1DD6E63A8();
    sub_1DD8759D0();
  }

  v11 = *(v5 + 8);
  v12 = sub_1DD6DEA04();
  v13(v12);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

void MessagePayload.ClientEffectInvocation.init(from:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  sub_1DD826914(v5);
  v6 = sub_1DD874820();
  v7 = sub_1DD6DDEAC(v6);
  v40 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DE21C();
  sub_1DD824D78();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DFF40();
  v37 = sub_1DD710A9C(&qword_1ECD11290, &qword_1DD889490);
  sub_1DD6DDEAC(v37);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1DD6E27D4();
  v38 = type metadata accessor for MessagePayload.ClientEffectInvocation(v17);
  v18 = sub_1DD6DE1C4(v38);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DDEE8();
  sub_1DD8268E4(v21);
  v23 = *(v4 + 24);
  v22 = *(v4 + 32);
  v24 = sub_1DD826F54();
  sub_1DD824CF8(v24);
  sub_1DD7FE830();
  sub_1DD8259BC();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1EC8(v39);
  }

  else
  {
    sub_1DD6E14DC();
    sub_1DD6E1E84(v25);
    sub_1DD8258D0();
    sub_1DD8758D0();
    v26 = v1;
    v27 = *(v40 + 32);
    v27(v41, v26, v6);
    sub_1DD6DEC54();
    sub_1DD8258D0();
    sub_1DD8758D0();
    v27(v41 + v38[5], v2, v6);
    sub_1DD825178();
    sub_1DD8258D0();
    v28 = sub_1DD875870();
    sub_1DD826C70(v28, v29, v38[6]);
    sub_1DD6E6174();
    sub_1DD8258D0();
    v30 = sub_1DD875870();
    sub_1DD826C70(v30, v31, v38[7]);
    sub_1DD82636C();
    sub_1DD8258D0();
    v32 = sub_1DD875870();
    sub_1DD826C70(v32, v33, v38[8]);
    sub_1DD710A9C(&qword_1ECD10E58, &qword_1DD8AED90);
    sub_1DD8267FC();
    sub_1DD7FD2FC();
    sub_1DD826A88();
    sub_1DD8258D0();
    sub_1DD8758D0();
    v34 = *(v13 + 8);
    v35 = sub_1DD705C50();
    v36(v35);
    *(v41 + v38[9]) = v42;
    sub_1DD6E5870();
    sub_1DD6E1EC8(v39);
    sub_1DD82579C();
    sub_1DD6E5ABC();
  }

  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.ClientAction.toolId.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.ClientAction(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.ClientAction.parameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessagePayload.ClientAction(0) + 24));
}

uint64_t MessagePayload.ClientAction.parameters.setter()
{
  v2 = sub_1DD6DE290();
  v3 = *(type metadata accessor for MessagePayload.ClientAction(v2) + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t MessagePayload.ClientAction.parameters.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.ClientAction(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.ClientAction.shimParameterResolution.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessagePayload.ClientAction(0) + 28));
}

uint64_t MessagePayload.ClientAction.shimParameterResolution.setter()
{
  v2 = sub_1DD6DE290();
  v3 = *(type metadata accessor for MessagePayload.ClientAction(v2) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t MessagePayload.ClientAction.shimParameterResolution.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.ClientAction(v0) + 28);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.ClientAction.shimParameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessagePayload.ClientAction(0) + 32));
}

uint64_t MessagePayload.ClientAction.shimParameters.setter()
{
  v2 = sub_1DD6DE290();
  v3 = *(type metadata accessor for MessagePayload.ClientAction(v2) + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t MessagePayload.ClientAction.shimParameters.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.ClientAction(v0) + 32);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.ClientAction.clientQueryId.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.ClientAction(v0) + 36);
  return sub_1DD6DDF9C();
}

void MessagePayload.ClientAction.init(eventId:toolId:shimParameters:clientQueryId:)()
{
  sub_1DD6FF8A8();
  v21 = v4;
  v6 = v5;
  sub_1DD826C60();
  v7 = sub_1DD6E0A5C();
  v8 = type metadata accessor for MessagePayload.ClientAction(v7);
  v9 = (v0 + v8[9]);
  v10 = sub_1DD874820();
  sub_1DD6E0A68(v10);
  v12 = v11;
  v13 = *(v11 + 16);
  v14 = sub_1DD6DDEFC();
  v15(v14);
  sub_1DD6E1CD0();
  *v16 = v3;
  v16[1] = v2;
  *(v0 + v8[8]) = v1;
  *v9 = v6;
  v9[1] = v21;
  sub_1DD874FA0();
  sub_1DD6EFF74();
  *(v0 + v8[6]) = sub_1DD875080();
  type metadata accessor for MessagePayload.ClientAction.ShimParameterResolution(0);
  sub_1DD6EFF74();
  v17 = sub_1DD875080();
  v18 = *(v12 + 8);
  v19 = sub_1DD705564();
  v20(v19);
  *(v0 + v8[7]) = v17;
  sub_1DD6E58C4();
}

void MessagePayload.ClientAction.init(eventId:toolId:parameters:shimParameterResolution:clientQueryId:)()
{
  sub_1DD6FF8A8();
  v22 = v5;
  v23 = v4;
  v7 = v6;
  sub_1DD826C60();
  v8 = sub_1DD6E0A5C();
  v9 = type metadata accessor for MessagePayload.ClientAction(v8);
  v10 = (v0 + v9[9]);
  v11 = sub_1DD874820();
  sub_1DD6E0A68(v11);
  v13 = v12;
  v14 = *(v12 + 16);
  v15 = sub_1DD6DDEFC();
  v16(v15);
  sub_1DD6E1CD0();
  *v17 = v3;
  v17[1] = v2;
  *(v0 + v9[6]) = v1;
  *v10 = v7;
  v10[1] = v22;
  *(v0 + v9[7]) = v23;
  sub_1DD710A9C(&qword_1ECD11298, &qword_1DD889498);
  v18 = sub_1DD875080();
  v19 = *(v13 + 8);
  v20 = sub_1DD82568C();
  v21(v20);
  *(v0 + v9[8]) = v18;
  sub_1DD6E58C4();
}

void MessagePayload.ClientAction.init(eventId:toolId:parameters:clientQueryId:)()
{
  sub_1DD6DEB38();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = type metadata accessor for MessagePayload.ClientAction.ShimParameterResolution(0);
  v15 = sub_1DD6DDEAC(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DDEE8();
  v49 = v18;
  sub_1DD6E9A9C();
  v48 = sub_1DD874FA0();
  v19 = sub_1DD6DDEAC(v48);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DDEE8();
  v22 = sub_1DD6E9A9C();
  v23 = type metadata accessor for MessagePayload.ClientAction(v22);
  v24 = sub_1DD8277F8(v23);
  sub_1DD6E0A68(v24);
  v26 = sub_1DD8276F8(v25);
  v27(v26);
  v28 = (v13 + *(v1 + 20));
  *v28 = v11;
  v28[1] = v9;
  sub_1DD827478();
  *v0 = v5;
  v0[1] = v3;
  sub_1DD710A9C(&qword_1ECD112A0, &qword_1DD8894A0);
  v29 = sub_1DD8757C0();
  v30 = 0;
  v31 = *(v7 + 64);
  v32 = *(v7 + 32);
  sub_1DD6E51DC();
  sub_1DD826124(v33);
  if (v0)
  {
    while (1)
    {
      sub_1DD827464();
LABEL_8:
      v38 = sub_1DD825D10(v34);
      v39(v38);
      v40 = *(v5 + 32);
      v5 = v49;
      v41 = sub_1DD8265C8();
      v42(v41);
      swift_storeEnumTagMultiPayload();
      sub_1DD8258E8();
      v43 = *(v29 + 16);
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        break;
      }

      *(v29 + 16) = v45;

      if (!v0)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v35 = v30;
    while (1)
    {
      v30 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v30 >= v3)
      {
        sub_1DD827444();
        sub_1DD710A9C(&qword_1ECD11298, &qword_1DD889498);
        sub_1DD875080();
        v46 = sub_1DD82770C();
        v47(v46);
        *(v0 + *(v13 + 32)) = v29;
        sub_1DD6DFED0();
        return;
      }

      ++v35;
      if (*(v7 + 64 + 8 * v30))
      {
        sub_1DD826C80();
        v0 = (v37 & v36);
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void MessagePayload.ClientAction.init(eventId:toolId:shimParameterResolution:clientQueryId:)()
{
  sub_1DD6FF8A8();
  v24 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for MessagePayload.ClientAction(0);
  v12 = (v10 + v11[9]);
  v13 = sub_1DD874820();
  sub_1DD6E0A68(v13);
  v15 = v14;
  v16 = *(v14 + 16);
  v17 = sub_1DD7029A8();
  v18(v17);
  v19 = (v10 + v11[5]);
  *v19 = v8;
  v19[1] = v6;
  *(v10 + v11[6]) = sub_1DD7ABEE4(v4);
  *(v10 + v11[7]) = v4;
  sub_1DD710A9C(&qword_1ECD11298, &qword_1DD889498);
  v20 = sub_1DD875080();
  v21 = *(v15 + 8);
  v22 = sub_1DD8259E0();
  v23(v22);
  *(v10 + v11[8]) = v20;
  *v12 = v2;
  v12[1] = v24;
  sub_1DD6E58C4();
}

uint64_t sub_1DD7ABEE4(uint64_t a1)
{
  v2 = type metadata accessor for MessagePayload.ClientAction.ShimParameterResolution(0);
  v73 = *(v2 - 8);
  v74 = v2;
  v3 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1DD874FA0();
  v6 = *(v67 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v63 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v60 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v60 - v12;
  v75 = sub_1DD710A9C(&qword_1ECD151E8, &unk_1DD8A70C8);
  v13 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v66 = (&v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v60 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v71 = &v60 - v19;
  v21 = a1 + 64;
  v20 = *(a1 + 64);
  v68 = MEMORY[0x1E69E7CC8];
  v77 = MEMORY[0x1E69E7CC8];
  v22 = 1 << *(a1 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v20;
  v25 = (v22 + 63) >> 6;
  v61 = v6;
  v62 = (v6 + 32);
  v76 = a1;

  v27 = 0;
  v69 = v25;
  v70 = v21;
  v72 = v5;
  while (1)
  {
    v28 = v27;
    if (!v24)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v29 = v17;
      v27 = v28;
LABEL_11:
      v30 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v31 = v30 | (v27 << 6);
      v32 = v75;
      v33 = (*(v76 + 48) + 16 * v31);
      v35 = *v33;
      v34 = v33[1];
      v36 = *(v76 + 56) + *(v73 + 72) * v31;
      v37 = *(v75 + 48);
      v38 = v71;
      sub_1DD6E5870();
      *v38 = v35;
      v38[1] = v34;
      sub_1DD6E3A64();
      v39 = *(v32 + 48);
      v17 = v29;
      v40 = v72;
      sub_1DD6E5870();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      sub_1DD6E5ABC();
      result = sub_1DD824154(v29, &qword_1ECD151E8);
      v28 = v27;
      v25 = v69;
      v21 = v70;
      if (!v24)
      {
LABEL_7:
        while (1)
        {
          v27 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v27 >= v25)
          {

            return v68;
          }

          v24 = *(v21 + 8 * v27);
          ++v28;
          if (v24)
          {
            v29 = v17;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_29;
      }
    }

    v41 = *v62;
    (*v62)(v65, v40, v67);
    v41(v64, v65, v67);
    v42 = v41;
    sub_1DD6E3A64();
    v41(v63, v64, v67);
    if (v68[3] <= v68[2])
    {

      sub_1DD853AC4();
    }

    else
    {
    }

    v43 = v77;
    v45 = *v66;
    v44 = v66[1];
    v46 = *(v77 + 40);
    sub_1DD875B20();
    v60 = v44;
    _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
    result = sub_1DD875B60();
    v47 = v43 + 64;
    v68 = v43;
    v48 = -1 << *(v43 + 32);
    v49 = result & ~v48;
    v50 = v49 >> 6;
    if (((-1 << v49) & ~*(v43 + 64 + 8 * (v49 >> 6))) == 0)
    {
      break;
    }

    v51 = __clz(__rbit64((-1 << v49) & ~*(v43 + 64 + 8 * (v49 >> 6)))) | v49 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    v56 = *(v75 + 48);
    *(v47 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
    v57 = v68;
    v58 = (v68[6] + 16 * v51);
    v59 = v60;
    *v58 = v45;
    v58[1] = v59;
    v42((v57[7] + *(v61 + 72) * v51), v63, v67);
    ++v57[2];
    result = sub_1DD6E5ABC();
    v25 = v69;
    v21 = v70;
  }

  v52 = 0;
  v53 = (63 - v48) >> 6;
  while (++v50 != v53 || (v52 & 1) == 0)
  {
    v54 = v50 == v53;
    if (v50 == v53)
    {
      v50 = 0;
    }

    v52 |= v54;
    v55 = *(v47 + 8 * v50);
    if (v55 != -1)
    {
      v51 = __clz(__rbit64(~v55)) + (v50 << 6);
      goto LABEL_26;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void MessagePayload.ClientAction.init(eventId:toolId:parameters:)()
{
  sub_1DD6DEB38();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for MessagePayload.ClientAction.ShimParameterResolution(0);
  v12 = sub_1DD6DDEAC(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DDEE8();
  v46 = v15;
  sub_1DD6E9A9C();
  v45 = sub_1DD874FA0();
  v16 = sub_1DD6DDEAC(v45);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DDEE8();
  v19 = sub_1DD6E9A9C();
  v20 = type metadata accessor for MessagePayload.ClientAction(v19);
  v21 = sub_1DD8277F8(v20);
  *v0 = 0;
  v0[1] = 0;
  sub_1DD6E0A68(v21);
  v23 = sub_1DD8276F8(v22);
  v24(v23);
  v25 = (v10 + *(v1 + 20));
  *v25 = v8;
  v25[1] = v6;
  sub_1DD827478();
  sub_1DD710A9C(&qword_1ECD112A0, &qword_1DD8894A0);
  v26 = sub_1DD8757C0();
  v27 = 0;
  v28 = *(v4 + 64);
  v29 = *(v4 + 32);
  sub_1DD6E51DC();
  sub_1DD826124(v30);
  if (v0)
  {
    while (1)
    {
      sub_1DD827464();
LABEL_8:
      v35 = sub_1DD825D10(v31);
      v36(v35);
      v37 = *(v2 + 32);
      v2 = v46;
      v38 = sub_1DD8265C8();
      v39(v38);
      swift_storeEnumTagMultiPayload();
      sub_1DD8258E8();
      v40 = *(v26 + 16);
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        break;
      }

      *(v26 + 16) = v42;

      if (!v0)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v32 = v27;
    while (1)
    {
      v27 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v27 >= v6)
      {
        sub_1DD827444();
        sub_1DD710A9C(&qword_1ECD11298, &qword_1DD889498);
        sub_1DD875080();
        v43 = sub_1DD82770C();
        v44(v43);
        *(v0 + *(v10 + 32)) = v26;
        sub_1DD6DFED0();
        return;
      }

      ++v32;
      if (*(v4 + 64 + 8 * v27))
      {
        sub_1DD826C80();
        v0 = (v34 & v33);
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void static MessagePayload.ClientAction.ShimParameterResolution.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v34 = type metadata accessor for MessagePayload.ClientAction.UnresolvedParameterValue(0);
  v2 = sub_1DD6DE1C4(v34);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DDEE8();
  v35 = v5;
  sub_1DD6E9A9C();
  v6 = sub_1DD874FA0();
  v7 = sub_1DD6DDEAC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6E2220();
  v12 = type metadata accessor for MessagePayload.ClientAction.ShimParameterResolution(0);
  v13 = sub_1DD6DE1C4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DE21C();
  sub_1DD6E61D0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DEBEC();
  v17 = sub_1DD710A9C(&qword_1ECD112A8, &qword_1DD8894A8);
  sub_1DD6DEA10(v17);
  v19 = *(v18 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6E17C8();
  v22 = *(v21 + 56);
  sub_1DD6E5870();
  sub_1DD6E5870();
  sub_1DD825980();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1DD7061D4();
    sub_1DD701174();
    sub_1DD6E5870();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1DD826A58();
      v29 = sub_1DD826A94();
      v30(v29);
      sub_1DD8256EC();
      _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
      v31 = *(v9 + 8);
      v32 = sub_1DD6E60FC();
      v31(v32);
      v33 = sub_1DD825B84();
      v31(v33);
      sub_1DD825218();
      goto LABEL_11;
    }

    v26 = *(v9 + 8);
    v27 = sub_1DD825B84();
    v28(v27);
    goto LABEL_8;
  }

  sub_1DD7061D4();
  sub_1DD8258AC();
  sub_1DD6E5870();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1DD824EE8();
    sub_1DD6E5ABC();
LABEL_8:
    sub_1DD824154(v0, &qword_1ECD112A8);
    goto LABEL_11;
  }

  sub_1DD6E59B8();
  sub_1DD6F4498();
  if (_s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0())
  {
    v23 = *(v34 + 20);
    v24 = *(v1 + v23);
    v25 = *(v35 + v23);
    sub_1DD71533C();
  }

  sub_1DD8260D0();
  sub_1DD6E5ABC();
  sub_1DD6E9594();
  sub_1DD6E5ABC();
  sub_1DD825218();
LABEL_11:
  sub_1DD6FE01C();
  sub_1DD6DFED0();
}

uint64_t sub_1DD7ACAA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465766C6F736572 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x766C6F7365726E75 && a2 == 0xEA00000000006465)
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

uint64_t sub_1DD7ACB70(char a1)
{
  if (a1)
  {
    return 0x766C6F7365726E75;
  }

  else
  {
    return 0x6465766C6F736572;
  }
}

uint64_t sub_1DD7ACBB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7ACAA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7ACBDC(uint64_t a1)
{
  v2 = sub_1DD7FE8C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7ACC18(uint64_t a1)
{
  v2 = sub_1DD7FE8C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7ACC54(uint64_t a1)
{
  v2 = sub_1DD7FE96C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7ACC90(uint64_t a1)
{
  v2 = sub_1DD7FE96C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7ACCCC(uint64_t a1)
{
  v2 = sub_1DD7FE918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7ACD08(uint64_t a1)
{
  v2 = sub_1DD7FE918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientAction.ShimParameterResolution.encode(to:)()
{
  sub_1DD6DED2C();
  v1 = v0;
  v2 = sub_1DD710A9C(&qword_1ECD112B0, &qword_1DD8894B0);
  sub_1DD6DDEAC(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E9924(v6, v44);
  v47 = type metadata accessor for MessagePayload.ClientAction.UnresolvedParameterValue(0);
  v7 = sub_1DD6DE1C4(v47);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DDEE8();
  v10 = sub_1DD710A9C(&qword_1ECD112B8, &qword_1DD8894B8);
  v46 = sub_1DD6DDEAC(v10);
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6E17C8();
  v45 = sub_1DD874FA0();
  v14 = sub_1DD6DDEAC(v45);
  v48 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD824734();
  v18 = type metadata accessor for MessagePayload.ClientAction.ShimParameterResolution(0);
  v19 = sub_1DD6DE1C4(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD8247F4();
  v49 = sub_1DD710A9C(&qword_1ECD112C0, &qword_1DD8894C0);
  sub_1DD6DDEAC(v49);
  v23 = v22;
  v25 = *(v24 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6DDFE4();
  v28 = v1[3];
  v27 = v1[4];
  sub_1DD6E6C94(v1);
  sub_1DD7FE8C4();
  sub_1DD77E6F4();
  sub_1DD875BB0();
  sub_1DD7061D4();
  sub_1DD6E5870();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DD6E59B8();
    sub_1DD6FF8F4();
    sub_1DD7FE918();
    sub_1DD79A3A4();
    sub_1DD875910();
    sub_1DD8260B8();
    sub_1DD6E1E84(v29);
    sub_1DD8759D0();
    v30 = sub_1DD824A60();
    v31(v30);
    sub_1DD824EE8();
    sub_1DD6E5ABC();
    v32 = *(v23 + 8);
    v33 = sub_1DD825C74();
  }

  else
  {
    v35 = *(v48 + 32);
    v36 = sub_1DD825C98();
    v37(v36);
    sub_1DD7FE96C();
    sub_1DD824BCC();
    sub_1DD875910();
    sub_1DD6E05D4();
    sub_1DD6E1E84(v38);
    sub_1DD826844();
    sub_1DD8759D0();
    v39 = sub_1DD825950();
    v40(v39, v46);
    v41 = sub_1DD8252CC();
    v42(v41);
    v43 = *(v23 + 8);
    v33 = sub_1DD825650();
  }

  v34(v33);
  sub_1DD825AC0();
  sub_1DD6E0C78();
}

void MessagePayload.ClientAction.ShimParameterResolution.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v64 = sub_1DD710A9C(&qword_1ECD112E8, &qword_1DD8894C8);
  sub_1DD6DDEAC(v64);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E5D10(v6, v60);
  v7 = sub_1DD710A9C(&qword_1ECD112F0, &qword_1DD8894D0);
  sub_1DD6DDEAC(v7);
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD82486C(v11, v61);
  v12 = sub_1DD710A9C(&qword_1ECD112F8, &qword_1DD8894D8);
  v13 = sub_1DD6DDEAC(v12);
  v62 = v14;
  v63 = v13;
  v16 = *(v15 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DE340();
  v18 = type metadata accessor for MessagePayload.ClientAction.ShimParameterResolution(0);
  v19 = sub_1DD6DE1C4(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DE21C();
  sub_1DD825724();
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD6F8C84();
  MEMORY[0x1EEE9AC00](v23);
  sub_1DD6DFF40();
  v24 = v2[3];
  v25 = v2[4];
  sub_1DD6E49C0(v2);
  sub_1DD7FE8C4();
  sub_1DD8256E0();
  sub_1DD827908();
  if (!v0)
  {
    v26 = sub_1DD875900();
    sub_1DD6ED750(v26, 0);
    sub_1DD827598();
    if (!v27)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v34 == v35)
      {
        __break(1u);
        return;
      }

      v65 = *(v33 + v32);
      v36 = sub_1DD826480(v28, v29, v30, v31, v32);
      sub_1DD6ED830(v36);
      v38 = v37;
      v40 = v39;
      swift_unknownObjectRelease();
      if (v38 == v40 >> 1)
      {
        if (v65)
        {
          sub_1DD6FF8F4();
          sub_1DD7FE918();
          sub_1DD8257E0();
          sub_1DD875800();
          type metadata accessor for MessagePayload.ClientAction.UnresolvedParameterValue(0);
          sub_1DD8260B8();
          sub_1DD6E1E84(v41);
          sub_1DD825118();
          sub_1DD826118();
          sub_1DD8758D0();
          swift_unknownObjectRelease();
          v51 = sub_1DD8249F4();
          v52(v51);
          v53 = *(v62 + 8);
          v54 = sub_1DD6F4D4C();
          v55(v54);
        }

        else
        {
          sub_1DD7FE96C();
          sub_1DD8257E0();
          sub_1DD875800();
          sub_1DD874FA0();
          sub_1DD6E05D4();
          sub_1DD6E1E84(v50);
          sub_1DD8258B8();
          sub_1DD826118();
          sub_1DD8758D0();
          swift_unknownObjectRelease();
          v56 = sub_1DD8249F4();
          v57(v56);
          v58 = sub_1DD82526C();
          v59(v58, v63);
        }

        swift_storeEnumTagMultiPayload();
        sub_1DD6E59B8();
        sub_1DD6E59B8();
        v49 = v2;
        goto LABEL_10;
      }
    }

    sub_1DD875740();
    sub_1DD6E41BC();
    v43 = v42;
    v44 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v43 = v18;
    sub_1DD6FA3D0();
    sub_1DD875810();
    sub_1DD6DF100();
    v45 = *MEMORY[0x1E69E6AF8];
    sub_1DD8250B8();
    (*(v46 + 104))(v43);
    swift_willThrow();
    swift_unknownObjectRelease();
    v47 = sub_1DD6FE110();
    v48(v47);
  }

  v49 = v2;
LABEL_10:
  sub_1DD6E1EC8(v49);
  sub_1DD826464();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.ClientAction.UnresolvedParameterValue.candidates.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for MessagePayload.ClientAction.UnresolvedParameterValue(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t MessagePayload.ClientAction.UnresolvedParameterValue.init(raw:candidates:)()
{
  sub_1DD8250F8();
  v2 = sub_1DD874FA0();
  sub_1DD6DF448(v2);
  v4 = *(v3 + 32);
  v5 = sub_1DD6E87AC();
  v6(v5);
  result = type metadata accessor for MessagePayload.ClientAction.UnresolvedParameterValue(0);
  *(v1 + *(result + 20)) = v0;
  return result;
}

uint64_t sub_1DD7AD834(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7823730 && a2 == 0xE300000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616469646E6163 && a2 == 0xEA00000000007365)
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

uint64_t sub_1DD7AD904(char a1)
{
  if (a1)
  {
    return 0x74616469646E6163;
  }

  else
  {
    return 7823730;
  }
}

uint64_t sub_1DD7AD940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7AD834(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7AD968(uint64_t a1)
{
  v2 = sub_1DD7FE9C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7AD9A4(uint64_t a1)
{
  v2 = sub_1DD7FE9C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientAction.UnresolvedParameterValue.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  v2 = sub_1DD710A9C(&qword_1ECD11308, &unk_1DD8894E0);
  sub_1DD6E49A8(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD7FE9C0();
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
    v9 = *(v1 + *(type metadata accessor for MessagePayload.ClientAction.UnresolvedParameterValue(0) + 20));
    sub_1DD82682C();
    sub_1DD710A9C(&qword_1ECD11318, &qword_1DD8ACD80);
    sub_1DD7FEA14();
    sub_1DD6E63A8();
    sub_1DD8759D0();
  }

  v7 = sub_1DD6EFFB4();
  v8(v7);
  sub_1DD825790();
  sub_1DD826CF4();
}

void MessagePayload.ClientAction.UnresolvedParameterValue.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD70068C();
  v22 = sub_1DD874FA0();
  v3 = sub_1DD6DDEAC(v22);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6E535C();
  v6 = sub_1DD710A9C(&qword_1ECD11328, &qword_1DD8894F0);
  sub_1DD6DDEAC(v6);
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1DD700BA4();
  v11 = type metadata accessor for MessagePayload.ClientAction.UnresolvedParameterValue(v10);
  v12 = sub_1DD6DE1C4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6E2220();
  v16 = v0[3];
  v15 = v0[4];
  sub_1DD6FE8B0(v0);
  sub_1DD7FE9C0();
  sub_1DD6EF0F4();
  sub_1DD875B90();
  if (v2)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD6E05D4();
    sub_1DD6E1E84(v17);
    sub_1DD6F9A4C();
    sub_1DD82668C();
    sub_1DD827074();
    sub_1DD826578();
    v18 = sub_1DD825B84();
    v19(v18);
    sub_1DD710A9C(&qword_1ECD11318, &qword_1DD8ACD80);
    sub_1DD82552C();
    sub_1DD7FEAC8();
    sub_1DD824B6C();
    sub_1DD825CF8();
    sub_1DD827074();
    v20 = sub_1DD6FAE08();
    v21(v20);
    *(v1 + *(v11 + 20)) = v23;
    sub_1DD7006C0();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v0);
    sub_1DD824EE8();
    sub_1DD6E5ABC();
  }

  sub_1DD792AF8();
  sub_1DD6E0C78();
}

void static MessagePayload.ClientAction.ShimParameter.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v55 = v4;
  v5 = sub_1DD874FA0();
  v6 = sub_1DD6DDEAC(v5);
  v53 = v7;
  v54 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DDEE8();
  v52 = v10;
  v11 = sub_1DD6E9A9C();
  v12 = type metadata accessor for MessagePayload.ClientAction.ShimParameter(v11);
  v13 = sub_1DD6DE1C4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DE21C();
  sub_1DD825028();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD824970();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD825884();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD826CA0();
  v19 = sub_1DD710A9C(&qword_1ECD11338, &qword_1DD8894F8);
  sub_1DD6DEA10(v19);
  v21 = *(v20 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD8265FC();
  v24 = v0 + *(v23 + 56);
  sub_1DD6E5870();
  sub_1DD6E5870();
  sub_1DD8256C8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD700C30();
      sub_1DD700D0C();
      sub_1DD6E5870();
      v44 = *v2;
      v43 = v2[1];
      sub_1DD6FF97C();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_24;
      }

      v45 = *v24;
      v46 = *(v24 + 8);
      if (v44 != v45 || v43 != v46)
      {
        sub_1DD825650();
        sub_1DD6FA430();
      }

      goto LABEL_32;
    case 2u:
      sub_1DD700C30();
      sub_1DD6ED180();
      sub_1DD6E5870();
      v27 = v3[1];
      v62[0] = *v3;
      v62[1] = v27;
      v63[0] = v3[2];
      *(v63 + 9) = *(v3 + 41);
      sub_1DD6FF97C();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_1DD826EB8();
        *(v61 + 1) = *(v24 + 41);
        v28 = v3[1];
        v58[0] = *v3;
        v58[1] = v28;
        v59[0] = v3[2];
        *(v59 + 9) = *(v3 + 41);
        v56[0] = v30;
        v56[1] = v29;
        v57[0] = *(v24 + 32);
        *(v57 + 9) = *(v24 + 41);
        static MessagePayload.ClientAction.PersonQuery.== infix(_:_:)(v58, v56, v31, v32, v33, v34, v35, v36, v52, v53, v54, v55, v30, *(&v30 + 1), v29, *(&v29 + 1), *&v57[0], *(&v57[0] + 1), *&v57[1], *(&v57[1] + 1), *&v58[0], *(&v58[0] + 1), v28, *(&v28 + 1), *&v59[0], *(&v59[0] + 1), *&v59[1], *(&v59[1] + 1), v60[0], v60[1], v60[2], v60[3], v60[4], v61[0]);
        sub_1DD7FEB9C(v60);
        sub_1DD7FEB9C(v62);
        goto LABEL_27;
      }

      sub_1DD7FEB9C(v62);
      goto LABEL_25;
    case 3u:
      sub_1DD700C30();
      sub_1DD705564();
      sub_1DD6E5870();
      v38 = *v1;
      v37 = v1[1];
      v39 = v1[2];
      sub_1DD6FF97C();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v41 = *(v24 + 8);
        v40 = *(v24 + 16);
        if (v37)
        {
          if (!v41)
          {
            goto LABEL_30;
          }

          if (v38 != *v24 || v37 != v41)
          {
            sub_1DD8256EC();
            sub_1DD705D5C();
            if ((sub_1DD875A30() & 1) == 0)
            {
              goto LABEL_30;
            }
          }
        }

        else if (v41)
        {
LABEL_30:

LABEL_32:
          sub_1DD8251F0();
          goto LABEL_33;
        }

        sub_1DD825650();
        sub_1DD71533C();

        goto LABEL_32;
      }

LABEL_24:

LABEL_25:
      sub_1DD824154(v0, &qword_1ECD11338);
LABEL_33:
      sub_1DD6DFED0();
      return;
    default:
      sub_1DD700C30();
      sub_1DD82568C();
      sub_1DD6E5870();
      sub_1DD6FF97C();
      if (swift_getEnumCaseMultiPayload())
      {
        v25 = sub_1DD6ED80C();
        v26(v25);
        goto LABEL_25;
      }

      sub_1DD8274CC();
      v48(v52, v24, v54);
      _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
      v49 = *(v53 + 8);
      v50 = sub_1DD6E0F98();
      v49(v50);
      v51 = sub_1DD705C50();
      v49(v51);
LABEL_27:
      sub_1DD8251F0();
      goto LABEL_33;
  }
}

void static MessagePayload.ClientAction.PersonQuery.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_1DD826DB8();
  a33 = v34;
  a34 = v36;
  v38 = v37;
  v39 = *(v35 + 8);
  v40 = *(v35 + 16);
  v41 = *(v35 + 24);
  v42 = *(v35 + 32);
  v44 = *(v35 + 40);
  v43 = *(v35 + 48);
  v45 = *(v38 + 8);
  v46 = *(v38 + 16);
  v48 = *(v38 + 24);
  v47 = *(v38 + 32);
  v50 = *(v38 + 40);
  v49 = *(v38 + 48);
  if (!v39)
  {
    if (v45)
    {
      goto LABEL_17;
    }

LABEL_10:
    if (v42 == 1)
    {
      sub_1DD6E0C60();
      sub_1DD8273F0();
      sub_1DD7FEBCC(v54, v55, v56);
      if (v47 == 1)
      {
        sub_1DD6E6378();
        sub_1DD8273E4();
        sub_1DD7FEBCC(v57, v58, v59);
        sub_1DD6E0C60();
        sub_1DD8273F0();
        sub_1DD7FEC14(v60, v61, v62);
        goto LABEL_17;
      }

      sub_1DD6E6378();
      sub_1DD82598C();
      sub_1DD7FEBCC(v72, v73, v74);
    }

    else
    {
      a18 = v40;
      a19 = v41;
      a20 = v42;
      a21 = v44;
      a22 = v43;
      if (v47 != 1)
      {
        LOBYTE(a13) = v46;
        a14 = v48;
        a15 = v47;
        a16 = v50;
        a17 = v49;
        static MessagePayload.ClientAction.PersonQuery.Handle.== infix(_:_:)(&a18, &a13);
        v81 = sub_1DD824858();
        sub_1DD7FEBCC(v81, v82, v83);
        sub_1DD6E6378();
        sub_1DD82598C();
        sub_1DD7FEBCC(v84, v85, v86);
        v87 = sub_1DD824858();
        sub_1DD7FEBCC(v87, v88, v89);

        v90 = sub_1DD824858();
        sub_1DD7FEC14(v90, v91, v92);
        goto LABEL_17;
      }

      v63 = sub_1DD824858();
      sub_1DD7FEBCC(v63, v64, v65);
      sub_1DD6E6378();
      sub_1DD8273E4();
      sub_1DD7FEBCC(v66, v67, v68);
      v69 = sub_1DD824858();
      sub_1DD7FEBCC(v69, v70, v71);
    }

    v75 = sub_1DD824858();
    sub_1DD7FEC14(v75, v76, v77);
    sub_1DD6E6378();
    sub_1DD82598C();
    sub_1DD7FEC14(v78, v79, v80);
    goto LABEL_17;
  }

  if (v45)
  {
    if (*v35 == *v38 && v39 == v45)
    {
      goto LABEL_10;
    }

    v52 = *(v35 + 56);
    v53 = *(v38 + 56);
    v49 = *(v38 + 48);
    v50 = *(v38 + 40);
    v48 = *(v38 + 24);
    LOBYTE(v46) = *(v38 + 16);
    v44 = *(v35 + 40);
    v41 = *(v35 + 24);
    v40 = *(v35 + 16);
    v47 = *(v38 + 32);
    v43 = *(v35 + 48);
    if (sub_1DD875A30())
    {
      goto LABEL_10;
    }
  }

LABEL_17:
  sub_1DD826D9C();
}

uint64_t sub_1DD7AE4D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465766C6F736572 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7551676E69727473 && a2 == 0xEB00000000797265;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x75516E6F73726570 && a2 == 0xEB00000000797265;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x80000001DD8B6670 == a2)
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

uint64_t sub_1DD7AE644(char a1)
{
  result = 0x6465766C6F736572;
  switch(a1)
  {
    case 1:
      v3 = 0x676E69727473;
      goto LABEL_4;
    case 2:
      v3 = 0x6E6F73726570;
LABEL_4:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7551000000000000;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7AE6D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7AE4D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7AE6FC(uint64_t a1)
{
  v2 = sub_1DD7FEC5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7AE738(uint64_t a1)
{
  v2 = sub_1DD7FEC5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7AE774(uint64_t a1)
{
  v2 = sub_1DD7FED58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7AE7B0(uint64_t a1)
{
  v2 = sub_1DD7FED58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7AE7EC(uint64_t a1)
{
  v2 = sub_1DD7FECB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7AE828(uint64_t a1)
{
  v2 = sub_1DD7FECB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7AE864(uint64_t a1)
{
  v2 = sub_1DD7FEEA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7AE8A0(uint64_t a1)
{
  v2 = sub_1DD7FEEA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7AE8DC(uint64_t a1)
{
  v2 = sub_1DD7FEE00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7AE918(uint64_t a1)
{
  v2 = sub_1DD7FEE00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientAction.ShimParameter.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v22;
  a20 = v23;
  a10 = v20;
  v25 = v24;
  v92 = sub_1DD710A9C(&qword_1ECD11340, &qword_1DD889500);
  sub_1DD6DDEAC(v92);
  v27 = *(v26 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD8249DC(v29, v89);
  v30 = sub_1DD710A9C(&qword_1ECD11348, &qword_1DD889508);
  sub_1DD6DF3FC(v30, &a16);
  v32 = *(v31 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD8247DC(v34, v90);
  v35 = sub_1DD710A9C(&qword_1ECD11350, &qword_1DD889510);
  sub_1DD6DF3FC(v35, &a13);
  v37 = *(v36 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1DD824AFC(v39, v91);
  v40 = sub_1DD710A9C(&qword_1ECD11358, &qword_1DD889518);
  sub_1DD6DF3FC(v40, &a11);
  v42 = *(v41 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1DD6DDFE4();
  v44 = sub_1DD874FA0();
  v45 = sub_1DD6DDEAC(v44);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  sub_1DD6ED3C0();
  v48 = type metadata accessor for MessagePayload.ClientAction.ShimParameter(0);
  v49 = sub_1DD8247B4(v48);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  sub_1DD6E6200();
  v52 = sub_1DD710A9C(&qword_1ECD11360, &qword_1DD889520);
  v93 = sub_1DD6DDEAC(v52);
  v54 = *(v53 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v55);
  sub_1DD6DE340();
  v56 = v25[3];
  v57 = v25[4];
  sub_1DD6FE770(v25);
  sub_1DD7FEC5C();
  sub_1DD8256E0();
  sub_1DD875BB0();
  sub_1DD700C30();
  sub_1DD6E5870();
  sub_1DD6FAA70();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v83 = *v21;
      v82 = v21[1];
      sub_1DD826920();
      sub_1DD7FEE00();
      sub_1DD8272FC();
      sub_1DD6F9BEC(v84);
      sub_1DD8251A8();
      sub_1DD875910();
      *&v94 = v83;
      *(&v94 + 1) = v82;
      sub_1DD7FEE54();
      sub_1DD6FE84C(&a13);
      v85 = sub_1DD824880(&a12);
      v86(v85, v83);
      v87 = sub_1DD825148();
      v88(v87);
      goto LABEL_6;
    case 2u:
      v70 = *(v21 + 1);
      v94 = *v21;
      v95 = v70;
      v96[0] = *(v21 + 2);
      *(v96 + 9) = *(v21 + 41);
      sub_1DD7FED58();
      sub_1DD6EFF94(&a14);
      sub_1DD6FA420();
      sub_1DD875910();
      sub_1DD8273B8();
      sub_1DD7FEDAC();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v71 = sub_1DD6E5DE8(&a15);
      v72(v71);
      v73 = sub_1DD824A94();
      v74(v73);
      sub_1DD7FEB9C(&v94);
      break;
    case 3u:
      v76 = *v21;
      v75 = v21[1];
      v77 = v21[2];
      sub_1DD826AA0();
      sub_1DD7FECB0();
      sub_1DD825CA4(&a17);
      sub_1DD6F4360();
      sub_1DD875910();
      *&v94 = v76;
      *(&v94 + 1) = v75;
      *&v95 = v77;
      sub_1DD7FED04();
      sub_1DD826A40();
      v78 = sub_1DD6E1858(&a18);
      v79(v78, v92);
      v80 = sub_1DD6E61C4();
      v81(v80, v93);

LABEL_6:

      break;
    default:
      sub_1DD825CBC(&v97);
      v59 = *(v58 + 32);
      v60 = sub_1DD825980();
      v61(v60);
      LOBYTE(v94) = 0;
      sub_1DD7FEEA8();
      sub_1DD824AB4();
      sub_1DD875910();
      sub_1DD6E05D4();
      sub_1DD6E1E84(v62);
      sub_1DD8276C8();
      sub_1DD6FAC4C(&a11);
      sub_1DD8759D0();
      v63 = sub_1DD6DF174(&a10);
      v64(v63);
      v65 = *(v57 + 8);
      v66 = sub_1DD701174();
      v67(v66);
      v68 = sub_1DD824A60();
      v69(v68);
      break;
  }

  sub_1DD825AC0();
  sub_1DD6E0C78();
}

void MessagePayload.ClientAction.ShimParameter.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v23;
  a20 = v24;
  sub_1DD7038A0();
  v113 = sub_1DD710A9C(&qword_1ECD113A8, &qword_1DD889528);
  sub_1DD6DDEAC(v113);
  v110 = v25;
  v27 = *(v26 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD824A38(v29, v103);
  v109 = sub_1DD710A9C(&qword_1ECD113B0, &qword_1DD889530);
  sub_1DD6DDEAC(v109);
  v31 = *(v30 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD82546C(v33, v104);
  v34 = sub_1DD710A9C(&qword_1ECD113B8, &qword_1DD889538);
  sub_1DD6DF3FC(v34, &a14);
  v36 = *(v35 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD824B94(v38, v105);
  v39 = sub_1DD710A9C(&qword_1ECD113C0, &qword_1DD889540);
  sub_1DD6DF3FC(v39, &a16);
  v41 = *(v40 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1DD825428(v43, v106);
  v114 = sub_1DD710A9C(&qword_1ECD113C8, &qword_1DD889548);
  sub_1DD6DDEAC(v114);
  v112 = v44;
  v46 = *(v45 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v47);
  v48 = sub_1DD6E27D4();
  v111 = type metadata accessor for MessagePayload.ClientAction.ShimParameter(v48);
  v49 = sub_1DD6DE1C4(v111);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  sub_1DD6DE21C();
  sub_1DD6EE8A8();
  MEMORY[0x1EEE9AC00](v52);
  sub_1DD825724();
  MEMORY[0x1EEE9AC00](v53);
  sub_1DD6F8C84();
  MEMORY[0x1EEE9AC00](v54);
  sub_1DD824CC4();
  MEMORY[0x1EEE9AC00](v55);
  sub_1DD6DFF40();
  v57 = v21[3];
  v56 = v21[4];
  v115 = v21;
  sub_1DD6E1C64();
  sub_1DD7FEC5C();
  sub_1DD8259BC();
  sub_1DD875B90();
  if (!a10)
  {
    sub_1DD827308();
    v58 = sub_1DD875900();
    sub_1DD6ED750(v58, 0);
    sub_1DD826908();
    if (!v59)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v66 == v67)
      {
        __break(1u);
        return;
      }

      v107 = *(v65 + v64);
      v68 = sub_1DD6E988C(v60, v61, v62, v63, v64);
      v69 = sub_1DD6ED830(v68);
      v71 = v70;
      v73 = v72;
      swift_unknownObjectRelease();
      if (v71 == v73 >> 1)
      {
        switch(v107)
        {
          case 1:
            sub_1DD826920();
            sub_1DD7FEE00();
            sub_1DD6E3A54();
            sub_1DD7031D0();
            sub_1DD875800();
            sub_1DD7FEFA4();
            sub_1DD824AB4();
            sub_1DD8758D0();
            swift_unknownObjectRelease();
            v99 = sub_1DD6E6CB0(&a17);
            v100(v99);
            v101 = sub_1DD8255C0();
            v102(v101);
            *v108 = v116;
            swift_storeEnumTagMultiPayload();
            sub_1DD6FF9C4();
            goto LABEL_14;
          case 2:
            sub_1DD826FF0();
            sub_1DD7FED58();
            sub_1DD7031D0();
            sub_1DD875800();
            sub_1DD7FEF50();
            sub_1DD6F3128();
            sub_1DD6FAC28();
            sub_1DD8758D0();
            sub_1DD826330(&a18);
            swift_unknownObjectRelease();
            v84 = *v69;
            v85 = sub_1DD6E60FC();
            v86(v85);
            v87 = *(v112 + 8);
            v88 = sub_1DD8275A4();
            v89(v88);
            *v20 = v116;
            v20[1] = v117;
            v20[2] = *v118;
            *(v20 + 41) = *&v118[9];
            swift_storeEnumTagMultiPayload();
            sub_1DD6FF9C4();
            sub_1DD826E88();
            sub_1DD6E59B8();
            v90 = v115;
            break;
          case 3:
            sub_1DD826AA0();
            sub_1DD7FECB0();
            sub_1DD7031D0();
            sub_1DD875800();
            sub_1DD7FEEFC();
            sub_1DD6F3128();
            sub_1DD6FAC28();
            sub_1DD8758D0();
            swift_unknownObjectRelease();
            v91 = *(v110 + 8);
            v92 = sub_1DD6E60FC();
            v93(v92);
            (*(v112 + 8))(v22, v114);
            sub_1DD6FE2CC(v117.n128_u64[0], v116);
            swift_storeEnumTagMultiPayload();
            sub_1DD6FF9C4();
            sub_1DD826E88();
            sub_1DD6E59B8();
            v90 = v115;
            break;
          default:
            sub_1DD7FEEA8();
            sub_1DD7031D0();
            sub_1DD875800();
            sub_1DD874FA0();
            sub_1DD6E05D4();
            sub_1DD6E1E84(v74);
            sub_1DD6F4500(&a12);
            sub_1DD825CE0();
            sub_1DD8758D0();
            swift_unknownObjectRelease();
            v94 = sub_1DD6E6CB0(&a15);
            v95(v94);
            v96 = *(v112 + 8);
            v97 = sub_1DD8275A4();
            v98(v97);
            swift_storeEnumTagMultiPayload();
            sub_1DD6FF9C4();
LABEL_14:
            sub_1DD826E88();
            sub_1DD6E59B8();
            v90 = v115;
            break;
        }

        sub_1DD6FF9C4();
        sub_1DD700D0C();
        sub_1DD6E59B8();
        v83 = v90;
        goto LABEL_10;
      }
    }

    sub_1DD875740();
    sub_1DD6E41BC();
    sub_1DD827740();
    v75 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v113 = v111;
    sub_1DD875810();
    sub_1DD6DF12C();
    v76 = *MEMORY[0x1E69E6AF8];
    sub_1DD824B14();
    v78 = *(v77 + 104);
    v79 = sub_1DD6FEB10();
    v80(v79);
    swift_willThrow();
    swift_unknownObjectRelease();
    v81 = sub_1DD825158();
    v82(v81);
  }

  v83 = v115;
LABEL_10:
  sub_1DD6E1EC8(v83);
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.ClientAction.StringQuery.text.setter()
{
  sub_1DD6DE304();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_1DD7AF8A0(uint64_t a1, uint64_t a2)
{
  if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1DD8256B0();
    sub_1DD875A30();
    sub_1DD82698C();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7AF90C(uint64_t a1)
{
  v2 = sub_1DD7FEFF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7AF948(uint64_t a1)
{
  v2 = sub_1DD7FEFF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientAction.StringQuery.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  v0 = sub_1DD710A9C(&qword_1ECD113E8, &qword_1DD889550);
  sub_1DD6E125C(v0);
  v2 = *(v1 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD7FEFF8();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v4 = sub_1DD6FF808();
  v5(v4);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.ClientAction.PersonQuery.name.setter()
{
  sub_1DD6DE304();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MessagePayload.ClientAction.PersonQuery.handle.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_1DD7FEBCC(v2, v3, v4);
}

__n128 MessagePayload.ClientAction.PersonQuery.handle.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1[5];
  v5 = v1[6];
  sub_1DD7FEC14(v1[2], v1[3], v1[4]);
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 1) = *a1;
  *(v1 + 2) = v7;
  v1[6] = v3;
  return result;
}

__n128 MessagePayload.ClientAction.PersonQuery.init(name:handle:isMe:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = *(a3 + 32);
  *a5 = a1;
  *(a5 + 8) = a2;
  v9 = sub_1DD825640();
  sub_1DD7FEC14(v9, v10, v11);
  result = *a3;
  v13 = *(a3 + 16);
  *(a5 + 16) = *a3;
  *(a5 + 32) = v13;
  *(a5 + 48) = v8;
  *(a5 + 56) = a4;
  return result;
}

uint64_t MessagePayload.ClientAction.PersonQuery.Handle.label.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return sub_1DD6DDEFC();
}

uint64_t MessagePayload.ClientAction.PersonQuery.Handle.label.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t MessagePayload.ClientAction.PersonQuery.Handle.value.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_1DD6DDEFC();
}

uint64_t MessagePayload.ClientAction.PersonQuery.Handle.value.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t sub_1DD7AFD68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6F6870 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C69616D65 && a2 == 0xE500000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656D697465636166 && a2 == 0xE800000000000000)
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

uint64_t sub_1DD7AFE78(char a1)
{
  if (!a1)
  {
    return 0x656E6F6870;
  }

  if (a1 == 1)
  {
    return 0x6C69616D65;
  }

  return 0x656D697465636166;
}

uint64_t sub_1DD7AFED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7AFD68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7AFEF8(uint64_t a1)
{
  v2 = sub_1DD7FF04C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7AFF34(uint64_t a1)
{
  v2 = sub_1DD7FF04C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7AFF70(uint64_t a1)
{
  v2 = sub_1DD7FF0F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7AFFAC(uint64_t a1)
{
  v2 = sub_1DD7FF0F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7AFFE8(uint64_t a1)
{
  v2 = sub_1DD7FF0A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B0024(uint64_t a1)
{
  v2 = sub_1DD7FF0A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7B0060(uint64_t a1)
{
  v2 = sub_1DD7FF148();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B009C(uint64_t a1)
{
  v2 = sub_1DD7FF148();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientAction.PersonQuery.Handle.Kind.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD826784();
  v2 = sub_1DD710A9C(&qword_1ECD11400, &qword_1DD889560);
  sub_1DD6DDEAC(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD82480C(v6, v30);
  v7 = sub_1DD710A9C(&qword_1ECD11408, &qword_1DD889568);
  sub_1DD6DDEAC(v7);
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6E9924(v11, v31);
  v12 = sub_1DD710A9C(&qword_1ECD11410, &qword_1DD889570);
  sub_1DD6DDEAC(v12);
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DEA6C();
  v16 = sub_1DD710A9C(&qword_1ECD11418, &qword_1DD889578);
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
  sub_1DD7FF04C();
  sub_1DD77E6F4();
  sub_1DD875BB0();
  if (v22)
  {
    if (v22 == 1)
    {
      sub_1DD6DEC54();
      sub_1DD7FF0F4();
      sub_1DD824CD8();
    }

    else
    {
      sub_1DD6EFF88();
      sub_1DD7FF0A0();
      sub_1DD824AE4();
    }

    sub_1DD875910();
  }

  else
  {
    sub_1DD7FF148();
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

void MessagePayload.ClientAction.PersonQuery.Handle.Kind.init(from:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v63 = v5;
  v65 = sub_1DD710A9C(&qword_1ECD11440, &qword_1DD889580);
  sub_1DD6DDEAC(v65);
  v64 = v6;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD824F70(v10);
  v11 = sub_1DD710A9C(&qword_1ECD11448, &qword_1DD889588);
  sub_1DD6DDEAC(v11);
  v13 = *(v12 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DE340();
  v15 = sub_1DD710A9C(&qword_1ECD11450, &qword_1DD889590);
  sub_1DD6DDEAC(v15);
  v17 = *(v16 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6F0A58();
  v19 = sub_1DD710A9C(&qword_1ECD11458, &qword_1DD889598);
  sub_1DD6E49A8(v19);
  v21 = *(v20 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD6DEBA0();
  v24 = v4[3];
  v23 = v4[4];
  sub_1DD6FE8B0(v4);
  sub_1DD7FF04C();
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
            sub_1DD7FF0F4();
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
            sub_1DD7FF0A0();
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
          sub_1DD7FF148();
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
    *v40 = &type metadata for MessagePayload.ClientAction.PersonQuery.Handle.Kind;
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

BOOL static MessagePayload.ClientAction.PersonQuery.Handle.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = *a2;
  v10 = a2[2];
  v12 = a2[3];
  v11 = a2[4];
  if (v4 == 3)
  {
    if (v9 != 3)
    {
      return 0;
    }
  }

  else if (v4 != v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v10)
    {
      return 0;
    }

    v13 = v5 == a2[1] && v6 == v10;
    if (!v13 && (sub_1DD875A30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v8)
  {
    if (!v11)
    {
      return 0;
    }

    if (v7 != v12 || v8 != v11)
    {
      sub_1DD6DDEFC();
      if ((sub_1DD7013BC() & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return !v11;
}

uint64_t sub_1DD7B0960(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
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

uint64_t sub_1DD7B0A70(char a1)
{
  if (!a1)
  {
    return 1684957547;
  }

  if (a1 == 1)
  {
    return 0x6C6562616CLL;
  }

  return 0x65756C6176;
}

uint64_t sub_1DD7B0AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7B0960(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7B0AE8(uint64_t a1)
{
  v2 = sub_1DD7FF19C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B0B24(uint64_t a1)
{
  v2 = sub_1DD7FF19C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientAction.PersonQuery.Handle.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD11460, &qword_1DD8895A0);
  sub_1DD6E49A8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DEA6C();
  v10 = *v0;
  v18 = v0[2];
  v19 = v0[1];
  v16 = v0[4];
  v17 = v0[3];
  v11 = v3[3];
  v12 = v3[4];
  sub_1DD824D14(v3);
  sub_1DD7FF19C();
  sub_1DD6E17D8();
  sub_1DD8268F0();
  sub_1DD875BB0();
  sub_1DD7FF1F0();
  sub_1DD8256BC();
  sub_1DD875960();
  if (!v1)
  {
    sub_1DD6E4104();
    sub_1DD825668();
    sub_1DD875920();
    sub_1DD8263D0();
    sub_1DD6EFF74();
    sub_1DD825668();
    sub_1DD875920();
  }

  v13 = *(v6 + 8);
  v14 = sub_1DD6DEA04();
  v15(v14);
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

void MessagePayload.ClientAction.PersonQuery.Handle.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1DD6DED2C();
  sub_1DD8255B0();
  v16 = sub_1DD710A9C(&qword_1ECD11478, &qword_1DD8895A8);
  sub_1DD6E125C(v16);
  v18 = *(v17 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD7FF19C();
  sub_1DD6ED2A4();
  if (v14)
  {
    sub_1DD6E1EC8(v13);
  }

  else
  {
    sub_1DD7FF244();
    sub_1DD705C28();
    sub_1DD875860();
    sub_1DD6E4104();
    sub_1DD6E5374();
    v20 = sub_1DD875820();
    v22 = v21;
    v28 = v20;
    sub_1DD8263D0();
    sub_1DD6E5374();
    v23 = sub_1DD875820();
    v25 = v24;
    v26 = sub_1DD6DEA2C();
    v27(v26);
    *v15 = a13;
    *(v15 + 8) = v28;
    *(v15 + 16) = v22;
    *(v15 + 24) = v23;
    *(v15 + 32) = v25;

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7B0E74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1699574633 && a2 == 0xE400000000000000)
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

uint64_t sub_1DD7B0F80(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0x656C646E6168;
  }

  return 1699574633;
}

uint64_t sub_1DD7B1000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7B0E74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7B1028(uint64_t a1)
{
  v2 = sub_1DD7FF298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B1064(uint64_t a1)
{
  v2 = sub_1DD7FF298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientAction.PersonQuery.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD11488, &qword_1DD8895B0);
  sub_1DD6E49A8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DEA6C();
  v10 = *v0;
  v11 = v0[1];
  v23 = v0[3];
  v24 = v0[2];
  v21 = v0[5];
  v22 = v0[4];
  v20 = v0[6];
  v25 = *(v0 + 56);
  v12 = v3[3];
  v13 = v3[4];
  sub_1DD6E6C94(v3);
  sub_1DD7FF298();
  sub_1DD6E17D8();
  sub_1DD6DFF18();
  sub_1DD875BB0();
  sub_1DD6F4D4C();
  sub_1DD825668();
  sub_1DD875920();
  if (!v1)
  {
    sub_1DD6FF8F4();
    sub_1DD7FEBCC(v14, v15, v16);
    sub_1DD7FF2EC();
    sub_1DD6E5334();
    sub_1DD875960();
    sub_1DD7FEC14(v24, v23, v22);
    sub_1DD826FE4();
    sub_1DD6E5334();
    sub_1DD875980();
  }

  v17 = *(v6 + 8);
  v18 = sub_1DD6DEA04();
  v19(v18);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void MessagePayload.ClientAction.PersonQuery.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD6E6390();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD114A0, &qword_1DD8895B8);
  sub_1DD6DDEAC(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DDFE4();
  v10 = v0[3];
  v11 = v0[4];
  sub_1DD824D14(v0);
  sub_1DD7FF298();
  sub_1DD77E6F4();
  sub_1DD8268F0();
  sub_1DD875B90();
  if (v1)
  {
    sub_1DD8274AC();
    sub_1DD824F80();

    sub_1DD6E6384();
    sub_1DD826FA8();
    sub_1DD7FEC14(v12, v13, v14);
  }

  else
  {
    LOBYTE(v35) = 0;
    sub_1DD6FAE18();
    v15 = sub_1DD875820();
    v32 = v16;
    LOBYTE(v33[0]) = 1;
    sub_1DD7FF340();
    sub_1DD705C28();
    sub_1DD875860();
    v28 = v15;
    v29 = v3;
    v30 = *(&v35 + 1);
    v31 = v35;
    v17 = v36;
    v18 = v37;
    v19 = v38;
    v20 = sub_1DD825640();
    sub_1DD7FEC14(v20, v21, v22);
    sub_1DD6EFF88();
    sub_1DD6FAE18();
    v23 = sub_1DD875880();
    v24 = *(v6 + 8);
    v25 = sub_1DD6ED130();
    v26(v25);
    *&v33[0] = v28;
    *(&v33[0] + 1) = v32;
    v33[1] = v35;
    *v34 = v36;
    *&v34[8] = v37;
    *&v34[16] = v38;
    v34[24] = v23 & 1;
    v27 = v35;
    *v29 = v33[0];
    v29[1] = v27;
    v29[2] = *v34;
    *(v29 + 41) = *&v34[9];
    sub_1DD7FF394(v33, &v35);
    sub_1DD6E1EC8(v0);
    *&v35 = v28;
    *(&v35 + 1) = v32;
    v36 = v31;
    v37 = v30;
    v38 = v17;
    v39 = v18;
    v40 = v19;
    v41 = v23 & 1;
    sub_1DD7FEB9C(&v35);
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t MessagePayload.ClientAction.PhotosCandidates.searchQuery.setter()
{
  sub_1DD6DE304();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_1DD7B1580(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7551686372616573 && a2 == 0xEB00000000797265;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E457465737361 && a2 == 0xED00007365697469)
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

uint64_t sub_1DD7B1654(char a1)
{
  if (a1)
  {
    return 0x746E457465737361;
  }

  else
  {
    return 0x7551686372616573;
  }
}

uint64_t sub_1DD7B16A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7B1580(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7B16D0(uint64_t a1)
{
  v2 = sub_1DD7FF3CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B170C(uint64_t a1)
{
  v2 = sub_1DD7FF3CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientAction.PhotosCandidates.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD700858();
  v2 = sub_1DD710A9C(&qword_1ECD114B0, &qword_1DD8895C0);
  sub_1DD6E49A8(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DEA6C();
  v6 = *v0;
  v7 = v0[1];
  sub_1DD826A64();
  v8 = sub_1DD8267D8();
  sub_1DD6E7320(v8);
  sub_1DD7FF3CC();
  sub_1DD6E17D8();
  sub_1DD825680();
  sub_1DD875BB0();
  sub_1DD8249BC();
  sub_1DD875920();
  if (!v1)
  {
    sub_1DD825014();
    sub_1DD710A9C(&qword_1ECD11318, &qword_1DD8ACD80);
    sub_1DD7FEA14();
    sub_1DD825630();
    sub_1DD6E9630();
    sub_1DD8759D0();
  }

  v9 = sub_1DD6DE58C();
  v10(v9);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void MessagePayload.ClientAction.PhotosCandidates.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD825058();
  v2 = sub_1DD710A9C(&qword_1ECD114C0, &qword_1DD8895C8);
  sub_1DD6DDEAC(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD7FF3CC();
  sub_1DD6ED2A4();
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD824D60();
    sub_1DD875820();
    sub_1DD825CD4();
    sub_1DD710A9C(&qword_1ECD11318, &qword_1DD8ACD80);
    sub_1DD82552C();
    sub_1DD7FEAC8();
    sub_1DD824B6C();
    sub_1DD825CF8();
    sub_1DD6FAE18();
    sub_1DD8758D0();
    v6 = sub_1DD6DFF30();
    v7(v6);
    sub_1DD82696C();

    sub_1DD824F80();
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t static MessagePayload.ClientAction.== infix(_:_:)()
{
  sub_1DD6E1F34();
  if (_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0())
  {
    v3 = type metadata accessor for MessagePayload.ClientAction(0);
    sub_1DD826354(v3);
    sub_1DD824820(v4);
    v7 = v7 && v5 == v6;
    if (v7 || (sub_1DD875A30() & 1) != 0)
    {
      sub_1DD826EDC(v2[6]);
      sub_1DD7A874C();
      if (v8)
      {
        v9 = sub_1DD826EDC(v2[7]);
        sub_1DD7A9870(v9, v10);
        if (v11)
        {
          v12 = sub_1DD826EDC(v2[8]);
          sub_1DD7AA328(v12, v13);
          if (v14)
          {
            v15 = v2[9];
            v16 = *(v0 + v15 + 8);
            if (*(v1 + v15 + 8))
            {
              if (v16)
              {
                sub_1DD824D88((v1 + v15));
                v19 = v7 && v17 == v18;
                if (v19 || (sub_1DD875A30() & 1) != 0)
                {
                  return 1;
                }
              }
            }

            else if (!v16)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1DD7B1AB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449746E657665 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x80000001DD8B6690 == a2;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x617261506D696873 && a2 == 0xEE0073726574656DLL;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x7551746E65696C63 && a2 == 0xED00006449797265)
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

unint64_t sub_1DD7B1CB8(char a1)
{
  result = 0x6449746E657665;
  switch(a1)
  {
    case 1:
      result = 0x64496C6F6F74;
      break;
    case 2:
      result = 0x6574656D61726170;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x617261506D696873;
      break;
    case 5:
      result = 0x7551746E65696C63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7B1D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7B1AB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7B1DB8(uint64_t a1)
{
  v2 = sub_1DD7FF420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B1DF4(uint64_t a1)
{
  v2 = sub_1DD7FF420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ClientAction.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6FE1BC();
  v3 = sub_1DD710A9C(&qword_1ECD114C8, &qword_1DD8895D0);
  sub_1DD6E49A8(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  sub_1DD7FF420();
  sub_1DD6E1808();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v7);
  sub_1DD6E5924();
  sub_1DD8759D0();
  if (!v0)
  {
    v8 = type metadata accessor for MessagePayload.ClientAction(0);
    sub_1DD82554C(v8);
    sub_1DD701464();
    sub_1DD824BDC();
    sub_1DD875970();
    v11 = *(v1 + v2[6]);
    sub_1DD710A9C(&qword_1ECD10E58, &qword_1DD8AED90);
    sub_1DD7FD198();
    sub_1DD8262B0();
    sub_1DD6E63A8();
    sub_1DD8759D0();
    v12 = *(v1 + v2[7]);
    sub_1DD710A9C(&qword_1ECD114D8, &qword_1DD8895D8);
    sub_1DD7FF474();
    sub_1DD8262B0();
    sub_1DD6E63A8();
    sub_1DD8759D0();
    v13 = *(v1 + v2[8]);
    sub_1DD710A9C(&qword_1ECD114F0, &qword_1DD8895E0);
    sub_1DD7FF6A0(&unk_1ECD114F8);
    sub_1DD8262B0();
    sub_1DD6E63A8();
    sub_1DD8759D0();
    sub_1DD82595C(v2[9]);
    sub_1DD824BDC();
    sub_1DD875920();
  }

  v9 = sub_1DD6EFFB4();
  v10(v9);
  sub_1DD825790();
  sub_1DD826CF4();
}

void MessagePayload.ClientAction.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DD6DED2C();
  v13 = v12;
  v14 = sub_1DD874820();
  v15 = sub_1DD6DDEAC(v14);
  v42 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6ED3C0();
  v41 = sub_1DD710A9C(&qword_1ECD11510, &qword_1DD8895E8);
  sub_1DD6DDEAC(v41);
  v20 = *(v19 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v21);
  v22 = sub_1DD6E27D4();
  v40 = type metadata accessor for MessagePayload.ClientAction(v22);
  v23 = sub_1DD6DE1C4(v40);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1DD6DDEE8();
  v27 = v26;
  v29 = v13[3];
  v28 = v13[4];
  v43 = v13;
  sub_1DD6FE770(v13);
  sub_1DD7FF420();
  sub_1DD8259BC();
  sub_1DD875B90();
  if (v11)
  {
    sub_1DD6E1EC8(v13);
  }

  else
  {
    LOBYTE(a10) = 0;
    sub_1DD6E14DC();
    sub_1DD6E1E84(v30);
    sub_1DD8258D0();
    sub_1DD8758D0();
    (*(v42 + 32))(v27, v10, v14);
    sub_1DD701464();
    sub_1DD8258D0();
    v31 = sub_1DD875870();
    v32 = (v27 + v40[5]);
    *v32 = v31;
    v32[1] = v33;
    sub_1DD710A9C(&qword_1ECD10E58, &qword_1DD8AED90);
    sub_1DD705DE4();
    sub_1DD7FD2FC();
    sub_1DD6E9644();
    sub_1DD8258D0();
    sub_1DD8758D0();
    *(v27 + v40[6]) = a10;
    sub_1DD710A9C(&qword_1ECD114D8, &qword_1DD8895D8);
    sub_1DD7FF5E4();
    sub_1DD6E9644();
    sub_1DD8258D0();
    sub_1DD8758D0();
    *(v27 + v40[7]) = a10;
    sub_1DD710A9C(&qword_1ECD114F0, &qword_1DD8895E0);
    sub_1DD7FF6A0(&unk_1ECD11528);
    sub_1DD6E9644();
    sub_1DD8258D0();
    sub_1DD8758D0();
    *(v27 + v40[8]) = a10;
    sub_1DD8258D0();
    v34 = sub_1DD875820();
    v36 = v35;
    v37 = (v27 + v40[9]);
    v38 = sub_1DD703884();
    v39(v38);
    *v37 = v34;
    v37[1] = v36;
    sub_1DD6E5870();
    sub_1DD6E1EC8(v43);
    sub_1DD82579C();
    sub_1DD6E5ABC();
  }

  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7B25E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656C626169726176 && a2 == 0xEC000000656D614ELL)
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

uint64_t sub_1DD7B2688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7B25E8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7B26B4(uint64_t a1)
{
  v2 = sub_1DD7FF7D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B26F0(uint64_t a1)
{
  v2 = sub_1DD7FF7D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ActionWillExecute.ToolParameterValue.Reference.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6F3538();
  v0 = sub_1DD710A9C(&qword_1ECD11540, &qword_1DD8895F0);
  sub_1DD6E125C(v0);
  v2 = *(v1 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEBA0();
  sub_1DD6E9AEC();
  sub_1DD7FF7D0();
  sub_1DD6F8C98();
  sub_1DD875BB0();
  sub_1DD6FBE70();
  sub_1DD875970();
  v4 = sub_1DD6FF808();
  v5(v4);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7B2890(uint64_t a1)
{
  v2 = sub_1DD7FF824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B28CC(uint64_t a1)
{
  v2 = sub_1DD7FF824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ActionWillExecute.ToolParameterValue.Value.encode(to:)()
{
  sub_1DD826CE0();
  sub_1DD6E593C();
  v0 = sub_1DD710A9C(&qword_1ECD11558, &qword_1DD889600);
  sub_1DD6DDEAC(v0);
  v2 = *(v1 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEBA0();
  sub_1DD6DEAD0();
  sub_1DD7FF824();
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

void MessagePayload.ActionWillExecute.ToolParameterValue.Value.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD8254C8(v2);
  v3 = sub_1DD874FA0();
  v4 = sub_1DD6E125C(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DDEE8();
  sub_1DD826760(v7);
  v8 = sub_1DD710A9C(&qword_1ECD11568, &qword_1DD889608);
  sub_1DD6DDEAC(v8);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1DD6E27D4();
  v13 = type metadata accessor for MessagePayload.ActionWillExecute.ToolParameterValue.Value(v12);
  v14 = sub_1DD6DEA10(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6E6200();
  v17 = v0[3];
  v18 = v0[4];
  sub_1DD824CF8(v0);
  sub_1DD7FF824();
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
    sub_1DD6FAA70();
    sub_1DD6E59B8();
  }

  sub_1DD6E1EC8(v0);
  sub_1DD703860();
  sub_1DD6E0C78();
}

void static MessagePayload.ActionWillExecute.ToolParameterValue.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v2 = type metadata accessor for MessagePayload.ActionWillExecute.ToolParameterValue.Value(0);
  v3 = sub_1DD6DEA10(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DE4A8();
  v6 = type metadata accessor for MessagePayload.ActionWillExecute.ToolParameterValue(0);
  v7 = sub_1DD8247B4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DE21C();
  sub_1DD6FF81C();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DEBEC();
  v11 = sub_1DD710A9C(&qword_1ECD11570, &qword_1DD889610);
  sub_1DD6DEA10(v11);
  v13 = *(v12 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6E17C8();
  v16 = (v0 + *(v15 + 56));
  sub_1DD6E5870();
  sub_1DD6EFF74();
  sub_1DD6E5870();
  sub_1DD825974();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DD8248D4();
    sub_1DD6E5F58();
    sub_1DD6E5870();
    sub_1DD6E60FC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DD700948();
      sub_1DD6E59B8();
      sub_1DD6E87AC();
      _s16IntelligenceFlow13SnippetStreamV2eeoiySbAC_ACtFZ_0();
      sub_1DD6E5ABC();
      sub_1DD6FF97C();
      sub_1DD6E5ABC();
      sub_1DD6FDF40();
      goto LABEL_15;
    }

    sub_1DD6E5ABC();
LABEL_7:
    sub_1DD824154(v0, &qword_1ECD11570);
    goto LABEL_15;
  }

  sub_1DD8248D4();
  sub_1DD701174();
  sub_1DD6E5870();
  v18 = *v1;
  v17 = v1[1];
  sub_1DD6E60FC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    goto LABEL_7;
  }

  if (v18 == *v16 && v17 == v16[1])
  {
  }

  else
  {
    sub_1DD6F4498();
    sub_1DD6FA430();
    sub_1DD827818();
  }

  sub_1DD6FDF40();
LABEL_15:
  sub_1DD6DFED0();
}

uint64_t sub_1DD7B2E60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E657265666572 && a2 == 0xE900000000000065;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
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

uint64_t sub_1DD7B2F2C(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x636E657265666572;
  }
}

uint64_t sub_1DD7B2F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7B2E60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7B2F94(uint64_t a1)
{
  v2 = sub_1DD7FF8B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B2FD0(uint64_t a1)
{
  v2 = sub_1DD7FF8B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7B300C(uint64_t a1)
{
  v2 = sub_1DD7FF960();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B3048(uint64_t a1)
{
  v2 = sub_1DD7FF960();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7B3084(uint64_t a1)
{
  v2 = sub_1DD7FF90C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B30C0(uint64_t a1)
{
  v2 = sub_1DD7FF90C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ActionWillExecute.ToolParameterValue.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD11578, &qword_1DD889618);
  sub_1DD6DDEAC(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD82486C(v7, v42);
  v44 = type metadata accessor for MessagePayload.ActionWillExecute.ToolParameterValue.Value(0);
  v8 = sub_1DD6DE1C4(v44);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DDEE8();
  v11 = sub_1DD710A9C(&qword_1ECD11580, &qword_1DD889620);
  sub_1DD6DDEAC(v11);
  v43 = v12;
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6E17C8();
  v16 = type metadata accessor for MessagePayload.ActionWillExecute.ToolParameterValue(0);
  v17 = sub_1DD8247B4(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DE4A8();
  sub_1DD700C78();
  v20 = sub_1DD710A9C(&qword_1ECD11588, &qword_1DD889628);
  sub_1DD6DDEAC(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD6F0A58();
  v26 = v2[3];
  v27 = v2[4];
  sub_1DD824D14(v2);
  sub_1DD7FF8B8();
  sub_1DD6EF0F4();
  sub_1DD875BB0();
  sub_1DD8248D4();
  sub_1DD6E5870();
  sub_1DD825B84();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DD6E59B8();
    sub_1DD826820();
    sub_1DD7FF90C();
    sub_1DD6FE82C();
    sub_1DD875910();
    sub_1DD6F3570();
    sub_1DD6E1E84(v28);
    sub_1DD8759D0();
    v29 = sub_1DD6DE58C();
    v30(v29);
    sub_1DD825C80();
    sub_1DD6E5ABC();
    v31 = *(v22 + 8);
    v32 = sub_1DD825674();
    v33(v32);
  }

  else
  {
    v35 = *v0;
    v34 = v0[1];
    sub_1DD7FF960();
    sub_1DD6FE82C();
    sub_1DD875910();
    sub_1DD7FF9B4();
    sub_1DD827280();
    v36 = *(v43 + 8);
    v37 = sub_1DD8258AC();
    v38(v37);
    v39 = *(v22 + 8);
    v40 = sub_1DD825674();
    v41(v40);
  }

  sub_1DD825AC0();
  sub_1DD6E0C78();
}

void MessagePayload.ActionWillExecute.ToolParameterValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DD6DED2C();
  sub_1DD6F8D24();
  v92 = v14;
  v95 = sub_1DD710A9C(&qword_1ECD115B8, &qword_1DD889630);
  sub_1DD6DDEAC(v95);
  v93 = v15;
  v17 = *(v16 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6FF92C(v19, v85);
  v20 = sub_1DD710A9C(&qword_1ECD115C0, &qword_1DD889638);
  v21 = sub_1DD6DDEAC(v20);
  v90 = v22;
  v91 = v21;
  v24 = *(v23 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD824A4C(v26, v85);
  v96 = sub_1DD710A9C(&qword_1ECD115C8, &qword_1DD889640);
  sub_1DD6DDEAC(v96);
  v94 = v27;
  v29 = *(v28 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD6DE340();
  v31 = type metadata accessor for MessagePayload.ActionWillExecute.ToolParameterValue(0);
  v32 = sub_1DD8247B4(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6DE21C();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  sub_1DD825724();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v85 - v40;
  v42 = v13[3];
  v43 = v13[4];
  sub_1DD6FE770(v13);
  sub_1DD7FF8B8();
  sub_1DD8256E0();
  sub_1DD875B90();
  if (!a10)
  {
    v86 = v10;
    v87 = v41;
    v88 = v37;
    v89 = v11;
    v44 = v96;
    v99 = v13;
    v45 = sub_1DD875900();
    sub_1DD6ED750(v45, 0);
    sub_1DD826908();
    if (!v46)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v47 == v48)
      {
        __break(1u);
        return;
      }

      HIDWORD(v85) = *(v54 + v53);
      v55 = sub_1DD6E988C(v49, v50, v51, v52, v53);
      sub_1DD6ED830(v55);
      v57 = v56;
      v59 = v58;
      swift_unknownObjectRelease();
      v60 = v93;
      if (v57 == v59 >> 1)
      {
        if ((v85 & 0x100000000) != 0)
        {
          sub_1DD826820();
          sub_1DD7FF90C();
          sub_1DD705C28();
          sub_1DD875800();
          type metadata accessor for MessagePayload.ActionWillExecute.ToolParameterValue.Value(0);
          sub_1DD6F3570();
          sub_1DD6E1E84(v61);
          sub_1DD827458();
          sub_1DD8758D0();
          v62 = v94;
          swift_unknownObjectRelease();
          v76 = *(v60 + 8);
          v77 = sub_1DD770D98();
          v78(v77);
          (*(v62 + 8))(v12, v96);
        }

        else
        {
          LOBYTE(v97) = 0;
          sub_1DD7FF960();
          sub_1DD705C28();
          sub_1DD875800();
          sub_1DD7FFA08();
          v75 = v91;
          sub_1DD6F09C4();
          sub_1DD8758D0();
          swift_unknownObjectRelease();
          v79 = sub_1DD705E24();
          v80(v79, v75);
          v81 = sub_1DD825038();
          v82(v81, v44);
          v83 = v98;
          v84 = v86;
          *v86 = v97;
          v84[1] = v83;
        }

        swift_storeEnumTagMultiPayload();
        sub_1DD6EE7B0();
        sub_1DD6E59B8();
        sub_1DD6EE7B0();
        sub_1DD825974();
        sub_1DD6E59B8();
        v74 = v99;
        goto LABEL_12;
      }
    }

    v63 = v89;
    sub_1DD875740();
    sub_1DD6E41BC();
    v65 = v64;
    v66 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v65 = v63;
    sub_1DD7039C0();
    sub_1DD875810();
    sub_1DD6DF100();
    v67 = *MEMORY[0x1E69E6AF8];
    sub_1DD8250B8();
    v69 = *(v68 + 104);
    v70 = sub_1DD826A94();
    v71(v70);
    swift_willThrow();
    swift_unknownObjectRelease();
    v72 = sub_1DD825038();
    v73(v72, v44);
    v13 = v99;
  }

  v74 = v13;
LABEL_12:
  sub_1DD6E1EC8(v74);
  sub_1DD826464();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7B3A60(uint64_t a1)
{
  v2 = sub_1DD7FFA5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B3A9C(uint64_t a1)
{
  v2 = sub_1DD7FFA5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7B3B98(uint64_t a1)
{
  v2 = sub_1DD7FFAB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B3BD4(uint64_t a1)
{
  v2 = sub_1DD7FFAB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ActionWillExecute.PromptSelection.SelectedInDisambiguation.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD115F0, &qword_1DD889650);
  sub_1DD6E125C(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DEBA0();
  v9 = *v0;
  v10 = v2[3];
  v11 = v2[4];
  sub_1DD6E6C94(v2);
  sub_1DD7FFAB0();
  sub_1DD6E4218();
  sub_1DD6DFF18();
  sub_1DD875BB0();
  sub_1DD8759B0();
  v12 = *(v5 + 8);
  v13 = sub_1DD6DDEDC();
  v14(v13);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void MessagePayload.ActionWillExecute.PromptSelection.SelectedInDisambiguation.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD826838();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD11600, &qword_1DD889658);
  sub_1DD6E125C(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD7FFAB0();
  sub_1DD6FC48C();
  if (!v1)
  {
    sub_1DD6EE778();
    v8 = sub_1DD8758B0();
    v9 = sub_1DD6DEA2C();
    v10(v9);
    *v3 = v8;
  }

  sub_1DD6E1EC8(v0);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD7B3E34(uint64_t a1)
{
  v2 = sub_1DD7FFB04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B3E70(uint64_t a1)
{
  v2 = sub_1DD7FFB04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static MessagePayload.ActionWillExecute.PromptSelection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    return !*(a2 + 8);
  }

  if (*(a1 + 8) == 1)
  {
    if (v2 == 1)
    {
      return *a1 == *a2;
    }

    return 0;
  }

  return v2 == 2;
}

uint64_t sub_1DD7B3F54(uint64_t a1)
{
  v2 = sub_1DD7FFB58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B3F90(uint64_t a1)
{
  v2 = sub_1DD7FFB58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7B3FCC(uint64_t a1)
{
  v2 = sub_1DD7FFCFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B4008(uint64_t a1)
{
  v2 = sub_1DD7FFCFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7B4044(uint64_t a1)
{
  v2 = sub_1DD7FFBAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B4080(uint64_t a1)
{
  v2 = sub_1DD7FFBAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7B40BC(uint64_t a1)
{
  v2 = sub_1DD7FFC54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7B40F8(uint64_t a1)
{
  v2 = sub_1DD7FFC54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessagePayload.ActionWillExecute.PromptSelection.encode(to:)()
{
  sub_1DD6DED2C();
  v1 = v0;
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD11618, &qword_1DD889668);
  v35 = sub_1DD6DDEAC(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD82486C(v8, v32);
  v9 = sub_1DD710A9C(&qword_1ECD11620, &qword_1DD889670);
  v34 = sub_1DD6DDEAC(v9);
  v11 = *(v10 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6F0A58();
  v13 = sub_1DD710A9C(&qword_1ECD11628, &qword_1DD889678);
  sub_1DD6DDEAC(v13);
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DEBA0();
  v36 = sub_1DD710A9C(&qword_1ECD11630, &qword_1DD889680);
  sub_1DD6DDEAC(v36);
  v18 = v17;
  v20 = *(v19 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6DE340();
  v33 = *v1;
  v22 = *(v1 + 8);
  v23 = *(v3 + 24);
  v24 = *(v3 + 32);
  sub_1DD70066C();
  sub_1DD7FFB58();
  sub_1DD8256E0();
  sub_1DD875BB0();
  if (v22)
  {
    if (v22 == 1)
    {
      sub_1DD6DEC54();
      sub_1DD7FFC54();
      sub_1DD826808();
      sub_1DD824AB4();
      sub_1DD875910();
      sub_1DD7FFCA8();
      v25 = v34;
      sub_1DD8759D0();
      v26 = sub_1DD825068();
    }

    else
    {
      sub_1DD6EFF88();
      sub_1DD7FFBAC();
      sub_1DD824AB4();
      sub_1DD875910();
      sub_1DD7FFC00();
      v25 = v35;
      sub_1DD8759D0();
      v26 = sub_1DD705E24();
    }

    v28 = v25;
  }

  else
  {
    sub_1DD7FFCFC();
    sub_1DD824AB4();
    sub_1DD875910();
    sub_1DD7FFD50();
    sub_1DD827848();
    v26 = sub_1DD6E37A0();
  }

  v27(v26, v28);
  v29 = *(v18 + 8);
  v30 = sub_1DD6E0F70();
  v31(v30);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void MessagePayload.ActionWillExecute.PromptSelection.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD705C5C();
  v58 = v2;
  v57 = sub_1DD710A9C(&qword_1ECD11670, &qword_1DD889688);
  sub_1DD6DDEAC(v57);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD82480C(v6, v56);
  v7 = sub_1DD710A9C(&qword_1ECD11678, &qword_1DD889690);
  sub_1DD6DDEAC(v7);
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DEBA0();
  v11 = sub_1DD710A9C(&qword_1ECD11680, &qword_1DD889698);
  sub_1DD6DDEAC(v11);
  v59 = v12;
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6F0A58();
  v16 = sub_1DD710A9C(&qword_1ECD11688, &qword_1DD8896A0);
  sub_1DD6DDEAC(v16);
  v18 = *(v17 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DE340();
  v20 = v0[3];
  v21 = v0[4];
  v60 = v0;
  sub_1DD70066C();
  sub_1DD7FFB58();
  sub_1DD8256E0();
  sub_1DD875B90();
  if (!v61)
  {
    v22 = v1;
    v23 = sub_1DD875900();
    sub_1DD6ED750(v23, 0);
    if (v25 != v24 >> 1)
    {
      sub_1DD6E6120();
      sub_1DD6E42A8();
      if (v32 == v33)
      {
        __break(1u);
        return;
      }

      v63[0] = *(v31 + v30);
      v34 = sub_1DD827424(v26, v27, v28, v29, v30);
      sub_1DD6ED830(v34);
      sub_1DD8277D8();
      v1 = v59;
      if (v22 == (v16 >> 1))
      {
        if (v63[0])
        {
          if (v63[0] == 1)
          {
            sub_1DD6DEC54();
            sub_1DD7FFC54();
            sub_1DD6F4360();
            sub_1DD875800();
            sub_1DD7FFDF8();
            sub_1DD8250A8();
            sub_1DD8758D0();
            sub_1DD826778();
            swift_unknownObjectRelease();
            v40 = sub_1DD824D98();
            v41(v40);
            v42 = sub_1DD6E61C4();
            v43(v42, v16);
            v44 = v62;
            v45 = v60;
            v46 = v58;
          }

          else
          {
            sub_1DD6EFF88();
            sub_1DD7FFBAC();
            sub_1DD6F4360();
            sub_1DD875800();
            v46 = v58;
            sub_1DD7FFDA4();
            sub_1DD6FE82C();
            sub_1DD8758D0();
            sub_1DD826778();
            swift_unknownObjectRelease();
            v52 = sub_1DD824C0C();
            v53(v52);
            v54 = sub_1DD826AC8();
            v55(v54, v16);
            v44 = 0;
            v45 = v60;
          }
        }

        else
        {
          sub_1DD7FFCFC();
          sub_1DD8257E0();
          sub_1DD875800();
          sub_1DD7FFE4C();
          sub_1DD825368();
          sub_1DD8758D0();
          sub_1DD826778();
          swift_unknownObjectRelease();
          v47 = v59[1];
          v48 = sub_1DD6E60FC();
          v49(v48);
          v50 = sub_1DD826AC8();
          v51(v50, v16);
          v44 = 0;
          v45 = v60;
          v46 = v58;
        }

        *v46 = v44;
        *(v46 + 8) = v63[0];
        sub_1DD6E1EC8(v45);
        goto LABEL_11;
      }
    }

    sub_1DD875740();
    sub_1DD6E41BC();
    sub_1DD8274C0();
    v35 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v1 = &type metadata for MessagePayload.ActionWillExecute.PromptSelection;
    sub_1DD875810();
    sub_1DD6DF100();
    v36 = *MEMORY[0x1E69E6AF8];
    sub_1DD824B14();
    (*(v37 + 104))(v1);
    swift_willThrow();
    swift_unknownObjectRelease();
    v38 = sub_1DD6FAF18();
    v39(v38);
  }

  sub_1DD6E1EC8(v60);
LABEL_11:
  sub_1DD7536FC();
  sub_1DD6E0C78();
}
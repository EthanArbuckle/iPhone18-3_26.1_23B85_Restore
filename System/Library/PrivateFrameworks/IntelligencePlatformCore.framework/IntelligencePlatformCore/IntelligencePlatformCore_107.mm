uint64_t sub_1C4D73E60(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000016 && 0x80000001C4FC8170 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x636974656E6F6870 && a2 == 0xEC000000656D614ELL)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C4F02938();

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

unint64_t sub_1C4D740F8(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6572705F656D616ELL;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0x636974656E6F6870;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1C4D741FC()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  v1 = sub_1C456902C(&qword_1EC0C6DC0, &qword_1C4F71160);
  sub_1C4403200(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C4D853A8();
  sub_1C440F61C();
  sub_1C441D6E4();
  sub_1C4EFF0C8();
  sub_1C442E784();
  sub_1C44CD358(v5, v6);
  sub_1C43FE6CC();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v0)
  {
    v7 = type metadata accessor for CNContactStructs.Organization(0);
    v8 = v7[5];
    sub_1C440CE38();
    sub_1C4EFEEF8();
    sub_1C4412A4C();
    sub_1C44CD358(v9, v10);
    sub_1C43FBF44();
    sub_1C4F02778();
    v11 = v7[6];
    sub_1C4401FFC();
    sub_1C4EFD548();
    sub_1C4432F18();
    sub_1C44CD358(v12, v13);
    sub_1C4418670();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C443439C();
    sub_1C440EB5C();
    sub_1C44CD358(v14, v15);
    sub_1C4418670();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v16 = v7[8];
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4401774(v7[9]);
    sub_1C43FBF44();
    sub_1C4F02738();
    v17 = v7[10];
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4401774(v7[11]);
    sub_1C44307E0(7);
    sub_1C43FBF44();
    sub_1C4F02738();
  }

  v18 = sub_1C440231C();
  v19(v18);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4D744B0()
{
  sub_1C43FE96C();
  v4 = v3;
  v63 = v5;
  v6 = sub_1C4EFEEF8();
  v7 = sub_1C4403200(v6);
  v73 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  v64 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD230();
  v65 = v13;
  v14 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBC74();
  v66 = v18;
  sub_1C43FBE44();
  v69 = sub_1C4EFF0C8();
  v19 = sub_1C43FCDF8(v69);
  v67 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  v25 = v24 - v23;
  v26 = sub_1C456902C(&qword_1EC0C6DB0, &qword_1C4F71158);
  v68 = sub_1C43FCDF8(v26);
  v28 = *(v27 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  v30 = sub_1C4413644();
  v31 = type metadata accessor for CNContactStructs.Organization(v30);
  v32 = sub_1C43FBCE0(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v74 = *(v35 + 20);
  sub_1C4401E28();
  sub_1C440BAA8(v36, v37, v38, v39);
  v70 = v31[6];
  _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
  v40 = v31[7];
  if (qword_1EDDFED28 != -1)
  {
    sub_1C44133AC();
    swift_once();
  }

  v41 = type metadata accessor for Source();
  sub_1C442B738(v41, &unk_1EDDFD088);
  sub_1C4408374();
  sub_1C44CC80C(v42, v2 + v40, v43);
  v72 = v31[8];
  sub_1C4EFEBF8();
  v71 = v31[10];
  sub_1C4EFE578();
  v44 = v4[4];
  sub_1C4417F50(v4, v4[3]);
  sub_1C4D853A8();
  sub_1C4F02BC8();
  if (v1)
  {
    sub_1C440962C(v4);
    sub_1C4420C3C(v2 + v74, &qword_1EC0B9A08, &unk_1C4F107B0);
    v47 = sub_1C4EFD548();
    sub_1C43FBCE0(v47);
    (*(v48 + 8))(v2 + v70);
    sub_1C440636C();
    sub_1C44D474C(v2 + v40, v49);
    v50 = *(v73 + 8);
    v50(v2 + v72, v0);

    v50(v2 + v71, v0);
  }

  else
  {
    sub_1C442E784();
    sub_1C44CD358(v45, v46);
    sub_1C43FE6CC();
    sub_1C44107B4();
    sub_1C4F026C8();
    (*(v67 + 32))(v2, v25, v69);
    sub_1C4412A4C();
    sub_1C44CD358(v51, v52);
    sub_1C441E954();
    sub_1C44107B4();
    sub_1C4F02658();
    sub_1C444088C(v66, v2 + v74, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441E954();
    sub_1C44107B4();
    sub_1C4F026C8();
    v53 = *(v73 + 40);
    v53(v2 + v72, v65, v0);
    sub_1C44107B4();
    v54 = sub_1C4F02618();
    v55 = (v2 + v31[9]);
    *v55 = v54;
    v55[1] = v56;
    sub_1C441E954();
    sub_1C44107B4();
    sub_1C4F026C8();
    v53(v2 + v71, v64, v0);
    sub_1C44107B4();
    v57 = sub_1C4F02618();
    v59 = v58;
    v60 = (v2 + v31[11]);
    v61 = sub_1C441D080();
    v62(v61, v68);
    *v60 = v57;
    v60[1] = v59;
    sub_1C44CC80C(v2, v63, type metadata accessor for CNContactStructs.Organization);
    sub_1C440962C(v4);
    sub_1C44D474C(v2, type metadata accessor for CNContactStructs.Organization);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4D74AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D73E60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D74B20(uint64_t a1)
{
  v2 = sub_1C4D853A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D74B5C(uint64_t a1)
{
  v2 = sub_1C4D853A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D74BE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x80000001C4FC8190 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656D747261706564 && a2 == 0xEA0000000000746ELL;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x664F7265626D656DLL && a2 == 0xE800000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C4F02938();

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

unint64_t sub_1C4D74DE0(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x656D747261706564;
      break;
    case 5:
      result = 0x664F7265626D656DLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4D74EA4()
{
  sub_1C43FE96C();
  sub_1C440EDD4();
  v2 = sub_1C456902C(&qword_1EC0C6DD8, &qword_1C4F71170);
  sub_1C4403200(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C4D853FC();
  sub_1C440F61C();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C4412A4C();
  sub_1C44CD358(v6, v7);
  sub_1C44055EC();
  sub_1C4F02778();
  if (!v0)
  {
    v19 = type metadata accessor for CNContactStructs.EmploymentRelationshipType(0);
    v8 = v19[5];
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4432F18();
    sub_1C44CD358(v9, v10);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v11 = v19[6];
    sub_1C4401FFC();
    type metadata accessor for Source();
    sub_1C440EB5C();
    sub_1C44CD358(v12, v13);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C4401958(v19);
    sub_1C44055EC();
    sub_1C4F027E8();
    sub_1C440C15C((v1 + v19[8]));
    sub_1C4F02738();
    v14 = sub_1C4D870E8();
    type metadata accessor for CNContactStructs.Organization(v14);
    sub_1C44995EC();
    sub_1C44CD358(v15, v16);
    sub_1C43FCB2C();
    sub_1C4F02778();
  }

  v17 = sub_1C440231C();
  v18(v17);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4D750E8()
{
  sub_1C43FE96C();
  v5 = v4;
  v59 = v6;
  v7 = sub_1C456902C(&qword_1EC0BAD40, &qword_1C4F175A0);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C4416C44(v11, v57);
  v12 = sub_1C4EFEEF8();
  v13 = sub_1C4403200(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD2D8();
  v16 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v16);
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBC74();
  v20 = sub_1C456902C(&qword_1EC0C6DC8, &qword_1C4F71168);
  sub_1C43FCDF8(v20);
  v22 = *(v21 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  v24 = sub_1C4D86F2C();
  v25 = type metadata accessor for CNContactStructs.EmploymentRelationshipType(v24);
  v26 = sub_1C43FBCE0(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = sub_1C4410790(v29, v58);
  sub_1C44A1CA0(v30, v31, v32);
  sub_1C4EFD248();
  v33 = *(v25 + 24);
  if (qword_1EDDFED28 != -1)
  {
    sub_1C44133AC();
    swift_once();
  }

  v34 = type metadata accessor for Source();
  sub_1C442B738(v34, &unk_1EDDFD088);
  sub_1C4408374();
  sub_1C44CC80C(v35, v1 + v33, v36);
  v37 = *(v25 + 28);
  sub_1C4EFE2B8();
  v38 = sub_1C4D870D0();
  v39 = type metadata accessor for CNContactStructs.Organization(v38);
  sub_1C43FCF64();
  sub_1C440BAA8(v40, v41, v42, v39);
  v43 = v5;
  v45 = v5[3];
  v44 = v5[4];
  v60 = v43;
  sub_1C4417F50(v43, v45);
  sub_1C4D853FC();
  sub_1C44CD164();
  if (!v0)
  {
    sub_1C4412A4C();
    v48 = sub_1C44CD358(v46, v47);
    sub_1C4D86EAC(v48);
    sub_1C444088C(v2, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C43FE664();
    sub_1C4F026C8();
    v49 = sub_1C4D870A0();
    v50(v49);
    sub_1C4428F20();
    sub_1C43FE664();
    *v3 = sub_1C4F02618();
    v3[1] = v52;
    sub_1C44995EC();
    sub_1C44CD358(v53, v54);
    sub_1C450B3B4();
    sub_1C43FE664();
    sub_1C4F02658();
    v55 = sub_1C442A7B4();
    v56(v55);
    sub_1C444088C(v37, v1 + v2, &qword_1EC0BAD40, &qword_1C4F175A0);
    sub_1C44CC80C(v1, v59, type metadata accessor for CNContactStructs.EmploymentRelationshipType);
  }

  sub_1C440962C(v60);
  sub_1C4D86E68();
  sub_1C44D474C(v1, v51);
  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4D754C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D74BE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D754F0(uint64_t a1)
{
  v2 = sub_1C4D853FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D7552C(uint64_t a1)
{
  v2 = sub_1C4D853FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4D7562C()
{
  sub_1C43FE96C();
  v3 = v0;
  v190 = v4;
  v188 = v5;
  v186 = type metadata accessor for EntityTriple(0);
  v6 = sub_1C43FCDF8(v186);
  v189 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  v181 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C44143D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBF38();
  v179 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD230();
  v178 = v15;
  sub_1C43FBE44();
  v184 = sub_1C4EFD548();
  v16 = sub_1C43FCDF8(v184);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v23 = v22 - v21;
  v192 = sub_1C4EFF8A8();
  v24 = sub_1C43FCDF8(v192);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  v29 = (v28 - v27);
  v30 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v30);
  v32 = *(v31 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C44058BC();
  v34 = sub_1C4EFEEF8();
  v35 = sub_1C43FCDF8(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v187 = *v190;
  v41 = v40;
  sub_1C445FFA8(v3, v2, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v2, 1, v41);
  if (v42)
  {
    sub_1C4420C3C(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v43 = sub_1C43FFB2C();
    sub_1C44559D0(v43, v44);
  }

  else
  {
    v182 = v37;
    (*(v37 + 32))(v1, v2, v41);
    v45 = type metadata accessor for CNContactStructs.VisualIdentifierRelationshipType(0);
    v177 = *(v45 + 20);
    (*(v18 + 16))(v23, v3 + v177, v184);
    sub_1C4EFF838();
    v191 = v45;
    v46 = (v3 + *(v45 + 32));
    v47 = v46[1];
    v183 = v1;
    v185 = v3;
    if (v47)
    {
      sub_1C43FF988(v46);
      v45 = v189;
      v49 = v186;
      if (v50)
      {
        v51 = v1;
        v176 = v48;
        v52 = sub_1C4EFF0C8();
        sub_1C43FCE50(v52);
        v1 = v178;
        (*(v53 + 16))(v178, v188);
        v54 = *(v37 + 16);
        (v54)(v178 + v186[5], v51, v41);
        v55 = sub_1C4401940(v186[6]);
        v56(v55, v29, v192);
        (v54)(v178 + v186[7], v185 + v191[7], v41);
        v57 = v191[6];
        v58 = v186[9];
        sub_1C4408374();
        v49 = v186;
        sub_1C44CC80C(v185 + v59, v178 + v60, v61);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C44D4800();
        *v62 = v176;
        v62[1] = v47;
        sub_1C44147FC(v63);
        *(v178 + v64) = v187;
        v65 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4401EC4(v65, v66, v67, MEMORY[0x1E69E7CC0]);
        sub_1C4D87148(v68);
        if (v70)
        {
          v154 = sub_1C43FFD98(v69);
          sub_1C44C9240(v154, v155, v156, v54);
          v54 = v157;
        }

        *(v54 + 16) = v47;
        v71 = *(v189 + 80);
        sub_1C4425634();
        v72 = *(v189 + 72);
        sub_1C4420AA0();
        sub_1C44D4624(v178, v73, v74);
        v75 = v185;
      }

      else
      {
        v54 = MEMORY[0x1E69E7CC0];
        v75 = v185;
      }
    }

    else
    {
      v75 = v3;
      v54 = MEMORY[0x1E69E7CC0];
      v49 = v186;
    }

    v76 = v182;
    sub_1C441406C(v191[10]);
    if (v47)
    {
      sub_1C44026DC(v77);
      if (v78)
      {
        v79 = sub_1C4EFF0C8();
        sub_1C43FCE50(v79);
        (*(v80 + 16))(v179, v188);
        v81 = sub_1C447F750();
        v29(v81);
        v82 = sub_1C4D86F40();
        v83(v82);
        v84 = sub_1C447CE9C(v191[9]);
        v29(v84);
        v75 = v185;
        v85 = v191[6];
        v86 = v49[9];
        sub_1C4408374();
        sub_1C44CC80C(v185 + v87, v179 + v88, v89);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v90 = (v179 + v49[8]);
        *v90 = v1;
        v90[1] = v47;
        sub_1C441B1E0((v179 + v49[10]));
        sub_1C4D871BC(v91, v92);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v158 = *(v54 + 16);
          v159 = sub_1C43FCEC0();
          sub_1C44C9240(v159, v160, v161, v54);
          v54 = v162;
        }

        v1 = *(v54 + 16);
        v93 = *(v54 + 24);
        sub_1C44019A4();
        v76 = v182;
        v45 = v189;
        if (v70)
        {
          v163 = sub_1C43FFD98(v94);
          sub_1C44C9240(v163, v164, v165, v54);
          v54 = v166;
        }

        *(v54 + 16) = v47;
        v95 = *(v189 + 80);
        sub_1C4425634();
        v96 = *(v189 + 72);
        sub_1C4420AA0();
        sub_1C44D4624(v179, v97, v98);
      }
    }

    sub_1C441406C(v191[12]);
    if (v47)
    {
      sub_1C44026DC(v99);
      if (v100)
      {
        v101 = sub_1C4EFF0C8();
        sub_1C43FCE50(v101);
        (*(v102 + 16))(v180, v188);
        v103 = sub_1C447F750();
        v29(v103);
        v104 = sub_1C4D86F40();
        v105(v104);
        v106 = sub_1C447CE9C(v191[11]);
        v29(v106);
        v75 = v185;
        v107 = v191[6];
        v108 = v49[9];
        sub_1C4408374();
        sub_1C44CC80C(v185 + v109, v180 + v110, v111);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v112 = (v180 + v49[8]);
        *v112 = v1;
        v112[1] = v47;
        sub_1C441B1E0((v180 + v49[10]));
        sub_1C4D871BC(v113, v114);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v167 = *(v54 + 16);
          v168 = sub_1C43FCEC0();
          sub_1C44C9240(v168, v169, v170, v54);
          v54 = v171;
        }

        v116 = *(v54 + 16);
        v115 = *(v54 + 24);
        sub_1C44019A4();
        v76 = v182;
        v45 = v189;
        if (v70)
        {
          v172 = sub_1C43FFD98(v117);
          sub_1C44C9240(v172, v173, v174, v54);
          v54 = v175;
        }

        *(v54 + 16) = v47;
        v118 = *(v189 + 80);
        sub_1C4425634();
        v119 = *(v189 + 72);
        sub_1C4420AA0();
        sub_1C44D4624(v180, v120, v121);
      }
    }

    if (*(v54 + 16))
    {
      v122 = sub_1C4EFF0C8();
      sub_1C43FCE50(v122);
      (*(v123 + 16))(v181, v188);
      v124 = sub_1C4401940(v49[5]);
      v125(v124, v183, v41);
      v126 = sub_1C4401940(v49[6]);
      v127(v126, v29, v192);
      v128 = v181 + v49[7];
      sub_1C4EFEBB8();
      sub_1C4EFD2F8();
      sub_1C440D158();
      v129 = v191[6];
      v130 = v49[9];
      sub_1C4408374();
      sub_1C44CC80C(v75 + v131, v181 + v132, v133);
      sub_1C4EF9AE8();
      sub_1C44D4800();
      *v134 = v45;
      v134[1] = v75 + v177;
      sub_1C44147FC(v135);
      *(v181 + v136) = v187;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v145 = *(v54 + 16);
        v146 = sub_1C43FCEC0();
        sub_1C44C9240(v146, v147, v148, v54);
        v54 = v149;
      }

      v138 = *(v54 + 16);
      v137 = *(v54 + 24);
      if (v138 >= v137 >> 1)
      {
        v150 = sub_1C43FFD98(v137);
        sub_1C44C9240(v150, v151, v152, v54);
        v54 = v153;
      }

      v139 = sub_1C4485C30();
      v140(v139, v192);
      (*(v76 + 8))(v183, v41);
      *(v54 + 16) = v138 + 1;
      sub_1C445EB4C();
      sub_1C4420AA0();
      sub_1C44D4624(v181, v141, v142);
    }

    else
    {
      v143 = sub_1C4485C30();
      v144(v143, v192);
      (*(v76 + 8))(v183, v41);
    }
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C4D75F0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001ALL && 0x80000001C4FC7D40 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001C4FAED80 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001BLL && 0x80000001C4FC7D60 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x80000001C4FAEDA0 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000017 && 0x80000001C4FC7D80 == a2;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x6574736567677573 && a2 == 0xED0000656D614E64)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1C4F02938();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_1C4D761E4(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      v3 = 10;
      goto LABEL_8;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      v3 = 11;
LABEL_8:
      result = v3 | 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0x6574736567677573;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4D76314()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  v2 = sub_1C456902C(&qword_1EC0C6D30, &qword_1C4F71100);
  sub_1C4403200(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C4D851B0();
  sub_1C440F61C();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C4412A4C();
  sub_1C44CD358(v6, v7);
  sub_1C44D7E30();
  sub_1C43FF9BC();
  sub_1C4F02778();
  if (!v0)
  {
    v16 = type metadata accessor for CNContactStructs.VisualIdentifierRelationshipType(0);
    v8 = v16[5];
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4432F18();
    sub_1C44CD358(v9, v10);
    sub_1C44554E4();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v11 = v16[6];
    sub_1C4401FFC();
    type metadata accessor for Source();
    sub_1C440EB5C();
    sub_1C44CD358(v12, v13);
    sub_1C44554E4();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4401958(v16);
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C440C15C((v1 + v16[8]));
    sub_1C4F02738();
    sub_1C4D86E40();
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C4459C78();
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C4409434(v16[11]);
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4416974();
    sub_1C43FBF44();
    sub_1C4F02738();
  }

  v14 = sub_1C440231C();
  v15(v14);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4D76588()
{
  sub_1C43FE96C();
  v4 = v3;
  v60 = v5;
  v6 = sub_1C4EFEEF8();
  v7 = sub_1C4403200(v6);
  v63 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  v61 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBF38();
  v62 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD230();
  v15 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v15);
  v17 = *(v16 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBC74();
  v64 = v19;
  v20 = sub_1C456902C(&qword_1EC0C6D20, &qword_1C4F710F8);
  v66 = sub_1C43FCDF8(v20);
  v22 = *(v21 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBC74();
  v24 = sub_1C43FBE44();
  v25 = type metadata accessor for CNContactStructs.VisualIdentifierRelationshipType(v24);
  v26 = sub_1C43FBCE0(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = sub_1C4410790(v29, v59);
  v65 = v0;
  sub_1C44A1CA0(v30, v31, v32);
  sub_1C4EFD338();
  v33 = v25[6];
  if (qword_1EDDFED28 != -1)
  {
    sub_1C44133AC();
    swift_once();
  }

  v34 = type metadata accessor for Source();
  sub_1C442B738(v34, &unk_1EDDFD088);
  sub_1C4408374();
  sub_1C44CC80C(v35, v2 + v33, v36);
  v37 = v25[7];
  sub_1C4EFE828();
  v38 = (v2 + v25[8]);
  *v38 = 0;
  v38[1] = 0;
  v39 = v25[9];
  sub_1C4EFE838();
  v40 = (v2 + v25[10]);
  *v40 = 0;
  v40[1] = 0;
  v41 = v25[11];
  sub_1C4EFE5F8();
  v69 = v2;
  v42 = (v2 + v25[12]);
  *v42 = 0;
  v42[1] = 0;
  v43 = v4;
  v44 = v4[3];
  v45 = v4[4];
  v68 = v43;
  sub_1C4417F50(v43, v44);
  sub_1C4D851B0();
  sub_1C4F02BC8();
  if (!v1)
  {
    v67 = v37;
    sub_1C4412A4C();
    sub_1C44CD358(v46, v47);
    sub_1C44D7E30();
    sub_1C4F02658();
    sub_1C444088C(v64, v69, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C450B3B4();
    sub_1C4F026C8();
    v49 = *(v63 + 40);
    v49(v69 + v67, v68, v65);
    sub_1C4428F20();
    v50 = sub_1C4F02618();
    sub_1C44147E8(v50, v51, v38);
    sub_1C4D87048();
    v49(v69 + v39, v62, v65);
    sub_1C4402044();
    v52 = sub_1C4F02618();
    sub_1C440EEEC(v52, v53, v40);
    sub_1C4D87048();
    v49(v69 + v41, v61, v65);
    sub_1C4414078();
    v54 = sub_1C4F02618();
    v56 = v55;
    v57 = sub_1C44018C0();
    v58(v57, v66);
    *v42 = v54;
    v42[1] = v56;
    sub_1C44CC80C(v69, v60, type metadata accessor for CNContactStructs.VisualIdentifierRelationshipType);
  }

  sub_1C440962C(v68);
  sub_1C4462528();
  sub_1C44D474C(v69, v48);
  sub_1C43FBC80();
}

uint64_t sub_1C4D76A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D75F0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D76ABC(uint64_t a1)
{
  v2 = sub_1C4D851B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D76AF8(uint64_t a1)
{
  v2 = sub_1C4D851B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4D76B7C()
{
  sub_1C43FE96C();
  v5 = v4;
  v226 = v6;
  v228 = v7;
  v229 = v8;
  v220 = type metadata accessor for EntityTriple(0);
  v9 = sub_1C43FCDF8(v220);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  v219 = v12;
  sub_1C43FD1D0();
  v14 = MEMORY[0x1EEE9AC00](v13);
  sub_1C4461E00(v14, v15, v16, v17, v18, v19, v20, v21, v209);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  v213 = v23;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C44055D8();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FD230();
  v211 = v26;
  sub_1C43FBE44();
  v225 = sub_1C4EFD548();
  v27 = sub_1C43FCDF8(v225);
  v222 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FD2D8();
  v215 = v31;
  sub_1C43FBE44();
  v32 = sub_1C4EFF8A8();
  v33 = sub_1C43FCDF8(v32);
  v230 = v34;
  v231 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C440F400();
  v37 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v37);
  v39 = *(v38 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C4413644();
  v41 = sub_1C4EFEEF8();
  v42 = sub_1C43FCDF8(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBCC4();
  sub_1C4422BD8();
  v221 = *v5;
  v47 = v0;
  sub_1C445FFA8(v0, v2, &qword_1EC0B9A08, &unk_1C4F107B0);
  v48 = sub_1C440180C();
  sub_1C440175C(v48, v49, v41);
  if (v50)
  {
    sub_1C4420C3C(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v51 = sub_1C43FFB2C();
    sub_1C44559D0(v51, v52);
  }

  else
  {
    v227 = v44;
    v53 = v41;
    (*(v44 + 32))(v3, v2, v41);
    v54 = type metadata accessor for CNContactStructs.EntityAliasRelationshipType(0);
    v210 = v54[5];
    v55 = v47;
    v56 = v47 + v210;
    v57 = v215;
    (*(v222 + 16))(v215, v56, v225);
    sub_1C4EFF838();
    v232 = v54;
    v58 = (v55 + v54[8]);
    v59 = v58[1];
    v224 = v1;
    v223 = v3;
    if (v59 && (sub_1C44D4060(v58), v61))
    {
      v216 = v60;
      v62 = sub_1C4EFF0C8();
      sub_1C43FCE50(v62);
      (*(v63 + 16))(v211, v226);
      v64 = *(v227 + 16);
      (v64)(v211 + v220[5], v3, v41);
      v65 = sub_1C4401940(v220[6]);
      v66(v65, v1);
      v53 = v54;
      v67 = v220[7];
      sub_1C447CE84(v54[7]);
      v64();
      v68 = v54[6];
      v69 = v220[9];
      sub_1C4408374();
      sub_1C44CC80C(v55 + v70, v211 + v71, v72);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v73 = (v211 + v220[8]);
      *v73 = v216;
      v73[1] = v59;
      v74 = (v211 + v220[10]);
      *v74 = v228;
      v74[1] = v229;
      *(v211 + v220[11]) = v75;
      v76 = v221;
      *(v211 + v220[12]) = v221;
      v77 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v77, v78, v79, MEMORY[0x1E69E7CC0]);
      v81 = v80;
      v57 = *(v80 + 16);
      v82 = *(v80 + 24);
      if (v57 >= v82 >> 1)
      {
        sub_1C44C9240(v82 > 1, v57 + 1, 1, v80);
        v81 = v181;
      }

      *(v81 + 16) = v57 + 1;
      sub_1C4426314();
      sub_1C4420AA0();
      sub_1C44D4624(v211, v83, v84);
      v85 = v227;
    }

    else
    {
      v81 = MEMORY[0x1E69E7CC0];
      v85 = v227;
      v76 = v221;
    }

    v86 = (v55 + v54[10]);
    v87 = v86[1];
    if (v87)
    {
      sub_1C43FF988(v86);
      if (v89)
      {
        v217 = v88;
        v90 = sub_1C4EFF0C8();
        sub_1C43FCE50(v90);
        (*(v91 + 16))(v212, v226);
        v92 = *(v85 + 16);
        (v92)(v212 + v220[5], v223, v41);
        sub_1C442A554();
        v94(v212 + v93, v224);
        v53 = v232;
        v95 = v220[7];
        sub_1C447CE84(v232[9]);
        v92();
        v96 = v232[6];
        v97 = v220[9];
        sub_1C4408374();
        sub_1C44CC80C(v55 + v98, v212 + v99, v100);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C44D4800();
        *v101 = v217;
        v101[1] = v87;
        sub_1C44147FC(v102);
        *(v212 + v103) = v76;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v182 = *(v81 + 16);
          v183 = sub_1C43FCEC0();
          sub_1C44C9240(v183, v184, v185, v81);
          v81 = v186;
        }

        v57 = *(v81 + 16);
        v104 = *(v81 + 24);
        sub_1C44019A4();
        v85 = v227;
        if (v106)
        {
          v187 = sub_1C43FFD98(v105);
          sub_1C44C9240(v187, v188, v189, v81);
          v81 = v190;
        }

        *(v81 + 16) = v87;
        sub_1C4426314();
        sub_1C4420AA0();
        sub_1C44D4624(v212, v107, v108);
      }
    }

    v109 = (v55 + v232[12]);
    v110 = v109[1];
    if (v110)
    {
      sub_1C43FF988(v109);
      if (v112)
      {
        v218 = v111;
        v113 = sub_1C4EFF0C8();
        sub_1C43FCE50(v113);
        (*(v114 + 16))(v213, v226);
        v115 = *(v85 + 16);
        v53 = v232;
        (v115)(v213 + v220[5], v223, v41);
        sub_1C442A554();
        v117(v213 + v116, v224);
        v118 = v220[7];
        sub_1C447CE84(v232[11]);
        v115();
        v119 = v232[6];
        v120 = v220[9];
        sub_1C4408374();
        sub_1C44CC80C(v55 + v121, v213 + v122, v123);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v124 = (v213 + v220[8]);
        *v124 = v218;
        v124[1] = v110;
        sub_1C441B1E0((v213 + v220[10]));
        *(v213 + v125) = v126;
        *(v213 + v220[12]) = v76;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v191 = *(v81 + 16);
          v192 = sub_1C43FCEC0();
          sub_1C44C9240(v192, v193, v194, v81);
          v81 = v195;
        }

        v57 = *(v81 + 16);
        v127 = *(v81 + 24);
        sub_1C44019A4();
        v85 = v227;
        if (v106)
        {
          v196 = sub_1C43FFD98(v128);
          sub_1C44C9240(v196, v197, v198, v81);
          v81 = v199;
        }

        *(v81 + 16) = v110;
        sub_1C4426314();
        sub_1C4420AA0();
        sub_1C44D4624(v213, v129, v130);
      }
    }

    v131 = (v55 + v232[14]);
    v132 = v131[1];
    if (v132)
    {
      sub_1C44026DC(v131);
      if (v133)
      {
        v134 = sub_1C4EFF0C8();
        sub_1C43FCE50(v134);
        (*(v135 + 16))(v214, v226);
        v136 = *(v85 + 16);
        v53 = v41;
        (v136)(v214 + v220[5], v223, v41);
        sub_1C442A554();
        v138(v214 + v137, v224);
        v139 = v220[7];
        sub_1C447CE84(v232[13]);
        v136();
        v140 = v232[6];
        v141 = v220[9];
        sub_1C4408374();
        sub_1C44CC80C(v55 + v142, v214 + v143, v144);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v145 = (v214 + v220[8]);
        *v145 = v57;
        v145[1] = v132;
        sub_1C441B1E0((v214 + v220[10]));
        *(v214 + v146) = v147;
        *(v214 + v220[12]) = v221;
        v76 = v221;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v200 = *(v81 + 16);
          v201 = sub_1C43FCEC0();
          sub_1C44C9240(v201, v202, v203, v81);
          v81 = v204;
        }

        v149 = *(v81 + 16);
        v148 = *(v81 + 24);
        sub_1C44019A4();
        v85 = v227;
        if (v106)
        {
          v205 = sub_1C43FFD98(v150);
          sub_1C44C9240(v205, v206, v207, v81);
          v81 = v208;
        }

        *(v81 + 16) = v132;
        sub_1C4426314();
        sub_1C4420AA0();
        sub_1C44D4624(v214, v151, v152);
      }
    }

    if (*(v81 + 16))
    {
      v153 = sub_1C4EFF0C8();
      sub_1C43FCE50(v153);
      (*(v154 + 16))(v219, v226);
      v155 = sub_1C4401940(v220[5]);
      v156(v155, v223, v41);
      sub_1C442A554();
      v158(v219 + v157, v224);
      v159 = v219 + v220[7];
      sub_1C4EFEBB8();
      sub_1C4EFD2F8();
      sub_1C440D158();
      v160 = v232[6];
      v161 = v220[9];
      sub_1C4408374();
      sub_1C44CC80C(v55 + v162, v219 + v163, v164);
      sub_1C4EF9AE8();
      sub_1C44D4800();
      *v165 = v53;
      v165[1] = v55 + v210;
      sub_1C44147FC(v166);
      *(v219 + v167) = v76;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v172 = *(v81 + 16);
        v173 = sub_1C43FCEC0();
        sub_1C44C9240(v173, v174, v175, v81);
        v81 = v176;
      }

      v169 = *(v81 + 16);
      v168 = *(v81 + 24);
      if (v169 >= v168 >> 1)
      {
        v177 = sub_1C43FFD98(v168);
        sub_1C44C9240(v177, v178, v179, v81);
        v81 = v180;
      }

      (*(v230 + 8))(v224, v231);
      (*(v227 + 8))(v223, v41);
      *(v81 + 16) = v169 + 1;
      sub_1C4426314();
      sub_1C4420AA0();
      sub_1C44D4624(v219, v170, v171);
    }

    else
    {
      (*(v230 + 8))(v224, v231);
      (*(v85 + 8))(v223, v41);
    }
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C4D77618(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x80000001C4FC7DA0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x776F6E4B6F736C61 && a2 == 0xEB0000000073416ELL;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x80000001C4FC7DC0 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x614C6C616E676973 && a2 == 0xEB000000006C6562;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000018 && 0x80000001C4FC7BC0 == a2;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x696669746E656469 && a2 == 0xEE00657079547265;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000020 && 0x80000001C4FC7DE0 == a2;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0xD000000000000016 && 0x80000001C4FC7E10 == a2)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1C4F02938();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_1C4D77984(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x776F6E4B6F736C61;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x614C6C616E676973;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0x696669746E656469;
      break;
    case 9:
      result = 0xD000000000000020;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4D77AEC()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  v2 = sub_1C456902C(&qword_1EC0C6D48, &qword_1C4F71110);
  sub_1C4403200(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C4D85204();
  sub_1C440F61C();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C4412A4C();
  sub_1C44CD358(v6, v7);
  sub_1C44D7E30();
  sub_1C43FF9BC();
  sub_1C4F02778();
  if (!v0)
  {
    v17 = type metadata accessor for CNContactStructs.EntityAliasRelationshipType(0);
    v8 = v17[5];
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4432F18();
    sub_1C44CD358(v9, v10);
    sub_1C44554E4();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v11 = v17[6];
    sub_1C4401FFC();
    type metadata accessor for Source();
    sub_1C440EB5C();
    sub_1C44CD358(v12, v13);
    sub_1C44554E4();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4401958(v17);
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C440C15C((v1 + v17[8]));
    sub_1C4F02738();
    sub_1C4D86E40();
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C4459C78();
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C4409434(v17[11]);
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4416974();
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C4D86EF8();
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C4D8719C();
    sub_1C4401774(v14);
    sub_1C43FBF44();
    sub_1C4F02738();
  }

  v15 = sub_1C440231C();
  v16(v15);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4D77DA8()
{
  sub_1C43FE96C();
  v4 = v3;
  v67 = v5;
  v6 = sub_1C4EFEEF8();
  v7 = sub_1C4403200(v6);
  v70 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C441816C();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C44143D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD230();
  sub_1C4D86F60(v14);
  v15 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v15);
  v17 = *(v16 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C4416C44(v19, v64);
  v74 = sub_1C456902C(&qword_1EC0C6D38, &qword_1C4F71108);
  sub_1C43FCDF8(v74);
  v21 = *(v20 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v22);
  v24 = sub_1C4425644(v23, v65);
  v25 = type metadata accessor for CNContactStructs.EntityAliasRelationshipType(v24);
  v26 = sub_1C43FBCE0(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = sub_1C4410790(v29, v66);
  v73 = v0;
  sub_1C44A1CA0(v30, v31, v32);
  sub_1C4EFD278();
  v33 = v25[6];
  if (qword_1EDDFED28 != -1)
  {
    sub_1C44133AC();
    swift_once();
  }

  v34 = type metadata accessor for Source();
  sub_1C442B738(v34, &unk_1EDDFD088);
  sub_1C4408374();
  sub_1C44CC80C(v35, v2 + v33, v36);
  sub_1C4D87038();
  sub_1C4EFE3A8();
  v37 = (v2 + v25[8]);
  *v37 = 0;
  v37[1] = 0;
  v68 = v25[9];
  sub_1C4EFE4A8();
  v38 = (v2 + v25[10]);
  *v38 = 0;
  v38[1] = 0;
  v39 = v25[11];
  sub_1C4EFE658();
  v40 = (v2 + v25[12]);
  *v40 = 0;
  v40[1] = 0;
  v41 = v25[13];
  sub_1C4EFEA88();
  v77 = v2;
  v42 = (v2 + v25[14]);
  *v42 = 0;
  v42[1] = 0;
  v43 = v4;
  v44 = v4[3];
  v45 = v4[4];
  v75 = v43;
  sub_1C4417F50(v43, v44);
  sub_1C4D85204();
  sub_1C4F02BC8();
  if (!v1)
  {
    v76 = v37;
    sub_1C4412A4C();
    sub_1C44CD358(v46, v47);
    sub_1C4F02658();
    sub_1C444088C(v72, v77, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C4423908();
    sub_1C4F026C8();
    v48 = *(v70 + 40);
    v48(v77 + v69, v71, v73);
    sub_1C4428F20();
    v49 = sub_1C4F02618();
    sub_1C44147E8(v49, v51, v76);
    sub_1C4423908();
    sub_1C4F026C8();
    v52 = sub_1C4401928(v68);
    (v48)(v52);
    sub_1C4402044();
    sub_1C4424818();
    v53 = sub_1C4F02618();
    sub_1C440EEEC(v53, v54, v38);
    sub_1C4423908();
    sub_1C4424818();
    sub_1C4F026C8();
    v55 = sub_1C4401928(v39);
    (v48)(v55);
    sub_1C4414078();
    sub_1C4424818();
    *v40 = sub_1C4F02618();
    v40[1] = v56;
    sub_1C43FE79C(9);
    sub_1C4423908();
    sub_1C4424818();
    sub_1C4F026C8();
    v57 = sub_1C4401928(v41);
    (v48)(v57);
    sub_1C4424818();
    v58 = sub_1C4F02618();
    v60 = v59;
    sub_1C441BF7C();
    v61(v78, v74);
    sub_1C440C668();
    *v62 = v58;
    v62[1] = v60;
    sub_1C4482D64();
    sub_1C44CC80C(v77, v67, v63);
  }

  sub_1C440962C(v75);
  sub_1C440CE6C();
  sub_1C44D474C(v77, v50);
  sub_1C43FBC80();
}

uint64_t sub_1C4D78308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D77618(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D78330(uint64_t a1)
{
  v2 = sub_1C4D85204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D7836C(uint64_t a1)
{
  v2 = sub_1C4D85204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4D783F0()
{
  sub_1C43FE96C();
  v245 = v1;
  v4 = v0;
  v6 = v5;
  v251 = v8;
  v252 = v7;
  v253 = v9;
  v10 = type metadata accessor for EntityTriple(0);
  v248 = sub_1C43FCDF8(v10);
  v249 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v248);
  sub_1C43FBFDC();
  v242 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  v241 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C441816C();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C4402024();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FD230();
  v238 = v20;
  sub_1C43FBE44();
  v247 = sub_1C4EFD548();
  v21 = sub_1C43FCDF8(v247);
  v244 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v27 = v26 - v25;
  v28 = sub_1C4EFF8A8();
  v29 = sub_1C43FCDF8(v28);
  v254 = v30;
  v255 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v33 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v33);
  v35 = *(v34 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C4413644();
  v37 = sub_1C4EFEEF8();
  v38 = sub_1C43FCDF8(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBCC4();
  v45 = v44 - v43;
  v250 = *v6;
  v47 = v46;
  sub_1C445FFA8(v4, v3, &qword_1EC0B9A08, &unk_1C4F107B0);
  v48 = sub_1C440180C();
  sub_1C440175C(v48, v49, v47);
  if (v50)
  {
    sub_1C4420C3C(v3, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    sub_1C43FFB2C();
    sub_1C43FE7A8(v51, 2);
  }

  else
  {
    v243 = v40;
    (*(v40 + 32))(v45, v3, v47);
    v52 = type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType(0);
    v53 = *(v244 + 16);
    v237 = v52[5];
    v53(v27, v4 + v237, v247);
    v244 = v2;
    sub_1C4EFF838();
    v54 = MEMORY[0x1E69E7CC0];
    v256 = MEMORY[0x1E69E7CC0];
    sub_1C441406C(v52[8]);
    v246 = v45;
    v247 = v47;
    if (v27)
    {
      v57 = *v56;
      v58 = HIBYTE(v27) & 0xF;
      if ((v27 & 0x2000000000000000) == 0)
      {
        v58 = v57 & 0xFFFFFFFFFFFFLL;
      }

      if (v58)
      {
        v59 = v45;
        v60 = sub_1C4EFF0C8();
        sub_1C43FCE50(v60);
        v62 = v238;
        (*(v61 + 16))(v238, v251);
        v63 = v248;
        v64 = *(v243 + 16);
        v65 = v59;
        v54 = v247;
        v64(v238 + v248[5], v65, v247);
        sub_1C4D86FF8();
        v67(v238 + v66, v244);
        v64(v238 + v248[7], v4 + v52[7], v247);
        v68 = v52[6];
        v69 = v248[9];
        sub_1C4408374();
        sub_1C44CC80C(v4 + v70, v238 + v71, v72);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v73 = (v238 + v248[8]);
        *v73 = v57;
        v73[1] = v27;
        v74 = (v62 + v63[10]);
        v75 = v253;
        *v74 = v252;
        v74[1] = v75;
        *(v62 + v63[11]) = v76;
        *(v62 + v63[12]) = v250;
        v77 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4401EC4(v77, v78, v79, MEMORY[0x1E69E7CC0]);
        sub_1C4D87148(v80);
        if (v82)
        {
          v205 = sub_1C43FFD98(v81);
          sub_1C44C9240(v205, v206, v207, v54);
          v54 = v208;
        }

        *(v54 + 16) = v27;
        sub_1C445EB4C();
        sub_1C4420AA0();
        v55 = sub_1C44D4624(v238, v83, v84);
        v256 = v54;
      }
    }

    v85 = v243;
    v86 = (v4 + v52[10]);
    v87 = v86[1];
    if (v87)
    {
      sub_1C442EE64(v86);
      if (v89)
      {
        v238 = v88;
        v90 = sub_1C4EFF0C8();
        sub_1C43FCE50(v90);
        (*(v91 + 16))(v239, v251);
        v92 = sub_1C447CF74();
        (v243)(v92);
        sub_1C4D86FF8();
        v94(v239 + v93, v244);
        (v243)(v239 + v248[7], v4 + v52[9], v247);
        v95 = v253;
        v96 = v52[6];
        v97 = v248[9];
        sub_1C4408374();
        sub_1C44CC80C(v4 + v98, v239 + v99, v100);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C44D3E4C();
        *v101 = v102;
        v101[1] = v95;
        sub_1C4D87088(v103);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v209 = *(v54 + 16);
          v210 = sub_1C43FCEC0();
          sub_1C44C9240(v210, v211, v212, v54);
          v54 = v213;
        }

        v105 = *(v54 + 16);
        v104 = *(v54 + 24);
        sub_1C4424824();
        v85 = v243;
        if (v82)
        {
          v214 = sub_1C43FF640(v106);
          sub_1C44C9240(v214, v215, v216, v54);
          v54 = v217;
        }

        *(v54 + 16) = v87;
        sub_1C445EB4C();
        sub_1C4420AA0();
        v55 = sub_1C44D4624(v239, v107, v108);
        v256 = v54;
      }
    }

    v109 = (v4 + v52[12]);
    v110 = v109[1];
    if (v110)
    {
      sub_1C442EE64(v109);
      if (v112)
      {
        v238 = v111;
        v113 = sub_1C4EFF0C8();
        sub_1C43FCE50(v113);
        (*(v114 + 16))(v240, v251);
        v115 = sub_1C447CF74();
        (v85)(v115);
        sub_1C4D86FF8();
        v117(v240 + v116, v244);
        (v85)(v240 + v248[7], v4 + v52[11], v247);
        v118 = v253;
        v239 = v52;
        v119 = v52[6];
        v120 = v248[9];
        sub_1C4408374();
        sub_1C44CC80C(v4 + v121, v240 + v122, v123);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C44D3E4C();
        *v124 = v125;
        v124[1] = v118;
        sub_1C4D87088(v126);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v218 = *(v54 + 16);
          v219 = sub_1C43FCEC0();
          sub_1C44C9240(v219, v220, v221, v54);
          v54 = v222;
        }

        v128 = *(v54 + 16);
        v127 = *(v54 + 24);
        sub_1C4424824();
        v85 = v243;
        v52 = v239;
        if (v82)
        {
          v223 = sub_1C43FF640(v129);
          sub_1C44C9240(v223, v224, v225, v54);
          v54 = v226;
        }

        *(v54 + 16) = v110;
        sub_1C445EB4C();
        sub_1C4420AA0();
        v55 = sub_1C44D4624(v240, v130, v131);
        v256 = v54;
      }
    }

    v132 = *(v4 + v52[14]);
    if (v132)
    {
      v133 = v244;
      if (*(v132 + 16))
      {
        MEMORY[0x1EEE9AC00](v55);
        v135 = v245;
        v134 = v246;
        *(&v236 - 8) = v251;
        *(&v236 - 7) = v134;
        *(&v236 - 6) = v133;
        *(&v236 - 5) = v4;
        v136 = v253;
        *(&v236 - 4) = v252;
        *(&v236 - 3) = v136;
        *(&v236 - 16) = v250;
        sub_1C45DA100(sub_1C4D83D20, (&v236 - 10), v137, v138, v139, v140, v141, v142, v236, v237);
        v245 = v135;
        sub_1C49D3614(v143);
      }
    }

    else
    {
      v133 = v244;
    }

    v144 = (v4 + v52[16]);
    v145 = v144[1];
    if (v145)
    {
      sub_1C442EE64(v144);
      if (v147)
      {
        v240 = v146;
        v148 = sub_1C4EFF0C8();
        sub_1C43FCE50(v148);
        v150 = v52;
        v151 = v241;
        (*(v149 + 16))(v241, v251);
        v152 = v248;
        v153 = v133;
        v154 = *(v85 + 16);
        v155 = v247;
        v154(v151 + v248[5], v246, v247);
        (*(v254 + 16))(v151 + v152[6], v153, v255);
        v154(v151 + v152[7], v4 + *(v150 + 60), v155);
        v239 = v150;
        v156 = *(v150 + 24);
        v157 = v152[9];
        sub_1C4408374();
        sub_1C44CC80C(v4 + v158, v151 + v159, v160);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v161 = (v151 + v152[8]);
        *v161 = v240;
        v161[1] = v145;
        v162 = (v151 + v152[10]);
        v163 = v253;
        *v162 = v252;
        v162[1] = v163;
        *(v151 + v152[11]) = v164;
        *(v151 + v152[12]) = v250;
        v165 = v256;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v227 = *(v256 + 16);
          v228 = sub_1C43FCEC0();
          sub_1C44C9240(v228, v229, v230, v256);
          v165 = v231;
        }

        v167 = *(v165 + 16);
        v166 = *(v165 + 24);
        v85 = v243;
        v133 = v244;
        v52 = v239;
        if (v167 >= v166 >> 1)
        {
          v232 = sub_1C43FFD98(v166);
          sub_1C44C9240(v232, v233, v234, v165);
          v165 = v235;
        }

        *(v165 + 16) = v167 + 1;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v241, v168, v169);
        v256 = v165;
      }
    }

    v170 = v256;
    if (*(v256 + 16))
    {
      v171 = sub_1C4EFF0C8();
      sub_1C43FCE50(v171);
      v173 = v242;
      (*(v172 + 16))(v242, v251);
      v174 = v248;
      v175 = sub_1C448879C(v248[5]);
      v176(v175, v246);
      v177 = sub_1C448879C(v174[6]);
      v178(v177, v133);
      v179 = v173 + v174[7];
      sub_1C4EFEBB8();
      v180 = sub_1C4EFD2F8();
      v182 = v181;
      v183 = v52[6];
      v184 = v174[9];
      sub_1C4408374();
      sub_1C44CC80C(v4 + v185, v173 + v186, v187);
      sub_1C4EF9AE8();
      v188 = (v173 + v174[8]);
      *v188 = v180;
      v188[1] = v182;
      v189 = (v173 + v174[10]);
      v190 = v253;
      *v189 = v252;
      v189[1] = v190;
      *(v173 + v174[11]) = v191;
      *(v173 + v174[12]) = v250;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v196 = *(v256 + 16);
        v197 = sub_1C43FCEC0();
        sub_1C44C9240(v197, v198, v199, v256);
        v170 = v200;
      }

      sub_1C440F0B4();
      v193 = v247;
      if (v82)
      {
        v201 = sub_1C43FFD98(v192);
        sub_1C44C9240(v201, v202, v203, v170);
        v170 = v204;
      }

      *(v170 + 16) = v180;
      sub_1C43FCC40();
      sub_1C4420AA0();
      sub_1C44D4624(v242, v194, v195);
    }

    else
    {
      v193 = v247;
    }

    (*(v254 + 8))(v133, v255);
    (*(v85 + 8))(v246, v193);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4D78F10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v13 = a1[1];
  v27 = *a1;
  v14 = sub_1C4EFF0C8();
  (*(*(v14 - 8) + 16))(a9, a2, v14);
  v15 = type metadata accessor for EntityTriple(0);
  v16 = v15[5];
  v17 = sub_1C4EFEEF8();
  v18 = *(*(v17 - 8) + 16);
  v18(a9 + v16, a3, v17);
  v19 = v15[6];
  v20 = sub_1C4EFF8A8();
  (*(*(v20 - 8) + 16))(a9 + v19, a4, v20);
  v21 = type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType(0);
  v18(a9 + v15[7], a5 + *(v21 + 52), v17);
  sub_1C44CC80C(a5 + *(v21 + 24), a9 + v15[9], type metadata accessor for Source);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  v22 = (a9 + v15[8]);
  *v22 = v27;
  v22[1] = v13;
  v23 = (a9 + v15[10]);
  *v23 = a6;
  v23[1] = a7;
  *(a9 + v15[11]) = v24;
  *(a9 + v15[12]) = a8;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4D790D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001ALL && 0x80000001C4FC7E30 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001C4FC7E50 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001BLL && 0x80000001C4FC7E70 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x80000001C4FC7E90 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000026 && 0x80000001C4FC7EB0 == a2;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001CLL && 0x80000001C4FC7EE0 == a2;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000015 && 0x80000001C4FC7DA0 == a2;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x776F6E4B6F736C61 && a2 == 0xEB0000000073416ELL;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000014 && 0x80000001C4FC7F00 == a2;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1C4F02938();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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

unint64_t sub_1C4D794C8(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return 0x6C43797469746E65;
    case 2:
      return 0x656372756F73;
    case 3:
      v3 = 10;
      goto LABEL_11;
    case 4:
      return 0xD000000000000010;
    case 5:
      v3 = 11;
      goto LABEL_11;
    case 6:
      return 0xD000000000000011;
    case 7:
      return 0xD000000000000026;
    case 8:
      return 0xD00000000000001CLL;
    case 9:
      v3 = 5;
LABEL_11:
      result = v3 | 0xD000000000000010;
      break;
    case 10:
      result = 0x776F6E4B6F736C61;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0x6E656469666E6F63;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4D79668()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  v1 = sub_1C456902C(&qword_1EC0C6D60, &qword_1C4F71120);
  sub_1C4403200(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C4D85258();
  sub_1C440F61C();
  sub_1C4EFEEF8();
  sub_1C4412A4C();
  sub_1C44CD358(v5, v6);
  sub_1C43FF9BC();
  sub_1C4F02778();
  if (!v0)
  {
    v22 = type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType(0);
    v7 = v22[5];
    sub_1C443E4C4(1);
    sub_1C4EFD548();
    sub_1C4432F18();
    sub_1C44CD358(v8, v9);
    sub_1C44554E4();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v10 = v22[6];
    sub_1C443E4C4(2);
    type metadata accessor for Source();
    sub_1C440EB5C();
    sub_1C44CD358(v11, v12);
    sub_1C44554E4();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4409434(v22[7]);
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C440200C();
    sub_1C44307E0(v13);
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C4D86E40();
    sub_1C4409434(v14);
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4459C78();
    sub_1C44307E0(v15);
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C4409434(v22[11]);
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4416974();
    sub_1C44307E0(v16);
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C4D86EF8();
    sub_1C4409434(v17);
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4D8719C();
    sub_1C442E728(v18);
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C43FC6D0(&qword_1EDDFA578);
    sub_1C440F0C4();
    sub_1C43FEF68();
    sub_1C4F02778();
    sub_1C4D87028();
    sub_1C4409434(v19);
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4401774(v22[16]);
    sub_1C44307E0(12);
    sub_1C43FBF44();
    sub_1C4F02738();
  }

  v20 = sub_1C440231C();
  v21(v20);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4D79970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v96 = v27;
  v28 = sub_1C4EFEEF8();
  v29 = sub_1C4403200(v28);
  v104 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBFDC();
  v97 = v33;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C4461E00(v35, v36, v37, v38, v39, v40, v41, v42, v93);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C441816C();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C44143D0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FD230();
  sub_1C4D86F60(v46);
  v47 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v47);
  v49 = *(v48 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C4416C44(v51, v94);
  v107 = sub_1C456902C(&qword_1EC0C6D50, &qword_1C4F71118);
  sub_1C43FCDF8(v107);
  v53 = *(v52 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v54);
  v56 = sub_1C4425644(v55, v95);
  v57 = type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType(v56);
  v58 = sub_1C43FBCE0(v57);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FBCC4();
  sub_1C4422BD8();
  sub_1C43FCF64();
  v108 = v20;
  sub_1C440BAA8(v61, v62, v63, v20);
  v64 = v22 + v57[5];
  sub_1C4EFD318();
  v65 = v57[6];
  if (qword_1EDDFED28 != -1)
  {
    sub_1C44133AC();
    swift_once();
  }

  v66 = type metadata accessor for Source();
  sub_1C442B738(v66, &unk_1EDDFD088);
  sub_1C4408374();
  sub_1C44CC80C(v67, v22 + v65, v68);
  v103 = v57[7];
  sub_1C4EFE808();
  v69 = (v22 + v57[8]);
  *v69 = 0;
  v69[1] = 0;
  v102 = v57[9];
  sub_1C4EFE878();
  v70 = (v22 + v57[10]);
  *v70 = 0;
  v70[1] = 0;
  v100 = v57[11];
  sub_1C4EFEB48();
  v71 = (v22 + v57[12]);
  *v71 = 0;
  v71[1] = 0;
  v98 = v57[13];
  sub_1C4EFE3A8();
  v72 = v57[14];
  *(v22 + v72) = 0;
  v73 = v57[15];
  sub_1C4EFE2A8();
  v110 = v22;
  v74 = (v22 + v57[16]);
  *v74 = 0;
  v74[1] = 0;
  v75 = v26[4];
  v109 = v26;
  sub_1C4417F50(v26, v26[3]);
  sub_1C4D85258();
  sub_1C4D86FE8();
  sub_1C4F02BC8();
  if (v21)
  {
    sub_1C440962C(v26);
  }

  else
  {
    LOBYTE(a10) = 0;
    sub_1C4412A4C();
    sub_1C44CD358(v76, v77);
    sub_1C4466E08();
    sub_1C4F02658();
    sub_1C444088C(v106, v110, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FE79C(3);
    sub_1C4466E08();
    sub_1C4F026C8();
    v79 = *(v104 + 40);
    v79(v110 + v103, v105, v108);
    sub_1C4402038(4);
    *v69 = sub_1C4F02618();
    v69[1] = v80;
    sub_1C43FE79C(5);
    sub_1C44579A8();
    sub_1C4F026C8();
    v81 = sub_1C4D8715C();
    (v79)(v81);
    sub_1C4402038(6);
    sub_1C4D86FA8();
    *v70 = sub_1C4F02618();
    v70[1] = v82;
    sub_1C43FE79C(7);
    sub_1C44579A8();
    sub_1C4D86FA8();
    sub_1C4F026C8();
    v83 = sub_1C447565C(v100);
    v79(v83, v101, v108);
    sub_1C4402038(8);
    sub_1C4D86FA8();
    v84 = sub_1C4F02618();
    sub_1C443E4B8(v84, v85, &a18);
    sub_1C43FE79C(9);
    sub_1C44579A8();
    sub_1C4D86FA8();
    sub_1C4F026C8();
    v86 = sub_1C447565C(v98);
    v79(v86, v99, v108);
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C440EE48(&qword_1EDDFEA58);
    sub_1C44A83E0();
    sub_1C4D86FA8();
    sub_1C4F02658();
    *(v110 + v72) = a10;
    sub_1C43FE79C(11);
    sub_1C4D86FA8();
    sub_1C4F026C8();
    v87 = sub_1C4456A14(&a16);
    v79(v87, v97, v108);
    sub_1C4402038(12);
    v88 = sub_1C4F02618();
    v90 = v89;
    sub_1C441BF7C();
    v91(v111, v107);
    *v74 = v88;
    v74[1] = v90;
    sub_1C44805A4();
    sub_1C44CC80C(v110, v96, v92);
    sub_1C440962C(v109);
  }

  sub_1C441D4E4();
  sub_1C44D474C(v110, v78);
  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C4D7A014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D790D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D7A03C(uint64_t a1)
{
  v2 = sub_1C4D85258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D7A078(uint64_t a1)
{
  v2 = sub_1C4D85258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4D7A0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v25;
  a20 = v26;
  v523 = v20;
  v28 = v27;
  v518 = v30;
  v519 = v29;
  v520 = v31;
  v32 = type metadata accessor for EntityTriple(0);
  v514 = sub_1C43FCDF8(v32);
  v515 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v514);
  sub_1C43FBFDC();
  v509 = v36;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C4402024();
  v39 = MEMORY[0x1EEE9AC00](v38);
  sub_1C4461E00(v39, v40, v41, v42, v43, v44, v45, v46, v496);
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBF38();
  v506 = v48;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C44055D8();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBF38();
  v504 = v51;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBF38();
  v503 = v53;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FD230();
  sub_1C43FD2C8(v60);
  v517 = sub_1C4EFD548();
  v61 = sub_1C43FCDF8(v517);
  v63 = v62;
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v66 = sub_1C4EFF8A8();
  v67 = sub_1C43FCDF8(v66);
  v521 = v68;
  v522 = v67;
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v67);
  sub_1C43FBCC4();
  v73 = v72 - v71;
  v74 = sub_1C4409F48();
  v76 = sub_1C456902C(v74, v75);
  sub_1C43FBD18(v76);
  v78 = *(v77 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v79);
  sub_1C4422BD8();
  v80 = sub_1C4EFEEF8();
  v81 = sub_1C43FCDF8(v80);
  v83 = v82;
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v81);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v511 = *v28;
  v87 = v86;
  sub_1C445FFA8(v523, v24, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v24, 1, v87);
  if (v88)
  {
    sub_1C4420C3C(v24, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v89 = sub_1C43FFB2C();
    sub_1C44559D0(v89, v90);
  }

  else
  {
    v91 = *(v83 + 32);
    v516 = v22;
    v513 = v87;
    v91(v22, v24, v87);
    v92 = type metadata accessor for CNContactStructs.AddressRelationshipType(0);
    v94 = *(v63 + 16);
    v93 = (v63 + 16);
    v497 = v92[5];
    v94(v23, v523 + v497, v517);
    v517 = v73;
    sub_1C4EFF838();
    v95 = MEMORY[0x1E69E7CC0];
    a10 = MEMORY[0x1E69E7CC0];
    v96 = (v523 + v92[8]);
    v97 = v96[1];
    v98 = v523;
    v99 = v83;
    v512 = v83;
    if (v97)
    {
      sub_1C440C8B8(v96);
      if (v100)
      {
        v101 = sub_1C4EFF0C8();
        sub_1C43FCE50(v101);
        v103 = *(v102 + 16);
        v104 = sub_1C445BB90();
        v105(v104, v518);
        v87 = v514;
        v106 = *(v514 + 20);
        v107 = *(v83 + 16);
        sub_1C4401988();
        v107();
        sub_1C448E15C();
        v109 = sub_1C4D870B8(v108);
        v110(v109);
        v111 = sub_1C442F81C(v92[7]);
        (v107)(v111);
        v98 = v523;
        v112 = v92[6];
        v113 = *(v514 + 36);
        sub_1C4408374();
        sub_1C4D87070(v114, v115);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C44501E0(v116);
        *(v83 + v117) = v511;
        v118 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4401EC4(v118, v119, v120, MEMORY[0x1E69E7CC0]);
        v95 = v121;
        v93 = *(v121 + 16);
        v122 = *(v121 + 24);
        sub_1C4424824();
        if (v124)
        {
          v393 = sub_1C43FF640(v123);
          sub_1C44C9240(v393, v394, v395, v95);
          v95 = v396;
        }

        *(v95 + 16) = v97;
        sub_1C4425620();
        sub_1C447E804();
        sub_1C4420AA0();
        sub_1C44D4624(v83, v125, v126);
        a10 = v95;
        v99 = v512;
      }
    }

    sub_1C44F0990(v92[10]);
    if (v97)
    {
      sub_1C440C8B8(v127);
      if (v128)
      {
        v129 = sub_1C4EFF0C8();
        sub_1C43FCE50(v129);
        v131 = *(v130 + 16);
        v132 = sub_1C445BB90();
        v133(v132, v518);
        sub_1C442F510();
        sub_1C4401988();
        v98();
        sub_1C448E15C();
        v135 = sub_1C4D870B8(v134);
        v136(v135);
        v137 = sub_1C442F81C(v92[9]);
        (v98)(v137);
        v98 = v523;
        v138 = v92[6];
        v139 = *(v87 + 36);
        sub_1C4408374();
        sub_1C4D87070(v140, v141);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C44501E0(v142);
        *(v83 + v143) = v511;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v397 = *(v95 + 16);
          v398 = sub_1C43FCEC0();
          sub_1C44C9240(v398, v399, v400, v95);
          v95 = v401;
        }

        v93 = *(v95 + 16);
        v144 = *(v95 + 24);
        sub_1C4424824();
        v99 = v512;
        if (v124)
        {
          v402 = sub_1C43FF640(v145);
          sub_1C44C9240(v402, v403, v404, v95);
          v95 = v405;
        }

        *(v95 + 16) = v97;
        sub_1C4425620();
        sub_1C447E804();
        sub_1C4420AA0();
        sub_1C44D4624(v498, v146, v147);
        a10 = v95;
      }
    }

    sub_1C44F0990(v92[12]);
    if (v97)
    {
      sub_1C440C8B8(v148);
      if (v149)
      {
        v150 = sub_1C4EFF0C8();
        sub_1C43FCE50(v150);
        v152 = *(v151 + 16);
        v153 = sub_1C445BB90();
        v154(v153, v518);
        sub_1C442F510();
        sub_1C4401988();
        v98();
        sub_1C448E15C();
        v156 = sub_1C4D870B8(v155);
        v157(v156);
        v158 = sub_1C442F81C(v92[11]);
        (v98)(v158);
        v98 = v523;
        v159 = v92[6];
        v160 = *(v87 + 36);
        sub_1C4408374();
        sub_1C4D87070(v161, v162);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C44501E0(v163);
        *(v83 + v164) = v511;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v406 = *(v95 + 16);
          v407 = sub_1C43FCEC0();
          sub_1C44C9240(v407, v408, v409, v95);
          v95 = v410;
        }

        v93 = *(v95 + 16);
        v165 = *(v95 + 24);
        sub_1C4424824();
        v99 = v512;
        if (v124)
        {
          v411 = sub_1C43FF640(v166);
          sub_1C44C9240(v411, v412, v413, v95);
          v95 = v414;
        }

        *(v95 + 16) = v97;
        sub_1C4425620();
        sub_1C447E804();
        sub_1C4420AA0();
        sub_1C44D4624(v499, v167, v168);
        a10 = v95;
      }
    }

    sub_1C44F0990(v92[14]);
    if (v97)
    {
      sub_1C440C8B8(v170);
      if (v171)
      {
        v172 = sub_1C4EFF0C8();
        sub_1C43FCE50(v172);
        v174 = *(v173 + 16);
        v175 = sub_1C445BB90();
        v176(v175, v518);
        sub_1C442F510();
        sub_1C4401988();
        v98();
        sub_1C448E15C();
        v178 = sub_1C4D870B8(v177);
        v179(v178);
        v180 = sub_1C442F81C(v92[13]);
        (v98)(v180);
        v98 = v523;
        v181 = v92[6];
        v182 = *(v87 + 36);
        sub_1C4408374();
        sub_1C4D87070(v183, v184);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C44501E0(v185);
        *(v83 + v186) = v511;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v415 = *(v95 + 16);
          v416 = sub_1C43FCEC0();
          sub_1C44C9240(v416, v417, v418, v95);
          v95 = v419;
        }

        v93 = *(v95 + 16);
        v187 = *(v95 + 24);
        sub_1C4424824();
        v99 = v512;
        if (v124)
        {
          v420 = sub_1C43FF640(v188);
          sub_1C44C9240(v420, v421, v422, v95);
          v95 = v423;
        }

        *(v95 + 16) = v97;
        sub_1C4425620();
        sub_1C447E804();
        sub_1C4420AA0();
        v169 = sub_1C44D4624(v500, v189, v190);
        a10 = v95;
      }
    }

    v191 = *(v98 + v92[16]);
    if (v191)
    {
      v192 = v511;
      if (*(v191 + 16))
      {
        v97 = &v496;
        MEMORY[0x1EEE9AC00](v169);
        v194 = v516;
        v193 = v517;
        *(&v496 - 8) = v518;
        *(&v496 - 7) = v194;
        *(&v496 - 6) = v193;
        *(&v496 - 5) = v98;
        v195 = v520;
        *(&v496 - 4) = v519;
        *(&v496 - 3) = v195;
        *(&v496 - 16) = v192;
        sub_1C45DA100(sub_1C4D83D4C, (&v496 - 10), v196, v197, v198, v199, v200, v201, v496, v497);
        v510 = v21;
        v93 = &a10;
        sub_1C49D3614(v202);
      }
    }

    else
    {
      v192 = v511;
    }

    sub_1C44F0990(v92[18]);
    if (v97)
    {
      sub_1C440C8B8(v203);
      if (v204)
      {
        v205 = sub_1C4EFF0C8();
        sub_1C43FCE50(v205);
        v207 = *(v206 + 16);
        v208 = sub_1C447E284();
        v209(v208);
        v210 = sub_1C441F1B4();
        (v98)(v210);
        v211 = sub_1C446C1BC();
        v212(v211);
        v213 = sub_1C44348A0(v92[17]);
        (v98)(v213);
        v98 = v523;
        v214 = v92[6];
        v215 = *(v87 + 36);
        sub_1C4408374();
        sub_1C4D86FD0(v216, v217);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4405598(v218);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v424 = v97[2];
          v425 = sub_1C43FCEC0();
          sub_1C44C9240(v425, v426, v427, v97);
          v97 = v428;
        }

        sub_1C440F0B4();
        v99 = v512;
        if (v124)
        {
          v429 = sub_1C43FFD98(v219);
          sub_1C44C9240(v429, v430, v431, v97);
          v97 = v432;
        }

        v97[2] = v93;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v501, v220, v221);
        a10 = v97;
      }
    }

    sub_1C44F0990(v92[20]);
    if (v97)
    {
      sub_1C440C8B8(v222);
      if (v223)
      {
        v224 = sub_1C4EFF0C8();
        sub_1C43FCE50(v224);
        v226 = *(v225 + 16);
        v227 = sub_1C447E284();
        v228(v227);
        v229 = sub_1C441F1B4();
        (v98)(v229);
        v230 = sub_1C446C1BC();
        v231(v230);
        v232 = sub_1C44348A0(v92[19]);
        (v98)(v232);
        v98 = v523;
        v233 = v92[6];
        v234 = *(v87 + 36);
        sub_1C4408374();
        sub_1C4D86FD0(v235, v236);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4405598(v237);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v433 = v97[2];
          v434 = sub_1C43FCEC0();
          sub_1C44C9240(v434, v435, v436, v97);
          v97 = v437;
        }

        sub_1C440F0B4();
        v99 = v512;
        if (v124)
        {
          v438 = sub_1C43FFD98(v238);
          sub_1C44C9240(v438, v439, v440, v97);
          v97 = v441;
        }

        v97[2] = v93;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v502, v239, v240);
        a10 = v97;
      }
    }

    sub_1C44F0990(v92[22]);
    if (v97)
    {
      sub_1C440C8B8(v241);
      if (v242)
      {
        v243 = sub_1C4EFF0C8();
        sub_1C43FCE50(v243);
        v245 = *(v244 + 16);
        v246 = sub_1C447E284();
        v247(v246);
        v248 = sub_1C441F1B4();
        (v98)(v248);
        v249 = sub_1C446C1BC();
        v250(v249);
        v251 = sub_1C44348A0(v92[21]);
        (v98)(v251);
        v98 = v523;
        v252 = v92[6];
        v253 = *(v87 + 36);
        sub_1C4408374();
        sub_1C4D86FD0(v254, v255);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4405598(v256);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v442 = v97[2];
          v443 = sub_1C43FCEC0();
          sub_1C44C9240(v443, v444, v445, v97);
          v97 = v446;
        }

        sub_1C440F0B4();
        v99 = v512;
        if (v124)
        {
          v447 = sub_1C43FFD98(v257);
          sub_1C44C9240(v447, v448, v449, v97);
          v97 = v450;
        }

        v97[2] = v93;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v503, v258, v259);
        a10 = v97;
      }
    }

    sub_1C44F0990(v92[24]);
    if (v97)
    {
      sub_1C440C8B8(v260);
      if (v261)
      {
        v262 = sub_1C4EFF0C8();
        sub_1C43FCE50(v262);
        v264 = *(v263 + 16);
        v265 = sub_1C447E284();
        v266(v265);
        v267 = sub_1C441F1B4();
        (v98)(v267);
        v268 = sub_1C446C1BC();
        v269(v268);
        v270 = sub_1C44348A0(v92[23]);
        (v98)(v270);
        v98 = v523;
        v271 = v92[6];
        v272 = *(v87 + 36);
        sub_1C4408374();
        sub_1C4D86FD0(v273, v274);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4405598(v275);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v451 = v97[2];
          v452 = sub_1C43FCEC0();
          sub_1C44C9240(v452, v453, v454, v97);
          v97 = v455;
        }

        sub_1C440F0B4();
        v99 = v512;
        if (v124)
        {
          v456 = sub_1C43FFD98(v276);
          sub_1C44C9240(v456, v457, v458, v97);
          v97 = v459;
        }

        v97[2] = v93;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v504, v277, v278);
        a10 = v97;
      }
    }

    sub_1C44F0990(v92[26]);
    if (v97)
    {
      sub_1C440C8B8(v279);
      if (v280)
      {
        v281 = sub_1C4EFF0C8();
        sub_1C43FCE50(v281);
        v283 = *(v282 + 16);
        v284 = sub_1C447E284();
        v285(v284);
        v286 = sub_1C441F1B4();
        (v98)(v286);
        v287 = sub_1C446C1BC();
        v288(v287);
        v289 = sub_1C44348A0(v92[25]);
        (v98)(v289);
        v98 = v523;
        v290 = v92[6];
        v291 = *(v87 + 36);
        sub_1C4408374();
        sub_1C4D86FD0(v292, v293);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4405598(v294);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v460 = v97[2];
          v461 = sub_1C43FCEC0();
          sub_1C44C9240(v461, v462, v463, v97);
          v97 = v464;
        }

        sub_1C440F0B4();
        v99 = v512;
        if (v124)
        {
          v465 = sub_1C43FFD98(v295);
          sub_1C44C9240(v465, v466, v467, v97);
          v97 = v468;
        }

        v97[2] = v93;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v505, v296, v297);
        a10 = v97;
      }
    }

    sub_1C44F0990(v92[28]);
    if (v97)
    {
      sub_1C440C8B8(v298);
      if (v299)
      {
        v300 = sub_1C4EFF0C8();
        sub_1C43FCE50(v300);
        v302 = *(v301 + 16);
        v303 = sub_1C447E284();
        v304(v303);
        v305 = sub_1C441F1B4();
        (v98)(v305);
        v306 = sub_1C446C1BC();
        v307(v306);
        v308 = sub_1C44348A0(v92[27]);
        (v98)(v308);
        v98 = v523;
        v309 = v92[6];
        v310 = *(v87 + 36);
        sub_1C4408374();
        sub_1C4D86FD0(v311, v312);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4405598(v313);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v469 = v97[2];
          v470 = sub_1C43FCEC0();
          sub_1C44C9240(v470, v471, v472, v97);
          v97 = v473;
        }

        sub_1C440F0B4();
        v99 = v512;
        if (v124)
        {
          v474 = sub_1C43FFD98(v314);
          sub_1C44C9240(v474, v475, v476, v97);
          v97 = v477;
        }

        v97[2] = v93;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v506, v315, v316);
        a10 = v97;
      }
    }

    sub_1C44F0990(v92[30]);
    if (v97)
    {
      sub_1C440C8B8(v317);
      if (v318)
      {
        v319 = sub_1C4EFF0C8();
        sub_1C43FCE50(v319);
        v321 = *(v320 + 16);
        v322 = sub_1C447E284();
        v323(v322);
        v324 = sub_1C441F1B4();
        (v98)(v324);
        v325 = sub_1C446C1BC();
        v326(v325);
        v327 = sub_1C44348A0(v92[29]);
        (v98)(v327);
        v98 = v523;
        v328 = v92[6];
        v329 = *(v87 + 36);
        sub_1C4408374();
        sub_1C4D86FD0(v330, v331);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4405598(v332);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v478 = v97[2];
          v479 = sub_1C43FCEC0();
          sub_1C44C9240(v479, v480, v481, v97);
          v97 = v482;
        }

        sub_1C440F0B4();
        v99 = v512;
        if (v124)
        {
          v483 = sub_1C43FFD98(v333);
          sub_1C44C9240(v483, v484, v485, v97);
          v97 = v486;
        }

        v97[2] = v93;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v507, v334, v335);
        a10 = v97;
      }
    }

    sub_1C44F0990(v92[32]);
    if (v97)
    {
      sub_1C440C8B8(v336);
      if (v337)
      {
        v338 = sub_1C4EFF0C8();
        sub_1C43FCE50(v338);
        v340 = v508;
        (*(v339 + 16))(v508, v518);
        sub_1C442F510();
        sub_1C4401988();
        v98();
        sub_1C448E15C();
        v342 = sub_1C4D870B8(v341);
        v343(v342);
        v344 = sub_1C442F81C(v92[31]);
        (v98)(v344);
        v98 = v523;
        v345 = v92[6];
        v346 = *(v87 + 36);
        sub_1C4408374();
        sub_1C4D87070(v347, v348);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C44501E0(v349);
        *(v340 + v350) = v511;
        v192 = v511;
        v97 = a10;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v487 = v97[2];
          v488 = sub_1C43FCEC0();
          sub_1C44C9240(v488, v489, v490, v97);
          v97 = v491;
        }

        sub_1C440F0B4();
        v99 = v512;
        if (v124)
        {
          v492 = sub_1C43FFD98(v351);
          sub_1C44C9240(v492, v493, v494, v97);
          v97 = v495;
        }

        v97[2] = v93;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v508, v352, v353);
        a10 = v97;
      }
    }

    v354 = a10;
    if (a10[2])
    {
      v355 = sub_1C4EFF0C8();
      sub_1C43FCE50(v355);
      v357 = v192;
      v358 = v98;
      v359 = v509;
      (*(v356 + 16))(v509, v518);
      v360 = v514;
      v361 = sub_1C448879C(*(v514 + 20));
      v362(v361, v516);
      sub_1C448E15C();
      v364(v359 + v363, v517);
      v365 = v359 + v360[7];
      sub_1C4EFEBB8();
      v366 = (v358 + v497);
      sub_1C4EFD2F8();
      sub_1C440D158();
      v367 = v92[6];
      v368 = v360[9];
      sub_1C4408374();
      sub_1C44CC80C(v358 + v369, v359 + v370, v371);
      sub_1C4EF9AE8();
      v372 = (v359 + v360[8]);
      *v372 = v97;
      v372[1] = v366;
      v373 = (v359 + v360[10]);
      v374 = v520;
      *v373 = v519;
      v373[1] = v374;
      *(v359 + v360[11]) = v375;
      *(v359 + v360[12]) = v357;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v384 = *(v354 + 16);
        v385 = sub_1C43FCEC0();
        sub_1C44C9240(v385, v386, v387, v354);
        v354 = v388;
      }

      v377 = *(v354 + 16);
      v376 = *(v354 + 24);
      sub_1C4424824();
      if (v124)
      {
        v389 = sub_1C43FF640(v378);
        sub_1C44C9240(v389, v390, v391, v354);
        v354 = v392;
      }

      *(v354 + 16) = v97;
      sub_1C4425620();
      v380 = *(v379 + 72);
      sub_1C4420AA0();
      sub_1C44D4624(v509, v381, v382);
    }

    v383 = v516;
    (*(v521 + 8))(v517, v522);
    (*(v99 + 8))(v383, v513);
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C4D7B410@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v13 = a1[1];
  v27 = *a1;
  v14 = sub_1C4EFF0C8();
  (*(*(v14 - 8) + 16))(a9, a2, v14);
  v15 = type metadata accessor for EntityTriple(0);
  v16 = v15[5];
  v17 = sub_1C4EFEEF8();
  v18 = *(*(v17 - 8) + 16);
  v18(a9 + v16, a3, v17);
  v19 = v15[6];
  v20 = sub_1C4EFF8A8();
  (*(*(v20 - 8) + 16))(a9 + v19, a4, v20);
  v21 = type metadata accessor for CNContactStructs.AddressRelationshipType(0);
  v18(a9 + v15[7], a5 + *(v21 + 60), v17);
  sub_1C44CC80C(a5 + *(v21 + 24), a9 + v15[9], type metadata accessor for Source);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  v22 = (a9 + v15[8]);
  *v22 = v27;
  v22[1] = v13;
  v23 = (a9 + v15[10]);
  *v23 = a6;
  v23[1] = a7;
  *(a9 + v15[11]) = v24;
  *(a9 + v15[12]) = a8;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4D7B5D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001C4FC7F20 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x80000001C4FC7F40 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x4C746361746E6F63 && a2 == 0xEC0000006C656261;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000015 && 0x80000001C4FC7F60 == a2;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000014 && 0x80000001C4FC7F80 == a2;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000023 && 0x80000001C4FC7FA0 == a2;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000019 && 0x80000001C4FC7FD0 == a2;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000016 && 0x80000001C4FC7FF0 == a2;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6867756F726F6874 && a2 == 0xEC00000065726166;
                              if (v19 || (sub_1C4F02938() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000015 && 0x80000001C4FC8010 == a2;
                                if (v20 || (sub_1C4F02938() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6C61636F4C627573 && a2 == 0xEB00000000797469;
                                  if (v21 || (sub_1C4F02938() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000012 && 0x80000001C4FC8030 == a2;
                                    if (v22 || (sub_1C4F02938() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x7974696C61636F6CLL && a2 == 0xE800000000000000;
                                      if (v23 || (sub_1C4F02938() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD00000000000001FLL && 0x80000001C4FC8050 == a2;
                                        if (v24 || (sub_1C4F02938() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000015 && 0x80000001C4FB0B70 == a2;
                                          if (v25 || (sub_1C4F02938() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD00000000000001CLL && 0x80000001C4FC8070 == a2;
                                            if (v26 || (sub_1C4F02938() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000012 && 0x80000001C4FB0B50 == a2;
                                              if (v27 || (sub_1C4F02938() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD000000000000014 && 0x80000001C4FC8090 == a2;
                                                if (v28 || (sub_1C4F02938() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0x6F436C6174736F70 && a2 == 0xEA00000000006564;
                                                  if (v29 || (sub_1C4F02938() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD000000000000011 && 0x80000001C4FC80B0 == a2;
                                                    if (v30 || (sub_1C4F02938() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
                                                      if (v31 || (sub_1C4F02938() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD000000000000018 && 0x80000001C4FC80D0 == a2;
                                                        if (v32 || (sub_1C4F02938() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else if (a1 == 0x746E756F436F7369 && a2 == 0xEE0065646F437972)
                                                        {

                                                          return 28;
                                                        }

                                                        else
                                                        {
                                                          v34 = sub_1C4F02938();

                                                          if (v34)
                                                          {
                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            return 29;
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
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4D7BE68(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
    case 5:
    case 13:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x6464416C69616D65;
      break;
    case 6:
      result = 0x4C746361746E6F63;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x6D754E656E6F6870;
      break;
    case 9:
    case 23:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x69726F7661467369;
      break;
    case 11:
      result = 0xD000000000000023;
      break;
    case 12:
      result = 0xD000000000000019;
      break;
    case 14:
      result = 0x6867756F726F6874;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0x6C61636F4C627573;
      break;
    case 17:
    case 22:
      result = 0xD000000000000012;
      break;
    case 18:
      result = 0x7974696C61636F6CLL;
      break;
    case 19:
      result = 0xD00000000000001FLL;
      break;
    case 20:
      result = 0xD000000000000015;
      break;
    case 21:
      result = 0xD00000000000001CLL;
      break;
    case 24:
      result = 0x6F436C6174736F70;
      break;
    case 25:
      result = 0xD000000000000011;
      break;
    case 26:
      result = 0x7972746E756F63;
      break;
    case 27:
      result = 0xD000000000000018;
      break;
    case 28:
      result = 0x746E756F436F7369;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4D7C1A4()
{
  sub_1C43FE96C();
  v3 = sub_1C456902C(&qword_1EC0C6D78, &qword_1C4F71130);
  sub_1C4403200(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C44058BC();
  sub_1C43FD870();
  sub_1C4D852AC();
  sub_1C444B100();
  sub_1C4EFEEF8();
  sub_1C4412A4C();
  sub_1C44CD358(v9, v10);
  sub_1C441BD40();
  sub_1C4F02778();
  if (!v1)
  {
    v24 = type metadata accessor for CNContactStructs.AddressRelationshipType(0);
    v11 = v24[5];
    sub_1C443E4C4(1);
    sub_1C4EFD548();
    sub_1C4432F18();
    sub_1C44CD358(v12, v13);
    sub_1C443F020();
    sub_1C441BD40();
    sub_1C4F027E8();
    v14 = v24[6];
    sub_1C443E4C4(2);
    type metadata accessor for Source();
    sub_1C440EB5C();
    sub_1C44CD358(v15, v16);
    sub_1C443F020();
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C4409434(v24[7]);
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C440200C();
    sub_1C44307E0(v17);
    sub_1C441BD40();
    sub_1C4F02738();
    sub_1C4D86E40();
    sub_1C4409434(v18);
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C4459C78();
    sub_1C44307E0(v19);
    sub_1C441BD40();
    sub_1C4F02738();
    sub_1C4409434(v24[11]);
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C4416974();
    sub_1C44307E0(v20);
    sub_1C441BD40();
    sub_1C4F02738();
    sub_1C4D86EF8();
    sub_1C4409434(v21);
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C4D8719C();
    sub_1C4401774(v22);
    sub_1C44307E0(10);
    sub_1C441BD40();
    sub_1C4F02738();
    sub_1C4D87028();
    sub_1C4409434(v23);
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C442E728(v24[16]);
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C43FC6D0(&qword_1EDDFA578);
    sub_1C440F0C4();
    sub_1C441BD40();
    sub_1C4F02778();
    sub_1C4409434(v24[17]);
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C4401774(v24[18]);
    sub_1C44307E0(14);
    sub_1C441BD40();
    sub_1C4F02738();
    sub_1C4409434(v24[19]);
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C4401774(v24[20]);
    sub_1C44307E0(16);
    sub_1C441BD40();
    sub_1C4F02738();
    sub_1C4409434(v24[21]);
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C4401774(v24[22]);
    sub_1C44307E0(18);
    sub_1C441BD40();
    sub_1C4F02738();
    sub_1C4409434(v24[23]);
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C4401774(v24[24]);
    sub_1C44307E0(20);
    sub_1C441BD40();
    sub_1C4F02738();
    sub_1C4409434(v24[25]);
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C4401774(v24[26]);
    sub_1C44307E0(22);
    sub_1C441BD40();
    sub_1C4F02738();
    sub_1C4409434(v24[27]);
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C4401774(v24[28]);
    sub_1C44307E0(24);
    sub_1C441BD40();
    sub_1C4F02738();
    sub_1C4409434(v24[29]);
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C4401774(v24[30]);
    sub_1C44307E0(26);
    sub_1C441BD40();
    sub_1C4F02738();
    sub_1C4409434(v24[31]);
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C4401774(v24[32]);
    sub_1C44307E0(28);
    sub_1C441BD40();
    sub_1C4F02738();
  }

  (*(v5 + 8))(v2, v0);
  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4D7C6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  v180 = v21;
  v26 = v25;
  v166 = v27;
  v28 = sub_1C4EFEEF8();
  v29 = sub_1C4403200(v28);
  v179 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C44055D8();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C4402024();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C44143D0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FD230();
  v176[0] = v45;
  v46 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v46);
  v48 = *(v47 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBC74();
  sub_1C4D86F60(v50);
  v178 = sub_1C456902C(&qword_1EC0C6D68, &qword_1C4F71128);
  sub_1C43FCDF8(v178);
  v176[2] = v51;
  v53 = *(v52 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v54);
  v56 = sub_1C4425644(v55, v164);
  v57 = type metadata accessor for CNContactStructs.AddressRelationshipType(v56);
  v58 = sub_1C43FBCE0(v57);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v62 = sub_1C4410790(v61, v165);
  v177 = v20;
  sub_1C44A1CA0(v62, v63, v64);
  sub_1C4EFD1D8();
  v65 = v57[6];
  if (qword_1EDDFED28 != -1)
  {
    sub_1C44133AC();
    swift_once();
  }

  v66 = type metadata accessor for Source();
  sub_1C442B738(v66, &unk_1EDDFD088);
  sub_1C4408374();
  sub_1C44CC80C(v67, v22 + v65, v68);
  sub_1C4D87038();
  sub_1C4EFE518();
  sub_1C442A790(v57[8]);
  v174 = v69;
  v173 = v57[9];
  sub_1C4EFE4E8();
  sub_1C442A790(v57[10]);
  v171 = v70;
  v170 = v57[11];
  sub_1C4EFE478();
  sub_1C442A790(v57[12]);
  v169 = v71;
  v168 = v57[13];
  sub_1C4EFE318();
  sub_1C442A790(v57[14]);
  sub_1C444C0B0(v57[15]);
  sub_1C4EFEB08();
  v167 = v57[16];
  *(v22 + v167) = 0;
  sub_1C444C0B0(v57[17]);
  sub_1C4EFE5A8();
  sub_1C442A790(v57[18]);
  sub_1C444C0B0(v57[19]);
  sub_1C4EFE4B8();
  sub_1C442A790(v57[20]);
  sub_1C444C0B0(v57[21]);
  sub_1C4EFEDE8();
  sub_1C442A790(v57[22]);
  sub_1C444C0B0(v57[23]);
  sub_1C4EFEA58();
  v72 = (v22 + v57[24]);
  *v72 = 0;
  v72[1] = 0;
  sub_1C444C0B0(v57[25]);
  sub_1C4EFE8D8();
  v73 = (v22 + v57[26]);
  *v73 = 0;
  v73[1] = 0;
  sub_1C444C0B0(v57[27]);
  sub_1C4EFE378();
  v74 = (v22 + v57[28]);
  *v74 = 0;
  v74[1] = 0;
  sub_1C444C0B0(v57[29]);
  sub_1C4EFECD8();
  v75 = (v22 + v57[30]);
  *v75 = 0;
  v75[1] = 0;
  v76 = v57[31];
  sub_1C4EFE688();
  v77 = v57[32];
  v182 = v22;
  v78 = (v22 + v77);
  *v78 = 0;
  v78[1] = 0;
  v79 = v26;
  v81 = v26[3];
  v80 = v26[4];
  v181 = v79;
  sub_1C4417F50(v79, v81);
  sub_1C4D852AC();
  sub_1C4D86FE8();
  sub_1C4F02BC8();
  if (v21)
  {
    v162 = v182;
  }

  else
  {
    v180 = v78;
    LOBYTE(a10) = 0;
    sub_1C4412A4C();
    sub_1C44CD358(v82, v83);
    sub_1C4451480();
    v84 = v183;
    sub_1C4F02658();
    sub_1C444088C(v176[1], v182, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FE79C(3);
    sub_1C4451480();
    sub_1C4F026C8();
    v86 = *(v179 + 40);
    v87 = sub_1C4D86F08(v175[1]);
    v86(v87);
    sub_1C4402038(4);
    v88 = sub_1C4D8721C();
    v179 += 40;
    v89 = v174;
    *v174 = v88;
    v89[1] = v90;
    sub_1C43FE79C(5);
    sub_1C4451480();
    sub_1C4F026C8();
    v91 = sub_1C4D86F08(v173);
    v86(v91);
    sub_1C4402038(6);
    v92 = sub_1C4D8721C();
    v93 = v171;
    *v171 = v92;
    v93[1] = v94;
    sub_1C43FE79C(7);
    sub_1C4451480();
    sub_1C4F026C8();
    v95 = sub_1C4D86F08(v170);
    v86(v95);
    sub_1C4402038(8);
    *v169 = sub_1C4D8721C();
    v169[1] = v96;
    sub_1C43FE79C(9);
    sub_1C4451480();
    sub_1C4F026C8();
    v97 = sub_1C4D86F08(v168);
    v86(v97);
    sub_1C4402038(10);
    v98 = sub_1C4D8721C();
    sub_1C443E4B8(v98, v99, &a17);
    sub_1C43FE79C(11);
    sub_1C440C668();
    sub_1C4451480();
    sub_1C4F026C8();
    sub_1C4D86F9C(v182);
    sub_1C44585EC(&a18);
    (v86)(v100, v101, v102, v103, v104);
    v105 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    v184 = 12;
    sub_1C440EE48(&qword_1EDDFEA58);
    sub_1C44A83E0();
    sub_1C4F02658();
    *(v182 + v167) = a10;
    sub_1C43FE79C(13);
    sub_1C447FB54(&a15);
    sub_1C4D86F9C(v182);
    sub_1C44585EC(&a15);
    (v86)(v106, v107, v108, v109, v110);
    v111 = sub_1C445C058(14);
    sub_1C443E4B8(v111, v112, &a11);
    sub_1C43FE79C(15);
    sub_1C447FB54(&a12);
    sub_1C4D86F9C(v182);
    sub_1C44585EC(&a12);
    (v86)(v113, v114, v115, v116, v117);
    v118 = sub_1C445C058(16);
    sub_1C443E4B8(v118, v119, &v185);
    sub_1C43FE79C(17);
    sub_1C447FB54(&a9);
    sub_1C4D86F9C(v182);
    sub_1C44585EC(&a9);
    (v86)(v120, v121, v122, v123, v124);
    v125 = sub_1C445C058(18);
    sub_1C443E4B8(v125, v126, v176);
    sub_1C43FE79C(19);
    sub_1C447FB54(&v179);
    sub_1C4D86F9C(v182);
    sub_1C44585EC(&v179);
    (v86)(v127, v128, v129, v130, v131);
    v132 = sub_1C445C058(20);
    sub_1C443E4B8(v132, v133, &v171);
    sub_1C43FE79C(21);
    sub_1C447FB54(&v180);
    sub_1C4D86F9C(v182);
    sub_1C44585EC(&v180);
    (v86)(v134, v135, v136, v137, v138);
    v139 = sub_1C445C058(22);
    sub_1C443E4B8(v139, v140, &v172);
    sub_1C43FE79C(23);
    sub_1C447FB54(&v181);
    sub_1C4456A14(&v177);
    sub_1C44585EC(&v181);
    (v86)(v141, v142, v143, v144, v145);
    v146 = sub_1C445C058(24);
    sub_1C443E4B8(v146, v147, &v173);
    sub_1C43FE79C(25);
    sub_1C447FB54(&v182);
    sub_1C4456A14(&v178);
    sub_1C44585EC(&v182);
    (v86)(v148, v149, v150, v151, v152);
    v153 = sub_1C445C058(26);
    sub_1C443E4B8(v153, v154, &v174);
    sub_1C43FE79C(27);
    sub_1C447FB54(&v183);
    sub_1C4456A14(v175);
    sub_1C44585EC(&v183);
    (v86)(v155, v156, v157, v158, v159);
    sub_1C445C058(28);
    sub_1C440D158();
    sub_1C441BF7C();
    v160(v84, v178);
    v161 = v180;
    *v180 = v105;
    v161[1] = v84;
    sub_1C44F1A00();
    v162 = v182;
    sub_1C44CC80C(v182, v166, v163);
  }

  sub_1C440962C(v181);
  sub_1C44401A4();
  sub_1C44D474C(v162, v85);
  sub_1C43FBC80();
}

uint64_t sub_1C4D7D180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D7B5D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D7D1A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4D7BE60();
  *a1 = result;
  return result;
}

uint64_t sub_1C4D7D1D0(uint64_t a1)
{
  v2 = sub_1C4D852AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D7D20C(uint64_t a1)
{
  v2 = sub_1C4D852AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D7D5C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6572646441736168 && a2 == 0xEA00000000007373)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

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

unint64_t sub_1C4D7D77C(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6572646441736168;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4D7D828()
{
  sub_1C440EDD4();
  v3 = sub_1C456902C(&qword_1EC0C6D18, &qword_1C4F710F0);
  sub_1C4403200(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C4D8515C();
  sub_1C440F61C();
  sub_1C441D6E4();
  sub_1C4EFF0C8();
  sub_1C442E784();
  sub_1C44CD358(v9, v10);
  sub_1C43FE6CC();
  sub_1C43FCB2C();
  sub_1C4F027E8();
  if (!v1)
  {
    v11 = type metadata accessor for CNContactStructs.Place(0);
    v12 = v11[5];
    sub_1C440CE38();
    sub_1C4EFEEF8();
    sub_1C4412A4C();
    sub_1C44CD358(v13, v14);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F02778();
    v15 = v11[6];
    sub_1C4401FFC();
    sub_1C4EFD548();
    sub_1C4432F18();
    sub_1C44CD358(v16, v17);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C443439C();
    sub_1C440EB5C();
    sub_1C44CD358(v18, v19);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v20 = v11[8];
    type metadata accessor for CNContactStructs.AddressRelationshipType(0);
    sub_1C44B67AC();
    sub_1C44CD358(v21, v22);
    sub_1C43FCB2C();
    sub_1C4F02778();
  }

  return (*(v5 + 8))(v2, v0);
}

void sub_1C4D7DA88()
{
  sub_1C43FE96C();
  v4 = v3;
  v56 = v5;
  v6 = sub_1C456902C(&unk_1EC0BADC0, &qword_1C4F402C0);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBC74();
  sub_1C4D86F60(v10);
  v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBC74();
  v58 = v15;
  sub_1C43FBE44();
  v60 = sub_1C4EFF0C8();
  v16 = sub_1C43FCDF8(v60);
  v59 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C440F400();
  v20 = sub_1C456902C(&qword_1EC0C6D08, &qword_1C4F710E8);
  sub_1C43FCDF8(v20);
  v22 = *(v21 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  v24 = sub_1C4D86F2C();
  v25 = type metadata accessor for CNContactStructs.Place(v24);
  v26 = sub_1C43FBCE0(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v30 = *(v29 + 20);
  v31 = sub_1C4EFEEF8();
  v63 = v30;
  sub_1C43FCF64();
  sub_1C440BAA8(v32, v33, v34, v31);
  v61 = v25[6];
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  v35 = v25[7];
  if (qword_1EDDFED28 != -1)
  {
    sub_1C44133AC();
    swift_once();
  }

  v36 = type metadata accessor for Source();
  sub_1C442B738(v36, &unk_1EDDFD088);
  sub_1C4408374();
  v62 = v35;
  sub_1C44CC80C(v37, v1 + v35, v38);
  v39 = v25[8];
  v40 = type metadata accessor for CNContactStructs.AddressRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v41, v42, v43, v40);
  v44 = v4[4];
  sub_1C4417F50(v4, v4[3]);
  sub_1C4D8515C();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v4);
    sub_1C4420C3C(v1 + v63, &qword_1EC0B9A08, &unk_1C4F107B0);
    v47 = sub_1C4EFD548();
    sub_1C43FBCE0(v47);
    (*(v48 + 8))(v1 + v61);
    sub_1C440636C();
    sub_1C44D474C(v1 + v62, v49);
    sub_1C4420C3C(v1 + v39, &unk_1EC0BADC0, &qword_1C4F402C0);
  }

  else
  {
    sub_1C442E784();
    sub_1C44CD358(v45, v46);
    sub_1C43FE6CC();
    sub_1C4F026C8();
    (*(v59 + 32))(v1, v2, v60);
    sub_1C4412A4C();
    sub_1C44CD358(v50, v51);
    sub_1C4F02658();
    sub_1C444088C(v58, v1 + v63, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44B67AC();
    sub_1C44CD358(v52, v53);
    sub_1C4F02658();
    v54 = sub_1C441698C();
    v55(v54);
    sub_1C444088C(v57, v1 + v39, &unk_1EC0BADC0, &qword_1C4F402C0);
    sub_1C44CC80C(v1, v56, type metadata accessor for CNContactStructs.Place);
    sub_1C440962C(v4);
    sub_1C44D474C(v1, type metadata accessor for CNContactStructs.Place);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4D7DFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D7D5C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D7E004(uint64_t a1)
{
  v2 = sub_1C4D8515C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D7E040(uint64_t a1)
{
  v2 = sub_1C4D8515C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4D7E0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(void), uint64_t (*a22)(uint64_t, uint64_t, char *), uint64_t (*a23)(void))
{
  sub_1C43FE628();
  v242 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v247 = v24;
  v33 = v32;
  v238 = v34;
  v252 = v35;
  v255 = v36;
  v37 = sub_1C4EFF0C8();
  v249 = sub_1C43FCDF8(v37);
  v250 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v249);
  sub_1C43FD2D8();
  v229 = v41;
  v244 = v31;
  v245 = v29;
  v42 = sub_1C43FE99C();
  v44 = sub_1C456902C(v42, v43);
  sub_1C43FBD18(v44);
  v46 = *(v45 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBC74();
  v243 = v48;
  v49 = sub_1C43FBE44();
  v246 = v27(v49);
  sub_1C43FBCE0(v246);
  v51 = *(v50 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBC74();
  v54 = sub_1C43FD2C8(v53);
  v237 = type metadata accessor for EntityTriple(v54);
  v55 = sub_1C43FCDF8(v237);
  v239 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FD230();
  sub_1C43FD2C8(v61);
  v62 = sub_1C4EFD548();
  v63 = sub_1C43FCDF8(v62);
  v240 = v64;
  v241 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FBCC4();
  v69 = v68 - v67;
  v70 = sub_1C4EFF8A8();
  v71 = sub_1C43FCDF8(v70);
  v253 = v72;
  v254 = v71;
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v71);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v223 - v76;
  v78 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v79 = sub_1C43FBD18(v78);
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v79);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v223 - v83;
  v85 = sub_1C4EFEEF8();
  v86 = sub_1C43FCDF8(v85);
  v88 = v87;
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v86);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v223 - v92;
  v251 = *v33;
  v94 = v23;
  v96 = v95;
  sub_1C445FFA8(v23, v84, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C44101EC();
  sub_1C440175C(v97, v98, v99);
  if (v100)
  {
    sub_1C4420C3C(v84, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    sub_1C43FFB2C();
    sub_1C43FE7A8(v101, 2);
LABEL_24:
    sub_1C440EE0C();
    sub_1C44109F8();
    return;
  }

  v236 = v88;
  v102 = *(v88 + 32);
  v248 = v96;
  v225 = v88 + 32;
  v224 = v102;
  v102(v93, v84, v96);
  v103 = v242(0);
  v104 = *(v240 + 16);
  v226 = v103[5];
  v104(v69, v94 + v226, v241);
  v242 = v77;
  sub_1C4EFF838();
  v105 = MEMORY[0x1E69E7CC0];
  v257 = MEMORY[0x1E69E7CC0];
  v106 = (v94 + v103[8]);
  v107 = v106[1];
  v240 = v94;
  v241 = v93;
  v227 = v103;
  if (!v107)
  {
    v144 = v94;
    v139 = v247;
    v145 = v252;
    v110 = v250;
LABEL_11:
    v141 = v245;
    v140 = v246;
    goto LABEL_12;
  }

  sub_1C44D4060(v106);
  v109 = v255;
  v110 = v250;
  if (!v111)
  {
    v139 = v247;
    v145 = v252;
    v144 = v240;
    goto LABEL_11;
  }

  v112 = *(v250 + 16);
  v113 = v235;
  v223 = v108;
  v112(v235, v238, v249);
  v114 = v237;
  v115 = *(v236 + 16);
  v116 = sub_1C4401998(v237[5]);
  v117 = v248;
  v115(v116);
  v118 = sub_1C4401940(v114[6]);
  v119(v118, v242);
  v120 = v103[7];
  v121 = v103;
  v122 = v240;
  (v115)(v113 + v114[7], v240 + v120, v117);
  v123 = v121[6];
  v124 = v114[9];
  sub_1C4408374();
  sub_1C44CC80C(v122 + v125, v113 + v126, v127);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  v128 = (v113 + v114[8]);
  *v128 = v223;
  v128[1] = v107;
  v129 = (v113 + v114[10]);
  v130 = v252;
  *v129 = v109;
  v129[1] = v130;
  *(v113 + v114[11]) = v131;
  *(v113 + v114[12]) = v251;
  v132 = v130;
  v133 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4401EC4(v133, v134, v135, MEMORY[0x1E69E7CC0]);
  v105 = v136;
  v138 = *(v136 + 16);
  v137 = *(v136 + 24);
  if (v138 >= v137 >> 1)
  {
    sub_1C44C9240(v137 > 1, v138 + 1, 1, v136);
    v105 = v216;
  }

  v140 = v246;
  v139 = v247;
  v141 = v245;
  *(v105 + 16) = v138 + 1;
  sub_1C445EB4C();
  sub_1C4420AA0();
  sub_1C44D4624(v235, v142, v143);
  v257 = v105;
  v144 = v240;
  v110 = v250;
  v103 = v227;
  v145 = v132;
LABEL_12:
  v146 = v144 + v103[9];
  v148 = v243;
  v147 = v244;
  sub_1C445FFA8(v146, v243, v244, v141);
  sub_1C440175C(v148, 1, v140);
  if (v100)
  {
    sub_1C4420C3C(v148, v147, v141);
    v149 = v234;
LABEL_15:
    v150 = v253;
LABEL_16:
    v151 = v242;
    v152 = v254;
    v153 = v236;
    if (*(v105 + 16))
    {
      (*(v110 + 16))(v149, v238, v249);
      v154 = v237;
      v155 = sub_1C448879C(v237[5]);
      v156(v155, v241, v248);
      v157 = sub_1C448879C(v154[6]);
      v158(v157, v151, v152);
      v159 = v149 + v154[7];
      sub_1C4EFEBB8();
      v160 = v144 + v226;
      sub_1C4EFD2F8();
      sub_1C440D158();
      v161 = v227[6];
      v162 = v154[9];
      sub_1C4408374();
      sub_1C44CC80C(v144 + v163, v149 + v164, v165);
      sub_1C4EF9AE8();
      v166 = (v149 + v154[8]);
      *v166 = v151;
      v166[1] = v160;
      sub_1C4D87188(v154[10]);
      *(v149 + v154[11]) = v167;
      *(v149 + v154[12]) = v251;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v210 = *(v105 + 16);
        v211 = sub_1C43FCEC0();
        sub_1C44C9240(v211, v212, v213, v105);
        v105 = v214;
      }

      v169 = *(v105 + 16);
      v168 = *(v105 + 24);
      sub_1C4424824();
      v171 = v248;
      if (v172)
      {
        sub_1C44C9240(v170 > 1, v151, 1, v105);
        v105 = v215;
      }

      (*(v150 + 8))(v242, v152);
      v173 = sub_1C44D7E1C();
      v174(v173, v171);
      *(v105 + 16) = v151;
      sub_1C445EB4C();
      sub_1C4420AA0();
      sub_1C44D4624(v149, v175, v176);
    }

    else
    {
      (*(v150 + 8))(v242, v254, v249);
      (*(v153 + 8))(v241, v248);
    }

    goto LABEL_24;
  }

  v177 = v148;
  v178 = v233;
  sub_1C44D4624(v177, v233, a21);
  v256 = v251;
  v179 = a22(v255, v145, &v256);
  if (v139)
  {
    sub_1C44D474C(v178, a23);
    (*(v253 + 8))(v242, v254);
    v180 = sub_1C44D7E1C();
    v181(v180, v248);

    goto LABEL_24;
  }

  v182 = v248;
  if (!*(v179 + 16))
  {
    sub_1C44D474C(v178, a23);

    v149 = v234;
    v144 = v240;
    goto LABEL_15;
  }

  v183 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v183);
  v184 = v229;
  (*(v110 + 16))(v229, v238, v249);
  sub_1C440C668();
  (*(v185 + 16))(v230, v241, v182);
  (*(v253 + 16))(v231, v242, v254);
  v186 = v178 + *(v140 + 20);
  v187 = v228;
  sub_1C445FFA8(v186, v228, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C44101EC();
  sub_1C440175C(v188, v189, v190);
  if (!v100)
  {

    v250 = sub_1C4EFF048();
    v247 = v191;
    v192 = v227[6];
    v193 = v237;
    v194 = v237[9];
    sub_1C4408374();
    v196 = v232;
    sub_1C44CC80C(v240 + v195, v232 + v197, v198);
    sub_1C4EF9AE8();
    v200 = v199;
    (*(v110 + 32))(v196, v184, v249);
    v201 = v224;
    v224(v196 + v193[5], v230, v182);
    (*(v253 + 32))(v196 + v193[6], v231, v254);
    v201(v196 + v193[7], v187, v182);
    v202 = (v196 + v193[8]);
    v203 = v247;
    *v202 = v250;
    v202[1] = v203;
    sub_1C4D87188(v193[10]);
    *(v196 + v193[11]) = v200;
    *(v196 + v193[12]) = v251;
    v105 = v257;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v217 = *(v105 + 16);
      v218 = sub_1C43FCEC0();
      sub_1C44C9240(v218, v219, v220, v105);
      v105 = v221;
    }

    v149 = v234;
    v205 = *(v105 + 16);
    v204 = *(v105 + 24);
    sub_1C44019A4();
    v150 = v253;
    v207 = v233;
    if (v172)
    {
      sub_1C44C9240(v206 > 1, v193, 1, v105);
      v105 = v222;
    }

    sub_1C44D474C(v207, a23);
    *(v105 + 16) = v193;
    sub_1C445EB4C();
    sub_1C4420AA0();
    sub_1C44D4624(v232, v208, v209);
    v144 = v240;
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_1C4D7EC5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x80000001C4FC80F0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F697461636F6CLL && a2 == 0xED00006C6562614CLL;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x7461636F4C736168 && a2 == 0xEB000000006E6F69)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C4F02938();

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

unint64_t sub_1C4D7EE60(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0x7461636F4C736168;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4D7EF34()
{
  sub_1C43FE96C();
  sub_1C440EDD4();
  v2 = sub_1C456902C(&qword_1EC0C6D90, &qword_1C4F71140);
  sub_1C4403200(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C4D85300();
  sub_1C440F61C();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C4412A4C();
  sub_1C44CD358(v6, v7);
  sub_1C44055EC();
  sub_1C4F02778();
  if (!v0)
  {
    v19 = type metadata accessor for CNContactStructs.LocationRelationshipType(0);
    v8 = v19[5];
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4432F18();
    sub_1C44CD358(v9, v10);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v11 = v19[6];
    sub_1C4401FFC();
    type metadata accessor for Source();
    sub_1C440EB5C();
    sub_1C44CD358(v12, v13);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C4401958(v19);
    sub_1C44055EC();
    sub_1C4F027E8();
    sub_1C440C15C((v1 + v19[8]));
    sub_1C4F02738();
    v14 = sub_1C4D870E8();
    type metadata accessor for CNContactStructs.Place(v14);
    sub_1C44C04D0();
    sub_1C44CD358(v15, v16);
    sub_1C43FCB2C();
    sub_1C4F02778();
  }

  v17 = sub_1C440231C();
  v18(v17);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4D7F178()
{
  sub_1C43FE96C();
  v5 = v4;
  v60 = v6;
  v7 = sub_1C456902C(&qword_1EC0BADB8, &unk_1C4F175D0);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C4416C44(v11, v58);
  v12 = sub_1C4EFEEF8();
  v13 = sub_1C4403200(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD2D8();
  v16 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v16);
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBC74();
  v20 = sub_1C456902C(&qword_1EC0C6D80, &qword_1C4F71138);
  sub_1C43FCDF8(v20);
  v22 = *(v21 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  v24 = sub_1C4D86F2C();
  v25 = type metadata accessor for CNContactStructs.LocationRelationshipType(v24);
  v26 = sub_1C43FBCE0(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = sub_1C4410790(v29, v59);
  sub_1C44A1CA0(v30, v31, v32);
  sub_1C4EFD1F8();
  v33 = *(v25 + 24);
  if (qword_1EDDFED28 != -1)
  {
    sub_1C44133AC();
    swift_once();
  }

  v34 = type metadata accessor for Source();
  sub_1C442B738(v34, &unk_1EDDFD088);
  sub_1C4408374();
  sub_1C44CC80C(v35, v1 + v33, v36);
  v37 = *(v25 + 28);
  sub_1C4EFE5E8();
  v38 = sub_1C4D870D0();
  v39 = type metadata accessor for CNContactStructs.Place(v38);
  sub_1C43FCF64();
  sub_1C440BAA8(v40, v41, v42, v39);
  v43 = v5;
  v45 = v5[3];
  v44 = v5[4];
  v61 = v43;
  sub_1C4417F50(v43, v45);
  sub_1C4D85300();
  sub_1C44CD164();
  if (!v0)
  {
    sub_1C4412A4C();
    v48 = sub_1C44CD358(v46, v47);
    sub_1C4D86EAC(v48);
    sub_1C444088C(v2, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C43FE664();
    sub_1C4F026C8();
    v49 = sub_1C4D870A0();
    v50(v49);
    sub_1C4428F20();
    sub_1C43FE664();
    *v3 = sub_1C4F02618();
    v3[1] = v52;
    sub_1C44C04D0();
    sub_1C44CD358(v53, v54);
    sub_1C450B3B4();
    sub_1C43FE664();
    sub_1C4F02658();
    v55 = sub_1C442A7B4();
    v56(v55);
    sub_1C444088C(v37, v1 + v2, &qword_1EC0BADB8, &unk_1C4F175D0);
    sub_1C44758A0();
    sub_1C44CC80C(v1, v60, v57);
  }

  sub_1C440962C(v61);
  sub_1C444AE90();
  sub_1C44D474C(v1, v51);
  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4D7F548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D7EC5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D7F570(uint64_t a1)
{
  v2 = sub_1C4D85300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D7F5AC(uint64_t a1)
{
  v2 = sub_1C4D85300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4D7F6AC()
{
  sub_1C43FBD3C();
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for CNContactStructs.EntityAliasRelationshipType(v6);
  v8 = sub_1C43FCF7C(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  sub_1C44D458C();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4402CA8();
  v12 = *(type metadata accessor for CNContactStructs.Person(0) + 244);
  v13 = *(v0 + v12);
  if (v13)
  {
    if (*(v13 + 16))
    {
      sub_1C4401968(v13);
      v14 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C44CC80C(v12, v1, type metadata accessor for CNContactStructs.EntityAliasRelationshipType);
        sub_1C4EFEAA8();
        v15 = sub_1C4EFEEF8();
        v16 = sub_1C444C460(v15);
        sub_1C444088C(v16, v17, &qword_1EC0B9A08, &unk_1C4F107B0);
        sub_1C4482EF0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = *(v14 + 16);
          v25 = sub_1C43FCEC0();
          sub_1C44DBB10(v25, v26, v27, v14);
          v14 = v28;
        }

        sub_1C4473DBC();
        if (v19)
        {
          v29 = sub_1C4440B38(v18);
          sub_1C44DBB10(v29, v30, v31, v32);
          v14 = v33;
        }

        sub_1C4456300();
        sub_1C4D8711C(v20, v21);
        sub_1C440CE6C();
        sub_1C44D474C(v1, v22);
        sub_1C4D870C4();
      }

      while (!v23);

      v12 = v34;
      v0 = v35;
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + v12) = v14;
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C4D7F88C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = sub_1C4EFF0C8();
  (*(*(v11 - 8) + 16))(a6, a2, v11);
  v12 = type metadata accessor for CNContactStructs.Person(0);
  v13 = *(v12 + 112);
  v14 = type metadata accessor for EntityTriple(0);
  v15 = v14[5];
  v16 = sub_1C4EFEEF8();
  (*(*(v16 - 8) + 16))(a6 + v15, a2 + v13, v16);
  sub_1C44CC80C(a2 + *(v12 + 28), a6 + v14[9], type metadata accessor for Source);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  v18 = v17;
  v19 = a6 + v14[6];
  sub_1C4EFF888();
  v20 = a6 + v14[7];
  sub_1C4EFEC38();
  v21 = (a6 + v14[8]);
  *v21 = v9;
  v21[1] = v10;
  v22 = (a6 + v14[10]);
  *v22 = a3;
  v22[1] = a4;
  *(a6 + v14[11]) = v18;
  *(a6 + v14[12]) = a5;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4D7FA18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = sub_1C4EFF0C8();
  (*(*(v11 - 8) + 16))(a6, a2, v11);
  v12 = type metadata accessor for CNContactStructs.Person(0);
  v13 = *(v12 + 120);
  v14 = type metadata accessor for EntityTriple(0);
  v15 = v14[5];
  v16 = sub_1C4EFEEF8();
  (*(*(v16 - 8) + 16))(a6 + v15, a2 + v13, v16);
  sub_1C44CC80C(a2 + *(v12 + 28), a6 + v14[9], type metadata accessor for Source);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  v18 = v17;
  v19 = a6 + v14[6];
  sub_1C4EFF888();
  v20 = a6 + v14[7];
  sub_1C4EFEC38();
  v21 = (a6 + v14[8]);
  *v21 = v9;
  v21[1] = v10;
  v22 = (a6 + v14[10]);
  *v22 = a3;
  v22[1] = a4;
  *(a6 + v14[11]) = v18;
  *(a6 + v14[12]) = a5;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4D7FBA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = sub_1C4EFF0C8();
  (*(*(v11 - 8) + 16))(a6, a2, v11);
  v12 = type metadata accessor for CNContactStructs.Person(0);
  v13 = *(v12 + 144);
  v14 = type metadata accessor for EntityTriple(0);
  v15 = v14[5];
  v16 = sub_1C4EFEEF8();
  (*(*(v16 - 8) + 16))(a6 + v15, a2 + v13, v16);
  sub_1C44CC80C(a2 + *(v12 + 28), a6 + v14[9], type metadata accessor for Source);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  v18 = v17;
  v19 = a6 + v14[6];
  sub_1C4EFF888();
  v20 = a6 + v14[7];
  sub_1C4EFEC38();
  v21 = (a6 + v14[8]);
  *v21 = v9;
  v21[1] = v10;
  v22 = (a6 + v14[10]);
  *v22 = a3;
  v22[1] = a4;
  *(a6 + v14[11]) = v18;
  *(a6 + v14[12]) = a5;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4D7FD30(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000001C4FC81B0 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6D614E7473726966 && a2 == 0xE900000000000065;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000017 && 0x80000001C4FC81D0 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E65727275437369 && a2 == 0xED00007265735574;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000014 && 0x80000001C4FC81F0 == a2;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x66657250656D616ELL && a2 == 0xEA00000000007869;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000014 && 0x80000001C4FC8210 == a2;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x614E656C6464696DLL && a2 == 0xEA0000000000656DLL;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000014 && 0x80000001C4FC8230 == a2;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000014 && 0x80000001C4FC8250 == a2;
                              if (v19 || (sub_1C4F02938() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x66667553656D616ELL && a2 == 0xEA00000000007869;
                                if (v20 || (sub_1C4F02938() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000015 && 0x80000001C4FC7DA0 == a2;
                                  if (v21 || (sub_1C4F02938() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x776F6E4B6F736C61 && a2 == 0xEB0000000073416ELL;
                                    if (v22 || (sub_1C4F02938() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x646572705F6C7275 && a2 == 0xED00006574616369;
                                      if (v23 || (sub_1C4F02938() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 7107189 && a2 == 0xE300000000000000;
                                        if (v24 || (sub_1C4F02938() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000015 && 0x80000001C4FC8270 == a2;
                                          if (v25 || (sub_1C4F02938() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x6942664F65746164 && a2 == 0xEB00000000687472;
                                            if (v26 || (sub_1C4F02938() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD00000000000001CLL && 0x80000001C4FC8290 == a2;
                                              if (v27 || (sub_1C4F02938() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD000000000000012 && 0x80000001C4FC82B0 == a2;
                                                if (v28 || (sub_1C4F02938() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000015 && 0x80000001C4FC82D0 == a2;
                                                  if (v29 || (sub_1C4F02938() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0x73726576696E6E61 && a2 == 0xEB00000000797261;
                                                    if (v30 || (sub_1C4F02938() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD00000000000001CLL && 0x80000001C4FC82F0 == a2;
                                                      if (v31 || (sub_1C4F02938() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD000000000000012 && 0x80000001C4FC8310 == a2;
                                                        if (v32 || (sub_1C4F02938() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD00000000000001ELL && 0x80000001C4FC8330 == a2;
                                                          if (v33 || (sub_1C4F02938() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000014 && 0x80000001C4FC8350 == a2;
                                                            if (v34 || (sub_1C4F02938() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD000000000000025 && 0x80000001C4FC8370 == a2;
                                                              if (v35 || (sub_1C4F02938() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0xD00000000000001BLL && 0x80000001C4FC83A0 == a2;
                                                                if (v36 || (sub_1C4F02938() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0x72705F7365746164 && a2 == 0xEF65746163696465;
                                                                  if (v37 || (sub_1C4F02938() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0x7365746164 && a2 == 0xE500000000000000;
                                                                    if (v38 || (sub_1C4F02938() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0xD000000000000014 && 0x80000001C4FC83C0 == a2;
                                                                      if (v39 || (sub_1C4F02938() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0x697461707563636FLL && a2 == 0xEA00000000006E6FLL;
                                                                        if (v40 || (sub_1C4F02938() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0xD000000000000013 && 0x80000001C4FC83E0 == a2;
                                                                          if (v41 || (sub_1C4F02938() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0x6D614E6874726962 && a2 == 0xE900000000000065;
                                                                            if (v42 || (sub_1C4F02938() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0xD00000000000001CLL && 0x80000001C4FC8400 == a2;
                                                                              if (v43 || (sub_1C4F02938() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0xD000000000000012 && 0x80000001C4FC8420 == a2;
                                                                                if (v44 || (sub_1C4F02938() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0xD00000000000001ALL && 0x80000001C4FC8440 == a2;
                                                                                  if (v45 || (sub_1C4F02938() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v46 = a1 == 0xD000000000000010 && 0x80000001C4FC8460 == a2;
                                                                                    if (v46 || (sub_1C4F02938() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v47 = a1 == 0xD000000000000016 && 0x80000001C4FC8480 == a2;
                                                                                      if (v47 || (sub_1C4F02938() & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v48 = a1 == 0x6E6F6974616C6572 && a2 == 0xEC00000070696873;
                                                                                        if (v48 || (sub_1C4F02938() & 1) != 0)
                                                                                        {

                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v49 = a1 == 0xD000000000000014 && 0x80000001C4FC7F80 == a2;
                                                                                          if (v49 || (sub_1C4F02938() & 1) != 0)
                                                                                          {

                                                                                            return 44;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v50 = a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574;
                                                                                            if (v50 || (sub_1C4F02938() & 1) != 0)
                                                                                            {

                                                                                              return 45;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v51 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
                                                                                              if (v51 || (sub_1C4F02938() & 1) != 0)
                                                                                              {

                                                                                                return 46;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v52 = a1 == 1701667182 && a2 == 0xE400000000000000;
                                                                                                if (v52 || (sub_1C4F02938() & 1) != 0)
                                                                                                {

                                                                                                  return 47;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v53 = a1 == 0xD00000000000001BLL && 0x80000001C4FC84A0 == a2;
                                                                                                  if (v53 || (sub_1C4F02938() & 1) != 0)
                                                                                                  {

                                                                                                    return 48;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v54 = a1 == 0xD000000000000011 && 0x80000001C4FC84C0 == a2;
                                                                                                    if (v54 || (sub_1C4F02938() & 1) != 0)
                                                                                                    {

                                                                                                      return 49;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v55 = a1 == 0xD00000000000001CLL && 0x80000001C4FC84E0 == a2;
                                                                                                      if (v55 || (sub_1C4F02938() & 1) != 0)
                                                                                                      {

                                                                                                        return 50;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v56 = a1 == 0xD000000000000012 && 0x80000001C4FC8500 == a2;
                                                                                                        if (v56 || (sub_1C4F02938() & 1) != 0)
                                                                                                        {

                                                                                                          return 51;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v57 = a1 == 0xD00000000000001CLL && 0x80000001C4FC8520 == a2;
                                                                                                          if (v57 || (sub_1C4F02938() & 1) != 0)
                                                                                                          {

                                                                                                            return 52;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v58 = a1 == 0xD000000000000012 && 0x80000001C4FC8540 == a2;
                                                                                                            if (v58 || (sub_1C4F02938() & 1) != 0)
                                                                                                            {

                                                                                                              return 53;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v59 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
                                                                                                              if (v59 || (sub_1C4F02938() & 1) != 0)
                                                                                                              {

                                                                                                                return 54;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v60 = a1 == 0x7265796F6C706D65 && a2 == 0xE800000000000000;
                                                                                                                if (v60 || (sub_1C4F02938() & 1) != 0)
                                                                                                                {

                                                                                                                  return 55;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v61 = a1 == 0xD000000000000013 && 0x80000001C4FC8560 == a2;
                                                                                                                  if (v61 || (sub_1C4F02938() & 1) != 0)
                                                                                                                  {

                                                                                                                    return 56;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v62 = a1 == 0xD000000000000017 && 0x80000001C4FC8580 == a2;
                                                                                                                    if (v62 || (sub_1C4F02938() & 1) != 0)
                                                                                                                    {

                                                                                                                      return 57;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v63 = a1 == 0x636F737341736168 && a2 == 0xEE006E6F69746169;
                                                                                                                      if (v63 || (sub_1C4F02938() & 1) != 0)
                                                                                                                      {

                                                                                                                        return 58;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v64 = a1 == 0xD000000000000017 && 0x80000001C4FC85A0 == a2;
                                                                                                                        if (v64 || (sub_1C4F02938() & 1) != 0)
                                                                                                                        {

                                                                                                                          return 59;
                                                                                                                        }

                                                                                                                        else if (a1 == 0xD000000000000015 && 0x80000001C4FC85C0 == a2)
                                                                                                                        {

                                                                                                                          return 60;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v66 = sub_1C4F02938();

                                                                                                                          if (v66)
                                                                                                                          {
                                                                                                                            return 60;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            return 61;
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

uint64_t sub_1C4D80ED4(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      return 0x6C43797469746E65;
    case 3:
      return 0x656372756F73;
    case 4:
    case 36:
    case 56:
      return 0xD000000000000013;
    case 5:
      v3 = 0x4E7473726966;
      goto LABEL_28;
    case 6:
    case 57:
    case 59:
      return 0xD000000000000017;
    case 7:
      return 0x6E65727275437369;
    case 8:
      return 0xD000000000000014;
    case 9:
      return 0x66657250656D616ELL;
    case 10:
      return 0xD000000000000014;
    case 11:
      v4 = 0x656C6464696DLL;
      goto LABEL_31;
    case 12:
      return 0xD000000000000014;
    case 13:
      v4 = 0x796C696D6166;
LABEL_31:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0x66667553656D616ELL;
      break;
    case 16:
    case 20:
    case 24:
    case 60:
      result = 0xD000000000000015;
      break;
    case 17:
      result = 0x776F6E4B6F736C61;
      break;
    case 18:
      result = 0x646572705F6C7275;
      break;
    case 19:
      result = 7107189;
      break;
    case 21:
      result = 0x6942664F65746164;
      break;
    case 22:
    case 26:
    case 38:
    case 50:
    case 52:
      result = 0xD00000000000001CLL;
      break;
    case 23:
    case 27:
    case 39:
    case 51:
    case 53:
      result = 0xD000000000000012;
      break;
    case 25:
      result = 0x73726576696E6E61;
      break;
    case 28:
      result = 0xD00000000000001ELL;
      break;
    case 29:
      result = 0xD000000000000014;
      break;
    case 30:
      result = 0xD000000000000025;
      break;
    case 31:
    case 48:
      result = 0xD00000000000001BLL;
      break;
    case 32:
      result = 0x72705F7365746164;
      break;
    case 33:
      result = 0x7365746164;
      break;
    case 34:
      result = 0xD000000000000014;
      break;
    case 35:
      result = 0x697461707563636FLL;
      break;
    case 37:
      v3 = 0x4E6874726962;
LABEL_28:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6D61000000000000;
      break;
    case 40:
      result = 0xD00000000000001ALL;
      break;
    case 42:
      result = 0xD000000000000016;
      break;
    case 43:
      result = 0x6E6F6974616C6572;
      break;
    case 44:
      result = 0xD000000000000014;
      break;
    case 45:
      result = 0x69726F7661467369;
      break;
    case 46:
      result = 0x6572705F656D616ELL;
      break;
    case 47:
      result = 1701667182;
      break;
    case 49:
      result = 0xD000000000000011;
      break;
    case 54:
      result = 0x696669746E656469;
      break;
    case 55:
      result = 0x7265796F6C706D65;
      break;
    case 58:
      result = 0x636F737341736168;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1C4D81488()
{
  sub_1C43FE96C();
  v1 = sub_1C456902C(&qword_1EC0C6E18, &qword_1C4F71180);
  sub_1C43FCDF8(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C44058BC();
  sub_1C43FD870();
  sub_1C4D85450();
  sub_1C444B100();
  sub_1C4EFF0C8();
  sub_1C442E784();
  sub_1C44CD358(v7, v8);
  sub_1C4449458();
  sub_1C441865C();
  sub_1C4F027E8();
  if (!v0)
  {
    v9 = type metadata accessor for CNContactStructs.Person(0);
    v10 = v9[5];
    sub_1C443E4C4(1);
    sub_1C4EFEEF8();
    sub_1C4412A4C();
    sub_1C44CD358(v11, v12);
    sub_1C441DF58();
    sub_1C4F02778();
    v13 = v9[6];
    sub_1C443E4C4(2);
    sub_1C4EFD548();
    sub_1C4432F18();
    sub_1C44CD358(v14, v15);
    sub_1C4418670();
    sub_1C441865C();
    sub_1C4F027E8();
    v16 = v9[7];
    sub_1C443E4C4(3);
    type metadata accessor for Source();
    sub_1C440EB5C();
    sub_1C44CD358(v17, v18);
    sub_1C4418670();
    sub_1C441865C();
    sub_1C4F027E8();
    sub_1C440A39C(v9[8]);
    sub_1C441DF58();
    sub_1C4F027E8();
    sub_1C4401774(v9[9]);
    sub_1C441B1F0(5);
    sub_1C440A39C(v9[10]);
    sub_1C441DF58();
    sub_1C4F027E8();
    sub_1C4401774(v9[11]);
    sub_1C441B1F0(7);
    sub_1C440A39C(v9[12]);
    sub_1C441DF58();
    sub_1C4F027E8();
    sub_1C4401774(v9[13]);
    sub_1C441B1F0(9);
    sub_1C440A39C(v9[14]);
    sub_1C441DF58();
    sub_1C4F027E8();
    sub_1C4401774(v9[15]);
    sub_1C441B1F0(11);
    v19 = v9[16];
    sub_1C442C1EC();
    sub_1C4401774(v9[17]);
    sub_1C441B1F0(13);
    v20 = v9[18];
    sub_1C442C1EC();
    sub_1C4401774(v9[19]);
    sub_1C441B1F0(15);
    v21 = v9[20];
    sub_1C442C1EC();
    sub_1C4401774(v9[21]);
    sub_1C441B1F0(17);
    v22 = v9[22];
    sub_1C442C1EC();
    sub_1C4401774(v9[23]);
    sub_1C441B1F0(19);
    v23 = v9[24];
    sub_1C442C1EC();
    sub_1C4401774(v9[25]);
    sub_1C441B1F0(21);
    v24 = v9[26];
    sub_1C442C1EC();
    sub_1C4401774(v9[27]);
    sub_1C441B1F0(23);
    v25 = v9[28];
    sub_1C442C1EC();
    sub_1C442E728(v9[29]);
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C43FC6D0(&qword_1EDDFA578);
    sub_1C4D86E18();
    sub_1C4F02778();
    v26 = v9[30];
    sub_1C442C1EC();
    sub_1C442E728(v9[31]);
    sub_1C4D86E18();
    sub_1C4D871DC();
    v27 = v9[32];
    sub_1C442C1EC();
    sub_1C4401774(v9[33]);
    sub_1C441B1F0(29);
    v28 = v9[34];
    sub_1C442C1EC();
    sub_1C4401774(v9[35]);
    sub_1C441B1F0(31);
    v29 = v9[36];
    sub_1C442C1EC();
    sub_1C442E728(v9[37]);
    sub_1C4D86E18();
    sub_1C4D871DC();
    v30 = v9[38];
    sub_1C442C1EC();
    sub_1C4401774(v9[39]);
    sub_1C441B1F0(35);
    v31 = v9[40];
    sub_1C442C1EC();
    sub_1C4401774(v9[41]);
    sub_1C441B1F0(37);
    v35 = v9[42];
    sub_1C442C1EC();
    sub_1C4401774(v9[43]);
    sub_1C441B1F0(39);
    v36 = v9[44];
    sub_1C442C1EC();
    sub_1C4401774(v9[45]);
    sub_1C441B1F0(41);
    v37 = v9[46];
    sub_1C442C1EC();
    sub_1C4401774(v9[47]);
    sub_1C441B1F0(43);
    v38 = v9[48];
    sub_1C442C1EC();
    sub_1C4401774(v9[49]);
    sub_1C441B1F0(45);
    v39 = v9[50];
    sub_1C442C1EC();
    sub_1C4401774(v9[51]);
    sub_1C441B1F0(47);
    v40 = v9[52];
    sub_1C442C1EC();
    sub_1C4401774(v9[53]);
    sub_1C441B1F0(49);
    v41 = v9[54];
    sub_1C442C1EC();
    sub_1C4401774(v9[55]);
    sub_1C441B1F0(51);
    v42 = v9[56];
    sub_1C442C1EC();
    sub_1C4401774(v9[57]);
    sub_1C441B1F0(53);
    sub_1C442E728(v9[58]);
    sub_1C456902C(&qword_1EC0C6C40, &qword_1C4F70C88);
    sub_1C4D85828();
    sub_1C440F0C4();
    sub_1C441865C();
    sub_1C4F02778();
    v43 = v9[59];
    v44 = sub_1C443E4C4(55);
    type metadata accessor for CNContactStructs.EmploymentRelationshipType(v44);
    sub_1C44CD0BC();
    sub_1C44CD358(v45, v46);
    sub_1C4418670();
    sub_1C441865C();
    sub_1C4F02778();
    v47 = v9[60];
    v48 = sub_1C443E4C4(56);
    type metadata accessor for CNContactStructs.VisualIdentifierRelationshipType(v48);
    sub_1C4485AF8();
    sub_1C44CD358(v49, v50);
    sub_1C4418670();
    sub_1C441865C();
    sub_1C4F02778();
    sub_1C442E728(v9[61]);
    sub_1C456902C(&qword_1EC0C6C48, &qword_1C4F70C90);
    sub_1C4D858DC();
    sub_1C440F0C4();
    sub_1C441865C();
    sub_1C4F02778();
    sub_1C442E728(v9[62]);
    sub_1C456902C(&qword_1EC0C6C50, &qword_1C4F70C98);
    sub_1C4D85990();
    sub_1C440F0C4();
    sub_1C441865C();
    sub_1C4F02778();
    sub_1C442E728(v9[63]);
    sub_1C456902C(&qword_1EC0C6C58, &qword_1C4F70CA0);
    sub_1C4D85A44();
    sub_1C440F0C4();
    sub_1C441865C();
    sub_1C4F02778();
    sub_1C442E728(v9[64]);
    sub_1C456902C(&qword_1EC0C6C60, &qword_1C4F70CA8);
    sub_1C4D85AF8();
    sub_1C440F0C4();
    sub_1C441865C();
    sub_1C4F02778();
  }

  v32 = *(v3 + 8);
  v33 = sub_1C43FE99C();
  v34(v33);
  sub_1C4402144();
  sub_1C43FBC80();
}

void sub_1C4D81D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v24;
  a20 = v25;
  v295 = v21;
  v27 = v26;
  v257 = v28;
  v29 = sub_1C456902C(&qword_1EC0C6C38, &qword_1C4F70B38);
  sub_1C43FBD18(v29);
  v31 = *(v30 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBC74();
  v256 = v33;
  v34 = sub_1C456902C(&qword_1EC0BAD38, &unk_1C4F70B40);
  sub_1C43FBD18(v34);
  v36 = *(v35 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBC74();
  sub_1C43FD2C8(v38);
  v39 = sub_1C4EFEEF8();
  v40 = sub_1C4403200(v39);
  v298 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v62);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v64);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v65);
  sub_1C4402024();
  MEMORY[0x1EEE9AC00](v66);
  sub_1C43FBF38();
  v288 = v67;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v68);
  sub_1C43FD230();
  v290 = v69;
  v70 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v70);
  v72 = *(v71 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v73);
  sub_1C43FBC74();
  v291 = v74;
  sub_1C43FBE44();
  v261 = sub_1C4EFF0C8();
  v75 = sub_1C43FCDF8(v261);
  v260 = v76;
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v75);
  sub_1C43FBCC4();
  sub_1C4422BD8();
  v259 = sub_1C456902C(&qword_1EC0C6DE0, &qword_1C4F71178);
  sub_1C43FCDF8(v259);
  v258 = v79;
  v81 = *(v80 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v82);
  v84 = v255 - v83;
  v85 = type metadata accessor for CNContactStructs.Person(0);
  v86 = sub_1C43FBCE0(v85);
  v88 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v86);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v299 = *(v89 + 20);
  v300 = v20;
  sub_1C4401E28();
  sub_1C440BAA8(v90, v91, v92, v93);
  v272 = v22 + v85[6];
  sub_1C4EFD4C8();
  v94 = v85[7];
  if (qword_1EDDFED28 != -1)
  {
    sub_1C44133AC();
    swift_once();
  }

  v95 = type metadata accessor for Source();
  sub_1C442B738(v95, &unk_1EDDFD088);
  sub_1C4408374();
  v273 = v94;
  sub_1C44CC80C(v96, v22 + v94, v97);
  v297 = v85[8];
  sub_1C4EFEE68();
  v296 = v85[10];
  sub_1C4EFE5D8();
  v294 = v85[12];
  sub_1C4EFE338();
  v293 = v85[14];
  sub_1C4EFE328();
  v289 = v85[16];
  sub_1C4EFE2C8();
  v287 = v85[18];
  sub_1C4EFE348();
  sub_1C44AE10C(v85[20]);
  sub_1C4EFE3A8();
  sub_1C44AE10C(v85[22]);
  sub_1C4EFEBD8();
  sub_1C44AE10C(v85[24]);
  sub_1C4EFE3D8();
  sub_1C44AE10C(v85[26]);
  sub_1C4EFE908();
  sub_1C44AE10C(v85[28]);
  sub_1C4EFE3B8();
  sub_1C44AE10C(v85[30]);
  sub_1C4EFE8F8();
  sub_1C44AE10C(v85[32]);
  sub_1C4EFE9D8();
  sub_1C44AE10C(v85[34]);
  sub_1C4EFEB18();
  sub_1C44AE10C(v85[36]);
  sub_1C4EFEC28();
  sub_1C44AE10C(v85[38]);
  sub_1C4EFE358();
  sub_1C44AE10C(v85[40]);
  sub_1C4EFEE38();
  sub_1C44AE10C(v85[42]);
  sub_1C4EFE948();
  sub_1C44AE10C(v85[44]);
  sub_1C4EFE778();
  sub_1C44AE10C(v85[46]);
  sub_1C4EFE588();
  sub_1C44AE10C(v85[48]);
  sub_1C4EFE318();
  sub_1C44AE10C(v85[50]);
  sub_1C4EFEBF8();
  v281 = v85[52];
  sub_1C4EFE858();
  v282 = v85[54];
  sub_1C4EFE938();
  v283 = v85[56];
  sub_1C4EFE928();
  v98 = v85[59];
  v99 = type metadata accessor for CNContactStructs.EmploymentRelationshipType(0);
  v285 = v98;
  sub_1C43FCF64();
  sub_1C440BAA8(v100, v101, v102, v99);
  v103 = v85[60];
  v104 = type metadata accessor for CNContactStructs.VisualIdentifierRelationshipType(0);
  v284 = v103;
  sub_1C4401E28();
  sub_1C440BAA8(v105, v106, v107, v108);
  v109 = v27;
  v111 = v27[3];
  v110 = v27[4];
  v292 = v109;
  sub_1C4417F50(v109, v111);
  sub_1C4D85450();
  v112 = v295;
  sub_1C4F02BC8();
  if (v112)
  {
    v295 = v112;
    v118 = 0;
    sub_1C441ABB0();
    sub_1C43FE28C(v119);
    sub_1C443E4A0();
    *(v120 - 256) = 0;
    v267 = 0;
  }

  else
  {
    v255[5] = v99;
    v255[4] = v104;
    LOBYTE(a10) = 0;
    sub_1C442E784();
    sub_1C44CD358(v113, v114);
    sub_1C4449458();
    v115 = v261;
    v116 = v84;
    v117 = v259;
    sub_1C4F026C8();
    (*(v260 + 32))(v22, v23, v115);
    LOBYTE(a10) = 1;
    sub_1C4412A4C();
    v152 = sub_1C44CD358(v150, v151);
    v153 = v291;
    v154 = v300;
    sub_1C4466E08();
    sub_1C4F02658();
    sub_1C444088C(v153, v22 + v299, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FE79C(4);
    v155 = v290;
    sub_1C4466E08();
    sub_1C4F026C8();
    v156 = v152;
    v157 = v117;
    v158 = v292;
    v255[3] = v156;
    v159 = v155;
    v160 = v298 + 40;
    v161 = *(v298 + 40);
    v161(v22 + v297, v159, v154);
    sub_1C4402038(5);
    v162 = sub_1C4F02618();
    v255[1] = v161;
    v255[2] = v160;
    v163 = (v22 + v85[9]);
    *v163 = v162;
    v163[1] = v164;
    v267 = v164;
    sub_1C43FE79C(6);
    sub_1C4F026C8();
    sub_1C441BF54();
    v165();
    sub_1C4402038(7);
    v166 = sub_1C4F02618();
    v167 = (v22 + v85[11]);
    *v167 = v166;
    v167[1] = v168;
    v266 = v168;
    sub_1C43FE79C(8);
    sub_1C4F026C8();
    sub_1C441BF54();
    v169();
    sub_1C4402038(9);
    v170 = sub_1C4F02618();
    v295 = 0;
    v172 = (v22 + v85[13]);
    *v172 = v170;
    v172[1] = v171;
    v265 = v171;
    sub_1C43FE79C(10);
    v173 = v295;
    sub_1C4F026C8();
    v295 = v173;
    if (v173)
    {
      sub_1C4435D80();
      v174(v116, v157);
      sub_1C441ABB0();
      sub_1C43FE28C(v175);
      v288 = 0;
      v290 = 0;
      v291 = 0;
      v118 = 1;
      goto LABEL_7;
    }

    sub_1C4401998(v293);
    sub_1C441BF54();
    v176();
    sub_1C4402038(11);
    v177 = v295;
    v178 = sub_1C4F02618();
    v291 = v179;
    v295 = v177;
    if (!v177)
    {
      v183 = (v22 + v85[15]);
      v184 = v291;
      *v183 = v178;
      v183[1] = v184;
      sub_1C43FE79C(12);
      sub_1C440DC10(&v290);
      v295 = 0;
      sub_1C43FF9A0(&v290);
      v185();
      v186 = sub_1C440C178(13);
      v290 = v187;
      v295 = 0;
      v188 = (v22 + v85[17]);
      *v188 = v186;
      v188[1] = v187;
      sub_1C43FE79C(14);
      sub_1C440DC10(&v289);
      v295 = 0;
      sub_1C43FF9A0(&v289);
      v189();
      v190 = sub_1C440C178(15);
      v288 = v191;
      v295 = 0;
      v192 = (v22 + v85[19]);
      *v192 = v190;
      v192[1] = v191;
      sub_1C43FE79C(16);
      sub_1C440DC10(&v288);
      v295 = 0;
      sub_1C446BD74(&v295);
      sub_1C43FF9A0(&v288);
      v193();
      v194 = sub_1C440C178(17);
      v286 = v195;
      v295 = 0;
      v196 = (v22 + v85[21]);
      *v196 = v194;
      v196[1] = v195;
      sub_1C43FE79C(18);
      sub_1C440DC10(&v268);
      v295 = 0;
      sub_1C446BD74(&v296);
      sub_1C43FF9A0(&v268);
      v197();
      sub_1C440C178(19);
      sub_1C4D86E34(v198, &v291);
      sub_1C444C0A4(v199, (v22 + v85[23]));
      sub_1C43FE79C(20);
      sub_1C440DC10(&v269);
      v295 = 0;
      sub_1C446BD74(&v297);
      sub_1C43FF9A0(&v269);
      v200();
      sub_1C440C178(21);
      sub_1C4D86E34(v201, &v290);
      sub_1C444C0A4(v202, (v22 + v85[25]));
      sub_1C43FE79C(22);
      sub_1C440DC10(&v270);
      v295 = 0;
      sub_1C446BD74(&v298);
      sub_1C43FF9A0(&v270);
      v203();
      sub_1C440C178(23);
      sub_1C4D86E34(v204, &v289);
      sub_1C444C0A4(v205, (v22 + v85[27]));
      sub_1C43FE79C(24);
      sub_1C440DC10(&v271);
      v295 = 0;
      sub_1C446BD74(&v300);
      sub_1C43FF9A0(&v271);
      v206();
      sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      HIBYTE(v301) = 25;
      sub_1C440EE48(&qword_1EDDFEA58);
      sub_1C44A83E0();
      sub_1C4D86E28();
      sub_1C447CE90();
      sub_1C4F02658();
      v295 = 0;
      v207 = v85[29];
      v264 = a10;
      *(v22 + v207) = a10;
      sub_1C43FE79C(26);
      sub_1C440DC10(&v287);
      v295 = 0;
      sub_1C446BD74(&v302);
      sub_1C43FF9A0(&v287);
      v208();
      HIBYTE(v301) = 27;
      sub_1C44A83E0();
      sub_1C4D86E28();
      sub_1C447CE90();
      sub_1C4F02658();
      v295 = 0;
      v209 = v85[31];
      v263 = a10;
      *(v22 + v209) = a10;
      sub_1C43FE79C(28);
      sub_1C440DC10(&v286);
      v295 = 0;
      sub_1C446BD74(&a9);
      sub_1C43FF9A0(&v286);
      v210();
      sub_1C440C178(29);
      sub_1C4D86E34(v211, &v286);
      sub_1C444C0A4(v212, (v22 + v85[33]));
      sub_1C43FE79C(30);
      sub_1C440DC10(&v285);
      v295 = 0;
      sub_1C446BD74(&a10);
      sub_1C43FF9A0(&v285);
      v213();
      sub_1C440C178(31);
      sub_1C4D86E34(v214, &v285);
      sub_1C444C0A4(v215, (v22 + v85[35]));
      sub_1C43FE79C(32);
      sub_1C440DC10(&v284);
      v295 = 0;
      sub_1C446BD74(&a11);
      sub_1C43FF9A0(&v284);
      v216();
      HIBYTE(v301) = 33;
      sub_1C44A83E0();
      sub_1C4D86E28();
      sub_1C447CE90();
      sub_1C4F02658();
      v295 = 0;
      v217 = v85[37];
      v262 = a10;
      *(v22 + v217) = a10;
      sub_1C43FE79C(34);
      sub_1C440DC10(&v283);
      v295 = 0;
      sub_1C446BD74(&a12);
      sub_1C43FF9A0(&v283);
      v218();
      sub_1C440C178(35);
      sub_1C4D86E34(v219, &v283);
      sub_1C444C0A4(v220, (v22 + v85[39]));
      sub_1C43FE79C(36);
      sub_1C440DC10(&v282);
      v295 = 0;
      sub_1C446BD74(&a13);
      sub_1C43FF9A0(&v282);
      v221();
      sub_1C440C178(37);
      sub_1C4D86E34(v222, &v282);
      sub_1C444C0A4(v223, (v22 + v85[41]));
      sub_1C43FE79C(38);
      sub_1C440DC10(&v281);
      v295 = 0;
      sub_1C446BD74(&a14);
      sub_1C43FF9A0(&v281);
      v224();
      sub_1C440C178(39);
      sub_1C4D86E34(v225, &v281);
      sub_1C444C0A4(v226, (v22 + v85[43]));
      sub_1C43FE79C(40);
      sub_1C440DC10(&v280);
      v295 = 0;
      sub_1C446BD74(&a15);
      sub_1C43FF9A0(&v280);
      v227();
      sub_1C440C178(41);
      sub_1C4D86E34(v228, &v280);
      sub_1C444C0A4(v229, (v22 + v85[45]));
      sub_1C43FE79C(42);
      sub_1C440DC10(&v279);
      v295 = 0;
      sub_1C446BD74(&a16);
      sub_1C43FF9A0(&v279);
      v230();
      sub_1C440C178(43);
      sub_1C4D86E34(v231, &v279);
      sub_1C444C0A4(v232, (v22 + v85[47]));
      sub_1C43FE79C(44);
      sub_1C440DC10(&v278);
      v295 = 0;
      sub_1C446BD74(&a17);
      sub_1C43FF9A0(&v278);
      v233();
      sub_1C440C178(45);
      sub_1C4D86E34(v234, &v278);
      sub_1C444C0A4(v235, (v22 + v85[49]));
      sub_1C43FE79C(46);
      sub_1C440DC10(&v277);
      v295 = 0;
      sub_1C446BD74(&a18);
      sub_1C43FF9A0(&v277);
      v236();
      sub_1C440C178(47);
      sub_1C4D86E34(v237, &v277);
      sub_1C444C0A4(v238, (v22 + v85[51]));
      sub_1C43FE79C(48);
      sub_1C440DC10(&v276);
      v295 = 0;
      sub_1C43FF9A0(&v276);
      v239();
      sub_1C440C178(49);
      sub_1C4D86E34(v240, &v276);
      sub_1C444C0A4(v241, (v22 + v85[53]));
      sub_1C43FE79C(50);
      sub_1C440DC10(&v275);
      v295 = 0;
      sub_1C43FF9A0(&v275);
      v242();
      sub_1C440C178(51);
      sub_1C4D86E34(v243, &v275);
      sub_1C444C0A4(v244, (v22 + v85[55]));
      sub_1C43FE79C(52);
      sub_1C440DC10(&v274);
      v295 = 0;
      sub_1C43FF9A0(&v274);
      v245();
      sub_1C440C178(53);
      sub_1C4D86E34(v246, &v274);
      sub_1C444C0A4(v247, (v22 + v85[57]));
      sub_1C456902C(&qword_1EC0C6C40, &qword_1C4F70C88);
      HIBYTE(v301) = 54;
      sub_1C4D854A4();
      sub_1C4423DC8();
      v295 = 0;
      *(v22 + v85[58]) = a10;
      LOBYTE(a10) = 55;
      sub_1C44CD0BC();
      sub_1C44CD358(v248, v249);
      sub_1C4449458();
      sub_1C4D86E28();
      sub_1C447CE90();
      sub_1C4F02658();
      v295 = 0;
      sub_1C444088C(v255[10], v22 + v285, &qword_1EC0BAD38, &unk_1C4F70B40);
      LOBYTE(a10) = 56;
      sub_1C4485AF8();
      sub_1C44CD358(v250, v251);
      sub_1C4449458();
      sub_1C4D86E28();
      sub_1C447CE90();
      sub_1C4F02658();
      v295 = 0;
      sub_1C444088C(v256, v22 + v284, &qword_1EC0C6C38, &qword_1C4F70B38);
      sub_1C456902C(&qword_1EC0C6C48, &qword_1C4F70C90);
      HIBYTE(v301) = 57;
      sub_1C4D85558();
      sub_1C4423DC8();
      v295 = 0;
      *(v22 + v85[61]) = a10;
      sub_1C456902C(&qword_1EC0C6C50, &qword_1C4F70C98);
      HIBYTE(v301) = 58;
      sub_1C4D8560C();
      sub_1C4423DC8();
      v295 = 0;
      *(v22 + v85[62]) = a10;
      sub_1C456902C(&qword_1EC0C6C58, &qword_1C4F70CA0);
      HIBYTE(v301) = 59;
      sub_1C4D856C0();
      sub_1C4423DC8();
      v295 = 0;
      *(v22 + v85[63]) = a10;
      sub_1C456902C(&qword_1EC0C6C60, &qword_1C4F70CA8);
      HIBYTE(v301) = 60;
      sub_1C4D85774();
      sub_1C4423DC8();
      v295 = 0;
      v252 = v85[64];
      v253 = sub_1C440FFB8();
      v254(v253);
      *(v22 + v252) = a10;
      sub_1C44CC80C(v22, v257, type metadata accessor for CNContactStructs.Person);
      sub_1C440962C(v292);
      sub_1C44D474C(v22, type metadata accessor for CNContactStructs.Person);
      goto LABEL_10;
    }

    v180 = sub_1C440FFB8();
    v181(v180);
    sub_1C441ABB0();
    sub_1C43FE28C(v182);
    v288 = 0;
    v290 = 0;
    v291 = 0;
    v118 = 1;
  }

  v158 = v292;
LABEL_7:
  sub_1C440962C(v158);
  if (v118)
  {
    (*(v260 + 8))(v22, v261);
  }

  sub_1C4420C3C(v22 + v299, &qword_1EC0B9A08, &unk_1C4F107B0);
  v121 = sub_1C4EFD548();
  sub_1C43FBCE0(v121);
  (*(v122 + 8))(v272);
  sub_1C440636C();
  v123 = sub_1C446BD74(&v301);
  sub_1C44D474C(v123, v124);
  v125 = *(v298 + 8);
  v125(v22 + v297, v300);

  v126 = sub_1C4401998(v296);
  (v125)(v126);

  v127 = sub_1C4401998(v294);
  (v125)(v127);

  v128 = sub_1C4401998(v293);
  (v125)(v128);

  v129 = sub_1C4401998(v289);
  (v125)(v129);

  v130 = sub_1C4401998(v287);
  (v125)(v130);

  v131 = sub_1C441B634(&v295);
  (v125)(v131);

  v132 = sub_1C441B634(&v296);
  (v125)(v132);

  v133 = sub_1C441B634(&v297);
  (v125)(v133);

  v134 = sub_1C441B634(&v298);
  (v125)(v134);

  v135 = sub_1C441B634(&v300);
  (v125)(v135);

  v136 = sub_1C441B634(&v302);
  (v125)(v136);

  v137 = sub_1C441B634(&a9);
  (v125)(v137);

  v138 = sub_1C441B634(&a10);
  (v125)(v138);

  v139 = sub_1C441B634(&a11);
  (v125)(v139);

  v140 = sub_1C441B634(&a12);
  (v125)(v140);

  v141 = sub_1C441B634(&a13);
  (v125)(v141);

  v142 = sub_1C441B634(&a14);
  (v125)(v142);

  v143 = sub_1C441B634(&a15);
  (v125)(v143);

  v144 = sub_1C441B634(&a16);
  (v125)(v144);

  v145 = sub_1C441B634(&a17);
  (v125)(v145);

  v146 = sub_1C441B634(&a18);
  (v125)(v146);

  v147 = sub_1C4401998(v281);
  (v125)(v147);

  v148 = sub_1C4401998(v282);
  (v125)(v148);

  v149 = sub_1C4401998(v283);
  (v125)(v149);

  sub_1C4420C3C(v22 + v285, &qword_1EC0BAD38, &unk_1C4F70B40);
  sub_1C4420C3C(v22 + v284, &qword_1EC0C6C38, &qword_1C4F70B38);

LABEL_10:
  sub_1C43FBC80();
}

uint64_t sub_1C4D83B68(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4D83BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D7FD30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D83BE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4D80ECC();
  *a1 = result;
  return result;
}

uint64_t sub_1C4D83C0C(uint64_t a1)
{
  v2 = sub_1C4D85450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D83C48(uint64_t a1)
{
  v2 = sub_1C4D85450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4D83DB8()
{
  sub_1C4EFF0C8();
  if (v0 <= 0x3F)
  {
    sub_1C4D83EBC(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
    if (v1 <= 0x3F)
    {
      sub_1C4EFD548();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Source();
        if (v3 <= 0x3F)
        {
          sub_1C4D83EBC(319, qword_1EDDF6460, type metadata accessor for CNContactStructs.AddressRelationshipType);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C4D83EBC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C4F01F48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C4D83F10()
{
  sub_1C4D83EBC(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v1 = type metadata accessor for Source();
      if (v4 <= 0x3F)
      {
        v1 = sub_1C4EFEEF8();
        if (v5 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v7 > 0x3F)
          {
            return v6;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1C4D8404C()
{
  sub_1C4D83EBC(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v1 = type metadata accessor for Source();
      if (v4 <= 0x3F)
      {
        v1 = sub_1C4EFEEF8();
        if (v5 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v7 > 0x3F)
          {
            return v6;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1C4D84190()
{
  sub_1C4D83EBC(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v1 = type metadata accessor for Source();
      if (v4 <= 0x3F)
      {
        v1 = sub_1C4EFEEF8();
        if (v5 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v7 > 0x3F)
          {
            return v6;
          }

          else
          {
            sub_1C487B8D4(319, &qword_1EDDFEA50, &unk_1EC0B9620, &unk_1C4F0E870);
            if (v9 > 0x3F)
            {
              return v8;
            }

            else
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1C4D842F4()
{
  sub_1C4D83EBC(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v1 = type metadata accessor for Source();
      if (v4 <= 0x3F)
      {
        v1 = sub_1C4EFEEF8();
        if (v5 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v7 > 0x3F)
          {
            return v6;
          }

          else
          {
            sub_1C487B8D4(319, &qword_1EDDFEA50, &unk_1EC0B9620, &unk_1C4F0E870);
            if (v9 > 0x3F)
            {
              return v8;
            }

            else
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1C4D844F0()
{
  sub_1C4D83EBC(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v1 = type metadata accessor for Source();
      if (v4 <= 0x3F)
      {
        v1 = sub_1C4EFEEF8();
        if (v5 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v7 > 0x3F)
          {
            return v6;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1C4D84638()
{
  v0 = sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    sub_1C4D83EBC(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      v0 = sub_1C4EFD548();
      if (v4 <= 0x3F)
      {
        v0 = type metadata accessor for Source();
        if (v5 <= 0x3F)
        {
          v0 = sub_1C4EFEEF8();
          if (v6 <= 0x3F)
          {
            sub_1C4700EB8();
            if (v8 > 0x3F)
            {
              return v7;
            }

            else
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_1C4D84784(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  sub_1C4D83EBC(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  if (v7 <= 0x3F)
  {
    sub_1C4EFD548();
    if (v8 <= 0x3F)
    {
      type metadata accessor for Source();
      if (v9 <= 0x3F)
      {
        sub_1C4EFEEF8();
        if (v10 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v11 <= 0x3F)
          {
            sub_1C4D83EBC(319, a4, a5);
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

uint64_t sub_1C4D848D4()
{
  v0 = sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    sub_1C4D83EBC(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      v0 = sub_1C4EFD548();
      if (v4 <= 0x3F)
      {
        v0 = type metadata accessor for Source();
        if (v5 <= 0x3F)
        {
          v0 = sub_1C4EFEEF8();
          if (v6 <= 0x3F)
          {
            sub_1C4700EB8();
            if (v8 > 0x3F)
            {
              return v7;
            }

            else
            {
              sub_1C487B8D4(319, &qword_1EDDFEA50, &unk_1EC0B9620, &unk_1C4F0E870);
              if (v10 > 0x3F)
              {
                return v9;
              }

              else
              {
                sub_1C487B8D4(319, &qword_1EDDF0670, &qword_1EC0C6C40, &qword_1C4F70C88);
                v0 = v11;
                if (v12 <= 0x3F)
                {
                  sub_1C4D83EBC(319, qword_1EDDF6318, type metadata accessor for CNContactStructs.EmploymentRelationshipType);
                  v0 = v13;
                  if (v14 <= 0x3F)
                  {
                    sub_1C4D83EBC(319, qword_1EDDF6028, type metadata accessor for CNContactStructs.VisualIdentifierRelationshipType);
                    v0 = v15;
                    if (v16 <= 0x3F)
                    {
                      sub_1C487B8D4(319, &qword_1EDDF0668, &qword_1EC0C6C48, &qword_1C4F70C90);
                      v0 = v17;
                      if (v18 <= 0x3F)
                      {
                        sub_1C487B8D4(319, &qword_1EDDF0660, &qword_1EC0C6C50, &qword_1C4F70C98);
                        v0 = v19;
                        if (v20 <= 0x3F)
                        {
                          sub_1C487B8D4(319, &qword_1EDDF0678, &qword_1EC0C6C58, &qword_1C4F70CA0);
                          v0 = v21;
                          if (v22 <= 0x3F)
                          {
                            sub_1C487B8D4(319, &qword_1EDDF0680, &qword_1EC0C6C60, &qword_1C4F70CA8);
                            v0 = v23;
                            if (v24 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
                              return 0;
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

  return v0;
}

uint64_t sub_1C4D84C34(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD358(&qword_1EC0C6C68, type metadata accessor for CNContactStructs.Person);
  result = sub_1C44CD358(&qword_1EC0C6C70, type metadata accessor for CNContactStructs.Person);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4D84CB8(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD358(&qword_1EC0C6C78, type metadata accessor for CNContactStructs.EmploymentRelationshipType);
  result = sub_1C44CD358(&qword_1EC0C6C80, type metadata accessor for CNContactStructs.EmploymentRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4D84D3C(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD358(&qword_1EC0C6C88, type metadata accessor for CNContactStructs.Organization);
  result = sub_1C44CD358(&qword_1EC0C6C90, type metadata accessor for CNContactStructs.Organization);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4D84DC0(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD358(&qword_1EC0C6C98, type metadata accessor for CNContactStructs.IdentifierRelationshipType);
  result = sub_1C44CD358(&qword_1EC0C6CA0, type metadata accessor for CNContactStructs.IdentifierRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4D84E44(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD358(&qword_1EC0C6CA8, type metadata accessor for CNContactStructs.LocationRelationshipType);
  result = sub_1C44CD358(&qword_1EC0C6CB0, type metadata accessor for CNContactStructs.LocationRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4D84EC8(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD358(&qword_1EC0C6CB8, type metadata accessor for CNContactStructs.AddressRelationshipType);
  result = sub_1C44CD358(&qword_1EC0C6CC0, type metadata accessor for CNContactStructs.AddressRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4D84F4C(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD358(&qword_1EC0C6CC8, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
  result = sub_1C44CD358(&qword_1EC0C6CD0, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4D84FD0(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD358(&qword_1EC0C6CD8, type metadata accessor for CNContactStructs.EntityAliasRelationshipType);
  result = sub_1C44CD358(&qword_1EC0C6CE0, type metadata accessor for CNContactStructs.EntityAliasRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4D85054(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD358(&qword_1EC0C6CE8, type metadata accessor for CNContactStructs.VisualIdentifierRelationshipType);
  result = sub_1C44CD358(&qword_1EC0C6CF0, type metadata accessor for CNContactStructs.VisualIdentifierRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4D850D8(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD358(&qword_1EC0C6CF8, type metadata accessor for CNContactStructs.Place);
  result = sub_1C44CD358(&qword_1EC0C6D00, type metadata accessor for CNContactStructs.Place);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4D8515C()
{
  result = qword_1EC0C6D10;
  if (!qword_1EC0C6D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6D10);
  }

  return result;
}

unint64_t sub_1C4D851B0()
{
  result = qword_1EC0C6D28;
  if (!qword_1EC0C6D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6D28);
  }

  return result;
}

unint64_t sub_1C4D85204()
{
  result = qword_1EC0C6D40;
  if (!qword_1EC0C6D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6D40);
  }

  return result;
}

unint64_t sub_1C4D85258()
{
  result = qword_1EC0C6D58;
  if (!qword_1EC0C6D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6D58);
  }

  return result;
}

unint64_t sub_1C4D852AC()
{
  result = qword_1EC0C6D70;
  if (!qword_1EC0C6D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6D70);
  }

  return result;
}

unint64_t sub_1C4D85300()
{
  result = qword_1EC0C6D88;
  if (!qword_1EC0C6D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6D88);
  }

  return result;
}

unint64_t sub_1C4D85354()
{
  result = qword_1EC0C6DA0;
  if (!qword_1EC0C6DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6DA0);
  }

  return result;
}

unint64_t sub_1C4D853A8()
{
  result = qword_1EC0C6DB8;
  if (!qword_1EC0C6DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6DB8);
  }

  return result;
}

unint64_t sub_1C4D853FC()
{
  result = qword_1EC0C6DD0;
  if (!qword_1EC0C6DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6DD0);
  }

  return result;
}

unint64_t sub_1C4D85450()
{
  result = qword_1EC0C6DE8;
  if (!qword_1EC0C6DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6DE8);
  }

  return result;
}

unint64_t sub_1C4D854A4()
{
  result = qword_1EC0C6DF0;
  if (!qword_1EC0C6DF0)
  {
    sub_1C4572308(&qword_1EC0C6C40, &qword_1C4F70C88);
    sub_1C44CD358(&qword_1EC0C6C98, type metadata accessor for CNContactStructs.IdentifierRelationshipType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6DF0);
  }

  return result;
}

unint64_t sub_1C4D85558()
{
  result = qword_1EC0C6DF8;
  if (!qword_1EC0C6DF8)
  {
    sub_1C4572308(&qword_1EC0C6C48, &qword_1C4F70C90);
    sub_1C44CD358(&qword_1EC0C6CD8, type metadata accessor for CNContactStructs.EntityAliasRelationshipType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6DF8);
  }

  return result;
}

unint64_t sub_1C4D8560C()
{
  result = qword_1EC0C6E00;
  if (!qword_1EC0C6E00)
  {
    sub_1C4572308(&qword_1EC0C6C50, &qword_1C4F70C98);
    sub_1C44CD358(&qword_1EC0C6CC8, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6E00);
  }

  return result;
}

unint64_t sub_1C4D856C0()
{
  result = qword_1EC0C6E08;
  if (!qword_1EC0C6E08)
  {
    sub_1C4572308(&qword_1EC0C6C58, &qword_1C4F70CA0);
    sub_1C44CD358(&qword_1EC0C6CA8, type metadata accessor for CNContactStructs.LocationRelationshipType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6E08);
  }

  return result;
}

unint64_t sub_1C4D85774()
{
  result = qword_1EC0C6E10;
  if (!qword_1EC0C6E10)
  {
    sub_1C4572308(&qword_1EC0C6C60, &qword_1C4F70CA8);
    sub_1C44CD358(&qword_1EC0C6CB8, type metadata accessor for CNContactStructs.AddressRelationshipType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6E10);
  }

  return result;
}

unint64_t sub_1C4D85828()
{
  result = qword_1EC0C6E20;
  if (!qword_1EC0C6E20)
  {
    sub_1C4572308(&qword_1EC0C6C40, &qword_1C4F70C88);
    sub_1C44CD358(&qword_1EC0C6CA0, type metadata accessor for CNContactStructs.IdentifierRelationshipType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6E20);
  }

  return result;
}

unint64_t sub_1C4D858DC()
{
  result = qword_1EC0C6E28;
  if (!qword_1EC0C6E28)
  {
    sub_1C4572308(&qword_1EC0C6C48, &qword_1C4F70C90);
    sub_1C44CD358(&qword_1EC0C6CE0, type metadata accessor for CNContactStructs.EntityAliasRelationshipType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6E28);
  }

  return result;
}

unint64_t sub_1C4D85990()
{
  result = qword_1EC0C6E30;
  if (!qword_1EC0C6E30)
  {
    sub_1C4572308(&qword_1EC0C6C50, &qword_1C4F70C98);
    sub_1C44CD358(&qword_1EC0C6CD0, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6E30);
  }

  return result;
}

unint64_t sub_1C4D85A44()
{
  result = qword_1EC0C6E38;
  if (!qword_1EC0C6E38)
  {
    sub_1C4572308(&qword_1EC0C6C58, &qword_1C4F70CA0);
    sub_1C44CD358(&qword_1EC0C6CB0, type metadata accessor for CNContactStructs.LocationRelationshipType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6E38);
  }

  return result;
}

unint64_t sub_1C4D85AF8()
{
  result = qword_1EC0C6E40;
  if (!qword_1EC0C6E40)
  {
    sub_1C4572308(&qword_1EC0C6C60, &qword_1C4F70CA8);
    sub_1C44CD358(&qword_1EC0C6CC0, type metadata accessor for CNContactStructs.AddressRelationshipType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6E40);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CNContactStructs.Person.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xC4)
  {
    if (a2 + 60 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 60) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 61;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3D;
  v5 = v6 - 61;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CNContactStructs.Person.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 60 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 60) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xC4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xC3)
  {
    v6 = ((a2 - 196) >> 8) + 1;
    *result = a2 + 60;
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
          *result = a2 + 60;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CNContactStructs.Organization.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C4D85E0C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CNContactStructs.AddressRelationshipType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE4)
  {
    if (a2 + 28 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 28) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 29;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v5 = v6 - 29;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CNContactStructs.AddressRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE3)
  {
    v6 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
          *result = a2 + 28;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C4D8604C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CNContactStructs.EntityAliasRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for CNContactStructs.VisualIdentifierRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CNContactStructs.Place.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4D863C0()
{
  result = qword_1EC0C6E48;
  if (!qword_1EC0C6E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6E48);
  }

  return result;
}

unint64_t sub_1C4D86418()
{
  result = qword_1EC0C6E50;
  if (!qword_1EC0C6E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6E50);
  }

  return result;
}

unint64_t sub_1C4D86470()
{
  result = qword_1EC0C6E58;
  if (!qword_1EC0C6E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6E58);
  }

  return result;
}

unint64_t sub_1C4D864C8()
{
  result = qword_1EC0C6E60;
  if (!qword_1EC0C6E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6E60);
  }

  return result;
}

unint64_t sub_1C4D86520()
{
  result = qword_1EC0C6E68;
  if (!qword_1EC0C6E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6E68);
  }

  return result;
}

unint64_t sub_1C4D86578()
{
  result = qword_1EC0C6E70;
  if (!qword_1EC0C6E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6E70);
  }

  return result;
}

unint64_t sub_1C4D865D0()
{
  result = qword_1EC0C6E78;
  if (!qword_1EC0C6E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6E78);
  }

  return result;
}

unint64_t sub_1C4D86628()
{
  result = qword_1EC0C6E80;
  if (!qword_1EC0C6E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6E80);
  }

  return result;
}

unint64_t sub_1C4D86680()
{
  result = qword_1EC0C6E88;
  if (!qword_1EC0C6E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6E88);
  }

  return result;
}

unint64_t sub_1C4D866D8()
{
  result = qword_1EC0C6E90;
  if (!qword_1EC0C6E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6E90);
  }

  return result;
}

unint64_t sub_1C4D86730()
{
  result = qword_1EC0C6E98;
  if (!qword_1EC0C6E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6E98);
  }

  return result;
}

unint64_t sub_1C4D86788()
{
  result = qword_1EC0C6EA0;
  if (!qword_1EC0C6EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6EA0);
  }

  return result;
}

unint64_t sub_1C4D867E0()
{
  result = qword_1EC0C6EA8;
  if (!qword_1EC0C6EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6EA8);
  }

  return result;
}

unint64_t sub_1C4D86838()
{
  result = qword_1EC0C6EB0;
  if (!qword_1EC0C6EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6EB0);
  }

  return result;
}

unint64_t sub_1C4D86890()
{
  result = qword_1EC0C6EB8;
  if (!qword_1EC0C6EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6EB8);
  }

  return result;
}

unint64_t sub_1C4D868E8()
{
  result = qword_1EC0C6EC0;
  if (!qword_1EC0C6EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6EC0);
  }

  return result;
}

unint64_t sub_1C4D86940()
{
  result = qword_1EC0C6EC8;
  if (!qword_1EC0C6EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6EC8);
  }

  return result;
}

unint64_t sub_1C4D86998()
{
  result = qword_1EC0C6ED0;
  if (!qword_1EC0C6ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6ED0);
  }

  return result;
}

unint64_t sub_1C4D869F0()
{
  result = qword_1EC0C6ED8;
  if (!qword_1EC0C6ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6ED8);
  }

  return result;
}

unint64_t sub_1C4D86A48()
{
  result = qword_1EC0C6EE0;
  if (!qword_1EC0C6EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6EE0);
  }

  return result;
}

unint64_t sub_1C4D86AA0()
{
  result = qword_1EC0C6EE8;
  if (!qword_1EC0C6EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6EE8);
  }

  return result;
}

unint64_t sub_1C4D86AF8()
{
  result = qword_1EC0C6EF0;
  if (!qword_1EC0C6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6EF0);
  }

  return result;
}

unint64_t sub_1C4D86B50()
{
  result = qword_1EC0C6EF8;
  if (!qword_1EC0C6EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6EF8);
  }

  return result;
}

unint64_t sub_1C4D86BA8()
{
  result = qword_1EC0C6F00;
  if (!qword_1EC0C6F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6F00);
  }

  return result;
}

unint64_t sub_1C4D86C00()
{
  result = qword_1EC0C6F08;
  if (!qword_1EC0C6F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6F08);
  }

  return result;
}

unint64_t sub_1C4D86C58()
{
  result = qword_1EC0C6F10;
  if (!qword_1EC0C6F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6F10);
  }

  return result;
}

unint64_t sub_1C4D86CB0()
{
  result = qword_1EC0C6F18;
  if (!qword_1EC0C6F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6F18);
  }

  return result;
}

unint64_t sub_1C4D86D08()
{
  result = qword_1EC0C6F20;
  if (!qword_1EC0C6F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6F20);
  }

  return result;
}

unint64_t sub_1C4D86D60()
{
  result = qword_1EC0C6F28;
  if (!qword_1EC0C6F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6F28);
  }

  return result;
}

unint64_t sub_1C4D86DB8()
{
  result = qword_1EC0C6F30;
  if (!qword_1EC0C6F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6F30);
  }

  return result;
}

uint64_t sub_1C4D86EAC(uint64_t a1)
{
  v3 = *(v1 - 128);
  v4 = *(v1 - 120);
  v5 = *(v1 - 112);
  *(v1 - 96) = a1;

  return sub_1C4F02658();
}

uint64_t sub_1C4D86EE8@<X0>(void *a1@<X8>)
{
  result = *(v3 - 136);
  *a1 = v1;
  a1[1] = result;
  v5 = *(v2 + 44);
  return result;
}

uint64_t sub_1C4D86F40()
{
  v3 = *(*(v2 - 88) + 16);
  result = v0 + *(v1 + 24);
  v5 = *(v2 - 72);
  return result;
}

uint64_t sub_1C4D86F6C()
{
  v3 = v0 + *(v1 + 28);

  return sub_1C4EFEC38();
}

uint64_t sub_1C4D86F84()
{
  v2 = *(v0 + 20);

  return sub_1C4EFEEF8();
}

uint64_t sub_1C4D86FB4()
{
  result = v2 + v1;
  v5 = *(v3 - 136);
  *(v3 - 248) = v0;
  v6 = *(v3 - 124);
  return result;
}

uint64_t sub_1C4D86FD0@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_1C44CC80C(v3 + a2, v4 + v2, a1);
}

void sub_1C4D86FF8()
{
  v2 = *(v0 + 24);
  v3 = *(v1 - 88);
  v4 = *(*(v1 - 96) + 16);
}

uint64_t sub_1C4D87008()
{
  result = v1 + v0;
  v4 = *(v2 - 144);
  v5 = *(v2 - 136);
  return result;
}

uint64_t sub_1C4D87018()
{
  result = v0;
  v3 = *(v1 - 136);
  v4 = *(v1 - 112);
  return result;
}

uint64_t sub_1C4D87048()
{

  return sub_1C4F026C8();
}

uint64_t sub_1C4D87070@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_1C44CC80C(v3 + a2, v4 + v2, a1);
}

uint64_t sub_1C4D870B8@<X0>(uint64_t a1@<X8>)
{
  result = v1 + a1;
  v4 = *(v2 - 144);
  return result;
}

uint64_t sub_1C4D870D0()
{
  v2 = (v1 + *(v0 + 32));
  *v2 = 0;
  v2[1] = 0;
  v3 = *(v0 + 36);
  return 0;
}

uint64_t sub_1C4D870E8()
{
  v1 = *(*(v0 - 88) + 36);
  *(v0 - 70) = 5;
  return 0;
}

uint64_t sub_1C4D87100(uint64_t a1)
{

  return sub_1C49D3614(a1);
}

uint64_t sub_1C4D8711C(uint64_t a1, uint64_t a2)
{

  return sub_1C44D4624(v3, a2, v2);
}

uint64_t sub_1C4D87148(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t sub_1C4D87188@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  result = *(v2 - 136);
  *v3 = *(v2 - 112);
  v3[1] = result;
  return result;
}

uint64_t sub_1C4D871BC@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *(v2 + a1) = a2;
  *(v2 + *(v3 + 48)) = *(v4 - 132);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4D871DC()
{
  v2 = *(v0 - 104);

  return sub_1C4F02778();
}

uint64_t sub_1C4D871FC()
{

  return sub_1C4EFF0C8();
}

uint64_t sub_1C4D8721C()
{

  return sub_1C4F02618();
}

uint64_t sub_1C4D87234()
{
  v3 = v0 + *(v1 + 28);

  return sub_1C4EFEC38();
}

uint64_t sub_1C4D8729C(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t *a4)
{
  v8 = *(v4 + *a2);
  *(v4 + *a2) = a1;

  sub_1C4D95950(a2, a3, a4);
}

void sub_1C4D8738C()
{
  sub_1C43FE628();
  v4 = v2;
  v6 = v5;
  v196 = v7;
  v197 = v8;
  v9 = type metadata accessor for EntityTriple(0);
  v10 = sub_1C43FCDF8(v9);
  v194 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v184 - v16;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  v193 = v18;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBF38();
  v192 = v20;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v184 - v22;
  i = *v6;
  v25 = MEMORY[0x1E69E7CC0];
  v200 = MEMORY[0x1E69E7CC0];
  v26 = *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_name + 8);
  v198 = v1;
  HIDWORD(v195) = i;
  if (!v26)
  {
    goto LABEL_6;
  }

  v0 = *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_name);
  sub_1C4D9A0B0();
  if (!v28)
  {
    goto LABEL_5;
  }

  v29 = *(v27 + 520);
  v30 = sub_1C4EFF0C8();
  sub_1C43FCE50(v30);
  v32 = v198;
  (*(v31 + 16))(v23, v198 + v29);
  v33 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_name_predicate;
  sub_1C440D164();
  v34 = sub_1C447E290();
  sub_1C43FCE50(v34);
  v36 = &v23[i];
  i = HIDWORD(v195);
  (*(v35 + 16))(v36, v32 + v33);
  sub_1C449ED64(v32 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_source, &v23[v9[9]]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  sub_1C4416C58();
  sub_1C4EFF888();
  v37 = &v23[v9[7]];
  sub_1C4EFEC38();
  v38 = &v23[v9[8]];
  *v38 = v0;
  *(v38 + 1) = v26;
  sub_1C4D99FC8(&v23[v9[10]]);
  *&v23[v39] = v3;
  v23[v9[12]] = i;
  v40 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4401EC4(v40, v41, v42, MEMORY[0x1E69E7CC0]);
  v25 = v43;
  v0 = *(v43 + 16);
  v44 = *(v43 + 24);
  v45 = v0 + 1;
  if (v0 >= v44 >> 1)
  {
    goto LABEL_76;
  }

  while (1)
  {
    *(v25 + 16) = v45;
    sub_1C43FBF6C();
    sub_1C4460C0C(v46);
    sub_1C4A948D8(v23, v47);
    v200 = v25;
LABEL_5:
    v1 = v198;
LABEL_6:
    v48 = *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_isAllDay + 8);
    v187 = v4;
    if (v48)
    {
      v0 = *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_isAllDay);
      v49 = HIBYTE(v48) & 0xF;
      if ((v48 & 0x2000000000000000) == 0)
      {
        v49 = v0 & 0xFFFFFFFFFFFFLL;
      }

      if (v49)
      {
        v50 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_entityIdentifier;
        v51 = sub_1C4EFF0C8();
        sub_1C43FCE50(v51);
        v53 = v198;
        v54 = v192;
        (*(v52 + 16))(v192, v198 + v50);
        v55 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_isAllDay_predicate;
        sub_1C440D164();
        v56 = sub_1C447E290();
        sub_1C43FCE50(v56);
        v58 = v54 + i;
        i = HIDWORD(v195);
        (*(v57 + 16))(v58, v53 + v55);
        sub_1C449ED64(v53 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_source, v54 + v9[9]);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4416C58();
        sub_1C4EFF888();
        v59 = v54 + v9[7];
        sub_1C4EFEC38();
        v60 = (v54 + v9[8]);
        *v60 = v0;
        v60[1] = v48;
        sub_1C4D99FC8((v54 + v9[10]));
        *(v54 + v61) = v3;
        *(v54 + v9[12]) = i;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v156 = *(v25 + 16);
          v157 = sub_1C43FCEC0();
          sub_1C44C9240(v157, v158, v159, v25);
          v25 = v160;
        }

        sub_1C44434D0();
        v4 = v187;
        if (v63)
        {
          v161 = sub_1C43FFD98(v62);
          sub_1C44C9240(v161, v162, v163, v25);
          v25 = v164;
        }

        *(v25 + 16) = v53;
        sub_1C43FBF6C();
        sub_1C4460C0C(v64);
        sub_1C4A948D8(v192, v65);
        v200 = v25;
      }

      v1 = v198;
    }

    v66 = (v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_url);
    v67 = *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_url + 8);
    if (v67)
    {
      sub_1C4404978(v66);
      if (v68)
      {
        v69 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_entityIdentifier;
        v70 = sub_1C4EFF0C8();
        sub_1C43FCE50(v70);
        v72 = v198;
        v73 = v193;
        (*(v71 + 16))(v193, v198 + v69);
        v74 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_url_predicate;
        sub_1C440D164();
        v75 = sub_1C447E290();
        sub_1C43FCE50(v75);
        v77 = v73 + i;
        LOBYTE(i) = BYTE4(v195);
        (*(v76 + 16))(v77, v72 + v74);
        sub_1C449ED64(v72 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_source, v73 + v9[9]);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4416C58();
        sub_1C4EFF888();
        v78 = v73 + v9[7];
        sub_1C4EFEC38();
        v79 = (v73 + v9[8]);
        *v79 = v0;
        v79[1] = v67;
        sub_1C4D99FC8((v73 + v9[10]));
        *(v73 + v80) = v3;
        *(v73 + v9[12]) = i;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v165 = *(v25 + 16);
          v166 = sub_1C43FCEC0();
          sub_1C44C9240(v166, v167, v168, v25);
          v25 = v169;
        }

        sub_1C44434D0();
        v4 = v187;
        if (v63)
        {
          v170 = sub_1C43FFD98(v81);
          sub_1C44C9240(v170, v171, v172, v25);
          v25 = v173;
        }

        *(v25 + 16) = v67;
        sub_1C43FBF6C();
        sub_1C4460C0C(v82);
        sub_1C4A948D8(v83, v84);
        v200 = v25;
      }
    }

    v0 = v198;
    v85 = *(v198 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_virtualConferenceURL);
    if (v85)
    {
      v86 = *(v85 + 16);
      if (v86)
      {
        v199 = MEMORY[0x1E69E7CC0];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C459DCC0();
        i = v199;
        v193 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_entityIdentifier;
        v191 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_source;
        v192 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_virtualConferenceURL_predicate;
        sub_1C4418194();
        v87 = sub_1C4EFF0C8();
        v88 = sub_1C44410E0(v87);
        sub_1C43FBCE0(v88);
        v189 = *(v89 + 16);
        v188 = v89 + 16;
        v185 = v85;
        v90 = (v85 + 40);
        do
        {
          v92 = *(v90 - 1);
          v91 = *v90;
          v93 = v198;
          sub_1C4410EB4();
          v94();
          v95 = v9[5];
          v96 = sub_1C4EFEEF8();
          sub_1C43FCE50(v96);
          (*(v97 + 16))(&v17[v95], v93 + v192);
          sub_1C449ED64(v93 + v191, &v17[v9[9]]);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4EF9AE8();
          sub_1C4416C58();
          sub_1C4EFF888();
          v98 = &v17[v9[7]];
          sub_1C4EFEC38();
          v99 = &v17[v9[8]];
          *v99 = v92;
          *(v99 + 1) = v91;
          sub_1C4D99FC8(&v17[v9[10]]);
          *&v17[v100] = v3;
          v17[v9[12]] = BYTE4(v195);
          v199 = i;
          v102 = *(i + 16);
          v101 = *(i + 24);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if (v102 >= v101 >> 1)
          {
            sub_1C459DCC0();
            i = v199;
          }

          *(i + 16) = v102 + 1;
          sub_1C43FBF6C();
          sub_1C447E804();
          sub_1C4A948D8(v17, v103 + v104 * v102);
          v90 += 2;
          --v86;
        }

        while (v86);

        sub_1C49D3614(i);
        v4 = v187;
        v0 = v198;
        LOBYTE(i) = BYTE4(v195);
      }
    }

    if (*(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasOrganizer))
    {
      v105 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_entityIdentifier;
      LOBYTE(v199) = i;

      v106 = v196;
      v23 = v197;
      v107 = sub_1C443F038();
      sub_1C4D8B940(v107, v108, v109, v110, v111, v112, v113, v114, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195);
      v4 = v105;
      if (v105)
      {
        goto LABEL_62;
      }

      sub_1C49D3614(v115);
    }

    else
    {
      v106 = v196;
      v23 = v197;
    }

    v45 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasAttendee);
    if (!v45)
    {
      break;
    }

    v116 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasAttendee);
    v25 = sub_1C4428DA0();
    sub_1C4480620(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_entityIdentifier);
    for (i = 0; ; ++i)
    {
      if (v25 == i)
      {

        v106 = v196;
        v23 = v197;
        v0 = v198;
        goto LABEL_45;
      }

      if (v23)
      {
        v17 = MEMORY[0x1C6940F90](i, v45);
      }

      else
      {
        v44 = *(v0 + 16);
        if (i >= v44)
        {
          goto LABEL_73;
        }

        v17 = *(v45 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1C4480720();
      sub_1C4D8B940(v196, v197, v198 + v193, &v199, v117, v118, v119, v120, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195);
      if (v4)
      {
LABEL_58:

        goto LABEL_63;
      }

      sub_1C49D3614(v121);
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    sub_1C43FCFE8(v44);
    sub_1C440424C();
    sub_1C44C9240(v152, v153, v154, v25);
    v25 = v155;
  }

LABEL_45:
  if (*(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasLocationRelationship))
  {
    v122 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_entityIdentifier;
    sub_1C4480720();

    v123 = sub_1C443F038();
    sub_1C4D8EF5C(v123, v124, v125, v126, v127, v128, v129, v130, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195);
    v4 = v122;
    if (v122)
    {
      goto LABEL_62;
    }

    sub_1C49D3614(v131);
  }

  v45 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_identifier);
  if (v45)
  {
    v132 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_identifier);
    v25 = sub_1C4428DA0();
    sub_1C4480620(OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_entityIdentifier);
    for (i = 0; v25 != i; ++i)
    {
      if (v23)
      {
        v17 = MEMORY[0x1C6940F90](i, v45);
      }

      else
      {
        v44 = *(v0 + 16);
        if (i >= v44)
        {
          goto LABEL_75;
        }

        v17 = *(v45 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_74;
      }

      sub_1C4480720();
      sub_1C4D8D3A8(v196, v197, v198 + v193, &v199, &OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_predicate, &OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_entityClass, &OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierId, &OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierId_predicate, &OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_source, &OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierType, &OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierType_predicate, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194);
      if (v4)
      {
        goto LABEL_58;
      }

      sub_1C49D3614(v133);
    }

    v106 = v196;
    v23 = v197;
    v0 = v198;
  }

  v134 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasDate);
  if (!v134)
  {
LABEL_66:
    v137 = v200;
    if (*(v200 + 16))
    {
      v138 = v0;
      v139 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_entityIdentifier;
      v140 = sub_1C4EFF0C8();
      sub_1C43FCE50(v140);
      v142 = v138 + v139;
      v143 = v186;
      (*(v141 + 16))(v186, v142);
      v144 = v143 + v9[5];
      sub_1C4EFEBB8();
      v145 = v138 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_entityClass;
      sub_1C4EFD2F8();
      sub_1C43FC1CC();
      sub_1C449ED64(v138 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_source, v143 + v9[9]);
      sub_1C4EF9AE8();
      sub_1C4416C58();
      sub_1C4EFF888();
      v146 = v143 + v9[7];
      sub_1C4EFEC38();
      v147 = (v143 + v9[8]);
      *v147 = v145;
      v147[1] = v134;
      v148 = (v143 + v9[10]);
      *v148 = v106;
      v148[1] = v23;
      *(v143 + v9[11]) = v3;
      *(v143 + v9[12]) = BYTE4(v195);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v174 = *(v137 + 16);
        v175 = sub_1C43FCEC0();
        sub_1C44C9240(v175, v176, v177, v137);
        v137 = v178;
      }

      sub_1C44434D0();
      if (v63)
      {
        v179 = sub_1C43FFD98(v149);
        sub_1C44C9240(v179, v180, v181, v137);
        v137 = v182;
      }

      *(v137 + 16) = v145;
      sub_1C43FBF6C();
      sub_1C4460C0C(v150);
      sub_1C4A948D8(v186, v151);
    }

    goto LABEL_64;
  }

  v135 = OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_entityIdentifier;
  sub_1C4480720();

  sub_1C443F038();
  sub_1C4D92C5C();
  if (!v135)
  {
    sub_1C49D3614(v136);

    goto LABEL_66;
  }

LABEL_62:

LABEL_63:

LABEL_64:
  sub_1C44109F8();
}
uint64_t sub_1C455EEA4()
{
  v2 = *v0;
  sub_1C4F02AF8();
  WorkoutType.hash(into:)();
  return sub_1C4F02B68();
}

void ObservedBehaviorType.value.getter()
{
  switch(*v0)
  {
    case 1:
    case 2:
      sub_1C43FE984();
      break;
    default:
      return;
  }
}

uint64_t sub_1C455EFAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001C4F89A60 == a2;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001C4F89A40 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6565705368676968 && a2 == 0xE900000000000064;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x686372756CLL && a2 == 0xE500000000000000)
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

unint64_t sub_1C455F168(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6565705368676968;
      break;
    case 4:
      result = 0x686372756CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C455F20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C455EFAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C455F234@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C455F160();
  *a1 = result;
  return result;
}

uint64_t sub_1C455F25C(uint64_t a1)
{
  v2 = sub_1C456A0C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455F298(uint64_t a1)
{
  v2 = sub_1C456A0C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C455F2D4(uint64_t a1)
{
  v2 = sub_1C456A16C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455F310(uint64_t a1)
{
  v2 = sub_1C456A16C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C455F34C(uint64_t a1)
{
  v2 = sub_1C456A118();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455F388(uint64_t a1)
{
  v2 = sub_1C456A118();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C455F3C4(uint64_t a1)
{
  v2 = sub_1C456A214();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455F400(uint64_t a1)
{
  v2 = sub_1C456A214();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C455F43C(uint64_t a1)
{
  v2 = sub_1C456A1C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455F478(uint64_t a1)
{
  v2 = sub_1C456A1C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C455F4B4(uint64_t a1)
{
  v2 = sub_1C456A268();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455F4F0(uint64_t a1)
{
  v2 = sub_1C456A268();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ObservedBehaviorType.encode(to:)()
{
  sub_1C43FE96C();
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0B7418, &qword_1C4F06F98);
  sub_1C43FCDF8(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C44258A4(v9, v41);
  v10 = sub_1C456902C(&qword_1EC0B7420, &qword_1C4F06FA0);
  sub_1C43FCDF8(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBC74();
  v14 = sub_1C456902C(&qword_1EC0B7428, &qword_1C4F06FA8);
  sub_1C43FCDF8(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C441087C(v18, v42);
  v19 = sub_1C456902C(&qword_1EC0B7430, &qword_1C4F06FB0);
  sub_1C43FCDF8(v19);
  v21 = *(v20 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C442FA70(v23, v43);
  v24 = sub_1C456902C(&qword_1EC0B7438, &qword_1C4F06FB8);
  v25 = sub_1C43FCDF8(v24);
  v44 = v26;
  v45 = v25;
  v28 = *(v27 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FE95C();
  v30 = sub_1C456902C(&qword_1EC0B7440, &qword_1C4F06FC0);
  sub_1C43FCDF8(v30);
  v32 = v31;
  v34 = *(v33 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FE94C();
  v36 = *v0;
  v37 = v4[4];
  sub_1C4417F50(v4, v4[3]);
  sub_1C456A0C4();
  sub_1C440CA90();
  sub_1C4F02BF8();
  switch(v36)
  {
    case 1:
      sub_1C44166E8();
      sub_1C456A214();
      sub_1C4403FA0();
      goto LABEL_7;
    case 2:
      sub_1C4401670();
      sub_1C456A1C0();
      sub_1C4403FA0();
      goto LABEL_7;
    case 3:
      sub_1C4401D10();
      sub_1C456A16C();
      sub_1C4403FA0();
      goto LABEL_7;
    case 4:
      sub_1C444AFEC();
      sub_1C456A118();
      sub_1C4403FA0();
LABEL_7:
      v38 = sub_1C4401D04();
      v40(v38, v39);
      break;
    default:
      sub_1C456A268();
      sub_1C440BAD0();
      sub_1C4F02718();
      (*(v44 + 8))(v2, v45);
      break;
  }

  (*(v32 + 8))(v1, v30);
  sub_1C43FBC80();
}

void ObservedBehaviorType.init(from:)()
{
  sub_1C43FE96C();
  v5 = v4;
  v65 = v6;
  v7 = sub_1C456902C(&qword_1EC0B7478, &qword_1C4F06FC8);
  v63 = sub_1C43FCDF8(v7);
  v64 = v8;
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBC74();
  v12 = sub_1C456902C(&qword_1EC0B7480, &qword_1C4F06FD0);
  sub_1C43FCDF8(v12);
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBC74();
  v16 = sub_1C456902C(&qword_1EC0B7488, &qword_1C4F06FD8);
  sub_1C43FCDF8(v16);
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FE938(v20, v60);
  v21 = sub_1C456902C(&qword_1EC0B7490, &qword_1C4F06FE0);
  sub_1C43FCDF8(v21);
  v23 = *(v22 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FE94C();
  v25 = sub_1C456902C(&qword_1EC0B7498, &qword_1C4F06FE8);
  sub_1C43FCDF8(v25);
  v27 = *(v26 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C4402A68();
  v29 = sub_1C456902C(&qword_1EC0B74A0, &qword_1C4F06FF0);
  sub_1C43FCDF8(v29);
  v66 = v30;
  v32 = *(v31 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C4418964();
  v34 = v5[4];
  sub_1C4417F50(v5, v5[3]);
  sub_1C456A0C4();
  sub_1C441ADE8();
  if (!v2)
  {
    v35 = sub_1C443F504();
    sub_1C4569EC0(v35, 0);
    v37 = v36;
    if (v39 == v38 >> 1)
    {
      v40 = v66;
    }

    else
    {
      sub_1C444FC04();
      sub_1C44182D0();
      if (v45 == v46)
      {
        __break(1u);
        return;
      }

      sub_1C44221DC(v41, v42, v43, v44);
      sub_1C44BBD84();
      if (!(v37 >> 1))
      {
        switch(v61)
        {
          case 1:
            sub_1C44166E8();
            sub_1C456A214();
            sub_1C440851C();
            swift_unknownObjectRelease();
            goto LABEL_17;
          case 2:
            sub_1C4401670();
            sub_1C456A1C0();
            sub_1C440851C();
            swift_unknownObjectRelease();
            goto LABEL_17;
          case 3:
            sub_1C4401D10();
            sub_1C456A16C();
            sub_1C440851C();
            swift_unknownObjectRelease();
LABEL_17:
            v47 = sub_1C43FE5EC();
            goto LABEL_18;
          case 4:
            sub_1C444AFEC();
            sub_1C456A118();
            sub_1C43FBC48();
            swift_unknownObjectRelease();
            (*(v64 + 8))(v3, v63);
            goto LABEL_19;
          default:
            sub_1C456A268();
            sub_1C440851C();
            swift_unknownObjectRelease();
            v47 = sub_1C43FE5EC();
            v49 = v62;
LABEL_18:
            v48(v47, v49);
LABEL_19:
            v58 = sub_1C445E720();
            v59(v58);
            *v65 = v61;
            sub_1C440962C(v5);
            break;
        }

        goto LABEL_12;
      }

      v40 = v66;
      v1 = v0;
    }

    sub_1C4F022E8();
    sub_1C43FFB2C();
    v51 = v50;
    v52 = *(sub_1C456902C(&qword_1EC0B7410, &qword_1C4F06F90) + 48);
    *v51 = &type metadata for ObservedBehaviorType;
    sub_1C4F025F8();
    sub_1C44157FC();
    v53 = *MEMORY[0x1E69E6AF8];
    sub_1C4402A78();
    v55 = *(v54 + 104);
    v56 = sub_1C4434510();
    v57(v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v40 + 8))(v1, v29);
  }

  sub_1C440962C(v5);
LABEL_12:
  sub_1C43FBC80();
}

uint64_t TransportationType.value.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x746F6F466E6FLL;
      break;
    case 2:
      result = sub_1C44020CC();
      break;
    case 3:
      result = 0x656E616C70;
      break;
    case 4:
      result = 0x656C6379636962;
      break;
    case 5:
      result = 1885956211;
      break;
    case 6:
      result = 7566690;
      break;
    case 7:
      result = 0x6E69617274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C455FF9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746F6F466E6FLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69746F6D6F747561 && a2 == 0xEA00000000006576;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656E616C70 && a2 == 0xE500000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656C6379636962 && a2 == 0xE700000000000000;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1885956211 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 7566690 && a2 == 0xE300000000000000;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6E69617274 && a2 == 0xE500000000000000)
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

uint64_t sub_1C4560218(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x746F6F466E6FLL;
      break;
    case 2:
      result = 0x69746F6D6F747561;
      break;
    case 3:
      result = 0x656E616C70;
      break;
    case 4:
      result = 0x656C6379636962;
      break;
    case 5:
      result = 1885956211;
      break;
    case 6:
      result = 7566690;
      break;
    case 7:
      result = 0x6E69617274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C45602E0(uint64_t a1)
{
  v2 = sub_1C456A4B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C456031C(uint64_t a1)
{
  v2 = sub_1C456A4B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4560358(uint64_t a1)
{
  v2 = sub_1C456A40C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4560394(uint64_t a1)
{
  v2 = sub_1C456A40C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C45603D0(uint64_t a1)
{
  v2 = sub_1C456A364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C456040C(uint64_t a1)
{
  v2 = sub_1C456A364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4560450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C455FF9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4560478@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4560210();
  *a1 = result;
  return result;
}

uint64_t sub_1C45604A0(uint64_t a1)
{
  v2 = sub_1C456A2BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45604DC(uint64_t a1)
{
  v2 = sub_1C456A2BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4560518(uint64_t a1)
{
  v2 = sub_1C456A508();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4560554(uint64_t a1)
{
  v2 = sub_1C456A508();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4560590(uint64_t a1)
{
  v2 = sub_1C456A460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45605CC(uint64_t a1)
{
  v2 = sub_1C456A460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4560608(uint64_t a1)
{
  v2 = sub_1C456A3B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4560644(uint64_t a1)
{
  v2 = sub_1C456A3B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4560680(uint64_t a1)
{
  v2 = sub_1C456A310();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45606BC(uint64_t a1)
{
  v2 = sub_1C456A310();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C45606F8(uint64_t a1)
{
  v2 = sub_1C456A55C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4560734(uint64_t a1)
{
  v2 = sub_1C456A55C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TransportationType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v24;
  a20 = v25;
  v26 = v20;
  v28 = v27;
  v29 = sub_1C456902C(&qword_1EC0B74A8, &qword_1C4F06FF8);
  sub_1C43FCDF8(v29);
  v31 = *(v30 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FE938(v33, v74);
  v34 = sub_1C456902C(&qword_1EC0B74B0, &qword_1C4F07000);
  sub_1C43FCDF8(v34);
  v36 = *(v35 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBC74();
  sub_1C4451268(v38);
  v39 = sub_1C456902C(&qword_1EC0B74B8, &qword_1C4F07008);
  sub_1C43FCDF8(v39);
  v41 = *(v40 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBC74();
  v43 = sub_1C456902C(&qword_1EC0B74C0, &qword_1C4F07010);
  sub_1C43FCDF8(v43);
  v45 = *(v44 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBC74();
  v47 = sub_1C456902C(&qword_1EC0B74C8, &qword_1C4F07018);
  sub_1C43FCDF8(v47);
  v49 = *(v48 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBC74();
  sub_1C445BEF4(v51);
  v52 = sub_1C456902C(&qword_1EC0B74D0, &qword_1C4F07020);
  sub_1C43FCDF8(v52);
  v54 = *(v53 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBC74();
  sub_1C444C200(v56);
  v75 = sub_1C456902C(&qword_1EC0B74D8, &qword_1C4F07028);
  sub_1C43FCDF8(v75);
  v58 = *(v57 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C440A474();
  v60 = sub_1C456902C(&qword_1EC0B74E0, &qword_1C4F07030);
  sub_1C43FCDF8(v60);
  v62 = *(v61 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FE95C();
  v76 = sub_1C456902C(&qword_1EC0B74E8, &qword_1C4F07038);
  sub_1C43FCDF8(v76);
  v65 = v64;
  v67 = *(v66 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v68);
  sub_1C43FE94C();
  v69 = *v26;
  v70 = v28[4];
  sub_1C4417F50(v28, v28[3]);
  sub_1C456A2BC();
  sub_1C440CA90();
  sub_1C4F02BF8();
  switch(v69)
  {
    case 1:
      sub_1C456A508();
      sub_1C4404A78();
      sub_1C43FFB20(&a18);
      v72 = v21;
      v73 = v75;
      break;
    case 2:
      sub_1C456A4B4();
      sub_1C440CFB0();
      goto LABEL_10;
    case 3:
      sub_1C456A460();
      sub_1C440CFB0();
      goto LABEL_10;
    case 4:
      sub_1C456A40C();
      sub_1C440CFB0();
      goto LABEL_10;
    case 5:
      sub_1C456A3B8();
      sub_1C440CFB0();
      goto LABEL_10;
    case 6:
      sub_1C456A364();
      sub_1C440CFB0();
      goto LABEL_10;
    case 7:
      sub_1C442F084();
      sub_1C456A310();
      sub_1C440CFB0();
LABEL_10:
      v72 = sub_1C43FE5EC();
      break;
    default:
      sub_1C456A55C();
      sub_1C4404A78();
      sub_1C43FFB20(&a17);
      v72 = v23;
      v73 = v60;
      break;
  }

  v71(v72, v73);
  (*(v65 + 8))(v22, v65);
  sub_1C43FBC80();
}

void TransportationType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  sub_1C4460154(v25);
  v26 = sub_1C456902C(&qword_1EC0B7538, &qword_1C4F07040);
  v27 = sub_1C43FCDF8(v26);
  v135 = v28;
  v136 = v27;
  v30 = *(v29 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C44258A4(v32, v118);
  v33 = sub_1C456902C(&qword_1EC0B7540, &qword_1C4F07048);
  v34 = sub_1C43FCDF8(v33);
  v133 = v35;
  v134 = v34;
  v37 = *(v36 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBC74();
  sub_1C4417F70(v39);
  v40 = sub_1C456902C(&qword_1EC0B7548, &qword_1C4F07050);
  v41 = sub_1C43FCDF8(v40);
  v131 = v42;
  v132 = v41;
  v44 = *(v43 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBC74();
  v139 = v46;
  v47 = sub_1C456902C(&qword_1EC0B7550, &qword_1C4F07058);
  v129 = sub_1C43FCDF8(v47);
  v130 = v48;
  v50 = *(v49 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBC74();
  sub_1C4451268(v52);
  v125 = sub_1C456902C(&qword_1EC0B7558, &qword_1C4F07060);
  sub_1C43FCDF8(v125);
  v128 = v53;
  v55 = *(v54 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C441087C(v57, v118);
  v58 = sub_1C456902C(&qword_1EC0B7560, &qword_1C4F07068);
  v59 = sub_1C43FCDF8(v58);
  v126 = v60;
  v127 = v59;
  v62 = *(v61 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FE938(v64, v118);
  v65 = sub_1C456902C(&qword_1EC0B7568, &qword_1C4F07070);
  sub_1C43FFAE0(v65, &a18);
  v124 = v66;
  v68 = *(v67 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v69);
  sub_1C4402A68();
  v70 = sub_1C456902C(&qword_1EC0B7570, &qword_1C4F07078);
  sub_1C43FCDF8(v70);
  v123 = v71;
  v73 = *(v72 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v118 - v75;
  v77 = sub_1C456902C(&qword_1EC0B7578, &qword_1C4F07080);
  sub_1C43FCDF8(v77);
  v79 = v78;
  v81 = *(v80 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v82);
  sub_1C43FE95C();
  v83 = v20[3];
  v84 = v20[4];
  v140 = v20;
  sub_1C4417F50(v20, v83);
  sub_1C456A2BC();
  v85 = v141;
  sub_1C4F02BC8();
  if (!v85)
  {
    v121 = v76;
    v120 = v70;
    v122 = v21;
    v86 = v138;
    v141 = v79;
    v87 = sub_1C4F026E8();
    sub_1C4569EC0(v87, 0);
    v89 = v88;
    if (v91 != v90 >> 1)
    {
      sub_1C444FC04();
      v118 = 0;
      sub_1C44182D0();
      if (v96 == v97)
      {
        __break(1u);
        return;
      }

      v119 = *(v95 + v93);
      sub_1C4570108(v93 + 1, v92, v89, v95, v93, v94);
      v99 = v98;
      v101 = v100;
      swift_unknownObjectRelease();
      if (v99 == v101 >> 1)
      {
        v102 = v137;
        switch(v119)
        {
          case 1:
            sub_1C456A508();
            sub_1C4433058();
            swift_unknownObjectRelease();
            v103 = sub_1C441E18C(&a17);
            v105 = &a18;
            goto LABEL_16;
          case 2:
            sub_1C456A4B4();
            sub_1C441EA14();
            swift_unknownObjectRelease();
            (*(v126 + 8))(v86, v127);
            goto LABEL_21;
          case 3:
            sub_1C456A460();
            sub_1C4433058();
            swift_unknownObjectRelease();
            v103 = sub_1C4401D04();
            v116 = v125;
            break;
          case 4:
            sub_1C456A40C();
            sub_1C4433058();
            swift_unknownObjectRelease();
            goto LABEL_19;
          case 5:
            sub_1C456A3B8();
            sub_1C441EA14();
            swift_unknownObjectRelease();
            goto LABEL_19;
          case 6:
            sub_1C456A364();
            sub_1C4433058();
            swift_unknownObjectRelease();
            goto LABEL_19;
          case 7:
            sub_1C442F084();
            sub_1C456A310();
            sub_1C4433058();
            swift_unknownObjectRelease();
LABEL_19:
            v103 = sub_1C4401D04();
            break;
          default:
            sub_1C456A55C();
            sub_1C4433058();
            swift_unknownObjectRelease();
            v103 = sub_1C441E18C(&a16);
            v105 = &a13;
LABEL_16:
            v116 = *(v105 - 32);
            break;
        }

        v104(v103, v116);
LABEL_21:
        sub_1C441E19C();
        v117(v22, v77);
        v115 = v140;
        *v102 = v119;
        goto LABEL_10;
      }
    }

    sub_1C4F022E8();
    sub_1C43FFB2C();
    v107 = v106;
    v108 = *(sub_1C456902C(&qword_1EC0B7410, &qword_1C4F06F90) + 48);
    *v107 = &type metadata for TransportationType;
    sub_1C4F025F8();
    sub_1C44157FC();
    v109 = *MEMORY[0x1E69E6AF8];
    sub_1C4402A78();
    v111 = *(v110 + 104);
    v112 = sub_1C4434510();
    v113(v112);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1C441E19C();
    v114(v22, v77);
  }

  v115 = v140;
LABEL_10:
  sub_1C440962C(v115);
  sub_1C43FBC80();
}

uint64_t sub_1C45615C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676E696B6C6177 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E696E6E7572 && a2 == 0xE700000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676E696C637963 && a2 == 0xE700000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x676E696B6968 && a2 == 0xE600000000000000)
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

uint64_t sub_1C456175C(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      v3 = 1802264951;
      goto LABEL_6;
    case 2:
      v3 = 1852732786;
      goto LABEL_6;
    case 3:
      v3 = 1818458467;
LABEL_6:
      result = v3 | 0x676E6900000000;
      break;
    case 4:
      result = 0x676E696B6968;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C45617E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C45615C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4561808(uint64_t a1)
{
  v2 = sub_1C456A5B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4561844(uint64_t a1)
{
  v2 = sub_1C456A5B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4561880(uint64_t a1)
{
  v2 = sub_1C456A658();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45618BC(uint64_t a1)
{
  v2 = sub_1C456A658();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C45618F8(uint64_t a1)
{
  v2 = sub_1C456A604();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4561934(uint64_t a1)
{
  v2 = sub_1C456A604();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4561970(uint64_t a1)
{
  v2 = sub_1C456A6AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45619AC(uint64_t a1)
{
  v2 = sub_1C456A6AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C45619E8(uint64_t a1)
{
  v2 = sub_1C456A754();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4561A24(uint64_t a1)
{
  v2 = sub_1C456A754();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4561A60(uint64_t a1)
{
  v2 = sub_1C456A700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4561A9C(uint64_t a1)
{
  v2 = sub_1C456A700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void WorkoutType.encode(to:)()
{
  sub_1C43FE96C();
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0B7580, &qword_1C4F07088);
  sub_1C43FCDF8(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C44258A4(v9, v41);
  v10 = sub_1C456902C(&qword_1EC0B7588, &qword_1C4F07090);
  sub_1C43FCDF8(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBC74();
  v14 = sub_1C456902C(&qword_1EC0B7590, &qword_1C4F07098);
  sub_1C43FCDF8(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C441087C(v18, v42);
  v19 = sub_1C456902C(&qword_1EC0B7598, &qword_1C4F070A0);
  sub_1C43FCDF8(v19);
  v21 = *(v20 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C442FA70(v23, v43);
  v24 = sub_1C456902C(&qword_1EC0B75A0, &qword_1C4F070A8);
  v25 = sub_1C43FCDF8(v24);
  v44 = v26;
  v45 = v25;
  v28 = *(v27 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FE95C();
  v30 = sub_1C456902C(&qword_1EC0B75A8, &qword_1C4F070B0);
  sub_1C43FCDF8(v30);
  v32 = v31;
  v34 = *(v33 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FE94C();
  v36 = *v0;
  v37 = v4[4];
  sub_1C4417F50(v4, v4[3]);
  sub_1C456A5B0();
  sub_1C440CA90();
  sub_1C4F02BF8();
  switch(v36)
  {
    case 1:
      sub_1C44166E8();
      sub_1C456A700();
      sub_1C4403FA0();
      goto LABEL_7;
    case 2:
      sub_1C4401670();
      sub_1C456A6AC();
      sub_1C4403FA0();
      goto LABEL_7;
    case 3:
      sub_1C4401D10();
      sub_1C456A658();
      sub_1C4403FA0();
      goto LABEL_7;
    case 4:
      sub_1C444AFEC();
      sub_1C456A604();
      sub_1C4403FA0();
LABEL_7:
      v38 = sub_1C4401D04();
      v40(v38, v39);
      break;
    default:
      sub_1C456A754();
      sub_1C440BAD0();
      sub_1C4F02718();
      (*(v44 + 8))(v2, v45);
      break;
  }

  (*(v32 + 8))(v1, v30);
  sub_1C43FBC80();
}

uint64_t sub_1C4561F00()
{
  v1 = *v0;
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](v1);
  return sub_1C4F02B68();
}

void WorkoutType.init(from:)()
{
  sub_1C43FE96C();
  v5 = v4;
  v65 = v6;
  v7 = sub_1C456902C(&qword_1EC0B75E0, &qword_1C4F070B8);
  v63 = sub_1C43FCDF8(v7);
  v64 = v8;
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBC74();
  v12 = sub_1C456902C(&qword_1EC0B75E8, &qword_1C4F070C0);
  sub_1C43FCDF8(v12);
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBC74();
  v16 = sub_1C456902C(&qword_1EC0B75F0, &qword_1C4F070C8);
  sub_1C43FCDF8(v16);
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FE938(v20, v60);
  v21 = sub_1C456902C(&qword_1EC0B75F8, &qword_1C4F070D0);
  sub_1C43FCDF8(v21);
  v23 = *(v22 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FE94C();
  v25 = sub_1C456902C(&qword_1EC0B7600, &qword_1C4F070D8);
  sub_1C43FCDF8(v25);
  v27 = *(v26 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C4402A68();
  v29 = sub_1C456902C(&qword_1EC0B7608, &unk_1C4F070E0);
  sub_1C43FCDF8(v29);
  v66 = v30;
  v32 = *(v31 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C4418964();
  v34 = v5[4];
  sub_1C4417F50(v5, v5[3]);
  sub_1C456A5B0();
  sub_1C441ADE8();
  if (!v2)
  {
    v35 = sub_1C443F504();
    sub_1C4569EC0(v35, 0);
    v37 = v36;
    if (v39 == v38 >> 1)
    {
      v40 = v66;
    }

    else
    {
      sub_1C444FC04();
      sub_1C44182D0();
      if (v45 == v46)
      {
        __break(1u);
        return;
      }

      sub_1C44221DC(v41, v42, v43, v44);
      sub_1C44BBD84();
      if (!(v37 >> 1))
      {
        switch(v61)
        {
          case 1:
            sub_1C44166E8();
            sub_1C456A700();
            sub_1C440851C();
            swift_unknownObjectRelease();
            goto LABEL_17;
          case 2:
            sub_1C4401670();
            sub_1C456A6AC();
            sub_1C440851C();
            swift_unknownObjectRelease();
            goto LABEL_17;
          case 3:
            sub_1C4401D10();
            sub_1C456A658();
            sub_1C440851C();
            swift_unknownObjectRelease();
LABEL_17:
            v47 = sub_1C43FE5EC();
            goto LABEL_18;
          case 4:
            sub_1C444AFEC();
            sub_1C456A604();
            sub_1C43FBC48();
            swift_unknownObjectRelease();
            (*(v64 + 8))(v3, v63);
            goto LABEL_19;
          default:
            sub_1C456A754();
            sub_1C440851C();
            swift_unknownObjectRelease();
            v47 = sub_1C43FE5EC();
            v49 = v62;
LABEL_18:
            v48(v47, v49);
LABEL_19:
            v58 = sub_1C445E720();
            v59(v58);
            *v65 = v61;
            sub_1C440962C(v5);
            break;
        }

        goto LABEL_12;
      }

      v40 = v66;
      v1 = v0;
    }

    sub_1C4F022E8();
    sub_1C43FFB2C();
    v51 = v50;
    v52 = *(sub_1C456902C(&qword_1EC0B7410, &qword_1C4F06F90) + 48);
    *v51 = &type metadata for WorkoutType;
    sub_1C4F025F8();
    sub_1C44157FC();
    v53 = *MEMORY[0x1E69E6AF8];
    sub_1C4402A78();
    v55 = *(v54 + 104);
    v56 = sub_1C4434510();
    v57(v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v40 + 8))(v1, v29);
  }

  sub_1C440962C(v5);
LABEL_12:
  sub_1C43FBC80();
}

uint64_t sub_1C45624DC()
{
  v1 = *v0;
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](v1);
  return sub_1C4F02B68();
}

uint64_t ActivityType.entityClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  switch(v3 >> 5)
  {
    case 0u:
      v4 = 1;
      switch(v3)
      {
        case 0xBu:
        case 0xCu:
        case 0x12u:
          sub_1C4EFD058();
          goto LABEL_36;
        case 0xDu:
        case 0xEu:
        case 0xFu:
        case 0x10u:
          goto LABEL_37;
        case 0x11u:
          goto LABEL_13;
        default:
          if (v3 == 5)
          {
            goto LABEL_18;
          }

          if (v3)
          {
            goto LABEL_37;
          }

LABEL_13:
          sub_1C4EFD0F8();
          break;
      }

      goto LABEL_36;
    case 1u:
      switch(v3 & 0x1F)
      {
        case 1u:
          sub_1C4EFD028();
          break;
        case 2u:
          sub_1C4EFD008();
          break;
        case 3u:
          sub_1C4EFD098();
          break;
        case 4u:
          sub_1C4EFCF98();
          break;
        default:
          sub_1C4EFD0D8();
          break;
      }

      goto LABEL_36;
    case 2u:
LABEL_6:
      sub_1C4EFD1C8();
      goto LABEL_36;
    case 3u:
      sub_1C4EFD048();
LABEL_36:
      v4 = 0;
      break;
    case 4u:
      v4 = 1;
      switch(v3)
      {
        case 0x81u:
          sub_1C4EFD038();
          goto LABEL_36;
        case 0x82u:
LABEL_18:
          sub_1C4EFCFE8();
          goto LABEL_36;
        case 0x83u:
          sub_1C4EFCF78();
          goto LABEL_36;
        case 0x84u:
          sub_1C4EFD118();
          goto LABEL_36;
        case 0x85u:
          sub_1C4EFD068();
          goto LABEL_36;
        case 0x86u:
          sub_1C4EFD138();
          goto LABEL_36;
        case 0x87u:
          sub_1C4EFD078();
          goto LABEL_36;
        case 0x88u:
        case 0x99u:
          sub_1C4EFD0C8();
          goto LABEL_36;
        case 0x89u:
          sub_1C4EFCFF8();
          goto LABEL_36;
        case 0x8Au:
          sub_1C4EFD158();
          goto LABEL_36;
        case 0x8Bu:
          sub_1C4EFCF88();
          goto LABEL_36;
        case 0x8Cu:
          sub_1C4EFD148();
          goto LABEL_36;
        case 0x8Du:
          sub_1C4EFD088();
          goto LABEL_36;
        case 0x8Eu:
          sub_1C4EFD0E8();
          goto LABEL_36;
        case 0x95u:
          sub_1C4EFD108();
          goto LABEL_36;
        case 0x98u:
          goto LABEL_6;
        case 0x9Au:
          sub_1C4EFCFD8();
          goto LABEL_36;
        case 0x9Bu:
          sub_1C4EFD2B8();
          goto LABEL_36;
        case 0x9Cu:
          sub_1C4EFCF68();
          goto LABEL_36;
        case 0x9Du:
          sub_1C4EFD1A8();
          goto LABEL_36;
        default:
          goto LABEL_37;
      }

    default:
      v4 = 1;
      break;
  }

LABEL_37:
  v5 = sub_1C4EFD548();

  return sub_1C440BAA8(a1, v4, 1, v5);
}

uint64_t ActivityType.titleCase.getter()
{
  v1 = sub_1C4EF9488();
  v2 = sub_1C43FCDF8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  LOBYTE(v25) = *v0;
  ActivityType.value.getter();
  v25 = v13;
  v26 = v14;
  v24[6] = 0x295D5A2D415B28;
  v24[7] = 0xE700000000000000;
  v24[4] = 3220512;
  v24[5] = 0xE300000000000000;
  v24[2] = v13;
  v24[3] = v14;
  v24[0] = v13;
  v24[1] = v14;
  v15 = sub_1C4EF9E48();
  sub_1C440BAA8(v12, 1, 1, v15);
  sub_1C4415EA8();
  sub_1C4F02028();
  sub_1C456A7A8(v12);
  v16 = sub_1C4F02008();
  v18 = v17;

  v25 = v16;
  v26 = v18;
  sub_1C4EF9448();
  v19 = sub_1C4F01FF8();
  v21 = v20;
  (*(v4 + 8))(v8, v1);

  v25 = v19;
  v26 = v21;
  v22 = sub_1C4F01FD8();

  return v22;
}

void ActivityType.value.getter()
{
  v1 = *v0;
  switch(v1 >> 5)
  {
    case 1u:
      return;
    case 2u:
      switch(v1 & 0x1F)
      {
        case 2u:
          return;
        case 3u:
        case 7u:
          goto LABEL_6;
        default:
          goto LABEL_7;
      }

    case 3u:
      switch(v1 & 0x1F)
      {
        case 1u:
        case 2u:
        case 3u:
        case 4u:
          goto LABEL_7;
        default:
LABEL_6:
          sub_1C43FE984();
          break;
      }

      break;
    case 4u:
      switch(*v0)
      {
        case 0x94:
        case 0x97:
          goto LABEL_7;
        case 0x96:
          sub_1C44020CC();
          break;
        default:
          return;
      }

      break;
    default:
      switch(*v0)
      {
        case 5:
LABEL_7:
          sub_1C44605E8();
          break;
        default:
          return;
      }

      break;
  }
}

uint64_t static ActivityType.== infix(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2 >> 5)
  {
    case 1u:
      if ((v3 & 0xE0) != 0x20)
      {
        return 0;
      }

      return ((v3 ^ v2) & 0x1F) == 0;
    case 2u:
      if ((v3 & 0xE0) != 0x40)
      {
        return 0;
      }

      return ((v3 ^ v2) & 0x1F) == 0;
    case 3u:
      if ((v3 & 0xE0) != 0x60)
      {
        return 0;
      }

      return ((v3 ^ v2) & 0x1F) == 0;
    case 4u:
      switch(*a1)
      {
        case 0x81:
          if (v3 != 129)
          {
            return 0;
          }

          break;
        case 0x82:
          if (v3 != 130)
          {
            return 0;
          }

          break;
        case 0x83:
          if (v3 != 131)
          {
            return 0;
          }

          break;
        case 0x84:
          if (v3 != 132)
          {
            return 0;
          }

          break;
        case 0x85:
          if (v3 != 133)
          {
            return 0;
          }

          break;
        case 0x86:
          if (v3 != 134)
          {
            return 0;
          }

          break;
        case 0x87:
          if (v3 != 135)
          {
            return 0;
          }

          break;
        case 0x88:
          if (v3 != 136)
          {
            return 0;
          }

          break;
        case 0x89:
          if (v3 != 137)
          {
            return 0;
          }

          break;
        case 0x8A:
          if (v3 != 138)
          {
            return 0;
          }

          break;
        case 0x8B:
          if (v3 != 139)
          {
            return 0;
          }

          break;
        case 0x8C:
          if (v3 != 140)
          {
            return 0;
          }

          break;
        case 0x8D:
          if (v3 != 141)
          {
            return 0;
          }

          break;
        case 0x8E:
          if (v3 != 142)
          {
            return 0;
          }

          break;
        case 0x8F:
          if (v3 != 143)
          {
            return 0;
          }

          break;
        case 0x90:
          if (v3 != 144)
          {
            return 0;
          }

          break;
        case 0x91:
          if (v3 != 145)
          {
            return 0;
          }

          break;
        case 0x92:
          if (v3 != 146)
          {
            return 0;
          }

          break;
        case 0x93:
          if (v3 != 147)
          {
            return 0;
          }

          break;
        case 0x94:
          if (v3 != 148)
          {
            return 0;
          }

          break;
        case 0x95:
          if (v3 != 149)
          {
            return 0;
          }

          break;
        case 0x96:
          if (v3 != 150)
          {
            return 0;
          }

          break;
        case 0x97:
          if (v3 != 151)
          {
            return 0;
          }

          break;
        case 0x98:
          if (v3 != 152)
          {
            return 0;
          }

          break;
        case 0x99:
          if (v3 != 153)
          {
            return 0;
          }

          break;
        case 0x9A:
          if (v3 != 154)
          {
            return 0;
          }

          break;
        case 0x9B:
          if (v3 != 155)
          {
            return 0;
          }

          break;
        case 0x9C:
          if (v3 != 156)
          {
            return 0;
          }

          break;
        case 0x9D:
          if (v3 != 157)
          {
            return 0;
          }

          break;
        default:
          if (v3 != 128)
          {
            return 0;
          }

          break;
      }

      return 1;
    default:
      if (v3 > 0x1F)
      {
        return 0;
      }

      return v2 == v3;
  }
}

uint64_t sub_1C4563298(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x63696E756D6D6F63 && a2 == 0xED0000676E697461;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6973696372657865 && a2 == 0xEA0000000000676ELL;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001C4F866C0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000018 && 0x80000001C4F89AC0 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x676E696B726F77 && a2 == 0xE700000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x676E697465656DLL && a2 == 0xE700000000000000;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x676E69746165 && a2 == 0xE600000000000000;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x676E696863746177 && a2 == 0xEA00000000005654;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x676E6970706F6873 && a2 == 0xE800000000000000;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6E6C7566646E696DLL && a2 == 0xEB00000000737365;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x676E697065656C73 && a2 == 0xE800000000000000;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6E696C6576617274 && a2 == 0xE900000000000067;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x676E6964616572 && a2 == 0xE700000000000000;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6E6F697461636176 && a2 == 0xEB00000000676E69;
                              if (v19 || (sub_1C4F02938() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x676E696D6167 && a2 == 0xE600000000000000;
                                if (v20 || (sub_1C4F02938() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x7A696C6169636F73 && a2 == 0xEB00000000676E69;
                                  if (v21 || (sub_1C4F02938() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x7055676E696B6177 && a2 == 0xE800000000000000;
                                    if (v22 || (sub_1C4F02938() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x656D6974646562 && a2 == 0xE700000000000000;
                                      if (v23 || (sub_1C4F02938() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x676E696E7261656CLL && a2 == 0xE800000000000000;
                                        if (v24 || (sub_1C4F02938() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x6E696D6165727473 && a2 == 0xE900000000000067;
                                          if (v25 || (sub_1C4F02938() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x4463697373616C63 && a2 == 0xEA0000000000444ELL;
                                            if (v26 || (sub_1C4F02938() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x65526E6565726373 && a2 == 0xEF676E6964726F63;
                                              if (v27 || (sub_1C4F02938() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x68536E6565726373 && a2 == 0xED0000676E697261;
                                                if (v28 || (sub_1C4F02938() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000010 && 0x80000001C4F89AA0 == a2;
                                                  if (v29 || (sub_1C4F02938() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0x616E6F6974617473 && a2 == 0xEA00000000007972;
                                                    if (v30 || (sub_1C4F02938() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x69746F6D6F747561 && a2 == 0xEA00000000006576;
                                                      if (v31 || (sub_1C4F02938() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD000000000000014 && 0x80000001C4F89A80 == a2;
                                                        if (v32 || (sub_1C4F02938() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0x746867696C66 && a2 == 0xE600000000000000;
                                                          if (v33 || (sub_1C4F02938() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 1885958772 && a2 == 0xE400000000000000;
                                                            if (v34 || (sub_1C4F02938() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0x6E6974756D6D6F63 && a2 == 0xE900000000000067;
                                                              if (v35 || (sub_1C4F02938() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0x6E69646E65747461 && a2 == 0xEE00746E65764567;
                                                                if (v36 || (sub_1C4F02938() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0x754F676E696E6964 && a2 == 0xE900000000000074;
                                                                  if (v37 || (sub_1C4F02938() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xED00007469736956)
                                                                  {

                                                                    return 33;
                                                                  }

                                                                  else
                                                                  {
                                                                    v39 = sub_1C4F02938();

                                                                    if (v39)
                                                                    {
                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      return 34;
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

uint64_t sub_1C4563CBC(unsigned __int8 a1)
{
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](a1);
  return sub_1C4F02B68();
}

uint64_t sub_1C4563D04(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      return 0x63696E756D6D6F63;
    case 2:
      return 0x6973696372657865;
    case 3:
      return 0xD000000000000016;
    case 4:
      return 0xD000000000000018;
    case 5:
      v7 = 1802661751;
      return v7 | 0x676E6900000000;
    case 6:
      v7 = 1952802157;
      return v7 | 0x676E6900000000;
    case 7:
      v6 = 1769234789;
      return v6 & 0xFFFF0000FFFFFFFFLL | 0x676E00000000;
    case 8:
      return 0x676E696863746177;
    case 9:
      v3 = 1886349427;
      goto LABEL_12;
    case 10:
      return 0x6E6C7566646E696DLL;
    case 11:
      v3 = 1701145715;
LABEL_12:
      v5 = v3 & 0xFFFF0000FFFFFFFFLL | 0x697000000000;
      return v5 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
    case 12:
      v4 = 0x6C6576617274;
      goto LABEL_32;
    case 13:
      v7 = 1684104562;
      return v7 | 0x676E6900000000;
    case 14:
      return 0x6E6F697461636176;
    case 15:
      v6 = 1768776039;
      return v6 & 0xFFFF0000FFFFFFFFLL | 0x676E00000000;
    case 16:
      return 0x7A696C6169636F73;
    case 17:
      return 0x7055676E696B6177;
    case 18:
      return 0x656D6974646562;
    case 19:
      v5 = 0x696E7261656CLL;
      return v5 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
    case 20:
      v4 = 0x6D6165727473;
      goto LABEL_32;
    case 21:
      return 0x4463697373616C63;
    case 22:
      return 0x65526E6565726373;
    case 23:
      return 0x68536E6565726373;
    case 24:
      return 0xD000000000000010;
    case 25:
      return 0x616E6F6974617473;
    case 26:
      return 0x69746F6D6F747561;
    case 27:
      return 0xD000000000000014;
    case 28:
      return 0x746867696C66;
    case 29:
      return 1885958772;
    case 30:
      v4 = 0x74756D6D6F63;
LABEL_32:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
      break;
    case 31:
      result = 0x6E69646E65747461;
      break;
    case 32:
      result = 0x754F676E696E6964;
      break;
    case 33:
      result = 0x6E6F697461636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4564094(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x80000001C4F85600 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4564130(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x5474756F6B726F77 && a2 == 0xEB00000000657079)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C45641CC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001C4F89CB0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4564268(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001C4F89CD0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C45642E8()
{
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](0);
  return sub_1C4F02B68();
}

uint64_t sub_1C4564348(uint64_t a1)
{
  v2 = sub_1C456AB58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4564384(uint64_t a1)
{
  v2 = sub_1C456AB58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C45643C0(uint64_t a1)
{
  v2 = sub_1C456A90C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45643FC(uint64_t a1)
{
  v2 = sub_1C456A90C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4564438(uint64_t a1)
{
  v2 = sub_1C456AAB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4564474(uint64_t a1)
{
  v2 = sub_1C456AAB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C45644B0(uint64_t a1)
{
  v2 = sub_1C456AD50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45644EC(uint64_t a1)
{
  v2 = sub_1C456AD50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4564528(uint64_t a1)
{
  v2 = sub_1C456AC54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4564564(uint64_t a1)
{
  v2 = sub_1C456AC54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C45645A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C45645F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4563298(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C456461C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4563CB4();
  *a1 = result;
  return result;
}

uint64_t sub_1C4564644(uint64_t a1)
{
  v2 = sub_1C456A810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4564680(uint64_t a1)
{
  v2 = sub_1C456A810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C45646C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4564094(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C45646F0(uint64_t a1)
{
  v2 = sub_1C456B3E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C456472C(uint64_t a1)
{
  v2 = sub_1C456B3E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4564768(uint64_t a1)
{
  v2 = sub_1C456A960();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45647A4(uint64_t a1)
{
  v2 = sub_1C456A960();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C45647E0(uint64_t a1)
{
  v2 = sub_1C456A8B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C456481C(uint64_t a1)
{
  v2 = sub_1C456A8B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4564858(uint64_t a1)
{
  v2 = sub_1C456B0EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4564894(uint64_t a1)
{
  v2 = sub_1C456B0EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C45648D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4564130(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4564900(uint64_t a1)
{
  v2 = sub_1C456B338();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C456493C(uint64_t a1)
{
  v2 = sub_1C456B338();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4564978(uint64_t a1)
{
  v2 = sub_1C456AA08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45649B4(uint64_t a1)
{
  v2 = sub_1C456AA08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C45649F0(uint64_t a1)
{
  v2 = sub_1C456AE4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4564A2C(uint64_t a1)
{
  v2 = sub_1C456AE4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4564A68(uint64_t a1)
{
  v2 = sub_1C456ACFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4564AA4(uint64_t a1)
{
  v2 = sub_1C456ACFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4564AE0(uint64_t a1)
{
  v2 = sub_1C456A864();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4564B1C(uint64_t a1)
{
  v2 = sub_1C456A864();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4564B58(uint64_t a1)
{
  v2 = sub_1C456B140();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4564B94(uint64_t a1)
{
  v2 = sub_1C456B140();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4564BD0(uint64_t a1)
{
  v2 = sub_1C456AFF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4564C0C(uint64_t a1)
{
  v2 = sub_1C456AFF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4564C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C45641CC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4564C78(uint64_t a1)
{
  v2 = sub_1C456B1E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4564CB4(uint64_t a1)
{
  v2 = sub_1C456B1E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4564CF0(uint64_t a1)
{
  v2 = sub_1C456AEF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4564D2C(uint64_t a1)
{
  v2 = sub_1C456AEF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4564D68(uint64_t a1)
{
  v2 = sub_1C456AC00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4564DA4(uint64_t a1)
{
  v2 = sub_1C456AC00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4564DE0(uint64_t a1)
{
  v2 = sub_1C456ABAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4564E1C(uint64_t a1)
{
  v2 = sub_1C456ABAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4564E58(uint64_t a1)
{
  v2 = sub_1C456B044();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4564E94(uint64_t a1)
{
  v2 = sub_1C456B044();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4564ED0(uint64_t a1)
{
  v2 = sub_1C456AF9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4564F0C(uint64_t a1)
{
  v2 = sub_1C456AF9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4564F48(uint64_t a1)
{
  v2 = sub_1C456ADF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4564F84(uint64_t a1)
{
  v2 = sub_1C456ADF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4564FC0(uint64_t a1)
{
  v2 = sub_1C456AA5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4564FFC(uint64_t a1)
{
  v2 = sub_1C456AA5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4565038(uint64_t a1)
{
  v2 = sub_1C456AB04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4565074(uint64_t a1)
{
  v2 = sub_1C456AB04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C45650B0(uint64_t a1)
{
  v2 = sub_1C456ACA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45650EC(uint64_t a1)
{
  v2 = sub_1C456ACA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4565128()
{
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](0);
  return sub_1C4F02B68();
}

uint64_t sub_1C456516C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4564268(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4565198(uint64_t a1)
{
  v2 = sub_1C456B290();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45651D4(uint64_t a1)
{
  v2 = sub_1C456B290();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4565210(uint64_t a1)
{
  v2 = sub_1C456AF48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C456524C(uint64_t a1)
{
  v2 = sub_1C456AF48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4565288(uint64_t a1)
{
  v2 = sub_1C456A9B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45652C4(uint64_t a1)
{
  v2 = sub_1C456A9B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4565300(uint64_t a1)
{
  v2 = sub_1C456B488();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C456533C(uint64_t a1)
{
  v2 = sub_1C456B488();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4565378(uint64_t a1)
{
  v2 = sub_1C456AEA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45653B4(uint64_t a1)
{
  v2 = sub_1C456AEA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C45653F0(uint64_t a1)
{
  v2 = sub_1C456ADA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C456542C(uint64_t a1)
{
  v2 = sub_1C456ADA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4565468(uint64_t a1)
{
  v2 = sub_1C456B098();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45654A4(uint64_t a1)
{
  v2 = sub_1C456B098();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C45654E0(uint64_t a1)
{
  v2 = sub_1C456B194();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C456551C(uint64_t a1)
{
  v2 = sub_1C456B194();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActivityType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v25;
  a20 = v26;
  v332 = v22;
  v27 = v21;
  v29 = v28;
  v30 = sub_1C456902C(&qword_1EC0B7620, &qword_1C4F070F0);
  v31 = sub_1C43FCDF8(v30);
  v317 = v32;
  v318 = v31;
  v34 = *(v33 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBC74();
  sub_1C445BEF4(v36);
  v37 = sub_1C456902C(&qword_1EC0B7628, &qword_1C4F070F8);
  v38 = sub_1C43FCDF8(v37);
  v314 = v39;
  v315 = v38;
  v41 = *(v40 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBC74();
  sub_1C444C200(v43);
  v312 = sub_1C456902C(&qword_1EC0B7630, &qword_1C4F07100);
  sub_1C43FCDF8(v312);
  v311 = v44;
  v46 = *(v45 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBC74();
  sub_1C43FCE30(v48);
  v49 = sub_1C456902C(&qword_1EC0B7638, &qword_1C4F07108);
  sub_1C43FFAE0(v49, &a16);
  v308 = v50;
  v52 = *(v51 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBC74();
  sub_1C43FCE30(v54);
  v55 = sub_1C456902C(&qword_1EC0B7640, &qword_1C4F07110);
  sub_1C43FFAE0(v55, &a13);
  v305 = v56;
  v58 = *(v57 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBC74();
  sub_1C43FCE30(v60);
  v61 = sub_1C456902C(&qword_1EC0B7648, &qword_1C4F07118);
  sub_1C43FFAE0(v61, &a10);
  v302 = v62;
  v64 = *(v63 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v65);
  sub_1C43FBC74();
  sub_1C43FCE30(v66);
  v67 = sub_1C456902C(&qword_1EC0B7650, &qword_1C4F07120);
  sub_1C43FFAE0(v67, &v332);
  v299 = v68;
  v70 = *(v69 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v71);
  sub_1C43FBC74();
  sub_1C43FCE30(v72);
  v73 = sub_1C456902C(&qword_1EC0B7658, &qword_1C4F07128);
  sub_1C43FFAE0(v73, &v329);
  v296 = v74;
  v76 = *(v75 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v77);
  sub_1C43FBC74();
  sub_1C43FCE30(v78);
  v79 = sub_1C456902C(&qword_1EC0B7660, &qword_1C4F07130);
  sub_1C43FFAE0(v79, &v326);
  v293 = v80;
  v82 = *(v81 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v83);
  sub_1C43FBC74();
  sub_1C43FCE30(v84);
  v85 = sub_1C456902C(&qword_1EC0B7668, &qword_1C4F07138);
  sub_1C43FFAE0(v85, &v323);
  v290 = v86;
  v88 = *(v87 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v89);
  sub_1C43FBC74();
  sub_1C43FCE30(v90);
  v91 = sub_1C456902C(&qword_1EC0B7670, &qword_1C4F07140);
  sub_1C43FFAE0(v91, &v320);
  v287 = v92;
  v94 = *(v93 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v95);
  sub_1C43FBC74();
  sub_1C43FCE30(v96);
  v97 = sub_1C456902C(&qword_1EC0B7678, &qword_1C4F07148);
  sub_1C43FFAE0(v97, &v317);
  v284 = v98;
  v100 = *(v99 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v101);
  sub_1C43FBC74();
  sub_1C43FCE30(v102);
  v103 = sub_1C456902C(&qword_1EC0B7680, &qword_1C4F07150);
  sub_1C43FFAE0(v103, &v314);
  v281 = v104;
  v106 = *(v105 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v107);
  sub_1C43FBC74();
  sub_1C43FCE30(v108);
  v109 = sub_1C456902C(&qword_1EC0B7688, &qword_1C4F07158);
  sub_1C43FFAE0(v109, &v311);
  v278 = v110;
  v112 = *(v111 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v113);
  sub_1C43FBC74();
  sub_1C43FCE30(v114);
  v115 = sub_1C456902C(&qword_1EC0B7690, &qword_1C4F07160);
  sub_1C43FFAE0(v115, &v308);
  v275 = v116;
  v118 = *(v117 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v119);
  sub_1C43FBC74();
  sub_1C43FCE30(v120);
  v121 = sub_1C456902C(&qword_1EC0B7698, &qword_1C4F07168);
  sub_1C43FFAE0(v121, &v305);
  v272 = v122;
  v124 = *(v123 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v125);
  sub_1C43FBC74();
  sub_1C43FCE30(v126);
  v127 = sub_1C456902C(&qword_1EC0B76A0, &qword_1C4F07170);
  sub_1C43FFAE0(v127, &v302);
  v269 = v128;
  v130 = *(v129 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v131);
  sub_1C43FBC74();
  sub_1C43FCE30(v132);
  v133 = sub_1C456902C(&qword_1EC0B76A8, &qword_1C4F07178);
  sub_1C43FFAE0(v133, &v299);
  v266 = v134;
  v136 = *(v135 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v137);
  sub_1C43FBC74();
  sub_1C43FCE30(v138);
  v139 = sub_1C456902C(&qword_1EC0B76B0, &qword_1C4F07180);
  sub_1C43FFAE0(v139, &v296);
  v263 = v140;
  v142 = *(v141 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v143);
  sub_1C43FBC74();
  sub_1C43FCE30(v144);
  v145 = sub_1C456902C(&qword_1EC0B76B8, &qword_1C4F07188);
  sub_1C43FFAE0(v145, &v293);
  v262[30] = v146;
  v148 = *(v147 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v149);
  sub_1C43FBC74();
  sub_1C43FCE30(v150);
  v151 = sub_1C456902C(&qword_1EC0B76C0, &qword_1C4F07190);
  sub_1C43FFAE0(v151, &v290);
  v262[27] = v152;
  v154 = *(v153 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v155);
  sub_1C43FBC74();
  sub_1C43FCE30(v156);
  v157 = sub_1C456902C(&qword_1EC0B76C8, &qword_1C4F07198);
  sub_1C43FFAE0(v157, &v287);
  v262[24] = v158;
  v160 = *(v159 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v161);
  sub_1C43FBC74();
  sub_1C43FCE30(v162);
  v163 = sub_1C456902C(&qword_1EC0B76D0, &qword_1C4F071A0);
  sub_1C43FFAE0(v163, &v284);
  v262[21] = v164;
  v166 = *(v165 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v167);
  sub_1C43FBC74();
  sub_1C43FCE30(v168);
  v169 = sub_1C456902C(&qword_1EC0B76D8, &qword_1C4F071A8);
  sub_1C43FFAE0(v169, &v281);
  v262[18] = v170;
  v172 = *(v171 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v173);
  sub_1C43FBC74();
  sub_1C43FCE30(v174);
  v175 = sub_1C456902C(&qword_1EC0B76E0, &qword_1C4F071B0);
  sub_1C43FFAE0(v175, &v278);
  v262[15] = v176;
  v178 = *(v177 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v179);
  sub_1C43FBC74();
  sub_1C43FCE30(v180);
  v181 = sub_1C456902C(&qword_1EC0B76E8, &qword_1C4F071B8);
  sub_1C43FFAE0(v181, &v275);
  v262[12] = v182;
  v184 = *(v183 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v185);
  sub_1C43FBC74();
  sub_1C43FCE30(v186);
  v187 = sub_1C456902C(&qword_1EC0B76F0, &qword_1C4F071C0);
  sub_1C43FFAE0(v187, &v272);
  v262[9] = v188;
  v190 = *(v189 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v191);
  sub_1C43FBC74();
  sub_1C43FCE30(v192);
  v193 = sub_1C456902C(&qword_1EC0B76F8, &qword_1C4F071C8);
  sub_1C43FFAE0(v193, &v269);
  v262[6] = v194;
  v196 = *(v195 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v197);
  sub_1C43FBC74();
  sub_1C43FCE30(v198);
  v199 = sub_1C456902C(&qword_1EC0B7700, &qword_1C4F071D0);
  sub_1C43FFAE0(v199, &v266);
  v262[3] = v200;
  v202 = *(v201 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v203);
  sub_1C43FBC74();
  sub_1C43FCE30(v204);
  v205 = sub_1C456902C(&qword_1EC0B7708, &qword_1C4F071D8);
  v206 = sub_1C43FCDF8(v205);
  v327 = v207;
  v328 = v206;
  v209 = *(v208 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v210);
  sub_1C43FBC74();
  sub_1C4417F70(v211);
  v212 = sub_1C456902C(&qword_1EC0B7710, &qword_1C4F071E0);
  v213 = sub_1C43FCDF8(v212);
  v324 = v214;
  v325 = v213;
  v216 = *(v215 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v217);
  sub_1C43FBC74();
  v323 = v218;
  v219 = sub_1C456902C(&qword_1EC0B7718, &qword_1C4F071E8);
  v220 = sub_1C43FCDF8(v219);
  v321 = v221;
  v322 = v220;
  v223 = *(v222 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v224);
  sub_1C4418964();
  v225 = sub_1C456902C(&qword_1EC0B7720, &qword_1C4F071F0);
  v226 = sub_1C43FCDF8(v225);
  v319 = v227;
  v320 = v226;
  v229 = *(v228 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v230);
  sub_1C4402A68();
  v231 = sub_1C456902C(&qword_1EC0B7728, &qword_1C4F071F8);
  sub_1C43FCDF8(v231);
  v262[1] = v232;
  v234 = *(v233 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v235);
  sub_1C43FE94C();
  v236 = sub_1C456902C(&qword_1EC0B7730, &qword_1C4F07200);
  v330 = sub_1C43FCDF8(v236);
  v331 = v237;
  v239 = *(v238 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v240);
  v242 = v262 - v241;
  v243 = *v27;
  v244 = v29[4];
  sub_1C4417F50(v29, v29[3]);
  sub_1C456A810();
  v329 = v242;
  sub_1C4F02BF8();
  switch(v243 >> 5)
  {
    case 1u:
      sub_1C442A898();
      sub_1C456B338();
      v259 = v329;
      v258 = v330;
      sub_1C440BAD0();
      sub_1C4F02718();
      HIBYTE(a10) = v243 & 0x1F;
      sub_1C456B38C();
      v260 = v322;
      sub_1C4F027E8();
      (*(v321 + 8))(v20, v260);
      v250 = *(v331 + 8);
      v249 = v259;
      v251 = v258;
      goto LABEL_9;
    case 2u:
      sub_1C442F628();
      sub_1C456B290();
      v255 = v323;
      sub_1C4423A6C();
      HIBYTE(a10) = v243 & 0x1F;
      sub_1C456B2E4();
      v256 = v325;
      sub_1C4F027E8();
      v257 = v324;
      goto LABEL_7;
    case 3u:
      sub_1C444AFEC();
      sub_1C456B1E8();
      v255 = v326;
      sub_1C4423A6C();
      HIBYTE(a10) = v243 & 0x1F;
      sub_1C456B23C();
      v256 = v328;
      sub_1C4F027E8();
      v257 = v327;
LABEL_7:
      (*(v257 + 8))(v255, v256);
      v249 = sub_1C43FE5EC();
      v251 = v23;
      goto LABEL_9;
    case 4u:
      switch(v243)
      {
        case 0x81u:
          sub_1C448DF7C();
          sub_1C456B194();
          sub_1C44116B8(&v264);
          v253 = sub_1C441E18C(&v265);
          v261 = &v266;
          goto LABEL_40;
        case 0x82u:
          sub_1C44229F8();
          sub_1C456B140();
          sub_1C44116B8(&v267);
          v253 = sub_1C441E18C(&v268);
          v261 = &v269;
          goto LABEL_40;
        case 0x83u:
          sub_1C442F084();
          sub_1C456B0EC();
          sub_1C44116B8(&v270);
          v253 = sub_1C441E18C(&v271);
          v261 = &v272;
          goto LABEL_40;
        case 0x84u:
          sub_1C4430580();
          sub_1C456B098();
          sub_1C44116B8(&v273);
          v253 = sub_1C441E18C(&v274);
          v261 = &v275;
          goto LABEL_40;
        case 0x85u:
          sub_1C4461F14();
          sub_1C456B044();
          sub_1C44116B8(&v276);
          v253 = sub_1C441E18C(&v277);
          v261 = &v278;
          goto LABEL_40;
        case 0x86u:
          sub_1C441B2D4();
          sub_1C456AFF0();
          sub_1C44116B8(&v279);
          v253 = sub_1C441E18C(&v280);
          v261 = &v281;
          goto LABEL_40;
        case 0x87u:
          sub_1C448F0CC();
          sub_1C456AF9C();
          sub_1C44116B8(&v282);
          v253 = sub_1C441E18C(&v283);
          v261 = &v284;
          goto LABEL_40;
        case 0x88u:
          sub_1C442A360();
          sub_1C456AF48();
          sub_1C44116B8(&v285);
          v253 = sub_1C441E18C(&v286);
          v261 = &v287;
          goto LABEL_40;
        case 0x89u:
          sub_1C4414134();
          sub_1C456AEF4();
          sub_1C44116B8(&v288);
          v253 = sub_1C441E18C(&v289);
          v261 = &v290;
          goto LABEL_40;
        case 0x8Au:
          sub_1C444AC68();
          sub_1C456AEA0();
          sub_1C44116B8(&v291);
          v253 = sub_1C441E18C(&v292);
          v261 = &v293;
          goto LABEL_40;
        case 0x8Bu:
          sub_1C4461BF8();
          sub_1C456AE4C();
          sub_1C44116B8(&v294);
          v253 = sub_1C441E18C(&v295);
          v261 = &v296;
          goto LABEL_40;
        case 0x8Cu:
          sub_1C4462384();
          sub_1C456ADF8();
          sub_1C44116B8(&v297);
          v253 = sub_1C441E18C(&v298);
          v261 = &v299;
          goto LABEL_40;
        case 0x8Du:
          sub_1C4440920();
          sub_1C456ADA4();
          sub_1C44116B8(&v300);
          v253 = sub_1C441E18C(&v301);
          v261 = &v302;
          goto LABEL_40;
        case 0x8Eu:
          sub_1C44144D8();
          sub_1C456AD50();
          sub_1C44116B8(&v303);
          v253 = sub_1C441E18C(&v304);
          v261 = &v305;
          goto LABEL_40;
        case 0x8Fu:
          sub_1C447CB84();
          sub_1C456ACFC();
          sub_1C44116B8(&v306);
          v253 = sub_1C441E18C(&v307);
          v261 = &v308;
          goto LABEL_40;
        case 0x90u:
          sub_1C4441888();
          sub_1C456ACA8();
          sub_1C44116B8(&v309);
          v253 = sub_1C441E18C(&v310);
          v261 = &v311;
          goto LABEL_40;
        case 0x91u:
          sub_1C442AAF4();
          sub_1C456AC54();
          sub_1C44116B8(&v312);
          v253 = sub_1C441E18C(&v313);
          v261 = &v314;
          goto LABEL_40;
        case 0x92u:
          sub_1C4440CC0();
          sub_1C456AC00();
          sub_1C44116B8(&v315);
          v253 = sub_1C441E18C(&v316);
          v261 = &v317;
          goto LABEL_40;
        case 0x93u:
          HIBYTE(a10) = 23;
          sub_1C456ABAC();
          sub_1C44116B8(&v318);
          v253 = sub_1C441E18C(&v319);
          v261 = &v320;
          goto LABEL_40;
        case 0x94u:
          HIBYTE(a10) = 24;
          sub_1C456AB58();
          sub_1C44116B8(&v321);
          v253 = sub_1C441E18C(&v322);
          v261 = &v323;
          goto LABEL_40;
        case 0x95u:
          HIBYTE(a10) = 25;
          sub_1C456AB04();
          sub_1C44116B8(&v324);
          v253 = sub_1C441E18C(&v325);
          v261 = &v326;
          goto LABEL_40;
        case 0x96u:
          HIBYTE(a10) = 26;
          sub_1C456AAB0();
          sub_1C44116B8(&v327);
          v253 = sub_1C441E18C(&v328);
          v261 = &v329;
          goto LABEL_40;
        case 0x97u:
          HIBYTE(a10) = 27;
          sub_1C456AA5C();
          sub_1C44116B8(&v330);
          v253 = sub_1C441E18C(&v331);
          v261 = &v332;
          goto LABEL_40;
        case 0x98u:
          HIBYTE(a10) = 28;
          sub_1C456AA08();
          sub_1C44116B8(&v333);
          v253 = sub_1C441E18C(&a9);
          v261 = &a10;
          goto LABEL_40;
        case 0x99u:
          HIBYTE(a10) = 29;
          sub_1C456A9B4();
          sub_1C44116B8(&a11);
          v253 = sub_1C441E18C(&a12);
          v261 = &a13;
          goto LABEL_40;
        case 0x9Au:
          HIBYTE(a10) = 30;
          sub_1C456A960();
          sub_1C44116B8(&a14);
          v253 = sub_1C441E18C(&a15);
          v261 = &a16;
LABEL_40:
          v254 = *(v261 - 32);
          break;
        case 0x9Bu:
          HIBYTE(a10) = 31;
          sub_1C456A90C();
          sub_1C44116B8(&a17);
          v253 = sub_1C441E18C(&a18);
          v254 = v312;
          break;
        case 0x9Cu:
          HIBYTE(a10) = 32;
          sub_1C456A8B8();
          sub_1C4416C94();
          goto LABEL_38;
        case 0x9Du:
          HIBYTE(a10) = 33;
          sub_1C456A864();
          sub_1C4416C94();
LABEL_38:
          v253 = sub_1C4401D04();
          break;
        default:
          HIBYTE(a10) = 0;
          sub_1C456B488();
          v29 = v329;
          v20 = v330;
          sub_1C44099B8();
          sub_1C4F02718();
          sub_1C43FFB20(&v263);
          v253 = v24;
          v254 = v231;
          break;
      }

      v252(v253, v254);
      (*(v331 + 8))(v29, v20);
      goto LABEL_42;
    default:
      sub_1C4459AE4();
      sub_1C456B3E0();
      v245 = v330;
      sub_1C44099B8();
      sub_1C4F02718();
      HIBYTE(a10) = v243;
      sub_1C456B434();
      v246 = v320;
      sub_1C4F027E8();
      v247 = sub_1C4401D04();
      v248(v247, v246);
      v249 = sub_1C43FE5EC();
      v251 = v245;
LABEL_9:
      v250(v249, v251);
LABEL_42:
      sub_1C43FBC80();
      return;
  }
}

void ActivityType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  sub_1C4460154(v25);
  v26 = sub_1C456902C(&qword_1EC0B7870, &qword_1C4F07208);
  sub_1C43FFAE0(v26, v461);
  v428 = v27;
  v29 = *(v28 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBC74();
  sub_1C4417F70(v31);
  v32 = sub_1C456902C(&qword_1EC0B7878, &qword_1C4F07210);
  sub_1C43FFAE0(v32, &v459);
  v426 = v33;
  v35 = *(v34 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBC74();
  sub_1C4451268(v37);
  v38 = sub_1C456902C(&qword_1EC0B7880, &qword_1C4F07218);
  sub_1C43FFAE0(v38, &v457);
  v424 = v39;
  v41 = *(v40 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C441087C(v43, v388);
  v44 = sub_1C456902C(&qword_1EC0B7888, &qword_1C4F07220);
  sub_1C43FFAE0(v44, &v455);
  v422 = v45;
  v47 = *(v46 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBC74();
  v455 = v49;
  v50 = sub_1C456902C(&qword_1EC0B7890, &qword_1C4F07228);
  sub_1C43FFAE0(v50, &v453);
  v420 = v51;
  v53 = *(v52 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBC74();
  v454 = v55;
  v56 = sub_1C456902C(&qword_1EC0B7898, &qword_1C4F07230);
  sub_1C43FFAE0(v56, &v451);
  v418 = v57;
  v59 = *(v58 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C442FA70(v61, v389);
  v62 = sub_1C456902C(&qword_1EC0B78A0, &qword_1C4F07238);
  sub_1C43FFAE0(v62, &v449);
  v416 = v63;
  v65 = *(v64 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v66);
  sub_1C43FBC74();
  v452 = v67;
  v68 = sub_1C456902C(&qword_1EC0B78A8, &qword_1C4F07240);
  sub_1C43FFAE0(v68, &v447);
  v414 = v69;
  v71 = *(v70 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v72);
  sub_1C43FBC74();
  v451 = v73;
  v74 = sub_1C456902C(&qword_1EC0B78B0, &qword_1C4F07248);
  sub_1C43FFAE0(v74, &v445);
  v412 = v75;
  v77 = *(v76 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v78);
  sub_1C43FBC74();
  v450 = v79;
  v80 = sub_1C456902C(&qword_1EC0B78B8, &qword_1C4F07250);
  sub_1C43FFAE0(v80, &v443);
  v410 = v81;
  v83 = *(v82 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v84);
  sub_1C43FBC74();
  v449 = v85;
  v86 = sub_1C456902C(&qword_1EC0B78C0, &qword_1C4F07258);
  sub_1C43FFAE0(v86, &v441);
  v408 = v87;
  v89 = *(v88 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v90);
  sub_1C43FBC74();
  sub_1C445BEF4(v91);
  v92 = sub_1C456902C(&qword_1EC0B78C8, &qword_1C4F07260);
  sub_1C43FFAE0(v92, &v439);
  v406 = v93;
  v95 = *(v94 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v96);
  sub_1C43FBC74();
  v447 = v97;
  v98 = sub_1C456902C(&qword_1EC0B78D0, &qword_1C4F07268);
  sub_1C43FFAE0(v98, &v437);
  v404 = v99;
  v101 = *(v100 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v102);
  sub_1C43FBC74();
  v446 = v103;
  v104 = sub_1C456902C(&qword_1EC0B78D8, &qword_1C4F07270);
  sub_1C43FFAE0(v104, &v435);
  v402 = v105;
  v107 = *(v106 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v108);
  sub_1C43FBC74();
  sub_1C444C200(v109);
  v110 = sub_1C456902C(&qword_1EC0B78E0, &qword_1C4F07278);
  sub_1C43FFAE0(v110, &v433);
  v400 = v111;
  v113 = *(v112 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v114);
  sub_1C43FBC74();
  v444 = v115;
  v116 = sub_1C456902C(&qword_1EC0B78E8, &qword_1C4F07280);
  sub_1C43FFAE0(v116, &v431);
  v398 = v117;
  v119 = *(v118 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v120);
  sub_1C43FBC74();
  sub_1C43FCE30(v121);
  v122 = sub_1C456902C(&qword_1EC0B78F0, &qword_1C4F07288);
  sub_1C43FFAE0(v122, &v429);
  v396 = v123;
  v125 = *(v124 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v126);
  sub_1C43FBC74();
  sub_1C43FCE30(v127);
  v128 = sub_1C456902C(&qword_1EC0B78F8, &qword_1C4F07290);
  sub_1C43FFAE0(v128, &v427);
  v394[1] = v129;
  v131 = *(v130 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v132);
  sub_1C43FBC74();
  sub_1C43FCE30(v133);
  v134 = sub_1C456902C(&qword_1EC0B7900, &qword_1C4F07298);
  sub_1C43FFAE0(v134, &v425);
  v136 = *(v135 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v137);
  sub_1C43FBC74();
  sub_1C43FCE30(v138);
  v139 = sub_1C456902C(&qword_1EC0B7908, &qword_1C4F072A0);
  sub_1C43FFAE0(v139, &v423);
  v141 = *(v140 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v142);
  sub_1C43FBC74();
  sub_1C43FCE30(v143);
  v144 = sub_1C456902C(&qword_1EC0B7910, &qword_1C4F072A8);
  sub_1C43FFAE0(v144, &v421);
  v146 = *(v145 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v147);
  sub_1C43FBC74();
  sub_1C43FCE30(v148);
  v149 = sub_1C456902C(&qword_1EC0B7918, &qword_1C4F072B0);
  sub_1C43FFAE0(v149, &v419);
  v151 = *(v150 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v152);
  sub_1C43FBC74();
  sub_1C43FCE30(v153);
  v154 = sub_1C456902C(&qword_1EC0B7920, &qword_1C4F072B8);
  sub_1C43FFAE0(v154, &v417);
  v156 = *(v155 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v157);
  sub_1C44258A4(v158, v390);
  v159 = sub_1C456902C(&qword_1EC0B7928, &qword_1C4F072C0);
  sub_1C43FFAE0(v159, &v415);
  v161 = *(v160 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v162);
  sub_1C43FBC74();
  sub_1C43FCE30(v163);
  v164 = sub_1C456902C(&qword_1EC0B7930, &qword_1C4F072C8);
  sub_1C43FFAE0(v164, &v408);
  v166 = *(v165 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v167);
  sub_1C43FBC74();
  sub_1C43FCE30(v168);
  v169 = sub_1C456902C(&qword_1EC0B7938, &qword_1C4F072D0);
  sub_1C43FFAE0(v169, &v412);
  v171 = *(v170 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v172);
  sub_1C43FBC74();
  v461[0] = v173;
  v174 = sub_1C456902C(&qword_1EC0B7940, &qword_1C4F072D8);
  sub_1C43FFAE0(v174, &v410);
  v176 = *(v175 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v177);
  sub_1C43FE938(v178, v391);
  v179 = sub_1C456902C(&qword_1EC0B7948, &qword_1C4F072E0);
  sub_1C43FFAE0(v179, &v407);
  v181 = *(v180 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v182);
  sub_1C43FBC74();
  sub_1C43FCE30(v183);
  v184 = sub_1C456902C(&qword_1EC0B7950, &qword_1C4F072E8);
  sub_1C43FFAE0(v184, &v404);
  v186 = *(v185 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v187);
  sub_1C43FBC74();
  sub_1C43FCE30(v188);
  v189 = sub_1C456902C(&qword_1EC0B7958, &qword_1C4F072F0);
  sub_1C43FFAE0(v189, &v405);
  v191 = *(v190 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v192);
  sub_1C43FBC74();
  sub_1C43FCE30(v193);
  v194 = sub_1C456902C(&qword_1EC0B7960, &qword_1C4F072F8);
  sub_1C43FFAE0(v194, &v402);
  v196 = *(v195 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v197);
  sub_1C43FBC74();
  sub_1C43FCE30(v198);
  v199 = sub_1C456902C(&qword_1EC0B7968, &qword_1C4F07300);
  sub_1C43FFAE0(v199, &v401);
  v201 = *(v200 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v202);
  sub_1C43FBC74();
  sub_1C43FCE30(v203);
  v204 = sub_1C456902C(&qword_1EC0B7970, &qword_1C4F07308);
  sub_1C43FFAE0(v204, &v400);
  v206 = *(v205 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v207);
  sub_1C440A474();
  v208 = sub_1C456902C(&qword_1EC0B7978, &qword_1C4F07310);
  sub_1C43FCDF8(v208);
  v210 = *(v209 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v211);
  sub_1C4418964();
  v212 = sub_1C456902C(&qword_1EC0B7980, &qword_1C4F07318);
  sub_1C43FCDF8(v212);
  v214 = v213;
  v216 = *(v215 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v217);
  sub_1C4402A68();
  v218 = v20[3];
  v219 = v20[4];
  v462 = v20;
  sub_1C4417F50(v20, v218);
  sub_1C456A810();
  v220 = v463;
  sub_1C4F02BC8();
  if (!v220)
  {
    v393 = v208;
    v221 = v460;
    v222 = v461[1];
    v463 = v214;
    v223 = sub_1C4F026E8();
    sub_1C4569EC0(v223, 0);
    v225 = v224;
    if (v227 != v226 >> 1)
    {
      sub_1C444FC04();
      sub_1C44182D0();
      if (v232 == v233)
      {
        __break(1u);
        return;
      }

      v392 = *(v231 + v229);
      sub_1C4570108(v229 + 1, v228, v225, v231, v229, v230);
      v235 = v234;
      v237 = v236;
      swift_unknownObjectRelease();
      if (v235 == v237 >> 1)
      {
        v238 = v459;
        switch(v392)
        {
          case 1:
            sub_1C4459AE4();
            sub_1C456B3E0();
            sub_1C4402A48();
            sub_1C456B5D8();
            sub_1C44099B8();
            sub_1C4F026C8();
            swift_unknownObjectRelease();
            sub_1C43FFB20(&v395);
            v385(v22);
            v386 = sub_1C4406450();
            v387(v386);
            v243 = HIBYTE(a10);
            break;
          case 2:
            sub_1C442A898();
            sub_1C456B338();
            sub_1C4402A48();
            sub_1C456B584();
            sub_1C443F090();
            sub_1C441D110();
            swift_unknownObjectRelease();
            sub_1C43FFB20(&v396);
            v375 = sub_1C43FE990();
            v376(v375);
            v377 = *(v222 + 8);
            v378 = sub_1C4404A98();
            v379(v378);
            v243 = HIBYTE(a10) | 0x20;
            break;
          case 3:
            sub_1C442F628();
            sub_1C456B290();
            sub_1C4402A48();
            sub_1C456B530();
            sub_1C443F090();
            sub_1C441D110();
            swift_unknownObjectRelease();
            sub_1C43FFB20(&v397);
            v380 = sub_1C43FE990();
            v381(v380);
            v382 = *(v222 + 8);
            v383 = sub_1C4404A98();
            v384(v383);
            v243 = HIBYTE(a10) | 0x40;
            break;
          case 4:
            sub_1C444AFEC();
            sub_1C456B1E8();
            sub_1C4402A48();
            sub_1C456B4DC();
            sub_1C443F090();
            sub_1C441D110();
            swift_unknownObjectRelease();
            sub_1C43FFB20(&v398);
            v370 = sub_1C43FE990();
            v371(v370);
            v372 = *(v222 + 8);
            v373 = sub_1C4404A98();
            v374(v373);
            v243 = HIBYTE(a10) | 0x60;
            break;
          case 5:
            sub_1C448DF7C();
            sub_1C456B194();
            sub_1C43FFAF8(&v463);
            swift_unknownObjectRelease();
            v310 = sub_1C4412B8C(&v403);
            v311(v310);
            v312 = sub_1C4406450();
            v313(v312);
            v243 = -127;
            break;
          case 6:
            sub_1C44229F8();
            sub_1C456B140();
            sub_1C43FFAF8(&a9);
            swift_unknownObjectRelease();
            v322 = sub_1C4412B8C(&v406);
            v323(v322);
            v324 = sub_1C4406450();
            v325(v324);
            v243 = -126;
            break;
          case 7:
            sub_1C442F084();
            sub_1C456B0EC();
            sub_1C4402A48();
            swift_unknownObjectRelease();
            sub_1C43FFB20(&v409);
            v295(v221);
            v296 = sub_1C4406450();
            v297(v296);
            v243 = -125;
            break;
          case 8:
            sub_1C4430580();
            sub_1C456B098();
            sub_1C4402A48();
            swift_unknownObjectRelease();
            v334 = sub_1C4412B8C(&v411);
            v335(v334);
            v336 = sub_1C4406450();
            v337(v336);
            v243 = -124;
            break;
          case 9:
            sub_1C4461F14();
            sub_1C456B044();
            sub_1C43FFAF8(&a10);
            swift_unknownObjectRelease();
            v279 = sub_1C4412B8C(&v413);
            v280(v279);
            v281 = sub_1C4406450();
            v282(v281);
            v243 = -123;
            break;
          case 10:
            sub_1C441B2D4();
            sub_1C456AFF0();
            sub_1C43FFAF8(&a11);
            swift_unknownObjectRelease();
            v330 = sub_1C4412B8C(&v414);
            v331(v330);
            v332 = sub_1C4406450();
            v333(v332);
            v243 = -122;
            break;
          case 11:
            sub_1C448F0CC();
            sub_1C456AF9C();
            sub_1C440A450();
            swift_unknownObjectRelease();
            v271 = sub_1C4412B8C(&v416);
            v272(v271);
            v273 = sub_1C4406450();
            v274(v273);
            v243 = -121;
            break;
          case 12:
            sub_1C442A360();
            sub_1C456AF48();
            sub_1C43FFAF8(&a12);
            swift_unknownObjectRelease();
            v275 = sub_1C4412B8C(&v418);
            v276(v275);
            v277 = sub_1C4406450();
            v278(v277);
            v243 = -120;
            break;
          case 13:
            sub_1C4414134();
            sub_1C456AEF4();
            sub_1C43FFAF8(&a13);
            swift_unknownObjectRelease();
            v318 = sub_1C4412B8C(&v420);
            v319(v318);
            v320 = sub_1C4406450();
            v321(v320);
            v243 = -119;
            break;
          case 14:
            sub_1C444AC68();
            sub_1C456AEA0();
            sub_1C43FFAF8(&a14);
            swift_unknownObjectRelease();
            v263 = sub_1C4412B8C(&v422);
            v264(v263);
            v265 = sub_1C4406450();
            v266(v265);
            v243 = -118;
            break;
          case 15:
            sub_1C4461BF8();
            sub_1C456AE4C();
            sub_1C43FFAF8(&a15);
            swift_unknownObjectRelease();
            v291 = sub_1C4412B8C(&v424);
            v292(v291, v394[0]);
            v293 = sub_1C4406450();
            v294(v293);
            v243 = -117;
            break;
          case 16:
            sub_1C4462384();
            sub_1C456ADF8();
            sub_1C43FFAF8(&a16);
            swift_unknownObjectRelease();
            v259 = sub_1C4412B8C(&v426);
            v260(v259, v395);
            v261 = sub_1C4406450();
            v262(v261);
            v243 = -116;
            break;
          case 17:
            sub_1C4440920();
            sub_1C456ADA4();
            sub_1C43FFAF8(&a17);
            swift_unknownObjectRelease();
            v302 = sub_1C4412B8C(&v428);
            v303(v302, v397);
            v304 = sub_1C4406450();
            v305(v304);
            v243 = -115;
            break;
          case 18:
            sub_1C44144D8();
            sub_1C456AD50();
            sub_1C43FFAF8(&a18);
            swift_unknownObjectRelease();
            v326 = sub_1C4412B8C(&v430);
            v327(v326, v399);
            v328 = sub_1C4406450();
            v329(v328);
            v243 = -114;
            break;
          case 19:
            sub_1C447CB84();
            sub_1C456ACFC();
            sub_1C440A450();
            swift_unknownObjectRelease();
            v350 = sub_1C4412B8C(&v432);
            v351(v350, v401);
            v352 = sub_1C4406450();
            v353(v352);
            v243 = -113;
            break;
          case 20:
            sub_1C4441888();
            sub_1C456ACA8();
            sub_1C440A450();
            swift_unknownObjectRelease();
            v306 = sub_1C4412B8C(&v434);
            v307(v306, v403);
            v308 = sub_1C4406450();
            v309(v308);
            v243 = -112;
            break;
          case 21:
            sub_1C442AAF4();
            sub_1C456AC54();
            sub_1C440A450();
            swift_unknownObjectRelease();
            v314 = sub_1C4412B8C(&v436);
            v315(v314, v405);
            v316 = sub_1C4406450();
            v317(v316);
            v243 = -111;
            break;
          case 22:
            sub_1C4440CC0();
            sub_1C456AC00();
            sub_1C440A450();
            swift_unknownObjectRelease();
            v346 = sub_1C4412B8C(&v438);
            v347(v346, v407);
            v348 = sub_1C4406450();
            v349(v348);
            v243 = -110;
            break;
          case 23:
            HIBYTE(a10) = 23;
            sub_1C456ABAC();
            sub_1C440A450();
            swift_unknownObjectRelease();
            v354 = sub_1C4412B8C(&v440);
            v355(v354, v409);
            v356 = sub_1C4406450();
            v357(v356);
            v243 = -109;
            break;
          case 24:
            HIBYTE(a10) = 24;
            sub_1C456AB58();
            sub_1C440A450();
            swift_unknownObjectRelease();
            v287 = sub_1C4412B8C(&v442);
            v288(v287, v411);
            v289 = sub_1C4406450();
            v290(v289);
            v243 = -108;
            break;
          case 25:
            HIBYTE(a10) = 25;
            sub_1C456AB04();
            sub_1C440A450();
            swift_unknownObjectRelease();
            v283 = sub_1C4412B8C(&v444);
            v284(v283, v413);
            v285 = sub_1C4406450();
            v286(v285);
            v243 = -107;
            break;
          case 26:
            HIBYTE(a10) = 26;
            sub_1C456AAB0();
            sub_1C440A450();
            swift_unknownObjectRelease();
            v366 = sub_1C4412B8C(&v446);
            v367(v366, v415);
            v368 = sub_1C4406450();
            v369(v368);
            v243 = -106;
            break;
          case 27:
            HIBYTE(a10) = 27;
            sub_1C456AA5C();
            sub_1C440A450();
            swift_unknownObjectRelease();
            v255 = sub_1C4412B8C(&v448);
            v256(v255, v417);
            v257 = sub_1C4406450();
            v258(v257);
            v243 = -105;
            break;
          case 28:
            HIBYTE(a10) = 28;
            sub_1C456AA08();
            sub_1C440A450();
            swift_unknownObjectRelease();
            v358 = sub_1C4412B8C(&v450);
            v359(v358, v419);
            v360 = sub_1C4406450();
            v361(v360);
            v243 = -104;
            break;
          case 29:
            HIBYTE(a10) = 29;
            sub_1C456A9B4();
            sub_1C440A450();
            swift_unknownObjectRelease();
            v362 = sub_1C4412B8C(&v452);
            v363(v362, v421);
            v364 = sub_1C4406450();
            v365(v364);
            v243 = -103;
            break;
          case 30:
            HIBYTE(a10) = 30;
            sub_1C456A960();
            sub_1C440A450();
            swift_unknownObjectRelease();
            v338 = sub_1C4412B8C(&v454);
            v339(v338, v423);
            v340 = sub_1C4406450();
            v341(v340);
            v243 = -102;
            break;
          case 31:
            HIBYTE(a10) = 31;
            sub_1C456A90C();
            sub_1C440A450();
            swift_unknownObjectRelease();
            v298 = sub_1C4412B8C(&v456);
            v299(v298, v425);
            v300 = sub_1C4406450();
            v301(v300);
            v243 = -101;
            break;
          case 32:
            HIBYTE(a10) = 32;
            sub_1C456A8B8();
            sub_1C440A450();
            swift_unknownObjectRelease();
            v342 = sub_1C4412B8C(&v458);
            v343(v342, v427);
            v344 = sub_1C4406450();
            v345(v344);
            v243 = -100;
            break;
          case 33:
            HIBYTE(a10) = 33;
            sub_1C456A864();
            sub_1C440A450();
            swift_unknownObjectRelease();
            v267 = sub_1C4412B8C(&v460);
            v268(v267, v429);
            v269 = sub_1C4406450();
            v270(v269);
            v243 = -99;
            break;
          default:
            HIBYTE(a10) = 0;
            sub_1C456B488();
            sub_1C43FFAF8(v394);
            swift_unknownObjectRelease();
            v239 = sub_1C4412B8C(&v399);
            v240(v239, v393);
            v241 = sub_1C4406450();
            v242(v241);
            v243 = 0x80;
            break;
        }

        v254 = v462;
        *v238 = v243;
        goto LABEL_10;
      }
    }

    v244 = v21;
    sub_1C4F022E8();
    sub_1C43FFB2C();
    v246 = v245;
    v247 = *(sub_1C456902C(&qword_1EC0B7410, &qword_1C4F06F90) + 48);
    *v246 = &type metadata for ActivityType;
    sub_1C4F025F8();
    sub_1C44157FC();
    v248 = *MEMORY[0x1E69E6AF8];
    sub_1C4402A78();
    v250 = *(v249 + 104);
    v251 = sub_1C4434510();
    v252(v251);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1C441E19C();
    v253(v244, v212);
  }

  v254 = v462;
LABEL_10:
  sub_1C440962C(v254);
  sub_1C43FBC80();
}

uint64_t sub_1C4568E4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1C4806D24(a1);
  result = type metadata accessor for PhotosAutonamingViewFeedbackProcessor();
  a2[3] = result;
  a2[4] = &off_1F43F8280;
  *a2 = v3;
  return result;
}

uint64_t sub_1C4568F7C(uint64_t a1)
{
  v2 = sub_1C4418974(a1);
  result = sub_1C4C06F00(v2, *v3);
  *v1 = result;
  return result;
}

uint64_t sub_1C4568FA8(uint64_t a1)
{
  v2 = sub_1C4418974(a1);
  result = sub_1C4C06F10(v2, *v3);
  *v1 = result;
  return result;
}

uint64_t sub_1C4568FD4(uint64_t a1)
{
  v2 = sub_1C4418974(a1);
  result = sub_1C4C06F2C(v2, *v3);
  *v1 = result;
  return result;
}

uint64_t sub_1C4569000(uint64_t a1)
{
  v2 = sub_1C4418974(a1);
  result = sub_1C4C06F50(v2, *v3);
  *v1 = result;
  return result;
}

uint64_t sub_1C456902C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1C4569074()
{
  result = qword_1EC0B7290;
  if (!qword_1EC0B7290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7290);
  }

  return result;
}

unint64_t sub_1C45690C8()
{
  result = qword_1EC0B7298;
  if (!qword_1EC0B7298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7298);
  }

  return result;
}

unint64_t sub_1C456911C()
{
  result = qword_1EC0B72A0;
  if (!qword_1EC0B72A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B72A0);
  }

  return result;
}

unint64_t sub_1C4569170()
{
  result = qword_1EC0B72A8;
  if (!qword_1EC0B72A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B72A8);
  }

  return result;
}

unint64_t sub_1C45691C4()
{
  result = qword_1EC0B72B0;
  if (!qword_1EC0B72B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B72B0);
  }

  return result;
}

unint64_t sub_1C4569218()
{
  result = qword_1EC0B72B8;
  if (!qword_1EC0B72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B72B8);
  }

  return result;
}

unint64_t sub_1C456926C()
{
  result = qword_1EC0B72C0;
  if (!qword_1EC0B72C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B72C0);
  }

  return result;
}

unint64_t sub_1C45692C0()
{
  result = qword_1EC0B72C8;
  if (!qword_1EC0B72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B72C8);
  }

  return result;
}

unint64_t sub_1C4569314()
{
  result = qword_1EC0B72D0;
  if (!qword_1EC0B72D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B72D0);
  }

  return result;
}

unint64_t sub_1C4569368()
{
  result = qword_1EC0B72D8;
  if (!qword_1EC0B72D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B72D8);
  }

  return result;
}

unint64_t sub_1C45693BC()
{
  result = qword_1EC0B72E0;
  if (!qword_1EC0B72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B72E0);
  }

  return result;
}

unint64_t sub_1C4569410()
{
  result = qword_1EC0B72E8;
  if (!qword_1EC0B72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B72E8);
  }

  return result;
}

unint64_t sub_1C4569464()
{
  result = qword_1EC0B72F0;
  if (!qword_1EC0B72F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B72F0);
  }

  return result;
}

unint64_t sub_1C45694B8()
{
  result = qword_1EC0B72F8;
  if (!qword_1EC0B72F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B72F8);
  }

  return result;
}

unint64_t sub_1C456950C()
{
  result = qword_1EC0B7300;
  if (!qword_1EC0B7300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7300);
  }

  return result;
}

unint64_t sub_1C4569560()
{
  result = qword_1EC0B7308;
  if (!qword_1EC0B7308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7308);
  }

  return result;
}

unint64_t sub_1C45695B4()
{
  result = qword_1EC0B7310;
  if (!qword_1EC0B7310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7310);
  }

  return result;
}

unint64_t sub_1C4569608()
{
  result = qword_1EC0B7318;
  if (!qword_1EC0B7318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7318);
  }

  return result;
}

unint64_t sub_1C456965C()
{
  result = qword_1EC0B7320;
  if (!qword_1EC0B7320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7320);
  }

  return result;
}

unint64_t sub_1C45696B0()
{
  result = qword_1EC0B7328;
  if (!qword_1EC0B7328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7328);
  }

  return result;
}

unint64_t sub_1C4569704()
{
  result = qword_1EC0B7330;
  if (!qword_1EC0B7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7330);
  }

  return result;
}

unint64_t sub_1C4569758()
{
  result = qword_1EC0B7338;
  if (!qword_1EC0B7338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7338);
  }

  return result;
}

unint64_t sub_1C45697AC()
{
  result = qword_1EC0B7340;
  if (!qword_1EC0B7340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7340);
  }

  return result;
}

unint64_t sub_1C4569800()
{
  result = qword_1EC0B7348;
  if (!qword_1EC0B7348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7348);
  }

  return result;
}

uint64_t sub_1C456986C()
{
  v1 = sub_1C44269DC();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1C45698A0@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C4568E3C(*a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1C45698D4@<X0>(_WORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1C4569924()
{
  v1 = sub_1C440C330();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1C4569980@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1C45699AC()
{
  v1 = sub_1C44269DC();
  result = sub_1C4569E00(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1C45699E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4569E00(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C4569A0C(uint64_t a1)
{
  v2 = sub_1C456C810(&qword_1EC0B80F0, type metadata accessor for BMUseCaseIdentifier);
  v3 = sub_1C456C810(&qword_1EC0B80F8, type metadata accessor for BMUseCaseIdentifier);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C4569AC8(uint64_t a1)
{
  v2 = sub_1C456C810(&qword_1EC0B82C0, type metadata accessor for BMStreamIdentifier);
  v3 = sub_1C456C810(&unk_1EC0B82C8, type metadata accessor for BMStreamIdentifier);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C4569B84(uint64_t a1)
{
  v2 = sub_1C456C810(&qword_1EC0B8100, type metadata accessor for GEOPOICategory);
  v3 = sub_1C456C810(&qword_1EC0B8108, type metadata accessor for GEOPOICategory);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C4569C40(uint64_t a1)
{
  v2 = sub_1C456C810(&qword_1EDDDBB40, type metadata accessor for NLLanguage);
  v3 = sub_1C456C810(&qword_1EC0B82D8, type metadata accessor for NLLanguage);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C4569CFC(uint64_t a1)
{
  v2 = sub_1C456C810(&qword_1EDDF0440, type metadata accessor for NSTextCheckingKey);
  v3 = sub_1C456C810(&unk_1EC0B82A8, type metadata accessor for NSTextCheckingKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C4569DB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C4F01108();

  *a2 = v5;
  return result;
}

uint64_t sub_1C4569E04(uint64_t a1)
{
  v2 = sub_1C456C810(&unk_1EDDF03F0, type metadata accessor for FileAttributeKey);
  v3 = sub_1C456C810(&qword_1EC0B82B8, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void sub_1C4569EC0(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_1C4440F38();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1C4569EF8(uint64_t a1, id *a2)
{
  v3 = sub_1C4F01128();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C4569F78()
{
  v0 = sub_1C4F01138();
  v2 = v1;
  if (v0 == sub_1C4F01138() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1C4F02938();
  }

  return v5 & 1;
}

uint64_t sub_1C4569FFC()
{
  sub_1C4F01138();
  sub_1C4F02AF8();
  sub_1C4F01298();
  v0 = sub_1C4F02B68();

  return v0;
}

uint64_t sub_1C456A070()
{
  sub_1C4F01138();
  sub_1C4F01298();
}

unint64_t sub_1C456A0C4()
{
  result = qword_1EC0B7448;
  if (!qword_1EC0B7448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7448);
  }

  return result;
}

unint64_t sub_1C456A118()
{
  result = qword_1EC0B7450;
  if (!qword_1EC0B7450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7450);
  }

  return result;
}

unint64_t sub_1C456A16C()
{
  result = qword_1EC0B7458;
  if (!qword_1EC0B7458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7458);
  }

  return result;
}

unint64_t sub_1C456A1C0()
{
  result = qword_1EC0B7460;
  if (!qword_1EC0B7460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7460);
  }

  return result;
}

unint64_t sub_1C456A214()
{
  result = qword_1EC0B7468;
  if (!qword_1EC0B7468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7468);
  }

  return result;
}

unint64_t sub_1C456A268()
{
  result = qword_1EC0B7470;
  if (!qword_1EC0B7470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7470);
  }

  return result;
}

unint64_t sub_1C456A2BC()
{
  result = qword_1EC0B74F0;
  if (!qword_1EC0B74F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B74F0);
  }

  return result;
}

unint64_t sub_1C456A310()
{
  result = qword_1EC0B74F8;
  if (!qword_1EC0B74F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B74F8);
  }

  return result;
}

unint64_t sub_1C456A364()
{
  result = qword_1EC0B7500;
  if (!qword_1EC0B7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7500);
  }

  return result;
}

unint64_t sub_1C456A3B8()
{
  result = qword_1EC0B7508;
  if (!qword_1EC0B7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7508);
  }

  return result;
}

unint64_t sub_1C456A40C()
{
  result = qword_1EC0B7510;
  if (!qword_1EC0B7510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7510);
  }

  return result;
}

unint64_t sub_1C456A460()
{
  result = qword_1EC0B7518;
  if (!qword_1EC0B7518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7518);
  }

  return result;
}

unint64_t sub_1C456A4B4()
{
  result = qword_1EC0B7520;
  if (!qword_1EC0B7520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7520);
  }

  return result;
}

unint64_t sub_1C456A508()
{
  result = qword_1EC0B7528;
  if (!qword_1EC0B7528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7528);
  }

  return result;
}

unint64_t sub_1C456A55C()
{
  result = qword_1EC0B7530;
  if (!qword_1EC0B7530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7530);
  }

  return result;
}

unint64_t sub_1C456A5B0()
{
  result = qword_1EC0B75B0;
  if (!qword_1EC0B75B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B75B0);
  }

  return result;
}

unint64_t sub_1C456A604()
{
  result = qword_1EC0B75B8;
  if (!qword_1EC0B75B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B75B8);
  }

  return result;
}

unint64_t sub_1C456A658()
{
  result = qword_1EC0B75C0;
  if (!qword_1EC0B75C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B75C0);
  }

  return result;
}

unint64_t sub_1C456A6AC()
{
  result = qword_1EC0B75C8;
  if (!qword_1EC0B75C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B75C8);
  }

  return result;
}

unint64_t sub_1C456A700()
{
  result = qword_1EC0B75D0;
  if (!qword_1EC0B75D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B75D0);
  }

  return result;
}

unint64_t sub_1C456A754()
{
  result = qword_1EC0B75D8;
  if (!qword_1EC0B75D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B75D8);
  }

  return result;
}

uint64_t sub_1C456A7A8(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C456A810()
{
  result = qword_1EC0B7738;
  if (!qword_1EC0B7738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7738);
  }

  return result;
}

unint64_t sub_1C456A864()
{
  result = qword_1EC0B7740;
  if (!qword_1EC0B7740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7740);
  }

  return result;
}

unint64_t sub_1C456A8B8()
{
  result = qword_1EC0B7748;
  if (!qword_1EC0B7748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7748);
  }

  return result;
}

unint64_t sub_1C456A90C()
{
  result = qword_1EC0B7750;
  if (!qword_1EC0B7750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7750);
  }

  return result;
}

unint64_t sub_1C456A960()
{
  result = qword_1EC0B7758;
  if (!qword_1EC0B7758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7758);
  }

  return result;
}

unint64_t sub_1C456A9B4()
{
  result = qword_1EC0B7760;
  if (!qword_1EC0B7760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7760);
  }

  return result;
}

unint64_t sub_1C456AA08()
{
  result = qword_1EC0B7768;
  if (!qword_1EC0B7768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7768);
  }

  return result;
}

unint64_t sub_1C456AA5C()
{
  result = qword_1EC0B7770;
  if (!qword_1EC0B7770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7770);
  }

  return result;
}

unint64_t sub_1C456AAB0()
{
  result = qword_1EC0B7778;
  if (!qword_1EC0B7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7778);
  }

  return result;
}

unint64_t sub_1C456AB04()
{
  result = qword_1EC0B7780;
  if (!qword_1EC0B7780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7780);
  }

  return result;
}

unint64_t sub_1C456AB58()
{
  result = qword_1EC0B7788;
  if (!qword_1EC0B7788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7788);
  }

  return result;
}

unint64_t sub_1C456ABAC()
{
  result = qword_1EC0B7790;
  if (!qword_1EC0B7790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7790);
  }

  return result;
}

unint64_t sub_1C456AC00()
{
  result = qword_1EC0B7798;
  if (!qword_1EC0B7798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7798);
  }

  return result;
}

unint64_t sub_1C456AC54()
{
  result = qword_1EC0B77A0;
  if (!qword_1EC0B77A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B77A0);
  }

  return result;
}

unint64_t sub_1C456ACA8()
{
  result = qword_1EC0B77A8;
  if (!qword_1EC0B77A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B77A8);
  }

  return result;
}

unint64_t sub_1C456ACFC()
{
  result = qword_1EC0B77B0;
  if (!qword_1EC0B77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B77B0);
  }

  return result;
}

unint64_t sub_1C456AD50()
{
  result = qword_1EC0B77B8;
  if (!qword_1EC0B77B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B77B8);
  }

  return result;
}

unint64_t sub_1C456ADA4()
{
  result = qword_1EC0B77C0;
  if (!qword_1EC0B77C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B77C0);
  }

  return result;
}

unint64_t sub_1C456ADF8()
{
  result = qword_1EC0B77C8;
  if (!qword_1EC0B77C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B77C8);
  }

  return result;
}

unint64_t sub_1C456AE4C()
{
  result = qword_1EC0B77D0;
  if (!qword_1EC0B77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B77D0);
  }

  return result;
}

unint64_t sub_1C456AEA0()
{
  result = qword_1EC0B77D8;
  if (!qword_1EC0B77D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B77D8);
  }

  return result;
}

unint64_t sub_1C456AEF4()
{
  result = qword_1EC0B77E0;
  if (!qword_1EC0B77E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B77E0);
  }

  return result;
}

unint64_t sub_1C456AF48()
{
  result = qword_1EC0B77E8;
  if (!qword_1EC0B77E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B77E8);
  }

  return result;
}

unint64_t sub_1C456AF9C()
{
  result = qword_1EC0B77F0;
  if (!qword_1EC0B77F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B77F0);
  }

  return result;
}

unint64_t sub_1C456AFF0()
{
  result = qword_1EC0B77F8;
  if (!qword_1EC0B77F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B77F8);
  }

  return result;
}

unint64_t sub_1C456B044()
{
  result = qword_1EC0B7800;
  if (!qword_1EC0B7800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7800);
  }

  return result;
}

unint64_t sub_1C456B098()
{
  result = qword_1EC0B7808;
  if (!qword_1EC0B7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7808);
  }

  return result;
}

unint64_t sub_1C456B0EC()
{
  result = qword_1EC0B7810;
  if (!qword_1EC0B7810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7810);
  }

  return result;
}

unint64_t sub_1C456B140()
{
  result = qword_1EC0B7818;
  if (!qword_1EC0B7818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7818);
  }

  return result;
}

unint64_t sub_1C456B194()
{
  result = qword_1EC0B7820;
  if (!qword_1EC0B7820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7820);
  }

  return result;
}

unint64_t sub_1C456B1E8()
{
  result = qword_1EC0B7828;
  if (!qword_1EC0B7828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7828);
  }

  return result;
}

unint64_t sub_1C456B23C()
{
  result = qword_1EC0B7830;
  if (!qword_1EC0B7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7830);
  }

  return result;
}

unint64_t sub_1C456B290()
{
  result = qword_1EC0B7838;
  if (!qword_1EC0B7838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7838);
  }

  return result;
}

unint64_t sub_1C456B2E4()
{
  result = qword_1EC0B7840;
  if (!qword_1EC0B7840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7840);
  }

  return result;
}

unint64_t sub_1C456B338()
{
  result = qword_1EC0B7848;
  if (!qword_1EC0B7848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7848);
  }

  return result;
}

unint64_t sub_1C456B38C()
{
  result = qword_1EC0B7850;
  if (!qword_1EC0B7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7850);
  }

  return result;
}

unint64_t sub_1C456B3E0()
{
  result = qword_1EC0B7858;
  if (!qword_1EC0B7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7858);
  }

  return result;
}

unint64_t sub_1C456B434()
{
  result = qword_1EC0B7860;
  if (!qword_1EC0B7860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7860);
  }

  return result;
}

unint64_t sub_1C456B488()
{
  result = qword_1EC0B7868;
  if (!qword_1EC0B7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7868);
  }

  return result;
}

unint64_t sub_1C456B4DC()
{
  result = qword_1EC0B7988;
  if (!qword_1EC0B7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7988);
  }

  return result;
}

unint64_t sub_1C456B530()
{
  result = qword_1EC0B7990;
  if (!qword_1EC0B7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7990);
  }

  return result;
}

unint64_t sub_1C456B584()
{
  result = qword_1EC0B7998;
  if (!qword_1EC0B7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7998);
  }

  return result;
}

unint64_t sub_1C456B5D8()
{
  result = qword_1EC0B79A0;
  if (!qword_1EC0B79A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B79A0);
  }

  return result;
}

unint64_t sub_1C456B630()
{
  result = qword_1EC0B79A8;
  if (!qword_1EC0B79A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B79A8);
  }

  return result;
}

unint64_t sub_1C456B688()
{
  result = qword_1EC0B79B0;
  if (!qword_1EC0B79B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B79B0);
  }

  return result;
}

unint64_t sub_1C456B6E0()
{
  result = qword_1EC0B79B8;
  if (!qword_1EC0B79B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B79B8);
  }

  return result;
}

unint64_t sub_1C456B738()
{
  result = qword_1EC0B79C0;
  if (!qword_1EC0B79C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B79C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 4)
  {
    if (a2 + 252 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 252) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 253;
    return v5 + 1;
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 0x9F)
  {
    v5 = -1;
  }

  else
  {
    v5 = (v6 ^ 0xE0) >> 5;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for ActivityType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 252 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 252) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 3)
  {
    v6 = ((a2 - 4) >> 8) + 1;
    *result = a2 - 4;
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
          *result = -32 * a2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C456B928(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 5;
  }

  else
  {
    return (v1 & 0x1Fu) + 4;
  }
}

_BYTE *sub_1C456B954(_BYTE *result, unsigned int a2)
{
  if (a2 < 4)
  {
    v2 = *result & 0x1F | (32 * a2);
  }

  else
  {
    v2 = (a2 + 28) & 0x1F | 0x80;
  }

  *result = v2;
  return result;
}

__n128 sub_1C456B98C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C456B998(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C456B9B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ActivityType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDF)
  {
    if (a2 + 33 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 33) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 34;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x22;
  v5 = v6 - 34;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ActivityType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 33 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 33) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDE)
  {
    v6 = ((a2 - 223) >> 8) + 1;
    *result = a2 + 33;
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
          *result = a2 + 33;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C456BC64(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1C456BF40(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1C4440CB8(result, v6);
        break;
      case 2:
        result = sub_1C4417F68(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1C441DC4C(result, v6);
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
          result = sub_1C4423610(result, a2 + 7);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C456C08C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1C4440CB8(result, v6);
        break;
      case 2:
        result = sub_1C4417F68(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1C441DC4C(result, v6);
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
          result = sub_1C4423610(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C456C1A8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1C4430578(-1);
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
    if (v4)
    {
      return sub_1C4430578((*a1 | (v4 << 8)) - 23);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return sub_1C4430578((*a1 | (v4 << 8)) - 23);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1C4430578((*a1 | (v4 << 8)) - 23);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1C4430578(v8);
}

_BYTE *sub_1C456C22C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE9)
  {
    v6 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
    switch(v5)
    {
      case 1:
        result = sub_1C4440CB8(result, v6);
        break;
      case 2:
        result = sub_1C4417F68(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1C441DC4C(result, v6);
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
          result = sub_1C4423610(result, a2 + 22);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C456C46C()
{
  result = qword_1EC0B7AB0;
  if (!qword_1EC0B7AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7AB0);
  }

  return result;
}

unint64_t sub_1C456C4C4()
{
  result = qword_1EC0B7AB8;
  if (!qword_1EC0B7AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7AB8);
  }

  return result;
}

unint64_t sub_1C456C51C()
{
  result = qword_1EC0B7AC0;
  if (!qword_1EC0B7AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7AC0);
  }

  return result;
}

unint64_t sub_1C456C574()
{
  result = qword_1EC0B7AC8;
  if (!qword_1EC0B7AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7AC8);
  }

  return result;
}

unint64_t sub_1C456C5CC()
{
  result = qword_1EC0B7AD0;
  if (!qword_1EC0B7AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7AD0);
  }

  return result;
}

unint64_t sub_1C456C624()
{
  result = qword_1EC0B7AD8;
  if (!qword_1EC0B7AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7AD8);
  }

  return result;
}

unint64_t sub_1C456C67C()
{
  result = qword_1EC0B7AE0;
  if (!qword_1EC0B7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7AE0);
  }

  return result;
}

unint64_t sub_1C456C6D4()
{
  result = qword_1EC0B7AE8;
  if (!qword_1EC0B7AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7AE8);
  }

  return result;
}

unint64_t sub_1C456C72C()
{
  result = qword_1EC0B7AF0;
  if (!qword_1EC0B7AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7AF0);
  }

  return result;
}

uint64_t sub_1C456C810(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C456CA0C()
{
  result = qword_1EC0B7B28;
  if (!qword_1EC0B7B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7B28);
  }

  return result;
}

unint64_t sub_1C456CA64()
{
  result = qword_1EC0B7B30;
  if (!qword_1EC0B7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7B30);
  }

  return result;
}

unint64_t sub_1C456CABC()
{
  result = qword_1EC0B7B38;
  if (!qword_1EC0B7B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7B38);
  }

  return result;
}

unint64_t sub_1C456CB14()
{
  result = qword_1EC0B7B40;
  if (!qword_1EC0B7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7B40);
  }

  return result;
}

unint64_t sub_1C456CB6C()
{
  result = qword_1EC0B7B48;
  if (!qword_1EC0B7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7B48);
  }

  return result;
}

unint64_t sub_1C456CBC4()
{
  result = qword_1EC0B7B50;
  if (!qword_1EC0B7B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7B50);
  }

  return result;
}

unint64_t sub_1C456CC1C()
{
  result = qword_1EC0B7B58;
  if (!qword_1EC0B7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7B58);
  }

  return result;
}

unint64_t sub_1C456CC74()
{
  result = qword_1EC0B7B60;
  if (!qword_1EC0B7B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7B60);
  }

  return result;
}

unint64_t sub_1C456CCCC()
{
  result = qword_1EC0B7B68;
  if (!qword_1EC0B7B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7B68);
  }

  return result;
}

unint64_t sub_1C456CD24()
{
  result = qword_1EC0B7B70;
  if (!qword_1EC0B7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7B70);
  }

  return result;
}

unint64_t sub_1C456CD7C()
{
  result = qword_1EC0B7B78;
  if (!qword_1EC0B7B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7B78);
  }

  return result;
}

unint64_t sub_1C456CDD4()
{
  result = qword_1EC0B7B80;
  if (!qword_1EC0B7B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7B80);
  }

  return result;
}

unint64_t sub_1C456CE2C()
{
  result = qword_1EC0B7B88;
  if (!qword_1EC0B7B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7B88);
  }

  return result;
}

unint64_t sub_1C456CE84()
{
  result = qword_1EC0B7B90;
  if (!qword_1EC0B7B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7B90);
  }

  return result;
}

unint64_t sub_1C456CEDC()
{
  result = qword_1EC0B7B98;
  if (!qword_1EC0B7B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7B98);
  }

  return result;
}

unint64_t sub_1C456CF34()
{
  result = qword_1EC0B7BA0;
  if (!qword_1EC0B7BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7BA0);
  }

  return result;
}

unint64_t sub_1C456CF8C()
{
  result = qword_1EC0B7BA8;
  if (!qword_1EC0B7BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7BA8);
  }

  return result;
}

unint64_t sub_1C456CFE4()
{
  result = qword_1EC0B7BB0;
  if (!qword_1EC0B7BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7BB0);
  }

  return result;
}

unint64_t sub_1C456D03C()
{
  result = qword_1EC0B7BB8;
  if (!qword_1EC0B7BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7BB8);
  }

  return result;
}

unint64_t sub_1C456D094()
{
  result = qword_1EC0B7BC0;
  if (!qword_1EC0B7BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7BC0);
  }

  return result;
}

unint64_t sub_1C456D0EC()
{
  result = qword_1EC0B7BC8;
  if (!qword_1EC0B7BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7BC8);
  }

  return result;
}

unint64_t sub_1C456D144()
{
  result = qword_1EC0B7BD0;
  if (!qword_1EC0B7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7BD0);
  }

  return result;
}

unint64_t sub_1C456D19C()
{
  result = qword_1EC0B7BD8;
  if (!qword_1EC0B7BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7BD8);
  }

  return result;
}

unint64_t sub_1C456D1F4()
{
  result = qword_1EC0B7BE0;
  if (!qword_1EC0B7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7BE0);
  }

  return result;
}

unint64_t sub_1C456D24C()
{
  result = qword_1EC0B7BE8;
  if (!qword_1EC0B7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7BE8);
  }

  return result;
}

unint64_t sub_1C456D2A4()
{
  result = qword_1EC0B7BF0;
  if (!qword_1EC0B7BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7BF0);
  }

  return result;
}

unint64_t sub_1C456D2FC()
{
  result = qword_1EC0B7BF8;
  if (!qword_1EC0B7BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7BF8);
  }

  return result;
}

unint64_t sub_1C456D354()
{
  result = qword_1EC0B7C00;
  if (!qword_1EC0B7C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7C00);
  }

  return result;
}

unint64_t sub_1C456D3AC()
{
  result = qword_1EC0B7C08;
  if (!qword_1EC0B7C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7C08);
  }

  return result;
}

unint64_t sub_1C456D404()
{
  result = qword_1EC0B7C10;
  if (!qword_1EC0B7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7C10);
  }

  return result;
}

unint64_t sub_1C456D45C()
{
  result = qword_1EC0B7C18;
  if (!qword_1EC0B7C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7C18);
  }

  return result;
}

unint64_t sub_1C456D4B4()
{
  result = qword_1EC0B7C20;
  if (!qword_1EC0B7C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7C20);
  }

  return result;
}

unint64_t sub_1C456D50C()
{
  result = qword_1EC0B7C28;
  if (!qword_1EC0B7C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7C28);
  }

  return result;
}

unint64_t sub_1C456D564()
{
  result = qword_1EC0B7C30;
  if (!qword_1EC0B7C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7C30);
  }

  return result;
}

unint64_t sub_1C456D5BC()
{
  result = qword_1EC0B7C38;
  if (!qword_1EC0B7C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7C38);
  }

  return result;
}

unint64_t sub_1C456D614()
{
  result = qword_1EC0B7C40;
  if (!qword_1EC0B7C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7C40);
  }

  return result;
}

unint64_t sub_1C456D66C()
{
  result = qword_1EC0B7C48;
  if (!qword_1EC0B7C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7C48);
  }

  return result;
}

unint64_t sub_1C456D6C4()
{
  result = qword_1EC0B7C50;
  if (!qword_1EC0B7C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7C50);
  }

  return result;
}

unint64_t sub_1C456D71C()
{
  result = qword_1EC0B7C58;
  if (!qword_1EC0B7C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7C58);
  }

  return result;
}

unint64_t sub_1C456D774()
{
  result = qword_1EC0B7C60;
  if (!qword_1EC0B7C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7C60);
  }

  return result;
}

unint64_t sub_1C456D7CC()
{
  result = qword_1EC0B7C68;
  if (!qword_1EC0B7C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7C68);
  }

  return result;
}

unint64_t sub_1C456D824()
{
  result = qword_1EC0B7C70;
  if (!qword_1EC0B7C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7C70);
  }

  return result;
}

unint64_t sub_1C456D87C()
{
  result = qword_1EC0B7C78;
  if (!qword_1EC0B7C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7C78);
  }

  return result;
}

unint64_t sub_1C456D8D4()
{
  result = qword_1EC0B7C80;
  if (!qword_1EC0B7C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7C80);
  }

  return result;
}

unint64_t sub_1C456D92C()
{
  result = qword_1EC0B7C88;
  if (!qword_1EC0B7C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7C88);
  }

  return result;
}

unint64_t sub_1C456D984()
{
  result = qword_1EC0B7C90;
  if (!qword_1EC0B7C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7C90);
  }

  return result;
}

unint64_t sub_1C456D9DC()
{
  result = qword_1EC0B7C98;
  if (!qword_1EC0B7C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7C98);
  }

  return result;
}

unint64_t sub_1C456DA34()
{
  result = qword_1EC0B7CA0;
  if (!qword_1EC0B7CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7CA0);
  }

  return result;
}

unint64_t sub_1C456DA8C()
{
  result = qword_1EC0B7CA8;
  if (!qword_1EC0B7CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7CA8);
  }

  return result;
}

unint64_t sub_1C456DAE4()
{
  result = qword_1EC0B7CB0;
  if (!qword_1EC0B7CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7CB0);
  }

  return result;
}

unint64_t sub_1C456DB3C()
{
  result = qword_1EC0B7CB8;
  if (!qword_1EC0B7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7CB8);
  }

  return result;
}

unint64_t sub_1C456DB94()
{
  result = qword_1EC0B7CC0;
  if (!qword_1EC0B7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7CC0);
  }

  return result;
}

unint64_t sub_1C456DBEC()
{
  result = qword_1EC0B7CC8;
  if (!qword_1EC0B7CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7CC8);
  }

  return result;
}

unint64_t sub_1C456DC44()
{
  result = qword_1EC0B7CD0;
  if (!qword_1EC0B7CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7CD0);
  }

  return result;
}

unint64_t sub_1C456DC9C()
{
  result = qword_1EC0B7CD8;
  if (!qword_1EC0B7CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7CD8);
  }

  return result;
}

unint64_t sub_1C456DCF4()
{
  result = qword_1EC0B7CE0;
  if (!qword_1EC0B7CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7CE0);
  }

  return result;
}

unint64_t sub_1C456DD4C()
{
  result = qword_1EC0B7CE8;
  if (!qword_1EC0B7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7CE8);
  }

  return result;
}

unint64_t sub_1C456DDA4()
{
  result = qword_1EC0B7CF0;
  if (!qword_1EC0B7CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7CF0);
  }

  return result;
}

unint64_t sub_1C456DDFC()
{
  result = qword_1EC0B7CF8;
  if (!qword_1EC0B7CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7CF8);
  }

  return result;
}

unint64_t sub_1C456DE54()
{
  result = qword_1EC0B7D00;
  if (!qword_1EC0B7D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7D00);
  }

  return result;
}

unint64_t sub_1C456DEAC()
{
  result = qword_1EC0B7D08;
  if (!qword_1EC0B7D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7D08);
  }

  return result;
}

unint64_t sub_1C456DF04()
{
  result = qword_1EC0B7D10;
  if (!qword_1EC0B7D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7D10);
  }

  return result;
}

unint64_t sub_1C456DF5C()
{
  result = qword_1EC0B7D18;
  if (!qword_1EC0B7D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7D18);
  }

  return result;
}

unint64_t sub_1C456DFB4()
{
  result = qword_1EC0B7D20;
  if (!qword_1EC0B7D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7D20);
  }

  return result;
}

unint64_t sub_1C456E00C()
{
  result = qword_1EC0B7D28;
  if (!qword_1EC0B7D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7D28);
  }

  return result;
}

unint64_t sub_1C456E064()
{
  result = qword_1EC0B7D30;
  if (!qword_1EC0B7D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7D30);
  }

  return result;
}

unint64_t sub_1C456E0BC()
{
  result = qword_1EC0B7D38;
  if (!qword_1EC0B7D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7D38);
  }

  return result;
}

unint64_t sub_1C456E114()
{
  result = qword_1EC0B7D40;
  if (!qword_1EC0B7D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7D40);
  }

  return result;
}

unint64_t sub_1C456E16C()
{
  result = qword_1EC0B7D48;
  if (!qword_1EC0B7D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7D48);
  }

  return result;
}

unint64_t sub_1C456E1C4()
{
  result = qword_1EC0B7D50;
  if (!qword_1EC0B7D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7D50);
  }

  return result;
}

unint64_t sub_1C456E21C()
{
  result = qword_1EC0B7D58;
  if (!qword_1EC0B7D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7D58);
  }

  return result;
}

unint64_t sub_1C456E274()
{
  result = qword_1EC0B7D60;
  if (!qword_1EC0B7D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7D60);
  }

  return result;
}

unint64_t sub_1C456E2CC()
{
  result = qword_1EC0B7D68;
  if (!qword_1EC0B7D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7D68);
  }

  return result;
}

unint64_t sub_1C456E324()
{
  result = qword_1EC0B7D70;
  if (!qword_1EC0B7D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7D70);
  }

  return result;
}

unint64_t sub_1C456E37C()
{
  result = qword_1EC0B7D78;
  if (!qword_1EC0B7D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7D78);
  }

  return result;
}

unint64_t sub_1C456E3D4()
{
  result = qword_1EC0B7D80;
  if (!qword_1EC0B7D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7D80);
  }

  return result;
}

unint64_t sub_1C456E42C()
{
  result = qword_1EC0B7D88;
  if (!qword_1EC0B7D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7D88);
  }

  return result;
}

unint64_t sub_1C456E484()
{
  result = qword_1EC0B7D90;
  if (!qword_1EC0B7D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7D90);
  }

  return result;
}

unint64_t sub_1C456E4DC()
{
  result = qword_1EC0B7D98;
  if (!qword_1EC0B7D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7D98);
  }

  return result;
}

unint64_t sub_1C456E534()
{
  result = qword_1EC0B7DA0;
  if (!qword_1EC0B7DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7DA0);
  }

  return result;
}

unint64_t sub_1C456E58C()
{
  result = qword_1EC0B7DA8;
  if (!qword_1EC0B7DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7DA8);
  }

  return result;
}

unint64_t sub_1C456E5E4()
{
  result = qword_1EC0B7DB0;
  if (!qword_1EC0B7DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7DB0);
  }

  return result;
}

unint64_t sub_1C456E63C()
{
  result = qword_1EC0B7DB8;
  if (!qword_1EC0B7DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7DB8);
  }

  return result;
}

unint64_t sub_1C456E694()
{
  result = qword_1EC0B7DC0;
  if (!qword_1EC0B7DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7DC0);
  }

  return result;
}

unint64_t sub_1C456E6EC()
{
  result = qword_1EC0B7DC8;
  if (!qword_1EC0B7DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7DC8);
  }

  return result;
}

unint64_t sub_1C456E744()
{
  result = qword_1EC0B7DD0;
  if (!qword_1EC0B7DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7DD0);
  }

  return result;
}

unint64_t sub_1C456E79C()
{
  result = qword_1EC0B7DD8;
  if (!qword_1EC0B7DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7DD8);
  }

  return result;
}

unint64_t sub_1C456E7F4()
{
  result = qword_1EC0B7DE0;
  if (!qword_1EC0B7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7DE0);
  }

  return result;
}

unint64_t sub_1C456E84C()
{
  result = qword_1EC0B7DE8;
  if (!qword_1EC0B7DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7DE8);
  }

  return result;
}

unint64_t sub_1C456E8A4()
{
  result = qword_1EC0B7DF0;
  if (!qword_1EC0B7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7DF0);
  }

  return result;
}

unint64_t sub_1C456E8FC()
{
  result = qword_1EC0B7DF8;
  if (!qword_1EC0B7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7DF8);
  }

  return result;
}

unint64_t sub_1C456E954()
{
  result = qword_1EC0B7E00;
  if (!qword_1EC0B7E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7E00);
  }

  return result;
}

unint64_t sub_1C456E9AC()
{
  result = qword_1EC0B7E08;
  if (!qword_1EC0B7E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7E08);
  }

  return result;
}

unint64_t sub_1C456EA04()
{
  result = qword_1EC0B7E10;
  if (!qword_1EC0B7E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7E10);
  }

  return result;
}

unint64_t sub_1C456EA5C()
{
  result = qword_1EC0B7E18;
  if (!qword_1EC0B7E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7E18);
  }

  return result;
}

unint64_t sub_1C456EAB4()
{
  result = qword_1EC0B7E20;
  if (!qword_1EC0B7E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7E20);
  }

  return result;
}

unint64_t sub_1C456EB0C()
{
  result = qword_1EC0B7E28;
  if (!qword_1EC0B7E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7E28);
  }

  return result;
}

unint64_t sub_1C456EB64()
{
  result = qword_1EC0B7E30;
  if (!qword_1EC0B7E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7E30);
  }

  return result;
}

unint64_t sub_1C456EBBC()
{
  result = qword_1EC0B7E38;
  if (!qword_1EC0B7E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7E38);
  }

  return result;
}

unint64_t sub_1C456EC14()
{
  result = qword_1EC0B7E40;
  if (!qword_1EC0B7E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7E40);
  }

  return result;
}

unint64_t sub_1C456EC6C()
{
  result = qword_1EC0B7E48;
  if (!qword_1EC0B7E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7E48);
  }

  return result;
}

unint64_t sub_1C456ECC4()
{
  result = qword_1EC0B7E50;
  if (!qword_1EC0B7E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7E50);
  }

  return result;
}

unint64_t sub_1C456ED1C()
{
  result = qword_1EC0B7E58;
  if (!qword_1EC0B7E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7E58);
  }

  return result;
}

unint64_t sub_1C456ED74()
{
  result = qword_1EC0B7E60;
  if (!qword_1EC0B7E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7E60);
  }

  return result;
}

unint64_t sub_1C456EDCC()
{
  result = qword_1EC0B7E68;
  if (!qword_1EC0B7E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7E68);
  }

  return result;
}

unint64_t sub_1C456EE24()
{
  result = qword_1EC0B7E70;
  if (!qword_1EC0B7E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7E70);
  }

  return result;
}

unint64_t sub_1C456EE7C()
{
  result = qword_1EC0B7E78;
  if (!qword_1EC0B7E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7E78);
  }

  return result;
}

unint64_t sub_1C456EED4()
{
  result = qword_1EC0B7E80;
  if (!qword_1EC0B7E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7E80);
  }

  return result;
}

unint64_t sub_1C456EF2C()
{
  result = qword_1EC0B7E88;
  if (!qword_1EC0B7E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7E88);
  }

  return result;
}

unint64_t sub_1C456EF84()
{
  result = qword_1EC0B7E90;
  if (!qword_1EC0B7E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7E90);
  }

  return result;
}

unint64_t sub_1C456EFDC()
{
  result = qword_1EC0B7E98;
  if (!qword_1EC0B7E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7E98);
  }

  return result;
}

unint64_t sub_1C456F034()
{
  result = qword_1EC0B7EA0;
  if (!qword_1EC0B7EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7EA0);
  }

  return result;
}

unint64_t sub_1C456F08C()
{
  result = qword_1EC0B7EA8;
  if (!qword_1EC0B7EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7EA8);
  }

  return result;
}

unint64_t sub_1C456F0E4()
{
  result = qword_1EC0B7EB0;
  if (!qword_1EC0B7EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7EB0);
  }

  return result;
}

unint64_t sub_1C456F13C()
{
  result = qword_1EC0B7EB8;
  if (!qword_1EC0B7EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7EB8);
  }

  return result;
}

unint64_t sub_1C456F194()
{
  result = qword_1EC0B7EC0;
  if (!qword_1EC0B7EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7EC0);
  }

  return result;
}

unint64_t sub_1C456F1EC()
{
  result = qword_1EC0B7EC8;
  if (!qword_1EC0B7EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7EC8);
  }

  return result;
}

unint64_t sub_1C456F244()
{
  result = qword_1EC0B7ED0;
  if (!qword_1EC0B7ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7ED0);
  }

  return result;
}

unint64_t sub_1C456F29C()
{
  result = qword_1EC0B7ED8;
  if (!qword_1EC0B7ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7ED8);
  }

  return result;
}

unint64_t sub_1C456F2F4()
{
  result = qword_1EC0B7EE0;
  if (!qword_1EC0B7EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7EE0);
  }

  return result;
}

unint64_t sub_1C456F34C()
{
  result = qword_1EC0B7EE8;
  if (!qword_1EC0B7EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7EE8);
  }

  return result;
}

unint64_t sub_1C456F3A4()
{
  result = qword_1EC0B7EF0;
  if (!qword_1EC0B7EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7EF0);
  }

  return result;
}

unint64_t sub_1C456F3FC()
{
  result = qword_1EC0B7EF8;
  if (!qword_1EC0B7EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7EF8);
  }

  return result;
}

unint64_t sub_1C456F454()
{
  result = qword_1EC0B7F00;
  if (!qword_1EC0B7F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7F00);
  }

  return result;
}

unint64_t sub_1C456F4AC()
{
  result = qword_1EC0B7F08;
  if (!qword_1EC0B7F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7F08);
  }

  return result;
}

unint64_t sub_1C456F504()
{
  result = qword_1EC0B7F10;
  if (!qword_1EC0B7F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7F10);
  }

  return result;
}

unint64_t sub_1C456F55C()
{
  result = qword_1EC0B7F18;
  if (!qword_1EC0B7F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7F18);
  }

  return result;
}

unint64_t sub_1C456F5B4()
{
  result = qword_1EC0B7F20;
  if (!qword_1EC0B7F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7F20);
  }

  return result;
}

unint64_t sub_1C456F60C()
{
  result = qword_1EC0B7F28;
  if (!qword_1EC0B7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7F28);
  }

  return result;
}

unint64_t sub_1C456F664()
{
  result = qword_1EC0B7F30;
  if (!qword_1EC0B7F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7F30);
  }

  return result;
}

unint64_t sub_1C456F6BC()
{
  result = qword_1EC0B7F38;
  if (!qword_1EC0B7F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7F38);
  }

  return result;
}

unint64_t sub_1C456F714()
{
  result = qword_1EC0B7F40;
  if (!qword_1EC0B7F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7F40);
  }

  return result;
}

unint64_t sub_1C456F76C()
{
  result = qword_1EC0B7F48;
  if (!qword_1EC0B7F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7F48);
  }

  return result;
}

unint64_t sub_1C456F7C4()
{
  result = qword_1EC0B7F50;
  if (!qword_1EC0B7F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7F50);
  }

  return result;
}

unint64_t sub_1C456F81C()
{
  result = qword_1EC0B7F58;
  if (!qword_1EC0B7F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7F58);
  }

  return result;
}

unint64_t sub_1C456F874()
{
  result = qword_1EC0B7F60;
  if (!qword_1EC0B7F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7F60);
  }

  return result;
}

unint64_t sub_1C456F8CC()
{
  result = qword_1EC0B7F68;
  if (!qword_1EC0B7F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7F68);
  }

  return result;
}

unint64_t sub_1C456F924()
{
  result = qword_1EC0B7F70;
  if (!qword_1EC0B7F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7F70);
  }

  return result;
}

unint64_t sub_1C456F97C()
{
  result = qword_1EC0B7F78;
  if (!qword_1EC0B7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7F78);
  }

  return result;
}

unint64_t sub_1C456F9D4()
{
  result = qword_1EC0B7F80;
  if (!qword_1EC0B7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7F80);
  }

  return result;
}

unint64_t sub_1C456FA2C()
{
  result = qword_1EC0B7F88;
  if (!qword_1EC0B7F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7F88);
  }

  return result;
}

unint64_t sub_1C456FA84()
{
  result = qword_1EC0B7F90;
  if (!qword_1EC0B7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7F90);
  }

  return result;
}

unint64_t sub_1C456FADC()
{
  result = qword_1EC0B7F98;
  if (!qword_1EC0B7F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7F98);
  }

  return result;
}

unint64_t sub_1C456FB34()
{
  result = qword_1EC0B7FA0;
  if (!qword_1EC0B7FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7FA0);
  }

  return result;
}

unint64_t sub_1C456FB8C()
{
  result = qword_1EC0B7FA8;
  if (!qword_1EC0B7FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7FA8);
  }

  return result;
}

unint64_t sub_1C456FBE4()
{
  result = qword_1EC0B7FB0;
  if (!qword_1EC0B7FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7FB0);
  }

  return result;
}

unint64_t sub_1C456FC3C()
{
  result = qword_1EC0B7FB8;
  if (!qword_1EC0B7FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7FB8);
  }

  return result;
}

unint64_t sub_1C456FC94()
{
  result = qword_1EC0B7FC0;
  if (!qword_1EC0B7FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7FC0);
  }

  return result;
}

unint64_t sub_1C456FCEC()
{
  result = qword_1EC0B7FC8;
  if (!qword_1EC0B7FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7FC8);
  }

  return result;
}

unint64_t sub_1C456FD44()
{
  result = qword_1EC0B7FD0;
  if (!qword_1EC0B7FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7FD0);
  }

  return result;
}

unint64_t sub_1C456FD9C()
{
  result = qword_1EC0B7FD8;
  if (!qword_1EC0B7FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7FD8);
  }

  return result;
}

unint64_t sub_1C456FDF4()
{
  result = qword_1EC0B7FE0;
  if (!qword_1EC0B7FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7FE0);
  }

  return result;
}

unint64_t sub_1C456FE4C()
{
  result = qword_1EC0B7FE8;
  if (!qword_1EC0B7FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7FE8);
  }

  return result;
}

unint64_t sub_1C456FEA4()
{
  result = qword_1EC0B7FF0;
  if (!qword_1EC0B7FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7FF0);
  }

  return result;
}

unint64_t sub_1C456FEFC()
{
  result = qword_1EC0B7FF8;
  if (!qword_1EC0B7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B7FF8);
  }

  return result;
}

unint64_t sub_1C456FF54()
{
  result = qword_1EC0B8000;
  if (!qword_1EC0B8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8000);
  }

  return result;
}

unint64_t sub_1C456FFAC()
{
  result = qword_1EC0B8008;
  if (!qword_1EC0B8008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8008);
  }

  return result;
}

unint64_t sub_1C4570004()
{
  result = qword_1EC0B8010;
  if (!qword_1EC0B8010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8010);
  }

  return result;
}

unint64_t sub_1C457005C()
{
  result = qword_1EC0B8018;
  if (!qword_1EC0B8018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8018);
  }

  return result;
}

unint64_t sub_1C45700B4()
{
  result = qword_1EC0B8020;
  if (!qword_1EC0B8020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8020);
  }

  return result;
}

uint64_t sub_1C4570108(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1C4570184(uint64_t a1, id *a2)
{
  result = sub_1C4F01118();
  *a2 = 0;
  return result;
}

uint64_t sub_1C45701FC()
{
  sub_1C4F01138();
  v0 = sub_1C4F01108();

  return v0;
}

uint64_t sub_1C45702CC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C45702EC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1C4570890()
{
  v0 = sub_1C4F01138();
  v1 = MEMORY[0x1C69400F0](v0);

  return v1;
}

Swift::String_optional __swiftcall ActivityEventContent.setConfidence()()
{
  if (*(v0 + 16))
  {
    v1 = 0;
    v2 = 0;
  }

  else
  {
    v3 = *(v0 + 8);
    v1 = sub_1C4F019E8();
  }

  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_1C457099C()
{
  v2 = v0;
  v3 = type metadata accessor for SourceIdPrefix();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LifeEventStructs.ParticipationRelationshipType(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_1C4DECB84();
  if (qword_1EDDF7920 != -1)
  {
    swift_once();
  }

  v11 = sub_1C442B738(v3, qword_1EDE2D668);
  v12 = sub_1C4570D60(v11, v6);
  v13 = *(v2 + 56);
  MEMORY[0x1EEE9AC00](v12);
  v18[-2] = v6;
  v15 = sub_1C45D921C(sub_1C4570DC4, &v18[-4], v14);
  if (v1)
  {
  }

  else
  {
    v16 = *(v10 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29ParticipationRelationshipType_attendeeIdentifier);
    *(v10 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29ParticipationRelationshipType_attendeeIdentifier) = v15;

    sub_1C4DEBBB4();
  }

  sub_1C4570DE4(v6);
  return v10;
}

uint64_t sub_1C4570B1C@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  sub_1C456902C(&qword_1EC0B8400, &unk_1C4F175E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C4F0C890;
  v10 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1C44D5840();
  if (v6)
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  v13 = 0xE000000000000000;
  if (v6)
  {
    v14 = v6;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  *(v9 + 32) = v12;
  *(v9 + 40) = v14;
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  v47 = v4;
  if (v3)
  {
    v15 = v4;
  }

  else
  {
    v15 = 0;
  }

  if (v3)
  {
    v16 = v3;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  *(v9 + 64) = v11;
  *(v9 + 72) = v15;
  *(v9 + 80) = v16;
  *(v9 + 136) = v10;
  *(v9 + 144) = v11;
  if (v8)
  {
    v17 = v7;
  }

  else
  {
    v17 = 0;
  }

  if (v8)
  {
    v13 = v8;
  }

  *(v9 + 112) = v17;
  *(v9 + 120) = v13;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4F01168();
  String.base64EncodedSHA(withPrefix:)();
  v19 = v18;
  v21 = v20;

  v22 = type metadata accessor for LifeEventStructs.AddressRelationshipType(0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_1C4DE3634();
  v26 = (v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_emailAddress);
  v27 = *(v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_emailAddress + 8);
  *v26 = v5;
  v26[1] = v6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v28 = (v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_phoneNumber);
  v29 = *(v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_phoneNumber + 8);
  *v28 = v7;
  v28[1] = v8;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v30 = type metadata accessor for LifeEventStructs.Person(0);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = v54;
  sub_1C4DEA0F4(v19, v21, v34, v35, v36, v37, v38, v39, v46, v47, a3, a2, v53, v54, v55, v56, v57, v58, v59, v60);
  if (v33)
  {

    *v52 = v33;
  }

  else
  {
    v42 = v40;
    v43 = (v40 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_name);
    v44 = *(v40 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs6Person_name + 8);
    *v43 = v48;
    v43[1] = v3;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C4DDF7FC(v45);

    *v50 = v42;
  }

  return result;
}

uint64_t sub_1C4570D60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SourceIdPrefix();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4570DE4(uint64_t a1)
{
  v2 = type metadata accessor for SourceIdPrefix();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ActivityEventContent.confidence.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t ActivityEventContent.confidence.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t ActivityEventContent.members.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t ActivityEventContent.sourceIdPrefix.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ActivityEventContent(0) + 32);

  return sub_1C4570D60(v3, a1);
}

uint64_t ActivityEventContent.sourceIdPrefix.setter()
{
  v2 = sub_1C4403FC0();
  v3 = v1 + *(type metadata accessor for ActivityEventContent(v2) + 32);

  return sub_1C4571028(v0, v3);
}

uint64_t sub_1C4571028(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SourceIdPrefix();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t (*ActivityEventContent.sourceIdPrefix.modify())(void)
{
  v0 = sub_1C4403FC0();
  v1 = *(type metadata accessor for ActivityEventContent(v0) + 32);
  return nullsub_1;
}

uint64_t ActivityEventContent.init(activityType:sourceIdPrefix:confidence:metadata:members:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a1;
  *(a7 + 40) = 0u;
  *(a7 + 24) = 0u;
  *a7 = v13;
  v14 = type metadata accessor for ActivityEventContent(0);
  sub_1C4571178(a2, a7 + *(v14 + 32));
  *(a7 + 8) = a3;
  *(a7 + 16) = a4 & 1;
  result = sub_1C444088C(a5, a7 + 24, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  *(a7 + 56) = a6;
  return result;
}

uint64_t sub_1C4571178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SourceIdPrefix();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ActivityEventPerson.contactID.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t ActivityEventPerson.contactID.setter()
{
  sub_1C43FFB44();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ActivityEventPerson.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t ActivityEventPerson.name.setter()
{
  sub_1C43FFB44();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ActivityEventPerson.email.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t ActivityEventPerson.email.setter()
{
  sub_1C43FFB44();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ActivityEventPerson.phoneNumber.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t ActivityEventPerson.phoneNumber.setter()
{
  sub_1C43FFB44();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t sub_1C45713D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C69616D65 && a2 == 0xE500000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C4F02938();

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

uint64_t sub_1C457153C(char a1)
{
  result = 0x49746361746E6F63;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x6C69616D65;
      break;
    case 3:
      result = 0x6D754E656E6F6870;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C45715C8()
{
  v1 = *v0;
  sub_1C4F02AF8();
  sub_1C450EB8C(v3, v1);
  return sub_1C4F02B68();
}

uint64_t sub_1C4571614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C45713D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C457163C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4571534();
  *a1 = result;
  return result;
}

uint64_t sub_1C4571664(uint64_t a1)
{
  v2 = sub_1C4571898();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45716A0(uint64_t a1)
{
  v2 = sub_1C4571898();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityEventPerson.encode(to:)(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0B8408, &qword_1C4F0C8C8);
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = v19 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v19[5] = v1[3];
  v19[6] = v13;
  v14 = v1[4];
  v19[3] = v1[5];
  v19[4] = v14;
  v15 = v1[6];
  v19[1] = v1[7];
  v19[2] = v15;
  v16 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4571898();
  sub_1C4F02BF8();
  v23 = 0;
  v17 = v19[7];
  sub_1C4F02738();
  if (!v17)
  {
    v22 = 1;
    sub_1C440A484();
    v21 = 2;
    sub_1C440A484();
    v20 = 3;
    sub_1C440A484();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_1C4571898()
{
  result = qword_1EC0B8410;
  if (!qword_1EC0B8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8410);
  }

  return result;
}

uint64_t ActivityEventPerson.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0B8418, &unk_1C4F0C8D0);
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = a1[3];
  v12 = a1[4];
  sub_1C4409678(a1, v11);
  sub_1C4571898();
  sub_1C4F02BC8();
  if (v2)
  {
    sub_1C4402A88();
    sub_1C440962C(a1);
    v34 = 0uLL;
    v35 = v8;
    v36 = a2;
    v37 = v12;
    v38 = v11;
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v28 = a2;
    *&v29 = sub_1C442C2F8();
    *(&v29 + 1) = v14;
    v15 = sub_1C442C2F8();
    v17 = v16;
    LOBYTE(v34) = 2;
    v18 = sub_1C442C2F8();
    v20 = v19;
    v41 = 3;
    v21 = sub_1C4F02618();
    v22 = sub_1C4418F64();
    v24 = v23;
    v25(v22, v5);
    v30 = v29;
    *&v31 = v15;
    *(&v31 + 1) = v17;
    *&v32 = v18;
    *(&v32 + 1) = v20;
    *&v33 = v21;
    *(&v33 + 1) = v24;
    v26 = v31;
    *v28 = v29;
    v28[1] = v26;
    v27 = v33;
    v28[2] = v32;
    v28[3] = v27;
    sub_1C4571BB0(&v30, &v34);
    sub_1C440962C(a1);
    v34 = v29;
    v35 = v15;
    v36 = v17;
    v37 = v18;
    v38 = v20;
    v39 = v21;
    v40 = v24;
  }

  return sub_1C4571B80(&v34);
}

uint64_t ActivityEventWithBehaviors.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t ActivityEventWithBehaviors.id.setter()
{
  sub_1C43FFB44();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ActivityEventWithBehaviors.behaviorEvents.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t ActivityEventWithBehaviors.activityEvent.setter()
{
  v2 = sub_1C4403FC0();
  v3 = type metadata accessor for ActivityEventWithBehaviors(v2);
  return sub_1C444088C(v0, v1 + *(v3 + 24), &qword_1EC0B8420, &unk_1C4F0DDC0);
}

uint64_t (*ActivityEventWithBehaviors.activityEvent.modify())(void)
{
  v0 = sub_1C4403FC0();
  v1 = *(type metadata accessor for ActivityEventWithBehaviors(v0) + 24);
  return nullsub_1;
}

uint64_t ActivityEventWithBehaviors.sourceIdPrefix.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ActivityEventWithBehaviors(0) + 28);

  return sub_1C4570D60(v3, a1);
}

uint64_t ActivityEventWithBehaviors.sourceIdPrefix.setter()
{
  v2 = sub_1C4403FC0();
  v3 = v1 + *(type metadata accessor for ActivityEventWithBehaviors(v2) + 28);

  return sub_1C4571028(v0, v3);
}

uint64_t (*ActivityEventWithBehaviors.sourceIdPrefix.modify())(void)
{
  v0 = sub_1C4403FC0();
  v1 = *(type metadata accessor for ActivityEventWithBehaviors(v0) + 28);
  return nullsub_1;
}

uint64_t ActivityEventWithBehaviors.init(id:behaviorEvents:activityEvent:sourceIdPrefix:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  v9 = type metadata accessor for ActivityEventWithBehaviors(0);
  sub_1C4571F0C(a4, a6 + *(v9 + 24));
  v10 = a6 + *(v9 + 28);

  return sub_1C4571178(a5, v10);
}

uint64_t sub_1C4571F0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C4571FA4()
{
  sub_1C45724C0(319, &qword_1EDDF05D8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C45724C0(319, &qword_1EDDF0338, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C45724C0(319, &qword_1EDDF0658, &type metadata for ActivityEventPerson, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for SourceIdPrefix();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C45720D8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C457212C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1C45721C8()
{
  sub_1C45722A4();
  if (v0 <= 0x3F)
  {
    sub_1C4572914(319, qword_1EDDF4670, type metadata accessor for ActivityEventContent, type metadata accessor for SessionDataComplying);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SourceIdPrefix();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C45722A4()
{
  if (!qword_1EC0B8438)
  {
    sub_1C4572308(&qword_1EC0B8420, &unk_1C4F0DDC0);
    v0 = sub_1C4F017A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0B8438);
    }
  }
}

uint64_t sub_1C4572308(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_1C45723D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  a7(319, a4, a5, a6);
  if (v7 <= 0x3F)
  {
    sub_1C4572914(319, qword_1EDDF4670, type metadata accessor for ActivityEventContent, type metadata accessor for SessionDataComplying);
    if (v8 <= 0x3F)
    {
      type metadata accessor for SourceIdPrefix();
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C45724C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

_BYTE *storeEnumTagSinglePayload for ActivityEventPerson.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C45725F0()
{
  result = qword_1EC0B8440;
  if (!qword_1EC0B8440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8440);
  }

  return result;
}

unint64_t sub_1C4572648()
{
  result = qword_1EC0B8448;
  if (!qword_1EC0B8448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8448);
  }

  return result;
}

unint64_t sub_1C45726A0()
{
  result = qword_1EC0B8450;
  if (!qword_1EC0B8450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8450);
  }

  return result;
}

uint64_t sub_1C4572708()
{
  sub_1C440DD3C();
  if (v1 == v3)
  {
    return sub_1C43FCE3C(*(v0 + 8));
  }

  v5 = v2;
  if (*(*(sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0) - 8) + 84) == v1)
  {
    v6 = *(v5 + 24);
  }

  else
  {
    type metadata accessor for SourceIdPrefix();
    v6 = *(v5 + 28);
  }

  v7 = sub_1C4412B9C(v6);

  return sub_1C44157D4(v7, v8, v9);
}

void sub_1C45727E0(uint64_t a1, uint64_t a2)
{
  sub_1C440DD3C();
  if (v4 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v5;
    if (*(*(sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0) - 8) + 84) == v4)
    {
      v8 = *(v7 + 24);
    }

    else
    {
      type metadata accessor for SourceIdPrefix();
      v8 = *(v7 + 28);
    }

    v9 = sub_1C4412B9C(v8);

    sub_1C440BAA8(v9, v10, a2, v11);
  }
}

void sub_1C4572914(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for ActivityInterval()
{
  result = qword_1EC0B8460;
  if (!qword_1EC0B8460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C45729EC()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ActivityIntervalType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C4572B44()
{
  v0 = sub_1C4F025D8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1C4572B90(char a1)
{
  if (!a1)
  {
    return 0xD000000000000014;
  }

  if (a1 == 1)
  {
    return 0xD000000000000017;
  }

  return 0xD000000000000013;
}
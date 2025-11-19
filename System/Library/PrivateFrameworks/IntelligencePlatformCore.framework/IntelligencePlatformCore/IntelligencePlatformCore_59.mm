unint64_t sub_1C494ED10(char a1)
{
  result = 0x4449656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x456E6F6973736573;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x7463617265746E69;
      break;
    case 5:
      result = 0x646576726573626FLL;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C494EE00(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL)
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

uint64_t sub_1C494EE9C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73696E616863656DLL && a2 == 0xE90000000000006DLL)
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

uint64_t sub_1C494EF38(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
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

uint64_t sub_1C494EFC0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
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

uint64_t sub_1C494F050(uint64_t a1, uint64_t a2)
{
  if (a1 == 6645601 && a2 == 0xE300000000000000)
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

uint64_t sub_1C494F0D8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E657665 && a2 == 0xE500000000000000)
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

uint64_t sub_1C494F160(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v92 = a4;
  v93 = a2;
  v86 = a3;
  v6 = sub_1C456902C(&qword_1EC0BFBD0, &qword_1C4F3C500);
  v7 = sub_1C43FCDF8(v6);
  v90 = v8;
  v91 = v7;
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBC74();
  v87 = v12;
  v13 = sub_1C456902C(&qword_1EC0BFBD8, &qword_1C4F3C508);
  v14 = sub_1C43FCDF8(v13);
  v88 = v15;
  v89 = v14;
  v17 = *(v16 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBC74();
  v85 = v19;
  v20 = sub_1C456902C(&qword_1EC0BFBE0, &qword_1C4F3C510);
  v21 = sub_1C43FCDF8(v20);
  v83 = v22;
  v84 = v21;
  v24 = *(v23 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBC74();
  v82 = v26;
  v27 = sub_1C456902C(&qword_1EC0BFBE8, &qword_1C4F3C518);
  v28 = sub_1C43FCDF8(v27);
  v80 = v29;
  v81 = v28;
  v31 = *(v30 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBC74();
  v79 = v33;
  v78 = sub_1C456902C(&qword_1EC0BFBF0, &qword_1C4F3C520);
  sub_1C43FCDF8(v78);
  v77 = v34;
  v36 = *(v35 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C4402A68();
  v38 = sub_1C456902C(&qword_1EC0BFBF8, &qword_1C4F3C528);
  sub_1C43FCDF8(v38);
  v76 = v39;
  v41 = *(v40 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v74 - v43;
  v45 = sub_1C456902C(&qword_1EC0BFC00, &qword_1C4F3C530);
  sub_1C43FCDF8(v45);
  v75 = v46;
  v48 = *(v47 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v74 - v50;
  v52 = sub_1C456902C(&qword_1EC0BFC08, &qword_1C4F3C538);
  v95 = sub_1C43FCDF8(v52);
  v96 = v53;
  v55 = *(v54 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v74 - v57;
  v59 = a1[3];
  sub_1C4409678(a1, v59);
  sub_1C4952034();
  v94 = v58;
  sub_1C4F02BF8();
  switch(v92)
  {
    case 1:
      LOBYTE(v97) = 1;
      sub_1C4952328();
      sub_1C43FF22C();
      sub_1C4F027B8();
      (*(v76 + 8))(v44, v38);
      return (*(v96 + 8))(v59, v4);
    case 2:
      LOBYTE(v97) = 2;
      sub_1C4952280();
      v64 = v94;
      v63 = v95;
      sub_1C4F02718();
      LOBYTE(v97) = v93 & 1;
      sub_1C49524C0();
      v65 = v78;
      sub_1C4F027E8();
      (*(v77 + 8))(v4, v65);
      return (*(v96 + 8))(v64, v63);
    case 3:
      LOBYTE(v97) = 3;
      sub_1C495222C();
      v67 = v79;
      sub_1C43FF22C();
      v97 = v93;
      type metadata accessor for GDInteractionMechanism(0);
      sub_1C4417410();
      sub_1C4952478(v68, v69);
      v70 = v81;
      sub_1C4426BFC();
      sub_1C4F027E8();
      v71 = v80;
      goto LABEL_8;
    case 4:
      LOBYTE(v97) = 4;
      sub_1C4952184();
      v60 = v82;
      sub_1C4410E84();
      LOBYTE(v97) = v93 & 1;
      sub_1C4952424();
      v61 = v84;
      sub_1C4F027E8();
      v62 = v83;
      goto LABEL_11;
    case 5:
      LOBYTE(v97) = 5;
      sub_1C4952130();
      v67 = v85;
      sub_1C43FF22C();
      LOWORD(v97) = v93;
      BYTE2(v97) = BYTE2(v93) & 1;
      type metadata accessor for PHPersonAgeType(0);
      sub_1C4403390();
      sub_1C4952478(v72, v73);
      v70 = v89;
      sub_1C4426BFC();
      sub_1C4F02778();
      v71 = v88;
LABEL_8:
      (*(v71 + 8))(v67, v70);
      return (*(v96 + 8))(v59, v4);
    case 6:
      LOBYTE(v97) = 6;
      sub_1C4952088();
      v60 = v87;
      sub_1C4410E84();
      LOBYTE(v97) = v93;
      sub_1C49523D0();
      v61 = v91;
      sub_1C4F027E8();
      v62 = v90;
LABEL_11:
      (*(v62 + 8))(v60, v61);
      return (*(v96 + 8))(v4, v38);
    default:
      LOBYTE(v97) = 0;
      sub_1C495237C();
      sub_1C4410E84();
      sub_1C4F02798();
      (*(v75 + 8))(v51, v45);
      return (*(v96 + 8))(v4, v38);
  }
}

uint64_t sub_1C494F908()
{
  sub_1C4404078();
  switch(v1)
  {
    case 1:
      MEMORY[0x1C69417F0](1);
      if ((v0 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v3 = v0;
      }

      else
      {
        v3 = 0;
      }

      result = MEMORY[0x1C6941830](v3);
      break;
    case 2:
      MEMORY[0x1C69417F0](2);
      goto LABEL_7;
    case 3:
      MEMORY[0x1C69417F0](3);
      result = MEMORY[0x1C69417F0](v0);
      break;
    case 4:
      MEMORY[0x1C69417F0](4);
LABEL_7:
      sub_1C4F01298();

      break;
    case 5:
      MEMORY[0x1C69417F0](5);
      if ((v0 & 0x10000) != 0)
      {
        result = sub_1C4F02B18();
      }

      else
      {
        sub_1C4F02B18();
        result = sub_1C4F02B28();
      }

      break;
    case 6:
      MEMORY[0x1C69417F0](6);

      result = sub_1C468B054();
      break;
    default:
      MEMORY[0x1C69417F0](0);

      result = sub_1C4F01298();
      break;
  }

  return result;
}

uint64_t sub_1C494FAC4()
{
  sub_1C4F02AF8();
  sub_1C494F908();
  return sub_1C4F02B68();
}

uint64_t sub_1C494FB24(uint64_t *a1)
{
  v107 = sub_1C456902C(&qword_1EC0BFB70, &qword_1C4F3C4B8);
  sub_1C43FCDF8(v107);
  v111 = v3;
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBC74();
  v116 = v7;
  v8 = sub_1C456902C(&qword_1EC0BFB78, &qword_1C4F3C4C0);
  v109 = sub_1C43FCDF8(v8);
  v110 = v9;
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBC74();
  v115 = v13;
  v108 = sub_1C456902C(&qword_1EC0BFB80, &qword_1C4F3C4C8);
  sub_1C43FCDF8(v108);
  v106[13] = v14;
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBC74();
  v113 = v18;
  v19 = sub_1C456902C(&qword_1EC0BFB88, &qword_1C4F3C4D0);
  v20 = sub_1C43FCDF8(v19);
  v106[11] = v21;
  v106[12] = v20;
  v23 = *(v22 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBC74();
  v112 = v25;
  v26 = sub_1C456902C(&qword_1EC0BFB90, &qword_1C4F3C4D8);
  v27 = sub_1C43FCDF8(v26);
  v106[9] = v28;
  v106[10] = v27;
  v30 = *(v29 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBC74();
  v114 = v32;
  v33 = sub_1C456902C(&qword_1EC0BFB98, &qword_1C4F3C4E0);
  v34 = sub_1C43FCDF8(v33);
  v106[7] = v35;
  v106[8] = v34;
  v37 = *(v36 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v106 - v39;
  v41 = sub_1C456902C(&qword_1EC0BFBA0, &qword_1C4F3C4E8);
  sub_1C43FCDF8(v41);
  v106[6] = v42;
  v44 = *(v43 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C4402A68();
  v46 = sub_1C456902C(&qword_1EC0BFBA8, &unk_1C4F3C4F0);
  sub_1C43FCDF8(v46);
  v48 = v47;
  v50 = *(v49 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v51);
  v53 = v106 - v52;
  v54 = a1[3];
  v55 = a1[4];
  v117 = a1;
  sub_1C4409678(a1, v54);
  sub_1C4952034();
  v56 = v118;
  sub_1C4F02BC8();
  if (v56)
  {
    goto LABEL_9;
  }

  v106[4] = v1;
  v106[3] = v41;
  v106[5] = v40;
  v57 = v114;
  v118 = v48;
  v58 = sub_1C4F026E8();
  result = sub_1C4570934(v58, 0);
  if (v61 == v62 >> 1)
  {
LABEL_8:
    v70 = sub_1C4F022E8();
    swift_allocError();
    v72 = v71;
    v41 = *(sub_1C456902C(&qword_1EC0B7410, &qword_1C4F06F90) + 48);
    *v72 = &type metadata for EntityRelevance.AttributeQuery;
    sub_1C4F025F8();
    sub_1C4F022D8();
    (*(*(v70 - 8) + 104))(v72, *MEMORY[0x1E69E6AF8], v70);
    swift_willThrow();
    swift_unknownObjectRelease();
    v73 = sub_1C442CC90();
    v74(v73, v46);
LABEL_9:
    v57 = v117;
LABEL_10:
    sub_1C440962C(v57);
    return v41;
  }

  v106[2] = v53;
  if (v61 < (v62 >> 1))
  {
    v63 = v46;
    v64 = *(v60 + v61);
    v65 = sub_1C4570928(v61 + 1);
    v67 = v66;
    v69 = v68;
    swift_unknownObjectRelease();
    v106[1] = v65;
    if (v67 == v69 >> 1)
    {
      switch(v64)
      {
        case 1:
          LOBYTE(v119) = 1;
          sub_1C4952328();
          sub_1C44071AC();
          sub_1C442FE88();
          sub_1C441C7EC();
          sub_1C4F02698();
          v91 = v90;
          sub_1C4405070();
          v92 = sub_1C441BA28();
          v93(v92);
          v94 = sub_1C443351C();
          v95(v94, v63);
          v41 = v91;
          goto LABEL_10;
        case 2:
          LOBYTE(v119) = 2;
          sub_1C4952280();
          v75 = v63;
          sub_1C44071AC();
          sub_1C442FE88();
          sub_1C49522D4();
          sub_1C441C7EC();
          sub_1C4F026C8();
          swift_unknownObjectRelease();
          goto LABEL_17;
        case 3:
          LOBYTE(v119) = 3;
          sub_1C495222C();
          sub_1C44071AC();
          sub_1C442FE88();
          type metadata accessor for GDInteractionMechanism(0);
          sub_1C4417410();
          sub_1C4952478(v76, v77);
          sub_1C441C7EC();
          sub_1C4F026C8();
          swift_unknownObjectRelease();
          v82 = sub_1C4432524();
          v83(v82);
          v84 = sub_1C442CC90();
          v85(v84, v63);
          v41 = v119;
          goto LABEL_10;
        case 4:
          LOBYTE(v119) = 4;
          sub_1C4952184();
          v75 = v63;
          sub_1C44071AC();
          sub_1C442FE88();
          sub_1C49521D8();
          sub_1C441C7EC();
          sub_1C4F026C8();
          swift_unknownObjectRelease();
LABEL_17:
          v80 = sub_1C4432524();
          v81(v80);
          v103 = sub_1C443351C();
          v105 = v75;
          goto LABEL_21;
        case 5:
          LOBYTE(v119) = 5;
          sub_1C4952130();
          sub_1C44071AC();
          sub_1C442FE88();
          type metadata accessor for PHPersonAgeType(0);
          sub_1C4403390();
          sub_1C4952478(v78, v79);
          sub_1C441C7EC();
          sub_1C4F02658();
          swift_unknownObjectRelease();
          v96 = sub_1C4432524();
          v97(v96);
          v98 = sub_1C442CC90();
          v99(v98, v63);
          v100 = 0x10000;
          if (!BYTE2(v119))
          {
            v100 = 0;
          }

          v41 = v100 | v119;
          goto LABEL_10;
        case 6:
          LOBYTE(v119) = 6;
          sub_1C4952088();
          sub_1C44071AC();
          sub_1C442FE88();
          sub_1C49520DC();
          sub_1C4F026C8();
          swift_unknownObjectRelease();
          v101 = sub_1C4416174();
          v102(v101);
          v103 = sub_1C443351C();
          v105 = v63;
LABEL_21:
          v104(v103, v105);
          v41 = v119;
          break;
        default:
          LOBYTE(v119) = 0;
          sub_1C495237C();
          sub_1C44071AC();
          v41 = sub_1C4F02678();
          sub_1C4405070();
          v86 = sub_1C44251BC();
          v87(v86);
          v88 = sub_1C442CC90();
          v89(v88, v63);
          v57 = v117;
          break;
      }

      goto LABEL_10;
    }

    v46 = v63;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C49506C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C494EA28(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C49506F0(uint64_t a1)
{
  v2 = sub_1C495237C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C495072C(uint64_t a1)
{
  v2 = sub_1C495237C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4950770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C494EAC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4950798(uint64_t a1)
{
  v2 = sub_1C4952034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C49507D4(uint64_t a1)
{
  v2 = sub_1C4952034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4950814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C494EE00(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4950840(uint64_t a1)
{
  v2 = sub_1C4952088();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C495087C(uint64_t a1)
{
  v2 = sub_1C4952088();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C49508BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C494EE9C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C49508E8(uint64_t a1)
{
  v2 = sub_1C495222C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4950924(uint64_t a1)
{
  v2 = sub_1C495222C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4950964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C494EF38(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4950990(uint64_t a1)
{
  v2 = sub_1C4952184();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C49509CC(uint64_t a1)
{
  v2 = sub_1C4952184();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4950A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C494EFC0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4950A38(uint64_t a1)
{
  v2 = sub_1C4952328();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4950A74(uint64_t a1)
{
  v2 = sub_1C4952328();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4950AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C494F050(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4950AE0(uint64_t a1)
{
  v2 = sub_1C4952130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4950B1C(uint64_t a1)
{
  v2 = sub_1C4952130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4950B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C494F0D8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4950B88(uint64_t a1)
{
  v2 = sub_1C4952280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4950BC4(uint64_t a1)
{
  v2 = sub_1C4952280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4950C00()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return sub_1C494FAC4();
}

uint64_t sub_1C4950C0C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return sub_1C494F908();
}

uint64_t sub_1C4950C18()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1C4F02AF8();
  sub_1C494F908();
  return sub_1C4F02B68();
}

uint64_t sub_1C4950C70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C494FB24(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1C4950CDC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_date;
  v12 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v12);
  (*(v13 + 32))(v5 + v11, a1);
  *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityClass) = a2;
  v14 = (v5 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityIdentifier);
  *v14 = a3;
  v14[1] = a4;
  *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_attributes) = a5;
  return v5;
}

uint64_t sub_1C4950D8C()
{
  sub_1C4404078();
  if ((sub_1C4EF9C68() & 1) == 0)
  {
    return 0;
  }

  sub_1C441ED2C(OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityClass);
  v2 = v2 && v0 == v1;
  if (v2)
  {
  }

  else
  {
    v3 = sub_1C4409A04();

    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C44033A8(OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityIdentifier);
  if (v2 && v5 == v6)
  {
    return 1;
  }

  return sub_1C4F02938();
}

uint64_t sub_1C4950E5C()
{
  BYTE8(v3) = 0;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000018, 0x80000001C4FAA170);
  sub_1C4EF9CD8();
  sub_1C4952478(&qword_1EDDFCD50, MEMORY[0x1E6969530]);
  v1 = sub_1C4F02858();
  MEMORY[0x1C6940010](v1);

  MEMORY[0x1C6940010](0x797469746E65202CLL, 0xEF203A7373616C43);
  *&v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityClass);
  sub_1C4F02438();
  MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FAA190);
  MEMORY[0x1C6940010](*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityIdentifier), *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityIdentifier + 8));
  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return *(&v3 + 1);
}

uint64_t sub_1C4950FE0()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_date;
  v2 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityIdentifier + 8);

  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_attributes);

  return v0;
}

uint64_t sub_1C495109C()
{
  result = sub_1C4EF9CD8();
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

uint64_t sub_1C495114C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1C4950D8C() & 1;
}

uint64_t sub_1C4951194()
{
  sub_1C4404078();
  if ((sub_1C4EF9C68() & 1) == 0 || (sub_1C4EF9C68() & 1) == 0)
  {
    return 0;
  }

  sub_1C441ED2C(OBJC_IVAR____TtC24IntelligencePlatformCore18InteractionSession_entityClass);
  v2 = v2 && v0 == v1;
  if (v2)
  {
  }

  else
  {
    v3 = sub_1C4409A04();

    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C44033A8(OBJC_IVAR____TtC24IntelligencePlatformCore18InteractionSession_entityIdentifier);
  if (v2 && v5 == v6)
  {
    return 1;
  }

  return sub_1C4F02938();
}

uint64_t sub_1C495127C()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore18InteractionSession_startDate;
  v2 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore18InteractionSession_endDate, v2);
  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore18InteractionSession_entityIdentifier + 8);

  return v0;
}

uint64_t sub_1C4951330(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C49513B4()
{
  result = sub_1C4EF9CD8();
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

void sub_1C4951458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4839234(a1, a3);
  if (v6)
  {

    sub_1C4839564(a2, a4);
  }
}

uint64_t sub_1C49514B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C43797469746E65 && a2 == 0xED00007365737361;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C4FAA1B0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

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

uint64_t sub_1C4951588(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6C43797469746E65;
  }
}

uint64_t sub_1C49515D0(void *a1)
{
  v4 = sub_1C456902C(&qword_1EC0BFC20, &qword_1C4F3C548);
  sub_1C43FCDF8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4402A68();
  v10 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4952568();
  sub_1C4F02BF8();
  sub_1C456902C(&qword_1EC0BB498, &qword_1C4F1FFE8);
  sub_1C4952678(&qword_1EDDDBB60, sub_1C470EB1C);
  sub_1C43FC4F4();
  if (!v1)
  {
    sub_1C456902C(&qword_1EC0BB4A0, &unk_1C4F1FFF0);
    sub_1C49525BC(&qword_1EDDDBB58, sub_1C49526E0);
    sub_1C43FC4F4();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_1C49517A0(uint64_t *a1)
{
  v2 = sub_1C456902C(&qword_1EC0BFC18, &qword_1C4F3C540);
  sub_1C43FCDF8(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4952568();
  sub_1C4F02BC8();
  sub_1C456902C(&qword_1EC0BB498, &qword_1C4F1FFE8);
  HIBYTE(v13) = 0;
  sub_1C4952678(&qword_1EDDFA550, sub_1C470EAC8);
  sub_1C4408C10();
  v12 = v14;
  sub_1C456902C(&qword_1EC0BB4A0, &unk_1C4F1FFF0);
  HIBYTE(v13) = 1;
  sub_1C49525BC(&qword_1EDDFA548, sub_1C4952624);
  sub_1C4408C10();
  (*(v4 + 8))(v9, v2);
  sub_1C440962C(a1);
  return v12;
}

uint64_t sub_1C49519C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1C4951194() & 1;
}

uint64_t sub_1C49519EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C49514B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4951A14(uint64_t a1)
{
  v2 = sub_1C4952568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4951A50(uint64_t a1)
{
  v2 = sub_1C4952568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4951AA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C49517A0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1C4951ACC(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_1C49515D0(a1);
}

uint64_t sub_1C4951AE8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = BiomeLibrary();
  sub_1C4461BB8(0, &unk_1EDDDBB08, 0x1E698EA90);
  sub_1C4924E64(a1);
  if (v6)
  {
    v7 = [objc_msgSend(v5 "App")];
    swift_unknownObjectRelease();
    sub_1C4589104();
    v8 = *(*a3 + 16);
    sub_1C4589CBC();
    sub_1C495376C(v8, v7, a3, &qword_1EC0BFCB8, &qword_1C4F3D4D0);
  }

  sub_1C4461BB8(0, &qword_1EDDFA498, 0x1E698EC78);
  sub_1C4925D90(a1);
  if (v9)
  {
    v10 = [objc_msgSend(v5 Location)];
    swift_unknownObjectRelease();
    sub_1C4589104();
    v11 = *(*a3 + 16);
    sub_1C4589CBC();
    sub_1C495376C(v11, v10, a3, &qword_1EC0BFCC0, &qword_1C4F3D4D8);
  }

  sub_1C4461BB8(0, &qword_1EDDFA4A8, 0x1E698EB90);
  sub_1C4926764(a1);
  if ((v12 & 1) == 0)
  {
    return swift_unknownObjectRelease();
  }

  v13 = [objc_msgSend(v5 Device)];
  swift_unknownObjectRelease();
  v14 = [v13 Bluetooth];
  swift_unknownObjectRelease();
  sub_1C4589104();
  v15 = *(*a3 + 16);
  sub_1C4589CBC();
  swift_unknownObjectRelease();
  return sub_1C495376C(v15, v14, a3, &qword_1EC0BFCC8, qword_1C4F3D4E0);
}

void sub_1C4951D58(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v12 = a1[3];
  v13 = a1[4];
  sub_1C4409678(a1, v12);
  (*(v13 + 8))(&v15, a2, a3, a4, a5, v12, v13);
  if (v6)
  {

    v14 = 0uLL;
  }

  else
  {
    v14 = v15;
  }

  *a6 = v14;
}

uint64_t sub_1C4951E14()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1C4951E3C()
{
  sub_1C4951E14();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4951EA0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 17))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 6)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4951EE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1C4951F68()
{
  result = qword_1EDDFB7D0;
  if (!qword_1EDDFB7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB7D0);
  }

  return result;
}

unint64_t sub_1C4951FC0()
{
  result = qword_1EDDFB700;
  if (!qword_1EDDFB700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB700);
  }

  return result;
}

unint64_t sub_1C4952034()
{
  result = qword_1EDDFB7A8;
  if (!qword_1EDDFB7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB7A8);
  }

  return result;
}

unint64_t sub_1C4952088()
{
  result = qword_1EDDFB728;
  if (!qword_1EDDFB728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB728);
  }

  return result;
}

unint64_t sub_1C49520DC()
{
  result = qword_1EDDFB6C8;
  if (!qword_1EDDFB6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB6C8);
  }

  return result;
}

unint64_t sub_1C4952130()
{
  result = qword_1EC0BFBB0;
  if (!qword_1EC0BFBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFBB0);
  }

  return result;
}

unint64_t sub_1C4952184()
{
  result = qword_1EDDFB758;
  if (!qword_1EDDFB758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB758);
  }

  return result;
}

unint64_t sub_1C49521D8()
{
  result = qword_1EDDFB6E8;
  if (!qword_1EDDFB6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB6E8);
  }

  return result;
}

unint64_t sub_1C495222C()
{
  result = qword_1EC0BFBC0;
  if (!qword_1EC0BFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFBC0);
  }

  return result;
}

unint64_t sub_1C4952280()
{
  result = qword_1EDDFB770;
  if (!qword_1EDDFB770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB770);
  }

  return result;
}

unint64_t sub_1C49522D4()
{
  result = qword_1EDDFB7B0;
  if (!qword_1EDDFB7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB7B0);
  }

  return result;
}

unint64_t sub_1C4952328()
{
  result = qword_1EDDFB740;
  if (!qword_1EDDFB740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB740);
  }

  return result;
}

unint64_t sub_1C495237C()
{
  result = qword_1EDDF67F0;
  if (!qword_1EDDF67F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF67F0);
  }

  return result;
}

unint64_t sub_1C49523D0()
{
  result = qword_1EDDE8110;
  if (!qword_1EDDE8110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE8110);
  }

  return result;
}

unint64_t sub_1C4952424()
{
  result = qword_1EDDE8128;
  if (!qword_1EDDE8128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE8128);
  }

  return result;
}

uint64_t sub_1C4952478(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C49524C0()
{
  result = qword_1EDDE8138;
  if (!qword_1EDDE8138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE8138);
  }

  return result;
}

unint64_t sub_1C4952514()
{
  result = qword_1EDDFB7C8;
  if (!qword_1EDDFB7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB7C8);
  }

  return result;
}

unint64_t sub_1C4952568()
{
  result = qword_1EDDFAFB8;
  if (!qword_1EDDFAFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAFB8);
  }

  return result;
}

uint64_t sub_1C49525BC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0BB4A0, &unk_1C4F1FFF0);
    a2();
    result = sub_1C441C328();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4952624()
{
  result = qword_1EDDFB6F8;
  if (!qword_1EDDFB6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB6F8);
  }

  return result;
}

uint64_t sub_1C4952678(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0BB498, &qword_1C4F1FFE8);
    a2();
    result = sub_1C441C328();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C49526E0()
{
  result = qword_1EDDE8130;
  if (!qword_1EDDE8130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE8130);
  }

  return result;
}

uint64_t sub_1C49527B4(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return sub_1C4403F98(a1);
}

_BYTE *sub_1C4952800(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1C49528AC(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_1C4423610(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityRelevance.CommunicationDirection(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C4952A8C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          result = sub_1C4423610(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4952B68()
{
  result = qword_1EC0BFC28;
  if (!qword_1EC0BFC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFC28);
  }

  return result;
}

unint64_t sub_1C4952BC0()
{
  result = qword_1EC0BFC30;
  if (!qword_1EC0BFC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFC30);
  }

  return result;
}

unint64_t sub_1C4952C18()
{
  result = qword_1EC0BFC38;
  if (!qword_1EC0BFC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFC38);
  }

  return result;
}

unint64_t sub_1C4952C70()
{
  result = qword_1EC0BFC40;
  if (!qword_1EC0BFC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFC40);
  }

  return result;
}

unint64_t sub_1C4952CC8()
{
  result = qword_1EC0BFC48;
  if (!qword_1EC0BFC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFC48);
  }

  return result;
}

unint64_t sub_1C4952D20()
{
  result = qword_1EC0BFC50;
  if (!qword_1EC0BFC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFC50);
  }

  return result;
}

unint64_t sub_1C4952D78()
{
  result = qword_1EC0BFC58;
  if (!qword_1EC0BFC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFC58);
  }

  return result;
}

unint64_t sub_1C4952DD0()
{
  result = qword_1EC0BFC60;
  if (!qword_1EC0BFC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFC60);
  }

  return result;
}

unint64_t sub_1C4952E28()
{
  result = qword_1EC0BFC68;
  if (!qword_1EC0BFC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFC68);
  }

  return result;
}

unint64_t sub_1C4952E80()
{
  result = qword_1EC0BFC70;
  if (!qword_1EC0BFC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFC70);
  }

  return result;
}

unint64_t sub_1C4952ED8()
{
  result = qword_1EC0BFC78;
  if (!qword_1EC0BFC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFC78);
  }

  return result;
}

unint64_t sub_1C4952F30()
{
  result = qword_1EC0BFC80;
  if (!qword_1EC0BFC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFC80);
  }

  return result;
}

unint64_t sub_1C4952F88()
{
  result = qword_1EDDFD4F0;
  if (!qword_1EDDFD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD4F0);
  }

  return result;
}

unint64_t sub_1C4952FE0()
{
  result = qword_1EDDFAFB0;
  if (!qword_1EDDFAFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAFB0);
  }

  return result;
}

unint64_t sub_1C4953038()
{
  result = qword_1EDDFB788;
  if (!qword_1EDDFB788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB788);
  }

  return result;
}

unint64_t sub_1C4953090()
{
  result = qword_1EDDFB790;
  if (!qword_1EDDFB790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB790);
  }

  return result;
}

unint64_t sub_1C49530E8()
{
  result = qword_1EDDFB730;
  if (!qword_1EDDFB730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB730);
  }

  return result;
}

unint64_t sub_1C4953140()
{
  result = qword_1EDDFB738;
  if (!qword_1EDDFB738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB738);
  }

  return result;
}

unint64_t sub_1C4953198()
{
  result = qword_1EDDFB760;
  if (!qword_1EDDFB760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB760);
  }

  return result;
}

unint64_t sub_1C49531F0()
{
  result = qword_1EDDFB768;
  if (!qword_1EDDFB768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB768);
  }

  return result;
}

unint64_t sub_1C4953248()
{
  result = qword_1EDDFB708;
  if (!qword_1EDDFB708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB708);
  }

  return result;
}

unint64_t sub_1C49532A0()
{
  result = qword_1EDDFB710;
  if (!qword_1EDDFB710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB710);
  }

  return result;
}

unint64_t sub_1C49532F8()
{
  result = qword_1EDDFB748;
  if (!qword_1EDDFB748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB748);
  }

  return result;
}

unint64_t sub_1C4953350()
{
  result = qword_1EDDFB750;
  if (!qword_1EDDFB750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB750);
  }

  return result;
}

unint64_t sub_1C49533A8()
{
  result = qword_1EDDFB778;
  if (!qword_1EDDFB778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB778);
  }

  return result;
}

unint64_t sub_1C4953400()
{
  result = qword_1EDDFB780;
  if (!qword_1EDDFB780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB780);
  }

  return result;
}

unint64_t sub_1C4953458()
{
  result = qword_1EDDFB718;
  if (!qword_1EDDFB718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB718);
  }

  return result;
}

unint64_t sub_1C49534B0()
{
  result = qword_1EDDFB720;
  if (!qword_1EDDFB720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB720);
  }

  return result;
}

unint64_t sub_1C4953508()
{
  result = qword_1EDDFB798;
  if (!qword_1EDDFB798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB798);
  }

  return result;
}

unint64_t sub_1C4953560()
{
  result = qword_1EDDFB7A0;
  if (!qword_1EDDFB7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB7A0);
  }

  return result;
}

unint64_t sub_1C49535B8()
{
  result = qword_1EDDF67E8;
  if (!qword_1EDDF67E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF67E8);
  }

  return result;
}

unint64_t sub_1C495360C()
{
  result = qword_1EDDFB6D0;
  if (!qword_1EDDFB6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB6D0);
  }

  return result;
}

unint64_t sub_1C4953660()
{
  result = qword_1EDDFB6F0;
  if (!qword_1EDDFB6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB6F0);
  }

  return result;
}

unint64_t sub_1C49536B4()
{
  result = qword_1EDDFB7B8;
  if (!qword_1EDDFB7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB7B8);
  }

  return result;
}

uint64_t sub_1C4953708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GraphBasedVirtualInteractionStreamProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C495376C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v11 = sub_1C456902C(a4, a5);
  v12 = &off_1F43E5760;
  *&v10 = a2;
  v8 = *a3;
  *(v8 + 16) = a1 + 1;
  return sub_1C441D670(&v10, v8 + 40 * a1 + 32);
}

unint64_t sub_1C49537E0()
{
  result = qword_1EDDFB6E0;
  if (!qword_1EDDFB6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB6E0);
  }

  return result;
}

uint64_t sub_1C4953870(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461B0A8(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C4958AC0(v6);
  *a1 = v2;
  return result;
}

void static InternalBiomeXPC.Server.viewValidate(viewQuery:applyFixes:verbose:config:)(void *a1, uint64_t a2, unint64_t a3)
{
  if (qword_1EDDF9710 != -1)
  {
    sub_1C44071D4();
    swift_once();
  }

  v6 = sub_1C4415590();
  if (!v3)
  {
    v7 = v6;
    v8 = *(v6 + 16);
    v9 = a1;

    sub_1C495434C(v9);
    if (sub_1C493443C(a3) == 6)
    {
      v10 = sub_1C43FE990();
      sub_1C4463890(v10, v11);
      sub_1C4F02248();

      *&v23 = 0xD000000000000018;
      *(&v23 + 1) = 0x80000001C4FAA1D0;
      v26 = a3;
      v12 = sub_1C4F02858();
      MEMORY[0x1C6940010](v12);

      sub_1C450B034();
      sub_1C441C114();
      swift_allocError();
      *v13 = v23;
      *(v13 + 16) = v23;
      *(v13 + 32) = v24;
      *(v13 + 48) = v25;
      *(v13 + 64) = 5;
      swift_willThrow();
    }

    else
    {
      v14 = *(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_liveState);

      v15 = sub_1C43FE990();
      sub_1C4428D8C(v15, v16);
      os_unfair_lock_lock(v14 + 6);
      sub_1C4422F74(&v26);
      os_unfair_lock_unlock(v14 + 6);
      v17 = *(v7 + 16);
      MEMORY[0x1EEE9AC00](v18);
      sub_1C4422934();

      v19 = sub_1C43FE990();
      sub_1C4463890(v19, v20);

      v21 = sub_1C43FE990();
      sub_1C4463890(v21, v22);
    }
  }
}

uint64_t InternalBiomeXPC.Server.viewRunUpdate(viewQuery:forceRebuild:priorityOverride:config:)()
{
  sub_1C43FBCD4();
  *(v0 + 200) = v1;
  *(v0 + 208) = v2;
  *(v0 + 323) = v3;
  *(v0 + 192) = v4;
  v5 = sub_1C4EF9CD8();
  *(v0 + 216) = v5;
  sub_1C43FCF7C(v5);
  *(v0 + 224) = v6;
  v8 = *(v7 + 64);
  *(v0 + 232) = sub_1C43FBE7C();
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  *(v0 + 240) = sub_1C43FBE7C();
  v12 = _s7MetricsO7PayloadVMa();
  *(v0 + 248) = v12;
  sub_1C43FCF7C(v12);
  *(v0 + 256) = v13;
  v15 = *(v14 + 64);
  *(v0 + 264) = sub_1C43FBE7C();
  v16 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1C4953CB4()
{
  v1 = *(v0 + 200);
  if (!v1)
  {
    v4 = 3;
    goto LABEL_5;
  }

  v2 = v1;
  v3 = [v2 unsignedIntegerValue];
  if (v3 < 3)
  {
    v4 = v3;

LABEL_5:
    if (qword_1EDDF9710 != -1)
    {
      sub_1C44071D4();
      swift_once();
    }

    v5 = *(v0 + 208);
    v6 = sub_1C4415590();
    *(v0 + 272) = v6;
    v7 = *(v0 + 192);
    *(v0 + 280) = *(v6 + 16);
    swift_retain_n();
    v8 = sub_1C495434C(v7);
    *(v0 + 288) = v8;
    *(v0 + 320) = v9;
    v16 = v8;
    v17 = v9;
    *(v0 + 322) = v4;
    v18 = swift_task_alloc();
    *(v0 + 296) = v18;
    *v18 = v0;
    v18[1] = sub_1C4953EE8;
    v19 = *(v0 + 323);

    return sub_1C4427590(v16, v17, v19, 0, 1, (v0 + 322));
  }

  sub_1C49588E4();
  sub_1C441C114();
  swift_allocError();
  *v10 = 0xD000000000000018;
  *(v10 + 8) = 0x80000001C4FAA1F0;
  *(v10 + 16) = 3;
  swift_willThrow();

  v11 = *(v0 + 264);
  v12 = *(v0 + 232);
  v13 = *(v0 + 240);

  sub_1C43FBDA0();

  return v14();
}

uint64_t sub_1C4953EE8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 296);
  *v4 = *v1;
  *(v3 + 304) = v7;
  *(v3 + 312) = v0;

  sub_1C4463890(*(v3 + 288), *(v3 + 320));
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C4954000()
{
  v3 = *(v0[38] + 16);
  if (v3)
  {
    v4 = v0[32];
    v5 = v0[33];
    v70 = v0[31];
    v6 = v0[28];
    sub_1C4418AF0();
    sub_1C442BC5C();
    v68 = v5;
    do
    {
      v7 = v0[33];
      sub_1C442FE94();
      sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
      inited = swift_initStackObject();
      sub_1C4425CD4(inited, v9, v10, v11, v12, v13, v14, v15, v65, v67, v68, v69, v16);
      v18 = sub_1C4435120(v17);
      v20 = 0x6465727265666564;
      v21 = v18;
      switch(v22)
      {
        case 1:
          sub_1C443FD1C();
          break;
        case 2:
          break;
        case 3:
          sub_1C4409DDC();
          break;
        case 4:
          sub_1C4426C10();
          break;
        case 5:
          sub_1C44023B4();
          break;
        default:
          sub_1C440BDD4();
          break;
      }

      v23 = v0[33];
      v24 = v0[30];
      v25 = v0[27];
      *(v21 + 96) = v20;
      *(v21 + 104) = v19;
      v26 = sub_1C43FF24C();
      sub_1C446C964(v26, v27, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v28 = sub_1C44157D4(v24, 1, v25);
      v35 = v28;
      if (v28 == 1)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v2 = 0;
      }

      else
      {
        v69 = v3;
        v3 = v1;
        v1 = v0[33];
        v36 = v0[29];
        v37 = v0[27];
        v38 = sub_1C441D258(v28, v0[30], v29, v30, v31, v32, v33, v34, v65, v67);
        v39(v38);
        v40 = *(v70 + 36);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v41 = sub_1C442EBB8();
        v49 = sub_1C4415A4C(v41, v42, v43, v44, v45, v46, v47, v48, v66);
        v50(v49);
      }

      v51 = v0[33];
      *(v21 + 168) = sub_1C456902C(&qword_1EC0B9AD8, &unk_1C4F14290);
      *(v21 + 144) = v2;
      *(v21 + 152) = v35 == 1;
      sub_1C4F00F28();
      sub_1C43FC520();
      sub_1C442F230();
      if (v52)
      {
        sub_1C445E868();
        v1 = v71;
      }

      sub_1C44103F4();
    }

    while (!v53);
    v54 = v0[38];
    v55 = v0[34];
    v56 = v0[35];
  }

  else
  {
    v57 = v0[34];
    v58 = v0[35];
    v59 = v0[38];

    v1 = MEMORY[0x1E69E7CC0];
  }

  v60 = v0[33];
  v61 = v0[29];
  v62 = v0[30];

  sub_1C43FBCF0();

  return v63(v1);
}

uint64_t sub_1C49542C4()
{
  sub_1C43FCF70();
  v2 = v0[34];
  v1 = v0[35];

  v3 = v0[39];
  v4 = v0[33];
  v6 = v0[29];
  v5 = v0[30];

  sub_1C43FBDA0();

  return v7();
}

unint64_t sub_1C495434C(void *a1)
{
  v3 = sub_1C4959428(a1);
  if (!v3)
  {
    v6 = sub_1C4959480(a1);
    if (v7)
    {
      v8 = v6;
      v4 = v7;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v9 = sub_1C442B574();
      if (v9 == 11)
      {
        sub_1C49588E4();
        sub_1C441C114();
        swift_allocError();
        *v10 = v8;
        *(v10 + 8) = v4;
        *(v10 + 16) = 0;
        swift_willThrow();

        return v4;
      }

      v11 = v9;

      v12 = [a1 includeDependencies];

      v13 = 256;
      if (!v12)
      {
        v13 = 0;
      }

      v4 = v13 & 0xFFFFFFFFFFFFFF00 | v11 | 0x20000;
    }

    else
    {

      v4 = 2;
    }

LABEL_14:

    return v4;
  }

  v4 = v3;
  sub_1C49587E8();
  if (!v1)
  {
    [a1 includeDependencies];

    goto LABEL_14;
  }

  v5 = v1;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (swift_dynamicCast())
  {
    v4 = v17;
    if (v24)
    {
      sub_1C495993C(v16, v17, v18, v19, v20, v21, v22, v23, v24);
    }

    else
    {

      sub_1C49588E4();
      sub_1C441C114();
      swift_allocError();
      *v14 = v16;
      *(v14 + 8) = v17;
      *(v14 + 16) = 1;
      swift_willThrow();
    }
  }

  return v4;
}

uint64_t InternalBiomeXPC.Server.viewStop()()
{
  sub_1C43FBCD4();
  v1 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  *(v0 + 40) = v1;
  sub_1C43FBD18(v1);
  v3 = *(v2 + 64);
  *(v0 + 48) = sub_1C43FBE7C();
  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4954614()
{
  sub_1C43FCF70();
  if (qword_1EDDE6DB0 != -1)
  {
    sub_1C44071E8();
  }

  v1 = *(v0 + 48);
  sub_1C440E41C(*(v0 + 40), qword_1EDE2CDF0);
  v2 = sub_1C43FBC98();
  sub_1C446C964(v2, v3, v4, v5);
  v6 = type metadata accessor for Configuration();
  result = sub_1C43FD9F0(v6);
  if (v8)
  {
    __break(1u);
  }

  else
  {
    if (qword_1EDDF9710 != -1)
    {
      sub_1C44071D4();
      swift_once();
    }

    v9 = *(v0 + 48);
    sub_1C4415590();
    v10 = *(v0 + 48);
    sub_1C4419A20();
    sub_1C4958938(v10, v11);
    sub_1C4CE0448();

    sub_1C43FBCF0();

    return v12(1);
  }

  return result;
}

uint64_t sub_1C495476C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1C4959A00;

  return InternalBiomeXPC.Server.viewStop()();
}

uint64_t InternalBiomeXPC.Server.viewClearAllData(viewQuery:config:)()
{
  sub_1C43FBCD4();
  v0[24] = v1;
  v0[25] = v2;
  v3 = sub_1C4EF9CD8();
  v0[26] = v3;
  sub_1C43FCF7C(v3);
  v0[27] = v4;
  v6 = *(v5 + 64);
  v0[28] = sub_1C43FBE7C();
  v7 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  v0[29] = sub_1C43FBE7C();
  v10 = _s7MetricsO7PayloadVMa();
  v0[30] = v10;
  sub_1C43FCF7C(v10);
  v0[31] = v11;
  v13 = *(v12 + 64);
  v0[32] = sub_1C43FBE7C();
  v14 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C495492C()
{
  sub_1C43FEAEC();
  if (qword_1EDDF9710 != -1)
  {
    sub_1C44071D4();
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = sub_1C4415590();
  *(v0 + 264) = v2;
  v3 = *(v0 + 192);
  *(v0 + 272) = *(v2 + 16);
  swift_retain_n();
  *(v0 + 280) = sub_1C495434C(v3);
  *(v0 + 312) = v4;
  v5 = v4;
  v6 = swift_task_alloc();
  *(v0 + 288) = v6;
  *v6 = v0;
  v6[1] = sub_1C4954AA8;
  v7 = sub_1C4414C5C();

  return sub_1C4CE0544(v7, v5);
}

uint64_t sub_1C4954AA8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 288);
  *v4 = *v1;
  *(v3 + 296) = v7;
  *(v3 + 304) = v0;

  if (!v0)
  {
    sub_1C4463890(*(v3 + 280), *(v3 + 312));
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C4954BB4()
{
  v3 = *(v0[37] + 16);
  if (v3)
  {
    v4 = v0[31];
    v5 = v0[32];
    v70 = v0[30];
    v6 = v0[27];
    sub_1C4418AF0();
    sub_1C442BC5C();
    v68 = v5;
    do
    {
      v7 = v0[32];
      sub_1C442FE94();
      sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
      inited = swift_initStackObject();
      sub_1C4425CD4(inited, v9, v10, v11, v12, v13, v14, v15, v65, v67, v68, v69, v16);
      v18 = sub_1C4435120(v17);
      v20 = 0x6465727265666564;
      v21 = v18;
      switch(v22)
      {
        case 1:
          sub_1C443FD1C();
          break;
        case 2:
          break;
        case 3:
          sub_1C4409DDC();
          break;
        case 4:
          sub_1C4426C10();
          break;
        case 5:
          sub_1C44023B4();
          break;
        default:
          sub_1C440BDD4();
          break;
      }

      v23 = v0[32];
      v24 = v0[29];
      v25 = v0[26];
      *(v21 + 96) = v20;
      *(v21 + 104) = v19;
      v26 = sub_1C43FF24C();
      sub_1C446C964(v26, v27, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v28 = sub_1C44157D4(v24, 1, v25);
      v35 = v28;
      if (v28 == 1)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v2 = 0;
      }

      else
      {
        v69 = v3;
        v3 = v1;
        v1 = v0[32];
        v36 = v0[28];
        v37 = v0[26];
        v38 = sub_1C441D258(v28, v0[29], v29, v30, v31, v32, v33, v34, v65, v67);
        v39(v38);
        v40 = *(v70 + 36);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v41 = sub_1C442EBB8();
        v49 = sub_1C4415A4C(v41, v42, v43, v44, v45, v46, v47, v48, v66);
        v50(v49);
      }

      v51 = v0[32];
      *(v21 + 168) = sub_1C456902C(&qword_1EC0B9AD8, &unk_1C4F14290);
      *(v21 + 144) = v2;
      *(v21 + 152) = v35 == 1;
      sub_1C4F00F28();
      sub_1C43FC520();
      sub_1C442F230();
      if (v52)
      {
        sub_1C445E868();
        v1 = v71;
      }

      sub_1C44103F4();
    }

    while (!v53);
    v54 = v0[37];
    v55 = v0[33];
    v56 = v0[34];
  }

  else
  {
    v57 = v0[33];
    v58 = v0[34];
    v59 = v0[37];

    v1 = MEMORY[0x1E69E7CC0];
  }

  v60 = v0[32];
  v61 = v0[28];
  v62 = v0[29];

  sub_1C43FBCF0();

  return v63(v1);
}

uint64_t sub_1C4954E78()
{
  sub_1C43FCF70();
  sub_1C4463890(*(v0 + 280), *(v0 + 312));
  v1 = *(v0 + 304);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);

  v4 = *(v0 + 256);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);

  sub_1C43FBDA0();

  return v7();
}

void sub_1C4954F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  sub_1C4BABFC8();
  if (!v7)
  {
    v100 = v13;
    v97 = a7;
    v96 = a5;
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC8];
    v102 = a1;
    v103 = MEMORY[0x1E69E7CC8];
    while (v14 != 11)
    {
      v16 = byte_1F43D9F00[v14 + 32];
      sub_1C4CE4DFC();
      sub_1C4BACAD0();

      swift_isUniquelyReferenced_nonNull_native();
      sub_1C466260C();
      sub_1C4BB44E0(v16, a1);
      swift_isUniquelyReferenced_nonNull_native();
      v104 = v15;
      sub_1C4662550();
      ++v14;
      a1 = v102;
    }

    v98 = a2;
    if (v96 >= 4u)
    {
      v88 = v15;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4598180();
      v94 = v18;
      MEMORY[0x1C6940010](123, 0xE100000000000000);
      v101 = a6;
      MEMORY[0x1C6940010](0x2273657565755122, 0xEA00000000007B3ALL);
      v19 = v103 + 64;
      v20 = 1 << *(v103 + 32);
      v21 = -1;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      v22 = v21 & *(v103 + 64);
      v95 = (v20 + 63) >> 6;
      v86 = 0x80000001C4F86260;
      v87 = 0x80000001C4F862C0;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v23 = 0;
      v24 = 0;
      v25 = 0xE000000000000000;
      v89 = v103 + 64;
      while (2)
      {
        v26 = v24;
        v27 = v96;
        while (1)
        {
          if (!v22)
          {
            while (1)
            {
              v24 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
                break;
              }

              if (v24 >= v95)
              {
                v17 = v100;

                MEMORY[0x1C6940010](0x7377656956222C7DLL, 0xEA00000000003A22);
                v15 = v88;
                goto LABEL_55;
              }

              v22 = *(v19 + 8 * v24);
              ++v26;
              if (v22)
              {
                goto LABEL_18;
              }
            }

            __break(1u);
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

          v24 = v26;
LABEL_18:
          v28 = v27;
          v29 = __clz(__rbit64(v22));
          v22 &= v22 - 1;
          v30 = v29 | (v24 << 6);
          v31 = *(*(v103 + 48) + v30);
          v32 = *(*(v103 + 56) + 8 * v30);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if (v28 != 4 || (sub_1C4C41788(v32, v94) & 1) == 0)
          {
            break;
          }

          v26 = v24;
          v27 = v96;
          v19 = v89;
        }

        MEMORY[0x1C6940010](v23, v25);

        v33 = v88;
        if (*(v88 + 16) && (v34 = sub_1C457B5CC(v31), (v35 & 1) != 0))
        {
          v93 = *(*(v33 + 56) + 8 * v34);
        }

        else
        {
          v93 = 0;
        }

        v104 = 34;
        v105 = 0xE100000000000000;
        v36 = 0xE400000000000000;
        v37 = 1702259052;
        switch(v31)
        {
          case 1:
            v37 = 1701736302;
            break;
          case 2:
            v36 = 0xE500000000000000;
            v37 = 0x796C696164;
            break;
          case 3:
            v37 = 0xD000000000000013;
            v36 = v86;
            break;
          case 4:
            v36 = 0xE600000000000000;
            v38 = 1801807223;
            goto LABEL_32;
          case 5:
            v39 = 0x347972657665;
            goto LABEL_35;
          case 6:
            v39 = 0x327972657665;
LABEL_35:
            v37 = v39 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
            v36 = 0xEB00000000737275;
            break;
          case 7:
            v36 = 0xE600000000000000;
            v38 = 1920298856;
LABEL_32:
            v37 = v38 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
            break;
          case 8:
            v37 = 0x4D31327972657665;
            v36 = 0xEE00736574756E69;
            break;
          case 9:
            v37 = 0x694D377972657665;
            v36 = 0xED0000736574756ELL;
            break;
          case 10:
            v37 = 0xD000000000000013;
            v36 = v87;
            break;
          default:
            break;
        }

        MEMORY[0x1C6940010](v37, v36);

        MEMORY[0x1C6940010](5978658, 0xE300000000000000);
        MEMORY[0x1C6940010](v104, v105);

        v104 = v32;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4953870(&v104);

        v40 = v104;
        v41 = *(v104 + 16);
        if (!v41)
        {
LABEL_53:

          v25 = 0xE100000000000000;
          MEMORY[0x1C6940010](93, 0xE100000000000000);
          v23 = 44;
          v19 = v89;
          continue;
        }

        break;
      }

      v92 = 0;
      v42 = 0;
      v43 = 0;
      v91 = -v41;
      v85 = v104 + 48;
      v44 = 0xE000000000000000;
      v90 = v104;
LABEL_40:
      v45 = (v85 + 24 * v43);
      v46 = v43 + 1;
      while ((v46 - 1) < *(v40 + 16))
      {
        v99 = v46;
        v48 = *(v45 - 2);
        v47 = *(v45 - 1);
        v49 = *v45;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        MEMORY[0x1C6940010](v42, v44);

        if (v48 == v93 || !(v92 & 1 | (v93 >= v48)))
        {
          v104 = v48;
          v105 = v47;
          v106 = v49;
          MEMORY[0x1EEE9AC00](v50);
          v83 = &v104;
          v59 = sub_1C479B5CC(sub_1C4959A04, v82, v100);
          v84 = v91 + v99;
          v104 = 0;
          v105 = 0xE000000000000000;
          if (v59)
          {
            sub_1C4F02248();

            v104 = 34;
            v105 = 0xE100000000000000;
            v60 = sub_1C4D11C18(v48, v47, v49);
            v62 = v61;

            MEMORY[0x1C6940010](v60, v62);

            v63 = 0x2D3C20B9949FF020;
            v64 = 0xAF2874726174532DLL;
          }

          else
          {
            sub_1C4F02248();

            v104 = 34;
            v105 = 0xE100000000000000;
            v65 = sub_1C4D11C18(v48, v47, v49);
            v67 = v66;

            MEMORY[0x1C6940010](v65, v67);

            v63 = 0x726174532D2D3C20;
            v64 = 0xEA00000000002874;
          }

          MEMORY[0x1C6940010](v63, v64);
          v107 = v93;
          v68 = sub_1C4F02858();
          MEMORY[0x1C6940010](v68);

          MEMORY[0x1C6940010](8745, 0xE200000000000000);
          MEMORY[0x1C6940010](v104, v105);
          v44 = 0xE100000000000000;

          v92 = 1;
          v42 = 44;
          v40 = v90;
          v43 = v99;
          if (v84)
          {
            goto LABEL_40;
          }

          goto LABEL_53;
        }

        v104 = v48;
        v105 = v47;
        v106 = v49;
        MEMORY[0x1EEE9AC00](v50);
        v83 = &v104;
        if (sub_1C479B5CC(sub_1C495991C, v82, v100))
        {
          v104 = 34;
          v105 = 0xE100000000000000;
          v51 = sub_1C4D11C18(v48, v47, v49);
          v53 = v52;

          MEMORY[0x1C6940010](v51, v53);

          v54 = 0x22B9949FF020;
          v55 = 0xA600000000000000;
        }

        else
        {
          v104 = 34;
          v105 = 0xE100000000000000;
          v56 = sub_1C4D11C18(v48, v47, v49);
          v58 = v57;

          MEMORY[0x1C6940010](v56, v58);

          v54 = 34;
          v55 = 0xE100000000000000;
        }

        MEMORY[0x1C6940010](v54, v55);
        MEMORY[0x1C6940010](v104, v105);

        v46 = v99 + 1;
        v40 = v90;
        v45 += 3;
        v44 = 0xE100000000000000;
        v42 = 44;
        if (v91 + v99 + 1 == 1)
        {
          goto LABEL_53;
        }
      }

LABEL_65:
      __break(1u);

      __break(1u);
    }

    else
    {
      v17 = v100;
LABEL_55:
      MEMORY[0x1C6940010](91, 0xE100000000000000);
      v69 = 0;
      v70 = 0;
      v99 = *(v17 + 16);
      v97 = v97 & 1 | (v96 << 8);
      v71 = (v17 + 48);
      v72 = 0xE000000000000000;
      while (v99 != v70)
      {
        if (v70 >= *(v100 + 16))
        {
          goto LABEL_64;
        }

        v101 = 0;
        v73 = v15;
        v75 = *(v71 - 1);
        v74 = *v71;
        v76 = *(v71 - 2);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        MEMORY[0x1C6940010](v69, v72);

        v77 = v101;
        v78 = sub_1C4CEC38C(v76);
        if (v77)
        {

          return;
        }

        v80 = v78;
        v81 = v79;

        ++v70;
        MEMORY[0x1C6940010](v80, v81);

        v71 += 3;
        v72 = 0xE100000000000000;
        v69 = 44;
        v15 = v73;
      }

      MEMORY[0x1C6940010](93, 0xE100000000000000);
      switch(v96)
      {
        case 4:
        case 5:
          MEMORY[0x1C6940010](125, 0xE100000000000000);
          break;
        default:
          break;
      }
    }
  }
}

uint64_t sub_1C4955A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);
  v5 = sub_1C444B1C0(a1, a2, a3);
  return v6(v5);
}

uint64_t InternalBiomeXPC.Server.viewValidate(config:)()
{
  sub_1C43FBCD4();
  *(v0 + 16) = v1;
  v2 = type metadata accessor for Configuration();
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  *(v0 + 24) = sub_1C43FBE7C();
  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4955B7C()
{
  sub_1C43FCF70();
  v1 = *(v0 + 24);
  sub_1C44594A4(*(v0 + 16), v1, type metadata accessor for Configuration);
  v2 = type metadata accessor for OntologyStore();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  OntologyStore.init(config:)(v1);
  sub_1C4C8EA64();
  sub_1C4C8F3A8();
  v6 = v5;

  if (v6)
  {
    v7 = *(v0 + 24);

    sub_1C43FBCF0();
    v9 = 1;
  }

  else
  {
    sub_1C49588E4();
    sub_1C441C114();
    swift_allocError();
    *v10 = 0xD000000000000032;
    *(v10 + 8) = 0x80000001C4FAA210;
    *(v10 + 16) = 3;
    swift_willThrow();

    v11 = *(v0 + 24);

    sub_1C43FBCF0();
    v9 = 0;
  }

  return v8(v9);
}

uint64_t InternalBiomeXPC.Server.viewSetEnabled(name:enabled:config:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = a4;
  *(v4 + 88) = a3;
  *(v4 + 64) = a1;
  v5 = sub_1C43FCE74();
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4955D00()
{
  if (qword_1EDDF9710 != -1)
  {
    sub_1C44071D4();
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_1C4415590();
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = v3;
  *(inited + 40) = v4;
  v6 = *(v2 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49587E8();
  LODWORD(v4) = *(v0 + 88);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  swift_setDeallocating();
  sub_1C44DEE40();
  v9 = *(v2 + 16);
  v10 = swift_task_alloc();
  *(v10 + 16) = v8;
  *(v10 + 24) = v7;

  sub_1C4422934();

  sub_1C43FBCF0();

  return v12(1);
}

void sub_1C4955ED0()
{
  sub_1C4BACEC4();
  if (!v0)
  {
    sub_1C4BB98B0();
  }
}

void sub_1C4955F28(uint64_t a1, uint64_t a2, void (**a3)(char *, uint64_t), unint64_t a4)
{
  v9 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v37 - v11;
  v13 = sub_1C4EFB768();
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  sub_1C4BACEC4();
  if (!v4)
  {
    v19 = v18;
    v38 = a3;
    v39 = a4;
    v20 = v47;
    v43 = v13;
    v44 = v12;
    sub_1C4BB98B0();
    v21 = sub_1C4BAD398(v19, a1, a2);
    v40 = v16;
    v42 = a2;
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_1C4F02248();

    v45 = 0xD000000000000015;
    v46 = 0x80000001C4FAA460;
    MEMORY[0x1C6940010](v38, v39);
    MEMORY[0x1C6940010](0xD000000000000017, 0x80000001C4FAA480);
    v22 = 0;
    v23 = v46;
    v38 = (v20 + 8);
    v39 = v45;
    v24 = (v21 + 48);
    v47 = *(v21 + 16);
    v37 = xmmword_1C4F0C890;
    for (i = v21; ; v21 = i)
    {
      if (v47 == v22)
      {

        return;
      }

      if (v22 >= *(v21 + 16))
      {
        break;
      }

      v25 = v17;
      v26 = *(v24 - 2);
      v27 = v24;
      v28 = *v24;
      swift_unownedRetainStrong();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v29 = sub_1C4440C6C(v25);

      v30 = *(v29 + 120);

      sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
      v31 = swift_allocObject();
      *(v31 + 16) = v37;
      v32 = MEMORY[0x1E69E6530];
      *(v31 + 56) = MEMORY[0x1E69E6530];
      v33 = MEMORY[0x1E69A0180];
      *(v31 + 64) = MEMORY[0x1E69A0180];
      *(v31 + 32) = 1;
      *(v31 + 96) = MEMORY[0x1E69E6158];
      *(v31 + 104) = MEMORY[0x1E69A0138];
      *(v31 + 112) = v26;
      *(v31 + 72) = v39;
      *(v31 + 80) = v23;
      *(v31 + 136) = v32;
      *(v31 + 144) = v33;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v34 = v40;
      sub_1C4EFB728();
      sub_1C4EFC088();
      v35 = v43;
      (*v38)(v34, v43);
      v36 = v44;
      sub_1C440BAA8(v44, 1, 1, v35);
      sub_1C4EFC0A8();
      sub_1C4420C3C(v36, &unk_1EC0C06C0, &unk_1C4F10DB0);

      v24 = v27 + 3;
      ++v22;
      v17 = v25;
    }

    __break(1u);
  }
}

uint64_t InternalBiomeXPC.Server.viewRunUpdate(viewQuery:forceRebuild:priorityOverride:)()
{
  sub_1C43FBCD4();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 96) = v3;
  *(v1 + 40) = v4;
  v5 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  *(v1 + 64) = v5;
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  *(v1 + 72) = sub_1C43FBE7C();
  v8 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C49563CC()
{
  sub_1C43FCF70();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v1 = sub_1C4F00978();
  sub_1C43FCEE8(v1, qword_1EDE2DCD8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "InternalBiomeXPC: viewRunUpdate");
    sub_1C43FE9D4();
  }

  if (qword_1EDDE6DB0 != -1)
  {
    sub_1C44071E8();
  }

  v7 = *(v0 + 72);
  sub_1C440E41C(*(v0 + 64), qword_1EDE2CDF0);
  v8 = sub_1C43FBC98();
  sub_1C446C964(v8, v9, v10, v11);
  v12 = type metadata accessor for Configuration();
  result = sub_1C43FD9F0(v12);
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v15 = swift_task_alloc();
    *(v0 + 80) = v15;
    *v15 = v0;
    v15[1] = sub_1C4956530;
    v16 = *(v0 + 72);
    v17 = *(v0 + 96);
    v18 = *(v0 + 48);
    sub_1C440F4D4(*(v0 + 40));

    return InternalBiomeXPC.Server.viewRunUpdate(viewQuery:forceRebuild:priorityOverride:config:)();
  }

  return result;
}

uint64_t sub_1C4956530()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *v1;
  sub_1C43FBDAC();
  *v10 = v9;
  *(v5 + 88) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = *(v5 + 72);
    sub_1C4419A20();
    sub_1C4958938(v14, v15);

    sub_1C43FBCF0();

    return v16(v3);
  }
}

uint64_t sub_1C4956674()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 72);
  sub_1C4419A20();
  sub_1C4958938(v1, v2);

  sub_1C43FBDA0();
  v4 = *(v0 + 88);

  return v3();
}

uint64_t sub_1C4956784(void *a1, int a2, void *a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v9 = a1;
  v10 = a3;
  a5;
  v11 = swift_task_alloc();
  v5[6] = v11;
  *v11 = v5;
  v11[1] = sub_1C495686C;

  return InternalBiomeXPC.Server.viewRunUpdate(viewQuery:forceRebuild:priorityOverride:)();
}

uint64_t sub_1C495686C()
{
  sub_1C446BF5C();
  sub_1C43FEAEC();
  v2 = v0;
  sub_1C43FBDE4();
  v4 = v3;
  sub_1C44001F0();
  *v5 = v4;
  v7 = v6[6];
  v8 = v6[4];
  v9 = v6[3];
  v10 = v6[2];
  v11 = *v1;
  sub_1C43FBDAC();
  *v12 = v11;

  if (v2)
  {
    v13 = sub_1C4EF9798();

    v14 = v13;
  }

  else
  {
    sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
    v15 = sub_1C4F01658();

    v14 = v15;
  }

  v16 = *(v4 + 40);
  v17 = sub_1C44033C0();
  v18(v17);

  _Block_release(v16);
  sub_1C43FBDA0();
  sub_1C44258D4();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t InternalBiomeXPC.Server.viewClearAllData(viewQuery:)()
{
  sub_1C43FBCD4();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[7] = v3;
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  v1[8] = sub_1C43FBE7C();
  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4956A94()
{
  sub_1C43FCF70();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v1 = sub_1C4F00978();
  sub_1C43FCEE8(v1, qword_1EDE2DCD8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "InternalBiomeXPC: viewClearAllData");
    sub_1C43FE9D4();
  }

  if (qword_1EDDE6DB0 != -1)
  {
    sub_1C44071E8();
  }

  v7 = v0[8];
  sub_1C440E41C(v0[7], qword_1EDE2CDF0);
  v8 = sub_1C43FBC98();
  sub_1C446C964(v8, v9, v10, v11);
  v12 = type metadata accessor for Configuration();
  result = sub_1C43FD9F0(v12);
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v15 = swift_task_alloc();
    v0[9] = v15;
    *v15 = v0;
    v15[1] = sub_1C4956BF4;
    v16 = v0[8];
    sub_1C440F4D4(v0[5]);

    return InternalBiomeXPC.Server.viewClearAllData(viewQuery:config:)();
  }

  return result;
}

uint64_t sub_1C4956BF4()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 72);
  v9 = *v1;
  sub_1C43FBDAC();
  *v10 = v9;
  *(v5 + 80) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = *(v5 + 64);
    sub_1C4419A20();
    sub_1C4958938(v14, v15);

    sub_1C43FBCF0();

    return v16(v3);
  }
}

uint64_t sub_1C4956D38()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 64);
  sub_1C4419A20();
  sub_1C4958938(v1, v2);

  sub_1C43FBDA0();
  v4 = *(v0 + 80);

  return v3();
}

uint64_t sub_1C4956E2C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1C4956EF0;

  return InternalBiomeXPC.Server.viewClearAllData(viewQuery:)();
}

uint64_t sub_1C4956EF0()
{
  sub_1C43FEAEC();
  v2 = v0;
  sub_1C43FBDE4();
  v4 = v3;
  sub_1C44001F0();
  *v5 = v4;
  v7 = v6[5];
  v8 = v6[3];
  v9 = v6[2];
  v10 = *v1;
  sub_1C43FBDAC();
  *v11 = v10;

  if (v2)
  {
    v12 = sub_1C4EF9798();

    v13 = v12;
  }

  else
  {
    sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
    v14 = sub_1C4F01658();

    v13 = v14;
  }

  v15 = *(v4 + 32);
  v16 = sub_1C44033C0();
  v17(v16);

  _Block_release(v15);
  sub_1C43FBDA0();

  return v18();
}

uint64_t InternalBiomeXPC.Server.viewValidate(viewQuery:applyFixes:verbose:)()
{
  sub_1C43FCF70();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  ObjectType = swift_getObjectType();
  *(v0 + 48) = v2;
  *(v0 + 56) = ObjectType;
  *(v0 + 80) = v4;
  *(v0 + 40) = v6;
  v8 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  *(v0 + 64) = v8;
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  *(v0 + 72) = sub_1C43FBE7C();
  v11 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C495712C()
{
  sub_1C43FEAEC();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v1 = sub_1C4F00978();
  sub_1C43FCEE8(v1, qword_1EDE2DCD8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "InternalBiomeXPC: viewInfo");
    sub_1C43FE9D4();
  }

  if (qword_1EDDE6DB0 != -1)
  {
    sub_1C44071E8();
  }

  v7 = *(v0 + 72);
  sub_1C440E41C(*(v0 + 64), qword_1EDE2CDF0);
  v8 = sub_1C43FBC98();
  sub_1C446C964(v8, v9, v10, v11);
  v12 = type metadata accessor for Configuration();
  result = sub_1C43FD9F0(v12);
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v15 = *(v0 + 72);
    static InternalBiomeXPC.Server.viewValidate(viewQuery:applyFixes:verbose:config:)(*(v0 + 40), *(v0 + 80), *(v0 + 48));
    v16 = *(v0 + 72);
    v18 = v17;
    v20 = v19;
    sub_1C4419A20();
    sub_1C4958938(v16, v21);

    v22 = *(v0 + 8);

    return v22(v18, v20);
  }

  return result;
}

uint64_t sub_1C4957398(void *a1, int a2, int a3, void *aBlock, void *a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v8 = a1;
  a5;
  v9 = swift_task_alloc();
  v5[5] = v9;
  *v9 = v5;
  v9[1] = sub_1C4957474;

  return InternalBiomeXPC.Server.viewValidate(viewQuery:applyFixes:verbose:)();
}

uint64_t sub_1C4957474()
{
  sub_1C446BF5C();
  sub_1C43FEAEC();
  v2 = v0;
  sub_1C43FBDE4();
  v4 = v3;
  sub_1C44001F0();
  *v5 = v4;
  v7 = v6[5];
  v8 = v6[3];
  v9 = v6[2];
  v10 = *v1;
  sub_1C43FBDAC();
  *v11 = v10;

  if (v2)
  {
    v12 = sub_1C4EF9798();

    v13 = v12;
  }

  else
  {
    v14 = sub_1C4F01108();

    v13 = v14;
  }

  v15 = *(v4 + 32);
  v16 = sub_1C44033C0();
  v17(v16);

  _Block_release(v15);
  sub_1C43FBDA0();
  sub_1C44258D4();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t InternalBiomeXPC.Server.viewDumpState(completion:)(void (*a1)(uint64_t, void))
{
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v3 = sub_1C43FBCE0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v8 = sub_1C4F00978();
  sub_1C43FCEE8(v8, qword_1EDE2DCD8);
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_1C43FCED0();
    *v11 = 0;
    _os_log_impl(&dword_1C43F8000, v9, v10, "InternalBiomeXPC: viewDumpState", v11, 2u);
    MEMORY[0x1C6942830](v11, -1, -1);
  }

  if (qword_1EDDE6DB0 != -1)
  {
    sub_1C44071E8();
  }

  sub_1C43FCEE8(v2, qword_1EDE2CDF0);
  swift_beginAccess();
  sub_1C446C964(v9, v7, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v12 = type metadata accessor for Configuration();
  result = sub_1C44157D4(v7, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    a1(1, 0);
    return sub_1C4420C3C(v7, &unk_1EC0B9610, &unk_1C4F0F2E0);
  }

  return result;
}

uint64_t InternalBiomeXPC.Server.viewValidate()()
{
  sub_1C43FBCD4();
  v1[5] = v0;
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[6] = v2;
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  v1[7] = sub_1C43FBE7C();
  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C49578D4()
{
  sub_1C43FCF70();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v1 = sub_1C4F00978();
  sub_1C43FCEE8(v1, qword_1EDE2DCD8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "InternalBiomeXPC: viewValidate");
    sub_1C43FE9D4();
  }

  if (qword_1EDDE6DB0 != -1)
  {
    sub_1C44071E8();
  }

  v7 = v0[7];
  sub_1C440E41C(v0[6], qword_1EDE2CDF0);
  v8 = sub_1C43FBC98();
  sub_1C446C964(v8, v9, v10, v11);
  v12 = type metadata accessor for Configuration();
  result = sub_1C43FD9F0(v12);
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v15 = swift_task_alloc();
    v0[8] = v15;
    *v15 = v0;
    v15[1] = sub_1C4957A30;
    sub_1C440F4D4(v0[7]);

    return InternalBiomeXPC.Server.viewValidate(config:)();
  }

  return result;
}

uint64_t sub_1C4957A30()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  sub_1C43FBDAC();
  *v10 = v9;
  *(v5 + 72) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = *(v5 + 56);
    sub_1C4419A20();
    sub_1C4958938(v14, v15);

    sub_1C43FBCF0();

    return v16(v3 & 1);
  }
}

uint64_t sub_1C4957B74()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 56);
  sub_1C4419A20();
  sub_1C4958938(v1, v2);

  sub_1C43FBCF0();
  v4 = *(v0 + 72);

  return v3(0);
}

uint64_t sub_1C4957C04(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v6 = a1;
  v7 = sub_1C43FBC98();

  return sub_1C446D134(v7, v8);
}

uint64_t sub_1C4957C70(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1C4957D18;

  return InternalBiomeXPC.Server.viewValidate()();
}

uint64_t sub_1C4957D18()
{
  sub_1C446BF5C();
  sub_1C43FEAEC();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  v8 = v5[4];
  v9 = v5[2];
  v10 = *v1;
  *v7 = *v1;

  v11 = v5[3];
  if (v2)
  {
    sub_1C4EF9798();

    (*(v11 + 16))(v11, 0, v1);
  }

  else
  {
    (*(v11 + 16))(v11, v4 & 1, 0);
  }

  _Block_release(v6[3]);
  v12 = v10[1];
  sub_1C44258D4();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t InternalBiomeXPC.Server.viewSetEnabled(name:enabled:)()
{
  sub_1C43FBCD4();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 96) = v3;
  *(v1 + 40) = v4;
  v5 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  *(v1 + 64) = v5;
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  *(v1 + 72) = sub_1C43FBE7C();
  v8 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C4957F20()
{
  sub_1C43FCF70();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v1 = sub_1C4F00978();
  sub_1C43FCEE8(v1, qword_1EDE2DCD8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "InternalBiomeXPC: viewSetEnabled");
    sub_1C43FE9D4();
  }

  if (qword_1EDDE6DB0 != -1)
  {
    sub_1C44071E8();
  }

  v7 = *(v0 + 72);
  sub_1C440E41C(*(v0 + 64), qword_1EDE2CDF0);
  v8 = sub_1C43FBC98();
  sub_1C446C964(v8, v9, v10, v11);
  v12 = type metadata accessor for Configuration();
  result = sub_1C43FD9F0(v12);
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v15 = swift_task_alloc();
    *(v0 + 80) = v15;
    *v15 = v0;
    v15[1] = sub_1C4958084;
    v16 = *(v0 + 72);
    v17 = *(v0 + 96);
    v18 = *(v0 + 48);
    v19 = sub_1C440F4D4(*(v0 + 40));

    return InternalBiomeXPC.Server.viewSetEnabled(name:enabled:config:)(v19, v20, v21, v22);
  }

  return result;
}

uint64_t sub_1C4958084()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *v1;
  sub_1C43FBDAC();
  *v10 = v9;
  *(v5 + 88) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = *(v5 + 72);
    sub_1C4419A20();
    sub_1C4958938(v14, v15);

    sub_1C43FBCF0();

    return v16(v3 & 1);
  }
}

uint64_t sub_1C49581C8()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 72);
  sub_1C4419A20();
  sub_1C4958938(v1, v2);

  sub_1C43FBCF0();
  v4 = *(v0 + 88);

  return v3(0);
}

uint64_t sub_1C49582D0(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  sub_1C4F01138();
  v4[4] = v6;
  a4;
  v7 = swift_task_alloc();
  v4[5] = v7;
  *v7 = v4;
  v7[1] = sub_1C49583B4;

  return InternalBiomeXPC.Server.viewSetEnabled(name:enabled:)();
}

uint64_t sub_1C49583B4()
{
  sub_1C446BF5C();
  sub_1C43FEAEC();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = v7[5];
  v9 = v7[4];
  v10 = v7[3];
  v11 = v7[2];
  v12 = *v1;
  sub_1C43FBDAC();
  *v13 = v12;

  if (v0)
  {
    if (v10)
    {
      v14 = *(v5 + 24);
      v15 = sub_1C4EF9798();

      (v14)[2](v14, 0, v15);
      _Block_release(v14);
    }

    else
    {
    }
  }

  else if (v10)
  {
    v16 = *(v5 + 24);
    v16[2](v16, v3 & 1, 0);
    _Block_release(v16);
  }

  sub_1C43FBDA0();
  sub_1C44258D4();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_1C495855C(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 2:
      sub_1C43FBFCC();
      sub_1C4F02248();

      sub_1C440444C();
      v4 = sub_1C44410EC();
      goto LABEL_5;
    case 3:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      break;
    default:
      sub_1C43FBFCC();
      sub_1C4F02248();

      sub_1C440444C();
      v6 = sub_1C44410EC();
      MEMORY[0x1C6940010](v6);
      v4 = 0x766E692073692027;
      v5 = 0xEC00000064696C61;
LABEL_5:
      MEMORY[0x1C6940010](v4, v5);
      a1 = v8;
      break;
  }

  return a1;
}

uint64_t sub_1C495867C(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  v7 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1C4F01138();
  *(inited + 40) = v8;
  v9 = sub_1C495855C(a1, a2, a3);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  return sub_1C4F00F28();
}

uint64_t sub_1C4958734(uint64_t a1)
{
  v2 = sub_1C4958A6C();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C4958770(uint64_t a1)
{
  v2 = sub_1C4958A6C();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C4958828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = (a3 + 40);
  if (v5)
  {
    while (1)
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4BAF42C();
      if (v4)
      {
        break;
      }

      v6 += 2;
      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

unint64_t sub_1C49588E4()
{
  result = qword_1EC0BFCD0;
  if (!qword_1EC0BFCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFCD0);
  }

  return result;
}

uint64_t sub_1C4958938(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1C49589AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1C4955ED0();
}

uint64_t sub_1C49589D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4958A14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1C4958A6C()
{
  result = qword_1EC0BFCD8;
  if (!qword_1EC0BFCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFCD8);
  }

  return result;
}

uint64_t sub_1C4958AC0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C4F02828();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C4958C38(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C4958BB4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C4958BB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 32);
        v11 = *(v9 + 40);
        *(v9 + 24) = *v9;
        result = *(v9 + 16);
        *(v9 + 40) = result;
        *v9 = v7;
        *(v9 + 8) = v10;
        *(v9 + 16) = v11;
        v9 -= 24;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C4958C38(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v90 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v85 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9);
        v11 = (*a3 + 24 * v7);
        v12 = 24 * v7;
        v15 = *v11;
        v14 = v11 + 6;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 3;
          v20 = (v10 < v13) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 24 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *(v25 + 2);
                v28 = *v25;
                v29 = *(v26 - 8);
                *v25 = *(v26 - 24);
                *(v25 + 2) = v29;
                *(v26 - 24) = v28;
                *(v26 - 8) = v27;
              }

              ++v23;
              v21 -= 24;
              v12 += 24;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9 - 24;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 24 * v9);
              v34 = v32;
              v35 = v31;
              do
              {
                if (v33 >= *v35)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *(v35 + 32);
                v37 = *(v35 + 40);
                *(v35 + 24) = *v35;
                *(v35 + 40) = *(v35 + 16);
                *v35 = v33;
                *(v35 + 8) = v36;
                *(v35 + 16) = v37;
                v35 -= 24;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 24;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v87 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_1C458A358();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1C458A358();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v7;
      v42[1] = v87;
      v88 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_56:
            if (v49)
            {
              goto LABEL_96;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_99;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_104;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v40 < 2)
          {
            goto LABEL_98;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_71:
          if (v64)
          {
            goto LABEL_101;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_103;
          }

          if (v71 < v63)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1C4959280((*a3 + 24 * *v75), (*a3 + 24 * *v77), *a3 + 24 * v78, v88);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v78 < v76)
          {
            goto LABEL_91;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_92;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_93;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          v5 = 0;
          if (!v81)
          {
            goto LABEL_85;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_94;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_95;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_97;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_100;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_105;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v87;
      a4 = v85;
      if (v87 >= v6)
      {
        v90 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1C4959148(&v90, *a1, a3);
LABEL_89:
}

uint64_t sub_1C4959148(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C46194F4(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1C4959280((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1C4959280(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1C455B518(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = *(v12 + 2);
    *v7 = v14;
    goto LABEL_13;
  }

  sub_1C455B518(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_15:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v10 - 3) < *v15)
    {
      v13 = v5 + 24 == v6;
      v6 -= 24;
      if (!v13)
      {
        v18 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v18;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v17 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v17;
    }

    v10 -= 24;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

uint64_t sub_1C4959428(void *a1)
{
  v1 = [a1 names];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01678();

  return v3;
}

uint64_t sub_1C4959480(void *a1)
{
  v1 = [a1 schedule];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C4959500()
{
  sub_1C43FEAEC();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = swift_task_alloc();
  v6 = sub_1C43FC218(v5);
  *v6 = v7;
  v6[1] = sub_1C442F080;
  v8 = sub_1C4414C5C();

  return v9(v8, v2, v4, v3);
}

uint64_t sub_1C49595B8()
{
  sub_1C43FCF70();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1C43FC218(v3);
  *v4 = v5;
  v4[1] = sub_1C442F080;
  v6 = sub_1C43FBC98();

  return v7(v6);
}

uint64_t sub_1C4959658()
{
  sub_1C446BF5C();
  sub_1C43FEAEC();
  sub_1C4422390();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  sub_1C442E004(v1);
  sub_1C44258D4();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C49596E8()
{
  sub_1C43FCF70();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_1C43FC218(v4);
  *v5 = v6;
  v5[1] = sub_1C442F080;
  v7 = sub_1C4414C5C();

  return v8(v7, v2, v3);
}

uint64_t sub_1C4959790()
{
  sub_1C446BF5C();
  sub_1C43FEAEC();
  sub_1C4422390();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  sub_1C442E004(v1);
  sub_1C44258D4();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C4959820()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4959860()
{
  sub_1C43FCF70();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1C43FC218(v3);
  *v4 = v5;
  v4[1] = sub_1C442F080;
  v6 = sub_1C43FBC98();

  return v7(v6);
}

uint64_t sub_1C495993C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  result = a2;
  switch(a9)
  {
    case 0:
    case 1:
    case 6:

      goto LABEL_4;
    case 2:

      goto LABEL_4;
    case 3:
    case 4:
    case 7:
    case 8:
    case 9:
LABEL_4:

      goto LABEL_5;
    case 5:
    case 10:
    case 11:
    case 12:
LABEL_5:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4959A50()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDE2CDF0);
  v1 = sub_1C442B738(v0, qword_1EDE2CDF0);
  v2 = type metadata accessor for Configuration();

  return sub_1C440BAA8(v1, 1, 1, v2);
}

void sub_1C4959ACC(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - v4;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDE2DCD8);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_1C43FCED0();
    *v9 = 0;
    _os_log_impl(&dword_1C43F8000, v7, v8, "InternalBiomeXPC: starting...", v9, 2u);
    MEMORY[0x1C6942830](v9, -1, -1);
  }

  if (qword_1EDDE6DB0 != -1)
  {
    sub_1C44071E8();
  }

  v10 = sub_1C442B738(v2, qword_1EDE2CDF0);
  sub_1C44098F0(a1, v5);
  v11 = type metadata accessor for Configuration();
  sub_1C440BAA8(v5, 0, 1, v11);
  swift_beginAccess();
  sub_1C45A6EE0(v5, v10);
  swift_endAccess();
  sub_1C45A6F50();
  sub_1C440ACF4();
  v12 = sub_1C49AA56C();
  v13 = qword_1EDE2CDE0;
  qword_1EDE2CDE0 = v12;
  v14 = v12;

  if (v14)
  {
    qword_1EDE2CDE8 = [objc_allocWithZone(type metadata accessor for InternalBiomeXPC.Delegate()) init];
    v15 = qword_1EDE2CDE8;
    swift_unknownObjectRelease();
    [v14 setDelegate:v15];

    [v14 resume];
  }

  else
  {
    v14 = sub_1C4F00968();
    v16 = sub_1C4F01CE8();
    if (os_log_type_enabled(v14, v16))
    {
      v17 = sub_1C43FCED0();
      sub_1C43FBD24(v17);
      _os_log_impl(&dword_1C43F8000, v14, v16, "Failed to create Internal XPC service", v13, 2u);
      sub_1C43FE9D4();
    }
  }
}

uint64_t InternalBiomeXPC.InternalBiomeXPCError.hashValue.getter()
{
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](0);
  return sub_1C4F02B68();
}

id InternalBiomeXPC.Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1C4959E58()
{
  result = qword_1EC0BFCE0;
  if (!qword_1EC0BFCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFCE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InternalBiomeXPC.InternalBiomeXPCError(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C4959FA0(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  if (![objc_opt_self() isInternalDevice])
  {
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0();
    }

    v17 = sub_1C4F00978();
    sub_1C442B738(v17, qword_1EDE2DCD8);
    v18 = sub_1C4F00968();
    v19 = sub_1C4F01CF8();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_22;
    }

    v20 = sub_1C43FCED0();
    sub_1C43FBD24(v20);
    v21 = "InternalBiomeXPC: API disabled on customer devices.";
    goto LABEL_21;
  }

  if (qword_1EDDE6DB0 != -1)
  {
    sub_1C44071E8();
  }

  v7 = sub_1C442B738(v3, qword_1EDE2CDF0);
  swift_beginAccess();
  sub_1C4466EEC(v7, v6);
  v8 = type metadata accessor for Configuration();
  result = sub_1C44157D4(v6, 1, v8);
  if (result != 1)
  {
    v10 = &v6[*(v8 + 20)];
    v3 = *v10;
    v11 = v10[1];
    sub_1C4467948(v6);
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v3) != 0 || (*(&xmmword_1EDDFEC90 + 1) & v11) != *(&xmmword_1EDDFEC90 + 1))
    {
      sub_1C440ACF4();
      if (sub_1C446874C())
      {
        v13 = [objc_opt_self() interfaceWithProtocol_];
        sub_1C44059FC(v13, sel_setExportedInterface_);

        v14 = [objc_allocWithZone(type metadata accessor for InternalBiomeXPC.Server()) init];
        sub_1C44059FC(v14, sel_setExportedObject_);

        v29 = sub_1C495A39C;
        v30 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v26 = 1107296256;
        v27 = sub_1C4833DD0;
        v28 = &unk_1F43F1918;
        v15 = _Block_copy(&aBlock);
        sub_1C44059FC(v15, sel_setInterruptionHandler_);
        _Block_release(v15);
        v29 = sub_1C495A3BC;
        v30 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v26 = 1107296256;
        v27 = sub_1C4833DD0;
        v28 = &unk_1F43F1940;
        v16 = _Block_copy(&aBlock);
        sub_1C44059FC(v16, sel_setInvalidationHandler_);
        _Block_release(v16);
        [a2 resume];
        return 1;
      }

      return 0;
    }

    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0();
    }

    v22 = sub_1C4F00978();
    sub_1C442B738(v22, qword_1EDE2DCD8);
    v18 = sub_1C4F00968();
    v19 = sub_1C4F01CF8();
    if (!os_log_type_enabled(v18, v19))
    {
LABEL_22:

      return 0;
    }

    v23 = sub_1C43FCED0();
    sub_1C43FBD24(v23);
    v21 = "InternalBiomeXPC: service is in no-op mode.";
LABEL_21:
    _os_log_impl(&dword_1C43F8000, v18, v19, v21, v3, 2u);
    sub_1C43FE9D4();
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t dispatch thunk of static InternalDiagnosticDataCollectionProtocol.collectETDiagnosticData(config:)()
{
  sub_1C43FEAEC();
  v3 = *(sub_1C4407208(v0, v1, v2) + 8);
  sub_1C440721C();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = sub_1C43FC218(v7);
  *v8 = v9;
  v10 = sub_1C4419A38(v8);

  return v11(v10);
}

uint64_t dispatch thunk of static InternalDiagnosticDataCollectionProtocol.collectERDiagnosticData(config:)()
{
  sub_1C43FEAEC();
  v3 = *(sub_1C4407208(v0, v1, v2) + 16);
  sub_1C440721C();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = sub_1C43FC218(v7);
  *v8 = v9;
  v10 = sub_1C4419A38(v8);

  return v11(v10);
}

uint64_t dispatch thunk of static InternalDiagnosticDataCollectionProtocol.collectEntityResolutionDiagnosticData(config:)()
{
  sub_1C43FEAEC();
  v3 = *(sub_1C4407208(v0, v1, v2) + 24);
  sub_1C440721C();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = sub_1C43FC218(v7);
  *v8 = v9;
  v10 = sub_1C4419A38(v8);

  return v11(v10);
}

uint64_t dispatch thunk of static InternalDiagnosticDataCollectionProtocol.collectViewsDiagnosticData(config:)()
{
  sub_1C43FEAEC();
  v3 = *(sub_1C4407208(v0, v1, v2) + 32);
  sub_1C440721C();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = sub_1C43FC218(v7);
  *v8 = v9;
  v10 = sub_1C4419A38(v8);

  return v11(v10);
}

uint64_t sub_1C495A884(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of static InternalDiagnosticDataCollectionProtocol.collectEventViewDiagnosticData(config:)()
{
  sub_1C43FEAEC();
  v3 = *(sub_1C4407208(v0, v1, v2) + 40);
  sub_1C440721C();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = sub_1C43FC218(v7);
  *v8 = v9;
  v10 = sub_1C4419A38(v8);

  return v11(v10);
}

uint64_t dispatch thunk of static InternalPipelinePluginProtocol.internalPhases(stores:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(sub_1C4407208(a1, a2, a3) + 8);
  sub_1C440721C();
  v12 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v9 = sub_1C4419A38(v8);

  return v10(v9);
}

uint64_t sub_1C495ABE8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of static InternalPipelinePluginProtocol.internalMatchExtractors(stores:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(sub_1C4407208(a1, a2, a3) + 16);
  sub_1C440721C();
  v12 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v9 = sub_1C4419A38(v8);

  return v10(v9);
}

uint64_t dispatch thunk of static InternalPipelinePluginProtocol.linkerChildren(forInternalSource:stores:pipelineType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  sub_1C440721C();
  v17 = (v12 + *v12);
  v14 = *(v13 + 4);
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_1C495AF1C;

  return v17(a1, a2, a3, a4, a5);
}

uint64_t sub_1C495AF1C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t *sub_1C495B044()
{
  if (qword_1EDDFDCF8 != -1)
  {
    sub_1C43FF284();
  }

  return &qword_1EDDFF3C8;
}

uint64_t sub_1C495B084()
{
  result = sub_1C495B0A8();
  qword_1EDDFF3C8 = result;
  off_1EDDFF3D0 = v1;
  return result;
}

uint64_t sub_1C495B0A8()
{
  if (![objc_opt_self() isInternalDevice])
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);
    v1 = sub_1C4F00968();
    v6 = sub_1C4F01CF8();
    if (!os_log_type_enabled(v1, v6))
    {
      goto LABEL_20;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "InternalPlugin: manager: unsupported device";
LABEL_19:
    _os_log_impl(&dword_1C43F8000, v1, v6, v8, v7, 2u);
    MEMORY[0x1C6942830](v7, -1, -1);
LABEL_20:

    return 0;
  }

  sub_1C44867F4();
  v0 = sub_1C4F01E98();
  if (!v0)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDDFECB8);
    v1 = sub_1C4F00968();
    v6 = sub_1C4F01CF8();
    if (!os_log_type_enabled(v1, v6))
    {
      goto LABEL_20;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "InternalPlugin: manager: bundle not available";
    goto LABEL_19;
  }

  v1 = v0;
  if (![v0 principalClass]|| (ObjCClassMetadata = swift_getObjCClassMetadata(), (v3 = sub_1C495BB18(ObjCClassMetadata)) == 0))
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v9 = sub_1C4F00978();
    sub_1C442B738(v9, qword_1EDDFECB8);
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CD8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1C43F8000, v10, v11, "InternalPlugin: manager: failed to load principal class", v12, 2u);
      MEMORY[0x1C6942830](v12, -1, -1);
    }

    goto LABEL_20;
  }

  v4 = v3;

  return v4;
}

uint64_t static InternalPlugin.manager.getter()
{
  if (qword_1EDDFDCF8 != -1)
  {
    sub_1C43FF284();
  }

  swift_beginAccess();
  return qword_1EDDFF3C8;
}

uint64_t static InternalPlugin.manager.setter(uint64_t a1, void *a2)
{
  if (qword_1EDDFDCF8 != -1)
  {
    sub_1C43FF284();
  }

  result = swift_beginAccess();
  qword_1EDDFF3C8 = a1;
  off_1EDDFF3D0 = a2;
  return result;
}

uint64_t (*static InternalPlugin.manager.modify())()
{
  if (qword_1EDDFDCF8 != -1)
  {
    sub_1C43FF284();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_1C495B494@<D0>(_OWORD *a1@<X8>)
{
  sub_1C495B044();
  swift_beginAccess();
  result = *&qword_1EDDFF3C8;
  *a1 = *&qword_1EDDFF3C8;
  return result;
}

uint64_t sub_1C495B4E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1C495B044();
  result = swift_beginAccess();
  qword_1EDDFF3C8 = v1;
  off_1EDDFF3D0 = v2;
  return result;
}

uint64_t static InternalPlugin.pathForResource(named:type:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (![objc_opt_self() isInternalDevice])
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v20 = sub_1C4F00978();
    sub_1C442B738(v20, qword_1EDDFECB8);
    v9 = sub_1C4F00968();
    v21 = sub_1C4F01CF8();
    if (!os_log_type_enabled(v9, v21))
    {
      goto LABEL_25;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "InternalPlugin: pathForResource: unsupported device";
LABEL_18:
    _os_log_impl(&dword_1C43F8000, v9, v21, v23, v22, 2u);
    sub_1C43FBE2C();
LABEL_25:

    return 0;
  }

  sub_1C44867F4();
  v8 = sub_1C4F01E98();
  if (!v8)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v24 = sub_1C4F00978();
    sub_1C442B738(v24, qword_1EDDFECB8);
    v9 = sub_1C4F00968();
    v21 = sub_1C4F01CF8();
    if (!os_log_type_enabled(v9, v21))
    {
      goto LABEL_25;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "InternalPlugin: pathForResource: bundle not available";
    goto LABEL_18;
  }

  v9 = v8;
  v10 = sub_1C495B9CC(a1, a2, a3, a4, v8);
  if (!v11)
  {
LABEL_20:
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v25 = sub_1C4F00978();
    sub_1C442B738(v25, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v26 = sub_1C4F00968();
    v27 = sub_1C4F01CF8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v28 = 136315394;
      *(v28 + 4) = sub_1C441D828(a1, a2, &v30);
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_1C441D828(a3, a4, &v30);
      _os_log_impl(&dword_1C43F8000, v26, v27, "Resource %s.%s not found.", v28, 0x16u);
      swift_arrayDestroy();
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    goto LABEL_25;
  }

  v12 = v10;
  v13 = [objc_opt_self() defaultManager];
  v14 = sub_1C4F01108();
  v15 = [v13 fileExistsAtPath_];

  if (!v15)
  {

    goto LABEL_20;
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v16 = sub_1C4F00978();
  sub_1C442B738(v16, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v17 = sub_1C4F00968();
  v18 = sub_1C4F01CC8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = sub_1C441D828(a1, a2, &v30);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_1C441D828(a3, a4, &v30);
    _os_log_impl(&dword_1C43F8000, v17, v18, "Found %s.%s in Internal bundle.", v19, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  return v12;
}

uint64_t sub_1C495B9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1C4F01108();
  v7 = sub_1C4F01108();
  v8 = [a5 pathForResource:v6 ofType:v7];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_1C4F01138();

  return v9;
}

_BYTE *storeEnumTagSinglePayload for InternalPlugin(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C495BB18(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t dispatch thunk of static InternalSourceProtocol.deltaUpdatePhase(stores:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1C44A7DA0;

  return v15(a1, a2, a3, a4, a5);
}

void sub_1C495BDCC()
{
  sub_1C440BDEC();
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_encoder);
  sub_1C456902C(&qword_1EC0BFDD0, &qword_1C4F3DCE8);
  v4 = sub_1C4EFCDD8();
  sub_1C43FCDF8(v4);
  v6 = *(v5 + 72);
  v7 = sub_1C4422B0C();
  v8 = sub_1C442A434(v7, xmmword_1C4F0D130);
  v9(v8);
  sub_1C456902C(&qword_1EC0B9440, &unk_1C4F0EFD0);
  sub_1C496CAB4();
  sub_1C4425D04();
  sub_1C4410EA4();

  if (!v2)
  {
    sub_1C4409E00(*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db));
    MEMORY[0x1EEE9AC00](v10);
    sub_1C43FF2A4();
    sub_1C447CBF0(v11);
    sub_1C4435934();
    v12 = sub_1C4404044();
    sub_1C4434000(v12, v13);
  }

  sub_1C440EE0C();
}

void sub_1C495BF40()
{
  sub_1C4413F18();
  sub_1C4424CEC();
  v4 = v3;
  v6 = v5;
  sub_1C441AE30();
  v7 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_encoder);
  sub_1C456902C(&qword_1EC0B8B30, &unk_1C4F0DF60);
  sub_1C4434164();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C4F0D130;
  *(v8 + 32) = v6;
  *(v8 + 40) = v4;
  v9 = sub_1C4404044();
  sub_1C44344B8(v9, v10);
  sub_1C456902C(&qword_1EC0B9120, &qword_1C4F3DD40);
  sub_1C496D268();
  sub_1C4425D04();
  sub_1C4410EA4();

  if (!v2)
  {
    sub_1C4409E00(*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db));
    MEMORY[0x1EEE9AC00](v11);
    sub_1C43FF2A4();
    sub_1C444FDF0(v12);
    sub_1C4435934();
    v13 = sub_1C4404044();
    sub_1C4434000(v13, v14);
  }

  sub_1C441C2B4();
  sub_1C44102DC();
}

void sub_1C495C064()
{
  sub_1C4413F18();
  sub_1C440BDEC();
  v4 = v3;
  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_encoder);
  sub_1C456902C(&qword_1EC0B8798, &qword_1C4F0DB88);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C4F0D130;
  *(v6 + 32) = v4;
  sub_1C456902C(&qword_1EC0B9208, &qword_1C4F0ED20);
  sub_1C496D6D8();
  sub_1C4425D04();
  sub_1C4410EA4();

  if (!v2)
  {
    sub_1C4409E00(*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db));
    MEMORY[0x1EEE9AC00](v7);
    sub_1C43FDA14();
    sub_1C4435934();
    v8 = sub_1C4404044();
    sub_1C4434000(v8, v9);
  }

  sub_1C441C2B4();
  sub_1C44102DC();
}

void sub_1C495C180()
{
  sub_1C4413F18();
  sub_1C4433528();
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_encoder);
  sub_1C456902C(&qword_1EC0BFE28, &unk_1C4F3DD50);
  sub_1C4418B14();
  v4 = swift_allocObject();
  sub_1C4414C68(v4, xmmword_1C4F0D130);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0B9180, &unk_1C4F0EC80);
  sub_1C496D368();
  sub_1C4425D04();
  sub_1C4410EA4();

  if (!v2)
  {
    sub_1C4409E00(*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db));
    MEMORY[0x1EEE9AC00](v5);
    sub_1C43FDA14();
    sub_1C4435934();
    v6 = sub_1C4404044();
    sub_1C4434000(v6, v7);
  }

  sub_1C441C2B4();
  sub_1C44102DC();
}

void sub_1C495C28C()
{
  sub_1C4413F18();
  sub_1C4433528();
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_encoder);
  sub_1C456902C(&qword_1EC0BFE10, &qword_1C4F3DD38);
  sub_1C4418B14();
  v4 = swift_allocObject();
  sub_1C4414C68(v4, xmmword_1C4F0D130);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0B90D8, &qword_1C4F0EBF0);
  sub_1C496D1C4();
  sub_1C4425D04();
  sub_1C4410EA4();

  if (!v2)
  {
    sub_1C4409E00(*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db));
    MEMORY[0x1EEE9AC00](v5);
    sub_1C43FDA14();
    sub_1C4435934();
    v6 = sub_1C4404044();
    sub_1C4434000(v6, v7);
  }

  sub_1C441C2B4();
  sub_1C44102DC();
}

void sub_1C495C398()
{
  sub_1C4413F18();
  sub_1C4433528();
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_encoder);
  sub_1C456902C(&qword_1EC0BFE50, &qword_1C4F3DD98);
  sub_1C4418B14();
  v4 = swift_allocObject();
  sub_1C4414C68(v4, xmmword_1C4F0D130);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0B9410, &qword_1C4F3DDA0);
  sub_1C496D754();
  sub_1C4425D04();
  sub_1C4410EA4();

  if (!v2)
  {
    sub_1C4409E00(*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db));
    MEMORY[0x1EEE9AC00](v5);
    sub_1C43FDA14();
    sub_1C4435934();
    v6 = sub_1C4404044();
    sub_1C4434000(v6, v7);
  }

  sub_1C441C2B4();
  sub_1C44102DC();
}

void sub_1C495C4A4()
{
  sub_1C4413F18();
  sub_1C4424CEC();
  v4 = v3;
  v6 = v5;
  sub_1C441AE30();
  v7 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_encoder);
  sub_1C456902C(&qword_1EC0BFDE8, &qword_1C4F3DCF8);
  sub_1C4434164();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C4F0D130;
  *(v8 + 32) = v6;
  *(v8 + 40) = v4 & 1;
  sub_1C456902C(&qword_1EC0BFDF0, &qword_1C4F3DD00);
  sub_1C496CC80();
  sub_1C4425D04();
  sub_1C4410EA4();

  if (!v2)
  {
    sub_1C4409E00(*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db));
    MEMORY[0x1EEE9AC00](v9);
    sub_1C43FF2A4();
    sub_1C444FDF0(v10);
    sub_1C4435934();
    v11 = sub_1C4404044();
    sub_1C4434000(v11, v12);
  }

  sub_1C441C2B4();
  sub_1C44102DC();
}

uint64_t sub_1C495C5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v18 = a1;
  v19 = a2;
  v7 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_encoder);
  sub_1C456902C(&qword_1EC0B8F38, &qword_1C4F0EA08);
  v8 = *(sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C4F0D130;
  sub_1C4460108(a3, v11 + v10, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v20 = v11;
  sub_1C456902C(&qword_1EC0BFE30, &qword_1C4F3DD80);
  sub_1C496D540();
  v12 = sub_1C4EF96D8();
  v14 = v13;

  if (!v4)
  {
    v16 = *(*(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db) + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_pool);
    MEMORY[0x1EEE9AC00](result);
    v17[2] = v5;
    v17[3] = v18;
    v17[4] = v19;
    v17[5] = v12;
    v17[6] = v14;

    sub_1C446C37C(sub_1C446C3D4, v17);
    sub_1C4434000(v12, v14);
  }

  return result;
}

void sub_1C495C7C0()
{
  sub_1C4424CEC();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1C441AE30();
  v9 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_encoder);
  sub_1C456902C(&qword_1EC0BFDF8, &unk_1C4F3DD08);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C4F0D130;
  *(v10 + 32) = v8;
  *(v10 + 40) = v6;
  *(v10 + 48) = v4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0B90A8, &qword_1C4F0EBD0);
  sub_1C496CF70();
  sub_1C4425D04();
  sub_1C4410EA4();

  if (!v2)
  {
    sub_1C4409E00(*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db));
    MEMORY[0x1EEE9AC00](v11);
    sub_1C43FF2A4();
    sub_1C444FDF0(v12);
    sub_1C4435934();
    v13 = sub_1C4404044();
    sub_1C4434000(v13, v14);
  }

  sub_1C440EE0C();
}

void sub_1C495C904(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v6 = sub_1C4EF9A38();
  if (a3)
  {
LABEL_3:
    sub_1C4EF9798();
  }

LABEL_5:
  v7 = *(a4 + 16);
  v8 = sub_1C43FBC98();
  v11 = v9;
  v10(v8);
}

uint64_t sub_1C495C998(uint64_t a1, uint64_t a2, char a3)
{
  result = 0x206E776F6E6B6E55;
  switch(a3)
  {
    case 1:
    case 2:
      sub_1C43FBFCC();
      sub_1C4F02248();

      sub_1C4411F0C();
      goto LABEL_5;
    case 3:
      sub_1C43FBFCC();
      sub_1C4F02248();

      sub_1C4411F0C();
      v7 = v8 | 4;
      goto LABEL_5;
    case 4:
      sub_1C43FBFCC();
      sub_1C4F02248();
      v9 = "v48@0:8@16@24d32@?40";
      v10 = 0xD000000000000034;
      goto LABEL_8;
    case 5:
      sub_1C43FBFCC();
      sub_1C4F02248();
      v9 = "w operation failed: ";
      v10 = 0xD000000000000035;
LABEL_8:
      MEMORY[0x1C6940010](v10, v9 | 0x8000000000000000);
      goto LABEL_9;
    case 6:
      return result;
    default:
      sub_1C43FBFCC();
      sub_1C4F02248();

      sub_1C4411F0C();
      v7 = v6 - 11;
LABEL_5:
      v11 = v7;
LABEL_9:
      MEMORY[0x1C6940010](a1, a2);
      return v11;
  }
}

uint64_t sub_1C495CB54(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  v7 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1C4F01138();
  *(inited + 40) = v8;
  v9 = sub_1C495C998(a1, a2, a3);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  return sub_1C4F00F28();
}

uint64_t sub_1C495CC0C(uint64_t a1)
{
  v2 = sub_1C496CB68();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C495CC48(uint64_t a1)
{
  v2 = sub_1C496CB68();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

void sub_1C495CD18(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v49 - v5;
  v7 = sub_1C4EF9CD8();
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v49 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v49 - v18;
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v20 = sub_1C4F00978();
  sub_1C442B738(v20, qword_1EDDFECB8);
  v21 = sub_1C4F00968();
  v22 = sub_1C4F01CF8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1C43F8000, v21, v22, "InternalXPC: Behavior Understanding status", v23, 2u);
    MEMORY[0x1C6942830](v23, -1, -1);
  }

  v53 = a2;

  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v24 = sub_1C442B738(v10, qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C4460108(v24, v19, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v25 = type metadata accessor for Configuration();
  if (sub_1C44157D4(v19, 1, v25) == 1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (qword_1EDDFF2A0 != -1)
  {
    swift_once();
  }

  v26 = sub_1C44E7FAC();
  sub_1C4453F54();
  v27 = *(v26 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);

  sub_1C4460108(v24, v17, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v17, 1, v25) == 1)
  {
    goto LABEL_17;
  }

  sub_1C4460108(v24, v14, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v14, 1, v25) == 1)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v28 = type metadata accessor for BehaviorHistoryUtility();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = v27;
  v32 = sub_1C4623CF4(v14, v31);
  type metadata accessor for BehaviorFeaturizer();
  v56[3] = v28;
  v56[4] = &off_1F43E41D8;
  v56[0] = v32;
  v33 = sub_1C4601538(v17, v56);
  v34 = v33[17];
  v35 = v33[19];
  v36 = v33[20];
  sub_1C446FB00();
  v37 = v52;
  if (sub_1C44157D4(v6, 1, v52) == 1)
  {
    sub_1C4420C3C(v6, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v38 = 0xE300000000000000;
    v39 = 7104878;
  }

  else
  {
    v40 = v51;
    v41 = v50;
    (*(v51 + 32))();
    v42 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    sub_1C496C3A0(0xD000000000000017, 0x80000001C4F8C060, v42);
    v43 = v41;
    v44 = sub_1C4EF9BF8();
    v45 = [v42 stringFromDate_];

    v39 = sub_1C4F01138();
    v38 = v46;

    (*(v40 + 8))(v43, v37);
  }

  v47 = v53;
  v56[0] = 0xD000000000000025;
  v56[1] = 0x80000001C4FAA590;
  v54 = 0;
  v55 = 0xE000000000000000;
  sub_1C4F02248();

  v54 = 0xD000000000000023;
  v55 = 0x80000001C4FAA5C0;
  MEMORY[0x1C6940010](v39, v38);

  MEMORY[0x1C6940010](10, 0xE100000000000000);
  MEMORY[0x1C693FFE0](v54, v55);

  v48 = sub_1C4F01108();
  (v47)[2](v47, v48, 0);

  _Block_release(v47);
}

void InternalXPC.Server.behaviorUnderstandingStatus(completion:)()
{
  sub_1C43FBD3C();
  v59 = v4;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD1B4();
  v9 = sub_1C4EF9CD8();
  v10 = sub_1C43FCDF8(v9);
  v57 = v11;
  v58 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v14 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v15 = sub_1C43FBCE0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBD08();
  sub_1C441B420();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C44023C8();
  MEMORY[0x1EEE9AC00](v19);
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v20 = sub_1C4F00978();
  sub_1C442B738(v20, qword_1EDDFECB8);
  v21 = sub_1C4F00968();
  v22 = sub_1C4F01CF8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1C43F8000, v21, v22, "InternalXPC: Behavior Understanding status", v23, 2u);
    sub_1C43FEA20();
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4();
  }

  v24 = sub_1C442B738(v14, qword_1EDDEBB90);
  sub_1C4433D44();
  v25 = sub_1C43FD024();
  sub_1C4460108(v25, v26, v27, v28);
  v29 = type metadata accessor for Configuration();
  v30 = sub_1C44033D8();
  sub_1C440175C(v30, v31, v29);
  if (v32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (qword_1EDDFF2A0 != -1)
  {
    sub_1C43FD998();
  }

  v33 = sub_1C44E7FAC();
  sub_1C4419A54();
  sub_1C4453F54();
  v34 = *(v33 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);

  v35 = sub_1C4409D0C();
  sub_1C4460108(v35, v36, v37, v38);
  sub_1C440175C(v2, 1, v29);
  if (v32)
  {
    goto LABEL_17;
  }

  sub_1C4460108(v24, v3, &unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C440175C(v3, 1, v29);
  if (v32)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v39 = type metadata accessor for BehaviorHistoryUtility();
  v40 = sub_1C44099C4(v39);
  v41 = v34;
  sub_1C4623CF4(v3, v41);
  sub_1C43FBE94();
  type metadata accessor for BehaviorFeaturizer();
  v62 = v39;
  v63 = &off_1F43E41D8;
  v60 = v40;
  v42 = sub_1C4601538(v2, &v60);
  v43 = v42[17];
  v44 = v42[19];
  v45 = v42[20];
  sub_1C446FB00();
  v46 = sub_1C440180C();
  sub_1C440175C(v46, v47, v58);
  if (v32)
  {
    sub_1C4420C3C(v1, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v56 = 0xE300000000000000;
    v54 = 7104878;
  }

  else
  {
    v48 = *(v57 + 32);
    v49 = sub_1C43FFE24();
    v50(v49);
    v51 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    sub_1C496C3A0(0xD000000000000017, 0x80000001C4F8C060, v51);
    v52 = sub_1C4EF9BF8();
    v53 = [v51 stringFromDate_];

    v54 = sub_1C4F01138();
    v56 = v55;

    (*(v57 + 8))(v0, v58);
  }

  v60 = 0xD000000000000025;
  v61 = 0x80000001C4FAA590;
  sub_1C4F02248();

  MEMORY[0x1C6940010](v54, v56);

  MEMORY[0x1C6940010](10, 0xE100000000000000);
  MEMORY[0x1C693FFE0](0xD000000000000023, 0x80000001C4FAA5C0);

  v59(v60, v61, 0);

  sub_1C43FE9F0();
}

void sub_1C495DB8C(int a1, int a2, uint64_t a3, void (**a4)(void, void, void))
{
  v65 = a2;
  v66 = a1;
  v5 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v63 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v63 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v63 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v63 - v19;
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v64 = v9;
  v21 = sub_1C4F00978();
  v67 = sub_1C442B738(v21, qword_1EDDFECB8);
  v22 = sub_1C4F00968();
  v23 = sub_1C4F01CF8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1C43F8000, v22, v23, "InternalXPC: Behavior Understanding clearAllData", v24, 2u);
    MEMORY[0x1C6942830](v24, -1, -1);
  }

  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v25 = sub_1C442B738(v5, qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C4460108(v25, v20, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v26 = type metadata accessor for Configuration();
  if (sub_1C44157D4(v20, 1, v26) == 1)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (qword_1EDDFF2A0 != -1)
  {
    swift_once();
  }

  v27 = sub_1C44E7FAC();
  sub_1C4453F54();
  v28 = *(v27 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);

  sub_1C4460108(v25, v18, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v18, 1, v26) == 1)
  {
    goto LABEL_30;
  }

  v29 = type metadata accessor for BehaviorHistoryUtility();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = v28;
  v33 = v18;
  v34 = v32;
  v46 = sub_1C4623CF4(v33, v32);
  if (v66)
  {
    sub_1C4460108(v25, v15, &unk_1EC0B9610, &unk_1C4F0F2E0);
    if (sub_1C44157D4(v15, 1, v26) == 1)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    type metadata accessor for BehaviorFeaturizer();
    v69 = v29;
    v70 = &off_1F43E41D8;
    v68[0] = v46;

    sub_1C4601538(v15, v68);
    sub_1C4604A6C();
  }

  sub_1C4460108(v25, v12, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v12, 1, v26) == 1)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v47 = type metadata accessor for KeyValueStore();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  v50 = KeyValueStore.init(config:domain:)(v12, 1413829954, 0xE400000000000000);
  if (v65)
  {
    v51 = v46;
    v52 = v64;
    sub_1C4460108(v25, v64, &unk_1EC0B9610, &unk_1C4F0F2E0);
    if (sub_1C44157D4(v52, 1, v26) != 1)
    {
      v69 = type metadata accessor for BehaviorDatabase(0);
      v70 = &off_1F43E5250;
      if (qword_1EDDE7308 != -1)
      {
        swift_once();
      }

      v53 = a4;
      v68[0] = sub_1C4ABF81C();
      sub_1C4453F54();
      v56 = v69;
      v57 = sub_1C4418280(v68, v69);
      v58 = *(*(v56 - 8) + 64);
      MEMORY[0x1EEE9AC00](v57);
      v60 = (&v63 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v61 + 16))(v60);
      v62 = *v60;

      sub_1C496CDA0(v62, v51, v50, type metadata accessor for BehaviorHistoryUtility, &off_1F43E41D8);
      sub_1C440962C(v68);
      sub_1C463206C();

      goto LABEL_26;
    }

LABEL_33:
    __break(1u);
    return;
  }

  v53 = a4;
LABEL_26:
  v54._object = 0x80000001C4FAA5F0;
  v54._countAndFlagsBits = 0xD000000000000039;
  KeyValueStore.delete(key:)(v54);
  if (v55)
  {

    v35 = v55;
    v36 = sub_1C4F00968();
    v37 = sub_1C4F01CD8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v68[0] = v39;
      *v38 = 136315138;
      v71 = v55;
      v40 = v55;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v41 = sub_1C4F01198();
      v43 = sub_1C441D828(v41, v42, v68);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_1C43F8000, v36, v37, "InternalXPC: Behavior Understanding clearAllData: failed: %s", v38, 0xCu);
      sub_1C440962C(v39);
      MEMORY[0x1C6942830](v39, -1, -1);
      MEMORY[0x1C6942830](v38, -1, -1);
    }

    v44 = v55;
    v45 = sub_1C4EF9798();
    (v53)[2](v53, 0, v45);
  }

  else
  {
    v53[2](v53, 1, 0);
  }

  _Block_release(v53);
}

void InternalXPC.Server.behaviorUnderstandingClearAllData(withShouldClearFeaturizer:shouldClearSampleGenerator:completion:)()
{
  sub_1C43FBD3C();
  v86 = v3;
  v87 = v2;
  v84 = v5;
  v85 = v4;
  v6 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v7 = sub_1C43FBCE0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v12 = v10 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v83 - v15;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C441B420();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C44023C8();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v83 - v19;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v21 = sub_1C4F00978();
  sub_1C442B738(v21, qword_1EDDFECB8);
  v22 = sub_1C4F00968();
  v23 = sub_1C4F01CF8();
  if (os_log_type_enabled(v22, v23))
  {
    *swift_slowAlloc() = 0;
    sub_1C442AC1C();
    _os_log_impl(v24, v25, v26, v27, v28, 2u);
    sub_1C43FFD4C();
  }

  v83 = v12;

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4();
  }

  v29 = sub_1C442B738(v6, qword_1EDDEBB90);
  sub_1C4433D44();
  sub_1C4460108(v29, v20, &unk_1EC0B9610, &unk_1C4F0F2E0);
  type metadata accessor for Configuration();
  v30 = sub_1C4414C5C();
  sub_1C43FC0FC(v30);
  if (v31)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (qword_1EDDFF2A0 != -1)
  {
    sub_1C43FD998();
  }

  v32 = qword_1EDE2E008;
  v33 = sub_1C44E7FAC();
  sub_1C4419A54();
  sub_1C4453F54();
  v34 = *(v33 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
  sub_1C441D28C();

  v35 = sub_1C43FC0A8();
  sub_1C4460108(v35, v36, v37, v38);
  sub_1C43FC0FC(v0);
  if (v31)
  {
    goto LABEL_29;
  }

  v39 = type metadata accessor for BehaviorHistoryUtility();
  sub_1C44099C4(v39);
  v40 = v32;
  v41 = v0;
  v42 = v40;
  v43 = sub_1C4623CF4(v41, v40);
  if (v85)
  {
    sub_1C4460108(v29, v1, &unk_1EC0B9610, &unk_1C4F0F2E0);
    sub_1C43FC0FC(v1);
    if (v31)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    type metadata accessor for BehaviorFeaturizer();
    v89 = v39;
    v90 = &off_1F43E41D8;
    v88[0] = v43;

    sub_1C4601538(v1, v88);
    sub_1C4604A6C();
  }

  v44 = sub_1C4404044();
  sub_1C4460108(v44, v45, v46, v47);
  sub_1C43FC0FC(v16);
  if (v31)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v48 = type metadata accessor for KeyValueStore();
  sub_1C44099C4(v48);
  sub_1C440C5A0();
  v67 = KeyValueStore.init(config:domain:)(v49, v50, v51);
  if (v84)
  {
    v68 = v43;
    v69 = v83;
    sub_1C4460108(v29, v83, &unk_1EC0B9610, &unk_1C4F0F2E0);
    sub_1C43FC0FC(v69);
    if (!v31)
    {
      v89 = type metadata accessor for BehaviorDatabase(0);
      v90 = &off_1F43E5250;
      if (qword_1EDDE7308 != -1)
      {
        sub_1C440F814();
      }

      v88[0] = sub_1C4ABF81C();
      sub_1C4419A54();
      sub_1C4453F54();
      sub_1C4418280(v88, v89);
      sub_1C43FCE64();
      v71 = *(v70 + 64);
      MEMORY[0x1EEE9AC00](v72);
      sub_1C43FBCC4();
      v75 = (v74 - v73);
      (*(v76 + 16))(v74 - v73);
      v77 = *v75;

      sub_1C4410410();
      sub_1C496CDA0(v77, v68, v67, v78, v79);
      sub_1C440962C(v88);
      sub_1C463206C();

      goto LABEL_25;
    }

LABEL_32:
    __break(1u);
    return;
  }

LABEL_25:
  v80._countAndFlagsBits = sub_1C4414254();
  KeyValueStore.delete(key:)(v80);
  if (v81)
  {

    v52 = v81;
    v53 = sub_1C4F00968();
    sub_1C4F01CD8();

    if (sub_1C43FD09C())
    {
      v54 = sub_1C43FD084();
      v55 = sub_1C43FFD34();
      v88[0] = v55;
      *v54 = 136315138;
      v91 = v81;
      v56 = v81;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v57 = sub_1C4F01198();
      v59 = sub_1C441D828(v57, v58, v88);

      *(v54 + 4) = v59;
      sub_1C4414B20();
      _os_log_impl(v60, v61, v62, v63, v64, 0xCu);
      sub_1C440962C(v55);
      sub_1C43FEA20();
      sub_1C4412D04();
    }

    v65 = v87;
    v66 = v81;
    v65(0, v81);
  }

  else
  {
    v82 = sub_1C4416AEC();
    v87(v82);
  }

  sub_1C43FE9F0();
}

void sub_1C495EAF8(int a1, int a2, uint64_t a3, void (**a4)(void, uint64_t, void))
{
  v63 = a4;
  v58 = a2;
  v61 = a1;
  v4 = sub_1C4EF9CD8();
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v57 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v55 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v55 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v55 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v55 - v20;
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1C4F00978();
  sub_1C442B738(v22, qword_1EDDFECB8);
  v23 = sub_1C4F00968();
  v24 = sub_1C4F01CF8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1C43F8000, v23, v24, "InternalXPC: Behavior Understanding digest", v25, 2u);
    MEMORY[0x1C6942830](v25, -1, -1);
  }

  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v26 = sub_1C442B738(v7, qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C4460108(v26, v21, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v27 = type metadata accessor for Configuration();
  if (sub_1C44157D4(v21, 1, v27) == 1)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (qword_1EDDFF2A0 != -1)
  {
    swift_once();
  }

  v28 = sub_1C44E7FAC();
  sub_1C4453F54();
  v29 = *(v28 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);

  sub_1C4460108(v26, v19, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v19, 1, v27) == 1)
  {
    goto LABEL_23;
  }

  v30 = type metadata accessor for BehaviorHistoryUtility();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = v29;
  v34 = v19;
  v35 = v33;
  v56 = sub_1C4623CF4(v34, v33);
  v55 = v35;
  sub_1C4EF9C88();
  if (v61)
  {
    sub_1C4460108(v26, v16, &unk_1EC0B9610, &unk_1C4F0F2E0);
    if (sub_1C44157D4(v16, 1, v27) != 1)
    {
      type metadata accessor for BehaviorFeaturizer();
      v68 = v30;
      v69 = &off_1F43E41D8;
      v67[0] = v56;

      sub_1C4601538(v16, v67);
      v36 = v62;
      sub_1C460299C(v62);

      goto LABEL_15;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v36 = v62;
LABEL_15:
  if ((v58 & 1) == 0)
  {
LABEL_21:
    v54 = v63;
    v63[2](v63, 1, 0);

    (*(v59 + 8))(v36, v60);
    _Block_release(v54);
    return;
  }

  sub_1C4460108(v26, v13, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v13, 1, v27) == 1)
  {
    goto LABEL_25;
  }

  v68 = type metadata accessor for BehaviorDatabase(0);
  v69 = &off_1F43E5250;
  if (qword_1EDDE7308 != -1)
  {
    swift_once();
  }

  v67[0] = sub_1C4ABF81C();
  sub_1C4453F54();
  v65 = v30;
  v66 = &off_1F43E41D8;
  v64[0] = v56;
  v37 = v57;
  sub_1C4460108(v26, v57, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v37, 1, v27) != 1)
  {
    v38 = type metadata accessor for KeyValueStore();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();

    v41 = KeyValueStore.init(config:domain:)(v37, 1413829954, 0xE400000000000000);
    v42 = v68;
    v43 = sub_1C4418280(v67, v68);
    v44 = *(*(v42 - 8) + 64);
    MEMORY[0x1EEE9AC00](v43);
    v46 = (&v55 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v47 + 16))(v46);
    v48 = v65;
    v49 = sub_1C4418280(v64, v65);
    v50 = *(*(v48 - 8) + 64);
    MEMORY[0x1EEE9AC00](v49);
    v52 = (&v55 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v53 + 16))(v52);
    sub_1C496CDA0(*v46, *v52, v41, type metadata accessor for BehaviorHistoryUtility, &off_1F43E41D8);
    sub_1C440962C(v64);
    sub_1C440962C(v67);
    sub_1C46320C0(v36);

    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
}

void InternalXPC.Server.behaviorUnderstandingDigest(withShouldDigestFeaturizer:shouldDigestSampleGenerator:completion:)()
{
  sub_1C43FBD3C();
  v71 = v4;
  v68 = v5;
  v69 = v6;
  v7 = sub_1C4EF9CD8();
  v8 = sub_1C43FCDF8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v13 = (v12 - v11);
  v14 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v15 = sub_1C43FBCE0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C44023C8();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C441B420();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C4414500();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C44144E4();
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v22 = sub_1C4F00978();
  sub_1C442B738(v22, qword_1EDDFECB8);
  v23 = sub_1C4F00968();
  v24 = sub_1C4F01CF8();
  if (os_log_type_enabled(v23, v24))
  {
    *swift_slowAlloc() = 0;
    sub_1C442AC1C();
    _os_log_impl(v25, v26, v27, v28, v29, 2u);
    sub_1C43FFD4C();
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4();
  }

  v30 = sub_1C442B738(v14, qword_1EDDEBB90);
  sub_1C440D164();
  sub_1C4460108(v30, v1, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v31 = type metadata accessor for Configuration();
  v32 = sub_1C440180C();
  sub_1C440175C(v32, v33, v31);
  if (v34)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v70 = v13;
  if (qword_1EDDFF2A0 != -1)
  {
    sub_1C43FD998();
  }

  v35 = sub_1C44E7FAC();
  sub_1C4419A54();
  sub_1C4453F54();
  v36 = *(v35 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);

  sub_1C4460108(v30, v0, &unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C440175C(v0, 1, v31);
  if (v34)
  {
    goto LABEL_22;
  }

  v37 = type metadata accessor for BehaviorHistoryUtility();
  sub_1C44099C4(v37);
  v66 = sub_1C4623CF4(v0, v36);
  sub_1C4EF9C88();
  if ((v69 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_1C4460108(v30, v3, &unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C440175C(v3, 1, v31);
  if (v34)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  type metadata accessor for BehaviorFeaturizer();
  v76 = v37;
  v77 = &off_1F43E41D8;
  v75[0] = v66;

  sub_1C4601538(v3, v75);
  sub_1C460299C(v70);

LABEL_14:
  if ((v68 & 1) == 0)
  {
LABEL_20:
    v62 = sub_1C4416AEC();
    v71(v62);
    sub_1C4410EB4();

    v64 = sub_1C4405088();
    v65(v64);
    sub_1C43FE9F0();
    return;
  }

  sub_1C4460108(v30, v2, &unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C440175C(v2, 1, v31);
  if (v34)
  {
    goto LABEL_24;
  }

  v76 = type metadata accessor for BehaviorDatabase(0);
  v77 = &off_1F43E5250;
  if (qword_1EDDE7308 != -1)
  {
    sub_1C440F814();
  }

  v75[0] = sub_1C4ABF81C();
  sub_1C4419A54();
  sub_1C4453F54();
  v73 = v37;
  v74 = &off_1F43E41D8;
  sub_1C4495248();
  v72[0] = v37;
  sub_1C4460108(v30, v67, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v38 = sub_1C44033D8();
  sub_1C440175C(v38, v39, v31);
  if (!v34)
  {
    v40 = type metadata accessor for KeyValueStore();
    sub_1C44099C4(v40);

    sub_1C440C5A0();
    v44 = KeyValueStore.init(config:domain:)(v41, v42, v43);
    sub_1C4418280(v75, v76);
    sub_1C43FCE64();
    v46 = *(v45 + 64);
    MEMORY[0x1EEE9AC00](v47);
    sub_1C43FBCC4();
    v50 = (v49 - v48);
    (*(v51 + 16))(v49 - v48);
    sub_1C4418280(v72, v73);
    sub_1C43FCE64();
    v53 = *(v52 + 64);
    MEMORY[0x1EEE9AC00](v54);
    sub_1C43FBCC4();
    sub_1C440DED0();
    (*(v55 + 16))(v31);
    v56 = *v50;
    v57 = *v31;
    sub_1C4410410();
    sub_1C496CDA0(v58, v59, v44, v60, v61);
    sub_1C440962C(v72);
    sub_1C440962C(v75);
    sub_1C46320C0(v70);

    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
}

void sub_1C495FD74(void *a1, int a2, uint64_t a3, uint64_t a4, void *aBlock, void (*a6)(uint64_t, uint64_t, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a1;
  a6(a3, a4, v11, v10);
  _Block_release(v10);
}

void sub_1C495FE04(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v7 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - v12;
  v44 = a4;
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v14 = sub_1C4F00978();
  v15 = sub_1C442B738(v14, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v42 = v15;
  v16 = sub_1C4F00968();
  v17 = sub_1C4F01CF8();

  v18 = os_log_type_enabled(v16, v17);
  v41 = v11;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v40 = v7;
    v21 = v20;
    v45[0] = v20;
    *v19 = 136315138;
    if (a2)
    {
      v22 = a1;
    }

    else
    {
      v22 = 7104878;
    }

    v23 = a1;
    v24 = a4;
    if (a2)
    {
      v25 = a2;
    }

    else
    {
      v25 = 0xE300000000000000;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v26 = sub_1C441D828(v22, v25, v45);
    a4 = v24;
    a1 = v23;

    *(v19 + 4) = v26;
    _os_log_impl(&dword_1C43F8000, v16, v17, "InternalXPC: Behavior Understanding recentBehaviors [type=%s]", v19, 0xCu);
    sub_1C440962C(v21);
    v27 = v21;
    v7 = v40;
    MEMORY[0x1C6942830](v27, -1, -1);
    MEMORY[0x1C6942830](v19, -1, -1);
  }

  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v28 = sub_1C442B738(v7, qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C4460108(v28, v13, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v29 = type metadata accessor for Configuration();
  if (sub_1C44157D4(v13, 1, v29) == 1)
  {
    __break(1u);
  }

  else
  {
    if (qword_1EDDFF2A0 != -1)
    {
      swift_once();
    }

    v30 = sub_1C44E7FAC();
    sub_1C4453F54();
    v31 = *(v30 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);

    v32 = v41;
    sub_1C4460108(v28, v41, &unk_1EC0B9610, &unk_1C4F0F2E0);
    if (sub_1C44157D4(v32, 1, v29) != 1)
    {
      v33 = type metadata accessor for BehaviorHistoryUtility();
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      swift_allocObject();
      v36 = v31;
      v37 = sub_1C4623CF4(v32, v36);
      v38 = objc_autoreleasePoolPush();
      sub_1C4960768(a1, a2, v37, sub_1C496D1BC, v43);
      objc_autoreleasePoolPop(v38);

      _Block_release(a4);
      return;
    }
  }

  __break(1u);
}

void InternalXPC.Server.behaviorUnderstandingRecentBehaviors(ofType:completion:)()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v10 = sub_1C43FBCE0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBFDC();
  v40 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v17 = sub_1C4F00978();
  sub_1C442B738(v17, qword_1EDDFECB8);
  sub_1C4404CE0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v41 = v0;
  v18 = sub_1C4F00968();
  v19 = sub_1C4F01CF8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = sub_1C43FD084();
    v21 = sub_1C43FFD34();
    v38 = v9;
    v22 = v21;
    v42 = v21;
    *v20 = 136315138;
    v39 = v4;
    v23 = v2;
    if (v6)
    {
      v24 = v8;
    }

    else
    {
      v24 = 7104878;
    }

    v25 = v8;
    if (v6)
    {
      v26 = v6;
    }

    else
    {
      v26 = 0xE300000000000000;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v27 = sub_1C441D828(v24, v26, &v42);
    v8 = v25;

    *(v20 + 4) = v27;
    v2 = v23;
    v4 = v39;
    _os_log_impl(&dword_1C43F8000, v18, v19, "InternalXPC: Behavior Understanding recentBehaviors [type=%s]", v20, 0xCu);
    sub_1C440962C(v22);
    v9 = v38;
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4();
  }

  v28 = sub_1C442B738(v9, qword_1EDDEBB90);
  sub_1C4433D44();
  sub_1C4460108(v28, v16, &unk_1EC0B9610, &unk_1C4F0F2E0);
  type metadata accessor for Configuration();
  sub_1C440582C(v16);
  if (v29)
  {
    __break(1u);
  }

  else
  {
    if (qword_1EDDFF2A0 != -1)
    {
      sub_1C43FD998();
    }

    v30 = sub_1C44E7FAC();
    sub_1C4419A54();
    sub_1C4453F54();
    v31 = *(v30 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);

    v32 = v40;
    sub_1C4460108(v28, v40, &unk_1EC0B9610, &unk_1C4F0F2E0);
    sub_1C440582C(v32);
    if (!v29)
    {
      v33 = type metadata accessor for BehaviorHistoryUtility();
      sub_1C44099C4(v33);
      v34 = v31;
      v35 = sub_1C4623CF4(v32, v34);
      v36 = objc_autoreleasePoolPush();
      sub_1C4960768(v8, v6, v35, v4, v2);
      objc_autoreleasePoolPop(v36);

      sub_1C43FE9F0();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1C4960768(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void *), uint64_t a5)
{
  v38 = a4;
  v36 = a3;
  v37 = a5;
  v35 = a1;
  v6 = sub_1C4EFDAB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C4EF9CD8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v35 - v21;
  sub_1C4EF9C88();
  sub_1C4EF9BE8();
  (*(v12 + 8))(v15, v11);
  sub_1C440BAA8(v22, 0, 1, v11);
  sub_1C4EF9C88();
  sub_1C440BAA8(v20, 0, 1, v11);
  if (a2)
  {
    sub_1C4EFDA78();
    v23 = sub_1C4626020(v22, v20, v10);
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v23 = sub_1C4622C30(v22, v20, 1, MEMORY[0x1E69E7CD0]);
  }

  sub_1C4420C3C(v20, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C4420C3C(v22, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v24 = swift_allocObject();
  *(v24 + 16) = MEMORY[0x1E69E7CC0];
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = (v25 + 16);
  v43 = sub_1C496D5F0;
  v44 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1C44405F8;
  v42 = &unk_1F43F1BE0;
  v27 = _Block_copy(&aBlock);
  v28 = v23;

  v43 = sub_1C496D5F8;
  v44 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1C45DFE08;
  v42 = &unk_1F43F1C08;
  v29 = _Block_copy(&aBlock);

  v30 = [v28 sinkWithCompletion:v27 receiveInput:{v29, v35, v36, v37}];
  _Block_release(v29);
  _Block_release(v27);

  swift_beginAccess();
  v31 = *(v24 + 16);
  swift_beginAccess();
  v32 = *v26;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v33 = v32;
  v38(v31, v32);
}

void sub_1C4960C60(void *a1, uint64_t a2)
{
  v3 = [a1 error];
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = v3;
}

uint64_t sub_1C4960CC0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C45D62A8();
  v5 = v4;
  swift_beginAccess();
  sub_1C4588BAC();
  v6 = *(*(a2 + 16) + 16);
  sub_1C45897E8();
  v7 = *(a2 + 16);
  *(v7 + 16) = v6 + 1;
  v8 = v7 + 16 * v6;
  *(v8 + 32) = v3;
  *(v8 + 40) = v5;
  *(a2 + 16) = v7;
  return swift_endAccess();
}

void sub_1C4960DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_1C4F01658();
    if (a2)
    {
LABEL_3:
      v6 = sub_1C4EF9798();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_1C4960E88(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int64_t a5, uint64_t a6, void (**a7)(void, void, void))
{
  v107 = a7;
  v113 = a1;
  v11 = sub_1C4EFDAB8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v98 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v14 = *(*(v111 - 1) + 64);
  v15 = MEMORY[0x1EEE9AC00](v111);
  v99 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v100 = &v97 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v112 = (&v97 - v19);
  v20 = sub_1C4EF9CD8();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = MEMORY[0x1EEE9AC00](v20);
  v110 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v97 = &v97 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v97 - v27;
  if (qword_1EDDFECB0 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v29 = sub_1C4F00978();
    v30 = sub_1C442B738(v29, qword_1EDDFECB8);
    v31 = v21[2];
    v109 = v21 + 2;
    v108 = v31;
    v31(v28, a5, v20);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v106 = v30;
    v32 = sub_1C4F00968();
    v33 = sub_1C4F01CF8();

    v34 = os_log_type_enabled(v32, v33);
    v102 = a3;
    v105 = v21;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v103 = a5;
      v36 = v21;
      v37 = v35;
      v38 = swift_slowAlloc();
      v101 = a2;
      v39 = v38;
      v118[0] = v38;
      *v37 = 136315650;
      *(v37 + 4) = sub_1C441D828(v113, v101, v118);
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_1C441D828(a3, a4, v118);
      *(v37 + 22) = 2080;
      sub_1C496CC38(&qword_1EDDFCD50, MEMORY[0x1E6969530]);
      v40 = sub_1C4F02858();
      v41 = a4;
      v43 = v42;
      v44 = v36;
      a5 = v103;
      v104 = v44[1];
      v104(v28, v20);
      v45 = sub_1C441D828(v40, v43, v118);
      a4 = v41;

      *(v37 + 24) = v45;
      _os_log_impl(&dword_1C43F8000, v32, v33, "InternalXPC: Behavior Understanding featurizeBehavior [type=%s, identifier=%s, date=%s]", v37, 0x20u);
      swift_arrayDestroy();
      v46 = v39;
      a2 = v101;
      MEMORY[0x1C6942830](v46, -1, -1);
      MEMORY[0x1C6942830](v37, -1, -1);
    }

    else
    {

      v104 = v21[1];
      v104(v28, v20);
    }

    v47 = v112;
    if (qword_1EDDEBB80 != -1)
    {
      swift_once();
    }

    v28 = sub_1C442B738(v111, qword_1EDDEBB90);
    swift_beginAccess();
    sub_1C4460108(v28, v47, &unk_1EC0B9610, &unk_1C4F0F2E0);
    v48 = type metadata accessor for Configuration();
    if (sub_1C44157D4(v47, 1, v48) == 1)
    {
      break;
    }

    if (qword_1EDDFF2A0 != -1)
    {
      swift_once();
    }

    v49 = sub_1C44E7FAC();
    v103 = a5;
    v111 = v20;
    v20 = a2;
    sub_1C4453F54();
    v50 = *(v49 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);

    v51 = v100;
    sub_1C4460108(v28, v100, &unk_1EC0B9610, &unk_1C4F0F2E0);
    if (sub_1C44157D4(v51, 1, v48) == 1)
    {
      goto LABEL_46;
    }

    v52 = type metadata accessor for BehaviorHistoryUtility();
    v53 = *(v52 + 48);
    v54 = *(v52 + 52);
    swift_allocObject();
    v55 = v50;
    v56 = v51;
    v21 = v55;
    v112 = sub_1C4623CF4(v56, v55);
    v57 = v98;
    sub_1C4EFDA78();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C45D29E0(v57, v102, a4, v118);
    v58 = v99;
    sub_1C4460108(v28, v99, &unk_1EC0B9610, &unk_1C4F0F2E0);
    if (sub_1C44157D4(v58, 1, v48) == 1)
    {
      goto LABEL_47;
    }

    type metadata accessor for BehaviorFeaturizer();
    v116 = v52;
    v117 = &off_1F43E41D8;
    v114 = v112;

    v59 = sub_1C4601538(v58, &v114);
    v108(v97, v103, v111);
    v114 = 0;
    v115 = 256;
    v60 = type metadata accessor for BehaviorContext();
    v61 = *(v60 + 48);
    v62 = *(v60 + 52);
    swift_allocObject();
    sub_1C45D689C();
    v64 = v63;
    v65 = sub_1C45FD2E4();
    v66 = sub_1C4601874(v118, v65, v64);
    sub_1C45EC75C(v118);

    if (!v66)
    {
      v96 = v107;
      v107[2](v107, 0, 0);

LABEL_13:
      _Block_release(v96);
      return;
    }

    v109 = v59;
    v110 = sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
    v67 = sub_1C4F00F28();
    a4 = [v66 featureNames];
    v68 = sub_1C4F01AB8();

    v69 = 0;
    a2 = v68 + 56;
    v70 = *(v68 + 56);
    v113 = v68;
    v71 = 1 << *(v68 + 32);
    v72 = -1;
    if (v71 < 64)
    {
      v72 = ~(-1 << v71);
    }

    a3 = v72 & v70;
    a5 = (v71 + 63) >> 6;
    v101 = v21;
    v111 = v66;
    while (a3)
    {
      v73 = v69;
LABEL_23:
      v74 = __clz(__rbit64(a3));
      a3 &= a3 - 1;
      v75 = *(v113 + 48) + ((v73 << 10) | (16 * v74));
      v28 = *v75;
      v20 = *(v75 + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      a4 = sub_1C4F01108();
      v76 = [v66 featureValueForName_];

      if (v76)
      {
        [v76 doubleValue];
        v78 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        if (v78)
        {
          a4 = v78;
          LODWORD(v106) = swift_isUniquelyReferenced_nonNull_native();
          v114 = v67;
          v105 = sub_1C445FAA8(v28, v20);
          v81 = v67[2];
          LODWORD(v108) = v82;
          if (__OFADD__(v81, (v82 & 1) == 0))
          {
            __break(1u);
            goto LABEL_44;
          }

          sub_1C456902C(&qword_1EC0BCBF8, &qword_1C4F2A328);
          if (sub_1C4F02458())
          {
            v83 = sub_1C445FAA8(v28, v20);
            v85 = v108;
            if ((v108 & 1) != (v84 & 1))
            {
              goto LABEL_48;
            }

            v86 = v83;
          }

          else
          {
            v86 = v105;
            v85 = v108;
          }

          if (v85)
          {

            v67 = v114;
            v88 = v114[7];
            v89 = v86;
            v90 = *(v88 + 8 * v86);
            *(v88 + 8 * v89) = a4;
          }

          else
          {
            v67 = v114;
            v114[(v86 >> 6) + 8] |= 1 << v86;
            v91 = (v67[6] + 16 * v86);
            *v91 = v28;
            v91[1] = v20;
            *(v67[7] + 8 * v86) = a4;

            v92 = v67[2];
            v93 = __OFADD__(v92, 1);
            v94 = v92 + 1;
            if (v93)
            {
              goto LABEL_45;
            }

            v67[2] = v94;
          }

          v21 = v101;
          v66 = v111;
          v69 = v73;
        }

        else
        {
          a4 = sub_1C445FAA8(v28, v20);
          v80 = v79;

          if (v80)
          {
            swift_isUniquelyReferenced_nonNull_native();
            v114 = v67;
            v28 = v67[3];
            sub_1C456902C(&qword_1EC0BCBF8, &qword_1C4F2A328);
            sub_1C4F02458();
            v67 = v114;
            v87 = *(v114[6] + 16 * a4 + 8);

            sub_1C4F02478();
          }

          v69 = v73;
          v21 = v101;
          v66 = v111;
        }
      }

      else
      {

        v69 = v73;
        v66 = v111;
      }
    }

    while (1)
    {
      v73 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      if (v73 >= a5)
      {

        v95 = sub_1C4F00EC8();
        v96 = v107;
        (v107)[2](v107, v95, 0);

        swift_unknownObjectRelease();

        goto LABEL_13;
      }

      a3 = *(a2 + 8 * v73);
      ++v69;
      if (a3)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_42:
    swift_once();
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  _Block_release(v107);
  sub_1C4F029F8();
  __break(1u);
}

void InternalXPC.Server.behaviorUnderstandingFeaturizeBehavior(ofType:identifier:usingContextAt:completion:)(uint64_t a1, int64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1C4EFDAB8();
  v9 = sub_1C43FBD18(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  sub_1C43FCE30(v13 - v12);
  v107 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v14 = sub_1C43FBCE0(v107);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBF38();
  v108 = v18;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C44144E4();
  v20 = sub_1C4EF9CD8();
  v21 = sub_1C43FCDF8(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C447F150();
  if (qword_1EDDFECB0 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v28 = sub_1C4F00978();
    sub_1C442B738(v28, qword_1EDDFECB8);
    v29 = *(v23 + 16);
    v30 = sub_1C4410CBC();
    v105 = v31;
    (v31)(v30);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v32 = sub_1C4F00968();
    v33 = a2;
    v34 = sub_1C4F01CF8();

    v103 = a3;
    if (os_log_type_enabled(v32, v34))
    {
      v35 = v20;
      v36 = v23;
      v37 = sub_1C43FFD34();
      v116[0] = swift_slowAlloc();
      *v37 = 136315650;
      *(v37 + 4) = sub_1C441D828(a1, v33, v116);
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_1C441D828(a3, a4, v116);
      *(v37 + 22) = 2080;
      sub_1C4411EF4();
      sub_1C496CC38(v38, v39);
      v40 = sub_1C4F02858();
      v41 = a4;
      v43 = v42;
      v44 = v36;
      v20 = v35;
      (*(v44 + 8))(v4, v35);
      sub_1C441D828(v40, v43, v116);
      sub_1C4404CE0();
      a4 = v41;

      *(v37 + 24) = v40;
      _os_log_impl(&dword_1C43F8000, v32, v34, "InternalXPC: Behavior Understanding featurizeBehavior [type=%s, identifier=%s, date=%s]", v37, 0x20u);
      swift_arrayDestroy();
      sub_1C43FBE2C();
      sub_1C43FFD4C();
    }

    else
    {

      (*(v23 + 8))(v4, v20);
    }

    if (qword_1EDDEBB80 != -1)
    {
      sub_1C44006B4();
    }

    v45 = sub_1C442B738(v107, qword_1EDDEBB90);
    sub_1C440D164();
    v46 = sub_1C43FD018();
    sub_1C4460108(v46, v47, v48, v49);
    v50 = type metadata accessor for Configuration();
    v51 = sub_1C440180C();
    sub_1C440175C(v51, v52, v50);
    if (v53)
    {
      break;
    }

    if (qword_1EDDFF2A0 != -1)
    {
      sub_1C43FD998();
    }

    v54 = sub_1C44E7FAC();
    sub_1C4419A54();
    sub_1C4453F54();
    v55 = *(v54 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);

    sub_1C4460108(v45, v108, &unk_1EC0B9610, &unk_1C4F0F2E0);
    sub_1C440175C(v108, 1, v50);
    if (v53)
    {
      goto LABEL_45;
    }

    v56 = type metadata accessor for BehaviorHistoryUtility();
    sub_1C44099C4(v56);
    v57 = v55;
    v108 = sub_1C4623CF4(v108, v57);
    v107 = v57;
    sub_1C4EFDA78();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C45D29E0(v101, v103, a4, v116);
    v58 = v45;
    v4 = v102;
    sub_1C4460108(v58, v102, &unk_1EC0B9610, &unk_1C4F0F2E0);
    sub_1C440175C(v102, 1, v50);
    if (v53)
    {
      goto LABEL_46;
    }

    type metadata accessor for BehaviorFeaturizer();
    v114 = v56;
    v115 = &off_1F43E41D8;
    v112 = v108;

    sub_1C4601538(v102, &v112);
    sub_1C4495248();
    sub_1C4410EB4();
    v105();
    v112 = 0;
    v113 = 256;
    v59 = type metadata accessor for BehaviorContext();
    sub_1C44099C4(v59);
    sub_1C45D689C();
    v61 = v60;
    v62 = sub_1C45FD2E4();
    a4 = sub_1C4601874(v116, v62, v61);
    sub_1C45EC75C(v116);

    if (!a4)
    {
      _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      sub_1C445E88C();
      v100();

      return;
    }

    sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
    a1 = sub_1C4F00F28();
    v63 = [a4 featureNames];
    a3 = sub_1C4F01AB8();

    a2 = 0;
    v64 = a3 + 56;
    v65 = 1 << *(a3 + 32);
    v66 = -1;
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    v23 = v66 & *(a3 + 56);
    v67 = (v65 + 63) >> 6;
    v106 = a4;
    v109 = a3;
LABEL_16:
    v68 = a2;
    if (!v23)
    {
      goto LABEL_18;
    }

    do
    {
      a2 = v68;
LABEL_21:
      v69 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v70 = (*(a3 + 48) + ((a2 << 10) | (16 * v69)));
      v71 = *v70;
      v20 = v70[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4409D0C();
      v72 = sub_1C4F01108();
      v4 = [a4 featureValueForName_];

      if (!v4)
      {

        goto LABEL_16;
      }

      [v4 doubleValue];
      v74 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      if (v74)
      {
        v80 = v74;
        v81 = a1;
        swift_isUniquelyReferenced_nonNull_native();
        v112 = a1;
        v82 = sub_1C4409D0C();
        v104 = sub_1C445FAA8(v82, v83);
        v111 = v84;
        if (__OFADD__(*(v81 + 16), (v84 & 1) == 0))
        {
          __break(1u);
          goto LABEL_43;
        }

        sub_1C456902C(&qword_1EC0BCBF8, &qword_1C4F2A328);
        if (sub_1C4F02458())
        {
          v85 = sub_1C4409D0C();
          v104 = sub_1C445FAA8(v85, v86);
          v88 = v111;
          a3 = v109;
          if ((v111 & 1) != (v87 & 1))
          {
            goto LABEL_47;
          }
        }

        else
        {
          a3 = v109;
          v88 = v111;
        }

        if (v88)
        {

          a1 = v112;
          v92 = v112[7];
          v93 = *(v92 + 8 * v104);
          *(v92 + 8 * v104) = v80;
        }

        else
        {
          v94 = v112;
          v112[(v104 >> 6) + 8] |= 1 << v104;
          v95 = (v94[6] + 16 * v104);
          *v95 = v71;
          v95[1] = v20;
          *(v94[7] + 8 * v104) = v80;

          v96 = v94[2];
          v97 = __OFADD__(v96, 1);
          v98 = v96 + 1;
          if (v97)
          {
            goto LABEL_44;
          }

          a1 = v94;
          v94[2] = v98;
        }

        a4 = v106;
        goto LABEL_16;
      }

      v75 = sub_1C4409D0C();
      v77 = sub_1C445FAA8(v75, v76);
      v79 = v78;

      if (v79)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v112 = a1;
        v89 = *(a1 + 24);
        sub_1C456902C(&qword_1EC0BCBF8, &qword_1C4F2A328);
        sub_1C4F02458();
        v90 = v112;
        v91 = *(v112[6] + 16 * v77 + 8);

        a1 = v90;
        sub_1C4F02478();

        a4 = v106;
        a3 = v109;
        goto LABEL_16;
      }

      v68 = a2;
      a4 = v106;
      a3 = v109;
    }

    while (v23);
LABEL_18:
    while (1)
    {
      a2 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        break;
      }

      if (a2 >= v67)
      {

        sub_1C445E88C();
        v99();

        swift_unknownObjectRelease();

        return;
      }

      v23 = *(v64 + 8 * a2);
      ++v68;
      if (v23)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_41:
    sub_1C43FFB88();
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  sub_1C4F029F8();
  __break(1u);
}

void sub_1C4962C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v86 = a6;
  v87 = a1;
  v82 = a5;
  v88 = a3;
  v11 = sub_1C4EFDAB8();
  v79 = *(v11 - 8);
  v80 = v11;
  v12 = *(v79 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v77 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v76 - v15;
  v85 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v17 = *(*(v85 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v85);
  v78 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v83 = &v76 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v84 = &v76 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v76 - v24;
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v26 = sub_1C4F00978();
  v27 = sub_1C442B738(v26, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v28 = sub_1C4F00968();
  v29 = sub_1C4F01CF8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = a2;
    v31 = a4;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v81 = v27;
    v34 = v16;
    v35 = a8;
    v36 = v33;
    v91[0] = v33;
    *v32 = 136315394;
    *(v32 + 4) = sub_1C441D828(v87, v30, v91);
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_1C441D828(v88, v31, v91);
    _os_log_impl(&dword_1C43F8000, v28, v29, "InternalXPC: Behavior Understanding histograms [kind=%s, behaviorType=%s]", v32, 0x16u);
    swift_arrayDestroy();
    v37 = v36;
    a8 = v35;
    v16 = v34;
    v27 = v81;
    MEMORY[0x1C6942830](v37, -1, -1);
    v38 = v32;
    a4 = v31;
    a2 = v30;
    MEMORY[0x1C6942830](v38, -1, -1);
  }

  v39 = v86;
  if (v86)
  {
    if (qword_1EDDEBB80 != -1)
    {
      swift_once();
    }

    v40 = sub_1C442B738(v85, qword_1EDDEBB90);
    swift_beginAccess();
    sub_1C4460108(v40, v25, &unk_1EC0B9610, &unk_1C4F0F2E0);
    v41 = type metadata accessor for Configuration();
    if (sub_1C44157D4(v25, 1, v41) != 1)
    {
      if (qword_1EDDFF2A0 != -1)
      {
        swift_once();
      }

      sub_1C44E7FAC();
      sub_1C4453F54();
      sub_1C4BEB8E0(v82, v39, v91);

      sub_1C4460108(&v93, &v89, &qword_1EC0BB460, &qword_1C4F5D900);
      if (!v90)
      {
        sub_1C4420C3C(&v89, &qword_1EC0BB460, &qword_1C4F5D900);
        (*(a8 + 16))(a8, 0, 0);
        sub_1C496C560(v91);
        goto LABEL_18;
      }

      v81 = v27;
      sub_1C443FA18(&v89, v96);
      sub_1C442E860(v94, v95);
      sub_1C4707ED4(v91);
LABEL_29:
      sub_1C442E860(v96, v91);
      sub_1C442E860(v95, &v92);
      v85 = a4;
      sub_1C4EFDA78();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v86 = a2;
      v57 = sub_1C460B094(v87, a2);
      if (v57 != 16)
      {
        v58 = v57;
        v59 = v79;
        v60 = v77;
        v61 = v16;
        v62 = v80;
        (*(v79 + 104))(v77, *MEMORY[0x1E69A9450], v80);
        sub_1C496CC38(&unk_1EDDEFFC0, MEMORY[0x1E69A9478]);
        v63 = sub_1C4F010B8();
        v64 = *(v59 + 8);
        v65 = v62;
        v16 = v61;
        v64(v60, v65);
        if ((v63 & 1) == 0)
        {
          v66 = objc_autoreleasePoolPush();
          v67 = sub_1C461CEFC(v58, v61);
          v83 = v66;
          v84 = a8;
          v68 = sub_1C4EF93D8();
          v69 = *(v68 + 48);
          v70 = *(v68 + 52);
          swift_allocObject();
          sub_1C4EF93C8();
          v94[17] = v67;
          sub_1C456902C(&qword_1EC0BFD48, &qword_1C4F3D9F0);
          sub_1C496D804(&qword_1EC0BFD50, &qword_1EC0BFD48, &qword_1C4F3D9F0, sub_1C496C458);
          v71 = sub_1C4EF93B8();
          v73 = v72;

          sub_1C44344B8(v71, v73);
          v74 = sub_1C4EF9A38();
          v75 = v84;
          (*(v84 + 16))(v84, v74, 0);

          sub_1C4434000(v71, v73);
          sub_1C4434000(v71, v73);
          objc_autoreleasePoolPop(v83);
          v64(v61, v80);
          sub_1C496C404(v91);
          sub_1C440962C(v96);
          sub_1C440962C(v95);
          v45 = v75;
          goto LABEL_19;
        }
      }

      (*(a8 + 16))(a8, 0, 0);
      (*(v79 + 8))(v16, v80);
      sub_1C496C404(v91);
      sub_1C440962C(v96);
      sub_1C440962C(v95);
LABEL_18:
      v45 = a8;
LABEL_19:
      _Block_release(v45);
      return;
    }

    __break(1u);
    goto LABEL_34;
  }

  v86 = v16;
  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v42 = sub_1C442B738(v85, qword_1EDDEBB90);
  swift_beginAccess();
  v43 = v84;
  sub_1C4460108(v42, v84, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v44 = type metadata accessor for Configuration();
  if (sub_1C44157D4(v43, 1, v44) == 1)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (qword_1EDDE7308 != -1)
  {
    swift_once();
  }

  v82 = sub_1C4ABF81C();
  sub_1C4453F54();
  v46 = v83;
  sub_1C4460108(v42, v83, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v46, 1, v44) == 1)
  {
    goto LABEL_35;
  }

  v85 = a4;
  if (qword_1EDDFF2A0 != -1)
  {
    swift_once();
  }

  v47 = sub_1C44E7FAC();
  v81 = v27;
  sub_1C4453F54();
  v48 = *(v47 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);

  v49 = v42;
  v50 = v78;
  sub_1C4460108(v49, v78, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v50, 1, v44) != 1)
  {
    v51 = type metadata accessor for BehaviorHistoryUtility();
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    swift_allocObject();
    v54 = v48;
    v55 = sub_1C4623CF4(v50, v54);
    v16 = v86;
    v91[3] = v51;
    v91[4] = &off_1F43E41D8;
    v91[0] = v55;
    sub_1C45EA370(v91, v96);
    sub_1C440962C(v91);
    v56 = sub_1C45ED17C();
    v95[3] = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
    v95[4] = &off_1F43E2510;

    v95[0] = v56;
    a4 = v85;
    goto LABEL_29;
  }

LABEL_36:
  __break(1u);
}

void InternalXPC.Server.behaviorUnderstandingHistograms(ofKind:behaviorType:viewName:completion:)()
{
  sub_1C43FBD3C();
  v91 = v1;
  v92 = v2;
  v4 = v3;
  v95 = v6;
  v96 = v5;
  v8 = v7;
  v97 = v9;
  v11 = v10;
  v12 = sub_1C4EFDAB8();
  v13 = sub_1C43FCDF8(v12);
  v88 = v14;
  v89 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  v86 = v17;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD230();
  v90 = v19;
  v93 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v20 = sub_1C43FBCE0(v93);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBFDC();
  v87 = v23;
  sub_1C43FD1D0();
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v85 - v26;
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF38();
  v94 = v28;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C44144E4();
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v30 = sub_1C4F00978();
  v31 = sub_1C442B738(v30, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v32 = sub_1C4F00968();
  v33 = sub_1C4F01CF8();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = v11;
    v35 = v8;
    v36 = sub_1C440F274();
    v37 = sub_1C43FC11C();
    v85 = v27;
    v100[0] = v37;
    *v36 = 136315394;
    *(v36 + 4) = sub_1C441D828(v96, v34, v100);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_1C441D828(v97, v35, v100);
    sub_1C442AC1C();
    _os_log_impl(v38, v39, v40, v41, v42, 0x16u);
    swift_arrayDestroy();
    v27 = v85;
    sub_1C43FBE2C();
    v8 = v35;
    v11 = v34;
    sub_1C43FBE2C();
  }

  v43 = v94;
  v44 = v95;
  if (v95)
  {
    if (qword_1EDDEBB80 != -1)
    {
      sub_1C44006B4();
    }

    v45 = sub_1C442B738(v93, qword_1EDDEBB90);
    sub_1C440D164();
    sub_1C4460108(v45, v0, &unk_1EC0B9610, &unk_1C4F0F2E0);
    type metadata accessor for Configuration();
    v46 = sub_1C440180C();
    sub_1C440175C(v46, v47, v48);
    if (!v56)
    {
      if (qword_1EDDFF2A0 != -1)
      {
        sub_1C43FD998();
      }

      sub_1C44E7FAC();
      sub_1C4419A54();
      sub_1C4453F54();
      sub_1C4BEB8E0(v91, v44, v100);

      sub_1C4460108(&v102, &v98, &qword_1EC0BB460, &qword_1C4F5D900);
      if (!v99)
      {
        sub_1C4420C3C(&v98, &qword_1EC0BB460, &qword_1C4F5D900);
        v60 = sub_1C440722C();
        v4(v60);
        sub_1C496C560(v100);
LABEL_21:
        sub_1C43FE9F0();
        return;
      }

      v95 = v31;
      sub_1C443FA18(&v98, v105);
      sub_1C442E860(v103, v104);
      sub_1C4707ED4(v100);
      v51 = v90;
LABEL_27:
      sub_1C442E860(v105, v100);
      sub_1C442E860(v104, &v101);
      sub_1C4EFDA78();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v93 = v11;
      v62 = sub_1C460B094(v96, v11);
      if (v62 == 16)
      {
        goto LABEL_29;
      }

      v63 = v62;
      v64 = v88;
      v65 = v89;
      v66 = v86;
      (*(v88 + 104))(v86, *MEMORY[0x1E69A9450], v89);
      sub_1C4426C2C();
      sub_1C496CC38(v67, v68);
      v69 = sub_1C4F010B8();
      v70 = *(v64 + 8);
      v71 = v65;
      v51 = v90;
      v70(v66, v71);
      if (v69)
      {
LABEL_29:
        v72 = sub_1C440722C();
        v4(v72);
        (*(v88 + 8))(v51, v89);
      }

      else
      {
        v73 = objc_autoreleasePoolPush();
        v74 = sub_1C461CEFC(v63, v51);
        v94 = v8;
        v91 = v4;
        v75 = sub_1C4EF93D8();
        sub_1C44099C4(v75);
        sub_1C4EF93C8();
        v103[17] = v74;
        v76 = sub_1C43FFE24();
        sub_1C456902C(v76, v77);
        sub_1C496D804(&qword_1EC0BFD50, &qword_1EC0BFD48, &qword_1C4F3D9F0, sub_1C496C458);
        sub_1C4EF93B8();

        v78 = sub_1C43FFE24();
        sub_1C44344B8(v78, v79);
        v80 = sub_1C43FFE24();
        v91(v80);
        v81 = sub_1C43FFE24();
        sub_1C4434000(v81, v82);
        v83 = sub_1C43FFE24();
        sub_1C4434000(v83, v84);
        objc_autoreleasePoolPop(v73);
        v70(v90, v89);
      }

      sub_1C496C404(v100);
      sub_1C440962C(v105);
      sub_1C440962C(v104);
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_33;
  }

  v95 = v31;
  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4();
  }

  v49 = sub_1C442B738(v93, qword_1EDDEBB90);
  sub_1C440D164();
  sub_1C4460108(v49, v43, &unk_1EC0B9610, &unk_1C4F0F2E0);
  type metadata accessor for Configuration();
  sub_1C43FC0FC(v43);
  if (v56)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (qword_1EDDE7308 != -1)
  {
    sub_1C440F814();
  }

  v93 = sub_1C4ABF81C();
  sub_1C4419A54();
  sub_1C4453F54();
  sub_1C4460108(v49, v27, &unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FC0FC(v27);
  if (v56)
  {
    goto LABEL_34;
  }

  if (qword_1EDDFF2A0 != -1)
  {
    sub_1C43FD998();
  }

  v50 = v27;
  v52 = sub_1C44E7FAC();
  v94 = v8;
  sub_1C4419A54();
  sub_1C4453F54();
  v53 = *(v52 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
  sub_1C4404CE0();

  v54 = v49;
  v55 = v87;
  sub_1C4460108(v54, v87, &unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FC0FC(v55);
  if (!v56)
  {
    v57 = type metadata accessor for BehaviorHistoryUtility();
    sub_1C44099C4(v57);
    v58 = v50;
    v59 = sub_1C4623CF4(v55, v58);
    v51 = v90;
    v100[3] = v57;
    v100[4] = &off_1F43E41D8;
    v100[0] = v59;
    sub_1C45EA370(v100, v105);
    sub_1C440962C(v100);
    v61 = sub_1C45ED17C();
    v104[3] = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
    v104[4] = &off_1F43E2510;

    v104[0] = v61;
    v8 = v94;
    goto LABEL_27;
  }

LABEL_35:
  __break(1u);
}

void sub_1C4964488(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  v84 = a4;
  v83 = a3;
  v82 = a1;
  v78 = sub_1C4EFDAB8();
  v77 = *(v78 - 8);
  v8 = *(v77 + 64);
  v9 = MEMORY[0x1EEE9AC00](v78);
  v75 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v72 - v11;
  v12 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v79 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v80 = &v72 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v72 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v72 - v21;
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1C4F00978();
  v24 = sub_1C442B738(v23, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v81 = v24;
  v25 = sub_1C4F00968();
  v26 = sub_1C4F01CF8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = a6;
    v29 = swift_slowAlloc();
    v86[0] = v29;
    *v27 = 136315394;
    *(v27 + 4) = sub_1C441D828(v82, a2, v86);
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_1C441D828(v83, v84, v86);
    _os_log_impl(&dword_1C43F8000, v25, v26, "InternalXPC: Behavior Understanding featurizedBehaviors [featureName=%s, behaviorType=%s]", v27, 0x16u);
    swift_arrayDestroy();
    v30 = v29;
    a6 = v28;
    MEMORY[0x1C6942830](v30, -1, -1);
    MEMORY[0x1C6942830](v27, -1, -1);
  }

  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v31 = sub_1C442B738(v12, qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C4460108(v31, v22, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v32 = type metadata accessor for Configuration();
  if (sub_1C44157D4(v22, 1, v32) == 1)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (qword_1EDDE7308 != -1)
  {
    swift_once();
  }

  v74 = sub_1C4ABF81C();
  sub_1C4453F54();
  sub_1C4460108(v31, v20, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v20, 1, v32) == 1)
  {
    goto LABEL_22;
  }

  if (qword_1EDDFF2A0 != -1)
  {
    swift_once();
  }

  v33 = sub_1C44E7FAC();
  sub_1C4453F54();
  v34 = *(v33 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);

  v35 = v80;
  sub_1C4460108(v31, v80, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v35, 1, v32) == 1)
  {
    goto LABEL_23;
  }

  v36 = type metadata accessor for BehaviorHistoryUtility();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v39 = v34;
  v40 = sub_1C4623CF4(v35, v39);
  v80 = v39;
  v73 = a6;
  v41 = v79;
  sub_1C4460108(v31, v79, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v41, 1, v32) != 1)
  {
    v42 = type metadata accessor for BehaviorFeaturizer();
    v86[3] = v36;
    v86[4] = &off_1F43E41D8;
    v86[0] = v40;

    v43 = sub_1C4601538(v41, v86);
    v85[3] = v36;
    v85[4] = &off_1F43E41D8;
    v85[0] = v40;

    sub_1C45EA370(v85, v86);
    sub_1C440962C(v85);
    v44 = sub_1C45ED17C();
    v86[8] = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
    v86[5] = v44;
    v86[13] = v42;
    v86[14] = &off_1F43E2F70;
    v86[9] = &off_1F43E2510;
    v86[10] = v43;
    v45 = v76;
    sub_1C4EFDA78();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C45FE940(v82, a2);
    if (v47 != 0xFF)
    {
      v48 = v46;
      v49 = v47;
      v50 = v77;
      v51 = v75;
      v52 = v78;
      (*(v77 + 104))(v75, *MEMORY[0x1E69A9450], v78);
      sub_1C496CC38(&unk_1EDDEFFC0, MEMORY[0x1E69A9478]);
      v53 = sub_1C4F010B8();
      v54 = v51;
      v55 = *(v50 + 8);
      v55(v54, v52);
      if ((v53 & 1) == 0)
      {
        sub_1C47EB1E4(v48, v49, v45, v56, v57, v58, v59, v60, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
        v63 = v62;
        v64 = v55;
        sub_1C496C608(v48, v49);
        v79 = objc_autoreleasePoolPush();
        v65 = sub_1C4EF93D8();
        v66 = *(v65 + 48);
        v67 = *(v65 + 52);
        swift_allocObject();
        sub_1C4EF93C8();
        v85[0] = v63;
        sub_1C456902C(&qword_1EC0BFD70, &qword_1C4F3DA00);
        sub_1C496C61C();
        v68 = sub_1C4EF93B8();
        v70 = v69;

        sub_1C44344B8(v68, v70);
        v71 = sub_1C4EF9A38();
        v61 = v73;
        (v73[2])(v73, v71, 0);

        sub_1C4434000(v68, v70);
        sub_1C4434000(v68, v70);
        objc_autoreleasePoolPop(v79);

        v64(v76, v78);
        goto LABEL_19;
      }

      sub_1C496C608(v48, v49);
    }

    v61 = v73;
    (v73[2])(v73, 0, 0);

    (*(v77 + 8))(v45, v78);
LABEL_19:
    sub_1C496C5B4(v86);
    _Block_release(v61);
    return;
  }

LABEL_24:
  __break(1u);
}

void InternalXPC.Server.behaviorUnderstandingFeaturizedBehaviors(forFeatureName:behaviorType:completion:)()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v93 = v4;
  v92 = v5;
  v87 = sub_1C4EFDAB8();
  v6 = sub_1C43FCDF8(v87);
  v86 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD230();
  sub_1C43FCE30(v11);
  v12 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v13 = sub_1C43FBCE0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v81 - v19;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v21 = sub_1C4F00978();
  v22 = sub_1C442B738(v21, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v91 = v22;
  v23 = sub_1C4F00968();
  sub_1C4F01CF8();

  if (sub_1C43FD09C())
  {
    v24 = sub_1C440F274();
    v95[0] = sub_1C43FC11C();
    *v24 = 136315394;
    v25 = sub_1C4423BDC();
    *(v24 + 4) = sub_1C441D828(v25, v26, v27);
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_1C4458710();
    sub_1C4414B20();
    _os_log_impl(v28, v29, v30, v31, v32, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C4412D04();
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4();
  }

  v33 = sub_1C442B738(v12, qword_1EDDEBB90);
  sub_1C440D164();
  sub_1C4460108(v33, v20, &unk_1EC0B9610, &unk_1C4F0F2E0);
  type metadata accessor for Configuration();
  sub_1C440582C(v20);
  if (v34)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (qword_1EDDE7308 != -1)
  {
    sub_1C440F814();
  }

  v83 = sub_1C4ABF81C();
  sub_1C4419A54();
  sub_1C4453F54();
  v35 = v90;
  sub_1C4460108(v33, v90, &unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C440582C(v35);
  if (v34)
  {
    goto LABEL_22;
  }

  if (qword_1EDDFF2A0 != -1)
  {
    sub_1C43FD998();
  }

  v36 = v35;
  v37 = sub_1C44E7FAC();
  v81 = v1;
  v82 = v3;
  sub_1C4419A54();
  sub_1C4453F54();
  v38 = *(v37 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
  sub_1C441D28C();

  v39 = v89;
  sub_1C4460108(v33, v89, &unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C440582C(v39);
  if (v34)
  {
    goto LABEL_23;
  }

  v40 = type metadata accessor for BehaviorHistoryUtility();
  sub_1C44099C4(v40);
  v41 = v36;
  v42 = sub_1C4623CF4(v39, v41);
  v90 = v41;
  v43 = v88;
  sub_1C4460108(v33, v88, &unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C440582C(v43);
  if (!v34)
  {
    v44 = type metadata accessor for BehaviorFeaturizer();
    v95[3] = v40;
    v95[4] = &off_1F43E41D8;
    v95[0] = v42;

    v45 = sub_1C4601538(v43, v95);
    v94[3] = v40;
    v94[4] = &off_1F43E41D8;
    v94[0] = v42;

    v46 = v83;
    sub_1C45EA370(v94, v95);
    sub_1C440962C(v94);
    sub_1C45ED17C();
    v47 = sub_1C43FBE94();
    v95[8] = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(v47);
    v95[5] = v46;
    v95[13] = v44;
    v95[14] = &off_1F43E2F70;
    v95[9] = &off_1F43E2510;
    v95[10] = v45;
    v48 = v85;
    sub_1C4EFDA78();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v49 = sub_1C4423BDC();
    sub_1C45FE940(v49, v50);
    if (v52 != 0xFF)
    {
      v53 = v52;
      v89 = v51;
      v54 = v86;
      v55 = v84;
      v56 = v87;
      (*(v86 + 104))(v84, *MEMORY[0x1E69A9450], v87);
      sub_1C4426C2C();
      sub_1C496CC38(v57, v58);
      sub_1C4410CBC();
      v59 = sub_1C4F010B8();
      v60 = v55;
      v61 = *(v54 + 8);
      v61(v60, v56);
      if ((v59 & 1) == 0)
      {
        v69 = v89;
        sub_1C47EB1E4(v89, v53, v48, v62, v63, v64, v65, v66, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92);
        v88 = v70;
        sub_1C496C608(v69, v53);
        v89 = objc_autoreleasePoolPush();
        v71 = sub_1C4EF93D8();
        sub_1C44099C4(v71);
        sub_1C4EF93C8();
        v94[0] = v88;
        sub_1C456902C(&qword_1EC0BFD70, &qword_1C4F3DA00);
        sub_1C496C61C();
        sub_1C4EF93B8();

        v72 = sub_1C43FD024();
        sub_1C44344B8(v72, v73);
        sub_1C43FD024();
        sub_1C4401E10();
        v74();
        v75 = sub_1C43FD024();
        sub_1C4434000(v75, v76);
        v77 = sub_1C43FD024();
        sub_1C4434000(v77, v78);
        objc_autoreleasePoolPop(v89);
        sub_1C44167A4();

        sub_1C445BF78();
        v80 = sub_1C44BBE20();
        (v61)(v80);
        goto LABEL_19;
      }

      sub_1C496C608(v89, v53);
    }

    sub_1C440722C();
    sub_1C4401E10();
    v67();
    sub_1C44167A4();

    sub_1C445BF78();
    (*(v86 + 8))(v48, v87);
LABEL_19:
    sub_1C496C5B4(v95);
    sub_1C43FE9F0();
    return;
  }

LABEL_24:
  __break(1u);
}
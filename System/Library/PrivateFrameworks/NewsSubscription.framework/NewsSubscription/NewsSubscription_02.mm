uint64_t sub_1D7774EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D77782E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7774F20(uint64_t a1)
{
  v2 = sub_1D7777C48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7774F5C(uint64_t a1)
{
  v2 = sub_1D7777C48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1D7774F98@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D777854C(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1D7775028()
{
  v1 = 0x444964656566;
  if (*v0 != 1)
  {
    v1 = 0x496E6F6974636573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6570795464656566;
  }
}

uint64_t sub_1D7775084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7778A08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D77750AC(uint64_t a1)
{
  v2 = sub_1D7777BF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D77750E8(uint64_t a1)
{
  v2 = sub_1D7777BF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D7775124@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7778B24(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D77751A8()
{
  v1 = *v0;
  v2 = 0x636F4C70756F7267;
  v3 = 0x444970756F7267;
  v4 = 0x756F4370756F7267;
  if (v1 != 3)
  {
    v4 = 0x736F5070756F7267;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x70795470756F7267;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D7775258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7778D90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D777528C(uint64_t a1)
{
  v2 = sub_1D7777BA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D77752C8(uint64_t a1)
{
  v2 = sub_1D7777BA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D7775304@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7778F60(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1D7775398()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6E656B6F5471;
  }
}

uint64_t sub_1D77753D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656B6F5471 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D78B6724() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D78CEC40 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D78B6724();

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

uint64_t sub_1D77754B4(uint64_t a1)
{
  v2 = sub_1D7777B4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D77754F0(uint64_t a1)
{
  v2 = sub_1D7777B4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D777552C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D777927C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1D7775580()
{
  v1 = 0x6576697461657263;
  if (*v0 == 1)
  {
    v1 = 0x6E676961706D6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E676961706D6163;
  }
}

uint64_t sub_1D77755D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7779488(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D77755FC(uint64_t a1)
{
  v2 = sub_1D7777AF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7775638(uint64_t a1)
{
  v2 = sub_1D7777AF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D7775674@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D77795AC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1D77756F4()
{
  v1 = 0x646961507369;
  if (*v0 != 1)
  {
    v1 = 0x6D69546C61746F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449657069636572;
  }
}

uint64_t sub_1D7775750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7779830(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7775778(uint64_t a1)
{
  v2 = sub_1D7777AA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D77757B4(uint64_t a1)
{
  v2 = sub_1D7777AA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D77757F0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D777994C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t PurchaseTraits.encode(to:)(void *a1)
{
  sub_1D7779BF4(0, &qword_1EC9C9798, sub_1D7776460, &type metadata for PurchaseTraits.CodingKeys, MEMORY[0x1E69E6F58]);
  v62 = v3;
  v61 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v50 - v4;
  v6 = v1[1];
  v54 = *v1;
  v60 = v6;
  v55 = *(v1 + 16);
  v53 = *(v1 + 17) | ((*(v1 + 21) | (*(v1 + 23) << 16)) << 32);
  v7 = v1[4];
  v58 = v1[3];
  v59 = v7;
  v56 = v1[5];
  v52 = *(v1 + 48);
  v51 = *(v1 + 49) | ((*(v1 + 53) | (*(v1 + 55) << 16)) << 32);
  v57 = v1[7];
  v8 = *(v1 + 64);
  v9 = *(v1 + 65);
  v10 = *(v1 + 35);
  v11 = v1[9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7776460();
  sub_1D78B6884();
  v12 = v10 >> 12;
  if (v10 >> 12 <= 3)
  {
    v19 = v57;
    if (v10 >> 12 > 1)
    {
      v27 = v11;
      v28 = v8;
      v29 = v62;
      v30 = v60;
      v31 = v5;
      if (v12 != 2)
      {
        v42 = v9;
        v75 = 7;
        v74 = 0;
        sub_1D77764B4();

        v43 = v58;

        v44 = v76;
        sub_1D78B66B4();
        if (!v44)
        {
          *&v69 = v54;
          *(&v69 + 1) = v30;
          LOBYTE(v70) = v55;
          *(&v70 + 1) = v53;
          BYTE7(v70) = BYTE6(v53);
          *(&v70 + 5) = WORD2(v53);
          *(&v70 + 1) = v43;
          LODWORD(v71) = v59;
          *(&v71 + 1) = v56;
          LOBYTE(v72) = v52 & 1;
          *(&v72 + 1) = v19;
          LOBYTE(v73) = v28 & 1;
          BYTE1(v73) = v42 & 1;
          *(&v73 + 1) = v27;
          v66 = v71;
          v67 = v72;
          v68 = v73;
          v65 = v70;
          v64 = v69;
          v63 = 7;
          sub_1D77766AC();
          sub_1D78B66B4();
          (*(v61 + 8))(v31, v29);
          return sub_1D7776700(&v69);
        }

        (*(v61 + 8))(v31, v29);
        goto LABEL_43;
      }

      LOBYTE(v69) = 2;
      LOBYTE(v64) = 0;
      sub_1D77764B4();
      v32 = v76;
      sub_1D78B66B4();
      if (!v32)
      {
        *&v69 = v54;
        *(&v69 + 1) = v30;
        LOBYTE(v64) = 2;
        sub_1D7776730();
        sub_1D78B66B4();
      }

      return (*(v61 + 8))(v5, v29);
    }

    v20 = v62;
    v21 = v60;
    v22 = v5;
    v23 = v56;
    if (v12)
    {
      v39 = v52 | (v51 << 8);
      LOBYTE(v69) = 0;
      LOBYTE(v64) = 0;
      sub_1D77764B4();

      v40 = v58;

      v41 = v76;
      sub_1D78B66B4();
      if (v41)
      {
LABEL_41:
        (*(v61 + 8))(v22, v20);

        goto LABEL_42;
      }

      *&v69 = v54;
      *(&v69 + 1) = v21;
      LOBYTE(v70) = v55;
      BYTE7(v70) = BYTE6(v53);
      *(&v70 + 5) = WORD2(v53);
      *(&v70 + 1) = v53;
      *(&v70 + 1) = v40;
      *&v71 = v59;
      *(&v71 + 1) = v23;
      *&v72 = v39;
      LOBYTE(v64) = 1;
      sub_1D7776784();
    }

    else
    {
      LOBYTE(v69) = 0;
      LOBYTE(v64) = 0;
      sub_1D77764B4();

      v24 = v58;

      v25 = v76;
      sub_1D78B66B4();
      v26 = v59;
      if (v25)
      {
        (*(v61 + 8))(v5, v20);
LABEL_42:

LABEL_43:
      }

      if (v19)
      {
        sub_1D7777D44(0, &qword_1EE08FA50, MEMORY[0x1E69E6F90]);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_1D78BCAB0;
        *(v48 + 32) = v52;
        v49 = v51;
        *(v48 + 39) = BYTE6(v51);
        *(v48 + 37) = WORD2(v49);
        *(v48 + 33) = v49;
        *(v48 + 40) = v19;
      }

      else
      {
        v48 = MEMORY[0x1E69E7CC0];
      }

      *&v69 = v54;
      *(&v69 + 1) = v21;
      LOBYTE(v70) = v55;
      *(&v70 + 1) = v53;
      BYTE7(v70) = BYTE6(v53);
      *(&v70 + 5) = WORD2(v53);
      *(&v70 + 1) = v24;
      *&v71 = v26;
      *(&v71 + 1) = v23;
      *&v72 = v48;
      LOBYTE(v64) = 1;
      sub_1D7776784();
    }

    sub_1D78B66B4();
    goto LABEL_41;
  }

  if (v10 >> 12 <= 5)
  {
    v34 = v62;
    v35 = v59;
    if (v12 == 4)
    {
      v36 = v55 | (v53 << 8);
      LOBYTE(v69) = 3;
      LOBYTE(v64) = 0;
      sub_1D77764B4();

      v37 = v76;
      sub_1D78B66B4();
      if (!v37)
      {
        *&v69 = v54;
        *(&v69 + 1) = v60;
        *&v70 = v36;
        *(&v70 + 1) = v58;
        *&v71 = v35;
        LOBYTE(v64) = 3;
        sub_1D7776658();
        sub_1D78B66B4();
      }
    }

    else
    {
      LOBYTE(v69) = 4;
      LOBYTE(v64) = 0;
      sub_1D77764B4();
      v46 = v60;

      v47 = v76;
      sub_1D78B66B4();
      if (!v47)
      {
        *&v69 = v54;
        *(&v69 + 1) = v46;
        *&v70 = v55 | (v53 << 8);
        *(&v70 + 1) = v58;
        *&v71 = v35;
        *(&v71 + 1) = v56;
        LOBYTE(v72) = v52;
        BYTE7(v72) = BYTE6(v51);
        *(&v72 + 5) = WORD2(v51);
        *(&v72 + 1) = v51;
        LOBYTE(v64) = 4;
        sub_1D7776604();
        sub_1D78B66B4();
      }
    }

    (*(v61 + 8))(v5, v34);
  }

  v13 = v62;
  v14 = v60;
  v15 = v59;
  if (v12 != 6)
  {
    if (v12 == 7)
    {
      LOBYTE(v69) = 6;
      LOBYTE(v64) = 0;
      sub_1D77764B4();

      v16 = v58;

      v17 = v56;

      v18 = v76;
      sub_1D78B66B4();
      if (!v18)
      {
        *&v69 = v54;
        *(&v69 + 1) = v14;
        LOBYTE(v70) = v55;
        BYTE7(v70) = BYTE6(v53);
        *(&v70 + 5) = WORD2(v53);
        *(&v70 + 1) = v53;
        *(&v70 + 1) = v16;
        *&v71 = v15;
        *(&v71 + 1) = v17;
        LOBYTE(v64) = 6;
        sub_1D777655C();
        sub_1D78B66B4();
      }

      (*(v61 + 8))(v5, v13);
    }

    else
    {
      LOBYTE(v69) = 8;
      LOBYTE(v64) = 0;
      sub_1D77764B4();

      v45 = v76;
      sub_1D78B66B4();
      if (!v45)
      {
        *&v69 = v54;
        *(&v69 + 1) = v14;
        LOBYTE(v70) = v55 & 1;
        *(&v70 + 1) = v58;
        *&v71 = v15;
        LOBYTE(v64) = 8;
        sub_1D7776508();
        sub_1D78B66B4();
      }

      (*(v61 + 8))(v5, v13);
    }

    goto LABEL_43;
  }

  LOBYTE(v69) = 5;
  LOBYTE(v64) = 0;
  sub_1D77764B4();
  v38 = v76;
  sub_1D78B66B4();
  if (!v38)
  {
    *&v69 = v54;
    *(&v69 + 1) = v14;
    LOBYTE(v70) = v55 & 1;
    LOBYTE(v64) = 5;
    sub_1D77765B0();
    sub_1D78B66B4();
  }

  return (*(v61 + 8))(v5, v13);
}

unint64_t sub_1D7776460()
{
  result = qword_1EE08F208;
  if (!qword_1EE08F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F208);
  }

  return result;
}

unint64_t sub_1D77764B4()
{
  result = qword_1EC9C97A0;
  if (!qword_1EC9C97A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C97A0);
  }

  return result;
}

unint64_t sub_1D7776508()
{
  result = qword_1EC9C97A8;
  if (!qword_1EC9C97A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C97A8);
  }

  return result;
}

unint64_t sub_1D777655C()
{
  result = qword_1EC9C97B0;
  if (!qword_1EC9C97B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C97B0);
  }

  return result;
}

unint64_t sub_1D77765B0()
{
  result = qword_1EC9C97B8;
  if (!qword_1EC9C97B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C97B8);
  }

  return result;
}

unint64_t sub_1D7776604()
{
  result = qword_1EC9C97C0;
  if (!qword_1EC9C97C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C97C0);
  }

  return result;
}

unint64_t sub_1D7776658()
{
  result = qword_1EC9C97C8;
  if (!qword_1EC9C97C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C97C8);
  }

  return result;
}

unint64_t sub_1D77766AC()
{
  result = qword_1EC9C97D0;
  if (!qword_1EC9C97D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C97D0);
  }

  return result;
}

unint64_t sub_1D7776730()
{
  result = qword_1EC9C97D8;
  if (!qword_1EC9C97D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C97D8);
  }

  return result;
}

unint64_t sub_1D7776784()
{
  result = qword_1EC9C97E0;
  if (!qword_1EC9C97E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C97E0);
  }

  return result;
}

uint64_t PurchaseTraits.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D7779BF4(0, &qword_1EE08E538, sub_1D7776460, &type metadata for PurchaseTraits.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  v10 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1D7776460();
  sub_1D78B6874();
  if (!v2)
  {
    v11 = v7;
    v44 = 0;
    sub_1D7776EF8();
    sub_1D78B6614();
    if (v45 <= 3u)
    {
      v13 = a2;
      if (v45 <= 1u)
      {
        if (v45)
        {
          LOBYTE(v32[0]) = 1;
          sub_1D7777198();
          sub_1D78B6614();
          (*(v7 + 8))(v9, v6);
          v15 = *(&v39 + 1);
          v14 = v39;
          v10 = *(&v40 + 1);
          v16 = v40;
          v21 = v42;
          swift_bridgeObjectRetain_n();

          v23 = 0x1000000000000000;
          v17 = v16;
          v18 = v10;
        }

        else
        {
          LOBYTE(v32[0]) = 1;
          sub_1D7777198();
          sub_1D78B6614();
          v31 = *(&v39 + 1);
          v14 = v39;
          v10 = *(&v40 + 1);
          v30 = v40;
          v28 = *(&v41 + 1);
          if (*(v42 + 16))
          {
            v21 = *(v42 + 32);
            v29 = *(v42 + 40);
          }

          else
          {
            v21 = 0;
            v29 = 0;
          }

          v27 = *(v11 + 8);
          swift_bridgeObjectRetain_n();
          v24 = v31;

          v25 = v9;
          v15 = v24;
          v27(v25, v6);

          v23 = 0;
          v16 = v30;
          v17 = v30;
          v18 = v10;
          v13 = a2;
          v19 = v29;
        }

        goto LABEL_27;
      }

      if (v45 != 2)
      {
        LOBYTE(v32[0]) = 3;
        sub_1D777709C();
        v21 = v9;
        sub_1D78B6614();
        (*(v7 + 8))(v9, v6);
        v15 = *(&v39 + 1);
        v14 = v39;
        v10 = *(&v40 + 1);
        v16 = v40;
        v23 = 0x4000000000000000;
LABEL_23:
        v17 = v41;
        goto LABEL_27;
      }

      LOBYTE(v32[0]) = 2;
      sub_1D7777144();
      v21 = v9;
      sub_1D78B6614();
      v16 = v7 + 8;
      (*(v7 + 8))(v9, v6);
      v15 = *(&v39 + 1);
      v14 = v39;
      v23 = 0x2000000000000000;
    }

    else
    {
      v13 = a2;
      if (v45 <= 5u)
      {
        if (v45 == 4)
        {
          LOBYTE(v32[0]) = 4;
          sub_1D7777048();
          sub_1D78B6614();
          (*(v7 + 8))(v9, v6);
          v15 = *(&v39 + 1);
          v14 = v39;
          v10 = *(&v40 + 1);
          v16 = v40;
          v18 = *(&v41 + 1);
          v17 = v41;
          v23 = 0x5000000000000000;
          v21 = v42;
        }

        else
        {
          LOBYTE(v32[0]) = 5;
          sub_1D7776FF4();
          v21 = v9;
          sub_1D78B6614();
          (*(v7 + 8))(v9, v6);
          v15 = *(&v39 + 1);
          v14 = v39;
          v23 = 0x6000000000000000;
          v16 = v40;
        }

        goto LABEL_27;
      }

      if (v45 != 6)
      {
        if (v45 == 7)
        {
          v38 = 7;
          sub_1D77770F0();
          sub_1D78B6614();
          (*(v7 + 8))(v9, v6);
          v32[0] = v39;
          v32[1] = v40;
          v33 = v41;
          v34 = v42;
          v35 = v43;
          v15 = *(&v39 + 1);
          v14 = v39;
          v10 = *(&v40 + 1);
          v16 = v40;

          sub_1D7776700(v32);
          v17 = v33;
          v18 = *(&v33 + 1);
          v19 = *(&v34 + 1);
          v20 = *(&v35 + 1);
          v37 = v34;
          v36 = v35;
          v21 = v34;
          v22 = 0x3000000000000000;
          if (BYTE1(v35))
          {
            v22 = 0x3000000000000100;
          }

          v23 = v22 & 0xFFFFFFFFFFFFFFFELL | v35 & 1;
          goto LABEL_27;
        }

        LOBYTE(v32[0]) = 8;
        sub_1D7776F4C();
        v21 = v9;
        sub_1D78B6614();
        (*(v7 + 8))(v9, v6);
        v15 = *(&v39 + 1);
        v14 = v39;
        v16 = v40;
        v23 = 0x8000000000000000;
        v10 = *(&v40 + 1);
        goto LABEL_23;
      }

      LOBYTE(v32[0]) = 6;
      sub_1D7776FA0();
      v21 = v9;
      sub_1D78B6614();
      (*(v7 + 8))(v9, v6);
      v15 = *(&v39 + 1);
      v14 = v39;
      v10 = *(&v40 + 1);
      v16 = v40;
      v23 = 0x7000000000000000;
      v18 = *(&v41 + 1);
      v17 = v41;
    }

LABEL_27:
    *v13 = v14;
    v13[1] = v15;
    v13[2] = v16;
    v13[3] = v10;
    v13[4] = v17;
    v13[5] = v18;
    v13[6] = v21;
    v13[7] = v19;
    v13[8] = v23;
    v13[9] = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(v46);
}

unint64_t sub_1D7776EF8()
{
  result = qword_1EE08F188;
  if (!qword_1EE08F188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F188);
  }

  return result;
}

unint64_t sub_1D7776F4C()
{
  result = qword_1EC9C97E8;
  if (!qword_1EC9C97E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C97E8);
  }

  return result;
}

unint64_t sub_1D7776FA0()
{
  result = qword_1EC9C97F0;
  if (!qword_1EC9C97F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C97F0);
  }

  return result;
}

unint64_t sub_1D7776FF4()
{
  result = qword_1EC9C97F8;
  if (!qword_1EC9C97F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C97F8);
  }

  return result;
}

unint64_t sub_1D7777048()
{
  result = qword_1EE08F1B8;
  if (!qword_1EE08F1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F1B8);
  }

  return result;
}

unint64_t sub_1D777709C()
{
  result = qword_1EE08F1D8;
  if (!qword_1EE08F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F1D8);
  }

  return result;
}

unint64_t sub_1D77770F0()
{
  result = qword_1EC9C9800;
  if (!qword_1EC9C9800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9800);
  }

  return result;
}

unint64_t sub_1D7777144()
{
  result = qword_1EC9C9808;
  if (!qword_1EC9C9808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9808);
  }

  return result;
}

unint64_t sub_1D7777198()
{
  result = qword_1EE08F198;
  if (!qword_1EE08F198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F198);
  }

  return result;
}

uint64_t sub_1D7777228(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 64) >> 2) & 0xFFFFFF80 | (*(a1 + 64) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1D777727C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 80) = 1;
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
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      *(a1 + 72) = 0;
      return result;
    }

    *(a1 + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D777733C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7777384(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D77773D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7777418(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D7777490(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1D77774EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1D7777558(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D77775A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D77775FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7777644(uint64_t result, int a2, int a3)
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

uint64_t sub_1D77776A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D77776EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7777754(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1D77777E4(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D77778A8()
{
  result = qword_1EC9C9810;
  if (!qword_1EC9C9810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9810);
  }

  return result;
}

unint64_t sub_1D7777900()
{
  result = qword_1EC9C9818;
  if (!qword_1EC9C9818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9818);
  }

  return result;
}

unint64_t sub_1D7777958()
{
  result = qword_1EE08F1F8;
  if (!qword_1EE08F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F1F8);
  }

  return result;
}

unint64_t sub_1D77779B0()
{
  result = qword_1EE08F200;
  if (!qword_1EE08F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F200);
  }

  return result;
}

uint64_t sub_1D7777A04()
{
  v0 = sub_1D78B6594();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D7777A50()
{
  result = qword_1EE08F190;
  if (!qword_1EE08F190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F190);
  }

  return result;
}

unint64_t sub_1D7777AA4()
{
  result = qword_1EC9C9828;
  if (!qword_1EC9C9828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9828);
  }

  return result;
}

unint64_t sub_1D7777AF8()
{
  result = qword_1EC9C9838;
  if (!qword_1EC9C9838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9838);
  }

  return result;
}

unint64_t sub_1D7777B4C()
{
  result = qword_1EC9C9848;
  if (!qword_1EC9C9848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9848);
  }

  return result;
}

unint64_t sub_1D7777BA0()
{
  result = qword_1EE08F1D0;
  if (!qword_1EE08F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F1D0);
  }

  return result;
}

unint64_t sub_1D7777BF4()
{
  result = qword_1EE08F1F0;
  if (!qword_1EE08F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F1F0);
  }

  return result;
}

unint64_t sub_1D7777C48()
{
  result = qword_1EC9C9868;
  if (!qword_1EC9C9868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9868);
  }

  return result;
}

unint64_t sub_1D7777C9C()
{
  result = qword_1EC9C9878;
  if (!qword_1EC9C9878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9878);
  }

  return result;
}

unint64_t sub_1D7777CF0()
{
  result = qword_1EE08F1B0;
  if (!qword_1EE08F1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F1B0);
  }

  return result;
}

void sub_1D7777D44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7777D98()
{
  v0 = sub_1D78B6594();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D7777DE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49656C6369747261 && a2 == 0xE900000000000044;
  if (v4 || (sub_1D78B6724() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D78CEC60 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D78CEC80 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D78CECA0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D78B6724();

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

uint64_t sub_1D7777F5C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a2;
  sub_1D7779BF4(0, &qword_1EE08E520, sub_1D7777CF0, &type metadata for PurchaseTraits.ArticleAssociatedValues.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7777CF0();
  sub_1D78B6874();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v32 = 0;
  v10 = v5;
  v11 = sub_1D78B65E4();
  v13 = v12;
  v31 = 1;
  v14 = sub_1D78B65A4();
  v26 = v15;
  v24 = v14;
  v30 = 2;
  v23 = sub_1D78B65A4();
  v25 = v16;
  sub_1D7777D44(0, &qword_1EE090010, MEMORY[0x1E69E62F8]);
  v29 = 3;
  sub_1D775DC34(&qword_1EE08E5D0);
  sub_1D78B6614();
  (*(v9 + 8))(v8, v10);
  v17 = v28;
  v18 = v25;

  v19 = v26;

  __swift_destroy_boxed_opaque_existential_1(a1);

  v21 = v27;
  *v27 = v11;
  v21[1] = v13;
  v22 = v23;
  v21[2] = v24;
  v21[3] = v19;
  v21[4] = v22;
  v21[5] = v18;
  v21[6] = v17;
  return result;
}

uint64_t sub_1D77782E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C7A7A7570 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D78B6724() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7954656C7A7A7570 && a2 == 0xEC00000044496570 || (sub_1D78B6724() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xED00006C6576654CLL || (sub_1D78B6724() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79616C507473616CLL && a2 == 0xEE00657461446465 || (sub_1D78B6724() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xED00006574614464 || (sub_1D78B6724() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646961507369 && a2 == 0xE600000000000000 || (sub_1D78B6724() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C75636966666964 && a2 == 0xEA00000000007974)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D78B6724();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D777854C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v61 = a2;
  sub_1D7779BF4(0, &qword_1EC9C98A8, sub_1D7777C48, &type metadata for PurchaseTraits.PuzzleAssociatedValues.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7777C48();
  sub_1D78B6874();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  LOBYTE(v43[0]) = 0;
  v10 = v5;
  v11 = sub_1D78B65E4();
  v13 = v12;
  v37 = v11;
  LOBYTE(v43[0]) = 1;
  v14 = sub_1D78B65E4();
  *(&v36 + 1) = v15;
  *&v36 = v14;
  LOBYTE(v43[0]) = 2;
  v16 = a1;
  v17 = sub_1D78B6624();
  LOBYTE(v43[0]) = 3;
  v35 = sub_1D78B65D4();
  v60 = v18 & 1;
  LOBYTE(v43[0]) = 4;
  v34 = sub_1D78B65D4();
  v58 = v19 & 1;
  LOBYTE(v43[0]) = 5;
  v33 = sub_1D78B65F4();
  v55 = 6;
  v20 = sub_1D78B6604();
  v21 = v33 & 1;
  v22 = *(v9 + 8);
  v32 = v20;
  v22(v8, v10);
  *&v38 = v37;
  *(&v38 + 1) = v13;
  v39 = v36;
  LODWORD(v40) = v17;
  v23 = v35;
  *(&v40 + 1) = v35;
  v33 = v60;
  LOBYTE(v41) = v60;
  *(&v41 + 1) = *v59;
  DWORD1(v41) = *&v59[3];
  v24 = v34;
  *(&v41 + 1) = v34;
  v25 = v58;
  LOBYTE(v42) = v58;
  BYTE1(v42) = v21;
  *(&v42 + 2) = v56;
  WORD3(v42) = v57;
  v26 = v32;
  *(&v42 + 1) = v32;
  sub_1D7779BBC(&v38, v43);
  __swift_destroy_boxed_opaque_existential_1(v16);
  v43[0] = v37;
  v43[1] = v13;
  v44 = v36;
  v45 = v17;
  v46 = v23;
  v47 = v33;
  *v48 = *v59;
  *&v48[3] = *&v59[3];
  v49 = v24;
  v50 = v25;
  v51 = v21;
  v52 = v56;
  v53 = v57;
  v54 = v26;
  result = sub_1D7776700(v43);
  v28 = v41;
  v29 = v61;
  v61[2] = v40;
  v29[3] = v28;
  v29[4] = v42;
  v30 = v39;
  *v29 = v38;
  v29[1] = v30;
  return result;
}

uint64_t sub_1D7778A08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570795464656566 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D78B6724() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444964656566 && a2 == 0xE600000000000000 || (sub_1D78B6724() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496E6F6974636573 && a2 == 0xE900000000000044)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D78B6724();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D7778B24@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  sub_1D7779BF4(0, &qword_1EE08E530, sub_1D7777BF4, &type metadata for PurchaseTraits.FeedAssociatedValues.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7777BF4();
  sub_1D78B6874();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v22;
  v25 = 0;
  v11 = sub_1D78B6604();
  v24 = 1;
  v12 = sub_1D78B65A4();
  v14 = v13;
  v21 = v12;
  v23 = 2;
  v15 = sub_1D78B65A4();
  v16 = v8;
  v18 = v17;
  (*(v9 + 8))(v16, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v20 = v21;
  *v10 = v11;
  v10[1] = v20;
  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v18;
  return result;
}

uint64_t sub_1D7778D90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636F4C70756F7267 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_1D78B6724() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70795470756F7267 && a2 == 0xE900000000000065 || (sub_1D78B6724() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x444970756F7267 && a2 == 0xE700000000000000 || (sub_1D78B6724() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F4370756F7267 && a2 == 0xEA0000000000746ELL || (sub_1D78B6724() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736F5070756F7267 && a2 == 0xED00006E6F697469)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D78B6724();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D7778F60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a2;
  sub_1D7779BF4(0, &qword_1EE08E528, sub_1D7777BA0, &type metadata for PurchaseTraits.GroupAssociatedValues.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7777BA0();
  sub_1D78B6874();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v28;
  v33 = 0;
  v11 = v5;
  v12 = sub_1D78B65E4();
  v14 = v13;
  v15 = v12;
  v32 = 1;
  v26 = sub_1D78B6604();
  v31 = 2;
  v16 = sub_1D78B65E4();
  v27 = v17;
  v25 = v16;
  v30 = 3;
  v24 = sub_1D78B6604();
  v29 = 4;
  v18 = sub_1D78B6604();
  (*(v9 + 8))(v8, v11);

  v19 = v27;

  __swift_destroy_boxed_opaque_existential_1(a1);

  *v10 = v15;
  v10[1] = v14;
  v21 = v25;
  v10[2] = v26;
  v10[3] = v21;
  v22 = v24;
  v10[4] = v19;
  v10[5] = v22;
  v10[6] = v18;
  return result;
}

uint64_t sub_1D777927C(void *a1)
{
  sub_1D7779BF4(0, &qword_1EC9C98A0, sub_1D7777B4C, &type metadata for PurchaseTraits.AdAssociatedValues.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7777B4C();
  sub_1D78B6874();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_1D78B65E4();
    v11 = 1;
    sub_1D78B65F4();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_1D7779488(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E676961706D6163 && a2 == 0xEA00000000004449;
  if (v3 || (sub_1D78B6724() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEC00000065707954 || (sub_1D78B6724() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6576697461657263 && a2 == 0xEA00000000004449)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D78B6724();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D77795AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  sub_1D7779BF4(0, &qword_1EC9C9898, sub_1D7777AF8, &type metadata for PurchaseTraits.ReferralAssociatedValues.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7777AF8();
  sub_1D78B6874();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v24;
  v27 = 0;
  v11 = sub_1D78B65E4();
  v13 = v12;
  v23 = v11;
  v26 = 1;
  v21 = sub_1D78B65A4();
  v22 = v14;
  v25 = 2;
  v15 = sub_1D78B65A4();
  v16 = v8;
  v18 = v17;
  (*(v9 + 8))(v16, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v10 = v23;
  v10[1] = v13;
  v20 = v22;
  v10[2] = v21;
  v10[3] = v20;
  v10[4] = v15;
  v10[5] = v18;
  return result;
}

uint64_t sub_1D7779830(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449657069636572 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D78B6724() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646961507369 && a2 == 0xE600000000000000 || (sub_1D78B6724() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D69546C61746F74 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D78B6724();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D777994C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_1D7779BF4(0, &qword_1EC9C9890, sub_1D7777AA4, &type metadata for PurchaseTraits.RecipeAssociatedValues.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7777AA4();
  sub_1D78B6874();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v21;
  v25 = 0;
  v11 = sub_1D78B65E4();
  v13 = v12;
  v14 = v11;
  v24 = 1;
  v22 = sub_1D78B65F4();
  v23 = 2;
  v15 = sub_1D78B65E4();
  v16 = v8;
  v18 = v17;
  (*(v9 + 8))(v16, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v10 = v14;
  *(v10 + 8) = v13;
  *(v10 + 16) = v22 & 1;
  *(v10 + 24) = v15;
  *(v10 + 32) = v18;
  return result;
}

void sub_1D7779BF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PurchaseTraits.ArticleAssociatedValues.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PurchaseTraits.ArticleAssociatedValues.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PurchaseTraits.PuzzleAssociatedValues.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PurchaseTraits.PuzzleAssociatedValues.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for PurchaseTraits.GroupAssociatedValues.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PurchaseTraits.AdAssociatedValues.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PurchaseTraits.AdAssociatedValues.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D777A150()
{
  result = qword_1EC9C98B8;
  if (!qword_1EC9C98B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C98B8);
  }

  return result;
}

unint64_t sub_1D777A1A8()
{
  result = qword_1EC9C98C0;
  if (!qword_1EC9C98C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C98C0);
  }

  return result;
}

unint64_t sub_1D777A200()
{
  result = qword_1EC9C98C8;
  if (!qword_1EC9C98C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C98C8);
  }

  return result;
}

unint64_t sub_1D777A258()
{
  result = qword_1EC9C98D0;
  if (!qword_1EC9C98D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C98D0);
  }

  return result;
}

unint64_t sub_1D777A2B0()
{
  result = qword_1EC9C98D8;
  if (!qword_1EC9C98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C98D8);
  }

  return result;
}

unint64_t sub_1D777A308()
{
  result = qword_1EC9C98E0;
  if (!qword_1EC9C98E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C98E0);
  }

  return result;
}

unint64_t sub_1D777A360()
{
  result = qword_1EC9C98E8;
  if (!qword_1EC9C98E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C98E8);
  }

  return result;
}

unint64_t sub_1D777A3B8()
{
  result = qword_1EC9C98F0;
  if (!qword_1EC9C98F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C98F0);
  }

  return result;
}

unint64_t sub_1D777A410()
{
  result = qword_1EE08F1A0;
  if (!qword_1EE08F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F1A0);
  }

  return result;
}

unint64_t sub_1D777A468()
{
  result = qword_1EE08F1A8;
  if (!qword_1EE08F1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F1A8);
  }

  return result;
}

unint64_t sub_1D777A4C0()
{
  result = qword_1EC9C98F8;
  if (!qword_1EC9C98F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C98F8);
  }

  return result;
}

unint64_t sub_1D777A518()
{
  result = qword_1EC9C9900;
  if (!qword_1EC9C9900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9900);
  }

  return result;
}

unint64_t sub_1D777A570()
{
  result = qword_1EC9C9908;
  if (!qword_1EC9C9908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9908);
  }

  return result;
}

unint64_t sub_1D777A5C8()
{
  result = qword_1EC9C9910;
  if (!qword_1EC9C9910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9910);
  }

  return result;
}

unint64_t sub_1D777A620()
{
  result = qword_1EE08F1E0;
  if (!qword_1EE08F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F1E0);
  }

  return result;
}

unint64_t sub_1D777A678()
{
  result = qword_1EE08F1E8;
  if (!qword_1EE08F1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F1E8);
  }

  return result;
}

unint64_t sub_1D777A6D0()
{
  result = qword_1EE08F1C0;
  if (!qword_1EE08F1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F1C0);
  }

  return result;
}

unint64_t sub_1D777A728()
{
  result = qword_1EE08F1C8;
  if (!qword_1EE08F1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F1C8);
  }

  return result;
}

unint64_t sub_1D777A780()
{
  result = qword_1EC9C9918;
  if (!qword_1EC9C9918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9918);
  }

  return result;
}

unint64_t sub_1D777A7D8()
{
  result = qword_1EC9C9920;
  if (!qword_1EC9C9920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9920);
  }

  return result;
}

unint64_t sub_1D777A830()
{
  result = qword_1EC9C9928;
  if (!qword_1EC9C9928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9928);
  }

  return result;
}

unint64_t sub_1D777A888()
{
  result = qword_1EC9C9930;
  if (!qword_1EC9C9930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9930);
  }

  return result;
}

unint64_t sub_1D777A8E0()
{
  result = qword_1EC9C9938;
  if (!qword_1EC9C9938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9938);
  }

  return result;
}

unint64_t sub_1D777A938()
{
  result = qword_1EC9C9940;
  if (!qword_1EC9C9940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9940);
  }

  return result;
}

char *Array<A>.purchaseIDs.getter(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_40:
    v3 = sub_1D78B6534();
    if (v3)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  v4 = 0;
  result = MEMORY[0x1E69E7CC0];
  do
  {
    v29 = result;
    for (i = v4; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA703700](i, a1);
      }

      else
      {
        if (i >= *(v2 + 16))
        {
          goto LABEL_39;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = v7;
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v9 = [v7 type];
      if (!v9)
      {
        goto LABEL_8;
      }

      v10 = v9;
      v11 = sub_1D78B5C74();
      v13 = v12;
      if (v11 == sub_1D78B5C74() && v13 == v14)
      {
        break;
      }

      v16 = sub_1D78B6724();

      if (v16)
      {
        goto LABEL_22;
      }

LABEL_7:

LABEL_8:
LABEL_9:
      if (v4 == v3)
      {
        return v29;
      }
    }

LABEL_22:
    v17 = [v8 buyParams];
    if (!v17)
    {
      goto LABEL_7;
    }

    v18 = v17;
    v19 = [v17 dictionary];
    if (!v19)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_29;
    }

    v20 = v19;
    v21 = sub_1D78B5BC4();

    sub_1D78B63F4();
    if (!*(v21 + 16) || (v22 = sub_1D777BD70(v30), (v23 & 1) == 0))
    {

      sub_1D777BDB4(v30);
      v31 = 0u;
      v32 = 0u;
LABEL_27:

LABEL_29:
      sub_1D7756B84(&v31);
      goto LABEL_9;
    }

    sub_1D777BE08(*(v21 + 56) + 32 * v22, &v31);

    sub_1D777BDB4(v30);

    if (!*(&v32 + 1))
    {
      goto LABEL_27;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_7;
    }

    v24 = v30[0];
    v25 = v30[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1D777AD14(0, *(v29 + 2) + 1, 1, v29);
    }

    v27 = *(v29 + 2);
    v26 = *(v29 + 3);
    if (v27 >= v26 >> 1)
    {
      v29 = sub_1D777AD14((v26 > 1), v27 + 1, 1, v29);
    }

    result = v29;
    *(v29 + 2) = v27 + 1;
    v28 = &v29[16 * v27];
    *(v28 + 4) = v24;
    *(v28 + 5) = v25;
  }

  while (v4 != v3);
  return result;
}

char *sub_1D777AD14(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D7756C08(0, &qword_1EE08FA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D777AEA0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D777C7C0(0, &unk_1EC9C9990, sub_1D777CABC, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D777CABC();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D777AFEC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D777C7C0(0, &qword_1EC9CAB60, sub_1D777C824, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1D777B114(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D7756C08(0, &qword_1EE08FA80, &type metadata for PaywallResourceByLocationConfig, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D777B238(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D777CA40();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[16 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 7);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D7756C08(0, &qword_1EE0910A8, &type metadata for PaywallResourceByLocationConfig, MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D777B378(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D777C7C0(0, &qword_1EC9C9958, sub_1D777C87C, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D777C9F0();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D777B4C4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D7756C08(0, &qword_1EC9C9980, &type metadata for SubscriptionOffer, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D777B5E8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D7756C08(0, &qword_1EE08FA70, &type metadata for Paywall.SoftPaywallModule, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1D777B750(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1D777C7C0(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1D777B944(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D7756C08(0, &qword_1EC9C9988, &type metadata for PurchaseTraits, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D777BA7C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D7756C08(0, &qword_1EE08E4D0, &type metadata for ArticlePurchaseOffer, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1D777BBB4(uint64_t a1, uint64_t a2)
{
  sub_1D78B6814();
  sub_1D78B5D14();
  v4 = sub_1D78B6844();

  return sub_1D777BF38(a1, a2, v4);
}

unint64_t sub_1D777BC2C(uint64_t a1)
{
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](a1);
  v2 = sub_1D78B6844();

  return sub_1D777BFF0(a1, v2);
}

unint64_t sub_1D777BC98(uint64_t a1)
{
  v2 = sub_1D78B6234();

  return sub_1D777C05C(a1, v2);
}

unint64_t sub_1D777BCDC(uint64_t a1)
{
  sub_1D78B5C74();
  sub_1D78B6814();
  sub_1D78B5D14();
  v2 = sub_1D78B6844();

  return sub_1D777C130(a1, v2);
}

unint64_t sub_1D777BD70(uint64_t a1)
{
  v2 = sub_1D78B63D4();

  return sub_1D777C234(a1, v2);
}

uint64_t sub_1D777BE08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1D777BE68(char a1, uint64_t a2, uint64_t a3)
{
  sub_1D78B6814();
  OfferPlacement.rawValue.getter();
  sub_1D78B5D14();

  sub_1D78B6834();
  if (a3)
  {
    sub_1D78B5D14();
  }

  v6 = sub_1D78B6844();

  return sub_1D777C2FC(a1, a2, a3, v6);
}

unint64_t sub_1D777BF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1D78B6724())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D777BFF0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D777C05C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1D773F004(0, &qword_1EE08FBD0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1D78B6244();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1D777C130(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1D78B5C74();
      v8 = v7;
      if (v6 == sub_1D78B5C74() && v8 == v9)
      {
        break;
      }

      v11 = sub_1D78B6724();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1D777C234(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D777CB20(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1DA703680](v9, a1);
      sub_1D777BDB4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1D777C2FC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v20 = ~v5;
    while (1)
    {
      v8 = *(v4 + 48) + 24 * v6;
      v10 = *(v8 + 8);
      v9 = *(v8 + 16);
      v11 = 0xEE00656C7A7A7550;
      v12 = 0x73756C507377656ELL;
      switch(*v8)
      {
        case 1:
          v12 = 0xD000000000000011;
          v11 = 0x80000001D78CE070;
          break;
        case 2:
          v12 = 0xD000000000000013;
          v11 = 0x80000001D78CE090;
          break;
        case 3:
          v12 = 0xD000000000000013;
          v11 = 0x80000001D78CE0B0;
          break;
        case 4:
          v12 = 0xD000000000000012;
          v11 = 0x80000001D78CE0D0;
          break;
        case 5:
          v12 = 0xD000000000000013;
          v11 = 0x80000001D78CE0F0;
          break;
        case 6:
          v12 = 0xD000000000000013;
          v11 = 0x80000001D78CE110;
          break;
        case 7:
          v12 = 0xD000000000000011;
          v11 = 0x80000001D78CE130;
          break;
        case 8:
          break;
        case 9:
          v12 = 0x73756C507377656ELL;
          v11 = 0xEC000000646F6F46;
          break;
        case 0xA:
          v12 = 0xD000000000000012;
          v11 = 0x80000001D78CE160;
          break;
        case 0xB:
          v12 = 0xD000000000000012;
          v11 = 0x80000001D78CE180;
          break;
        case 0xC:
          v12 = 0x6E69776F6C6C6F66;
          v11 = 0xE900000000000067;
          break;
        default:
          v12 = 0xD000000000000010;
          v11 = 0x80000001D78CE050;
          break;
      }

      v13 = 0x73756C507377656ELL;
      v14 = 0xEE00656C7A7A7550;
      switch(a1)
      {
        case 1:
          v14 = 0x80000001D78CE070;
          if (v12 == 0xD000000000000011)
          {
            goto LABEL_41;
          }

          goto LABEL_44;
        case 2:
          v14 = 0x80000001D78CE090;
          if (v12 != 0xD000000000000013)
          {
            goto LABEL_44;
          }

          goto LABEL_41;
        case 3:
          v14 = 0x80000001D78CE0B0;
          if (v12 != 0xD000000000000013)
          {
            goto LABEL_44;
          }

          goto LABEL_41;
        case 4:
          v14 = 0x80000001D78CE0D0;
          if (v12 != 0xD000000000000012)
          {
            goto LABEL_44;
          }

          goto LABEL_41;
        case 5:
          v14 = 0x80000001D78CE0F0;
          if (v12 != 0xD000000000000013)
          {
            goto LABEL_44;
          }

          goto LABEL_41;
        case 6:
          v14 = 0x80000001D78CE110;
          if (v12 != 0xD000000000000013)
          {
            goto LABEL_44;
          }

          goto LABEL_41;
        case 7:
          v14 = 0x80000001D78CE130;
          if (v12 != 0xD000000000000011)
          {
            goto LABEL_44;
          }

          goto LABEL_41;
        case 8:
          goto LABEL_40;
        case 9:
          v14 = 0xEC000000646F6F46;
          if (v12 != 0x73756C507377656ELL)
          {
            goto LABEL_44;
          }

          goto LABEL_41;
        case 10:
          v13 = 0xD000000000000012;
          v14 = 0x80000001D78CE160;
LABEL_40:
          if (v12 == v13)
          {
            goto LABEL_41;
          }

          goto LABEL_44;
        case 11:
          v14 = 0x80000001D78CE180;
          if (v12 != 0xD000000000000012)
          {
            goto LABEL_44;
          }

          goto LABEL_41;
        case 12:
          v14 = 0xE900000000000067;
          if (v12 != 0x6E69776F6C6C6F66)
          {
            goto LABEL_44;
          }

          goto LABEL_41;
        default:
          v14 = 0x80000001D78CE050;
          if (v12 != 0xD000000000000010)
          {
            goto LABEL_44;
          }

LABEL_41:
          if (v11 == v14)
          {
          }

          else
          {
LABEL_44:
            v15 = sub_1D78B6724();

            if ((v15 & 1) == 0)
            {
              goto LABEL_3;
            }
          }

          if (v9)
          {
            if (!a3)
            {
LABEL_3:

              goto LABEL_4;
            }

            if (v10 == a2 && v9 == a3)
            {

              return v6;
            }

            v17 = sub_1D78B6724();

            if (v17)
            {
              return v6;
            }
          }

          else
          {

            if (!a3)
            {
              return v6;
            }
          }

LABEL_4:
          v6 = (v6 + 1) & v20;
          if (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
          {
            return v6;
          }

          break;
      }
    }
  }

  return v6;
}

void sub_1D777C7C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D777C824()
{
  if (!qword_1EC9C9950)
  {
    v0 = sub_1D78B6004();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9C9950);
    }
  }
}

unint64_t sub_1D777C87C()
{
  result = qword_1EC9C9960;
  if (!qword_1EC9C9960)
  {
    sub_1D777C924();
    sub_1D777C7C0(255, &unk_1EE08F9E0, sub_1D777C98C, MEMORY[0x1E69E6720]);
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_1EC9C9960);
  }

  return result;
}

void sub_1D777C924()
{
  if (!qword_1EC9C9968)
  {
    sub_1D773F004(255, &qword_1EC9C9970);
    v0 = sub_1D78B62A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9C9968);
    }
  }
}

unint64_t sub_1D777C98C()
{
  result = qword_1EE08F9F0;
  if (!qword_1EE08F9F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE08F9F0);
  }

  return result;
}

unint64_t sub_1D777C9F0()
{
  result = qword_1EC9C9978;
  if (!qword_1EC9C9978)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EC9C9978);
  }

  return result;
}

void sub_1D777CA40()
{
  if (!qword_1EE08FA78)
  {
    sub_1D7756C08(255, &qword_1EE0910A8, &type metadata for PaywallResourceByLocationConfig, MEMORY[0x1E69E6720]);
    v0 = sub_1D78B66F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08FA78);
    }
  }
}

void sub_1D777CABC()
{
  if (!qword_1EE090190)
  {
    v0 = sub_1D78B5BF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE090190);
    }
  }
}

uint64_t sub_1D777CB7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1D77D9874(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1D78B6334();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v24 = *v10;
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_1D77D9874((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v24;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1D774F420(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1D774F420(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t PurchasePresenterType.presentPurchase(on:with:type:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  v8 = 0;
  v9 = v5;
  v10 = v6;
  return (*(a5 + 8))(a1, a2, 0, &v9, &v8, a4, a5);
}

uint64_t sub_1D777CDF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t PurchasePresenterType.presentPurchase(on:with:shouldCheckBestOffer:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6 = *a4;
  v7 = *(a4 + 8);
  v9 = 0;
  v10 = v6;
  v11 = v7;
  return (*(a6 + 8))(a1, a2, a3, &v10, &v9, a5);
}

unint64_t sub_1D777CED4()
{
  result = qword_1EC9C99A0;
  if (!qword_1EC9C99A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C99A0);
  }

  return result;
}

unint64_t sub_1D777CF2C()
{
  result = qword_1EC9C99A8;
  if (!qword_1EC9C99A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C99A8);
  }

  return result;
}

unint64_t sub_1D777CF84()
{
  result = qword_1EC9C99B0;
  if (!qword_1EC9C99B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C99B0);
  }

  return result;
}

unint64_t sub_1D777CFDC()
{
  result = qword_1EC9C99B8;
  if (!qword_1EC9C99B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C99B8);
  }

  return result;
}

BOOL sub_1D777D06C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1D777D09C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1D777D0C8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t getEnumTagSinglePayload for PurchasePresenterOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PurchasePresenterOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

id sub_1D777D210()
{
  v1 = OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter____lazy_storage___spinnerViewController;
  v2 = *(v0 + OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter____lazy_storage___spinnerViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter____lazy_storage___spinnerViewController);
  }

  else
  {
    swift_unknownObjectUnownedInit();
    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_1D774584C(Strong + OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_purchasingSpinnerViewControllerFactory, v13);

    v5 = v14;
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v12 = 0;
    v7 = v0;
    v8 = (*(v6 + 8))(&v12, v5, v6);
    swift_unknownObjectUnownedDestroy();
    __swift_destroy_boxed_opaque_existential_1(v13);
    v9 = *(v0 + v1);
    *(v7 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_1D777D484()
{
  swift_getObjectType();

  return sub_1D78B3574();
}

uint64_t sub_1D777D4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE454F0](a1, a2, a3, ObjectType, a7);
}

uint64_t sub_1D777D54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE454D8](a1, a2, a3, a4, ObjectType, a8);
}

uint64_t sub_1D777D5CC()
{
  swift_getObjectType();

  return sub_1D78B3724();
}

uint64_t sub_1D777D624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE45768](a1, ObjectType, a5);
}

uint64_t sub_1D777D674(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE45760](a1, ObjectType);
}

uint64_t sub_1D777D6C4(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v6 = v5;
  sub_1D77453D8(0, qword_1EE096030, type metadata accessor for PurchaseContext);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v45 - v13;
  if (*(v6 + OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_isPresenting))
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();
    sub_1D78B42C4();
    sub_1D7781E64(v47);
    sub_1D7781E98();
    swift_allocError();
    v16 = v47[1];
    v15 = v47[2];
    *v17 = v47[0];
    *(v17 + 16) = v16;
    *(v17 + 32) = v15;
    v18 = v47[6];
    v20 = v47[3];
    v19 = v47[4];
    *(v17 + 80) = v47[5];
    *(v17 + 96) = v18;
    *(v17 + 48) = v20;
    *(v17 + 64) = v19;
    v22 = v47[8];
    v21 = v47[9];
    v23 = v47[7];
    *(v17 + 160) = v48;
    *(v17 + 128) = v22;
    *(v17 + 144) = v21;
    *(v17 + 112) = v23;
    sub_1D7781DFC();
    swift_allocObject();
    return sub_1D78B40F4();
  }

  else
  {
    v25 = *a4;
    v26 = *(a4 + 8);
    v27 = *a5;
    *(v6 + OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_isPresenting) = 1;
    sub_1D7782680(a2, v14, type metadata accessor for PurchaseContext);
    v28 = type metadata accessor for PurchaseContext();
    (*(*(v28 - 8) + 56))(v14, 0, 1, v28);
    v29 = OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_purchaseContext;
    swift_beginAccess();
    sub_1D7781D38(v14, v6 + v29);
    swift_endAccess();
    v30 = *(v6 + OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_postPurchaseOnboardingManager + 24);
    v31 = *(v6 + OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_postPurchaseOnboardingManager + 32);
    __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_postPurchaseOnboardingManager), v30);
    v32 = (*(v31 + 32))(1, v30, v31);
    if (v33)
    {
      v34 = v32;
      v35 = v33;
      v46 = a2;
      v36 = a1;
      v37 = a3;
      v38 = v26;
      v39 = v25;
      v40 = v27;
      v41 = *(v6 + OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_onboardingPrewarmer + 24);
      v42 = *(v6 + OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_onboardingPrewarmer + 32);
      __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_onboardingPrewarmer), v41);
      v43 = *(v42 + 8);
      v44 = v42;
      v27 = v40;
      v25 = v39;
      v26 = v38;
      a3 = v37;
      a1 = v36;
      a2 = v46;
      v43(v34, v35, v41, v44);
    }

    MEMORY[0x1EEE9AC00](v32);
    *(&v45 - 8) = v6;
    *(&v45 - 7) = a1;
    *(&v45 - 6) = a2;
    *(&v45 - 40) = a3 & 1;
    *(&v45 - 4) = v25;
    *(&v45 - 24) = v26;
    *(&v45 - 2) = v27;
    sub_1D7781DFC();
    swift_allocObject();
    return sub_1D78B4174();
  }
}

uint64_t sub_1D777DA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int a8, void *a9, unsigned __int8 a10, void *a11)
{
  LODWORD(v60) = a8;
  v69 = a7;
  v59 = a6;
  v65 = a3;
  v66 = a4;
  v63 = a11;
  v62 = a10;
  v61 = a9;
  v16 = type metadata accessor for PurchaseContext();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = swift_allocObject();
  v64 = v19;
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v70 = a5;
  v71 = a6;

  sub_1D78B41F4();
  v67 = type metadata accessor for PurchaseContext;
  sub_1D7782680(a7, &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PurchaseContext);
  v20 = *(v17 + 80);
  v21 = v18;
  v58 = v18;
  v22 = swift_allocObject();
  *(v22 + 16) = a5;
  v68 = type metadata accessor for PurchaseContext;
  v23 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7782598(v23, v22 + ((v20 + 24) & ~v20), type metadata accessor for PurchaseContext);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1D7781F08;
  *(v24 + 24) = v22;
  v25 = a5;
  v26 = sub_1D78B4014();
  sub_1D78B4084();

  v27 = swift_allocObject();
  *(v27 + 16) = v60;
  *(v27 + 24) = v25;
  v28 = v25;
  v29 = sub_1D78B4014();
  sub_1D78B4084();

  v57 = v23;
  sub_1D7782680(v69, v23, type metadata accessor for PurchaseContext);
  v30 = (v20 + 48) & ~v20;
  v60 = v21 + 7;
  v31 = (v21 + 7 + v30) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = v61;
  *(v32 + 16) = v61;
  LOBYTE(v21) = v62;
  *(v32 + 24) = v62;
  v34 = v63;
  *(v32 + 32) = v28;
  *(v32 + 40) = v34;
  sub_1D7782598(v23, v32 + v30, v68);
  v35 = v59;
  *(v32 + v31) = v59;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_1D7781F84;
  *(v36 + 24) = v32;
  v37 = v28;
  sub_1D7782048(v33, v21);
  v63 = v35;
  v38 = sub_1D78B4014();
  sub_1D773F004(0, &qword_1EE08FC70);
  v59 = sub_1D78B4084();

  v56 = sub_1D773F004(0, &qword_1EE08FE10);
  v39 = sub_1D78B6104();
  v40 = v57;
  sub_1D7782680(v69, v57, v67);
  v41 = swift_allocObject();
  *(v41 + 16) = v37;
  *(v41 + 24) = sub_1D7752FB0;
  *(v41 + 32) = v64;
  *(v41 + 40) = v33;
  *(v41 + 48) = v21;
  v42 = v68;
  sub_1D7782598(v40, v41 + ((v20 + 49) & ~v20), v68);
  v43 = v37;
  sub_1D7782048(v33, v21);
  sub_1D78B4094();

  v44 = sub_1D78B6104();
  sub_1D7782680(v69, v40, v67);
  v45 = (v20 + 32) & ~v20;
  v46 = (v60 + v45) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  v48 = v63;
  *(v47 + 16) = v43;
  *(v47 + 24) = v48;
  sub_1D7782598(v40, v47 + v45, v42);
  v49 = (v47 + v46);
  v50 = v66;
  *v49 = v65;
  v49[1] = v50;
  v51 = v43;
  v52 = v48;

  sub_1D78B40D4();

  v53 = sub_1D78B6104();
  *(swift_allocObject() + 16) = v51;
  v54 = v51;
  sub_1D78B4114();
}

uint64_t sub_1D777E04C(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_networkReachability) isNetworkReachable];
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    sub_1D775DEAC(0, &qword_1EE0951C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B4174();
  }

  else
  {
    sub_1D7782B8C(v12);
    sub_1D7781E98();
    swift_allocError();
    v3 = v12[2];
    v4 = v12[1];
    *v5 = v12[0];
    *(v5 + 16) = v4;
    *(v5 + 32) = v3;
    v6 = v12[6];
    v7 = v12[4];
    v8 = v12[3];
    *(v5 + 80) = v12[5];
    *(v5 + 96) = v6;
    *(v5 + 48) = v8;
    *(v5 + 64) = v7;
    v9 = v12[9];
    v10 = v12[8];
    v11 = v12[7];
    *(v5 + 160) = v13;
    *(v5 + 128) = v10;
    *(v5 + 144) = v9;
    *(v5 + 112) = v11;
    return swift_willThrow();
  }
}

uint64_t sub_1D777E1B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D777D210();
  v4 = sub_1D777E1F8(v3, a2);

  return v4;
}

uint64_t sub_1D777E1F8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PurchaseContext();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = [objc_opt_self() sharedAccount];
  v9 = [v8 activeiTunesAccount];

  if (!v9)
  {
    goto LABEL_6;
  }

  v11 = v9;
  v12 = [v11 isAuthenticated];
  if (!v12)
  {

LABEL_6:
    MEMORY[0x1EEE9AC00](v10);
    *&v23[-16] = v2;
    *&v23[-8] = a1;
    sub_1D78B41F4();
    sub_1D7782680(a2, &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PurchaseContext);
    v17 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    sub_1D7782598(&v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v18 + v17, type metadata accessor for PurchaseContext);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1D77829C0;
    *(v19 + 24) = v18;
    v20 = v2;
    v21 = sub_1D78B4014();
    v16 = sub_1D78B4084();

    return v16;
  }

  v13 = *(a2 + 16);
  if ((v13 - 1) < 5)
  {

    v14 = [*&v2[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_bundleSubscriptionManager] cachedSubscription];
    v15 = [v14 isSubscribed];

    v23[7] = v15;
    sub_1D775DEAC(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v16 = sub_1D78B4104();

    return v16;
  }

  if (!v13)
  {
    MEMORY[0x1EEE9AC00](v12);
    *&v23[-16] = a2;
    *&v23[-8] = v2;
    sub_1D775DEAC(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v16 = sub_1D78B4174();

    return v16;
  }

  result = sub_1D78B6764();
  __break(1u);
  return result;
}

uint64_t sub_1D777E5AC(_BYTE *a1, char a2)
{
  if (*a1)
  {
    sub_1D7782764(v12);
    sub_1D7781E98();
    swift_allocError();
    v2 = v12[2];
    v3 = v12[1];
    *v4 = v12[0];
    *(v4 + 16) = v3;
    *(v4 + 32) = v2;
    v5 = v12[6];
    v6 = v12[4];
    v7 = v12[3];
    *(v4 + 80) = v12[5];
    *(v4 + 96) = v5;
    *(v4 + 48) = v7;
    *(v4 + 64) = v6;
    v8 = v12[9];
    v9 = v12[8];
    v10 = v12[7];
    *(v4 + 160) = v13;
    *(v4 + 128) = v9;
    *(v4 + 144) = v8;
    *(v4 + 112) = v10;
    return swift_willThrow();
  }

  else if (a2)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1D775DEAC(0, &qword_1EE0951C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B4174();
  }

  else
  {
    sub_1D775DEAC(0, &qword_1EE0951C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B4104();
  }
}

char *sub_1D777E73C(uint64_t a1, int a2, char *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v104 = a5;
  v9 = a2;
  v11 = a2;
  v12 = type metadata accessor for OfferAction();
  v68 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11 == 2)
  {
    goto LABEL_27;
  }

  LODWORD(v65) = v9;
  v66 = a6;
  v67 = a3;
  v15 = *&a3[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_offerManager];
  v16 = *&a3[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_offerManager + 8];
  ObjectType = swift_getObjectType();
  LOBYTE(v80) = 4;
  (*(v16 + 40))(v91, &v80, ObjectType, v16);
  v101 = v91[8];
  v102 = v91[9];
  v103 = v92;
  v97 = v91[4];
  v98 = v91[5];
  v99 = v91[6];
  v100 = v91[7];
  v93 = v91[0];
  v94 = v91[1];
  v95 = v91[2];
  v96 = v91[3];
  if (sub_1D775F3D0(&v93) != 1)
  {
    v64 = v15;
    v88 = v101;
    v89 = v102;
    v90 = v103;
    v84 = v97;
    v85 = v98;
    v86 = v99;
    v87 = v100;
    v80 = v93;
    v81 = v94;
    v82 = v95;
    v83 = v96;
    *&v69 = a4;
    if (sub_1D777EF40(&v80, &v69))
    {
      v18 = type metadata accessor for PurchaseContext();
      v19 = v66;
      if (*(v104 + *(v18 + 60)) == 1)
      {
        sub_1D774584C(&v67[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_purchaseStarter], &v80);
        v20 = *(&v81 + 1);
        v65 = v82;
        result = __swift_project_boxed_opaque_existential_1(&v80, *(&v81 + 1));
        v67 = result;
        v22 = v95;
        v23 = *(v95 + 16);
        if (v23)
        {
          v64 = v20;
          v24 = 0;
          v25 = v68;
          v26 = v95 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
          while (v24 < *(v22 + 16))
          {
            sub_1D7782680(v26 + *(v25 + 72) * v24, v14, type metadata accessor for OfferAction);
            result = swift_getEnumCaseMultiPayload();
            if (result == 1)
            {
              sub_1D77826E8();

              v25 = v68;

              v27 = sub_1D78B3294();
              result = (*(*(v27 - 8) + 8))(v14, v27);
            }

            else if (result != 2)
            {
              v28 = *(v14 + 2);

LABEL_39:
              v19 = v66;
              v20 = v64;
              goto LABEL_41;
            }

            if (v23 == ++v24)
            {
              v28 = 0;
              goto LABEL_39;
            }
          }

          __break(1u);
          goto LABEL_49;
        }

        v28 = 0;
LABEL_41:
        *&v69 = v28;
        BYTE8(v69) = 1;
        result = [v19 view];
        if (!result)
        {
          goto LABEL_50;
        }

        v59 = result;
        v60 = [result window];

        if (v60)
        {
          v61 = [v60 windowScene];

          if (v61)
          {
            v62 = [v61 _sceneIdentifier];

            v60 = sub_1D78B5C74();
            v61 = v63;
          }

          else
          {
            v60 = 0;
          }
        }

        else
        {
          v61 = 0;
        }

        v36 = (*(v65 + 8))(&v69, v104, v60, v61, v20);

        sub_1D7782600(v91);
        sub_1D7781F70(v69, BYTE8(v69));
        v58 = &v80;
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (*(&v98 + 1))
    {
      if (__PAIR128__(0x80000001D78CF0C0, 0xD000000000000019) != v101 && (sub_1D78B6724() & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if (!AMSMarketingItem.isCIPOffer()())
    {
      goto LABEL_24;
    }

    v29 = [objc_opt_self() mainBundle];
    v30 = [v29 bundleIdentifier];

    if (v30)
    {
      v31 = sub_1D78B5C74();
      v33 = v32;

      if (v31 == 0xD000000000000010 && 0x80000001D78CF0A0 == v33)
      {

LABEL_23:
        v88 = v101;
        v89 = v102;
        v90 = v103;
        v84 = v97;
        v85 = v98;
        v86 = v99;
        v87 = v100;
        v80 = v93;
        v81 = v94;
        v82 = v95;
        v83 = v96;
        nullsub_1(&v80);
        sub_1D7781E98();
        v36 = swift_allocError();
        v38 = v81;
        v37 = v82;
        *v35 = v80;
        *(v35 + 16) = v38;
        *(v35 + 32) = v37;
        v39 = v86;
        v41 = v83;
        v40 = v84;
        *(v35 + 80) = v85;
        *(v35 + 96) = v39;
        *(v35 + 48) = v41;
        *(v35 + 64) = v40;
        v43 = v88;
        v42 = v89;
        v44 = v90;
        v45 = v87;
LABEL_33:
        *(v35 + 160) = v44;
        *(v35 + 128) = v43;
        *(v35 + 144) = v42;
        *(v35 + 112) = v45;
        swift_willThrow();
        return v36;
      }

      v34 = sub_1D78B6724();

      if (v34)
      {
        goto LABEL_23;
      }
    }

LABEL_24:
    sub_1D7782600(v91);
  }

  LOBYTE(v69) = 6;
  (*(v16 + 32))(&v80, &v69, ObjectType, v16);
  if (sub_1D775F3D0(&v80) != 1)
  {
    v77 = v88;
    v78 = v89;
    v79 = v90;
    v73 = v84;
    v74 = v85;
    v75 = v86;
    v76 = v87;
    v69 = v80;
    v70 = v81;
    v71 = v82;
    v72 = v83;
    nullsub_1(&v69);
    sub_1D7781E98();
    v36 = swift_allocError();
    v54 = v70;
    v53 = v71;
    *v35 = v69;
    *(v35 + 16) = v54;
    *(v35 + 32) = v53;
    v55 = v75;
    v57 = v72;
    v56 = v73;
    *(v35 + 80) = v74;
    *(v35 + 96) = v55;
    *(v35 + 48) = v57;
    *(v35 + 64) = v56;
    v43 = v77;
    v42 = v78;
    v44 = v79;
    v45 = v76;
    goto LABEL_33;
  }

  a6 = v66;
  a3 = v67;
  LOBYTE(v9) = v65;
LABEL_27:
  sub_1D774584C(&a3[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_purchaseStarter], &v93);
  v46 = *(&v94 + 1);
  v47 = v95;
  __swift_project_boxed_opaque_existential_1(&v93, *(&v94 + 1));
  *&v91[0] = a1;
  BYTE8(v91[0]) = v9;
  result = [a6 view];
  if (result)
  {
    v48 = result;
    v49 = [result window];

    if (v49)
    {
      v50 = [v49 windowScene];

      if (v50)
      {
        v51 = [v50 _sceneIdentifier];

        v49 = sub_1D78B5C74();
        v50 = v52;
      }

      else
      {
        v49 = 0;
      }
    }

    else
    {
      v50 = 0;
    }

    v36 = (*(v47 + 8))(v91, v104, v49, v50, v46, v47);

    v58 = &v93;
LABEL_36:
    __swift_destroy_boxed_opaque_existential_1(v58);
    return v36;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1D777EF40(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 88);
  v5 = *(a1 + 128);
  v6 = *(a1 + 136);
  v7 = *a2;
  v8 = *(v2 + OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_featureAvailability + 24);
  v9 = *(v2 + OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_featureAvailability + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_featureAvailability), v8);
  if (((*(v9 + 40))(v8, v9) & 1) == 0)
  {
    if (qword_1EE08E648 != -1)
    {
      swift_once();
    }

    v19 = sub_1D78B4304();
    __swift_project_value_buffer(v19, qword_1EE09C1F0);
    v20 = sub_1D78B42E4();
    v21 = sub_1D78B60A4();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_25;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "PurchasePresenter: PaidBundleViaOffer feature is disabled. Will not override paywall type.";
    goto LABEL_24;
  }

  if (v7)
  {
    if (qword_1EE08E648 != -1)
    {
      swift_once();
    }

    v24 = sub_1D78B4304();
    __swift_project_value_buffer(v24, qword_1EE09C1F0);
    v20 = sub_1D78B42E4();
    v21 = sub_1D78B60A4();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_25;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "PurchasePresenter: Received skipPaidBundleViaOffer option. Will not override paywall type.";
LABEL_24:
    _os_log_impl(&dword_1D7739000, v20, v21, v23, v22, 2u);
    MEMORY[0x1DA7043F0](v22, -1, -1);
LABEL_25:

    return 0;
  }

  v10 = [objc_opt_self() mainBundle];
  v11 = [v10 bundleIdentifier];

  if (!v11)
  {
    return 0;
  }

  v12 = sub_1D78B5C74();
  v14 = v13;

  v15 = v12 == 0x6C7070612E6D6F63 && v14 == 0xEE007377656E2E65;
  if (!v15 && (sub_1D78B6724() & 1) == 0 && (v12 != 0xD000000000000010 || 0x80000001D78CF0A0 != v14))
  {
    v17 = sub_1D78B6724();

    result = 0;
    if ((v17 & 1) == 0 || v3)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v3)
  {
    return 0;
  }

LABEL_29:
  if (!v4)
  {
    return AMSMarketingItem.isBundleHardwareOffer()();
  }

  if (v5 == 0xD000000000000025 && 0x80000001D78CF100 == v6)
  {
    return 1;
  }

  return sub_1D78B6724();
}

void sub_1D777F29C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7)
{
  v26 = a6;
  v24 = a3;
  v25 = a5;
  v10 = type metadata accessor for PurchaseContext();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  v15 = sub_1D777D210();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D7782680(a7, &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PurchaseContext);
  v17 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v18 = swift_allocObject();
  v19 = v25;
  *(v18 + 16) = v24;
  *(v18 + 24) = a4;
  *(v18 + 32) = v14;
  *(v18 + 40) = v19;
  v20 = v26;
  *(v18 + 48) = v26;
  *(v18 + 56) = v16;
  sub_1D7782598(v13, v18 + v17, type metadata accessor for PurchaseContext);
  aBlock[4] = sub_1D7782528;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_46;
  v21 = _Block_copy(aBlock);

  v22 = v14;
  sub_1D7782048(v19, v20);

  [v15 dismissViewControllerAnimated:1 completion:v21];
  _Block_release(v21);
}

void sub_1D777F530(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v44 = a7;
  v10 = sub_1D78B3294();
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77453D8(0, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v38 - v13;
  v15 = type metadata accessor for PostPurchaseDestination();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v42 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v43 = &v38 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v38 - v21;
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  a1(a3);
  if (((1 << a5) & 0x1A) != 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v24 = Strong;
      v25 = type metadata accessor for PurchaseContext();
      sub_1D7782E18(v44 + *(v25 + 52), v14, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
      if ((*(v16 + 48))(v14, 1, v15) == 1)
      {
        sub_1D7782E84(v14, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
        v26 = *&v24[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_familySharingLandingPageLauncher + 24];
        v27 = *&v24[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_familySharingLandingPageLauncher + 32];
        __swift_project_boxed_opaque_existential_1(&v24[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_familySharingLandingPageLauncher], v26);
        (*(v27 + 8))(v26, v27);
LABEL_15:

        return;
      }

      v28 = v22;
      sub_1D7782598(v14, v22, type metadata accessor for PostPurchaseDestination);
      if (!sub_1D777FB10(v24))
      {
        sub_1D7782EE0(v22, type metadata accessor for PostPurchaseDestination);
        goto LABEL_15;
      }

      if (qword_1EC9C8580 != -1)
      {
        swift_once();
      }

      type metadata accessor for PurchasePresenter();
      sub_1D7782390(&qword_1EC9C9AB0, type metadata accessor for PurchasePresenter);
      sub_1D78B3574();
      v29 = v45;
      v30 = v43;
      if (v45 < 0)
      {
        __break(1u);
      }

      else if (qword_1EC9C8670 == -1)
      {
LABEL_12:
        sub_1D78B3574();
        PostPurchaseDestination.overridenPostPurchaseDestination(with:postPurchaseUrl:)(v29, v45, v46, v30);

        v31 = v42;
        sub_1D7782680(v30, v42, type metadata accessor for PostPurchaseDestination);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v33 = v39;
          v32 = v40;
          v34 = v41;
          (*(v40 + 32))(v39, v31, v41);
          __swift_project_boxed_opaque_existential_1(&v24[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_urlHandler], *&v24[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_urlHandler + 24]);
          sub_1D78B4784();

          (*(v32 + 8))(v33, v34);
        }

        else
        {
          v35 = *v31;
          v36 = *&v24[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_postPurchaseOnboardingManager + 24];
          v37 = *&v24[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_postPurchaseOnboardingManager + 32];
          __swift_project_boxed_opaque_existential_1(&v24[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_postPurchaseOnboardingManager], v36);
          (*(v37 + 8))(v35 + 1, v36, v37);
        }

        sub_1D7782EE0(v30, type metadata accessor for PostPurchaseDestination);
        sub_1D7782EE0(v28, type metadata accessor for PostPurchaseDestination);
        return;
      }

      swift_once();
      goto LABEL_12;
    }
  }
}

BOOL sub_1D777FB10(uint64_t a1)
{
  swift_getObjectType();
  if (qword_1EC9C8678 != -1)
  {
    swift_once();
  }

  sub_1D7782390(&qword_1EC9C9AB0, type metadata accessor for PurchasePresenter);
  sub_1D78B3574();
  if (v16)
  {
    return 1;
  }

  else
  {
    v3 = *(a1 + OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_offerManager + 8);
    ObjectType = swift_getObjectType();
    LOBYTE(v12[0]) = 4;
    (*(v3 + 40))(v14, v12, ObjectType, v3);
    v24 = v14[8];
    v25 = v14[9];
    v26 = v15;
    v20 = v14[4];
    v21 = v14[5];
    v22 = v14[6];
    v23 = v14[7];
    v16 = v14[0];
    v17 = v14[1];
    v18 = v14[2];
    v19 = v14[3];
    if (sub_1D775F3D0(&v16) == 1)
    {
      return 0;
    }

    else
    {
      v12[8] = v24;
      v12[9] = v25;
      v13 = v26;
      v12[4] = v20;
      v12[5] = v21;
      v12[6] = v22;
      v12[7] = v23;
      v12[0] = v16;
      v12[1] = v17;
      v12[2] = v18;
      v12[3] = v19;
      v2 = Offer.trialEligible()();
      if (qword_1EE08FB98 != -1)
      {
        swift_once();
      }

      sub_1D774FE1C();
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1D78BCB50;
      v6 = sub_1D775ABD4();
      v7 = 0x6F6C6C6120746F6ELL;
      if (v2)
      {
        v7 = 0x6465776F6C6C61;
      }

      v8 = 0xEB00000000646577;
      if (v2)
      {
        v8 = 0xE700000000000000;
      }

      *(v5 + 56) = MEMORY[0x1E69E6158];
      *(v5 + 64) = v6;
      v9 = MEMORY[0x1E69E6370];
      *(v5 + 32) = v7;
      *(v5 + 40) = v8;
      v10 = MEMORY[0x1E69E63A8];
      *(v5 + 96) = v9;
      *(v5 + 104) = v10;
      *(v5 + 72) = v2;
      sub_1D78B60A4();
      sub_1D78B42C4();

      sub_1D7782600(v14);
    }
  }

  return v2;
}

void sub_1D777FDA8(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v27 = a4;
  v30 = a3;
  v8 = type metadata accessor for PurchaseContext();
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D774FE1C();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D78BCAB0;
  *&v37 = 0;
  *(&v37 + 1) = 0xE000000000000000;
  *&v35[0] = a1;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  sub_1D78B6504();
  v12 = v37;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1D775ABD4();
  *(v11 + 32) = v12;
  sub_1D78B60A4();
  sub_1D78B42C4();

  v48 = a1;
  v13 = a1;
  if (swift_dynamicCast())
  {
    v33[8] = v45;
    v33[9] = v46;
    v33[4] = v41;
    v33[5] = v42;
    v33[6] = v43;
    v33[7] = v44;
    v33[0] = v37;
    v33[1] = v38;
    v33[2] = v39;
    v33[3] = v40;
    v35[8] = v45;
    v35[9] = v46;
    v35[4] = v41;
    v35[5] = v42;
    v35[6] = v43;
    v35[7] = v44;
    v35[0] = v37;
    v35[1] = v38;
    v34 = v47;
    v36 = v47;
    v35[2] = v39;
    v35[3] = v40;
    if (sub_1D775F3D0(v35) == 11)
    {
      v31 = &type metadata for SubscriptionOfflineAlert;
      v32 = sub_1D7782288();
      sub_1D78B5054();
      swift_allocObject();
      sub_1D78B5004();
      *(swift_allocObject() + 16) = a2;
      v14 = a2;
      sub_1D78B5034();

      sub_1D78B5014();

      return;
    }

    sub_1D7782234(v33);
  }

  v15 = sub_1D777D210();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D7782680(v27, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PurchaseContext);
  v17 = (*(v26 + 80) + 40) & ~*(v26 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v30;
  v19[2] = a1;
  v19[3] = v20;
  v19[4] = v16;
  sub_1D7782598(v10, v19 + v17, type metadata accessor for PurchaseContext);
  v21 = (v19 + v18);
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  *&v39 = sub_1D778219C;
  *(&v39 + 1) = v19;
  *&v37 = MEMORY[0x1E69E9820];
  *(&v37 + 1) = 1107296256;
  *&v38 = sub_1D775FB6C;
  *(&v38 + 1) = &block_descriptor_0;
  v23 = _Block_copy(&v37);
  v24 = a1;
  v25 = v20;

  [v15 dismissViewControllerAnimated:1 completion:v23];
  _Block_release(v23);
}

uint64_t sub_1D7780228(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  v54 = a1;
  v8 = a1;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  if (!swift_dynamicCast())
  {
    goto LABEL_21;
  }

  v32[8] = v51;
  v32[9] = v52;
  v32[4] = v47;
  v32[5] = v48;
  v32[6] = v49;
  v32[7] = v50;
  v32[0] = v43;
  v32[1] = v44;
  v32[2] = v45;
  v32[3] = v46;
  v40 = v51;
  v41 = v52;
  v36 = v47;
  v37 = v48;
  v38 = v49;
  v39 = v50;
  v34[0] = v43;
  v34[1] = v44;
  v33 = v53;
  v42 = v53;
  v34[2] = v45;
  v35 = v46;
  v9 = sub_1D775F3D0(v34);
  if (v9 > 2)
  {
    if (v9 <= 5)
    {
      if (v9 == 3)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v24 = *(Strong + OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_bundleSubscriptionDetectionManager + 8);
          v25 = Strong;
          swift_unknownObjectRetain();

          ObjectType = swift_getObjectType();
          (*(v24 + 16))(ObjectType, v24);
          swift_unknownObjectRelease();
        }

        goto LABEL_35;
      }

      if (v9 == 4)
      {
        v30 = &type metadata for PurchaseDisabledAlert;
        v10 = sub_1D7782480();
LABEL_33:
        v31 = v10;
        goto LABEL_34;
      }

      goto LABEL_20;
    }

    if (v9 == 6)
    {
      v30 = &type metadata for MissingConfigurationAlert;
      v10 = sub_1D778242C();
      goto LABEL_33;
    }

    if (v9 != 13)
    {
      goto LABEL_20;
    }

    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (!v11)
    {
LABEL_35:

      return a5(a1);
    }

    v12 = v11;
    sub_1D774584C(v11 + OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_osloAbandonmentUpsellManager, v29);

    __swift_project_boxed_opaque_existential_1(v29, v30);
    sub_1D7836394(*(a4 + 16));
LABEL_19:
    __swift_destroy_boxed_opaque_existential_1(v29);
    goto LABEL_35;
  }

  switch(v9)
  {
    case 0:
      swift_beginAccess();
      v13 = swift_unknownObjectWeakLoadStrong();
      if (!v13)
      {
        sub_1D7782234(v32);
        goto LABEL_35;
      }

      v14 = v13;
      sub_1D774584C(v13 + OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_router, v29);

      v15 = v30;
      v16 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v28 = v35;
      (*(v16 + 120))(*(&v36 + 1), &v28, a4, 1, v15, v16);
      sub_1D7782234(v32);
      goto LABEL_19;
    case 1:
      v30 = &type metadata for PurchaseReceiptVerificationFailureAlert;
      v10 = sub_1D77823D8();
      goto LABEL_33;
    case 2:
      v30 = &type metadata for OngoingPurchaseTransactionAlert;
      v31 = sub_1D77824D4();
      v29[0] = 0;
LABEL_34:
      sub_1D78B5054();
      swift_allocObject();
      sub_1D78B5004();
      sub_1D78B5014();

      goto LABEL_35;
  }

LABEL_20:
  sub_1D7782234(v32);
LABEL_21:

  v17 = [objc_opt_self() sharedAccount];
  v18 = [v17 isSignedInStoreFrontSupported];

  if (v18)
  {
    *&v43 = a1;
    v19 = a1;
    type metadata accessor for AMSError(0);
    if (swift_dynamicCast())
    {
      v20 = *&v34[0];
      *&v43 = *&v34[0];
      sub_1D7782390(&qword_1EC9C9218, type metadata accessor for AMSError);
      sub_1D78B3184();
      if ((*&v34[0] == 508 || (*&v43 = v20, sub_1D78B3184(), *&v34[0] == 6)) && (swift_beginAccess(), (v21 = swift_unknownObjectWeakLoadStrong()) != 0))
      {
        v22 = v21;
        sub_1D774584C(v21 + OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_osloAbandonmentUpsellManager, &v43);

        __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
        sub_1D7836394(*(a4 + 16));

        __swift_destroy_boxed_opaque_existential_1(&v43);
      }

      else
      {
      }
    }
  }

  else
  {
    *(&v44 + 1) = &type metadata for SubscriptionNotSupportedInStorefrontAlert;
    *&v45 = sub_1D778233C();
    sub_1D78B5054();
    swift_allocObject();
    sub_1D78B5004();
    sub_1D78B5014();
  }

  return a5(a1);
}

void sub_1D77807D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = sub_1D777D210();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D7782FF4;
  *(v10 + 24) = v8;
  v12[4] = sub_1D7782BC8;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D775FB6C;
  v12[3] = &block_descriptor_101;
  v11 = _Block_copy(v12);

  [a5 presentViewController:v9 animated:1 completion:v11];
  _Block_release(v11);
}

uint64_t sub_1D77808FC()
{
  sub_1D775DEAC(0, &qword_1EE0951C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4174();
}

uint64_t sub_1D7780988()
{
  sub_1D775DEAC(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4174();
}

void sub_1D7780A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = objc_opt_self();

  v12 = [v11 sharedAccount];
  v13 = [v12 activeiTunesAccount];

  if (v13 && ([v13 ams_isLocalAccount] & 1) == 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E698C7B0]) init];
  [v15 setIgnoreAccountConversion_];
  v16 = sub_1D78B5C44();
  [v15 setDebugReason_];

  v17 = [objc_allocWithZone(MEMORY[0x1E698CC58]) initWithAccount:v14 presentingViewController:a5 options:v15];
  v18 = [v17 performAuthentication];
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = sub_1D7782FF4;
  v19[5] = v10;
  v21[4] = sub_1D7782B2C;
  v21[5] = v19;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_1D7780F60;
  v21[3] = &block_descriptor_91;
  v20 = _Block_copy(v21);

  [v18 addFinishBlock_];
  _Block_release(v20);
}

void sub_1D7780C64(uint64_t a1, id a2, void (*a3)(void), uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    v7 = a2;
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D774FE1C();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D78BCAB0;
    sub_1D773C9B8(0, &qword_1EE08F9F0);
    sub_1D78B6504();
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1D775ABD4();
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xE000000000000000;
    sub_1D78B60A4();
    sub_1D78B42C4();

    sub_1D7782B38();
    v9 = swift_allocError();
    *v10 = a2;
    v11 = a2;
    (a3)(v9);
  }

  else if (a1)
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B60A4();
    sub_1D78B42C4();
    v13 = [objc_opt_self() sharedAccount];
    [v13 reloadiTunesAccount];

    a5();
  }

  else
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B60A4();
    sub_1D78B42C4();
    sub_1D7782B38();
    v14 = swift_allocError();
    *v15 = 0;
    a3();
  }
}

void sub_1D7780F60(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1D7780FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v10 = type metadata accessor for PurchaseContext();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = *(a5 + 16);
  if ((v14 - 1) >= 5)
  {
    if (v14)
    {

      sub_1D78B6764();
      __break(1u);
    }

    else
    {
      v19 = *&a6[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_purchaseController];
      sub_1D773F004(0, &qword_1EE08FE10);

      v20 = sub_1D78B6104();
      sub_1D7782680(a5, &aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PurchaseContext);
      v21 = (*(v11 + 80) + 40) & ~*(v11 + 80);
      v22 = swift_allocObject();
      v22[2] = a6;
      v22[3] = sub_1D7782A58;
      v22[4] = v13;
      sub_1D7782598(&aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for PurchaseContext);
      v29 = sub_1D7782A90;
      v30 = v22;
      aBlock = MEMORY[0x1E69E9820];
      v26 = 1107296256;
      v27 = sub_1D77814F0;
      v28 = &block_descriptor_68;
      v23 = _Block_copy(&aBlock);
      v24 = a6;

      [v19 performEntitlementCheckWithIgnoreCache:0 callbackQueue:v20 completion:v23];
      _Block_release(v23);
    }
  }

  else
  {
    v15 = *&a6[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_bundleSubscriptionManager];
    v16 = swift_allocObject();
    v16[2] = a6;
    v16[3] = sub_1D7782A58;
    v16[4] = v13;
    v29 = sub_1D7782B18;
    v30 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_1D7781488;
    v28 = &block_descriptor_74;
    v17 = _Block_copy(&aBlock);

    v18 = a6;

    [v15 refreshBundleSubscriptionWithCachePolicy:2 hideBundleDetectionUI:1 completion:v17];
    _Block_release(v17);
  }
}

uint64_t sub_1D7781374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id))
{
  v6 = *(a3 + OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_bundleSubscriptionManager);
  v12[4] = nullsub_1;
  v12[5] = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D7781488;
  v12[3] = &block_descriptor_80;
  v7 = _Block_copy(v12);
  [v6 refreshBundleSubscriptionWithCachePolicy:2 completion:v7];
  _Block_release(v7);
  v8 = *(a3 + OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_purchaseController);
  v9 = sub_1D78B5C44();
  v10 = [v8 isTagIDPurchased_];

  return a4(v10);
}

void sub_1D7781488(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1D77814F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1D773F004(0, &qword_1EE08FCB0);
    v4 = sub_1D78B5EB4();
  }

  if (a3)
  {
    sub_1D773F004(0, &qword_1EE08FC58);
    a3 = sub_1D78B5EB4();
  }

  v5(v4, a3);
}

uint64_t sub_1D77815B4(void *a1, uint64_t a2, uint64_t (*a3)(id))
{
  v5 = *(a2 + OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_purchaseController);
  sub_1D773F004(0, &qword_1EE08FE10);
  v6 = sub_1D78B6104();
  v9[4] = nullsub_1;
  v9[5] = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D77814F0;
  v9[3] = &block_descriptor_77;
  v7 = _Block_copy(v9);
  [v5 performEntitlementCheckWithIgnoreCache:0 callbackQueue:v6 completion:v7];
  _Block_release(v7);

  return a3([a1 isSubscribed]);
}

void sub_1D77816CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_offerManager + 8);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 8);

  v11(ObjectType, v9);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1D7757008;
  *(v12 + 24) = v8;
  v13 = sub_1D78B4014();
  sub_1D78B4114();
}

uint64_t sub_1D77817F0()
{
  v1 = v0;
  sub_1D77453D8(0, qword_1EE096030, type metadata accessor for PurchaseContext);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18[-1] - v3;
  v5 = type metadata accessor for PurchaseContext();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D78B3014();
  if (result)
  {
    v10 = result;
    v11 = OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_purchaseContext;
    swift_beginAccess();
    sub_1D7782E18(v1 + v11, v4, qword_1EE096030, type metadata accessor for PurchaseContext);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {

      return sub_1D7782E84(v4, qword_1EE096030, type metadata accessor for PurchaseContext);
    }

    else
    {
      sub_1D7782598(v4, v8, type metadata accessor for PurchaseContext);
      v12 = sub_1D7781A88(v10);

      v14 = *(v8 + 6);
      v18[0] = *(v8 + 5);
      v18[1] = v14;
      MEMORY[0x1EEE9AC00](v13);
      *(&v17 - 2) = v18;
      v15 = sub_1D781DA18(sub_1D7782F40, (&v17 - 4), v12);

      if (v15)
      {
        v16 = sub_1D777D210();
        [v16 dismissViewControllerAnimated:1 completion:0];
      }

      return sub_1D7782EE0(v8, type metadata accessor for PurchaseContext);
    }
  }

  return result;
}

uint64_t sub_1D7781A88(uint64_t a1)
{
  sub_1D78B63F4();
  if (*(a1 + 16) && (v2 = sub_1D777BD70(v6), (v3 & 1) != 0))
  {
    sub_1D777BE08(*(a1 + 56) + 32 * v2, v7);
    sub_1D777BDB4(v6);
    sub_1D7782F60();
    if (swift_dynamicCast())
    {
      v4 = sub_1D777CB7C(0x6168436465646461);

      return v4;
    }
  }

  else
  {
    sub_1D777BDB4(v6);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D7781D38(uint64_t a1, uint64_t a2)
{
  sub_1D77453D8(0, qword_1EE096030, type metadata accessor for PurchaseContext);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D7781DFC()
{
  if (!qword_1EC9CA0F0)
  {
    sub_1D773F004(255, &qword_1EE08FC70);
    v0 = sub_1D78B4184();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CA0F0);
    }
  }
}

double sub_1D7781E64(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

unint64_t sub_1D7781E98()
{
  result = qword_1EC9C9E90;
  if (!qword_1EC9C9E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9E90);
  }

  return result;
}

void sub_1D7781F70(id a1, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
  }
}

char *sub_1D7781F84()
{
  v1 = *(type metadata accessor for PurchaseContext() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  return sub_1D777E73C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_1D7782048(id result, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
    return result;
  }

  return result;
}

void sub_1D77820E4(void *a1)
{
  v3 = *(type metadata accessor for PurchaseContext() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_1D777FDA8(a1, v5, v6, v1 + v4, v8, v9);
}

uint64_t sub_1D778219C()
{
  v1 = *(type metadata accessor for PurchaseContext() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D7780228(v3, v4, v5, v0 + v2, v6);
}

unint64_t sub_1D7782288()
{
  result = qword_1EC9C9AB8;
  if (!qword_1EC9C9AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9AB8);
  }

  return result;
}

uint64_t sub_1D77822DC()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_router);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 136))(v2, v3);
}

unint64_t sub_1D778233C()
{
  result = qword_1EC9C9AC0;
  if (!qword_1EC9C9AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9AC0);
  }

  return result;
}

uint64_t sub_1D7782390(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D77823D8()
{
  result = qword_1EC9C9AD0;
  if (!qword_1EC9C9AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9AD0);
  }

  return result;
}

unint64_t sub_1D778242C()
{
  result = qword_1EC9C9AD8;
  if (!qword_1EC9C9AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9AD8);
  }

  return result;
}

unint64_t sub_1D7782480()
{
  result = qword_1EC9C9AE0;
  if (!qword_1EC9C9AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9AE0);
  }

  return result;
}

unint64_t sub_1D77824D4()
{
  result = qword_1EC9C9AE8;
  if (!qword_1EC9C9AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9AE8);
  }

  return result;
}

void sub_1D7782528()
{
  v1 = *(type metadata accessor for PurchaseContext() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 56);
  v7 = *(v0 + 48);
  v8 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  sub_1D777F530(v2, v3, v4, v5, v7, v6, v8);
}

uint64_t sub_1D7782598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7782600(uint64_t a1)
{
  sub_1D775DEAC(0, &qword_1EE090600, &type metadata for Offer, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7782680(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D77826E8()
{
  if (!qword_1EE095690)
  {
    sub_1D78B3294();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE095690);
    }
  }
}

double sub_1D7782764(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

uint64_t objectdestroy_8Tm()
{
  v1 = type metadata accessor for PurchaseContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D77829D8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PurchaseContext() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_1D7782A58(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1D7782A90(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PurchaseContext();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);

  return sub_1D7781374(a1, a2, v5, v6);
}

unint64_t sub_1D7782B38()
{
  result = qword_1EE08ED78[0];
  if (!qword_1EE08ED78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE08ED78);
  }

  return result;
}

double sub_1D7782B8C(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 10;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

uint64_t sub_1D7782BF0()
{
  sub_1D77453D8(0, qword_1EE096030, type metadata accessor for PurchaseContext);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for PurchaseContext();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_purchaseContext;
  swift_beginAccess();
  sub_1D7782E18(v0 + v8, v3, qword_1EE096030, type metadata accessor for PurchaseContext);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1D7782E84(v3, qword_1EE096030, type metadata accessor for PurchaseContext);
  }

  sub_1D7782598(v3, v7, type metadata accessor for PurchaseContext);
  v10 = *(v7 + 2);
  if ((v10 - 1) >= 5)
  {
    if (v10)
    {
      v12 = *(v7 + 2);
      result = sub_1D78B6764();
      __break(1u);
      return result;
    }
  }

  else
  {
    v11 = sub_1D777D210();
    [v11 dismissViewControllerAnimated:1 completion:0];
  }

  return sub_1D7782EE0(v7, type metadata accessor for PurchaseContext);
}

uint64_t sub_1D7782E18(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D77453D8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7782E84(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D77453D8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7782EE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7782F60()
{
  if (!qword_1EC9C9AF0)
  {
    v0 = sub_1D78B5FA4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9C9AF0);
    }
  }
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1D778304C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 136))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D778306C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = (a2 - 1);
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

  *(result + 136) = v3;
  return result;
}

void sub_1D77830C8()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0901960784 alpha:1.0];
  v16 = [v0 ts:v1 dynamicColor:v2 withDarkStyleVariant:?];

  v3 = [v0 blackColor];
  v4 = [v0 whiteColor];
  v5 = [v0 ts:v3 dynamicColor:v4 withDarkStyleVariant:?];

  v6 = [v0 whiteColor];
  v7 = [v0 whiteColor];
  v8 = [v0 ts:v6 dynamicColor:v7 withDarkStyleVariant:?];

  v9 = [v0 blackColor];
  v10 = [v0 grayColor];
  v11 = [v0 ts:v9 dynamicColor:v10 withDarkStyleVariant:?];

  v12 = [v0 grayColor];
  v13 = [v0 blackColor];
  v14 = [v0 whiteColor];
  v15 = [v0 ts:v13 dynamicColor:v14 withDarkStyleVariant:?];

  qword_1EC9D9DC0 = v16;
  *algn_1EC9D9DC8 = v5;
  qword_1EC9D9DD0 = v8;
  unk_1EC9D9DD8 = v11;
  qword_1EC9D9DE0 = v12;
  unk_1EC9D9DE8 = v15;
}

uint64_t sub_1D778334C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7783394(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1D77833F0(uint64_t *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = [Strong traitCollection];
  swift_unknownObjectRelease();
  v5 = [v4 userInterfaceStyle];

  v6 = *a1;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (*(v7 + 16) && (v8 = sub_1D777BC2C(v5), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    v11 = v10;
  }

  else
  {
    v10 = 0;
  }

  swift_endAccess();
  return v10;
}

uint64_t sub_1D77834C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_bundleHardPaywallView);
  [*(v1 + OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_descriptionTextView) setDelegate_];
  [*(v1 + OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_scrollView) setDelegate_];
  v2 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_subscribeButton);
  v3 = sub_1D78B4844();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_offersButton);
  v5 = sub_1D78B4514();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  v6 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_webAuthButton);
  v7 = sub_1D78B4514();

  swift_allocObject();
  swift_unknownObjectWeakInit();
}

void sub_1D77836B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = &v1[OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_viewModel];
      v5 = *(type metadata accessor for BundlePaywallViewModel(0) + 44);
      v6 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
      ObjectType = swift_getObjectType();
      v8 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v10 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v9 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v45[2] = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v45[3] = v8;
      v45[0] = v10;
      v45[1] = v9;
      v11 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v13 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v12 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v45[6] = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v45[7] = v11;
      v45[4] = v13;
      v45[5] = v12;
      v14 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v16 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v15 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v45[10] = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v45[11] = v14;
      v45[8] = v16;
      v45[9] = v15;
      v17 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v19 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v18 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v45[14] = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v45[15] = v17;
      v45[12] = v19;
      v45[13] = v18;
      v20 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v41 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v42 = v20;
      v21 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v43 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v44 = v21;
      v22 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v37 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v38 = v22;
      v23 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v39 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v40 = v23;
      v24 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v33 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v34 = v24;
      v25 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v35 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v36 = v25;
      v26 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v29 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v30 = v26;
      v27 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v31 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v32 = v27;
      v28 = *(v6 + 72);
      sub_1D7772AE8(v45, v46);
      v28(&v4[v5], &v29, ObjectType, v6);

      v46[12] = v41;
      v46[13] = v42;
      v46[14] = v43;
      v46[15] = v44;
      v46[8] = v37;
      v46[9] = v38;
      v46[10] = v39;
      v46[11] = v40;
      v46[4] = v33;
      v46[5] = v34;
      v46[6] = v35;
      v46[7] = v36;
      v46[0] = v29;
      v46[1] = v30;
      v46[2] = v31;
      v46[3] = v32;
      sub_1D7772B44(v46);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1D7783888()
{
  v0 = type metadata accessor for BundlePaywallViewModel(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D774028C(0, qword_1EE092E50, type metadata accessor for OffersButtonDestination, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v35 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_unknownObjectWeakLoadStrong();

    if (v8)
    {
      swift_beginAccess();
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        sub_1D77726B0(v9 + OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_viewModel, v2);

        sub_1D7772714(&v2[*(v0 + 56)], v5, qword_1EE092E50, type metadata accessor for OffersButtonDestination);
        sub_1D7772B98(v2, type metadata accessor for BundlePaywallViewModel);
      }

      else
      {
        v11 = type metadata accessor for OffersButtonDestination(0);
        (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
      }

      v12 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
      ObjectType = swift_getObjectType();
      v51 = 3;
      v14 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v16 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v15 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v52[2] = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v52[3] = v14;
      v52[0] = v16;
      v52[1] = v15;
      v17 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v19 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v18 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v52[6] = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v52[7] = v17;
      v52[4] = v19;
      v52[5] = v18;
      v20 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v22 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v21 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v52[10] = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v52[11] = v20;
      v52[8] = v22;
      v52[9] = v21;
      v23 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v25 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v24 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v52[14] = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v52[15] = v23;
      v52[12] = v25;
      v52[13] = v24;
      v26 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v47 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v48 = v26;
      v27 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v49 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v50 = v27;
      v28 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v43 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v44 = v28;
      v29 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v45 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v46 = v29;
      v30 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v39 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v40 = v30;
      v31 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v41 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v42 = v31;
      v32 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v35 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v36 = v32;
      v33 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v37 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v38 = v33;
      v34 = *(v12 + 80);
      sub_1D7772AE8(v52, v53);
      v34(&v51, v5, &v35, ObjectType, v12);
      sub_1D7772794(v5, qword_1EE092E50, type metadata accessor for OffersButtonDestination);
      v53[12] = v47;
      v53[13] = v48;
      v53[14] = v49;
      v53[15] = v50;
      v53[8] = v43;
      v53[9] = v44;
      v53[10] = v45;
      v53[11] = v46;
      v53[4] = v39;
      v53[5] = v40;
      v53[6] = v41;
      v53[7] = v42;
      v53[0] = v35;
      v53[1] = v36;
      v53[2] = v37;
      v53[3] = v38;
      sub_1D7772B44(v53);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1D7783BEC()
{
  if (qword_1EE08FB90 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;

      v4 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
      ObjectType = swift_getObjectType();
      v6 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v8 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v7 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v43[2] = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v43[3] = v6;
      v43[0] = v8;
      v43[1] = v7;
      v9 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v11 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v10 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v43[6] = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v43[7] = v9;
      v43[4] = v11;
      v43[5] = v10;
      v12 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v14 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v13 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v43[10] = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v43[11] = v12;
      v43[8] = v14;
      v43[9] = v13;
      v15 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v17 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v16 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v43[14] = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v43[15] = v15;
      v43[12] = v17;
      v43[13] = v16;
      v18 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v39 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v40 = v18;
      v19 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v41 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v42 = v19;
      v20 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v35 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v36 = v20;
      v21 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v37 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v38 = v21;
      v22 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v31 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v32 = v22;
      v23 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v33 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v34 = v23;
      v24 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v27 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v28 = v24;
      v25 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v29 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v30 = v25;
      v26 = *(v4 + 88);
      sub_1D7772AE8(v43, v44);
      v26(&v27, ObjectType, v4);
      v44[12] = v39;
      v44[13] = v40;
      v44[14] = v41;
      v44[15] = v42;
      v44[8] = v35;
      v44[9] = v36;
      v44[10] = v37;
      v44[11] = v38;
      v44[4] = v31;
      v44[5] = v32;
      v44[6] = v33;
      v44[7] = v34;
      v44[0] = v27;
      v44[1] = v28;
      v44[2] = v29;
      v44[3] = v30;
      sub_1D7772B44(v44);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1D7783E00(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = v1 + OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_viewModel;
  v4 = type metadata accessor for BundlePaywallViewModel(0);
  v5 = 92;
  if (v2 == 2)
  {
    v5 = 96;
  }

  v6 = *(v3 + *(v4 + v5));
  v7 = *(v1 + OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_bundleHardPaywallView);
  v8 = objc_opt_self();
  v43 = v6;
  v9 = [v8 clearColor];
  [v7 setBackgroundColor_];

  v10 = (v1 + OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_styler);
  v11 = *(v1 + OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_styler + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_styler), *(v1 + OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_styler + 24));
  v12 = *(*(v11 + 8) + 8);
  v13 = *&v7[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_contentView];
  v12();

  v14 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v15 = *(*(v14 + 8) + 8);
  v16 = *&v7[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_contentBackgroundView];
  v15();

  v17 = *&v7[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_gradientView];
  sub_1D77F3048(v17);

  v18 = __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v19 = *&v7[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_scrollView];
  v20 = *(*v18 + 40);
  v21 = *(*v18 + 48);
  __swift_project_boxed_opaque_existential_1((*v18 + 16), v20);
  v22 = *(v21 + 8);
  v23 = v19;
  v22(v44, v20, v21);
  v24 = v44[0];
  sub_1D7784CF4(v44);
  [v23 setBackgroundColor_];

  [v23 setClipsToBounds_];
  [v23 setContentInsetAdjustmentBehavior_];

  v25 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v26 = *(*(v25 + 8) + 16);
  v27 = *&v7[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_badgeImageView];
  v26();

  v28 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v29 = *(*(v28 + 8) + 32);
  v30 = *&v7[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_titleTextView];
  v29();

  v31 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v32 = *(*(v31 + 8) + 24);
  v33 = *&v7[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_descriptionTextView];
  v32();

  v34 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v35 = *(*(v34 + 8) + 40);
  v36 = *&v7[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_subscribeButton];
  v35();

  v37 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v38 = *(*(v37 + 8) + 72);
  v39 = *&v7[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_offersButton];
  v38();

  v40 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v41 = *(*(v40 + 8) + 88);
  v42 = *&v7[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_webAuthButton];
  v41();
}

uint64_t sub_1D7784244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  result = sub_1D77855E4(a1, a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
  }

  return result;
}

uint64_t sub_1D778426C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v24 = a4;
  v25 = a6;
  v23 = a1;
  v8 = type metadata accessor for BundlePaywallRenderModel();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E6968FB0];
  sub_1D774028C(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v15 = OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_videoFileURL;
  swift_beginAccess();
  sub_1D7772714(a2 + v15, v14, &unk_1EE096460, v11);
  v16 = sub_1D78B3294();
  v17 = (*(*(v16 - 8) + 48))(v14, 1, v16);
  sub_1D7772794(v14, &unk_1EE096460, v11);
  if (v17 == 1)
  {
    swift_beginAccess();
    sub_1D7772804(v23, a2 + v15);
    swift_endAccess();
    sub_1D77726B0(a2 + OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_viewModel, v10);
    v18 = sub_1D77833F0(&OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_images);
    v19 = sub_1D77833F0(&OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_badgeImages);
    sub_1D7772714(a2 + v15, &v10[v8[7]], &unk_1EE096460, MEMORY[0x1E6968FB0]);
    *&v10[v8[5]] = v18;
    *&v10[v8[6]] = v19;
    v20 = [v24 traitCollection];
    sub_1D7839644(v10, a3, v20, *(a2 + OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_bundleHardPaywallView));

    sub_1D7772B98(v10, type metadata accessor for BundlePaywallRenderModel);
  }

  sub_1D7783E00(v25);
  v26 = *(a3 + 32);
  sub_1D774028C(0, &qword_1EE0951E0, type metadata accessor for CGSize, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

uint64_t sub_1D7784564()
{
  if (qword_1EE08FB90 != -1)
  {
    swift_once();
  }

  sub_1D775B5B8(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D78BCAB0;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  sub_1D78B6504();
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1D775ABD4();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_1D78B60A4();
  sub_1D78B42C4();
}

uint64_t type metadata accessor for BundleHardPaywallViewProvider()
{
  result = qword_1EE091AD8;
  if (!qword_1EE091AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7784824()
{
  type metadata accessor for BundlePaywallViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1D774028C(319, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D77849A8(uint64_t a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D7784A2C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_1D78B5B14();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = a3;
  (*(v7 + 104))(v6, *MEMORY[0x1E69B6818]);

  sub_1D78B5B64();
}

uint64_t sub_1D7784D48(__int128 *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for BundlePaywallRenderModel();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 10);
  v9 = v2 + OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v50 = v5;
    v54 = ObjectType;
    v53 = *(v9 + 8);
    v12 = [v8 userInterfaceStyle];
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_layoutAttributesFactory), *(v2 + OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_layoutAttributesFactory + 24));
    v13 = OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_viewModel;
    v14 = a1[3];
    v60[2] = a1[2];
    v60[3] = v14;
    v60[4] = a1[4];
    v15 = *a1;
    v60[1] = a1[1];
    v60[0] = v15;
    *&v60[5] = v8;
    *(&v60[5] + 8) = *(a1 + 88);
    *(&v60[6] + 8) = *(a1 + 104);
    *(&v60[7] + 8) = *(a1 + 120);
    v51 = *(v2 + OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_bundleHardPaywallView);
    v16 = [v51 window];
    v49 = v13;
    sub_1D7863FDC((v2 + v13), v60, *&v16, v59);
    memcpy(v58, v59, sizeof(v58));

    v17 = OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_images;
    swift_beginAccess();
    v18 = *(*(v2 + v17) + 16);
    v55 = v12;
    if (v18 && (sub_1D777BC2C(v12), (v19 & 1) != 0))
    {
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      if (sub_1D776EF28(v8))
      {
        type metadata accessor for BundleHardPaywallRenderer();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v21 = [objc_opt_self() bundleForClass_];
        v22 = [v51 traitCollection];
        v23 = sub_1D78B5C44();
        v24 = v8;
        v25 = v11;
        v26 = [objc_opt_self() imageNamed:v23 inBundle:v21 compatibleWithTraitCollection:v22];

        swift_beginAccess();
        v27 = v26;
        v11 = v25;
        v8 = v24;
        sub_1D7827AE8(v27, v55);
        swift_endAccess();
        sub_1D77726B0(v2 + v49, v7);
        v28 = sub_1D77833F0(&OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_images);
        v29 = sub_1D77833F0(&OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_badgeImages);
        v30 = OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_videoFileURL;
        swift_beginAccess();
        v31 = v50;
        sub_1D7772714(v2 + v30, &v7[*(v50 + 28)], &unk_1EE096460, MEMORY[0x1E6968FB0]);
        *&v7[*(v31 + 20)] = v28;
        *&v7[*(v31 + 24)] = v29;
        sub_1D7839644(v7, v59, v8, v51);
        sub_1D7772B98(v7, type metadata accessor for BundlePaywallRenderModel);
      }
    }

    v32 = sub_1D776E7B8(v8);
    sub_1D777246C();
    v33 = swift_allocObject();
    v34 = v8;
    v52 = v8;
    v35 = v33;
    *(v33 + 16) = xmmword_1D78BCCA0;
    memcpy(v57, v58, 0x1A8uLL);
    sub_1D77854DC(v57);
    memcpy(v60, v57, 0x1A9uLL);
    sub_1D77854E8(v59, v56);
    *(v35 + 32) = sub_1D776D728(v34, v60);
    v36 = sub_1D776DFC0(v34, v60);
    v37 = sub_1D7785544(v59);
    *(v35 + 40) = v36;
    MEMORY[0x1EEE9AC00](v37);
    *(&v48 - 2) = v35;
    sub_1D7772594();
    sub_1D78B41F4();

    sub_1D773F004(0, &qword_1EE08FE10);
    v38 = sub_1D78B6104();
    v39 = swift_allocObject();
    v39[2] = v55;
    memcpy(v39 + 3, v59, 0x1A8uLL);
    v40 = v53;
    v39[56] = v11;
    v39[57] = v40;
    v51 = v32;
    v39[58] = v32;
    sub_1D77854E8(v59, v56);
    sub_1D774028C(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    swift_unknownObjectRetain();

    v55 = v2;
    sub_1D78B40A4();

    v41 = sub_1D78B6104();
    v42 = swift_allocObject();
    memcpy(v42 + 2, v59, 0x1A8uLL);
    v42[55] = v11;
    v42[56] = v40;
    v43 = v52;
    v42[57] = v52;
    sub_1D77854E8(v59, v56);
    type metadata accessor for CGSize(0);
    swift_unknownObjectRetain();
    v44 = v43;
    sub_1D78B40A4();

    v45 = sub_1D78B4014();
    v46 = sub_1D78B40D4();

    sub_1D7785544(v59);
    swift_unknownObjectRelease();
    return v46;
  }

  else
  {
    if (qword_1EE08FB90 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();
    sub_1D78B42C4();
    sub_1D774028C(0, &qword_1EE0951E0, type metadata accessor for CGSize, MEMORY[0x1E69D6B18]);
    v60[0] = 0uLL;
    swift_allocObject();
    return sub_1D78B4104();
  }
}

uint64_t sub_1D77855E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v26 = a4;
  v12 = type metadata accessor for BundlePaywallRenderModel();
  result = MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  if (*(*a1 + 16))
  {
    v25 = a7;
    v17 = v16[4];
    swift_beginAccess();
    v18 = v17;
    sub_1D7827AE8(v17, a3);
    result = swift_endAccess();
    if (v16[2] >= 2uLL)
    {
      v19 = v16[5];
      swift_beginAccess();
      v20 = v19;
      sub_1D7827AE8(v19, a3);
      swift_endAccess();
      sub_1D77726B0(a2 + OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_viewModel, v15);
      v21 = sub_1D77833F0(&OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_images);
      v22 = sub_1D77833F0(&OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_badgeImages);
      v23 = OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_videoFileURL;
      swift_beginAccess();
      sub_1D7772714(a2 + v23, &v15[v12[7]], &unk_1EE096460, MEMORY[0x1E6968FB0]);
      *&v15[v12[5]] = v21;
      *&v15[v12[6]] = v22;
      v24 = [a5 traitCollection];
      sub_1D7839644(v15, v26, v24, *(a2 + OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_bundleHardPaywallView));

      sub_1D7772B98(v15, type metadata accessor for BundlePaywallRenderModel);
      return v25;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_1D7785834(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 104))(a1, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  return a2 != 0;
}

void sub_1D77858CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_bundleHardPaywallView);
  v2 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_contentBackgroundView);
  v3 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_scrollView);
  v16 = v2;
  [v3 frame];
  v5 = v4;
  [v3 frame];
  v7 = v6;
  [*(v1 + OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_contentView) frame];
  v9 = v8;
  [v3 contentOffset];
  v11 = v10;
  [v3 bounds];
  Width = CGRectGetWidth(v18);
  [v3 bounds];
  Height = CGRectGetHeight(v19);
  [v3 contentOffset];
  if (Height + v14 < 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = Height + v14;
  }

  [v16 setFrame_];
}

uint64_t PurchaseDisabledAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t PurchaseDisabledAlert.message.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t PurchaseDisabledAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t PurchaseDisabledAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5CE4();

  return v2;
}

uint64_t sub_1D7785CFC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D7785DC4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D7785EA4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

id sub_1D7785F6C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = *(v2 + OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_purchasingSpinnerViewControllerFactory + 24);
    v8 = *(v2 + OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_purchasingSpinnerViewControllerFactory + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_purchasingSpinnerViewControllerFactory), v7);
    v14 = a2;
    v9 = v2;
    v10 = (*(v8 + 8))(&v14, v7, v8);
    v11 = *(v2 + v3);
    *(v9 + v3) = v10;
    v5 = v10;

    v4 = 0;
  }

  v12 = v4;
  return v5;
}

void sub_1D77863BC()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, sel_viewDidLoad);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v4 = sub_1D78B5C44();

  [v1 setTitle_];

  v5 = [v1 navigationItem];
  v6 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v1 action:sel_cancelButtonTapped];
  [v5 setRightBarButtonItem_];

  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    v9 = *&v1[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_subscriptionOffersView];
    [v7 addSubview_];

    v10 = [v1 traitCollection];
    sub_1D77886C0();

    v11 = *(v9 + OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_subscribeButton1);
    v12 = sub_1D78B4844();

    swift_allocObject();
    swift_unknownObjectWeakInit();

    v13 = *(v9 + OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_subscribeButton2);
    v14 = sub_1D78B4844();

    swift_allocObject();
    swift_unknownObjectWeakInit();

    v15 = *(v9 + OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_subscribeButton3);
    v16 = sub_1D78B4844();

    swift_allocObject();
    swift_unknownObjectWeakInit();

    v17 = *(v9 + OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_webAuthButton);
    v18 = sub_1D78B4514();

    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1D780E304();
  }

  else
  {
    __break(1u);
  }
}

void sub_1D77867A0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_offers];
    if (v1 && *(v1 + 16))
    {
      v2 = *&Strong[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_eventHandler];
      v3 = *(v1 + 32);
      v4 = v2[16];
      v5 = v2[17];
      v6 = Strong;
      __swift_project_boxed_opaque_existential_1(v2 + 13, v4);
      v7 = *(v5 + 24);
      v8 = v3;
      v7(v4, v5);
      v9 = v2[5];
      v10 = v2[4];

      sub_1D780EC44(v8, v10, v9);
    }

    else
    {
    }
  }
}

void sub_1D778689C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_offers];
    if (v1 && *(v1 + 16) >= 2uLL)
    {
      v2 = *&Strong[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_eventHandler];
      v3 = *(v1 + 48);
      v4 = v2[16];
      v5 = v2[17];
      v6 = Strong;
      __swift_project_boxed_opaque_existential_1(v2 + 13, v4);
      v7 = *(v5 + 24);
      v8 = v3;
      v7(v4, v5);
      v9 = v2[5];
      v10 = v2[4];

      sub_1D780EC44(v8, v10, v9);
    }

    else
    {
    }
  }
}

void sub_1D778699C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_offers];
    if (v1 && *(v1 + 16) >= 3uLL)
    {
      v2 = *&Strong[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_eventHandler];
      v3 = *(v1 + 64);
      v4 = v2[16];
      v5 = v2[17];
      v6 = Strong;
      __swift_project_boxed_opaque_existential_1(v2 + 13, v4);
      v7 = *(v5 + 24);
      v8 = v3;
      v7(v4, v5);
      v9 = v2[5];
      v10 = v2[4];

      sub_1D780EC44(v8, v10, v9);
    }

    else
    {
    }
  }
}

uint64_t sub_1D7786A9C()
{
  if (qword_1EE08FB90 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_unknownObjectRetain();
    sub_1D780FD1C();

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1D7786BC8(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_layoutAttributesFactory], *&v2[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_layoutAttributesFactory + 24]);
  result = [v2 view];
  if (result)
  {
    v7 = result;
    [result bounds];
    v9 = v8;
    v11 = v10;

    result = [v3 view];
    if (result)
    {
      v12 = result;
      [result safeAreaInsets];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v21 = [v3 traitCollection];
      v86[0] = v9;
      v86[1] = v11;
      v86[2] = v14;
      v86[3] = v16;
      v86[4] = v18;
      v86[5] = v20;
      v86[6] = v21;
      sub_1D7881A18(a1, v86, v43);

      v22 = __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_renderer], *&v3[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_renderer + 24]);
      v42 = [v3 traitCollection];
      v23 = *&v3[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_subscriptionOffersView];
      v24 = *(*v22 + 80);
      v25 = *(*v22 + 88);
      __swift_project_boxed_opaque_existential_1((*v22 + 56), v24);
      v26 = v43[8];
      v27 = v43[9];
      v28 = v44;
      v29 = v45;
      (*(v25 + 8))(a2, [v42 userInterfaceStyle], v24, v25, v44, v45);
      sub_1D7788448();
      v41 = a1;
      v30 = sub_1D78B6104();
      *(swift_allocObject() + 16) = v23;
      v31 = v23;
      sub_1D78B4094();

      *(swift_allocObject() + 16) = a2;
      swift_unknownObjectRetain();
      v32 = sub_1D78B4014();
      sub_1D78B40D4();

      v33 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_accessLabel1;
      [*&v31[OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_accessLabel1] setAttributedText_];
      v34 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_subscribeButton1;
      [*&v31[OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_subscribeButton1] setAttributedTitle:v81 forState:0];
      v35 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_accessLabel2;
      [*&v31[OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_accessLabel2] setAttributedText_];
      v36 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_subscribeButton2;
      [*&v31[OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_subscribeButton2] setAttributedTitle:v82 forState:0];
      v37 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_accessLabel3;
      [*&v31[OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_accessLabel3] setAttributedText_];
      v38 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_subscribeButton3;
      [*&v31[OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_subscribeButton3] setAttributedTitle:v83 forState:0];
      v39 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_webAuthButton;
      [*&v31[OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_webAuthButton] setAttributedTitle:v84 forState:0];
      [*&v31[v39] setHidden_];
      v40 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_learnMoreLabel;
      [*&v31[OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_learnMoreLabel] setAttributedText_];
      [v31 setFrame_];
      [*&v31[OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_contentView] setFrame_];
      [*&v31[OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_logoImageView] setFrame_];
      [*&v31[v33] setFrame_];
      [*&v31[v34] setFrame_];
      [*&v31[v35] setFrame_];
      [*&v31[v36] setFrame_];
      [*&v31[v37] setFrame_];
      [*&v31[v38] setFrame_];
      [*&v31[v39] setFrame_];
      [*&v31[v40] setFrame_];

      return sub_1D77884B8(v43);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D77872D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = objc_opt_self();

  v12 = [v11 sharedAccount];
  v13 = [v12 activeiTunesAccount];

  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = v13;
  if (![v14 isAuthenticated])
  {

    if (([v14 ams_isLocalAccount] & 1) == 0)
    {
      v15 = v14;
      goto LABEL_9;
    }

LABEL_7:
    v15 = 0;
LABEL_9:
    v16 = [objc_allocWithZone(MEMORY[0x1E698C7B0]) init];
    [v16 setIgnoreAccountConversion_];
    v17 = sub_1D78B5C44();
    [v16 setDebugReason_];

    v18 = [objc_allocWithZone(MEMORY[0x1E698CC58]) initWithAccount:v15 presentingViewController:a5 options:v16];
    v19 = [v18 performAuthentication];
    v20 = swift_allocObject();
    v20[2] = a3;
    v20[3] = a4;
    v20[4] = a5;
    v20[5] = sub_1D7788F48;
    v20[6] = v10;
    v23[4] = sub_1D778851C;
    v23[5] = v20;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 1107296256;
    v23[2] = sub_1D7780F60;
    v23[3] = &block_descriptor_29;
    v21 = _Block_copy(v23);

    v22 = a5;

    [v19 addFinishBlock_];
    _Block_release(v21);

    return;
  }

  sub_1D77875B8(a5, sub_1D7788F48, v10);
}

uint64_t sub_1D77875B8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D78B5254();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D78B52A4();
  v10 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7788448();
  v13 = sub_1D78B6104();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  aBlock[4] = sub_1D778852C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_35;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  sub_1D78B5274();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7788538();
  sub_1D774BFB4(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D775F4A4();
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v12, v9, v15);
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v19);
}

void sub_1D7787874(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7785F6C(&OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController____lazy_storage___purchasingSpinner, 0);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_1D7782FF8;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D775FB6C;
  v9[3] = &block_descriptor_41;
  v8 = _Block_copy(v9);

  [a1 presentViewController:v6 animated:1 completion:v8];
  _Block_release(v8);
}

void sub_1D7787980(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v8 = a2;
    sub_1D7788590();
    v9 = swift_allocError();
    *v10 = v8;
    v11 = v8;
    v12 = v8;
    (a3)(v9);

LABEL_3:

    return;
  }

  if (!a1)
  {
    sub_1D7788590();
    v8 = swift_allocError();
    *v17 = 0;
    a3();
    goto LABEL_3;
  }

  v16 = [objc_opt_self() sharedAccount];
  [v16 reloadiTunesAccount];

  sub_1D77875B8(a5, a6, a7);
}

void sub_1D7787AB0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = sub_1D7785F6C(&OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController____lazy_storage___purchasingSpinner, 0);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D7757030;
  *(v6 + 24) = v4;
  v8[4] = sub_1D7782BC8;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D775FB6C;
  v8[3] = &block_descriptor_1;
  v7 = _Block_copy(v8);

  [v5 dismissViewControllerAnimated:1 completion:v7];
  _Block_release(v7);
}

void sub_1D7787BD8(void **a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for PurchaseContext();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = *a1;
  sub_1D7770378(a3, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = v9;
  sub_1D777044C(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  aBlock[4] = sub_1D7788DE4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_59;
  v12 = _Block_copy(aBlock);
  v13 = a2;
  v14 = v9;

  [v13 dismissViewControllerAnimated:1 completion:v12];
  _Block_release(v12);
}

uint64_t sub_1D7787D78(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_tag))
  {
    v5 = (result + OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_webOptinFlowManager);
    v6 = v5[3];
    v7 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v8 = *(v7 + 8);
    v9 = swift_unknownObjectRetain();
    v8(v9, a2, a3, v6, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D7787E3C(uint64_t a1, void *a2)
{
  v11 = sub_1D78B31B4();
  v3 = [v11 domain];
  v4 = sub_1D78B5C74();
  v6 = v5;

  if (v4 == sub_1D78B5C74() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1D78B6724();

    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v10 = [v11 code];
  if (v10 == *MEMORY[0x1E69B4F88])
  {
    [a2 dismissViewControllerAnimated:1 completion:0];
  }

LABEL_10:
}

uint64_t sub_1D7787F50(uint64_t a1)
{
  v1 = *(*(a1 + OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_eventHandler) + 48);
  swift_beginAccess();
  sub_1D7788B90(v1 + 176, &v6);
  if (!v7)
  {
    return sub_1D7788C88(&v6);
  }

  v2 = sub_1D7741E34(&v6, v8);
  MEMORY[0x1EEE9AC00](v2);
  sub_1D78B41F4();
  sub_1D7788448();
  v3 = sub_1D78B6104();
  type metadata accessor for SubscriptionOffersInteractor();
  sub_1D78B40B4();

  v4 = sub_1D78B6104();
  sub_1D78B40E4();

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

void sub_1D77880F4(char a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v9 = &type metadata for WebAuthenticationNotSubscribedAlert;
    v10 = sub_1D7788D34();
    sub_1D78B5054();
    swift_allocObject();
    sub_1D78B5004();
    sub_1D78B5014();
  }

  else
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a2;
    *(v5 + 24) = a3;
    v10 = sub_1D7788D88;
    v11 = v5;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1D775FB6C;
    v9 = &block_descriptor_53;
    v6 = _Block_copy(v8);
    swift_unknownObjectRetain();
    v7 = a2;

    [v7 dismissViewControllerAnimated:1 completion:v6];
    _Block_release(v6);
  }
}

uint64_t sub_1D7788258(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_eventHandler);
  sub_1D7788D90();
  sub_1D78B5054();
  swift_allocObject();
  swift_unknownObjectRetain();
  v2 = sub_1D78B5004();
  v3 = v1[11];
  v4 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v3);
  (*(v4 + 88))(v2, v3, v4);
}

uint64_t sub_1D7788328()
{
  sub_1D7788B3C();
  sub_1D78B5054();
  swift_allocObject();
  sub_1D78B5004();
  sub_1D78B5014();
}

uint64_t sub_1D77883F8()
{
  sub_1D7754E10();
  swift_allocObject();
  return sub_1D78B4174();
}

unint64_t sub_1D7788448()
{
  result = qword_1EE08FE10;
  if (!qword_1EE08FE10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08FE10);
  }

  return result;
}

unint64_t sub_1D7788538()
{
  result = qword_1EE090300;
  if (!qword_1EE090300)
  {
    sub_1D78B5254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE090300);
  }

  return result;
}

unint64_t sub_1D7788590()
{
  result = qword_1EC9C9BA8;
  if (!qword_1EC9C9BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9BA8);
  }

  return result;
}

void sub_1D77885E4()
{
  v1 = OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_coverViewManager;
  sub_1D78B4754();
  swift_allocObject();
  *(v0 + v1) = sub_1D78B4744();
  *(v0 + OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController____lazy_storage___verificationSpinner) = 0;
  *(v0 + OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController____lazy_storage___purchasingSpinner) = 0;
  *(v0 + OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_offers) = 0;
  v2 = v0 + OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_viewModel;
  *(v2 + 48) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v0 + OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_tag) = 0;
  sub_1D78B6524();
  __break(1u);
}

void sub_1D77886C0()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_styler];
  sub_1D774584C(&v0[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_styler], v42);
  v3 = __swift_project_boxed_opaque_existential_1(v42, v42[3]);
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    v6 = *(*v3 + 40);
    v7 = *(*v3 + 48);
    __swift_project_boxed_opaque_existential_1((*v3 + 16), v6);
    (*(v7 + 24))(&v36, v6, v7);
    v8 = v36;
    v9 = v37;
    v10 = v38;
    v11 = v39;
    v12 = v40;

    [v5 setBackgroundColor_];
    __swift_destroy_boxed_opaque_existential_1(v42);
    v13 = __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
    v14 = *&v1[OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_subscriptionOffersView];
    v15 = *(v14 + OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_contentView);
    v16 = *(*v13 + 40);
    v17 = *(*v13 + 48);
    __swift_project_boxed_opaque_existential_1((*v13 + 16), v16);
    v18 = *(v17 + 24);
    v19 = v15;
    v18(&v36, v16, v17);
    v20 = v36;
    v21 = v37;
    v22 = v38;
    v23 = v39;
    v24 = v40;

    [v19 setBackgroundColor_];
    v25 = *(v14 + OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_logoImageView);
    [v25 setContentMode_];
    v26 = [objc_opt_self() whiteColor];
    [v25 setTintColor_];

    [*(v14 + OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_accessLabel1) setNumberOfLines_];
    [*(v14 + OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_accessLabel2) setNumberOfLines_];
    [*(v14 + OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_accessLabel3) setNumberOfLines_];
    __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
    v27 = *(v14 + OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_subscribeButton1);
    sub_1D7895D38(v27);

    __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
    v28 = *(v14 + OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_subscribeButton2);
    sub_1D7895D38(v28);

    __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
    v29 = *(v14 + OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_subscribeButton3);
    sub_1D7895D38(v29);

    v30 = *(v14 + OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_webAuthButton);
    v31 = [v30 titleLabel];
    if (v31)
    {
      v32 = v31;
      [v31 setLineBreakMode_];
    }

    v33 = [v30 titleLabel];
    if (v33)
    {
      v34 = v33;
      [v33 setTextAlignment_];
    }

    v35 = *(v14 + OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_learnMoreLabel);
    [v35 setTextAlignment_];
    [v35 setLineBreakMode_];
    [v35 setNumberOfLines_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D7788A84(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D7788AD0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1D7788B3C()
{
  result = qword_1EC9C9BB0;
  if (!qword_1EC9C9BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9BB0);
  }

  return result;
}

uint64_t sub_1D7788B90(uint64_t a1, uint64_t a2)
{
  sub_1D774BFB4(0, &unk_1EE092220, sub_1D7788C24, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D7788C24()
{
  result = qword_1EE092230[0];
  if (!qword_1EE092230[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EE092230);
  }

  return result;
}

uint64_t sub_1D7788C88(uint64_t a1)
{
  sub_1D774BFB4(0, &unk_1EE092220, sub_1D7788C24, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D7788D34()
{
  result = qword_1EC9C9BB8;
  if (!qword_1EC9C9BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9BB8);
  }

  return result;
}

unint64_t sub_1D7788D90()
{
  result = qword_1EC9C9BC0[0];
  if (!qword_1EC9C9BC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC9C9BC0);
  }

  return result;
}

uint64_t sub_1D7788DE4()
{
  v1 = *(type metadata accessor for PurchaseContext() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1D7787D78(v2, v3, v4);
}

uint64_t sub_1D7788E48(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7788E98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D7788EEC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1D7788F04(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

id sub_1D7788F60(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D78B3594();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  v9 = sub_1D7832AFC(a1, a2);
  if (v9)
  {
    v10 = v9;
    v11 = [v9 isEnabled];

    if (v11)
    {
      if (qword_1EC9C8448 == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_22;
    }
  }

  if (qword_1EC9C86F0 != -1)
  {
    swift_once();
  }

  sub_1D7789584();
  sub_1D78B3574();
  v12 = (*(v6 + 88))(v8, v5);
  if (v12 == *MEMORY[0x1E69D6D00])
  {
    if (qword_1EC9C8448 != -1)
    {
      swift_once();
    }

    sub_1D78B60A4();
    sub_1D78B42C4();
    return sub_1D7789368(a1, a2);
  }

  else
  {
    if (v12 != *MEMORY[0x1E69D6D08])
    {
      if (v12 != *MEMORY[0x1E69D6D10])
      {
        (*(v6 + 8))(v8, v5);
        return 0;
      }

      if (qword_1EC9C8448 == -1)
      {
LABEL_18:
        sub_1D78B60A4();
        sub_1D78B42C4();
        return 0;
      }

LABEL_22:
      swift_once();
      goto LABEL_18;
    }

    if (qword_1EC9C8448 != -1)
    {
      swift_once();
    }

    sub_1D78B60A4();
    sub_1D78B42C4();
    result = sub_1D7789368(a1, a2);
    if (!result)
    {
      sub_1D78B60A4();
      sub_1D78B42C4();
      return [objc_opt_self() defaultConfig];
    }
  }

  return result;
}

id sub_1D7789368(uint64_t a1, uint64_t a2)
{
  result = [*(v2 + 16) configuration];
  if (result)
  {
    v6 = result;
    if ([result respondsToSelector_])
    {
      v7 = [v6 channelUpsellConfigsByChannelID];
      swift_unknownObjectRelease();
      sub_1D77895D8();
      v8 = sub_1D78B5BC4();

      if (*(v8 + 16))
      {
        v9 = sub_1D777BBB4(a1, a2);
        if (v10)
        {
          v11 = *(*(v8 + 56) + 8 * v9);

          v12 = [v11 hideMyEmailSignupConfiguration];

          return v12;
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7789490()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_1D7789584()
{
  result = qword_1EC9C9BD8;
  if (!qword_1EC9C9BD8)
  {
    type metadata accessor for HideMyEmailSignupConfigProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9BD8);
  }

  return result;
}

unint64_t sub_1D77895D8()
{
  result = qword_1EC9C9BE0;
  if (!qword_1EC9C9BE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC9C9BE0);
  }

  return result;
}

uint64_t sub_1D7789624()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

uint64_t sub_1D7789738()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

uint64_t HideMyEmailShareSelection.encode(to:)(void *a1)
{
  sub_1D7789FC8(0, &qword_1EC9C9BF0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v20 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v17 = v1[3];
  v18 = v7;
  v10 = v1[4];
  v15 = v1[5];
  v16 = v10;
  v11 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7789B30();
  sub_1D78B6884();
  if (v11)
  {
    if (v11 != 1)
    {
      LOBYTE(v21) = (v9 | v8 | v18 | v17 | v16 | v15) != 0;
      v23 = 0;
      sub_1D7789B84();
      goto LABEL_8;
    }

    LOBYTE(v21) = 3;
    v23 = 0;
    sub_1D7789B84();
    v12 = v19;
    sub_1D78B66B4();
    if (!v12)
    {
      LOBYTE(v21) = 3;
      sub_1D78B6684();
      LOBYTE(v21) = 4;
      sub_1D78B6684();
      v21 = v16;
      v22 = v15;
      v23 = 5;
      sub_1D7743258();
      sub_1D7789BD8();
LABEL_8:
      sub_1D78B66B4();
    }
  }

  else
  {
    LOBYTE(v21) = 2;
    v23 = 0;
    sub_1D7789B84();
    v13 = v19;
    sub_1D78B66B4();
    if (!v13)
    {
      LOBYTE(v21) = 2;
      sub_1D78B6684();
    }
  }

  return (*(v20 + 8))(v6, v4);
}

unint64_t sub_1D7789B30()
{
  result = qword_1EE08EC00;
  if (!qword_1EE08EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08EC00);
  }

  return result;
}

unint64_t sub_1D7789B84()
{
  result = qword_1EC9C9BF8;
  if (!qword_1EC9C9BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9BF8);
  }

  return result;
}

unint64_t sub_1D7789BD8()
{
  result = qword_1EC9C9C00;
  if (!qword_1EC9C9C00)
  {
    sub_1D7743258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9C00);
  }

  return result;
}

uint64_t HideMyEmailShareSelection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7789FC8(0, &qword_1EE08E4F8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7789B30();
  sub_1D78B6874();
  if (!v2)
  {
    v34 = 0;
    sub_1D778A02C();
    sub_1D78B6614();
    if (v35 > 1u)
    {
      if (v35 == 2)
      {
        v30 = 2;
        v17 = sub_1D78B65E4();
        v18 = v9;
        v20 = v19;
        (*(v7 + 8))(v18, v6);
        v11 = v20;
        v10 = v17;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
      }

      else
      {
        v33 = 3;
        v28 = sub_1D78B65E4();
        v29 = v22;
        v32 = 4;
        v23 = sub_1D78B65E4();
        v13 = v24;
        v27 = v23;
        v31 = 5;
        v14 = sub_1D78B65E4();
        v15 = v25;
        (*(v7 + 8))(v9, v6);
        v16 = 1;
        v12 = v27;
        v10 = v28;
        v11 = v29;
      }
    }

    else if (v35)
    {
      (*(v7 + 8))(v9, v6);
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 2;
      v10 = 1;
    }

    else
    {
      (*(v7 + 8))(v9, v6);
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 2;
    }

    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    *(a2 + 32) = v14;
    *(a2 + 40) = v15;
    *(a2 + 48) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}
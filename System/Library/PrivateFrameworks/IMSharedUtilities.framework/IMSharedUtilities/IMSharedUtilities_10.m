uint64_t sub_1A8781338(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB3051B0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - v5;
  v7 = *(v1 + 120);
  v8 = *(v1 + 152);
  v61 = *(v1 + 136);
  v62 = v8;
  v63 = *(v1 + 168);
  v9 = *(v1 + 56);
  v10 = *(v1 + 88);
  v57 = *(v1 + 72);
  v58 = v10;
  v59 = *(v1 + 104);
  v60 = v7;
  v11 = *(v1 + 24);
  v53 = *(v1 + 8);
  v54 = v11;
  v55 = *(v1 + 40);
  v56 = v9;
  v12 = *(v1 + 176);
  v30 = *(v1 + 184);
  v31 = v12;
  v13 = *(v1 + 200);
  v29 = *(v1 + 192);
  v14 = *(v1 + 208);
  v23 = v13;
  v24 = v14;
  v64 = *(v1 + 216);
  v15 = *(v1 + 232);
  v26 = *(v1 + 224);
  v27 = v15;
  v16 = *(v1 + 248);
  v25 = *(v1 + 240);
  v28 = v16;
  sub_1A870C278(a1, a1[3]);
  sub_1A87820C0();
  sub_1A88C95C8();
  LOBYTE(v42) = 0;
  v17 = v32;
  sub_1A88C9288();
  if (v17)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v20 = v30;
  v19 = v31;
  v21 = v29;
  v50 = v61;
  v51 = v62;
  v52 = v63;
  v46 = v57;
  v47 = v58;
  v48 = v59;
  v49 = v60;
  v42 = v53;
  v43 = v54;
  v44 = v55;
  v45 = v56;
  v66 = 1;
  sub_1A8782278(&v53, v40);
  sub_1A87822D4();
  sub_1A88C92C8();
  v40[8] = v50;
  v40[9] = v51;
  v41 = v52;
  v40[4] = v46;
  v40[5] = v47;
  v40[6] = v48;
  v40[7] = v49;
  v40[0] = v42;
  v40[1] = v43;
  v40[2] = v44;
  v40[3] = v45;
  sub_1A8782114(v40);
  v33 = v19;
  v34 = v20;
  v65 = 2;
  sub_1A874BC68();

  sub_1A88C92C8();

  v33 = v21;
  v65 = 3;
  sub_1A870CCE0(&qword_1EB305198);
  sub_1A8782328(&qword_1EB3051C0);
  sub_1A88C92C8();
  v33 = v23;
  v34 = v24;
  v35 = v64;
  v36 = v26;
  v37 = v27;
  v38 = v25;
  v39 = v28;
  v65 = 4;
  sub_1A8782398();

  sub_1A88C92C8();

  return (*(v4 + 8))(0, v3);
}

uint64_t sub_1A87817AC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB305180);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  v9 = a1[3];
  v83 = a1;
  sub_1A870C278(a1, v9);
  sub_1A87820C0();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(v83);
  }

  v10 = v6;
  v37 = a2;
  v44[0] = 0;
  v11 = v5;
  v12 = sub_1A88C9118();
  v70 = 1;
  sub_1A8782168();
  sub_1A88C9158();
  *(&v82[7] + 7) = v78;
  *(&v82[8] + 7) = v79;
  *(&v82[9] + 7) = v80;
  *(&v82[3] + 7) = v74;
  *(&v82[4] + 7) = v75;
  *(&v82[5] + 7) = v76;
  *(&v82[6] + 7) = v77;
  *(v82 + 7) = v71;
  *(&v82[1] + 7) = v72;
  *(&v82[10] + 7) = v81;
  *(&v82[2] + 7) = v73;
  LOBYTE(v38[0]) = 2;
  sub_1A874BB6C();
  sub_1A88C9158();
  v35 = *&v44[8];
  v36 = *v44;
  sub_1A870CCE0(&qword_1EB305198);
  LOBYTE(v38[0]) = 3;
  sub_1A8782328(&qword_1EB3051A0);
  sub_1A88C9158();
  v13 = *v44;
  v64 = 4;
  sub_1A87821BC();
  sub_1A88C9158();
  v14 = v12 & 1;
  v34 = v14;
  (*(v10 + 8))(v8, v11);
  *(&v38[7] + 1) = v82[7];
  *(&v38[8] + 1) = v82[8];
  *(&v38[9] + 1) = v82[9];
  *(&v38[9] + 10) = *(&v82[9] + 9);
  *(&v38[3] + 1) = v82[3];
  *(&v38[4] + 1) = v82[4];
  *(&v38[5] + 1) = v82[5];
  *(&v38[6] + 1) = v82[6];
  *(v38 + 1) = v82[0];
  v32 = v66;
  v33 = v65;
  LOBYTE(v11) = v67;
  v15 = v68;
  v30 = v69;
  v31 = *(&v68 + 1);
  v29 = *(&v69 + 1);
  LOBYTE(v38[0]) = v14;
  *(&v38[1] + 1) = v82[1];
  *(&v38[2] + 1) = v82[2];
  v17 = v35;
  v16 = v36;
  *&v39 = v36;
  *(&v39 + 1) = v35;
  *&v40 = v13;
  *(&v40 + 1) = v65;
  *&v41 = v66;
  BYTE8(v41) = v67;
  v42 = v68;
  v43 = v69;
  v18 = v38[9];
  v19 = v37;
  v37[8] = v38[8];
  v19[9] = v18;
  v20 = v38[5];
  v19[4] = v38[4];
  v19[5] = v20;
  v21 = v38[7];
  v19[6] = v38[6];
  v19[7] = v21;
  v22 = v38[1];
  *v19 = v38[0];
  v19[1] = v22;
  v23 = v38[3];
  v19[2] = v38[2];
  v19[3] = v23;
  v24 = v41;
  v19[12] = v40;
  v19[13] = v24;
  v25 = v43;
  v19[14] = v42;
  v19[15] = v25;
  v26 = v39;
  v19[10] = v38[10];
  v19[11] = v26;
  sub_1A8782210(v38, v44);
  sub_1A85F1084(v83);
  v51 = v82[7];
  v52 = v82[8];
  *v53 = v82[9];
  *&v53[9] = *(&v82[9] + 9);
  v47 = v82[3];
  v48 = v82[4];
  v49 = v82[5];
  v50 = v82[6];
  *&v44[1] = v82[0];
  v45 = v82[1];
  v44[0] = v34;
  v46 = v82[2];
  v54 = v16;
  v55 = v17;
  v56 = v13;
  v57 = v33;
  v58 = v32;
  v59 = v11;
  v60 = v15;
  v61 = v31;
  v62 = v30;
  v63 = v29;
  return sub_1A8782248(v44);
}

uint64_t sub_1A8781D74()
{
  v1 = *v0;
  v2 = 0x73736563637573;
  v3 = 0x49746361746E6F63;
  v4 = 0x616843646574756DLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x666E497075746573;
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

uint64_t sub_1A8781E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8782FA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A8781E54(uint64_t a1)
{
  v2 = sub_1A87820C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8781E90(uint64_t a1)
{
  v2 = sub_1A87820C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1A8781ECC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1A8780C48();
  *a1 = result & 1;
  *(a1 + 8) = v3;
  return result;
}

unint64_t sub_1A8781EFC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1A8602DD4(MEMORY[0x1E69E7CC0]);
  *a1 = 0;
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8781F30(uint64_t a1)
{
  result = sub_1A8781F58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8781F58()
{
  result = qword_1EB305170;
  if (!qword_1EB305170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305170);
  }

  return result;
}

unint64_t sub_1A8781FAC(uint64_t a1)
{
  result = sub_1A8781FD4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8781FD4()
{
  result = qword_1EB305178;
  if (!qword_1EB305178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305178);
  }

  return result;
}

uint64_t sub_1A8782054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A87820C0()
{
  result = qword_1EB305188;
  if (!qword_1EB305188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305188);
  }

  return result;
}

unint64_t sub_1A8782168()
{
  result = qword_1EB305190;
  if (!qword_1EB305190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305190);
  }

  return result;
}

unint64_t sub_1A87821BC()
{
  result = qword_1EB3051A8;
  if (!qword_1EB3051A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3051A8);
  }

  return result;
}

unint64_t sub_1A87822D4()
{
  result = qword_1EB3051B8;
  if (!qword_1EB3051B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3051B8);
  }

  return result;
}

uint64_t sub_1A8782328(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(&qword_1EB305198);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A8782398()
{
  result = qword_1EB3051C8;
  if (!qword_1EB3051C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3051C8);
  }

  return result;
}

uint64_t sub_1A87823EC(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1A878254C(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1A87826AC(v8, v4, v2);
  result = MEMORY[0x1AC571F20](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1A878254C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v19 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 56) + 16 * v14);
    result = *v15;
    if (*v15 != 0xD000000000000016 || 0x80000001A8918730 != v15[1])
    {
      result = sub_1A88C9398();
      if ((result & 1) == 0)
      {
        *(v19 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        if (__OFADD__(v4++, 1))
        {
          __break(1u);
          return sub_1A87B84B8(v19, a2, v4, a3);
        }
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_1A87B84B8(v19, a2, v4, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1A87826AC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1A878254C(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t sub_1A8782724(uint64_t a1)
{
  v6 = sub_1A88C82E8();
  sub_1A88C8D88();
  if (*(a1 + 16) && (v2 = sub_1A8602F10(v7), (v3 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v2, v8);
    sub_1A8717360(v7);
    sub_1A870CCE0(&qword_1EB303B88);
    if (swift_dynamicCast())
    {
      v4 = sub_1A87823EC(v6);

      return v4;
    }
  }

  else
  {
    sub_1A8717360(v7);
  }

  return sub_1A8738BDC(MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1A8782820(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteIntentUnreadCountReport();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8782884(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A88C9398();

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

uint64_t sub_1A87829A0(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB3051E8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_1A870C278(a1, a1[3]);
  sub_1A8782C04();
  sub_1A88C95A8();
  if (!v1)
  {
    v9[31] = 0;
    v7 = sub_1A88C9108();
    v9[30] = 1;
    sub_1A88C9198();
    sub_1A870CCE0(&qword_1EB3051F8);
    v9[29] = 2;
    sub_1A85FB520(&qword_1EB305200, &qword_1EB3051F8);
    sub_1A88C9158();
    (*(v4 + 8))(v6, v3);
  }

  sub_1A85F1084(a1);
  return v7;
}

unint64_t sub_1A8782C04()
{
  result = qword_1EB3051F0;
  if (!qword_1EB3051F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3051F0);
  }

  return result;
}

__n128 sub_1A8782C78(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_1A8782CBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 176);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A8782D04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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
      *(result + 176) = (a2 - 1);
      return result;
    }

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A8782D98()
{
  result = qword_1EB305218;
  if (!qword_1EB305218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305218);
  }

  return result;
}

unint64_t sub_1A8782DF0()
{
  result = qword_1EB305220;
  if (!qword_1EB305220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305220);
  }

  return result;
}

unint64_t sub_1A8782E48()
{
  result = qword_1EB305228;
  if (!qword_1EB305228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305228);
  }

  return result;
}

unint64_t sub_1A8782EA0()
{
  result = qword_1EB305230;
  if (!qword_1EB305230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305230);
  }

  return result;
}

unint64_t sub_1A8782EF8()
{
  result = qword_1EB305238;
  if (!qword_1EB305238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305238);
  }

  return result;
}

unint64_t sub_1A8782F50()
{
  result = qword_1EB305240;
  if (!qword_1EB305240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305240);
  }

  return result;
}

uint64_t sub_1A8782FA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x666E497075746573 && a2 == 0xE90000000000006FLL || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49746361746E6F63 && a2 == 0xEB000000006F666ELL || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616843646574756DLL && a2 == 0xED00007473694C74 || (sub_1A88C9398() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A8918750 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A88C9398();

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

Swift::Void __swiftcall IntentClientBroadcaster.unreadCountChanged(_:)(Swift::Int a1)
{
  v2 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v7 - v3;
  v10 = &type metadata for UnreadCountChangedBroadcast;
  v11 = sub_1A87174F4();
  v8[0] = a1;
  v8[1] = 0;
  v9 = 2;
  v5 = sub_1A88C87A8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1A86061B4(v8, v7);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_1A860D56C(v7, v6 + 32);
  sub_1A885A178(0, 0, v4, &unk_1A88E8688, v6);

  sub_1A85F1084(v8);
}

Swift::Void __swiftcall IntentClientBroadcaster.lastFailedMessageDateChanged(_:)(Swift::Int64 a1)
{
  v2 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v7 - v3;
  v8[3] = &type metadata for LastFailedMessageDateChangedBroadcast;
  v8[4] = sub_1A87179E0();
  v8[0] = a1;
  v5 = sub_1A88C87A8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1A86061B4(v8, v7);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_1A860D56C(v7, v6 + 32);
  sub_1A885A178(0, 0, v4, &unk_1A88E8690, v6);

  sub_1A85F1084(v8);
}

size_t _s17IMSharedUtilities23IntentClientBroadcasterC18unreadCountChanged_7reportsySi_SaySo08IMUnreadG6ReportCGtF_0(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for RemoteIntentUnreadCountReport();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - v9;
  v11 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - v12;
  if (a2 >> 62)
  {
    v14 = sub_1A88C8D38();
  }

  else
  {
    v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
LABEL_16:
    v31 = &type metadata for UnreadCountChangedBroadcast;
    v32 = sub_1A87174F4();
    v29[0] = a1;
    v29[1] = v15;
    v30 = 1;
    v24 = sub_1A88C87A8();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
    sub_1A86061B4(v29, v28);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    sub_1A860D56C(v28, v25 + 32);
    sub_1A885A178(0, 0, v13, &unk_1A88E8B98, v25);

    return sub_1A85F1084(v29);
  }

  v29[0] = MEMORY[0x1E69E7CC0];
  result = sub_1A871D64C(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v27 = a1;
    v15 = v29[0];
    if ((a2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v14; ++i)
      {
        MEMORY[0x1AC56F710](i, a2);
        IMUnreadCountReport.remoteIntentRepresentation.getter(v10);
        swift_unknownObjectRelease();
        v29[0] = v15;
        v19 = *(v15 + 16);
        v18 = *(v15 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1A871D64C(v18 > 1, v19 + 1, 1);
          v15 = v29[0];
        }

        *(v15 + 16) = v19 + 1;
        sub_1A8782820(v10, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19);
      }
    }

    else
    {
      v20 = (a2 + 32);
      do
      {
        v21 = *v20;
        IMUnreadCountReport.remoteIntentRepresentation.getter(v8);

        v29[0] = v15;
        v23 = *(v15 + 16);
        v22 = *(v15 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1A871D64C(v22 > 1, v23 + 1, 1);
          v15 = v29[0];
        }

        *(v15 + 16) = v23 + 1;
        sub_1A8782820(v8, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23);
        ++v20;
        --v14;
      }

      while (v14);
    }

    a1 = v27;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t _s17IMSharedUtilities23IntentClientBroadcasterC25unreadCountReportsUpdatedyySo08IMUnreadG11ReportDeltaCF_0()
{
  v0 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  IMUnreadCountReportDelta.remoteIntentRepresentation.getter(v15);
  v3 = v15[0];
  v4 = v15[1];
  v5 = v16;
  v6 = sub_1A8717548();
  v12 = v18;
  v13 = v17;
  *&v17 = &type metadata for UnreadCountReportsUpdatedBroadcast;
  *(&v17 + 1) = v6;
  v7 = swift_allocObject();
  v15[0] = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v5;
  v8 = v13;
  *(v7 + 56) = v12;
  *(v7 + 40) = v8;
  v9 = sub_1A88C87A8();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  sub_1A86061B4(v15, v14);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_1A860D56C(v14, v10 + 32);
  sub_1A885A178(0, 0, v2, &unk_1A88E8B90, v10);

  return sub_1A85F1084(v15);
}

unint64_t sub_1A8783C24()
{
  result = qword_1ED8C9210;
  if (!qword_1ED8C9210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8C9210);
  }

  return result;
}

void sub_1A8783C70(uint64_t a1, unint64_t a2)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v4 = sub_1A88C7E58();
  sub_1A85EF0E4(v4, qword_1EB338DF8);

  oslog = sub_1A88C7E38();
  v5 = sub_1A88C89B8();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1A85F0394(a1, a2, &v9);
    _os_log_impl(&dword_1A85E5000, oslog, v5, "IntentClientBroadcaster stub called: %s.", v6, 0xCu);
    sub_1A85F1084(v7);
    MEMORY[0x1AC571F20](v7, -1, -1);
    MEMORY[0x1AC571F20](v6, -1, -1);
  }
}

uint64_t sub_1A8783DC8()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB338DF8);
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  return sub_1A88C7E48();
}

Swift::Void __swiftcall IntentClientBroadcaster.pendingVCRequestComplete()()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD00000000000001ALL, 0x80000001A89187A0, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.pendingACRequestComplete()()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD00000000000001ALL, 0x80000001A89187C0, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.vcCapabilitiesChanged(_:)(Swift::UInt64 a1)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD000000000000019, 0x80000001A89187E0, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.updateCloudKitState()()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD000000000000015, 0x80000001A8918800, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.didAttemptToSetEnabled(to:result:)(Swift::Bool to, Swift::Bool result)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD000000000000022, 0x80000001A8918820, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

void IntentClientBroadcaster.didPerformAdditionalStorageRequiredCheck(withSuccess:additionalStorageRequired:forAccountId:error:)()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD000000000000063, 0x80000001A8918850, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.didAttempt(toDisableAllDevicesResult:)(Swift::Bool toDisableAllDevicesResult)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD000000000000026, 0x80000001A89188C0, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

void IntentClientBroadcaster.nicknameRequestResponse(_:encodedNicknameData:)()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD00000000000002FLL, 0x80000001A89188F0, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

void IntentClientBroadcaster.updateTransitionedNicknameHandles(_:)()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD000000000000025, 0x80000001A8918920, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.updateActiveNicknameRecords(_:)(Swift::OpaquePointer a1)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD00000000000001FLL, 0x80000001A8918950, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.updateIgnoredNicknameRecords(_:)(Swift::OpaquePointer a1)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD000000000000020, 0x80000001A8918970, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.updateUnknownSenderRecords(_:)(Swift::OpaquePointer a1)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD00000000000001ELL, 0x80000001A89189A0, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.updatePersonalNickname(_:)(IMNickname *a1)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD00000000000001ALL, 0x80000001A89189C0, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.simSubscriptionsDidChange()()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD00000000000001BLL, 0x80000001A89189E0, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.newSetupInfoAvailable()()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD000000000000017, 0x80000001A8918A00, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.networkDataAvailabilityChanged(_:)(Swift::Bool a1)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD000000000000022, 0x80000001A8918A20, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

void IntentClientBroadcaster.property(_:changedTo:from:)()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD00000000000001BLL, 0x80000001A8918A50, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

void IntentClientBroadcaster.persistentProperty(_:changedTo:from:)()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD000000000000025, 0x80000001A8918A70, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.stickerPackUpdated(_:)(Swift::OpaquePointer a1)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD000000000000016, 0x80000001A8918AA0, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.stickerPackRemoved(_:)(Swift::OpaquePointer a1)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD000000000000016, 0x80000001A8918AC0, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.oneTimeCodesDidChange(_:)(Swift::OpaquePointer a1)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD000000000000019, 0x80000001A8918AE0, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.didFetchSyncStateStats(_:)(Swift::OpaquePointer a1)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD00000000000001ALL, 0x80000001A8918B00, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.didFetchRampState(_:)(Swift::OpaquePointer a1)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD000000000000015, 0x80000001A8918B20, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

void IntentClientBroadcaster.didAttempt(toDisableiCloudBackups:error:)()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD000000000000029, 0x80000001A8918B40, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.didFetchCloudKitSyncDebuggingInfo(_:)(Swift::OpaquePointer a1)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD000000000000025, 0x80000001A8918B70, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.account(_:conference:receivedInvitationFrom:properties:)(Swift::String _, Swift::String conference, Swift::OpaquePointer receivedInvitationFrom, Swift::OpaquePointer properties)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v4 = sub_1A88C7E58();
  sub_1A85EF0E4(v4, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v5 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1A85F0394(0xD000000000000038, 0x80000001A8918BA0, &v9);
    _os_log_impl(&dword_1A85E5000, oslog, v5, "IntentClientBroadcaster stub called: %s.", v6, 0xCu);
    sub_1A85F1084(v7);
    MEMORY[0x1AC571F20](v7, -1, -1);
    MEMORY[0x1AC571F20](v6, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.account(_:conference:receivedResponseToInvitationFrom:properties:)(Swift::String _, Swift::String conference, Swift::OpaquePointer receivedResponseToInvitationFrom, Swift::OpaquePointer properties)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v4 = sub_1A88C7E58();
  sub_1A85EF0E4(v4, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v5 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1A85F0394(0xD000000000000042, 0x80000001A8918BE0, &v9);
    _os_log_impl(&dword_1A85E5000, oslog, v5, "IntentClientBroadcaster stub called: %s.", v6, 0xCu);
    sub_1A85F1084(v7);
    MEMORY[0x1AC571F20](v7, -1, -1);
    MEMORY[0x1AC571F20](v6, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.account(_:conference:receivedCancelInvitationFrom:properties:)(Swift::String _, Swift::String conference, Swift::OpaquePointer receivedCancelInvitationFrom, Swift::OpaquePointer properties)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v4 = sub_1A88C7E58();
  sub_1A85EF0E4(v4, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v5 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1A85F0394(0xD00000000000003ELL, 0x80000001A8918C30, &v9);
    _os_log_impl(&dword_1A85E5000, oslog, v5, "IntentClientBroadcaster stub called: %s.", v6, 0xCu);
    sub_1A85F1084(v7);
    MEMORY[0x1AC571F20](v7, -1, -1);
    MEMORY[0x1AC571F20](v6, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.account(_:conference:receivedCounterProposalFrom:properties:)(Swift::String _, Swift::String conference, Swift::OpaquePointer receivedCounterProposalFrom, Swift::OpaquePointer properties)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v4 = sub_1A88C7E58();
  sub_1A85EF0E4(v4, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v5 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1A85F0394(0xD00000000000003DLL, 0x80000001A8918C70, &v9);
    _os_log_impl(&dword_1A85E5000, oslog, v5, "IntentClientBroadcaster stub called: %s.", v6, 0xCu);
    sub_1A85F1084(v7);
    MEMORY[0x1AC571F20](v7, -1, -1);
    MEMORY[0x1AC571F20](v6, -1, -1);
  }
}

void IntentClientBroadcaster.account(_:conference:receivedUpdateFrom:data:)()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD00000000000002ELL, 0x80000001A8918CB0, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.account(_:conference:receivedAVMessage:from:sessionID:userInfo:)(Swift::String _, Swift::String conference, Swift::UInt32 receivedAVMessage, Swift::OpaquePointer from, Swift::UInt32 sessionID, Swift::OpaquePointer_optional userInfo)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v6 = sub_1A88C7E58();
  sub_1A85EF0E4(v6, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v7 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1A85F0394(0xD000000000000040, 0x80000001A8918CE0, &v11);
    _os_log_impl(&dword_1A85E5000, oslog, v7, "IntentClientBroadcaster stub called: %s.", v8, 0xCu);
    sub_1A85F1084(v9);
    MEMORY[0x1AC571F20](v9, -1, -1);
    MEMORY[0x1AC571F20](v8, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.account(_:conference:changedToNewConferenceID:)(Swift::String _, Swift::String conference, Swift::String changedToNewConferenceID)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v3 = sub_1A88C7E58();
  sub_1A85EF0E4(v3, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v4 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1A85F0394(0xD00000000000002FLL, 0x80000001A8918D30, &v8);
    _os_log_impl(&dword_1A85E5000, oslog, v4, "IntentClientBroadcaster stub called: %s.", v5, 0xCu);
    sub_1A85F1084(v6);
    MEMORY[0x1AC571F20](v6, -1, -1);
    MEMORY[0x1AC571F20](v5, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.account(_:conference:peerIDChangedFromID:toID:)(Swift::String _, Swift::String conference, Swift::String peerIDChangedFromID, Swift::String toID)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v4 = sub_1A88C7E58();
  sub_1A85EF0E4(v4, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v5 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1A85F0394(0xD00000000000002FLL, 0x80000001A8918D60, &v9);
    _os_log_impl(&dword_1A85E5000, oslog, v5, "IntentClientBroadcaster stub called: %s.", v6, 0xCu);
    sub_1A85F1084(v7);
    MEMORY[0x1AC571F20](v7, -1, -1);
    MEMORY[0x1AC571F20](v6, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.account(_:conference:peerID:propertiesUpdated:)(Swift::String _, Swift::String conference, Swift::String_optional peerID, Swift::OpaquePointer propertiesUpdated)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v4 = sub_1A88C7E58();
  sub_1A85EF0E4(v4, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v5 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1A85F0394(0xD00000000000002FLL, 0x80000001A8918D90, &v9);
    _os_log_impl(&dword_1A85E5000, oslog, v5, "IntentClientBroadcaster stub called: %s.", v6, 0xCu);
    sub_1A85F1084(v7);
    MEMORY[0x1AC571F20](v7, -1, -1);
    MEMORY[0x1AC571F20](v6, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.account(_:conference:invitationSentSuccessfully:)(Swift::String _, Swift::String conference, Swift::Bool invitationSentSuccessfully)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v3 = sub_1A88C7E58();
  sub_1A85EF0E4(v3, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v4 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1A85F0394(0xD000000000000031, 0x80000001A8918DC0, &v8);
    _os_log_impl(&dword_1A85E5000, oslog, v4, "IntentClientBroadcaster stub called: %s.", v5, 0xCu);
    sub_1A85F1084(v6);
    MEMORY[0x1AC571F20](v6, -1, -1);
    MEMORY[0x1AC571F20](v5, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.account(_:avAction:withArguments:toAVChat:isVideo:)(Swift::String _, Swift::UInt32 avAction, Swift::OpaquePointer withArguments, Swift::String toAVChat, Swift::Bool isVideo)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v5 = sub_1A88C7E58();
  sub_1A85EF0E4(v5, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v6 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1A85F0394(0xD000000000000033, 0x80000001A8918E00, &v10);
    _os_log_impl(&dword_1A85E5000, oslog, v6, "IntentClientBroadcaster stub called: %s.", v7, 0xCu);
    sub_1A85F1084(v8);
    MEMORY[0x1AC571F20](v8, -1, -1);
    MEMORY[0x1AC571F20](v7, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.account(_:relay:handleInitate:fromPerson:)(Swift::String _, Swift::String relay, Swift::OpaquePointer handleInitate, Swift::OpaquePointer fromPerson)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v4 = sub_1A88C7E58();
  sub_1A85EF0E4(v4, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v5 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1A85F0394(0xD00000000000002ALL, 0x80000001A8918E40, &v9);
    _os_log_impl(&dword_1A85E5000, oslog, v5, "IntentClientBroadcaster stub called: %s.", v6, 0xCu);
    sub_1A85F1084(v7);
    MEMORY[0x1AC571F20](v7, -1, -1);
    MEMORY[0x1AC571F20](v6, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.account(_:relay:handleUpdate:fromPerson:)(Swift::String _, Swift::String relay, Swift::OpaquePointer handleUpdate, Swift::OpaquePointer fromPerson)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v4 = sub_1A88C7E58();
  sub_1A85EF0E4(v4, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v5 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1A85F0394(0xD000000000000029, 0x80000001A8918E70, &v9);
    _os_log_impl(&dword_1A85E5000, oslog, v5, "IntentClientBroadcaster stub called: %s.", v6, 0xCu);
    sub_1A85F1084(v7);
    MEMORY[0x1AC571F20](v7, -1, -1);
    MEMORY[0x1AC571F20](v6, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.account(_:relay:handleCancel:fromPerson:)(Swift::String _, Swift::String relay, Swift::OpaquePointer handleCancel, Swift::OpaquePointer fromPerson)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v4 = sub_1A88C7E58();
  sub_1A85EF0E4(v4, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v5 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1A85F0394(0xD000000000000029, 0x80000001A8918EA0, &v9);
    _os_log_impl(&dword_1A85E5000, oslog, v5, "IntentClientBroadcaster stub called: %s.", v6, 0xCu);
    sub_1A85F1084(v7);
    MEMORY[0x1AC571F20](v7, -1, -1);
    MEMORY[0x1AC571F20](v6, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.messageQuery(_:finishedWithResult:chatGUIDs:)(Swift::String _, IMMessageItem_optional *finishedWithResult, Swift::OpaquePointer chatGUIDs)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v3 = sub_1A88C7E58();
  sub_1A85EF0E4(v3, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v4 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1A85F0394(0xD00000000000002DLL, 0x80000001A8918ED0, &v8);
    _os_log_impl(&dword_1A85E5000, oslog, v4, "IntentClientBroadcaster stub called: %s.", v5, 0xCu);
    sub_1A85F1084(v6);
    MEMORY[0x1AC571F20](v6, -1, -1);
    MEMORY[0x1AC571F20](v5, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.messageItemQuery(_:finishedWithResult:chatGUIDs:)(Swift::String _, IMMessageItem_optional *finishedWithResult, Swift::OpaquePointer chatGUIDs)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v3 = sub_1A88C7E58();
  sub_1A85EF0E4(v3, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v4 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1A85F0394(0xD000000000000031, 0x80000001A8918F00, &v8);
    _os_log_impl(&dword_1A85E5000, oslog, v4, "IntentClientBroadcaster stub called: %s.", v5, 0xCu);
    sub_1A85F1084(v6);
    MEMORY[0x1AC571F20](v6, -1, -1);
    MEMORY[0x1AC571F20](v5, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.itemQuery(_:finishedWithResult:chatGUIDs:)(Swift::String _, IMItem_optional *finishedWithResult, Swift::OpaquePointer chatGUIDs)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v3 = sub_1A88C7E58();
  sub_1A85EF0E4(v3, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v4 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1A85F0394(0xD00000000000002ALL, 0x80000001A8918F40, &v8);
    _os_log_impl(&dword_1A85E5000, oslog, v4, "IntentClientBroadcaster stub called: %s.", v5, 0xCu);
    sub_1A85F1084(v6);
    MEMORY[0x1AC571F20](v6, -1, -1);
    MEMORY[0x1AC571F20](v5, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.historyQuery(_:chatID:services:finishedWithResult:limit:)(Swift::String _, Swift::String chatID, Swift::OpaquePointer services, Swift::OpaquePointer_optional finishedWithResult, Swift::Int limit)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v5 = sub_1A88C7E58();
  sub_1A85EF0E4(v5, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v6 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1A85F0394(0xD000000000000039, 0x80000001A8918F70, &v10);
    _os_log_impl(&dword_1A85E5000, oslog, v6, "IntentClientBroadcaster stub called: %s.", v7, 0xCu);
    sub_1A85F1084(v8);
    MEMORY[0x1AC571F20](v8, -1, -1);
    MEMORY[0x1AC571F20](v7, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.pagedHistoryQuery(_:chatID:services:numberOfMessagesBefore:numberOfMessagesAfter:finishedWithResult:hasMessagesBefore:hasMessagesAfter:)(Swift::String _, Swift::String chatID, Swift::OpaquePointer services, Swift::Int numberOfMessagesBefore, Swift::Int numberOfMessagesAfter, Swift::OpaquePointer_optional finishedWithResult, Swift::Bool hasMessagesBefore, Swift::Bool hasMessagesAfter)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v8 = sub_1A88C7E58();
  sub_1A85EF0E4(v8, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v9 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1A85F0394(0xD000000000000088, 0x80000001A8918FB0, &v13);
    _os_log_impl(&dword_1A85E5000, oslog, v9, "IntentClientBroadcaster stub called: %s.", v10, 0xCu);
    sub_1A85F1084(v11);
    MEMORY[0x1AC571F20](v11, -1, -1);
    MEMORY[0x1AC571F20](v10, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.attachmentQuery(_:chatID:services:finishedWithResult:)(Swift::String _, Swift::String chatID, Swift::OpaquePointer services, Swift::OpaquePointer_optional finishedWithResult)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v4 = sub_1A88C7E58();
  sub_1A85EF0E4(v4, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v5 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1A85F0394(0xD000000000000036, 0x80000001A8919040, &v9);
    _os_log_impl(&dword_1A85E5000, oslog, v5, "IntentClientBroadcaster stub called: %s.", v6, 0xCu);
    sub_1A85F1084(v7);
    MEMORY[0x1AC571F20](v7, -1, -1);
    MEMORY[0x1AC571F20](v6, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.uncachedAttachmentCountQuery(_:chatID:services:finishedWithResult:)(Swift::String _, Swift::String chatID, Swift::OpaquePointer services, NSNumber_optional finishedWithResult)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v4 = sub_1A88C7E58();
  sub_1A85EF0E4(v4, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v5 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1A85F0394(0xD000000000000043, 0x80000001A8919080, &v9);
    _os_log_impl(&dword_1A85E5000, oslog, v5, "IntentClientBroadcaster stub called: %s.", v6, 0xCu);
    sub_1A85F1084(v7);
    MEMORY[0x1AC571F20](v7, -1, -1);
    MEMORY[0x1AC571F20](v6, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.isDownloadingQuery(_:chatID:services:finishedWithResult:)(Swift::String _, Swift::String chatID, Swift::OpaquePointer services, Swift::Bool finishedWithResult)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v4 = sub_1A88C7E58();
  sub_1A85EF0E4(v4, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v5 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1A85F0394(0xD000000000000039, 0x80000001A89190D0, &v9);
    _os_log_impl(&dword_1A85E5000, oslog, v5, "IntentClientBroadcaster stub called: %s.", v6, 0xCu);
    sub_1A85F1084(v7);
    MEMORY[0x1AC571F20](v7, -1, -1);
    MEMORY[0x1AC571F20](v6, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.mark(asSpamQuery:chatID:services:finishedWithResult:)(Swift::String asSpamQuery, Swift::String chatID, Swift::OpaquePointer services, NSNumber_optional finishedWithResult)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v4 = sub_1A88C7E58();
  sub_1A85EF0E4(v4, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v5 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1A85F0394(0xD000000000000035, 0x80000001A8919110, &v9);
    _os_log_impl(&dword_1A85E5000, oslog, v5, "IntentClientBroadcaster stub called: %s.", v6, 0xCu);
    sub_1A85F1084(v7);
    MEMORY[0x1AC571F20](v7, -1, -1);
    MEMORY[0x1AC571F20](v6, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.frequentRepliesQuery(_:chatID:services:finishedWithResult:limit:)(Swift::String _, Swift::String chatID, Swift::OpaquePointer services, Swift::OpaquePointer_optional finishedWithResult, Swift::Int limit)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v5 = sub_1A88C7E58();
  sub_1A85EF0E4(v5, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v6 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1A85F0394(0xD000000000000041, 0x80000001A8919150, &v10);
    _os_log_impl(&dword_1A85E5000, oslog, v6, "IntentClientBroadcaster stub called: %s.", v7, 0xCu);
    sub_1A85F1084(v8);
    MEMORY[0x1AC571F20](v8, -1, -1);
    MEMORY[0x1AC571F20](v7, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster._automation_mark(asReadQuery:finishedWithResult:)(Swift::String asReadQuery, Swift::Bool finishedWithResult)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD000000000000031, 0x80000001A89191A0, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.updateCloudKitState(with:)(Swift::OpaquePointer with)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD00000000000001ALL, 0x80000001A89191E0, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.updateCloudKitProgress(with:)(Swift::OpaquePointer with)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD00000000000001DLL, 0x80000001A8919200, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.receivedUrgentRequest(forMessages:)(Swift::OpaquePointer forMessages)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD000000000000023, 0x80000001A8919220, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.defaultsChanged(_:forService:)(Swift::OpaquePointer _, Swift::String forService)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD00000000000001ELL, 0x80000001A8919250, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.showInvalidCertNotification(forAccount:)(Swift::String forAccount)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD000000000000028, 0x80000001A8919270, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.showForgotPasswordNotification(forAccount:)(Swift::String forAccount)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD00000000000002BLL, 0x80000001A89192A0, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.activeAccountsChanged(_:forService:)(Swift::OpaquePointer _, Swift::String forService)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD000000000000024, 0x80000001A89192D0, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

void IntentClientBroadcaster.account(_:defaults:blockList:allowList:blockingMode:blockIdleStatus:status:capabilities:serviceLoginStatus:loginStatusMessage:)()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD00000000000007FLL, 0x80000001A8919300, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

void IntentClientBroadcaster.account(_:loginStatusChanged:message:reason:properties:)()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD000000000000038, 0x80000001A8919380, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.account(_:defaultsChanged:)(Swift::String _, Swift::OpaquePointer defaultsChanged)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD00000000000001BLL, 0x80000001A89193C0, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.account(_:capabilitiesChanged:)(Swift::String _, Swift::UInt64 capabilitiesChanged)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD00000000000001FLL, 0x80000001A89193E0, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.accountAdded(_:defaults:service:)(Swift::String _, Swift::OpaquePointer defaults, Swift::String service)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v3 = sub_1A88C7E58();
  sub_1A85EF0E4(v3, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v4 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1A85F0394(0xD000000000000021, 0x80000001A8919400, &v8);
    _os_log_impl(&dword_1A85E5000, oslog, v4, "IntentClientBroadcaster stub called: %s.", v5, 0xCu);
    sub_1A85F1084(v6);
    MEMORY[0x1AC571F20](v6, -1, -1);
    MEMORY[0x1AC571F20](v5, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.accountRemoved(_:)(Swift::String a1)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD000000000000012, 0x80000001A8919430, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.account(_:blockListChanged:)(Swift::String _, Swift::OpaquePointer blockListChanged)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD00000000000001CLL, 0x80000001A8919450, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.account(_:allowListChanged:)(Swift::String _, Swift::OpaquePointer allowListChanged)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD00000000000001CLL, 0x80000001A8919470, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

void IntentClientBroadcaster.account(_:blockingModeChanged:)()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD00000000000001FLL, 0x80000001A8919490, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.account(_:blockIdleStatusChanged:)(Swift::String _, Swift::Bool blockIdleStatusChanged)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD000000000000022, 0x80000001A89194B0, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.account(_:buddyPropertiesChanged:)(Swift::String _, Swift::OpaquePointer buddyPropertiesChanged)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD000000000000022, 0x80000001A89194E0, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

void IntentClientBroadcaster.account(_:buddyPictureChanged:imageData:imageHash:)()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD000000000000033, 0x80000001A8919510, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.account(_:buddyProperties:buddyPictures:)(Swift::String _, Swift::OpaquePointer buddyProperties, Swift::OpaquePointer buddyPictures)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v3 = sub_1A88C7E58();
  sub_1A85EF0E4(v3, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v4 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1A85F0394(0xD000000000000029, 0x80000001A8919550, &v8);
    _os_log_impl(&dword_1A85E5000, oslog, v4, "IntentClientBroadcaster stub called: %s.", v5, 0xCu);
    sub_1A85F1084(v6);
    MEMORY[0x1AC571F20](v6, -1, -1);
    MEMORY[0x1AC571F20](v5, -1, -1);
  }
}

void IntentClientBroadcaster.account(_:groupsChanged:error:)()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD00000000000001FLL, 0x80000001A8919580, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.account(_:handleSubscriptionRequestFrom:withMessage:)(Swift::String _, Swift::OpaquePointer handleSubscriptionRequestFrom, Swift::String withMessage)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v3 = sub_1A88C7E58();
  sub_1A85EF0E4(v3, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v4 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1A85F0394(0xD000000000000035, 0x80000001A89195A0, &v8);
    _os_log_impl(&dword_1A85E5000, oslog, v4, "IntentClientBroadcaster stub called: %s.", v5, 0xCu);
    sub_1A85F1084(v6);
    MEMORY[0x1AC571F20](v6, -1, -1);
    MEMORY[0x1AC571F20](v5, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.account(_:statusChanged:)(Swift::String _, Swift::OpaquePointer statusChanged)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD000000000000019, 0x80000001A89195E0, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

void IntentClientBroadcaster.account(_:postedError:)()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD000000000000017, 0x80000001A8919600, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

void IntentClientBroadcaster.updateNicknameData(_:)()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD000000000000016, 0x80000001A8919620, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.didUpdate(settingsKeys:)(Swift::OpaquePointer_optional settingsKeys)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD000000000000018, 0x80000001A8919640, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.setupComplete(_:info:)(Swift::Bool _, Swift::OpaquePointer info)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD000000000000016, 0x80000001A8919660, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.setupComplete()()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0x6D6F437075746573, 0xEF29286574656C70, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

void IntentClientBroadcaster.didReceiveCollaborationMessage(_:inChat:style:account:)()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD000000000000037, 0x80000001A8919680, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.keyTransparencyOptInStateChanged(_:)(Swift::Bool a1)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD000000000000024, 0x80000001A89196C0, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.refreshStatus(forKTPeerURI:)(Swift::String forKTPeerURI)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD00000000000001CLL, 0x80000001A89196F0, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.fileTransfer(_:createdWithProperties:)(Swift::String _, Swift::OpaquePointer createdWithProperties)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD000000000000026, 0x80000001A8919910, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.fileTransfer(_:updatedWithProperties:)(Swift::String _, Swift::OpaquePointer updatedWithProperties)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v5 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v12[3] = &type metadata for FileTransferUpdatedWithPropertiesBroadcast;
  v8 = sub_1A8717C20();
  v12[0] = countAndFlagsBits;
  v12[1] = object;
  v12[4] = v8;
  v12[2] = updatedWithProperties._rawValue;
  v9 = sub_1A88C87A8();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_1A86061B4(v12, v11);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_1A860D56C(v11, v10 + 32);

  sub_1A885A178(0, 0, v7, &unk_1A88E8688, v10);

  sub_1A85F1084(v12);
}

Swift::Void __swiftcall IntentClientBroadcaster.fileTransfers(_:createdWithLocalPaths:)(Swift::OpaquePointer _, Swift::OpaquePointer createdWithLocalPaths)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD000000000000027, 0x80000001A8919940, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.fileTransfer(_:updatedWithCurrentBytes:totalBytes:averageTransferRate:)(Swift::String _, Swift::UInt64 updatedWithCurrentBytes, Swift::UInt64 totalBytes, Swift::UInt64 averageTransferRate)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v4 = sub_1A88C7E58();
  sub_1A85EF0E4(v4, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v5 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1A85F0394(0xD000000000000047, 0x80000001A8919970, &v9);
    _os_log_impl(&dword_1A85E5000, oslog, v5, "IntentClientBroadcaster stub called: %s.", v6, 0xCu);
    sub_1A85F1084(v7);
    MEMORY[0x1AC571F20](v7, -1, -1);
    MEMORY[0x1AC571F20](v6, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.fileTransferFinishedRemoteIntentDownload(_:)(Swift::String a1)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD00000000000002CLL, 0x80000001A89199C0, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.fileTransfer(_:rejectedWithProperties:)(Swift::String _, Swift::OpaquePointer rejectedWithProperties)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD000000000000027, 0x80000001A89199F0, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

uint64_t IntentClientBroadcaster.broadcast(_:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = sub_1A870C278(a1, v1);

  return sub_1A878C0C0(v3, v1, v2);
}

id IntentClientBroadcaster.__allocating_init(safeRenderProvider:chatContactsProvider:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  sub_1A86061B4(a1, v5 + OBJC_IVAR____TtC17IMSharedUtilities23IntentClientBroadcaster_safeRenderProvider);
  sub_1A86061B4(a2, v5 + OBJC_IVAR____TtC17IMSharedUtilities23IntentClientBroadcaster_chatContactsProvider);
  v8.receiver = v5;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_1A85F1084(a2);
  sub_1A85F1084(a1);
  return v6;
}

id IntentClientBroadcaster.init(safeRenderProvider:chatContactsProvider:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_1A86061B4(a1, v2 + OBJC_IVAR____TtC17IMSharedUtilities23IntentClientBroadcaster_safeRenderProvider);
  sub_1A86061B4(a2, v2 + OBJC_IVAR____TtC17IMSharedUtilities23IntentClientBroadcaster_chatContactsProvider);
  v8.receiver = v2;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_1A85F1084(a2);
  sub_1A85F1084(a1);
  return v6;
}

uint64_t sub_1A878BC80()
{
  *(v0 + 24) = sub_1A88C8768();
  *(v0 + 32) = sub_1A88C8758();
  v2 = sub_1A88C86D8();

  return MEMORY[0x1EEE6DFA0](sub_1A878BD18, v2, v1);
}

uint64_t sub_1A878BD18()
{

  if (qword_1EB300460 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1A878BDB0, 0, 0);
}

uint64_t sub_1A878BDB0()
{
  *(v0 + 40) = sub_1A88C8758();
  v2 = sub_1A88C86D8();

  return MEMORY[0x1EEE6DFA0](sub_1A878BE3C, v2, v1);
}

uint64_t sub_1A878BE3C()
{

  *(v0 + 48) = qword_1EB300468;

  return MEMORY[0x1EEE6DFA0](sub_1A878BEB0, 0, 0);
}

uint64_t sub_1A878BEB0()
{
  *(v0 + 56) = sub_1A88C8758();
  v2 = sub_1A88C86D8();

  return MEMORY[0x1EEE6DFA0](sub_1A878BF3C, v2, v1);
}

uint64_t sub_1A878BF3C()
{
  v1 = *(v0 + 16);

  sub_1A8726CA0(v1);
  v2 = *(v0 + 8);

  return v2();
}

id IntentClientBroadcaster.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IntentClientBroadcaster.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A878C0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v13 - v7;
  v14[3] = a2;
  v14[4] = a3;
  v9 = sub_1A871E00C(v14);
  (*(*(a2 - 8) + 16))(v9, a1, a2);
  v10 = sub_1A88C87A8();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_1A86061B4(v14, v13);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_1A860D56C(v13, v11 + 32);
  sub_1A885A178(0, 0, v8, &unk_1A88E8688, v11);

  return sub_1A85F1084(v14);
}

uint64_t sub_1A878C278(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A870CCE0(&unk_1EB305300);
    v2 = sub_1A88C9008();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    sub_1A870CCE0(&qword_1EB303758);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1A85E99B0(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1A85E99B0(v29, v30);
    result = sub_1A88C8D68();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_1A85E99B0(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1A878C550(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A870CCE0(&unk_1EB3052D0);
    v1 = sub_1A88C9008();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v24 = *(*(a1 + 56) + v11);
    v13 = v12;

    sub_1A870CCE0(&unk_1EB3091D0);
    swift_dynamicCast();
    sub_1A85E99B0((v25 + 8), v23);
    sub_1A85E99B0(v23, v25);
    sub_1A88C82E8();
    sub_1A88C9528();
    sub_1A88C8268();
    v14 = sub_1A88C9578();

    v15 = -1 << *(v1 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v6 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v6 + 8 * v17);
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v6 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v13;
    result = sub_1A85E99B0(v25, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1A878C804(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A870CCE0(&unk_1EB305300);
    v2 = sub_1A88C9008();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1A85F1028(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1A85E99B0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1A85E99B0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1A85E99B0(v31, v32);
    result = sub_1A88C8D68();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1A85E99B0(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1A878CAD8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A870CCE0(&unk_1EB305300);
    v2 = sub_1A88C9008();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1A85E99B0(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1A85E99B0(v29, v30);
    result = sub_1A88C8D68();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_1A85E99B0(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1A878CD8C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A870CCE0(&unk_1EB305300);
    v2 = sub_1A88C9008();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    sub_1A85E9718(0, &qword_1ED8C9450);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1A85E99B0(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1A85E99B0(v31, v32);
    result = sub_1A88C8D68();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1A85E99B0(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1A878D05C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A870CCE0(&unk_1EB3052F0);
    v2 = sub_1A88C9008();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);
        sub_1A85E9718(0, &qword_1ED8C9450);

        v19 = v18;
        swift_dynamicCast();
        sub_1A85E99B0(&v25, v27);
        sub_1A85E99B0(v27, v28);
        sub_1A85E99B0(v28, &v26);
        result = sub_1A85F5F40(v17, v16);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_1A85F1084(v11);
          result = sub_1A85E99B0(&v26, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v17;
          v21[1] = v16;
          result = sub_1A85E99B0(&v26, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1A878D2C8()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB305260);
  sub_1A85EF0E4(v0, qword_1EB305260);
  return sub_1A88C7E48();
}

uint64_t sub_1A878D3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v13 = sub_1A870CCE0(&unk_1EB3090D0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v21 - v15;
  v22[3] = a4;
  v17 = a5(v14);
  v22[0] = a1;
  v22[1] = a2;
  v22[4] = v17;
  v22[2] = a3;
  v18 = sub_1A88C87A8();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  sub_1A86061B4(v22, v21);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  sub_1A860D56C(v21, v19 + 32);

  sub_1A885A178(0, 0, v16, a7, v19);

  return sub_1A85F1084(v22);
}

uint64_t sub_1A878D598(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8)
{
  v12 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v24 - v13;
  v15 = sub_1A88C82E8();
  v17 = v16;
  v18 = sub_1A88C81A8();
  v25[3] = a5;
  v19 = a6();
  v25[0] = v15;
  v25[1] = v17;
  v25[4] = v19;
  v25[2] = v18;
  v20 = sub_1A88C87A8();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  sub_1A86061B4(v25, v24);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  sub_1A860D56C(v24, v21 + 32);
  v22 = a1;

  sub_1A885A178(0, 0, v14, a8, v21);

  sub_1A85F1084(v25);
}

Swift::Void __swiftcall IntentClientBroadcaster.chat(_:lastAddressedHandleUpdated:)(Swift::String _, Swift::String lastAddressedHandleUpdated)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD000000000000023, 0x80000001A8919B10, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.chat(_:lastAddressedSIMIDUpdated:)(Swift::String _, Swift::String lastAddressedSIMIDUpdated)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD000000000000022, 0x80000001A8919B40, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.chat(_:lastAddressedHandleUpdated:lastAddressedSIMIDUpdated:)(Swift::String _, Swift::String lastAddressedHandleUpdated, Swift::String lastAddressedSIMIDUpdated)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v3 = sub_1A88C7E58();
  sub_1A85EF0E4(v3, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v4 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1A85F0394(0xD00000000000003DLL, 0x80000001A8919B70, &v8);
    _os_log_impl(&dword_1A85E5000, oslog, v4, "IntentClientBroadcaster stub called: %s.", v5, 0xCu);
    sub_1A85F1084(v6);
    MEMORY[0x1AC571F20](v6, -1, -1);
    MEMORY[0x1AC571F20](v5, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.chat(_:isFilteredUpdated:)(Swift::String _, Swift::Int isFilteredUpdated)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD00000000000001ALL, 0x80000001A8919BB0, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.chat(_:isRecoveredUpdated:)(Swift::String _, Swift::Bool isRecoveredUpdated)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD00000000000001BLL, 0x80000001A8919BD0, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.chat(_:isDeletingIncomingMessagesUpdated:)(Swift::String _, Swift::Bool isDeletingIncomingMessagesUpdated)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD00000000000002ALL, 0x80000001A8919BF0, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.chat(_:engramIDUpdated:)(Swift::String _, Swift::String engramIDUpdated)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD000000000000018, 0x80000001A8919C20, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.chat(_:nicknamesUpdated:)(Swift::String _, Swift::OpaquePointer nicknamesUpdated)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD000000000000019, 0x80000001A8919C40, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.chat(_:lastMessageTimeStampOnLoadUpdated:)(Swift::String _, Swift::Double lastMessageTimeStampOnLoadUpdated)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v5 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v10 - v6;
  v11[3] = &type metadata for ChatLastMessageTimeStampOnLoadUpdatedBroadcast;
  v11[4] = sub_1A87176EC();
  v11[0] = countAndFlagsBits;
  v11[1] = object;
  *&v11[2] = lastMessageTimeStampOnLoadUpdated;
  v8 = sub_1A88C87A8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1A86061B4(v11, v10);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  sub_1A860D56C(v10, v9 + 32);

  sub_1A885A178(0, 0, v7, &unk_1A88E8698, v9);

  sub_1A85F1084(v11);
}

Swift::Void __swiftcall IntentClientBroadcaster.serviceSwitchRequestReceivedForChat(withIdentifier:)(Swift::String withIdentifier)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD000000000000034, 0x80000001A8919C60, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.capabilitiesUpdated(forHandle:)(Swift::String forHandle)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD00000000000001FLL, 0x80000001A8919CA0, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.chat(_:uncachedAttachmentCountUpdated:)(Swift::String _, NSNumber uncachedAttachmentCountUpdated)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD000000000000027, 0x80000001A8919CC0, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

void IntentClientBroadcaster.account(_:chat:style:chatProperties:updateProperties:)()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD000000000000036, 0x80000001A8919CF0, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

void IntentClientBroadcaster.account(_:chat:style:chatProperties:error:)()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD00000000000002BLL, 0x80000001A8919D30, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.leftChat(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v8 - v4;
  v9[3] = &type metadata for LeftChatBroadcast;
  v9[4] = sub_1A871798C();
  v9[0] = countAndFlagsBits;
  v9[1] = object;
  v6 = sub_1A88C87A8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1A86061B4(v9, v8);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_1A860D56C(v8, v7 + 32);

  sub_1A885A178(0, 0, v5, &unk_1A88E8B88, v7);

  sub_1A85F1084(v9);
}

Swift::Void __swiftcall IntentClientBroadcaster.engroupParticipantsUpdated(forChat:)(Swift::String forChat)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD000000000000024, 0x80000001A8919D60, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.loadedChats(_:)(Swift::OpaquePointer a1)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0x6843646564616F6CLL, 0xEF293A5F28737461, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.loadedChats(_:queryID:)(Swift::OpaquePointer _, Swift::String queryID)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD000000000000017, 0x80000001A8919D90, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.markedAsRead(forMessageGUID:success:queryID:)(Swift::String forMessageGUID, Swift::Bool success, Swift::String queryID)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v3 = sub_1A88C7E58();
  sub_1A85EF0E4(v3, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v4 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1A85F0394(0xD00000000000002DLL, 0x80000001A8919DB0, &v8);
    _os_log_impl(&dword_1A85E5000, oslog, v4, "IntentClientBroadcaster stub called: %s.", v5, 0xCu);
    sub_1A85F1084(v6);
    MEMORY[0x1AC571F20](v6, -1, -1);
    MEMORY[0x1AC571F20](v5, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.forcedReloadingChatRegistry(withQueryID:)(Swift::String withQueryID)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD000000000000029, 0x80000001A8919DE0, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.loadedRecoverableMessagesMetadata(_:queryID:)(Swift::OpaquePointer _, Swift::String queryID)
{
  object = queryID._object;
  countAndFlagsBits = queryID._countAndFlagsBits;
  v5 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v12 - v6;
  v8 = sub_1A878C278(_._rawValue);
  v13[3] = &type metadata for LoadedRecoverableMessagesMetadataBroadcast;
  v9 = sub_1A8717A34();
  v13[0] = v8;
  v13[1] = countAndFlagsBits;
  v13[4] = v9;
  v13[2] = object;
  v10 = sub_1A88C87A8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_1A86061B4(v13, v12);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_1A860D56C(v12, v11 + 32);

  sub_1A885A178(0, 0, v7, &unk_1A88E8BD8, v11);

  sub_1A85F1084(v13);
}

uint64_t sub_1A878FF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v13 = sub_1A870CCE0(&unk_1EB3090D0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v21 - v15;
  v22[3] = a4;
  v17 = a5(v14);
  v22[0] = a1;
  v22[1] = a2;
  v22[4] = v17;
  v22[2] = a3;
  v18 = sub_1A88C87A8();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  sub_1A86061B4(v22, v21);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  sub_1A860D56C(v21, v19 + 32);

  sub_1A885A178(0, 0, v16, a7, v19);

  return sub_1A85F1084(v22);
}

uint64_t sub_1A8790104(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8)
{
  v12 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v24 - v13;
  v15 = sub_1A88C85F8();
  v16 = sub_1A88C82E8();
  v18 = v17;
  v25[3] = a5;
  v19 = a6();
  v25[0] = v15;
  v25[1] = v16;
  v25[4] = v19;
  v25[2] = v18;
  v20 = sub_1A88C87A8();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  sub_1A86061B4(v25, v24);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  sub_1A860D56C(v24, v21 + 32);
  v22 = a1;

  sub_1A885A178(0, 0, v14, a8, v21);

  sub_1A85F1084(v25);
}

Swift::Void __swiftcall IntentClientBroadcaster.permanentlyDeletedRecoverableMessagesForChats(withGUIDs:deletedChatGUIDs:)(Swift::OpaquePointer withGUIDs, Swift::OpaquePointer deletedChatGUIDs)
{
  v4 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v9 - v5;
  v10[3] = &type metadata for PermanentlyDeletedRecoverableMessagesForChatsBroadcast;
  v10[4] = sub_1A87178E4();
  v10[0] = withGUIDs._rawValue;
  v10[1] = deletedChatGUIDs._rawValue;
  v7 = sub_1A88C87A8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1A86061B4(v10, v9);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_1A860D56C(v9, v8 + 32);

  sub_1A885A178(0, 0, v6, &unk_1A88E8BF0, v8);

  sub_1A85F1084(v10);
}

uint64_t sub_1A87905D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = sub_1A870CCE0(&unk_1EB3090D0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v16 - v11;
  v17[3] = a2;
  v17[4] = a3(v10);
  v17[0] = a1;
  v13 = sub_1A88C87A8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1A86061B4(v17, v16);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_1A860D56C(v16, v14 + 32);

  sub_1A885A178(0, 0, v12, a5, v14);

  return sub_1A85F1084(v17);
}

uint64_t sub_1A8790758(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v11 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v19 - v12;
  v14 = sub_1A88C85F8();
  v20[3] = a4;
  v20[4] = a5();
  v20[0] = v14;
  v15 = sub_1A88C87A8();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  sub_1A86061B4(v20, v19);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  sub_1A860D56C(v19, v16 + 32);
  v17 = a1;

  sub_1A885A178(0, 0, v13, a7, v16);

  sub_1A85F1084(v20);
}

Swift::Void __swiftcall IntentClientBroadcaster.chatsNeedRemerging(_:groupedChats:)(Swift::OpaquePointer _, Swift::OpaquePointer groupedChats)
{
  v5 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_1A88C87A8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2]._rawValue = 0;
  v9[3]._rawValue = 0;
  v9[4]._rawValue = _._rawValue;
  v9[5]._rawValue = groupedChats._rawValue;
  v9[6]._rawValue = v2;

  v10 = v2;
  sub_1A885A178(0, 0, v7, &unk_1A88E8C08, v9);
}

uint64_t sub_1A87909F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[15] = a4;
  sub_1A870CCE0(&unk_1EB3090D0);
  v6[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A8790A98, 0, 0);
}

uint64_t sub_1A8790A98()
{
  v31 = v0;
  v1 = sub_1A8763800(*(v0 + 120));
  *(v0 + 152) = v1;
  if (!v1)
  {
    if (qword_1EB302198 != -1)
    {
      swift_once();
    }

    v16 = sub_1A88C7E58();
    sub_1A85EF0E4(v16, qword_1EB305260);
    v17 = sub_1A88C7E38();
    v18 = sub_1A88C89C8();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_16;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1A85F0394(0xD000000000000023, 0x80000001A891A590, &v30);
    v21 = "%s Invalid chatGUIDs.";
    goto LABEL_15;
  }

  v2 = v1;
  v3 = sub_1A8763A88(*(v0 + 128));
  *(v0 + 160) = v3;
  if (!v3)
  {

    if (qword_1EB302198 != -1)
    {
      swift_once();
    }

    v22 = sub_1A88C7E58();
    sub_1A85EF0E4(v22, qword_1EB305260);
    v17 = sub_1A88C7E38();
    v18 = sub_1A88C89C8();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_16;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1A85F0394(0xD000000000000023, 0x80000001A891A590, &v30);
    v21 = "%s Invalid chat dictionaries.";
LABEL_15:
    _os_log_impl(&dword_1A85E5000, v17, v18, v21, v19, 0xCu);
    sub_1A85F1084(v20);
    MEMORY[0x1AC571F20](v20, -1, -1);
    MEMORY[0x1AC571F20](v19, -1, -1);
LABEL_16:

    goto LABEL_17;
  }

  v4 = *(v2 + 16);
  *(v0 + 168) = v4;
  if (v4)
  {
    v5 = OBJC_IVAR____TtC17IMSharedUtilities23IntentClientBroadcaster_chatContactsProvider;
    v6 = (*(v0 + 136) + OBJC_IVAR____TtC17IMSharedUtilities23IntentClientBroadcaster_chatContactsProvider);
    v7 = MEMORY[0x1E69E7CC0];
    *(v0 + 184) = 0;
    *(v0 + 192) = v7;
    *(v0 + 176) = v5;
    v8 = *(v0 + 152);
    v9 = *(v8 + 32);
    *(v0 + 200) = v9;
    v10 = *(v8 + 40);
    *(v0 + 208) = v10;
    v11 = v6[3];
    v12 = v6[4];
    sub_1A870C278(v6, v11);
    v13 = *(v12 + 8);

    v29 = (v13 + *v13);
    v14 = swift_task_alloc();
    *(v0 + 216) = v14;
    *v14 = v0;
    v14[1] = sub_1A8790F50;

    return v29(v0 + 96, v9, v10, v11, v12);
  }

  v25 = *(v0 + 144);
  v24 = *(v0 + 152);
  *(v0 + 40) = &type metadata for ChatsNeedRemergingBroadcast;
  v26 = v3;
  *(v0 + 48) = sub_1A8717F14();
  *(v0 + 16) = v24;
  *(v0 + 24) = v26;
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  v27 = sub_1A88C87A8();
  (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
  sub_1A86061B4(v0 + 16, v0 + 56);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  sub_1A860D56C((v0 + 56), v28 + 32);
  sub_1A885A178(0, 0, v25, &unk_1A88E8CE8, v28);

  sub_1A85F1084(v0 + 16);
LABEL_17:

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1A8790F50()
{

  return MEMORY[0x1EEE6DFA0](sub_1A879104C, 0, 0);
}

uint64_t sub_1A879104C()
{
  v37 = v0;
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  if (*(v0 + 112))
  {
    if (qword_1EB302198 != -1)
    {
      swift_once();
    }

    v3 = sub_1A88C7E58();
    sub_1A85EF0E4(v3, qword_1EB305260);

    sub_1A8796ED8(v2, v1, 1);
    v4 = sub_1A88C7E38();
    v5 = sub_1A88C89C8();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 208);
    if (v6)
    {
      v33 = *(v0 + 200);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = v35;
      *v8 = 136315650;
      *(v8 + 4) = sub_1A85F0394(0xD000000000000023, 0x80000001A891A590, &v36);
      *(v8 + 12) = 2080;
      v10 = sub_1A85F0394(v33, v7, &v36);

      *(v8 + 14) = v10;
      *(v8 + 22) = 2112;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 24) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1A85E5000, v4, v5, "%s Failed to generate handlesToContactMap for chatGUID: %s. Error: %@", v8, 0x20u);
      sub_1A85EF638(v9, &qword_1EB306540);
      MEMORY[0x1AC571F20](v9, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1AC571F20](v35, -1, -1);
      MEMORY[0x1AC571F20](v8, -1, -1);
    }

    else
    {

      sub_1A8796F24(v2, v1, 1);
    }

    sub_1A8796F24(v2, v1, 1);
    v13 = *(v0 + 192);
  }

  else
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v0 + 192);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1A8735760(0, *(v13 + 2) + 1, 1, *(v0 + 192));
    }

    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_1A8735760((v14 > 1), v15 + 1, 1, v13);
    }

    *(v13 + 2) = v15 + 1;
    v16 = &v13[16 * v15];
    *(v16 + 4) = v2;
    *(v16 + 5) = v1;
    sub_1A8796F24(v2, v1, 0);
  }

  v17 = *(v0 + 184) + 1;
  if (v17 == *(v0 + 168))
  {
    v19 = *(v0 + 152);
    v18 = *(v0 + 160);
    v20 = *(v0 + 144);
    *(v0 + 40) = &type metadata for ChatsNeedRemergingBroadcast;
    *(v0 + 48) = sub_1A8717F14();
    *(v0 + 16) = v19;
    *(v0 + 24) = v18;
    *(v0 + 32) = v13;
    v21 = sub_1A88C87A8();
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
    sub_1A86061B4(v0 + 16, v0 + 56);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    sub_1A860D56C((v0 + 56), v22 + 32);
    sub_1A885A178(0, 0, v20, &unk_1A88E8CE8, v22);

    sub_1A85F1084(v0 + 16);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    *(v0 + 184) = v17;
    *(v0 + 192) = v13;
    v25 = (*(v0 + 136) + *(v0 + 176));
    v26 = *(v0 + 152) + 16 * v17;
    v27 = *(v26 + 32);
    *(v0 + 200) = v27;
    v28 = *(v26 + 40);
    *(v0 + 208) = v28;
    v29 = v25[3];
    v30 = v25[4];
    sub_1A870C278(v25, v29);
    v31 = *(v30 + 8);

    v34 = (v31 + *v31);
    v32 = swift_task_alloc();
    *(v0 + 216) = v32;
    *v32 = v0;
    v32[1] = sub_1A8790F50;

    return v34(v0 + 96, v27, v28, v29, v30);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.chatLoaded(withChatIdentifier:chats:)(Swift::String withChatIdentifier, Swift::OpaquePointer chats)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD000000000000025, 0x80000001A8919E10, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

void IntentClientBroadcaster.account(_:chat:style:chatProperties:invitationReceived:)()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD000000000000038, 0x80000001A8919E40, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

uint64_t IntentClientBroadcaster.account(_:chat:style:chatProperties:groupID:chatPersonCentricID:statusChanged:handleInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12)
{
  v33 = a7;
  v32 = a5;
  v29 = a1;
  v30 = a3;
  v31 = a9;
  v17 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v28 - v18;
  v20 = sub_1A88C87A8();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = a12;
  *(v21 + 40) = a11;
  v23 = v29;
  v22 = v30;
  *(v21 + 48) = v12;
  *(v21 + 56) = v23;
  *(v21 + 64) = a2;
  *(v21 + 72) = v22;
  *(v21 + 80) = a4;
  *(v21 + 88) = v32;
  v24 = v33;
  *(v21 + 96) = a6;
  *(v21 + 104) = v24;
  v25 = v31;
  *(v21 + 112) = a8;
  *(v21 + 120) = v25;
  *(v21 + 128) = a10;

  v26 = v12;

  sub_1A885A178(0, 0, v19, &unk_1A88E8C18, v21);
}

uint64_t sub_1A8792358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 200) = v15;
  *(v8 + 184) = v14;
  *(v8 + 168) = v13;
  *(v8 + 113) = v12;
  *(v8 + 152) = v11;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 116) = a5;
  *(v8 + 120) = a4;
  *(v8 + 128) = a6;
  sub_1A870CCE0(&unk_1EB3090D0);
  *(v8 + 208) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A8792428, 0, 0);
}

uint64_t sub_1A8792428()
{
  v1 = *(v0 + 120);
  if (!v1 || (v2 = sub_1A8763A88(v1)) == 0)
  {

    v2 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 216) = v2;
  v3 = *(v0 + 116);
  if (v3 == 2)
  {
    v4 = (*(v0 + 128) + OBJC_IVAR____TtC17IMSharedUtilities23IntentClientBroadcaster_chatContactsProvider);
    v5 = v4[3];
    v6 = v4[4];
    sub_1A870C278(v4, v5);
    v28 = (*(v6 + 16) + **(v6 + 16));
    v7 = swift_task_alloc();
    *(v0 + 224) = v7;
    *v7 = v0;
    v7[1] = sub_1A8792768;
    v8 = *(v0 + 152);
    v9 = *(v0 + 160);
    v10 = *(v0 + 136);
    v11 = *(v0 + 144);

    return v28(v0 + 96, v10, v11, v8, v9, v5, v6);
  }

  else
  {
    v13 = *(v0 + 200);
    v14 = *(v0 + 184);
    v26 = *(v0 + 192);
    v27 = *(v0 + 208);
    v24 = *(v0 + 168);
    v25 = *(v0 + 176);
    v23 = *(v0 + 113);
    v15 = *(v0 + 160);
    v22 = *(v0 + 152);
    v17 = *(v0 + 136);
    v16 = *(v0 + 144);
    *(v0 + 40) = &type metadata for ChatStatusChangedBroadcast;
    *(v0 + 48) = sub_1A8717C74();
    v18 = swift_allocObject();
    *(v0 + 16) = v18;
    *(v18 + 16) = v17;
    *(v18 + 24) = v16;
    *(v18 + 32) = v22;
    *(v18 + 40) = v15;
    *(v18 + 48) = v23;
    *(v18 + 56) = v24;
    *(v18 + 64) = v25;
    *(v18 + 72) = v14;
    *(v18 + 80) = v26;
    *(v18 + 88) = v13;
    *(v18 + 96) = v3;
    *(v18 + 104) = v2;
    v19 = sub_1A88C87A8();
    *(v18 + 112) = 0;
    *(v18 + 120) = 0;
    (*(*(v19 - 8) + 56))(v27, 1, 1, v19);
    sub_1A86061B4(v0 + 16, v0 + 56);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    sub_1A860D56C((v0 + 56), v20 + 32);

    sub_1A885A178(0, 0, v27, &unk_1A88E8CA8, v20);

    sub_1A85F1084(v0 + 16);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_1A8792768()
{

  return MEMORY[0x1EEE6DFA0](sub_1A8792864, 0, 0);
}

uint64_t sub_1A8792864()
{
  v35 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  if (*(v0 + 112) == 1)
  {
    if (qword_1EB302198 != -1)
    {
      swift_once();
    }

    v3 = sub_1A88C7E58();
    sub_1A85EF0E4(v3, qword_1EB305260);
    sub_1A8796ED8(v1, v2, 1);

    v4 = sub_1A88C7E38();
    v5 = sub_1A88C89C8();

    if (os_log_type_enabled(v4, v5))
    {
      v30 = *(v0 + 152);
      v32 = *(v0 + 160);
      v6 = *(v0 + 136);
      v28 = *(v0 + 144);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v34 = v9;
      *v7 = 136315906;
      *(v7 + 4) = sub_1A85F0394(0xD00000000000005ALL, 0x80000001A891A500, &v34);
      *(v7 + 12) = 2080;
      *(v7 + 14) = sub_1A85F0394(v6, v28, &v34);
      *(v7 + 22) = 2080;
      *(v7 + 24) = sub_1A85F0394(v30, v32, &v34);
      *(v7 + 32) = 2112;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 34) = v10;
      *v8 = v10;
      _os_log_impl(&dword_1A85E5000, v4, v5, "%s Failed to generate handlesToContactMap for accountUniqueID: %s chatIdentifier: %s. Error: %@", v7, 0x2Au);
      sub_1A85EF638(v8, &qword_1EB306540);
      MEMORY[0x1AC571F20](v8, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1AC571F20](v9, -1, -1);
      MEMORY[0x1AC571F20](v7, -1, -1);
    }

    else
    {

      sub_1A8796F24(v1, v2, 1);
    }

    sub_1A8796F24(v1, v2, 1);
    v29 = 0;
    v31 = 0;
  }

  else
  {
    v29 = *(v0 + 104);
    v31 = *(v0 + 96);
  }

  v33 = *(v0 + 208);
  v11 = *(v0 + 200);
  v26 = *(v0 + 192);
  v27 = *(v0 + 216);
  v12 = *(v0 + 184);
  v25 = *(v0 + 176);
  v14 = *(v0 + 160);
  v13 = *(v0 + 168);
  v15 = *(v0 + 113);
  v17 = *(v0 + 144);
  v16 = *(v0 + 152);
  v18 = *(v0 + 136);
  v24 = *(v0 + 116);
  *(v0 + 40) = &type metadata for ChatStatusChangedBroadcast;
  *(v0 + 48) = sub_1A8717C74();
  v19 = swift_allocObject();
  *(v0 + 16) = v19;
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  *(v19 + 32) = v16;
  *(v19 + 40) = v14;
  *(v19 + 48) = v15;
  *(v19 + 56) = v13;
  *(v19 + 64) = v25;
  *(v19 + 72) = v12;
  *(v19 + 80) = v26;
  *(v19 + 88) = v11;
  *(v19 + 96) = v24;
  *(v19 + 104) = v27;
  *(v19 + 112) = v31;
  *(v19 + 120) = v29;
  v20 = sub_1A88C87A8();
  (*(*(v20 - 8) + 56))(v33, 1, 1, v20);
  sub_1A86061B4(v0 + 16, v0 + 56);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  sub_1A860D56C((v0 + 56), v21 + 32);

  sub_1A885A178(0, 0, v33, &unk_1A88E8CA8, v21);

  sub_1A85F1084(v0 + 16);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t IntentClientBroadcaster.account(_:chat:style:chatProperties:chatPersonCentricID:member:statusChanged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  v27 = a7;
  v25 = a10;
  v26 = a5;
  v17 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v25 - v18;
  v20 = sub_1A88C87A8();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = v10;
  *(v21 + 40) = a1;
  *(v21 + 48) = a2;
  *(v21 + 56) = a3;
  *(v21 + 64) = a4;
  *(v21 + 72) = v26;
  v22 = v27;
  *(v21 + 80) = a6;
  *(v21 + 88) = v22;
  *(v21 + 96) = a8;
  *(v21 + 104) = a9;
  *(v21 + 112) = v25;

  v23 = v10;

  sub_1A885A178(0, 0, v19, &unk_1A88E8C28, v21);
}

uint64_t sub_1A8793010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 308) = v15;
  *(v8 + 368) = v13;
  *(v8 + 376) = v14;
  *(v8 + 352) = v12;
  *(v8 + 305) = v11;
  *(v8 + 336) = a7;
  *(v8 + 344) = a8;
  *(v8 + 320) = a5;
  *(v8 + 328) = a6;
  *(v8 + 312) = a4;
  sub_1A870CCE0(&unk_1EB3090D0);
  *(v8 + 384) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A87930D8, 0, 0);
}

uint64_t sub_1A87930D8()
{
  v1 = (v0[39] + OBJC_IVAR____TtC17IMSharedUtilities23IntentClientBroadcaster_chatContactsProvider);
  v2 = v1[3];
  v3 = v1[4];
  sub_1A870C278(v1, v2);
  v10 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[49] = v4;
  *v4 = v0;
  v4[1] = sub_1A879321C;
  v5 = v0[42];
  v6 = v0[43];
  v7 = v0[40];
  v8 = v0[41];

  return v10(v0 + 36, v7, v8, v5, v6, v2, v3);
}

uint64_t sub_1A879321C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A8793318, 0, 0);
}

uint64_t sub_1A8793318()
{
  v36 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v34 = *(v0 + 304);
  v33 = v2;
  if (v34)
  {
    if (qword_1EB302198 != -1)
    {
      swift_once();
    }

    v3 = sub_1A88C7E58();
    sub_1A85EF0E4(v3, qword_1EB305260);
    sub_1A8796ED8(v1, v2, 1);

    v4 = sub_1A88C7E38();
    v5 = sub_1A88C89C8();

    if (os_log_type_enabled(v4, v5))
    {
      v31 = *(v0 + 336);
      v32 = *(v0 + 344);
      v7 = *(v0 + 320);
      v6 = *(v0 + 328);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v35 = v10;
      *v8 = 136315906;
      *(v8 + 4) = sub_1A85F0394(0xD00000000000004ELL, 0x80000001A891A490, &v35);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_1A85F0394(v7, v6, &v35);
      *(v8 + 22) = 2080;
      *(v8 + 24) = sub_1A85F0394(v31, v32, &v35);
      *(v8 + 32) = 2112;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 34) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1A85E5000, v4, v5, "%s Failed to generate handlesToContactMap for accountUniqueID: %s chatIdentifier: %s. Error: %@", v8, 0x2Au);
      sub_1A85EF638(v9, &qword_1EB306540);
      MEMORY[0x1AC571F20](v9, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1AC571F20](v10, -1, -1);
      MEMORY[0x1AC571F20](v8, -1, -1);
    }

    else
    {

      sub_1A8796F24(v1, v2, 1);
    }

    v12 = 0;
    v13 = 0;
  }

  else
  {

    v12 = v1;
    v13 = v2;
  }

  v15 = *(v0 + 376);
  v14 = *(v0 + 384);
  v16 = *(v0 + 308);
  v17 = *(v0 + 368);
  v18 = *(v0 + 305);
  v19 = *(v0 + 336);
  v20 = *(v0 + 344);
  v21 = *(v0 + 328);
  *(v0 + 16) = *(v0 + 320);
  *(v0 + 24) = v21;
  *(v0 + 32) = v19;
  *(v0 + 40) = v20;
  *(v0 + 48) = v18;
  *(v0 + 56) = *(v0 + 352);
  *(v0 + 72) = v17;
  *(v0 + 80) = v15;
  *(v0 + 88) = v16;
  *(v0 + 96) = v12;
  *(v0 + 104) = v13;
  *(v0 + 232) = &type metadata for ChatMemberStatusChangedBroadcast;
  *(v0 + 240) = sub_1A8717CC8();
  v22 = swift_allocObject();
  *(v0 + 208) = v22;
  v23 = *(v0 + 64);
  v24 = *(v0 + 80);
  v25 = *(v0 + 32);
  v22[3] = *(v0 + 48);
  v22[4] = v23;
  v26 = *(v0 + 96);
  v22[5] = v24;
  v22[6] = v26;
  v22[1] = *(v0 + 16);
  v22[2] = v25;
  v27 = sub_1A88C87A8();
  (*(*(v27 - 8) + 56))(v14, 1, 1, v27);
  sub_1A86061B4(v0 + 208, v0 + 248);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  sub_1A860D56C((v0 + 248), v28 + 32);

  sub_1A8796F70(v0 + 16, v0 + 112);
  sub_1A885A178(0, 0, v14, &unk_1A88E8CA0, v28);
  sub_1A8796F24(v1, v33, v34);
  sub_1A8796FCC(v0 + 16);

  sub_1A85F1084(v0 + 208);

  v29 = *(v0 + 8);

  return v29();
}

void IntentClientBroadcaster.account(_:handleID:updatedLastReceivedOnGridMessageDate:)()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD000000000000039, 0x80000001A8919E80, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.downloadedPurgedAssetBatch(forChatIDs:completedTransferGUIDs:)(Swift::OpaquePointer forChatIDs, Swift::OpaquePointer completedTransferGUIDs)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD00000000000003ELL, 0x80000001A8919EC0, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.finishedDownloadingPurgedAssets(forChatIDs:)(Swift::OpaquePointer forChatIDs)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD00000000000002CLL, 0x80000001A8919F00, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.historicalMessageGUIDsDeleted(_:chatGUIDs:queryID:)(Swift::OpaquePointer_optional _, Swift::OpaquePointer_optional chatGUIDs, Swift::String_optional queryID)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v3 = sub_1A88C7E58();
  sub_1A85EF0E4(v3, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v4 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1A85F0394(0xD000000000000033, 0x80000001A8919F30, &v8);
    _os_log_impl(&dword_1A85E5000, oslog, v4, "IntentClientBroadcaster stub called: %s.", v5, 0xCu);
    sub_1A85F1084(v6);
    MEMORY[0x1AC571F20](v6, -1, -1);
    MEMORY[0x1AC571F20](v5, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.previouslyBlackholedChatLoaded(withChatIdentifier:chats:)(Swift::String withChatIdentifier, Swift::OpaquePointer chats)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD000000000000039, 0x80000001A8919F70, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.previouslyBlackholedChatLoaded(withHandleIDs:chat:)(Swift::OpaquePointer withHandleIDs, Swift::OpaquePointer chat)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD000000000000033, 0x80000001A8919FB0, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.blackholedChatsExist(_:)(Swift::Bool a1)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD000000000000018, 0x80000001A8919FF0, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

void IntentClientBroadcaster.transcriptBackgroundUpdated(forChatIdentifier:style:account:userInfo:)()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD000000000000046, 0x80000001A891A010, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.displayPinCode(forAccount:pinCode:deviceName:deviceType:phoneNumber:)(Swift::String forAccount, NSNumber pinCode, Swift::String deviceName, Swift::String deviceType, Swift::String phoneNumber)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v5 = sub_1A88C7E58();
  sub_1A85EF0E4(v5, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v6 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1A85F0394(0xD000000000000045, 0x80000001A891A060, &v10);
    _os_log_impl(&dword_1A85E5000, oslog, v6, "IntentClientBroadcaster stub called: %s.", v7, 0xCu);
    sub_1A85F1084(v8);
    MEMORY[0x1AC571F20](v8, -1, -1);
    MEMORY[0x1AC571F20](v7, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.pinCodeAlertCompleted(_:deviceName:deviceType:phoneNumber:responseFromDevice:wasCancelled:)(Swift::String _, Swift::String deviceName, Swift::String deviceType, Swift::String phoneNumber, Swift::Bool responseFromDevice, Swift::Bool wasCancelled)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v6 = sub_1A88C7E58();
  sub_1A85EF0E4(v6, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v7 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1A85F0394(0xD00000000000005BLL, 0x80000001A891A0B0, &v11);
    _os_log_impl(&dword_1A85E5000, oslog, v7, "IntentClientBroadcaster stub called: %s.", v8, 0xCu);
    sub_1A85F1084(v9);
    MEMORY[0x1AC571F20](v9, -1, -1);
    MEMORY[0x1AC571F20](v8, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.screenTimeEnablementChanged(_:)(Swift::Bool a1)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD00000000000001FLL, 0x80000001A891A110, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.collaborationNoticesDidChange(forChatGUIDs:)(Swift::OpaquePointer forChatGUIDs)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD00000000000002CLL, 0x80000001A891A130, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

void IntentClientBroadcaster.account(_:chat:style:chatProperties:groupID:chatPersonCentricID:initialEmergencyQuestionnaireReceived:)()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD000000000000067, 0x80000001A891A160, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.qosClassWhileServicingRequestsResponse(_:identifier:)(qos_class_t _, Swift::String identifier)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD000000000000035, 0x80000001A891A1D0, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.updatedSummariesForChats(withGUIDsAndProperties:)(Swift::OpaquePointer withGUIDsAndProperties)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD000000000000031, 0x80000001A891A210, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.updatedPriorityForChats(withGUIDsAndProperties:chatsAndMessageGUIDs:)(Swift::OpaquePointer withGUIDsAndProperties, Swift::OpaquePointer chatsAndMessageGUIDs)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD000000000000045, 0x80000001A891A250, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

void IntentClientBroadcaster.chat(_:brandLogoUpdated:transferGuid:)()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD000000000000026, 0x80000001A891A2A0, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

uint64_t _s17IMSharedUtilities23IntentClientBroadcasterC4chat_0F15PersonCentricID18displayNameUpdatedySS_SSSgSStF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v19 - v13;
  v20[3] = &type metadata for ChatDisplayNameUpdatedBroadcast;
  v20[4] = sub_1A8717E18();
  v15 = swift_allocObject();
  v20[0] = v15;
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a6;
  v16 = sub_1A88C87A8();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  sub_1A86061B4(v20, v19);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  sub_1A860D56C(v19, v17 + 32);

  sub_1A885A178(0, 0, v14, &unk_1A88E8D08, v17);

  return sub_1A85F1084(v20);
}

uint64_t _s17IMSharedUtilities23IntentClientBroadcasterC4chat_0F15PersonCentricID18displayNameUpdated6senderySS_SSSgS2StF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v23 - v17;
  v24[3] = &type metadata for ChatDisplayNameUpdatedWithSenderBroadcast;
  v24[4] = sub_1A8717DC4();
  v19 = swift_allocObject();
  v24[0] = v19;
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = a6;
  v19[8] = a7;
  v19[9] = a8;
  v20 = sub_1A88C87A8();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  sub_1A86061B4(v24, v23);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  sub_1A860D56C(v23, v21 + 32);

  sub_1A885A178(0, 0, v18, &unk_1A88E8D00, v21);

  return sub_1A85F1084(v24);
}

uint64_t _s17IMSharedUtilities23IntentClientBroadcasterC34movedMessageGUIDsToRecentlyDeleted_8chatGUID7queryID12deletionDateySaySSG_SSSgAI10Foundation0Q0VSgtF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v23 - v13;
  v15 = type metadata accessor for MovedMessagesWithGUIDsToRecentlyDeletedBroadcast(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A8721348(a6, v18 + *(v16 + 28));
  *v18 = a1;
  v18[1] = a2;
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v24[3] = v15;
  v24[4] = sub_1A8797074(&unk_1EB305370, type metadata accessor for MovedMessagesWithGUIDsToRecentlyDeletedBroadcast);
  v19 = sub_1A871E00C(v24);
  sub_1A87970BC(v18, v19, type metadata accessor for MovedMessagesWithGUIDsToRecentlyDeletedBroadcast);
  v20 = sub_1A88C87A8();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  sub_1A86061B4(v24, v23);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  sub_1A860D56C(v23, v21 + 32);

  sub_1A885A178(0, 0, v14, &unk_1A88E8CF8, v21);

  sub_1A8797124(v18, type metadata accessor for MovedMessagesWithGUIDsToRecentlyDeletedBroadcast);
  return sub_1A85F1084(v24);
}

uint64_t _s17IMSharedUtilities23IntentClientBroadcasterC38movedMessagesToRecentlyDeletedForChats9withGUIDs7queryID12deletionDateySaySSG_SSSg10Foundation0R0VSgtF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v19 - v9;
  v11 = type metadata accessor for MovedMessagesToRecentlyDeletedForChatsBroadcast(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A8721348(a4, v14 + *(v12 + 24));
  *v14 = a1;
  v14[1] = a2;
  v14[2] = a3;
  v20[3] = v11;
  v20[4] = sub_1A8797074(&qword_1EB3031D8, type metadata accessor for MovedMessagesToRecentlyDeletedForChatsBroadcast);
  v15 = sub_1A871E00C(v20);
  sub_1A87970BC(v14, v15, type metadata accessor for MovedMessagesToRecentlyDeletedForChatsBroadcast);
  v16 = sub_1A88C87A8();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  sub_1A86061B4(v20, v19);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  sub_1A860D56C(v19, v17 + 32);

  sub_1A885A178(0, 0, v10, &unk_1A88E8CF0, v17);

  sub_1A8797124(v14, type metadata accessor for MovedMessagesToRecentlyDeletedForChatsBroadcast);
  return sub_1A85F1084(v20);
}

uint64_t sub_1A8795AB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A8716570;

  return sub_1A87909F8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1A8795B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v27 = a11;
  v28 = a7;
  v18 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v27 - v19;
  v30[3] = &type metadata for MessageSentForAccountWithPropertiesBroadcast;
  v30[4] = sub_1A8717698();
  v21 = swift_allocObject();
  v30[0] = v21;
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  *(v21 + 48) = a5;
  *(v21 + 56) = a6;
  *(v21 + 64) = a6;
  v22 = v27;
  *(v21 + 72) = v28;
  *(v21 + 80) = a8;
  *(v21 + 88) = a9;
  *(v21 + 96) = a10;
  *(v21 + 104) = v22;
  v23 = sub_1A88C87A8();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  sub_1A86061B4(v30, v29);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_1A860D56C(v29, v24 + 32);

  v25 = v22;
  swift_bridgeObjectRetain_n();

  sub_1A885A178(0, 0, v20, &unk_1A88E8CE0, v24);

  return sub_1A85F1084(v30);
}

uint64_t _s17IMSharedUtilities23IntentClientBroadcasterC7account_4chat5style17notifySentMessage8sendTime13isReplicatingySS_SSSgSo11IMChatStyleVSo13IMMessageItemCSo8NSNumberCSbtF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7, char a8)
{
  v16 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v26 - v17;

  [a7 doubleValue];
  v20 = v19;
  v27[3] = &type metadata for MessageSentForAccountNotifyBroadcast;
  v27[4] = sub_1A8717D1C();
  v21 = swift_allocObject();
  v27[0] = v21;
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  *(v21 + 48) = a5;
  *(v21 + 56) = a6;
  *(v21 + 64) = v20;
  *(v21 + 72) = a8;
  v22 = sub_1A88C87A8();
  (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  sub_1A86061B4(v27, v26);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  sub_1A860D56C(v26, v23 + 32);
  v24 = a6;
  sub_1A885A178(0, 0, v18, &unk_1A88E8CD8, v23);

  return sub_1A85F1084(v27);
}

uint64_t sub_1A8795F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v26 = a6;
  v27 = a7;
  v17 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v26 - v18;
  v29[3] = &type metadata for MessageReceivedForAccountWithPropertiesBroadcast;
  v29[4] = sub_1A8717644();
  v20 = swift_allocObject();
  v29[0] = v20;
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;
  *(v20 + 48) = a5;
  v21 = v27;
  *(v20 + 56) = v26;
  *(v20 + 64) = v21;
  *(v20 + 72) = a8;
  *(v20 + 80) = a9;
  *(v20 + 88) = a10;
  *(v20 + 96) = a11;
  v22 = sub_1A88C87A8();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  sub_1A86061B4(v29, v28);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  sub_1A860D56C(v28, v23 + 32);

  v24 = a11;

  sub_1A885A178(0, 0, v19, &unk_1A88E8CD0, v23);

  return sub_1A85F1084(v29);
}

uint64_t sub_1A87960FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v29 = a7;
  v27 = a6;
  HIDWORD(v26) = a5;
  v28 = a13;
  v18 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v26 - v19;
  v31[3] = &type metadata for MessagesReceivedForAccountWithPropertiesBroadcast;
  v31[4] = sub_1A87175F0();
  v21 = swift_allocObject();
  v31[0] = v21;
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  *(v21 + 48) = BYTE4(v26);
  v22 = v29;
  *(v21 + 56) = v27;
  *(v21 + 64) = v22;
  *(v21 + 72) = a8;
  *(v21 + 80) = a9;
  *(v21 + 88) = a10;
  *(v21 + 96) = a11;
  *(v21 + 104) = a12;
  *(v21 + 112) = v28;
  v23 = sub_1A88C87A8();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  sub_1A86061B4(v31, v30);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_1A860D56C(v30, v24 + 32);

  sub_1A885A178(0, 0, v20, &unk_1A88E8CC8, v24);

  return sub_1A85F1084(v31);
}

uint64_t _s17IMSharedUtilities23IntentClientBroadcasterC7account_4chat5style14messageUpdatedySS_SSSgSo11IMChatStyleVSo6IMItemCtF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v12 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v20 - v13;
  v21[3] = &type metadata for MessageUpdatedForAccountBroadcast;
  v21[4] = sub_1A8717ADC();
  v15 = swift_allocObject();
  v21[0] = v15;
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  *(v15 + 48) = a5;
  *(v15 + 56) = a6;
  v16 = sub_1A88C87A8();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  sub_1A86061B4(v21, v20);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  sub_1A860D56C(v20, v17 + 32);

  v18 = a6;

  sub_1A885A178(0, 0, v14, &unk_1A88E8CC0, v17);

  return sub_1A85F1084(v21);
}

uint64_t _s17IMSharedUtilities23IntentClientBroadcasterC7account_4chat5style15messagesUpdatedySS_SSSgSo11IMChatStyleVSaySDys11AnyHashableVypGGtF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v12 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v19 - v13;
  v20[3] = &type metadata for MessagesUpdatedForAccountBroadcast;
  v20[4] = sub_1A8717B84();
  v15 = swift_allocObject();
  v20[0] = v15;
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  *(v15 + 48) = a5;
  *(v15 + 56) = a6;
  v16 = sub_1A88C87A8();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  sub_1A86061B4(v20, v19);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  sub_1A860D56C(v19, v17 + 32);

  sub_1A885A178(0, 0, v14, &unk_1A88E8CB8, v17);

  return sub_1A85F1084(v20);
}

void _s17IMSharedUtilities23IntentClientBroadcasterC7service_4chat5style15messagesUpdatedySS_SSSgSo11IMChatStyleVSayypGSgtF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v12 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v25 - v13;
  if (a6 && (v15 = sub_1A8763A88(a6)) != 0)
  {
    v16 = v15;
    v28[3] = &type metadata for MessagesUpdatedForServiceChatStyleBroadcast;
    v28[4] = sub_1A871759C();
    v17 = swift_allocObject();
    v28[0] = v17;
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    *(v17 + 32) = a3;
    *(v17 + 40) = a4;
    *(v17 + 48) = a5;
    *(v17 + 56) = v16;
    v18 = sub_1A88C87A8();
    (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
    sub_1A86061B4(v28, v27);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    sub_1A860D56C(v27, v19 + 32);

    sub_1A885A178(0, 0, v14, &unk_1A88E8CB0, v19);

    sub_1A85F1084(v28);
  }

  else
  {
    if (qword_1EB302198 != -1)
    {
      swift_once();
    }

    v20 = sub_1A88C7E58();
    sub_1A85EF0E4(v20, qword_1EB305260);
    v26 = sub_1A88C7E38();
    v21 = sub_1A88C89C8();
    if (os_log_type_enabled(v26, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1A85F0394(0xD000000000000026, 0x80000001A891A560, v28);
      _os_log_impl(&dword_1A85E5000, v26, v21, "%s messages were not of expected type. Bailing on broadcast.", v22, 0xCu);
      sub_1A85F1084(v23);
      MEMORY[0x1AC571F20](v23, -1, -1);
      MEMORY[0x1AC571F20](v22, -1, -1);
    }

    else
    {
      v24 = v26;
    }
  }
}

uint64_t sub_1A8796918(uint64_t a1)
{
  v11 = *(v1 + 24);
  v12 = *(v1 + 16);
  v10 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A8716570;

  return sub_1A8792358(a1, v12, v11, v10, v4, v5, v6, v7);
}

uint64_t sub_1A8796A38(uint64_t a1)
{
  v11 = v1[3];
  v12 = v1[2];
  v4 = v1[5];
  v10 = v1[4];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A8716570;

  return sub_1A8793010(a1, v12, v11, v10, v4, v5, v6, v7);
}

uint64_t _s17IMSharedUtilities23IntentClientBroadcasterC17groupPhotoUpdated17forChatIdentifier5style7account8userInfoySS_So11IMChatStyleVSSSDys11AnyHashableVypGSgtF_0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v19 - v13;
  v20[3] = &type metadata for GroupPhotoUpdatedBroadcast;
  v20[4] = sub_1A8717E6C();
  v15 = swift_allocObject();
  v20[0] = v15;
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  *(v15 + 48) = a5;
  *(v15 + 56) = a6;
  v16 = sub_1A88C87A8();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  sub_1A86061B4(v20, v19);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  sub_1A860D56C(v19, v17 + 32);

  sub_1A885A178(0, 0, v14, &unk_1A88E8C98, v17);

  return sub_1A85F1084(v20);
}

uint64_t sub_1A8796CE8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 116, 7);
}

uint64_t sub_1A8796D50()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_1A8796DC0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A8796E10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A8714B6C;

  return sub_1A87909F8(a1, v4, v5, v6, v7, v8);
}

id sub_1A8796ED8(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
  }
}

void sub_1A8796F24(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1A8797020(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1A8797074(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A87970BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A8797124(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A8797184()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

Swift::Void __swiftcall IntentClientBroadcaster.databaseUpdated()()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD000000000000011, 0x80000001A891A5C0, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.databaseUpdated(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v8 - v4;
  v9[3] = &type metadata for ChatDatabaseUpdatedStampBroadcast;
  v9[4] = sub_1A87174A0();
  v9[0] = countAndFlagsBits;
  v9[1] = object;
  v6 = sub_1A88C87A8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1A86061B4(v9, v8);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_1A860D56C(v8, v7 + 32);

  sub_1A885A178(0, 0, v5, &unk_1A88E8688, v7);

  sub_1A85F1084(v9);
}

Swift::Void __swiftcall IntentClientBroadcaster.databaseChatSpamUpdated(_:)(Swift::String a1)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD00000000000001BLL, 0x80000001A891A5E0, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

uint64_t sub_1A8797828(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1A88C82E8();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (a1 + *a4);
  *v8 = v6;
  v8[1] = v7;
}

id IMChipSuggestion.init(dictionary:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1A88C8188();

  v2 = [v0 initWithDictionary_];

  return v2;
}

id IMChipSuggestion.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16))
  {
    v4 = sub_1A85F5F40(0x5479616C70736964, 0xEB00000000747865);
    if (v5)
    {
      sub_1A85F1028(*(a1 + 56) + 32 * v4, v15);
      if (swift_dynamicCast())
      {
        v6 = sub_1A88C82A8();

        if (*(a1 + 16) && (v7 = sub_1A85F5F40(0x6B63616274736F70, 0xE800000000000000), (v8 & 1) != 0) && (sub_1A85F1028(*(a1 + 56) + 32 * v7, v15), (swift_dynamicCast() & 1) != 0))
        {
          v9 = sub_1A88C82A8();
        }

        else
        {
          v9 = 0;
        }

        if (*(a1 + 16) && (v11 = sub_1A85F5F40(0x54796C7065526E69, 0xEB0000000044496FLL), (v12 & 1) != 0))
        {
          sub_1A85F1028(*(a1 + 56) + 32 * v11, v15);

          if (swift_dynamicCast())
          {
            v13 = sub_1A88C82A8();

LABEL_17:
            v14 = [v2 initWithDisplayText:v6 postback:v9 inReplyToID:v13];

            return v14;
          }
        }

        else
        {
        }

        v13 = 0;
        goto LABEL_17;
      }
    }
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1A8797C48()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB303B58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E4F70;
  *(inited + 32) = 0x5479616C70736964;
  *(inited + 40) = 0xEB00000000747865;
  v3 = [v1 displayText];
  v4 = sub_1A88C82E8();
  v6 = v5;

  v7 = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 0x6B63616274736F70;
  *(inited + 88) = 0xE800000000000000;
  v8 = [v1 postback];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1A88C82E8();
    v12 = v11;

    v13 = MEMORY[0x1E69E6158];
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v13 = 0;
    *(inited + 112) = 0;
  }

  *(inited + 96) = v10;
  *(inited + 104) = v12;
  *(inited + 120) = v13;
  *(inited + 128) = 0x54796C7065526E69;
  *(inited + 136) = 0xEB0000000044496FLL;
  v14 = [v1 inReplyToID];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1A88C82E8();
    v18 = v17;

    v19 = MEMORY[0x1E69E6158];
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v19 = 0;
    *(inited + 160) = 0;
  }

  *(inited + 144) = v16;
  *(inited + 152) = v18;
  *(inited + 168) = v19;
  v20 = sub_1A8738CF0(inited);
  swift_setDeallocating();
  sub_1A870CCE0(&qword_1EB304A50);
  swift_arrayDestroy();
  v21 = sub_1A8895CC8(v20);

  return v21;
}

id IMChipSuggestion.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for IMChipSuggestion()
{
  result = qword_1EB3053A8;
  if (!qword_1EB3053A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB3053A8);
  }

  return result;
}

uint64_t sub_1A879800C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CD0];
  v1 = (v0 + 16);
  v5[4] = sub_1A8799180;
  v5[5] = v0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1A8798178;
  v5[3] = &unk_1F1BAE500;
  v2 = _Block_copy(v5);

  sub_1A86F8C8C(v2);
  _Block_release(v2);
  swift_beginAccess();
  v3 = *v1;

  off_1EB300718 = v3;
  return result;
}

uint64_t sub_1A8798118(uint64_t a1)
{
  swift_beginAccess();
  sub_1A87C1FB0(&v3, a1);
  return swift_endAccess();
}

uint64_t sub_1A8798178(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

char *static IMCoreSpotlightUtilities.reasonsInPriorityOrder.getter()
{
  if (qword_1EB300710 != -1)
  {
    swift_once();
  }

  v0 = off_1EB300718;
  v1 = *(off_1EB300718 + 2);
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = sub_1A87366A0(*(off_1EB300718 + 2), 0);
  v3 = sub_1A8737800(&v5, v2 + 4, v1, v0);

  sub_1A85EF290();
  if (v3 != v1)
  {
    __break(1u);
LABEL_6:
    v2 = MEMORY[0x1E69E7CC0];
  }

  v5 = v2;
  sub_1A8798444(&v5);
  return v5;
}

char *sub_1A8798444(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A8885A68(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1A87984B8(v5);
  *a1 = v2;
  return result;
}

char *sub_1A87984B8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1A88C9338();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for IMCoreSpotlightIndexReason(0);
        v5 = sub_1A88C8658();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1A87986B0(v7, v8, a1, v4);
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
    return sub_1A87985C0(0, v2, 1, a1);
  }

  return result;
}

char *sub_1A87985C0(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = (v6 + 8 * v4 - 8);
    v9 = &v5[-v4];
LABEL_5:
    v10 = *(v6 + 8 * v4);
    v11 = v9;
    v17 = v8;
    while (1)
    {
      v12 = *v8;
      v13 = [ObjCClassFromMetadata priorityForIndexReason_];
      result = [ObjCClassFromMetadata priorityForIndexReason_];
      if (v13 >= result)
      {
LABEL_4:
        ++v4;
        v8 = v17 + 1;
        --v9;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *v8;
      v10 = v8[1];
      *v8 = v10;
      v8[1] = v14;
      --v8;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A87986B0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v94 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v9 = *v94;
    if (!*v94)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1A8885A28(v8);
      v8 = result;
    }

    v85 = v5;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v5 = *&v8[16 * v86];
        v87 = *&v8[16 * v86 + 24];
        sub_1A8798D0C((*a3 + 8 * v5), (*a3 + 8 * *&v8[16 * v86 + 16]), *a3 + 8 * v87, v9);
        if (v85)
        {
        }

        if (v87 < v5)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A8885A28(v8);
        }

        if (v86 - 2 >= *(v8 + 2))
        {
          goto LABEL_116;
        }

        v88 = &v8[16 * v86];
        *v88 = v5;
        *(v88 + 1) = v87;
        result = sub_1A888599C(v86 - 1);
        v86 = *(v8 + 2);
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v92 = v5;
      v11 = *(*a3 + 8 * v10);
      v12 = (*a3 + 8 * v7);
      v14 = *v12;
      v13 = v12 + 2;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v97 = [ObjCClassFromMetadata priorityForIndexReason_];
      result = [ObjCClassFromMetadata priorityForIndexReason_];
      v95 = result;
      v90 = v9;
      v16 = (v9 + 2);
      while (v6 != v16)
      {
        v17 = v6;
        v18 = *(v13 - 1);
        v19 = [ObjCClassFromMetadata priorityForIndexReason_];
        v20 = v18;
        v6 = v17;
        result = [ObjCClassFromMetadata priorityForIndexReason_];
        ++v16;
        ++v13;
        if (v97 < v95 == v19 >= result)
        {
          v6 = (v16 - 1);
          break;
        }
      }

      v9 = v90;
      v5 = v92;
      if (v97 < v95)
      {
        if (v6 < v90)
        {
          goto LABEL_119;
        }

        if (v90 < v6)
        {
          v21 = v6 - 1;
          v22 = v90;
          do
          {
            if (v22 != v21)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v23 = *(v25 + 8 * v22);
              *(v25 + 8 * v22) = *(v25 + 8 * v21);
              *(v25 + 8 * v21) = v23;
            }
          }

          while (++v22 < v21--);
        }
      }

      v10 = v6;
    }

    v26 = a3[1];
    if (v10 < v26)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_118;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 >= v26)
        {
          v27 = a3[1];
        }

        else
        {
          v27 = (v9 + a4);
        }

        if (v27 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v10 != v27)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v10 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v99 = v10;
    if ((result & 1) == 0)
    {
      result = sub_1A873586C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1A873586C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v99;
    v43 = *v94;
    if (!*v94)
    {
      goto LABEL_127;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_58:
          if (v48)
          {
            goto LABEL_106;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_109;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_113;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_72:
        if (v66)
        {
          goto LABEL_108;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_111;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_79:
        v82 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v9 = *&v8[16 * v82 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1A8798D0C((*a3 + 8 * v9), (*a3 + 8 * *&v8[16 * v44 + 32]), *a3 + 8 * v83, v43);
        if (v5)
        {
        }

        if (v83 < v9)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A8885A28(v8);
        }

        if (v82 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v84 = &v8[16 * v82];
        *(v84 + 4) = v9;
        *(v84 + 5) = v83;
        result = sub_1A888599C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_104;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_105;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_107;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_110;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_114;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v7 = v99;
    v6 = a3[1];
    if (v99 >= v6)
    {
      goto LABEL_89;
    }
  }

  v93 = v5;
  v28 = *a3;
  v29 = swift_getObjCClassFromMetadata();
  v30 = v28 + 8 * v10 - 8;
  v91 = v9;
  v31 = (v9 - v10);
  v96 = v27;
LABEL_31:
  v98 = v10;
  v32 = *(v28 + 8 * v10);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    v35 = *v34;
    v36 = [v29 priorityForIndexReason_];
    result = [v29 priorityForIndexReason_];
    if (v36 >= result)
    {
LABEL_30:
      v10 = v98 + 1;
      v30 += 8;
      --v31;
      if ((v98 + 1) != v96)
      {
        goto LABEL_31;
      }

      v10 = v96;
      v9 = v91;
      v5 = v93;
      goto LABEL_38;
    }

    if (!v28)
    {
      break;
    }

    v37 = *v34;
    v32 = v34[1];
    *v34 = v32;
    v34[1] = v37;
    --v34;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_30;
    }
  }

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
  return result;
}

uint64_t sub_1A8798D0C(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = __dst;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if ((a3 - __dst) >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    if (a4 != __src || &__src[8 * v9] <= a4)
    {
      v13 = a3;
      memmove(a4, __src, 8 * v9);
      a3 = v13;
      v5 = __dst;
    }

    v15 = &v4[8 * v9];
    if (v7 < 8 || v5 >= a3)
    {
      v23 = v6;
      goto LABEL_41;
    }

    v16 = a3;
    v17 = v5;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    while (1)
    {
      v19 = *v4;
      v20 = [ObjCClassFromMetadata priorityForIndexReason_];
      if (v20 >= [ObjCClassFromMetadata priorityForIndexReason_])
      {
        break;
      }

      v21 = v17;
      v22 = v6 == v17;
      v17 += 8;
      if (!v22)
      {
        goto LABEL_17;
      }

LABEL_18:
      v6 += 8;
      if (v4 >= v15 || v17 >= v16)
      {
        v23 = v6;
        goto LABEL_41;
      }
    }

    v21 = v4;
    v22 = v6 == v4;
    v4 += 8;
    if (v22)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v6 = *v21;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[8 * v12] <= a4)
  {
    v24 = a3;
    memmove(a4, __dst, 8 * v12);
    a3 = v24;
    v5 = __dst;
  }

  v15 = &v4[8 * v12];
  if (v10 < 8)
  {
    v23 = v5;
    goto LABEL_41;
  }

  v26 = v5;
  if (v5 <= v6)
  {
    v23 = v5;
    goto LABEL_41;
  }

  v27 = a3;
  v28 = swift_getObjCClassFromMetadata();
  v29 = v27;
  v41 = v28;
  do
  {
    v40 = v26;
    v30 = v26 - 8;
    v31 = v29 - 1;
    v32 = v15;
    while (1)
    {
      v33 = v31;
      v34 = (v31 + 1);
      v35 = *(v32 - 1);
      v32 -= 8;
      v36 = v30;
      v37 = *v30;
      v38 = [v41 priorityForIndexReason_];
      if (v38 < [v41 priorityForIndexReason_])
      {
        break;
      }

      if (v34 != v15)
      {
        *v33 = *v32;
      }

      v31 = v33 - 1;
      v15 = v32;
      v30 = v36;
      if (v32 <= v4)
      {
        v15 = v32;
        v23 = v40;
        goto LABEL_41;
      }
    }

    v29 = v33;
    if (v34 != v40)
    {
      *v33 = *v36;
    }

    if (v15 <= v4)
    {
      break;
    }

    v26 = v36;
  }

  while (v36 > v6);
  v23 = v36;
LABEL_41:
  if (v23 != v4 || v23 >= &v4[(v15 - v4 + (v15 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v23, v4, 8 * ((v15 - v4) / 8));
  }

  return 1;
}

uint64_t sub_1A8799010(uint64_t a1)
{
  if (a1 <= 6)
  {
    if (a1 <= 2)
    {
      switch(a1)
      {
        case 0:
          return 900;
        case 1:
          return 980;
        case 2:
          return 500;
      }
    }

    else
    {
      if ((a1 - 4) < 3)
      {
        return 800;
      }

      if (a1 == 3)
      {
        return 0;
      }
    }

LABEL_26:
    type metadata accessor for IMCoreSpotlightIndexReason(0);
    result = sub_1A88C9458();
    __break(1u);
  }

  else
  {
    switch(a1)
    {
      case 1000:
      case 1010:
      case 1014:
        result = 1000;
        break;
      case 1001:
        result = 925;
        break;
      case 1002:
        result = 990;
        break;
      case 1003:
      case 1011:
        result = 999;
        break;
      case 1004:
        result = 1010;
        break;
      case 1005:
      case 1006:
      case 1007:
      case 1015:
        result = 998;
        break;
      case 1008:
      case 1013:
        result = 1;
        break;
      case 1009:
        result = 5000;
        break;
      case 1012:
        result = 1005;
        break;
      case 1016:
        result = 850;
        break;
      default:
        if (a1 != 7)
        {
          goto LABEL_26;
        }

        result = 799;
        break;
    }
  }

  return result;
}

uint64_t sub_1A8799138(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A8799188()
{
  v1 = IMStringFromClientCapabilities(*v0);
  v2 = sub_1A88C82E8();

  return v2;
}

uint64_t sub_1A87991D8()
{
  v0 = sub_1A88C6DC8();
  sub_1A85EFC04(v0, qword_1EB3053B8);
  sub_1A85EF0E4(v0, qword_1EB3053B8);
  return sub_1A88C6DA8();
}

uint64_t static MutedConversationEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB3021A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C6DC8();
  v3 = sub_1A85EF0E4(v2, qword_1EB3053B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t MutedConversationEntity.displayRepresentation.getter()
{
  v0 = sub_1A870CCE0(&qword_1EB303268);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1A88C7188();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A88C7178();
  v5 = sub_1A870CCE0(&qword_1EB303270);
  MEMORY[0x1EEE9AC00](v5 - 8);
  (*(v4 + 56))(&v9 - v6, 1, 1, v3);
  v7 = sub_1A88C6D58();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  return sub_1A88C6D68();
}

uint64_t sub_1A87994D0()
{

  sub_1A88C6D18();
}

void (*MutedConversationEntity.conversationIdentifier.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A88C6CF8();
  return sub_1A879A91C;
}

uint64_t sub_1A879962C()
{

  sub_1A88C6D18();
}

void (*MutedConversationEntity.unmuteTime.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A88C6CF8();
  return sub_1A879972C;
}

uint64_t MutedConversationEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_1A870CCE0(&qword_1EB303278);
  *a1 = sub_1A88C6D38();
  sub_1A870CCE0(&qword_1EB3053D0);
  result = sub_1A88C6D48();
  a1[1] = result;
  return result;
}

void MutedConversationEntity.init(conversationIdentifier:unmuteTime:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1A870CCE0(&qword_1EB303278);
  *a4 = sub_1A88C6D38();
  sub_1A870CCE0(&qword_1EB3053D0);
  a4[1] = sub_1A88C6D48();
  sub_1A88C6D18();
  [a3 doubleValue];
  sub_1A88C6D18();
}

uint64_t sub_1A879987C@<X0>(uint64_t *a1@<X8>)
{
  sub_1A870CCE0(&qword_1EB303278);
  *a1 = sub_1A88C6D38();
  sub_1A870CCE0(&qword_1EB3053D0);
  result = sub_1A88C6D48();
  a1[1] = result;
  return result;
}

uint64_t sub_1A87998DC(uint64_t a1)
{
  v2 = sub_1A879A8C8();

  return MEMORY[0x1EEDB29C8](a1, v2);
}

uint64_t sub_1A8799928()
{
  sub_1A879A8C8();

  return sub_1A88C6C38();
}

uint64_t sub_1A8799974@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB3021A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C6DC8();
  v3 = sub_1A85EF0E4(v2, qword_1EB3053B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A8799A1C(uint64_t a1)
{
  v2 = sub_1A879A3F4();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1A8799A68()
{
  v0 = sub_1A870CCE0(&qword_1EB303268);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1A88C7188();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A88C7178();
  v5 = sub_1A870CCE0(&qword_1EB303270);
  MEMORY[0x1EEE9AC00](v5 - 8);
  (*(v4 + 56))(&v9 - v6, 1, 1, v3);
  v7 = sub_1A88C6D58();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  return sub_1A88C6D68();
}

uint64_t sub_1A8799C30(uint64_t a1)
{
  v2 = sub_1A879A698();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t static MutedConversationListRemoteNotifier.notifyListChanged()()
{
  v0 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1A88C87A8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1A873A5E4(0, 0, v2, &unk_1A88E8D60, v4);
}

uint64_t sub_1A8799D6C()
{
  v1 = sub_1A88C6C48();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_1A88C6C68();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v3 = swift_task_alloc();
  v0[8] = v3;
  v0[9] = sub_1A879A3F4();
  *v3 = v0;
  v3[1] = sub_1A8799ED0;

  return MEMORY[0x1EEDB2C30]();
}

uint64_t sub_1A8799ED0(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 80) = a1 & 1;

    return MEMORY[0x1EEE6DFA0](sub_1A879A034, 0, 0);
  }
}

uint64_t sub_1A879A034()
{
  if (*(v0 + 80) == 1)
  {
    v2 = *(v0 + 48);
    v1 = *(v0 + 56);
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    (*(v6 + 104))(v4, *MEMORY[0x1E6959DC8], v5);
    sub_1A88C6C88();
    (*(v6 + 8))(v4, v5);
    sub_1A88C6C58();
    (*(v2 + 8))(v1, v3);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1A879A154()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A8716570;

  return sub_1A8799D6C();
}

id MutedConversationListRemoteNotifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MutedConversationListRemoteNotifier.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MutedConversationListRemoteNotifier();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MutedConversationListRemoteNotifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MutedConversationListRemoteNotifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A879A3F4()
{
  result = qword_1EB3053D8;
  if (!qword_1EB3053D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3053D8);
  }

  return result;
}

unint64_t sub_1A879A44C()
{
  result = qword_1EB3053E0;
  if (!qword_1EB3053E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3053E0);
  }

  return result;
}

unint64_t sub_1A879A4A4()
{
  result = qword_1EB3053E8;
  if (!qword_1EB3053E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3053E8);
  }

  return result;
}

unint64_t sub_1A879A4FC()
{
  result = qword_1EB3053F0;
  if (!qword_1EB3053F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3053F0);
  }

  return result;
}

unint64_t sub_1A879A598()
{
  result = qword_1EB305408;
  if (!qword_1EB305408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305408);
  }

  return result;
}

unint64_t sub_1A879A5EC()
{
  result = qword_1EB305410;
  if (!qword_1EB305410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305410);
  }

  return result;
}

unint64_t sub_1A879A640()
{
  result = qword_1EB305418;
  if (!qword_1EB305418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305418);
  }

  return result;
}

unint64_t sub_1A879A698()
{
  result = qword_1EB305420;
  if (!qword_1EB305420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305420);
  }

  return result;
}

unint64_t sub_1A879A734()
{
  result = qword_1EB305438;
  if (!qword_1EB305438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305438);
  }

  return result;
}

uint64_t sub_1A879A788(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1A879A7D0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1A879A81C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A8714B6C;

  return sub_1A8799D6C();
}

unint64_t sub_1A879A8C8()
{
  result = qword_1EB305440;
  if (!qword_1EB305440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305440);
  }

  return result;
}

uint64_t sub_1A879A94C(void *a1)
{
  if (qword_1EB300860 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return *(qword_1EB300868 + *a1);
}

void static IMGenerativeModelsAvailabilityProvider.setMessageSummarizationUserPreference(_:)(char a1)
{
  v2 = sub_1A88C82A8();
  v3 = sub_1A88C82A8();
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  IMSetDomainValueForKey();
}

uint64_t sub_1A879ABA0()
{
  type metadata accessor for TranslationLanguages();
  v0 = swift_allocObject();
  result = sub_1A879AE48();
  off_1EB3005F0 = v0;
  return result;
}

uint64_t static TranslationLanguages.shared.getter()
{
  if (qword_1EB3005E8 != -1)
  {
    swift_once();
  }
}

void sub_1A879AC38(void *a1)
{
  v2 = v1;
  v3 = *(v1 + 72);
  if (a1)
  {
    if (!v3)
    {
      return;
    }

    v4 = a1;
    sub_1A85E9718(0, &qword_1EB305470);
    v5 = v3;
    v6 = v4;
    LOBYTE(v4) = sub_1A88C8BA8();

    if (v4)
    {
      return;
    }

    v3 = *(v2 + 72);
  }

  if (v3)
  {
    v7 = swift_allocObject();
    swift_weakInit();
    v18 = sub_1A87A212C;
    v19 = v7;
    v14 = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    v16 = sub_1A85EB8C0;
    v17 = &unk_1F1BAE6E8;
    v8 = _Block_copy(&v14);
    v9 = v3;

    [v9 setInterruptionHandler_];
    _Block_release(v8);

    v10 = *(v2 + 72);
    if (v10)
    {
      v11 = swift_allocObject();
      swift_weakInit();
      v18 = sub_1A87A2130;
      v19 = v11;
      v14 = MEMORY[0x1E69E9820];
      v15 = 1107296256;
      v16 = sub_1A85EB8C0;
      v17 = &unk_1F1BAE710;
      v12 = _Block_copy(&v14);
      v13 = v10;

      [v13 setInvalidationHandler_];
      _Block_release(v12);
    }
  }
}

uint64_t sub_1A879AE48()
{
  v32 = sub_1A88C8A28();
  v1 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A88C7EF8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1A88C8A18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = MEMORY[0x1E69E7CC0];
  v30 = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = sub_1A8738F98(v6);
  v7 = sub_1A85E9718(0, &qword_1ED8C95A0);
  v28 = "(for:unsortedLanguages:)";
  v29 = v7;
  v27 = sub_1A870CCE0(&qword_1EB3023F8);
  v26 = *(v5 + 72);
  v8 = swift_allocObject();
  v25 = xmmword_1A88E14F0;
  *(v8 + 16) = xmmword_1A88E14F0;
  sub_1A88C8A08();
  aBlock = v8;
  v24[3] = sub_1A87A2044();
  v24[2] = sub_1A870CCE0(&qword_1EB3023F0);
  sub_1A87A209C();
  sub_1A88C8CE8();
  _s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA0__0();
  v9 = *MEMORY[0x1E69E8090];
  v10 = v1 + 104;
  v11 = *(v1 + 104);
  v24[1] = v10;
  v11(v31, v9, v32);
  v12 = sub_1A88C8A78();
  v13 = v30;
  *(v30 + 32) = v12;
  v28 = "s.TranslationLanguages";
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v25;
  sub_1A88C8A08();
  aBlock = v15;
  sub_1A88C8CE8();
  _s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA0__0();
  v11(v31, v9, v32);
  *(v14 + 40) = sub_1A88C8A78();
  *(v14 + 48) = 1;
  *(v14 + 56) = 0;
  *(v14 + 64) = MEMORY[0x1E69E7CC0];
  v16 = [objc_allocWithZone(MEMORY[0x1E698D428]) init];
  *(v14 + 72) = v16;
  if (v16)
  {
    v17 = swift_allocObject();
    swift_weakInit();
    v37 = sub_1A87A212C;
    v38 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_1A85EB8C0;
    v36 = &unk_1F1BAE918;
    v18 = _Block_copy(&aBlock);
    v19 = v16;

    [v19 setInterruptionHandler_];
    _Block_release(v18);

    v16 = *(v14 + 72);
  }

  if (v16)
  {
    v20 = swift_allocObject();
    swift_weakInit();
    v37 = sub_1A87A2130;
    v38 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_1A85EB8C0;
    v36 = &unk_1F1BAE940;
    v21 = _Block_copy(&aBlock);
    v22 = v16;

    [v22 setInvalidationHandler_];
    _Block_release(v21);
  }

  return v14;
}

void sub_1A879B398(uint64_t a1, const char *a2)
{
  v3 = sub_1A88C7E58();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C7E48();
  v7 = sub_1A88C7E38();
  v8 = sub_1A88C89C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1A85E5000, v7, v8, a2, v9, 2u);
    MEMORY[0x1AC571F20](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + 72);
    *(Strong + 72) = 0;
    sub_1A879AC38(v11);
  }
}

uint64_t sub_1A879B550()
{
  v1 = *(v0 + 40);
  sub_1A870CCE0(&qword_1EB303100);
  sub_1A88C8A58();

  return v3;
}

uint64_t sub_1A879B610()
{
  v1 = *(v0 + 32);
  sub_1A870CCE0(&qword_1EB304C38);
  sub_1A88C8A58();

  return v3;
}

void sub_1A879B6F0(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    *(a1 + 48) = 0;
    if (MEMORY[0x1E6982BF8])
    {
      v8[10] = v1;
      v8[11] = v2;
      v4 = objc_allocWithZone(MEMORY[0x1E6982BF8]);
      v8[4] = sub_1A87A0230;
      v8[5] = a1;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 1107296256;
      v8[2] = sub_1A86041A0;
      v8[3] = &unk_1F1BAE7B0;
      v5 = _Block_copy(v8);

      v6 = [v4 initWithTaskHint:11 useDedicatedMachPort:0 observations:v5];
      _Block_release(v5);

      v7 = *(a1 + 56);
      *(a1 + 56) = v6;
    }
  }
}

uint64_t sub_1A879B824()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1A879B8F8;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1A879B8F8()
{

  return MEMORY[0x1EEE6DFA0](sub_1A879B9F4, 0, 0);
}

uint64_t sub_1A879BA08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A88C7EF8();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A870CCE0(&qword_1EB303D00);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v20 = sub_1A88C7EC8();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 32);
  sub_1A88C7EB8();
  (*(v8 + 16))(v10, a1, v7);
  v14 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  (*(v8 + 32))(v15 + v14, v10, v7);
  aBlock[4] = sub_1A87A0154;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A85EB8C0;
  aBlock[3] = &unk_1F1BAE760;
  v16 = _Block_copy(aBlock);

  _s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA0__0();
  v17 = v19;
  MEMORY[0x1AC56F330](0, v6, v13, v16);
  _Block_release(v16);

  (*(v21 + 8))(v6, v22);
  (*(v11 + 8))(v13, v20);
}

uint64_t sub_1A879BD14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB303D00);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  if (*(*(a1 + 24) + 16))
  {
    return sub_1A88C86F8();
  }

  (*(v5 + 16))(v7, a2, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  swift_beginAccess();
  v11 = *(a1 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 64) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1A8735970(0, v11[2] + 1, 1, v11);
    *(a1 + 64) = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1A8735970((v13 > 1), v14 + 1, 1, v11);
  }

  v11[2] = v14 + 1;
  v15 = &v11[2 * v14];
  v15[4] = sub_1A87A01C4;
  v15[5] = v10;
  *(a1 + 64) = v11;
  return swift_endAccess();
}

uint64_t sub_1A879BF18(uint64_t a1, uint64_t a2)
{
  v5 = sub_1A88C7EF8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A88C7EC8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 32);
  sub_1A88C7EB8();
  aBlock[4] = a1;
  v17 = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A85EB8C0;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  _s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA0__0();
  MEMORY[0x1AC56F330](0, v8, v12, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

void sub_1A879C120()
{
  [*(v0 + 56) cancel];
  v1 = *(v0 + 56);
  *(v0 + 56) = 0;
}

uint64_t sub_1A879C15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A870CCE0(&qword_1EB304C30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  sub_1A879C280(a1, a2, &v14 - v7);
  v9 = type metadata accessor for TranslationLanguage();
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    result = sub_1A85EF638(v8, &qword_1EB304C30);
    v11 = 0;
    v12 = 1;
    v13 = 2;
  }

  else
  {
    v13 = *v8;
    v11 = v8[8];
    v12 = v8[9];
    result = sub_1A879C55C(v8);
  }

  *a3 = v13;
  *(a3 + 8) = v11;
  *(a3 + 9) = v12;
  return result;
}

uint64_t sub_1A879C280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1A88C7E58();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 32);
  sub_1A870CCE0(&qword_1EB304C38);
  sub_1A88C8A58();

  v12 = v25;
  if (*(v25 + 16))
  {
    v13 = sub_1A85F5F40(a1, a2);
    if (v14)
    {
      v15 = v13;
      v16 = *(v12 + 56);
      v17 = type metadata accessor for TranslationLanguage();
      v18 = *(v17 - 8);
      sub_1A876E4B4(v16 + *(v18 + 72) * v15, a3);

      return (*(v18 + 56))(a3, 0, 1, v17);
    }
  }

  else
  {

    sub_1A88C7E48();
    v20 = sub_1A88C7E38();
    v21 = sub_1A88C89C8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1A85E5000, v20, v21, "languageInfo called but initial language response not received yet", v22, 2u);
      MEMORY[0x1AC571F20](v22, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
  }

  v23 = type metadata accessor for TranslationLanguage();
  return (*(*(v23 - 8) + 56))(a3, 1, 1, v23);
}

uint64_t sub_1A879C55C(uint64_t a1)
{
  v2 = type metadata accessor for TranslationLanguage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id *TranslationLanguages.deinit()
{

  return v0;
}

uint64_t TranslationLanguages.__deallocating_deinit()
{
  TranslationLanguages.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A879C63C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&unk_1EB3090D0);
  result = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  if (a1)
  {
    v8 = sub_1A88C87A8();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = a2;
    v9[5] = a1;

    sub_1A885A178(0, 0, v7, &unk_1A88E9118, v9);
  }

  return result;
}

uint64_t sub_1A879C758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A879C778, 0, 0);
}

uint64_t sub_1A879C778()
{
  sub_1A879C7D8(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A879C7D8(unint64_t a1)
{
  v2 = sub_1A88C7EF8();
  v68 = *(v2 - 8);
  v69 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v66 = &v62[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = sub_1A88C7EC8();
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v64 = &v62[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for TranslationLanguage();
  v75 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v72 = &v62[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v6);
  v71 = &v62[-v9];
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v62[-v10];
  v12 = sub_1A88C7E58();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v62[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A88C7E48();
  v16 = sub_1A88C7E38();
  v17 = sub_1A88C89D8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1A85E5000, v16, v17, "languageSource update", v18, 2u);
    MEMORY[0x1AC571F20](v18, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  if (a1 >> 62)
  {
    goto LABEL_48;
  }

  v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v20 = MEMORY[0x1E69E7CC0];
  if (!v19)
  {
LABEL_26:
    v34 = *(v70 + 32);
    sub_1A870CCE0(&qword_1EB304C38);
    sub_1A88C8A58();

    v11 = sub_1A87A178C(v20, aBlock[0]);

    if (v11 == 2)
    {
    }

    v63 = v11;
    if (!*(v20 + 16))
    {
      v5 = MEMORY[0x1E69E7CC8];
LABEL_44:
      v56 = v70;
      v57 = *(v70 + 32);
      v58 = v64;
      sub_1A88C7EB8();
      v59 = swift_allocObject();
      *(v59 + 16) = v56;
      *(v59 + 24) = v5;
      *(v59 + 32) = v63;
      *(v59 + 40) = v20;
      aBlock[4] = sub_1A87A1BD8;
      aBlock[5] = v59;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A85EB8C0;
      aBlock[3] = &unk_1F1BAE828;
      v60 = _Block_copy(aBlock);

      v61 = v66;
      _s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA0__0();
      MEMORY[0x1AC56F330](0, v61, v58, v60);
      _Block_release(v60);

      (*(v68 + 8))(v61, v69);
      (*(v65 + 8))(v58, v67);
    }

    a1 = *(v20 + 16);
    v36 = 0;
    v37 = *(v5 + 20);
    v73 = v20 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
    v74 = v37;
    v5 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v36 >= *(v20 + 16))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        v19 = sub_1A88C8D38();
        goto LABEL_5;
      }

      v39 = *(v75 + 72);
      v40 = v71;
      sub_1A876E4B4(v73 + v39 * v36, v71);
      v41 = sub_1A88C74D8();
      v11 = v42;
      sub_1A8739C78(v40, v72);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v5;
      v44 = sub_1A85F5F40(v41, v11);
      v46 = *(v5 + 16);
      v47 = (v45 & 1) == 0;
      v48 = __OFADD__(v46, v47);
      v49 = v46 + v47;
      if (v48)
      {
        goto LABEL_46;
      }

      v50 = v45;
      if (*(v5 + 24) < v49)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_38;
      }

      v55 = v44;
      sub_1A87B16A4();
      v44 = v55;
      if (v50)
      {
LABEL_30:
        v38 = v44;

        v5 = aBlock[0];
        sub_1A87A1BE8(v72, *(aBlock[0] + 56) + v38 * v39);
        goto LABEL_31;
      }

LABEL_39:
      v5 = aBlock[0];
      *(aBlock[0] + 8 * (v44 >> 6) + 64) |= 1 << v44;
      v52 = (*(v5 + 48) + 16 * v44);
      *v52 = v41;
      v52[1] = v11;
      sub_1A8739C78(v72, *(v5 + 56) + v44 * v39);
      v53 = *(v5 + 16);
      v48 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v48)
      {
        goto LABEL_47;
      }

      *(v5 + 16) = v54;
LABEL_31:
      if (a1 == ++v36)
      {
        goto LABEL_44;
      }
    }

    sub_1A88798CC(v49, isUniquelyReferenced_nonNull_native);
    v44 = sub_1A85F5F40(v41, v11);
    if ((v50 & 1) != (v51 & 1))
    {
      goto LABEL_50;
    }

LABEL_38:
    if (v50)
    {
      goto LABEL_30;
    }

    goto LABEL_39;
  }

  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A871D6E8(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v21 = 0;
    v22 = a1;
    v73 = a1 & 0xC000000000000001;
    v74 = a1;
    v20 = aBlock[0];
    while (1)
    {
      v23 = v73 ? MEMORY[0x1AC56F710](v21, v22) : *(v22 + 8 * v21 + 32);
      v24 = v23;
      v25 = [v23 status];
      v26 = v25;
      if (v25 > 1)
      {
        break;
      }

      if (!v25)
      {
        v28 = 0;
LABEL_20:
        v27 = 1;
        goto LABEL_21;
      }

      if (v25 != 1)
      {
        goto LABEL_17;
      }

      if ([v24 isIndeterminateProgress])
      {
        v26 = 0;
        v27 = 0;
        v28 = 1;
      }

      else
      {
        [v24 progress];
        v28 = 0;
        v27 = 0;
        v26 = v33;
      }

LABEL_21:
      v29 = [v24 locale];
      sub_1A88C7548();

      v30 = [v24 downloadSize];
      *v11 = v26;
      v11[8] = v28;
      v11[9] = v27;
      *&v11[*(v5 + 24)] = v30;
      aBlock[0] = v20;
      v32 = *(v20 + 16);
      v31 = *(v20 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1A871D6E8(v31 > 1, v32 + 1, 1);
        v20 = aBlock[0];
      }

      ++v21;
      *(v20 + 16) = v32 + 1;
      sub_1A8739C78(v11, v20 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v32);
      v22 = v74;
      if (v19 == v21)
      {
        goto LABEL_26;
      }
    }

    if (v25 == 2)
    {
      v28 = 0;
      v26 = 1;
      goto LABEL_20;
    }

LABEL_17:
    v28 = 0;
    v27 = 1;
    v26 = 2;
    goto LABEL_21;
  }

  __break(1u);
LABEL_50:
  result = sub_1A88C9488();
  __break(1u);
  return result;
}

uint64_t sub_1A879D054(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  *(a1 + 24) = a2;

  swift_beginAccess();
  v11 = *(a1 + 64);
  *(a1 + 64) = MEMORY[0x1E69E7CC0];
  v12 = sub_1A88C87A8();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a1;
  *(v13 + 40) = a3;
  *(v13 + 48) = a4;
  *(v13 + 56) = v11;

  sub_1A885A178(0, 0, v10, &unk_1A88E9128, v13);
}

uint64_t sub_1A879D1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 56) = a5;
  *(v7 + 16) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A879D1EC, 0, 0);
}

uint64_t sub_1A879D1EC()
{
  if (v0[3].i8[8])
  {
    v1 = v0[2].i64[0];
    sub_1A87A1D24(v0[3].i8[8]);
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v0[2].i64[0] + 40;
      do
      {
        v4 = *(v3 - 8);

        v4(v5);

        v3 += 16;
        --v2;
      }

      while (v2);
    }

    v6 = v0->i64[1];

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    v0[2].i64[1] = v8;
    v8[1] = vextq_s8(v0[1], v0[1], 8uLL);
    v9 = swift_task_alloc();
    v0[3].i64[0] = v9;
    *v9 = v0;
    v9[1] = sub_1A879D360;

    return MEMORY[0x1EEE6DDE0]();
  }
}

uint64_t sub_1A879D360()
{

  return MEMORY[0x1EEE6DFA0](sub_1A879D478, 0, 0);
}

uint64_t sub_1A879D478()
{
  v1 = *(v0 + 32);
  sub_1A87A1D24(*(v0 + 56));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 32) + 40;
    do
    {
      v4 = *(v3 - 8);

      v4(v5);

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1A879D51C(uint64_t a1, void *a2, uint64_t a3)
{
  v54 = type metadata accessor for TranslationLanguage();
  v42 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A88C7EF8();
  v52 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v51 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A870CCE0(&qword_1EB303D00);
  v45 = *(v10 - 8);
  v46 = v10;
  v11 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v40 - v12;
  v14 = sub_1A88C7EC8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v47 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = a2;

  sub_1A87A02F8(aBlock);
  v43 = v11;
  v44 = v13;
  v48 = a1;
  v49 = v15;
  v17 = aBlock[0];
  v18 = aBlock[0][2];
  v53 = v8;
  v50 = v14;
  if (v18)
  {
    v41 = a3;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A871CE50(0, v18, 0);
    v19 = aBlock[0];
    v20 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v40[1] = v17;
    v21 = v17 + v20;
    v22 = *(v42 + 72);
    do
    {
      sub_1A876E4B4(v21, v7);
      v23 = sub_1A88C74D8();
      v25 = v24;
      sub_1A879C55C(v7);
      aBlock[0] = v19;
      v27 = v19[2];
      v26 = v19[3];
      if (v27 >= v26 >> 1)
      {
        sub_1A871CE50((v26 > 1), v27 + 1, 1);
        v19 = aBlock[0];
      }

      v19[2] = v27 + 1;
      v28 = &v19[2 * v27];
      v28[4] = v23;
      v28[5] = v25;
      v21 += v22;
      --v18;
    }

    while (v18);

    a3 = v41;
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
  }

  v29 = v51;
  v30 = *(a3 + 40);
  v31 = v47;
  sub_1A88C7EB8();
  v32 = a3;
  v34 = v44;
  v33 = v45;
  v35 = v46;
  (*(v45 + 16))(v44, v48, v46);
  v36 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v37 = swift_allocObject();
  *(v37 + 2) = v32;
  *(v37 + 3) = v19;
  (*(v33 + 32))(&v37[v36], v34, v35);
  aBlock[4] = sub_1A87A1E7C;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A85EB8C0;
  aBlock[3] = &unk_1F1BAE8A0;
  v38 = _Block_copy(aBlock);

  _s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA0__0();
  MEMORY[0x1AC56F330](0, v29, v31, v38);
  _Block_release(v38);

  (*(v52 + 8))(v29, v53);
  (*(v49 + 8))(v31, v50);
}

uint64_t sub_1A879D9EC(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;

  sub_1A870CCE0(&qword_1EB303D00);
  return sub_1A88C86F8();
}

uint64_t sub_1A879DA40()
{
  sub_1A88C8768();
  *(v0 + 16) = sub_1A88C8758();
  v2 = sub_1A88C86D8();

  return MEMORY[0x1EEE6DFA0](sub_1A879DAD4, v2, v1);
}

uint64_t sub_1A879DAD4()
{

  v1 = [objc_opt_self() defaultCenter];
  [v1 postNotificationName:@"__kIMTranslationLanguageStatusChangedNotification" object:0];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A879DB78()
{
  sub_1A88C8768();
  *(v0 + 16) = sub_1A88C8758();
  v2 = sub_1A88C86D8();

  return MEMORY[0x1EEE6DFA0](sub_1A879DC0C, v2, v1);
}

uint64_t sub_1A879DC0C()
{

  v1 = [objc_opt_self() defaultCenter];
  [v1 postNotificationName:@"__kIMTranslationLanguageDownloadProgressChangedNotification" object:0];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t TranslationLanguages.startDownloadingLanguageAssetsIfNeeded(for:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1A88C7E58();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for TranslationLanguage();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  sub_1A870CCE0(&qword_1EB304C30);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A879DE1C, 0, 0);
}

uint64_t sub_1A879DE1C()
{
  v95 = v1;
  v2 = v1[4];
  v93 = v1[5];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v90 = v1[11];
    v6 = v2 + 40;
    v82 = MEMORY[0x1E69E7CC0];
    v88 = v2 + 40;
    do
    {
      v7 = (v6 + 16 * v5);
      v8 = v5;
      while (1)
      {
        if (v8 >= v3)
        {
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v5 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_59;
        }

        v11 = *(v7 - 1);
        v10 = *v7;
        v12 = *(v93 + 32);

        v13 = v12;
        sub_1A870CCE0(&qword_1EB304C38);
        sub_1A88C8A58();

        v14 = v1[2];
        if (*(v14 + 16))
        {
          v15 = sub_1A85F5F40(v11, v10);
          if (v16)
          {
            break;
          }
        }

        v0 = v1[14];
        v9 = v1[10];

        (*(v90 + 56))(v0, 1, 1, v9);
        sub_1A85EF638(v0, &qword_1EB304C30);
        ++v8;
        v7 += 2;
        if (v5 == v3)
        {
          goto LABEL_14;
        }
      }

      v17 = v1[14];
      v18 = v1[10];
      sub_1A876E4B4(*(v14 + 56) + *(v90 + 72) * v15, v17);

      (*(v90 + 56))(v17, 0, 1, v18);
      sub_1A85EF638(v17, &qword_1EB304C30);
      v19 = v82;
      v94[0] = v82;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1A871CE50(0, *(v82 + 16) + 1, 1);
        v19 = v94[0];
      }

      v6 = v88;
      v0 = *(v19 + 16);
      v20 = *(v19 + 24);
      if (v0 >= v20 >> 1)
      {
        sub_1A871CE50((v20 > 1), v0 + 1, 1);
        v19 = v94[0];
      }

      *(v19 + 16) = v0 + 1;
      v82 = v19;
      v21 = v19 + 16 * v0;
      *(v21 + 32) = v11;
      *(v21 + 40) = v10;
    }

    while (v5 != v3);
LABEL_14:
    v0 = v82;
  }

  else
  {
    v4 = 0;
    v0 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_62;
  }

  while (2)
  {
    v22 = *(v0 + 16);
    if (!v22)
    {
      goto LABEL_49;
    }

    v23 = 0;
    v89 = v1[13];
    v85 = v1[11];
    v86 = v1[12];
    v87 = (v1[7] + 8);
    v24 = v0 + 40;
    v81 = v0 + 16;
    v83 = v0;
    v80 = v0 + 40;
    do
    {
      v25 = (v24 + 16 * v23);
      while (1)
      {
        v26 = v1[13];
        v27 = v1[10];
        v28 = *(v25 - 1);
        v29 = *v25;

        sub_1A879C280(v28, v29, v26);
        v30 = (*(v85 + 48))(v26, 1, v27);
        v31 = v1[13];
        if (v30 == 1)
        {
          break;
        }

        v32 = *v31;
        v33 = *(v89 + 8);
        v34 = v4;
        v35 = *(v89 + 9);
        sub_1A879C55C(v31);
        v36 = v35 == 1;
        v4 = v34;
        v36 = !v36 || (v32 ^ 1 | v33) == 0;
        if (!v36)
        {
          goto LABEL_29;
        }

        ++v23;
        v25 += 2;
        if (v23 >= v22)
        {
          goto LABEL_44;
        }
      }

      sub_1A85EF638(v31, &qword_1EB304C30);
LABEL_29:

      if (v23 >= v22 - 1)
      {
        break;
      }

      v37 = (v81 + 16 * v22--);
      while (1)
      {
        v38 = *v37;
        v39 = v37[1];
        v40 = *(v93 + 32);

        v41 = v40;
        sub_1A870CCE0(&qword_1EB304C38);
        sub_1A88C8A58();

        v42 = v1[3];
        v91 = v4;
        if (!*(v42 + 16))
        {

          sub_1A88C7E48();
          v49 = sub_1A88C7E38();
          v50 = sub_1A88C89C8();
          v51 = os_log_type_enabled(v49, v50);
          v52 = v1[9];
          v53 = v1[6];
          if (v51)
          {
            v84 = v1[6];
            v54 = swift_slowAlloc();
            *v54 = 0;
            _os_log_impl(&dword_1A85E5000, v49, v50, "languageInfo called but initial language response not received yet", v54, 2u);
            MEMORY[0x1AC571F20](v54, -1, -1);

            (*v87)(v52, v84);
          }

          else
          {

            (*v87)(v52, v53);
          }

          goto LABEL_32;
        }

        v43 = sub_1A85F5F40(v38, v39);
        if (v44)
        {
          break;
        }

LABEL_32:

        --v22;
        v37 -= 2;
        v4 = v91;
        if (v23 >= v22)
        {
          goto LABEL_44;
        }
      }

      v45 = v1[12];
      sub_1A876E4B4(*(v42 + 56) + *(v85 + 72) * v43, v45);

      v46 = *v45;
      v47 = *(v86 + 8);
      v48 = *(v86 + 9);
      sub_1A879C55C(v45);
      if (v48 == 1 && v46 ^ 1 | v47)
      {
        goto LABEL_32;
      }

      if (v23 != v22)
      {
        v55 = *(v25 - 1);
        v56 = *v25;
        *(v25 - 1) = *v37;
        *v37 = v55;
        v37[1] = v56;
      }

      ++v23;
      v4 = v91;
      v24 = v80;
    }

    while (v23 < v22);
LABEL_44:
    v0 = v83;
    v57 = *(v83 + 16);
    if (v57 < v23)
    {
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      v0 = sub_1A879FE6C(v0);
      continue;
    }

    break;
  }

  if (v23 < 0)
  {
    goto LABEL_61;
  }

  if (!v23)
  {
    goto LABEL_50;
  }

  sub_1A879FC00(v83, v83 + 32, v23, (2 * v57) | 1);
  v59 = *(v83 + 16);
  v1[15] = v58;
  if (v59 >= v23)
  {
    v60 = v58;
    if (v59 != v23)
    {
      goto LABEL_51;
    }
  }

  else
  {
    __break(1u);
LABEL_49:
    v57 = 0;
LABEL_50:
    v1[15] = v0;

    v23 = 0;
    v60 = v0;
    if (v57)
    {
LABEL_51:
      sub_1A879FC00(v0, v0 + 32, 0, (2 * v23) | 1);
      v62 = v61;

      v0 = v62;
    }
  }

  sub_1A88C7E48();

  v63 = sub_1A88C7E38();
  v64 = sub_1A88C89D8();

  v65 = os_log_type_enabled(v63, v64);
  v67 = v1[7];
  v66 = v1[8];
  v68 = v1[6];
  if (v65)
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v94[0] = v70;
    *v69 = 136315394;
    v71 = MEMORY[0x1AC56EED0](v60, MEMORY[0x1E69E6158]);
    v92 = v68;
    v73 = sub_1A85F0394(v71, v72, v94);

    *(v69 + 4) = v73;
    *(v69 + 12) = 2080;
    v74 = MEMORY[0x1AC56EED0](v0, MEMORY[0x1E69E6158]);
    v76 = v75;

    v77 = sub_1A85F0394(v74, v76, v94);

    *(v69 + 14) = v77;
    _os_log_impl(&dword_1A85E5000, v63, v64, "Download requested for: %s. Skipping %s", v69, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC571F20](v70, -1, -1);
    MEMORY[0x1AC571F20](v69, -1, -1);

    (*(v67 + 8))(v66, v92);
  }

  else
  {

    (*(v67 + 8))(v66, v68);
  }

  v78 = swift_task_alloc();
  v1[16] = v78;
  *v78 = v1;
  v78[1] = sub_1A879E6F8;

  return sub_1A879E954(v60);
}

uint64_t sub_1A879E6F8()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1A879E8B0;
  }

  else
  {
    v2 = sub_1A879E80C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}
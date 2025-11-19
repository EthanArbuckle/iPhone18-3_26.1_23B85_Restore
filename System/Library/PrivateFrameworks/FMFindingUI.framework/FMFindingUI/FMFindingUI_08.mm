uint64_t sub_24A5BB1A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 32))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_24A62E354();

    if (v45[0])
    {
      if (qword_27EF4EA88 != -1)
      {
        swift_once();
      }

      v4 = &qword_27EF5C760;
    }

    else
    {
      if (qword_27EF4EA80 != -1)
      {
        swift_once();
      }

      v4 = &qword_27EF5C758;
    }

    v5 = *v4;

    sub_24A62EA64();
    v6 = 0.0;
    sub_24A62E3F4();
    v7 = sub_24A62E9C4();
    v9 = v8;
    sub_24A5BB71C(a1, &v20);
    *&v46[0] = v7;
    *(&v46[0] + 1) = v9;
    v46[7] = v26;
    v46[8] = v27;
    v46[9] = v28;
    v46[3] = v22;
    v46[4] = v23;
    v46[5] = v24;
    v46[6] = v25;
    v46[1] = v20;
    v46[2] = v21;
    *&v61[120] = v26;
    *&v61[56] = v22;
    *&v61[136] = v27;
    *&v61[152] = v28;
    *&v61[72] = v23;
    *&v61[88] = v24;
    *&v61[104] = v25;
    *&v61[8] = v46[0];
    *&v61[24] = v20;
    *&v61[40] = v21;
    v55 = v26;
    v56 = v27;
    v57 = v28;
    v51 = v22;
    v52 = v23;
    v47 = v29;
    *&v61[168] = v29;
    v48[0] = v7;
    v48[1] = v9;
    v58 = v29;
    v53 = v24;
    v54 = v25;
    v49 = v20;
    v50 = v21;
    sub_24A50D63C(v46, v45, &qword_27EF51480, &qword_24A63A188);
    sub_24A50D6A4(v48, &qword_27EF51480, &qword_24A63A188);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    if (LOBYTE(v45[0]))
    {
      v6 = 1.0;
    }

    v10 = sub_24A62E854();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    sub_24A62E3C4();
    v11 = sub_24A62E9C4();
    v13 = v12;
    v30 = *&v61[128];
    v31 = *&v61[144];
    v32 = *&v61[160];
    v26 = *&v61[64];
    v27 = *&v61[80];
    v28 = *&v61[96];
    v29 = *&v61[112];
    v22 = *v61;
    v23 = *&v61[16];
    v24 = *&v61[32];
    v25 = *&v61[48];
    v20 = v59;
    v21 = v60;
    *&v16[160] = *&v61[128];
    *&v16[176] = *&v61[144];
    *&v16[96] = *&v61[64];
    *&v16[112] = *&v61[80];
    *&v16[128] = *&v61[96];
    *&v16[144] = *&v61[112];
    *&v16[32] = *v61;
    *&v16[48] = *&v61[16];
    *&v16[64] = *&v61[32];
    *&v16[80] = *&v61[48];
    *v16 = v59;
    *&v16[16] = v60;
    *v33 = v6;
    *(&v33[0] + 1) = 0x403E000000000000;
    v33[1] = v17;
    v33[2] = v18;
    *&v34 = v19;
    *(&v34 + 1) = v10;
    LOWORD(v35) = 256;
    *(&v35 + 1) = v11;
    v36 = v12;
    *&v16[288] = v12;
    *&v16[224] = v17;
    *&v16[240] = v18;
    *&v16[192] = *&v61[160];
    *&v16[208] = v33[0];
    *&v16[256] = v34;
    *&v16[272] = v35;
    memcpy(a2, v16, 0x128uLL);
    *v37 = v6;
    v38 = v17;
    v39 = v18;
    v37[1] = 0x403E000000000000;
    v40 = v19;
    v41 = v10;
    v42 = 256;
    v43 = v11;
    v44 = v13;
    sub_24A50D63C(&v20, v45, &qword_27EF51488, &qword_24A63A190);
    sub_24A50D63C(v33, v45, &qword_27EF51490, &qword_24A63A198);
    sub_24A50D6A4(v37, &qword_27EF51490, &qword_24A63A198);
    v45[10] = *&v61[128];
    v45[11] = *&v61[144];
    v45[12] = *&v61[160];
    v45[6] = *&v61[64];
    v45[7] = *&v61[80];
    v45[8] = *&v61[96];
    v45[9] = *&v61[112];
    v45[2] = *v61;
    v45[3] = *&v61[16];
    v45[4] = *&v61[32];
    v45[5] = *&v61[48];
    v45[0] = v59;
    v45[1] = v60;
    return sub_24A50D6A4(v45, &qword_27EF51488, &qword_24A63A190);
  }

  else
  {
    v15 = *(a1 + 40);
    type metadata accessor for PFAnimationCoordinator();
    sub_24A5BB9D0(&qword_27EF4F440, type metadata accessor for PFAnimationCoordinator);
    result = sub_24A62E454();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A5BB71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 32))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24A62E354();

    if (v9)
    {
      v3 = 1.0;
    }

    else
    {
      v3 = 0.0;
    }

    v4 = sub_24A62E854();
    v5 = sub_24A62E854();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    sub_24A62E3C4();
    result = sub_24A62E9C4();
    *a2 = v3;
    *(a2 + 8) = xmmword_24A6399D0;
    *(a2 + 24) = 0x403E000000000000;
    *(a2 + 32) = v9;
    *(a2 + 48) = v10;
    *(a2 + 64) = v11;
    *(a2 + 72) = v5;
    *(a2 + 80) = 256;
    *(a2 + 88) = v3;
    *(a2 + 96) = xmmword_24A6399D0;
    *(a2 + 112) = 0x403E000000000000;
    *(a2 + 120) = v4;
    *(a2 + 128) = 256;
    *(a2 + 136) = result;
    *(a2 + 144) = v7;
  }

  else
  {
    v8 = *(a1 + 40);
    type metadata accessor for PFAnimationCoordinator();
    sub_24A5BB9D0(&qword_27EF4F440, type metadata accessor for PFAnimationCoordinator);
    result = sub_24A62E454();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A5BB8F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v3;
  v7[2] = *(v1 + 32);
  v8 = *(v1 + 48);
  *a1 = sub_24A62E9C4();
  a1[1] = v4;
  v5 = a1 + *(sub_24A508FA4(&qword_27EF513B8, &qword_24A639A78) + 44);
  return sub_24A5B7D08(v7);
}

double sub_24A5BB980(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_24A5BB9D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24A5BBA6C()
{
  result = qword_27EF513F0;
  if (!qword_27EF513F0)
  {
    sub_24A50E1E0(&qword_27EF513E0, &qword_24A63A040);
    sub_24A5BBAF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF513F0);
  }

  return result;
}

unint64_t sub_24A5BBAF8()
{
  result = qword_27EF513F8;
  if (!qword_27EF513F8)
  {
    sub_24A50E1E0(&qword_27EF51400, &qword_24A63A050);
    sub_24A518A6C(&qword_27EF51408, &qword_27EF51410, &qword_24A63A058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF513F8);
  }

  return result;
}

unint64_t sub_24A5BBBB0()
{
  result = qword_27EF51418;
  if (!qword_27EF51418)
  {
    sub_24A50E1E0(&qword_27EF513E8, &qword_24A63A048);
    sub_24A5BBC3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51418);
  }

  return result;
}

unint64_t sub_24A5BBC3C()
{
  result = qword_27EF51420;
  if (!qword_27EF51420)
  {
    sub_24A50E1E0(&qword_27EF51428, &qword_24A63A060);
    sub_24A5BBCC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51420);
  }

  return result;
}

unint64_t sub_24A5BBCC8()
{
  result = qword_27EF51430;
  if (!qword_27EF51430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51430);
  }

  return result;
}

unint64_t sub_24A5BBD90()
{
  result = sub_24A59D20C(MEMORY[0x277D84F90]);
  qword_27EF5C6F8 = result;
  return result;
}

uint64_t sub_24A5BBDB8(void *a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&qword_27EF514D8, &qword_24A63A290);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_24A50A204(a1, a1[3]);
  sub_24A5BC9DC();
  sub_24A62F774();
  v11[1] = a2;
  sub_24A508FA4(&qword_27EF514B8, &qword_24A63A288);
  sub_24A5BCAD8(&qword_27EF514E0, sub_24A5BCB68, sub_24A5BCBBC);
  sub_24A62F5D4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_24A5BBF58(void *a1)
{
  v3 = v1;
  v5 = sub_24A508FA4(&qword_27EF51520, &qword_24A63A470);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_24A50A204(a1, a1[3]);
  sub_24A5BD240();
  sub_24A62F774();
  v15 = *v3;
  HIBYTE(v14) = 0;
  sub_24A5B115C();
  sub_24A62F5D4();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v15 = v3[1];
  HIBYTE(v14) = 1;
  sub_24A62F5D4();
  v15 = v3[2];
  HIBYTE(v14) = 2;
  sub_24A62F5D4();
  v11 = *(v3 + 6);
  LOBYTE(v15) = 3;
  sub_24A62F5B4();
  v13 = v3[4];
  LOBYTE(v15) = 4;
  sub_24A62F5A4();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_24A5BC190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736574617473 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24A62F634();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24A5BC214(uint64_t a1)
{
  v2 = sub_24A5BC9DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A5BC250(uint64_t a1)
{
  v2 = sub_24A5BC9DC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_24A5BC28C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_24A5BC814(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_24A5BC2E0()
{
  v1 = *v0;
  v2 = 0x7463614665646F6ELL;
  v3 = 0x6361704F676E6972;
  v4 = 0x6F46636974706168;
  if (v1 != 3)
  {
    v4 = 0x72655065736C7570;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74636146676E6972;
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

uint64_t sub_24A5BC394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A5BCDE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A5BC3C8(uint64_t a1)
{
  v2 = sub_24A5BD240();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A5BC404(uint64_t a1)
{
  v2 = sub_24A5BD240();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24A5BC440@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24A5BCFB4(a1, v6);
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

uint64_t sub_24A5BC4E8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v10 = v9 | (v4 << 6);
LABEL_15:
      v15 = *(v3 + 56);
      v16 = *(v3 + 48) + 104 * v10;
      v18 = *(v16 + 16);
      v17 = *(v16 + 32);
      v40[0] = *v16;
      v40[1] = v18;
      v40[2] = v17;
      v20 = *(v16 + 64);
      v19 = *(v16 + 80);
      v21 = *(v16 + 48);
      *(v41 + 13) = *(v16 + 93);
      v40[4] = v20;
      v41[0] = v19;
      v40[3] = v21;
      v22 = (v15 + 40 * v10);
      *&v19 = *(v22 + 2);
      LODWORD(v20) = *(v22 + 6);
      *&v21 = *(v22 + 4);
      v23 = *v22;
      v24 = *(v16 + 16);
      v42 = *v16;
      v43 = v24;
      v25 = *(v16 + 32);
      v26 = *(v16 + 48);
      v27 = *(v16 + 64);
      v28 = *(v16 + 80);
      *&v47[13] = *(v16 + 93);
      v46 = v27;
      *v47 = v28;
      v44 = v25;
      v45 = v26;
      v48 = v42;
      v49 = v43;
      v50 = v25;
      v51 = v26;
      v52 = v27;
      v53 = v28;
      v54 = *&v47[16];
      v55 = v23;
      v56 = *&v19;
      v57 = *&v20;
      v59 = *&v21;
      nullsub_1(&v48);
      sub_24A508CE4(v40, v39);
      v64 = v52;
      *v65 = v53;
      *&v65[16] = v54;
      v60 = v48;
      v61 = v49;
      v62 = v50;
      v63 = v51;
      v29 = *(&v55 + 1);
      v30 = *&v55;
      v31 = v56;
      v32 = v57;
      v33 = v58;
      v12 = v4;
LABEL_16:
      v34 = v59;
      v52 = v64;
      v53 = *v65;
      v54 = *&v65[16];
      v48 = v60;
      v49 = v61;
      v50 = v62;
      v51 = v63;
      *&v55 = v30;
      *(&v55 + 1) = v29;
      v56 = v31;
      v57 = v32;
      v58 = v33;
      result = sub_24A5BCC10(&v48);
      if (result == 1)
      {
        break;
      }

      v66[3] = v63;
      v66[4] = v64;
      v67[0] = *v65;
      *(v67 + 13) = *&v65[13];
      v66[0] = v60;
      v66[1] = v61;
      v66[2] = v62;
      v35 = sub_24A515A5C(v66);
      v37 = v36;
      result = sub_24A517ABC(v66);
      if ((v37 & 1) == 0)
      {
        return 0;
      }

      v38 = *(a2 + 56) + 40 * v35;
      if (*v38 != v30 || *(v38 + 8) != v29 || *(v38 + 16) != v31 || *(v38 + 24) != v32 || *(v38 + 32) != v34)
      {
        return 0;
      }

      v4 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (v8 <= v4 + 1)
    {
      v11 = v4 + 1;
    }

    else
    {
      v11 = v8;
    }

    v12 = v11 - 1;
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v8)
      {
        sub_24A5BCC30(&v48);
        v7 = 0;
        v64 = v52;
        *v65 = v53;
        *&v65[16] = v54;
        v60 = v48;
        v61 = v49;
        v62 = v50;
        v63 = v51;
        v29 = *(&v55 + 1);
        v30 = *&v55;
        v31 = v56;
        v32 = v57;
        v33 = v58;
        goto LABEL_16;
      }

      v14 = *(v3 + 64 + 8 * v13);
      ++v4;
      if (v14)
      {
        v7 = (v14 - 1) & v14;
        v10 = __clz(__rbit64(v14)) | (v13 << 6);
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_24A5BC814(uint64_t *a1)
{
  v3 = sub_24A508FA4(&qword_27EF514A8, &qword_24A63A280);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_24A50A204(a1, a1[3]);
  sub_24A5BC9DC();
  sub_24A62F764();
  if (v1)
  {
    sub_24A508C54(a1);
  }

  else
  {
    sub_24A508FA4(&qword_27EF514B8, &qword_24A63A288);
    sub_24A5BCAD8(&qword_27EF514C0, sub_24A5BCA30, sub_24A5BCA84);
    sub_24A62F544();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_24A508C54(a1);
  }

  return v9;
}

unint64_t sub_24A5BC9DC()
{
  result = qword_27EF514B0;
  if (!qword_27EF514B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF514B0);
  }

  return result;
}

unint64_t sub_24A5BCA30()
{
  result = qword_27EF514C8;
  if (!qword_27EF514C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF514C8);
  }

  return result;
}

unint64_t sub_24A5BCA84()
{
  result = qword_27EF514D0;
  if (!qword_27EF514D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF514D0);
  }

  return result;
}

uint64_t sub_24A5BCAD8(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_24A50E1E0(&qword_27EF514B8, &qword_24A63A288);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A5BCB68()
{
  result = qword_27EF514E8;
  if (!qword_27EF514E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF514E8);
  }

  return result;
}

unint64_t sub_24A5BCBBC()
{
  result = qword_27EF514F0;
  if (!qword_27EF514F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF514F0);
  }

  return result;
}

uint64_t sub_24A5BCC10(uint64_t a1)
{
  v1 = *(a1 + 99);
  if (v1 <= 7)
  {
    v2 = 7;
  }

  else
  {
    v2 = *(a1 + 99);
  }

  v3 = v2 - 7;
  if (v1 >= 4)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

double sub_24A5BCC30(uint64_t a1)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0x8000000;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return result;
}

__n128 sub_24A5BCC68(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24A5BCC7C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A5BCC9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_24A5BCCE4()
{
  result = qword_27EF514F8;
  if (!qword_27EF514F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF514F8);
  }

  return result;
}

unint64_t sub_24A5BCD3C()
{
  result = qword_27EF51500;
  if (!qword_27EF51500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51500);
  }

  return result;
}

unint64_t sub_24A5BCD94()
{
  result = qword_27EF51508;
  if (!qword_27EF51508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51508);
  }

  return result;
}

uint64_t sub_24A5BCDE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463614665646F6ELL && a2 == 0xEA0000000000726FLL;
  if (v4 || (sub_24A62F634() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74636146676E6972 && a2 == 0xEA0000000000726FLL || (sub_24A62F634() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6361704F676E6972 && a2 == 0xEB00000000797469 || (sub_24A62F634() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F46636974706168 && a2 == 0xEB00000000656372 || (sub_24A62F634() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x72655065736C7570 && a2 == 0xEB00000000646F69)
  {

    return 4;
  }

  else
  {
    v6 = sub_24A62F634();

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

uint64_t sub_24A5BCFB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A508FA4(&qword_27EF51510, &qword_24A63A468);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_24A50A204(a1, a1[3]);
  sub_24A5BD240();
  sub_24A62F764();
  if (v2)
  {
    return sub_24A508C54(a1);
  }

  HIBYTE(v19) = 0;
  sub_24A5B0FDC();
  sub_24A62F544();
  v11 = v20;
  HIBYTE(v19) = 1;
  sub_24A62F544();
  v12 = v20;
  HIBYTE(v19) = 2;
  sub_24A62F544();
  v13 = v20;
  LOBYTE(v20) = 3;
  sub_24A62F524();
  v15 = v14;
  LOBYTE(v20) = 4;
  sub_24A62F514();
  v17 = v16;
  (*(v6 + 8))(v9, v5);
  result = sub_24A508C54(a1);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v15;
  *(a2 + 32) = v17;
  return result;
}

unint64_t sub_24A5BD240()
{
  result = qword_27EF51518;
  if (!qword_27EF51518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51518);
  }

  return result;
}

unint64_t sub_24A5BD2A8()
{
  result = qword_27EF51528;
  if (!qword_27EF51528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51528);
  }

  return result;
}

unint64_t sub_24A5BD300()
{
  result = qword_27EF51530;
  if (!qword_27EF51530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51530);
  }

  return result;
}

unint64_t sub_24A5BD358()
{
  result = qword_27EF51538;
  if (!qword_27EF51538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51538);
  }

  return result;
}

uint64_t sub_24A5BD3AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  v5 = a1[5];
  type metadata accessor for PFAnimationCoordinator();
  sub_24A5BE744(&qword_27EF4F440, type metadata accessor for PFAnimationCoordinator);
  sub_24A62E444();
  swift_getKeyPath();
  sub_24A62E464();

  v6 = v40;
  v25 = v41;
  v7 = a1[2];
  v8 = a1[3];
  type metadata accessor for VFXManager.Values(0);
  sub_24A5BE744(&qword_27EF50A08, type metadata accessor for VFXManager.Values);
  sub_24A62E444();
  swift_getKeyPath();
  sub_24A62E464();

  v23 = *&v50[8];
  v24 = *v50;
  v9 = *&v50[16];
  sub_24A62E444();
  swift_getKeyPath();
  sub_24A62E464();

  v10 = v34;
  v11 = v35;
  sub_24A62E444();
  swift_getKeyPath();
  sub_24A62E464();

  v26 = v45;
  v27 = v44;
  v12 = *(&v45 + 1);
  v22 = sub_24A62E854();
  if (v4)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24A62E354();

    v13 = *v50;
    sub_24A62EA64();
    v15 = v14;
    v17 = v16;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v18 = *v50;
    v19 = sub_24A62E854();
    v34 = v40;
    LOBYTE(v35) = v41;
    *(&v35 + 1) = v59[0];
    DWORD1(v35) = *(v59 + 3);
    *(&v35 + 1) = *v50;
    v36 = *&v50[8];
    v37 = v10;
    *&v38 = v11;
    *(&v38 + 1) = v44;
    v39 = v45;
    v29 = v38;
    v30 = v45;
    v28 = *&v50[8];
    *&v40 = v22;
    WORD4(v40) = 256;
    *&v41 = *v50;
    *(&v41 + 1) = *v50;
    *&v42 = v15;
    *(&v42 + 1) = v17;
    v43 = *v50;
    v32 = v41;
    v33 = v42;
    v31 = v40;
    v20 = v35;
    *a2 = v34;
    *(a2 + 16) = v20;
    *(a2 + 64) = v29;
    *(a2 + 80) = v30;
    *(a2 + 32) = v28;
    *(a2 + 48) = v10;
    *(a2 + 112) = v32;
    *(a2 + 128) = v33;
    *(a2 + 96) = v31;
    *(a2 + 144) = v18;
    *(a2 + 152) = v19;
    *(a2 + 160) = 256;
    sub_24A5BE7B4(&v34, v50);
    sub_24A50D63C(&v40, v50, &qword_27EF51568, qword_24A63A770);
    v44 = v22;
    LOWORD(v45) = 256;
    *(&v45 + 1) = v13;
    v46 = v13;
    v47 = v15;
    v48 = v17;
    v49 = v18;
    sub_24A50D6A4(&v44, &qword_27EF51568, qword_24A63A770);
    *v50 = v6;
    v50[16] = v25;
    *&v50[17] = v59[0];
    *&v50[20] = *(v59 + 3);
    v51 = v24;
    v52 = v23;
    v53 = v9;
    v54 = v10;
    v55 = v11;
    v56 = v27;
    v57 = v26;
    v58 = v12;
    return sub_24A5BE7EC(v50);
  }

  else
  {
    result = sub_24A62E454();
    __break(1u);
  }

  return result;
}

__n128 sub_24A5BD848@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v24[0] = *v1;
  v24[1] = v3;
  v24[2] = v1[2];
  v4 = sub_24A62E9C4();
  v6 = v5;
  sub_24A5BD3AC(v24, &v13);
  v33 = v21;
  v34 = v22;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v36[8] = v21;
  v36[9] = v22;
  v36[4] = v17;
  v36[5] = v18;
  v36[6] = v19;
  v36[7] = v20;
  v36[0] = v13;
  v36[1] = v14;
  v35 = v23;
  v37 = v23;
  v36[2] = v15;
  v36[3] = v16;
  sub_24A50D63C(&v25, &v12, &qword_27EF51560, &qword_24A63A638);
  sub_24A50D6A4(v36, &qword_27EF51560, &qword_24A63A638);
  *a1 = v4;
  *(a1 + 8) = v6;
  v7 = v34;
  *(a1 + 144) = v33;
  *(a1 + 160) = v7;
  *(a1 + 176) = v35;
  v8 = v30;
  *(a1 + 80) = v29;
  *(a1 + 96) = v8;
  v9 = v32;
  *(a1 + 112) = v31;
  *(a1 + 128) = v9;
  v10 = v26;
  *(a1 + 16) = v25;
  *(a1 + 32) = v10;
  result = v28;
  *(a1 + 48) = v27;
  *(a1 + 64) = result;
  return result;
}

id sub_24A5BD978()
{
  v13 = *(v0 + 24);
  v14 = *(v0 + 5);
  v1 = sub_24A508FA4(&qword_27EF51588, &unk_24A63A8D0);
  MEMORY[0x24C21A2B0](&v12);
  v2 = v12;
  v13 = *(v0 + 72);
  v14 = *(v0 + 11);
  MEMORY[0x24C21A2B0](&v12, v1);
  v3 = v12;
  v13 = v0[3];
  v14 = *(v0 + 8);
  v4 = sub_24A508FA4(&qword_27EF51590, &qword_24A63A8E0);
  MEMORY[0x24C21A2B0](&v12, v4);
  v5 = v12;
  v13 = *v0;
  LOBYTE(v14) = *(v0 + 16);
  v6 = sub_24A508FA4(&qword_27EF4FCB8, &qword_24A635BE0);
  MEMORY[0x24C21A2B0](&v12, v6);
  v7 = v12;
  v8 = type metadata accessor for PulseCircleView();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC11FMFindingUIP33_D6AB94E07425295D98119D392D5C15B115PulseCircleView_pulseDuration] = v2;
  *&v9[OBJC_IVAR____TtC11FMFindingUIP33_D6AB94E07425295D98119D392D5C15B115PulseCircleView_pulseFrequency] = v3;
  *&v9[OBJC_IVAR____TtC11FMFindingUIP33_D6AB94E07425295D98119D392D5C15B115PulseCircleView_pulseScale] = v5;
  v9[OBJC_IVAR____TtC11FMFindingUIP33_D6AB94E07425295D98119D392D5C15B115PulseCircleView_isPulseActive] = v7;
  v11.receiver = v9;
  v11.super_class = v8;
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

double sub_24A5BDAE0(uint64_t a1)
{
  v10 = *(v1 + 72);
  v11 = *(v1 + 11);
  v3 = sub_24A508FA4(&qword_27EF51588, &unk_24A63A8D0);
  MEMORY[0x24C21A2B0](&v9);
  *(a1 + OBJC_IVAR____TtC11FMFindingUIP33_D6AB94E07425295D98119D392D5C15B115PulseCircleView_pulseFrequency) = v9;
  v10 = *v1;
  LOBYTE(v11) = *(v1 + 16);
  v4 = sub_24A508FA4(&qword_27EF4FCB8, &qword_24A635BE0);
  MEMORY[0x24C21A2B0](&v9, v4);
  v5 = LOBYTE(v9);
  v6 = *(a1 + OBJC_IVAR____TtC11FMFindingUIP33_D6AB94E07425295D98119D392D5C15B115PulseCircleView_isPulseActive);
  *(a1 + OBJC_IVAR____TtC11FMFindingUIP33_D6AB94E07425295D98119D392D5C15B115PulseCircleView_isPulseActive) = LOBYTE(v9);
  if (v5 != v6)
  {
    sub_24A5BDDF0();
  }

  v10 = *(v1 + 24);
  v11 = *(v1 + 5);
  MEMORY[0x24C21A2B0](&v9, v3);
  *(a1 + OBJC_IVAR____TtC11FMFindingUIP33_D6AB94E07425295D98119D392D5C15B115PulseCircleView_pulseDuration) = v9;
  v10 = v1[3];
  v11 = *(v1 + 8);
  v7 = sub_24A508FA4(&qword_27EF51590, &qword_24A63A8E0);
  MEMORY[0x24C21A2B0](&v9, v7);
  result = v9;
  *(a1 + OBJC_IVAR____TtC11FMFindingUIP33_D6AB94E07425295D98119D392D5C15B115PulseCircleView_pulseScale) = v9;
  return result;
}

id sub_24A5BDC1C()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return sub_24A5BD978();
}

double sub_24A5BDC60(uint64_t a1)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_24A5BDAE0(a1);
}

uint64_t sub_24A5BDCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A5BE984();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24A5BDD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A5BE984();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24A5BDD6C()
{
  sub_24A5BE984();
  sub_24A62E5D4();
  __break(1u);
}

uint64_t sub_24A5BDDF0()
{
  v1 = v0;
  v2 = sub_24A62EA94();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A62EAD4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A62EAF4();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  if (v1[OBJC_IVAR____TtC11FMFindingUIP33_D6AB94E07425295D98119D392D5C15B115PulseCircleView_isPulseActive] == 1)
  {
    v20 = *&v1[OBJC_IVAR____TtC11FMFindingUIP33_D6AB94E07425295D98119D392D5C15B115PulseCircleView_pulseDuration];
    v21 = *&v1[OBJC_IVAR____TtC11FMFindingUIP33_D6AB94E07425295D98119D392D5C15B115PulseCircleView_pulseScale];
    v56 = v6;
    v52 = &v50 - v18;
    v53 = result;
    v58 = v19;
    [v1 bounds];
    v57 = v3;
    v26 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    v54 = v2;
    v27 = v26;
    v28 = [objc_opt_self() whiteColor];
    v55 = v7;
    v29 = v28;
    v30 = [v28 colorWithAlphaComponent_];

    [v27 setBackgroundColor_];
    v31 = [v27 layer];
    [v1 bounds];
    [v31 setCornerRadius_];

    [v1 addSubview_];
    v32 = objc_opt_self();
    v33 = swift_allocObject();
    *(v33 + 16) = v27;
    *(v33 + 24) = v21;
    v63 = sub_24A5BE5C4;
    v64 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v60 = 1107296256;
    v51 = v8;
    v61 = sub_24A5A8458;
    v62 = &unk_285DA83D0;
    v34 = _Block_copy(&aBlock);
    v35 = v27;

    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    v63 = sub_24A5BE620;
    v64 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v60 = 1107296256;
    v61 = sub_24A5A1470;
    v62 = &unk_285DA8420;
    v37 = _Block_copy(&aBlock);
    v38 = v35;

    [v32 animateWithDuration:0x20000 delay:v34 options:v37 animations:v20 completion:0.0];

    _Block_release(v37);
    _Block_release(v34);
    sub_24A545E8C();
    v39 = sub_24A62F014();
    sub_24A62EAE4();
    v40 = *&v1[OBJC_IVAR____TtC11FMFindingUIP33_D6AB94E07425295D98119D392D5C15B115PulseCircleView_pulseFrequency];
    v41 = v52;
    sub_24A62EB54();
    v42 = *(v58 + 8);
    v58 += 8;
    v50 = v42;
    v43 = v16;
    v44 = v53;
    v42(v43, v53);
    v45 = swift_allocObject();
    *(v45 + 16) = v1;
    v63 = sub_24A5BE630;
    v64 = v45;
    aBlock = MEMORY[0x277D85DD0];
    v60 = 1107296256;
    v61 = sub_24A5A8458;
    v62 = &unk_285DA8470;
    v46 = _Block_copy(&aBlock);
    v47 = v1;

    sub_24A62EAB4();
    aBlock = MEMORY[0x277D84F90];
    sub_24A5BE744(&qword_27EF4F970, MEMORY[0x277D85198]);
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A518A6C(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30);
    v48 = v56;
    v49 = v54;
    sub_24A62F254();
    MEMORY[0x24C21A910](v41, v11, v48, v46);
    _Block_release(v46);

    (*(v57 + 8))(v48, v49);
    (*(v51 + 8))(v11, v55);
    return v50(v41, v44);
  }

  return result;
}

id sub_24A5BE494(void *a1, CGFloat a2)
{
  CGAffineTransformMakeScale(&v4, a2, a2);
  [a1 setTransform_];
  return [a1 setAlpha_];
}

id sub_24A5BE530()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PulseCircleView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24A5BE58C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A5BE5D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A5BE5E8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A5BE654(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24A5BE6B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24A5BE744(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_24A5BE81C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_24A5BE838(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_24A5BE880(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A5BE930()
{
  result = qword_27EF51580;
  if (!qword_27EF51580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51580);
  }

  return result;
}

unint64_t sub_24A5BE984()
{
  result = qword_27EF51598;
  if (!qword_27EF51598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51598);
  }

  return result;
}

void sub_24A5BE9EC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_24A5BEA54(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, uint64_t (*)(char a1), uint64_t))
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = a2[1];
  if (*a2)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = sub_24A5D1190;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  sub_24A5173CC(v6);
  a3(v4, v5, v9, v8);

  return sub_24A50D354(v9);
}

uint64_t sub_24A5BEB18(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void *))
{
  v12 = a1;
  v13 = a2 & 1;
  if (a3)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;
    v9 = sub_24A5D1164;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v11[0] = v9;
  v11[1] = v8;
  sub_24A5173CC(a3);
  a5(&v12, v11);

  return sub_24A50D354(v9);
}

uint64_t sub_24A5BEC08@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_24A5BEC44(char a1, void (*a2)(uint64_t *__return_ptr, char *))
{
  v4 = a1;
  a2(&v3, &v4);
  return v3;
}

uint64_t sub_24A5BEC98(uint64_t a1)
{
  v3 = type metadata accessor for FMFindingViewState();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_configuration);
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_configuration) = a1;

  v12 = sub_24A5BC4E8(v11, v10);

  if (v12)
  {
  }

  else
  {
    v14 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
    swift_beginAccess();
    sub_24A5D0DA8(v1 + v14, v9, type metadata accessor for FMFindingViewState);
    sub_24A5D0DA8(v1 + v14, v7, type metadata accessor for FMFindingViewState);
    (*((*MEMORY[0x277D85000] & *v1) + 0x4B8))(v9, v7);

    sub_24A5D0E10(v7, type metadata accessor for FMFindingViewState);
    return sub_24A5D0E10(v9, type metadata accessor for FMFindingViewState);
  }
}

uint64_t sub_24A5BEE50(uint64_t a1)
{
  v3 = type metadata accessor for FMFindingViewState();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
  swift_beginAccess();
  sub_24A5D0DA8(v1 + v10, v9, type metadata accessor for FMFindingViewState);
  swift_beginAccess();
  sub_24A5D0FCC(a1, v1 + v10);
  swift_endAccess();
  sub_24A5D0DA8(v1 + v10, v7, type metadata accessor for FMFindingViewState);
  v11 = sub_24A629198(v7, v9);
  sub_24A5D0E10(v7, type metadata accessor for FMFindingViewState);
  if (!v11)
  {
    sub_24A5D0DA8(v1 + v10, v7, type metadata accessor for FMFindingViewState);
    (*((*MEMORY[0x277D85000] & *v1) + 0x4B8))(v9, v7);
    sub_24A5D0E10(a1, type metadata accessor for FMFindingViewState);
    a1 = v7;
  }

  sub_24A5D0E10(a1, type metadata accessor for FMFindingViewState);
  return sub_24A5D0E10(v9, type metadata accessor for FMFindingViewState);
}

uint64_t FMFindingViewController.__allocating_init(session:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_24A5CF524(a1);

  return v4;
}

uint64_t FMFindingViewController.init(session:)(uint64_t a1)
{
  v1 = sub_24A5CF524(a1);

  return v1;
}

id FMFindingViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id FMFindingViewController.__deallocating_deinit()
{
  v1 = v0;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C118);
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A503000, v3, v4, "FMFindingViewController deinit", v5, 2u);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }

  v6 = *&v1[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView];
  sub_24A5F571C();
  sub_24A5F5354();

  v8.receiver = v1;
  v8.super_class = type metadata accessor for FMFindingViewController();
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

void sub_24A5BF584()
{
  v1 = v0;
  v2 = sub_24A62EA94();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_24A62EAD4();
  v7 = *(v25 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController];
  swift_beginAccess();
  v12 = *(v11 + 3);
  v13 = *(v11 + 4);
  sub_24A528F98(v11, v12);
  (*(v13 + 152))(0, 0, v12, v13);
  swift_endAccess();
  v14 = *sub_24A50A204(v11, *(v11 + 3));
  sub_24A581E4C();
  v15 = *sub_24A50A204(v11, *(v11 + 3));
  sub_24A57B8D4();
  v16 = *(*&v1[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session] + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType);
  v17 = (v16 >> 13) & 3;
  if (!v17)
  {
    if (v16)
    {
      return;
    }

    goto LABEL_6;
  }

  v18 = v16 & 0x9E00;
  if (v17 == 1 || v18 != 33280)
  {
LABEL_6:
    sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
    v20 = sub_24A62F014();
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    aBlock[4] = sub_24A5D0F70;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA8DE8;
    v22 = _Block_copy(aBlock);
    v23 = v1;

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A5D0C64(&qword_27EF4F970, MEMORY[0x277D85198]);
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    MEMORY[0x24C21A950](0, v10, v6, v22);
    _Block_release(v22);

    (*(v3 + 8))(v6, v2);
    (*(v7 + 8))(v10, v25);
  }
}

uint64_t sub_24A5BF95C()
{
  v1 = (v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
  swift_beginAccess();
  v2 = *sub_24A50A204(v1, v1[3]);
  sub_24A57A50C();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v4 = v1[3];
  v5 = v1[4];
  sub_24A528F98(v1, v4);
  v6 = *(v5 + 152);

  v6(sub_24A5D1CD4, v3, v4, v5);
  swift_endAccess();
}

void sub_24A5BFAA8()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for FMFindingViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  sub_24A5C0C24();
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v1;
  [v1 addSubview_];

  sub_24A5C2420();
  v3 = v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_experienceType];
  if (v3 < 2)
  {
    sub_24A5C26C0();
    sub_24A61FCA4();
    goto LABEL_7;
  }

  if (v3 == 2)
  {
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 addSubview_];

      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
    return;
  }

LABEL_7:
  sub_24A5C28D8();
  if (v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_reducedMotion] == 1)
  {
    sub_24A5C4464();
  }
}

uint64_t sub_24A5BFBF8(char a1)
{
  v2 = v1;
  v4 = sub_24A62EA94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A62EAD4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMFindingViewController();
  v21.receiver = v2;
  v21.super_class = v14;
  objc_msgSendSuper2(&v21, sel_viewWillAppear_, a1 & 1);
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v15 = sub_24A62F014();
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  aBlock[4] = sub_24A5D04C0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA85D0;
  v17 = _Block_copy(aBlock);
  v18 = v2;

  sub_24A62EAB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24A5D0C64(&qword_27EF4F970, MEMORY[0x277D85198]);
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A529464();
  sub_24A62F254();
  MEMORY[0x24C21A950](0, v13, v8, v17);
  _Block_release(v17);

  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

id sub_24A5BFEE0(void *a1)
{
  v2 = type metadata accessor for FMFindingViewState();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  result = [a1 view];
  if (result)
  {
    v10 = result;
    [result layoutSubviews];

    v11 = *(a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView);
    sub_24A5F60A0();

    v12 = *(a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session);
    sub_24A60FBF0();
    v13 = (a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
    swift_beginAccess();
    v14 = *sub_24A50A204(v13, v13[3]);
    sub_24A57A50C();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    v16 = v13[3];
    v17 = v13[4];
    sub_24A528F98(v13, v16);
    v18 = *(v17 + 152);

    v18(sub_24A5D1AE0, v15, v16, v17);
    swift_endAccess();

    v19 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
    swift_beginAccess();
    sub_24A5D0DA8(a1 + v19, v8, type metadata accessor for FMFindingViewState);
    sub_24A5D0DA8(a1 + v19, v6, type metadata accessor for FMFindingViewState);
    (*((*MEMORY[0x277D85000] & *a1) + 0x4B8))(v8, v6);
    sub_24A5D0E10(v6, type metadata accessor for FMFindingViewState);
    sub_24A5D0E10(v8, type metadata accessor for FMFindingViewState);
    v20 = *(a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_sleepPreventer);
    sub_24A598770();
    v21 = a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_willAppearHandler;
    result = swift_beginAccess();
    v22 = *v21;
    if (*v21)
    {
      v23 = *(v21 + 1);

      v22(v24);
      return sub_24A50D354(v22);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24A5C01CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_24A5CA748(a1, a2);
  }
}

void sub_24A5C0290(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for FMFindingViewController();
  objc_msgSendSuper2(&v7, sel_viewDidAppear_, a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView];
  v4 = *&v3[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    sub_24A5D6718(0, 1.0);
  }
}

id sub_24A5C03C8(char a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_willDisappearHandler];
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 1);

    v5(v7);
    sub_24A50D354(v5);
  }

  v8 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController];
  swift_beginAccess();
  v9 = *(v8 + 3);
  v10 = *(v8 + 4);
  sub_24A528F98(v8, v9);
  (*(v10 + 152))(0, 0, v9, v10);
  swift_endAccess();
  v11 = *sub_24A50A204(v8, *(v8 + 3));
  sub_24A581E4C();
  v12 = *sub_24A50A204(v8, *(v8 + 3));
  sub_24A57B8D4();
  sub_24A590DEC(0, 1);
  v14.receiver = v2;
  v14.super_class = type metadata accessor for FMFindingViewController();
  return objc_msgSendSuper2(&v14, sel_viewWillDisappear_, a1 & 1);
}

id sub_24A5C0558(char a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView];
  sub_24A5F571C();
  sub_24A5F5354();

  v5 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session];
  sub_24A60FDA0();
  v6 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pulseTimer;
  [*&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pulseTimer] invalidate];
  v7 = *&v2[v6];
  *&v2[v6] = 0;

  v9.receiver = v2;
  v9.super_class = type metadata accessor for FMFindingViewController();
  return objc_msgSendSuper2(&v9, sel_viewDidDisappear_, a1 & 1);
}

void sub_24A5C06C0(void *a1, double a2, double a3)
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v7 = sub_24A62E314();
  sub_24A506EB8(v7, qword_27EF5C118);
  v8 = v3;
  v9 = sub_24A62E2F4();
  v10 = sub_24A62EF64();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock = v12;
    *v11 = 136315138;
    sub_24A5CEC7C();
    type metadata accessor for UIInterfaceOrientation(0);
    v13 = sub_24A62EC44();
    v15 = sub_24A509BA8(v13, v14, &aBlock);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_24A503000, v9, v10, "FMFindingViewController: Interface orientation changed to: %s", v11, 0xCu);
    sub_24A508C54(v12);
    MEMORY[0x24C21BBE0](v12, -1, -1);
    MEMORY[0x24C21BBE0](v11, -1, -1);
  }

  v16 = sub_24A5CEC7C();
  v17 = type metadata accessor for FMFindingViewController();
  v31.receiver = v8;
  v31.super_class = v17;
  objc_msgSendSuper2(&v31, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  if ((~[v8 supportedInterfaceOrientations] & 0x18) != 0)
  {
    v18 = v16 == 1;
    [*&v8[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_incorrectOrientationView] setHidden_];
    [*&v8[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_btDistanceView] setHidden_];
    [*&v8[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pickerViewContainer] setHidden_];
    [*&v8[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabelsStackView] setHidden_];
    v19 = swift_allocObject();
    *(v19 + 16) = v8;
    *(v19 + 24) = v16 == 1;
    v29 = sub_24A5D0518;
    v30 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_24A58F36C;
    v28 = &unk_285DA8620;
    v20 = _Block_copy(&aBlock);
    v21 = v8;

    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v18;
    v29 = sub_24A5D0524;
    v30 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_24A58F36C;
    v28 = &unk_285DA8670;
    v23 = _Block_copy(&aBlock);
    v24 = v21;

    [a1 animateAlongsideTransition:v20 completion:v23];
    _Block_release(v23);
    _Block_release(v20);
  }

  else
  {
    [*&v8[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_incorrectOrientationView] setHidden_];
  }
}

id sub_24A5C0A54(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  if (a3)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  [*(a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_incorrectOrientationView) setAlpha_];
  [*(a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_btDistanceView) setAlpha_];
  [*(a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pickerViewContainer) setAlpha_];
  v6 = *(a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabelsStackView);

  return [v6 setAlpha_];
}

id sub_24A5C0AFC(uint64_t a1, uint64_t a2, char a3)
{
  [*(a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_incorrectOrientationView) setHidden_];
  [*(a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_btDistanceView) setHidden_];
  [*(a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pickerViewContainer) setHidden_];
  v5 = *(a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabelsStackView);

  return [v5 setHidden_];
}

void sub_24A5C0C24()
{
  v1 = v0;
  v2 = type metadata accessor for FMFindingSessionState();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v194 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v7 = v6;
  v8 = objc_opt_self();
  v9 = [v8 blackColor];
  [v7 setBackgroundColor_];

  v10 = [v1 navigationController];
  if (v10)
  {
    v11 = v10;
    sub_24A51D5B0();
  }

  v12 = [v1 view];
  if (!v12)
  {
    goto LABEL_51;
  }

  v13 = v12;
  [v12 addSubview_];

  v14 = *&v1[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_incorrectOrientationView];
  v15 = [v8 blackColor];
  [v14 setBackgroundColor_];

  [v14 setUserInteractionEnabled_];
  v16 = [v1 view];
  if (!v16)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v17 = v16;
  [v16 addSubview_];

  sub_24A5C2200();
  v18 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_titleLabel;
  v19 = &v1[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_style];
  [*&v1[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_titleLabel] setFont_];
  [*&v1[v18] setAdjustsFontForContentSizeCategory_];
  [*&v1[v18] setNumberOfLines_];
  [*&v1[v18] setTextAlignment_];
  v20 = *&v1[v18];
  v21 = [v8 whiteColor];
  v22 = [v21 colorWithAlphaComponent_];

  [v20 setTextColor_];
  v23 = *&v1[v18];
  sub_24A5D2200(0x454C5449545F3152, 0xE800000000000000);
  v24 = sub_24A62EBE4();

  [v23 setText_];

  v25 = [v1 view];
  if (!v25)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v26 = v25;
  [v25 addSubview_];

  v27 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_nameLabel;
  [*&v1[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_nameLabel] setFont_];
  [*&v1[v27] setAdjustsFontForContentSizeCategory_];
  [*&v1[v27] setNumberOfLines_];
  [*&v1[v27] setTextAlignment_];
  v28 = *&v1[v27];
  v29 = [v8 whiteColor];
  [v28 setTextColor_];

  v30 = *&v1[v27];
  v31 = *&v1[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session];
  v32 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  v202 = v31;
  sub_24A5D0DA8(&v31[v32], v5, type metadata accessor for FMFindingSessionState);
  v33 = v30;
  sub_24A5ABC04();
  sub_24A5D0E10(v5, type metadata accessor for FMFindingSessionState);
  v34 = sub_24A62EBE4();

  [v33 setText_];

  v35 = [v1 view];
  if (!v35)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v36 = v35;
  [v35 addSubview_];

  v37 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_closeButton;
  v38 = *&v1[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_closeButton];
  v39 = sub_24A5D2200(0xD000000000000016, 0x800000024A641CC0);
  v40 = &v38[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_legend];
  v41 = *&v38[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_legend + 8];
  *v40 = v39;
  v40[1] = v42;

  v43 = *&v38[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label];

  v44 = v43;
  v45 = sub_24A62EBE4();

  [v44 setText_];

  v46 = *&v1[v37];
  v47 = [v8 whiteColor];
  v48 = [v8 whiteColor];
  v49 = [v48 colorWithAlphaComponent_];

  sub_24A62A8A4(0x6B72616D78, 0xE500000000000000, v47, v49);
  v50 = [v1 view];
  if (!v50)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v51 = v50;
  v200 = v8;
  [v50 addSubview_];

  v52 = *&v1[v37];
  v201 = type metadata accessor for FMFindingViewController();
  v207 = v201;
  v206[0] = v1;
  v53 = v52;
  v203 = v1;
  v54 = sub_24A5D2200(0xD000000000000016, 0x800000024A641CC0);
  v56 = v55;
  v57 = [v53 layer];
  [v57 removeAllAnimations];

  v58 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
  v59 = [*&v53[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] layer];
  [v59 removeAllAnimations];

  v60 = [*&v53[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label] layer];
  [v60 removeAllAnimations];

  v61 = *&v53[v58];
  sub_24A50D63C(v206, v204, &unk_27EF50780, &qword_24A638470);
  v62 = v205;
  if (v205)
  {
    v63 = sub_24A50A204(v204, v205);
    v64 = *(v62 - 8);
    v65 = *(v64 + 64);
    MEMORY[0x28223BE20](v63);
    v67 = &v194 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v64 + 16))(v67);
    v68 = v61;
    v69 = sub_24A62F624();
    (*(v64 + 8))(v67, v62);
    sub_24A508C54(v204);
  }

  else
  {
    v70 = v61;
    v69 = 0;
  }

  [v61 addTarget:v69 action:sel_closeActionWithSender_ forControlEvents:64];

  swift_unknownObjectRelease();

  v71 = sub_24A62EBE4();
  [v53 setAccessibilityLabel_];

  sub_24A50D7EC(0, &qword_27EF50940, 0x277D75088);
  sub_24A50D63C(v206, v204, &unk_27EF50780, &qword_24A638470);
  v72 = sub_24A5921B4(v54, v56, v204, sel_closeActionWithSender_);
  v73 = sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v74 = swift_allocObject();
  v196 = xmmword_24A6339F0;
  *(v74 + 16) = xmmword_24A6339F0;
  *(v74 + 32) = v72;
  v75 = v72;
  v76 = sub_24A62ED54();

  [v53 setAccessibilityCustomActions_];

  sub_24A50D6A4(v206, &unk_27EF50780, &qword_24A638470);
  v77 = *&v202[OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType];
  v78 = (v77 >> 13) & 3;
  v199 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType;
  v197 = v73;
  if (v78)
  {
    v79 = v78 == 1;
    v80 = v203;
    if (v79)
    {
      v77 = (v77 >> 8) & 0xFFFFFF9F;
    }

    else if ((v77 & 0x8000) != 0)
    {
      v77 = (v77 >> 8) & 0x1F;
    }

    else
    {
      v77 = v77;
    }
  }

  else
  {
    v77 >>= 8;
    v80 = v203;
  }

  v81 = *&v80[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_rightActionButton];
  v198 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_rightActionButton;
  if (v77 == 2)
  {
    v207 = v201;
    v206[0] = v80;
    v194 = sel_openMessagesActionWithSender_;
    v82 = v80;
    v83 = v81;
    v195 = "R1_PLAY_SOUND_BUTTON_LEGEND";
    v84 = sub_24A5D22F4(0xD000000000000018, 0x800000024A641D00);
    v86 = v85;
    v87 = [v83 layer];
    [v87 removeAllAnimations];

    v88 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
    v89 = [*&v83[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] layer];
    [v89 removeAllAnimations];

    v90 = [*&v83[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label] layer];
    [v90 removeAllAnimations];

    v91 = *&v83[v88];
    sub_24A50D63C(v206, v204, &unk_27EF50780, &qword_24A638470);
    v92 = v205;
    if (v205)
    {
      v93 = sub_24A50A204(v204, v205);
      v94 = *(v92 - 8);
      v95 = *(v94 + 64);
      MEMORY[0x28223BE20](v93);
      v97 = &v194 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v94 + 16))(v97);
      v98 = v91;
      v99 = sub_24A62F624();
      (*(v94 + 8))(v97, v92);
      sub_24A508C54(v204);
    }

    else
    {
      v118 = v91;
      v99 = 0;
    }

    v119 = &property descriptor for FMFindingViewController.dismissedHandler;
    v120 = v194;
    [v91 addTarget:v99 action:v194 forControlEvents:64];

    swift_unknownObjectRelease();

    v121 = sub_24A62EBE4();
    [v83 setAccessibilityLabel_];

    sub_24A50D63C(v206, v204, &unk_27EF50780, &qword_24A638470);
    v122 = sub_24A5921B4(v84, v86, v204, v120);
    v123 = swift_allocObject();
    *(v123 + 16) = v196;
    *(v123 + 32) = v122;
    v124 = v122;
    v125 = sub_24A62ED54();

    [v83 setAccessibilityCustomActions_];

    sub_24A50D6A4(v206, &unk_27EF50780, &qword_24A638470);
    v126 = v203;
    v127 = v198;
    v128 = *&v203[v198];
    v129 = sub_24A5D22F4(0xD000000000000018, v195 | 0x8000000000000000);
    v130 = &v128[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_legend];
    v131 = *&v128[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_legend + 8];
    *v130 = v129;
    v130[1] = v132;

    v133 = *&v128[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label];

    v134 = v133;
    v135 = sub_24A62EBE4();

    [v134 setText_];

    v136 = *&v126[v127];
    v137 = v200;
    v138 = [v200 whiteColor];
    v139 = [v137 whiteColor];
    v140 = [v139 colorWithAlphaComponent_];

    v141 = 0x2E6567617373656DLL;
    v142 = 0xEC0000006C6C6966;
  }

  else
  {
    v207 = v201;
    v206[0] = v80;
    v194 = sel_playSoundActionWithSender_;
    v100 = v80;
    v101 = v81;
    v195 = "R1_CLOSE_BUTTON_LEGEND";
    v102 = sub_24A5D2200(0xD00000000000001BLL, 0x800000024A641CE0);
    v104 = v103;
    v105 = [v101 layer];
    [v105 removeAllAnimations];

    v106 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
    v107 = [*&v101[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] layer];
    [v107 removeAllAnimations];

    v108 = [*&v101[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label] layer];
    [v108 removeAllAnimations];

    v109 = *&v101[v106];
    sub_24A50D63C(v206, v204, &unk_27EF50780, &qword_24A638470);
    v110 = v205;
    if (v205)
    {
      v111 = sub_24A50A204(v204, v205);
      v112 = *(v110 - 8);
      v113 = *(v112 + 64);
      MEMORY[0x28223BE20](v111);
      v115 = &v194 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v112 + 16))(v115);
      v116 = v109;
      v117 = sub_24A62F624();
      (*(v112 + 8))(v115, v110);
      sub_24A508C54(v204);
    }

    else
    {
      v143 = v109;
      v117 = 0;
    }

    v119 = &property descriptor for FMFindingViewController.dismissedHandler;
    v144 = v194;
    [v109 addTarget:v117 action:v194 forControlEvents:64];

    swift_unknownObjectRelease();

    v145 = sub_24A62EBE4();
    [v101 setAccessibilityLabel_];

    sub_24A50D63C(v206, v204, &unk_27EF50780, &qword_24A638470);
    v146 = sub_24A5921B4(v102, v104, v204, v144);
    v147 = swift_allocObject();
    *(v147 + 16) = v196;
    *(v147 + 32) = v146;
    v148 = v146;
    v149 = sub_24A62ED54();

    [v101 setAccessibilityCustomActions_];

    sub_24A50D6A4(v206, &unk_27EF50780, &qword_24A638470);
    v126 = v203;
    v150 = v198;
    v151 = *&v203[v198];
    v152 = sub_24A5D2200(0xD00000000000001BLL, v195 | 0x8000000000000000);
    v153 = &v151[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_legend];
    v154 = *&v151[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_legend + 8];
    *v153 = v152;
    v153[1] = v155;

    v156 = *&v151[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label];

    v157 = v156;
    v158 = sub_24A62EBE4();

    [v157 setText_];

    v136 = *&v126[v150];
    v159 = v200;
    v138 = [v200 whiteColor];
    v160 = [v159 whiteColor];
    v140 = [v160 colorWithAlphaComponent_];

    v141 = 0x2E72656B61657073;
    v142 = 0xEE006C6C69662E32;
  }

  sub_24A62A8A4(v141, v142, v138, v140);

  v161 = *&v202[v199];
  v162 = (v161 >> 13) & 3;
  v163 = &property descriptor for FMFindingViewController.dismissedHandler;
  if (v162)
  {
    if (v162 == 1)
    {
      if (((v161 >> 8) & 0xFFFFFF9F) != 3)
      {
        goto LABEL_40;
      }
    }

    else if ((v161 & 0x8000) != 0)
    {
      if (((v161 >> 8) & 0x1F) != 3)
      {
        goto LABEL_40;
      }
    }

    else if (*&v202[v199] != 3)
    {
      goto LABEL_40;
    }

LABEL_37:
    if ((sub_24A592DD4() & 1) == 0)
    {
      return;
    }

    goto LABEL_42;
  }

  if (v161 >> 8 == 3)
  {
    goto LABEL_37;
  }

LABEL_40:
  v164 = [v126 v119[210]];
  if (!v164)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    return;
  }

  v165 = v164;
  v166 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_rightActionButton;
  [v164 addSubview_];

  v167 = *&v126[v166];
  [v167 setAlpha_];
  [v126 accessibilityShowViewHandler];

  sub_24A59232C(0);
  if ((sub_24A592DD4() & 1) == 0)
  {
    return;
  }

LABEL_42:
  v168 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_torchButton;
  v169 = *&v126[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_torchButton];
  v207 = v201;
  v206[0] = v126;
  v202 = sel_torchActionWithSender_;
  v170 = v126;
  v171 = v169;
  v172 = [v171 layer];
  [v172 removeAllAnimations];

  v173 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
  v174 = [*&v171[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] layer];
  [v174 removeAllAnimations];

  v175 = [*&v171[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label] layer];
  [v175 removeAllAnimations];

  v176 = *&v171[v173];
  sub_24A50D63C(v206, v204, &unk_27EF50780, &qword_24A638470);
  v177 = v205;
  if (v205)
  {
    v178 = sub_24A50A204(v204, v205);
    v179 = *(v177 - 8);
    v180 = *(v179 + 64);
    MEMORY[0x28223BE20](v178);
    v182 = &v194 - ((v181 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v179 + 16))(v182);
    v183 = v176;
    v184 = sub_24A62F624();
    v185 = v182;
    v119 = &property descriptor for FMFindingViewController.dismissedHandler;
    (*(v179 + 8))(v185, v177);
    v163 = &property descriptor for FMFindingViewController.dismissedHandler;
    sub_24A508C54(v204);
  }

  else
  {
    v186 = v176;
    v184 = 0;
  }

  [v176 addTarget:v184 action:v202 forControlEvents:64];

  swift_unknownObjectRelease();
  [v171 setAccessibilityLabel_];
  [v171 setAccessibilityCustomActions_];

  sub_24A50D6A4(v206, &unk_27EF50780, &qword_24A638470);
  v187 = [v170 v119[210]];
  if (!v187)
  {
    goto LABEL_57;
  }

  v188 = v187;
  v189 = v203;
  [v187 v163[152]];

  sub_24A58FF64();
  v190 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_showTorchButtonWorkItem;
  if (*&v170[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_showTorchButtonWorkItem])
  {
    v191 = *&v170[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_showTorchButtonWorkItem];

    sub_24A62EB34();

    v192 = *&v170[v190];
  }

  *&v170[v190] = 0;

  v193 = *&v189[v168];
  [v193 setAlpha_];
  [v170 accessibilityShowViewHandler];
}

id sub_24A5C2200()
{
  v1 = sub_24A5CEC7C();
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C118);
  v3 = v0;
  v4 = sub_24A62E2F4();
  v5 = sub_24A62EF64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315394;
    v18 = sub_24A5CEC7C();
    type metadata accessor for UIInterfaceOrientation(0);
    v8 = sub_24A62EC44();
    v10 = sub_24A509BA8(v8, v9, &v19);

    *(v6 + 4) = v10;
    *(v6 + 12) = 1024;
    *(v6 + 14) = v1 == 1;
    _os_log_impl(&dword_24A503000, v4, v5, "FMFindingViewController: Update orientation view. Current orientation: %s, isPortrait: %{BOOL}d", v6, 0x12u);
    sub_24A508C54(v7);
    MEMORY[0x24C21BBE0](v7, -1, -1);
    MEMORY[0x24C21BBE0](v6, -1, -1);
  }

  v11 = ~[v3 supportedInterfaceOrientations];
  v12 = *&v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_incorrectOrientationView];
  if ((v11 & 0x18) != 0)
  {
    v14 = v1 == 1;
    v15 = v1 != 1;
    v16 = v14;
    [v12 setHidden_];
    [*&v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_btDistanceView] setHidden_];
    [*&v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pickerViewContainer] setHidden_];
    v12 = *&v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabelsStackView];
    v13 = v15;
  }

  else
  {
    v13 = 1;
  }

  return [v12 setHidden_];
}

void sub_24A5C2420()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsTopLabel;
  v2 = &v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_style];
  [*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsTopLabel] setFont_];
  [*&v0[v1] setAdjustsFontForContentSizeCategory_];
  [*&v0[v1] setAdjustsFontSizeToFitWidth_];
  [*&v0[v1] setNumberOfLines_];
  v3 = *&v0[v1];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 whiteColor];
  [v5 setTextColor_];

  [*&v0[v1] setTextAlignment_];
  [*&v0[v1] setAlpha_];
  v7 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabelsStackView;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabelsStackView] addArrangedSubview_];
  v8 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabel;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabel] setFont_];
  [*&v0[v8] setAdjustsFontForContentSizeCategory_];
  [*&v0[v8] setAdjustsFontSizeToFitWidth_];
  [*&v0[v8] setNumberOfLines_];
  v9 = *&v0[v8];
  v10 = [v4 whiteColor];
  [v9 setTextColor_];

  [*&v0[v8] setTextAlignment_];
  [*&v0[v8] setAlpha_];
  [*&v0[v7] addArrangedSubview_];
  [*&v0[v7] setAxis_];
  [*&v0[v7] setAlignment_];
  [*&v0[v7] setDistribution_];
  [*&v0[v7] setSpacing_];
  v11 = [v0 view];
  if (v11)
  {
    v12 = v11;
    [v11 addSubview_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24A5C26C0()
{
  v1 = type metadata accessor for FMFindingSessionState();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 view];
  if (v5)
  {
    v6 = v5;
    v7 = *&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_r1DistanceView];
    [v5 addSubview_];

    v8 = *&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session];
    v9 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
    swift_beginAccess();
    sub_24A5D0DA8(v8 + v9, v4, type metadata accessor for FMFindingSessionState);
    v10 = *(v4 + 1);
    if (*(v10 + 16))
    {
      v11 = sub_24A515AC8(&v4[*(v1 + 36)]);
      if (v12)
      {
        sub_24A508AE4(*(v10 + 56) + 40 * v11, v21);
        sub_24A508CA0(v21, v22);
        sub_24A5D0E10(v4, type metadata accessor for FMFindingSessionState);
        v13 = v23;
        v14 = v24;
        sub_24A50A204(v22, v23);
        v15 = (*(v14 + 8))(v13, v14);
        v16 = (v7 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_deviceName);
        v17 = *(v7 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_deviceName + 8);
        *v16 = v15;
        v16[1] = v18;

        return sub_24A508C54(v22);
      }
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_24A62F444();
  __break(1u);
  return result;
}

void sub_24A5C28D8()
{
  v1 = [objc_opt_self() mainScreen];
  [v1 bounds];
  v3 = v2;

  v245 = objc_opt_self();
  v4 = [v245 currentDevice];
  v246 = [v4 userInterfaceIdiom];

  v5 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView] setTranslatesAutoresizingMaskIntoConstraints_];
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24A633820;
  v7 = [*&v0[v5] topAnchor];
  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_72;
  }

  v9 = v8;
  v10 = [v8 topAnchor];

  v11 = [v7 constraintEqualToAnchor_];
  *(v6 + 32) = v11;
  v12 = [*&v0[v5] bottomAnchor];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v14 = v13;
  v15 = [v13 bottomAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  *(v6 + 40) = v16;
  v17 = [*&v0[v5] leadingAnchor];
  v18 = [v0 view];
  if (!v18)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v19 = v18;
  v20 = [v18 leadingAnchor];

  v21 = [v17 constraintEqualToAnchor_];
  *(v6 + 48) = v21;
  v22 = [*&v0[v5] trailingAnchor];
  v23 = [v0 view];
  if (!v23)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v24 = v23;
  v25 = objc_opt_self();
  v26 = [v24 trailingAnchor];

  v27 = [v22 constraintEqualToAnchor_];
  *(v6 + 56) = v27;
  sub_24A50D7EC(0, &qword_27EF4F378, 0x277CCAAD0);
  v28 = sub_24A62ED54();

  v249 = v25;
  [v25 activateConstraints_];

  v29 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_titleLabel;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_titleLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v30 = &v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_style];
  v31 = 64;
  if (v246 == 1)
  {
    v31 = 72;
  }

  v32 = 40;
  if (v246 == 1)
  {
    v32 = 48;
  }

  v33 = *&v30[v32];
  v34 = *&v30[v31];
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_24A635FE0;
  v36 = [*&v0[v29] topAnchor];
  v37 = [v0 &selRef_heading];
  if (!v37)
  {
    goto LABEL_75;
  }

  v38 = v37;
  v39 = [v37 topAnchor];

  v40 = [v36 constraintEqualToAnchor:v39 constant:v33];
  *(v35 + 32) = v40;
  v41 = [*&v0[v29] leadingAnchor];
  v42 = [v0 view];
  if (!v42)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v43 = v42;
  v44 = [v42 safeAreaLayoutGuide];

  v45 = [v44 leadingAnchor];
  v46 = [v41 constraintEqualToAnchor:v45 constant:v34];

  *(v35 + 40) = v46;
  v47 = [*&v0[v29] trailingAnchor];
  v48 = [v0 view];
  if (!v48)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v49 = v48;
  v50 = [v48 safeAreaLayoutGuide];

  v51 = [v50 trailingAnchor];
  v52 = [v47 constraintEqualToAnchor:v51 constant:-v34];

  *(v35 + 48) = v52;
  v53 = sub_24A62ED54();

  [v25 activateConstraints_];

  v54 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_nameLabel;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_nameLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_24A635FE0;
  v56 = [*&v0[v54] topAnchor];
  v57 = [*&v0[v29] bottomAnchor];
  v247 = &v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_style];
  v58 = [v56 constraintEqualToAnchor:v57 constant:*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_style + 56]];

  *(v55 + 32) = v58;
  v59 = [*&v0[v54] leadingAnchor];
  v60 = [v0 view];
  if (!v60)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v61 = v60;
  v62 = [v60 safeAreaLayoutGuide];

  v63 = [v62 leadingAnchor];
  v64 = [v59 constraintEqualToAnchor:v63 constant:v34];

  *(v55 + 40) = v64;
  v65 = [*&v0[v54] trailingAnchor];
  v66 = [v0 view];
  if (!v66)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v67 = v66;
  v68 = [v66 safeAreaLayoutGuide];

  v69 = [v68 trailingAnchor];
  v70 = [v65 constraintEqualToAnchor:v69 constant:-v34];

  *(v55 + 48) = v70;
  v71 = sub_24A62ED54();

  [v25 activateConstraints_];

  v72 = *&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pickerViewContainer];
  [v72 setTranslatesAutoresizingMaskIntoConstraints_];
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_24A635FE0;
  v74 = [v72 topAnchor];
  v75 = [*&v0[v54] bottomAnchor];
  v76 = [v74 constraintEqualToAnchor:v75 constant:6.0];

  *(v73 + 32) = v76;
  v77 = [v72 leadingAnchor];
  v78 = [v0 view];
  if (!v78)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v79 = v78;
  v80 = [v78 safeAreaLayoutGuide];

  v81 = [v80 leadingAnchor];
  v82 = v247[8];
  v83 = [v77 constraintEqualToAnchor:v81 constant:v82 + -5.0];

  *(v73 + 40) = v83;
  v84 = [v72 trailingAnchor];
  v85 = [v0 view];
  if (!v85)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v86 = v85;
  v87 = [v85 safeAreaLayoutGuide];

  v88 = [v87 trailingAnchor];
  v89 = [v84 constraintLessThanOrEqualToAnchor:v88 constant:-v82];

  *(v73 + 48) = v89;
  v90 = sub_24A62ED54();

  [v25 activateConstraints_];

  v91 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabelsStackView;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabelsStackView] setTranslatesAutoresizingMaskIntoConstraints_];
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_24A633820;
  v93 = [*&v0[v91] centerYAnchor];
  v94 = [v0 view];
  if (!v94)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v95 = v94;
  v96 = [v94 centerYAnchor];

  v97 = [v93 constraintEqualToAnchor:v96 constant:v247[15]];
  *(v92 + 32) = v97;
  v98 = [*&v0[v91] centerXAnchor];
  v99 = [v0 view];
  if (!v99)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v100 = v99;
  v101 = [v99 centerXAnchor];

  v102 = [v98 constraintEqualToAnchor_];
  *(v92 + 40) = v102;
  v103 = [*&v0[v91] widthAnchor];
  v104 = v247[14];
  v105 = [v103 constraintEqualToConstant_];

  *(v92 + 48) = v105;
  v106 = [*&v0[v91] heightAnchor];
  v107 = [v106 constraintLessThanOrEqualToConstant_];

  *(v92 + 56) = v107;
  v108 = sub_24A62ED54();

  [v25 activateConstraints_];

  v109 = v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_experienceType];
  v110 = &unk_24A633000;
  if (v109 < 2)
  {
    v111 = *&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_r1DistanceView];
    [v111 setTranslatesAutoresizingMaskIntoConstraints_];
    v112 = 11;
    if (v3 >= 414.0)
    {
      v112 = 10;
    }

    v113 = v247[v112];
    v114 = swift_allocObject();
    *(v114 + 16) = xmmword_24A6339F0;
    v115 = [v111 bottomAnchor];
    v116 = [*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_closeButton] topAnchor];
    v117 = [v115 constraintEqualToAnchor:v116 constant:-v113];

    *(v114 + 32) = v117;
    v118 = sub_24A62ED54();

    [v25 &selRef:v118 setPreferredEdgeInsets:? + 3];

    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_24A633810;
    v120 = [v111 leadingAnchor];
    v121 = [v0 view];
    if (v121)
    {
      v122 = v121;
      v123 = [v121 safeAreaLayoutGuide];

      v124 = [v123 leadingAnchor];
      v125 = [v120 constraintEqualToAnchor:v124 constant:v82];

      *(v119 + 32) = v125;
      v126 = [v111 trailingAnchor];
      v127 = [v0 view];
      if (v127)
      {
        v128 = v127;
        v129 = (v119 + 40);
        v130 = [v127 safeAreaLayoutGuide];

        v131 = [v130 trailingAnchor];
        v132 = [v126 constraintEqualToAnchor:v131 constant:-v82];
        v133 = &property descriptor for FMFindingViewController.dismissedHandler;
        goto LABEL_38;
      }

LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v134 = v247;
  v133 = &property descriptor for FMFindingViewController.dismissedHandler;
  if (v109 != 2)
  {
    goto LABEL_39;
  }

  v135 = *&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_btDistanceView];
  [v135 setTranslatesAutoresizingMaskIntoConstraints_];
  v136 = [v245 currentDevice];
  v137 = [v136 userInterfaceIdiom];

  v138 = swift_allocObject();
  *(v138 + 16) = xmmword_24A635FE0;
  if (v137 == 1)
  {
    v139 = [v135 bottomAnchor];
    v140 = [v0 view];
    if (!v140)
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v141 = v140;
    v142 = [v140 safeAreaLayoutGuide];

    v143 = [v142 bottomAnchor];
    v144 = v247[9];
    v145 = [v139 constraintEqualToAnchor:v143 constant:-v144];

    *(v138 + 32) = v145;
    v146 = [v135 leadingAnchor];
    v147 = [v0 view];
    if (!v147)
    {
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    v148 = v147;
    v149 = [v147 safeAreaLayoutGuide];

    v150 = [v149 leadingAnchor];
    v151 = [v146 constraintEqualToAnchor:v150 constant:v144];

    *(v138 + 40) = v151;
    v152 = [v135 trailingAnchor];
    v153 = [v0 view];
    if (!v153)
    {
LABEL_102:
      __break(1u);
      return;
    }

    v154 = v153;
    v155 = [v153 safeAreaLayoutGuide];

    v156 = [v155 trailingAnchor];
    v157 = [v152 constraintEqualToAnchor:v156 constant:-v144];
  }

  else
  {
    v158 = [v135 bottomAnchor];
    v159 = [*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_closeButton] topAnchor];
    v160 = [v158 constraintEqualToAnchor:v159 constant:-8.0];

    *(v138 + 32) = v160;
    v161 = [v135 leadingAnchor];
    v162 = [v0 view];
    if (!v162)
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v163 = v162;
    v164 = [v162 safeAreaLayoutGuide];

    v165 = [v164 leadingAnchor];
    v166 = [v161 constraintEqualToAnchor:v165 constant:v82];

    *(v138 + 40) = v166;
    v152 = [v135 trailingAnchor];
    v167 = [v0 view];
    if (!v167)
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v168 = v167;
    v169 = [v167 safeAreaLayoutGuide];

    v156 = [v169 trailingAnchor];
    v157 = [v152 &selRef_resourceOptions + 6];
  }

  v170 = v157;

  *(v138 + 48) = v170;
  v171 = sub_24A62ED54();

  [v249 &selRef:v171 setPreferredEdgeInsets:? + 3];

  v172 = *&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_incorrectOrientationView];
  [v172 setTranslatesAutoresizingMaskIntoConstraints_];
  v173 = swift_allocObject();
  *(v173 + 16) = xmmword_24A633820;
  v174 = [v172 topAnchor];
  v175 = [v0 view];
  if (!v175)
  {
    goto LABEL_94;
  }

  v176 = v175;
  v177 = [v175 topAnchor];

  v178 = [v174 constraintEqualToAnchor_];
  *(v173 + 32) = v178;
  v179 = [v172 bottomAnchor];
  v180 = [v0 view];
  if (!v180)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v181 = v180;
  v182 = [v180 bottomAnchor];

  v183 = [v179 constraintEqualToAnchor_];
  *(v173 + 40) = v183;
  v184 = [v172 leadingAnchor];
  v185 = [v0 view];
  if (!v185)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v186 = v185;
  v187 = [v185 leadingAnchor];

  v188 = [v184 constraintEqualToAnchor_];
  *(v173 + 48) = v188;
  v126 = [v172 trailingAnchor];
  v189 = [v0 view];
  if (!v189)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v190 = v189;
  v129 = (v173 + 56);
  v131 = [v189 trailingAnchor];

  v132 = [v126 constraintEqualToAnchor_];
LABEL_38:
  v134 = v247;
  v191 = v132;

  *v129 = v191;
  v192 = sub_24A62ED54();

  [v249 v133[161]];

  v110 = &unk_24A633000;
LABEL_39:
  v193 = v3 < 414.0;
  v194 = 17;
  if (v3 >= 414.0)
  {
    v194 = 16;
  }

  v195 = v134[v194];
  v196 = 19;
  if (!v193)
  {
    v196 = 18;
  }

  if (v246 == 1)
  {
    v196 = 20;
  }

  v197 = v134[v196];
  v198 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_closeButton;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_closeButton] setTranslatesAutoresizingMaskIntoConstraints_];
  v199 = [v245 currentDevice];
  v200 = [v199 userInterfaceIdiom];

  v201 = swift_allocObject();
  v248 = v110[129];
  *(v201 + 16) = v248;
  v202 = [*&v0[v198] topAnchor];
  v203 = [v0 view];
  v204 = v203;
  if (v200 == 1)
  {
    if (v203)
    {
      v205 = [v203 topAnchor];

      v206 = [v202 constraintEqualToAnchor:v205 constant:v134[6]];
      *(v201 + 32) = v206;
      v207 = [*&v0[v198] trailingAnchor];
      v208 = [v0 view];
      if (v208)
      {
        v209 = v208;
        v210 = [v208 trailingAnchor];

        v211 = [v207 constraintEqualToAnchor:v210 constant:-v134[9]];
        goto LABEL_52;
      }

      goto LABEL_88;
    }

    goto LABEL_86;
  }

  if (!v203)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v212 = [v203 bottomAnchor];

  v213 = [v202 constraintEqualToAnchor:v212 constant:-v197];
  *(v201 + 32) = v213;
  v207 = [*&v0[v198] leadingAnchor];
  v214 = [v0 view];
  if (!v214)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v215 = v214;
  v210 = [v214 leadingAnchor];

  v211 = [v207 constraintEqualToAnchor:v210 constant:v195];
LABEL_52:
  v216 = v211;

  *(v201 + 40) = v216;
  v217 = sub_24A62ED54();

  [v249 v133[161]];

  v218 = *(*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session] + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType);
  v219 = (v218 >> 13) & 3;
  if (v219)
  {
    if (v219 == 1)
    {
      if (((v218 >> 8) & 0xFFFFFF9F) != 3)
      {
        goto LABEL_67;
      }
    }

    else if ((v218 & 0x8000) != 0)
    {
      if (((v218 >> 8) & 0x1F) != 3)
      {
        goto LABEL_67;
      }
    }

    else if (*(*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session] + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType) != 3)
    {
      goto LABEL_67;
    }

LABEL_60:
    if ((sub_24A592DD4() & 1) == 0)
    {
      return;
    }

    goto LABEL_61;
  }

  if (v218 >> 8 == 3)
  {
    goto LABEL_60;
  }

LABEL_67:
  v232 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_rightActionButton;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_rightActionButton] setTranslatesAutoresizingMaskIntoConstraints_];
  v233 = swift_allocObject();
  *(v233 + 16) = v248;
  v234 = [*&v0[v232] topAnchor];
  v235 = [v0 view];
  if (!v235)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v236 = v235;
  v237 = [v235 bottomAnchor];

  v238 = [v234 constraintEqualToAnchor:v237 constant:-v197];
  *(v233 + 32) = v238;
  v239 = [*&v0[v232] trailingAnchor];
  v240 = [v0 view];
  if (!v240)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v241 = v240;
  v242 = [v240 trailingAnchor];

  v243 = [v239 constraintEqualToAnchor:v242 constant:-v195];
  *(v233 + 40) = v243;
  v244 = sub_24A62ED54();

  [v249 activateConstraints_];

  if ((sub_24A592DD4() & 1) == 0)
  {
    return;
  }

LABEL_61:
  v220 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_torchButton;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_torchButton] setTranslatesAutoresizingMaskIntoConstraints_];
  v221 = swift_allocObject();
  *(v221 + 16) = v248;
  v222 = [*&v0[v220] topAnchor];
  v223 = [v0 view];
  if (!v223)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v224 = v223;
  v225 = [v223 bottomAnchor];

  v226 = [v222 constraintEqualToAnchor:v225 constant:-v197];
  *(v221 + 32) = v226;
  v227 = [*&v0[v220] centerXAnchor];
  v228 = [v0 view];
  if (!v228)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v229 = v228;
  v230 = [v228 centerXAnchor];

  v231 = [v227 constraintEqualToAnchor_];
  *(v221 + 40) = v231;
  v250 = sub_24A62ED54();

  [v249 activateConstraints_];
}

void sub_24A5C4464()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = *&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_snapshotContainer];
    v4 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView;
    [v1 insertSubview:v3 aboveSubview:*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView]];

    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = objc_opt_self();
    sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_24A633820;
    v7 = [v3 topAnchor];
    v8 = [*&v0[v4] topAnchor];
    v9 = [v7 constraintEqualToAnchor_];

    *(v6 + 32) = v9;
    v10 = [v3 bottomAnchor];
    v11 = [*&v0[v4] bottomAnchor];
    v12 = [v10 constraintEqualToAnchor_];

    *(v6 + 40) = v12;
    v13 = [v3 leadingAnchor];
    v14 = [*&v0[v4] leadingAnchor];
    v15 = [v13 constraintEqualToAnchor_];

    *(v6 + 48) = v15;
    v16 = [v3 trailingAnchor];
    v17 = [*&v0[v4] trailingAnchor];
    v18 = [v16 constraintEqualToAnchor_];

    *(v6 + 56) = v18;
    sub_24A50D7EC(0, &qword_27EF4F378, 0x277CCAAD0);
    v19 = sub_24A62ED54();

    [v5 activateConstraints_];
  }

  else
  {
    __break(1u);
  }
}

id sub_24A5C4718(void *a1, char a2)
{
  v2 = 0.0;
  if (a2)
  {
    v2 = 1.0;
  }

  return [a1 setAlpha_];
}

void sub_24A5C4734(_WORD *a1, __int16 *a2)
{
  v5 = type metadata accessor for FMFindingViewState();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!sub_24A629198(a2, a1))
  {
    v9 = *a2;
    v10 = (v9 >> 13) & 3;
    if (v10)
    {
      if (v10 == 1)
      {
        v11 = sub_24A62DF44();
        v18[3] = v11;
        v18[4] = sub_24A5D0C64(&qword_27EF4FE90, MEMORY[0x277D08A28]);
        v12 = sub_24A5292E8(v18);
        (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D089D0], v11);
        LOBYTE(v11) = MEMORY[0x24C219850](v18);
        sub_24A508C54(v18);
        if (v11)
        {
LABEL_5:
          v13 = v2;
          sub_24A5C7770(1, a2);
          v14 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsController);
          v15 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
          swift_beginAccess();
          sub_24A5D0DA8(v13 + v15, v8, type metadata accessor for FMFindingViewState);
          v16 = v14;
          sub_24A5FD8E0(v8);

          sub_24A5D0E10(v8, type metadata accessor for FMFindingViewState);
          sub_24A5C6678();
          sub_24A5C4CDC(a1, a2);
          return;
        }
      }

      else if ((v9 & 0x8100) == 0x100)
      {
        goto LABEL_5;
      }
    }

    sub_24A5C4930(a1, a2);
  }
}

id sub_24A5C4930(uint64_t a1, __int16 *a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMFindingViewState();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsController];
  v11 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
  swift_beginAccess();
  sub_24A5D0DA8(&v3[v11], v9, type metadata accessor for FMFindingViewState);
  v12 = v10;
  sub_24A5FD8E0(v9);

  sub_24A5D0E10(v9, type metadata accessor for FMFindingViewState);
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  *(v13 + 24) = 1;
  if (v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_reducedMotion] != 1 || v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_experienceType] != 2)
  {
    sub_24A5C6C78(v3, 1);
    goto LABEL_6;
  }

  v14 = *&v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView];
  v15 = v3;
  v16 = [v14 snapshotViewAfterScreenUpdates_];
  if (!v16)
  {
LABEL_6:

    goto LABEL_7;
  }

  v17 = v16;
  v28 = objc_opt_self();
  v18 = swift_allocObject();
  v18[2] = v15;
  v18[3] = v17;
  v18[4] = sub_24A5D0E70;
  v18[5] = v13;
  v33 = sub_24A5D0EC4;
  v34 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_24A5A8458;
  v32 = &unk_285DA8D20;
  v19 = _Block_copy(&aBlock);
  v20 = v15;
  v21 = v17;

  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v33 = sub_24A5BE620;
  v34 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_24A5A1470;
  v32 = &unk_285DA8D70;
  v23 = _Block_copy(&aBlock);
  v24 = v21;

  [v28 animateWithDuration:5242884 delay:v19 options:v23 animations:0.5 completion:0.0];

  _Block_release(v23);
  _Block_release(v19);
LABEL_7:
  sub_24A5C6678();
  sub_24A5C6580();
  sub_24A5C816C();
  sub_24A5C90AC();
  sub_24A620310(a1, a2);
  v25 = *(*&v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session] + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType);
  v26 = (v25 >> 13) & 3;
  if (v26 && (v26 == 1 || (v25 & 0x80000000) == 0))
  {
    sub_24A5C92A4();
  }

  else
  {
    sub_24A5C9A78(a1, a2);
  }

  return [v3 accessibilityDistanceAndDirectionUpdated];
}

void sub_24A5C4CDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ((~[v3 supportedInterfaceOrientations] & 0x18) != 0 && sub_24A5CEC7C() != 1)
  {
    return;
  }

  v6 = type metadata accessor for FMFindingViewState();
  v7 = (a2 + *(v6 + 32));
  v8 = v7[5];
  v198 = v7[4];
  *v199 = v8;
  *&v199[13] = *(v7 + 93);
  v9 = v7[2];
  v197 = v7[3];
  v196 = v9;
  v10 = v7[1];
  v194 = *v7;
  v195 = v10;
  v11 = a1 + *(v6 + 32);
  v12 = *v11;
  v13 = *(v11 + 56);
  v202 = *(v11 + 40);
  v203 = v13;
  v204 = *(v11 + 72);
  v205 = *(v11 + 88);
  v14 = *(v11 + 8);
  v201 = *(v11 + 24);
  v200 = v14;
  v15 = *&v199[16];
  if ((*&v199[16] & 0xFF000000) == 0x4000000)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v18 = sub_24A62E314();
    sub_24A506EB8(v18, qword_27EF5C118);
    v19 = sub_24A62E2F4();
    v20 = sub_24A62EF24();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24A503000, v19, v20, "🧭 FMFindingViewCtrl: Requesting scatter haptic.", v21, 2u);
      MEMORY[0x24C21BBE0](v21, -1, -1);
    }

    v22 = &v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController];
    swift_beginAccess();
    v23 = *sub_24A50A204(v22, *(v22 + 3));
    sub_24A57F510();
  }

  else
  {
    if ((*&v199[16] & 0xFF000000) == 0x5000000)
    {
      v16 = &v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController];
      swift_beginAccess();
      v17 = *sub_24A50A204(v16, *(v16 + 3));
      sub_24A581E4C();
      return;
    }

    if ((*&v199[16] & 0xFE000000) != 0x6000000)
    {
      v24 = (v11 + 8);
      v25 = *&v194;
      v26 = *(v11 + 96) | (*(v11 + 100) << 32);
      v207 = v194;
      v27 = *(v7 + 56);
      v210 = *(v7 + 40);
      v211 = v27;
      v212 = *(v7 + 72);
      v213 = *(v7 + 11);
      v28 = *(v7 + 24);
      v208 = *(v7 + 8);
      v209 = v28;
      v29 = HIWORD(*&v199[16]);
      v214 = *&v199[16];
      v30 = ((*&v199[16] & 0xFFFF0000) >> 16);
      v215 = v199[18];
      if (v30 != 2)
      {
        if (v30 == 3)
        {
          v31 = &v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController];
          swift_beginAccess();
          v32 = *sub_24A50A204(v31, *(v31 + 3));
          sub_24A57FDA8();
          return;
        }

        v40 = v26 & 0xFE000000;
        v155 = v6;
        if (v199[18] != 1)
        {
          if ((v26 & 0xFC000000 | 0x2000000) == 0x6000000)
          {
LABEL_81:
            memset(v193, 0, 98);
            v193[98] = -1;
            goto LABEL_89;
          }

          goto LABEL_88;
        }

        if ((v26 & 0xFC000000 | 0x2000000) == 0x6000000)
        {
          if ((v26 & 0x4000000 | 0x2000000) == 0x6000000)
          {
            memset(v184, 0, sizeof(v184));
            v186 = -1;
            v41 = 16711680;
            v185 = 0;
LABEL_76:
            *&v206[32] = v184[2];
            *&v206[48] = v184[3];
            *&v206[64] = v184[4];
            *&v206[80] = v184[5];
            v87 = HIWORD(v41);
            *v206 = v184[0];
            *&v206[16] = v184[1];
            if (HIWORD(v41) <= 0xFEu)
            {
              v218 = v184[2];
              v219 = v184[3];
              v220 = v184[4];
              v221 = v184[5];
              v216 = v184[0];
              v217 = v184[1];
              *v177 = 0;
              v177[98] = 0;
              *&v177[96] = 0;
              v156 = *v177;
              v157 = *&v177[16];
              *&v161[15] = v177[95];
              v160 = *&v177[64];
              *v161 = *&v177[80];
              v158 = *&v177[32];
              v159 = *&v177[48];
              v223 = BYTE2(v41);
              v222 = v41;
              v88 = v41;
              sub_24A50D63C(v184, v168, &qword_27EF50210, &qword_24A635DE0);
              v154 = sub_24A5B00E4(&v216, &v156);
              sub_24A50D6A4(v177, &qword_27EF50210, &qword_24A635DE0);
              sub_24A50D6A4(v184, &qword_27EF50210, &qword_24A635DE0);
              *&v168[32] = *&v206[32];
              *&v168[48] = *&v206[48];
              *&v168[64] = *&v206[64];
              *&v168[80] = *&v206[80];
              *v168 = *v206;
              *&v168[16] = *&v206[16];
              v168[98] = v87;
              *&v168[96] = v88;
              v40 = v26 & 0xFE000000;
              sub_24A50D6A4(v168, &qword_27EF50210, &qword_24A635DE0);
              if (v154)
              {
LABEL_80:
                if ((v26 & 0xFF000000) == 0x4000000)
                {
                  goto LABEL_81;
                }

                if (qword_27EF4E9A0 != -1)
                {
                  swift_once();
                }

                v89 = sub_24A62E314();
                sub_24A506EB8(v89, qword_27EF5C118);
                v90 = sub_24A62E2F4();
                v91 = sub_24A62EF24();
                if (os_log_type_enabled(v90, v91))
                {
                  v92 = swift_slowAlloc();
                  *v92 = 0;
                  _os_log_impl(&dword_24A503000, v90, v91, "🧭 FMFindingViewCtrl: Haptics: Playing near haptic", v92, 2u);
                  MEMORY[0x24C21BBE0](v92, -1, -1);
                }

                v93 = &v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController];
                swift_beginAccess();
                v94 = *sub_24A50A204(v93, *(v93 + 3));
                sub_24A57F510();
LABEL_95:
                v104 = *v7;
                *(v7 + 100);
                if ((v7[6] & 0xFC0000) != 0 || (v7[6] & 0xFC000000) == 0x4000000)
                {
                  v104 = 0.0;
                }

                v106 = fmin(v104 * v104 * 1.8, 0.7);
                v107 = *&v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_configuration];
                v108 = &v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state];
                swift_beginAccess();
                v109 = &v108[*(v155 + 32)];
                v110 = *(v109 + 5);
                *&v168[64] = *(v109 + 4);
                *&v168[80] = v110;
                *&v168[93] = *(v109 + 93);
                v111 = *(v109 + 3);
                *&v168[32] = *(v109 + 2);
                *&v168[48] = v111;
                v112 = *(v109 + 1);
                *v168 = *v109;
                *&v168[16] = v112;
                v113 = *(v107 + 16);

                if (v113)
                {
                  sub_24A508CE4(v168, v177);
                  v114 = sub_24A515A5C(v168);
                  if (v115)
                  {
                    v116 = *(*(v107 + 56) + 40 * v114 + 32);
                    sub_24A517ABC(v168);

LABEL_106:
                    v117 = &v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController];
                    swift_beginAccess();
                    v118 = sub_24A50A204(v117, *(v117 + 3));
                    v176[3] = MEMORY[0x277D839F8];
                    *v176 = v116;
                    v119 = *v118;
                    sub_24A580A00(v176, v106, v116);
                    v37 = &unk_27EF50780;
                    v38 = &qword_24A638470;
                    v39 = v176;
                    goto LABEL_107;
                  }
                }

                else
                {
                  sub_24A508CE4(v168, v177);
                }

                sub_24A577158(v177);

                sub_24A517ABC(v168);
                v116 = *&v177[32];
                goto LABEL_106;
              }
            }

            else
            {
              *&v168[32] = v184[2];
              *&v168[48] = v184[3];
              *&v168[64] = v184[4];
              *&v168[80] = v184[5];
              *v168 = v184[0];
              *&v168[16] = v184[1];
              *&v168[96] = v41;
              v168[98] = BYTE2(v41);
              *&v168[104] = 0;
              v175 = 0;
              v174 = 0;
              sub_24A50D6A4(v168, &qword_27EF516E8, &qword_24A63AA68);
            }

            if ((v40 | 0x2000000) == 0x6000000)
            {
              goto LABEL_80;
            }

            v24 = &v200;
LABEL_88:
            v95 = v24[3];
            v189 = v24[2];
            v190 = v95;
            v191 = v24[4];
            v96 = v24[1];
            v187 = *v24;
            v188 = v96;
            *&v168[40] = v202;
            *&v168[56] = v203;
            *&v168[72] = v204;
            *&v168[8] = v200;
            v192 = *(v24 + 10);
            *v168 = v12;
            *&v168[88] = v205;
            *&v168[24] = v201;
            v168[100] = BYTE4(v26);
            *&v168[96] = v26;
            sub_24A50D63C(v168, v177, &qword_27EF4F670, &qword_24A634D70);
            *v193 = v12;
            *&v193[40] = v189;
            *&v193[56] = v190;
            *&v193[72] = v191;
            *&v193[8] = v187;
            *&v193[88] = v192;
            *&v193[24] = v188;
            v193[98] = BYTE2(v26);
            *&v193[96] = v26;
LABEL_89:
            *&v206[64] = *&v193[64];
            *&v206[80] = *&v193[80];
            *&v206[95] = *&v193[95];
            *v206 = *v193;
            *&v206[16] = *&v193[16];
            *&v206[48] = *&v193[48];
            *&v206[32] = *&v193[32];
            v97 = sub_24A5AED58(v206);
            sub_24A50D6A4(v193, &qword_27EF50210, &qword_24A635DE0);
            if (v97 == 2)
            {
              if (qword_27EF4E9A0 != -1)
              {
                swift_once();
              }

              v98 = sub_24A62E314();
              sub_24A506EB8(v98, qword_27EF5C118);
              v99 = sub_24A62E2F4();
              v100 = sub_24A62EF24();
              if (os_log_type_enabled(v99, v100))
              {
                v101 = swift_slowAlloc();
                *v101 = 0;
                _os_log_impl(&dword_24A503000, v99, v100, "🧭 FMFindingViewCtrl: Haptics: Playing level decreased haptic", v101, 2u);
                MEMORY[0x24C21BBE0](v101, -1, -1);
              }

              v102 = &v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController];
              swift_beginAccess();
              v103 = *sub_24A50A204(v102, *(v102 + 3));
              sub_24A581808();
            }

            goto LABEL_95;
          }

LABEL_75:
          v83 = v24[3];
          v84 = v24[1];
          v180 = v24[2];
          v181 = v83;
          v85 = v24[3];
          v182 = v24[4];
          v86 = v24[1];
          v178 = *v24;
          v179 = v86;
          *&v168[40] = v180;
          *&v168[56] = v85;
          *&v168[72] = v24[4];
          *&v168[8] = v178;
          v183 = *(v24 + 10);
          *v168 = v12;
          *&v168[88] = *(v24 + 10);
          *&v168[24] = v84;
          v168[100] = BYTE4(v26);
          *&v168[96] = v26;
          sub_24A50D63C(v168, v177, &qword_27EF4F670, &qword_24A634D70);
          v41 = v26 & 0xFFFFFF;
          *(&v184[2] + 8) = v180;
          *(&v184[3] + 8) = v181;
          *(&v184[4] + 8) = v182;
          *(v184 + 8) = v178;
          *v184 = v12;
          *(&v184[5] + 1) = v183;
          *(&v184[1] + 8) = v179;
          v186 = BYTE2(v26);
          v185 = v26;
          goto LABEL_76;
        }

        if ((v26 & 0xFF0000) != 0x10000)
        {
          goto LABEL_75;
        }

        v52 = [objc_opt_self() currentDevice];
        v53 = [v52 userInterfaceIdiom];

        if (v53 == 1)
        {
          v54 = 0.3;
        }

        else
        {
          v54 = 0.45;
        }

        v55 = 1.0 - v54;
        v56 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_inBand;
        if (v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_inBand])
        {
          v57 = v54 + v55 * 0.6;
          v58 = v54 + v55 * 0.65;
          v59 = v54 + v55 * 0.85;
          if (v59 < *&v194)
          {
            if (qword_27EF4E9A0 != -1)
            {
              swift_once();
            }

            v60 = sub_24A62E314();
            sub_24A506EB8(v60, qword_27EF5C118);
            v61 = sub_24A62E2F4();
            v62 = sub_24A62EF24();
            if (os_log_type_enabled(v61, v62))
            {
              v63 = swift_slowAlloc();
              *v63 = 134217984;
              *(v63 + 4) = v59;
              _os_log_impl(&dword_24A503000, v61, v62, "🧭 FMFindingViewCtrl Haptics: exiting band, above %f ", v63, 0xCu);
              MEMORY[0x24C21BBE0](v63, -1, -1);
            }

            v3[v56] = 0;
            v57 = v54 + v55 * 0.6;
          }

          v64 = v55 * 0.15;
          v65 = v54 + v55 * 0.35;
          v66 = v54 + v55 * 0.4;
          if (v57 < v25 && v25 < v58)
          {
            v68 = v57;
            if (qword_27EF4E9A0 != -1)
            {
              swift_once();
            }

            v69 = sub_24A62E314();
            sub_24A506EB8(v69, qword_27EF5C118);
            v70 = sub_24A62E2F4();
            v71 = sub_24A62EF24();
            if (os_log_type_enabled(v70, v71))
            {
              v72 = swift_slowAlloc();
              *v72 = 134218240;
              *(v72 + 4) = v68;
              *(v72 + 12) = 2048;
              *(v72 + 14) = v58;
              _os_log_impl(&dword_24A503000, v70, v71, "🧭 FMFindingViewCtrl Haptics: exiting band, between %f and %f", v72, 0x16u);
              MEMORY[0x24C21BBE0](v72, -1, -1);
            }

            v3[v56] = 0;
          }

          v73 = v54 + v64;
          if (v65 < v25 && v25 < v66)
          {
            if (qword_27EF4E9A0 != -1)
            {
              swift_once();
            }

            v75 = sub_24A62E314();
            sub_24A506EB8(v75, qword_27EF5C118);
            v76 = sub_24A62E2F4();
            v77 = sub_24A62EF24();
            if (os_log_type_enabled(v76, v77))
            {
              v78 = swift_slowAlloc();
              *v78 = 134218240;
              *(v78 + 4) = v65;
              *(v78 + 12) = 2048;
              *(v78 + 14) = v66;
              _os_log_impl(&dword_24A503000, v76, v77, "🧭 FMFindingViewCtrl Haptics: exiting band, between %f and %f", v78, 0x16u);
              MEMORY[0x24C21BBE0](v78, -1, -1);
            }

            v3[v56] = 0;
          }

          if (v25 < v73)
          {
            if (qword_27EF4E9A0 != -1)
            {
              swift_once();
            }

            v79 = sub_24A62E314();
            sub_24A506EB8(v79, qword_27EF5C118);
            v80 = sub_24A62E2F4();
            v81 = sub_24A62EF24();
            if (os_log_type_enabled(v80, v81))
            {
              v82 = swift_slowAlloc();
              *v82 = 134217984;
              *(v82 + 4) = v73;
              _os_log_impl(&dword_24A503000, v80, v81, "🧭 FMFindingViewCtrl Haptics: exiting band, below %f", v82, 0xCu);
              MEMORY[0x24C21BBE0](v82, -1, -1);
            }

            v3[v56] = 0;
          }

          goto LABEL_95;
        }

        v120 = v54 + v55 * 0.25;
        if (v120 < *&v194 && v12 > 0.0 && v12 <= v120)
        {
          if (qword_27EF4E9A0 != -1)
          {
            swift_once();
          }

          v121 = sub_24A62E314();
          sub_24A506EB8(v121, qword_27EF5C118);
          v122 = sub_24A62E2F4();
          v123 = sub_24A62EF24();
          if (os_log_type_enabled(v122, v123))
          {
            v124 = swift_slowAlloc();
            *v124 = 0;
            _os_log_impl(&dword_24A503000, v122, v123, "🧭 FMFindingViewCtrl Haptics: Playing level increased haptic for ring 1", v124, 2u);
            MEMORY[0x24C21BBE0](v124, -1, -1);
          }

          v125 = sub_24A62E2F4();
          v126 = sub_24A62EF24();
          if (os_log_type_enabled(v125, v126))
          {
            v127 = swift_slowAlloc();
            *v127 = 134218496;
            *(v127 + 4) = v25;
            *(v127 + 12) = 2048;
            *(v127 + 14) = v12;
            *(v127 + 22) = 2048;
            *(v127 + 24) = v120;
            _os_log_impl(&dword_24A503000, v125, v126, "🧭 FMFindingViewCtrl Haptics: Playing: curr:%f, old:%f, scale: %f", v127, 0x20u);
            MEMORY[0x24C21BBE0](v127, -1, -1);
          }

          v128 = &v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController];
          swift_beginAccess();
          v129 = *sub_24A50A204(v128, *(v128 + 3));
          sub_24A581798();
          goto LABEL_145;
        }

        v130 = v54 + v55 * 0.5;
        if (v130 >= *&v194 || v12 <= 0.0 || v12 > v130)
        {
          v143 = v54 + v55 * 0.75;
          v144 = v143 >= *&v194 || v12 > v143;
          if (v144 || v12 <= 0.0)
          {
            goto LABEL_95;
          }

          if (qword_27EF4E9A0 != -1)
          {
            swift_once();
          }

          v145 = sub_24A62E314();
          sub_24A506EB8(v145, qword_27EF5C118);
          v146 = sub_24A62E2F4();
          v147 = sub_24A62EF24();
          if (os_log_type_enabled(v146, v147))
          {
            v148 = swift_slowAlloc();
            *v148 = 0;
            _os_log_impl(&dword_24A503000, v146, v147, "🧭 FMFindingViewCtrl Haptics: Playing level increased haptic for ring 3", v148, 2u);
            MEMORY[0x24C21BBE0](v148, -1, -1);
          }

          v149 = sub_24A62E2F4();
          v150 = sub_24A62EF24();
          if (os_log_type_enabled(v149, v150))
          {
            v151 = swift_slowAlloc();
            *v151 = 134218496;
            *(v151 + 4) = v25;
            *(v151 + 12) = 2048;
            *(v151 + 14) = v12;
            *(v151 + 22) = 2048;
            *(v151 + 24) = v143;
            _os_log_impl(&dword_24A503000, v149, v150, "🧭 FMFindingViewCtrl Haptics: Playing: curr:%f, old:%f, scale: %f", v151, 0x20u);
            MEMORY[0x24C21BBE0](v151, -1, -1);
          }

          v152 = &v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController];
          swift_beginAccess();
          v153 = *sub_24A50A204(v152, *(v152 + 3));
          sub_24A581798();
          v140 = sub_24A62E2F4();
          v141 = sub_24A62EF24();
          if (!os_log_type_enabled(v140, v141))
          {
            goto LABEL_144;
          }

          v142 = swift_slowAlloc();
          *v142 = 134217984;
          *(v142 + 4) = v143;
        }

        else
        {
          if (qword_27EF4E9A0 != -1)
          {
            swift_once();
          }

          v131 = sub_24A62E314();
          sub_24A506EB8(v131, qword_27EF5C118);
          v132 = sub_24A62E2F4();
          v133 = sub_24A62EF24();
          if (os_log_type_enabled(v132, v133))
          {
            v134 = swift_slowAlloc();
            *v134 = 0;
            _os_log_impl(&dword_24A503000, v132, v133, "🧭 FMFindingViewCtrl Haptics: Playing level increased haptic for ring 2", v134, 2u);
            MEMORY[0x24C21BBE0](v134, -1, -1);
          }

          v135 = sub_24A62E2F4();
          v136 = sub_24A62EF24();
          if (os_log_type_enabled(v135, v136))
          {
            v137 = swift_slowAlloc();
            *v137 = 134218496;
            *(v137 + 4) = v25;
            *(v137 + 12) = 2048;
            *(v137 + 14) = v12;
            *(v137 + 22) = 2048;
            *(v137 + 24) = v130;
            _os_log_impl(&dword_24A503000, v135, v136, "🧭 FMFindingViewCtrl Haptics: Playing: curr:%f, old:%f, scale: %f", v137, 0x20u);
            MEMORY[0x24C21BBE0](v137, -1, -1);
          }

          v138 = &v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController];
          swift_beginAccess();
          v139 = *sub_24A50A204(v138, *(v138 + 3));
          sub_24A581798();
          v140 = sub_24A62E2F4();
          v141 = sub_24A62EF24();
          if (!os_log_type_enabled(v140, v141))
          {
            goto LABEL_144;
          }

          v142 = swift_slowAlloc();
          *v142 = 134217984;
          *(v142 + 4) = v130;
        }

        _os_log_impl(&dword_24A503000, v140, v141, "🧭 FMFindingViewCtrl Haptics: entering band %f ", v142, 0xCu);
        MEMORY[0x24C21BBE0](v142, -1, -1);
LABEL_144:

LABEL_145:
        v3[v56] = 1;
        goto LABEL_95;
      }

      v33 = &v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController];
      swift_beginAccess();
      v34 = *sub_24A50A204(v33, *(v33 + 3));
      sub_24A581E4C();
      v164 = v196;
      v165 = v197;
      v166 = v198;
      v167 = *v199;
      v162 = v194;
      v163 = v195;
      if ((v26 & 0xFD000000) == 0x5000000 || (v26 & 0xFD000000 | 0x2000000) == 0x6000000)
      {
        memset(v206, 0, 98);
        v206[98] = -1;
        v35 = 16711680;
      }

      else
      {
        v48 = v24[3];
        *&v168[40] = v24[2];
        *&v168[56] = v48;
        *&v168[72] = v24[4];
        v49 = v24[1];
        *&v168[8] = *v24;
        v35 = v26 & 0xFFFFFF;
        *v168 = v12;
        *&v168[88] = *(v24 + 10);
        *&v168[24] = v49;
        *&v168[96] = v26;
        v168[100] = BYTE4(v26);
        sub_24A50D63C(v168, v177, &qword_27EF4F670, &qword_24A634D70);
        *v206 = v12;
        v50 = v24[3];
        *&v206[40] = v24[2];
        *&v206[56] = v50;
        *&v206[72] = v24[4];
        v51 = v24[1];
        *&v206[8] = *v24;
        *&v206[88] = *(v24 + 10);
        *&v206[24] = v51;
        v206[98] = BYTE2(v26);
        *&v206[96] = v26;
      }

      *&v177[37] = *&v206[32];
      *&v177[53] = *&v206[48];
      *&v177[69] = *&v206[64];
      *&v177[85] = *&v206[80];
      *&v177[5] = *v206;
      v36 = HIWORD(v35);
      *&v177[21] = *&v206[16];
      if (BYTE2(v15) == 255)
      {
        if (v36 > 0xFE)
        {
          v158 = v164;
          v159 = v165;
          v160 = v166;
          *v161 = v167;
          v156 = v162;
          v157 = v163;
          *&v161[16] = v15;
          v161[18] = v29;
          sub_24A508CE4(&v194, v168);
          v37 = &qword_27EF50210;
          v38 = &qword_24A635DE0;
          v39 = &v156;
LABEL_107:
          sub_24A50D6A4(v39, v37, v38);
          return;
        }
      }

      else if (v36 <= 0xFE)
      {
        *&v193[32] = *&v206[32];
        *&v193[48] = *&v206[48];
        *&v193[64] = *&v206[64];
        *&v193[80] = *&v206[80];
        *v193 = *v206;
        *&v193[16] = *&v206[16];
        v193[98] = BYTE2(v35);
        *&v193[96] = v35;
        v160 = *&v206[64];
        *v161 = *&v206[80];
        v158 = *&v206[32];
        v159 = *&v206[48];
        v156 = *v206;
        v157 = *&v206[16];
        *&v161[15] = *&v193[95];
        v218 = v164;
        v219 = v165;
        v220 = v166;
        v221 = v167;
        v216 = v162;
        v217 = v163;
        v223 = v29;
        v222 = v15;
        sub_24A508CE4(&v194, v168);
        sub_24A508CE4(&v194, v168);
        sub_24A50D63C(v206, v168, &qword_27EF50210, &qword_24A635DE0);
        v47 = sub_24A5B00E4(&v216, &v156);
        sub_24A50D6A4(v206, &qword_27EF50210, &qword_24A635DE0);
        sub_24A517ABC(&v194);
        sub_24A50D6A4(v193, &qword_27EF50210, &qword_24A635DE0);
        *&v168[32] = v164;
        *&v168[48] = v165;
        *&v168[64] = v166;
        *&v168[80] = v167;
        *v168 = v162;
        *&v168[16] = v163;
        v168[98] = v29;
        *&v168[96] = v15;
        sub_24A50D6A4(v168, &qword_27EF50210, &qword_24A635DE0);
        if (v47)
        {
          return;
        }

        goto LABEL_27;
      }

      *&v168[32] = v164;
      *&v168[48] = v165;
      *&v168[64] = v166;
      *&v168[80] = v167;
      *v168 = v162;
      *&v168[16] = v163;
      *&v168[96] = v15;
      v168[98] = v29;
      *&v168[99] = *v177;
      v169 = *&v177[16];
      v170 = *&v177[32];
      *&v173[13] = *&v177[93];
      *v173 = *&v177[80];
      v172 = *&v177[64];
      v171 = *&v177[48];
      v175 = BYTE2(v35);
      v174 = v35;
      sub_24A508CE4(&v194, &v156);
      sub_24A50D6A4(v168, &qword_27EF516E8, &qword_24A63AA68);
LABEL_27:
      if ((v26 & 0xFF000000) != 0x4000000)
      {
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v42 = sub_24A62E314();
        sub_24A506EB8(v42, qword_27EF5C118);
        v43 = sub_24A62E2F4();
        v44 = sub_24A62EF24();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_24A503000, v43, v44, "🧭 FMFindingViewCtrl: Playing here haptic", v45, 2u);
          MEMORY[0x24C21BBE0](v45, -1, -1);
        }

        v46 = *sub_24A50A204(v33, *(v33 + 3));
        sub_24A581798();
      }
    }
  }
}

uint64_t sub_24A5C6580()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_nameLabel);
  v2 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
  swift_beginAccess();
  v3 = type metadata accessor for FMFindingViewState();
  v4 = (v2 + *(v3 + 24));
  v5 = *v4;
  v6 = v4[1];
  v7 = v1;

  v8 = sub_24A62EBE4();

  [v7 setText_];

  v9 = (v2 + *(v3 + 24));
  v10 = v9[1];
  v11 = (*(v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_r1DistanceView) + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_deviceName);
  v12 = v11[1];
  *v11 = *v9;
  v11[1] = v10;
}

void sub_24A5C6678()
{
  v1 = type metadata accessor for FMFindingViewState();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for FMFindingSessionState();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_experienceType);
  if (v10 >= 2)
  {
    if (v10 == 2)
    {
      v17 = v7;
      v18 = *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_btDistanceView);
      v19 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
      swift_beginAccess();
      v20 = (v19 + *(v1 + 32));
      v21 = v20[5];
      v57[3] = v20[4];
      v57[4] = v21;
      *(&v57[4] + 13) = *(v20 + 93);
      v22 = v20[1];
      v56 = *v20;
      v57[0] = v22;
      v23 = v20[3];
      v57[1] = v20[2];
      v57[2] = v23;
      v24 = *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session);
      v25 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
      swift_beginAccess();
      sub_24A5D0DA8(v24 + v25, v9, type metadata accessor for FMFindingSessionState);
      v26 = *(v9 + 1);
      if (*(v26 + 16))
      {
        v27 = *(v17 + 36);
        sub_24A508CE4(&v56, v55);
        v28 = sub_24A515AC8(&v9[v27]);
        if (v29)
        {
          sub_24A508AE4(*(v26 + 56) + 40 * v28, v54);
          sub_24A508CA0(v54, v55);
          sub_24A5D0E10(v9, type metadata accessor for FMFindingSessionState);
          v30 = (v19 + *(v1 + 60));
          v31 = *v30;
          v32 = v30[1];

          sub_24A508250(&v56, v55, v31, v32);

          sub_24A517ABC(&v56);
          sub_24A508C54(v55);
          return;
        }
      }

      else
      {
        sub_24A508CE4(&v56, v55);
      }

      sub_24A62F444();
      __break(1u);
    }
  }

  else
  {
    v11 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
    swift_beginAccess();
    sub_24A5D0DA8(v11, v4, type metadata accessor for FMFindingViewState);
    v12 = v4 + *(v1 + 32);
    v13 = *(v12 + 24);
    if ((v13 & 0xFC000000 | 0x2000000) == 0x6000000 || (v33 = v13 | (v12[100] << 32), (v33 & 0xFF0000) != 0x40000))
    {
LABEL_3:
      sub_24A5D0E10(v4, type metadata accessor for FMFindingViewState);
      v14 = *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_r1DistanceView);
      v15 = v14 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distance;
      if ((*(v11 + *(v1 + 32) + 96) | 0x2000000u) >> 25 == 3)
      {
        *v15 = 0;
        *(v15 + 8) = 1;
        v16 = v14 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_guide;
        *v16 = 0;
        *(v16 + 4) = 1;
      }

      else
      {
        *v15 = 0;
        *(v15 + 8) = 1;
        v36 = v14 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_guide;
        *v36 = 0x2000;
        *(v36 + 4) = 0;
      }

      *(v14 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_threshold) = 2;
      v37 = *(v14 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceSpring);
      sub_24A55C6B4(1.79769313e308);
      *(v37 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
      return;
    }

    v34 = *(v12 + 2);
    if (v34 == 1)
    {
      v56 = *v12;
      *(&v57[1] + 8) = *(v12 + 40);
      *(&v57[2] + 8) = *(v12 + 56);
      *(&v57[3] + 8) = *(v12 + 72);
      v35 = *(v12 + 11);
      *&v57[0] = 1;
      *(&v57[4] + 1) = v35;
      *(v57 + 8) = *(v12 + 24);
      LODWORD(v57[5]) = v33;
      BYTE4(v57[5]) = BYTE4(v33);
      sub_24A50D63C(&v56, v55, &qword_27EF4F670, &qword_24A634D70);
      goto LABEL_3;
    }

    v56 = *v12;
    *(&v57[1] + 8) = *(v12 + 40);
    *(&v57[2] + 8) = *(v12 + 56);
    *(&v57[3] + 8) = *(v12 + 72);
    v38 = *(v12 + 11);
    *&v57[0] = v34;
    *(&v57[4] + 1) = v38;
    *(v57 + 8) = *(v12 + 24);
    LOWORD(v57[5]) = v33;
    v39 = sub_24A51A858();
    if ((v40 & 0xFF00000000) == 0x200000000)
    {
      goto LABEL_3;
    }

    v41 = v39;
    v42 = v40;
    v43 = *&v39;
    v44 = *v4;
    sub_24A5D0E10(v4, type metadata accessor for FMFindingViewState);
    if (v44)
    {
      v45 = v42;
    }

    else
    {
      v45 = 1;
    }

    if (v44 >> 14 <= 2)
    {
      v45 = v42;
    }

    v46 = *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_r1DistanceView);
    v47 = v46 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distance;
    *v47 = v41;
    *(v47 + 8) = 0;
    v48 = v46 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_guide;
    *v48 = v45;
    *(v48 + 4) = 0;
    *(v46 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_threshold) = BYTE4(v42) & 1;
    v49 = *(v46 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceSpring);
    v50 = v49 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
    swift_beginAccess();
    v51 = *(v49 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
    if (*(v50 + 280) + v51 == 1.79769313e308)
    {
      sub_24A55C6B4(v43);
      *(v49 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
      v52 = v46 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_presentedDistance;
      *v52 = v41;
      *(v52 + 8) = 0;
    }

    else
    {
      v53 = v43 - v51;
      *(v50 + 280) = v53;
      *(v50 + 240) = v53;
      *(v50 + 248) = 0;
    }
  }
}

void sub_24A5C6C78(uint64_t a1, int a2)
{
  v141 = a2;
  v3 = type metadata accessor for FMFindingViewState();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v140 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v139 = &v137 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v138 = &v137 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v137 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v137 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v137 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v137 - v20;
  v142 = a1;
  v143 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView;
  v22 = *(a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView);
  v23 = a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
  swift_beginAccess();
  sub_24A5D0DA8(v23, v21, type metadata accessor for FMFindingViewState);
  v144 = v3;
  v24 = &v21[*(v3 + 32)];
  v25 = v24[100];
  v26 = *(v24 + 24);
  v27 = v22;
  sub_24A5D0E10(v21, type metadata accessor for FMFindingViewState);
  v28 = *&v27[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
  if (v28)
  {
    if ((v26 & 0xFC000000) == 0x4000000)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = 1.0;
    }

    v30 = v28;
    sub_24A5D7C5C(1, v29);
  }

  sub_24A5D0DA8(v23, v19, type metadata accessor for FMFindingViewState);
  v31 = sub_24A627CB8();
  v33 = v32;
  sub_24A5D0E10(v19, type metadata accessor for FMFindingViewState);
  if ((v33 & 1) == 0)
  {
    v34 = *(v142 + v143);
    v35 = *&v34[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
    if (v35)
    {
      v36 = *&v31;
      v37 = v34;
      v38 = v35;
      sub_24A5D6718(0, v36);
    }
  }

  sub_24A5D0DA8(v23, v16, type metadata accessor for FMFindingViewState);
  *&v39 = COERCE_DOUBLE(sub_24A627F7C());
  v41 = v40;
  sub_24A5D0E10(v16, type metadata accessor for FMFindingViewState);
  v42 = v141;
  v43 = v143;
  if ((v41 & 1) == 0)
  {
    v44 = *&v39;
    v45 = *(v142 + v143);
    v46 = *&v45[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
    v47 = v45;
    if (v46)
    {
      v48 = v46;
      sub_24A5D695C(v42 & 1, v44);
    }

    v45[OBJC_IVAR____TtC11FMFindingUI8FMPFView_useGreenBackdropBlurAndOpacity] = v44 > 0.0;
    sub_24A5F5B78(1);
  }

  sub_24A5D0DA8(v23, v13, type metadata accessor for FMFindingViewState);
  v49 = *v13;
  if (v49 >= 0xC000 && (v49 & 1) == 0)
  {
    goto LABEL_16;
  }

  v50 = v13 + *(v144 + 32);
  v51 = *(v50 + 24);
  if ((v51 & 0xFC000000 | 0x2000000) == 0x6000000)
  {
    goto LABEL_16;
  }

  v63 = v51 | (v50[100] << 32);
  if ((v63 & 0xFF0000) != 0x40000)
  {
    goto LABEL_16;
  }

  v64 = v50[40];
  if (*(v50 + 2) == 1)
  {
    v152 = *v50;
    *v153 = 1;
    *&v153[8] = *(v50 + 24);
    v153[24] = v64;
    *&v153[25] = *(v50 + 41);
    *&v153[41] = *(v50 + 57);
    *&v153[57] = *(v50 + 73);
    *&v153[72] = *(v50 + 11);
    *&v153[80] = v63;
    v153[84] = BYTE4(v63);
    sub_24A50D63C(&v152, v150, &qword_27EF4F670, &qword_24A634D70);
LABEL_16:
    sub_24A5D0E10(v13, type metadata accessor for FMFindingViewState);
    v52 = v142;
    goto LABEL_17;
  }

  if ((v50[40] & 1) == 0)
  {
    goto LABEL_16;
  }

  v132 = *(v50 + 4);
  sub_24A5D0E10(v13, type metadata accessor for FMFindingViewState);
  v52 = v142;
  v133 = *(v142 + v43);
  v134 = *&v133[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
  if (v134)
  {
    v135 = v133;
    v136 = v134;
    sub_24A5D6984(v132, 0, 1);
  }

LABEL_17:
  v53 = v138;
  sub_24A5D0DA8(v23, v138, type metadata accessor for FMFindingViewState);
  v54 = sub_24A6282C8();
  v56 = v55;
  sub_24A5D0E10(v53, type metadata accessor for FMFindingViewState);
  v57 = v143;
  v58 = *(v52 + v143);
  if ((v56 & 1) == 0)
  {
    v59 = *&v58[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
    if (v59)
    {
      v60 = *&v54;
      v61 = v58;
      v62 = v59;
      sub_24A5D6A2C(v42 & 1, v60);

      v57 = v143;
      v58 = *(v52 + v143);
    }

    else
    {
      v57 = v143;
    }
  }

  v65 = v139;
  sub_24A5D0DA8(v23, v139, type metadata accessor for FMFindingViewState);
  v66 = v58;
  v67 = sub_24A627670();
  v69 = v68;
  sub_24A5D0E10(v65, type metadata accessor for FMFindingViewState);
  v70 = &v66[OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastAskedRadiusFactor];
  *v70 = v67;
  v71 = v69 & 1;
  v70[8] = v69 & 1;
  v66[OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastAskedSprungRadiusFactor] = 1;
  v72 = *&v66[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
  if (v72)
  {
    v73 = v72;
    sub_24A5D7078(v67, v71, 1);
  }

  v74 = v140;
  sub_24A5D0DA8(v23, v140, type metadata accessor for FMFindingViewState);
  v75 = v74 + *(v144 + 32);
  v76 = *(v75 + 96) | (*(v75 + 100) << 32);
  if ((*(v75 + 96) & 0xFC000000) == 0x4000000 || (*(v75 + 96) & 0xFF0000) != 0x40000)
  {
LABEL_30:
    sub_24A5D0E10(v74, type metadata accessor for FMFindingViewState);
    v81 = *(v52 + v57);
    v81[OBJC_IVAR____TtC11FMFindingUI8FMPFView_isConvergingBackdropShown] = 0;
    v82 = &v81[OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropRGBAColorSpringsIntensity];
    *v82 = 0;
    v82[8] = 0;
    v83 = *&v81[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
    if (v83)
    {
      v84 = v81;
      v85 = v83;
      v86 = 0;
LABEL_39:
      sub_24A5D7928(v86);

      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v77 = *(v75 + 56);
  v78 = *(v75 + 57);
  v79 = *(v75 + 80);
  if (*(v75 + 16) == 1)
  {
    v80 = *(v75 + 88);
    v152 = *v75;
    *v153 = 1;
    *&v153[8] = *(v75 + 24);
    *&v153[24] = *(v75 + 40);
    v153[40] = v77;
    v153[41] = v78;
    *&v153[42] = *(v75 + 58);
    *&v153[56] = *(v75 + 72);
    *&v153[64] = v79;
    *&v153[72] = v80;
    *&v153[80] = v76;
    v153[84] = BYTE4(v76);
    sub_24A50D63C(&v152, v150, &qword_27EF4F670, &qword_24A634D70);
    goto LABEL_30;
  }

  if (*(v75 + 56) & 1) != 0 || (v87 = 0.0, (*(v75 + 57)))
  {
    v88 = (v79 + -1.0) * 0.5;
    v89 = 1.0 - fmin(v88, 1.0);
    if (v88 < 0.0)
    {
      v87 = 1.0;
    }

    else
    {
      v87 = v89;
    }
  }

  sub_24A5D0E10(v74, type metadata accessor for FMFindingViewState);
  v81 = *(v52 + v57);
  v81[OBJC_IVAR____TtC11FMFindingUI8FMPFView_isConvergingBackdropShown] = 1;
  v90 = &v81[OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropRGBAColorSpringsIntensity];
  *v90 = v87;
  *(v90 + 8) = 0;
  v91 = *&v81[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
  if (v91)
  {
    v84 = v81;
    v85 = v91;
    v86 = v77 & 1;
    goto LABEL_39;
  }

LABEL_40:
  v84 = v81;
LABEL_41:
  sub_24A5F5B78(v42 & 1);

  v92 = *(v52 + v57);
  v93 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_configuration;
  v94 = *(v52 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_configuration);
  v95 = v23 + *(v144 + 32);
  v96 = *(v95 + 80);
  *&v153[48] = *(v95 + 64);
  *&v153[64] = v96;
  *&v153[77] = *(v95 + 93);
  v97 = *(v95 + 48);
  *&v153[16] = *(v95 + 32);
  *&v153[32] = v97;
  v98 = *(v95 + 16);
  v152 = *v95;
  *v153 = v98;
  v99 = *(v94 + 16);
  v100 = v92;

  if (v99)
  {
    sub_24A508CE4(&v152, v150);
    v101 = sub_24A515A5C(&v152);
    if (v102)
    {
      v103 = *(*(v94 + 56) + 40 * v101 + 16);
      sub_24A517ABC(&v152);

      goto LABEL_46;
    }
  }

  else
  {
    sub_24A508CE4(&v152, v150);
  }

  sub_24A577158(v146);

  sub_24A517ABC(&v152);
  v103 = *&v146[2];
LABEL_46:
  v104 = *&v100[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
  if (v104)
  {
    v105 = v104;
    sub_24A5D75E0(v42 & 1, v103);
  }

  v106 = *(v52 + v57);
  v107 = *(v52 + v93);
  v108 = v23 + *(v144 + 32);
  v109 = *(v108 + 80);
  v150[4] = *(v108 + 64);
  v151[0] = v109;
  *(v151 + 13) = *(v108 + 93);
  v110 = *(v108 + 48);
  v150[2] = *(v108 + 32);
  v150[3] = v110;
  v111 = *(v108 + 16);
  v150[0] = *v108;
  v150[1] = v111;
  v112 = *(v107 + 16);
  v113 = v106;

  if (v112)
  {
    sub_24A508CE4(v150, v148);
    v114 = sub_24A515A5C(v150);
    if (v115)
    {
      v116 = *(*(v107 + 56) + 40 * v114 + 8);
      sub_24A517ABC(v150);

      goto LABEL_53;
    }
  }

  else
  {
    sub_24A508CE4(v150, v148);
  }

  sub_24A577158(v147);

  sub_24A517ABC(v150);
  v116 = *&v147[1];
LABEL_53:
  v117 = *&v113[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
  if (v117)
  {
    v118 = v117;
    sub_24A5D7498(v42 & 1, v116);
  }

  v119 = *(v52 + v57);
  v120 = *(v52 + v93);
  v121 = v23 + *(v144 + 32);
  v122 = *(v121 + 80);
  v148[4] = *(v121 + 64);
  v149[0] = v122;
  *(v149 + 13) = *(v121 + 93);
  v123 = *(v121 + 48);
  v148[2] = *(v121 + 32);
  v148[3] = v123;
  v124 = *(v121 + 16);
  v148[0] = *v121;
  v148[1] = v124;
  v125 = *(v120 + 16);
  v126 = v119;

  if (v125)
  {
    sub_24A508CE4(v148, v145);
    v127 = sub_24A515A5C(v148);
    if (v128)
    {
      v129 = *(*(v120 + 56) + 40 * v127);
      sub_24A517ABC(v148);

      goto LABEL_60;
    }
  }

  else
  {
    sub_24A508CE4(v148, v145);
  }

  sub_24A577158(v145);

  sub_24A517ABC(v148);
  v129 = *v145;
LABEL_60:
  v130 = *&v126[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
  if (v130)
  {
    v131 = v130;
    sub_24A5D7384(v42 & 1, v129);
  }
}

void sub_24A5C7770(char a1, uint64_t a2)
{
  v3 = v2;
  v5 = (a2 + *(type metadata accessor for FMFindingViewState() + 32));
  v6 = *(v5 + 4);
  v7 = *(v5 + 5);
  v8 = *(v5 + 2);
  v166 = *(v5 + 3);
  v167 = v6;
  v168[0] = v7;
  *(v168 + 13) = *(v5 + 93);
  v9 = *(v5 + 1);
  v163 = *v5;
  v164 = v9;
  v165 = v8;
  sub_24A577158(&v161);
  v10 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView;
  v11 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView);
  v11[OBJC_IVAR____TtC11FMFindingUI8FMPFView_isConvergingBackdropShown] = 0;
  v12 = &v11[OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropRGBAColorSpringsIntensity];
  *v12 = 0;
  v12[8] = 0;
  v13 = *&v11[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
  v154 = v10;
  v14 = v11;
  if (v13)
  {
    v15 = v13;
    sub_24A5D7928(0);
  }

  v153 = a1;
  sub_24A5F5B78(a1 & 1);

  v16 = objc_opt_self();
  v17 = sub_24A62EBE4();
  v152 = MGGetSInt32Answer();

  v18 = [v16 mainScreen];
  [v18 nativeScale];
  v20 = v19;

  v21 = objc_opt_self();
  v22 = [v21 currentDevice];
  v151 = [v22 userInterfaceIdiom] == 1;

  v23 = [v16 mainScreen];
  [v23 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v170.origin.x = v25;
  v170.origin.y = v27;
  v170.size.width = v29;
  v170.size.height = v31;
  Width = CGRectGetWidth(v170);
  v33 = [v16 mainScreen];
  [v33 bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  v171.origin.x = v35;
  v171.origin.y = v37;
  v171.size.width = v39;
  v171.size.height = v41;
  v42 = CGRectGetWidth(v171);
  v43 = *(v5 + 24) | (*(v5 + 100) << 32);
  if ((v5[12] & 0xFC0000) != 0 || (v5[12] & 0xFC000000) == 0x4000000)
  {
    v45 = 0.0;
  }

  else
  {
    v45 = *v5;
  }

  v46 = [v21 currentDevice];
  v47 = [v46 userInterfaceIdiom];

  if (v47 == 1)
  {
    v48 = 0.75;
  }

  else
  {
    v48 = 0.45;
  }

  v49 = [v21 currentDevice];
  v50 = [v49 userInterfaceIdiom];

  if (v50 == 1)
  {
    v51 = 0.3;
  }

  else
  {
    v51 = 0.135;
  }

  *&v160[13] = *(v5 + 93);
  v52 = *(v5 + 5);
  v159[4] = *(v5 + 4);
  *v160 = v52;
  v53 = *(v5 + 1);
  v159[0] = *v5;
  v159[1] = v53;
  v54 = *(v5 + 3);
  v159[2] = *(v5 + 2);
  v159[3] = v54;
  if ((*&v160[16] & 0xFF000000) != 0x4000000)
  {
    if ((*&v160[16] & 0xFF000000) == 0x5000000)
    {
      v55 = *&v154[v3];
      v56 = *&v55[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
      if (v56 && (v57 = v55, v58 = v56, sub_24A5D7C5C(1, 1.0), v58, v57, v55 = *&v154[v3], (v59 = *&v55[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene]) != 0))
      {
        v60 = v55;
        v61 = v59;
        sub_24A5D695C(1, 0.0);
      }

      else
      {
        v60 = v55;
      }

      v60[OBJC_IVAR____TtC11FMFindingUI8FMPFView_useGreenBackdropBlurAndOpacity] = 0;
      sub_24A5F5B78(1);

      v89 = *&v154[v3];
      v90 = *&v89[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
      if (v90)
      {
        v91 = v89;
        v92 = v90;
        sub_24A5D6A2C(0, 0.0);

        v93 = *&v154[v3];
        v94 = *&v93[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
        if (v94)
        {
          v95 = v93;
          v96 = v94;
          sub_24A5D75E0(v153 & 1, 0.0);

          v97 = *&v154[v3];
          v98 = *&v97[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
          if (v98)
          {
            v99 = v162;
            v100 = v97;
            v101 = v98;
            sub_24A5D7498(0, v99);

            v102 = *&v154[v3];
            v103 = *&v102[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
            if (v103)
            {
              v104 = v161;
              v155 = v102;
              v86 = v103;
              v87 = v104;
              v88 = 0;
              goto LABEL_36;
            }
          }
        }
      }

      return;
    }

    v62 = v160[18];
    if ((*&v160[16] & 0xFE000000) != 0x6000000)
    {
      v105 = dbl_24A63A930[v151];
      v106 = *&v154[v3];
      v107 = *&v106[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
      if (v107)
      {
        sub_24A508CE4(v159, v157);
        v108 = v106;
        v109 = v107;
        sub_24A5D7C5C(1, 1.0);
      }

      else
      {
        v110 = *(v5 + 5);
        v157[4] = *(v5 + 4);
        v158[0] = v110;
        *(v158 + 13) = *(v5 + 93);
        v111 = *(v5 + 1);
        v157[0] = *v5;
        v157[1] = v111;
        v112 = *(v5 + 3);
        v157[2] = *(v5 + 2);
        v157[3] = v112;
        sub_24A50D63C(v157, v156, &qword_27EF4F670, &qword_24A634D70);
      }

      v113 = *&v154[v3];
      v114 = *&v113[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
      v115 = v113;
      if (v114)
      {
        v116 = v114;
        sub_24A5D695C(v153 & 1, 1.0);
      }

      v113[OBJC_IVAR____TtC11FMFindingUI8FMPFView_useGreenBackdropBlurAndOpacity] = 1;
      v117 = v105 * v152 / v20;
      sub_24A5F5B78(1);

      v118 = *&v154[v3];
      v119 = *&v118[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
      if (v119)
      {
        v120 = v118;
        v121 = v119;
        sub_24A5D6A2C(0, 1.0);

        v122 = *&v154[v3];
        v123 = *&v122[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
        if (v123)
        {
          v124 = v122;
          v125 = v123;
          sub_24A5D75E0(v153 & 1, 1.0);
        }
      }

      v126 = v117 / v42;
      if (v62 <= 1u)
      {
        v127 = 32.0 / Width;
        v128 = (32.0 / Width + v126) * 0.5;
        if (v62)
        {
          v145 = *&v154[v3];
          v146 = *&v145[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
          if (!v146)
          {
            return;
          }

          v147 = v145;
          v148 = v146;
          sub_24A5D7384(1, v128);

          v134 = *&v154[v3];
          v135 = *&v134[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
          if (!v135)
          {
            return;
          }

          v136 = v51 + (v45 + -0.5 + v45 + -0.5) * (v48 - v51);
        }

        else
        {
          v129 = *&v154[v3];
          v130 = *&v129[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
          if (!v130)
          {
            return;
          }

          v131 = v127 + (v128 - v127) * (v45 + v45);
          v132 = v129;
          v133 = v130;
          sub_24A5D7384(1, v131);

          v134 = *&v154[v3];
          v135 = *&v134[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
          if (!v135)
          {
            return;
          }

          v136 = (v45 + v45) * v51 + 0.0;
        }

        v149 = v134;
        v150 = v135;
        sub_24A5D7498(1, v136);

        return;
      }

      if (v62 - 2 >= 2)
      {
        sub_24A62F444();
        __break(1u);
      }

      else
      {
        v137 = *&v154[v3];
        v138 = *&v137[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
        if (v138 && (v139 = v137, v140 = v138, sub_24A5D7384(1, v126), v140, v139, v141 = *&v154[v3], (v142 = *&v141[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene]) != 0))
        {
          v143 = v141;
          v144 = v142;
          sub_24A5D7498(1, v48);

          sub_24A517ABC(v159);
        }

        else
        {
          sub_24A517ABC(v159);
        }
      }

      return;
    }
  }

  v63 = *&v154[v3];
  v64 = *&v63[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
  if (v64 && (v65 = v63, v66 = v64, sub_24A5D7C5C(1, 0.0), v66, v65, v63 = *&v154[v3], (v67 = *&v63[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene]) != 0))
  {
    v68 = v63;
    v69 = v67;
    sub_24A5D695C(1, 0.0);
  }

  else
  {
    v68 = v63;
  }

  v68[OBJC_IVAR____TtC11FMFindingUI8FMPFView_useGreenBackdropBlurAndOpacity] = 0;
  sub_24A5F5B78(1);

  v70 = *&v154[v3];
  v71 = *&v70[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
  if (v71)
  {
    v72 = v70;
    v73 = v71;
    sub_24A5D6A2C(0, 0.0);

    v74 = *&v154[v3];
    v75 = *&v74[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
    if (v75)
    {
      v76 = v74;
      v77 = v75;
      sub_24A5D75E0(v153 & 1, 0.0);

      v78 = *&v154[v3];
      v79 = *&v78[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
      if (v79)
      {
        v80 = v162;
        v81 = v78;
        v82 = v79;
        sub_24A5D7498(1, v80);

        v83 = *&v154[v3];
        v84 = *&v83[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
        if (v84)
        {
          v85 = v161;
          v155 = v83;
          v86 = v84;
          v87 = v85;
          v88 = 1;
LABEL_36:
          sub_24A5D7384(v88, v87);
        }
      }
    }
  }
}

void sub_24A5C816C()
{
  v1 = sub_24A62E214();
  v2 = *(v1 - 8);
  v120 = v1;
  v121 = v2;
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v116 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v115 = &v107 - v7;
  MEMORY[0x28223BE20](v6);
  v114 = &v107 - v8;
  v9 = type metadata accessor for FMFindingSessionState();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v119 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v107 - v13;
  v15 = *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session) + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  sub_24A5D0DA8(v15, v14, type metadata accessor for FMFindingSessionState);
  v16 = *(v14 + 1);
  v17 = *(v16 + 16);
  if (!v17)
  {
    v21 = *(v14 + 1);

    v18 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v117 = v15;
  v118 = v0;
  v18 = sub_24A5E4FC4(v17, 0);
  v19 = sub_24A5CE86C(&v123, (v18 + 4), v17, v16);
  v15 = *(&v124 + 1);
  v20 = v124;
  swift_bridgeObjectRetain_n();
  sub_24A55B6D4();
  if (v19 == v17)
  {
    v15 = v117;
    v0 = v118;
LABEL_5:
    *&v123 = v18;
    sub_24A5CDB08(&v123);

    v22 = v123;
    sub_24A5D0E10(v14, type metadata accessor for FMFindingSessionState);
    v23 = *(v22 + 16);
    if (v23 <= 1 || (v24 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state, swift_beginAccess(), v25 = type metadata accessor for FMFindingViewState(), *(v24 + *(v25 + 28)) != 1) || (v26 = v25, (v27 = sub_24A50CF2C(v22)) == 0))
    {
      v44 = [*(v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pickerViewContainer) subviews];
      sub_24A50D7EC(0, &qword_27EF513A8, 0x277D75D18);
      v45 = sub_24A62ED64();

      if (v45 >> 62)
      {
        goto LABEL_56;
      }

      for (i = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A62F464())
      {
        v47 = 0;
        while (1)
        {
          if ((v45 & 0xC000000000000001) != 0)
          {
            v48 = MEMORY[0x24C21ACB0](v47, v45);
          }

          else
          {
            if (v47 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_55;
            }

            v48 = *(v45 + 8 * v47 + 32);
          }

          v49 = v48;
          v50 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            break;
          }

          [v48 removeFromSuperview];

          ++v47;
          if (v50 == i)
          {
            goto LABEL_57;
          }
        }

        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        ;
      }

LABEL_57:

      v99 = v119;
      sub_24A5D0DA8(v15, v119, type metadata accessor for FMFindingSessionState);
      sub_24A50D63C(v99 + 24, &v123, &unk_27EF522E0, qword_24A637660);
      v100 = *(&v124 + 1);
      sub_24A50D6A4(&v123, &unk_27EF522E0, qword_24A637660);
      if (v100)
      {
        v101 = 0;
      }

      else
      {
        v101 = *(*(v99 + 16) + 16) > 1uLL;
      }

      sub_24A5D0E10(v99, type metadata accessor for FMFindingSessionState);
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v102 = sub_24A62E314();
      sub_24A506EB8(v102, qword_27EF5C118);

      v103 = sub_24A62E2F4();
      v104 = sub_24A62EF34();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 134218240;
        v106 = *(v22 + 16);

        *(v105 + 4) = v106;

        *(v105 + 12) = 1024;
        *(v105 + 14) = v101;
        _os_log_impl(&dword_24A503000, v103, v104, "FMFindingViewCtrl: Hiding picker view, findables count: %ld shouldShowPartPicker: %{BOOL}d", v105, 0x12u);
        MEMORY[0x24C21BBE0](v105, -1, -1);
      }

      else
      {
      }

      return;
    }

    v29 = v27;
    v113 = v26;
    v119 = v24;
    v20 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pickerView;
    v30 = *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pickerView);
    if (!v30)
    {
LABEL_43:
      v75 = v22;
      v76 = v0;
      v77 = v28;
      v78 = (*(v28 + 40))(v75, v29, v28);
      [v78 setTranslatesAutoresizingMaskIntoConstraints_];
      [v78 addTarget:v76 action:sel_handlePartPickerWithSender_ forControlEvents:4096];
      [*(v76 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pickerViewContainer) addArrangedSubview_];
      v79 = *v20;
      *v20 = v78;
      *(v20 + 8) = v77;
      v18 = v78;

      if (qword_27EF4E9A0 == -1)
      {
        goto LABEL_44;
      }

      goto LABEL_67;
    }

    v111 = v28;
    v112 = v27;
    v117 = v15;
    v118 = v0;
    v31 = *(v20 + 8);
    ObjectType = swift_getObjectType();
    v33 = *(v31 + 32);
    v108 = v30;
    v109 = ObjectType;
    v34 = v33(ObjectType, v31);
    v35 = *(v34 + 16);
    v36 = MEMORY[0x277D84F90];
    v110 = v20;
    if (v35)
    {
      v122 = MEMORY[0x277D84F90];
      sub_24A58D8A8(0, v35, 0);
      v107 = v34;
      v37 = v34 + 32;
      v38 = v122;
      v39 = v114;
      do
      {
        sub_24A508AE4(v37, &v123);
        v40 = *(&v124 + 1);
        v41 = v125;
        sub_24A50A204(&v123, *(&v124 + 1));
        (*(v41 + 16))(v40, v41);
        sub_24A508C54(&v123);
        v122 = v38;
        v43 = *(v38 + 16);
        v42 = *(v38 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_24A58D8A8(v42 > 1, v43 + 1, 1);
          v38 = v122;
        }

        *(v38 + 16) = v43 + 1;
        (*(v121 + 32))(v38 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v43, v39, v120);
        v37 += 40;
        --v35;
      }

      while (v35);

      v36 = MEMORY[0x277D84F90];
    }

    else
    {

      v38 = MEMORY[0x277D84F90];
    }

    v122 = v36;
    sub_24A58D8A8(0, v23, 0);
    v51 = v122;
    v52 = v22 + 32;
    v53 = v115;
    do
    {
      sub_24A508AE4(v52, &v123);
      v54 = *(&v124 + 1);
      v55 = v125;
      sub_24A50A204(&v123, *(&v124 + 1));
      (*(v55 + 16))(v54, v55);
      sub_24A508C54(&v123);
      v122 = v51;
      v57 = *(v51 + 16);
      v56 = *(v51 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_24A58D8A8(v56 > 1, v57 + 1, 1);
        v51 = v122;
      }

      *(v51 + 16) = v57 + 1;
      (*(v121 + 32))(v51 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v57, v53, v120);
      v52 += 40;
      --v23;
    }

    while (v23);
    v58 = sub_24A5C8E98(v38, v51);

    v29 = v112;
    v15 = v117;
    v20 = v110;
    if (v109 != v112)
    {

      v0 = v118;
      v28 = v111;
      goto LABEL_40;
    }

    v0 = v118;
    v59 = v111;
    if (v58)
    {
      v60 = v108;
      [v108 removeFromSuperview];
      v61 = *v20;
      *v20 = 0;
      *(v20 + 8) = 0;

      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v62 = sub_24A62E314();
      sub_24A506EB8(v62, qword_27EF5C118);
      v63 = v60;
      v64 = sub_24A62E2F4();
      v65 = sub_24A62EF64();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *&v123 = v67;
        *v66 = 136315394;
        v68 = sub_24A62F7B4();
        v70 = sub_24A509BA8(v68, v69, &v123);

        *(v66 + 4) = v70;
        *(v66 + 12) = 2080;
        v71 = sub_24A62F7B4();
        v73 = sub_24A509BA8(v71, v72, &v123);

        *(v66 + 14) = v73;
        v29 = v112;
        _os_log_impl(&dword_24A503000, v64, v65, "FMFindingViewCtrl: Replacing picker view, old: %s new: %s", v66, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C21BBE0](v67, -1, -1);
        MEMORY[0x24C21BBE0](v66, -1, -1);

        v28 = v111;
        v0 = v118;
        goto LABEL_40;
      }

      v0 = v118;
    }

    else
    {
    }

    v28 = v59;
LABEL_40:
    if (*v20)
    {

      v74 = *v20;
      if (!*v20)
      {
        return;
      }

LABEL_47:
      v88 = *(v20 + 8);
      v89 = *(v15 + 8);
      v90 = v120;
      v91 = v121;
      v92 = v116;
      (*(v121 + 16))(v116, v119 + *(v113 + 20), v120);
      if (*(v89 + 16))
      {
        v93 = v74;

        v94 = sub_24A515AC8(v92);
        if (v95)
        {
          sub_24A508AE4(*(v89 + 56) + 40 * v94, &v123);
          (*(v91 + 8))(v92, v90);

LABEL_53:
          v98 = swift_getObjectType();
          (*(v88 + 16))(&v123, v98, v88);

          return;
        }

        (*(v91 + 8))(v92, v90);
      }

      else
      {
        v96 = *(v91 + 8);
        v97 = v74;
        v96(v92, v90);
      }

      v125 = 0;
      v123 = 0u;
      v124 = 0u;
      goto LABEL_53;
    }

    goto LABEL_43;
  }

  __break(1u);
LABEL_67:
  swift_once();
LABEL_44:
  v80 = sub_24A62E314();
  sub_24A506EB8(v80, qword_27EF5C118);
  v81 = sub_24A62E2F4();
  v82 = sub_24A62EF64();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    *&v123 = v84;
    *v83 = 136315138;
    v85 = sub_24A62F7B4();
    v87 = sub_24A509BA8(v85, v86, &v123);

    *(v83 + 4) = v87;
    _os_log_impl(&dword_24A503000, v81, v82, "🧭 FMFindingViewCtrl: Installed new picker view: %s", v83, 0xCu);
    sub_24A508C54(v84);
    MEMORY[0x24C21BBE0](v84, -1, -1);
    MEMORY[0x24C21BBE0](v83, -1, -1);
  }

  v74 = *v20;
  if (*v20)
  {
    goto LABEL_47;
  }
}

uint64_t sub_24A5C8E98(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_24A5D0C64(&qword_27EF501E0, MEMORY[0x277CC95F0]);
    v22 = sub_24A62EBD4();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

void sub_24A5C90AC()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session) + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType);
  v2 = (v1 >> 13) & 3;
  v3 = v1 >> 8;
  v4 = (v1 >> 8) & 0xFFFFFF9F;
  if ((v1 & 0x8000) != 0)
  {
    v5 = (v1 >> 8) & 0x1F;
  }

  else
  {
    v5 = *(*(v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session) + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType);
  }

  if (v2 == 1)
  {
    v5 = v4;
  }

  if (!v2)
  {
    v5 = v3;
  }

  if (v5 == 2)
  {

    sub_24A59232C(1);
  }

  else
  {
    v6 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_isSoundPlaying;
    swift_beginAccess();
    v7 = *(v0 + v6);
    if (v7 == 2 || (v7 & 1) == 0)
    {
      v12 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
      swift_beginAccess();
      v13 = type metadata accessor for FMFindingViewState();
      *(v12 + *(v13 + 32) + 100);
      if ((*(v12 + *(v13 + 32) + 96) & 0xFE000000) == 0x4000000)
      {
        v14 = 0;
      }

      else
      {
        if ((*(v12 + *(v13 + 32) + 96) & 0xFE000000 | 0x1000000) == 0x7000000)
        {
          return;
        }

        v14 = 1;
      }

      sub_24A59232C(v14);
    }

    else
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v8 = sub_24A62E314();
      sub_24A506EB8(v8, qword_27EF5C118);
      v9 = sub_24A62E2F4();
      v10 = sub_24A62EF64();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_24A503000, v9, v10, "🧭 FMFindingViewCtrl: Ignoring play sound button state update since play sound action is in progress.", v11, 2u);
        MEMORY[0x24C21BBE0](v11, -1, -1);
      }
    }
  }
}

void sub_24A5C92A4()
{
  v1 = type metadata accessor for FMFindingViewState();
  v2 = *(v1 + 20);
  if (sub_24A62E1E4())
  {
    v3 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
    swift_beginAccess();
    v4 = (v3 + *(v1 + 32));
    *&v68[13] = *(v4 + 93);
    v5 = v4[5];
    v67 = v4[4];
    *v68 = v5;
    v6 = v4[1];
    v63 = *v4;
    v64 = v6;
    v7 = v4[3];
    v65 = v4[2];
    v66 = v7;
    if ((*&v68[16] & 0xFF000000) == 0x4000000)
    {
      v13 = v0;
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v14 = sub_24A62E314();
      sub_24A506EB8(v14, qword_27EF5C118);
      v15 = sub_24A62E2F4();
      v16 = sub_24A62EF24();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_24A503000, v15, v16, "FMFindingViewCtrl: Requesting scatter haptic.", v17, 2u);
        MEMORY[0x24C21BBE0](v17, -1, -1);
      }

      v18 = (v13 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
      swift_beginAccess();
      v19 = *sub_24A50A204(v18, v18[3]);
      sub_24A57F510();
      goto LABEL_17;
    }

    if ((*&v68[16] & 0xFF000000) == 0x5000000)
    {
      v8 = (v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
      swift_beginAccess();
      v9 = *sub_24A50A204(v8, v8[3]);
      sub_24A581E4C();
      return;
    }

    if ((*&v68[16] & 0xFE000000) != 0x6000000)
    {
      if (((*&v68[16] & 0xFFFF0000) >> 16) == 3)
      {
        v20 = (v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
        swift_beginAccess();
        v21 = *sub_24A50A204(v20, v20[3]);
        v74 = v64;
        v75 = v65;
        v73 = v63;
        *(v78 + 13) = *&v68[13];
        v77 = v67;
        v78[0] = *v68;
        v76 = v66;
        sub_24A50D63C(&v73, v71, &qword_27EF4F670, &qword_24A634D70);
        sub_24A57FDA8();
LABEL_17:
        sub_24A517ABC(&v63);
        return;
      }

      if (v68[19] == 2)
      {
        v24 = (v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
        swift_beginAccess();
        v25 = *sub_24A50A204(v24, v24[3]);
        v73 = v63;
        v74 = v64;
        *(v78 + 13) = *&v68[13];
        v77 = v67;
        v78[0] = *v68;
        v75 = v65;
        v76 = v66;
        sub_24A50D63C(&v73, v71, &qword_27EF4F670, &qword_24A634D70);
        v26 = v0;
        sub_24A581808();
      }

      else
      {
        if (v68[19] != 1)
        {
          v27 = v4[5];
          v77 = v4[4];
          v78[0] = v27;
          *(v78 + 13) = *(v4 + 93);
          v28 = v4[1];
          v73 = *v4;
          v74 = v28;
          v29 = v4[3];
          v75 = v4[2];
          v76 = v29;
          sub_24A50D63C(&v73, v71, &qword_27EF4F670, &qword_24A634D70);
          goto LABEL_31;
        }

        if (v68[18] == 1)
        {
          v30 = (v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
          swift_beginAccess();
          v31 = *sub_24A50A204(v30, v30[3]);
          v73 = v63;
          v74 = v64;
          *(v78 + 13) = *&v68[13];
          v77 = v67;
          v78[0] = *v68;
          v75 = v65;
          v76 = v66;
          sub_24A50D63C(&v73, v71, &qword_27EF4F670, &qword_24A634D70);
          v26 = v0;
          sub_24A581DDC();
        }

        else
        {
          if (!v68[18])
          {
            v22 = (v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
            swift_beginAccess();
            v23 = *sub_24A50A204(v22, v22[3]);
            memset(v60, 0, sizeof(v60));
            v73 = v63;
            v74 = v64;
            *(v78 + 13) = *&v68[13];
            v77 = v67;
            v78[0] = *v68;
            v75 = v65;
            v76 = v66;
            sub_24A50D63C(&v73, v71, &qword_27EF4F670, &qword_24A634D70);
            sub_24A57FE58(v60);
            sub_24A50D6A4(v60, &unk_27EF50780, &qword_24A638470);
            goto LABEL_31;
          }

          v32 = (v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
          swift_beginAccess();
          v33 = *sub_24A50A204(v32, v32[3]);
          v73 = v63;
          v74 = v64;
          *(v78 + 13) = *&v68[13];
          v77 = v67;
          v78[0] = *v68;
          v75 = v65;
          v76 = v66;
          sub_24A50D63C(&v73, v71, &qword_27EF4F670, &qword_24A634D70);
          v26 = v0;
          sub_24A581798();
        }
      }

      v0 = v26;
LABEL_31:
      v34 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController;
      swift_beginAccess();
      sub_24A508AE4(v0 + v34, v62);
      v35 = sub_24A50A204(v62, v62[3]);
      v36 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_configuration;
      v37 = v0;
      v38 = *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_configuration);
      v39 = (v3 + *(v1 + 32));
      *(v78 + 13) = *(v39 + 93);
      v40 = v39[5];
      v77 = v39[4];
      v78[0] = v40;
      v41 = v39[3];
      v75 = v39[2];
      v76 = v41;
      v42 = v39[1];
      v73 = *v39;
      v74 = v42;
      v43 = *(v38 + 16);

      if (v43)
      {
        sub_24A508CE4(&v73, v71);
        v44 = sub_24A515A5C(&v73);
        if (v45)
        {
          v46 = *(*(v38 + 56) + 40 * v44 + 24);
          sub_24A517ABC(&v73);

          goto LABEL_36;
        }
      }

      else
      {
        sub_24A508CE4(&v73, v71);
      }

      sub_24A577158(v69);

      sub_24A517ABC(&v73);
      v46 = v70;
LABEL_36:
      v47 = *(v37 + v36);
      v48 = v3 + *(v1 + 32);
      v49 = *(v48 + 80);
      v71[4] = *(v48 + 64);
      v72[0] = v49;
      *(v72 + 13) = *(v48 + 93);
      v50 = *(v48 + 48);
      v71[2] = *(v48 + 32);
      v71[3] = v50;
      v51 = *(v48 + 16);
      v71[0] = *v48;
      v71[1] = v51;
      v52 = *(v47 + 16);

      if (v52)
      {
        sub_24A508CE4(v71, v60);
        v53 = sub_24A515A5C(v71);
        if (v54)
        {
          v55 = *(*(v47 + 56) + 40 * v53 + 32);
          sub_24A517ABC(v71);

          v56 = v55;
LABEL_41:
          v57 = *v35;
          memset(v59, 0, sizeof(v59));
          sub_24A580A00(v59, v46, v56);
          sub_24A517ABC(&v63);
          sub_24A50D6A4(v59, &unk_27EF50780, &qword_24A638470);
          sub_24A508C54(v62);
          return;
        }
      }

      else
      {
        sub_24A508CE4(v71, v60);
      }

      sub_24A577158(v60);

      sub_24A517ABC(v71);
      v56 = v61;
      goto LABEL_41;
    }
  }

  else
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v10 = sub_24A62E314();
    sub_24A506EB8(v10, qword_27EF5C118);
    oslog = sub_24A62E2F4();
    v11 = sub_24A62EF24();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24A503000, oslog, v11, "FMFindingViewCtrl: Not playing haptics when switching between buds.", v12, 2u);
      MEMORY[0x24C21BBE0](v12, -1, -1);
    }
  }
}

void sub_24A5C9A78(uint64_t a1, __int16 *a2)
{
  v5 = type metadata accessor for FMFindingViewState();
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
  swift_beginAccess();
  v10 = v5[8];
  *(v9 + v10 + 100);
  v11 = *(v9 + v10 + 96) & 0xFF000000;
  if (v11 == 0x4000000)
  {
    v12 = (v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
    swift_beginAccess();
    v13 = *sub_24A50A204(v12, v12[3]);
    sub_24A581E4C();
    return;
  }

  if ((*(v9 + v10 + 96) & 0xFD000000) != 0x5000000 && v11 != 100663296)
  {
    v15 = *a2;
    v16 = (v15 >> 13) & 3;
    if (!v16 || v16 != 1 && (v15 & 0x80000000) != 0)
    {
      v17 = *(a2 + v5[11]);
      v93 = v2;
      if (v17)
      {
LABEL_11:
        *&v18 = COERCE_DOUBLE(sub_24A627670());
        if (v20)
        {
          return;
        }

        v21 = *&v18;
        sub_24A6279B4(v19);
        if (v22)
        {
          return;
        }

        v23 = v21;
        v24 = sub_24A62715C();
        if (v24 <= 1)
        {
          v25 = v93;
        }

        else
        {
          if (v24 == 2)
          {
            v26 = "compassReachMode";
            v25 = v93;
          }

          else
          {
            v25 = v93;
            if (v24 != 3)
            {
              if (*(a1 + v5[11]) == 1 || (v53 = v5[14], (*(a1 + v53) & 1) != 0))
              {
                v52 = 0;
                v54 = 0;
                v55 = 0;
                if (v17)
                {
                  goto LABEL_91;
                }

                goto LABEL_74;
              }

              if (v17)
              {
                v55 = 0;
                v52 = 0;
                goto LABEL_81;
              }

              v52 = 0;
LABEL_88:
              v55 = *(a2 + v53) ^ 1;
              goto LABEL_89;
            }

            v26 = "R_CANT_RECONNECT_ERROR";
          }

          if (0x800000024A63DD40 == (v26 | 0x8000000000000000))
          {

            if (*(a1 + v5[11]) & 1) != 0 || (v51 = v5[14], (*(a1 + v51)))
            {
              v52 = 1;
              if ((v17 & 1) == 0)
              {
                goto LABEL_74;
              }

              goto LABEL_70;
            }

            if (v17)
            {
              v55 = 0;
              v54 = 0;
              v52 = 1;
              goto LABEL_82;
            }

            v55 = *(a2 + v51) ^ 1;
            v52 = 1;
LABEL_89:
            v54 = v55;
            if (v23 <= 0.0)
            {
              goto LABEL_91;
            }

LABEL_90:
            v54 = 0;
            goto LABEL_91;
          }
        }

        v52 = sub_24A62F634();

        if (*(a1 + v5[11]) & 1) != 0 || (v53 = v5[14], (*(a1 + v53)))
        {
          if (v17)
          {
LABEL_70:
            v54 = 0;
            v55 = 0;
LABEL_91:
            v56 = (v25 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
            swift_beginAccess();
            v57 = sub_24A50A204(v56, v56[3]);
            v58 = *v57;
            v59 = *v57 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod;
            *v59 = 0;
            *(v59 + 8) = 1;
            v95 = 0u;
            *v96 = 0u;
            v60 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticContext;
            swift_beginAccess();
            sub_24A582118(&v95, v58 + v60);
            swift_endAccess();
            if (v52)
            {
              *(v58 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic) = 1;
            }

            if (1.0 - v23 <= 2.22044605e-16)
            {
              v64 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem;
              if (*(v58 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem))
              {
                v65 = *(v58 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem);

                sub_24A62EB34();

                v66 = *(v58 + v64);
              }

              *(v58 + v64) = 0;

              *(v58 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic) = 0;
            }

            else
            {
              v61 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem;
              if (*(v58 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem))
              {
                v62 = *(v58 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem);

                sub_24A62EB34();

                v63 = *(v58 + v61);
              }

              *(v58 + v61) = 0;

              v67 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic;
              if ((*(v58 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic) & 1) == 0)
              {
                sub_24A57F864(1);
                *(v58 + v67) = 1;
              }

              if (v55)
              {
                sub_24A57FC4C();
                v68 = v23;
                sub_24A57CC58(v54 & 1, v68);
              }
            }

            return;
          }

LABEL_74:
          v54 = *(a2 + v5[14]) ^ 1;
          v55 = v54;
          goto LABEL_91;
        }

        if (v17)
        {
          v55 = 0;
LABEL_81:
          v54 = 0;
LABEL_82:
          if (v23 <= 0.0)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        }

        goto LABEL_88;
      }

      v27 = a2 + v10;
      v28 = *(a2 + v10 + 96) | (*(a2 + v10 + 100) << 32);
      if ((v28 & 0xFC000000) != 0x4000000 && (v28 & 0xFF0000) == 0x40000)
      {
        v29 = v27[40];
        v30 = v27[56];
        v31 = v27[57];
        if (*(v27 + 2) == 1)
        {
          v95 = *v27;
          *v96 = 1;
          *&v96[8] = *(v27 + 24);
          v97 = v29;
          *v98 = *(v27 + 41);
          *&v98[7] = *(v27 + 6);
          v99 = v30;
          v100 = v31;
          *&v102[14] = *(v27 + 11);
          *v102 = *(v27 + 74);
          v101 = *(v27 + 58);
          v104 = BYTE4(v28);
          v103 = v28;
          sub_24A50D63C(&v95, v94, &qword_27EF4F670, &qword_24A634D70);
          goto LABEL_21;
        }

        if (v27[40])
        {
          if (v27[56])
          {
            if (v27[57])
            {
              goto LABEL_11;
            }

            v35 = sub_24A62715C();
            v92[1] = "compassReachMode";
            if (v35 <= 1)
            {
              v36 = v93;
            }

            else
            {
              if (v35 == 2)
              {
                v37 = "compassReachMode";
                v36 = v93;
              }

              else
              {
                v36 = v93;
                if (v35 != 3)
                {
LABEL_111:
                  v71 = sub_24A62715C();
                  if (v71 > 1)
                  {
                    if (v71 == 2)
                    {
                      v72 = v93;
                    }

                    else
                    {
                      v72 = v93;
                      if (v71 != 3)
                      {
                        goto LABEL_129;
                      }
                    }

LABEL_128:
                    v76 = sub_24A62F634();

                    if ((v76 & 1) == 0)
                    {
LABEL_129:
                      sub_24A5D0DA8(v9, v8, type metadata accessor for FMFindingViewState);
                      v77 = sub_24A6272B0();
                      v78 = v93;
                      v79 = *&v77;
                      v81 = v80;
                      v83 = v82;
                      sub_24A5D0E10(v8, type metadata accessor for FMFindingViewState);
                      if ((v83 & 1) == 0)
                      {
                        v84 = v79;
                        v85 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController;
                        swift_beginAccess();
                        sub_24A508AE4(v78 + v85, &v95);
                        v86 = sub_24A50A204(&v95, *&v96[8]);
                        v94[3] = v5;
                        v87 = sub_24A5292E8(v94);
                        sub_24A5D0DA8(v9, v87, type metadata accessor for FMFindingViewState);
                        v88 = *v86;
                        sub_24A580A00(v94, v84, v81);
                        sub_24A50D6A4(v94, &unk_27EF50780, &qword_24A638470);
                        sub_24A508C54(&v95);
                      }

                      return;
                    }

LABEL_133:
                    v90 = (v72 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
                    swift_beginAccess();
                    v91 = *sub_24A50A204(v90, v90[3]);
                    sub_24A57F4E4();
                    return;
                  }

                  if (v71)
                  {
                    v72 = v93;
                    goto LABEL_128;
                  }

LABEL_125:

                  v72 = v93;
                  goto LABEL_133;
                }

                v37 = "R_CANT_RECONNECT_ERROR";
              }

              if (0x800000024A63DD40 == (v37 | 0x8000000000000000))
              {

LABEL_110:
                v70 = (v36 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
LABEL_117:
                swift_beginAccess();
                v74 = *sub_24A50A204(v70, v70[3]);
                v95 = 0u;
                *v96 = 0u;
                sub_24A580B94(&v95);
LABEL_54:
                sub_24A50D6A4(&v95, &unk_27EF50780, &qword_24A638470);
                return;
              }
            }

            v69 = sub_24A62F634();

            if (v69)
            {
              goto LABEL_110;
            }

            goto LABEL_111;
          }

          if (v27[57])
          {
            goto LABEL_11;
          }

          v48 = sub_24A62715C();
          if (v48 <= 1)
          {
            v49 = v93;
          }

          else
          {
            if (v48 == 2)
            {
              v50 = "compassReachMode";
              v49 = v93;
            }

            else
            {
              v49 = v93;
              if (v48 != 3)
              {
                goto LABEL_118;
              }

              v50 = "R_CANT_RECONNECT_ERROR";
            }

            if (0x800000024A63DD40 == (v50 | 0x8000000000000000))
            {

LABEL_116:
              v70 = (v49 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
              goto LABEL_117;
            }
          }

          v73 = sub_24A62F634();

          if (v73)
          {
            goto LABEL_116;
          }

LABEL_118:
          v75 = sub_24A62715C();
          if (v75 <= 1)
          {
            if (!v75)
            {
              goto LABEL_125;
            }
          }

          else if (v75 != 2)
          {
            v72 = v93;
            if (v75 != 3)
            {
              return;
            }

LABEL_132:
            v89 = sub_24A62F634();

            if ((v89 & 1) == 0)
            {
              return;
            }

            goto LABEL_133;
          }

          v72 = v93;
          goto LABEL_132;
        }

        if (v27[57])
        {
          goto LABEL_11;
        }
      }

LABEL_21:
      v32 = sub_24A62715C();
      if (v32 <= 1)
      {
        v33 = v93;
      }

      else
      {
        if (v32 == 2)
        {
          v34 = "compassReachMode";
          v33 = v93;
        }

        else
        {
          v33 = v93;
          if (v32 != 3)
          {
            goto LABEL_38;
          }

          v34 = "R_CANT_RECONNECT_ERROR";
        }

        if (0x800000024A63DD40 == (v34 | 0x8000000000000000))
        {

LABEL_37:
          v39 = (v33 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
          swift_beginAccess();
          v40 = *sub_24A50A204(v39, v39[3]);
          v95 = 0u;
          *v96 = 0u;
          sub_24A580B94(&v95);
          v41 = v93;
          sub_24A50D6A4(&v95, &unk_27EF50780, &qword_24A638470);
LABEL_52:
          if ((*(a1 + v5[8] + 96) & 0xFE000000 | 0x1000000) != 0x5000000)
          {
            return;
          }

          v46 = (v41 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
          swift_beginAccess();
          v47 = *sub_24A50A204(v46, v46[3]);
          v95 = 0u;
          *v96 = 0u;
          sub_24A57FE58(&v95);
          goto LABEL_54;
        }
      }

      v38 = sub_24A62F634();

      if (v38)
      {
        goto LABEL_37;
      }

LABEL_38:
      v42 = sub_24A62715C();
      if (v42 <= 1)
      {
        if (!v42)
        {

          goto LABEL_51;
        }
      }

      else if (v42 != 2)
      {
        v41 = v93;
        if (v42 != 3)
        {
LABEL_49:
          if (*(a1 + v5[8] + 99) << 24 == 83886080)
          {
            goto LABEL_52;
          }

          v44 = (v41 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
          swift_beginAccess();
          v45 = *sub_24A50A204(v44, v44[3]);
          sub_24A57F510();
LABEL_51:
          v41 = v93;
          goto LABEL_52;
        }

LABEL_48:
        v43 = sub_24A62F634();

        if (v43)
        {
          goto LABEL_52;
        }

        goto LABEL_49;
      }

      v41 = v93;
      goto LABEL_48;
    }
  }
}

void sub_24A5CA748(uint64_t a1, uint64_t a2)
{
  v5 = sub_24A508FA4(&qword_27EF4FA80, &qword_24A634D40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v35 - v7;
  v9 = type metadata accessor for FMFindingViewState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
  swift_beginAccess();
  v15 = *(v2 + v14);
  v16 = (v15 >> 13) & 3;
  if (v16)
  {
    if (v16 == 1)
    {
      v17 = sub_24A62DF44();
      v36 = v17;
      v37 = sub_24A5D0C64(&qword_27EF4FE90, MEMORY[0x277D08A28]);
      v18 = sub_24A5292E8(v35);
      (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D089D0], v17);
      LOBYTE(v17) = MEMORY[0x24C219850](v35);
      sub_24A508C54(v35);
      if (v17)
      {
        return;
      }

      goto LABEL_7;
    }

    if ((v15 & 0x8000) == 0)
    {
      if ((v15 & 0x100) != 0)
      {
        return;
      }

LABEL_7:
      if (a1)
      {
        v19 = *(a1 + OBJC_IVAR____TtC11FMFindingUI17FMR1HapticPattern_isTap);
        if (v19 != 2 && (v19 & 1) != 0)
        {
          v20 = v2;
          if (qword_27EF4E9A0 != -1)
          {
            swift_once();
          }

          v21 = sub_24A62E314();
          sub_24A506EB8(v21, qword_27EF5C118);
          v22 = sub_24A62E2F4();
          v23 = sub_24A62EF24();
          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            *v24 = 0;
            _os_log_impl(&dword_24A503000, v22, v23, "FMFindingViewCtrl: Pulsing BT node.", v24, 2u);
            MEMORY[0x24C21BBE0](v24, -1, -1);
          }

          v25 = *(v20 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView);
          v26 = *&v25[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
          if (v26)
          {
            v27 = v25;
            v28 = v26;
            sub_24A5D6DB0();
          }
        }
      }

      return;
    }
  }

  sub_24A50D63C(a2, v35, &unk_27EF50780, &qword_24A638470);
  if (!v36)
  {
    sub_24A50D6A4(v35, &unk_27EF50780, &qword_24A638470);
    (*(v10 + 56))(v8, 1, 1, v9);
    goto LABEL_23;
  }

  v29 = swift_dynamicCast();
  (*(v10 + 56))(v8, v29 ^ 1u, 1, v9);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
LABEL_23:
    sub_24A50D6A4(v8, &qword_27EF4FA80, &qword_24A634D40);
    return;
  }

  sub_24A5D1350(v8, v13, type metadata accessor for FMFindingViewState);
  sub_24A6272B0();
  if ((v30 & 1) == 0)
  {
    v31 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView);
    v32 = *&v31[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
    if (v32)
    {
      v33 = v31;
      v34 = v32;
      sub_24A5D6AD4(1, 0);
    }
  }

  sub_24A5D0E10(v13, type metadata accessor for FMFindingViewState);
}

uint64_t sub_24A5CABB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t))
{
  result = sub_24A5D15F0(a3, a4);
  *(a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertIsShown) = 0;
  if (a5)
  {
    return a5(result);
  }

  return result;
}

uint64_t sub_24A5CAC08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  *(a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertIsShown) = 0;
  if (a3)
  {
    return a3();
  }

  return result;
}

void sub_24A5CAC44(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A62E214();
  v176 = *(v4 - 8);
  v177 = v4;
  v5 = *(v176 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v173 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v174 = &v168 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v172 = &v168 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v168 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v171 = &v168 - v16;
  MEMORY[0x28223BE20](v15);
  v175 = &v168 - v17;
  v18 = type metadata accessor for FMFindingSession.Error(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v178 = (&v168 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v23 = &v168 - v22;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v24 = sub_24A62E314();
  sub_24A506EB8(v24, qword_27EF5C118);
  sub_24A5D0DA8(a1, v23, type metadata accessor for FMFindingSession.Error);
  v25 = sub_24A62E2F4();
  v26 = sub_24A62EF64();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v170 = v1;
    v28 = v27;
    v29 = swift_slowAlloc();
    aBlock = v29;
    *v28 = 136315138;
    sub_24A5D0C64(&qword_27EF4F668, type metadata accessor for FMFindingSession.Error);
    v30 = sub_24A62F6A4();
    v169 = a1;
    v31 = v14;
    v33 = v32;
    sub_24A5D0E10(v23, type metadata accessor for FMFindingSession.Error);
    v34 = sub_24A509BA8(v30, v33, &aBlock);
    v14 = v31;
    a1 = v169;

    *(v28 + 4) = v34;
    _os_log_impl(&dword_24A503000, v25, v26, "🧭 FMFindingViewCtrl: Encountered error: %s.", v28, 0xCu);
    sub_24A508C54(v29);
    MEMORY[0x24C21BBE0](v29, -1, -1);
    v35 = v28;
    v2 = v170;
    MEMORY[0x24C21BBE0](v35, -1, -1);
  }

  else
  {

    sub_24A5D0E10(v23, type metadata accessor for FMFindingSession.Error);
  }

  v36 = a1;
  v37 = v178;
  sub_24A5D0DA8(v36, v178, type metadata accessor for FMFindingSession.Error);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        return;
      }

      v75 = sub_24A62E2F4();
      v76 = sub_24A62EF64();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_24A503000, v75, v76, "🧭 FMFindingViewCtrl: Showing low battery alert.", v77, 2u);
        MEMORY[0x24C21BBE0](v77, -1, -1);
      }

      sub_24A5D2200(0xD000000000000014, 0x800000024A63DCF0);
      sub_24A5D2200(0xD000000000000026, 0x800000024A63DD10);
      v78 = swift_allocObject();
      *(v78 + 16) = v2;
      v79 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertCount];
      if (v79 < 3)
      {
        *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertCount] = v79 + 1;
        v80 = v2;
        v81 = sub_24A62EBE4();

        v82 = sub_24A62EBE4();

        v69 = [objc_opt_self() alertControllerWithTitle:v81 message:v82 preferredStyle:1];

        sub_24A5D2200(0xD00000000000001ELL, 0x800000024A63DBD0);
        v83 = swift_allocObject();
        v83[2] = v80;
        v83[3] = sub_24A5D0D2C;
        v83[4] = v78;
        v71 = v80;

        v72 = sub_24A62EBE4();

        v184 = sub_24A5D1CD0;
        v185 = v83;
        aBlock = MEMORY[0x277D85DD0];
        v181 = 1107296256;
        v182 = sub_24A5BE9EC;
        v183 = &unk_285DA8B18;
        v73 = _Block_copy(&aBlock);

        v74 = [objc_opt_self() actionWithTitle:v72 style:0 handler:v73];
        goto LABEL_36;
      }

      v145 = v2;

      v150 = swift_allocObject();
      *(v150 + 16) = v145;
      v184 = sub_24A5D1C80;
      v185 = v150;
      aBlock = MEMORY[0x277D85DD0];
      v181 = 1107296256;
      v147 = &unk_285DA8AC8;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v99 = sub_24A62E2F4();
      v100 = sub_24A62EF64();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        *v101 = 0;
        _os_log_impl(&dword_24A503000, v99, v100, "🧭 FMFindingViewCtrl: Showing switch to precise finding required error alert.", v101, 2u);
        MEMORY[0x24C21BBE0](v101, -1, -1);
      }

      sub_24A5D2200(0xD00000000000002ALL, 0x800000024A63DC90);
      sub_24A5D2200(0xD00000000000002CLL, 0x800000024A63DCC0);
      v102 = swift_allocObject();
      *(v102 + 16) = v2;
      v103 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertCount];
      if (v103 < 3)
      {
        *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertCount] = v103 + 1;
        v104 = v2;
        v105 = sub_24A62EBE4();

        v106 = sub_24A62EBE4();

        v69 = [objc_opt_self() alertControllerWithTitle:v105 message:v106 preferredStyle:1];

        sub_24A5D2200(0xD00000000000001ELL, 0x800000024A63DBD0);
        v107 = swift_allocObject();
        v107[2] = v104;
        v107[3] = sub_24A5D0CEC;
        v107[4] = v102;
        v71 = v104;

        v72 = sub_24A62EBE4();

        v184 = sub_24A5D1CD0;
        v185 = v107;
        aBlock = MEMORY[0x277D85DD0];
        v181 = 1107296256;
        v182 = sub_24A5BE9EC;
        v183 = &unk_285DA8A50;
        v73 = _Block_copy(&aBlock);

        v74 = [objc_opt_self() actionWithTitle:v72 style:0 handler:v73];
        goto LABEL_36;
      }

      v145 = v2;

      v146 = swift_allocObject();
      *(v146 + 16) = v145;
      v184 = sub_24A5D1C80;
      v185 = v146;
      aBlock = MEMORY[0x277D85DD0];
      v181 = 1107296256;
      v147 = &unk_285DA8A00;
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v61 = sub_24A62E2F4();
      v62 = sub_24A62EF64();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_24A503000, v61, v62, "🧭 FMFindingViewCtrl: Showing person no longer friend.", v63, 2u);
        MEMORY[0x24C21BBE0](v63, -1, -1);
      }

      sub_24A5D22F4(0xD000000000000019, 0x800000024A63DC10);
      sub_24A5D22F4(0xD00000000000001BLL, 0x800000024A63DC30);
      v64 = swift_allocObject();
      *(v64 + 16) = v2;
      v65 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertCount];
      if (v65 < 3)
      {
        *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertCount] = v65 + 1;
        v66 = v2;
        v67 = sub_24A62EBE4();

        v68 = sub_24A62EBE4();

        v69 = [objc_opt_self() alertControllerWithTitle:v67 message:v68 preferredStyle:1];

        sub_24A5D2200(0xD00000000000001ELL, 0x800000024A63DBD0);
        v70 = swift_allocObject();
        v70[2] = v66;
        v70[3] = sub_24A5D0C24;
        v70[4] = v64;
        v71 = v66;

        v72 = sub_24A62EBE4();

        v184 = sub_24A5D1CD0;
        v185 = v70;
        aBlock = MEMORY[0x277D85DD0];
        v181 = 1107296256;
        v182 = sub_24A5BE9EC;
        v183 = &unk_285DA88C0;
        v73 = _Block_copy(&aBlock);

        v74 = [objc_opt_self() actionWithTitle:v72 style:0 handler:v73];
LABEL_36:
        v124 = v74;
        _Block_release(v73);

        [v69 addAction_];
        v71[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertIsShown] = 1;
        [v71 presentViewController:v69 animated:1 completion:0];

LABEL_48:

        return;
      }

      v145 = v2;

      v148 = swift_allocObject();
      *(v148 + 16) = v145;
      v184 = sub_24A5D1C80;
      v185 = v148;
      aBlock = MEMORY[0x277D85DD0];
      v181 = 1107296256;
      v147 = &unk_285DA8870;
    }

    else
    {
      sub_24A5D2200(0xD00000000000001ELL, 0x800000024A63DB80);
      sub_24A5D2200(0xD000000000000020, 0x800000024A63DBA0);
      v118 = swift_allocObject();
      *(v118 + 16) = v2;
      v119 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertCount];
      if (v119 < 3)
      {
        *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertCount] = v119 + 1;
        v120 = v2;
        v121 = sub_24A62EBE4();

        v122 = sub_24A62EBE4();

        v69 = [objc_opt_self() alertControllerWithTitle:v121 message:v122 preferredStyle:1];

        sub_24A5D2200(0xD00000000000001ELL, 0x800000024A63DBD0);
        v123 = swift_allocObject();
        v123[2] = v120;
        v123[3] = sub_24A5D0BDC;
        v123[4] = v118;
        v71 = v120;

        v72 = sub_24A62EBE4();

        v184 = sub_24A5D0C20;
        v185 = v123;
        aBlock = MEMORY[0x277D85DD0];
        v181 = 1107296256;
        v182 = sub_24A5BE9EC;
        v183 = &unk_285DA87F8;
        v73 = _Block_copy(&aBlock);

        v74 = [objc_opt_self() actionWithTitle:v72 style:0 handler:v73];
        goto LABEL_36;
      }

      v145 = v2;

      v149 = swift_allocObject();
      *(v149 + 16) = v145;
      v184 = sub_24A5D1C80;
      v185 = v149;
      aBlock = MEMORY[0x277D85DD0];
      v181 = 1107296256;
      v147 = &unk_285DA87A8;
    }

    v182 = sub_24A5A8458;
    v183 = v147;
    v151 = _Block_copy(&aBlock);
    v152 = v145;

    [v152 dismissViewControllerAnimated:1 completion:v151];
    _Block_release(v151);

    goto LABEL_48;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v125 = v2;
      v126 = v175;
      v127 = v176;
      v128 = v177;
      (*(v176 + 32))(v175, v37, v177);
      v129 = v171;
      (*(v127 + 16))(v171, v126, v128);
      v130 = sub_24A62E2F4();
      v131 = sub_24A62EF64();
      if (os_log_type_enabled(v130, v131))
      {
        v132 = v129;
        v133 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        aBlock = v134;
        *v133 = 136315138;
        sub_24A5D0C64(&qword_27EF4F660, MEMORY[0x277CC95F0]);
        v135 = v177;
        v136 = sub_24A62F614();
        v138 = v137;
        v139 = v132;
        v140 = *(v176 + 8);
        v140(v139, v135);
        v141 = sub_24A509BA8(v136, v138, &aBlock);

        *(v133 + 4) = v141;
        _os_log_impl(&dword_24A503000, v130, v131, "🧭 FMFindingViewCtrl: Showing item in use alert for %s.", v133, 0xCu);
        sub_24A508C54(v134);
        MEMORY[0x24C21BBE0](v134, -1, -1);
        MEMORY[0x24C21BBE0](v133, -1, -1);
      }

      else
      {

        v140 = *(v176 + 8);
        v140(v129, v177);
      }

      sub_24A5D2200(0xD00000000000001BLL, 0x800000024A641B00);
      sub_24A5D2200(0xD00000000000001DLL, 0x800000024A641B20);
      v153 = swift_allocObject();
      *(v153 + 16) = v125;
      v154 = *&v125[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertCount];
      if (v154 >= 3)
      {
        v164 = v125;

        v165 = swift_allocObject();
        *(v165 + 16) = v164;
        v184 = sub_24A5D1C80;
        v185 = v165;
        aBlock = MEMORY[0x277D85DD0];
        v181 = 1107296256;
        v182 = sub_24A5A8458;
        v183 = &unk_285DA8938;
        v166 = _Block_copy(&aBlock);
        v167 = v164;

        [v167 dismissViewControllerAnimated:1 completion:v166];
        _Block_release(v166);
      }

      else
      {
        *&v125[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertCount] = v154 + 1;
        v155 = v125;
        v156 = sub_24A62EBE4();

        v157 = sub_24A62EBE4();

        v158 = [objc_opt_self() alertControllerWithTitle:v156 message:v157 preferredStyle:1];

        sub_24A5D2200(0xD00000000000001ELL, 0x800000024A63DBD0);
        v159 = swift_allocObject();
        v159[2] = v155;
        v159[3] = sub_24A5D0CAC;
        v159[4] = v153;
        v160 = v155;

        v161 = sub_24A62EBE4();

        v184 = sub_24A5D1CD0;
        v185 = v159;
        aBlock = MEMORY[0x277D85DD0];
        v181 = 1107296256;
        v182 = sub_24A5BE9EC;
        v183 = &unk_285DA8988;
        v162 = _Block_copy(&aBlock);

        v163 = [objc_opt_self() actionWithTitle:v161 style:0 handler:v162];
        _Block_release(v162);

        [v158 addAction_];
        v160[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertIsShown] = 1;
        [v160 presentViewController:v158 animated:1 completion:0];
      }

      v140(v175, v177);
    }

    else
    {
      sub_24A5D0E10(v37, type metadata accessor for FMFindingSession.Error);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v85 = v176;
      v84 = v177;
      (*(v176 + 32))(v14, v37, v177);
      v86 = v172;
      (*(v85 + 16))(v172, v14, v84);
      v87 = v14;
      v88 = sub_24A62E2F4();
      v89 = sub_24A62EF64();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        aBlock = v91;
        *v90 = 136315138;
        sub_24A5D0C64(&qword_27EF4F660, MEMORY[0x277CC95F0]);
        v92 = v177;
        v93 = sub_24A62F614();
        v95 = v94;
        v96 = v86;
        v97 = *(v176 + 8);
        v97(v96, v92);
        v98 = sub_24A509BA8(v93, v95, &aBlock);

        *(v90 + 4) = v98;
        _os_log_impl(&dword_24A503000, v88, v89, "🧭 FMFindingViewCtrl: localizer state error for %s.", v90, 0xCu);
        sub_24A508C54(v91);
        MEMORY[0x24C21BBE0](v91, -1, -1);
        MEMORY[0x24C21BBE0](v90, -1, -1);

        v97(v87, v92);
        return;
      }

      v142 = v177;
      v143 = *(v176 + 8);
      v143(v86, v177);
      v144 = v14;
      goto LABEL_42;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v39 = *(v37 + *(sub_24A508FA4(&qword_27EF4F658, &unk_24A633E10) + 48));
      v40 = v176;
      v41 = v174;
      v42 = v37;
      v43 = v177;
      (*(v176 + 32))(v174, v42, v177);
      v44 = v173;
      (*(v40 + 16))(v173, v41, v43);
      v45 = v39;
      v46 = sub_24A62E2F4();
      v47 = sub_24A62EF64();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        aBlock = v49;
        *v48 = 136315394;
        sub_24A5D0C64(&qword_27EF4F660, MEMORY[0x277CC95F0]);
        v50 = v177;
        v51 = sub_24A62F614();
        v52 = v44;
        v54 = v53;
        v55 = *(v176 + 8);
        v55(v52, v50);
        v56 = sub_24A509BA8(v51, v54, &aBlock);

        *(v48 + 4) = v56;
        *(v48 + 12) = 2080;
        v179 = v39;
        v57 = v39;
        sub_24A508FA4(&qword_27EF4F9B0, qword_24A6389A0);
        v58 = sub_24A62EC44();
        v60 = sub_24A509BA8(v58, v59, &aBlock);

        *(v48 + 14) = v60;
        _os_log_impl(&dword_24A503000, v46, v47, "🧭 FMFindingViewCtrl: precision finding config error for %s: %s.", v48, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C21BBE0](v49, -1, -1);
        MEMORY[0x24C21BBE0](v48, -1, -1);

        v55(v174, v50);
        return;
      }

      v142 = v177;
      v143 = *(v176 + 8);
      v143(v44, v177);
      v144 = v41;
LABEL_42:
      v143(v144, v142);
      return;
    }

    v108 = *v37;
    v109 = *v37;
    v110 = sub_24A62E2F4();
    v111 = sub_24A62EF64();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v179 = v108;
      aBlock = v113;
      *v112 = 136315138;
      v114 = v108;
      sub_24A508FA4(&qword_27EF4F9B0, qword_24A6389A0);
      v115 = sub_24A62EC44();
      v117 = sub_24A509BA8(v115, v116, &aBlock);

      *(v112 + 4) = v117;
      _os_log_impl(&dword_24A503000, v110, v111, "🧭 FMFindingViewCtrl: precision finding AR error: %s.", v112, 0xCu);
      sub_24A508C54(v113);
      MEMORY[0x24C21BBE0](v113, -1, -1);
      MEMORY[0x24C21BBE0](v112, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_24A5CC720(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_sleepPreventer);
  sub_24A598DB4();
  v3 = a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_dismissedHandler;
  result = swift_beginAccess();
  v5 = *v3;
  if (*v3)
  {
    v6 = *(v3 + 8);

    v5(v7);
    return sub_24A50D354(v5);
  }

  return result;
}

void sub_24A5CC7A8(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v4 = sub_24A62E314();
      sub_24A506EB8(v4, qword_27EF5C118);
      v5 = sub_24A62E2F4();
      v6 = sub_24A62EF64();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_24A503000, v5, v6, "🧭 FMFindingViewCtrl: Playing ranging sound command sent", v7, 2u);
        MEMORY[0x24C21BBE0](v7, -1, -1);
      }

      v8 = *&v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_rightActionButton];
      sub_24A62B1A8(0x4008000000000000, 0);
    }

    else
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v9 = sub_24A62E314();
      sub_24A506EB8(v9, qword_27EF5C118);
      v10 = sub_24A62E2F4();
      v11 = sub_24A62EF64();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_24A503000, v10, v11, "🧭 FMFindingViewCtrl: Playing ranging sound command failed", v12, 2u);
        MEMORY[0x24C21BBE0](v12, -1, -1);
      }

      sub_24A59232C(1);
    }
  }
}

void sub_24A5CC998(char a1)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_isSoundPlaying;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 == 2 || (v4 & 1) == 0)
  {
    if (a1 != 2 && (a1 & 1) != 0)
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v9 = sub_24A62E314();
      sub_24A506EB8(v9, qword_27EF5C118);
      v10 = sub_24A62E2F4();
      v11 = sub_24A62EF64();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_24A503000, v10, v11, "🧭 FMFindingViewCtrl: Done playing ranging sound", v12, 2u);
        MEMORY[0x24C21BBE0](v12, -1, -1);
      }

      sub_24A59232C(1);
    }
  }

  else if (a1 == 2 || (a1 & 1) == 0)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v5 = sub_24A62E314();
    sub_24A506EB8(v5, qword_27EF5C118);
    v6 = sub_24A62E2F4();
    v7 = sub_24A62EF64();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24A503000, v6, v7, "🧭 FMFindingViewCtrl: Now playing ranging sound", v8, 2u);
      MEMORY[0x24C21BBE0](v8, -1, -1);
    }
  }
}

uint64_t sub_24A5CCB90()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_isSoundPlaying;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_24A5CCBD4(char a1)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_isSoundPlaying;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_24A5CC998(v4);
}

void (*sub_24A5CCC2C(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_isSoundPlaying;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_24A5CCCC0;
}

void sub_24A5CCCC0(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  sub_24A5CC998(v5);

  free(v1);
}

uint64_t sub_24A5CCD08@<X0>(void *a1@<X0>, uint64_t (**a2)(uint64_t *a1, uint64_t *a2)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_playSoundHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A517E5C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A5173CC(v4);
}

uint64_t sub_24A5CCDA8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A517E50;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_playSoundHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24A5173CC(v3);
  return sub_24A50D354(v8);
}

uint64_t sub_24A5CCF10@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_willAppearHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A59502C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A5173CC(v4);
}

uint64_t sub_24A5CCFB0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A5D1C6C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_willAppearHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24A5173CC(v3);
  return sub_24A50D354(v8);
}

uint64_t sub_24A5CD118@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_willDisappearHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A59502C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A5173CC(v4);
}

uint64_t sub_24A5CD1B8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A5D1C6C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_willDisappearHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24A5173CC(v3);
  return sub_24A50D354(v8);
}

uint64_t sub_24A5CD320@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_dismissedHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A5493F0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A5173CC(v4);
}

uint64_t sub_24A5CD3C0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A5D113C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_dismissedHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24A5173CC(v3);
  return sub_24A50D354(v8);
}

uint64_t sub_24A5CD528@<X0>(void *a1@<X0>, uint64_t (**a2)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_flashLightHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A5D1100;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A5173CC(v4);
}

uint64_t sub_24A5CD5C8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A5D10BC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_flashLightHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24A5173CC(v3);
  return sub_24A50D354(v8);
}

id FMFindingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24A62EBE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void (*sub_24A5CD808(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_24A5CCC2C(v2);
  return sub_24A514324;
}

uint64_t sub_24A5CDA18(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FMFindingViewState();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A5D0DA8(a2, v6, type metadata accessor for FMFindingViewState);
  return sub_24A5BEE50(v6);
}

id sub_24A5CDAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session) + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_arSession);
  if (v5)
  {
    return [*(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView) session:v5 didUpdateFrame:a3];
  }

  return result;
}

uint64_t sub_24A5CDB08(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24A5E87E4(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_24A5CDC04(v5);
  *a1 = v2;
  return result;
}

void sub_24A5CDB9C(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_24A5CDBD4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_24A5CDC04(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24A62F5F4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
        v5 = sub_24A62ED94();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_24A5CDE24(v7, v8, a1, v4);
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
    return sub_24A5CDD0C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24A5CDD0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v16 = a2;
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 40 * a3;
    v8 = result - a3;
LABEL_4:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      sub_24A508AE4(v10, v15);
      sub_24A508AE4(v10 - 40, v14);
      v11 = sub_24A5ABE68(v15, v14);
      sub_24A508C54(v14);
      result = sub_24A508C54(v15);
      if (v4)
      {
        break;
      }

      if (v11)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        sub_24A508CA0(v10, v15);
        v12 = *(v10 - 24);
        *v10 = *(v10 - 40);
        *(v10 + 16) = v12;
        *(v10 + 32) = *(v10 - 8);
        result = sub_24A508CA0(v15, v10 - 40);
        v10 -= 40;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 += 40;
      --v8;
      if (v5 != v16)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_24A5CDE24(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v6 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_95:
    v7 = *v6;
    if (*v6)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_126;
      }

      goto LABEL_97;
    }

    goto LABEL_135;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v89 = result;
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    v93 = v10;
    if (v11 >= v7)
    {
      v7 = v11;
    }

    else
    {
      v12 = *v5;
      sub_24A508AE4(v12 + 40 * v11, v96);
      sub_24A508AE4(v12 + 40 * v10, v95);
      v13 = sub_24A5ABE68(v96, v95);
      if (v4)
      {
LABEL_106:
        sub_24A508C54(v95);
        sub_24A508C54(v96);
      }

      v14 = v13;
      sub_24A508C54(v95);
      result = sub_24A508C54(v96);
      v15 = (v10 + 2);
      v16 = 40 * v10;
      v17 = v12 + 40 * v10 + 80;
      v5 = a3;
      while (v7 != v15)
      {
        sub_24A508AE4(v17, v96);
        sub_24A508AE4(v17 - 40, v95);
        v18 = sub_24A5ABE68(v96, v95);
        sub_24A508C54(v95);
        result = sub_24A508C54(v96);
        ++v15;
        v17 += 40;
        if ((v14 ^ v18))
        {
          v7 = (v15 - 1);
          break;
        }
      }

      v10 = v93;
      if (v14)
      {
        if (v7 < v93)
        {
          goto LABEL_129;
        }

        if (v93 < v7)
        {
          v19 = 40 * v7 - 40;
          v20 = v7;
          v21 = v93;
          do
          {
            if (v21 != --v20)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v22 = v26 + v16;
              v23 = v26 + v19;
              sub_24A508CA0((v26 + v16), v96);
              v24 = *(v23 + 32);
              v25 = *(v23 + 16);
              *v22 = *v23;
              *(v22 + 16) = v25;
              *(v22 + 32) = v24;
              result = sub_24A508CA0(v96, v23);
              v10 = v93;
            }

            ++v21;
            v19 -= 40;
            v16 += 40;
          }

          while (v21 < v20);
          v5 = a3;
        }
      }

      v6 = v89;
    }

    v27 = v5[1];
    if (v7 >= v27)
    {
      goto LABEL_30;
    }

    if (__OFSUB__(v7, v10))
    {
      goto LABEL_125;
    }

    if (v7 - v10 >= a4)
    {
      goto LABEL_30;
    }

    if (__OFADD__(v10, a4))
    {
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    if (v10 + a4 >= v27)
    {
      v28 = v5[1];
    }

    else
    {
      v28 = (v10 + a4);
    }

    if (v28 < v10)
    {
      goto LABEL_128;
    }

    if (v7 == v28)
    {
LABEL_30:
      v29 = v7;
      if (v7 < v10)
      {
        goto LABEL_124;
      }
    }

    else
    {
      v76 = *v5;
      v77 = *v5 + 40 * v7;
      v78 = v10 - v7;
      v92 = v28;
      do
      {
        v88 = v78;
        v79 = v78;
        v5 = v77;
        do
        {
          sub_24A508AE4(v77, v96);
          sub_24A508AE4(v77 - 40, v95);
          v80 = sub_24A5ABE68(v96, v95);
          if (v4)
          {
            goto LABEL_106;
          }

          v81 = v80;
          sub_24A508C54(v95);
          result = sub_24A508C54(v96);
          if ((v81 & 1) == 0)
          {
            break;
          }

          if (!v76)
          {
            goto LABEL_131;
          }

          sub_24A508CA0(v77, v96);
          v82 = *(v77 - 24);
          *v77 = *(v77 - 40);
          *(v77 + 16) = v82;
          *(v77 + 32) = *(v77 - 8);
          sub_24A508CA0(v96, v77 - 40);
          v77 -= 40;
        }

        while (!__CFADD__(v79++, 1));
        ++v7;
        v77 = (v5 + 5);
        v78 = v88 - 1;
        v29 = v92;
      }

      while (v7 != v92);
      v6 = v89;
      v10 = v93;
      if (v92 < v93)
      {
        goto LABEL_124;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24A5E802C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_24A5E802C((v30 > 1), v31 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v29;
    v34 = *v6;
    if (!*v6)
    {
      goto LABEL_134;
    }

    v91 = v29;
    if (v31)
    {
      break;
    }

    v5 = a3;
LABEL_82:
    v7 = v5[1];
    v8 = v91;
    if (v91 >= v7)
    {
      goto LABEL_95;
    }
  }

  v5 = a3;
  while (1)
  {
    v35 = v32 - 1;
    if (v32 >= 4)
    {
      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_111;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_112;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_114;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_117;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_123;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

    if (v32 == 3)
    {
      v36 = *(v9 + 4);
      v37 = *(v9 + 5);
      v46 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v39 = v46;
LABEL_51:
      if (v39)
      {
        goto LABEL_113;
      }

      v52 = &v9[16 * v32];
      v54 = *v52;
      v53 = *(v52 + 1);
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_116;
      }

      v58 = &v9[16 * v35 + 32];
      v60 = *v58;
      v59 = *(v58 + 1);
      v46 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v46)
      {
        goto LABEL_119;
      }

      if (__OFADD__(v56, v61))
      {
        goto LABEL_120;
      }

      if (v56 + v61 >= v38)
      {
        if (v38 < v61)
        {
          v35 = v32 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_65;
    }

    v62 = &v9[16 * v32];
    v64 = *v62;
    v63 = *(v62 + 1);
    v46 = __OFSUB__(v63, v64);
    v56 = v63 - v64;
    v57 = v46;
LABEL_65:
    if (v57)
    {
      goto LABEL_115;
    }

    v65 = &v9[16 * v35];
    v67 = *(v65 + 4);
    v66 = *(v65 + 5);
    v46 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v46)
    {
      goto LABEL_118;
    }

    if (v68 < v56)
    {
      goto LABEL_82;
    }

LABEL_72:
    v7 = v35 - 1;
    if (v35 - 1 >= v32)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_130;
    }

    v73 = *&v9[16 * v7 + 32];
    v74 = *&v9[16 * v35 + 40];
    sub_24A5CE4D4((*a3 + 40 * v73), (*a3 + 40 * *&v9[16 * v35 + 32]), *a3 + 40 * v74, v34);
    if (v4)
    {
    }

    if (v74 < v73)
    {
      goto LABEL_109;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_24A5E8018(v9);
    }

    if (v7 >= *(v9 + 2))
    {
      goto LABEL_110;
    }

    v75 = &v9[16 * v7];
    *(v75 + 4) = v73;
    *(v75 + 5) = v74;
    v97 = v9;
    result = sub_24A5E7F8C(v35);
    v9 = v97;
    v32 = *(v97 + 2);
    if (v32 <= 1)
    {
      goto LABEL_82;
    }
  }

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
  result = sub_24A5E8018(v9);
  v9 = result;
LABEL_97:
  v97 = v9;
  v84 = *(v9 + 2);
  if (v84 < 2)
  {
  }

  while (*v5)
  {
    v85 = *&v9[16 * v84];
    v86 = *&v9[16 * v84 + 24];
    sub_24A5CE4D4((*v5 + 40 * v85), (*v5 + 40 * *&v9[16 * v84 + 16]), *v5 + 40 * v86, v7);
    if (v4)
    {
    }

    if (v86 < v85)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_24A5E8018(v9);
    }

    if (v84 - 2 >= *(v9 + 2))
    {
      goto LABEL_122;
    }

    v87 = &v9[16 * v84];
    *v87 = v85;
    *(v87 + 1) = v86;
    v97 = v9;
    result = sub_24A5E7F8C(v84 - 1);
    v9 = v97;
    v84 = *(v97 + 2);
    if (v84 <= 1)
    {
    }
  }

LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_24A5CE4D4(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = (__src - __dst) / 40;
  v11 = a3 - __src;
  v12 = (a3 - __src) / 40;
  if (v10 >= v12)
  {
    if (a4 != __src || &__src[40 * v12] <= a4)
    {
      memmove(a4, __src, 40 * v12);
    }

    v13 = v5 + 40 * v12;
    if (v11 < 40 || v7 <= v8)
    {
LABEL_43:
      v20 = v7;
      goto LABEL_44;
    }

    v21 = -v5;
    v40 = -v5;
    while (1)
    {
      v20 = v7 - 40;
      v22 = v13 - 40;
      v23 = v21 + v13;
      v6 -= 40;
      while (1)
      {
        sub_24A508AE4(v22, v39);
        sub_24A508AE4((v7 - 40), v38);
        v26 = sub_24A5ABE68(v39, v38);
        if (v4)
        {
          sub_24A508C54(v38);
          sub_24A508C54(v39);
          v35 = v23 / 40;
          if (v7 >= v5 && v7 < v5 + 40 * v35 && v7 == v5)
          {
            return 1;
          }

          v33 = 40 * v35;
          v34 = v7;
          goto LABEL_48;
        }

        v27 = v26;
        sub_24A508C54(v38);
        sub_24A508C54(v39);
        if (v27)
        {
          break;
        }

        if (v6 + 40 != v22 + 40)
        {
          v28 = *v22;
          v29 = *(v22 + 16);
          *(v6 + 32) = *(v22 + 32);
          *v6 = v28;
          *(v6 + 16) = v29;
        }

        v24 = v22 - 40;
        v23 -= 40;
        v6 -= 40;
        v25 = v22 > v5;
        v22 -= 40;
        if (!v25)
        {
          v13 = v24 + 40;
          goto LABEL_43;
        }
      }

      if ((v6 + 40) != v7)
      {
        v30 = *v20;
        v31 = *(v7 - 24);
        *(v6 + 32) = *(v7 - 1);
        *v6 = v30;
        *(v6 + 16) = v31;
      }

      v13 = v22 + 40;
      if (v22 + 40 > v5)
      {
        v7 -= 40;
        v21 = v40;
        if (v20 > v8)
        {
          continue;
        }
      }

      v13 = v22 + 40;
      goto LABEL_44;
    }
  }

  if (a4 != __dst || &__dst[40 * v10] <= a4)
  {
    memmove(a4, __dst, 40 * v10);
  }

  v13 = v5 + 40 * v10;
  if (v9 < 40 || v7 >= v6)
  {
LABEL_16:
    v20 = v8;
LABEL_44:
    v36 = (v13 - v5) / 40;
    if (v20 >= v5 && v20 < v5 + 40 * v36 && v20 == v5)
    {
      return 1;
    }

    v33 = 40 * v36;
    v34 = v20;
LABEL_48:
    memmove(v34, v5, v33);
    return 1;
  }

  while (1)
  {
    sub_24A508AE4(v7, v39);
    sub_24A508AE4(v5, v38);
    v14 = sub_24A5ABE68(v39, v38);
    if (v4)
    {
      break;
    }

    v15 = v14;
    sub_24A508C54(v38);
    sub_24A508C54(v39);
    if ((v15 & 1) == 0)
    {
      v16 = v5;
      v17 = v8 == v5;
      v5 += 40;
      if (v17)
      {
        goto LABEL_14;
      }

LABEL_13:
      v18 = *v16;
      v19 = *(v16 + 1);
      *(v8 + 4) = *(v16 + 4);
      *v8 = v18;
      *(v8 + 1) = v19;
      goto LABEL_14;
    }

    v16 = v7;
    v17 = v8 == v7;
    v7 += 40;
    if (!v17)
    {
      goto LABEL_13;
    }

LABEL_14:
    v8 += 40;
    if (v5 >= v13 || v7 >= v6)
    {
      goto LABEL_16;
    }
  }

  sub_24A508C54(v38);
  sub_24A508C54(v39);
  v32 = (v13 - v5) / 40;
  if (v8 < v5 || v8 >= v5 + 40 * v32 || v8 != v5)
  {
    v33 = 40 * v32;
    v34 = v8;
    goto LABEL_48;
  }

  return 1;
}

void *sub_24A5CE86C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_24A508AE4(*(a4 + 56) + 40 * (v17 | (v12 << 6)), v20);
      sub_24A508CA0(v20, v21);
      sub_24A508CA0(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24A5CE9D8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_24A62E214();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

id sub_24A5CEC7C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_24A50D7EC(0, &qword_27EF516F0, 0x277D75940);
  sub_24A5D1A78();
  v2 = sub_24A62EE64();

  v3 = sub_24A629468(v2);

  if (!v3)
  {
    return 0;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 interfaceOrientation];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_24A5CED74(uint64_t a1)
{
  v3 = sub_24A62EA94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A62EAD4();
  v25 = *(v8 - 8);
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMFindingViewState();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  if ([objc_opt_self() isMainThread])
  {
    sub_24A5D0DA8(a1, &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMFindingViewState);
    return sub_24A5BEE50(&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  }

  else
  {
    sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
    v24 = v8;
    v16 = v1;
    v23 = sub_24A62F014();
    sub_24A5D0DA8(a1, &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMFindingViewState);
    v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    sub_24A5D1350(&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for FMFindingViewState);
    aBlock[4] = sub_24A5D158C;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA90B8;
    v19 = _Block_copy(aBlock);
    v20 = v16;

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A5D0C64(&qword_27EF4F970, MEMORY[0x277D85198]);
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    v21 = v23;
    MEMORY[0x24C21A950](0, v11, v7, v19);
    _Block_release(v19);

    (*(v4 + 8))(v7, v3);
    return (*(v25 + 8))(v11, v24);
  }
}

void sub_24A5CF148(uint64_t a1)
{
  v3 = sub_24A62EA94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A62EAD4();
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMFindingSession.Error(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  if ([objc_opt_self() isMainThread])
  {

    sub_24A5CAC44(a1);
  }

  else
  {
    sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
    v23 = v8;
    v15 = v1;
    v22 = sub_24A62F014();
    sub_24A5D0DA8(a1, &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMFindingSession.Error);
    v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    sub_24A5D1350(&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for FMFindingSession.Error);
    aBlock[4] = sub_24A5D13B8;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA9068;
    v18 = _Block_copy(aBlock);
    v19 = v15;

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A5D0C64(&qword_27EF4F970, MEMORY[0x277D85198]);
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    v20 = v22;
    MEMORY[0x24C21A950](0, v11, v7, v18);
    _Block_release(v18);

    (*(v4 + 8))(v7, v3);
    (*(v24 + 8))(v11, v23);
  }
}

uint64_t sub_24A5CF524(uint64_t a1)
{
  v2 = v1;
  v78 = type metadata accessor for FMFindingSessionState();
  v4 = *(*(v78 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v78);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v77 - v8;
  v10 = type metadata accessor for FMFindingViewState();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v77 = (&v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_isInternalBuild;
  v14 = [objc_opt_self() sharedInstance];
  v15 = [v14 isInternalBuild];

  v2[v13] = v15;
  v16 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_style;
  if (qword_27EF4EA38 != -1)
  {
    swift_once();
  }

  v88[8] = xmmword_27EF5C5E0;
  v88[9] = unk_27EF5C5F0;
  v88[10] = xmmword_27EF5C600;
  v89 = qword_27EF5C610;
  v88[4] = xmmword_27EF5C5A0;
  v88[5] = unk_27EF5C5B0;
  v88[6] = xmmword_27EF5C5C0;
  v88[7] = unk_27EF5C5D0;
  v88[0] = xmmword_27EF5C560;
  v88[1] = *&qword_27EF5C570;
  v88[2] = xmmword_27EF5C580;
  v88[3] = unk_27EF5C590;
  memmove(&v2[v16], &xmmword_27EF5C560, 0xB8uLL);
  v17 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_sleepPreventer;
  type metadata accessor for FMFindingSleepPreventer();
  *&v2[v17] = swift_initStaticObject();
  v18 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_snapshotContainer;
  v19 = objc_allocWithZone(MEMORY[0x277D75D18]);
  sub_24A5D1AFC(v88, v86);
  *&v2[v18] = [v19 init];
  v20 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_reducedMotion;
  v2[v20] = UIAccessibilityIsReduceMotionEnabled();
  v21 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_titleLabel;
  *&v2[v21] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v22 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_nameLabel;
  *&v2[v22] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v23 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pickerView];
  *v23 = 0;
  v23[1] = 0;
  v24 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pickerViewContainer;
  *&v2[v24] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v25 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabelsStackView;
  *&v2[v25] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v26 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsTopLabel;
  *&v2[v26] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v27 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabel;
  *&v2[v27] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v28 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_closeButton;
  v29 = type metadata accessor for FMR1GlyphButton();
  v30 = objc_allocWithZone(v29);
  *&v2[v28] = sub_24A629644(0, 0, 0, 0);
  v31 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController];
  v32 = type metadata accessor for FMR1HapticsController();
  v33 = [objc_allocWithZone(v32) init];
  v31[3] = v32;
  v31[4] = &off_285DA5E60;
  *v31 = v33;
  v34 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_torchButton;
  v35 = objc_allocWithZone(v29);
  *&v2[v34] = sub_24A629644(0, 0, 0, 0);
  *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_showTorchButtonWorkItem] = 0;
  v36 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_rightActionButton;
  v37 = objc_allocWithZone(v29);
  *&v2[v36] = sub_24A629644(0, 0, 0, 0);
  v38 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_r1DistanceView;
  v39 = objc_allocWithZone(type metadata accessor for FMR1DistanceView());
  LOBYTE(v86[0]) = 1;
  *&v2[v38] = sub_24A5F75FC(0, 1, 0x100000000);
  v40 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo];
  *(v40 + 14) = 0;
  *(v40 + 5) = 0u;
  *(v40 + 6) = 0u;
  *(v40 + 3) = 0u;
  *(v40 + 4) = 0u;
  *(v40 + 1) = 0u;
  *(v40 + 2) = 0u;
  *v40 = 0u;
  *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundItemWorkItem] = 0;
  v41 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_lastTimeFoundItemVideo];
  *(v41 + 1) = 0;
  *(v41 + 2) = 0;
  *v41 = 0;
  v41[24] = 1;
  *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_autoStopPlayingVideoWorkItem] = 0;
  v42 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_btDistanceView;
  *&v2[v42] = [objc_allocWithZone(type metadata accessor for FMBTDistanceView()) init];
  *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pulseTimer] = 0;
  v43 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_incorrectOrientationView;
  *&v2[v43] = [objc_allocWithZone(type metadata accessor for FMIncorrectOrientationView()) init];
  v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_inBand] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_insufficientFeaturesARTrackingErrorCount] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_updateTorchPeriodicCount] = 0;
  v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_gotFirstARFrame] = 0;
  v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertIsShown] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertCount] = 0;
  v44 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_configuration;
  if (qword_27EF4EA58 != -1)
  {
    swift_once();
  }

  *&v2[v44] = qword_27EF5C6F8;
  *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_FMR1MaxErrorAlertCount] = 3;
  v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_isSoundPlaying] = 2;
  v45 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_playSoundHandler];
  *v45 = 0;
  v45[1] = 0;
  v46 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_willAppearHandler];
  *v46 = 0;
  v46[1] = 0;
  v47 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_willDisappearHandler];
  *v47 = 0;
  v47[1] = 0;
  v48 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_dismissedHandler];
  *v48 = 0;
  v48[1] = 0;
  v49 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_flashLightHandler];
  *v49 = 0;
  v49[1] = 0;
  v50 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType;
  v51 = *(a1 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType);
  v52 = (v51 >> 13) & 3;
  if (v52)
  {
    if (v52 == 1)
    {
      LOBYTE(v52) = 2;
    }

    else
    {
      LOBYTE(v52) = (v51 & 1) == 0;
      if (v51 >= 0)
      {
        LOBYTE(v52) = 2;
      }
    }
  }

  v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_experienceType] = v52;
  *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session] = a1;
  v53 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  sub_24A5D0DA8(a1 + v53, v9, type metadata accessor for FMFindingSessionState);

  v54 = v77;
  sub_24A626F08(v9, 10, v77);
  sub_24A5D1350(v54, &v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state], type metadata accessor for FMFindingViewState);
  sub_24A5D0DA8(a1 + v53, v9, type metadata accessor for FMFindingSessionState);
  v55 = type metadata accessor for FMFindingStateTransitionCoordinator();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_stateTransitionCoordinator] = sub_24A6099C0(v9);
  sub_24A5D0DA8(a1 + v53, v7, type metadata accessor for FMFindingSessionState);
  v58 = *(v7 + 1);
  if (*(v58 + 16) && (v59 = sub_24A515AC8(&v7[*(v78 + 36)]), (v60 & 1) != 0))
  {
    sub_24A508AE4(*(v58 + 56) + 40 * v59, v84);
    sub_24A508CA0(v84, v85);
    sub_24A5D0E10(v7, type metadata accessor for FMFindingSessionState);
    v61 = *(a1 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_arSession);
    v62 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_experienceType;
    v81 = v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_experienceType];
    LOWORD(v80[0]) = *(a1 + v50);
    sub_24A5D1B58(v82);
    v86[8] = v82[8];
    v86[9] = v82[9];
    v86[10] = v82[10];
    v87 = v83;
    v86[4] = v82[4];
    v86[5] = v82[5];
    v86[6] = v82[6];
    v86[7] = v82[7];
    v86[0] = v82[0];
    v86[1] = v82[1];
    v86[2] = v82[2];
    v86[3] = v82[3];
    objc_allocWithZone(type metadata accessor for FMPFView());
    v63 = v61;
    *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView] = sub_24A5F6330(&v81, v80, v86, v61);
    sub_24A508AE4(v85, v80);
    v81 = v2[v62];
    v64 = objc_allocWithZone(type metadata accessor for FMR1InstructionsController());
    v65 = sub_24A5FF084(v80, &v81);
    v66 = 0;
    *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsController] = v65;
    if (v2[v62] != 2)
    {
      v67 = objc_allocWithZone(type metadata accessor for FMAVPlayerView());
      v66 = sub_24A59ED80(0, 0.5);
    }

    *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerView] = v66;
    v68 = type metadata accessor for FMFindingViewController();
    v79.receiver = v2;
    v79.super_class = v68;
    v69 = objc_msgSendSuper2(&v79, sel_initWithNibName_bundle_, 0, 0);
    v70 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_stateTransitionCoordinator;
    v71 = *&v69[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_stateTransitionCoordinator];
    *(*&v69[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session] + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_delegate + 8) = &off_285DAB1A0;
    swift_unknownObjectWeakAssign();
    *(*&v69[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView] + OBJC_IVAR____TtC11FMFindingUI8FMPFView_fmpfdelegate + 8) = &off_285DA5048;
    swift_unknownObjectWeakAssign();
    *(*&v69[v70] + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_delegate + 8) = &off_285DA8730;
    swift_unknownObjectWeakAssign();
    *(*&v69[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsController] + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_delegate + 8) = &off_285DAB7D0;
    swift_unknownObjectWeakAssign();
    v72 = objc_opt_self();
    v73 = v69;
    v74 = [v72 defaultCenter];
    [v74 addObserver:v73 selector:sel_applicationDidEnterBackground name:*MEMORY[0x277D76660] object:0];

    v75 = [v72 defaultCenter];
    [v75 addObserver:v73 selector:sel_applicationWillEnterForeground name:*MEMORY[0x277D76758] object:0];

    sub_24A508C54(v85);
    return v73;
  }

  else
  {
    result = sub_24A62F444();
    __break(1u);
  }

  return result;
}
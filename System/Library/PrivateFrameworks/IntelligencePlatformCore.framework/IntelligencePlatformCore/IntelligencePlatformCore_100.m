void sub_1C4CDE090(char a1, const char *a2)
{
  v4 = v2;
  *(v2 + 34) = a1;
  v5 = *(v2 + 152);
  *(v2 + 144) = 0;
  *(v2 + 152) = 0xE000000000000000;

  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC();
  }

  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDE2DF70);

  oslog = sub_1C4F00968();
  v7 = sub_1C4F01CF8();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = *(v4 + 112);
    v11 = *(v4 + 104);
    v12 = sub_1C444F05C(*(v4 + 88), *(v4 + 96));
    v14 = sub_1C441D828(v12, v13, &v16);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_1C43F8000, oslog, v7, a2, v8, 0xCu);
    sub_1C440962C(v9);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }
}

uint64_t sub_1C4CDE1F0()
{
  v1 = sub_1C4F01188();
  v2 = sub_1C43FCDF8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4F01178();
  v12 = sub_1C4F01148();

  (*(v4 + 8))(v9, v1);
  return v12;
}

void *sub_1C4CDE2DC()
{
  v1 = v0[3];

  v2 = v0[7];
  v3 = v0[9];

  v4 = v0[12];

  v5 = v0[17];

  v6 = v0[19];

  v7 = v0[21];

  v8 = v0[22];

  return v0;
}

uint64_t sub_1C4CDE340()
{
  sub_1C4CDE2DC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4CDE398()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 96);
  v4 = *(v1 + 112);
  v5 = *(v1 + 104);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v2;
}

unint64_t sub_1C4CDE4E4(uint64_t a1)
{
  result = sub_1C4CDE50C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4CDE50C()
{
  result = qword_1EDDF9B48[0];
  if (!qword_1EDDF9B48[0])
  {
    _s14KeyValueSourceCMa();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF9B48);
  }

  return result;
}

uint64_t sub_1C4CDE560(uint64_t result, unint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a2 >> 60 != 15)
  {
    v3 = result;
    sub_1C44344B8(result, a2);
    sub_1C456902C(&qword_1EC0C4030, &unk_1C4F57320);
    sub_1C4464058();
    sub_1C44640AC();
    sub_1C44012C4();
    sub_1C44012C4();
    if (MEMORY[0x1C6938780](v3, a2) < 16)
    {
      __break(1u);
    }

    sub_1C4EF9498();
    result = sub_1C441DFEC(v3, a2);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C4CDE6C8(void *a1, void *a2, uint64_t a3)
{
  v7 = [a1 state];
  sub_1C4F01138();
  v9 = v8;

  v10 = sub_1C443BE78();
  if (v10 == 5)
  {
    sub_1C4F02248();

    v65 = 0xD00000000000001ELL;
    v66 = 0x80000001C4FC3990;
    MEMORY[0x1C6940010](*a2, a2[1]);
    MEMORY[0x1C6940010](8250, 0xE200000000000000);
    v11 = [a1 state];
    v12 = sub_1C4F01138();
    v14 = v13;

    MEMORY[0x1C6940010](v12, v14);

    sub_1C446D0DC();
    v15 = swift_allocError();
    sub_1C4413C18(v15, v16);

LABEL_10:

    goto LABEL_11;
  }

  v17 = v10;
  v64 = a3;
  v18 = [a1 configIdentifier];
  v9 = [v18 index];

  v19 = v9;
  v20 = a2[29];
  if (!v20 || *(v20 + 16) <= v9)
  {
    v65 = 0;
    v66 = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD00000000000001ALL, 0x80000001C4FC39B0);
    MEMORY[0x1C6940010](0x6764656C776F6E6BLL, 0xEE00687061724765);
    MEMORY[0x1C6940010](0x65646E6920666F20, 0xEA00000000002078);
    v69 = v9;
    v39 = sub_1C4F02858();
    MEMORY[0x1C6940010](v39);

    MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FC39D0);
    MEMORY[0x1C6940010](*a2, a2[1]);
    sub_1C446D0DC();
    v40 = swift_allocError();
    sub_1C4413C18(v40, v41);

    goto LABEL_10;
  }

  v21 = sub_1C443D554(a1);
  v23 = v22;
  sub_1C4CDE560(v21, v22);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  result = sub_1C441DFEC(v21, v23);
  if ((v19 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else if (*(v20 + 16) > v19)
  {
    v9 = *a2;
    v31 = a2[1];
    v32 = (v20 + 48 * v19);
    v33 = v32[2];
    v34 = v32[3];
    *&v68[12] = *(v32 + 60);
    v67 = v33;
    *v68 = v34;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C47F5D0C(&v67, &v65);
    v35 = sub_1C443ED0C([a1 configIdentifier]);
    if (!v3)
    {
      v42 = v37;
      v60 = v38;
      v61 = v36;
      v62 = v35;
      v63 = v9;
      v59 = [a1 triggered];
      sub_1C4441C50(v17);
      if (v44 == 0x65676E6168436F6ELL && v43 == 0xE900000000000073)
      {

        v47 = 1;
      }

      else
      {
        v46 = sub_1C4F02938();

        v47 = v46 & 1;
      }

      v48 = sub_1C445CA14(a1);
      v50 = v49;
      sub_1C4CDE560(v48, v49);
      v52 = v51;
      v54 = v53;
      v56 = v55;
      sub_1C441DFEC(v48, v50);
      _s20KnowledgeGraphSourceCMa();
      v9 = swift_allocObject();
      v57 = *v68;
      *(v9 + 72) = v67;
      v9[208] = 0;
      *(v9 + 2) = v63;
      *(v9 + 3) = v31;
      *(v9 + 88) = v57;
      *(v9 + 100) = *&v68[12];
      v9[32] = v59;
      *(v9 + 5) = v62;
      *(v9 + 6) = v61;
      v9[56] = v42;
      *(v9 + 8) = v60;
      v9[33] = v17;
      v9[34] = v47;
      *(v9 + 16) = v25;
      *(v9 + 17) = v27;
      *(v9 + 18) = v29;
      *(v9 + 19) = v25;
      *(v9 + 20) = v52;
      *(v9 + 21) = v54;
      *(v9 + 22) = v56;
      v58 = MEMORY[0x1E69E7CD0];
      *(v9 + 23) = v64;
      *(v9 + 24) = v58;
      *(v9 + 25) = v25;
      *(v9 + 15) = 0;

      sub_1C445F57C(a2);
      return v9;
    }

    sub_1C47F5D68(&v67);

LABEL_11:
    sub_1C445F57C(a2);
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4CDEBB0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_1C4F01188();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v12 = sub_1C4EF9348();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_1C4EF9338();
  v15 = *(a2 + 40);
  v16 = *(a2 + 48);
  sub_1C4F01178();
  v17 = sub_1C4F01148();
  v19 = v18;
  (*(v8 + 8))(v11, v7);
  if (v19 >> 60 == 15)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17;
  }

  if (v19 >> 60 == 15)
  {
    v19 = 0xC000000000000000;
  }

  sub_1C4CC9D48();
  sub_1C4EF9328();

  result = sub_1C4434000(v20, v19);
  if (!v3)
  {
    v43 = v41;
    *v44 = *v42;
    *&v44[12] = *&v42[12];
    _s20KnowledgeGraphSourceCMa();
    sub_1C4CDE560(*(a1 + 40), *(a1 + 48));
    v22 = *(v45 + 16);
    sub_1C4CDEE6C(&v43, &v41, v23, v24, v25);
    v26 = v41;
    v27 = *(&v41 + 1);
    v29 = *v42;
    v28 = *&v42[16];
    v30 = sub_1C4CDEFBC(*v42, *&v42[8], *&v42[16]);
    v32 = v31;
    v33 = sub_1C4CDEFBC(v27, *(&v29 + 1), v28);
    v35 = v34;
    v36 = *&v44[16];
    if (*&v44[16])
    {
      v37 = *&v44[8];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      v37 = 0;
      v36 = 0xE000000000000000;
    }

    sub_1C47F5D68(&v43);
    if (v37 || v36 != 0xE000000000000000)
    {
      v38 = sub_1C4F02938();

      if ((v38 & 1) == 0)
      {
        v39 = *&v29 <= 0.0;
        goto LABEL_18;
      }
    }

    else
    {
    }

    if (*&v29 <= 0.0)
    {
      v40 = 0;
LABEL_21:
      *a3 = v26;
      *(a3 + 1) = v40;
      *(a3 + 8) = v33;
      *(a3 + 16) = v35;
      *(a3 + 24) = v30;
      *(a3 + 32) = v32;
      *(a3 + 40) = xmmword_1C4F29230;
      return result;
    }

    v39 = *(&v29 + 1) <= 0.0;
LABEL_18:
    v40 = !v39;
    goto LABEL_21;
  }

  return result;
}

void sub_1C4CDEE6C(uint64_t a1@<X1>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D2>, double a5@<D3>)
{
  v10 = sub_1C4870E6C();
  v12 = v10;
  v14 = v13;
  if (v13 != a4)
  {
    goto LABEL_17;
  }

  if (v10 == 0.0)
  {
    if (a3 == 0.0)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    goto LABEL_18;
  }

  if (v11 <= a3)
  {
    if (a3 != 0.0)
    {
      goto LABEL_12;
    }

LABEL_17:
    v15 = 1;
    goto LABEL_18;
  }

  if (a3 == 0.0 || v11 > a5)
  {
    goto LABEL_17;
  }

LABEL_12:
  v17 = sub_1C4EFB8D8();
  v25[0] = MEMORY[0x1E69E7CC0];
  v25[1] = 0;
  v26 = 0;
  v27 = v17;
  v28 = v18;
  v19 = sub_1C487B928(v25, *(a1 + 16), *(a1 + 8), 1, a3);
  v21 = v20;
  v22 = v19;
  sub_1C487BDB4(v25);
  v23 = *(v22 + 16);

  if (v23)
  {
    v24 = 0.0 - v21;
    if (0.0 - v21 != INFINITY)
    {
      *&v24 += (*&v24 >> 63) | 1;
    }

    a3 = -v24;
    v15 = 3;
  }

  else
  {
    v15 = 4;
    a3 = v12;
  }

LABEL_18:
  *a2 = v15;
  *(a2 + 8) = a3;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14;
  *(a2 + 32) = v12;
}

uint64_t sub_1C4CDEFBC(double a1, double a2, double a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v27 = a2;
  v28 = a1;
  v26 = a3;
  v3 = sub_1C4464F38(&v28, &v29);
  v5 = v4;
  sub_1C4464F38(&v27, &v28);
  v29 = v3;
  v30 = v5;
  v6 = sub_1C4402B58();
  sub_1C44344B8(v6, v7);
  v8 = sub_1C4404BB0();
  sub_1C44F9684(v8, v9);
  v10 = sub_1C4404BB0();
  sub_1C4434000(v10, v11);
  v12 = sub_1C4402B58();
  sub_1C4434000(v12, v13);
  v14 = v29;
  v15 = v30;
  sub_1C4464F38(&v26, &v27);
  v31 = v14;
  v32 = v15;
  v16 = sub_1C4402B58();
  sub_1C44344B8(v16, v17);
  v18 = sub_1C4404BB0();
  sub_1C44F9684(v18, v19);
  v20 = sub_1C4404BB0();
  sub_1C4434000(v20, v21);
  v22 = sub_1C4402B58();
  sub_1C4434000(v22, v23);
  result = v31;
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

double sub_1C4CDF0E8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *v3;
  sub_1C4CDEBB0(a1, a2, v9);
  if (!v4)
  {
    v8 = v9[1];
    *a3 = v9[0];
    *(a3 + 16) = v8;
    result = *&v10;
    *(a3 + 32) = v10;
    *(a3 + 48) = v11;
  }

  return result;
}

uint64_t sub_1C4CDF13C()
{
  sub_1C44F920C();
  result = static NSUserDefaults.viewGenerationSubjectIdBatchSize.getter();
  qword_1EDE2DBA8 = result;
  return result;
}

uint64_t sub_1C4CDF170()
{
  sub_1C44F920C();
  result = static NSUserDefaults.viewGenerationGraphUpdateBatchSize.getter();
  qword_1EDE2DBB0 = result;
  return result;
}

uint64_t sub_1C4CDF1A4()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 96);
    v2 = *(v0 + 104);
  }

  else
  {
    v1 = 0;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4CDF1E8()
{
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000024, 0x80000001C4FC4860);
  if (*(v0 + 32))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1C6940010](v1, v2);

  MEMORY[0x1C6940010](0x3A6574617473202CLL, 0xE900000000000020);
  v8 = *(v0 + 33);
  sub_1C440FE3C();
  MEMORY[0x1C6940010](0x6E6F70736572202CLL, 0xEC000000203A6573);
  v9 = *(v0 + 34);
  sub_1C440FE3C();
  MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FC3970);
  v3 = *(v0 + 64);
  v4 = *(v0 + 56);
  v5 = sub_1C444F05C(*(v0 + 40), *(v0 + 48));
  MEMORY[0x1C6940010](v5);

  MEMORY[0x1C6940010](0x616974696E69202CLL, 0xEB00000000203A6CLL);
  v10 = *(v0 + 128);
  v12 = *(v0 + 144);
  sub_1C4432DC4();
  MEMORY[0x1C6940010](0x6E6572727563202CLL, 0xEB00000000203A74);
  v6 = *(v0 + 152);
  sub_1C4F01A28();
  MEMORY[0x1C6940010](0x74736574616C202CLL, 0xEA0000000000203ALL);
  v11 = *(v0 + 160);
  v13 = *(v0 + 176);
  sub_1C4432DC4();
  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0;
}

void sub_1C4CDF41C(double a1)
{
  v2 = v1;
  *(v1 + 34) = 4;
  *(v1 + 152) = a1;
  sub_1C4CDF618();
  sub_1C4441C50(*(v1 + 33));
  if (v5 == 0x65676E6168436F6ELL && v4 == 0xE900000000000073)
  {
  }

  else
  {
    v7 = sub_1C4F02938();

    if ((v7 & 1) == 0)
    {
      if (qword_1EDDFECD0 != -1)
      {
        sub_1C44066DC();
      }

      v8 = sub_1C4F00978();
      sub_1C442B738(v8, qword_1EDE2DF70);

      oslog = sub_1C4F00968();
      v9 = sub_1C4F01CF8();

      if (os_log_type_enabled(oslog, v9))
      {
        v10 = swift_slowAlloc();
        v11 = sub_1C43FFD34();
        v18 = v11;
        *v10 = 136315394;
        v12 = *(v2 + 64);
        v13 = *(v2 + 56);
        v14 = sub_1C444F05C(*(v2 + 40), *(v2 + 48));
        v16 = sub_1C441D828(v14, v15, &v18);

        *(v10 + 4) = v16;
        *(v10 + 12) = 2048;
        *(v10 + 14) = a1;
        _os_log_impl(&dword_1C43F8000, oslog, v9, "ViewUpdate: %s: Finished batched update [lastTimestamp: %f]", v10, 0x16u);
        sub_1C440962C(v11);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      return;
    }
  }

  sub_1C4CDF674(a1);
}

__n128 sub_1C4CDF618()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 88);
  v11 = *(v0 + 72);
  v12[0] = v5;
  *(v12 + 12) = *(v0 + 100);
  sub_1C4CDEE6C(&v11, v8, v2, v3, v4);
  result = v9;
  v7 = v10;
  *(v0 + 33) = v8[0];
  *(v0 + 152) = result;
  *(v0 + 168) = v7;
  return result;
}

void sub_1C4CDF674(double a1)
{
  v2 = v1;
  *(v1 + 34) = 5;
  *(v1 + 152) = a1;
  sub_1C440E9C0();
  v4 = *(v1 + 192);
  *(v1 + 192) = MEMORY[0x1E69E7CD0];

  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC();
  }

  v5 = sub_1C4F00978();
  sub_1C442B738(v5, qword_1EDE2DF70);

  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CF8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = sub_1C43FFD34();
    v15 = v9;
    *v8 = 136315394;
    v10 = *(v2 + 64);
    v11 = *(v2 + 56);
    v12 = sub_1C444F05C(*(v2 + 40), *(v2 + 48));
    v14 = sub_1C441D828(v12, v13, &v15);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    _os_log_impl(&dword_1C43F8000, v6, v7, "ViewUpdate: %s: Finished update [lastTimestamp: %f]", v8, 0x16u);
    sub_1C440962C(v9);
    sub_1C43FEA20();
    sub_1C43FBE2C();
  }
}

void sub_1C4CDF808(char a1, const char *a2)
{
  *(v2 + 152) = 0;
  *(v2 + 34) = a1;
  sub_1C440E9C0();
  v4 = *(v2 + 192);
  *(v2 + 192) = MEMORY[0x1E69E7CD0];

  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC();
  }

  v5 = sub_1C4F00978();
  sub_1C442B738(v5, qword_1EDE2DF70);

  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CF8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = sub_1C43FFD34();
    v13 = v9;
    v10 = sub_1C4408100(4.8149e-34);
    v12 = sub_1C441D828(v10, v11, &v13);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1C43F8000, v6, v7, a2, v8, 0xCu);
    sub_1C440962C(v9);
    sub_1C43FBE2C();
    sub_1C43FEA20();
  }
}

uint64_t sub_1C4CDF950(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  if (a2)
  {
    v7 = *(v4 + 152);
    if ((a4 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = *&a1;
    if ((a4 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (qword_1EDDF9950 != -1)
  {
    swift_once();
  }

  a3 = qword_1EDE2DBA8;
LABEL_8:
  v8 = *(v4 + 184);
  v10 = *(v5 + 80);
  v9 = *(v5 + 88);
  swift_beginAccess();
  v11 = sub_1C4404BB0();
  v15 = sub_1C48770F0(v11, v12, a3, v13, v14, v7);
  v17 = v16;
  v18 = v15;
  swift_endAccess();
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC();
  }

  v19 = sub_1C4F00978();
  sub_1C442B738(v19, qword_1EDE2DF70);
  sub_1C44174AC();
  swift_bridgeObjectRetain_n();

  v20 = sub_1C4F00968();
  v21 = sub_1C4F01CC8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = sub_1C43FFD34();
    v23 = sub_1C43FFD34();
    v31 = v23;
    v24 = sub_1C4408100(4.8152e-34);
    v26 = v25;
    v27 = sub_1C441D828(v24, v25, &v31);

    sub_1C43FE160();
    *(v22 + 14) = v27;

    *(v22 + 22) = v26;
    *(v22 + 24) = v17;
    sub_1C4409328(&dword_1C43F8000, v28, v29, "ViewUpdate: %s: Retrieved %ld subjects [lastTimestamp: %f]");
    sub_1C440962C(v23);
    sub_1C43FBE2C();
    sub_1C43FEA20();
  }

  else
  {

    sub_1C44174AC();
    swift_bridgeObjectRelease_n();
  }

  return v18;
}

uint64_t sub_1C4CDFB34(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  if (a2)
  {
    v8 = *(v5 + 152);
    if ((a5 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = *&a1;
    if ((a5 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (qword_1EDDF9958 != -1)
  {
    swift_once();
  }

  a4 = qword_1EDE2DBB0;
LABEL_8:
  v9 = *(v5 + 184);
  v10 = sub_1C487B928(a3, *(v6 + 88), *(v6 + 80), a4, v8);
  v12 = v11;
  v13 = v10;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC();
  }

  v14 = sub_1C4F00978();
  sub_1C442B738(v14, qword_1EDE2DF70);
  sub_1C44174AC();
  swift_bridgeObjectRetain_n();

  v15 = sub_1C4F00968();
  v16 = sub_1C4F01CC8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = sub_1C43FFD34();
    v18 = sub_1C43FFD34();
    v26 = v18;
    v19 = sub_1C4408100(4.8152e-34);
    v21 = v20;
    v22 = sub_1C441D828(v19, v20, &v26);

    sub_1C43FE160();
    *(v17 + 14) = v22;

    *(v17 + 22) = v21;
    *(v17 + 24) = v12;
    sub_1C4409328(&dword_1C43F8000, v23, v24, "ViewUpdate: %s: Retrieved %ld triples [lastTimestamp: %f]");
    sub_1C440962C(v18);
    sub_1C43FBE2C();
    sub_1C43FEA20();
  }

  else
  {

    sub_1C44174AC();
    swift_bridgeObjectRelease_n();
  }

  return v13;
}

void *sub_1C4CDFCF0()
{
  v1 = v0[3];

  v2 = v0[6];

  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[13];

  v6 = v0[23];

  v7 = v0[24];

  return v0;
}

uint64_t sub_1C4CDFD54()
{
  sub_1C4CDFCF0();

  return swift_deallocClassInstance();
}

unint64_t sub_1C4CDFEA0(uint64_t a1)
{
  result = sub_1C4CDFEC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4CDFEC8()
{
  result = qword_1EDDFC400;
  if (!qword_1EDDFC400)
  {
    _s20KnowledgeGraphSourceCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC400);
  }

  return result;
}

uint64_t sub_1C4CDFF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v8 = *(a6 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v30 = a1;
    v31 = a2;
    v32 = a7;
    v33 = a3;
    v34 = a8;
    v35 = a4;
    v36 = a5;
    v47 = MEMORY[0x1E69E7CC0];
    sub_1C459F1A8(0, v8, 0);
    v9 = v47;
    v11 = (a6 + 50);
    do
    {
      v12 = *(v11 - 10);
      v40 = *(v11 - 1);
      v41 = *(v11 - 2);
      v39 = *v11;
      v13 = *(v11 - 18);
      v14 = [v13 configIdentifier];
      v15 = [v14 view];

      v16 = sub_1C4F01138();
      v37 = v17;
      v38 = v16;

      v18 = [v13 configIdentifier];
      v19 = [v18 index];

      v20 = [v13 configIdentifier];
      v21 = sub_1C443D554(v13);
      v23 = v22;
      v24 = objc_allocWithZone(MEMORY[0x1E69A9F20]);
      v25 = sub_1C4450F04(v20, v21, v23);

      v27 = *(v47 + 16);
      v26 = *(v47 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1C459F1A8((v26 > 1), v27 + 1, 1);
      }

      v11 += 24;
      *(v47 + 16) = v27 + 1;
      v28 = v47 + 72 * v27;
      *(v28 + 32) = v38;
      *(v28 + 40) = v37;
      *(v28 + 48) = v40;
      *(v28 + 49) = *v46;
      *(v28 + 52) = *&v46[3];
      *(v28 + 56) = v19;
      *(v28 + 64) = v41;
      *(v28 + 65) = 0;
      *(v28 + 70) = v45;
      *(v28 + 66) = v44;
      *(v28 + 72) = v13;
      *(v28 + 80) = v12;
      *(v28 + 88) = v41;
      *(v28 + 89) = v40;
      *(v28 + 90) = v39;
      *(v28 + 91) = v42;
      *(v28 + 95) = v43;
      *(v28 + 96) = v25;
      --v8;
    }

    while (v8);
    a4 = v35;
    a5 = v36;
    a8 = v34;
    a3 = v33;
    a7 = v32;
    a1 = v30;
    a2 = v31;
  }

  sub_1C4456AA4(a1, a2, a3, a4, a5, v9, a7 & 1, a8 & 1);
}

uint64_t sub_1C4CE01B8(uint64_t a1, uint64_t a2)
{
  v4 = _s20BookmarkLoadingStateVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C4CE0268()
{
  sub_1C4EF9CD8();
  if (v0 <= 0x3F)
  {
    sub_1C4CE0308();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C4CE0308()
{
  if (!qword_1EDDDBD18)
  {
    v0 = sub_1C4F017A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDDBD18);
    }
  }
}

uint64_t static ViewUpdate.Manager.sharedViewUpdateManager(for:)()
{
  if (qword_1EDDF9710 != -1)
  {
    swift_once();
  }

  return sub_1C4415590();
}

uint64_t sub_1C4CE03C8()
{
  sub_1C43FCF70();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = *(v0 + 64);

  sub_1C4463890(v3, v4);
  sub_1C43FBDA0();
  v6 = *(v0 + 48);

  return v5();
}

uint64_t sub_1C4CE0448()
{
  v0 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  v1 = sub_1C43FBD18(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10 - v4;
  v6 = sub_1C4F018C8();
  sub_1C440BAA8(v5, 1, 1, v6);
  sub_1C43FBDBC();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  sub_1C4AC1918(0, 0, v5, &unk_1C4F6AD58, v8);

  return sub_1C440C2C8(v5);
}

uint64_t sub_1C4CE0544(uint64_t a1, __int16 a2)
{
  *(v3 + 40) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return sub_1C43FEB04();
}

uint64_t sub_1C4CE055C()
{
  sub_1C43FCF70();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 40);

  sub_1C4428D8C(v2, v3);
  v4 = sub_1C44150BC(dword_1C4F6AD40);
  *(v0 + 32) = v4;
  *v4 = v0;
  v5 = sub_1C4409348(v4);

  return v6(v5);
}

uint64_t sub_1C4CE05FC()
{
  sub_1C43FBCD4();
  v3 = v2;
  v4 = *(*v1 + 32);
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

void sub_1C4CE06F0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_liveState);
  os_unfair_lock_lock(v6 + 6);
  sub_1C4422F74(&v7);
  os_unfair_lock_unlock(v6 + 6);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    sub_1C4D22BA0(a2, a3);
  }
}

void *sub_1C4CE07B0()
{
  v2 = v0;
  v3 = type metadata accessor for Configuration();
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  if (*(v2 + 16))
  {
    v10 = *(v2 + 16);
  }

  else
  {
    sub_1C4401144();
    sub_1C4431074(v2 + v11, v9, v12);
    v13 = type metadata accessor for GraphStore();
    v14 = sub_1C44099C4(v13);
    v15 = v9;
    v10 = v14;
    v16 = GraphStore.init(config:)(v15);
    if (v1)
    {
      return v10;
    }

    v10 = v16;
    v18 = *(v2 + 16);
    *(v2 + 16) = v16;
  }

  return v10;
}

void *sub_1C4CE0894()
{
  v2 = v0;
  v3 = type metadata accessor for Configuration();
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  if (*(v2 + 24))
  {
    v10 = *(v2 + 24);
  }

  else
  {
    v11 = type metadata accessor for GlobalKnowledgeStore(0);
    sub_1C4401144();
    sub_1C4431074(v2 + v12, v9, v13);
    v14 = v9;
    v10 = v11;
    v15 = sub_1C48300AC(v14);
    if (v1)
    {
      return v10;
    }

    v10 = v15;
    v17 = *(v2 + 24);
    *(v2 + 24) = v15;
  }

  return v10;
}

uint64_t sub_1C4CE0970(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for Configuration();
  v8 = sub_1C43FBD18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  swift_beginAccess();
  v14 = *(v2 + 32);
  if (*(v14 + 16) && (v15 = sub_1C445FAA8(a1, a2), (v16 & 1) != 0))
  {
    v13 = *(*(v14 + 56) + 8 * v15);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1C4401144();
    sub_1C4431074(v4 + v17, v13, v18);
    v19 = type metadata accessor for KeyValueStore();
    sub_1C44099C4(v19);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v20 = KeyValueStore.init(config:domain:)(v13, a1, a2);
    if (!v3)
    {
      v13 = v20;
      swift_beginAccess();

      v21 = *(v4 + 32);
      swift_isUniquelyReferenced_nonNull_native();
      v23 = *(v4 + 32);
      sub_1C4663048();
      *(v4 + 32) = v23;
      swift_endAccess();
    }
  }

  return v13;
}

uint64_t sub_1C4CE0AF0()
{
  sub_1C456902C(&qword_1EC0C6178, &qword_1C4F6AD78);
  sub_1C43FBDBC();
  swift_allocObject();
  result = sub_1C4CE5500();
  qword_1EDE2DB88 = result;
  return result;
}

id sub_1C4CE0B38(uint64_t a1)
{
  v3 = v1;
  v114 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for Configuration();
  v6 = sub_1C43FBCE0(v5);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v99 - v12;
  v14 = [objc_opt_self() defaultManager];
  v15 = sub_1C4EF9868();
  v111[0] = 0;
  v16 = [v14 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:v111];

  v17 = v111[0];
  if (!v16)
  {
    v38 = v111[0];
    sub_1C4EF97A8();

    goto LABEL_9;
  }

  v107 = v3;
  v18 = qword_1EDDFECB0;
  v19 = v111[0];
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = sub_1C4F00978();
  sub_1C442B738(v20, qword_1EDDFECB8);
  v17 = sub_1C4F00968();
  sub_1C4F01CF8();
  v21 = sub_1C4404760();
  if (os_log_type_enabled(v21, v22))
  {
    sub_1C43FD1A8();
    v23 = swift_slowAlloc();
    sub_1C4405D10(v23);
    sub_1C440FE5C();
    _os_log_impl(v24, v25, v26, v27, v28, v29);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  if (sub_1C4B6A8D0(a1, v30, v31, v32, v33, v34, v35, v36) == 2)
  {
    sub_1C4C8E964();
    swift_allocError();
    *v37 = 0;
LABEL_9:
    swift_willThrow();
LABEL_10:
    sub_1C441AA04();
    v40 = a1;
LABEL_11:
    sub_1C4454484(v40, v39);
    goto LABEL_12;
  }

  if (qword_1EDDFF220 != -1)
  {
    swift_once();
  }

  sub_1C4949698();
  if (qword_1EDDFF418 != -1)
  {
    swift_once();
  }

  sub_1C4949658();
  if (qword_1EDDFF248 != -1)
  {
    swift_once();
  }

  sub_1C49495C4();
  if (qword_1EDDFF168 != -1)
  {
    swift_once();
  }

  sub_1C4949584();
  if (qword_1EDDFF500 != -1)
  {
    sub_1C4417AB0();
    swift_once();
  }

  sub_1C44270DC();
  if (qword_1EDDFEE20 != -1)
  {
    sub_1C4403ADC();
    swift_once();
  }

  sub_1C4427314();
  if (qword_1EDDFF230 != -1)
  {
    sub_1C43FE184();
    swift_once();
  }

  sub_1C4427394();
  v43 = (a1 + *(v5 + 20));
  v45 = *v43;
  v44 = v43[1];
  if (qword_1EDDFEC48 != -1)
  {
    swift_once();
  }

  v46 = xmmword_1EDDFEC50 & ~v45 | *(&xmmword_1EDDFEC50 + 1) & ~v44;
  v47 = v46 == 0;
  if (v46)
  {
    if (qword_1EDDFEC10 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC18 & ~v45) == 0 && (*(&xmmword_1EDDFEC18 + 1) & v44) == *(&xmmword_1EDDFEC18 + 1))
    {
      LODWORD(v106) = v47;
      v49 = sub_1C4F00968();
      sub_1C4F01CF8();
      v50 = sub_1C4404760();
      if (os_log_type_enabled(v50, v51))
      {
        sub_1C43FD1A8();
        v52 = swift_slowAlloc();
        sub_1C4405D10(v52);
        sub_1C440FE5C();
        _os_log_impl(v53, v54, v55, v56, v57, v58);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      static ViewGeneration.start(configuration:)();
      v59 = *&v13[*(v5 + 20)];
      if (qword_1EDDFEC88 != -1)
      {
        v105 = *&v13[*(v5 + 20)];
        swift_once();
        v59 = v105;
      }

      sub_1C43FC158(xmmword_1EDDFEC90, v59);
      v47 = v106;
      if (v60)
      {
        v61 = sub_1C4F00968();
        sub_1C4F01CD8();
        v62 = sub_1C4404760();
        if (os_log_type_enabled(v62, v63))
        {
          sub_1C43FD1A8();
          v64 = swift_slowAlloc();
          sub_1C4405D10(v64);
          sub_1C440FE5C();
          _os_log_impl(v65, v66, v67, v68, v69, v70);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        sub_1C4C8E964();
        swift_allocError();
        *v71 = 1;
        swift_willThrow();
        v17 = type metadata accessor for Configuration;
        sub_1C4454484(a1, type metadata accessor for Configuration);
        v40 = v13;
        v39 = type metadata accessor for Configuration;
        goto LABEL_11;
      }

      sub_1C441AA04();
      sub_1C4454484(v13, v73);
    }
  }

  else
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E69A9F28]) init];
    v111[0] = 0;
    if (![v17 migrateViewDatabasesWithError_])
    {
      v72 = v111[0];
      sub_1C4EF97A8();

      swift_willThrow();
      goto LABEL_10;
    }

    v48 = v111[0];
  }

  if (qword_1EDDFF7A0 != -1)
  {
    sub_1C4432DE8();
    swift_once();
  }

  v17 = qword_1EDE2E060;
  sub_1C441F0B4();
  v74 = sub_1C44273D4();
  if (v2)
  {
    goto LABEL_10;
  }

  v75 = v74;
  sub_1C4401144();
  sub_1C4431074(a1, v11, v76);
  v77 = _s7ManagerC20SourceResourceHolderCMa(0);
  v78 = sub_1C44099C4(v77);
  sub_1C4CE3098(v11);
  sub_1C4CE7384(a1, v111);
  v79 = [BiomeLibrary() IntelligencePlatform];
  swift_unknownObjectRelease();
  v80 = [v79 Views];
  swift_unknownObjectRelease();
  v81 = [v80 Updated];
  swift_unknownObjectRelease();
  v82 = [v81 source];

  if (qword_1EDDFE3A8 != -1)
  {
    swift_once();
  }

  sub_1C441F0B4();
  v83 = sub_1C4ABFA6C();
  v84 = sub_1C441F0B4();
  static ViewUpdate.GenerationRunnerSingleton.viewUpdateRunner(for:)(v84, v85);
  _s12JobSchedulerCMa(0);
  *&v105 = sub_1C4CDA9AC();
  _s9LiveStateCMa();
  v104 = swift_allocObject();
  if (qword_1EDDF9A78 != -1)
  {
LABEL_60:
    swift_once();
  }

  sub_1C441F0B4();
  v99 = sub_1C4ABFB00();
  v100 = v82;
  v101 = v83;
  v102 = v78;
  v83 = &v99;
  v86 = *(v75 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);
  MEMORY[0x1EEE9AC00](v99);
  *(&v99 - 4) = sub_1C4CE1758;
  *(&v99 - 3) = 0;
  v103 = v75;
  v98 = v75;
  v82 = sub_1C49A5788(sub_1C498DB0C, (&v99 - 6));
  v87 = 0;
  v106 = v82[2];
  while (v106 != v87)
  {
    if (v87 >= v82[2])
    {
      __break(1u);
      goto LABEL_60;
    }

    v78 = v47;
    v75 = v87 + 1;
    v83 = v112;
    v88 = v113;
    v89 = *(v82 + v87 + 32);
    sub_1C4409678(v111, v112);
    (*(v88 + 8))(v89, v83, v88);
    v87 = v75;
    v47 = v78;
  }

  sub_1C442E860(v110, v109);
  sub_1C442E860(v111, v108);
  sub_1C4401144();
  sub_1C4431074(a1, v11, v90);
  v17 = sub_1C44099C4(v107);
  v91 = v103;

  v92 = v100;
  v107 = v100;
  v93 = v101;

  v94 = v105;

  v95 = v99;

  sub_1C4CE17A4(v91, v102, v109, v108, v92, v93, v94, v95, v96, v11);
  if ((v47 & 1) == 0)
  {

    sub_1C442AFA8();
  }

  sub_1C441AA04();
  sub_1C4454484(a1, v97);
  sub_1C440962C(v110);
  sub_1C440962C(v111);
LABEL_12:
  v41 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t sub_1C4CE1758@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C4CE744C(a1, a2);
  if (!v3)
  {
    result = sub_1C4CE753C(a1, a2);
    *a3 = result;
  }

  return result;
}

void *sub_1C4CE17A4(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  swift_weakInit();
  sub_1C4401144();
  sub_1C4431074(a10, v11 + v19, v20);
  v11[2] = a1;
  sub_1C442E860(a4, (v11 + 9));
  *(v11 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_synchronizedUpdater) = a7;
  sub_1C456902C(&qword_1EC0C6160, &qword_1C4F6AD60);
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  *(v21 + 16) = a9;
  *(v11 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_liveState) = v21;
  _s21HighPriorityTaskStateCMa();
  swift_allocObject();
  sub_1C4CE7904();
  v23 = v22;
  sub_1C456902C(&qword_1EC0C6168, &qword_1C4F6AD68);
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  *(v24 + 16) = v23;
  *(v11 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_highPriortyTaskState) = v24;
  _s13LiveTaskStateCMa();
  swift_allocObject();
  sub_1C4CE7940();
  v26 = v25;
  sub_1C456902C(&qword_1EC0C6170, &qword_1C4F6AD70);
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  *(v27 + 16) = v26;
  sub_1C441AA04();
  sub_1C4454484(a10, v28);
  sub_1C440962C(a4);
  *(v11 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_liveTaskState) = v27;
  v11[3] = a2;
  v11[15] = a6;
  v11[16] = a8;
  v11[14] = a5;
  sub_1C441D670(a3, (v11 + 4));
  return v11;
}

uint64_t sub_1C4CE1968(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  *(v4 + 72) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CE1990, 0, 0);
}

void sub_1C4CE1990()
{
  v3 = v2[2];
  sub_1C441E858(OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_liveState);
  sub_1C4426228();
  sub_1C44276F4(v4);
  if (v1)
  {

    os_unfair_lock_unlock(v0 + 6);
  }

  else
  {
    v5 = v2[3];
    os_unfair_lock_unlock(v0 + 6);
    v2[5] = v11;
    v6 = *(v5 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_synchronizedUpdater);
    v7 = swift_task_alloc();
    v2[6] = v7;
    *v7 = v2;
    v8 = sub_1C44355F4(v7);

    sub_1C4CDBEF4(v8, v9, v10);
  }
}

uint64_t sub_1C4CE1A84()
{
  sub_1C43FCF70();
  sub_1C441246C();
  v4 = v3;
  sub_1C44001F0();
  *v5 = v4;
  v7 = *(v6 + 48);
  v8 = *v2;
  sub_1C43FBDAC();
  *v9 = v8;
  *(v4 + 56) = v0;

  if (!v0)
  {
    *(v4 + 64) = v1;
  }

  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C4CE1B88()
{
  sub_1C43FCF70();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = *(v0 + 72);

  sub_1C4463890(v2, v4);
  v5 = *(v0 + 8);
  v6 = *(v0 + 64);

  return v5(v6);
}

uint64_t sub_1C4CE1C10()
{
  sub_1C43FCF70();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = *(v0 + 72);

  sub_1C4463890(v2, v4);
  sub_1C43FBDA0();
  v6 = *(v0 + 56);

  return v5();
}

uint64_t sub_1C4CE1C90(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  *(v4 + 72) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CE1CB8, 0, 0);
}

void sub_1C4CE1CB8()
{
  v3 = v2[2];
  sub_1C441E858(OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_liveState);
  sub_1C4426228();
  sub_1C44276F4(v4);
  if (v1)
  {

    os_unfair_lock_unlock(v0 + 6);
  }

  else
  {
    v5 = v2[3];
    os_unfair_lock_unlock(v0 + 6);
    v2[5] = v11;
    v6 = *(v5 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_synchronizedUpdater);
    v7 = swift_task_alloc();
    v2[6] = v7;
    *v7 = v2;
    v8 = sub_1C44355F4(v7);

    sub_1C4CDC150(v8, v9, v10);
  }
}

uint64_t sub_1C4CE1DAC()
{
  sub_1C43FCF70();
  sub_1C441246C();
  v4 = v3;
  sub_1C44001F0();
  *v5 = v4;
  v7 = *(v6 + 48);
  v8 = *v2;
  sub_1C43FBDAC();
  *v9 = v8;
  *(v4 + 56) = v0;

  if (!v0)
  {
    *(v4 + 64) = v1;
  }

  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C4CE1EB0(uint64_t a1, __int16 a2)
{
  *(v3 + 40) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return sub_1C43FEB04();
}

uint64_t sub_1C4CE1EC8()
{
  sub_1C43FCF70();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 40);

  sub_1C4428D8C(v2, v3);
  v4 = sub_1C44150BC(dword_1C4F6AD30);
  *(v0 + 32) = v4;
  *v4 = v0;
  v5 = sub_1C4409348(v4);

  return v6(v5);
}

uint64_t sub_1C4CE1F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C4CE1F88, 0, 0);
}

uint64_t sub_1C4CE1F88()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_synchronizedUpdater);
    *(v0 + 64) = v3;

    return MEMORY[0x1EEE6DFA0](sub_1C4CE2068, v3, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    sub_1C43FBDA0();

    return v4();
  }
}

uint64_t sub_1C4CE2068()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 64);

  sub_1C4CDB304(v2, v1);

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C4CE20DC()
{
  **(v0 + 40) = *(v0 + 56) == 0;
  sub_1C43FBDA0();
  return v1();
}

uint64_t ViewUpdate.Manager.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_1C440962C((v0 + 32));
  sub_1C440962C((v0 + 72));

  v3 = *(v0 + 120);

  v4 = *(v0 + 128);

  sub_1C441AA04();
  sub_1C4454484(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_synchronizedUpdater);

  v8 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_liveState);

  v9 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_highPriortyTaskState);

  v10 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_liveTaskState);

  swift_weakDestroy();
  return v0;
}

uint64_t sub_1C4CE2208()
{
  result = type metadata accessor for Configuration();
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

uint64_t sub_1C4CE22EC(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0x206E776F6E6B6E75;
  }

  strcpy(v4, "SQLite error ");
  v3 = sub_1C4F02858();
  MEMORY[0x1C6940010](v3);

  return v4[0];
}

uint64_t sub_1C4CE2394()
{
  sub_1C43FBCD4();
  *(v1 + 153) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v0;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = sub_1C4F00978();
  *(v1 + 48) = v6;
  v7 = *(v6 - 8);
  *(v1 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  v9 = _s10ViewConfigVMa(0);
  *(v1 + 88) = v9;
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64) + 15;
  *(v1 + 96) = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C4CE2498()
{
  v63 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v5 = swift_allocObject();
  *(v0 + 104) = v5;
  *(v5 + 16) = xmmword_1C4F0D130;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4955A90(sub_1C4CE33D0, v7);
  v9 = *(v0 + 88);
  v8 = *(v0 + 96);

  v10 = *(v8 + *(v9 + 92));
  if (v10 == 2 || (v10 & 1) == 0)
  {
    v27 = *(v0 + 64);
    v28 = *(v0 + 24);

    sub_1C4F00178();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v29 = sub_1C4F00968();
    v30 = sub_1C4F01CC8();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 96);
    v33 = *(v0 + 56);
    v34 = *(v0 + 64);
    v35 = *(v0 + 48);
    if (v31)
    {
      v36 = *(v0 + 153);
      v37 = *(v0 + 32);
      v57 = *(v0 + 16);
      v59 = *(v0 + 24);
      v61 = *(v0 + 96);
      v38 = swift_slowAlloc();
      v62[0] = swift_slowAlloc();
      *v38 = 136315394;
      v39 = sub_1C4CE22EC(v37, v36 & 1);
      v41 = sub_1C441D828(v39, v40, v62);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2080;
      *(v38 + 14) = sub_1C441D828(v57, v59, v62);
      _os_log_impl(&dword_1C43F8000, v29, v30, "ViewUpdate.Manager: reportError: client reported %s for %s but view does not support recovery.", v38, 0x16u);
      swift_arrayDestroy();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();

      (*(v33 + 8))(v34, v35);
      sub_1C442D830();
      v43 = v61;
    }

    else
    {

      (*(v33 + 8))(v34, v35);
      sub_1C442D830();
      v43 = v32;
    }

    sub_1C4454484(v43, v42);
    v44 = *(v0 + 96);
    v45 = *(v0 + 72);
    v46 = *(v0 + 80);
    v47 = *(v0 + 64);

    sub_1C43FBDA0();
    sub_1C440405C();

    __asm { BRAA            X1, X16 }
  }

  v11 = *(v0 + 80);
  v12 = *(v0 + 24);
  sub_1C4F00178();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = sub_1C4F00968();
  v14 = sub_1C4F01CC8();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 80);
  v18 = *(v0 + 48);
  v17 = *(v0 + 56);
  if (v15)
  {
    v56 = *(v0 + 153);
    v20 = *(v0 + 24);
    v19 = *(v0 + 32);
    v60 = *(v0 + 80);
    v21 = *(v0 + 16);
    v58 = *(v0 + 48);
    v22 = swift_slowAlloc();
    v62[0] = swift_slowAlloc();
    *v22 = 136315394;
    *(v22 + 4) = sub_1C441D828(v21, v20, v62);
    *(v22 + 12) = 2080;
    v23 = sub_1C4CE22EC(v19, v56 & 1);
    v25 = sub_1C441D828(v23, v24, v62);

    *(v22 + 14) = v25;
    _os_log_impl(&dword_1C43F8000, v13, v14, "ViewUpdate.Manager: reportError: truncating %s due to %s", v22, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

    v26 = *(v17 + 8);
    v26(v60, v58);
  }

  else
  {

    v26 = *(v17 + 8);
    v26(v16, v18);
  }

  *(v0 + 112) = v26;
  v50 = swift_task_alloc();
  *(v0 + 120) = v50;
  *v50 = v0;
  v50[1] = sub_1C4CE2964;
  v51 = *(v0 + 40);
  sub_1C440405C();

  return sub_1C4CE1EB0(v52, v53);
}

uint64_t sub_1C4CE2964()
{
  sub_1C43FCF70();
  sub_1C441246C();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (v0)
  {
    v9 = *(v3 + 104);
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C4CE2A74()
{
  v33 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  sub_1C4F00178();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CC8();

  if (os_log_type_enabled(v3, v4))
  {
    v30 = *(v0 + 72);
    v31 = *(v0 + 112);
    v5 = *(v0 + 56);
    v29 = *(v0 + 48);
    v6 = *(v0 + 153);
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);
    v9 = *(v0 + 16);
    v10 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_1C441D828(v9, v8, &v32);
    *(v10 + 12) = 2080;
    v11 = sub_1C4CE22EC(v7, v6 & 1);
    v13 = sub_1C441D828(v11, v12, &v32);

    *(v10 + 14) = v13;
    _os_log_impl(&dword_1C43F8000, v3, v4, "ViewUpdate.Manager: reportError: fully rebuilding %s due to %s", v10, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

    v31(v30, v29);
  }

  else
  {
    v14 = *(v0 + 112);
    v15 = *(v0 + 72);
    v16 = *(v0 + 48);
    v17 = *(v0 + 56);

    v14(v15, v16);
  }

  v18 = *(v0 + 104);
  *(v0 + 152) = 3;
  v19 = swift_task_alloc();
  *(v0 + 136) = v19;
  *v19 = v0;
  v19[1] = sub_1C4CE2CB0;
  v20 = *(v0 + 40);
  sub_1C440405C();

  return sub_1C4427590(v21, v22, v23, v24, v25, v26);
}

uint64_t sub_1C4CE2CB0()
{
  sub_1C43FCF70();
  sub_1C441246C();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 144) = v0;

  if (v0)
  {
    v9 = *(v3 + 104);
  }

  else
  {
    v10 = *(v3 + 104);
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C4CE2DCC()
{
  sub_1C43FCF70();
  v1 = v0[12];
  sub_1C442D830();
  sub_1C4454484(v2, v3);
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];

  sub_1C43FBDA0();

  return v8();
}

uint64_t sub_1C4CE2E5C()
{
  sub_1C43FCF70();
  v1 = v0[12];
  sub_1C442D830();
  sub_1C4454484(v2, v3);
  v4 = v0[16];
  v5 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];

  sub_1C43FBDA0();

  return v9();
}

uint64_t sub_1C4CE2EEC()
{
  sub_1C43FCF70();
  v1 = v0[12];
  sub_1C442D830();
  sub_1C4454484(v2, v3);
  v4 = v0[18];
  v5 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];

  sub_1C43FBDA0();

  return v9();
}

void sub_1C4CE2F7C(uint64_t a1@<X8>)
{
  v3 = _s16ViewConfigRecordVMa();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4BAF42C();
  if (!v1)
  {
    sub_1C4BB0EA0();
    sub_1C4431074(&v6[*(v3 + 68)], a1, _s10ViewConfigVMa);
    sub_1C4454484(v6, _s16ViewConfigRecordVMa);
  }
}

void *sub_1C4CE3098(uint64_t a1)
{
  type metadata accessor for KeyValueStore();
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = sub_1C4F00F28();
  sub_1C4409954(a1, v1 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate7Manager20SourceResourceHolder_config);
  return v1;
}

void *sub_1C4CE3100()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  sub_1C441AA04();
  sub_1C4454484(v0 + v4, v5);
  return v0;
}

uint64_t sub_1C4CE315C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4CE31E0()
{
  result = type metadata accessor for Configuration();
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

_BYTE *_s12StartupErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4CE337C()
{
  result = qword_1EC0C6158;
  if (!qword_1EC0C6158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6158);
  }

  return result;
}

void sub_1C4CE33D0(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1C4CE2F7C(a1);
}

uint64_t sub_1C4CE33EC()
{
  sub_1C43FCF70();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1C4707B70;

  return sub_1C4CE1F68(v3, v4, v5, v6);
}

void sub_1C4CE34B8()
{
  sub_1C44FCC6C(319, &qword_1EDDFEAB0);
  if (v0 <= 0x3F)
  {
    sub_1C44FCC6C(319, &qword_1EDDFEA48);
    if (v1 <= 0x3F)
    {
      sub_1C4EF9CD8();
      if (v2 <= 0x3F)
      {
        sub_1C45C2C2C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

_BYTE *_s7MetricsO12UpdateStatusOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C4CE36A4(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      v3 = 0x656C706D6F63;
      goto LABEL_6;
    case 2:
      result = 0x6465727265666564;
      break;
    case 3:
      v3 = 0x616470556F6ELL;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6574000000000000;
      break;
    case 4:
      result = 0x7461647055746F6ELL;
      break;
    case 5:
      result = 0x726F727265;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C4CE3770()
{
  result = qword_1EC0C6180;
  if (!qword_1EC0C6180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6180);
  }

  return result;
}

uint64_t sub_1C4CE37C4(uint64_t a1, unint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a2 >> 60 != 15)
  {
    sub_1C456902C(&qword_1EC0C4030, &unk_1C4F57320);
    sub_1C4464058();
    sub_1C44640AC();
    result = sub_1C4EF9498();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C4CE3894(id a1, void *a2)
{
  v4 = v3;
  v7 = _s10ViewConfigVMa(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v80[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v80[-v13];
  v15 = [a1 state];
  sub_1C4F01138();

  v16 = sub_1C443BE78();
  if (v16 == 5)
  {
    v91 = a2;
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v17 = sub_1C4F00978();
    sub_1C442B738(v17, qword_1EDDFECB8);
    sub_1C463F29C(v91, v10);
    a1 = a1;
    v18 = sub_1C4F00968();
    v19 = sub_1C4F01CD8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *v20 = 136315394;
      v21 = *v10;
      v22 = v10[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C445F57C(v10);
      v23 = sub_1C441D828(v21, v22, &v92);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      v24 = [a1 state];
      v25 = sub_1C4F01138();
      v27 = v26;

      v28 = sub_1C441D828(v25, v27, &v92);

      *(v20 + 14) = v28;
      _os_log_impl(&dword_1C43F8000, v18, v19, "Invalid source state for view %s: %s", v20, 0x16u);
      swift_arrayDestroy();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      sub_1C445F57C(v10);
    }

    v92 = 0;
    v93 = 0xE000000000000000;
    sub_1C4F02248();

    v92 = 0xD00000000000001ELL;
    v93 = 0x80000001C4FC3990;
    v34 = v91;
    MEMORY[0x1C6940010](*v91, v91[1]);
    MEMORY[0x1C6940010](8250, 0xE200000000000000);
    v62 = [a1 state];
    v63 = sub_1C4F01138();
    v65 = v64;

    MEMORY[0x1C6940010](v63, v65);

LABEL_20:
    v67 = v92;
    v2 = v93;
    sub_1C446D0DC();
    swift_allocError();
    *v68 = v67;
    *(v68 + 8) = v2;
    *(v68 + 16) = 2;
    swift_willThrow();

    goto LABEL_21;
  }

  v29 = v16;
  v30 = [a1 configIdentifier];
  v31 = [v30 index];

  v32 = v31;
  v33 = a2[35];
  v34 = a2;
  if (!v33 || *(v33 + 16) <= v32)
  {
    v53 = v32;
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    sub_1C4401300();
    v54 = sub_1C4F00978();
    sub_1C442B738(v54, qword_1EDDFECB8);
    sub_1C463F29C(v34, v14);
    v55 = sub_1C4F00968();
    v56 = sub_1C4F01CD8();
    if (os_log_type_enabled(v55, v56))
    {
      v4 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v92 = v91;
      *v4 = 136315650;
      *(v4 + 4) = sub_1C441D828(0x6163696669746F6ELL, 0xEC0000006E6F6974, &v92);
      *(v4 + 12) = 2048;
      *(v4 + 14) = v53;
      *(v4 + 22) = 2080;
      v57 = a1;
      v58 = v34;
      v59 = *v14;
      v60 = v14[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C445F57C(v14);
      v61 = sub_1C441D828(v59, v60, &v92);
      v34 = v58;
      a1 = v57;

      *(v4 + 24) = v61;
      _os_log_impl(&dword_1C43F8000, v55, v56, "Config identifier of type %s of index %ld does not exist for %s", v4, 0x20u);
      swift_arrayDestroy();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C4401300();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      sub_1C445F57C(v14);
    }

    v92 = 0;
    v93 = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD00000000000001ALL, 0x80000001C4FC39B0);
    MEMORY[0x1C6940010](v4, 0xEC0000006E6F6974);
    MEMORY[0x1C6940010](0x65646E6920666F20, 0xEA00000000002078);
    v94 = v53;
    v66 = sub_1C4F02858();
    MEMORY[0x1C6940010](v66);

    MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FC39D0);
    MEMORY[0x1C6940010](*v34, v34[1]);
    goto LABEL_20;
  }

  v91 = a2;
  v35 = v32;
  v36 = sub_1C443D554(a1);
  v38 = v37;
  sub_1C4CE37C4(v36, v37);
  v40 = v39;
  result = sub_1C441DFEC(v36, v38);
  v42 = v35;
  if ((v35 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else if (*(v33 + 16) > v35)
  {
    v43 = *v91;
    v44 = v91[1];
    v45 = v33 + 32 * v42;
    v90 = *(v45 + 32);
    v46 = *(v45 + 40);
    v47 = *(v45 + 48);
    v88 = v43;
    v89 = v46;
    v48 = *(v45 + 56);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v49 = sub_1C443ED0C([a1 configIdentifier]);
    if (!v3)
    {
      v82 = v52;
      v83 = v51;
      v84 = v50;
      v85 = v49;
      v86 = v48;
      v87 = v44;
      v81 = [a1 triggered];
      sub_1C4441C50(v29);
      if (v70 == 0x65676E6168436F6ELL && v69 == 0xE900000000000073)
      {

        v73 = 1;
      }

      else
      {
        v72 = sub_1C4F02938();

        v73 = v72 & 1;
      }

      v74 = sub_1C445CA14(a1);
      v76 = v75;
      sub_1C4CE37C4(v74, v75);
      v78 = v77;

      sub_1C441DFEC(v74, v76);
      v2 = swift_allocObject();
      BYTE2(v79) = v73;
      BYTE1(v79) = v29;
      LOBYTE(v79) = v81;
      sub_1C4CE4390(v88, v87, v90, v89, v47, v86, v85, v84, v40, v40, v78, v83, v82, v79);
      sub_1C445F57C(v91);
      return v2;
    }

    v34 = v91;
LABEL_21:
    sub_1C445F57C(v34);
    return v2;
  }

  __break(1u);
  return result;
}

double sub_1C4CE4094@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s18NotificationSourceCMa();
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  sub_1C444C58C(a2, v13);
  sub_1C4CE37C4(v6, v7);
  if (v8 == *(a1 + 40))
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = sub_1C4464FF0(*(a1 + 40));
  *a3 = v9;
  *(a3 + 1) = 1;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v10;
  *(a3 + 32) = v11;
  result = 0.0;
  *(a3 + 40) = xmmword_1C4F29230;
  return result;
}

double sub_1C4CE4138@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1C4CE4094(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    result = *&v8;
    *(a3 + 32) = v8;
    *(a3 + 48) = v9;
  }

  return result;
}

uint64_t sub_1C4CE4188()
{
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000028, 0x80000001C4FC4C00);
  if (*(v0 + 32))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1C6940010](v1, v2);

  MEMORY[0x1C6940010](0x3A6574617473202CLL, 0xE900000000000020);
  v10 = *(v0 + 33);
  sub_1C43FF824();
  MEMORY[0x1C6940010](0x6E6F70736572202CLL, 0xEC000000203A6573);
  v11 = *(v0 + 34);
  sub_1C43FF824();
  MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FC3970);
  v3 = *(v0 + 64);
  v4 = *(v0 + 56);
  v5 = sub_1C444F05C(*(v0 + 40), *(v0 + 48));
  MEMORY[0x1C6940010](v5);

  MEMORY[0x1C6940010](0x616974696E69202CLL, 0xEB00000000203A6CLL);
  v6 = *(v0 + 112);
  sub_1C44208D8();
  MEMORY[0x1C6940010](0x6E6572727563202CLL, 0xEB00000000203A74);
  v7 = *(v0 + 120);
  sub_1C44208D8();
  MEMORY[0x1C6940010](0x74736574616C202CLL, 0xEA0000000000203ALL);
  v8 = *(v0 + 128);
  sub_1C44208D8();
  MEMORY[0x1C6940010](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C4CE4390(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, char a12, uint64_t a13, int a14)
{
  *(v14 + 136) = 2;
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 72) = a3;
  *(v14 + 80) = a4;
  *(v14 + 88) = a5;
  *(v14 + 96) = a6;
  *(v14 + 40) = a7;
  *(v14 + 48) = a8;
  *(v14 + 56) = a12;
  *(v14 + 64) = a13;
  *(v14 + 32) = a14;
  *(v14 + 33) = *(&a14 + 1);
  *(v14 + 112) = a9;
  *(v14 + 120) = a10;
  *(v14 + 128) = a11;
  *(v14 + 104) = 0;
  return v14;
}

void sub_1C4CE43F8()
{
  v1 = v0;
  *(v0 + 34) = 5;
  *(v0 + 120) = *(v0 + 128);
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC();
  }

  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDE2DF70);

  oslog = sub_1C4F00968();
  v3 = sub_1C4F01CF8();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v6 = *(v1 + 64);
    v7 = *(v1 + 56);
    v8 = sub_1C444F05C(*(v1 + 40), *(v1 + 48));
    v10 = sub_1C441D828(v8, v9, &v12);

    *(v4 + 4) = v10;
    _os_log_impl(&dword_1C43F8000, oslog, v3, "ViewUpdate: %s: Finished update", v4, 0xCu);
    sub_1C440962C(v5);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }
}

void sub_1C4CE455C(char a1, const char *a2)
{
  v4 = v2;
  *(v2 + 34) = a1;
  *(v2 + 120) = 0;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC();
  }

  v5 = sub_1C4F00978();
  sub_1C442B738(v5, qword_1EDE2DF70);

  oslog = sub_1C4F00968();
  v6 = sub_1C4F01CF8();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v9 = *(v4 + 64);
    v10 = *(v4 + 56);
    v11 = sub_1C444F05C(*(v4 + 40), *(v4 + 48));
    v13 = sub_1C441D828(v11, v12, &v15);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_1C43F8000, oslog, v6, a2, v7, 0xCu);
    sub_1C440962C(v8);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }
}

void *sub_1C4CE46D4()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[11];

  return v0;
}

uint64_t sub_1C4CE4704()
{
  sub_1C4CE46D4();

  return swift_deallocClassInstance();
}

unint64_t sub_1C4CE4838(uint64_t a1)
{
  result = sub_1C4CE4860();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4CE4860()
{
  result = qword_1EDDF9A28;
  if (!qword_1EDDF9A28)
  {
    _s18NotificationSourceCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9A28);
  }

  return result;
}

uint64_t sub_1C4CE48C4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C461C0EC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C4CEB3A4(v6);
  return sub_1C4F02328();
}

uint64_t sub_1C4CE4940(char a1, uint64_t a2, uint64_t a3)
{
  v4 = *(&off_1E81EF798 + a1);
  v5 = *(v4 + 16);
  if (v5)
  {
    v8 = *(v4 + 32);

    if (v5 != 1)
    {
      if (qword_1EDDFD018 != -1)
      {
        sub_1C441A86C();
        swift_once();
      }

      v9 = sub_1C4F00978();
      sub_1C43FCEE8(v9, qword_1EDE2DDF8);
      v10 = sub_1C4F00968();
      v11 = sub_1C4F01CE8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = sub_1C440F274();
        v20 = sub_1C43FC11C();
        *v12 = 136315394;
        sub_1C4409528(a1);
        v15 = sub_1C441D828(v13, v14, &v20);

        *(v12 + 4) = v15;
        *(v12 + 12) = 2080;
        if (v8)
        {
          if (v8 == 1)
          {
            v16 = 0xE800000000000000;
            v17 = 0x6E6F6974656C6564;
          }

          else
          {
            v16 = 0xE600000000000000;
            v17 = 0x646574736F70;
          }
        }

        else
        {
          v16 = 0xE600000000000000;
          v17 = 0x6C616D726F6ELL;
        }

        v18 = sub_1C441D828(v17, v16, &v20);

        *(v12 + 14) = v18;
        _os_log_impl(&dword_1C43F8000, v10, v11, "SourceUpdater: sourceUpdated called for %s but that source supports multiple update types. Assuming it is the first type: %s.", v12, 0x16u);
        swift_arrayDestroy();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {
      }
    }

    return sub_1C44027F4(a1, a2, a3, v8);
  }

  else
  {
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD00000000000001ALL, 0x80000001C4FC5800);
    sub_1C4F02438();
    sub_1C43FE984();
    MEMORY[0x1C6940010](0xD000000000000019);
    result = sub_1C4F024A8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C4CE4C0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 40);
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = *(v4 - 1);
      v7 = *v4;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = *(v5 + 16);
        sub_1C4401750();
        sub_1C458CD10();
        v5 = v12;
      }

      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1C43FCFE8(v8);
        sub_1C4401750();
        sub_1C458CD10();
        v5 = v13;
      }

      *(v5 + 16) = v9 + 1;
      v10 = v5 + 32 * v9;
      *(v10 + 32) = 3;
      *(v10 + 40) = v6;
      *(v10 + 48) = v7;
      *(v10 + 56) = 0;
      v4 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = (a2 + 40);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = *(v5 + 16);
        sub_1C4401750();
        sub_1C458CD10();
        v5 = v22;
      }

      v19 = *(v5 + 16);
      v18 = *(v5 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1C43FCFE8(v18);
        sub_1C4401750();
        sub_1C458CD10();
        v5 = v23;
      }

      *(v5 + 16) = v19 + 1;
      v20 = v5 + 32 * v19;
      *(v20 + 32) = 3;
      *(v20 + 40) = v16;
      *(v20 + 48) = v17;
      *(v20 + 56) = 1;
      v15 += 2;
      --v14;
    }

    while (v14);
  }

  v25[3] = sub_1C456902C(&unk_1EC0C61A8, &qword_1C4F6B500);
  v25[4] = sub_1C4401CBC(&qword_1EDDDBCE0, &unk_1EC0C61A8, &qword_1C4F6B500);
  v25[0] = v5;
  sub_1C4401A00(v25);
  return sub_1C440962C(v25);
}

void sub_1C4CE4DFC()
{
  sub_1C43FE96C();
  sub_1C44054CC();
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4402A68();
  v10 = sub_1C4EFB768();
  v11 = sub_1C43FCDF8(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C440A82C();
  if (sub_1C4424B10(v3) == v5 && v14 == 0xE400000000000000)
  {
  }

  else
  {
    v16 = sub_1C442E6C0();

    if ((v16 & 1) == 0)
    {
      sub_1C442F794();
      v0 = v1;
      if (v1)
      {
        goto LABEL_11;
      }
    }
  }

  swift_unownedRetainStrong();
  v17 = sub_1C4440C6C(v4);
  sub_1C441CEF4();

  if (!v0)
  {
    v18 = *(v17 + 328);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v19 = sub_1C4404370();
    v20 = sub_1C445BE04(v19, xmmword_1C4F0CE60);
    v21 = MEMORY[0x1E69A0138];
    v19[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v19[4].n128_u64[0] = v21;
    v19[2].n128_u64[0] = v20;
    v19[2].n128_u64[1] = v22;
    sub_1C4401F74();
    sub_1C4466DA4();
    sub_1C4EFC088();
    v23 = sub_1C441B144();
    v24(v23, v10);
    v25 = sub_1C44179F4();
    sub_1C440BAA8(v25, v26, v27, v10);
    sub_1C43FD428();
    sub_1C44150DC();
    v28 = sub_1C4EFB988();
    sub_1C4420C3C(&v29, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v2, &unk_1EC0C06C0, &unk_1C4F10DB0);
    sub_1C459760C(v28);
  }

LABEL_11:
  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C4CE507C()
{
  sub_1C456902C(&qword_1EC0C6290, &qword_1C4F6B608);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  sub_1C44158BC();
  type metadata accessor for QIDDatabase();
  sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4();
  sub_1C456902C(&qword_1EC0C6298, &qword_1C4F6B610);
  sub_1C44400E8();
  v1 = swift_allocObject();
  return sub_1C44208F4(v1);
}

uint64_t sub_1C4CE5108()
{
  sub_1C456902C(&qword_1EC0C62C0, &qword_1C4F6B638);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  sub_1C44158BC();
  type metadata accessor for GraphDatabase();
  sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4();
  sub_1C456902C(&qword_1EC0C62C8, &qword_1C4F6B640);
  sub_1C44400E8();
  v1 = swift_allocObject();
  return sub_1C44208F4(v1);
}

uint64_t sub_1C4CE5194()
{
  sub_1C456902C(&qword_1EC0C6280, &qword_1C4F6B5F8);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  v1 = sub_1C44158BC();
  type metadata accessor for BehaviorDatabase(v1);
  sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4();
  sub_1C456902C(&qword_1EC0C6288, &qword_1C4F6B600);
  sub_1C44400E8();
  v2 = swift_allocObject();
  return sub_1C44208F4(v2);
}

uint64_t sub_1C4CE5220()
{
  sub_1C456902C(&qword_1EC0C62E0, &qword_1C4F6B658);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  v1 = sub_1C44158BC();
  type metadata accessor for EventLogDatabase(v1);
  sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4();
  sub_1C456902C(&qword_1EC0C62E8, &qword_1C4F6B660);
  sub_1C44400E8();
  v2 = swift_allocObject();
  return sub_1C44208F4(v2);
}

uint64_t sub_1C4CE52AC()
{
  sub_1C456902C(&qword_1EC0C6270, &qword_1C4F6B5E8);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  sub_1C44158BC();
  type metadata accessor for OntologyDatabase();
  sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4();
  sub_1C456902C(&qword_1EC0C6278, &qword_1C4F6B5F0);
  sub_1C44400E8();
  v1 = swift_allocObject();
  return sub_1C44208F4(v1);
}

uint64_t sub_1C4CE5338()
{
  sub_1C456902C(&qword_1EC0C62D0, &qword_1C4F6B648);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  sub_1C44158BC();
  type metadata accessor for GlobalKnowledgeDatabase();
  sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4();
  sub_1C456902C(&qword_1EC0C62D8, &qword_1C4F6B650);
  sub_1C44400E8();
  v1 = swift_allocObject();
  return sub_1C44208F4(v1);
}

uint64_t sub_1C4CE53C4()
{
  sub_1C456902C(&qword_1EC0C6328, &qword_1C4F6B6A0);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  sub_1C44158BC();
  type metadata accessor for Pipeline();
  sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4();
  sub_1C456902C(&unk_1EC0C6330, &qword_1C4F6B6A8);
  sub_1C44400E8();
  v1 = swift_allocObject();
  return sub_1C44208F4(v1);
}

uint64_t sub_1C4CE5450()
{
  sub_1C456902C(&qword_1EC0C6208, &qword_1C4F6B570);
  v1 = swift_allocObject();
  sub_1C4EF98F8();
  type metadata accessor for ViewUpdate.SourceUpdater(0);
  sub_1C44F8A78();
  *(v1 + 16) = sub_1C4F00F28();
  sub_1C456902C(&qword_1EC0C6210, &qword_1C4F6B578);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t sub_1C4CE5500()
{
  sub_1C456902C(&qword_1EC0C6310, &qword_1C4F6B688);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  v1 = sub_1C44158BC();
  type metadata accessor for ViewUpdate.Manager(v1);
  sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4();
  sub_1C456902C(&qword_1EC0C6318, &unk_1C4F6B690);
  sub_1C44400E8();
  v2 = swift_allocObject();
  return sub_1C44208F4(v2);
}

uint64_t sub_1C4CE558C()
{
  sub_1C456902C(&qword_1EC0C62F0, &qword_1C4F6B668);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  v1 = sub_1C44158BC();
  type metadata accessor for ViewGeneration.ViewClients(v1);
  sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4();
  sub_1C456902C(&qword_1EC0C62F8, &qword_1C4F6B670);
  sub_1C44400E8();
  v2 = swift_allocObject();
  return sub_1C44208F4(v2);
}

uint64_t sub_1C4CE5618()
{
  sub_1C456902C(&qword_1EC0C62B0, &qword_1C4F6B628);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  v1 = sub_1C44158BC();
  type metadata accessor for ViewGeneration.ViewGenerators(v1);
  sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4();
  sub_1C456902C(&qword_1EC0C62B8, &qword_1C4F6B630);
  sub_1C44400E8();
  v2 = swift_allocObject();
  return sub_1C44208F4(v2);
}

uint64_t sub_1C4CE56A4()
{
  sub_1C456902C(&qword_1EC0C62A0, &qword_1C4F6B618);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  sub_1C44158BC();
  type metadata accessor for ViewUpdate.ViewInProcessRunner();
  sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4();
  sub_1C456902C(&qword_1EC0C62A8, &qword_1C4F6B620);
  sub_1C44400E8();
  v1 = swift_allocObject();
  return sub_1C44208F4(v1);
}

uint64_t sub_1C4CE5730()
{
  sub_1C456902C(&qword_1EC0C6218, &qword_1C4F6B580);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  sub_1C44158BC();
  type metadata accessor for InterprocessLockDescriptors();
  sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4();
  sub_1C456902C(&unk_1EC0C6220, &qword_1C4F6B588);
  sub_1C44400E8();
  v1 = swift_allocObject();
  return sub_1C44208F4(v1);
}

uint64_t sub_1C4CE57BC()
{
  sub_1C456902C(&unk_1EC0C61C8, &qword_1C4F6B538);
  v1 = swift_allocObject();
  sub_1C4EF98F8();
  _s19SyncDeviceRetrieverCMa(0);
  sub_1C44F8A78();
  *(v1 + 16) = sub_1C4F00F28();
  sub_1C456902C(&qword_1EC0C61D8, &qword_1C4F6B540);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t sub_1C4CE586C()
{
  sub_1C456902C(&qword_1EC0C61F0, &qword_1C4F6B558);
  v1 = swift_allocObject();
  sub_1C4EF98F8();
  type metadata accessor for ViewUpdate.FrontEventQueue(0);
  sub_1C44F8A78();
  *(v1 + 16) = sub_1C4F00F28();
  sub_1C456902C(&qword_1EC0C61F8, &qword_1C4F6B560);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t sub_1C4CE591C()
{
  sub_1C456902C(&qword_1EC0C6300, &qword_1C4F6B678);
  sub_1C43FBDBC();
  swift_allocObject();
  sub_1C4403FC0();
  sub_1C4EF98F8();
  v1 = sub_1C44158BC();
  _s12JobSchedulerCMa(v1);
  sub_1C44F8A78();
  *(v0 + 16) = sub_1C44168F4();
  sub_1C456902C(&qword_1EC0C6308, &qword_1C4F6B680);
  sub_1C44400E8();
  v2 = swift_allocObject();
  return sub_1C44208F4(v2);
}

void sub_1C4CE59A8(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  sub_1C4CEAA1C(a2, &v6, &v5);
  if (v2)
  {
    objc_autoreleasePoolPop(v4);
  }

  else
  {
    objc_autoreleasePoolPop(sub_1C441CEF4());
  }
}

uint64_t sub_1C4CE5A34(char a1)
{
  if (!a1)
  {
    return 0x6C616D726F6ELL;
  }

  if (a1 == 1)
  {
    return 0x6E6F6974656C6564;
  }

  return 0x646574736F70;
}

uint64_t sub_1C4CE5A84()
{
  v2 = sub_1C4EFBE98();
  if (!v0)
  {
    v1 = v2;
    sub_1C43FE984();
    sub_1C4EFBE98();
    sub_1C441431C();
  }

  return v1;
}

uint64_t sub_1C4CE5B5C@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_1C4EFBE98();
  if (v1)
  {
  }

  v4 = v3;
  v5 = sub_1C441431C();
  v6 = sub_1C441431C();
  sub_1C43FE984();
  v7 = sub_1C4EFBE98();
  v14 = sub_1C441431C();
  v13 = sub_1C441431C();
  v12 = sub_1C441431C();
  v8 = sub_1C441431C();

  *&v16 = v4;
  *(&v16 + 1) = v5;
  *&v17 = v6;
  *(&v17 + 1) = v14;
  *&v18 = v13;
  *(&v18 + 1) = v12;
  *&v19 = v8;
  *(&v19 + 1) = v7;
  v20[0] = v4;
  v20[1] = v5;
  v20[2] = v6;
  v20[3] = v14;
  v20[4] = v13;
  v20[5] = v12;
  v20[6] = v8;
  v20[7] = v7;
  sub_1C4CEAC18(&v16, v15);
  result = sub_1C4BC1A8C(v20);
  v10 = v17;
  *a1 = v16;
  a1[1] = v10;
  v11 = v19;
  a1[2] = v18;
  a1[3] = v11;
  return result;
}

void sub_1C4CE5E00()
{
  sub_1C43FE96C();
  v2 = v1;
  v3 = sub_1C4EFBE98();
  if (v0)
  {
  }

  else
  {
    v4 = v3;
    sub_1C43FE984();
    v5 = sub_1C4EFBE98();
    v6 = sub_1C441431C();
    v7 = sub_1C4EFBE98();
    v8 = sub_1C441431C();

    *v2 = v4;
    v2[1] = v5;
    v2[2] = v6;
    v2[3] = v7;
    v2[4] = v8;
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4CE5F70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = type metadata accessor for Source();
  v7 = sub_1C43FBD18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = *(sub_1C456902C(&qword_1EC0BA998, &qword_1C4F53200) + 48);
  v14 = *a1;
  sub_1C4430958(a2, v12, type metadata accessor for Source);
  swift_beginAccess();
  sub_1C483B6F0();
  LOBYTE(a2) = v15;
  result = swift_endAccess();
  *a3 = a2 & 1;
  return result;
}

void sub_1C4CE6098()
{
  sub_1C43FE96C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v12 = *v7;
  if ((*(*v7 + 32) & 1) == 0)
  {
    *(v12 + 32) = 1;
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    sub_1C4F011C8();
    v15 = os_transaction_create();

    sub_1C4F018C8();
    sub_1C43FCF64();
    sub_1C440BAA8(v16, v17, v18, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v15;
    v20[5] = v5;
    v20[6] = v3;
    v20[7] = v1;

    sub_1C4785250();
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C4CE61C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[8] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C4CE61E4, 0, 0);
}

uint64_t sub_1C4CE61E4()
{
  sub_1C4475B28();
  v9 = v1;
  sub_1C43FEAEC();
  sub_1C44BBF4C();
  sub_1C440FE6C();
  sub_1C4430798();
  sub_1C446073C(MEMORY[0x1E69E7CD0]);
  sub_1C4408120();
  v2 = *(v0 + 4);
  v3 = swift_task_alloc();
  v4 = sub_1C447FAC0(v3);
  *v4 = v5;
  v6 = sub_1C4401314(v4);

  return v7(v6);
}

uint64_t sub_1C4CE62AC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  sub_1C43FBDAC();
  *v5 = v4;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4CE63AC()
{
  sub_1C4475B28();
  v11 = v2;
  sub_1C43FEAEC();
  sub_1C4475DF8();
  sub_1C4426F9C();
  sub_1C441CF44();
  if (v1)
  {
    sub_1C44BBF4C();
    sub_1C440FE6C();
    sub_1C4430798();
    sub_1C446073C(MEMORY[0x1E69E7CD0]);
    sub_1C4408120();
    v3 = *(v0 + 4);
    v4 = swift_task_alloc();
    v5 = sub_1C447FAC0(v4);
    *v5 = v6;
    v7 = sub_1C4401314(v5);

    return v8(v7);
  }

  else
  {
    sub_1C43FBDA0();

    return v10();
  }
}

uint64_t sub_1C4CE64B8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  sub_1C43FBDAC();
  *v5 = v4;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4CE65B8()
{
  sub_1C4475B28();
  v11 = v2;
  sub_1C43FEAEC();
  sub_1C4475DF8();
  sub_1C4426F9C();
  sub_1C441CF44();
  if (v1)
  {
    sub_1C44BBF4C();
    sub_1C440FE6C();
    sub_1C4430798();
    sub_1C446073C(MEMORY[0x1E69E7CD0]);
    sub_1C4408120();
    v3 = *(v0 + 4);
    v4 = swift_task_alloc();
    v5 = sub_1C447FAC0(v4);
    *v5 = v6;
    v7 = sub_1C4401314(v5);

    return v8(v7);
  }

  else
  {
    sub_1C43FBDA0();

    return v10();
  }
}

void sub_1C4CE66C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v32 = sub_1C43FBD18(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBD08();
  v131 = v35 - v36;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v37);
  v130 = v122 - v38;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C440D124();
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = v122 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v45 = v122 - v44;
  v46 = sub_1C4EFB768();
  v47 = sub_1C43FCDF8(v46);
  v132.n128_u64[0] = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBCC4();
  sub_1C44058BC();
  sub_1C4449828();
  if (v20)
  {
LABEL_5:
    sub_1C4402144();
    sub_1C43FBC80();
    return;
  }

  v134 = v30;
  v128 = v43;
  v129 = v26;
  v133 = v21;
  if (v136[8])
  {
    sub_1C4CE9968();
LABEL_4:
    sub_1C444AF3C(v136);
    goto LABEL_5;
  }

  v125 = v22;
  v51 = 0;
  sub_1C43FBDF0();
  v127 = v52;
  sub_1C43FBDF0();
  *&v126 = v53;
  v55 = (v54 + 8);
  v56 = MEMORY[0x1E69E6530];
  v132 = xmmword_1C4F0CE60;
  v57 = v45;
  while (v51 != 11)
  {
    v58 = byte_1F43D9F00[v51 + 32];
    swift_unownedRetainStrong();
    v59 = sub_1C4480848(v28);

    v60 = *(v59 + 360);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v61 = sub_1C4404370();
    v62 = sub_1C447F62C(v61, v132);
    v56 = MEMORY[0x1E69E6530];
    v65 = v134;
    switch(v66)
    {
      case 1:
        v64 = 1701736302;
        break;
      case 2:
        sub_1C4411434();
        break;
      case 3:
        sub_1C441CF6C();
        v68 = &a13;
        goto LABEL_20;
      case 4:
        v63 = 0xE600000000000000;
        v67 = 1801807223;
        goto LABEL_15;
      case 5:
        sub_1C441B53C();
        goto LABEL_18;
      case 6:
        sub_1C440B7A4();
LABEL_18:
        sub_1C43FF8C0();
        break;
      case 7:
        v63 = 0xE600000000000000;
        v67 = 1920298856;
LABEL_15:
        v64 = v67 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
        break;
      case 8:
        sub_1C440B7A4();
        sub_1C4CEC294();
        break;
      case 9:
        sub_1C441B53C();
        sub_1C442A52C();
        break;
      case 10:
        sub_1C441CF6C();
        v68 = &a16;
LABEL_20:
        v63 = *(v68 - 32);
        break;
      default:
        break;
    }

    v62[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v62[4].n128_u64[0] = MEMORY[0x1E69A0138];
    v62[2].n128_u64[0] = v64;
    v62[2].n128_u64[1] = v63;
    v62[6].n128_u64[0] = v56;
    v62[6].n128_u64[1] = MEMORY[0x1E69A0180];
    v62[4].n128_u64[1] = v65;
    v69 = v133;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*v55)(v69, v46);
    sub_1C440DB38();
    sub_1C440BAA8(v70, v71, v72, v73);
    sub_1C4EFC0A8();
    sub_1C4420C3C(v57, &unk_1EC0C06C0, &unk_1C4F10DB0);

    ++v51;
  }

  swift_unownedRetainStrong();
  v74 = sub_1C4480848(v28);

  v75 = *(v74 + 456);

  v127 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v76 = sub_1C44331AC();
  v126 = xmmword_1C4F0D130;
  *(v76 + 16) = xmmword_1C4F0D130;
  *(v76 + 56) = v56;
  *(v76 + 64) = MEMORY[0x1E69A0180];
  v77 = v133;
  *(v76 + 32) = v134;
  sub_1C4EFB728();
  sub_1C4EFC088();
  v78 = *v55;
  (*v55)(v77, v46);
  sub_1C4EFBC58();
  v79 = v128;
  sub_1C440DB38();
  sub_1C440BAA8(v80, v81, v82, v83);
  memset(v135, 0, 40);
  v134 = sub_1C4EFBBC8();
  v84 = v75;
  sub_1C4420C3C(v135, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C4420C3C(v79, &unk_1EC0C06C0, &unk_1C4F10DB0);
  swift_unownedRetainStrong();
  v85 = sub_1C4480848(v28);
  v128 = v78;

  v86 = *(v85 + 400);

  swift_unownedRetainStrong();
  v87 = sub_1C4480848(v28);

  v88 = *(v87 + 312);

  swift_unownedRetainStrong();
  v89 = sub_1C4480848(v28);
  v122[4] = v86;
  v122[1] = v84;

  v122[2] = *(v89 + 304);

  v90 = v134;
  v122[3] = v88;
  v91 = MEMORY[0x1E69A0180];
  while (1)
  {
    v92 = sub_1C4458EE8();
    if (!v92)
    {
      sub_1C444C060();

      sub_1C4436744();

      goto LABEL_4;
    }

    sub_1C441E870();
    v93 = sub_1C4EFBBE8();
    if (v93)
    {
      MEMORY[0x1EEE9AC00](v93);
      sub_1C444C40C();
      v96 = sub_1C44E7728(v94, v95);
      if (v96 == 5)
      {
        goto LABEL_39;
      }

      v97 = sub_1C4F02AA8();
      v91 = MEMORY[0x1E69A0180];
    }

    else
    {
      sub_1C4EFBB98();
      v97 = v135[0];
    }

    sub_1C441E870();
    v98 = sub_1C4EFBBE8();
    if (v98)
    {
      MEMORY[0x1EEE9AC00](v98);
      sub_1C444C40C();
      v96 = sub_1C4414708(v99, v100);
      if (v96 == 5)
      {
LABEL_39:
        MEMORY[0x1EEE9AC00](v96);
        sub_1C43FD954();
        *(v120 - 16) = sub_1C487BF24;
        *(v120 - 8) = v90;
        sub_1C444157C();
        goto LABEL_42;
      }

      v124 = sub_1C4F02AA8();
    }

    else
    {
      sub_1C4EFBB98();
      v124 = v135[0];
    }

    sub_1C441E870();
    v101 = sub_1C4EFBBE8();
    v129 = v92;
    if (v101)
    {
      break;
    }

    sub_1C44885F0();
    sub_1C4EFBB98();
    v123 = LOBYTE(v135[0]);
LABEL_37:
    v105 = sub_1C44331AC();
    *(v105 + 16) = v126;
    *(v105 + 56) = MEMORY[0x1E69E6530];
    *(v105 + 64) = v91;
    *(v105 + 32) = v97;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v106 = sub_1C440C090();
    v107(v106);
    v108 = v125;
    v109 = sub_1C44179F4();
    sub_1C4423D60(v109, v110, v111);
    sub_1C4420C3C(v108, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v112 = sub_1C4404370();
    v112[1] = v132;
    v113 = MEMORY[0x1E69E6530];
    v112[3].n128_u64[1] = MEMORY[0x1E69E6530];
    v112[4].n128_u64[0] = v91;
    v112[2].n128_u64[0] = v124;
    v112[6].n128_u64[0] = v113;
    v112[6].n128_u64[1] = v91;
    v112[4].n128_u64[1] = v97;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v114 = sub_1C440C090();
    v115(v114);
    v116 = v130;
    v117 = sub_1C44179F4();
    sub_1C4423D60(v117, v118, v119);
    v91 = MEMORY[0x1E69A0180];
    sub_1C4420C3C(v116, &unk_1EC0C06C0, &unk_1C4F10DB0);

    v90 = v134;
  }

  sub_1C442AA00();
  v103 = MEMORY[0x1EEE9AC00](v102);
  v104 = sub_1C442AA48(v103, v122);
  if (v104 != 5)
  {
    v123 = sub_1C4F017E8();
    goto LABEL_37;
  }

  MEMORY[0x1EEE9AC00](v104);
  sub_1C43FD954();
  *(v121 - 16) = sub_1C487BF24;
  *(v121 - 8) = &v122[-4];
  sub_1C444157C();
LABEL_42:
  sub_1C445EABC();
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_1C4CE7384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for Configuration();
  v5 = *(a1 + *(result + 20));
  if (qword_1EDDF0C88 != -1)
  {
    v9 = *(a1 + *(result + 20));
    result = swift_once();
    v5 = v9;
  }

  v6 = vmovn_s64(vceqq_s64(vandq_s8(xmmword_1EDDF0C90, v5), xmmword_1EDDF0C90));
  v7 = &_s19CTSScheduleLauncherVN;
  v8 = &off_1F440B630;
  if (v6.i8[0] & v6.i8[4])
  {
    v8 = &off_1F440B618;
  }

  else
  {
    v7 = &_s20NullScheduleLauncherVN;
  }

  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_1C4CE744C(uint64_t a1, uint64_t a2)
{
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4402A68();
  swift_unownedRetainStrong();
  sub_1C4440C6C(a1);
  result = sub_1C4416BA4();
  if (!v2)
  {
    v11 = *(a2 + 368);

    sub_1C4EFB768();
    v12 = sub_1C44179F4();
    sub_1C440BAA8(v12, v13, v14, v15);
    sub_1C4EFC0A8();
    sub_1C4420C3C(v3, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return result;
}

void *sub_1C4CE753C(uint64_t a1, void *a2)
{
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4402A68();
  swift_unownedRetainStrong();
  v10 = a1;
  v11 = a2;
  sub_1C4440C6C(v10);
  sub_1C4416BA4();
  if (!v2)
  {
    v12 = a2[47];

    sub_1C4EFB768();
    v13 = sub_1C44179F4();
    sub_1C440BAA8(v13, v14, v15, v16);
    sub_1C44248E8();
    memset(v18, 0, sizeof(v18));
    v19 = 0;
    v11 = &unk_1F44095F0;
    sub_1C4EFB9F8();
    sub_1C4416BA4();
    sub_1C4420C3C(v18, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v3, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return v11;
}

uint64_t sub_1C4CE7690@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4CE5A34(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C4CE776C()
{
  sub_1C4BB9554();
  sub_1C444D440();

  return sub_1C4EFBA18();
}

uint64_t sub_1C4CE77DC(uint64_t a1)
{
  v2 = sub_1C4CEC134();

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1C4CE7828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4CEC134();

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

uint64_t sub_1C4CE787C(char a1)
{
  sub_1C4F02AF8();
  sub_1C44097B0(v3, a1);
  return sub_1C4F02B68();
}

uint64_t sub_1C4CE78E4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  return sub_1C4CE787C(*v0);
}

uint64_t sub_1C4CE78F4(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  return sub_1C44097B0(a1, *v1);
}

void sub_1C4CE7904()
{
  sub_1C43FBDF0();
  *(v0 + 16) = 0xD000000000000034;
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  sub_1C4424D7C(MEMORY[0x1E69E7CD0]);
}

void sub_1C4CE7940()
{
  sub_1C43FBDF0();
  *(v0 + 16) = 0xD00000000000002DLL;
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  sub_1C4424D7C(MEMORY[0x1E69E7CD0]);
}

uint64_t sub_1C4CE79AC(uint64_t a1)
{
  sub_1C440E3F8();
  sub_1C4430958(v4, v1 + v3, v5);
  _s15FrontEventQueueC13CoalesceStateCMa();
  v6 = swift_allocObject();
  sub_1C43FBDF0();
  *(v7 + 16) = 0xD00000000000002CLL;
  *(v7 + 24) = v8;
  *(v7 + 32) = 0;
  *(v7 + 40) = MEMORY[0x1E69E7CD0];
  sub_1C456902C(&qword_1EC0C61E0, &qword_1C4F6B548);
  sub_1C44400E8();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = v6;
  sub_1C4467948(a1);
  *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate15FrontEventQueue_lockedBox) = v9;
  return v1;
}

uint64_t sub_1C4CE7AC4(uint64_t a1)
{
  sub_1C44366B4();
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13SourceUpdater_config;
  sub_1C440E3F8();
  sub_1C4430958(v5, v1 + v4, v6);
  if (qword_1EDDF9A78 != -1)
  {
    swift_once();
  }

  v7 = sub_1C4ABFB00();
  sub_1C4467948(a1);
  if (v2)
  {
    sub_1C4467948(v1 + v4);
    v8 = *(*v1 + 48);
    v9 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13SourceUpdater_queue) = v7;
  }

  return v1;
}

uint64_t sub_1C4CE7BF8(void *a1, void *a2)
{
  sub_1C4467948(v2 + *a1);
  v4 = *(v2 + *a2);

  return v2;
}

void sub_1C4CE7D58()
{
  sub_1C43FE96C();
  v4 = v3;
  v52 = v5;
  v7 = v6;
  v50 = v8;
  v10 = v9;
  v11 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C44058BC();
  v15 = sub_1C4EFB768();
  v16 = sub_1C43FCDF8(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  sub_1C441C544();
  v21 = sub_1C44229AC(v4);

  if (v0)
  {
    goto LABEL_9;
  }

  v49 = 0;
  v22 = *(v21 + 16);

  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C4F0C890;
  sub_1C4409528(v10);
  v24 = MEMORY[0x1E69E6158];
  v25 = MEMORY[0x1E69A0138];
  *(v23 + 56) = MEMORY[0x1E69E6158];
  *(v23 + 64) = v25;
  *(v23 + 32) = v26;
  *(v23 + 40) = v27;
  *(v23 + 96) = v24;
  *(v23 + 104) = v25;
  *(v23 + 72) = v50;
  *(v23 + 80) = v7;
  if (v52)
  {
    if (v52 == 1)
    {
      v28 = 0xE800000000000000;
      v29 = 0x6E6F6974656C6564;
    }

    else
    {
      v28 = 0xE600000000000000;
      v29 = 0x646574736F70;
    }
  }

  else
  {
    v28 = 0xE600000000000000;
    v29 = 0x6C616D726F6ELL;
  }

  *(v23 + 136) = v24;
  *(v23 + 144) = v25;
  *(v23 + 112) = v29;
  *(v23 + 120) = v28;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFB728();
  sub_1C4EFC088();
  (*(v18 + 8))(v2, v15);
  sub_1C4EFBC58();
  sub_1C43FCF64();
  sub_1C440BAA8(v30, v31, v32, v15);
  sub_1C43FD428();
  v33 = sub_1C4EFBC48();
  if (v49)
  {

    sub_1C4420C3C(v51, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v1, &unk_1EC0C06C0, &unk_1C4F10DB0);
LABEL_9:
    sub_1C43FBC80();
    return;
  }

  v34 = v33;
  sub_1C4420C3C(v51, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C4420C3C(v1, &unk_1EC0C06C0, &unk_1C4F10DB0);
  if (!v34)
  {

    goto LABEL_9;
  }

  sub_1C441E870();
  v35 = sub_1C4EFBBE8();
  if (v35)
  {
    MEMORY[0x1EEE9AC00](v35);
    sub_1C44417A0();
    v38 = sub_1C44E7728(v36, v37);
    if (v38 == 5)
    {
      MEMORY[0x1EEE9AC00](v38);
      sub_1C43FD954();
      *(v45 - 16) = sub_1C487BF24;
      *(v45 - 8) = v1;
LABEL_26:
      sub_1C4EFB968();
      goto LABEL_28;
    }

    sub_1C4F02AA8();
  }

  else
  {
    sub_1C4EFBB98();
  }

  sub_1C441E870();
  v39 = sub_1C4EFBBE8();
  if (!v39)
  {
    sub_1C4EFBB98();
    goto LABEL_20;
  }

  v40 = MEMORY[0x1EEE9AC00](v39);
  v41 = sub_1C4414708(v40, &v49);
  if (v41 == 5)
  {
    MEMORY[0x1EEE9AC00](v41);
    sub_1C43FD954();
    *(v46 - 16) = sub_1C487BF24;
    *(v46 - 8) = v48;
    goto LABEL_26;
  }

  sub_1C4F017E8();
LABEL_20:
  sub_1C441E870();
  v42 = sub_1C4EFBBE8();
  if (!v42)
  {
    sub_1C44885F0();
    sub_1C4EFBB98();

    goto LABEL_9;
  }

  v43 = MEMORY[0x1EEE9AC00](v42);
  v44 = sub_1C442AA48(v43, &v49);
  if (v44 != 5)
  {
    sub_1C4F017E8();

    goto LABEL_9;
  }

  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FD954();
  *(v47 - 16) = sub_1C487BDA4;
  *(v47 - 8) = v48;
  sub_1C4EFB968();
LABEL_28:
  sub_1C445EABC();
  swift_unexpectedError();
  __break(1u);
}

void sub_1C4CE83A0()
{
  sub_1C43FE96C();
  sub_1C4401F00();
  v3 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C440101C();
  v8 = sub_1C43FCDF8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  sub_1C441C544();
  v11 = sub_1C440F090();
  sub_1C4440C6C(v11);
  sub_1C4402530();
  if (!v1)
  {
    v12 = *(v2 + 424);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v13 = sub_1C44331AC();
    *(v13 + 16) = xmmword_1C4F0D130;
    sub_1C44620EC(v13, MEMORY[0x1E69A0180]);
    sub_1C4441A40();
    sub_1C4EFC088();
    v14 = sub_1C43FBF04();
    v15(v14);
    v16 = sub_1C44038D0();
    sub_1C440BAA8(v16, v17, v18, v7);
    sub_1C43FD428();
    sub_1C441DEF0();
    sub_1C43FE664();
    sub_1C4EFB988();
    sub_1C44B9028();
    sub_1C4420C3C(&v19, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4CE8550()
{
  sub_1C43FE96C();
  sub_1C4401F00();
  v3 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C440101C();
  v8 = sub_1C43FCDF8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  sub_1C441C544();
  v11 = sub_1C440F090();
  sub_1C4440C6C(v11);
  sub_1C4402530();
  if (!v1)
  {
    v12 = *(v2 + 464);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v13 = sub_1C44331AC();
    *(v13 + 16) = xmmword_1C4F0D130;
    sub_1C44620EC(v13, MEMORY[0x1E69A0180]);
    sub_1C4441A40();
    sub_1C4EFC088();
    v14 = sub_1C43FBF04();
    v15(v14);
    v16 = sub_1C44038D0();
    sub_1C43FF8A0(v16, v17, v18, v7);
    sub_1C443474C();
    sub_1C441DEF0();
    sub_1C43FE664();
    sub_1C4EFB9A8();
    sub_1C44B9028();
    sub_1C4420C3C(&v19, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4CE8700()
{
  sub_1C43FE96C();
  v152 = v3;
  v153 = v0;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v9 = sub_1C43FBD18(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBD08();
  v150 = v12 - v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  v149 = &v130 - v15;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C440D124();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v130 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v130 - v21);
  v23 = sub_1C4EFB768();
  v24 = sub_1C43FCDF8(v23);
  v151 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C440A82C();
  v28 = v7;
  v29 = v153;
  v30 = v152;
  sub_1C4CE8550();
  if (v29)
  {
    goto LABEL_5;
  }

  v146 = v22;
  v147 = v2;
  v153 = v5;
  v37 = v30;
  v38 = v151;
  v144 = v1;
  v145 = v20;
  v148 = v28;
  if ((v31 & 1) == 0)
  {
    sub_1C4CE66C4(v148, v153, v37, v32, v33, v34, v35, v36, v130, v131, v132, *(&v132 + 1), v133, v134, v135, v136, v137, v138, v139, v140);
LABEL_5:
    sub_1C43FBC80();
    return;
  }

  swift_unownedRetainStrong();
  v39 = sub_1C4440C6C(v153);

  v40 = *(v39 + 448);

  v41 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v42 = sub_1C44331AC();
  v43 = MEMORY[0x1E69E6530];
  v143 = xmmword_1C4F0D130;
  *(v42 + 16) = xmmword_1C4F0D130;
  v44 = MEMORY[0x1E69A0180];
  *(v42 + 56) = v43;
  *(v42 + 64) = v44;
  v45 = v147;
  *(v42 + 32) = v148;
  sub_1C4EFB728();
  sub_1C4EFC088();
  v46 = v38;
  v47 = v40;
  v48 = *(v46 + 8);
  v49 = v45;
  v50 = v23;
  v48(v49, v23);
  sub_1C4EFBC58();
  v51 = v146;
  v52 = sub_1C44179F4();
  sub_1C440BAA8(v52, v53, v54, v50);
  sub_1C43FD428();
  v55 = sub_1C4EFBBC8();
  v140 = v41;
  v141 = v47;
  v142 = v55;
  sub_1C4420C3C(v154, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C4420C3C(v51, &unk_1EC0C06C0, &unk_1C4F10DB0);
  swift_unownedRetainStrong();
  v56 = v153;
  v57 = sub_1C4440C6C(v153);
  v146 = v48;

  v58 = *(v57 + 400);

  swift_unownedRetainStrong();
  v59 = 0;
  v60 = sub_1C4440C6C(v56);
  v134 = v58;

  v61 = *(v60 + 312);

  swift_unownedRetainStrong();
  v62 = sub_1C441E000(v56);
  v131 = v61;
  v151 = v46 + 8;

  v130 = *(v62 + 40);

  v132 = xmmword_1C4F0CE60;
  v63 = MEMORY[0x1E69E6530];
  v64 = MEMORY[0x1E69A0180];
  v153 = v50;
  while (1)
  {
    v65 = sub_1C4458EE8();
    if (!v65)
    {

      sub_1C442B9BC();

      sub_1C44884D0();
      sub_1C4436744();

      goto LABEL_5;
    }

    sub_1C441E870();
    v66 = sub_1C4EFBBE8();
    if (v66)
    {
      v59 = &v130;
      MEMORY[0x1EEE9AC00](v66);
      sub_1C444C40C();
      v69 = sub_1C44E7728(v67, v68);
      if (v69 == 5)
      {
        MEMORY[0x1EEE9AC00](v69);
        sub_1C43FD954();
        *(v126 - 16) = sub_1C487BF24;
        *(v126 - 8) = 0;
        sub_1C44585C0();
        sub_1C444157C();
        goto LABEL_43;
      }

      v70 = sub_1C4F02AA8();
    }

    else
    {
      sub_1C449DB5C();
      sub_1C4EFBB98();
      v70 = v154[0];
    }

    sub_1C441E870();
    if (sub_1C4EFBBE8())
    {
      sub_1C442AA00();
      MEMORY[0x1EEE9AC00](v71);
      sub_1C44417A0();
      v74 = sub_1C4414708(v72, v73);
      if (v74 == 5)
      {
        goto LABEL_41;
      }

      v137 = sub_1C4F02AA8();
    }

    else
    {
      sub_1C447E3A4();
      sub_1C4EFBB98();
      v137 = v154[0];
    }

    sub_1C441E870();
    if (sub_1C4EFBBE8())
    {
      sub_1C442AA00();
      MEMORY[0x1EEE9AC00](v75);
      sub_1C44417A0();
      v74 = sub_1C442AA48(v76, v77);
      if (v74 == 5)
      {
LABEL_41:
        MEMORY[0x1EEE9AC00](v74);
        sub_1C43FD954();
        *(v127 - 16) = sub_1C487BF24;
        *(v127 - 8) = v59;
        sub_1C44585C0();
        sub_1C444157C();
        goto LABEL_43;
      }

      HIDWORD(v135) = sub_1C4F017E8();
    }

    else
    {
      sub_1C44885F0();
      sub_1C4EFBB98();
      HIDWORD(v135) = LOBYTE(v154[0]);
    }

    sub_1C441E870();
    v78 = sub_1C4EFBBE8();
    v139 = v65;
    if (v78)
    {
      break;
    }

    sub_1C4EFBB98();
    v152 = 0;
    v136 = v154[0];
    v138 = v154[1];
LABEL_23:
    v85 = sub_1C44331AC();
    *(v85 + 16) = v143;
    *(v85 + 56) = v63;
    *(v85 + 64) = v64;
    *(v85 + 32) = v70;
    v86 = v63;
    v87 = v147;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v88 = v70;
    v89 = v153;
    v90 = v146;
    v146(v87, v153);
    v91 = v145;
    v92 = sub_1C44179F4();
    sub_1C440BAA8(v92, v93, v94, v89);
    v95 = v152;
    sub_1C4EFC0A8();
    if (v95)
    {

      sub_1C4436744();

      sub_1C44884D0();
      sub_1C442B9BC();

      sub_1C4420C3C(v91, &unk_1EC0C06C0, &unk_1C4F10DB0);

      goto LABEL_5;
    }

    sub_1C4420C3C(v91, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v96 = sub_1C4404370();
    sub_1C442C690(v96);
    v97[7] = v86;
    v98 = MEMORY[0x1E69A0180];
    v97[8] = MEMORY[0x1E69A0180];
    v97[9] = v88;
    v97[4] = v137;
    v97[12] = v86;
    v97[13] = v98;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v90(v87, v89);
    v99 = v144;
    sub_1C43FCF64();
    sub_1C440BAA8(v100, v101, v102, v89);
    sub_1C4EFC0A8();
    v64 = v98;
    sub_1C4420C3C(v99, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v103 = v138;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v104 = v136;
    v105 = sub_1C44869B4(v154, v136, v103);

    if (v105 & 1) == 0 || (v104 == 1701736302 ? (v106 = v103 == 0xE400000000000000) : (v106 = 0), v106 || (sub_1C44257B8()))
    {

      v107 = v148;
    }

    else
    {
      v108 = sub_1C4404370();
      sub_1C442C690(v108);
      v109[7] = MEMORY[0x1E69E6158];
      v109[8] = MEMORY[0x1E69A0138];
      v109[4] = v104;
      v109[5] = v103;
      v109[12] = MEMORY[0x1E69E6530];
      v109[13] = v64;
      v107 = v148;
      v109[9] = v148;
      sub_1C4EFB728();
      sub_1C4EFC088();
      v110 = sub_1C4428F00();
      v111(v110);
      v112 = v149;
      v113 = sub_1C44179F4();
      sub_1C4423D60(v113, v114, v115);
      sub_1C4420C3C(v112, &unk_1EC0C06C0, &unk_1C4F10DB0);
    }

    if (v135 & 0x100000000) != 0 && (v116 = sub_1C44869B4(v154, 1702259052, 0xE400000000000000), , (v116))
    {
      v117 = sub_1C4404370();
      sub_1C442C690(v117);
      v118[7] = MEMORY[0x1E69E6158];
      v119 = sub_1C444ADEC(v118, MEMORY[0x1E69A0138]);
      v119[12] = MEMORY[0x1E69E6530];
      v119[13] = v64;
      v119[9] = v107;
      sub_1C4EFB728();
      sub_1C4EFC088();
      v120 = sub_1C4428F00();
      v121(v120);
      v122 = v150;
      v123 = sub_1C44179F4();
      sub_1C4423D60(v123, v124, v125);
      v59 = 0;
      sub_1C4420C3C(v122, &unk_1EC0C06C0, &unk_1C4F10DB0);
    }

    else
    {
      v59 = 0;
    }

    v63 = MEMORY[0x1E69E6530];
  }

  v152 = 0;
  sub_1C442AA00();
  MEMORY[0x1EEE9AC00](v79);
  sub_1C44417A0();
  *(v80 - 16) = v65;
  *(v80 - 8) = 3;
  v82 = sqlite3_column_type(v81, 3);
  if (v82 != 5)
  {
    v83 = sub_1C4F011E8();
    v138 = v84;
    v136 = v83;
    v154[0] = v83;
    goto LABEL_23;
  }

  MEMORY[0x1EEE9AC00](v82);
  sub_1C43FD954();
  *(v128 - 16) = sub_1C487BF24;
  *(v128 - 8) = v59;
  sub_1C44585C0();
  v129 = v152;
  sub_1C4EFB968();
  v152 = v129;
LABEL_43:
  sub_1C445EABC();
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_1C4CE94D8()
{
  sub_1C43FBDE4();
  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v7 + 80) = v0;

  if (v0)
  {
    v8 = sub_1C4CE9668;
  }

  else
  {

    v8 = sub_1C4CE9610;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1C4CE9610()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 56);

  sub_1C43FBDA0();

  return v2();
}

uint64_t sub_1C4CE9668()
{
  sub_1C43FEAEC();
  if (qword_1EDDFD018 != -1)
  {
    sub_1C441A86C();
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDE2DDF8);
  v3 = sub_1C4406834();
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CD8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 80);
  v8 = *(v0 + 56);
  if (v6)
  {
    sub_1C43FECF0();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    sub_1C440E068(&dword_1C43F8000, v13, v14, "SourceUpdater: Failed processing high priority views: %@");
    sub_1C4420C3C(v10, &qword_1EC0BDA00, &qword_1C4F10D30);
    v15 = sub_1C44068C0();
    MEMORY[0x1C6942830](v15);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
    v16 = *(v0 + 56);
  }

  sub_1C43FBDA0();

  return v17();
}

uint64_t sub_1C4CE97E8()
{
  sub_1C43FEAEC();
  if (qword_1EDDFD018 != -1)
  {
    sub_1C441A86C();
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDE2DDF8);
  v3 = sub_1C4406834();
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CD8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  v8 = *(v0 + 48);
  if (v6)
  {
    sub_1C43FECF0();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    sub_1C440E068(&dword_1C43F8000, v13, v14, "SourceUpdater: Failed processing live schedule: %@");
    sub_1C4420C3C(v10, &qword_1EC0BDA00, &qword_1C4F10D30);
    v15 = sub_1C44068C0();
    MEMORY[0x1C6942830](v15);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
    v16 = *(v0 + 48);
  }

  sub_1C43FBDA0();

  return v17();
}

void sub_1C4CE9968()
{
  sub_1C43FE96C();
  v2 = v0;
  v4 = v3;
  v96 = v5;
  v97 = v6;
  v7 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v8 = sub_1C43FBD18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  v89 = v11 - v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  v90 = v86 - v14;
  sub_1C43FD1D0();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v86 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v86 - v19;
  v95 = sub_1C4EFB768();
  v21 = sub_1C43FCDF8(v95);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v24 = 0;
  sub_1C43FBDF0();
  v92 = v25;
  sub_1C43FBDF0();
  *&v91 = v26;
  v28 = (v27 + 8);
  v94 = xmmword_1C4F0CE60;
  v93 = v4;
  while (v24 != 11)
  {
    v29 = v1;
    v30 = v28;
    v31 = v95;
    v32 = byte_1F43D9F00[v24 + 32];
    swift_unownedRetainStrong();
    v33 = sub_1C4440C6C(v97);
    if (v2)
    {

      goto LABEL_21;
    }

    v34 = v33;

    v35 = *(v34 + 360);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v36 = sub_1C4404370();
    v37 = sub_1C447F62C(v36, v94);
    v40 = v31;
    v41 = v96;
    switch(v42)
    {
      case 1:
        v39 = 1701736302;
        break;
      case 2:
        sub_1C4411434();
        break;
      case 3:
        sub_1C441CF6C();
        v38 = v91;
        break;
      case 4:
        v38 = 0xE600000000000000;
        v43 = 1801807223;
        goto LABEL_11;
      case 5:
        sub_1C441B53C();
        goto LABEL_14;
      case 6:
        sub_1C440B7A4();
LABEL_14:
        sub_1C43FF8C0();
        break;
      case 7:
        v38 = 0xE600000000000000;
        v43 = 1920298856;
LABEL_11:
        v39 = v43 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
        break;
      case 8:
        sub_1C440B7A4();
        sub_1C4CEC294();
        break;
      case 9:
        sub_1C441B53C();
        sub_1C442A52C();
        break;
      case 10:
        sub_1C441CF6C();
        v38 = v92;
        break;
      default:
        break;
    }

    v37[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v37[4].n128_u64[0] = MEMORY[0x1E69A0138];
    v37[2].n128_u64[0] = v39;
    v37[2].n128_u64[1] = v38;
    v37[6].n128_u64[0] = MEMORY[0x1E69E6530];
    v37[6].n128_u64[1] = MEMORY[0x1E69A0180];
    v37[4].n128_u64[1] = v41;
    v1 = v29;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v28 = v30;
    (*v30)(v29, v40);
    v44 = sub_1C44038D0();
    sub_1C440BAA8(v44, v45, v46, v40);
    sub_1C4EFC0A8();
    v2 = 0;
    sub_1C4420C3C(v20, &unk_1EC0C06C0, &unk_1C4F10DB0);

    ++v24;
    v4 = v93;
  }

  v47 = v97;
  sub_1C4BB7370();
  if (v2)
  {
LABEL_21:
    sub_1C43FBC80();
    return;
  }

  swift_unownedRetainStrong();
  sub_1C4440C6C(v47);
  sub_1C43FEF2C();

  v48 = v18;
  v49 = *(v4 + 440);

  v92 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v50 = sub_1C44331AC();
  v91 = xmmword_1C4F0D130;
  *(v50 + 16) = xmmword_1C4F0D130;
  *(v50 + 56) = MEMORY[0x1E69E6530];
  *(v50 + 64) = MEMORY[0x1E69A0180];
  *(v50 + 32) = v96;
  sub_1C4EFB728();
  sub_1C4EFC088();
  v51 = *v28;
  v52 = v95;
  (*v28)(v1, v95);
  v53 = sub_1C4EFBC58();
  sub_1C43FCF64();
  sub_1C440BAA8(v54, v55, v56, v52);
  sub_1C43FD428();
  v57 = sub_1C4EFBBC8();
  v58 = MEMORY[0x1E69A0180];
  v88 = v51;
  v96 = v57;
  sub_1C4420C3C(&v98, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C4420C3C(v48, &unk_1EC0C06C0, &unk_1C4F10DB0);
  swift_unownedRetainStrong();
  v59 = sub_1C4441A40();
  sub_1C4440C6C(v59);
  sub_1C43FEF2C();

  v60 = *(v53 + 400);

  swift_unownedRetainStrong();
  v61 = sub_1C4441A40();
  v62 = sub_1C4440C6C(v61);
  v86[3] = v60;
  v86[0] = v49;

  v86[2] = *(v62 + 312);

  v63 = v95;
  v64 = v58;
  v65 = MEMORY[0x1E69E6530];
  v86[1] = v28;
  while (1)
  {
    v66 = sub_1C4458EE8();
    if (!v66)
    {
      sub_1C4402358();

      goto LABEL_21;
    }

    sub_1C441E870();
    v67 = sub_1C4EFBBE8();
    if (v67)
    {
      v68 = MEMORY[0x1EEE9AC00](v67);
      v69 = sub_1C44E7728(v68, v86);
      if (v69 == 5)
      {
        goto LABEL_33;
      }

      v70 = sub_1C4F02AA8();
      v65 = MEMORY[0x1E69E6530];
      v64 = MEMORY[0x1E69A0180];
    }

    else
    {
      sub_1C449DB5C();
      sub_1C4EFBB98();
      v70 = v98;
    }

    sub_1C441E870();
    v71 = sub_1C4EFBBE8();
    v97 = v66;
    if (v71)
    {
      break;
    }

    v72 = v63;
    sub_1C447E3A4();
    sub_1C4EFBB98();
    v87 = v98;
LABEL_31:
    v93 = v70;
    v74 = sub_1C44331AC();
    *(v74 + 16) = v91;
    *(v74 + 56) = v65;
    *(v74 + 64) = v64;
    *(v74 + 32) = v70;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v63 = v72;
    v88(v1, v72);
    v75 = v65;
    v76 = v90;
    sub_1C43FCF64();
    sub_1C440BAA8(v77, v78, v79, v72);
    sub_1C4EFC0A8();
    sub_1C4420C3C(v76, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v80 = sub_1C4404370();
    v80[1] = v94;
    v80[3].n128_u64[1] = v75;
    v80[4].n128_u64[0] = v64;
    v80[2].n128_u64[0] = v87;
    v80[6].n128_u64[0] = v75;
    v80[6].n128_u64[1] = v64;
    v80[4].n128_u64[1] = v93;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v88(v1, v72);
    v81 = v89;
    sub_1C43FCF64();
    sub_1C440BAA8(v82, v83, v84, v72);
    sub_1C4EFC0A8();
    sub_1C4420C3C(v81, &unk_1EC0C06C0, &unk_1C4F10DB0);

    v65 = MEMORY[0x1E69E6530];
  }

  v72 = v63;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v69 = sub_1C4414708(v73, v86);
  if (v69 != 5)
  {
    v87 = sub_1C4F02AA8();
    v65 = MEMORY[0x1E69E6530];
    goto LABEL_31;
  }

LABEL_33:
  MEMORY[0x1EEE9AC00](v69);
  sub_1C43FD954();
  *(v85 - 16) = sub_1C487BF24;
  *(v85 - 8) = &v86[-4];
  sub_1C4EFB968();
  sub_1C445EABC();
  swift_unexpectedError();
  __break(1u);
}

void sub_1C4CEA380()
{
  v0 = sub_1C4F00978();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C4F00178();
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();
  if (os_log_type_enabled(v9, v10))
  {
    sub_1C43FECF0();
    v11 = swift_slowAlloc();
    sub_1C43FEC60();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    v13 = sub_1C4F01198();
    v15 = sub_1C441D828(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1C43F8000, v9, v10, "NullScheduleLauncher: Triggering %s", v11, 0xCu);
    sub_1C440962C(v12);
    v16 = sub_1C44068C0();
    MEMORY[0x1C6942830](v16);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  (*(v3 + 8))(v8, v0);
  sub_1C43FE9F0();
}

uint64_t sub_1C4CEA558(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t *a5)
{
  sub_1C456902C(a2, a3);
  sub_1C43FBDBC();
  swift_allocObject();
  result = a4();
  *a5 = result;
  return result;
}

uint64_t sub_1C4CEA5A8()
{
  sub_1C4461BB8(0, &qword_1EDDFE900, 0x1E695E000);
  result = static NSUserDefaults.viewGenerationMaxRemoteDevices.getter();
  qword_1EDE2DDA8 = result;
  return result;
}

uint64_t sub_1C4CEA5EC(uint64_t a1)
{
  v2 = v1;
  sub_1C44366B4();
  sub_1C440E3F8();
  sub_1C4430958(v5, v1 + v4, v6);
  v7 = sub_1C44F58DC(a1);
  _s19SyncDeviceRetrieverC11GuardedDataCMa();
  sub_1C43FBDBC();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  sub_1C456902C(&qword_1EC0C61B8, &qword_1C4F6B528);
  sub_1C44400E8();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = v8;
  sub_1C4467948(a1);
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19SyncDeviceRetriever_lockedBox) = v9;
  return v2;
}

uint64_t sub_1C4CEA6D4(void *a1, void *a2)
{
  sub_1C4467948(v2 + *a1);
  v4 = *(v2 + *a2);

  sub_1C44366B4();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);

  return swift_deallocClassInstance();
}

_BYTE *_s10UpdateTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4CEA8A8()
{
  result = qword_1EDDF9D78;
  if (!qword_1EDDF9D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9D78);
  }

  return result;
}

unint64_t sub_1C4CEA900()
{
  result = qword_1EDDECED0;
  if (!qword_1EDDECED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDECED0);
  }

  return result;
}

unint64_t sub_1C4CEA958()
{
  result = qword_1EDDEBC58;
  if (!qword_1EDDEBC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEBC58);
  }

  return result;
}

unint64_t sub_1C4CEA9B0()
{
  result = qword_1EDDEBC60;
  if (!qword_1EDDEBC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEBC60);
  }

  return result;
}

uint64_t sub_1C4CEAA1C@<X0>(uint64_t a1@<X2>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v7 = sub_1C4EF93D8();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1C4EF93C8();
  v10 = *(a1 + 16);
  v11 = sub_1C4EF93B8();
  v13 = v12;

  if (v3)
  {
    *a2 = v3;
    return result;
  }

  v15 = sub_1C44CE108(v11, v13);
  if (v16)
  {
    goto LABEL_10;
  }

  v21 = v11;
  v22 = v13;
  sub_1C44344B8(v11, v13);
  sub_1C456902C(&qword_1EC0C61A0, &qword_1C4F1E400);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_1C4420C3C(v19, &qword_1EC0BB218, &qword_1C4F2DA00);
LABEL_9:
    v15 = sub_1C47DC7B8(v11, v13);
LABEL_10:
    v17 = v15;
    v18 = v16;
    result = sub_1C4434000(v11, v13);
    goto LABEL_11;
  }

  sub_1C441D670(v19, v23);
  sub_1C4409678(v23, v24);
  if ((sub_1C4F02588() & 1) == 0)
  {
    sub_1C440962C(v23);
    goto LABEL_9;
  }

  sub_1C4434000(v11, v13);
  sub_1C4409678(v23, v24);
  sub_1C4F02578();
  v18 = *(&v19[0] + 1);
  v17 = *&v19[0];
  result = sub_1C440962C(v23);
LABEL_11:
  *a3 = v17;
  a3[1] = v18;
  return result;
}

void sub_1C4CEAC50()
{
  sub_1C43FE96C();
  v28 = v3;
  v5 = v4;
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C440101C();
  v11 = sub_1C43FCDF8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  sub_1C44247B4();
  v16 = sub_1C4458808();
  sub_1C4461D94();
  if (!v1)
  {
    v17 = *(v16 + 336);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v18 = sub_1C4404370();
    *(v18 + 16) = xmmword_1C4F0CE60;
    v19 = sub_1C4424B10(v5);
    v20 = MEMORY[0x1E69A0138];
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = v20;
    v21 = MEMORY[0x1E69E6530];
    *(v18 + 32) = v19;
    *(v18 + 40) = v22;
    v23 = MEMORY[0x1E69A0180];
    *(v18 + 96) = v21;
    *(v18 + 104) = v23;
    *(v18 + 72) = v28;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v13 + 8))(v2, v10);
    v24 = sub_1C44038D0();
    sub_1C43FF8A0(v24, v25, v26, v10);
    sub_1C440C810();
    sub_1C4EFB9A8();

    sub_1C4420C3C(&v27, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4CEAE64()
{
  sub_1C43FE96C();
  sub_1C4401F00();
  v3 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C440101C();
  v8 = sub_1C43FCDF8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  sub_1C441C544();
  v11 = sub_1C440F090();
  sub_1C4440C6C(v11);
  sub_1C4402530();
  if (!v1)
  {
    v12 = *(v2 + 384);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v13 = sub_1C44331AC();
    *(v13 + 16) = xmmword_1C4F0D130;
    sub_1C44620EC(v13, MEMORY[0x1E69A0180]);
    sub_1C4441A40();
    sub_1C4EFC088();
    v14 = sub_1C43FBF04();
    v15(v14);
    v16 = sub_1C44038D0();
    sub_1C43FF8A0(v16, v17, v18, v7);
    sub_1C443474C();
    sub_1C441DEF0();
    sub_1C43FE664();
    sub_1C4EFB9A8();
    sub_1C44B9028();
    sub_1C4420C3C(&v19, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4CEB018()
{
  sub_1C43FE96C();
  sub_1C44238D0();
  v4 = v3;
  v5 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C440101C();
  v10 = sub_1C43FCDF8(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  sub_1C441C544();
  sub_1C4440C6C(v2);
  sub_1C4402530();
  if (!v1)
  {
    v13 = *(v2 + 360);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v14 = sub_1C4404370();
    *(v14 + 16) = xmmword_1C4F0CE60;
    v15 = sub_1C4424B10(v4);
    v16 = MEMORY[0x1E69A0138];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = v16;
    v17 = MEMORY[0x1E69E6530];
    *(v14 + 32) = v15;
    *(v14 + 40) = v18;
    sub_1C4443490(v17);
    sub_1C4EFC088();
    v19 = sub_1C43FBF04();
    v20(v19);
    v21 = sub_1C44038D0();
    sub_1C44554A8(v21, v22, v23);
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4CEB1AC()
{
  sub_1C43FE96C();
  v4 = v3;
  v26 = v5;
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C440101C();
  v11 = sub_1C43FCDF8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  sub_1C44247B4();
  v16 = sub_1C4458808();
  sub_1C4461D94();
  if (!v1)
  {
    v17 = *(v16 + 296);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v18 = sub_1C4404370();
    *(v18 + 16) = xmmword_1C4F0CE60;
    v19 = MEMORY[0x1E69E6530];
    v20 = v4;
    v21 = MEMORY[0x1E69A0180];
    *(v18 + 56) = MEMORY[0x1E69E6530];
    *(v18 + 64) = v21;
    *(v18 + 32) = v26;
    *(v18 + 96) = v19;
    *(v18 + 104) = v21;
    *(v18 + 72) = v20;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v13 + 8))(v2, v10);
    v22 = sub_1C44038D0();
    sub_1C43FF8A0(v22, v23, v24, v10);
    sub_1C440C810();
    sub_1C4EFB9A8();

    sub_1C4420C3C(&v25, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4CEB3A4(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1C4F02828();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1C49B754C(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1C4CEB5FC(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1C4CEB484(0, v3, 1, a1);
  }
}

uint64_t sub_1C4CEB484(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
    while (2)
    {
      v24 = v4;
      v25 = a3;
      v6 = *(v26 + 8 * a3);
      v23 = v5;
      while (1)
      {
        v7 = *v4;
        v8 = v6;
        v9 = v7;
        v10 = [v8 deviceIdentifier];
        v11 = sub_1C4F01138();
        v13 = v12;

        v14 = [v9 deviceIdentifier];
        v15 = sub_1C4F01138();
        v17 = v16;

        if (v11 == v15 && v13 == v17)
        {
          break;
        }

        v19 = sub_1C4F02938();

        if (v19)
        {
          if (!v26)
          {
            __break(1u);
            return result;
          }

          v20 = *v4;
          v6 = *(v4 + 8);
          *v4 = v6;
          *(v4 + 8) = v20;
          v4 -= 8;
          if (!__CFADD__(v5++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

LABEL_14:
      a3 = v25 + 1;
      v4 = v24 + 8;
      v5 = v23 - 1;
      if (v25 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C4CEB5FC(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_147;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_108:
      v127 = v6;
      v107 = *(v6 + 2);
      v6 += 16;
      for (i = v107; i >= 2; *v6 = i)
      {
        if (!*a3)
        {
          goto LABEL_144;
        }

        v108 = &v127[16 * i];
        v109 = *v108;
        v110 = &v6[16 * i];
        v111 = *(v110 + 1);
        sub_1C4CEBDC0((*a3 + 8 * *v108), (*a3 + 8 * *v110), (*a3 + 8 * v111), v7);
        if (v123)
        {
          break;
        }

        if (v111 < v109)
        {
          goto LABEL_132;
        }

        if (i - 2 >= *v6)
        {
          goto LABEL_133;
        }

        *v108 = v109;
        *(v108 + 1) = v111;
        v112 = *v6 - i;
        if (*v6 < i)
        {
          goto LABEL_134;
        }

        v123 = 0;
        i = *v6 - 1;
        sub_1C461950C(v110 + 16, v112, v110);
      }

LABEL_116:

      return;
    }

LABEL_141:
    v6 = sub_1C46194F4(v6);
    goto LABEL_108;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    if (v5 + 1 < v4)
    {
      v118 = v4;
      v124 = v6;
      v9 = *a3;
      v115 = v5;
      v10 = *(*a3 + 8 * v5);
      v11 = *(*a3 + 8 * v8);
      v12 = v10;
      v13 = [v11 deviceIdentifier];
      v14 = sub_1C4F01138();
      v16 = v15;

      v17 = [v12 deviceIdentifier];
      v18 = sub_1C4F01138();
      v7 = v19;

      if (v14 == v18 && v16 == v7)
      {
        v120 = 0;
      }

      else
      {
        v120 = sub_1C4F02938();
      }

      v21 = (v9 + 8 * v115 + 16);
      v22 = 8 * v115 + 8;
      do
      {
        v23 = v8;
        v6 = v22;
        if (++v8 >= v118)
        {
          break;
        }

        v128 = v8;
        v24 = *(v21 - 1);
        v25 = *v21;
        v26 = v24;
        v131 = v25;
        v27 = [v25 deviceIdentifier];
        v28 = sub_1C4F01138();
        v30 = v29;

        v31 = [v26 deviceIdentifier];
        v32 = sub_1C4F01138();
        v34 = v33;

        v35 = v28 == v32 && v30 == v34;
        v7 = v35 ? 0 : sub_1C4F02938();

        ++v21;
        v22 = (v6 + 8);
        v8 = v128;
      }

      while (((v120 ^ v7) & 1) == 0);
      if (v120)
      {
        v36 = v115;
        if (v8 < v115)
        {
          goto LABEL_138;
        }

        if (v115 >= v8)
        {
          v6 = v124;
          v7 = v115;
          goto LABEL_29;
        }

        v37 = 8 * v115;
        do
        {
          if (v36 != v23)
          {
            v38 = *a3;
            if (!*a3)
            {
              goto LABEL_145;
            }

            v39 = *(v38 + v37);
            *(v38 + v37) = *&v6[v38];
            *&v6[v38] = v39;
          }

          v36 = (v36 + 1);
          v6 -= 8;
          v37 += 8;
        }

        while (v36 < v23--);
      }

      v6 = v124;
      v7 = v115;
    }

LABEL_29:
    v41 = a3[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_137;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_51:
    if (v8 < v7)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v103 = *(v6 + 2);
      sub_1C458A358();
      v6 = v104;
    }

    v62 = v6;
    v63 = *(v6 + 2);
    v126 = v62;
    v64 = v63 + 1;
    if (v63 >= *(v62 + 3) >> 1)
    {
      sub_1C458A358();
      v126 = v105;
    }

    *(v126 + 2) = v64;
    v65 = v126 + 32;
    v66 = &v126[16 * v63 + 32];
    *v66 = v7;
    v66[1] = v8;
    v67 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v130 = v8;
    if (v63)
    {
      v6 = v126;
      while (1)
      {
        v68 = v64 - 1;
        v69 = &v65[16 * v64 - 16];
        v70 = &v6[16 * v64];
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v71 = *(v6 + 4);
          v72 = *(v6 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_72:
          if (v74)
          {
            goto LABEL_123;
          }

          v86 = *v70;
          v85 = *(v70 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_126;
          }

          v90 = *(v69 + 1);
          v91 = v90 - *v69;
          if (__OFSUB__(v90, *v69))
          {
            goto LABEL_129;
          }

          if (__OFADD__(v88, v91))
          {
            goto LABEL_131;
          }

          if (v88 + v91 >= v73)
          {
            if (v73 < v91)
            {
              v68 = v64 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (v64 < 2)
        {
          goto LABEL_125;
        }

        v93 = *v70;
        v92 = *(v70 + 1);
        v81 = __OFSUB__(v92, v93);
        v88 = v92 - v93;
        v89 = v81;
LABEL_87:
        if (v89)
        {
          goto LABEL_128;
        }

        v95 = *v69;
        v94 = *(v69 + 1);
        v81 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v81)
        {
          goto LABEL_130;
        }

        if (v96 < v88)
        {
          goto LABEL_103;
        }

LABEL_94:
        if (v68 - 1 >= v64)
        {
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
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*a3)
        {
          goto LABEL_143;
        }

        v6 = &v65[16 * v68 - 16];
        v7 = *v6;
        v100 = &v65[16 * v68];
        v101 = *(v100 + 1);
        sub_1C4CEBDC0((*a3 + 8 * *v6), (*a3 + 8 * *v100), (*a3 + 8 * v101), v67);
        if (v123)
        {
          goto LABEL_116;
        }

        if (v101 < v7)
        {
          goto LABEL_118;
        }

        v102 = *(v126 + 2);
        if (v68 > v102)
        {
          goto LABEL_119;
        }

        *v6 = v7;
        *(v6 + 1) = v101;
        if (v68 >= v102)
        {
          goto LABEL_120;
        }

        v123 = 0;
        v64 = v102 - 1;
        sub_1C461950C(v100 + 16, v102 - 1 - v68, &v65[16 * v68]);
        v6 = v126;
        *(v126 + 2) = v102 - 1;
        if (v102 <= 2)
        {
          goto LABEL_103;
        }
      }

      v75 = &v65[16 * v64];
      v76 = *(v75 - 8);
      v77 = *(v75 - 7);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_121;
      }

      v80 = *(v75 - 6);
      v79 = *(v75 - 5);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_122;
      }

      v82 = *(v70 + 1);
      v83 = v82 - *v70;
      if (__OFSUB__(v82, *v70))
      {
        goto LABEL_124;
      }

      v81 = __OFADD__(v73, v83);
      v84 = v73 + v83;
      if (v81)
      {
        goto LABEL_127;
      }

      if (v84 >= v78)
      {
        v98 = *v69;
        v97 = *(v69 + 1);
        v81 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v81)
        {
          goto LABEL_135;
        }

        if (v73 < v99)
        {
          v68 = v64 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

    v6 = v126;
LABEL_103:
    v4 = a3[1];
    v5 = v130;
    if (v130 >= v4)
    {
      goto LABEL_106;
    }
  }

  v42 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_139;
  }

  if (v42 >= v41)
  {
    v42 = a3[1];
  }

  if (v42 < v7)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v8 == v42)
  {
    goto LABEL_51;
  }

  v125 = v6;
  v132 = *a3;
  v43 = *a3 + 8 * v8 - 8;
  v116 = v7;
  v117 = v42;
  v44 = v7 - v8;
LABEL_38:
  v129 = v8;
  v45 = *(v132 + 8 * v8);
  v119 = v44;
  v121 = v43;
  v46 = v43;
  while (1)
  {
    v47 = *v46;
    v48 = v45;
    v49 = v47;
    v50 = [v48 deviceIdentifier];
    v51 = sub_1C4F01138();
    v53 = v52;

    v54 = [v49 deviceIdentifier];
    v55 = sub_1C4F01138();
    v57 = v56;

    if (v51 == v55 && v53 == v57)
    {

LABEL_49:
      v8 = v129 + 1;
      v43 = v121 + 8;
      v44 = v119 - 1;
      if ((v129 + 1) == v117)
      {
        v8 = v117;
        v6 = v125;
        v7 = v116;
        goto LABEL_51;
      }

      goto LABEL_38;
    }

    v59 = sub_1C4F02938();

    if ((v59 & 1) == 0)
    {
      goto LABEL_49;
    }

    if (!v132)
    {
      break;
    }

    v60 = *v46;
    v45 = *(v46 + 8);
    *v46 = v45;
    *(v46 + 8) = v60;
    v46 -= 8;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

uint64_t sub_1C4CEBDC0(id *a1, id *a2, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_1C4474DF4(a1, a2 - a1, a4);
    v10 = &v4[v8];
    v51 = v10;
    v53 = v5;
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      v55 = v7;
      v12 = *v4;
      v13 = *v6;
      v14 = v12;
      v15 = [v13 deviceIdentifier];
      v16 = sub_1C4F01138();
      v18 = v17;

      v19 = [v14 deviceIdentifier];
      v20 = sub_1C4F01138();
      v22 = v21;

      if (v16 == v20 && v18 == v22)
      {

        v25 = v55;
      }

      else
      {
        v24 = sub_1C4F02938();

        v25 = v55;
        if (v24)
        {
          v26 = v6;
          v27 = v55 == v6++;
          goto LABEL_15;
        }
      }

      v26 = v4;
      v27 = v25 == v4++;
LABEL_15:
      v10 = v51;
      v5 = v53;
      if (!v27)
      {
        *v25 = *v26;
      }

      v7 = v25 + 1;
    }
  }

  sub_1C4474DF4(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v49 = v4;
  v56 = v7;
LABEL_19:
  v28 = v6 - 1;
  v29 = v5 - 1;
  for (i = v6; v10 > v4 && v6 > v7; v6 = i)
  {
    v52 = v10;
    v54 = v29;
    v31 = v10 - 1;
    v32 = v28;
    v33 = *v28;
    v34 = *(v10 - 1);
    v35 = v33;
    v36 = [v34 deviceIdentifier];
    v37 = sub_1C4F01138();
    v39 = v38;

    v40 = [v35 deviceIdentifier];
    v41 = sub_1C4F01138();
    v43 = v42;

    if (v37 == v41 && v39 == v43)
    {
      v45 = 0;
    }

    else
    {
      v45 = sub_1C4F02938();
    }

    v7 = v56;
    v10 = v52;
    v28 = v32;
    if (v45)
    {
      v5 = v54;
      v4 = v49;
      v6 = v28;
      if (v54 + 1 != i)
      {
        *v54 = *v28;
        v6 = v28;
      }

      goto LABEL_19;
    }

    v4 = v49;
    if (v52 != v54 + 1)
    {
      *v54 = *v31;
    }

    v29 = v54 - 1;
    v10 = v31;
  }

LABEL_38:
  v46 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v46])
  {
    memmove(v6, v4, 8 * v46);
  }

  return 1;
}

uint64_t sub_1C4CEC0F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1C44FFC00(a1, *a2, a2[1]);
  if (!v3)
  {
    *a3 = result & 1;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
  }

  return result;
}

unint64_t sub_1C4CEC134()
{
  result = qword_1EDDECEE0;
  if (!qword_1EDDECEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDECEE0);
  }

  return result;
}

uint64_t sub_1C4CEC188()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C4CEC1D8()
{
  sub_1C44249B4();
  sub_1C4404D98();
  sub_1C440A280();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C4432DFC(v1);
  sub_1C442642C();

  return sub_1C4CE61C0(v3, v4, v5, v6, v7, v8, v9);
}

void sub_1C4CEC2C0()
{
  if (*(*v0 + 16))
  {
    sub_1C4CF693C();
    if (!v1)
    {
      sub_1C4CEC304(*(*v0 + 16) - 1);
    }
  }
}

void sub_1C4CEC304(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C48348F0(v3);
    v3 = v10;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    v6 = v4 - 1 - a1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    sub_1C4461B98((v7 + 48), v6, (v7 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

uint64_t sub_1C4CEC38C(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v387 = v4;
  *&v388 = v1;
  v6 = v5;
  v389 = v7;
  v371 = v8;
  v372 = v9;
  v11 = v10;
  v12 = v3;
  v370 = sub_1C4EF9CD8();
  v13 = sub_1C43FCDF8(v370);
  v358 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v369 = v18 - v17;
  v380 = sub_1C4EFB768();
  v19 = sub_1C43FCDF8(v380);
  v374 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  v25 = v24 - v23;
  v26 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  sub_1C43FBFDC();
  v368 = v28;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  v367 = v30;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  v366 = v32;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  v365 = v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  v364 = v36;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBF38();
  v363 = v38;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBF38();
  v362 = v40;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBF38();
  v361 = v42;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBF38();
  v360 = v44;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBF38();
  v359 = v46;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBF38();
  v378 = v48;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBF38();
  v375 = v50;
  sub_1C43FD1D0();
  v52 = MEMORY[0x1EEE9AC00](v51);
  v54 = &v331 - v53;
  MEMORY[0x1EEE9AC00](v52);
  v377 = &v331 - v55;
  v56 = sub_1C4EFBC98();
  v57 = sub_1C43FCDF8(v56);
  *v385 = v58;
  *&v385[8] = v57;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBCC4();
  *&v384 = v62 - v61;
  v63 = sub_1C4EFB678();
  v64 = sub_1C43FCDF8(v63);
  v382 = v65;
  v383 = v64;
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v64);
  sub_1C43FBFDC();
  v381 = v68;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v331 - v70;
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v72 = sub_1C4F00978();
  sub_1C442B738(v72, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v73 = sub_1C4F00968();
  v74 = sub_1C4F01CF8();

  v75 = os_log_type_enabled(v73, v74);
  v379 = v25;
  v376 = v54;
  v373 = v11;
  if (v75)
  {
    v76 = v12;
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v386 = v6;
    v79 = v78;
    *&v404[0] = v78;
    *v77 = 136315138;
    v80 = sub_1C4D11C18(v76, v387, v11);
    v82 = sub_1C441D828(v80, v81, v404);

    *(v77 + 4) = v82;
    _os_log_impl(&dword_1C43F8000, v73, v74, "ViewValidation: %s", v77, 0xCu);
    sub_1C440962C(v79);
    v83 = v79;
    v6 = v386;
    MEMORY[0x1C6942830](v83, -1, -1);
    v84 = v77;
    v12 = v76;
    MEMORY[0x1C6942830](v84, -1, -1);
  }

  sub_1C43FE990();
  v85 = v388;
  sub_1C4449828();
  if (v85)
  {
    return v73;
  }

  v386 = v6;
  sub_1C4EFB648();
  sub_1C4EFB638();
  v86 = v12;
  v87 = MEMORY[0x1E69E6530];
  *&v404[2] = MEMORY[0x1E69A0178];
  *(&v404[1] + 1) = MEMORY[0x1E69E6530];
  *&v404[0] = v86;
  sub_1C4EFB658();
  sub_1C4423A0C(v404, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C4EFB638();
  (*(v382 + 32))(v381, v71, v383);
  v88 = v384;
  sub_1C4EFBC88();
  v89 = sub_1C4EFBEE8();
  v383 = v86;
  (*(*v385 + 8))(v88, *&v385[8]);
  v90 = sub_1C4EFBED8();
  v342 = sub_1C4EFBED8();
  v92 = v377;
  sub_1C43FCF64();
  sub_1C440BAA8(v93, v94, v95, v380);
  sub_1C44458E0();
  memset(v404, 0, 40);
  sub_1C444B3C4();
  v96 = 0;
  v97 = sub_1C4EFB398();
  sub_1C4423A0C(v404, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C4423A0C(v92, &unk_1EC0C06C0, &unk_1C4F10DB0);
  v98 = (v374 + 8);
  v350 = xmmword_1C4F0D130;
  v99 = MEMORY[0x1E69A0180];
  v332 = MEMORY[0x1E69E7CC0];
  v333 = v97;
  v381 = MEMORY[0x1E69E7CC0];
  v353 = v89;
  v334 = v90;
  v343 = (v374 + 8);
  while (1)
  {
    sub_1C4788A90(v405);
    v354 = *&v405[48];
    if (!*&v405[48])
    {
      v194 = 0;
      *&v396 = MEMORY[0x1E69E7CD0];
      while (v194 != 11)
      {
        v195 = byte_1F43D9F00[v194 + 32];
        sub_1C4CEAC50();
        if (v196)
        {
          sub_1C483BE88(v404, v195);
        }

        ++v194;
      }

      sub_1C4CE7D58();
      if (v198 == 2)
      {
        memset(v405, 0, sizeof(v405));
      }

      else
      {
        sub_1C4452380(v197, v389, v407);
        memcpy(v405, v407, sizeof(v405));
      }

      memcpy(__dst, v405, 0x48uLL);
      v199 = v373;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4443048(v406, v402);
      sub_1C44600A0(v405, v402, &qword_1EC0C6340, &qword_1C4F6BAA0);
      sub_1C4CEF3C8(__dst, v383, v387, v199, v406, v332, v408);
      v409 = v408[31];
      memcpy(v404, v408, sizeof(v404));
      v73 = v372;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4423A0C(&v409, &qword_1EC0C6348, &qword_1C4F6BAA8);
      v200 = 0;
      *(&v404[15] + 1) = v73;
      v201 = *(v381 + 16);
      v375 = v381 + 32;
      v376 = v201;
      v348 = 0x80000001C4F86260;
      v349 = 0x80000001C4F862C0;
      v202 = v386;
      while (1)
      {
        if (v200 == v376)
        {

          *&v388 = *(&v404[19] + 1);
          *v385 = v371;
          if (v371 != 2)
          {
            v236 = *(v388 + 16);
            if (v236)
            {
              v237 = v387;
              v73 = v388 + 32;
              v200 = v386;
              v238 = v373;
              v239 = v383;
              do
              {
                memcpy(v414, v73, sizeof(v414));
                sub_1C4CF6478(v414, v402);
                sub_1C4CF17AC(v239, v237, v238, v414);
                result = sub_1C4CF64B0(v414);
                v73 += 72;
                --v236;
              }

              while (v236);
            }

            if ((v371 & 1) == 0)
            {
              goto LABEL_164;
            }
          }

          v240 = *(v388 + 16);
          if (v240)
          {
            v241 = 0;
            v242 = (v388 + 32);
            v387 = v240 - 1;
            *&v385[8] = xmmword_1C4F0CE60;
            v384 = xmmword_1C4F0C890;
            while (1)
            {
              if (v241 >= v240)
              {
                __break(1u);
LABEL_179:
                __break(1u);
                return result;
              }

              result = memcpy(v403, v242, 0x48uLL);
              v243 = *(&v403[0] + 1);
              v244 = *&v403[0];
              switch(*&v403[3] >> 60)
              {
                case 1:
                  swift_unownedRetainStrong();
                  v261 = *(v243 + 216);
                  swift_unownedRetain();

                  sub_1C44048BC();
                  v262 = sub_1C440FE90();
                  sub_1C4440C6C(v262);
                  if (v243)
                  {
                    goto LABEL_166;
                  }

                  sub_1C440262C();
                  v73 = *(v200 + 360);

                  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
                  v263 = sub_1C4404370();
                  sub_1C443039C(v263);
                  v265 = 0xE400000000000000;
                  v266 = 1702259052;
                  switch(v244)
                  {
                    case 1:
                      v266 = 1701736302;
                      break;
                    case 2:
                      sub_1C4411434();
                      break;
                    case 3:
                      sub_1C441CF6C();
                      v265 = v348;
                      break;
                    case 4:
                      sub_1C44054E8();
                      goto LABEL_125;
                    case 5:
                      sub_1C441F0C0();
                      goto LABEL_131;
                    case 6:
                      sub_1C440B7A4();
LABEL_131:
                      sub_1C43FF8C0();
                      break;
                    case 7:
                      sub_1C44150F8();
LABEL_125:
                      v266 = v318 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
                      break;
                    case 8:
                      sub_1C440132C();
                      break;
                    case 9:
                      sub_1C4420908();
                      break;
                    case 10:
                      sub_1C441CF6C();
                      v265 = v349;
                      break;
                    default:
                      break;
                  }

                  v264[7] = MEMORY[0x1E69E6158];
                  v264[8] = MEMORY[0x1E69A0138];
                  v264[4] = v266;
                  v264[5] = v265;
                  v264[12] = MEMORY[0x1E69E6530];
                  sub_1C443560C(v264, MEMORY[0x1E69A0180]);
                  sub_1C4EFC088();
                  v321 = sub_1C441AA1C();
                  v322(v321);
                  v200 = v361;
                  sub_1C4408154();
                  v96 = 0;

                  sub_1C4CF64B0(v403);
                  v260 = v361;
                  goto LABEL_155;
                case 2:
                  swift_unownedRetainStrong();
                  v290 = *(v244 + 240);
                  swift_unownedRetain();

                  swift_unownedRetainStrong();
                  v291 = *(v244 + 216);

                  sub_1C44048BC();
                  v292 = sub_1C440FE90();
                  sub_1C441E000(v292);
                  if (v243)
                  {
                    goto LABEL_166;
                  }

                  sub_1C4415DA0();
                  v73 = *(v244 + 40);

                  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
                  v293 = sub_1C4404370();
                  sub_1C443039C(v293);
                  v295 = 0xE400000000000000;
                  v296 = 1702259052;
                  switch(v290)
                  {
                    case 1:
                      v296 = 1701736302;
                      break;
                    case 2:
                      sub_1C4411434();
                      break;
                    case 3:
                      sub_1C441CF6C();
                      v295 = v348;
                      break;
                    case 4:
                      sub_1C44054E8();
                      goto LABEL_143;
                    case 5:
                      sub_1C441F0C0();
                      goto LABEL_151;
                    case 6:
                      sub_1C440B7A4();
LABEL_151:
                      sub_1C43FF8C0();
                      break;
                    case 7:
                      sub_1C44150F8();
LABEL_143:
                      v296 = v320 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
                      break;
                    case 8:
                      sub_1C440132C();
                      break;
                    case 9:
                      sub_1C4420908();
                      break;
                    case 10:
                      sub_1C441CF6C();
                      v295 = v349;
                      break;
                    default:
                      break;
                  }

                  v294[7] = MEMORY[0x1E69E6158];
                  v294[8] = MEMORY[0x1E69A0138];
                  v294[4] = v296;
                  v294[5] = v295;
                  v294[12] = MEMORY[0x1E69E6530];
                  sub_1C443560C(v294, MEMORY[0x1E69A0180]);
                  sub_1C4EFC088();
                  v325 = sub_1C441AA1C();
                  v326(v325);
                  v200 = v363;
                  sub_1C4408154();
                  v96 = 0;

                  sub_1C4CF64B0(v403);
                  v260 = v363;
                  goto LABEL_155;
                case 3:
                  swift_unownedRetainStrong();
                  v297 = *(v244 + 216);
                  swift_unownedRetain();

                  sub_1C44048BC();
                  v298 = sub_1C440FE90();
                  sub_1C441E000(v298);
                  if (v243)
                  {
                    goto LABEL_166;
                  }

                  sub_1C4415DA0();
                  v73 = *(v244 + 40);

                  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
                  v299 = sub_1C4404370();
                  sub_1C443039C(v299);
                  v300[7] = MEMORY[0x1E69E6158];
                  v300[8] = MEMORY[0x1E69A0138];
                  v300[4] = 1702259052;
                  v300[5] = 0xE400000000000000;
                  v300[12] = MEMORY[0x1E69E6530];
                  v300[13] = MEMORY[0x1E69A0180];
                  v300[9] = v297;
                  sub_1C442E6E0();
                  sub_1C4EFC088();
                  v301 = sub_1C441AA1C();
                  v302(v301);
                  v200 = v364;
                  sub_1C4408154();
                  v96 = 0;

                  sub_1C4CF64B0(v403);
                  v260 = v364;
                  goto LABEL_155;
                case 4:
                  swift_unownedRetainStrong();
                  v284 = *(v244 + 96);
                  swift_unownedRetain();

                  sub_1C44048BC();
                  v285 = sub_1C440FE90();
                  sub_1C4440C6C(v285);
                  if (v243)
                  {
                    goto LABEL_166;
                  }

                  sub_1C4415DA0();
                  v73 = *(v244 + 400);

                  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
                  sub_1C4406298();
                  v286 = swift_allocObject();
                  sub_1C445EACC(v286);
                  v287[7] = MEMORY[0x1E69E6530];
                  v287[8] = MEMORY[0x1E69A0180];
                  v287[4] = v284;
                  sub_1C442E6E0();
                  sub_1C4EFC088();
                  v288 = sub_1C441AA1C();
                  v289(v288);
                  v200 = v366;
                  sub_1C4408154();
                  v96 = 0;

                  sub_1C4CF64B0(v403);
                  v260 = v366;
                  goto LABEL_155;
                case 5:
                  swift_unownedRetainStrong();
                  v312 = *(v244 + 96);
                  swift_unownedRetain();

                  swift_unownedRetainStrong();
                  v2 = *(v244 + 128);

                  sub_1C44048BC();
                  v313 = sub_1C440FE90();
                  sub_1C4440C6C(v313);
                  if (v243)
                  {
                    goto LABEL_166;
                  }

                  sub_1C4415DA0();
                  v73 = *(v244 + 392);

                  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
                  v314 = sub_1C4404370();
                  sub_1C443039C(v314);
                  v315[7] = MEMORY[0x1E69E6530];
                  v315[8] = MEMORY[0x1E69A0180];
                  v315[4] = v312;
                  v315[12] = MEMORY[0x1E69E63B0];
                  v315[13] = MEMORY[0x1E69A0168];
                  v315[9] = v2;
                  sub_1C442E6E0();
                  sub_1C4EFC088();
                  v316 = sub_1C441AA1C();
                  v317(v316);
                  v200 = v365;
                  sub_1C4408154();
                  v96 = 0;

                  sub_1C4CF64B0(v403);
                  v260 = v365;
                  goto LABEL_155;
                case 6:
                  swift_unownedRetainStrong();
                  v275 = *(v244 + 24);
                  swift_unownedRetain();

                  swift_unownedRetainStrong();
                  v276 = *(v244 + 96);

                  sub_1C44048BC();
                  v277 = sub_1C440FE90();
                  sub_1C4440C6C(v277);
                  if (v243)
                  {
                    goto LABEL_166;
                  }

                  sub_1C4415DA0();
                  v73 = *(v244 + 312);

                  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
                  v278 = sub_1C4404370();
                  sub_1C443039C(v278);
                  v279 = MEMORY[0x1E69E6530];
                  v280[7] = MEMORY[0x1E69E6530];
                  v281 = MEMORY[0x1E69A0180];
                  v280[8] = MEMORY[0x1E69A0180];
                  v280[9] = v276;
                  v280[4] = v275;
                  v280[12] = v279;
                  v280[13] = v281;
                  sub_1C442E6E0();
                  sub_1C4EFC088();
                  v282 = sub_1C441AA1C();
                  v283(v282);
                  v200 = v359;
                  sub_1C4408154();
                  v96 = 0;

                  sub_1C4CF64B0(v403);
                  v260 = v359;
                  goto LABEL_155;
                case 7:
                  swift_unownedRetainStrong();
                  v303 = *(v244 + 24);
                  swift_unownedRetain();

                  swift_unownedRetainStrong();
                  v304 = *(v244 + 96);

                  sub_1C44048BC();
                  v305 = sub_1C440FE90();
                  sub_1C4440C6C(v305);
                  if (v243)
                  {
                    goto LABEL_166;
                  }

                  sub_1C4415DA0();
                  v73 = *(v244 + 304);

                  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
                  v306 = sub_1C4404370();
                  sub_1C443039C(v306);
                  v307 = MEMORY[0x1E69E6530];
                  v308[7] = MEMORY[0x1E69E6530];
                  v309 = MEMORY[0x1E69A0180];
                  v308[8] = MEMORY[0x1E69A0180];
                  v308[9] = v304;
                  v308[4] = v303;
                  v308[12] = v307;
                  v308[13] = v309;
                  sub_1C442E6E0();
                  sub_1C4EFC088();
                  v310 = sub_1C441AA1C();
                  v311(v310);
                  v200 = v360;
                  sub_1C4408154();
                  v96 = 0;

                  sub_1C4CF64B0(v403);
                  v260 = v360;
                  goto LABEL_155;
                case 8:
                  memcpy(v402, v403, 0x48uLL);
                  v251 = sub_1C4416544();
                  sub_1C44600A0(v251, v252, &qword_1EC0C6358, &unk_1C4F6BAB8);
                  v73 = v369;
                  sub_1C4EF9C88();
                  sub_1C4EF9AD8();
                  v253 = sub_1C4418CD8();
                  v254(v253);
                  sub_1C44048BC();
                  v255 = sub_1C440FE90();
                  sub_1C441E000(v255);
                  v96 = v243;
                  if (v243)
                  {
                    goto LABEL_166;
                  }

                  sub_1C440262C();
                  v73 = *(v200 + 16);

                  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
                  v256 = swift_allocObject();
                  *(v256 + 16) = v384;
                  *(v256 + 56) = MEMORY[0x1E69E63B0];
                  *(v256 + 64) = MEMORY[0x1E69A0168];
                  *(v256 + 32) = v2;
                  *(v256 + 96) = MEMORY[0x1E69E6370];
                  *(v256 + 104) = MEMORY[0x1E69A0150];
                  *(v256 + 72) = 1;
                  *(v256 + 136) = MEMORY[0x1E69E6530];
                  *(v256 + 144) = MEMORY[0x1E69A0180];
                  *(v256 + 112) = v244;
                  sub_1C442E6E0();
                  sub_1C4EFC088();
                  v200 = v380;
                  (*v343)(v244, v380);
                  sub_1C43FCF64();
                  sub_1C440BAA8(v257, v258, v259, v200);
                  sub_1C4EFC0A8();

                  sub_1C4CF64B0(v403);
                  v260 = v368;
                  goto LABEL_155;
                case 9:
                  memcpy(v402, v403, 0x48uLL);
                  v267 = sub_1C4416544();
                  sub_1C44600A0(v267, v268, &qword_1EC0C6358, &unk_1C4F6BAB8);
                  v73 = v369;
                  sub_1C4EF9C88();
                  sub_1C4EF9AD8();
                  v269 = sub_1C4418CD8();
                  v270(v269);
                  sub_1C44048BC();
                  v271 = sub_1C440FE90();
                  sub_1C441E000(v271);
                  if (v243)
                  {
                    goto LABEL_166;
                  }

                  sub_1C440262C();
                  v73 = *(v200 + 16);

                  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
                  v272 = swift_allocObject();
                  *(v272 + 16) = v384;
                  *(v272 + 56) = MEMORY[0x1E69E63B0];
                  *(v272 + 64) = MEMORY[0x1E69A0168];
                  *(v272 + 32) = v2;
                  *(v272 + 96) = MEMORY[0x1E69E6370];
                  *(v272 + 104) = MEMORY[0x1E69A0150];
                  *(v272 + 72) = 0;
                  *(v272 + 136) = MEMORY[0x1E69E6530];
                  *(v272 + 144) = MEMORY[0x1E69A0180];
                  *(v272 + 112) = v244;
                  sub_1C442E6E0();
                  sub_1C4EFC088();
                  v273 = sub_1C441AA1C();
                  v274(v273);
                  v200 = v367;
                  sub_1C4408154();
                  v96 = 0;

                  sub_1C4CF64B0(v403);
                  v260 = v367;
                  goto LABEL_155;
                case 0xALL:
                case 0xBLL:
                case 0xCLL:
                  goto LABEL_156;
                default:
                  swift_unownedRetainStrong();
                  v245 = *(v243 + 216);
                  swift_unownedRetain();

                  sub_1C44048BC();
                  v246 = sub_1C440FE90();
                  sub_1C441E000(v246);
                  if (v243)
                  {
LABEL_166:

                    sub_1C4CF64B0(v403);
                    sub_1C4423A0C(v405, &qword_1EC0C6340, &qword_1C4F6BAA0);
                    sub_1C444AF3C(v406);
                    goto LABEL_174;
                  }

                  sub_1C440262C();
                  v73 = *(v200 + 40);

                  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
                  v247 = sub_1C4404370();
                  sub_1C443039C(v247);
                  v249 = 0xE400000000000000;
                  v250 = 1702259052;
                  switch(v244)
                  {
                    case 1:
                      v250 = 1701736302;
                      break;
                    case 2:
                      sub_1C4411434();
                      break;
                    case 3:
                      sub_1C441CF6C();
                      v249 = v348;
                      break;
                    case 4:
                      sub_1C44054E8();
                      goto LABEL_137;
                    case 5:
                      sub_1C441F0C0();
                      goto LABEL_145;
                    case 6:
                      sub_1C440B7A4();
LABEL_145:
                      sub_1C43FF8C0();
                      break;
                    case 7:
                      sub_1C44150F8();
LABEL_137:
                      v250 = v319 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
                      break;
                    case 8:
                      sub_1C440132C();
                      break;
                    case 9:
                      sub_1C4420908();
                      break;
                    case 10:
                      sub_1C441CF6C();
                      v249 = v349;
                      break;
                    default:
                      break;
                  }

                  v248[7] = MEMORY[0x1E69E6158];
                  v248[8] = MEMORY[0x1E69A0138];
                  v248[4] = v250;
                  v248[5] = v249;
                  v248[12] = MEMORY[0x1E69E6530];
                  sub_1C443560C(v248, MEMORY[0x1E69A0180]);
                  sub_1C4EFC088();
                  v323 = sub_1C441AA1C();
                  v324(v323);
                  v200 = v362;
                  sub_1C4408154();
                  v96 = 0;

                  sub_1C4CF64B0(v403);
                  v260 = v362;
LABEL_155:
                  result = sub_1C4423A0C(v260, &unk_1EC0C06C0, &unk_1C4F10DB0);
LABEL_156:
                  if (v387 == v241)
                  {
                    goto LABEL_162;
                  }

                  v240 = *(v388 + 16);
                  v242 += 72;
                  ++v241;
                  break;
              }
            }
          }

LABEL_162:
          if (*v385 == 2)
          {
            sub_1C4423A0C(v405, &qword_1EC0C6340, &qword_1C4F6BAA0);
            sub_1C444AF3C(v406);

            v73 = 0;
          }

          else
          {
LABEL_164:
            switch(BYTE1(v371))
            {
              case 1:
                sub_1C44500CC(v410);
                v73 = v410;
                v327 = v96;
                v328 = sub_1C4CF1B98();
                break;
              case 2:
                sub_1C44500CC(v411);
                v73 = v411;
                v327 = v96;
                sub_1C4CF1EE0();
                break;
              case 3:
                _s13OutputBuilderCMa();
                v329 = swift_allocObject();
                sub_1C4CF05C4();

                sub_1C4423A0C(v405, &qword_1EC0C6340, &qword_1C4F6BAA0);
                sub_1C444AF3C(v406);
                swift_beginAccess();
                v73 = *(v329 + 16);
                v330 = *(v329 + 24);
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v333 = v329;
                goto LABEL_176;
              case 4:
                sub_1C44500CC(v412);
                v73 = v412;
                v327 = v96;
                v328 = sub_1C4CF36D8();
                break;
              case 5:
                sub_1C44500CC(v413);
                v73 = v413;
                v327 = v96;
                v328 = sub_1C4CF4CD4();
                break;
              default:
                sub_1C4423A0C(v405, &qword_1EC0C6340, &qword_1C4F6BAA0);
                sub_1C444AF3C(v406);

                v73 = 32123;
                goto LABEL_176;
            }

            if (v327)
            {
              sub_1C4423A0C(v405, &qword_1EC0C6340, &qword_1C4F6BAA0);
              sub_1C444AF3C(v406);

LABEL_174:

              goto LABEL_161;
            }

            v73 = v328;
            sub_1C4423A0C(v405, &qword_1EC0C6340, &qword_1C4F6BAA0);
            sub_1C444AF3C(v406);
          }

LABEL_176:

          sub_1C44500CC(v402);
          sub_1C4CF6448(v402);
          return v73;
        }

        if (v200 >= *(v381 + 16))
        {
          __break(1u);
          sub_1C444AF3C(v406);
          sub_1C4423A0C(v405, &qword_1EC0C6340, &qword_1C4F6BAA0);

          sub_1C4CF64B0(v403);
          sub_1C4423A0C(v366, &unk_1EC0C06C0, &unk_1C4F10DB0);
          goto LABEL_161;
        }

        v203 = v202;
        v377 = v200;
        v204 = v375 + 240 * v200;
        memcpy(v403, v204, sizeof(v403));
        v205 = *(v204 + 200);
        v206 = *(v204 + 216);
        v207 = *(v204 + 184);
        v438 = *(v204 + 232);
        v437[1] = v205;
        v437[2] = v206;
        v437[0] = v207;
        v208 = *(&v403[10] + 1);
        v209 = *&v403[11];
        v432 = v403[8];
        v434 = *(&v403[9] + 8);
        v210 = *(&v403[7] + 1);
        v433 = *&v403[9];
        v435 = *(&v403[10] + 1);
        v436 = *&v403[11];
        v211 = *&v403[7];
        v388 = *(&v403[4] + 8);
        v428 = *(&v403[4] + 8);
        v430 = v403[6];
        v429 = *(&v403[5] + 1);
        v431 = v403[7];
        memcpy(v427, v204, sizeof(v427));
        *&v385[8] = *&v403[0];
        memcpy(v439, &v404[10] + 8, sizeof(v439));
        _s30SourceListenerValidationResultCMa();
        swift_allocObject();
        sub_1C44600A0(v403, v402, &qword_1EC0C6350, &qword_1C4F6BAB0);
        sub_1C444AAD0(v403, v402);
        *&v384 = v211;
        *v385 = v210;
        sub_1C4431E64(v211, v210);
        v378 = v208;
        v382 = v209;
        sub_1C4431E64(v208, v209);
        sub_1C4CF6410(v439, v402);
        v212 = sub_1C4CEFFEC(v427, &v428, &v432, v437, v439);
        v73 = v212[266];
        v213 = v388;
        v202 = v203;
        sub_1C4CEB1AC();
        if (v96)
        {
          sub_1C444AF3C(v406);
          sub_1C4423A0C(v405, &qword_1EC0C6340, &qword_1C4F6BAA0);
          sub_1C441DFEC(v378, v382);

          sub_1C441DFEC(v384, *v385);
          sub_1C44528B0(v403);
          goto LABEL_160;
        }

        v212[282] = v214 & 1;
        if (v73)
        {
          if (v214)
          {
            goto LABEL_50;
          }

          v423[0] = v212;
          v374 &= 3u;
          v423[4] = v374;
          v424 = v356 & 1 | 0x7000000000000000;
          v215 = v423;
          v356 = v424;
        }

        else
        {
          if ((v214 & 1) == 0)
          {
            goto LABEL_50;
          }

          v425[0] = v212;
          v372 &= 3u;
          v425[4] = v372;
          v426 = v355 & 1 | 0x6000000000000000;
          v215 = v425;
          *&v355 = v426;
        }

        swift_unownedRetain();
        sub_1C4CEF83C(v215);
        swift_unownedRelease();
LABEL_50:
        v216 = v212[264];
        if (v216 != 2)
        {
          v217 = v212[16];
          sub_1C4836594();
          v212[280] = v218 & 1;
          if (v216)
          {
            if ((v218 & 1) == 0)
            {
              v421[0] = v212[16];
              v421[1] = v212;
              v346 &= 1u;
              v347 = (v347 & 3);
              v421[4] = v347;
              v421[6] = v346;
              v219 = v421;
LABEL_56:
              swift_unownedRetain();
              sub_1C4CEF83C(v219);
              swift_unownedRelease();
            }
          }

          else if (v218)
          {
            v422[0] = v212[16];
            v422[1] = v212;
            v344 = v344 & 1 | 0x1000000000000000;
            *&v345 = v345 & 3;
            v422[4] = v345;
            v422[6] = v344;
            v219 = v422;
            goto LABEL_56;
          }
        }

        v220 = v212[268];
        if (v220 != 2)
        {
          v221 = *(v396 + 16);
          v212[284] = v221 != 0;
          if ((v220 & 1) != 0 && !v221)
          {
            v222 = v354 & 1 | 0x2000000000000000;
            v420[0] = v212;
            v357 &= 3u;
            v420[4] = v357;
            v420[6] = v222;
            swift_unownedRetain();
            sub_1C4CEF83C(v420);
            swift_unownedRelease();
            v354 = v222;
          }
        }

        v223 = v212[267];
        if (v223 != 2)
        {
          v351 = 0;
          v224 = v396;
          v225 = *(v396 + 16);
          *&v388 = v213;
          if (v225)
          {
            v226 = *(v396 + 40);
            sub_1C4F02AF8();
            sub_1C4F01298();
            v227 = sub_1C4F02B68();
            v228 = -1 << *(v224 + 32);
            v229 = v227 & ~v228;
            if ((*(v224 + 56 + ((v229 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v229))
            {
              v230 = ~v228;
              while (2)
              {
                switch(*(*(v224 + 48) + v229))
                {
                  case 1:
                  case 2:
                  case 3:
                  case 4:
                  case 7:
                  case 8:
                  case 9:
                  case 0xA:
                    goto LABEL_67;
                  case 5:
                  case 6:
                    sub_1C44400F4();
LABEL_67:
                    v231 = sub_1C4F02938();

                    if (v231)
                    {
                      goto LABEL_71;
                    }

                    v229 = (v229 + 1) & v230;
                    if (((*(v224 + 56 + ((v229 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v229) & 1) == 0)
                    {
                      goto LABEL_71;
                    }

                    continue;
                  default:

                    v231 = 1;
                    goto LABEL_71;
                }
              }
            }
          }

          v231 = 0;
LABEL_71:
          v212[283] = v231 & 1;
          if (v231)
          {
            v96 = v351;
            v202 = v386;
          }

          else
          {
            v96 = v351;
            v202 = v386;
            if (v223)
            {
              v232 = v352 & 1 | 0x3000000000000000;
              v419[0] = v212;
              *(&v355 + 1) = BYTE8(v355) & 3;
              v419[4] = *(&v355 + 1);
              v419[6] = v232;
              swift_unownedRetain();
              sub_1C4CEF83C(v419);
              swift_unownedRelease();
              v352 = v232;
            }
          }
        }

        v73 = v212[265];
        if (v73 != 2)
        {
          sub_1C4CEAE64();
          if (v96)
          {
            sub_1C444AF3C(v406);
            sub_1C4423A0C(v405, &qword_1EC0C6340, &qword_1C4F6BAA0);
            sub_1C44528B0(v403);
            sub_1C441DFEC(v378, v382);

            sub_1C441DFEC(v384, *v385);
LABEL_160:

LABEL_161:
            sub_1C44500CC(v402);
            sub_1C4CF6448(v402);
            return v73;
          }

          v212[281] = v233 & 1;
          if (v73)
          {
            if (v233)
            {
              goto LABEL_83;
            }

            v415[0] = v212;
            v341 &= 3u;
            v415[4] = v341;
            v416 = v339 & 1 | 0x5000000000000000;
            v234 = v415;
            v339 = v416;
          }

          else
          {
            if ((v233 & 1) == 0)
            {
              goto LABEL_83;
            }

            v417[0] = v212;
            v340 &= 3u;
            v417[4] = v340;
            v418 = v338 & 1 | 0x4000000000000000;
            v234 = v417;
            v338 = v418;
          }

          swift_unownedRetain();
          sub_1C4CEF83C(v234);
          swift_unownedRelease();
        }

LABEL_83:

        MEMORY[0x1C6940330](v235);
        if (*((*(&v404[18] + 1) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(&v404[18] + 1) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C4F016D8();
        }

        v200 = v377 + 1;
        v73 = &v404[18] + 8;
        sub_1C4F01748();
        sub_1C441DFEC(v378, v382);
        sub_1C441DFEC(v384, *v385);
        sub_1C44528B0(v403);
      }
    }

    v345 = *v405;
    v340 = *&v405[24];
    v341 = *&v405[40];
    LODWORD(v339) = v405[16];
    v344 = *&v405[32];
    v398 = v405[34] & 1;
    v348 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    sub_1C4406298();
    v100 = swift_allocObject();
    sub_1C445EACC(v100);
    v101[7] = v87;
    v101[8] = v99;
    *&v385[8] = v345;
    v101[4] = v345;
    v102 = v379;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v103 = v380;
    v347 = *v98;
    v347(v102, v380);
    v104 = v376;
    sub_1C43FCF64();
    sub_1C440BAA8(v105, v106, v107, v103);
    v108 = sub_1C444C538();
    memset(v404, 0, 40);
    *&v388 = v108;
    sub_1C444B3C4();
    v349 = sub_1C4EFB398();
    sub_1C4423A0C(v404, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4423A0C(v104, &unk_1EC0C06C0, &unk_1C4F10DB0);
    sub_1C4406298();
    v109 = swift_allocObject();
    sub_1C445EACC(v109);
    v110[7] = MEMORY[0x1E69E6530];
    v110[8] = MEMORY[0x1E69A0180];
    v110[4] = *&v385[8];
    sub_1C4EFB728();
    sub_1C4EFC088();
    v347(v102, v103);
    v111 = v375;
    sub_1C43FCF64();
    sub_1C440BAA8(v112, v113, v114, v103);
    memset(v404, 0, 40);
    sub_1C444B3C4();
    v346 = sub_1C4EFB398();
    v96 = 0;
    v337 = BYTE3(v344) & 1;
    LODWORD(v338) = (v344 >> 8) & 1;
    v335 = (v344 >> 40) & 1;
    v336 = HIDWORD(v344) & 1;
    sub_1C4423A0C(v404, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4423A0C(v111, &unk_1EC0C06C0, &unk_1C4F10DB0);
LABEL_10:
    v87 = MEMORY[0x1E69E6530];
    v73 = v349;
    sub_1C4788C20();
    if (v96)
    {

      goto LABEL_31;
    }

    v115 = *&v404[3];
    if (*&v404[3] >> 60 != 11)
    {
      break;
    }

    v98 = v343;
    v99 = MEMORY[0x1E69A0180];
  }

  v116 = v103;
  v374 = *(&v404[0] + 1);
  v357 = *&v404[0];
  *&v384 = *(&v404[1] + 1);
  v117 = *&v404[1];
  *v385 = v404[2];
  swift_unownedRetainStrong();
  v118 = sub_1C4440C6C(v389);
  v377 = v117;
  v119 = v118;
  v382 = v115;

  v120 = *(v119 + 256);

  sub_1C4406298();
  v121 = swift_allocObject();
  sub_1C445EACC(v121);
  v122[7] = v87;
  v122[8] = MEMORY[0x1E69A0180];
  v122[4] = v117;
  sub_1C4EFB728();
  sub_1C4EFC088();
  v123 = sub_1C43FE990();
  (v347)(v123);
  v124 = v378;
  sub_1C43FCF64();
  sub_1C440BAA8(v125, v126, v127, v116);
  sub_1C444C5E8();
  memset(v400, 0, sizeof(v400));
  v401 = 0;
  sub_1C444B3C4();
  sub_1C4EFB408();
  sub_1C4423A0C(v400, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C4423A0C(v124, &unk_1EC0C06C0, &unk_1C4F10DB0);
  memcpy(v402, v404, 0x48uLL);
  v397 = *&v404[1];
  v395 = v404[2];
  v396 = v404[0];
  v394 = v402[6];
  *v393 = *(&v404[3] + 1);
  *&v393[15] = *&v404[4];
  if (v402[3])
  {
    v352 = v402[3];

    result = sub_1C4788C20();
    v351 = 0;
    *&v388 = *&v403[3];
    v128 = v377;
    if (*&v403[3] >> 60 == 11)
    {
      goto LABEL_179;
    }

    v129 = v403[1];
    v130 = *&v403[2];
    v355 = v403[0];
    v356 = *(&v403[2] + 1);
    sub_1C4CF64E0(*&v403[0], *(&v403[0] + 1), *&v403[1], *(&v403[1] + 1), *&v403[2], *(&v403[2] + 1), v388);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v131 = v357;
    v132 = v374;
    sub_1C447F3A4();
    sub_1C4CF64E0(v133, v134, v135, v136, v137, v138, v139);
    sub_1C44600A0(v402, v403, &qword_1EC0C6340, &qword_1C4F6BAA0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C440C820(isUniquelyReferenced_nonNull_native, v141, v142, v381);
      sub_1C458DFC8();
      v381 = v174;
    }

    v143 = v352;
    v144 = *(v381 + 16);
    if (v144 >= *(v381 + 24) >> 1)
    {
      sub_1C458DFC8();
      v143 = v352;
      v381 = v175;
    }

    v403[0] = v396;
    *&v403[1] = v397;
    v392 = v395;
    v145 = v394;
    *(v391 + 15) = *&v393[15];
    v391[0] = *v393;
    v390[0] = *v399;
    *(v390 + 3) = *&v399[3];
    v146 = v398;
    v147 = v381;
    *(v381 + 16) = v144 + 1;
    v148 = v147 + 240 * v144;
    v149 = *&v403[1];
    *(v148 + 32) = v403[0];
    *(v148 + 48) = v149;
    *(v148 + 56) = v143;
    *(v148 + 64) = v392;
    *(v148 + 80) = v145;
    v150 = v391[0];
    v151 = *(v391 + 15);
    *(v148 + 232) = v339;
    LODWORD(v149) = v390[0];
    *(v148 + 236) = *(v390 + 3);
    *(v148 + 233) = v149;
    *(v148 + 250) = v146;
    *(v148 + 96) = v151;
    *(v148 + 104) = v131;
    *(v148 + 81) = v150;
    *(v148 + 112) = v132;
    *(v148 + 120) = v128;
    v152 = v384;
    v154 = *v385;
    v153 = *&v385[8];
    *(v148 + 128) = v384;
    *(v148 + 136) = v154;
    v155 = v382;
    *(v148 + 144) = v153;
    *(v148 + 152) = v155;
    v156 = v355;
    *(v148 + 160) = v355;
    *(v148 + 176) = v129;
    *(v148 + 192) = v130;
    v157 = v388;
    *(v148 + 200) = v356;
    *(v148 + 208) = v157;
    *(v148 + 216) = v345;
    *(v148 + 240) = v340;
    *(v148 + 248) = v344;
    *(v148 + 249) = v338;
    *(v148 + 251) = v337;
    *(v148 + 252) = v336;
    *(v148 + 253) = v335;
    *(v148 + 256) = v341;
    *(v148 + 264) = v354;
    if (v398 != 1)
    {
      v352 = v130;
      sub_1C4423A0C(v402, &qword_1EC0C6340, &qword_1C4F6BAA0);
      sub_1C44652C4(v357, v374, v377, v152, v154, v153, v155);
      sub_1C44652C4(v156, *(&v156 + 1), v129, *(&v129 + 1), v352, v356, v388);
      goto LABEL_26;
    }

    v103 = v380;
    if (v394)
    {
      sub_1C4423A0C(v402, &qword_1EC0C6340, &qword_1C4F6BAA0);
      v178 = sub_1C4413C50();
      sub_1C44652C4(v178, v179, v180, v181, v182, v183, v382);
      sub_1C44652C4(v355, *(&v355 + 1), v129, *(&v129 + 1), v129, v356, v388);
      v96 = v351;
    }

    else
    {
      v158 = swift_isUniquelyReferenced_nonNull_native();
      if ((v158 & 1) == 0)
      {
        sub_1C440C820(v158, v159, v160, v332);
        sub_1C458DF98();
        v332 = v176;
      }

      v161 = *(v332 + 16);
      if (v161 >= *(v332 + 24) >> 1)
      {
        sub_1C458DF98();
        v332 = v177;
      }

      sub_1C447F3A4();
      sub_1C44652C4(v162, v163, v164, v165, v166, v167, v168);
      sub_1C44652C4(v355, *(&v355 + 1), v129, *(&v129 + 1), v129, v356, v388);
      v169 = v332;
      *(v332 + 16) = v161 + 1;
      v170 = v169 + 72 * v161;
      v171 = v397;
      *(v170 + 32) = v396;
      v172 = v352;
      *(v170 + 48) = v171;
      *(v170 + 56) = v172;
      *(v170 + 64) = v395;
      *(v170 + 80) = v394;
      v173 = *v393;
      *(v170 + 96) = *&v393[15];
      *(v170 + 81) = v173;
LABEL_26:
      v96 = v351;
      v103 = v380;
    }

    goto LABEL_10;
  }

  *&v403[0] = v377;
  v73 = sub_1C4F02858();
  v185 = v184;
  sub_1C450B034();
  swift_allocError();
  *v186 = v73;
  *(v186 + 8) = v185;
  *(v186 + 16) = xmmword_1C4F5A290;
  *(v186 + 32) = 0;
  *(v186 + 40) = 0xE000000000000000;
  *(v186 + 48) = v403[0];
  *(v186 + 64) = 0;
  swift_willThrow();

  v187 = v382;

  v188 = sub_1C4413C50();
  sub_1C44652C4(v188, v189, v190, v191, v192, v193, v187);

LABEL_31:
  sub_1C444AF3C(v406);

  return v73;
}

void *sub_1C4CEF3C8@<X0>(uint64_t *__src@<X4>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X5>, void *a7@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v32 = *a5;
  v12 = *(a5 + 8);
  v30 = *(a5 + 32);
  v31 = *(a5 + 16);
  v29 = *(a5 + 56);
  v27 = *(a5 + 48);
  v28 = *(a5 + 64);
  v13 = MEMORY[0x1E69E7CC0];
  *&__srca[15] = MEMORY[0x1E69E7CC0];
  sub_1C456902C(&unk_1EC0C6380, &qword_1C4F37698);
  sub_1C4C41B64();
  *(&__srca[15] + 1) = sub_1C4F00F28();
  sub_1C456902C(&qword_1EC0C6390, qword_1C4F6BAE0);
  *&__srca[16] = sub_1C4F00F28();
  sub_1C456902C(&qword_1EC0B8EB8, &unk_1C4F0E920);
  *(&__srca[16] + 1) = sub_1C4F00F28();
  *&__srca[17] = v13;
  *(&__srca[17] + 1) = v13;
  *&__srca[18] = v13;
  *(&__srca[18] + 1) = v13;
  *&__srca[19] = v13;
  *(&__srca[19] + 1) = v13;
  *&__srca[0] = a2;
  *(&__srca[0] + 1) = a3;
  *&__srca[1] = a4;
  memcpy(&__srca[1] + 8, a5, 0x48uLL);
  memcpy(&__srca[6], __src, 0x48uLL);
  if (v12)
  {
    sub_1C4443048(a5, &v46);
    sub_1C44600A0(__src, &v46, &qword_1EC0C6340, &qword_1C4F6BAA0);

    *(&__srca[10] + 1) = v32;
    *&__srca[11] = v12 & 7;
    *(&__srca[12] + 8) = v30;
    *(&__srca[11] + 8) = v31;
    *(&__srca[13] + 1) = v27 & 0x101;
    *&__srca[14] = v29;
    *(&__srca[14] + 1) = v28;
    v14 = *(a5 + 24);
    v15 = *(a5 + 32);
    *&v46 = v12;
    *(&v46 + 1) = v14;
    *&v47 = v15;
    *&v48 = 0;
    v49 = 0xA000000000000000;
    sub_1C4443048(a5, &v39);
  }

  else
  {
    if (!*(a6 + 16))
    {
      sub_1C4443048(a5, &v46);
      sub_1C44600A0(__src, &v46, &qword_1EC0C6340, &qword_1C4F6BAA0);

      if (*(a5 + 64) >> 60 != 15 || (*(a5 + 40) & 1) != 0)
      {
        *(&__srca[10] + 1) = 1;
        memset(&__srca[11], 0, 40);
        *(&__srca[13] + 1) = 0x8000000000000000;
        __srca[14] = 0uLL;
      }

      else
      {
        *(&__srca[12] + 8) = 0u;
        *(&__srca[11] + 8) = 0u;
        *(&__srca[10] + 8) = 0u;
        __srca[14] = 0uLL;
        *(&__srca[13] + 1) = 0x8000000000000000;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v50 = 0;
        v51 = 0;
        v49 = 0xC000000000000000;
        sub_1C4CEF83C(&v46);
      }

      goto LABEL_6;
    }

    *(&__srca[10] + 1) = a6;
    *&__srca[11] = 0;
    *(&__srca[13] + 1) = 0x4000000000000000;
    *&v46 = a6;
    *&v48 = 0;
    v49 = 0xB000000000000000;
    sub_1C4443048(a5, &v39);
    sub_1C44600A0(__src, &v39, &qword_1EC0C6340, &qword_1C4F6BAA0);
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4CEF83C(&v46);

LABEL_6:
  if ((*(a5 + 48) & 1) == 0)
  {
    v40 = 0u;
    v41 = 0u;
    v39 = 1;
    v42 = 0;
    v45 = 0;
    v43 = 0xC000000000000000;
    v44 = 0;
    sub_1C4CEF83C(&v39);
  }

  v16 = __src[3];
  if (v16)
  {
    v17 = __src[1];
    v18 = __src[2];
    v20 = __src[4];
    v19 = __src[5];
    v22 = __src[7];
    v21 = __src[8];
    v23 = *(__src + 48);
    if (v23)
    {
      if ((*(a5 + 40) & 1) == 0 && *(a5 + 64) >> 60 == 15)
      {
        v24 = __src[4] & 3;
        v25 = 0x9000000000000000;
LABEL_17:
        v38[0] = *__src;
        v38[1] = v17;
        v38[2] = v18;
        v38[3] = v16;
        v38[4] = v24;
        v38[5] = v19;
        v38[6] = v25 & 0xFFFFFFFFFFFFFFFELL | v23 & 1;
        v38[7] = v22;
        v38[8] = v21;
        memcpy(v36, __dst, sizeof(v36));
        sub_1C444AAD0(v36, v35);
        sub_1C4CEF83C(v38);
        sub_1C4423A0C(__src, &qword_1EC0C6340, &qword_1C4F6BAA0);
        sub_1C444AF3C(a5);
        sub_1C4423A0C(__src, &qword_1EC0C6340, &qword_1C4F6BAA0);
        return memcpy(a7, __srca, 0x140uLL);
      }
    }

    else if (*(a5 + 64) >> 60 != 15)
    {
      v24 = __src[4] & 3;
      v25 = 0x8000000000000000;
      goto LABEL_17;
    }

    sub_1C4423A0C(__src, &qword_1EC0C6340, &qword_1C4F6BAA0);
  }

  sub_1C444AF3C(a5);
  return memcpy(a7, __srca, 0x140uLL);
}

uint64_t sub_1C4CEF83C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1;
  switch(a1[6] >> 60)
  {
    case 2uLL:
      v37 = *a1;
      swift_unownedRetainStrong();
      v38 = *(v2 + 240);

      v39 = v1[32];
      swift_isUniquelyReferenced_nonNull_native();
      v40 = v1[32];
      v71[0] = v4[32];
      v41 = sub_1C457B5CC(v38);
      if (__OFADD__(*(v40 + 16), (v42 & 1) == 0))
      {
        goto LABEL_31;
      }

      v43 = v41;
      v44 = v42;
      sub_1C456902C(&qword_1EC0C6378, &unk_1C4F6BAD0);
      v45 = v71[0];
      if (sub_1C4F02458())
      {
        v46 = sub_1C457B5CC(v38);
        if ((v44 & 1) != (v47 & 1))
        {
          goto LABEL_33;
        }

        v43 = v46;
      }

      v4[32] = v71[0];
      if ((v44 & 1) == 0)
      {
        sub_1C457EB24(v43, v38, MEMORY[0x1E69E7CC0], v45);
      }

      v48 = *(v45 + 56) + 8 * v43;
      sub_1C4589438();
      v49 = *(*v48 + 16);
      sub_1C4589FD0();
      v50 = *v48;
      *(v50 + 16) = v49 + 1;
      memcpy((v50 + 72 * v49 + 32), a1, 0x48uLL);
      swift_unownedRetain();
      sub_1C4589438();
      v51 = *(v4[39] + 16);
      sub_1C4589FD0();
      v52 = v4[39];
      *(v52 + 16) = v51 + 1;
      memcpy((v52 + 72 * v51 + 32), a1, 0x48uLL);
      v4[39] = v52;

      return swift_unownedRetain();
    case 3uLL:
      v53 = *a1;
      swift_unownedRetainStrong();
      swift_beginAccess();
      sub_1C4589438();
      v54 = *(*(v2 + 272) + 16);
      sub_1C4589FD0();
      v55 = *(v2 + 272);
      *(v55 + 16) = v54 + 1;
      memcpy((v55 + 72 * v54 + 32), a1, 0x48uLL);
      *(v2 + 272) = v55;
      swift_endAccess();
      swift_unownedRetain();

      sub_1C4589438();
      v56 = *(v4[36] + 16);
      sub_1C4589FD0();
      v57 = v4[36];
      *(v57 + 16) = v56 + 1;
      memcpy((v57 + 72 * v56 + 32), a1, 0x48uLL);
      v4[36] = v57;
      swift_unownedRetain();
      v58 = v4[32];
      swift_isUniquelyReferenced_nonNull_native();
      v71[0] = v4[32];
      v59 = sub_1C457B5CC(0);
      if (__OFADD__(*(v71[0] + 16), (v60 & 1) == 0))
      {
        goto LABEL_32;
      }

      v61 = v59;
      v62 = v60;
      sub_1C456902C(&qword_1EC0C6378, &unk_1C4F6BAD0);
      v63 = v71[0];
      if (sub_1C4F02458())
      {
        v64 = sub_1C457B5CC(0);
        if ((v62 & 1) != (v65 & 1))
        {
          goto LABEL_33;
        }

        v61 = v64;
      }

      v4[32] = v71[0];
      if ((v62 & 1) == 0)
      {
        sub_1C457EB24(v61, 0, MEMORY[0x1E69E7CC0], v63);
      }

      v66 = *(v63 + 56) + 8 * v61;
      sub_1C4589438();
      v67 = *(*v66 + 16);
      sub_1C4589FD0();
      v68 = *v66;
      *(v68 + 16) = v67 + 1;
      memcpy((v68 + 72 * v67 + 32), a1, 0x48uLL);
      swift_unownedRetain();
      sub_1C4589438();
      v69 = *(v4[39] + 16);
      sub_1C4589FD0();
      v70 = v4[39];
      *(v70 + 16) = v69 + 1;
      memcpy((v70 + 72 * v69 + 32), a1, 0x48uLL);
      v4[39] = v70;
      return swift_unownedRetain();
    case 4uLL:
    case 5uLL:
      v8 = *a1;
      swift_unownedRetainStrong();
      swift_beginAccess();
      sub_1C4CF6478(a1, v71);
      sub_1C4589438();
      v9 = *(*(v2 + 272) + 16);
      sub_1C4589FD0();
      v10 = *(v2 + 272);
      *(v10 + 16) = v9 + 1;
      memcpy((v10 + 72 * v9 + 32), a1, 0x48uLL);
      *(v2 + 272) = v10;
      swift_endAccess();

      sub_1C4589438();
      v11 = *(v4[36] + 16);
      sub_1C4589FD0();
      v12 = v4[36];
      *(v12 + 16) = v11 + 1;
      memcpy((v12 + 72 * v11 + 32), a1, 0x48uLL);
      v4[36] = v12;
      goto LABEL_13;
    case 6uLL:
    case 7uLL:
      v13 = *a1;
      swift_unownedRetainStrong();
      swift_beginAccess();
      sub_1C4CF6478(a1, v71);
      sub_1C4589438();
      v14 = *(*(v2 + 272) + 16);
      sub_1C4589FD0();
      v15 = *(v2 + 272);
      *(v15 + 16) = v14 + 1;
      memcpy((v15 + 72 * v14 + 32), a1, 0x48uLL);
      *(v2 + 272) = v15;
      swift_endAccess();

      sub_1C4589438();
      v16 = *(v4[34] + 16);
      sub_1C4589FD0();
      v17 = v4[34];
      *(v17 + 16) = v16 + 1;
      memcpy((v17 + 72 * v16 + 32), a1, 0x48uLL);
      v4[34] = v17;
      goto LABEL_13;
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
      sub_1C4589438();
      v6 = *(v1[30] + 16);
      sub_1C4589FD0();
      v7 = v1[30];
      *(v7 + 16) = v6 + 1;
      memcpy((v7 + 72 * v6 + 32), a1, 0x48uLL);
      v4[30] = v7;
      goto LABEL_13;
    default:
      v18 = a1[1];
      swift_unownedRetainStrong();
      swift_beginAccess();
      sub_1C4CF6478(a1, v71);
      sub_1C4589438();
      v19 = *(*(v3 + 272) + 16);
      sub_1C4589FD0();
      v20 = *(v3 + 272);
      *(v20 + 16) = v19 + 1;
      memcpy((v20 + 72 * v19 + 32), a1, 0x48uLL);
      *(v3 + 272) = v20;
      swift_endAccess();

      v21 = v4[32];
      swift_isUniquelyReferenced_nonNull_native();
      v71[0] = v4[32];
      v22 = v71[0];
      v23 = sub_1C457B5CC(v2);
      if (__OFADD__(*(v22 + 16), (v24 & 1) == 0))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v25 = v23;
      v26 = v24;
      sub_1C456902C(&qword_1EC0C6378, &unk_1C4F6BAD0);
      v27 = sub_1C4F02458();
      v28 = v71[0];
      if ((v27 & 1) == 0)
      {
        goto LABEL_10;
      }

      v29 = sub_1C457B5CC(v2);
      if ((v26 & 1) != (v30 & 1))
      {
LABEL_33:
        result = sub_1C4F029F8();
        __break(1u);
        return result;
      }

      v25 = v29;
LABEL_10:
      v4[32] = v28;
      if ((v26 & 1) == 0)
      {
        sub_1C457EB24(v25, v2, MEMORY[0x1E69E7CC0], v28);
      }

      v31 = *(v28 + 56) + 8 * v25;
      sub_1C4589438();
      v32 = *(*v31 + 16);
      sub_1C4589FD0();
      v33 = *v31;
      *(v33 + 16) = v32 + 1;
      memcpy((v33 + 72 * v32 + 32), a1, 0x48uLL);
LABEL_13:
      sub_1C4CF6478(a1, v71);
      sub_1C4589438();
      v34 = *(v4[39] + 16);
      sub_1C4589FD0();
      v35 = v4[39];
      *(v35 + 16) = v34 + 1;
      memcpy((v35 + 72 * v34 + 32), a1, 0x48uLL);
      v4[39] = v35;
      return sub_1C4CF6478(a1, v71);
  }
}

uint64_t sub_1C4CEFFEC(char *__src, uint64_t a2, uint64_t a3, uint64_t a4, int8x16_t *a5)
{
  *(v5 + 280) = 33554946;
  *(v5 + 284) = 2;
  memcpy((v5 + 24), __src, 0x48uLL);
  v11 = *(a2 + 16);
  *(v5 + 96) = *a2;
  *(v5 + 112) = v11;
  *(v5 + 128) = *(a2 + 32);
  *(v5 + 144) = *(a2 + 48);
  v12 = *(a3 + 16);
  *(v5 + 152) = *a3;
  *(v5 + 168) = v12;
  *(v5 + 184) = *(a3 + 32);
  *(v5 + 200) = *(a3 + 48);
  v13 = *a4;
  v14 = *(a4 + 16);
  v15 = *(a4 + 32);
  *(v5 + 256) = *(a4 + 48);
  *(v5 + 224) = v14;
  *(v5 + 240) = v15;
  *(v5 + 208) = v13;
  v16 = *(a4 + 32);
  *(v5 + 272) = MEMORY[0x1E69E7CC0];
  v17 = a5[3].u64[0];
  *(v5 + 16) = v16;
  if (!(v17 >> 62))
  {
    sub_1C4CF6BE0(a5);
    *(v5 + 264) = 0x2000000;
    *(v5 + 268) = 2;
    return v5;
  }

  if (v17 >> 62 == 1)
  {
    sub_1C444AAD0(__src, v42);
    sub_1C4CF6BE0(a5);
    *(v5 + 264) = 0;
    sub_1C44528B0(__src);
    *(v5 + 266) = (__src[48] & 1) == 0;
    *(v5 + 267) = 514;
    return v5;
  }

  if (v17 != 0x8000000000000000 || (v18 = vorrq_s8(a5[1], a5[2]), a5->i64[0] | *&vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL)) | a5[3].i64[1] | a5[4].i64[0] | a5->i64[1]))
  {
    if (sub_1C4424B10(v16) == 1701736302 && v23 == 0xE400000000000000)
    {
      sub_1C444808C(a4, v42);

      goto LABEL_20;
    }

    v25 = sub_1C4F02938();
    sub_1C444AAD0(__src, v42);
    sub_1C444808C(a4, v42);
    sub_1C444C58C(a2, v42);
    sub_1C444C58C(a3, v42);

    if (v25)
    {
      sub_1C444053C(a3);
      sub_1C444053C(a2);
      sub_1C44528B0(__src);
LABEL_20:
      sub_1C44636BC(a4);
      *(v5 + 268) = 2;
      v26 = 33554434;
LABEL_21:
      *(v5 + 264) = v26;
      return v5;
    }

    sub_1C4409528(*(a4 + 16));
    if (v30 == 0x7055737961776C61 && v29 == 0xEC00000065746164)
    {
    }

    else
    {
      v32 = sub_1C4F02938();

      if ((v32 & 1) == 0)
      {
        if (*(__src + 5) == *(a2 + 24))
        {
          sub_1C444053C(a3);
          sub_1C444053C(a2);
          sub_1C44528B0(__src);
          sub_1C44636BC(a4);
          *(v5 + 268) = 2;
          v26 = 33620482;
          goto LABEL_21;
        }

        *(v5 + 266) = 0;
        if (sub_1C4424B10(*(v5 + 16)) == 1702259052 && v33 == 0xE400000000000000)
        {
        }

        else
        {
          v35 = sub_1C4F02938();

          if ((v35 & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        sub_1C4409528(__src[8]);
        if (v37 == 2003134838 && v36 == 0xE400000000000000)
        {
        }

        else
        {
          v39 = sub_1C4F02938();

          if ((v39 & 1) == 0)
          {
LABEL_50:
            *(v5 + 264) = 1;
            *(v5 + 268) = 2;
            goto LABEL_53;
          }
        }

        *(v5 + 268) = 1;
        *(v5 + 264) = 2;
LABEL_53:
        sub_1C44636BC(a4);
        if (*(a4 + 33))
        {
          sub_1C4EF9AE8();
          v41 = v40;
          sub_1C444053C(a3);
          sub_1C44528B0(__src);
          sub_1C444053C(a2);
          if (*(a2 + 32) >= v41)
          {
            *(v5 + 267) = 2;
            *(v5 + 265) = 1;
          }

          else
          {
            *(v5 + 267) = 1;
            *(v5 + 265) = 0;
          }
        }

        else
        {
          sub_1C444053C(a3);
          sub_1C444053C(a2);
          sub_1C44528B0(__src);
          *(v5 + 265) = 0;
          *(v5 + 267) = 2;
        }

        return v5;
      }
    }

    sub_1C444053C(a3);
    sub_1C444053C(a2);
    sub_1C44528B0(__src);
    sub_1C44636BC(a4);
    *(v5 + 268) = 2;
    v26 = 33554433;
    goto LABEL_21;
  }

  if (sub_1C4424B10(v16) == 1701736302 && v19 == 0xE400000000000000)
  {
    sub_1C444808C(a4, v42);

    goto LABEL_23;
  }

  v21 = sub_1C4F02938();
  sub_1C444808C(a4, v42);

  if (v21)
  {
LABEL_23:
    v22 = 0;
    goto LABEL_24;
  }

  v22 = 1;
LABEL_24:
  *(v5 + 264) = v22;
  *(v5 + 265) = 0;
  sub_1C44636BC(a4);
  if (*(a4 + 33))
  {
    v27 = 1;
  }

  else
  {
    v27 = 2;
  }

  *(v5 + 267) = v27;
  *(v5 + 268) = 2;
  return v5;
}

void *sub_1C4CF0510()
{
  v1 = v0[6];
  v2 = v0[10];
  v3 = v0[11];

  sub_1C441DFEC(v2, v3);
  sub_1C441DFEC(v0[17], v0[18]);
  sub_1C441DFEC(v0[24], v0[25]);
  v4 = v0[32];

  v5 = v0[34];

  return v0;
}

uint64_t sub_1C4CF0570()
{
  sub_1C4CF0510();

  return swift_deallocClassInstance();
}

void *sub_1C4CF05C4()
{
  v1 = v0;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v2 = sub_1C4EF93D8();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[4] = sub_1C4EF93C8();
  v0[5] = MEMORY[0x1E69E7CC0];
  v5 = v0 + 5;
  swift_beginAccess();
  sub_1C4588BAC();
  v6 = *(*v5 + 16);
  sub_1C45897E8();
  v7 = *v5;
  sub_1C441C5F8(v6 + 1);
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *v5 = v9;
  swift_endAccess();
  return v1;
}

uint64_t sub_1C4CF068C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4409B14();
  sub_1C4CEC2C0();
  swift_endAccess();
  sub_1C4409B14();
  v6 = sub_1C43FE990();
  MEMORY[0x1C6940010](v6);
  swift_endAccess();

  if (a2)
  {
    v7 = sub_1C43FE99C();
    MEMORY[0x1C6940010](v7);
    MEMORY[0x1C6940010](14882, 0xE200000000000000);
    sub_1C4409B14();
    MEMORY[0x1C6940010](34, 0xE100000000000000);
    swift_endAccess();
  }

  sub_1C4409B14();
  MEMORY[0x1C6940010](a3, 0xE100000000000000);
  swift_endAccess();
  sub_1C4409B14();
  sub_1C4588BAC();
  sub_1C4410700(*(v3 + 40));
  v8 = *(v3 + 40);
  sub_1C441C5F8(a3 + 1);
  *(v9 + 32) = 44;
  *(v9 + 40) = 0xE100000000000000;
  *(v3 + 40) = v10;
  sub_1C4588BAC();
  sub_1C4410700(*(v3 + 40));
  v11 = *(v3 + 40);
  sub_1C441C5F8(a3 + 1);
  *(v12 + 32) = 0;
  *(v12 + 40) = 0xE000000000000000;
  *(v3 + 40) = v13;
  return swift_endAccess();
}

uint64_t sub_1C4CF080C(uint64_t a1)
{
  sub_1C4409B14();
  MEMORY[0x1C6940010](a1, 0xE100000000000000);
  swift_endAccess();
  sub_1C4409B14();
  sub_1C4CEC2C0();
  swift_endAccess();
}

uint64_t sub_1C4CF0884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1C4409B14();
  sub_1C4CEC2C0();
  v11 = v10;
  v13 = v12;
  swift_endAccess();
  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if (!v13)
  {
    v13 = 0xE000000000000000;
  }

  sub_1C4409B14();
  MEMORY[0x1C6940010](v14, v13);
  swift_endAccess();

  MEMORY[0x1C6940010](a1, a2);
  MEMORY[0x1C6940010](14882, 0xE200000000000000);
  MEMORY[0x1C6940010](a3, a4);
  sub_1C4409B14();
  MEMORY[0x1C6940010](34, 0xE100000000000000);
  swift_endAccess();

  sub_1C4409B14();
  sub_1C4588BAC();
  sub_1C4410700(*(v5 + 40));
  v15 = *(v5 + 40);
  sub_1C441C5F8(35);
  *(v16 + 32) = 44;
  *(v16 + 40) = 0xE100000000000000;
  *(v5 + 40) = v17;
  return swift_endAccess();
}

void *sub_1C4CF09CC()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t sub_1C4CF09FC()
{
  sub_1C4CF09CC();

  return swift_deallocClassInstance();
}

unint64_t sub_1C4CF0A54(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >> 62 == 3)
  {
    return (*a1 + 12);
  }

  else
  {
    return v1 >> 60;
  }
}

uint64_t sub_1C4CF0A74(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32) >> 2;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1C4CF0ABC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 72) = 1;
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
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 4 * -a2;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      return result;
    }

    *(a1 + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4CF0B30(uint64_t result, uint64_t a2)
{
  if (a2 < 0xC)
  {
    v2 = *(result + 48) & 1 | (a2 << 60);
    *(result + 32) &= 3uLL;
    *(result + 48) = v2;
  }

  else
  {
    *result = (a2 - 12);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = 0xC000000000000000;
    *(result + 56) = 0;
    *(result + 64) = 0;
  }

  return result;
}

uint64_t sub_1C4CF0B88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 a5)
{
  v154 = a3;
  v9 = sub_1C4F01188();
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = 0;
  if (a4 >> 60 == 15)
  {
    return v18;
  }

  v18 = a5;
  switch(a5)
  {
    case 1u:
      _s20KnowledgeGraphSourceCMa();
      v20 = sub_1C43FE99C();
      sub_1C44344B8(v20, v21);
      v22 = sub_1C43FE99C();
      sub_1C4CDE560(v22, v23);
      v25 = v24;
      v27 = v26;
      sub_1C456902C(&qword_1EC0B8850, &unk_1C4F0DC40);
      inited = swift_initStackObject();
      v29 = sub_1C4409364(inited, xmmword_1C4F0C890);
      v29[3].n128_u64[1] = 0xD000000000000022;
      v29[4].n128_u64[0] = 0x80000001C4FC5FD0;
      v29[4].n128_u64[1] = v25;
      v29[5].n128_u64[0] = 0xD00000000000001BLL;
      v29[5].n128_u64[1] = 0x80000001C4FAAFA0;
      v29[6].n128_u64[0] = v27;
      goto LABEL_17;
    case 2u:
      return 8738;
    case 3u:
      if (*(a1 + 32) && *(a1 + 32) == 1)
      {
        v42 = sub_1C43FD7E0();
        sub_1C44344B8(v42, v43);

        goto LABEL_27;
      }

      v65 = sub_1C4F02938();
      v66 = sub_1C43FD7E0();
      sub_1C44344B8(v66, v67);

      if (v65)
      {
LABEL_27:
        v68 = sub_1C43FD7E0();
        sub_1C44344B8(v68, v69);
        sub_1C43FD7E0();
        v70 = sub_1C44633C0();
        v72 = v71;
        v74 = v73;
        _s13OutputBuilderCMa();
        v75 = swift_initStackObject();
        sub_1C4CF05C4();
        sub_1C4CF0684(0, 0);
        if (v70)
        {
          v153 = v72;
          objc_opt_self();
          v76 = swift_dynamicCastObjCClass();
          if (v76)
          {
            v77 = v76;
            swift_unknownObjectRetain();
            sub_1C4CF0684(0xD000000000000010, 0x80000001C4FC6000);
            if ([v77 value])
            {
              objc_opt_self();
              v78 = swift_dynamicCastObjCClass();
              if (v78)
              {
                v79 = v78;
                v80 = [v78 streamId];
                v81 = sub_1C4F01138();
                v83 = v82;

                v84 = sub_1C442558C();
                sub_1C4CF6C10(v84, v85, v81, v83, v75);

                v86 = [v79 segmentName];
                v87 = sub_1C4F01138();
                v89 = v88;

                v90 = sub_1C441BE50();
                sub_1C4CF6C10(v90, v91, v87, v89, v75);

                [v79 iterationStartTime];
                sub_1C4433990(v92);
                sub_1C440A294([v79 offset]);
                swift_unknownObjectRelease();
LABEL_46:
                sub_1C4CF0804();
                swift_unknownObjectRelease();
                v72 = v153;
                goto LABEL_47;
              }

              swift_unknownObjectRelease();
            }

            v128 = [v77 upstreams];
            v129 = sub_1C456902C(&unk_1EC0C0730, &qword_1C4F67F20);
            v130 = sub_1C4F01678();

            MEMORY[0x1C6940380](v130, v129);
            v132 = v131;

            v133 = sub_1C4426238();
            sub_1C4CF6C10(v133, v134, v135, v132, v75);

            *&v159 = [v77 value];
            sub_1C456902C(&unk_1EC0C5D70, &unk_1C4F3F010);
            v136 = sub_1C4F01198();
            sub_1C43FCB78(v136, v137);

            goto LABEL_46;
          }

          swift_unknownObjectRetain();
          sub_1C4CF6C10(0xD000000000000010, 0x80000001C4FC6000, 0xD000000000000020, 0x80000001C4FAAF50, v75);
          swift_unknownObjectRelease();
          v72 = v153;
        }

        else
        {
          sub_1C4CF0884(0xD000000000000010, 0x80000001C4FC6000, 1819047278, 0xE400000000000000);
        }

LABEL_47:
        sub_1C4CF0804();
        v138 = sub_1C43FD7E0();
        sub_1C441DFEC(v138, v139);
        swift_unknownObjectRelease();
        sub_1C441DFEC(v72, v74);
        goto LABEL_53;
      }

      v93 = sub_1C43FD7E0();
      sub_1C44344B8(v93, v94);
      v95 = sub_1C43FD7E0();
      v108 = sub_1C4440600(v95, v96);
      v110 = v109;
      _s13OutputBuilderCMa();
      v75 = swift_initStackObject();
      sub_1C4CF05C4();
      sub_1C4CF0684(0, 0);
      sub_1C4CF7188(0xD000000000000013, 0x80000001C4FAAF30, v75, v110);
      if (!v108)
      {
        sub_1C4CF0884(0x42746E6572727563, 0xEF6B72616D6B6F6FLL, 1819047278, 0xE400000000000000);
        goto LABEL_52;
      }

      objc_opt_self();
      v111 = swift_dynamicCastObjCClass();
      if (!v111)
      {
        swift_unknownObjectRetain();
        sub_1C4CF6C10(0x42746E6572727563, 0xEF6B72616D6B6F6FLL, 0xD000000000000020, 0x80000001C4FAAF50, v75);
        goto LABEL_51;
      }

      v112 = v111;
      swift_unknownObjectRetain();
      sub_1C4CF0684(0x42746E6572727563, 0xEF6B72616D6B6F6FLL);
      if (![v112 value])
      {
        goto LABEL_49;
      }

      objc_opt_self();
      v113 = swift_dynamicCastObjCClass();
      if (v113)
      {
        v114 = v113;
        v115 = [v113 streamId];
        v116 = sub_1C4F01138();
        v118 = v117;

        v119 = sub_1C442558C();
        sub_1C4CF6C10(v119, v120, v116, v118, v75);

        v121 = [v114 segmentName];
        v122 = sub_1C4F01138();
        v124 = v123;

        v125 = sub_1C441BE50();
        sub_1C4CF6C10(v125, v126, v122, v124, v75);

        [v114 iterationStartTime];
        sub_1C4433990(v127);
        sub_1C440A294([v114 offset]);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
LABEL_49:
        v140 = [v112 upstreams];
        v141 = sub_1C456902C(&unk_1EC0C0730, &qword_1C4F67F20);
        v142 = sub_1C4F01678();

        MEMORY[0x1C6940380](v142, v141);
        v144 = v143;

        v145 = sub_1C4426238();
        sub_1C4CF6C10(v145, v146, v147, v144, v75);

        *&v159 = [v112 value];
        sub_1C456902C(&unk_1EC0C5D70, &unk_1C4F3F010);
        v148 = sub_1C4F01198();
        sub_1C43FCB78(v148, v149);
      }

      sub_1C4CF0804();
LABEL_51:
      swift_unknownObjectRelease();
LABEL_52:
      sub_1C4CF0804();
      v150 = sub_1C43FD7E0();
      sub_1C441DFEC(v150, v151);
      swift_unknownObjectRelease();
LABEL_53:
      swift_beginAccess();
      v18 = *(v75 + 16);
      v152 = *(v75 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      return v18;
    case 4u:
      v30 = sub_1C4EF9348();
      v31 = *(v30 + 48);
      v32 = *(v30 + 52);
      swift_allocObject();
      v33 = sub_1C43FD7E0();
      sub_1C44344B8(v33, v34);
      sub_1C4EF9338();
      v35 = *(a2 + 40);
      v36 = *(a2 + 48);
      sub_1C4F01178();
      v37 = sub_1C4F01148();
      v39 = v38;
      (*(v12 + 8))(v17, v9);
      if (v39 >> 60 == 15)
      {
        v40 = 0;
      }

      else
      {
        v40 = v37;
      }

      if (v39 >> 60 == 15)
      {
        v41 = 0xC000000000000000;
      }

      else
      {
        v41 = v39;
      }

      sub_1C4CCB328();
      sub_1C4EF9328();

      sub_1C4434000(v40, v41);
      v155 = v159;
      v156 = v160;
      v157 = v161;
      v158 = v162;
      sub_1C47F5E18(&v155);
      if (BYTE8(v156) == 2 || (BYTE8(v156) & 1) == 0)
      {
        sub_1C4463B90();
      }

      else
      {
        sub_1C44F92C4();
      }

      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v98 = sub_1C43FCDF8(AssociatedTypeWitness);
      v100 = v99;
      v102 = *(v101 + 64);
      MEMORY[0x1EEE9AC00](v98);
      v104 = &v153 - v103;
      sub_1C43FD7E0();
      sub_1C4BA9CC8();
      v105 = *(swift_getAssociatedConformanceWitness() + 16);
      v18 = sub_1C4F00FB8();
      v106 = sub_1C43FD7E0();
      sub_1C441DFEC(v106, v107);
      (*(v100 + 8))(v104, AssociatedTypeWitness);
      return v18;
    case 5u:
      _s14KeyValueSourceCMa();
      v51 = sub_1C43FE99C();
      sub_1C44344B8(v51, v52);
      v53 = sub_1C43FE99C();
      v55 = sub_1C4CDD394(v53, v54);
      goto LABEL_20;
    case 6u:
      _s26GlobalKnowledgeGraphSourceCMa();
      v57 = sub_1C43FE99C();
      sub_1C44344B8(v57, v58);
      v59 = sub_1C43FE99C();
      v55 = sub_1C4CD9044(v59, v60);
LABEL_20:
      v18 = v55;
      if (v56)
      {
        MEMORY[0x1C6940010](v55, v56);
        MEMORY[0x1C6940010](34, 0xE100000000000000);
        v61 = sub_1C43FE99C();
        sub_1C441DFEC(v61, v62);

        return 34;
      }

      else
      {
        v63 = sub_1C43FE99C();
        sub_1C441DFEC(v63, v64);
      }

      return v18;
    case 7u:
      _s18NotificationSourceCMa();
      v44 = sub_1C43FE99C();
      sub_1C44344B8(v44, v45);
      v46 = sub_1C43FE99C();
      sub_1C4CE37C4(v46, v47);
      sub_1C456902C(&qword_1EC0B8850, &unk_1C4F0DC40);
      v48 = swift_initStackObject();
      sub_1C4409364(v48, xmmword_1C4F0D130);
LABEL_17:
      *&v159 = sub_1C4F00F28();
      sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
      sub_1C496D888();
      v18 = sub_1C4F00FB8();
      v49 = sub_1C43FE99C();
      sub_1C441DFEC(v49, v50);

      return v18;
    default:
      return v18;
  }
}

void sub_1C4CF17AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a4 + 48) >> 60) >= 0xB)
  {
    v8 = sub_1C4F01CF8();
  }

  else
  {
    v8 = sub_1C4F01CD8();
  }

  v9 = v8;
  if (sub_1C4F01CC8() == v8)
  {
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4CF6478(a4, v28);
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CC8();
    goto LABEL_25;
  }

  if (sub_1C4F01CB8() == v9)
  {
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4CF6478(a4, v28);
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CB8();
    goto LABEL_25;
  }

  if (sub_1C4F01CF8() == v9)
  {
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4CF6478(a4, v28);
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CF8();
    goto LABEL_25;
  }

  if (sub_1C4F01CD8() == v9)
  {
    v15 = qword_1EDDFECD0;
LABEL_22:
    if (v15 != -1)
    {
      swift_once();
    }

    v18 = sub_1C4F00978();
    sub_1C442B738(v18, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4CF6478(a4, v28);
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CD8();
    goto LABEL_25;
  }

  v16 = sub_1C4F01CE8();
  v15 = qword_1EDDFECD0;
  if (v16 != v9)
  {
    goto LABEL_22;
  }

  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v17 = sub_1C4F00978();
  sub_1C442B738(v17, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4CF6478(a4, v28);
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CE8();
LABEL_25:
  v19 = v12;

  sub_1C4CF64B0(a4);
  if (os_log_type_enabled(v11, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28[0] = v21;
    *v20 = 136315394;
    v22 = sub_1C4D11C18(a1, a2, a3);
    v24 = sub_1C441D828(v22, v23, v28);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    v25 = sub_1C4CF5BF8();
    v27 = sub_1C441D828(v25, v26, v28);

    *(v20 + 14) = v27;
    _os_log_impl(&dword_1C43F8000, v11, v19, "ViewValidate: %s: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v21, -1, -1);
    MEMORY[0x1C6942830](v20, -1, -1);
  }
}

uint64_t *sub_1C4CF1B98()
{
  v2 = v1;
  v3 = v0;
  v21[0] = sub_1C4D11C18(*v0, v0[1], v0[2]);
  v21[1] = v4;
  MEMORY[0x1C6940010](44, 0xE100000000000000);
  v22 = v21[0];
  v23 = v21[1];
  memcpy(__dst, v0 + 21, sizeof(__dst));
  v6 = __dst[3];
  v5 = __dst[4];
  if (__dst[6] >> 62)
  {
    if (__dst[6] >> 62 == 1)
    {
      v7 = 0x2C64656B636F6C62;
      v8 = &v22;
      v9 = 0xE800000000000000;
    }

    else if (__dst[6] != 0x8000000000000000 || __dst[3] | __dst[1] | __dst[0] | __dst[4] | __dst[8] | __dst[7] | __dst[5] | __dst[2])
    {
      v7 = 0x6C62616C69617661;
      v8 = &v22;
      v9 = 0xEA00000000002C65;
    }

    else
    {
      v7 = 0x616C696176616E75;
      v9 = 0xEC0000002C656C62;
      v8 = &v22;
    }

    MEMORY[0x1C6940010](v7, v9);
  }

  else
  {
    v19 = sub_1C4CC2358(__dst[1]);
    v20 = v10;
    memcpy(v21, v0 + 21, sizeof(v21));
    v21[6] &= 0x3FFFFFFFFFFFFFFFuLL;
    sub_1C44600A0(v21, v18, &unk_1EC0C6360, &qword_1C4F6BAC8);
    MEMORY[0x1C6940010](32, 0xE100000000000000);
    if (v5)
    {
      v11 = v6;
    }

    else
    {
      v11 = 0;
    }

    if (v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v11, v12);

    MEMORY[0x1C6940010](44, 0xE100000000000000);
    v8 = &v22;
    MEMORY[0x1C6940010](v19, v20);

    sub_1C4CF6BE0(__dst);
  }

  v13 = v3[11];
  if (v13 >> 60 == 15)
  {
    MEMORY[0x1C6940010](741355056, 0xE400000000000000);
LABEL_23:
    MEMORY[0x1C6940010](12589, 0xE200000000000000);
    _s13OutputBuilderCMa();
    inited = swift_initStackObject();
    sub_1C4CF05C4();
    sub_1C4CF6998(v22, v23, inited);

    swift_beginAccess();
    v8 = *(inited + 16);
    v16 = *(inited + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return v8;
  }

  v14 = v3[10];
  if ((*(v3 + 73) & 1) == 0)
  {
    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    sub_1C4431E64(v14, v13);
    sub_1C44344B8(v14, v13);
    sub_1C4463E90(v14, v13);
    goto LABEL_22;
  }

  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_1C4431E64(v14, v13);
  sub_1C44344B8(v14, v13);
  sub_1C44F9344(v14, v13);
  if (!v2)
  {
LABEL_22:
    sub_1C4F01A28();
    MEMORY[0x1C6940010](44, 0xE100000000000000);
    MEMORY[0x1C6940010](v21[0], v21[1]);
    sub_1C441DFEC(v14, v13);

    goto LABEL_23;
  }

  sub_1C441DFEC(v14, v13);

  return v8;
}
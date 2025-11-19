uint64_t sub_1D5EAADC4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v2[4] = *(*v1 + 88);
  v2[5] = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2[6] = swift_getAssociatedTypeWitness();
  v2[7] = swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for FeedGroupEmitterCachedOutput();
  v2[8] = v4;
  v5 = sub_1D726393C();
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = *(v4 - 8);
  v2[14] = v6;
  v2[15] = *(v6 + 64);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5BD7364, 0, 0);
}

uint64_t sub_1D5EAAFF8()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1D5EAB610;
  }

  else
  {
    v2 = sub_1D5EAB128;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5EAB128()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  (*(v0 + 152))(v2, *(v0 + 96), *(v0 + 72));
  if (v1(v2, 1, v3) == 1)
  {
    v4 = *(v0 + 144);
    v5 = *(v0 + 112);
    v6 = *(v0 + 88);
    v7 = *(v0 + 72);
    v8 = *(v0 + 64);
    v9 = *(*(v0 + 80) + 8);
    v9(*(v0 + 96), v7);
    (*(v5 + 8))(v4, v8);
    v9(v6, v7);

    v10 = swift_task_alloc();
    *(v0 + 224) = v10;
    v11 = type metadata accessor for FeedGroupEmitterOutput();
    *v10 = v0;
    v10[1] = sub_1D5EAB47C;
    v12 = *(v0 + 16);
    v13 = *(v0 + 24);

    return MEMORY[0x1EEE44AD8](v12, &unk_1D727ACB0, v13, v11);
  }

  else
  {
    v32 = *(v0 + 184);
    v37 = *(v0 + 136);
    v14 = *(v0 + 112);
    v31 = *(v0 + 96);
    v15 = *(v0 + 80);
    v30 = *(v0 + 72);
    v16 = *(v0 + 64);
    v35 = *(v0 + 144);
    v36 = *(v0 + 48);
    v17 = *(v0 + 24);
    v33 = *(v0 + 128);
    v34 = *(v0 + 16);
    v32();
    sub_1D5C384A0();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D7279970;
    v19 = (v17 + *(*v17 + 144));
    v21 = *v19;
    v20 = v19[1];
    v22 = MEMORY[0x1E69E6158];
    *(v18 + 56) = MEMORY[0x1E69E6158];
    v23 = sub_1D5B7E2C0();
    *(v18 + 64) = v23;
    *(v18 + 32) = v21;
    *(v18 + 40) = v20;

    v24 = sub_1D6B6AE5C();
    *(v18 + 96) = v22;
    *(v18 + 104) = v23;
    *(v18 + 72) = v24;
    *(v18 + 80) = v25;
    v26 = sub_1D5C0BA9C();
    *(v18 + 136) = v22;
    *(v18 + 144) = v23;
    *(v18 + 112) = v26;
    *(v18 + 120) = v27;
    sub_1D7262EDC();
    sub_1D725C30C();

    (*(v15 + 8))(v31, v30);
    (*(v14 + 8))(v35, v16);
    (v32)(v37, v33, v16);
    sub_1D6EB5BC0(v37, v36, v34);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_1D5EAB47C()
{
  v2 = *v1;
  *(v2 + 232) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5EAB6D4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D5EAB610()
{
  (*(v0[14] + 8))(v0[18], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D5EAB6D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5EAB784(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(v5 + 32) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a5;
  *(v5 + 40) = *a5;
  v6 = sub_1D7263F5C();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5EAB870, 0, 0);
}

uint64_t sub_1D5EAB870()
{
  v1 = v0[4];
  v2 = v0[3];
  v0[9] = v2[11];
  sub_1D5C384A0();
  v0[10] = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7274590;
  v5 = (v2 + *(*v2 + 144));
  v6 = *v5;
  v0[11] = *v5;
  v7 = v5[1];
  v0[12] = v7;
  v8 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D5B7E2C0();
  v0[13] = v9;
  *(v4 + 64) = v9;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  v0[14] = v2[2];

  v10 = sub_1D6B6AE5C();
  *(v4 + 96) = v8;
  *(v4 + 104) = v9;
  v11 = MEMORY[0x1E69E63B0];
  *(v4 + 72) = v10;
  *(v4 + 80) = v12;
  v13 = MEMORY[0x1E69E6438];
  *(v4 + 136) = v11;
  *(v4 + 144) = v13;
  *(v4 + 112) = v1;
  v14 = sub_1D5C0BA9C();
  *(v4 + 176) = v8;
  *(v4 + 184) = v9;
  *(v4 + 152) = v14;
  *(v4 + 160) = v15;
  sub_1D7262EDC();
  sub_1D725C30C();

  v16 = sub_1D7264BBC();
  v18 = v17;
  sub_1D726496C();
  v19 = swift_task_alloc();
  v0[15] = v19;
  *v19 = v0;
  v19[1] = sub_1D5EABA54;

  return (sub_1D6CDBFF8)(v16, v18, 0, 0, 1);
}

uint64_t sub_1D5EABA54()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  if (v0)
  {
    v3 = sub_1D5EABBBC;
  }

  else
  {
    v3 = sub_1D5EABC20;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D5EABBBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5EABC20()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v13 = v0[2];
  sub_1D7262EBC();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7279970;
  v5 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = v1;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;

  v6 = sub_1D6B6AE5C();
  *(v4 + 96) = v5;
  *(v4 + 104) = v1;
  *(v4 + 72) = v6;
  *(v4 + 80) = v7;
  v8 = sub_1D5C0BA9C();
  *(v4 + 136) = v5;
  *(v4 + 144) = v1;
  *(v4 + 112) = v8;
  *(v4 + 120) = v9;
  sub_1D725C30C();

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for FeedGroupEmitterOutput();
  (*(*(v10 - 8) + 56))(v13, 1, 1, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D5EABE20(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(v5 + 32) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a5;
  *(v5 + 40) = *a5;
  v6 = sub_1D7263F5C();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5EABF0C, 0, 0);
}

uint64_t sub_1D5EABF0C()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1D5EABFB4;

  return sub_1D5FE5B68();
}

uint64_t sub_1D5EABFB4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5EAC100, 0, 0);
  }
}

uint64_t sub_1D5EAC100()
{
  v1 = v0[4];
  v2 = v0[3];
  v0[10] = v2[11];
  sub_1D5C384A0();
  v0[11] = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7274590;
  v5 = (v2 + *(*v2 + 144));
  v6 = *v5;
  v0[12] = *v5;
  v7 = v5[1];
  v0[13] = v7;
  v8 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D5B7E2C0();
  v0[14] = v9;
  *(v4 + 64) = v9;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  v0[15] = v2[2];

  v10 = sub_1D6B6AE5C();
  *(v4 + 96) = v8;
  *(v4 + 104) = v9;
  v11 = MEMORY[0x1E69E63B0];
  *(v4 + 72) = v10;
  *(v4 + 80) = v12;
  v13 = MEMORY[0x1E69E6438];
  *(v4 + 136) = v11;
  *(v4 + 144) = v13;
  *(v4 + 112) = v1;
  v14 = sub_1D5C0BA9C();
  *(v4 + 176) = v8;
  *(v4 + 184) = v9;
  *(v4 + 152) = v14;
  *(v4 + 160) = v15;
  sub_1D7262EDC();
  sub_1D725C30C();

  v16 = sub_1D7264BBC();
  v18 = v17;
  sub_1D726496C();
  v19 = swift_task_alloc();
  v0[16] = v19;
  *v19 = v0;
  v19[1] = sub_1D5EAC2E4;

  return (sub_1D6CDBFF8)(v16, v18, 0, 0, 1);
}

uint64_t sub_1D5EAC2E4()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  if (v0)
  {
    v3 = sub_1D5EAC44C;
  }

  else
  {
    v3 = sub_1D5EAC4B0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D5EAC44C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5EAC4B0()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  v13 = v0[2];
  sub_1D7262EBC();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7279970;
  v5 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = v1;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;

  v6 = sub_1D6B6AE5C();
  *(v4 + 96) = v5;
  *(v4 + 104) = v1;
  *(v4 + 72) = v6;
  *(v4 + 80) = v7;
  v8 = sub_1D5C0BA9C();
  *(v4 + 136) = v5;
  *(v4 + 144) = v1;
  *(v4 + 112) = v8;
  *(v4 + 120) = v9;
  sub_1D725C30C();

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for FeedGroupEmitterOutput();
  (*(*(v10 - 8) + 56))(v13, 1, 1, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D5EAC6B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for FeedGroupEmitTask.InternalResult();
  v3 = sub_1D5B49474(0, &qword_1EDF3C5D0);
  v4 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6D8B8](v1, v2, v3, v4);
}

uint64_t sub_1D5EAC718(uint64_t a1, void *a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v3[8] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5EAC764, 0, 0);
}

uint64_t sub_1D5EAC764()
{
  v1 = v0[6];
  v0[9] = *(v1 + 16);
  v2 = *(v1 + 112);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1D5EAC810;
  v4 = v0[7];
  v5 = v0[5];

  return sub_1D6B6AFA0(v5, v2, v4);
}

uint64_t sub_1D5EAC810()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5EAC944, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D5EAC944()
{
  v1 = v0[11];
  v2 = v0[6];
  v18 = v0[5];
  sub_1D7262EBC();
  sub_1D5C384A0();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7274590;
  v4 = (v2 + *(*v2 + 144));
  v5 = *v4;
  v6 = v4[1];
  v7 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1D5B7E2C0();
  *(v3 + 64) = v8;
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;

  v9 = sub_1D6B6AE5C();
  *(v3 + 96) = v7;
  *(v3 + 104) = v8;
  *(v3 + 72) = v9;
  *(v3 + 80) = v10;
  v11 = sub_1D5C0BA9C();
  *(v3 + 136) = v7;
  *(v3 + 144) = v8;
  v0[2] = 0;
  *(v3 + 112) = v11;
  *(v3 + 120) = v12;
  v0[3] = 0xE000000000000000;
  v0[4] = v1;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  v13 = v0[2];
  v14 = v0[3];
  *(v3 + 176) = v7;
  *(v3 + 184) = v8;
  *(v3 + 152) = v13;
  *(v3 + 160) = v14;
  sub_1D725C30C();

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for FeedGroupEmitterCachedOutput();
  (*(*(v15 - 8) + 56))(v18, 1, 1, v15);
  v16 = v0[1];

  return v16();
}

uint64_t sub_1D5EACBC8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D5EACCBC()
{

  v1 = *(v0 + 88);

  v2 = *(*v0 + 128);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedGroupEmitterCachedOutput();
  v3 = sub_1D726393C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(*v0 + 152);
  v5 = sub_1D725C37C();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 160);
  v7 = sub_1D725C34C();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t sub_1D5EACF00()
{
  sub_1D5EACCBC();

  return swift_deallocClassInstance();
}

uint64_t sub_1D5EACF70(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D62FFB44(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_1D5EAD548(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D5EAD014(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v8 = *(v2 + 4);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D5B64680;

  return sub_1D5EA9524(a1, a2, v6, v8, v7);
}

uint64_t sub_1D5EAD0DC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D5EAD0F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D5EAA6E8(a1, v4, v5, v6);
}

uint64_t sub_1D5EAD1A8(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5B64680;

  return sub_1D5EABE20(a1, v7, v4, v5, v6);
}

uint64_t sub_1D5EAD26C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5B64684;

  return sub_1D5EAB784(a1, v7, v4, v5, v6);
}

uint64_t sub_1D5EAD330(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
    if (a5)
    {
      if (a5 != 1)
      {
        return result;
      }

      sub_1D5C08648(a2);
    }

    goto LABEL_11;
  }

  v6 = a5 == 2 || a5 == 4;
  if (v6 || a5 == 5)
  {
LABEL_11:
  }

  return result;
}

uint64_t sub_1D5EAD3C0(uint64_t a1)
{
  v3 = v2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = *(type metadata accessor for FeedGroupEmitterCachedOutput() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D5B64680;

  return sub_1D5EAC718(a1, v7, v1 + v6);
}

uint64_t sub_1D5EAD548(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_1D726449C();
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
        v5 = sub_1D726276C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D5EAD7BC(v7, v8, a1, v4);
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
    return sub_1D5EAD640(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D5EAD640(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v25 = a2;
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = result - a3;
    v7 = (*a4 + (a3 << 6));
LABEL_5:
    v8 = v7;
    v9 = v6;
    while (1)
    {
      sub_1D5EAE324(v8, &v22);
      v10 = v8 - 4;
      sub_1D5EAE324((v8 - 4), v19);
      v11 = v24[24];
      if (!v24[24])
      {
        goto LABEL_9;
      }

      if (v24[24] == 1)
      {
        break;
      }

      if (*&v24[8] == 0)
      {
        v11 = 3;
      }

      else
      {
        v11 = 1;
      }

      v12 = v21;
      if (v21)
      {
        goto LABEL_15;
      }

LABEL_20:
      sub_1D5EAE380(v19);
      result = sub_1D5EAE380(&v22);
      if (v11 >= v12)
      {
        goto LABEL_4;
      }

      if (!v5)
      {
        __break(1u);
        return result;
      }

      *v24 = v8[2];
      *&v24[9] = *(v8 + 41);
      v22 = *v8;
      v13 = v22;
      v23 = v8[1];
      v14 = v23;
      v15 = *(v8 - 3);
      *v8 = *v10;
      v8[1] = v15;
      v16 = *(v8 - 1);
      v8[2] = *(v8 - 2);
      v8[3] = v16;
      *v10 = v13;
      *(v8 - 23) = *&v24[9];
      v17 = *v24;
      *(v8 - 3) = v14;
      *(v8 - 2) = v17;
      v8 -= 4;
      if (__CFADD__(v9++, 1))
      {
LABEL_4:
        ++v4;
        --v6;
        v7 += 4;
        if (v4 == v25)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    v11 = 2;
LABEL_9:
    v12 = v21;
    if (!v21)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (v12 == 1)
    {
      v12 = 2;
    }

    else if (v20 == 0)
    {
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }

    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D5EAD7BC(uint64_t result, uint64_t a2, char **a3, uint64_t a4)
{
  v6 = v4;
  v105 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_131:
    v5 = *v105;
    if (!*v105)
    {
      goto LABEL_170;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_133:
      v94 = v6;
      v117 = v9;
      v95 = *(v9 + 2);
      if (v95 >= 2)
      {
        while (*a3)
        {
          v6 = v95 - 1;
          v96 = *&v9[16 * v95];
          v97 = *&v9[16 * v95 + 24];
          sub_1D5EADFEC(&(*a3)[64 * v96], &(*a3)[64 * *&v9[16 * v95 + 16]], &(*a3)[64 * v97], v5);
          if (v94)
          {
          }

          if (v97 < v96)
          {
            goto LABEL_157;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1D62FF50C(v9);
          }

          if (v95 - 2 >= *(v9 + 2))
          {
            goto LABEL_158;
          }

          v98 = &v9[16 * v95];
          *v98 = v96;
          *(v98 + 1) = v97;
          v117 = v9;
          result = sub_1D62FF480(v95 - 1);
          v9 = v117;
          v95 = *(v117 + 2);
          if (v95 <= 1)
          {
          }
        }

        goto LABEL_168;
      }
    }

LABEL_164:
    result = sub_1D62FF50C(v9);
    v9 = result;
    goto LABEL_133;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v10 = v8++;
  if (v8 >= v7)
  {
    goto LABEL_49;
  }

  v11 = *a3;
  sub_1D5EAE324(&(*a3)[64 * v8], &v114);
  sub_1D5EAE324(&v11[64 * v10], v111);
  v12 = v116[24];
  if (v116[24])
  {
    if (v116[24] == 1)
    {
      v12 = 2;
    }

    else if (*&v116[8] == 0)
    {
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }
  }

  v13 = v113;
  v101 = v6;
  if (v113)
  {
    if (v113 == 1)
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
      if (v112 != 0)
      {
        v13 = 1;
      }
    }
  }

  v108 = v13;
  sub_1D5EAE380(v111);
  result = sub_1D5EAE380(&v114);
  v14 = 0;
  v99 = v10 << 6;
  v15 = v10;
  v16 = &v11[64 * v10 + 64];
  v103 = v15;
  v17 = (v15 + 2);
  v106 = v7;
  do
  {
    v6 = v17;
    v21 = v14;
    v5 = v8;
    if (v17 >= v7)
    {
      break;
    }

    sub_1D5EAE324(v16 + 64, &v114);
    sub_1D5EAE324(v16, v111);
    v22 = v116[24];
    if (v116[24])
    {
      v23 = v12;
      if (v116[24] != 1)
      {
        if (*&v116[8] == 0)
        {
          v22 = 3;
        }

        else
        {
          v22 = 1;
        }

        v18 = v113;
        if (!v113)
        {
          goto LABEL_20;
        }

LABEL_32:
        if (v18 == 1)
        {
          v18 = 2;
        }

        else if (v112 == 0)
        {
          v18 = 3;
        }

        else
        {
          v18 = 1;
        }

        goto LABEL_20;
      }

      v22 = 2;
      v18 = v113;
      if (v113)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v23 = v12;
      v18 = v113;
      if (v113)
      {
        goto LABEL_32;
      }
    }

LABEL_20:
    v12 = v23;
    v19 = v23 < v108;
    sub_1D5EAE380(v111);
    result = sub_1D5EAE380(&v114);
    v20 = v19 ^ (v22 >= v18);
    v16 += 64;
    v17 = v6 + 1;
    v14 = v21 + 64;
    v8 = v5 + 1;
    v7 = v106;
  }

  while ((v20 & 1) != 0);
  if (v12 >= v108)
  {
    v8 = v6;
    v6 = v101;
    v10 = v103;
  }

  else
  {
    v10 = v103;
    if (v6 < v103)
    {
      goto LABEL_161;
    }

    if (v103 < v6)
    {
      v24 = 0;
      v25 = v103;
      do
      {
        if (v25 != v5)
        {
          if (!*a3)
          {
            goto LABEL_167;
          }

          v30 = &(*a3)[v99];
          v31 = &v30[v24];
          v32 = &v30[v21];
          v114 = *v31;
          v115 = v31[1];
          *v116 = v31[2];
          *&v116[9] = *(v31 + 41);
          if (v99 + v24 != v99 + v21 + 64 || v31 >= v32 + 8)
          {
            v26 = *(v32 + 4);
            v27 = *(v32 + 5);
            v28 = *(v32 + 7);
            v31[2] = *(v32 + 6);
            v31[3] = v28;
            *v31 = v26;
            v31[1] = v27;
          }

          *(v32 + 4) = v114;
          *(v32 + 5) = v115;
          *(v32 + 6) = *v116;
          *(v32 + 105) = *&v116[9];
        }

        ++v25;
        v21 -= 64;
        v24 += 64;
      }

      while (v25 < v5--);
    }

    v8 = v6;
    v6 = v101;
  }

LABEL_49:
  v33 = a3[1];
  if (v8 >= v33)
  {
    goto LABEL_80;
  }

  if (__OFSUB__(v8, v10))
  {
    goto LABEL_160;
  }

  if (v8 - v10 >= a4)
  {
    goto LABEL_80;
  }

  v34 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_162;
  }

  if (v34 >= v33)
  {
    v34 = a3[1];
  }

  if (v34 < v10)
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  if (v8 == v34)
  {
    goto LABEL_80;
  }

  v102 = v6;
  v104 = v10;
  v5 = *a3;
  v35 = v10 - v8;
  v36 = &(*a3)[64 * v8];
  v107 = v34;
LABEL_59:
  v109 = v8;
  v37 = v36;
  v38 = v35;
  while (1)
  {
    sub_1D5EAE324(v37, &v114);
    v39 = v37 - 4;
    sub_1D5EAE324((v37 - 4), v111);
    v40 = v116[24];
    if (!v116[24])
    {
      goto LABEL_63;
    }

    if (v116[24] == 1)
    {
      v40 = 2;
LABEL_63:
      v41 = v113;
      if (!v113)
      {
        goto LABEL_74;
      }

LABEL_69:
      if (v41 == 1)
      {
        v41 = 2;
      }

      else if (v112 == 0)
      {
        v41 = 3;
      }

      else
      {
        v41 = 1;
      }

      goto LABEL_74;
    }

    if (*&v116[8] == 0)
    {
      v40 = 3;
    }

    else
    {
      v40 = 1;
    }

    v41 = v113;
    if (v113)
    {
      goto LABEL_69;
    }

LABEL_74:
    sub_1D5EAE380(v111);
    result = sub_1D5EAE380(&v114);
    if (v40 >= v41)
    {
      goto LABEL_58;
    }

    if (!v5)
    {
      break;
    }

    *v116 = v37[2];
    *&v116[9] = *(v37 + 41);
    v114 = *v37;
    v42 = v114;
    v115 = v37[1];
    v43 = v115;
    v44 = *(v37 - 3);
    *v37 = *v39;
    v37[1] = v44;
    v45 = *(v37 - 1);
    v37[2] = *(v37 - 2);
    v37[3] = v45;
    *v39 = v42;
    *(v37 - 23) = *&v116[9];
    v46 = *v116;
    *(v37 - 3) = v43;
    *(v37 - 2) = v46;
    v37 -= 4;
    if (__CFADD__(v38++, 1))
    {
LABEL_58:
      v8 = v109 + 1;
      --v35;
      v36 += 64;
      if ((v109 + 1) == v107)
      {
        v8 = v107;
        v6 = v102;
        v10 = v104;
LABEL_80:
        if (v8 < v10)
        {
          goto LABEL_159;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D698BA94(0, *(v9 + 2) + 1, 1, v9);
          v9 = result;
        }

        v49 = *(v9 + 2);
        v48 = *(v9 + 3);
        v50 = v49 + 1;
        if (v49 >= v48 >> 1)
        {
          result = sub_1D698BA94((v48 > 1), v49 + 1, 1, v9);
          v9 = result;
        }

        *(v9 + 2) = v50;
        v51 = &v9[16 * v49];
        *(v51 + 4) = v10;
        *(v51 + 5) = v8;
        v52 = *v105;
        if (!*v105)
        {
          goto LABEL_169;
        }

        if (!v49)
        {
LABEL_3:
          v7 = a3[1];
          if (v8 >= v7)
          {
            goto LABEL_131;
          }

          goto LABEL_4;
        }

        while (1)
        {
          v53 = v50 - 1;
          if (v50 >= 4)
          {
            break;
          }

          if (v50 == 3)
          {
            v54 = *(v9 + 4);
            v55 = *(v9 + 5);
            v64 = __OFSUB__(v55, v54);
            v56 = v55 - v54;
            v57 = v64;
LABEL_100:
            if (v57)
            {
              goto LABEL_148;
            }

            v70 = &v9[16 * v50];
            v72 = *v70;
            v71 = *(v70 + 1);
            v73 = __OFSUB__(v71, v72);
            v74 = v71 - v72;
            v75 = v73;
            if (v73)
            {
              goto LABEL_151;
            }

            v76 = &v9[16 * v53 + 32];
            v78 = *v76;
            v77 = *(v76 + 1);
            v64 = __OFSUB__(v77, v78);
            v79 = v77 - v78;
            if (v64)
            {
              goto LABEL_154;
            }

            if (__OFADD__(v74, v79))
            {
              goto LABEL_155;
            }

            if (v74 + v79 >= v56)
            {
              if (v56 < v79)
              {
                v53 = v50 - 2;
              }

              goto LABEL_121;
            }

            goto LABEL_114;
          }

          v80 = &v9[16 * v50];
          v82 = *v80;
          v81 = *(v80 + 1);
          v64 = __OFSUB__(v81, v82);
          v74 = v81 - v82;
          v75 = v64;
LABEL_114:
          if (v75)
          {
            goto LABEL_150;
          }

          v83 = &v9[16 * v53];
          v85 = *(v83 + 4);
          v84 = *(v83 + 5);
          v64 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v64)
          {
            goto LABEL_153;
          }

          if (v86 < v74)
          {
            goto LABEL_3;
          }

LABEL_121:
          v91 = v53 - 1;
          if (v53 - 1 >= v50)
          {
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
            goto LABEL_163;
          }

          if (!*a3)
          {
            goto LABEL_166;
          }

          v92 = *&v9[16 * v91 + 32];
          v5 = *&v9[16 * v53 + 40];
          sub_1D5EADFEC(&(*a3)[64 * v92], &(*a3)[64 * *&v9[16 * v53 + 32]], &(*a3)[64 * v5], v52);
          if (v6)
          {
          }

          if (v5 < v92)
          {
            goto LABEL_144;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1D62FF50C(v9);
          }

          if (v91 >= *(v9 + 2))
          {
            goto LABEL_145;
          }

          v93 = &v9[16 * v91];
          *(v93 + 4) = v92;
          *(v93 + 5) = v5;
          v117 = v9;
          result = sub_1D62FF480(v53);
          v9 = v117;
          v50 = *(v117 + 2);
          if (v50 <= 1)
          {
            goto LABEL_3;
          }
        }

        v58 = &v9[16 * v50 + 32];
        v59 = *(v58 - 64);
        v60 = *(v58 - 56);
        v64 = __OFSUB__(v60, v59);
        v61 = v60 - v59;
        if (v64)
        {
          goto LABEL_146;
        }

        v63 = *(v58 - 48);
        v62 = *(v58 - 40);
        v64 = __OFSUB__(v62, v63);
        v56 = v62 - v63;
        v57 = v64;
        if (v64)
        {
          goto LABEL_147;
        }

        v65 = &v9[16 * v50];
        v67 = *v65;
        v66 = *(v65 + 1);
        v64 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v64)
        {
          goto LABEL_149;
        }

        v64 = __OFADD__(v56, v68);
        v69 = v56 + v68;
        if (v64)
        {
          goto LABEL_152;
        }

        if (v69 >= v61)
        {
          v87 = &v9[16 * v53 + 32];
          v89 = *v87;
          v88 = *(v87 + 1);
          v64 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v64)
          {
            goto LABEL_156;
          }

          if (v56 < v90)
          {
            v53 = v50 - 2;
          }

          goto LABEL_121;
        }

        goto LABEL_100;
      }

      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
  return result;
}

uint64_t sub_1D5EADFEC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 63;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 6;
  v11 = a3 - __src;
  v12 = a3 - __src + 63;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 6;
  if (v10 >= v13)
  {
    v24 = v13 << 6;
    if (a4 != __src || &__src[v24] <= a4)
    {
      memmove(a4, __src, v13 << 6);
    }

    v15 = &v4[v24];
    if (v11 < 64 || v6 <= v7)
    {
LABEL_64:
      v23 = v6;
      goto LABEL_65;
    }

    while (1)
    {
      v23 = v6 - 64;
      v25 = v15 - 64;
      v5 -= 64;
      while (1)
      {
        sub_1D5EAE324(v25, v41);
        sub_1D5EAE324((v6 - 64), v38);
        v28 = v43;
        if (!v43)
        {
          goto LABEL_45;
        }

        if (v43 == 1)
        {
          v28 = 2;
LABEL_45:
          v29 = v40;
          if (!v40)
          {
            goto LABEL_56;
          }

LABEL_51:
          if (v29 == 1)
          {
            v29 = 2;
          }

          else if (v39 == 0)
          {
            v29 = 3;
          }

          else
          {
            v29 = 1;
          }

          goto LABEL_56;
        }

        if (v42 == 0)
        {
          v28 = 3;
        }

        else
        {
          v28 = 1;
        }

        v29 = v40;
        if (v40)
        {
          goto LABEL_51;
        }

LABEL_56:
        sub_1D5EAE380(v38);
        sub_1D5EAE380(v41);
        if (v28 < v29)
        {
          break;
        }

        if (v5 + 64 != v25 + 64)
        {
          v30 = *v25;
          v31 = *(v25 + 1);
          v32 = *(v25 + 3);
          *(v5 + 2) = *(v25 + 2);
          *(v5 + 3) = v32;
          *v5 = v30;
          *(v5 + 1) = v31;
        }

        v26 = v25 - 64;
        v5 -= 64;
        v27 = v25 > v4;
        v25 -= 64;
        if (!v27)
        {
          v15 = v26 + 64;
          goto LABEL_64;
        }
      }

      if (v5 + 64 != v6)
      {
        v33 = *v23;
        v34 = *(v6 - 3);
        v35 = *(v6 - 1);
        *(v5 + 2) = *(v6 - 2);
        *(v5 + 3) = v35;
        *v5 = v33;
        *(v5 + 1) = v34;
      }

      v15 = v25 + 64;
      if (v25 + 64 > v4)
      {
        v6 -= 64;
        if (v23 > v7)
        {
          continue;
        }
      }

      v15 = v25 + 64;
      goto LABEL_65;
    }
  }

  v14 = v10 << 6;
  if (a4 != __dst || &__dst[v14] <= a4)
  {
    memmove(a4, __dst, v14);
  }

  v15 = &v4[v14];
  if (v8 >= 64 && v6 < v5)
  {
    while (1)
    {
      sub_1D5EAE324(v6, v41);
      sub_1D5EAE324(v4, v38);
      v16 = v43;
      if (!v43)
      {
        goto LABEL_14;
      }

      if (v43 == 1)
      {
        break;
      }

      if (v42 == 0)
      {
        v16 = 3;
      }

      else
      {
        v16 = 1;
      }

      v17 = v40;
      if (v40)
      {
        goto LABEL_20;
      }

LABEL_25:
      sub_1D5EAE380(v38);
      sub_1D5EAE380(v41);
      if (v16 >= v17)
      {
        v18 = v4;
        v19 = v7 == v4;
        v4 += 64;
        if (v19)
        {
          goto LABEL_31;
        }

LABEL_30:
        v20 = *v18;
        v21 = *(v18 + 1);
        v22 = *(v18 + 3);
        *(v7 + 2) = *(v18 + 2);
        *(v7 + 3) = v22;
        *v7 = v20;
        *(v7 + 1) = v21;
        goto LABEL_31;
      }

      v18 = v6;
      v19 = v7 == v6;
      v6 += 64;
      if (!v19)
      {
        goto LABEL_30;
      }

LABEL_31:
      v7 += 64;
      if (v4 >= v15 || v6 >= v5)
      {
        goto LABEL_33;
      }
    }

    v16 = 2;
LABEL_14:
    v17 = v40;
    if (!v40)
    {
      goto LABEL_25;
    }

LABEL_20:
    if (v17 == 1)
    {
      v17 = 2;
    }

    else if (v39 == 0)
    {
      v17 = 3;
    }

    else
    {
      v17 = 1;
    }

    goto LABEL_25;
  }

LABEL_33:
  v23 = v7;
LABEL_65:
  v36 = (v15 - v4 + (v15 - v4 < 0 ? 0x3FuLL : 0)) & 0xFFFFFFFFFFFFFFC0;
  if (v23 != v4 || v23 >= &v4[v36])
  {
    memmove(v23, v4, v36);
  }

  return 1;
}

void *sub_1D5EAE3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v46 = a6;
  v47 = a7;
  v44 = a4;
  v45 = a5;
  v42 = a2;
  v43 = a3;
  v12 = *v7;
  v13 = sub_1D725C34C();
  v50 = *(v13 - 8);
  v51 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v49 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1D725C37C();
  v16 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 8);
  v22 = *(a1 + 16);
  v21 = *(a1 + 24);
  v23 = *(a1 + 32);
  v8[9] = *a1;
  v8[10] = v20;
  v8[11] = v22;
  v8[12] = v21;
  *(v8 + 104) = v23;
  v8[2] = a2;
  v8[14] = a3;
  v41 = *(v12 + 128);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedGroupEmitterCachedOutput();
  v24 = sub_1D726393C();
  (*(*(v24 - 8) + 16))(v8 + v41, v44, v24);
  v25 = v46;
  *(v8 + *(*v8 + 136)) = v45;
  v26 = (v8 + *(*v8 + 144));
  v27 = v47;
  *v26 = v25;
  v26[1] = v27;

  v28 = v22;
  v29 = v21;

  sub_1D6B6AF50();
  v30 = v53;
  v31 = v54;
  v32 = v55;
  v33 = v56;
  v34 = v57;
  v35 = v58;
  v8[3] = v52;
  *(v8 + 32) = v30;
  v8[5] = v31;
  *(v8 + 48) = v32;
  v8[7] = v33;
  *(v8 + 64) = v34;
  *(v8 + 65) = v35;
  v36 = v28;
  sub_1D725C35C();

  v37 = v48;
  (*(v16 + 16))(v8 + *(*v8 + 152), v19, v48);
  sub_1D725C36C();
  v38 = v49;
  sub_1D725C32C();
  (*(v16 + 8))(v19, v37);
  (*(v50 + 32))(v8 + *(*v8 + 160), v38, v51);
  return v8;
}

uint64_t sub_1D5EAE85C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v0 = type metadata accessor for FeedGroupEmitterOutput();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1D5EAE95C(unsigned __int16 *a1, unsigned int a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v4 <= ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 32)
  {
    v4 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  v5 = (v4 & 0xFFFFFFFFFFFFFFF8) + 48;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_29;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) > 3)
  {
    goto LABEL_10;
  }

  v10 = ((a2 + ~(-1 << v7) - 248) >> v7) + 1;
  if (HIWORD(v10))
  {
    v8 = *(a1 + v6);
    if (v8)
    {
      goto LABEL_18;
    }

LABEL_29:
    v12 = *(a1 + v5);
    if (v12 >= 7)
    {
      v13 = (v12 ^ 0xFF) + 1;
    }

    else
    {
      v13 = 0;
    }

    if (v13 >= 2)
    {
      return v13 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v10 > 0xFF)
  {
    v8 = *(a1 + v6);
    if (*(a1 + v6))
    {
      goto LABEL_18;
    }

    goto LABEL_29;
  }

  if (v10 < 2)
  {
    goto LABEL_29;
  }

LABEL_10:
  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_29;
  }

LABEL_18:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 249;
}

void sub_1D5EAEB38(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 <= ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 32)
  {
    v6 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (v6 <= 0x10)
  {
    v6 = 16;
  }

  if ((v6 & 0xFFFFFFFFFFFFFFF8) + 48 > v6)
  {
    v6 = (v6 & 0xFFFFFFFFFFFFFFF8) + 48;
  }

  v7 = v6 + 1;
  if (a3 < 0xF9)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 248) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xF8)
  {
    v9 = a2 - 249;
    if (v7 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v6 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_43:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_43;
          }
        }

LABEL_40:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_29:
      a1[v6] = ~a2;
      return;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_28;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_29;
  }
}

uint64_t sub_1D5EAEF20(uint64_t result, unint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6, unint64_t *a7)
{
  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    sub_1D5EB060C(0, a4, a5, a6, MEMORY[0x1E69E6F58]);
    sub_1D5EB05A8(a7, a4, a5, a6);
    return sub_1D72647EC();
  }

  return result;
}

uint64_t FormatBoxScoreDataVisualization.eventIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatBoxScoreDataVisualization.tagIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1D5EAF088(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;
}

uint64_t FormatBoxScoreDataVisualization.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t sub_1D5EAF1B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 56) = v2;
}

uint64_t FormatBoxScoreDataVisualization.properties.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t FormatBoxScoreDataVisualization.query.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1D5EAF2FC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 64) = v3;
  *(v4 + 72) = v2;
}

uint64_t FormatBoxScoreDataVisualization.query.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

void *FormatBoxScoreDataVisualization.__allocating_init(eventIdentifier:tagIdentifier:selectors:properties:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  swift_beginAccess();
  v16[6] = a5;
  swift_beginAccess();
  v16[7] = a6;
  swift_beginAccess();
  v16[8] = a7;
  v16[9] = a8;
  return v16;
}

void *FormatBoxScoreDataVisualization.init(eventIdentifier:tagIdentifier:selectors:properties:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  swift_beginAccess();
  v8[6] = a5;
  swift_beginAccess();
  v8[7] = a6;
  swift_beginAccess();
  v8[8] = a7;
  v8[9] = a8;
  return v8;
}

uint64_t sub_1D5EAF564()
{
  v1 = *v0;
  v2 = 0x656449746E657665;
  v3 = 0x726F7463656C6573;
  v4 = 0x69747265706F7270;
  if (v1 != 3)
  {
    v4 = 0x7972657571;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746E656449676174;
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

uint64_t sub_1D5EAF61C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5EB03DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5EAF644(uint64_t a1)
{
  v2 = sub_1D5E1C84C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5EAF680(uint64_t a1)
{
  v2 = sub_1D5E1C84C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBoxScoreDataVisualization.deinit()
{

  return v0;
}

uint64_t FormatBoxScoreDataVisualization.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FormatBoxScoreDataVisualization.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D5EB060C(0, &qword_1EC87F9D8, sub_1D5E1C84C, &type metadata for FormatBoxScoreDataVisualization.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1C84C();
  sub_1D7264B5C();
  v17 = 0;
  sub_1D72643FC();
  if (v2)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v17 = 1;
  sub_1D72643FC();
  swift_beginAccess();
  if (*(v3[6] + 16))
  {

    sub_1D5E0677C(v12, v10, 2);
  }

  swift_beginAccess();
  v13 = v3[7];
  if (*(v13 + 16))
  {
    v18 = 3;
    v16[1] = v13;
    sub_1D5EB05A8(&qword_1EC87F9E8, &qword_1EC87F9D8, sub_1D5E1C84C, &type metadata for FormatBoxScoreDataVisualization.CodingKeys);
    sub_1D5E4C584();
    sub_1D5E4C5D4();

    sub_1D72647EC();
  }

  swift_beginAccess();
  v14 = v3[8];
  v15 = v3[9];

  sub_1D5EAEF20(v14, v15, 4, &qword_1EC87F9D8, sub_1D5E1C84C, &type metadata for FormatBoxScoreDataVisualization.CodingKeys, &qword_1EC87F9E8);
  (*(v7 + 8))(v10, v6);
}

uint64_t FormatBoxScoreDataVisualization.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatBoxScoreDataVisualization.init(from:)(a1);
  return v2;
}

void *FormatBoxScoreDataVisualization.init(from:)(void *a1)
{
  v4 = *v1;
  v39 = v2;
  v40 = v4;
  sub_1D5E18934();
  v35 = v5;
  v33 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8CD38();
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EB060C(0, &qword_1EC880278, sub_1D5E1C84C, &type metadata for FormatBoxScoreDataVisualization.CodingKeys, MEMORY[0x1E69E6F48]);
  v13 = v12;
  v38 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v33 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1C84C();
  v17 = v39;
  v18 = a1;
  v19 = v1;
  sub_1D7264B0C();
  if (v17)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v11;
    v22 = v36;
    v21 = v37;
    LOBYTE(v41) = 0;
    v1[2] = sub_1D72642BC();
    v1[3] = v23;
    LOBYTE(v41) = 1;
    v1[4] = sub_1D72642BC();
    v1[5] = v25;
    LOBYTE(v41) = 2;
    v26 = sub_1D726434C();
    if (v26)
    {
      v44 = 2;
      sub_1D5EB0158(&qword_1EDF3BE00, 255, sub_1D5C8CD38);
      sub_1D726431C();
      v27 = sub_1D725A74C();
      (*(v22 + 8))(v20, v21);
    }

    else
    {
      v27 = MEMORY[0x1E69E7CD0];
    }

    v19[6] = v27;
    LOBYTE(v41) = 3;
    if (sub_1D726434C())
    {
      v44 = 3;
      sub_1D5EB0158(&qword_1EDF3BD70, 255, sub_1D5E18934);
      v28 = v34;
      v29 = v35;
      sub_1D726431C();
      v30 = sub_1D725A74C();
      (*(v33 + 8))(v28, v29);
    }

    else
    {
      v30 = MEMORY[0x1E69E7CC0];
    }

    v19[7] = v30;
    v44 = 4;
    if (sub_1D726434C())
    {
      v43 = 4;
      sub_1D726431C();
      v31 = v41;
      v32 = v42;
    }

    else
    {
      v31 = 0;
      v32 = 0xE000000000000000;
    }

    (*(v38 + 8))(v16, v13);
    v19[8] = v31;
    v19[9] = v32;
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v19;
}

void *sub_1D5EB00D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatBoxScoreDataVisualization.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D5EB0158(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5EB01A0(void *a1, uint64_t a2)
{
  a1[1] = sub_1D5EB0158(&unk_1EC885B10, a2, type metadata accessor for FormatBoxScoreDataVisualization);
  a1[2] = sub_1D5EB0158(&unk_1EC885B50, v3, type metadata accessor for FormatBoxScoreDataVisualization);
  result = sub_1D5EB0158(&qword_1EC880280, v4, type metadata accessor for FormatBoxScoreDataVisualization);
  a1[3] = result;
  return result;
}

unint64_t sub_1D5EB02D8()
{
  result = qword_1EC880288;
  if (!qword_1EC880288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880288);
  }

  return result;
}

unint64_t sub_1D5EB0330()
{
  result = qword_1EC880290;
  if (!qword_1EC880290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880290);
  }

  return result;
}

unint64_t sub_1D5EB0388()
{
  result = qword_1EC880298;
  if (!qword_1EC880298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880298);
  }

  return result;
}

uint64_t sub_1D5EB03DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656449746E657665 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E656449676174 && a2 == 0xED00007265696669 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D5EB05A8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D5EB060C(255, a2, a3, a4, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5EB060C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

id sub_1D5EB0674(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithFrame_];
}

id WebEmbedErrorView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *WebEmbedErrorView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC8NewsFeed17WebEmbedErrorView_label] = v9;
  v49.receiver = v4;
  v49.super_class = type metadata accessor for WebEmbedErrorView();
  v10 = objc_msgSendSuper2(&v49, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC8NewsFeed17WebEmbedErrorView_label;
  v12 = *&v10[OBJC_IVAR____TtC8NewsFeed17WebEmbedErrorView_label];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = objc_opt_self();
  v15 = v10;
  v16 = v12;
  v17 = [v14 bundleForClass_];
  sub_1D725811C();

  v18 = sub_1D726203C();

  [v16 setText_];

  v19 = *&v10[v11];
  v20 = *MEMORY[0x1E69DDCF8];
  v21 = objc_allocWithZone(MEMORY[0x1E69DCA40]);
  v22 = v19;
  v23 = [v21 initForTextStyle_];
  v24 = [objc_opt_self() systemFontOfSize_];
  v25 = [v23 scaledFontForFont_];

  [v22 setFont_];
  [*&v10[v11] setTextAlignment_];
  v26 = *&v10[v11];
  v27 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v28 = v26;
  v29 = [v27 initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  [v28 setTextColor_];

  [*&v10[v11] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v10[v11] setNumberOfLines_];
  v30 = *&v10[v11];
  v31 = v15;
  [v31 addSubview_];
  v32 = [*&v10[v11] leadingAnchor];
  v33 = [v31 leadingAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  [v34 setActive_];
  v35 = [*&v10[v11] trailingAnchor];
  v36 = [v31 trailingAnchor];

  v37 = [v35 constraintEqualToAnchor_];
  [v37 setActive_];

  v38 = [*&v10[v11] topAnchor];
  v39 = [v31 topAnchor];

  v40 = [v38 constraintEqualToAnchor_];
  [v40 setActive_];

  v41 = [*&v10[v11] bottomAnchor];
  v42 = [v31 bottomAnchor];

  v43 = [v41 constraintEqualToAnchor_];
  [v43 setActive_];

  v44 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  aBlock[4] = sub_1D5EB0D00;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D6E0CD34;
  aBlock[3] = &block_descriptor_2;
  v45 = _Block_copy(aBlock);
  v46 = [v44 initWithDynamicProvider_];
  _Block_release(v45);

  [v31 setBackgroundColor_];

  return v31;
}

id sub_1D5EB0D00(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.949019608 green:0.949019608 blue:0.968627451 alpha:1.0];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.109803922 green:0.109803922 blue:0.117647059 alpha:1.0];
  v4 = [a1 userInterfaceStyle];
  if (v4 == 2)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  if (v4 == 2)
  {
    v6 = v3;
  }

  else
  {
    v6 = v2;
  }

  return v6;
}

void sub_1D5EB0DD8()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for WebEmbedErrorView();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  [v0 bounds];
  CGRectGetWidth(v6);
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed17WebEmbedErrorView_label];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  v4 = sub_1D726203C();

  [v1 setText_];
}

id WebEmbedErrorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WebEmbedErrorView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FormatButtonNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D5EB10D4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t FormatButtonNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

unint64_t FormatButtonNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *a1 = v3;
  return sub_1D5C82CD8(v3);
}

unint64_t sub_1D5EB1220(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  sub_1D5C82CD8(v2);
  *(v3 + 32) = v2;
  return sub_1D5C92A8C(v4);
}

unint64_t FormatButtonNode.size.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  return sub_1D5C92A8C(v3);
}

uint64_t FormatButtonNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t FormatButtonNode.zIndex.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

unint64_t FormatButtonNode.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *a1 = v3;
  return sub_1D5EB1500(v3);
}

unint64_t sub_1D5EB1500(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

unint64_t sub_1D5EB151C(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 64);
  sub_1D5EB1500(v2);
  *(v3 + 64) = v2;
  return sub_1D5EB15C4(v4);
}

unint64_t FormatButtonNode.visibility.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = v2;
  return sub_1D5EB15C4(v3);
}

unint64_t sub_1D5EB15C4(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

uint64_t FormatButtonNode.isUserInteractionEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t FormatButtonNode.children.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

uint64_t FormatButtonNode.stateMasks.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

uint64_t FormatButtonNode.actionName.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = v2;
  return sub_1D5CFCFAC(v2);
}

uint64_t FormatButtonNode.longPressAction.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = v2;
  return sub_1D5CFCFAC(v2);
}

uint64_t FormatButtonNode.longPressActionName.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = v2;
  return sub_1D5CFCFAC(v2);
}

void FormatButtonNode.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v2;
}

uint64_t sub_1D5EB191C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 152) = v2;
}

uint64_t FormatButtonNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 152) = a1;
}

uint64_t FormatButtonNode.name.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 160);

  return v1;
}

uint64_t FormatButtonNode.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
}

uint64_t sub_1D5EB1B3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 176) = v2;
}

uint64_t FormatButtonNode.behaviors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 176) = a1;
}

uint64_t sub_1D5EB1C6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 184) = v2;
}

uint64_t FormatButtonNode.sourceItems.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 184) = a1;
}

uint64_t FormatButtonNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[24];
  v3 = v1[25];
  v4 = v1[26];
  v5 = v1[27];
  v6 = v1[28];
  v7 = v1[29];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6);
}

uint64_t sub_1D5EB1D80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result)
  {

    sub_1D5DEA234(a5);
  }

  return result;
}

uint64_t FormatButtonNode.__allocating_init(identifier:size:resize:adjustments:zIndex:visibility:isUserInteractionEnabled:children:stateMasks:action:actionName:longPressAction:longPressActionName:accessibilityRole:animation:selectors:name:behaviors:sourceItems:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, char a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = swift_allocObject();
  v26 = *a3;
  v27 = *a4;
  v37 = *a7;
  v28 = *a11;
  v29 = *a12;
  v30 = *a14;
  v41 = *a15;
  v42 = *a13;
  v40 = *(a15 + 8);
  v31 = *(a22 + 32);
  v32 = *(a22 + 40);
  *(v25 + 168) = 0;
  *(v25 + 160) = 0;
  swift_beginAccess();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  swift_beginAccess();
  *(v25 + 32) = v26;
  *(v25 + 40) = v27;
  swift_beginAccess();
  *(v25 + 48) = a5;
  swift_beginAccess();
  *(v25 + 56) = a6;
  swift_beginAccess();
  *(v25 + 64) = v37;
  swift_beginAccess();
  *(v25 + 72) = a8;
  swift_beginAccess();
  *(v25 + 80) = a9;
  swift_beginAccess();
  *(v25 + 88) = a10;
  *(v25 + 96) = v28;
  *(v25 + 104) = v29;
  *(v25 + 112) = v42;
  *(v25 + 120) = v30;
  *(v25 + 128) = v41;
  *(v25 + 136) = v40;
  *(v25 + 144) = a16;
  swift_beginAccess();
  *(v25 + 152) = a17;
  swift_beginAccess();
  *(v25 + 160) = a18;
  *(v25 + 168) = a19;
  swift_beginAccess();
  *(v25 + 176) = a20;
  swift_beginAccess();
  *(v25 + 184) = a21;
  v33 = *(a22 + 16);
  *(v25 + 192) = *a22;
  *(v25 + 208) = v33;
  *(v25 + 224) = v31;
  *(v25 + 232) = v32;
  return v25;
}

uint64_t FormatButtonNode.init(identifier:size:resize:adjustments:zIndex:visibility:isUserInteractionEnabled:children:stateMasks:action:actionName:longPressAction:longPressActionName:accessibilityRole:animation:selectors:name:behaviors:sourceItems:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, char a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v27 = *a3;
  v28 = *a4;
  v29 = *a7;
  v36 = *a12;
  v37 = *a11;
  v34 = *a14;
  v35 = *a13;
  v33 = *a15;
  v32 = *(a15 + 8);
  v39 = *(a22 + 40);
  v40 = *(a22 + 32);
  *(v22 + 168) = 0;
  *(v22 + 160) = 0;
  swift_beginAccess();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  swift_beginAccess();
  *(v22 + 32) = v27;
  *(v22 + 40) = v28;
  swift_beginAccess();
  *(v22 + 48) = a5;
  swift_beginAccess();
  *(v22 + 56) = a6;
  swift_beginAccess();
  *(v22 + 64) = v29;
  swift_beginAccess();
  *(v22 + 72) = a8;
  swift_beginAccess();
  *(v22 + 80) = a9;
  swift_beginAccess();
  *(v22 + 88) = a10;
  *(v22 + 96) = v37;
  *(v22 + 104) = v36;
  *(v22 + 112) = v35;
  *(v22 + 120) = v34;
  *(v22 + 128) = v33;
  *(v22 + 136) = v32;
  *(v22 + 144) = a16;
  swift_beginAccess();
  *(v22 + 152) = a17;
  swift_beginAccess();
  *(v22 + 160) = a18;
  *(v22 + 168) = a19;
  swift_beginAccess();
  *(v22 + 176) = a20;
  swift_beginAccess();
  *(v22 + 184) = a21;
  v30 = *(a22 + 16);
  *(v22 + 192) = *a22;
  *(v22 + 208) = v30;
  *(v22 + 224) = v40;
  *(v22 + 232) = v39;
  return v22;
}

uint64_t FormatButtonNode.deinit()
{

  sub_1D5C92A8C(*(v0 + 32));

  sub_1D5EB15C4(*(v0 + 64));

  sub_1D5C84FF4(*(v0 + 104));
  sub_1D5C84FF4(*(v0 + 112));
  sub_1D5C84FF4(*(v0 + 120));

  sub_1D5EB2398(*(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224));
  return v0;
}

uint64_t sub_1D5EB2398(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result)
  {

    sub_1D5CBF568(a5);
  }

  return result;
}

uint64_t FormatButtonNode.__deallocating_deinit()
{
  FormatButtonNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D5EB244C(uint64_t a1, uint64_t a2)
{
  result = sub_1D5EB565C(&qword_1EC8802A8, a2, type metadata accessor for FormatButtonNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5EB24A4(void *a1, uint64_t a2)
{
  a1[1] = sub_1D5EB565C(&qword_1EDF308A0, a2, type metadata accessor for FormatButtonNode);
  a1[2] = sub_1D5EB565C(&qword_1EDF11538, v3, type metadata accessor for FormatButtonNode);
  result = sub_1D5EB565C(&qword_1EC8802B0, v4, type metadata accessor for FormatButtonNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D5EB2580(uint64_t a1, uint64_t a2)
{
  result = sub_1D5EB565C(&qword_1EC8802B8, a2, type metadata accessor for FormatButtonNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5EB25D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v101 = a8;
  v116 = a2;
  sub_1D5EB56C0(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v100 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v104 = &v92 - v19;
  v99 = type metadata accessor for FormatNodeStateData.Data();
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99, v20);
  v103 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FormatButtonNodeData();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v106 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EB56C0(0, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v109 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v97 = &v92 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v110 = &v92 - v33;
  v34 = type metadata accessor for FormatAction();
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v105 = &v92 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v92 - v39;
  v108 = type metadata accessor for FormatButtonNodeDataAction();
  v113 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108, v41);
  v102 = &v92 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v112 = &v92 - v45;
  swift_unownedRetainStrong();

  swift_unownedRetainStrong();
  v46 = a3[12];

  swift_unownedRetainStrong();
  v114 = a3[13];
  sub_1D5CFCFAC(v114);

  v117 = v46;
  v111 = a6;
  v107 = a7;
  sub_1D715EC34(a6, a7, a4);
  v47 = *(a5 + 32);
  v117 = v46;

  v48 = v115;
  sub_1D715ED70(a4, v116, v40);
  if (v48)
  {

    sub_1D5C84FF4(v114);
  }

  v95 = v40;
  v94 = v47;
  v93 = a5;
  v96 = a4;
  v115 = 0;

  v50 = v114;
  if ((~v114 & 0xF000000000000007) != 0)
  {
    v117 = v114;
    v52 = v96;
    sub_1D6E5B0C8(v111, v107, v96);
    v117 = v50;

    v55 = v115;
    v53 = v116;
    v56 = sub_1D6E5B35C(v52, v116, 0, 0);
    v115 = v55;
    if (v55)
    {

      sub_1D5C84FF4(v50);

      return sub_1D5EB5840(v95, type metadata accessor for FormatAction);
    }

    v51 = v56;
    v54 = a3;

    sub_1D5C84FF4(v50);
  }

  else
  {

    v51 = 0;
    v52 = v96;
    v53 = v116;
    v54 = a3;
  }

  v57 = v112;
  sub_1D5EB5714(v95, v112);
  *(v57 + *(v108 + 20)) = v51;
  v58 = v113 + 56;
  v59 = *(v113 + 56);
  v60 = v110;
  v59(v110, 1, 1);
  swift_unownedRetainStrong();
  v61 = v54[14];
  sub_1D5CFCFAC(v61);

  v62 = v109;
  if ((~v61 & 0xF000000000000007) != 0)
  {
    v113 = v58;
    v114 = v59;
    swift_unownedRetainStrong();

    swift_unownedRetainStrong();
    v66 = v54[15];
    sub_1D5CFCFAC(v66);

    v117 = v61;
    sub_1D715EC34(v101, a9, v52);
    v117 = v61;

    v67 = v115;
    sub_1D715ED70(v52, v53, v105);
    if (v67)
    {

      sub_1D5C84FF4(v61);
      sub_1D5C84FF4(v66);
      v57 = v112;
      goto LABEL_19;
    }

    v115 = 0;

    if ((~v66 & 0xF000000000000007) != 0)
    {
      v117 = v66;
      v69 = v96;
      sub_1D6E5B0C8(v101, a9, v96);
      v117 = v66;

      v70 = v115;
      v71 = sub_1D6E5B35C(v69, v53, 0, 0);
      v57 = v112;
      v115 = v70;
      if (v70)
      {

        sub_1D5C84FF4(v66);

        sub_1D5C84FF4(v61);
        sub_1D5EB5840(v105, type metadata accessor for FormatAction);
        goto LABEL_19;
      }

      v68 = v71;

      sub_1D5C84FF4(v66);

      sub_1D5C84FF4(v61);
    }

    else
    {
      sub_1D5C84FF4(v61);
      v68 = 0;
      v57 = v112;
    }

    sub_1D5EB57E4(v60, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction);
    v72 = v97;
    sub_1D5EB5714(v105, v97);
    *(v72 + *(v108 + 20)) = v68;
    (v114)(v72, 0, 1);
    sub_1D5EB593C(v72, v60);
    v63 = v106;
    v65 = v103;
    v64 = v104;
    v62 = v109;
  }

  else
  {
    v63 = v106;
    v65 = v103;
    v64 = v104;
  }

  v73 = v102;
  sub_1D5EB58A0(v57, v102, type metadata accessor for FormatButtonNodeDataAction);
  sub_1D5EB5778(v60, v62, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction);
  v74 = v115;
  sub_1D6A64AB8(v73, v62, v63);
  if (!v74)
  {
    v76 = v111;
    sub_1D5EB58A0(v63, v65, type metadata accessor for FormatButtonNodeData);
    v77 = v99;
    swift_storeEnumTagMultiPayload();
    v78 = *(v93 + 24);
    sub_1D5EB58A0(v65, v64, type metadata accessor for FormatNodeStateData.Data);
    (*(v98 + 56))(v64, 0, 1, v77);
    v79 = v65;
    v80 = v100;
    sub_1D5EB5778(v64, v100, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data);
    swift_beginAccess();
    v81 = v107;

    v114 = v78;
    v115 = 0;
    v82 = v80;
    v83 = v81;
    sub_1D6D60A18(v82, v76, v81);
    swift_endAccess();
    sub_1D5EB57E4(v64, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data);
    sub_1D5EB5840(v79, type metadata accessor for FormatNodeStateData.Data);
    swift_unownedRetainStrong();
    swift_beginAccess();
    v84 = v54[23];

    MEMORY[0x1EEE9AC00](v85, v86);
    v88 = v115;
    v87 = v116;
    *(&v92 - 2) = v96;
    *(&v92 - 1) = v87;
    v89 = sub_1D5FBC110(sub_1D5EB5908, (&v92 - 4), v84);

    if (!v88)
    {
      v90 = v114;
      swift_beginAccess();
      swift_bridgeObjectRetain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v118 = *(v90 + 40);
      *(v90 + 40) = 0x8000000000000000;
      sub_1D6D77BEC(v111, v83, v89, v111, v83, isUniquelyReferenced_nonNull_native);
      *(v90 + 40) = v118;
      swift_endAccess();
    }

    sub_1D5EB5840(v106, type metadata accessor for FormatButtonNodeData);
    v75 = v110;
    goto LABEL_23;
  }

LABEL_19:
  v75 = v60;
LABEL_23:
  sub_1D5EB57E4(v75, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction);
  return sub_1D5EB5840(v57, type metadata accessor for FormatButtonNodeDataAction);
}

uint64_t sub_1D5EB3130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v30 = a8;
  v32 = a6;
  sub_1D5EB51BC();
  v14 = v13;
  v33 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = (&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5EB56C0(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v28 - v20;
  v37 = a1;
  v22 = sub_1D7259B8C();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  KeyPath = swift_getKeyPath();
  swift_beginAccess();
  v36 = *(a4 + 32);
  sub_1D5C82CD8(v36);
  v31 = v17;
  v23 = v34;
  sub_1D5BEB9F4(a5, a2, a3, v17);
  if (v23)
  {

    sub_1D5C92A8C(v36);
  }

  else
  {
    v34 = v14;
    sub_1D5C92A8C(v36);
    v24 = swift_allocObject();
    v25 = v30;
    v24[2] = v29;
    v24[3] = a4;
    v24[4] = v25;
    v24[5] = a2;
    v28 = a2;
    v24[6] = a3;
    v24[7] = a5;
    sub_1D5EB5290(0);
    sub_1D5EB565C(&qword_1EDF3C1F0, 255, sub_1D5EB5290);

    v26 = v31;
    sub_1D72599AC();

    (*(v33 + 8))(v26, v34);
  }

  return sub_1D5EB57E4(v21, &qword_1EDF3C120, MEMORY[0x1E69D6FA0]);
}

uint64_t sub_1D5EB3478@<X0>(double **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, unint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v10 = *a2;
  v11 = *(a3 + 16);
  if (v11)
  {
    v53 = *a1;
    v58 = a8;
    v14 = (*(v11 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
    swift_beginAccess();
    v15 = v10;
    v17 = *v14;
    v16 = v14[1];
    v18 = *(a4 + 144);
    sub_1D5EB52B0(v10);
    sub_1D5EB5328(v11);

    v19 = sub_1D6FBAE48(v18, v11, v17, v16);

    if (v8)
    {
      sub_1D5EB52CC(v11);
      return sub_1D5EB530C(v10);
    }

    if (v19)
    {

      v22 = sub_1D6A45640(v11);

      v45 = v15;
      if (v22)
      {
        swift_beginAccess();

        sub_1D6D60C08(v22, a5, a6);
        swift_endAccess();
      }
    }

    else
    {
      v45 = v10;
    }

    v55 = FormatLayoutAttributes.reposition(frame:)(v53[2], v53[3], v53[4], v53[5]);
    swift_beginAccess();
    v34 = *(a3 + 32);
    v35 = *(a4 + 40);
    if (v35 && (v36 = *(v35 + 16), swift_beginAccess(), *(*(v36 + 16) + 16)))
    {
      v52 = v36;
    }

    else
    {
      v52 = 0;
    }

    swift_beginAccess();
    v49 = *(a4 + 56);
    swift_beginAccess();
    v37 = *(a4 + 64);

    sub_1D5EB1500(v37);
    sub_1D615B4A8(a7, &v59);

    sub_1D5EB15C4(v37);
    v57 = v59;
    swift_beginAccess();
    v38 = *(a4 + 72);
    v39 = *(a4 + 128);
    v40 = *(a4 + 136);
    swift_beginAccess();
    v42 = *(a4 + 160);
    v41 = *(a4 + 168);
    type metadata accessor for FormatButtonNodeLayoutAttributes();
    v43 = swift_allocObject();
    *(v43 + 16) = v55;
    *(v43 + 24) = v34;
    *(v43 + 32) = v52;
    *(v43 + 40) = v49;
    *(v43 + 48) = v57;
    *(v43 + 56) = v38;
    *(v43 + 64) = v39;
    *(v43 + 72) = v40;
    *(v43 + 80) = v42;
    *(v43 + 88) = v41;
    v44 = swift_allocObject();
    *(v44 + 16) = v43;

    sub_1D5EB52CC(v11);
    result = sub_1D5EB530C(v45);
    v33 = v44 | 0x3000000000000004;
  }

  else
  {
    if ((~v10 & 0xF000000000000007) == 0 || ((v10 >> 59) & 0x1E | (v10 >> 2) & 1) != 7)
    {
      sub_1D5EB52B0(*a2);
      sub_1D5EB52CC(0);
      result = sub_1D5EB530C(v10);
      *a8 = 0xA000000000000004;
      return result;
    }

    v23 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v58 = a8;
    v24 = FormatLayoutAttributes.reposition(frame:)((*a1)[2], (*a1)[3], (*a1)[4], (*a1)[5]);
    v25 = *(v23 + 24);
    v26 = *(v23 + 32);
    v27 = *(v23 + 48);
    v28 = *(v23 + 56);
    v51 = *(v23 + 64);
    v54 = *(v23 + 40);
    v48 = *(v23 + 72);
    v29 = *(v23 + 80);
    v30 = *(v23 + 88);
    v46 = v29;
    type metadata accessor for FormatButtonNodeLayoutAttributes();
    v31 = swift_allocObject();
    *(v31 + 16) = v24;
    *(v31 + 24) = v25;
    *(v31 + 32) = v26;
    *(v31 + 40) = v54;
    *(v31 + 48) = v27;
    *(v31 + 56) = v28;
    *(v31 + 64) = v51;
    *(v31 + 72) = v48;
    *(v31 + 80) = v46;
    *(v31 + 88) = v30;
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    sub_1D5EB52B0(v10);

    sub_1D5EB1500(v27);

    sub_1D5EB52CC(0);
    result = sub_1D5EB530C(v10);
    v33 = v32 | 0x3000000000000004;
  }

  *v58 = v33;
  return result;
}

uint64_t sub_1D5EB3944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = a6;
  v41 = a7;
  sub_1D5EB56C0(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v42 = &v34 - v14;
  v43 = a1;
  swift_getKeyPath();
  v46 = MEMORY[0x1E69E6158];
  v47 = MEMORY[0x1E69D74F0];
  v37 = a2;
  v44 = a2;
  v45 = a3;
  sub_1D5EB5368(0);
  v16 = v15;
  sub_1D5EB565C(&qword_1EDF3C040, 255, sub_1D5EB5368);
  sub_1D5EB565C(&qword_1EDF3C168, 255, sub_1D5EB544C);
  v38 = a3;

  v36 = v16;
  sub_1D7259A0C();

  __swift_destroy_boxed_opaque_existential_1(&v44);
  v35 = a1;
  v48 = a1;
  swift_getKeyPath();
  v39 = a4;
  v17 = *(a4 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  swift_beginAccess();
  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  v20 = *(v17 + 40);
  if (v20)
  {
    v44 = *(v17 + 32);
    v45 = v20;

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v19, v18);

    v19 = v44;
    v18 = v45;
  }

  else
  {
  }

  v21 = MEMORY[0x1E69E6158];
  v46 = MEMORY[0x1E69E6158];
  v22 = MEMORY[0x1E69D74F0];
  v47 = MEMORY[0x1E69D74F0];
  v44 = v19;
  v45 = v18;
  sub_1D7259A0C();

  __swift_destroy_boxed_opaque_existential_1(&v44);
  v23 = v35;
  v48 = v35;
  swift_getKeyPath();
  v25 = *(a5 + 16);
  v24 = *(a5 + 24);
  v46 = v21;
  v47 = v22;
  v44 = v25;
  v45 = v24;

  sub_1D7259A0C();

  __swift_destroy_boxed_opaque_existential_1(&v44);
  v44 = v23;
  v26 = sub_1D7259B8C();
  v27 = v42;
  (*(*(v26 - 8) + 56))(v42, 1, 1, v26);
  v28 = swift_allocObject();
  v30 = v39;
  v29 = v40;
  v28[2] = a5;
  v28[3] = v30;
  v31 = v37;
  v28[4] = v29;
  v28[5] = v31;
  v32 = v41;
  v28[6] = v38;
  v28[7] = v32;

  sub_1D7259AAC();
  sub_1D5EB57E4(v27, &qword_1EDF3C120, MEMORY[0x1E69D6FA0]);
}

uint64_t sub_1D5EB3D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v81 = a7;
  v92 = a6;
  v84 = a5;
  v83 = a4;
  v80 = a1;
  sub_1D5EB56C0(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v77 = (v66 - v11);
  v12 = sub_1D725A36C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v78 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v66 - v18;
  swift_beginAccess();

  sub_1D6B0ACE8(v20, 0);
  v21 = v12;

  v22 = sub_1D6B0B228(0, 0);

  v23 = *MEMORY[0x1E69D7378];
  v26 = *(v13 + 104);
  v24 = v13 + 104;
  v25 = v26;
  v26(v19, *MEMORY[0x1E69D7378], v21);
  v76 = a2;
  v85 = a2;
  v86 = v84;
  v87 = v92;
  v82 = a3;
  v88 = a3;
  v89 = v22;
  v90 = v83;
  sub_1D5EB5388(0, &qword_1EDF3BF38, MEMORY[0x1E69D73B8]);
  v28 = v27;
  swift_allocObject();
  v29 = v79;
  v30 = sub_1D725A4EC();
  if (v29)
  {
  }

  v71 = v28;
  v72 = v25;
  v73 = v23;
  v74 = v24;
  v75 = v21;
  v31 = v30;
  v32 = swift_allocObject();
  v32[2] = v84;
  v33 = v76;
  v32[3] = v92;
  v32[4] = v33;
  v32[5] = v82;
  v32[6] = v31;
  v32[7] = v81;
  v32[8] = v22;

  sub_1D7259D4C();
  v66[2] = v31;

  swift_beginAccess();
  v35 = *(v33 + 88);
  v67 = *(v35 + 16);
  if (!v67)
  {
  }

  v66[1] = v22;
  v69 = *(v83 + 24);

  result = swift_beginAccess();
  v36 = 0;
  v68 = xmmword_1D7273AE0;
  v37 = v33;
  v70 = v35;
  while (v36 < *(v35 + 16))
  {
    v79 = v36;
    v38 = *(v35 + 8 * v36 + 32);
    v91 = v38;

    v39 = sub_1D71C0F40();
    v40 = v82;
    sub_1D6B0A84C(v39, v41);

    v42 = v37;
    v43 = *(v37 + 16);
    v44 = *(v37 + 24);

    v84 = sub_1D6E8DD40(v43, v44);
    v92 = v45;

    if (*(v69 + 16))
    {
      v46 = v77;
      *v77 = v40;
      v47 = type metadata accessor for FormatSourceMapContext();
      swift_storeEnumTagMultiPayload();
      (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
      swift_beginAccess();

      v48 = v92;

      sub_1D6D60828(v46, v84, v48);
      swift_endAccess();
    }

    v91 = v38;
    v49 = sub_1D71C0F40();
    v50 = v40;
    v52 = v51;
    sub_1D5C3C480();
    inited = swift_initStackObject();
    *(inited + 16) = v68;
    *(inited + 32) = v49;
    *(inited + 40) = v52;

    v54 = sub_1D5B86020(inited);
    swift_setDeallocating();
    sub_1D5BFB68C(inited + 32);

    v56 = sub_1D5D6021C(v55, v54);
    sub_1D6B0ACE8(v56, 0);

    sub_1D6B0A84C(v49, v52);

    v57 = sub_1D6B0B228(0, 0);

    v58 = v72(v78, v73, v75);
    MEMORY[0x1EEE9AC00](v58, v59);
    v60 = v84;
    v66[-6] = v42;
    v66[-5] = v60;
    v66[-4] = v92;
    v66[-3] = v50;
    v61 = v83;
    v66[-2] = v57;
    v66[-1] = v61;
    swift_allocObject();
    v62 = sub_1D725A4EC();

    v63 = swift_allocObject();
    v64 = v92;
    v63[2] = v84;
    v63[3] = v64;
    v63[4] = v42;
    v63[5] = v57;
    v65 = v81;
    v63[6] = v62;
    v63[7] = v65;
    v63[8] = v38;

    sub_1D7259D4C();

    v37 = v42;
    v36 = v79 + 1;
    v35 = v70;
    if (v67 == v79 + 1)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5EB4604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v30 = a8;
  v31 = a6;
  sub_1D5EB51BC();
  v15 = v14;
  v32 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = (&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5EB56C0(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v27 - v21;
  v34 = a1;
  v23 = sub_1D7259B8C();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  swift_getKeyPath();
  swift_beginAccess();
  v33 = *(a4 + 32);
  sub_1D5C82CD8(v33);
  sub_1D5BEB9F4(a5, a2, a3, v18);
  if (v8)
  {

    sub_1D5C92A8C(v33);
  }

  else
  {
    sub_1D5C92A8C(v33);
    v24 = swift_allocObject();
    v27 = a3;
    v28 = v15;
    v25 = v30;
    *(v24 + 16) = v29;
    *(v24 + 24) = v25;
    sub_1D5EB563C(0);
    sub_1D5EB565C(&qword_1EDF3C118, 255, sub_1D5EB563C);

    sub_1D7259AFC();

    (*(v32 + 8))(v18, v28);
  }

  return sub_1D5EB57E4(v22, &qword_1EDF3C120, MEMORY[0x1E69D6FA0]);
}

uint64_t sub_1D5EB4914@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 16);
  *(a2 + 16) = a3;
  *(a2 + 24) = v5;

  result = sub_1D5EB52CC(v6);
  *a4 = 0xA000000000000004;
  return result;
}

uint64_t sub_1D5EB4978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v30 = a8;
  v31 = a6;
  sub_1D5EB51BC();
  v15 = v14;
  v32 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = (&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5EB56C0(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v27 - v21;
  v34 = a1;
  v23 = sub_1D7259B8C();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  swift_getKeyPath();
  swift_beginAccess();
  v33 = *(a4 + 32);
  sub_1D5C82CD8(v33);
  sub_1D5BEB9F4(a5, a2, a3, v18);
  if (v8)
  {

    sub_1D5C92A8C(v33);
  }

  else
  {
    sub_1D5C92A8C(v33);
    v24 = swift_allocObject();
    v27 = a3;
    v28 = v15;
    v25 = v30;
    *(v24 + 16) = v29;
    *(v24 + 24) = v25;
    sub_1D5EB563C(0);
    sub_1D5EB565C(&qword_1EDF3C118, 255, sub_1D5EB563C);

    sub_1D7259AFC();

    (*(v32 + 8))(v18, v28);
  }

  return sub_1D5EB57E4(v22, &qword_1EDF3C120, MEMORY[0x1E69D6FA0]);
}

uint64_t sub_1D5EB4C88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + 32);
  *(a2 + 32) = 0x8000000000000000;
  sub_1D6D77F5C(v7, a3, isUniquelyReferenced_nonNull_native);

  *(a2 + 32) = v10;
  result = swift_endAccess();
  *a4 = 0xA000000000000004;
  return result;
}

uint64_t sub_1D5EB4D48(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  swift_beginAccess();
  v16 = *(a2[10] + 16);
  result = v16 + 3;
  if (!__OFADD__(v16, 3))
  {
    v33 = a7;
    sub_1D7259E0C();
    v38 = a1;
    swift_getKeyPath();
    v36 = MEMORY[0x1E69E6158];
    v37 = MEMORY[0x1E69D74F0];
    v34 = a3;
    v35 = a4;
    sub_1D5EB5368(0);
    sub_1D5EB565C(&qword_1EDF3C040, 255, sub_1D5EB5368);
    sub_1D5EB565C(&qword_1EDF3C168, 255, sub_1D5EB544C);

    sub_1D7259A0C();

    __swift_destroy_boxed_opaque_existential_1(&v34);
    v41 = a1;
    swift_getKeyPath();
    v18 = *(a5 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
    swift_beginAccess();
    v20 = a2[2];
    v19 = a2[3];
    v21 = *(v18 + 40);
    if (v21)
    {
      v34 = *(v18 + 32);
      v35 = v21;

      MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
      MEMORY[0x1DA6F9910](v20, v19);

      v20 = v34;
      v19 = v35;
    }

    else
    {
    }

    v36 = MEMORY[0x1E69E6158];
    v37 = MEMORY[0x1E69D74F0];
    v34 = v20;
    v35 = v19;
    sub_1D7259A0C();

    __swift_destroy_boxed_opaque_existential_1(&v34);
    v41 = a1;
    swift_getKeyPath();
    v23 = a2[2];
    v22 = a2[3];
    v36 = MEMORY[0x1E69E6158];
    v37 = MEMORY[0x1E69D74F0];
    v34 = v23;
    v35 = v22;

    sub_1D7259A0C();

    __swift_destroy_boxed_opaque_existential_1(&v34);
    v24 = a2[10];
    v25 = *(v24 + 16);

    if (!v25)
    {
    }

    v26 = 0;
    v27 = 32;
    while (v26 < *(v24 + 16))
    {
      v28 = *(v24 + v27);
      v29 = *(v24 + v27 + 32);
      v39[1] = *(v24 + v27 + 16);
      v39[2] = v29;
      v39[0] = v28;
      v30 = *(v24 + v27 + 48);
      v31 = *(v24 + v27 + 64);
      v32 = *(v24 + v27 + 80);
      v40 = *(v24 + v27 + 96);
      v39[4] = v31;
      v39[5] = v32;
      v39[3] = v30;
      sub_1D5C5C4CC(v39, &v34);
      sub_1D6FBF7BC(a1, a6, v33);
      if (v8)
      {

        return sub_1D5C5C540(v39);
      }

      ++v26;
      result = sub_1D5C5C540(v39);
      v27 += 104;
      if (v25 == v26)
      {
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5EB5148()
{
  sub_1D5EB52CC(*(v0 + 16));

  return swift_deallocClassInstance();
}

void sub_1D5EB51BC()
{
  if (!qword_1EDF3BF10)
  {
    sub_1D5EB5218();
    v0 = sub_1D725A52C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BF10);
    }
  }
}

unint64_t sub_1D5EB5218()
{
  result = qword_1EDF33A20;
  if (!qword_1EDF33A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33A20);
  }

  return result;
}

uint64_t sub_1D5EB52B0(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_1D5EB52CC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D5EB530C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_1D5EB5328(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1D5EB5388(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FormatLayout;
    v8[1] = type metadata accessor for FormatLayoutAttributes();
    v8[2] = sub_1D5EB5218();
    v8[3] = sub_1D5EB565C(&qword_1EDF28608, 255, type metadata accessor for FormatLayoutAttributes);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D5EB544C()
{
  if (!qword_1EDF3C160)
  {
    v0 = sub_1D725995C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C160);
    }
  }
}

uint64_t objectdestroy_43Tm(void (*a1)(void))
{

  a1(*(v1 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D5EB565C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5EB56C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D5EB5714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5EB5778(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D5EB56C0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5EB57E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5EB56C0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5EB5840(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5EB58A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5EB593C(uint64_t a1, uint64_t a2)
{
  sub_1D5EB56C0(0, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FormatArrangementSlot.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v16[1] = a2;
  sub_1D5C2FF94(0, &qword_1EDF3C650, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v16 - v10;
  v12 = a1[3];
  v20 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v3)
  {
    type metadata accessor for FormatArrangementSlot.CodingType();
    v19 = 0uLL;
    swift_getWitnessTable();
    sub_1D726431C();
    if (v17 <= 1u)
    {
      if (v17)
      {
        type metadata accessor for FormatArrangementSlotInstruction();
        v19 = xmmword_1D7279980;
        swift_getWitnessTable();
        sub_1D726431C();
        (*(v8 + 8))(v11, v7);
        v14 = v17;
        v15 = v18 | 0x20;
      }

      else
      {
        type metadata accessor for FormatArrangementSlotInstruction();
        v19 = xmmword_1D7279980;
        swift_getWitnessTable();
        sub_1D726431C();
        (*(v8 + 8))(v11, v7);
        v14 = v17;
        v15 = v18;
      }
    }

    else if (v17 == 2)
    {
      type metadata accessor for FormatArrangementSlotInstruction();
      v19 = xmmword_1D7279980;
      swift_getWitnessTable();
      sub_1D726431C();
      (*(v8 + 8))(v11, v7);
      v14 = v17;
      v15 = v18 | 0x40;
    }

    else if (v17 == 3)
    {
      type metadata accessor for FormatArrangementSlotInstruction();
      v19 = xmmword_1D7279980;
      swift_getWitnessTable();
      sub_1D726431C();
      (*(v8 + 8))(v11, v7);
      v14 = v17;
      v15 = v18 | 0x60;
    }

    else
    {
      type metadata accessor for FormatArrangementSlotInstruction();
      v19 = xmmword_1D7279980;
      swift_getWitnessTable();
      sub_1D726431C();
      (*(v8 + 8))(v11, v7);
      v14 = v17;
      v15 = v18 | 0x80;
    }

    *a3 = v14;
    *(a3 + 8) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t FormatArrangementSlot.encode(to:)(void *a1)
{
  sub_1D5C2FF94(0, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - v7;
  v13 = *v1;
  v9 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B5C();
  v10 = v9 >> 5;
  if (v9 >> 5 <= 1)
  {
    if (!v10)
    {
      LOBYTE(v14) = 0;
      goto LABEL_9;
    }

    LOBYTE(v10) = 1;
  }

  else if (v10 != 2 && v10 != 3)
  {
    LOBYTE(v10) = 4;
  }

  LOBYTE(v14) = v10;
LABEL_9:
  v16 = 0uLL;
  type metadata accessor for FormatArrangementSlot.CodingType();
  swift_getWitnessTable();
  sub_1D726443C();
  if (!v2)
  {
    v14 = v13;
    v15 = v9 & 1;
    v16 = xmmword_1D7279980;
    type metadata accessor for FormatArrangementSlotInstruction();
    swift_getWitnessTable();
    sub_1D726443C();
  }

  return (*(v17 + 8))(v8, v5);
}

uint64_t sub_1D5EB60D0()
{
  v0 = sub_1D72641CC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D5EB611C(unsigned __int8 a1)
{
  v1 = 7105633;
  v2 = 0x656E4F796E61;
  v3 = 1701670771;
  if (a1 != 3)
  {
    v3 = 6647407;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 7958113;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D5EB6194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D5EB6208(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D5EB6274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D5EB62E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D5EB6354@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5EB60D0();
  *a1 = result;
  return result;
}

uint64_t sub_1D5EB638C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5EB611C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static FormatArrangementSlot.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v3 >> 5;
  if (v3 >> 5 <= 1)
  {
    if (v6)
    {
      if ((v5 & 0xE0) != 0x20)
      {
        goto LABEL_12;
      }
    }

    else if (v5 >= 0x20)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v6 == 2)
  {
    if ((v5 & 0xE0) == 0x40)
    {
      goto LABEL_10;
    }

LABEL_12:
    sub_1D5EB6610(*a1, v3);
    sub_1D5EB6610(v4, v5);
    sub_1D5EB6624(v2, v3);
    sub_1D5EB6624(v4, v5);
    v7 = 0;
    return v7 & 1;
  }

  if (v6 != 3)
  {
    if ((v5 & 0xE0) == 0x80)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if ((v5 & 0xE0) != 0x60)
  {
    goto LABEL_12;
  }

LABEL_10:
  v11 = *a1;
  v12 = v3 & 1;
  v9 = v4;
  v10 = v5 & 1;
  sub_1D5EB6610(v4, v5);
  sub_1D5EB6610(v2, v3);
  sub_1D5EB6610(v2, v3);
  sub_1D5EB6610(v4, v5);
  v7 = static FormatArrangementSlotInstruction.== infix(_:_:)(&v11, &v9);
  sub_1D5EB6624(v2, v3);
  sub_1D5EB6624(v4, v5);
  sub_1D5EB6624(v4, v5);
  sub_1D5EB6624(v2, v3);
  return v7 & 1;
}

uint64_t sub_1D5EB6610(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 0x9Fu)
  {
  }

  return result;
}

uint64_t sub_1D5EB6624(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 0x9Fu)
  {
  }

  return result;
}

uint64_t sub_1D5EB667C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D5EB66C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 9))
  {
    return (*a1 + 124);
  }

  v3 = ((*(a1 + 8) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 8) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D5EB6718(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *(result + 8) = 0;
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

unint64_t sub_1D5EB67D8()
{
  result = qword_1EC8802C0;
  if (!qword_1EC8802C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8802C0);
  }

  return result;
}

id SharingArticleURLActivityItemSource.__allocating_init(headline:articleURL:mailShareLinkTextProvider:linkPresentationSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 + 24);
  v10 = *(a3 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v12 = sub_1D5EB83B4(a1, a2, v11, a4, v4, v9, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v12;
}

id SharingArticleURLActivityItemSource.init(headline:articleURL:mailShareLinkTextProvider:linkPresentationSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 + 24);
  v10 = *(a3 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v12 = MEMORY[0x1EEE9AC00](v11, v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_1D5EB823C(a1, a2, v14, a4, v4, v9, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v16;
}

id SharingArticleURLActivityItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingArticleURLActivityItemSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_OWORD *SharingArticleURLActivityItemSource.activityViewControllerPlaceholderItem(_:)@<X0>(uint64_t a1@<X8>)
{
  sub_1D5B54350(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v11 - v5;
  sub_1D5EB84C0(v1 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_articleURL, v11 - v5);
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_1D5B6EE3C(v6, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    *(a1 + 24) = MEMORY[0x1E69E6158];
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
  }

  else
  {
    v12 = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
    (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
    return sub_1D5B7C390(v11, a1);
  }

  return result;
}

void SharingArticleURLActivityItemSource.activityViewController(_:itemForActivityType:)(void *a1@<X1>, uint64_t a2@<X8>)
{
  sub_1D5B54350(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v71 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v71 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v71 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v27 = &v71 - v26;
  if (!a1)
  {
    sub_1D5EB84C0(v2 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_articleURL, v8);
    v39 = sub_1D72585BC();
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v8, 1, v39) != 1)
    {
      *(a2 + 24) = v39;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      (*(v40 + 32))(boxed_opaque_existential_1, v8, v39);
      return;
    }

    v41 = MEMORY[0x1E6968FB0];
    v42 = v8;
    goto LABEL_19;
  }

  v72 = v25;
  v73 = v2;
  v28 = sub_1D726207C();
  v30 = v29;
  if (v28 == sub_1D726207C() && v30 == v31)
  {
    v43 = a1;

    goto LABEL_13;
  }

  v33 = sub_1D72646CC();
  v71 = a1;

  if (v33)
  {
LABEL_13:
    v44 = [*(v73 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_headline) contentURL];
    if (v44)
    {
      v45 = v44;
      sub_1D72584EC();

      v46 = sub_1D72585BC();
      (*(*(v46 - 8) + 56))(v22, 0, 1, v46);
    }

    else
    {
      v46 = sub_1D72585BC();
      (*(*(v46 - 8) + 56))(v22, 1, 1, v46);
    }

    sub_1D5EB8540(v22, v27);
    sub_1D72585BC();
    v48 = *(v46 - 8);
    if ((*(v48 + 48))(v27, 1, v46) != 1)
    {
      *(a2 + 24) = v46;
      v49 = __swift_allocate_boxed_opaque_existential_1(a2);
      (*(v48 + 32))(v49, v27, v46);

      return;
    }

    v41 = MEMORY[0x1E6968FB0];
    v42 = v27;
LABEL_19:
    sub_1D5B6EE3C(v42, &qword_1EDF45B40, v41);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v34 = sub_1D726207C();
  v36 = v35;
  v38 = a2;
  if (v34 == sub_1D726207C() && v36 == v37)
  {

LABEL_22:
    type metadata accessor for SharingHTMLBuilder();
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    *(v51 + 24) = 0xE000000000000000;
    swift_beginAccess();
    *(v51 + 16) = 0;
    *(v51 + 24) = 0xE000000000000000;
    v52 = sub_1D5EB775C(v51, v73);
    v54 = v53;

    if (v54)
    {
      *(a2 + 24) = MEMORY[0x1E69E6158];

      *a2 = v52;
      *(a2 + 8) = v54;
      return;
    }

    goto LABEL_36;
  }

  v50 = sub_1D72646CC();

  if (v50)
  {
    goto LABEL_22;
  }

  if (sub_1D726207C() == 0xD000000000000024 && 0x80000001D73C0450 == v55)
  {
    v57 = v72;
    v56 = v73;
    goto LABEL_28;
  }

  v58 = sub_1D72646CC();

  v57 = v72;
  v56 = v73;
  if (v58)
  {
    goto LABEL_30;
  }

  if (sub_1D726207C() == 0xD00000000000002ELL && 0x80000001D73C0480 == v66)
  {
LABEL_28:

LABEL_30:
    v59 = [*(v56 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_headline) contentURL];
    if (v59)
    {
      v60 = v59;
      sub_1D72584EC();

      v61 = sub_1D72585BC();
      (*(*(v61 - 8) + 56))(v16, 0, 1, v61);
    }

    else
    {
      v61 = sub_1D72585BC();
      (*(*(v61 - 8) + 56))(v16, 1, 1, v61);
    }

    sub_1D5EB8540(v16, v57);
    sub_1D72585BC();
    v62 = *(v61 - 8);
    if ((*(v62 + 48))(v57, 1, v61) == 1)
    {

      v63 = MEMORY[0x1E6968FB0];
      v64 = v57;
LABEL_35:
      sub_1D5B6EE3C(v64, &qword_1EDF45B40, v63);
LABEL_36:
      *v38 = 0u;
      *(v38 + 16) = 0u;
      return;
    }

    *(v38 + 24) = v61;
    v65 = __swift_allocate_boxed_opaque_existential_1(v38);
    (*(v62 + 32))(v65, v57, v61);
    goto LABEL_38;
  }

  v67 = sub_1D72646CC();

  if (v67)
  {
    goto LABEL_30;
  }

  sub_1D5EB84C0(v56 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_articleURL, v12);
  v68 = sub_1D72585BC();
  v69 = *(v68 - 8);
  if ((*(v69 + 48))(v12, 1, v68) == 1)
  {

    v63 = MEMORY[0x1E6968FB0];
    v64 = v12;
    goto LABEL_35;
  }

  *(v38 + 24) = v68;
  v70 = __swift_allocate_boxed_opaque_existential_1(v38);
  (*(v69 + 32))(v70, v12, v68);
LABEL_38:
}

LPLinkMetadata_optional __swiftcall SharingArticleURLActivityItemSource.activityViewControllerLinkMetadata(_:)(UIActivityViewController *a1)
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_linkPresentationSource))
  {
    sub_1D725B77C();
    v2 = [v5 linkMetadata];
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0;
  }

  v4 = v2;
  result.value.super.isa = v4;
  result.is_nil = v3;
  return result;
}

uint64_t sub_1D5EB775C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v103 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54350(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v105 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v99 - v13;
  v15 = type metadata accessor for SharingHTMLBuilder();
  v118 = v15;
  v119 = &off_1F51B62F0;
  v117[0] = a1;
  __swift_project_boxed_opaque_existential_1(v117, v15);
  v16 = off_1F51B6300[0];

  (v16)(v15, &off_1F51B62F0, v114);
  v17 = a2;
  v18 = OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_headline;
  v19 = [*(a2 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_headline) title];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1D726207C();
    v23 = v22;

    v24 = v115;
    v25 = v116;
    __swift_project_boxed_opaque_existential_1(v114, v115);
    (*(v25 + 24))(&v111, v21, v23, v24, v25);

    __swift_destroy_boxed_opaque_existential_1(v114);
    sub_1D5B63F14(&v111, v114);
    v26 = v115;
    v27 = v116;
    __swift_project_boxed_opaque_existential_1(v114, v115);
    (*(v27 + 16))(&v111, v26, v27);
    __swift_destroy_boxed_opaque_existential_1(v114);
    sub_1D5B63F14(&v111, v114);
  }

  v28 = [*(v17 + v18) shortExcerpt];
  if (v28)
  {
    v29 = v28;
    v30 = sub_1D726207C();
    v32 = v31;

    v33 = v115;
    v34 = v116;
    __swift_project_boxed_opaque_existential_1(v114, v115);
    (*(v34 + 56))(&v111, v30, v32, v33, v34);

    __swift_destroy_boxed_opaque_existential_1(v114);
    sub_1D5B63F14(&v111, v114);
  }

  sub_1D5EB84C0(v17 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_articleURL, v14);
  v35 = *(v5 + 48);
  v36 = v35(v14, 1, v4);
  v106 = v4;
  v104 = v5;
  if (v36 == 1)
  {
    sub_1D5B6EE3C(v14, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v100 = sub_1D72583DC();
    v101 = v37;
    (*(v5 + 8))(v14, v4);
    __swift_project_boxed_opaque_existential_1(v117, v118);
    DynamicType = swift_getDynamicType();
    v39 = v119;
    v108 = v17;
    v107 = v18;
    v40 = v119[1];
    v112 = DynamicType;
    v113 = v119;
    __swift_allocate_boxed_opaque_existential_1(&v111);
    v40(DynamicType, v39);
    v102 = v5 + 48;
    v41 = v112;
    v42 = v113;
    __swift_project_boxed_opaque_existential_1(&v111, v112);
    v43 = *(v108 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_mailShareLinkTextProvider + 24);
    v44 = *(v108 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_mailShareLinkTextProvider + 32);
    __swift_project_boxed_opaque_existential_1((v108 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_mailShareLinkTextProvider), v43);
    v45 = *(v44 + 8);
    v46 = swift_unknownObjectRetain();
    v47 = v45(v46, v43, v44);
    v49 = v48;
    swift_unknownObjectRelease();
    (v42[7])(v110, v47, v49, v41, v42);

    __swift_destroy_boxed_opaque_existential_1(&v111);
    sub_1D5B63F14(v110, &v111);
    v50 = v112;
    v51 = v113;
    __swift_project_boxed_opaque_existential_1(&v111, v112);
    (v51[6])(v110, v100, v101, v100, v101, v50, v51);

    __swift_destroy_boxed_opaque_existential_1(&v111);
    sub_1D5B63F14(v110, &v111);
    v52 = v115;
    v53 = v116;
    __swift_project_boxed_opaque_existential_1(v114, v115);
    sub_1D5B68374(&v111, v109);
    v54 = *(v53 + 32);
    v55 = v52;
    v17 = v108;
    v56 = v53;
    v18 = v107;
    v54(v110, v109, v55, v56);
    sub_1D5B6EE3C(v109, &qword_1EC884F40, sub_1D5EB8714);
    __swift_destroy_boxed_opaque_existential_1(v114);
    sub_1D5B63F14(v110, v114);
    __swift_destroy_boxed_opaque_existential_1(&v111);
  }

  v57 = [*(v17 + v18) articleID];
  if (v57)
  {

    if (*(v17 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_sourceChannelPublic) == 1)
    {
      v58 = v17;
      __swift_project_boxed_opaque_existential_1(v117, v118);
      v59 = swift_getDynamicType();
      v60 = v119;
      v61 = v119[1];
      v112 = v59;
      v113 = v119;
      __swift_allocate_boxed_opaque_existential_1(&v111);
      v61(v59, v60);
      v62 = v112;
      v63 = v113;
      __swift_project_boxed_opaque_existential_1(&v111, v112);
      (v63[2])(v110, v62, v63);
      __swift_destroy_boxed_opaque_existential_1(&v111);
      sub_1D5B63F14(v110, &v111);
      v64 = v112;
      v65 = v113;
      __swift_project_boxed_opaque_existential_1(&v111, v112);
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v67 = [objc_opt_self() bundleForClass_];
      v68 = sub_1D725811C();
      v70 = v69;

      (v65[7])(v110, v68, v70, v64, v65);

      __swift_destroy_boxed_opaque_existential_1(&v111);
      sub_1D5B63F14(v110, &v111);
      v71 = v112;
      v72 = v113;
      __swift_project_boxed_opaque_existential_1(&v111, v112);
      (v72[7])(v110, 32, 0xE100000000000000, v71, v72);
      __swift_destroy_boxed_opaque_existential_1(&v111);
      sub_1D5B63F14(v110, &v111);
      v73 = (v58 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_mailShareLinkTextProvider);
      v74 = *(v58 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_mailShareLinkTextProvider + 24);
      v75 = *(v58 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_mailShareLinkTextProvider + 32);
      __swift_project_boxed_opaque_existential_1((v58 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_mailShareLinkTextProvider), v74);
      v76 = v105;
      (*(v75 + 24))(v74, v75);
      v77 = v106;
      if (v35(v76, 1, v106) == 1)
      {
        sub_1D5B6EE3C(v76, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        v78 = v113;
        __swift_project_boxed_opaque_existential_1(&v111, v112);
        v79 = v73[3];
        v80 = v73[4];
        __swift_project_boxed_opaque_existential_1(v73, v79);
        v81 = (*(v80 + 16))(v79, v80);
        (v78[7])(v110, v81);
      }

      else
      {
        v82 = v104;
        v83 = v103;
        (*(v104 + 32))(v103, v76, v77);
        v84 = v112;
        v85 = v113;
        __swift_project_boxed_opaque_existential_1(&v111, v112);
        v86 = v73[3];
        v87 = v73[4];
        __swift_project_boxed_opaque_existential_1(v73, v86);
        v88 = (*(v87 + 16))(v86, v87);
        v90 = v89;
        v91 = sub_1D72583DC();
        (v85[6])(v110, v88, v90, v91, v92, v84, v85);

        (*(v82 + 8))(v83, v77);
      }

      __swift_destroy_boxed_opaque_existential_1(&v111);
      sub_1D5B63F14(v110, &v111);
      v93 = v115;
      v94 = v116;
      __swift_project_boxed_opaque_existential_1(v114, v115);
      sub_1D5B68374(&v111, v109);
      (*(v94 + 32))(v110, v109, v93, v94);
      sub_1D5B6EE3C(v109, &qword_1EC884F40, sub_1D5EB8714);
      __swift_destroy_boxed_opaque_existential_1(v114);
      sub_1D5B63F14(v110, v114);
      __swift_destroy_boxed_opaque_existential_1(&v111);
    }
  }

  v95 = v115;
  v96 = v116;
  __swift_project_boxed_opaque_existential_1(v114, v115);
  v97 = (*(v96 + 64))(v95, v96);
  __swift_destroy_boxed_opaque_existential_1(v114);
  __swift_destroy_boxed_opaque_existential_1(v117);
  return v97;
}

id sub_1D5EB823C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v21[3] = a6;
  v21[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a3, a6);
  *&a5[OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_headline] = a1;
  v16 = [swift_unknownObjectRetain() sourceChannel];
  if (v16)
  {
    v17 = [v16 isPublic];
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0;
  }

  sub_1D5EB84C0(a2, &a5[OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_articleURL]);
  sub_1D5B68374(v21, &a5[OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_mailShareLinkTextProvider]);
  a5[OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_sourceChannelPublic] = v17;
  *&a5[OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_linkPresentationSource] = a4;
  v20.receiver = a5;
  v20.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  sub_1D5B6EE3C(a2, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v18;
}

id sub_1D5EB83B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(v16);
  (*(v13 + 16))(v15, a3, a6);
  return sub_1D5EB823C(a1, a2, v15, a4, v17, a6, a7);
}

uint64_t sub_1D5EB84C0(uint64_t a1, uint64_t a2)
{
  sub_1D5B54350(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5EB8540(uint64_t a1, uint64_t a2)
{
  sub_1D5B54350(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SharingArticleURLActivityItemSource()
{
  result = qword_1EC8802F8;
  if (!qword_1EC8802F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5EB8614()
{
  sub_1D5B54350(319, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1D5EB8714()
{
  result = qword_1EC880310;
  if (!qword_1EC880310)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC880310);
  }

  return result;
}

uint64_t type metadata accessor for FormatSourceItemTipSource()
{
  result = qword_1EDF3A690;
  if (!qword_1EDF3A690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5EB87EC()
{
  result = sub_1D725FC7C();
  if (v1 <= 0x3F)
  {
    result = sub_1D725CE0C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t FormatVariableNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatVariableNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1D5EB8998(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
}

uint64_t FormatVariableNode.statements.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t FormatVariableNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6);
}

uint64_t FormatVariableNode.__allocating_init(identifier:statements:flex:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = swift_allocObject();
  v9 = *(a4 + 4);
  v10 = *(a4 + 5);
  swift_beginAccess();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  swift_beginAccess();
  *(v8 + 32) = a3;
  v11 = *a4;
  *(v8 + 56) = a4[1];
  *(v8 + 40) = v11;
  *(v8 + 72) = v9;
  *(v8 + 80) = v10;
  return v8;
}

uint64_t FormatVariableNode.init(identifier:statements:flex:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v9 = *(a4 + 4);
  v10 = *(a4 + 5);
  swift_beginAccess();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  *(v4 + 32) = a3;
  v11 = *a4;
  *(v4 + 56) = a4[1];
  *(v4 + 40) = v11;
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  return v4;
}

uint64_t FormatVariableNode.deinit()
{

  sub_1D5EB2398(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  return v0;
}

uint64_t FormatVariableNode.__deallocating_deinit()
{

  sub_1D5EB2398(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_1D5EB8C70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D6659D78(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D5EB8CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v25 = type metadata accessor for FormatOptionsNodeStatementContext();
  MEMORY[0x1EEE9AC00](v25, v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v10 = *(a3 + 32);

  v24 = *(v10 + 16);
  if (!v24)
  {
  }

  v12 = 0;
  v23[1] = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options;
  v13 = 32;
  while (v12 < *(v10 + 16))
  {
    v27[0] = *(v10 + v13);
    v14 = *(v10 + v13 + 16);
    v15 = *(v10 + v13 + 32);
    v16 = *(v10 + v13 + 64);
    v27[3] = *(v10 + v13 + 48);
    v27[4] = v16;
    v27[1] = v14;
    v27[2] = v15;
    v17 = *(v10 + v13 + 48);
    v26[7] = *(v10 + v13 + 32);
    v26[8] = v17;
    v26[9] = *(v10 + v13 + 64);
    v18 = *(v10 + v13 + 16);
    v26[5] = *(v10 + v13);
    v26[6] = v18;
    sub_1D5EB9920();
    v20 = *(v19 + 48);
    *v9 = a4;
    sub_1D5EB9994();
    (*(*(v21 - 8) + 16))(&v9[v20], v28, v21);
    swift_storeEnumTagMultiPayload();
    sub_1D5CF5D60(v27, v26);

    v22 = sub_1D6B49738(v9);
    sub_1D5EB9B0C(v9, type metadata accessor for FormatOptionsNodeStatementContext);
    if (v4)
    {

      return sub_1D5CF5E18(v27);
    }

    if (*(v22 + 16))
    {

      sub_1D5EDE10C(v22);
      sub_1D5CF5E18(v27);
    }

    else
    {
      sub_1D5CF5E18(v27);
    }

    ++v12;
    v13 += 80;
    if (v24 == v12)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5EB8F2C()
{
  sub_1D5EB99F0();
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = v3;
  *(v2 + 32) = 1;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 76) = -16384;
  *(v2 + 72) = 0;
  v9 = v2;
  sub_1D5EB9048(&v9, v0);
  v4 = v9;
  if (!v1)
  {
    swift_beginAccess();

    v6 = sub_1D60DFF0C(v5);

    if (v6)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v4;

      sub_1D6C4D24C(v7);
    }
  }
}

uint64_t sub_1D5EB9048(uint64_t *a1, void *a2)
{
  v3 = v2;
  v61 = type metadata accessor for FormatDerivedDataOption();
  MEMORY[0x1EEE9AC00](v61, v6);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v54 = &v52 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v56 = &v52 - v13;
  swift_beginAccess();
  v53 = a2;
  v14 = a2[4];
  v15 = *(v14 + 16);

  v60 = v15;
  if (v15)
  {
    v17 = 0;
    v18 = 32;
    v58 = a1;
    v59 = v14;
    v19 = v56;
    while (v17 < *(v14 + 16))
    {
      v66 = *(v14 + v18);
      v20 = *(v14 + v18 + 16);
      v21 = *(v14 + v18 + 32);
      v22 = *(v14 + v18 + 64);
      v69 = *(v14 + v18 + 48);
      v70 = v22;
      v67 = v20;
      v68 = v21;
      v64 = *(v14 + v18 + 16);
      v65[0] = *(v14 + v18 + 32);
      v65[1] = *(v14 + v18 + 48);
      v65[2] = *(v14 + v18 + 64);
      v63 = *(v14 + v18);
      sub_1D5CF5D60(&v66, v62);
      sub_1D5CF5D60(&v66, v62);
      sub_1D69DF8F4(&v63, v19);
      if (v3)
      {

        return sub_1D5CF5E18(&v66);
      }

      v71 = swift_allocBox();
      v24 = v23;
      sub_1D5EB9A4C(v19, v23);
      v25 = *a1;
      swift_beginAccess();
      v26 = *(v25 + 2);
      v27 = *(v26 + 16);
      if (v27 && *(v26 + 8 * v27 + 24) >> 60 == 1 && (v28 = swift_projectBox(), v57 = 0, v29 = a1, v30 = v54, sub_1D5EB9A4C(v28, v54), v31 = v55, sub_1D5EB9A4C(v24, v55), , v32 = sub_1D69E18D4(v30, v31), v33 = v31, v19 = v56, sub_1D5EB9B0C(v33, type metadata accessor for FormatDerivedDataOption), v34 = v30, a1 = v29, v3 = v57, sub_1D5EB9B0C(v34, type metadata accessor for FormatDerivedDataOption), , v32))
      {
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = *a1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D5EB99F0();
          v42 = swift_allocObject();
          swift_beginAccess();
          v43 = v36[2];
          v63 = v36[1];
          v64 = v43;
          v65[0] = v36[3];
          *(v65 + 14) = *(v36 + 62);
          memmove((v42 + 16), v36 + 1, 0x3EuLL);
          sub_1D5EB9AB0(&v63, v62);

          *a1 = v42;
          v36 = v42;
        }

        swift_beginAccess();
        v37 = *(v36 + 2);
        v38 = swift_isUniquelyReferenced_nonNull_native();
        *(v36 + 2) = v37;
        if ((v38 & 1) == 0)
        {
          v37 = sub_1D698F848(0, *(v37 + 2) + 1, 1, v37);
          *(v36 + 2) = v37;
        }

        v40 = *(v37 + 2);
        v39 = *(v37 + 3);
        if (v40 >= v39 >> 1)
        {
          v37 = sub_1D698F848((v39 > 1), v40 + 1, 1, v37);
        }

        v41 = v71 | 0x1000000000000000;
        *(v37 + 2) = v40 + 1;
        *&v37[8 * v40 + 32] = v41;
        *(v36 + 2) = v37;
        swift_endAccess();
        a1 = v58;
      }

      ++v17;
      sub_1D5CF5E18(&v66);
      result = sub_1D5EB9B0C(v19, type metadata accessor for FormatDerivedDataOption);
      v18 += 80;
      v14 = v59;
      if (v60 == v17)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    v44 = v53;
    v45 = v53[4];

    sub_1D6285540(a1, v45);

    if (!v3)
    {
      result = v44[5];
      if (result)
      {
        v47 = v44[9];
        v46 = v44[10];
        v49 = v44[7];
        v48 = v44[8];
        v50 = v44[6];
        *&v66 = v44[5];
        *(&v66 + 1) = v50;
        *&v67 = v49;
        *(&v67 + 1) = v48;
        *&v68 = v47;
        *(&v68 + 1) = v46;

        sub_1D5DEA234(v47);

        sub_1D626D2A0(a1);
        v51 = v68;

        sub_1D5CBF568(v51);
      }
    }
  }

  return result;
}

uint64_t FormatVariableNode.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v26 = a1;
  v23 = type metadata accessor for FormatOptionsNodeStatementContext();
  MEMORY[0x1EEE9AC00](v23, v6);
  v8 = (v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  v9 = *(v2 + 32);
  v10 = *(v9 + 16);
  v21[1] = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;

  v22 = v10;
  if (!v10)
  {
  }

  v12 = 0;
  v13 = 32;
  while (v12 < *(v9 + 16))
  {
    v25[0] = *(v9 + v13);
    v14 = *(v9 + v13 + 16);
    v15 = *(v9 + v13 + 32);
    v16 = *(v9 + v13 + 64);
    v25[3] = *(v9 + v13 + 48);
    v25[4] = v16;
    v25[1] = v14;
    v25[2] = v15;
    v17 = *(v9 + v13 + 48);
    v24[7] = *(v9 + v13 + 32);
    v24[8] = v17;
    v24[9] = *(v9 + v13 + 64);
    v18 = *(v9 + v13 + 16);
    v24[5] = *(v9 + v13);
    v24[6] = v18;
    v19 = v26;
    *v8 = a2;
    v8[1] = v19;
    swift_storeEnumTagMultiPayload();
    sub_1D5CF5D60(v25, v24);

    v20 = sub_1D6B49738(v8);
    sub_1D5EB9B0C(v8, type metadata accessor for FormatOptionsNodeStatementContext);
    if (v4)
    {

      return sub_1D5CF5E18(v25);
    }

    if (*(v20 + 16))
    {

      sub_1D5EDE10C(v20);
      sub_1D5CF5E18(v25);
    }

    else
    {
      sub_1D5CF5E18(v25);
    }

    ++v12;
    v13 += 80;
    if (v22 == v12)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5EB9758(uint64_t a1)
{
  result = sub_1D5EB9890(&qword_1EC880320);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5EB97C0(void *a1)
{
  a1[1] = sub_1D5EB9890(&qword_1EDF10158);
  a1[2] = sub_1D5EB9890(&qword_1EDF10160);
  result = sub_1D5EB9890(&qword_1EC880328);
  a1[3] = result;
  return result;
}

uint64_t sub_1D5EB984C(uint64_t a1)
{
  result = sub_1D5EB9890(&qword_1EC880330);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5EB9890(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatVariableNode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5EB9920()
{
  if (!qword_1EDF2F470)
  {
    type metadata accessor for FormatNodeContext();
    sub_1D5EB9994();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF2F470);
    }
  }
}

void sub_1D5EB9994()
{
  if (!qword_1EDF3BEE0)
  {
    sub_1D5EB5218();
    v0 = sub_1D725A57C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BEE0);
    }
  }
}

void sub_1D5EB99F0()
{
  if (!qword_1EC880338)
  {
    v0 = sub_1D7263E4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC880338);
    }
  }
}

uint64_t sub_1D5EB9A4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatDerivedDataOption();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5EB9B0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatDataLayoutAttributes.identifier.getter()
{
  v0 = sub_1D5EBC238();

  return v0;
}

uint64_t FormatDataLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t FormatDataLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t *FormatDataLayoutAttributes.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 136));

  return v0;
}

uint64_t FormatDataLayoutAttributes.__deallocating_deinit()
{
  FormatDataLayoutAttributes.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D5EB9DF8()
{
  v0 = sub_1D5EBC238();

  return v0;
}

void *sub_1D5EB9E34(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v47 = a2;
  v43 = type metadata accessor for FormatVideoPlayerData();
  MEMORY[0x1EEE9AC00](v43, v3);
  v44 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v2 + 96);
  v6 = *(v5 + 16);
  if (!v6)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_44:
    if (!v8[2])
    {

      return 0;
    }

    return v8;
  }

  v7 = (v5 + 32);
  v8 = MEMORY[0x1E69E7CC0];
  v42 = xmmword_1D7273AE0;
  while (1)
  {
    v11 = *v7++;
    v10 = v11;
    v12 = (v11 >> 59) & 0x1E | (v11 >> 2) & 1;
    if (v12 <= 4)
    {
      if (v12 > 2)
      {
        v45 = v8;
        if (v12 == 3)
        {
          sub_1D5EBC39C(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
          v26 = swift_projectBox() + *(v25 + 48);
          v27 = *(v26 + 16);
          v28 = *(v26 + 24);

          sub_1D5EBC314(v27, v28);

          v20 = sub_1D5EB9E34(v46, v47);

          v29 = v27;
          v30 = v28;
        }

        else
        {
          v31 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
          v32 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x28);

          v33 = v31;
          sub_1D5EBC314(v31, v32);

          v20 = sub_1D5EB9E34(v46, v47);

          v29 = v33;
          v30 = v32;
        }

        result = sub_1D5EBC358(v29, v30);
        v8 = v45;
        if (!v20)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if ((v12 - 1) < 2)
        {
          goto LABEL_5;
        }

        v21 = *(v10 + 16);
        v22 = *(v10 + 24);
        if (v21 >> 61 == 5)
        {
          v23 = v21 & 0x1FFFFFFFFFFFFFFFLL;
          v24 = *(v23 + 24);
          v48 = *(v23 + 16);
        }

        else
        {
          v48 = *(v10 + 16);
          v24 = *(v22 + 96);
        }

        sub_1D7147F08(v46, v47, &v48, v24, &v49);
        if (!v50)
        {
          sub_1D5C1661C(&v49);
          goto LABEL_4;
        }

        sub_1D5B63F14(&v49, v51);
        sub_1D5C16764(0, &qword_1EDF19AD0, MEMORY[0x1E69E6F90]);
        v20 = swift_allocObject();
        *(v20 + 16) = v42;
        result = sub_1D5B63F14(v51, v20 + 32);
      }
    }

    else
    {
      if (v12 > 0x12)
      {
        goto LABEL_53;
      }

      if (((1 << v12) & 0x6BF80) != 0)
      {
        goto LABEL_5;
      }

      if (v12 == 14)
      {
        sub_1D5EBC39C(0, &qword_1EC880340, type metadata accessor for FormatVideoPlayerData, &qword_1EC880348, type metadata accessor for FormatVideoPlayerNodeLayoutAttributes);
        v14 = v13;
        v15 = swift_projectBox();
        v16 = (v15 + *(v14 + 48));
        v17 = v16[2];
        v18 = v16[3];
        v45 = v16[4];
        v19 = v44;
        sub_1D5EBC2B0(v15, v44);
        *&v51[0] = *(v19 + *(v43 + 40));

        sub_1D5EBC314(v17, v18);

        v20 = sub_1D6F05BC0(v46, v47, v51);

        sub_1D5EBC358(v17, v18);

        result = sub_1D5EBC654(v44, type metadata accessor for FormatVideoPlayerData);
        goto LABEL_29;
      }

      if (v12 == 16)
      {
        sub_1D5EBC240();
        swift_projectBox();

        v20 = sub_1D5EB9E34(v46, v47);

        if (!v20)
        {
          goto LABEL_4;
        }
      }

      else
      {
LABEL_53:
        if (v12 == 5)
        {
          goto LABEL_5;
        }

        result = FormatStateViewNodeDataLayoutAttributes.formatImageRequests(options:inventory:)(v46, v47);
        v20 = result;
        if (!result)
        {
          goto LABEL_4;
        }
      }
    }

LABEL_29:
    v34 = *(v20 + 16);
    v35 = v8[2];
    v36 = v35 + v34;
    if (__OFADD__(v35, v34))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v37 = v8[3] >> 1, v37 >= v36))
    {
      if (!*(v20 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v35 <= v36)
      {
        v38 = v35 + v34;
      }

      else
      {
        v38 = v35;
      }

      result = sub_1D698F994(result, v38, 1, v8);
      v8 = result;
      v37 = result[3] >> 1;
      if (!*(v20 + 16))
      {
LABEL_3:

        if (v34)
        {
          goto LABEL_48;
        }

        goto LABEL_4;
      }
    }

    if (v37 - v8[2] < v34)
    {
      goto LABEL_49;
    }

    sub_1D5B49474(0, &qword_1EDF3B4D8);
    swift_arrayInitWithCopy();

    if (v34)
    {
      v39 = v8[2];
      v40 = __OFADD__(v39, v34);
      v41 = v39 + v34;
      if (v40)
      {
        goto LABEL_50;
      }

      v8[2] = v41;
    }

LABEL_4:

LABEL_5:
    if (!--v6)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

void *sub_1D5EBA458(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v47 = a2;
  v43 = type metadata accessor for FormatVideoPlayerData();
  MEMORY[0x1EEE9AC00](v43, v3);
  v44 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v2 + 96);
  v6 = *(v5 + 16);
  if (!v6)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_44:
    if (!v8[2])
    {

      return 0;
    }

    return v8;
  }

  v7 = (v5 + 32);
  v8 = MEMORY[0x1E69E7CC0];
  v42 = xmmword_1D7273AE0;
  while (1)
  {
    v11 = *v7++;
    v10 = v11;
    v12 = (v11 >> 59) & 0x1E | (v11 >> 2) & 1;
    if (v12 <= 4)
    {
      if (v12 > 2)
      {
        v45 = v8;
        if (v12 == 3)
        {
          sub_1D5EBC39C(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
          v26 = swift_projectBox() + *(v25 + 48);
          v27 = *(v26 + 16);
          v28 = *(v26 + 24);

          sub_1D5EBC314(v27, v28);

          v20 = sub_1D5EB9E34(v46, v47);

          v29 = v27;
          v30 = v28;
        }

        else
        {
          v31 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
          v32 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x28);

          v33 = v31;
          sub_1D5EBC314(v31, v32);

          v20 = sub_1D5EB9E34(v46, v47);

          v29 = v33;
          v30 = v32;
        }

        result = sub_1D5EBC358(v29, v30);
        v8 = v45;
        if (!v20)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if ((v12 - 1) < 2)
        {
          goto LABEL_5;
        }

        v21 = *(v10 + 16);
        v22 = *(v10 + 24);
        if (v21 >> 61 == 5)
        {
          v23 = v21 & 0x1FFFFFFFFFFFFFFFLL;
          v24 = *(v23 + 24);
          v48 = *(v23 + 16);
        }

        else
        {
          v48 = *(v10 + 16);
          v24 = *(v22 + 96);
        }

        sub_1D7147F08(v46, v47, &v48, v24, &v49);
        if (!v50)
        {
          sub_1D5C1661C(&v49);
          goto LABEL_4;
        }

        sub_1D5B63F14(&v49, v51);
        sub_1D5C16764(0, &qword_1EDF19AD0, MEMORY[0x1E69E6F90]);
        v20 = swift_allocObject();
        *(v20 + 16) = v42;
        result = sub_1D5B63F14(v51, v20 + 32);
      }
    }

    else
    {
      if (v12 > 0x12)
      {
        goto LABEL_53;
      }

      if (((1 << v12) & 0x6BF80) != 0)
      {
        goto LABEL_5;
      }

      if (v12 == 14)
      {
        sub_1D5EBC39C(0, &qword_1EC880340, type metadata accessor for FormatVideoPlayerData, &qword_1EC880348, type metadata accessor for FormatVideoPlayerNodeLayoutAttributes);
        v14 = v13;
        v15 = swift_projectBox();
        v16 = (v15 + *(v14 + 48));
        v17 = v16[2];
        v18 = v16[3];
        v45 = v16[4];
        v19 = v44;
        sub_1D5EBC2B0(v15, v44);
        *&v51[0] = *(v19 + *(v43 + 40));

        sub_1D5EBC314(v17, v18);

        v20 = sub_1D6F05BC0(v46, v47, v51);

        sub_1D5EBC358(v17, v18);
        sub_1D5EBC654(v44, type metadata accessor for FormatVideoPlayerData);

        goto LABEL_29;
      }

      if (v12 == 16)
      {
        sub_1D5EBC240();
        swift_projectBox();

        v20 = sub_1D5EB9E34(v46, v47);

        if (!v20)
        {
          goto LABEL_4;
        }
      }

      else
      {
LABEL_53:
        if (v12 == 5)
        {
          goto LABEL_5;
        }

        result = FormatStateViewNodeDataLayoutAttributes.formatImageRequests(options:inventory:)(v46, v47);
        v20 = result;
        if (!result)
        {
          goto LABEL_4;
        }
      }
    }

LABEL_29:
    v34 = *(v20 + 16);
    v35 = v8[2];
    v36 = v35 + v34;
    if (__OFADD__(v35, v34))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v37 = v8[3] >> 1, v37 >= v36))
    {
      if (!*(v20 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v35 <= v36)
      {
        v38 = v35 + v34;
      }

      else
      {
        v38 = v35;
      }

      result = sub_1D698F994(result, v38, 1, v8);
      v8 = result;
      v37 = result[3] >> 1;
      if (!*(v20 + 16))
      {
LABEL_3:

        if (v34)
        {
          goto LABEL_48;
        }

        goto LABEL_4;
      }
    }

    if (v37 - v8[2] < v34)
    {
      goto LABEL_49;
    }

    sub_1D5B49474(0, &qword_1EDF3B4D8);
    swift_arrayInitWithCopy();

    if (v34)
    {
      v39 = v8[2];
      v40 = __OFADD__(v39, v34);
      v41 = v39 + v34;
      if (v40)
      {
        goto LABEL_50;
      }

      v8[2] = v41;
    }

LABEL_4:

LABEL_5:
    if (!--v6)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

void *FormatDataLayoutAttributes.formatImageRequests(options:inventory:)(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v47 = a2;
  v43 = type metadata accessor for FormatVideoPlayerData();
  MEMORY[0x1EEE9AC00](v43, v3);
  v44 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v2 + 96);
  v6 = *(v5 + 16);
  if (!v6)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_44:
    if (!v8[2])
    {

      return 0;
    }

    return v8;
  }

  v7 = (v5 + 32);
  v8 = MEMORY[0x1E69E7CC0];
  v42 = xmmword_1D7273AE0;
  while (1)
  {
    v11 = *v7++;
    v10 = v11;
    v12 = (v11 >> 59) & 0x1E | (v11 >> 2) & 1;
    if (v12 <= 4)
    {
      if (v12 > 2)
      {
        v45 = v8;
        if (v12 == 3)
        {
          sub_1D5EBC39C(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
          v26 = swift_projectBox() + *(v25 + 48);
          v27 = *(v26 + 16);
          v28 = *(v26 + 24);

          sub_1D5EBC314(v27, v28);

          v20 = sub_1D5EB9E34(v46, v47);

          v29 = v27;
          v30 = v28;
        }

        else
        {
          v31 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
          v32 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x28);

          v33 = v31;
          sub_1D5EBC314(v31, v32);

          v20 = sub_1D5EB9E34(v46, v47);

          v29 = v33;
          v30 = v32;
        }

        result = sub_1D5EBC358(v29, v30);
        v8 = v45;
        if (!v20)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if ((v12 - 1) < 2)
        {
          goto LABEL_5;
        }

        v21 = *(v10 + 16);
        v22 = *(v10 + 24);
        if (v21 >> 61 == 5)
        {
          v23 = v21 & 0x1FFFFFFFFFFFFFFFLL;
          v24 = *(v23 + 24);
          v48 = *(v23 + 16);
        }

        else
        {
          v48 = *(v10 + 16);
          v24 = *(v22 + 96);
        }

        sub_1D7147F08(v46, v47, &v48, v24, &v49);
        if (!v50)
        {
          sub_1D5C1661C(&v49);
          goto LABEL_4;
        }

        sub_1D5B63F14(&v49, v51);
        sub_1D5C16764(0, &qword_1EDF19AD0, MEMORY[0x1E69E6F90]);
        v20 = swift_allocObject();
        *(v20 + 16) = v42;
        result = sub_1D5B63F14(v51, v20 + 32);
      }
    }

    else
    {
      if (v12 > 0x12)
      {
        goto LABEL_53;
      }

      if (((1 << v12) & 0x6BF80) != 0)
      {
        goto LABEL_5;
      }

      if (v12 == 14)
      {
        sub_1D5EBC39C(0, &qword_1EC880340, type metadata accessor for FormatVideoPlayerData, &qword_1EC880348, type metadata accessor for FormatVideoPlayerNodeLayoutAttributes);
        v14 = v13;
        v15 = swift_projectBox();
        v16 = (v15 + *(v14 + 48));
        v17 = v16[2];
        v18 = v16[3];
        v45 = v16[4];
        v19 = v44;
        sub_1D5EBC2B0(v15, v44);
        *&v51[0] = *(v19 + *(v43 + 40));

        sub_1D5EBC314(v17, v18);

        v20 = sub_1D6F05BC0(v46, v47, v51);

        sub_1D5EBC358(v17, v18);
        sub_1D5EBC654(v44, type metadata accessor for FormatVideoPlayerData);

        goto LABEL_29;
      }

      if (v12 == 16)
      {
        sub_1D5EBC240();
        swift_projectBox();

        v20 = sub_1D5EB9E34(v46, v47);

        if (!v20)
        {
          goto LABEL_4;
        }
      }

      else
      {
LABEL_53:
        if (v12 == 5)
        {
          goto LABEL_5;
        }

        result = FormatStateViewNodeDataLayoutAttributes.formatImageRequests(options:inventory:)(v46, v47);
        v20 = result;
        if (!result)
        {
          goto LABEL_4;
        }
      }
    }

LABEL_29:
    v34 = *(v20 + 16);
    v35 = v8[2];
    v36 = v35 + v34;
    if (__OFADD__(v35, v34))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v37 = v8[3] >> 1, v37 >= v36))
    {
      if (!*(v20 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v35 <= v36)
      {
        v38 = v35 + v34;
      }

      else
      {
        v38 = v35;
      }

      result = sub_1D698F994(result, v38, 1, v8);
      v8 = result;
      v37 = result[3] >> 1;
      if (!*(v20 + 16))
      {
LABEL_3:

        if (v34)
        {
          goto LABEL_48;
        }

        goto LABEL_4;
      }
    }

    if (v37 - v8[2] < v34)
    {
      goto LABEL_49;
    }

    sub_1D5B49474(0, &qword_1EDF3B4D8);
    swift_arrayInitWithCopy();

    if (v34)
    {
      v39 = v8[2];
      v40 = __OFADD__(v39, v34);
      v41 = v39 + v34;
      if (v40)
      {
        goto LABEL_50;
      }

      v8[2] = v41;
    }

LABEL_4:

LABEL_5:
    if (!--v6)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

void *sub_1D5EBB0A0(double *a1, uint64_t a2)
{
  v3 = *(v2 + 96);
  v4 = *(v3 + 16);
  if (!v4)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_48:
    if (!v5[2])
    {

      return 0;
    }

    return v5;
  }

  v5 = MEMORY[0x1E69E7CC0];
  v6 = (v3 + 32);
  while (1)
  {
    v9 = *v6++;
    v8 = v9;
    v10 = (v9 >> 59) & 0x1E | (v9 >> 2) & 1;
    if (v10 <= 4)
    {
      if (v10 < 3)
      {
        goto LABEL_5;
      }

      if (v10 == 3)
      {
        sub_1D5EBC39C(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
        v19 = swift_projectBox() + *(v18 + 48);
        v20 = *(v19 + 16);
        v21 = *(v19 + 24);

        sub_1D5EBC314(v20, v21);

        v24 = sub_1D5EBB0A0(a1, a2);

        v25 = v20;
        v26 = v21;
      }

      else
      {
        v22 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v23 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x28);

        sub_1D5EBC314(v22, v23);

        v24 = sub_1D5EBB0A0(a1, a2);

        v25 = v22;
        v26 = v23;
      }

      result = sub_1D5EBC358(v25, v26);
      if (!v24)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v10 > 0x12)
      {
        goto LABEL_57;
      }

      if (((1 << v10) & 0x6EF80) != 0)
      {
        goto LABEL_5;
      }

      if (v10 == 12)
      {
        v12 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v11 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
        v13 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        *(v49 + 9) = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x39);
        v47 = v13;
        v48 = v12;
        v49[0] = v11;
        v14 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
        v15 = v13;
        if (BYTE8(v49[1]))
        {
          if (BYTE8(v49[1]) != 1)
          {
            goto LABEL_5;
          }

          v16 = *&v49[1];
          v17 = *&v49[0];

          sub_1D5EBC4A0(&v47, v46);

          v15 = v17;
        }

        else
        {
          v16 = v48;

          sub_1D5EBC4A0(&v47, v46);
        }

        sub_1D5C16764(0, &qword_1EDF19AD0, MEMORY[0x1E69E6F90]);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1D7273AE0;
        v27 = *(v14 + 192);
        v28 = *(v14 + 200);
        v29 = *a1;
        v30 = v16;
        sub_1D726327C();
        if (v27 > 0.0)
        {
          v33 = *&v27;
        }

        else
        {
          v33 = 0;
        }

        if (v27 > 0.0)
        {
          v34 = v28;
        }

        else
        {
          v34 = 0;
        }

        v35 = sub_1D5EBBF10(v30, v33, v34, v27 <= 0.0, v31, v32, v29);

        *(v24 + 56) = type metadata accessor for IssueCoverImageProcessorRequest();
        result = sub_1D5EBC60C(&qword_1EDF093A8, type metadata accessor for IssueCoverImageProcessorRequest);
        *(v24 + 64) = result;
        *(v24 + 32) = v35;
        goto LABEL_33;
      }

      if (v10 == 16)
      {
        sub_1D5EBC240();
        swift_projectBox();

        v24 = sub_1D5EBB0A0(a1, a2);

        if (!v24)
        {
          goto LABEL_4;
        }
      }

      else
      {
LABEL_57:
        if (v10 == 5)
        {
          goto LABEL_5;
        }

        result = FormatStateViewNodeDataLayoutAttributes.issueCoverImageRequests(options:inventory:)(a1, a2);
        v24 = result;
        if (!result)
        {
          goto LABEL_4;
        }
      }
    }

LABEL_33:
    v36 = *(v24 + 16);
    v37 = v5[2];
    v38 = v37 + v36;
    if (__OFADD__(v37, v36))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v39 = v5[3] >> 1, v39 >= v38))
    {
      if (!*(v24 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v37 <= v38)
      {
        v40 = v37 + v36;
      }

      else
      {
        v40 = v37;
      }

      result = sub_1D698F994(result, v40, 1, v5);
      v5 = result;
      v39 = result[3] >> 1;
      if (!*(v24 + 16))
      {
LABEL_3:

        if (v36)
        {
          goto LABEL_52;
        }

        goto LABEL_4;
      }
    }

    if (v39 - v5[2] < v36)
    {
      goto LABEL_53;
    }

    sub_1D5B49474(0, &qword_1EDF3B4D8);
    swift_arrayInitWithCopy();

    if (v36)
    {
      v41 = v5[2];
      v42 = __OFADD__(v41, v36);
      v43 = v41 + v36;
      if (v42)
      {
        goto LABEL_54;
      }

      v5[2] = v43;
    }

LABEL_4:

LABEL_5:
    if (!--v4)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

void *FormatDataLayoutAttributes.issueCoverImageRequests(options:inventory:)(double *a1, uint64_t a2)
{
  v3 = *(v2 + 96);
  v4 = *(v3 + 16);
  if (!v4)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_48:
    if (!v5[2])
    {

      return 0;
    }

    return v5;
  }

  v5 = MEMORY[0x1E69E7CC0];
  v6 = (v3 + 32);
  while (1)
  {
    v9 = *v6++;
    v8 = v9;
    v10 = (v9 >> 59) & 0x1E | (v9 >> 2) & 1;
    if (v10 <= 4)
    {
      if (v10 < 3)
      {
        goto LABEL_5;
      }

      if (v10 == 3)
      {
        sub_1D5EBC39C(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
        v19 = swift_projectBox() + *(v18 + 48);
        v20 = *(v19 + 16);
        v21 = *(v19 + 24);

        sub_1D5EBC314(v20, v21);

        v24 = sub_1D5EBB0A0(a1, a2);

        v25 = v20;
        v26 = v21;
      }

      else
      {
        v22 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v23 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x28);

        sub_1D5EBC314(v22, v23);

        v24 = sub_1D5EBB0A0(a1, a2);

        v25 = v22;
        v26 = v23;
      }

      result = sub_1D5EBC358(v25, v26);
      if (!v24)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v10 > 0x12)
      {
        goto LABEL_57;
      }

      if (((1 << v10) & 0x6EF80) != 0)
      {
        goto LABEL_5;
      }

      if (v10 == 12)
      {
        v12 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v11 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
        v13 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        *(v49 + 9) = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x39);
        v47 = v13;
        v48 = v12;
        v49[0] = v11;
        v14 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
        v15 = v13;
        if (BYTE8(v49[1]))
        {
          if (BYTE8(v49[1]) != 1)
          {
            goto LABEL_5;
          }

          v16 = *&v49[1];
          v17 = *&v49[0];

          sub_1D5EBC4A0(&v47, v46);

          v15 = v17;
        }

        else
        {
          v16 = v48;

          sub_1D5EBC4A0(&v47, v46);
        }

        sub_1D5C16764(0, &qword_1EDF19AD0, MEMORY[0x1E69E6F90]);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1D7273AE0;
        v27 = *(v14 + 192);
        v28 = *(v14 + 200);
        v29 = *a1;
        v30 = v16;
        sub_1D726327C();
        if (v27 > 0.0)
        {
          v33 = *&v27;
        }

        else
        {
          v33 = 0;
        }

        if (v27 > 0.0)
        {
          v34 = v28;
        }

        else
        {
          v34 = 0;
        }

        v35 = sub_1D5EBBF10(v30, v33, v34, v27 <= 0.0, v31, v32, v29);

        *(v24 + 56) = type metadata accessor for IssueCoverImageProcessorRequest();
        result = sub_1D5EBC60C(&qword_1EDF093A8, type metadata accessor for IssueCoverImageProcessorRequest);
        *(v24 + 64) = result;
        *(v24 + 32) = v35;
        goto LABEL_33;
      }

      if (v10 == 16)
      {
        sub_1D5EBC240();
        swift_projectBox();

        v24 = sub_1D5EBB0A0(a1, a2);

        if (!v24)
        {
          goto LABEL_4;
        }
      }

      else
      {
LABEL_57:
        if (v10 == 5)
        {
          goto LABEL_5;
        }

        result = FormatStateViewNodeDataLayoutAttributes.issueCoverImageRequests(options:inventory:)(a1, a2);
        v24 = result;
        if (!result)
        {
          goto LABEL_4;
        }
      }
    }

LABEL_33:
    v36 = *(v24 + 16);
    v37 = v5[2];
    v38 = v37 + v36;
    if (__OFADD__(v37, v36))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v39 = v5[3] >> 1, v39 >= v38))
    {
      if (!*(v24 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v37 <= v38)
      {
        v40 = v37 + v36;
      }

      else
      {
        v40 = v37;
      }

      result = sub_1D698F994(result, v40, 1, v5);
      v5 = result;
      v39 = result[3] >> 1;
      if (!*(v24 + 16))
      {
LABEL_3:

        if (v36)
        {
          goto LABEL_52;
        }

        goto LABEL_4;
      }
    }

    if (v39 - v5[2] < v36)
    {
      goto LABEL_53;
    }

    sub_1D5B49474(0, &qword_1EDF3B4D8);
    swift_arrayInitWithCopy();

    if (v36)
    {
      v41 = v5[2];
      v42 = __OFADD__(v41, v36);
      v43 = v41 + v36;
      if (v42)
      {
        goto LABEL_54;
      }

      v5[2] = v43;
    }

LABEL_4:

LABEL_5:
    if (!--v4)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

void sub_1D5EBBBE0()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v5 = *(v1 + 32 + 8 * v3);
      v6 = (v5 >> 59) & 0x1E | (v5 >> 2) & 1;
      if (v6 <= 15)
      {
        break;
      }

      if (v6 != 16)
      {
        if (v6 != 17)
        {
          goto LABEL_7;
        }

        v7 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        if ((*(v7 + 209) & 1) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }

      sub_1D5EBC240();
      swift_projectBox();

      v9 = sub_1D5EBBBE0(v8);

      if (v9)
      {
        return;
      }

LABEL_7:
      if (v2 == ++v3)
      {
        return;
      }
    }

    if ((v6 - 6) < 0xA || v6 < 5)
    {
      goto LABEL_7;
    }

    v7 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    if ((*(v7 + 161) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    swift_beginAccess();
    if (CGRectGetHeight(*(v7 + 64)) <= 1.0)
    {
      return;
    }

    goto LABEL_7;
  }
}

void FormatDataLayoutAttributes.isResizing.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v5 = *(v1 + 32 + 8 * v3);
      v6 = (v5 >> 59) & 0x1E | (v5 >> 2) & 1;
      if (v6 <= 15)
      {
        break;
      }

      if (v6 != 16)
      {
        if (v6 != 17)
        {
          goto LABEL_7;
        }

        v7 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        if ((*(v7 + 209) & 1) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }

      sub_1D5EBC240();
      swift_projectBox();

      sub_1D5EBBBE0();
      v9 = v8;

      if (v9)
      {
        return;
      }

LABEL_7:
      if (v2 == ++v3)
      {
        return;
      }
    }

    if ((v6 - 6) < 0xA || v6 < 5)
    {
      goto LABEL_7;
    }

    v7 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    if ((*(v7 + 161) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    swift_beginAccess();
    if (CGRectGetHeight(*(v7 + 64)) <= 1.0)
    {
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_1D5EBBF10(void *a1, uint64_t a2, uint64_t a3, char a4, double a5, double a6, double a7)
{
  v14 = a4 & 1;
  type metadata accessor for IssueCoverImageProcessorRequest();
  v15 = swift_allocObject();
  v29[3] = sub_1D5C169F4();
  v29[4] = sub_1D5EBC60C(qword_1EDF1AB60, sub_1D5C169F4);
  v29[0] = a1;
  sub_1D5EBC43C(0, &qword_1EDF19590, sub_1D5C16B18, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = 0x616D497265766F63;
  *(inited + 40) = 0xEA00000000006567;
  sub_1D5B68374(v29, inited + 48);
  v17 = a1;
  v18 = sub_1D5BFFC64(inited);
  swift_setDeallocating();
  sub_1D5EBC654(inited + 32, sub_1D5C16B18);
  *(v15 + 80) = v18;
  sub_1D5B68374(v29, v15 + 88);
  *(v15 + 32) = a5;
  *(v15 + 40) = a6;
  *(v15 + 48) = a7;
  *(v15 + 56) = a2;
  *(v15 + 64) = a3;
  *(v15 + 72) = v14;
  v19 = [v17 uniqueKey];
  v20 = sub_1D726207C();
  v22 = v21;

  MEMORY[0x1DA6F9910](v20, v22);

  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  type metadata accessor for CGSize(0);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  v23 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v23);

  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  if (a4)
  {
    v24 = 0xE600000000000000;
    v25 = 0x657261757173;
  }

  else
  {
    v26 = sub_1D7262A9C();
    MEMORY[0x1DA6F9910](v26);

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    v27 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v27);

    v25 = 0x3A3A646E756F72;
    v24 = 0xE700000000000000;
  }

  MEMORY[0x1DA6F9910](v25, v24);

  *(v15 + 16) = 0;
  *(v15 + 24) = 0xE000000000000000;
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v15;
}

void sub_1D5EBC240()
{
  if (!qword_1EDF10430)
  {
    type metadata accessor for FormatItemNodeData();
    type metadata accessor for FormatItemNodeDataLayoutAttributes();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF10430);
    }
  }
}

uint64_t sub_1D5EBC2B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVideoPlayerData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5EBC314(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D5EBC358(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1D5EBC39C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D5EBC43C(255, a4, a5, type metadata accessor for FormatAnimationNodeDataLayoutAttributes);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D5EBC43C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5EBC4FC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D5EBC60C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5EBC654(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void FormatWeatherBinding.Image.image(from:context:imageContext:)(void *a1@<X1>, uint64_t *a2@<X8>)
{
  type metadata accessor for FeedWeather(0);
  sub_1D7261C9C();
  sub_1D5C0B9F0();
  v4 = sub_1D726265C();

  v5 = [objc_opt_self() configurationWithPaletteColors_];

  v6 = sub_1D693A514(a1);
  if (!v2)
  {
    v7 = v6;
    v8 = [v5 configurationByApplyingConfiguration_];

    sub_1D7261C8C();
    v5 = v8;
    v9 = sub_1D726203C();

    v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v5];

    if (v10)
    {
      v11 = [v10 imageWithRenderingMode_];

      if (v11)
      {

        v12 = swift_allocObject();
        *(v12 + 16) = v11;
        *a2 = v12;
        return;
      }
    }

    type metadata accessor for FormatLayoutError();
    sub_1D5D285FC();
    swift_allocError();
    v14 = v13;
    *v13 = sub_1D7261C8C();
    v14[1] = v15;
    v14[2] = v8;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t static FormatWeatherBinding.Image.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v7 = *a1;
  v8 = v2;
  v5 = *a2;
  v6 = v3;
  return _s8NewsFeed18FormatSymbolConfigO2eeoiySbAC_ACtFZ_0(&v7, &v5) & 1;
}

uint64_t sub_1D5EBC96C(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v7 = *a1;
  v8 = v2;
  v5 = *a2;
  v6 = v3;
  return _s8NewsFeed18FormatSymbolConfigO2eeoiySbAC_ACtFZ_0(&v7, &v5) & 1;
}

unint64_t sub_1D5EBC9B8(uint64_t a1)
{
  result = sub_1D5EBC9E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5EBC9E0()
{
  result = qword_1EC880350;
  if (!qword_1EC880350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880350);
  }

  return result;
}

unint64_t sub_1D5EBCA34(void *a1)
{
  a1[1] = sub_1D5EBCA6C();
  a1[2] = sub_1D5EBCAC0();
  result = sub_1D5EBCB14();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5EBCA6C()
{
  result = qword_1EDF0EA80;
  if (!qword_1EDF0EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EA80);
  }

  return result;
}

unint64_t sub_1D5EBCAC0()
{
  result = qword_1EDF0EA88;
  if (!qword_1EDF0EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EA88);
  }

  return result;
}

unint64_t sub_1D5EBCB14()
{
  result = qword_1EC880358;
  if (!qword_1EC880358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880358);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D5EBCB98()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D5EBCC10(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_1D5EBCD14(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t BundleSubscriptionDetectionProvider.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1D726203C();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = sub_1D725891C();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_1D5EBD03C(v11);
    v8 = sub_1D725891C();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_1D5EBD03C(uint64_t a1)
{
  sub_1D5BE1404();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5EBD098(uint64_t a1)
{
  sub_1D5B7B2CC(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v7 - v4;
  sub_1D5B76E3C(a1, &v7 - v4);
  return _s8NewsFeed35BundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v5);
}

void (*BundleSubscriptionDetectionProvider.timestamp.modify(void *a1))(uint64_t a1, char a2)
{
  sub_1D5B7B2CC(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  v3 = *(*(v2 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    *a1 = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v4 = malloc(v3);
  }

  a1[1] = v4;
  BundleSubscriptionDetectionProvider.timestamp.getter(v4);
  return sub_1D5EBD1F0;
}

void sub_1D5EBD1F0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    sub_1D5B76E3C(v3, v2);
    _s8NewsFeed35BundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v2);
    _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v3);
  }

  else
  {
    _s8NewsFeed35BundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v3);
  }

  free(v3);

  free(v2);
}

void (*sub_1D5EBD274(void *a1))(uint64_t a1, char a2)
{
  sub_1D5B7B2CC(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  v3 = *(*(v2 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    *a1 = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v4 = malloc(v3);
  }

  a1[1] = v4;
  BundleSubscriptionDetectionProvider.timestamp.getter(v4);
  return sub_1D5EBD1F0;
}

uint64_t _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvg_0@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v29 = sub_1D725891C();
  v1 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7258C2C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B7B2CC(0, &qword_1EDF43B40, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v27 - v12;
  sub_1D5B7B2CC(0, &qword_1EDF18A38, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v27 - v16;
  v27 = sub_1D7257DEC();
  v18 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v19);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EC87D7B8 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  if (v30 <= 1u)
  {
    if (!v30)
    {
      (*(v6 + 56))(v17, 1, 1, v5);
      v23 = sub_1D7258CFC();
      (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
      sub_1D7257DDC();
      sub_1D7257D6C();
      goto LABEL_12;
    }

LABEL_11:
    (*(v6 + 56))(v17, 1, 1, v5);
    v26 = sub_1D7258CFC();
    (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
    sub_1D7257DDC();
    sub_1D7257D3C();
    goto LABEL_12;
  }

  if (v30 == 2)
  {
    goto LABEL_11;
  }

  if (v30 != 3)
  {
    v24 = v28;
    sub_1D72587BC();
    return (*(v1 + 56))(v24, 0, 1, v29);
  }

  (*(v6 + 56))(v17, 1, 1, v5);
  v22 = sub_1D7258CFC();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  sub_1D7257DDC();
  sub_1D7257D9C();
LABEL_12:
  sub_1D7258BCC();
  sub_1D72588CC();
  sub_1D7258B9C();
  (*(v1 + 8))(v4, v29);
  (*(v6 + 8))(v9, v5);
  return (*(v18 + 8))(v21, v27);
}

void (*SimulatedBundleSubscriptionDetectionProvider.timestamp.modify(uint64_t *a1))(uint64_t *a1)
{
  sub_1D5B7B2CC(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  v3 = *(*(v2 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  *a1 = v4;
  _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvg_0(v4);
  return sub_1D5EBDB70;
}

void sub_1D5EBDB70(uint64_t *a1)
{
  v1 = *a1;
  _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(*a1);

  free(v1);
}

void (*sub_1D5EBDBDC(uint64_t *a1))(uint64_t *)
{
  sub_1D5B7B2CC(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  v3 = *(*(v2 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  *a1 = v4;
  _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvg_0(v4);
  return sub_1D5EBDD6C;
}

uint64_t sub_1D5EBDD70()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1D725A7EC();
  v3 = *(*(v8 + 40) + 16);
  swift_beginAccess();
  if (*(*(v3 + 16) + 16))
  {
    v9 = *(v8 + 56);

    v5 = sub_1D6F622E0(v4);
    sub_1D5B886D0(v5);

    v6 = v9;
  }

  else
  {
    v6 = sub_1D6E46E28();
  }

  sub_1D5BE240C(v2, v1, v6);

  return sub_1D725BC1C();
}

uint64_t sub_1D5EBDE70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D725A7EC();
  v5 = *(*(v12 + 40) + 16);
  swift_beginAccess();
  if (*(*(v5 + 16) + 16))
  {
    v11 = *(v12 + 56);

    v7 = sub_1D6F622E0(v6);
    sub_1D5B886D0(v7);

    v8 = v11;
  }

  else
  {
    v8 = sub_1D6E46E28();
  }

  v9 = sub_1D5BE240C(a2, a3, v8);

  return v9 & 1;
}

uint64_t sub_1D5EBDF64@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];

  sub_1D725A7EC();
  v5 = *(*(*&v23[0] + 40) + 16);
  swift_beginAccess();
  if (*(*(v5 + 16) + 16))
  {
    *&v23[0] = *(*&v23[0] + 56);

    v7 = sub_1D6F622E0(v6);
    sub_1D5B886D0(v7);

    v8 = *&v23[0];
  }

  else
  {
    v8 = sub_1D6E46E28();
  }

  if (qword_1EDF2AB18 != -1)
  {
LABEL_12:
    swift_once();
  }

  *&v23[0] = v4;
  *(&v23[0] + 1) = v3;
  v3 = sub_1D6844380(v23);

  v4 = -*(v3 + 16);
  v9 = -1;
  v10 = 32;
  v11 = MEMORY[0x1E69D6B28];
  v12 = MEMORY[0x1E69D6B20];
  while (v4 + v9 != -1)
  {
    if (++v9 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_12;
    }

    v13 = v10 + 56;
    v14 = v3 + v10;
    v15 = *v14;
    v16 = *(v14 + 16);
    v17 = *(v14 + 32);
    v24 = *(v14 + 48);
    v23[1] = v16;
    v23[2] = v17;
    v23[0] = v15;
    sub_1D5E3B610(v23, &v22);
    v18 = sub_1D68444DC(v8);
    sub_1D5E3B66C(v23);
    v10 = v13;
    if (v18)
    {
      v11 = v12;
      break;
    }
  }

  v19 = *v11;
  v20 = sub_1D725BC7C();
  return (*(*(v20 - 8) + 104))(a1, v19, v20);
}

BOOL sub_1D5EBE16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D725A7EC();
  v5 = *(*(*&v20[0] + 40) + 16);
  swift_beginAccess();
  if (*(*(v5 + 16) + 16))
  {
    *&v20[0] = *(*&v20[0] + 56);

    v7 = sub_1D6F622E0(v6);
    sub_1D5B886D0(v7);

    v8 = *&v20[0];
  }

  else
  {
    v8 = sub_1D6E46E28();
  }

  if (qword_1EDF2AB18 != -1)
  {
LABEL_11:
    swift_once();
  }

  *&v20[0] = a2;
  *(&v20[0] + 1) = a3;

  a3 = sub_1D6844380(v20);

  a2 = -*(a3 + 16);
  v9 = -1;
  v10 = 32;
  do
  {
    v11 = a2 + v9;
    if (a2 + v9 == -1)
    {
      break;
    }

    if (++v9 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_11;
    }

    v12 = v10 + 56;
    v13 = a3 + v10;
    v14 = *v13;
    v15 = *(v13 + 16);
    v16 = *(v13 + 32);
    v21 = *(v13 + 48);
    v20[1] = v15;
    v20[2] = v16;
    v20[0] = v14;
    sub_1D5E3B610(v20, &v19);
    v17 = sub_1D68444DC(v8);
    sub_1D5E3B66C(v20);
    v10 = v12;
  }

  while ((v17 & 1) == 0);

  return v11 != -1;
}

uint64_t _s8NewsFeed24FormatSelectorExpressionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  v3 = sub_1D72646CC();
  result = 0;
  if (v3)
  {
    return 1;
  }

  return result;
}

unint64_t sub_1D5EBE36C(uint64_t a1)
{
  result = sub_1D5EBE394();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5EBE394()
{
  result = qword_1EC880360;
  if (!qword_1EC880360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880360);
  }

  return result;
}

unint64_t sub_1D5EBE428()
{
  result = qword_1EDF0CED0;
  if (!qword_1EDF0CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0CED0);
  }

  return result;
}

unint64_t sub_1D5EBE47C()
{
  result = qword_1EC880368;
  if (!qword_1EC880368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880368);
  }

  return result;
}

unint64_t sub_1D5EBE4D0(uint64_t a1)
{
  result = sub_1D5EBE4F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5EBE4F8()
{
  result = qword_1EC880370;
  if (!qword_1EC880370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880370);
  }

  return result;
}

uint64_t sub_1D5EBE58C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5EBE5E0()
{
  result = qword_1EDF246D8;
  if (!qword_1EDF246D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF246D8);
  }

  return result;
}

unint64_t sub_1D5EBE634()
{
  result = qword_1EDF0BF88;
  if (!qword_1EDF0BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BF88);
  }

  return result;
}

unint64_t sub_1D5EBE688()
{
  result = qword_1EC880378;
  if (!qword_1EC880378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880378);
  }

  return result;
}

uint64_t sub_1D5EBE70C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t sub_1D5EBE764(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x65756761656CLL;
  if (v2 != 1)
  {
    v4 = 0x74697465706D6F63;
    v3 = 0xEA0000000000726FLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746E657665;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x65756761656CLL;
  if (*a2 != 1)
  {
    v8 = 0x74697465706D6F63;
    v7 = 0xEA0000000000726FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746E657665;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D5EBE864()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5EBE904()
{
  sub_1D72621EC();
}

uint64_t sub_1D5EBE990()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5EBEA2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5EC0234();
  *a1 = result;
  return result;
}

void sub_1D5EBEA5C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x65756761656CLL;
  if (v2 != 1)
  {
    v5 = 0x74697465706D6F63;
    v4 = 0xEA0000000000726FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746E657665;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

size_t sub_1D5EBEBB0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v82 = a3;
  v9 = type metadata accessor for FormatInspectionItem(0);
  v10 = *(v9 - 8);
  *&v12 = MEMORY[0x1EEE9AC00](v9 - 8, v11).n128_u64[0];
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a1)
  {
    sub_1D5EC0508(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem);
    v68 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v16 = swift_allocObject();
    v64 = xmmword_1D7273AE0;
    *(v16 + 16) = xmmword_1D7273AE0;
    v34 = *(a2 + 16);
    swift_getObjectType();
    v35 = [v34 displayName];
    v67 = sub_1D726207C();
    *&v66 = v36;

    sub_1D5EC0508(0, &qword_1EC8803C0, sub_1D5E4F38C);
    inited = swift_initStackObject();
    *(inited + 16) = v64;
    v38 = v82[7];
    v75 = v82[6];
    v76 = v38;
    v77 = v82[8];
    v78 = *(v82 + 18);
    v39 = v82[3];
    v71 = v82[2];
    v72 = v39;
    v40 = v82[5];
    v73 = v82[4];
    v74 = v40;
    v41 = v82[1];
    v69 = *v82;
    v70 = v41;
    sub_1D6C807D0(&v69, v34, &v79);
    *(inited + 56) = &type metadata for FormatInspectionGroup;
    *(inited + 64) = &off_1F518B2C0;
    v42 = swift_allocObject();
    *(inited + 32) = v42;
    *(v42 + 48) = v81;
    v43 = v80;
    *(v42 + 16) = v79;
    *(v42 + 32) = v43;
    v44 = sub_1D5F62BFC(inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(inited + 32);
    v45 = sub_1D7073500(v44);

    result = sub_1D711AD20(0x746E657645, 0xE500000000000000, v45, v67, v66, (v16 + v68));
    goto LABEL_29;
  }

  if (*a1 == 1)
  {
    sub_1D5EC0508(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem);
    v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v16 = swift_allocObject();
    v66 = xmmword_1D7273AE0;
    *(v16 + 16) = xmmword_1D7273AE0;
    v17 = a4;
    v18 = *(a2 + 16);
    v65 = v4;
    v19 = [objc_msgSend(v18 eventLeagueTag)];
    swift_unknownObjectRelease();
    v20 = sub_1D726207C();
    v67 = v21;
    v68 = v20;

    sub_1D5EC0508(0, &qword_1EC8803C0, sub_1D5E4F38C);
    v22 = swift_initStackObject();
    *(v22 + 16) = v66;
    v23 = v82[7];
    v75 = v82[6];
    v76 = v23;
    v77 = v82[8];
    v78 = *(v82 + 18);
    v24 = v82[3];
    v71 = v82[2];
    v72 = v24;
    v25 = v82[5];
    v73 = v82[4];
    v74 = v25;
    v26 = v82[1];
    v69 = *v82;
    v70 = v26;
    v27 = v18;
    a4 = v17;
    v28 = [v27 eventLeagueTag];
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1D6C807D0(&v69, v28, &v79);
    swift_unknownObjectRelease_n();
    *(v22 + 56) = &type metadata for FormatInspectionGroup;
    *(v22 + 64) = &off_1F518B2C0;
    v29 = swift_allocObject();
    *(v22 + 32) = v29;
    *(v29 + 48) = v81;
    v30 = v80;
    *(v29 + 16) = v79;
    *(v29 + 32) = v30;
    v31 = sub_1D5F62BFC(v22);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(v22 + 32);
    v32 = sub_1D7073500(v31);

    result = sub_1D711AD20(0x65756761654CLL, 0xE600000000000000, v32, v68, v67, (v16 + v15));
LABEL_29:
    *a4 = v16;
    return result;
  }

  v46 = [*(a2 + 16) eventCompetitorTags];
  if (!v46)
  {
LABEL_28:
    sub_1D5EC0508(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem);
    v61 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D7273AE0;
    v69 = 0u;
    v70 = 0u;
    result = sub_1D711B5C0(0x74697465706D6F43, 0xEA0000000000726FLL, &v69, (v16 + v61));
    goto LABEL_29;
  }

  v47 = v46;
  sub_1D5EC01D0();
  v48 = sub_1D726267C();

  v49 = v48;
  v50 = v48 & 0xFFFFFFFFFFFFFF8;
  v51 = v48 >> 62;
  if (v51)
  {
    goto LABEL_24;
  }

  v52 = *(v50 + 16);
  if (!v52)
  {
LABEL_27:

    goto LABEL_28;
  }

  while (1)
  {
    v53 = v49;
    *&v69 = MEMORY[0x1E69E7CC0];
    result = sub_1D6997AF0(0, v52 & ~(v52 >> 63), 0);
    if (v52 < 0)
    {
      break;
    }

    v16 = v69;
    v54 = v53;
    v65 = v5;
    v63 = a4;
    *&v66 = v53 & 0xFFFFFFFFFFFFFF8;
    if (v51)
    {
      v55 = sub_1D7263BFC();
      v54 = v53;
    }

    else
    {
      v55 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v51 = 0;
    v49 = v54 & 0xC000000000000001;
    v67 = v54 & 0xC000000000000001;
    v68 = v55 & ~(v55 >> 63);
    v5 = v54;
    a4 = v52;
    while (v68 != v51)
    {
      if (v67)
      {
        v56 = MEMORY[0x1DA6FB460](v51);
      }

      else
      {
        if (v51 >= *(v66 + 16))
        {
          goto LABEL_23;
        }

        v56 = *(v54 + 8 * v51 + 32);
        swift_unknownObjectRetain();
      }

      sub_1D5EBF2E8(v51, v56, v82, v14);
      swift_unknownObjectRelease();
      *&v69 = v16;
      v58 = *(v16 + 16);
      v57 = *(v16 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_1D6997AF0(v57 > 1, v58 + 1, 1);
        v16 = v69;
      }

      ++v51;
      *(v16 + 16) = v58 + 1;
      sub_1D5EC04A0(v14, v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v58, type metadata accessor for FormatInspectionItem);
      v54 = v5;
      if (a4 == v51)
      {

        a4 = v63;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v59 = v49;
    if (!sub_1D7263BFC())
    {
      goto LABEL_27;
    }

    v60 = sub_1D7263BFC();
    v49 = v59;
    v52 = v60;
    if (!v60)
    {

      v16 = MEMORY[0x1E69E7CC0];
      goto LABEL_29;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5EBF2E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  strcpy(v23, "Competitor [");
  BYTE13(v23[0]) = 0;
  HIWORD(v23[0]) = -5120;
  *&v25[0] = a1;
  v7 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v7);

  MEMORY[0x1DA6F9910](93, 0xE100000000000000);
  v8 = v23[0];
  swift_getObjectType();
  v9 = [a2 displayName];
  v10 = sub_1D726207C();
  v12 = v11;

  sub_1D5EC0508(0, &qword_1EC8803C0, sub_1D5E4F38C);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v14 = *(a3 + 112);
  v23[6] = *(a3 + 96);
  v23[7] = v14;
  v23[8] = *(a3 + 128);
  v24 = *(a3 + 144);
  v15 = *(a3 + 48);
  v23[2] = *(a3 + 32);
  v23[3] = v15;
  v16 = *(a3 + 80);
  v23[4] = *(a3 + 64);
  v23[5] = v16;
  v17 = *(a3 + 16);
  v23[0] = *a3;
  v23[1] = v17;
  sub_1D6C807D0(v23, a2, v25);
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v18 = swift_allocObject();
  *(inited + 32) = v18;
  *(v18 + 48) = v26;
  v19 = v25[1];
  *(v18 + 16) = v25[0];
  *(v18 + 32) = v19;
  v20 = sub_1D5F62BFC(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(inited + 32);
  v21 = sub_1D7073500(v20);

  return sub_1D711AD20(v8, *(&v8 + 1), v21, v10, v12, a4);
}

size_t sub_1D5EBF4E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v66 = a3;
  v83 = type metadata accessor for FormatJson();
  v79 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83, v5);
  v78 = (&v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7, v8);
  v67 = (&v66 - v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v69 = (&v66 - v12);
  MEMORY[0x1EEE9AC00](v13, v14);
  v68 = (&v66 - v15);
  v72 = type metadata accessor for FormatJsonKeyValue();
  v16 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v17);
  v19 = (&v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v66 - v22);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v66 - v26);
  MEMORY[0x1EEE9AC00](v28, v29);
  v70 = (&v66 - v30);
  v84 = *(a2 + 16);
  v91 = MEMORY[0x1E69E7CC0];
  sub_1D6997B40(0, 3, 0);
  v31 = 0;
  v74 = v91;
  v71 = v23;
  v82 = v27;
  while (1)
  {
    v73 = v31;
    v32 = *(&unk_1F50F3790 + v31 + 32);
    if (!v32)
    {
      v90 = MEMORY[0x1E69E7CC0];
      sub_1D6997B40(0, 28, 0);
      v40 = 0;
      v41 = v90;
      do
      {
        LOBYTE(v89) = byte_1F50F36B8[v40 + 32];
        sub_1D6C7F758(v84, &v89, a1, v27);
        v90 = v41;
        v42 = v27;
        v44 = v41[2];
        v43 = v41[3];
        if (v44 >= v43 >> 1)
        {
          sub_1D6997B40(v43 > 1, v44 + 1, 1);
          v41 = v90;
        }

        ++v40;
        v41[2] = v44 + 1;
        sub_1D5EC04A0(v42, v41 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v44, type metadata accessor for FormatJsonKeyValue);
        v27 = v42;
      }

      while (v40 != 28);
      v37 = v68;
      *v68 = v41;
      swift_storeEnumTagMultiPayload();
      v38 = v70;
      *v70 = 0x746E657665;
      v39 = 0xE500000000000000;
      goto LABEL_37;
    }

    if (v32 != 1)
    {
      break;
    }

    v87 = [v84 eventLeagueTag];
    v90 = MEMORY[0x1E69E7CC0];
    sub_1D6997B40(0, 28, 0);
    v33 = 0;
    v34 = v90;
    do
    {
      LOBYTE(v89) = byte_1F50F36B8[v33 + 32];
      sub_1D6C7F758(v87, &v89, a1, v23);
      v90 = v34;
      v36 = v34[2];
      v35 = v34[3];
      if (v36 >= v35 >> 1)
      {
        sub_1D6997B40(v35 > 1, v36 + 1, 1);
        v34 = v90;
      }

      ++v33;
      v34[2] = v36 + 1;
      sub_1D5EC04A0(v23, v34 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v36, type metadata accessor for FormatJsonKeyValue);
    }

    while (v33 != 28);
    swift_unknownObjectRelease();
    v37 = v69;
    *v69 = v34;
    swift_storeEnumTagMultiPayload();
    v38 = v70;
    *v70 = 0x65756761656CLL;
    v39 = 0xE600000000000000;
    v27 = v82;
LABEL_37:
    *(v38 + 8) = v39;
    sub_1D5EC04A0(v37, v38 + *(v72 + 20), type metadata accessor for FormatJson);
    v61 = v74;
    v91 = v74;
    v63 = *(v74 + 16);
    v62 = *(v74 + 24);
    if (v63 >= v62 >> 1)
    {
      sub_1D6997B40(v62 > 1, v63 + 1, 1);
      v61 = v91;
    }

    v64 = v73 + 1;
    *(v61 + 16) = v63 + 1;
    v65 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v74 = v61;
    sub_1D5EC04A0(v38, v61 + v65 + *(v16 + 72) * v63, type metadata accessor for FormatJsonKeyValue);
    v31 = v64;
    v23 = v71;
    if (v64 == 3)
    {
      *v66 = v74;
      return swift_storeEnumTagMultiPayload();
    }
  }

  v45 = [v84 eventCompetitorTags];
  if (v45)
  {
    v46 = v45;
    sub_1D5EC01D0();
    v47 = sub_1D726267C();

    v48 = v47;
  }

  else
  {
    v48 = MEMORY[0x1E69E7CC0];
  }

  v77 = v48;
  if (!(v48 >> 62))
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v49)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

  v49 = sub_1D7263BFC();
  if (!v49)
  {
LABEL_35:

    v51 = MEMORY[0x1E69E7CC0];
LABEL_36:
    v37 = v67;
    *v67 = v51;
    swift_storeEnumTagMultiPayload();
    v38 = v70;
    *v70 = 0x74697465706D6F63;
    v39 = 0xEA0000000000726FLL;
    goto LABEL_37;
  }

LABEL_19:
  v90 = MEMORY[0x1E69E7CC0];
  result = sub_1D6997B90(0, v49 & ~(v49 >> 63), 0);
  if ((v49 & 0x8000000000000000) == 0)
  {
    result = 0;
    v51 = v90;
    v80 = v49;
    v81 = v77 & 0xC000000000000001;
    v75 = v77 + 32;
    v76 = v77 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v52 = result + 1;
      if (__OFADD__(result, 1))
      {
        break;
      }

      v87 = v51;
      if (v81)
      {
        v53 = MEMORY[0x1DA6FB460]();
      }

      else
      {
        if (result >= *(v76 + 16))
        {
          goto LABEL_42;
        }

        v53 = *(v75 + 8 * result);
        swift_unknownObjectRetain();
      }

      v85 = v52;
      v86 = v52;
      v89 = MEMORY[0x1E69E7CC0];
      sub_1D6997B40(0, 28, 0);
      v54 = 0;
      v55 = v89;
      do
      {
        v88 = byte_1F50F36B8[v54 + 32];
        sub_1D6C7F758(v53, &v88, a1, v19);
        v89 = v55;
        v57 = *(v55 + 16);
        v56 = *(v55 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_1D6997B40(v56 > 1, v57 + 1, 1);
          v55 = v89;
        }

        ++v54;
        *(v55 + 16) = v57 + 1;
        sub_1D5EC04A0(v19, v55 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v57, type metadata accessor for FormatJsonKeyValue);
      }

      while (v54 != 28);
      swift_unknownObjectRelease();
      v58 = v78;
      *v78 = v55;
      swift_storeEnumTagMultiPayload();
      v51 = v87;
      v90 = v87;
      v60 = v87[2];
      v59 = v87[3];
      if (v60 >= v59 >> 1)
      {
        sub_1D6997B90(v59 > 1, v60 + 1, 1);
        v51 = v90;
      }

      v51[2] = v60 + 1;
      sub_1D5EC04A0(v58, v51 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v60, type metadata accessor for FormatJson);
      result = v86;
      v27 = v82;
      if (v85 == v80)
      {

        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL _s8NewsFeed24FormatSportsEventBindingV4BoolO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v3 >> 6;
  v7 = *a2 == *a1;
  if (v5 >= 0x40)
  {
    v7 = 0;
  }

  v8 = v4 == v2;
  if ((v5 & 0xC0) != 0x40)
  {
    v8 = 0;
  }

  v10 = ((v5 ^ v3) & 0x3F) == 0 && v2 == v4;
  if ((v5 & 0xC0) != 0x80)
  {
    v10 = 0;
  }

  if (v6 == 1)
  {
    v10 = v8;
  }

  if (v6)
  {
    return v10;
  }

  else
  {
    return v7;
  }
}

unint64_t sub_1D5EBFDD0(uint64_t a1)
{
  result = sub_1D5EBFDF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5EBFDF8()
{
  result = qword_1EC880380;
  if (!qword_1EC880380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880380);
  }

  return result;
}

unint64_t sub_1D5EBFE4C(void *a1)
{
  a1[1] = sub_1D5EBFE84();
  a1[2] = sub_1D5EBFED8();
  result = sub_1D5EBFF2C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5EBFE84()
{
  result = qword_1EC880388;
  if (!qword_1EC880388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880388);
  }

  return result;
}

unint64_t sub_1D5EBFED8()
{
  result = qword_1EC880390;
  if (!qword_1EC880390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880390);
  }

  return result;
}

unint64_t sub_1D5EBFF2C()
{
  result = qword_1EC880398;
  if (!qword_1EC880398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880398);
  }

  return result;
}

uint64_t _s4TextOwet_2(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 6 && *(a1 + 9))
  {
    return (*a1 + 6);
  }

  v3 = ((*(a1 + 8) >> 3) & 4 | (*(a1 + 8) >> 6)) ^ 7;
  if (v3 >= 5)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s4TextOwst_2(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 5)
  {
    *(result + 8) = 0;
    *result = a2 - 6;
    if (a3 >= 6)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 6)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 32 * (((-a2 & 4) != 0) - 2 * a2);
    }
  }

  return result;
}

unint64_t sub_1D5EC007C()
{
  result = qword_1EC8803A0;
  if (!qword_1EC8803A0)
  {
    sub_1D5EC00D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8803A0);
  }

  return result;
}

void sub_1D5EC00D4()
{
  if (!qword_1EC8803A8)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8803A8);
    }
  }
}

unint64_t sub_1D5EC0128()
{
  result = qword_1EC8803B0;
  if (!qword_1EC8803B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8803B0);
  }

  return result;
}

unint64_t sub_1D5EC017C()
{
  result = qword_1EC8803B8;
  if (!qword_1EC8803B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8803B8);
  }

  return result;
}

unint64_t sub_1D5EC01D0()
{
  result = qword_1EDF04500;
  if (!qword_1EDF04500)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF04500);
  }

  return result;
}

uint64_t sub_1D5EC0234()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

size_t sub_1D5EC0280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = 0;
  v30 = *(a1 + 144);
  v5 = *(a1 + 112);
  v29[6] = *(a1 + 96);
  v29[7] = v5;
  v29[8] = *(a1 + 128);
  v6 = *(a1 + 48);
  v29[2] = *(a1 + 32);
  v29[3] = v6;
  v7 = *(a1 + 80);
  v29[4] = *(a1 + 64);
  v29[5] = v7;
  v8 = *(a1 + 16);
  v29[0] = *a1;
  v29[1] = v8;
  v9 = *(a2 + 16);
  v27[0] = *a2;
  v27[1] = v9;
  v28 = *(a2 + 32);
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v24 = byte_1F50F4950[v4 + 32];
    result = sub_1D5EBEBB0(&v24, v27, v29, v25);
    v12 = *&v25[0];
    v13 = *(*&v25[0] + 16);
    v14 = v10[2];
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v15 <= v10[3] >> 1)
    {
      if (*(v12 + 16))
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v14 <= v15)
      {
        v17 = v14 + v13;
      }

      else
      {
        v17 = v14;
      }

      v10 = sub_1D698BAE0(isUniquelyReferenced_nonNull_native, v17, 1, v10);
      if (*(v12 + 16))
      {
LABEL_13:
        v18 = (v10[3] >> 1) - v10[2];
        result = type metadata accessor for FormatInspectionItem(0);
        if (v18 < v13)
        {
          goto LABEL_20;
        }

        swift_arrayInitWithCopy();

        if (v13)
        {
          v19 = v10[2];
          v20 = __OFADD__(v19, v13);
          v21 = v19 + v13;
          if (v20)
          {
            goto LABEL_21;
          }

          v10[2] = v21;
        }

        goto LABEL_3;
      }
    }

    if (v13)
    {
      goto LABEL_19;
    }

LABEL_3:
    if (++v4 == 3)
    {
      v22 = sub_1D5F62998(v10);

      sub_1D6795150(1819242306, 0xE400000000000000, 0, 0, v22, v25);

      v23 = v25[1];
      *a3 = v25[0];
      *(a3 + 16) = v23;
      *(a3 + 32) = v26;
      return result;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D5EC04A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D5EC0508(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D72644CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed26DebugFormatFileSourceErrorVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D5EC0574(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1D5EC05BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D5EC062C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a3;
  v8 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v33 = a4;
  v12 = a4;
  sub_1D5BA6EF4();
  if (swift_dynamicCast())
  {
    v14 = v28;
    v13 = v29;
    v15 = v30;
    v16 = v31;
    v17 = v32;
    v18 = (v32 >> 59) & 0x1E | (v32 >> 2) & 1;
    if (v18 == 12)
    {
      v28 = v9;
      v29 = v8;
      v30 = v10;
      v31 = v11;
      v26 = v15;
      v27 = v16;
      sub_1D5EC062C(a1, a2, &v28, v32 & 0xFFFFFFFFFFFFFFBLL);
      v22 = v14;
      v23 = v13;
      v24 = v26;
      v25 = v27;
      goto LABEL_6;
    }

    if (v18 == 13)
    {
      v28 = v9;
      v29 = v8;
      v30 = v10;
      v31 = v11;
      v19 = v15;
      v20 = a5;
      v21 = v16;
      sub_1D5EC0788(a1, a2, &v28, v14, v13, v20);
      v22 = v14;
      v23 = v13;
      v24 = v19;
      v25 = v21;
LABEL_6:
      sub_1D5EC0FE8(v22, v23, v24, v25, v17);
      return;
    }

    sub_1D5EC0FE8(v28, v29, v30, v31, v32);
  }

  *a5 = v9;
  a5[1] = v8;
  a5[2] = v10;
  a5[3] = v11;
}
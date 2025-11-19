uint64_t sub_1ABA7A968@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1ABF237F4();
  v6 = sub_1ABA7AA24(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1ABA7AA24(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void ExpirableLazyBox.wrappedValue.getter()
{
  v1 = *v0;
  v2 = v0[4];
  sub_1ABA7F288();
  v4 = *(v3 + 80);
  sub_1ABA7F288();
  v6 = *(v5 + 88);
  sub_1ABA7F288();
  v8 = *(v7 + 96);
  v9 = type metadata accessor for ExpirableLazyBox.State();
  sub_1ABA7AEC8(sub_1ABA7AF54, v0, v2, v9, v6);
}

uint64_t sub_1ABA7AB5C()
{

  return sub_1ABF25234();
}

uint64_t sub_1ABA7ABA4()
{

  return sub_1ABF22424();
}

void sub_1ABA7AC28()
{

  sub_1ABADDBD4();
}

void sub_1ABA7AC4C()
{
}

__n128 sub_1ABA7AC70()
{
  result = *&STACK[0xAA0];
  v1 = *&STACK[0xAB0];
  *&STACK[0xAD0] = *&STACK[0xAA0];
  *&STACK[0xAE0] = v1;
  LOBYTE(STACK[0xAF0]) = STACK[0xAC0];
  return result;
}

uint64_t sub_1ABA7ACB4()
{

  return swift_slowAlloc();
}

char *sub_1ABA7ACD8@<X0>(unint64_t a1@<X8>)
{

  return sub_1ABADE1AC((a1 > 1), v1, 1);
}

void sub_1ABA7AD74()
{
  v3 = v0[33];
  v4 = v0[32];
  v1 = v0[29];
  v5 = v0[27];
  v2 = v0[21];
}

uint64_t sub_1ABA7ADA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return sub_1ABA93E64(v7, va);
}

__n128 sub_1ABA7ADB8(__n128 *a1)
{
  result = *(v1 - 256);
  a1[1] = result;
  return result;
}

void *sub_1ABA7ADD8(void *a1)
{

  return memcpy(a1, &STACK[0x2F0], 0xA8uLL);
}

void sub_1ABA7AE18(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t sub_1ABA7AE6C()
{
}

uint64_t sub_1ABA7AE84@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 72);

  return sub_1ABF24F84();
}

uint64_t sub_1ABA7AF70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = *(*a2 + 88);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v26 - v11;
  v13 = *v10;
  if (*(*v10 + 24))
  {
    v14 = *(*v10 + 24);

    sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
    sub_1ABF242B4();
  }

  v15 = *(v13 + 16);
  if (v15)
  {
    goto LABEL_9;
  }

  v16 = *(v6 + 80);
  v17 = *(v6 + 96);
  type metadata accessor for ExpirableLazyBox.Box();
  v18 = *(a2 + 24);
  (*(a2 + 16))();
  v19 = sub_1ABAAD0D0(v12);
  v20 = *(v13 + 16);
  *(v13 + 16) = v19;

  if (qword_1ED871B38 != -1)
  {
    swift_once();
  }

  v21 = sub_1ABF237F4();
  sub_1ABA7AA24(v21, qword_1ED871B40);
  v22 = sub_1ABF237D4();
  v23 = sub_1ABF24654();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1ABA78000, v22, v23, "ExpirableLazyBox value initialized", v24, 2u);
    MEMORY[0x1AC5AB8B0](v24, -1, -1);
  }

  v15 = *(v13 + 16);
  if (v15)
  {
LABEL_9:
    (*(v8 + 16))(a3, v15 + *(*v15 + 104), v7);

    sub_1ABA7B970(a2, a1);
  }

  else
  {
    result = sub_1ABF24CD4();
    __break(1u);
  }

  return result;
}

void sub_1ABA7B264(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

uint64_t sub_1ABA7B2EC(uint64_t a1)
{
  v2 = v1;
  v40 = a1;
  v3 = *v1;
  v37 = *(*v1 + 80);
  v43 = *(v37 - 8);
  v38 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v44 = &v31 - v4;
  v39 = v3[12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = sub_1ABF247E4();
  v6 = *(v42 - 8);
  v36 = *(v6 + 64);
  v7 = MEMORY[0x1EEE9AC00](v42);
  v41 = &v31 - v8;
  v33 = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v31 - v11;
  v32 = &v31 - v11;
  v13 = sub_1ABAD219C(&qword_1EB4D1AC0, &qword_1ABF33C50);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v31 - v15;
  v35 = &v31 - v15;
  v17 = v3[16];
  v18 = v3[17];
  v31 = v3[15];
  v19 = sub_1ABF24294();
  sub_1ABA7B9B4(v16, 1, 1, v19);
  v34 = swift_allocObject();
  swift_weakInit();
  (*(v9 + 16))(v12, v2 + v17, AssociatedTypeWitness);
  (*(v6 + 16))(v41, v2 + v18, v42);
  v20 = v43;
  v21 = v37;
  (*(v43 + 16))(v44, v2 + v31, v37);
  v22 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v23 = (v10 + *(v6 + 80) + v22) & ~*(v6 + 80);
  v24 = (v36 + *(v20 + 80) + v23) & ~*(v20 + 80);
  v25 = (v38 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *(v26 + 4) = v21;
  *(v26 + 5) = v3[11];
  *(v26 + 6) = v39;
  (*(v9 + 32))(&v26[v22], v32, v33);
  (*(v6 + 32))(&v26[v23], v41, v42);
  (*(v43 + 32))(&v26[v24], v44, v21);
  v27 = v35;
  *&v26[v25] = v34;
  v28 = sub_1ABD403AC(0, 0, v27, &unk_1ABF4DC38, v26);
  v29 = *(v40 + 24);
  *(v40 + 24) = v28;
}

uint64_t sub_1ABA7B738()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ABA7B770()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BD7C();
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 56) & ~v6;
  v9 = *(v8 + 64);
  v10 = *(sub_1ABF247E4() - 8);
  v11 = *(v10 + 80);
  v24 = *(v10 + 64);
  v25 = v1;
  v12 = (v7 + v9 + v11) & ~v11;
  sub_1ABA7BD7C();
  v14 = v13;
  v15 = *(v13 + 80);
  v23 = *(v16 + 64);
  v17 = *(v0 + 2);
  swift_unknownObjectRelease();
  v18 = *(v5 + 8);
  v18(&v0[v7], AssociatedTypeWitness);
  if (!sub_1ABA7E1E0(&v0[v12], 1, AssociatedTypeWitness))
  {
    v18(&v0[v12], AssociatedTypeWitness);
  }

  v19 = (v12 + v24 + v15) & ~v15;
  v20 = (v23 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v14 + 8))(&v0[v19], v25);
  v21 = *&v0[v20];

  return MEMORY[0x1EEE6BDD0](v0, v20 + 8, v6 | v11 | v15 | 7);
}

uint64_t sub_1ABA7B970(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;

  sub_1ABA7B2EC(v3);
}

uint64_t LRUCache.get(_:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v1[3];
  sub_1ABA7C6CC();
  v6 = *(v5 + 80);
  sub_1ABA7C6CC();
  v8 = *(v7 + 88);
  sub_1ABA7C6CC();
  v10 = *(v9 + 96);
  type metadata accessor for LRUCacheNode();
  sub_1ABF23A64();
  swift_endAccess();
  if (!v14)
  {
    return sub_1ABA7B9B4(a1, 1, 1, v8);
  }

  sub_1ABA83004(v14);
  sub_1ABA8138C(v14);
  v11 = *(*v14 + 112);
  swift_beginAccess();
  v12 = sub_1ABF247E4();
  (*(*(v12 - 8) + 16))(a1, v14 + v11, v12);
}

uint64_t sub_1ABA7BBE0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_1ABA7BC34()
{

  JUMPOUT(0x1AC5AB8B0);
}

uint64_t sub_1ABA7BCC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1ABAD219C(a3, a4);
}

uint64_t sub_1ABA7BD00()
{

  return swift_allocError();
}

uint64_t sub_1ABA7BD18()
{
  v2 = *(v0 - 96);

  return sub_1ABF24EC4();
}

uint64_t sub_1ABA7BD38()
{

  return sub_1ABF252C4();
}

uint64_t sub_1ABA7BD5C()
{

  return sub_1ABF24D94();
}

id sub_1ABA7BDA4(uint64_t a1, const char *a2)
{
  v8 = *(v6 - 112);

  return [v8 a2];
}

uint64_t sub_1ABA7BE18(uint64_t a1)
{
  sub_1ABA7B9B4(v1, 1, 1, a1);
}

uint64_t sub_1ABA7BE50(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 4;

  return swift_willThrow();
}

uint64_t sub_1ABA7BE6C()
{

  return swift_once();
}

uint64_t sub_1ABA7BF14()
{
  v4 = *(v0 + 48);
  v5 = **(v3 - 112);
  v6 = *v1;
  return v2;
}

uint64_t sub_1ABA7BF6C()
{

  return sub_1ABF24EC4();
}

double sub_1ABA7BF88(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 512;
  return result;
}

__n128 sub_1ABA7BFA4()
{
  result = *&STACK[0x440];
  v1 = *&STACK[0x450];
  *&STACK[0x470] = *&STACK[0x440];
  *&STACK[0x480] = v1;
  LOBYTE(STACK[0x490]) = STACK[0x460];
  return result;
}

uint64_t sub_1ABA7BFD0()
{

  return swift_once();
}

uint64_t sub_1ABA7C014()
{
}

uint64_t sub_1ABA7C038()
{

  return sub_1ABF25054();
}

uint64_t sub_1ABA7C08C@<X0>(uint64_t a1@<X8>)
{
  *v3 = a1;
  *(v3 + 8) = v1;
  *(v3 + 16) = 2;
  *(v3 + 24) = v2;
  v6 = *(v4 + 32);
  return v3 + *(v5 + 24);
}

uint64_t sub_1ABA7C0CC()
{
  v2 = v0[13];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[15];

  return sub_1ABBF552C(v6);
}

void *sub_1ABA7C100(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __src)
{
  v13 = (*(v10 + 56) + 72 * v11);

  return memcpy(v13, &__src, 0x48uLL);
}

uint64_t sub_1ABA7C144()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1ABA7C164(uint64_t result)
{
  *(result + 8) = sub_1ABC17E20;
  v2 = *(v1 + 208);
  v3 = *(v1 + 192);
  return result;
}

uint64_t sub_1ABA7C1BC()
{

  return sub_1ABC2AB40();
}

void sub_1ABA7C1E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10@<Q0>)
{

  sub_1ABC2E014(a1, a2, a3, a4, a5, a6, a7, a8, a10.n128_i64[0], a10.n128_i64[1], a9, v10);
}

uint64_t sub_1ABA7C1FC()
{

  return swift_once();
}

uint64_t sub_1ABA7C230()
{

  return sub_1ABF252C4();
}

uint64_t sub_1ABA7C254()
{

  return sub_1ABF24F84();
}

void sub_1ABA7C300()
{
  v3 = *(v2 - 96);
  v4 = *(v2 - 88);
  v5 = v0 + *(v1 + 36);
  *v5 = *(v2 - 104);
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  *(v2 - 65) = 6;
}

uint64_t sub_1ABA7C32C()
{

  return swift_beginAccess();
}

uint64_t sub_1ABA7C344()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
}

uint64_t sub_1ABA7C35C()
{

  return sub_1ABD2162C(v0, type metadata accessor for LogSignpost);
}

void sub_1ABA7C384()
{
  sub_1ABA84B54(v0);

  JUMPOUT(0x1AC5AB8B0);
}

uint64_t sub_1ABA7C3B8()
{

  return sub_1ABF252E4();
}

uint64_t sub_1ABA7C3D8()
{

  return swift_getWitnessTable();
}

uint64_t sub_1ABA7C41C(unint64_t *a1)
{

  return sub_1ABD3CCE8(a1);
}

uint64_t sub_1ABA7C4B4()
{

  return swift_allocObject();
}

__n128 sub_1ABA7C4D0()
{
  result = *(v0 - 144);
  v2 = *(v0 - 128);
  v3 = *(v0 - 120);
  v4 = *(v0 - 112);
  return result;
}

void *sub_1ABA7C50C(void *__src, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char __dst)
{

  return memcpy(&__dst, __src, 0x58uLL);
}

uint64_t sub_1ABA7C52C()
{
  *(v2 + 16) = v1;
  v5 = *(v3 - 256);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(v3 - 200) = v2;
  v7 = v2 + v6 + *(v5 + 72) * v0;
  v8 = *(v3 - 240);

  return sub_1ABD9BEDC(v8, v7, type metadata accessor for CustomGraphPerson);
}

void sub_1ABA7C57C()
{
  *(v0 - 312) = 0;
  *(v0 - 304) = 0;
  *(v0 - 296) = 0;
  *(v0 - 232) = 0;
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
}

void sub_1ABA7C5DC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_1ABA7C64C()
{

  JUMPOUT(0x1AC5AA8D0);
}

uint64_t sub_1ABA7C668()
{

  return sub_1ABF24E64();
}

uint64_t sub_1ABA7C6A8(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 1;

  return swift_willThrow();
}

uint64_t sub_1ABA7C6D8()
{

  return swift_beginAccess();
}

void sub_1ABA7C708()
{
  v2 = *(v0 + 16) + 1;

  sub_1ABAD9790();
}

uint64_t sub_1ABA7C740()
{

  return sub_1ABF24ED4();
}

uint64_t sub_1ABA7C75C()
{

  return sub_1ABF23834();
}

uint64_t sub_1ABA7C78C()
{

  return sub_1ABF25054();
}

uint64_t sub_1ABA7C7AC()
{
  result = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v7 = *(v0 + 216);
  v8 = *(v0 + 217);
  return result;
}

uint64_t sub_1ABA7C7E0@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;
  result = v1 - 96;
  v3 = *(v1 - 136);
  return result;
}

uint64_t sub_1ABA7C7F8()
{
  v2 = *(v0 + 104);
  *(v0 + 96) = *(v0 + 96);
  *(v0 + 104) = v2;
}

uint64_t sub_1ABA7C860()
{
  v2 = *(v0 - 104);

  return sub_1ABF24EC4();
}

unint64_t sub_1ABA7C8B0()
{
  *(v2 + 16) = v0;
  v4 = *(v3 + 32);
  return v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v1;
}

unsigned __int8 *sub_1ABA7C8D8@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 *a4@<X4>, unsigned __int8 *a5@<X6>, void *a6@<X8>)
{
  v7 = *(v6 + 24);
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = **(v6 + 16);
  *a6 = *result;
  a6[1] = a2;
  return result;
}

uint64_t sub_1ABA7C930(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 1;

  return swift_willThrow();
}

uint64_t LRUCache.createOrGet(_:initializer:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v69 = a3;
  v70 = a2;
  v73 = a4;
  v75 = *(*v5 + 80);
  v74 = *(v75 - 8);
  v7 = *(v74 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v66 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v68 = &v64 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v64 - v12;
  v15 = *(v14 + 88);
  sub_1ABA7EB00();
  v16 = sub_1ABF247E4();
  sub_1ABA7BD7C();
  v18 = v17;
  v20 = *(v19 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v64 - v22;
  sub_1ABA7BD7C();
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA7F800(v29, v64);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v64 - v31;
  v77 = a1;
  LRUCache.get(_:)(v23);
  if (sub_1ABA7E1E0(v23, 1, v15) == 1)
  {
    v71 = v15;
    v72 = v25;
    (*(v18 + 8))(v23, v16);
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7DE3C();
      swift_once();
    }

    v33 = sub_1ABF237F4();
    sub_1ABA7AA24(v33, qword_1ED871B40);
    v34 = v74;
    v35 = v75;
    v36 = *(v74 + 16);
    v37 = v66;
    v36(v66, v77, v75);
    v38 = sub_1ABF237D4();
    v39 = sub_1ABF24654();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v78 = v65;
      *v40 = 136315138;
      HIDWORD(v64) = v39;
      v36(v68, v37, v35);
      v41 = sub_1ABF23C74();
      v43 = v42;
      (*(v34 + 8))(v37, v35);
      v44 = sub_1ABADD6D8(v41, v43, &v78);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_1ABA78000, v38, BYTE4(v64), "LRUCache Miss for %s", v40, 0xCu);
      sub_1ABA84B54(v65);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    else
    {

      v45 = (*(v34 + 8))(v37, v35);
    }

    v60 = v71;
    v61 = v67;
    v62 = v76;
    result = v70(v45);
    if (!v62)
    {
      LRUCache.set(_:forKey:)(v61, v77);
      return (*(v72 + 32))(v73, v61, v60);
    }
  }

  else
  {
    v46 = *(v25 + 32);
    v72 = v25 + 32;
    v70 = v46;
    (v46)(v32, v23, v15);
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7DE3C();
      swift_once();
    }

    v47 = sub_1ABF237F4();
    sub_1ABA7AA24(v47, qword_1ED871B40);
    v48 = v74;
    v49 = v75;
    v50 = *(v74 + 16);
    v50(v13, v77, v75);
    v51 = sub_1ABF237D4();
    v52 = sub_1ABF24654();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v77 = v32;
      v54 = v53;
      v55 = swift_slowAlloc();
      v71 = v15;
      v69 = v55;
      v78 = v55;
      *v54 = 136315138;
      v50(v68, v13, v49);
      v56 = sub_1ABF23C74();
      v58 = v57;
      (*(v48 + 8))(v13, v49);
      v59 = sub_1ABADD6D8(v56, v58, &v78);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_1ABA78000, v51, v52, "LRUCache Hit for %s", v54, 0xCu);
      sub_1ABA84B54(v69);
      v15 = v71;
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      v32 = v77;
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    else
    {

      (*(v48 + 8))(v13, v49);
    }

    return (v70)(v73, v32, v15);
  }

  return result;
}

size_t sub_1ABA7CFD8(void *a1)
{
  result = j__malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t sub_1ABA7D034()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1ABA7D06C()
{

  return swift_once();
}

__n128 sub_1ABA7D0B0(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11)
{
  result = a11;
  a1[1] = a11;
  a1[2].n128_u64[0] = v11;
  a1[2].n128_u64[1] = v12;
  return result;
}

uint64_t sub_1ABA7D178()
{

  return swift_once();
}

char *sub_1ABA7D268()
{

  return sub_1ABADE01C(0, v0, 0);
}

uint64_t sub_1ABA7D288()
{
  v1 = *(*(v0 - 200) + 8);
  result = *(v0 - 104);
  v3 = *(v0 - 96);
  return result;
}

uint64_t sub_1ABA7D2E4()
{

  return sub_1ABF22724();
}

uint64_t sub_1ABA7D300(uint64_t a1)
{
  v2 = *(v1 - 96);
  v3 = *(*(v1 - 88) + 56) + *(v2 + 72) * a1;
  v4 = *(v2 + 16);
  result = *(v1 - 104);
  v6 = *(v1 - 120);
  return result;
}

id sub_1ABA7D384@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);
  v4 = v3[6];
  sub_1ABA93E20(v3 + 2, v3[5]);
  v5 = *(v4 + 8);

  return v2;
}

__n128 sub_1ABA7D418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  *v9 = a9;
  return result;
}

__n128 sub_1ABA7D480()
{
  result = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  return result;
}

uint64_t sub_1ABA7D498(unint64_t *a1)
{

  return sub_1ABB93C74(a1);
}

__n128 sub_1ABA7D500()
{
  *(v0 + 400) = *(v0 + 92);
  v1 = *(v0 + 72);
  *(v0 + 408) = *(v0 + 80);
  *(v0 + 416) = v1;
  *(v0 + 424) = *(v0 + 64);
  result = *(v0 + 6672);
  v3 = *(v0 + 6688);
  *(v0 + 2560) = result;
  *(v0 + 2576) = v3;
  *(v0 + 2552) = *(v0 + 320);
  v4 = *(v0 + 152);
  *(v0 + 2592) = *(v0 + 144);
  *(v0 + 2600) = v4;
  return result;
}

void sub_1ABA7D554()
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *v1;

  sub_1ABBBC000(0xFuLL, v3, v5, v0);
}

uint64_t sub_1ABA7D578@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 160);

  return sub_1ABF24F54();
}

unint64_t sub_1ABA7D5CC(uint64_t a1)
{

  return sub_1ABBCF414(a1);
}

uint64_t sub_1ABA7D608()
{

  return swift_once();
}

uint64_t sub_1ABA7D654@<X0>(uint64_t a1@<X8>)
{
  *v4 = a1;
  *(v4 + 8) = v1;
  *(v4 + 16) = 2;
  *(v4 + 24) = v2;
  v6 = *(v5 + 32);
  return v4 + *(v3 + 24);
}

uint64_t sub_1ABA7D674()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[9];
  v11 = v0[10];

  return sub_1ABBF615C(v2);
}

void sub_1ABA7D6B0()
{

  sub_1ABB32E40();
}

uint64_t sub_1ABA7D72C()
{

  return swift_once();
}

uint64_t sub_1ABA7D79C@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 96) = v2;
  *(v3 - 120) = a1;
  *(v3 - 112) = v1;

  return sub_1ABF21EB4();
}

uint64_t sub_1ABA7D804()
{

  return sub_1ABF24E64();
}

uint64_t sub_1ABA7D834()
{

  return sub_1ABF23D34();
}

uint64_t sub_1ABA7D854()
{

  return swift_once();
}

void sub_1ABA7D898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a2 = *(v19 - 72);
  *(a2 + 8) = a13;
  *(a2 + 16) = a12;
  *(a2 + 24) = a11;
  *(a2 + 32) = v17;
  *(a2 + 40) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v15;
  *(a2 + 64) = v16;
  *(a2 + 72) = v13;
}

uint64_t sub_1ABA7D8C4()
{

  return swift_getObjectType();
}

void sub_1ABA7D8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  GraphObjectBareContextProtocol.graphObject<A>(for:)(v23 - 72, v20, v21, v22, a1, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1ABA7D930()
{

  return swift_getWitnessTable();
}

void sub_1ABA7D970(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15, unsigned __int8 a16)
{
  *v16 = a11;
  *(v16 + 8) = a1;
  *(v16 + 24) = a14;
  *(v16 + 40) = a15;
  *(v16 + 48) = a16;
}

uint64_t sub_1ABA7DA98()
{

  return sub_1ABF24CD4();
}

__n128 sub_1ABA7DB18@<Q0>(uint64_t a1@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 41);
  v6 = v1 - 160;
  *(v6 + 41) = v5;
  *(v6 + 16) = v3;
  *(v6 + 32) = v4;
  *v6 = result;
  return result;
}

uint64_t sub_1ABA7DB38()
{

  return sub_1ABF25054();
}

void sub_1ABA7DC94()
{
  *(v0 - 332) = 0;
  *(v0 - 320) = 0;
  *(v0 - 312) = 0;
  *(v0 - 304) = 0;
  *(v0 - 296) = 0;
  *(v0 - 232) = 0;
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
}

_BYTE *sub_1ABA7DCDC()
{
  v4 = *(v3 - 176);
  *v4 = *v0;
  v5 = *(v1 + 32);
  return &v4[*(v2 + 48)];
}

uint64_t sub_1ABA7DD18()
{

  return swift_once();
}

void sub_1ABA7DD4C()
{

  sub_1ABADC4FC();
}

uint64_t sub_1ABA7DDC0(unsigned __int8 *a1)
{
  result = *a1;
  v3 = *(v1 + 16);
  return result;
}

void sub_1ABA7DDD0()
{
  v2 = *(v0 + 16);
  v4 = v1[3];
  v5 = v1[4];
  v3 = *(v1[2] + 8);
}

uint64_t sub_1ABA7DDF0()
{

  return sub_1ABF24F54();
}

void *sub_1ABA7DE20()
{

  return memcpy((v0 + 280), (v0 + 504), 0x69uLL);
}

uint64_t sub_1ABA7DE50@<X0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 16 * v1);
  result = *v2;
  v4 = v2[1];
  return result;
}

void sub_1ABA7DEFC()
{
  *(v2 + 16) = v0;
  v4 = *(v3 - 184);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(v3 - 168) = v2;
  v6 = v2 + v5 + *(v4 + 72) * v1;
}

void sub_1ABA7DF24()
{
  v0[19] = 0;
  v0[20] = 0;
  v0[21] = 0;
}

void sub_1ABA7DFA4(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8, uint64_t a9)
{
  *a1 = a5;
  *(a1 + 8) = a9;
  *(a1 + 16) = a8;
  *(a1 + 24) = v9;
  *(a1 + 32) = a7;
}

uint64_t sub_1ABA7DFD8()
{
  v1 = *(*(v0 - 184) + 8);
  result = *(v0 - 96);
  v3 = *(v0 - 88);
  return result;
}

uint64_t sub_1ABA7DFE8()
{

  return swift_getWitnessTable();
}

uint64_t sub_1ABA7E010()
{

  return sub_1ABF24CD4();
}

uint64_t sub_1ABA7E078()
{

  return sub_1ABF24F84();
}

uint64_t sub_1ABA7E09C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1ABAB47C4(a1, a2, a3);
}

uint64_t sub_1ABA7E0C0()
{
  v2 = *(v0 - 104);

  return sub_1ABF24EC4();
}

void sub_1ABA7E118()
{
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 76) = 0;
  *(v0 + 80) = 0;
}

uint64_t sub_1ABA7E134@<X0>(char a1@<W8>)
{
  *(v1 + 312) = a1;

  return sub_1ABF24DD4();
}

uint64_t sub_1ABA7E180()
{

  return swift_allocObject();
}

uint64_t sub_1ABA7E208(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D1AC0, &qword_1ABF33C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1ABA7E2E4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = *(a5 + 56);
  return result;
}

uint64_t sub_1ABA7E314()
{

  return swift_task_alloc();
}

uint64_t sub_1ABA7E39C()
{

  return sub_1ABF229B4();
}

uint64_t sub_1ABA7E3C0()
{
  v2 = *(v0 - 96);

  return sub_1ABF24EC4();
}

uint64_t sub_1ABA7E428(uint64_t *a1)
{
  result = *a1;
  v3 = a1[1];
  v4 = a1[2];
  return result;
}

uint64_t sub_1ABA7E43C()
{
  v4 = (*(v0 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v2)))));
  result = v4[1];
  *v1 = *v4;
  v1[1] = result;
  return result;
}

void sub_1ABA7E498(uint64_t a1@<X8>)
{
  *(v1 - 72) = a1;
  *(v1 - 96) = 0;
  *(v1 - 88) = 0;
  *(v1 - 112) = 0;
  *(v1 - 104) = 1;
}

__n128 sub_1ABA7E4B0()
{
  result = *&STACK[0x4A0];
  v1 = *&STACK[0x4B0];
  *&STACK[0x4D0] = *&STACK[0x4A0];
  *&STACK[0x4E0] = v1;
  LOBYTE(STACK[0x4F0]) = STACK[0x4C0];
  return result;
}

void sub_1ABA7E4D0()
{

  EntityClass.ancestorClassesSet.getter();
}

uint64_t sub_1ABA7E518()
{
  v2 = *(v0 - 152);

  return sub_1ABF24D94();
}

__n128 sub_1ABA7E53C@<Q0>(uint64_t a1@<X8>)
{
  *(v3 + 2744) = a1;
  *(v3 + 2752) = v4;
  v6 = *(v3 + 216);
  *(v3 + 2760) = *(v3 + 224);
  *(v3 + 2768) = v6;
  *(v3 + 2776) = v5;
  v7 = *(v3 + 232);
  *(v3 + 2784) = *(v3 + 240);
  *(v3 + 2792) = v7;
  v8 = *(v3 + 304);
  *(v3 + 2800) = *(v3 + 312);
  *(v3 + 2808) = v8;
  *(v3 + 2816) = *(v3 + 296);
  result = *(v3 + 6544);
  v10 = *(v3 + 6576);
  *(v2 + 288) = *(v3 + 6560);
  *(v2 + 304) = v10;
  *(v2 + 272) = result;
  LODWORD(v8) = *(v3 + 6536);
  *(v3 + 2876) = *(v1 + 100);
  *(v3 + 2872) = v8;
  return result;
}

void sub_1ABA7E5D0()
{

  os_unfair_lock_unlock(v0 + 6);
}

uint64_t sub_1ABA7E608()
{

  return swift_getWitnessTable();
}

uint64_t sub_1ABA7E64C()
{
  v1 = v0[13];
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  return v0[15];
}

uint64_t sub_1ABA7E698(uint64_t a1)
{

  return sub_1ABB13550(v1, a1);
}

uint64_t sub_1ABA7E6E4()
{

  return sub_1ABC2C97C();
}

__n128 sub_1ABA7E74C(__n128 *a1)
{
  result = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = a1[2].n128_u16[0];
  return result;
}

uint64_t sub_1ABA7E7A8()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1ABA7E7D8()
{
  result = sub_1ABA84B54(*(v0 - 136));
  v2 = *(v0 - 128);
  return result;
}

unint64_t sub_1ABA7E810(uint64_t a1)
{

  return sub_1ABD0C0F4(a1);
}

__n128 sub_1ABA7E834()
{
  result = *(v0 + 32);
  v3 = *(v0 + 48);
  *(v1 - 128) = result;
  *(v1 - 112) = v3;
  *(v1 - 96) = *(v0 + 64);
  return result;
}

uint64_t sub_1ABA7E854(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[9];
  v9 = a1[10];
  return a1[2];
}

uint64_t sub_1ABA7E878()
{

  return sub_1ABF252C4();
}

uint64_t sub_1ABA7E8B4()
{
  v2 = *(v0 - 120);

  return sub_1ABF24EC4();
}

uint64_t sub_1ABA7E8F4()
{
  result = *(v0 - 168);
  v2 = *(v0 - 160);
  v3 = *(v0 - 144);
  return result;
}

void sub_1ABA7E904(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  *(a1 + 73) = *(v4 + 41);
  *(a1 + 48) = a3;
  *(a1 + 64) = a4;
  *(a1 + 32) = a2;
}

uint64_t sub_1ABA7E928()
{
}

void sub_1ABA7E940()
{

  EntityClass.ancestorClassesSet.getter();
}

void sub_1ABA7EA20()
{
  sub_1ABA84B54(v0);

  JUMPOUT(0x1AC5AB8B0);
}

uint64_t sub_1ABA7EA68()
{

  return swift_getWitnessTable();
}

uint64_t sub_1ABA7EA90@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10@<Q0>)
{

  return sub_1ABDFAB18(a1, a2, a3, a4, a5, a6, a7, a8, a10.n128_i64[0], a10.n128_i64[1], a9, v10, v11);
}

uint64_t sub_1ABA7EAAC()
{

  return sub_1ABF24F84();
}

void sub_1ABA7EAD8()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[24];
  v5 = v0[22];
}

uint64_t sub_1ABA7EAEC()
{
  result = v0 + 504;
  v2 = *(v0 + 88);
  return result;
}

uint64_t sub_1ABA7EB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{

  return sub_1ABB242A4(v30 - 176, &a30);
}

uint64_t sub_1ABA7EB24(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(result + 16);
  return result;
}

void sub_1ABA7EB48()
{

  sub_1ABAAA4F4();
}

_OWORD *sub_1ABA7EB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10)
{
  *(v10 + 16) = v11;

  return sub_1ABDE4244(&a10, (v10 + v13 * v12 + 32));
}

void *sub_1ABA7EBA4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, char __src)
{

  return memcpy((a1 + 32), &__src, 0x69uLL);
}

void sub_1ABA7EBC0(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *a1 = a9;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 32) = a10;
}

uint64_t sub_1ABA7EC1C()
{

  return sub_1ABF24D94();
}

uint64_t sub_1ABA7EC3C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 216);

  return sub_1ABF24EC4();
}

void sub_1ABA7EC68(uint64_t a1@<X8>)
{
  v3 = *(a1 + 32);
  v2 = a1 + 32;
  v4 = v1 + ((*(v2 + 48) + 32) & ~*(v2 + 48));
  v5 = *(v2 + 40);
}

uint64_t sub_1ABA7EC84()
{
  *(v0 - 72) = 0;
  v2 = *(v0 - 128);
  return *(v0 - 120);
}

uint64_t sub_1ABA7ECB8()
{

  return sub_1ABF24D94();
}

uint64_t sub_1ABA7ED08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{

  return sub_1ABAE42A8(&a40, &a22);
}

uint64_t sub_1ABA7ED20(uint64_t a1, uint64_t a2)
{
  result = sub_1ABA7AA24(v2, a2);
  v4 = *(v2 - 8);
  return result;
}

void sub_1ABA7EDBC()
{
  *(v0 + 16) = *(v1 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
}

uint64_t sub_1ABA7EE10()
{

  return sub_1ABF22B74();
}

void sub_1ABA7EE3C()
{
  v0[8] = 0;
  v0[9] = 0;
  v0[3] = 0;
}

uint64_t sub_1ABA7EE60()
{

  return sub_1ABB38A78(v0, v2, v1);
}

uint64_t sub_1ABA7EEA4()
{
  result = *(v0 + 16);
  v2 = *(result - 8);
  return result;
}

uint64_t sub_1ABA7EEBC()
{
  v2 = *(v0 - 24);
  v4 = *(v0 - 2);
  v3 = *(v0 - 1);
  v5 = *v0;
}

uint64_t sub_1ABA7EEFC@<X0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 16 * v1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_1ABA7EF18()
{
  v2 = *(v1 - 160);
  v3 = *(*(v2 + 48) + v0);
  v4 = *(v1 - 96);
  v5 = *(v2 + 56) + *(v4 + 72) * v0;
  v6 = *(v4 + 16);
  result = *(v1 - 104);
  v8 = *(v1 - 120);
  return result;
}

uint64_t sub_1ABA7EF58@<X0>(uint64_t a1@<X8>)
{
  *v2 = v3;
  v2[1] = v5;
  v2[2] = ~v1;
  v2[3] = a1;
  v2[4] = v6;
  return v4;
}

__n128 sub_1ABA7EFB4()
{
  result = *(v2 - 160);
  v4 = *(v2 - 144);
  v5 = *(v2 - 136);
  v6 = *(v0 + 272);
  *v1 = result;
  return result;
}

uint64_t sub_1ABA7EFD4()
{

  return sub_1ABF24A74();
}

uint64_t sub_1ABA7F05C(uint64_t a1, _BYTE *a2)
{
  *a2 = 6;

  return swift_willThrow();
}

id sub_1ABA7F0A0()
{

  return sub_1ABBADD64(v1, v0, v3, v2);
}

uint64_t sub_1ABA7F0DC()
{

  return swift_once();
}

unint64_t sub_1ABA7F0FC(uint64_t a1)
{

  return sub_1ABBCF414(a1);
}

__n128 sub_1ABA7F138()
{
  v2 = *(v1 - 136);
  *(v1 - 96) = *(v1 - 152);
  *(v1 - 80) = v2;
  result = *(v1 - 120);
  *(v1 - 64) = result;
  *(v1 - 48) = *(v1 - 104);
  v4 = *(v0 + 16);
  return result;
}

void sub_1ABA7F1AC()
{

  sub_1ABADE1CC();
}

id sub_1ABA7F1D8(uint64_t a1)
{

  return [v1 (v2 + 1400)];
}

void sub_1ABA7F1F8()
{
  *(v0 + 8 * (v1 >> 6) + 64) |= 1 << v1;
  *(*(v0 + 48) + v1) = 18;
  v2 = *(v0 + 56);
}

uint64_t sub_1ABA7F240()
{
}

__n128 sub_1ABA7F294()
{
  result = v0[1];
  v2 = v0[2].n128_u64[0];
  return result;
}

uint64_t sub_1ABA7F2A0()
{

  return swift_beginAccess();
}

uint64_t sub_1ABA7F2CC()
{

  return sub_1ABF24F84();
}

uint64_t sub_1ABA7F2F8()
{

  return sub_1ABF22D24();
}

void sub_1ABA7F32C()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABA7F34C()
{
  result = v0;
  v3 = *(v1 - 72);
  v4 = *(v1 - 96);
  return result;
}

void sub_1ABA7F360()
{
  v2 = *(v1 - 320);
  v3 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  *(v1 - 136) = *(v2 + 72);
  v4 = *(v1 - 328);
  v5 = *(v1 - 144);
}

uint64_t sub_1ABA7F3A8()
{
  v2 = *(*(v0 + 16) + 16);

  return swift_beginAccess();
}

uint64_t sub_1ABA7F3D0()
{

  return swift_getObjectType();
}

uint64_t sub_1ABA7F424()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1ABA7F484()
{
  *(v0 + 8 * (v4 >> 6) + 64) |= 1 << v4;
  v6 = (*(v0 + 48) + 16 * v4);
  *v6 = v3;
  v6[1] = v2;
  *(*(v0 + 56) + 8 * v4) = v1;
}

uint64_t sub_1ABA7F4E0()
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_1ABA7F540()
{
  v2 = *(v0 - 72);

  return sub_1ABD39830(v2, type metadata accessor for AssetRegistryAssetLocalAvailabilityInfo);
}

uint64_t sub_1ABA7F590()
{

  return sub_1ABF25054();
}

__n128 sub_1ABA7F5D0@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 - 224);
  v3 = *(v1 - 208);
  v4 = *(v1 - 192);
  *(a1 + 73) = *(v1 - 183);
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *(a1 + 32) = result;
  return result;
}

__n128 sub_1ABA7F5F0@<Q0>(uint64_t a1@<X8>)
{
  result = *a1;
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 41);
  return result;
}

uint64_t sub_1ABA7F600()
{
}

void sub_1ABA7F618()
{

  EntityClass.ancestorClassesSet.getter();
}

__n128 sub_1ABA7F638()
{
  result = *(v0 - 144);
  v2 = *(v0 - 128);
  v3 = *(v0 - 120);
  v4 = *(v0 - 112);
  return result;
}

uint64_t sub_1ABA7F648(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(result + 16) = a17;
  *(result + 24) = a18;
  return result;
}

void sub_1ABA7F678()
{
  *(v0 - 364) = 1;
  *(v0 - 360) = 1;
  *(v0 - 356) = 1;
  *(v0 - 352) = 1;
  *(v0 - 348) = 1;
}

uint64_t sub_1ABA7F6C0()
{

  return sub_1ABF218E4();
}

void sub_1ABA7F6E0(uint64_t a1, uint64_t a2, int a3)
{
  *(v8 - 120) = v5;
  *(v8 - 112) = v4;
  *(v8 - 136) = v3;
  *(v8 - 128) = a2;
  *(v8 - 140) = a3;
  v9 = *(*(v8 - 152) + 48);
  v10 = *(v6 + 56);
  **(v8 - 184) = *(*(v6 + 48) + v7);
}

uint64_t sub_1ABA7F724()
{

  return sub_1ABF241F4();
}

void sub_1ABA7F750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{

  sub_1ABDEB5C8(v10, v11, v12, a10);
}

void sub_1ABA7F7DC()
{
  v0[29] = 0;
  v0[30] = 0;
  v0[31] = 0;
  v0[32] = 0;
  v0[34] = 0;
  v0[35] = 0;
  v0[36] = 0;
  v0[37] = 0;
  v0[38] = 0;
  v0[39] = 0;
}

void sub_1ABA7F848()
{

  sub_1ABAD88DC();
}

uint64_t sub_1ABA7F880()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 112);
  return result;
}

uint64_t sub_1ABA7F8B4(uint64_t result)
{
  v1 = *(result + 64);
  *(result + 32);
  return result;
}

uint64_t sub_1ABA7F8FC(uint64_t a1)
{
  *(v1 + 16) = v2;
  *(v1 + 24) = 2 * ((a1 - 32) / 32);
  return v1 + 32;
}

void *sub_1ABA7F920()
{
  *(v2 - 88) = v1;

  return sub_1ABADEA0C(0, v0, 0);
}

uint64_t sub_1ABA7F974()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1ABA7F994()
{
}

void sub_1ABA7FA2C()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABA7FA50()
{

  return sub_1ABF24D94();
}

uint64_t sub_1ABA7FA74(uint64_t a1)
{

  return TripleEnumeratorProtocol<>.triples<A>(for:)(v4, v1, v3, a1, v2);
}

uint64_t sub_1ABA7FAC8()
{
}

void sub_1ABA7FAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  a10 = *v20;
  v23 = *(a2 + 16);
  v24 = *(a2 + 24);

  GraphObjectBareContextProtocol.graphObject<A>(for:)(&a10, a3, v23, a4, v24, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1ABA7FB24()
{
  *(v2 - 128) = *(v1 + *(v0 + 48));
  *(v2 - 124) = 0;

  return swift_beginAccess();
}

id sub_1ABA7FB74@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);
  v4 = v3[11];
  sub_1ABA93E20(v3 + 7, v3[10]);
  v5 = *(v4 + 8);

  return v2;
}

void sub_1ABA7FBEC(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

__n128 sub_1ABA7FC3C()
{
  result = *&STACK[0x3E0];
  v1 = *&STACK[0x3F0];
  *&STACK[0x410] = *&STACK[0x3E0];
  *&STACK[0x420] = v1;
  LOBYTE(STACK[0x430]) = STACK[0x400];
  return result;
}

unint64_t sub_1ABA7FC7C()
{
  *v1 = v0;

  return sub_1ABAAFEB4();
}

uint64_t sub_1ABA7FCA8()
{
  v4 = v0[1];
  *(v3 - 160) = *v0;
  *(v3 - 144) = v4;
  *(v3 - 128) = v0[2];
  *(v2 + 105) = *(v0 + 41);
  return v1;
}

__n128 sub_1ABA7FCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19)
{
  *v19 = a19;
  *(v19 + 24) = *(v20 + 24);
  result = *(v20 + 40);
  *(v19 + 40) = result;
  *(v19 + 56) = *(v20 + 56);
  return result;
}

double sub_1ABA7FD38@<D0>(uint64_t a1@<X8>)
{
  result = *(*(v1 + 24) + a1);
  v3 = *(*(v1 + 32) + a1);
  return result;
}

void sub_1ABA7FD6C()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABA7FD88(unint64_t *a1)
{

  return sub_1ABAB47C4(a1, v1, v2);
}

uint64_t sub_1ABA7FDA0()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1ABA7BBC0();
  *v4 = v3;

  sub_1ABA7BBE0();

  return v5();
}

uint64_t sub_1ABA7FE80()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[3];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  sub_1ABA7EB00();
  type metadata accessor for LRUCacheNode();

  v6 = sub_1ABF239F4();

  return v6;
}

uint64_t LRUCache.set(_:forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v67 = a1;
  v68 = a2;
  v4 = *v2;
  sub_1ABA81044();
  v6 = *(v5 + 80);
  sub_1ABF247E4();
  sub_1ABA7BD7C();
  v62 = v8;
  v63 = v7;
  v10 = *(v9 + 64);
  (MEMORY[0x1EEE9AC00])();
  sub_1ABA7F800(v11, v60[0]);
  (MEMORY[0x1EEE9AC00])();
  v61 = v60 - v12;
  sub_1ABA7BD7C();
  v64 = v13;
  v15 = *(v14 + 64);
  v16 = (MEMORY[0x1EEE9AC00])();
  v18 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v60 - v19;
  sub_1ABA81044();
  v22 = *(v21 + 88);
  v66 = sub_1ABF247E4();
  sub_1ABA7BD7C();
  v24 = v23;
  v26 = *(v25 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v60 - v28;
  swift_beginAccess();
  v30 = v3[3];
  sub_1ABA81044();
  v32 = *(v31 + 96);
  v33 = type metadata accessor for LRUCacheNode();
  sub_1ABF23A64();
  v34 = v69;
  if (v69)
  {
    swift_endAccess();
    (*(*(v22 - 8) + 16))(v29, v67, v22);
    sub_1ABA81BA0();
    v35 = *(*v34 + 112);
    sub_1ABA83C2C();
    v36 = v66;
    (*(v24 + 40))(v34 + v35, v29, v66);
    swift_endAccess();
    LRUCache.get(_:)(v29);

    return (*(v24 + 8))(v29, v36);
  }

  v60[0] = v20;
  v60[1] = v33;
  v60[2] = v32;
  v66 = v18;
  swift_endAccess();
  v38 = sub_1ABA7FE80();
  v39 = v67;
  v41 = v64;
  v40 = v65;
  v42 = v6;
  if (v38 >= v3[2])
  {
    v43 = *(*v3[4] + 120);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v45 = Strong;
      v46 = *(*Strong + 104);
      swift_beginAccess();
      v48 = v61;
      v47 = v62;
      v49 = v45 + v46;
      v50 = v63;
      (*(v62 + 16))(v61, v49, v63);
      if (sub_1ABA7E1E0(v48, 1, v42) != 1)
      {
        v56 = v60[0];
        (*(v41 + 32))(v60[0], v48, v42);
        sub_1ABA83004(v45);
        (*(v41 + 16))(v66, v56, v42);
        v70 = 0;
        sub_1ABA83C2C();
        sub_1ABA7EB00();
        sub_1ABF23A44();
        v40 = v65;
        sub_1ABF23A74();
        swift_endAccess();

        (*(v41 + 8))(v56, v42);
LABEL_13:
        v39 = v67;
        goto LABEL_14;
      }

      (*(v47 + 8))(v48, v50);
    }

    v51 = v40;
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7DE3C();
      swift_once();
    }

    v52 = sub_1ABF237F4();
    sub_1ABA7AA24(v52, qword_1ED871B40);
    v53 = sub_1ABF237D4();
    v54 = sub_1ABF24674();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1ABA78000, v53, v54, "LRUCache: Unable to get LRU node or key.", v55, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    v40 = v51;
    goto LABEL_13;
  }

LABEL_14:
  v57 = *(v41 + 16);
  v58 = v68;
  v57(v40, v68, v42);
  sub_1ABA7B9B4(v40, 0, 1, v42);
  (*(*(v22 - 8) + 16))(v29, v39, v22);
  sub_1ABA81BA0();
  v59 = sub_1ABA81FBC(v40, v29);
  sub_1ABA8138C(v59);
  v57(v66, v58, v42);
  v70 = v59;
  sub_1ABA83C2C();
  sub_1ABF23A44();

  sub_1ABF23A74();
  swift_endAccess();
}

uint64_t sub_1ABA805C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{

  return sub_1ABAE42A8(&a58, &a40);
}

uint64_t sub_1ABA805D8()
{
  v2 = *(v0 + 16);

  return type metadata accessor for CustomGraphSongEvent(0);
}

uint64_t sub_1ABA8060C()
{

  return sub_1ABF24C64();
}

void sub_1ABA8062C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16) + 1;

  sub_1ABAD91B4();
}

uint64_t sub_1ABA80668()
{

  return sub_1ABF23B44();
}

uint64_t sub_1ABA80688()
{

  return sub_1ABF24D94();
}

uint64_t sub_1ABA806BC(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_1ABA80750()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1ABA80770()
{
  v2 = *(v0 - 320);

  return swift_beginAccess();
}

double sub_1ABA80798()
{
  result = v3 * v4;
  *(v0 + 16) = v1;
  *(v0 + 8 * v2 + 32) = v3 * v4;
  return result;
}

uint64_t sub_1ABA807D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  v13 = *(v11 + 56) + 40 * a1;

  return sub_1ABA93E64(v13, va);
}

uint64_t sub_1ABA807F8()
{

  return sub_1ABF25054();
}

uint64_t sub_1ABA80814()
{

  return sub_1ABF22724();
}

_BYTE *sub_1ABA80834(uint64_t a1)
{
  v5 = *(a1 + 48);
  *v1 = v3;
  v6 = *(v2 + 32);
  result = &v1[v5];
  v8 = *(v4 - 112);
  return result;
}

__n128 sub_1ABA808A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __n128 a14, __int128 a15, uint64_t a16, uint64_t a17, char a18)
{
  result = a14;
  *v18 = a14;
  *(v18 + 16) = a15;
  *(v18 + 32) = a16;
  *(v18 + 40) = a17;
  *(v18 + 48) = a18;
  return result;
}

__n128 sub_1ABA808C4()
{
  result = *&STACK[0x410];
  v1 = *&STACK[0x420];
  *&STACK[0x440] = *&STACK[0x410];
  *&STACK[0x450] = v1;
  LOBYTE(STACK[0x460]) = STACK[0x430];
  return result;
}

__n128 sub_1ABA808F0()
{
  result = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  return result;
}

uint64_t sub_1ABA80924()
{

  return sub_1ABAA8FA8(v1, v0);
}

void sub_1ABA80970()
{

  sub_1ABBBC000(0xFuLL, v2, v1, v0);
}

uint64_t sub_1ABA809B4()
{
  result = v0[51];
  v2 = v0[52];
  v3 = v0[53];
  v4 = v0[54];
  v5 = v0[55];
  v6 = v0[57];
  return result;
}

void sub_1ABA809C8()
{
  v2 = (*(v0 + 16) + 24);

  os_unfair_lock_lock(v2);
}

void sub_1ABA80A00()
{

  JUMPOUT(0x1AC5AB8B0);
}

uint64_t sub_1ABA80A34(uint64_t a1, uint64_t a2)
{
  sub_1ABA7AA24(v3, a2);
  v5 = *(v4 + 16);
  return v2;
}

uint64_t sub_1ABA80A84()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1ABA80AB8()
{
  v1 = *(*(v0 - 344) + 8);
  result = *(v0 - 368);
  v3 = *(v0 - 360);
  return result;
}

uint64_t sub_1ABA80AF0(uint64_t result)
{
  *v1 = result;
  *(result + 8) = v2;
  *(result + 16) = v3;
  v5 = *(v4 - 8);
  v6 = *(v3 + 80);
  return result;
}

__n128 sub_1ABA80B34()
{
  result = v0[1];
  v2 = v0[2].n128_u64[0];
  v3 = v0[2].n128_u64[1];
  return result;
}

uint64_t sub_1ABA80B5C()
{

  return sub_1ABF22D24();
}

uint64_t sub_1ABA80B88(uint64_t a1)
{
  *(v2 - 288) = a1;
  result = *(v1 + 8);
  v4 = *(**(v2 - 208) + 16);
  *(v2 - 296) = result;
  return result;
}

unint64_t sub_1ABA80C3C(uint64_t a1)
{

  return sub_1ABD0C0F4(a1);
}

void sub_1ABA80C84(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1ABA80CC0()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1ABA80CF8()
{
  v2 = *(v0 - 104);

  return sub_1ABD39830(v2, type metadata accessor for AssetRegistryAsset);
}

uint64_t sub_1ABA80D20()
{

  return sub_1ABF24D94();
}

uint64_t sub_1ABA80D40(unint64_t *a1)
{

  return sub_1ABD3CCE8(a1);
}

uint64_t sub_1ABA80DA8()
{
  result = *(v0 - 168);
  v2 = *(v0 - 160);
  v3 = *(v0 - 144);
  return result;
}

uint64_t sub_1ABA80DD0()
{

  return sub_1ABF25054();
}

uint64_t sub_1ABA80E24()
{
  v2 = *(*(v1 - 96) + 8);
  result = v0;
  v4 = *(v1 - 88);
  return result;
}

void sub_1ABA80EE0()
{
  *(v0 - 364) = 1;
  *(v0 - 360) = 1;
  *(v0 - 356) = 1;
}

uint64_t sub_1ABA80F30()
{

  return MEMORY[0x1EEDC23A0](v1, v0, v2, v2, v2);
}

void sub_1ABA80F54(uint64_t a1, unsigned int a2)
{
  *(v4 - 216) = a2;
  *(v4 - 208) = v2 + 64;
  *(v4 - 224) = v2 + 72;
  *(v4 - 200) = v3;
  *(v4 - 192) = v2;
}

uint64_t sub_1ABA80F7C()
{

  return MEMORY[0x1EEE6A548](v0, v1, v2);
}

uint64_t sub_1ABA80FD0()
{

  return sub_1ABF24C64();
}

uint64_t sub_1ABA81004()
{
  v2 = *(v0 - 96);

  return sub_1ABF24E34();
}

void sub_1ABA81030()
{
  v0[29] = 0;
  v0[30] = 0;
  v0[31] = 0;
  v0[32] = 0;
  v0[34] = 0;
  v0[35] = 0;
  v0[36] = 0;
  v0[37] = 0;
}

uint64_t sub_1ABA81050()
{

  return sub_1ABF25054();
}

uint64_t sub_1ABA8106C()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;
}

uint64_t sub_1ABA81094(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t sub_1ABA81110()
{
  *(v0 + 176) = v1;
  v4 = *(v3 + 8);
  return v2;
}

uint64_t sub_1ABA81140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  v18 = *(v16 - 72);

  return sub_1ABE386F0(va);
}

void *sub_1ABA81160@<X0>(uint64_t a1@<X8>)
{

  return sub_1ABE3EA44(v1, 0xD00000000000001DLL, (a1 - 32) | 0x8000000000000000);
}

uint64_t sub_1ABA81188()
{

  return sub_1ABF24FF4();
}

void sub_1ABA811A4(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  *a1 = a8;
  *(a1 + 8) = a9;
  *(a1 + 16) = a10;
  *(a1 + 24) = v11;
  *(a1 + 32) = a11;
}

uint64_t sub_1ABA811C4()
{

  return swift_beginAccess();
}

uint64_t sub_1ABA811DC()
{

  return sub_1ABF24ED4();
}

uint64_t sub_1ABA81238()
{

  return sub_1ABF22724();
}

void sub_1ABA812B8()
{
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 76) = 0;
  *(v0 + 80) = 0;
}

uint64_t sub_1ABA812CC()
{

  return sub_1ABF24EC4();
}

void sub_1ABA812E8()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABA81314()
{

  return swift_beginAccess();
}

void sub_1ABA81358()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABA8138C(uint64_t a1)
{
  v3 = *(**(v1 + 32) + 128);
  Strong = swift_weakLoadStrong();
  swift_weakAssign();
  if (Strong)
  {
    v5 = *(*Strong + 120);
    swift_weakAssign();
  }

  v6 = *(*a1 + 120);
  swift_weakAssign();
  v7 = *(*a1 + 128);
  swift_weakAssign();
}

uint64_t sub_1ABA8145C()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  return sub_1ABF24EC4();
}

uint64_t sub_1ABA814BC()
{

  return sub_1ABF21E14();
}

uint64_t sub_1ABA81574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ABA7B9B4(a1, 1, 1, a4);
}

uint64_t sub_1ABA815D4()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1ABA81610@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a1 = a3;
  a1[1] = a4;
  a1[2] = ~v4;
  a1[3] = v6;
  a1[4] = v5;
  return a2;
}

uint64_t sub_1ABA81634(uint64_t a1, uint64_t a2)
{
  *(a2 + 49) = 2;

  return swift_willThrow();
}

__n128 sub_1ABA81650()
{
  result = *&STACK[0x530];
  v1 = *&STACK[0x540];
  *&STACK[0x560] = *&STACK[0x530];
  *&STACK[0x570] = v1;
  LOBYTE(STACK[0x580]) = STACK[0x550];
  return result;
}

uint64_t sub_1ABA81670()
{

  return swift_allocObject();
}

double sub_1ABA81694()
{
  v3 = *(v0 + 6608);
  *(v0 + 400) = *(v0 + 6592);
  *(v0 + 416) = v3;
  v4 = *(v0 + 6560);
  *(v0 + 536) = *(v0 + 6544);
  v5 = *(v0 + 248);
  *(v0 + 432) = *(v0 + 6624);
  *(v0 + 440) = v5;
  v6 = *(v0 + 200);
  *(v0 + 448) = *(v0 + 280);
  *(v0 + 456) = v6;
  v7 = *(v0 + 216);
  v8 = *(v0 + 224);
  *(v0 + 464) = v1;
  *(v0 + 472) = v8;
  *(v0 + 480) = v7;
  *(v0 + 488) = v2;
  v9 = *(v0 + 232);
  *(v0 + 496) = *(v0 + 240);
  *(v0 + 504) = v9;
  v10 = *(v0 + 304);
  *(v0 + 512) = *(v0 + 312);
  *(v0 + 520) = v10;
  *(v0 + 528) = *(v0 + 296);
  *(v0 + 552) = v4;
  *(v0 + 568) = *(v0 + 6576);
  sub_1ABB9AE48(v0 + 400);
  return *(v0 + 568);
}

uint64_t sub_1ABA81734()
{

  return swift_once();
}

void *sub_1ABA817B8(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x8DuLL);
}

unint64_t sub_1ABA8180C()
{

  return sub_1ABAAFEB4();
}

uint64_t sub_1ABA81864()
{

  return sub_1ABC2B604();
}

uint64_t sub_1ABA818AC()
{

  return sub_1ABF22D24();
}

void sub_1ABA818CC()
{
  *(v3 - 264) = v2;
  *(v3 - 256) = v1;
  *(v3 - 200) = v0;
}

__n128 sub_1ABA81984(uint64_t a1)
{
  v2 = *(v1 - 144);
  *(a1 + 16) = *(v1 - 160);
  *(a1 + 32) = v2;
  *(a1 + 48) = *(v1 - 128);
  result = *(v1 - 119);
  *(a1 + 57) = result;
  return result;
}

uint64_t sub_1ABA819A4()
{

  return swift_allocObject();
}

uint64_t sub_1ABA819E4()
{
  v3 = *(v1 - 168);
  v4 = *(v1 - 296);
  v5 = *(v1 - 288);
  v6 = *(v1 - 156);

  return sub_1ABAA8FA8(v0, v3);
}

__n128 sub_1ABA81A10(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13)
{
  result = a13;
  a1[1] = a13;
  v15 = *v13;
  return result;
}

uint64_t sub_1ABA81A74()
{
  v2 = *(v0 - 104);

  return sub_1ABF23B64();
}

uint64_t sub_1ABA81AD0(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 3;

  return swift_willThrow();
}

id sub_1ABA81AF4(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{

  return [v11 a2];
}

uint64_t sub_1ABA81B2C()
{
  *(v6 - 232) = v3;
  *(v6 - 224) = v4;
  *(v6 - 216) = v5;
  *(v6 - 208) = v7;
  *(v6 - 200) = v8;
  *(v6 - 192) = v9;
  *(v6 - 184) = *(v6 - 72);
  *(v6 - 183) = v2;
  *(v6 - 176) = v10;
  *(v6 - 168) = v1;
  *(v6 - 160) = v0;
  v11 = *(v6 - 352);
  *(v6 - 152) = *(v6 - 344);
  *(v6 - 144) = v11;
  return v6 - 232;
}

uint64_t sub_1ABA81B6C()
{

  return sub_1ABF24B34();
}

uint64_t sub_1ABA81BA0()
{

  return sub_1ABA7B9B4(v0, 0, 1, v1);
}

uint64_t sub_1ABA81BC0@<X0>(void *a1@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *v1 = *a1;
  v1[1] = v3;
  v1[2] = v4;
  v1[3] = v5;
}

uint64_t sub_1ABA81C38()
{

  return sub_1ABF25054();
}

uint64_t sub_1ABA81C80()
{
  v3 = *(v0 + 8 * v1 + 32);
}

uint64_t sub_1ABA81CD8()
{

  return sub_1ABF24DF4();
}

uint64_t sub_1ABA81D90()
{

  return swift_once();
}

uint64_t *sub_1ABA81DE0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 104);
  sub_1ABA7B9B4(v2 + v6, 1, 1, *(*v2 + 80));
  v7 = *(*v2 + 112);
  sub_1ABA7B9B4(v2 + v7, 1, 1, *(v5 + 88));
  v8 = *(*v2 + 120);
  swift_weakInit();
  v9 = *(*v2 + 128);
  swift_weakInit();
  swift_beginAccess();
  v10 = sub_1ABF247E4();
  (*(*(v10 - 8) + 40))(v2 + v6, a1, v10);
  swift_endAccess();
  swift_beginAccess();
  v11 = sub_1ABF247E4();
  (*(*(v11 - 8) + 40))(v2 + v7, a2, v11);
  swift_endAccess();
  swift_weakAssign();
  swift_weakAssign();
  return v2;
}

uint64_t *sub_1ABA81FBC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_1ABA81DE0(a1, a2);
}

uint64_t sub_1ABA82008(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v22 = v1[5];
  v5 = v1[6];
  swift_getAssociatedTypeWitness();
  sub_1ABA80B40();
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = *(sub_1ABF247E4() - 8);
  v11 = (v7 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  sub_1ABA80B40();
  v15 = (v11 + v14 + *(v13 + 80)) & ~*(v13 + 80);
  v17 = v1[2];
  v18 = v1[3];
  v19 = *(v1 + ((*(v16 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v20 = swift_task_alloc();
  *(v3 + 16) = v20;
  *v20 = v3;
  v20[1] = sub_1ABA7FDA0;

  return sub_1ABA82218(a1, v17, v18, v1 + v7, v1 + v11, v1 + v15, v19, v4);
}

uint64_t sub_1ABA82218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v16;
  v8[8] = v17;
  v8[5] = a7;
  v8[6] = a8;
  v13 = swift_task_alloc();
  v8[9] = v13;
  *v13 = v8;
  v13[1] = sub_1ABA8250C;

  return sub_1ABA822FC(a4, a5, a6, a8, v17);
}

uint64_t sub_1ABA822FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1ABA7FDA0;

  return sub_1ABA830C8(a1, a2, a4, a5);
}

uint64_t sub_1ABA823D4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v8 = v0[2];
  sub_1ABF25114();
  swift_getAssociatedConformanceWitness();
  sub_1ABF24C24();
  v9 = *(v4 + 8);
  v0[11] = v9;
  v0[12] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v3);
  v10 = *(MEMORY[0x1E69E8938] + 4);
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_1ABA82BD4;
  v12 = v0[10];
  v13 = v0[5];
  v14 = v0[6];
  v15 = v0[3];
  v16 = v0[4];

  return MEMORY[0x1EEE6DE58](v12, v15, v16, v13);
}

uint64_t sub_1ABA8250C()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = *(v2 + 72);
  v4 = *v1;
  sub_1ABA7BBC0();
  *v5 = v4;
  *(v6 + 80) = v0;

  if (v0)
  {
    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1ABAACDB8, 0, 0);
}

uint64_t sub_1ABA8262C()
{
  sub_1ABA7BBF8();
  v2 = v0[9];
  v1 = v0[10];

  sub_1ABA7BBE0();
  v4 = v0[14];

  return v3();
}

uint64_t sub_1ABA826D8()
{

  return sub_1ABF22D14();
}

uint64_t sub_1ABA826F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 56);
  result = *(v7 + 8 * v6);
  *(v7 + 8 * v6) = v5;
  return result;
}

uint64_t sub_1ABA82700@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);
  *(v3 - 96) = v2;
  return 0;
}

uint64_t sub_1ABA82710()
{
  v1 = *(v0 - 8);
  result = *(v0 - 24);
  v3 = *(v0 - 32);
  v4 = *(v0 - 16);
  return result;
}

uint64_t sub_1ABA82724()
{
  v3 = *v0;

  return sub_1ABF24FF4();
}

__n128 sub_1ABA82774()
{
  result = *&STACK[0xA70];
  v1 = *&STACK[0xA80];
  *&STACK[0xAA0] = *&STACK[0xA70];
  *&STACK[0xAB0] = v1;
  LOBYTE(STACK[0xAC0]) = STACK[0xA90];
  return result;
}

uint64_t sub_1ABA827B8()
{

  return swift_slowAlloc();
}

void sub_1ABA827DC(uint64_t a1@<X8>)
{
  v3 = __clz(v2) | (v1 << 6);
  v4 = *(a1 + 56);
  v5 = *(*(a1 + 48) + 8 * v3);
  v6 = *(v4 + v3);
}

uint64_t sub_1ABA827F4()
{
}

uint64_t sub_1ABA82874()
{

  return swift_slowAlloc();
}

uint64_t sub_1ABA8288C()
{
}

__n128 sub_1ABA828A4(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a25)
{
  result = a25;
  a1[1] = a25;
  return result;
}

uint64_t sub_1ABA828C0()
{
  *(v0 + 112) = v2;
  v4 = *(v1 - 5);
  v6 = *(v1 - 2);
  v5 = *(v1 - 1);
  v7 = *v1;
  v8 = *(v1 - 3);
}

uint64_t sub_1ABA828E8()
{

  return swift_beginAccess();
}

uint64_t sub_1ABA82908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 104) = v2;
  *(v3 - 72) = a1;
  *(v3 - 152) = a2;

  return sub_1ABF23744();
}

void sub_1ABA82930()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
}

unint64_t sub_1ABA8295C(uint64_t a1)
{

  return sub_1ABE7C6BC(a1);
}

uint64_t sub_1ABA82980(uint64_t a1)
{

  return sub_1ABA7B9B4(v1, 1, 1, a1);
}

uint64_t sub_1ABA829C0()
{

  return sub_1ABDDDB84(v2, v3, v1, v0);
}

__n128 sub_1ABA82A44()
{
  result = *&STACK[0x230];
  v1 = *&STACK[0x240];
  *&STACK[0x260] = *&STACK[0x230];
  *&STACK[0x270] = v1;
  LOBYTE(STACK[0x280]) = STACK[0x250];
  return result;
}

void sub_1ABA82A68(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

id sub_1ABA82A88()
{

  return sub_1ABC66558(v1, v2, v3, v4, v0, v5);
}

uint64_t sub_1ABA82AC8()
{
  v2 = v0[114];
  v3 = v0[113];
  v4 = v0[111];
  v5 = v0[108];
}

uint64_t sub_1ABA82AE8(float a1)
{
  *v1 = a1;
  v4 = *(v2 + 112);
  result = *(v2 + 120);
  v5 = *(v2 + 128);
  v6 = *(v2 + 136);
  v7 = *(v2 + 144);
  v8 = *(v2 + 152);
  v9 = *(v2 + 160);
  return result;
}

__n128 sub_1ABA82B00(__n128 *a1)
{
  result = *(v1 - 160);
  a1[1] = result;
  return result;
}

uint64_t sub_1ABA82B2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8 * v2 + 32);
}

uint64_t sub_1ABA82B48(uint64_t a1, uint64_t a2)
{
  v5 = *(v3 - 140) & 1;

  return sub_1ABAC933C(v2, a2, v5);
}

uint64_t sub_1ABA82B64()
{
  v2 = *(v0 - 368);
  v3 = *(v0 - 360);

  return sub_1ABA96210(v2, v3);
}

uint64_t sub_1ABA82B84()
{
}

_BYTE *_s20IntelligencePlatform12TriplesQueryV6ClauseV04JoinE0V13joinCondition7clausesAgE0fH0O_SayAEGtcfC_0@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_1ABA82BD4()
{
  sub_1ABA7BC10();
  v3 = v2;
  v4 = v2[13];
  v5 = v2[12];
  v6 = v2[11];
  v7 = v2[10];
  v8 = v2[7];
  v9 = *v1;
  sub_1ABA7BBC0();
  *v10 = v9;
  v3[14] = v0;

  v6(v7, v8);
  if (!v0)
  {
    v12 = v3[9];
    v11 = v3[10];

    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1ABA8262C, 0, 0);
}

void sub_1ABA82DA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
}

__n128 sub_1ABA82DEC()
{
  result = *&STACK[0xC50];
  v1 = *&STACK[0xC60];
  *&STACK[0xC80] = *&STACK[0xC50];
  *&STACK[0xC90] = v1;
  LOBYTE(STACK[0xCA0]) = STACK[0xC70];
  return result;
}

void sub_1ABA82E18()
{

  JUMPOUT(0x1AC5AB8B0);
}

uint64_t sub_1ABA82E34(uint64_t a1)
{
  *(v1 + 80) = a1;

  return sub_1ABF23774();
}

uint64_t sub_1ABA82E4C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 24);
  return *(v2 + 16);
}

uint64_t sub_1ABA82E90()
{
  v2 = *(*(v1 - 368) + 8);
  result = v0;
  v4 = *(v1 - 360);
  return result;
}

void *sub_1ABA82EE8()
{
  sub_1ABA84B54(v0 + 65);
  sub_1ABD9BED4(v0 + 115);

  return memcpy(v0 + 165, v0 + 115, 0x190uLL);
}

void sub_1ABA82F24()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = v1;
  *(v5 + 40) = v4;
}

uint64_t sub_1ABA82F5C()
{

  return sub_1ABF237F4();
}

double sub_1ABA82F90@<D0>(uint64_t a1@<X8>)
{
  *(v1 + 112) = a1;

  return sub_1ABDED914(v2 - 120);
}

void sub_1ABA82FAC()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABA82FD8()
{
  sub_1ABA84B54((v0 - 128));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1ABA83004(uint64_t a1)
{
  v2 = *(*a1 + 120);
  Strong = swift_weakLoadStrong();
  v4 = *(*a1 + 128);
  v5 = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(*Strong + 128);
    swift_weakAssign();
  }

  if (v5)
  {
    v7 = *(*v5 + 120);
    swift_weakAssign();
  }
}

uint64_t sub_1ABA830C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1ABA823D4, 0, 0);
}

Swift::Void __swiftcall LRUCache.clear()()
{
  v1 = v0;
  v2 = *v0;
  swift_beginAccess();
  sub_1ABA81044();
  v4 = *(v3 + 80);
  sub_1ABA81044();
  v6 = *(v5 + 88);
  sub_1ABA81044();
  v8 = *(v7 + 96);
  type metadata accessor for LRUCacheNode();
  sub_1ABF23A44();
  sub_1ABF23A34();
  swift_endAccess();
  v9 = v1[4];
  v10 = *(*v9 + 120);
  swift_weakAssign();
  v11 = *(*v9 + 128);
  swift_weakAssign();
}

uint64_t sub_1ABA832AC()
{
  v0 = *sub_1ABA833A8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t *sub_1ABA833A8()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 80);
  v4 = sub_1ABF247E4();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = *(*v0 + 112);
  v6 = *(v1 + 88);
  v7 = sub_1ABF247E4();
  (*(*(v7 - 8) + 8))(v0 + v5, v7);
  v8 = *(*v0 + 120);
  swift_weakDestroy();
  v9 = *(*v0 + 128);
  swift_weakDestroy();
  return v0;
}

uint64_t sub_1ABA83534()
{

  return sub_1ABF25054();
}

double sub_1ABA83598@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1ABA835CC()
{

  return sub_1ABF24B34();
}

uint64_t sub_1ABA8365C(sqlite3_stmt *a1)
{

  return sqlite3_column_type(a1, v1);
}

uint64_t sub_1ABA83680(uint64_t a1)
{
  *(v2 - 136) = a1;

  return sub_1ABB3E678(v1, type metadata accessor for SearchableViewDatabaseTable);
}

uint64_t sub_1ABA836B8()
{
  v3 = (v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;

  return swift_allocObject();
}

uint64_t sub_1ABA836EC()
{
}

uint64_t sub_1ABA83714()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 152);
  return result;
}

id sub_1ABA8373C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return [v9 a2];
}

uint64_t sub_1ABA83758(uint64_t a1, uint64_t a2)
{

  return sub_1ABA7B9B4(a1, a2, 1, v2);
}

__n128 sub_1ABA83770()
{
  result = *&STACK[0x500];
  v1 = *&STACK[0x510];
  *&STACK[0x530] = *&STACK[0x500];
  *&STACK[0x540] = v1;
  LOBYTE(STACK[0x550]) = STACK[0x520];
  return result;
}

uint64_t sub_1ABA83790()
{

  return swift_allocObject();
}

uint64_t sub_1ABA837B4()
{

  return swift_deallocPartialClassInstance();
}

__n128 sub_1ABA837D4()
{
  *(v0 + 104) = *(v1 + 256);
  *(v1 + 2672) = *(v1 + 160);
  *(v1 + 2680) = *(v1 + 120);
  result = *(v1 + 6592);
  v3 = *(v1 + 6624);
  *(v0 + 152) = *(v1 + 6608);
  *(v0 + 136) = result;
  *(v1 + 2720) = v3;
  *(v1 + 2728) = *(v1 + 248);
  *(v1 + 2736) = *(v1 + 280);
  return result;
}

uint64_t sub_1ABA83850()
{

  return sub_1ABF237F4();
}

uint64_t sub_1ABA8387C()
{

  return sub_1ABF252C4();
}

uint64_t sub_1ABA838DC()
{

  return sub_1ABEB0604();
}

uint64_t sub_1ABA8390C()
{
  result = *(v0 - 136);
  v2 = *(v0 - 128);
  return result;
}

__n128 sub_1ABA83994()
{
  result = *v0;
  *(v1 - 160) = *v0;
  v3 = v0[1].n128_u64[0];
  return result;
}

uint64_t sub_1ABA839A4()
{

  return swift_slowAlloc();
}

void sub_1ABA83A14(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  *(a1 + 73) = a5;
  *(a1 + 48) = a3;
  *(a1 + 64) = a4;
  *(a1 + 32) = a2;
}

__n128 sub_1ABA83A24(uint64_t a1)
{
  v2 = *(v1 - 192);
  *(a1 + 16) = *(v1 - 208);
  *(a1 + 32) = v2;
  *(a1 + 48) = *(v1 - 176);
  result = *(v1 - 167);
  *(a1 + 57) = result;
  return result;
}

uint64_t sub_1ABA83A44()
{

  return sub_1ABF25054();
}

void sub_1ABA83A70()
{

  sub_1ABADB5D8();
}

void sub_1ABA83AA4()
{

  JUMPOUT(0x1AC5A9410);
}

void sub_1ABA83ACC()
{
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
}

void sub_1ABA83B14(uint64_t a1@<X8>)
{
  *v2 = a1;
  *(v2 + 8) = v1;
  *(v2 + 16) = 2;
  *(v2 + 24) = v3;
}

BOOL sub_1ABA83B28(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1ABA83B44(uint64_t a1, __int128 a2, uint64_t a3, __int128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  *v10 = a2;
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;

  return sub_1ABA84B54(va);
}

void sub_1ABA83B70(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1ABA83BA4()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1ABA83BC4()
{
  v2 = *(v0 - 104);

  return sub_1ABF24D94();
}

uint64_t sub_1ABA83BEC()
{

  return swift_getWitnessTable();
}

uint64_t sub_1ABA83C0C()
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_1ABA83C2C()
{

  return swift_beginAccess();
}

void sub_1ABA83C48()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABA83C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{

  return sub_1ABE10DCC(v54 - 200, &a54);
}

uint64_t sub_1ABA83CAC()
{

  return sub_1ABAAB7C0(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t sub_1ABA83CD0(uint64_t result)
{
  *(v6 - 104) = result;
  *(v6 - 96) = v2;
  *v1 = v4;
  v1[1] = v5;
  *(v6 - 88) = v1 + 2;
  v7 = *(v3 + 16);
  return result;
}

uint64_t sub_1ABA83D14()
{
  *(v3 - 72) = v0;
  v4 = *(v2 + 8);
  return v1;
}

id sub_1ABA83D3C(id a1, SEL a2, ...)
{
  va_start(va, a2);

  return [a1 a2];
}

uint64_t sub_1ABA83D58()
{

  return swift_once();
}

__n128 sub_1ABA83D90@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3)
{
  v7 = (a1 + a2);
  result = a3;
  *v7 = a3;
  v7[1].n128_u64[0] = v3;
  v7[1].n128_u64[1] = v4;
  v7[2].n128_u8[0] = v5;
  v9 = *(v6 + 992);
  return result;
}

void sub_1ABA83DB0()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v1;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;
}

uint64_t LogSignpost.signposter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LogSignpost() + 24);
  v4 = sub_1ABF23774();
  v5 = sub_1ABA7BBB0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t sub_1ABA83EB4()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1ABA83EEC()
{

  return sub_1ABF24C64();
}

uint64_t sub_1ABA83F44()
{
  v2 = *(v0 + 40);

  return sub_1ABF25234();
}

void sub_1ABA83F90(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x1AC5AA8A0);
}

__n128 sub_1ABA83FD0()
{
  result = *&STACK[0x6E0];
  v1 = *&STACK[0x6F0];
  *&STACK[0x710] = *&STACK[0x6E0];
  *&STACK[0x720] = v1;
  LOBYTE(STACK[0x730]) = STACK[0x700];
  return result;
}

__n128 sub_1ABA83FF0()
{
  *(v0 + 4560) = *(v0 + 4512);
  result = *(v0 + 4528);
  *(v0 + 4576) = result;
  return result;
}

void sub_1ABA84004(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_1ABA84030(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x1EEE6ADB0](a1, a2, a3, v3);
}

uint64_t sub_1ABA8404C()
{

  return swift_once();
}

uint64_t sub_1ABA8406C()
{

  return sub_1ABF24DF4();
}

uint64_t sub_1ABA840C8()
{

  return swift_task_alloc();
}

uint64_t sub_1ABA840E0(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t sub_1ABA84138(uint64_t result)
{
  v2[6] = result;
  *v2 = v1;
  return result;
}

uint64_t *sub_1ABA84170@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 136) = a1;

  return sub_1ABA93DC0((v1 - 168));
}

uint64_t sub_1ABA84188()
{
  v7 = v0 + *(v4 + 28) + *(v1 + 28);
  v8 = *(v5 - 152);

  return sub_1ABB2E9FC(v7, v8, v2, v3);
}

uint64_t sub_1ABA841C4()
{
  result = v0;
  v3 = *(v1 - 144);
  return result;
}

uint64_t sub_1ABA84200()
{
}

uint64_t sub_1ABA84224()
{

  return sub_1ABF23DD4();
}

uint64_t sub_1ABA84254(uint64_t a1)
{
  *(a1 + 16) = *(v1 - 240);
  v3 = *(v1 - 216);

  return swift_allocObject();
}

void sub_1ABA842A8(int a1@<W8>)
{
  *(v1 - 256) = a1;
  *(v2 - 340) = a1;
  *(v2 - 336) = a1;
}

uint64_t sub_1ABA842C4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 32);
}

uint64_t sub_1ABA842DC()
{

  return sub_1ABF218B4();
}

uint64_t sub_1ABA84354()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1ABA84378()
{

  return sub_1ABF24F84();
}

uint64_t sub_1ABA843D4()
{

  return sub_1ABAFC6F0(v2, v3, v0, v1);
}

uint64_t sub_1ABA84420(uint64_t a1)
{

  return sub_1ABA7E1E0(v1 + v2, 1, a1);
}

uint64_t sub_1ABA84440(unint64_t *a1)
{

  return sub_1ABC3A944(a1);
}

uint64_t sub_1ABA84464()
{
  *(v3 - 144) = v2;
  *(v3 - 136) = v1;
  *(v3 - 88) = v0;
  v5 = *(v3 - 96);

  return sub_1ABF24EA4();
}

uint64_t sub_1ABA844B0()
{

  return swift_beginAccess();
}

uint64_t sub_1ABA844CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(v9 + 8 * v10 + 32);

  return VOPBuilder.toString.getter(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1ABA84520(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1ABF23774();
    v8 = v5 + *(a4 + 24);

    return sub_1ABA7B9B4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for LogSignpost()
{
  result = qword_1ED871F10;
  if (!qword_1ED871F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ABA84600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1ABF23774();
    v9 = a1 + *(a3 + 24);

    return sub_1ABA7E1E0(v9, a2, v8);
  }
}

uint64_t LogSignpost.init(name:state:signposter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  v8 = *(type metadata accessor for LogSignpost() + 24);
  v9 = sub_1ABF23774();
  sub_1ABA7BBB0(v9);
  v11 = *(v10 + 32);

  return v11(a6 + v8, a5);
}

uint64_t static Paths.baseDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED870E40 != -1)
  {
    swift_once();
  }

  v2 = sub_1ABF21CF4();
  v3 = sub_1ABA7AA24(v2, qword_1ED870E48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Features.FeatureFlag.isEnabled.getter()
{
  v1 = *v0;
  if (v1 == 3)
  {
    sub_1ABA84BAC();
    return static NSUserDefaults.isKTSEnabled.getter() & 1;
  }

  else
  {
    v4[3] = &type metadata for Features.FeatureFlag;
    v4[4] = sub_1ABA8488C();
    LOBYTE(v4[0]) = v1;
    v3 = sub_1ABF220A4();
    sub_1ABA84B54(v4);
    return v3 & 1;
  }
}

unint64_t sub_1ABA8488C()
{
  result = qword_1ED871898;
  if (!qword_1ED871898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871898);
  }

  return result;
}

const char *Features.FeatureFlag.feature.getter()
{
  result = "KTS";
  switch(*v0)
  {
    case 1:
      result = "LivableSources";
      break;
    case 2:
      result = "NERD";
      break;
    case 3:
      return result;
    case 4:
      result = "LifeEventSource";
      break;
    case 5:
      result = "GlobalKnowledgeService";
      break;
    case 6:
      result = "IntelligencePlatformLibrary";
      break;
    case 7:
      result = "EntityRelevanceBiomeSources";
      break;
    case 8:
      result = "ExperimentalECRViews";
      break;
    case 9:
      result = "ExperimentalK2TViews";
      break;
    case 0xA:
      result = "GlobalKnowledgePrototypes";
      break;
    case 0xB:
      result = "LifeEventAllDataSources";
      break;
    case 0xC:
      result = "ERExperimentalFeatures";
      break;
    case 0xD:
      result = "LongitudinalDataCollection";
      break;
    case 0xE:
      result = "IPCSMemoryTransaction";
      break;
    case 0xF:
      result = "IPCSMemoryReduction";
      break;
    case 0x10:
      result = "PowerLog";
      break;
    case 0x11:
      result = "ExperimentalViews";
      break;
    case 0x12:
      result = "EntityCandidateRetrievalAjax";
      break;
    case 0x13:
      result = "AutonamingMessages";
      break;
    case 0x14:
      result = "EuclidVDBAsrNotifications";
      break;
    case 0x15:
      result = "EntitySimilarity";
      break;
    case 0x16:
      result = "AddressContactResolution";
      break;
    case 0x17:
      result = "EntityGrounding";
      break;
    case 0x18:
      result = "DefaultResolverInteractionsView";
      break;
    case 0x19:
      result = "PersonalKnowledgeTool";
      break;
    case 0x1A:
      result = "AutonamingMessagesIngestion";
      break;
    case 0x1B:
      result = "OrionSQL";
      break;
    case 0x1C:
      result = "WalletOrderSources";
      break;
    default:
      result = "AllSources";
      break;
  }

  return result;
}

uint64_t sub_1ABA84B54(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1ABA84BAC()
{
  result = qword_1ED871D88;
  if (!qword_1ED871D88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED871D88);
  }

  return result;
}

uint64_t static NSUserDefaults.isKTSEnabled.getter()
{
  if (qword_1ED870D28 != -1)
  {
    sub_1ABA8FD38();
  }

  swift_beginAccess();
  v0 = byte_1ED870D30;
  v1 = qword_1ED870D38;
  v2 = unk_1ED870D40;
  v3 = qword_1ED870D48;

  v4 = v3;
  v5 = objc_autoreleasePoolPush();
  v6 = sub_1ABA84CB8(v0, v1, v2, v4);
  objc_autoreleasePoolPop(v5);

  return v6 & 1;
}

uint64_t sub_1ABA84CB8(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1ABF23BD4();
  v7 = [a4 objectForKey_];

  if (v7)
  {
    sub_1ABF248F4();
    swift_unknownObjectRelease();
    sub_1ABAFF238(&v11, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  sub_1ABAD219C(&qword_1EB4D3000, &unk_1ABF3AA60);
  v8 = swift_dynamicCast();
  v9 = v11;
  if (v11 == 2)
  {
    v9 = a1;
  }

  if (!v8)
  {
    v9 = a1;
  }

  return v9 & 1;
}

id sub_1ABA84ED0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1ABA84F5C();
    v5 = sub_1ABF23954();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

unint64_t sub_1ABA84F5C()
{
  result = qword_1ED871D80;
  if (!qword_1ED871D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED871D80);
  }

  return result;
}

void sub_1ABA84FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ABF23C04();
  MEMORY[0x1AC5A9410](46, 0xE100000000000000);
  MEMORY[0x1AC5A9410](a1, a2);
  v8 = sub_1ABF23BD4();

  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1ABA84ED0;
  v10[3] = &unk_1F2074828;
  v9 = _Block_copy(v10);

  AnalyticsSendEventLazy();
  _Block_release(v9);
}

uint64_t sub_1ABA850C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1ABA850D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1ABA850E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1ABA850F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1ABA85100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1ABA85110(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void static Analytics.sendEventForProductionLazy(eventName:eventPayloadBuilder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  sub_1ABA84FA0(a1, a2, a3, a4);

  objc_autoreleasePoolPop(v8);
}

id GDXPCLog()
{
  if (qword_1ED87C3B8 != -1)
  {
    dispatch_once(&qword_1ED87C3B8, &unk_1F20764B0);
  }

  v1 = qword_1ED87C3A8;

  return v1;
}

uint64_t sub_1ABA8528C()
{
  qword_1ED87C3A8 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "XPC");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1ABA85408(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void UserDefault.wrappedValue.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = objc_autoreleasePoolPush();
  sub_1ABA85498(v2, *(a1 + 16), a2);

  objc_autoreleasePoolPop(v5);
}

uint64_t sub_1ABA85498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1ABF247E4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v18 - v8;
  v10 = type metadata accessor for UserDefault();
  v11 = *(v10 + 28);
  v12 = *(a1 + *(v10 + 32));
  v13 = *(a1 + v11);
  v14 = *(a1 + v11 + 8);
  v15 = sub_1ABF23BD4();
  v16 = [v12 objectForKey_];

  if (v16)
  {
    sub_1ABF248F4();
    swift_unknownObjectRelease();
    sub_1ABAFF238(v18, v19);
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  sub_1ABAD219C(&qword_1EB4D3000, &unk_1ABF3AA60);
  if (swift_dynamicCast())
  {
    sub_1ABA7B9B4(v9, 0, 1, a2);
    return (*(*(a2 - 8) + 32))(a3, v9, a2);
  }

  else
  {
    sub_1ABA7B9B4(v9, 1, 1, a2);
    return (*(*(a2 - 8) + 16))(a3, a1, a2);
  }
}

uint64_t sub_1ABA85678(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1ABA856C4(v5, v7) & 1;
}

uint64_t sub_1ABA856C4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return sub_1ABA7E270();
  }

  else
  {
    return sub_1ABA946D8();
  }
}

void EntityClass.descendantClasses.getter()
{
  sub_1ABAA00E4();
  sub_1ABAA6308();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA8A72C();
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_53;
  }

  v4 = sub_1ABA8A714(_Records_GDEntityClass_records);
  v7 = sub_1ABA8882C(v4, v5, v6, v2 - 160);
  sub_1ABAA5C88(v7, v8, v9, v10, v11, v12, v13, v14);
  sub_1ABB7E38C();
  if (v0)
  {
    sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1ABF3EBC0;
    if (_Records_GDEntityClass_records)
    {
      v0 = v15;
      v16 = sub_1ABB7E070(_Records_GDEntityClass_records);
      sub_1ABA8882C(v16, v17, v18, v2 - 160);
      v19 = sub_1ABAB50C4();
      sub_1ABAA0D10(v20, v19);
      if (_Records_GDEntityClass_records)
      {
        v21 = sub_1ABA8CA50(_Records_GDEntityClass_records);
        sub_1ABA8882C(v21, v22, v23, v2 - 160);
        v24 = sub_1ABAB50C4();
        sub_1ABAA5624(v25, v24);
        if (_Records_GDEntityClass_records)
        {
          v26 = sub_1ABA8D1D4(_Records_GDEntityClass_records);
          sub_1ABA8882C(v26, v27, v28, v2 - 160);
          v29 = sub_1ABAB50C4();
          sub_1ABB7E0EC(v30, v29);
          if (_Records_GDEntityClass_records)
          {
            v31 = sub_1ABA9E070(_Records_GDEntityClass_records);
            sub_1ABA8882C(v31, v32, v33, v2 - 160);
            v34 = sub_1ABAB50C4();
            sub_1ABB7E618(v35, v34);
            *(v0 + 184) = v36;
            if (_Records_GDEntityClass_records)
            {
              v37 = sub_1ABB7E10C(_Records_GDEntityClass_records);
              sub_1ABA8882C(v37, v38, v39, v2 - 160);
              v40 = sub_1ABAB50C4();
              sub_1ABB7E60C(v41, v40);
              *(v0 + 224) = v42;
              if (_Records_GDEntityClass_records)
              {
                v43 = sub_1ABA88E44(_Records_GDEntityClass_records);
                sub_1ABA8882C(v43, v44, v45, v2 - 160);
                v46 = sub_1ABAB50C4();
                sub_1ABB7E600(v47, v46);
                *(v0 + 264) = v48;
                if (_Records_GDEntityClass_records)
                {
                  v49 = sub_1ABA9ECB8(_Records_GDEntityClass_records);
                  sub_1ABA8882C(v49, v50, v51, v2 - 160);
                  v52 = sub_1ABAB50C4();
                  sub_1ABB7E5F4(v53, v52);
                  *(v0 + 304) = v54;
                  if (_Records_GDEntityClass_records)
                  {
                    v55 = sub_1ABA9F1E0(_Records_GDEntityClass_records);
                    sub_1ABA8882C(v55, v56, v57, v2 - 160);
                    sub_1ABA7EFB4();
                    *(v0 + 328) = v58;
                    *(v0 + 336) = v59;
                    *(v0 + 344) = v60;
                    if (_Records_GDEntityClass_records)
                    {
                      v61 = sub_1ABB7E66C(_Records_GDEntityClass_records);
                      sub_1ABA8882C(v61, v62, v63, v2 - 160);
                      v64 = sub_1ABAB50C4();
                      sub_1ABB7E5E8(v65, v64);
                      *(v0 + 384) = v66;
                      if (_Records_GDEntityClass_records)
                      {
                        v67 = sub_1ABB7E660(_Records_GDEntityClass_records);
                        sub_1ABA8882C(v67, v68, v69, v2 - 160);
                        sub_1ABA7EFB4();
                        *(v0 + 408) = v70;
                        *(v0 + 416) = v71;
                        *(v0 + 424) = v72;
                        if (_Records_GDEntityClass_records)
                        {
                          v73 = sub_1ABB7E030(_Records_GDEntityClass_records);
                          sub_1ABA8882C(v73, v74, v75, v2 - 160);
                          v76 = sub_1ABAB50C4();
                          sub_1ABB7E5DC(v77, v76);
                          *(v0 + 464) = v78;
                          if (_Records_GDEntityClass_records)
                          {
                            v79 = sub_1ABB7E060(_Records_GDEntityClass_records);
                            sub_1ABA8882C(v79, v80, v81, v2 - 160);
                            sub_1ABA7EFB4();
                            *(v0 + 488) = v82;
                            *(v0 + 496) = v83;
                            *(v0 + 504) = v84;
                            if (_Records_GDEntityClass_records)
                            {
                              v85 = sub_1ABB7E050(_Records_GDEntityClass_records);
                              sub_1ABA8882C(v85, v86, v87, v2 - 160);
                              v88 = sub_1ABAB50C4();
                              sub_1ABB7E004(v89, v88);
                              *(v0 + 544) = v90;
                              if (_Records_GDEntityClass_records)
                              {
                                v91 = sub_1ABB7E040(_Records_GDEntityClass_records);
                                sub_1ABA8882C(v91, v92, v93, v2 - 160);
                                sub_1ABA7EFB4();
                                sub_1ABB7E5D0(v94);
                                *(v0 + 584) = v95;
                                if (_Records_GDEntityClass_records)
                                {
                                  v96 = sub_1ABB7E13C(_Records_GDEntityClass_records);
                                  sub_1ABA8882C(v96, v97, v98, v2 - 160);
                                  v99 = sub_1ABAB50C4();
                                  sub_1ABB7DFF4(v100, v99);
                                  *(v0 + 624) = v101;
                                  if (_Records_GDEntityClass_records)
                                  {
                                    v102 = sub_1ABAA6680(_Records_GDEntityClass_records);
                                    sub_1ABA8882C(v102, v103, v104, v2 - 160);
                                    sub_1ABA7EFB4();
                                    sub_1ABB7E5C4(v105);
                                    *(v0 + 664) = v106;
                                    if (_Records_GDEntityClass_records)
                                    {
                                      v107 = sub_1ABB7E12C(_Records_GDEntityClass_records);
                                      sub_1ABA8882C(v107, v108, v109, v2 - 160);
                                      v110 = sub_1ABAB50C4();
                                      sub_1ABB7DFE4(v111, v110);
                                      *(v0 + 704) = v112;
                                      if (_Records_GDEntityClass_records)
                                      {
                                        v113 = sub_1ABB7E11C(_Records_GDEntityClass_records);
                                        sub_1ABA8882C(v113, v114, v115, v2 - 160);
                                        sub_1ABA7EFB4();
                                        sub_1ABB7E5B8(v116);
                                        *(v0 + 744) = v117;
                                        if (_Records_GDEntityClass_records)
                                        {
                                          v118 = sub_1ABAA0C5C(_Records_GDEntityClass_records);
                                          sub_1ABA8882C(v118, v119, v120, v2 - 160);
                                          v121 = sub_1ABAB50C4();
                                          sub_1ABAA9058(v122, v121);
                                          *(v0 + 784) = v123;
                                          if (_Records_GDEntityClass_records)
                                          {
                                            v124 = sub_1ABAA1B1C(_Records_GDEntityClass_records);
                                            sub_1ABA8882C(v124, v125, v126, v2 - 160);
                                            sub_1ABA7EFB4();
                                            sub_1ABB7E5AC(v127);
                                            *(v0 + 824) = v128;
                                            if (_Records_GDEntityClass_records)
                                            {
                                              v129 = sub_1ABB7E0FC(_Records_GDEntityClass_records);
                                              sub_1ABA8882C(v129, v130, v131, v2 - 160);
                                              v132 = sub_1ABAB50C4();
                                              sub_1ABAAA998(v133, v132);
                                              *(v0 + 864) = v134;
                                              if (_Records_GDEntityClass_records)
                                              {
                                                v135 = sub_1ABAA2AF8(_Records_GDEntityClass_records);
                                                sub_1ABA8882C(v135, v136, v137, v2 - 160);
                                                sub_1ABA7EFB4();
                                                sub_1ABB7E5A0(v138);
                                                *(v0 + 904) = v139;
                                                if (_Records_GDEntityClass_records)
                                                {
                                                  v140 = sub_1ABAB5968(_Records_GDEntityClass_records);
                                                  sub_1ABA8882C(v140, v141, v142, v2 - 160);
                                                  v143 = sub_1ABAB50C4();
                                                  sub_1ABAAA624(v144, v143);
                                                  *(v0 + 944) = v145;
                                                  if (_Records_GDEntityClass_records)
                                                  {
                                                    v146 = sub_1ABAB5EDC(_Records_GDEntityClass_records);
                                                    sub_1ABA8882C(v146, v147, v148, v2 - 160);
                                                    sub_1ABA7EFB4();
                                                    sub_1ABB7E594(v149);
                                                    *(v0 + 984) = v150;
                                                    if (_Records_GDEntityClass_records)
                                                    {
                                                      v151 = sub_1ABAB5F68(_Records_GDEntityClass_records);
                                                      sub_1ABA8882C(v151, v152, v153, v2 - 160);
                                                      v154 = sub_1ABAB50C4();
                                                      sub_1ABB7DFD4(v155, v154);
                                                      *(v0 + 1024) = v156;
                                                      if (_Records_GDEntityClass_records)
                                                      {
                                                        v157 = sub_1ABAB5FF0(_Records_GDEntityClass_records);
                                                        sub_1ABA8882C(v157, v158, v159, v2 - 160);
                                                        sub_1ABA7EFB4();
                                                        sub_1ABB7E588(v160);
                                                        *(v0 + 1064) = v161;
                                                        if (_Records_GDEntityClass_records)
                                                        {
                                                          v162 = sub_1ABB7E0DC(_Records_GDEntityClass_records);
                                                          sub_1ABA8882C(v162, v163, v164, v2 - 160);
                                                          v165 = sub_1ABAB50C4();
                                                          sub_1ABAB69C8(v166, v165);
                                                          *(v0 + 1104) = v167;
                                                          if (_Records_GDEntityClass_records)
                                                          {
                                                            v168 = sub_1ABAB1F74(_Records_GDEntityClass_records);
                                                            sub_1ABA8882C(v168, v169, v170, v2 - 160);
                                                            *(v0 + 1112) = sub_1ABAB50C4();
                                                            sub_1ABB7E57C(v171);
                                                            *(v0 + 1144) = v172;
                                                            if (_Records_GDEntityClass_records)
                                                            {
                                                              sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xDC8), *(_Records_GDEntityClass_records + 0xDD0), *(_Records_GDEntityClass_records + 0xDD8), v2 - 160);
                                                              v173 = sub_1ABAB50C4();
                                                              sub_1ABAB6320(v174, v173);
                                                              *(v0 + 1184) = v175;
                                                              if (_Records_GDEntityClass_records)
                                                              {
                                                                sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xDE0), *(_Records_GDEntityClass_records + 0xDE8), *(_Records_GDEntityClass_records + 0xDF0), v2 - 160);
                                                                *(v0 + 1192) = sub_1ABAB50C4();
                                                                *(v0 + 1208) = v176;
                                                                *(v0 + 1216) = v177;
                                                                *(v0 + 1224) = v178;
                                                                if (_Records_GDEntityClass_records)
                                                                {
                                                                  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x5E8), *(_Records_GDEntityClass_records + 0x5F0), *(_Records_GDEntityClass_records + 0x5F8), v2 - 160);
                                                                  v179 = sub_1ABAB50C4();
                                                                  sub_1ABAA1658(v180, v179);
                                                                  *(v0 + 1264) = v181;
                                                                  if (_Records_GDEntityClass_records)
                                                                  {
                                                                    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x5D0), *(_Records_GDEntityClass_records + 0x5D8), *(_Records_GDEntityClass_records + 0x5E0), v2 - 160);
                                                                    *(v0 + 1272) = sub_1ABAB50C4();
                                                                    *(v0 + 1288) = v182;
                                                                    *(v0 + 1296) = v183;
                                                                    *(v0 + 1304) = v184;
                                                                    if (_Records_GDEntityClass_records)
                                                                    {
                                                                      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x600), *(_Records_GDEntityClass_records + 0x608), *(_Records_GDEntityClass_records + 0x610), v2 - 160);
                                                                      *(v0 + 1312) = sub_1ABAB50C4();
                                                                      *(v0 + 1328) = v185;
                                                                      *(v0 + 1336) = v186;
                                                                      *(v0 + 1344) = v187;
                                                                      if (_Records_GDEntityClass_records)
                                                                      {
                                                                        sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x648), *(_Records_GDEntityClass_records + 0x650), *(_Records_GDEntityClass_records + 0x658), v2 - 160);
                                                                        *(v0 + 1352) = sub_1ABAB50C4();
                                                                        *(v0 + 1368) = v188;
                                                                        *(v0 + 1376) = v189;
                                                                        *(v0 + 1384) = v190;
                                                                        if (_Records_GDEntityClass_records)
                                                                        {
                                                                          sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x618), *(_Records_GDEntityClass_records + 0x620), *(_Records_GDEntityClass_records + 0x628), v2 - 160);
                                                                          *(v0 + 1392) = sub_1ABAB50C4();
                                                                          *(v0 + 1408) = v191;
                                                                          *(v0 + 1416) = v192;
                                                                          *(v0 + 1424) = v193;
                                                                          static EntityClass.bicycle.getter();
                                                                          static EntityClass.locomotiveTrain.getter();
                                                                          static EntityClass.bus.getter();
                                                                          static EntityClass.software.getter();
                                                                          static EntityClass.mediaWork.getter();
                                                                          static EntityClass.musicalWork.getter();
                                                                          static EntityClass.movie.getter();
                                                                          static EntityClass.televisionProgram.getter();
                                                                          static EntityClass.album.getter();
                                                                          static EntityClass.song.getter();
                                                                          static EntityClass.transportationActivityType.getter();
                                                                          static EntityClass.workingActivityType.getter();
                                                                          static EntityClass.meetingActivityType.getter();
                                                                          static EntityClass.eatingActivityType.getter();
                                                                          static EntityClass.watchingMediaActivityType.getter();
                                                                          static EntityClass.communicatingActivityType.getter();
                                                                          static EntityClass.shoppingActivityType.getter();
                                                                          static EntityClass.mindfulActivityType.getter();
                                                                          static EntityClass.sleepActivityType.getter();
                                                                          static EntityClass.travelActivityType.getter();
                                                                          static EntityClass.readingActivityType.getter();
                                                                          static EntityClass.vacationActivityType.getter();
                                                                          static EntityClass.socialActivityType.getter();
                                                                          static EntityClass.wakingActivityType.getter();
                                                                          static EntityClass.goingToBedActivityType.getter();
                                                                          static EntityClass.typeOfPhysicalExercise.getter();
                                                                          static EntityClass.commuteActivityType.getter();
                                                                          static EntityClass.walkingActivityType.getter();
                                                                          static EntityClass.runningActivityType.getter();
                                                                          static EntityClass.bikingActivityType.getter();
                                                                          static EntityClass.hikingActivityType.getter();
                                                                          static EntityClass.phoneCallActivityType.getter();
                                                                          static EntityClass.facetimeActivityType.getter();
                                                                          static EntityClass.drivingActivityType.getter();
                                                                          static EntityClass.behaviorActivityType.getter();
                                                                          static EntityClass.event.getter();
                                                                          static EntityClass.activityEvent.getter();
                                                                          static EntityClass.calendarEvent.getter();
                                                                          static EntityClass.sportsGameEvent.getter();
                                                                          static EntityClass.transportationActivity.getter();
                                                                          static EntityClass.workingActivity.getter();
                                                                          static EntityClass.meetingActivity.getter();
                                                                          static EntityClass.eatingActivity.getter();
                                                                          static EntityClass.watchingTVActivity.getter();
                                                                          static EntityClass.communicatingActivity.getter();
                                                                          static EntityClass.shoppingActivity.getter();
                                                                          static EntityClass.mindfulnessActivity.getter();
                                                                          static EntityClass.sleepingActivity.getter();
                                                                          static EntityClass.travelingActivity.getter();
                                                                          static EntityClass.readingActivity.getter();
                                                                          static EntityClass.vacationingActivity.getter();
                                                                          static EntityClass.gamingActivity.getter();
                                                                          static EntityClass.socializingActivity.getter();
                                                                          static EntityClass.wakingUpActivity.getter();
                                                                          static EntityClass.goingToBedActivity.getter();
                                                                          static EntityClass.exercisingActivity.getter();
                                                                          static EntityClass.commuteActivity.getter();
                                                                          static EntityClass.diningActivity.getter();
                                                                          static EntityClass.attendingAPerformanceActivity.getter();
                                                                          static EntityClass.stationaryActivity.getter();
                                                                          static EntityClass.locationVisitActivity.getter();
                                                                          static EntityClass.walkingActivity.getter();
                                                                          static EntityClass.runningActivity.getter();
                                                                          static EntityClass.bicyclingActivity.getter();
                                                                          static EntityClass.hikingActivity.getter();
                                                                          static EntityClass.onThePhoneActivity.getter();
                                                                          static EntityClass.facetimeActivity.getter();
                                                                          static EntityClass.drivingActivity.getter();
                                                                          static EntityClass.behaviorActivity.getter();
                                                                          static EntityClass.populatedPlace.getter();
                                                                          static EntityClass.timeZone.getter();
                                                                          static EntityClass.home.getter();
                                                                          static EntityClass.state.getter();
                                                                          static EntityClass.county.getter();
                                                                          static EntityClass.country.getter();
                                                                          static EntityClass.groupOfHumans.getter();
                                                                          static EntityClass.role.getter();
                                                                          static EntityClass.religion.getter();
                                                                          static EntityClass.language.getter();
                                                                          static EntityClass.genre.getter();
                                                                          static EntityClass.make.getter();
                                                                          static EntityClass.contentRating.getter();
                                                                          static EntityClass.typeOfProfession.getter();
                                                                          static EntityClass.person.getter();
                                                                          static EntityClass.musicalArtist.getter();
                                                                          static EntityClass.organization.getter();
                                                                          static EntityClass.politicalParty.getter();
                                                                          static EntityClass.sportsOrganization.getter();
                                                                          static EntityClass.sportsTeam.getter();
                                                                          static EntityClass.sportsLeague.getter();
                                                                          static EntityClass.devicePrimaryUser.getter();
                                                                          static EntityClass.personInTheArts.getter();
                                                                          static EntityClass.musician.getter();
                                                                          static EntityClass.animal.getter();
                                                                          static EntityClass.orderTransactionRelationshipType.getter();
                                                                          static EntityClass.orderEmailRelationshipType.getter();
                                                                          static EntityClass.orderPaymentRelationshipType.getter();
                                                                          static EntityClass.entityOrganizationRelationshipType.getter();
                                                                          static EntityClass.senderRelationshipType.getter();
                                                                          static EntityClass.topicRelationshipType.getter();
                                                                          static EntityClass.calendarRelationshipType.getter();
                                                                          static EntityClass.dateRelationshipType.getter();
                                                                          static EntityClass.administratorRelationshipType.getter();
                                                                          static EntityClass.organizerRelationshipType.getter();
                                                                          static EntityClass.localizedNameRelationshipType.getter();
                                                                          static EntityClass.songRelationshipType.getter();
                                                                          static EntityClass.confidenceRelationshipType.getter();
                                                                          static EntityClass.softwareRelationshipType.getter();
                                                                          static EntityClass.visualIdentifierRelationshipType.getter();
                                                                          static EntityClass.extractionTagRelationshipType.getter();
                                                                          static EntityClass.orderShippingInfoRelationshipType.getter();
                                                                          static EntityClass.orderShipmentFullFillmentRelationshipType.getter();
                                                                          static EntityClass.orderPersonRelationshipType.getter();
                                                                          static EntityClass.shipmentFullFillmentEmailRelationshipType.getter();
                                                                          static EntityClass.shipmentPersonRelationshipType.getter();
                                                                          static EntityClass.fromToEmailRelationshipType.getter();
                                                                          static EntityClass.emailInfoRelationshipType.getter();
                                                                          static EntityClass.textRelationshipType.getter();
                                                                          static EntityClass.addressRelationshipType.getter();
                                                                          static EntityClass.languageRelationshipType.getter();
                                                                          static EntityClass.identifierRelationshipType.getter();
                                                                          static EntityClass.imageRelationshipType.getter();
                                                                          static EntityClass.membershipRelationshipType.getter();
                                                                          static EntityClass.locationRelationshipType.getter();
                                                                          static EntityClass.quantityRelationshipType.getter();
                                                                          static EntityClass.religionRelationshipType.getter();
                                                                          static EntityClass.participationRelationshipType.getter();
                                                                          static EntityClass.agentAffiliationRelationshipType.getter();
                                                                          static EntityClass.eventRelationshipType.getter();
                                                                          static EntityClass.partWholeRelationshipType.getter();
                                                                          static EntityClass.ratingRelationshipType.getter();
                                                                          static EntityClass.groupRelationshipType.getter();
                                                                          static EntityClass.interestRelationshipType.getter();
                                                                          static EntityClass.timeZoneRelationshipType.getter();
                                                                          static EntityClass.employmentRelationshipType.getter();
                                                                          static EntityClass.performanceRelationshipType.getter();
                                                                          static EntityClass.calendarSourceRelationshipType.getter();
LABEL_40:
                                                                          v203 = v0;
                                                                          goto LABEL_41;
                                                                        }

                                                                        goto LABEL_87;
                                                                      }

LABEL_86:
                                                                      __break(1u);
LABEL_87:
                                                                      __break(1u);
                                                                      goto LABEL_88;
                                                                    }

LABEL_85:
                                                                    __break(1u);
                                                                    goto LABEL_86;
                                                                  }

LABEL_84:
                                                                  __break(1u);
                                                                  goto LABEL_85;
                                                                }

LABEL_83:
                                                                __break(1u);
                                                                goto LABEL_84;
                                                              }

LABEL_82:
                                                              __break(1u);
                                                              goto LABEL_83;
                                                            }

LABEL_81:
                                                            __break(1u);
                                                            goto LABEL_82;
                                                          }

LABEL_80:
                                                          __break(1u);
                                                          goto LABEL_81;
                                                        }

LABEL_79:
                                                        __break(1u);
                                                        goto LABEL_80;
                                                      }

LABEL_78:
                                                      __break(1u);
                                                      goto LABEL_79;
                                                    }

LABEL_77:
                                                    __break(1u);
                                                    goto LABEL_78;
                                                  }

LABEL_76:
                                                  __break(1u);
                                                  goto LABEL_77;
                                                }

LABEL_75:
                                                __break(1u);
                                                goto LABEL_76;
                                              }

LABEL_74:
                                              __break(1u);
                                              goto LABEL_75;
                                            }

LABEL_73:
                                            __break(1u);
                                            goto LABEL_74;
                                          }

LABEL_72:
                                          __break(1u);
                                          goto LABEL_73;
                                        }

LABEL_71:
                                        __break(1u);
                                        goto LABEL_72;
                                      }

LABEL_70:
                                      __break(1u);
                                      goto LABEL_71;
                                    }

LABEL_69:
                                    __break(1u);
                                    goto LABEL_70;
                                  }

LABEL_68:
                                  __break(1u);
                                  goto LABEL_69;
                                }

LABEL_67:
                                __break(1u);
                                goto LABEL_68;
                              }

LABEL_66:
                              __break(1u);
                              goto LABEL_67;
                            }

LABEL_65:
                            __break(1u);
                            goto LABEL_66;
                          }

LABEL_64:
                          __break(1u);
                          goto LABEL_65;
                        }

LABEL_63:
                        __break(1u);
                        goto LABEL_64;
                      }

LABEL_62:
                      __break(1u);
                      goto LABEL_63;
                    }

LABEL_61:
                    __break(1u);
                    goto LABEL_62;
                  }

LABEL_60:
                  __break(1u);
                  goto LABEL_61;
                }

LABEL_59:
                __break(1u);
                goto LABEL_60;
              }

LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  static EntityClass.relationshipType.getter();
  *&v194 = sub_1ABAB5FA0().n128_u64[0];
  sub_1ABB7E710(v195, v196, v197, v198, v199, v200, v201, v202, v194);
  sub_1ABB7E464();
  static EntityClass.organism.getter();
  sub_1ABAA63FC();
  sub_1ABB7E570();
  sub_1ABA856C4(v2 - 208, &v1418);
  sub_1ABB7E2FC();
  sub_1ABA7EFC8();
  static EntityClass.agent.getter();
  sub_1ABA88E28();
  sub_1ABB7E564();
  sub_1ABA856C4(v2 - 256, &v1418);
  sub_1ABAA654C();
  sub_1ABAA0398();
  static EntityClass.concept.getter();
  sub_1ABAAFAE0();
  sub_1ABB7E558();
  v211 = sub_1ABAA0C80();
  sub_1ABA856C4(v211, &v1418);
  sub_1ABA808E4();
  sub_1ABA88934(v212 + 288);
  if (v0)
  {
    sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v0 = swift_allocObject();
    sub_1ABA888E0(v0, xmmword_1ABF39090);
    static EntityClass.role.getter();
    static EntityClass.religion.getter();
    static EntityClass.language.getter();
    static EntityClass.genre.getter();
    static EntityClass.make.getter();
    static EntityClass.contentRating.getter();
    static EntityClass.typeOfProfession.getter();
    goto LABEL_40;
  }

  sub_1ABA9E4DC();
  static EntityClass.sex.getter();
  sub_1ABA8A7C0();
  sub_1ABB7E54C();
  v213 = sub_1ABB7DF88();
  sub_1ABA856C4(v213, &v1418);
  sub_1ABA808E4();
  sub_1ABA88934(v214 + 240);
  sub_1ABB7E6C8();
  sub_1ABB7E088();
  static EntityClass.unitOfMeasurement.getter();
  sub_1ABA8D4A8();
  v1459 = byte_1EB4DD988;
  v215 = sub_1ABB7DF7C();
  sub_1ABA856C4(v215, &v1418);
  sub_1ABA808E4();
  sub_1ABA88934(v216 + 192);
  sub_1ABB7E07C();
  static EntityClass.place.getter();
  sub_1ABAA0C9C(v217, v218, v219, v220, v221, v222, v223, v224);
  sub_1ABA808E4();
  sub_1ABA88934(v225 + 144);
  sub_1ABAB51F4();
  static EntityClass.occurrence.getter();
  sub_1ABB7D8B8(v226, v227, v228, v229, v230, v231, v232, v233);
  sub_1ABA808E4();
  sub_1ABA88934(v234 + 96);
  if (v0)
  {
    sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v0 = sub_1ABAA43D8();
    sub_1ABA888E0(v0, xmmword_1ABF3EB90);
    static EntityClass.event.getter();
    static EntityClass.activityEvent.getter();
    static EntityClass.calendarEvent.getter();
    static EntityClass.sportsGameEvent.getter();
    static EntityClass.transportationActivity.getter();
    static EntityClass.workingActivity.getter();
    static EntityClass.meetingActivity.getter();
    static EntityClass.eatingActivity.getter();
    static EntityClass.watchingTVActivity.getter();
    static EntityClass.communicatingActivity.getter();
    static EntityClass.shoppingActivity.getter();
    static EntityClass.mindfulnessActivity.getter();
    static EntityClass.sleepingActivity.getter();
    static EntityClass.travelingActivity.getter();
    static EntityClass.readingActivity.getter();
    static EntityClass.vacationingActivity.getter();
    static EntityClass.gamingActivity.getter();
    static EntityClass.socializingActivity.getter();
    static EntityClass.wakingUpActivity.getter();
    static EntityClass.goingToBedActivity.getter();
    static EntityClass.exercisingActivity.getter();
    static EntityClass.commuteActivity.getter();
    static EntityClass.diningActivity.getter();
    static EntityClass.attendingAPerformanceActivity.getter();
    static EntityClass.stationaryActivity.getter();
    static EntityClass.locationVisitActivity.getter();
    static EntityClass.walkingActivity.getter();
    static EntityClass.runningActivity.getter();
    static EntityClass.bicyclingActivity.getter();
    static EntityClass.hikingActivity.getter();
    static EntityClass.onThePhoneActivity.getter();
    static EntityClass.facetimeActivity.getter();
    static EntityClass.drivingActivity.getter();
    static EntityClass.behaviorActivity.getter();
    goto LABEL_40;
  }

  static EntityClass.topic.getter();
  sub_1ABAA0D44(v235, v236, v237, v238, v239, v240, v241, v242);
  sub_1ABA808E4();
  sub_1ABA88934(v243 + 48);
  sub_1ABA8B7F8();
  static EntityClass.senderRelationshipType.getter();
  sub_1ABA88A28();
  sub_1ABA88ABC();
  sub_1ABA856C4(v244, &v1418);
  sub_1ABA808E4();
  sub_1ABA88934(v245);
  sub_1ABB7E094();
  static EntityClass.membershipRelationshipType.getter();
  sub_1ABB7D884(v246, v247, v248, v249, v250, v251, v252, v253);
  sub_1ABA7BFC4();
  sub_1ABA88934(v254 + 4048);
  sub_1ABA887C4();
  static EntityClass.organizerRelationshipType.getter();
  sub_1ABA8CE60(v255, v256, v257, v258, v259, v260, v261, v262);
  sub_1ABA7BFC4();
  sub_1ABA88934(v263 + 4000);
  sub_1ABA8D33C();
  static EntityClass.topicRelationshipType.getter();
  sub_1ABA8CF94(v264, v265, v266, v267, v268, v269, v270, v271);
  sub_1ABA7BFC4();
  sub_1ABA88934(v272 + 3952);
  sub_1ABA8B57C();
  static EntityClass.calendarRelationshipType.getter();
  sub_1ABA8D0DC(v273, v274, v275, v276, v277, v278, v279, v280);
  sub_1ABA7BFC4();
  sub_1ABA88934(v281 + 3904);
  sub_1ABA9DDEC();
  static EntityClass.eventRelationshipType.getter();
  sub_1ABA8D224(v282, v283, v284, v285, v286, v287, v288, v289);
  sub_1ABA7BFC4();
  sub_1ABA88934(v290 + 3856);
  sub_1ABA8B99C();
  static EntityClass.textRelationshipType.getter();
  sub_1ABA8D374(v291, v292, v293, v294, v295, v296, v297, v298);
  sub_1ABA7BFC4();
  sub_1ABA88934(v299 + 3808);
  sub_1ABA90C10();
  static EntityClass.addressRelationshipType.getter();
  sub_1ABA88B1C(v300, v301, v302, v303, v304, v305, v306, v307);
  sub_1ABA7BFC4();
  sub_1ABA88934(v308 + 3760);
  sub_1ABA9E19C();
  static EntityClass.languageRelationshipType.getter();
  sub_1ABA90F70(v309, v310, v311, v312, v313, v314, v315, v316);
  sub_1ABA7BFC4();
  sub_1ABA88934(v317 + 3712);
  sub_1ABA90F2C();
  static EntityClass.identifierRelationshipType.getter();
  sub_1ABA88C10(v318, v319, v320, v321, v322, v323, v324, v325);
  sub_1ABA7BFC4();
  sub_1ABA88934(v326 + 3664);
  sub_1ABA9E3DC();
  static EntityClass.imageRelationshipType.getter();
  sub_1ABA9DE20(v327, v328, v329, v330, v331, v332, v333, v334);
  sub_1ABA7BFC4();
  sub_1ABA88934(v335 + 3616);
  sub_1ABAA0230();
  static EntityClass.employmentRelationshipType.getter();
  sub_1ABA88CE8(v336, v337, v338, v339, v340, v341, v342, v343);
  sub_1ABA7BFC4();
  sub_1ABA88934(v344 + 3568);
  sub_1ABA89710();
  static EntityClass.locationRelationshipType.getter();
  sub_1ABA9DF58(v345, v346, v347, v348, v349, v350, v351, v352);
  sub_1ABA7BFC4();
  sub_1ABA88934(v353 + 3520);
LABEL_88:
  sub_1ABA8926C();
  static EntityClass.timeZoneRelationshipType.getter();
  sub_1ABA9E0A0(v354, v355, v356, v357, v358, v359, v360, v361);
  sub_1ABA7BFC4();
  sub_1ABA88934(v362 + 3472);
  if ((v0 & 1) == 0)
  {
    sub_1ABA88F2C();
    static EntityClass.quantityRelationshipType.getter();
    sub_1ABA9E1C0(v363, v364, v365, v366, v367, v368, v369, v370);
    sub_1ABA7BFC4();
    sub_1ABA88934(v371 + 3424);
    sub_1ABA89008();
    static EntityClass.religionRelationshipType.getter();
    sub_1ABA9E300(v372, v373, v374, v375, v376, v377, v378, v379);
    sub_1ABA7BFC4();
    sub_1ABA88934(v380 + 3376);
    sub_1ABA8A75C();
    static EntityClass.person.getter();
    sub_1ABA88E90(v381, v382, v383, v384, v385, v386, v387, v388);
    sub_1ABA7BFC4();
    sub_1ABA88934(v389 + 3328);
    sub_1ABA8ACD4();
    static EntityClass.role.getter();
    sub_1ABA9E408(v390, v391, v392, v393, v394, v395, v396, v397);
    sub_1ABA7BFC4();
    sub_1ABA88934(v398 + 3280);
    sub_1ABA9E8AC();
    static EntityClass.typeOfProfession.getter();
    sub_1ABA88F64(v399, v400, v401, v402, v403, v404, v405, v406);
    sub_1ABA7BFC4();
    sub_1ABA88934(v407 + 3232);
    sub_1ABA9EA28();
    static EntityClass.religion.getter();
    sub_1ABA9E4FC(v408, v409, v410, v411, v412, v413, v414, v415);
    sub_1ABA7BFC4();
    sub_1ABA88934(v416 + 3184);
    sub_1ABA9F114();
    static EntityClass.language.getter();
    sub_1ABA89040(v417, v418, v419, v420, v421, v422, v423, v424);
    sub_1ABA7BFC4();
    sub_1ABA88934(v425 + 3136);
    sub_1ABB7E0D0();
    static EntityClass.organization.getter();
    sub_1ABA9E64C(v426, v427, v428, v429, v430, v431, v432, v433);
    sub_1ABA7BFC4();
    sub_1ABA88934(v434 + 3088);
    sub_1ABA9EE08();
    static EntityClass.politicalParty.getter();
    sub_1ABA89108(v435, v436, v437, v438, v439, v440, v441, v442);
    sub_1ABA7BFC4();
    sub_1ABA88934(v443 + 3040);
    sub_1ABA9EF58();
    static EntityClass.populatedPlace.getter();
    sub_1ABA9E7E8(v444, v445, v446, v447, v448, v449, v450, v451);
    sub_1ABA7BFC4();
    sub_1ABA88934(v452 + 2992);
    sub_1ABA88A48();
    static EntityClass.state.getter();
    sub_1ABA891C4(v453, v454, v455, v456, v457, v458, v459, v460);
    sub_1ABA7BFC4();
    sub_1ABA88934(v461 + 2944);
    sub_1ABA8A430();
    static EntityClass.country.getter();
    sub_1ABA9E8E4(v462, v463, v464, v465, v466, v467, v468, v469);
    sub_1ABA7BFC4();
    sub_1ABA88934(v470 + 2896);
    sub_1ABAA0650();
    static EntityClass.timeZone.getter();
    sub_1ABA892B4(v471, v472, v473, v474, v475, v476, v477, v478);
    sub_1ABA7BFC4();
    sub_1ABA88934(v479 + 2848);
    sub_1ABA8AA60();
    static EntityClass.event.getter();
    sub_1ABA9EA74(v480, v481, v482, v483, v484, v485, v486, v487);
    sub_1ABA7BFC4();
    sub_1ABA88934(v488 + 2800);
    sub_1ABA89EA4();
    static EntityClass.interestRelationshipType.getter();
    sub_1ABA8938C(v489, v490, v491, v492, v493, v494, v495, v496);
    sub_1ABA7BFC4();
    sub_1ABA88934(v497 + 2752);
    sub_1ABA88A04();
    static EntityClass.groupOfHumans.getter();
    sub_1ABA9EB90(v498, v499, v500, v501, v502, v503, v504, v505);
    sub_1ABA7BFC4();
    sub_1ABA88934(v506 + 2704);
    sub_1ABA88DB4();
    static EntityClass.siribaseType.getter();
    sub_1ABA894B8(v507, v508, v509, v510, v511, v512, v513, v514);
    sub_1ABA7BFC4();
    sub_1ABA88934(v515 + 2656);
    sub_1ABA8B3A8();
    static EntityClass.participationRelationshipType.getter();
    sub_1ABA9ECE4(v516, v517, v518, v519, v520, v521, v522, v523);
    sub_1ABA7BFC4();
    sub_1ABA88934(v524 + 2608);
    sub_1ABA897E4();
    static EntityClass.devicePrimaryUser.getter();
    sub_1ABA895F4(v525, v526, v527, v528, v529, v530, v531, v532);
    sub_1ABA7BFC4();
    sub_1ABA88934(v533 + 2560);
    sub_1ABA88BCC();
    static EntityClass.calendar.getter();
    sub_1ABA9EE34(v534, v535, v536, v537, v538, v539, v540, v541);
    sub_1ABA7BFC4();
    sub_1ABA88934(v542 + 2512);
    sub_1ABA8A8D8();
    static EntityClass.calendarEvent.getter();
    sub_1ABA8974C(v543, v544, v545, v546, v547, v548, v549, v550);
    sub_1ABA7BFC4();
    sub_1ABA88934(v551 + 2464);
    sub_1ABA89BA0();
    static EntityClass.home.getter();
    sub_1ABA9EF98(v552, v553, v554, v555, v556, v557, v558, v559);
    sub_1ABA7BFC4();
    sub_1ABA88934(v560 + 2416);
    sub_1ABA8CC34();
    static EntityClass.document.getter();
    sub_1ABA8986C(v561, v562, v563, v564, v565, v566, v567, v568);
    sub_1ABA7BFC4();
    sub_1ABA88934(v569 + 2368);
    sub_1ABA8CDC0();
    static EntityClass.software.getter();
    sub_1ABA9F070(v570, v571, v572, v573, v574, v575, v576, v577);
    sub_1ABA7BFC4();
    sub_1ABA88934(v578 + 2320);
    sub_1ABA9DF28();
    static EntityClass.genre.getter();
    sub_1ABA899B0(v579, v580, v581, v582, v583, v584, v585, v586);
    sub_1ABA7BFC4();
    sub_1ABA88934(v587 + 2272);
    sub_1ABA8A798();
    static EntityClass.work.getter();
    sub_1ABA9F154(v588, v589, v590, v591, v592, v593, v594, v595);
    sub_1ABA7BFC4();
    sub_1ABA88934(v596 + 2224);
    sub_1ABA8A154();
    static EntityClass.calendarSourceRelationshipType.getter();
    sub_1ABA89AE8(v597, v598, v599, v600, v601, v602, v603, v604);
    sub_1ABA7BFC4();
    sub_1ABA88934(v605 + 2176);
    sub_1ABA89D68();
    static EntityClass.agentAffiliationRelationshipType.getter();
    sub_1ABA9F210(v606, v607, v608, v609, v610, v611, v612, v613);
    sub_1ABA7BFC4();
    sub_1ABA88934(v614 + 2128);
    sub_1ABA8AA7C();
    static EntityClass.dateRelationshipType.getter();
    sub_1ABA89C30(v615, v616, v617, v618, v619, v620, v621, v622);
    sub_1ABA7BFC4();
    sub_1ABA88934(v623 + 2080);
    sub_1ABA8A848();
    static EntityClass.typeOfActivity.getter();
    sub_1ABA9F314(v624, v625, v626, v627, v628, v629, v630, v631);
    sub_1ABA7BFC4();
    sub_1ABA88934(v632 + 2032);
    sub_1ABA891A4();
    static EntityClass.activityEvent.getter();
    sub_1ABA89D9C(v633, v634, v635, v636, v637, v638, v639, v640);
    sub_1ABA7BFC4();
    sub_1ABA88934(v641 + 1984);
    sub_1ABA9E758();
    static EntityClass.administratorRelationshipType.getter();
    sub_1ABA9F418(v642, v643, v644, v645, v646, v647, v648, v649);
    sub_1ABA7BFC4();
    sub_1ABA88934(v650 + 1936);
    sub_1ABA9F748();
    static EntityClass.county.getter();
    sub_1ABA89EE4(v651, v652, v653, v654, v655, v656, v657, v658);
    sub_1ABA7BFC4();
    sub_1ABA88934(v659 + 1888);
    sub_1ABA89340();
    static EntityClass.visualIdentifierRelationshipType.getter();
    sub_1ABA9F4A8(v660, v661, v662, v663, v664, v665, v666, v667);
    sub_1ABA7BFC4();
    sub_1ABA88934(v668 + 1840);
    sub_1ABA9FCA0();
    static EntityClass.song.getter();
    sub_1ABA8A040(v669, v670, v671, v672, v673, v674, v675, v676);
    sub_1ABA7BFC4();
    sub_1ABA88934(v677 + 1792);
    sub_1ABAA09F4();
    static EntityClass.songRelationshipType.getter();
    sub_1ABA9F560(v678, v679, v680, v681, v682, v683, v684, v685);
    sub_1ABA7BFC4();
    sub_1ABA88934(v686 + 1744);
    sub_1ABA9F8D4();
    static EntityClass.animal.getter();
    sub_1ABA8A90C(v687, v688, v689, v690, v691, v692, v693, v694);
    sub_1ABA7BFC4();
    sub_1ABA88934(v695 + 1696);
    sub_1ABA9E2B8();
    static EntityClass.softwareRelationshipType.getter();
    sub_1ABA9F670(v696, v697, v698, v699, v700, v701, v702, v703);
    sub_1ABA7BFC4();
    sub_1ABA88934(v704 + 1648);
    sub_1ABA8AE6C();
    static EntityClass.vehicle.getter();
    sub_1ABA8A178(v705, v706, v707, v708, v709, v710, v711, v712);
    sub_1ABA7BFC4();
    sub_1ABA88934(v713 + 1600);
    sub_1ABA9F03C();
    static EntityClass.onFoot.getter();
    sub_1ABA9F760(v714, v715, v716, v717, v718, v719, v720, v721);
    sub_1ABA7BFC4();
    sub_1ABA88934(v722 + 1552);
    sub_1ABA88AD8();
    static EntityClass.automobile.getter();
    sub_1ABA8A254(v723, v724, v725, v726, v727, v728, v729, v730);
    sub_1ABA7BFC4();
    sub_1ABA88934(v731 + 1504);
    sub_1ABA9F9AC();
    static EntityClass.plane.getter();
    sub_1ABA9F830(v732, v733, v734, v735, v736, v737, v738, v739);
    sub_1ABA7BFC4();
    sub_1ABA88934(v740 + 1456);
    sub_1ABA9E618();
    static EntityClass.bicycle.getter();
    sub_1ABA8AACC(v741, v742, v743, v744, v745, v746, v747, v748);
    sub_1ABA7BFC4();
    sub_1ABA88934(v749 + 1408);
    sub_1ABB7E0B8();
    static EntityClass.ship.getter();
    sub_1ABA9F908(v750, v751, v752, v753, v754, v755, v756, v757);
    sub_1ABA7BFC4();
    sub_1ABA88934(v758 + 1360);
    sub_1ABA8D034();
    static EntityClass.bus.getter();
    sub_1ABA8A370(v759, v760, v761, v762, v763, v764, v765, v766);
    sub_1ABA7BFC4();
    sub_1ABA88934(v767 + 1312);
    sub_1ABA89A68();
    static EntityClass.locomotiveTrain.getter();
    sub_1ABA9F9F8(v768, v769, v770, v771, v772, v773, v774, v775);
    sub_1ABA7BFC4();
    sub_1ABA88934(v776 + 1264);
    sub_1ABA8A80C();
    static EntityClass.transportationActivity.getter();
    sub_1ABA8A4A4(v777, v778, v779, v780, v781, v782, v783, v784);
    sub_1ABA7BFC4();
    sub_1ABA88934(v785 + 1216);
    sub_1ABA8C8CC();
    static EntityClass.workingActivity.getter();
    sub_1ABA9FAFC(v786, v787, v788, v789, v790, v791, v792, v793);
    sub_1ABA7BFC4();
    sub_1ABA88934(v794 + 1168);
    sub_1ABA9FBA0();
    static EntityClass.meetingActivity.getter();
    sub_1ABA8AD1C(v795, v796, v797, v798, v799, v800, v801, v802);
    sub_1ABA7BFC4();
    sub_1ABA88934(v803 + 1120);
    sub_1ABA8A590();
    static EntityClass.eatingActivity.getter();
    sub_1ABA9FBD0(v804, v805, v806, v807, v808, v809, v810, v811);
    sub_1ABA7BFC4();
    sub_1ABA88934(v812 + 1072);
    sub_1ABAA0844();
    static EntityClass.watchingTVActivity.getter();
    sub_1ABA8A5D4(v813, v814, v815, v816, v817, v818, v819, v820);
    sub_1ABA7BFC4();
    sub_1ABA88934(v821 + 1024);
    sub_1ABA8BBF0();
    static EntityClass.communicatingActivity.getter();
    sub_1ABA9FCF4(v822, v823, v824, v825, v826, v827, v828, v829);
    sub_1ABA7BFC4();
    sub_1ABA88934(v830 + 976);
    sub_1ABA9FE14();
    static EntityClass.shoppingActivity.getter();
    sub_1ABA8AEC8(v831, v832, v833, v834, v835, v836, v837, v838);
    sub_1ABA7BFC4();
    sub_1ABA88934(v839 + 928);
    sub_1ABA9F80C();
    static EntityClass.travelingActivity.getter();
    sub_1ABA9FE54(v840, v841, v842, v843, v844, v845, v846, v847);
    sub_1ABA7BFC4();
    sub_1ABA88934(v848 + 880);
    sub_1ABA9F2D4();
    static EntityClass.readingActivity.getter();
    sub_1ABA8B0E0(v849, v850, v851, v852, v853, v854, v855, v856);
    sub_1ABA7BFC4();
    sub_1ABA88934(v857 + 832);
    sub_1ABA9F490();
    static EntityClass.vacationingActivity.getter();
    sub_1ABA950DC(v858, v859, v860, v861, v862, v863, v864, v865);
    sub_1ABA7BFC4();
    sub_1ABA88934(v866 + 784);
    sub_1ABAA0DF8();
    static EntityClass.gamingActivity.getter();
    sub_1ABA8B25C(v867, v868, v869, v870, v871, v872, v873, v874);
    sub_1ABA7BFC4();
    sub_1ABA88934(v875 + 736);
    sub_1ABA9FF2C();
    static EntityClass.socializingActivity.getter();
    sub_1ABA9FFAC(v876, v877, v878, v879, v880, v881, v882, v883);
    sub_1ABA7BFC4();
    sub_1ABA88934(v884 + 688);
    sub_1ABA8C658();
    static EntityClass.wakingUpActivity.getter();
    sub_1ABA8B490(v885, v886, v887, v888, v889, v890, v891, v892);
    sub_1ABA7BFC4();
    sub_1ABA88934(v893 + 640);
    sub_1ABB7E0AC();
    static EntityClass.goingToBedActivity.getter();
    sub_1ABAA0128(v894, v895, v896, v897, v898, v899, v900, v901);
    sub_1ABA7BFC4();
    sub_1ABA88934(v902 + 592);
    sub_1ABA9EB58();
    static EntityClass.sleepingActivity.getter();
    sub_1ABA8B65C(v903, v904, v905, v906, v907, v908, v909, v910);
    sub_1ABA7BFC4();
    sub_1ABA88934(v911 + 544);
    sub_1ABA8B19C();
    static EntityClass.exercisingActivity.getter();
    sub_1ABAA02C8(v912, v913, v914, v915, v916, v917, v918, v919);
    sub_1ABA7BFC4();
    sub_1ABA88934(v920 + 496);
    sub_1ABB7E0C4();
    static EntityClass.mindfulnessActivity.getter();
    sub_1ABA8B874(v921, v922, v923, v924, v925, v926, v927, v928);
    sub_1ABA7BFC4();
    sub_1ABA88934(v929 + 448);
    sub_1ABA9F524();
    static EntityClass.onThePhoneActivity.getter();
    sub_1ABAA0408(v930, v931, v932, v933, v934, v935, v936, v937);
    sub_1ABA7BFC4();
    sub_1ABA88934(v938 + 400);
    sub_1ABAA00CC();
    static EntityClass.facetimeActivity.getter();
    sub_1ABA8BA84(v939, v940, v941, v942, v943, v944, v945, v946);
    sub_1ABA7BFC4();
    sub_1ABA88934(v947 + 352);
    sub_1ABA9F3DC();
    static EntityClass.walkingActivity.getter();
    sub_1ABAA0520(v948, v949, v950, v951, v952, v953, v954, v955);
    sub_1ABA7BFC4();
    sub_1ABA88934(v956 + 304);
    sub_1ABA8947C();
    static EntityClass.runningActivity.getter();
    sub_1ABAA06D0(v957, v958, v959, v960, v961, v962, v963, v964);
    sub_1ABA7BFC4();
    sub_1ABA88934(v965 + 256);
    sub_1ABA9FF50();
    sub_1ABA8BC54(v966, v967, v968, v969, v970, v971, v972, v973);
    sub_1ABA7BFC4();
    sub_1ABA88934(v974 + 208);
    sub_1ABA8BD88();
    static EntityClass.hikingActivity.getter();
    sub_1ABAA088C(v975, v976, v977, v978, v979, v980, v981, v982);
    sub_1ABA7BFC4();
    sub_1ABA88934(v983 + 160);
    sub_1ABA8CF70();
    static EntityClass.modeOfTransportation.getter();
    sub_1ABA8C55C(v984, v985, v986, v987, v988, v989, v990, v991);
    sub_1ABA7BFC4();
    sub_1ABA88934(v992 + 112);
    sub_1ABB7E0A0();
    static EntityClass.automobileModel.getter();
    sub_1ABAA0A44(v993, v994, v995, v996, v997, v998, v999, v1000);
    sub_1ABA7BFC4();
    sub_1ABA88934(v1001 + 64);
    static EntityClass.transportationActivityType.getter();
    sub_1ABA8C710(v1002, v1003, v1004, v1005, v1006, v1007, v1008, v1009);
    sub_1ABA7BFC4();
    sub_1ABA88934(v1010 + 16);
    static EntityClass.workingActivityType.getter();
    *&v1011 = sub_1ABAB0F68().n128_u64[0];
    sub_1ABB7DF94(v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019, v1011);
    sub_1ABA8A830();
    static EntityClass.meetingActivityType.getter();
    *&v1020 = sub_1ABAB3BD0().n128_u64[0];
    sub_1ABB7DFB4(v1021, v1022, v1023, v1024, v1025, v1026, v1027, v1028, v1020);
    sub_1ABB7E14C();
    static EntityClass.eatingActivityType.getter();
    sub_1ABA8CAAC();
    sub_1ABAB61B4(v1029, v1268, v1287, v1306, v1325, v1344, v1363, v1382, v1400);
    sub_1ABAB5E8C();
    static EntityClass.watchingMediaActivityType.getter();
    sub_1ABA95488();
    sub_1ABA856C4(v1030, &v1418);
    sub_1ABAA6708();
    static EntityClass.communicatingActivityType.getter();
    sub_1ABA90C94();
    sub_1ABA856C4(v1031, &v1418);
    sub_1ABB7E50C();
    static EntityClass.shoppingActivityType.getter();
    sub_1ABA885E0();
    sub_1ABA856C4(v1032, &v1418);
    sub_1ABB7E3EC();
    static EntityClass.mindfulActivityType.getter();
    sub_1ABAB5298();
    sub_1ABA856C4(v1033, &v1418);
    sub_1ABB7E284();
    static EntityClass.sleepActivityType.getter();
    sub_1ABAA0E90();
    sub_1ABA856C4(v1034, &v1418);
    sub_1ABB7E194();
    static EntityClass.travelActivityType.getter();
    sub_1ABAB548C();
    sub_1ABA856C4(v1035, &v1418);
    sub_1ABAB5F38();
    static EntityClass.readingActivityType.getter();
    sub_1ABAA10B4();
    sub_1ABA856C4(v1036, &v1418);
    sub_1ABAA11F8();
    static EntityClass.vacationActivityType.getter();
    sub_1ABAB5660();
    sub_1ABA856C4(v1037, &v1418);
    sub_1ABAA2778();
    static EntityClass.socialActivityType.getter();
    sub_1ABAA128C();
    sub_1ABA856C4(v1038, &v1418);
    sub_1ABB7E44C();
    static EntityClass.wakingActivityType.getter();
    sub_1ABAB5828();
    sub_1ABA856C4(v1039, &v1418);
    sub_1ABB7E2E4();
    static EntityClass.goingToBedActivityType.getter();
    sub_1ABAA14F4();
    sub_1ABA856C4(v1040, &v1418);
    sub_1ABB7E20C();
    static EntityClass.phoneCallActivityType.getter();
    sub_1ABAB5A24();
    sub_1ABA856C4(v1041, &v1418);
    sub_1ABAA36E4();
    static EntityClass.facetimeActivityType.getter();
    sub_1ABA95260();
    sub_1ABA856C4(v1042, &v1418);
    sub_1ABAA47F8();
    static EntityClass.walkingActivityType.getter();
    sub_1ABA96024();
    sub_1ABA856C4(v1043, &v1418);
    sub_1ABAA1E08();
    static EntityClass.runningActivityType.getter();
    sub_1ABAA1764();
    sub_1ABA856C4(v1044, &v1418);
    sub_1ABB7E4C4();
    static EntityClass.bikingActivityType.getter();
    sub_1ABA82DEC();
    sub_1ABA856C4(v1045, &v1418);
    sub_1ABB7E374();
    static EntityClass.hikingActivityType.getter();
    sub_1ABAA1980();
    sub_1ABA856C4(v1046, &v1418);
    sub_1ABA88910();
    static EntityClass.typeOfPhysicalExercise.getter();
    sub_1ABA97F20();
    sub_1ABA856C4(v1047, &v1418);
    sub_1ABB7E164();
    static EntityClass.localizedNameRelationshipType.getter();
    sub_1ABAA1BC0();
    sub_1ABA856C4(v1048, &v1418);
    sub_1ABAA2B18();
    static EntityClass.mediaWork.getter();
    sub_1ABA97768();
    sub_1ABA856C4(v1049, &v1418);
    sub_1ABAA3B30();
    static EntityClass.commuteActivity.getter();
    sub_1ABA96C28();
    sub_1ABA856C4(v1050, &v1418);
    sub_1ABAB5214();
    static EntityClass.diningActivity.getter();
    sub_1ABAB5C84();
    sub_1ABA856C4(v1051, &v1418);
    sub_1ABB7E404();
    static EntityClass.attendingAPerformanceActivity.getter();
    sub_1ABAA1EB4();
    sub_1ABA856C4(v1052, &v1418);
    sub_1ABB7E2B4();
    static EntityClass.stationaryActivity.getter();
    sub_1ABAB1044();
    sub_1ABA856C4(v1053, &v1418);
    sub_1ABB7E1C4();
    static EntityClass.knowledgeSource.getter();
    sub_1ABA7AC70();
    sub_1ABA856C4(v1054, &v1418);
    sub_1ABA94EA0();
    static EntityClass.confidenceRelationshipType.getter();
    sub_1ABA82774();
    sub_1ABA856C4(v1055, &v1418);
    sub_1ABAA6408();
    static EntityClass.commuteActivityType.getter();
    sub_1ABA96964();
    sub_1ABA856C4(v1056, &v1418);
    sub_1ABAB5EB0();
    static EntityClass.make.getter();
    sub_1ABAA2228();
    sub_1ABA856C4(v1057, &v1418);
    sub_1ABB7E47C();
    static EntityClass.locationVisitActivity.getter();
    sub_1ABA95784();
    sub_1ABA856C4(v1058, &v1418);
    sub_1ABB7E344();
    static EntityClass.performanceRelationshipType.getter();
    sub_1ABAA2548();
    sub_1ABA856C4(v1059, &v1418);
    sub_1ABB7E23C();
    static EntityClass.partWholeRelationshipType.getter();
    sub_1ABAA2860();
    sub_1ABA856C4(v1060, &v1418);
    sub_1ABAA102C();
    static EntityClass.ratingRelationshipType.getter();
    sub_1ABA974C0();
    sub_1ABA856C4(v1061, &v1418);
    sub_1ABAA5644();
    static EntityClass.musicalArtist.getter();
    sub_1ABAA2C18();
    sub_1ABA856C4(v1062, &v1418);
    sub_1ABAB6000();
    static EntityClass.contentRating.getter();
    sub_1ABAA2FFC();
    sub_1ABA856C4(v1063, &v1418);
    sub_1ABB7E4F4();
    static EntityClass.sportsGameEvent.getter();
    sub_1ABAA3458();
    sub_1ABA856C4(v1064, &v1418);
    sub_1ABB7E3D4();
    static EntityClass.sportsTeam.getter();
    sub_1ABAA37BC();
    sub_1ABA856C4(v1065, &v1418);
    sub_1ABB7E26C();
    static EntityClass.drivingActivity.getter();
    sub_1ABAA3C1C();
    sub_1ABA856C4(v1066, &v1418);
    sub_1ABB7E1AC();
    static EntityClass.drivingActivityType.getter();
    sub_1ABAA3FC8();
    sub_1ABA856C4(v1067, &v1418);
    sub_1ABAB5BA4();
    static EntityClass.behaviorActivity.getter();
    sub_1ABAA4474();
    sub_1ABA856C4(v1068, &v1418);
    sub_1ABAA18F4();
    static EntityClass.behaviorActivityType.getter();
    sub_1ABAA48E8();
    sub_1ABA856C4(v1069, &v1418);
    sub_1ABB7E32C();
    static EntityClass.time.getter();
    sub_1ABAA4D28();
    sub_1ABA856C4(v1070, &v1418);
    sub_1ABB7E224();
    static EntityClass.album.getter();
    sub_1ABAA5230();
    sub_1ABA856C4(v1071, &v1418);
    sub_1ABAA20E4();
    static EntityClass.musicalWork.getter();
    sub_1ABAA5770();
    sub_1ABA856C4(v1072, &v1418);
    sub_1ABAA1674();
    static EntityClass.group.getter();
    sub_1ABA97A50();
    sub_1ABA856C4(v1073, &v1418);
    sub_1ABAA0E1C();
    static EntityClass.groupRelationshipType.getter();
    sub_1ABA83FD0();
    sub_1ABA856C4(v1074, &v1418);
    sub_1ABB7E4DC();
    static EntityClass.livingBeingRelationship.getter();
    sub_1ABA8E138();
    sub_1ABA856C4(v1075, &v1418);
    sub_1ABB7E3BC();
    static EntityClass.entityAliasRelationshipType.getter();
    sub_1ABA9A318();
    sub_1ABA856C4(v1076, &v1418);
    sub_1ABB7E254();
    static EntityClass.pet.getter();
    sub_1ABAA5F84();
    sub_1ABA856C4(v1077, &v1418);
    sub_1ABB7E17C();
    static EntityClass.dog.getter();
    sub_1ABA90688();
    sub_1ABA856C4(v1078, &v1418);
    sub_1ABAA0DD4();
    static EntityClass.cat.getter();
    sub_1ABA9930C();
    sub_1ABA856C4(v1079, &v1418);
    sub_1ABAA2114();
    static EntityClass.extractionTagRelationshipType.getter();
    sub_1ABA8BF00();
    sub_1ABA856C4(v1080, &v1418);
    sub_1ABAA4C3C();
    static EntityClass.movie.getter();
    sub_1ABA8FEF8();
    sub_1ABA856C4(v1081, &v1418);
    sub_1ABB7E41C();
    static EntityClass.sportsOrganization.getter();
    sub_1ABA9487C();
    sub_1ABA856C4(v1082, &v1418);
    sub_1ABB7E2CC();
    static EntityClass.sportsLeague.getter();
    sub_1ABA81650();
    sub_1ABA856C4(v1083, &v1418);
    sub_1ABB7E1F4();
    static EntityClass.athlete.getter();
    sub_1ABA83770();
    sub_1ABA856C4(v1084, &v1418);
    sub_1ABAA5D30();
    static EntityClass.personInTheArts.getter();
    sub_1ABA8E744();
    sub_1ABA856C4(v1085, &v1418);
    sub_1ABAA63AC();
    static EntityClass.musician.getter();
    sub_1ABA7E4B0();
    sub_1ABA856C4(v1086, &v1418);
    sub_1ABAA2F20();
    static EntityClass.televisionProgram.getter();
    sub_1ABA9335C();
    sub_1ABA856C4(v1087, &v1418);
    sub_1ABB7E494();
    static EntityClass.sportsActivity.getter();
    sub_1ABA7BFA4();
    sub_1ABA856C4(v1088, &v1418);
    sub_1ABB7E35C();
    static EntityClass.screenTimeSegment.getter();
    sub_1ABA808C4();
    sub_1ABA856C4(v1089, &v1418);
    sub_1ABA888EC();
    static EntityClass.myPet.getter();
    sub_1ABA7FC3C();
    sub_1ABA856C4(v1090, &v1418);
    sub_1ABA889A8();
    static EntityClass.myDog.getter();
    sub_1ABA8CC90();
    sub_1ABA856C4(v1091, &v1418);
    sub_1ABB7E314();
    static EntityClass.myCat.getter();
    sub_1ABB7D86C();
    sub_1ABA856C4(v1092, &v1418);
    sub_1ABB7E434();
    static EntityClass.walletOrder.getter();
    sub_1ABA96F80();
    sub_1ABA856C4(v1093, &v1418);
    sub_1ABAA63D0();
    static EntityClass.walletTransaction.getter();
    sub_1ABAB659C();
    sub_1ABA856C4(v1094, &v1418);
    sub_1ABAA5DCC();
    static EntityClass.orderEmailRelationshipType.getter();
    sub_1ABAB6778();
    sub_1ABA856C4(v1095, &v1418);
    sub_1ABAA2478();
    static EntityClass.orderTransactionRelationshipType.getter();
    sub_1ABAB68A4();
    sub_1ABA856C4(v1096, &v1418);
    sub_1ABAA64C8();
    static EntityClass.payment.getter();
    sub_1ABB7D854();
    sub_1ABA856C4(v1097, &v1418);
    sub_1ABB7E1DC();
    static EntityClass.transaction.getter();
    sub_1ABA972E0();
    sub_1ABA856C4(v1098, &v1418);
    sub_1ABB7E29C();
    static EntityClass.email.getter();
    sub_1ABA82A44();
    sub_1ABA856C4(v1099, &v1418);
    sub_1ABB7E3A4();
    static EntityClass.shippinginfo.getter();
    sub_1ABB7D83C();
    sub_1ABA856C4(v1100, &v1418);
    sub_1ABB7E4AC();
    static EntityClass.shipmentFullFillmentInfo.getter();
    sub_1ABA963E0(v1101, v1102, v1103, v1104, v1105, v1106, v1107, v1108, v1269, v1288, v1307, v1326, v1345, v1364, v1383, v1401, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, v1434, v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, *(&v1444 + 1), v1445, *(&v1445 + 1), v1446, v1447, v1448, *(&v1448 + 1), v1449, *(&v1449 + 1), v1450, v1451, v1452, *(&v1452 + 1), v1453, v1454, v1455, v1456, v1457, *(&v1457 + 1), v1458);
    sub_1ABA856C4(v1109, &v1418);
    sub_1ABAA5BF4();
    static EntityClass.orderShippingInfoRelationshipType.getter();
    sub_1ABAB2AE0(v1110, v1111, v1112, v1113, v1114, v1115, v1116, v1117, v1270, v1289, v1308, v1327, v1346, v1365, v1384, v1402, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, v1434, v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, *(&v1444 + 1), v1445, *(&v1445 + 1), v1446, v1447, v1448, *(&v1448 + 1), v1449, *(&v1449 + 1), v1450, v1451, v1452, *(&v1452 + 1), v1453, v1454, v1455, v1456, v1457);
    v1119 = sub_1ABA856C4(v1118, &v1418);
    sub_1ABAB5E68(v1119, v1120, v1121, v1122, v1123, v1124, v1125, v1126, v1271, v1290, v1309, v1328, v1347, v1366, v1385, v1403, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, v1434, v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, *(&v1444 + 1), v1445, *(&v1445 + 1), v1446, v1447, v1448, *(&v1448 + 1), v1449, *(&v1449 + 1), v1450, v1451, v1452, *(&v1452 + 1), v1453, v1454, v1455, v1456, v1457, *(&v1457 + 1), v1458);
    static EntityClass.entityOrganizationRelationshipType.getter();
    sub_1ABB7D824(v1127, v1128, v1129, v1130, v1131, v1132, v1133, v1134, v1272, v1291, v1310, v1329, v1348, v1367, v1386, v1404, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, v1434, v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, *(&v1444 + 1), v1445, *(&v1445 + 1), v1446, v1447, v1448, *(&v1448 + 1), v1449, *(&v1449 + 1), v1450, v1451, v1452);
    v1136 = sub_1ABA856C4(v1135, &v1418);
    sub_1ABAA1DE4(v1136, v1137, v1138, v1139, v1140, v1141, v1142, v1143, v1273, v1292, v1311, v1330, v1349, v1368, v1387, v1405, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, v1434, v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, *(&v1444 + 1), v1445, *(&v1445 + 1), v1446, v1447, v1448, *(&v1448 + 1), v1449, *(&v1449 + 1), v1450, v1451, v1452, *(&v1452 + 1), v1453, v1454, v1455, v1456, v1457);
    static EntityClass.shipmentFullFillmentEmailRelationshipType.getter();
    sub_1ABB7D80C(v1144, v1145, v1146, v1147, v1148, v1149, v1150, v1151, v1274, v1293, v1312, v1331, v1350, v1369, v1388, v1406, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, v1434, v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, *(&v1444 + 1), v1445, *(&v1445 + 1), v1446, v1447, v1448);
    v1153 = sub_1ABA856C4(v1152, &v1418);
    sub_1ABA887FC(v1153, v1154, v1155, v1156, v1157, v1158, v1159, v1160, v1275, v1294, v1313, v1332, v1351, v1370, v1389, v1407, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, v1434, v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, *(&v1444 + 1), v1445, *(&v1445 + 1), v1446, v1447, v1448, *(&v1448 + 1), v1449, *(&v1449 + 1), v1450, v1451, v1452);
    static EntityClass.orderShipmentFullFillmentRelationshipType.getter();
    v1169 = sub_1ABB7DF54(v1161, v1162, v1163, v1164, v1165, v1166, v1167, v1168, v1276, v1295, v1314, v1333, v1352, v1371, v1390, v1408, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, v1434, v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, v1449, v1450);
    sub_1ABA889E0(v1169, v1170, v1171, v1172, v1173, v1174, v1175, v1176, v1277, v1296, v1315, v1334, v1353, v1372, v1391, v1409, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, v1434, v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, *(&v1444 + 1), v1445, *(&v1445 + 1), v1446, v1447, v1448);
    static EntityClass.orderPaymentRelationshipType.getter();
    v1185 = sub_1ABB7DF2C(v1177, v1178, v1179, v1180, v1181, v1182, v1183, v1184, v1278, v1297, v1316, v1335, v1354, v1373, v1392, v1410, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, v1434, v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445, v1446);
    sub_1ABB7EA70(v1185, v1186, v1187, v1188, v1189, v1190, v1191, v1192, v1279, v1298, v1317, v1336, v1355, v1374, v1393, v1411, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, v1434, v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444);
    static EntityClass.fromToEmailRelationshipType.getter();
    v1201 = sub_1ABB7E9B0(v1193, v1194, v1195, v1196, v1197, v1198, v1199, v1200, v1280, v1299, v1318, v1337, v1356, v1375, v1394, v1412, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, v1434, v1435, v1436, v1437, v1438, v1439);
    sub_1ABB7EA40(v1201, v1202, v1203, v1204, v1205, v1206, v1207, v1208, v1281, v1300, v1319, v1338, v1357, v1376, v1395, v1413, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, v1434, v1435, v1436, v1437, v1438, v1439);
    static EntityClass.orderPersonRelationshipType.getter();
    v1217 = sub_1ABB7E998(v1209, v1210, v1211, v1212, v1213, v1214, v1215, v1216, v1282, v1301, v1320, v1339, v1358, v1377, v1396, v1414, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, v1434);
    sub_1ABB7EA10(v1217, v1218, v1219, v1220, v1221, v1222, v1223, v1224, v1283, v1302, v1321, v1340, v1359, v1378, v1397, v1415, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, v1434);
    static EntityClass.holidayEvent.getter();
    v1233 = sub_1ABB7E980(v1225, v1226, v1227, v1228, v1229, v1230, v1231, v1232, v1284, v1303, v1322, v1341, v1360, v1379, v1398, v1416, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429);
    sub_1ABB7E9F8(v1233, v1234, v1235, v1236, v1237, v1238, v1239, v1240, v1285, v1304, v1323, v1342, v1361, v1380, v1399, v1417, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429);
    static EntityClass.shipmentPersonRelationshipType.getter();
    v1249 = sub_1ABB7E968(v1241, v1242, v1243, v1244, v1245, v1246, v1247, v1248);
    sub_1ABB7EA58(v1249, v1250, v1251, v1252, v1253, v1254, v1255, v1256, v1286, v1305, v1324, v1343, v1362, v1381);
    static EntityClass.emailInfoRelationshipType.getter();
    v1260 = sub_1ABB7E950(v1257, v1258, v1259);
    sub_1ABB7EA28(v1260, v1261, v1262);
    sub_1ABC6D528();
    v1263 = sub_1ABF237D4();
    sub_1ABF24674();
    sub_1ABAA20BC();
    if (sub_1ABB7E014())
    {
      v1264 = sub_1ABAD8744();
      sub_1ABAA0B68(v1264);
      if (v1)
      {
        while (1)
        {
          sub_1ABA88988();
          v1265();
          sub_1ABA9FAB0();
        }
      }

      sub_1ABA8A7E0(&dword_1ABA78000, v1266, v1267, "EntityClass: descendantClasses: unknown entity class.");
      sub_1ABAD874C();
    }
  }

  v203 = sub_1ABAA6734(0);
  v0 = v203;
LABEL_41:
  if (sub_1ABA8DEE8(v203))
  {
    sub_1ABA8DEF4(v0, v204, v205, v206, v207, v208, v209, v210, v1268, v1287, v1306, v1325, SBYTE4(v1325));
  }

  else
  {
  }

  sub_1ABAB5B7C();
  sub_1ABA82A00();
}

void sub_1ABA88588()
{
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[13];
  v4 = v0[14];
}

uint64_t sub_1ABA88598()
{

  return swift_slowAlloc();
}

id sub_1ABA885B0(uint64_t a1, void **a2)
{
  v3 = *a2;

  return v3;
}

uint64_t sub_1ABA885C8()
{

  return sub_1ABAD219C(v0, v1);
}

__n128 sub_1ABA885E0()
{
  result = *&STACK[0xEC0];
  v1 = *&STACK[0xED0];
  *&STACK[0xEF0] = *&STACK[0xEC0];
  *&STACK[0xF00] = v1;
  LOBYTE(STACK[0xF10]) = STACK[0xEE0];
  return result;
}

uint64_t sub_1ABA886E8()
{
}

uint64_t sub_1ABA88700()
{

  return sub_1ABF24E64();
}

void *sub_1ABA88730()
{

  return memcpy((v0 + 120), (v0 + 520), 0x190uLL);
}

uint64_t sub_1ABA8875C(uint64_t a1)
{
  *(v2 - 232) = v1;
  *(v2 - 88) = a1;

  return sub_1ABF24BC4();
}

void sub_1ABA8877C(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v6, v7, a4, a5, a6, v8, 2u);
}

uint64_t sub_1ABA8879C()
{
  v2 = *(v0 - 168);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1ABA887D0()
{

  return swift_getWitnessTable();
}

uint64_t sub_1ABA887FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{

  return sub_1ABA88934(&a55);
}

uint64_t sub_1ABA88814()
{
  v3 = *(v0 + *(v1 + 36));
}

uint64_t sub_1ABA8882C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 >= 1844)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a3 >= 3396)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (!_Records_GDEntityClass_classIds[0])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  result = sub_1ABF23DD4();
  if (_Records_GDEntityClass_labels)
  {
    v7 = result;
    v8 = v6;
    result = sub_1ABF23DD4();
    *a4 = v7;
    *(a4 + 8) = v8;
    *(a4 + 16) = result;
    *(a4 + 24) = v9;
    *(a4 + 32) = v5;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1ABA888EC()
{

  return sub_1ABA88934(&STACK[0x440]);
}

uint64_t sub_1ABA88910()
{

  return sub_1ABA88934(&STACK[0xC50]);
}

uint64_t sub_1ABA889A8()
{

  return sub_1ABA88934(&STACK[0x410]);
}

uint64_t sub_1ABA889E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{

  return sub_1ABA88934(&a49);
}

__n128 sub_1ABA88A28()
{
  result = *&STACK[0x1FD0];
  v1 = *&STACK[0x1FE0];
  *&STACK[0x2000] = *&STACK[0x1FD0];
  *&STACK[0x2010] = v1;
  return result;
}

__n128 sub_1ABA88A6C()
{
  result = *&STACK[0x1F70];
  v1 = *&STACK[0x1F80];
  *&STACK[0x1FA0] = *&STACK[0x1F70];
  *&STACK[0x1FB0] = v1;
  return result;
}

uint64_t sub_1ABA88A80()
{

  return sub_1ABCF9424();
}

__n128 sub_1ABA88A9C()
{
  result = *&STACK[0x1F10];
  v1 = *&STACK[0x1F20];
  *&STACK[0x1F40] = *&STACK[0x1F10];
  *&STACK[0x1F50] = v1;
  return result;
}

uint64_t sub_1ABA88AFC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);

  return sub_1ABB23104(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1ABA88B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1E90];
  *&STACK[0x1EB0] = *&STACK[0x1E80];
  *&STACK[0x1EC0] = v10;
  *(v8 + 3584) = *(v8 + 3536);

  return sub_1ABA856C4(&STACK[0x1EB0], va);
}

uint64_t sub_1ABA88B50()
{

  return sub_1ABF25254();
}

uint64_t sub_1ABA88B74()
{

  return sub_1ABF24BC4();
}

void sub_1ABA88B9C()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABA88BB4()
{

  return sub_1ABF23C74();
}

uint64_t sub_1ABA88BF0()
{

  return sub_1ABF24EC4();
}

uint64_t sub_1ABA88C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1E30];
  *&STACK[0x1E50] = *&STACK[0x1E20];
  *&STACK[0x1E60] = v10;
  *(v8 + 3488) = *(v8 + 3440);

  return sub_1ABA856C4(&STACK[0x1E50], va);
}

void *sub_1ABA88C44(void *a1)
{

  return memcpy(a1, (v1 + 112), 0x3C9uLL);
}

uint64_t sub_1ABA88C70()
{

  return sub_1ABF24B94();
}

uint64_t sub_1ABA88C9C()
{
  v3 = *(v1 + v0);
}

id sub_1ABA88CB4(id a1, SEL a2)
{
  v5 = *(v2 - 104);

  return [a1 a2];
}

uint64_t sub_1ABA88CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1DD0];
  *&STACK[0x1DF0] = *&STACK[0x1DC0];
  *&STACK[0x1E00] = v10;
  *(v8 + 3392) = *(v8 + 3344);

  return sub_1ABA856C4(&STACK[0x1DF0], va);
}

unint64_t sub_1ABA88D1C(__n128 a1, __n128 a2)
{
  *(v4 - 128) = a1;
  *(v4 - 112) = a2;
  *(v4 - 96) = v2;
  *(v4 - 94) = v3;
  *(v4 - 65) = 0;

  return sub_1ABBC2B38();
}

uint64_t sub_1ABA88D50()
{

  return sub_1ABF24BE4();
}

uint64_t sub_1ABA88D68()
{

  return sub_1ABF24F84();
}

uint64_t sub_1ABA88D98()
{
  v2 = *(v0 - 272);

  return sub_1ABF240D4();
}

__n128 sub_1ABA88DE4()
{
  result = *&STACK[0x1D30];
  v1 = *&STACK[0x1D40];
  *&STACK[0x1D60] = *&STACK[0x1D30];
  *&STACK[0x1D70] = v1;
  return result;
}

uint64_t sub_1ABA88DF8()
{

  return sub_1ABF24BC4();
}

unint64_t sub_1ABA88E10()
{

  return sub_1ABDBF718();
}

__n128 sub_1ABA88E28()
{
  result = *&STACK[0x2120];
  v2 = *&STACK[0x2130];
  *(v0 - 256) = *&STACK[0x2120];
  *(v0 - 240) = v2;
  return result;
}

uint64_t sub_1ABA88E44@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 128);
  v2 = *(a1 + 136);
  return *(a1 + 120);
}

__n128 sub_1ABA88E5C()
{
  result = *&STACK[0x2060];
  v1 = *&STACK[0x2070];
  *&STACK[0x2090] = *&STACK[0x2060];
  *&STACK[0x20A0] = v1;
  return result;
}

uint64_t sub_1ABA88E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1CE0];
  *&STACK[0x1D00] = *&STACK[0x1CD0];
  *&STACK[0x1D10] = v10;
  *(v8 + 3152) = *(v8 + 3104);

  return sub_1ABA856C4(&STACK[0x1D00], va);
}

uint64_t sub_1ABA88ED0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);

  return sub_1ABF24BD4();
}

uint64_t sub_1ABA88F10@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return swift_dynamicCast();
}

uint64_t sub_1ABA88F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1C80];
  *&STACK[0x1CA0] = *&STACK[0x1C70];
  *&STACK[0x1CB0] = v10;
  *(v8 + 3056) = *(v8 + 3008);

  return sub_1ABA856C4(&STACK[0x1CA0], va);
}

uint64_t sub_1ABA88FB0()
{

  return sub_1ABF24BE4();
}

uint64_t sub_1ABA88FC8()
{
  result = *(v0 - 192);
  v2 = *(v0 - 184);
  v3 = *(v0 - 168);
  v4 = *(v0 - 584);
  return result;
}

__n128 sub_1ABA8902C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _OWORD *a10, uint64_t a11)
{
  *v11 = a11;
  result = *v12;
  v14 = *(v12 + 16);
  *a10 = *v12;
  a10[1] = v14;
  return result;
}

uint64_t sub_1ABA89040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1C20];
  *&STACK[0x1C40] = *&STACK[0x1C10];
  *&STACK[0x1C50] = v10;
  *(v8 + 2960) = *(v8 + 2912);

  return sub_1ABA856C4(&STACK[0x1C40], va);
}

uint64_t sub_1ABA89074()
{
  result = v0[19];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[22];
  return result;
}

uint64_t sub_1ABA8908C()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1ABA890D8()
{

  return swift_beginAccess();
}

uint64_t sub_1ABA89108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1BC0];
  *&STACK[0x1BE0] = *&STACK[0x1BB0];
  *&STACK[0x1BF0] = v10;
  *(v8 + 2864) = *(v8 + 2816);

  return sub_1ABA856C4(&STACK[0x1BE0], va);
}

uint64_t sub_1ABA89164()
{
  result = *(v0 - 152);
  v2 = *(*(v0 - 160) + 8);
  v3 = *(v0 - 144);
  return result;
}

uint64_t sub_1ABA89174()
{
  v3 = *(v1 + v0);
}

BOOL sub_1ABA8918C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1ABA891C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1B60];
  *&STACK[0x1B80] = *&STACK[0x1B50];
  *&STACK[0x1B90] = v10;
  *(v8 + 2768) = *(v8 + 2720);

  return sub_1ABA856C4(&STACK[0x1B80], va);
}

void sub_1ABA8923C()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABA89254()
{
  v3 = *(v1 + v0);
}

uint64_t sub_1ABA89290()
{

  return sub_1ABF252C4();
}

uint64_t sub_1ABA892B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1B00];
  *&STACK[0x1B20] = *&STACK[0x1AF0];
  *&STACK[0x1B30] = v10;
  *(v8 + 2672) = *(v8 + 2624);

  return sub_1ABA856C4(&STACK[0x1B20], va);
}

uint64_t sub_1ABA892F4()
{
  result = v1;
  v3 = *(v0 + 8);
  return result;
}

uint64_t sub_1ABA89328()
{
  v2 = *(v0 - 160);
  v3 = *(v0 - 224);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1ABA8934C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = v3[1];
  result = v3[2];
  *(v2 - 104) = *v3;
  *(v2 - 96) = v4;
  *(v2 - 88) = result;
  return result;
}

uint64_t sub_1ABA8938C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1AA0];
  *&STACK[0x1AC0] = *&STACK[0x1A90];
  *&STACK[0x1AD0] = v10;
  *(v8 + 2576) = *(v8 + 2528);

  return sub_1ABA856C4(&STACK[0x1AC0], va);
}

id sub_1ABA893CC()
{

  return sub_1ABC665F4();
}

uint64_t sub_1ABA893FC()
{

  return swift_bridgeObjectRelease_n();
}

void static EntityClass.languageRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x1B0), *(_Records_GDEntityClass_records + 0x1B8), *(_Records_GDEntityClass_records + 0x1B8 + 8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA894B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1A40];
  *&STACK[0x1A60] = *&STACK[0x1A30];
  *&STACK[0x1A70] = v10;
  *(v8 + 2480) = *(v8 + 2432);

  return sub_1ABA856C4(&STACK[0x1A60], va);
}

uint64_t sub_1ABA8950C()
{

  return sub_1ABF24D34();
}

uint64_t sub_1ABA89534()
{
  *(v1 - 360) = v0;
}

void sub_1ABA89560()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

void static EntityClass.identifierRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x1C8), *(_Records_GDEntityClass_records + 0x1D0), *(_Records_GDEntityClass_records + 0x1D0 + 8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA895F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x19E0];
  *&STACK[0x1A00] = *&STACK[0x19D0];
  *&STACK[0x1A10] = v10;
  *(v8 + 2384) = *(v8 + 2336);

  return sub_1ABA856C4(&STACK[0x1A00], va);
}

uint64_t sub_1ABA8965C()
{
  v2 = *(*(v0 - 96) + 16);

  return sub_1ABF24BD4();
}

void sub_1ABA89678(uint64_t a1@<X8>)
{
  v4 = v3 + v2;
  *v4 = a1;
  *(v4 + 8) = v1;
}

uint64_t sub_1ABA89688()
{

  return sub_1ABA91D48(v2, v1, v0, v3 - 144);
}

void static EntityClass.imageRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x1E0), *(_Records_GDEntityClass_records + 0x1E8), *(_Records_GDEntityClass_records + 0x1E8 + 8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA89728()
{

  return sub_1ABF25054();
}

uint64_t sub_1ABA8974C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1980];
  *&STACK[0x19A0] = *&STACK[0x1970];
  *&STACK[0x19B0] = v10;
  *(v8 + 2288) = *(v8 + 2240);

  return sub_1ABA856C4(&STACK[0x19A0], va);
}

uint64_t sub_1ABA897B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 2864);
  v4 = *(a1 + 2872);
  v5 = *(a1 + 2856);

  return sub_1ABA8882C(v5, v3, v4, v1 - 144);
}

void static EntityClass.employmentRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x1F8), *(_Records_GDEntityClass_records + 0x200), *(_Records_GDEntityClass_records + 0x208), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA8986C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1920];
  *&STACK[0x1940] = *&STACK[0x1910];
  *&STACK[0x1950] = v10;
  *(v8 + 2192) = *(v8 + 2144);

  return sub_1ABA856C4(&STACK[0x1940], va);
}

void sub_1ABA898CC()
{
  v1 = *(v0 - 104);
  v2 = *(v0 - 96);
  v3 = *(v0 - 88);
  v4 = *(v0 - 112);
}

void sub_1ABA89904()
{
  v1 = *(v0 - 288);
  v2 = *(v0 - 272);
  v3 = *(v0 - 364);
}

uint64_t sub_1ABA89920()
{

  return swift_allocObject();
}

void static EntityClass.locationRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x210), *(_Records_GDEntityClass_records + 0x218), *(_Records_GDEntityClass_records + 0x220), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA899B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x18C0];
  *&STACK[0x18E0] = *&STACK[0x18B0];
  *&STACK[0x18F0] = v10;
  *(v8 + 2096) = *(v8 + 2048);

  return sub_1ABA856C4(&STACK[0x18E0], va);
}

uint64_t sub_1ABA899E4()
{

  return sub_1ABF24F54();
}

uint64_t sub_1ABA89A24(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t sub_1ABA89A38()
{
}

void static EntityClass.timeZoneRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x228), *(_Records_GDEntityClass_records + 0x230), *(_Records_GDEntityClass_records + 0x238), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA89AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1860];
  *&STACK[0x1880] = *&STACK[0x1850];
  *&STACK[0x1890] = v10;
  *(v8 + 2000) = *(v8 + 1952);

  return sub_1ABA856C4(&STACK[0x1880], va);
}

uint64_t sub_1ABA89B28()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);
  v4 = *(v0 - 104);
  v5 = *(v0 - 96);
  v6 = *(v0 - 88) | (*(v0 - 86) << 16);

  return sub_1ABB37314(v2, v3, v4, v5, v6);
}

uint64_t sub_1ABA89B80(uint64_t result)
{
  *(v3 - 104) = v1 & 0xC000000000000001;
  *(v3 - 96) = result;
  *(v3 - 120) = v1 & 0xFFFFFFFFFFFFFF8;
  *(v3 - 112) = v1;
  *(v3 - 152) = v2 + 32;
  return result;
}

void static EntityClass.quantityRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x240), *(_Records_GDEntityClass_records + 0x248), *(_Records_GDEntityClass_records + 0x250), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA89C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1800];
  *&STACK[0x1820] = *&STACK[0x17F0];
  *&STACK[0x1830] = v10;
  *(v8 + 1904) = *(v8 + 1856);

  return sub_1ABA856C4(&STACK[0x1820], va);
}

void sub_1ABA89C64()
{

  JUMPOUT(0x1AC5A9410);
}

void sub_1ABA89C7C()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
}

void sub_1ABA89C94(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  v4 = *(v3 + 8);
  LOBYTE(v3) = *(v3 + 16);
  *v1 = v4;
  *(v1 + 8) = v3;
}

uint64_t sub_1ABA89CAC()
{
}

uint64_t sub_1ABA89CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  return sub_1ABAE441C(&a26, &a12);
}

void static EntityClass.religionRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x258), *(_Records_GDEntityClass_records + 0x260), *(_Records_GDEntityClass_records + 0x268), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ABA89D74()
{
  v5 = v3 + v2;
  *v5 = v4;
  *(v5 + 8) = v1;
  *(v5 + 16) = v0;
}

uint64_t sub_1ABA89D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x17A0];
  *&STACK[0x17C0] = *&STACK[0x1790];
  *&STACK[0x17D0] = v10;
  *(v8 + 1808) = *(v8 + 1760);

  return sub_1ABA856C4(&STACK[0x17C0], va);
}

uint64_t sub_1ABA89DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{

  return sub_1ABAE42A8(&a38, &a20);
}

uint64_t sub_1ABA89E0C()
{
  v2 = *(v0 + 32);

  return sub_1ABF24F84();
}

void static EntityClass.person.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x270), *(_Records_GDEntityClass_records + 0x278), *(_Records_GDEntityClass_records + 0x280), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA89EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1740];
  *&STACK[0x1760] = *&STACK[0x1730];
  *&STACK[0x1770] = v10;
  *(v8 + 1712) = *(v8 + 1664);

  return sub_1ABA856C4(&STACK[0x1760], va);
}

uint64_t sub_1ABA89F48()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);
  v4 = *(v0 - 104);
  v5 = *(v0 - 96);
  v6 = *(v0 - 86);
  v7 = *(v0 - 88);

  return sub_1ABC6D458(v2, v3, v4, v5, v7, v6);
}

void sub_1ABA89F68()
{

  JUMPOUT(0x1AC5A9410);
}

void static EntityClass.role.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x288), *(_Records_GDEntityClass_records + 0x290), *(_Records_GDEntityClass_records + 0x298), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA8A004()
{

  return swift_allocObject();
}

uint64_t sub_1ABA8A01C()
{
  v4 = (*(v2 + 48) + v1 * v3);
  result = *v4;
  v6 = v4[1];
  v7 = *v0;
  v8 = v0[1];
  return result;
}

uint64_t sub_1ABA8A040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x16E0];
  *&STACK[0x1700] = *&STACK[0x16D0];
  *&STACK[0x1710] = v10;
  *(v8 + 1616) = *(v8 + 1568);

  return sub_1ABA856C4(&STACK[0x1700], va);
}

void sub_1ABA8A090()
{

  JUMPOUT(0x1AC5A9410);
}

void sub_1ABA8A0AC()
{

  sub_1ABADDC8C();
}

void static EntityClass.religion.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x2B8), *(_Records_GDEntityClass_records + 0x2C0), *(_Records_GDEntityClass_records + 0x2C8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA8A178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1620];
  *&STACK[0x1640] = *&STACK[0x1610];
  *&STACK[0x1650] = v10;
  *(v8 + 1424) = *(v8 + 1376);

  return sub_1ABA856C4(&STACK[0x1640], va);
}

uint64_t sub_1ABA8A254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x15C0];
  *&STACK[0x15E0] = *&STACK[0x15B0];
  *&STACK[0x15F0] = v10;
  *(v8 + 1328) = *(v8 + 1280);

  return sub_1ABA856C4(&STACK[0x15E0], va);
}

void sub_1ABA8A2A4(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v5[2] = a2;
  v5[3].n128_u64[0] = a1;
  v5[3].n128_u64[1] = v2;
  v5[4].n128_u8[0] = v3;
  *(v4 + 16) = v5;
}

void sub_1ABA8A2B8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

void static EntityClass.organization.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x2E8), *(_Records_GDEntityClass_records + 0x2F0), *(_Records_GDEntityClass_records + 0x2F8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA8A33C()
{

  return swift_allocObject();
}

uint64_t sub_1ABA8A370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1500];
  *&STACK[0x1520] = *&STACK[0x14F0];
  *&STACK[0x1530] = v10;
  *(v8 + 1136) = *(v8 + 1088);

  return sub_1ABA856C4(&STACK[0x1520], va);
}

uint64_t sub_1ABA8A3C0()
{
  *(v1 - 112) = v0;

  return sub_1ABF24BC4();
}

double sub_1ABA8A3DC(uint64_t a1, uint64_t a2)
{
  *a2 = 2;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 33) = 0u;
  *(a2 + 49) = 2;
  return result;
}

uint64_t sub_1ABA8A43C()
{
  v5 = *(v2 + 16);
  *(v5 + 16) = v0 + 1;
  v6 = v5 + (v0 << 6);
  *(v6 + 32) = *(v3 - 192);
  *(v6 + 48) = v1;
  *(v6 + 56) = *(v3 - 168);
  *(v6 + 72) = *(v3 - 152);
  *(v6 + 88) = *(v3 - 136);
  *(v2 + 16) = v5;

  return swift_endAccess();
}

uint64_t sub_1ABA8A4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x14A0];
  *&STACK[0x14C0] = *&STACK[0x1490];
  *&STACK[0x14D0] = v10;
  *(v8 + 1040) = *(v8 + 992);

  return sub_1ABA856C4(&STACK[0x14C0], va);
}

void sub_1ABA8A4D8(__n128 a1, __n128 a2)
{
  *(v4 - 128) = a1;
  *(v4 - 112) = a2;
  *(v4 - 96) = v2;
  *(v4 - 94) = v3;
  *(v4 - 65) = 1;
}

void sub_1ABA8A4F0()
{

  sub_1ABB14E68();
}

uint64_t sub_1ABA8A50C()
{
  v2 = *(v0 + 8);

  return type metadata accessor for TypedEntityIdentifier();
}

void sub_1ABA8A560(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3[2] = a2;
  v3[3].n128_u64[0] = a1;
  v3[3].n128_u64[1] = v2;
}

uint64_t sub_1ABA8A59C@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_1ABA8A5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x13E0];
  *&STACK[0x1400] = *&STACK[0x13D0];
  *&STACK[0x1410] = v10;
  *(v8 + 848) = *(v8 + 800);

  return sub_1ABA856C4(&STACK[0x1400], va);
}

uint64_t sub_1ABA8A608()
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_1ABA8A628()
{
  *(v1 - 112) = v0;

  return sub_1ABF24BC4();
}

void sub_1ABA8A644(uint64_t a1@<X8>)
{
  v5 = v4 + v3;
  *v5 = a1;
  *(v5 + 8) = v1;
  *(v5 + 16) = v2;
}

uint64_t sub_1ABA8A654(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_willThrow();
}

uint64_t sub_1ABA8A68C(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 5;

  return swift_willThrow();
}

void static EntityClass.timeZone.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x360), *(_Records_GDEntityClass_records + 0x368), *(_Records_GDEntityClass_records + 0x370), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA8A714@<X0>(void *a1@<X8>)
{
  v1 = a1[1];
  v2 = a1[2];
  return *a1;
}

__n128 sub_1ABA8A72C()
{
  result = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  return result;
}

uint64_t sub_1ABA8A740()
{

  return swift_beginAccess();
}

__n128 *sub_1ABA8A780(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v3 = *v2;
  return result;
}

uint64_t sub_1ABA8A7A4()
{
  v3 = *(v0 - 152);
  v2 = *(v0 - 144);
  v4 = *(v0 - 112);

  return sub_1ABF24E64();
}

__n128 sub_1ABA8A7C0()
{
  result = *&STACK[0x20C0];
  v1 = *&STACK[0x20D0];
  *&STACK[0x20F0] = *&STACK[0x20C0];
  *&STACK[0x2100] = v1;
  return result;
}

void sub_1ABA8A7E0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1ABA8A830()
{

  return sub_1ABA88934(&STACK[0xFE0]);
}

void static EntityClass.typeOfProfession.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x2A0), *(_Records_GDEntityClass_records + 0x2A8), *(_Records_GDEntityClass_records + 0x2B0), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA8A90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1680];
  *&STACK[0x16A0] = *&STACK[0x1670];
  *&STACK[0x16B0] = v10;
  *(v8 + 1520) = *(v8 + 1472);

  return sub_1ABA856C4(&STACK[0x16A0], va);
}

uint64_t sub_1ABA8A940()
{

  return sub_1ABF25054();
}

void *sub_1ABA8A9A4@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v3 + 8 * a1 + 32), (v1 + 32), 8 * v2);
}

uint64_t sub_1ABA8A9C4()
{
  v1 = *(*(v0 - 512) + 8);
  result = *(v0 - 240);
  v3 = *(v0 - 504);
  return result;
}

void static EntityClass.language.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x2D0), *(_Records_GDEntityClass_records + 0x2D8), *(_Records_GDEntityClass_records + 0x2E0), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA8AACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1560];
  *&STACK[0x1580] = *&STACK[0x1550];
  *&STACK[0x1590] = v10;
  *(v8 + 1232) = *(v8 + 1184);

  return sub_1ABA856C4(&STACK[0x1580], va);
}

uint64_t sub_1ABA8AB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{

  return sub_1ABD9DC70(a1, v6, v7, v8, a5, a6, v10);
}

uint64_t sub_1ABA8AB68(uint64_t result)
{
  v2 = result & ~(-1 << *(v1 + 32));
  v3 = (-1 << v2) & ~*(v1 + 64 + 8 * (v2 >> 6));
  return result;
}

void static EntityClass.politicalParty.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x300), *(_Records_GDEntityClass_records + 0x308), *(_Records_GDEntityClass_records + 0x310), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.populatedPlace.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x318), *(_Records_GDEntityClass_records + 0x320), *(_Records_GDEntityClass_records + 0x328), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.state.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x330), *(_Records_GDEntityClass_records + 0x338), *(_Records_GDEntityClass_records + 0x340), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA8AD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1440];
  *&STACK[0x1460] = *&STACK[0x1430];
  *&STACK[0x1470] = v10;
  *(v8 + 944) = *(v8 + 896);

  return sub_1ABA856C4(&STACK[0x1460], va);
}

void sub_1ABA8AD60(uint64_t a1@<X8>)
{
  *(v3 + v1) |= v2;
  *(*(v4 + 48) + a1) = v5;
  v6 = *(v4 + 56);
}

uint64_t sub_1ABA8AD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1ABB66290(v9, &a9, v10, v11, a5, a6, a7, a8);
}

void sub_1ABA8ADA4()
{
  v1 = *(v0 - 72);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

uint64_t sub_1ABA8ADB8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  return 0;
}

void sub_1ABA8ADCC()
{
  v2 = *(v0 + 768);
  v3 = *(v1 + 24);
  v4 = *(v1 + 16) + 1;
}

uint64_t sub_1ABA8ADE0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1ABF218B4();
}

void static EntityClass.country.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x348), *(_Records_GDEntityClass_records + 0x350), *(_Records_GDEntityClass_records + 0x358), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA8AEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1380];
  *&STACK[0x13A0] = *&STACK[0x1370];
  *&STACK[0x13B0] = v10;
  *(v8 + 752) = *(v8 + 704);

  return sub_1ABA856C4(&STACK[0x13A0], va);
}

uint64_t sub_1ABA8AEFC()
{
  v2 = *(v0 - 144);

  return sub_1ABF24EC4();
}

uint64_t sub_1ABA8AF3C()
{
  *(v1 - 112) = v0;

  return sub_1ABF24BC4();
}

uint64_t sub_1ABA8AF58@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  return result;
}

void *sub_1ABA8AF74(void *a1)
{

  return memcpy(a1, (v2 + v1), 0x62uLL);
}

uint64_t sub_1ABA8AF8C()
{
}

uint64_t sub_1ABA8AFA4(__n128 *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = a20;
  return a23;
}

uint64_t sub_1ABA8AFC4()
{

  return sub_1ABAE441C(v0 - 200, v0 - 312);
}

uint64_t *sub_1ABA8AFDC(uint64_t a1)
{
  *(v2 - 152) = a1;
  *(v2 - 144) = v1;

  return sub_1ABA93DC0((v2 - 176));
}

_WORD *sub_1ABA8AFF4(_WORD *result)
{
  *result = 0;
  v2 = *(v1 + 16);
  return result;
}

void static EntityClass.event.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x378), *(_Records_GDEntityClass_records + 0x380), *(_Records_GDEntityClass_records + 0x388), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA8B0B0()
{

  return sub_1ABAF7FB8(v0, v3, v2, v1);
}

uint64_t sub_1ABA8B0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1320];
  *&STACK[0x1340] = *&STACK[0x1310];
  *&STACK[0x1350] = v10;
  *(v8 + 656) = *(v8 + 608);

  return sub_1ABA856C4(&STACK[0x1340], va);
}

uint64_t sub_1ABA8B120()
{
  v2 = *(*(v0 - 112) + 16);

  return sub_1ABF24BD4();
}

uint64_t sub_1ABA8B164()
{
}

uint64_t *sub_1ABA8B184@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 224) = a1;

  return sub_1ABA93DC0((v1 + 192));
}

void static EntityClass.interestRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x390), *(_Records_GDEntityClass_records + 0x398), *(_Records_GDEntityClass_records + 0x3A0), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA8B25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x12C0];
  *&STACK[0x12E0] = *&STACK[0x12B0];
  *&STACK[0x12F0] = v10;
  *(v8 + 560) = *(v8 + 512);

  return sub_1ABA856C4(&STACK[0x12E0], va);
}

void sub_1ABA8B2A0(uint64_t a1@<X8>)
{
  *(v4 + v1) |= v2;
  v7 = (*(v3 + 48) + 16 * a1);
  *v7 = v5;
  v7[1] = v6;
  v8 = *(v3 + 56);
}

uint64_t sub_1ABA8B2C0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  *(v5 - 208) = v4;

  return sub_1ABB2E9FC(v4 + a3, v3, a1, a2);
}

uint64_t sub_1ABA8B2DC()
{
  v1 = type metadata accessor for CustomGraphDateRelationship(0);
  sub_1ABA7B9B4(v0, 1, 1, v1);
  return 0;
}

uint64_t sub_1ABA8B30C()
{

  return sub_1ABB3E5B4(v2 - 200, v2 - 304, v0, v1);
}

uint64_t sub_1ABA8B32C(uint64_t a1)
{
  *(a1 + 16) = v1;
}

uint64_t sub_1ABA8B378()
{

  return sub_1ABF24C54();
}

uint64_t *sub_1ABA8B390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = a1;
  a12 = a2;

  return sub_1ABA93DC0(&a8);
}

void static EntityClass.groupOfHumans.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x3A8), *(_Records_GDEntityClass_records + 0x3B0), *(_Records_GDEntityClass_records + 0x3B8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA8B454()
{

  return sub_1ABF24C64();
}

uint64_t sub_1ABA8B490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1260];
  *&STACK[0x1280] = *&STACK[0x1250];
  *&STACK[0x1290] = v10;
  *(v8 + 464) = *(v8 + 416);

  return sub_1ABA856C4(&STACK[0x1280], va);
}

uint64_t sub_1ABA8B4D4()
{

  return sub_1ABF24B94();
}

uint64_t sub_1ABA8B500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v5 + 208) = a2;
  *(v5 + 216) = a1;
  *(v5 + 224) = v2;
  *(v5 + 232) = v6;
  *(v5 + 240) = v3;
  *(v5 + 248) = v7;
  *(v5 + 256) = v4;
}

void sub_1ABA8B520(void (*a1)(uint64_t *__return_ptr, unint64_t))
{

  sub_1ABE0F568(a1, v2, v1);
}

void sub_1ABA8B53C(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  a1[4] = v18;
  a1[5] = v17;
  a1[6] = a17;
  a1[7] = a10;
}

uint64_t sub_1ABA8B550()
{
  result = *(v0 - 88);
  v2 = *(v0 - 232);
  return result;
}

uint64_t sub_1ABA8B55C()
{

  return sub_1ABF24E64();
}

void static EntityClass.siribaseType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABB7E060(_Records_GDEntityClass_records);
    v3 = sub_1ABA8882C(v0, v1, v2, v13);
    sub_1ABA8F1BC(v3, v4, v5, v6, v7, v8, v9, v10, v12, v11, v13[0], v13[1], v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA8B644()
{

  return sub_1ABAD219C(v1, v0);
}

uint64_t sub_1ABA8B65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1200];
  *&STACK[0x1220] = *&STACK[0x11F0];
  *&STACK[0x1230] = v10;
  *(v8 + 368) = *(v8 + 320);

  return sub_1ABA856C4(&STACK[0x1220], va);
}

uint64_t sub_1ABA8B6AC()
{

  return sub_1ABF24B94();
}

uint64_t sub_1ABA8B6C8()
{

  return sub_1ABF24F84();
}

uint64_t sub_1ABA8B6F8@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 160) = *(*(a1 + 120) + 16);
}

uint64_t sub_1ABA8B718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v12 = *a11;
}

uint64_t sub_1ABA8B73C()
{
}

void static EntityClass.participationRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x3D8), *(_Records_GDEntityClass_records + 0x3E0), *(_Records_GDEntityClass_records + 0x3E8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA8B810()
{

  return sub_1ABAD5D30(v0, 0xE500000000000000, 0xFFFFFFFFLL);
}

uint64_t sub_1ABA8B830(uint64_t result)
{
  *(v2 + 1168) = result;
  v3 = *(v1 + 64);
  v4 = *(v1 + 32);
  return result;
}

uint64_t sub_1ABA8B854()
{

  return sub_1ABF24E14();
}

uint64_t sub_1ABA8B874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x11A0];
  *&STACK[0x11C0] = *&STACK[0x1190];
  *&STACK[0x11D0] = v10;
  *(v8 + 272) = *(v8 + 224);

  return sub_1ABA856C4(&STACK[0x11C0], va);
}

uint64_t sub_1ABA8B8B8()
{
}

uint64_t sub_1ABA8B8D0(uint64_t a1)
{

  return sub_1ABB2E9FC(a1, v3, v1, v2);
}

void sub_1ABA8B914()
{
  v1 = *(v0 - 136);
  *(v0 - 104) = *(v0 - 144);
  *(v0 - 96) = v1;
}

void sub_1ABA8B920(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(a2 + 16);
  v2 = *(a2 + 32);
}

uint64_t sub_1ABA8B934()
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_1ABA8B960()
{

  return sub_1ABAD219C(v0, v1);
}

uint64_t sub_1ABA8B97C()
{
  result = v0;
  v3 = *(v1 - 120);
  return result;
}

uint64_t sub_1ABA8B988(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

void static EntityClass.devicePrimaryUser.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x3F0), *(_Records_GDEntityClass_records + 0x3F8), *(_Records_GDEntityClass_records + 0x400), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA8BA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1140];
  *&STACK[0x1160] = *&STACK[0x1130];
  *&STACK[0x1170] = v10;
  *(v8 + 176) = *(v8 + 128);

  return sub_1ABA856C4(&STACK[0x1160], va);
}

unint64_t sub_1ABA8BAD4(__n128 a1, __n128 a2)
{
  *(v4 - 128) = a1;
  *(v4 - 112) = a2;
  *(v4 - 96) = v2;
  *(v4 - 94) = v3;
  *(v4 - 65) = 0;

  return sub_1ABBCEDC8();
}

uint64_t sub_1ABA8BB60()
{

  return sub_1ABF24C54();
}

void static EntityClass.calendar.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABB7E050(_Records_GDEntityClass_records);
    v3 = sub_1ABA8882C(v0, v1, v2, v13);
    sub_1ABA8F1BC(v3, v4, v5, v6, v7, v8, v9, v10, v12, v11, v13[0], v13[1], v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA8BC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v11 = *&STACK[0x10B0];
  *&STACK[0x10D0] = *&STACK[0x10A0];
  *&STACK[0x10E0] = v11;
  *(v8 + 32) = *(v9 + 4056);

  return sub_1ABA856C4(&STACK[0x10D0], va);
}

uint64_t sub_1ABA8BC88()
{

  return sub_1ABF24F84();
}

uint64_t sub_1ABA8BCFC()
{

  return sub_1ABF25054();
}

uint64_t sub_1ABA8BD30()
{
}

void static EntityClass.calendarEvent.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x420), *(_Records_GDEntityClass_records + 0x428), *(_Records_GDEntityClass_records + 0x430), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA8BE28()
{

  return sub_1ABF25054();
}

uint64_t sub_1ABA8BE54(unsigned __int8 *a1)
{
  result = *a1;
  v3 = *(v1 + 16);
  return result;
}

void sub_1ABA8BECC()
{

  JUMPOUT(0x1AC5A9410);
}

__n128 sub_1ABA8BF00()
{
  result = *&STACK[0x5C0];
  v1 = *&STACK[0x5D0];
  *&STACK[0x5F0] = *&STACK[0x5C0];
  *&STACK[0x600] = v1;
  LOBYTE(STACK[0x610]) = STACK[0x5E0];
  return result;
}

__n128 sub_1ABA8BF2C()
{
  *(v0 + 4272) = *(v0 + 4224);
  result = *(v0 + 4240);
  *(v0 + 4288) = result;
  return result;
}

uint64_t sub_1ABA8BF6C()
{

  return swift_once();
}

uint64_t sub_1ABA8BFE8()
{

  return sub_1ABF237A4();
}

uint64_t sub_1ABA8C048(uint64_t a1)
{

  return sub_1ABB13550(v1, a1);
}

uint64_t sub_1ABA8C064()
{
  v2 = *(v0 + 208);

  return sub_1ABF23BD4();
}

uint64_t sub_1ABA8C0B8()
{

  return sub_1ABF24F34();
}

uint64_t sub_1ABA8C0F8(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

uint64_t sub_1ABA8C114()
{

  return swift_getWitnessTable();
}

void sub_1ABA8C13C()
{
  *(v3 - 96) = v0;
  *(v3 - 88) = v2;
  *(v3 - 80) = v1;
  v4 = *(v2 + 8);
}

uint64_t sub_1ABA8C160()
{

  return swift_beginAccess();
}

uint64_t sub_1ABA8C178()
{
  v2 = *(v0 + 224);
}

uint64_t sub_1ABA8C190()
{

  return sub_1ABA94FC8(v1, v0);
}

uint64_t sub_1ABA8C1A8()
{

  return sub_1ABF24C64();
}

void sub_1ABA8C1C8(uint64_t a1, void *a2)
{
  v2 = a2[4];
  v3 = a2[5];
  v4 = a2[6];
  v5 = a2[7];
  v6 = a2[9];
  v7 = a2[10];
}

uint64_t sub_1ABA8C204()
{
  v2 = v0[45];
  v3 = v0[42];
  v5 = v0[38];
  v4 = v0[39];
  v7 = v0[32];
  v6 = v0[33];
  v8 = v0[29];
  v9 = v0[27];
}

__n128 sub_1ABA8C22C@<Q0>(unsigned __int8 *a1@<X8>)
{
  result = *(a1 - 57);
  v3 = *(a1 - 41);
  v4 = *(a1 - 25);
  *(v1 + 297) = *(a1 - 1);
  *(v1 + 272) = v3;
  *(v1 + 288) = v4;
  *(v1 + 256) = result;
  v5 = *a1;
  return result;
}

uint64_t sub_1ABA8C258()
{
}

uint64_t sub_1ABA8C270()
{

  return sub_1ABF23DD4();
}

uint64_t sub_1ABA8C360(uint64_t a1, uint64_t a2)
{
  *a2 = 0xD000000000000040;
  *(a2 + 8) = v2;
  *(a2 + 16) = 3;

  return swift_willThrow();
}

uint64_t sub_1ABA8C3AC()
{
  v2 = *(v0 + 16);

  return type metadata accessor for CustomGraphActivityEvent(0);
}

uint64_t sub_1ABA8C40C()
{
  v2 = *(v0 + 16);
}

void sub_1ABA8C4A0()
{

  JUMPOUT(0x1AC5A7E10);
}

void sub_1ABA8C4E4()
{

  sub_1ABAAA4F4();
}

uint64_t sub_1ABA8C55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1050];
  *&STACK[0x1070] = *&STACK[0x1040];
  *&STACK[0x1080] = v10;
  *(v8 + 4008) = *(v8 + 3960);

  return sub_1ABA856C4(&STACK[0x1070], va);
}

uint64_t sub_1ABA8C598()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_1ABA8C5C8(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v4[2] = a2;
  v4[3].n128_u64[0] = a1;
  v4[3].n128_u64[1] = v2;
  v4[4].n128_u16[0] = v3;
}

void *sub_1ABA8C5E4()
{

  return memcpy((v0 + 920), (v0 + 1320), 0x190uLL);
}

uint64_t sub_1ABA8C600()
{

  return swift_beginAccess();
}

void static EntityClass.home.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x438), *(_Records_GDEntityClass_records + 0x440), *(_Records_GDEntityClass_records + 0x448), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA8C710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0xFF0];
  *&STACK[0x1010] = *&STACK[0xFE0];
  *&STACK[0x1020] = v10;
  *(v8 + 3912) = *(v8 + 3864);

  return sub_1ABA856C4(&STACK[0x1010], va);
}

void sub_1ABA8C76C()
{

  sub_1ABAA6788();
}

uint64_t sub_1ABA8C788()
{
  *(v3 - 120) = v0;
  v4 = *(v1 + 8);
  return v2;
}

void sub_1ABA8C79C(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  *(v4 - 183) = a4;
  *(v4 - 208) = a2;
  *(v4 - 192) = a3;
  *(v4 - 224) = a1;
}

uint64_t sub_1ABA8C7C0()
{

  return swift_getTupleTypeMetadata2();
}

void sub_1ABA8C7D8()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABA8C814()
{
  v3 = v0 + *(v1 + 48);

  return sub_1ABF218C4();
}

void static EntityClass.document.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x450), *(_Records_GDEntityClass_records + 0x458), *(_Records_GDEntityClass_records + 0x460), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA8C920()
{

  return sub_1ABF23D34();
}

uint64_t sub_1ABA8C944@<X0>(void *a1@<X8>)
{
  v1 = a1[1];
  v2 = a1[2];
  return *a1;
}

void sub_1ABA8C9B8()
{

  JUMPOUT(0x1AC5A9410);
}

void static EntityClass.software.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x468), *(_Records_GDEntityClass_records + 0x470), *(_Records_GDEntityClass_records + 0x478), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA8CA50@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 64);
  return *(a1 + 48);
}

__n128 sub_1ABA8CAAC()
{
  result = *&STACK[0xF50];
  v1 = *&STACK[0xF60];
  *&STACK[0xF80] = *&STACK[0xF50];
  *&STACK[0xF90] = v1;
  v2 = LOBYTE(STACK[0xF70]);
  return result;
}

void sub_1ABA8CAC4()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABA8CB28(uint64_t result)
{
  v2 = *(result + 24);
  *(v1 - 104) = 2;
  return result;
}

uint64_t sub_1ABA8CB3C()
{

  return sub_1ABF25054();
}

void *sub_1ABA8CB88()
{
  v3 = *v0;

  return sub_1ABC4A730((v1 - 120));
}

void static EntityClass.genre.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x480), *(_Records_GDEntityClass_records + 0x488), *(_Records_GDEntityClass_records + 0x490), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_1ABA8CC90()
{
  result = *&STACK[0x3B0];
  v1 = *&STACK[0x3C0];
  *&STACK[0x3E0] = *&STACK[0x3B0];
  *&STACK[0x3F0] = v1;
  LOBYTE(STACK[0x400]) = STACK[0x3D0];
  return result;
}

uint64_t sub_1ABA8CCA8()
{

  return sub_1ABF24DF4();
}

uint64_t sub_1ABA8CCD8()
{

  return sub_1ABF25054();
}

uint64_t sub_1ABA8CD24()
{

  return sub_1ABF25054();
}

void sub_1ABA8CD40(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v4[1] = a2;
  v4[2].n128_u64[0] = a1;
  v4[2].n128_u64[1] = v2;
  v4[3].n128_u16[0] = v3;
}

uint64_t sub_1ABA8CD50()
{
  v2 = *(v0 - 72);
}

uint64_t sub_1ABA8CD9C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a2 - 256);

  return MEMORY[0x1EEE09CB8](0xD000000000000012, a1, v2);
}

void static EntityClass.work.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABB7E040(_Records_GDEntityClass_records);
    v3 = sub_1ABA8882C(v0, v1, v2, v13);
    sub_1ABA8F1BC(v3, v4, v5, v6, v7, v8, v9, v10, v12, v11, v13[0], v13[1], v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA8CE48()
{

  return sub_1ABF21BE4();
}

uint64_t sub_1ABA8CE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1F80];
  *&STACK[0x1FA0] = *&STACK[0x1F70];
  *&STACK[0x1FB0] = v10;
  *(v8 + 3824) = *(v8 + 3776);

  return sub_1ABA856C4(&STACK[0x1FA0], va);
}

uint64_t sub_1ABA8CE94()
{

  return swift_beginAccess();
}

uint64_t sub_1ABA8CEB4()
{

  return sub_1ABF24B94();
}

void static EntityClass.calendarSourceRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x4B0), *(_Records_GDEntityClass_records + 0x4B8), *(_Records_GDEntityClass_records + 0x4C0), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA8CF7C()
{

  return sub_1ABF25054();
}

uint64_t sub_1ABA8CF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1F50];
  *&STACK[0x1F70] = *&STACK[0x1F40];
  *&STACK[0x1F80] = v10;
  *(v8 + 3776) = *(v8 + 3728);

  return sub_1ABA856C4(&STACK[0x1F70], va);
}

uint64_t sub_1ABA8CFE4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);

  return sub_1ABF24BD4();
}

void sub_1ABA8D01C()
{

  JUMPOUT(0x1AC5AA170);
}

void static EntityClass.agentAffiliationRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x4C8), *(_Records_GDEntityClass_records + 0x4D0), *(_Records_GDEntityClass_records + 0x4D8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA8D0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1F20];
  *&STACK[0x1F40] = *&STACK[0x1F10];
  *&STACK[0x1F50] = v10;
  *(v8 + 3728) = *(v8 + 3680);

  return sub_1ABA856C4(&STACK[0x1F40], va);
}

void static EntityClass.dateRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x4E0), *(_Records_GDEntityClass_records + 0x4E8), *(_Records_GDEntityClass_records + 0x4F0), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA8D1D4@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  return *(a1 + 72);
}

uint64_t sub_1ABA8D224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1EF0];
  *&STACK[0x1F10] = *&STACK[0x1EE0];
  *&STACK[0x1F20] = v10;
  *(v8 + 3680) = *(v8 + 3632);

  return sub_1ABA856C4(&STACK[0x1F10], va);
}

uint64_t sub_1ABA8D27C()
{

  return sub_1ABF252E4();
}

id sub_1ABA8D2C0()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

void static EntityClass.typeOfActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABB7E030(_Records_GDEntityClass_records);
    v3 = sub_1ABA8882C(v0, v1, v2, v13);
    sub_1ABA8F1BC(v3, v4, v5, v6, v7, v8, v9, v10, v12, v11, v13[0], v13[1], v14);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1ABA8D354()
{
  *(v0 - 65) = 1;

  return sub_1ABB23058();
}

uint64_t sub_1ABA8D374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1EC0];
  *&STACK[0x1EE0] = *&STACK[0x1EB0];
  *&STACK[0x1EF0] = v10;
  *(v8 + 3632) = *(v8 + 3584);

  return sub_1ABA856C4(&STACK[0x1EE0], va);
}

uint64_t sub_1ABA8D3A8()
{

  return Double.toString(decimalPlaces:)(3)._countAndFlagsBits;
}

__n128 sub_1ABA8D3D4@<Q0>(__int128 *a1@<X8>)
{
  result = *(a1 + 41);
  v3 = a1[2];
  v4 = *a1;
  *(v1 - 144) = a1[1];
  *(v1 - 128) = v3;
  *(v1 - 119) = result;
  *(v1 - 160) = v4;
  v5 = *(v1 - 144);
  *(v1 - 232) = *(v1 - 136);
  return result;
}

void sub_1ABA8D40C()
{
  *(v2 + 16) = v1;
  *(v2 + 8 * v4 + 32) = v3;
  v5 = *(v0 + 400);
}

id sub_1ABA8D424()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

void static EntityClass.transportationActivityType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x8E8), *(_Records_GDEntityClass_records + 0x8F0), *(_Records_GDEntityClass_records + 0x8F8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_1ABA8D4A8()
{
  result = *&STACK[0x2090];
  v1 = *&STACK[0x20A0];
  *&STACK[0x20C0] = *&STACK[0x2090];
  *&STACK[0x20D0] = v1;
  return result;
}

void static EntityClass.workingActivityType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x900), *(_Records_GDEntityClass_records + 0x908), *(_Records_GDEntityClass_records + 0x910), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.meetingActivityType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x918), *(_Records_GDEntityClass_records + 0x920), *(_Records_GDEntityClass_records + 0x928), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.eatingActivityType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x930), *(_Records_GDEntityClass_records + 0x938), *(_Records_GDEntityClass_records + 0x940), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.watchingMediaActivityType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x948), *(_Records_GDEntityClass_records + 0x950), *(_Records_GDEntityClass_records + 0x958), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.communicatingActivityType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x960), *(_Records_GDEntityClass_records + 0x968), *(_Records_GDEntityClass_records + 0x970), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.shoppingActivityType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x978), *(_Records_GDEntityClass_records + 0x980), *(_Records_GDEntityClass_records + 0x988), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.mindfulActivityType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x990), *(_Records_GDEntityClass_records + 0x998), *(_Records_GDEntityClass_records + 0x9A0), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.sleepActivityType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x9A8), *(_Records_GDEntityClass_records + 0x9B0), *(_Records_GDEntityClass_records + 0x9B8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.travelActivityType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x9C0), *(_Records_GDEntityClass_records + 0x9C8), *(_Records_GDEntityClass_records + 0x9D0), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.readingActivityType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x9D8), *(_Records_GDEntityClass_records + 0x9E0), *(_Records_GDEntityClass_records + 0x9E8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.vacationActivityType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x9F0), *(_Records_GDEntityClass_records + 0x9F8), *(_Records_GDEntityClass_records + 0xA00), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.socialActivityType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA08), *(_Records_GDEntityClass_records + 0xA10), *(_Records_GDEntityClass_records + 0xA18), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.wakingActivityType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA20), *(_Records_GDEntityClass_records + 0xA28), *(_Records_GDEntityClass_records + 0xA30), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.goingToBedActivityType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA38), *(_Records_GDEntityClass_records + 0xA40), *(_Records_GDEntityClass_records + 0xA48), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.typeOfPhysicalExercise.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xAE0), *(_Records_GDEntityClass_records + 0xAE8), *(_Records_GDEntityClass_records + 0xAF0), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.commuteActivityType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xBB8), *(_Records_GDEntityClass_records + 0xBC0), *(_Records_GDEntityClass_records + 0xBC8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.walkingActivityType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA80), *(_Records_GDEntityClass_records + 0xA88), *(_Records_GDEntityClass_records + 0xA90), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.runningActivityType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA98), *(_Records_GDEntityClass_records + 0xAA0), *(_Records_GDEntityClass_records + 0xAA8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.bikingActivityType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xAB0), *(_Records_GDEntityClass_records + 0xAB8), *(_Records_GDEntityClass_records + 0xAC0), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.hikingActivityType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xAC8), *(_Records_GDEntityClass_records + 0xAD0), *(_Records_GDEntityClass_records + 0xAD8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.phoneCallActivityType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA50), *(_Records_GDEntityClass_records + 0xA58), *(_Records_GDEntityClass_records + 0xA60), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.facetimeActivityType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA68), *(_Records_GDEntityClass_records + 0xA70), *(_Records_GDEntityClass_records + 0xA78), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.drivingActivityType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xCC0), *(_Records_GDEntityClass_records + 0xCC8), *(_Records_GDEntityClass_records + 0xCD0), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.behaviorActivityType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xCF0), *(_Records_GDEntityClass_records + 0xCF8), *(_Records_GDEntityClass_records + 0xD00), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ABA8DEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13)
{
  sub_1ABA8E108();
  sub_1ABA8E0FC(v17);
  if (v14 && (sub_1ABAD219C(&unk_1EB4D2E50, &qword_1ABF39DF8), v18 = sub_1ABA8EFB8(), (v31 = *(v13 + 16)) != 0))
  {
    sub_1ABA80734();
    while (v15 < *(v13 + 16))
    {
      v19 = (a10 + v15 * v16);
      v20 = v19[1];
      v32 = *v19;
      v22 = v19[2];
      v21 = v19[3];
      v23 = *(v19 + 32);
      sub_1ABA83F44();

      sub_1ABF23D34();
      sub_1ABF25294();
      sub_1ABA7D1D8();
      while (1)
      {
        sub_1ABA7E384(v24);
        if (v27)
        {
          break;
        }

        v26 = *(v18 + 48) + v13 * v16;
        v27 = *(v26 + 16) == v22 && *(v26 + 24) == v21;
        if (v27 || (sub_1ABF25054() & 1) != 0)
        {

          goto LABEL_16;
        }

        v24 = v13 + 1;
      }

      sub_1ABA8FE5C(v25);
      *v28 = v32;
      *(v28 + 8) = v20;
      *(v28 + 16) = v22;
      *(v28 + 24) = v21;
      *(v28 + 32) = a13;
      sub_1ABA7EE04();
      if (v30)
      {
        goto LABEL_19;
      }

      *(v18 + 16) = v29;
LABEL_16:
      v13 = a9;
      if (v15 == v31)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:

    sub_1ABA905E0();
  }
}

uint64_t sub_1ABA8E0B8(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

uint64_t sub_1ABA8E0E0()
{
  v2 = *(v0 - 88);

  return sub_1ABF24F34();
}

__n128 sub_1ABA8E138()
{
  result = *&STACK[0x6B0];
  v1 = *&STACK[0x6C0];
  *&STACK[0x6E0] = *&STACK[0x6B0];
  *&STACK[0x6F0] = v1;
  LOBYTE(STACK[0x700]) = STACK[0x6D0];
  return result;
}

__n128 sub_1ABA8E158()
{
  *(v0 + 4512) = *(v0 + 4464);
  result = *(v0 + 4480);
  *(v0 + 4528) = result;
  return result;
}

uint64_t sub_1ABA8E190()
{

  return swift_once();
}

void sub_1ABA8E1CC()
{
  v2 = *(v0 + 16) + 1;

  sub_1ABADA514();
}

uint64_t sub_1ABA8E1F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[90] = a2;
  v2[89] = result;
  v2[86] = v3;
  return result;
}

uint64_t sub_1ABA8E210()
{

  return swift_willThrow();
}

uint64_t sub_1ABA8E228()
{

  return sub_1ABF25054();
}

void sub_1ABA8E270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v11 - 248) = &a9 - v9;
  v13 = *v10;
  v12 = v10[1];
}

id sub_1ABA8E288()
{
  v5 = v0;
  v6 = *(v3 - 128);

  return sub_1ABC69E44(v5, v2, v1);
}

uint64_t sub_1ABA8E2E8()
{

  return swift_slowAlloc();
}

uint64_t sub_1ABA8E334()
{

  return sub_1ABF23DD4();
}

uint64_t sub_1ABA8E3AC()
{

  return sub_1ABF23B64();
}

uint64_t sub_1ABA8E46C()
{

  return sub_1ABF252E4();
}

uint64_t sub_1ABA8E48C()
{

  return sub_1ABF24D94();
}

uint64_t sub_1ABA8E4AC()
{

  return sub_1ABC43DF0(v1, 1, v0);
}

void sub_1ABA8E4C8()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABA8E550()
{

  return sub_1ABF24EC4();
}

uint64_t sub_1ABA8E5AC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t sub_1ABA8E5C4()
{

  return sub_1ABF24D94();
}

void sub_1ABA8E5E4(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_1ABA8E630()
{
  *(v5 - 128) = v0;
  *(v5 - 120) = v3;
  *(v5 - 112) = v4;
  *(v5 - 104) = v1;
  *(v5 - 96) = v2;
  return 255;
}

uint64_t sub_1ABA8E64C()
{
  result = v0 + 56;
  v3 = v1 + 56 + 8 * (((1 << *(v0 + 32)) + 63) >> 6);
  return result;
}

uint64_t sub_1ABA8E688()
{

  return sub_1ABF22764();
}

uint64_t sub_1ABA8E700()
{

  return sub_1ABF21BE4();
}

void sub_1ABA8E72C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
}

__n128 sub_1ABA8E744()
{
  result = *&STACK[0x4D0];
  v1 = *&STACK[0x4E0];
  *&STACK[0x500] = *&STACK[0x4D0];
  *&STACK[0x510] = v1;
  LOBYTE(STACK[0x520]) = STACK[0x4F0];
  return result;
}

uint64_t sub_1ABA8E764()
{

  return swift_allocObject();
}

uint64_t sub_1ABA8E794(uint64_t a1, unint64_t a2)
{
  result = 0;

  sub_1ABBE6748(0, 0xE000000000000000, a1, a2);
  return result;
}

double sub_1ABA8E818()
{
  *(v0 + 720) = 0;
  result = 0.0;
  *(v0 + 688) = 0u;
  *(v0 + 704) = 0u;
  return result;
}

uint64_t sub_1ABA8E82C(unint64_t *a1)
{

  return sub_1ABBE9A24(a1);
}

uint64_t sub_1ABA8E86C()
{
  v1 = v0[13];
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  return v0[15];
}

uint64_t sub_1ABA8E884()
{

  return _swift_stdlib_reportUnimplementedInitializer();
}

uint64_t sub_1ABA8E89C()
{

  return sub_1ABF23BD4();
}

uint64_t sub_1ABA8E8C8()
{
  v1 = *(v0 - 200);
  v2 = *(v0 - 192);
  result = *(v0 - 176);
  v5 = *(v0 - 216);
  v4 = *(v0 - 208);
  return result;
}

void sub_1ABA8E930()
{
  *(v2 - 112) = v0;
  *(v2 - 104) = v1;
  *(v2 - 144) = MEMORY[0x1E69E9820];
}

void sub_1ABA8E96C()
{
  v2 = *(v1 - 176) + (v0 << 6);
  v3 = *(v2 + 16);
  v5 = *(v2 + 32);
  v4 = *(v2 + 40);
  v6 = *(v2 + 56);
  *(v1 - 136) = *(v2 + 24);
  *(v1 - 128) = v5;
}

void sub_1ABA8E988()
{
  *(v3 - 112) = v1;
  *(v3 - 104) = v0;
  *(v3 - 96) = v2;
}

void sub_1ABA8EA24(uint64_t a1@<X8>)
{
  *(a1 + 16) = *(v1 - 272);
  *(a1 + 24) = *(v1 - 260);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
}

uint64_t sub_1ABA8EA48()
{

  return sub_1ABF22464();
}

uint64_t sub_1ABA8EA6C()
{
  sub_1ABB3F4DC(*(v0 + 160), *(v0 + 168), *(v1 - 72));
}

uint64_t sub_1ABA8EAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return sub_1ABD191AC(v13 - 160, va);
}

uint64_t sub_1ABA8EB34()
{
  v5 = *(v3 - 208);
  v6 = *(v3 - 200);
  *(v6 + 16) = v0;
  v7 = v6 + *(v3 - 224) + v1 * v2;

  return sub_1ABD9BEDC(v5, v7, type metadata accessor for CustomGraphActivityEvent);
}

void sub_1ABA8EB6C()
{
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
}

uint64_t sub_1ABA8EB94()
{

  return MEMORY[0x1EEDC23A0](v0, v1, v2, v2, v2);
}

uint64_t *sub_1ABA8EBC8()
{
  result = sub_1ABA93E20(v0, v0[3]);
  v2 = *result;
  return result;
}

uint64_t sub_1ABA8EC20()
{

  return sub_1ABF25054();
}

uint64_t sub_1ABA8EC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(v6 + 16);
  v9 = *(a6 + 8);

  return type metadata accessor for LifeEventEntry();
}

uint64_t sub_1ABA8EC60()
{

  return sub_1ABF24F84();
}

uint64_t sub_1ABA8EC80()
{

  return sub_1ABF24FF4();
}

uint64_t sub_1ABA8ECB0()
{
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = 0;

  return swift_willThrow();
}

uint64_t sub_1ABA8ECD0()
{
  sub_1ABDEFF58(*(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 104));
  *(v3 + 80) = v0;
  *(v3 + 88) = v1;
  *(v3 + 96) = v2;
  *(v3 + 104) = v4;
  return v0;
}

void sub_1ABA8ED0C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void *sub_1ABA8ED3C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __dst, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char __src)
{

  return memcpy(&__dst, &__src, 0x69uLL);
}

void sub_1ABA8ED58()
{
  *(v4 + 16) = v0;
  v5 = v4 + 16 * v3;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

uint64_t sub_1ABA8ED8C(unint64_t *a1)
{

  return sub_1ABE6DD68(a1);
}

void sub_1ABA8EDD0()
{

  sub_1ABAAA4F4();
}

uint64_t sub_1ABA8EE08()
{

  return sub_1ABF24D94();
}

__n128 sub_1ABA8EE34()
{
  result = *(v1 - 88);
  v3 = *(v1 - 72);
  v4 = *(v1 - 64);
  v5 = *(v1 - 56);
  *v0 = result;
  v0[1].n128_u64[0] = v3;
  v0[1].n128_u64[1] = v4;
  v0[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_1ABA8EEC4()
{

  return swift_once();
}

uint64_t sub_1ABA8EF14()
{

  return sub_1ABF24CD4();
}

uint64_t sub_1ABA8EF40()
{

  return swift_once();
}

uint64_t sub_1ABA8EF90()
{

  return sub_1ABF24CD4();
}

uint64_t sub_1ABA8EFB8()
{

  return sub_1ABF24A54();
}

uint64_t sub_1ABA8F010()
{

  return sub_1ABF24F54();
}

uint64_t sub_1ABA8F02C()
{

  return swift_once();
}

char *sub_1ABA8F06C@<X0>(unint64_t a1@<X8>)
{

  return sub_1ABADE01C((a1 > 1), v1, 1);
}

void sub_1ABA8F100()
{
  *(v3 - 144) = v0;
  *(v3 - 136) = v1;
  *(v3 - 160) = v2;
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  *(v3 - 168) = v4;
  *(v4 - 32);
  v6 = *(v3 - 96);
  *(v3 - 120) = v6 + 16;
  *(v3 - 112) = v6 + 32;
  *(v3 - 152) = v6 + 8;
}

void sub_1ABA8F158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = -1 << *(a4 + 32);
  if (-v4 < 64)
  {
    v5 = ~(-1 << -v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a4 + 56);
}

double sub_1ABA8F1A4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 33) = 0u;
  return result;
}

__n128 sub_1ABA8F1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, unint64_t a11, unint64_t a12, unsigned __int8 a13)
{
  result = a10;
  *v13 = a10;
  v13[1].n128_u64[0] = a11;
  v13[1].n128_u64[1] = a12;
  v13[2].n128_u8[0] = a13;
  return result;
}

uint64_t sub_1ABA8F1D8()
{

  return sub_1ABF22464();
}

__n128 sub_1ABA8F1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, unint64_t a11, unint64_t a12, unsigned __int16 a13)
{
  result = a10;
  *v13 = a10;
  v13[1].n128_u64[0] = a11;
  v13[1].n128_u64[1] = a12;
  v13[2].n128_u16[0] = a13;
  return result;
}
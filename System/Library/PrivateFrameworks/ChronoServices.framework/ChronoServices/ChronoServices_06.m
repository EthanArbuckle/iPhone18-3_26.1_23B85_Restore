void sub_195F83534(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t objectdestroy_300Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F8, &qword_195FB01F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  sub_195EC0890(*(v0 + 24), *(v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_195F836A8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, char *))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F8, &qword_195FB01F8) - 8);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  return a1(v3, v4, v5, v6);
}

uint64_t objectdestroy_204Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t objectdestroy_210Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F8, &qword_195FB01F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_150Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id sub_195F83B94(void *a1)
{
  v1 = a1;
  v2 = NSDateComponents.stableHash.getter();

  return v2;
}

id NSDateComponents.stableHash.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E698E6B8]) init];

  v2 = [v1 hash];
  return v2;
}

id DateComponents.stableHash.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE580, &qword_195FB0218);
  v0 = sub_195FA0558();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject() + v3;
  v5 = *(v1 + 104);
  v5(v4, *MEMORY[0x1E6969A68], v0);
  v5(v4 + v2, *MEMORY[0x1E6969A78], v0);
  v5(v4 + 2 * v2, *MEMORY[0x1E6969A48], v0);
  v5(v4 + 3 * v2, *MEMORY[0x1E6969A58], v0);
  v5(v4 + 4 * v2, *MEMORY[0x1E6969A88], v0);
  v5(v4 + 5 * v2, *MEMORY[0x1E6969A98], v0);
  v6 = [objc_allocWithZone(MEMORY[0x1E698E6B8]) init];
  v7 = sub_195FA0228();
  if ((v8 & 1) == 0)
  {
  }

  v9 = sub_195FA0228();
  if ((v10 & 1) == 0)
  {
  }

  v11 = sub_195FA0228();
  if ((v12 & 1) == 0)
  {
  }

  v13 = sub_195FA0228();
  if ((v14 & 1) == 0)
  {
  }

  v15 = sub_195FA0228();
  if ((v16 & 1) == 0)
  {
  }

  v17 = sub_195FA0228();
  if ((v18 & 1) == 0)
  {
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v19 = [v6 hash];

  return v19;
}

uint64_t sub_195F84034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  *(v8 + 64) = 0;
  v16 = (v8 + 64);
  *(v8 + 96) = 0;
  type metadata accessor for UnfairLock();
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  v17 = swift_allocObject();
  v18 = swift_slowAlloc();
  *v18 = 0;
  *(v17 + 16) = v18;
  *(v8 + 104) = v17;
  *(v8 + 112) = 0;
  if (!a2)
  {
    goto LABEL_11;
  }

  v50 = a3;
  v19 = [objc_opt_self() mainBundle];
  v20 = [v19 bundleIdentifier];

  if (!v20)
  {
    goto LABEL_8;
  }

  v49 = a7;
  a7 = a5;
  a5 = a6;
  a6 = a4;
  v21 = sub_195FA08B8();
  v23 = v22;

  if (v21 == a1 && v23 == a2)
  {
LABEL_10:

    a4 = a6;
    a6 = a5;
    a5 = a7;
    LOBYTE(a7) = v49;
    a3 = v50;
    goto LABEL_11;
  }

  v25 = sub_195FA12B8();

  a4 = a6;
  a6 = a5;
  a5 = a7;
  a7 = v49;
  a3 = v50;
  if ((v25 & 1) == 0)
  {
LABEL_8:
    v26 = objc_allocWithZone(MEMORY[0x1E695E000]);

    v27 = sub_195FA0888();

    v28 = [v26 initWithSuiteName_];

    a3 = v50;
    v29 = v28;
    if (v28)
    {
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  v29 = [objc_opt_self() standardUserDefaults];
LABEL_12:
  v30 = *(v8 + 32);
  *(v8 + 16) = v29;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;

  *(v8 + 56) = a5;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 72) = a7 & 1;
  if (a6)
  {
    if (a7)
    {
      swift_beginAccess();
      *(v8 + 56) = a6;
    }

    else
    {

      swift_beginAccess();
      v31 = *v16;
      *v16 = a5;
    }
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE620, &qword_195FB04B8);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_195FA06F8();
  *(v8 + 80) = v35;
  v52 = v35;
  sub_195EB5F38(&qword_1EAEEBEB0, &qword_1EAEEE620, &qword_195FB04B8);
  v36 = sub_195FA0738();
  v37 = *(v8 + 96);
  *(v8 + 88) = v36;
  *(v8 + 96) = 0;

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE628, &qword_195FB04C0);
  v39 = objc_allocWithZone(v38);
  swift_weakInit();
  swift_weakAssign();
  v51.receiver = v39;
  v51.super_class = v38;
  v40 = objc_msgSendSuper2(&v51, sel_init);
  v41 = *(v8 + 96);
  *(v8 + 96) = v40;

  v42 = *(v8 + 16);
  v43 = *(v8 + 40);
  v44 = *(v8 + 48);
  v45 = v40;
  v46 = v42;

  v47 = sub_195FA0888();

  [v46 addObserver:v45 forKeyPath:v47 options:0 context:0];

  return v8;
}

uint64_t sub_195F843FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  *(v8 + 64) = 0;
  v16 = (v8 + 64);
  *(v8 + 96) = 0;
  type metadata accessor for UnfairLock();
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  v17 = swift_allocObject();
  v18 = swift_slowAlloc();
  *v18 = 0;
  *(v17 + 16) = v18;
  *(v8 + 104) = v17;
  *(v8 + 112) = 0;
  if (!a2)
  {
    goto LABEL_11;
  }

  v50 = a3;
  v19 = [objc_opt_self() mainBundle];
  v20 = [v19 bundleIdentifier];

  if (!v20)
  {
    goto LABEL_8;
  }

  v49 = a7;
  a7 = a5;
  a5 = a6;
  a6 = a4;
  v21 = sub_195FA08B8();
  v23 = v22;

  if (v21 == a1 && v23 == a2)
  {
LABEL_10:

    a4 = a6;
    a6 = a5;
    a5 = a7;
    LOBYTE(a7) = v49;
    a3 = v50;
    goto LABEL_11;
  }

  v25 = sub_195FA12B8();

  a4 = a6;
  a6 = a5;
  a5 = a7;
  a7 = v49;
  a3 = v50;
  if ((v25 & 1) == 0)
  {
LABEL_8:
    v26 = objc_allocWithZone(MEMORY[0x1E695E000]);

    v27 = sub_195FA0888();

    v28 = [v26 initWithSuiteName_];

    a3 = v50;
    v29 = v28;
    if (v28)
    {
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  v29 = [objc_opt_self() standardUserDefaults];
LABEL_12:
  v30 = *(v8 + 32);
  *(v8 + 16) = v29;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;

  *(v8 + 56) = a5;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 72) = a7 & 1;
  if (a6)
  {
    if (a7)
    {
      swift_beginAccess();
      *(v8 + 56) = a6;
    }

    else
    {

      swift_beginAccess();
      v31 = *v16;
      *v16 = a5;
    }
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE630, &qword_195FB04C8);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_195FA06F8();
  *(v8 + 80) = v35;
  v52 = v35;
  sub_195EB5F38(&qword_1EAEEBEC0, &qword_1EAEEE630, &qword_195FB04C8);
  v36 = sub_195FA0738();
  v37 = *(v8 + 96);
  *(v8 + 88) = v36;
  *(v8 + 96) = 0;

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE638, &qword_195FB04D0);
  v39 = objc_allocWithZone(v38);
  swift_weakInit();
  swift_weakAssign();
  v51.receiver = v39;
  v51.super_class = v38;
  v40 = objc_msgSendSuper2(&v51, sel_init);
  v41 = *(v8 + 96);
  *(v8 + 96) = v40;

  v42 = *(v8 + 16);
  v43 = *(v8 + 40);
  v44 = *(v8 + 48);
  v45 = v40;
  v46 = v42;

  v47 = sub_195FA0888();

  [v46 addObserver:v45 forKeyPath:v47 options:0 context:0];

  return v8;
}

uint64_t sub_195F847C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, float a7)
{
  v8 = v7;
  LODWORD(v9) = a6;
  *(v8 + 60) = 0;
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 64) = 1;
  *(v8 + 88) = 0;
  type metadata accessor for UnfairLock();
  v16 = swift_allocObject();
  v17 = swift_slowAlloc();
  *v17 = 0;
  *(v16 + 16) = v17;
  *(v8 + 96) = v16;
  *(v8 + 104) = 0;
  *(v8 + 108) = 1;
  if (!a2)
  {
    goto LABEL_13;
  }

  v47 = v9;
  v9 = a5;
  a5 = a3;
  a3 = a4;
  v18 = [objc_opt_self() mainBundle];
  v19 = [v18 bundleIdentifier];

  if (!v19)
  {
    a4 = a3;
    a3 = a5;
    a5 = v9;
    v9 = v47;
LABEL_10:
    v25 = objc_allocWithZone(MEMORY[0x1E695E000]);

    v26 = sub_195FA0888();

    v27 = [v25 initWithSuiteName_];

    v28 = v27;
    if (v27)
    {
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  v20 = sub_195FA08B8();
  v22 = v21;

  if (v20 != a1 || v22 != a2)
  {
    v24 = sub_195FA12B8();

    a4 = a3;
    a3 = a5;
    a5 = v9;
    v9 = v47;
    if (v24)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

LABEL_12:

  a4 = a3;
  a3 = a5;
  a5 = v9;
  LOBYTE(v9) = v47;
LABEL_13:
  v28 = [objc_opt_self() standardUserDefaults];
LABEL_14:
  v29 = *(v8 + 32);
  *(v8 + 16) = v28;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;

  *(v8 + 56) = a7;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 65) = v9 & 1;
  if ((a5 & 0x100000000) == 0)
  {
    swift_beginAccess();
    if (v9)
    {
      *(v8 + 56) = a5;
    }

    else
    {
      *(v8 + 60) = a7;
      *(v8 + 64) = 0;
    }
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE640, &qword_195FB04D8);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = sub_195FA06F8();
  *(v8 + 72) = v33;
  v49 = v33;
  sub_195EB5F38(&qword_1EAEEBE88, &qword_1EAEEE640, &qword_195FB04D8);
  v34 = sub_195FA0738();
  v35 = *(v8 + 88);
  *(v8 + 80) = v34;
  *(v8 + 88) = 0;

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE648, &qword_195FB04E0);
  v37 = objc_allocWithZone(v36);
  swift_weakInit();
  swift_weakAssign();
  v48.receiver = v37;
  v48.super_class = v36;
  v38 = objc_msgSendSuper2(&v48, sel_init);
  v39 = *(v8 + 88);
  *(v8 + 88) = v38;

  v40 = *(v8 + 16);
  v41 = *(v8 + 40);
  v42 = *(v8 + 48);
  v43 = v38;
  v44 = v40;

  v45 = sub_195FA0888();

  [v44 addObserver:v43 forKeyPath:v45 options:0 context:0];

  return v8;
}

uint64_t sub_195F84B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = v9;
  *(v10 + 72) = xmmword_195FB0230;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 112) = 0;
  type metadata accessor for UnfairLock();
  v18 = swift_allocObject();
  v19 = swift_slowAlloc();
  *v19 = 0;
  *(v18 + 16) = v19;
  *(v10 + 120) = v18;
  *(v10 + 128) = xmmword_195FB0230;
  if (!a2)
  {
    goto LABEL_11;
  }

  v53 = a4;
  v20 = [objc_opt_self() mainBundle];
  v21 = [v20 bundleIdentifier];

  if (!v21)
  {
    goto LABEL_8;
  }

  v51 = a6;
  a6 = a8;
  a8 = a7;
  a7 = a5;
  v22 = sub_195FA08B8();
  v24 = v23;

  if (v22 == a1 && v24 == a2)
  {
LABEL_10:

    a5 = a7;
    a7 = a8;
    a8 = a6;
    a6 = v51;
    a4 = v53;
    goto LABEL_11;
  }

  v26 = sub_195FA12B8();

  a5 = a7;
  a7 = a8;
  a8 = a6;
  a6 = v51;
  a4 = v53;
  if ((v26 & 1) == 0)
  {
LABEL_8:
    v27 = objc_allocWithZone(MEMORY[0x1E695E000]);

    v28 = sub_195FA0888();

    v29 = [v27 initWithSuiteName_];

    a4 = v53;
    v30 = v29;
    if (v29)
    {
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  v30 = [objc_opt_self() standardUserDefaults];
LABEL_12:
  v31 = *(v10 + 32);
  *(v10 + 16) = v30;
  *(v10 + 24) = a1;
  *(v10 + 32) = a2;

  *(v10 + 56) = a5;
  *(v10 + 40) = a3;
  *(v10 + 48) = a4;
  *(v10 + 64) = a6;
  *(v10 + 88) = a9 & 1;
  if (a8 == 1)
  {
    v32 = a7;
    v33 = 1;
LABEL_17:
    sub_195ECF2B0(v32, v33);
    goto LABEL_18;
  }

  if ((a9 & 1) == 0)
  {

    swift_beginAccess();
    v32 = *(v10 + 72);
    v33 = *(v10 + 80);
    *(v10 + 72) = a5;
    *(v10 + 80) = a6;
    goto LABEL_17;
  }

  swift_beginAccess();
  *(v10 + 56) = a7;
  *(v10 + 64) = a8;

LABEL_18:
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE650, &qword_195FB04E8);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = sub_195FA06F8();
  *(v10 + 96) = v37;
  v55 = v37;
  sub_195EB5F38(&qword_1EAEEBEB8, &qword_1EAEEE650, &qword_195FB04E8);
  v38 = sub_195FA0738();
  v39 = *(v10 + 112);
  *(v10 + 104) = v38;
  *(v10 + 112) = 0;

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE658, &unk_195FB04F0);
  v41 = objc_allocWithZone(v40);
  swift_weakInit();
  swift_weakAssign();
  v54.receiver = v41;
  v54.super_class = v40;
  v42 = objc_msgSendSuper2(&v54, sel_init);
  v43 = *(v10 + 112);
  *(v10 + 112) = v42;

  v44 = *(v10 + 16);
  v45 = *(v10 + 40);
  v46 = *(v10 + 48);
  v47 = v42;
  v48 = v44;

  v49 = sub_195FA0888();

  [v48 addObserver:v47 forKeyPath:v49 options:0 context:0];

  return v10;
}

uint64_t sub_195F84F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v9 = v8;
  *(v8 + 64) = 0;
  v17 = v8 + 64;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 72) = 1;
  *(v8 + 96) = 0;
  type metadata accessor for UnfairLock();
  v18 = swift_allocObject();
  v19 = swift_slowAlloc();
  *v19 = 0;
  *(v18 + 16) = v19;
  *(v17 + 40) = v18;
  *(v17 + 48) = 0;
  *(v17 + 56) = 1;
  if (!a2)
  {
    goto LABEL_11;
  }

  v20 = [objc_opt_self() mainBundle];
  v21 = [v20 bundleIdentifier];

  if (!v21)
  {
    goto LABEL_8;
  }

  v49 = a7;
  a7 = a4;
  a4 = a6;
  a6 = a5;
  v22 = sub_195FA08B8();
  v24 = v23;

  if (v22 == a1 && v24 == a2)
  {
LABEL_10:

    a5 = a6;
    LOBYTE(a6) = a4;
    a4 = a7;
    LOBYTE(a7) = v49;
    goto LABEL_11;
  }

  v26 = sub_195FA12B8();

  a5 = a6;
  a6 = a4;
  a4 = a7;
  a7 = v49;
  if ((v26 & 1) == 0)
  {
LABEL_8:
    v27 = objc_allocWithZone(MEMORY[0x1E695E000]);

    v28 = sub_195FA0888();

    v29 = [v27 initWithSuiteName_];

    v30 = v29;
    if (v29)
    {
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  v30 = [objc_opt_self() standardUserDefaults];
LABEL_12:
  v31 = *(v9 + 32);
  *(v9 + 16) = v30;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;

  *(v9 + 56) = a8;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 73) = a7 & 1;
  if ((a6 & 1) == 0)
  {
    swift_beginAccess();
    if (a7)
    {
      *(v9 + 56) = a5;
    }

    else
    {
      *(v9 + 64) = a8;
      *(v9 + 72) = 0;
    }
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5F0, &qword_195FB0488);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_195FA06F8();
  *(v9 + 80) = v35;
  v52 = v35;
  sub_195EB5F38(&qword_1EAEEBE90, &qword_1EAEEE5F0, &qword_195FB0488);
  v36 = sub_195FA0738();
  v37 = *(v9 + 96);
  *(v9 + 88) = v36;
  *(v9 + 96) = 0;

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5F8, &qword_195FB0490);
  v39 = objc_allocWithZone(v38);
  swift_weakInit();
  swift_weakAssign();
  v51.receiver = v39;
  v51.super_class = v38;
  v40 = objc_msgSendSuper2(&v51, sel_init);
  v41 = *(v9 + 96);
  *(v9 + 96) = v40;

  v42 = *(v9 + 16);
  v43 = *(v9 + 40);
  v44 = *(v9 + 48);
  v45 = v40;
  v46 = v42;

  v47 = sub_195FA0888();

  [v46 addObserver:v45 forKeyPath:v47 options:0 context:0];

  return v9;
}

uint64_t sub_195F8532C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8, char a9)
{
  v10 = v9;
  *(v9 + 72) = 0;
  v17 = v9 + 72;
  *(v9 + 80) = 256;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 104) = 0;
  type metadata accessor for UnfairLock();
  v18 = swift_allocObject();
  v19 = swift_slowAlloc();
  *v19 = 0;
  *(v18 + 16) = v19;
  *(v17 + 40) = v18;
  *(v17 + 48) = 0;
  *(v17 + 56) = 256;
  if (!a2)
  {
    goto LABEL_11;
  }

  v20 = [objc_opt_self() mainBundle];
  v21 = [v20 bundleIdentifier];

  if (!v21)
  {
    goto LABEL_8;
  }

  v49 = a6;
  a6 = a5;
  a5 = a7;
  LOWORD(a7) = a8;
  v22 = sub_195FA08B8();
  v24 = v23;

  if (v22 == a1 && v24 == a2)
  {
LABEL_10:

    a8 = a7;
    a7 = a5;
    a5 = a6;
    LOBYTE(a6) = v49;
    goto LABEL_11;
  }

  v26 = sub_195FA12B8();

  a8 = a7;
  a7 = a5;
  a5 = a6;
  a6 = v49;
  if ((v26 & 1) == 0)
  {
LABEL_8:
    v27 = objc_allocWithZone(MEMORY[0x1E695E000]);

    v28 = sub_195FA0888();

    v29 = [v27 initWithSuiteName_];

    v30 = v29;
    if (v29)
    {
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  v30 = [objc_opt_self() standardUserDefaults];
LABEL_12:
  v31 = *(v10 + 32);
  *(v10 + 16) = v30;
  *(v10 + 24) = a1;
  *(v10 + 32) = a2;

  *(v10 + 56) = a5;
  *(v10 + 40) = a3;
  *(v10 + 48) = a4;
  *(v10 + 64) = a6 & 1;
  *(v10 + 82) = a9 & 1;
  if ((a8 & 0x100) == 0)
  {
    swift_beginAccess();
    if (a9)
    {
      *(v10 + 56) = a7;
      *(v10 + 64) = a8 & 1;
    }

    else
    {
      *(v10 + 72) = a5;
      *(v10 + 80) = a6 & 1;
      *(v10 + 81) = 0;
    }
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5C0, &qword_195FB0458);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_195FA06F8();
  *(v10 + 88) = v35;
  v53 = v35;
  sub_195EB5F38(&qword_1EAEEBE98, &qword_1EAEEE5C0, &qword_195FB0458);
  v36 = sub_195FA0738();
  v37 = *(v10 + 104);
  *(v10 + 96) = v36;
  *(v10 + 104) = 0;

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5C8, &qword_195FB0460);
  v39 = objc_allocWithZone(v38);
  swift_weakInit();
  swift_weakAssign();
  v52.receiver = v39;
  v52.super_class = v38;
  v40 = objc_msgSendSuper2(&v52, sel_init);
  v41 = *(v10 + 104);
  *(v10 + 104) = v40;

  v42 = *(v10 + 16);
  v43 = *(v10 + 40);
  v44 = *(v10 + 48);
  v45 = v40;
  v46 = v42;

  v47 = sub_195FA0888();

  [v46 addObserver:v45 forKeyPath:v47 options:0 context:0];

  return v10;
}

uint64_t sub_195F856EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v8 = v7;
  LOBYTE(v9) = a7;
  *(v7 + 57) = 2;
  v15 = v7 + 57;
  *(v7 + 32) = 0;
  *(v7 + 24) = 0;
  *(v7 + 80) = 0;
  type metadata accessor for UnfairLock();
  v16 = swift_allocObject();
  v17 = swift_slowAlloc();
  *v17 = 0;
  *(v16 + 16) = v17;
  *(v15 + 31) = v16;
  *(v15 + 39) = 2;
  if (!a2)
  {
    goto LABEL_11;
  }

  v18 = [objc_opt_self() mainBundle];
  v19 = [v18 bundleIdentifier];

  if (!v19)
  {
    goto LABEL_8;
  }

  v47 = v9;
  v9 = a5;
  a5 = a4;
  LOBYTE(a4) = a6;
  v20 = sub_195FA08B8();
  v22 = v21;

  if (v20 == a1 && v22 == a2)
  {
LABEL_10:

    a6 = a4;
    a4 = a5;
    LOBYTE(a5) = v9;
    LOBYTE(v9) = v47;
    goto LABEL_11;
  }

  v24 = sub_195FA12B8();

  a6 = a4;
  a4 = a5;
  a5 = v9;
  LOBYTE(v9) = v47;
  if ((v24 & 1) == 0)
  {
LABEL_8:
    v25 = objc_allocWithZone(MEMORY[0x1E695E000]);

    v26 = sub_195FA0888();

    v27 = [v25 initWithSuiteName_];

    v28 = v27;
    if (v27)
    {
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  v28 = [objc_opt_self() standardUserDefaults];
LABEL_12:
  v29 = *(v8 + 32);
  *(v8 + 16) = v28;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;

  *(v8 + 56) = a5 & 1;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 58) = v9 & 1;
  if (a6 != 2)
  {
    swift_beginAccess();
    if (v9)
    {
      *(v8 + 56) = a6 & 1;
    }

    else
    {
      *v15 = a5 & 1;
    }
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5A8, &qword_195FB0440);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = sub_195FA06F8();
  *(v8 + 64) = v33;
  v50 = v33;
  sub_195EB5F38(&qword_1EAEEBEA0, &qword_1EAEEE5A8, &qword_195FB0440);
  v34 = sub_195FA0738();
  v35 = *(v8 + 80);
  *(v8 + 72) = v34;
  *(v8 + 80) = 0;

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5B0, &qword_195FB0448);
  v37 = objc_allocWithZone(v36);
  swift_weakInit();
  swift_weakAssign();
  v49.receiver = v37;
  v49.super_class = v36;
  v38 = objc_msgSendSuper2(&v49, sel_init);
  v39 = *(v8 + 80);
  *(v8 + 80) = v38;

  v40 = *(v8 + 16);
  v41 = *(v8 + 40);
  v42 = *(v8 + 48);
  v43 = v38;
  v44 = v40;

  v45 = sub_195FA0888();

  [v44 addObserver:v43 forKeyPath:v45 options:0 context:0];

  return v8;
}

uint64_t (*sub_195F85A9C(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v3 = *(v1 + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  v5 = sub_195F85D04();
  os_unfair_lock_unlock(*(v3 + 16));

  *(a1 + 8) = v5 & 1;
  return sub_195F85B1C;
}

uint64_t sub_195F85B1C(unsigned __int8 *a1)
{
  v1 = a1[8];
  v2 = *(*a1 + 88);
  v3 = *(v2 + 16);

  os_unfair_lock_lock(v3);
  sub_195F86658(v1);
  os_unfair_lock_unlock(*(v2 + 16));
}

uint64_t (*sub_195F85B84(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + 104);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  v5 = sub_195F864E8(&qword_1EAEEE598, &qword_195FB0430);
  os_unfair_lock_unlock(*(v3 + 16));

  *a1 = v5;
  return sub_195F85C10;
}

uint64_t sub_195F85C10(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1[1] + 104);
  v4 = *(v3 + 16);
  if (a2)
  {
    v5 = *a1;

    os_unfair_lock_lock(v4);
    sub_195F8706C(v2, &qword_1EAEEE598, &qword_195FB0430, sub_195F8E010);
    os_unfair_lock_unlock(*(v3 + 16));
  }

  else
  {
    v6 = *(a1[1] + 104);

    os_unfair_lock_lock(v4);
    sub_195F8706C(v2, &qword_1EAEEE598, &qword_195FB0430, sub_195F8E010);
    os_unfair_lock_unlock(*(v3 + 16));
  }
}

uint64_t sub_195F85D04()
{
  os_unfair_lock_assert_owner(*(*(v0 + 88) + 16));
  swift_beginAccess();
  v1 = *(v0 + 57);
  if (v1 == 2)
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    v4 = *(v0 + 16);

    v5 = sub_195FA0888();

    v6 = [v4 valueForKey_];

    if (v6)
    {
      sub_195FA0E08();
      swift_unknownObjectRelease();
      sub_195F2E09C(&v8, v10);
    }

    else
    {
      memset(v10, 0, sizeof(v10));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
    if (swift_dynamicCast())
    {
      LOBYTE(v1) = v9;
    }

    else
    {
      swift_beginAccess();
      LOBYTE(v1) = *(v0 + 56);
    }
  }

  return v1 & 1;
}

uint64_t sub_195F85E44()
{
  os_unfair_lock_assert_owner(*(*(v0 + 112) + 16));
  swift_beginAccess();
  if (*(v0 + 81))
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    v3 = *(v0 + 16);

    v4 = sub_195FA0888();

    v5 = [v3 valueForKey_];

    if (v5)
    {
      sub_195FA0E08();
      swift_unknownObjectRelease();
      sub_195F2E09C(&v10, v12);
    }

    else
    {
      memset(v12, 0, sizeof(v12));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE588, &qword_195FB0420);
    if (swift_dynamicCast())
    {
      v8 = &v11;
    }

    else
    {
      v8 = (v0 + 56);
      swift_beginAccess();
      v9 = *(v0 + 64);
    }

    return *v8;
  }

  else
  {
    result = *(v0 + 72);
    v7 = *(v0 + 80);
  }

  return result;
}

uint64_t sub_195F85FAC()
{
  os_unfair_lock_assert_owner(*(*(v0 + 104) + 16));
  swift_beginAccess();
  if (*(v0 + 72) != 1)
  {
    return *(v0 + 64);
  }

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);

  v4 = sub_195FA0888();

  v5 = [v3 valueForKey_];

  if (v5)
  {
    sub_195FA0E08();
    swift_unknownObjectRelease();
    sub_195F2E09C(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
  v7 = &v9;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v7 = (v0 + 56);
    swift_beginAccess();
  }

  return *v7;
}

double sub_195F860F0()
{
  os_unfair_lock_assert_owner(*(*(v0 + 104) + 16));
  swift_beginAccess();
  if ((*(v0 + 72) & 1) == 0)
  {
    return *(v0 + 64);
  }

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);

  v4 = sub_195FA0888();

  v5 = [v3 valueForKey_];

  if (v5)
  {
    sub_195FA0E08();
    swift_unknownObjectRelease();
    sub_195F2E09C(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
  v7 = &v9;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v7 = (v0 + 56);
    swift_beginAccess();
  }

  return *v7;
}

uint64_t sub_195F86230()
{
  os_unfair_lock_assert_owner(*(*(v0 + 120) + 16));
  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = v1;
  if (v2 == 1)
  {
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    v6 = *(v0 + 16);

    v7 = sub_195FA0888();

    v8 = [v6 valueForKey_];

    if (v8)
    {
      sub_195FA0E08();
      swift_unknownObjectRelease();
      sub_195F2E09C(&v11, v13);
    }

    else
    {
      memset(v13, 0, sizeof(v13));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE590, &qword_195FB0428);
    if (swift_dynamicCast())
    {
      v3 = v12;
    }

    else
    {
      swift_beginAccess();
      v3 = *(v0 + 56);
      v9 = *(v0 + 64);
    }
  }

  sub_195F8F7E0(v1, v2);
  return v3;
}

float sub_195F863AC()
{
  os_unfair_lock_assert_owner(*(*(v0 + 96) + 16));
  v1 = (v0 + 60);
  swift_beginAccess();
  if (*(v0 + 64))
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    v4 = *(v0 + 16);

    v5 = sub_195FA0888();

    v6 = [v4 valueForKey_];

    if (v6)
    {
      sub_195FA0E08();
      swift_unknownObjectRelease();
      sub_195F2E09C(&v8, v10);
    }

    else
    {
      memset(v10, 0, sizeof(v10));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
    v1 = &v9;
    if ((swift_dynamicCast() & 1) == 0)
    {
      v1 = (v0 + 56);
      swift_beginAccess();
    }
  }

  return *v1;
}

uint64_t sub_195F864E8(uint64_t *a1, uint64_t *a2)
{
  os_unfair_lock_assert_owner(*(*(v2 + 104) + 16));
  swift_beginAccess();
  if (*(v2 + 64))
  {
    v5 = *(v2 + 64);
  }

  else
  {
    v6 = *(v2 + 40);
    v7 = *(v2 + 48);
    v8 = *(v2 + 16);

    v9 = sub_195FA0888();

    v10 = [v8 valueForKey_];

    if (v10)
    {
      sub_195FA0E08();
      swift_unknownObjectRelease();
      sub_195F2E09C(&v12, v14);
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
    __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    if (swift_dynamicCast())
    {
      v5 = v13;
    }

    else
    {
      swift_beginAccess();
      v5 = *(v2 + 56);
    }
  }

  return v5;
}

void sub_195F86658(int a1)
{
  os_unfair_lock_assert_owner(*(*(v1 + 88) + 16));
  swift_beginAccess();
  if (*(v1 + 57) == 2 && ((sub_195F85D04() ^ a1) & 1) != 0)
  {
    v16 = a1 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
    swift_dynamicCast();
    if (v15)
    {
      sub_195F2E09C(&v14, v17);
      v3 = *(v1 + 16);
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v4 = v3;
      v5 = sub_195FA12A8();
      v7 = *(v1 + 40);
      v6 = *(v1 + 48);

      v8 = sub_195FA0888();

      [v4 setObject:v5 forKey:v8];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
    }

    else
    {
      sub_195EB7914(&v14);
      v9 = *(v1 + 16);
      v10 = *(v1 + 40);
      v11 = *(v1 + 48);
      v12 = v9;

      v13 = sub_195FA0888();

      [v12 removeObjectForKey_];
    }
  }
}

void sub_195F867E8(uint64_t a1, char a2)
{
  os_unfair_lock_assert_owner(*(*(v2 + 112) + 16));
  swift_beginAccess();
  if (*(v2 + 81) == 1)
  {
    v5 = COERCE_DOUBLE(sub_195F85E44());
    if (a2)
    {
      if (v6)
      {
        return;
      }

      goto LABEL_7;
    }

    if ((v6 & 1) != 0 || *&a1 != v5)
    {
LABEL_7:
      v20 = a1;
      v21 = a2 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE588, &qword_195FB0420);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
      swift_dynamicCast();
      if (v19)
      {
        sub_195F2E09C(&v18, v22);
        v7 = *(v2 + 16);
        __swift_project_boxed_opaque_existential_1(v22, v23);
        v8 = v7;
        v9 = sub_195FA12A8();
        v11 = *(v2 + 40);
        v10 = *(v2 + 48);

        v12 = sub_195FA0888();

        [v8 setObject:v9 forKey:v12];

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
      }

      else
      {
        sub_195EB7914(&v18);
        v13 = *(v2 + 16);
        v14 = *(v2 + 40);
        v15 = *(v2 + 48);
        v16 = v13;

        v17 = sub_195FA0888();

        [v16 removeObjectForKey_];
      }
    }
  }
}

void sub_195F869AC(uint64_t a1)
{
  os_unfair_lock_assert_owner(*(*(v1 + 104) + 16));
  swift_beginAccess();
  if (*(v1 + 72) == 1 && sub_195F85FAC() != a1)
  {
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
    swift_dynamicCast();
    if (v15)
    {
      sub_195F2E09C(&v14, v17);
      v3 = *(v1 + 16);
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v4 = v3;
      v5 = sub_195FA12A8();
      v7 = *(v1 + 40);
      v6 = *(v1 + 48);

      v8 = sub_195FA0888();

      [v4 setObject:v5 forKey:v8];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
    }

    else
    {
      sub_195EB7914(&v14);
      v9 = *(v1 + 16);
      v10 = *(v1 + 40);
      v11 = *(v1 + 48);
      v12 = v9;

      v13 = sub_195FA0888();

      [v12 removeObjectForKey_];
    }
  }
}

void sub_195F86B38(double a1)
{
  os_unfair_lock_assert_owner(*(*(v1 + 104) + 16));
  swift_beginAccess();
  if (*(v1 + 72) == 1 && sub_195F860F0() != a1)
  {
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
    swift_dynamicCast();
    if (v15)
    {
      sub_195F2E09C(&v14, v17);
      v3 = *(v1 + 16);
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v4 = v3;
      v5 = sub_195FA12A8();
      v7 = *(v1 + 40);
      v6 = *(v1 + 48);

      v8 = sub_195FA0888();

      [v4 setObject:v5 forKey:v8];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
    }

    else
    {
      sub_195EB7914(&v14);
      v9 = *(v1 + 16);
      v10 = *(v1 + 40);
      v11 = *(v1 + 48);
      v12 = v9;

      v13 = sub_195FA0888();

      [v12 removeObjectForKey_];
    }
  }
}

void sub_195F86CCC(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_assert_owner(*(v2[15] + 16));
  swift_beginAccess();
  if (v2[10] == 1)
  {
    v5 = sub_195F86230();
    if (!a2)
    {
      if (!v6)
      {
        return;
      }

      goto LABEL_10;
    }

    if (!v6)
    {
      goto LABEL_10;
    }

    if (v5 == a1 && v6 == a2)
    {

      return;
    }

    v7 = sub_195FA12B8();

    if ((v7 & 1) == 0)
    {
LABEL_10:
      v21 = a1;
      v22 = a2;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE590, &qword_195FB0428);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
      swift_dynamicCast();
      if (v20)
      {
        sub_195F2E09C(&v19, v23);
        v8 = v2[2];
        __swift_project_boxed_opaque_existential_1(v23, v24);
        v9 = v8;
        v10 = sub_195FA12A8();
        v12 = v2[5];
        v11 = v2[6];

        v13 = sub_195FA0888();

        [v9 setObject:v10 forKey:v13];

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
      }

      else
      {
        sub_195EB7914(&v19);
        v14 = v2[2];
        v15 = v2[5];
        v16 = v2[6];
        v17 = v14;

        v18 = sub_195FA0888();

        [v17 removeObjectForKey_];
      }
    }
  }
}

void sub_195F86ED8(float a1)
{
  os_unfair_lock_assert_owner(*(*(v1 + 96) + 16));
  swift_beginAccess();
  if (*(v1 + 64) == 1 && sub_195F863AC() != a1)
  {
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
    swift_dynamicCast();
    if (v15)
    {
      sub_195F2E09C(&v14, v17);
      v3 = *(v1 + 16);
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v4 = v3;
      v5 = sub_195FA12A8();
      v7 = *(v1 + 40);
      v6 = *(v1 + 48);

      v8 = sub_195FA0888();

      [v4 setObject:v5 forKey:v8];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
    }

    else
    {
      sub_195EB7914(&v14);
      v9 = *(v1 + 16);
      v10 = *(v1 + 40);
      v11 = *(v1 + 48);
      v12 = v9;

      v13 = sub_195FA0888();

      [v12 removeObjectForKey_];
    }
  }
}

void sub_195F8706C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  os_unfair_lock_assert_owner(*(v4[13] + 16));
  swift_beginAccess();
  if (!v4[8])
  {
    v9 = sub_195F864E8(a2, a3);
    v10 = a4(a1, v9);

    if ((v10 & 1) == 0)
    {
      v24 = a1;

      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
      swift_dynamicCast();
      if (v23)
      {
        sub_195F2E09C(&v22, v25);
        v11 = v4[2];
        __swift_project_boxed_opaque_existential_1(v25, v26);
        v12 = v11;
        v13 = sub_195FA12A8();
        v15 = v4[5];
        v14 = v4[6];

        v16 = sub_195FA0888();

        [v12 setObject:v13 forKey:v16];

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
      }

      else
      {
        sub_195EB7914(&v22);
        v17 = v4[2];
        v18 = v4[5];
        v19 = v4[6];
        v20 = v17;

        v21 = sub_195FA0888();

        [v20 removeObjectForKey_];
      }
    }
  }
}

void sub_195F87240()
{
  type metadata accessor for Preferences();
  swift_allocObject();
  sub_195F8A2B4();
  qword_1EAEEC108 = v0;
}

uint64_t static Preferences.shared.getter()
{
  if (qword_1EAEEC100 != -1)
  {
    swift_once();
  }
}

uint64_t sub_195F872D8()
{
  v1 = *(*(v0 + 16) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F87344(int a1)
{
  v3 = *(*(v1 + 16) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F873C8()
{
  v1 = *(*(v0 + 24) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F87434(int a1)
{
  v3 = *(*(v1 + 24) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F874B8()
{
  v1 = *(*(v0 + 32) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F87524(int a1)
{
  v3 = *(*(v1 + 32) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F875A8()
{
  v1 = *(*(v0 + 40) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F87614(int a1)
{
  v3 = *(*(v1 + 40) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t (*sub_195F8768C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 40);

  *(v4 + 40) = sub_195F85A9C(v4);
  return sub_195F87710;
}

uint64_t sub_195F87720()
{
  v1 = *(*(v0 + 48) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F8778C(int a1)
{
  v3 = *(*(v1 + 48) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t (*sub_195F87804(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 48);

  *(v4 + 40) = sub_195F85A9C(v4);
  return sub_195F8F7F8;
}

uint64_t sub_195F87894()
{
  v1 = *(*(v0 + 56) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F87900(int a1)
{
  v3 = *(*(v1 + 56) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t (*sub_195F87978(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 56);

  *(v4 + 40) = sub_195F85A9C(v4);
  return sub_195F8F7F8;
}

uint64_t sub_195F87A08()
{
  v1 = *(*(v0 + 64) + 112);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = sub_195F85E44();
  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

uint64_t sub_195F87A7C(uint64_t a1, char a2)
{
  v5 = *(*(v2 + 64) + 112);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  sub_195F867E8(a1, a2 & 1);
  os_unfair_lock_unlock(*(v5 + 16));
}

uint64_t sub_195F87B10()
{
  v1 = *(*(v0 + 72) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F87B7C(int a1)
{
  v3 = *(*(v1 + 72) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t (*sub_195F87BF4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 72);

  *(v4 + 40) = sub_195F85A9C(v4);
  return sub_195F8F7F8;
}

uint64_t sub_195F87C84()
{
  v1 = *(*(v0 + 80) + 104);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = sub_195F85FAC();
  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

uint64_t sub_195F87CF0(uint64_t a1)
{
  v3 = *(*(v1 + 80) + 104);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F869AC(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F87D74()
{
  v1 = *(*(v0 + 88) + 104);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = sub_195F85FAC();
  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

uint64_t sub_195F87DE0(uint64_t a1)
{
  v3 = *(*(v1 + 88) + 104);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F869AC(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

double sub_195F87E64()
{
  v1 = *(*(v0 + 96) + 104);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = sub_195F860F0();
  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

uint64_t sub_195F87ED8(double a1)
{
  v3 = *(*(v1 + 96) + 104);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86B38(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F87F64()
{
  v1 = *(*(v0 + 104) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F87FD0(int a1)
{
  v3 = *(*(v1 + 104) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F88054()
{
  v1 = *(*(v0 + 112) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F880C0(int a1)
{
  v3 = *(*(v1 + 112) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F88144()
{
  v1 = *(*(v0 + 120) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F881B0(int a1)
{
  v3 = *(*(v1 + 120) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F88234()
{
  v1 = *(*(v0 + 128) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F882A0(int a1)
{
  v3 = *(*(v1 + 128) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F88324()
{
  v1 = *(*(v0 + 136) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F88390(int a1)
{
  v3 = *(*(v1 + 136) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F88414()
{
  v1 = *(*(v0 + 144) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F88480(int a1)
{
  v3 = *(*(v1 + 144) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F88504()
{
  v1 = *(*(v0 + 152) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F88570(int a1)
{
  v3 = *(*(v1 + 152) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F885F4()
{
  v1 = *(*(v0 + 160) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F88660(int a1)
{
  v3 = *(*(v1 + 160) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F886E4()
{
  v1 = *(*(v0 + 168) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F88750(int a1)
{
  v3 = *(*(v1 + 168) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F887D4()
{
  v1 = *(*(v0 + 176) + 112);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = sub_195F85E44();
  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

uint64_t sub_195F88848(uint64_t a1, char a2)
{
  v5 = *(*(v2 + 176) + 112);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  sub_195F867E8(a1, a2 & 1);
  os_unfair_lock_unlock(*(v5 + 16));
}

uint64_t sub_195F888DC()
{
  v1 = *(*(v0 + 184) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F88948(int a1)
{
  v3 = *(*(v1 + 184) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F889CC()
{
  v1 = *(*(v0 + 192) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F88A38(int a1)
{
  v3 = *(*(v1 + 192) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F88ABC()
{
  v1 = *(*(v0 + 200) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F88B28(int a1)
{
  v3 = *(*(v1 + 200) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F88BAC()
{
  v1 = *(*(v0 + 208) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F88C18(int a1)
{
  v3 = *(*(v1 + 208) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F88C9C()
{
  v1 = *(*(v0 + 216) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F88D08(int a1)
{
  v3 = *(*(v1 + 216) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F88D8C()
{
  v1 = *(*(v0 + 224) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F88DF8(int a1)
{
  v3 = *(*(v1 + 224) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F88E7C()
{
  v1 = *(*(v0 + 232) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F88EE8(int a1)
{
  v3 = *(*(v1 + 232) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F88F6C()
{
  v1 = *(*(v0 + 240) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F88FD8(int a1)
{
  v3 = *(*(v1 + 240) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F8905C()
{
  v1 = *(*(v0 + 248) + 112);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = sub_195F85E44();
  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

uint64_t sub_195F890D0(uint64_t a1, char a2)
{
  v5 = *(*(v2 + 248) + 112);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  sub_195F867E8(a1, a2 & 1);
  os_unfair_lock_unlock(*(v5 + 16));
}

uint64_t sub_195F89164()
{
  v1 = *(*(v0 + 256) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F891D0(int a1)
{
  v3 = *(*(v1 + 256) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F89254()
{
  v1 = *(*(v0 + 264) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F892C0(int a1)
{
  v3 = *(*(v1 + 264) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F89344()
{
  v1 = *(*(v0 + 272) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F893B0(int a1)
{
  v3 = *(*(v1 + 272) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F89434()
{
  v1 = *(*(v0 + 280) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F894A0(int a1)
{
  v3 = *(*(v1 + 280) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F89524()
{
  v1 = *(*(v0 + 288) + 120);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = sub_195F86230();
  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

uint64_t sub_195F895A4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  a5(v7, v6);
}

uint64_t sub_195F89600()
{
  v1 = *(*(v0 + 296) + 120);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = sub_195F86230();
  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

float sub_195F89680()
{
  v1 = *(*(v0 + 304) + 96);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = sub_195F863AC();
  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

uint64_t sub_195F896F4(float a1)
{
  v3 = *(*(v1 + 304) + 96);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86ED8(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

double sub_195F89780()
{
  v1 = *(*(v0 + 312) + 104);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = sub_195F860F0();
  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

uint64_t sub_195F897F4(double a1)
{
  v3 = *(*(v1 + 312) + 104);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86B38(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F89880()
{
  v1 = *(*(v0 + 320) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F898EC(int a1)
{
  v3 = *(*(v1 + 320) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F89970()
{
  v1 = *(*(v0 + 328) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F899DC(int a1)
{
  v3 = *(*(v1 + 328) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F89A60()
{
  v1 = *(*(v0 + 336) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F89ACC(int a1)
{
  v3 = *(*(v1 + 336) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F89B50()
{
  v1 = *(*(v0 + 344) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F89BBC(int a1)
{
  v3 = *(*(v1 + 344) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F89C40()
{
  v1 = *(*(v0 + 352) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F89CAC(int a1)
{
  v3 = *(*(v1 + 352) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t (*sub_195F89D24(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 352);

  *(v4 + 40) = sub_195F85A9C(v4);
  return sub_195F8F7F8;
}

uint64_t sub_195F89DB4()
{
  v1 = *(*(v0 + 360) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F89E20(int a1)
{
  v3 = *(*(v1 + 360) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F89EA4()
{
  v1 = *(*(v0 + 368) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F89F10(int a1)
{
  v3 = *(*(v1 + 368) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F89F94()
{
  v1 = *(*(v0 + 376) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F8A000(int a1)
{
  v3 = *(*(v1 + 376) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F8A084()
{
  v1 = *(*(v0 + 384) + 104);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = sub_195F864E8(&qword_1EAEEE598, &qword_195FB0430);
  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

uint64_t sub_195F8A100(uint64_t a1)
{
  sub_195F8E2C4(a1);
}

uint64_t (*sub_195F8A138(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 384);

  v4[5] = sub_195F85B84(v4);
  return sub_195F8F7F8;
}

void sub_195F8A1BC(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

uint64_t sub_195F8A21C()
{
  v1 = *(*(v0 + 392) + 104);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = sub_195F864E8(&qword_1EAEED8F0, &unk_195FACA00);
  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

void sub_195F8A2B4()
{
  has_internal_ui = os_variant_has_internal_ui();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5A0, &qword_195FB0438);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 57) = 2;
  *(v1 + 80) = 0;
  type metadata accessor for UnfairLock();
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *v3 = 0;
  *(v2 + 16) = v3;
  *(v1 + 88) = v2;
  *(v1 + 96) = 2;
  v481 = objc_opt_self();
  v4 = [v481 mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = sub_195FA08B8();
    v8 = v7;

    if (v6 == 0xD000000000000011 && 0x8000000195FC2FB0 == v8)
    {

LABEL_6:
      v10 = [objc_opt_self() standardUserDefaults];
      goto LABEL_8;
    }

    v9 = sub_195FA12B8();

    if (v9)
    {
      goto LABEL_6;
    }
  }

  v11 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v12 = sub_195FA0888();
  v13 = [v11 initWithSuiteName_];

  v10 = v13;
  if (!v13)
  {
    __break(1u);
    goto LABEL_115;
  }

LABEL_8:
  v14 = *(v1 + 32);
  *(v1 + 16) = v10;
  *(v1 + 24) = 0xD000000000000011;
  *(v1 + 32) = 0x8000000195FC2FB0;

  *(v1 + 40) = 0xD000000000000026;
  *(v1 + 48) = 0x8000000195FC2FD0;
  *(v1 + 56) = 1;
  *(v1 + 58) = has_internal_ui;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5A8, &qword_195FB0440);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_195FA06F8();
  *(v1 + 64) = v18;
  v498 = v18;
  sub_195EB5F38(&qword_1EAEEBEA0, &qword_1EAEEE5A8, &qword_195FB0440);
  v19 = sub_195FA0738();
  v20 = *(v1 + 80);
  *(v1 + 72) = v19;
  *(v1 + 80) = 0;

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5B0, &qword_195FB0448);
  v22 = objc_allocWithZone(v21);
  swift_weakInit();
  swift_weakAssign();
  v497.receiver = v22;
  v497.super_class = v21;
  v480 = v21;
  v23 = objc_msgSendSuper2(&v497, sel_init);
  v24 = *(v1 + 80);
  *(v1 + 80) = v23;

  v25 = *(v1 + 16);
  v26 = *(v1 + 40);
  v27 = *(v1 + 48);
  v28 = v23;
  v29 = v25;

  v30 = sub_195FA0888();

  [v29 addObserver:v28 forKeyPath:v30 options:0 context:0];

  v479[2] = v1;
  v31 = v479;
  v32 = os_variant_has_internal_ui();
  v33 = swift_allocObject();
  *(v33 + 24) = 0;
  *(v33 + 32) = 0;
  *(v33 + 57) = 2;
  *(v33 + 80) = 0;
  v34 = swift_allocObject();
  v35 = swift_slowAlloc();
  *v35 = 0;
  *(v34 + 16) = v35;
  *(v33 + 88) = v34;
  *(v33 + 96) = 2;
  v36 = [v481 mainBundle];
  v37 = [v36 bundleIdentifier];

  if (v37)
  {
    v38 = sub_195FA08B8();
    v40 = v39;

    if (v38 == 0xD000000000000011 && 0x8000000195FC2FB0 == v40)
    {

LABEL_13:
      v42 = [objc_opt_self() standardUserDefaults];
      goto LABEL_15;
    }

    v41 = sub_195FA12B8();

    if (v41)
    {
      goto LABEL_13;
    }
  }

  v43 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v44 = sub_195FA0888();
  v45 = [v43 initWithSuiteName_];

  v42 = v45;
  if (!v45)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

LABEL_15:
  v46 = *(v33 + 32);
  *(v33 + 16) = v42;
  *(v33 + 24) = 0xD000000000000011;
  *(v33 + 32) = 0x8000000195FC2FB0;

  *(v33 + 40) = 0xD000000000000024;
  *(v33 + 48) = 0x8000000195FC3000;
  *(v33 + 56) = 1;
  *(v33 + 58) = v32;
  v47 = *(v15 + 48);
  v48 = *(v15 + 52);
  swift_allocObject();
  v49 = sub_195FA06F8();
  *(v33 + 64) = v49;
  v498 = v49;
  v50 = sub_195FA0738();
  v51 = *(v33 + 80);
  *(v33 + 72) = v50;
  *(v33 + 80) = 0;

  v52 = objc_allocWithZone(v480);
  swift_weakInit();
  swift_weakAssign();
  v496.receiver = v52;
  v496.super_class = v480;
  v53 = objc_msgSendSuper2(&v496, sel_init);
  v54 = *(v33 + 80);
  *(v33 + 80) = v53;

  v55 = *(v33 + 16);
  v56 = *(v33 + 40);
  v57 = *(v33 + 48);
  v58 = v53;
  v59 = v55;

  v60 = sub_195FA0888();

  [v59 addObserver:v58 forKeyPath:v60 options:0 context:0];

  v479[3] = v33;
  v61 = os_variant_has_internal_ui();
  v62 = swift_allocObject();
  *(v62 + 24) = 0;
  *(v62 + 32) = 0;
  *(v62 + 57) = 2;
  *(v62 + 80) = 0;
  v63 = swift_allocObject();
  v64 = swift_slowAlloc();
  *v64 = 0;
  *(v63 + 16) = v64;
  *(v62 + 88) = v63;
  *(v62 + 96) = 2;
  v65 = [v481 mainBundle];
  v66 = [v65 bundleIdentifier];

  if (v66)
  {
    v67 = sub_195FA08B8();
    v69 = v68;

    if (v67 == 0xD000000000000015 && 0x8000000195FC3030 == v69)
    {

      v31 = v479;
LABEL_20:
      v71 = [objc_opt_self() standardUserDefaults];
      goto LABEL_22;
    }

    v70 = sub_195FA12B8();

    v31 = v479;
    if (v70)
    {
      goto LABEL_20;
    }
  }

  v72 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v73 = sub_195FA0888();
  v74 = [v72 initWithSuiteName_];

  v71 = v74;
  if (!v74)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

LABEL_22:
  v75 = *(v62 + 32);
  *(v62 + 16) = v71;
  *(v62 + 24) = 0xD000000000000015;
  *(v62 + 32) = 0x8000000195FC3030;

  *(v62 + 40) = 0xD00000000000001DLL;
  *(v62 + 48) = 0x8000000195FC3050;
  *(v62 + 56) = 0;
  *(v62 + 58) = v61;
  v76 = *(v15 + 48);
  v77 = *(v15 + 52);
  swift_allocObject();
  v78 = sub_195FA06F8();
  *(v62 + 64) = v78;
  v498 = v78;
  v79 = sub_195FA0738();
  v80 = *(v62 + 80);
  *(v62 + 72) = v79;
  *(v62 + 80) = 0;

  v81 = objc_allocWithZone(v480);
  swift_weakInit();
  swift_weakAssign();
  v495.receiver = v81;
  v495.super_class = v480;
  v82 = objc_msgSendSuper2(&v495, sel_init);
  v83 = *(v62 + 80);
  *(v62 + 80) = v82;

  v84 = *(v62 + 16);
  v85 = *(v62 + 40);
  v86 = *(v62 + 48);
  v87 = v82;
  v88 = v84;

  v89 = sub_195FA0888();

  [v88 addObserver:v87 forKeyPath:v89 options:0 context:0];

  v31[4] = v62;
  v90 = os_variant_has_internal_ui();
  v91 = swift_allocObject();
  *(v91 + 24) = 0;
  *(v91 + 32) = 0;
  *(v91 + 57) = 2;
  *(v91 + 80) = 0;
  v92 = swift_allocObject();
  v93 = swift_slowAlloc();
  *v93 = 0;
  *(v92 + 16) = v93;
  *(v91 + 88) = v92;
  *(v91 + 96) = 2;
  v94 = [v481 mainBundle];
  v95 = [v94 bundleIdentifier];

  if (v95)
  {
    v96 = sub_195FA08B8();
    v98 = v97;

    if (v96 == 0xD000000000000011 && 0x8000000195FC2FB0 == v98)
    {

LABEL_27:
      v100 = [objc_opt_self() standardUserDefaults];
      goto LABEL_29;
    }

    v99 = sub_195FA12B8();

    if (v99)
    {
      goto LABEL_27;
    }
  }

  v101 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v102 = sub_195FA0888();
  v103 = [v101 initWithSuiteName_];

  v100 = v103;
  if (!v103)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

LABEL_29:
  v104 = *(v91 + 32);
  *(v91 + 16) = v100;
  *(v91 + 24) = 0xD000000000000011;
  *(v91 + 32) = 0x8000000195FC2FB0;

  *(v91 + 40) = 0xD000000000000014;
  *(v91 + 48) = 0x8000000195FC3070;
  *(v91 + 56) = 1;
  *(v91 + 58) = v90;
  v105 = *(v15 + 48);
  v106 = *(v15 + 52);
  swift_allocObject();
  v107 = sub_195FA06F8();
  *(v91 + 64) = v107;
  v498 = v107;
  v108 = sub_195FA0738();
  v109 = *(v91 + 80);
  *(v91 + 72) = v108;
  *(v91 + 80) = 0;

  v110 = objc_allocWithZone(v480);
  swift_weakInit();
  swift_weakAssign();
  v494.receiver = v110;
  v494.super_class = v480;
  v111 = objc_msgSendSuper2(&v494, sel_init);
  v112 = *(v91 + 80);
  *(v91 + 80) = v111;

  v113 = *(v91 + 16);
  v114 = *(v91 + 40);
  v115 = *(v91 + 48);
  v116 = v111;
  v117 = v113;

  v118 = sub_195FA0888();

  [v117 addObserver:v116 forKeyPath:v118 options:0 context:0];

  v31[5] = v91;
  v119 = os_variant_has_internal_ui();
  v120 = swift_allocObject();
  *(v120 + 24) = 0;
  *(v120 + 32) = 0;
  *(v120 + 57) = 2;
  *(v120 + 80) = 0;
  v121 = swift_allocObject();
  v122 = swift_slowAlloc();
  *v122 = 0;
  *(v121 + 16) = v122;
  *(v120 + 88) = v121;
  *(v120 + 96) = 2;
  v123 = [v481 mainBundle];
  v124 = [v123 bundleIdentifier];

  if (v124)
  {
    v125 = sub_195FA08B8();
    v127 = v126;

    if (v125 == 0xD000000000000011 && 0x8000000195FC2FB0 == v127)
    {

LABEL_34:
      v129 = [objc_opt_self() standardUserDefaults];
      goto LABEL_36;
    }

    v128 = sub_195FA12B8();

    if (v128)
    {
      goto LABEL_34;
    }
  }

  v130 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v131 = sub_195FA0888();
  v132 = [v130 initWithSuiteName_];

  v129 = v132;
  if (!v132)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

LABEL_36:
  v133 = *(v120 + 32);
  *(v120 + 16) = v129;
  *(v120 + 24) = 0xD000000000000011;
  *(v120 + 32) = 0x8000000195FC2FB0;

  *(v120 + 40) = 0xD000000000000024;
  *(v120 + 48) = 0x8000000195FC3090;
  *(v120 + 56) = 0;
  *(v120 + 58) = v119;
  v134 = *(v15 + 48);
  v135 = *(v15 + 52);
  swift_allocObject();
  v136 = sub_195FA06F8();
  *(v120 + 64) = v136;
  v498 = v136;
  v137 = sub_195FA0738();
  v138 = *(v120 + 80);
  *(v120 + 72) = v137;
  *(v120 + 80) = 0;

  v139 = objc_allocWithZone(v480);
  swift_weakInit();
  swift_weakAssign();
  v493.receiver = v139;
  v493.super_class = v480;
  v140 = objc_msgSendSuper2(&v493, sel_init);
  v141 = *(v120 + 80);
  *(v120 + 80) = v140;

  v142 = *(v120 + 16);
  v143 = *(v120 + 40);
  v144 = *(v120 + 48);
  v145 = v140;
  v146 = v142;

  v147 = sub_195FA0888();

  [v146 addObserver:v145 forKeyPath:v147 options:0 context:0];

  v31[6] = v120;
  v148 = os_variant_has_internal_ui();
  v149 = swift_allocObject();
  *(v149 + 24) = 0;
  *(v149 + 32) = 0;
  *(v149 + 57) = 2;
  *(v149 + 80) = 0;
  v150 = swift_allocObject();
  v151 = swift_slowAlloc();
  *v151 = 0;
  *(v150 + 16) = v151;
  *(v149 + 88) = v150;
  *(v149 + 96) = 2;
  v152 = [v481 mainBundle];
  v153 = [v152 bundleIdentifier];

  if (v153)
  {
    v154 = sub_195FA08B8();
    v156 = v155;

    if (v154 == 0xD000000000000011 && 0x8000000195FC2FB0 == v156)
    {

LABEL_41:
      v158 = [objc_opt_self() standardUserDefaults];
      goto LABEL_43;
    }

    v157 = sub_195FA12B8();

    if (v157)
    {
      goto LABEL_41;
    }
  }

  v159 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v160 = sub_195FA0888();
  v161 = [v159 initWithSuiteName_];

  v158 = v161;
  if (!v161)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

LABEL_43:
  v162 = *(v149 + 32);
  *(v149 + 16) = v158;
  *(v149 + 24) = 0xD000000000000011;
  *(v149 + 32) = 0x8000000195FC2FB0;

  *(v149 + 40) = 0xD00000000000001BLL;
  *(v149 + 48) = 0x8000000195FC30C0;
  *(v149 + 56) = 0;
  *(v149 + 58) = v148;
  v163 = *(v15 + 48);
  v164 = *(v15 + 52);
  swift_allocObject();
  v165 = sub_195FA06F8();
  *(v149 + 64) = v165;
  v498 = v165;
  v166 = sub_195FA0738();
  v167 = *(v149 + 80);
  *(v149 + 72) = v166;
  *(v149 + 80) = 0;

  v168 = objc_allocWithZone(v480);
  swift_weakInit();
  swift_weakAssign();
  v492.receiver = v168;
  v492.super_class = v480;
  v169 = objc_msgSendSuper2(&v492, sel_init);
  v170 = *(v149 + 80);
  *(v149 + 80) = v169;

  v171 = *(v149 + 16);
  v172 = *(v149 + 40);
  v173 = *(v149 + 48);
  v174 = v169;
  v175 = v171;

  v176 = sub_195FA0888();

  [v175 addObserver:v174 forKeyPath:v176 options:0 context:0];

  v31[7] = v149;
  v177 = os_variant_has_internal_ui();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5B8, &qword_195FB0450);
  v178 = swift_allocObject();
  *(v178 + 72) = 0;
  *(v178 + 80) = 256;
  *(v178 + 24) = 0;
  *(v178 + 32) = 0;
  *(v178 + 104) = 0;
  v179 = swift_allocObject();
  v180 = swift_slowAlloc();
  *v180 = 0;
  *(v179 + 16) = v180;
  *(v178 + 112) = v179;
  *(v178 + 120) = 0;
  *(v178 + 128) = 256;
  v181 = [v481 mainBundle];
  v182 = [v181 bundleIdentifier];

  if (v182)
  {
    v183 = sub_195FA08B8();
    v185 = v184;

    if (v183 == 0xD000000000000011 && 0x8000000195FC2FB0 == v185)
    {

LABEL_48:
      v187 = [objc_opt_self() standardUserDefaults];
      goto LABEL_50;
    }

    v186 = sub_195FA12B8();

    if (v186)
    {
      goto LABEL_48;
    }
  }

  v188 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v189 = sub_195FA0888();
  v187 = [v188 initWithSuiteName_];

  if (!v187)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

LABEL_50:
  v190 = *(v178 + 32);
  *(v178 + 16) = v187;
  *(v178 + 24) = 0xD000000000000011;
  *(v178 + 32) = 0x8000000195FC2FB0;

  strcpy((v178 + 40), "secondHandFPS");
  *(v178 + 54) = -4864;
  *(v178 + 56) = 0;
  *(v178 + 64) = 1;
  *(v178 + 82) = v177;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5C0, &qword_195FB0458);
  v192 = *(v191 + 48);
  v193 = *(v191 + 52);
  swift_allocObject();
  v194 = sub_195FA06F8();
  *(v178 + 88) = v194;
  v498 = v194;
  sub_195EB5F38(&qword_1EAEEBE98, &qword_1EAEEE5C0, &qword_195FB0458);
  v195 = sub_195FA0738();
  v196 = *(v178 + 104);
  *(v178 + 96) = v195;
  *(v178 + 104) = 0;

  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5C8, &qword_195FB0460);
  v198 = objc_allocWithZone(v197);
  swift_weakInit();
  swift_weakAssign();
  v491.receiver = v198;
  v491.super_class = v197;
  v199 = objc_msgSendSuper2(&v491, sel_init);
  v200 = *(v178 + 104);
  *(v178 + 104) = v199;

  v201 = *(v178 + 16);
  v202 = *(v178 + 40);
  v203 = *(v178 + 48);
  v204 = v199;
  v205 = v201;

  v206 = sub_195FA0888();

  [v205 addObserver:v204 forKeyPath:v206 options:0 context:0];

  v31[8] = v178;
  v207 = os_variant_has_internal_ui();
  v208 = swift_allocObject();
  *(v208 + 24) = 0;
  *(v208 + 32) = 0;
  *(v208 + 57) = 2;
  *(v208 + 80) = 0;
  v209 = swift_allocObject();
  v210 = swift_slowAlloc();
  *v210 = 0;
  *(v209 + 16) = v210;
  *(v208 + 88) = v209;
  *(v208 + 96) = 2;
  v211 = [v481 mainBundle];
  v212 = [v211 bundleIdentifier];

  if (v212)
  {
    v213 = sub_195FA08B8();
    v215 = v214;

    if (v213 == 0xD000000000000011 && 0x8000000195FC2FB0 == v215)
    {

LABEL_55:
      v217 = [objc_opt_self() standardUserDefaults];
      goto LABEL_57;
    }

    v216 = sub_195FA12B8();

    if (v216)
    {
      goto LABEL_55;
    }
  }

  v218 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v219 = sub_195FA0888();
  v220 = [v218 initWithSuiteName_];

  v217 = v220;
  if (!v220)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

LABEL_57:
  v221 = *(v208 + 32);
  *(v208 + 16) = v217;
  *(v208 + 24) = 0xD000000000000011;
  *(v208 + 32) = 0x8000000195FC2FB0;

  *(v208 + 40) = 0xD00000000000001DLL;
  *(v208 + 48) = 0x8000000195FC30E0;
  *(v208 + 56) = 1;
  *(v208 + 58) = v207;
  v222 = *(v15 + 48);
  v223 = *(v15 + 52);
  swift_allocObject();
  v224 = sub_195FA06F8();
  *(v208 + 64) = v224;
  v498 = v224;
  v225 = sub_195FA0738();
  v226 = *(v208 + 80);
  *(v208 + 72) = v225;
  *(v208 + 80) = 0;

  v227 = objc_allocWithZone(v480);
  swift_weakInit();
  swift_weakAssign();
  v490.receiver = v227;
  v490.super_class = v480;
  v228 = objc_msgSendSuper2(&v490, sel_init);
  v229 = *(v208 + 80);
  *(v208 + 80) = v228;

  v230 = *(v208 + 16);
  v231 = *(v208 + 40);
  v232 = *(v208 + 48);
  v233 = v228;
  v234 = v230;

  v235 = sub_195FA0888();

  [v234 addObserver:v233 forKeyPath:v235 options:0 context:0];

  v479[9] = v208;
  v236 = os_variant_has_internal_ui();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5D0, &qword_195FB0468);
  v237 = swift_allocObject();
  *(v237 + 64) = 0;
  *(v237 + 24) = 0;
  *(v237 + 32) = 0;
  *(v237 + 72) = 1;
  *(v237 + 96) = 0;
  v238 = swift_allocObject();
  v239 = swift_slowAlloc();
  *v239 = 0;
  *(v238 + 16) = v239;
  *(v237 + 104) = v238;
  *(v237 + 112) = 0;
  *(v237 + 120) = 1;
  v240 = [v481 mainBundle];
  v241 = [v240 bundleIdentifier];

  if (v241)
  {
    v242 = sub_195FA08B8();
    v244 = v243;

    if (v242 == 0xD000000000000011 && 0x8000000195FC2FB0 == v244)
    {

LABEL_62:
      v246 = [objc_opt_self() standardUserDefaults];
      goto LABEL_64;
    }

    v245 = sub_195FA12B8();

    if (v245)
    {
      goto LABEL_62;
    }
  }

  v247 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v248 = sub_195FA0888();
  v249 = [v247 initWithSuiteName_];

  v246 = v249;
  if (!v249)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

LABEL_64:
  v250 = *(v237 + 32);
  *(v237 + 16) = v246;
  *(v237 + 24) = 0xD000000000000011;
  *(v237 + 32) = 0x8000000195FC2FB0;

  *(v237 + 40) = 0xD00000000000001DLL;
  *(v237 + 48) = 0x8000000195FC3100;
  *(v237 + 56) = 5;
  *(v237 + 73) = v236;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5D8, &qword_195FB0470);
  v252 = *(v251 + 48);
  v253 = *(v251 + 52);
  swift_allocObject();
  v254 = sub_195FA06F8();
  *(v237 + 80) = v254;
  v498 = v254;
  sub_195EB5F38(&qword_1EAEEBE80, &qword_1EAEEE5D8, &qword_195FB0470);
  v255 = sub_195FA0738();
  v256 = *(v237 + 96);
  *(v237 + 88) = v255;
  *(v237 + 96) = 0;

  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5E0, &qword_195FB0478);
  v258 = objc_allocWithZone(v257);
  swift_weakInit();
  swift_weakAssign();
  v489.receiver = v258;
  v489.super_class = v257;
  v259 = objc_msgSendSuper2(&v489, sel_init);
  v260 = *(v237 + 96);
  *(v237 + 96) = v259;

  v261 = *(v237 + 16);
  v262 = *(v237 + 40);
  v263 = *(v237 + 48);
  v264 = v259;
  v265 = v261;

  v266 = sub_195FA0888();

  [v265 addObserver:v264 forKeyPath:v266 options:0 context:0];

  v267 = v479;
  v479[10] = v237;
  v268 = os_variant_has_internal_ui();
  v269 = swift_allocObject();
  *(v269 + 64) = 0;
  *(v269 + 24) = 0;
  *(v269 + 32) = 0;
  *(v269 + 72) = 1;
  *(v269 + 96) = 0;
  v270 = swift_allocObject();
  v271 = swift_slowAlloc();
  *v271 = 0;
  *(v270 + 16) = v271;
  *(v269 + 104) = v270;
  *(v269 + 112) = 0;
  *(v269 + 120) = 1;
  v272 = [v481 mainBundle];
  v273 = [v272 bundleIdentifier];

  if (v273)
  {
    v274 = sub_195FA08B8();
    v276 = v275;

    if (v274 == 0xD000000000000011 && 0x8000000195FC2FB0 == v276)
    {

      v267 = v479;
LABEL_69:
      v278 = [objc_opt_self() standardUserDefaults];
      goto LABEL_71;
    }

    v277 = sub_195FA12B8();

    v267 = v479;
    if (v277)
    {
      goto LABEL_69;
    }
  }

  v279 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v280 = sub_195FA0888();
  v281 = [v279 initWithSuiteName_];

  v278 = v281;
  if (!v281)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

LABEL_71:
  v282 = *(v269 + 32);
  *(v269 + 16) = v278;
  *(v269 + 24) = 0xD000000000000011;
  *(v269 + 32) = 0x8000000195FC2FB0;

  *(v269 + 40) = 0xD000000000000023;
  *(v269 + 48) = 0x8000000195FC3120;
  *(v269 + 56) = 120;
  *(v269 + 73) = v268;
  v283 = *(v251 + 48);
  v284 = *(v251 + 52);
  swift_allocObject();
  v285 = sub_195FA06F8();
  *(v269 + 80) = v285;
  v498 = v285;
  v286 = sub_195FA0738();
  v287 = *(v269 + 96);
  *(v269 + 88) = v286;
  *(v269 + 96) = 0;

  v288 = objc_allocWithZone(v257);
  swift_weakInit();
  swift_weakAssign();
  v488.receiver = v288;
  v488.super_class = v257;
  v289 = objc_msgSendSuper2(&v488, sel_init);
  v290 = *(v269 + 96);
  *(v269 + 96) = v289;

  v291 = *(v269 + 16);
  v292 = *(v269 + 40);
  v293 = *(v269 + 48);
  v294 = v289;
  v295 = v291;

  v296 = sub_195FA0888();

  [v295 addObserver:v294 forKeyPath:v296 options:0 context:0];

  v267[11] = v269;
  v297 = os_variant_has_internal_ui();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5E8, &qword_195FB0480);
  v298 = swift_allocObject();
  *(v298 + 64) = 0;
  *(v298 + 24) = 0;
  *(v298 + 32) = 0;
  *(v298 + 72) = 1;
  *(v298 + 96) = 0;
  v299 = swift_allocObject();
  v300 = swift_slowAlloc();
  *v300 = 0;
  *(v299 + 16) = v300;
  *(v298 + 104) = v299;
  *(v298 + 112) = 0;
  *(v298 + 120) = 1;
  v301 = [v481 mainBundle];
  v302 = [v301 bundleIdentifier];

  if (v302)
  {
    v303 = sub_195FA08B8();
    v305 = v304;

    if (v303 == 0xD000000000000011 && 0x8000000195FC2FB0 == v305)
    {

LABEL_76:
      v307 = [objc_opt_self() standardUserDefaults];
      goto LABEL_78;
    }

    v306 = sub_195FA12B8();

    if (v306)
    {
      goto LABEL_76;
    }
  }

  v308 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v309 = sub_195FA0888();
  v310 = [v308 initWithSuiteName_];

  v307 = v310;
  if (!v310)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

LABEL_78:
  v311 = *(v298 + 32);
  *(v298 + 16) = v307;
  *(v298 + 24) = 0xD000000000000011;
  *(v298 + 32) = 0x8000000195FC2FB0;

  *(v298 + 40) = 0xD000000000000019;
  *(v298 + 48) = 0x8000000195FC3150;
  *(v298 + 56) = 0x4008000000000000;
  *(v298 + 73) = v297;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5F0, &qword_195FB0488);
  v313 = *(v312 + 48);
  v314 = *(v312 + 52);
  swift_allocObject();
  v315 = sub_195FA06F8();
  *(v298 + 80) = v315;
  v498 = v315;
  sub_195EB5F38(&qword_1EAEEBE90, &qword_1EAEEE5F0, &qword_195FB0488);
  v316 = sub_195FA0738();
  v317 = *(v298 + 96);
  *(v298 + 88) = v316;
  *(v298 + 96) = 0;

  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5F8, &qword_195FB0490);
  v319 = objc_allocWithZone(v318);
  swift_weakInit();
  swift_weakAssign();
  v487.receiver = v319;
  v487.super_class = v318;
  v320 = objc_msgSendSuper2(&v487, sel_init);
  v321 = *(v298 + 96);
  *(v298 + 96) = v320;

  v322 = *(v298 + 16);
  v323 = *(v298 + 40);
  v324 = *(v298 + 48);
  v325 = v320;
  v326 = v322;

  v327 = sub_195FA0888();

  [v326 addObserver:v325 forKeyPath:v327 options:0 context:0];

  v267[12] = v298;
  v328 = os_variant_has_internal_ui();
  v329 = swift_allocObject();
  *(v329 + 24) = 0;
  *(v329 + 32) = 0;
  *(v329 + 57) = 2;
  *(v329 + 80) = 0;
  v330 = swift_allocObject();
  v331 = swift_slowAlloc();
  *v331 = 0;
  *(v330 + 16) = v331;
  *(v329 + 88) = v330;
  *(v329 + 96) = 2;
  v332 = [v481 mainBundle];
  v333 = [v332 bundleIdentifier];

  if (v333)
  {
    v334 = sub_195FA08B8();
    v336 = v335;

    if (v334 == 0xD000000000000011 && 0x8000000195FC2FB0 == v336)
    {

LABEL_83:
      v338 = [objc_opt_self() standardUserDefaults];
      goto LABEL_85;
    }

    v337 = sub_195FA12B8();

    if (v337)
    {
      goto LABEL_83;
    }
  }

  v339 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v340 = sub_195FA0888();
  v341 = [v339 initWithSuiteName_];

  v338 = v341;
  if (!v341)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

LABEL_85:
  v342 = *(v329 + 32);
  *(v329 + 16) = v338;
  *(v329 + 24) = 0xD000000000000011;
  *(v329 + 32) = 0x8000000195FC2FB0;

  *(v329 + 40) = 0xD000000000000016;
  *(v329 + 48) = 0x8000000195FC3170;
  *(v329 + 56) = 0;
  *(v329 + 58) = v328;
  v343 = *(v15 + 48);
  v344 = *(v15 + 52);
  swift_allocObject();
  v345 = sub_195FA06F8();
  *(v329 + 64) = v345;
  v498 = v345;
  v346 = sub_195FA0738();
  v347 = *(v329 + 80);
  *(v329 + 72) = v346;
  *(v329 + 80) = 0;

  v348 = objc_allocWithZone(v480);
  swift_weakInit();
  swift_weakAssign();
  v486.receiver = v348;
  v486.super_class = v480;
  v349 = objc_msgSendSuper2(&v486, sel_init);
  v350 = *(v329 + 80);
  *(v329 + 80) = v349;

  v351 = *(v329 + 16);
  v352 = *(v329 + 40);
  v353 = *(v329 + 48);
  v354 = v349;
  v355 = v351;

  v356 = sub_195FA0888();

  [v355 addObserver:v354 forKeyPath:v356 options:0 context:0];

  v267[13] = v329;
  v357 = os_variant_has_internal_ui();
  v358 = swift_allocObject();
  *(v358 + 24) = 0;
  *(v358 + 32) = 0;
  *(v358 + 57) = 2;
  *(v358 + 80) = 0;
  v359 = swift_allocObject();
  v360 = swift_slowAlloc();
  *v360 = 0;
  *(v359 + 16) = v360;
  *(v358 + 88) = v359;
  *(v358 + 96) = 2;
  v361 = [v481 mainBundle];
  v362 = [v361 bundleIdentifier];

  if (v362)
  {
    v363 = sub_195FA08B8();
    v365 = v364;

    if (v363 == 0xD000000000000011 && 0x8000000195FC2FB0 == v365)
    {

LABEL_90:
      v367 = [objc_opt_self() standardUserDefaults];
      goto LABEL_92;
    }

    v366 = sub_195FA12B8();

    if (v366)
    {
      goto LABEL_90;
    }
  }

  v368 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v369 = sub_195FA0888();
  v370 = [v368 initWithSuiteName_];

  v367 = v370;
  if (!v370)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

LABEL_92:
  v371 = *(v358 + 32);
  *(v358 + 16) = v367;
  *(v358 + 24) = 0xD000000000000011;
  *(v358 + 32) = 0x8000000195FC2FB0;

  *(v358 + 40) = 0xD000000000000015;
  *(v358 + 48) = 0x8000000195FC3190;
  *(v358 + 56) = 0;
  *(v358 + 58) = v357;
  v372 = *(v15 + 48);
  v373 = *(v15 + 52);
  swift_allocObject();
  v374 = sub_195FA06F8();
  *(v358 + 64) = v374;
  v498 = v374;
  v375 = sub_195FA0738();
  v376 = *(v358 + 80);
  *(v358 + 72) = v375;
  *(v358 + 80) = 0;

  v377 = objc_allocWithZone(v480);
  swift_weakInit();
  swift_weakAssign();
  v485.receiver = v377;
  v485.super_class = v480;
  v378 = objc_msgSendSuper2(&v485, sel_init);
  v379 = *(v358 + 80);
  *(v358 + 80) = v378;

  v380 = *(v358 + 16);
  v381 = *(v358 + 40);
  v382 = *(v358 + 48);
  v383 = v378;
  v384 = v380;

  v385 = sub_195FA0888();

  [v384 addObserver:v383 forKeyPath:v385 options:0 context:0];

  v267[14] = v358;
  v386 = os_variant_has_internal_ui();
  v387 = swift_allocObject();
  *(v387 + 24) = 0;
  *(v387 + 32) = 0;
  *(v387 + 57) = 2;
  *(v387 + 80) = 0;
  v388 = swift_allocObject();
  v389 = swift_slowAlloc();
  *v389 = 0;
  *(v388 + 16) = v389;
  *(v387 + 88) = v388;
  *(v387 + 96) = 2;
  v390 = [v481 mainBundle];
  v391 = [v390 bundleIdentifier];

  if (v391)
  {
    v392 = sub_195FA08B8();
    v394 = v393;

    if (v392 == 0xD000000000000011 && 0x8000000195FC2FB0 == v394)
    {

LABEL_97:
      v396 = [objc_opt_self() standardUserDefaults];
      goto LABEL_99;
    }

    v395 = sub_195FA12B8();

    if (v395)
    {
      goto LABEL_97;
    }
  }

  v397 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v398 = sub_195FA0888();
  v399 = [v397 initWithSuiteName_];

  v396 = v399;
  if (!v399)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

LABEL_99:
  v400 = *(v387 + 32);
  *(v387 + 16) = v396;
  *(v387 + 24) = 0xD000000000000011;
  *(v387 + 32) = 0x8000000195FC2FB0;

  *(v387 + 40) = 0xD000000000000015;
  *(v387 + 48) = 0x8000000195FC31B0;
  *(v387 + 56) = 0;
  *(v387 + 58) = v386;
  v401 = *(v15 + 48);
  v402 = *(v15 + 52);
  swift_allocObject();
  v403 = sub_195FA06F8();
  *(v387 + 64) = v403;
  v498 = v403;
  v404 = sub_195FA0738();
  v405 = *(v387 + 80);
  *(v387 + 72) = v404;
  *(v387 + 80) = 0;

  v406 = objc_allocWithZone(v480);
  swift_weakInit();
  swift_weakAssign();
  v484.receiver = v406;
  v484.super_class = v480;
  v407 = objc_msgSendSuper2(&v484, sel_init);
  v408 = *(v387 + 80);
  *(v387 + 80) = v407;

  v409 = *(v387 + 16);
  v410 = *(v387 + 40);
  v411 = *(v387 + 48);
  v412 = v407;
  v413 = v409;

  v414 = sub_195FA0888();

  [v413 addObserver:v412 forKeyPath:v414 options:0 context:0];

  v267[15] = v387;
  v415 = os_variant_has_internal_ui();
  v416 = swift_allocObject();
  *(v416 + 24) = 0;
  *(v416 + 32) = 0;
  *(v416 + 57) = 2;
  *(v416 + 80) = 0;
  v417 = swift_allocObject();
  v418 = swift_slowAlloc();
  *v418 = 0;
  *(v417 + 16) = v418;
  *(v416 + 88) = v417;
  *(v416 + 96) = 2;
  v419 = [v481 mainBundle];
  v420 = [v419 bundleIdentifier];

  if (!v420)
  {
LABEL_105:
    v426 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v427 = sub_195FA0888();
    v428 = [v426 initWithSuiteName_];

    v425 = v428;
    if (v428)
    {
      goto LABEL_106;
    }

LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v421 = sub_195FA08B8();
  v423 = v422;

  if (v421 != 0xD000000000000011 || 0x8000000195FC2FB0 != v423)
  {
    v424 = sub_195FA12B8();

    if (v424)
    {
      goto LABEL_104;
    }

    goto LABEL_105;
  }

LABEL_104:
  v425 = [objc_opt_self() standardUserDefaults];
LABEL_106:
  v429 = *(v416 + 32);
  *(v416 + 16) = v425;
  *(v416 + 24) = 0xD000000000000011;
  *(v416 + 32) = 0x8000000195FC2FB0;

  *(v416 + 40) = 0xD000000000000014;
  *(v416 + 48) = 0x8000000195FC31D0;
  *(v416 + 56) = 0;
  *(v416 + 58) = v415;
  v430 = *(v15 + 48);
  v431 = *(v15 + 52);
  swift_allocObject();
  v432 = sub_195FA06F8();
  *(v416 + 64) = v432;
  v498 = v432;
  v433 = sub_195FA0738();
  v434 = *(v416 + 80);
  *(v416 + 72) = v433;
  *(v416 + 80) = 0;

  v435 = objc_allocWithZone(v480);
  swift_weakInit();
  swift_weakAssign();
  v483.receiver = v435;
  v483.super_class = v480;
  v436 = objc_msgSendSuper2(&v483, sel_init);
  v437 = *(v416 + 80);
  *(v416 + 80) = v436;

  v438 = *(v416 + 16);
  v439 = *(v416 + 40);
  v440 = *(v416 + 48);
  v441 = v436;
  v442 = v438;

  v443 = sub_195FA0888();

  [v442 addObserver:v441 forKeyPath:v443 options:0 context:0];

  v267[16] = v416;
  v444 = os_variant_has_internal_ui();
  v445 = swift_allocObject();
  *(v445 + 24) = 0;
  *(v445 + 32) = 0;
  *(v445 + 57) = 2;
  *(v445 + 80) = 0;
  v446 = swift_allocObject();
  v447 = swift_slowAlloc();
  *v447 = 0;
  *(v446 + 16) = v447;
  *(v445 + 88) = v446;
  *(v445 + 96) = 2;
  v448 = [v481 mainBundle];
  v449 = [v448 bundleIdentifier];

  if (v449)
  {
    v450 = sub_195FA08B8();
    v452 = v451;

    if (v450 == 0xD000000000000011 && 0x8000000195FC2FB0 == v452)
    {

LABEL_111:
      v454 = [objc_opt_self() standardUserDefaults];
LABEL_113:
      v458 = *(v445 + 32);
      *(v445 + 16) = v454;
      *(v445 + 24) = 0xD000000000000011;
      *(v445 + 32) = 0x8000000195FC2FB0;

      *(v445 + 40) = 0xD000000000000011;
      *(v445 + 48) = 0x8000000195FC31F0;
      *(v445 + 56) = 0;
      *(v445 + 58) = v444;
      v459 = *(v15 + 48);
      v460 = *(v15 + 52);
      swift_allocObject();
      v461 = sub_195FA06F8();
      *(v445 + 64) = v461;
      v498 = v461;
      v462 = sub_195FA0738();
      v463 = *(v445 + 80);
      *(v445 + 72) = v462;
      *(v445 + 80) = 0;

      v464 = objc_allocWithZone(v480);
      swift_weakInit();
      swift_weakAssign();
      v482.receiver = v464;
      v482.super_class = v480;
      v465 = objc_msgSendSuper2(&v482, sel_init);
      v466 = *(v445 + 80);
      *(v445 + 80) = v465;

      v467 = *(v445 + 16);
      v468 = *(v445 + 40);
      v469 = *(v445 + 48);
      v470 = v465;
      v471 = v467;

      v472 = sub_195FA0888();

      [v471 addObserver:v470 forKeyPath:v472 options:0 context:0];

      v267[17] = v445;
      LOBYTE(v470) = os_variant_has_internal_ui();
      swift_allocObject();
      v267[18] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000018, 0x8000000195FC3210, 0, 2, v470);
      LOBYTE(v470) = os_variant_has_internal_ui();
      swift_allocObject();
      v267[19] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000011, 0x8000000195FC3230, 0, 2, v470);
      LOBYTE(v470) = os_variant_has_internal_ui();
      swift_allocObject();
      v267[20] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000015, 0x8000000195FC3250, 0, 2, v470);
      LOBYTE(v470) = os_variant_has_internal_ui();
      swift_allocObject();
      v267[21] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000010, 0x8000000195FC3270, 0, 2, v470);
      LOBYTE(v470) = os_variant_has_internal_ui();
      swift_allocObject();
      v267[22] = sub_195F8532C(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000012, 0x8000000195FC3290, 0, 1, 0, 256, v470);
      LOBYTE(v470) = os_variant_has_internal_ui();
      swift_allocObject();
      v267[23] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000013, 0x8000000195FC32B0, 0, 2, v470);
      LOBYTE(v470) = os_variant_has_internal_ui();
      swift_allocObject();
      v267[24] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000010, 0x8000000195FC32D0, 0, 2, v470);
      LOBYTE(v470) = os_variant_has_internal_ui();
      swift_allocObject();
      v267[25] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000014, 0x8000000195FC32F0, 0, 2, v470);
      LOBYTE(v470) = os_variant_has_internal_ui();
      swift_allocObject();
      v267[26] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000019, 0x8000000195FC3310, 0, 2, v470);
      LOBYTE(v470) = os_variant_has_internal_ui();
      swift_allocObject();
      v267[27] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0x61745379616C6544, 0xEC00000070757472, 0, 2, v470);
      LOBYTE(v470) = os_variant_has_internal_ui();
      swift_allocObject();
      v267[28] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000014, 0x8000000195FC3330, 0, 2, v470);
      LOBYTE(v470) = os_variant_has_internal_ui();
      swift_allocObject();
      v267[29] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD00000000000001BLL, 0x8000000195FC3350, 0, 2, v470);
      LOBYTE(v470) = os_variant_has_internal_ui();
      swift_allocObject();
      v267[30] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000015, 0x8000000195FC3370, 0, 2, v470);
      LOBYTE(v470) = os_variant_has_internal_ui();
      swift_allocObject();
      v267[31] = sub_195F8532C(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000012, 0x8000000195FC3390, 0, 1, 0, 256, v470);
      LOBYTE(v470) = os_variant_has_internal_ui();
      swift_allocObject();
      v267[32] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000013, 0x8000000195FC33B0, 0, 2, v470);
      LOBYTE(v470) = os_variant_has_internal_ui();
      swift_allocObject();
      v267[33] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000011, 0x8000000195FC33D0, 0, 2, v470);
      LOBYTE(v470) = os_variant_has_internal_ui();
      swift_allocObject();
      v267[34] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0x72614D6775626544, 0xEC000000736E6967, 0, 2, v470);
      LOBYTE(v470) = os_variant_has_internal_ui();
      swift_allocObject();
      v267[35] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0x6563536775626544, 0xEE006B73614D656ELL, 0, 2, v470);
      LOBYTE(v470) = os_variant_has_internal_ui();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE600, &qword_195FB0498);
      swift_allocObject();
      v267[36] = sub_195F84B88(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000018, 0x8000000195FC33F0, 0, 0, 0, 1, v470);
      LOBYTE(v470) = os_variant_has_internal_ui();
      swift_allocObject();
      v267[37] = sub_195F84B88(0xD000000000000011, 0x8000000195FC2FB0, 0xD00000000000001ALL, 0x8000000195FC3410, 0, 0, 0, 1, v470);
      LODWORD(v470) = os_variant_has_internal_ui();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE608, &qword_195FB04A0);
      swift_allocObject();
      LOBYTE(v498) = 1;
      v267[38] = sub_195F847C4(0xD000000000000011, 0x8000000195FC2FB0, 0x34344D7373616C47, 0xE800000000000000, 0x100000000, v470, 0.8);
      v473 = os_variant_has_internal_ui();
      swift_allocObject();
      v267[39] = sub_195F84F7C(0xD000000000000011, 0x8000000195FC2FB0, 0x4F64657564627553, 0xEE00797469636170, 0, 1, v473, 0.75);
      LOBYTE(v473) = os_variant_has_internal_ui();
      swift_allocObject();
      v267[40] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD00000000000001CLL, 0x8000000195FC3430, 0, 2, v473);
      LOBYTE(v473) = os_variant_has_internal_ui();
      swift_allocObject();
      v267[41] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000018, 0x8000000195FC3450, 0, 2, v473);
      LOBYTE(v473) = os_variant_has_internal_ui();
      swift_allocObject();
      v267[42] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000010, 0x8000000195FC3470, 0, 2, v473);
      LOBYTE(v473) = os_variant_has_internal_ui();
      swift_allocObject();
      v267[43] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD00000000000001CLL, 0x8000000195FC3490, 0, 2, v473);
      LOBYTE(v473) = os_variant_has_internal_ui();
      swift_allocObject();
      v267[44] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD00000000000001DLL, 0x8000000195FC34B0, 0, 2, v473);
      LOBYTE(v473) = os_variant_has_internal_ui();
      swift_allocObject();
      v267[45] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000028, 0x8000000195FC34D0, 0, 1, v473);
      LOBYTE(v473) = os_variant_has_internal_ui();
      swift_allocObject();
      v267[46] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000020, 0x8000000195FC3500, 0, 1, v473);
      LOBYTE(v473) = os_variant_has_internal_ui();
      swift_allocObject();
      v267[47] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000022, 0x8000000195FC3530, 0, 0, v473);
      v474 = MEMORY[0x1E69E7CC0];
      v475 = sub_195F2DF88(MEMORY[0x1E69E7CC0]);
      v476 = sub_195F2DF88(v474);
      v477 = os_variant_has_internal_ui();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE610, &qword_195FB04A8);
      swift_allocObject();
      v267[48] = sub_195F843FC(0xD000000000000011, 0x8000000195FC2FB0, 0xD00000000000001CLL, 0x8000000195FC3560, v475, v476, v477);
      v478 = os_variant_has_internal_ui();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE618, &qword_195FB04B0);
      swift_allocObject();
      v267[49] = sub_195F84034(0xD000000000000011, 0x8000000195FC2FB0, 0xD00000000000001BLL, 0x8000000195FC3580, v474, 0, v478);
      return;
    }

    v453 = sub_195FA12B8();

    if (v453)
    {
      goto LABEL_111;
    }
  }

  v455 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v456 = sub_195FA0888();
  v457 = [v455 initWithSuiteName_];

  v454 = v457;
  if (v457)
  {
    goto LABEL_113;
  }

LABEL_129:
  __break(1u);
}

unint64_t sub_195F8DAAC()
{
  v1 = sub_195FA1428();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Preferences();
  v23 = v0;

  sub_195FA1408();
  sub_195FA1418();
  v6 = sub_195FA0FF8();

  v23 = 0;
  v24 = 0xE000000000000000;
  sub_195FA0F38();

  v23 = 0xD000000000000010;
  v24 = 0x8000000195FC2970;
  v7 = *(v6 + 16);
  if (v7)
  {
    v20 = v2;
    v21 = v1;
    v22 = MEMORY[0x1E69E7CC0];
    sub_195F391DC(0, v7, 0);
    v8 = v22;
    v9 = (v6 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v22 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);

      if (v13 >= v12 >> 1)
      {
        sub_195F391DC((v12 > 1), v13 + 1, 1);
        v8 = v22;
      }

      *(v8 + 16) = v13 + 1;
      v14 = v8 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      v9 += 2;
      --v7;
    }

    while (v7);

    v2 = v20;
    v1 = v21;
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v22 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
  sub_195EB5F38(&qword_1EAEEC498, &qword_1EAEED8F0, &unk_195FACA00);
  v15 = sub_195FA0828();
  v17 = v16;

  MEMORY[0x19A8C3F70](v15, v17);

  MEMORY[0x19A8C3F70](62, 0xE100000000000000);
  v18 = v23;
  (*(v2 + 8))(v5, v1);
  return v18;
}

void *Preferences.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  v15 = v0[16];

  v16 = v0[17];

  v17 = v0[18];

  v18 = v0[19];

  v19 = v0[20];

  v20 = v0[21];

  v21 = v0[22];

  v22 = v0[23];

  v23 = v0[24];

  v24 = v0[25];

  v25 = v0[26];

  v26 = v0[27];

  v27 = v0[28];

  v28 = v0[29];

  v29 = v0[30];

  v30 = v0[31];

  v31 = v0[32];

  v32 = v0[33];

  v33 = v0[34];

  v34 = v0[35];

  v35 = v0[36];

  v36 = v0[37];

  v37 = v0[38];

  v38 = v0[39];

  v39 = v0[40];

  v40 = v0[41];

  v41 = v0[42];

  v42 = v0[43];

  v43 = v0[44];

  v44 = v0[45];

  v45 = v0[46];

  v46 = v0[47];

  v47 = v0[48];

  v48 = v0[49];

  return v0;
}

uint64_t Preferences.__deallocating_deinit()
{
  Preferences.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_195F8DFA8@<X0>(void *a1@<X8>)
{
  result = sub_195FA1008();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_195F8E010(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_195EC7CCC(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_195FA12B8();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_195F8E1B4(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + 288) + 120);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  sub_195F86CCC(a1, a2);
  os_unfair_lock_unlock(*(v5 + 16));
}

uint64_t sub_195F8E23C(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + 296) + 120);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  sub_195F86CCC(a1, a2);
  os_unfair_lock_unlock(*(v5 + 16));
}

uint64_t sub_195F8E2C4(uint64_t a1)
{
  v3 = *(*(v1 + 384) + 104);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F8706C(a1, &qword_1EAEEE598, &qword_195FB0430, sub_195F8E010);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t keypath_get_15Tm@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  result = a2();
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

uint64_t keypath_set_96Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  a5(v8);
}

uint64_t sub_195F8F744(uint64_t a1)
{
  v3 = *(*(v1 + 392) + 104);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F8706C(a1, &qword_1EAEED8F0, &unk_195FACA00, sub_195F2A278);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F8F7E0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_195F8F82C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(char *, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v26 = a4;
  v5 = v4;
  v10 = a1[3];
  v9 = a1[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a1, v10);
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v16 = a2[3];
  v17 = a2[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a2, v16);
  v19 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21);
  v23 = v26(v14, v21, a3, v5, v10, v16, v9, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v23;
}

uint64_t IconStore.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  v2 = OBJC_IVAR____TtC14ChronoServices9IconStore_iconsFolderURL;
  v3 = sub_195FA0478();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_195F8FA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_195FA0408() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  if ((sub_195FA0408() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  if (v8 == *v10 && v9 == v10[1])
  {
    return 1;
  }

  return sub_195FA12B8();
}

uint64_t sub_195F8FB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_195FA0408())
  {
    v6 = *(a3 + 20);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = v9[1];
    if (v8)
    {
      if (v10)
      {
        v11 = *v7 == *v9 && v8 == v10;
        if (v11 || (sub_195FA12B8() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_195F8FB94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE690, &qword_195FB05F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v124 = &v109 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE698, &qword_195FB05F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v112 = &v109 - v7;
  v120 = type metadata accessor for IconStore.FileRenameMigration(0);
  v111 = *(v120 - 8);
  v8 = *(v111 + 64);
  v9 = MEMORY[0x1EEE9AC00](v120);
  v110 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v109 = &v109 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v119 = &v109 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v118 = &v109 - v15;
  v117 = sub_195FA0638();
  v16 = *(v117 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v116 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for IconStore.FileVersionUpdateMigration(0);
  v19 = *(*(updated - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](updated);
  v122 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v109 - v22;
  v136 = sub_195FA0358();
  v24 = *(v136 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v136);
  v135 = &v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_195FA0478();
  v27 = *(*(v131 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v131);
  v130 = &v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v129 = &v109 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v35 = &v109 - v33;
  v153 = MEMORY[0x1E69E7CC8];
  v154 = MEMORY[0x1E69E7CC8];
  v151 = MEMORY[0x1E69E7CD0];
  v152 = MEMORY[0x1E69E7CD0];
  v36 = *(a1 + 16);
  if (v36)
  {
    v121 = v23;
    v38 = *(v24 + 104);
    v37 = v24 + 104;
    v134 = v38;
    v133 = (v37 - 96);
    v115 = (v16 + 8);
    v137 = (v32 + 16);
    v138 = OBJC_IVAR____TtC14ChronoServices9IconStore_iconsFolderURL;
    v141 = (v32 + 8);
    v39 = (a1 + 40);
    v132 = *MEMORY[0x1E6968F70];
    *&v34 = 136446210;
    v114 = v34;
    *&v34 = 136446466;
    v113 = v34;
    v127 = v37;
    v40 = v131;
    v140 = &v109 - v33;
    do
    {
      v43 = *(v39 - 1);
      v42 = *v39;
      v143 = v39;
      v145 = v43;
      v146 = v42;
      v44 = v135;
      v45 = v136;
      v134(v135, v132, v136);
      sub_195ECC284();

      sub_195FA0468();
      (*v133)(v44, v45);
      sub_195F90B08(&v145);
      v46 = v146;
      if (v146)
      {
        v47 = v145;
        v48 = v147;
        v49 = v148;
        v139 = v149;
        v142 = v150;
        v50 = v151;

        LOBYTE(v50) = sub_195F35514(v47, v46, v48, v49, v50);

        if (v50)
        {

          v144 = MEMORY[0x1E69E7CD0];
          v51 = *v137;
          v52 = v48;
          v53 = v130;
          (*v137)(v130, v140, v40);
          swift_beginAccess();
          v54 = v129;
          v55 = v53;
          v56 = v52;
          sub_195F6B618(v129, v55);
          swift_endAccess();
          v128 = *v141;
          v128(v54, v40);
          v57 = v154;
          if (*(v154 + 16))
          {
            v58 = sub_195F59F90(v47, v46, v52, v49);
            if (v59)
            {
              v60 = *(v57 + 56) + *(v111 + 72) * v58;
              v126 = type metadata accessor for IconStore.FileRenameMigration;
              v61 = v110;
              sub_195F5FEA8(v60, v110, type metadata accessor for IconStore.FileRenameMigration);
              v62 = v109;
              sub_195F5FE40(v61, v109, type metadata accessor for IconStore.FileRenameMigration);
              v63 = v130;
              v51(v130, v62, v40);
              swift_beginAccess();
              v64 = v129;
              v65 = v63;
              v56 = v52;
              sub_195F6B618(v129, v65);
              swift_endAccess();
              v128(v64, v40);
              v66 = v112;
              sub_195F5A63C(v47, v46, v52, v49, v112);
              sub_195F2DB00(v66, &qword_1EAEEE698, &qword_195FB05F8);
              sub_195F99FB4(v62, v126);
            }
          }

          v67 = v124;
          sub_195F5A478(v47, v46, v56, v49, v124);
          sub_195F2DB00(v67, &qword_1EAEEE690, &qword_195FB05F0);
          if (qword_1EAEEBBB0 != -1)
          {
            swift_once();
          }

          v68 = sub_195FA0678();
          __swift_project_value_buffer(v68, qword_1EAEF7250);

          v69 = sub_195FA0658();
          v70 = sub_195FA0CC8();
          sub_195F9A014(v47, v46);
          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v126 = swift_slowAlloc();
            v145 = v126;
            *v71 = v113;

            sub_195F9A014(v47, v46);
            v72 = sub_195F60D0C(v47, v46, v56, v49);
            v74 = v73;

            v75 = sub_195EBD554(v72, v74, &v145);

            *(v71 + 4) = v75;
            *(v71 + 12) = 2082;
            sub_195F9A064(&qword_1EAEEBCD0, MEMORY[0x1E6968FB0]);

            v76 = sub_195FA0C08();
            v78 = v77;

            v79 = sub_195EBD554(v76, v78, &v145);
            v40 = v131;

            *(v71 + 14) = v79;
            _os_log_impl(&dword_195EB2000, v69, v70, "Removing duplicate icons for identity: %{public}s: %{public}s", v71, 0x16u);
            v80 = v126;
            swift_arrayDestroy();
            MEMORY[0x19A8C5B70](v80, -1, -1);
            MEMORY[0x19A8C5B70](v71, -1, -1);
          }

          else
          {

            sub_195F9A014(v47, v46);
          }

          sub_195F3DBF0(v41);
          v35 = v140;
          v128(v140, v40);
        }

        else
        {
          v128 = v36;

          sub_195F6B8D0(&v145, v47, v46, v48, v49);

          if (v142)
          {
            sub_195F37930(v47, v46, v48, v49);
            v145 = 0;
            v146 = 0;
            v147 = 0;
            BYTE4(v148) = 0x80;
            LODWORD(v148) = 0;
            v126 = v47;
            v88 = v40;
            v89 = v116;
            sub_195F2D344(v116);
            v125 = v48;
            v90 = v121;
            sub_195FA03C8();

            (*v115)(v89, v117);
            v91 = *v137;
            v92 = v118;
            (*v137)(v118, v140, v88);
            v93 = v120;
            v91((v92 + *(v120 + 20)), v90, v88);
            v94 = (v92 + *(v93 + 24));
            *v94 = v43;
            v94[1] = v42;
            v95 = v119;
            sub_195F5FE40(v92, v119, type metadata accessor for IconStore.FileRenameMigration);
            v96 = v154;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v145 = v96;
            v47 = v126;
            v98 = v125;
            sub_195F5D818(v95, v126, v46, v125, v49, isUniquelyReferenced_nonNull_native);
            v154 = v145;
            v99 = v142;
          }

          else
          {

            v98 = v48;
            v90 = v121;
            (*v137)(v121, v140, v40);
            v99 = 0;
          }

          v103 = (v90 + *(updated + 20));
          *v103 = v139;
          v103[1] = v99;
          v104 = v122;
          sub_195F5FEA8(v90, v122, type metadata accessor for IconStore.FileVersionUpdateMigration);

          v105 = v153;
          v106 = swift_isUniquelyReferenced_nonNull_native();
          v145 = v105;
          sub_195F5D5C8(v104, v47, v46, v98, v49, v106);
          sub_195F9A014(v47, v46);
          sub_195F99FB4(v90, type metadata accessor for IconStore.FileVersionUpdateMigration);
          v35 = v140;
          v40 = v131;
          (*v141)(v140, v131);
          v153 = v145;
          v36 = v128;
        }
      }

      else
      {
        if (qword_1EAEEBBB0 != -1)
        {
          swift_once();
        }

        v81 = sub_195FA0678();
        __swift_project_value_buffer(v81, qword_1EAEF7250);

        v82 = sub_195FA0658();
        v83 = sub_195FA0CA8();

        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v145 = v85;
          *v84 = v114;
          v86 = sub_195EBD554(v43, v42, &v145);

          *(v84 + 4) = v86;
          _os_log_impl(&dword_195EB2000, v82, v83, "Failed to parse icon info from: %{public}s", v84, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v85);
          v87 = v85;
          v40 = v131;
          MEMORY[0x19A8C5B70](v87, -1, -1);
          MEMORY[0x19A8C5B70](v84, -1, -1);
        }

        else
        {
        }

        v100 = v130;
        (*v137)(v130, v35, v40);
        v101 = v129;
        sub_195F6B618(v129, v100);
        v102 = *v141;
        (*v141)(v101, v40);
        v102(v35, v40);
      }

      v39 = v143 + 2;
      v36 = (v36 - 1);
    }

    while (v36);
    v107 = v154;
  }

  else
  {
    v107 = MEMORY[0x1E69E7CC8];
  }

  return v107;
}

uint64_t sub_195F90B08@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_195FA0638();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = 46;
  v39 = 0xE100000000000000;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  BYTE4(v37) = 0x80;
  LODWORD(v37) = 0;
  sub_195F2D344(v6);
  v7 = sub_195FA0618();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  if (!v9)
  {
    goto LABEL_13;
  }

  MEMORY[0x19A8C3F70](v7, v9);

  if ((sub_195FA0A18() & 1) == 0)
  {

    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return result;
  }

  v11 = sub_195FA0968();

  if (__OFSUB__(0, v11))
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_195FA0998();
  v12 = sub_195FA0A68();
  v13 = MEMORY[0x19A8C3EF0](v12);
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  Token.init(rawValue:)(v16);
  sub_195F9DB38(v34, &v34);
  v17 = v34;
  v18 = v35;
  v19 = v36;
  v20 = v37;
  sub_195F37930(v34, v35, v36, v37);
  v21 = sub_195FA0968();

  if (__OFADD__(v21, 2))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v22 = sub_195FA0988();
  if (v23)
  {

    v24 = 0;
    v25 = 0;
  }

  else
  {
    v26 = sub_195F99034(v22, v13, v15);
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v24 = MEMORY[0x19A8C3EF0](v26, v28, v30, v32);
    v25 = v33;
  }

  *a1 = v17;
  *(a1 + 8) = v18;
  *(a1 + 16) = v19;
  *(a1 + 24) = v20;
  *(a1 + 32) = v24;
  *(a1 + 40) = v25;
  return result;
}

uint64_t sub_195F90FB8()
{
  v248 = sub_195FA0478();
  v243 = *(v248 - 8);
  isa = v243[8].isa;
  v2 = MEMORY[0x1EEE9AC00](v248);
  v238 = &v236 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v237 = &v236 - v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v263 = &v236 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v242 = &v236 - v8;
  updated = type metadata accessor for IconStore.FileVersionUpdateMigration(0);
  v258 = *(updated - 8);
  v9 = *(v258 + 64);
  v10 = MEMORY[0x1EEE9AC00](updated);
  v265 = (&v236 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v257 = (&v236 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE680, &qword_195FB05E0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  *&v255 = &v236 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v256 = &v236 - v17;
  v266 = type metadata accessor for IconStore.FileRenameMigration(0);
  v262 = *(v266 - 8);
  v18 = *(v262 + 64);
  v19 = MEMORY[0x1EEE9AC00](v266);
  v253 = &v236 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v236 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v236 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v260 = (&v236 - v28);
  MEMORY[0x1EEE9AC00](v27);
  v261 = (&v236 - v29);
  v30 = v0[7];
  v31 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v30);
  (*(v31 + 16))(v272, v30, v31);
  v32 = v274;
  __swift_project_boxed_opaque_existential_1(v272, v273);
  v259 = v0;
  v33 = sub_195FA0438();
  v34 = v264;
  v35 = (*(v32 + 24))(v33);
  if (v34)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(v272);
  }

  *&v236 = v26;
  v247 = v23;
  v264 = 0;
  v37 = v35;

  v38 = sub_195F8FB94(v37);
  v252 = v39;
  v240 = v40;

  v41 = v38 + 64;
  v42 = 1 << *(v38 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v38 + 64);
  v45 = (v42 + 63) >> 6;

  v46 = 0;
  *&v47 = 136446466;
  v245 = v47;
  v48 = v265;
  v241 = v38;
  v50 = v260;
  v49 = v261;
  v249 = v45;
  v250 = v38 + 64;
  for (i = v262; v44; i = v262)
  {
    v52 = v46;
LABEL_10:
    v53 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    sub_195F5FEA8(*(v241 + 56) + *(i + 72) * (v53 | (v52 << 6)), v49, type metadata accessor for IconStore.FileRenameMigration);
    sub_195F5FE40(v49, v50, type metadata accessor for IconStore.FileRenameMigration);
    v54 = v273;
    v55 = v274;
    __swift_project_boxed_opaque_existential_1(v272, v273);
    v56 = v264;
    (*(v55 + 64))(v50, v50 + *(v266 + 20), v54, v55);
    v264 = v56;
    if (v56)
    {
      v57 = v253;
      if (qword_1EAEEBBB0 != -1)
      {
        swift_once();
      }

      v58 = sub_195FA0678();
      __swift_project_value_buffer(v58, qword_1EAEF7250);
      sub_195F5FEA8(v50, v57, type metadata accessor for IconStore.FileRenameMigration);
      v59 = v264;
      v60 = v264;
      v61 = sub_195FA0658();
      v62 = sub_195FA0CA8();

      v251 = v61;
      if (os_log_type_enabled(v61, v62))
      {
        v63 = v57;
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        LODWORD(v239) = v62;
        v66 = v65;
        *&v244 = swift_slowAlloc();
        v271[0] = v244;
        *v64 = v245;
        v67 = (v63 + *(v266 + 24));
        v69 = *v67;
        v68 = v67[1];

        v246 = type metadata accessor for IconStore.FileRenameMigration;
        sub_195F99FB4(v63, type metadata accessor for IconStore.FileRenameMigration);
        v70 = sub_195EBD554(v69, v68, v271);
        v48 = v265;

        *(v64 + 4) = v70;
        v50 = v260;
        *(v64 + 12) = 2114;
        v71 = v59;
        v72 = _swift_stdlib_bridgeErrorToNSError();
        *(v64 + 14) = v72;
        *v66 = v72;
        v73 = v251;
        _os_log_impl(&dword_195EB2000, v251, v239, "Failed to rename icon: %{public}s - %{public}@", v64, 0x16u);
        sub_195F2DB00(v66, &unk_1EAEEE410, &qword_195FAAEB0);
        MEMORY[0x19A8C5B70](v66, -1, -1);
        v74 = v244;
        __swift_destroy_boxed_opaque_existential_1Tm(v244);
        MEMORY[0x19A8C5B70](v74, -1, -1);
        MEMORY[0x19A8C5B70](v64, -1, -1);

        v75 = v50;
        v76 = v246;
      }

      else
      {

        sub_195F99FB4(v57, type metadata accessor for IconStore.FileRenameMigration);
        v75 = v50;
        v76 = type metadata accessor for IconStore.FileRenameMigration;
      }

      result = sub_195F99FB4(v75, v76);
      v264 = 0;
    }

    else
    {
      v77 = v247;
      if (qword_1EAEEBBB0 != -1)
      {
        swift_once();
      }

      v78 = sub_195FA0678();
      __swift_project_value_buffer(v78, qword_1EAEF7250);
      v79 = v50;
      v80 = v50;
      v81 = v236;
      sub_195F5FEA8(v79, v236, type metadata accessor for IconStore.FileRenameMigration);
      sub_195F5FEA8(v80, v77, type metadata accessor for IconStore.FileRenameMigration);
      v82 = sub_195FA0658();
      v83 = sub_195FA0CC8();
      if (!os_log_type_enabled(v82, v83))
      {

        sub_195F99FB4(v77, type metadata accessor for IconStore.FileRenameMigration);
        sub_195F99FB4(v81, type metadata accessor for IconStore.FileRenameMigration);
        result = sub_195F99FB4(v80, type metadata accessor for IconStore.FileRenameMigration);
        v46 = v52;
        v50 = v80;
        goto LABEL_22;
      }

      v84 = swift_slowAlloc();
      v251 = swift_slowAlloc();
      v271[0] = v251;
      *v84 = v245;
      sub_195F9A064(&qword_1EAEEBCC0, MEMORY[0x1E6968FB0]);
      LODWORD(v246) = v83;
      *&v244 = v82;
      v85 = sub_195FA1288();
      v87 = v86;
      v239 = type metadata accessor for IconStore.FileRenameMigration;
      sub_195F99FB4(v81, type metadata accessor for IconStore.FileRenameMigration);
      v88 = sub_195EBD554(v85, v87, v271);

      *(v84 + 4) = v88;
      *(v84 + 12) = 2082;
      v89 = v247;
      v90 = v247 + *(v266 + 20);
      v48 = v265;
      v91 = sub_195FA1288();
      v93 = v92;
      v94 = v89;
      v95 = v239;
      sub_195F99FB4(v94, v239);
      v96 = sub_195EBD554(v91, v93, v271);

      *(v84 + 14) = v96;
      v97 = v244;
      _os_log_impl(&dword_195EB2000, v244, v246, "Renamed icon: %{public}s -> %{public}s", v84, 0x16u);
      v98 = v251;
      swift_arrayDestroy();
      MEMORY[0x19A8C5B70](v98, -1, -1);
      MEMORY[0x19A8C5B70](v84, -1, -1);

      v50 = v260;
      result = sub_195F99FB4(v260, v95);
    }

    v46 = v52;
LABEL_22:
    v49 = v261;
    v45 = v249;
    v41 = v250;
  }

  while (1)
  {
    v52 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v52 >= v45)
    {

      v99 = (v252 + 64);
      v100 = 1 << *(v252 + 32);
      v101 = -1;
      if (v100 < 64)
      {
        v101 = ~(-1 << v100);
      }

      v102 = v101 & *(v252 + 64);
      v249 = (v100 + 63) >> 6;
      v250 = 0x8000000195FC3680;

      v103 = 0;
      *&v104 = 136446722;
      v236 = v104;
      v244 = xmmword_195FAC280;
      v105 = v263;
      v253 = v99;
LABEL_30:
      v106 = v257;
      if (!v102)
      {
        if (v249 <= v103 + 1)
        {
          v108 = v103 + 1;
        }

        else
        {
          v108 = v249;
        }

        v109 = v108 - 1;
        while (1)
        {
          v107 = v103 + 1;
          if (__OFADD__(v103, 1))
          {
            break;
          }

          if (v107 >= v249)
          {
            v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE688, &qword_195FB05E8);
            v120 = v255;
            (*(*(v138 - 8) + 56))(v255, 1, 1, v138);
            v262 = 0;
            v103 = v109;
            goto LABEL_41;
          }

          v102 = *&v99[8 * v107];
          ++v103;
          if (v102)
          {
            v103 = v107;
            goto LABEL_40;
          }
        }

        __break(1u);
        break;
      }

      v107 = v103;
LABEL_40:
      v262 = (v102 - 1) & v102;
      v110 = __clz(__rbit64(v102)) | (v107 << 6);
      v111 = *(v252 + 56);
      v112 = (*(v252 + 48) + 32 * v110);
      v113 = v112[1];
      v266 = *v112;
      v114 = v112[2];
      v115 = v112[3];
      sub_195F5FEA8(v111 + *(v258 + 72) * v110, v257, type metadata accessor for IconStore.FileVersionUpdateMigration);
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE688, &qword_195FB05E8);
      v117 = *(v116 + 48);
      v118 = v255;
      *v255 = v266;
      v118[1] = v113;
      v118[2] = v114;
      v118[3] = v115;
      v119 = v106;
      v120 = v118;
      sub_195F5FE40(v119, v118 + v117, type metadata accessor for IconStore.FileVersionUpdateMigration);
      (*(*(v116 - 8) + 56))(v120, 0, 1, v116);

      v105 = v263;
      v48 = v265;
LABEL_41:
      v121 = v256;
      sub_195F99F44(v120, v256);
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE688, &qword_195FB05E8);
      if ((*(*(v122 - 8) + 48))(v121, 1, v122) == 1)
      {

        v184 = 0;
        v185 = (v240 + 56);
        v186 = 1 << *(v240 + 32);
        v187 = -1;
        if (v186 < 64)
        {
          v187 = ~(-1 << v186);
        }

        v188 = v187 & *(v240 + 56);
        v189 = (v186 + 63) >> 6;
        v190 = v243;
        v261 = v243 + 4;
        v265 = v243 + 1;
        v266 = &v243[2];
        *&v183 = 136446210;
        v255 = v183;
        v191 = v248;
        v262 = v189;
        v260 = (v240 + 56);
        v192 = v242;
        if (v188)
        {
          goto LABEL_82;
        }

LABEL_83:
        while (1)
        {
          v194 = v184 + 1;
          if (__OFADD__(v184, 1))
          {
            goto LABEL_101;
          }

          if (v194 >= v189)
          {

            return __swift_destroy_boxed_opaque_existential_1Tm(v272);
          }

          v188 = v185[v194].isa;
          ++v184;
          if (v188)
          {
            while (1)
            {
              v195 = __clz(__rbit64(v188));
              v188 &= v188 - 1;
              v196 = v190[2].isa;
              v196(v192, *(v240 + 48) + v190[9].isa * (v195 | (v194 << 6)), v191);
              (v190[4].isa)(v105, v192, v191);
              v197 = v273;
              v198 = v274;
              __swift_project_boxed_opaque_existential_1(v272, v273);
              v199 = v264;
              (*(v198 + 80))(v105, v197, v198);
              v264 = v199;
              if (v199)
              {
                v200 = v238;
                if (qword_1EAEEBBB0 != -1)
                {
                  swift_once();
                }

                v201 = sub_195FA0678();
                __swift_project_value_buffer(v201, qword_1EAEF7250);
                v191 = v248;
                v196(v200, v105, v248);
                v202 = v264;
                v203 = v264;
                v204 = sub_195FA0658();
                v205 = sub_195FA0CA8();

                if (os_log_type_enabled(v204, v205))
                {
                  v206 = swift_slowAlloc();
                  v258 = swift_slowAlloc();
                  v259 = swift_slowAlloc();
                  v271[0] = v259;
                  *v206 = v245;
                  sub_195F9A064(&qword_1EAEEBCC0, MEMORY[0x1E6968FB0]);
                  v257 = v204;
                  v207 = sub_195FA1288();
                  LODWORD(v256) = v205;
                  v209 = v208;
                  v210 = v200;
                  v211 = v265->isa;
                  (v265->isa)(v210, v191);
                  v212 = sub_195EBD554(v207, v209, v271);

                  *(v206 + 4) = v212;
                  *(v206 + 12) = 2114;
                  v213 = v202;
                  v214 = _swift_stdlib_bridgeErrorToNSError();
                  *(v206 + 14) = v214;
                  v216 = v257;
                  v215 = v258;
                  *v258 = v214;
                  _os_log_impl(&dword_195EB2000, v216, v256, "Failed to remove duplicate icon at: %{public}s - %{public}@", v206, 0x16u);
                  sub_195F2DB00(v215, &unk_1EAEEE410, &qword_195FAAEB0);
                  MEMORY[0x19A8C5B70](v215, -1, -1);
                  v217 = v259;
                  __swift_destroy_boxed_opaque_existential_1Tm(v259);
                  MEMORY[0x19A8C5B70](v217, -1, -1);
                  v218 = v206;
                  v105 = v263;
                  MEMORY[0x19A8C5B70](v218, -1, -1);

                  v219 = v248;
                  result = v211(v105, v248);
                  v264 = 0;
                  v184 = v194;
                  v191 = v219;
                }

                else
                {

                  v193 = v265->isa;
                  (v265->isa)(v200, v191);
                  result = v193(v105, v191);
                  v264 = 0;
                  v184 = v194;
                }

                v190 = v243;
                v185 = v260;
                v189 = v262;
                v192 = v242;
                if (!v188)
                {
                  goto LABEL_83;
                }
              }

              else
              {
                v220 = v237;
                if (qword_1EAEEBBB0 != -1)
                {
                  swift_once();
                }

                v221 = sub_195FA0678();
                __swift_project_value_buffer(v221, qword_1EAEF7250);
                v222 = v248;
                v196(v220, v105, v248);
                v223 = sub_195FA0658();
                v224 = sub_195FA0CC8();
                if (os_log_type_enabled(v223, v224))
                {
                  v225 = swift_slowAlloc();
                  v257 = v225;
                  v259 = swift_slowAlloc();
                  v271[0] = v259;
                  LODWORD(v225->isa) = v255;
                  sub_195F9A064(&qword_1EAEEBCC0, MEMORY[0x1E6968FB0]);
                  LODWORD(v256) = v224;
                  v226 = sub_195FA1288();
                  v228 = v227;
                  v258 = v265->isa;
                  (v258)(v220, v222);
                  v229 = sub_195EBD554(v226, v228, v271);
                  v105 = v263;

                  v230 = v257;
                  *(&v257->isa + 4) = v229;
                  v231 = v223;
                  v232 = v223;
                  v233 = v230;
                  _os_log_impl(&dword_195EB2000, v232, v256, "Removed duplicate icon at: %{public}s", v230, 0xCu);
                  v234 = v259;
                  __swift_destroy_boxed_opaque_existential_1Tm(v259);
                  MEMORY[0x19A8C5B70](v234, -1, -1);
                  MEMORY[0x19A8C5B70](v233, -1, -1);

                  result = (v258)(v105, v222);
                }

                else
                {

                  v235 = v265->isa;
                  (v265->isa)(v220, v222);
                  result = v235(v105, v222);
                }

                v184 = v194;
                v191 = v222;
                v190 = v243;
                v189 = v262;
                v192 = v242;
                if (!v188)
                {
                  goto LABEL_83;
                }
              }

LABEL_82:
              v194 = v184;
            }
          }
        }
      }

      v123 = v48;
      v124 = *v121;
      v125 = *(v121 + 8);
      v126 = *(v121 + 16);
      v127 = *(v121 + 24);
      sub_195F5FE40(v121 + *(v122 + 48), v123, type metadata accessor for IconStore.FileVersionUpdateMigration);
      v128 = v273;
      v129 = v274;
      v130 = __swift_project_boxed_opaque_existential_1(v272, v273);
      v260 = v126;
      v261 = v124;
      v267 = v124;
      v268 = v125;
      v266 = v125;
      v269 = v126;
      v270 = v127;
      sub_195F92A8C(&v267, v130, v128, v129, v271);
      v131 = v271[4];
      v132 = v271[5];

      v133 = (v123 + *(updated + 20));
      v134 = v133[1];
      if (v134)
      {
        v135 = *v133;
        v136 = v133[1];

        if (!v132)
        {
          goto LABEL_53;
        }

        if (v135 != v131)
        {
LABEL_49:
          v137 = sub_195FA12B8();
          v105 = v263;
          if (v137)
          {

            goto LABEL_75;
          }

LABEL_53:
          v251 = v131;
          v140 = v273;
          v139 = v274;
          __swift_project_boxed_opaque_existential_1(v272, v273);

          v271[0] = 0xD00000000000001DLL;
          v271[1] = v250;
          v267 = v135;
          v268 = v134;
          v141 = v264;
          (*(v139 + 48))(v265, v271, &v267, MEMORY[0x1E69E6158], MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], v140, v139);
          v142 = v141;

          if (v141)
          {

            swift_bridgeObjectRelease_n();
            if (qword_1EAEEBBB0 != -1)
            {
              swift_once();
            }

            v143 = sub_195FA0678();
            __swift_project_value_buffer(v143, qword_1EAEF7250);

            v144 = v141;
            v145 = sub_195FA0658();
            v146 = sub_195FA0CA8();

            if (os_log_type_enabled(v145, v146))
            {
              v147 = swift_slowAlloc();
              LODWORD(v247) = v146;
              v148 = v147;
              v246 = swift_slowAlloc();
              v251 = swift_slowAlloc();
              v271[0] = v251;
              *v148 = v245;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E0, &unk_195FADCE0);
              inited = swift_initStackObject();
              v150 = inited;
              *(inited + 16) = v244;
              v151 = v260;
              if (!v127)
              {
                v151 = 0;
              }

              *(inited + 32) = v151;
              *(inited + 40) = v127;
              v152 = v266;
              *(inited + 48) = v261;
              *(inited + 56) = v152;

              sub_195EB6308(v150, &v267);
              v264 = v142;
              v275 = v267;

              v261 = v145;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
              sub_195EB5F38(&qword_1EAEEC498, &qword_1EAEED8F0, &unk_195FACA00);
              v153 = sub_195FA0828();
              v155 = v154;

              swift_bridgeObjectRelease_n();
              v156 = sub_195EBD554(v153, v155, v271);

              *(v148 + 4) = v156;
              *(v148 + 12) = 2114;
              v157 = v264;
              v158 = v264;
              v159 = _swift_stdlib_bridgeErrorToNSError();
              *(v148 + 14) = v159;
              v160 = v246;
              *v246 = v159;
              v161 = v261;
              _os_log_impl(&dword_195EB2000, v261, v247, "Failed to save icon version for: %{public}s - %{public}@", v148, 0x16u);
              sub_195F2DB00(v160, &unk_1EAEEE410, &qword_195FAAEB0);
              MEMORY[0x19A8C5B70](v160, -1, -1);
              v162 = v251;
              __swift_destroy_boxed_opaque_existential_1Tm(v251);
              MEMORY[0x19A8C5B70](v162, -1, -1);
              MEMORY[0x19A8C5B70](v148, -1, -1);

              v264 = 0;
            }

            else
            {

              v264 = 0;
            }
          }

          else
          {

            if (qword_1EAEEBBB0 != -1)
            {
              swift_once();
            }

            v264 = 0;
            v163 = sub_195FA0678();
            __swift_project_value_buffer(v163, qword_1EAEF7250);

            v164 = sub_195FA0658();
            v165 = sub_195FA0CC8();

            if (os_log_type_enabled(v164, v165))
            {
              v166 = swift_slowAlloc();
              LODWORD(v246) = v165;
              v167 = v166;
              v247 = swift_slowAlloc();
              v271[0] = v247;
              *v167 = v236;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E0, &unk_195FADCE0);
              v168 = swift_initStackObject();
              v169 = v168;
              *(v168 + 16) = v244;
              v170 = v260;
              if (!v127)
              {
                v170 = 0;
              }

              *(v168 + 32) = v170;
              *(v168 + 40) = v127;
              v171 = v261;
              v261 = v135;
              v172 = v266;
              *(v168 + 48) = v171;
              *(v168 + 56) = v172;

              sub_195EB6308(v169, &v267);
              v275 = v267;

              v260 = v164;
              v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
              sub_195EB5F38(&qword_1EAEEC498, &qword_1EAEED8F0, &unk_195FACA00);
              v173 = sub_195FA0828();
              v175 = v174;

              swift_bridgeObjectRelease_n();
              v176 = sub_195EBD554(v173, v175, v271);

              *(v167 + 4) = v176;
              *(v167 + 12) = 2082;
              if (v132)
              {
                v177 = v251;
              }

              else
              {
                v177 = 1701736302;
              }

              if (v132)
              {
                v178 = v132;
              }

              else
              {
                v178 = 0xE400000000000000;
              }

              v179 = sub_195EBD554(v177, v178, v271);

              *(v167 + 14) = v179;
              *(v167 + 22) = 2082;
              v180 = sub_195EBD554(v261, v134, v271);

              *(v167 + 24) = v180;
              v181 = v260;
              _os_log_impl(&dword_195EB2000, v260, v246, "Migrated icon version for: %{public}s. %{public}s -> %{public}s", v167, 0x20u);
              v182 = v247;
              swift_arrayDestroy();
              MEMORY[0x19A8C5B70](v182, -1, -1);
              MEMORY[0x19A8C5B70](v167, -1, -1);
            }

            else
            {
            }
          }

          v105 = v263;
LABEL_75:
          v48 = v265;
          v102 = v262;
LABEL_29:
          result = sub_195F99FB4(v48, type metadata accessor for IconStore.FileVersionUpdateMigration);
          v99 = v253;
          goto LABEL_30;
        }
      }

      else
      {
        if (!v132)
        {
          v134 = 0xE100000000000000;
          v135 = 48;
          goto LABEL_53;
        }

        v135 = v131;
        v134 = v132;
      }

      if (v132 != v134)
      {
        goto LABEL_49;
      }

      v48 = v265;
      v102 = v262;
      v105 = v263;
      goto LABEL_29;
    }

    v44 = *(v41 + 8 * v52);
    ++v46;
    if (v44)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_101:
  __break(1u);
  return result;
}

uint64_t sub_195F92A8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a4;
  v28 = a2;
  v29 = a3;
  v24 = sub_195FA0638();
  v7 = *(v24 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_195FA0478();
  v25 = *(v11 - 8);
  v26 = v11;
  v12 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[3];
  v22 = a1[2];
  v23 = v15;
  sub_195F37930(v15, v16, v22, v17);
  v31 = 0uLL;
  v32 = 0;
  v34 = 0x80;
  v33 = 0;
  sub_195F2D344(v10);
  sub_195FA03C8();

  (*(v7 + 8))(v10, v24);
  v30[0] = 0xD00000000000001DLL;
  v30[1] = 0x8000000195FC3680;
  (*(v27 + 56))(&v31, v14, v30, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], v29);

  (*(v25 + 8))(v14, v26);
  v18 = v31;
  v19 = v22;
  *a5 = v23;
  *(a5 + 8) = v16;
  *(a5 + 16) = v19;
  *(a5 + 24) = v17;
  *(a5 + 32) = v18;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IconStore.addIcons(for:)(Swift::OpaquePointer a1)
{
  v2 = 0;
  v3 = *(a1._rawValue + 2);
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = (a1._rawValue + 48 * v2);
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }

    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_23;
    }

    v7 = v5[7];
    ++v2;
    v5 += 6;
    if (!v7)
    {
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *v5;
      v12 = v5[2];
      v11 = v5[3];

      aBlock[0] = v4;
      v34 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_195F3925C(0, *(v4 + 16) + 1, 1);
        v4 = aBlock[0];
      }

      v14 = *(v4 + 16);
      v13 = *(v4 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_195F3925C((v13 > 1), v14 + 1, 1);
        v4 = aBlock[0];
      }

      *(v4 + 16) = v14 + 1;
      v15 = (v4 + 48 * v14);
      v15[4] = v8;
      v15[5] = v9;
      v15[6] = v34;
      v15[7] = 0;
      v15[8] = v12;
      v15[9] = v11;
      v2 = v6;
      goto LABEL_2;
    }
  }

  if (!*(v4 + 16))
  {

    return;
  }

  v16 = MEMORY[0x1E69E7CC0];
  v36 = MEMORY[0x1E69E7CC0];
  v17 = *(v32 + 24);
  v18 = swift_allocObject();
  v18[2] = v32;
  v18[3] = v4;
  v18[4] = &v36;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_195F9967C;
  *(v19 + 24) = v18;
  aBlock[4] = sub_195EC7340;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EC7454;
  aBlock[3] = &block_descriptor_12;
  v20 = _Block_copy(aBlock);

  dispatch_sync(v17, v20);
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    goto LABEL_24;
  }

  v21 = v36;
  v22 = *(v36 + 16);
  if (v22)
  {
    v33 = *(v32 + 16);
    aBlock[0] = v16;

    sub_195F3923C(0, v22, 0);
    v23 = aBlock[0];
    v24 = (v21 + 56);
    do
    {
      v25 = *(v24 - 3);
      v26 = *(v24 - 2);
      v27 = *(v24 - 1);
      v28 = *v24;
      aBlock[0] = v23;
      v30 = *(v23 + 16);
      v29 = *(v23 + 24);

      if (v30 >= v29 >> 1)
      {
        sub_195F3923C((v29 > 1), v30 + 1, 1);
        v23 = aBlock[0];
      }

      v24 += 6;
      *(v23 + 16) = v30 + 1;
      v31 = (v23 + 32 * v30);
      v31[4] = v25;
      v31[5] = v26;
      v31[6] = v27;
      v31[7] = v28;
      --v22;
    }

    while (v22);

    aBlock[0] = v23;
    sub_195FA06D8();
  }
}

uint64_t sub_195F93064(void *a1, uint64_t a2, char **a3)
{
  v4 = a1[7];
  v5 = a1[8];
  __swift_project_boxed_opaque_existential_1(a1 + 4, v4);
  (*(v5 + 16))(v47, v4, v5);
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = (a2 + 72);
    do
    {
      v8 = *(v7 - 5);
      v9 = *(v7 - 4);
      v10 = *(v7 - 3);
      v11 = *(v7 - 2);
      v12 = *v7;
      v39 = *(v7 - 1);
      v13 = v48;
      v14 = v49;
      v15 = __swift_project_boxed_opaque_existential_1(v47, v48);
      v40[0] = v8;
      v40[1] = v9;
      v38 = v10;
      v40[2] = v10;
      v40[3] = v11;

      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_195F92A8C(v40, v15, v13, v14, &v41);

      v16 = v45;
      v17 = v46;

      if (v17)
      {
        if (!v12)
        {

LABEL_15:
          v19 = v48;
          v20 = v49;
          v21 = __swift_project_boxed_opaque_existential_1(v47, v48);
          v41 = v8;
          v42 = v9;
          v43 = v10;
          v44 = v11;
          v45 = v39;
          v46 = v12;
          sub_195F936FC(&v41, v21, v19, v20);
          if (qword_1EAEEBBB0 != -1)
          {
            swift_once();
          }

          v22 = sub_195FA0678();
          __swift_project_value_buffer(v22, qword_1EAEF7250);

          v23 = sub_195FA0658();
          v24 = sub_195FA0CC8();

          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v40[0] = v37;
            *v25 = 136446210;

            swift_bridgeObjectRetain_n();
            v41 = sub_195F60D0C(v8, v9, v10, v11);
            v42 = v26;
            MEMORY[0x19A8C3F70](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
            if (v12)
            {
              v27 = v39;
            }

            else
            {
              v27 = 1701736302;
            }

            if (v12)
            {
              v28 = v12;
            }

            else
            {
              v28 = 0xE400000000000000;
            }

            MEMORY[0x19A8C3F70](v27, v28);

            v29 = sub_195EBD554(v41, v42, v40);

            *(v25 + 4) = v29;
            _os_log_impl(&dword_195EB2000, v23, v24, "Added icon: %{public}s", v25, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v37);
            MEMORY[0x19A8C5B70](v37, -1, -1);
            MEMORY[0x19A8C5B70](v25, -1, -1);
          }

          v30 = *a3;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a3 = v30;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v30 = sub_195F390BC(0, *(v30 + 2) + 1, 1, v30);
            *a3 = v30;
          }

          v33 = *(v30 + 2);
          v32 = *(v30 + 3);
          if (v33 >= v32 >> 1)
          {
            v30 = sub_195F390BC((v32 > 1), v33 + 1, 1, v30);
            *a3 = v30;
          }

          *(v30 + 2) = v33 + 1;
          v34 = &v30[48 * v33];
          *(v34 + 4) = v8;
          *(v34 + 5) = v9;
          *(v34 + 6) = v38;
          *(v34 + 7) = v11;
          *(v34 + 8) = v39;
          *(v34 + 9) = v12;
          goto LABEL_5;
        }

        if (v16 == v39 && v17 == v12)
        {

          goto LABEL_4;
        }

        v18 = sub_195FA12B8();

        if ((v18 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else if (v12)
      {
        goto LABEL_15;
      }

LABEL_4:

LABEL_5:
      v7 += 6;
      --v6;
    }

    while (v6);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v47);
}

void sub_195F936FC(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v100 = a4;
  v5 = v4;
  v103 = a2;
  v104 = a3;
  v114[2] = *MEMORY[0x1E69E9840];
  v105 = sub_195FA0638();
  v99 = *(v105 - 1);
  v7 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v9 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_195FA0478();
  v102 = *(v106 - 8);
  v10 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v12 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[2];
  v16 = a1[3];
  v17 = a1[5];
  v93 = a1[4];
  v98 = v17;
  v18 = v4[3];
  BSDispatchQueueAssert();
  v19 = objc_allocWithZone(MEMORY[0x1E69A8A00]);

  v20 = sub_195FA0888();

  v107 = [v19 initWithBundleIdentifier_];

  v94 = v13;
  v21 = v13;
  v22 = OBJC_IVAR____TtC14ChronoServices9IconStore_iconsFolderURL;
  v96 = v14;
  v23 = v14;
  v24 = v5;
  v95 = v15;
  v25 = v15;
  v26 = v100;
  v97 = v16;
  sub_195F37930(v21, v23, v25, v16);
  v109 = 0;
  v110 = 0;
  v111 = 0;
  v113 = 0x80;
  v112 = 0;
  sub_195F2D344(v9);
  sub_195FA03C8();

  (*(v99 + 8))(v9, v105);
  v27 = *(v26 + 80);
  v105 = v12;
  v28 = v12;
  v29 = v104;
  v30 = v101;
  v27(v28, v104, v26);
  v31 = v30;
  if (v30)
  {

    v31 = 0;
  }

  v108 = 0;
  v32 = sub_195FA0438();
  v33 = (*(v26 + 16))(v32);

  if ((v33 & 1) != 0 && (v108 & 1) != 0 || (sub_195F9B0FC(v24 + v22, 1, 0, v29, v26), !v31))
  {
    v47 = v24;
    v48 = [objc_opt_self() imageDescriptorNamed_];
    [v48 setShouldApplyMask_];
    v49 = [v107 prepareImageForDescriptor_];
    v50 = v106;
    if (v49 && (v51 = v49, v52 = [v49 CGImage], v51, v52))
    {
      v53 = v26;
      v101 = v48;
      v54 = v47[12];
      v55 = v47[13];
      v56 = __swift_project_boxed_opaque_existential_1(v47 + 9, v54);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDA90, qword_195FAC9A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_195FAC910;
      *(inited + 32) = v52;
      v109 = 0;
      v110 = 0;
      v111 = 0;
      v113 = 0x80;
      v112 = 0;
      v58 = v52;
      v59 = v105;
      sub_195F99A00(inited, v105, &v109, v56, v54, v55);
      if (v31)
      {
        v104 = v58;
        sub_195F99EF0(v109, v110, v111, v112 | (v113 << 32));
        swift_setDeallocating();
        v60 = *(inited + 16);
        swift_arrayDestroy();
        v75 = v106;
        v76 = v97;
        v77 = v96;
        if (qword_1EAEEBBB0 != -1)
        {
          swift_once();
        }

        v78 = sub_195FA0678();
        __swift_project_value_buffer(v78, qword_1EAEF7250);

        v79 = v31;
        v80 = sub_195FA0658();
        v81 = sub_195FA0CA8();

        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v103 = 0;
          v85 = v84;
          v109 = v84;
          *v82 = 136446466;
          v86 = sub_195F60D0C(v94, v77, v95, v76);
          v88 = v75;
          v89 = sub_195EBD554(v86, v87, &v109);

          *(v82 + 4) = v89;
          *(v82 + 12) = 2114;
          v90 = v31;
          v91 = _swift_stdlib_bridgeErrorToNSError();
          *(v82 + 14) = v91;
          *v83 = v91;
          _os_log_impl(&dword_195EB2000, v80, v81, "Error writing image data for %{public}s: %{public}@", v82, 0x16u);
          sub_195F2DB00(v83, &unk_1EAEEE410, &qword_195FAAEB0);
          MEMORY[0x19A8C5B70](v83, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm(v85);
          MEMORY[0x19A8C5B70](v85, -1, -1);
          MEMORY[0x19A8C5B70](v82, -1, -1);

          (*(v102 + 8))(v105, v88);
        }

        else
        {

          (*(v102 + 8))(v105, v75);
        }
      }

      else
      {
        sub_195F99EF0(v109, v110, v111, v112 | (v113 << 32));
        swift_setDeallocating();
        v74 = *(inited + 16);
        swift_arrayDestroy();
        v109 = 0xD00000000000001DLL;
        v110 = 0x8000000195FC3680;
        v114[0] = v93;
        v114[1] = v98;
        (*(v53 + 48))(v59, &v109, v114, MEMORY[0x1E69E6158], MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], v104, v53);

        (*(v102 + 8))(v59, v106);
      }
    }

    else
    {
      if (qword_1EAEEBBB0 != -1)
      {
        swift_once();
      }

      v61 = sub_195FA0678();
      __swift_project_value_buffer(v61, qword_1EAEF7250);

      v62 = v96;

      v63 = v97;

      v64 = sub_195FA0658();
      v65 = sub_195FA0CA8();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = v48;
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v109 = v68;
        *v67 = 136446210;
        v69 = sub_195F60D0C(v94, v62, v95, v63);
        v71 = sub_195EBD554(v69, v70, &v109);

        *(v67 + 4) = v71;
        _os_log_impl(&dword_195EB2000, v64, v65, "Failed to generate icon image for: %{public}s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v68);
        MEMORY[0x19A8C5B70](v68, -1, -1);
        MEMORY[0x19A8C5B70](v67, -1, -1);
      }

      else
      {
      }

      (*(v102 + 8))(v105, v50);
    }
  }

  else
  {
    if (qword_1EAEEBBB0 != -1)
    {
      swift_once();
    }

    v34 = sub_195FA0678();
    __swift_project_value_buffer(v34, qword_1EAEF7250);

    v35 = v31;
    v36 = sub_195FA0658();
    v37 = sub_195FA0CA8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v109 = v40;
      *v38 = 136446466;
      sub_195F9A064(&qword_1EAEEBCC0, MEMORY[0x1E6968FB0]);
      v41 = v106;
      v42 = sub_195FA1288();
      v44 = sub_195EBD554(v42, v43, &v109);

      *(v38 + 4) = v44;
      *(v38 + 12) = 2114;
      v45 = v31;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 14) = v46;
      *v39 = v46;
      _os_log_impl(&dword_195EB2000, v36, v37, "Error creating image folder at %{public}s: %{public}@", v38, 0x16u);
      sub_195F2DB00(v39, &unk_1EAEEE410, &qword_195FAAEB0);
      MEMORY[0x19A8C5B70](v39, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x19A8C5B70](v40, -1, -1);
      MEMORY[0x19A8C5B70](v38, -1, -1);
    }

    else
    {

      v41 = v106;
    }

    v72 = v105;
    swift_willThrow();

    (*(v102 + 8))(v72, v41);
  }

  v73 = *MEMORY[0x1E69E9840];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IconStore.removeIcons(for:)(Swift::OpaquePointer a1)
{
  v107 = sub_195FA0638();
  v2 = *(v107 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_195FA0478();
  v5 = *(v110 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v110);
  MEMORY[0x1EEE9AC00](v7);
  v10 = *(a1._rawValue + 2);
  if (v10)
  {
    v109 = &v94 - v8;
    v97 = v9;
    v11 = v132[7];
    v12 = v132[8];
    __swift_project_boxed_opaque_existential_1(v132 + 4, v11);
    (*(v12 + 16))(&v129, v11, v12);
    v105 = (v2 + 8);
    v104 = OBJC_IVAR____TtC14ChronoServices9IconStore_iconsFolderURL;
    v103 = (v5 + 8);
    v95 = (v5 + 16);
    v13 = (a1._rawValue + 56);
    *&v14 = 136446210;
    v98 = v14;
    v102 = xmmword_195FAC280;
    *(&v14 + 1) = 2;
    v101 = xmmword_195FAC070;
    *&v14 = 136446466;
    v96 = v14;
    do
    {
      v120 = v10;
      v16 = *(v13 - 3);
      v15 = *(v13 - 2);
      v17 = *(v13 - 1);
      v18 = *v13;
      v119 = v13;
      v19 = v130;
      v20 = v131;
      v21 = __swift_project_boxed_opaque_existential_1(&v129, v130);
      v122[0] = v16;
      v122[1] = v15;
      v114 = v17;
      v122[2] = v17;
      v122[3] = v18;

      v115 = v15;

      sub_195F92A8C(v122, v21, v19, v20, &v123);
      v22 = v124;
      v112 = v123;
      v23 = v126;
      v113 = v125;
      v25 = v127;
      v24 = v128;
      if (qword_1EAEEBBB0 != -1)
      {
        swift_once();
      }

      v26 = sub_195FA0678();
      v27 = __swift_project_value_buffer(v26, qword_1EAEF7250);

      v111 = v27;
      v28 = sub_195FA0658();
      v29 = sub_195FA0CC8();

      v30 = os_log_type_enabled(v28, v29);
      v118 = v22;
      v117 = v23;
      v116 = v24;
      v108 = v25;
      if (v30)
      {
        v31 = swift_slowAlloc();
        v100 = v16;
        v32 = v31;
        v99 = swift_slowAlloc();
        v122[0] = v99;
        *v32 = v98;

        swift_bridgeObjectRetain_n();
        v123 = sub_195F60D0C(v112, v22, v113, v23);
        v124 = v33;
        MEMORY[0x19A8C3F70](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
        if (v24)
        {
          v34 = v25;
        }

        else
        {
          v34 = 1701736302;
        }

        if (v24)
        {
          v35 = v24;
        }

        else
        {
          v35 = 0xE400000000000000;
        }

        MEMORY[0x19A8C3F70](v34, v35);

        v36 = sub_195EBD554(v123, v124, v122);

        *(v32 + 4) = v36;
        _os_log_impl(&dword_195EB2000, v28, v29, "Removing icon: %{public}s", v32, 0xCu);
        v37 = v99;
        __swift_destroy_boxed_opaque_existential_1Tm(v99);
        MEMORY[0x19A8C5B70](v37, -1, -1);
        v38 = v32;
        v16 = v100;
        MEMORY[0x19A8C5B70](v38, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E0, &unk_195FADCE0);
      inited = swift_initStackObject();
      v40 = inited;
      *(inited + 16) = v102;
      v41 = v114;
      if (!v18)
      {
        v41 = 0;
      }

      *(inited + 32) = v41;
      *(inited + 40) = v18;
      v42 = v115;
      *(inited + 48) = v16;
      *(inited + 56) = v42;

      sub_195EB6308(v40, &v123);
      v43 = v123;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
      v44 = swift_allocObject();
      *(v44 + 16) = v101;
      v122[0] = v43;
      v45 = sub_195EB5F80();
      v46 = sub_195EB6074(v45);
      v48 = v47;

      *(v44 + 32) = v46;
      *(v44 + 40) = v48;
      v122[0] = v44;

      sub_195EB6214(v49);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
      sub_195EB5F38(&qword_1EAEEC498, &qword_1EAEED8F0, &unk_195FACA00);
      sub_195FA0828();

      v123 = 0;
      v124 = 0;
      v125 = 0;
      BYTE4(v126) = 0x80;
      LODWORD(v126) = 0;
      v50 = v106;
      sub_195F2D344(v106);
      v51 = v109;
      sub_195FA03C8();
      v52 = v51;

      (*v105)(v50, v107);
      v53 = v131;
      __swift_project_boxed_opaque_existential_1(&v129, v130);
      v54 = sub_195FA0438();
      LOBYTE(v50) = (*(v53 + 8))(v54);

      if (v50)
      {
        v55 = v130;
        v56 = v131;
        __swift_project_boxed_opaque_existential_1(&v129, v130);
        v57 = v121;
        (*(v56 + 80))(v52, v55, v56);
        v58 = v118;
        v59 = v117;
        v121 = v57;
        v60 = v116;
        if (v57)
        {

          v61 = v121;
          v62 = v121;
          v63 = sub_195FA0658();
          v64 = sub_195FA0CA8();

          if (os_log_type_enabled(v63, v64))
          {
            v65 = v58;
            v66 = swift_slowAlloc();
            v115 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v122[0] = v67;
            *v66 = v96;

            v123 = sub_195F60D0C(v112, v65, v113, v59);
            v124 = v68;
            MEMORY[0x19A8C3F70](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
            if (v60)
            {
              v69 = v108;
            }

            else
            {
              v69 = 1701736302;
            }

            if (v60)
            {
              v70 = v60;
            }

            else
            {
              v70 = 0xE400000000000000;
            }

            MEMORY[0x19A8C3F70](v69, v70);

            v71 = sub_195EBD554(v123, v124, v122);

            *(v66 + 4) = v71;
            *(v66 + 12) = 2114;
            v72 = v121;
            v73 = v121;
            v74 = _swift_stdlib_bridgeErrorToNSError();
            *(v66 + 14) = v74;
            v75 = v115;
            *v115 = v74;
            _os_log_impl(&dword_195EB2000, v63, v64, "Failed to remove icon: %{public}s - %{public}@", v66, 0x16u);
            sub_195F2DB00(v75, &unk_1EAEEE410, &qword_195FAAEB0);
            MEMORY[0x19A8C5B70](v75, -1, -1);
            __swift_destroy_boxed_opaque_existential_1Tm(v67);
            MEMORY[0x19A8C5B70](v67, -1, -1);
            MEMORY[0x19A8C5B70](v66, -1, -1);

            (*v103)(v109, v110);
          }

          else
          {

            (*v103)(v52, v110);
          }

          v121 = 0;
        }

        else
        {
          v76 = v97;
          v77 = v110;
          (*v95)(v97, v52, v110);

          v78 = sub_195FA0658();
          v79 = sub_195FA0CC8();

          if (os_log_type_enabled(v78, v79))
          {
            v80 = v58;
            v81 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            v122[0] = v82;
            *v81 = v96;

            v123 = sub_195F60D0C(v112, v80, v113, v59);
            v124 = v83;
            MEMORY[0x19A8C3F70](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
            if (v60)
            {
              v84 = v108;
            }

            else
            {
              v84 = 1701736302;
            }

            if (v60)
            {
              v85 = v60;
            }

            else
            {
              v85 = 0xE400000000000000;
            }

            MEMORY[0x19A8C3F70](v84, v85);

            v86 = sub_195EBD554(v123, v124, v122);

            *(v81 + 4) = v86;
            *(v81 + 12) = 2082;
            sub_195F9A064(&qword_1EAEEBCC0, MEMORY[0x1E6968FB0]);
            v87 = v97;
            v88 = sub_195FA1288();
            v90 = v89;
            v91 = *v103;
            (*v103)(v87, v110);
            v92 = sub_195EBD554(v88, v90, v122);

            *(v81 + 14) = v92;
            _os_log_impl(&dword_195EB2000, v78, v79, "Removed icon for: %{public}s (%{public}s)", v81, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x19A8C5B70](v82, -1, -1);
            MEMORY[0x19A8C5B70](v81, -1, -1);

            v91(v109, v110);
          }

          else
          {

            v93 = *v103;
            (*v103)(v76, v77);
            v93(v52, v77);
          }
        }
      }

      else
      {
        (*v103)(v52, v110);
      }

      v13 = v119 + 4;
      v10 = v120 - 1;
    }

    while (v120 != 1);
    __swift_destroy_boxed_opaque_existential_1Tm(&v129);
  }
}

uint64_t IconStore.ingestIcon(url:with:)(unint64_t a1, uint64_t *a2)
{
  v120 = a1;
  v5 = sub_195FA0638();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v108[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_195FA0478();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v119 = &v108[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v12);
  v15 = MEMORY[0x1EEE9AC00](v14);
  result = MEMORY[0x1EEE9AC00](v15);
  v21 = &v108[-v20];
  v22 = a2[3];
  if (v22)
  {
    v121 = v19;
    v122 = v18;
    v142 = v17;
    v123 = result;
    v114 = v3;
    v112 = v5;
    v23 = *a2;
    v24 = a2[1];
    v25 = a2[2];
    v26 = a2[5];
    v111 = a2[4];
    v118 = v26;
    v124 = v2;

    v116 = v23;
    v115 = v25;
    sub_195F37930(v23, v24, v25, v22);
    v129 = 0;
    v130 = 0;
    v131 = 0;
    v133 = 0x80;
    v132 = 0;
    sub_195F2D344(v9);
    sub_195FA03C8();

    (*(v6 + 8))(v9, v112);
    if (qword_1EAEEBBB0 != -1)
    {
      swift_once();
    }

    v27 = sub_195FA0678();
    v28 = __swift_project_value_buffer(v27, qword_1EAEF7250);
    v29 = v142;
    v30 = *(v142 + 16);
    v31 = v123;
    v30(v121, v120, v123);
    v30(v122, v21, v31);
    v32 = v118;

    v112 = v28;
    v33 = sub_195FA0658();
    v34 = sub_195FA0CC8();

    v35 = os_log_type_enabled(v33, v34);
    v117 = v22;
    v113 = v24;
    if (v35)
    {
      v36 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v139 = v110;
      *v36 = 136446722;

      swift_bridgeObjectRetain_n();
      v129 = sub_195F60D0C(v116, v24, v115, v22);
      v130 = v37;
      v109 = v34;
      MEMORY[0x19A8C3F70](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
      if (v32)
      {
        v38 = v111;
      }

      else
      {
        v38 = 1701736302;
      }

      if (v32)
      {
        v39 = v32;
      }

      else
      {
        v39 = 0xE400000000000000;
      }

      MEMORY[0x19A8C3F70](v38, v39);

      v40 = sub_195EBD554(v129, v130, &v139);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2082;
      sub_195F9A064(&qword_1EAEEBCC0, MEMORY[0x1E6968FB0]);
      v41 = v121;
      v42 = sub_195FA1288();
      v44 = v43;
      v45 = *(v142 + 8);
      v45(v41, v123);
      v46 = sub_195EBD554(v42, v44, &v139);
      v31 = v123;

      *(v36 + 14) = v46;
      *(v36 + 22) = 2082;
      v47 = v122;
      v48 = sub_195FA1288();
      v50 = v49;
      v122 = v45;
      v45(v47, v31);
      v51 = sub_195EBD554(v48, v50, &v139);

      *(v36 + 24) = v51;
      _os_log_impl(&dword_195EB2000, v33, v109, "Ingesting icon: %{public}s from url: %{public}s -> %{public}s", v36, 0x20u);
      v52 = v110;
      swift_arrayDestroy();
      MEMORY[0x19A8C5B70](v52, -1, -1);
      MEMORY[0x19A8C5B70](v36, -1, -1);
    }

    else
    {

      v53 = *(v29 + 8);
      v53(v122, v31);
      v122 = v53;
      v53(v121, v31);
    }

    v54 = v114;
    v55 = v124;
    v56 = v124[7];
    v57 = v124[8];
    __swift_project_boxed_opaque_existential_1(v124 + 4, v56);
    (*(v57 + 16))(&v139, v56, v57);
    v58 = v119;
    v123 = v21;
    sub_195FA03F8();
    v59 = v140;
    v60 = v141;
    __swift_project_boxed_opaque_existential_1(&v139, v140);
    sub_195F9B0FC(v58, 1, 0, v59, v60);
    if (!v54)
    {
      v61 = v55[7];
      v62 = v55[8];
      __swift_project_boxed_opaque_existential_1(v55 + 4, v61);
      (*(v62 + 8))(v136, v61, v62);
      v63 = v137;
      v64 = v138;
      v65 = __swift_project_boxed_opaque_existential_1(v136, v137);
      v66 = v113;
      v125 = v116;
      v126 = v113;
      v127 = v115;
      v128 = v117;
      sub_195F92A8C(&v125, v65, v63, v64, &v129);
      v67 = v134;
      v68 = v135;

      __swift_destroy_boxed_opaque_existential_1Tm(v136);
      v69 = sub_195F99688(v67, v68, v111, v118);
      if (v70)
      {
        v71 = v70;
        v114 = v69;
        v121 = v68;
        v72 = v140;
        v73 = v141;
        __swift_project_boxed_opaque_existential_1(&v139, v140);
        (*(v73 + 80))(v123, v72, v73);
        v110 = v67;
        v74 = v140;
        v75 = v141;
        __swift_project_boxed_opaque_existential_1(&v139, v140);
        (*(v75 + 72))(v120, v123, v74, v75);
        v77 = v124[7];
        v78 = v124[8];
        __swift_project_boxed_opaque_existential_1(v124 + 4, v77);
        (*(v78 + 8))(v136, v77, v78);
        v79 = v137;
        v80 = v138;
        v81 = __swift_project_boxed_opaque_existential_1(v136, v137);
        v125 = v116;
        v126 = v66;
        v127 = v115;
        v128 = v117;
        sub_195F92A8C(&v125, v81, v79, v80, &v129);
        v82 = v134;
        v83 = v135;

        __swift_destroy_boxed_opaque_existential_1Tm(v136);
        if (v83)
        {
          if (v82 == v114 && v83 == v71)
          {

LABEL_26:

            v87 = v121;

            v88 = sub_195FA0658();
            v89 = sub_195FA0CC8();
            v120 = v71;
            v90 = v87;

            v91 = v117;

            LODWORD(v118) = v89;
            if (os_log_type_enabled(v88, v89))
            {
              v92 = swift_slowAlloc();
              v112 = swift_slowAlloc();
              v129 = v112;
              *v92 = 136446722;
              v93 = v115;
              v94 = sub_195F60D0C(v116, v66, v115, v91);
              v96 = v66;
              v97 = sub_195EBD554(v94, v95, &v129);

              *(v92 + 4) = v97;
              *(v92 + 12) = 2082;
              if (v90)
              {
                v98 = v110;
              }

              else
              {
                v98 = 1701736302;
              }

              if (v90)
              {
                v99 = v90;
              }

              else
              {
                v99 = 0xE400000000000000;
              }

              v100 = v93;
              v101 = sub_195EBD554(v98, v99, &v129);

              *(v92 + 14) = v101;
              v66 = v96;
              *(v92 + 22) = 2082;
              v102 = sub_195EBD554(v114, v120, &v129);

              *(v92 + 24) = v102;
              v91 = v117;
              _os_log_impl(&dword_195EB2000, v88, v118, "Ingested updated icon version for: %{public}s. %{public}s -> %{public}s", v92, 0x20u);
              v103 = v112;
              swift_arrayDestroy();
              v58 = v119;
              MEMORY[0x19A8C5B70](v103, -1, -1);
              v104 = v92;
              v105 = v116;
              MEMORY[0x19A8C5B70](v104, -1, -1);
            }

            else
            {

              v105 = v116;
              v100 = v115;
            }

            v106 = v124[2];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED9F8, &qword_195FB0500);
            v107 = swift_allocObject();
            *(v107 + 16) = xmmword_195FAC070;
            *(v107 + 32) = v105;
            *(v107 + 40) = v66;
            *(v107 + 48) = v100;
            *(v107 + 56) = v91;
            v129 = v107;
            sub_195FA06D8();
            goto LABEL_17;
          }

          v84 = sub_195FA12B8();

          if (v84)
          {
            goto LABEL_26;
          }
        }

        v85 = v140;
        v86 = v141;
        __swift_project_boxed_opaque_existential_1(&v139, v140);
        v129 = 0xD00000000000001DLL;
        v130 = 0x8000000195FC3680;
        v136[0] = v111;
        v136[1] = v118;
        (*(v86 + 48))(v123, &v129, v136, MEMORY[0x1E69E6158], MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], v85, v86);

        goto LABEL_26;
      }
    }

LABEL_17:

    v76 = v122;
    v122(v58, v31);
    v76(v123, v31);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v139);
  }

  return result;
}

uint64_t IconStore.iconVersion(for:)(__int128 *a1)
{
  v11 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = v1[7];
  v5 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v4);
  (*(v5 + 8))(v17, v4, v5);
  v6 = v18;
  v7 = v19;
  v8 = __swift_project_boxed_opaque_existential_1(v17, v18);
  v12 = v11;
  v13 = v2;
  v14 = v3;
  sub_195F92A8C(&v12, v8, v6, v7, v15);
  v9 = v16;

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return v9;
}

uint64_t IconStore.iconUpdatePublisher(filterPredicate:)(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE660, &qword_195FB0508);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *a1;
  v11[1] = *(v1 + 16);
  *(swift_allocObject() + 16) = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE668, &qword_195FB0510);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE670, &qword_195FB0518);
  sub_195EB5F38(&qword_1EAEEBB90, &qword_1EAEEE668, &qword_195FB0510);
  sub_195FA0748();

  sub_195EB5F38(&unk_1EAEEBB98, &qword_1EAEEE660, &qword_195FB0508);
  v9 = sub_195FA0738();
  (*(v4 + 8))(v7, v3);
  return v9;
}

void sub_195F96094(uint64_t *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v5 = a2;
    v6 = 0;
    if (a2)
    {
      v7 = 0x65746F6D6572;
    }

    else
    {
      v7 = 0x6C61636F6CLL;
    }

    v8 = 0xE600000000000000;
    if (!a2)
    {
      v8 = 0xE500000000000000;
    }

    v40 = v8;
    v41 = v7;
    v37 = v4 - 1;
    v9 = v3 + 56;
    v39 = MEMORY[0x1E69E7CC0];
    v43 = *a1;
    v44 = *(*a1 + 16);
    v36 = v3 + 56;
    while (1)
    {
      v10 = (v9 + 32 * v6);
      v11 = v6;
      while (1)
      {
        if (v11 >= *(v3 + 16))
        {
          __break(1u);
          return;
        }

        v12 = *(v10 - 3);
        v13 = *(v10 - 2);
        v15 = *(v10 - 1);
        v14 = *v10;
        if (v5)
        {
          break;
        }

        if (!v14)
        {
          goto LABEL_27;
        }

LABEL_17:
        v16 = qword_1EAEEBBB0;
        v17 = *(v10 - 2);

        if (v16 != -1)
        {
          swift_once();
        }

        v18 = sub_195FA0678();
        __swift_project_value_buffer(v18, qword_1EAEF7250);

        v19 = sub_195FA0658();
        v20 = sub_195FA0C98();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v45 = v22;
          *v21 = 136446466;
          v23 = sub_195EBD554(v41, v40, &v45);

          *(v21 + 4) = v23;
          *(v21 + 12) = 2082;
          if (v14)
          {
            v24 = v15;
          }

          else
          {
            v24 = 0x6C61636F6CLL;
          }

          if (v14)
          {
            v25 = v14;
          }

          else
          {
            v25 = 0xE500000000000000;
          }

          v26 = sub_195EBD554(v24, v25, &v45);

          *(v21 + 14) = v26;
          _os_log_impl(&dword_195EB2000, v19, v20, "Icon update not published - predicate: %{public}s vs source: %{public}s", v21, 0x16u);
          swift_arrayDestroy();
          v27 = v22;
          v3 = v43;
          MEMORY[0x19A8C5B70](v27, -1, -1);
          v28 = v21;
          v5 = a2;
          MEMORY[0x19A8C5B70](v28, -1, -1);
        }

        else
        {
        }

        ++v11;
        v10 += 4;
        if (v44 == v11)
        {
          goto LABEL_34;
        }
      }

      if (v5 == 1 && !v14)
      {
        goto LABEL_17;
      }

LABEL_27:
      v29 = *v10;

      v30 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_195F3923C(0, *(v39 + 16) + 1, 1);
        v30 = v46;
      }

      v33 = *(v30 + 16);
      v32 = *(v30 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_195F3923C((v32 > 1), v33 + 1, 1);
        v30 = v46;
      }

      v6 = v11 + 1;
      *(v30 + 16) = v33 + 1;
      v39 = v30;
      v34 = (v30 + 32 * v33);
      v34[4] = v12;
      v34[5] = v13;
      v34[6] = v15;
      v34[7] = v14;
      v9 = v36;
      v3 = v43;
      if (v37 == v11)
      {
        goto LABEL_34;
      }
    }
  }

  v39 = MEMORY[0x1E69E7CC0];
LABEL_34:
  v35 = v39;
  if (!*(v39 + 16))
  {

    v35 = 0;
  }

  *a3 = v35;
}

BOOL IconStore.iconExists(for:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = v1[7];
  v8 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v7);
  (*(v8 + 8))(v34, v7, v8);
  v9 = v35;
  v10 = v36;
  v11 = __swift_project_boxed_opaque_existential_1(v34, v35);
  v27 = v3;
  v28 = v4;
  v29 = v5;
  v30 = v6;
  sub_195F92A8C(&v27, v11, v9, v10, &v31);
  v12 = v33;

  if (v12)
  {

    v13 = v2[12];
    v14 = v2[13];
    v15 = __swift_project_boxed_opaque_existential_1(v2 + 9, v13);
    v27 = v3;
    v28 = v4;
    v29 = v5;
    v30 = v6;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v17 = sub_195FA0DB8();
    v18 = *(v17 - 8);
    v19 = *(v18 + 64);
    MEMORY[0x1EEE9AC00](v17);
    v21 = &v27 - v20;
    sub_195F966AC(&v27, v15, v13, v14, &v27 - v20);
    v22 = *(AssociatedTypeWitness - 8);
    v23 = (*(v22 + 48))(v21, 1, AssociatedTypeWitness);
    v24 = v23 != 1;
    if (v23 == 1)
    {
      (*(v18 + 8))(v21, v17);
      v31 = 0u;
      v32 = 0u;
    }

    else
    {
      *(&v32 + 1) = AssociatedTypeWitness;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v31);
      (*(v22 + 32))(boxed_opaque_existential_1, v21, AssociatedTypeWitness);
    }

    sub_195F2DB00(&v31, &unk_1EAEED4B0, &qword_195FAC080);
  }

  else
  {
    v24 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  return v24;
}

uint64_t sub_195F966AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a4;
  v35 = a3;
  v36 = a2;
  v37 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v38 = AssociatedTypeWitness;
  v39 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v33 = &v28 - v9;
  v10 = sub_195FA0638();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_195FA0478();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = a1[1];
  v22 = a1[3];
  v29 = a1[2];
  v30 = v20;
  v31 = v22;
  v32 = v21;
  sub_195F37930(v20, v21, v29, v22);
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v44 = 0x80;
  v43 = 0;
  sub_195F2D344(v14);
  sub_195FA03C8();

  (*(v11 + 8))(v14, v10);
  v23 = v33;
  (*(v34 + 48))(v19, v35);
  (*(v16 + 8))(v19, v15);
  v24 = v38;
  v25 = v39;
  v26 = v37;
  (*(v39 + 32))(v37, v23, v38);
  return (*(v25 + 56))(v26, 0, 1, v24);
}

uint64_t IconStore.iconURL(for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_195FA0638();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v20 = *a1;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  if (IconStore.iconExists(for:)(&v20))
  {
    v19 = a2;
    sub_195F37930(v9, v10, v11, v12);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    BYTE4(v23) = 0x80;
    LODWORD(v23) = 0;
    sub_195F2D344(v8);
    v13 = v19;
    sub_195FA03C8();

    (*(v5 + 8))(v8, v4);
    v14 = sub_195FA0478();
    return (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v16 = sub_195FA0478();
    v17 = *(*(v16 - 8) + 56);

    return v17(a2, 1, 1, v16);
  }
}

uint64_t IconStore.icon(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v8[0] = *a1;
  v8[1] = v5;
  v9 = *(a1 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  IconStore.widgetIcon(for:completion:)(v8, sub_195F39B24, v6);
}

void sub_195F96E40(void *a1, void (*a2)(void))
{
  v3 = [a1 image];
  a2();
}

void sub_195F96EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(id), uint64_t a7)
{
  if (qword_1EAEEBBB0 != -1)
  {
    swift_once();
  }

  v12 = sub_195FA0678();
  __swift_project_value_buffer(v12, qword_1EAEF7250);

  v13 = sub_195FA0658();
  v14 = sub_195FA0CC8();

  v94 = a3;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&aBlock = v16;
    *v15 = 136446210;
    v17 = sub_195F60D0C(a1, a2, a3, a4);
    v19 = a7;
    v20 = sub_195EBD554(v17, v18, &aBlock);

    *(v15 + 4) = v20;
    a7 = v19;
    _os_log_impl(&dword_195EB2000, v13, v14, "Resolving icon for: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x19A8C5B70](v16, -1, -1);
    MEMORY[0x19A8C5B70](v15, -1, -1);
  }

  v96 = [objc_opt_self() imageDescriptorNamed_];
  [v96 setShape_];
  if (!a4)
  {
    v47 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
    v48 = sub_195FA0888();
    v49 = [v47 initWithBundleIdentifier_];

    v50 = [v49 prepareImageForDescriptor_];
    v24 = v94;
    if (v50)
    {
      v92 = v50;
      if (([v92 placeholder] & 1) == 0)
      {

        v74 = sub_195FA0658();
        v75 = sub_195FA0CC8();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          *&aBlock = v77;
          *v76 = 136446210;
          v78 = sub_195F60D0C(a1, a2, v94, 0);
          v80 = sub_195EBD554(v78, v79, &aBlock);

          *(v76 + 4) = v80;
          _os_log_impl(&dword_195EB2000, v74, v75, "Resolved locally generated icon for: %{public}s", v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v77);
          MEMORY[0x19A8C5B70](v77, -1, -1);
          MEMORY[0x19A8C5B70](v76, -1, -1);
        }

        v81 = [v92 CGImage];
        if (v81)
        {
          v82 = v81;
          [v92 size];
          v84 = v83;
          v86 = v85;
          [v92 scale];
          v88 = v87;
          [v92 pixelSize];
          v91 = [objc_allocWithZone(CHSWidgetIcon) initWithImage:v82 size:v84 scale:v86 pixelSize:{v88, v89, v90}];

          a6(v91);
          v69 = v92;
          goto LABEL_25;
        }

LABEL_30:
        __break(1u);
        return;
      }

      v51 = sub_195FA0658();
      v52 = sub_195FA0CC8();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *&aBlock = v54;
        *v53 = 136446210;
        v55 = sub_195F60D0C(a1, a2, v94, 0);
        v57 = sub_195EBD554(v55, v56, &aBlock);

        *(v53 + 4) = v57;
        _os_log_impl(&dword_195EB2000, v51, v52, "Resolved placeholder icon for: %{public}s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        MEMORY[0x19A8C5B70](v54, -1, -1);
        MEMORY[0x19A8C5B70](v53, -1, -1);
      }

      v58 = [v92 CGImage];
      if (v58)
      {
        v59 = v58;
        [v92 size];
        v61 = v60;
        v63 = v62;
        [v92 scale];
        v65 = v64;
        [v92 pixelSize];
        v68 = [objc_allocWithZone(CHSWidgetIcon) initWithImage:v59 size:v61 scale:v63 pixelSize:{v65, v66, v67}];

        a6(v68);
        goto LABEL_18;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_20:
    v70 = [objc_opt_self() genericApplicationIcon];
    v71 = swift_allocObject();
    v71[2] = a1;
    v71[3] = a2;
    v71[4] = v24;
    v71[5] = a4;
    v71[6] = v96;
    v71[7] = a6;
    v71[8] = a7;
    v100 = sub_195F99EDC;
    v101 = v71;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v98 = sub_195F97E50;
    v99 = &block_descriptor_37_0;
    v72 = _Block_copy(&aBlock);

    v73 = v96;

    [v70 getCGImageForImageDescriptor:v73 completion:v72];

    _Block_release(v72);
    return;
  }

  v21 = a5[12];
  v22 = a5[13];
  v23 = __swift_project_boxed_opaque_existential_1(a5 + 9, v21);
  *&aBlock = a1;
  *(&aBlock + 1) = a2;
  v24 = v94;
  v98 = v94;
  v99 = a4;
  v25 = sub_195F97844(&aBlock, v96, v23, v21, v22);
  if (!v25)
  {
    goto LABEL_20;
  }

  v26 = v25;
  v27 = [v25 prepareImageForDescriptor_];
  if (!v27)
  {

    goto LABEL_20;
  }

  v28 = v27;

  v29 = sub_195FA0658();
  v30 = sub_195FA0CC8();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&aBlock = v32;
    *v31 = 136446210;
    v33 = sub_195F60D0C(a1, a2, v94, a4);
    v35 = sub_195EBD554(v33, v34, &aBlock);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_195EB2000, v29, v30, "Resolved remotely generated icon for: %{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x19A8C5B70](v32, -1, -1);
    MEMORY[0x19A8C5B70](v31, -1, -1);
  }

  v36 = [v28 CGImage];
  if (!v36)
  {
    __break(1u);
    goto LABEL_29;
  }

  v37 = v36;
  [v28 size];
  v39 = v38;
  v41 = v40;
  [v28 scale];
  v43 = v42;
  [v28 pixelSize];
  v46 = [objc_allocWithZone(CHSWidgetIcon) initWithImage:v37 size:v39 scale:v41 pixelSize:{v43, v44, v45}];

  a6(v46);
LABEL_18:
  v69 = v96;
LABEL_25:
}

id sub_195F97844(__int128 *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a2;
  v37 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_195FA0DB8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v36 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v18 = &v36 - v17;
  v19 = *(a1 + 3);
  if (v19)
  {
    v20 = *(a1 + 2);
    v38 = *a1;
    v39 = v20;
    v40 = v19;
    sub_195F966AC(&v38, v37, a4, a5, v14);
    v21 = v15;
    if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
    {
      (*(v10 + 8))(v14, v9);
    }

    else
    {
      v22 = *(v15 + 32);
      v23 = v18;
      v22(v18, v14, AssociatedTypeWitness);
      v24 = (*(a5 + 56))(0, v18, a4, a5);
      if (v24)
      {
        v25 = v24;
        v26 = v36;
        [v36 setShouldApplyMask_];
        [v26 setShape_];
        v27 = v25;
        [v26 scale];
        v29 = [objc_allocWithZone(MEMORY[0x1E69A8988]) initWithCGImage:v27 scale:v28];

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDA90, qword_195FAC9A0);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_195FAC910;
        *(v30 + 32) = v29;
        v31 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
        sub_195EB4B30(0, &qword_1EAEEE678, 0x1E69A8988);
        v32 = v29;
        v33 = sub_195FA0B28();

        v34 = [v31 initWithImages_];

        (*(v21 + 8))(v23, AssociatedTypeWitness);
        return v34;
      }

      (*(v21 + 8))(v18, AssociatedTypeWitness);
    }
  }

  return 0;
}

void sub_195F97BC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(id))
{
  if (qword_1EAEEBBB0 != -1)
  {
    swift_once();
  }

  v13 = sub_195FA0678();
  __swift_project_value_buffer(v13, qword_1EAEF7250);

  v14 = sub_195FA0658();
  v15 = sub_195FA0CC8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v38 = v17;
    *v16 = 136446210;
    v18 = sub_195F60D0C(a2, a3, a4, a5);
    v20 = sub_195EBD554(v18, v19, &v38);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_195EB2000, v14, v15, "Resolved generic icon for: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x19A8C5B70](v17, -1, -1);
    MEMORY[0x19A8C5B70](v16, -1, -1);
  }

  [a6 size];
  v22 = v21;
  [a6 scale];
  v24 = v23;
  [a6 size];
  v26 = v25;
  [a6 scale];
  if (a1)
  {
    v28 = v26 * v27;
    v29 = v22 * v24;
    v30 = a1;
    [a6 size];
    v32 = v31;
    v34 = v33;
    [a6 scale];
    v37 = [objc_allocWithZone(CHSWidgetIcon) initWithImage:v30 size:v32 scale:v34 pixelSize:{v35, v29, v28}];

    a7(v37);
  }

  else
  {
    __break(1u);
  }
}

void sub_195F97E50(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_195F97EE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v30 = a6;
  v27 = a4;
  v28 = a2;
  v7 = v6;
  v10 = sub_195FA0778();
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_195FA07D8();
  v14 = *(v32 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = a1[1];
  v21 = a1[2];
  v20 = a1[3];
  v31 = *(v7 + 24);
  v22 = swift_allocObject();
  v22[2] = v18;
  v22[3] = v19;
  v22[4] = v21;
  v22[5] = v20;
  v24 = v28;
  v23 = v29;
  v22[6] = v7;
  v22[7] = v24;
  v22[8] = a3;
  aBlock[4] = v23;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = v30;
  v25 = _Block_copy(aBlock);

  sub_195FA0798();
  v34 = MEMORY[0x1E69E7CC0];
  sub_195F9A064(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v17, v13, v25);
  _Block_release(v25);
  (*(v33 + 8))(v13, v10);
  (*(v14 + 8))(v17, v32);
}

void sub_195F981E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void))
{
  if (qword_1EAEEBBB0 != -1)
  {
    swift_once();
  }

  v12 = sub_195FA0678();
  __swift_project_value_buffer(v12, qword_1EAEF7250);

  v13 = sub_195FA0658();
  v14 = sub_195FA0CC8();

  v50 = a1;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *&v52 = swift_slowAlloc();
    v16 = v52;
    *v15 = 136446210;
    v17 = sub_195F60D0C(a1, a2, a3, a4);
    v19 = a6;
    v20 = sub_195EBD554(v17, v18, &v52);

    *(v15 + 4) = v20;
    a6 = v19;
    _os_log_impl(&dword_195EB2000, v13, v14, "Resolving icon for: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x19A8C5B70](v16, -1, -1);
    MEMORY[0x19A8C5B70](v15, -1, -1);
  }

  v21 = [objc_opt_self() imageDescriptorNamed_];
  [v21 setShape_];
  if (!a4)
  {
    v34 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
    v35 = sub_195FA0888();
    v51 = [v34 initWithBundleIdentifier_];

    v36 = sub_195FA0658();
    v37 = sub_195FA0CC8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v52 = v39;
      *v38 = 136446210;
      v40 = sub_195F60D0C(v50, a2, a3, 0);
      v42 = sub_195EBD554(v40, v41, &v52);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_195EB2000, v36, v37, "Resolved locally generated icon for: %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x19A8C5B70](v39, -1, -1);
      v43 = v38;
LABEL_14:
      MEMORY[0x19A8C5B70](v43, -1, -1);
    }

LABEL_15:

    a6(v51);
    goto LABEL_16;
  }

  v22 = a5[12];
  v23 = a5[13];
  v24 = __swift_project_boxed_opaque_existential_1(a5 + 9, v22);
  *&v52 = v50;
  *(&v52 + 1) = a2;
  v53 = a3;
  v54 = a4;
  v25 = sub_195F97844(&v52, v21, v24, v22, v23);
  if (!v25)
  {
    v51 = [objc_opt_self() genericApplicationIcon];

    v36 = sub_195FA0658();
    v44 = sub_195FA0CC8();

    if (os_log_type_enabled(v36, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v52 = v46;
      *v45 = 136446210;
      v47 = sub_195F60D0C(v50, a2, a3, a4);
      v49 = sub_195EBD554(v47, v48, &v52);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_195EB2000, v36, v44, "Resolved generic icon for: %{public}s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x19A8C5B70](v46, -1, -1);
      v43 = v45;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v26 = v25;

  v51 = v26;
  v27 = sub_195FA0658();
  v28 = sub_195FA0CC8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v52 = v30;
    *v29 = 136446210;
    v31 = sub_195F60D0C(v50, a2, a3, a4);
    v33 = sub_195EBD554(v31, v32, &v52);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_195EB2000, v27, v28, "Resolved remotely generated icon for: %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x19A8C5B70](v30, -1, -1);
    MEMORY[0x19A8C5B70](v29, -1, -1);
  }

  a6(v51);
  v21 = v51;
LABEL_16:
}

uint64_t IconStore.iconSHA256Hash(for:)(__int128 *a1)
{
  v11 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = v1[7];
  v5 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v4);
  (*(v5 + 8))(v15, v4, v5);
  v6 = v16;
  v7 = v17;
  v8 = __swift_project_boxed_opaque_existential_1(v15, v16);
  v12 = v11;
  v13 = v2;
  v14 = v3;
  v9 = sub_195F98864(&v12, v8, v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  return v9;
}

uint64_t sub_195F98864(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v26 = a2;
  v5 = sub_195FA0638();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_195FA0478();
  v10 = *(v25 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_195F37930(*a1, a1[1], a1[2], a1[3]);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v31 = 0x80;
  v30 = 0;
  sub_195F2D344(v9);
  v14 = v23;
  sub_195FA03C8();
  v15 = v24;

  (*(v6 + 8))(v9, v5);
  v32._countAndFlagsBits = 0xD00000000000001CLL;
  v32._object = 0x8000000195FC3640;
  (*(v15 + 56))(&v27, v13, &v32, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], v14, v15);

  if (v28)
  {
    countAndFlagsBits = v27;
    (*(v10 + 8))(v13, v25);
  }

  else
  {
    v17 = v10;
    v18 = v25;
    v20 = URL.sha256()();
    if (v19)
    {

      (*(v17 + 8))(v13, v18);
      return 0;
    }

    else
    {
      countAndFlagsBits = v20._countAndFlagsBits;
      v27 = 0xD00000000000001CLL;
      v28 = 0x8000000195FC3640;
      v32 = v20;
      (*(v15 + 48))(v13, &v27, &v32, MEMORY[0x1E69E6158], MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], v14, v15);

      (*(v17 + 8))(v13, v18);
    }
  }

  return countAndFlagsBits;
}

uint64_t sub_195F98B8C(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE660, &qword_195FB0508);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = *a1;
  v12[1] = *(v8 + 16);
  *(swift_allocObject() + 16) = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE668, &qword_195FB0510);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE670, &qword_195FB0518);
  sub_195EB5F38(&qword_1EAEEBB90, &qword_1EAEEE668, &qword_195FB0510);
  sub_195FA0748();

  sub_195EB5F38(&unk_1EAEEBB98, &qword_1EAEEE660, &qword_195FB0508);
  v10 = sub_195FA0738();
  (*(v4 + 8))(v7, v3);
  return v10;
}

uint64_t sub_195F98DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(a1 + 8);
  v10[0] = *a1;
  v10[1] = v7;
  v11 = *(a1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  IconStore.widgetIcon(for:completion:)(v10, sub_195F39F04, v8);
}

uint64_t sub_195F98E98(__int128 *a1)
{
  v11 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 64);
  __swift_project_boxed_opaque_existential_1((*v1 + 32), v4);
  (*(v5 + 8))(v17, v4, v5);
  v6 = v18;
  v7 = v19;
  v8 = __swift_project_boxed_opaque_existential_1(v17, v18);
  v12 = v11;
  v13 = v2;
  v14 = v3;
  sub_195F92A8C(&v12, v8, v6, v7, v15);
  v9 = v16;

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return v9;
}

uint64_t sub_195F98F70(__int128 *a1)
{
  v11 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 64);
  __swift_project_boxed_opaque_existential_1((*v1 + 32), v4);
  (*(v5 + 8))(v15, v4, v5);
  v6 = v16;
  v7 = v17;
  v8 = __swift_project_boxed_opaque_existential_1(v15, v16);
  v12 = v11;
  v13 = v2;
  v14 = v3;
  v9 = sub_195F98864(&v12, v8, v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  return v9;
}

unint64_t sub_195F99034(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_195FA0A68();
  }

  __break(1u);
  return result;
}

uint64_t sub_195F99080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a7;
  v36 = a8;
  v34 = a3;
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v33 - v18;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v17);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v33 - v26;
  (*(v21 + 32))(&v33 - v26);
  (*(v12 + 32))(v19, a2, a6);
  v28 = *(a4 + 48);
  v29 = *(a4 + 52);
  v30 = swift_allocObject();
  (*(v21 + 16))(v25, v27, a5);
  (*(v12 + 16))(v16, v19, a6);
  v31 = sub_195F992E0(v25, v16, v34, v30, a5, a6, v35, v36);
  (*(v12 + 8))(v19, a6);
  (*(v21 + 8))(v27, a5);
  return v31;
}

uint64_t sub_195F992E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a3;
  v15 = sub_195FA0CF8();
  v32 = *(v15 - 8);
  v33 = v15;
  v16 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v31 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_195FA0CD8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v20 = sub_195FA07D8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v40 = a5;
  v41 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v39);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  v37 = a6;
  v38 = a8;
  v23 = __swift_allocate_boxed_opaque_existential_1(&v36);
  (*(*(a6 - 8) + 32))(v23, a2, a6);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE668, &qword_195FB0510);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *(a4 + 16) = sub_195FA06F8();
  sub_195EB4B30(0, &qword_1EAEEC590, 0x1E69E9610);
  sub_195FA0798();
  v35 = MEMORY[0x1E69E7CC0];
  sub_195F9A064(&qword_1EAEEC5A0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE3A0, &unk_195FAC790);
  sub_195EB5F38(&qword_1EAEEC5B0, &unk_1EAEEE3A0, &unk_195FAC790);
  sub_195FA0E38();
  (*(v32 + 104))(v31, *MEMORY[0x1E69E8090], v33);
  *(a4 + 24) = sub_195FA0D38();
  sub_195EB9104(&v39, a4 + 32);
  sub_195EB9104(&v36, a4 + 72);
  v27 = OBJC_IVAR____TtC14ChronoServices9IconStore_iconsFolderURL;
  v28 = sub_195FA0478();
  (*(*(v28 - 8) + 32))(a4 + v27, v34, v28);
  return a4;
}

uint64_t sub_195F99688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = a3;
    if (!a2)
    {
      goto LABEL_10;
    }

    v7 = a4;
    if (a3 != a1)
    {
LABEL_8:
      if (sub_195FA12B8())
      {
        goto LABEL_9;
      }

LABEL_10:

      return v6;
    }
  }

  else
  {
    if (!a2)
    {
      return 48;
    }

    v6 = a1;
    v7 = a2;
  }

  if (v7 != a2)
  {
    goto LABEL_8;
  }

LABEL_9:

  return 0;
}

uint64_t sub_195F99898()
{
  result = sub_195FA0478();
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

uint64_t objectdestroy_11Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_195F99A00(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a4;
  v12 = sub_195FA0638();
  v56 = *(v12 - 8);
  v13 = *(v56 + 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(*(AssociatedTypeWitness - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v47 - v19;
  v21 = *a3;
  v22 = *(a3 + 8);
  v23 = *(a3 + 16);
  v24 = *(a3 + 24) | (*(a3 + 28) << 32);
  v25 = *(a3 + 28) >> 6;
  v53 = a1;
  v55 = v21;
  v50 = v26;
  v51 = v18;
  v49 = v23;
  v48 = v22;
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 0xEB00000000676570;
      v28 = 0x6A2E63696C627570;
    }

    else
    {
      v52 = v12;
      v27 = 0xEA0000000000676ELL;
      v28 = 0x702E63696C627570;
      if (!(v23 | v22 | v21) && v24 == 0x8000000000)
      {
        v29 = &v47 - v19;
        sub_195FA0628();
        v28 = sub_195FA0608();
        v27 = v30;
        (*(v56 + 1))(v15, v52);
        v20 = v29;
        a1 = v53;
      }
    }
  }

  else
  {
    v27 = 0xED00007874612E65;
    v28 = 0x6C7070612E6D6F63;
  }

  v52 = a1 >> 62;
  if (a1 >> 62)
  {
    v45 = v20;
    v46 = sub_195FA0E88();
    v20 = v45;
    v31 = v46;
  }

  else
  {
    v31 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v20;
  (*(a6 + 24))(a2, v28, v27, v31, v63, a6);
  if (v6)
  {
  }

  v56 = v32;

  v47 = 0;
  if (v25 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED600, &unk_195FB05D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_195FAC070;
    v36 = *MEMORY[0x1E696DE28];
    *(inited + 32) = *MEMORY[0x1E696DE28];
    *(inited + 64) = MEMORY[0x1E69E7DE0];
    *(inited + 40) = v55;
    v37 = v36;
    v55 = sub_195F2D7F0(inited);
    swift_setDeallocating();
    result = sub_195F2DB00(inited + 32, &qword_1EAEED608, &qword_195FAC290);
    v34 = v53;
    if (v52)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v34 = v53;
  if (v25)
  {
    v55 = 0;
    if (v52)
    {
      goto LABEL_20;
    }

LABEL_17:
    v38 = a6;
    v39 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v39)
    {
      goto LABEL_21;
    }

LABEL_27:

    v44 = v56;
    (*(v38 + 40))(v56, v63, v38);
    return (*(v50 + 8))(v44, v51);
  }

  v57 = v55;
  v58 = v48;
  v59 = v49;
  v60 = WORD2(v49);
  v61 = v24;
  v62 = BYTE4(v24) & 1;
  result = sub_195F2CECC();
  v55 = result;
  if (!v52)
  {
    goto LABEL_17;
  }

LABEL_20:
  v38 = a6;
  result = sub_195FA0E88();
  v39 = result;
  if (!result)
  {
    goto LABEL_27;
  }

LABEL_21:
  if (v39 >= 1)
  {
    v40 = 0;
    v41 = *(v38 + 32);
    do
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x19A8C4520](v40, v34);
      }

      else
      {
        v42 = *(v34 + 8 * v40 + 32);
      }

      v43 = v42;
      ++v40;
      v41(v42, v56, v55, v63, v38);
    }

    while (v39 != v40);
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_195F99EF0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (((a4 >> 38) & 3) == 0)
  {
  }

  return result;
}

uint64_t sub_195F99F44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE680, &qword_195FB05E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_195F99FB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_195F9A014(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_195F9A064(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_195F9A0D4()
{
  result = sub_195FA0478();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_195F9A178()
{
  sub_195FA0478();
  if (v0 <= 0x3F)
  {
    sub_195F9A1FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_195F9A1FC()
{
  if (!qword_1EAEEBB78)
  {
    v0 = sub_195FA0DB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAEEBB78);
    }
  }
}

unint64_t KeybagLockState.description.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6E776F6E6B6E75;
    v7 = 0x64656B636F6CLL;
    if (v1 != 2)
    {
      v7 = 0x676E696B636F6CLL;
    }

    if (*v0)
    {
      v6 = 0x64656B636F6C6E75;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x5065636172476E69;
    v3 = 0x7472657373416E69;
    if (v1 != 7)
    {
      v3 = 0x6C6E556F69426E69;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x64656C6261736964;
    if (v1 != 4)
    {
      v4 = 0xD000000000000010;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

ChronoServices::KeybagLockState::LockPolicy_optional __swiftcall KeybagLockState.LockPolicy.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t KeybagLockState.hashValue.getter()
{
  v1 = *v0;
  sub_195FA1398();
  MEMORY[0x19A8C4970](v1);
  return sub_195FA13E8();
}

unint64_t sub_195F9A498()
{
  result = qword_1EAEEE6A0;
  if (!qword_1EAEEE6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE6A0);
  }

  return result;
}

unint64_t sub_195F9A4F0()
{
  result = qword_1EAEEE6A8;
  if (!qword_1EAEEE6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE6A8);
  }

  return result;
}

ChronoServices::InteractionAuthenticationPolicy_optional __swiftcall InteractionAuthenticationPolicy.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_195F9A568()
{
  result = qword_1EAEEE6B0;
  if (!qword_1EAEEE6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE6B0);
  }

  return result;
}

uint64_t sub_195F9A5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000195FC36D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_195FA12B8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_195F9A68C(uint64_t a1)
{
  v2 = sub_195F9A8B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F9A6C8(uint64_t a1)
{
  v2 = sub_195F9A8B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ControlsDidChangeXPCData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE6B8, &qword_195FB0910);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F9A8B0();

  sub_195FA1468();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE6C0, &qword_195FB0918);
  sub_195F9AB08(&qword_1EAEEBB70, &qword_1EAEEBE78);
  sub_195FA1238();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_195F9A8B0()
{
  result = qword_1EAEEC330;
  if (!qword_1EAEEC330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC330);
  }

  return result;
}

unint64_t sub_195F9A904()
{
  result = qword_1EAEEC310;
  if (!qword_1EAEEC310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAEEC310);
  }

  return result;
}

uint64_t ControlsDidChangeXPCData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE6C8, &qword_195FB0920);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F9A8B0();
  sub_195FA1448();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE6C0, &qword_195FB0918);
    sub_195F9AB08(&qword_1EAEEC270, &qword_1EAEEC318);
    sub_195FA1178();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_195F9AB08(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAEEE6C0, &qword_195FB0918);
    sub_195F9AB90(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_195F9AB90(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_195F9A904();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_195F9AC28()
{
  result = qword_1EAEEE6D0;
  if (!qword_1EAEEE6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE6D0);
  }

  return result;
}

unint64_t sub_195F9AC80()
{
  result = qword_1EAEEC320;
  if (!qword_1EAEEC320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC320);
  }

  return result;
}

unint64_t sub_195F9ACD8()
{
  result = qword_1EAEEC328;
  if (!qword_1EAEEC328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC328);
  }

  return result;
}

uint64_t DeviceClass.hashValue.getter()
{
  v1 = *v0;
  sub_195FA1398();
  MEMORY[0x19A8C4970](v1);
  return sub_195FA13E8();
}

unint64_t sub_195F9ADD0()
{
  result = qword_1EAEEE6D8;
  if (!qword_1EAEEE6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE6D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceClass(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_195F9B028(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if (result)
  {
    v3 = result;
    v4 = sub_195FA08B8();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_195F9B098(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3(*v3);
  if (result)
  {
    v5 = result;
    v6 = sub_195FA08B8();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FileManagerExtendedAttributeKey.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_195F9B154@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

unint64_t sub_195F9B164()
{
  result = qword_1EAEEE6E0;
  if (!qword_1EAEEE6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE6E0);
  }

  return result;
}

uint64_t sub_195F9B1B8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_195FA1398();
  sub_195FA0958();
  return sub_195FA13E8();
}

uint64_t sub_195F9B204()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_195FA0958();
}

uint64_t sub_195F9B20C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_195FA1398();
  sub_195FA0958();
  return sub_195FA13E8();
}

uint64_t sub_195F9B254(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_195FA12B8();
  }
}

unint64_t sub_195F9B288()
{
  result = qword_1EAEEE6E8;
  if (!qword_1EAEEE6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE6E8);
  }

  return result;
}

unint64_t sub_195F9B2E0()
{
  result = qword_1EAEEE6F0;
  if (!qword_1EAEEE6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE6F0);
  }

  return result;
}

void sub_195F9B590(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_195F9B5FC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_195FA0318();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id sub_195F9B660()
{
  result = [objc_allocWithZone(CHSWidgetService) init];
  qword_1EAEEC248 = result;
  return result;
}

void __swiftcall CHSWidgetService.init()(CHSWidgetService *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id static CHSWidgetService.shared.getter()
{
  if (qword_1EAEEC240 != -1)
  {
    swift_once();
  }

  v1 = qword_1EAEEC248;

  return v1;
}

id CHSWidgetService.init()()
{
  v1 = OBJC_IVAR___CHSWidgetService_connection;
  *&v0[v1] = [objc_opt_self() sharedInstance];
  v3.receiver = v0;
  v3.super_class = CHSWidgetService;
  return objc_msgSendSuper2(&v3, sel_init);
}

unint64_t type metadata accessor for CHSWidgetService()
{
  result = qword_1EAEEE700;
  if (!qword_1EAEEE700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAEEE700);
  }

  return result;
}

uint64_t sub_195F9BA00(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF797469746E6564;
  v3 = 0x496C6F72746E6F63;
  v4 = a1;
  if (a1 <= 2u)
  {
    v11 = 0x696C6F5068737570;
    v12 = 0xEA00000000007963;
    if (a1 == 1)
    {
      v11 = 0x496C6F72746E6F63;
      v12 = 0xEF797469746E6564;
    }

    if (a1)
    {
      v9 = v11;
    }

    else
    {
      v9 = 0xD000000000000010;
    }

    if (v4)
    {
      v10 = v12;
    }

    else
    {
      v10 = 0x8000000195FBF7D0;
    }
  }

  else
  {
    v5 = 0x8000000195FBF830;
    v6 = 0xD000000000000014;
    if (a1 != 5)
    {
      v6 = 0xD000000000000015;
      v5 = 0x8000000195FBF850;
    }

    v7 = 0xE800000000000000;
    v8 = 0x6E6F697461636F6CLL;
    if (a1 != 3)
    {
      v8 = 0xD00000000000001CLL;
      v7 = 0x8000000195FBF810;
    }

    if (a1 <= 4u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 4)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x8000000195FBF7D0;
      if (v9 != 0xD000000000000010)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    if (a2 != 1)
    {
      v2 = 0xEA00000000007963;
      if (v9 != 0x696C6F5068737570)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x8000000195FBF830;
        if (v9 != 0xD000000000000014)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v2 = 0x8000000195FBF850;
        if (v9 != 0xD000000000000015)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_36;
    }

    if (a2 == 3)
    {
      v2 = 0xE800000000000000;
      if (v9 != 0x6E6F697461636F6CLL)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v2 = 0x8000000195FBF810;
    v3 = 0xD00000000000001CLL;
  }

  if (v9 != v3)
  {
LABEL_39:
    v13 = sub_195FA12B8();
    goto LABEL_40;
  }

LABEL_36:
  if (v10 != v2)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_195F9BC38(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C6F72746E6F63;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000017;
    }

    else
    {
      v4 = 0x6E65644974736F68;
    }

    if (v3 == 2)
    {
      v5 = 0x8000000195FBF990;
    }

    else
    {
      v5 = 0xEE00726569666974;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x54746E65746E6F63;
    }

    else
    {
      v4 = 0x6C6F72746E6F63;
    }

    if (v3)
    {
      v5 = 0xEB00000000657079;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xD000000000000017;
  v8 = 0x8000000195FBF990;
  if (a2 != 2)
  {
    v7 = 0x6E65644974736F68;
    v8 = 0xEE00726569666974;
  }

  if (a2)
  {
    v2 = 0x54746E65746E6F63;
    v6 = 0xEB00000000657079;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_195FA12B8();
  }

  return v11 & 1;
}

uint64_t sub_195F9BDA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000736D6574;
  v3 = 0x496C6F72746E6F63;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000015;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (v4 == 2)
    {
      v6 = 0x8000000195FBF790;
    }

    else
    {
      v6 = 0x8000000195FBF7B0;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 0x496C6F72746E6F63;
    }

    if (v4)
    {
      v6 = 0x8000000195FBF770;
    }

    else
    {
      v6 = 0xEC000000736D6574;
    }
  }

  v7 = 0xD000000000000015;
  v8 = 0x8000000195FBF7B0;
  if (a2 == 2)
  {
    v8 = 0x8000000195FBF790;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (a2)
  {
    v3 = 0xD000000000000014;
    v2 = 0x8000000195FBF770;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_195FA12B8();
  }

  return v11 & 1;
}

uint64_t sub_195F9BED4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007965;
  v3 = 0x4B6E6F6973736573;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x696C696269736976;
    }

    else
    {
      v5 = 0xD000000000000014;
    }

    if (v4 == 2)
    {
      v6 = 0xEA00000000007974;
    }

    else
    {
      v6 = 0x8000000195FBF9E0;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x797469726F697270;
    }

    else
    {
      v5 = 0x4B6E6F6973736573;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEA00000000007965;
    }
  }

  v7 = 0x696C696269736976;
  v8 = 0x8000000195FBF9E0;
  if (a2 == 2)
  {
    v8 = 0xEA00000000007974;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (a2)
  {
    v3 = 0x797469726F697270;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_195FA12B8();
  }

  return v11 & 1;
}

uint64_t sub_195F9C018(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746567646977;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x746567646977;
    }

    else
    {
      v4 = 0x726765726F467369;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEC000000646E756FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 0xD000000000000018;
    }

    if (v3)
    {
      v5 = 0x8000000195FBF8F0;
    }

    else
    {
      v5 = 0x8000000195FBF8D0;
    }
  }

  v6 = 0xE600000000000000;
  if (a2 != 2)
  {
    v2 = 0x726765726F467369;
    v6 = 0xEC000000646E756FLL;
  }

  v7 = 0xD000000000000018;
  v8 = 0x8000000195FBF8F0;
  if (a2)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v8 = 0x8000000195FBF8D0;
  }

  if (a2 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v2;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_195FA12B8();
  }

  return v11 & 1;
}

uint64_t sub_195F9C170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a2 | a4) == 0;
  if (!a2 || !a4)
  {
    return v4;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  return sub_195FA12B8();
}

uint64_t sub_195F9C234(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_195F9C2C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 40);
  v6 = *(v4 + 48);
  *(v4 + 40) = v2;
  *(v4 + 48) = v3;
  sub_195F40008(v2, v3);
  return sub_195EC5A34(v5, v6);
}

uint64_t sub_195F9C334()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  sub_195F40008(v1, *(v0 + 48));
  return v1;
}

uint64_t sub_195F9C384(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_195EC5A34(v5, v6);
}

uint64_t ControlSessionSubscriptionRequest.__allocating_init(sessionKey:priority:visibility:environmentModifiers:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = swift_allocObject();
  v11 = *a2;
  *(v10 + 40) = xmmword_195FAD860;
  *(v10 + 16) = a1;
  *(v10 + 24) = v11;
  *(v10 + 32) = a3;
  swift_beginAccess();
  v12 = *(v10 + 40);
  v13 = *(v10 + 48);
  sub_195F40008(a4, a5);
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  sub_195EC5A34(v12, v13);
  sub_195EC5A34(a4, a5);
  return v10;
}

uint64_t ControlSessionSubscriptionRequest.init(sessionKey:priority:visibility:environmentModifiers:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = *a2;
  *(v5 + 40) = xmmword_195FAD860;
  *(v5 + 16) = a1;
  *(v5 + 24) = v8;
  *(v5 + 32) = a3;
  swift_beginAccess();
  v9 = *(v5 + 40);
  v10 = *(v5 + 48);
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  sub_195F40008(a4, a5);
  sub_195EC5A34(v9, v10);
  sub_195EC5A34(a4, a5);
  return v5;
}

uint64_t sub_195F9C554()
{
  v1 = *v0;
  sub_195FA1398();
  sub_195FA0958();

  return sub_195FA13E8();
}

uint64_t sub_195F9C620()
{
  *v0;
  *v0;
  *v0;
  sub_195FA0958();
}

uint64_t sub_195F9C6D8()
{
  v1 = *v0;
  sub_195FA1398();
  sub_195FA0958();

  return sub_195FA13E8();
}

uint64_t sub_195F9C7A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_195F9CCB4();
  *a2 = result;
  return result;
}

void sub_195F9C7D0(unint64_t *a1@<X8>)
{
  v2 = 0x4B6E6F6973736573;
  v3 = 0xEA00000000007974;
  v4 = 0x696C696269736976;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000014;
    v3 = 0x8000000195FBF9E0;
  }

  v5 = 0xE800000000000000;
  if (*v1)
  {
    v2 = 0x797469726F697270;
  }

  else
  {
    v5 = 0xEA00000000007965;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  *a1 = v6;
  a1[1] = v7;
}

unint64_t sub_195F9C858()
{
  v1 = 0x4B6E6F6973736573;
  v2 = 0x696C696269736976;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0x797469726F697270;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_195F9C8DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_195F9CCB4();
  *a1 = result;
  return result;
}

uint64_t sub_195F9C904(uint64_t a1)
{
  v2 = sub_195F9D034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F9C940(uint64_t a1)
{
  v2 = sub_195F9D034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_195F9C994(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE708, &qword_195FB0E50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F9D034();
  sub_195FA1468();
  v19 = *(v3 + 16);
  v18 = 0;
  type metadata accessor for ControlSessionKey();
  sub_195F9D3E8(&qword_1EAEEBDB8);
  sub_195FA1238();
  if (!v2)
  {
    swift_beginAccess();
    v18 = *(v3 + 24);
    v17 = 1;
    sub_195F9D088();
    sub_195FA1238();
    swift_beginAccess();
    v11 = *(v3 + 32);
    v17 = 2;
    sub_195FA1258();
    swift_beginAccess();
    v12 = *(v3 + 48);
    v15 = *(v3 + 40);
    v16 = v12;
    v14[7] = 3;
    sub_195F40008(v15, v12);
    sub_195F3A7B0();
    sub_195FA11E8();
    sub_195EC5A34(v15, v16);
  }

  return (*(v6 + 8))(v9, v5);
}

void *ControlSessionSubscriptionRequest.deinit()
{
  v1 = v0[2];

  sub_195EC5A34(v0[5], v0[6]);
  return v0;
}

uint64_t ControlSessionSubscriptionRequest.__deallocating_deinit()
{
  v1 = v0[2];

  sub_195EC5A34(v0[5], v0[6]);

  return swift_deallocClassInstance();
}

uint64_t sub_195F9CC64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_195F9CD00(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_195F9CCB4()
{
  v0 = sub_195FA10D8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_195F9CD00(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE718, &unk_195FB1068);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F9D034();
  sub_195FA1448();
  if (!v1)
  {
    type metadata accessor for ControlSessionKey();
    v24 = 0;
    sub_195F9D3E8(&qword_1EAEEBC18);
    sub_195FA1178();
    v10 = v22;
    v24 = 1;
    sub_195F9D42C();
    sub_195FA1178();
    v11 = v22;
    v24 = 3;
    sub_195F3A9DC();
    sub_195FA1128();
    v13 = v22;
    v21 = v23;
    LOBYTE(v22) = 2;
    v14 = sub_195FA1198();
    v15 = *(v4 + 8);
    v20 = v14;
    v15(v7, v3);
    type metadata accessor for ControlSessionSubscriptionRequest();
    v9 = swift_allocObject();
    *(v9 + 40) = xmmword_195FAD860;
    *(v9 + 16) = v10;
    *(v9 + 24) = v11;
    *(v9 + 32) = v20;
    swift_beginAccess();
    v16 = *(v9 + 40);
    v17 = *(v9 + 48);
    v18 = v21;
    sub_195F40008(v13, v21);
    *(v9 + 40) = v13;
    *(v9 + 48) = v18;
    sub_195EC5A34(v16, v17);
    sub_195EC5A34(v13, v18);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

unint64_t sub_195F9D034()
{
  result = qword_1EAEEBEF8;
  if (!qword_1EAEEBEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBEF8);
  }

  return result;
}

unint64_t sub_195F9D088()
{
  result = qword_1EAEEBDC8;
  if (!qword_1EAEEBDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBDC8);
  }

  return result;
}

unint64_t sub_195F9D2E4()
{
  result = qword_1EAEEE710;
  if (!qword_1EAEEE710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE710);
  }

  return result;
}

unint64_t sub_195F9D33C()
{
  result = qword_1EAEEBEE8;
  if (!qword_1EAEEBEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBEE8);
  }

  return result;
}

unint64_t sub_195F9D394()
{
  result = qword_1EAEEBEF0;
  if (!qword_1EAEEBEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBEF0);
  }

  return result;
}

uint64_t sub_195F9D3E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ControlSessionKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_195F9D42C()
{
  result = qword_1EAEEBC28;
  if (!qword_1EAEEBC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBC28);
  }

  return result;
}

uint64_t DeviceScopedIdentity.init(id:deviceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for DeviceScopedIdentity();
  v9 = (a5 + *(result + 60));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t DeviceScopedIdentity.deviceID.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 60));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t DeviceScopedIdentity.deviceID.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 60));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*DeviceScopedIdentity.deviceID.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 60);
  return result;
}

uint64_t sub_195F9D734(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_195F9D7A4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  DeviceScopedIdentity.init(rawValue:)(*a1, a1[1], a2[2], a2[3], a2[4], a2[5], a2[6]);
  v5 = *(*(a2 - 1) + 56);

  return v5(a3, 0, 1, a2);
}

int *DeviceScopedIdentity.init(stringLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33[0] = a1;
  v33[1] = a2;
  sub_195F3A624();
  v5 = sub_195FA0C38();

  v6 = *(v5 + 16);
  if (v6)
  {
    v33[0] = MEMORY[0x1E69E7CC0];
    sub_195F391DC(0, v6, 0);
    v7 = v33[0];
    v8 = (v5 + 56);
    do
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;

      v13 = MEMORY[0x19A8C3EF0](v9, v10, v11, v12);
      v15 = v14;

      v33[0] = v7;
      v17 = *(v7 + 16);
      v16 = *(v7 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_195F391DC((v16 > 1), v17 + 1, 1);
        v7 = v33[0];
      }

      *(v7 + 16) = v17 + 1;
      v18 = v7 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_195FAC070;
  v20 = sub_195EB5F80();
  v21 = sub_195EB6074(v20);
  v23 = v22;

  *(v19 + 32) = v21;
  *(v19 + 40) = v23;
  v33[0] = v19;

  sub_195EB6214(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
  sub_195EB5ED4();
  v25 = sub_195FA0828();
  v27 = v26;

  v28._countAndFlagsBits = v25;
  v28._object = v27;
  Token.init(rawValue:)(v28);
  return sub_195EB6CE8(v33, a3, a4, a5);
}

int *sub_195F9DAA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[4];
  v4 = a2[5];
  v5 = a2[6];
  return DeviceScopedIdentity.init(stringLiteral:)(*a1, a1[1], a2[2], a2[3], a3);
}

void *sub_195F9DB38@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[2];
  if (v3 == 1)
  {
    v5 = result[4];
    v4 = result[5];

    v6 = 0;
    v7 = 0;
LABEL_5:
    *a2 = v5;
    a2[1] = v4;
    a2[2] = v6;
    a2[3] = v7;
    return result;
  }

  if (v3 == 2)
  {
    v6 = result[4];
    v7 = result[5];
    v5 = result[6];
    v4 = result[7];

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_195F9DBD0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR___CHSIconResolver_iconStore);

  v10._countAndFlagsBits = a1;
  v10._object = a2;
  Token.init(rawValue:)(v10);
  sub_195F9DB38(v14[0], v14);
  v13[0] = v14[0];
  v13[1] = v14[1];
  v13[2] = v14[2];
  v13[3] = v14[3];
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;

  IconStore.widgetIcon(for:completion:)(v13, sub_195F9E0FC, v11);
}

uint64_t sub_195F9DDDC(char *a1, int a2, int a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(void *, uint64_t, uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = sub_195FA08B8();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = *&a1[OBJC_IVAR___CHSIconResolver_iconStore];
  v16 = a1;
  v17._countAndFlagsBits = v11;
  v17._object = v13;
  Token.init(rawValue:)(v17);
  sub_195F9DB38(v21[0], v21);
  v19[0] = v21[0];
  v19[1] = v21[1];
  v20 = v22;
  a7(v19, a6, v14);
}

uint64_t sub_195F9DEE4(uint64_t a1)
{
  v3 = (a1 + OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = (a1 + OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier);
    swift_beginAccess();
    v8 = *v6;
    v7 = v6[1];
    v9 = *(v1 + OBJC_IVAR___CHSIconResolver_iconStore);
    v10 = v9[7];
    v11 = v9[8];
    __swift_project_boxed_opaque_existential_1(v9 + 4, v10);
    v12 = *(v11 + 8);

    v12(v20, v10, v11);
    v13 = v21;
    v14 = v22;
    v15 = __swift_project_boxed_opaque_existential_1(v20, v21);
    v17[0] = v5;
    v17[1] = v4;
    v17[2] = v8;
    v17[3] = v7;
    sub_195F92A8C(v17, v15, v13, v14, v18);

    v4 = v19;

    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  return v4;
}

void apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable()
{
  __assert_rtn("EndTable", "flatbuffers.h", 1450, "nested");
}

{
  __assert_rtn("EndTable", "flatbuffers.h", 1476, "!ReadScalar<voffset_t>(buf_.data() + field_location->id)");
}

{
  __assert_rtn("scratch_data", "flatbuffers.h", 1021, "buf_");
}

{
  __assert_rtn("scratch_end", "flatbuffers.h", 1026, "scratch_");
}

{
  __assert_rtn("data", "flatbuffers.h", 1016, "cur_");
}

{
  __assert_rtn("EndTable", "flatbuffers.h", 1465, "table_object_size < 0x10000");
}

void apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested()
{
  __assert_rtn("NotNested", "flatbuffers.h", 1434, "!num_field_loc");
}

{
  __assert_rtn("NotNested", "flatbuffers.h", 1432, "!nested");
}

void apple::aiml::flatbuffers2::vector_downward::ensure_space()
{
  __assert_rtn("ensure_space", "flatbuffers.h", 992, "size() < FLATBUFFERS_MAX_BUFFER_SIZE");
}

{
  __assert_rtn("ensure_space", "flatbuffers.h", 988, "cur_ >= scratch_ && scratch_ >= buf_");
}

void _CHSSystemVersionStringToCompareAgainstFromSDKAndPlatform_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218240;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&dword_195EB2000, log, OS_LOG_TYPE_ERROR, "Unable to find corresponding system version for version %lu on platform %lu", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}
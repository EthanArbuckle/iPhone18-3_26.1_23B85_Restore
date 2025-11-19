uint64_t sub_1DAFE2320()
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);

  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 32);
  *v3 = *(v0 + 16);
  *(v3 + 16) = v6;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v7 = *(v0 + 8);
  v8 = *MEMORY[0x1E69E9840];

  return v7();
}

uint64_t sub_1DAFE23E0()
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = v0[24];
  v1 = v0[25];

  v3 = v0[28];
  v4 = v0[1];
  v5 = *MEMORY[0x1E69E9840];

  return v4();
}

uint64_t sub_1DAFE2478()
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);

  v5 = *(v0 + 256);
  v6 = *(v0 + 8);
  v7 = *MEMORY[0x1E69E9840];

  return v6();
}

uint64_t sub_1DAFE2540(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B8, &unk_1DB0AE9E8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v23 - v15;
  (*(v12 + 16))(&v23 - v15, a1, v11);
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  (*(v12 + 32))(v18 + v17, v16, v11);
  v19 = (v18 + ((v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = a5;
  v19[1] = a6;
  aBlock[4] = sub_1DAFE421C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAFE2BCC;
  aBlock[3] = &block_descriptor_11;
  v20 = _Block_copy(aBlock);

  v21 = [v24 startSecureElementManagerSessionWithPriority_];
  _Block_release(v20);
  return swift_unknownObjectRelease();
}

void sub_1DAFE2750(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v53 = *MEMORY[0x1E69E9840];
  if (a1 && !a2)
  {
    swift_beginAccess();
    v51 = *(a3 + 16);
    swift_beginAccess();
    v50 = *(a4 + 16);
    v12 = v50;
    v13 = a1;
    v14 = [v13 getCryptogram:&v51 challengeResponse:&v50];
    v15 = v50;
    *(a4 + 16) = v50;
    v16 = v15;
    swift_endAccess();
    v17 = v51;
    v18 = *(a3 + 16);
    *(a3 + 16) = v51;
    v19 = v17;
    swift_endAccess();

    if (v14)
    {
      swift_beginAccess();
      v20 = *(a3 + 16);
      if (v20)
      {
        swift_beginAccess();
        v21 = *(a4 + 16);
        if (v21)
        {
          v22 = v20;
          v23 = v21;
          v24 = sub_1DB09D034();
          v26 = v25;
          v27 = v23;
          v28 = sub_1DB09D034();
          v30 = v29;

          *&v45 = v24;
          *(&v45 + 1) = v26;
          v46 = v28;
          v47 = v30;
          v48 = a6;
          v49 = a7;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B8, &unk_1DB0AE9E8);
          sub_1DB09D9B4();

          [v13 endSession];
          goto LABEL_19;
        }
      }
    }

    [v13 endSession];
  }

  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v31 = MEMORY[0x1E69E7CC0];
  v32 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  if (*(v32 + 16))
  {
    v33 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
    if (v34)
    {
      sub_1DAF409DC(*(v32 + 56) + 32 * v33, &v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      if (swift_dynamicCast())
      {
        v31 = *&v52[0];
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = sub_1DAF72EC0(0, *(v31 + 2) + 1, 1, v31);
  }

  v36 = *(v31 + 2);
  v35 = *(v31 + 3);
  if (v36 >= v35 >> 1)
  {
    v31 = sub_1DAF72EC0((v35 > 1), v36 + 1, 1, v31);
  }

  *(v31 + 2) = v36 + 1;
  v37 = &v31[56 * v36];
  *(v37 + 4) = 0xD00000000000001CLL;
  *(v37 + 5) = 0x80000001DB0C83F0;
  *(v37 + 6) = 0xD000000000000029;
  *(v37 + 7) = 0x80000001DB0C8360;
  *(v37 + 8) = 0xD000000000000012;
  *(v37 + 9) = 0x80000001DB0C8390;
  *(v37 + 10) = 165;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *&v45 = v31;
  sub_1DAF40D20(&v45, v52);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B11C(v52, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
  v39 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v40 = sub_1DB09D6B4();
  v41 = sub_1DB09D604();
  v42 = [v39 initWithDomain:v40 code:-1119 userInfo:v41];

  *&v45 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B8, &unk_1DB0AE9E8);
  sub_1DB09D9A4();
LABEL_19:
  v43 = *MEMORY[0x1E69E9840];
}

void sub_1DAFE2BCC(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1DAFE2C58()
{
  v5 = *MEMORY[0x1E69E9840];
  *(v1 + 120) = v0;
  v2 = swift_task_alloc();
  *(v1 + 128) = v2;
  *v2 = v1;
  v2[1] = sub_1DAFE2D14;
  v3 = *MEMORY[0x1E69E9840];

  return sub_1DAFE1478();
}

uint64_t sub_1DAFE2D14(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(*v2 + 128);
  v4 = *v2;
  v4[17] = a1;

  if (v1)
  {
    v5 = v4[1];
    v6 = *MEMORY[0x1E69E9840];

    return v5();
  }

  else
  {
    v8 = v4[15];
    v9 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DFA0](sub_1DAFE2E98, v8, 0);
  }
}

uint64_t sub_1DAFE2E98(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = v2[17];
  v4 = v2[15];
  v2[10] = 0;
  v5 = sub_1DAFE44DC(&qword_1EE301480, a2, type metadata accessor for DeviceInformation);
  v6 = swift_task_alloc();
  v2[18] = v6;
  *(v6 + 16) = v2 + 10;
  *(v6 + 24) = v3;
  v7 = *(MEMORY[0x1E69E8920] + 4);
  v8 = swift_task_alloc();
  v2[19] = v8;
  v9 = sub_1DAF4062C(0, &unk_1EE300990, 0x1E69B3770);
  *v8 = v2;
  v8[1] = sub_1DAFE3024;
  v10 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DE38](v2 + 11, v4, v5, 0x4553657461647075, 0xED00002928734449, sub_1DAFE4638, v6, v9);
}

uint64_t sub_1DAFE3024()
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 152);
  v12 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = *(v2 + 120);
    v5 = *MEMORY[0x1E69E9840];
    v6 = sub_1DAFE352C;
  }

  else
  {
    v7 = *(v2 + 144);
    v8 = *(v2 + 120);

    v9 = *MEMORY[0x1E69E9840];
    v6 = sub_1DAFE3198;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, 0);
}

uint64_t sub_1DAFE3198()
{
  v40 = *MEMORY[0x1E69E9840];
  *(v0 + 96) = 0;
  v1 = v0 + 96;
  v2 = *(v0 + 88);
  v3 = [*(v0 + 136) cachedEmbeddedSecureElementSerialNumber_];
  v4 = *(v0 + 96);
  if (!v3)
  {
    v29 = v4;
    sub_1DB09CE74();

LABEL_17:
    swift_willThrow();

    v31 = *(v0 + 136);
    if (*(v0 + 80))
    {
      [*(v0 + 80) endSession];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v32 = *(v0 + 8);
    v33 = *MEMORY[0x1E69E9840];
    goto LABEL_25;
  }

  v5 = *(v0 + 136);
  v6 = *(v0 + 120);
  v7 = v3;
  v8 = sub_1DB09D6C4();
  v10 = v9;
  v11 = v4;

  v12 = *(v6 + 144);
  *(v6 + 136) = v8;
  *(v6 + 144) = v10;

  *(v0 + 104) = 0;
  v13 = [v5 secureElementsWithError_];
  v14 = *(v0 + 104);
  if (!v13)
  {
    v30 = v14;
    sub_1DB09CE74();

    goto LABEL_17;
  }

  v39 = v2;
  v15 = v13;
  v16 = sub_1DB09D934();
  v17 = v14;

  v18 = *(v16 + 16);
  if (v18)
  {
    v38 = v0;
    v19 = MEMORY[0x1E69E7CC0];
    v20 = v16 + 32;
    do
    {
      sub_1DAF409DC(v20, v1 - 80);
      sub_1DAF409DC(v1 - 80, v1 - 48);
      sub_1DAF4062C(0, &unk_1EE3009B8, 0x1E69B3768);
      if (swift_dynamicCast() && (v21 = *(v1 + 16), v22 = [v21 serialNumber], v21, v22))
      {
        v23 = sub_1DB09D6C4();
        v25 = v24;

        __swift_destroy_boxed_opaque_existential_1Tm((v1 - 80));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1DAF72DB4(0, *(v19 + 2) + 1, 1, v19);
        }

        v27 = *(v19 + 2);
        v26 = *(v19 + 3);
        if (v27 >= v26 >> 1)
        {
          v19 = sub_1DAF72DB4((v26 > 1), v27 + 1, 1, v19);
        }

        *(v19 + 2) = v27 + 1;
        v28 = &v19[16 * v27];
        *(v28 + 4) = v23;
        *(v28 + 5) = v25;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v1 - 80));
      }

      v20 += 32;
      --v18;
    }

    while (v18);

    v0 = v38;
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
  }

  v34 = *(v0 + 120);
  v35 = *(v34 + 128);
  *(v34 + 128) = v19;

  if (*(v0 + 80))
  {
    [*(v0 + 80) endSession];
    swift_unknownObjectRelease();
  }

  v32 = *(v0 + 8);
  v36 = *MEMORY[0x1E69E9840];
LABEL_25:

  return v32();
}

uint64_t sub_1DAFE352C()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 144);

  v2 = *(v0 + 136);
  if (*(v0 + 80))
  {
    [*(v0 + 80) endSession];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v3 = *(v0 + 160);
  v4 = *(v0 + 8);
  v5 = *MEMORY[0x1E69E9840];

  return v4();
}

uint64_t sub_1DAFE35F8(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0F0E0, &unk_1DB0AEA20);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = aBlock - v10;
  (*(v7 + 16))(aBlock - v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v11, v6);
  aBlock[4] = sub_1DAFE4640;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAFE2BCC;
  aBlock[3] = &block_descriptor_66;
  v14 = _Block_copy(aBlock);

  v15 = [a3 startSecureElementManagerSession_];
  _Block_release(v14);
  v16 = *a2;
  *a2 = v15;
  return swift_unknownObjectRelease();
}

uint64_t sub_1DAFE37C4(void *a1, id a2)
{
  if (a1)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0F0E0, &unk_1DB0AEA20);
    return sub_1DB09D9B4();
  }

  else
  {
    if (!a2)
    {
      sub_1DAFE42F4();
      swift_allocError();
      v5 = v4;
      a2 = 0;
      *v5 = 1;
    }

    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0F0E0, &unk_1DB0AEA20);
    return sub_1DB09D9A4();
  }
}

uint64_t sub_1DAFE38A4()
{
  v1 = v0[2];
  v3 = v1[17];
  v2 = v1[18];
  v0[3] = v2;
  if (v2)
  {
    v4 = v2;
    goto LABEL_3;
  }

  v6 = v1[16];
  if (v6)
  {
    if (v6[2])
    {
      v3 = v6[4];
      v4 = v6[5];
    }

    else
    {
      v3 = 0;
      v4 = 0;
    }

LABEL_3:
    v9 = v0[1];

    return v9(v3, v4);
  }

  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_1DAFE39D0;
  v8 = v0[2];

  return sub_1DAFE2C58();
}

uint64_t sub_1DAFE39D0()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 16);

    return MEMORY[0x1EEE6DFA0](sub_1DAFE3B14, v7, 0);
  }
}

uint64_t sub_1DAFE3B14()
{
  v1 = v0[2];
  v2 = *(v1 + 128);
  if (v2)
  {
    v3 = *(v1 + 128);

    if (v2[2])
    {
LABEL_3:
      v4 = v2[4];
      v5 = v2[5];

      goto LABEL_6;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  v5 = 0;
LABEL_6:
  v6 = v0[3];
  v8 = v0[1];

  return v8(v4, v5);
}

void *DeviceInformation.deinit()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[18];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DeviceInformation.__deallocating_deinit()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[18];

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

unint64_t sub_1DAFE3C74()
{
  result = qword_1ECC0F040;
  if (!qword_1ECC0F040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F040);
  }

  return result;
}

uint64_t sub_1DAFE3CC8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAF96444;

  return sub_1DAFE0278();
}

uint64_t dispatch thunk of DeviceInformationProvider.clientInfoHeader()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAFE46D0;

  return v9(a1, a2);
}

uint64_t type metadata accessor for ODINFHardwareMonitor()
{
  result = qword_1EE3011C8;
  if (!qword_1EE3011C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAFE3EC4()
{
  sub_1DAFE3F60();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1DAFE3F60()
{
  if (!qword_1EE300A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
    v0 = sub_1DB09DC64();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE300A18);
    }
  }
}

uint64_t dispatch thunk of DeviceInformation.clientInfoHeader()()
{
  v2 = *(*v0 + 136);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DAF96444;

  return v6();
}

uint64_t dispatch thunk of DeviceInformation.getSEID()()
{
  v2 = *(*v0 + 224);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DAF680EC;

  return v6();
}

void sub_1DAFE421C(void *a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B8, &unk_1DB0AE9E8) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  sub_1DAFE2750(a1, a2, v7, v8, v2 + v6, v10, v11);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DAFE42F4()
{
  result = qword_1ECC0F0C0;
  if (!qword_1ECC0F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F0C0);
  }

  return result;
}

uint64_t sub_1DAFE4348(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAF62CC4;

  return sub_1DAFDFCBC(a1, v4, v5, v6);
}

uint64_t sub_1DAFE43FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0D0, &qword_1DB0A2850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAFE446C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0D0, &qword_1DB0A2850);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAFE44DC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t objectdestroy_46Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1DAFE4578(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAF62CC4;

  return sub_1DAFDF654(a1, v4, v5, v7);
}

uint64_t sub_1DAFE4640(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0F0E0, &unk_1DB0AEA20) - 8) + 80);

  return sub_1DAFE37C4(a1, a2);
}

void *sub_1DAFE46D8()
{
  result = sub_1DAFE46F8();
  qword_1EE30A1E0 = result;
  return result;
}

void *sub_1DAFE46F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v14 - v3;
  type metadata accessor for DIPURLCache();
  v5 = objc_opt_self();
  v6 = [v5 sharedURLCache];
  [v6 memoryCapacity];

  v7 = [v5 sharedURLCache];
  [v7 diskCapacity];

  if (qword_1EE304380 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EE304388);
  sub_1DAFE6928(v8, v4);
  v9 = sub_1DB09DB24();
  v10 = [objc_opt_self() standardUserDefaults];
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EE30A140 == 1)
  {
    v11 = sub_1DB09D6B4();
    v12 = [v10 BOOLForKey_];

    if (v12)
    {
      [v9 removeAllCachedResponses];
    }
  }

  else
  {
  }

  sub_1DAFE4F30();
  return v9;
}

uint64_t sub_1DAFE491C()
{
  v0 = sub_1DB09CE94();
  v57 = *(v0 - 8);
  v58 = v0;
  v1 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1DB09CF64();
  v5 = *(v59 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v59, v7);
  v56 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v53 - v12;
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v53 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  v22 = *(*(v21 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v26 = &v53 - v25;
  __swift_allocate_value_buffer(v24, qword_1EE304388);
  v60 = __swift_project_value_buffer(v21, qword_1EE304388);
  v27 = objc_opt_self();
  v28 = [v27 defaultManager];
  v29 = sub_1DB09D6B4();
  v30 = [v28 containerURLForSecurityApplicationGroupIdentifier_];

  if (v30)
  {
    sub_1DB09CF04();

    v31 = v59;
    (*(v5 + 32))(v20, v17, v59);
    v61 = 0xD000000000000013;
    v62 = 0x80000001DB0C85B0;
    v33 = v57;
    v32 = v58;
    (*(v57 + 104))(v4, *MEMORY[0x1E6968F70], v58);
    sub_1DAF9C5EC();
    sub_1DB09CF44();
    (*(v33 + 8))(v4, v32);
    (*(v5 + 8))(v20, v31);
    (*(v5 + 56))(v26, 0, 1, v31);
    v34 = v26;
  }

  else
  {
    v54 = v13;
    v55 = v26;
    v35 = v5;
    v36 = v57;
    v37 = v58;
    v38 = [v27 defaultManager];
    v39 = [v38 URLsForDirectory:13 inDomains:1];

    v40 = v59;
    v41 = sub_1DB09D934();

    if (*(v41 + 16))
    {
      v42 = v35;
      (*(v35 + 16))(v56, v41 + ((*(v35 + 80) + 32) & ~*(v35 + 80)), v40);

      v43 = [objc_opt_self() mainBundle];
      v44 = [v43 bundleIdentifier];

      if (v44)
      {
        v45 = sub_1DB09D6C4();
        v47 = v46;
      }

      else
      {
        v47 = 0x80000001DB0C8590;
        v45 = 0xD000000000000014;
      }

      v48 = v4;
      v61 = v45;
      v62 = v47;
      LODWORD(v59) = *MEMORY[0x1E6968F70];
      v58 = *(v36 + 104);
      v58(v4);
      v57 = sub_1DAF9C5EC();
      v49 = v54;
      v50 = v56;
      sub_1DB09CF54();
      v53 = *(v36 + 8);
      v53(v4, v37);

      v51 = *(v42 + 8);
      v51(v50, v40);
      v61 = 7107189;
      v62 = 0xE300000000000000;
      (v58)(v4, v59, v37);
      v34 = v55;
      sub_1DB09CF44();
      v53(v48, v37);
      v51(v49, v40);
      (*(v42 + 56))(v34, 0, 1, v40);
    }

    else
    {

      v34 = v55;
      (*(v35 + 56))(v55, 1, 1, v40);
    }
  }

  return sub_1DAFE69FC(v34, v60);
}

uint64_t sub_1DAFE4F30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v16 - v4;
  v6 = *(v0 + OBJC_IVAR____TtC17CoreODIEssentials11DIPURLCache_logger + 8);
  v18 = *(v0 + OBJC_IVAR____TtC17CoreODIEssentials11DIPURLCache_logger);
  v19 = v6;
  v16 = 0;
  v17 = 0xE000000000000000;

  sub_1DB09DE44();

  v16 = 0xD00000000000001ELL;
  v17 = 0x80000001DB0C86D0;
  if (qword_1EE304380 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EE304388);
  sub_1DAFE6928(v7, v5);
  v8 = sub_1DB09CF64();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v5, 1, v8) == 1)
  {
    sub_1DAF40AEC(v5, &unk_1ECC0EAB0, &qword_1DB0A9530);
    v10 = 0xE300000000000000;
    v11 = 7104878;
  }

  else
  {
    v12 = sub_1DB09CEA4();
    v10 = v13;
    (*(v9 + 8))(v5, v8);
    v11 = v12;
  }

  MEMORY[0x1E127FE90](v11, v10);

  v14 = v16;
  LOBYTE(v16) = 14;
  CoreODILogger.debug(_:category:)(v14, v17, &v16);
}

id sub_1DAFE5358(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v44 - v10;
  v12 = [objc_opt_self() standardUserDefaults];
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EE30A140 == 1)
  {
    v13 = sub_1DB09D6B4();
    v14 = [v12 BOOLForKey_];

    if (v14)
    {
      v15 = a1;
      return a1;
    }
  }

  else
  {
  }

  v17 = [a1 response];
  v18 = sub_1DAFE5914(v17);

  if (v18)
  {
    v45 = v8;
    v46 = v11;
    v47 = v1;
    v19 = [a1 response];
    v20 = [a1 data];
    v21 = sub_1DB09D034();
    v23 = v22;

    sub_1DAF56044(v18);
    v24 = [a1 storagePolicy];
    v25 = objc_allocWithZone(MEMORY[0x1E696AAF8]);
    v26 = sub_1DB09D004();
    v27 = sub_1DB09D604();

    v28 = [v25 initWithResponse:v19 data:v26 userInfo:v27 storagePolicy:v24];

    sub_1DAF40780(v21, v23);
    v29 = [a1 response];
    v30 = [v29 URL];

    if (v30)
    {
      v31 = v45;
      sub_1DB09CF04();

      v32 = sub_1DB09CF64();
      (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
    }

    else
    {
      v32 = sub_1DB09CF64();
      v31 = v45;
      (*(*(v32 - 8) + 56))(v45, 1, 1, v32);
    }

    v34 = v46;
    sub_1DAFE69FC(v31, v46);
    sub_1DB09CF64();
    v35 = *(v32 - 8);
    if ((*(v35 + 48))(v34, 1, v32) == 1)
    {
      sub_1DAF40AEC(v34, &unk_1ECC0EAB0, &qword_1DB0A9530);
      v36 = 0xE300000000000000;
      v37 = 7104878;
    }

    else
    {
      v37 = sub_1DB09CEA4();
      v36 = v38;
      (*(v35 + 8))(v34, v32);
    }

    v39 = v47;
    if (*(v18 + 16) && (v40 = sub_1DAF35210(0x4173657269707865, 0xE900000000000074), (v41 & 1) != 0))
    {
      sub_1DAF409DC(*(v18 + 56) + 32 * v40, v50);

      sub_1DAF40D20(v50, &v51);
    }

    else
    {

      v52 = MEMORY[0x1E69E6158];
      *&v51 = 7104878;
      *(&v51 + 1) = 0xE300000000000000;
    }

    v42 = *(v39 + OBJC_IVAR____TtC17CoreODIEssentials11DIPURLCache_logger + 8);
    *&v50[0] = *(v39 + OBJC_IVAR____TtC17CoreODIEssentials11DIPURLCache_logger);
    *(&v50[0] + 1) = v42;
    v48 = 0;
    v49 = 0xE000000000000000;

    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD000000000000016, 0x80000001DB0C86B0);
    MEMORY[0x1E127FE90](v37, v36);

    MEMORY[0x1E127FE90](0x206C69746E7520, 0xE700000000000000);
    __swift_project_boxed_opaque_existential_1(&v51, v52);
    sub_1DB09E234();
    v43 = v48;
    LOBYTE(v48) = 14;
    CoreODILogger.debug(_:category:)(v43, v49, &v48);

    __swift_destroy_boxed_opaque_existential_1Tm(&v51);
    return v28;
  }

  else
  {
    v33 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials11DIPURLCache_logger + 8);
    *&v51 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials11DIPURLCache_logger);
    *(&v51 + 1) = v33;
    LOBYTE(v50[0]) = 17;

    CoreODILogger.debug(_:category:)(0xD000000000000022, 0x80000001DB0C8680, v50);

    return 0;
  }
}

uint64_t sub_1DAFE5914(void *a1)
{
  v3 = sub_1DB09D154();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v33 - v11;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v14 = result;
    v15 = a1;
    v16 = sub_1DAFE6A6C(v14);
    if (v17 && (sub_1DAFE6D30(v16, v17), v19 = v18, , (v19 & 1) == 0))
    {
      sub_1DB09D144();
      sub_1DB09D0A4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0F8, &qword_1DB0AEA40);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E270, &qword_1DB0A0200);
      v22 = *(*(v21 - 8) + 72);
      v23 = (*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1DB0A0500;
      v25 = (v24 + v23);
      v26 = *(v21 + 48);
      *v25 = 0x74416465726F7473;
      *(v25 + 1) = 0xE800000000000000;
      v33 = v15;
      v27 = v4[2];
      v27(&v25[v26], v12, v3);
      v28 = &v25[v22];
      v29 = *(v21 + 48);
      *v28 = 0x4173657269707865;
      *(v28 + 1) = 0xE900000000000074;
      v27(&v25[v22 + v29], v9, v3);
      v30 = sub_1DAF3F840(v24);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v31 = sub_1DAF55C2C(v30);

      v32 = v4[1];
      v32(v9, v3);
      v32(v12, v3);
      return v31;
    }

    else
    {
      v20 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials11DIPURLCache_logger + 8);
      v35 = *(v1 + OBJC_IVAR____TtC17CoreODIEssentials11DIPURLCache_logger);
      v36 = v20;
      v34 = 17;

      CoreODILogger.debug(_:category:)(0xD000000000000049, 0x80000001DB0C85D0, &v34);

      return 0;
    }
  }

  return result;
}

id sub_1DAFE5FB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DIPURLCache();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1DAFE601C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1DB09D874();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1DAF73A2C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1DAF73A2C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1DB09D854();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1DB09D7B4();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1DB09D7B4();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1DB09D874();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1DAF73A2C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1DB09D874();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1DAF73A2C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1DAF73A2C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1DB09D7B4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAFE63DC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E450, &qword_1DB0A05A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = v40 - v5;
  v7 = sub_1DB09D2A4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAD0, &qword_1DB0AD520);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = v40 - v16;
  v18 = sub_1DB09D154();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [a1 userInfo];
  if (!v24)
  {
    goto LABEL_10;
  }

  v40[0] = v8;
  v25 = v24;
  v26 = sub_1DB09D624();

  v40[1] = 0x74416465726F7473;
  v40[2] = 0xE800000000000000;
  sub_1DB09DDB4();
  if (!*(v26 + 16) || (v27 = sub_1DAF353E0(v41), (v28 & 1) == 0))
  {

    sub_1DAF4057C(v41);
LABEL_10:
    v42 = 0u;
    v43 = 0u;
    goto LABEL_11;
  }

  sub_1DAF409DC(*(v26 + 56) + 32 * v27, &v42);
  sub_1DAF4057C(v41);

  if (!*(&v43 + 1))
  {
LABEL_11:
    sub_1DAF40AEC(&v42, &qword_1ECC0E370, &qword_1DB0A09B0);
    (*(v19 + 56))(v17, 1, 1, v18);
    goto LABEL_12;
  }

  v29 = swift_dynamicCast();
  (*(v19 + 56))(v17, v29 ^ 1u, 1, v18);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
LABEL_12:
    sub_1DAF40AEC(v17, &unk_1ECC0EAD0, &qword_1DB0AD520);
    return 0;
  }

  (*(v19 + 32))(v23, v17, v18);
  v30 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1DB09D1E4();
  v31 = sub_1DB09D214();
  (*(v40[0] + 8))(v12, v7);
  [v30 setLocale_];

  sub_1DB09D314();
  v32 = sub_1DB09D344();
  v33 = *(v32 - 8);
  v34 = 0;
  if ((*(v33 + 48))(v6, 1, v32) != 1)
  {
    v34 = sub_1DB09D324();
    (*(v33 + 8))(v6, v32);
  }

  [v30 setTimeZone_];

  v35 = sub_1DB09D6B4();
  [v30 setDateFormat_];

  v36 = sub_1DB09D0B4();
  v37 = [v30 stringFromDate_];

  v38 = sub_1DB09D6C4();
  (*(v19 + 8))(v23, v18);
  return v38;
}

uint64_t sub_1DAFE6928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1DAFE69FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DAFE6A6C(void *a1)
{
  v2 = [a1 allHeaderFields];
  v3 = sub_1DB09D624();

  sub_1DB09DDB4();
  if (*(v3 + 16) && (v4 = sub_1DAF353E0(v15), (v5 & 1) != 0))
  {
    sub_1DAF409DC(*(v3 + 56) + 32 * v4, v16);
    sub_1DAF4057C(v15);

    if (swift_dynamicCast())
    {
      return 0xD000000000000019;
    }
  }

  else
  {

    sub_1DAF4057C(v15);
  }

  v6 = [a1 allHeaderFields];
  v7 = sub_1DB09D624();

  sub_1DB09DDB4();
  if (*(v7 + 16) && (v8 = sub_1DAF353E0(v15), (v9 & 1) != 0))
  {
    sub_1DAF409DC(*(v7 + 56) + 32 * v8, v16);
    sub_1DAF4057C(v15);

    if (swift_dynamicCast())
    {
      return 0xD000000000000019;
    }
  }

  else
  {

    sub_1DAF4057C(v15);
  }

  v10 = [a1 allHeaderFields];
  v11 = sub_1DB09D624();

  sub_1DB09DDB4();
  if (*(v11 + 16) && (v12 = sub_1DAF353E0(v15), (v13 & 1) != 0))
  {
    sub_1DAF409DC(*(v11 + 56) + 32 * v12, v16);
    sub_1DAF4057C(v15);

    if (swift_dynamicCast())
    {
      return 0xD000000000000019;
    }
  }

  else
  {

    sub_1DAF4057C(v15);
  }

  return 0;
}

uint64_t sub_1DAFE6D30(uint64_t a1, unint64_t a2)
{
  v32 = sub_1DB09CC74();
  v4 = *(v32 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v32, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v37 = 44;
  *(&v37 + 1) = 0xE100000000000000;
  v34 = &v37;

  result = sub_1DAFE601C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1DAFE702C, v33, a1, a2, v9);
  v11 = result;
  v31 = *(result + 16);
  if (v31)
  {
    v12 = 0;
    v30 = (v4 + 8);
    v13 = (result + 56);
    while (1)
    {
      if (v12 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_12;
      }

      v14 = *(v13 - 1);
      v15 = *v13;
      v37 = *(v13 - 3);
      v38 = v14;
      v39 = v15;

      sub_1DB09CC64();
      sub_1DAFE7048();
      v16 = sub_1DB09DC94();
      v18 = v17;
      (*v30)(v8, v32);

      *&v37 = 61;
      *(&v37 + 1) = 0xE100000000000000;
      MEMORY[0x1EEE9AC00](v19, v20);
      *(&v29 - 2) = &v37;
      v21 = sub_1DAFE601C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1DAFE709C, (&v29 - 4), v16, v18, &v29);
      if (*(v21 + 16) == 2)
      {
        v22 = *(v21 + 48);
        v23 = *(v21 + 56);
        v37 = *(v21 + 32);
        v38 = v22;
        v39 = v23;
        v35 = 0x6567612D78616DLL;
        v36 = 0xE700000000000000;
        v24 = v21;
        sub_1DAF9C5EC();
        if (!sub_1DB09DCB4())
        {
          break;
        }
      }

      ++v12;

      v13 += 4;
      if (v31 == v12)
      {
        goto LABEL_9;
      }
    }

    if (v24[2] >= 2uLL)
    {
      v25 = v24[8];
      v26 = v24[9];
      v27 = v24[10];
      v28 = v24[11];

      return sub_1DB09DAD4();
    }

LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_9:

    return 0;
  }

  return result;
}

unint64_t sub_1DAFE7048()
{
  result = qword_1EE301970;
  if (!qword_1EE301970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301970);
  }

  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PregeneratedAssessment.assessmentGUIDSeedDecoded()(CoreODIEssentials::ODIClientGUIDSeeds *__return_ptr retstr)
{
  v3 = (v1 + *(type metadata accessor for PregeneratedAssessment() + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = sub_1DB09CFA4();
  if (v7 >> 60 == 15)
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v8 = MEMORY[0x1E69E7CC0];
    v9 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v9 + 16))
    {
      v10 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v11)
      {
        sub_1DAF409DC(*(v9 + 56) + 32 * v10, &v36);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v8 = *&v35[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1DAF72EC0(0, *(v8 + 2) + 1, 1, v8);
    }

    v13 = *(v8 + 2);
    v12 = *(v8 + 3);
    if (v13 >= v12 >> 1)
    {
      v8 = sub_1DAF72EC0((v12 > 1), v13 + 1, 1, v8);
    }

    *(v8 + 2) = v13 + 1;
    v14 = &v8[56 * v13];
    *(v14 + 4) = 0xD000000000000022;
    *(v14 + 5) = 0x80000001DB0C3B70;
    *(v14 + 6) = 0xD000000000000030;
    *(v14 + 7) = 0x80000001DB0C3BA0;
    *(v14 + 8) = 0x6F72662864656573;
    *(v14 + 9) = 0xEB00000000293A6DLL;
    *(v14 + 10) = 77;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v36 = v8;
    sub_1DAF40D20(&v36, v35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v9;
    sub_1DAF3B11C(v35, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v16 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v17 = sub_1DB09D6B4();
    v18 = sub_1DB09D604();
    [v16 initWithDomain:v17 code:-2127 userInfo:v18];

    swift_willThrow();
  }

  else
  {
    v19 = v6;
    v20 = v7;
    v21 = sub_1DB09CC24();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_1DB09CC14();
    sub_1DAF8C3D4();
    sub_1DB09CC04();
    if (v2)
    {

      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v24 = MEMORY[0x1E69E7CC0];
      v25 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v25 + 16))
      {
        v26 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v27)
        {
          sub_1DAF409DC(*(v25 + 56) + 32 * v26, &v36);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v24 = *&v35[0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1DAF72EC0(0, *(v24 + 2) + 1, 1, v24);
      }

      v29 = *(v24 + 2);
      v28 = *(v24 + 3);
      if (v29 >= v28 >> 1)
      {
        v24 = sub_1DAF72EC0((v28 > 1), v29 + 1, 1, v24);
      }

      *(v24 + 2) = v29 + 1;
      v30 = &v24[56 * v29];
      *(v30 + 4) = 0xD000000000000022;
      *(v30 + 5) = 0x80000001DB0C3B70;
      *(v30 + 6) = 0xD000000000000030;
      *(v30 + 7) = 0x80000001DB0C3BA0;
      *(v30 + 8) = 0x6F72662864656573;
      *(v30 + 9) = 0xEB00000000293A6DLL;
      *(v30 + 10) = 82;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *&v36 = v24;
      sub_1DAF40D20(&v36, v35);
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v38 = v25;
      sub_1DAF3B11C(v35, 0x636F766E4949444FLL, 0xEE00736E6F697461, v31);
      v32 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v33 = sub_1DB09D6B4();
      v34 = sub_1DB09D604();
      [v32 initWithDomain:v33 code:-2127 userInfo:v34];

      swift_willThrow();
    }

    else
    {
    }

    sub_1DAF4AC40(v19, v20);
  }
}

uint64_t type metadata accessor for PregeneratedAssessment()
{
  result = qword_1EE300F00;
  if (!qword_1EE300F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PregeneratedAssessment.trainingGUIDSeedDecoded()(CoreODIEssentials::ODIClientGUIDSeeds *__return_ptr retstr)
{
  v3 = (v1 + *(type metadata accessor for PregeneratedAssessment() + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = sub_1DB09CFA4();
  if (v7 >> 60 == 15)
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v8 = MEMORY[0x1E69E7CC0];
    v9 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v9 + 16))
    {
      v10 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v11)
      {
        sub_1DAF409DC(*(v9 + 56) + 32 * v10, &v36);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v8 = *&v35[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1DAF72EC0(0, *(v8 + 2) + 1, 1, v8);
    }

    v13 = *(v8 + 2);
    v12 = *(v8 + 3);
    if (v13 >= v12 >> 1)
    {
      v8 = sub_1DAF72EC0((v12 > 1), v13 + 1, 1, v8);
    }

    *(v8 + 2) = v13 + 1;
    v14 = &v8[56 * v13];
    *(v14 + 4) = 0xD000000000000022;
    *(v14 + 5) = 0x80000001DB0C3B70;
    *(v14 + 6) = 0xD000000000000030;
    *(v14 + 7) = 0x80000001DB0C3BA0;
    *(v14 + 8) = 0x6F72662864656573;
    *(v14 + 9) = 0xEB00000000293A6DLL;
    *(v14 + 10) = 77;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v36 = v8;
    sub_1DAF40D20(&v36, v35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v9;
    sub_1DAF3B11C(v35, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v16 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v17 = sub_1DB09D6B4();
    v18 = sub_1DB09D604();
    [v16 initWithDomain:v17 code:-2127 userInfo:v18];

    swift_willThrow();
  }

  else
  {
    v19 = v6;
    v20 = v7;
    v21 = sub_1DB09CC24();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_1DB09CC14();
    sub_1DAF8C3D4();
    sub_1DB09CC04();
    if (v2)
    {

      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v24 = MEMORY[0x1E69E7CC0];
      v25 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v25 + 16))
      {
        v26 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v27)
        {
          sub_1DAF409DC(*(v25 + 56) + 32 * v26, &v36);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v24 = *&v35[0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1DAF72EC0(0, *(v24 + 2) + 1, 1, v24);
      }

      v29 = *(v24 + 2);
      v28 = *(v24 + 3);
      if (v29 >= v28 >> 1)
      {
        v24 = sub_1DAF72EC0((v28 > 1), v29 + 1, 1, v24);
      }

      *(v24 + 2) = v29 + 1;
      v30 = &v24[56 * v29];
      *(v30 + 4) = 0xD000000000000022;
      *(v30 + 5) = 0x80000001DB0C3B70;
      *(v30 + 6) = 0xD000000000000030;
      *(v30 + 7) = 0x80000001DB0C3BA0;
      *(v30 + 8) = 0x6F72662864656573;
      *(v30 + 9) = 0xEB00000000293A6DLL;
      *(v30 + 10) = 82;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *&v36 = v24;
      sub_1DAF40D20(&v36, v35);
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v38 = v25;
      sub_1DAF3B11C(v35, 0x636F766E4949444FLL, 0xEE00736E6F697461, v31);
      v32 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v33 = sub_1DB09D6B4();
      v34 = sub_1DB09D604();
      [v32 initWithDomain:v33 code:-2127 userInfo:v34];

      swift_willThrow();
    }

    else
    {
    }

    sub_1DAF4AC40(v19, v20);
  }
}

uint64_t PregeneratedAssessment.workflowID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PregeneratedAssessment.createdAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PregeneratedAssessment() + 20);
  v4 = sub_1DB09D154();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PregeneratedAssessment.assessment.getter()
{
  v1 = (v0 + *(type metadata accessor for PregeneratedAssessment() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PregeneratedAssessment.trainingData.getter()
{
  v1 = (v0 + *(type metadata accessor for PregeneratedAssessment() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PregeneratedAssessment.assessmentGUID.getter()
{
  v1 = (v0 + *(type metadata accessor for PregeneratedAssessment() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PregeneratedAssessment.assessmentGUIDSeeds.getter()
{
  v1 = (v0 + *(type metadata accessor for PregeneratedAssessment() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PregeneratedAssessment.trainingGUID.getter()
{
  v1 = (v0 + *(type metadata accessor for PregeneratedAssessment() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PregeneratedAssessment.trainingGUIDSeeds.getter()
{
  v1 = (v0 + *(type metadata accessor for PregeneratedAssessment() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PregeneratedAssessment.trainingSignalID.getter()
{
  v1 = (v0 + *(type metadata accessor for PregeneratedAssessment() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PregeneratedAssessment.bindings.getter()
{
  v1 = *(v0 + *(type metadata accessor for PregeneratedAssessment() + 56));
}

uint64_t PregeneratedAssessment.encryptedTSID.getter()
{
  v1 = (v0 + *(type metadata accessor for PregeneratedAssessment() + 60));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PregeneratedAssessment.encryptedAGUID.getter()
{
  v1 = (v0 + *(type metadata accessor for PregeneratedAssessment() + 64));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PregeneratedAssessment.otdDestinationHost.getter()
{
  v1 = (v0 + *(type metadata accessor for PregeneratedAssessment() + 72));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PregeneratedAssessment.init(workflowID:createdAt:assessment:trainingData:assessmentGUID:assessmentGUIDSeeds:trainingGUID:trainingGUIDSeeds:trainingSignalID:digestIndex:bindings:encryptedTSID:encryptedAGUID:useSentOTD:otdDestinationHost:profileIdentifiers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, __int128 *a28)
{
  v47 = *a20;
  *a9 = a1;
  *(a9 + 1) = a2;
  v31 = type metadata accessor for PregeneratedAssessment();
  v32 = v31[5];
  v33 = sub_1DB09D154();
  (*(*(v33 - 8) + 32))(&a9[v32], a3, v33);
  v34 = &a9[v31[6]];
  *v34 = a4;
  *(v34 + 1) = a5;
  v35 = &a9[v31[7]];
  *v35 = a6;
  *(v35 + 1) = a7;
  v36 = &a9[v31[8]];
  *v36 = a8;
  *(v36 + 1) = a10;
  v37 = &a9[v31[9]];
  *v37 = a11;
  *(v37 + 1) = a12;
  v38 = &a9[v31[10]];
  *v38 = a13;
  *(v38 + 1) = a14;
  v39 = &a9[v31[11]];
  *v39 = a15;
  *(v39 + 1) = a16;
  v40 = &a9[v31[12]];
  *v40 = a17;
  *(v40 + 1) = a18;
  *&a9[v31[13]] = a19;
  *&a9[v31[14]] = v47;
  v41 = &a9[v31[15]];
  *v41 = a21;
  *(v41 + 1) = a22;
  v42 = &a9[v31[16]];
  *v42 = a23;
  *(v42 + 1) = a24;
  a9[v31[17]] = a25;
  v43 = &a9[v31[18]];
  *v43 = a26;
  *(v43 + 1) = a27;
  v44 = &a9[v31[19]];

  return sub_1DAF332B8(a28, v44);
}

unint64_t sub_1DAFE82B0(char a1)
{
  result = 0x776F6C666B726F77;
  switch(a1)
  {
    case 1:
      result = 0x4164657461657263;
      break;
    case 2:
    case 4:
      result = 0x656D737365737361;
      break;
    case 3:
      result = 0x676E696E69617274;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x676E696E69617274;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x6E49747365676964;
      break;
    case 10:
      result = 0x73676E69646E6962;
      break;
    case 11:
    case 12:
      result = 0x6574707972636E65;
      break;
    case 13:
      result = 0x4F646E6553657375;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DAFE8490(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1DAFE82B0(*a1);
  v5 = v4;
  if (v3 == sub_1DAFE82B0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DB09E254();
  }

  return v8 & 1;
}

uint64_t sub_1DAFE8518()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DAFE82B0(v1);
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DAFE857C()
{
  sub_1DAFE82B0(*v0);
  sub_1DB09D794();
}

uint64_t sub_1DAFE85D0()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DAFE82B0(v1);
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DAFE8630@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAFEAA90();
  *a2 = result;
  return result;
}

unint64_t sub_1DAFE8660@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DAFE82B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DAFE86A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAFEAA90();
  *a1 = result;
  return result;
}

uint64_t sub_1DAFE86DC(uint64_t a1)
{
  v2 = sub_1DAFEA3B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAFE8718(uint64_t a1)
{
  v2 = sub_1DAFEA3B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PregeneratedAssessment.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v111[4] = *MEMORY[0x1E69E9840];
  *&v95 = sub_1DB09D154();
  *&v94 = *(v95 - 8);
  v3 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95, v4);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F100, &qword_1DB0AEA48);
  v96 = *(v7 - 8);
  v8 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v88 - v10;
  v12 = type metadata accessor for PregeneratedAssessment();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = (&v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAFEA3B4();
  v18 = v97;
  sub_1DB09E414();
  if (v18)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    goto LABEL_4;
  }

  v19 = v96;
  v97 = a1;
  v91 = v12;
  v92 = v16;
  LOBYTE(v106[0]) = 0;
  v20 = v11;
  v21 = sub_1DB09E084();
  v22 = v7;
  v25 = v92;
  *v92 = v21;
  v25[1] = v26;
  LOBYTE(v106[0]) = 1;
  sub_1DAFEAB98(&qword_1ECC0F110, MEMORY[0x1E6969530]);
  v27 = v6;
  v28 = v95;
  sub_1DB09E0C4();
  v29 = v91;
  (*(v94 + 32))(v25 + v91[5], v27, v28);
  LOBYTE(v106[0]) = 2;
  v30 = sub_1DB09E084();
  v31 = (v25 + v29[6]);
  *v31 = v30;
  v31[1] = v32;
  LOBYTE(v106[0]) = 3;
  v33 = sub_1DB09E084();
  v34 = (v25 + v29[7]);
  *v34 = v33;
  v34[1] = v35;
  LOBYTE(v106[0]) = 4;
  v36 = sub_1DB09E084();
  v37 = (v25 + v29[8]);
  *v37 = v36;
  v37[1] = v38;
  LOBYTE(v106[0]) = 5;
  v39 = sub_1DB09E084();
  v40 = (v25 + v29[9]);
  *v40 = v39;
  v40[1] = v41;
  LOBYTE(v106[0]) = 6;
  v42 = sub_1DB09E084();
  v43 = (v25 + v29[10]);
  *v43 = v42;
  v43[1] = v44;
  LOBYTE(v106[0]) = 7;
  v45 = sub_1DB09E084();
  v46 = (v92 + v29[11]);
  *v46 = v45;
  v46[1] = v47;
  LOBYTE(v106[0]) = 8;
  v48 = sub_1DB09E084();
  v49 = (v92 + v91[12]);
  *v49 = v48;
  v49[1] = v50;
  LOBYTE(v106[0]) = 9;
  v51 = v20;
  *(v92 + v91[13]) = sub_1DB09E0B4();
  LOBYTE(v103) = 10;
  sub_1DAFEA408();
  sub_1DB09E0C4();
  v63 = v106[0];
  v64 = objc_opt_self();
  v90 = *(&v63 + 1);
  v65 = sub_1DB09D004();
  *&v106[0] = 0;
  v66 = [v64 JSONObjectWithData:v65 options:0 error:v106];

  v67 = *&v106[0];
  if (v66)
  {
    sub_1DB09DCE4();
    swift_unknownObjectRelease();
    sub_1DAFE961C(v111, v106);
    *(v92 + v91[14]) = *&v106[0];
    LOBYTE(v106[0]) = 11;
    v68 = sub_1DB09E084();
    v70 = (v92 + v91[15]);
    *v70 = v68;
    v70[1] = v71;
    LOBYTE(v106[0]) = 12;
    v72 = sub_1DB09E084();
    v73 = (v92 + v91[16]);
    *v73 = v72;
    v73[1] = v74;
    LOBYTE(v106[0]) = 13;
    v75 = sub_1DB09E054();
    *(v92 + v91[17]) = (v75 == 2) | v75 & 1;
    LOBYTE(v106[0]) = 14;
    v76 = sub_1DB09E044();
    v77 = (v92 + v91[18]);
    *v77 = v76;
    v77[1] = v78;
    v99 = 15;
    sub_1DAFEA45C();
    sub_1DB09E074();
    v79 = v110;
    *&v95 = v109;
    v98 = 15;
    sub_1DAFEA4B0();
    sub_1DB09E074();
    v94 = v106[0];
    if (*(&v106[0] + 1))
    {
      v95 = v106[3];
      v88 = v106[1];
      v89 = v106[2];
      v82 = v107;
      v83 = v108;

      *(&v101 + 1) = &type metadata for ProfileSetIdentifiers;
      v102 = sub_1DAFEA5B4();
      v84 = swift_allocObject();
      *&v100 = v84;
      v85 = v88;
      *(v84 + 16) = v94;
      *(v84 + 32) = v85;
      v86 = v95;
      *(v84 + 48) = v89;
      *(v84 + 64) = v86;
      *(v84 + 80) = v82;
      *(v84 + 88) = v83;
      sub_1DAF40780(v63, v90);
      __swift_destroy_boxed_opaque_existential_1Tm(v111);
      (*(v19 + 8))(v51, v22);
      sub_1DAF332B8(&v100, &v103);
    }

    else
    {
      v102 = 0;
      v101 = 0u;
      v100 = 0u;
      v104 = &type metadata for LegacyAugmentedProfileIdentifiers;
      v105 = sub_1DAFEA504();
      sub_1DAF40780(v63, v90);
      v80 = 0x4E574F4E4B4E55;
      if (v79)
      {
        v80 = v95;
      }

      v81 = 0xE700000000000000;
      if (v79)
      {
        v81 = v79;
      }

      *&v103 = v80;
      *(&v103 + 1) = v81;
      __swift_destroy_boxed_opaque_existential_1Tm(v111);
      (*(v19 + 8))(v51, v22);
      if (*(&v101 + 1))
      {
        sub_1DAF40AEC(&v100, &qword_1ECC0F138, &qword_1DB0AEA50);
      }
    }

    v87 = v92;
    sub_1DAF332B8(&v103, v92 + v91[19]);
    sub_1DAF8C428(v87, v93);
    __swift_destroy_boxed_opaque_existential_1Tm(v97);
    result = sub_1DAFEA558(v87);
    goto LABEL_4;
  }

  v69 = v67;
  sub_1DB09CE74();

  swift_willThrow();
  sub_1DAF40780(v63, v90);
  (*(v19 + 8))(v51, v22);
  LODWORD(v93) = 0;
  __swift_destroy_boxed_opaque_existential_1Tm(v97);
  v61 = v92;
  v62 = v92[1];

  LODWORD(v96) = 1;
  LODWORD(v90) = 1;
  (*(v94 + 8))(v61 + v91[5], v95);
  v52 = v91;
  v53 = *(v61 + v91[6] + 8);

  v57 = *(v61 + v52[7] + 8);

  v54 = *(v61 + v52[8] + 8);

  v58 = *(v61 + v52[9] + 8);

  v55 = *(v61 + v52[10] + 8);

  if ((v90 & 1) == 0)
  {
    if (!v96)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v59 = *(v61 + v52[11] + 8);

  if (v96)
  {
LABEL_7:
    v56 = *(v61 + v52[12] + 8);
  }

LABEL_9:
  if (v93)
  {
    v60 = *(v61 + v52[16] + 8);
  }

LABEL_4:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DAFE961C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  sub_1DAF409DC(a1, &v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F178, &qword_1DB0AECA8);
  if (!swift_dynamicCast())
  {
    return ODIBindingsDict.init(dictionaryLiteral:)(MEMORY[0x1E69E7CC0], a2);
  }

  v55 = a2;
  ODIBindingsDict.init(dictionaryLiteral:)(MEMORY[0x1E69E7CC0], v74);
  v3 = 0;
  v5 = v69 + 64;
  v4 = *(v69 + 64);
  v57 = v69;
  v6 = 1 << *(v69 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  v10 = MEMORY[0x1E69E6158];
  if ((v7 & v4) == 0)
  {
    goto LABEL_9;
  }

  do
  {
    while (1)
    {
      v12 = v3;
LABEL_17:
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v16 = v15 | (v12 << 6);
      v17 = (*(v57 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      sub_1DAF409DC(*(v57 + 56) + 32 * v16, &v65);
      *&v69 = v19;
      *(&v69 + 1) = v18;
      sub_1DAF40D20(&v65, &v70);

LABEL_18:
      v72 = v69;
      v73[0] = v70;
      v73[1] = v71;
      v20 = *(&v69 + 1);
      if (!*(&v69 + 1))
      {

        *v55 = v74[0];
        return result;
      }

      v58 = v72;
      sub_1DAF40D20(v73, v68);
      sub_1DAF409DC(v68, &v63);
      v21 = sub_1DAFEAADC();
      if (swift_dynamicCast())
      {
        v22 = v60;
        *(&v66 + 1) = v21;
        v67 = sub_1DAFEAB98(&qword_1ECC0F180, sub_1DAFEAADC);
        *&v65 = v22;
      }

      else if (swift_dynamicCast())
      {
        *(&v66 + 1) = v10;
        v67 = MEMORY[0x1E69E6168];
        v65 = v60;
      }

      else
      {
        if (qword_1EE304018 != -1)
        {
          swift_once();
        }

        v23 = sub_1DB09D4B4();
        __swift_project_value_buffer(v23, qword_1EE304020);
        sub_1DAF409DC(v68, &v60);
        v24 = sub_1DB09D494();
        v25 = sub_1DB09DB74();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v59 = v56;
          *v26 = 136315138;
          __swift_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
          swift_getDynamicType();
          v27 = sub_1DB09E474();
          v29 = v28;
          __swift_destroy_boxed_opaque_existential_1Tm(&v60);
          v30 = sub_1DB015E84(v27, v29, &v59);

          *(v26 + 4) = v30;
          _os_log_impl(&dword_1DAF16000, v24, v25, "ODIBindingsValue is not supporting %s type", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v56);
          MEMORY[0x1E1281810](v56, -1, -1);
          MEMORY[0x1E1281810](v26, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1Tm(&v60);
        }

        v10 = MEMORY[0x1E69E6158];
        v65 = 0u;
        v66 = 0u;
        v67 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v63);
      if (*(&v66 + 1))
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v68);

      v11 = &v65;
LABEL_7:
      sub_1DAF40AEC(v11, &qword_1ECC0E178, &qword_1DB09FFB0);
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    sub_1DAF332B8(&v65, &v69);
    sub_1DAF3523C(&v69, &v65);
    sub_1DAFEAB28(&v65, &v63);
    if (!v64)
    {
      sub_1DAF40AEC(&v63, &qword_1ECC0E178, &qword_1DB09FFB0);
      v41 = v74[0];
      v42 = sub_1DAF35210(v58, v20);
      v44 = v43;

      if (v44)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = v41;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1DAF3C3E8();
          v41 = v59;
        }

        v46 = *(*(v41 + 48) + 16 * v42 + 8);

        sub_1DAF332B8((*(v41 + 56) + 40 * v42), &v60);
        sub_1DB07FBA0(v42, v41);
        sub_1DAF40AEC(&v65, &qword_1ECC0E178, &qword_1DB09FFB0);
        __swift_destroy_boxed_opaque_existential_1Tm(&v69);
        __swift_destroy_boxed_opaque_existential_1Tm(v68);

        v74[0] = v41;
      }

      else
      {
        sub_1DAF40AEC(&v65, &qword_1ECC0E178, &qword_1DB09FFB0);
        __swift_destroy_boxed_opaque_existential_1Tm(&v69);
        __swift_destroy_boxed_opaque_existential_1Tm(v68);
        v62 = 0;
        v60 = 0u;
        v61 = 0u;
      }

      v10 = MEMORY[0x1E69E6158];
      v11 = &v60;
      goto LABEL_7;
    }

    sub_1DAF332B8(&v63, &v60);
    v31 = v74[0];
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v31;
    v74[0] = 0x8000000000000000;
    v33 = sub_1DAF35210(v58, v20);
    v35 = *(v31 + 16);
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      goto LABEL_53;
    }

    v39 = v34;
    if (*(v31 + 24) >= v38)
    {
      if ((v32 & 1) == 0)
      {
        v53 = v33;
        sub_1DAF3C3E8();
        v33 = v53;
      }
    }

    else
    {
      sub_1DAF3761C(v38, v32);
      v33 = sub_1DAF35210(v58, v20);
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_55;
      }
    }

    v10 = MEMORY[0x1E69E6158];
    if (v39)
    {
      v47 = v33;

      v48 = v59;
      v49 = (v59[7] + 40 * v47);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      sub_1DAF332B8(&v60, v49);
      sub_1DAF40AEC(&v65, &qword_1ECC0E178, &qword_1DB09FFB0);
      __swift_destroy_boxed_opaque_existential_1Tm(&v69);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
    }

    else
    {
      v48 = v59;
      v59[(v33 >> 6) + 8] |= 1 << v33;
      v50 = (v48[6] + 16 * v33);
      *v50 = v58;
      v50[1] = v20;
      sub_1DAF332B8(&v60, v48[7] + 40 * v33);
      sub_1DAF40AEC(&v65, &qword_1ECC0E178, &qword_1DB09FFB0);
      __swift_destroy_boxed_opaque_existential_1Tm(&v69);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      v51 = v48[2];
      v37 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v37)
      {
        goto LABEL_54;
      }

      v48[2] = v52;
    }

    v74[0] = v48;
  }

  while (v8);
LABEL_9:
  if (v9 <= v3 + 1)
  {
    v13 = v3 + 1;
  }

  else
  {
    v13 = v9;
  }

  v14 = v13 - 1;
  while (1)
  {
    v12 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      v8 = 0;
      v70 = 0u;
      v71 = 0u;
      v3 = v14;
      v69 = 0u;
      goto LABEL_18;
    }

    v8 = *(v5 + 8 * v12);
    ++v3;
    if (v8)
    {
      v3 = v12;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  result = sub_1DB09E2E4();
  __break(1u);
  return result;
}

uint64_t PregeneratedAssessment.encode(to:)(void *a1)
{
  v3 = v1;
  v69[2] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F148, &qword_1DB0AEA58);
  v67 = *(v5 - 8);
  v6 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v64 - v8;
  v10 = objc_opt_self();
  v11 = type metadata accessor for PregeneratedAssessment();
  v12 = *(v3 + *(v11 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
  v13 = sub_1DB09D604();
  v69[0] = 0;
  v14 = [v10 dataWithJSONObject:v13 options:0 error:v69];

  v15 = v69[0];
  if (v14)
  {
    v66 = v11;
    v16 = sub_1DB09D034();
    v18 = v17;

    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAFEA3B4();
    sub_1DB09E434();
    v20 = *v3;
    v21 = v3[1];
    LOBYTE(v69[0]) = 0;
    sub_1DB09E154();
    if (v2)
    {
      (*(v67 + 8))(v9, v5);
      v22 = v16;
    }

    else
    {
      v25 = v16;
      v26 = v66;
      v27 = v66[5];
      LOBYTE(v69[0]) = 1;
      sub_1DB09D154();
      sub_1DAFEAB98(&qword_1ECC0F150, MEMORY[0x1E6969530]);
      sub_1DB09E194();
      v29 = (v3 + v26[6]);
      v30 = *v29;
      v31 = v29[1];
      LOBYTE(v69[0]) = 2;
      sub_1DB09E154();
      v65 = v18;
      v32 = (v3 + v26[7]);
      v33 = *v32;
      v34 = v32[1];
      LOBYTE(v69[0]) = 3;
      sub_1DB09E154();
      v35 = (v3 + v26[8]);
      v36 = *v35;
      v37 = v35[1];
      LOBYTE(v69[0]) = 4;
      sub_1DB09E154();
      v38 = (v3 + v26[9]);
      v39 = *v38;
      v40 = v38[1];
      LOBYTE(v69[0]) = 5;
      sub_1DB09E154();
      v41 = (v3 + v26[10]);
      v42 = *v41;
      v43 = v41[1];
      LOBYTE(v69[0]) = 6;
      sub_1DB09E154();
      v44 = (v3 + v26[11]);
      v45 = *v44;
      v46 = v44[1];
      LOBYTE(v69[0]) = 7;
      sub_1DB09E154();
      v47 = (v3 + v26[12]);
      v48 = *v47;
      v49 = v47[1];
      LOBYTE(v69[0]) = 8;
      sub_1DB09E154();
      v50 = *(v3 + v26[13]);
      LOBYTE(v69[0]) = 9;
      sub_1DB09E184();
      v69[0] = v25;
      v69[1] = v65;
      v68 = 10;
      sub_1DAFEA608();
      sub_1DB09E194();
      v51 = (v3 + v66[15]);
      v52 = *v51;
      v53 = v51[1];
      LOBYTE(v69[0]) = 11;
      sub_1DB09E154();
      v54 = (v3 + v66[16]);
      v55 = *v54;
      v56 = v54[1];
      LOBYTE(v69[0]) = 12;
      sub_1DB09E154();
      v57 = *(v3 + v66[17]);
      LOBYTE(v69[0]) = 13;
      sub_1DB09E164();
      v58 = (v3 + v66[19]);
      v59 = v58[4];
      __swift_project_boxed_opaque_existential_1(v58, v58[3]);
      LOBYTE(v69[0]) = 15;
      v60 = *(v59 + 16);
      sub_1DB09E194();
      v61 = (v3 + v66[18]);
      v62 = *v61;
      v63 = v61[1];
      LOBYTE(v69[0]) = 14;
      sub_1DB09E104();
      (*(v67 + 8))(v9, v5);
      v22 = v25;
    }

    result = sub_1DAF40780(v22, v18);
  }

  else
  {
    v23 = v15;
    sub_1DB09CE74();

    result = swift_willThrow();
  }

  v28 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1DAFEA3B4()
{
  result = qword_1ECC0F108;
  if (!qword_1ECC0F108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F108);
  }

  return result;
}

unint64_t sub_1DAFEA408()
{
  result = qword_1ECC0F118;
  if (!qword_1ECC0F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F118);
  }

  return result;
}

unint64_t sub_1DAFEA45C()
{
  result = qword_1ECC0F120;
  if (!qword_1ECC0F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F120);
  }

  return result;
}

unint64_t sub_1DAFEA4B0()
{
  result = qword_1ECC0F128;
  if (!qword_1ECC0F128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F128);
  }

  return result;
}

unint64_t sub_1DAFEA504()
{
  result = qword_1ECC0F130;
  if (!qword_1ECC0F130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F130);
  }

  return result;
}

uint64_t sub_1DAFEA558(uint64_t a1)
{
  v2 = type metadata accessor for PregeneratedAssessment();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAFEA5B4()
{
  result = qword_1ECC0F140;
  if (!qword_1ECC0F140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F140);
  }

  return result;
}

unint64_t sub_1DAFEA608()
{
  result = qword_1ECC0F158;
  if (!qword_1ECC0F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F158);
  }

  return result;
}

void sub_1DAFEA684()
{
  sub_1DB09D154();
  if (v0 <= 0x3F)
  {
    sub_1DAFEA774();
    if (v1 <= 0x3F)
    {
      sub_1DAFEA7E8();
      if (v2 <= 0x3F)
      {
        sub_1DAFB7CB0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DAFEA774()
{
  if (!qword_1EE300A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
    v0 = sub_1DB09D664();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE300A48);
    }
  }
}

void sub_1DAFEA7E8()
{
  if (!qword_1EE300A40)
  {
    v0 = sub_1DB09DC64();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE300A40);
    }
  }
}

uint64_t getEnumTagSinglePayload for PregeneratedAssessment.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PregeneratedAssessment.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DAFEA98C()
{
  result = qword_1ECC0F160;
  if (!qword_1ECC0F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F160);
  }

  return result;
}

unint64_t sub_1DAFEA9E4()
{
  result = qword_1ECC0F168;
  if (!qword_1ECC0F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F168);
  }

  return result;
}

unint64_t sub_1DAFEAA3C()
{
  result = qword_1ECC0F170;
  if (!qword_1ECC0F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F170);
  }

  return result;
}

uint64_t sub_1DAFEAA90()
{
  v0 = sub_1DB09E004();

  if (v0 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1DAFEAADC()
{
  result = qword_1ECC0E810;
  if (!qword_1ECC0E810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC0E810);
  }

  return result;
}

uint64_t sub_1DAFEAB28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E178, &qword_1DB09FFB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAFEAB98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t BindingsKeys.rawValue.getter()
{
  result = 0x6D614E7473726966;
  switch(*v0)
  {
    case 1:
      return 0x656D614E7473616CLL;
    case 2:
      return 0x6C69616D65;
    case 3:
      return 0x6D754E656E6F6870;
    case 4:
      return 0x746565727473;
    case 5:
      return 0x31746565727473;
    case 6:
      return 0x32746565727473;
    case 7:
      return 2037672291;
    case 8:
      return 0x6574617473;
    case 9:
      return 0x6F436C6174736F70;
    case 0xA:
      return 0x7972746E756F63;
    case 0xB:
      return 0x437972746E756F63;
    case 0xC:
      return 0x746E756F436F7369;
    case 0xD:
      return 0x4C73736572646461;
    case 0xE:
      return 0x4C73736572646461;
    case 0xF:
      return 0x6E6F685072656570;
    case 0x10:
      return 0x7372694672656570;
    case 0x11:
      return 0x7473614C72656570;
    case 0x12:
    case 0x33:
    case 0x46:
      return 0xD000000000000012;
    case 0x13:
    case 0x2F:
      return 0xD000000000000011;
    case 0x14:
    case 0x16:
    case 0x19:
    case 0x1A:
      return 0x746E656D75636F64;
    case 0x15:
    case 0x1D:
    case 0x2D:
    case 0x3F:
      return 0xD000000000000014;
    case 0x17:
      return 0xD000000000000010;
    case 0x18:
      return 0xD000000000000010;
    case 0x1B:
    case 0x1F:
    case 0x20:
    case 0x34:
    case 0x3E:
      return 0xD000000000000013;
    case 0x1C:
      return 0xD000000000000010;
    case 0x1E:
    case 0x29:
    case 0x3A:
    case 0x44:
      return 0xD000000000000017;
    case 0x21:
      return 0xD000000000000010;
    case 0x22:
      return 0xD000000000000010;
    case 0x23:
      return 0x6947646573726170;
    case 0x24:
      return 0xD000000000000010;
    case 0x25:
      return 0xD000000000000010;
    case 0x26:
      return 0x694E646573726170;
    case 0x27:
    case 0x28:
    case 0x2A:
    case 0x2B:
    case 0x32:
    case 0x45:
      return 0xD000000000000018;
    case 0x2C:
    case 0x39:
    case 0x40:
    case 0x42:
    case 0x43:
      return 0xD000000000000016;
    case 0x2E:
      return 0x6563697665447369;
    case 0x30:
      return 0x614C656369766564;
    case 0x31:
      return 0x6469656C707061;
    case 0x35:
    case 0x37:
    case 0x38:
      v2 = 5;
      goto LABEL_41;
    case 0x36:
    case 0x3D:
      v2 = 9;
      goto LABEL_41;
    case 0x3B:
      return 0xD000000000000010;
    case 0x3C:
      return 0x4C676E696C6C6962;
    case 0x41:
      v2 = 10;
LABEL_41:
      result = v2 | 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DAFEB220()
{

  v0 = sub_1DB09D7D4();
  if (!v1)
  {
    v4 = MEMORY[0x1E69E7CC0];
LABEL_35:

    return v4;
  }

  v2 = v0;
  v3 = v1;
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v2 == 2573 && v3 == 0xE200000000000000 || (result = sub_1DB09E254(), (result & 1) != 0))
    {

      LOBYTE(v13) = 10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_27;
    }

    v7 = (v3 & 0x2000000000000000) != 0 ? HIBYTE(v3) & 0xF : v2 & 0xFFFFFFFFFFFFLL;
    if (!v7)
    {
      break;
    }

    if ((v3 & 0x1000000000000000) != 0)
    {
      v12 = sub_1DB09D774();
    }

    else
    {
      if ((v3 & 0x2000000000000000) != 0)
      {
        v9 = v2;
      }

      else
      {
        if ((v2 & 0x1000000000000000) != 0)
        {
          v8 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v8 = sub_1DB09DEC4();
        }

        v9 = *v8;
      }

      v10 = v9;
      v11 = (__clz(~v9) - 24) << 16;
      if (v10 < 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 65541;
      }
    }

    if (v12 >> 14 == 4 * v7)
    {
      result = sub_1DAFED780(v2, v3);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_38;
      }

      if ((result & 0xFFFFFF80) == 0)
      {
        result = sub_1DAFED780(v2, v3);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_39;
        }

        v13 = result;

        if ((v13 & 0xFFFFFF00) != 0)
        {
          goto LABEL_37;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_27;
        }

LABEL_31:
        v4 = sub_1DAF72FE0(0, *(v4 + 2) + 1, 1, v4);
LABEL_27:
        v15 = *(v4 + 2);
        v14 = *(v4 + 3);
        if (v15 >= v14 >> 1)
        {
          v4 = sub_1DAF72FE0((v14 > 1), v15 + 1, 1, v4);
        }

        *(v4 + 2) = v15 + 1;
        v4[v15 + 32] = v13;
        goto LABEL_4;
      }
    }

LABEL_4:
    v2 = sub_1DB09D7D4();
    v3 = v5;
    if (!v5)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

CoreODIEssentials::BindingsKeys_optional __swiftcall BindingsKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB09E2B4();

  v5 = 0;
  v6 = 53;
  switch(v3)
  {
    case 0:
      goto LABEL_70;
    case 1:
      v5 = 1;
      goto LABEL_70;
    case 2:
      v5 = 2;
      goto LABEL_70;
    case 3:
      v5 = 3;
      goto LABEL_70;
    case 4:
      v5 = 4;
      goto LABEL_70;
    case 5:
      v5 = 5;
      goto LABEL_70;
    case 6:
      v5 = 6;
      goto LABEL_70;
    case 7:
      v5 = 7;
      goto LABEL_70;
    case 8:
      v5 = 8;
      goto LABEL_70;
    case 9:
      v5 = 9;
      goto LABEL_70;
    case 10:
      v5 = 10;
      goto LABEL_70;
    case 11:
      v5 = 11;
      goto LABEL_70;
    case 12:
      v5 = 12;
      goto LABEL_70;
    case 13:
      v5 = 13;
      goto LABEL_70;
    case 14:
      v5 = 14;
      goto LABEL_70;
    case 15:
      v5 = 15;
      goto LABEL_70;
    case 16:
      v5 = 16;
      goto LABEL_70;
    case 17:
      v5 = 17;
      goto LABEL_70;
    case 18:
      v5 = 18;
      goto LABEL_70;
    case 19:
      v5 = 19;
      goto LABEL_70;
    case 20:
      v5 = 20;
      goto LABEL_70;
    case 21:
      v5 = 21;
      goto LABEL_70;
    case 22:
      v5 = 22;
      goto LABEL_70;
    case 23:
      v5 = 23;
      goto LABEL_70;
    case 24:
      v5 = 24;
      goto LABEL_70;
    case 25:
      v5 = 25;
      goto LABEL_70;
    case 26:
      v5 = 26;
      goto LABEL_70;
    case 27:
      v5 = 27;
      goto LABEL_70;
    case 28:
      v5 = 28;
      goto LABEL_70;
    case 29:
      v5 = 29;
      goto LABEL_70;
    case 30:
      v5 = 30;
      goto LABEL_70;
    case 31:
      v5 = 31;
      goto LABEL_70;
    case 32:
      v5 = 32;
      goto LABEL_70;
    case 33:
      v5 = 33;
      goto LABEL_70;
    case 34:
      v5 = 34;
      goto LABEL_70;
    case 35:
      v5 = 35;
      goto LABEL_70;
    case 36:
      v5 = 36;
      goto LABEL_70;
    case 37:
      v5 = 37;
      goto LABEL_70;
    case 38:
      v5 = 38;
      goto LABEL_70;
    case 39:
      v5 = 39;
      goto LABEL_70;
    case 40:
      v5 = 40;
      goto LABEL_70;
    case 41:
      v5 = 41;
      goto LABEL_70;
    case 42:
      v5 = 42;
      goto LABEL_70;
    case 43:
      v5 = 43;
      goto LABEL_70;
    case 44:
      v5 = 44;
      goto LABEL_70;
    case 45:
      v5 = 45;
      goto LABEL_70;
    case 46:
      v5 = 46;
      goto LABEL_70;
    case 47:
      v5 = 47;
      goto LABEL_70;
    case 48:
      v5 = 48;
      goto LABEL_70;
    case 49:
      v5 = 49;
      goto LABEL_70;
    case 50:
      v5 = 50;
      goto LABEL_70;
    case 51:
      v5 = 51;
      goto LABEL_70;
    case 52:
      v5 = 52;
LABEL_70:
      v6 = v5;
      break;
    case 53:
      break;
    case 54:
      v6 = 54;
      break;
    case 55:
      v6 = 55;
      break;
    case 56:
      v6 = 56;
      break;
    case 57:
      v6 = 57;
      break;
    case 58:
      v6 = 58;
      break;
    case 59:
      v6 = 59;
      break;
    case 60:
      v6 = 60;
      break;
    case 61:
      v6 = 61;
      break;
    case 62:
      v6 = 62;
      break;
    case 63:
      v6 = 63;
      break;
    case 64:
      v6 = 64;
      break;
    case 65:
      v6 = 65;
      break;
    case 66:
      v6 = 66;
      break;
    case 67:
      v6 = 67;
      break;
    case 68:
      v6 = 68;
      break;
    case 69:
      v6 = 69;
      break;
    case 70:
      v6 = 70;
      break;
    default:
      v6 = 71;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1DAFEB718(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = BindingsKeys.rawValue.getter();
  v4 = v3;
  if (v2 == BindingsKeys.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1DB09E254();
  }

  return v7 & 1;
}

uint64_t sub_1DAFEB7B4()
{
  v1 = *v0;
  sub_1DB09E3A4();
  BindingsKeys.rawValue.getter();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DAFEB81C()
{
  v2 = *v0;
  BindingsKeys.rawValue.getter();
  sub_1DB09D794();
}

uint64_t sub_1DAFEB880()
{
  v1 = *v0;
  sub_1DB09E3A4();
  BindingsKeys.rawValue.getter();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

unint64_t sub_1DAFEB8F0@<X0>(unint64_t *a1@<X8>)
{
  result = BindingsKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

CoreODIEssentials::BindingsHelpers __swiftcall BindingsHelpers.init()()
{
  *v0 = 45;
  v0[1] = 0xE100000000000000;
  return result;
}

id static BindingsHelpers.isDiagnosticsAllowed.getter()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result effectiveBoolValueForSetting_];

    return (v2 == 1);
  }

  return result;
}

uint64_t static BindingsHelpers.deviceCountryCode.getter()
{
  v0 = sub_1DB09D2A4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E9A0, &qword_1DB0AECB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v19 - v9;
  sub_1DB09D264();
  sub_1DB09D254();
  (*(v1 + 8))(v5, v0);
  v11 = sub_1DB09D244();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1DAF40AEC(v10, &qword_1ECC0E9A0, &qword_1DB0AECB0);
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  else
  {
    v15 = sub_1DB09D1F4();
    v14 = v16;
    (*(v12 + 8))(v10, v11);
    v13 = v15;
  }

  v17 = _s17CoreODIEssentials15BindingsHelpersV25convertCountryCodeToASCII3strSiSS_tFZ_0(v13, v14);

  return v17;
}

uint64_t static BindingsHelpers.asciiDeviceLanguage.getter()
{
  v0 = _s17CoreODIEssentials15BindingsHelpersV14deviceLanguageSSSgvgZ_0();
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v0 = 0;
    v2 = 0xE000000000000000;
  }

  v3 = _s17CoreODIEssentials15BindingsHelpersV26convertLanguageCodeToASCII3strSiSS_tFZ_0(v0, v2);

  return v3;
}

uint64_t BindingsHelpers.getNameComponents(firstName:lastName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DB09CE54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v35 - v16;
  v18 = MEMORY[0x1E69E7CC8];
  v35[2] = a2;
  v36 = MEMORY[0x1E69E7CC8];
  v35[1] = a1;

  MEMORY[0x1E127FE90](32, 0xE100000000000000);

  MEMORY[0x1E127FE90](a3, a4);

  v19 = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init];
  v20 = sub_1DB09D6B4();

  v21 = [v19 personNameComponentsFromString_];

  if (v21)
  {
    sub_1DB09CE34();

    (*(v9 + 32))(v17, v14, v8);
    v22 = sub_1DB09CE14();
    sub_1DAF34124(v22, v23, 0xD000000000000010, 0x80000001DB0C11F0);
    v24 = sub_1DB09CDF4();
    sub_1DAF34124(v24, v25, 0xD000000000000010, 0x80000001DB0C11A0);
    v26 = sub_1DB09CDE4();
    sub_1DAF34124(v26, v27, 0x6947646573726170, 0xEF656D614E6E6576);
    v28 = sub_1DB09CE04();
    sub_1DAF34124(v28, v29, 0xD000000000000010, 0x80000001DB0C11D0);
    v30 = sub_1DB09CE24();
    sub_1DAF34124(v30, v31, 0xD000000000000010, 0x80000001DB0C1210);
    v32 = sub_1DB09CE44();
    sub_1DAF34124(v32, v33, 0x694E646573726170, 0xEE00656D614E6B63);
    (*(v9 + 8))(v17, v8);
    return v36;
  }

  return v18;
}

uint64_t sub_1DAFEBEB8@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;
  v5 = v2[1];
  v62 = *v2;
  v63 = v5;
  LOBYTE(v60) = 6;
  swift_bridgeObjectRetain_n();
  CoreODILogger.debug(_:category:)(0xD000000000000023, 0x80000001DB0C8710, &v60);

  ODIBindingsDict.init(dictionaryLiteral:)(MEMORY[0x1E69E7CC0], &v66);
  *&v59[0] = v4;
  LOBYTE(v60) = 0;
  ODIBindingsDict.subscript.getter(&v60, &v62);
  if (!v64)
  {
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = v60;
  *&v59[0] = v4;
  LOBYTE(v60) = 1;
  ODIBindingsDict.subscript.getter(&v60, &v62);
  if (!v64)
  {

LABEL_7:
    sub_1DAF40AEC(&v62, &qword_1ECC0E178, &qword_1DB09FFB0);
    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {

    v8 = v60;

    v9 = BindingsHelpers.getNameComponents(firstName:lastName:)(v7, *(&v7 + 1), v8, *(&v8 + 1));

    v10 = sub_1DAF5630C(v9);

    v66 = v10;
    goto LABEL_9;
  }

LABEL_8:
  v62 = v6;
  v63 = v5;
  LOBYTE(v60) = 6;
  CoreODILogger.info(_:category:)(0xD000000000000028, 0x80000001DB0C8740, &v60);

LABEL_9:
  *&v59[0] = v4;
  LOBYTE(v60) = 18;
  ODIBindingsDict.subscript.getter(&v60, &v62);
  if (!v64)
  {
LABEL_18:
    sub_1DAF40AEC(&v62, &qword_1ECC0E178, &qword_1DB09FFB0);
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v62 = v6;
    v63 = v5;
    LOBYTE(v60) = 6;
    CoreODILogger.info(_:category:)(0xD00000000000002CLL, 0x80000001DB0C8770, &v60);
LABEL_20:

    goto LABEL_21;
  }

  v11 = v60;
  *&v59[0] = v4;
  LOBYTE(v60) = 19;
  ODIBindingsDict.subscript.getter(&v60, &v62);
  if (!v64)
  {

    goto LABEL_18;
  }

  v12 = MEMORY[0x1E69E6158];
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_19;
  }

  v13 = BindingsHelpers.getNameComponents(firstName:lastName:)(v11, *(&v11 + 1), v60, *(&v60 + 1));

  if (!*(v13 + 16))
  {
    goto LABEL_20;
  }

  v14 = sub_1DAF35210(0xD000000000000010, 0x80000001DB0C11F0);
  if (v15)
  {
    v16 = (*(v13 + 56) + 16 * v14);
    v17 = *v16;
    v18 = v16[1];
    v64 = v12;
    v65 = MEMORY[0x1E69E6168];
    v62 = v17;
    v63 = v18;
    sub_1DAFEAB28(&v62, &v60);
    if (v61)
    {
      sub_1DAF332B8(&v60, v59);

      v19 = v66;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3ADF4(v59, 0xD000000000000018, 0x80000001DB0C1AA0, isUniquelyReferenced_nonNull_native);

      v66 = v19;
    }

    else
    {

      sub_1DAF40AEC(&v60, &qword_1ECC0E178, &qword_1DB09FFB0);
      sub_1DB07F73C(0xD000000000000018, 0x80000001DB0C1AA0, v59);
      sub_1DAF40AEC(v59, &qword_1ECC0E178, &qword_1DB09FFB0);
    }

    sub_1DAF40AEC(&v62, &qword_1ECC0E178, &qword_1DB09FFB0);
  }

  if (!*(v13 + 16))
  {
    goto LABEL_20;
  }

  v24 = sub_1DAF35210(0xD000000000000010, 0x80000001DB0C11A0);
  if (v25)
  {
    v26 = (*(v13 + 56) + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v64 = v12;
    v65 = MEMORY[0x1E69E6168];
    v62 = v27;
    v63 = v28;
    sub_1DAFEAB28(&v62, &v60);
    if (v61)
    {
      sub_1DAF332B8(&v60, v59);

      v29 = v66;
      v30 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3ADF4(v59, 0xD000000000000018, 0x80000001DB0C1AC0, v30);

      v66 = v29;
    }

    else
    {

      sub_1DAF40AEC(&v60, &qword_1ECC0E178, &qword_1DB09FFB0);
      sub_1DB07F73C(0xD000000000000018, 0x80000001DB0C1AC0, v59);
      sub_1DAF40AEC(v59, &qword_1ECC0E178, &qword_1DB09FFB0);
    }

    sub_1DAF40AEC(&v62, &qword_1ECC0E178, &qword_1DB09FFB0);
  }

  if (!*(v13 + 16))
  {
    goto LABEL_20;
  }

  v31 = sub_1DAF35210(0x6947646573726170, 0xEF656D614E6E6576);
  if (v32)
  {
    v33 = (*(v13 + 56) + 16 * v31);
    v34 = *v33;
    v35 = v33[1];
    v64 = v12;
    v65 = MEMORY[0x1E69E6168];
    v62 = v34;
    v63 = v35;
    sub_1DAFEAB28(&v62, &v60);
    if (v61)
    {
      sub_1DAF332B8(&v60, v59);

      v36 = v66;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3ADF4(v59, 0xD000000000000017, 0x80000001DB0C1AE0, v37);

      v66 = v36;
    }

    else
    {

      sub_1DAF40AEC(&v60, &qword_1ECC0E178, &qword_1DB09FFB0);
      sub_1DB07F73C(0xD000000000000017, 0x80000001DB0C1AE0, v59);
      sub_1DAF40AEC(v59, &qword_1ECC0E178, &qword_1DB09FFB0);
    }

    sub_1DAF40AEC(&v62, &qword_1ECC0E178, &qword_1DB09FFB0);
  }

  if (!*(v13 + 16))
  {
    goto LABEL_20;
  }

  v38 = sub_1DAF35210(0xD000000000000010, 0x80000001DB0C11D0);
  if (v39)
  {
    v40 = (*(v13 + 56) + 16 * v38);
    v41 = *v40;
    v42 = v40[1];
    v64 = v12;
    v65 = MEMORY[0x1E69E6168];
    v62 = v41;
    v63 = v42;
    sub_1DAFEAB28(&v62, &v60);
    if (v61)
    {
      sub_1DAF332B8(&v60, v59);

      v43 = v66;
      v44 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3ADF4(v59, 0xD000000000000018, 0x80000001DB0C1B00, v44);

      v66 = v43;
    }

    else
    {

      sub_1DAF40AEC(&v60, &qword_1ECC0E178, &qword_1DB09FFB0);
      sub_1DB07F73C(0xD000000000000018, 0x80000001DB0C1B00, v59);
      sub_1DAF40AEC(v59, &qword_1ECC0E178, &qword_1DB09FFB0);
    }

    sub_1DAF40AEC(&v62, &qword_1ECC0E178, &qword_1DB09FFB0);
  }

  if (!*(v13 + 16))
  {
    goto LABEL_20;
  }

  v45 = sub_1DAF35210(0xD000000000000010, 0x80000001DB0C1210);
  if (v46)
  {
    v47 = (*(v13 + 56) + 16 * v45);
    v48 = *v47;
    v49 = v47[1];
    v64 = v12;
    v65 = MEMORY[0x1E69E6168];
    v62 = v48;
    v63 = v49;
    sub_1DAFEAB28(&v62, &v60);
    if (v61)
    {
      sub_1DAF332B8(&v60, v59);

      v50 = v66;
      v51 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3ADF4(v59, 0xD000000000000018, 0x80000001DB0C1B20, v51);

      v66 = v50;
    }

    else
    {

      sub_1DAF40AEC(&v60, &qword_1ECC0E178, &qword_1DB09FFB0);
      sub_1DB07F73C(0xD000000000000018, 0x80000001DB0C1B20, v59);
      sub_1DAF40AEC(v59, &qword_1ECC0E178, &qword_1DB09FFB0);
    }

    sub_1DAF40AEC(&v62, &qword_1ECC0E178, &qword_1DB09FFB0);
  }

  if (!*(v13 + 16))
  {
    goto LABEL_20;
  }

  v52 = sub_1DAF35210(0x694E646573726170, 0xEE00656D614E6B63);
  if ((v53 & 1) == 0)
  {
    goto LABEL_20;
  }

  v54 = (*(v13 + 56) + 16 * v52);
  v56 = *v54;
  v55 = v54[1];

  v64 = v12;
  v65 = MEMORY[0x1E69E6168];
  v62 = v56;
  v63 = v55;
  sub_1DAFEAB28(&v62, &v60);
  if (v61)
  {
    sub_1DAF332B8(&v60, v59);
    v57 = v66;
    v58 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3ADF4(v59, 0xD000000000000016, 0x80000001DB0C1B40, v58);

    v66 = v57;
  }

  else
  {
    sub_1DAF40AEC(&v60, &qword_1ECC0E178, &qword_1DB09FFB0);
    sub_1DB07F73C(0xD000000000000016, 0x80000001DB0C1B40, v59);
    sub_1DAF40AEC(v59, &qword_1ECC0E178, &qword_1DB09FFB0);
  }

  sub_1DAF40AEC(&v62, &qword_1ECC0E178, &qword_1DB09FFB0);
LABEL_21:
  v62 = 0x657261685369646FLL;
  v63 = 0xEF726567676F4C64;
  *&v60 = 0;
  *(&v60 + 1) = 0xE000000000000000;
  sub_1DB09DE44();

  *&v60 = 0x2064657373657547;
  *(&v60 + 1) = 0xE800000000000000;
  *&v59[0] = *(v66 + 16);
  v21 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v21);

  MEMORY[0x1E127FE90](0xD000000000000010, 0x80000001DB0C87A0);
  v22 = v60;
  LOBYTE(v60) = 5;
  CoreODILogger.debug(_:category:)(v22, *(&v60 + 1), &v60);

  *a2 = v66;
  return result;
}

uint64_t BindingsHelpers.getStaticBindings(bindings:excludeAppleID:)(uint64_t a1, char a2)
{
  *(v3 + 568) = a2;
  *(v3 + 448) = a1;
  v4 = sub_1DB09D284();
  *(v3 + 456) = v4;
  v5 = *(v4 - 8);
  *(v3 + 464) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 472) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E998, &qword_1DB0A8B40) - 8) + 64) + 15;
  *(v3 + 480) = swift_task_alloc();
  v8 = sub_1DB09D2A4();
  *(v3 + 488) = v8;
  v9 = *(v8 - 8);
  *(v3 + 496) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 504) = swift_task_alloc();
  *(v3 + 512) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E9A0, &qword_1DB0AECB0) - 8) + 64) + 15;
  *(v3 + 520) = swift_task_alloc();
  v12 = v2[1];
  *(v3 + 528) = *v2;
  *(v3 + 536) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1DAFECB50, 0, 0);
}

uint64_t sub_1DAFECB50()
{
  v60 = v0;
  v1 = [objc_opt_self() sharedConnection];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 effectiveBoolValueForSetting_];

    v4 = v3 == 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 520);
  v6 = *(v0 + 512);
  v7 = *(v0 + 488);
  v8 = *(v0 + 496);
  v9 = *(v0 + 448);
  v10 = MEMORY[0x1E69E6370];
  v11 = MEMORY[0x1E69E6380];
  *(v0 + 40) = MEMORY[0x1E69E6370];
  *(v0 + 48) = v11;
  *(v0 + 16) = v4;
  sub_1DAFEAB28(v0 + 16, v0 + 56);
  sub_1DAF33DDC(v0 + 56, 0xD000000000000014, 0x80000001DB0C1300);
  sub_1DAF40AEC(v0 + 16, &qword_1ECC0E178, &qword_1DB09FFB0);
  v12 = MKBGetDeviceLockState() - 1 < 2;
  *(v0 + 120) = v10;
  *(v0 + 128) = v11;
  *(v0 + 96) = v12;
  sub_1DAFEAB28(v0 + 96, v0 + 136);
  sub_1DAF33DDC(v0 + 136, 0x6563697665447369, 0xEE0064656B636F4CLL);
  sub_1DAF40AEC(v0 + 96, &qword_1ECC0E178, &qword_1DB09FFB0);
  sub_1DB09D264();
  sub_1DB09D254();
  v56 = *(v8 + 8);
  v56(v6, v7);
  v13 = sub_1DB09D244();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v5, 1, v13);
  v16 = *(v0 + 520);
  if (v15 == 1)
  {
    sub_1DAF40AEC(*(v0 + 520), &qword_1ECC0E9A0, &qword_1DB0AECB0);
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  else
  {
    v19 = *(v0 + 520);
    v20 = sub_1DB09D1F4();
    v18 = v21;
    (*(v14 + 8))(v16, v13);
    v17 = v20;
  }

  v22 = *(v0 + 504);
  v23 = *(v0 + 480);
  v24 = *(v0 + 488);
  v26 = *(v0 + 464);
  v25 = *(v0 + 472);
  v27 = *(v0 + 448);
  v28 = *(v0 + 456);
  v29 = _s17CoreODIEssentials15BindingsHelpersV25convertCountryCodeToASCII3strSiSS_tFZ_0(v17, v18);

  v30 = MEMORY[0x1E69E6540];
  *(v0 + 200) = MEMORY[0x1E69E6530];
  *(v0 + 208) = v30;
  *(v0 + 176) = v29;
  sub_1DAFEAB28(v0 + 176, v0 + 216);
  sub_1DAF33DDC(v0 + 216, 0xD000000000000011, 0x80000001DB0C1320);
  sub_1DAF40AEC(v0 + 176, &qword_1ECC0E178, &qword_1DB09FFB0);
  sub_1DB09D264();
  sub_1DB09D294();
  v56(v22, v24);
  sub_1DB09D274();
  (*(v26 + 8))(v25, v28);
  v31 = sub_1DB09D204();
  v32 = *(v31 - 8);
  v33 = (*(v32 + 48))(v23, 1, v31);
  v34 = *(v0 + 480);
  if (v33 == 1)
  {
    sub_1DAF40AEC(*(v0 + 480), &qword_1ECC0E998, &qword_1DB0A8B40);
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0;
  }

  else
  {
    v35 = sub_1DB09D1F4();
    v36 = MEMORY[0x1E69E6168];
    *(v0 + 280) = MEMORY[0x1E69E6158];
    *(v0 + 288) = v36;
    *(v0 + 256) = v35;
    *(v0 + 264) = v37;
    (*(v32 + 8))(v34, v31);
  }

  v38 = *(v0 + 568);
  v39 = *(v0 + 448);
  sub_1DAFEAB28(v0 + 256, v0 + 296);
  sub_1DAF33DDC(v0 + 296, 0x614C656369766564, 0xEE0065676175676ELL);
  sub_1DAF40AEC(v0 + 256, &qword_1ECC0E178, &qword_1DB09FFB0);
  if (v38)
  {
    v40 = *(v0 + 536);
    v41 = *(v0 + 448);
    v58[0] = *(v0 + 528);
    v58[1] = v40;
    v59 = *v41;

    sub_1DAFEBEB8(&v59, &v57);

    v42 = v57;

    v43 = *v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58[0] = *v41;
    *v41 = 0x8000000000000000;
    sub_1DAF3FF70(v42, sub_1DAF3DDCC, 0, isUniquelyReferenced_nonNull_native, v58);

    v47 = *(v0 + 520);
    v49 = *(v0 + 504);
    v48 = *(v0 + 512);
    v51 = *(v0 + 472);
    v50 = *(v0 + 480);
    v52 = *(v0 + 448);

    v53 = v58[0];
    v54 = *v52;

    *v52 = v53;

    v55 = *(v0 + 8);

    return v55();
  }

  else
  {
    if (qword_1EE302B50 != -1)
    {
      swift_once();
    }

    v45 = swift_task_alloc();
    *(v0 + 544) = v45;
    *v45 = v0;
    v45[1] = sub_1DAFED188;

    return sub_1DB04CF14();
  }
}

uint64_t sub_1DAFED188(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 544);
  v7 = *v2;
  *(v3 + 552) = a1;
  *(v3 + 560) = v1;

  if (v1)
  {
    v5 = sub_1DAFED4C8;
  }

  else
  {
    v5 = sub_1DAFED2A0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DAFED2A0()
{
  v30 = v0;
  v1 = *(v0 + 552);
  if (v1)
  {
    v2 = [*(v0 + 552) appleID];

    if (v2)
    {
      v3 = *(v0 + 448);
      v4 = sub_1DB09D6C4();
      v6 = v5;

      v7 = MEMORY[0x1E69E6168];
      *(v0 + 360) = MEMORY[0x1E69E6158];
      *(v0 + 368) = v7;
      *(v0 + 336) = v4;
      *(v0 + 344) = v6;
      sub_1DAFEAB28(v0 + 336, v0 + 376);
      sub_1DAF33DDC(v0 + 376, 0x6469656C707061, 0xE700000000000000);
      sub_1DAF40AEC(v0 + 336, &qword_1ECC0E178, &qword_1DB09FFB0);
    }
  }

  v8 = *(v0 + 560);
  v9 = *(v0 + 536);
  v10 = *(v0 + 448);
  v28[0] = *(v0 + 528);
  v28[1] = v9;
  v29 = *v10;

  sub_1DAFEBEB8(&v29, &v27);

  v11 = v27;

  v12 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28[0] = *v10;
  *v10 = 0x8000000000000000;
  sub_1DAF3FF70(v11, sub_1DAF3DDCC, 0, isUniquelyReferenced_nonNull_native, v28);

  if (v8)
  {
    v14 = *(v0 + 448);

    v15 = v28[0];
    v16 = *v14;

    *v14 = v15;
  }

  else
  {
    v18 = *(v0 + 520);
    v20 = *(v0 + 504);
    v19 = *(v0 + 512);
    v22 = *(v0 + 472);
    v21 = *(v0 + 480);
    v23 = *(v0 + 448);

    v24 = v28[0];
    v25 = *v23;

    *v23 = v24;

    v26 = *(v0 + 8);

    return v26();
  }

  return result;
}

uint64_t sub_1DAFED4C8()
{
  v26 = v0;
  v1 = v0[70];
  v2 = v0[67];
  v22[0] = v0[66];
  v22[1] = v2;

  sub_1DB09DE44();

  v24 = 0xD000000000000017;
  v25 = 0x80000001DB0C86F0;
  swift_getErrorValue();
  v4 = v0[52];
  v3 = v0[53];
  v5 = v0[54];
  v6 = sub_1DB09E324();
  MEMORY[0x1E127FE90](v6);

  LOBYTE(v24) = 6;
  CoreODILogger.error(_:category:)(0xD000000000000017, 0x80000001DB0C86F0, &v24);

  v7 = v0[67];
  v8 = v0[56];
  v24 = v0[66];
  v25 = v7;
  v22[0] = *v8;

  sub_1DAFEBEB8(v22, &v23);

  v9 = v23;

  v10 = *v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v8;
  *v8 = 0x8000000000000000;
  sub_1DAF3FF70(v9, sub_1DAF3DDCC, 0, isUniquelyReferenced_nonNull_native, &v24);

  v12 = v0[65];
  v14 = v0[63];
  v13 = v0[64];
  v16 = v0[59];
  v15 = v0[60];
  v17 = v0[56];

  v18 = v24;
  v19 = *v17;

  *v17 = v18;

  v20 = v0[1];

  return v20();
}

uint64_t sub_1DAFED704(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1DB09D824();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1E127FED0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_1DAFED780(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1DAFED8D0(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1DB09DE34();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1DB09DEC4() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_1DAFED8D0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1DAFED968(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1DAFED9DC(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1DAFED968(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1DAFED704(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1DAFED9DC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1DB09DEC4();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t _s17CoreODIEssentials15BindingsHelpersV25convertCountryCodeToASCII3strSiSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1DB09D7A4() != 2)
  {
    v46 = 0x657261685369646FLL;
    v47 = 0xEF726567676F4C64;
    v44 = 5;
    v45 = 0xE000000000000000;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD00000000000001FLL, 0x80000001DB0C88C0);
    MEMORY[0x1E127FE90](a1, a2);
    MEMORY[0x1E127FE90](0xD000000000000020, 0x80000001DB0C8850);
    CoreODILogger.debug(_:category:)(0, 0xE000000000000000, &v44);

    return -1;
  }

  v4 = sub_1DAFEB220();
  v5 = *(v4 + 16);
  if (v5)
  {
    v46 = MEMORY[0x1E69E7CC0];
    sub_1DAF5F4FC(0, v5, 0);
    v6 = 32;
    v7 = v46;
    do
    {
      LOBYTE(v44) = *(v4 + v6);
      v8 = sub_1DB09E1D4();
      v46 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        v43 = v8;
        v13 = v9;
        sub_1DAF5F4FC((v10 > 1), v11 + 1, 1);
        v9 = v13;
        v8 = v43;
        v7 = v46;
      }

      *(v7 + 16) = v11 + 1;
      v12 = v7 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      ++v6;
      --v5;
    }

    while (v5);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v46 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
  sub_1DAF639B4();
  v15 = sub_1DB09D694();
  v17 = v16;

  v19 = HIBYTE(v17) & 0xF;
  v20 = v15 & 0xFFFFFFFFFFFFLL;
  if ((v17 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v17) & 0xF;
  }

  else
  {
    v21 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

    v14 = -1;
LABEL_74:
    v46 = 0x657261685369646FLL;
    v47 = 0xEF726567676F4C64;
    sub_1DB09DE44();

    v44 = 0xD000000000000005;
    v45 = 0x80000001DB0C88E0;
    MEMORY[0x1E127FE90](a1, a2);
    MEMORY[0x1E127FE90](0xD000000000000011, 0x80000001DB0C88A0);
    v41 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v41);

    CoreODILogger.debug(_:category:)(0xD000000000000018, 0x80000001DB0C88E0, &v44);

    return v14;
  }

  if ((v17 & 0x1000000000000000) != 0)
  {
    LOBYTE(v44) = 0;
    v14 = sub_1DB04059C(v15, v17, 10);
    v40 = v42;
LABEL_72:

    if (v40)
    {
      v14 = -1;
    }

    goto LABEL_74;
  }

  if ((v17 & 0x2000000000000000) == 0)
  {
    if ((v15 & 0x1000000000000000) != 0)
    {
      result = (v17 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1DB09DEC4();
    }

    v22 = *result;
    if (v22 == 43)
    {
      if (v20 >= 1)
      {
        v19 = v20 - 1;
        if (v20 != 1)
        {
          v14 = 0;
          if (result)
          {
            v29 = (result + 1);
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                goto LABEL_70;
              }

              v31 = 10 * v14;
              if ((v14 * 10) >> 64 != (10 * v14) >> 63)
              {
                goto LABEL_70;
              }

              v14 = v31 + v30;
              if (__OFADD__(v31, v30))
              {
                goto LABEL_70;
              }

              ++v29;
              if (!--v19)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_62;
        }

        goto LABEL_70;
      }

      goto LABEL_81;
    }

    if (v22 != 45)
    {
      if (v20)
      {
        v14 = 0;
        if (result)
        {
          while (1)
          {
            v35 = *result - 48;
            if (v35 > 9)
            {
              goto LABEL_70;
            }

            v36 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              goto LABEL_70;
            }

            v14 = v36 + v35;
            if (__OFADD__(v36, v35))
            {
              goto LABEL_70;
            }

            ++result;
            if (!--v20)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_70:
      v14 = 0;
      LOBYTE(v19) = 1;
      goto LABEL_71;
    }

    if (v20 >= 1)
    {
      v19 = v20 - 1;
      if (v20 != 1)
      {
        v14 = 0;
        if (result)
        {
          v23 = (result + 1);
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              goto LABEL_70;
            }

            v25 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              goto LABEL_70;
            }

            v14 = v25 - v24;
            if (__OFSUB__(v25, v24))
            {
              goto LABEL_70;
            }

            ++v23;
            if (!--v19)
            {
              goto LABEL_71;
            }
          }
        }

LABEL_62:
        LOBYTE(v19) = 0;
LABEL_71:
        LOBYTE(v44) = v19;
        v40 = v19;
        goto LABEL_72;
      }

      goto LABEL_70;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v46 = v15;
  v47 = v17 & 0xFFFFFFFFFFFFFFLL;
  if (v15 != 43)
  {
    if (v15 != 45)
    {
      if (v19)
      {
        v14 = 0;
        v37 = &v46;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            break;
          }

          v39 = 10 * v14;
          if ((v14 * 10) >> 64 != (10 * v14) >> 63)
          {
            break;
          }

          v14 = v39 + v38;
          if (__OFADD__(v39, v38))
          {
            break;
          }

          v37 = (v37 + 1);
          if (!--v19)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    if (v19)
    {
      if (--v19)
      {
        v14 = 0;
        v26 = &v46 + 1;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = 10 * v14;
          if ((v14 * 10) >> 64 != (10 * v14) >> 63)
          {
            break;
          }

          v14 = v28 - v27;
          if (__OFSUB__(v28, v27))
          {
            break;
          }

          ++v26;
          if (!--v19)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    goto LABEL_80;
  }

  if (v19)
  {
    if (--v19)
    {
      v14 = 0;
      v32 = &v46 + 1;
      while (1)
      {
        v33 = *v32 - 48;
        if (v33 > 9)
        {
          break;
        }

        v34 = 10 * v14;
        if ((v14 * 10) >> 64 != (10 * v14) >> 63)
        {
          break;
        }

        v14 = v34 + v33;
        if (__OFADD__(v34, v33))
        {
          break;
        }

        ++v32;
        if (!--v19)
        {
          goto LABEL_71;
        }
      }
    }

    goto LABEL_70;
  }

LABEL_82:
  __break(1u);
  return result;
}

uint64_t _s17CoreODIEssentials15BindingsHelpersV14deviceLanguageSSSgvgZ_0()
{
  v0 = sub_1DB09D284();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DB09D2A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E998, &qword_1DB0A8B40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = &v21 - v15;
  sub_1DB09D264();
  sub_1DB09D294();
  (*(v7 + 8))(v11, v6);
  sub_1DB09D274();
  (*(v1 + 8))(v5, v0);
  v17 = sub_1DB09D204();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1DAF40AEC(v16, &qword_1ECC0E998, &qword_1DB0A8B40);
    return 0;
  }

  else
  {
    v20 = sub_1DB09D1F4();
    (*(v18 + 8))(v16, v17);
    return v20;
  }
}

uint64_t _s17CoreODIEssentials15BindingsHelpersV26convertLanguageCodeToASCII3strSiSS_tFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  v29 = a1;
  v30 = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v31 = 0;
  v32 = v4;

  v5 = sub_1DB09D7D4();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = MEMORY[0x1E69E7CC0];
    while (v7 != 2573 || v8 != 0xE200000000000000)
    {
      result = sub_1DB09E254();
      if (result)
      {
        break;
      }

      if ((v8 & 0x2000000000000000) != 0)
      {
        v12 = HIBYTE(v8) & 0xF;
      }

      else
      {
        v12 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (!v12)
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        return result;
      }

      if ((v8 & 0x1000000000000000) != 0)
      {
        v17 = sub_1DB09D774();
      }

      else
      {
        if ((v8 & 0x2000000000000000) != 0)
        {
          v14 = v7;
        }

        else
        {
          if ((v7 & 0x1000000000000000) != 0)
          {
            v13 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v13 = sub_1DB09DEC4();
          }

          v14 = *v13;
        }

        v15 = v14;
        v16 = (__clz(~v14) - 24) << 16;
        if (v15 < 0)
        {
          v17 = v16;
        }

        else
        {
          v17 = 65541;
        }
      }

      if (v17 >> 14 == 4 * v12)
      {
        result = sub_1DAFED780(v7, v8);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_51;
        }

        if ((result & 0xFFFFFF80) == 0)
        {
          result = sub_1DAFED780(v7, v8);
          if ((result & 0x100000000) != 0)
          {
            goto LABEL_52;
          }

          v18 = result;

          if ((v18 & 0xFFFFFF00) != 0)
          {
            goto LABEL_49;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_29;
          }

LABEL_33:
          v9 = sub_1DAF72FE0(0, *(v9 + 2) + 1, 1, v9);
LABEL_29:
          v20 = *(v9 + 2);
          v19 = *(v9 + 3);
          if (v20 >= v19 >> 1)
          {
            v9 = sub_1DAF72FE0((v19 > 1), v20 + 1, 1, v9);
          }

          *(v9 + 2) = v20 + 1;
          v9[v20 + 32] = v18;
          goto LABEL_6;
        }
      }

LABEL_6:
      v7 = sub_1DB09D7D4();
      v8 = v10;
      if (!v10)
      {
        goto LABEL_37;
      }
    }

    LOBYTE(v18) = 10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_37:

  v21 = *(v9 + 2);
  if (v21 <= 4 && (result = sub_1DB09D7A4(), v21 == result))
  {
    v22 = *(v9 + 2);
    if (v22)
    {
      v23 = 0;
      v24 = (v9 + 32);
      while ((v23 * 1000) >> 64 == (1000 * v23) >> 63)
      {
        v25 = *v24++;
        v23 = 1000 * v23 + v25;
        if (!--v22)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_50;
    }

    v23 = 0;
LABEL_46:

    v29 = 0x657261685369646FLL;
    v30 = 0xEF726567676F4C64;
    sub_1DB09DE44();

    v27 = 0xD000000000000005;
    v28 = 0x80000001DB0C8880;
    MEMORY[0x1E127FE90](a1, a2);
    MEMORY[0x1E127FE90](0xD000000000000011, 0x80000001DB0C88A0);
    v26 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v26);

    CoreODILogger.debug(_:category:)(0xD000000000000019, 0x80000001DB0C8880, &v27);
  }

  else
  {

    v29 = 0x657261685369646FLL;
    v30 = 0xEF726567676F4C64;
    v27 = 5;
    v28 = 0xE000000000000000;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD000000000000020, 0x80000001DB0C8820);
    MEMORY[0x1E127FE90](a1, a2);
    MEMORY[0x1E127FE90](0xD000000000000020, 0x80000001DB0C8850);
    CoreODILogger.debug(_:category:)(0, 0xE000000000000000, &v27);

    return -1;
  }

  return v23;
}

uint64_t sub_1DAFEE7F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E9A0, &qword_1DB0AECB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v4 = &v16 - v3;
  v5 = sub_1DB09D2A4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() currentLocale];
  sub_1DB09D224();

  sub_1DB09D254();
  v12 = sub_1DB09D244();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v4, 1, v12) == 1)
  {
    sub_1DAF40AEC(v4, &qword_1ECC0E9A0, &qword_1DB0AECB0);
  }

  else
  {
    sub_1DB09D1F4();
    (*(v13 + 8))(v4, v12);
  }

  v14 = sub_1DB09D6B4();

  (*(v6 + 8))(v10, v5);
  return v14;
}

uint64_t _s17CoreODIEssentials15BindingsHelpersV17formatPhoneNumber05phoneG016usingCountryCodeSSSgSS_So8NSStringCSgtFZ_0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000019, 0x80000001DB0C87C0);
  MEMORY[0x1E127FE90](a1, a2);
  MEMORY[0x1E127FE90](0xD00000000000001CLL, 0x80000001DB0C87E0);
  if (qword_1EE3019A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1DB09D4B4();
  v7 = __swift_project_value_buffer(v6, qword_1EE30A080);

  sub_1DB0163B8(v7, 0x657261685369646FLL, 0xEF726567676F4C64, 0, 0xE000000000000000);
  swift_bridgeObjectRelease_n();
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = sub_1DAFEE7F0();
  }

  v25 = 0x657261685369646FLL;
  v26 = 0xEF726567676F4C64;
  v9 = a3;
  sub_1DB09DE44();

  strcpy(v24, "Country Code: ");
  HIBYTE(v24[1]) = -18;
  v10 = sub_1DB09D6C4();
  MEMORY[0x1E127FE90](v10);

  v11 = v24[0];
  LOBYTE(v24[0]) = 14;
  CoreODILogger.debug(_:category:)(v11, v24[1], v24);

  v12 = sub_1DB09D6B4();
  v13 = CFPhoneNumberCreate();

  String = CFPhoneNumberCreateString();
  if (String)
  {
    v15 = String;
    v16 = sub_1DB09D6C4();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000018, 0x80000001DB0C8800);
  if (v18)
  {
    v19 = v16;
  }

  else
  {
    v19 = 7104878;
  }

  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0xE300000000000000;
  }

  MEMORY[0x1E127FE90](v19, v20);

  MEMORY[0x1E127FE90](0xD00000000000001CLL, 0x80000001DB0C87E0);
  v21 = v25;
  v22 = v26;

  sub_1DB0163B8(v7, 0x657261685369646FLL, 0xEF726567676F4C64, v21, v22);

  swift_bridgeObjectRelease_n();
  return v16;
}

unint64_t sub_1DAFEED2C()
{
  result = qword_1ECC0F188;
  if (!qword_1ECC0F188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F188);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BindingsKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xBA)
  {
    goto LABEL_17;
  }

  if (a2 + 70 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 70) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 70;
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

      return (*a1 | (v4 << 8)) - 70;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 70;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x47;
  v8 = v6 - 71;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BindingsKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 70 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 70) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xBA)
  {
    v4 = 0;
  }

  if (a2 > 0xB9)
  {
    v5 = ((a2 - 186) >> 8) + 1;
    *result = a2 + 70;
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
    *result = a2 + 70;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1DAFEEEE0(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *&v42 = 0x49444F65726F63;
  *(&v42 + 1) = 0xE700000000000000;
  sub_1DB09DDB4();
  if (*(a1 + 16) && (v4 = sub_1DAF353E0(&v57), (v5 & 1) != 0))
  {
    sub_1DAF409DC(*(a1 + 56) + 32 * v4, v56);
    sub_1DAF4057C(&v57);
    if (swift_dynamicCast())
    {
      v6 = v42;
      v7 = sub_1DB09CC24();
      v8 = *(v7 + 48);
      v9 = *(v7 + 52);
      swift_allocObject();
      sub_1DB09CC14();
      sub_1DAFF33D8();
      sub_1DB09CC04();

      strcpy(&v42, "daemonVersion");
      HIWORD(v42) = -4864;
      sub_1DB09DDB4();
      if (*(a1 + 16) && (v21 = sub_1DAF353E0(v56), (v22 & 1) != 0))
      {
        sub_1DAF409DC(*(a1 + 56) + 32 * v21, &v42);
        sub_1DAF4057C(v56);
        v23 = swift_dynamicCast();
        if (v23)
        {
          v24 = *&v41[0];
        }

        else
        {
          v24 = 0;
        }

        if (v23)
        {
          v25 = *(&v41[0] + 1);
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        sub_1DAF4057C(v56);
        v24 = 0;
        v25 = 0;
      }

      *&v57 = v24;
      *(&v57 + 1) = v25;
      *&v42 = 0x7365727574616566;
      *(&v42 + 1) = 0xE800000000000000;
      sub_1DB09DDB4();
      if (*(a1 + 16) && (v26 = sub_1DAF353E0(v56), (v27 & 1) != 0))
      {
        sub_1DAF409DC(*(a1 + 56) + 32 * v26, &v42);
        sub_1DAF4057C(v56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F1B8, &qword_1DB0AEF00);
        if (swift_dynamicCast())
        {
          v28 = *&v41[0];
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        sub_1DAF4057C(v56);
        v28 = 0;
      }

      *(&v70 + 1) = v28;
      if (qword_1EE304018 != -1)
      {
        swift_once();
      }

      v29 = sub_1DB09D4B4();
      __swift_project_value_buffer(v29, qword_1EE304020);
      v30 = sub_1DB09D494();
      v31 = sub_1DB09DB54();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1DAF16000, v30, v31, "Got config from asd.", v32, 2u);
        MEMORY[0x1E1281810](v32, -1, -1);
      }

      sub_1DAF40780(v6, *(&v6 + 1));

      v41[10] = v67;
      v41[11] = v68;
      v41[12] = v69;
      v41[13] = v70;
      v41[6] = v63;
      v41[7] = v64;
      v41[8] = v65;
      v41[9] = v66;
      v41[2] = v59;
      v41[3] = v60;
      v41[4] = v61;
      v41[5] = v62;
      v41[0] = v57;
      v41[1] = v58;
      v52 = v67;
      v53 = v68;
      v54 = v69;
      v55 = v70;
      v48 = v63;
      v49 = v64;
      v50 = v65;
      v51 = v66;
      v44 = v59;
      v45 = v60;
      v46 = v61;
      v47 = v62;
      v42 = v57;
      v43 = v58;
      nullsub_3(&v42);
      v33 = v53;
      a2[10] = v52;
      a2[11] = v33;
      v34 = v55;
      a2[12] = v54;
      a2[13] = v34;
      v35 = v49;
      a2[6] = v48;
      a2[7] = v35;
      v36 = v51;
      a2[8] = v50;
      a2[9] = v36;
      v37 = v45;
      a2[2] = v44;
      a2[3] = v37;
      v38 = v47;
      a2[4] = v46;
      a2[5] = v38;
      v39 = v43;
      *a2 = v42;
      a2[1] = v39;
      v56[10] = v67;
      v56[11] = v68;
      v56[12] = v69;
      v56[13] = v70;
      v56[6] = v63;
      v56[7] = v64;
      v56[8] = v65;
      v56[9] = v66;
      v56[2] = v59;
      v56[3] = v60;
      v56[4] = v61;
      v56[5] = v62;
      v56[0] = v57;
      v56[1] = v58;
      sub_1DAFF0C8C(v41, &v40);
      sub_1DAF791EC(v56);
      return;
    }
  }

  else
  {
    sub_1DAF4057C(&v57);
  }

  if (qword_1EE304018 != -1)
  {
    swift_once();
  }

  v10 = sub_1DB09D4B4();
  __swift_project_value_buffer(v10, qword_1EE304020);
  v11 = sub_1DB09D494();
  v12 = sub_1DB09DB64();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1DAF16000, v11, v12, "Error decoding config from asd: No Data object coreODI", v13, 2u);
    MEMORY[0x1E1281810](v13, -1, -1);
  }

  sub_1DAFF33AC(&v57);
  v14 = v68;
  a2[10] = v67;
  a2[11] = v14;
  v15 = v70;
  a2[12] = v69;
  a2[13] = v15;
  v16 = v64;
  a2[6] = v63;
  a2[7] = v16;
  v17 = v66;
  a2[8] = v65;
  a2[9] = v17;
  v18 = v60;
  a2[2] = v59;
  a2[3] = v18;
  v19 = v62;
  a2[4] = v61;
  a2[5] = v19;
  v20 = v58;
  *a2 = v57;
  a2[1] = v20;
}

double sub_1DAFEF700@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_12;
  }

  strcpy(&v27, "daemonVersion");
  HIWORD(v27) = -4864;
  sub_1DB09DDB4();
  if (!*(a1 + 16) || (v4 = sub_1DAF353E0(v16), (v5 & 1) == 0))
  {
    sub_1DAF4057C(v16);
LABEL_12:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_13;
  }

  sub_1DAF409DC(*(a1 + 56) + 32 * v4, &v27);
  sub_1DAF4057C(v16);
  if (!*(&v28 + 1))
  {
LABEL_13:
    sub_1DAF40AEC(&v27, &qword_1ECC0E370, &qword_1DB0A09B0);
    v7 = 0;
    v8 = 0;
    goto LABEL_14;
  }

  v6 = swift_dynamicCast();
  if (v6)
  {
    v7 = *&v16[0];
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = *(&v16[0] + 1);
  }

  else
  {
    v8 = 0;
  }

LABEL_14:
  sub_1DAFF3384(v16);
  *a2 = v7;
  *(a2 + 8) = v8;
  v9 = v24;
  *(a2 + 144) = v23;
  *(a2 + 160) = v9;
  v10 = v26;
  *(a2 + 176) = v25;
  *(a2 + 192) = v10;
  v11 = v20;
  *(a2 + 80) = v19;
  *(a2 + 96) = v11;
  v12 = v22;
  *(a2 + 112) = v21;
  *(a2 + 128) = v12;
  v13 = v16[1];
  *(a2 + 16) = v16[0];
  *(a2 + 32) = v13;
  result = *&v17;
  v15 = v18;
  *(a2 + 48) = v17;
  *(a2 + 64) = v15;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  return result;
}

uint64_t sub_1DAFEF854(char a1)
{
  v2 = 0;
  switch(a1)
  {
    case 1:
      return v2;
    case 2:
      v33 = v1[10];
      v84 = v1[9];
      v85 = v33;
      v34 = v1[12];
      v86 = v1[11];
      v87 = v34;
      v35 = v1[6];
      v80 = v1[5];
      v81 = v35;
      v36 = v1[8];
      v82 = v1[7];
      v83 = v36;
      v37 = v1[2];
      v76 = v1[1];
      v77 = v37;
      v38 = v1[4];
      v78 = v1[3];
      v79 = v38;
      if (sub_1DAF33380(&v76) == 1)
      {
        return 0;
      }

      v2 = v77;
      goto LABEL_27;
    case 3:
      v39 = v1[10];
      v84 = v1[9];
      v85 = v39;
      v40 = v1[12];
      v86 = v1[11];
      v87 = v40;
      v41 = v1[6];
      v80 = v1[5];
      v81 = v41;
      v42 = v1[8];
      v82 = v1[7];
      v83 = v42;
      v43 = v1[2];
      v76 = v1[1];
      v77 = v43;
      v44 = v1[4];
      v78 = v1[3];
      v79 = v44;
      if (sub_1DAF33380(&v76) == 1)
      {
        return 0;
      }

      v2 = v78;
      goto LABEL_27;
    case 4:
      v15 = v1[10];
      v84 = v1[9];
      v85 = v15;
      v16 = v1[12];
      v86 = v1[11];
      v87 = v16;
      v17 = v1[6];
      v80 = v1[5];
      v81 = v17;
      v18 = v1[8];
      v82 = v1[7];
      v83 = v18;
      v19 = v1[2];
      v76 = v1[1];
      v77 = v19;
      v20 = v1[4];
      v78 = v1[3];
      v79 = v20;
      if (sub_1DAF33380(&v76) == 1)
      {
        return 0;
      }

      v2 = v79;
      goto LABEL_27;
    case 5:
      v51 = v1[10];
      v84 = v1[9];
      v85 = v51;
      v52 = v1[12];
      v86 = v1[11];
      v87 = v52;
      v53 = v1[6];
      v80 = v1[5];
      v81 = v53;
      v54 = v1[8];
      v82 = v1[7];
      v83 = v54;
      v55 = v1[2];
      v76 = v1[1];
      v77 = v55;
      v56 = v1[4];
      v78 = v1[3];
      v79 = v56;
      if (sub_1DAF33380(&v76) == 1)
      {
        return 0;
      }

      v2 = v80;
      goto LABEL_27;
    case 6:
      v57 = v1[10];
      v84 = v1[9];
      v85 = v57;
      v58 = v1[12];
      v86 = v1[11];
      v87 = v58;
      v59 = v1[6];
      v80 = v1[5];
      v81 = v59;
      v60 = v1[8];
      v82 = v1[7];
      v83 = v60;
      v61 = v1[2];
      v76 = v1[1];
      v77 = v61;
      v62 = v1[4];
      v78 = v1[3];
      v79 = v62;
      if (sub_1DAF33380(&v76) == 1)
      {
        return 0;
      }

      v2 = v82;
      goto LABEL_27;
    case 7:
      v45 = v1[10];
      v84 = v1[9];
      v85 = v45;
      v46 = v1[12];
      v86 = v1[11];
      v87 = v46;
      v47 = v1[6];
      v80 = v1[5];
      v81 = v47;
      v48 = v1[8];
      v82 = v1[7];
      v83 = v48;
      v49 = v1[2];
      v76 = v1[1];
      v77 = v49;
      v50 = v1[4];
      v78 = v1[3];
      v79 = v50;
      if (sub_1DAF33380(&v76) == 1)
      {
        return 0;
      }

      v2 = v81;
      goto LABEL_27;
    case 8:
      v69 = v1[10];
      v84 = v1[9];
      v85 = v69;
      v70 = v1[12];
      v86 = v1[11];
      v87 = v70;
      v71 = v1[6];
      v80 = v1[5];
      v81 = v71;
      v72 = v1[8];
      v82 = v1[7];
      v83 = v72;
      v73 = v1[2];
      v76 = v1[1];
      v77 = v73;
      v74 = v1[4];
      v78 = v1[3];
      v79 = v74;
      if (sub_1DAF33380(&v76) == 1)
      {
        return 0;
      }

      v2 = v83;
      goto LABEL_27;
    case 9:
      v27 = v1[10];
      v84 = v1[9];
      v85 = v27;
      v28 = v1[12];
      v86 = v1[11];
      v87 = v28;
      v29 = v1[6];
      v80 = v1[5];
      v81 = v29;
      v30 = v1[8];
      v82 = v1[7];
      v83 = v30;
      v31 = v1[2];
      v76 = v1[1];
      v77 = v31;
      v32 = v1[4];
      v78 = v1[3];
      v79 = v32;
      if (sub_1DAF33380(&v76) == 1)
      {
        return 0;
      }

      v2 = v84;
      goto LABEL_27;
    case 10:
      v63 = v1[10];
      v84 = v1[9];
      v85 = v63;
      v64 = v1[12];
      v86 = v1[11];
      v87 = v64;
      v65 = v1[6];
      v80 = v1[5];
      v81 = v65;
      v66 = v1[8];
      v82 = v1[7];
      v83 = v66;
      v67 = v1[2];
      v76 = v1[1];
      v77 = v67;
      v68 = v1[4];
      v78 = v1[3];
      v79 = v68;
      if (sub_1DAF33380(&v76) == 1)
      {
        return 0;
      }

      v2 = v85;
      goto LABEL_27;
    case 11:
      v9 = v1[10];
      v84 = v1[9];
      v85 = v9;
      v10 = v1[12];
      v86 = v1[11];
      v87 = v10;
      v11 = v1[6];
      v80 = v1[5];
      v81 = v11;
      v12 = v1[8];
      v82 = v1[7];
      v83 = v12;
      v13 = v1[2];
      v76 = v1[1];
      v77 = v13;
      v14 = v1[4];
      v78 = v1[3];
      v79 = v14;
      if (sub_1DAF33380(&v76) == 1)
      {
        return 0;
      }

      v2 = v86;
      goto LABEL_27;
    case 12:
      v21 = v1[10];
      v84 = v1[9];
      v85 = v21;
      v22 = v1[12];
      v86 = v1[11];
      v87 = v22;
      v23 = v1[6];
      v80 = v1[5];
      v81 = v23;
      v24 = v1[8];
      v82 = v1[7];
      v83 = v24;
      v25 = v1[2];
      v76 = v1[1];
      v77 = v25;
      v26 = v1[4];
      v78 = v1[3];
      v79 = v26;
      if (sub_1DAF33380(&v76) == 1)
      {
        return 0;
      }

      v2 = v87;
      goto LABEL_27;
    default:
      v3 = v1[10];
      v84 = v1[9];
      v85 = v3;
      v4 = v1[12];
      v86 = v1[11];
      v87 = v4;
      v5 = v1[6];
      v80 = v1[5];
      v81 = v5;
      v6 = v1[8];
      v82 = v1[7];
      v83 = v6;
      v7 = v1[2];
      v76 = v1[1];
      v77 = v7;
      v8 = v1[4];
      v78 = v1[3];
      v79 = v8;
      if (sub_1DAF33380(&v76) == 1)
      {
        return 0;
      }

      v2 = v76;
LABEL_27:

      return v2;
  }
}

uint64_t sub_1DAFEFC24(uint64_t a1)
{
  *(v2 + 2712) = v1;
  *(v2 + 2704) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAFEFC48, v1, 0);
}

uint64_t sub_1DAFEFC48()
{
  v1 = *(v0 + 2712);
  v2 = *(v1 + 336);
  if (v2 != 2 && (v2 & 1) != 0)
  {
    v79 = *(v1 + 272);
    v80 = *(v1 + 288);
    v81 = *(v1 + 304);
    v82 = *(v1 + 320);
    v75 = *(v1 + 208);
    v76 = *(v1 + 224);
    v77 = *(v1 + 240);
    v78 = *(v1 + 256);
    v3 = *(v1 + 128);
    v71 = *(v1 + 144);
    v72 = *(v1 + 160);
    v73 = *(v1 + 176);
    v74 = *(v1 + 192);
    v69 = *(v1 + 112);
    v70 = v3;
    *(v0 + 2032) = v69;
    *(v0 + 2048) = v3;
    v4 = *(v1 + 144);
    v5 = *(v1 + 160);
    v6 = *(v1 + 192);
    *(v0 + 2096) = *(v1 + 176);
    *(v0 + 2112) = v6;
    *(v0 + 2064) = v4;
    *(v0 + 2080) = v5;
    v7 = *(v1 + 208);
    v8 = *(v1 + 224);
    v9 = *(v1 + 256);
    *(v0 + 2160) = *(v1 + 240);
    *(v0 + 2176) = v9;
    *(v0 + 2128) = v7;
    *(v0 + 2144) = v8;
    v10 = *(v1 + 272);
    v11 = *(v1 + 288);
    v12 = *(v1 + 320);
    *(v0 + 2224) = *(v1 + 304);
    *(v0 + 2240) = v12;
    *(v0 + 2192) = v10;
    *(v0 + 2208) = v11;
    if (sub_1DAF33380(v0 + 2032) != 1)
    {
      v37 = v0 + 2256;
      v57 = *(v0 + 2704);
      v58 = *(v0 + 2048);
      *v57 = *(v0 + 2032);
      v57[1] = v58;
      v59 = *(v0 + 2064);
      v60 = *(v0 + 2080);
      v61 = *(v0 + 2112);
      v57[4] = *(v0 + 2096);
      v57[5] = v61;
      v57[2] = v59;
      v57[3] = v60;
      v62 = *(v0 + 2128);
      v63 = *(v0 + 2144);
      v64 = *(v0 + 2176);
      v57[8] = *(v0 + 2160);
      v57[9] = v64;
      v57[6] = v62;
      v57[7] = v63;
      v65 = *(v0 + 2192);
      v66 = *(v0 + 2208);
      v67 = *(v0 + 2240);
      v57[12] = *(v0 + 2224);
      v57[13] = v67;
      v57[10] = v65;
      v57[11] = v66;
      *(v0 + 2416) = v79;
      *(v0 + 2432) = v80;
      *(v0 + 2448) = v81;
      *(v0 + 2464) = v82;
      *(v0 + 2352) = v75;
      *(v0 + 2368) = v76;
      *(v0 + 2384) = v77;
      *(v0 + 2400) = v78;
      *(v0 + 2288) = v71;
      *(v0 + 2304) = v72;
      *(v0 + 2320) = v73;
      *(v0 + 2336) = v74;
      *(v0 + 2256) = v69;
      *(v0 + 2272) = v70;
      v56 = v0 + 2480;
      goto LABEL_11;
    }

    v1 = *(v0 + 2712);
  }

  v13 = (v1 + 344);
  v14 = v13[1];
  *(v0 + 240) = *v13;
  *(v0 + 256) = v14;
  v15 = v13[2];
  v16 = v13[3];
  v17 = v13[5];
  *(v0 + 304) = v13[4];
  *(v0 + 320) = v17;
  *(v0 + 272) = v15;
  *(v0 + 288) = v16;
  v18 = v13[6];
  v19 = v13[7];
  v20 = v13[9];
  *(v0 + 368) = v13[8];
  *(v0 + 384) = v20;
  *(v0 + 336) = v18;
  *(v0 + 352) = v19;
  v21 = v13[10];
  v22 = v13[11];
  v23 = v13[13];
  *(v0 + 432) = v13[12];
  *(v0 + 448) = v23;
  *(v0 + 400) = v21;
  *(v0 + 416) = v22;
  v24 = v13[1];
  *(v0 + 16) = *v13;
  *(v0 + 32) = v24;
  v25 = v13[2];
  v26 = v13[3];
  v27 = v13[5];
  *(v0 + 80) = v13[4];
  *(v0 + 96) = v27;
  *(v0 + 48) = v25;
  *(v0 + 64) = v26;
  v28 = v13[6];
  v29 = v13[7];
  v30 = v13[9];
  *(v0 + 144) = v13[8];
  *(v0 + 160) = v30;
  *(v0 + 112) = v28;
  *(v0 + 128) = v29;
  v31 = v13[10];
  v32 = v13[11];
  v33 = v13[13];
  *(v0 + 208) = v13[12];
  *(v0 + 224) = v33;
  *(v0 + 176) = v31;
  *(v0 + 192) = v32;
  if (sub_1DAF33380(v0 + 16) == 1)
  {
    v34 = swift_task_alloc();
    *(v0 + 2720) = v34;
    *v34 = v0;
    v34[1] = sub_1DAFEFF34;
    v35 = *(v0 + 2712);

    return sub_1DAFF06A8(v0 + 1136);
  }

  v37 = v0 + 1584;
  v38 = *(v0 + 2704);
  v39 = *(v0 + 32);
  *v38 = *(v0 + 16);
  v38[1] = v39;
  v40 = *(v0 + 48);
  v41 = *(v0 + 64);
  v42 = *(v0 + 96);
  v38[4] = *(v0 + 80);
  v38[5] = v42;
  v38[2] = v40;
  v38[3] = v41;
  v43 = *(v0 + 112);
  v44 = *(v0 + 128);
  v45 = *(v0 + 160);
  v38[8] = *(v0 + 144);
  v38[9] = v45;
  v38[6] = v43;
  v38[7] = v44;
  v46 = *(v0 + 176);
  v47 = *(v0 + 192);
  v48 = *(v0 + 224);
  v38[12] = *(v0 + 208);
  v38[13] = v48;
  v38[10] = v46;
  v38[11] = v47;
  v49 = *(v0 + 416);
  *(v0 + 1744) = *(v0 + 400);
  *(v0 + 1760) = v49;
  v50 = *(v0 + 448);
  *(v0 + 1776) = *(v0 + 432);
  *(v0 + 1792) = v50;
  v51 = *(v0 + 352);
  *(v0 + 1680) = *(v0 + 336);
  *(v0 + 1696) = v51;
  v52 = *(v0 + 384);
  *(v0 + 1712) = *(v0 + 368);
  *(v0 + 1728) = v52;
  v53 = *(v0 + 288);
  *(v0 + 1616) = *(v0 + 272);
  *(v0 + 1632) = v53;
  v54 = *(v0 + 320);
  *(v0 + 1648) = *(v0 + 304);
  *(v0 + 1664) = v54;
  v55 = *(v0 + 256);
  *(v0 + 1584) = *(v0 + 240);
  *(v0 + 1600) = v55;
  v56 = v0 + 1808;
LABEL_11:
  sub_1DAFF0C8C(v37, v56);
  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_1DAFEFF34()
{
  v1 = *(*v0 + 2720);
  v2 = *(*v0 + 2712);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFF0044, v2, 0);
}

uint64_t sub_1DAFF0044()
{
  v1 = *(v0 + 2704);
  v2 = (*(v0 + 2712) + 344);
  *(v0 + 1072) = *(v0 + 1296);
  *(v0 + 1088) = *(v0 + 1312);
  *(v0 + 1104) = *(v0 + 1328);
  *(v0 + 1120) = *(v0 + 1344);
  v3 = *(v0 + 1248);
  *(v0 + 1008) = *(v0 + 1232);
  *(v0 + 1024) = v3;
  *(v0 + 1040) = *(v0 + 1264);
  *(v0 + 1056) = *(v0 + 1280);
  v4 = *(v0 + 1184);
  *(v0 + 944) = *(v0 + 1168);
  *(v0 + 960) = v4;
  v5 = *(v0 + 1216);
  *(v0 + 976) = *(v0 + 1200);
  *(v0 + 992) = v5;
  v6 = *(v0 + 1152);
  *(v0 + 912) = *(v0 + 1136);
  *(v0 + 928) = v6;
  v7 = *(v0 + 1088);
  *(v0 + 848) = *(v0 + 1072);
  *(v0 + 864) = v7;
  v8 = *(v0 + 1120);
  *(v0 + 880) = *(v0 + 1104);
  *(v0 + 896) = v8;
  v9 = *(v0 + 1024);
  *(v0 + 784) = *(v0 + 1008);
  *(v0 + 800) = v9;
  v10 = *(v0 + 1056);
  *(v0 + 816) = *(v0 + 1040);
  *(v0 + 832) = v10;
  v11 = *(v0 + 960);
  *(v0 + 720) = *(v0 + 944);
  *(v0 + 736) = v11;
  v12 = *(v0 + 992);
  *(v0 + 752) = *(v0 + 976);
  *(v0 + 768) = v12;
  v13 = *(v0 + 928);
  *(v0 + 688) = *(v0 + 912);
  *(v0 + 704) = v13;
  nullsub_3(v0 + 688);
  v14 = v2[1];
  *(v0 + 464) = *v2;
  *(v0 + 480) = v14;
  v15 = v2[2];
  v16 = v2[3];
  v17 = v2[5];
  *(v0 + 528) = v2[4];
  *(v0 + 544) = v17;
  *(v0 + 496) = v15;
  *(v0 + 512) = v16;
  v18 = v2[6];
  v19 = v2[7];
  v20 = v2[9];
  *(v0 + 592) = v2[8];
  *(v0 + 608) = v20;
  *(v0 + 560) = v18;
  *(v0 + 576) = v19;
  v21 = v2[10];
  v22 = v2[11];
  v23 = v2[13];
  *(v0 + 656) = v2[12];
  *(v0 + 672) = v23;
  *(v0 + 624) = v21;
  *(v0 + 640) = v22;
  v24 = *(v0 + 704);
  *v2 = *(v0 + 688);
  v2[1] = v24;
  v25 = *(v0 + 720);
  v26 = *(v0 + 736);
  v27 = *(v0 + 768);
  v2[4] = *(v0 + 752);
  v2[5] = v27;
  v2[2] = v25;
  v2[3] = v26;
  v28 = *(v0 + 784);
  v29 = *(v0 + 800);
  v30 = *(v0 + 832);
  v2[8] = *(v0 + 816);
  v2[9] = v30;
  v2[6] = v28;
  v2[7] = v29;
  v31 = *(v0 + 848);
  v32 = *(v0 + 864);
  v33 = *(v0 + 896);
  v2[12] = *(v0 + 880);
  v2[13] = v33;
  v2[10] = v31;
  v2[11] = v32;
  sub_1DAFF0C8C(v0 + 912, v0 + 1360);
  sub_1DAF40AEC(v0 + 464, &qword_1ECC0F190, &qword_1DB0AEEE0);
  v34 = *(v0 + 928);
  *v1 = *(v0 + 912);
  v1[1] = v34;
  v35 = *(v0 + 992);
  v37 = *(v0 + 944);
  v36 = *(v0 + 960);
  v1[4] = *(v0 + 976);
  v1[5] = v35;
  v1[2] = v37;
  v1[3] = v36;
  v38 = *(v0 + 1056);
  v40 = *(v0 + 1008);
  v39 = *(v0 + 1024);
  v1[8] = *(v0 + 1040);
  v1[9] = v38;
  v1[6] = v40;
  v1[7] = v39;
  v41 = *(v0 + 1088);
  v42 = *(v0 + 1120);
  v43 = *(v0 + 1072);
  v1[12] = *(v0 + 1104);
  v1[13] = v42;
  v1[10] = v43;
  v1[11] = v41;
  v44 = *(v0 + 8);

  return v44();
}

double sub_1DAFF022C()
{
  type metadata accessor for ConfigManager();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1DAFF33AC(&v23);
  v1 = v34;
  v2 = v33;
  v3 = v34;
  *(v0 + 272) = v33;
  *(v0 + 288) = v1;
  v4 = v36;
  v5 = v35;
  v6 = v36;
  *(v0 + 304) = v35;
  *(v0 + 320) = v4;
  v7 = v30;
  v8 = v29;
  v9 = v30;
  *(v0 + 208) = v29;
  *(v0 + 224) = v7;
  v10 = v32;
  v11 = v31;
  v12 = v32;
  *(v0 + 240) = v31;
  *(v0 + 256) = v10;
  v13 = v26;
  v14 = v25;
  v15 = v26;
  *(v0 + 144) = v25;
  *(v0 + 160) = v13;
  v16 = v28;
  v17 = v27;
  v18 = v28;
  *(v0 + 176) = v27;
  *(v0 + 192) = v16;
  result = *&v23;
  v20 = v24;
  v21 = v23;
  v22 = v24;
  *(v0 + 112) = v23;
  *(v0 + 128) = v20;
  *(v0 + 504) = v2;
  *(v0 + 520) = v3;
  *(v0 + 536) = v5;
  *(v0 + 552) = v6;
  *(v0 + 440) = v8;
  *(v0 + 456) = v9;
  *(v0 + 472) = v11;
  *(v0 + 488) = v12;
  *(v0 + 376) = v14;
  *(v0 + 392) = v15;
  *(v0 + 408) = v17;
  *(v0 + 424) = v18;
  *(v0 + 336) = 2;
  *(v0 + 344) = v21;
  *(v0 + 360) = v22;
  qword_1EE304010 = v0;
  return result;
}

uint64_t static ConfigManager.shared.getter()
{
  if (qword_1EE304008 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DAFF0350(uint64_t a1)
{
  v2 = v1;
  if (qword_1EE304018 != -1)
  {
    swift_once();
  }

  v4 = sub_1DB09D4B4();
  __swift_project_value_buffer(v4, qword_1EE304020);

  v5 = sub_1DB09D494();
  v6 = sub_1DB09DB54();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v73[0] = v8;
    *v7 = 136315138;
    v9 = sub_1DB09D634();
    v11 = sub_1DB015E84(v9, v10, v73);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1DAF16000, v5, v6, "Config being set by direct call from asd: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E1281810](v8, -1, -1);
    MEMORY[0x1E1281810](v7, -1, -1);
  }

  sub_1DAFEEEE0(a1, &v59);
  v73[10] = v69;
  v73[11] = v70;
  v73[12] = v71;
  v73[13] = v72;
  v73[6] = v65;
  v73[7] = v66;
  v73[8] = v67;
  v73[9] = v68;
  v73[2] = v61;
  v73[3] = v62;
  v73[4] = v63;
  v73[5] = v64;
  v73[0] = v59;
  v73[1] = v60;
  if (sub_1DAF33380(v73) == 1)
  {
    v12 = sub_1DB09D494();
    v13 = sub_1DB09DB64();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DAF16000, v12, v13, "Couldn't set configuration directly passed in. Falling back to default", v14, 2u);
      MEMORY[0x1E1281810](v14, -1, -1);
    }

    sub_1DAFEF700(a1, v44);
    nullsub_3(v44);
    v15 = v2[18];
    v55 = v2[17];
    v56 = v15;
    v16 = v2[20];
    v57 = v2[19];
    v58 = v16;
    v17 = v2[14];
    v51 = v2[13];
    v52 = v17;
    v18 = v2[16];
    v53 = v2[15];
    v54 = v18;
    v19 = v2[10];
    v47 = v2[9];
    v48 = v19;
    v20 = v2[12];
    v49 = v2[11];
    v50 = v20;
    v21 = v2[8];
    v45 = v2[7];
    v46 = v21;
    v22 = v44[11];
    v2[17] = v44[10];
    v2[18] = v22;
    v23 = v44[13];
    v2[19] = v44[12];
    v2[20] = v23;
    v24 = v44[7];
    v2[13] = v44[6];
    v2[14] = v24;
    v25 = v44[9];
    v2[15] = v44[8];
    v2[16] = v25;
    v26 = v44[3];
    v2[9] = v44[2];
    v2[10] = v26;
    v27 = v44[5];
    v2[11] = v44[4];
    v2[12] = v27;
    v28 = v44[0];
    v29 = v44[1];
  }

  else
  {
    v30 = v1[18];
    v55 = v1[17];
    v56 = v30;
    v31 = v1[20];
    v57 = v1[19];
    v58 = v31;
    v32 = v1[14];
    v51 = v1[13];
    v52 = v32;
    v33 = v1[16];
    v53 = v1[15];
    v54 = v33;
    v34 = v1[10];
    v47 = v1[9];
    v48 = v34;
    v35 = v1[12];
    v49 = v1[11];
    v50 = v35;
    v36 = v1[8];
    v45 = v1[7];
    v46 = v36;
    v37 = v70;
    v1[17] = v69;
    v1[18] = v37;
    v38 = v72;
    v1[19] = v71;
    v1[20] = v38;
    v39 = v66;
    v1[13] = v65;
    v1[14] = v39;
    v40 = v68;
    v1[15] = v67;
    v1[16] = v40;
    v41 = v62;
    v1[9] = v61;
    v1[10] = v41;
    v42 = v64;
    v1[11] = v63;
    v1[12] = v42;
    v28 = v59;
    v29 = v60;
  }

  v2[7] = v28;
  v2[8] = v29;
  result = sub_1DAF40AEC(&v45, &qword_1ECC0F190, &qword_1DB0AEEE0);
  *(v2 + 336) = 1;
  return result;
}

uint64_t sub_1DAFF06A8(uint64_t a1)
{
  v2[59] = a1;
  v2[60] = v1;
  v3 = type metadata accessor for ODISignpost();
  v2[61] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFF0748, v1, 0);
}

uint64_t sub_1DAFF0748()
{
  if (qword_1EE304018 != -1)
  {
    swift_once();
  }

  v1 = sub_1DB09D4B4();
  __swift_project_value_buffer(v1, qword_1EE304020);
  v2 = sub_1DB09D494();
  v3 = sub_1DB09DB54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DAF16000, v2, v3, "Enter client bag fetch", v4, 2u);
    MEMORY[0x1E1281810](v4, -1, -1);
  }

  if (qword_1ECC0E0E0 != -1)
  {
    swift_once();
  }

  v5 = v0[61];
  v6 = v0[62];
  v8 = qword_1ECC25DC0;
  v7 = *algn_1ECC25DC8;
  v9 = byte_1ECC25DD0;
  v10 = qword_1ECC25DD8;
  v11 = byte_1ECC25DE0;
  *(v6 + 32) = "enableTelemetry=YES";
  *(v6 + 40) = 19;
  *(v6 + 48) = 2;
  *v6 = v8;
  *(v6 + 8) = v7;
  *(v6 + 16) = v9;
  *(v6 + 24) = v10;
  v12 = *(v5 + 28);
  v13 = v10;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v11 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  sub_1DAF5F604(v0[62], v0[63]);
  if (qword_1EE301828 != -1)
  {
    swift_once();
  }

  v14 = qword_1EE301830;
  v0[64] = qword_1EE301830;
  v15 = sub_1DAF5F57C();
  v16 = *(MEMORY[0x1E69E88D0] + 4);
  v17 = swift_task_alloc();
  v0[65] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F1E8, &qword_1DB0AF290);
  *v17 = v0;
  v17[1] = sub_1DAFF0A50;

  return MEMORY[0x1EEE6DDE0](v0 + 2, v14, v15, 0x6E6F436863746566, 0xED00002928676966, sub_1DAF521C4, 0, v18);
}

uint64_t sub_1DAFF0A50()
{
  v1 = *(*v0 + 520);
  v2 = *(*v0 + 512);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFF0B60, v2, 0);
}

uint64_t sub_1DAFF0B60()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 208);
  v3 = *(v0 + 224);
  *(v0 + 424) = *(v0 + 192);
  *(v0 + 440) = v2;
  *(v0 + 456) = v3;
  v4 = *(v0 + 112);
  v5 = *(v0 + 144);
  v6 = *(v0 + 160);
  *(v0 + 360) = *(v0 + 128);
  *(v0 + 376) = v5;
  *(v0 + 392) = v6;
  *(v0 + 408) = v1;
  v7 = *(v0 + 48);
  v8 = *(v0 + 80);
  v9 = *(v0 + 96);
  *(v0 + 296) = *(v0 + 64);
  *(v0 + 312) = v8;
  *(v0 + 328) = v9;
  *(v0 + 344) = v4;
  v10 = *(v0 + 32);
  *(v0 + 248) = *(v0 + 16);
  v11 = *(v0 + 480);
  *(v0 + 264) = v10;
  *(v0 + 280) = v7;
  *(v0 + 241) = *(v0 + 240);
  return MEMORY[0x1EEE6DFA0](sub_1DAFF0BC4, v11, 0);
}

uint64_t sub_1DAFF0BC4()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v3 = *(v0 + 472);
  *(*(v0 + 480) + 336) = *(v0 + 241);
  v4 = *(v0 + 264);
  *v3 = *(v0 + 248);
  v3[1] = v4;
  v5 = *(v0 + 280);
  v6 = *(v0 + 296);
  v7 = *(v0 + 328);
  v3[4] = *(v0 + 312);
  v3[5] = v7;
  v3[2] = v5;
  v3[3] = v6;
  v8 = *(v0 + 344);
  v9 = *(v0 + 360);
  v10 = *(v0 + 392);
  v3[8] = *(v0 + 376);
  v3[9] = v10;
  v3[6] = v8;
  v3[7] = v9;
  v11 = *(v0 + 408);
  v12 = *(v0 + 424);
  v13 = *(v0 + 456);
  v3[12] = *(v0 + 440);
  v3[13] = v13;
  v3[10] = v11;
  v3[11] = v12;
  sub_1DAFF0CC4(v2);
  sub_1DAF60868(v2);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1DAFF0CC4(uint64_t *a1)
{
  if (qword_1EE304018 != -1)
  {
    swift_once();
  }

  v2 = sub_1DB09D4B4();
  __swift_project_value_buffer(v2, qword_1EE304020);
  v3 = sub_1DB09D494();
  v4 = sub_1DB09DB54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DAF16000, v3, v4, "Leave client bag fetch", v5, 2u);
    MEMORY[0x1E1281810](v5, -1, -1);
  }

  sub_1DB09DC04();
  v6 = a1[3];
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 16);
  v10 = a1 + *(type metadata accessor for ODISignpost() + 28);

  return sub_1DB09D464();
}

_OWORD *ConfigManager.deinit()
{
  v1 = v0[18];
  v16[10] = v0[17];
  v16[11] = v1;
  v2 = v0[20];
  v16[12] = v0[19];
  v16[13] = v2;
  v3 = v0[14];
  v16[6] = v0[13];
  v16[7] = v3;
  v4 = v0[16];
  v16[8] = v0[15];
  v16[9] = v4;
  v5 = v0[10];
  v16[2] = v0[9];
  v16[3] = v5;
  v6 = v0[12];
  v16[4] = v0[11];
  v16[5] = v6;
  v7 = v0[8];
  v16[0] = v0[7];
  v16[1] = v7;
  sub_1DAF40AEC(v16, &qword_1ECC0F190, &qword_1DB0AEEE0);
  v8 = *(v0 + 520);
  v17[10] = *(v0 + 504);
  v17[11] = v8;
  v9 = *(v0 + 552);
  v17[12] = *(v0 + 536);
  v17[13] = v9;
  v10 = *(v0 + 456);
  v17[6] = *(v0 + 440);
  v17[7] = v10;
  v11 = *(v0 + 488);
  v17[8] = *(v0 + 472);
  v17[9] = v11;
  v12 = *(v0 + 392);
  v17[2] = *(v0 + 376);
  v17[3] = v12;
  v13 = *(v0 + 424);
  v17[4] = *(v0 + 408);
  v17[5] = v13;
  v14 = *(v0 + 360);
  v17[0] = *(v0 + 344);
  v17[1] = v14;
  sub_1DAF40AEC(v17, &qword_1ECC0F190, &qword_1DB0AEEE0);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t ConfigManager.__deallocating_deinit()
{
  v1 = v0[18];
  v16[10] = v0[17];
  v16[11] = v1;
  v2 = v0[20];
  v16[12] = v0[19];
  v16[13] = v2;
  v3 = v0[14];
  v16[6] = v0[13];
  v16[7] = v3;
  v4 = v0[16];
  v16[8] = v0[15];
  v16[9] = v4;
  v5 = v0[10];
  v16[2] = v0[9];
  v16[3] = v5;
  v6 = v0[12];
  v16[4] = v0[11];
  v16[5] = v6;
  v7 = v0[8];
  v16[0] = v0[7];
  v16[1] = v7;
  sub_1DAF40AEC(v16, &qword_1ECC0F190, &qword_1DB0AEEE0);
  v8 = *(v0 + 520);
  v17[10] = *(v0 + 504);
  v17[11] = v8;
  v9 = *(v0 + 552);
  v17[12] = *(v0 + 536);
  v17[13] = v9;
  v10 = *(v0 + 456);
  v17[6] = *(v0 + 440);
  v17[7] = v10;
  v11 = *(v0 + 488);
  v17[8] = *(v0 + 472);
  v17[9] = v11;
  v12 = *(v0 + 392);
  v17[2] = *(v0 + 376);
  v17[3] = v12;
  v13 = *(v0 + 424);
  v17[4] = *(v0 + 408);
  v17[5] = v13;
  v14 = *(v0 + 360);
  v17[0] = *(v0 + 344);
  v17[1] = v14;
  sub_1DAF40AEC(v17, &qword_1ECC0F190, &qword_1DB0AEEE0);
  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_1DAFF0FC0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000014;
    v7 = 0xD000000000000017;
    if (a1 != 10)
    {
      v7 = 0x6142726941766469;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000017;
    v9 = 0xD000000000000011;
    if (a1 != 7)
    {
      v9 = 0xD000000000000013;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x42696C6F69766172;
    v2 = 0xD000000000000016;
    v3 = 0xD000000000000015;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000012;
    if (a1 == 1)
    {
      v4 = 0xD000000000000025;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DAFF116C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F1D8, &qword_1DB0AF278);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v37[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAFF32C8();
  sub_1DB09E434();
  v12 = *v3;
  v13 = v3[1];
  v37[15] = 0;
  sub_1DB09E104();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v37[14] = 1;
    sub_1DB09E104();
    v16 = v3[4];
    v17 = v3[5];
    v37[13] = 2;
    sub_1DB09E104();
    v18 = v3[6];
    v19 = v3[7];
    v37[12] = 3;
    sub_1DB09E104();
    v20 = v3[8];
    v21 = v3[9];
    v37[11] = 4;
    sub_1DB09E104();
    v22 = v3[10];
    v23 = v3[11];
    v37[10] = 5;
    sub_1DB09E104();
    v24 = v3[12];
    v25 = v3[13];
    v37[9] = 6;
    sub_1DB09E104();
    v26 = v3[14];
    v27 = v3[15];
    v37[8] = 7;
    sub_1DB09E104();
    v28 = v3[16];
    v29 = v3[17];
    v37[7] = 8;
    sub_1DB09E104();
    v30 = v3[18];
    v31 = v3[19];
    v37[6] = 9;
    sub_1DB09E104();
    v32 = v3[20];
    v33 = v3[21];
    v37[5] = 10;
    sub_1DB09E104();
    v34 = v3[22];
    v35 = v3[23];
    v37[4] = 11;
    sub_1DB09E104();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1DAFF1444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAFF263C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAFF1478(uint64_t a1)
{
  v2 = sub_1DAFF32C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAFF14B4(uint64_t a1)
{
  v2 = sub_1DAFF32C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DAFF14F0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DAFF2A00(a1, v11);
  if (!v2)
  {
    v5 = v19;
    a2[8] = v18;
    a2[9] = v5;
    v6 = v21;
    a2[10] = v20;
    a2[11] = v6;
    v7 = v15;
    a2[4] = v14;
    a2[5] = v7;
    v8 = v17;
    a2[6] = v16;
    a2[7] = v8;
    v9 = v11[1];
    *a2 = v11[0];
    a2[1] = v9;
    result = *&v12;
    v10 = v13;
    a2[2] = v12;
    a2[3] = v10;
  }

  return result;
}

uint64_t sub_1DAFF156C()
{
  v1 = 0x65566E6F6D656164;
  v2 = 0x746E696F70646E65;
  if (*v0 != 2)
  {
    v2 = 0x7365727574616566;
  }

  if (*v0)
  {
    v1 = 1936487029;
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

uint64_t sub_1DAFF15F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAFF3154(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAFF1618(uint64_t a1)
{
  v2 = sub_1DAFF1EDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAFF1654(uint64_t a1)
{
  v2 = sub_1DAFF1EDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreODIConfig.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F198, &qword_1DB0AEEE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v27 - v7;
  v9 = v1[1];
  v30 = *v1;
  v10 = *(v1 + 10);
  v55 = *(v1 + 9);
  v56 = v10;
  v11 = *(v1 + 12);
  v57 = *(v1 + 11);
  v58 = v11;
  v12 = *(v1 + 6);
  v51 = *(v1 + 5);
  v52 = v12;
  v13 = *(v1 + 8);
  v53 = *(v1 + 7);
  v54 = v13;
  v14 = *(v1 + 2);
  v47 = *(v1 + 1);
  v48 = v14;
  v15 = *(v1 + 4);
  v49 = *(v1 + 3);
  v50 = v15;
  v16 = v1[26];
  v28 = v1[27];
  v29 = v16;
  v18 = a1[3];
  v17 = a1[4];
  v19 = a1;
  v21 = v20;
  __swift_project_boxed_opaque_existential_1(v19, v18);
  sub_1DAFF1EDC();
  sub_1DB09E434();
  LOBYTE(v35) = 0;
  v22 = v8;
  v23 = v59;
  sub_1DB09E104();
  if (!v23)
  {
    v25 = v28;
    v24 = v29;
    v43 = v55;
    v44 = v56;
    v45 = v57;
    v46 = v58;
    v39 = v51;
    v40 = v52;
    v41 = v53;
    v42 = v54;
    v35 = v47;
    v36 = v48;
    v37 = v49;
    v38 = v50;
    v34 = 1;
    sub_1DAFF1F30(&v47, v33);
    sub_1DAFF1FA0();
    sub_1DB09E144();
    v33[8] = v43;
    v33[9] = v44;
    v33[10] = v45;
    v33[11] = v46;
    v33[4] = v39;
    v33[5] = v40;
    v33[6] = v41;
    v33[7] = v42;
    v33[0] = v35;
    v33[1] = v36;
    v33[2] = v37;
    v33[3] = v38;
    sub_1DAF40AEC(v33, &qword_1ECC0F1A0, &unk_1DB0AEEF0);
    v32 = v24;
    v31 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4C0, &unk_1DB0A21B0);
    sub_1DAFF20B8(&qword_1ECC0F1B0);
    sub_1DB09E144();
    v32 = v25;
    v31 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F1B8, &qword_1DB0AEF00);
    sub_1DAFF1FF4(&qword_1ECC0F1C0);
    sub_1DB09E144();
  }

  return (*(v4 + 8))(v22, v21);
}

uint64_t CoreODIConfig.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F1C8, &qword_1DB0AEF08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1DAFF1EDC();
  sub_1DB09E414();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  else
  {
    v29 = v6;
    LOBYTE(v45[0]) = 0;
    v13 = sub_1DB09E044();
    v15 = v14;
    v28 = v13;
    v86 = 1;
    sub_1DAFF2064();
    sub_1DB09E074();
    v81 = v69;
    v82 = v70;
    v83 = v71;
    v84 = v72;
    v77 = v65;
    v78 = v66;
    v79 = v67;
    v80 = v68;
    v73 = v61;
    v74 = v62;
    v75 = v63;
    v76 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4C0, &unk_1DB0A21B0);
    LOBYTE(v31) = 2;
    sub_1DAFF20B8(&qword_1EE300A50);
    sub_1DB09E074();
    v16 = v45[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F1B8, &qword_1DB0AEF00);
    v85 = 3;
    sub_1DAFF1FF4(&qword_1EE301958);
    sub_1DB09E074();
    (*(v29 + 8))(v10, v5);
    v17 = v60;
    v18 = v28;
    *&v31 = v28;
    *(&v31 + 1) = v15;
    v40 = v81;
    v41 = v82;
    v42 = v83;
    v43 = v84;
    v36 = v77;
    v37 = v78;
    v38 = v79;
    v39 = v80;
    v32 = v73;
    v33 = v74;
    v34 = v75;
    v35 = v76;
    *&v44 = v16;
    *(&v44 + 1) = v60;
    v19 = v83;
    a2[10] = v82;
    a2[11] = v19;
    v20 = v38;
    a2[6] = v37;
    a2[7] = v20;
    v21 = v40;
    a2[8] = v39;
    a2[9] = v21;
    v22 = v34;
    a2[2] = v33;
    a2[3] = v22;
    v23 = v36;
    a2[4] = v35;
    a2[5] = v23;
    v24 = v32;
    *a2 = v31;
    a2[1] = v24;
    v25 = v44;
    a2[12] = v43;
    a2[13] = v25;
    sub_1DAFF0C8C(&v31, v45);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v45[0] = v18;
    v45[1] = v15;
    v54 = v81;
    v55 = v82;
    v56 = v83;
    v57 = v84;
    v50 = v77;
    v51 = v78;
    v52 = v79;
    v53 = v80;
    v46 = v73;
    v47 = v74;
    v48 = v75;
    v49 = v76;
    v58 = v16;
    v59 = v17;
    return sub_1DAF791EC(v45);
  }
}

unint64_t sub_1DAFF1EDC()
{
  result = qword_1EE3044B8;
  if (!qword_1EE3044B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3044B8);
  }

  return result;
}

uint64_t sub_1DAFF1F30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F1A0, &unk_1DB0AEEF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DAFF1FA0()
{
  result = qword_1ECC0F1A8;
  if (!qword_1ECC0F1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F1A8);
  }

  return result;
}

uint64_t sub_1DAFF1FF4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F1B8, &qword_1DB0AEF00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAFF2064()
{
  result = qword_1EE304488;
  if (!qword_1EE304488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE304488);
  }

  return result;
}

uint64_t sub_1DAFF20B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0E4C0, &unk_1DB0A21B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of ConfigManager.config.getter(uint64_t a1)
{
  v4 = *(*v1 + 112);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DAF62CC4;

  return v8(a1);
}

uint64_t get_enum_tag_for_layout_string_17CoreODIEssentials0A9ODIConfigV4URLsVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_1DAFF2308(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 224))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1DAFF2364(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 216) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
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
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_1DAFF2434(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 192))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1DAFF2490(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1DAFF2538()
{
  result = qword_1ECC0F1D0;
  if (!qword_1ECC0F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F1D0);
  }

  return result;
}

unint64_t sub_1DAFF2590()
{
  result = qword_1EE3044A8;
  if (!qword_1EE3044A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3044A8);
  }

  return result;
}

unint64_t sub_1DAFF25E8()
{
  result = qword_1EE3044B0;
  if (!qword_1EE3044B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3044B0);
  }

  return result;
}

uint64_t sub_1DAFF263C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x42696C6F69766172 && a2 == 0xEE006C7255657361;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001DB0C8990 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DB0C89C0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DB0C89E0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DB0C8A00 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB0C8A20 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DB0C8A40 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DB0C8A60 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DB0C8A80 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DB0C8AA0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DB0C8AC0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6142726941766469 && a2 == 0xED00006C72556573)
  {

    return 11;
  }

  else
  {
    v6 = sub_1DB09E254();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1DAFF2A00@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F1E0, &unk_1DB0AF280);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v43 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1DAFF32C8();
  sub_1DB09E414();
  if (v2)
  {
    v59 = v2;
    v57 = 0uLL;
    v58 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
    v54 = 0uLL;
    v55 = 0uLL;
    v56 = 0uLL;
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    v72 = 0uLL;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = v56;
    v80 = v55;
    v81 = v54;
    v82 = v53;
    v83 = v52;
    v84 = v58;
    v85 = v57;
    v87 = 0;
    v86 = 0;
    return sub_1DAFF331C(&v72);
  }

  else
  {
    LOBYTE(v72) = 0;
    *&v50 = sub_1DB09E044();
    *(&v50 + 1) = v14;
    LOBYTE(v72) = 1;
    v15 = sub_1DB09E044();
    v48 = v16;
    v49 = v15;
    LOBYTE(v72) = 2;
    v17 = sub_1DB09E044();
    v46 = v18;
    v47 = v17;
    LOBYTE(v72) = 3;
    v19 = sub_1DB09E044();
    v44 = v20;
    v45 = v19;
    LOBYTE(v72) = 4;
    *&v56 = sub_1DB09E044();
    *(&v56 + 1) = v21;
    LOBYTE(v72) = 5;
    *&v55 = sub_1DB09E044();
    *(&v55 + 1) = v22;
    LOBYTE(v72) = 6;
    *&v54 = sub_1DB09E044();
    *(&v54 + 1) = v23;
    LOBYTE(v72) = 7;
    *&v53 = sub_1DB09E044();
    *(&v53 + 1) = v24;
    LOBYTE(v72) = 8;
    v25 = sub_1DB09E044();
    v59 = 0;
    *&v52 = v25;
    *(&v52 + 1) = v26;
    LOBYTE(v72) = 9;
    *&v58 = sub_1DB09E044();
    *(&v58 + 1) = v27;
    v59 = 0;
    LOBYTE(v72) = 10;
    *&v57 = sub_1DB09E044();
    *(&v57 + 1) = v28;
    v59 = 0;
    v88 = 11;
    v29 = sub_1DB09E044();
    v59 = 0;
    v30 = v29;
    v32 = v31;
    (*(v6 + 8))(v10, v5);
    v33 = v50;
    v60 = v50;
    v34 = v48;
    *&v61 = v49;
    *(&v61 + 1) = v48;
    v35 = v46;
    *&v62 = v47;
    *(&v62 + 1) = v46;
    v36 = v44;
    *&v63 = v45;
    *(&v63 + 1) = v44;
    v64 = v56;
    v65 = v55;
    v66 = v54;
    v67 = v53;
    v68 = v52;
    v69 = v58;
    v70 = v57;
    *&v71 = v30;
    *(&v71 + 1) = v32;
    sub_1DAFF334C(&v60, &v72);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    v72 = v33;
    v73 = v49;
    v74 = v34;
    v75 = v47;
    v76 = v35;
    v77 = v45;
    v78 = v36;
    v79 = v56;
    v80 = v55;
    v81 = v54;
    v82 = v53;
    v83 = v52;
    v84 = v58;
    v85 = v57;
    v86 = v30;
    v87 = v32;
    result = sub_1DAFF331C(&v72);
    v37 = v69;
    a2[8] = v68;
    a2[9] = v37;
    v38 = v71;
    a2[10] = v70;
    a2[11] = v38;
    v39 = v65;
    a2[4] = v64;
    a2[5] = v39;
    v40 = v67;
    a2[6] = v66;
    a2[7] = v40;
    v41 = v61;
    *a2 = v60;
    a2[1] = v41;
    v42 = v63;
    a2[2] = v62;
    a2[3] = v42;
  }

  return result;
}

uint64_t sub_1DAFF3154(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65566E6F6D656164 && a2 == 0xED00006E6F697372;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1936487029 && a2 == 0xE400000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xE900000000000073 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB09E254();

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

unint64_t sub_1DAFF32C8()
{
  result = qword_1EE3044A0;
  if (!qword_1EE3044A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3044A0);
  }

  return result;
}

double sub_1DAFF3384(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_1DB0A7A90;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  return result;
}

double sub_1DAFF33AC(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_1DB0A7A90;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  return result;
}

unint64_t sub_1DAFF33D8()
{
  result = qword_1EE304480;
  if (!qword_1EE304480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE304480);
  }

  return result;
}

unint64_t sub_1DAFF3440()
{
  result = qword_1ECC0F1F0[0];
  if (!qword_1ECC0F1F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC0F1F0);
  }

  return result;
}

unint64_t sub_1DAFF3498()
{
  result = qword_1EE304490;
  if (!qword_1EE304490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE304490);
  }

  return result;
}

unint64_t sub_1DAFF34F0()
{
  result = qword_1EE304498;
  if (!qword_1EE304498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE304498);
  }

  return result;
}

uint64_t sub_1DAFF3544(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(*(a3 + a4 - 24) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6);
  v9 = *a2;
  return sub_1DAFF36A4(v7);
}

uint64_t sub_1DAFF3604@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1DAFF36A4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_1DAFF374C()
{
  v1 = (v0 + *(*v0 + 136));
  v3 = *v1;
  v4 = v1[1];

  MEMORY[0x1E127FE90](0x616470557473614CLL, 0xEA00000000006574);
  return v3;
}

uint64_t ODIConfigurationManager.__allocating_init(fallback:defaultsKey:maxAge:urlSession:defaults:updateRequestClosure:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, double a8)
{
  v17 = *(v8 + 48);
  v18 = *(v8 + 52);
  v19 = swift_allocObject();
  ODIConfigurationManager.init(fallback:defaultsKey:maxAge:urlSession:defaults:updateRequestClosure:)(a1, a2, a3, a4, a5, a6, a7, a8);
  return v19;
}

uint64_t *ODIConfigurationManager.init(fallback:defaultsKey:maxAge:urlSession:defaults:updateRequestClosure:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, double a8)
{
  v9 = v8;
  v47 = a6;
  v48 = a7;
  v51 = a4;
  v15 = *v9;
  v16 = *(*v9 + 80);
  v17 = sub_1DB09DC64();
  v45 = *(v17 - 8);
  v46 = v17;
  v18 = *(v45 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v43 - v21;
  v23 = *(v16 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20, v25);
  v27 = &v43 - v26;
  swift_defaultActor_initialize();
  *(v9 + *(*v9 + 152)) = 0;
  (*(v23 + 16))(v27, a1, v16);
  v49 = a2;
  v50 = a3;
  v28 = sub_1DB09D6B4();
  v29 = [a5 dataForKey_];

  if (v29)
  {
    v44 = a5;
    v30 = sub_1DB09D034();
    v32 = v31;

    v33 = sub_1DB09CC24();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    sub_1DB09CC14();
    v36 = *(v15 + 88);
    sub_1DB09CC04();

    sub_1DAF40780(v30, v32);
    v37 = *(v23 + 8);
    v37(a1, v16);
    v37(v27, v16);
    (*(v23 + 56))(v22, 0, 1, v16);
    (*(v23 + 32))(v27, v22, v16);
    a5 = v44;
  }

  else
  {
    (*(v23 + 8))(a1, v16);
  }

  (*(v23 + 32))(v9 + *(*v9 + 112), v27, v16);
  v38 = (v9 + *(*v9 + 128));
  v39 = v48;
  *v38 = v47;
  v38[1] = v39;
  *(v9 + *(*v9 + 120)) = a8;
  v40 = (v9 + *(*v9 + 136));
  v41 = v50;
  *v40 = v49;
  v40[1] = v41;
  *(v9 + *(*v9 + 144)) = v51;
  *(v9 + *(*v9 + 160)) = a5;
  return v9;
}

uint64_t sub_1DAFF3CCC()
{
  v1[2] = v0;
  v2 = sub_1DB09D154();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFF3D8C, v0, 0);
}

uint64_t sub_1DAFF3D8C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v3 + *(*v3 + 160));
  sub_1DAFF374C();
  v6 = sub_1DB09D6B4();

  [v5 doubleForKey_];
  v8 = v7;

  v9 = v8 + *(v3 + *(*v3 + 120));
  sub_1DB09D144();
  sub_1DB09D084();
  v11 = v10;
  (*(v2 + 8))(v1, v4);
  if (v9 >= v11)
  {
    v15 = v0[5];

    v16 = v0[1];

    return v16();
  }

  else
  {
    v12 = swift_task_alloc();
    v0[6] = v12;
    *v12 = v0;
    v12[1] = sub_1DAFF3F2C;
    v13 = v0[2];

    return sub_1DAFF4044();
  }
}

uint64_t sub_1DAFF3F2C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1DAFF4044()
{
  v1[10] = v0;
  v2 = *v0;
  v1[11] = *v0;
  v3 = sub_1DB09D154();
  v1[12] = v3;
  v4 = *(v3 - 8);
  v1[13] = v4;
  v5 = *(v4 + 64) + 15;
  v1[14] = swift_task_alloc();
  v6 = *(v2 + 80);
  v1[15] = v6;
  v7 = *(v6 - 8);
  v1[16] = v7;
  v8 = *(v7 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v9 = sub_1DB09CBF4();
  v1[19] = v9;
  v10 = *(v9 - 8);
  v1[20] = v10;
  v11 = *(v10 + 64) + 15;
  v1[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFF4200, v0, 0);
}

uint64_t sub_1DAFF4200()
{
  v1 = v0[10];
  v2 = *(*v1 + 152);
  if (*(v1 + v2))
  {
    if (qword_1EE301DC0 != -1)
    {
      swift_once();
    }

    v3 = sub_1DB09D4B4();
    __swift_project_value_buffer(v3, qword_1EE30A128);
    v4 = sub_1DB09D494();
    v5 = sub_1DB09DB54();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DAF16000, v4, v5, "Config update already in progress - skipping requested update", v6, 2u);
      MEMORY[0x1E1281810](v6, -1, -1);
    }

    v7 = v0[15];
    v8 = v0[11];

    v9 = *(v8 + 88);
    v10 = *(v8 + 96);
    type metadata accessor for ODIConfigurationManager.ConfigManagerError();
    swift_getWitnessTable();
    swift_allocError();
    *v11 = 0;
    *(v11 + 8) = -16384;
    swift_willThrow();
    v12 = v0[21];
    v14 = v0[17];
    v13 = v0[18];
    v15 = v0[14];

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = v0[21];
    *(v1 + v2) = 1;
    v19 = v1 + *(*v1 + 128);
    v20 = *(v19 + 8);
    (*v19)();
    v21 = *(v1 + *(*v1 + 144));
    v22 = *(MEMORY[0x1E6969EC0] + 4);
    v23 = swift_task_alloc();
    v0[22] = v23;
    *v23 = v0;
    v23[1] = sub_1DAFF448C;
    v24 = v0[21];

    return MEMORY[0x1EEDC6260](v24, 0);
  }
}

uint64_t sub_1DAFF448C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 176);
  v8 = *v4;
  v6[23] = a1;
  v6[24] = a2;
  v6[25] = a3;
  v6[26] = v3;

  v9 = v5[10];
  if (v3)
  {
    v10 = sub_1DAFF4CD8;
  }

  else
  {
    v10 = sub_1DAFF45C4;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1DAFF45C4()
{
  v95 = v0;
  v1 = v0[25];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    sub_1DAF8C94C([v2 statusCode], &v87);
    v3 = v87;
    v4 = v88;
    v88 = v4;
    v89 = 0;
    v90 = 0;
    v91 = 1;
    v92 = v87;
    v93 = v4;
    v94 = 0;
    if (!_s17CoreODIEssentials14HTTPStatusCodeO2eeoiySbAC_ACtFZ_0(&v92, &v90))
    {
      if (qword_1EE301DC0 != -1)
      {
        swift_once();
      }

      v38 = sub_1DB09D4B4();
      __swift_project_value_buffer(v38, qword_1EE30A128);
      v39 = sub_1DB09D494();
      v40 = sub_1DB09DB64();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v92 = v42;
        *v41 = 136315138;
        v87 = v3;
        v88 = v4;
        v43 = HTTPStatusCode.description.getter();
        v45 = sub_1DB015E84(v43, v44, &v92);

        *(v41 + 4) = v45;
        _os_log_impl(&dword_1DAF16000, v39, v40, "Config update response not success: %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        MEMORY[0x1E1281810](v42, -1, -1);
        MEMORY[0x1E1281810](v41, -1, -1);
      }

      v46 = v0[24];
      v47 = v0[25];
      v48 = v0[23];
      v49 = v0[20];
      v83 = v0[19];
      v85 = v0[21];
      v50 = v0[15];
      v34 = v0[10];
      v51 = v0[11];
      v52 = *(v51 + 88);
      v53 = *(v51 + 96);
      type metadata accessor for ODIConfigurationManager.ConfigManagerError();
      swift_getWitnessTable();
      swift_allocError();
      *v54 = v3;
      *(v54 + 8) = v4 | 0x4000;
      swift_willThrow();

      sub_1DAF40780(v48, v46);
      (*(v49 + 8))(v85, v83);
      goto LABEL_14;
    }
  }

  v5 = v0[26];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[18];
  v9 = v0[15];
  v10 = v0[11];
  v11 = sub_1DB09CC24();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1DB09CC14();
  v14 = *(v10 + 88);
  sub_1DB09CC04();
  if (v5)
  {
    v15 = v5;

    if (qword_1EE301DC0 != -1)
    {
      swift_once();
    }

    v16 = sub_1DB09D4B4();
    __swift_project_value_buffer(v16, qword_1EE30A128);
    v17 = v5;
    v18 = sub_1DB09D494();
    v19 = sub_1DB09DB64();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v87 = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v23 = v0[5];
      v22 = v0[6];
      v24 = v0[7];
      v25 = sub_1DB09E324();
      v27 = sub_1DB015E84(v25, v26, &v87);

      *(v20 + 4) = v27;
      _os_log_impl(&dword_1DAF16000, v18, v19, "Config decode error: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1E1281810](v21, -1, -1);
      MEMORY[0x1E1281810](v20, -1, -1);
    }

    v29 = v0[24];
    v28 = v0[25];
    v30 = v0[23];
    v31 = v0[20];
    v82 = v0[21];
    v32 = v0[19];
    v33 = v0[15];
    v34 = v0[10];
    v35 = *(v0[11] + 96);
    type metadata accessor for ODIConfigurationManager.ConfigManagerError();
    swift_getWitnessTable();
    swift_allocError();
    *v36 = v15;
    *(v36 + 8) = 0x8000;
    swift_willThrow();
    v37 = v15;

    sub_1DAF40780(v30, v29);
    (*(v31 + 8))(v82, v32);
LABEL_14:
    *(v34 + *(*v34 + 152)) = 0;
    v55 = v0[21];
    v57 = v0[17];
    v56 = v0[18];
    v58 = v0[14];

    v59 = v0[1];
    goto LABEL_16;
  }

  v60 = v0[24];
  v61 = v0[23];
  v80 = v0[25];
  v81 = v0[20];
  v62 = v0[18];
  v84 = v0[19];
  v86 = v0[21];
  v79 = v60;
  v63 = v0[16];
  v64 = v0[17];
  v65 = v0[15];
  v66 = v0[13];
  v77 = v0[14];
  v78 = v0[12];
  v67 = v0[10];

  (*(v63 + 16))(v64, v62, v65);
  sub_1DAFF36A4(v64);
  v68 = *(v67 + *(*v67 + 160));
  v69 = sub_1DB09D004();
  v70 = (v67 + *(*v67 + 136));
  v71 = *v70;
  v72 = v70[1];
  v73 = sub_1DB09D6B4();
  [v68 setObject:v69 forKey:v73];

  sub_1DB09D144();
  sub_1DB09D084();
  (*(v66 + 8))(v77, v78);
  v74 = sub_1DB09DAB4();
  sub_1DAFF374C();
  v75 = sub_1DB09D6B4();

  [v68 setObject:v74 forKey:v75];

  sub_1DAF40780(v61, v79);
  (*(v63 + 8))(v62, v65);
  (*(v81 + 8))(v86, v84);
  *(v67 + *(*v67 + 152)) = 0;

  v59 = v0[1];
LABEL_16:

  return v59();
}

uint64_t sub_1DAFF4CD8()
{
  v32 = v0;
  if (qword_1EE301DC0 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = sub_1DB09D4B4();
  __swift_project_value_buffer(v2, qword_1EE30A128);
  v3 = v1;
  v4 = sub_1DB09D494();
  v5 = sub_1DB09DB64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = sub_1DB09E324();
    v14 = sub_1DB015E84(v12, v13, &v31);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1DAF16000, v4, v5, "Config update request failed: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E1281810](v8, -1, -1);
    MEMORY[0x1E1281810](v7, -1, -1);
  }

  v15 = v0[26];
  v17 = v0[20];
  v16 = v0[21];
  v18 = v0[19];
  v19 = v0[15];
  v21 = v0[10];
  v20 = v0[11];
  v22 = *(v20 + 88);
  v23 = *(v20 + 96);
  type metadata accessor for ODIConfigurationManager.ConfigManagerError();
  swift_getWitnessTable();
  swift_allocError();
  *v24 = v15;
  *(v24 + 8) = 0;
  swift_willThrow();
  (*(v17 + 8))(v16, v18);
  *(v21 + *(*v21 + 152)) = 0;
  v25 = v0[21];
  v26 = v0[17];
  v27 = v0[18];
  v28 = v0[14];

  v29 = v0[1];

  return v29();
}

uint64_t sub_1DAFF4F64()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + *(*v1 + 160));
  v3 = (v1 + *(*v1 + 136));
  v4 = *v3;
  v5 = v3[1];
  v6 = sub_1DB09D6B4();
  [v2 removeObjectForKey_];

  sub_1DAFF374C();
  v7 = sub_1DB09D6B4();

  [v2 removeObjectForKey_];

  v8 = *(v0 + 8);

  return v8();
}

uint64_t ODIConfigurationManager.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  v1 = *(v0 + *(*v0 + 128) + 8);

  v2 = *(v0 + *(*v0 + 136) + 8);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ODIConfigurationManager.__deallocating_deinit()
{
  ODIConfigurationManager.deinit();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1DAFF5190(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ODIConfigurationManager.updateIfNeeded()()
{
  v2 = *(*v0 + 232);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DAF62CC4;

  return v6();
}

uint64_t dispatch thunk of ODIConfigurationManager.clearStoredData()()
{
  v2 = *(*v0 + 248);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DAF62CC4;

  return v6();
}

uint64_t sub_1DAFF54F8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_17CoreODIEssentials23ODIConfigurationManagerC06ConfigD5ErrorOyx_G(uint64_t a1)
{
  v1 = *(a1 + 8) >> 14;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DAFF555C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 10))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 8) >> 7) & 0x7C | (*(a1 + 8) >> 14)) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1DAFF55B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 0x1F) - 32 * a2) << 9;
    }
  }

  return result;
}

uint64_t sub_1DAFF5614(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 8) = *(result + 8) & 0x1FF | (a2 << 14);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = -16384;
  }

  return result;
}

uint64_t sub_1DAFF5658(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6F8, &qword_1DB0AF5C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14 - v7;
  if (*(v1 + 112) == 1)
  {
    *(v1 + 112) = 0;
    return sub_1DB09D9B4();
  }

  else
  {
    (*(v4 + 16))(v8, a1, v3);
    v10 = *(v1 + 120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 120) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1DAF736D4(0, v10[2] + 1, 1, v10);
      *(v1 + 120) = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_1DAF736D4(v12 > 1, v13 + 1, 1, v10);
    }

    v10[2] = v13 + 1;
    result = (*(v4 + 32))(v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v8, v3);
    *(v1 + 120) = v10;
  }

  return result;
}

uint64_t sub_1DAFF57F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6F8, &qword_1DB0AF5C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v19 - v13;
  v15 = sub_1DB09DA24();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v5 + 16))(v9, a1, v4);
  v16 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = a2;
  (*(v5 + 32))(&v17[v16], v9, v4);

  sub_1DAF4F0EC(0, 0, v14, &unk_1DB0AF5E0, v17);
}

uint64_t sub_1DAFF59E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DAFF5A00, a4, 0);
}

uint64_t sub_1DAFF5A00()
{
  v1 = v0[2];
  sub_1DAFF5658(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1DAFF5A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6F8, &qword_1DB0AF5C0);
  v4[3] = v6;
  v7 = *(v6 - 8);
  v4[4] = v7;
  v8 = *(v7 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFF5B54, a4, 0);
}

uint64_t sub_1DAFF5B54()
{
  v1 = *(v0[2] + 120);
  if (*(v1 + 16))
  {
    v3 = v0[4];
    v2 = v0[5];
    v4 = v0[3];
    (*(v3 + 16))(v2, v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v4);
    sub_1DB0226F4(0, 1);
    sub_1DB09D9B4();
    (*(v3 + 8))(v2, v4);
  }

  else
  {
    *(v0[2] + 112) = 1;
  }

  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DAFF5C40(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6F8, &qword_1DB0AF5C0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF62CC4;

  return sub_1DAFF59E0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1DAFF5D44(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[34] = a3;
  v4[35] = a4;
  v4[33] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E578, &qword_1DB0A2830);
  v4[36] = v6;
  v7 = *(v6 - 8);
  v4[37] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *a2;
  v4[38] = v9;
  v4[39] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1DAFF5E1C, 0, 0);
}

uint64_t sub_1DAFF5E1C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 30;
  v4 = v0[38];
  v5 = v0[39];
  v8 = v0 + 36;
  v7 = v0[36];
  v6 = v8[1];
  v10 = v1[34];
  v9 = v1[35];
  v15 = [objc_allocWithZone(ODNServices) init];
  v1[40] = v15;
  v11 = sub_1DB09D6B4();
  v1[41] = v11;
  sub_1DAF55920(v5);
  v12 = sub_1DB09D604();
  v1[42] = v12;

  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_1DAFF6048;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D994();
  (*(v6 + 32))(boxed_opaque_existential_0, v4, v7);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1DAF6C978;
  v1[13] = &block_descriptor_12;
  [v15 ofLBc0SV56ddaijH:v11 i7D0Lridvo8oYoNd:v12 completion:?];
  (*(v6 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1DAFF6048()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 344) = v2;
  if (v2)
  {
    v3 = sub_1DAFF6290;
  }

  else
  {
    v3 = sub_1DAFF6158;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAFF6158()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);

  v5 = sub_1DB09CC24();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_1DB09CC14();
  type metadata accessor for PregeneratedAssessment();
  sub_1DAFF65B0();
  sub_1DB09CC04();
  v8 = *(v0 + 320);
  v9 = *(v0 + 304);

  sub_1DAF40780(v3, v4);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1DAFF6290()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 328);
  swift_willThrow();

  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v4 = MEMORY[0x1E69E7CC0];
  v5 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  if (*(v5 + 16))
  {
    v6 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
    if (v7)
    {
      sub_1DAF409DC(*(v5 + 56) + 32 * v6, v0 + 144);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      if (swift_dynamicCast())
      {
        v4 = *(v0 + 256);
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DAF72EC0(0, *(v4 + 2) + 1, 1, v4);
  }

  v9 = *(v4 + 2);
  v8 = *(v4 + 3);
  if (v9 >= v8 >> 1)
  {
    v4 = sub_1DAF72EC0((v8 > 1), v9 + 1, 1, v4);
  }

  *(v4 + 2) = v9 + 1;
  v10 = &v4[56 * v9];
  *(v10 + 4) = 0xD000000000000024;
  *(v10 + 5) = 0x80000001DB0C8BA0;
  *(v10 + 6) = 0xD00000000000002ELL;
  *(v10 + 7) = 0x80000001DB0C8BD0;
  *(v10 + 8) = 0xD000000000000036;
  *(v10 + 9) = 0x80000001DB0C8C00;
  *(v10 + 10) = 22;
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v0 + 176) = v4;
  sub_1DAF40D20((v0 + 176), (v0 + 208));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B11C((v0 + 208), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
  v12 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v13 = sub_1DB09D6B4();
  v14 = sub_1DB09D604();
  [v12 initWithDomain:v13 code:-3185 userInfo:v14];

  swift_willThrow();
  v15 = *(v0 + 304);

  v16 = *(v0 + 8);

  return v16();
}

unint64_t sub_1DAFF65B0()
{
  result = qword_1ECC0F2F8;
  if (!qword_1ECC0F2F8)
  {
    type metadata accessor for PregeneratedAssessment();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F2F8);
  }

  return result;
}

_OWORD *sub_1DAFF6618@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = sub_1DB09D734();
  v18 = *(*(v17 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v17 - 8, v19);
  *&v85 = a4;
  *(&v85 + 1) = a5;
  v86 = a6;
  v87 = a7;
  v21 = a8 >> 60;
  if ((a8 >> 60) > 4)
  {
    if ((v21 - 5) < 3)
    {
      if (*((a8 & 0xFFFFFFFFFFFFFFFLL) + 0x10) != a1)
      {
        goto LABEL_71;
      }

      goto LABEL_17;
    }

    v22 = __ROR8__(a8 ^ 0x8000000000000000, 3);
    if (v22 > 3)
    {
      if (v22 > 5)
      {
        if (v22 != 6)
        {
LABEL_59:
          *(a9 + 24) = &type metadata for ASN1ItemTemp;
          v62 = swift_allocObject();
          *a9 = v62;
          *(v62 + 16) = a1;
          *(v62 + 24) = a2;
          *(v62 + 25) = a3 & 1;
          *(v62 + 32) = a4;
          *(v62 + 40) = a5;
          *(v62 + 48) = a6;
          *(v62 + 56) = a7;
          return swift_unknownObjectRetain();
        }

LABEL_54:
        if ((a7 & 1) == 0)
        {
          swift_unknownObjectRetain();
LABEL_56:
          sub_1DAFF74F0(a4, a5, a6, a7);
          v61 = v60;
LABEL_86:
          *(a9 + 24) = &type metadata for CoreODIASN1OtherType;
          result = swift_unknownObjectRelease();
          *a9 = a1;
          *(a9 + 8) = v61;
          return result;
        }

        sub_1DB09E294();
        swift_unknownObjectRetain_n();
        v71 = swift_dynamicCastClass();
        if (!v71)
        {
          swift_unknownObjectRelease();
          v71 = MEMORY[0x1E69E7CC0];
        }

        v72 = *(v71 + 16);

        if (!__OFSUB__(a7 >> 1, a6))
        {
          if (v72 == (a7 >> 1) - a6)
          {
            v61 = swift_dynamicCastClass();
            if (!v61)
            {
              swift_unknownObjectRelease();
              v61 = MEMORY[0x1E69E7CC0];
            }

            goto LABEL_86;
          }

          goto LABEL_106;
        }

LABEL_105:
        __break(1u);
LABEL_106:
        swift_unknownObjectRelease();
        goto LABEL_56;
      }

      if (v22 == 4)
      {
        if (a1 != 19)
        {
          goto LABEL_71;
        }

        goto LABEL_69;
      }

      if (a1 == 22)
      {
LABEL_69:
        *&v82 = a4;
        *(&v82 + 1) = a5;
        v83 = a6;
        v84 = a7;
        swift_unknownObjectRetain();
        sub_1DB09D724();
LABEL_76:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F300, &qword_1DB0AF648);
        sub_1DAFF7CB4();
        v66 = sub_1DB09D6F4();
        if (v67)
        {
          v68 = v66;
          v69 = v67;
          *(a9 + 24) = MEMORY[0x1E69E6158];
          result = swift_unknownObjectRelease();
          *a9 = v68;
          *(a9 + 8) = v69;
          return result;
        }

        sub_1DAF70638();
        swift_allocError();
        *v70 = 2;
        swift_willThrow();
        return swift_unknownObjectRelease();
      }

      goto LABEL_71;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        if (a1 == 5)
        {
          goto LABEL_74;
        }
      }

      else if (a1 == 18)
      {
LABEL_75:
        *&v82 = a4;
        *(&v82 + 1) = a5;
        v83 = a6;
        v84 = a7;
        swift_unknownObjectRetain();
        sub_1DB09D714();
        goto LABEL_76;
      }

      goto LABEL_71;
    }

    if (!v22)
    {
      if (a1 != 2)
      {
        goto LABEL_71;
      }

      goto LABEL_44;
    }

LABEL_16:
    if (a1 == 4)
    {
      goto LABEL_17;
    }

LABEL_71:
    sub_1DAF70638();
    swift_allocError();
    *v65 = 0;
    return swift_willThrow();
  }

  if ((v21 - 1) < 2)
  {
    if (a1 != 16)
    {
      goto LABEL_71;
    }

    goto LABEL_17;
  }

  if ((v21 - 3) >= 2)
  {
    goto LABEL_16;
  }

  if (a1 != 17)
  {
    goto LABEL_71;
  }

LABEL_17:
  if (v21 <= 3)
  {
    if (v21 <= 1)
    {
      if (!v21)
      {
        v32 = *(a8 + 16);
        v33 = *(a8 + 24);
        swift_unknownObjectRetain();
        sub_1DAFF7A3C(v32);
        v34 = v88;
        sub_1DAF70210(&v82, &v85, v32, v33);
        if (v34)
        {
          sub_1DAFC4354(v32);
        }

        else
        {
          if (v86 == v87 >> 1)
          {
            sub_1DAFC4354(v32);
            swift_unknownObjectRelease();
            return sub_1DAF40D20(&v82, a9);
          }

          sub_1DAF70638();
          swift_allocError();
          *v73 = 3;
          swift_willThrow();
          sub_1DAFC4354(v32);
          __swift_destroy_boxed_opaque_existential_1Tm(&v82);
        }

        return swift_unknownObjectRelease();
      }

      v47 = *((a8 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      swift_unknownObjectRetain();

      v48 = v88;
      v49 = sub_1DAFF7AAC(&v85, v47);
      if (v48)
      {

        return swift_unknownObjectRelease();
      }

      v59 = v49;

      goto LABEL_64;
    }

    if (v21 != 2)
    {
      v35 = *((a8 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      swift_unknownObjectRetain();

      v36 = sub_1DAFF76A0(a4, a5, a6, a7, v35);
      if (!v88)
      {
        v63 = v36;

        *(a9 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EC30, &unk_1DB0AC090);
        result = swift_unknownObjectRelease();
        *a9 = v63;
        return result;
      }

      return swift_unknownObjectRelease();
    }

LABEL_31:
    v37 = a8 & 0xFFFFFFFFFFFFFFFLL;
    v38 = *((a8 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v39 = *(v37 + 24);
    sub_1DAFF7A3C(v38);
    swift_unknownObjectRetain();
    v40 = v88;
    v41 = sub_1DAF7075C(&v85, v38, v39);
    if (v40)
    {
      swift_unknownObjectRelease();
      return sub_1DAFC4354(v38);
    }

    v59 = v41;
    sub_1DAFC4354(v38);
LABEL_64:
    *(a9 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EC30, &unk_1DB0AC090);
    *a9 = v59;
    return swift_unknownObjectRelease();
  }

  if (v21 <= 5)
  {
    if (v21 != 4)
    {
      v54 = a8 & 0xFFFFFFFFFFFFFFFLL;
      v24 = *((a8 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *((a8 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v26 = *((a8 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v55 = *(v54 + 40);
      v56 = *(v54 + 48);
      swift_unknownObjectRetain();

      v57 = v55;
      v58 = v88;
      sub_1DAF70210(&v82, &v85, v57, v56);
      if (!v58)
      {
        v31 = a9;
        *(a9 + 24) = &type metadata for CoreODIASN1ApplicationType;
        goto LABEL_66;
      }

LABEL_48:

      return swift_unknownObjectRelease();
    }

    goto LABEL_31;
  }

  if (v21 == 6)
  {
    v42 = a8 & 0xFFFFFFFFFFFFFFFLL;
    v24 = *((a8 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v25 = *((a8 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v26 = *((a8 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v43 = *(v42 + 40);
    v44 = *(v42 + 48);
    swift_unknownObjectRetain();

    v45 = v43;
    v46 = v88;
    sub_1DAF70210(&v82, &v85, v45, v44);
    if (!v46)
    {
      v31 = a9;
      *(a9 + 24) = &type metadata for CoreODIASN1ContextType;
      goto LABEL_66;
    }

    goto LABEL_48;
  }

  if (v21 == 7)
  {
    v23 = a8 & 0xFFFFFFFFFFFFFFFLL;
    v24 = *((a8 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v25 = *((a8 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v26 = *((a8 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v27 = *(v23 + 40);
    v28 = *(v23 + 48);
    swift_unknownObjectRetain();

    v29 = v27;
    v30 = v88;
    sub_1DAF70210(&v82, &v85, v29, v28);
    if (!v30)
    {
      v31 = a9;
      *(a9 + 24) = &type metadata for CoreODIASN1PrivateType;
LABEL_66:
      v64 = swift_allocObject();
      *v31 = v64;
      *(v64 + 16) = v24;
      *(v64 + 24) = v25;
      *(v64 + 32) = v26;
      sub_1DAF40D20(&v82, (v64 + 40));
      return swift_unknownObjectRelease();
    }

    goto LABEL_48;
  }

  v50 = __ROR8__(a8 ^ 0x8000000000000000, 3);
  if (v50 > 3)
  {
    if ((v50 - 4) >= 2)
    {
      if (v50 != 6)
      {
        goto LABEL_59;
      }

      goto LABEL_54;
    }

    goto LABEL_69;
  }

  if (v50 > 1)
  {
    if (v50 == 2)
    {
LABEL_74:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E550, &unk_1DB0AF650);
      *(a9 + 24) = result;
      *a9 = 1;
      return result;
    }

    goto LABEL_75;
  }

  if (!v50)
  {
LABEL_44:
    v51 = a7 >> 1;
    v52 = (a7 >> 1) - a6;
    if (!__OFSUB__(a7 >> 1, a6))
    {
      if (v52 > 8)
      {
        sub_1DAF70638();
        swift_allocError();
        *v53 = 1;
        return swift_willThrow();
      }

      *(a9 + 24) = MEMORY[0x1E69E76D8];
      if (v51 == a6)
      {
        v74 = 0;
LABEL_96:
        *a9 = v74;
        return result;
      }

      a7 = v88;
      if (v51 > a6)
      {
        v74 = 0;
        v77 = (a5 + a6);
        do
        {
          v78 = *v77++;
          v74 = v78 | (v74 << 8);
          --v52;
        }

        while (v52);
        goto LABEL_96;
      }

      __break(1u);
      goto LABEL_108;
    }

    __break(1u);
    goto LABEL_105;
  }

  if (a7)
  {
    sub_1DB09E294();
    swift_unknownObjectRetain_n();
    v79 = swift_dynamicCastClass();
    if (!v79)
    {
      swift_unknownObjectRelease();
      v79 = MEMORY[0x1E69E7CC0];
    }

    v80 = *(v79 + 16);

    if (!__OFSUB__(a7 >> 1, a6))
    {
      if (v80 == (a7 >> 1) - a6)
      {
        v76 = swift_dynamicCastClass();
        if (!v76)
        {
          swift_unknownObjectRelease();
          v76 = MEMORY[0x1E69E7CC0];
        }

        goto LABEL_103;
      }

      goto LABEL_109;
    }

LABEL_108:
    __break(1u);
LABEL_109:
    swift_unknownObjectRelease();
    goto LABEL_92;
  }

  swift_unknownObjectRetain();
LABEL_92:
  sub_1DAFF74F0(a4, a5, a6, a7);
  v76 = v75;
LABEL_103:
  *(a9 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4A0, &qword_1DB0A0968);
  result = swift_unknownObjectRelease();
  *a9 = v76;
  return result;
}
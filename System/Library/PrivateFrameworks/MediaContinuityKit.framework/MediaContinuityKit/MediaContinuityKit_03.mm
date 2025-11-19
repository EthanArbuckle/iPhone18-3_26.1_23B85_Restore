uint64_t sub_2584AA338(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930418, &qword_258538020) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_258472CF8;

  return sub_258497D94(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_2584AA45C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_258533C6C() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930418, &qword_258538020) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_258472CF8;

  return sub_2584A5B98(a1, v10, v11, v1 + 4, v1 + v6, v1 + v9);
}

uint64_t sub_2584AA5D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2584AA608(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258472CF8;

  return sub_2584A4D50(a1, v5);
}

unint64_t sub_2584AA71C()
{
  result = qword_27F930488;
  if (!qword_27F930488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930488);
  }

  return result;
}

BOOL sub_2584AA770(void *a1)
{
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
  result = 0;
  if (!swift_dynamicCast() || v5 != 4)
  {
    v3 = a1;
    if (!swift_dynamicCast() || v5 != 5)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2584AA828(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2584AA898(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258472CF8;

  return sub_25848352C(a1);
}

uint64_t objectdestroy_146Tm()
{
  v1 = sub_258533C6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2584AAA10(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_258533C6C() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_258472CF8;

  return sub_2584A5C74(a1, v7, v8, v1 + 4, v1 + v6, v10, v11);
}

uint64_t objectdestroy_156Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = (v6 + *(v4 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_258533C6C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 24) & ~v10;
  v12 = *(v9 + 64);
  v13 = v5 | v10;
  v14 = *(v2 + 16);
  swift_unknownObjectRelease();
  v15 = *(v2 + 40);

  (*(v4 + 8))(v2 + v6, v3);
  (*(v9 + 8))(v2 + v11, v8);

  return MEMORY[0x2821FE8E8](v2, v11 + v12, v13 | 7);
}

void sub_2584AAD34()
{
  v2 = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930540, &qword_2585381A0) - 8);
  v4 = ((*(v3 + 80) + 48) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = v4 & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_258533C6C() - 8);
  v7 = v0[3];
  v13 = v0[2];
  v8 = *(v0 + v4);
  v9 = v0[4];
  v10 = v0[5];
  v11 = v0 + ((v5 + *(v6 + 80) + 24) & ~*(v6 + 80));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_258472CF8;

  JUMPOUT(0x2584A6034);
}

uint64_t sub_2584AAEDC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v11 = *(v2 + 48);
  v10 = *(v2 + 56);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_258472CF8;

  return sub_2584A6294(a1, a2, v6, v7, v8, v9, v11);
}

uint64_t objectdestroy_163Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 16);
  swift_unknownObjectRelease();
  v9 = *(v2 + 40);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_2584AB0AC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930540, &qword_2585381A0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_258472CF8;

  return sub_2584981A0(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t objectdestroy_167Tm(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_258533C6C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 48) & ~v7;
  v9 = *(v6 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = v7 | v12;
  v16 = *(v2 + 16);
  swift_unknownObjectRelease();
  (*(v6 + 8))(v2 + v8, v5);
  (*(v11 + 8))(v2 + v13, v10);

  return MEMORY[0x2821FE8E8](v2, v13 + v14, v15 | 7);
}

uint64_t sub_2584AB32C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_258533C6C() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930540, &qword_2585381A0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_258472CF8;

  return sub_2584A638C(a1, v10, v11, v1 + 4, v1 + v6, v1 + v9);
}

uint64_t sub_2584AB4B0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_258472CF8;

  return sub_2584A673C(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_2584AB65C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  *a1 = v2;
  *(a1 + 8) = v3;
  return sub_2584742A4(v2, v3);
}

uint64_t sub_2584AB670(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258464F5C;

  return sub_258494EF0(a1, v1);
}

uint64_t sub_2584AB70C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2584952D0();
}

uint64_t sub_2584AB79C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258472CF8;

  return sub_258495428(a1);
}

uint64_t sub_2584AB838()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258464F5C;

  return sub_258495580();
}

uint64_t sub_2584AB8C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2584956C8();
}

uint64_t sub_2584AB958()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_258495810();
}

uint64_t sub_2584ABAF4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2584A7B8C(a1, a2);
  }

  return a1;
}

unint64_t sub_2584ABB2C()
{
  result = qword_27F930598;
  if (!qword_27F930598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930598);
  }

  return result;
}

uint64_t sub_2584ABB80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2584ABBE0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_229Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v13 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_2584ABDB0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_258472CF8;

  return sub_2584A666C(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

id sub_2584ABF5C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 48);
  *(a1 + 32) = v6;
  return sub_2584A967C(v2, v3, v4, v5, v6);
}

uint64_t sub_2584ABF78(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258472CF8;

  return sub_258494B04(a1, v1);
}

uint64_t sub_2584AC014()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_25849522C();
}

uint64_t sub_2584AC0A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258472CF8;

  return sub_258495374(a1);
}

uint64_t sub_2584AC140()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2584954DC();
}

uint64_t sub_2584AC1D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_258495624();
}

uint64_t sub_2584AC260()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_25849576C();
}

uint64_t sub_2584AC2F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2584AC364()
{
  result = qword_27F9305C0;
  if (!qword_27F9305C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9305C0);
  }

  return result;
}

uint64_t sub_2584AC3B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2584AC4D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2584AC538(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258472CF8;

  return sub_25848C7A8(a1, v1);
}

uint64_t sub_2584AC5D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_2584AC638()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2584AC670(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258472CF8;

  return sub_2584829CC(a1, v1 + 16);
}

uint64_t sub_2584AC708(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258472CF8;

  return sub_258482910(a1, v1 + 16);
}

uint64_t dispatch thunk of MediaStream.activate()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_258472CF8;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MediaStream.invalidate()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 56);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_258464F5C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of MediaStream.pause()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 64);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_258464F5C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of MediaStream.resume()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 72);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_258472CF8;

  return v9(a1, a2);
}

uint64_t VideoStreamEvent.hashValue.getter()
{
  sub_258533EEC();
  MEMORY[0x259C81F40](0);
  return sub_258533F2C();
}

unint64_t sub_2584ACD24()
{
  result = qword_27F9305C8;
  if (!qword_27F9305C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9305C8);
  }

  return result;
}

uint64_t AudioStreamIdentifier.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_258533CEC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2584ACDF8()
{
  sub_258533EEC();
  sub_2585334AC();
  return sub_258533F2C();
}

uint64_t sub_2584ACE64()
{
  sub_258533EEC();
  sub_2585334AC();
  return sub_258533F2C();
}

uint64_t sub_2584ACEB4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_258533CEC();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_2584ACF5C()
{
  result = qword_27F9305D0;
  if (!qword_27F9305D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9305D0);
  }

  return result;
}

unint64_t sub_2584ACFB0(void *a1)
{
  a1[1] = sub_2584ACFE8();
  a1[2] = sub_2584ACF5C();
  result = sub_2584AD03C();
  a1[3] = result;
  return result;
}

unint64_t sub_2584ACFE8()
{
  result = qword_27F9305D8;
  if (!qword_27F9305D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9305D8);
  }

  return result;
}

unint64_t sub_2584AD03C()
{
  result = qword_27F9305E0;
  if (!qword_27F9305E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9305E0);
  }

  return result;
}

unint64_t sub_2584AD094()
{
  result = qword_27F9305E8;
  if (!qword_27F9305E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9305F0, &qword_2585385C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9305E8);
  }

  return result;
}

uint64_t VideoStreamIdentifier.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_258533CEC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2584AD19C()
{
  sub_258533EEC();
  sub_2585334AC();
  return sub_258533F2C();
}

uint64_t sub_2584AD220()
{
  sub_258533EEC();
  sub_2585334AC();
  return sub_258533F2C();
}

uint64_t sub_2584AD27C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_258533CEC();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_2584AD33C()
{
  result = qword_27F9305F8;
  if (!qword_27F9305F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9305F8);
  }

  return result;
}

unint64_t sub_2584AD390(void *a1)
{
  a1[1] = sub_2584AD3C8();
  a1[2] = sub_2584AD33C();
  result = sub_2584AD41C();
  a1[3] = result;
  return result;
}

unint64_t sub_2584AD3C8()
{
  result = qword_27F930600;
  if (!qword_27F930600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930600);
  }

  return result;
}

unint64_t sub_2584AD41C()
{
  result = qword_27F930608;
  if (!qword_27F930608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930608);
  }

  return result;
}

unint64_t sub_2584AD474()
{
  result = qword_27F930610;
  if (!qword_27F930610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F930618, &qword_258538710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930610);
  }

  return result;
}

double static MediaContinuityUsage.compositorServices.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

uint64_t MediaContinuityUsage.description.getter()
{
  if (*(v0 + 33) != 1)
  {
    return 0xD000000000000012;
  }

  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2] | v0[3];
  if (*(v0 + 32))
  {
    v4 = 0;
  }

  else
  {
    v4 = (v3 | *v0 | v2) == 0;
  }

  if (v4)
  {
    return 0xD000000000000011;
  }

  v5 = v3 | v2;
  if (!*(v0 + 32) && v1 == 1 && v5 == 0)
  {
    return 0x79616C70726961;
  }

  if (!*(v0 + 32) && v1 == 2 && !v5)
  {
    return 0x72616365646973;
  }

  if (v5)
  {
    v8 = 0x694D656E6F685069;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (v1 == 3)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x694D656E6F685069;
  }

  if (*(v0 + 32))
  {
    result = 0x694D656E6F685069;
  }

  else
  {
    result = v9;
  }

  *(v0 + 32);
  return result;
}

uint64_t sub_2584AD644()
{
  if (*(v0 + 33) != 1)
  {
    return 0xD000000000000012;
  }

  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2] | v0[3];
  if (*(v0 + 32))
  {
    v4 = 0;
  }

  else
  {
    v4 = (v3 | *v0 | v2) == 0;
  }

  if (v4)
  {
    return 0xD000000000000011;
  }

  v5 = v3 | v2;
  if (!*(v0 + 32) && v1 == 1 && v5 == 0)
  {
    return 0x79616C70726961;
  }

  if (!*(v0 + 32) && v1 == 2 && !v5)
  {
    return 0x72616365646973;
  }

  if (v5)
  {
    v8 = 0x694D656E6F685069;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (v1 == 3)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x694D656E6F685069;
  }

  if (*(v0 + 32))
  {
    result = 0x694D656E6F685069;
  }

  else
  {
    result = v9;
  }

  *(v0 + 32);
  return result;
}

uint64_t _s18MediaContinuityKit0aB5UsageO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = *(a2 + 32);
  if (*(a1 + 33) != 1)
  {
    if (!*(a2 + 33))
    {
      v19 = v6 & v11;
      if ((v6 & 1) == 0 && (v11 & 1) == 0)
      {
        v33[0] = v2;
        v33[1] = v3;
        v33[2] = v5;
        v33[3] = v4;
        v32[0] = v7;
        v32[1] = v8;
        v32[2] = v10;
        v32[3] = v9;
        v19 = sub_2584CE9A4(v32, v33, v33, &v34);
      }

      goto LABEL_76;
    }

    if (v10 | v8 | v7 | v9)
    {
      v17 = 0;
    }

    else
    {
      v17 = v11 == 0;
    }

    if (v17)
    {
      goto LABEL_75;
    }

    goto LABEL_27;
  }

  v12 = v5 | v3;
  if (v12 | v2 | v4)
  {
    v13 = 0;
  }

  else
  {
    v13 = v6 == 0;
  }

  if (v13)
  {
    if (!*(a2 + 33))
    {
LABEL_75:
      v19 = 0;
      goto LABEL_76;
    }

    if (v10 | v8 | v7 | v9)
    {
      v18 = 0;
    }

    else
    {
      v18 = v11 == 0;
    }

    if (v18)
    {
LABEL_44:
      v19 = 1;
      goto LABEL_76;
    }

LABEL_27:
    *(a2 + 32);
    goto LABEL_75;
  }

  v14 = v12 | v4;
  if (!*(a1 + 32) && v2 == 1 && !v14)
  {
    if (!*(a2 + 33))
    {
      goto LABEL_75;
    }

    v15 = v10 | v8;
    if (!(v15 | v7 | v9) && !*(a2 + 32))
    {
      goto LABEL_75;
    }

    v16 = v15 | v9;
    if (*(a2 + 32) || v7 != 1 || v16)
    {
      goto LABEL_75;
    }

    goto LABEL_44;
  }

  if (!*(a1 + 32) && v2 == 2 && !v14)
  {
    if (!*(a2 + 33))
    {
      goto LABEL_75;
    }

    v20 = v10 | v8;
    if (!(v20 | v7 | v9) && !*(a2 + 32))
    {
      goto LABEL_75;
    }

    v21 = v20 | v9;
    if (!*(a2 + 32) && v7 == 1 && !v21)
    {
      goto LABEL_75;
    }

    if (*(a2 + 32) || v7 != 2 || v21)
    {
      goto LABEL_75;
    }

    goto LABEL_44;
  }

  if (*(a1 + 32) || v2 != 3 || v14)
  {
    if ((*(a2 + 33) & 1) == 0)
    {
      goto LABEL_75;
    }

    v26 = v10 | v8;
    if (!(v26 | v7 | v9) && !*(a2 + 32))
    {
      goto LABEL_75;
    }

    v27 = v26 | v9;
    if (!*(a2 + 32) && v7 == 1 && !v27)
    {
      goto LABEL_75;
    }

    if (!*(a2 + 32) && v7 == 2 && !v27)
    {
      goto LABEL_75;
    }

    v19 = v7 != 3 || v27 != 0 || v11 != 0;
  }

  else
  {
    if (!*(a2 + 33))
    {
      goto LABEL_75;
    }

    v22 = v10 | v8;
    if (!(v22 | v7 | v9) && !*(a2 + 32))
    {
      goto LABEL_75;
    }

    v23 = v22 | v9;
    if (!*(a2 + 32) && v7 == 1 && !v23)
    {
      goto LABEL_75;
    }

    if (!*(a2 + 32) && v7 == 2 && !v23)
    {
      goto LABEL_75;
    }

    v19 = v7 == 3 && v23 == 0 && v11 == 0;
  }

LABEL_76:
  v28 = *MEMORY[0x277D85DE8];
  return v19 & 1;
}

uint64_t initializeBufferWithCopyOfBuffer for MediaContinuityUsage(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy34_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MediaContinuityUsage(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 34))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MediaContinuityUsage(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 12) = 0;
    *(result + 4) = 0;
    *(result + 26) = 0;
    *(result + 20) = 0;
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

  *(result + 34) = v3;
  return result;
}

uint64_t sub_2584ADAAC(uint64_t a1)
{
  if (*(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2584ADAC8(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 33) = 1;
  }

  else
  {
    *(result + 33) = 0;
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2584ADB1C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[96])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2584ADB60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_2584ADBCC@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for AudioStreamIdentifier;
  result = sub_2584ABB2C();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2584ADC0C()
{
  v1 = *(v0 + 8);
  sub_2584A7B8C(v1, *(v0 + 16));
  return v1;
}

uint64_t sub_2584ADC4C()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[10];
  v3 = v0[11];
  sub_2584A7B8C(v1, v2);
  sub_2584A7B8C(v4, v3);
  return v1;
}

uint64_t sub_2584ADCA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2584ADCF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_2584ADD54(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930620, &unk_25853E7D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931350, qword_258538C60);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = v31 - v16;
  v18 = sub_258532CFC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_258532D8C();
  (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
  sub_2584A7B8C(a3, a4);
  sub_2584A7B8C(a3, a4);
  sub_258532D0C();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_2584AE2A8(v17);
  }

  else
  {
    (*(v19 + 32))(v23, v17, v18);
    if (sub_258532CBC())
    {
      sub_2584A7B8C(a1, a2);
      sub_2584B80A0(a1, a2);
      if (v25)
      {
        v26 = sub_2584BA8B8();
        v28 = v27;

        if (v28)
        {
          sub_258467E20(a3, a4);
          v31[0] = 0;
          v31[1] = 0xE000000000000000;
          sub_258533C8C();
          MEMORY[0x259C81500](37, 0xE100000000000000);
          MEMORY[0x259C81500](v26, v28);

          v29 = v31[0];
          (*(v19 + 8))(v23, v18);
          return v29;
        }
      }
    }

    (*(v19 + 8))(v23, v18);
  }

  return sub_2584B80A0(a3, a4);
}

uint64_t sub_2584AE060(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((sub_2584F0D1C(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_2584F0D1C(v2, v3, v4, v5);
}

uint64_t sub_2584AE0D8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_258533B8C();
  MEMORY[0x259C81500](0xD000000000000015, 0x8000000258540A90);
  sub_2584A7B8C(a1, a2);
  sub_2584A7B8C(a1, a2);
  sub_2584B80A0(a1, a2);
  if (v8 && (v9 = sub_2584BA8B8(), v11 = v10, , v11))
  {
    v12 = v9;
  }

  else
  {

    v11 = 0xE300000000000000;
    v12 = 7104878;
  }

  MEMORY[0x259C81500](v12, v11);

  MEMORY[0x259C81500](0xD000000000000011, 0x8000000258540AB0);
  v13 = sub_2584B80A0(a1, a2);
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v13 = 7104878;
    v15 = 0xE300000000000000;
  }

  MEMORY[0x259C81500](v13, v15);

  MEMORY[0x259C81500](0xD000000000000013, 0x8000000258540AD0);
  v16 = sub_2584ADD54(a1, a2, a3, a4);
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v16 = 7104878;
    v18 = 0xE300000000000000;
  }

  MEMORY[0x259C81500](v16, v18);

  MEMORY[0x259C81500](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_2584AE2A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931350, qword_258538C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2584AE310(uint64_t *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  (*(v3 + 16))(v10, v2, v3);
  v4 = __swift_project_boxed_opaque_existential_1(v10, v11);
  v5 = *v4;
  sub_2584A7B8C(*v4, v4[1]);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 24))(v10, v6, v7);
  v8 = __swift_project_boxed_opaque_existential_1(v10, v11);
  sub_2584A7B8C(*v8, v8[1]);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

BOOL sub_2584AE40C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_2584AE5E4(v5, v7);
}

uint64_t sub_2584AE458()
{
  v1 = v0;
  *&v14[8] = 0;
  sub_258533B8C();
  MEMORY[0x259C81500](0x6F506C61636F6C28, 0xEC000000203A7472);
  *v14 = *v0;
  v2 = sub_258533DFC();
  MEMORY[0x259C81500](v2);

  MEMORY[0x259C81500](0xD000000000000011, 0x8000000258540AB0);
  v3 = v0[1];
  v4 = v1[2];
  sub_2584ABAF4(v1[1], v4);
  v5 = sub_2584B80A0(v3, v4);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v5 = 7104878;
    v7 = 0xE300000000000000;
  }

  MEMORY[0x259C81500](v5, v7);

  MEMORY[0x259C81500](0xD000000000000013, 0x8000000258540AF0);
  v9 = v1[3];
  v8 = v1[4];
  sub_2584ABAF4(v9, v8);
  v10 = sub_2584B8544(v9, v8);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v10 = 7104878;
    v12 = 0xE300000000000000;
  }

  MEMORY[0x259C81500](v10, v12);

  MEMORY[0x259C81500](41, 0xE100000000000000);
  return *&v14[2];
}

BOOL sub_2584AE5E4(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v20 = v2;
  v21 = v3;
  v4 = *(a1 + 4);
  v18 = *(a2 + 4);
  v19 = v4;
  v5 = v4;
  v6 = v18;
  if (*(&v4 + 1) >> 60 == 15)
  {
    if (*(&v18 + 1) >> 60 == 15)
    {
      v7 = a1;
      v8 = a2;
      sub_2584AE8F0(&v19, &v17);
      sub_2584AE8F0(&v18, &v17);
      sub_2584AE960(v5, *(&v5 + 1));
      goto LABEL_9;
    }

LABEL_7:
    sub_2584AE8F0(&v19, &v17);
    sub_2584AE8F0(&v18, &v17);
    sub_2584AE960(v5, *(&v5 + 1));
    sub_2584AE960(v6, *(&v6 + 1));
    return 0;
  }

  if (*(&v18 + 1) >> 60 == 15)
  {
    goto LABEL_7;
  }

  v7 = a1;
  v8 = a2;
  sub_2584AE8F0(&v19, &v17);
  sub_2584AE8F0(&v18, &v17);
  v10 = sub_2584F0D1C(v5, *(&v5 + 1), v6, *(&v6 + 1));
  sub_2584AE960(v6, *(&v6 + 1));
  sub_2584AE960(v5, *(&v5 + 1));
  if ((v10 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v11 = *(v7 + 12);
  v16 = *(v8 + 12);
  v17 = v11;
  v12 = v11;
  v13 = v16;
  if (*(&v11 + 1) >> 60 != 15)
  {
    if (*(&v16 + 1) >> 60 == 15)
    {
      goto LABEL_13;
    }

    sub_2584AE8F0(&v17, v15);
    sub_2584AE8F0(&v16, v15);
    v14 = sub_2584F0D1C(v12, *(&v12 + 1), v13, *(&v13 + 1));
    sub_2584AE960(v13, *(&v13 + 1));
    sub_2584AE960(v12, *(&v12 + 1));
    return (v14 & 1) != 0;
  }

  if (*(&v16 + 1) >> 60 != 15)
  {
LABEL_13:
    sub_2584AE8F0(&v17, v15);
    sub_2584AE8F0(&v16, v15);
    sub_2584AE960(v12, *(&v12 + 1));
    sub_2584AE960(v13, *(&v13 + 1));
    return 0;
  }

  sub_2584AE8F0(&v17, v15);
  sub_2584AE8F0(&v16, v15);
  sub_2584AE960(v12, *(&v12 + 1));
  return 1;
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

uint64_t sub_2584AE82C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 40))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 16) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2584AE888(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_2584AE8F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930628, &unk_258538E10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2584AE960(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_258467E20(a1, a2);
  }

  return a1;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2584AE998(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 72))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2584AE9EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t type metadata accessor for SessionMessage()
{
  result = qword_27F930630;
  if (!qword_27F930630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2584AEAA8()
{
  result = type metadata accessor for ActivationRequestInfo();
  if (v1 <= 0x3F)
  {
    result = sub_2584AEB30();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

ValueMetadata *sub_2584AEB30()
{
  result = qword_27F930640;
  if (!qword_27F930640)
  {
    result = &type metadata for ReportingEndReason;
    atomic_store(&type metadata for ReportingEndReason, &qword_27F930640);
  }

  return result;
}

uint64_t sub_2584AEB88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2584B0778();
  *a2 = result;
  return result;
}

void sub_2584AEBB8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0x800000025853FAC0;
  if (v2 == 6)
  {
    v6 = 0xD000000000000020;
  }

  else
  {
    v6 = 0x6E6F73616572;
  }

  if (v2 != 6)
  {
    v5 = 0xE600000000000000;
  }

  v7 = 0xEF6E6F6973726556;
  v8 = 0x6C6F636F746F7270;
  if (v2 != 4)
  {
    v8 = 0xD00000000000001FLL;
    v7 = 0x800000025853FAA0;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x496E6F6973736573;
  v10 = 0xE900000000000044;
  if (v2 != 2)
  {
    v9 = 0x6F6973726556736FLL;
    v10 = 0xE90000000000006ELL;
  }

  if (*v1)
  {
    v4 = 0x44496C65646F6DLL;
    v3 = 0xE700000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_2584AECC8()
{
  v1 = *v0;
  v2 = 1701869940;
  if (v1 == 6)
  {
    v3 = 0xD000000000000020;
  }

  else
  {
    v3 = 0x6E6F73616572;
  }

  v4 = 0x6C6F636F746F7270;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001FLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x496E6F6973736573;
  if (v1 != 2)
  {
    v5 = 0x6F6973726556736FLL;
  }

  if (*v0)
  {
    v2 = 0x44496C65646F6DLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2584AEDD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2584B0778();
  *a1 = result;
  return result;
}

uint64_t sub_2584AEE08(uint64_t a1)
{
  v2 = sub_2584B04C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2584AEE44(uint64_t a1)
{
  v2 = sub_2584B04C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2584AEE8C()
{
  v1 = *v0;
  sub_258533EEC();
  sub_2585334AC();

  return sub_258533F2C();
}

uint64_t sub_2584AEF64()
{
  *v0;
  *v0;
  *v0;
  sub_2585334AC();
}

uint64_t sub_2584AF028()
{
  v1 = *v0;
  sub_258533EEC();
  sub_2585334AC();

  return sub_258533F2C();
}

uint64_t sub_2584AF0FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2584B07C4();
  *a2 = result;
  return result;
}

void sub_2584AF12C(unint64_t *a1@<X8>)
{
  v2 = 0xEC0000006465646ELL;
  v3 = 0x456E6F6973736573;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000022;
    v2 = 0x800000025853FB30;
  }

  v4 = 0xD000000000000018;
  v5 = 0x800000025853FAF0;
  if (*v1)
  {
    v4 = 0xD000000000000019;
    v5 = 0x800000025853FB10;
  }

  if (*v1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_2584AF270(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_2584A7B8C(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930648, &qword_2585390E0);
  sub_2584B067C();
  sub_258533DBC();
  result = sub_258467E20(a1, a2);
  if (!v4)
  {
    sub_2584A7B8C(a3, a4);
    sub_258533DBC();
    return sub_258467E20(a3, a4);
  }

  return result;
}

uint64_t sub_2584AF35C(void *a1)
{
  v2 = v1;
  v51 = type metadata accessor for ActivationRequestInfo();
  v4 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51, v5);
  v7 = (&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for SessionMessage();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930648, &qword_2585390E0);
  v53 = *(v13 - 8);
  v14 = *(v53 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v48 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2584B04C0();
  sub_258533F4C();
  sub_2584B0514(v2, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_2584A9D40(v12, v7, type metadata accessor for ActivationRequestInfo);
      v54 = 0;
      sub_2584B0578();
      v20 = v52;
      sub_258533DBC();
      if (v20)
      {
        (*(v53 + 8))(v17, v13);
      }

      else
      {
        v21 = v7[2];
        v22 = v7[3];
        HIBYTE(v54) = 1;
        sub_258533DAC();
        v23 = *v7;
        v24 = v7[1];
        HIBYTE(v54) = 3;
        sub_258533DAC();
        v45 = v13;
        v46 = v51;
        v47 = *(v51 + 24);
        HIBYTE(v54) = 2;
        sub_2585329BC();
        sub_2584B08F0(&qword_27F930668);
        sub_258533DBC();
        sub_2584B3D20(*(v7 + *(v46 + 28)), *(v7 + *(v46 + 28) + 8), *(v7 + *(v46 + 28) + 16));
        HIBYTE(v54) = 4;
        sub_258533DAC();

        sub_2584AF270(*(v7 + *(v46 + 32)), *(v7 + *(v46 + 32) + 8), *(v7 + *(v46 + 32) + 16), *(v7 + *(v46 + 32) + 24));
        (*(v53 + 8))(v17, v45);
      }

      return sub_2584B0620(v7);
    }

    v33 = v12[1];
    v34 = v12[2];
    v35 = v12[3];
    v50 = *v12;
    v51 = v34;
    v36 = v12[4];
    v37 = v12[5];
    v38 = v12[6];
    v54 = 256;
    sub_2584B0578();
    v39 = v52;
    sub_258533DBC();
    if (v39)
    {
      (*(v53 + 8))(v17, v13);
    }

    v49 = v38;
    v52 = v37;
    HIBYTE(v54) = 1;
    sub_258533DAC();
    HIBYTE(v54) = 3;
    sub_258533DAC();
    sub_2584B3D20(v36, v52, v49);
    HIBYTE(v54) = 4;
    sub_258533DAC();

    return (*(v53 + 8))(v17, v13);
  }

  if (EnumCaseMultiPayload != 2)
  {
    v40 = *v12;
    v54 = 768;
    sub_2584B0578();
    v41 = v52;
    sub_258533DBC();
    if (!v41)
    {
      HIBYTE(v54) = v40;
      LOBYTE(v54) = 7;
      sub_2584B05CC();
      sub_258533DBC();
    }

    return (*(v53 + 8))(v17, v13);
  }

  v27 = *v12;
  v26 = v12[1];
  v28 = v12[2];
  v29 = v12[3];
  v51 = v28;
  v54 = 512;
  sub_2584B0578();
  v30 = v13;
  v31 = v52;
  sub_258533DBC();
  if (v31)
  {
    (*(v53 + 8))(v17, v13);
    sub_258467E20(v27, v26);
    v32 = v51;
  }

  else
  {
    v42 = v27;
    v43 = v27;
    v44 = v51;
    sub_2584AF270(v43, v26, v51, v29);
    (*(v53 + 8))(v17, v30);
    sub_258467E20(v42, v26);
    v32 = v44;
  }

  return sub_258467E20(v32, v29);
}

uint64_t sub_2584AF9F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v90 = type metadata accessor for ActivationRequestInfo();
  v3 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90, v4);
  v86 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2585329BC();
  v87 = *(v6 - 8);
  v7 = *(v87 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930678, &qword_2585390E8);
  v89 = *(v11 - 8);
  v12 = *(v89 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v78 - v14;
  v16 = type metadata accessor for SessionMessage();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16, v18);
  v20 = (&v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = a1[3];
  v22 = a1[4];
  v92 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_2584B04C0();
  v23 = v91;
  sub_258533F3C();
  if (!v23)
  {
    v85 = v10;
    v25 = v89;
    v24 = v90;
    v91 = v20;
    v102 = 0;
    sub_2584B06D0();
    sub_258533D4C();
    v26 = v15;
    if (v103 > 1u)
    {
      v76 = v88;
      if (v103 == 2)
      {
        v31 = v11;
        v37 = sub_2584B0810();
        v39 = v38;
        v41 = v40;
        v43 = v42;
        (*(v25 + 8))(v26, v31);
        v77 = v91;
        *v91 = v37;
        v77[1] = v39;
        v77[2] = v41;
        v77[3] = v43;
        v76 = v88;
      }

      else
      {
        v100 = 7;
        sub_2584B0724();
        sub_258533D4C();
        (*(v25 + 8))(v15, v11);
        v77 = v91;
        *v91 = v101;
      }
    }

    else if (v103)
    {
      v99 = 3;
      v32 = sub_258533D3C();
      v34 = v33;
      v90 = v32;
      v98 = 1;
      v35 = sub_258533D3C();
      v36 = v11;
      v47 = v46;
      v87 = v35;
      v97 = 4;
      v48 = sub_258533D3C();
      v52 = sub_2584B4D38(v48, v51);
      v86 = v53;
      v56 = v52;
      v58 = v57;
      (*(v25 + 8))(v26, v36);
      v77 = v91;
      *v91 = v90;
      v77[1] = v34;
      v59 = v86;
      v77[2] = v87;
      v77[3] = v47;
      v77[4] = v56;
      v77[5] = v58;
      v77[6] = v59;
      v76 = v88;
    }

    else
    {
      v96 = 3;
      v28 = sub_258533D3C();
      v30 = v29;
      v84 = v28;
      v95 = 1;
      v82 = sub_258533D3C();
      v83 = v44;
      v94 = 4;
      v45 = sub_258533D3C();
      v50 = sub_2584B4D38(v45, v49);
      v78 = v55;
      v79 = v54;
      v80 = v50;
      v81 = v30;
      v93 = 2;
      sub_2584B08F0(&qword_27F930690);
      sub_258533D4C();
      v60 = sub_2584B0810();
      v61 = *(v25 + 8);
      v62 = v60;
      v64 = v63;
      v66 = v65;
      v89 = v67;
      v61(v15, v11);
      v68 = v86;
      (*(v87 + 32))(&v86[v24[6]], v85, v6);
      v69 = v81;
      v70 = v82;
      *v68 = v84;
      v68[1] = v69;
      v71 = v83;
      v68[2] = v70;
      v68[3] = v71;
      v72 = (v68 + v24[7]);
      v73 = v79;
      *v72 = v80;
      v72[1] = v73;
      v72[2] = v78;
      v74 = (v68 + v24[8]);
      *v74 = v62;
      v74[1] = v64;
      v76 = v88;
      v75 = v89;
      v74[2] = v66;
      v74[3] = v75;
      v77 = v91;
      sub_2584A9D40(v68, v91, type metadata accessor for ActivationRequestInfo);
    }

    swift_storeEnumTagMultiPayload();
    sub_2584A9D40(v77, v76, type metadata accessor for SessionMessage);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v92);
}

unint64_t sub_2584B019C()
{
  v1 = v0;
  v2 = type metadata accessor for ActivationRequestInfo();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SessionMessage();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2584B0514(v1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v15 = *v11;
      v16 = *(v11 + 1);
      v17 = *(v11 + 2);
      v18 = *(v11 + 3);
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_258533B8C();

      v27 = 0xD000000000000023;
      v28 = 0x8000000258540B30;
      v19 = sub_2584AE0D8(v15, v16, v17, v18);
      MEMORY[0x259C81500](v19);

      sub_258467E20(v15, v16);
      sub_258467E20(v17, v18);
    }

    else
    {
      v25 = *v11;
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_258533B8C();
      MEMORY[0x259C81500](0xD000000000000017, 0x8000000258540B10);
      LOBYTE(v33) = v25;
      sub_258533C8C();
    }

    return v27;
  }

  else if (EnumCaseMultiPayload)
  {
    v21 = *v11;
    v20 = *(v11 + 1);
    v23 = *(v11 + 2);
    v22 = *(v11 + 3);
    v26 = *(v11 + 2);
    v24 = *(v11 + 6);
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_258533B8C();
    v33 = v27;
    v34 = v28;
    MEMORY[0x259C81500](0xD00000000000001ALL, 0x8000000258540B60);
    v27 = v21;
    v28 = v20;
    v29 = v23;
    v30 = v22;
    v31 = v26;
    v32 = v24;
    sub_258533C8C();

    return v33;
  }

  else
  {
    sub_2584A9D40(v11, v6, type metadata accessor for ActivationRequestInfo);
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_258533B8C();
    MEMORY[0x259C81500](0xD000000000000019, 0x8000000258540B80);
    sub_258533C8C();
    v13 = v27;
    sub_2584B0620(v6);
    return v13;
  }
}

unint64_t sub_2584B04C0()
{
  result = qword_27F930650;
  if (!qword_27F930650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930650);
  }

  return result;
}

uint64_t sub_2584B0514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2584B0578()
{
  result = qword_27F930658;
  if (!qword_27F930658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930658);
  }

  return result;
}

unint64_t sub_2584B05CC()
{
  result = qword_27F930660;
  if (!qword_27F930660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930660);
  }

  return result;
}

uint64_t sub_2584B0620(uint64_t a1)
{
  v2 = type metadata accessor for ActivationRequestInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2584B067C()
{
  result = qword_27F930670;
  if (!qword_27F930670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930670);
  }

  return result;
}

unint64_t sub_2584B06D0()
{
  result = qword_27F930680;
  if (!qword_27F930680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930680);
  }

  return result;
}

unint64_t sub_2584B0724()
{
  result = qword_27F930688;
  if (!qword_27F930688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930688);
  }

  return result;
}

uint64_t sub_2584B0778()
{
  v0 = sub_258533CEC();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2584B07C4()
{
  v0 = sub_258533CEC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2584B0810()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930678, &qword_2585390E8);
  sub_2584B0934();
  sub_258533D4C();
  if (!v0)
  {
    v1 = v3;
    sub_258533D4C();
  }

  return v1;
}

uint64_t sub_2584B08F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2585329BC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2584B0934()
{
  result = qword_27F930698;
  if (!qword_27F930698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930698);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2584B0AEC()
{
  result = qword_27F9306A0;
  if (!qword_27F9306A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9306A0);
  }

  return result;
}

unint64_t sub_2584B0B44()
{
  result = qword_27F9306A8;
  if (!qword_27F9306A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9306A8);
  }

  return result;
}

unint64_t sub_2584B0B9C()
{
  result = qword_27F9306B0;
  if (!qword_27F9306B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9306B0);
  }

  return result;
}

unint64_t sub_2584B0BF4()
{
  result = qword_27F9306B8;
  if (!qword_27F9306B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9306B8);
  }

  return result;
}

unint64_t sub_2584B0C48()
{
  result = qword_27F9306C0;
  if (!qword_27F9306C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9306C0);
  }

  return result;
}

uint64_t sub_2584B0CB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xA && *(a1 + 96))
  {
    return (*a1 + 10);
  }

  v3 = ((((*(a1 + 88) >> 58) & 0xC | (*(a1 + 72) >> 60) & 2) >> 1) & 0xFFFFFFF7 | (8 * ((*(a1 + 72) & 0x1000000000000000) != 0))) ^ 0xF;
  if (v3 >= 9)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2584B0D20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 9)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 10;
    if (a3 >= 0xA)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xA)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 64) = 0;
      *(result + 72) = (((-a2 & 8) != 0) | ((2 * (-a2 & 0xF)) & 3)) << 60;
      *(result + 80) = 0;
      *(result + 88) = (((-a2 >> 3) & 1 | (2 * (-a2 & 0xF))) << 58) & 0x3000000000000000;
    }
  }

  return result;
}

uint64_t sub_2584B0DA0(uint64_t result)
{
  v1 = *(result + 88) & 0xCFFFFFFFFFFFFFFFLL;
  *(result + 72) &= ~0x2000000000000000uLL;
  *(result + 88) = v1;
  return result;
}

uint64_t sub_2584B0DBC(uint64_t result, char a2)
{
  v2 = *(result + 88) & 0xCFFFFFFFFFFFFFFFLL | ((((a2 & 7) >> 1) & 3) << 60);
  *(result + 72) = *(result + 72) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 1) << 61);
  *(result + 88) = v2;
  return result;
}

uint64_t sub_2584B0DF4()
{
  sub_2585334AC();
}

uint64_t sub_2584B0F34()
{
  sub_258533EEC();
  sub_2585334AC();

  return sub_258533F2C();
}

uint64_t sub_2584B1070()
{
  sub_258533EEC();
  sub_2585334AC();

  return sub_258533F2C();
}

uint64_t sub_2584B11C4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD00000000000001FLL;
    v6 = 0xD000000000000020;
    if (a1 != 8)
    {
      v6 = 0x6E6F73616572;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD00000000000001ELL;
    if (a1 == 5)
    {
      v7 = 0xD00000000000001DLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1701869940;
    v2 = 0x6F69746365726964;
    v3 = 0x6F6C42616964656DLL;
    if (a1 != 3)
    {
      v3 = 0xD000000000000018;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000010;
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
}

uint64_t sub_2584B1318(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_2584B11C4(*a1);
  v5 = v4;
  if (v3 == sub_2584B11C4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_258533E2C();
  }

  return v8 & 1;
}

uint64_t sub_2584B13A0()
{
  v1 = *v0;
  sub_258533EEC();
  sub_2584B11C4(v1);
  sub_2585334AC();

  return sub_258533F2C();
}

uint64_t sub_2584B1404()
{
  sub_2584B11C4(*v0);
  sub_2585334AC();
}

uint64_t sub_2584B1458()
{
  v1 = *v0;
  sub_258533EEC();
  sub_2584B11C4(v1);
  sub_2585334AC();

  return sub_258533F2C();
}

uint64_t sub_2584B14B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2584B3354();
  *a2 = result;
  return result;
}

uint64_t sub_2584B14E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2584B11C4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2584B1530@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2584B3354();
  *a1 = result;
  return result;
}

uint64_t sub_2584B1564(uint64_t a1)
{
  v2 = sub_2584B31DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2584B15A0(uint64_t a1)
{
  v2 = sub_2584B31DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2584B15F4()
{
  *v0;
  sub_2585334AC();
}

uint64_t sub_2584B1724@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2584B33A0();
  *a2 = result;
  return result;
}

void sub_2584B1754(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xEB00000000646564;
    v9 = 0xD000000000000010;
    v10 = 0x800000025853FC00;
    if (v2 != 1)
    {
      v9 = 0xD000000000000011;
      v10 = 0x800000025853FC20;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0x6E456D6165727473;
    }

    if (!v11)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x800000025853FC80;
    v4 = 0xD000000000000017;
    if (v2 == 5)
    {
      v4 = 0xD000000000000016;
    }

    else
    {
      v3 = 0x800000025853FCA0;
    }

    v5 = 0xD000000000000010;
    v6 = 0x800000025853FC40;
    if (v2 != 3)
    {
      v5 = 0xD000000000000011;
      v6 = 0x800000025853FC60;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v6;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_2584B1908(unsigned __int16 *a1)
{
  v3 = *a1;
  LOBYTE(v6) = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9306C8, &unk_258539FA0);
  result = sub_258533DCC();
  if (!v1)
  {
    v8 = *(a1 + 4);
    v6 = *(a1 + 4);
    v9 = 5;
    sub_2584AE8F0(&v8, v5);
    sub_2584B067C();
    sub_258533D9C();
    sub_2584AE960(v6, *(&v6 + 1));
    v6 = *(a1 + 12);
    v7 = v6;
    v9 = 6;
    sub_2584AE8F0(&v7, v5);
    sub_258533D9C();
    return sub_2584AE960(v6, *(&v6 + 1));
  }

  return result;
}

uint64_t sub_2584B1A3C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_2584A7B8C(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9306C8, &unk_258539FA0);
  sub_2584B067C();
  sub_258533DBC();
  result = sub_258467E20(a1, a2);
  if (!v4)
  {
    sub_2584A7B8C(a3, a4);
    sub_258533DBC();
    return sub_258467E20(a3, a4);
  }

  return result;
}

uint64_t sub_2584B1B28(void *a1, char a2)
{
  v4 = v2;
  LOBYTE(v33) = a2;
  LOBYTE(v39) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9306C8, &unk_258539FA0);
  sub_2584B3230();
  result = sub_258533DBC();
  if (!v3)
  {
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v7);
    (*(v8 + 8))(&v33, v7, v8);
    v9 = v35;
    __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
    v10 = *(v9 + 24);
    sub_25853356C();
    v41 = 1;
    sub_258533DAC();

    __swift_destroy_boxed_opaque_existential_1Tm(&v33);
    v11 = a1[3];
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v11);
    (*(v12 + 16))(&v33, v11, v12);
    LOBYTE(v39) = 2;
    sub_258533DDC();
    v13 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v13);
    *&v33 = (*(v14 + 24))(v13, v14);
    *(&v33 + 1) = v15;
    LOBYTE(v39) = 3;
    sub_2584B067C();
    sub_258533DBC();
    sub_258467E20(v33, *(&v33 + 1));
    v16 = v4[3];
    v35 = v4[2];
    v36 = v16;
    v17 = v4[5];
    v37 = v4[4];
    v38 = v17;
    v18 = v4[1];
    v33 = *v4;
    v34 = v18;
    v19 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v19);
    (*(v20 + 32))(v40, v19, v20);
    sub_2584B1908(v40);
    sub_2584AB9E8(v40);
    v21 = v4[3];
    v35 = v4[2];
    v36 = v21;
    v22 = v4[5];
    v37 = v4[4];
    v38 = v22;
    v23 = v4[1];
    v33 = *v4;
    v34 = v23;
    v24 = a1[3];
    v25 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v24);
    v26 = (*(v25 + 40))(v24, v25);
    v28 = v27;
    v30 = v29;
    v32 = v31;
    sub_2584B1A3C(v26, v27, v29, v31);
    sub_258467E20(v26, v28);
    return sub_258467E20(v30, v32);
  }

  return result;
}

uint64_t sub_2584B1E54(void *a1)
{
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9306C8, &unk_258539FA0);
  v89 = *(v138 - 8);
  v3 = *(v89 + 64);
  MEMORY[0x28223BE20](v138, v4);
  v6 = &v74 - v5;
  v7 = *v1;
  v87 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v85 = v7;
  v86 = v8;
  v10 = v1[4];
  v12 = v1[6];
  v11 = v1[7];
  v79 = v1[5];
  v80 = v12;
  v83 = v11;
  v84 = v10;
  v13 = v1[9];
  v14 = v1[10];
  v15 = v1[11];
  v81 = v1[8];
  v82 = v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2584B31DC();
  v17 = v15;
  sub_258533F4C();
  v18 = (v15 >> 59) & 6 | ((v13 & 0x2000000000000000) != 0);
  if (v18 > 2)
  {
    if (v18 <= 4)
    {
      if (v18 == 3)
      {
        v75 = v13 & 0xDFFFFFFFFFFFFFFFLL;
        v76 = v15 & 0xCFFFFFFFFFFFFFFFLL;
        v19 = v13;
        v20 = v85;
        v94 = v85;
        v95 = v87;
        v77 = v6;
        v78 = v9;
        v21 = v86;
        v96 = v86;
        v97 = v9;
        v22 = v17;
        v23 = v83;
        v24 = v84;
        v25 = v79;
        v26 = v80;
        v98 = v84;
        v99 = v79;
        v100 = v80;
        v101 = v83;
        v27 = v81;
        v28 = v82;
        v102 = v81;
        v103 = v19;
        v104 = v82;
        v105 = v22;
        v92 = &type metadata for AudioStreamOffer;
        v93 = &off_28698DC78;
        v29 = swift_allocObject();
        v91[0] = v29;
        v30 = v87;
        v29[2] = v20;
        v29[3] = v30;
        v31 = v78;
        v29[4] = v21;
        v29[5] = v31;
        v29[6] = v24;
        v29[7] = v25;
        v29[8] = v26;
        v29[9] = v23;
        v33 = v75;
        v32 = v76;
        v29[10] = v27;
        v29[11] = v33;
        v29[12] = v28;
        v29[13] = v32;
        v106 = v20;
        v107 = v30;
        v108 = v21;
        v109 = v31;
        v34 = v77;
        v110 = v24;
        v111 = v25;
        v112 = v26;
        v113 = v23;
        v114 = v27;
        v115 = v33;
        v116 = v28;
        v117 = v32;
        sub_2584A9620(&v106, v90);
        sub_2584B1B28(v91, 3);
        (*(v89 + 8))(v34, v138);
        return __swift_destroy_boxed_opaque_existential_1Tm(v91);
      }

      v77 = v15;
      LOBYTE(v106) = 4;
      LOBYTE(v94) = 0;
      sub_2584B3230();
      v52 = v138;
      v65 = v88;
      sub_258533DBC();
      v66 = v85;
      v67 = v86;
      if (!v65)
      {
        v78 = v9;
        v68 = v87;
        v106 = v85;
        v107 = v87;
        LOBYTE(v94) = 3;
        sub_2584A7B8C(v85, v87);
        sub_2584B067C();
        sub_258533DBC();
        sub_258467E20(v106, v107);
        v106 = v66;
        v107 = v68;
        v108 = v67;
        v109 = v78;
        v110 = v84;
        v111 = v79;
        v112 = v80;
        v113 = v83;
        v114 = v81;
        v115 = v13;
        v116 = v82;
        v117 = v77;
        v123 = v67;
        v124 = v78;
        v125 = v84;
        v126 = v79;
        v127 = v80;
        sub_2584B1908(&v123);
      }

      return (*(v89 + 8))(v6, v52);
    }

    v52 = v138;
    if (v18 == 5)
    {
      LOBYTE(v106) = 5;
      LOBYTE(v94) = 0;
      sub_2584B3230();
      v53 = v88;
      sub_258533DBC();
      if (!v53)
      {
        v106 = v85;
        v107 = v87;
        v108 = v86;
        v109 = v9;
        v78 = v9;
        v54 = v84;
        v55 = v13;
        v57 = v79;
        v56 = v80;
        v110 = v84;
        v111 = v79;
        v112 = v80;
        v113 = v83;
        v114 = v81;
        v115 = v55;
        v76 = v55;
        v116 = v82;
        v117 = v17;
        v128 = v84;
        v129 = v79;
        v130 = v80;
        v58 = v83;
        v131 = v83;
        v132 = v81;
        sub_2584B1908(&v128);
        v106 = v85;
        v107 = v87;
        v108 = v86;
        v109 = v78;
        v110 = v54;
        v111 = v57;
        v112 = v56;
        v113 = v58;
        v114 = v81;
        v115 = v76;
        v116 = v82;
        v117 = v17;
        sub_2584B1A3C(v85, v87, v86, v78);
        return (*(v89 + 8))(v6, v138);
      }
    }

    else
    {
      v76 = v13;
      v77 = v15;
      v70 = v85;
      v69 = v86;
      v133 = v85;
      v71 = v87;
      v134 = v87;
      v135 = v86;
      v72 = v84;
      v136 = v9;
      v137 = v84;
      LOBYTE(v106) = 6;
      LOBYTE(v94) = 0;
      v78 = v9;
      sub_2584B3230();
      v73 = v88;
      sub_258533DBC();
      if (!v73)
      {
        v106 = v70;
        v107 = v71;
        v108 = v69;
        v109 = v78;
        v110 = v72;
        v111 = v79;
        v112 = v80;
        v113 = v83;
        v114 = v81;
        v115 = v76;
        v116 = v82;
        v117 = v77;
        sub_2584B1908(&v133);
        return (*(v89 + 8))(v6, v138);
      }
    }

    return (*(v89 + 8))(v6, v52);
  }

  if (v18)
  {
    v35 = v6;
    if (v18 == 1)
    {
      v76 = v13 & 0xDFFFFFFFFFFFFFFFLL;
      v77 = v6;
      v78 = v15 & 0xCFFFFFFFFFFFFFFFLL;
      v36 = v13;
      v38 = v85;
      v37 = v86;
      v94 = v85;
      v95 = v87;
      v96 = v86;
      v97 = v9;
      v39 = v84;
      v41 = v79;
      v40 = v80;
      v98 = v84;
      v99 = v79;
      v100 = v80;
      v101 = v83;
      v42 = v81;
      v102 = v81;
      v103 = v36;
      v43 = v17;
      v44 = v82;
      v104 = v82;
      v105 = v43;
      v92 = &type metadata for VideoStreamOffer;
      v93 = &off_28698E288;
      v45 = swift_allocObject();
      v91[0] = v45;
      v46 = v87;
      v45[2] = v38;
      v45[3] = v46;
      v45[4] = v37;
      v45[5] = v9;
      v45[6] = v39;
      v45[7] = v41;
      v47 = v83;
      v45[8] = v40;
      v45[9] = v47;
      v48 = v76;
      v45[10] = v42;
      v45[11] = v48;
      v49 = v78;
      v45[12] = v44;
      v45[13] = v49;
      v106 = v38;
      v107 = v46;
      v108 = v37;
      v109 = v9;
      v110 = v39;
      v111 = v41;
      v112 = v40;
      v113 = v47;
      v114 = v42;
      v115 = v48;
      v116 = v44;
      v117 = v49;
      sub_2584A9700(&v106, v90);
      v50 = v77;
      sub_2584B1B28(v91, 1);
      (*(v89 + 8))(v50, v138);
      return __swift_destroy_boxed_opaque_existential_1Tm(v91);
    }

    LOBYTE(v106) = 2;
    LOBYTE(v94) = 0;
    sub_2584B3230();
    v59 = v138;
    v61 = v88;
    sub_258533DBC();
    v62 = v84;
    if (!v61)
    {
      v76 = v13;
      v77 = v15;
      v63 = v85;
      v64 = v87;
      v106 = v85;
      v107 = v87;
      LOBYTE(v94) = 3;
      sub_2584A7B8C(v85, v87);
      sub_2584B067C();
      sub_258533DBC();
      sub_258467E20(v106, v107);
      v106 = v63;
      v107 = v64;
      v108 = v86;
      v109 = v9;
      v110 = v62;
      v111 = v79;
      v112 = v80;
      v113 = v83;
      v114 = v81;
      v115 = v76;
      v116 = v82;
      v117 = v77;
      v118 = v86;
      v119 = v9;
      v120 = v62;
      v121 = v79;
      v122 = v80;
      sub_2584B1908(&v118);
      return (*(v89 + 8))(v6, v59);
    }
  }

  else
  {
    LOBYTE(v106) = 0;
    LOBYTE(v94) = 0;
    sub_2584B3230();
    v59 = v138;
    v35 = v6;
    v60 = v88;
    sub_258533DBC();
    if (!v60)
    {
      LOBYTE(v106) = v85;
      LOBYTE(v94) = 9;
      sub_2584B05CC();
      sub_258533DBC();
    }
  }

  return (*(v89 + 8))(v35, v59);
}

uint64_t sub_2584B2660@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9306E0, &qword_258539FB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v48 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_2584B31DC();
  sub_258533F3C();
  if (v2)
  {
    goto LABEL_3;
  }

  v13 = v6;
  v57 = 0;
  sub_2584B3300();
  sub_258533D4C();
  if (v58 > 2u)
  {
    v16 = a2;
    if (v58 > 4u)
    {
      if (v58 == 5)
      {
        v19 = sub_2584B33EC();
        v23 = v22;
        v25 = v24;
        *&v53 = v26;
        sub_2584B34CC(&v69);
        v50 = v69;
        v52 = v70;
        v49 = v71;
        v51 = v72;
        (*(v13 + 8))(v10, v5);
        v29 = v49;
        v30 = v52;
        v31 = v51;
        *&v32 = v25;
        *(&v32 + 1) = v50;
        v33 = 0x2000000000000000;
        v34 = 0x2000000000000000;
        v16 = a2;
        v14 = v77;
        a2 = v53;
LABEL_27:
        *v16 = v19;
        *(v16 + 8) = v23;
        *(v16 + 16) = a2;
        *(v16 + 24) = v32;
        *(v16 + 40) = v30;
        *(v16 + 56) = v29;
        *(v16 + 64) = v31;
        *(v16 + 72) = v33;
        *(v16 + 80) = v28;
        *(v16 + 88) = v34;
        return __swift_destroy_boxed_opaque_existential_1Tm(v14);
      }

      sub_2584B34CC(&v73);
      v19 = v73;
      v23 = v74;
      a2 = v75;
      v53 = v76;
      (*(v13 + 8))(v10, v5);
      v32 = v53;
      v33 = 0;
      v34 = 0x3000000000000000;
    }

    else
    {
      if (v58 == 3)
      {
        LOBYTE(v55) = 1;
        sub_258533D3C();
        v17 = sub_258533CEC();

        if (!v17)
        {
          LOBYTE(v55) = 2;
          v18 = sub_258533D6C();
          if (v18 == 1)
          {
            v19 = 0;
            goto LABEL_32;
          }

          if (v18 == 2)
          {
            v19 = 1;
LABEL_32:
            v54 = 3;
            sub_2584B0934();
            sub_258533D4C();
            v23 = v55;
            v40 = v56;
            sub_2584B34CC(v64);
            *&v53 = v40;
            v41 = sub_2584B33EC();
            v50 = v42;
            v51 = v41;
            *&v52 = v43;
            v47 = v46;
            (*(v13 + 8))(v10, v5);
            v32 = v64[0];
            v30 = v64[1];
            v29 = v65;
            v33 = v50 & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
            v34 = v47 & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
            goto LABEL_33;
          }

          goto LABEL_28;
        }

        goto LABEL_15;
      }

      v54 = 3;
      sub_2584B0934();
      sub_258533D4C();
      v19 = v55;
      v23 = v56;
      sub_2584B34CC(&v66);
      a2 = v66;
      v52 = v68;
      v53 = v67;
      (*(v13 + 8))(v10, v5);
      v30 = v52;
      v32 = v53;
      v33 = 0;
      v34 = 0x2000000000000000;
    }

LABEL_26:
    v14 = v77;
    goto LABEL_27;
  }

  v16 = a2;
  if (!v58)
  {
    v54 = 9;
    sub_2584B0724();
    v23 = v10;
    sub_258533D4C();
    (*(v6 + 8))(v10, v5);
    v33 = 0;
    v34 = 0;
    v19 = v55;
    goto LABEL_26;
  }

  if (v58 != 1)
  {
    v54 = 3;
    sub_2584B0934();
    sub_258533D4C();
    v19 = v55;
    v23 = v56;
    sub_2584B34CC(&v61);
    a2 = v61;
    v52 = v63;
    v53 = v62;
    (*(v13 + 8))(v10, v5);
    v30 = v52;
    v32 = v53;
    v33 = 0;
    v34 = 0x1000000000000000;
    goto LABEL_26;
  }

  LOBYTE(v55) = 1;
  sub_258533D3C();
  v20 = sub_258533CEC();

  if (!v20)
  {
    LOBYTE(v55) = 2;
    v27 = sub_258533D6C();
    if (v27 == 1)
    {
      v19 = 0;
    }

    else
    {
      if (v27 != 2)
      {
LABEL_28:
        sub_2584B35E0();
        swift_allocError();
        *v35 = 0;
        goto LABEL_16;
      }

      v19 = 1;
    }

    v54 = 3;
    sub_2584B0934();
    sub_258533D4C();
    v23 = v55;
    v36 = v56;
    sub_2584B34CC(v59);
    *&v53 = v36;
    v37 = sub_2584B33EC();
    v50 = v38;
    v51 = v37;
    *&v52 = v39;
    v45 = v44;
    (*(v13 + 8))(v10, v5);
    v32 = v59[0];
    v30 = v59[1];
    v29 = v60;
    v34 = v45 & 0xCFFFFFFFFFFFFFFFLL;
    v33 = v50 & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
LABEL_33:
    v16 = a2;
    v14 = v77;
    a2 = v53;
    v31 = v51;
    v28 = v52;
    goto LABEL_27;
  }

LABEL_15:
  sub_2584B35E0();
  swift_allocError();
  *v21 = 1;
LABEL_16:
  swift_willThrow();
  (*(v6 + 8))(v10, v5);
LABEL_3:
  v14 = v77;
  return __swift_destroy_boxed_opaque_existential_1Tm(v14);
}

unint64_t sub_2584B2E74()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[10];
  v10 = (v0[11] >> 59) & 6 | ((v0[9] & 0x2000000000000000) != 0);
  if (v10 <= 2)
  {
    if (!v10)
    {
      sub_258533B8C();
      MEMORY[0x259C81500](0xD000000000000016, 0x8000000258540C60);
      sub_258533C8C();
      return 0;
    }

    v16 = v0[6];
    if (v10 == 1)
    {
      sub_258533B8C();
      v21 = 0;
      MEMORY[0x259C81500](0xD000000000000012, 0x8000000258540C40);
      goto LABEL_14;
    }

    sub_258533B8C();
    v21 = 0;
    v13 = "videoStreamAnswer: ";
    goto LABEL_13;
  }

  if (v10 <= 4)
  {
    v15 = v0[6];
    if (v10 == 3)
    {
      sub_258533B8C();
      v21 = 0;
      MEMORY[0x259C81500](0xD000000000000012, 0x8000000258540C00);
      goto LABEL_14;
    }

    sub_258533B8C();
    v21 = 0;
    v13 = "audioStreamAnswer: ";
LABEL_13:
    MEMORY[0x259C81500](0xD000000000000013, (v13 - 32) | 0x8000000000000000);
    goto LABEL_14;
  }

  if (v10 != 5)
  {
    v17 = v0[1];
    v18 = v0[2];
    v19 = v0[3];
    v20 = v0[4];
    sub_258533B8C();

    v21 = 0xD000000000000013;
    v14 = sub_2584AE458();
    MEMORY[0x259C81500](v14);

    return v21;
  }

  v11 = v0[6];
  sub_258533B8C();
  v21 = 0;
  MEMORY[0x259C81500](0xD000000000000012, 0x8000000258540BC0);
LABEL_14:
  sub_258533C8C();
  return v21;
}

unint64_t sub_2584B31DC()
{
  result = qword_27F9306D0;
  if (!qword_27F9306D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9306D0);
  }

  return result;
}

unint64_t sub_2584B3230()
{
  result = qword_27F9306D8;
  if (!qword_27F9306D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9306D8);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  sub_258467E20(v0[3], v0[4]);
  v1 = v0[7];
  if (v1 >> 60 != 15)
  {
    sub_258467E20(v0[6], v1);
  }

  v2 = v0[9];
  if (v2 >> 60 != 15)
  {
    sub_258467E20(v0[8], v2);
  }

  sub_258467E20(v0[10], v0[11]);
  sub_258467E20(v0[12], v0[13]);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

unint64_t sub_2584B3300()
{
  result = qword_27F9306E8;
  if (!qword_27F9306E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9306E8);
  }

  return result;
}

uint64_t sub_2584B3354()
{
  v0 = sub_258533CEC();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2584B33A0()
{
  v0 = sub_258533CEC();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2584B33EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9306E0, &qword_258539FB0);
  sub_2584B0934();
  sub_258533D4C();
  if (!v0)
  {
    v1 = v3;
    sub_258533D4C();
  }

  return v1;
}

__n128 sub_2584B34CC@<Q0>(uint64_t a1@<X8>)
{
  v6.n128_u8[0] = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9306E0, &qword_258539FB0);
  v3 = sub_258533D5C();
  if (!v1)
  {
    v5 = v3;
    sub_2584B0934();
    sub_258533D2C();
    sub_258533D2C();
    result = v6;
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 24) = v6;
  }

  return result;
}

unint64_t sub_2584B35E0()
{
  result = qword_27F9306F0;
  if (!qword_27F9306F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9306F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StreamMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StreamMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2584B37A8()
{
  result = qword_27F9306F8;
  if (!qword_27F9306F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9306F8);
  }

  return result;
}

unint64_t sub_2584B3800()
{
  result = qword_27F930700;
  if (!qword_27F930700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930700);
  }

  return result;
}

unint64_t sub_2584B3854(uint64_t a1)
{
  result = sub_2584B35E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584B3880()
{
  result = qword_27F930708;
  if (!qword_27F930708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930708);
  }

  return result;
}

unint64_t sub_2584B38D8()
{
  result = qword_27F930710;
  if (!qword_27F930710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930710);
  }

  return result;
}

unint64_t sub_2584B3930()
{
  result = qword_27F930718;
  if (!qword_27F930718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930718);
  }

  return result;
}

unint64_t sub_2584B3984()
{
  result = qword_27F930720;
  if (!qword_27F930720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930720);
  }

  return result;
}

unint64_t sub_2584B39EC@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for VideoStreamIdentifier;
  result = sub_2584AC364();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2584B3A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2585329BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2584B3B14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2585329BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for MediaConnectionPrerequisites()
{
  result = qword_27F930728;
  if (!qword_27F930728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2584B3C18()
{
  sub_2585329BC();
  if (v0 <= 0x3F)
  {
    sub_2584B3CA4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2584B3CA4()
{
  if (!qword_27F930738)
  {
    type metadata accessor for ether_addr(255);
    v0 = sub_258533A0C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F930738);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2584B3D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v6 = sub_258533DFC();
    MEMORY[0x259C81500](46, 0xE100000000000000);
    v3 = sub_258533DFC();
    MEMORY[0x259C81500](v3);
  }

  else
  {
    v6 = sub_258533DFC();
  }

  MEMORY[0x259C81500](46, 0xE100000000000000);
  v4 = sub_258533DFC();
  MEMORY[0x259C81500](v4);

  return v6;
}

uint64_t sub_2584B3E48(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_258533BDC();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_2584B4338(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

BOOL sub_2584B4148(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    return v5;
  }

  else
  {
    return *a1 < *a2;
  }
}

BOOL sub_2584B4180(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 == v3)
  {
    v4 = a2[2] >= a1[2];
  }

  else
  {
    v4 = v3 >= v2;
  }

  if (*a1 == *a2)
  {
    return v4;
  }

  else
  {
    return *a2 >= *a1;
  }
}

BOOL sub_2584B41BC(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 >= v3;
  if (v4)
  {
    v5 = a1[2] >= a2[2];
  }

  if (*a1 == *a2)
  {
    return v5;
  }

  else
  {
    return *a1 >= *a2;
  }
}

BOOL sub_2584B41F4(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 == v3)
  {
    v4 = a2[2] < a1[2];
  }

  else
  {
    v4 = v3 < v2;
  }

  if (*a1 == *a2)
  {
    return v4;
  }

  else
  {
    return *a2 < *a1;
  }
}

unint64_t sub_2584B4270()
{
  result = qword_27F930740;
  if (!qword_27F930740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930740);
  }

  return result;
}

void *sub_2584B42C4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FEC0, &qword_258536910);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_2584B4338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_25853353C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2584B48C4();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_258533BDC();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_2584B48C4()
{
  v0 = sub_25853354C();
  v4 = sub_2584B4944(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_2584B4944(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_25853349C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_258533A1C();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_2584B42C4(v9, 0);
  v12 = sub_2584B4A9C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_25853349C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_258533BDC();
LABEL_4:

  return sub_25853349C();
}

unint64_t sub_2584B4A9C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2584B4CBC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_25853351C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_258533BDC();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2584B4CBC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2585334FC();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_2584B4CBC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25853352C();
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
    v5 = MEMORY[0x259C81550](15, a1 >> 16);
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

uint64_t sub_2584B4D38(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v66 = a1;
  v67 = a2;
  sub_2584B55D8();
  v4 = sub_258533A3C();
  v5 = *(v4 + 16);
  v68 = v4;
  v69 = v4 + 32;
  v70 = 0;
  v71 = (2 * v5) | 1;
  if (v5 > 3)
  {
    if (qword_27F92F8C0 != -1)
    {
      swift_once();
    }

    v6 = sub_258532A4C();
    __swift_project_value_buffer(v6, qword_27F93CF90);

    v7 = sub_258532A2C();
    v8 = sub_2585338CC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v66 = v10;
      *v9 = 136315138;
      v3 = sub_2584713B0(v3, a2, &v66);

      *(v9 + 4) = v3;
      _os_log_impl(&dword_25845E000, v7, v8, "Version tuple had more than 3 components: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x259C82900](v10, -1, -1);
      MEMORY[0x259C82900](v9, -1, -1);
    }

    else
    {
    }

    v22 = 0;
    goto LABEL_96;
  }

  result = sub_258475D0C();
  if (!v12)
  {
    v3 = 0;
    goto LABEL_78;
  }

  v13 = v12;
  v14 = HIBYTE(v12) & 0xF;
  v15 = result & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    goto LABEL_72;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {
    v44 = result;

    v3 = sub_2584B4338(v44, v13, 10);
    v46 = v45;

    result = v44;
    if ((v46 & 1) == 0)
    {
LABEL_77:

LABEL_78:
      v47 = sub_258475D0C();
      if (v48)
      {
        v49 = v47;
        v50 = v48;

        sub_2584B3E48(v49, v50);
        if (v51)
        {
          if (qword_27F92F8C0 != -1)
          {
            swift_once();
          }

          v52 = sub_258532A4C();
          __swift_project_value_buffer(v52, qword_27F93CF90);

          v39 = sub_258532A2C();
          v53 = sub_2585338CC();

          if (!os_log_type_enabled(v39, v53))
          {
            goto LABEL_94;
          }

          v3 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v66 = v54;
          *v3 = 136315138;
          v55 = sub_2584713B0(v49, v50, &v66);

          *(v3 + 4) = v55;
          v56 = "Cannot convert minor version string into number: %s";
LABEL_92:
          _os_log_impl(&dword_25845E000, v39, v53, v56, v3, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v54);
          MEMORY[0x259C82900](v54, -1, -1);
          v43 = v3;
          goto LABEL_93;
        }
      }

      v57 = sub_258475D0C();
      if (v58)
      {
        v59 = v57;
        v60 = v58;

        sub_2584B3E48(v59, v60);
        if (v61)
        {
          if (qword_27F92F8C0 != -1)
          {
            swift_once();
          }

          v62 = sub_258532A4C();
          __swift_project_value_buffer(v62, qword_27F93CF90);

          v39 = sub_258532A2C();
          v53 = sub_2585338CC();

          if (!os_log_type_enabled(v39, v53))
          {
            goto LABEL_94;
          }

          v3 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v66 = v54;
          *v3 = 136315138;
          v63 = sub_2584713B0(v59, v60, &v66);

          *(v3 + 4) = v63;
          v56 = "Cannot convert update version string into number: %s";
          goto LABEL_92;
        }
      }

      swift_unknownObjectRelease();
      return v3;
    }

LABEL_72:
    v3 = result;
    if (qword_27F92F8C0 != -1)
    {
      swift_once();
    }

    v38 = sub_258532A4C();
    __swift_project_value_buffer(v38, qword_27F93CF90);

    v39 = sub_258532A2C();
    v40 = sub_2585338CC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v66 = v42;
      *v41 = 136315138;
      v3 = sub_2584713B0(v3, v13, &v66);

      *(v41 + 4) = v3;
      _os_log_impl(&dword_25845E000, v39, v40, "Cannot convert major version string into number: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x259C82900](v42, -1, -1);
      v43 = v41;
LABEL_93:
      MEMORY[0x259C82900](v43, -1, -1);
LABEL_95:

      v22 = 1;
LABEL_96:
      sub_2584B562C();
      swift_allocError();
      *v64 = v22;
      swift_willThrow();
      swift_unknownObjectRelease();
      return v3;
    }

LABEL_94:

    goto LABEL_95;
  }

  if ((v13 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v65 = result;
      v14 = sub_258533BDC();
      result = v65;
    }

    v17 = *v14;
    if (v17 == 43)
    {
      if (v15 >= 1)
      {
        v26 = v15 - 1;
        if (v15 != 1)
        {
          v3 = 0;
          if (!v14)
          {
            goto LABEL_71;
          }

          v27 = (v14 + 1);
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            v29 = 10 * v3;
            if ((v3 * 10) >> 64 != (10 * v3) >> 63)
            {
              break;
            }

            v3 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              break;
            }

            ++v27;
            if (!--v26)
            {
LABEL_62:
              LOBYTE(v14) = 0;
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

      goto LABEL_104;
    }

    if (v17 == 45)
    {
      if (v15 >= 1)
      {
        v18 = v15 - 1;
        if (v15 != 1)
        {
          v3 = 0;
          if (!v14)
          {
            goto LABEL_71;
          }

          v19 = (v14 + 1);
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              break;
            }

            v21 = 10 * v3;
            if ((v3 * 10) >> 64 != (10 * v3) >> 63)
            {
              break;
            }

            v3 = v21 - v20;
            if (__OFSUB__(v21, v20))
            {
              break;
            }

            ++v19;
            if (!--v18)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_70;
      }

      __break(1u);
      goto LABEL_103;
    }

    if (v15)
    {
      v3 = 0;
      if (!v14)
      {
        goto LABEL_71;
      }

      while (1)
      {
        v33 = *v14 - 48;
        if (v33 > 9)
        {
          break;
        }

        v34 = 10 * v3;
        if ((v3 * 10) >> 64 != (10 * v3) >> 63)
        {
          break;
        }

        v3 = v34 + v33;
        if (__OFADD__(v34, v33))
        {
          break;
        }

        ++v14;
        if (!--v15)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_70;
  }

  v66 = result;
  v67 = v13 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result == 45)
    {
      if (!v14)
      {
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      if (--v14)
      {
        v3 = 0;
        v23 = &v66 + 1;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v3;
          if ((v3 * 10) >> 64 != (10 * v3) >> 63)
          {
            break;
          }

          v3 = v25 - v24;
          if (__OFSUB__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v14)
          {
            goto LABEL_71;
          }
        }
      }
    }

    else if (v14)
    {
      v3 = 0;
      v35 = &v66;
      while (1)
      {
        v36 = *v35 - 48;
        if (v36 > 9)
        {
          break;
        }

        v37 = 10 * v3;
        if ((v3 * 10) >> 64 != (10 * v3) >> 63)
        {
          break;
        }

        v3 = v37 + v36;
        if (__OFADD__(v37, v36))
        {
          break;
        }

        v35 = (v35 + 1);
        if (!--v14)
        {
          goto LABEL_71;
        }
      }
    }

LABEL_70:
    v3 = 0;
    LOBYTE(v14) = 1;
LABEL_71:
    if (v14)
    {
      goto LABEL_72;
    }

    goto LABEL_77;
  }

  if (v14)
  {
    if (--v14)
    {
      v3 = 0;
      v30 = &v66 + 1;
      while (1)
      {
        v31 = *v30 - 48;
        if (v31 > 9)
        {
          break;
        }

        v32 = 10 * v3;
        if ((v3 * 10) >> 64 != (10 * v3) >> 63)
        {
          break;
        }

        v3 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          break;
        }

        ++v30;
        if (!--v14)
        {
          goto LABEL_71;
        }
      }
    }

    goto LABEL_70;
  }

LABEL_105:
  __break(1u);
  return result;
}

unint64_t sub_2584B55D8()
{
  result = qword_27F931370;
  if (!qword_27F931370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931370);
  }

  return result;
}

unint64_t sub_2584B562C()
{
  result = qword_27F930748;
  if (!qword_27F930748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930748);
  }

  return result;
}

unint64_t sub_2584B5690(uint64_t a1)
{
  result = sub_2584B562C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584B56BC()
{
  result = qword_27F930750;
  if (!qword_27F930750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930750);
  }

  return result;
}

void sub_2584B5740(int a1, char *label, uint64_t a3, NSObject **a4)
{
  inactive = dispatch_workloop_create_inactive(label);
  dispatch_workloop_set_scheduler_priority();
  dispatch_activate(inactive);
  *a4 = inactive;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2584B57A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2584B57EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2584B584C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_2584B58A8(unint64_t a1, char *a2)
{
  v3 = v2;
  v15 = *v2;
  v16 = v2[1];
  v17 = v2[2];
  v18 = v2[3];
  v6 = sub_2584B5A34(a1, 0, *(*v2 + 16) - 1);
  v8 = v7;
  if (v7)
  {
    return (v8 & 1) == 0;
  }

  v9 = v6;
  v10 = v16;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = sub_2584B74D4(v16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (v9 >= *(v10 + 2))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = *&v10[8 * v9 + 32];
  if (__CFADD__(v11, a2))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *&v10[8 * v9 + 32] = &a2[v11];
  *(v3 + 2) = v10;
  if (!__CFADD__(*(&v18 + 1), a2))
  {
    *(v3 + 7) = &a2[*(&v18 + 1)];
    if ((v17 & 1) != 0 || *(&v16 + 1) > a1)
    {
      *(v3 + 3) = a1;
      *(v3 + 32) = 0;
    }

    if ((v18 & 1) != 0 || *(&v17 + 1) < a1)
    {
      *(v3 + 5) = a1;
      *(v3 + 48) = 0;
    }

    a2 = *(&v15 + 1);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  a2 = sub_2584B5CA4(0, *(a2 + 2) + 1, 1, a2);
LABEL_14:
  v13 = *(a2 + 2);
  v12 = *(a2 + 3);
  if (v13 >= v12 >> 1)
  {
    a2 = sub_2584B5CA4((v12 > 1), v13 + 1, 1, a2);
  }

  *(a2 + 2) = v13 + 1;
  *&a2[8 * v13 + 32] = a1;
  *(v3 + 1) = a2;
  return (v8 & 1) == 0;
}

unint64_t sub_2584B5A34(unint64_t result, unint64_t a2, int64_t a3)
{
  if (a3 < a2)
  {
    return 0;
  }

  v4 = a2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 <= a2)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (*(v5 + 32 + 8 * a2) >= result)
  {
    return v4;
  }

  v7 = a2 + a3;
  if (__OFADD__(a2, a3))
  {
    goto LABEL_22;
  }

  if (v7 >= -1 && v7 / 2 < v6)
  {
    v8 = (v5 + 32 + 8 * (v7 / 2));
    if (*v8 != result && (v7 < 2 || (*v8 >= result ? (v9 = *(v8 - 1) >= result) : (v9 = 1), v9)))
    {
      return sub_2584B5A34();
    }

    else
    {
      return v7 / 2;
    }
  }

LABEL_23:
  __break(1u);
  return result;
}

char *sub_2584B5B98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930768, &qword_25853A7E8);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_2584B5CA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930770, &qword_25853A7F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2584B5DA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930790, &qword_25853A810);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_2584B5EAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930778, &qword_25853A7F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_2584B5FB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930798, &qword_25853A818);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2584B60D4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9307B8, &qword_25853A848);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931420, &unk_258535450);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2584B6240(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9307A0, &qword_25853A820);
  v10 = *(sub_258532D8C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_258532D8C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2584B643C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2584B6570(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930770, &qword_25853A7F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2584B6674(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930768, &qword_25853A7E8);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_2584B6780(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1, v8);
    v10 = v17 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_2584B68E0(v10, v7, v3);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  v13 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v13;
    goto LABEL_2;
  }

  v14 = swift_slowAlloc();
  v15 = v2;
  v16 = sub_2584B69D0(v14, v7, v3);
  result = MEMORY[0x259C82900](v14, -1, -1);
  if (!v15)
  {
    result = v16;
  }

LABEL_4:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_2584B68E0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v11) + 16) >= 2uLL)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_2584B6A48(result, a2, v4, a3);
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

    if (v5 >= v9)
    {
      return sub_2584B6A48(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_2584B69D0(unint64_t *result, uint64_t a2, uint64_t a3)
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

    v6 = sub_2584B68E0(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_2584B6A48(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930788, &unk_25853EBA0);
  result = sub_258533CDC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    v19 = *(v9 + 40);
    result = sub_258533EDC();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + 8 * v23) = v17;
    *(*(v9 + 56) + 8 * v23) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2584B6C4C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2584B74E8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_258533DEC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_25853360C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_2584B6D80(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2584B6D80(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2584B74C0(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_2584B72CC((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2584B5DA8(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_2584B5DA8((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
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

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_2584B72CC((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
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

uint64_t sub_2584B72CC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

BOOL sub_2584B74FC(_BOOL8 result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14)
{
  v14 = *(result + 16);
  if (v14 != *(a8 + 16))
  {
    return 0;
  }

  if (v14)
  {
    v15 = result == a8;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
LABEL_10:
    if (sub_2584B584C(a2, a9))
    {
      if (a4)
      {
        v23 = a5;
        if ((a11 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (a11)
        {
          return result;
        }

        v23 = a5;
        if (a3 != a10)
        {
          return result;
        }
      }

      if (a6)
      {
        if ((a13 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if ((a13 & 1) != 0 || v23 != a12)
        {
          return result;
        }
      }

      return a7 == a14;
    }

    return 0;
  }

  v16 = (result + 32);
  v17 = (a8 + 32);
  while (v14)
  {
    if (*v16 != *v17)
    {
      return 0;
    }

    ++v16;
    ++v17;
    if (!--v14)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2584B7604(uint64_t result, uint64_t a2, uint64_t a3)
{
  v20 = result;
  v19 = *(a2 + 16);
  if (!v19)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_18:
    if (*(v6 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930758, &qword_25853A7E0);
      sub_2584B78C8();
      v18 = sub_2585333CC();
    }

    else
    {

      return 0;
    }

    return v18;
  }

  v4 = 0;
  v5 = (a3 + 32);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = a2 + 8 * v4;
    v9 = *(v8 + 32);
    if ((v20 & 1) == 0)
    {
      break;
    }

    if (v4 >= *(a3 + 16))
    {
      goto LABEL_23;
    }

    if (v5[v4])
    {
      break;
    }

LABEL_4:
    if (v19 == ++v4)
    {
      goto LABEL_18;
    }
  }

  if (!v4)
  {
    v23 = *(v8 + 32);
    v24 = 539766875;
    v25 = 0xE400000000000000;
    v13 = sub_258533DFC();
    MEMORY[0x259C81500](v13);

    result = MEMORY[0x259C81500](2112093, 0xE300000000000000);
    if (!*(a3 + 16))
    {
      goto LABEL_24;
    }

    v14 = *v5;
    goto LABEL_13;
  }

  v24 = 40;
  v25 = 0xE100000000000000;
  v22 = *(v8 + 24);
  v10 = sub_258533DFC();
  MEMORY[0x259C81500](v10);

  MEMORY[0x259C81500](8236, 0xE200000000000000);
  v11 = sub_258533DFC();
  MEMORY[0x259C81500](v11);

  result = MEMORY[0x259C81500](2112093, 0xE300000000000000);
  if (v4 < *(a3 + 16))
  {
    v12 = v5[v4];
LABEL_13:
    v15 = sub_258533DFC();
    MEMORY[0x259C81500](v15);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2584B5B98(0, *(v6 + 16) + 1, 1, v6);
      v6 = result;
    }

    v17 = *(v6 + 16);
    v16 = *(v6 + 24);
    if (v17 >= v16 >> 1)
    {
      result = sub_2584B5B98((v16 > 1), v17 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 16) = v17 + 1;
    v7 = v6 + 16 * v17;
    *(v7 + 32) = v24;
    *(v7 + 40) = v25;
    goto LABEL_4;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_2584B78C8()
{
  result = qword_27F930760;
  if (!qword_27F930760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F930758, &qword_25853A7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930760);
  }

  return result;
}

void sub_2584B792C(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v46 = a1;

  sub_2584B6C4C(&v46);
  v4 = sub_2584B584C(v2, v46);

  if ((v4 & 1) == 0)
  {

    if (qword_27F92F8C0 != -1)
    {
LABEL_39:
      swift_once();
    }

    v25 = sub_258532A4C();
    __swift_project_value_buffer(v25, qword_27F93CF90);
    v26 = sub_258532A2C();
    v27 = sub_2585338EC();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_26;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "Buckets not sorted";
    goto LABEL_25;
  }

  v44 = a2;
  v5 = *(v2 + 16);
  if (v5 < 2)
  {

    if (qword_27F92F8C0 != -1)
    {
      swift_once();
    }

    v30 = sub_258532A4C();
    __swift_project_value_buffer(v30, qword_27F93CF90);
    v26 = sub_258532A2C();
    v27 = sub_2585338EC();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_26;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "Bucket count must be greater than 1";
LABEL_25:
    _os_log_impl(&dword_25845E000, v26, v27, v29, v28, 2u);
    MEMORY[0x259C82900](v28, -1, -1);
LABEL_26:

    v2 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    goto LABEL_27;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F98];
  v45 = MEMORY[0x277D84F98];
  do
  {
    if (v6 >= *(v2 + 16))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v8 = *(v2 + 8 * v6 + 32);
    v10 = sub_2584BC28C(v8);
    v11 = v7[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      goto LABEL_37;
    }

    v14 = v9;
    if (v7[3] < v13)
    {
      sub_25850BBE0(v13, 1);
      v7 = v45;
      v15 = sub_2584BC28C(v8);
      if ((v14 & 1) != (v16 & 1))
      {
        sub_258533E5C();
        __break(1u);

        __break(1u);
        return;
      }

      v10 = v15;
    }

    if (v14)
    {
      v17 = v7[7];
      v18 = *(v17 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 8 * v10) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_2584B5CA4(0, *(v18 + 2) + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      a2 = *(v18 + 2);
      v20 = *(v18 + 3);
      if (a2 >= v20 >> 1)
      {
        v18 = sub_2584B5CA4((v20 > 1), a2 + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      *(v18 + 2) = a2 + 1;
      *&v18[8 * a2 + 32] = v8;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930770, &qword_25853A7F0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_2585356C0;
      *(v21 + 32) = v8;
      v7[(v10 >> 6) + 8] |= 1 << v10;
      *(v7[6] + 8 * v10) = v8;
      *(v7[7] + 8 * v10) = v21;
      v22 = v7[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_38;
      }

      v7[2] = v24;
    }

    ++v6;
  }

  while (v5 != v6);
  v35 = sub_2584B6780(v7);

  if (*(v35 + 16))
  {

    if (qword_27F92F8C0 != -1)
    {
      swift_once();
    }

    v36 = sub_258532A4C();
    __swift_project_value_buffer(v36, qword_27F93CF90);

    v37 = sub_258532A2C();
    v38 = sub_2585338EC();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v45 = v40;
      *v39 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930780, &unk_25853A800);
      v41 = sub_25853339C();
      v43 = sub_2584713B0(v41, v42, &v45);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_25845E000, v37, v38, "Duplicates found, %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x259C82900](v40, -1, -1);
      MEMORY[0x259C82900](v39, -1, -1);
    }

    else
    {
    }

    v2 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    a2 = v44;
  }

  else
  {
    v32 = sub_25853360C();
    *(v32 + 16) = v5;
    bzero((v32 + 32), 8 * v5);

    LOBYTE(v45) = 1;
    v34 = 1;
    v33 = 1;
    v31 = MEMORY[0x277D84F90];
    a2 = v44;
  }

LABEL_27:
  *a2 = v2;
  a2[1] = v31;
  a2[2] = v32;
  a2[3] = 0;
  a2[4] = v34;
  a2[5] = 0;
  a2[6] = v33;
  a2[7] = 0;
}

unint64_t sub_2584B7EE4(unint64_t result, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (result + 32);
    while (1)
    {
      v5 = *v4++;
      v6 = __CFADD__(v3, v5);
      v3 += v5;
      if (v6)
      {
        break;
      }

      if (!--v2)
      {
        return v3 / a2;
      }
    }

    __break(1u);
  }

  else
  {
    v3 = 0;
    return v3 / a2;
  }

  return result;
}

uint64_t sub_2584B7F30(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    v16 = MEMORY[0x277D84F90];
    sub_2584F9398(0, v3, 0);
    v4 = v16;
    v5 = (a1 + 32);
    do
    {
      if (*v5++)
      {
        v7 = sub_258533DFC();
      }

      else
      {
        v7 = 0;
        v8 = 0xE000000000000000;
      }

      v17 = v4;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        v12 = v7;
        v13 = v8;
        sub_2584F9398((v9 > 1), v10 + 1, 1);
        v8 = v13;
        v7 = v12;
        v4 = v17;
      }

      *(v4 + 16) = v10 + 1;
      v11 = v4 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      --v3;
    }

    while (v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930758, &qword_25853A7E0);
  sub_2584B78C8();
  v14 = sub_2585333CC();

  return v14;
}

uint64_t sub_2584B80A0(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931350, qword_258538C60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v38 = &v36 - v7;
  v8 = sub_258532CFC();
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v37 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930620, &unk_25853E7D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9307C0, &qword_25853A850);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = &v36 - v20;
  v22 = sub_258532C8C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  if (a2 >> 60 != 15)
  {
    v36 = v8;
    v29 = sub_258532D8C();
    v30 = *(*(v29 - 8) + 56);
    v30(v16, 1, 1, v29);
    sub_2584A7B8C(a1, a2);
    sub_2584A7B8C(a1, a2);
    sub_258532C9C();
    if ((*(v23 + 48))(v21, 1, v22) == 1)
    {
      sub_258465168(v21, &qword_27F9307C0, &qword_25853A850);
      v30(v16, 1, 1, v29);
      sub_2584A7B8C(a1, a2);
      v31 = v38;
      sub_258532D0C();
      v32 = v39;
      v33 = v36;
      if ((*(v39 + 48))(v31, 1, v36) == 1)
      {
        sub_2584AE960(a1, a2);
        sub_2584AE960(a1, a2);
        sub_258465168(v31, &unk_27F931350, qword_258538C60);
        return 0;
      }

      else
      {
        v34 = v37;
        (*(v32 + 32))(v37, v31, v33);
        v40 = 0;
        v41 = 0xE000000000000000;
        sub_258533C8C();
        sub_2584AE960(a1, a2);
        sub_2584AE960(a1, a2);
        v28 = v40;
        (*(v32 + 8))(v34, v33);
      }
    }

    else
    {
      (*(v23 + 32))(v27, v21, v22);
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_258533C8C();
      sub_2584AE960(a1, a2);
      sub_2584AE960(a1, a2);
      v28 = v40;
      (*(v23 + 8))(v27, v22);
    }
  }

  return v28;
}

uint64_t sub_2584B8544(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F9307C8, qword_25853A858);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = v17 - v7;
  v9 = sub_258532FCC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if (a2 >> 60 != 15)
  {
    sub_2584A7B8C(a1, a2);
    sub_258532FDC();
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_2584AE960(a1, a2);
      sub_258465168(v8, qword_27F9307C8, qword_25853A858);
      return 0;
    }

    else
    {
      (*(v10 + 32))(v14, v8, v9);
      v17[0] = 0;
      v17[1] = 0xE000000000000000;
      sub_258533C8C();
      sub_2584AE960(a1, a2);
      v16 = v17[0];
      (*(v10 + 8))(v14, v9);
      return v16;
    }
  }

  return result;
}

uint64_t sub_2584B87A4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  return v1();
}

uint64_t sub_2584B87CC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2584B87EC, v1, 0);
}

uint64_t sub_2584B87EC()
{
  v1 = v0[3];
  v2 = *(v1 + 168);
  v7 = (*(v1 + 160) + **(v1 + 160));
  v3 = *(*(v1 + 160) + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_25848CAB4;
  v5 = v0[2];

  return v7(v5);
}

uint64_t sub_2584B8900()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 184);
  v6 = (*(v1 + 176) + **(v1 + 176));
  v3 = *(*(v1 + 176) + 4);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_258463A2C;

  return v6();
}

uint64_t sub_2584B8A0C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 200);
  v6 = (*(v1 + 192) + **(v1 + 192));
  v3 = *(*(v1 + 192) + 4);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_258463A2C;

  return v6();
}

uint64_t sub_2584B8B18()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 216);
  v6 = (*(v1 + 208) + **(v1 + 208));
  v3 = *(*(v1 + 208) + 4);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_2584AC7AC;

  return v6();
}

void *sub_2584B8C04()
{
  v1 = v0[15];

  v2 = v0[17];

  v3 = v0[19];

  v4 = v0[21];

  v5 = v0[23];

  v6 = v0[25];

  v7 = v0[27];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2584B8C5C()
{
  sub_2584B8C04();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2584B8CC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258472CF8;

  return sub_2584B87CC(a1);
}

uint64_t sub_2584B8D60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258464F5C;

  return sub_2584B88E0();
}

uint64_t sub_2584B8DEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258464F5C;

  return sub_2584B89EC();
}

uint64_t sub_2584B8E78()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2584B8AF8();
}

uint64_t sub_2584B8F04(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2584B8F78()
{
  v1 = sub_258532D3C();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_258532D2C();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *MEMORY[0x277CD8CA0];
  v14 = v8 + 13;
  v42 = v8[13];
  (v42)(v12, v13, v7);
  v15 = *MEMORY[0x277CD8CE0];
  v41 = v2[13];
  v37 = v2 + 13;
  v41(v6, v15, v1);
  sub_258532DFC();

  v16 = v2[1];
  v43 = v2 + 1;
  v16(v6, v1);
  v17 = v8[1];
  v39 = v8 + 1;
  v17(v12, v7);
  v33 = *MEMORY[0x277CD8CA8];
  v18 = v7;
  v38 = v14;
  v42(v12);
  v41(v6, *MEMORY[0x277CD8CE8], v1);
  sub_258532DFC();

  v19 = v6;
  v34 = v1;
  v36 = v16;
  v16(v6, v1);
  v20 = v18;
  v35 = v17;
  v17(v12, v18);
  v44[3] = &type metadata for MediaContinuityKitFeatureFlags;
  v44[4] = sub_2584A56DC();
  LOBYTE(v44[0]) = 1;
  LOBYTE(v14) = sub_2585329EC();
  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  if (v14)
  {
    sub_258532E2C();
  }

  type metadata accessor for FoundationBackedUserDefaultsProvider();
  inited = swift_initStackObject();
  v40 = v0;
  v22 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v23 = sub_25853341C();
  v24 = [v22 initWithSuiteName_];

  *(inited + 16) = v24;
  v25 = sub_2585138CC(1, 1);

  if (v25 != 2 && (v25 & 1) != 0)
  {
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v26 = sub_258532A4C();
    __swift_project_value_buffer(v26, qword_27F93CFD8);
    v27 = sub_258532A2C();
    v28 = sub_2585338EC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_25845E000, v27, v28, "Allowing infrastructure WiFi interface", v29, 2u);
      MEMORY[0x259C82900](v29, -1, -1);
    }

    (v42)(v12, v33, v20);
    v30 = v34;
    v41(v19, *MEMORY[0x277CD8CD8], v34);
    sub_258532DFC();

    v36(v19, v30);
    v35(v12, v20);
  }
}

uint64_t sub_2584B9434(uint64_t a1)
{
  v3 = sub_2585329BC();
  v38 = *(v3 - 8);
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930850, &unk_25853A9A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v33[-v11];
  v13 = sub_258532BDC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v33[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25853294C();
  v20 = v19;
  sub_258532BCC();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2584BA0F4(v12);
    sub_2584BA15C();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v37 = v1;
    (*(v14 + 32))(v18, v12, v13);
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v21 = sub_258532A4C();
    __swift_project_value_buffer(v21, qword_27F93CFD8);
    v22 = v38;
    (*(v38 + 16))(v7, a1, v3);
    v23 = sub_258532A2C();
    v24 = sub_2585338EC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v35 = v25;
      v36 = swift_slowAlloc();
      v39 = v36;
      *v25 = 136315138;
      sub_2584BA1B0();
      v26 = sub_258533DFC();
      v34 = v24;
      v28 = v27;
      (*(v22 + 8))(v7, v3);
      v29 = sub_2584713B0(v26, v28, &v39);

      v30 = v35;
      *(v35 + 1) = v29;
      _os_log_impl(&dword_25845E000, v23, v34, "Setting clientSessionID=%s on connection", v30, 0xCu);
      v31 = v36;
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x259C82900](v31, -1, -1);
      MEMORY[0x259C82900](v30, -1, -1);
    }

    else
    {

      (*(v22 + 8))(v7, v3);
    }

    v20 = sub_258532E1C();
    (*(v14 + 8))(v18, v13);
  }

  return v20;
}

uint64_t sub_2584B9824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_258532ECC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27[0] = sub_25853313C();
  v27[1] = sub_25853318C();
  v14 = *(*(a4 + 8) + 8);
  v26[0] = MEMORY[0x277CD8F48];
  v26[1] = MEMORY[0x277CD8F50];
  v21 = 2;
  v22 = a3;
  v23 = v27;
  v24 = v14;
  v25 = v26;
  sub_258532F2C();
  v18 = a3;
  v19 = a4;
  v20 = a1;
  sub_258532F3C();
  sub_258532DCC();

  sub_258532DDC();

  sub_258532E3C();

  (*(v9 + 104))(v13, *MEMORY[0x277CD8E18], v8);
  sub_258532E0C();

  (*(v9 + 8))(v13, v8);
  sub_2584B8F78();

  v15 = sub_2584B9434(a2);

  return v15;
}

uint64_t static Parameters1.compositorServicesConnectionConfiguration<A>(messageType:sessionID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2585331BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v18 - v13;
  MEMORY[0x259C811F0](a3, a4, a5);
  WitnessTable = swift_getWitnessTable();
  v16 = sub_2584B9824(v14, a2, v9, WitnessTable);
  (*(v10 + 8))(v14, v9);
  return v16;
}

uint64_t sub_2584B9B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25853313C();
  sub_25853318C();
  v4 = *(*(a3 + 8) + 8);
  sub_258532F2C();
  sub_258532F3C();
  sub_258532DEC();

  v5 = sub_258532DCC();

  sub_2584B8F78();

  return v5;
}

uint64_t sub_2584B9C78(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a2;
  v42 = a5;
  v44 = a3;
  v45 = a4;
  v43 = a1;
  v5 = sub_258532F1C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25853318C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v38 - v19;
  v40 = sub_25853313C();
  v21 = *(v40 - 8);
  v22 = v21[8];
  v24 = MEMORY[0x28223BE20](v40, v23);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v38 - v28;
  sub_25853312C();
  sub_25853317C();
  (*(v6 + 104))(v10, *MEMORY[0x277CD8E28], v5);
  sub_25853316C();
  (*(v6 + 8))(v10, v5);
  v30 = *(v12 + 8);
  v30(v17, v11);
  v52 = *v41;
  v31 = v21[2];
  v32 = v26;
  v39 = v26;
  v33 = v26;
  v34 = v40;
  v31(v33, v29, v40);
  v50 = v32;
  (*(v12 + 16))(v17, v20, v11);
  v51 = v17;
  v48 = v34;
  v49 = v11;
  v35 = *(*(v42 + 8) + 8);
  v46 = MEMORY[0x277CD8F48];
  v47 = MEMORY[0x277CD8F50];
  sub_25853311C();
  v30(v20, v11);
  v36 = v21[1];
  v36(v29, v34);
  v30(v17, v11);
  return (v36)(v39, v34);
}

uint64_t static Parameters1.compositorServicesListenerConfiguration<A>(messageType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2585331BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v16 - v11;
  MEMORY[0x259C811F0](a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v14 = sub_2584B9B7C(v12, v7, WitnessTable);
  (*(v8 + 8))(v12, v7);
  return v14;
}

uint64_t sub_2584BA0F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930850, &unk_25853A9A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2584BA15C()
{
  result = qword_27F930858;
  if (!qword_27F930858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930858);
  }

  return result;
}

unint64_t sub_2584BA1B0()
{
  result = qword_27F92FE48;
  if (!qword_27F92FE48)
  {
    sub_2585329BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FE48);
  }

  return result;
}

unint64_t sub_2584BA238(uint64_t a1)
{
  result = sub_2584BA15C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584BA264()
{
  result = qword_27F930860;
  if (!qword_27F930860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930860);
  }

  return result;
}

uint64_t sub_2584BA2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    if ((*(a1 + 56) >> 1) > 0x80000000)
    {
      return -(*(a1 + 56) >> 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = sub_2585329BC();
    v8 = *(*(v7 - 8) + 48);
    v9 = a1 + *(a3 + 32);

    return v8(v9, a2, v7);
  }
}

uint64_t sub_2584BA390(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 2 * -a2;
    *(result + 64) = 0;
    *(result + 72) = 0;
  }

  else
  {
    v7 = sub_2585329BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for VideoStreamInternalInitParameters()
{
  result = qword_27F930868;
  if (!qword_27F930868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2584BA48C()
{
  sub_2584BA560();
  if (v0 <= 0x3F)
  {
    sub_2584BA5CC();
    if (v1 <= 0x3F)
    {
      sub_2585329BC();
      if (v2 <= 0x3F)
      {
        sub_2584BA61C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2584BA560()
{
  result = qword_27F930878;
  if (!qword_27F930878)
  {
    result = swift_getExtendedExistentialTypeMetadata_unique();
    atomic_store(result, &qword_27F930878);
  }

  return result;
}

void sub_2584BA5CC()
{
  if (!qword_27F930880)
  {
    v0 = sub_258533A0C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F930880);
    }
  }
}

unint64_t sub_2584BA61C()
{
  result = qword_27F930888;
  if (!qword_27F930888)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F930888);
  }

  return result;
}

uint64_t sub_2584BA6C4()
{
  if (*v0)
  {
    return 4;
  }

  else
  {
    return 11;
  }
}

unint64_t sub_2584BA6DC(uint64_t a1)
{
  result = sub_2584AA020();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584BA708()
{
  result = qword_27F930890;
  if (!qword_27F930890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930890);
  }

  return result;
}

uint64_t sub_2584BA75C()
{

  v0 = sub_2585334DC();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_2585334DC();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_258533E2C();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_2585334DC();
      v3 = v5;
    }

    while (v5);
  }

  sub_2585334DC();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_2584BA8B8()
{
  v2 = *MEMORY[0x277D85DE8];
  CreateUsableInterfaceList();
  ReleaseUsableInterfaceList();
  v0 = *MEMORY[0x277D85DE8];
  return 0;
}

id *sub_2584BA9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = a3;
  v4 = v3;
  v84 = a1;
  v85 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931360, &unk_25853CD10);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v81 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v80 = &v66 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930970, &unk_25853ACE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v79 = &v66 - v15;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930D90, &unk_25853BCF0);
  v76 = *(v78 - 8);
  v16 = *(v76 + 64);
  MEMORY[0x28223BE20](v78, v17);
  v19 = &v66 - v18;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930980, &unk_25853ACF0);
  v87 = *(v89 - 8);
  v20 = *(v87 + 64);
  MEMORY[0x28223BE20](v89, v21);
  v77 = &v66 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v75 = &v66 - v27;
  swift_defaultActor_initialize();
  v28 = *(v24 + 56);
  v86 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventStream;
  v74 = v28;
  v28(v3 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventStream, 1, 1, v23);
  v72 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventMonitorTask;
  *(v3 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventMonitorTask) = 0;
  v29 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_eventStream;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308D0, &qword_25853AC60);
  v31 = *(*(v30 - 8) + 56);
  v73 = v29;
  v31(v3 + v29, 1, 1, v30);
  v32 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_eventStreamContinuation;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9308E0, &qword_25853AC68);
  v34 = *(*(v33 - 8) + 56);
  v71 = v32;
  v34(v3 + v32, 1, 1, v33);
  v35 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_transitionContinuation;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v37 = *(*(v36 - 8) + 56);
  v70 = v35;
  v37(v3 + v35, 1, 1, v36);
  v69 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_stopTransitionContinuation;
  v37(v3 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_stopTransitionContinuation, 1, 1, v36);
  v38 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_logger;
  if (qword_27F92F8E8 != -1)
  {
    swift_once();
  }

  v39 = sub_258532A4C();
  v40 = __swift_project_value_buffer(v39, qword_27F93D008);
  v67 = *(v39 - 8);
  v41 = *(v67 + 16);
  v68 = v39;
  v41(v3 + v38, v40, v39);
  *(v3 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_cachedStreamDirection) = 0;
  v42 = *MEMORY[0x277D858A0];
  v43 = v76;
  v44 = *(v76 + 104);
  v66 = v38;
  v45 = v78;
  v44(v19, v42, v78);
  v46 = v75;
  v47 = v77;
  sub_2585337BC();
  (*(v43 + 8))(v19, v45);
  v48 = v79;
  (*(v24 + 32))(v79, v46, v23);
  v74(v48, 0, 1, v23);
  v49 = v86;
  swift_beginAccess();
  sub_2584BBC80(v48, v4 + v49);
  swift_endAccess();
  v50 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventStreamContinuation;
  (*(v87 + 32))(v4 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventStreamContinuation, v47, v89);
  v51 = sub_2585329BC();
  v52 = *(v51 - 8);
  v53 = v80;
  v54 = v84;
  (*(v52 + 16))(v80, v84, v51);
  (*(v52 + 56))(v53, 0, 1, v51);
  v55 = v85;
  v56 = v81;
  sub_2584BBCF0(v85, v81);
  v57 = objc_allocWithZone(MEMORY[0x277CE56E8]);
  v58 = v83;
  v59 = sub_2584BBD60(v53, v56, v82);
  if (v58)
  {
    sub_258465168(v55, &qword_27F931360, &unk_25853CD10);
    (*(v52 + 8))(v54, v51);
    sub_258465168(v4 + v86, &unk_27F930970, &unk_25853ACE0);
    (*(v87 + 8))(v4 + v50, v89);
    v60 = *(v4 + v72);

    sub_258465168(v4 + v73, &unk_27F930DA0, &unk_25853BD00);
    sub_258465168(v4 + v71, &unk_27F930990, &unk_25853AD00);
    sub_258465168(v4 + v70, &unk_27F930DB0, &qword_258536390);
    sub_258465168(v4 + v69, &unk_27F930DB0, &qword_258536390);
    (*(v67 + 8))(v4 + v66, v68);
    type metadata accessor for AVConferenceBackedAudioStream();
    swift_defaultActor_destroy();
    v61 = *((*MEMORY[0x277D85000] & *v4) + 0x30);
    v62 = *((*MEMORY[0x277D85000] & *v4) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v4[14] = v59;
    v63 = [v59 streamToken];
    *(v4 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_streamToken) = v63;
    v64 = type metadata accessor for AVConferenceBackedAudioStream();
    v88.receiver = v4;
    v88.super_class = v64;
    v4 = objc_msgSendSuper2(&v88, sel_init);
    [v4[14] setDelegate_];
    sub_258465168(v55, &qword_27F931360, &unk_25853CD10);
    (*(v52 + 8))(v54, v51);
  }

  return v4;
}
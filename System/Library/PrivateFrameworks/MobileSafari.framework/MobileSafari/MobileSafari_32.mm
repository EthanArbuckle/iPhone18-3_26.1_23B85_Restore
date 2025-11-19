uint64_t sub_18BBB9B0C()
{
  sub_18BC20508();
  v0 = sub_18BC20658();
  v2 = v1;
  v4 = v3;
  sub_18BC205F8();
  v5 = sub_18BC20638();
  v7 = v6;
  v9 = v8;

  sub_18BBBA524(v0, v2, v4 & 1);

  sub_18BC20598();
  v10 = sub_18BC20628();
  v12 = v11;
  LOBYTE(v0) = v13;
  sub_18BBBA524(v5, v7, v9 & 1);

  sub_18BC20378();
  sub_18BC206C8();
  sub_18BBBA524(v10, v12, v0 & 1);
}

uint64_t sub_18BBB9C98()
{
  type metadata accessor for ReflectionEditor.Model(0);
  sub_18BBBA534();
  sub_18BC203E8();
  swift_getKeyPath();
  sub_18BC203F8();

  return sub_18BC20778();
}

uint64_t sub_18BBB9D6C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_18BC20318();

  *a1 = v3;
  return result;
}

uint64_t sub_18BBB9DEC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_18BC1E1A8();
  return sub_18BC20328();
}

uint64_t sub_18BBB9E60@<X0>(uint64_t a1@<X8>)
{
  sub_18BC20508();
  result = sub_18BC20658();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_18BBB9ED8@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB318);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v28 - v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_18BC20318();

  sub_18B7B0B50();
  v4 = sub_18BC20668();
  v6 = v5;
  v8 = v7;
  sub_18BC205F8();
  v9 = sub_18BC20638();
  v11 = v10;
  v13 = v12;

  sub_18BBBA524(v4, v6, v8 & 1);

  v14 = *MEMORY[0x1E6980E08];
  v15 = sub_18BC205B8();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v3, v14, v15);
  (*(v16 + 56))(v3, 0, 1, v15);
  v17 = sub_18BC20618();
  v19 = v18;
  LOBYTE(v16) = v20;
  sub_18BBBA524(v9, v11, v13 & 1);

  sub_18B988BAC(v3, &qword_1EA9DB318);
  LODWORD(v29) = sub_18BC20598();
  v21 = sub_18BC20628();
  v23 = v22;
  LOBYTE(v9) = v24;
  v26 = v25;
  sub_18BBBA524(v17, v19, v16 & 1);

  v29 = v21;
  v30 = v23;
  v31 = v9 & 1;
  v32 = v26;
  sub_18BC20378();
  sub_18BC206C8();
  sub_18BBBA524(v21, v23, v9 & 1);
}

uint64_t sub_18BBBA1B0@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v2 = sub_18BC20418();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB2A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - v8;
  v10 = v1[1];
  v12[4] = *v1;
  v12[5] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB2A8);
  sub_18B7B0B08(&qword_1EA9DB2B0, &qword_1EA9DB2A8);
  sub_18BC20608();
  sub_18BC20408();
  sub_18B7B0B08(&qword_1EA9DB2B8, &qword_1EA9DB2A0);
  sub_18BC206F8();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_18BBBA420@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_18BC20318();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_18BBBA4A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  return sub_18BC20328();
}

uint64_t sub_18BBBA524(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_18BBBA534()
{
  result = qword_1EA9DB320;
  if (!qword_1EA9DB320)
  {
    type metadata accessor for ReflectionEditor.Model(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB320);
  }

  return result;
}

void sub_18BBBA64C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = fabs(a3);
  v12 = fabs(a2);
  v13 = 0.0;
  if (v11 >= 20.0)
  {
    if (a3 > 0.0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (a3 <= 0.0 && v11 >= v12)
  {
LABEL_9:
    if (*(v5 + *(_s15PanGestureStateVMa(0) + 28)))
    {
      v13 = 0.0;
    }

    else
    {
      v13 = a3;
    }
  }

LABEL_12:
  v15 = _s15PanGestureStateVMa(0);
  v16 = v15;
  v17 = (v5 + v15[10]);
  *v17 = a2;
  v17[1] = v13;
  v18 = a4 * a4 + a5 * a5;
  v19 = v15[11];
  if (*(v5 + v19))
  {
    v20 = 1;
    *(v5 + v19) = 1;
    v21 = v15[12];
    if (*(v5 + v21))
    {
      goto LABEL_18;
    }

    v22 = v18 <= 10000.0;
    goto LABEL_17;
  }

  v22 = v18 <= 10000.0;
  *(v5 + v19) = v18 > 10000.0;
  v21 = v15[12];
  v20 = *(v5 + v21);
  if ((v20 & 1) == 0 && v18 > 10000.0)
  {
LABEL_17:
    v20 = v22;
  }

LABEL_18:
  *(v5 + v21) = v20;
  v23 = CGRectGetHeight(*(a1 + 48)) * -0.33;
  *(v5 + v16[8]) = v23 > a3;
  v24 = a2 * a2 + a3 * a3;
  v25 = 0;
  if (v23 <= a3)
  {
    if (v24 <= 100.0 || !((v11 < v12) | v20 & 1))
    {
      goto LABEL_27;
    }

LABEL_26:
    v25 = v23 <= a3;
    goto LABEL_27;
  }

  *(v5 + v19) = 0;
  *(v5 + v21) = 0;
  if (v24 > 100.0 && v11 < v12)
  {
    goto LABEL_26;
  }

LABEL_27:
  *(v5 + v16[9]) = v25;
}

unint64_t sub_18BBBA814()
{
  result = qword_1EA9DB3A0;
  if (!qword_1EA9DB3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB3A0);
  }

  return result;
}

uint64_t sub_18BBBA868()
{
  v29 = sub_18BC20B08();
  v24 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v27 = v20 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_18BC20B68();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = v20 - v3;
  v4 = sub_18BC1E8B8();
  v21 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_18BC1E8D8();
  v25 = *(v10 - 8);
  v26 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v22 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18BC1E4F8();
  __swift_allocate_value_buffer(v12, qword_1EA9F8468);
  v23 = __swift_project_value_buffer(v12, qword_1EA9F8468);
  sub_18BC20B18();
  v20[1] = "Last Hour (App Entity)";
  sub_18BC1EC38();
  v13 = *MEMORY[0x1E6968DF0];
  v14 = *(v5 + 104);
  v14(v7, v13, v4);
  sub_18BC1E8E8();
  sub_18BC20B58();
  sub_18BC20B48();
  v15 = v24;
  v16 = v27;
  v17 = v29;
  (*(v24 + 104))(v27, *MEMORY[0x1E6969D68], v29);
  sub_18BC20B28();
  (*(v15 + 8))(v16, v17);
  sub_18BC20B48();
  sub_18BC20B78();
  sub_18BC1EC38();
  v14(v7, v13, v21);
  v18 = v28;
  sub_18BC1E8F8();
  (*(v25 + 56))(v18, 0, 1, v26);
  return sub_18BC1E4E8();
}

uint64_t sub_18BBBAD30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4608);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_18BC1E8D8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_18BC20B68();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_18BC20B58();
  sub_18BC20B48();
  sub_18BC1DFE8();
  sub_18BC20B38();

  sub_18BC20B48();
  sub_18BC1E8C8();
  (*(v7 + 56))(v5, 1, 1, v6);
  v9 = sub_18BC1E398();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_18BC1E3A8();
}

uint64_t sub_18BBBB02C(uint64_t a1)
{
  v2 = sub_18B81041C();

  return MEMORY[0x1EEDB2C50](a1, v2);
}

uint64_t sub_18BBBB07C(uint64_t a1)
{
  v2 = sub_18B8139B0();

  return MEMORY[0x1EEDB3F70](a1, v2);
}

uint64_t sub_18BBBB0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_18BA82598;

  return (sub_18BBBEE1C)(a2, a3);
}

uint64_t sub_18BBBB180(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_18B9EC2C0;

  return sub_18BBBF758();
}

unint64_t sub_18BBBB228()
{
  result = qword_1EA9DB3E0;
  if (!qword_1EA9DB3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB3E0);
  }

  return result;
}

unint64_t sub_18BBBB280()
{
  result = qword_1EA9DB3E8;
  if (!qword_1EA9DB3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB3E8);
  }

  return result;
}

uint64_t sub_18BBBB2D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18B9EDB00;

  return sub_18BBBF3A8(a1);
}

uint64_t sub_18BBBB37C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_18BC20F28();
  v1[4] = sub_18BC20F18();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_18BA682D8;

  return sub_18BBBF758();
}

unint64_t sub_18BBBB43C()
{
  result = qword_1EA9DB3F0;
  if (!qword_1EA9DB3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB3F0);
  }

  return result;
}

unint64_t sub_18BBBB494()
{
  result = qword_1EA9DB3F8;
  if (!qword_1EA9DB3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9DB400);
    sub_18B812AE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB3F8);
  }

  return result;
}

uint64_t sub_18BBBB518(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_18BBBA814();
  *v5 = v2;
  v5[1] = sub_18B7B6968;

  return MEMORY[0x1EEDB2ED0](a1, a2, v6);
}

uint64_t type metadata accessor for CreateNewWindow()
{
  result = qword_1EA9DB498;
  if (!qword_1EA9DB498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18BBBB660(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18BBBB7EC(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  sub_18BC20F28();
  v2[16] = sub_18BC20F18();
  v4 = sub_18BC20ED8();
  v2[17] = v4;
  v2[18] = v3;

  return MEMORY[0x1EEE6DFA0](sub_18BBBB884, v4, v3);
}

uint64_t sub_18BBBB884()
{
  v1 = [objc_opt_self() sharedApplication];
  *(v0 + 104) = &unk_1F0032DA0;
  *(v0 + 152) = v1;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = v2;
    v4 = sub_18BC1EBC8();
    type metadata accessor for CreateNewWindow();
    sub_18BC1E0A8();
    v5 = [v3 createNewWindowWithRequestIdentifier:v4 isPrivate:*(v0 + 192)];

    if (v5)
    {
      v6 = sub_18BC20BD8();
      v8 = v7;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9040);
      inited = swift_initStackObject();
      *(v0 + 160) = inited;
      *(inited + 16) = xmmword_18BC3E410;
      *(inited + 32) = v6;
      *(inited + 40) = v8;
      v10 = swift_task_alloc();
      *(v0 + 168) = v10;
      *v10 = v0;
      v10[1] = sub_18BBBBB48;

      return sub_18BBBF3A8(inited);
    }
  }

  else
  {
  }

  if (qword_1EA9D2550 != -1)
  {
    swift_once();
  }

  v12 = sub_18BC1DE48();
  v13 = __swift_project_value_buffer(v12, qword_1EA9F8578);
  sub_18BBBB660(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
  swift_allocError();
  (*(*(v12 - 8) + 16))(v14, v13, v12);
  swift_willThrow();
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_18BBBBB48(uint64_t a1)
{
  v3 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {
    v4 = v3[17];
    v5 = v3[18];
    v6 = sub_18BBBBE88;
  }

  else
  {
    v7 = v3[20];
    swift_setDeallocating();
    sub_18BA835C4(v7 + 32);
    v4 = v3[17];
    v5 = v3[18];
    v6 = sub_18BBBBC70;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_18BBBBC70()
{
  v1 = *(v0 + 176);

  if (*(v1 + 16))
  {
    v2 = *(v0 + 176);
    v3 = *(v0 + 152);
    v5 = v2[4];
    v4 = v2[5];
    v6 = v2[6];
    v7 = v2[7];
    v8 = v2[8];
    sub_18BC1E3F8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    *(v0 + 64) = v5;
    *(v0 + 72) = v4;
    *(v0 + 80) = v6;
    *(v0 + 88) = v7;
    *(v0 + 96) = v8;
    sub_18B812AE8();
    sub_18BC1DF88();

    v9 = *(v0 + 8);
  }

  else
  {

    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v10 = sub_18BC1DE48();
    v11 = __swift_project_value_buffer(v10, qword_1EA9F8578);
    sub_18BBBB660(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v10 - 8) + 16))(v12, v11, v10);
    swift_willThrow();
    v9 = *(v0 + 8);
  }

  return v9();
}

uint64_t sub_18BBBBE88()
{
  v1 = *(v0 + 160);

  swift_setDeallocating();
  sub_18BA835C4(v1 + 32);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_18BBBBF08@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18BC1E488();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6E70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v20[-v13];
  sub_18BC1DE28();
  v15 = *(type metadata accessor for CreateNewWindow() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6F38);
  v16 = sub_18BC1E8D8();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v20[15] = 0;
  v17 = sub_18BC20EB8();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = sub_18BC1DF68();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  (*(v3 + 104))(v5, *MEMORY[0x1E695A4F8], v2);
  result = sub_18BC1E178();
  *(a1 + v15) = result;
  return result;
}

uint64_t sub_18BBBC1E0(uint64_t a1)
{
  v2 = sub_18BBBB660(&qword_1EA9DB5D8, type metadata accessor for CreateNewWindow);

  return MEMORY[0x1EEDB39D0](a1, v2);
}

uint64_t sub_18BBBC25C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18B987B10;

  return sub_18BBBB7EC(a1);
}

uint64_t sub_18BBBC2F8(uint64_t a1)
{
  v2 = sub_18BBBB660(&qword_1EA9DB410, type metadata accessor for CreateNewWindow);

  return MEMORY[0x1EEDB2D88](a1, v2);
}

uint64_t sub_18BBBC364(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_18BC20F28();
  *(v1 + 24) = sub_18BC20F18();
  v3 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BBBC3FC, v3, v2);
}

uint64_t sub_18BBBC3FC()
{
  v1 = *(v0 + 16);

  v2 = *MEMORY[0x1E6985BF8];
  v3 = sub_18BC1F048();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

void sub_18BBBC4A8(void *a1)
{
  v2 = sub_18BC1EBC8();
  [a1 setAppIntentRequestIdentifier_];
}

unint64_t sub_18BBBC4FC()
{
  result = qword_1EA9DB428;
  if (!qword_1EA9DB428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB428);
  }

  return result;
}

unint64_t sub_18BBBC554()
{
  result = qword_1EA9DB430;
  if (!qword_1EA9DB430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB430);
  }

  return result;
}

unint64_t sub_18BBBC5DC()
{
  result = qword_1EA9DB438;
  if (!qword_1EA9DB438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB438);
  }

  return result;
}

void sub_18BBBC630()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = swift_dynamicCastObjCProtocolConditional();
  if (v1)
  {
    v2 = v1;
    sub_18BC1E0A8();
    v3 = v16;
    v4 = *(v16 + 16);
    if (v4)
    {
      v15 = v0;
      v17 = MEMORY[0x1E69E7CC0];
      sub_18B7B7A54(0, v4, 0);
      v5 = (v3 + 40);
      do
      {
        v6 = *(v5 - 1);
        v7 = *v5;
        v9 = *(v17 + 16);
        v8 = *(v17 + 24);
        sub_18BC1E3F8();
        if (v9 >= v8 >> 1)
        {
          sub_18B7B7A54((v8 > 1), v9 + 1, 1);
        }

        *(v17 + 16) = v9 + 1;
        v10 = v17 + 16 * v9;
        *(v10 + 32) = v6;
        *(v10 + 40) = v7;
        v5 += 5;
        --v4;
      }

      while (v4);

      v0 = v15;
    }

    else
    {
    }

    v14 = sub_18BC20D88();

    [v2 closeWindowsWithIdentifiers_];

    sub_18BC1DF98();
  }

  else
  {

    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v11 = sub_18BC1DE48();
    v12 = __swift_project_value_buffer(v11, qword_1EA9F8578);
    sub_18BBBB660(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v11 - 8) + 16))(v13, v12, v11);
    swift_willThrow();
  }
}

uint64_t sub_18BBBC8A8(uint64_t a1)
{
  v2 = sub_18BBC0750();

  return MEMORY[0x1EEDB39D0](a1, v2);
}

uint64_t sub_18BBBC8F4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_18BC20F28();
  v2[4] = sub_18BC20F18();
  v4 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BBBC98C, v4, v3);
}

uint64_t sub_18BBBC98C()
{

  sub_18BBBC630();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18BBBCA18@<X0>(uint64_t a1@<X8>)
{
  v18[0] = a1;
  v1 = sub_18BC1E488();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v18 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB560);
  v14 = sub_18BC1E8D8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v18[1] = 0;
  v15 = sub_18BC1DF68();
  v16 = *(*(v15 - 8) + 56);
  v16(v10, 1, 1, v15);
  v16(v7, 1, 1, v15);
  (*(v2 + 104))(v4, *MEMORY[0x1E695A4F8], v1);
  sub_18B81041C();
  result = sub_18BC1E108();
  *v18[0] = result;
  return result;
}

uint64_t sub_18BBBCCA0(uint64_t a1)
{
  v2 = sub_18BBBC5DC();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

unint64_t sub_18BBBCCE0()
{
  result = qword_1EA9DB440;
  if (!qword_1EA9DB440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB440);
  }

  return result;
}

uint64_t sub_18BBBCD34()
{
  v0 = sub_18BC1E8B8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_18BC1E8D8();
  __swift_allocate_value_buffer(v6, qword_1EA9F8480);
  __swift_project_value_buffer(v6, qword_1EA9F8480);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_18BC1E8E8();
}

void sub_18BBBCF48()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = swift_dynamicCastObjCProtocolConditional();
  if (v1)
  {
    v2 = v1;
    sub_18BC1E0A8();

    v3 = sub_18BC20B98();

    [v2 showWindowWithIdentifier_];

    sub_18BC1DF98();
  }

  else
  {

    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v4 = sub_18BC1DE48();
    v5 = __swift_project_value_buffer(v4, qword_1EA9F8578);
    sub_18BBBB660(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v4 - 8) + 16))(v6, v5, v4);
    swift_willThrow();
  }
}

void (*sub_18BBBD10C(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_18BC1E098();
  return sub_18B99C5B4;
}

unint64_t sub_18BBBD184()
{
  result = qword_1EA9DB448;
  if (!qword_1EA9DB448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB448);
  }

  return result;
}

unint64_t sub_18BBBD1DC()
{
  result = qword_1EA9DB450;
  if (!qword_1EA9DB450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB450);
  }

  return result;
}

unint64_t sub_18BBBD234()
{
  result = qword_1EA9DB458;
  if (!qword_1EA9DB458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB458);
  }

  return result;
}

uint64_t sub_18BBBD348(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_18BC20F28();
  v2[4] = sub_18BC20F18();
  v4 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BBBD3E0, v4, v3);
}

uint64_t sub_18BBBD3E0()
{

  sub_18BBBCF48();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18BBBD46C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BBBFA14();
  *a1 = result;
  return result;
}

uint64_t sub_18BBBD494(uint64_t a1)
{
  v2 = sub_18BBBD184();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

uint64_t sub_18BBBD4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a1;
  v3[14] = a3;
  sub_18BC20F28();
  v3[15] = sub_18BC20F18();
  v5 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BBBD568, v5, v4);
}

void sub_18BBBD568()
{

  v1 = objc_opt_self();
  v2 = [v1 sharedApplication];
  v3 = [v2 connectedScenes];

  sub_18B7B0AC0(0, &qword_1EA9D7238);
  v4 = sub_18BBC06E8();
  v5 = sub_18BC20FD8();

  v39 = v4;
  v40 = v1;
  if ((v5 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_18BC21958();
    sub_18BC210A8();
    v5 = v0[2];
    v6 = v0[3];
    v7 = v0[4];
    v8 = v0[5];
    v9 = v0[6];
  }

  else
  {
    v10 = -1 << *(v5 + 32);
    v6 = v5 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v5 + 56);
    sub_18BC1E3F8();
    v8 = 0;
  }

  v13 = (v7 + 64) >> 6;
  v41 = v6;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v8;
  v15 = v9;
  v16 = v8;
  if (v9)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v18)
    {
      while (1)
      {
        v20 = v5;
        v42 = v18;
        v21 = [v18 session];
        v22 = [v21 persistentIdentifier];

        v23 = sub_18BC20BD8();
        v25 = v24;

        sub_18BC1E0A8();
        v27 = v0[7];
        v26 = v0[8];

        if (v23 == v27 && v25 == v26)
        {
          break;
        }

        v29 = sub_18BC21FD8();

        if (v29)
        {
          goto LABEL_26;
        }

        v8 = v16;
        v9 = v17;
        v5 = v20;
        v6 = v41;
        if ((v5 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v19 = sub_18BC219D8();
        if (v19)
        {
          v0[12] = v19;
          swift_dynamicCast();
          v18 = v0[7];
          v16 = v8;
          v17 = v9;
          if (v18)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

LABEL_26:
      sub_18B7D2E34();

      v33 = v42;
    }

    else
    {
LABEL_23:
      sub_18B7D2E34();

      v30 = [v40 sharedApplication];
      v31 = [v30 connectedScenes];

      v32 = sub_18BC20FD8();
      v33 = sub_18BA61AD8(v32);

      if (!v33)
      {
        v34 = v0[13];
        v35 = MEMORY[0x1E6985BF8];
LABEL_28:
        v36 = *v35;
        v37 = sub_18BC1F048();
        (*(*(v37 - 8) + 104))(v34, v36, v37);
        v38 = v0[1];

        v38();
        return;
      }
    }

    v34 = v0[13];
    *v34 = v33;
    v35 = MEMORY[0x1E6985C00];
    goto LABEL_28;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_23;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_18BBBD998(uint64_t a1)
{
  v4 = *v1;
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_18B7B6968;

  return sub_18BBBD4D0(a1, v5, v4);
}

unint64_t sub_18BBBDA3C()
{
  result = qword_1EA9DB460;
  if (!qword_1EA9DB460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB460);
  }

  return result;
}

uint64_t sub_18BBBDAD8()
{
  v0 = sub_18BC1E8B8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_18BC1E8D8();
  __swift_allocate_value_buffer(v6, qword_1EA9F8498);
  __swift_project_value_buffer(v6, qword_1EA9F8498);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_18BC1E8F8();
}

uint64_t sub_18BBBDCCC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB4D8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB4E0);
  MEMORY[0x1EEE9AC00](v1);
  sub_18BBBE584();
  sub_18BC1E458();
  sub_18BC1E448();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB4E8);
  sub_18BC1E438();

  sub_18BC1E448();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB4F0);
  sub_18BC1E438();

  sub_18BC1E448();
  sub_18BC1E478();
  return sub_18BC1E418();
}

uint64_t sub_18BBBDEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v3[12] = *(type metadata accessor for TabEntity() - 8);
  v3[13] = swift_task_alloc();
  v4 = sub_18BC1EC08();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  sub_18BC20F28();
  v3[17] = sub_18BC20F18();
  v6 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BBBE014, v6, v5);
}

uint64_t sub_18BBBE014()
{

  v1 = [objc_opt_self() sharedApplication];
  v0[7] = &unk_1F0032B58;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = v2;
    sub_18BC1E0A8();
    v4 = v0[8];
    v5 = *(v4 + 16);
    if (v5)
    {
      v23 = v3;
      v24 = v1;
      v6 = v0[15];
      v7 = v0[12];
      v26 = MEMORY[0x1E69E7CC0];
      sub_18B855A90(0, v5, 0);
      v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v25 = *(v7 + 72);
      do
      {
        v9 = v0[16];
        v11 = v0[13];
        v10 = v0[14];
        sub_18BA82420(v8, v11);
        (*(v6 + 16))(v9, v11, v10);
        sub_18BA5F48C(v11);
        v13 = *(v26 + 16);
        v12 = *(v26 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_18B855A90(v12 > 1, v13 + 1, 1);
        }

        v14 = v0[16];
        v15 = v0[14];
        *(v26 + 16) = v13 + 1;
        (*(v6 + 32))(v26 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v14, v15);
        v8 += v25;
        --v5;
      }

      while (v5);

      v3 = v23;
      v1 = v24;
    }

    else
    {
    }

    v20 = sub_18BC20D88();

    sub_18BC1E0A8();

    v21 = sub_18BC20B98();

    [v3 moveTabsWithUUIDs:v20 toWindowWithIdentifier:v21];

    sub_18BC1DF98();

    v19 = v0[1];
  }

  else
  {

    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v16 = sub_18BC1DE48();
    v17 = __swift_project_value_buffer(v16, qword_1EA9F8578);
    sub_18BBBB660(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v16 - 8) + 16))(v18, v17, v16);
    swift_willThrow();

    v19 = v0[1];
  }

  return v19();
}

void (*sub_18BBBE3B8(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_18BC1E098();
  return sub_18BB92404;
}

__n128 sub_18BBBE42C@<Q0>(uint64_t a1@<X8>)
{
  sub_18BC1E0A8();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_18BBBE474()
{
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E0B8();
}

void (*sub_18BBBE50C(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_18BC1E098();
  return sub_18BB92404;
}

unint64_t sub_18BBBE584()
{
  result = qword_1EA9DB468;
  if (!qword_1EA9DB468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB468);
  }

  return result;
}

unint64_t sub_18BBBE5DC()
{
  result = qword_1EA9DB470;
  if (!qword_1EA9DB470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB470);
  }

  return result;
}

unint64_t sub_18BBBE634()
{
  result = qword_1EA9DB478;
  if (!qword_1EA9DB478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB478);
  }

  return result;
}

uint64_t sub_18BBBE6FC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_18B7B6968;

  return sub_18BBBDEC4(a1, v5, v4);
}

uint64_t sub_18BBBE7A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BBBFF4C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18BBBE7D0(uint64_t a1)
{
  v2 = sub_18BBBE584();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

unint64_t sub_18BBBE810()
{
  result = qword_1EA9DB480;
  if (!qword_1EA9DB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB480);
  }

  return result;
}

unint64_t sub_18BBBE8B4()
{
  result = qword_1EA9DB490;
  if (!qword_1EA9DB490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB490);
  }

  return result;
}

void sub_18BBBE964()
{
  sub_18BC1EC08();
  if (v0 <= 0x3F)
  {
    sub_18BBBE9E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18BBBE9E8()
{
  if (!qword_1EA9DB4A8)
  {
    sub_18BA7FF08();
    v0 = sub_18BC1E198();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA9DB4A8);
    }
  }
}

void sub_18BBBEA64(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_18BC1E8B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_18BC1E8D8();
  MEMORY[0x1EEE9AC00](v10 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9030);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v5 + 104))(v7, *MEMORY[0x1E6968DF0], v4);
  sub_18BC1E8E8();
  v11 = sub_18BC1E038();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB5D0);
  sub_18BBBB660(&qword_1EA9D6EF0, type metadata accessor for TabEntity);
  sub_18BC1E1A8();
  v12 = sub_18BC1E008();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D77D8);
  sub_18BC1E1A8();
  v13 = sub_18BC1E058();
  sub_18BC1E1A8();
  v14 = [a1 identifier];
  v15 = sub_18BC20BD8();
  v17 = v16;

  sub_18BC1E3F8();
  v18 = [a1 title];
  if (v18)
  {
    v19 = v18;
    v20 = sub_18BC20BD8();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v24 = v20;
  v25 = v22;
  sub_18BC1DFF8();
  LOBYTE(v24) = [a1 isPrivate];
  sub_18BC1DFF8();

  *a2 = v15;
  a2[1] = v17;
  a2[2] = v11;
  a2[3] = v12;
  a2[4] = v13;
}

uint64_t sub_18BBBEE1C(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  sub_18BC20F28();
  v2[14] = sub_18BC20F18();
  v4 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BBBEEB4, v4, v3);
}

char *sub_18BBBEEB4()
{
  v44 = v0;
  v1 = v0;

  v2 = [objc_opt_self() sharedApplication];
  v0[11] = &unk_1F0032E00;
  v3 = (v0 + 11);
  v4 = swift_dynamicCastObjCProtocolConditional();
  if (!v4)
  {

    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_40;
  }

  v5 = v4;
  v40 = v2;
  if (qword_1EA9D22B0 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v6 = sub_18BC1F2C8();
    __swift_project_value_buffer(v6, qword_1EA9F7EC8);
    sub_18BC1E3F8();
    v7 = sub_18BC1F2A8();
    v8 = sub_18BC21258();

    v42 = v1;
    if (os_log_type_enabled(v7, v8))
    {
      v10 = v1[12];
      v9 = v1[13];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v43 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_18B7EA850(v10, v9, &v43);
      _os_log_impl(&dword_18B7AC000, v7, v8, "WindowEntity string query for: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      v13 = v12;
      v1 = v42;
      MEMORY[0x18CFFEEE0](v13, -1, -1);
      MEMORY[0x18CFFEEE0](v11, -1, -1);
    }

    v14 = [v5 allWindowEntities];
    sub_18B7B0AC0(0, &qword_1EA9DB5E0);
    v15 = sub_18BC20D98();

    v43 = MEMORY[0x1E69E7CC0];
    v16 = v15 >> 62 ? sub_18BC219A8() : *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = MEMORY[0x1E69E7CC0];
    v41 = v3;
    if (!v16)
    {
      break;
    }

    v18 = 0;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x18CFFD010](v18, v15);
      }

      else
      {
        if (v18 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v19 = *(v15 + 8 * v18 + 32);
      }

      v20 = v19;
      v5 = (v18 + 1);
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v21 = [v19 title];
      if (v21 && (v22 = v1[13], v23 = v42[12], v24 = v21, v3 = sub_18BC20BD8(), v26 = v25, v24, v42[7] = v3, v42[8] = v26, v42[9] = v23, v1 = v42, v42[10] = v22, sub_18B7B0B50(), LOBYTE(v24) = sub_18BC21898(), , (v24 & 1) != 0))
      {
        sub_18BC21B68();
        v3 = *(v43 + 16);
        sub_18BC21BA8();
        sub_18BC21BB8();
        sub_18BC21B78();
      }

      else
      {
      }

      ++v18;
      if (v5 == v16)
      {
        v27 = v43;
        v17 = MEMORY[0x1E69E7CC0];
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
  }

  v27 = MEMORY[0x1E69E7CC0];
LABEL_22:

  if (v27 < 0 || (v27 & 0x4000000000000000) != 0)
  {
    v28 = sub_18BC219A8();
    v29 = v41;
    if (v28)
    {
      goto LABEL_25;
    }

LABEL_39:

    goto LABEL_40;
  }

  v28 = *(v27 + 16);
  v29 = v41;
  if (!v28)
  {
    goto LABEL_39;
  }

LABEL_25:
  v43 = v17;
  result = sub_18B9B69C0(0, v28 & ~(v28 >> 63), 0);
  if (v28 < 0)
  {
    __break(1u);
    return result;
  }

  v31 = 0;
  v32 = (v29 - 72);
  v17 = v43;
  do
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x18CFFD010](v31, v27);
    }

    else
    {
      v33 = *(v27 + 8 * v31 + 32);
    }

    sub_18BBBEA64(v33, v32);
    v43 = v17;
    v35 = *(v17 + 16);
    v34 = *(v17 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_18B9B69C0((v34 > 1), v35 + 1, 1);
      v17 = v43;
    }

    ++v31;
    *(v17 + 16) = v35 + 1;
    v36 = v17 + 40 * v35;
    v37 = *v32;
    v38 = *(v32 + 1);
    *(v36 + 64) = v32[4];
    *(v36 + 32) = v37;
    *(v36 + 48) = v38;
  }

  while (v28 != v31);

  v1 = v42;
LABEL_40:
  v39 = v1[1];

  return v39(v17);
}

uint64_t sub_18BBBF3A8(uint64_t a1)
{
  *(v1 + 64) = a1;
  sub_18BC20F28();
  *(v1 + 72) = sub_18BC20F18();
  v3 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BBBF440, v3, v2);
}

char *sub_18BBBF440()
{

  v1 = [objc_opt_self() sharedApplication];
  v0[7] = &unk_1F0032E00;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = v2;
    v4 = v0 + 2;
    v32 = v0;
    v5 = v0[8];
    v6 = MEMORY[0x1E69E7CC0];
    v34 = MEMORY[0x1E69E7CC0];
    v7 = *(v5 + 16);
    v8 = v1;
    v9 = 0;
    v10 = v5 + 40;
    v33 = v6;
    v30 = v5 + 40;
    v31 = v8;
LABEL_3:
    v11 = v10 + 16 * v9;
    while (v7 != v9)
    {
      if (v9 >= v7)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v28 = v8;
        v15 = sub_18BC219A8();
        v8 = v28;
        v0 = v32;
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_13;
      }

      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_24;
      }

      sub_18BC1E3F8();
      v13 = sub_18BC20B98();
      v14 = [v3 windowEntityWithIdentifier_];

      v11 += 16;
      ++v9;
      if (v14)
      {
        MEMORY[0x18CFFC270](v8);
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18BC20DD8();
        }

        v8 = sub_18BC20E18();
        v33 = v34;
        v9 = v12;
        v10 = v30;
        goto LABEL_3;
      }
    }

    v7 = v31;

    v8 = v33;
    if (v33 >> 62)
    {
      goto LABEL_25;
    }

    v15 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0 = v32;
    if (!v15)
    {
LABEL_26:

      goto LABEL_27;
    }

LABEL_13:
    v16 = v8;
    v35 = MEMORY[0x1E69E7CC0];
    result = sub_18B9B69C0(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
      __break(1u);
      return result;
    }

    v18 = 0;
    v19 = v35;
    v20 = v16;
    v21 = v16 & 0xC000000000000001;
    do
    {
      if (v21)
      {
        v22 = MEMORY[0x18CFFD010](v18, v20);
      }

      else
      {
        v22 = *(v20 + 8 * v18 + 32);
      }

      sub_18BBBEA64(v22, v4);
      v24 = *(v35 + 16);
      v23 = *(v35 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_18B9B69C0((v23 > 1), v24 + 1, 1);
      }

      ++v18;
      *(v35 + 16) = v24 + 1;
      v25 = v35 + 40 * v24;
      v26 = *v4;
      v27 = *(v4 + 1);
      *(v25 + 64) = v4[4];
      *(v25 + 32) = v26;
      *(v25 + 48) = v27;
      v20 = v33;
    }

    while (v15 != v18);
  }

  else
  {

LABEL_27:
    v19 = MEMORY[0x1E69E7CC0];
  }

  v29 = v0[1];

  return v29(v19);
}

uint64_t sub_18BBBF758()
{
  sub_18BC20F28();
  *(v0 + 64) = sub_18BC20F18();
  v2 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BBBF7EC, v2, v1);
}

char *sub_18BBBF7EC()
{

  v1 = [objc_opt_self() sharedApplication];
  *(v0 + 56) = &unk_1F0032E00;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = [v2 allWindowEntities];
  sub_18B7B0AC0(0, &qword_1EA9DB5E0);
  v4 = sub_18BC20D98();

  if (v4 >> 62)
  {
    v5 = sub_18BC219A8();
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_14:

LABEL_15:

    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

LABEL_4:
  v17 = MEMORY[0x1E69E7CC0];
  result = sub_18B9B69C0(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
    __break(1u);
    return result;
  }

  v16 = v1;
  v7 = 0;
  v8 = v17;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x18CFFD010](v7, v4);
    }

    else
    {
      v9 = *(v4 + 8 * v7 + 32);
    }

    sub_18BBBEA64(v9, (v0 + 16));
    v11 = *(v17 + 16);
    v10 = *(v17 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_18B9B69C0((v10 > 1), v11 + 1, 1);
    }

    ++v7;
    *(v17 + 16) = v11 + 1;
    v12 = v17 + 40 * v11;
    v13 = *(v0 + 16);
    v14 = *(v0 + 32);
    *(v12 + 64) = *(v0 + 48);
    *(v12 + 32) = v13;
    *(v12 + 48) = v14;
  }

  while (v5 != v7);

LABEL_16:
  v15 = *(v0 + 8);

  return v15(v8);
}

uint64_t sub_18BBBFA14()
{
  v0 = sub_18BC1E488();
  v26 = *(v0 - 8);
  v27 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v25 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v24 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v23 = v21 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v22 = v21 - v7;
  v8 = sub_18BC1E8B8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v21[0] = sub_18BC1E8D8();
  v14 = *(v21[0] - 8);
  MEMORY[0x1EEE9AC00](v21[0]);
  v21[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB4D0);
  sub_18BC20B18();
  sub_18BC1EC38();
  v15 = *MEMORY[0x1E6968DF0];
  v16 = *(v9 + 104);
  v16(v11, v15, v8);
  sub_18BC1E8E8();
  sub_18BC20B18();
  sub_18BC1EC38();
  v16(v11, v15, v8);
  v17 = v22;
  sub_18BC1E8E8();
  (*(v14 + 56))(v17, 0, 1, v21[0]);
  v18 = sub_18BC1DF68();
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v23, 1, 1, v18);
  v19(v24, 1, 1, v18);
  (*(v26 + 104))(v25, *MEMORY[0x1E695A4F8], v27);
  sub_18B81041C();
  return sub_18BC1E118();
}

uint64_t sub_18BBBFF4C()
{
  v46 = sub_18BC1E488();
  v48 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v28[-((v0 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v44 = &v28[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v28[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v28[-v6];
  v7 = sub_18BC1E8B8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v42 = sub_18BC1E8D8();
  v47 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v40 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D77F8);
  sub_18BC20B18();
  sub_18BC1EC38();
  v15 = *(v8 + 104);
  v29 = *MEMORY[0x1E6968DF0];
  v14 = v29;
  v30 = v7;
  v15(v10, v29, v7);
  v31 = v15;
  v32 = "Last Hour (App Entity)";
  sub_18BC1E8E8();
  sub_18BC20B18();
  sub_18BC1EC38();
  v15(v10, v14, v7);
  v16 = v41;
  sub_18BC1E8F8();
  v17 = *(v47 + 56);
  v47 += 56;
  v38 = v17;
  v17(v16, 0, 1, v42);
  *&v49 = 0;
  v18 = sub_18BC1DF68();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v34 = v20;
  v35 = v19 + 56;
  v20(v43, 1, 1, v18);
  v20(v44, 1, 1, v18);
  v36 = *MEMORY[0x1E695A4F8];
  v21 = *(v48 + 104);
  v48 += 104;
  v37 = v21;
  v21(v45);
  sub_18BBBB660(&qword_1EA9D6EF0, type metadata accessor for TabEntity);
  v39 = sub_18BC1E118();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB4D0);
  sub_18BC20B18();
  sub_18BC1EC38();
  v22 = v29;
  v23 = v30;
  v24 = v31;
  v31(v10, v29, v30);
  sub_18BC1E8E8();
  sub_18BC20B18();
  sub_18BC1EC38();
  v24(v10, v22, v23);
  v25 = v41;
  sub_18BC1E8F8();
  v38(v25, 0, 1, v42);
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v26 = v34;
  v34(v43, 1, 1, v18);
  v26(v44, 1, 1, v18);
  v37(v45, v36, v46);
  sub_18B81041C();
  sub_18BC1E118();
  return v39;
}

unint64_t sub_18BBC06E8()
{
  result = qword_1EA9DB4F8;
  if (!qword_1EA9DB4F8)
  {
    sub_18B7B0AC0(255, &qword_1EA9D7238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB4F8);
  }

  return result;
}

unint64_t sub_18BBC0750()
{
  result = qword_1EA9DB568;
  if (!qword_1EA9DB568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB568);
  }

  return result;
}

uint64_t sub_18BBC07B0(uint64_t a1, int a2)
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

uint64_t sub_18BBC07D0(uint64_t result, int a2, int a3)
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

uint64_t SFOnDeviceSummarization.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t SFOnDeviceSummarization.summary.getter()
{
  v1 = *(v0 + OBJC_IVAR___SFOnDeviceSummarization__summary);
  sub_18BC1E3F8();
  return v1;
}

uint64_t sub_18BBC0B10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  *&v0[OBJC_IVAR___SFOnDeviceSummarization__summary] = xmmword_18BC53B90;

  v0[OBJC_IVAR___SFOnDeviceSummarization__isSafe] = 1;
  sub_18BC1E3F8();
  v4 = sub_18B9A90DC(16000);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = MEMORY[0x18CFFC110](v4, v6, v8, v10);
  v13 = v12;

  v14 = sub_18BC20F48();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v11;
  v15[5] = v13;
  v15[6] = v0;
  v16 = v0;
  sub_18B97E1A4(0, 0, v3, &unk_18BC53BB0, v15);
}

uint64_t sub_18BBC0CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB610);
  v6[7] = swift_task_alloc();
  v7 = sub_18BC1EC08();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB618);
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB620);
  v6[14] = swift_task_alloc();
  v9 = sub_18BC1F2E8();
  v6[15] = v9;
  v6[16] = *(v9 - 8);
  v6[17] = swift_task_alloc();
  v10 = sub_18BC1F308();
  v6[18] = v10;
  v6[19] = *(v10 - 8);
  v6[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18BBC0F08, 0, 0);
}

uint64_t sub_18BBC0F08()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  sub_18BC1F358();
  swift_allocObject();
  v0[21] = sub_18BC1F348();
  (*(v2 + 104))(v1, *MEMORY[0x1E69C9A78], v3);
  v5 = sub_18BC1F2D8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_18BC1F2F8();
  if (qword_1EA9D22B8 != -1)
  {
    swift_once();
  }

  v6 = sub_18BC1F2C8();
  v0[22] = __swift_project_value_buffer(v6, qword_1EA9F7EE0);
  v7 = sub_18BC1F2A8();
  v8 = sub_18BC21258();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_18B7AC000, v7, v8, "Safari did request summary", v9, 2u);
    MEMORY[0x18CFFEEE0](v9, -1, -1);
  }

  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];

  sub_18BC1DE28();
  v13 = sub_18BC1EBA8();
  v15 = v14;
  v0[23] = v14;
  (*(v11 + 8))(v10, v12);
  v16 = swift_task_alloc();
  v0[24] = v16;
  *v16 = v0;
  v16[1] = sub_18BBC1168;
  v17 = v0[20];
  v18 = v0[13];
  v19 = v0[4];
  v20 = v0[5];

  return MEMORY[0x1EEE33608](v18, v19, v20, v17, v13, v15);
}

uint64_t sub_18BBC1168()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_18BBC152C;
  }

  else
  {
    v2 = sub_18BBC1298;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18BBC1298()
{
  v1 = v0[7];
  sub_18BC1F318();
  v2 = sub_18BC1F378();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[7];
  if (v4 == 1)
  {
    sub_18B988BAC(v0[7], &qword_1EA9DB610);
    v6 = 1;
  }

  else
  {
    v6 = sub_18BC1F368();
    (*(v3 + 8))(v5, v2);
  }

  v7 = v0[11];
  v8 = v0[6];
  *(v8 + OBJC_IVAR___SFOnDeviceSummarization__isSafe) = v6 & 1;
  MEMORY[0x18CFFA820](v7);
  v9 = v0[3];
  v10 = (v8 + OBJC_IVAR___SFOnDeviceSummarization__summary);
  *v10 = v0[2];
  v10[1] = v9;

  v11 = sub_18BC1F2A8();
  v12 = sub_18BC21258();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_18B7AC000, v11, v12, "Safari did receive summary", v13, 2u);
    MEMORY[0x18CFFEEE0](v13, -1, -1);
  }

  v14 = v0[6];

  v15 = [v14 delegate];
  if (v15)
  {
    [v15 didFinishSummarization_];
    swift_unknownObjectRelease();
  }

  v16 = v0[20];
  v17 = v0[18];
  v18 = v0[19];
  v20 = v0[12];
  v19 = v0[13];
  v21 = v0[11];

  (*(v20 + 8))(v19, v21);
  (*(v18 + 8))(v16, v17);

  v22 = v0[1];

  return v22();
}

uint64_t sub_18BBC152C()
{
  v1 = v0[25];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];

  (*(v3 + 8))(v2, v4);
  v5 = v1;
  v6 = sub_18BC1F2A8();
  v7 = sub_18BC21238();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[25];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_18B7AC000, v6, v7, "Safari did receive error for summary: %@", v9, 0xCu);
    sub_18B988BAC(v10, &qword_1EA9DA790);
    MEMORY[0x18CFFEEE0](v10, -1, -1);
    MEMORY[0x18CFFEEE0](v9, -1, -1);
  }

  v13 = v0[6];

  v14 = [v13 delegate];
  v15 = v0[25];
  if (v14)
  {
    [v14 didEncounterErrorForSummarization_];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t _sSo23SFOnDeviceSummarizationC12MobileSafariE02isC10Availabile15forLanguageCodeSbSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_18BC1EF88();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v45 - v7;
  v8 = sub_18BC1EFC8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18BC1EFA8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_18BC1EFE8();
  v48 = *(v16 - 8);
  v49 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v47 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v19 = result;
    v20 = [result isSafariSummaryAllowed];

    if (v20)
    {
      v55 = a1;
      v56 = a2;
      v53 = 45;
      v54 = 0xE100000000000000;
      sub_18B7B0B50();
      if (*(sub_18BC21878() + 16))
      {
        sub_18BC1E3F8();
      }

      else
      {

        sub_18BC1E3F8();
      }

      sub_18BC1EC18();
      (*(v9 + 104))(v11, *MEMORY[0x1E69A12B0], v8);
      sub_18BC1EF98();
      v25 = v47;
      sub_18BC1EFD8();
      (*(v13 + 8))(v15, v12);
      v26 = v50;
      sub_18BC1EFB8();
      v28 = v51;
      v27 = v52;
      v29 = v46;
      (*(v51 + 16))(v46, v26, v52);
      v30 = (*(v28 + 88))(v29, v27);
      if (v30 == *MEMORY[0x1E69A0EF8])
      {
        v31 = *(v28 + 8);
        v31(v29, v27);
        if (qword_1EA9D22B8 != -1)
        {
          swift_once();
        }

        v32 = sub_18BC1F2C8();
        __swift_project_value_buffer(v32, qword_1EA9F7EE0);
        v33 = sub_18BC1F2A8();
        v34 = sub_18BC21258();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_18B7AC000, v33, v34, "Safari summarization restricted", v35, 2u);
          MEMORY[0x18CFFEEE0](v35, -1, -1);
        }

        byte_1EA9DB5E8 = 1;
        v31(v26, v27);
LABEL_17:
        (*(v48 + 8))(v25, v49);
        return 1;
      }

      if (v30 == *MEMORY[0x1E69A0F00])
      {
        if (qword_1EA9D22B8 != -1)
        {
          swift_once();
        }

        v36 = sub_18BC1F2C8();
        __swift_project_value_buffer(v36, qword_1EA9F7EE0);
        v37 = sub_18BC1F2A8();
        v38 = sub_18BC21258();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_18B7AC000, v37, v38, "Safari summarization unavailable", v39, 2u);
          MEMORY[0x18CFFEEE0](v39, -1, -1);
        }
      }

      else if (v30 == *MEMORY[0x1E69A11A0])
      {
        if (qword_1EA9D22B8 != -1)
        {
          swift_once();
        }

        v40 = sub_18BC1F2C8();
        __swift_project_value_buffer(v40, qword_1EA9F7EE0);
        v41 = sub_18BC1F2A8();
        v42 = sub_18BC21258();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_18B7AC000, v41, v42, "Safari summarization available", v43, 2u);
          MEMORY[0x18CFFEEE0](v43, -1, -1);
        }

        byte_1EA9DB5E8 = 0;
        (*(v28 + 8))(v26, v27);
        goto LABEL_17;
      }

      byte_1EA9DB5E8 = 0;
      v44 = *(v28 + 8);
      v44(v26, v27);
      (*(v48 + 8))(v25, v49);
      v44(v29, v27);
    }

    else
    {
      if (qword_1EA9D22B8 != -1)
      {
        swift_once();
      }

      v21 = sub_18BC1F2C8();
      __swift_project_value_buffer(v21, qword_1EA9F7EE0);
      v22 = sub_18BC1F2A8();
      v23 = sub_18BC21258();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_18B7AC000, v22, v23, "Safari summarization restricted via Device Management.", v24, 2u);
        MEMORY[0x18CFFEEE0](v24, -1, -1);
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t type metadata accessor for SFOnDeviceSummarization()
{
  result = qword_1EA9DB608;
  if (!qword_1EA9DB608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9DB608);
  }

  return result;
}

uint64_t sub_18BBC1FDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_18B987B10;

  return sub_18BBC0CB4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_18BBC20D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB630);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23[-v9];
  v25 = sub_18BC204A8();
  LOBYTE(v26) = 1;
  sub_18BBC243C(a1, &v36);
  v30 = *&v37[16];
  v31 = *&v37[32];
  v28 = v36;
  v29 = *v37;
  v33[2] = *&v37[16];
  v33[3] = *&v37[32];
  v33[4] = *&v37[48];
  v33[1] = *v37;
  v32 = *&v37[48];
  v33[0] = v36;
  sub_18B7CA054(&v28, &v34, &qword_1EA9DB638);
  sub_18B988BAC(v33, &qword_1EA9DB638);
  *&v27[23] = v29;
  *&v27[39] = v30;
  *&v27[55] = v31;
  *&v27[71] = v32;
  *&v27[7] = v28;
  v11 = v26;
  v24 = v26;
  v36 = *(a1 + 40);
  *v37 = *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB640);
  sub_18BC207B8();
  v36 = v34;
  *v37 = *&v35[0];
  v34 = *a1;
  v26 = *(a1 + 16);
  sub_18BB37FA0();
  sub_18BC20768();
  v12 = *(v5 + 16);
  v12(v7, v10, v4);
  v13 = v25;
  v34 = v25;
  LOBYTE(v35[0]) = v11;
  *(v35 + 1) = *v27;
  *(&v35[1] + 1) = *&v27[16];
  *(&v35[4] + 1) = *&v27[64];
  *(&v35[3] + 1) = *&v27[48];
  *(&v35[2] + 1) = *&v27[32];
  v14 = *&v27[79];
  *&v35[5] = *&v27[79];
  v15 = v35[0];
  *a2 = v25;
  *(a2 + 16) = v15;
  v16 = v35[1];
  v17 = v35[2];
  v18 = v35[3];
  v19 = v35[4];
  *(a2 + 96) = v14;
  *(a2 + 64) = v18;
  *(a2 + 80) = v19;
  *(a2 + 32) = v16;
  *(a2 + 48) = v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB648);
  v12((a2 + *(v20 + 48)), v7, v4);
  sub_18B7CA054(&v34, &v36, &qword_1EA9DB650);
  v21 = *(v5 + 8);
  v21(v10, v4);
  v21(v7, v4);
  *&v37[33] = *&v27[32];
  *&v37[49] = *&v27[48];
  *v38 = *&v27[64];
  *&v37[1] = *v27;
  v36 = v13;
  v37[0] = v24;
  *&v38[15] = *&v27[79];
  *&v37[17] = *&v27[16];
  return sub_18B988BAC(&v36, &qword_1EA9DB650);
}

uint64_t sub_18BBC243C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18BC1E988();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8AF0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v13 = *(a1 + 32);
  *&v35 = *(a1 + 24);
  *(&v35 + 1) = v13;
  sub_18B7B0B50();
  sub_18BC1E3F8();
  v14 = sub_18BC20668();
  v16 = v15;
  v28 = v17;
  v29 = v18;
  v35 = *(a1 + 40);
  v36 = *(a1 + 56);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB640);
  MEMORY[0x18CFFBC80](&v34, v19);
  sub_18BC1EC28();
  sub_18BABC974();
  sub_18BC1E918();
  sub_18BC1E968();
  MEMORY[0x18CFF9E30](v6, v8);
  (*(v30 + 8))(v6, v31);
  (*(v9 + 8))(v11, v8);
  sub_18B7B0B08(&qword_1EA9D8AF8, &qword_1EA9D8AF0);
  v20 = sub_18BC20648();
  v22 = v21;
  v23 = v28 & 1;
  LOBYTE(v35) = v28 & 1;
  LOBYTE(v34) = v28 & 1;
  v33 = 1;
  LOBYTE(v8) = v24 & 1;
  v32 = v24 & 1;
  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v23;
  *(a2 + 24) = v29;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v20;
  *(a2 + 56) = v21;
  *(a2 + 64) = v24 & 1;
  *(a2 + 72) = v25;
  sub_18BBC2830(v14, v16, v23);
  sub_18BC1E3F8();
  sub_18BBC2830(v20, v22, v8);
  sub_18BC1E3F8();
  sub_18BBBA524(v20, v22, v8);

  sub_18BBBA524(v14, v16, v35);
}

uint64_t sub_18BBC27C4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  v4 = v1[3];
  v7[2] = v1[2];
  v7[3] = v4;
  *a1 = sub_18BC20528();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB628);
  return sub_18BBC20D0(v7, a1 + *(v5 + 44));
}

uint64_t sub_18BBC2830(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_18BC1E1A8();
  }

  else
  {
    return sub_18BC1E3F8();
  }
}

BOOL sub_18BBC2840(uint64_t *a1)
{
  v3 = sub_18BC1EC08();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92B0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  if ((sub_18B98DCA0(*v1, *a1) & 1) == 0)
  {
    return 1;
  }

  v21 = v6;
  v13 = *(_s7ContentVMa_1() + 20);
  v14 = *(v10 + 48);
  sub_18B7CA054(v1 + v13, v12, &unk_1EA9D3AE0);
  sub_18B7CA054(a1 + v13, &v12[v14], &unk_1EA9D3AE0);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      sub_18B988BAC(v12, &unk_1EA9D3AE0);
      return 0;
    }

    goto LABEL_7;
  }

  sub_18B7CA054(v12, v9, &unk_1EA9D3AE0);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    (*(v4 + 8))(v9, v3);
LABEL_7:
    sub_18B988BAC(v12, &unk_1EA9D92B0);
    return 1;
  }

  v17 = v21;
  (*(v4 + 32))(v21, &v12[v14], v3);
  sub_18B82BA44(&qword_1EA9D9FE0, MEMORY[0x1E69695A8]);
  v18 = sub_18BC20AE8();
  v19 = *(v4 + 8);
  v19(v17, v3);
  v19(v9, v3);
  sub_18B988BAC(v12, &unk_1EA9D3AE0);
  return (v18 & 1) == 0;
}

uint64_t sub_18BBC2BC0(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = a3 + 32; ; i += 144)
  {
    v8 = a1(i);
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_18BBC2C44(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v10 = *(a3 + 16);
  if (!v10)
  {
    return 0;
  }

  v4 = 0;
  for (i = (a3 + 56); ; i += 4)
  {
    v6 = *(i - 1);
    v7 = *i;
    v11 = *(i - 3);
    v12 = v6;
    v13 = v7;
    swift_unknownObjectRetain();
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    v8 = v14(&v11);

    swift_unknownObjectRelease();
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v10 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_18BBC2D64(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_18BBC2E54(uint64_t a1)
{
  v2 = v1;
  v3 = sub_18B7C2E68(a1);
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 bounds];
  v125.origin.x = v12;
  v125.origin.y = v13;
  v125.size.width = v14;
  v125.size.height = v15;
  v120.origin.x = v5;
  v120.origin.y = v7;
  v120.size.width = v9;
  v120.size.height = v11;
  v16 = CGRectEqualToRect(v120, v125);
  v17 = MEMORY[0x1E69E7D40];
  if (!v16)
  {
    v18 = *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x80));
    [v2 bounds];
    [v18 setFrame_];
  }

  v19 = *((*v17 & *v2) + 0x80);
  v20 = *(v2 + v19);
  [v20 adjustedContentInset];
  v115 = v22;
  v117 = v21;
  v111 = v24;
  v113 = v23;
  [v20 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_18B7E0E4C();
  v107 = v34;
  v109 = v33;
  v103 = v36;
  v105 = v35;
  [v20 contentSize];
  v99 = v38;
  v101 = v37;
  [v20 frame];
  v95 = v40;
  v97 = v39;
  v91 = v42;
  v93 = v41;
  v43 = [v20 isTracking];

  v44 = sub_18BA474C4();
  v45 = v44 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState;
  v46 = *(v44 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 32);
  v47 = *(v44 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 40);
  v48 = *(v44 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 48);
  v49 = *(v44 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 56);
  *v45 = v117;
  *(v45 + 8) = v115;
  *(v45 + 16) = v113;
  *(v45 + 24) = v111;
  *(v45 + 32) = v26;
  *(v45 + 40) = v28;
  *(v45 + 48) = v30;
  *(v45 + 56) = v32;
  *(v45 + 64) = v109;
  *(v45 + 72) = v107;
  *(v45 + 80) = v105;
  *(v45 + 88) = v103;
  *(v45 + 96) = v101;
  *(v45 + 104) = v99;
  *(v45 + 112) = v97;
  *(v45 + 120) = v95;
  *(v45 + 128) = v93;
  *(v45 + 136) = v91;
  *(v45 + 144) = v43;
  v121.origin.x = v26;
  v121.origin.y = v28;
  v121.size.width = v30;
  v121.size.height = v32;
  Width = CGRectGetWidth(v121);
  v122.origin.x = v46;
  v122.origin.y = v47;
  v122.size.width = v48;
  v122.size.height = v49;
  if (Width != CGRectGetWidth(v122))
  {
    sub_18BAD4A48();
  }

  v51 = *((*v17 & *v2) + 0x68);
  swift_beginAccess();
  *(v2 + v51) = v44;

  v52 = sub_18BA474C4();
  v53 = *(v52 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_contentSize);
  v54 = *(v52 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_contentSize + 8);

  [*(v2 + v19) contentSize];
  if (v56 != v53 || v55 != v54)
  {
    [*(v2 + v19) setContentSize_];
  }

  v57 = *(v2 + v19);
  [v57 adjustedContentInset];
  v116 = v59;
  v118 = v58;
  v112 = v61;
  v114 = v60;
  [v57 bounds];
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  sub_18B7E0E4C();
  v108 = v71;
  v110 = v70;
  v104 = v73;
  v106 = v72;
  [v57 contentSize];
  v100 = v75;
  v102 = v74;
  [v57 frame];
  v96 = v77;
  v98 = v76;
  v92 = v79;
  v94 = v78;
  v80 = [v57 isTracking];

  v81 = sub_18BA474C4();
  v82 = v81 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState;
  v83 = *(v81 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 32);
  v84 = *(v81 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 40);
  v85 = *(v81 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 48);
  v86 = *(v81 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 56);
  *v82 = v118;
  *(v82 + 8) = v116;
  *(v82 + 16) = v114;
  *(v82 + 24) = v112;
  *(v82 + 32) = v63;
  *(v82 + 40) = v65;
  *(v82 + 48) = v67;
  *(v82 + 56) = v69;
  *(v82 + 64) = v110;
  *(v82 + 72) = v108;
  *(v82 + 80) = v106;
  *(v82 + 88) = v104;
  *(v82 + 96) = v102;
  *(v82 + 104) = v100;
  *(v82 + 112) = v98;
  *(v82 + 120) = v96;
  *(v82 + 128) = v94;
  *(v82 + 136) = v92;
  *(v82 + 144) = v80;
  v123.origin.x = v63;
  v123.origin.y = v65;
  v123.size.width = v67;
  v123.size.height = v69;
  v87 = CGRectGetWidth(v123);
  v124.origin.x = v83;
  v124.origin.y = v84;
  v124.size.width = v85;
  v124.size.height = v86;
  if (v87 != CGRectGetWidth(v124))
  {
    sub_18BAD4A48();
  }

  *(v2 + v51) = v81;

  v88 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x88);
  swift_beginAccess();
  sub_18B7CA054(v2 + v88, v119, &unk_1EA9D53A0);
  v89 = v119[0];
  result = sub_18B988BAC(v119, &unk_1EA9D53A0);
  if (v89)
  {
    sub_18BA474C4();
  }

  return result;
}

uint64_t sub_18BBC32E4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_18B7C2E68(a1);
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 bounds];
  v108.origin.x = v12;
  v108.origin.y = v13;
  v108.size.width = v14;
  v108.size.height = v15;
  v107.origin.x = v5;
  v107.origin.y = v7;
  v107.size.width = v9;
  v107.size.height = v11;
  v16 = CGRectEqualToRect(v107, v108);
  v17 = MEMORY[0x1E69E7D40];
  if (!v16)
  {
    v18 = *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x80));
    [v2 bounds];
    [v18 setFrame_];
  }

  v19 = *((*v17 & *v2) + 0x80);
  v20 = *(v2 + v19);
  [v20 adjustedContentInset];
  v102 = v22;
  v104 = v21;
  v98 = v24;
  v100 = v23;
  [v20 bounds];
  v94 = v26;
  v96 = v25;
  v90 = v28;
  v92 = v27;
  sub_18B7E0E4C();
  v86 = v30;
  v88 = v29;
  v32 = v31;
  v34 = v33;
  [v20 contentSize];
  v36 = v35;
  v38 = v37;
  [v20 frame];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = [v20 isTracking];

  v48 = sub_18B7EBEFC();
  v49 = v48 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_scrollViewState;
  *v49 = v104;
  *(v49 + 8) = v102;
  *(v49 + 16) = v100;
  *(v49 + 24) = v98;
  *(v49 + 32) = v96;
  *(v49 + 40) = v94;
  *(v49 + 48) = v92;
  *(v49 + 56) = v90;
  *(v49 + 64) = v88;
  *(v49 + 72) = v86;
  *(v49 + 80) = v32;
  *(v49 + 88) = v34;
  *(v49 + 96) = v36;
  *(v49 + 104) = v38;
  *(v49 + 112) = v40;
  *(v49 + 120) = v42;
  *(v49 + 128) = v44;
  *(v49 + 136) = v46;
  *(v49 + 144) = v47;
  v50 = *((*v17 & *v2) + 0x68);
  swift_beginAccess();
  *(v2 + v50) = v48;

  sub_18B7EBEFC();

  [*(v2 + v19) contentSize];
  if (v52 != 0.0 || v51 != 0.0)
  {
    [*(v2 + v19) setContentSize_];
  }

  v53 = *(v2 + v19);
  [v53 adjustedContentInset];
  v103 = v55;
  v105 = v54;
  v99 = v57;
  v101 = v56;
  [v53 bounds];
  v95 = v59;
  v97 = v58;
  v91 = v61;
  v93 = v60;
  sub_18B7E0E4C();
  v87 = v63;
  v89 = v62;
  v65 = v64;
  v67 = v66;
  [v53 contentSize];
  v69 = v68;
  v71 = v70;
  [v53 frame];
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v80 = [v53 isTracking];

  v81 = sub_18B7EBEFC();
  v82 = v81 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_scrollViewState;
  *v82 = v105;
  *(v82 + 8) = v103;
  *(v82 + 16) = v101;
  *(v82 + 24) = v99;
  *(v82 + 32) = v97;
  *(v82 + 40) = v95;
  *(v82 + 48) = v93;
  *(v82 + 56) = v91;
  *(v82 + 64) = v89;
  *(v82 + 72) = v87;
  *(v82 + 80) = v65;
  *(v82 + 88) = v67;
  *(v82 + 96) = v69;
  *(v82 + 104) = v71;
  *(v82 + 112) = v73;
  *(v82 + 120) = v75;
  *(v82 + 128) = v77;
  *(v82 + 136) = v79;
  *(v82 + 144) = v80;
  *(v2 + v50) = v81;

  v83 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x88);
  swift_beginAccess();
  sub_18B7CA054(v2 + v83, v106, &unk_1EA9D53A0);
  v84 = v106[0];
  result = sub_18B988BAC(v106, &unk_1EA9D53A0);
  if (v84)
  {
    sub_18B7EBEFC();
  }

  return result;
}

uint64_t sub_18BBC36E0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = _s7ContentVMa_1();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v56 - v12);
  v14 = MEMORY[0x1E69E7D40];
  v15 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x90);
  swift_beginAccess();
  sub_18BBCF730(v4 + v15, v13, _s7ContentVMa_1);
  sub_18BBCF730(a1, v10, _s7ContentVMa_1);
  swift_beginAccess();
  sub_18BBCF208(v10, v4 + v15, _s7ContentVMa_1);
  swift_endAccess();
  if (sub_18BBC2840(v13) || *a2)
  {
    sub_18BBCF730(v4 + v15, v10, _s7ContentVMa_1);
    sub_18BBC3E9C(v10, a2, a3, 0);
    sub_18B81D138(v10, _s7ContentVMa_1);
  }

  else
  {
    (*((*v14 & *v4) + 0x1C0))(&v71, a1);
    v17 = v71;
    v18 = *((*v14 & *v4) + 0x68);
    swift_beginAccess();
    *(v4 + v18) = v17;

    v20 = sub_18B7C2E68(v19);
    [v20 adjustedContentInset];
    v69 = v22;
    v70 = v21;
    v67 = v24;
    v68 = v23;
    [v20 bounds];
    v65 = v26;
    v66 = v25;
    v64 = v27;
    v63 = v28;
    sub_18B7E0E4C();
    v62 = v29;
    v61 = v30;
    v60 = v31;
    v59 = v32;
    [v20 contentSize];
    v58 = v33;
    v57 = v34;
    [v20 frame];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = [v20 isTracking];

    v44 = sub_18BA474C4();
    v45 = v44 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState;
    v46 = *(v44 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 32);
    v47 = *(v44 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 40);
    v48 = *(v44 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 48);
    v49 = *(v44 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 56);
    v50 = v69;
    *v45 = v70;
    *(v45 + 8) = v50;
    v51 = v67;
    *(v45 + 16) = v68;
    *(v45 + 24) = v51;
    v72.origin.y = v65;
    v72.origin.x = v66;
    *(v45 + 32) = v66;
    *(v45 + 40) = v72.origin.y;
    v72.size.width = v64;
    v72.size.height = v63;
    *(v45 + 48) = v64;
    *(v45 + 56) = v72.size.height;
    v52 = v61;
    *(v45 + 64) = v62;
    *(v45 + 72) = v52;
    v53 = v59;
    *(v45 + 80) = v60;
    *(v45 + 88) = v53;
    v54 = v57;
    *(v45 + 96) = v58;
    *(v45 + 104) = v54;
    *(v45 + 112) = v36;
    *(v45 + 120) = v38;
    *(v45 + 128) = v40;
    *(v45 + 136) = v42;
    *(v45 + 144) = v43;
    Width = CGRectGetWidth(v72);
    v73.origin.x = v46;
    v73.origin.y = v47;
    v73.size.width = v48;
    v73.size.height = v49;
    if (Width != CGRectGetWidth(v73))
    {
      sub_18BAD4A48();
    }

    *(v4 + v18) = v44;

    [v4 setNeedsLayout];
  }

  return sub_18B81D138(v13, _s7ContentVMa_1);
}

uint64_t sub_18BBC3AF0(uint64_t *a1, void *a2, uint64_t a3)
{
  v7 = _s7ContentVMa_4();
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v55 - v11);
  v13 = MEMORY[0x1E69E7D40];
  v14 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x90);
  swift_beginAccess();
  sub_18BBCF730(v3 + v14, v12, _s7ContentVMa_4);
  sub_18BBCF730(a1, v10, _s7ContentVMa_4);
  swift_beginAccess();
  sub_18BBCF208(v10, v3 + v14, _s7ContentVMa_4);
  swift_endAccess();
  if (sub_18B9A8D94(a1, v12) && !*a2)
  {
    v16 = v3;
    (*((*v13 & *v3) + 0x1C0))(&v66, a1);
    v17 = v66;
    v18 = *((*v13 & *v16) + 0x68);
    swift_beginAccess();
    *(v16 + v18) = v17;

    v20 = sub_18B7C2E68(v19);
    [v20 adjustedContentInset];
    v64 = v22;
    v65 = v21;
    v62 = v24;
    v63 = v23;
    [v20 bounds];
    v60 = v26;
    v61 = v25;
    v59 = v27;
    v58 = v28;
    sub_18B7E0E4C();
    v57 = v29;
    v56 = v30;
    v32 = v31;
    v34 = v33;
    [v20 contentSize];
    v36 = v35;
    v38 = v37;
    [v20 frame];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v47 = [v20 isTracking];

    v48 = sub_18B7EBEFC();
    v49 = v48 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_scrollViewState;
    v50 = v64;
    *v49 = v65;
    *(v49 + 8) = v50;
    v51 = v62;
    *(v49 + 16) = v63;
    *(v49 + 24) = v51;
    v52 = v60;
    *(v49 + 32) = v61;
    *(v49 + 40) = v52;
    v53 = v58;
    *(v49 + 48) = v59;
    *(v49 + 56) = v53;
    v54 = v56;
    *(v49 + 64) = v57;
    *(v49 + 72) = v54;
    *(v49 + 80) = v32;
    *(v49 + 88) = v34;
    *(v49 + 96) = v36;
    *(v49 + 104) = v38;
    *(v49 + 112) = v40;
    *(v49 + 120) = v42;
    *(v49 + 128) = v44;
    *(v49 + 136) = v46;
    *(v49 + 144) = v47;
    *(v16 + v18) = v48;

    [v16 setNeedsLayout];
  }

  else
  {
    sub_18BBCF730(v3 + v14, v10, _s7ContentVMa_4);
    sub_18B8177EC(v10, a2, a3, 0);
    sub_18B81D138(v10, _s7ContentVMa_4);
  }

  return sub_18B81D138(v12, _s7ContentVMa_4);
}

uint64_t sub_18BBC3E9C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v105 = a4;
  v9 = _s7ContentVMa_1();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18B7C2E68(v12);
  [v13 bounds];
  v15 = v14;
  v17 = v16;

  v18 = MEMORY[0x1E69E7D40];
  if (v15 == 0.0 && v17 == 0.0)
  {
    (*((*MEMORY[0x1E69E7D40] & *v5) + 0x290))();
  }

  v19 = sub_18BA474C4();
  v117 = v19;
  v20 = *((*v18 & *v5) + 0x1C0);
  v90 = a1;
  v21 = v20(&v116, a1);
  v22 = v18;
  v23 = v116;
  v24 = *(v116 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_contentSize);
  v25 = *(v116 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_contentSize + 8);
  v26 = sub_18B7C2E68(v21);
  [v26 contentSize];
  v28 = v27;
  v30 = v29;

  if (v28 <= v24)
  {
    v28 = v24;
  }

  if (v30 <= v25)
  {
    v30 = v25;
  }

  v31 = *((*v22 & *v5) + 0x80);
  v32 = [*(v5 + v31) contentSize];
  if (v34 != v28 || v33 != v30)
  {
    v32 = [*(v5 + v31) setContentSize_];
  }

  v36 = sub_18B7C2E68(v32);
  [v36 adjustedContentInset];
  v104 = v37;
  v103 = v38;
  v102 = v39;
  v101 = v40;
  [v36 bounds];
  v100 = v41;
  v99 = v42;
  v98 = v43;
  v97 = v44;
  sub_18B7E0E4C();
  v96 = v45;
  v95 = v46;
  v94 = v47;
  v93 = v48;
  [v36 contentSize];
  v92 = v49;
  v91 = v50;
  [v36 frame];
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = [v36 isTracking];

  v60 = v23 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState;
  v61 = *(v23 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 32);
  v62 = *(v23 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 40);
  v63 = *(v23 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 48);
  v64 = *(v23 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 56);
  v65 = v103;
  *v60 = v104;
  *(v60 + 8) = v65;
  v66 = v101;
  *(v60 + 16) = v102;
  *(v60 + 24) = v66;
  v118.origin.x = v100;
  v118.origin.y = v99;
  *(v60 + 32) = v100;
  *(v60 + 40) = v118.origin.y;
  v118.size.width = v98;
  v118.size.height = v97;
  *(v60 + 48) = v98;
  *(v60 + 56) = v118.size.height;
  v67 = v95;
  *(v60 + 64) = v96;
  *(v60 + 72) = v67;
  v68 = v93;
  *(v60 + 80) = v94;
  *(v60 + 88) = v68;
  v69 = v91;
  *(v60 + 96) = v92;
  *(v60 + 104) = v69;
  *(v60 + 112) = v52;
  *(v60 + 120) = v54;
  *(v60 + 128) = v56;
  *(v60 + 136) = v58;
  *(v60 + 144) = v59;
  Width = CGRectGetWidth(v118);
  v119.origin.x = v61;
  v119.origin.y = v62;
  v119.size.width = v63;
  v119.size.height = v64;
  if (Width != CGRectGetWidth(v119))
  {
    sub_18BAD4A48();
  }

  sub_18B7CA054(a2, &v108, &unk_1EA9D53A0);
  if (v108)
  {
    v112 = v108;
    v113 = v109;
    v114 = v110;
    v115 = v111;
  }

  else
  {
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
  }

  sub_18B7CA054(&v112, &v108, &unk_1EA9D53A0);
  if (v108)
  {
    sub_18B988BAC(&v108, &unk_1EA9D53A0);
  }

  v71 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0x228))(&v117, &v116, &v112, a3);
  v72 = *((*v71 & *v5) + 0x68);
  swift_beginAccess();
  *(v5 + v72) = v23;
  sub_18BC1E1A8();

  if (v105)
  {
    v73 = *(v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0x70));
    sub_18BBCF730(v19 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content, v11, _s7ContentVMa_1);
    sub_18BC1E1A8();
    v73(v11, v90, a3);

    sub_18B81D138(v11, _s7ContentVMa_1);
  }

  v74 = *(v23 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_itemTypes);
  v75 = *(v74 + 16);
  if (v75)
  {
    sub_18BC1E3F8();
    v76 = (v74 + 40);
    do
    {
      v77 = *(v76 - 1);
      v78 = *v76;
      sub_18BC1E3F8();
      sub_18BBC46C0(v77, v78, v19, v23, a3);

      v76 += 2;
      --v75;
    }

    while (v75);
  }

  [v5 setNeedsLayout];
  v79 = swift_allocObject();
  *(v79 + 16) = v5;
  sub_18B7CA054(a3, &v106, &unk_1EA9D5060);
  if (v107)
  {
    sub_18B7C3FA4(&v106, &v108);
    v80 = *__swift_project_boxed_opaque_existential_1Tm(&v108, *(&v109 + 1));
    v81 = swift_allocObject();
    *(v81 + 16) = sub_18B848F4C;
    *(v81 + 24) = v79;
    swift_beginAccess();
    v82 = *(v80 + 24);
    v83 = v5;
    sub_18BC1E1A8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v80 + 24) = v82;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v82 = sub_18B9B5814(0, v82[2] + 1, 1, v82);
      *(v80 + 24) = v82;
    }

    v86 = v82[2];
    v85 = v82[3];
    if (v86 >= v85 >> 1)
    {
      v82 = sub_18B9B5814((v85 > 1), v86 + 1, 1, v82);
    }

    v82[2] = v86 + 1;
    v87 = &v82[2 * v86];
    v87[4] = sub_18B9D53B0;
    v87[5] = v81;
    *(v80 + 24) = v82;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(&v108);
  }

  else
  {
    v88 = v5;
    sub_18B988BAC(&v106, &unk_1EA9D5060);
    [v88 layoutIfNeeded];
  }

  (*((*MEMORY[0x1E69E7D40] & *v5) + 0x1D0))(&v117, &v116, &v112, a3);

  sub_18B988BAC(&v112, &unk_1EA9D53A0);
}

uint64_t sub_18BBC46C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v116 = a5;
  v114 = a4;
  v120 = a1;
  v121 = a2;
  v117 = sub_18BC1ED38();
  v119 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v109 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v107 = &v103 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v104 = &v103 - v13;
  v106 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v118 = &v103 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB6C8);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v103 - v22;
  v115 = a3;
  v24 = *(a3 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content);
  aBlock[0] = *(a4 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content);
  v108 = v24;
  *&v122 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB6D0);
  sub_18B7B0B08(&qword_1EA9DB6D8, &qword_1EA9DB6D0);
  sub_18B82BA44(&qword_1EA9DB6E0, _s4ItemVMa_1);
  sub_18BC20AA8();
  sub_18B82BA44(&qword_1EA9D8BF8, _s4ItemVMa_1);
  sub_18BC21DF8();
  v25 = *(v18 + 8);
  v111 = v18 + 8;
  v110 = v25;
  v25(v20, v17);
  (*(v18 + 16))(v20, v23, v17);
  v26 = (*(v18 + 80) + 40) & ~*(v18 + 80);
  v27 = swift_allocObject();
  v28 = v120;
  v29 = v121;
  *(v27 + 2) = v6;
  *(v27 + 3) = v28;
  *(v27 + 4) = v29;
  v30 = *(v18 + 32);
  v112 = v17;
  v30(&v27[v26], v20, v17);
  *&v27[(v19 + v26 + 7) & 0xFFFFFFFFFFFFFFF8] = v114;
  v113 = objc_opt_self();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_18BBCE9F8;
  *(v31 + 24) = v27;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_18B9D53AC;
  *(v32 + 24) = v31;
  v126 = sub_18B9D53B0;
  v127 = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B7E3BF4;
  v125 = &block_descriptor_138;
  v33 = _Block_copy(aBlock);
  v34 = v6;
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v113 performWithoutAnimation_];
  _Block_release(v33);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_22:
    v6 = sub_18B9B5814(0, v6[2] + 1, 1, v6);
    *(isEscapingClosureAtFileLocation + 24) = v6;
    goto LABEL_4;
  }

  v113 = v34;
  v36 = v118;
  v105 = v23;
  sub_18BBC88B8(v118);
  sub_18B7CA054(v116, aBlock, &unk_1EA9D5060);
  if (!v125)
  {
    sub_18B988BAC(aBlock, &unk_1EA9D5060);
    v53 = v119;
    v54 = *(v119 + 16);
    v55 = v106 + 7;
    v52 = v117;
    goto LABEL_8;
  }

  v37 = __swift_project_boxed_opaque_existential_1Tm(aBlock, v125);
  v38 = v119;
  v39 = v104;
  v40 = v117;
  v103 = *(v119 + 16);
  v103(v104, v36, v117);
  v41 = (*(v38 + 80) + 40) & ~*(v38 + 80);
  v106 += 7;
  v42 = (v106 + v41) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  v44 = v113;
  v45 = v120;
  v46 = v121;
  *(v43 + 2) = v113;
  *(v43 + 3) = v45;
  *(v43 + 4) = v46;
  (*(v38 + 32))(&v43[v41], v39, v40);
  *&v43[v42] = v115;
  isEscapingClosureAtFileLocation = *v37;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_18BBCEAEC;
  *(v31 + 24) = v43;
  swift_beginAccess();
  v6 = *(isEscapingClosureAtFileLocation + 24);
  v47 = v44;
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(isEscapingClosureAtFileLocation + 24) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_4:
  v50 = v6[2];
  v49 = v6[3];
  if (v50 >= v49 >> 1)
  {
    v6 = sub_18B9B5814((v49 > 1), v50 + 1, 1, v6);
  }

  v6[2] = v50 + 1;
  v51 = &v6[2 * v50];
  v51[4] = sub_18B9D53B0;
  v51[5] = v31;
  *(isEscapingClosureAtFileLocation + 24) = v6;
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  v52 = v117;
  v36 = v118;
  v53 = v119;
  v54 = v103;
  v55 = v106;
LABEL_8:
  v56 = v107;
  v54(v107, v36, v52);
  v57 = v109;
  v54(v109, v56, v52);
  v58 = (*(v53 + 80) + 24) & ~*(v53 + 80);
  v59 = (v55 + v58) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  v61 = v113;
  *(v60 + 16) = v113;
  (*(v53 + 32))(v60 + v58, v56, v52);
  v62 = v108;
  *(v60 + v59) = v108;
  v63 = (v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8));
  v65 = v120;
  v64 = v121;
  *v63 = v120;
  v63[1] = v64;
  sub_18B7CA054(v116, &v122, &unk_1EA9D5060);
  if (!v123)
  {
    v101 = v61;
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    sub_18B988BAC(&v122, &unk_1EA9D5060);
    sub_18BBC6CEC(v57, v62, v65, v64);

    v102 = *(v53 + 8);
    v102(v57, v52);
    v102(v118, v52);
    return v110(v105, v112);
  }

  v116 = v60;
  v67 = *(v53 + 8);
  v66 = v53 + 8;
  v68 = v61;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  v113 = v67;
  (v67)(v57, v52);
  sub_18B7C3FA4(&v122, aBlock);
  sub_18BAD5C84();
  v70 = v69;
  sub_18BAD5C84();
  v72 = v71;
  v73 = sub_18BC1E3F8();
  sub_18BBF18EC(v73, v70);
  v75 = v74;
  v76 = *((*MEMORY[0x1E69E7D40] & *v68) + 0x98);
  swift_beginAccess();
  v77 = *(v68 + v76);
  if (!*(v77 + 16))
  {
    goto LABEL_24;
  }

  v119 = v66;
  sub_18BC1E3F8();
  v78 = sub_18B7C4104(v65, v64);
  v79 = v116;
  if ((v80 & 1) == 0)
  {

LABEL_24:
    result = sub_18BC21CF8();
    __break(1u);
    return result;
  }

  v81 = *(*(v77 + 56) + 8 * v78);
  sub_18BC1E1A8();

  swift_beginAccess();
  sub_18BBEFF9C(v75);
  swift_endAccess();
  v82 = __swift_project_boxed_opaque_existential_1Tm(aBlock, v125);
  v83 = swift_allocObject();
  v83[2] = v81;
  v83[3] = v75;
  v83[4] = v68;
  v83[5] = v65;
  v83[6] = v64;
  v84 = *v82;
  v85 = swift_allocObject();
  *(v85 + 16) = sub_18BBCEAD4;
  *(v85 + 24) = v83;
  swift_beginAccess();
  v86 = *(v84 + 32);
  v68;
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  v87 = swift_isUniquelyReferenced_nonNull_native();
  *(v84 + 32) = v86;
  if ((v87 & 1) == 0)
  {
    v86 = sub_18B9B5814(0, v86[2] + 1, 1, v86);
    *(v84 + 32) = v86;
  }

  v89 = v86[2];
  v88 = v86[3];
  if (v89 >= v88 >> 1)
  {
    v86 = sub_18B9B5814((v88 > 1), v89 + 1, 1, v86);
  }

  v86[2] = v89 + 1;
  v90 = &v86[2 * v89];
  v90[4] = sub_18B9D53B0;
  v90[5] = v85;
  *(v84 + 32) = v86;
  swift_endAccess();

  sub_18BBE8C8C(v120, v121, v72, v115);

  v91 = *__swift_project_boxed_opaque_existential_1Tm(aBlock, v125);
  v92 = swift_allocObject();
  *(v92 + 16) = sub_18BBCEABC;
  *(v92 + 24) = v79;
  swift_beginAccess();
  v93 = *(v91 + 32);
  sub_18BC1E1A8();
  v94 = swift_isUniquelyReferenced_nonNull_native();
  *(v91 + 32) = v93;
  if ((v94 & 1) == 0)
  {
    v93 = sub_18B9B5814(0, v93[2] + 1, 1, v93);
    *(v91 + 32) = v93;
  }

  v95 = v112;
  v96 = v105;
  v98 = v93[2];
  v97 = v93[3];
  if (v98 >= v97 >> 1)
  {
    v93 = sub_18B9B5814((v97 > 1), v98 + 1, 1, v93);
  }

  v93[2] = v98 + 1;
  v99 = &v93[2 * v98];
  v99[4] = sub_18B9D53B0;
  v99[5] = v92;
  *(v91 + 32) = v93;
  swift_endAccess();

  (v113)(v118, v117);
  v110(v96, v95);
  return __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
}

uint64_t sub_18BBC53CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = _s4ItemVMa_1();
  v51 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v54 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_18BC1EDD8();
  v12 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v47 - v16;
  result = sub_18BC1ED08();
  if ((result & 1) == 0)
  {
    sub_18BBC9098(a3, &OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content, v59);
    v19 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x98);
    swift_beginAccess();
    v20 = *(v5 + v19);
    if (*(v20 + 16))
    {
      v53 = a4;
      sub_18BC1E3F8();
      v21 = sub_18B7C4104(a1, a2);
      if (v22)
      {
        v23 = *(*(v20 + 56) + 8 * v21);
        sub_18BC1E1A8();

        v24 = __swift_project_boxed_opaque_existential_1Tm(v59, v59[3]);
        v25 = MEMORY[0x1EEE9AC00](v24);
        (*(v27 + 16))(&v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        __swift_allocate_boxed_opaque_existential_0Tm(v56);
        sub_18BC20CC8();
        v50 = OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content;
        swift_beginAccess();
        v52 = v23;
        swift_beginAccess();
        v28 = (v12 + 48);
        v29 = (v12 + 32);
        v30 = (v12 + 8);
        for (i = v48; ; (*v30)(v14, i))
        {
          __swift_mutable_project_boxed_opaque_existential_1(v56, AssociatedTypeWitness);
          sub_18BC21868();
          if ((*v28)(v17, 1, i) == 1)
          {

            __swift_destroy_boxed_opaque_existential_1Tm(v56);
            return __swift_destroy_boxed_opaque_existential_1Tm(v59);
          }

          (*v29)(v14, v17, i);
          v32 = *(v53 + v50);
          v33 = sub_18BC1EDE8();
          v34 = v52;
          if ((v33 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v33 >= *(v32 + 16))
          {
            goto LABEL_19;
          }

          v35 = v32 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v33;
          v36 = v54;
          sub_18BBCF730(v35, v54, _s4ItemVMa_1);
          v37 = *(v34 + 32);
          if (*(v37 + 16))
          {
            sub_18BC1E3F8();
            v38 = sub_18BB8B5B0(v36);
            if (v39)
            {
              v40 = *(v37 + 56) + 16 * v38;
              v41 = *v40;
              v49 = *(v40 + 8);
              v42 = v41;

              v43 = sub_18BC1EDE8();
              sub_18BAD4D08(v43, 2u, v60);
              if (*(*(v34 + 80) + 16))
              {
                sub_18BC1E1A8();
                sub_18BC1E3F8();
                sub_18BB8B5B0(v36);
                v45 = v44;
              }

              else
              {
                v45 = 0;
              }

              v66[0] = v60[0];
              v66[1] = v60[1];
              v67 = (v45 | v61) & 1;
              v69 = v63;
              v70 = v64;
              v71[0] = *v65;
              *(v71 + 15) = *&v65[15];
              v68 = v62;
              ObjectType = swift_getObjectType();
              v55 = v42;
              (*(*(v49 + 8) + 8))(v66, ObjectType);
              sub_18B7F4620(v66);
              [v42 layoutIfNeeded];

              v36 = v54;
              i = v48;
            }

            else
            {
            }
          }

          sub_18B81D138(v36, _s4ItemVMa_1);
        }

        __break(1u);
LABEL_19:
        __break(1u);
      }
    }

    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

uint64_t sub_18BBC5A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = _s4ItemVMa_4();
  v50 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v53 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_18BC1EDD8();
  v12 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v46 - v16;
  result = sub_18BC1ED08();
  if ((result & 1) == 0)
  {
    sub_18BBC9098(a3, &OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, v58);
    v19 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x98);
    swift_beginAccess();
    v20 = *(v5 + v19);
    if (*(v20 + 16))
    {
      v52 = a4;
      sub_18BC1E3F8();
      v21 = sub_18B7C4104(a1, a2);
      if (v22)
      {
        v23 = *(*(v20 + 56) + 8 * v21);
        sub_18BC1E1A8();

        v24 = __swift_project_boxed_opaque_existential_1Tm(v58, v58[3]);
        MEMORY[0x1EEE9AC00](v24);
        (*(v26 + 16))(&v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        __swift_allocate_boxed_opaque_existential_0Tm(v55);
        sub_18BC20CC8();
        v49 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content;
        swift_beginAccess();
        v51 = v23;
        swift_beginAccess();
        v27 = (v12 + 48);
        v28 = (v12 + 32);
        v29 = (v12 + 8);
        for (i = v47; ; (*v29)(v14, i))
        {
          __swift_mutable_project_boxed_opaque_existential_1(v55, AssociatedTypeWitness);
          sub_18BC21868();
          if ((*v27)(v17, 1, i) == 1)
          {

            __swift_destroy_boxed_opaque_existential_1Tm(v55);
            return __swift_destroy_boxed_opaque_existential_1Tm(v58);
          }

          (*v28)(v14, v17, i);
          v31 = *(v52 + v49);
          v32 = sub_18BC1EDE8();
          v33 = v51;
          if ((v32 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v32 >= *(v31 + 16))
          {
            goto LABEL_19;
          }

          v34 = v31 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v32;
          v35 = v53;
          sub_18BBCF730(v34, v53, _s4ItemVMa_4);
          v36 = *(v33 + 32);
          if (*(v36 + 16))
          {
            sub_18BC1E3F8();
            v37 = sub_18BB8B258(v35);
            if (v38)
            {
              v39 = *(v36 + 56) + 16 * v37;
              v40 = *v39;
              v48 = *(v39 + 8);
              v41 = v40;

              v42 = sub_18BC1EDE8();
              sub_18B9F0388(v42, 2, v59);
              if (*(*(v33 + 80) + 16))
              {
                sub_18BC1E1A8();
                sub_18BC1E3F8();
                sub_18BB8B258(v35);
                v44 = v43;
              }

              else
              {
                v44 = 0;
              }

              v65[0] = v59[0];
              v65[1] = v59[1];
              v66 = (v44 | v60) & 1;
              v68 = v62;
              v69 = v63;
              v70[0] = *v64;
              *(v70 + 15) = *&v64[15];
              v67 = v61;
              ObjectType = swift_getObjectType();
              v54 = v41;
              (*(*(v48 + 8) + 8))(v65, ObjectType);
              sub_18B7F4620(v65);
              [v41 layoutIfNeeded];

              v35 = v53;
              i = v47;
            }

            else
            {
            }
          }

          sub_18B81D138(v35, _s4ItemVMa_4);
        }

        __break(1u);
LABEL_19:
        __break(1u);
      }
    }

    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

uint64_t sub_18BBC606C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = _s4ItemVMa_0();
  v52 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v54 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_18BC1EDD8();
  v12 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v47 - v16;
  result = sub_18BC1ED08();
  if ((result & 1) == 0)
  {
    sub_18B81D298(a3, v59);
    v19 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x98);
    swift_beginAccess();
    v20 = *(v5 + v19);
    if (*(v20 + 16))
    {
      v48 = a4;
      sub_18BC1E3F8();
      v21 = sub_18B7C4104(a1, a2);
      if (v22)
      {
        v23 = *(*(v20 + 56) + 8 * v21);
        sub_18BC1E1A8();

        v24 = __swift_project_boxed_opaque_existential_1Tm(v59, v59[3]);
        v25 = MEMORY[0x1EEE9AC00](v24);
        (*(v27 + 16))(&v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        __swift_allocate_boxed_opaque_existential_0Tm(v56);
        sub_18BC20CC8();
        v51 = v48 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content;
        swift_beginAccess();
        v53 = v23;
        swift_beginAccess();
        v28 = (v12 + 48);
        v29 = (v12 + 32);
        v30 = (v12 + 8);
        for (i = v49; ; (*v30)(v14, i))
        {
          __swift_mutable_project_boxed_opaque_existential_1(v56, AssociatedTypeWitness);
          sub_18BC21868();
          if ((*v28)(v17, 1, i) == 1)
          {

            __swift_destroy_boxed_opaque_existential_1Tm(v56);
            return __swift_destroy_boxed_opaque_existential_1Tm(v59);
          }

          (*v29)(v14, v17, i);
          v32 = *(v51 + 8);
          v33 = sub_18BC1EDE8();
          v34 = v53;
          if ((v33 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v33 >= *(v32 + 16))
          {
            goto LABEL_19;
          }

          v35 = v32 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v33;
          v36 = v54;
          sub_18BBCF730(v35, v54, _s4ItemVMa_0);
          v37 = *(v34 + 32);
          if (*(v37 + 16))
          {
            sub_18BC1E3F8();
            v38 = sub_18B80CA2C(v36);
            if (v39)
            {
              v40 = *(v37 + 56) + 16 * v38;
              v41 = *v40;
              v50 = *(v40 + 8);
              v42 = v41;

              v43 = sub_18BC1EDE8();
              sub_18B812F3C(v43, v60);
              if (*(*(v34 + 80) + 16))
              {
                sub_18BC1E1A8();
                sub_18BC1E3F8();
                sub_18B80CA2C(v54);
                v45 = v44;
              }

              else
              {
                v45 = 0;
              }

              i = v49;
              v66[0] = v60[0];
              v66[1] = v60[1];
              v67 = (v45 | v61) & 1;
              v69 = v63;
              v70 = v64;
              v71[0] = *v65;
              *(v71 + 15) = *&v65[15];
              v68 = v62;
              ObjectType = swift_getObjectType();
              v55 = v42;
              (*(*(v50 + 8) + 8))(v66, ObjectType);
              sub_18B7F4620(v66);
              [v42 layoutIfNeeded];

              v36 = v54;
            }

            else
            {
            }
          }

          sub_18B81D138(v36, _s4ItemVMa_0);
        }

        __break(1u);
LABEL_19:
        __break(1u);
      }
    }

    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

uint64_t sub_18BBC66B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = _s4PageVMa_0();
  v49 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v52 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_18BC1EDD8();
  v12 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v47 - v16;
  result = sub_18BC1ED08();
  if ((result & 1) == 0)
  {
    sub_18B844218(a3, v57);
    v19 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x98);
    swift_beginAccess();
    v20 = *(v5 + v19);
    if (*(v20 + 16))
    {
      v51 = a4;
      sub_18BC1E3F8();
      v21 = sub_18B7C4104(a1, a2);
      if (v22)
      {
        v23 = *(*(v20 + 56) + 8 * v21);
        sub_18BC1E1A8();

        v24 = __swift_project_boxed_opaque_existential_1Tm(v57, v57[3]);
        v25 = MEMORY[0x1EEE9AC00](v24);
        (*(v27 + 16))(&v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        __swift_allocate_boxed_opaque_existential_0Tm(v54);
        sub_18BC20CC8();
        swift_beginAccess();
        v50 = v23;
        swift_beginAccess();
        v28 = (v12 + 48);
        v29 = (v12 + 32);
        v30 = (v12 + 8);
        for (i = v47; ; (*v30)(v14, i))
        {
          __swift_mutable_project_boxed_opaque_existential_1(v54, AssociatedTypeWitness);
          sub_18BC21868();
          if ((*v28)(v17, 1, i) == 1)
          {

            __swift_destroy_boxed_opaque_existential_1Tm(v54);
            return __swift_destroy_boxed_opaque_existential_1Tm(v57);
          }

          (*v29)(v14, v17, i);
          v32 = *(v51 + 192);
          v33 = sub_18BC1EDE8();
          v34 = v50;
          if ((v33 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v33 >= *(v32 + 16))
          {
            goto LABEL_19;
          }

          v35 = v32 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v33;
          v36 = v52;
          sub_18BBCF730(v35, v52, _s4PageVMa_0);
          v37 = *(v34 + 32);
          if (*(v37 + 16))
          {
            sub_18BC1E3F8();
            v38 = sub_18B8629FC(v36);
            if (v39)
            {
              v40 = *(v37 + 56) + 16 * v38;
              v41 = *v40;
              v48 = *(v40 + 8);
              v42 = v41;

              v43 = sub_18BC1EDE8();
              sub_18B845484(v43, 2, v58);
              if (*(*(v34 + 80) + 16))
              {
                sub_18BC1E1A8();
                sub_18BC1E3F8();
                sub_18B8629FC(v36);
                v45 = v44;
              }

              else
              {
                v45 = 0;
              }

              v64[0] = v58[0];
              v64[1] = v58[1];
              v65 = (v45 | v59) & 1;
              v67 = v61;
              v68 = v62;
              v69[0] = *v63;
              *(v69 + 15) = *&v63[15];
              v66 = v60;
              ObjectType = swift_getObjectType();
              v53 = v42;
              (*(*(v48 + 8) + 8))(v64, ObjectType);
              sub_18B7F4620(v64);
              [v42 layoutIfNeeded];

              v36 = v52;
              i = v47;
            }

            else
            {
            }
          }

          sub_18B81D138(v36, _s4PageVMa_0);
        }

        __break(1u);
LABEL_19:
        __break(1u);
      }
    }

    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

uint64_t sub_18BBC6CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a2;
  v7 = _s4ItemVMa_1();
  v62 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v65 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v54 - v10;
  v55 = sub_18BC1ECC8();
  v11 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v64 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB6F8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  v16 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x98);
  swift_beginAccess();
  v54 = v4;
  v17 = *(v4 + v16);
  if (*(v17 + 16))
  {
    sub_18BC1E3F8();
    v18 = sub_18B7C4104(a3, a4);
    if (v19)
    {
      v20 = *(*(v17 + 56) + 8 * v18);
      sub_18BC1E1A8();

      sub_18BC1ECD8();
      v21 = *(v13 + 36);
      v22 = v20;
      swift_beginAccess();
      v23 = sub_18BC1ED38();
      v24 = sub_18B82BA44(&qword_1EA9DB700, MEMORY[0x1E6969B50]);
      v63 = (v11 + 8);
      v25 = v56;
      v26 = v55;
      v27 = v22;
      v60 = v21;
      v61 = v15;
      v59 = v23;
      v58 = v24;
      while (1)
      {
        v30 = v64;
        sub_18BC21158();
        sub_18B82BA44(&unk_1EA9DB708, MEMORY[0x1E6969B18]);
        v31 = sub_18BC20AE8();
        (*v63)(v30, v26);
        if (v31)
        {
          sub_18B988BAC(v15, &qword_1EA9DB6F8);
        }

        v32 = sub_18BC211C8();
        v34 = *v33;
        v32(v66, 0);
        sub_18BC21168();
        if ((v34 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v34 >= *(v25 + 16))
        {
          goto LABEL_21;
        }

        v29 = v25;
        v35 = *(v62 + 72);
        v36 = v25 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + v35 * v34;
        v28 = v57;
        sub_18BBCF730(v36, v57, _s4ItemVMa_1);
        if (!*(v22[7] + 16) || (sub_18BC1E1A8(), sub_18BC1E3F8(), sub_18BB8B5B0(v28), v38 = v37, , v22 = v27, , (v38 & 1) == 0))
        {
          v39 = v27[15];
          v40 = v27[16];
          v41 = v28;
          __swift_project_boxed_opaque_existential_1Tm(v27 + 12, v39);
          v42 = v27[2];
          sub_18BC1E1A8();
          v42(v66, v41);

          v43 = v39;
          v22 = v27;
          v28 = v41;
          v44 = sub_18B814A2C(v66, v43, v40);
          __swift_destroy_boxed_opaque_existential_1Tm(v66);
          if ((v44 & 1) == 0)
          {
            sub_18BA474C4();
            sub_18BAD5C84();
            v46 = v45;

            if (*(v46 + 16) && (sub_18BC22158(), sub_18BC1EC08(), sub_18B82BA44(&qword_1EA9D3970, MEMORY[0x1E69695A8]), sub_18BC20A78(), v47 = sub_18BC221A8(), v48 = -1 << *(v46 + 32), v49 = v47 & ~v48, ((*(v46 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) != 0))
            {
              v50 = ~v48;
              while (1)
              {
                v51 = v65;
                sub_18BBCF730(*(v46 + 48) + v49 * v35, v65, _s4ItemVMa_1);
                updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
                sub_18B81D138(v51, _s4ItemVMa_1);
                if (updated)
                {
                  break;
                }

                v49 = (v49 + 1) & v50;
                if (((*(v46 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
                {
                  goto LABEL_4;
                }
              }

              v29 = v56;
              v28 = v41;
              v26 = v55;
              v22 = v27;
            }

            else
            {
LABEL_4:

              v28 = v41;
              v22 = v27;
              sub_18BBF2FCC(v41);
              v29 = v56;
              v26 = v55;
            }
          }
        }

        v25 = v29;
        sub_18B81D138(v28, _s4ItemVMa_1);
        v15 = v61;
      }

      __break(1u);
LABEL_21:
      __break(1u);
    }
  }

  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

uint64_t sub_18BBC73D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v80 = a2;
  v89 = _s4ItemVMa_4();
  v84 = *(v89 - 8);
  v7 = MEMORY[0x1EEE9AC00](v89);
  v75 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v74 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v90 = &v74 - v12;
  v88 = sub_18BC1ECC8();
  v85 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB6F8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v74 - v15;
  v17 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x98);
  swift_beginAccess();
  v78 = v4;
  v18 = *(v4 + v17);
  if (!*(v18 + 16))
  {
    goto LABEL_50;
  }

  sub_18BC1E3F8();
  v19 = sub_18B7C4104(a3, a4);
  if ((v20 & 1) == 0)
  {
    goto LABEL_49;
  }

  v77 = v11;
  v21 = *(*(v18 + 56) + 8 * v19);
  sub_18BC1E1A8();

  sub_18BC1ECD8();
  v22 = *(v14 + 36);
  swift_beginAccess();
  v86 = sub_18BC1ED38();
  v23 = sub_18B82BA44(&qword_1EA9DB700, MEMORY[0x1E6969B50]);
  ++v85;
  v76 = xmmword_18BC3E410;
  v24 = v80;
  v25 = v90;
  v91 = v21;
  v82 = v22;
  v83 = v16;
  v81 = v23;
  while (1)
  {
    v27 = v87;
    sub_18BC21158();
    sub_18B82BA44(&unk_1EA9DB708, MEMORY[0x1E6969B18]);
    v28 = v88;
    v29 = sub_18BC20AE8();
    (*v85)(v27, v28);
    if (v29)
    {
      sub_18B988BAC(v16, &qword_1EA9DB6F8);
    }

    v30 = sub_18BC211C8();
    v32 = *v31;
    v30(v93, 0);
    sub_18BC21168();
    if ((v32 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v32 >= *(v24 + 16))
    {
      goto LABEL_42;
    }

    v26 = v24;
    v33 = (*(v84 + 80) + 32) & ~*(v84 + 80);
    v34 = *(v84 + 72);
    sub_18BBCF730(v24 + v33 + v34 * v32, v25, _s4ItemVMa_4);
    v35 = v91;
    if (!*(v91[7] + 16) || (sub_18BC1E1A8(), sub_18BC1E3F8(), sub_18BB8B258(v25), v37 = v36, , v35 = v91, , (v37 & 1) == 0))
    {
      v38 = v35[15];
      v39 = v91[16];
      __swift_project_boxed_opaque_existential_1Tm(v91 + 12, v38);
      v40 = v91[2];
      sub_18BC1E1A8();
      v40(v93, v90);

      v25 = v90;
      v41 = sub_18B814A2C(v93, v38, v39);
      __swift_destroy_boxed_opaque_existential_1Tm(v93);
      if ((v41 & 1) == 0)
      {
        v42 = sub_18B7EBEFC() + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content;
        v43 = v42 + *(_s7ContentVMa_4() + 28);
        if (*(v43 + 8))
        {

          v44 = MEMORY[0x1E69E7CD0];
          v45 = v77;
          if (!*(MEMORY[0x1E69E7CD0] + 16))
          {
            goto LABEL_4;
          }
        }

        else
        {
          v46 = *v43;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB7D0);
          v47 = swift_allocObject();
          *(v47 + 16) = v76;
          v45 = v77;
          if ((v46 & 0x8000000000000000) != 0)
          {
            goto LABEL_43;
          }

          if (v46 >= *(*v42 + 16))
          {
            goto LABEL_44;
          }

          v48 = v42;
          v49 = *v42 + v33 + v46 * v34;
          v79 = v46;
          v50 = v47;
          sub_18BBCF730(v49, v47 + v33, _s4ItemVMa_4);
          v51 = sub_18BA297C8(v50);
          swift_setDeallocating();
          sub_18B81D138(v50 + v33, _s4ItemVMa_4);
          v52 = v79;
          swift_deallocClassInstance();
          v92 = v51;
          if (v52)
          {
            v53 = *v48;
            if (v52 <= *(*v48 + 16))
            {
              sub_18B9F0388(v52 - 1, 0, v94);
              sub_18B7F4620(v94);
              if (v95)
              {
                if (v52 > *(v53 + 16))
                {
                  goto LABEL_45;
                }

                v54 = v53 + v33 + (v52 - 1) * v34;
                v55 = v75;
                sub_18BBCF730(v54, v75, _s4ItemVMa_4);
                swift_beginAccess();
                sub_18BB5E328(v45, v55);
                swift_endAccess();
                v52 = v79;
                sub_18B81D138(v45, _s4ItemVMa_4);
                v56 = v52 - 2;
                if (v52 >= 2)
                {
                  v57 = *v48;
                  if (v56 < *(*v48 + 16))
                  {
                    sub_18B9F0388(v52 - 2, 0, v96);
                    sub_18B7F4620(v96);
                    if (v97)
                    {
                      if (v56 >= *(v57 + 16))
                      {
                        goto LABEL_47;
                      }

                      v58 = v57 + v33 + v56 * v34;
                      v59 = v75;
                      sub_18BBCF730(v58, v75, _s4ItemVMa_4);
                      swift_beginAccess();
                      sub_18BB5E328(v45, v59);
                      swift_endAccess();
                      v52 = v79;
                      sub_18B81D138(v45, _s4ItemVMa_4);
                    }
                  }
                }
              }
            }
          }

          v60 = v52 + 1;
          v61 = *v48;
          if ((v52 + 1) < *(*v48 + 16))
          {
            sub_18B9F0388(v52 + 1, 0, v98);
            sub_18B7F4620(v98);
            if (v99)
            {
              if (v60 >= *(v61 + 16))
              {
                goto LABEL_46;
              }

              v62 = v61 + v33 + v60 * v34;
              v63 = v75;
              sub_18BBCF730(v62, v75, _s4ItemVMa_4);
              swift_beginAccess();
              sub_18BB5E328(v45, v63);
              swift_endAccess();
              sub_18B81D138(v45, _s4ItemVMa_4);
              v64 = v52 + 2;
              v65 = *v48;
              if ((v52 + 2) < *(*v48 + 16))
              {
                sub_18B9F0388(v64, 0, v100);
                sub_18B7F4620(v100);
                if (v101)
                {
                  if (v64 >= *(v65 + 16))
                  {
                    goto LABEL_48;
                  }

                  v66 = v65 + v33 + v64 * v34;
                  v67 = v75;
                  sub_18BBCF730(v66, v75, _s4ItemVMa_4);
                  swift_beginAccess();
                  sub_18BB5E328(v45, v67);
                  swift_endAccess();
                  sub_18B81D138(v45, _s4ItemVMa_4);
                }
              }
            }
          }

          swift_beginAccess();
          v44 = v92;

          v25 = v90;
          if (!*(v44 + 16))
          {
LABEL_4:

            sub_18BBF2D58(v25);
            v26 = v80;
            goto LABEL_5;
          }
        }

        sub_18BC22158();
        sub_18BC1EC08();
        sub_18B82BA44(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
        v25 = v90;
        sub_18BC20A78();
        v68 = sub_18BC221A8();
        v69 = -1 << *(v44 + 32);
        v70 = v68 & ~v69;
        if (((*(v44 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
        {
          goto LABEL_4;
        }

        v71 = ~v69;
        while (1)
        {
          sub_18BBCF730(*(v44 + 48) + v70 * v34, v45, _s4ItemVMa_4);
          updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
          sub_18B81D138(v45, _s4ItemVMa_4);
          if (updated)
          {
            break;
          }

          v70 = (v70 + 1) & v71;
          v25 = v90;
          if (((*(v44 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        v26 = v80;
        v25 = v90;
      }
    }

LABEL_5:
    v24 = v26;
    sub_18B81D138(v25, _s4ItemVMa_4);
    v16 = v83;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:

LABEL_50:
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

uint64_t sub_18BBC7EB4(uint64_t a1)
{
  v1 = sub_18B7C2E68(a1);
  [v1 stopScrollingAndZooming];

  v2 = sub_18B7D2DB4();
  type metadata accessor for Assertion();
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 24) = 0;
  v2[5] = v3;

  [v2[6] contentOffset];
  v5 = v4;
  v7 = v6;
  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = v5;
  v8[4] = v7;
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_18B840544;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_18B9D53AC;
  *(v11 + 24) = v10;
  v14[4] = sub_18B9D53B0;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_18B7E3BF4;
  v14[3] = &block_descriptor_185;
  v12 = _Block_copy(v14);
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v9 performWithoutAnimation_];
  _Block_release(v12);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18BBC80D8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB718);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - v4;
  v15[2] = a1;
  sub_18BC1ED28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB6C8);
  v6 = sub_18BC21DA8();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v3 + 80);
    v15[1] = v6;
    v9 = v6 + ((v8 + 32) & ~v8);
    v16 = v5 + 8;
    v10 = *(v3 + 72);
    do
    {
      sub_18B7CA054(v9, v5, &qword_1EA9DB718);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB720);
      v13 = v12;
      if (EnumCaseMultiPayload != 1 && v16[*(v12 + 64)] == 1)
      {
        sub_18BC1ECF8();
      }

      sub_18B81D138(&v5[*(v13 + 48)], _s4ItemVMa_1);
      v9 += v10;
      --v7;
    }

    while (v7);
  }
}

uint64_t sub_18BBC82D0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB7D8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - v4;
  v15[2] = a1;
  sub_18BC1ED28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB7A8);
  v6 = sub_18BC21DA8();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v3 + 80);
    v15[1] = v6;
    v9 = v6 + ((v8 + 32) & ~v8);
    v16 = v5 + 8;
    v10 = *(v3 + 72);
    do
    {
      sub_18B7CA054(v9, v5, &qword_1EA9DB7D8);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB7E0);
      v13 = v12;
      if (EnumCaseMultiPayload != 1 && v16[*(v12 + 64)] == 1)
      {
        sub_18BC1ECF8();
      }

      sub_18B81D138(&v5[*(v13 + 48)], _s4ItemVMa_4);
      v9 += v10;
      --v7;
    }

    while (v7);
  }
}

uint64_t sub_18BBC84C8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB798);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - v4;
  v15[2] = a1;
  sub_18BC1ED28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB778);
  v6 = sub_18BC21DA8();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v3 + 80);
    v15[1] = v6;
    v9 = v6 + ((v8 + 32) & ~v8);
    v16 = v5 + 8;
    v10 = *(v3 + 72);
    do
    {
      sub_18B7CA054(v9, v5, &qword_1EA9DB798);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB7A0);
      v13 = v12;
      if (EnumCaseMultiPayload != 1 && v16[*(v12 + 64)] == 1)
      {
        sub_18BC1ECF8();
      }

      sub_18B81D138(&v5[*(v13 + 48)], _s4ItemVMa_0);
      v9 += v10;
      --v7;
    }

    while (v7);
  }
}

uint64_t sub_18BBC86C0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB768);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - v4;
  v15[2] = a1;
  sub_18BC1ED28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB750);
  v6 = sub_18BC21DA8();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v3 + 80);
    v15[1] = v6;
    v9 = v6 + ((v8 + 32) & ~v8);
    v16 = v5 + 8;
    v10 = *(v3 + 72);
    do
    {
      sub_18B7CA054(v9, v5, &qword_1EA9DB768);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB770);
      v13 = v12;
      if (EnumCaseMultiPayload != 1 && v16[*(v12 + 64)] == 1)
      {
        sub_18BC1ECF8();
      }

      sub_18B81D138(&v5[*(v13 + 48)], _s4PageVMa_0);
      v9 += v10;
      --v7;
    }

    while (v7);
  }
}

uint64_t sub_18BBC88B8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB718);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - v4;
  v15[2] = a1;
  sub_18BC1ED28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB6C8);
  v6 = sub_18BC21DD8();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v3 + 80);
    v15[1] = v6;
    v9 = v6 + ((v8 + 32) & ~v8);
    v16 = v5 + 8;
    v10 = *(v3 + 72);
    do
    {
      sub_18B7CA054(v9, v5, &qword_1EA9DB718);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB720);
      v13 = v12;
      if (EnumCaseMultiPayload == 1 && v16[*(v12 + 64)] == 1)
      {
        sub_18BC1ECF8();
      }

      sub_18B81D138(&v5[*(v13 + 48)], _s4ItemVMa_1);
      v9 += v10;
      --v7;
    }

    while (v7);
  }
}

uint64_t sub_18BBC8AB0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB7D8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - v4;
  v15[2] = a1;
  sub_18BC1ED28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB7A8);
  v6 = sub_18BC21DD8();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v3 + 80);
    v15[1] = v6;
    v9 = v6 + ((v8 + 32) & ~v8);
    v16 = v5 + 8;
    v10 = *(v3 + 72);
    do
    {
      sub_18B7CA054(v9, v5, &qword_1EA9DB7D8);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB7E0);
      v13 = v12;
      if (EnumCaseMultiPayload == 1 && v16[*(v12 + 64)] == 1)
      {
        sub_18BC1ECF8();
      }

      sub_18B81D138(&v5[*(v13 + 48)], _s4ItemVMa_4);
      v9 += v10;
      --v7;
    }

    while (v7);
  }
}

uint64_t sub_18BBC8CA8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB798);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - v4;
  v15[2] = a1;
  sub_18BC1ED28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB778);
  v6 = sub_18BC21DD8();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v3 + 80);
    v15[1] = v6;
    v9 = v6 + ((v8 + 32) & ~v8);
    v16 = v5 + 8;
    v10 = *(v3 + 72);
    do
    {
      sub_18B7CA054(v9, v5, &qword_1EA9DB798);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB7A0);
      v13 = v12;
      if (EnumCaseMultiPayload == 1 && v16[*(v12 + 64)] == 1)
      {
        sub_18BC1ECF8();
      }

      sub_18B81D138(&v5[*(v13 + 48)], _s4ItemVMa_0);
      v9 += v10;
      --v7;
    }

    while (v7);
  }
}

uint64_t sub_18BBC8EA0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB768);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - v4;
  v15[2] = a1;
  sub_18BC1ED28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB750);
  v6 = sub_18BC21DD8();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v3 + 80);
    v15[1] = v6;
    v9 = v6 + ((v8 + 32) & ~v8);
    v16 = v5 + 8;
    v10 = *(v3 + 72);
    do
    {
      sub_18B7CA054(v9, v5, &qword_1EA9DB768);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB770);
      v13 = v12;
      if (EnumCaseMultiPayload == 1 && v16[*(v12 + 64)] == 1)
      {
        sub_18BC1ECF8();
      }

      sub_18B81D138(&v5[*(v13 + 48)], _s4PageVMa_0);
      v9 += v10;
      --v7;
    }

    while (v7);
  }
}

uint64_t sub_18BBC9098@<X0>(uint64_t a1@<X2>, void *a2@<X3>, void *a3@<X8>)
{
  v51 = a1;
  v47 = a3;
  v5 = sub_18BC1EDD8();
  v50 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v53 = &v46 - v11;
  v12 = sub_18BC1ED38();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v46 - v17;
  v19 = *(*(v3 + *a2) + 16);
  sub_18B82BA44(&qword_1EA9DB6E8, MEMORY[0x1E6969B50]);
  sub_18BC218F8();
  if (v19)
  {
    v20 = 0;
    do
    {
      v21 = v20 + 1;
      v54[0] = v20;
      sub_18BC218D8();
      v20 = v21;
    }

    while (v19 != v21);
  }

  v22 = *(v13 + 32);
  v22(v18, v16, v12);
  v23 = type metadata accessor for SingleElementIndexPathSequence();
  v55 = v23;
  v56 = sub_18B82BA44(&qword_1EA9DB6F0, type metadata accessor for SingleElementIndexPathSequence);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v54);
  sub_18BC1ECA8();
  v22(boxed_opaque_existential_0Tm + *(v23 + 20), v18, v12);
  v25 = __swift_project_boxed_opaque_existential_1Tm(v54, v55);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = __swift_allocate_boxed_opaque_existential_0Tm(v57);
  sub_18BBCEB04(v27, v29, type metadata accessor for SingleElementIndexPathSequence);
  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  v30 = 0;
  v31 = (v50 + 48);
  v32 = (v50 + 32);
  v33 = (v50 + 8);
  v48 = (v50 + 16);
  v34 = MEMORY[0x1E69E7CC0];
  v49 = v8;
  do
  {
    __swift_mutable_project_boxed_opaque_existential_1(v57, AssociatedTypeWitness);
    sub_18BC21868();
    v37 = v53;
    if ((*v31)(v53, 1, v5) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6AF8);
      v45 = v47;
      v47[3] = v44;
      result = sub_18B7B0B08(&qword_1EA9D6B00, &qword_1EA9D6AF8);
      v45[4] = result;
      *v45 = v34;
      return result;
    }

    v38 = *v32;
    v39 = v52;
    (*v32)(v52, v37, v5);
    if (sub_18BC1ED18())
    {
      (*v48)(v8, v39, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_18B81F634(0, v34[2] + 1, 1, v34);
      }

      v41 = v34[2];
      v40 = v34[3];
      if (v41 >= v40 >> 1)
      {
        v34 = sub_18B81F634(v40 > 1, v41 + 1, 1, v34);
      }

      v42 = v50;
      (*(v50 + 8))(v52, v5);
      v34[2] = v41 + 1;
      v43 = v34 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v41;
      v8 = v49;
      result = v38(v43, v49, v5);
    }

    else
    {
      result = (*v33)(v39, v5);
    }
  }

  while (!__OFADD__(v30++, 1));
  __break(1u);
  return result;
}

void *sub_18BBC96AC()
{
  v1 = qword_1EA9DB670;
  if (*&v0[qword_1EA9DB670])
  {
    v2 = *&v0[qword_1EA9DB670];
  }

  else
  {
    v3 = [v0 traitCollection];
    type metadata accessor for SingleLineLabelWidthCache();
    v2 = swift_allocObject();
    v4 = MEMORY[0x1E69E7CC0];
    v2[2] = sub_18BA648E0(MEMORY[0x1E69E7CC0]);
    v2[3] = 0;
    v2[4] = sub_18BA64A04(v4);
    v2[5] = v3;
    *&v0[v1] = v2;
    sub_18BC1E1A8();
  }

  sub_18BC1E1A8();
  return v2;
}

void sub_18BBC9768(uint64_t a1)
{
  sub_18BBE86B8(a1);
  swift_unknownObjectUnownedInit();
  sub_18BBCE0A4(v18, 0xD000000000000012, 0x800000018BC60710, v1);
  sub_18BBCE8E4(v18);
  v2 = *(v1 + qword_1EA9DB678);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = (v2 + OBJC_IVAR____TtC12MobileSafari21HighlightTrackingView_touchForHighlightDidChange);
  v5 = *(v2 + OBJC_IVAR____TtC12MobileSafari21HighlightTrackingView_touchForHighlightDidChange);
  *v4 = sub_18BBCE914;
  v4[1] = v3;
  sub_18BC1E1A8();
  sub_18B7E0A10(v5);

  v6 = sub_18BBC96AC();
  v7 = *(v1 + qword_1EA9F84B0 + 32);
  v8 = v6[3];
  v6[3] = v7;
  v9 = v7;

  v10 = qword_1EA9D24C8;
  sub_18BC1E1A8();
  v11 = v1;
  if (v10 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6AD0);
  sub_18BC21568();

  swift_unknownObjectRelease();

  v13 = sub_18B7C2E68(v12);
  [v13 setShowsVerticalScrollIndicator_];

  v15 = sub_18B7C2E68(v14);
  [v15 setShowsHorizontalScrollIndicator_];

  v17 = sub_18B7C2E68(v16);
  [v17 addSubview_];
}

void sub_18BBC99A0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_18BBCA2D4(a1);
  }
}

uint64_t sub_18BBC99FC(uint64_t a1)
{
  v3 = _s4ItemVMa_1();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v21 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB6B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v22 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB748);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  v15 = qword_1EA9DB688;
  swift_beginAccess();
  v16 = *(v12 + 56);
  sub_18B7CA054(v1 + v15, v14, &qword_1EA9DB6B0);
  v23 = a1;
  sub_18B7CA054(a1, &v14[v16], &qword_1EA9DB6B0);
  v17 = *(v4 + 48);
  if (v17(v14, 1, v3) == 1)
  {
    if (v17(&v14[v16], 1, v3) == 1)
    {
      return sub_18B988BAC(v14, &qword_1EA9DB6B0);
    }

    goto LABEL_6;
  }

  sub_18B7CA054(v14, v10, &qword_1EA9DB6B0);
  if (v17(&v14[v16], 1, v3) == 1)
  {
    sub_18B81D138(v10, _s4ItemVMa_1);
LABEL_6:
    sub_18B988BAC(v14, &qword_1EA9DB748);
LABEL_7:
    v14 = v22;
    sub_18B7CA054(v1 + v15, v22, &qword_1EA9DB6B0);
    sub_18BBC9D54(v23, v14);
    return sub_18B988BAC(v14, &qword_1EA9DB6B0);
  }

  v19 = v21;
  sub_18BBCEB04(&v14[v16], v21, _s4ItemVMa_1);
  updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
  sub_18B81D138(v19, _s4ItemVMa_1);
  sub_18B81D138(v10, _s4ItemVMa_1);
  result = sub_18B988BAC(v14, &qword_1EA9DB6B0);
  if ((updated & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_18BBC9D54(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB6B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &aBlock - v10;
  type metadata accessor for AnimationSettings();
  inited = swift_initStaticObject();
  sub_18B7CA054(a1, v11, &qword_1EA9DB6B0);
  sub_18B7CA054(a2, v8, &qword_1EA9DB6B0);
  v13 = *(v6 + 80);
  v14 = (v13 + 16) & ~v13;
  v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v13 + v15 + 8) & ~v13;
  v17 = swift_allocObject();
  sub_18B7CF39C(v11, v17 + v14, &qword_1EA9DB6B0);
  *(v17 + v15) = v2;
  sub_18B7CF39C(v8, v17 + v16, &qword_1EA9DB6B0);
  v18 = objc_opt_self();
  v19 = swift_allocObject();
  v19[2] = inited;
  v19[3] = sub_18BBCEBDC;
  v19[4] = v17;
  v28 = sub_18B7D80AC;
  v29 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_18B7B0DB0;
  v27 = &block_descriptor_168_0;
  v20 = _Block_copy(&aBlock);
  v21 = v2;
  sub_18BC1E1A8();

  v28 = CGRectMake;
  v29 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_18B8043A0;
  v27 = &block_descriptor_171;
  v22 = _Block_copy(&aBlock);

  [v18 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v22);
  _Block_release(v20);
}

uint64_t sub_18BBCA040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB6B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = _s4ItemVMa_1();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19 - v15;
  sub_18B7CA054(a1, v9, &qword_1EA9DB6B0);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_18B988BAC(v9, &qword_1EA9DB6B0);
  }

  else
  {
    sub_18BBCEB04(v9, v16, _s4ItemVMa_1);
    sub_18BBCB368();
    sub_18B81D138(v16, _s4ItemVMa_1);
  }

  sub_18B7CA054(v20, v6, &qword_1EA9DB6B0);
  if (v17(v6, 1, v10) == 1)
  {
    return sub_18B988BAC(v6, &qword_1EA9DB6B0);
  }

  sub_18BBCEB04(v6, v13, _s4ItemVMa_1);
  sub_18BBCB368();
  return sub_18B81D138(v13, _s4ItemVMa_1);
}

id sub_18BBCA2D4(void *a1)
{
  v2 = v1;
  v4 = _s4ItemVMa_1();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8C00);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v63 = (&v56 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB740);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v56 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB6B0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v56 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v61 = &v56 - v24;
  if (!a1)
  {
    (*(v5 + 56))(v21, 1, 1, v4, v23);
    v51 = qword_1EA9DB688;
    swift_beginAccess();
    sub_18B7CA054(v2 + v51, v18, &qword_1EA9DB6B0);
    swift_beginAccess();
    sub_18BBCEB6C(v21, v2 + v51);
    swift_endAccess();
    sub_18BBC99FC(v18);
LABEL_15:
    sub_18B988BAC(v18, &qword_1EA9DB6B0);
    return sub_18B988BAC(v21, &qword_1EA9DB6B0);
  }

  v64 = v5;
  v58 = v21;
  v59 = v4;
  v25 = a1;
  v26 = sub_18BA474C4();
  v60 = v2;
  v27 = *(*(v2 + qword_1EA9DB678) + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar14BackgroundView_contentView);
  v57 = v25;
  result = [v25 locationInView_];
  i = 0;
  v31 = v30;
  v33 = v32;
  v34 = v26 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics;
  v35 = (v8 + 56);
  v36 = (v8 + 48);
  v62 = *(v26 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content);
  v37 = *(v62 + 16);
  v38 = v65;
  v66 = v37;
  if (v37)
  {
    goto LABEL_4;
  }

LABEL_3:
  v39 = 1;
  for (i = v37; ; ++i)
  {
    (*v35)(v12, v39, 1, v7);
    sub_18B7CF39C(v12, v15, &qword_1EA9DB740);
    if ((*v36)(v15, 1, v7) == 1)
    {

      v52 = 1;
      v21 = v61;
LABEL_14:
      (*(v64 + 56))(v21, v52, 1, v59);
      v54 = qword_1EA9DB688;
      v55 = v60;
      swift_beginAccess();
      v18 = v58;
      sub_18B7CA054(v55 + v54, v58, &qword_1EA9DB6B0);
      swift_beginAccess();
      sub_18BBCEB6C(v21, v55 + v54);
      swift_endAccess();
      sub_18BBC99FC(v18);

      goto LABEL_15;
    }

    v43 = *v15;
    sub_18BBCEB04(v15 + *(v7 + 48), v38, _s4ItemVMa_1);
    sub_18BAD4E70(v43);
    v45 = v44;
    sub_18BAD554C(v43);
    v47 = v46;
    v48 = *(v34 + 40);
    UIEdgeInsetsMakeWithEdges();
    v68.origin.x = UIEdgeInsetsInsetRect(v45, 0.0, v47, v48, v49, v50);
    v67.x = v31;
    v67.y = v33;
    if (CGRectContainsPoint(v68, v67))
    {

      v53 = v38;
      v21 = v61;
      sub_18BBCEB04(v53, v61, _s4ItemVMa_1);
      v52 = 0;
      goto LABEL_14;
    }

    result = sub_18B81D138(v38, _s4ItemVMa_1);
    v37 = v66;
    if (i == v66)
    {
      goto LABEL_3;
    }

LABEL_4:
    if ((i & 0x8000000000000000) != 0)
    {
      break;
    }

    if (i >= *(v62 + 16))
    {
      goto LABEL_17;
    }

    v40 = v63;
    v41 = v62 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * i;
    v42 = *(v7 + 48);
    *v63 = i;
    sub_18BBCF730(v41, v40 + v42, _s4ItemVMa_1);
    sub_18B7CF39C(v40, v12, &qword_1EA9D8C00);
    v39 = 0;
    v38 = v65;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_18BBCA91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v68 = a1;
  v66 = sub_18BC1EC08();
  v64 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v57 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92B0);
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v56 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v59 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v56 - v10;
  v11 = _s4ItemVMa_1();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB748);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v56 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB6B0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v58 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v56 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v56 - v24;
  v67 = a2;
  sub_18BBCF730(a2, &v56 - v24, _s4ItemVMa_1);
  (*(v12 + 56))(v25, 0, 1, v11);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v27 = qword_1EA9DB688;
  swift_beginAccess();
  sub_18B7CA054(Strong + v27, v22, &qword_1EA9DB6B0);

  v28 = *(v15 + 56);
  sub_18B7CA054(v25, v17, &qword_1EA9DB6B0);
  sub_18B7CA054(v22, &v17[v28], &qword_1EA9DB6B0);
  v29 = *(v12 + 48);
  v30 = v29(v17, 1, v11);
  v65 = v11;
  if (v30 == 1)
  {
    sub_18B988BAC(v22, &qword_1EA9DB6B0);
    sub_18B988BAC(v25, &qword_1EA9DB6B0);
    v31 = v29(&v17[v28], 1, v11);
    v32 = v68;
    v33 = v64;
    v34 = v62;
    if (v31 == 1)
    {
      sub_18B988BAC(v17, &qword_1EA9DB6B0);
      updated = 1;
LABEL_7:
      v38 = v66;
      v37 = v67;
      goto LABEL_9;
    }

LABEL_6:
    sub_18B988BAC(v17, &qword_1EA9DB748);
    updated = 0;
    goto LABEL_7;
  }

  v36 = v58;
  sub_18B7CA054(v17, v58, &qword_1EA9DB6B0);
  if (v29(&v17[v28], 1, v11) == 1)
  {
    sub_18B988BAC(v22, &qword_1EA9DB6B0);
    sub_18B988BAC(v25, &qword_1EA9DB6B0);
    sub_18B81D138(v36, _s4ItemVMa_1);
    v32 = v68;
    v33 = v64;
    v34 = v62;
    goto LABEL_6;
  }

  v39 = v56;
  sub_18BBCEB04(&v17[v28], v56, _s4ItemVMa_1);
  updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
  sub_18B81D138(v39, _s4ItemVMa_1);
  sub_18B988BAC(v22, &qword_1EA9DB6B0);
  sub_18B988BAC(v25, &qword_1EA9DB6B0);
  sub_18B81D138(v36, _s4ItemVMa_1);
  sub_18B988BAC(v17, &qword_1EA9DB6B0);
  v37 = v67;
  v32 = v68;
  v38 = v66;
  v33 = v64;
  v34 = v62;
LABEL_9:
  *v32 = updated & 1;
  (*(v33 + 16))(v34, v37, v38);
  (*(v33 + 56))(v34, 0, 1, v38);
  v40 = *(_s7ContentVMa_1() + 20);
  v41 = *(v60 + 48);
  v42 = v63;
  sub_18B7CA054(v34, v63, &unk_1EA9D3AE0);
  sub_18B7CA054(v61 + v40, v42 + v41, &unk_1EA9D3AE0);
  v43 = *(v33 + 48);
  if (v43(v42, 1, v38) != 1)
  {
    v45 = v59;
    sub_18B7CA054(v42, v59, &unk_1EA9D3AE0);
    if (v43(v42 + v41, 1, v38) != 1)
    {
      v46 = v57;
      (*(v33 + 32))(v57, v42 + v41, v38);
      sub_18B82BA44(&qword_1EA9D9FE0, MEMORY[0x1E69695A8]);
      v44 = sub_18BC20AE8();
      v47 = *(v33 + 8);
      v47(v46, v38);
      sub_18B988BAC(v34, &unk_1EA9D3AE0);
      v47(v45, v38);
      sub_18B988BAC(v42, &unk_1EA9D3AE0);
      goto LABEL_16;
    }

    sub_18B988BAC(v34, &unk_1EA9D3AE0);
    (*(v33 + 8))(v45, v38);
    goto LABEL_14;
  }

  sub_18B988BAC(v34, &unk_1EA9D3AE0);
  if (v43(v42 + v41, 1, v38) != 1)
  {
LABEL_14:
    sub_18B988BAC(v42, &unk_1EA9D92B0);
    v44 = 0;
    goto LABEL_16;
  }

  sub_18B988BAC(v42, &unk_1EA9D3AE0);
  v44 = 1;
LABEL_16:
  *(v32 + 2) = v44 & 1;
  v48 = v65;
  v49 = (v37 + *(v65 + 20));
  v50 = *v49;
  v51 = v49[1];
  sub_18BC1E3F8();

  *(v32 + 8) = v50;
  *(v32 + 16) = v51;
  v52 = (v37 + *(v48 + 24));
  v53 = *v52;
  v54 = v52[1];
  sub_18BC1E3F8();

  *(v32 + 24) = v53;
  *(v32 + 32) = v54;
  return result;
}

void sub_18BBCB1C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_18BA474C4();
    sub_18BAD4A48();

    [v1 setNeedsLayout];
  }
}

uint64_t sub_18BBCB238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(result + qword_1EA9F84C8);
    v9 = result;
    sub_18BC1E1A8();

    v8(a4, a1, a2);
  }

  return result;
}

uint64_t sub_18BBCB2DC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(result + *a3);
    v7 = result;
    sub_18BC1E1A8();

    v6(a2);
  }

  return result;
}

uint64_t sub_18BBCB368()
{
  v1 = _s4ItemVMa_1();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s7ContentVMa_1();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_18BA474C4();
  sub_18BBCF730(v8 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content, v7, _s7ContentVMa_1);

  v9 = *v7;
  sub_18BC1E3F8();
  result = sub_18B81D138(v7, _s7ContentVMa_1);
  v11 = *(v9 + 16);
  if (!v11)
  {
  }

  v12 = 0;
  while (v12 < *(v9 + 16))
  {
    sub_18BBCF730(v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v12, v4, _s4ItemVMa_1);
    updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
    result = sub_18B81D138(v4, _s4ItemVMa_1);
    if (updated)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6AF0);
      sub_18BC1EDD8();
      v14 = swift_allocObject();
      v17 = xmmword_18BC3E410;
      *(v14 + 16) = xmmword_18BC3E410;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB730);
      v15 = swift_allocObject();
      *(v15 + 16) = v17;
      *(v15 + 32) = v12;
      MEMORY[0x18CFFA250]();
      v16 = sub_18BA474C4();
      sub_18BC0AD50(0xD000000000000012, 0x800000018BC60710, v14, v16, 0, v0);
    }

    if (v11 == ++v12)
    {
    }
  }

  __break(1u);
  return result;
}

void sub_18BBCB658()
{
  v1 = *(v0 + qword_1EA9DB678);
  sub_18BA474C4();
  sub_18BAD4B60(v14);

  sub_18B7F40F4(v1);
  [v1 _setContinuousCornerRadius_];
  v2 = OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar14BackgroundView_contentView;
  v3 = *&v1[OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar14BackgroundView_contentView];
  [v1 bounds];
  [v3 setFrame_];
  v4 = *&v1[v2];
  v5 = sub_18B7F4548();
  v7 = v6;
  [v4 bounds];
  [v4 setBounds_];
  v8 = *&v1[v2];
  v9 = sub_18B7F44CC();
  sub_18B7F4620(v14);
  [v8 _setContinuousCornerRadius_];
  v10 = *&v1[v2];
  v11 = sub_18B7C2E68(v10);
  [v11 contentSize];
  v13 = v12;

  [v1 bounds];
  [v10 setClipsToBounds_];
}

uint64_t sub_18BBCB7D0()
{
  v1 = sub_18BA474C4();
  v2 = v1;
  v3 = *(v0 + qword_1EA9DB680);
  if (v3)
  {
    if (*(v1 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_selectedItemIndex + 8))
    {
      v4 = v3;
      v5 = 0.0;
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }

    else
    {
      v9 = *(v1 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_selectedItemIndex);
      v10 = v3;
      sub_18BAD4E70(v9);
      v12 = v11;
      sub_18BAD554C(v9);
      v14 = v13;
      v15 = *(v2 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics + 40);
      UIEdgeInsetsMakeWithEdges();
      v5 = UIEdgeInsetsInsetRect(v12, 0.0, v14, v15, v16, v17);
      v6 = v18;
      v7 = v19;
      v8 = v20;
    }

    [v3 setAlpha_];
    v25.origin.x = v5;
    v25.origin.y = v6;
    v25.size.width = v7;
    v25.size.height = v8;
    Width = CGRectGetWidth(v25);
    v26.origin.x = v5;
    v26.origin.y = v6;
    v26.size.width = v7;
    v26.size.height = v8;
    Height = CGRectGetHeight(v26);
    if (Height >= Width)
    {
      Height = Width;
    }

    [v3 _setContinuousCornerRadius_];
    [v3 setFrame_];
  }
}

uint64_t sub_18BBCB95C(uint64_t a1)
{
  sub_18BBC2E54(a1);
  v1 = sub_18BA474C4();
  v2 = *(v1 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewContentInsets);
  v3 = *(v1 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewContentInsets + 8);
  v4 = *(v1 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewContentInsets + 16);
  v5 = *(v1 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewContentInsets + 24);

  v7 = sub_18B7C2E68(v6);
  [v7 contentInset];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (v9 != v2 || v11 != v3 || v13 != v4 || v15 != v5)
  {
    v20 = sub_18B7C2E68(v16);
    [v20 setContentInset_];
  }

  v21 = sub_18BA474C4();
  v22 = sub_18B7C2E68(v21);
  [v22 adjustedContentInset];
  v65 = v24;
  v66 = v23;
  v63 = v26;
  v64 = v25;
  [v22 bounds];
  v61 = v28;
  v62 = v27;
  v59 = v30;
  v60 = v29;
  sub_18B7E0E4C();
  v57 = v32;
  v58 = v31;
  v55 = v34;
  v56 = v33;
  [v22 contentSize];
  v53 = v36;
  v54 = v35;
  [v22 frame];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = [v22 isTracking];

  v46 = v21 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState;
  v47 = *(v21 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 32);
  v48 = *(v21 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 40);
  v49 = *(v21 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 48);
  v50 = *(v21 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 56);
  *v46 = v66;
  *(v46 + 8) = v65;
  *(v46 + 16) = v64;
  *(v46 + 24) = v63;
  v68.origin.y = v61;
  v68.origin.x = v62;
  *(v46 + 32) = v62;
  *(v46 + 40) = v61;
  v68.size.height = v59;
  v68.size.width = v60;
  *(v46 + 48) = v60;
  *(v46 + 56) = v59;
  *(v46 + 64) = v58;
  *(v46 + 72) = v57;
  *(v46 + 80) = v56;
  *(v46 + 88) = v55;
  *(v46 + 96) = v54;
  *(v46 + 104) = v53;
  *(v46 + 112) = v38;
  *(v46 + 120) = v40;
  *(v46 + 128) = v42;
  *(v46 + 136) = v44;
  *(v46 + 144) = v45;
  Width = CGRectGetWidth(v68);
  v69.origin.x = v47;
  v69.origin.y = v48;
  v69.size.width = v49;
  v69.size.height = v50;
  if (Width != CGRectGetWidth(v69))
  {
    sub_18BAD4A48();
  }
}

void sub_18BBCBB60(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for FloatingTabBar();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  sub_18BBCB658();
  sub_18BBCB7D0();
}

id sub_18BBCBBC4(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v16.receiver = a1;
  v16.super_class = type metadata accessor for FloatingTabBar();
  v8 = v16.receiver;
  v9 = a5;
  v10 = objc_msgSendSuper2(&v16, sel_hitTest_withEvent_, v9, a2, a3);
  v11 = sub_18B7C2E68(v10);
  if (!v10)
  {

    goto LABEL_5;
  }

  sub_18B7B0AC0(0, &qword_1EA9D46F0);
  v12 = v10;
  v13 = sub_18BC215C8();

  v14 = v12;
  v11 = v12;
  if (v13)
  {
LABEL_5:

    v14 = 0;
  }

  return v14;
}

uint64_t sub_18BBCBCD8()
{
  v0 = _s4ItemVMa_1();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - v5;
  result = sub_18BA474C4();
  if ((*(result + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_selectedItemIndex + 8) & 1) == 0)
  {
    v8 = *(result + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_selectedItemIndex);
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v9 = *(result + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content);
      if (v8 < *(v9 + 16))
      {
        sub_18BBCF730(v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v8, v4, _s4ItemVMa_1);

        sub_18BBCEB04(v4, v6, _s4ItemVMa_1);
        v10 = sub_18BBE9E08(v6, 0xD000000000000012, 0x800000018BC60710);
        sub_18B81D138(v6, _s4ItemVMa_1);
        if (v10)
        {
          _s8ItemViewCMa();
          v11 = swift_dynamicCastClass();
          if (v11)
          {
            v12 = *(v11 + OBJC_IVAR____SFFloatingTabBarItemView_configuration + 1);

            return v12;
          }
        }

        return 0;
      }
    }

    __break(1u);
    return result;
  }

  return 0;
}

void sub_18BBCBEC0()
{
  v0 = _s4ItemVMa_1();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v22[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22[-v5 - 8];
  v7 = sub_18BA474C4();
  if (*(v7 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_selectedItemIndex + 8))
  {

    return;
  }

  v8 = *(v7 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_selectedItemIndex);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = *(v7 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content);
  if (v8 >= *(v9 + 16))
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_18BBCF730(v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v8, v3, _s4ItemVMa_1);

  sub_18BBCEB04(v3, v6, _s4ItemVMa_1);
  v10 = sub_18BBE9E08(v6, 0xD000000000000012, 0x800000018BC60710);
  if (v10)
  {
    v11 = v10;
    _s8ItemViewCMa();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = v12;
      v14 = v12 + OBJC_IVAR____SFFloatingTabBarItemView_configuration;
      if (*(v12 + OBJC_IVAR____SFFloatingTabBarItemView_configuration + 1) != 1)
      {
        v15 = *(v14 + 2);
        v17 = *(v14 + 8);
        v16 = *(v14 + 16);
        v18 = *(v14 + 24);
        v19 = *(v14 + 32);
        v22[0] = *v14;
        v22[1] = 1;
        v22[2] = v15;
        v23 = v17;
        v24 = v16;
        v25 = v18;
        v26 = v19;
        sub_18BC1E3F8();
        sub_18BC1E3F8();
        sub_18BA1288C(v22);
        v20 = OBJC_IVAR____SFFloatingTabBarItemView_titleTextField;
        [*(v13 + OBJC_IVAR____SFFloatingTabBarItemView_titleTextField) becomeFirstResponder];
        [*(v13 + v20) selectAll];
        sub_18B81D138(v6, _s4ItemVMa_1);

        return;
      }
    }
  }

  sub_18B81D138(v6, _s4ItemVMa_1);
}

void sub_18BBCC150()
{
  v0 = _s4ItemVMa_1();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  v7 = sub_18BA474C4();
  if (*(v7 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_selectedItemIndex + 8))
  {

    return;
  }

  v8 = *(v7 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_selectedItemIndex);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = *(v7 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content);
  if (v8 >= *(v9 + 16))
  {
LABEL_14:
    __break(1u);
    return;
  }

  sub_18BBCF730(v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v8, v3, _s4ItemVMa_1);

  sub_18BBCEB04(v3, v6, _s4ItemVMa_1);
  v10 = sub_18BBE9E08(v6, 0xD000000000000012, 0x800000018BC60710);
  if (v10)
  {
    v11 = v10;
    _s8ItemViewCMa();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = v12;
      v14 = v12 + OBJC_IVAR____SFFloatingTabBarItemView_configuration;
      v15 = *(v12 + OBJC_IVAR____SFFloatingTabBarItemView_configuration);
      v16 = *(v12 + OBJC_IVAR____SFFloatingTabBarItemView_configuration + 2);
      v18 = *(v12 + OBJC_IVAR____SFFloatingTabBarItemView_configuration + 8);
      v17 = *(v12 + OBJC_IVAR____SFFloatingTabBarItemView_configuration + 16);
      v19 = *(v14 + 24);
      v20 = *(v14 + 32);
      v22 = v15;
      v23 = v16;
      v24 = v18;
      v25 = v17;
      v26 = v19;
      v27 = v20;
      sub_18BC1E3F8();
      sub_18BC1E3F8();
      sub_18BA1288C(&v22);
      [*(v13 + OBJC_IVAR____SFFloatingTabBarItemView_titleTextField) resignFirstResponder];
      sub_18B81D138(v6, _s4ItemVMa_1);

      return;
    }
  }

  sub_18B81D138(v6, _s4ItemVMa_1);
}

void sub_18BBCC3C0()
{
  v0 = _s4ItemVMa_1();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  v7 = sub_18BA474C4();
  if (*(v7 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_selectedItemIndex + 8))
  {

    return;
  }

  v8 = *(v7 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_selectedItemIndex);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = *(v7 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content);
  if (v8 >= *(v9 + 16))
  {
LABEL_14:
    __break(1u);
    return;
  }

  sub_18BBCF730(v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v8, v3, _s4ItemVMa_1);

  sub_18BBCEB04(v3, v6, _s4ItemVMa_1);
  v10 = sub_18BBE9E08(v6, 0xD000000000000012, 0x800000018BC60710);
  if (v10)
  {
    v11 = v10;
    _s8ItemViewCMa();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      [*(v12 + OBJC_IVAR____SFFloatingTabBarItemView_titleTextField) resignFirstResponder];
      sub_18B81D138(v6, _s4ItemVMa_1);

      return;
    }
  }

  sub_18B81D138(v6, _s4ItemVMa_1);
}

uint64_t sub_18BBCC5E0(uint64_t a1)
{
  v2 = sub_18BBE9E08(a1, 0xD000000000000012, 0x800000018BC60710);
  if (v2)
  {
    v3 = v2;
    _s8ItemViewCMa();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      if (*(v4 + OBJC_IVAR____SFFloatingTabBarItemView_configuration + 1) == 1)
      {
        v5 = [*(v4 + OBJC_IVAR____SFFloatingTabBarItemView_titleTextField) text];
        if (v5)
        {
          v6 = v5;
          v7 = sub_18BC20BD8();
          v9 = v8;

          goto LABEL_8;
        }
      }
    }
  }

  v10 = (a1 + *(_s4ItemVMa_1() + 24));
  v7 = *v10;
  v9 = v10[1];
  sub_18BC1E3F8();
LABEL_8:
  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    v7 = *(a1 + *(_s4ItemVMa_1() + 20));
    sub_18BC1E3F8();
  }

  return v7;
}

uint64_t sub_18BBCC708(uint64_t a1, int a2)
{
  v53 = a2;
  v58 = a1;
  v3 = sub_18BC1EC08();
  v56 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v45[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92B0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v45[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v57 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45[-v12];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45[-v15];
  v17 = _s7ContentVMa_1();
  MEMORY[0x1EEE9AC00](v17);
  v52 = &v45[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v54 = &v45[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45[-v22];
  v55 = v2;
  v24 = sub_18BA474C4();
  sub_18BBCF730(v24 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content, v23, _s7ContentVMa_1);

  v51 = v17;
  sub_18B7CA054(&v23[*(v17 + 20)], v16, &unk_1EA9D3AE0);
  sub_18B81D138(v23, _s7ContentVMa_1);
  v25 = v56;
  v48 = *(v56 + 16);
  v48(v13, v58, v3);
  v26 = *(v25 + 56);
  v50 = v25 + 56;
  v49 = v26;
  v26(v13, 0, 1, v3);
  v27 = *(v6 + 56);
  v28 = v3;
  sub_18B7CA054(v16, v8, &unk_1EA9D3AE0);
  sub_18B7CA054(v13, &v8[v27], &unk_1EA9D3AE0);
  v29 = v25;
  v30 = *(v25 + 48);
  if (v30(v8, 1, v3) == 1)
  {
    sub_18B988BAC(v13, &unk_1EA9D3AE0);
    sub_18B988BAC(v16, &unk_1EA9D3AE0);
    if (v30(&v8[v27], 1, v3) == 1)
    {
      return sub_18B988BAC(v8, &unk_1EA9D3AE0);
    }
  }

  else
  {
    sub_18B7CA054(v8, v57, &unk_1EA9D3AE0);
    if (v30(&v8[v27], 1, v3) != 1)
    {
      v42 = v47;
      (*(v29 + 32))(v47, &v8[v27], v3);
      sub_18B82BA44(&qword_1EA9D9FE0, MEMORY[0x1E69695A8]);
      v43 = v57;
      v46 = sub_18BC20AE8();
      v44 = *(v29 + 8);
      v44(v42, v3);
      sub_18B988BAC(v13, &unk_1EA9D3AE0);
      sub_18B988BAC(v16, &unk_1EA9D3AE0);
      v44(v43, v3);
      result = sub_18B988BAC(v8, &unk_1EA9D3AE0);
      if (v46)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_18B988BAC(v13, &unk_1EA9D3AE0);
    sub_18B988BAC(v16, &unk_1EA9D3AE0);
    (*(v29 + 8))(v57, v3);
  }

  sub_18B988BAC(v8, &unk_1EA9D92B0);
LABEL_7:
  v32 = sub_18BA474C4();
  v33 = v52;
  sub_18BBCF730(v32 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content, v52, _s7ContentVMa_1);

  v34 = *v33;
  sub_18BC1E3F8();
  sub_18B81D138(v33, _s7ContentVMa_1);
  v35 = *(v51 + 20);
  v36 = v54;
  v48(&v54[v35], v58, v28);
  v49(&v36[v35], 0, 1, v28);
  *v36 = v34;
  if (v53)
  {
    type metadata accessor for AnimationSettings();
    inited = swift_initStaticObject();
    v38 = type metadata accessor for RetargetableTransitionCoordinator();
    v39 = swift_allocObject();
    v40 = MEMORY[0x1E69E7CC0];
    *(v39 + 24) = MEMORY[0x1E69E7CC0];
    *(v39 + 32) = v40;
    *(v39 + 40) = 1;
    *(v39 + 16) = inited;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    *(&v60 + 1) = v38;
    v61 = &off_1EFF27FD8;
    *&v59 = v39;
    sub_18BC1E1A8();
    sub_18BBC36E0(v36, &v62, &v59);
    sub_18B988BAC(&v62, &unk_1EA9D53A0);
    sub_18B988BAC(&v59, &unk_1EA9D5060);
    v41 = *(v39 + 16);
    swift_retain_n();
    sub_18B7D8090(v41);
    sub_18B7EAA64(sub_18B9D4FF4, v39, sub_18B9D4FFC, v39, v41);

    sub_18B7EBAE8(v41);
    sub_18B81D138(v36, _s7ContentVMa_1);
    *(v39 + 40) = 0;
  }

  else
  {
    sub_18BBCF730(v36, v33, _s7ContentVMa_1);
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    sub_18BBC36E0(v33, &v62, &v59);
    sub_18B988BAC(&v59, &unk_1EA9D5060);
    sub_18B988BAC(&v62, &unk_1EA9D53A0);
    sub_18B81D138(v33, _s7ContentVMa_1);
    return sub_18B81D138(v36, _s7ContentVMa_1);
  }
}

void sub_18BBCCF34(uint64_t a1)
{
  v2 = qword_1EA9DB680;
  v3 = *(v1 + qword_1EA9DB680);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    sub_18B7CA054(a1, &v24, &unk_1EA9D5060);
    if (v25)
    {
      sub_18B7C3FA4(&v24, v26);
      v7 = *__swift_project_boxed_opaque_existential_1Tm(v26, v27);
      v8 = swift_allocObject();
      *(v8 + 16) = sub_18BA1A808;
      *(v8 + 24) = v5;
      swift_beginAccess();
      v9 = *(v7 + 24);
      v10 = v3;
      sub_18BC1E1A8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v7 + 24) = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_18B9B5814(0, v9[2] + 1, 1, v9);
        *(v7 + 24) = v9;
      }

      v13 = v9[2];
      v12 = v9[3];
      if (v13 >= v12 >> 1)
      {
        v9 = sub_18B9B5814((v12 > 1), v13 + 1, 1, v9);
      }

      v9[2] = v13 + 1;
      v14 = &v9[2 * v13];
      v14[4] = sub_18B7D1E94;
      v14[5] = v8;
      *(v7 + 24) = v9;
      swift_endAccess();
      v15 = *__swift_project_boxed_opaque_existential_1Tm(v26, v27);
      v16 = swift_allocObject();
      *(v16 + 16) = sub_18BA1A81C;
      *(v16 + 24) = v6;
      swift_beginAccess();
      v17 = *(v15 + 32);
      sub_18BC1E1A8();
      v18 = swift_isUniquelyReferenced_nonNull_native();
      *(v15 + 32) = v17;
      if ((v18 & 1) == 0)
      {
        v17 = sub_18B9B5814(0, v17[2] + 1, 1, v17);
        *(v15 + 32) = v17;
      }

      v20 = v17[2];
      v19 = v17[3];
      if (v20 >= v19 >> 1)
      {
        v17 = sub_18B9B5814((v19 > 1), v20 + 1, 1, v17);
      }

      v17[2] = v20 + 1;
      v21 = &v17[2 * v20];
      v21[4] = sub_18B9D53B0;
      v21[5] = v16;
      *(v15 + 32) = v17;
      swift_endAccess();

      __swift_destroy_boxed_opaque_existential_1Tm(v26);
    }

    else
    {
      v22 = v3;
      sub_18B988BAC(&v24, &unk_1EA9D5060);
      [v22 removeFromSuperview];
    }

    v23 = *(v1 + v2);
    *(v1 + v2) = 0;
  }
}

id sub_18BBCD24C(uint64_t a1, uint64_t a2, id a3)
{
  v4 = *(a1 + qword_1EA9DB680);
  if (v4)
  {
    if (*(a2 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_selectedItemIndex + 8))
    {
      v6 = v4;
      v7 = 0.0;
      v8 = 0.0;
      v9 = 0.0;
      v10 = 0.0;
    }

    else
    {
      v11 = *(a2 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_selectedItemIndex);
      v12 = v4;
      sub_18BAD4E70(v11);
      v14 = v13;
      sub_18BAD554C(v11);
      v16 = v15;
      v17 = *(a2 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics + 40);
      UIEdgeInsetsMakeWithEdges();
      v7 = UIEdgeInsetsInsetRect(v14, 0.0, v16, v17, v18, v19);
      v8 = v20;
      v9 = v21;
      v10 = v22;
    }

    [v4 setAlpha_];
    v27.origin.x = v7;
    v27.origin.y = v8;
    v27.size.width = v9;
    v27.size.height = v10;
    Width = CGRectGetWidth(v27);
    v28.origin.x = v7;
    v28.origin.y = v8;
    v28.size.width = v9;
    v28.size.height = v10;
    Height = CGRectGetHeight(v28);
    if (Height >= Width)
    {
      Height = Width;
    }

    [v4 _setContinuousCornerRadius_];
    [v4 setFrame_];
  }

  return [a3 setAlpha_];
}

uint64_t sub_18BBCD3E4(uint64_t a1)
{
  v3 = _s7ContentVMa_1();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_18BBCF730(a1, v5, _s7ContentVMa_1);
  v6 = *(v1 + qword_1EA9F84B0 + 48);
  v34 = *(v1 + qword_1EA9F84B0 + 32);
  v35 = v6;
  v36 = *(v1 + qword_1EA9F84B0 + 64);
  v7 = *(v1 + qword_1EA9F84B0 + 16);
  v32 = *(v1 + qword_1EA9F84B0);
  v33 = v7;
  sub_18BA1B8A8(&v32, v31);
  v8 = sub_18BBC96AC();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  _s6LayoutCMa_1();
  v10 = swift_allocObject();
  v11 = v10 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState;
  v12 = *MEMORY[0x1E69DDCE0];
  v13 = *(MEMORY[0x1E69DDCE0] + 8);
  v14 = *(MEMORY[0x1E69DDCE0] + 16);
  v15 = *(MEMORY[0x1E69DDCE0] + 24);
  *v11 = *MEMORY[0x1E69DDCE0];
  *(v11 + 8) = v13;
  *(v11 + 16) = v14;
  *(v11 + 24) = v15;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 64) = v12;
  *(v11 + 72) = v13;
  *(v11 + 80) = v14;
  *(v11 + 88) = v15;
  *(v11 + 96) = 0u;
  *(v11 + 112) = 0u;
  *(v11 + 128) = 0u;
  *(v11 + 144) = 0;
  v16 = (v10 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_backgroundViewSize);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v10 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_contentSize);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v10 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewContentInsets);
  *v18 = v12;
  v18[1] = v13;
  v18[2] = v14;
  v18[3] = v15;
  v19 = v10 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_selectedItemIndex;
  *v19 = 0;
  *(v19 + 8) = 1;
  *(v10 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_itemTypes) = &unk_1EFF1A060;
  sub_18BBCF730(v5, v10 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content, _s7ContentVMa_1);
  v20 = v10 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics;
  v21 = v35;
  *(v20 + 32) = v34;
  *(v20 + 48) = v21;
  *(v20 + 64) = v36;
  v22 = v33;
  *v20 = v32;
  *(v20 + 16) = v22;
  v23 = (v10 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_titleProvider);
  *v23 = sub_18BBCDEF4;
  v23[1] = v9;
  *(v10 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_titleWidthCache) = v8;
  v24 = *v5;
  v30 = v5;
  sub_18BA1B8A8(&v32, v31);
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  v25 = sub_18BBC2D64(sub_18BBCDEFC, v29, v24, _s4ItemVMa_1);
  v26 = v10 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_selectedItemIndex;
  *v26 = v25;
  *(v26 + 8) = v27 & 1;
  sub_18BC1E1A8();
  sub_18BAD4A48();

  sub_18BA1B904(&v32);
  sub_18B81D138(v5, _s7ContentVMa_1);

  return v10;
}

uint64_t sub_18BBCD6CC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = sub_18BBCC5E0(a1);

  return v4;
}

id sub_18BBCD770(double a1, double a2, double a3, double a4)
{
  v9 = &v4[qword_1EA9F84B0];
  v10 = [objc_opt_self() preferredFontForTextStyle_];
  v11 = *(MEMORY[0x1E69DDCE0] + 16);
  *v9 = *MEMORY[0x1E69DDCE0];
  *(v9 + 1) = v11;
  *(v9 + 4) = v10;
  *(v9 + 40) = xmmword_18BC44A70;
  *(v9 + 56) = xmmword_18BC44A80;
  *&v4[qword_1EA9DB670] = 0;
  v12 = &v4[qword_1EA9F84B8];
  *v12 = CGRectMake;
  *(v12 + 1) = 0;
  v13 = &v4[qword_1EA9F84C0];
  *v13 = CGRectMake;
  *(v13 + 1) = 0;
  v14 = &v4[qword_1EA9F84C8];
  *v14 = CGRectMake;
  *(v14 + 1) = 0;
  v15 = qword_1EA9DB678;
  _s14BackgroundViewCMa();
  *&v4[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[qword_1EA9DB680] = 0;
  v16 = qword_1EA9DB688;
  v17 = _s4ItemVMa_1();
  (*(*(v17 - 8) + 56))(&v4[v16], 1, 1, v17);
  v19.receiver = v4;
  v19.super_class = type metadata accessor for FloatingTabBar();
  return objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_18BBCD950(void *a1)
{
  v3 = &v1[qword_1EA9F84B0];
  v4 = [objc_opt_self() preferredFontForTextStyle_];
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  *v3 = *MEMORY[0x1E69DDCE0];
  *(v3 + 1) = v5;
  *(v3 + 4) = v4;
  *(v3 + 40) = xmmword_18BC44A70;
  *(v3 + 56) = xmmword_18BC44A80;
  *&v1[qword_1EA9DB670] = 0;
  v6 = &v1[qword_1EA9F84B8];
  *v6 = CGRectMake;
  *(v6 + 1) = 0;
  v7 = &v1[qword_1EA9F84C0];
  *v7 = CGRectMake;
  *(v7 + 1) = 0;
  v8 = &v1[qword_1EA9F84C8];
  *v8 = CGRectMake;
  *(v8 + 1) = 0;
  v9 = qword_1EA9DB678;
  _s14BackgroundViewCMa();
  *&v1[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[qword_1EA9DB680] = 0;
  v10 = qword_1EA9DB688;
  v11 = _s4ItemVMa_1();
  (*(*(v11 - 8) + 56))(&v1[v10], 1, 1, v11);
  v14.receiver = v1;
  v14.super_class = type metadata accessor for FloatingTabBar();
  v12 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);

  if (v12)
  {
  }

  return v12;
}

uint64_t sub_18BBCDB30()
{

  return sub_18B988BAC(v0 + qword_1EA9DB688, &qword_1EA9DB6B0);
}

id sub_18BBCDBE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FloatingTabBar();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18BBCDC1C(uint64_t a1)
{

  return sub_18B988BAC(a1 + qword_1EA9DB688, &qword_1EA9DB6B0);
}

uint64_t type metadata accessor for FloatingTabBar()
{
  result = qword_1EA9DB698;
  if (!qword_1EA9DB698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18BBCDD28()
{
  sub_18BBCDE94();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_18BBCDDF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18BBCD3E4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_18BBCDE18()
{
  sub_18BBC96AC();
  v0 = sub_18BAC21F0();
  sub_18BA1DA28(v0);
}

void sub_18BBCDE94()
{
  if (!qword_1EA9DB6A8)
  {
    _s4ItemVMa_1();
    v0 = sub_18BC21848();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA9DB6A8);
    }
  }
}

uint64_t sub_18BBCDF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t), void *a7, void (*a8)(uint64_t, uint64_t, void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v24 = a1;
  v25 = a8;
  v13 = sub_18BC1ED38();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a5;
  a6(v15);
  if (sub_18BC1ED08())
  {
    return (*(v14 + 8))(v17, v13);
  }

  sub_18BBC9098(v17, a7, v26);
  v20 = v27;
  v21 = v28;
  v22 = __swift_project_boxed_opaque_existential_1Tm(v26, v27);
  v25(a2, a3, v22, v18, 1, v24, v20, v21);
  (*(v14 + 8))(v17, v13);
  return __swift_destroy_boxed_opaque_existential_1Tm(v26);
}

uint64_t sub_18BBCE0A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_18BBCE91C(a1, v17);
  v7 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB6B8);
  v9 = swift_allocObject();
  sub_18BC1E3F8();
  v10 = sub_18BBCE29C(v17, sub_18BBCE954, v8, v9);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a2;
  v12[4] = a3;
  swift_beginAccess();
  v10[8] = sub_18BBCE960;
  v10[9] = v12;
  sub_18BC1E3F8();

  v13 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x98);
  swift_beginAccess();
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a4 + v13);
  *(a4 + v13) = 0x8000000000000000;
  sub_18BAA89B8(v10, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a4 + v13) = v16;
  swift_endAccess();
}

void *sub_18BBCE29C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = &type metadata for FloatingTabBar.ItemViewRegistration;
  v15 = sub_18BBCE96C();
  *&v13 = swift_allocObject();
  sub_18BBCE9C0(a1, v13 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  a4[4] = sub_18BA6601C(MEMORY[0x1E69E7CC0]);
  v9 = sub_18BA66200(v8);
  a4[5] = CGRectMake;
  a4[6] = 0;
  a4[7] = v9;
  v10 = sub_18BA66200(v8);
  a4[8] = CGRectMake;
  a4[9] = 0;
  v11 = MEMORY[0x1E69E7CD0];
  a4[10] = v10;
  a4[11] = v11;
  a4[17] = sub_18BA6601C(v8);
  a4[2] = a2;
  a4[3] = a3;
  sub_18B7C3FA4(&v13, (a4 + 12));
  return a4;
}

void sub_18BBCE388(uint64_t isEscapingClosureAtFileLocation, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB6B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = aBlock - v10;
  v12 = isEscapingClosureAtFileLocation + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_selectedItemIndex;
  if (*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_selectedItemIndex + 8))
  {
    v13 = _s4ItemVMa_1();
    v14 = *(v13 - 8);
    v15 = *(v14 + 56);
    v15(v11, 1, 1, v13);
    sub_18B988BAC(v11, &qword_1EA9DB6B0);
    if (*(v12 + 8))
    {
      v15(v8, 1, 1, v13);
      sub_18B988BAC(v8, &qword_1EA9DB6B0);
      sub_18BBCCF34(a3);
      return;
    }

LABEL_9:
    v28 = *v12;
    if ((*v12 & 0x8000000000000000) == 0)
    {
      v29 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content);
      if (v28 < *(v29 + 16))
      {
        sub_18BBCF730(v29 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v28, v8, _s4ItemVMa_1);
        v15(v8, 0, 1, v13);
        sub_18B988BAC(v8, &qword_1EA9DB6B0);
        return;
      }

LABEL_16:
      __break(1u);
      return;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16 = *v12;
  if ((*v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content);
  if (v16 >= *(v17 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = _s4ItemVMa_1();
  v19 = *(v18 - 8);
  sub_18BBCF730(v17 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, v11, _s4ItemVMa_1);
  (*(v19 + 56))(v11, 0, 1, v18);
  sub_18B988BAC(v11, &qword_1EA9DB6B0);
  v20 = qword_1EA9DB680;
  if (!*&v3[qword_1EA9DB680])
  {
    v21 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v22 = [objc_opt_self() tertiarySystemFillColor];
    [v21 setBackgroundColor_];

    [v21 setUserInteractionEnabled_];
    v23 = *&v3[v20];
    *&v3[v20] = v21;
    v24 = v21;

    [*(*&v3[qword_1EA9DB678] + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar14BackgroundView_contentView) addSubview_];
    v8 = swift_allocObject();
    *(v8 + 2) = v3;
    *(v8 + 3) = isEscapingClosureAtFileLocation;
    *(v8 + 4) = v24;
    v14 = objc_opt_self();
    v25 = swift_allocObject();
    *(v25 + 16) = sub_18BBCE8D8;
    *(v25 + 24) = v8;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_18B7D1EC4;
    *(v13 + 24) = v25;
    aBlock[4] = sub_18B7D1E94;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18B7E3BF4;
    aBlock[3] = &block_descriptor_61;
    v15 = _Block_copy(aBlock);
    v26 = v24;
    v27 = v3;
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    [v14 performWithoutAnimation_];
    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_9;
    }
  }
}

unint64_t sub_18BBCE96C()
{
  result = qword_1EA9DB6C0;
  if (!qword_1EA9DB6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB6C0);
  }

  return result;
}

uint64_t sub_18BBCE9F8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB6C8) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  return sub_18BBCDF1C(v0[2], v0[3], v0[4], v0 + v2, (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)), sub_18BBC80D8, &OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content, sub_18BB3E7BC);
}

uint64_t sub_18BBCEB04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18BBCEB6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB6B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BBCEBDC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB6B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);

  return sub_18BBCA040(v0 + v3, v5, v0 + ((v2 + v4 + 8) & ~v2));
}

uint64_t sub_18BBCEC84(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, char *, char *))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v8 = *(v3 + 4);
  v9 = &v3[(*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8];

  return a3(v6, v7, v8, &v3[v5], v9);
}

uint64_t sub_18BBCED40(uint64_t (*a1)(unint64_t, void, void, void))
{
  v3 = *(sub_18BC1ED38() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a1(v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_18BBCEE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = _s4ItemVMa_1();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v40 = v10;
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + OBJC_IVAR____SFFloatingTabBarItemView_configuration + 1);
  v13 = *(a1 + OBJC_IVAR____SFFloatingTabBarItemView_configuration + 2);
  v15 = *(a1 + OBJC_IVAR____SFFloatingTabBarItemView_configuration + 8);
  v14 = *(a1 + OBJC_IVAR____SFFloatingTabBarItemView_configuration + 16);
  v16 = *(a1 + OBJC_IVAR____SFFloatingTabBarItemView_configuration + 24);
  v17 = *(a1 + OBJC_IVAR____SFFloatingTabBarItemView_configuration + 32);
  v42[0] = *(a1 + OBJC_IVAR____SFFloatingTabBarItemView_configuration);
  v42[1] = v12;
  v42[2] = v13;
  v43 = v15;
  v44 = v14;
  v45 = v16;
  v46 = v17;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18BBCA91C(v42, a2, v4, a3);
  sub_18BA1288C(v42);
  v18 = swift_allocObject();
  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectWeakInit();

  v41 = _s4ItemVMa_1;
  v38 = a2;
  sub_18BBCF730(a2, v11, _s4ItemVMa_1);
  v20 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  v39 = _s4ItemVMa_1;
  sub_18BBCEB04(v11, v21 + v20, _s4ItemVMa_1);
  v22 = (a1 + OBJC_IVAR____SFFloatingTabBarItemView_didBeginRetitling);
  *v22 = sub_18BBCF7FC;
  v22[1] = v21;

  v23 = swift_allocObject();
  v24 = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectWeakInit();

  v25 = (a1 + OBJC_IVAR____SFFloatingTabBarItemView_editingChangedHandler);
  *v25 = sub_18BBCF808;
  v25[1] = v23;

  v26 = swift_allocObject();
  v27 = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectWeakInit();

  v28 = v41;
  sub_18BBCF730(a2, v11, v41);
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  v30 = v39;
  sub_18BBCEB04(v11, v29 + v20, v39);
  v31 = (a1 + OBJC_IVAR____SFFloatingTabBarItemView_retitleHandler);
  *v31 = sub_18BBCF810;
  v31[1] = v29;

  v32 = swift_allocObject();
  v33 = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectWeakInit();

  sub_18BBCF730(v38, v11, v28);
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  sub_18BBCEB04(v11, v34 + v20, v30);
  v35 = (a1 + OBJC_IVAR____SFFloatingTabBarItemView_tapHandler);
  *v35 = sub_18BBCF998;
  v35[1] = v34;
}

uint64_t sub_18BBCF208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_126Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_18BBCF34C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB7A8) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  return sub_18BBCDF1C(v0[2], v0[3], v0[4], v0 + v2, (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)), sub_18BBC82D0, &OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, sub_18BB3DEF4);
}

uint64_t objectdestroy_140Tm()
{
  v1 = sub_18BC1ED38();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroy_143Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_154Tm()
{
  v1 = sub_18BC1ED38();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18BBCF694(uint64_t (*a1)(void, void, unint64_t, void))
{
  v3 = *(sub_18BC1ED38() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  return a1(*(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_18BBCF730(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18BBCF810(uint64_t a1, uint64_t a2)
{
  v5 = *(_s4ItemVMa_1() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_18BBCB238(a1, a2, v6, v7);
}

uint64_t objectdestroy_317Tm()
{
  v1 = *(_s4ItemVMa_1() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_18BC1EC08();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

void sub_18BBCFA44(void *a1)
{
  v2 = OBJC_IVAR____TtC12MobileSafari21HighlightTrackingView_touchForHighlight;
  v3 = *(v1 + OBJC_IVAR____TtC12MobileSafari21HighlightTrackingView_touchForHighlight);
  *(v1 + OBJC_IVAR____TtC12MobileSafari21HighlightTrackingView_touchForHighlight) = a1;
  v8 = a1;

  v4 = *(v1 + OBJC_IVAR____TtC12MobileSafari21HighlightTrackingView_touchForHighlightDidChange);
  if (v4)
  {
    v5 = *(v1 + v2);
    sub_18B824D48(v4);
    v6 = v5;
    v4(v5);

    sub_18B7E0A10(v4);
    v7 = v6;
  }

  else
  {
    v7 = v8;
  }
}

void sub_18BBCFBEC(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  sub_18BBCFE10();
  sub_18BAAA034();
  v8 = sub_18BC20FD8();
  v9 = a1;
  v10 = a4;
  v11 = sub_18BC20FC8();
  v15.receiver = v9;
  v15.super_class = type metadata accessor for HighlightTrackingView();
  objc_msgSendSuper2(&v15, *a5, v11, v10);

  v12 = *&v9[OBJC_IVAR____TtC12MobileSafari21HighlightTrackingView_touchForHighlight];
  if (v12)
  {
    v13 = v12;
    v14 = sub_18B9BAEF0(v13, v8);

    if (v14)
    {
      sub_18BBCFA44(0);
    }
  }

  else
  {
  }
}

id sub_18BBCFD8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightTrackingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_18BBCFE10()
{
  result = qword_1EA9D4FE0;
  if (!qword_1EA9D4FE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9D4FE0);
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_12MobileSafari10UpdateModeO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_18BBCFE78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_18BBCFED4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_18BBCFF34(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_18BBCFF70(unint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  if (!(a1 >> 62))
  {
    v13 = objc_opt_self();
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = sub_18BA2A69C;
    v14[4] = v8;
    v33 = sub_18B7E767C;
    v34 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_18B7B0DB0;
    v32 = &block_descriptor_116_0;
    v15 = _Block_copy(&aBlock);
    _Block_copy(a4);
    sub_18BC1E1A8();
    sub_18B7D8090(a1);
    sub_18BC1E1A8();

    v33 = sub_18BBD05E0;
    v34 = v9;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_18B8043A0;
    v32 = &block_descriptor_119_0;
    v16 = _Block_copy(&aBlock);
    sub_18BC1E1A8();

    [v13 _animateUsingSpringBehavior_tracking_animations_completion_];
    _Block_release(v16);
    _Block_release(v15);
    goto LABEL_12;
  }

  if (a1 >> 62 == 1)
  {
    v27 = objc_opt_self();
    v10 = swift_allocObject();
    v10[2] = a1 & 0x3FFFFFFFFFFFFFFFLL;
    v10[3] = sub_18BA2A69C;
    v10[4] = v8;
    v33 = sub_18B7E767C;
    v34 = v10;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_18B7B0DB0;
    v32 = &block_descriptor_106_1;
    v11 = _Block_copy(&aBlock);
    _Block_copy(a4);
    sub_18BC1E1A8();
    sub_18B7D8090(a1);
    sub_18BC1E1A8();

    v33 = sub_18BBD05E0;
    v34 = v9;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_18B8043A0;
    v32 = &block_descriptor_109;
    v12 = _Block_copy(&aBlock);
    sub_18BC1E1A8();

    [v27 _animateUsingSpringBehavior_tracking_animations_completion_];
    _Block_release(v12);
    _Block_release(v11);
LABEL_12:
  }

  if (a1 == 0x8000000000000000)
  {
    v18 = objc_opt_self();
    v33 = sub_18BA2A69C;
    v34 = v8;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_18B7B0DB0;
    v32 = &block_descriptor_96_1;
    v19 = _Block_copy(&aBlock);
    _Block_copy(a4);
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    v33 = sub_18BBD05E0;
    v34 = v9;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_18B8043A0;
    v32 = &block_descriptor_99;
    v20 = _Block_copy(&aBlock);
    sub_18BC1E1A8();

    [v18 _animateByRetargetingAnimations_completion_];
    _Block_release(v20);
    _Block_release(v19);
    goto LABEL_12;
  }

  if (a1 == 0x8000000000000008)
  {
    _Block_copy(a4);
    v17 = a4[2];
    sub_18BC1E1A8();
    v17(a4);
    LOBYTE(aBlock) = 1;
LABEL_11:
    v28 = 0;
    a2(&aBlock, &v28);
    goto LABEL_12;
  }

  v21 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_18BA2A69C;
  *(v22 + 24) = v8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_18B9D53AC;
  *(v23 + 24) = v22;
  v33 = sub_18B9D53B0;
  v34 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_18B7E3BF4;
  v32 = &block_descriptor_93_0;
  v24 = _Block_copy(&aBlock);
  _Block_copy(a4);
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v21 performWithoutAnimation_];
  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    LOBYTE(aBlock) = 1;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_18BBD05E0(char a1, char a2)
{
  v3 = *(v2 + 16);
  v6 = a1;
  v5 = a2;
  return v3(&v6, &v5);
}

id sub_18BBD06C4(double a1, double a2, double a3, double a4)
{
  v9 = sub_18BC1FA08();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____SFBrowsingAssistantListCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____SFBrowsingAssistantListCell_overrideColor] = 0;
  v13 = &v4[OBJC_IVAR____SFBrowsingAssistantListCell_title];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v4[OBJC_IVAR____SFBrowsingAssistantListCell_subtitle];
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____SFBrowsingAssistantListCell____lazy_storage___reorderAccessory;
  v16 = sub_18BC1F598();
  v17 = *(*(v16 - 8) + 56);
  v17(&v4[v15], 1, 1, v16);
  v17(&v4[OBJC_IVAR____SFBrowsingAssistantListCell____lazy_storage___deleteAccessory], 1, 1, v16);
  v17(&v4[OBJC_IVAR____SFBrowsingAssistantListCell____lazy_storage___insertAccessory], 1, 1, v16);
  v4[OBJC_IVAR____SFBrowsingAssistantListCell_isDeletable] = 0;
  v4[OBJC_IVAR____SFBrowsingAssistantListCell_isConfigurable] = 0;
  v17(&v4[OBJC_IVAR____SFBrowsingAssistantListCell_badgeAccessory], 1, 1, v16);
  v18 = &v4[OBJC_IVAR____SFBrowsingAssistantListCell_badgeText];
  *v18 = 0;
  v18[1] = 0;
  v17(&v4[OBJC_IVAR____SFBrowsingAssistantListCell_statusAlertAccessory], 1, 1, v16);
  v4[OBJC_IVAR____SFBrowsingAssistantListCell_showsStatusAlert] = 0;
  *&v4[OBJC_IVAR____SFBrowsingAssistantListCell_dotView] = 0;
  v4[OBJC_IVAR____SFBrowsingAssistantListCell_showsIndicatorDot] = 0;
  *&v4[OBJC_IVAR____SFBrowsingAssistantListCell_menuButton] = 0;
  *&v4[OBJC_IVAR____SFBrowsingAssistantListCell_popUpMenu] = 0;
  v17(&v4[OBJC_IVAR____SFBrowsingAssistantListCell_iconAccessory], 1, 1, v16);
  *&v4[OBJC_IVAR____SFBrowsingAssistantListCell_iconView] = 0;
  *&v4[OBJC_IVAR____SFBrowsingAssistantListCell_icon] = 0;
  v17(&v4[OBJC_IVAR____SFBrowsingAssistantListCell_spinnerAccessory], 1, 1, v16);
  v4[OBJC_IVAR____SFBrowsingAssistantListCell_showsSpinner] = 0;
  v19 = _s8ListCellCMa();
  v35.receiver = v4;
  v35.super_class = v19;
  v20 = objc_msgSendSuper2(&v35, sel_initWithFrame_, a1, a2, a3, a4);
  sub_18BC1F7D8();
  v21 = objc_opt_self();
  v22 = [v21 labelColor];
  v23 = sub_18BC1F8A8();
  sub_18BC1F858();
  v23(v34, 0);
  v24 = [v21 secondaryLabelColor];
  v25 = sub_18BC1F938();
  sub_18BC1F858();
  v25(v34, 0);
  if (![objc_opt_self() isSolariumEnabled])
  {
    goto LABEL_5;
  }

  v26 = objc_opt_self();
  v27 = *MEMORY[0x1E69DB970];
  result = [v26 _preferredFontForTextStyle_weight_];
  if (result)
  {
    v29 = sub_18BC1F8A8();
    sub_18BC1F838();
    v29(v34, 0);
    result = [v26 _preferredFontForTextStyle_weight_];
    if (result)
    {
      v30 = sub_18BC1F938();
      sub_18BC1F838();
      v30(v34, 0);
LABEL_5:
      v34[3] = v9;
      v34[4] = MEMORY[0x1E69DC110];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v34);
      (*(v10 + 16))(boxed_opaque_existential_0Tm, v12, v9);
      v32 = v20;
      MEMORY[0x18CFFC900](v34);

      sub_18BBD34C0();
      (*(v10 + 8))(v12, v9);
      return v32;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_18BBD0BFC()
{
  v1 = v0;
  v2 = sub_18BC1FA08();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18BC1F708();
  v7 = _s8ListCellCMa();
  v17.receiver = v1;
  v17.super_class = v7;
  objc_msgSendSuper2(&v17, sel__bridgedUpdateConfigurationUsingState_, v6);

  result = MEMORY[0x18CFFC8F0](&v14);
  if (v15)
  {
    sub_18B7C3FA4(&v14, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D66F0);
    swift_dynamicCast();
    sub_18BC1E3F8();
    sub_18BC1F7E8();
    sub_18BC1E3F8();
    sub_18BC1F9B8();
    v9 = *&v1[OBJC_IVAR____SFBrowsingAssistantListCell_overrideColor];
    if (!v9)
    {
      v10 = [objc_opt_self() labelColor];
      v9 = 0;
    }

    v11 = v9;
    v12 = sub_18BC1F8A8();
    sub_18BC1F858();
    v12(v16, 0);
    v16[3] = v2;
    v16[4] = MEMORY[0x1E69DC110];
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v16);
    (*(v3 + 16))(boxed_opaque_existential_0Tm, v5, v2);
    MEMORY[0x18CFFC900](v16);
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_18BBD0F38(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____SFBrowsingAssistantListCell_overrideColor;
  v5 = *&v2[OBJC_IVAR____SFBrowsingAssistantListCell_overrideColor];
  if (v5)
  {
    if (a1)
    {
      sub_18B7B0AC0(0, &unk_1EA9D91D0);
      v6 = v5;
      v7 = a1;
      v8 = sub_18BC215C8();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  [v2 setNeedsUpdateConfiguration];
  v9 = *&v2[OBJC_IVAR____SFBrowsingAssistantListCell_iconView];
  if (v9)
  {
    v10 = *&v2[OBJC_IVAR____SFBrowsingAssistantListCell_icon];
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      if ([v12 isSymbolImage])
      {
        v13 = *&v2[v4];
        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = [objc_opt_self() labelColor];
        }

        v16 = v14;

        v15 = v16;
      }

      else
      {

        v15 = 0;
      }
    }

    else
    {
      v11 = v9;
      v15 = 0;
    }

    v17 = v15;
    [v11 setTintColor_];
  }
}

uint64_t sub_18BBD10E0@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v26 = sub_18BC1F418();
  v2 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_18BC1F438();
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7620);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v17 = OBJC_IVAR____SFBrowsingAssistantListCell____lazy_storage___reorderAccessory;
  swift_beginAccess();
  sub_18BA76498(v1 + v17, v16);
  v18 = sub_18BC1F598();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v16, 1, v18) != 1)
  {
    return (*(v19 + 32))(v27, v16, v18);
  }

  sub_18BA76508(v16);
  v20 = sub_18BC1F448();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  sub_18BC1F428();
  v21 = v26;
  (*(v2 + 104))(v4, *MEMORY[0x1E69DBF18], v26);
  v22 = v27;
  sub_18BC1F558();
  (*(v2 + 8))(v4, v21);
  (*(v24 + 8))(v10, v25);
  (*(v19 + 16))(v13, v22, v18);
  (*(v19 + 56))(v13, 0, 1, v18);
  swift_beginAccess();
  sub_18BA76570(v13, v1 + v17);
  return swift_endAccess();
}

uint64_t sub_18BBD14AC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7620);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____SFBrowsingAssistantListCell____lazy_storage___deleteAccessory;
  swift_beginAccess();
  sub_18BA76498(v1 + v9, v8);
  v10 = sub_18BC1F598();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_18BA76508(v8);
  sub_18BBD18EC(MEMORY[0x1E69DBF00], MEMORY[0x1E69DBEF8], sub_18BBD3C80, MEMORY[0x1E69DBF48], a1);
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_18BA76570(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_18BBD16CC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7620);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____SFBrowsingAssistantListCell____lazy_storage___insertAccessory;
  swift_beginAccess();
  sub_18BA76498(v1 + v9, v8);
  v10 = sub_18BC1F598();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_18BA76508(v8);
  sub_18BBD18EC(MEMORY[0x1E69DBF10], MEMORY[0x1E69DBF08], sub_18BBD3C5C, MEMORY[0x1E69DBF50], a1);
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_18BA76570(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_18BBD18EC@<X0>(uint64_t (*a1)(void, __n128)@<X1>, void (*a2)(uint64_t, char *, void, void)@<X2>, uint64_t a3@<X3>, void (*a4)(char *, char *, uint64_t, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v23 = a3;
  v24 = a4;
  v22[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v22 - v9;
  v11 = a1(0, v8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v22 - v13;
  v15 = sub_18BC1F418();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v16 + 104))(v18, *MEMORY[0x1E69DBF18], v15);
  v20 = sub_18BC1F448();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  sub_18BC1E1A8();
  a2(2, v10, 0, 0);
  v24(v18, v14, v23, v19);

  (*(v12 + 8))(v14, v11);
  (*(v16 + 8))(v18, v15);
}

void sub_18BBD1B8C(uint64_t a1, SEL *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      [v5 *a2];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_18BBD1C14(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7620);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = *(v2 + OBJC_IVAR____SFBrowsingAssistantListCell_badgeText + 8);
  if (!v8)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_13;
  }

  v9 = *(v2 + OBJC_IVAR____SFBrowsingAssistantListCell_badgeText);
  if (!a2 || (v9 == a1 ? (v10 = v8 == a2) : (v10 = 0), !v10 && (sub_18BC21FD8() & 1) == 0))
  {
    v11 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v11 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      objc_allocWithZone(type metadata accessor for SFBadgeLabel());
      sub_18BC1E3F8();
      v12 = sub_18BA4906C();
      sub_18BBD1FE0(v12, v7, 8.0);

      v13 = sub_18BC1F598();
      (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
LABEL_14:
      v15 = OBJC_IVAR____SFBrowsingAssistantListCell_badgeAccessory;
      swift_beginAccess();
      sub_18BA76570(v7, v2 + v15);
      swift_endAccess();
      sub_18BBD34C0();
      return;
    }

LABEL_13:
    v14 = sub_18BC1F598();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    goto LABEL_14;
  }
}

void sub_18BBD1DE4(char a1)
{
  v2 = a1 & 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7620);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  if (*(v1 + OBJC_IVAR____SFBrowsingAssistantListCell_showsStatusAlert) != v2)
  {
    if (*(v1 + OBJC_IVAR____SFBrowsingAssistantListCell_showsStatusAlert))
    {
      v6 = sub_18BC20B98();
      v7 = [objc_opt_self() systemImageNamed_];

      v8 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
      v9 = [objc_opt_self() systemOrangeColor];
      [v8 setTintColor_];

      sub_18BBD1FE0(v8, v5, 8.0);
      v10 = sub_18BC1F598();
      (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
    }

    else
    {
      v11 = sub_18BC1F598();
      (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    }

    v12 = OBJC_IVAR____SFBrowsingAssistantListCell_statusAlertAccessory;
    swift_beginAccess();
    sub_18BA76570(v5, v1 + v12);
    swift_endAccess();
    sub_18BBD34C0();
  }
}

uint64_t sub_18BBD1FE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v39 - v7;
  v43 = sub_18BC1F568();
  v9 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18BC1F4E8();
  v44 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 == 0.0)
  {
    v15 = a1;
  }

  else
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    [a1 setTranslatesAutoresizingMaskIntoConstraints_];
    [v15 addSubview_];
    v40 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
    v16 = swift_allocObject();
    v41 = v12;
    v17 = v16;
    *(v16 + 16) = xmmword_18BC42C20;
    v18 = [a1 topAnchor];
    v42 = a2;
    v19 = v18;
    v20 = [v15 topAnchor];
    v21 = [v19 constraintEqualToAnchor_];

    v17[4] = v21;
    v22 = [a1 bottomAnchor];
    v23 = [v15 bottomAnchor];
    v24 = [v22 constraintEqualToAnchor_];

    v17[5] = v24;
    v25 = [a1 leadingAnchor];
    v26 = [v15 leadingAnchor];
    v27 = [v25 constraintEqualToAnchor_];

    v17[6] = v27;
    v28 = [a1 trailingAnchor];
    v29 = [v15 trailingAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:-a3];

    v17[7] = v30;
    sub_18B7B0AC0(0, &qword_1EA9D4700);
    v31 = sub_18BC20D88();
    v12 = v41;

    [v40 activateConstraints_];
  }

  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v32 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6700) + 48)];
  v33 = *MEMORY[0x1E69DBF28];
  v34 = sub_18BC1F418();
  (*(*(v34 - 8) + 104))(v11, v33, v34);
  *v32 = sub_18B8390A8;
  v32[1] = 0;
  (*(v9 + 104))(v11, *MEMORY[0x1E69DBF60], v43);
  v35 = *MEMORY[0x1E69DBF30];
  v36 = sub_18BC1F448();
  v37 = *(v36 - 8);
  (*(v37 + 104))(v8, v35, v36);
  (*(v37 + 56))(v8, 0, 1, v36);
  sub_18BC1F4D8();
  sub_18BC1F3D8();

  return (*(v44 + 8))(v14, v12);
}

void sub_18BBD2574(char a1)
{
  if (*(v1 + OBJC_IVAR____SFBrowsingAssistantListCell_showsIndicatorDot) != (a1 & 1))
  {
    v2 = *(v1 + OBJC_IVAR____SFBrowsingAssistantListCell_iconView);
    if (v2)
    {
      if (*(v1 + OBJC_IVAR____SFBrowsingAssistantListCell_showsIndicatorDot))
      {
        v3 = objc_allocWithZone(MEMORY[0x1E69DD250]);
        v4 = v2;
        v5 = [v3 init];
        v6 = [objc_opt_self() systemBlueColor];
        [v5 setBackgroundColor_];

        [v5 setTranslatesAutoresizingMaskIntoConstraints_];
        [v5 _setContinuousCornerRadius_];
        v7 = v4;
        [v7 addSubview_];
        v8 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_18BC42C20;
        v10 = [v5 heightAnchor];
        v11 = [v10 constraintEqualToConstant_];

        *(v9 + 32) = v11;
        v12 = [v5 widthAnchor];
        v13 = [v5 heightAnchor];
        v14 = [v12 constraintEqualToAnchor_];

        *(v9 + 40) = v14;
        v15 = [v5 leadingAnchor];
        v16 = [v7 trailingAnchor];

        v17 = [v15 constraintEqualToAnchor:v16 constant:-1.0];
        *(v9 + 48) = v17;
        v18 = [v5 topAnchor];
        v19 = [v7 topAnchor];

        v20 = [v18 constraintEqualToAnchor_];
        *(v9 + 56) = v20;
        sub_18B7B0AC0(0, &qword_1EA9D4700);
        v21 = sub_18BC20D88();

        [v8 activateConstraints_];

        v22 = *(v1 + OBJC_IVAR____SFBrowsingAssistantListCell_dotView);
        *(v1 + OBJC_IVAR____SFBrowsingAssistantListCell_dotView) = v5;
      }

      else
      {
        v23 = OBJC_IVAR____SFBrowsingAssistantListCell_dotView;
        [*(v1 + OBJC_IVAR____SFBrowsingAssistantListCell_dotView) removeFromSuperview];
        v22 = *(v1 + v23);
        *(v1 + v23) = 0;
      }
    }
  }
}

void sub_18BBD28E0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7620);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v67 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v67 - v7;
  v9 = sub_18BC1F4E8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18BC1F568();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v19 = OBJC_IVAR____SFBrowsingAssistantListCell_icon;
  v81 = v1;
  v20 = *(v1 + OBJC_IVAR____SFBrowsingAssistantListCell_icon);
  if (v20)
  {
    v76 = v18;
    v77 = &v67 - v17;
    v75 = v14;
    v78 = v12;
    v79 = v8;
    v80 = v16;
    if (!a1)
    {
      goto LABEL_5;
    }

    sub_18B7B0AC0(0, &qword_1ED6514F0);
    v21 = v20;
    v22 = a1;
    v23 = sub_18BC215C8();

    if (v23)
    {
      return;
    }

    v20 = *(v81 + v19);
    if (v20)
    {
LABEL_5:
      v74 = v10;
      v24 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
      v25 = v20;
      v26 = [v24 initWithImage_];
      v27 = *MEMORY[0x1E69DDC40];
      v28 = v26;
      [v28 setMaximumContentSizeCategory_];
      v29 = *MEMORY[0x1E69DDCF8];
      v30 = objc_opt_self();
      v31 = [v30 configurationWithTextStyle:v29 scale:2];
      [v28 setPreferredSymbolConfiguration_];

      v32 = objc_opt_self();
      if ([v32 isSolariumEnabled])
      {
        v33 = [objc_opt_self() _preferredFontForTextStyle_weight_];
        if (!v33)
        {
          __break(1u);
          return;
        }

        v34 = v33;
        v35 = [v30 configurationWithFont_];

        [v28 &selRef:v35 setPresentingViewController:?];
      }

      v36 = *(v81 + v19);
      v72 = v9;
      v73 = v5;
      v70 = v32;
      v71 = v25;
      if (v36)
      {
        v37 = v36;
        if ([v37 isSymbolImage])
        {
          v38 = *(v81 + OBJC_IVAR____SFBrowsingAssistantListCell_overrideColor);
          if (v38)
          {
            v39 = v38;
          }

          else
          {
            v39 = [objc_opt_self() labelColor];
          }

          v45 = v39;
        }

        else
        {
          v45 = 0;
        }
      }

      else
      {
        v45 = 0;
      }

      [v28 setTintColor_];

      v46 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
      [v46 setAutoresizingMask_];
      [v46 setUserInteractionEnabled_];
      [v46 setShowsMenuAsPrimaryAction_];
      [v28 addSubview_];
      v47 = v81;
      v48 = *(v81 + OBJC_IVAR____SFBrowsingAssistantListCell_menuButton);
      *(v81 + OBJC_IVAR____SFBrowsingAssistantListCell_menuButton) = v46;
      v69 = v46;

      v49 = *(v47 + OBJC_IVAR____SFBrowsingAssistantListCell_iconView);
      *(v47 + OBJC_IVAR____SFBrowsingAssistantListCell_iconView) = v28;
      v68 = v28;

      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6700);
      v51 = v77;
      v52 = &v77[*(v50 + 48)];
      v53 = *MEMORY[0x1E69DBF28];
      v54 = sub_18BC1F418();
      v55 = *(*(v54 - 8) + 104);
      v55(v51, v53, v54);
      *v52 = sub_18B8390A8;
      v52[1] = 0;
      v56 = v75;
      v57 = *(v75 + 104);
      v58 = v80;
      v57(v51, *MEMORY[0x1E69DBF60], v80);
      if ([v70 isSolariumEnabled])
      {
        (*(v56 + 8))(v51, v58);
        v59 = &v51[*(v50 + 48)];
        v55(v51, v53, v54);
        *v59 = sub_18BB70068;
        v59[1] = 0;
        v57(v51, *MEMORY[0x1E69DBF58], v58);
      }

      (*(v56 + 16))(v76, v51, v58);
      v60 = sub_18BC1F448();
      (*(*(v60 - 8) + 56))(v79, 1, 1, v60);
      v61 = v78;
      v62 = v68;
      sub_18BC1F4D8();
      v63 = v73;
      sub_18BC1F3D8();

      (*(v74 + 8))(v61, v72);
      (*(v56 + 8))(v51, v58);
      v64 = sub_18BC1F598();
      (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
      v65 = OBJC_IVAR____SFBrowsingAssistantListCell_iconAccessory;
      v66 = v81;
      swift_beginAccess();
      v43 = v66 + v65;
      v44 = v63;
      goto LABEL_22;
    }
  }

  else if (!a1)
  {
    return;
  }

  v40 = sub_18BC1F598();
  (*(*(v40 - 8) + 56))(v5, 1, 1, v40);
  v41 = OBJC_IVAR____SFBrowsingAssistantListCell_iconAccessory;
  v42 = v81;
  swift_beginAccess();
  v43 = v42 + v41;
  v44 = v5;
LABEL_22:
  sub_18BA76570(v44, v43);
  swift_endAccess();
  sub_18BBD34C0();
}

void sub_18BBD30D4(char a1)
{
  v2 = a1 & 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7620);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_18BC1F568();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18BC1F4E8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____SFBrowsingAssistantListCell_showsSpinner) != v2)
  {
    if (*(v1 + OBJC_IVAR____SFBrowsingAssistantListCell_showsSpinner))
    {
      v28 = v15;
      v27 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
      [v27 startAnimating];
      v18 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6700) + 48)];
      v19 = *MEMORY[0x1E69DBF28];
      v20 = sub_18BC1F418();
      (*(*(v20 - 8) + 104))(v12, v19, v20);
      *v18 = sub_18B8390A8;
      v18[1] = 0;
      (*(v10 + 104))(v12, *MEMORY[0x1E69DBF60], v9);
      v21 = sub_18BC1F448();
      (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
      v22 = v27;
      sub_18BC1F4D8();
      sub_18BC1F3D8();

      (*(v14 + 8))(v17, v28);
      v23 = sub_18BC1F598();
      (*(*(v23 - 8) + 56))(v5, 0, 1, v23);
    }

    else
    {
      v24 = sub_18BC1F598();
      (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
    }

    v25 = OBJC_IVAR____SFBrowsingAssistantListCell_spinnerAccessory;
    swift_beginAccess();
    sub_18BA76570(v5, v1 + v25);
    swift_endAccess();
    sub_18BBD34C0();
  }
}

uint64_t sub_18BBD34C0()
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7620);
  v1 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v3 = &v32 - v2;
  v41 = sub_18BC1F598();
  v4 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v32 - v7;
  v44 = MEMORY[0x1E69E7CC0];
  v35 = v0;
  if (*(v0 + OBJC_IVAR____SFBrowsingAssistantListCell_isConfigurable) == 1)
  {
    v8 = *(v35 + OBJC_IVAR____SFBrowsingAssistantListCell_isDeletable);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64F0);
    v9 = *(v4 + 72);
    v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    if (v8 == 1)
    {
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_18BC3E400;
      sub_18BBD14AC(v11 + v10);
      sub_18BBD10E0(v11 + v10 + v9);
    }

    else
    {
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_18BC3E410;
      sub_18BBD16CC(v11 + v10);
    }

    sub_18BA0201C(v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB818);
  v12 = *(v1 + 72);
  v13 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v33 = swift_allocObject();
  v14 = v33 + v13;
  v15 = OBJC_IVAR____SFBrowsingAssistantListCell_badgeAccessory;
  v16 = v35;
  swift_beginAccess();
  sub_18BA76498(v16 + v15, v14);
  v17 = OBJC_IVAR____SFBrowsingAssistantListCell_statusAlertAccessory;
  swift_beginAccess();
  sub_18BA76498(v16 + v17, v14 + v12);
  v18 = OBJC_IVAR____SFBrowsingAssistantListCell_spinnerAccessory;
  swift_beginAccess();
  sub_18BA76498(v16 + v18, v14 + 2 * v12);
  v19 = OBJC_IVAR____SFBrowsingAssistantListCell_iconAccessory;
  swift_beginAccess();
  sub_18BA76498(v16 + v19, v14 + 3 * v12);
  v20 = (v4 + 48);
  v21 = (v4 + 32);
  v40 = v4;
  v36 = v4 + 8;
  v37 = (v4 + 16);
  v22 = 4;
  v32 = v14;
  v23 = v14;
  v38 = v12;
  v39 = v3;
  v24 = v41;
  do
  {
    sub_18BA76498(v23, v3);
    if ((*v20)(v3, 1, v24) == 1)
    {
      sub_18BA76508(v3);
    }

    else
    {
      v25 = *v21;
      v26 = v42;
      (*v21)(v42, v3, v24);
      (*v37)(v43, v26, v24);
      v27 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_18B9B58D8(0, *(v27 + 2) + 1, 1, v27);
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_18B9B58D8(v28 > 1, v29 + 1, 1, v27);
      }

      v30 = v40;
      v24 = v41;
      (*(v40 + 8))(v42, v41);
      *(v27 + 2) = v29 + 1;
      v25(&v27[((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v29], v43, v24);
      v44 = v27;
      v12 = v38;
      v3 = v39;
    }

    v23 += v12;
    --v22;
  }

  while (v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_18BC21458();
}

id sub_18BBD39AC()
{
  v2.receiver = v0;
  v2.super_class = _s8ListCellCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s8ListCellCMa()
{
  result = qword_1ED652590;
  if (!qword_1ED652590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18BBD3B80()
{
  sub_18BA75804();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_18BBD3CA4()
{
  *(v0 + OBJC_IVAR____SFBrowsingAssistantListCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____SFBrowsingAssistantListCell_overrideColor) = 0;
  v1 = (v0 + OBJC_IVAR____SFBrowsingAssistantListCell_title);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____SFBrowsingAssistantListCell_subtitle);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____SFBrowsingAssistantListCell____lazy_storage___reorderAccessory;
  v4 = sub_18BC1F598();
  v5 = *(*(v4 - 8) + 56);
  v5(v0 + v3, 1, 1, v4);
  v5(v0 + OBJC_IVAR____SFBrowsingAssistantListCell____lazy_storage___deleteAccessory, 1, 1, v4);
  v5(v0 + OBJC_IVAR____SFBrowsingAssistantListCell____lazy_storage___insertAccessory, 1, 1, v4);
  *(v0 + OBJC_IVAR____SFBrowsingAssistantListCell_isDeletable) = 0;
  *(v0 + OBJC_IVAR____SFBrowsingAssistantListCell_isConfigurable) = 0;
  v5(v0 + OBJC_IVAR____SFBrowsingAssistantListCell_badgeAccessory, 1, 1, v4);
  v6 = (v0 + OBJC_IVAR____SFBrowsingAssistantListCell_badgeText);
  *v6 = 0;
  v6[1] = 0;
  v5(v0 + OBJC_IVAR____SFBrowsingAssistantListCell_statusAlertAccessory, 1, 1, v4);
  *(v0 + OBJC_IVAR____SFBrowsingAssistantListCell_showsStatusAlert) = 0;
  *(v0 + OBJC_IVAR____SFBrowsingAssistantListCell_dotView) = 0;
  *(v0 + OBJC_IVAR____SFBrowsingAssistantListCell_showsIndicatorDot) = 0;
  *(v0 + OBJC_IVAR____SFBrowsingAssistantListCell_menuButton) = 0;
  *(v0 + OBJC_IVAR____SFBrowsingAssistantListCell_popUpMenu) = 0;
  v5(v0 + OBJC_IVAR____SFBrowsingAssistantListCell_iconAccessory, 1, 1, v4);
  *(v0 + OBJC_IVAR____SFBrowsingAssistantListCell_iconView) = 0;
  *(v0 + OBJC_IVAR____SFBrowsingAssistantListCell_icon) = 0;
  v5(v0 + OBJC_IVAR____SFBrowsingAssistantListCell_spinnerAccessory, 1, 1, v4);
  *(v0 + OBJC_IVAR____SFBrowsingAssistantListCell_showsSpinner) = 0;
  sub_18BC21CF8();
  __break(1u);
}

unint64_t sub_18BBD3F00()
{
  result = qword_1EA9DB820;
  if (!qword_1EA9DB820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB820);
  }

  return result;
}

unint64_t sub_18BBD3F58()
{
  result = qword_1EA9DB828;
  if (!qword_1EA9DB828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB828);
  }

  return result;
}

unint64_t sub_18BBD3FAC()
{
  result = qword_1EA9DB830;
  if (!qword_1EA9DB830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB830);
  }

  return result;
}

uint64_t sub_18BBD4000()
{
  v25 = sub_18BC20B08();
  v0 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v24 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_18BC20B68();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v26 = v19 - v4;
  v5 = sub_18BC1E8B8();
  v20 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_18BC1E8D8();
  v22 = *(v11 - 8);
  v23 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_18BC1E4F8();
  __swift_allocate_value_buffer(v12, qword_1EA9F84D0);
  v21 = __swift_project_value_buffer(v12, qword_1EA9F84D0);
  sub_18BC20B18();
  sub_18BC1EC38();
  v13 = *MEMORY[0x1E6968DF0];
  v14 = *(v6 + 104);
  v19[1] = v6 + 104;
  v14(v8, v13, v5);
  sub_18BC1E8E8();
  sub_18BC20B58();
  sub_18BC20B48();
  v16 = v24;
  v15 = v25;
  (*(v0 + 104))(v24, *MEMORY[0x1E6969D68], v25);
  sub_18BC20B28();
  (*(v0 + 8))(v16, v15);
  sub_18BC20B48();
  sub_18BC20B78();
  sub_18BC1EC38();
  v14(v8, v13, v20);
  v17 = v26;
  sub_18BC1E8F8();
  (*(v22 + 56))(v17, 0, 1, v23);
  return sub_18BC1E4E8();
}

uint64_t sub_18BBD44D4@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4608);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v16 = &v14 - v2;
  v15 = sub_18BC1EA98();
  v3 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v14 = sub_18BC1E8D8();
  v9 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v10 = sub_18BC20B68();
  MEMORY[0x1EEE9AC00](v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  sub_18BC20B58();
  sub_18BC20B48();
  sub_18BC1DFE8();
  if (!v18)
  {
    sub_18BC1DFE8();
  }

  sub_18BC20B38();

  sub_18BC20B48();
  sub_18BC1E8C8();
  sub_18BC20B58();
  sub_18BC20B48();
  sub_18BC1DFE8();
  sub_18BC1E9B8();
  (*(v3 + 8))(v5, v15);
  sub_18BC20B38();

  sub_18BC20B48();
  sub_18BC1E8C8();
  (*(v9 + 56))(v8, 0, 1, v14);
  v12 = sub_18BC1E398();
  (*(*(v12 - 8) + 56))(v16, 1, 1, v12);
  return sub_18BC1E3A8();
}

unint64_t sub_18BBD4888()
{
  result = qword_1EA9DB838;
  if (!qword_1EA9DB838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB838);
  }

  return result;
}

unint64_t sub_18BBD48DC()
{
  result = qword_1EA9DB840;
  if (!qword_1EA9DB840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB840);
  }

  return result;
}

unint64_t sub_18BBD4934()
{
  result = qword_1EA9DB848;
  if (!qword_1EA9DB848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB848);
  }

  return result;
}

unint64_t sub_18BBD4988()
{
  result = qword_1EA9DB850;
  if (!qword_1EA9DB850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB850);
  }

  return result;
}

unint64_t sub_18BBD49E0()
{
  result = qword_1EA9DB858;
  if (!qword_1EA9DB858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB858);
  }

  return result;
}

uint64_t sub_18BBD4AB4(uint64_t a1)
{
  v2 = sub_18BA5F904();

  return MEMORY[0x1EEDB2C50](a1, v2);
}

uint64_t sub_18BBD4B00(uint64_t a1)
{
  v2 = sub_18BBD4888();

  return MEMORY[0x1EEDB3F70](a1, v2);
}

uint64_t sub_18BBD4B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_18B9EC2C0;

  return (sub_18BBD8278)(a2, a3);
}

uint64_t sub_18BBD4C24()
{
  sub_18BC20F28();
  *(v0 + 24) = sub_18BC20F18();
  v2 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BBD4CB8, v2, v1);
}

uint64_t sub_18BBD4CB8()
{

  sub_18BB18CDC(0, 0);
  **(v0 + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_18BBD4D54()
{
  result = qword_1EA9DB870;
  if (!qword_1EA9DB870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB870);
  }

  return result;
}

unint64_t sub_18BBD4DAC()
{
  result = qword_1EA9DB878;
  if (!qword_1EA9DB878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB878);
  }

  return result;
}

uint64_t sub_18BBD4E00(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18B9EDB00;

  return sub_18BBD7FA8(a1);
}

uint64_t sub_18BBD4EA8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_18BA82598;

  return sub_18BBD8474();
}

unint64_t sub_18BBD4F50()
{
  result = qword_1EA9DB880;
  if (!qword_1EA9DB880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB880);
  }

  return result;
}

unint64_t sub_18BBD4FA8()
{
  result = qword_1EA9DB888;
  if (!qword_1EA9DB888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9DB890);
    sub_18BBD4988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB888);
  }

  return result;
}

uint64_t sub_18BBD502C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_18BBD3FAC();
  *v5 = v2;
  v5[1] = sub_18B987B10;

  return MEMORY[0x1EEDB2ED0](a1, a2, v6);
}

unint64_t sub_18BBD50E4()
{
  result = qword_1EA9DB898;
  if (!qword_1EA9DB898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB898);
  }

  return result;
}

void (*sub_18BBD5160(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_18BC1E098();
  return sub_18BB92404;
}

uint64_t sub_18BBD5244@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BBD8668();
  *a1 = result;
  return result;
}

id sub_18BBD526C(void *a1)
{
  result = [a1 canCreateNewBookmark];
  if (!result)
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v2 = sub_18BC1DE48();
    v3 = __swift_project_value_buffer(v2, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v2 - 8) + 16))(v4, v3, v2);
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_18BBD5380()
{
  result = qword_1EA9DB8B0;
  if (!qword_1EA9DB8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB8B0);
  }

  return result;
}

unint64_t sub_18BBD53D8()
{
  result = qword_1EA9DB8B8;
  if (!qword_1EA9DB8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB8B8);
  }

  return result;
}

unint64_t sub_18BBD5478()
{
  result = qword_1EA9DB8C0;
  if (!qword_1EA9DB8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB8C0);
  }

  return result;
}

uint64_t sub_18BBD54CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4500);
  v3[22] = swift_task_alloc();
  v3[23] = type metadata accessor for TabEntity();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v4 = sub_18BC1EA98();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  sub_18BC20F28();
  v3[29] = sub_18BC20F18();
  v6 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BBD5638, v6, v5);
}

uint64_t sub_18BBD5638()
{

  v1 = [objc_opt_self() sharedApplication];
  v0[18] = &unk_1F0032E60;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (!v2)
  {

    goto LABEL_5;
  }

  v3 = v2;
  v4 = v0[26];
  v5 = v0[27];
  v6 = v0[25];
  v7 = v0[22];
  sub_18BC1E0A8();
  sub_18BC1DFE8();
  sub_18BA5F48C(v6);
  if ((*(v5 + 48))(v7, 1, v4) == 1)
  {
    v8 = v0[22];

    sub_18BACE6CC(v8);
LABEL_5:
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v9 = sub_18BC1DE48();
    v10 = __swift_project_value_buffer(v9, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v9 - 8) + 16))(v11, v10, v9);
    swift_willThrow();
LABEL_8:

    v12 = v0[1];
    goto LABEL_9;
  }

  (*(v0[27] + 32))(v0[28], v0[22], v0[26]);
  sub_18BC1E0A8();
  if (!v0[15])
  {
    v14 = v0[24];
    sub_18BC1E0A8();
    sub_18BC1DFE8();
    v15 = v0[17];
    sub_18BA5F48C(v14);
    if (!v15)
    {
      sub_18BC1E9B8();
    }
  }

  v16 = sub_18BC20B98();

  v17 = sub_18BC1E9E8();
  v18 = [v3 createBookmarkWithTitle:v16 url:v17];

  v19 = v18;
  sub_18BBD7294(v19, v0 + 2);
  v20 = v0[3];
  if (!v20)
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v27 = v0[27];
    v26 = v0[28];
    v28 = v0[26];
    v29 = sub_18BC1DE48();
    v30 = __swift_project_value_buffer(v29, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v29 - 8) + 16))(v31, v30, v29);
    swift_willThrow();

    (*(v27 + 8))(v26, v28);
    goto LABEL_8;
  }

  v21 = v0[27];
  v33 = v0[28];
  v32 = v0[26];
  v23 = v0[5];
  v22 = v0[6];
  v24 = v0[4];
  v25 = v0[2];
  v0[7] = v25;
  v0[8] = v20;
  v0[9] = v24;
  v0[10] = v23;
  v0[11] = v22;
  sub_18BBD4988();
  sub_18BC1DF88();

  (*(v21 + 8))(v33, v32);
  v0[12] = v25;
  v0[13] = v20;
  sub_18BA835C4((v0 + 12));

  v12 = v0[1];
LABEL_9:

  return v12();
}

uint64_t sub_18BBD5B2C(uint64_t a1)
{
  v2 = sub_18BBD993C();

  return MEMORY[0x1EEDB39D0](a1, v2);
}

uint64_t sub_18BBD5B78(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_18B7B6968;

  return sub_18BBD54CC(a1, v5, v4);
}

uint64_t sub_18BBD5C24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BBD8BC0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18BBD5C4C(uint64_t a1)
{
  v2 = sub_18BBD5478();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

unint64_t sub_18BBD5C8C()
{
  result = qword_1EA9DB8C8;
  if (!qword_1EA9DB8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB8C8);
  }

  return result;
}

unint64_t sub_18BBD5CE4()
{
  result = qword_1EA9DB8D0;
  if (!qword_1EA9DB8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB8D0);
  }

  return result;
}

unint64_t sub_18BBD5D84()
{
  result = qword_1EA9DB8D8;
  if (!qword_1EA9DB8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB8D8);
  }

  return result;
}

uint64_t sub_18BBD5DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v3[17] = a1;
  v4 = sub_18BC1EA98();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  sub_18BC20F28();
  v3[23] = sub_18BC20F18();
  v6 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BBD5ED0, v6, v5);
}

uint64_t sub_18BBD5ED0()
{

  v1 = [objc_opt_self() sharedApplication];
  v0[16] = &unk_1F0032E60;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = v2;
    sub_18BC1E0A8();
    if (!v0[15])
    {
      v7 = v0[21];
      v8 = v0[22];
      v9 = v0[20];
      sub_18BC1E0A8();
      sub_18BC1E9B8();
      (*(v7 + 8))(v8, v9);
    }

    v10 = v0[21];
    v11 = v0[22];
    v12 = v0[20];
    v13 = sub_18BC20B98();

    sub_18BC1E0A8();
    v14 = sub_18BC1E9E8();
    (*(v10 + 8))(v11, v12);
    v15 = [v3 createBookmarkWithTitle:v13 url:v14];

    v16 = v15;
    sub_18BBD7294(v16, v0 + 2);
    v17 = v0[3];
    if (v17)
    {
      v19 = v0[5];
      v18 = v0[6];
      v20 = v0[4];
      v21 = v1;
      v22 = v0[2];
      v0[7] = v22;
      v0[8] = v17;
      v0[9] = v20;
      v0[10] = v19;
      v0[11] = v18;
      sub_18BBD4988();
      sub_18BC1DF88();

      v0[12] = v22;
      v0[13] = v17;
      sub_18BA835C4((v0 + 12));

      v23 = v0[1];
      goto LABEL_14;
    }

    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v24 = sub_18BC1DE48();
    v25 = __swift_project_value_buffer(v24, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v24 - 8) + 16))(v26, v25, v24);
    swift_willThrow();
  }

  else
  {

    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v4 = sub_18BC1DE48();
    v5 = __swift_project_value_buffer(v4, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v4 - 8) + 16))(v6, v5, v4);
    swift_willThrow();
  }

  v23 = v0[1];
LABEL_14:

  return v23();
}

uint64_t sub_18BBD62E0(uint64_t a1)
{
  v2 = sub_18BBD98E8();

  return MEMORY[0x1EEDB39D0](a1, v2);
}

uint64_t sub_18BBD632C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_18B7B6968;

  return sub_18BBD5DD8(a1, v5, v4);
}

uint64_t sub_18BBD63D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BBD9030();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18BBD6400(uint64_t a1)
{
  v2 = sub_18BBD5D84();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

unint64_t sub_18BBD6440()
{
  result = qword_1EA9DB8E0;
  if (!qword_1EA9DB8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB8E0);
  }

  return result;
}

uint64_t sub_18BBD64C0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_18BC1E8B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_18BC1E8D8();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v4 + 104))(v6, *MEMORY[0x1E6968DF0], v3);
  return sub_18BC1E8F8();
}

void (*sub_18BBD66AC(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_18BC1E098();
  return sub_18B99C5B4;
}
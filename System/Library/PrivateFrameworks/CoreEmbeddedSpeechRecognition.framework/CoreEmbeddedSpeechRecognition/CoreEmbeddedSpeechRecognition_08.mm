uint64_t sub_22601F7D0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225FA1544(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_22601F8C0()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_225F3E5DC;

  return sub_225FD8AB8();
}

unint64_t type metadata accessor for CoreEmbeddedSpeechAnalyzer()
{
  v2 = qword_280D76418;
  if (!qword_280D76418)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76418);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_22601F9F0()
{
  v2 = qword_27D7869F0;
  if (!qword_27D7869F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7869E8, &qword_2260A09A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7869F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22601FA78()
{
  v2 = qword_27D7869F8;
  if (!qword_27D7869F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7869F8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_22601FAFC()
{
  v2 = qword_280D76780;
  if (!qword_280D76780)
  {
    sub_226098D78();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76780);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22601FB7C()
{
  v2 = qword_280D76598;
  if (!qword_280D76598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786A28, &qword_2260A1000);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76598);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22601FC04()
{
  v2 = qword_280D76678;
  if (!qword_280D76678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786A30, &qword_2260A0A28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76678);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_22601FC8C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_226098948();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_225FFF104(v3, a1);
}

uint64_t sub_22601FD00()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_226098948();
  v1 = sub_22601FD5C();

  return sub_225F2C300(v5, v3, v4, v1);
}

unint64_t sub_22601FD5C()
{
  v2 = qword_280D76F40;
  if (!qword_280D76F40)
  {
    sub_226098948();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76F40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_22601FDD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_225FFF0EC();
}

uint64_t sub_22601FDE0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_22601FE20(void *a1, void *a2)
{
  if (a1[3])
  {
    v2 = a1[3];
    a2[3] = v2;
    a2[4] = a1[4];
    (**(v2 - 8))();
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

unint64_t sub_22601FEB4()
{
  v2 = qword_280D76F50;
  if (!qword_280D76F50)
  {
    sub_2260987A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76F50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22601FF2C()
{
  v2 = qword_280D76F58;
  if (!qword_280D76F58)
  {
    sub_226098798();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76F58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_22601FFAC(uint64_t a1)
{
  v7 = v2;
  *(v2 + 16) = v2;
  v6 = *(sub_226098A78() - 8);
  v11 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v3 = (v11 + *(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v12 = *(v1 + v3);
  v13 = *(v1 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v4 = swift_task_alloc();
  *(v7 + 24) = v4;
  *v4 = *(v7 + 16);
  v4[1] = sub_225F3E5DC;

  return sub_225FD1D04(a1, v8, v9, v10, v1 + v11, v12);
}

uint64_t sub_22602011C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225FD4758(a1, v6, v7, v8);
}

void *sub_226020208(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786928, &qword_2260A0888);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A18, &qword_2260A0A08);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_22602033C()
{
  v2 = qword_280D76728;
  if (!qword_280D76728)
  {
    sub_2260996F8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76728);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2260203BC()
{
  v2 = qword_280D76770;
  if (!qword_280D76770)
  {
    sub_226098E98();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76770);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22602043C()
{
  v2 = qword_280D76650;
  if (!qword_280D76650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D786A58, &qword_2260A0A98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76650);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2260204C4()
{
  v2 = qword_280D765A8;
  if (!qword_280D765A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D786A70, &qword_2260A0AA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D765A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22602054C()
{
  v2 = qword_280D76668;
  if (!qword_280D76668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D786A80, &qword_2260A0AB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76668);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2260205D4()
{
  v2 = qword_27D786AB0;
  if (!qword_27D786AB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786AB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22602064C()
{
  v2 = qword_27D786B10;
  if (!qword_27D786B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786AC8, &qword_2260A0AE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786B10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2260206D4()
{
  v2 = qword_27D786B20;
  if (!qword_27D786B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786B18, &qword_2260A0B48);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786B20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22602075C()
{
  v2 = qword_27D786B28;
  if (!qword_27D786B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786AB8, &qword_2260A0AD8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786B28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2260207E4()
{
  v2 = qword_280D76340;
  if (!qword_280D76340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786AD8, &qword_2260A0AF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76340);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22602086C()
{
  v2 = qword_280D76350;
  if (!qword_280D76350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786B38, &qword_2260A0B68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76350);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2260208F4()
{
  v2 = qword_280D76F18;
  if (!qword_280D76F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786AD0, &qword_2260A0AF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76F18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22602097C()
{
  v2 = qword_27D786B48;
  if (!qword_27D786B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786AF8, &qword_2260A0B18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786B48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_226020A04()
{
  v2 = qword_27D786B50;
  if (!qword_27D786B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786B00, &qword_2260A0B20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786B50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_226020A8C()
{
  v2 = qword_27D786B60;
  if (!qword_27D786B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786B58, &qword_2260A0B90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786B60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_226020B14()
{
  v2 = qword_27D786B68;
  if (!qword_27D786B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786AE0, &qword_2260A0B00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786B68);
    return WitnessTable;
  }

  return v2;
}

void *sub_226020B9C(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t sub_226020CAC(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v12 = v1[4];
  v7 = v1[5];
  v3 = *(sub_22609A198() - 8);
  v11 = (*(v3 + 80) + 136) & ~*(v3 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[11];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_225F3E5DC;

  return sub_226007898(a1, v8, v9, (v1 + 6), v10, (v1 + 12), v1 + v11, v12);
}

uint64_t sub_226020DF4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225FDFD38(a1, v6);
}

uint64_t sub_226020EB4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[8];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225FE2F2C(a1, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_226020FBC(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = v1[5];
  v15 = v1[6];
  v16 = v1[7];
  v17 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = v1[13];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225FE6F48(a1, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_226021118(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225FEADC4(a1, v6);
}

uint64_t sub_2260211D8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225FF0FE8(a1, v6);
}

uint64_t sub_226021298(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225FF3930(a1, v6);
}

uint64_t sub_226021358()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_225F3E5DC;

  return sub_225FF5CF0();
}

uint64_t sub_226021424()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_225F3E5DC;

  return sub_225FF5CF0();
}

uint64_t sub_2260214F0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225FF6DC8(a1, v6);
}

uint64_t sub_2260215BC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2260215F0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_226021624()
{
  v2 = qword_27D786B98;
  if (!qword_27D786B98)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786B98);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_226021688(const void *a1, void *a2)
{
  v6 = sub_226098A08();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786BA0, &unk_2260A0640);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_2260217B0(const void *a1, void *a2)
{
  v7 = sub_226098A08();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786BA0, &unk_2260A0640);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786BA0, &unk_2260A0640);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_2260219D8(uint64_t a1)
{
  v3 = sub_226098A08();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_226021A80(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_225F3E5DC;

  return sub_226001320(a1, v5);
}

void *sub_226021B80(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  v5 = *a1;
  sub_22609A1B8();
  result = a1;
  *a1 = v5 + 8;
  return result;
}

uint64_t sub_226021BF8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_22600188C(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_226021CE8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_226004560();
}

uint64_t sub_226021CF4(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786950, &qword_2260A08A8);
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {
    v1 = sub_226098A78();
    (*(*(v1 - 8) + 8))(a1);
    v2 = *(a1 + *(v5 + 48) + 8);
  }

  return a1;
}

uint64_t sub_226021DC0(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786BE0, &qword_2260A0CD0);
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {
    v1 = sub_226098A78();
    (*(*(v1 - 8) + 8))(a1);
    v2 = *(a1 + *(v5 + 48) + 8);
  }

  return a1;
}

uint64_t sub_226021E8C()
{
  v5 = v1;
  *(v1 + 16) = v1;
  v2 = *(sub_226098A78() - 8);
  v8 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v9 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_2260046AC(v9, v6, v7, v0 + v8);
}

uint64_t sub_226021FA4(uint64_t a1, uint64_t a2)
{
  v8 = sub_226098FA8();
  v9 = *(*(v8 - 8) + 16);
  v9(a2, a1);
  v10 = type metadata accessor for CombinedTranscriberOutput();
  v11 = v10[5];
  v13 = sub_226099458();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if ((v15)(a1 + v11, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    memcpy((a2 + v11), (a1 + v11), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v14 + 16))();
    (*(v14 + 56))(a2 + v11, 0, 1, v13);
  }

  (v9)(a2 + v10[6], a1 + v10[6], v8);
  __dst = (a2 + v10[7]);
  __src = (a1 + v10[7]);
  if (v15())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v14 + 16))(__dst, __src, v13);
    (*(v14 + 56))(__dst, 0, 1, v13);
  }

  return a2;
}

uint64_t sub_226022294(uint64_t a1, uint64_t a2)
{
  v8 = sub_226098FA8();
  v9 = *(*(v8 - 8) + 32);
  v9(a2, a1);
  v10 = type metadata accessor for CombinedTranscriberOutput();
  v11 = v10[5];
  v13 = sub_226099458();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if ((v15)(a1 + v11, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    memcpy((a2 + v11), (a1 + v11), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v14 + 32))();
    (*(v14 + 56))(a2 + v11, 0, 1, v13);
  }

  (v9)(a2 + v10[6], a1 + v10[6], v8);
  __dst = (a2 + v10[7]);
  __src = (a1 + v10[7]);
  if (v15())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v14 + 32))(__dst, __src, v13);
    (*(v14 + 56))(__dst, 0, 1, v13);
  }

  return a2;
}

uint64_t sub_226022584(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for CombinedTranscriberOutput() - 8);
  v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_225F3E5DC;

  return sub_226012060(a1, v7, v1 + v8);
}

uint64_t sub_22602268C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_22600E73C(a1, v6, v7, v8);
}

uint64_t sub_226022764(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(sub_226099328() - 8);
  v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_225F3E5DC;

  return sub_2260161B8(a1, v7, v1 + v8);
}

uint64_t sub_22602286C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_226016B18(a1, v6, v7);
}

uint64_t sub_226022950(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_2260998E8();
  result = a1;
  *a1 = v4;
  *(a1 + 8) = *(a2 + 8);
  return result;
}

uint64_t *sub_2260229B4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  sub_2260998E8();
  v2 = *a1;
  *a1 = v4;

  result = a1;
  *(a1 + 8) = *(a2 + 8);
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t *sub_226022A1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = *a2;

  result = a1;
  *(a1 + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_226022A64(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 9))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_226022BAC(void *result, int a2, int a3)
{
  v3 = result;
  v4 = result + 9;
  if (a2 < 0)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 + 0x80000000;
    if (a3 < 0)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

void *sub_226022D70(uint64_t *a1, void *a2)
{
  v4 = *a1;
  swift_unknownObjectRetain();
  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_226022DFC(uint64_t a1)
{
  v3 = sub_226099258();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_226022EA4(const void *a1, void *a2)
{
  v6 = sub_226099258();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786C60, &qword_2260A0DD8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_226022FCC(uint64_t a1)
{
  v3 = sub_226098E68();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_226023074(uint64_t a1)
{
  v3 = sub_226099288();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_22602311C(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  sub_2260998E8();
  a2[1] = v4;
  v2 = a1[5];
  a2[5] = v2;
  (**(v2 - 8))((a2 + 2), (a1 + 2));
  return a2;
}

uint64_t sub_2260231A4(uint64_t a1)
{
  v1 = *(a1 + 8);

  __swift_destroy_boxed_opaque_existential_0((a1 + 16));
  return a1;
}

void *sub_2260231DC(void *a1)
{
  MEMORY[0x277D82BD8](*a1);
  MEMORY[0x277D82BD8](a1[1]);
  return a1;
}

void *sub_226023224(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  result = a2;
  *a2 = v3;
  return result;
}

unint64_t sub_226023264()
{
  v2 = qword_280D765D0;
  if (!qword_280D765D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786478, &unk_2260A0DF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D765D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_226023348()
{
  v2 = qword_27D786C88;
  if (!qword_27D786C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786B08, &qword_2260A0B30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786C88);
    return WitnessTable;
  }

  return v2;
}

void *sub_2260233D0(void *a1, void *a2)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786C90, &qword_2260A0E10);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786C80, &qword_2260A0E08);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v5 = a1[1];
    sub_2260998E8();
    a2[1] = v5;
    v7 = a2 + *(v10 + 48);
    v6 = a1 + *(v10 + 48);
    v2 = sub_226098FA8();
    (*(*(v2 - 8) + 16))(v7, v6);
    (*(v11 + 56))(a2, 0, 1, v10);
  }

  return a2;
}

uint64_t sub_226023554(uint64_t a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786C90, &qword_2260A0E10);
  if (!(*(*(v6 - 8) + 48))(a1, 1))
  {
    v1 = *(a1 + 8);

    v4 = a1 + *(v6 + 48);
    v2 = sub_226098FA8();
    (*(*(v2 - 8) + 8))(v4);
  }

  return a1;
}

uint64_t sub_226023630()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_226011F98();
}

unint64_t sub_22602363C()
{
  v2 = qword_27D786CA8;
  if (!qword_27D786CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786CA0, &unk_2260A0E20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786CA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_226023770(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_226006178(a1, v6, v7, v8, v9);
}

void *sub_226023860(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_2260238C0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225FEC990(a1, v6, v7, v8, v9);
}

unint64_t sub_2260239A4()
{
  v2 = qword_27D786CE8;
  if (!qword_27D786CE8)
  {
    sub_226099158();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786CE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_226023A24(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v12 = v2[2];
  v13 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_225F3E5DC;

  return sub_226007DEC(a1, a2, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_226023B28(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

uint64_t sub_226023BCC()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v8 = v0[4];
  v9 = v0[5];
  v6 = (*(*(v8 - 8) + 80) + 48) & ~*(*(v8 - 8) + 80);
  v10 = v0[2];
  v5 = v0[3];
  v7 = *(v0 + ((v6 + *(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_225F3E5DC;

  return sub_22600C890(v10, v5, v0 + v6, v7, v8, v9);
}

uint64_t sub_226023D5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_226023DC8()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[9];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_225F3E5DC;

  return sub_22600ADC0(v7, v5, (v0 + 4), v6);
}

uint64_t sub_226023E9C()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[9];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_225F3E5DC;

  return sub_226008DE4(v7, v5, (v0 + 4), v6);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_226023FF0(uint64_t a1)
{
  v10 = type metadata accessor for CombinedTranscriberOutput();
  if (!(*(*(v10 - 1) + 48))(a1, 1))
  {
    v3 = sub_226098FA8();
    v4 = *(*(v3 - 8) + 8);
    v4(a1);
    v5 = a1 + v10[5];
    v6 = sub_226099458();
    v7 = *(v6 - 8);
    v8 = *(v7 + 48);
    if (!(v8)(v5, 1))
    {
      (*(v7 + 8))(v5, v6);
    }

    (v4)(a1 + v10[6], v3);
    v2 = a1 + v10[7];
    if (!v8())
    {
      (*(v7 + 8))(v2, v6);
    }
  }

  return a1;
}

uint64_t sub_2260241DC(uint64_t a1)
{
  v3 = sub_226098FA8();
  v4 = *(*(v3 - 8) + 8);
  v4(a1);
  v5 = type metadata accessor for CombinedTranscriberOutput();
  v6 = v5[5];
  v8 = sub_226099458();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!(v10)(a1 + v6, 1))
  {
    (*(v9 + 8))(a1 + v6, v8);
  }

  (v4)(a1 + v5[6], v3);
  v2 = a1 + v5[7];
  if (!v10())
  {
    (*(v9 + 8))(v2, v8);
  }

  return a1;
}

uint64_t sub_226024390(uint64_t a1)
{
  v3 = sub_226099328();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_226024438(uint64_t a1, uint64_t a2)
{
  v6 = *(*(sub_226098FA8() - 8) + 16);
  (v6)(a2, a1);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B40, &qword_2260A0B78);
  v4 = *(v11 + 48);
  v9 = sub_226099458();
  v10 = *(*(v9 - 8) + 16);
  v10(a2 + v4, a1 + v4);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D08, &qword_2260A0ED8);
  v7 = a2 + *(v2 + 48);
  v8 = a1 + *(v2 + 48);
  v6();
  (v10)(v7 + *(v11 + 48), v8 + *(v11 + 48), v9);
  return a2;
}

uint64_t sub_2260245B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_226098FA8();
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B40, &qword_2260A0B78) + 48);
  v3 = sub_226099458();
  (*(*(v3 - 8) + 16))(a2 + v5, a1 + v5);
  return a2;
}

uint64_t sub_22602468C(uint64_t a1, uint64_t a2)
{
  v5 = sub_226098FA8();
  v6 = *(*(v5 - 8) + 16);
  v6(a2, a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D10, &qword_2260A0EE0);
  (v6)(a2 + *(v2 + 48), a1 + *(v2 + 48), v5);
  return a2;
}

uint64_t sub_226024748(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225FFB84C(a1, v6, v7);
}

unint64_t sub_226024834()
{
  v2 = qword_280D764E8;
  if (!qword_280D764E8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D764E8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_2260248A0()
{
  v2 = qword_27D786D18;
  if (!qword_27D786D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D785E58, &unk_2260A0950);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786D18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_226024928()
{
  v2 = qword_27D786D28;
  if (!qword_27D786D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786D20, &qword_2260A0F00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786D28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2260249B0()
{
  v2 = qword_27D786D40;
  if (!qword_27D786D40)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786D40);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_226024A14()
{
  v2 = qword_27D786D48;
  if (!qword_27D786D48)
  {
    sub_2260249B0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786D48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_226024A94(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225FF9788(a1, v6, v7);
}

void *sub_226024B60(void *result, char a2, uint64_t a3)
{
  if (a3)
  {
    sub_226024BB4(result, a2 & 1);
    return sub_2260998E8();
  }

  return result;
}

id sub_226024BB4(void *a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void *sub_226024BF4(void *result, char a2, uint64_t a3)
{
  if (a3)
  {
    sub_226024C48(result, a2 & 1);
  }

  return result;
}

void sub_226024C48(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void *sub_226024CB8(const void *a1, void *a2)
{
  v6 = sub_226098D98();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786988, &qword_2260A08E8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_226024DE0(const void *a1, void *a2)
{
  v6 = sub_226098D98();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786988, &qword_2260A08E8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_226024F08(uint64_t a1)
{
  v3 = sub_226098D98();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_226024FB0()
{
  v2 = qword_280D763A0;
  if (!qword_280D763A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D763A0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_226025014(uint64_t a1)
{
  v8 = v2;
  *(v2 + 16) = v2;
  v6 = *(sub_2260997E8() - 8);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v7 = v10 + *(v6 + 64);
  v3 = sub_226098A78();
  v11 = (v7 + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v9 = *(v1 + 16);
  v12 = *(v1 + ((v11 + *(*(v3 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = swift_task_alloc();
  *(v8 + 24) = v4;
  *v4 = *(v8 + 16);
  v4[1] = sub_225F3E5DC;

  return sub_225FC0298(a1, v9, v1 + v10, v1 + v11, v12);
}

uint64_t sub_2260251D0(uint64_t a1)
{
  v7 = v2;
  *(v2 + 16) = v2;
  v6 = *(sub_2260997E8() - 8);
  v11 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v3 = (v11 + *(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v12 = *(v1 + v3);
  v13 = *(v1 + v3 + 8);
  v14 = *(v1 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8));
  v4 = swift_task_alloc();
  *(v7 + 24) = v4;
  *v4 = *(v7 + 16);
  v4[1] = sub_225F3E5DC;

  return sub_225FC2CBC(a1, v8, v9, v10, v1 + v11, v12, v13);
}

unint64_t sub_226025354()
{
  v2 = qword_280D76758;
  if (!qword_280D76758)
  {
    sub_226099078();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76758);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2260253D4(uint64_t a1)
{
  if (*(a1 + 16) != 1)
  {
    if (*(a1 + 8) != 255)
    {
      sub_226024C48(*a1, *(a1 + 8) & 1);
    }

    v1 = *(a1 + 16);
  }

  return a1;
}

id sub_226025444(id result, unsigned __int8 a2)
{
  if (a2 != 255)
  {
    return sub_226024BB4(result, a2 & 1);
  }

  return result;
}

void sub_22602548C(void *a1, unsigned __int8 a2)
{
  if (a2 != 255)
  {
    sub_226024C48(a1, a2 & 1);
  }
}

uint64_t sub_2260254D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_226024C48(*a1, *(a1 + 8) & 1);
    v1 = *(a1 + 16);
  }

  return a1;
}

uint64_t sub_226025528(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_226025568()
{
  v2 = qword_280D76528;
  if (!qword_280D76528)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76528);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_226025608()
{
  v2 = qword_280D76500;
  if (!qword_280D76500)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76500);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_22602566C()
{
  v2 = qword_280D76738;
  if (!qword_280D76738)
  {
    sub_2260994D8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76738);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2260256EC()
{
  v2 = qword_280D76750;
  if (!qword_280D76750)
  {
    sub_226099378();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76750);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_22602576C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225F9EC40(a1, v6);
}

void *sub_226025838(uint64_t *a1, void *a2)
{
  v4 = *a1;
  sub_2260998E8();
  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_2260258F0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  sub_2260998E8();
  result = a2;
  *a2 = v4;
  *(a2 + 8) = *(a1 + 8);
  return result;
}

void *CESRAsrReplayWorkerConfig.init(audio:language:taskHint:useBaseProfile:profileData:requestEntityStrings:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, unint64_t a10, uint64_t a11)
{
  v39 = a9;
  v34 = a1;
  v35 = a2;
  v26 = a3;
  v33 = a4;
  v27 = a5;
  v32 = a6;
  v28 = a7;
  v30 = a8;
  v31 = a10;
  v29 = a11;
  v36 = __b;
  v38 = 96;
  memset(__b, 0, sizeof(__b));
  v46 = v34;
  v47 = v35;
  v44 = v26;
  v45 = v33;
  v42 = v27;
  v43 = v32;
  v41 = v28 & 1;
  v40[13] = v30;
  v40[14] = a10;
  v40[12] = a11;
  v23 = sub_226098A78();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v19 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23, v11, v12, v13);
  v22 = &v18 - v19;
  sub_226098A68();
  v24 = sub_226098A28();
  v25 = v14;
  (*(v20 + 8))(v22, v23);
  __b[0] = v24;
  __b[1] = v25;
  __b[9] = 0;
  __b[10] = 0xF000000000000000;
  sub_226025C4C(v34, v35);
  __b[2] = v34;
  __b[3] = v35;
  sub_2260998E8();
  __b[4] = v26;
  __b[5] = v33;
  sub_2260998E8();
  __b[6] = v27;
  __b[7] = v32;
  LOBYTE(__b[8]) = v28;
  sub_226025C4C(v30, v31);
  v15 = __b[9];
  v16 = __b[10];
  __b[9] = v30;
  __b[10] = v31;
  sub_225F4C1F8(v15, v16);
  sub_2260998E8();
  __b[11] = v29;
  v37 = __dst;
  memcpy(__dst, v36, v38);
  sub_225F4C240(v37, v40);

  sub_225F4C1F8(v30, v31);

  sub_225F4C1F8(v34, v35);
  sub_225F4C4A4(v36);
  return memcpy(v39, v37, v38);
}

uint64_t sub_226025C4C(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_225EF5A38(result, a2);
  }

  return result;
}

uint64_t sub_226025D3C()
{
  v1 = sub_226098C58();
  __swift_allocate_value_buffer(v1, qword_27D786D90);
  __swift_project_value_buffer(v1, qword_27D786D90);
  return sub_226025D88();
}

uint64_t sub_226025D88()
{
  AFLogInitIfNeeded();
  v1 = MEMORY[0x277CEF0E8];
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  if (!v2)
  {
    sub_22609A3B8();
    __break(1u);
  }

  return sub_226098C68();
}

uint64_t sub_226025E84()
{
  if (qword_27D785DA8 != -1)
  {
    swift_once();
  }

  v0 = sub_226098C58();
  return __swift_project_value_buffer(v0, qword_27D786D90);
}

CoreEmbeddedSpeechRecognition::CESRAsrReplayWorkerError_optional __swiftcall CESRAsrReplayWorkerError.init(rawValue:)(Swift::String rawValue)
{
  sub_22609A4F8();
  *v1 = "The audio file could not be found.";
  *(v1 + 8) = 34;
  *(v1 + 16) = 2;
  *(v1 + 24) = "The specified locale is not valid.";
  *(v1 + 32) = 34;
  *(v1 + 40) = 2;
  *(v1 + 48) = "The asset is not available on device.";
  *(v1 + 56) = 37;
  *(v1 + 64) = 2;
  sub_225EF5418();
  v5 = sub_22609A478();

  switch(v5)
  {
    case 0:
      v4.value = CoreEmbeddedSpeechRecognition_CESRAsrReplayWorkerError_noAudio;
LABEL_8:

      return v4;
    case 1:
      v4.value = CoreEmbeddedSpeechRecognition_CESRAsrReplayWorkerError_noValidLocale;
      goto LABEL_8;
    case 2:
      v4.value = CoreEmbeddedSpeechRecognition_CESRAsrReplayWorkerError_noAsset;
      goto LABEL_8;
  }

  return 3;
}

CoreEmbeddedSpeechRecognition::CESRAsrReplayWorkerError_optional sub_226026280@<W0>(Swift::String *a1@<X0>, CoreEmbeddedSpeechRecognition::CESRAsrReplayWorkerError_optional *a2@<X8>)
{
  result.value = CESRAsrReplayWorkerError.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_2260262B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = CESRAsrReplayWorkerError.rawValue.getter();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t CESRAsrReplayWorkerConfig.replayId.getter()
{
  v2 = *v0;
  v3 = v0[1];
  sub_2260998E8();
  return v2;
}

uint64_t sub_226026388()
{
  v2 = *(v0 + 16);
  sub_226025C4C(v2, *(v0 + 24));
  return v2;
}

uint64_t CESRAsrReplayWorkerConfig.taskHint.getter()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  sub_2260998E8();
  return v2;
}

uint64_t sub_22602640C()
{
  v2 = *(v0 + 72);
  sub_226025C4C(v2, *(v0 + 80));
  return v2;
}

uint64_t sub_226026444(uint64_t a1, unint64_t a2)
{
  sub_226025C4C(a1, a2);
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  sub_225F4C1F8(v3, v4);
  return sub_225F4C1F8(a1, a2);
}

uint64_t sub_226026494()
{
  v2 = *(v0 + 88);
  sub_2260998E8();
  return v2;
}

uint64_t sub_2260264C0(uint64_t a1)
{
  sub_2260998E8();
  v2 = *(v1 + 88);
  *(v1 + 88) = a1;
}

void *sub_2260264FC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  memcpy(__dst, (v1 + 16), sizeof(__dst));
  sub_225F4C240(__dst, v4);
  swift_endAccess();
  return memcpy(a1, __dst, 0x60uLL);
}

void *sub_226026584(void *a1)
{
  sub_225F4C240(a1, v4);
  swift_beginAccess();
  sub_2260266A4(a1, v1 + 16);
  swift_endAccess();
  return sub_225F4C4A4(a1);
}

uint64_t CESRAsrReplayWorker.init(config:)(void *a1)
{
  v6 = 0;
  v7 = a1;
  sub_225F4C240(a1, v5);
  memcpy((v1 + 16), a1, 0x60uLL);
  sub_225F4C4A4(a1);
  return v4;
}

uint64_t sub_2260266A4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  *(a2 + 8) = v2;

  if ((*(a2 + 24) & 0xF000000000000000) == 0xF000000000000000)
  {
    *(a2 + 16) = *(a1 + 16);
  }

  else if ((*(a1 + 24) & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_225EFE800(a2 + 16);
    *(a2 + 16) = *(a1 + 16);
  }

  else
  {
    v4 = *(a1 + 24);
    v5 = *(a2 + 16);
    v6 = *(a2 + 24);
    *(a2 + 16) = *(a1 + 16);
    *(a2 + 24) = v4;
    sub_225EF5990(v5, v6);
  }

  *(a2 + 32) = *(a1 + 32);
  v7 = *(a2 + 40);
  *(a2 + 40) = *(a1 + 40);

  *(a2 + 48) = *(a1 + 48);
  v8 = *(a2 + 56);
  *(a2 + 56) = *(a1 + 56);

  *(a2 + 64) = *(a1 + 64);
  if ((*(a2 + 80) & 0xF000000000000000) == 0xF000000000000000)
  {
    *(a2 + 72) = *(a1 + 72);
  }

  else if ((*(a1 + 80) & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_225EFE800(a2 + 72);
    *(a2 + 72) = *(a1 + 72);
  }

  else
  {
    v9 = *(a1 + 80);
    v10 = *(a2 + 72);
    v11 = *(a2 + 80);
    *(a2 + 72) = *(a1 + 72);
    *(a2 + 80) = v9;
    sub_225EF5990(v10, v11);
  }

  v12 = *(a2 + 88);
  *(a2 + 88) = *(a1 + 88);

  return a2;
}

uint64_t CESRAsrReplayWorker.runTranscription()()
{
  v1[13] = v0;
  v1[4] = v1;
  v1[5] = 0;
  v1[6] = 0;
  v1[7] = 0;
  v1[8] = 0;
  v1[2] = 0;
  v1[3] = 0;
  v2 = sub_226098C58();
  v1[14] = v2;
  v5 = *(v2 - 8);
  v1[15] = v5;
  v6 = *(v5 + 64);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[5] = v0;
  v3 = v1[4];

  return MEMORY[0x2822009F8](sub_226026A30, 0, 0);
}

uint64_t sub_226026A30()
{
  v36 = v0;
  *(v0 + 32) = v0;
  if (sub_226099E58())
  {
    v1 = v30[20];
    v21 = v30[14];
    v22 = v30[13];
    v20 = v30[15];
    v2 = sub_226025E84();
    (*(v20 + 16))(v1, v2, v21);

    v28 = sub_226098C48();
    v29 = sub_22609A078();
    v24 = swift_allocObject();
    *(v24 + 16) = 32;
    v25 = swift_allocObject();
    *(v25 + 16) = 8;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_22602EE94;
    *(v23 + 24) = v22;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_225EF7B84;
    *(v26 + 24) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v27 = v3;

    *v27 = sub_225EF7434;
    v27[1] = v24;

    v27[2] = sub_225EF7434;
    v27[3] = v25;

    v27[4] = sub_225EF7B90;
    v27[5] = v26;
    sub_225EF5418();

    if (os_log_type_enabled(v28, v29))
    {
      buf = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v18 = sub_225EF5468(0);
      v19 = sub_225EF5468(1);
      v31 = buf;
      v32 = v18;
      v33 = v19;
      sub_225EF54BC(2, &v31);
      sub_225EF54BC(1, &v31);
      v34 = sub_225EF7434;
      v35 = v24;
      sub_225EF73E8(&v34, &v31, &v32, &v33);
      v34 = sub_225EF7434;
      v35 = v25;
      sub_225EF73E8(&v34, &v31, &v32, &v33);
      v34 = sub_225EF7B90;
      v35 = v26;
      sub_225EF73E8(&v34, &v31, &v32, &v33);
      _os_log_impl(&dword_225EEB000, v28, v29, "ReplayId: %s asked to stop.", buf, 0xCu);
      sub_225EF7AF4(v18);
      sub_225EF7AF4(v19);
      sub_22609A168();
    }

    else
    {
    }

    v11 = v30[20];
    v12 = v30[14];
    v10 = v30[15];
    MEMORY[0x277D82BD8](v28);
    (*(v10 + 8))(v11, v12);
    sub_226099D58();
    sub_225F7D2F0();
    swift_allocError();
    sub_226099858();
    swift_willThrow();
    v4 = v30[20];
    v13 = v30[19];
    v14 = v30[18];
    v15 = v30[17];
    v16 = v30[16];

    v5 = *(v30[4] + 8);
    v6 = v30[4];

    return v5();
  }

  else
  {
    v8 = swift_task_alloc();
    v30[21] = v8;
    *v8 = v30[4];
    v8[1] = sub_2260270F0;
    v9 = v30[13];

    return sub_22602920C();
  }
}

uint64_t sub_2260270F0(uint64_t a1)
{
  v10 = *v2;
  v4 = *(*v2 + 168);
  v10[4] = *v2;
  v11 = v10 + 4;
  v10[22] = a1;
  v10[23] = v1;

  if (v1)
  {
    v8 = *v11;

    return MEMORY[0x2822009F8](sub_226028340, 0, 0);
  }

  else
  {
    v10[7] = a1;
    v5 = swift_task_alloc();
    v10[24] = v5;
    *v5 = *v11;
    v5[1] = sub_2260272C8;
    v6 = v10[13];

    return sub_22602AA08(a1);
  }
}

uint64_t sub_2260272C8(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 192);
  v9[4] = *v2;
  v10 = v9 + 4;
  v9[25] = a1;
  v9[26] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = sub_2260289A8;
  }

  else
  {
    v5 = *v10;
    v6 = sub_226027438;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226027438()
{
  v76 = v0;
  v1 = v0[25];
  v52 = v0[19];
  v55 = v0[15];
  v56 = v0[14];
  v58 = v0[13];
  v0[4] = v0;
  v0[8] = v1;
  v53 = sub_22602D2B4(v1);
  v54 = v2;
  v0[2] = v53;
  v0[3] = v2;
  v3 = sub_226025E84();
  v57 = *(v55 + 16);
  v57(v52, v3, v56);

  v64 = sub_226098C48();
  v65 = sub_22609A078();
  v60 = swift_allocObject();
  *(v60 + 16) = 32;
  v61 = swift_allocObject();
  *(v61 + 16) = 8;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_22602EE94;
  *(v59 + 24) = v58;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_225EF7B84;
  *(v62 + 24) = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v63 = v4;

  *v63 = sub_225EF7434;
  v63[1] = v60;

  v63[2] = sub_225EF7434;
  v63[3] = v61;

  v63[4] = sub_225EF7B90;
  v63[5] = v62;
  sub_225EF5418();

  if (os_log_type_enabled(v64, v65))
  {
    v5 = *(v51 + 208);
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v49 = sub_225EF5468(0);
    v50 = sub_225EF5468(1);
    v71 = buf;
    v72 = v49;
    v73 = v50;
    sub_225EF54BC(2, &v71);
    sub_225EF54BC(1, &v71);
    v74 = sub_225EF7434;
    v75 = v60;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    if (v5)
    {
    }

    v74 = sub_225EF7434;
    v75 = v61;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7B90;
    v75 = v62;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    _os_log_impl(&dword_225EEB000, v64, v65, "ReplayId: %s", buf, 0xCu);
    sub_225EF7AF4(v49);
    sub_225EF7AF4(v50);
    sub_22609A168();

    v47 = 0;
  }

  else
  {

    v47 = *(v51 + 208);
  }

  v36 = *(v51 + 152);
  v7 = *(v51 + 144);
  v38 = *(v51 + 112);
  v35 = *(v51 + 120);
  MEMORY[0x277D82BD8](v64);
  v37 = *(v35 + 8);
  v37(v36, v38);
  v8 = sub_226025E84();
  v57(v7, v8, v38);
  sub_2260998E8();
  v39 = swift_allocObject();
  *(v39 + 16) = v53;
  *(v39 + 24) = v54;
  oslog = sub_226098C48();
  v46 = sub_22609A078();
  v41 = swift_allocObject();
  *(v41 + 16) = 32;
  v42 = swift_allocObject();
  *(v42 + 16) = 8;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_22602EE9C;
  *(v40 + 24) = v39;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_225EF7B84;
  *(v43 + 24) = v40;
  sub_22609A4F8();
  v44 = v9;

  *v44 = sub_225EF7434;
  v44[1] = v41;

  v44[2] = sub_225EF7434;
  v44[3] = v42;

  v44[4] = sub_225EF7B90;
  v44[5] = v43;
  sub_225EF5418();

  if (os_log_type_enabled(oslog, v46))
  {
    v32 = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v33 = sub_225EF5468(0);
    v34 = sub_225EF5468(1);
    v66 = v32;
    v67 = v33;
    v68 = v34;
    sub_225EF54BC(2, &v66);
    sub_225EF54BC(1, &v66);
    v69 = sub_225EF7434;
    v70 = v41;
    sub_225EF73E8(&v69, &v66, &v67, &v68);
    if (v47)
    {
    }

    v69 = sub_225EF7434;
    v70 = v42;
    sub_225EF73E8(&v69, &v66, &v67, &v68);
    v69 = sub_225EF7B90;
    v70 = v43;
    sub_225EF73E8(&v69, &v66, &v67, &v68);
    _os_log_impl(&dword_225EEB000, oslog, v46, "Transcript: %s", v32, 0xCu);
    sub_225EF7AF4(v33);
    sub_225EF7AF4(v34);
    sub_22609A168();

    v31 = 0;
  }

  else
  {

    v31 = v47;
  }

  v26 = *(v51 + 144);
  v10 = *(v51 + 136);
  v27 = *(v51 + 112);
  MEMORY[0x277D82BD8](oslog);
  v37(v26, v27);
  v11 = sub_226025E84();
  v57(v10, v11, v27);
  log = sub_226098C48();
  v28 = sub_22609A0A8();
  v30 = sub_22609A4F8();
  if (os_log_type_enabled(log, v28))
  {
    v22 = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v23 = sub_225EF5468(0);
    v24 = sub_225EF5468(0);
    *(v51 + 72) = v22;
    *(v51 + 80) = v23;
    *(v51 + 88) = v24;
    sub_225EF54BC(0, (v51 + 72));
    sub_225EF54BC(0, (v51 + 72));
    *(v51 + 96) = v30;
    v25 = swift_task_alloc();
    v25[2] = v51 + 72;
    v25[3] = v51 + 80;
    v25[4] = v51 + 88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    if (v31)
    {
    }

    _os_log_impl(&dword_225EEB000, log, v28, "Finished running ASR Replay transcription.", v22, 2u);
    sub_225EF7AF4(v23);
    sub_225EF7AF4(v24);
    sub_22609A168();
  }

  else
  {
  }

  v15 = *(v51 + 200);
  v16 = *(v51 + 176);
  v17 = *(v51 + 160);
  v18 = *(v51 + 152);
  v19 = *(v51 + 144);
  v20 = *(v51 + 136);
  v21 = *(v51 + 128);
  v14 = *(v51 + 112);
  MEMORY[0x277D82BD8](log);
  v37(v20, v14);

  v12 = *(*(v51 + 32) + 8);
  v13 = *(v51 + 32);

  return v12(v53, v54);
}

uint64_t sub_226028340()
{
  v37 = v0;
  v0[4] = v0;
  v23 = v0[23];
  v1 = v0[16];
  v21 = v0[15];
  v22 = v0[14];
  v2 = v23;
  v0[6] = v23;
  v3 = sub_226025E84();
  (*(v21 + 16))(v1, v3, v22);
  v4 = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  v30 = sub_226098C48();
  v31 = sub_22609A098();
  v26 = swift_allocObject();
  *(v26 + 16) = 32;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_22602A774;
  *(v25 + 24) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_225EF7B84;
  *(v28 + 24) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v29 = v5;

  *v29 = sub_225EF7434;
  v29[1] = v26;

  v29[2] = sub_225EF7434;
  v29[3] = v27;

  v29[4] = sub_225EF7B90;
  v29[5] = v28;
  sub_225EF5418();

  if (os_log_type_enabled(v30, v31))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v18 = sub_225EF5468(0);
    v19 = sub_225EF5468(1);
    v32 = buf;
    v33 = v18;
    v34 = v19;
    sub_225EF54BC(2, &v32);
    sub_225EF54BC(1, &v32);
    v35 = sub_225EF7434;
    v36 = v26;
    sub_225EF73E8(&v35, &v32, &v33, &v34);
    v35 = sub_225EF7434;
    v36 = v27;
    sub_225EF73E8(&v35, &v32, &v33, &v34);
    v35 = sub_225EF7B90;
    v36 = v28;
    sub_225EF73E8(&v35, &v32, &v33, &v34);
    _os_log_impl(&dword_225EEB000, v30, v31, "Task interrupted: %s", buf, 0xCu);
    sub_225EF7AF4(v18);
    sub_225EF7AF4(v19);
    sub_22609A168();
  }

  else
  {
  }

  v11 = v20[16];
  v12 = v20[14];
  v10 = v20[15];
  MEMORY[0x277D82BD8](v30);
  (*(v10 + 8))(v11, v12);
  swift_willThrow();

  v6 = v20[20];
  v13 = v20[19];
  v14 = v20[18];
  v15 = v20[17];
  v16 = v20[16];

  v7 = *(v20[4] + 8);
  v8 = v20[4];

  return v7();
}

uint64_t sub_2260289A8()
{
  v38 = v0;
  v1 = v0[22];
  v0[4] = v0;

  v24 = v0[26];
  v2 = v0[16];
  v22 = v0[15];
  v23 = v0[14];
  v3 = v24;
  v0[6] = v24;
  v4 = sub_226025E84();
  (*(v22 + 16))(v2, v4, v23);
  v5 = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  v31 = sub_226098C48();
  v32 = sub_22609A098();
  v27 = swift_allocObject();
  *(v27 + 16) = 32;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_22602A774;
  *(v26 + 24) = v25;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_225EF7B84;
  *(v29 + 24) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v30 = v6;

  *v30 = sub_225EF7434;
  v30[1] = v27;

  v30[2] = sub_225EF7434;
  v30[3] = v28;

  v30[4] = sub_225EF7B90;
  v30[5] = v29;
  sub_225EF5418();

  if (os_log_type_enabled(v31, v32))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v19 = sub_225EF5468(0);
    v20 = sub_225EF5468(1);
    v33 = buf;
    v34 = v19;
    v35 = v20;
    sub_225EF54BC(2, &v33);
    sub_225EF54BC(1, &v33);
    v36 = sub_225EF7434;
    v37 = v27;
    sub_225EF73E8(&v36, &v33, &v34, &v35);
    v36 = sub_225EF7434;
    v37 = v28;
    sub_225EF73E8(&v36, &v33, &v34, &v35);
    v36 = sub_225EF7B90;
    v37 = v29;
    sub_225EF73E8(&v36, &v33, &v34, &v35);
    _os_log_impl(&dword_225EEB000, v31, v32, "Task interrupted: %s", buf, 0xCu);
    sub_225EF7AF4(v19);
    sub_225EF7AF4(v20);
    sub_22609A168();
  }

  else
  {
  }

  v12 = v21[16];
  v13 = v21[14];
  v11 = v21[15];
  MEMORY[0x277D82BD8](v31);
  (*(v11 + 8))(v12, v13);
  swift_willThrow();

  v7 = v21[20];
  v14 = v21[19];
  v15 = v21[18];
  v16 = v21[17];
  v17 = v21[16];

  v8 = *(v21[4] + 8);
  v9 = v21[4];

  return v8();
}

uint64_t sub_22602901C(void *a1)
{
  swift_beginAccess();
  v10 = a1[2];
  v11 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[7];
  v6 = a1[9];
  v7 = a1[11];
  v8 = a1[12];
  v9 = a1[13];
  sub_2260998E8();
  sub_226025C4C(v3, v4);
  sub_2260998E8();
  sub_2260998E8();
  sub_226025C4C(v7, v8);
  sub_2260998E8();
  swift_endAccess();
  sub_2260998E8();

  sub_225F4C1F8(v3, v4);

  sub_225F4C1F8(v7, v8);

  return v10;
}

uint64_t sub_226029128(uint64_t a1, uint64_t a2)
{
  sub_2260998E8();
  v6 = a1;
  v7 = a2;
  if (a2)
  {
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = sub_226099AA8();
    v9 = v2;
  }

  return v8;
}

uint64_t sub_22602920C()
{
  v1[122] = v0;
  v1[116] = v1;
  v1[117] = 0;
  v1[119] = 0;
  v1[121] = 0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E30, &qword_2260A09D0) - 8) + 64) + 15;
  v1[123] = swift_task_alloc();
  v3 = sub_2260992A8();
  v1[124] = v3;
  v7 = *(v3 - 8);
  v1[125] = v7;
  v4 = *(v7 + 64) + 15;
  v1[126] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A50, &qword_2260A0A90) - 8) + 64);
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v1[117] = v0;
  v5 = v1[116];

  return MEMORY[0x2822009F8](sub_226029398, 0, 0);
}

uint64_t sub_226029398()
{
  v31 = *(v0 + 1024);
  v34 = *(v0 + 976);
  *(v0 + 928) = v0;
  v32 = sub_226098E68();
  v33 = *(*(v32 - 8) + 56);
  v33(v31, 1);
  swift_beginAccess();
  memcpy((v0 + 16), (v34 + 16), 0x60uLL);
  sub_225F4C240(v0 + 16, v0 + 112);
  swift_endAccess();
  v35 = *(v0 + 80);
  sub_225F4C4A4((v0 + 16));
  if (v35)
  {
    v24 = v30[122];
    v27 = objc_opt_self();
    swift_beginAccess();
    memcpy(v30 + 74, (v24 + 16), 0x60uLL);
    sub_225F4C240((v30 + 74), (v30 + 86));
    swift_endAccess();
    v25 = v30[78];
    v26 = v30[79];
    sub_2260998E8();
    sub_225F4C4A4(v30 + 74);
    v28 = sub_2260999F8();

    v29 = [v27 speechProfilePathsWithLanguage_];
    MEMORY[0x277D82BD8](v28);
    if (v29)
    {
      v22 = sub_226099C88();
      MEMORY[0x277D82BD8](v29);
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (!v23)
    {
      return sub_22609A3B8();
    }

    v30[119] = v23;
    v30[120] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
    v20 = sub_226098948();
    sub_225F3006C();
    v21 = sub_226099BF8();
    v19 = v30[128];
    v18 = v30[127];
    v30[121] = v21;
    v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0) - 8) + 64);
    v17 = swift_task_alloc();
    v15 = *(*(v20 - 8) + 56);
    v15(v17, 1);
    v16 = swift_task_alloc();
    (v15)(v16, 1, 1, v20);
    sub_225F49850();
    sub_225F49850();
    sub_225F49850();
    sub_225F49850();
    sub_226098DF8();

    (v33)(v18, 0, 1, v32);
    sub_22602F1F4(v18, v19);
  }

  v9 = v30[122];
  v2 = sub_226098AB8();
  v30[129] = v2;
  v8 = *(v2 - 8);
  v30[130] = v8;
  v30[131] = *(v8 + 64);
  v12 = swift_task_alloc();
  v30[132] = v12;
  swift_beginAccess();
  memcpy(v30 + 26, (v9 + 16), 0x60uLL);
  sub_225F4C240((v30 + 26), (v30 + 38));
  swift_endAccess();
  v10 = v30[30];
  v11 = v30[31];
  sub_2260998E8();
  sub_225F4C4A4(v30 + 26);
  v30[110] = v10;
  v30[111] = v11;
  v30[112] = sub_226099AA8();
  v30[113] = v3;
  v30[114] = sub_226099AA8();
  v30[115] = v4;
  sub_225F2CF00();
  sub_225F381C4();
  sub_22609A208();
  sub_225EFE6BC((v30 + 114));
  sub_225EFE6BC((v30 + 112));
  sub_225EFE6BC((v30 + 110));
  sub_226098A88();
  v30[133] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786DA8, &qword_2260A0FD0) - 8) + 64) + 15;
  v13 = swift_task_alloc();
  v30[134] = v13;
  v30[135] = sub_226099078();
  v6 = *(MEMORY[0x277CDCAF0] + 4);
  v7 = swift_task_alloc();
  v30[136] = v7;
  *v7 = v30[116];
  v7[1] = sub_226029C20;

  return MEMORY[0x28212BD30](v13, v12);
}

uint64_t sub_226029C20()
{
  v4 = *v0;
  v1 = *(*v0 + 1088);
  *(v4 + 928) = *v0;

  v2 = *(v4 + 928);

  return MEMORY[0x2822009F8](sub_226029D38, 0, 0);
}

uint64_t sub_226029D38()
{
  v1 = v0[134];
  v2 = v0[130];
  v3 = v0[129];
  v0[116] = v0;
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v13 = v27[133];
    v16 = v27[132];
    v15 = v27[129];
    v17 = v27[128];
    v14 = v27[130];
    sub_22602EEA8(v27[134]);

    sub_22602EF50();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    (*(v14 + 8))(v16, v15);

    sub_226022FCC(v17);
    v10 = v27[128];
    v18 = v27[127];
    v19 = v27[126];
    v20 = v27[123];

    v8 = v21;
    v7 = *(v27[116] + 8);
    v11 = v27[116];
  }

  else
  {
    v22 = v27[134];
    v4 = v27[129];
    v25 = v27[126];
    v24 = v27[124];
    v23 = v27[125];
    (*(v27[130] + 32))(v27[133]);

    sub_2260992B8();
    v27[137] = sub_226099298();
    (*(v23 + 104))(v25, *MEMORY[0x277CDCC60], v24);
    v26 = (MEMORY[0x277CDCC48] + *MEMORY[0x277CDCC48]);
    v5 = *(MEMORY[0x277CDCC48] + 4);
    v6 = swift_task_alloc();
    v7 = v26;
    v27[138] = v6;
    *v6 = v27[116];
    v6[1] = sub_22602A028;
    v8 = v27[126];
  }

  return v7(v8);
}

uint64_t sub_22602A028(uint64_t a1)
{
  v10 = *v1;
  v3 = *(*v1 + 1104);
  v9 = *(*v1 + 1096);
  v7 = *(*v1 + 1008);
  v6 = *(*v1 + 1000);
  v8 = *(*v1 + 992);
  *(v10 + 928) = *v1;
  *(v10 + 1112) = a1;

  (*(v6 + 8))(v7, v8);

  v4 = *(v10 + 928);

  return MEMORY[0x2822009F8](sub_22602A1C8, 0, 0);
}

uint64_t sub_22602A1C8()
{
  v1 = v0[139];
  v44 = v0[133];
  v0[116] = v0;
  v0[118] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786DB8, &qword_2260A0FD8);
  sub_22602EFCC();
  sub_22602F054();
  v45 = sub_226099C38();
  sub_225EFE6E8(v0 + 118);
  if (v45)
  {
    v17 = v43[135];
    v26 = v43[133];
    v27 = v43[132];
    v7 = v43[131];
    v24 = v43[129];
    v28 = v43[128];
    v29 = v43[127];
    v30 = v43[126];
    v31 = v43[123];
    v15 = v43[122];
    v14 = v43[130];
    v23 = swift_task_alloc();
    (*(v14 + 16))(v23, v27, v24);
    type metadata accessor for CoreEmbeddedSpeechAnalyzer();
    swift_beginAccess();
    memcpy(v43 + 50, (v15 + 16), 0x60uLL);
    sub_225F4C240((v43 + 50), (v43 + 62));
    swift_endAccess();
    v16 = v43[56];
    v18 = v43[57];
    sub_2260998E8();
    sub_225F4C4A4(v43 + 50);
    has_malloc_size = _swift_stdlib_has_malloc_size();
    static CoreEmbeddedSpeechAnalyzer.taskHint(fromTaskString:detectUtterances:)(v16, v18, has_malloc_size & 1, v31);

    v9 = sub_226099808();
    (*(*(v9 - 8) + 56))(v31, 0, 1);
    sub_22602F0CC(v28, v29);
    v22 = sub_226098E98();
    sub_22609A4F8();
    v20 = v10;
    v11 = *MEMORY[0x277CDCAB0];
    v19 = *(v22 - 8);
    v21 = *(v19 + 104);
    v21();
    (v21)(v20 + *(v19 + 72), *MEMORY[0x277CDCAB8], v22);
    sub_225EF5418();
    sub_2260203BC();
    sub_226099F08();
    sub_22602A7C0();
    sub_22602A99C();
    v32 = sub_226099058();

    v25 = *(v14 + 8);
    v25(v26, v24);
    v25(v27, v24);
    sub_226022FCC(v28);

    v4 = v32;
    v5 = *(v43[116] + 8);
    v12 = v43[116];
  }

  else
  {
    v34 = v43[133];
    v37 = v43[132];
    v35 = v43[129];
    v38 = v43[128];
    v33 = v43[130];
    sub_22602EF50();
    swift_allocError();
    *v2 = 2;
    swift_willThrow();
    v36 = *(v33 + 8);
    v36(v34, v35);

    v36(v37, v35);

    sub_226022FCC(v38);
    v3 = v43[128];
    v39 = v43[127];
    v40 = v43[126];
    v41 = v43[123];

    v4 = v42;
    v5 = *(v43[116] + 8);
    v6 = v43[116];
  }

  return v5(v4);
}

uint64_t sub_22602A77C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  return sub_226098938();
}

uint64_t sub_22602A7C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786E58, &qword_2260A11E0);
  v10 = sub_226098FC8();
  v7 = *(v10 - 8);
  v8 = *(v7 + 72);
  v0 = *(v7 + 80);
  v1 = swift_allocObject();
  v12 = sub_22602DBC4(v1, 3);
  v9 = v2;
  v3 = *MEMORY[0x277CDCB08];
  v11 = *(v7 + 104);
  v11();
  (v11)(v9 + v8, *MEMORY[0x277CDCB10], v10);
  (v11)(v9 + 2 * v8, *MEMORY[0x277CDCB28], v10);
  sub_225F30C00();
  if (sub_225F31698(v12))
  {
    return sub_22602DC5C(v12);
  }

  v5 = MEMORY[0x277D84FA0];

  return v5;
}

uint64_t sub_22602A99C()
{
  v3 = sub_22602E104(0);
  if (sub_225F31698(v3))
  {
    return sub_22602E1F4(v3);
  }

  v1 = MEMORY[0x277D84FA0];

  return v1;
}

uint64_t sub_22602AA08(uint64_t a1)
{
  *(v2 + 1128) = v1;
  *(v2 + 1120) = a1;
  *(v2 + 1040) = v2;
  *(v2 + 1048) = 0;
  *(v2 + 1056) = 0;
  *(v2 + 1064) = 0;
  *(v2 + 976) = 0;
  *(v2 + 984) = 0;
  *(v2 + 1072) = 0;
  *(v2 + 1520) = 0;
  *(v2 + 1080) = 0;
  *(v2 + 992) = 0;
  *(v2 + 1000) = 0;
  *(v2 + 1024) = 0;
  *(v2 + 1032) = 0;
  *(v2 + 1096) = 0;
  *(v2 + 1104) = 0;
  v3 = sub_226098FA8();
  *(v2 + 1136) = v3;
  v26 = *(v3 - 8);
  *(v2 + 1144) = v26;
  v27 = *(v26 + 64);
  *(v2 + 1152) = swift_task_alloc();
  *(v2 + 1160) = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786058, &qword_2260A0E00) - 8) + 64) + 15;
  *(v2 + 1168) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786AF0, &qword_2260A0B10);
  *(v2 + 1176) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v2 + 1184) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786DD0, &unk_2260A0FE0);
  *(v2 + 1192) = v7;
  v28 = *(v7 - 8);
  *(v2 + 1200) = v28;
  v8 = *(v28 + 64) + 15;
  *(v2 + 1208) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869A8, &unk_2260A0930) - 8) + 64) + 15;
  *(v2 + 1216) = swift_task_alloc();
  v10 = *(*(sub_226098DD8() - 8) + 64) + 15;
  *(v2 + 1224) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869B0, &unk_2260A0FF0) - 8) + 64) + 15;
  *(v2 + 1232) = swift_task_alloc();
  v12 = sub_226099258();
  *(v2 + 1240) = v12;
  v29 = *(v12 - 8);
  *(v2 + 1248) = v29;
  v13 = *(v29 + 64) + 15;
  *(v2 + 1256) = swift_task_alloc();
  v14 = *(*(sub_226099DA8() - 8) + 64) + 15;
  *(v2 + 1264) = swift_task_alloc();
  v15 = sub_226099288();
  *(v2 + 1272) = v15;
  v30 = *(v15 - 8);
  *(v2 + 1280) = v30;
  v16 = *(v30 + 64) + 15;
  *(v2 + 1288) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B90, &qword_2260A0C30);
  *(v2 + 1296) = v17;
  v31 = *(v17 - 8);
  *(v2 + 1304) = v31;
  v18 = *(v31 + 64) + 15;
  *(v2 + 1312) = swift_task_alloc();
  v19 = sub_2260990A8();
  *(v2 + 1320) = v19;
  v32 = *(v19 - 8);
  *(v2 + 1328) = v32;
  v33 = *(v32 + 64);
  *(v2 + 1336) = swift_task_alloc();
  *(v2 + 1344) = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A20, &unk_2260A0A10);
  *(v2 + 1352) = v20;
  v34 = *(v20 - 8);
  *(v2 + 1360) = v34;
  v21 = *(v34 + 64) + 15;
  *(v2 + 1368) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786928, &qword_2260A0888);
  *(v2 + 1376) = v22;
  v35 = *(v22 - 8);
  *(v2 + 1384) = v35;
  v36 = *(v35 + 64);
  *(v2 + 1392) = swift_task_alloc();
  *(v2 + 1400) = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A28, &qword_2260A1000);
  *(v2 + 1408) = v23;
  v37 = *(v23 - 8);
  *(v2 + 1416) = v37;
  v38 = *(v37 + 64);
  *(v2 + 1424) = swift_task_alloc();
  *(v2 + 1432) = swift_task_alloc();
  *(v2 + 1048) = a1;
  *(v2 + 1056) = v1;
  v24 = *(v2 + 1040);

  return MEMORY[0x2822009F8](sub_22602B098, 0, 0);
}

uint64_t sub_22602B098()
{
  v117 = v0[141];
  v0[130] = v0;
  sub_226099238();
  v112 = sub_226099228();
  v0[180] = v112;
  v0[133] = v112;
  swift_beginAccess();
  memcpy(v0 + 26, (v117 + 16), 0x60uLL);
  sub_225F4C240((v0 + 26), (v0 + 50));
  swift_endAccess();
  memcpy(v0 + 38, v0 + 26, 0x60uLL);
  sub_226025C4C(v0[47], v0[48]);
  sub_225F4C4A4(v0 + 38);
  sub_226099168();
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786DD8, &unk_2260A1008);
  sub_22609A4F8();
  v114 = v1;
  v113 = *(v116 + 48);
  sub_2260991C8();
  swift_beginAccess();
  memcpy(v0 + 14, (v117 + 16), 0x60uLL);
  sub_225F4C240((v0 + 14), (v0 + 62));
  swift_endAccess();
  v115 = v0[25];
  sub_2260998E8();
  sub_225F4C4A4(v0 + 14);
  *(v114 + v113) = v115;
  sub_225EF5418();
  sub_2260991E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  sub_22602F41C();
  sub_2260998A8();
  sub_226099198();
  swift_beginAccess();
  memcpy(v0 + 2, (v117 + 16), 0x60uLL);
  sub_225F4C240((v0 + 2), (v0 + 74));
  swift_endAccess();
  v118 = v0[4];
  v0[181] = v118;
  v119 = v0[5];
  v0[182] = v119;
  sub_226025C4C(v118, v119);
  sub_225F4C4A4(v0 + 2);
  if ((v119 & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_22602EF50();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();

    v21 = *(v111 + 1432);
    v23 = *(v111 + 1424);
    v24 = *(v111 + 1400);
    v25 = *(v111 + 1392);
    v26 = *(v111 + 1368);
    v27 = *(v111 + 1344);
    v28 = *(v111 + 1336);
    v29 = *(v111 + 1312);
    v30 = *(v111 + 1288);
    v31 = *(v111 + 1264);
    v32 = *(v111 + 1256);
    v33 = *(v111 + 1232);
    v34 = *(v111 + 1224);
    v35 = *(v111 + 1216);
    v36 = *(v111 + 1208);
    v37 = *(v111 + 1184);
    v38 = *(v111 + 1168);
    v39 = *(v111 + 1160);
    v40 = *(v111 + 1152);

    v17 = v41;
    v18 = *(*(v111 + 1040) + 8);
    v22 = *(v111 + 1040);

    return v18(v17);
  }

  v103 = *(v111 + 1432);
  v104 = *(v111 + 1424);
  v105 = *(v111 + 1408);
  v109 = *(v111 + 1400);
  v107 = *(v111 + 1392);
  v108 = *(v111 + 1376);
  v2 = *(v111 + 1368);
  v100 = v2;
  v101 = *(v111 + 1352);
  v98 = *(v111 + 1320);
  v102 = *(v111 + 1416);
  v106 = *(v111 + 1384);
  v99 = *(v111 + 1360);
  *(v111 + 976) = v118;
  *(v111 + 984) = v119;
  sub_225F81A04(v2);
  sub_226099DB8();
  (*(v99 + 8))(v100, v101);
  (*(v102 + 32))(v103, v104, v105);
  (*(v106 + 32))(v109, v107, v108);
  sub_226025568();
  v3 = sub_226025CE0(3, 1u, 0);
  v110 = v3;
  *(v111 + 1464) = v3;
  if (!v3)
  {
    v46 = *(v111 + 1432);
    v47 = *(v111 + 1408);
    v44 = *(v111 + 1400);
    v43 = *(v111 + 1376);
    v15 = *(v111 + 1136);
    v45 = *(v111 + 1416);
    v42 = *(v111 + 1384);
    v66 = sub_22609A4F8();
    (*(v42 + 8))(v44, v43);
    (*(v45 + 8))(v46, v47);
    sub_225EF5990(v118, v119);

    v16 = *(v111 + 1432);
    v48 = *(v111 + 1424);
    v49 = *(v111 + 1400);
    v50 = *(v111 + 1392);
    v51 = *(v111 + 1368);
    v52 = *(v111 + 1344);
    v53 = *(v111 + 1336);
    v54 = *(v111 + 1312);
    v55 = *(v111 + 1288);
    v56 = *(v111 + 1264);
    v57 = *(v111 + 1256);
    v58 = *(v111 + 1232);
    v59 = *(v111 + 1224);
    v60 = *(v111 + 1216);
    v61 = *(v111 + 1208);
    v62 = *(v111 + 1184);
    v63 = *(v111 + 1168);
    v64 = *(v111 + 1160);
    v65 = *(v111 + 1152);

    v17 = v66;
    v18 = *(*(v111 + 1040) + 8);
    v19 = *(v111 + 1040);

    return v18(v17);
  }

  *(v111 + 1072) = v3;
  v97 = MEMORY[0x22AA71AA0](v118, v119) / 2;
  if (v97 < 0)
  {
    return sub_22609A3B8();
  }

  if (v97 > 0xFFFFFFFFLL)
  {
    return sub_22609A3B8();
  }

  *(v111 + 1520) = v97;
  sub_225EF9338();
  MEMORY[0x277D82BE0](v110);
  v5 = sub_225EF939C(v110);
  v96 = v5;
  *(v111 + 1472) = v5;
  if (!v5)
  {
    return sub_22609A3B8();
  }

  v86 = *(v111 + 1432);
  v93 = *(v111 + 1424);
  v92 = *(v111 + 1408);
  v72 = *(v111 + 1400);
  v76 = *(v111 + 1376);
  v69 = *(v111 + 1344);
  v71 = *(v111 + 1336);
  v70 = *(v111 + 1320);
  v74 = *(v111 + 1312);
  v75 = *(v111 + 1296);
  v90 = *(v111 + 1288);
  v91 = *(v111 + 1272);
  v79 = *(v111 + 1264);
  v80 = *(v111 + 1256);
  v78 = *(v111 + 1240);
  v81 = *(v111 + 1232);
  v95 = *(v111 + 1224);
  v94 = *(v111 + 1216);
  v82 = *(v111 + 1128);
  v87 = *(v111 + 1120);
  v85 = *(v111 + 1416);
  v68 = *(v111 + 1328);
  v73 = *(v111 + 1304);
  v89 = *(v111 + 1280);
  v77 = *(v111 + 1248);
  *(v111 + 1080) = v5;
  [v5 int16ChannelData];
  [v110 channelCount];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B78, &qword_2260A0C20);
  v6 = sub_2260999E8();
  *(v111 + 992) = v6;
  *(v111 + 1000) = v7;
  *(v111 + 1008) = v6;
  *(v111 + 1016) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786B80, &qword_2260A0C28);
  sub_225EF9528();
  sub_226099FE8();
  v67 = *(v111 + 1088);
  [v96 0x1FC17A2F0];
  *(v111 + 1024) = sub_22609A1A8();
  *(v111 + 1032) = v8;
  [v96 setFrameLength_];
  sub_2260989A8();
  MEMORY[0x277D82BE0](v96);
  sub_226099098();
  (*(v68 + 16))(v71, v69, v70);
  sub_226099DD8();
  (*(v73 + 8))(v74, v75);
  sub_226099DE8();
  sub_226099D78();
  (*(v77 + 104))(v80, *MEMORY[0x277CDCC10], v78);
  v9 = sub_226099248();
  (*(*(v9 - 8) + 56))(v81, 1);
  sub_226099278();
  sub_226098D78();
  swift_beginAccess();
  memcpy((v111 + 688), (v82 + 16), 0x60uLL);
  sub_225F4C240(v111 + 688, v111 + 784);
  swift_endAccess();
  v84 = *(v111 + 688);
  v83 = *(v111 + 696);
  sub_2260998E8();
  sub_225F4C4A4((v111 + 688));
  sub_226098DB8();
  (*(v85 + 16))(v93, v86, v92);
  MEMORY[0x277D82BE0](v110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869B8, &qword_2260A0940);
  sub_22609A4F8();
  v88 = v10;

  v11 = sub_22602F49C();
  *v88 = v87;
  v88[1] = v11;
  sub_225EF5418();
  (*(v89 + 16))(v94, v90, v91);
  (*(v89 + 56))(v94, 0, 1, v91);

  sub_22601FB7C();
  sub_22602D29C();
  v12 = sub_226098D48();
  *(v111 + 1480) = v12;
  *(v111 + 1096) = v12;
  v13 = *(MEMORY[0x277CDCA48] + 4);
  v14 = swift_task_alloc();
  *(v111 + 1488) = v14;
  *v14 = *(v111 + 1040);
  v14[1] = sub_22602C1B8;

  return MEMORY[0x28212BBF0]();
}

uint64_t sub_22602C1B8()
{
  v8 = *v1;
  v7 = (v8 + 1040);
  v2 = *(*v1 + 1488);
  *(v8 + 1040) = *v1;
  *(v8 + 1496) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = sub_22602CBF4;
  }

  else
  {
    v3 = *v7;
    v4 = sub_22602C324;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22602C324()
{
  v13 = v0[151];
  v12 = v0[148];
  v14 = v0[147];
  v1 = v0[142];
  v2 = v0[140];
  v0[130] = v0;
  v0[138] = sub_22609A4F8();
  sub_226098FD8();
  v0[188] = swift_getOpaqueTypeConformance2();
  sub_226099E98();
  v3 = v0[188];
  v4 = v0[149];
  v5 = v0[147];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(MEMORY[0x277D856D8] + 4);
  v7 = swift_task_alloc();
  v15[189] = v7;
  *v7 = v15[130];
  v7[1] = sub_22602C4D8;
  v8 = v15[151];
  v9 = v15[149];
  v10 = v15[146];

  return MEMORY[0x282200310](v10, 0, 0, v15 + 139, v9, AssociatedConformanceWitness);
}

uint64_t sub_22602C4D8()
{
  v7 = (*v1 + 1040);
  v2 = *(*v1 + 1512);
  *v7 = *v1;

  if (v0)
  {
    v5 = *v7;
    v4 = sub_22602CF30;
  }

  else
  {
    v3 = *v7;
    v4 = sub_22602C640;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22602C640()
{
  v1 = v0[146];
  v2 = v0[143];
  v3 = v0[142];
  v0[130] = v0;
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v17 = v59[185];
    v33 = v59[182];
    v32 = v59[181];
    v34 = v59[180];
    v30 = v59[179];
    v31 = v59[176];
    v27 = v59[175];
    v28 = v59[172];
    v22 = v59[168];
    v23 = v59[165];
    v19 = v59[161];
    v20 = v59[159];
    v24 = v59[184];
    v25 = v59[183];
    v29 = v59[177];
    v26 = v59[173];
    v21 = v59[166];
    v18 = v59[160];
    (*(v59[150] + 8))(v59[151], v59[149]);
    v53 = v59[138];
    sub_2260998E8();
    sub_225EFE6E8(v59 + 138);

    (*(v18 + 8))(v19, v20);
    (*(v21 + 8))(v22, v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    (*(v26 + 8))(v27, v28);
    (*(v29 + 8))(v30, v31);
    sub_225EF5990(v32, v33);

    v13 = v59[179];
    v35 = v59[178];
    v36 = v59[175];
    v37 = v59[174];
    v38 = v59[171];
    v39 = v59[168];
    v40 = v59[167];
    v41 = v59[164];
    v42 = v59[161];
    v43 = v59[158];
    v44 = v59[157];
    v45 = v59[154];
    v46 = v59[153];
    v47 = v59[152];
    v48 = v59[151];
    v49 = v59[148];
    v50 = v59[146];
    v51 = v59[145];
    v52 = v59[144];

    v14 = *(v59[130] + 8);
    v15 = v59[130];

    return v14(v53);
  }

  else
  {
    v4 = v59[146];
    v56 = v59[145];
    v54 = v59[144];
    v57 = v59[142];
    v55 = v59[143];
    (*(v55 + 32))();
    (*(v55 + 16))(v54, v56, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786DF0, &qword_2260A1018);
    sub_226099CE8();
    (*(v55 + 8))(v56, v57);
    v5 = v59[188];
    v6 = v59[149];
    v7 = v59[147];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = *(MEMORY[0x277D856D8] + 4);
    v9 = swift_task_alloc();
    v59[189] = v9;
    *v9 = v59[130];
    v9[1] = sub_22602C4D8;
    v10 = v59[151];
    v11 = v59[149];
    v12 = v59[146];

    return MEMORY[0x282200310](v12, 0, 0, v59 + 139, v11, AssociatedConformanceWitness);
  }
}

uint64_t sub_22602CBF4()
{
  v1 = v0[185];
  v13 = v0[184];
  v14 = v0[183];
  v22 = v0[182];
  v21 = v0[181];
  v23 = v0[180];
  v19 = v0[179];
  v18 = v0[177];
  v20 = v0[176];
  v16 = v0[175];
  v15 = v0[173];
  v17 = v0[172];
  v11 = v0[168];
  v10 = v0[166];
  v12 = v0[165];
  v8 = v0[161];
  v7 = v0[160];
  v9 = v0[159];
  v0[130] = v0;

  (*(v7 + 8))(v8, v9);
  (*(v10 + 8))(v11, v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  (*(v15 + 8))(v16, v17);
  (*(v18 + 8))(v19, v20);
  sub_225EF5990(v21, v22);

  v2 = v0[187];
  v3 = v0[179];
  v24 = v0[178];
  v25 = v0[175];
  v26 = v0[174];
  v27 = v0[171];
  v28 = v0[168];
  v29 = v0[167];
  v30 = v0[164];
  v31 = v0[161];
  v32 = v0[158];
  v33 = v0[157];
  v34 = v0[154];
  v35 = v0[153];
  v36 = v0[152];
  v37 = v0[151];
  v38 = v0[148];
  v39 = v0[146];
  v40 = v0[145];
  v41 = v0[144];

  v4 = *(v0[130] + 8);
  v5 = v0[130];

  return v4();
}

uint64_t sub_22602CF30()
{
  v9 = v0[185];
  v16 = v0[184];
  v17 = v0[183];
  v25 = v0[182];
  v24 = v0[181];
  v26 = v0[180];
  v22 = v0[179];
  v21 = v0[177];
  v23 = v0[176];
  v19 = v0[175];
  v18 = v0[173];
  v20 = v0[172];
  v14 = v0[168];
  v13 = v0[166];
  v15 = v0[165];
  v11 = v0[161];
  v10 = v0[160];
  v12 = v0[159];
  v1 = v0[151];
  v2 = v0[150];
  v3 = v0[149];
  v0[130] = v0;
  v4 = v0[139];
  (*(v2 + 8))(v1, v3);
  sub_225EFE6E8(v0 + 138);

  (*(v10 + 8))(v11, v12);
  (*(v13 + 8))(v14, v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  (*(v18 + 8))(v19, v20);
  (*(v21 + 8))(v22, v23);
  sub_225EF5990(v24, v25);

  v5 = v0[179];
  v27 = v0[178];
  v28 = v0[175];
  v29 = v0[174];
  v30 = v0[171];
  v31 = v0[168];
  v32 = v0[167];
  v33 = v0[164];
  v34 = v0[161];
  v35 = v0[158];
  v36 = v0[157];
  v37 = v0[154];
  v38 = v0[153];
  v39 = v0[152];
  v40 = v0[151];
  v41 = v0[148];
  v42 = v0[146];
  v43 = v0[145];
  v44 = v0[144];

  v6 = *(v0[130] + 8);
  v7 = v0[130];

  return v6();
}

uint64_t sub_22602D2B4(uint64_t a1)
{
  v85 = a1;
  v74 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v90[1] = 0;
  v90[0] = 0;
  v88 = 0;
  v75 = sub_2260990C8();
  v76 = *(v75 - 8);
  v77 = v76;
  v2 = *(v76 + 64);
  MEMORY[0x28223BE20](0, v75, v3, v4);
  v78 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_226098FA8();
  v80 = *(v79 - 8);
  v81 = v80;
  v6 = *(v80 + 64);
  MEMORY[0x28223BE20](v79 - 8, v79, v7, v8);
  v82 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v82;
  v83 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786058, &qword_2260A0E00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v85, v10, v11, v12);
  v84 = v34 - v83;
  v92 = v13;
  v91 = v1;
  sub_2260998E8();
  v89[1] = v85;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786DF0, &qword_2260A1018);
  sub_22602F51C();
  sub_22609A028();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786E00, &qword_2260A1020);
    sub_22609A388();
    if ((*(v81 + 48))(v84, 1, v79) == 1)
    {
      break;
    }

    (*(v81 + 32))(v82, v84, v79);
    v69 = sub_22609A4F8();
    v66 = v14;
    v15 = *MEMORY[0x277CDCBB8];
    v68 = *(v77 + 104);
    v67 = v77 + 104;
    v68();
    (v68)(v66 + *(v77 + 72), *MEMORY[0x277CDCBA0], v75);
    v16 = v69;
    sub_225EF5418();
    v89[0] = v16;
    sub_226098EE8();
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786E08, &qword_2260A1028);
    v71 = sub_22602F5A4();
    sub_22602F62C();
    v72 = v89;
    v73 = sub_226099C38();
    (*(v77 + 8))(v78, v75);
    sub_225EFE6E8(v72);
    if (v73)
    {
      v51 = sub_226098828();
      v52 = v51;
      v46 = *(v51 - 8);
      v49 = v46;
      v53 = v46;
      v17 = *(v46 + 64);
      v54 = v34;
      v20 = MEMORY[0x28223BE20](v34, v46, v18, v19);
      v55 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      v88 = v55;
      v56 = MEMORY[0x22AA72040](v20);
      v87 = v56;
      v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786E20, &qword_2260A1030) - 8) + 64);
      v57 = v34;
      v47 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v34, v23, v24, v25);
      v50 = v34 - v47;
      v58 = v34 - v47;
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786E28, &qword_2260A1038);
      sub_22602F6AC();
      sub_226099FE8();
      v26 = (*(v49 + 48))(v50, 1, v51);
      v59 = v52;
      v60 = v53;
      v61 = v54;
      v62 = v55;
      v63 = v56;
      v64 = v57;
      v65 = v58;
      if (v26 != 1)
      {
        v34[2] = v64;
        v34[1] = v63;
        v39 = v62;
        v41 = v61;
        v38 = v60;
        v40 = v59;
        (*(v60 + 32))(v62, v65);

        v35 = sub_226098818();
        v27 = *(*(v35 - 8) + 64);
        v37 = v34;
        MEMORY[0x28223BE20](v34, v28, v29, v30);
        v36 = v34 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_226098808();
        sub_225F2DD4C();
        v42 = sub_226099BC8();
        v43 = v32;
        (*(v38 + 8))(v39, v40);
        (*(v81 + 8))(v82, v79);
        sub_225EFE6E8(v90);
        v44 = v42;
        v45 = v43;
        return v44;
      }

      sub_22602F734(v58);
    }

    (*(v81 + 8))(v82, v79);
  }

  sub_225EFE6E8(v90);
  v44 = 0;
  v45 = 0;
  return v44;
}

uint64_t sub_22602DB4C(uint64_t a1)
{
  sub_2260998E8();
  if (a1 > 15)
  {
    sub_22609A278();
  }

  return 0;
}

uint64_t sub_22602DBC4(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;
  v2 = *(sub_226098FC8() - 8);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  return a1;
}

uint64_t sub_22602DC5C(uint64_t a1)
{
  v50 = a1;
  v51 = sub_226098FC8();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50, v1, v2, v3);
  v55 = &v25 - v54;
  v56 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, &v25 - v54, v6, v7);
  v57 = &v25 - v56;
  v58 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, &v25 - v56, v10, v11);
  v59 = &v25 - v58;
  if (sub_225F30FDC(v12))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786E60, &qword_2260A11E8);
    v49 = sub_22609A258();
  }

  else
  {
    v48 = MEMORY[0x277D84FA0];

    v49 = v48;
  }

  v46 = v49;
  v47 = sub_225F31698(v50);
  if (v47)
  {
    for (i = 0; ; i = v44)
    {
      v43 = i;
      has_malloc_size = _swift_stdlib_has_malloc_size();
      sub_22602E69C(v43, has_malloc_size & 1, v50);
      result = sub_22602EAC0(v43, has_malloc_size & 1, v50, v59);
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      v36 = *(v52 + 32);
      v37 = v52 + 32;
      v36(v57, v59, v51);
      v38 = *(v46 + 40);
      sub_22601F4EC();
      v15 = sub_226099958();
      v39 = v46 + 56;
      v40 = (1 << (*(v46 + 32) & 0x3F)) - 1;
      for (j = v15 & v40; ; j = (v32 + 1) & v40)
      {
        v32 = j;
        v16 = *(v39 + 8 * (j / 0x40)) & (1 << ((j % 0x40) & 0x3F));
        v33 = j;
        v34 = j / 0x40;
        v35 = 1 << ((j % 0x40) & 0x3F);
        if (!v16)
        {
          break;
        }

        (*(v52 + 16))(v55, *(v46 + 48) + v32 * *(v52 + 72), v51);
        sub_226030790();
        v29 = sub_2260999D8();
        v27 = *(v52 + 8);
        v28 = (v52 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v27(v55, v51);
        v30 = v27;
        v31 = v28;
        if (v29)
        {
          v30(v57, v51);
          goto LABEL_20;
        }
      }

      v17 = v46;
      v18 = v36;
      v19 = v51;
      v20 = v57;
      v21 = v52;
      v22 = v33;
      *(v46 + 56 + 8 * v34) |= v35;
      result = v18(*(v17 + 48) + v22 * *(v21 + 72), v20, v19);
      v23 = *(v46 + 16);
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_24;
      }

      *(v46 + 16) = v26;
LABEL_20:
      if (v44 == v47)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_22:

    return v46;
  }

  return result;
}

uint64_t sub_22602E104(uint64_t result)
{
  v5 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v5 > 0)
    {

      sub_2260996F8();
      v3 = sub_226099CB8();
      sub_2260998E8();
      *(v3 + 16) = v5;

      v4 = v3;
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    v1 = sub_2260996F8();
    result = v4;
    v2 = v4 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));
  }

  return result;
}

uint64_t sub_22602E1F4(uint64_t a1)
{
  v50 = a1;
  v51 = sub_2260996F8();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50, v1, v2, v3);
  v55 = &v25 - v54;
  v56 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, &v25 - v54, v6, v7);
  v57 = &v25 - v56;
  v58 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, &v25 - v56, v10, v11);
  v59 = &v25 - v58;
  if (sub_225F30FDC(v12))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786E48, &qword_2260A11D8);
    v49 = sub_22609A258();
  }

  else
  {
    v48 = MEMORY[0x277D84FA0];

    v49 = v48;
  }

  v46 = v49;
  v47 = sub_225F31698(v50);
  if (v47)
  {
    for (i = 0; ; i = v44)
    {
      v43 = i;
      has_malloc_size = _swift_stdlib_has_malloc_size();
      sub_22602E69C(v43, has_malloc_size & 1, v50);
      result = sub_22602E6EC(v43, has_malloc_size & 1, v50, v59);
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      v36 = *(v52 + 32);
      v37 = v52 + 32;
      v36(v57, v59, v51);
      v38 = *(v46 + 40);
      sub_22602033C();
      v15 = sub_226099958();
      v39 = v46 + 56;
      v40 = (1 << (*(v46 + 32) & 0x3F)) - 1;
      for (j = v15 & v40; ; j = (v32 + 1) & v40)
      {
        v32 = j;
        v16 = *(v39 + 8 * (j / 0x40)) & (1 << ((j % 0x40) & 0x3F));
        v33 = j;
        v34 = j / 0x40;
        v35 = 1 << ((j % 0x40) & 0x3F);
        if (!v16)
        {
          break;
        }

        (*(v52 + 16))(v55, *(v46 + 48) + v32 * *(v52 + 72), v51);
        sub_226030710();
        v29 = sub_2260999D8();
        v27 = *(v52 + 8);
        v28 = (v52 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v27(v55, v51);
        v30 = v27;
        v31 = v28;
        if (v29)
        {
          v30(v57, v51);
          goto LABEL_20;
        }
      }

      v17 = v46;
      v18 = v36;
      v19 = v51;
      v20 = v57;
      v21 = v52;
      v22 = v33;
      *(v46 + 56 + 8 * v34) |= v35;
      result = v18(*(v17 + 48) + v22 * *(v21 + 72), v20, v19);
      v23 = *(v46 + 16);
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_24;
      }

      *(v46 + 16) = v26;
LABEL_20:
      if (v44 == v47)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_22:

    return v46;
  }

  return result;
}

uint64_t sub_22602E69C(uint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else if (result < *(a3 + 16))
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22602E6EC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v6 = sub_2260996F8();
    return (*(*(v6 - 8) + 16))(a4, a3 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + a1 * *(*(v6 - 8) + 72));
  }

  else
  {
    sub_22602E850(a1, a3);
    v7 = v4;
    result = sub_2260996F8();
    v8 = *(result - 8);
    if (*(v8 + 64) == 8)
    {
      v12 = v7;
      (*(v8 + 16))(a4, &v12, result);
      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_22602E850(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v26 = a2;
  v27 = "Fatal error";
  v29 = sub_2260996F8();
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  v32 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28, v2, v3, v4);
  v33 = v16 - v32;
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v28 >= *(v26 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v25 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x20 + 8 * v28);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v36 = v25;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v6 = sub_22602DB4C(82);
    v18 = &v34;
    v34 = v6;
    v35 = v7;
    v17 = 1;
    v8 = sub_226099AA8();
    v16[0] = v9;
    MEMORY[0x22AA72C20](v8);

    v10 = sub_226099AA8();
    v16[1] = v11;
    MEMORY[0x22AA72C20](v10);

    v24 = 11;
    v12 = sub_226099AA8();
    v19 = v13;
    MEMORY[0x22AA72C20](v12);

    swift_getObjectType();
    v23 = 0;
    v14 = sub_22609A638();
    v20 = v15;
    MEMORY[0x22AA72C20](v14);

    v21 = v34;
    v22 = v35;
    sub_2260998E8();
    sub_226099A88();
    sub_22609A3D8();
    __break(1u);
  }

  (*(v30 + 8))(v33, v29);
}

uint64_t sub_22602EAC0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v6 = sub_226098FC8();
    return (*(*(v6 - 8) + 16))(a4, a3 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + a1 * *(*(v6 - 8) + 72));
  }

  else
  {
    sub_22602EC24(a1, a3);
    v7 = v4;
    result = sub_226098FC8();
    v8 = *(result - 8);
    if (*(v8 + 64) == 8)
    {
      v12 = v7;
      (*(v8 + 16))(a4, &v12, result);
      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_22602EC24(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v26 = a2;
  v27 = "Fatal error";
  v29 = sub_226098FC8();
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  v32 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28, v2, v3, v4);
  v33 = v16 - v32;
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v28 >= *(v26 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v25 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x20 + 8 * v28);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v36 = v25;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v6 = sub_22602DB4C(82);
    v18 = &v34;
    v34 = v6;
    v35 = v7;
    v17 = 1;
    v8 = sub_226099AA8();
    v16[0] = v9;
    MEMORY[0x22AA72C20](v8);

    v10 = sub_226099AA8();
    v16[1] = v11;
    MEMORY[0x22AA72C20](v10);

    v24 = 11;
    v12 = sub_226099AA8();
    v19 = v13;
    MEMORY[0x22AA72C20](v12);

    swift_getObjectType();
    v23 = 0;
    v14 = sub_22609A638();
    v20 = v15;
    MEMORY[0x22AA72C20](v14);

    v21 = v34;
    v22 = v35;
    sub_2260998E8();
    sub_226099A88();
    sub_22609A3D8();
    __break(1u);
  }

  (*(v30 + 8))(v33, v29);
}

uint64_t sub_22602EEA8(uint64_t a1)
{
  v3 = sub_226098AB8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_22602EF50()
{
  v2 = qword_27D786DB0;
  if (!qword_27D786DB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786DB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22602EFCC()
{
  v2 = qword_27D786DC0;
  if (!qword_27D786DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786DB8, &qword_2260A0FD8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786DC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22602F054()
{
  v2 = qword_27D786DC8;
  if (!qword_27D786DC8)
  {
    sub_226098AB8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786DC8);
    return WitnessTable;
  }

  return v2;
}

void *sub_22602F0CC(const void *a1, void *a2)
{
  v6 = sub_226098E68();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A50, &qword_2260A0A90);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_22602F1F4(const void *a1, void *a2)
{
  v7 = sub_226098E68();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A50, &qword_2260A0A90);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A50, &qword_2260A0A90);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

unint64_t sub_22602F41C()
{
  v2 = qword_27D786DE0;
  if (!qword_27D786DE0)
  {
    sub_2260991E8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786DE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22602F49C()
{
  v2 = qword_27D786DE8;
  if (!qword_27D786DE8)
  {
    sub_226099078();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786DE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22602F51C()
{
  v2 = qword_27D786DF8;
  if (!qword_27D786DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786DF0, &qword_2260A1018);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786DF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22602F5A4()
{
  v2 = qword_27D786E10;
  if (!qword_27D786E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786E08, &qword_2260A1028);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786E10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22602F62C()
{
  v2 = qword_27D786E18;
  if (!qword_27D786E18)
  {
    sub_2260990C8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786E18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22602F6AC()
{
  v2 = qword_27D786E30;
  if (!qword_27D786E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786E28, &qword_2260A1038);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786E30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_22602F734(uint64_t a1)
{
  v3 = sub_226098828();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_22602F7F4()
{
  v2 = qword_27D786E38;
  if (!qword_27D786E38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786E38);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for CESRAsrReplayWorkerError(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CESRAsrReplayWorkerError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t destroy for CESRAsrReplayWorkerConfig(void *a1)
{
  v1 = a1[1];

  if ((a1[3] & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_225EF5990(a1[2], a1[3]);
  }

  v2 = a1[5];

  v3 = a1[7];

  if ((a1[10] & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_225EF5990(a1[9], a1[10]);
  }

  v4 = a1[11];
}

uint64_t initializeWithCopy for CESRAsrReplayWorkerConfig(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v11 = *(a2 + 8);
  sub_2260998E8();
  *(a1 + 8) = v11;
  if ((*(a2 + 24) & 0xF000000000000000) == 0xF000000000000000)
  {
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    sub_225EF5A38(v8, v9);
    *(a1 + 16) = v8;
    *(a1 + 24) = v9;
  }

  *(a1 + 32) = *(a2 + 32);
  v6 = *(a2 + 40);
  sub_2260998E8();
  *(a1 + 40) = v6;
  *(a1 + 48) = *(a2 + 48);
  v7 = *(a2 + 56);
  sub_2260998E8();
  *(a1 + 56) = v7;
  *(a1 + 64) = *(a2 + 64);
  if ((*(a2 + 80) & 0xF000000000000000) == 0xF000000000000000)
  {
    *(a1 + 72) = *(a2 + 72);
  }

  else
  {
    v4 = *(a2 + 72);
    v5 = *(a2 + 80);
    sub_225EF5A38(v4, v5);
    *(a1 + 72) = v4;
    *(a1 + 80) = v5;
  }

  v3 = *(a2 + 88);
  sub_2260998E8();
  result = a1;
  *(a1 + 88) = v3;
  return result;
}

uint64_t assignWithCopy for CESRAsrReplayWorkerConfig(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v23 = *(a2 + 8);
  sub_2260998E8();
  v2 = *(a1 + 8);
  *(a1 + 8) = v23;

  if ((*(a1 + 24) & 0xF000000000000000) == 0xF000000000000000)
  {
    if ((*(a2 + 24) & 0xF000000000000000) == 0xF000000000000000)
    {
      *(a1 + 16) = *(a2 + 16);
    }

    else
    {
      v18 = *(a2 + 16);
      v19 = *(a2 + 24);
      sub_225EF5A38(v18, v19);
      *(a1 + 16) = v18;
      *(a1 + 24) = v19;
    }
  }

  else if ((*(a2 + 24) & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_225EFE800(a1 + 16);
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v20 = *(a2 + 16);
    v21 = *(a2 + 24);
    sub_225EF5A38(v20, v21);
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    *(a1 + 16) = v20;
    *(a1 + 24) = v21;
    sub_225EF5990(v3, v4);
  }

  *(a1 + 32) = *(a2 + 32);
  v16 = *(a2 + 40);
  sub_2260998E8();
  v5 = *(a1 + 40);
  *(a1 + 40) = v16;

  *(a1 + 48) = *(a2 + 48);
  v17 = *(a2 + 56);
  sub_2260998E8();
  v6 = *(a1 + 56);
  *(a1 + 56) = v17;

  *(a1 + 64) = *(a2 + 64);
  if ((*(a1 + 80) & 0xF000000000000000) == 0xF000000000000000)
  {
    if ((*(a2 + 80) & 0xF000000000000000) == 0xF000000000000000)
    {
      *(a1 + 72) = *(a2 + 72);
    }

    else
    {
      v12 = *(a2 + 72);
      v13 = *(a2 + 80);
      sub_225EF5A38(v12, v13);
      *(a1 + 72) = v12;
      *(a1 + 80) = v13;
    }
  }

  else if ((*(a2 + 80) & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_225EFE800(a1 + 72);
    *(a1 + 72) = *(a2 + 72);
  }

  else
  {
    v14 = *(a2 + 72);
    v15 = *(a2 + 80);
    sub_225EF5A38(v14, v15);
    v7 = *(a1 + 72);
    v8 = *(a1 + 80);
    *(a1 + 72) = v14;
    *(a1 + 80) = v15;
    sub_225EF5990(v7, v8);
  }

  v11 = *(a2 + 88);
  sub_2260998E8();
  v9 = *(a1 + 88);
  *(a1 + 88) = v11;

  return a1;
}

uint64_t assignWithTake for CESRAsrReplayWorkerConfig(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  if ((*(a1 + 24) & 0xF000000000000000) == 0xF000000000000000)
  {
    *(a1 + 16) = *(a2 + 16);
  }

  else if ((*(a2 + 24) & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_225EFE800(a1 + 16);
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v4;
    sub_225EF5990(v5, v6);
  }

  *(a1 + 32) = *(a2 + 32);
  v7 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  v8 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  if ((*(a1 + 80) & 0xF000000000000000) == 0xF000000000000000)
  {
    *(a1 + 72) = *(a2 + 72);
  }

  else if ((*(a2 + 80) & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_225EFE800(a1 + 72);
    *(a1 + 72) = *(a2 + 72);
  }

  else
  {
    v9 = *(a2 + 80);
    v10 = *(a1 + 72);
    v11 = *(a1 + 80);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = v9;
    sub_225EF5990(v10, v11);
  }

  v12 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t getEnumTagSinglePayload for CESRAsrReplayWorkerConfig(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CESRAsrReplayWorkerConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_226030694()
{
  v2 = qword_27D786E40;
  if (!qword_27D786E40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786E40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_226030710()
{
  v2 = qword_27D786E50;
  if (!qword_27D786E50)
  {
    sub_2260996F8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786E50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_226030790()
{
  v2 = qword_27D786E68;
  if (!qword_27D786E68)
  {
    sub_226098FC8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786E68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_226030980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  return sub_226030B3C(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2260309F4()
{
  v1 = sub_226098C58();
  __swift_allocate_value_buffer(v1, qword_280D76838);
  __swift_project_value_buffer(v1, qword_280D76838);
  return sub_226030A40();
}

uint64_t sub_226030A40()
{
  AFLogInitIfNeeded();
  v1 = MEMORY[0x277CEF0E8];
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  if (!v2)
  {
    sub_22609A3B8();
    __break(1u);
  }

  return sub_226098C68();
}

uint64_t sub_226030B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition28CESABiomeSiriDictationRecord_recognitionEndTime;
  v7 = sub_226098A08();
  (*(*(v7 - 8) + 56))(&v6[v9], 1);
  v6[OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition28CESABiomeSiriDictationRecord_hasRecognizedAnything] = 0;
  sub_2260998E8();
  *(v6 + 2) = a1;
  *(v6 + 3) = a2;
  sub_2260998E8();
  *(v6 + 4) = a3;
  *(v6 + 5) = a4;
  sub_2260998E8();
  *(v6 + 6) = a5;
  *(v6 + 7) = a6;

  return v16;
}

uint64_t sub_226030C7C()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  sub_2260998E8();
  return v2;
}

uint64_t sub_226030CB4@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition28CESABiomeSiriDictationRecord_recognitionEndTime);
  swift_beginAccess();
  sub_226021688(v3, a1);
  return swift_endAccess();
}

uint64_t sub_226030D10(uint64_t a1)
{
  v11 = a1;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786BA0, &unk_2260A0640) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v8 = &v7 - v7;
  sub_226021688(v5, &v7 - v7);
  v9 = (v1 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition28CESABiomeSiriDictationRecord_recognitionEndTime);
  v10 = &v12;
  swift_beginAccess();
  sub_2260217B0(v8, v9);
  swift_endAccess();
  return sub_2260219D8(v11);
}

uint64_t sub_226030E44()
{
  v2 = (v0 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition28CESABiomeSiriDictationRecord_hasRecognizedAnything);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_226030EA4(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition28CESABiomeSiriDictationRecord_hasRecognizedAnything);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_226030F64()
{
  v2 = (v0 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition28CESABiomeSiriDictationRecord_hasRecognizedAnything);
  swift_beginAccess();
  *v2 = 1;
  return swift_endAccess();
}

uint64_t sub_226030FC4()
{
  v71 = 0;
  v88 = 0;
  v86 = 0;
  v84 = 0;
  v83 = 0;
  v70 = 0;
  v72 = sub_226098C58();
  v73 = *(v72 - 8);
  v74 = v73;
  v1 = *(v73 + 64);
  MEMORY[0x28223BE20](v72 - 8, v72, v2, 0);
  v75 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v0;
  v76 = (v0 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition28CESABiomeSiriDictationRecord_hasRecognizedAnything);
  v77 = &v87;
  swift_beginAccess();
  v78 = *v76;
  swift_endAccess();
  if (v78 != 1)
  {
    return v70;
  }

  v60 = 0;
  v69 = sub_226098A08();
  v55 = v69;
  v56 = *(v69 - 8);
  v67 = v56;
  v57 = v56;
  v4 = *(v56 + 64);
  v58 = &v23;
  MEMORY[0x28223BE20](&v23, v69, v5, v6);
  v59 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v59;
  v61 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786BA0, &unk_2260A0640) - 8) + 64);
  v62 = &v23;
  v63 = (v61 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v23, v8, v9, v60);
  v68 = &v23 - v63;
  v64 = &v23 - v63;
  v65 = (v10 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition28CESABiomeSiriDictationRecord_recognitionEndTime);
  v66 = &v85;
  swift_beginAccess();
  sub_226021688(v65, v68);
  swift_endAccess();
  if ((*(v67 + 48))(v68, 1, v69) == 1)
  {
    sub_2260219D8(v64);
    return v70;
  }

  (*(v57 + 32))(v59, v64, v55);
  v42 = BiomeLibrary();
  swift_getObjectType();
  v40 = [v42 Siri];
  swift_getObjectType();
  v45 = [v40 Dictation];
  v41 = v45;
  v84 = v45;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v51 = 0;
  sub_2260369EC();
  v44 = &v23;
  v12 = MEMORY[0x28223BE20](&v23, v59, v55, v11);
  v43 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v57 + 16))(v12);
  (*(v57 + 56))(v43, 0, 1, v55);
  v14 = sub_2260318A4(v43, v51, v51, v51, v51);
  v15 = v75;
  v47 = v14;
  v46 = v14;
  v83 = v14;
  v48 = [v45 source];
  [v48 sendEvent_];

  v16 = sub_225EFE52C();
  (*(v74 + 16))(v15, v16, v72);
  v53 = sub_226098C48();
  v49 = v53;
  v52 = sub_22609A0A8();
  v50 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v54 = sub_22609A4F8();
  if (os_log_type_enabled(v53, v52))
  {
    v17 = v70;
    v31 = sub_22609A188();
    v27 = v31;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v29 = 0;
    v32 = sub_225EF5468(0);
    v30 = v32;
    v33 = sub_225EF5468(v29);
    v82 = v31;
    v81 = v32;
    v80 = v33;
    v34 = 0;
    v35 = &v82;
    sub_225EF54BC(0, &v82);
    sub_225EF54BC(v34, v35);
    v79 = v54;
    v36 = &v23;
    MEMORY[0x28223BE20](&v23, v18, v19, v20);
    v37 = &v23 - 6;
    *(&v23 - 4) = v21;
    *(&v23 - 3) = &v81;
    *(&v23 - 2) = &v80;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    v39 = v17;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_225EEB000, v49, v50, "Biome Dictation: event is sent to Biome", v27, 2u);
      v25 = 0;
      sub_225EF7AF4(v30);
      sub_225EF7AF4(v33);
      sub_22609A168();

      v26 = v39;
    }
  }

  else
  {

    v26 = v70;
  }

  v23 = v26;

  (*(v74 + 8))(v75, v72);
  (*(v57 + 8))(v59, v55);
  return v23;
}

uint64_t sub_226031904()
{
  sub_225EFE6BC(v0 + 16);
  sub_225EFE6BC(v0 + 32);
  sub_225EFE6BC(v0 + 48);
  sub_2260219D8(v0 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition28CESABiomeSiriDictationRecord_recognitionEndTime);
  return v2;
}

uint64_t sub_226031964()
{
  v0 = *sub_226031904();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_2260319C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 88) = sub_22609A4F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  *(v9 + 96) = sub_22609A4F8();
  *(v9 + 104) = 0;
  *(v9 + 112) = 0;
  *(v9 + 120) = 0;
  *(v9 + 128) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C0, &qword_2260A0318);
  *(v9 + 136) = sub_22609A4F8();
  *(v9 + 144) = 0;
  sub_2260998E8();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_2260998E8();
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  sub_2260998E8();
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  sub_2260998E8();
  *(v9 + 64) = a7;
  *(v9 + 72) = a8;
  *(v9 + 80) = a9;

  return v19;
}

uint64_t sub_226031B68()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  sub_2260998E8();
  return v2;
}

uint64_t sub_226031BA8()
{
  swift_beginAccess();
  v2 = *(v0 + 88);
  sub_2260998E8();
  swift_endAccess();
  return v2;
}

uint64_t sub_226031BF8(uint64_t a1)
{
  sub_2260998E8();
  swift_beginAccess();
  v2 = *(v1 + 88);
  *(v1 + 88) = a1;

  swift_endAccess();
}

uint64_t sub_226031CB4()
{
  swift_beginAccess();
  v2 = *(v0 + 96);
  sub_2260998E8();
  swift_endAccess();
  return v2;
}

uint64_t sub_226031D04(uint64_t a1)
{
  sub_2260998E8();
  swift_beginAccess();
  v2 = *(v1 + 96);
  *(v1 + 96) = a1;

  swift_endAccess();
}

uint64_t sub_226031DC0()
{
  swift_beginAccess();
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  sub_2260998E8();
  swift_endAccess();
  return v2;
}

uint64_t sub_226031E1C(uint64_t a1, uint64_t a2)
{
  sub_2260998E8();
  swift_beginAccess();
  v3 = *(v2 + 112);
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;

  swift_endAccess();
}

uint64_t sub_226031EE8()
{
  swift_beginAccess();
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  sub_2260998E8();
  swift_endAccess();
  return v2;
}

uint64_t sub_226031F44(uint64_t a1, uint64_t a2)
{
  sub_2260998E8();
  swift_beginAccess();
  v3 = *(v2 + 128);
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;

  swift_endAccess();
}

uint64_t sub_226032010()
{
  swift_beginAccess();
  v2 = *(v0 + 136);
  sub_2260998E8();
  swift_endAccess();
  return v2;
}

uint64_t sub_226032060(uint64_t a1)
{
  sub_2260998E8();
  swift_beginAccess();
  v2 = *(v1 + 136);
  *(v1 + 136) = a1;

  swift_endAccess();
}

uint64_t sub_22603211C()
{
  swift_beginAccess();
  v2 = *(v0 + 144);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_22603216C(char a1)
{
  swift_beginAccess();
  *(v1 + 144) = a1;
  return swift_endAccess();
}

uint64_t sub_2260321B8()
{
  swift_beginAccess();
  *(v0 + 144) = 1;
  return swift_endAccess();
}

uint64_t sub_22603220C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a6;
  v41 = a5;
  v42 = a4;
  v43 = a3;
  v46 = a2;
  v47 = a1;
  v44 = 0;
  v61[1] = 0;
  v60 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v61[6] = a1;
  v61[7] = a2;
  v61[4] = a3;
  v61[5] = a4;
  v61[2] = a5;
  v61[3] = a6;
  v45 = MEMORY[0x277D837D0];
  sub_22609A4F8();
  v61[0] = sub_226099F08();
  if (sub_226099B18())
  {
    v14 = v61[0];
    sub_2260998E8();
    sub_225EFE6E8(v61);
    return v14;
  }

  else
  {
    v39 = sub_226099B18();
    sub_2260998E8();
    if (v39)
    {
      v38 = 0;
    }

    else
    {
      v38 = sub_226099B18() ^ 1;
    }

    v37 = v38;

    if (v38)
    {
      v60 = sub_226099A58();
      for (i = v60; ; i = v22)
      {
        v34 = i;
        v58 = v47;
        v59 = v46;
        v56 = v43;
        v57 = v42;
        v35 = MEMORY[0x22AA72C80]();
        if (v35 >> 14 < v34 >> 14)
        {
          sub_22609A3B8();
          __break(1u);
        }

        v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786DA8, &qword_2260A0FD0) - 8) + 64);
        v33 = &v14;
        v25 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](&v14, v7, v8, v9);
        v28 = &v14 - v25;
        v10 = sub_226098AB8();
        (*(*(v10 - 8) + 56))(v28, 1);
        v27 = sub_225F2CF00();
        v26 = MEMORY[0x277D837D0];
        sub_2260327B4();
        v29 = sub_22609A218();
        v32 = v11;
        v30 = v29;
        v31 = v12;
        sub_22602EEA8(v28);
        if (v32)
        {
          break;
        }

        v23 = v30;
        v24 = v31;
        v22 = v31;
        v18 = v30;
        v54 = v30;
        v55 = v31;
        sub_2260998E8();
        v52 = v47;
        v53 = v46;
        v50 = v41;
        v51 = v40;
        sub_225F2D16C();
        v21 = &v52;
        sub_226099A78();
        v19 = v52;
        v20 = v53;
        sub_2260998E8();
        v48 = v19;
        v49 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E58, &unk_2260A0950);
        sub_226099F48();

        v60 = v22;
        sub_225EFE6BC(v21);
      }

      v16 = v61[0];
      sub_2260998E8();
      sub_225EFE6E8(v61);
      return v16;
    }

    else
    {
      v15 = v61[0];
      sub_2260998E8();
      sub_225EFE6E8(v61);
      return v15;
    }
  }
}

uint64_t sub_2260327B4()
{
  sub_226039094(0);

  return 0;
}

uint64_t sub_2260327EC()
{
  v320 = &v391;
  v322 = 0;
  v390 = 0;
  v389 = 0;
  v388 = 0;
  v323 = 0;
  v385 = 0;
  v382 = 0;
  v379 = 0;
  v375 = 0;
  v369 = 0;
  v368 = 0;
  v366 = 0;
  v365 = 0;
  v364 = 0;
  v363[1] = 0;
  v363[0] = 0;
  v355 = 0;
  v354 = 0;
  v353 = 0;
  v352 = 0;
  v351 = 0;
  v350 = 0;
  v349 = 0;
  v348 = 0;
  v342 = 0u;
  v341 = 0u;
  v340 = 0;
  v339 = 0;
  v338 = 0u;
  v337 = 0u;
  v334 = 0;
  v333 = 0;
  v332 = 0;
  v324 = sub_226098C58();
  v325 = *(v324 - 8);
  v326 = v325;
  v327 = *(v325 + 64);
  MEMORY[0x28223BE20](v324 - 8, v324, v1, v2);
  v329 = (v327 + 15) & 0xFFFFFFFFFFFFFFF0;
  v328 = &v86 - v329;
  MEMORY[0x28223BE20](&v86 - v329, v3, v4, v5);
  v330 = &v86 - v329;
  v390 = v0;
  if ((sub_226035830() & 1) == 0)
  {
    return v323;
  }

  v6 = v323;
  v306 = BiomeLibrary();
  swift_getObjectType();
  v304 = [v306 Dictation];
  swift_getObjectType();
  v305 = [v304 UserEdit];
  v389 = v305;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v315 = 0;
  v307 = sub_226038DD0();
  v311 = v321[8];
  v308 = v321[9];
  sub_2260998E8();
  v309 = v321[6];
  v310 = v321[7];
  sub_2260998E8();
  sub_225F27014();
  v7 = sub_225F27F74(v321[10]);
  v312 = sub_226034774(v311, v308, v309, v310, v7);
  v388 = v312;
  v313 = &v387;
  swift_beginAccess();
  v314 = v321[17];
  sub_2260998E8();
  swift_endAccess();
  v386 = v314;
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786E80, &qword_2260A11F0);
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786E88, &qword_2260A11F8);
  sub_226038E34();
  v8 = sub_226099BF8();
  v318 = v6;
  v319 = v8;
  if (v6)
  {
    __break(1u);
    goto LABEL_54;
  }

  v299 = v319;
  sub_225EFE6E8(&v386);
  v385 = v299;
  v302 = &v384;
  swift_beginAccess();
  v300 = v321[13];
  v303 = v321[14];
  v301 = v303;
  sub_2260998E8();
  swift_endAccess();
  if (!v303)
  {
    v296 = v318;
    goto LABEL_44;
  }

  v297 = v300;
  v298 = v301;
  v290 = v301;
  v291 = v300;
  v368 = v300;
  v369 = v301;
  v294 = &v367;
  swift_beginAccess();
  v292 = v321[15];
  v295 = v321[16];
  v293 = v295;
  sub_2260998E8();
  swift_endAccess();
  if (!v295)
  {

    v296 = v318;
    goto LABEL_44;
  }

  v288 = v292;
  v289 = v293;
  v286 = v293;
  v285 = v292;
  v365 = v292;
  v366 = v293;
  v287 = sub_226099B18();
  sub_2260998E8();
  if (v287)
  {
    v284 = 0;
  }

  else
  {
    v284 = sub_226099B18() ^ 1;
  }

  v283 = v284;

  if (v283)
  {
    v280 = swift_allocObject();
    v275 = v280;
    v276 = (v280 + 16);
    v364 = v280 + 16;
    v279 = MEMORY[0x277D837D0];
    v277 = sub_22609A4F8();
    v278 = v9;
    sub_2260998E8();
    v10 = v278;
    v11 = v290;
    *v278 = v291;
    v10[1] = v11;
    sub_225EF5418();
    *(v280 + 16) = sub_226099F08();
    sub_2260998E8();
    v362 = v299;
    v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786E98, &qword_2260A1200);
    sub_226038F20();
    sub_22609A028();
    for (i = v318; ; i = v252)
    {
      v272 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786EC8, &unk_2260A1210);
      sub_22609A388();
      v273 = v360;
      v274 = v361;
      if (!*(&v360 + 1))
      {
        break;
      }

      v270 = v273;
      v271 = v274;
      v262 = *(&v274 + 1);
      v263 = v274;
      v264 = *(&v273 + 1);
      v265 = v273;
      v341 = v273;
      v342 = v274;
      v267 = MEMORY[0x277D837D0];
      sub_22609A4F8();
      v268 = MEMORY[0x277D837E0];
      v340 = sub_226099F08();
      v266 = *v276;
      sub_2260998E8();
      sub_226099F18();
      v12 = *v320;
      v13 = v320[1];
      v339 = v392;
      v338 = v13;
      v337 = v12;
      for (j = v272; ; j = v253)
      {
        v259 = j;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E68, &qword_22609F988);
        sub_226099F68();
        v260 = v335;
        v261 = v336;
        if (!v336)
        {
          break;
        }

        v257 = v260;
        v258 = v261;
        v255 = v261;
        v333 = v260;
        v334 = v261;
        v256 = sub_22603220C(v260, v261, v265, v264, v263, v262);
        v332 = v256;
        if ((sub_226099F58() & 1) == 0)
        {
          sub_2260998E8();
          v331 = v256;
          v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E58, &unk_2260A0950);
          sub_22601F6A0();
          sub_226099F88();
        }

        v253 = v259;
      }

      v252 = v259;
      sub_225F15874(&v337);
      v251 = v340;
      sub_2260998E8();
      v14 = *v276;
      *v276 = v251;

      sub_225EFE6E8(&v340);
    }

    sub_225EFE6E8(v363);
    v249 = *v276;
    sub_2260998E8();
    v358 = v285;
    v359 = v286;
    v250 = sub_226099F78();

    if ((v250 & 1) == 0)
    {
      v153 = v272;
      goto LABEL_42;
    }

    v246 = [objc_opt_self() sharedPreferences];
    v247 = [v246 siriDataSharingOptInStatus];

    v357 = v247;
    v356 = 1;
    v248 = type metadata accessor for AFSiriDataSharingOptInStatus();
    sub_225EFE4AC();
    v355 = sub_22609A508() & 1;
    if (!v355)
    {
      v154 = v272;
      goto LABEL_40;
    }

    v15 = v330;
    v16 = sub_225EFE52C();
    (*(v326 + 16))(v15, v16, v324);
    sub_2260998E8();
    v225 = 32;
    v230 = 32;
    v231 = 7;
    v17 = swift_allocObject();
    v18 = v286;
    v222 = v17;
    *(v17 + 16) = v285;
    *(v17 + 24) = v18;

    v19 = swift_allocObject();
    v20 = v275;
    v232 = v19;
    *(v19 + 16) = sub_226039140;
    *(v19 + 24) = v20;

    v245 = sub_226098C48();
    v218 = v245;
    v244 = sub_22609A088();
    v219 = v244;
    v226 = 17;
    v235 = swift_allocObject();
    v220 = v235;
    *(v235 + 16) = v225;
    v236 = swift_allocObject();
    v221 = v236;
    v228 = 8;
    *(v236 + 16) = 8;
    v21 = swift_allocObject();
    v22 = v222;
    v223 = v21;
    *(v21 + 16) = sub_225EF7450;
    *(v21 + 24) = v22;
    v23 = swift_allocObject();
    v24 = v223;
    v237 = v23;
    v224 = v23;
    *(v23 + 16) = sub_225EF7B84;
    *(v23 + 24) = v24;
    v238 = swift_allocObject();
    v227 = v238;
    *(v238 + 16) = v225;
    v239 = swift_allocObject();
    v229 = v239;
    *(v239 + 16) = v228;
    v25 = swift_allocObject();
    v26 = v232;
    v233 = v25;
    *(v25 + 16) = sub_226039148;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v233;
    v242 = v27;
    v234 = v27;
    *(v27 + 16) = sub_225EF7B84;
    *(v27 + 24) = v28;
    v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v240 = sub_22609A4F8();
    v241 = v29;

    v30 = v235;
    v31 = v241;
    *v241 = sub_225EF7434;
    v31[1] = v30;

    v32 = v236;
    v33 = v241;
    v241[2] = sub_225EF7434;
    v33[3] = v32;

    v34 = v237;
    v35 = v241;
    v241[4] = sub_225EF7B90;
    v35[5] = v34;

    v36 = v238;
    v37 = v241;
    v241[6] = sub_225EF7434;
    v37[7] = v36;

    v38 = v239;
    v39 = v241;
    v241[8] = sub_225EF7434;
    v39[9] = v38;

    v40 = v241;
    v41 = v242;
    v241[10] = sub_225EF7B90;
    v40[11] = v41;
    sub_225EF5418();

    if (os_log_type_enabled(v245, v244))
    {
      v42 = v272;
      v211 = sub_22609A188();
      v208 = v211;
      v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v212 = sub_225EF5468(0);
      v210 = v212;
      v214 = 2;
      v213 = sub_225EF5468(2);
      v347 = v211;
      v346 = v212;
      v345 = v213;
      v215 = &v347;
      sub_225EF54BC(v214, &v347);
      sub_225EF54BC(v214, v215);
      v343 = sub_225EF7434;
      v344 = v220;
      sub_225EF73E8(&v343, v215, &v346, &v345);
      v216 = v42;
      v217 = v42;
      if (v42)
      {
        v206 = 0;

        __break(1u);
      }

      else
      {
        v343 = sub_225EF7434;
        v344 = v221;
        sub_225EF73E8(&v343, &v347, &v346, &v345);
        v204 = 0;
        v205 = 0;
        v343 = sub_225EF7B90;
        v344 = v224;
        sub_225EF73E8(&v343, &v347, &v346, &v345);
        v202 = 0;
        v203 = 0;
        v343 = sub_225EF7434;
        v344 = v227;
        sub_225EF73E8(&v343, &v347, &v346, &v345);
        v200 = 0;
        v201 = 0;
        v343 = sub_225EF7434;
        v344 = v229;
        sub_225EF73E8(&v343, &v347, &v346, &v345);
        v198 = 0;
        v199 = 0;
        v343 = sub_225EF7B90;
        v344 = v234;
        sub_225EF73E8(&v343, &v347, &v346, &v345);
        v196 = 0;
        v197 = 0;
        _os_log_impl(&dword_225EEB000, v218, v219, "Variants contain correctedText: %s, variants: %s", v208, 0x16u);
        sub_225EF7AF4(v210);
        sub_225EF7AF4(v213);
        sub_22609A168();

        v207 = v196;
      }
    }

    else
    {
      v43 = v272;

      v207 = v43;
    }

    v194 = v207;

    (*(v326 + 8))(v330, v324);
    sub_226039238();
    v195 = sub_225F26174();
    if (v195)
    {
      v193 = v195;
      v189 = v195;
      v354 = v195;
      sub_225F4C57C();
      v190 = v321[2];
      v191 = v321[3];
      sub_2260998E8();
      v192 = sub_225F49880();
      if (!v192)
      {
        goto LABEL_37;
      }

      v188 = v192;
      v177 = v192;
      v353 = v192;
      v186 = 0;
      v171 = sub_225F7BD5C();
      v44 = v177;
      v172 = sub_226098A78();
      v173 = *(v172 - 8);
      v174 = v173;
      v182 = *(v173 + 64);
      v175 = v182;
      v178 = &v86;
      MEMORY[0x28223BE20](v177, &v86, v45, v46);
      v184 = (v182 + 15) & 0xFFFFFFFFFFFFFFF0;
      v176 = &v86 - v184;
      sub_226098A48();
      v180 = sub_22603E5E0(v176);
      v179 = v180;

      v352 = v180;
      v47 = v180;
      [v189 setOriginalAsrId_];

      sub_2260998E8();
      v181 = sub_2260999F8();

      [v189 setFullCorrectedText_];

      v183 = &v86;
      MEMORY[0x28223BE20](&v86, v48, v49, v50);
      v185 = &v86 - v184;
      v351 = &v86 - v184;
      sub_226098A68();
      sub_22603929C();
      v51 = sub_225F26174();
      v187 = v51;
      if (v51)
      {
        v170 = v187;
        v167 = v187;
        v350 = v187;
        v166 = &v86;
        MEMORY[0x28223BE20](&v86, v185, v172, v52);
        v165 = &v86 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v174 + 16))();
        v168 = sub_22603E5E0(v165);
        [v167 setAsrId_];

        sub_226039300();
        v169 = sub_225F26174();
        if (v169)
        {
          v164 = v169;
          v161 = v169;
          v349 = v169;
          v54 = v167;
          [v161 setEventMetadata_];

          v55 = v189;
          [v161 setAlternativeSelectionTextCategorized_];

          v156 = [objc_opt_self() sharedAnalytics];
          v160 = [v156 defaultMessageStream];
          v348 = v160;

          v158 = &v86;
          MEMORY[0x28223BE20](&v86, v56, v57, v58);
          v157 = &v86 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_226098A68();
          v159 = sub_226098A38();
          v163 = *(v174 + 8);
          v162 = v174 + 8;
          v163(v157, v172);
          [v160 emitMessage:v161 isolatedStreamUUID:v159];

          v163(v185, v172);
LABEL_37:

          v154 = v194;
LABEL_40:
          v153 = v154;
LABEL_42:
          v152 = v153;

          v296 = v152;
          goto LABEL_44;
        }

        (*(v174 + 8))(v185, v172);

        return v194;
      }

      else
      {
        (*(v174 + 8))(v185, v172);

        return v194;
      }
    }

    else
    {

      return v194;
    }
  }

  v296 = v318;
LABEL_44:
  v60 = v296;
  v383 = v299;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786E98, &qword_2260A1200);
  v147 = 0;
  v149 = sub_226038EBC();
  v61 = sub_226038F20();
  v63 = sub_225F15970(sub_2260354FC, v147, v148, v149, MEMORY[0x277D84A98], v61, MEMORY[0x277D84AC0], v62);
  v150 = v60;
  v151 = v63;
  if (!v60)
  {
    v138 = v151;
    v382 = v151;
    v139 = &v381;
    v142 = 0;
    swift_beginAccess();
    v140 = v321[12];
    sub_2260998E8();
    swift_endAccess();
    v380 = v140;
    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786EB0, &qword_2260A1208);
    v144 = sub_226038FA8();
    v141 = v144;
    v64 = sub_22603900C();
    v66 = sub_225F15970(sub_2260356A0, v142, v143, v144, MEMORY[0x277D84A98], v64, MEMORY[0x277D84AC0], v65);
    v145 = 0;
    v146 = v66;
    v107 = v66;
    sub_225EFE6E8(&v380);
    v379 = v107;
    v114 = 0;
    sub_225F7DBE8();
    v116 = v321[2];
    v117 = v321[3];
    sub_2260998E8();
    v112 = v321[4];
    v113 = v321[5];
    sub_2260998E8();
    v67 = v312;
    v125 = 32;
    v104 = &v378;
    swift_beginAccess();
    v115 = v321[15];
    v111 = v321[16];
    sub_2260998E8();
    swift_endAccess();
    v105 = &v377;
    swift_beginAccess();
    v110 = v321[13];
    v109 = v321[14];
    sub_2260998E8();
    swift_endAccess();
    v106 = &v376;
    swift_beginAccess();
    v108 = v321[11];
    sub_2260998E8();
    swift_endAccess();
    sub_2260998E8();
    sub_2260998E8();
    sub_22609A4F8();
    v68 = sub_226035744(v116, v117, v112, v113, v312, v114, v114, v115, v111, v110, v109);
    v69 = v328;
    v119 = v68;
    v118 = v68;
    v375 = v68;
    v70 = sub_225EFE52C();
    (*(v326 + 16))(v69, v70, v324);
    v71 = v119;
    v126 = 7;
    v127 = swift_allocObject();
    *(v127 + 16) = v119;
    v137 = sub_226098C48();
    v120 = v137;
    v136 = sub_22609A078();
    v121 = v136;
    v122 = 17;
    v130 = swift_allocObject();
    v123 = v130;
    *(v130 + 16) = 64;
    v131 = swift_allocObject();
    v124 = v131;
    *(v131 + 16) = 8;
    v72 = swift_allocObject();
    v73 = v127;
    v128 = v72;
    *(v72 + 16) = sub_225F3E198;
    *(v72 + 24) = v73;
    v74 = swift_allocObject();
    v75 = v128;
    v134 = v74;
    v129 = v74;
    *(v74 + 16) = sub_225F3E1C8;
    *(v74 + 24) = v75;
    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v132 = sub_22609A4F8();
    v133 = v76;

    v77 = v130;
    v78 = v133;
    *v133 = sub_225EF7434;
    v78[1] = v77;

    v79 = v131;
    v80 = v133;
    v133[2] = sub_225EF7434;
    v80[3] = v79;

    v81 = v133;
    v82 = v134;
    v133[4] = sub_225F3E358;
    v81[5] = v82;
    sub_225EF5418();

    if (os_log_type_enabled(v137, v136))
    {
      v83 = v145;
      v97 = sub_22609A188();
      v94 = v97;
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v100 = 1;
      v98 = sub_225EF5468(1);
      v96 = v98;
      v99 = sub_225EF5468(0);
      v374 = v97;
      v373 = v98;
      v372 = v99;
      v101 = &v374;
      sub_225EF54BC(2, &v374);
      sub_225EF54BC(v100, v101);
      v370 = sub_225EF7434;
      v371 = v123;
      sub_225EF73E8(&v370, v101, &v373, &v372);
      v102 = v83;
      v103 = v83;
      if (v83)
      {
        v92 = 0;

        __break(1u);
      }

      else
      {
        v370 = sub_225EF7434;
        v371 = v124;
        sub_225EF73E8(&v370, &v374, &v373, &v372);
        v90 = 0;
        v91 = 0;
        v370 = sub_225F3E358;
        v371 = v129;
        sub_225EF73E8(&v370, &v374, &v373, &v372);
        v88 = 0;
        v89 = 0;
        _os_log_impl(&dword_225EEB000, v120, v121, "Donating edit record to Biome: %@", v94, 0xCu);
        sub_225EF7AF4(v96);
        sub_225EF7AF4(v99);
        sub_22609A168();

        v93 = v88;
      }
    }

    else
    {
      v84 = v145;

      v93 = v84;
    }

    v87 = v93;

    (*(v326 + 8))(v328, v324);
    v86 = [v305 source];
    [v86 sendEvent_];

    return v87;
  }

LABEL_54:
  __break(1u);
  result = 0;
  __break(1u);
  return result;
}

uint64_t sub_2260347D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v88 = a2;
  v96 = a1;
  v90 = sub_225F2CE08;
  v91 = sub_226039728;
  v92 = sub_225EF7B84;
  v93 = sub_225EF7434;
  v94 = sub_225EF7434;
  v95 = sub_225EF7B90;
  v128 = 0;
  v124 = 0;
  v125 = 0;
  v120 = 0;
  v121 = 0;
  v113 = 0;
  v114 = 0;
  v111 = 0;
  v112 = 0;
  v97 = sub_226098C58();
  v98 = *(v97 - 8);
  v99 = v97 - 8;
  v100 = (*(v98 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v101 = &v33 - v100;
  v102 = *MEMORY[0x28223BE20](v96, v2, v3, v4);
  v128 = v102;
  v5 = sub_226099AA8();
  v103 = v126;
  v126[0] = v5;
  v126[1] = v6;
  sub_226099938();
  sub_225EFE6BC(v103);
  v104 = v127;
  if (v127)
  {
    v87 = v104;
    v107 = v104;
    v7 = swift_dynamicCast();
    if (v7)
    {
      v83 = v105;
      v84 = v106;
    }

    else
    {
      v83 = 0;
      v84 = 0;
    }

    v85 = v83;
    v86 = v84;
  }

  else
  {
    v85 = 0;
    v86 = 0;
  }

  v79 = v86;
  v80 = v85;
  v124 = v85;
  v125 = v86;
  v8 = sub_226099AA8();
  v81 = v122;
  v122[0] = v8;
  v122[1] = v9;
  sub_226099938();
  sub_225EFE6BC(v81);
  v82 = v123;
  if (v123)
  {
    v78 = v82;
    v110 = v82;
    v10 = swift_dynamicCast();
    if (v10)
    {
      v74 = v108;
      v75 = v109;
    }

    else
    {
      v74 = 0;
      v75 = 0;
    }

    v76 = v74;
    v77 = v75;
  }

  else
  {
    v76 = 0;
    v77 = 0;
  }

  v72 = v77;
  v73 = v76;
  v120 = v76;
  v121 = v77;
  sub_2260998E8();
  if (v79)
  {
    v70 = v80;
    v71 = v79;
    v68 = v79;
    v69 = v80;
    v113 = v80;
    v114 = v79;
    sub_2260998E8();
    if (v72)
    {
      v66 = v73;
      v67 = v72;
      v63 = v72;
      v64 = v73;
      v111 = v73;
      v112 = v72;
      v65 = sub_226099B18();
      sub_2260998E8();
      if (v65)
      {
        v62 = 0;
      }

      else
      {
        v62 = sub_226099B18() ^ 1;
      }

      v61 = v62;

      if (v61)
      {
        sub_2260998E8();
        sub_2260998E8();
        v11 = v63;
        v12 = v69;
        v13 = v88;
        v14 = v68;
        *v88 = v64;
        v13[1] = v11;
        v13[2] = v12;
        v13[3] = v14;

        result = v89;
        v60 = v89;
        return result;
      }
    }

    else
    {
    }
  }

  v16 = v101;
  v17 = sub_225EFE52C();
  (*(v98 + 16))(v16, v17, v97);
  sub_2260998E8();
  v49 = 7;
  v46 = swift_allocObject();
  *(v46 + 16) = v102;

  v48 = 32;
  v18 = swift_allocObject();
  v19 = v46;
  v50 = v18;
  *(v18 + 16) = v90;
  *(v18 + 24) = v19;

  v58 = sub_226098C48();
  v59 = sub_22609A088();
  v47 = 17;
  v52 = swift_allocObject();
  *(v52 + 16) = 32;
  v53 = swift_allocObject();
  *(v53 + 16) = 8;
  v20 = swift_allocObject();
  v21 = v50;
  v51 = v20;
  *(v20 + 16) = v91;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v51;
  v55 = v22;
  *(v22 + 16) = v92;
  *(v22 + 24) = v23;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v54 = sub_22609A4F8();
  v56 = v24;

  v25 = v52;
  v26 = v56;
  *v56 = v93;
  v26[1] = v25;

  v27 = v53;
  v28 = v56;
  v56[2] = v94;
  v28[3] = v27;

  v29 = v55;
  v30 = v56;
  v56[4] = v95;
  v30[5] = v29;
  sub_225EF5418();

  if (os_log_type_enabled(v58, v59))
  {
    v39 = sub_22609A188();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v40 = sub_225EF5468(0);
    v41 = sub_225EF5468(1);
    v42 = &v119;
    v119 = v39;
    v43 = &v118;
    v118 = v40;
    v44 = &v117;
    v117 = v41;
    sub_225EF54BC(2, &v119);
    sub_225EF54BC(1, v42);
    v31 = v89;
    v115 = v93;
    v116 = v52;
    sub_225EF73E8(&v115, v42, v43, v44);
    v45 = v31;
    if (v31)
    {

      __break(1u);
    }

    else
    {
      v115 = v94;
      v116 = v53;
      sub_225EF73E8(&v115, &v119, &v118, &v117);
      v36 = 0;
      v115 = v95;
      v116 = v55;
      sub_225EF73E8(&v115, &v119, &v118, &v117);
      v35 = 0;
      _os_log_impl(&dword_225EEB000, v58, v59, "CESABiomeDictationUserEditRecord.selectedAlternativesInfo element %s does not contain expected data", v39, 0xCu);
      sub_225EF7AF4(v40);
      sub_225EF7AF4(v41);
      sub_22609A168();

      v37 = v35;
    }
  }

  else
  {

    v37 = v89;
  }

  v34 = v37;
  MEMORY[0x277D82BD8](v58);
  (*(v98 + 8))(v101, v97);
  v32 = v88;
  *v88 = 0;
  v32[1] = 0;
  v32[2] = 0;
  v32[3] = 0;

  return v34;
}

uint64_t sub_2260354A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + 16);
  swift_beginAccess();
  sub_226025838(v3, a2);
  return swift_endAccess();
}

id sub_2260354FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v10 = a1[1];
  v7 = a1[2];
  v9 = a1[3];
  sub_226038EBC();
  sub_22609A4F8();
  v6 = v2;
  sub_2260998E8();
  sub_2260998E8();
  *v6 = v5;
  v6[1] = v10;
  sub_225EF5418();

  sub_22609A4F8();
  v8 = v3;
  sub_2260998E8();
  sub_2260998E8();
  *v8 = v7;
  v8[1] = v9;
  sub_225EF5418();

  result = sub_226035650(0);
  *a2 = result;
  return result;
}

id sub_2260356A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_226038FA8();
  sub_2260998E8();
  result = sub_226035704();
  *a2 = result;
  return result;
}

uint64_t sub_226035830()
{
  v33 = 0;
  v29 = 0;
  v37 = v0;
  swift_beginAccess();
  v23 = *(v0 + 104);
  v24 = *(v0 + 112);
  sub_2260998E8();
  swift_endAccess();
  v36[0] = v23;
  v36[1] = v24;
  if (v24)
  {
    sub_2260998E8();
    sub_225EFE6BC(v36);
    v20 = sub_226099B18();

    v21 = v20 & 1;
  }

  else
  {
    sub_225EFE6BC(v36);
    v21 = 2;
  }

  v34 = v21;
  v35 = 0;
  if (v21 != 2)
  {
    if (v35 != 2)
    {
      v19 = (v21 & 1) == (v35 & 1);
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (v35 != 2)
  {
LABEL_11:
    v19 = 0;
    goto LABEL_9;
  }

  v19 = 1;
LABEL_9:

  if (v19)
  {
    swift_beginAccess();
    v16 = *(v22 + 88);
    sub_2260998E8();
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
    sub_225F156F8();
    v17 = sub_22609A008();

    v18 = (v17 & 1) == 0;
  }

  else
  {
    v18 = 0;
  }

  v33 = v18;
  swift_beginAccess();
  v14 = *(v22 + 120);
  v15 = *(v22 + 128);
  sub_2260998E8();
  swift_endAccess();
  v32[0] = v14;
  v32[1] = v15;
  if (v15)
  {
    sub_2260998E8();
    sub_225EFE6BC(v32);
    v12 = sub_226099B18();

    v13 = v12 & 1;
  }

  else
  {
    sub_225EFE6BC(v32);
    v13 = 2;
  }

  v30 = v13;
  v31 = 0;
  if (v13 != 2)
  {
    if (v31 != 2)
    {
      v11 = (v13 & 1) == (v31 & 1);
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  if (v31 != 2)
  {
LABEL_24:
    v11 = 0;
    goto LABEL_22;
  }

  v11 = 1;
LABEL_22:
  v29 = v11;
  swift_beginAccess();
  v10 = *(v22 + 144);
  swift_endAccess();
  v9 = (v10 & 1) != 0 && v18;
  v8 = v9 && v11;

  if (!v8)
  {
    v2 = 0;
    goto LABEL_41;
  }

  swift_beginAccess();
  v5 = *(v22 + 104);
  v6 = *(v22 + 112);
  sub_2260998E8();
  swift_endAccess();
  sub_2260998E8();
  swift_beginAccess();
  v7 = *(v22 + 120);
  sub_2260998E8();
  swift_endAccess();
  sub_2260998E8();
  v27[0] = v5;
  v27[1] = v6;
  v28 = v7;
  if (!v6)
  {
    if (!*(&v28 + 1))
    {
      sub_225EFE6BC(v27);
      v4 = 1;
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  sub_225F4C5E0(v27, v26);
  if (!*(&v28 + 1))
  {
    sub_225EFE6BC(v26);
LABEL_38:
    sub_225F4C1C0(v27);
    v4 = 0;
    goto LABEL_37;
  }

  v25 = v28;
  v3 = MEMORY[0x22AA72BD0](v26[0], v26[1], v28, *(&v28 + 1));
  sub_225EFE6BC(&v25);
  sub_225EFE6BC(v26);
  sub_225EFE6BC(v27);
  v4 = v3;
LABEL_37:

  v2 = v4 ^ 1;
LABEL_41:

  return v2 & 1;
}

uint64_t sub_226035E5C()
{
  sub_225EFE6BC((v0 + 2));
  sub_225EFE6BC((v0 + 4));
  sub_225EFE6BC((v0 + 6));
  sub_225EFE6BC((v0 + 8));
  sub_225EFE6E8(v0 + 11);
  sub_225EFE6E8(v0 + 12);
  sub_225EFE6BC((v0 + 13));
  sub_225EFE6BC((v0 + 15));
  sub_225EFE6E8(v0 + 17);
  return v2;
}

uint64_t sub_226035F30()
{
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  sub_2260998E8();
  return v2;
}

uint64_t sub_226035F70()
{
  swift_beginAccess();
  v2 = *(v0 + 104);
  sub_225EF5A38(v2, *(v0 + 112));
  swift_endAccess();
  return v2;
}

uint64_t sub_226035FCC(uint64_t a1, unint64_t a2)
{
  sub_225EF5A38(a1, a2);
  swift_beginAccess();
  v3 = *(v2 + 104);
  v4 = *(v2 + 112);
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  sub_225EF5990(v3, v4);
  swift_endAccess();
  return sub_225EF5990(a1, a2);
}

uint64_t sub_226036040()
{
  swift_beginAccess();
  v2 = *(v0 + 120);
  sub_225EF5A38(v2, *(v0 + 128));
  swift_endAccess();
  return v2;
}

uint64_t sub_22603609C(uint64_t a1, unint64_t a2)
{
  sub_225EF5A38(a1, a2);
  swift_beginAccess();
  v3 = *(v2 + 120);
  v4 = *(v2 + 128);
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  sub_225EF5990(v3, v4);
  swift_endAccess();
  return sub_225EF5990(a1, a2);
}

uint64_t sub_226036110()
{
  swift_beginAccess();
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  sub_2260998E8();
  swift_endAccess();
  return v2;
}

uint64_t sub_22603616C(uint64_t a1, uint64_t a2)
{
  sub_2260998E8();
  swift_beginAccess();
  v3 = *(v2 + 144);
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;

  swift_endAccess();
}

uint64_t sub_2260361DC()
{
  swift_beginAccess();
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  sub_2260998E8();
  swift_endAccess();
  return v2;
}

uint64_t sub_226036238(uint64_t a1, uint64_t a2)
{
  sub_2260998E8();
  swift_beginAccess();
  v3 = *(v2 + 160);
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;

  swift_endAccess();
}

uint64_t sub_226036304()
{
  swift_beginAccess();
  v2 = *(v0 + 168);
  sub_2260998E8();
  swift_endAccess();
  return v2;
}

uint64_t sub_226036354(uint64_t a1)
{
  sub_2260998E8();
  swift_beginAccess();
  v2 = *(v1 + 168);
  *(v1 + 168) = a1;

  swift_endAccess();
}

uint64_t sub_226036410()
{
  swift_beginAccess();
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  sub_2260998E8();
  swift_endAccess();
  return v2;
}

uint64_t sub_22603646C(uint64_t a1, uint64_t a2)
{
  sub_2260998E8();
  swift_beginAccess();
  v3 = *(v2 + 184);
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;

  swift_endAccess();
}

uint64_t sub_226036538()
{
  swift_beginAccess();
  v2 = *(v0 + 192);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_226036588(char a1)
{
  swift_beginAccess();
  *(v1 + 192) = a1;
  return swift_endAccess();
}

uint64_t sub_226036630()
{
  swift_beginAccess();
  v2 = *(v0 + 193);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_226036680(char a1)
{
  swift_beginAccess();
  *(v1 + 193) = a1;
  return swift_endAccess();
}

uint64_t sub_226036728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char a13)
{
  *(v13 + 104) = sub_2260989B8();
  *(v13 + 112) = v14;
  *(v13 + 120) = sub_2260989B8();
  *(v13 + 128) = v15;
  *(v13 + 136) = sub_226099AA8();
  *(v13 + 144) = v16;
  *(v13 + 152) = sub_226099AA8();
  *(v13 + 160) = v17;
  *(v13 + 168) = sub_22609A4F8();
  *(v13 + 176) = 0;
  *(v13 + 184) = 0;
  *(v13 + 192) = 0;
  *(v13 + 193) = 0;
  sub_2260998E8();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  sub_2260998E8();
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  sub_2260998E8();
  *(v13 + 48) = a5;
  *(v13 + 56) = a6;
  sub_2260998E8();
  *(v13 + 64) = a7;
  *(v13 + 72) = a8;
  sub_2260998E8();
  *(v13 + 80) = a9;
  *(v13 + 88) = a10;
  *(v13 + 96) = a11;
  swift_beginAccess();
  v18 = *(v13 + 184);
  *(v13 + 176) = 0;
  *(v13 + 184) = 0;

  swift_endAccess();
  swift_beginAccess();
  *(v13 + 192) = a12;
  swift_endAccess();
  swift_beginAccess();
  *(v13 + 193) = a13;
  swift_endAccess();

  return v28;
}

unint64_t sub_2260369EC()
{
  v2 = qword_27D786E70;
  if (!qword_27D786E70)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786E70);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_226036A50()
{
  v65 = sub_226039364;
  v66 = sub_225EF70FC;
  v68 = sub_225EF7108;
  v70 = sub_225EF7150;
  v74 = sub_22603936C;
  v75 = sub_225EF70FC;
  v77 = sub_225EF7108;
  v81 = sub_225EF7150;
  v83 = sub_225EF7434;
  v85 = sub_225EF7434;
  v87 = sub_225EF715C;
  v89 = sub_225EF7434;
  v91 = sub_225EF7434;
  v94 = sub_225EF715C;
  v107 = 0;
  v58 = 0;
  v63 = sub_226098C58();
  v61 = *(v63 - 8);
  v62 = v63 - 8;
  v59 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v63, v0, v1, v2);
  v3 = &v37[-v59];
  v60 = &v37[-v59];
  v107 = v4;
  v5 = sub_225EFE52C();
  (*(v61 + 16))(v3, v5, v63);

  v6 = sub_226098C48();
  v7 = v64;
  v98 = v6;
  v99 = sub_22609A088();
  v72 = 17;
  v79 = 7;
  v84 = swift_allocObject();
  *(v84 + 16) = 0;
  v86 = swift_allocObject();
  v73 = 4;
  *(v86 + 16) = 4;
  v78 = 32;
  v8 = swift_allocObject();
  v67 = v8;
  *(v8 + 16) = v65;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  v10 = v67;
  v69 = v9;
  *(v9 + 16) = v66;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v69;
  v71 = v11;
  *(v11 + 16) = v68;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v71;
  v88 = v13;
  *(v13 + 16) = v70;
  *(v13 + 24) = v14;
  v90 = swift_allocObject();
  *(v90 + 16) = 0;
  v92 = swift_allocObject();
  *(v92 + 16) = v73;
  v15 = swift_allocObject();
  v76 = v15;
  *(v15 + 16) = v74;
  *(v15 + 24) = v7;
  v16 = swift_allocObject();
  v17 = v76;
  v80 = v16;
  *(v16 + 16) = v75;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v80;
  v82 = v18;
  *(v18 + 16) = v77;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v82;
  v95 = v20;
  *(v20 + 16) = v81;
  *(v20 + 24) = v21;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v93 = sub_22609A4F8();
  v96 = v22;

  v23 = v84;
  v24 = v96;
  *v96 = v83;
  v24[1] = v23;

  v25 = v86;
  v26 = v96;
  v96[2] = v85;
  v26[3] = v25;

  v27 = v88;
  v28 = v96;
  v96[4] = v87;
  v28[5] = v27;

  v29 = v90;
  v30 = v96;
  v96[6] = v89;
  v30[7] = v29;

  v31 = v92;
  v32 = v96;
  v96[8] = v91;
  v32[9] = v31;

  v33 = v95;
  v34 = v96;
  v96[10] = v94;
  v34[11] = v33;
  sub_225EF5418();

  if (os_log_type_enabled(v98, v99))
  {
    v35 = v58;
    v51 = sub_22609A188();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v50 = 0;
    v52 = sub_225EF5468(0);
    v53 = sub_225EF5468(v50);
    v54 = &v104;
    v104 = v51;
    v55 = &v103;
    v103 = v52;
    v56 = &v102;
    v102 = v53;
    sub_225EF54BC(0, &v104);
    sub_225EF54BC(2, v54);
    v100 = v83;
    v101 = v84;
    sub_225EF73E8(&v100, v54, v55, v56);
    v57 = v35;
    if (v35)
    {

      __break(1u);
    }

    else
    {
      v100 = v85;
      v101 = v86;
      sub_225EF73E8(&v100, &v104, &v103, &v102);
      v48 = 0;
      v100 = v87;
      v101 = v88;
      sub_225EF73E8(&v100, &v104, &v103, &v102);
      v47 = 0;
      v100 = v89;
      v101 = v90;
      sub_225EF73E8(&v100, &v104, &v103, &v102);
      v46 = 0;
      v100 = v91;
      v101 = v92;
      sub_225EF73E8(&v100, &v104, &v103, &v102);
      v45 = 0;
      v100 = v94;
      v101 = v95;
      sub_225EF73E8(&v100, &v104, &v103, &v102);
      _os_log_impl(&dword_225EEB000, v98, v99, "CESABiomeContextualReplayRecord: audioSelectedForSampling: %{BOOL}d, hasVisualContext: %{BOOL}d", v51, 0xEu);
      v44 = 0;
      sub_225EF7AF4(v52);
      sub_225EF7AF4(v53);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v98);
  (*(v61 + 8))(v60, v63);
  v42 = &v106;
  swift_beginAccess();
  v43 = *(v64 + 192);
  swift_endAccess();

  if (v43)
  {
    v39 = &v105;
    swift_beginAccess();
    v40 = *(v64 + 193);
    swift_endAccess();
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  v38 = v41;

  return v38 & 1;
}

uint64_t sub_226037594(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 192);
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_2260375EC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 193);
  swift_endAccess();
  return v3 & 1;
}

BOOL sub_226037644()
{
  v41 = sub_226039374;
  v44 = sub_225F2D374;
  v46 = sub_225EF7434;
  v48 = sub_225EF7434;
  v51 = sub_225EF71D0;
  v63 = 0;
  v33 = 0;
  v38 = sub_226098C58();
  v36 = *(v38 - 8);
  v37 = v38 - 8;
  v34 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38, v0, v1, v2);
  v3 = v20 - v34;
  v35 = v20 - v34;
  v63 = v4;
  v5 = sub_225EFE52C();
  (*(v36 + 16))(v3, v5, v38);

  v6 = sub_226098C48();
  v7 = v39;
  v55 = v6;
  v56 = sub_22609A088();
  v40 = 17;
  v43 = 7;
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  v49 = swift_allocObject();
  *(v49 + 16) = 8;
  v42 = 32;
  v8 = swift_allocObject();
  v45 = v8;
  *(v8 + 16) = v41;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  v10 = v45;
  v52 = v9;
  *(v9 + 16) = v44;
  *(v9 + 24) = v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v50 = sub_22609A4F8();
  v53 = v11;

  v12 = v47;
  v13 = v53;
  *v53 = v46;
  v13[1] = v12;

  v14 = v49;
  v15 = v53;
  v53[2] = v48;
  v15[3] = v14;

  v16 = v52;
  v17 = v53;
  v53[4] = v51;
  v17[5] = v16;
  sub_225EF5418();

  if (os_log_type_enabled(v55, v56))
  {
    v18 = v33;
    v26 = sub_22609A188();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v25 = 0;
    v27 = sub_225EF5468(0);
    v28 = sub_225EF5468(v25);
    v29 = &v61;
    v61 = v26;
    v30 = &v60;
    v60 = v27;
    v31 = &v59;
    v59 = v28;
    sub_225EF54BC(0, &v61);
    sub_225EF54BC(1, v29);
    v57 = v46;
    v58 = v47;
    sub_225EF73E8(&v57, v29, v30, v31);
    v32 = v18;
    if (v18)
    {

      __break(1u);
    }

    else
    {
      v57 = v48;
      v58 = v49;
      sub_225EF73E8(&v57, &v61, &v60, &v59);
      v23 = 0;
      v57 = v51;
      v58 = v52;
      sub_225EF73E8(&v57, &v61, &v60, &v59);
      _os_log_impl(&dword_225EEB000, v55, v56, "CESABiomeContextualReplayRecord: contextualEntities: %ld", v26, 0xCu);
      v22 = 0;
      sub_225EF7AF4(v27);
      sub_225EF7AF4(v28);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v55);
  (*(v36 + 8))(v35, v38);
  v20[0] = &v62;
  swift_beginAccess();
  v20[1] = *(v39 + 168);
  sub_2260998E8();
  swift_endAccess();
  v21 = sub_226099CD8();

  return v21 > 0;
}

uint64_t sub_226037C7C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 168);
  sub_2260998E8();
  swift_endAccess();
  v4 = sub_226099CD8();

  return v4;
}

uint64_t sub_226037CF4(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  sub_2260998E8();
  return v2;
}

id sub_226037EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = sub_226098A08();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(a1, 1) == 1)
  {
    v12 = 0;
  }

  else
  {
    v11 = sub_2260989D8();
    (*(v18 + 8))(a1, v17);
    v12 = v11;
  }

  if (a3)
  {
    v9 = sub_2260999F8();

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (a5)
  {
    v7 = sub_2260999F8();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v6 = [v15 initWithAbsoluteTimestamp:v12 recognizedText:v10 correctedText:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v12);
  return v6;
}

id sub_2260380C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v9 = sub_2260999F8();

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (a4)
  {
    v7 = sub_2260999F8();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v6 = [v13 initWithTask:v10 language:? sampling:? rate:?];
  MEMORY[0x277D82BD8](a5);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v10);
  return v6;
}

id sub_226038208(uint64_t a1)
{
  v4 = sub_226099C78();
  v3 = sub_226099C78();
  v6 = [v2 initWithIndex:a1 recognizedTokens:v4 correctedTokens:?];
  MEMORY[0x277D82BD8](v3);

  MEMORY[0x277D82BD8](v4);

  MEMORY[0x277D82BD8](a1);
  return v6;
}

id sub_2260382C8()
{
  v2 = sub_226099C78();
  v3 = [v1 initWithTokens_];
  MEMORY[0x277D82BD8](v2);

  return v3;
}

id sub_226038334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
    v23 = sub_2260999F8();

    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (a4)
  {
    v21 = sub_2260999F8();

    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (a9)
  {
    v19 = sub_2260999F8();

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (a11)
  {
    v17 = sub_2260999F8();

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v15 = sub_226099C78();
  sub_226038EBC();
  v14 = sub_226099C78();
  sub_226038FA8();
  v13 = sub_226099C78();
  v12 = sub_226099C78();
  v16 = [v29 initWithAsrID:v24 interactionID:v22 metadata:a5 startIndex:a6 endIndex:a7 correctedText:v20 recognizedText:v18 recognizedTokens:v15 alternativeSelections:v14 preItnNbest:v13 postItnNbest:v12];
  MEMORY[0x277D82BD8](v12);

  MEMORY[0x277D82BD8](v13);

  MEMORY[0x277D82BD8](v14);

  MEMORY[0x277D82BD8](v15);

  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](a7);
  MEMORY[0x277D82BD8](a6);
  MEMORY[0x277D82BD8](a5);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v24);
  return v16;
}

id sub_2260386C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v13 = sub_2260999F8();

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a4)
  {
    v11 = sub_2260999F8();

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (a6)
  {
    v10 = sub_2260999F8();

    v6 = [v17 initWithRequestId:v14 asrId:v12 dictationInteractionID:v10];
  }

  else
  {
    v6 = [v17 initWithRequestId:v14 asrId:v12 dictationInteractionID:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v14);
  return v9;
}

id sub_22603886C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v15 = sub_2260999F8();

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (a4)
  {
    v13 = sub_2260999F8();

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v11 = sub_226098A08();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a6, 1) == 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = sub_2260989D8();
    (*(v12 + 8))(a6, v11);
    v10 = v9;
  }

  v8 = [v21 initWithTask:v16 language:v14 samplingRate:a5 requestTimestamp:? ids:?];
  MEMORY[0x277D82BD8](a7);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](a5);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v16);
  return v8;
}

id sub_226038A9C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a3 & 0xF000000000000000) == 0xF000000000000000)
  {
    v24 = 0;
  }

  else
  {
    v23 = sub_226098968();
    sub_225EF5990(a2, a3);
    v24 = v23;
  }

  if (a5)
  {
    v21 = sub_2260999F8();

    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (a7)
  {
    v19 = sub_2260999F8();

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if ((a9 & 0xF000000000000000) == 0xF000000000000000)
  {
    v18 = 0;
  }

  else
  {
    v17 = sub_226098968();
    sub_225EF5990(a8, a9);
    v18 = v17;
  }

  v16 = sub_226099C78();
  if (a12)
  {
    v14 = sub_2260999F8();

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v13 = [v31 initWithMetadata:a1 audio:v24 preITNTranscript:v22 postITNTranscript:v20 profile:v18 contextualEntities:v16 userEditedText:v15];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);

  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](a1);
  return v13;
}

unint64_t sub_226038DD0()
{
  v2 = qword_27D786E78;
  if (!qword_27D786E78)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786E78);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_226038E34()
{
  v2 = qword_27D786E90;
  if (!qword_27D786E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786E80, &qword_2260A11F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786E90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_226038EBC()
{
  v2 = qword_27D786EA0;
  if (!qword_27D786EA0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786EA0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_226038F20()
{
  v2 = qword_27D786EA8;
  if (!qword_27D786EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786E98, &qword_2260A1200);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786EA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_226038FA8()
{
  v2 = qword_27D786EB8;
  if (!qword_27D786EB8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786EB8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_22603900C()
{
  v2 = qword_27D786EC0;
  if (!qword_27D786EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786EB0, &qword_2260A1208);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786EC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_226039094(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    type metadata accessor for CompareOptions();
    v1 = sub_226099CB8();
    sub_2260998E8();
    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t sub_226039148()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E58, &unk_2260A0950);
  v1 = sub_2260391B0();

  return sub_225F2C300(v5, v3, v4, v1);
}

unint64_t sub_2260391B0()
{
  v2 = qword_27D786ED0;
  if (!qword_27D786ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D785E58, &unk_2260A0950);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786ED0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_226039238()
{
  v2 = qword_27D786ED8;
  if (!qword_27D786ED8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786ED8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_22603929C()
{
  v2 = qword_280D763E0;
  if (!qword_280D763E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D763E0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_226039300()
{
  v2 = qword_280D76478;
  if (!qword_280D76478)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76478);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_226039384()
{
  v2 = qword_27D786EE0;
  if (!qword_27D786EE0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786EE0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_2260393E8()
{
  v2 = qword_27D786EE8;
  if (!qword_27D786EE8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786EE8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_22603944C()
{
  v2 = qword_27D786EF0;
  if (!qword_27D786EF0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786EF0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata accessor for CESABiomeSiriDictationRecord()
{
  v1 = qword_27D786EF8;
  if (!qword_27D786EF8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_226039540()
{
  v2 = sub_22603963C();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_22603963C()
{
  v4 = qword_27D786F08;
  if (!qword_27D786F08)
  {
    sub_226098A08();
    v3 = sub_22609A198();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_27D786F08);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_226039728()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C0, &qword_2260A0318);
  v1 = sub_226039790();

  return sub_225F2C300(v5, v3, v4, v1);
}

unint64_t sub_226039790()
{
  v2 = qword_27D786F10;
  if (!qword_27D786F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7862C0, &qword_2260A0318);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786F10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_226039818()
{
  v1 = sub_226098C58();
  __swift_allocate_value_buffer(v1, qword_27D786F18);
  __swift_project_value_buffer(v1, qword_27D786F18);
  return sub_226039864();
}

uint64_t sub_226039864()
{
  AFLogInitIfNeeded();
  v1 = MEMORY[0x277CEF0E8];
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  if (!v2)
  {
    sub_22609A3B8();
    __break(1u);
  }

  return sub_226098C68();
}

uint64_t sub_226039960()
{
  if (qword_27D785DB8 != -1)
  {
    swift_once();
  }

  v0 = sub_226098C58();
  return __swift_project_value_buffer(v0, qword_27D786F18);
}

uint64_t sub_2260399CC()
{
  v2 = (v0 + OBJC_IVAR___CESRPhoneticEmbedder_phoneticEmbedder);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_226039A34(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR___CESRPhoneticEmbedder_phoneticEmbedder);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_226039AB8()
{
  v2 = (v0 + OBJC_IVAR___CESRPhoneticEmbedder_localeString);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  sub_2260998E8();
  swift_endAccess();
  return v3;
}

uint64_t sub_226039B2C(uint64_t a1, uint64_t a2)
{
  sub_2260998E8();
  v6 = (v2 + OBJC_IVAR___CESRPhoneticEmbedder_localeString);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

void __swiftcall CESRPhoneticEmbedder.init(localeIdentifier:clientID:)(CESRPhoneticEmbedder *__return_ptr retstr, Swift::String localeIdentifier, Swift::String clientID)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_2260999F8();
  v4 = sub_2260999F8();
  [v3 initWithLocaleIdentifier:v5 clientID:?];
  MEMORY[0x277D82BD8](v4);

  MEMORY[0x277D82BD8](v5);
}

char *CESRPhoneticEmbedder.init(localeIdentifier:clientID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v78 = a4;
  v77 = a3;
  v88 = a2;
  v87 = a1;
  v72 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v70 = 0;
  v4 = *(*(sub_226099398() - 8) + 64);
  MEMORY[0x28223BE20](0, v5, v6, v7);
  v71 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_226099388();
  v74 = *(v73 - 8);
  v75 = v74;
  v9 = *(v74 + 64);
  MEMORY[0x28223BE20](v72, v73, v10, v11);
  v76 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_226098C58();
  v79 = v86;
  v80 = *(v86 - 8);
  v85 = v80;
  v81 = v80;
  v82 = *(v80 + 64);
  MEMORY[0x28223BE20](v87, v88, v77, v78);
  v13 = &v46 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v13;
  v117 = v14;
  v118 = v15;
  v115 = v16;
  v116 = v17;
  v119 = v18;
  v84 = &v18[OBJC_IVAR___CESRPhoneticEmbedder_localeString];
  v19 = sub_226099838();
  v20 = v84;
  *v84 = v19;
  v20[1] = v21;
  v22 = sub_226039960();
  (*(v85 + 16))(v13, v22, v86);
  sub_2260998E8();
  v91 = 32;
  v95 = 32;
  v96 = 7;
  v23 = swift_allocObject();
  v24 = v88;
  v97 = v23;
  *(v23 + 16) = v87;
  *(v23 + 24) = v24;
  v107 = sub_226098C48();
  v89 = v107;
  v106 = sub_22609A0A8();
  v90 = v106;
  v92 = 17;
  v100 = swift_allocObject();
  v93 = v100;
  *(v100 + 16) = v91;
  v101 = swift_allocObject();
  v94 = v101;
  *(v101 + 16) = 8;
  v25 = swift_allocObject();
  v26 = v97;
  v98 = v25;
  *(v25 + 16) = sub_225EF7450;
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  v28 = v98;
  v104 = v27;
  v99 = v27;
  *(v27 + 16) = sub_225EF7B84;
  *(v27 + 24) = v28;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v102 = sub_22609A4F8();
  v103 = v29;

  v30 = v100;
  v31 = v103;
  *v103 = sub_225EF7434;
  v31[1] = v30;

  v32 = v101;
  v33 = v103;
  v103[2] = sub_225EF7434;
  v33[3] = v32;

  v34 = v103;
  v35 = v104;
  v103[4] = sub_225EF7B90;
  v34[5] = v35;
  sub_225EF5418();

  if (os_log_type_enabled(v107, v106))
  {
    v36 = v70;
    v63 = sub_22609A188();
    v60 = v63;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v64 = sub_225EF5468(0);
    v62 = v64;
    v66 = 1;
    v65 = sub_225EF5468(1);
    v112 = v63;
    v111 = v64;
    v110 = v65;
    v67 = &v112;
    sub_225EF54BC(2, &v112);
    sub_225EF54BC(v66, v67);
    v108 = sub_225EF7434;
    v109 = v93;
    sub_225EF73E8(&v108, v67, &v111, &v110);
    v68 = v36;
    v69 = v36;
    if (v36)
    {
      v58 = 0;

      __break(1u);
    }

    else
    {
      v108 = sub_225EF7434;
      v109 = v94;
      sub_225EF73E8(&v108, &v112, &v111, &v110);
      v56 = 0;
      v57 = 0;
      v108 = sub_225EF7B90;
      v109 = v99;
      sub_225EF73E8(&v108, &v112, &v111, &v110);
      v54 = 0;
      v55 = 0;
      _os_log_impl(&dword_225EEB000, v89, v90, "CESRPhoneticEmbedder init with language %s", v60, 0xCu);
      sub_225EF7AF4(v62);
      sub_225EF7AF4(v65);
      sub_22609A168();

      v59 = v54;
    }
  }

  else
  {
    v37 = v70;

    v59 = v37;
  }

  (*(v81 + 8))(v83, v79);
  v46 = v119;
  sub_2260998E8();
  v47 = &v46[OBJC_IVAR___CESRPhoneticEmbedder_localeString];
  v48 = &v114;
  v49 = 0;
  swift_beginAccess();
  v38 = v47;
  v39 = v88;
  v40 = *(v47 + 1);
  *v47 = v87;
  *(v38 + 1) = v39;

  swift_endAccess();
  v52 = v119;
  sub_2260993E8();
  v41 = *(*(sub_226098AB8() - 8) + 64);
  v51 = &v46;
  MEMORY[0x28223BE20](v87, v88, &v46, v42);
  v50 = &v46 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226098A88();
  sub_2260998E8();
  (*(v75 + 104))(v76, *MEMORY[0x277CDCC88], v73);
  sub_225F56EB4(v71);
  *&v52[OBJC_IVAR___CESRPhoneticEmbedder_phoneticEmbedder] = sub_2260993B8();
  v113.receiver = v119;
  v113.super_class = CESRPhoneticEmbedder;
  v53 = objc_msgSendSuper2(&v113, sel_init);
  v44 = v53;
  v119 = v53;

  return v53;
}

uint64_t CESRPhoneticEmbedder.findAlternatives(for:maxResults:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[23] = v3;
  v4[22] = a3;
  v4[21] = a2;
  v4[20] = a1;
  v4[11] = v4;
  v4[5] = 0;
  v4[6] = 0;
  v4[12] = 0;
  v4[13] = 0;
  v4[14] = 0;
  v4[15] = 0;
  v4[16] = 0;
  v4[7] = 0;
  v4[8] = 0;
  v4[19] = 0;
  v4[5] = a1;
  v4[6] = a2;
  v4[12] = a3;
  v4[13] = v3;
  v5 = v4[11];
  return MEMORY[0x2822009F8](sub_22603A830, 0, 0);
}

uint64_t sub_22603A830()
{
  v7 = v0[23];
  v0[11] = v0;
  v0[14] = sub_22609A4F8();
  v8 = (v7 + OBJC_IVAR___CESRPhoneticEmbedder_phoneticEmbedder);
  swift_beginAccess();
  v0[24] = *v8;

  swift_endAccess();
  v1 = *(MEMORY[0x277CDCCA8] + 4);
  v2 = swift_task_alloc();
  v9[25] = v2;
  *v2 = v9[11];
  v2[1] = sub_22603A954;
  v3 = v9[22];
  v4 = v9[21];
  v5 = v9[20];

  return MEMORY[0x28212C020](v3, v5, v4);
}

uint64_t sub_22603A954(uint64_t a1)
{
  v10 = *v2;
  v4 = *(*v2 + 200);
  v10[11] = *v2;
  v11 = v10 + 11;
  v10[26] = a1;
  v10[27] = v1;

  if (v1)
  {
    v8 = *v11;
    v7 = sub_22603ACF0;
  }

  else
  {
    v5 = v10[24];

    v6 = *v11;
    v7 = sub_22603AAD8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22603AAD8()
{
  v9 = v0[26];
  v0[11] = v0;
  v0[16] = v9;
  sub_2260998E8();
  v0[17] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786120, &qword_2260A01B8);
  sub_225F2CF78();
  sub_22609A028();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786F40, &qword_2260A13B8);
    sub_22609A388();
    v7 = v8[18];
    if (!v7)
    {
      break;
    }

    v8[19] = v7;
    v8[9] = sub_2260993F8();
    v8[10] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
    sub_226099CE8();
  }

  v5 = v8[26];
  sub_225EFE6E8(v8 + 7);
  v6 = v8[14];
  sub_2260998E8();

  sub_225EFE6E8(v8 + 14);
  v2 = *(v8[11] + 8);
  v3 = v8[11];

  return v2(v6, 0);
}

uint64_t sub_22603ACF0()
{
  v6 = v0[27];
  v1 = v0[24];
  v0[11] = v0;

  v2 = v6;
  v0[15] = v6;

  sub_225EFE6E8(v0 + 14);
  v3 = *(v0[11] + 8);
  v4 = v0[11];

  return v3(0, v6);
}

uint64_t sub_22603AE8C(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v4[4] = a4;
  v4[3] = a1;
  v4[2] = v4;
  MEMORY[0x277D82BE0](a1);
  v4[5] = _Block_copy(a3);
  MEMORY[0x277D82BE0](a4);
  v13 = sub_226099A08();
  v11 = v6;
  v4[6] = v6;
  v7 = swift_task_alloc();
  *(v10 + 56) = v7;
  *v7 = *(v10 + 16);
  v7[1] = sub_22603AF98;

  return CESRPhoneticEmbedder.findAlternatives(for:maxResults:)(v13, v11, a2);
}

uint64_t sub_22603AF98(uint64_t a1, void *a2)
{
  v5 = *v3;
  v6 = *(*v3 + 56);
  *(v5 + 16) = *v3;
  v21 = v5 + 16;
  v22 = v5 + 16;
  v23 = a1;

  if (v2)
  {
    if (*(v21 + 24))
    {
      v13 = *(v21 + 24);
      v14 = sub_2260988D8();
      (*(v13 + 16))(v13, 0);
    }

    _Block_release(*(v21 + 24));
  }

  else
  {
    if (*(v21 + 24))
    {
      v18 = *(v21 + 24);
      sub_2260998E8();
      v19 = 0;
      if (v23)
      {
        v17 = sub_226099C78();

        v19 = v17;
      }

      v7 = a2;
      v16 = 0;
      if (a2)
      {
        v15 = sub_2260988D8();

        v16 = v15;
      }

      (*(v18 + 16))(v18, v19);
    }

    _Block_release(*(v21 + 24));
  }

  v8 = *(v21 + 32);
  v12 = *(v21 + 16);
  v11 = *(v21 + 8);

  v9 = *(*v22 + 8);

  return v9();
}

uint64_t sub_22603B274(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v21 = a2;
  v27 = &unk_2260A13D8;
  v30 = &unk_2260A13E8;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310);
  v20 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2, v3, v4, v5);
  v29 = &v20 - v20;
  v28 = 0;
  v6 = sub_226099DA8();
  (*(*(v6 - 8) + 56))(v29, 1);
  v23 = 48;
  v24 = 7;
  v7 = swift_allocObject();
  v8 = v21;
  v9 = v7;
  v10 = v22;
  v31 = v9;
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v10;
  v9[5] = v8;
  v25 = v9[2];
  v26 = v9[3];
  swift_unknownObjectRetain();
  v11 = swift_allocObject();
  v12 = v26;
  v13 = v27;
  v14 = v28;
  v15 = v29;
  v16 = v30;
  v17 = v11;
  v18 = v31;
  v17[2] = v25;
  v17[3] = v12;
  v17[4] = v13;
  v17[5] = v18;
  sub_22603B998(v14, v14, v15, v16, v17);
}

uint64_t CESRPhoneticEmbedder.findAlternatives(for:maxResults:)()
{
  v6 = (v0 + OBJC_IVAR___CESRPhoneticEmbedder_phoneticEmbedder);
  swift_beginAccess();
  v7 = *v6;

  swift_endAccess();
  sub_2260993C8();

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786120, &qword_2260A01B8);
  v1 = sub_225F2CF78();
  v5 = sub_225F15970(sub_225F28A40, 0, v3, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v1, MEMORY[0x277D84AC0], v4);

  return v5;
}

uint64_t sub_22603B780(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v8 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_225F3E5DC;

  return v8();
}

uint64_t sub_22603B88C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v9 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_225F3E5DC;

  return v9();
}

uint64_t sub_22603B998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a1;
  v49 = a2;
  v57 = a3;
  v50 = a4;
  v51 = a5;
  v52 = &unk_2260A1400;
  v53 = "Fatal error";
  v54 = "Unexpectedly found nil while unwrapping an Optional value";
  v55 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v56 = &unk_2260A13F8;
  v58 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v57, v5, v6, v7);
  v59 = v19 - v58;
  sub_225EF7BD0(v8, v19 - v58);
  v60 = sub_226099DA8();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  if ((*(v61 + 48))(v59, 1) == 1)
  {
    sub_225EF7CF8(v59);
    v47 = 0;
  }

  else
  {
    v46 = sub_226099D98();
    (*(v61 + 8))(v59, v60);
    v47 = v46;
  }

  v43 = v47 | 0x1C00;
  v45 = *(v51 + 16);
  v44 = *(v51 + 24);
  swift_unknownObjectRetain();
  if (v45)
  {
    v41 = v45;
    v42 = v44;
    v35 = v44;
    v36 = v45;
    swift_getObjectType();
    v37 = sub_226099D48();
    v38 = v9;
    swift_unknownObjectRelease();
    v39 = v37;
    v40 = v38;
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v33 = v40;
  v34 = v39;
  sub_2260998E8();
  if (v49)
  {
    v31 = v48;
    v32 = v49;
    v25 = v49;
    v26 = sub_226099A68();

    v27 = v26 + 32;

    v10 = swift_allocObject();
    v11 = v51;
    v12 = v34;
    v13 = v33;
    v28 = v10;
    *(v10 + 16) = v50;
    *(v10 + 24) = v11;
    v29 = 0;
    if (v12 != 0 || v13 != 0)
    {
      v66[0] = 0;
      v66[1] = 0;
      v66[2] = v34;
      v66[3] = v33;
      v29 = v66;
    }

    v63 = 7;
    v64 = v29;
    v65 = v27;
    v24 = swift_task_create();

    v30 = v24;
  }

  else
  {
    v30 = 0;
  }

  v23 = v30;
  if (v30)
  {
    v19[1] = v23;
    v19[0] = v23;
    sub_225EF7CF8(v57);

    return v19[0];
  }

  else
  {

    sub_225EF7CF8(v57);
    v14 = swift_allocObject();
    v15 = v51;
    v16 = v34;
    v17 = v33;
    v21 = v14;
    *(v14 + 16) = v50;
    *(v14 + 24) = v15;
    v22 = 0;
    if (v16 != 0 || v17 != 0)
    {
      v67[0] = 0;
      v67[1] = 0;
      v67[2] = v34;
      v67[3] = v33;
      v22 = v67;
    }

    return swift_task_create();
  }
}

uint64_t sub_22603BFB8()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v8 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_225F3E5DC;

  return sub_22603AE8C(v8, v5, v6, v7);
}

unint64_t type metadata accessor for CESRPhoneticEmbedder()
{
  v2 = qword_27D786F48;
  if (!qword_27D786F48)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786F48);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_22603C114()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v8 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_225F3E5DC;

  return sub_22603B780(v8, v5, v6);
}

uint64_t sub_22603C20C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_22603B88C(a1, v6, v7, v8);
}

uint64_t sub_22603C30C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225EFB2FC(a1, v6);
}

void sub_22603C3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v20 = 0;
  v26 = 0;
  v28 = a1;
  v29 = a2;
  v27 = a3;
  sub_22603C624();
  v21 = sub_225F26174();
  v25 = v21;
  sub_226045530();
  v23 = sub_225F26174();
  v22 = v23;
  v24 = v23;
  v3 = v23;
  if (v23)
  {
    v18 = v22;
    v17 = v22;
    [v22 setStartedOrChanged_];
  }

  v4 = v22;
  if (v22)
  {
    v16 = v22;
    v15 = v22;
  }

  else
  {
    v15 = 0;
  }

  v13 = v15;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
  v14 = &v9;
  v9 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v9, v6, v7, v8);
  v12 = &v9 - v9;
  v11 = sub_226098A78();
  v10 = *(v11 - 8);
  (*(v10 + 16))(v12, v19);
  (*(v10 + 56))(v12, 0, 1, v11);
  sub_2260430A0(v13, v12);
  sub_225F7C078(v12);
}

unint64_t sub_22603C624()
{
  v2 = qword_27D786F68;
  if (!qword_27D786F68)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786F68);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_22603C688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v317 = &v354;
  v321 = a4;
  v320 = a3;
  v334 = a2;
  v319 = a1;
  v322 = 0;
  v384 = 0;
  v383 = 0;
  v382 = 0;
  v381 = 0;
  v380 = 0;
  v379 = 0;
  v318 = 0;
  v374 = 0;
  v373 = 0;
  v372 = 0;
  v371 = 0;
  v366 = 0;
  v361 = 0;
  v360 = 0;
  memset(v359, 0, sizeof(v359));
  v356 = 0;
  v355 = 0u;
  v354 = 0u;
  v353 = 0uLL;
  v352 = 0uLL;
  v347 = 0;
  v341 = 0;
  v323 = sub_226098C58();
  v324 = *(v323 - 8);
  v325 = v324;
  v329 = *(v324 + 64);
  MEMORY[0x28223BE20](0, v334, v320, v321);
  v331 = (v329 + 15) & 0xFFFFFFFFFFFFFFF0;
  v326 = v86 - v331;
  MEMORY[0x28223BE20](v5, v6, v7, v8);
  v327 = v86 - v331;
  MEMORY[0x28223BE20](v9, v10, v11, v12);
  v328 = v86 - v331;
  MEMORY[0x28223BE20](v13, v14, v15, v16);
  v330 = v86 - v331;
  MEMORY[0x28223BE20](v17, v18, v19, v20);
  v332 = v86 - v331;
  v383 = v21;
  v384 = v22;
  v382 = v23;
  v381 = v24;
  v380 = v4;
  sub_226045594();
  v333 = sub_225F26174();
  v379 = v333;
  sub_2260998E8();
  if (v334)
  {
    v315 = v319;
    v316 = v334;
    v306 = v334;
    v307 = v319;
    v373 = v319;
    v374 = v334;
    v314 = sub_226098A78();
    v300 = v314;
    v301 = *(v314 - 8);
    v312 = v301;
    v302 = v301;
    v303 = *(v301 + 64);
    v304 = v86;
    MEMORY[0x28223BE20](v86, v314, v25, v26);
    v305 = v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v372 = v305;
    v308 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
    v309 = v86;
    v310 = (v308 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v307, v306, v86, v28);
    v313 = v86 - v310;
    v311 = v86 - v310;
    sub_226098A18();
    if ((*(v312 + 48))(v313, 1, v314) == 1)
    {
      sub_225F7C078(v311);

      goto LABEL_90;
    }

    (*(v302 + 32))(v305, v311, v300);
    v297 = 0;
    v294 = sub_225F7BD5C();
    v296 = v86;
    MEMORY[0x28223BE20](v86, v29, v30, v31);
    v295 = v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_226098A68();
    v298 = sub_22603E5E0(v295);
    v371 = v298;
    sub_226045FF4();
    v299 = sub_225F26174();
    if (!v299)
    {
      v74 = v327;
      v75 = sub_226040700();
      (*(v325 + 16))(v74, v75, v323);
      v125 = sub_226098C48();
      v122 = v125;
      v124 = sub_22609A078();
      v123 = v124;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
      v126 = sub_22609A4F8();
      if (os_log_type_enabled(v125, v124))
      {
        v76 = v318;
        v113 = sub_22609A188();
        v109 = v113;
        v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v111 = 0;
        v114 = sub_225EF5468(0);
        v112 = v114;
        v115 = sub_225EF5468(v111);
        v370 = v113;
        v369 = v114;
        v368 = v115;
        v116 = 0;
        v117 = &v370;
        sub_225EF54BC(0, &v370);
        sub_225EF54BC(v116, v117);
        v367 = v126;
        v118 = v86;
        MEMORY[0x28223BE20](v86, v77, v78, v79);
        v119 = &v86[-6];
        v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();
        v121 = v76;
        if (v76)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_225EEB000, v122, v123, "Failed to create DODMLASRAudioFileResult", v109, 2u);
          v107 = 0;
          sub_225EF7AF4(v112);
          sub_225EF7AF4(v115);
          sub_22609A168();

          v108 = v121;
        }
      }

      else
      {

        v108 = v318;
      }

      v106 = v108;

      (*(v325 + 8))(v327, v323);
      (*(v302 + 8))(v305, v300);

      return v106;
    }

    v293 = v299;
    v289 = v299;
    v366 = v299;
    v284 = v86;
    v34 = MEMORY[0x28223BE20](v86, v305, v300, v33);
    v283 = v86 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    v281 = *(v302 + 16);
    v282 = (v302 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v281(v34);
    v285 = sub_22603E5E0(v283);
    [v289 setAsrId_];

    v36 = v298;
    [v289 setLinkId_];

    v291 = 0;
    v287 = sub_226046058();
    v286 = v287;
    v288 = sub_22609A4F8();
    v290 = sub_226099C78();

    [v289 setDecodingResults_];

    sub_2260460BC();
    v292 = sub_225F26174();
    if (!v292)
    {
      v68 = v328;
      v69 = sub_226040700();
      (*(v325 + 16))(v68, v69, v323);
      v146 = sub_226098C48();
      v143 = v146;
      v145 = sub_22609A078();
      v144 = v145;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
      v147 = sub_22609A4F8();
      if (os_log_type_enabled(v146, v145))
      {
        v70 = v318;
        v134 = sub_22609A188();
        v130 = v134;
        v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v132 = 0;
        v135 = sub_225EF5468(0);
        v133 = v135;
        v136 = sub_225EF5468(v132);
        v365 = v134;
        v364 = v135;
        v363 = v136;
        v137 = 0;
        v138 = &v365;
        sub_225EF54BC(0, &v365);
        sub_225EF54BC(v137, v138);
        v362 = v147;
        v139 = v86;
        MEMORY[0x28223BE20](v86, v71, v72, v73);
        v140 = &v86[-6];
        v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();
        v142 = v70;
        if (v70)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_225EEB000, v143, v144, "Failed to create DODMLASRAudioFileResultTier1", v130, 2u);
          v128 = 0;
          sub_225EF7AF4(v133);
          sub_225EF7AF4(v136);
          sub_22609A168();

          v129 = v142;
        }
      }

      else
      {

        v129 = v318;
      }

      v127 = v129;

      (*(v325 + 8))(v328, v323);
      (*(v302 + 8))(v305, v300);

      return v127;
    }

    v280 = v292;
    v277 = v292;
    v361 = v292;
    v37 = v298;
    [v277 setLinkId_];

    v273 = 0;
    v275 = sub_226046120();
    v274 = v275;
    v276 = sub_22609A4F8();
    v278 = sub_226099C78();

    [v277 setOneBestTranscripts_];

    sub_2260998E8();
    sub_226099898();
    v38 = v317;
    v39 = v318;
    v40 = v385;
    v360 = v387;
    v317[6] = v386;
    v38[5] = v40;
    for (i = v39; ; i = v213)
    {
      v270 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786FA0, &qword_2260A1410);
      sub_226099908();
      v271 = v357;
      v272 = v358;
      if (!*(&v357 + 1))
      {
        sub_225F15874(v359);
        v57 = v333;
        if (v333)
        {
          v166 = v333;
          v165 = v333;
          v58 = v289;
          [v165 setAudioFileResult_];
        }

        sub_226045530();
        v164 = sub_225F26174();
        v163 = v164;
        v356 = v164;
        v59 = v164;
        if (v164)
        {
          v162 = v163;
          v161 = v163;
          [v163 setEnded_];
        }

        v60 = v163;
        if (v163)
        {
          v160 = v163;
          v159 = v163;
        }

        else
        {
          v159 = 0;
        }

        v149 = v159;
        v150 = v86;
        v62 = MEMORY[0x28223BE20](v86, v320, v300, v61);
        v151 = (v308 + 15) & 0xFFFFFFFFFFFFFFF0;
        v148 = v86 - v151;
        v63(v62);
        v155 = *(v302 + 56);
        v154 = v302 + 56;
        v152 = 0;
        v153 = 1;
        v155(v148);
        sub_2260430A0(v149, v148);
        sub_225F7C078(v148);

        v64 = v277;
        v157 = v86;
        v66 = MEMORY[0x28223BE20](v86, v320, v300, v65);
        v156 = v86 - v151;
        v67(v66);
        (v155)(v156, v152, v153, v300);
        sub_2260430A0(v277, v156);
        sub_225F7C078(v156);

        (*(v302 + 8))(v305, v300);

        return v270;
      }

      v268 = v271;
      v269 = v272;
      v266 = v272;
      v265 = v271;
      v354 = v271;
      v355 = v272;
      sub_2260998E8();
      sub_2260998E8();
      v353 = v266;

      sub_2260998E8();
      sub_2260998E8();
      v352 = v265;

      v267 = sub_22604578C(v266, *(&v266 + 1));
      if (!v267)
      {
        v51 = v330;
        v52 = sub_226040700();
        (*(v325 + 16))(v51, v52, v323);
        v187 = sub_226098C48();
        v184 = v187;
        v186 = sub_22609A078();
        v185 = v186;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
        v188 = sub_22609A4F8();
        if (os_log_type_enabled(v187, v186))
        {
          v53 = v270;
          v174 = sub_22609A188();
          v170 = v174;
          v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v172 = 0;
          v175 = sub_225EF5468(0);
          v173 = v175;
          v176 = sub_225EF5468(v172);
          v351 = v174;
          v350 = v175;
          v349 = v176;
          v177 = 0;
          v178 = &v351;
          sub_225EF54BC(0, &v351);
          sub_225EF54BC(v177, v178);
          v348 = v188;
          v181 = v86;
          MEMORY[0x28223BE20](v86, v54, v55, v56);
          v179 = &v86[-6];
          v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
          sub_225EFE598();
          sub_226099C28();
          v182 = v53;
          v183 = v181;
          if (v53)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_225EEB000, v184, v185, "Failed to create ASROneBestTranscriptTier1", v170, 2u);
            v168 = 0;
            sub_225EF7AF4(v173);
            sub_225EF7AF4(v176);
            sub_22609A168();

            v169 = v182;
          }
        }

        else
        {

          v169 = v270;
        }

        v167 = v169;

        (*(v325 + 8))(v330, v323);

        v213 = v167;
        continue;
      }

      v264 = v267;
      v262 = v267;
      v347 = v267;
      v263 = [v277 oneBestTranscripts];
      if (v263)
      {
        v261 = v263;
        v258 = v263;
        v259 = sub_226099C88();

        v260 = v259;
      }

      else
      {
        v260 = 0;
      }

      v346 = v260;
      if (v260)
      {
        v41 = v262;
        v335 = v262;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786FB0, &qword_2260A1420);
        sub_226099CE8();
        v251 = v346;
        if (v346)
        {
          v250 = v251;
          v247 = v251;
          v248 = sub_226099C78();

          v249 = v248;
        }

        else
        {
          v249 = 0;
        }

        v246 = v249;
        [v277 setOneBestTranscripts_];
      }

      else
      {
        v257 = 0;
        v256 = 0;
        sub_2260998E8();
        if (v257)
        {
          v255 = v256;
          v252 = v256;
          v253 = sub_226099C78();

          v254 = v253;
        }

        else
        {
          v254 = 0;
        }

        v189 = v254;
        [v277 setOneBestTranscripts_];

        sub_225EFE6E8(&v346);
      }

      v245 = sub_225F26174();
      if (!v245)
      {
        v45 = v332;
        v46 = sub_226040700();
        (*(v325 + 16))(v45, v46, v323);
        v210 = sub_226098C48();
        v207 = v210;
        v209 = sub_22609A078();
        v208 = v209;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
        v211 = sub_22609A4F8();
        if (os_log_type_enabled(v210, v209))
        {
          v47 = v270;
          v197 = sub_22609A188();
          v193 = v197;
          v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v195 = 0;
          v198 = sub_225EF5468(0);
          v196 = v198;
          v199 = sub_225EF5468(v195);
          v345 = v197;
          v344 = v198;
          v343 = v199;
          v200 = 0;
          v201 = &v345;
          sub_225EF54BC(0, &v345);
          sub_225EF54BC(v200, v201);
          v342 = v211;
          v204 = v86;
          MEMORY[0x28223BE20](v86, v48, v49, v50);
          v202 = &v86[-6];
          v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
          sub_225EFE598();
          sub_226099C28();
          v205 = v47;
          v206 = v204;
          if (v47)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_225EEB000, v207, v208, "Failed to create DODMLASRDecodingResult", v193, 2u);
            v191 = 0;
            sub_225EF7AF4(v196);
            sub_225EF7AF4(v199);
            sub_22609A168();

            v192 = v205;
          }
        }

        else
        {

          v192 = v270;
        }

        v190 = v192;

        (*(v325 + 8))(v332, v323);

        v213 = v190;
        continue;
      }

      v244 = v245;
      v241 = v245;
      v341 = v245;
      sub_2260998E8();
      v242 = sub_2260999F8();

      [v241 setConfigName_];

      v243 = [v277 oneBestTranscripts];
      if (v243)
      {
        v240 = v243;
        v237 = v243;
        v238 = sub_226099C88();

        v239 = v238;
      }

      else
      {
        v239 = 0;
      }

      v340 = v239;
      if (v239)
      {
        v233 = v340;
        sub_2260998E8();
        sub_225EFE6E8(&v340);
        v234 = sub_226099CD8();

        v235 = v234;
        v236 = 0;
      }

      else
      {
        result = sub_225EFE6E8(&v340);
        v235 = 0;
        v236 = 1;
      }

      v338 = v235;
      v339 = v236 & 1;
      if (v236)
      {
        v232 = 1;
      }

      else
      {
        v232 = v338;
      }

      v43 = __OFSUB__(v232, 1);
      v231 = v232 - 1;
      if (v43)
      {
        __break(1u);
        return result;
      }

      if (v231 < 0)
      {
        sub_22609A3B8();
        __break(1u);
      }

      if (v231 <= 0xFFFFFFFFLL)
      {
        [v241 setOneBestTranscriptLinkIndex_];
        v230 = [v289 decodingResults];
        if (!v230)
        {
          v228 = 0;
          goto LABEL_43;
        }

        v229 = v230;
      }

      else
      {
        sub_22609A3B8();
        __break(1u);
      }

      v226 = v229;
      v227 = sub_226099C88();

      v228 = v227;
LABEL_43:
      v337 = v228;
      if (v228)
      {
        v44 = v241;
        v336 = v241;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786FA8, &qword_2260A1418);
        sub_226099CE8();
        v219 = v337;
        if (v337)
        {
          v218 = v219;
          v215 = v219;
          v216 = sub_226099C78();

          v217 = v216;
        }

        else
        {
          v217 = 0;
        }

        v214 = v217;
        [v289 setDecodingResults_];
      }

      else
      {
        v225 = 0;
        v224 = 0;
        sub_2260998E8();
        if (v225)
        {
          v223 = v224;
          v220 = v224;
          v221 = sub_226099C78();

          v222 = v221;
        }

        else
        {
          v222 = 0;
        }

        v212 = v222;
        [v289 setDecodingResults_];

        sub_225EFE6E8(&v337);
      }

      v213 = v270;
    }
  }

LABEL_90:
  v80 = v326;
  v81 = sub_226040700();
  (*(v325 + 16))(v80, v81, v323);
  v104 = sub_226098C48();
  v101 = v104;
  v103 = sub_22609A078();
  v102 = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v105 = sub_22609A4F8();
  if (os_log_type_enabled(v104, v103))
  {
    v82 = v318;
    v92 = sub_22609A188();
    v88 = v92;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v90 = 0;
    v93 = sub_225EF5468(0);
    v91 = v93;
    v94 = sub_225EF5468(v90);
    v378 = v92;
    v377 = v93;
    v376 = v94;
    v95 = 0;
    v96 = &v378;
    sub_225EF54BC(0, &v378);
    sub_225EF54BC(v95, v96);
    v375 = v105;
    v97 = v86;
    MEMORY[0x28223BE20](v86, v83, v84, v85);
    v98 = &v86[-6];
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    v100 = v82;
    if (v82)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_225EEB000, v101, v102, "asrId is nil", v88, 2u);
      v86[1] = 0;
      sub_225EF7AF4(v91);
      sub_225EF7AF4(v94);
      sub_22609A168();

      v87 = v100;
    }
  }

  else
  {

    v87 = v318;
  }

  v86[0] = v87;

  (*(v325 + 8))(v326, v323);
  return v86[0];
}

uint64_t sub_22603E620(uint64_t a1, uint64_t a2)
{
  v110 = a1;
  v118 = a2;
  v85 = "Fatal error";
  v86 = "Not enough bits to represent the passed value";
  v87 = "Swift/Integers.swift";
  v88 = "Not enough bits to represent a signed value";
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v124[0] = 0;
  v124[1] = 0;
  __len = 40;
  __c = 0;
  memset(__b, 0, 0x28uLL);
  memset(v122, 0, sizeof(v122));
  v121 = 0;
  v111 = 0;
  v91 = sub_226099828();
  v92 = *(v91 - 8);
  v93 = v91 - 8;
  v94 = (*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v91, v3, v4, v5);
  v95 = &v35 - v94;
  v133 = &v35 - v94;
  v96 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786FB8, &unk_2260A1428) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v111, v6, v7, v8);
  v97 = &v35 - v96;
  v98 = sub_226098BA8();
  v99 = *(v98 - 8);
  v100 = v98 - 8;
  v101 = (*(v99 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v98, v9, v10, v11);
  v102 = &v35 - v101;
  v132 = &v35 - v101;
  v103 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D785E38, &unk_22609F960) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v111, v12, v13, v14);
  v104 = &v35 - v103;
  v105 = sub_226099808();
  v106 = *(v105 - 8);
  v107 = v105 - 8;
  v108 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v105, v15, v16, v17);
  v109 = &v35 - v108;
  v131 = &v35 - v108;
  v113 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E30, &qword_2260A09D0) - 8) + 64);
  v112 = (v113 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v111, v118, v18, v19);
  v114 = &v35 - v112;
  v115 = (v113 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20, v21, &v35 - v112, v22);
  v116 = &v35 - v115;
  v130 = v23;
  v129 = v24;
  v128 = v2;
  sub_226046184();
  v117 = sub_225F26174();
  v127 = v117;
  MEMORY[0x277D82BE0](v118);
  if (v118)
  {
    v84 = v118;
    v83 = v118;
    v125 = v118;
    MEMORY[0x277D82BE0](v117);
    if (v117)
    {
      v82 = v117;
      v80 = v117;
      v81 = *(v83 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_maxNumEnrolled);
      if (v81 < 0xFFFFFFFF80000000)
      {
        sub_22609A3B8();
        __break(1u);
      }

      if (v81 > 0x7FFFFFFF)
      {
        sub_22609A3B8();
        __break(1u);
      }

      [v80 setMaxEnrolled_];
      MEMORY[0x277D82BD8](v80);
    }

    MEMORY[0x277D82BE0](v117);
    if (v117)
    {
      v79 = v117;
      v78 = v117;
      [v117 setRetrievalTimeout_];
      MEMORY[0x277D82BD8](v78);
    }

    MEMORY[0x277D82BE0](v117);
    if (v117)
    {
      v77 = v117;
      v75 = v117;
      v76 = *(v83 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_maxEntityChars);
      if (v76 < 0xFFFFFFFF80000000)
      {
        sub_22609A3B8();
        __break(1u);
      }

      if (v76 > 0x7FFFFFFF)
      {
        sub_22609A3B8();
        __break(1u);
      }

      [v75 setMaxEntityChars_];
      MEMORY[0x277D82BD8](v75);
    }

    MEMORY[0x277D82BE0](v117);
    if (v117)
    {
      v74 = v117;
      v72 = v117;
      v73 = *(v83 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_maxEntityWords);
      if (v73 < 0xFFFFFFFF80000000)
      {
        sub_22609A3B8();
        __break(1u);
      }

      if (v73 > 0x7FFFFFFF)
      {
        sub_22609A3B8();
        __break(1u);
      }

      [v72 setMaxEntityWords_];
      MEMORY[0x277D82BD8](v72);
    }

    v70 = *(v83 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_enabledTasks);
    sub_2260998E8();
    __b[5] = v70;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D785E80, &unk_22609F9A0);
    sub_22604624C();
    sub_22609A028();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786FC0, &qword_2260A1438);
      sub_22609A388();
      if ((*(v106 + 48))(v116, 1, v105) == 1)
      {
        break;
      }

      (*(v106 + 32))(v109, v116, v105);
      MEMORY[0x277D82BE0](v117);
      if (v117)
      {
        v69 = v117;
        v68 = v117;
        (*(v106 + 16))(v114, v109, v105);
        (*(v106 + 56))(v114, 0, 1, v105);
        v67 = sub_226040AD4(v114);
        sub_225F149A8(v114);
        [v68 addEnabledTasks_];
        MEMORY[0x277D82BD8](v68);
      }

      (*(v106 + 8))(v109, v105);
    }

    sub_225EFE6E8(v124);
    MEMORY[0x277D82BE0](v117);
    if (v117)
    {
      v66 = v117;
      v65 = v117;
      sub_225F144A4(v114);
      v64 = sub_226040AD4(v114);
      sub_225F149A8(v114);
      [v65 setRequestTask_];
      MEMORY[0x277D82BD8](v65);
    }

    v62 = *(v83 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_rejectedContextTypes);
    sub_2260998E8();
    sub_225F15678();
    v63 = &v134;
    sub_226099F18();
    memcpy(__b, v63, 0x28uLL);
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786FC8, &qword_2260A1440);
      sub_226099F68();
      if ((*(v99 + 48))(v104, 1, v98) == 1)
      {
        break;
      }

      (*(v99 + 32))(v102, v104, v98);
      MEMORY[0x277D82BE0](v117);
      if (v117)
      {
        v61 = v117;
        v60 = v117;
        v25 = sub_226040F84(v102);
        [v60 addRejectedContextTypes_];
        MEMORY[0x277D82BD8](v60);
      }

      (*(v99 + 8))(v102, v98);
    }

    sub_225F15874(__b);
    v58 = *(v83 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_rejectedBundleTypes);
    sub_2260998E8();
    sub_225F157F4();
    v59 = &v135;
    sub_226099F18();
    memcpy(v122, v59, sizeof(v122));
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786FD0, &unk_2260A1448);
      sub_226099F68();
      if ((*(v92 + 48))(v97, 1, v91) == 1)
      {
        break;
      }

      (*(v92 + 32))(v95, v97, v91);
      sub_2260462D4();
      v57 = sub_225F26174();
      if (!v57)
      {
        (*(v92 + 8))(v95, v91);
        break;
      }

      v56 = v57;
      v54 = v57;
      v121 = v57;
      sub_226099818();
      v43 = v26;
      v44 = sub_2260999F8();

      [v54 setBundleId_];
      MEMORY[0x277D82BD8](v44);
      v47 = 0;
      v27 = sub_22609A4E8();
      v50 = &v119;
      v119 = v27;
      v120 = v28;
      v46 = "";
      v48 = 1;
      v29 = sub_226099AA8();
      v45 = v30;
      MEMORY[0x22AA735F0](v29);

      sub_22609A4A8();
      v31 = sub_226099AA8();
      v49 = v32;
      MEMORY[0x22AA735F0](v31);

      v52 = v119;
      v51 = v120;
      sub_2260998E8();
      sub_225EFE6BC(v50);
      sub_226099A88();
      v53 = v33;
      v55 = sub_2260999F8();

      [v54 setNameOfTypedValue_];
      MEMORY[0x277D82BD8](v55);
      MEMORY[0x277D82BE0](v117);
      if (v117)
      {
        v42 = v117;
        v41 = v117;
        [v117 addRejectedEntityTypes_];
        MEMORY[0x277D82BD8](v41);
      }

      MEMORY[0x277D82BD8](v54);
      (*(v92 + 8))(v95, v91);
    }

    sub_225F15874(v122);
    MEMORY[0x277D82BD8](v83);
  }

  sub_2260461E8();
  v40 = sub_225F26174();
  v126 = v40;
  MEMORY[0x277D82BE0](v40);
  if (v40)
  {
    v39 = v40;
    v38 = v40;
    [v40 setStartedOrChanged_];
    MEMORY[0x277D82BD8](v38);
  }

  MEMORY[0x277D82BE0](v40);
  if (v40)
  {
    v37 = v40;
    v36 = v40;
  }

  else
  {
    v36 = 0;
  }

  v35 = v36;
  sub_22604158C(v36, v110, 0, 1u);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v40);
  return MEMORY[0x277D82BD8](v117);
}
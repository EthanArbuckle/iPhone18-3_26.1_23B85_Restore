uint64_t sub_225F7B140(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);

  MEMORY[0x277D82BE0](a2);
  v6 = v3(a2);
  MEMORY[0x277D82BD8](a2);

  return v6 & 1;
}

uint64_t sub_225F7B228(uint64_t a1, uint64_t a2)
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

uint64_t sub_225F7B2CC(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[4];
  sub_2260998E8();

  return v3;
}

uint64_t sub_225F7B308(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 32);
  sub_2260998E8();

  return v3;
}

uint64_t sub_225F7B344(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 32);
  sub_2260998E8();

  return v3;
}

uint64_t sub_225F7B380(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  sub_2260998E8();

  return v3;
}

uint64_t sub_225F7B3BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 32);
  result = sub_2260998E8();
  *a2 = v4;
  return result;
}

uint64_t ASRFullPayloadCorrectionWorker.deinit()
{
  sub_225EFE6BC((v0 + 2));
  sub_225EFE6BC((v0 + 4));
  v1 = v0[6];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v0[7]);
  sub_225EFE6E8(v0 + 10);
  v2 = v0[13];

  sub_225EFE6E8(v0 + 14);
  return v4;
}

id sub_225F7B4BC()
{
  v2 = sub_2260999F8();
  v3 = [v1 initWithString_];
  MEMORY[0x277D82BD8](v2);

  return v3;
}

id sub_225F7B520(uint64_t a1, uint64_t a2)
{
  v12 = sub_226098A08();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(a1, 1) == 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = sub_2260989D8();
    (*(v13 + 8))(a1, v12);
    v8 = v7;
  }

  if ((v14)(a2, 1, v12) == 1)
  {
    v2 = [v10 initWithStartDate:v8 endDate:0 maxEvents:? lastN:? reversed:?];
  }

  else
  {
    v6 = sub_2260989D8();
    (*(v13 + 8))(a2, v12);
    v2 = [v10 initWithStartDate:v8 endDate:v6 maxEvents:? lastN:? reversed:?];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v8);
  return v5;
}

unint64_t sub_225F7B6F4()
{
  v2 = qword_27D7863F8;
  if (!qword_27D7863F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7863F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7B7B4()
{
  v2 = qword_27D786400;
  if (!qword_27D786400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7862D0, &qword_2260A0530);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786400);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7B844()
{
  v2 = qword_280D76370;
  if (!qword_280D76370)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76370);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_225F7B8B0()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for _NSRange();
  v1 = sub_225F7B90C();

  return sub_225F2C300(v5, v3, v4, v1);
}

unint64_t sub_225F7B90C()
{
  v2 = qword_27D786410;
  if (!qword_27D786410)
  {
    type metadata accessor for _NSRange();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786410);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7B984()
{
  v2 = qword_27D786420;
  if (!qword_27D786420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786418, &unk_2260A0568);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786420);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7BA0C()
{
  v2 = qword_27D786428;
  if (!qword_27D786428)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786428);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7BA70()
{
  v2 = qword_27D786448;
  if (!qword_27D786448)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786448);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7BB14()
{
  v2 = qword_27D786460;
  if (!qword_27D786460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786260, &qword_2260A02C8);
    sub_225EF94B0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786460);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7BBB8()
{
  v2 = qword_27D786490;
  if (!qword_27D786490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786488, &qword_2260A05A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786490);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7BC70()
{
  v2 = qword_27D7864A8;
  if (!qword_27D7864A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7864A0, &qword_2260A01C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7864A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7BCF8()
{
  v2 = qword_27D7864B8;
  if (!qword_27D7864B8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7864B8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7BD5C()
{
  v2 = qword_280D76540;
  if (!qword_280D76540)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76540);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7BDC0()
{
  v2 = qword_27D7864C8;
  if (!qword_27D7864C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7864C8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7BE24()
{
  v2 = qword_27D7864D0;
  if (!qword_27D7864D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7864D0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7BE88()
{
  v2 = qword_27D7864D8;
  if (!qword_27D7864D8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7864D8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7BEEC()
{
  v2 = qword_27D7864E0;
  if (!qword_27D7864E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7864E0);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_225F7BF50(const void *a1, void *a2)
{
  v6 = sub_226098A78();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_225F7C078(uint64_t a1)
{
  v3 = sub_226098A78();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_225F7C120()
{
  v2 = qword_27D7864F0;
  if (!qword_27D7864F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7864F0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7C184()
{
  v2 = qword_27D786500;
  if (!qword_27D786500)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786500);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7C1E8()
{
  v2 = qword_27D786508;
  if (!qword_27D786508)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786508);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7C24C()
{
  v2 = qword_27D786510;
  if (!qword_27D786510)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786510);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7C2B0()
{
  v2 = qword_280D76300;
  if (!qword_280D76300)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76300);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7C328()
{
  v2 = qword_27D786530;
  if (!qword_27D786530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786528, &qword_2260A05D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786530);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_225F7C3B0(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];

  return a1;
}

uint64_t *sub_225F7C3E8(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[2];

  return a1;
}

unint64_t sub_225F7C420()
{
  v2 = qword_27D786548;
  if (!qword_27D786548)
  {
    type metadata accessor for MCRestrictedBoolType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786548);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_225F7C4A0(uint64_t *a1)
{
  if (a1[3] >= 2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a1;
}

unint64_t sub_225F7C4F4()
{
  v2 = qword_27D786560;
  if (!qword_27D786560)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786560);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7C558()
{
  v2 = qword_27D786568;
  if (!qword_27D786568)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786568);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7C5BC()
{
  v2 = qword_27D786570;
  if (!qword_27D786570)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786570);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7C620()
{
  v2 = qword_27D786578;
  if (!qword_27D786578)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786578);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7C684()
{
  v2 = qword_27D786580;
  if (!qword_27D786580)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786580);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7C6E8()
{
  v2 = qword_27D786590;
  if (!qword_27D786590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786588, &qword_2260A0600);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786590);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7C770()
{
  v2 = qword_27D7865A0;
  if (!qword_27D7865A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7865A0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7C7D4()
{
  v2 = qword_27D7865A8;
  if (!qword_27D7865A8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7865A8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7C838()
{
  v2 = qword_27D7865C0;
  if (!qword_27D7865C0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7865C0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7C89C()
{
  v2 = qword_27D7865C8;
  if (!qword_27D7865C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7865C8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7C900()
{
  v2 = qword_27D7865D0;
  if (!qword_27D7865D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7865D0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7C964()
{
  v2 = qword_27D7865E0;
  if (!qword_27D7865E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7865D8, &qword_2260A0628);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7865E0);
    return WitnessTable;
  }

  return v2;
}

void sub_225F7C9EC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_225F7CA30()
{
  v2 = qword_27D7865F0;
  if (!qword_27D7865F0)
  {
    type metadata accessor for CheckingType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7865F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7CAC4()
{
  v2 = qword_27D7865F8;
  if (!qword_27D7865F8)
  {
    sub_226098B28();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7865F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7CB3C()
{
  v2 = qword_27D786600;
  if (!qword_27D786600)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786600);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_249(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_255(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_225F7CC80()
{
  v2 = qword_27D786680;
  if (!qword_27D786680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786678, &qword_2260A0658);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786680);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7CD08()
{
  v2 = qword_27D786690;
  if (!qword_27D786690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786418, &unk_2260A0568);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786690);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F7CD90@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_226098A78();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_225F7B1C8(v3, a1);
}

uint64_t sub_225F7CE04()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_226098A78();
  v1 = sub_225F7CE60();

  return sub_225F2C300(v5, v3, v4, v1);
}

unint64_t sub_225F7CE60()
{
  v2 = qword_280D76F38;
  if (!qword_280D76F38)
  {
    sub_226098A78();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76F38);
    return WitnessTable;
  }

  return v2;
}

id sub_225F7CED8(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_2260998E8();
  }
}

uint64_t sub_225F7CF28()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v6[0] = v0[2];
  v6[1] = v1;
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v4;
  return sub_225F7B2CC(v6);
}

uint64_t sub_225F7CF74()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v6[0] = v0[2];
  v6[1] = v1;
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v4;
  return sub_225F7B308(v6);
}

uint64_t sub_225F7CFC0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v6[0] = v0[2];
  v6[1] = v1;
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v4;
  return sub_225F7B344(v6);
}

uint64_t sub_225F7D00C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v6[0] = v0[2];
  v6[1] = v1;
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v4;
  return sub_225F7B380(v6);
}

uint64_t sub_225F7D058@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v7[0] = v1[2];
  v7[1] = v2;
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v5;
  return sub_225F7B3BC(v7, a1);
}

uint64_t sub_225F7D0A4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786478, &unk_2260A0DF0);
  v1 = sub_225F7D10C();

  return sub_225F2C300(v5, v3, v4, v1);
}

unint64_t sub_225F7D10C()
{
  v2 = qword_27D7866B0;
  if (!qword_27D7866B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786478, &unk_2260A0DF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7866B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7D194()
{
  v2 = qword_27D7866C0;
  if (!qword_27D7866C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786478, &unk_2260A0DF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7866C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_225F7D21C(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[2];

  v3 = a1[5];

  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

unint64_t sub_225F7D2F0()
{
  v2 = qword_280D76708;
  if (!qword_280D76708)
  {
    sub_226099D58();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76708);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F7D37C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
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

_BYTE *sub_225F7D4E4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
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

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_225F7D704(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  sub_2260998E8();
  result = a1;
  *(a1 + 16) = v4;
  return result;
}

void *sub_225F7D760(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v3 = a1[2];
  v4 = a2[2];
  sub_2260998E8();
  a1[2] = v4;

  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

void *sub_225F7D7D0(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v3 = a1[2];
  a1[2] = a2[2];

  return a1;
}

uint64_t sub_225F7D818(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*(a1 + 16)))
      {
        v4 = *(a1 + 16);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_225F7D948(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_225F7DB6C()
{
  v2 = qword_27D7866D8;
  if (!qword_27D7866D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7866D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7DBE8()
{
  v2 = qword_27D7866E0;
  if (!qword_27D7866E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7866E0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7DC4C()
{
  v2 = qword_27D7866E8;
  if (!qword_27D7866E8)
  {
    type metadata accessor for BPSCompletionState();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7866E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t static CoreEmbeddedSpeechAnalyzer.taskHint(fromTaskString:detectUtterances:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v55[2] = 0;
  v57 = a1;
  v58 = a2;
  v56 = a3 & 1;
  sub_2260998E8();
  MEMORY[0x277D82BE0](@"Dictation");
  v55[0] = sub_226099A08();
  v55[1] = v4;
  v54[2] = a1;
  v54[3] = a2;
  v46 = MEMORY[0x22AA72BD0](v55[0], v4, a1, a2);
  sub_225EFE6BC(v55);
  MEMORY[0x277D82BD8](@"Dictation");
  if (v46)
  {

    if ((a3 & 1) == 0)
    {
      v41 = *MEMORY[0x277CDCE20];
      v5 = sub_226099808();
      return (*(*(v5 - 8) + 104))(a4, v41);
    }
  }

  else
  {
  }

  sub_2260998E8();
  MEMORY[0x277D82BE0](@"Dictation");
  v54[0] = sub_226099A08();
  v54[1] = v7;
  v53[2] = a1;
  v53[3] = a2;
  v40 = MEMORY[0x22AA72BD0](v54[0], v7, a1, a2);
  sub_225EFE6BC(v54);
  MEMORY[0x277D82BD8](@"Dictation");
  if (v40)
  {

    v39 = *MEMORY[0x277CDCE28];
    v8 = sub_226099808();
    return (*(*(v8 - 8) + 104))(a4, v39);
  }

  else
  {

    sub_2260998E8();
    MEMORY[0x277D82BE0](@"SiriDictation");
    v53[0] = sub_226099A08();
    v53[1] = v9;
    v52[2] = a1;
    v52[3] = a2;
    v38 = MEMORY[0x22AA72BD0](v53[0], v9, a1, a2);
    sub_225EFE6BC(v53);
    MEMORY[0x277D82BD8](@"SiriDictation");
    if (v38)
    {

      v37 = *MEMORY[0x277CDCE38];
      v10 = sub_226099808();
      return (*(*(v10 - 8) + 104))(a4, v37);
    }

    else
    {

      sub_2260998E8();
      MEMORY[0x277D82BE0](@"SearchOrMessaging");
      v52[0] = sub_226099A08();
      v52[1] = v11;
      v51[2] = a1;
      v51[3] = a2;
      v36 = MEMORY[0x22AA72BD0](v52[0], v11, a1, a2);
      sub_225EFE6BC(v52);
      MEMORY[0x277D82BD8](@"SearchOrMessaging");
      if (v36)
      {

        v35 = *MEMORY[0x277CDCE68];
        v12 = sub_226099808();
        return (*(*(v12 - 8) + 104))(a4, v35);
      }

      else
      {

        sub_2260998E8();
        MEMORY[0x277D82BE0](@"VoiceMail");
        v51[0] = sub_226099A08();
        v51[1] = v13;
        v50[2] = a1;
        v50[3] = a2;
        v34 = MEMORY[0x22AA72BD0](v51[0], v13, a1, a2);
        sub_225EFE6BC(v51);
        MEMORY[0x277D82BD8](@"VoiceMail");
        if (v34)
        {

          v33 = *MEMORY[0x277CDCE78];
          v14 = sub_226099808();
          return (*(*(v14 - 8) + 104))(a4, v33);
        }

        else
        {

          sub_2260998E8();
          MEMORY[0x277D82BE0](@"WebSearch");
          v50[0] = sub_226099A08();
          v50[1] = v15;
          v49[2] = a1;
          v49[3] = a2;
          v32 = MEMORY[0x22AA72BD0](v50[0], v15, a1, a2);
          sub_225EFE6BC(v50);
          MEMORY[0x277D82BD8](@"WebSearch");
          if (v32)
          {

            v31 = *MEMORY[0x277CDCE50];
            v16 = sub_226099808();
            return (*(*(v16 - 8) + 104))(a4, v31);
          }

          else
          {

            sub_2260998E8();
            MEMORY[0x277D82BE0](@"Captioning");
            v49[0] = sub_226099A08();
            v49[1] = v17;
            v48[2] = a1;
            v48[3] = a2;
            v30 = MEMORY[0x22AA72BD0](v49[0], v17, a1, a2);
            sub_225EFE6BC(v49);
            MEMORY[0x277D82BD8](@"Captioning");
            if (v30)
            {

              v29 = *MEMORY[0x277CDCE00];
              v18 = sub_226099808();
              return (*(*(v18 - 8) + 104))(a4, v29);
            }

            else
            {

              sub_2260998E8();
              MEMORY[0x277D82BE0](@"Tshot");
              v48[0] = sub_226099A08();
              v48[1] = v19;
              v47[2] = a1;
              v47[3] = a2;
              v28 = MEMORY[0x22AA72BD0](v48[0], v19, a1, a2);
              sub_225EFE6BC(v48);
              MEMORY[0x277D82BD8](@"Tshot");
              if (v28)
              {

                v27 = *MEMORY[0x277CDCE48];
                v20 = sub_226099808();
                return (*(*(v20 - 8) + 104))(a4, v27);
              }

              else
              {

                sub_2260998E8();
                MEMORY[0x277D82BE0](@"Spelling");
                v47[0] = sub_226099A08();
                v47[1] = v21;
                v26 = MEMORY[0x22AA72BD0](v47[0], v21, a1, a2);
                sub_225EFE6BC(v47);
                MEMORY[0x277D82BD8](@"Spelling");

                if (v26)
                {
                  v25 = *MEMORY[0x277CDCE60];
                  v22 = sub_226099808();
                  return (*(*(v22 - 8) + 104))(a4, v25);
                }

                else
                {
                  v24 = *MEMORY[0x277CDCE70];
                  v23 = sub_226099808();
                  return (*(*(v23 - 8) + 104))(a4, v24);
                }
              }
            }
          }
        }
      }
    }
  }
}

char *sub_225F7E5E8()
{
  if (qword_280D76C20 != -1)
  {
    swift_once();
  }

  return &byte_280D77712;
}

uint64_t sub_225F7E648()
{
  v1 = [objc_opt_self() sharedPreferences];
  [v1 siriDataSharingOptInStatus];
  MEMORY[0x277D82BD8](v1);
  type metadata accessor for AFSiriDataSharingOptInStatus();
  sub_225EFE4AC();
  return sub_22609A508() & 1;
}

char *sub_225F7E704()
{
  if (qword_280D76D70 != -1)
  {
    swift_once();
  }

  return &byte_280D77720;
}

uint64_t sub_225F7E788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_225EF4064;

  return sub_22601D748(a1, a2, a4, a5);
}

uint64_t sub_225F7E874()
{
  v1 = sub_226098C58();
  __swift_allocate_value_buffer(v1, qword_280D76880);
  __swift_project_value_buffer(v1, qword_280D76880);
  return sub_225F7E8C0();
}

uint64_t sub_225F7E8C0()
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

uint64_t sub_225F7E9BC()
{
  if (qword_280D76878 != -1)
  {
    swift_once();
  }

  v0 = sub_226098C58();
  return __swift_project_value_buffer(v0, qword_280D76880);
}

uint64_t sub_225F7EA28()
{
  v1 = sub_226098C58();
  __swift_allocate_value_buffer(v1, qword_280D76ED8);
  __swift_project_value_buffer(v1, qword_280D76ED8);
  return sub_225F7EA74();
}

uint64_t sub_225F7EA74()
{
  AFLogInitIfNeeded();
  v1 = MEMORY[0x277CEF0B8];
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

uint64_t sub_225F7EB70()
{
  if (qword_280D76ED0 != -1)
  {
    swift_once();
  }

  v0 = sub_226098C58();
  return __swift_project_value_buffer(v0, qword_280D76ED8);
}

uint64_t sub_225F7EBDC(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v33 = a1;
  v34 = a2;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v29 = a6;
  v28 = v6;

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v21 = sub_226098C48();
  v22 = sub_22609A098();
  v17 = swift_allocObject();
  *(v17 + 16) = 32;
  v18 = swift_allocObject();
  *(v18 + 16) = 8;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_225F7F7D4;
  *(v16 + 24) = v15;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_225EF7B84;
  *(v19 + 24) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v20 = v7;

  *v20 = sub_225EF7434;
  v20[1] = v17;

  v20[2] = sub_225EF7434;
  v20[3] = v18;

  v20[4] = sub_225EF7B90;
  v20[5] = v19;
  sub_225EF5418();

  if (os_log_type_enabled(v21, v22))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v11 = sub_225EF5468(0);
    v12 = sub_225EF5468(1);
    v27 = buf;
    v26 = v11;
    v25 = v12;
    sub_225EF54BC(2, &v27);
    sub_225EF54BC(1, &v27);
    v23 = sub_225EF7434;
    v24 = v17;
    sub_225EF73E8(&v23, &v27, &v26, &v25);
    v23 = sub_225EF7434;
    v24 = v18;
    sub_225EF73E8(&v23, &v27, &v26, &v25);
    v23 = sub_225EF7B90;
    v24 = v19;
    sub_225EF73E8(&v23, &v27, &v26, &v25);
    _os_log_impl(&dword_225EEB000, v21, v22, "Failed precondition: %s", buf, 0xCu);
    sub_225EF7AF4(v11);
    sub_225EF7AF4(v12);
    sub_22609A168();
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v21);

  a1(v8);

  result = sub_22609A3C8();
  __break(1u);
  return result;
}

uint64_t sub_225F7F108(uint64_t (*a1)(void))
{

  v3 = a1();

  return v3;
}

uint64_t sub_225F7F168()
{
  result = sub_226099AA8();
  qword_280D767B0 = result;
  qword_280D767B8 = v1;
  return result;
}

uint64_t *sub_225F7F1AC()
{
  if (qword_280D767A8 != -1)
  {
    swift_once();
  }

  return &qword_280D767B0;
}

uint64_t sub_225F7F20C()
{
  result = sub_226099AA8();
  qword_280D76EC0 = result;
  qword_280D76EC8 = v1;
  return result;
}

uint64_t *sub_225F7F250()
{
  if (qword_280D76EB0 != -1)
  {
    swift_once();
  }

  return &qword_280D76EC0;
}

uint64_t sub_225F7F2B0()
{
  result = sub_226099AA8();
  qword_280D76C00 = result;
  qword_280D76C08 = v1;
  return result;
}

uint64_t *sub_225F7F2F4()
{
  if (qword_280D76BF8 != -1)
  {
    swift_once();
  }

  return &qword_280D76C00;
}

uint64_t sub_225F7F354()
{
  result = sub_226099AA8();
  qword_280D768B0 = result;
  qword_280D768B8 = v1;
  return result;
}

uint64_t *sub_225F7F398()
{
  if (qword_280D768A0 != -1)
  {
    swift_once();
  }

  return &qword_280D768B0;
}

uint64_t sub_225F7F3F8()
{
  result = sub_226099AA8();
  qword_280D769C0 = result;
  qword_280D769C8 = v1;
  return result;
}

uint64_t *sub_225F7F43C()
{
  if (qword_280D769B8 != -1)
  {
    swift_once();
  }

  return &qword_280D769C0;
}

uint64_t sub_225F7F49C()
{
  result = AFIsATVOnly();
  byte_280D767A0 = result;
  return result;
}

char *sub_225F7F4BC()
{
  if (qword_280D76790 != -1)
  {
    swift_once();
  }

  return &byte_280D767A0;
}

uint64_t sub_225F7F528()
{
  sub_225EF81C4();
  result = sub_22609A628();
  qword_27D7867C8 = result;
  qword_27D7867D0 = v1;
  return result;
}

uint64_t *sub_225F7F580()
{
  if (qword_27D785D78 != -1)
  {
    swift_once();
  }

  return &qword_27D7867C8;
}

uint64_t sub_225F7F5E0()
{
  sub_225EF81C4();
  result = sub_22609A628();
  qword_280D76BD8 = result;
  qword_280D76BE0 = v1;
  return result;
}

uint64_t *sub_225F7F638()
{
  if (qword_280D76BF0 != -1)
  {
    swift_once();
  }

  return &qword_280D76BD8;
}

uint64_t sub_225F7F6B0()
{
  sub_225F7C2B0();
  result = sub_226099EC8();
  qword_280D76F08 = v1;
  return result;
}

uint64_t *sub_225F7F6FC()
{
  if (qword_280D76EF8 != -1)
  {
    swift_once();
  }

  return &qword_280D76F08;
}

uint64_t sub_225F7F768()
{
  result = _swift_stdlib_has_malloc_size();
  byte_280D77720 = result & 1;
  return result;
}

uint64_t sub_225F7F78C()
{
  result = _swift_stdlib_has_malloc_size();
  byte_280D77721 = result & 1;
  return result;
}

uint64_t sub_225F7F7B0()
{
  result = _swift_stdlib_has_malloc_size();
  byte_280D77712 = result & 1;
  return result;
}

uint64_t sub_225F7F848()
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_225F7F8C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = [v3 delegate];
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_225F7F93C(uint64_t *a1, void *a2)
{
  sub_226022D70(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v4 setDelegate_];
  MEMORY[0x277D82BD8](v4);
  return swift_unknownObjectRelease();
}

uint64_t sub_225F7F9BC()
{
  v3 = 0;
  sub_225EF3E30(v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer__instanceUUID, v2);
  sub_226098A78();
  return swift_dynamicCast();
}

uint64_t sub_225F7FA28()
{
  v3 = 0;
  sub_225EF3E30(v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer__taskPriority, v2);
  sub_226099DA8();
  return swift_dynamicCast();
}

uint64_t sub_225F7FA94()
{
  v2 = *(v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_operationDequeuerTask);

  return v2;
}

uint64_t sub_225F7FB7C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer__audioEnqueuer;
  swift_beginAccess();
  sub_225EF9700(v3, a1);
  return swift_endAccess();
}

uint64_t *sub_225F7FBE0(uint64_t *a1)
{
  v6 = 0;
  v7 = a1;
  sub_225EF9700(a1, v5);
  v3 = v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer__audioEnqueuer;
  swift_beginAccess();
  sub_22601E698(v5, v3);
  swift_endAccess();
  return sub_225F186BC(a1);
}

uint64_t sub_225F7FC64()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_phoneticEmbedder);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_225F7FCCC(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_phoneticEmbedder);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

id CoreEmbeddedSpeechAnalyzer.init(delegate:instanceUUID:)(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDelegate:a1 instanceUUID:a2];
  swift_unknownObjectRelease();
  return v3;
}

{
  v269 = a2;
  v251 = a1;
  v340 = *MEMORY[0x277D85DE8];
  v270 = 0;
  v329 = 0;
  v328 = 0;
  v327 = 0;
  v326 = 0;
  v325 = 0;
  v324 = 0;
  v322 = 0;
  v268 = 0;
  v321 = 0;
  v224 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310);
  v227 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5);
  v229 = (v227 + 15) & 0xFFFFFFFFFFFFFFF0;
  v225 = &v113 - v229;
  MEMORY[0x28223BE20](&v113 - v229, v6, v7, v8);
  v226 = &v113 - v229;
  MEMORY[0x28223BE20](&v113 - v229, v9, v10, v11);
  v228 = &v113 - v229;
  MEMORY[0x28223BE20](&v113 - v229, v12, v13, v14);
  v230 = &v113 - v229;
  v329 = &v113 - v229;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786830, &qword_2260A0850);
  v232 = *(v231 - 8);
  v233 = v232;
  v234 = (*(v232 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v231 - 8, v231, v15, v16);
  v235 = &v113 - v234;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v237 = *(v236 - 8);
  v238 = v237;
  v239 = *(v237 + 64);
  MEMORY[0x28223BE20](v236 - 8, v17, v18, v19);
  v241 = (v239 + 15) & 0xFFFFFFFFFFFFFFF0;
  v240 = &v113 - v241;
  MEMORY[0x28223BE20](&v113 - v241, v20, v21, v22);
  v242 = &v113 - v241;
  v328 = &v113 - v241;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786838, &qword_2260A0858);
  v244 = *(v243 - 8);
  v245 = v244;
  v247 = *(v244 + 64);
  v246 = v247;
  MEMORY[0x28223BE20](v270, v243, v23, v24);
  v249 = (v247 + 15) & 0xFFFFFFFFFFFFFFF0;
  v248 = &v113 - v249;
  MEMORY[0x28223BE20](v25, &v113 - v249, v26, v27);
  v250 = &v113 - v249;
  v327 = &v113 - v249;
  v277 = sub_226098C58();
  v252 = v277;
  v253 = *(v277 - 8);
  v276 = v253;
  v254 = v253;
  v256 = *(v253 + 64);
  MEMORY[0x28223BE20](v251, v270, v277, v28);
  v258 = (v256 + 15) & 0xFFFFFFFFFFFFFFF0;
  v255 = &v113 - v258;
  MEMORY[0x28223BE20](v29, v30, &v113 - v258, v31);
  v257 = &v113 - v258;
  MEMORY[0x28223BE20](v32, v33, &v113 - v258, v34);
  v35 = &v113 - v258;
  v259 = &v113 - v258;
  v325 = v36;
  v324 = v269;
  v326 = v37;
  swift_unknownObjectWeakInit();
  v38 = v268;
  v39 = v270;
  v40 = &v326[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer__audioEnqueuer];
  *v40 = v270;
  v40[1] = v39;
  v40[2] = v39;
  v40[3] = v39;
  *&v326[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_phoneticEmbedder] = v39;
  *&v326[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_preheatingTask] = v39;
  *&v326[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_geoLMRegionIDUpdateTask] = v39;
  *&v326[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer] = v39;
  *&v326[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber] = v39;
  v326[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_enablesVoiceCommands] = v38;
  v260 = &v326[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_modelVersion];
  v262 = "";
  v261 = 1;
  v41 = sub_226099AA8();
  v42 = v260;
  *v260 = v41;
  v42[1] = v43;
  v263 = &v326[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_acousticModelVersion];
  v44 = sub_226099AA8();
  v45 = v263;
  v46 = v268;
  v47 = v270;
  *v263 = v44;
  v45[1] = v48;
  v326[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechProfileUsed] = v46;
  *&v326[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer____lazy_storage___speechProfileConfig] = v47;
  *&v326[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_userIdMask] = v47;
  *&v326[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_audioFormat] = v47;
  *&v326[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_samplingRate] = v47;
  *&v326[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_timeUntilRecognitionStartInMs] = v47;
  *&v326[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioDataLength] = v47;
  v265 = v326;
  v264 = OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioPackets;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E90, &qword_2260A0860);
  *&v265[v264] = sub_22609A4F8();
  v267 = v326;
  v266 = OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedRequestEagerResultData;
  v49 = sub_22609A4F8();
  v50 = v268;
  v51 = v270;
  v52 = v269;
  *&v267[v266] = v49;
  v326[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioEnded] = v50;
  *&v326[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_audioDurationMs] = v51;
  *&v326[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_processedAudioDuration] = v51;
  v53 = &v326[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_didFinish];
  *v53 = v51;
  v53[1] = v51;
  *&v326[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionBeginTime] = v51;
  *&v326[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionEndTime] = v51;
  *&v326[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_messageAppBiomeRecord] = v51;
  *&v326[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord] = v51;
  *&v326[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_analyzerOutputHandlerTask] = v51;
  v326[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_hasRecognizedAnything] = v50;
  LOBYTE(v323) = v50;
  BYTE1(v323) = v50;
  BYTE2(v323) = v50;
  BYTE3(v323) = v50;
  BYTE4(v323) = v50;
  BYTE5(v323) = v50;
  BYTE6(v323) = v50;
  BYTE7(v323) = v50;
  BYTE8(v323) = v50;
  BYTE9(v323) = v50;
  BYTE10(v323) = v50;
  BYTE11(v323) = v50;
  BYTE12(v323) = v50;
  BYTE13(v323) = v50;
  BYTE14(v323) = v50;
  HIBYTE(v323) = v50;
  memcpy(&v323, v52, sizeof(v323));
  v288 = sub_226098A78();
  v271 = v288;
  v272 = *(v288 - 8);
  v286 = v272;
  v273 = v272;
  v284 = *(v272 + 64);
  MEMORY[0x28223BE20](v288 - 8, v54, v55, v56);
  v281 = (v284 + 15) & 0xFFFFFFFFFFFFFFF0;
  v280 = &v113 - v281;
  v274 = &v113 - v281;
  v322 = &v113 - v281;
  v330 = v323;
  v275 = &v112;
  v112 = *(&v323 + 1);
  sub_226098A58();
  v57 = sub_225F7E9BC();
  v278 = *(v276 + 16);
  v279 = (v276 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v58 = v278(v35, v57, v277);
  v60 = MEMORY[0x28223BE20](v58, v280, v288, v59);
  v287 = &v113 - v281;
  v282 = *(v286 + 16);
  v283 = (v286 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v282(v60);
  v285 = (*(v286 + 80) + 16) & ~*(v286 + 80);
  v289 = swift_allocObject();
  (*(v286 + 32))(v289 + v285, v287, v288);

  v292 = 32;
  v296 = 32;
  v297 = 7;
  v61 = swift_allocObject();
  v62 = v289;
  v298 = v61;
  *(v61 + 16) = sub_225F7CD90;
  *(v61 + 24) = v62;

  v309 = sub_226098C48();
  v290 = v309;
  v308 = sub_22609A0A8();
  v291 = v308;
  v293 = 17;
  v302 = swift_allocObject();
  v294 = v302;
  *(v302 + 16) = v292;
  v303 = swift_allocObject();
  v295 = v303;
  *(v303 + 16) = 8;
  v63 = swift_allocObject();
  v64 = v298;
  v299 = v63;
  *(v63 + 16) = sub_225F7CE04;
  *(v63 + 24) = v64;
  v65 = swift_allocObject();
  v66 = v299;
  v306 = v65;
  v300 = v65;
  *(v65 + 16) = sub_225EF7B84;
  *(v65 + 24) = v66;
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v301 = v307;
  v304 = sub_22609A4F8();
  v305 = v67;

  v68 = v302;
  v69 = v305;
  *v305 = sub_225EF7434;
  v69[1] = v68;

  v70 = v303;
  v71 = v305;
  v305[2] = sub_225EF7434;
  v71[3] = v70;

  v72 = v305;
  v73 = v306;
  v305[4] = sub_225EF7B90;
  v72[5] = v73;
  sub_225EF5418();

  if (os_log_type_enabled(v309, v308))
  {
    v74 = v224;
    v217 = sub_22609A188();
    v214 = v217;
    v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v218 = sub_225EF5468(0);
    v216 = v218;
    v220 = 1;
    v219 = sub_225EF5468(1);
    v312 = v217;
    v332 = v218;
    v331 = v219;
    v221 = &v312;
    sub_225EF54BC(2, &v312);
    sub_225EF54BC(v220, v221);
    v310 = sub_225EF7434;
    v311 = v294;
    sub_225EF73E8(&v310, v221, &v332, &v331);
    v222 = v74;
    v223 = v74;
    if (v74)
    {
      v212 = 0;

      __break(1u);
    }

    else
    {
      v310 = sub_225EF7434;
      v311 = v295;
      sub_225EF73E8(&v310, &v312, &v332, &v331);
      v210 = 0;
      v211 = 0;
      v310 = sub_225EF7B90;
      v311 = v300;
      sub_225EF73E8(&v310, &v312, &v332, &v331);
      v208 = 0;
      v209 = 0;
      _os_log_impl(&dword_225EEB000, v290, v291, "Instantiating instance %s", v214, 0xCu);
      sub_225EF7AF4(v216);
      sub_225EF7AF4(v219);
      sub_22609A168();

      v213 = v208;
    }
  }

  else
  {
    v75 = v224;

    v213 = v75;
  }

  v202 = v213;

  v203 = *(v254 + 8);
  v204 = (v254 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v203(v259, v252);
  v205 = v326;
  swift_unknownObjectRetain();
  v206 = &v205[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_delegate];
  v207 = &v339;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  if (AFDeviceSupportsSiriUOD())
  {
    v201 = 1;
  }

  else
  {
    v201 = AFOfflineDictationCapable();
  }

  if (v201)
  {
    v198 = [objc_opt_self() sharedPreferences];
    v199 = [v198 infersQoSFromInstanceUUIDForEAR];

    v200 = v199;
  }

  else
  {
    v200 = 0;
  }

  if (v200)
  {
    QoSClassFromInstanceUUID = CoreEmbeddedSpeechRecognizerGetQoSClassFromInstanceUUID(v269);
  }

  else
  {
    QoSClassFromInstanceUUID = 0;
  }

  v193 = QoSClassFromInstanceUUID;
  v321 = QoSClassFromInstanceUUID;
  v320 = QoSClassFromInstanceUUID;
  v319 = 0;
  v195 = type metadata accessor for qos_class_t();
  v194 = v195;
  v196 = sub_22601E76C();
  if (sub_2260999D8())
  {
    v158 = v202;
  }

  else
  {
    v76 = v257;
    v77 = sub_225F7E9BC();
    v278(v76, v77, v252);
    v182 = 7;
    v183 = swift_allocObject();
    *(v183 + 16) = v193;
    v192 = sub_226098C48();
    v176 = v192;
    v191 = sub_22609A0A8();
    v177 = v191;
    v178 = 17;
    v186 = swift_allocObject();
    v179 = v186;
    *(v186 + 16) = 0;
    v187 = swift_allocObject();
    v180 = v187;
    *(v187 + 16) = 4;
    v181 = 32;
    v78 = swift_allocObject();
    v79 = v183;
    v184 = v78;
    *(v78 + 16) = sub_22601EA34;
    *(v78 + 24) = v79;
    v80 = swift_allocObject();
    v81 = v184;
    v190 = v80;
    v185 = v80;
    *(v80 + 16) = sub_22601EA78;
    *(v80 + 24) = v81;
    v188 = sub_22609A4F8();
    v189 = v82;

    v83 = v186;
    v84 = v189;
    *v189 = sub_225EF7434;
    v84[1] = v83;

    v85 = v187;
    v86 = v189;
    v189[2] = sub_225EF7434;
    v86[3] = v85;

    v87 = v189;
    v88 = v190;
    v189[4] = sub_225EF7244;
    v87[5] = v88;
    sub_225EF5418();

    if (os_log_type_enabled(v192, v191))
    {
      v89 = v202;
      v170 = sub_22609A188();
      v166 = v170;
      v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v168 = 0;
      v171 = sub_225EF5468(0);
      v169 = v171;
      v172 = sub_225EF5468(v168);
      v315[0] = v170;
      v334 = v171;
      v333 = v172;
      v173 = v315;
      sub_225EF54BC(0, v315);
      sub_225EF54BC(1, v173);
      v313 = sub_225EF7434;
      v314 = v179;
      sub_225EF73E8(&v313, v173, &v334, &v333);
      v174 = v89;
      v175 = v89;
      if (v89)
      {
        v164 = 0;

        __break(1u);
      }

      else
      {
        v313 = sub_225EF7434;
        v314 = v180;
        sub_225EF73E8(&v313, v315, &v334, &v333);
        v162 = 0;
        v163 = 0;
        v313 = sub_225EF7244;
        v314 = v185;
        sub_225EF73E8(&v313, v315, &v334, &v333);
        v160 = 0;
        v161 = 0;
        _os_log_impl(&dword_225EEB000, v176, v177, "ASR: Using QoS class 0x%x.", v166, 8u);
        v159 = 0;
        sub_225EF7AF4(v169);
        sub_225EF7AF4(v172);
        sub_22609A168();

        v165 = v160;
      }
    }

    else
    {
      v90 = v202;

      v165 = v90;
    }

    v157 = v165;

    v203(v257, v252);
    v158 = v157;
  }

  v151 = v158;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786918, &qword_2260A0868);
  sub_225F819F0();
  sub_225F81A04(v235);
  sub_226099DB8();
  (*(v233 + 8))(v235, v231);
  v153 = *(v245 + 32);
  v154 = (v245 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v153(v250, v248, v243);
  (*(v238 + 32))(v242, v240, v236);
  v155 = v326;
  v338[3] = v236;
  v156 = v338;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v338);
  (*(v238 + 16))(boxed_opaque_existential_0, v242, v236);
  sub_225EF9790(v156, &v155[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer__operationEnqueuer]);
  v318 = v193;
  if (sub_2260999D8())
  {
    v92 = sub_226099DA8();
    (*(*(v92 - 8) + 56))(v228, 1);
  }

  else if (v193 > 0xFF)
  {
    LODWORD(v112) = 0;
    sub_22609A3B8();
    __break(1u);
  }

  else
  {
    sub_226099D88();
    v93 = sub_226099DA8();
    (*(*(v93 - 8) + 56))(v228, 0, 1);
  }

  sub_22601E7EC(v228, v230);
  v144 = v326;
  sub_225EF7BD0(v230, v226);
  v146 = sub_226099DA8();
  v145 = v146;
  v337[3] = v146;
  v147 = __swift_allocate_boxed_opaque_existential_0(v337);
  v148 = *(v146 - 8);
  v149 = *(v148 + 48);
  v150 = (v148 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if ((v149)(v226, 1) == 1)
  {
    sub_226099E68();
    if (v149(v226, 1, v145) != 1)
    {
      sub_225EF7CF8(v226);
    }
  }

  else
  {
    (*(v148 + 32))(v147, v226, v145);
  }

  sub_225EF9790(v337, &v144[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer__taskPriority]);
  v143 = v326;
  sub_225EF7BD0(v230, v225);
  v94 = *(v245 + 16);
  v139 = v245 + 16;
  v94(v248, v250, v243);
  v140 = (*(v139 + 64) + 32) & ~*(v139 + 64);
  v95 = swift_allocObject();
  v96 = v140;
  v97 = v248;
  v98 = v243;
  v99 = v153;
  v142 = v95;
  v141 = 0;
  *(v95 + 16) = 0;
  *(v95 + 24) = 0;
  v99(v95 + v96, v97, v98);
  v100 = sub_225F38F2C(v141, v141, v225, &unk_2260A0878, v142, MEMORY[0x277D84F78] + 8);
  v101 = v269;
  *&v143[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_operationDequeuerTask] = v100;
  if (CoreEmbeddedSpeechRecognizerGetIsHighPriorityFromInstanceUUID(v101))
  {
    v102 = v255;
    v103 = sub_225F7E9BC();
    v278(v102, v103, v252);
    v137 = sub_226098C48();
    v134 = v137;
    v136 = sub_22609A0A8();
    v135 = v136;
    v138 = sub_22609A4F8();
    if (os_log_type_enabled(v137, v136))
    {
      v104 = v151;
      v125 = sub_22609A188();
      v121 = v125;
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v123 = 0;
      v126 = sub_225EF5468(0);
      v124 = v126;
      v127 = sub_225EF5468(v123);
      v316 = v125;
      v335[1] = v126;
      v335[0] = v127;
      v128 = 0;
      v129 = &v316;
      sub_225EF54BC(0, &v316);
      sub_225EF54BC(v128, v129);
      v315[2] = v138;
      v130 = &v113;
      MEMORY[0x28223BE20](&v113, v105, v106, v107);
      v131 = &v113 - 6;
      v112 = v335;
      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v133 = v104;
      if (v104)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v134, v135, "ASR: Using high priority configuration.", v121, 2u);
        v119 = 0;
        sub_225EF7AF4(v124);
        sub_225EF7AF4(v127);
        sub_22609A168();

        v120 = v133;
      }
    }

    else
    {

      v120 = v151;
    }

    v117 = v120;

    v203(v255, v252);
    v118 = v117;
  }

  else
  {
    v118 = v151;
  }

  v114 = v326;
  v336[3] = v271;
  v115 = v336;
  v108 = __swift_allocate_boxed_opaque_existential_0(v336);
  (v282)(v108, v274, v271);
  sub_225EF9790(v115, &v114[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer__instanceUUID]);
  sub_225EF7CF8(v230);
  (*(v238 + 8))(v242, v236);
  (*(v245 + 8))(v250, v243);
  (*(v273 + 8))(v274, v271);
  v317.receiver = v326;
  v317.super_class = CoreEmbeddedSpeechAnalyzer;
  v116 = objc_msgSendSuper2(&v317, sel_init);
  v109 = v116;
  v326 = v116;
  swift_unknownObjectRelease();

  v110 = __OFSUB__(*MEMORY[0x277D85DE8], v340);
  return v116;
}

uint64_t sub_225F81A04@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85778];
  v1 = sub_226099DC8();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_225F81A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v4[6] = v4;
  v4[7] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D88, &qword_2260A0F90);
  v4[9] = v5;
  v9 = *(v5 - 8);
  v4[10] = v9;
  v6 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[7] = a4;
  v7 = v4[6];

  return MEMORY[0x2822009F8](sub_225F81B84, 0, 0);
}

uint64_t sub_225F81B84()
{
  v7 = v0[11];
  v1 = v0[8];
  v0[6] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786838, &qword_2260A0858);
  sub_226099DF8();
  v2 = *(MEMORY[0x277D85798] + 4);
  v3 = swift_task_alloc();
  v8[12] = v3;
  *v3 = v8[6];
  v3[1] = sub_225EF5AB4;
  v4 = v8[11];
  v5 = v8[9];

  return MEMORY[0x2822003E8](v8 + 2, 0, 0, v5);
}

id sub_225F81CB8()
{
  v51 = sub_225F3E198;
  v52 = sub_225F3E1C8;
  v53 = sub_225EF7434;
  v54 = sub_225EF7434;
  v55 = sub_225F3E358;
  v76 = 0;
  v56 = 0;
  v57 = sub_226098C58();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v57, v1, v2, v3);
  v61 = v26 - v60;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786928, &qword_2260A0888);
  v65 = *(v68 - 8);
  v66 = v68 - 8;
  v62 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v68, v4, v5, v6);
  v63 = v26 - v62;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A18, &qword_2260A0A08);
  v64 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v8, v9, v10);
  v67 = v26 - v64;
  v76 = v0;
  sub_225EF95B0(v26 - v64);
  if ((*(v65 + 48))(v67, 1, v68) == 0)
  {
    (*(v65 + 16))(v63, v67, v68);
    sub_225EF97AC(v67);
    sub_226099DE8();
    (*(v65 + 8))(v63, v68);
  }

  else
  {
    sub_225EF97AC(v67);
  }

  v49 = &v50[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_analyzerOutputHandlerTask];
  swift_beginAccess();
  if (*v49)
  {
    v48 = *v49;

    swift_endAccess();
    sub_226099E38();
  }

  else
  {
    swift_endAccess();
  }

  v11 = v61;
  v34 = *&v50[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_operationDequeuerTask];

  sub_226099E38();

  v12 = sub_225F7E9BC();
  (*(v58 + 16))(v11, v12, v57);
  MEMORY[0x277D82BE0](v50);
  v37 = 7;
  v38 = swift_allocObject();
  *(v38 + 16) = v50;
  v46 = sub_226098C48();
  v47 = sub_22609A0A8();
  v35 = 17;
  v40 = swift_allocObject();
  *(v40 + 16) = 64;
  v41 = swift_allocObject();
  *(v41 + 16) = 8;
  v36 = 32;
  v13 = swift_allocObject();
  v14 = v38;
  v39 = v13;
  *(v13 + 16) = v51;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v39;
  v43 = v15;
  *(v15 + 16) = v52;
  *(v15 + 24) = v16;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v42 = sub_22609A4F8();
  v44 = v17;

  v18 = v40;
  v19 = v44;
  *v44 = v53;
  v19[1] = v18;

  v20 = v41;
  v21 = v44;
  v44[2] = v54;
  v21[3] = v20;

  v22 = v43;
  v23 = v44;
  v44[4] = v55;
  v23[5] = v22;
  sub_225EF5418();

  if (os_log_type_enabled(v46, v47))
  {
    v24 = v56;
    v27 = sub_22609A188();
    v26[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v28 = sub_225EF5468(1);
    v29 = sub_225EF5468(0);
    v30 = &v74;
    v74 = v27;
    v31 = &v73;
    v73 = v28;
    v32 = &v72;
    v72 = v29;
    sub_225EF54BC(2, &v74);
    sub_225EF54BC(1, v30);
    v70 = v53;
    v71 = v40;
    sub_225EF73E8(&v70, v30, v31, v32);
    v33 = v24;
    if (v24)
    {

      __break(1u);
    }

    else
    {
      v70 = v54;
      v71 = v41;
      sub_225EF73E8(&v70, &v74, &v73, &v72);
      v26[1] = 0;
      v70 = v55;
      v71 = v43;
      sub_225EF73E8(&v70, &v74, &v73, &v72);
      _os_log_impl(&dword_225EEB000, v46, v47, "%@ deinit", v27, 0xCu);
      sub_225EF7AF4(v28);
      sub_225EF7AF4(v29);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v46);
  (*(v58 + 8))(v61, v57);
  v75.receiver = v50;
  v75.super_class = CoreEmbeddedSpeechAnalyzer;
  return objc_msgSendSuper2(&v75, sel_dealloc);
}

uint64_t sub_225F82658()
{
  v4[0] = 0;
  v4[1] = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786930, &qword_2260A0890);
  result = sub_225F826AC(v4, v0, v1, v2);
  qword_280D76430 = result;
  return result;
}

uint64_t sub_225F826AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v13 = a2;
  v8 = *(a2 - 8);
  v9 = a2 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](a1, a1, a2, a4);
  v7 = &v6 - v6;
  (*(v8 + 16))(v4);
  v12 = sub_22601DA84(v7, v10);
  (*(v8 + 8))(v11, v10);
  return v12;
}

uint64_t *sub_225F827A0()
{
  if (qword_280D76428 != -1)
  {
    swift_once();
  }

  return &qword_280D76430;
}

uint64_t sub_225F82800()
{
  v1 = *sub_225F827A0();

  return v1;
}

uint64_t sub_225F82838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  result = sub_225F826AC(&v5, MEMORY[0x277D839B0], a3, a4);
  qword_27D7867D8 = result;
  return result;
}

uint64_t *sub_225F82870()
{
  if (qword_27D785D80 != -1)
  {
    swift_once();
  }

  return &qword_27D7867D8;
}

uint64_t sub_225F828D0()
{
  v1 = *sub_225F82870();

  return v1;
}

uint64_t sub_225F82908()
{
  v4 = 0;
  v5 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786938, &qword_2260A0898);
  result = sub_225F826AC(&v4, v0, v1, v2);
  qword_280D76460 = result;
  return result;
}

uint64_t *sub_225F8295C()
{
  if (qword_280D76458 != -1)
  {
    swift_once();
  }

  return &qword_280D76460;
}

uint64_t sub_225F829BC()
{
  v1 = *sub_225F8295C();

  return v1;
}

uint64_t sub_225F82A04()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_preheatingTask);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_225F82A6C(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_preheatingTask);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_225F82AEC()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_geoLMRegionIDUpdateTask);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_225F82B54(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_geoLMRegionIDUpdateTask);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_225F82BD4()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_225F82C3C(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_225F82CBC()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_225F82D24(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_225F82DA4()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_enablesVoiceCommands);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_225F82E0C(char a1)
{
  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_enablesVoiceCommands);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_225F82E80()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_modelVersion);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  sub_2260998E8();
  swift_endAccess();
  return v3;
}

uint64_t sub_225F82EF4(uint64_t a1, uint64_t a2)
{
  sub_2260998E8();
  v6 = (v2 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_modelVersion);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_225F82F94()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_acousticModelVersion);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  sub_2260998E8();
  swift_endAccess();
  return v3;
}

uint64_t sub_225F83008(uint64_t a1, uint64_t a2)
{
  sub_2260998E8();
  v6 = (v2 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_acousticModelVersion);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_225F830A8()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechProfileUsed);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_225F83110(char a1)
{
  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechProfileUsed);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

id sub_225F83184()
{
  v7 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer____lazy_storage___speechProfileConfig);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  sub_225F4C634();
  v4 = sub_225F26174();
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer____lazy_storage___speechProfileConfig);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

uint64_t sub_225F832A0(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer____lazy_storage___speechProfileConfig);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_225F83338()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_userIdMask);
  swift_beginAccess();
  v3 = *v2;
  sub_2260998E8();
  swift_endAccess();
  return v3;
}

uint64_t sub_225F833A0(uint64_t a1)
{
  sub_2260998E8();
  v4 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_userIdMask);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_225F83420()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786948, &qword_2260A08A0);
  sub_22609A4F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786950, &qword_2260A08A8);
  v2 = sub_2260998A8();
  dword_27D788400 = 0;
  qword_27D788408 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786958, &qword_2260A08B0);
  return sub_225F1CB40(&v2, &qword_27D788408, v0);
}

int *sub_225F834E0()
{
  if (qword_27D785D90 != -1)
  {
    swift_once();
  }

  return &dword_27D788400;
}

uint64_t sub_225F83540()
{
  v2 = 0;
  dword_27D788410 = 0;
  qword_27D788418 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786960, &qword_2260A08B8);
  return sub_225F1CB40(&v2, &qword_27D788418, v0);
}

int *sub_225F835AC()
{
  if (qword_27D785D98 != -1)
  {
    swift_once();
  }

  return &dword_27D788410;
}

uint64_t CoreEmbeddedSpeechAnalyzer.preheatSpeechRecognition(with:preheatSource:modelOverrideURL:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v114 = a4;
  v113 = a3;
  v116 = a2;
  v115 = a1;
  ObjectType = swift_getObjectType();
  v141 = 0;
  v169 = 0;
  v168 = 0;
  v167 = 0;
  v166 = 0;
  v165 = 0;
  v102 = 0;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v104 = *(v103 - 8);
  v105 = v104;
  v106 = (*(v104 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v103 - 8, v103, v4, v5);
  v107 = &v63 - v106;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v109 = *(v108 - 8);
  v110 = v109;
  v111 = (*(v109 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v141, v108, v6, v7);
  v112 = &v63 - v111;
  v123 = sub_226098C58();
  v117 = v123;
  v118 = *(v123 - 8);
  v122 = v118;
  v119 = v118;
  v120 = *(v118 + 64);
  MEMORY[0x28223BE20](v115, v116, v113, v114);
  v8 = &v63 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v8;
  v169 = v9;
  v167 = v10;
  v168 = v11;
  v166 = v12;
  v165 = v13;
  v14 = sub_225F7E9BC();
  (*(v122 + 16))(v8, v14, v123);
  v15 = v124;
  v143 = 7;
  v129 = swift_allocObject();
  *(v129 + 16) = v124;
  v159 = sub_226098C48();
  v125 = v159;
  v158 = sub_22609A0A8();
  v126 = v158;
  v137 = 17;
  v146 = swift_allocObject();
  v127 = v146;
  *(v146 + 16) = 64;
  v147 = swift_allocObject();
  v128 = v147;
  v139 = 8;
  *(v147 + 16) = 8;
  v132 = 32;
  v142 = 32;
  v16 = swift_allocObject();
  v17 = v129;
  v130 = v16;
  *(v16 + 16) = sub_225F3E198;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v130;
  v148 = v18;
  v131 = v18;
  *(v18 + 16) = sub_225F3E1C8;
  *(v18 + 24) = v19;
  v149 = swift_allocObject();
  v133 = v149;
  *(v149 + 16) = v132;
  v150 = swift_allocObject();
  v134 = v150;
  *(v150 + 16) = v139;
  v20 = swift_allocObject();
  v21 = v141;
  v135 = v20;
  *(v20 + 16) = sub_225F847B8;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v135;
  v151 = v22;
  v136 = v22;
  *(v22 + 16) = sub_225EF7B84;
  *(v22 + 24) = v23;
  v152 = swift_allocObject();
  v138 = v152;
  *(v152 + 16) = 0;
  v153 = swift_allocObject();
  v140 = v153;
  *(v153 + 16) = v139;
  v24 = swift_allocObject();
  v25 = v141;
  v144 = v24;
  *(v24 + 16) = sub_225F847E8;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v144;
  v156 = v26;
  v145 = v26;
  *(v26 + 16) = sub_225F2D374;
  *(v26 + 24) = v27;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v154 = sub_22609A4F8();
  v155 = v28;

  v29 = v146;
  v30 = v155;
  *v155 = sub_225EF7434;
  v30[1] = v29;

  v31 = v147;
  v32 = v155;
  v155[2] = sub_225EF7434;
  v32[3] = v31;

  v33 = v148;
  v34 = v155;
  v155[4] = sub_225F3E358;
  v34[5] = v33;

  v35 = v149;
  v36 = v155;
  v155[6] = sub_225EF7434;
  v36[7] = v35;

  v37 = v150;
  v38 = v155;
  v155[8] = sub_225EF7434;
  v38[9] = v37;

  v39 = v151;
  v40 = v155;
  v155[10] = sub_225EF7B90;
  v40[11] = v39;

  v41 = v152;
  v42 = v155;
  v155[12] = sub_225EF7434;
  v42[13] = v41;

  v43 = v153;
  v44 = v155;
  v155[14] = sub_225EF7434;
  v44[15] = v43;

  v45 = v155;
  v46 = v156;
  v155[16] = sub_225EF71D0;
  v45[17] = v46;
  sub_225EF5418();

  if (os_log_type_enabled(v159, v158))
  {
    v47 = v102;
    v95 = sub_22609A188();
    v91 = v95;
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v93 = 1;
    v96 = sub_225EF5468(1);
    v94 = v96;
    v97 = sub_225EF5468(v93);
    v164[0] = v95;
    v163 = v96;
    v162 = v97;
    v98 = v164;
    sub_225EF54BC(2, v164);
    sub_225EF54BC(3, v98);
    v160 = sub_225EF7434;
    v161 = v127;
    sub_225EF73E8(&v160, v98, &v163, &v162);
    v99 = v47;
    v100 = v47;
    if (v47)
    {
      v89 = 0;

      __break(1u);
    }

    else
    {
      v160 = sub_225EF7434;
      v161 = v128;
      sub_225EF73E8(&v160, v164, &v163, &v162);
      v87 = 0;
      v88 = 0;
      v160 = sub_225F3E358;
      v161 = v131;
      sub_225EF73E8(&v160, v164, &v163, &v162);
      v85 = 0;
      v86 = 0;
      v160 = sub_225EF7434;
      v161 = v133;
      sub_225EF73E8(&v160, v164, &v163, &v162);
      v83 = 0;
      v84 = 0;
      v160 = sub_225EF7434;
      v161 = v134;
      sub_225EF73E8(&v160, v164, &v163, &v162);
      v81 = 0;
      v82 = 0;
      v160 = sub_225EF7B90;
      v161 = v136;
      sub_225EF73E8(&v160, v164, &v163, &v162);
      v79 = 0;
      v80 = 0;
      v160 = sub_225EF7434;
      v161 = v138;
      sub_225EF73E8(&v160, v164, &v163, &v162);
      v77 = 0;
      v78 = 0;
      v160 = sub_225EF7434;
      v161 = v140;
      sub_225EF73E8(&v160, v164, &v163, &v162);
      v75 = 0;
      v76 = 0;
      v160 = sub_225EF71D0;
      v161 = v145;
      sub_225EF73E8(&v160, v164, &v163, &v162);
      v73 = 0;
      v74 = 0;
      _os_log_impl(&dword_225EEB000, v125, v126, "%@ %s:%ld queue task enqueued", v91, 0x20u);
      v72 = 1;
      sub_225EF7AF4(v94);
      sub_225EF7AF4(v97);
      sub_22609A168();

      v90 = v73;
    }
  }

  else
  {
    v48 = v102;

    v90 = v48;
  }

  (*(v119 + 8))(v121, v117);
  sub_225EF58A0();
  v49 = v124;
  sub_2260998E8();
  v50 = v115;
  v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0) - 8);
  v65 = v63;
  v66 = *(v63 + 64);
  v71 = &v63;
  v64 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v114, &v63, v51, v52);
  v68 = &v63 - v64;
  sub_22601EA84(v53, &v63 - v64);
  v67 = (*(v65 + 80) + 48) & ~*(v65 + 80);
  v69 = (v67 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v55 = v116;
  v56 = v113;
  v57 = v115;
  v58 = v67;
  v59 = v54;
  v60 = v68;
  v70 = v59;
  v59[2] = v124;
  v59[3] = v55;
  v59[4] = v56;
  v59[5] = v57;
  sub_22601EBAC(v60, v59 + v58);
  v61 = v70;
  *&v70[v69] = ObjectType;
  v164[1] = &unk_2260A08D8;
  v164[2] = v61;
  sub_226099DD8();
  (*(v105 + 8))(v107, v103);
  return (*(v110 + 8))(v112, v108);
}

uint64_t sub_225F847F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 112) = a6;
  *(v6 + 104) = a5;
  *(v6 + 96) = a4;
  *(v6 + 88) = a3;
  *(v6 + 80) = a2;
  *(v6 + 48) = v6;
  *(v6 + 56) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 152) = 0;
  v7 = sub_226098C58();
  *(v6 + 120) = v7;
  v10 = *(v7 - 8);
  *(v6 + 128) = v10;
  v11 = *(v10 + 64);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 56) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 64) = a5;
  *(v6 + 72) = a6;
  v8 = *(v6 + 48);

  return MEMORY[0x2822009F8](sub_225F84984, 0, 0);
}

uint64_t sub_225F84984()
{
  v90 = v0;
  v1 = v0[18];
  v60 = v0[16];
  v61 = v0[15];
  v63 = v0[10];
  v0[6] = v0;
  v2 = sub_225F7E9BC();
  v62 = *(v60 + 16);
  v62(v1, v2, v61);
  MEMORY[0x277D82BE0](v63);
  v64 = swift_allocObject();
  *(v64 + 16) = v63;
  v78 = sub_226098C48();
  v79 = sub_22609A0A8();
  v68 = swift_allocObject();
  *(v68 + 16) = 64;
  v69 = swift_allocObject();
  *(v69 + 16) = 8;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_225F3E198;
  *(v65 + 24) = v64;
  v70 = swift_allocObject();
  *(v70 + 16) = sub_225F3E1C8;
  *(v70 + 24) = v65;
  v71 = swift_allocObject();
  *(v71 + 16) = 32;
  v72 = swift_allocObject();
  *(v72 + 16) = 8;
  v66 = swift_allocObject();
  *(v66 + 16) = sub_225F847B8;
  *(v66 + 24) = 0;
  v73 = swift_allocObject();
  *(v73 + 16) = sub_225EF7B84;
  *(v73 + 24) = v66;
  v74 = swift_allocObject();
  *(v74 + 16) = 0;
  v75 = swift_allocObject();
  *(v75 + 16) = 8;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_225F860E8;
  *(v67 + 24) = 0;
  v76 = swift_allocObject();
  *(v76 + 16) = sub_225F2D374;
  *(v76 + 24) = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v77 = v3;

  *v77 = sub_225EF7434;
  v77[1] = v68;

  v77[2] = sub_225EF7434;
  v77[3] = v69;

  v77[4] = sub_225F3E358;
  v77[5] = v70;

  v77[6] = sub_225EF7434;
  v77[7] = v71;

  v77[8] = sub_225EF7434;
  v77[9] = v72;

  v77[10] = sub_225EF7B90;
  v77[11] = v73;

  v77[12] = sub_225EF7434;
  v77[13] = v74;

  v77[14] = sub_225EF7434;
  v77[15] = v75;

  v77[16] = sub_225EF71D0;
  v77[17] = v76;
  sub_225EF5418();

  if (os_log_type_enabled(v78, v79))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v57 = sub_225EF5468(1);
    v58 = sub_225EF5468(1);
    v85 = buf;
    v86 = v57;
    v87 = v58;
    sub_225EF54BC(2, &v85);
    sub_225EF54BC(3, &v85);
    v88 = sub_225EF7434;
    v89 = v68;
    sub_225EF73E8(&v88, &v85, &v86, &v87);
    v88 = sub_225EF7434;
    v89 = v69;
    sub_225EF73E8(&v88, &v85, &v86, &v87);
    v88 = sub_225F3E358;
    v89 = v70;
    sub_225EF73E8(&v88, &v85, &v86, &v87);
    v88 = sub_225EF7434;
    v89 = v71;
    sub_225EF73E8(&v88, &v85, &v86, &v87);
    v88 = sub_225EF7434;
    v89 = v72;
    sub_225EF73E8(&v88, &v85, &v86, &v87);
    v88 = sub_225EF7B90;
    v89 = v73;
    sub_225EF73E8(&v88, &v85, &v86, &v87);
    v88 = sub_225EF7434;
    v89 = v74;
    sub_225EF73E8(&v88, &v85, &v86, &v87);
    v88 = sub_225EF7434;
    v89 = v75;
    sub_225EF73E8(&v88, &v85, &v86, &v87);
    v88 = sub_225EF71D0;
    v89 = v76;
    sub_225EF73E8(&v88, &v85, &v86, &v87);
    _os_log_impl(&dword_225EEB000, v78, v79, "%@ %s:%ld queue task dequeued", buf, 0x20u);
    sub_225EF7AF4(v57);
    sub_225EF7AF4(v58);
    sub_22609A168();
  }

  else
  {
  }

  v37 = *(v59 + 144);
  v4 = *(v59 + 136);
  v39 = *(v59 + 120);
  v42 = *(v59 + 96);
  v41 = *(v59 + 88);
  v40 = *(v59 + 80);
  v36 = *(v59 + 128);
  MEMORY[0x277D82BD8](v78);
  v38 = *(v36 + 8);
  v38(v37, v39);
  v5 = sub_225F7E9BC();
  v62(v4, v5, v39);
  MEMORY[0x277D82BE0](v40);
  v43 = swift_allocObject();
  *(v43 + 16) = v40;
  sub_2260998E8();
  v45 = swift_allocObject();
  *(v45 + 16) = v41;
  *(v45 + 24) = v42;
  oslog = sub_226098C48();
  v55 = sub_22609A0A8();
  v47 = swift_allocObject();
  *(v47 + 16) = 64;
  v48 = swift_allocObject();
  *(v48 + 16) = 8;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_225F3E198;
  *(v44 + 24) = v43;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_225F3E1C8;
  *(v49 + 24) = v44;
  v50 = swift_allocObject();
  *(v50 + 16) = 34;
  v51 = swift_allocObject();
  *(v51 + 16) = 8;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_22601F3DC;
  *(v46 + 24) = v45;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_225EF7B84;
  *(v52 + 24) = v46;
  sub_22609A4F8();
  v53 = v6;

  *v53 = sub_225EF7434;
  v53[1] = v47;

  v53[2] = sub_225EF7434;
  v53[3] = v48;

  v53[4] = sub_225F3E358;
  v53[5] = v49;

  v53[6] = sub_225EF7434;
  v53[7] = v50;

  v53[8] = sub_225EF7434;
  v53[9] = v51;

  v53[10] = sub_225EF7B90;
  v53[11] = v52;
  sub_225EF5418();

  if (os_log_type_enabled(oslog, v55))
  {
    v33 = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v34 = sub_225EF5468(1);
    v35 = sub_225EF5468(1);
    v80 = v33;
    v81 = v34;
    v82 = v35;
    sub_225EF54BC(2, &v80);
    sub_225EF54BC(2, &v80);
    v83 = sub_225EF7434;
    v84 = v47;
    sub_225EF73E8(&v83, &v80, &v81, &v82);
    v83 = sub_225EF7434;
    v84 = v48;
    sub_225EF73E8(&v83, &v80, &v81, &v82);
    v83 = sub_225F3E358;
    v84 = v49;
    sub_225EF73E8(&v83, &v80, &v81, &v82);
    v83 = sub_225EF7434;
    v84 = v50;
    sub_225EF73E8(&v83, &v80, &v81, &v82);
    v83 = sub_225EF7434;
    v84 = v51;
    sub_225EF73E8(&v83, &v80, &v81, &v82);
    v83 = sub_225EF7B90;
    v84 = v52;
    sub_225EF73E8(&v83, &v80, &v81, &v82);
    _os_log_impl(&dword_225EEB000, oslog, v55, "%@ Preheat request for %{public}s", v33, 0x16u);
    sub_225EF7AF4(v34);
    sub_225EF7AF4(v35);
    sub_22609A168();
  }

  else
  {
  }

  v24 = *(v59 + 136);
  v25 = *(v59 + 120);
  v26 = *(v59 + 104);
  v30 = *(v59 + 80);
  MEMORY[0x277D82BD8](oslog);
  v38(v24, v25);
  [v26 assetType];
  v27 = SFEntitledAssetTypeToString();
  v28 = sub_226099A08();
  v29 = v7;
  *(v59 + 32) = v28;
  *(v59 + 40) = v7;
  MEMORY[0x277D82BD8](v27);
  v32 = *sub_225F827A0();

  sub_2260998E8();
  MEMORY[0x277D82BE0](v30);
  v31 = swift_task_alloc();
  v31[2] = v28;
  v31[3] = v29;
  v31[4] = v30;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786930, &qword_2260A0890);
  sub_225F8798C(sub_226025938, v31, v32, v8, MEMORY[0x277D839B0]);
  v23 = *(v59 + 80);

  MEMORY[0x277D82BD8](v23);

  v9 = *(v59 + 153);
  *(v59 + 152) = v9 & 1;
  if (v9)
  {
    v21 = *(v59 + 112);
    v20 = *(v59 + 96);
    v19 = *(v59 + 88);
    v10 = *(v59 + 80);
    v22 = [*(v59 + 104) language];
    v11 = sub_226099A08();
    sub_225F879F0(v11, v12, v19, v20, v21);

    MEMORY[0x277D82BD8](v22);
  }

  v17 = *(v59 + 144);
  v18 = *(v59 + 136);
  v16 = *(v59 + 80);

  sub_225F860F4(v16);

  v13 = *(*(v59 + 48) + 8);
  v14 = *(v59 + 48);

  return v13();
}

uint64_t sub_225F860F4(uint64_t a1)
{
  v53 = a1;
  v54 = sub_225F3E198;
  v56 = sub_225F3E1C8;
  v58 = sub_225F847B8;
  v59 = sub_225EF7B84;
  v63 = sub_22601D2A8;
  v66 = sub_225F2D374;
  v68 = sub_225EF7434;
  v70 = sub_225EF7434;
  v72 = sub_225F3E358;
  v74 = sub_225EF7434;
  v76 = sub_225EF7434;
  v78 = sub_225EF7B90;
  v80 = sub_225EF7434;
  v82 = sub_225EF7434;
  v85 = sub_225EF71D0;
  v96 = 0;
  v47 = 0;
  v52 = sub_226098C58();
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v48 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53, v1, v2, v3);
  v4 = v38 - v48;
  v49 = v38 - v48;
  v96 = v5;
  v6 = sub_225F7E9BC();
  (*(v50 + 16))(v4, v6, v52);
  MEMORY[0x277D82BE0](v53);
  v65 = 7;
  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  v89 = sub_226098C48();
  v90 = sub_22609A0A8();
  v61 = 17;
  v69 = swift_allocObject();
  *(v69 + 16) = 64;
  v71 = swift_allocObject();
  v62 = 8;
  *(v71 + 16) = 8;
  v64 = 32;
  v7 = swift_allocObject();
  v8 = v55;
  v57 = v7;
  *(v7 + 16) = v54;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v57;
  v73 = v9;
  *(v9 + 16) = v56;
  *(v9 + 24) = v10;
  v75 = swift_allocObject();
  *(v75 + 16) = 32;
  v77 = swift_allocObject();
  *(v77 + 16) = v62;
  v11 = swift_allocObject();
  v60 = v11;
  *(v11 + 16) = v58;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v60;
  v79 = v12;
  *(v12 + 16) = v59;
  *(v12 + 24) = v13;
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  v83 = swift_allocObject();
  *(v83 + 16) = v62;
  v14 = swift_allocObject();
  v67 = v14;
  *(v14 + 16) = v63;
  *(v14 + 24) = 0;
  v15 = swift_allocObject();
  v16 = v67;
  v86 = v15;
  *(v15 + 16) = v66;
  *(v15 + 24) = v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v84 = sub_22609A4F8();
  v87 = v17;

  v18 = v69;
  v19 = v87;
  *v87 = v68;
  v19[1] = v18;

  v20 = v71;
  v21 = v87;
  v87[2] = v70;
  v21[3] = v20;

  v22 = v73;
  v23 = v87;
  v87[4] = v72;
  v23[5] = v22;

  v24 = v75;
  v25 = v87;
  v87[6] = v74;
  v25[7] = v24;

  v26 = v77;
  v27 = v87;
  v87[8] = v76;
  v27[9] = v26;

  v28 = v79;
  v29 = v87;
  v87[10] = v78;
  v29[11] = v28;

  v30 = v81;
  v31 = v87;
  v87[12] = v80;
  v31[13] = v30;

  v32 = v83;
  v33 = v87;
  v87[14] = v82;
  v33[15] = v32;

  v34 = v86;
  v35 = v87;
  v87[16] = v85;
  v35[17] = v34;
  sub_225EF5418();

  if (os_log_type_enabled(v89, v90))
  {
    v36 = v47;
    v40 = sub_22609A188();
    v38[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v39 = 1;
    v41 = sub_225EF5468(1);
    v42 = sub_225EF5468(v39);
    v43 = &v95;
    v95 = v40;
    v44 = &v94;
    v94 = v41;
    v45 = &v93;
    v93 = v42;
    sub_225EF54BC(2, &v95);
    sub_225EF54BC(3, v43);
    v91 = v68;
    v92 = v69;
    sub_225EF73E8(&v91, v43, v44, v45);
    v46 = v36;
    if (v36)
    {

      __break(1u);
    }

    else
    {
      v91 = v70;
      v92 = v71;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[7] = 0;
      v91 = v72;
      v92 = v73;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[6] = 0;
      v91 = v74;
      v92 = v75;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[5] = 0;
      v91 = v76;
      v92 = v77;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[4] = 0;
      v91 = v78;
      v92 = v79;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[3] = 0;
      v91 = v80;
      v92 = v81;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[2] = 0;
      v91 = v82;
      v92 = v83;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[1] = 0;
      v91 = v85;
      v92 = v86;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      _os_log_impl(&dword_225EEB000, v89, v90, "%@ %s:%ld queue task complete", v40, 0x20u);
      v38[0] = 1;
      sub_225EF7AF4(v41);
      sub_225EF7AF4(v42);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v89);
  return (*(v50 + 8))(v49, v52);
}

uint64_t sub_225F86CC8(uint64_t a1, uint64_t a2)
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

uint64_t sub_225F86D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, _BYTE *a5@<X8>)
{
  v108 = a4;
  v107 = a3;
  v110 = a2;
  v109 = a1;
  v106 = a5;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v111 = sub_226098C58();
  v112 = *(v111 - 8);
  v113 = v112;
  v114 = *(v112 + 64);
  MEMORY[0x28223BE20](v109, v110, v107, v108);
  v116 = (v114 + 15) & 0xFFFFFFFFFFFFFFF0;
  v115 = &v41 - v116;
  MEMORY[0x28223BE20](v5, v6, v7, v8);
  v117 = &v41 - v116;
  v133 = v9;
  v131 = v10;
  v132 = v11;
  v130 = v12;
  v118 = *v9;
  v13 = v118;
  v129 = v118;
  v104 = v118 == 0;
  v103 = v104;
  sub_225EFE834(&v129);
  if (v103)
  {
    v102 = *(v109 + 8);
    v14 = v102;
    v123 = v102;
    v101 = v102 == 0;
    v100 = v101;
    sub_225EFE834(&v123);
    if (v100)
    {
      v15 = v108;
      v16 = *(v109 + 8);
      *(v109 + 8) = v108;

      result = v105;
      *v106 = 1;
      v99 = result;
    }

    else
    {
      v18 = v117;
      v19 = sub_225F7E9BC();
      (*(v113 + 16))(v18, v19, v111);
      v97 = sub_226098C48();
      v94 = v97;
      v96 = sub_22609A0A8();
      v95 = v96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
      v98 = sub_22609A4F8();
      if (os_log_type_enabled(v97, v96))
      {
        v92 = v105;
        v84 = sub_22609A188();
        v80 = v84;
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v82 = 0;
        v85 = sub_225EF5468(0);
        v83 = v85;
        v86 = sub_225EF5468(v82);
        v122 = v84;
        v121 = v85;
        v120 = v86;
        v87 = 0;
        v88 = &v122;
        sub_225EF54BC(0, &v122);
        sub_225EF54BC(v87, v88);
        v119 = v98;
        v89 = &v41;
        MEMORY[0x28223BE20](&v41, v20, v21, v22);
        v90 = &v41 - 6;
        *(&v41 - 4) = v23;
        *(&v41 - 3) = &v121;
        *(&v41 - 2) = &v120;
        v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        v24 = v92;
        sub_226099C28();
        v93 = v24;
        if (v24)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_225EEB000, v94, v95, "Preheat request dismissed because preheating in progress", v80, 2u);
          v78 = 0;
          sub_225EF7AF4(v83);
          sub_225EF7AF4(v86);
          sub_22609A168();

          v79 = v93;
        }
      }

      else
      {

        v79 = v105;
      }

      v77 = v79;

      (*(v113 + 8))(v117, v111);
      result = v77;
      *v106 = 0;
      v99 = result;
    }
  }

  else
  {
    v25 = v115;
    v26 = sub_225F7E9BC();
    (*(v113 + 16))(v25, v26, v111);
    sub_2260998E8();
    v64 = 32;
    v65 = 7;
    v27 = swift_allocObject();
    v28 = v107;
    v66 = v27;
    *(v27 + 16) = v110;
    *(v27 + 24) = v28;
    v76 = sub_226098C48();
    v59 = v76;
    v75 = sub_22609A0A8();
    v60 = v75;
    v61 = 17;
    v69 = swift_allocObject();
    v62 = v69;
    *(v69 + 16) = 34;
    v70 = swift_allocObject();
    v63 = v70;
    *(v70 + 16) = 8;
    v29 = swift_allocObject();
    v30 = v66;
    v67 = v29;
    *(v29 + 16) = sub_225EF7450;
    *(v29 + 24) = v30;
    v31 = swift_allocObject();
    v32 = v67;
    v73 = v31;
    v68 = v31;
    *(v31 + 16) = sub_225EF7B84;
    *(v31 + 24) = v32;
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v71 = sub_22609A4F8();
    v72 = v33;

    v34 = v69;
    v35 = v72;
    *v72 = sub_225EF7434;
    v35[1] = v34;

    v36 = v70;
    v37 = v72;
    v72[2] = sub_225EF7434;
    v37[3] = v36;

    v38 = v72;
    v39 = v73;
    v72[4] = sub_225EF7B90;
    v38[5] = v39;
    sub_225EF5418();

    if (os_log_type_enabled(v76, v75))
    {
      v56 = v105;
      v51 = sub_22609A188();
      v48 = v51;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v52 = sub_225EF5468(0);
      v50 = v52;
      v54 = 1;
      v53 = sub_225EF5468(1);
      v128 = v51;
      v127 = v52;
      v126 = v53;
      v55 = &v128;
      sub_225EF54BC(2, &v128);
      sub_225EF54BC(v54, v55);
      v40 = v56;
      v124 = sub_225EF7434;
      v125 = v62;
      sub_225EF73E8(&v124, v55, &v127, &v126);
      v57 = v40;
      v58 = v40;
      if (v40)
      {
        v46 = 0;

        __break(1u);
      }

      else
      {
        v124 = sub_225EF7434;
        v125 = v63;
        sub_225EF73E8(&v124, &v128, &v127, &v126);
        v44 = 0;
        v45 = 0;
        v124 = sub_225EF7B90;
        v125 = v68;
        sub_225EF73E8(&v124, &v128, &v127, &v126);
        v42 = 0;
        v43 = 0;
        _os_log_impl(&dword_225EEB000, v59, v60, "Preheat request for %{public}s dismissed because recognition in progress", v48, 0xCu);
        sub_225EF7AF4(v50);
        sub_225EF7AF4(v53);
        sub_22609A168();

        v47 = v42;
      }
    }

    else
    {

      v47 = v105;
    }

    v41 = v47;

    (*(v113 + 8))(v115, v111);
    result = v41;
    *v106 = 0;
  }

  return result;
}

uint64_t sub_225F879F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v218 = a5;
  v232 = a4;
  v231 = a3;
  v220 = a2;
  v219 = a1;
  ObjectType = swift_getObjectType();
  v215 = 0;
  v275 = 0;
  v274 = 0;
  v273 = 0;
  v272 = 0;
  v271 = 0;
  v270 = 0;
  v269 = 0;
  v268 = 0;
  v267 = 0;
  v254 = 0;
  v253 = 0;
  v193 = 0;
  v246 = 0;
  v245 = 0;
  v242 = 0;
  v241 = 0;
  v240 = 0;
  v239 = 0;
  v238 = 0;
  v194 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v6, v7, v8);
  v195 = &v110 - v194;
  v196 = sub_226099DA8();
  v197 = *(v196 - 8);
  v198 = v197;
  v200 = *(v197 + 64);
  v199 = v200;
  MEMORY[0x28223BE20](v196 - 8, v196, v9, v10);
  v202 = (v200 + 15) & 0xFFFFFFFFFFFFFFF0;
  v201 = &v110 - v202;
  MEMORY[0x28223BE20](&v110 - v202, v11, v12, v13);
  v203 = &v110 - v202;
  v275 = &v110 - v202;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786980, &qword_2260A08E0);
  v205 = (*(*(v204 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v215, v14, v15, v16);
  v206 = &v110 - v205;
  v207 = sub_226099808();
  v208 = *(v207 - 8);
  v209 = v208;
  v211 = *(v208 + 64);
  v210 = v211;
  MEMORY[0x28223BE20](v207 - 8, v207, v17, v18);
  v213 = (v211 + 15) & 0xFFFFFFFFFFFFFFF0;
  v212 = &v110 - v213;
  MEMORY[0x28223BE20](&v110 - v213, v19, v20, v21);
  v214 = &v110 - v213;
  v274 = &v110 - v213;
  v216 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786988, &qword_2260A08E8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v215, v22, v23, v24);
  v217 = &v110 - v216;
  v221 = sub_226098DD8();
  v222 = *(v221 - 8);
  v223 = v222;
  v225 = *(v222 + 64);
  v224 = v225;
  MEMORY[0x28223BE20](v219, v220, v231, v232);
  v227 = (v225 + 15) & 0xFFFFFFFFFFFFFFF0;
  v226 = &v110 - v227;
  MEMORY[0x28223BE20](v25, v26, v27, v28);
  v228 = &v110 - v227;
  v273 = &v110 - v227;
  v271 = v29;
  v272 = v30;
  v269 = v31;
  v270 = v32;
  v268 = v33;
  v267 = v5;
  v34 = sub_225F7F1AC();
  v229 = *v34;
  v230 = v34[1];
  sub_2260998E8();
  sub_2260998E8();
  v263 = v231;
  v264 = v232;
  if (v232)
  {
    v265 = v263;
    v266 = v264;
  }

  else
  {
    v265 = sub_226099AA8();
    v266 = v35;
    if (v264)
    {
      sub_225EFE6BC(&v263);
    }
  }

  v188 = v265;
  v189 = v266;
  v190 = 0;
  v36 = sub_226098D98();
  (*(*(v36 - 8) + 56))(v217, 1);
  sub_226098DA8();
  if (!v232)
  {
    goto LABEL_20;
  }

  sub_2260998E8();
  v181 = @"Assistant";
  v37 = @"Assistant";
  v182 = v181;
  v184 = sub_226099A08();
  v185 = v38;
  v183 = v38;
  sub_2260998E8();
  v262[0] = v231;
  v262[1] = v232;
  v186 = &v259;
  v187 = v261;
  v259 = v184;
  v260 = v185;
  sub_225F4C5E0(v262, v261);
  if (v260)
  {
    sub_225F4C5E0(v186, v234);
    if (v187[1])
    {
      v233 = *v187;
      v179 = MEMORY[0x22AA72BD0](v234[0], v234[1], v233, *(&v233 + 1));
      sub_225EFE6BC(&v233);
      sub_225EFE6BC(v234);
      sub_225EFE6BC(v186);
      v180 = v179;
      goto LABEL_15;
    }

    sub_225EFE6BC(v234);
    goto LABEL_17;
  }

  if (v187[1])
  {
LABEL_17:
    sub_225F4C1C0(&v259);
    v180 = 0;
    goto LABEL_15;
  }

  sub_225EFE6BC(v186);
  v180 = 1;
LABEL_15:
  v178 = v180;

  if (v178)
  {

LABEL_20:
    v176 = &v206[*(v204 + 48)];
    v39 = *MEMORY[0x277CDCE68];
    (*(v209 + 104))();
    v177 = @"SearchOrMessaging";
    v40 = @"SearchOrMessaging";
    v41 = sub_226099A08();
    v42 = v176;
    v43 = v177;
    *v176 = v41;
    v42[1] = v44;

    goto LABEL_32;
  }

  sub_2260998E8();
  v169 = @"Dictation";
  v45 = @"Dictation";
  v170 = v169;
  v172 = sub_226099A08();
  v173 = v46;
  v171 = v46;
  sub_2260998E8();
  v258[0] = v231;
  v258[1] = v232;
  v174 = &v255;
  v175 = v257;
  v255 = v172;
  v256 = v173;
  sub_225F4C5E0(v258, v257);
  if (v256)
  {
    sub_225F4C5E0(v174, v236);
    if (v175[1])
    {
      v235 = *v175;
      v167 = MEMORY[0x22AA72BD0](v236[0], v236[1], v235, *(&v235 + 1));
      sub_225EFE6BC(&v235);
      sub_225EFE6BC(v236);
      sub_225EFE6BC(v174);
      v168 = v167;
      goto LABEL_27;
    }

    sub_225EFE6BC(v236);
    goto LABEL_29;
  }

  if (v175[1])
  {
LABEL_29:
    sub_225F4C1C0(&v255);
    v168 = 0;
    goto LABEL_27;
  }

  sub_225EFE6BC(v174);
  v168 = 1;
LABEL_27:
  v166 = v168;

  if (v166)
  {

    v164 = &v206[*(v204 + 48)];
    v47 = *MEMORY[0x277CDCE28];
    (*(v209 + 104))();
    v165 = @"Dictation";
    v48 = @"Dictation";
    v49 = sub_226099A08();
    v50 = v164;
    v51 = v165;
    *v164 = v49;
    v50[1] = v52;
  }

  else
  {

    v163 = &v206[*(v204 + 48)];
    v53 = *MEMORY[0x277CDCE70];
    (*(v209 + 104))();
    v54 = sub_226099AA8();
    v55 = v163;
    *v163 = v54;
    v55[1] = v56;
  }

LABEL_32:
  v57 = v193;
  v58 = &v206[*(v204 + 48)];
  v159 = *v58;
  v155 = v159;
  v160 = *(v58 + 1);
  v156 = v160;
  v157 = *(v209 + 32);
  v158 = (v209 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v157(v214);
  v253 = v159;
  v254 = v160;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0);
  sub_225F25E38(sub_225F89FD8, 0, v161, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v59, &v249);
  v162 = v57;
  if (v57)
  {
    __break(1u);
LABEL_45:
    result = 0;
    __break(1u);
    return result;
  }

  v247 = v249;
  v248 = v250;
  if (v250)
  {
    v251 = v247;
    v252 = v248;
  }

  else
  {
    v251 = sub_226099AA8();
    v252 = v60;
    if (v248)
    {
      sub_225EFE6BC(&v247);
    }
  }

  v61 = v162;
  v151 = v251;
  v152 = v252;
  v245 = v251;
  v246 = v252;
  v154 = *sub_225F8295C();
  v153 = v154;

  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786938, &qword_2260A0898);
  sub_225F8798C(sub_225F8A0F4, 0, v154, v62, v62);
  if (v61)
  {
    goto LABEL_45;
  }

  v145 = v243;
  v146 = v244;
  v241 = v243;
  v242 = v244;
  sub_225F7FA28();
  v149 = [objc_opt_self() sharedInstance];
  sub_2260998E8();
  v147 = sub_2260999F8();

  v150 = [v149 lastUsedGeoLMRegionIdForLanguage_];
  v148 = v150;

  if (v150)
  {
    v144 = v148;
    v139 = v148;
    v140 = sub_226099A08();
    v141 = v63;

    v142 = v140;
    v143 = v141;
  }

  else
  {
    v142 = 0;
    v143 = 0;
  }

  v138 = v143;
  v119 = v142;
  v239 = v142;
  v240 = v143;
  v131 = *(v198 + 16);
  v130 = v198 + 16;
  v131(v195, v203, v196);
  v135 = *(v198 + 56);
  v134 = v198 + 56;
  v132 = 0;
  v133 = 1;
  v135(v195);
  v64 = v191;
  sub_2260998E8();
  (*(v209 + 16))(v212, v214, v207);
  v111 = *(v161 - 8);
  v112 = v111;
  v113 = *(v111 + 64);
  v126 = &v110;
  MEMORY[0x28223BE20](v218, &v110, v65, v66);
  v116 = &v110 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22601EA84(v68, v116);
  sub_2260998E8();
  sub_2260998E8();
  (*(v223 + 16))(v226, v228, v221);
  v131(v201, v203, v196);
  sub_2260998E8();
  sub_2260998E8();
  sub_2260998E8();
  v114 = (*(v209 + 80) + 56) & ~*(v209 + 80);
  v115 = (v114 + v210 + *(v112 + 80)) & ~*(v112 + 80);
  v117 = (v115 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
  v118 = v117 + 16;
  v120 = (v117 + 16 + *(v223 + 80) + 16) & ~*(v223 + 80);
  v121 = (v120 + v224 + *(v198 + 80)) & ~*(v198 + 80);
  v122 = (v121 + v199 + 7) & 0xFFFFFFFFFFFFFFF8;
  v123 = (v122 + 23) & 0xFFFFFFFFFFFFFFF8;
  v124 = (v123 + 23) & 0xFFFFFFFFFFFFFFF8;
  v125 = (v124 + 23) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  v70 = v219;
  v71 = v220;
  v72 = v114;
  v73 = v212;
  v74 = v157;
  v75 = v191;
  v76 = v207;
  v127 = v69;
  v136 = 0;
  v69[2] = 0;
  v69[3] = 0;
  v69[4] = v75;
  v69[5] = v70;
  v69[6] = v71;
  v74(v69 + v72, v73, v76);
  sub_22601EBAC(v116, v127 + v115);
  v77 = v146;
  v78 = v118;
  v79 = v119;
  v80 = v120;
  v81 = v226;
  v82 = v138;
  v83 = v223;
  v84 = v221;
  v85 = v127;
  v86 = v127 + v117;
  *v86 = v145;
  v86[8] = v77;
  v87 = (v85 + v78);
  *v87 = v79;
  v87[1] = v82;
  (*(v83 + 32))(v85 + v80, v81, v84);
  (*(v198 + 32))(v127 + v121, v201, v196);
  v88 = v123;
  v89 = v231;
  v90 = v232;
  v91 = v124;
  v92 = v151;
  v93 = v125;
  v94 = v127;
  v95 = ObjectType;
  v96 = v152;
  v97 = v156;
  v98 = (v127 + v122);
  *v98 = v155;
  v98[1] = v97;
  v99 = (v94 + v88);
  *v99 = v89;
  v99[1] = v90;
  v100 = (v94 + v91);
  *v100 = v92;
  v100[1] = v96;
  *(v94 + v93) = v95;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786990, &qword_2260A0900);
  v137 = sub_225F38F2C(v136, v136, v195, &unk_2260A08F8, v127, v101);
  v238 = v137;

  v128 = &v191[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_preheatingTask];
  v129 = &v237;
  swift_beginAccess();
  v102 = *v128;
  *v128 = v137;

  swift_endAccess();
  v131(v195, v203, v196);
  (v135)(v195, v132, v133, v196);
  v103 = v191;
  v104 = swift_allocObject();
  v105 = v191;
  v106 = ObjectType;
  v107 = v136;
  v108 = v195;
  v104[2] = v136;
  v104[3] = v107;
  v104[4] = v105;
  v104[5] = v106;
  sub_225F38F2C(v107, v107, v108, &unk_2260A0910, v104, MEMORY[0x277D84F78] + 8);

  (*(v198 + 8))(v203, v196);

  (*(v209 + 8))(v214, v207);
  return (*(v223 + 8))(v228, v221);
}

void sub_225F88E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = a5;
  v87 = a4;
  v86 = a3;
  v77 = a2;
  v76 = a1;
  v73 = 0;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v74 = 0;
  v120 = 0;
  v84 = sub_226098C58();
  v78 = v84;
  v79 = *(v84 - 8);
  v83 = v79;
  v80 = v79;
  v81 = *(v79 + 64);
  MEMORY[0x28223BE20](v76, v77, v86, v87);
  v5 = v46 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v5;
  v126 = v6;
  v127 = v7;
  v124 = v8;
  v125 = v9;
  v123 = v10;
  v122 = v11;
  v12 = sub_225F7E9BC();
  (*(v83 + 16))(v5, v12, v84);
  v13 = v85;
  v100 = 7;
  v92 = swift_allocObject();
  *(v92 + 16) = v85;
  sub_2260998E8();
  v99 = 32;
  v14 = swift_allocObject();
  v15 = v87;
  v101 = v14;
  *(v14 + 16) = v86;
  *(v14 + 24) = v15;
  v114 = sub_226098C48();
  v88 = v114;
  v113 = sub_22609A0A8();
  v89 = v113;
  v95 = 17;
  v104 = swift_allocObject();
  v90 = v104;
  *(v104 + 16) = 64;
  v105 = swift_allocObject();
  v91 = v105;
  v97 = 8;
  *(v105 + 16) = 8;
  v16 = swift_allocObject();
  v17 = v92;
  v93 = v16;
  *(v16 + 16) = sub_225F3E198;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v93;
  v106 = v18;
  v94 = v18;
  *(v18 + 16) = sub_225F3E1C8;
  *(v18 + 24) = v19;
  v107 = swift_allocObject();
  v96 = v107;
  *(v107 + 16) = 34;
  v108 = swift_allocObject();
  v98 = v108;
  *(v108 + 16) = v97;
  v20 = swift_allocObject();
  v21 = v101;
  v102 = v20;
  *(v20 + 16) = sub_22601F3DC;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v102;
  v111 = v22;
  v103 = v22;
  *(v22 + 16) = sub_225EF7B84;
  *(v22 + 24) = v23;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v109 = sub_22609A4F8();
  v110 = v24;

  v25 = v104;
  v26 = v110;
  *v110 = sub_225EF7434;
  v26[1] = v25;

  v27 = v105;
  v28 = v110;
  v110[2] = sub_225EF7434;
  v28[3] = v27;

  v29 = v106;
  v30 = v110;
  v110[4] = sub_225F3E358;
  v30[5] = v29;

  v31 = v107;
  v32 = v110;
  v110[6] = sub_225EF7434;
  v32[7] = v31;

  v33 = v108;
  v34 = v110;
  v110[8] = sub_225EF7434;
  v34[9] = v33;

  v35 = v110;
  v36 = v111;
  v110[10] = sub_225EF7B90;
  v35[11] = v36;
  sub_225EF5418();

  if (os_log_type_enabled(v114, v113))
  {
    v37 = v74;
    v66 = sub_22609A188();
    v62 = v66;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v64 = 1;
    v67 = sub_225EF5468(1);
    v65 = v67;
    v68 = sub_225EF5468(v64);
    v119 = v66;
    v118 = v67;
    v117 = v68;
    v69 = 2;
    v70 = &v119;
    sub_225EF54BC(2, &v119);
    sub_225EF54BC(v69, v70);
    v115 = sub_225EF7434;
    v116 = v90;
    sub_225EF73E8(&v115, v70, &v118, &v117);
    v71 = v37;
    v72 = v37;
    if (v37)
    {
      v60 = 0;

      __break(1u);
    }

    else
    {
      v115 = sub_225EF7434;
      v116 = v91;
      sub_225EF73E8(&v115, &v119, &v118, &v117);
      v58 = 0;
      v59 = 0;
      v115 = sub_225F3E358;
      v116 = v94;
      sub_225EF73E8(&v115, &v119, &v118, &v117);
      v56 = 0;
      v57 = 0;
      v115 = sub_225EF7434;
      v116 = v96;
      sub_225EF73E8(&v115, &v119, &v118, &v117);
      v54 = 0;
      v55 = 0;
      v115 = sub_225EF7434;
      v116 = v98;
      sub_225EF73E8(&v115, &v119, &v118, &v117);
      v52 = 0;
      v53 = 0;
      v115 = sub_225EF7B90;
      v116 = v103;
      sub_225EF73E8(&v115, &v119, &v118, &v117);
      v50 = 0;
      v51 = 0;
      _os_log_impl(&dword_225EEB000, v88, v89, "%@ Early preheat for %{public}s", v62, 0x16u);
      v49 = 1;
      sub_225EF7AF4(v65);
      sub_225EF7AF4(v68);
      sub_22609A168();

      v61 = v50;
    }
  }

  else
  {
    v38 = v74;

    v61 = v38;
  }

  v39 = v61;

  (*(v80 + 8))(v82, v78);
  v48 = *sub_225F827A0();
  v46[0] = v48;

  v40 = v85;
  v46[1] = v46;
  MEMORY[0x28223BE20](v46, v41, v42, v43);
  v47 = &v46[-4];
  v46[-2] = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786930, &qword_2260A0890);
  sub_225F8798C(sub_22601F3E8, v47, v48, v45, MEMORY[0x277D839B0]);
  if (v39)
  {

    __break(1u);
  }

  else
  {

    v120 = v121;
    if (v121 == 1)
    {
      sub_225F879F0(v76, v77, v86, v87, v75);
    }
  }
}

uint64_t sub_225F89AD8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v53 = a2;
  v52 = a1;
  v51 = a3;
  v65 = 0;
  v64 = 0;
  v54 = sub_226098C58();
  v55 = *(v54 - 8);
  v56 = v55;
  v3 = *(v55 + 64);
  MEMORY[0x28223BE20](v52, v53, v54, v4);
  v57 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v6;
  v64 = v7;
  v58 = *v6;
  v8 = v58;
  v63 = v58;
  v49 = v58 == 0;
  v48 = v49;
  sub_225EFE834(&v63);
  if (v48)
  {
    v47 = *(v52 + 8);
    v9 = v47;
    v59[0] = v47;
    v46 = v47 == 0;
    v44 = v46;
    sub_225EFE834(v59);
    v45 = v44;
  }

  else
  {
    v45 = 0;
  }

  if (v45)
  {
    v10 = v53;
    v11 = *(v52 + 8);
    *(v52 + 8) = v53;

    result = v50;
    *v51 = 1;
    v43 = result;
  }

  else
  {
    v13 = v57;
    v14 = sub_225F7E9BC();
    (*(v56 + 16))(v13, v14, v54);
    v41 = sub_226098C48();
    v38 = v41;
    v40 = sub_22609A0A8();
    v39 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v42 = sub_22609A4F8();
    if (os_log_type_enabled(v41, v40))
    {
      v36 = v50;
      v28 = sub_22609A188();
      v24 = v28;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v26 = 0;
      v29 = sub_225EF5468(0);
      v27 = v29;
      v30 = sub_225EF5468(v26);
      v62 = v28;
      v61 = v29;
      v60 = v30;
      v31 = 0;
      v32 = &v62;
      sub_225EF54BC(0, &v62);
      sub_225EF54BC(v31, v32);
      v59[1] = v42;
      v33 = &v20;
      MEMORY[0x28223BE20](&v20, v15, v16, v17);
      v34 = &v20 - 6;
      *(&v20 - 4) = v18;
      *(&v20 - 3) = &v61;
      *(&v20 - 2) = &v60;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      v19 = v36;
      sub_226099C28();
      v37 = v19;
      if (v19)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v38, v39, "Early preheat skipped because recognition or preheating in progress", v24, 2u);
        v22 = 0;
        sub_225EF7AF4(v27);
        sub_225EF7AF4(v30);
        sub_22609A168();

        v23 = v37;
      }
    }

    else
    {

      v23 = v50;
    }

    v21 = v23;

    (*(v56 + 8))(v57, v54);
    result = v21;
    *v51 = 0;
  }

  return result;
}

uint64_t sub_225F89FD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v8[2] = a1;
  v8[0] = sub_22609A4E8();
  v8[1] = v2;
  v3 = sub_226099AA8();
  MEMORY[0x22AA735F0](v3);

  sub_226098948();
  sub_22601FD5C();
  sub_22609A4B8();
  v4 = sub_226099AA8();
  MEMORY[0x22AA735F0](v4);

  sub_2260998E8();
  sub_225EFE6BC(v8);
  result = sub_226099A88();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_225F8A12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 480) = v35;
  *(v8 + 472) = v34;
  *(v8 + 464) = v33;
  *(v8 + 456) = v32;
  *(v8 + 448) = v31;
  *(v8 + 440) = v30;
  *(v8 + 432) = v29;
  *(v8 + 424) = v28;
  *(v8 + 416) = v27;
  *(v8 + 408) = v26;
  *(v8 + 400) = v25;
  *(v8 + 185) = v24;
  *(v8 + 392) = v23;
  *(v8 + 384) = a8;
  *(v8 + 376) = a7;
  *(v8 + 368) = a6;
  *(v8 + 360) = a5;
  *(v8 + 352) = a4;
  *(v8 + 344) = a1;
  *(v8 + 208) = v8;
  *(v8 + 216) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 224) = 0;
  *(v8 + 232) = 0;
  *(v8 + 176) = 0;
  *(v8 + 184) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 240) = 0;
  *(v8 + 248) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  *(v8 + 256) = 0;
  *(v8 + 272) = 0;
  *(v8 + 312) = 0;
  *(v8 + 736) = 0;
  *(v8 + 744) = 0;
  *(v8 + 112) = 0;
  *(v8 + 120) = 0;
  *(v8 + 752) = 0;
  *(v8 + 128) = 0;
  *(v8 + 136) = 0;
  *(v8 + 320) = 0;
  *(v8 + 328) = 0;
  *(v8 + 160) = 0;
  *(v8 + 168) = 0;
  v13 = sub_2260997E8();
  *(v8 + 488) = v13;
  v18 = *(v13 - 8);
  *(v8 + 496) = v18;
  v14 = *(v18 + 64) + 15;
  *(v8 + 504) = swift_task_alloc();
  v15 = sub_226098C58();
  *(v8 + 512) = v15;
  v19 = *(v15 - 8);
  *(v8 + 520) = v19;
  v20 = *(v19 + 64);
  *(v8 + 528) = swift_task_alloc();
  *(v8 + 536) = swift_task_alloc();
  *(v8 + 544) = swift_task_alloc();
  *(v8 + 216) = a4;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  *(v8 + 224) = a7;
  *(v8 + 232) = a8;
  *(v8 + 176) = v23;
  *(v8 + 184) = v24;
  *(v8 + 32) = v25;
  *(v8 + 40) = v26;
  *(v8 + 240) = v27;
  *(v8 + 248) = v28;
  *(v8 + 48) = v29;
  *(v8 + 56) = v30;
  *(v8 + 64) = v31;
  *(v8 + 72) = v32;
  *(v8 + 80) = v33;
  *(v8 + 88) = v34;
  v16 = *(v8 + 208);

  return MEMORY[0x2822009F8](sub_225F8A4E0, 0, 0);
}

uint64_t sub_225F8A4E0()
{
  v42 = v0;
  v1 = v0[68];
  v26 = v0[65];
  v27 = v0[64];
  v28 = v0[44];
  v0[26] = v0;
  v2 = sub_225F7E9BC();
  v3 = *(v26 + 16);
  v0[69] = v3;
  v0[70] = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1, v2, v27);
  MEMORY[0x277D82BE0](v28);
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  v35 = sub_226098C48();
  v36 = sub_22609A0A8();
  v31 = swift_allocObject();
  *(v31 + 16) = 64;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_225F3E198;
  *(v30 + 24) = v29;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_225F3E1C8;
  *(v33 + 24) = v30;
  v0[71] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v34 = v4;

  *v34 = sub_225EF7434;
  v34[1] = v31;

  v34[2] = sub_225EF7434;
  v34[3] = v32;

  v34[4] = sub_225F3E358;
  v34[5] = v33;
  sub_225EF5418();

  if (os_log_type_enabled(v35, v36))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v23 = sub_225EF5468(1);
    v24 = sub_225EF5468(0);
    v37 = buf;
    v38 = v23;
    v39 = v24;
    sub_225EF54BC(2, &v37);
    sub_225EF54BC(1, &v37);
    v40 = sub_225EF7434;
    v41 = v31;
    sub_225EF73E8(&v40, &v37, &v38, &v39);
    v40 = sub_225EF7434;
    v41 = v32;
    sub_225EF73E8(&v40, &v37, &v38, &v39);
    v40 = sub_225F3E358;
    v41 = v33;
    sub_225EF73E8(&v40, &v37, &v38, &v39);
    _os_log_impl(&dword_225EEB000, v35, v36, "%@ Starting preheat", buf, 0xCu);
    sub_225EF7AF4(v23);
    sub_225EF7AF4(v24);
    sub_22609A168();
  }

  else
  {
  }

  v19 = v25[68];
  v20 = v25[64];
  v18 = v25[65];
  MEMORY[0x277D82BD8](v35);
  v5 = *(v18 + 8);
  v25[72] = v5;
  v25[73] = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v19, v20);
  sub_226025608();
  v25[32] = sub_22609A4F8();
  v21 = AFAnalyticsEventCreateCurrent();
  if (!v21)
  {
    return sub_22609A3B8();
  }

  v25[33] = v21;
  v25[74] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D78, &qword_2260A0F80);
  sub_226099CE8();
  v6 = sub_226098AB8();
  v25[75] = v6;
  v16 = *(v6 - 8);
  v25[76] = v16;
  v7 = *(v16 + 64) + 15;
  v17 = swift_task_alloc();
  v25[77] = v17;
  v8 = swift_task_alloc();
  v25[78] = v8;
  *v8 = v25[26];
  v8[1] = sub_225F8AE8C;
  v9 = v25[63];
  v10 = v25[60];
  v11 = v25[48];
  v12 = v25[47];
  v13 = v25[46];
  v14 = v25[45];

  return sub_225F940CC(v17, v9, v14, v13, v12, v11);
}

uint64_t sub_225F8AE8C(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 624);
  v9[26] = *v2;
  v10 = v9 + 26;
  v9[79] = a1;
  v9[80] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = sub_225F8E190;
  }

  else
  {
    v5 = *v10;
    v6 = sub_225F8AFFC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_225F8AFFC()
{
  v1 = v0[79];
  v54 = v0[49];
  v0[26] = v0;
  MEMORY[0x277D82BD8](v1);
  sub_2260998E8();
  if (v54)
  {
    v51 = *(v53 + 392);
    sub_2260998E8();

    v52 = v51;
  }

  else
  {
    v52 = 0;
  }

  v2 = *(v53 + 368);
  *(v53 + 288) = v52;
  sub_2260998E8();
  if (*(v53 + 288))
  {
    v55 = *(v53 + 288);
LABEL_20:
    v39 = *(v53 + 392);
    v6 = *(v53 + 368);

    *(v53 + 648) = v55;
    *(v53 + 312) = v55;
    sub_2260998E8();
    if (v39)
    {
      v37 = *(v53 + 185);
      v7 = *(v53 + 392);

      v38 = v37 & 1;
    }

    else
    {
      v38 = 2;
    }

    if (v38 == 2)
    {
      v36 = 0;
    }

    else
    {
      v36 = v38;
    }

    v26 = *(v53 + 616);
    v27 = *(v53 + 480);
    v24 = *(v53 + 408);
    v23 = *(v53 + 400);
    v25 = *(v53 + 384);
    v22 = *(v53 + 376);
    *(v53 + 736) = v36 & 1;
    v8 = sub_225F95208();
    *(v53 + 744) = v8 & 1;
    v32 = sub_225F9539C(v26, v22, v36 & 1, v23, v24, v25, v55, v8 & 1);
    v33 = v9;
    *(v53 + 656) = v32;
    *(v53 + 664) = v9;
    *(v53 + 112) = v32;
    *(v53 + 120) = v9;
    v28 = [objc_opt_self() isDictationVoiceCommandsEnabled];
    *(v53 + 752) = v28 & 1;

    v35 = sub_225F958E8(v28);
    v34 = v10;
    *(v53 + 672) = v35;
    *(v53 + 680) = v10;

    *(v53 + 128) = v35;
    *(v53 + 136) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D8, &unk_2260A0960);
    v29 = sub_22609A4F8();
    v31 = v11;

    v30 = sub_226025354();
    *v31 = v32;
    v31[1] = v30;

    v31[2] = v33;
    v31[3] = v30;
    sub_225EF5418();

    *(v53 + 320) = v29;
    sub_22601FDE0(v35);
    if (v35)
    {
      *(v53 + 160) = v35;
      *(v53 + 168) = v34;
      sub_22609A4F8();
      v21 = v12;

      v20 = sub_22602566C();
      *v21 = v35;
      v21[1] = v20;

      v21[2] = v34;
      v21[3] = v20;
      sub_225EF5418();

      sub_226099CC8();
    }

    v18 = *(v53 + 440);
    sub_2260998E8();
    v19 = *(v53 + 320);
    *(v53 + 688) = v19;
    sub_2260998E8();

    v13 = swift_task_alloc();
    *(v53 + 696) = v13;
    *v13 = *(v53 + 208);
    v13[1] = sub_225F8BE74;
    v14 = *(v53 + 480);
    v15 = *(v53 + 432);
    v16 = *(v53 + 424);
    v17 = *(v53 + 416);

    return sub_225F959EC(v17, v16, v15, v18, v19, v32, v33, 0);
  }

  v47 = *(v53 + 368);
  v46 = *(v53 + 360);
  v48 = objc_opt_self();
  sub_2260998E8();
  v49 = sub_2260999F8();

  v50 = [v48 speechProfilePathsWithLanguage_];
  MEMORY[0x277D82BD8](v49);
  if (v50)
  {
    v44 = sub_226099C88();
    MEMORY[0x277D82BD8](v50);
    v45 = v44;
  }

  else
  {
    v45 = 0;
  }

  if (!v45)
  {
    return sub_22609A3B8();
  }

  v3 = *(v53 + 640);
  *(v53 + 296) = v45;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  v41 = sub_226098948();
  v4 = sub_225F156F8();
  result = sub_225F15970(sub_225F951C4, 0, v40, v41, MEMORY[0x277D84A98], v4, MEMORY[0x277D84AC0], v42);
  v43 = result;
  if (!v3)
  {
    sub_225EFE6E8((v53 + 296));
    *(v53 + 304) = v43;
    if (*(v53 + 304))
    {
      v55 = *(v53 + 304);
    }

    else
    {
      v55 = sub_22609A4F8();
      if (*(v53 + 304))
      {
        sub_225EFE6E8((v53 + 304));
      }
    }

    if (*(v53 + 288))
    {
      sub_225EFE6E8((v53 + 288));
    }

    goto LABEL_20;
  }

  return result;
}

uint64_t sub_225F8BE74(uint64_t a1)
{
  v14 = *v2;
  v4 = *(*v2 + 696);
  v14[26] = *v2;
  v15 = v14 + 26;
  v14[88] = a1;
  v14[89] = v1;

  if (v1)
  {
    v8 = *v15;

    return MEMORY[0x2822009F8](sub_225F900AC, 0, 0);
  }

  else
  {
    v11 = v14[86];
    v5 = v14[83];
    v10 = v14[82];
    v12 = v14[55];

    v14[41] = a1;
    v6 = *(MEMORY[0x277CDCA20] + 4);
    v7 = swift_task_alloc();
    v14[90] = v7;
    *v7 = *v15;
    v7[1] = sub_225F8C154;

    return MEMORY[0x28212BBC0]();
  }
}

uint64_t sub_225F8C154()
{
  v7 = *v1;
  v2 = *(*v1 + 720);
  *(v7 + 208) = *v1;
  v8 = (v7 + 208);
  *(v7 + 728) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_225F920CC;
  }

  else
  {
    v3 = *v8;
    v4 = sub_225F8C2BC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225F8C2BC()
{
  v88 = v0;
  v80 = v0[71];
  v43 = v0[70];
  v44 = v0[69];
  v1 = v0[67];
  v42 = v0[64];
  v53 = v0[59];
  v52 = v0[58];
  v49 = v0[57];
  v48 = v0[56];
  v51 = v0[51];
  v50 = v0[50];
  v47 = v0[46];
  v46 = v0[45];
  v45 = v0[44];
  v0[26] = v0;
  v2 = sub_225F7E9BC();
  v44(v1, v2, v42);
  MEMORY[0x277D82BE0](v45);
  v54 = swift_allocObject();
  *(v54 + 16) = v45;
  sub_2260998E8();
  v56 = swift_allocObject();
  *(v56 + 16) = v46;
  *(v56 + 24) = v47;
  sub_2260998E8();
  v58 = swift_allocObject();
  *(v58 + 16) = v48;
  *(v58 + 24) = v49;
  sub_2260998E8();
  v60 = swift_allocObject();
  *(v60 + 16) = v50;
  *(v60 + 24) = v51;
  sub_2260998E8();
  v62 = swift_allocObject();
  *(v62 + 16) = v52;
  *(v62 + 24) = v53;
  v81 = sub_226098C48();
  v82 = sub_22609A0A8();
  v64 = swift_allocObject();
  *(v64 + 16) = 64;
  v65 = swift_allocObject();
  *(v65 + 16) = 8;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_225F3E198;
  *(v55 + 24) = v54;
  v66 = swift_allocObject();
  *(v66 + 16) = sub_225F3E1C8;
  *(v66 + 24) = v55;
  v67 = swift_allocObject();
  *(v67 + 16) = 34;
  v68 = swift_allocObject();
  *(v68 + 16) = 8;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_225EF7450;
  *(v57 + 24) = v56;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_225EF7B84;
  *(v69 + 24) = v57;
  v70 = swift_allocObject();
  *(v70 + 16) = 34;
  v71 = swift_allocObject();
  *(v71 + 16) = 8;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_225F7CF1C;
  *(v59 + 24) = v58;
  v72 = swift_allocObject();
  *(v72 + 16) = sub_225EF7B84;
  *(v72 + 24) = v59;
  v73 = swift_allocObject();
  *(v73 + 16) = 33;
  v74 = swift_allocObject();
  *(v74 + 16) = 8;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_225F7CF1C;
  *(v61 + 24) = v60;
  v75 = swift_allocObject();
  *(v75 + 16) = sub_225EF7B84;
  *(v75 + 24) = v61;
  v76 = swift_allocObject();
  *(v76 + 16) = 34;
  v77 = swift_allocObject();
  *(v77 + 16) = 8;
  v63 = swift_allocObject();
  *(v63 + 16) = sub_225EF7450;
  *(v63 + 24) = v62;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_225EF7B84;
  *(v78 + 24) = v63;
  sub_22609A4F8();
  v79 = v3;

  *v79 = sub_225EF7434;
  v79[1] = v64;

  v79[2] = sub_225EF7434;
  v79[3] = v65;

  v79[4] = sub_225F3E358;
  v79[5] = v66;

  v79[6] = sub_225EF7434;
  v79[7] = v67;

  v79[8] = sub_225EF7434;
  v79[9] = v68;

  v79[10] = sub_225EF7B90;
  v79[11] = v69;

  v79[12] = sub_225EF7434;
  v79[13] = v70;

  v79[14] = sub_225EF7434;
  v79[15] = v71;

  v79[16] = sub_225EF7B90;
  v79[17] = v72;

  v79[18] = sub_225EF7434;
  v79[19] = v73;

  v79[20] = sub_225EF7434;
  v79[21] = v74;

  v79[22] = sub_225EF7B90;
  v79[23] = v75;

  v79[24] = sub_225EF7434;
  v79[25] = v76;

  v79[26] = sub_225EF7434;
  v79[27] = v77;

  v79[28] = sub_225EF7B90;
  v79[29] = v78;
  sub_225EF5418();

  if (os_log_type_enabled(v81, v82))
  {
    v4 = *(v41 + 728);
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v39 = sub_225EF5468(1);
    v40 = sub_225EF5468(4);
    v83 = buf;
    v84 = v39;
    v85 = v40;
    sub_225EF54BC(3, &v83);
    sub_225EF54BC(5, &v83);
    v86 = sub_225EF7434;
    v87 = v64;
    sub_225EF73E8(&v86, &v83, &v84, &v85);
    if (v4)
    {
    }

    v86 = sub_225EF7434;
    v87 = v65;
    sub_225EF73E8(&v86, &v83, &v84, &v85);
    v86 = sub_225F3E358;
    v87 = v66;
    sub_225EF73E8(&v86, &v83, &v84, &v85);
    v86 = sub_225EF7434;
    v87 = v67;
    sub_225EF73E8(&v86, &v83, &v84, &v85);
    v86 = sub_225EF7434;
    v87 = v68;
    sub_225EF73E8(&v86, &v83, &v84, &v85);
    v86 = sub_225EF7B90;
    v87 = v69;
    sub_225EF73E8(&v86, &v83, &v84, &v85);
    v86 = sub_225EF7434;
    v87 = v70;
    sub_225EF73E8(&v86, &v83, &v84, &v85);
    v86 = sub_225EF7434;
    v87 = v71;
    sub_225EF73E8(&v86, &v83, &v84, &v85);
    v86 = sub_225EF7B90;
    v87 = v72;
    sub_225EF73E8(&v86, &v83, &v84, &v85);
    v86 = sub_225EF7434;
    v87 = v73;
    sub_225EF73E8(&v86, &v83, &v84, &v85);
    v86 = sub_225EF7434;
    v87 = v74;
    sub_225EF73E8(&v86, &v83, &v84, &v85);
    v86 = sub_225EF7B90;
    v87 = v75;
    sub_225EF73E8(&v86, &v83, &v84, &v85);
    v86 = sub_225EF7434;
    v87 = v76;
    sub_225EF73E8(&v86, &v83, &v84, &v85);
    v86 = sub_225EF7434;
    v87 = v77;
    sub_225EF73E8(&v86, &v83, &v84, &v85);
    v86 = sub_225EF7B90;
    v87 = v78;
    sub_225EF73E8(&v86, &v83, &v84, &v85);
    _os_log_impl(&dword_225EEB000, v81, v82, "%@ Preheated for language %{public}s, source %{public}s, regionId %{private}s%{public}s", buf, 0x34u);
    sub_225EF7AF4(v39);
    sub_225EF7AF4(v40);
    sub_22609A168();
  }

  else
  {
  }

  v32 = *(v41 + 584);
  v33 = *(v41 + 576);
  v30 = *(v41 + 536);
  v31 = *(v41 + 512);
  MEMORY[0x277D82BD8](v81);
  v33(v30, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D80, &qword_2260A0F88);
  sub_22609A4F8();
  v35 = v6;
  *(v41 + 144) = sub_226099AA8();
  *(v41 + 152) = v7;
  v34 = MEMORY[0x277D837D0];
  sub_22609A468();
  v8 = sub_226099AA8();
  v35[8] = v34;
  v35[5] = v8;
  v35[6] = v9;
  sub_225EF5418();
  sub_225EFE6BC(v41 + 144);
  sub_2260998A8();
  v36 = sub_226099868();

  v37 = AFAnalyticsEventCreateCurrent();
  MEMORY[0x277D82BD8](v36);
  if (!v37)
  {
    return sub_22609A3B8();
  }

  v25 = *(v41 + 704);
  v14 = *(v41 + 680);
  v15 = *(v41 + 672);
  v17 = *(v41 + 664);
  v16 = *(v41 + 656);
  v18 = *(v41 + 648);
  v24 = *(v41 + 616);
  v23 = *(v41 + 600);
  v10 = *(v41 + 592);
  v20 = *(v41 + 504);
  v21 = *(v41 + 488);
  v22 = *(v41 + 608);
  v19 = *(v41 + 496);
  *(v41 + 336) = v37;
  sub_226099CE8();

  sub_226024BB4(v25, 0);
  *(v41 + 192) = v25;
  *(v41 + 200) = 0;

  sub_225EFE6E8((v41 + 320));
  sub_226025528(v15);

  (*(v19 + 8))(v20, v21);
  (*(v22 + 8))(v24, v23);

  v26 = *(v41 + 544);
  v27 = *(v41 + 536);
  v28 = *(v41 + 528);
  v29 = *(v41 + 504);
  v11 = *(v41 + 344);
  *v11 = v25;
  *(v11 + 8) = 0;
  sub_226025838((v41 + 256), (v11 + 16));
  sub_226025870(v41 + 192);
  sub_225EFE6E8((v41 + 256));

  v12 = *(*(v41 + 208) + 8);
  v13 = *(v41 + 208);

  return v12();
}

uint64_t sub_225F8E190()
{
  v85 = v0;
  v1 = *(v0 + 616);
  *(v0 + 208) = v0;

  v44 = *(v0 + 640);
  v77 = *(v0 + 568);
  v33 = *(v0 + 560);
  v34 = *(v0 + 552);
  v2 = *(v0 + 528);
  v32 = *(v0 + 512);
  v43 = *(v0 + 472);
  v42 = *(v0 + 464);
  v39 = *(v0 + 456);
  v38 = *(v0 + 448);
  v41 = *(v0 + 408);
  v40 = *(v0 + 400);
  v37 = *(v0 + 368);
  v36 = *(v0 + 360);
  v35 = *(v0 + 352);
  v3 = v44;
  *(v0 + 272) = v44;
  v4 = sub_225F7E9BC();
  v34(v2, v4, v32);
  MEMORY[0x277D82BE0](v35);
  v45 = swift_allocObject();
  *(v45 + 16) = v35;
  sub_2260998E8();
  v47 = swift_allocObject();
  *(v47 + 16) = v36;
  *(v47 + 24) = v37;
  sub_2260998E8();
  v49 = swift_allocObject();
  *(v49 + 16) = v38;
  *(v49 + 24) = v39;
  sub_2260998E8();
  v51 = swift_allocObject();
  *(v51 + 16) = v40;
  *(v51 + 24) = v41;
  sub_2260998E8();
  v53 = swift_allocObject();
  *(v53 + 16) = v42;
  *(v53 + 24) = v43;
  v5 = v44;
  v55 = swift_allocObject();
  *(v55 + 16) = v44;
  sub_225F3EAE8();

  v78 = sub_226098C48();
  v79 = sub_22609A098();
  v58 = swift_allocObject();
  *(v58 + 16) = 64;
  v59 = swift_allocObject();
  *(v59 + 16) = 8;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_225F3E198;
  *(v46 + 24) = v45;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_225F3E1C8;
  *(v60 + 24) = v46;
  v61 = swift_allocObject();
  *(v61 + 16) = 34;
  v62 = swift_allocObject();
  *(v62 + 16) = 8;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_225EF7450;
  *(v48 + 24) = v47;
  v63 = swift_allocObject();
  *(v63 + 16) = sub_225EF7B84;
  *(v63 + 24) = v48;
  v64 = swift_allocObject();
  *(v64 + 16) = 34;
  v65 = swift_allocObject();
  *(v65 + 16) = 8;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_225F7CF1C;
  *(v50 + 24) = v49;
  v66 = swift_allocObject();
  *(v66 + 16) = sub_225EF7B84;
  *(v66 + 24) = v50;
  v67 = swift_allocObject();
  *(v67 + 16) = 33;
  v68 = swift_allocObject();
  *(v68 + 16) = 8;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_225F7CF1C;
  *(v52 + 24) = v51;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_225EF7B84;
  *(v69 + 24) = v52;
  v70 = swift_allocObject();
  *(v70 + 16) = 34;
  v71 = swift_allocObject();
  *(v71 + 16) = 8;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_225EF7450;
  *(v54 + 24) = v53;
  v72 = swift_allocObject();
  *(v72 + 16) = sub_225EF7B84;
  *(v72 + 24) = v54;
  v73 = swift_allocObject();
  *(v73 + 16) = 64;
  v74 = swift_allocObject();
  *(v74 + 16) = 8;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_225F3EA68;
  *(v56 + 24) = v55;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_225F3EA70;
  *(v57 + 24) = v56;
  v75 = swift_allocObject();
  *(v75 + 16) = sub_225F3E1C8;
  *(v75 + 24) = v57;
  sub_22609A4F8();
  v76 = v6;

  *v76 = sub_225EF7434;
  v76[1] = v58;

  v76[2] = sub_225EF7434;
  v76[3] = v59;

  v76[4] = sub_225F3E358;
  v76[5] = v60;

  v76[6] = sub_225EF7434;
  v76[7] = v61;

  v76[8] = sub_225EF7434;
  v76[9] = v62;

  v76[10] = sub_225EF7B90;
  v76[11] = v63;

  v76[12] = sub_225EF7434;
  v76[13] = v64;

  v76[14] = sub_225EF7434;
  v76[15] = v65;

  v76[16] = sub_225EF7B90;
  v76[17] = v66;

  v76[18] = sub_225EF7434;
  v76[19] = v67;

  v76[20] = sub_225EF7434;
  v76[21] = v68;

  v76[22] = sub_225EF7B90;
  v76[23] = v69;

  v76[24] = sub_225EF7434;
  v76[25] = v70;

  v76[26] = sub_225EF7434;
  v76[27] = v71;

  v76[28] = sub_225EF7B90;
  v76[29] = v72;

  v76[30] = sub_225EF7434;
  v76[31] = v73;

  v76[32] = sub_225EF7434;
  v76[33] = v74;

  v76[34] = sub_225F3E358;
  v76[35] = v75;
  sub_225EF5418();

  if (os_log_type_enabled(v78, v79))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v30 = sub_225EF5468(2);
    v31 = sub_225EF5468(4);
    v80 = buf;
    v81 = v30;
    v82 = v31;
    sub_225EF54BC(3, &v80);
    sub_225EF54BC(6, &v80);
    v83 = sub_225EF7434;
    v84 = v58;
    sub_225EF73E8(&v83, &v80, &v81, &v82);
    v83 = sub_225EF7434;
    v84 = v59;
    sub_225EF73E8(&v83, &v80, &v81, &v82);
    v83 = sub_225F3E358;
    v84 = v60;
    sub_225EF73E8(&v83, &v80, &v81, &v82);
    v83 = sub_225EF7434;
    v84 = v61;
    sub_225EF73E8(&v83, &v80, &v81, &v82);
    v83 = sub_225EF7434;
    v84 = v62;
    sub_225EF73E8(&v83, &v80, &v81, &v82);
    v83 = sub_225EF7B90;
    v84 = v63;
    sub_225EF73E8(&v83, &v80, &v81, &v82);
    v83 = sub_225EF7434;
    v84 = v64;
    sub_225EF73E8(&v83, &v80, &v81, &v82);
    v83 = sub_225EF7434;
    v84 = v65;
    sub_225EF73E8(&v83, &v80, &v81, &v82);
    v83 = sub_225EF7B90;
    v84 = v66;
    sub_225EF73E8(&v83, &v80, &v81, &v82);
    v83 = sub_225EF7434;
    v84 = v67;
    sub_225EF73E8(&v83, &v80, &v81, &v82);
    v83 = sub_225EF7434;
    v84 = v68;
    sub_225EF73E8(&v83, &v80, &v81, &v82);
    v83 = sub_225EF7B90;
    v84 = v69;
    sub_225EF73E8(&v83, &v80, &v81, &v82);
    v83 = sub_225EF7434;
    v84 = v70;
    sub_225EF73E8(&v83, &v80, &v81, &v82);
    v83 = sub_225EF7434;
    v84 = v71;
    sub_225EF73E8(&v83, &v80, &v81, &v82);
    v83 = sub_225EF7B90;
    v84 = v72;
    sub_225EF73E8(&v83, &v80, &v81, &v82);
    v83 = sub_225EF7434;
    v84 = v73;
    sub_225EF73E8(&v83, &v80, &v81, &v82);
    v83 = sub_225EF7434;
    v84 = v74;
    sub_225EF73E8(&v83, &v80, &v81, &v82);
    v83 = sub_225F3E358;
    v84 = v75;
    sub_225EF73E8(&v83, &v80, &v81, &v82);
    _os_log_impl(&dword_225EEB000, v78, v79, "%@ Could not preheat for language %{public}s, source %{public}s, regionId %{private}s%{public}s: %@", buf, 0x3Eu);
    sub_225EF7AF4(v30);
    sub_225EF7AF4(v31);
    sub_22609A168();
  }

  else
  {
  }

  v23 = *(v0 + 584);
  v24 = *(v0 + 576);
  v21 = *(v0 + 528);
  v22 = *(v0 + 512);
  MEMORY[0x277D82BD8](v78);
  v24(v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D80, &qword_2260A0F88);
  sub_22609A4F8();
  v26 = v7;
  *(v0 + 96) = sub_226099AA8();
  *(v0 + 104) = v8;
  v25 = MEMORY[0x277D837D0];
  sub_22609A468();
  v9 = sub_226099AA8();
  v26[8] = v25;
  v26[5] = v9;
  v26[6] = v10;
  sub_225EF5418();
  sub_225EFE6BC(v0 + 96);
  sub_2260998A8();
  v27 = sub_226099868();

  v28 = AFAnalyticsEventCreateCurrent();
  MEMORY[0x277D82BD8](v27);
  if (!v28)
  {
    return sub_22609A3B8();
  }

  v11 = *(v0 + 592);
  *(v0 + 280) = v28;
  sub_226099CE8();
  v12 = v44;
  sub_226024BB4(v44, 1);
  *(v0 + 192) = v44;
  *(v0 + 200) = 1;

  v17 = *(v0 + 544);
  v18 = *(v0 + 536);
  v19 = *(v0 + 528);
  v20 = *(v0 + 504);
  v13 = *(v0 + 344);
  *v13 = v44;
  *(v13 + 8) = 1;
  sub_226025838((v0 + 256), (v13 + 16));
  sub_226025870(v0 + 192);
  sub_225EFE6E8((v0 + 256));

  v14 = *(*(v0 + 208) + 8);
  v15 = *(v0 + 208);

  return v14();
}

uint64_t sub_225F900AC()
{
  v98 = v0;
  v31 = v0[86];
  v33 = v0[85];
  v34 = v0[84];
  v36 = v0[83];
  v35 = v0[82];
  v37 = v0[81];
  v43 = v0[77];
  v41 = v0[76];
  v42 = v0[75];
  v39 = v0[63];
  v38 = v0[62];
  v40 = v0[61];
  v32 = v0[55];
  v0[26] = v0;

  sub_225EFE6E8(v0 + 40);
  sub_226025528(v34);

  (*(v38 + 8))(v39, v40);
  (*(v41 + 8))(v43, v42);

  v57 = *(v44 + 712);
  v90 = *(v44 + 568);
  v46 = *(v44 + 560);
  v47 = *(v44 + 552);
  v1 = *(v44 + 528);
  v45 = *(v44 + 512);
  v56 = *(v44 + 472);
  v55 = *(v44 + 464);
  v52 = *(v44 + 456);
  v51 = *(v44 + 448);
  v54 = *(v44 + 408);
  v53 = *(v44 + 400);
  v50 = *(v44 + 368);
  v49 = *(v44 + 360);
  v48 = *(v44 + 352);
  v2 = v57;
  *(v44 + 272) = v57;
  v3 = sub_225F7E9BC();
  v47(v1, v3, v45);
  MEMORY[0x277D82BE0](v48);
  v58 = swift_allocObject();
  *(v58 + 16) = v48;
  sub_2260998E8();
  v60 = swift_allocObject();
  *(v60 + 16) = v49;
  *(v60 + 24) = v50;
  sub_2260998E8();
  v62 = swift_allocObject();
  *(v62 + 16) = v51;
  *(v62 + 24) = v52;
  sub_2260998E8();
  v64 = swift_allocObject();
  *(v64 + 16) = v53;
  *(v64 + 24) = v54;
  sub_2260998E8();
  v66 = swift_allocObject();
  *(v66 + 16) = v55;
  *(v66 + 24) = v56;
  v4 = v57;
  v68 = swift_allocObject();
  *(v68 + 16) = v57;
  sub_225F3EAE8();

  v91 = sub_226098C48();
  v92 = sub_22609A098();
  v71 = swift_allocObject();
  *(v71 + 16) = 64;
  v72 = swift_allocObject();
  *(v72 + 16) = 8;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_225F3E198;
  *(v59 + 24) = v58;
  v73 = swift_allocObject();
  *(v73 + 16) = sub_225F3E1C8;
  *(v73 + 24) = v59;
  v74 = swift_allocObject();
  *(v74 + 16) = 34;
  v75 = swift_allocObject();
  *(v75 + 16) = 8;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_225EF7450;
  *(v61 + 24) = v60;
  v76 = swift_allocObject();
  *(v76 + 16) = sub_225EF7B84;
  *(v76 + 24) = v61;
  v77 = swift_allocObject();
  *(v77 + 16) = 34;
  v78 = swift_allocObject();
  *(v78 + 16) = 8;
  v63 = swift_allocObject();
  *(v63 + 16) = sub_225F7CF1C;
  *(v63 + 24) = v62;
  v79 = swift_allocObject();
  *(v79 + 16) = sub_225EF7B84;
  *(v79 + 24) = v63;
  v80 = swift_allocObject();
  *(v80 + 16) = 33;
  v81 = swift_allocObject();
  *(v81 + 16) = 8;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_225F7CF1C;
  *(v65 + 24) = v64;
  v82 = swift_allocObject();
  *(v82 + 16) = sub_225EF7B84;
  *(v82 + 24) = v65;
  v83 = swift_allocObject();
  *(v83 + 16) = 34;
  v84 = swift_allocObject();
  *(v84 + 16) = 8;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_225EF7450;
  *(v67 + 24) = v66;
  v85 = swift_allocObject();
  *(v85 + 16) = sub_225EF7B84;
  *(v85 + 24) = v67;
  v86 = swift_allocObject();
  *(v86 + 16) = 64;
  v87 = swift_allocObject();
  *(v87 + 16) = 8;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_225F3EA68;
  *(v69 + 24) = v68;
  v70 = swift_allocObject();
  *(v70 + 16) = sub_225F3EA70;
  *(v70 + 24) = v69;
  v88 = swift_allocObject();
  *(v88 + 16) = sub_225F3E1C8;
  *(v88 + 24) = v70;
  sub_22609A4F8();
  v89 = v5;

  *v89 = sub_225EF7434;
  v89[1] = v71;

  v89[2] = sub_225EF7434;
  v89[3] = v72;

  v89[4] = sub_225F3E358;
  v89[5] = v73;

  v89[6] = sub_225EF7434;
  v89[7] = v74;

  v89[8] = sub_225EF7434;
  v89[9] = v75;

  v89[10] = sub_225EF7B90;
  v89[11] = v76;

  v89[12] = sub_225EF7434;
  v89[13] = v77;

  v89[14] = sub_225EF7434;
  v89[15] = v78;

  v89[16] = sub_225EF7B90;
  v89[17] = v79;

  v89[18] = sub_225EF7434;
  v89[19] = v80;

  v89[20] = sub_225EF7434;
  v89[21] = v81;

  v89[22] = sub_225EF7B90;
  v89[23] = v82;

  v89[24] = sub_225EF7434;
  v89[25] = v83;

  v89[26] = sub_225EF7434;
  v89[27] = v84;

  v89[28] = sub_225EF7B90;
  v89[29] = v85;

  v89[30] = sub_225EF7434;
  v89[31] = v86;

  v89[32] = sub_225EF7434;
  v89[33] = v87;

  v89[34] = sub_225F3E358;
  v89[35] = v88;
  sub_225EF5418();

  if (os_log_type_enabled(v91, v92))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v29 = sub_225EF5468(2);
    v30 = sub_225EF5468(4);
    v93 = buf;
    v94 = v29;
    v95 = v30;
    sub_225EF54BC(3, &v93);
    sub_225EF54BC(6, &v93);
    v96 = sub_225EF7434;
    v97 = v71;
    sub_225EF73E8(&v96, &v93, &v94, &v95);
    v96 = sub_225EF7434;
    v97 = v72;
    sub_225EF73E8(&v96, &v93, &v94, &v95);
    v96 = sub_225F3E358;
    v97 = v73;
    sub_225EF73E8(&v96, &v93, &v94, &v95);
    v96 = sub_225EF7434;
    v97 = v74;
    sub_225EF73E8(&v96, &v93, &v94, &v95);
    v96 = sub_225EF7434;
    v97 = v75;
    sub_225EF73E8(&v96, &v93, &v94, &v95);
    v96 = sub_225EF7B90;
    v97 = v76;
    sub_225EF73E8(&v96, &v93, &v94, &v95);
    v96 = sub_225EF7434;
    v97 = v77;
    sub_225EF73E8(&v96, &v93, &v94, &v95);
    v96 = sub_225EF7434;
    v97 = v78;
    sub_225EF73E8(&v96, &v93, &v94, &v95);
    v96 = sub_225EF7B90;
    v97 = v79;
    sub_225EF73E8(&v96, &v93, &v94, &v95);
    v96 = sub_225EF7434;
    v97 = v80;
    sub_225EF73E8(&v96, &v93, &v94, &v95);
    v96 = sub_225EF7434;
    v97 = v81;
    sub_225EF73E8(&v96, &v93, &v94, &v95);
    v96 = sub_225EF7B90;
    v97 = v82;
    sub_225EF73E8(&v96, &v93, &v94, &v95);
    v96 = sub_225EF7434;
    v97 = v83;
    sub_225EF73E8(&v96, &v93, &v94, &v95);
    v96 = sub_225EF7434;
    v97 = v84;
    sub_225EF73E8(&v96, &v93, &v94, &v95);
    v96 = sub_225EF7B90;
    v97 = v85;
    sub_225EF73E8(&v96, &v93, &v94, &v95);
    v96 = sub_225EF7434;
    v97 = v86;
    sub_225EF73E8(&v96, &v93, &v94, &v95);
    v96 = sub_225EF7434;
    v97 = v87;
    sub_225EF73E8(&v96, &v93, &v94, &v95);
    v96 = sub_225F3E358;
    v97 = v88;
    sub_225EF73E8(&v96, &v93, &v94, &v95);
    _os_log_impl(&dword_225EEB000, v91, v92, "%@ Could not preheat for language %{public}s, source %{public}s, regionId %{private}s%{public}s: %@", buf, 0x3Eu);
    sub_225EF7AF4(v29);
    sub_225EF7AF4(v30);
    sub_22609A168();
  }

  else
  {
  }

  v22 = *(v44 + 584);
  v23 = *(v44 + 576);
  v20 = *(v44 + 528);
  v21 = *(v44 + 512);
  MEMORY[0x277D82BD8](v91);
  v23(v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D80, &qword_2260A0F88);
  sub_22609A4F8();
  v25 = v6;
  *(v44 + 96) = sub_226099AA8();
  *(v44 + 104) = v7;
  v24 = MEMORY[0x277D837D0];
  sub_22609A468();
  v8 = sub_226099AA8();
  v25[8] = v24;
  v25[5] = v8;
  v25[6] = v9;
  sub_225EF5418();
  sub_225EFE6BC(v44 + 96);
  sub_2260998A8();
  v26 = sub_226099868();

  v27 = AFAnalyticsEventCreateCurrent();
  MEMORY[0x277D82BD8](v26);
  if (!v27)
  {
    return sub_22609A3B8();
  }

  v10 = *(v44 + 592);
  *(v44 + 280) = v27;
  sub_226099CE8();
  v11 = v57;
  sub_226024BB4(v57, 1);
  *(v44 + 192) = v57;
  *(v44 + 200) = 1;

  v16 = *(v44 + 544);
  v17 = *(v44 + 536);
  v18 = *(v44 + 528);
  v19 = *(v44 + 504);
  v12 = *(v44 + 344);
  *v12 = v57;
  *(v12 + 8) = 1;
  sub_226025838((v44 + 256), (v12 + 16));
  sub_226025870(v44 + 192);
  sub_225EFE6E8((v44 + 256));

  v13 = *(*(v44 + 208) + 8);
  v14 = *(v44 + 208);

  return v13();
}

uint64_t sub_225F920CC()
{
  v97 = v0;
  v1 = v0[88];
  v32 = v0[85];
  v33 = v0[84];
  v35 = v0[83];
  v34 = v0[82];
  v36 = v0[81];
  v42 = v0[77];
  v40 = v0[76];
  v41 = v0[75];
  v38 = v0[63];
  v37 = v0[62];
  v39 = v0[61];
  v0[26] = v0;

  sub_225EFE6E8(v0 + 40);
  sub_226025528(v33);

  (*(v37 + 8))(v38, v39);
  (*(v40 + 8))(v42, v41);

  v56 = *(v43 + 728);
  v89 = *(v43 + 568);
  v45 = *(v43 + 560);
  v46 = *(v43 + 552);
  v2 = *(v43 + 528);
  v44 = *(v43 + 512);
  v55 = *(v43 + 472);
  v54 = *(v43 + 464);
  v51 = *(v43 + 456);
  v50 = *(v43 + 448);
  v53 = *(v43 + 408);
  v52 = *(v43 + 400);
  v49 = *(v43 + 368);
  v48 = *(v43 + 360);
  v47 = *(v43 + 352);
  v3 = v56;
  *(v43 + 272) = v56;
  v4 = sub_225F7E9BC();
  v46(v2, v4, v44);
  MEMORY[0x277D82BE0](v47);
  v57 = swift_allocObject();
  *(v57 + 16) = v47;
  sub_2260998E8();
  v59 = swift_allocObject();
  *(v59 + 16) = v48;
  *(v59 + 24) = v49;
  sub_2260998E8();
  v61 = swift_allocObject();
  *(v61 + 16) = v50;
  *(v61 + 24) = v51;
  sub_2260998E8();
  v63 = swift_allocObject();
  *(v63 + 16) = v52;
  *(v63 + 24) = v53;
  sub_2260998E8();
  v65 = swift_allocObject();
  *(v65 + 16) = v54;
  *(v65 + 24) = v55;
  v5 = v56;
  v67 = swift_allocObject();
  *(v67 + 16) = v56;
  sub_225F3EAE8();

  v90 = sub_226098C48();
  v91 = sub_22609A098();
  v70 = swift_allocObject();
  *(v70 + 16) = 64;
  v71 = swift_allocObject();
  *(v71 + 16) = 8;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_225F3E198;
  *(v58 + 24) = v57;
  v72 = swift_allocObject();
  *(v72 + 16) = sub_225F3E1C8;
  *(v72 + 24) = v58;
  v73 = swift_allocObject();
  *(v73 + 16) = 34;
  v74 = swift_allocObject();
  *(v74 + 16) = 8;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_225EF7450;
  *(v60 + 24) = v59;
  v75 = swift_allocObject();
  *(v75 + 16) = sub_225EF7B84;
  *(v75 + 24) = v60;
  v76 = swift_allocObject();
  *(v76 + 16) = 34;
  v77 = swift_allocObject();
  *(v77 + 16) = 8;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_225F7CF1C;
  *(v62 + 24) = v61;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_225EF7B84;
  *(v78 + 24) = v62;
  v79 = swift_allocObject();
  *(v79 + 16) = 33;
  v80 = swift_allocObject();
  *(v80 + 16) = 8;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_225F7CF1C;
  *(v64 + 24) = v63;
  v81 = swift_allocObject();
  *(v81 + 16) = sub_225EF7B84;
  *(v81 + 24) = v64;
  v82 = swift_allocObject();
  *(v82 + 16) = 34;
  v83 = swift_allocObject();
  *(v83 + 16) = 8;
  v66 = swift_allocObject();
  *(v66 + 16) = sub_225EF7450;
  *(v66 + 24) = v65;
  v84 = swift_allocObject();
  *(v84 + 16) = sub_225EF7B84;
  *(v84 + 24) = v66;
  v85 = swift_allocObject();
  *(v85 + 16) = 64;
  v86 = swift_allocObject();
  *(v86 + 16) = 8;
  v68 = swift_allocObject();
  *(v68 + 16) = sub_225F3EA68;
  *(v68 + 24) = v67;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_225F3EA70;
  *(v69 + 24) = v68;
  v87 = swift_allocObject();
  *(v87 + 16) = sub_225F3E1C8;
  *(v87 + 24) = v69;
  sub_22609A4F8();
  v88 = v6;

  *v88 = sub_225EF7434;
  v88[1] = v70;

  v88[2] = sub_225EF7434;
  v88[3] = v71;

  v88[4] = sub_225F3E358;
  v88[5] = v72;

  v88[6] = sub_225EF7434;
  v88[7] = v73;

  v88[8] = sub_225EF7434;
  v88[9] = v74;

  v88[10] = sub_225EF7B90;
  v88[11] = v75;

  v88[12] = sub_225EF7434;
  v88[13] = v76;

  v88[14] = sub_225EF7434;
  v88[15] = v77;

  v88[16] = sub_225EF7B90;
  v88[17] = v78;

  v88[18] = sub_225EF7434;
  v88[19] = v79;

  v88[20] = sub_225EF7434;
  v88[21] = v80;

  v88[22] = sub_225EF7B90;
  v88[23] = v81;

  v88[24] = sub_225EF7434;
  v88[25] = v82;

  v88[26] = sub_225EF7434;
  v88[27] = v83;

  v88[28] = sub_225EF7B90;
  v88[29] = v84;

  v88[30] = sub_225EF7434;
  v88[31] = v85;

  v88[32] = sub_225EF7434;
  v88[33] = v86;

  v88[34] = sub_225F3E358;
  v88[35] = v87;
  sub_225EF5418();

  if (os_log_type_enabled(v90, v91))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v30 = sub_225EF5468(2);
    v31 = sub_225EF5468(4);
    v92 = buf;
    v93 = v30;
    v94 = v31;
    sub_225EF54BC(3, &v92);
    sub_225EF54BC(6, &v92);
    v95 = sub_225EF7434;
    v96 = v70;
    sub_225EF73E8(&v95, &v92, &v93, &v94);
    v95 = sub_225EF7434;
    v96 = v71;
    sub_225EF73E8(&v95, &v92, &v93, &v94);
    v95 = sub_225F3E358;
    v96 = v72;
    sub_225EF73E8(&v95, &v92, &v93, &v94);
    v95 = sub_225EF7434;
    v96 = v73;
    sub_225EF73E8(&v95, &v92, &v93, &v94);
    v95 = sub_225EF7434;
    v96 = v74;
    sub_225EF73E8(&v95, &v92, &v93, &v94);
    v95 = sub_225EF7B90;
    v96 = v75;
    sub_225EF73E8(&v95, &v92, &v93, &v94);
    v95 = sub_225EF7434;
    v96 = v76;
    sub_225EF73E8(&v95, &v92, &v93, &v94);
    v95 = sub_225EF7434;
    v96 = v77;
    sub_225EF73E8(&v95, &v92, &v93, &v94);
    v95 = sub_225EF7B90;
    v96 = v78;
    sub_225EF73E8(&v95, &v92, &v93, &v94);
    v95 = sub_225EF7434;
    v96 = v79;
    sub_225EF73E8(&v95, &v92, &v93, &v94);
    v95 = sub_225EF7434;
    v96 = v80;
    sub_225EF73E8(&v95, &v92, &v93, &v94);
    v95 = sub_225EF7B90;
    v96 = v81;
    sub_225EF73E8(&v95, &v92, &v93, &v94);
    v95 = sub_225EF7434;
    v96 = v82;
    sub_225EF73E8(&v95, &v92, &v93, &v94);
    v95 = sub_225EF7434;
    v96 = v83;
    sub_225EF73E8(&v95, &v92, &v93, &v94);
    v95 = sub_225EF7B90;
    v96 = v84;
    sub_225EF73E8(&v95, &v92, &v93, &v94);
    v95 = sub_225EF7434;
    v96 = v85;
    sub_225EF73E8(&v95, &v92, &v93, &v94);
    v95 = sub_225EF7434;
    v96 = v86;
    sub_225EF73E8(&v95, &v92, &v93, &v94);
    v95 = sub_225F3E358;
    v96 = v87;
    sub_225EF73E8(&v95, &v92, &v93, &v94);
    _os_log_impl(&dword_225EEB000, v90, v91, "%@ Could not preheat for language %{public}s, source %{public}s, regionId %{private}s%{public}s: %@", buf, 0x3Eu);
    sub_225EF7AF4(v30);
    sub_225EF7AF4(v31);
    sub_22609A168();
  }

  else
  {
  }

  v23 = *(v43 + 584);
  v24 = *(v43 + 576);
  v21 = *(v43 + 528);
  v22 = *(v43 + 512);
  MEMORY[0x277D82BD8](v90);
  v24(v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D80, &qword_2260A0F88);
  sub_22609A4F8();
  v26 = v7;
  *(v43 + 96) = sub_226099AA8();
  *(v43 + 104) = v8;
  v25 = MEMORY[0x277D837D0];
  sub_22609A468();
  v9 = sub_226099AA8();
  v26[8] = v25;
  v26[5] = v9;
  v26[6] = v10;
  sub_225EF5418();
  sub_225EFE6BC(v43 + 96);
  sub_2260998A8();
  v27 = sub_226099868();

  v28 = AFAnalyticsEventCreateCurrent();
  MEMORY[0x277D82BD8](v27);
  if (!v28)
  {
    return sub_22609A3B8();
  }

  v11 = *(v43 + 592);
  *(v43 + 280) = v28;
  sub_226099CE8();
  v12 = v56;
  sub_226024BB4(v56, 1);
  *(v43 + 192) = v56;
  *(v43 + 200) = 1;

  v17 = *(v43 + 544);
  v18 = *(v43 + 536);
  v19 = *(v43 + 528);
  v20 = *(v43 + 504);
  v13 = *(v43 + 344);
  *v13 = v56;
  *(v13 + 8) = 1;
  sub_226025838((v43 + 256), (v13 + 16));
  sub_226025870(v43 + 192);
  sub_225EFE6E8((v43 + 256));

  v14 = *(*(v43 + 208) + 8);
  v15 = *(v43 + 208);

  return v14();
}

uint64_t sub_225F940CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[14] = a6;
  v7[13] = a5;
  v7[12] = a4;
  v7[11] = a3;
  v7[10] = a2;
  v7[9] = a1;
  v7[4] = v7;
  v7[2] = 0;
  v7[3] = 0;
  v7[5] = 0;
  v7[6] = 0;
  v7[7] = 0;
  v7[8] = 0;
  v8 = sub_226099808();
  v7[15] = v8;
  v14 = *(v8 - 8);
  v7[16] = v14;
  v9 = *(v14 + 64) + 15;
  v7[17] = swift_task_alloc();
  v10 = sub_2260997E8();
  v7[18] = v10;
  v15 = *(v10 - 8);
  v7[19] = v15;
  v11 = *(v15 + 64) + 15;
  v7[20] = swift_task_alloc();
  v7[2] = a3;
  v7[3] = a4;
  v7[5] = a5;
  v7[6] = a6;
  v7[7] = v6;
  v12 = v7[4];

  return MEMORY[0x2822009F8](sub_225F942A4, 0, 0);
}

uint64_t sub_225F942A4()
{
  v18 = v0[20];
  v19 = v0[17];
  v14 = v0[16];
  v16 = v0[15];
  v17 = v0[14];
  v15 = v0[13];
  v9 = v0[12];
  v8 = v0[11];
  v0[4] = v0;
  v13 = sub_226098AB8();
  v0[21] = v13;
  v11 = *(v13 - 8);
  v0[22] = v11;
  v10 = *(v11 + 64);
  v12 = swift_task_alloc();
  v0[23] = v12;
  sub_2260998E8();
  sub_226098A88();
  v23 = swift_task_alloc();
  v1 = *(v11 + 16);
  v0[24] = v1;
  v0[25] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v1(v23, v12, v13);
  (*(v14 + 16))(v19, v15, v16);
  v2 = sub_225F7F1AC();
  v20 = *v2;
  v21 = v2[1];
  sub_2260998E8();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0) - 8) + 64) + 15;
  v22 = swift_task_alloc();
  sub_22601EA84(v17, v22);
  sub_2260997C8();

  v0[26] = sub_22601F410();
  v4 = *(MEMORY[0x277CDCDD0] + 4);
  v5 = swift_task_alloc();
  v24[27] = v5;
  *v5 = v24[4];
  v5[1] = sub_225F9454C;
  v6 = v24[20];

  return MEMORY[0x28212C2D8]();
}

uint64_t sub_225F9454C(uint64_t a1, uint64_t a2)
{
  v11 = *v3;
  v5 = *(*v3 + 216);
  v11[4] = *v3;
  v12 = v11 + 4;
  v11[28] = v2;
  v11[29] = a1;
  v11[30] = a2;

  if (v2)
  {
    v9 = *v12;

    return MEMORY[0x2822009F8](sub_225F94DD4, 0, 0);
  }

  else
  {
    v6 = *(MEMORY[0x277CDCDE0] + 4);
    v7 = swift_task_alloc();
    v11[31] = v7;
    *v7 = *v12;
    v7[1] = sub_225F94734;
    v8 = v11[20];

    return MEMORY[0x28212C2E8]();
  }
}

uint64_t sub_225F94734(uint64_t a1, uint64_t a2)
{
  v15 = *v3;
  v5 = *(*v3 + 248);
  v15[4] = *v3;
  v16 = v15 + 4;
  v15[32] = v2;
  v15[33] = a1;
  v15[34] = a2;

  if (v2)
  {
    v11 = *v16;

    return MEMORY[0x2822009F8](sub_225F94F04, 0, 0);
  }

  else
  {
    v6 = sub_226098948();
    v15[35] = v6;
    v13 = *(v6 - 8);
    v15[36] = v13;
    v7 = *(v13 + 64) + 15;
    v14 = swift_task_alloc();
    v15[37] = v14;
    v8 = *(MEMORY[0x277CDCDF8] + 4);
    v9 = swift_task_alloc();
    v15[38] = v9;
    *v9 = *v16;
    v9[1] = sub_225F9498C;
    v10 = v15[20];

    return MEMORY[0x28212C308](v14);
  }
}

uint64_t sub_225F9498C()
{
  v7 = *v1;
  v2 = *(*v1 + 304);
  *(v7 + 32) = *v1;
  v8 = (v7 + 32);
  *(v7 + 312) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_225F95054;
  }

  else
  {
    v3 = *v8;
    v4 = sub_225F94AF4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225F94AF4()
{
  v20 = v0[37];
  v18 = v0[36];
  v19 = v0[35];
  v24 = v0[34];
  v23 = v0[33];
  v22 = v0[30];
  v21 = v0[29];
  v17 = v0[26];
  v0[4] = v0;
  v25 = sub_226098918();
  v26 = v1;
  (*(v18 + 8))(v20, v19);

  v27 = sub_225FCF8F4(v21, v22, v23, v24, v25, v26);
  if (!v27)
  {
    return sub_22609A3B8();
  }

  v2 = v16[25];
  v3 = v16[24];
  v13 = v16[23];
  v12 = v16[21];
  v14 = v16[20];
  v10 = v16[18];
  v15 = v16[17];
  v9 = v16[10];
  v4 = v16[9];
  v11 = v16[22];
  v8 = v16[19];
  v16[8] = v27;
  v3(v4);
  (*(v8 + 16))(v9, v14, v10);
  (*(v8 + 8))(v14, v10);
  (*(v11 + 8))(v13, v12);

  v5 = *(v16[4] + 8);
  v6 = v16[4];

  return v5(v27);
}

uint64_t sub_225F94DD4()
{
  v11 = v0[23];
  v9 = v0[22];
  v10 = v0[21];
  v1 = v0[20];
  v2 = v0[19];
  v3 = v0[18];
  v0[4] = v0;
  (*(v2 + 8))(v1, v3);
  (*(v9 + 8))(v11, v10);

  v4 = v0[28];
  v5 = v0[20];
  v12 = v0[17];

  v6 = *(v0[4] + 8);
  v7 = v0[4];

  return v6();
}

uint64_t sub_225F94F04()
{
  v1 = v0[30];
  v12 = v0[23];
  v10 = v0[22];
  v11 = v0[21];
  v8 = v0[20];
  v7 = v0[19];
  v9 = v0[18];
  v0[4] = v0;

  (*(v7 + 8))(v8, v9);
  (*(v10 + 8))(v12, v11);

  v2 = v0[32];
  v3 = v0[20];
  v13 = v0[17];

  v4 = *(v0[4] + 8);
  v5 = v0[4];

  return v4();
}

uint64_t sub_225F95054()
{
  v1 = v0[37];
  v7 = v0[34];
  v8 = v0[30];
  v14 = v0[23];
  v12 = v0[22];
  v13 = v0[21];
  v10 = v0[20];
  v9 = v0[19];
  v11 = v0[18];
  v0[4] = v0;

  (*(v9 + 8))(v10, v11);
  (*(v12 + 8))(v14, v13);

  v2 = v0[39];
  v3 = v0[20];
  v15 = v0[17];

  v4 = *(v0[4] + 8);
  v5 = v0[4];

  return v4();
}

uint64_t sub_225F951C4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  return sub_2260988F8();
}

uint64_t sub_225F95208()
{
  v11 = 0;
  v10 = 0;
  v9[3] = &unk_283944910;
  v9[4] = sub_22601F474();
  v8 = sub_226098B18();
  __swift_destroy_boxed_opaque_existential_0(v9);
  if (v8)
  {
    v5 = [objc_opt_self() sharedPreferences];
    v6 = [v5 useAtypicalSpeechModel];
    MEMORY[0x277D82BD8](v5);
    v10 = v6;
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v4 = 1;
  }

  else
  {
    v2 = [objc_opt_self() standardUserDefaults];
    sub_226099AA8();
    v1 = sub_2260999F8();

    v3 = [v2 BOOLForKey_];
    MEMORY[0x277D82BD8](v1);
    MEMORY[0x277D82BD8](v2);
    v4 = v3;
  }

  return v4 & 1;
}

uint64_t sub_225F9539C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v59 = a8;
  v58 = a7;
  v57 = a6;
  v56 = a5;
  v55 = a4;
  v54 = a3;
  v53 = a2;
  v67 = a1;
  v47 = a8;
  v48 = a3;
  v60 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v49 = sub_226098E68();
  v50 = *(v49 - 8);
  v51 = v50;
  v9 = *(v50 + 64);
  MEMORY[0x28223BE20](0, v49, v10, v11);
  v52 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v52;
  v69 = sub_226098FC8();
  v61 = v69;
  v62 = *(v69 - 8);
  v63 = v62;
  v64 = *(v62 + 64);
  MEMORY[0x28223BE20](v60, v69, v54, v55);
  v66 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
  v65 = &v34 - v66;
  MEMORY[0x28223BE20](v13, v14, v15, v16);
  v68 = &v34 - v66;
  v80 = v67;
  v79 = v17;
  v78 = v18;
  v76 = v19;
  v77 = v20;
  v75 = v21;
  v74 = v22;
  v73 = v23;
  v72 = v8;
  v70 = sub_22609A4F8();
  sub_22601F4EC();
  v71 = sub_226099F08();
  if ([objc_opt_self() isDictationEmojiRecognitionEnabled])
  {
    (*(v63 + 104))(v65, *MEMORY[0x277CDCB28], v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869A0, &qword_2260A0920);
    sub_226099F48();
    (*(v63 + 8))(v68, v61);
  }

  v35 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0) - 8) + 64);
  v42 = &v34;
  MEMORY[0x28223BE20](&v34, v24, v25, v26);
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  v40 = &v34 - v36;
  v39 = 0;
  v27 = *(*(sub_226098948() - 8) + 56);
  v43 = 1;
  v27(v40, 1);
  sub_2260998E8();
  v41 = &v34;
  MEMORY[0x28223BE20](v57, &v34, v28, v29);
  v38 = &v34 - v36;
  sub_22601EA84(v30, &v34 - v36);
  sub_2260998E8();
  v37 = sub_225F49850();
  sub_225F49850();
  sub_226098DF8();
  v44 = v71;
  sub_2260998E8();
  v31 = sub_225F49850();
  v46 = sub_225FDA5C4(v67, v53, v44, v52, v31 & 1, v43);
  v45 = v32;

  (*(v51 + 8))(v52, v49);
  sub_225EFE6E8(&v71);
  return v46;
}

uint64_t sub_225F958E8(char a1)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  sub_2260994D8();

  v2 = sub_226099408();

  sub_226099408();

  return v2;
}

uint64_t sub_225F959EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = *MEMORY[0x277D85DE8];
  *(v9 + 648) = v42;
  *(v9 + 640) = v41;
  *(v9 + 632) = v40;
  *(v9 + 624) = a6;
  *(v9 + 616) = a5;
  *(v9 + 608) = a4;
  *(v9 + 600) = a3;
  *(v9 + 592) = a2;
  *(v9 + 584) = a1;
  *(v9 + 320) = v9;
  *(v9 + 328) = 0;
  *(v9 + 336) = 0;
  *(v9 + 80) = 0;
  *(v9 + 88) = 0;
  *(v9 + 344) = 0;
  *(v9 + 96) = 0;
  *(v9 + 104) = 0;
  *(v9 + 352) = 0;
  *(v9 + 360) = 0;
  *(v9 + 368) = 0;
  *(v9 + 376) = 0;
  *(v9 + 384) = 0;
  *(v9 + 1088) = 0;
  *(v9 + 1096) = 0;
  *(v9 + 1104) = 0;
  *(v9 + 1112) = 0;
  *(v9 + 408) = 0;
  *(v9 + 128) = 0;
  *(v9 + 136) = 0;
  *(v9 + 144) = 0;
  *(v9 + 152) = 0;
  *(v9 + 160) = 0;
  *(v9 + 168) = 0;
  *(v9 + 416) = 0;
  *(v9 + 448) = 0;
  *(v9 + 176) = 0;
  *(v9 + 184) = 0;
  *(v9 + 192) = 0;
  *(v9 + 200) = 0;
  *(v9 + 208) = 0;
  *(v9 + 216) = 0;
  *(v9 + 576) = 0;
  v23 = *(*(sub_2260991E8() - 8) + 64);
  *(v9 + 656) = swift_task_alloc();
  *(v9 + 664) = swift_task_alloc();
  *(v9 + 672) = swift_task_alloc();
  *(v9 + 680) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869A8, &unk_2260A0930) - 8) + 64) + 15;
  *(v9 + 688) = swift_task_alloc();
  v13 = sub_226098DD8();
  *(v9 + 696) = v13;
  v24 = *(v13 - 8);
  *(v9 + 704) = v24;
  v14 = *(v24 + 64) + 15;
  *(v9 + 712) = swift_task_alloc();
  v15 = sub_226099DA8();
  *(v9 + 720) = v15;
  v25 = *(v15 - 8);
  *(v9 + 728) = v25;
  v16 = *(v25 + 64) + 15;
  *(v9 + 736) = swift_task_alloc();
  v17 = sub_226099288();
  *(v9 + 744) = v17;
  v26 = *(v17 - 8);
  *(v9 + 752) = v26;
  v18 = *(v26 + 64) + 15;
  *(v9 + 760) = swift_task_alloc();
  v19 = sub_226098C58();
  *(v9 + 768) = v19;
  v27 = *(v19 - 8);
  *(v9 + 776) = v27;
  v28 = *(v27 + 64);
  *(v9 + 784) = swift_task_alloc();
  *(v9 + 792) = swift_task_alloc();
  v20 = sub_226099258();
  *(v9 + 800) = v20;
  v29 = *(v20 - 8);
  *(v9 + 808) = v29;
  v30 = *(v29 + 64);
  *(v9 + 816) = swift_task_alloc();
  *(v9 + 824) = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869B0, &unk_2260A0FF0) - 8) + 64);
  *(v9 + 832) = swift_task_alloc();
  *(v9 + 840) = swift_task_alloc();
  *(v9 + 328) = a1;
  *(v9 + 336) = a2;
  *(v9 + 80) = a3;
  *(v9 + 88) = a4;
  *(v9 + 344) = a5;
  *(v9 + 96) = a6;
  *(v9 + 104) = a7;
  *(v9 + 352) = a8;
  *(v9 + 360) = v40;
  *(v9 + 368) = v41;
  *(v9 + 376) = v42;
  *(v9 + 384) = v8;
  *MEMORY[0x277D85DE8];
  v21 = *(v9 + 320);

  return MEMORY[0x2822009F8](sub_225F95FB0, 0, 0);
}

uint64_t sub_225F95FB0()
{
  v87 = v0;
  v86 = *MEMORY[0x277D85DE8];
  v77 = *(v0 + 840);
  *(v0 + 320) = v0;
  v1 = sub_226099248();
  (*(*(v1 - 8) + 56))(v77, 1);
  *(v0 + 392) = 0;
  v80 = [objc_opt_self() cooldownDisabledForDevice] == 0;
  *(v0 + 1088) = v80;
  v2 = objc_opt_self();
  *(v0 + 400) = *(v0 + 392);
  v79 = [v2 isCommonUserWithReason_];
  v78 = *(v0 + 400);
  MEMORY[0x277D82BE0](v78);
  MEMORY[0x277D82BE0](v78);
  v3 = *(v0 + 392);
  *(v0 + 392) = v78;
  MEMORY[0x277D82BD8](v3);
  *(v0 + 1096) = v79 & 1;
  if (v80)
  {
    v75 = 0;
  }

  else
  {
    v75 = v79;
  }

  v73 = *(v76 + 608);
  *(v76 + 1104) = v75 & 1;
  v74 = [objc_opt_self() keepANEModelLoaded];
  sub_2260998E8();
  if (v74)
  {
    v72 = 1;
    goto LABEL_15;
  }

  v4 = *(v76 + 608);
  *(v76 + 112) = *(v76 + 600);
  *(v76 + 120) = v4;
  MEMORY[0x277D82BE0](@"Captioning");
  v71 = sub_226099A08();
  v70 = v5;
  sub_2260998E8();
  sub_225F4C5E0((v76 + 112), (v76 + 16));
  *(v76 + 32) = v71;
  *(v76 + 40) = v70;
  if (!*(v76 + 24))
  {
    if (!*(v76 + 40))
    {
      sub_225EFE6BC(v76 + 16);
      v69 = 1;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  sub_225F4C5E0((v76 + 16), (v76 + 272));
  if (!*(v76 + 40))
  {
    sub_225EFE6BC(v76 + 272);
LABEL_13:
    sub_225F4C1C0(v76 + 16);
    v69 = 0;
    goto LABEL_12;
  }

  *(v76 + 288) = *(v76 + 272);
  *(v76 + 304) = *(v76 + 32);
  v68 = MEMORY[0x22AA72BD0](*(v76 + 288), *(v76 + 296), *(v76 + 304), *(v76 + 312));
  sub_225EFE6BC(v76 + 304);
  sub_225EFE6BC(v76 + 288);
  sub_225EFE6BC(v76 + 16);
  v69 = v68;
LABEL_12:

  MEMORY[0x277D82BD8](@"Captioning");
  v72 = v69;
LABEL_15:
  v6 = *(v76 + 608);

  *(v76 + 1112) = v72 & 1;
  if (v75)
  {
    if (v72)
    {
      v65 = *(v76 + 824);
      v66 = *(v76 + 816);
      v67 = *(v76 + 800);
      v64 = *(v76 + 808);
      v7 = *MEMORY[0x277CDCC28];
      (*(v64 + 104))();
      (*(v64 + 32))(v65, v66, v67);
    }

    else
    {
      v61 = *(v76 + 824);
      v62 = *(v76 + 816);
      v63 = *(v76 + 800);
      v60 = *(v76 + 808);
      v8 = *MEMORY[0x277CDCC18];
      (*(v60 + 104))();
      (*(v60 + 32))(v61, v62, v63);
    }
  }

  else if (v72)
  {
    v57 = *(v76 + 824);
    v58 = *(v76 + 816);
    v59 = *(v76 + 800);
    v56 = *(v76 + 808);
    v9 = *MEMORY[0x277CDCC20];
    (*(v56 + 104))();
    (*(v56 + 32))(v57, v58, v59);
  }

  else
  {
    v53 = *(v76 + 824);
    v54 = *(v76 + 816);
    v55 = *(v76 + 800);
    v52 = *(v76 + 808);
    v10 = *MEMORY[0x277CDCC30];
    (*(v52 + 104))();
    (*(v52 + 32))(v53, v54, v55);
  }

  if (v78)
  {
    v11 = *(v76 + 792);
    v43 = *(v76 + 768);
    v42 = *(v76 + 776);
    *(v76 + 576) = v78;
    v12 = sub_225F7E9BC();
    (*(v42 + 16))(v11, v12, v43);
    MEMORY[0x277D82BE0](v78);
    v44 = swift_allocObject();
    *(v44 + 16) = v78;
    oslog = sub_226098C48();
    v51 = sub_22609A078();
    v46 = swift_allocObject();
    *(v46 + 16) = 64;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_225F3E198;
    *(v45 + 24) = v44;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_225F3E1C8;
    *(v48 + 24) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v49 = v13;

    *v49 = sub_225EF7434;
    v49[1] = v46;

    v49[2] = sub_225EF7434;
    v49[3] = v47;

    v49[4] = sub_225F3E358;
    v49[5] = v48;
    sub_225EF5418();

    if (os_log_type_enabled(oslog, v51))
    {
      buf = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v40 = sub_225EF5468(1);
      v41 = sub_225EF5468(0);
      v81 = buf;
      v84 = v40;
      v85 = v41;
      sub_225EF54BC(2, &v81);
      sub_225EF54BC(1, &v81);
      v82 = sub_225EF7434;
      v83 = v46;
      sub_225EF73E8(&v82, &v81, &v84, &v85);
      v82 = sub_225EF7434;
      v83 = v47;
      sub_225EF73E8(&v82, &v81, &v84, &v85);
      v82 = sub_225F3E358;
      v83 = v48;
      sub_225EF73E8(&v82, &v81, &v84, &v85);
      _os_log_impl(&dword_225EEB000, oslog, v51, "Overriding and allowing cooldown for reason: %@", buf, 0xCu);
      sub_225EF7AF4(v40);
      sub_225EF7AF4(v41);
      sub_22609A168();
    }

    else
    {
    }

    v37 = *(v76 + 792);
    v38 = *(v76 + 768);
    v36 = *(v76 + 776);
    MEMORY[0x277D82BD8](oslog);
    (*(v36 + 8))(v37, v38);
    MEMORY[0x277D82BD8](v78);
  }

  *(v76 + 848) = 0;
  v22 = *(v76 + 840);
  v24 = *(v76 + 832);
  v20 = *(v76 + 824);
  v23 = *(v76 + 816);
  v21 = *(v76 + 800);
  v30 = *(v76 + 760);
  v31 = *(v76 + 744);
  v25 = *(v76 + 736);
  v14 = *(v76 + 720);
  v32 = *(v76 + 712);
  v27 = *(v76 + 696);
  v33 = *(v76 + 688);
  v15 = *(v76 + 592);
  v28 = *(v76 + 584);
  v19 = *(v76 + 808);
  v29 = *(v76 + 752);
  v26 = *(v76 + 704);
  (*(*(v76 + 728) + 16))();
  (*(v19 + 16))(v23, v20, v21);
  sub_22601F56C(v22, v24);
  sub_226099278();
  sub_226098D78();
  (*(v26 + 16))(v32, v28, v27);
  *(v76 + 856) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869B8, &qword_2260A0940);
  sub_22609A4F8();
  (*(v29 + 16))(v33, v30, v31);
  (*(v29 + 56))(v33);
  v34 = sub_226098D58();
  *(v76 + 864) = v34;
  *(v76 + 408) = v34;
  v16 = *(MEMORY[0x277CDCA60] + 4);
  v35 = swift_task_alloc();
  *(v76 + 872) = v35;
  *v35 = *(v76 + 320);
  v35[1] = sub_225F974C8;
  v17 = *MEMORY[0x277D85DE8] - v86;

  return MEMORY[0x28212BC38]();
}

uint64_t sub_225F974C8(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *v1;
  v3 = *(*v1 + 872);
  *(v7 + 320) = *v1;
  *(v7 + 880) = a1;

  v4 = __OFSUB__(*MEMORY[0x277D85DE8], v8);
  v5 = *(v7 + 320);

  return MEMORY[0x2822009F8](sub_225F97620, 0, 0);
}

uint64_t sub_225F97620()
{
  v39 = *MEMORY[0x277D85DE8];
  v37 = v0[110];
  v38 = v0[80];
  v36 = v0[79];
  v0[40] = v0;
  sub_2260998E8();
  sub_2260991F8();

  MEMORY[0x277D82BE0](v38);
  if (v38)
  {
    v33 = v35[80];
    v34 = [v33 prefixText];
    if (v34)
    {
      v29 = sub_226099A08();
      v30 = v1;
      MEMORY[0x277D82BD8](v34);
      v31 = v29;
      v32 = v30;
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    MEMORY[0x277D82BD8](v33);
    v27 = v31;
    v28 = v32;
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  v35[112] = v28;
  v35[111] = v27;
  v26 = v35[80];
  v35[16] = v27;
  v35[17] = v28;
  MEMORY[0x277D82BE0](v26);
  if (v26)
  {
    v24 = v35[80];
    v25 = [v24 postfixText];
    if (v25)
    {
      v20 = sub_226099A08();
      v21 = v2;
      MEMORY[0x277D82BD8](v25);
      v22 = v20;
      v23 = v21;
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    MEMORY[0x277D82BD8](v24);
    v18 = v22;
    v19 = v23;
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v35[114] = v19;
  v35[113] = v18;
  v17 = v35[80];
  v35[18] = v18;
  v35[19] = v19;
  MEMORY[0x277D82BE0](v17);
  if (v17)
  {
    v15 = v35[80];
    v16 = [v15 selectedText];
    if (v16)
    {
      v11 = sub_226099A08();
      v12 = v3;
      MEMORY[0x277D82BD8](v16);
      v13 = v11;
      v14 = v12;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    MEMORY[0x277D82BD8](v15);
    v9 = v13;
    v10 = v14;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v35[116] = v10;
  v35[115] = v9;
  v35[20] = v9;
  v35[21] = v10;
  v4 = *(MEMORY[0x277CDCA60] + 4);
  v8 = swift_task_alloc();
  v35[117] = v8;
  *v8 = v35[40];
  v8[1] = sub_225F97F04;
  v5 = *MEMORY[0x277D85DE8] - v39;
  v6 = v35[108];

  return MEMORY[0x28212BC38]();
}

uint64_t sub_225F97F04(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *v1;
  v3 = *(*v1 + 936);
  *(v7 + 320) = *v1;
  *(v7 + 944) = a1;

  v4 = __OFSUB__(*MEMORY[0x277D85DE8], v8);
  v5 = *(v7 + 320);

  return MEMORY[0x2822009F8](sub_225F9805C, 0, 0);
}

uint64_t sub_225F9805C()
{
  v30 = *MEMORY[0x277D85DE8];
  v26 = v0[118];
  v0[40] = v0;
  v0[52] = sub_226099188();

  if (*sub_225F7F4BC())
  {
    v11 = v25[82];
    sub_2260991A8();
    v25[53] = sub_22609A4F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7869C0, &qword_2260A0948);
    sub_226099948();
    sub_2260991B8();
    v25[54] = sub_22609A4F8();
    sub_226099948();
    sub_2260991D8();
    v25[55] = sub_22609A4F8();
    sub_226099948();
    v12 = v25[106];
  }

  else
  {
    v21 = v25[112];
    v20 = v25[111];
    v1 = v25[106];
    v2 = v25[85];
    sub_2260991A8();
    v25[28] = v20;
    v25[29] = v21;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869E0, &qword_2260A02D0);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
    result = sub_225F25E38(sub_225FDB998, 0, v22, MEMORY[0x277D84A98], v24, v23, (v25 + 63));
    if (v1)
    {
      v9 = __OFSUB__(*MEMORY[0x277D85DE8], v30);
      return result;
    }

    v25[64] = v25[63];
    if (v25[64])
    {
      v27 = v25[64];
    }

    else
    {
      v27 = sub_22609A4F8();
      if (v25[64])
      {
        sub_225EFE6E8(v25 + 64);
      }
    }

    v19 = v25[114];
    v18 = v25[113];
    v16 = v25[85];
    v17 = v25[84];
    v25[65] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7869C0, &qword_2260A0948);
    sub_226099948();
    sub_2260991B8();
    v25[30] = v18;
    v25[31] = v19;
    sub_225F25E38(sub_225FDB998, 0, v22, MEMORY[0x277D84A98], v24, v23, (v25 + 66));
    v25[67] = v25[66];
    if (v25[67])
    {
      v28 = v25[67];
    }

    else
    {
      v28 = sub_22609A4F8();
      if (v25[67])
      {
        sub_225EFE6E8(v25 + 67);
      }
    }

    v15 = v25[116];
    v14 = v25[115];
    v4 = v25[84];
    v13 = v25[83];
    v25[68] = v28;
    sub_226099948();
    sub_2260991D8();
    v25[32] = v14;
    v25[33] = v15;
    sub_225F25E38(sub_225FDB998, 0, v22, MEMORY[0x277D84A98], v24, v23, (v25 + 69));
    v25[70] = v25[69];
    if (v25[70])
    {
      v29 = v25[70];
    }

    else
    {
      v29 = sub_22609A4F8();
      if (v25[70])
      {
        sub_225EFE6E8(v25 + 70);
      }
    }

    v5 = v25[83];
    v25[71] = v29;
    sub_226099948();
    v12 = 0;
  }

  v25[119] = v12;
  v6 = *(MEMORY[0x277CDCA60] + 4);
  v10 = swift_task_alloc();
  v25[120] = v10;
  *v10 = v25[40];
  v10[1] = sub_225F98D0C;
  v7 = *MEMORY[0x277D85DE8] - v30;
  v8 = v25[108];

  return MEMORY[0x28212BC38]();
}

uint64_t sub_225F98D0C(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *v1;
  v3 = *(*v1 + 960);
  *(v7 + 320) = *v1;
  *(v7 + 968) = a1;

  v4 = __OFSUB__(*MEMORY[0x277D85DE8], v8);
  v5 = *(v7 + 320);

  return MEMORY[0x2822009F8](sub_225F98E64, 0, 0);
}

uint64_t sub_225F98E64()
{
  v7 = *MEMORY[0x277D85DE8];
  v0[40] = v0;
  v5 = v0[52];
  v0[122] = v5;
  sub_2260998E8();
  v1 = *(MEMORY[0x277CDCC00] + 4);
  v6 = swift_task_alloc();
  v0[123] = v6;
  *v6 = v0[40];
  v6[1] = sub_225F98F58;
  v2 = *MEMORY[0x277D85DE8] - v7;
  v3 = v0[121];

  return MEMORY[0x28212BEE8](v5);
}

uint64_t sub_225F98F58()
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *v0;
  v1 = *(*v0 + 984);
  v5 = *(*v0 + 976);
  v6 = *(*v0 + 968);
  *(v7 + 320) = *v0;

  v2 = __OFSUB__(*MEMORY[0x277D85DE8], v8);
  v3 = *(v7 + 320);

  return MEMORY[0x2822009F8](sub_225F990EC, 0, 0);
}

uint64_t sub_225F990EC()
{
  v45 = v0;
  v44 = *MEMORY[0x277D85DE8];
  v28 = v0[112];
  v27 = v0[111];
  v1 = v0[98];
  v25 = v0[97];
  v26 = v0[96];
  v0[40] = v0;
  v2 = sub_225F7E9BC();
  (*(v25 + 16))(v1, v2, v26);
  sub_2260998E8();
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v28;
  v35 = sub_226098C48();
  v36 = sub_22609A088();
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_22601F694;
  *(v30 + 24) = v29;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_225EF7B84;
  *(v33 + 24) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v34 = v3;

  *v34 = sub_225EF7434;
  v34[1] = v31;

  v34[2] = sub_225EF7434;
  v34[3] = v32;

  v34[4] = sub_225EF7B90;
  v34[5] = v33;
  sub_225EF5418();

  if (os_log_type_enabled(v35, v36))
  {
    v4 = v24[119];
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v22 = sub_225EF5468(0);
    v23 = sub_225EF5468(1);
    v39 = buf;
    v42 = v22;
    v43[0] = v23;
    sub_225EF54BC(2, &v39);
    sub_225EF54BC(1, &v39);
    v40 = sub_225EF7434;
    v41 = v31;
    sub_225EF73E8(&v40, &v39, &v42, v43);
    if (v4)
    {

      v6 = __OFSUB__(*MEMORY[0x277D85DE8], v44);
      return result;
    }

    v40 = sub_225EF7434;
    v41 = v32;
    sub_225EF73E8(&v40, &v39, &v42, v43);
    v40 = sub_225EF7B90;
    v41 = v33;
    sub_225EF73E8(&v40, &v39, &v42, v43);
    _os_log_impl(&dword_225EEB000, v35, v36, "Creating SpeechAnalyzer with PrefixText: %s", buf, 0xCu);
    sub_225EF7AF4(v22);
    sub_225EF7AF4(v23);
    sub_22609A168();
  }

  else
  {
  }

  v18 = v24[98];
  v19 = v24[96];
  v20 = v24[80];
  v17 = v24[97];
  MEMORY[0x277D82BD8](v35);
  (*(v17 + 8))(v18, v19);
  sub_22609A4F8();
  v24[56] = sub_226099F08();
  MEMORY[0x277D82BE0](v20);
  if (v20)
  {
    v15 = v24[80];
    v16 = [v15 jitGrammar];
    if (v16)
    {
      v13 = sub_226099C88();
      MEMORY[0x277D82BD8](v16);
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    MEMORY[0x277D82BD8](v15);
    v12 = v14;
  }

  else
  {
    v12 = 0;
  }

  v24[57] = v12;
  if (v24[57])
  {
    v37 = v24[57];
  }

  else
  {
    v37 = sub_22609A4F8();
    if (v24[57])
    {
      sub_225EFE6E8(v24 + 57);
    }
  }

  v11 = v24[81];
  v24[58] = v37;
  v24[124] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E58, &unk_2260A0950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  sub_225F3006C();
  sub_226099F88();
  sub_2260998E8();
  v24[59] = v11;
  if (v24[59])
  {
    v38 = v24[59];
  }

  else
  {
    v38 = sub_22609A4F8();
    if (v24[59])
    {
      sub_225EFE6E8(v24 + 59);
    }
  }

  v24[60] = v38;
  sub_226099F88();
  v7 = *(MEMORY[0x277CDCA60] + 4);
  v10 = swift_task_alloc();
  v24[125] = v10;
  *v10 = v24[40];
  v10[1] = sub_225F9A0C4;
  v8 = *MEMORY[0x277D85DE8] - v44;
  v9 = v24[108];

  return MEMORY[0x28212BC38]();
}

uint64_t sub_225F9A0C4(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *v1;
  v3 = *(*v1 + 1000);
  *(v7 + 320) = *v1;
  *(v7 + 1008) = a1;

  v4 = __OFSUB__(*MEMORY[0x277D85DE8], v8);
  v5 = *(v7 + 320);

  return MEMORY[0x2822009F8](sub_225F9A21C, 0, 0);
}

uint64_t sub_225F9A21C()
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = v0[126];
  v6 = v0[124];
  v10 = v0[107];
  v7 = v0[82];
  v11 = v0[77];
  v0[40] = v0;
  sub_2260991C8();
  v5 = v0[56];
  sub_2260998E8();
  v0[61] = v5;
  sub_22601F6A0();
  v0[62] = sub_226099D18();
  v8 = sub_226099178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7869C0, &qword_2260A0948);
  sub_226099948();
  v8();

  sub_2260998E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D8, &unk_2260A0960);
  v12 = sub_22609A378();
  v0[127] = v12;
  v1 = *(MEMORY[0x277CDC9F8] + 4);
  v13 = swift_task_alloc();
  v0[128] = v13;
  *v13 = v0[40];
  v13[1] = sub_225F9A450;
  v2 = *MEMORY[0x277D85DE8] - v14;
  v3 = v0[108];

  return MEMORY[0x28212BB88](v12);
}

uint64_t sub_225F9A450()
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = *v1;
  v10 = *v1 + 16;
  v11 = (v12 + 320);
  v2 = *(*v1 + 1024);
  *(v12 + 320) = *v1;
  *(v12 + 1032) = v0;

  if (v0)
  {
    v4 = __OFSUB__(*MEMORY[0x277D85DE8], v13);
    v5 = sub_225F9C63C;
    v7 = *v11;
  }

  else
  {
    v3 = *(v10 + 1000);
    v9 = *(v10 + 600);

    v4 = __OFSUB__(*MEMORY[0x277D85DE8], v13);
    v5 = sub_225F9A644;
    v6 = *v11;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_225F9A644()
{
  v48 = *MEMORY[0x277D85DE8];
  *(v0 + 320) = v0;
  if (*sub_225F7F4BC())
  {
    goto LABEL_14;
  }

  v46 = v47[112];
  sub_2260998E8();
  if (v46)
  {
    v44 = v47[112];
    v47[26] = v47[111];
    v47[27] = v44;
    v1 = *(MEMORY[0x277CDCAF8] + 4);
    v45 = swift_task_alloc();
    v47[130] = v45;
    *v45 = v47[40];
    v45[1] = sub_225F9AFDC;
    v2 = *MEMORY[0x277D85DE8] - v48;
    v3 = v47[78];
    v4 = v47[111];

    return MEMORY[0x28212BDA8](v4, v44);
  }

  v43 = v47[114];
  sub_2260998E8();
  if (v43)
  {
    v41 = v47[114];
    v47[24] = v47[113];
    v47[25] = v41;
    v5 = *(MEMORY[0x277CDCAE0] + 4);
    v42 = swift_task_alloc();
    v47[132] = v42;
    *v42 = v47[40];
    v42[1] = sub_225F9B960;
    v6 = __OFSUB__(*MEMORY[0x277D85DE8], v48);
    v7 = v47[78];
    v8 = v47[113];

    return MEMORY[0x28212BD20](v8, v41);
  }

  v40 = v47[116];
  sub_2260998E8();
  if (!v40)
  {
LABEL_14:
    v17 = v47[116];
    v18 = v47[114];
    v19 = v47[112];
    v24 = v47[105];
    v25 = v47[104];
    v26 = v47[103];
    v27 = v47[102];
    v23 = v47[100];
    v28 = v47[99];
    v29 = v47[98];
    v30 = v47[95];
    v21 = v47[93];
    v31 = v47[92];
    v32 = v47[89];
    v33 = v47[86];
    v34 = v47[85];
    v35 = v47[84];
    v36 = v47[83];
    v37 = v47[82];
    v22 = v47[101];
    v20 = v47[94];
    sub_225EFE6E8(v47 + 56);
    sub_225EFE6E8(v47 + 52);

    (*(v20 + 8))(v30, v21);
    sub_225EFE834(v47 + 49);
    (*(v22 + 8))(v26, v23);
    sub_22601F728(v24);

    v12 = *MEMORY[0x277D85DE8] - v48;
    v13 = *(v47[40] + 8);
    v14 = v47[108];
    v15 = v47[40];

    return v13(v14);
  }

  else
  {
    v38 = v47[116];
    v47[22] = v47[115];
    v47[23] = v38;
    v9 = *(MEMORY[0x277CDCAE8] + 4);
    v39 = swift_task_alloc();
    v47[134] = v39;
    *v39 = v47[40];
    v39[1] = sub_225F9C0DC;
    v6 = __OFSUB__(*MEMORY[0x277D85DE8], v48);
    v10 = v47[78];
    v11 = v47[115];

    return MEMORY[0x28212BD28](v11, v38);
  }
}

uint64_t sub_225F9AFDC()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = *v1;
  v8 = (v9 + 320);
  v2 = *(*v1 + 1040);
  *(v9 + 320) = *v1;
  *(v9 + 1048) = v0;

  if (v0)
  {
    v3 = __OFSUB__(*MEMORY[0x277D85DE8], v10);
    v4 = sub_225F9C9B0;
    v6 = *v8;
  }

  else
  {
    v3 = __OFSUB__(*MEMORY[0x277D85DE8], v10);
    v4 = sub_225F9B1AC;
    v5 = *v8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225F9B1AC()
{
  v42 = *MEMORY[0x277D85DE8];
  v1 = v0[112];
  v0[40] = v0;

  v41 = v0[114];
  sub_2260998E8();
  if (v41)
  {
    v39 = v0[114];
    v0[24] = v0[113];
    v0[25] = v39;
    v2 = *(MEMORY[0x277CDCAE0] + 4);
    v40 = swift_task_alloc();
    v0[132] = v40;
    *v40 = v0[40];
    v40[1] = sub_225F9B960;
    v3 = *MEMORY[0x277D85DE8] - v42;
    v4 = v0[78];
    v5 = v0[113];

    return MEMORY[0x28212BD20](v5, v39);
  }

  else
  {
    v38 = v0[116];
    sub_2260998E8();
    if (v38)
    {
      v36 = v0[116];
      v0[22] = v0[115];
      v0[23] = v36;
      v6 = *(MEMORY[0x277CDCAE8] + 4);
      v37 = swift_task_alloc();
      v0[134] = v37;
      *v37 = v0[40];
      v37[1] = sub_225F9C0DC;
      v7 = *MEMORY[0x277D85DE8] - v42;
      v8 = v0[78];
      v9 = v0[115];

      return MEMORY[0x28212BD28](v9, v36);
    }

    else
    {
      v15 = v0[116];
      v16 = v0[114];
      v17 = v0[112];
      v22 = v0[105];
      v23 = v0[104];
      v24 = v0[103];
      v25 = v0[102];
      v21 = v0[100];
      v26 = v0[99];
      v27 = v0[98];
      v28 = v0[95];
      v19 = v0[93];
      v29 = v0[92];
      v30 = v0[89];
      v31 = v0[86];
      v32 = v0[85];
      v33 = v0[84];
      v34 = v0[83];
      v35 = v0[82];
      v20 = v0[101];
      v18 = v0[94];
      sub_225EFE6E8(v0 + 56);
      sub_225EFE6E8(v0 + 52);

      (*(v18 + 8))(v28, v19);
      sub_225EFE834(v0 + 49);
      (*(v20 + 8))(v24, v21);
      sub_22601F728(v22);

      v10 = *MEMORY[0x277D85DE8] - v42;
      v11 = *(v0[40] + 8);
      v12 = v0[108];
      v13 = v0[40];

      return v11(v12);
    }
  }
}

uint64_t sub_225F9B960()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = *v1;
  v8 = (v9 + 320);
  v2 = *(*v1 + 1056);
  *(v9 + 320) = *v1;
  *(v9 + 1064) = v0;

  if (v0)
  {
    v3 = __OFSUB__(*MEMORY[0x277D85DE8], v10);
    v4 = sub_225F9CD18;
    v6 = *v8;
  }

  else
  {
    v3 = __OFSUB__(*MEMORY[0x277D85DE8], v10);
    v4 = sub_225F9BB30;
    v5 = *v8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225F9BB30()
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = v0[114];
  v0[40] = v0;

  v33 = v0[116];
  sub_2260998E8();
  if (v33)
  {
    v2 = v0[116];
    v0[22] = v0[115];
    v0[23] = v2;
    v3 = *(MEMORY[0x277CDCAE8] + 4);
    v32 = swift_task_alloc();
    v0[134] = v32;
    *v32 = v0[40];
    v32[1] = sub_225F9C0DC;
    *MEMORY[0x277D85DE8];
    v4 = v0[78];
    v5 = v0[115];

    JUMPOUT(0x226098EB8);
  }

  v11 = v0[116];
  v12 = v0[114];
  v13 = v0[112];
  v18 = v0[105];
  v19 = v0[104];
  v20 = v0[103];
  v21 = v0[102];
  v17 = v0[100];
  v22 = v0[99];
  v23 = v0[98];
  v24 = v0[95];
  v15 = v0[93];
  v25 = v0[92];
  v26 = v0[89];
  v27 = v0[86];
  v28 = v0[85];
  v29 = v0[84];
  v30 = v0[83];
  v31 = v0[82];
  v16 = v0[101];
  v14 = v0[94];
  sub_225EFE6E8(v0 + 56);
  sub_225EFE6E8(v0 + 52);

  (*(v14 + 8))(v24, v15);
  sub_225EFE834(v0 + 49);
  (*(v16 + 8))(v20, v17);
  sub_22601F728(v18);

  v6 = *MEMORY[0x277D85DE8] - v34;
  v7 = *(v0[40] + 8);
  v8 = v0[108];
  v9 = v0[40];

  return v7(v8);
}

uint64_t sub_225F9C0DC()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = *v1;
  v8 = (v9 + 320);
  v2 = *(*v1 + 1072);
  *(v9 + 320) = *v1;
  *(v9 + 1080) = v0;

  if (v0)
  {
    v3 = __OFSUB__(*MEMORY[0x277D85DE8], v10);
    v4 = sub_225F9D080;
    v6 = *v8;
  }

  else
  {
    v3 = __OFSUB__(*MEMORY[0x277D85DE8], v10);
    v4 = sub_225F9C2AC;
    v5 = *v8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225F9C2AC()
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = v0[116];
  v0[40] = v0;

  v7 = v0[116];
  v8 = v0[114];
  v9 = v0[112];
  v14 = v0[105];
  v15 = v0[104];
  v16 = v0[103];
  v17 = v0[102];
  v12 = v0[101];
  v13 = v0[100];
  v18 = v0[99];
  v19 = v0[98];
  v20 = v0[95];
  v10 = v0[94];
  v11 = v0[93];
  v21 = v0[92];
  v22 = v0[89];
  v23 = v0[86];
  v24 = v0[85];
  v25 = v0[84];
  v26 = v0[83];
  v27 = v0[82];
  sub_225EFE6E8(v0 + 56);
  sub_225EFE6E8(v0 + 52);

  (*(v10 + 8))(v20, v11);
  sub_225EFE834(v0 + 49);
  (*(v12 + 8))(v16, v13);
  sub_22601F728(v14);

  v2 = *MEMORY[0x277D85DE8] - v28;
  v3 = *(v0[40] + 8);
  v4 = v0[108];
  v5 = v0[40];

  return v3(v4);
}

uint64_t sub_225F9C63C()
{
  v33 = *MEMORY[0x277D85DE8];
  v1 = v0[127];
  v8 = v0[116];
  v9 = v0[114];
  v10 = v0[112];
  v11 = v0[108];
  v18 = v0[105];
  v17 = v0[103];
  v15 = v0[101];
  v16 = v0[100];
  v13 = v0[95];
  v12 = v0[94];
  v14 = v0[93];
  v7 = v0[77];
  v0[40] = v0;

  sub_225EFE6E8(v0 + 56);
  sub_225EFE6E8(v0 + 52);

  (*(v12 + 8))(v13, v14);
  sub_225EFE834(v0 + 49);
  (*(v15 + 8))(v17, v16);
  sub_22601F728(v18);
  v19 = v0[129];
  v2 = v0[105];
  v20 = v0[104];
  v21 = v0[103];
  v22 = v0[102];
  v23 = v0[99];
  v24 = v0[98];
  v25 = v0[95];
  v26 = v0[92];
  v27 = v0[89];
  v28 = v0[86];
  v29 = v0[85];
  v30 = v0[84];
  v31 = v0[83];
  v32 = v0[82];

  v3 = *MEMORY[0x277D85DE8] - v33;
  v4 = *(v0[40] + 8);
  v5 = v0[40];

  return v4();
}

uint64_t sub_225F9C9B0()
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = v0[116];
  v7 = v0[114];
  v8 = v0[112];
  v9 = v0[108];
  v16 = v0[105];
  v15 = v0[103];
  v13 = v0[101];
  v14 = v0[100];
  v11 = v0[95];
  v10 = v0[94];
  v12 = v0[93];
  v0[40] = v0;

  sub_225EFE6E8(v0 + 56);
  sub_225EFE6E8(v0 + 52);

  (*(v10 + 8))(v11, v12);
  sub_225EFE834(v0 + 49);
  (*(v13 + 8))(v15, v14);
  sub_22601F728(v16);
  v17 = v0[131];
  v1 = v0[105];
  v18 = v0[104];
  v19 = v0[103];
  v20 = v0[102];
  v21 = v0[99];
  v22 = v0[98];
  v23 = v0[95];
  v24 = v0[92];
  v25 = v0[89];
  v26 = v0[86];
  v27 = v0[85];
  v28 = v0[84];
  v29 = v0[83];
  v30 = v0[82];

  v2 = *MEMORY[0x277D85DE8] - v31;
  v3 = *(v0[40] + 8);
  v4 = v0[40];

  return v3();
}

uint64_t sub_225F9CD18()
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = v0[116];
  v7 = v0[114];
  v8 = v0[112];
  v9 = v0[108];
  v16 = v0[105];
  v15 = v0[103];
  v13 = v0[101];
  v14 = v0[100];
  v11 = v0[95];
  v10 = v0[94];
  v12 = v0[93];
  v0[40] = v0;

  sub_225EFE6E8(v0 + 56);
  sub_225EFE6E8(v0 + 52);

  (*(v10 + 8))(v11, v12);
  sub_225EFE834(v0 + 49);
  (*(v13 + 8))(v15, v14);
  sub_22601F728(v16);
  v17 = v0[133];
  v1 = v0[105];
  v18 = v0[104];
  v19 = v0[103];
  v20 = v0[102];
  v21 = v0[99];
  v22 = v0[98];
  v23 = v0[95];
  v24 = v0[92];
  v25 = v0[89];
  v26 = v0[86];
  v27 = v0[85];
  v28 = v0[84];
  v29 = v0[83];
  v30 = v0[82];

  v2 = *MEMORY[0x277D85DE8] - v31;
  v3 = *(v0[40] + 8);
  v4 = v0[40];

  return v3();
}

uint64_t sub_225F9D080()
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = v0[116];
  v7 = v0[114];
  v8 = v0[112];
  v9 = v0[108];
  v16 = v0[105];
  v15 = v0[103];
  v13 = v0[101];
  v14 = v0[100];
  v11 = v0[95];
  v10 = v0[94];
  v12 = v0[93];
  v0[40] = v0;

  sub_225EFE6E8(v0 + 56);
  sub_225EFE6E8(v0 + 52);

  (*(v10 + 8))(v11, v12);
  sub_225EFE834(v0 + 49);
  (*(v13 + 8))(v15, v14);
  sub_22601F728(v16);
  v17 = v0[135];
  v1 = v0[105];
  v18 = v0[104];
  v19 = v0[103];
  v20 = v0[102];
  v21 = v0[99];
  v22 = v0[98];
  v23 = v0[95];
  v24 = v0[92];
  v25 = v0[89];
  v26 = v0[86];
  v27 = v0[85];
  v28 = v0[84];
  v29 = v0[83];
  v30 = v0[82];

  v2 = *MEMORY[0x277D85DE8] - v31;
  v3 = *(v0[40] + 8);
  v4 = v0[40];

  return v3();
}

uint64_t sub_225F9D3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a5;
  v5[11] = a4;
  v5[9] = v5;
  v5[10] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v5[13] = v6;
  v16 = *(v6 - 8);
  v5[14] = v16;
  v7 = *(v16 + 64) + 15;
  v5[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v5[16] = v8;
  v17 = *(v8 - 8);
  v5[17] = v17;
  v9 = *(v17 + 64) + 15;
  v5[18] = swift_task_alloc();
  v10 = sub_226098C58();
  v5[19] = v10;
  v18 = *(v10 - 8);
  v5[20] = v18;
  v11 = *(v18 + 64) + 15;
  v5[21] = swift_task_alloc();
  v12 = sub_22609A358();
  v5[22] = v12;
  v19 = *(v12 - 8);
  v5[23] = v19;
  v13 = *(v19 + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[10] = a4;
  v14 = v5[9];

  return MEMORY[0x2822009F8](sub_225F9D638, 0, 0);
}

uint64_t sub_225F9D638()
{
  v7 = *(v0 + 192);
  v8 = *(v0 + 176);
  *(v0 + 72) = v0;
  v1 = sub_225F7F638();
  v2 = v1[1];
  *(v0 + 40) = *v1;
  *(v0 + 48) = v2;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v10 = sub_225F3E9A8();
  sub_225F7E764();
  v3 = swift_task_alloc();
  v9[25] = v3;
  *v3 = v9[9];
  v3[1] = sub_225F9D784;
  v4 = v9[24];
  v5 = v9[22];

  return sub_225F7E788(v0 + 40, v0 + 16, v4, v5, v10);
}

uint64_t sub_225F9D784()
{
  v7 = *v1;
  v2 = *(*v1 + 200);
  v7[9] = *v1;
  v8 = v7 + 9;
  v7[26] = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_225F9E294;
  }

  else
  {
    (*(v7[23] + 8))(v7[24], v7[22]);
    v3 = *v8;
    v4 = sub_225F9D91C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225F9D91C()
{
  v45 = v0;
  v0[9] = v0;
  v24 = v0[26];
  v1 = v0[21];
  v25 = v0[20];
  v26 = v0[19];
  v27 = v0[11];
  v2 = sub_225F7E9BC();
  (*(v25 + 16))(v1, v2, v26);
  MEMORY[0x277D82BE0](v27);
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  v38 = sub_226098C48();
  v39 = sub_22609A0A8();
  v31 = swift_allocObject();
  *(v31 + 16) = 64;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_225F3E198;
  *(v29 + 24) = v28;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_225F3E1C8;
  *(v33 + 24) = v29;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_225F9EC34;
  *(v30 + 24) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_225F2D374;
  *(v36 + 24) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v37 = v3;

  *v37 = sub_225EF7434;
  v37[1] = v31;

  v37[2] = sub_225EF7434;
  v37[3] = v32;

  v37[4] = sub_225F3E358;
  v37[5] = v33;

  v37[6] = sub_225EF7434;
  v37[7] = v34;

  v37[8] = sub_225EF7434;
  v37[9] = v35;

  v37[10] = sub_225EF71D0;
  v37[11] = v36;
  sub_225EF5418();

  if (os_log_type_enabled(v38, v39))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v21 = sub_225EF5468(1);
    v22 = sub_225EF5468(0);
    v40 = buf;
    v41 = v21;
    v42 = v22;
    sub_225EF54BC(2, &v40);
    sub_225EF54BC(2, &v40);
    v43 = sub_225EF7434;
    v44 = v31;
    sub_225EF73E8(&v43, &v40, &v41, &v42);
    if (v24)
    {
    }

    v43 = sub_225EF7434;
    v44 = v32;
    sub_225EF73E8(&v43, &v40, &v41, &v42);
    v43 = sub_225F3E358;
    v44 = v33;
    sub_225EF73E8(&v43, &v40, &v41, &v42);
    v43 = sub_225EF7434;
    v44 = v34;
    sub_225EF73E8(&v43, &v40, &v41, &v42);
    v43 = sub_225EF7434;
    v44 = v35;
    sub_225EF73E8(&v43, &v40, &v41, &v42);
    v43 = sub_225EF71D0;
    v44 = v36;
    sub_225EF73E8(&v43, &v40, &v41, &v42);
    _os_log_impl(&dword_225EEB000, v38, v39, "%@ cancelPreheatingTask:%ld queue task enqueued", buf, 0x16u);
    sub_225EF7AF4(v21);
    sub_225EF7AF4(v22);
    sub_22609A168();
  }

  else
  {
  }

  v16 = v23[24];
  v17 = v23[21];
  v9 = v23[19];
  v18 = v23[18];
  v15 = v23[16];
  v19 = v23[15];
  v13 = v23[13];
  v11 = v23[12];
  v10 = v23[11];
  v8 = v23[20];
  v14 = v23[17];
  v12 = v23[14];
  MEMORY[0x277D82BD8](v38);
  (*(v8 + 8))(v17, v9);
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v10);
  v5 = swift_allocObject();
  *(v5 + 16) = v10;
  *(v5 + 24) = v11;
  v23[7] = &unk_2260A0F78;
  v23[8] = v5;
  sub_226099DD8();
  (*(v12 + 8))(v19, v13);
  (*(v14 + 8))(v18, v15);

  v6 = *(v23[9] + 8);
  v7 = v23[9];

  return v6();
}

uint64_t sub_225F9E294()
{
  v48 = v0;
  v27 = v0[26];
  v1 = v0[24];
  v2 = v0[23];
  v3 = v0[22];
  v0[9] = v0;
  (*(v2 + 8))(v1, v3);

  v4 = v0[21];
  v28 = v0[20];
  v29 = v0[19];
  v30 = v0[11];
  v5 = sub_225F7E9BC();
  (*(v28 + 16))(v4, v5, v29);
  MEMORY[0x277D82BE0](v30);
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  v41 = sub_226098C48();
  v42 = sub_22609A0A8();
  v34 = swift_allocObject();
  *(v34 + 16) = 64;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_225F3E198;
  *(v32 + 24) = v31;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_225F3E1C8;
  *(v36 + 24) = v32;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_225F9EC34;
  *(v33 + 24) = 0;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_225F2D374;
  *(v39 + 24) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v40 = v6;

  *v40 = sub_225EF7434;
  v40[1] = v34;

  v40[2] = sub_225EF7434;
  v40[3] = v35;

  v40[4] = sub_225F3E358;
  v40[5] = v36;

  v40[6] = sub_225EF7434;
  v40[7] = v37;

  v40[8] = sub_225EF7434;
  v40[9] = v38;

  v40[10] = sub_225EF71D0;
  v40[11] = v39;
  sub_225EF5418();

  if (os_log_type_enabled(v41, v42))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v24 = sub_225EF5468(1);
    v25 = sub_225EF5468(0);
    v43 = buf;
    v44 = v24;
    v45 = v25;
    sub_225EF54BC(2, &v43);
    sub_225EF54BC(2, &v43);
    v46 = sub_225EF7434;
    v47 = v34;
    sub_225EF73E8(&v46, &v43, &v44, &v45);
    v46 = sub_225EF7434;
    v47 = v35;
    sub_225EF73E8(&v46, &v43, &v44, &v45);
    v46 = sub_225F3E358;
    v47 = v36;
    sub_225EF73E8(&v46, &v43, &v44, &v45);
    v46 = sub_225EF7434;
    v47 = v37;
    sub_225EF73E8(&v46, &v43, &v44, &v45);
    v46 = sub_225EF7434;
    v47 = v38;
    sub_225EF73E8(&v46, &v43, &v44, &v45);
    v46 = sub_225EF71D0;
    v47 = v39;
    sub_225EF73E8(&v46, &v43, &v44, &v45);
    _os_log_impl(&dword_225EEB000, v41, v42, "%@ cancelPreheatingTask:%ld queue task enqueued", buf, 0x16u);
    sub_225EF7AF4(v24);
    sub_225EF7AF4(v25);
    sub_22609A168();
  }

  else
  {
  }

  v19 = v26[24];
  v20 = v26[21];
  v12 = v26[19];
  v21 = v26[18];
  v18 = v26[16];
  v22 = v26[15];
  v16 = v26[13];
  v14 = v26[12];
  v13 = v26[11];
  v11 = v26[20];
  v17 = v26[17];
  v15 = v26[14];
  MEMORY[0x277D82BD8](v41);
  (*(v11 + 8))(v20, v12);
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v13);
  v7 = swift_allocObject();
  *(v7 + 16) = v13;
  *(v7 + 24) = v14;
  v26[7] = &unk_2260A0F78;
  v26[8] = v7;
  sub_226099DD8();
  (*(v15 + 8))(v22, v16);
  (*(v17 + 8))(v21, v18);

  v8 = *(v26[9] + 8);
  v9 = v26[9];

  return v8();
}

uint64_t sub_225F9EC40(uint64_t a1, uint64_t a2)
{
  v2[11] = a2;
  v2[8] = v2;
  v2[9] = 0;
  v2[10] = 0;
  v3 = sub_226098C58();
  v2[12] = v3;
  v6 = *(v3 - 8);
  v2[13] = v6;
  v7 = *(v6 + 64);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[9] = a2;
  v4 = v2[8];

  return MEMORY[0x2822009F8](sub_225F9ED54, 0, 0);
}

void sub_225F9ED54()
{
  v68 = v0;
  v1 = v0[15];
  v42 = v0[13];
  v43 = v0[12];
  v45 = v0[11];
  v0[8] = v0;
  v2 = sub_225F7E9BC();
  v44 = *(v42 + 16);
  v44(v1, v2, v43);
  MEMORY[0x277D82BE0](v45);
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  v56 = sub_226098C48();
  v57 = sub_22609A0A8();
  v49 = swift_allocObject();
  *(v49 + 16) = 64;
  v50 = swift_allocObject();
  *(v50 + 16) = 8;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_225F3E198;
  *(v47 + 24) = v46;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_225F3E1C8;
  *(v51 + 24) = v47;
  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  v53 = swift_allocObject();
  *(v53 + 16) = 8;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_225F9FCB4;
  *(v48 + 24) = 0;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_225F2D374;
  *(v54 + 24) = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v55 = v3;

  *v55 = sub_225EF7434;
  v55[1] = v49;

  v55[2] = sub_225EF7434;
  v55[3] = v50;

  v55[4] = sub_225F3E358;
  v55[5] = v51;

  v55[6] = sub_225EF7434;
  v55[7] = v52;

  v55[8] = sub_225EF7434;
  v55[9] = v53;

  v55[10] = sub_225EF71D0;
  v55[11] = v54;
  sub_225EF5418();

  if (os_log_type_enabled(v56, v57))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v39 = sub_225EF5468(1);
    v40 = sub_225EF5468(0);
    v63 = buf;
    v64 = v39;
    v65 = v40;
    sub_225EF54BC(2, &v63);
    sub_225EF54BC(2, &v63);
    v66 = sub_225EF7434;
    v67 = v49;
    sub_225EF73E8(&v66, &v63, &v64, &v65);
    v66 = sub_225EF7434;
    v67 = v50;
    sub_225EF73E8(&v66, &v63, &v64, &v65);
    v66 = sub_225F3E358;
    v67 = v51;
    sub_225EF73E8(&v66, &v63, &v64, &v65);
    v66 = sub_225EF7434;
    v67 = v52;
    sub_225EF73E8(&v66, &v63, &v64, &v65);
    v66 = sub_225EF7434;
    v67 = v53;
    sub_225EF73E8(&v66, &v63, &v64, &v65);
    v66 = sub_225EF71D0;
    v67 = v54;
    sub_225EF73E8(&v66, &v63, &v64, &v65);
    _os_log_impl(&dword_225EEB000, v56, v57, "%@ cancelPreheatingTask:%ld queue task dequeued", buf, 0x16u);
    sub_225EF7AF4(v39);
    sub_225EF7AF4(v40);
    sub_22609A168();
  }

  else
  {
  }

  v32 = v41[15];
  v33 = v41[12];
  v35 = v41[11];
  v31 = v41[13];
  MEMORY[0x277D82BD8](v56);
  v34 = *(v31 + 8);
  v34(v32, v33);
  v36 = (v35 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_preheatingTask);
  swift_beginAccess();
  v37 = *v36;

  swift_endAccess();
  if (v37)
  {
    v4 = v41[14];
    v21 = v41[12];
    v22 = v41[11];
    v41[10] = v37;
    v5 = sub_225F7E9BC();
    v44(v4, v5, v21);
    MEMORY[0x277D82BE0](v22);
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    oslog = sub_226098C48();
    v30 = sub_22609A0A8();
    v25 = swift_allocObject();
    *(v25 + 16) = 64;
    v26 = swift_allocObject();
    *(v26 + 16) = 8;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_225F3E198;
    *(v24 + 24) = v23;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_225F3E1C8;
    *(v27 + 24) = v24;
    sub_22609A4F8();
    v28 = v6;

    *v28 = sub_225EF7434;
    v28[1] = v25;

    v28[2] = sub_225EF7434;
    v28[3] = v26;

    v28[4] = sub_225F3E358;
    v28[5] = v27;
    sub_225EF5418();

    if (os_log_type_enabled(oslog, v30))
    {
      v18 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v19 = sub_225EF5468(1);
      v20 = sub_225EF5468(0);
      v58 = v18;
      v59 = v19;
      v60 = v20;
      sub_225EF54BC(2, &v58);
      sub_225EF54BC(1, &v58);
      v61 = sub_225EF7434;
      v62 = v25;
      sub_225EF73E8(&v61, &v58, &v59, &v60);
      v61 = sub_225EF7434;
      v62 = v26;
      sub_225EF73E8(&v61, &v58, &v59, &v60);
      v61 = sub_225F3E358;
      v62 = v27;
      sub_225EF73E8(&v61, &v58, &v59, &v60);
      _os_log_impl(&dword_225EEB000, oslog, v30, "%@ Discarding unused preheated analyzer", v18, 0xCu);
      sub_225EF7AF4(v19);
      sub_225EF7AF4(v20);
      sub_22609A168();
    }

    else
    {
    }

    v13 = v41[14];
    v14 = v41[12];
    v15 = v41[11];
    MEMORY[0x277D82BD8](oslog);
    v34(v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786990, &qword_2260A0900);
    sub_226099E38();
    v16 = (v15 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_preheatingTask);
    swift_beginAccess();
    v7 = *v16;
    *v16 = 0;

    swift_endAccess();
    v17 = *sub_225F827A0();

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786930, &qword_2260A0890);
    sub_225F8798C(sub_225FA0578, 0, v17, v8, MEMORY[0x277D84F78] + 8);
  }

  v11 = v41[15];
  v12 = v41[14];
  sub_225F9FCC0(v41[11]);

  v9 = *(v41[8] + 8);
  v10 = v41[8];

  v9();
}

uint64_t sub_225F9FCC0(uint64_t a1)
{
  v44 = a1;
  v45 = sub_225F3E198;
  v47 = sub_225F3E1C8;
  v51 = sub_22601D2B4;
  v54 = sub_225F2D374;
  v56 = sub_225EF7434;
  v58 = sub_225EF7434;
  v60 = sub_225F3E358;
  v62 = sub_225EF7434;
  v64 = sub_225EF7434;
  v67 = sub_225EF71D0;
  v78 = 0;
  v38 = 0;
  v43 = sub_226098C58();
  v41 = *(v43 - 8);
  v42 = v43 - 8;
  v39 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v44, v1, v2, v3);
  v4 = v29 - v39;
  v40 = v29 - v39;
  v78 = v5;
  v6 = sub_225F7E9BC();
  (*(v41 + 16))(v4, v6, v43);
  MEMORY[0x277D82BE0](v44);
  v53 = 7;
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  v71 = sub_226098C48();
  v72 = sub_22609A0A8();
  v49 = 17;
  v57 = swift_allocObject();
  *(v57 + 16) = 64;
  v59 = swift_allocObject();
  v50 = 8;
  *(v59 + 16) = 8;
  v52 = 32;
  v7 = swift_allocObject();
  v8 = v46;
  v48 = v7;
  *(v7 + 16) = v45;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v48;
  v61 = v9;
  *(v9 + 16) = v47;
  *(v9 + 24) = v10;
  v63 = swift_allocObject();
  *(v63 + 16) = 0;
  v65 = swift_allocObject();
  *(v65 + 16) = v50;
  v11 = swift_allocObject();
  v55 = v11;
  *(v11 + 16) = v51;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v55;
  v68 = v12;
  *(v12 + 16) = v54;
  *(v12 + 24) = v13;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v66 = sub_22609A4F8();
  v69 = v14;

  v15 = v57;
  v16 = v69;
  *v69 = v56;
  v16[1] = v15;

  v17 = v59;
  v18 = v69;
  v69[2] = v58;
  v18[3] = v17;

  v19 = v61;
  v20 = v69;
  v69[4] = v60;
  v20[5] = v19;

  v21 = v63;
  v22 = v69;
  v69[6] = v62;
  v22[7] = v21;

  v23 = v65;
  v24 = v69;
  v69[8] = v64;
  v24[9] = v23;

  v25 = v68;
  v26 = v69;
  v69[10] = v67;
  v26[11] = v25;
  sub_225EF5418();

  if (os_log_type_enabled(v71, v72))
  {
    v27 = v38;
    v30 = sub_22609A188();
    v29[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v31 = sub_225EF5468(1);
    v32 = sub_225EF5468(0);
    v34 = &v77;
    v77 = v30;
    v35 = &v76;
    v76 = v31;
    v36 = &v75;
    v75 = v32;
    v33 = 2;
    sub_225EF54BC(2, &v77);
    sub_225EF54BC(v33, v34);
    v73 = v56;
    v74 = v57;
    sub_225EF73E8(&v73, v34, v35, v36);
    v37 = v27;
    if (v27)
    {

      __break(1u);
    }

    else
    {
      v73 = v58;
      v74 = v59;
      sub_225EF73E8(&v73, &v77, &v76, &v75);
      v29[4] = 0;
      v73 = v60;
      v74 = v61;
      sub_225EF73E8(&v73, &v77, &v76, &v75);
      v29[3] = 0;
      v73 = v62;
      v74 = v63;
      sub_225EF73E8(&v73, &v77, &v76, &v75);
      v29[2] = 0;
      v73 = v64;
      v74 = v65;
      sub_225EF73E8(&v73, &v77, &v76, &v75);
      v29[1] = 0;
      v73 = v67;
      v74 = v68;
      sub_225EF73E8(&v73, &v77, &v76, &v75);
      _os_log_impl(&dword_225EEB000, v71, v72, "%@ cancelPreheatingTask:%ld queue task complete", v30, 0x16u);
      sub_225EF7AF4(v31);
      sub_225EF7AF4(v32);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v71);
  return (*(v41 + 8))(v40, v43);
}

uint64_t sub_225FA0578(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  return MEMORY[0x277D82BD8](v2);
}

uint64_t CoreEmbeddedSpeechAnalyzer.startSpeechRecognition(with:didStartHandlerWithInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a1;
  v78 = a2;
  v77 = a3;
  v85 = v3;
  v64 = 0;
  v86 = sub_225F3E198;
  v88 = sub_225F3E1C8;
  v90 = sub_225FA1508;
  v91 = sub_225EF7B84;
  v95 = sub_225FA1538;
  v98 = sub_225F2D374;
  v100 = sub_225EF7434;
  v102 = sub_225EF7434;
  v104 = sub_225F3E358;
  v106 = sub_225EF7434;
  v108 = sub_225EF7434;
  v110 = sub_225EF7B90;
  v112 = sub_225EF7434;
  v114 = sub_225EF7434;
  v117 = sub_225EF71D0;
  v63 = &unk_2260A0978;
  ObjectType = swift_getObjectType();
  v131 = 0;
  v129 = 0;
  v130 = 0;
  v128 = 0;
  v66 = 0;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v67, v4, v5, v6);
  v71 = v54 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v73 = *(v72 - 8);
  v74 = v72 - 8;
  v75 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v72, v7, v8, v9);
  v76 = v54 - v75;
  v84 = sub_226098C58();
  v82 = *(v84 - 8);
  v83 = v84 - 8;
  v80 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v79, v78, v77, v10);
  v11 = v54 - v80;
  v81 = v54 - v80;
  v131 = v12;
  v129 = v13;
  v130 = v14;
  v128 = v15;
  v16 = sub_225F7E9BC();
  (*(v82 + 16))(v11, v16, v84);
  MEMORY[0x277D82BE0](v85);
  v97 = 7;
  v87 = swift_allocObject();
  *(v87 + 16) = v85;
  v121 = sub_226098C48();
  v122 = sub_22609A0A8();
  v93 = 17;
  v101 = swift_allocObject();
  *(v101 + 16) = 64;
  v103 = swift_allocObject();
  v94 = 8;
  *(v103 + 16) = 8;
  v96 = 32;
  v17 = swift_allocObject();
  v18 = v87;
  v89 = v17;
  *(v17 + 16) = v86;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v89;
  v105 = v19;
  *(v19 + 16) = v88;
  *(v19 + 24) = v20;
  v107 = swift_allocObject();
  *(v107 + 16) = 32;
  v109 = swift_allocObject();
  *(v109 + 16) = v94;
  v21 = swift_allocObject();
  v92 = v21;
  *(v21 + 16) = v90;
  *(v21 + 24) = 0;
  v22 = swift_allocObject();
  v23 = v92;
  v111 = v22;
  *(v22 + 16) = v91;
  *(v22 + 24) = v23;
  v113 = swift_allocObject();
  *(v113 + 16) = 0;
  v115 = swift_allocObject();
  *(v115 + 16) = v94;
  v24 = swift_allocObject();
  v99 = v24;
  *(v24 + 16) = v95;
  *(v24 + 24) = 0;
  v25 = swift_allocObject();
  v26 = v99;
  v118 = v25;
  *(v25 + 16) = v98;
  *(v25 + 24) = v26;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v116 = sub_22609A4F8();
  v119 = v27;

  v28 = v101;
  v29 = v119;
  *v119 = v100;
  v29[1] = v28;

  v30 = v103;
  v31 = v119;
  v119[2] = v102;
  v31[3] = v30;

  v32 = v105;
  v33 = v119;
  v119[4] = v104;
  v33[5] = v32;

  v34 = v107;
  v35 = v119;
  v119[6] = v106;
  v35[7] = v34;

  v36 = v109;
  v37 = v119;
  v119[8] = v108;
  v37[9] = v36;

  v38 = v111;
  v39 = v119;
  v119[10] = v110;
  v39[11] = v38;

  v40 = v113;
  v41 = v119;
  v119[12] = v112;
  v41[13] = v40;

  v42 = v115;
  v43 = v119;
  v119[14] = v114;
  v43[15] = v42;

  v44 = v118;
  v45 = v119;
  v119[16] = v117;
  v45[17] = v44;
  sub_225EF5418();

  if (os_log_type_enabled(v121, v122))
  {
    v46 = v66;
    v56 = sub_22609A188();
    v54[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v55 = 1;
    v57 = sub_225EF5468(1);
    v58 = sub_225EF5468(v55);
    v59 = v127;
    v127[0] = v56;
    v60 = &v126;
    v126 = v57;
    v61 = &v125;
    v125 = v58;
    sub_225EF54BC(2, v127);
    sub_225EF54BC(3, v59);
    v123 = v100;
    v124 = v101;
    sub_225EF73E8(&v123, v59, v60, v61);
    v62 = v46;
    if (v46)
    {

      __break(1u);
    }

    else
    {
      v123 = v102;
      v124 = v103;
      sub_225EF73E8(&v123, v127, &v126, &v125);
      v54[8] = 0;
      v123 = v104;
      v124 = v105;
      sub_225EF73E8(&v123, v127, &v126, &v125);
      v54[7] = 0;
      v123 = v106;
      v124 = v107;
      sub_225EF73E8(&v123, v127, &v126, &v125);
      v54[6] = 0;
      v123 = v108;
      v124 = v109;
      sub_225EF73E8(&v123, v127, &v126, &v125);
      v54[5] = 0;
      v123 = v110;
      v124 = v111;
      sub_225EF73E8(&v123, v127, &v126, &v125);
      v54[4] = 0;
      v123 = v112;
      v124 = v113;
      sub_225EF73E8(&v123, v127, &v126, &v125);
      v54[3] = 0;
      v123 = v114;
      v124 = v115;
      sub_225EF73E8(&v123, v127, &v126, &v125);
      v54[2] = 0;
      v123 = v117;
      v124 = v118;
      sub_225EF73E8(&v123, v127, &v126, &v125);
      _os_log_impl(&dword_225EEB000, v121, v122, "%@ %s:%ld queue task enqueued", v56, 0x20u);
      v54[1] = 1;
      sub_225EF7AF4(v57);
      sub_225EF7AF4(v58);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v121);
  (*(v82 + 8))(v81, v84);
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v85);
  MEMORY[0x277D82BE0](v85);
  MEMORY[0x277D82BE0](v79);

  v47 = swift_allocObject();
  v48 = v79;
  v49 = v78;
  v50 = v77;
  v51 = ObjectType;
  v52 = v63;
  *(v47 + 16) = v85;
  *(v47 + 24) = v48;
  *(v47 + 32) = v49;
  *(v47 + 40) = v50;
  *(v47 + 48) = v51;
  v127[1] = v52;
  v127[2] = v47;
  sub_226099DD8();
  MEMORY[0x277D82BD8](v85);
  (*(v68 + 8))(v71, v67);
  return (*(v73 + 8))(v76, v72);
}

uint64_t sub_225FA1544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 2504) = a6;
  *(v6 + 2496) = a5;
  *(v6 + 2488) = a4;
  *(v6 + 2480) = a3;
  *(v6 + 2472) = a2;
  *(v6 + 1936) = v6;
  *(v6 + 1944) = 0;
  *(v6 + 1952) = 0;
  *(v6 + 1632) = 0;
  *(v6 + 1640) = 0;
  *(v6 + 3632) = 0;
  *(v6 + 1960) = 0;
  *(v6 + 1664) = 0;
  *(v6 + 1672) = 0;
  *(v6 + 1968) = 0;
  *(v6 + 1992) = 0;
  *(v6 + 2000) = 0;
  *(v6 + 1744) = 0;
  *(v6 + 1752) = 0;
  *(v6 + 3640) = 0;
  *(v6 + 1760) = 0;
  *(v6 + 1768) = 0;
  *(v6 + 2016) = 0;
  *(v6 + 1776) = 0;
  *(v6 + 1784) = 0;
  *(v6 + 2024) = 0;
  *(v6 + 2040) = 0;
  *(v6 + 1920) = 0;
  *(v6 + 1928) = 0;
  *(v6 + 2048) = 0;
  *(v6 + 2056) = 0;
  *(v6 + 2064) = 0;
  *(v6 + 2072) = 0;
  *(v6 + 2080) = 0;
  *(v6 + 2088) = 0;
  *(v6 + 2160) = 0;
  *(v6 + 2168) = 0;
  *(v6 + 2208) = 0;
  *(v6 + 1856) = 0;
  *(v6 + 1864) = 0;
  *(v6 + 2312) = 0;
  *(v6 + 1888) = 0;
  *(v6 + 1896) = 0;
  *(v6 + 1904) = 0;
  *(v6 + 1912) = 0;
  *(v6 + 2384) = 0;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A20, &unk_2260A0A10) - 8) + 64) + 15;
  *(v6 + 2512) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A28, &qword_2260A1000);
  *(v6 + 2520) = v8;
  v23 = *(v8 - 8);
  *(v6 + 2528) = v23;
  v9 = *(v23 + 64) + 15;
  *(v6 + 2536) = swift_task_alloc();
  v10 = sub_226099DA8();
  *(v6 + 2544) = v10;
  v24 = *(v10 - 8);
  *(v6 + 2552) = v24;
  v11 = *(v24 + 64) + 15;
  *(v6 + 2560) = swift_task_alloc();
  v12 = *(*(sub_226099398() - 8) + 64) + 15;
  *(v6 + 2568) = swift_task_alloc();
  v13 = sub_226099388();
  *(v6 + 2576) = v13;
  v25 = *(v13 - 8);
  *(v6 + 2584) = v25;
  v14 = *(v25 + 64) + 15;
  *(v6 + 2592) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15;
  *(v6 + 2600) = swift_task_alloc();
  v16 = sub_2260997E8();
  *(v6 + 2608) = v16;
  v26 = *(v16 - 8);
  *(v6 + 2616) = v26;
  *(v6 + 2624) = *(v26 + 64);
  *(v6 + 2632) = swift_task_alloc();
  *(v6 + 2640) = swift_task_alloc();
  *(v6 + 2648) = swift_task_alloc();
  v17 = sub_226099808();
  *(v6 + 2656) = v17;
  v27 = *(v17 - 8);
  *(v6 + 2664) = v27;
  v28 = *(v27 + 64);
  *(v6 + 2672) = swift_task_alloc();
  *(v6 + 2680) = swift_task_alloc();
  v18 = sub_226098DD8();
  *(v6 + 2688) = v18;
  v29 = *(v18 - 8);
  *(v6 + 2696) = v29;
  v19 = *(v29 + 64) + 15;
  *(v6 + 2704) = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786988, &qword_2260A08E8) - 8) + 64);
  *(v6 + 2712) = swift_task_alloc();
  *(v6 + 2720) = swift_task_alloc();
  v20 = sub_226098C58();
  *(v6 + 2728) = v20;
  v31 = *(v20 - 8);
  *(v6 + 2736) = v31;
  v32 = *(v31 + 64);
  *(v6 + 2744) = swift_task_alloc();
  *(v6 + 2752) = swift_task_alloc();
  *(v6 + 2760) = swift_task_alloc();
  *(v6 + 2768) = swift_task_alloc();
  *(v6 + 2776) = swift_task_alloc();
  *(v6 + 2784) = swift_task_alloc();
  *(v6 + 2792) = swift_task_alloc();
  *(v6 + 2800) = swift_task_alloc();
  *(v6 + 2808) = swift_task_alloc();
  *(v6 + 2816) = swift_task_alloc();
  *(v6 + 2824) = swift_task_alloc();
  *(v6 + 2832) = swift_task_alloc();
  *(v6 + 2840) = swift_task_alloc();
  *(v6 + 2848) = swift_task_alloc();
  *(v6 + 2856) = swift_task_alloc();
  *(v6 + 1944) = a2;
  *(v6 + 1952) = a3;
  *(v6 + 1632) = a4;
  *(v6 + 1640) = a5;
  v21 = *(v6 + 1936);

  return MEMORY[0x2822009F8](sub_225FA1C20, 0, 0);
}

uint64_t sub_225FA1C20()
{
  v303 = v0;
  v1 = v0[357];
  v260 = v0[342];
  v261 = v0[341];
  v263 = v0[309];
  v0[242] = v0;
  v2 = sub_225F7E9BC();
  v262 = *(v260 + 16);
  v0[358] = v262;
  v0[359] = (v260 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v262(v1, v2, v261);
  MEMORY[0x277D82BE0](v263);
  v264 = swift_allocObject();
  *(v264 + 16) = v263;
  oslog = sub_226098C48();
  v279 = sub_22609A0A8();
  v268 = swift_allocObject();
  *(v268 + 16) = 64;
  v269 = swift_allocObject();
  *(v269 + 16) = 8;
  v265 = swift_allocObject();
  *(v265 + 16) = sub_225F3E198;
  *(v265 + 24) = v264;
  v270 = swift_allocObject();
  *(v270 + 16) = sub_225F3E1C8;
  *(v270 + 24) = v265;
  v271 = swift_allocObject();
  *(v271 + 16) = 32;
  v272 = swift_allocObject();
  *(v272 + 16) = 8;
  v266 = swift_allocObject();
  *(v266 + 16) = sub_225FA1508;
  *(v266 + 24) = 0;
  v273 = swift_allocObject();
  *(v273 + 16) = sub_225EF7B84;
  *(v273 + 24) = v266;
  v274 = swift_allocObject();
  *(v274 + 16) = 0;
  v275 = swift_allocObject();
  *(v275 + 16) = 8;
  v267 = swift_allocObject();
  *(v267 + 16) = sub_225FBD0F4;
  *(v267 + 24) = 0;
  v276 = swift_allocObject();
  *(v276 + 16) = sub_225F2D374;
  *(v276 + 24) = v267;
  v0[360] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v277 = v3;

  *v277 = sub_225EF7434;
  v277[1] = v268;

  v277[2] = sub_225EF7434;
  v277[3] = v269;

  v277[4] = sub_225F3E358;
  v277[5] = v270;

  v277[6] = sub_225EF7434;
  v277[7] = v271;

  v277[8] = sub_225EF7434;
  v277[9] = v272;

  v277[10] = sub_225EF7B90;
  v277[11] = v273;

  v277[12] = sub_225EF7434;
  v277[13] = v274;

  v277[14] = sub_225EF7434;
  v277[15] = v275;

  v277[16] = sub_225EF71D0;
  v277[17] = v276;
  sub_225EF5418();

  if (os_log_type_enabled(oslog, v279))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v257 = sub_225EF5468(1);
    v258 = sub_225EF5468(1);
    v298 = buf;
    v299 = v257;
    v300 = v258;
    sub_225EF54BC(2, &v298);
    sub_225EF54BC(3, &v298);
    v301 = sub_225EF7434;
    v302 = v268;
    sub_225EF73E8(&v301, &v298, &v299, &v300);
    v301 = sub_225EF7434;
    v302 = v269;
    sub_225EF73E8(&v301, &v298, &v299, &v300);
    v301 = sub_225F3E358;
    v302 = v270;
    sub_225EF73E8(&v301, &v298, &v299, &v300);
    v301 = sub_225EF7434;
    v302 = v271;
    sub_225EF73E8(&v301, &v298, &v299, &v300);
    v301 = sub_225EF7434;
    v302 = v272;
    sub_225EF73E8(&v301, &v298, &v299, &v300);
    v301 = sub_225EF7B90;
    v302 = v273;
    sub_225EF73E8(&v301, &v298, &v299, &v300);
    v301 = sub_225EF7434;
    v302 = v274;
    sub_225EF73E8(&v301, &v298, &v299, &v300);
    v301 = sub_225EF7434;
    v302 = v275;
    sub_225EF73E8(&v301, &v298, &v299, &v300);
    v301 = sub_225EF71D0;
    v302 = v276;
    sub_225EF73E8(&v301, &v298, &v299, &v300);
    _os_log_impl(&dword_225EEB000, oslog, v279, "%@ %s:%ld queue task dequeued", buf, 0x20u);
    sub_225EF7AF4(v257);
    sub_225EF7AF4(v258);
    sub_22609A168();
  }

  else
  {
  }

  v237 = *(v259 + 2856);
  v4 = *(v259 + 2848);
  v239 = *(v259 + 2728);
  v241 = *(v259 + 2480);
  v240 = *(v259 + 2472);
  v236 = *(v259 + 2736);
  MEMORY[0x277D82BD8](oslog);
  v238 = *(v236 + 8);
  *(v259 + 2888) = v238;
  *(v259 + 2896) = (v236 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v238(v237, v239);
  v5 = sub_225F7E9BC();
  v262(v4, v5, v239);
  MEMORY[0x277D82BE0](v240);
  v242 = swift_allocObject();
  *(v242 + 16) = v240;
  MEMORY[0x277D82BE0](v241);
  v244 = swift_allocObject();
  *(v244 + 16) = v241;
  log = sub_226098C48();
  v254 = sub_22609A0A8();
  v246 = swift_allocObject();
  *(v246 + 16) = 64;
  v247 = swift_allocObject();
  *(v247 + 16) = 8;
  v243 = swift_allocObject();
  *(v243 + 16) = sub_225F3E198;
  *(v243 + 24) = v242;
  v248 = swift_allocObject();
  *(v248 + 16) = sub_225F3E1C8;
  *(v248 + 24) = v243;
  v249 = swift_allocObject();
  *(v249 + 16) = 32;
  v250 = swift_allocObject();
  *(v250 + 16) = 8;
  v245 = swift_allocObject();
  *(v245 + 16) = sub_226024C88;
  *(v245 + 24) = v244;
  v251 = swift_allocObject();
  *(v251 + 16) = sub_225EF7B84;
  *(v251 + 24) = v245;
  sub_22609A4F8();
  v252 = v6;

  *v252 = sub_225EF7434;
  v252[1] = v246;

  v252[2] = sub_225EF7434;
  v252[3] = v247;

  v252[4] = sub_225F3E358;
  v252[5] = v248;

  v252[6] = sub_225EF7434;
  v252[7] = v249;

  v252[8] = sub_225EF7434;
  v252[9] = v250;

  v252[10] = sub_225EF7B90;
  v252[11] = v251;
  sub_225EF5418();

  if (os_log_type_enabled(log, v254))
  {
    v233 = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v234 = sub_225EF5468(1);
    v235 = sub_225EF5468(1);
    v293 = v233;
    v294 = v234;
    v295 = v235;
    sub_225EF54BC(2, &v293);
    sub_225EF54BC(2, &v293);
    v296 = sub_225EF7434;
    v297 = v246;
    sub_225EF73E8(&v296, &v293, &v294, &v295);
    v296 = sub_225EF7434;
    v297 = v247;
    sub_225EF73E8(&v296, &v293, &v294, &v295);
    v296 = sub_225F3E358;
    v297 = v248;
    sub_225EF73E8(&v296, &v293, &v294, &v295);
    v296 = sub_225EF7434;
    v297 = v249;
    sub_225EF73E8(&v296, &v293, &v294, &v295);
    v296 = sub_225EF7434;
    v297 = v250;
    sub_225EF73E8(&v296, &v293, &v294, &v295);
    v296 = sub_225EF7B90;
    v297 = v251;
    sub_225EF73E8(&v296, &v293, &v294, &v295);
    _os_log_impl(&dword_225EEB000, log, v254, "%@ Starting recognition for %s", v233, 0x16u);
    sub_225EF7AF4(v234);
    sub_225EF7AF4(v235);
    sub_22609A168();
  }

  else
  {
  }

  v227 = *(v259 + 2848);
  v228 = *(v259 + 2728);
  v229 = *(v259 + 2472);
  MEMORY[0x277D82BD8](log);
  v238(v227, v228);
  v231 = *sub_225F827A0();

  MEMORY[0x277D82BE0](v229);
  v230 = swift_task_alloc();
  *(v230 + 16) = v229;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786930, &qword_2260A0890);
  *(v259 + 2904) = v232;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D60, &qword_2260A0F38);
  sub_225F8798C(sub_226024C90, v230, v231, v232, v7);
  v225 = *(v259 + 2472);

  MEMORY[0x277D82BD8](v225);

  v8 = *(v259 + 1648);
  v226 = *(v259 + 1656);
  *(v259 + 2912) = v226;
  *(v259 + 3632) = v8 & 1;
  *(v259 + 1960) = v226;
  if (v8)
  {
    v217 = *(v259 + 2472);
    [*(v259 + 2480) recognitionStart];
    v219 = v17 * *sub_225F7F6FC();
    v218 = (v217 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_timeUntilRecognitionStartInMs);
    swift_beginAccess();
    *v218 = v219;
    swift_endAccess();
    MEMORY[0x277D82BE0](v226);
    if (v226)
    {
      v18 = *(v259 + 2840);
      v213 = *(v259 + 2728);
      *(v259 + 2384) = v226;
      v19 = sub_225F7E9BC();
      v262(v18, v19, v213);
      v215 = sub_226098C48();
      v214 = sub_22609A078();
      v216 = sub_22609A4F8();
      if (os_log_type_enabled(v215, v214))
      {
        v201 = sub_22609A188();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v202 = sub_225EF5468(0);
        v203 = sub_225EF5468(0);
        *(v259 + 2424) = v201;
        *(v259 + 2432) = v202;
        *(v259 + 2440) = v203;
        sub_225EF54BC(0, (v259 + 2424));
        sub_225EF54BC(0, (v259 + 2424));
        *(v259 + 2448) = v216;
        v204 = swift_task_alloc();
        v204[2] = v259 + 2424;
        v204[3] = v259 + 2432;
        v204[4] = v259 + 2440;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();

        _os_log_impl(&dword_225EEB000, v215, v214, "Cancelling existing recognition", v201, 2u);
        sub_225EF7AF4(v202);
        sub_225EF7AF4(v203);
        sub_22609A168();
      }

      *(v259 + 2920) = 0;
      v197 = *(v259 + 2840);
      v198 = *(v259 + 2728);
      MEMORY[0x277D82BD8](v215);
      v238(v197, v198);
      v21 = sub_225F7F580();
      v199 = *v21;
      v200 = v21[1];
      v22 = swift_task_alloc();
      *(v259 + 2928) = v22;
      *v22 = *(v259 + 1936);
      v22[1] = sub_225FA63CC;
      v23 = *(v259 + 2504);

      return sub_225FBE028(v226, v199, v200);
    }

    else
    {
      v209 = *(v259 + 2480);
      v205 = sub_226098A78();
      *(v259 + 2936) = v205;
      v20 = *(v205 - 8);
      v206 = v20;
      *(v259 + 2944) = v20;
      v207 = v20;
      *(v259 + 2952) = *(v20 + 64);
      v208 = swift_task_alloc();
      *(v259 + 2960) = v208;
      v210 = swift_task_alloc();
      v211 = [v209 asrId];
      *(v259 + 2968) = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
      v212 = swift_task_alloc();
      if (v211)
      {
        v196 = swift_task_alloc();
        sub_226098A48();
        (*(v206 + 32))(v212, v196, v205);
        (*(v206 + 56))(v212, 0, 1, v205);

        MEMORY[0x277D82BD8](v211);
      }

      else
      {
        (*(v206 + 56))(v212, 1, 1, v205);
      }

      v195 = *(v206 + 48);
      *(v259 + 2976) = v195;
      *(v259 + 2984) = (v206 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v195(v212, 1, v205) == 1)
      {
        v191 = *(v259 + 2880);
        v189 = *(v259 + 2872);
        v190 = *(v259 + 2864);
        v25 = *(v259 + 2824);
        v188 = *(v259 + 2728);
        sub_225F7C078(v212);

        v26 = sub_225F7E9BC();
        v190(v25, v26, v188);
        v193 = sub_226098C48();
        v192 = sub_22609A078();
        v194 = sub_22609A4F8();
        if (os_log_type_enabled(v193, v192))
        {
          v182 = sub_22609A188();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v183 = sub_225EF5468(0);
          v184 = sub_225EF5468(0);
          *(v259 + 2352) = v182;
          *(v259 + 2360) = v183;
          *(v259 + 2368) = v184;
          sub_225EF54BC(0, (v259 + 2352));
          sub_225EF54BC(0, (v259 + 2352));
          *(v259 + 2376) = v194;
          v185 = swift_task_alloc();
          v185[2] = v259 + 2352;
          v185[3] = v259 + 2360;
          v185[4] = v259 + 2368;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
          sub_225EFE598();
          sub_226099C28();

          _os_log_impl(&dword_225EEB000, v193, v192, "SELF: asrId is nil, creating a new UUID for this request.", v182, 2u);
          sub_225EF7AF4(v183);
          sub_225EF7AF4(v184);
          sub_22609A168();
        }

        v179 = *(v259 + 2896);
        v180 = *(v259 + 2888);
        v177 = *(v259 + 2824);
        v178 = *(v259 + 2728);
        MEMORY[0x277D82BD8](v193);
        v180(v177, v178);
        v181 = swift_task_alloc();
        sub_226098A68();
        (*(v206 + 32))(v208, v181, v205);
      }

      else
      {
        v186 = *(v206 + 32);
        v186(v210, v212, v205);

        v187 = swift_task_alloc();
        (*(v206 + 16))(v187, v210, v205);
        v186(v208, v187, v205);

        (*(v206 + 8))(v210, v205);
      }

      v176 = [*(v259 + 2480) dictationUIInteractionIdentifier];
      if (v176)
      {
        v172 = sub_226099A08();
        v173 = v27;
        MEMORY[0x277D82BD8](v176);
        v174 = v172;
        v175 = v173;
      }

      else
      {
        v174 = 0;
        v175 = 0;
      }

      *(v259 + 2992) = v175;
      *(v259 + 1664) = v174;
      *(v259 + 1672) = v175;
      sub_2260998E8();
      if (v175)
      {
        v171 = *(v259 + 2480);
        *(v259 + 1904) = v174;
        *(v259 + 1912) = v175;
        lock = sub_225F834E0();
        sub_2260998E8();
        MEMORY[0x277D82BE0](v171);
        os_unfair_lock_lock(lock);
        sub_225FBE488(&lock[2]._os_unfair_lock_opaque, v174, v175, v208, v171);
        v160 = *(v259 + 2880);
        v140 = *(v259 + 2872);
        v141 = *(v259 + 2864);
        v30 = *(v259 + 2808);
        v139 = *(v259 + 2728);
        v138 = *(v259 + 2480);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786958, &qword_2260A08B0);
        sub_225F1CB98(lock);

        MEMORY[0x277D82BD8](v138);
        v31 = sub_225F7E9BC();
        v141(v30, v31, v139);
        v143 = swift_task_alloc();
        (*(v206 + 16))(v143, v208, v205);
        v142 = (*(v207 + 80) + 16) & ~*(v207 + 80);
        v144 = swift_allocObject();
        (*(v206 + 32))(v144 + v142, v143, v205);

        v145 = swift_allocObject();
        *(v145 + 16) = sub_225F7CD90;
        *(v145 + 24) = v144;

        sub_2260998E8();
        v147 = swift_allocObject();
        *(v147 + 16) = v174;
        *(v147 + 24) = v175;
        v161 = sub_226098C48();
        v162 = sub_22609A088();
        v150 = swift_allocObject();
        *(v150 + 16) = 32;
        v151 = swift_allocObject();
        *(v151 + 16) = 8;
        v146 = swift_allocObject();
        *(v146 + 16) = sub_225F7CE04;
        *(v146 + 24) = v145;
        v152 = swift_allocObject();
        *(v152 + 16) = sub_225EF7B84;
        *(v152 + 24) = v146;
        v153 = swift_allocObject();
        *(v153 + 16) = 32;
        v154 = swift_allocObject();
        *(v154 + 16) = 8;
        v148 = swift_allocObject();
        *(v148 + 16) = sub_225EF7450;
        *(v148 + 24) = v147;
        v155 = swift_allocObject();
        *(v155 + 16) = sub_225EF7B84;
        *(v155 + 24) = v148;
        v156 = swift_allocObject();
        *(v156 + 16) = 0;
        v157 = swift_allocObject();
        *(v157 + 16) = 8;
        v149 = swift_allocObject();
        *(v149 + 16) = sub_225FBE834;
        *(v149 + 24) = 0;
        v158 = swift_allocObject();
        *(v158 + 16) = sub_225F2D374;
        *(v158 + 24) = v149;
        sub_22609A4F8();
        v159 = v32;

        *v159 = sub_225EF7434;
        v159[1] = v150;

        v159[2] = sub_225EF7434;
        v159[3] = v151;

        v159[4] = sub_225EF7B90;
        v159[5] = v152;

        v159[6] = sub_225EF7434;
        v159[7] = v153;

        v159[8] = sub_225EF7434;
        v159[9] = v154;

        v159[10] = sub_225EF7B90;
        v159[11] = v155;

        v159[12] = sub_225EF7434;
        v159[13] = v156;

        v159[14] = sub_225EF7434;
        v159[15] = v157;

        v159[16] = sub_225EF71D0;
        v159[17] = v158;
        sub_225EF5418();

        if (os_log_type_enabled(v161, v162))
        {
          v135 = sub_22609A188();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v136 = sub_225EF5468(0);
          v137 = sub_225EF5468(2);
          v288 = v135;
          v289 = v136;
          v290 = v137;
          sub_225EF54BC(2, &v288);
          sub_225EF54BC(3, &v288);
          v291 = sub_225EF7434;
          v292 = v150;
          sub_225EF73E8(&v291, &v288, &v289, &v290);
          v291 = sub_225EF7434;
          v292 = v151;
          sub_225EF73E8(&v291, &v288, &v289, &v290);
          v291 = sub_225EF7B90;
          v292 = v152;
          sub_225EF73E8(&v291, &v288, &v289, &v290);
          v291 = sub_225EF7434;
          v292 = v153;
          sub_225EF73E8(&v291, &v288, &v289, &v290);
          v291 = sub_225EF7434;
          v292 = v154;
          sub_225EF73E8(&v291, &v288, &v289, &v290);
          v291 = sub_225EF7B90;
          v292 = v155;
          sub_225EF73E8(&v291, &v288, &v289, &v290);
          v291 = sub_225EF7434;
          v292 = v156;
          sub_225EF73E8(&v291, &v288, &v289, &v290);
          v291 = sub_225EF7434;
          v292 = v157;
          sub_225EF73E8(&v291, &v288, &v289, &v290);
          v291 = sub_225EF71D0;
          v292 = v158;
          sub_225EF73E8(&v291, &v288, &v289, &v290);
          _os_log_impl(&dword_225EEB000, v161, v162, "Stored asrID %s for interactionID %s. Cache size: %ld", v135, 0x20u);
          sub_225EF7AF4(v136);
          sub_225EF7AF4(v137);
          sub_22609A168();
        }

        else
        {
        }

        v133 = *(v259 + 2896);
        v134 = *(v259 + 2888);
        v131 = *(v259 + 2808);
        v132 = *(v259 + 2728);
        MEMORY[0x277D82BD8](v161);
        v134(v131, v132);
      }

      else
      {
        v166 = *(v259 + 2880);
        v164 = *(v259 + 2872);
        v165 = *(v259 + 2864);
        v28 = *(v259 + 2816);
        v163 = *(v259 + 2728);
        v29 = sub_225F7E9BC();
        v165(v28, v29, v163);
        v168 = sub_226098C48();
        v167 = sub_22609A088();
        v169 = sub_22609A4F8();
        if (os_log_type_enabled(v168, v167))
        {
          v127 = sub_22609A188();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v128 = sub_225EF5468(0);
          v129 = sub_225EF5468(0);
          *(v259 + 2320) = v127;
          *(v259 + 2328) = v128;
          *(v259 + 2336) = v129;
          sub_225EF54BC(0, (v259 + 2320));
          sub_225EF54BC(0, (v259 + 2320));
          *(v259 + 2344) = v169;
          v130 = swift_task_alloc();
          v130[2] = v259 + 2320;
          v130[3] = v259 + 2328;
          v130[4] = v259 + 2336;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
          sub_225EFE598();
          sub_226099C28();

          _os_log_impl(&dword_225EEB000, v168, v167, "InteractionID is nil, not updating the cache.", v127, 2u);
          sub_225EF7AF4(v128);
          sub_225EF7AF4(v129);
          sub_22609A168();
        }

        v125 = *(v259 + 2896);
        v126 = *(v259 + 2888);
        v123 = *(v259 + 2816);
        v124 = *(v259 + 2728);
        MEMORY[0x277D82BD8](v168);
        v126(v123, v124);
      }

      v120 = *(v259 + 2480);
      v121 = swift_task_alloc();
      *(v259 + 3000) = v121;
      v122 = [v120 requestIdentifier];
      if (v122)
      {
        v116 = sub_226099A08();
        v117 = v33;
        MEMORY[0x277D82BD8](v122);
        v118 = v116;
        v119 = v117;
      }

      else
      {
        v118 = 0;
        v119 = 0;
      }

      *(v259 + 1680) = v118;
      *(v259 + 1688) = v119;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869E0, &qword_2260A02D0);
      sub_225FBE9D0(sub_225FBE98C, 0, v34, MEMORY[0x277D84A98], v205, v255, v121);
      sub_225EFE6BC(v259 + 1680);
      v114 = swift_task_alloc();
      v115 = swift_task_alloc();
      sub_225F7BF50(v121, v115);
      if (v195(v115, 1, v205) == 1)
      {
        v113 = *(v259 + 2720);
        v112 = *(v259 + 2712);
        sub_225F7C078(v115);

        v35 = sub_226098D98();
        (*(*(v35 - 8) + 56))(v112, 1);
        sub_226024CB8(v112, v113);
      }

      else
      {
        (*(v206 + 32))(v114, v115, v205);

        sub_2260998E8();
        *(v259 + 1872) = v174;
        *(v259 + 1880) = v175;
        if (*(v259 + 1880))
        {
          v286 = *(v259 + 1872);
          v287 = *(v259 + 1880);
        }

        else
        {
          v286 = sub_226099AA8();
          v287 = v36;
          if (*(v259 + 1880))
          {
            sub_225EFE6BC(v259 + 1872);
          }
        }

        v111 = *(v259 + 2720);
        v110 = *(v259 + 2712);
        *(v259 + 1888) = v286;
        *(v259 + 1896) = v287;
        v109 = swift_task_alloc();
        v107 = *(v206 + 16);
        v107(v109, v208, v205);
        v108 = swift_task_alloc();
        v107(v108, v114, v205);
        sub_226098D88();

        v37 = sub_226098D98();
        (*(*(v37 - 8) + 56))(v110, 0, 1);
        sub_226024CB8(v110, v111);
        (*(v206 + 8))(v114, v205);
      }

      v105 = *(v259 + 2480);
      v38 = sub_225F7F1AC();
      v103 = *v38;
      v104 = v38[1];
      sub_2260998E8();
      v106 = [v105 task];
      if (v106)
      {
        v99 = sub_226099A08();
        v100 = v39;
        MEMORY[0x277D82BD8](v106);
        v101 = v99;
        v102 = v100;
      }

      else
      {
        v101 = 0;
        v102 = 0;
      }

      *(v259 + 1696) = v101;
      *(v259 + 1704) = v102;
      if (*(v259 + 1704))
      {
        v280 = *(v259 + 1696);
        v281 = *(v259 + 1704);
      }

      else
      {
        v280 = sub_226099AA8();
        v281 = v40;
        if (*(v259 + 1704))
        {
          sub_225EFE6BC(v259 + 1696);
        }
      }

      v97 = *(v259 + 2480);
      v41 = *(v259 + 2472);
      sub_225FBECD4(v280, v281);

      v98 = [v97 applicationName];
      if (v98)
      {
        v93 = sub_226099A08();
        v94 = v42;
        MEMORY[0x277D82BD8](v98);
        v95 = v93;
        v96 = v94;
      }

      else
      {
        v95 = 0;
        v96 = 0;
      }

      *(v259 + 1712) = v95;
      *(v259 + 1720) = v96;
      if (*(v259 + 1720))
      {
        v282 = *(v259 + 1712);
        v283 = *(v259 + 1720);
      }

      else
      {
        sub_226099AA8();
        if (*(v259 + 1720))
        {
          sub_225EFE6BC(v259 + 1712);
        }
      }

      v92 = [*(v259 + 2480) inputOrigin];
      if (v92)
      {
        v88 = sub_226099A08();
        v89 = v43;
        MEMORY[0x277D82BD8](v92);
        v90 = v88;
        v91 = v89;
      }

      else
      {
        v90 = 0;
        v91 = 0;
      }

      *(v259 + 1728) = v90;
      *(v259 + 1736) = v91;
      if (*(v259 + 1736))
      {
        v284 = *(v259 + 1728);
        v285 = *(v259 + 1736);
      }

      else
      {
        sub_226099AA8();
        if (*(v259 + 1736))
        {
          sub_225EFE6BC(v259 + 1728);
        }
      }

      v84 = *(v259 + 2704);
      v85 = *(v259 + 2680);
      v86 = *(v259 + 2480);
      v44 = *(v259 + 2472);
      sub_226024DE0(*(v259 + 2720), *(v259 + 2712));
      sub_226098DA8();
      sub_225FBEFBC(v86, v85);
      v87 = swift_task_alloc();
      *(v259 + 3008) = v87;
      v45 = *(v206 + 16);
      *(v259 + 3016) = v45;
      *(v259 + 3024) = (v206 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v45(v87);
      v46 = swift_task_alloc();
      *(v259 + 3032) = v46;
      *v46 = *(v259 + 1936);
      v46[1] = sub_225FA9044;
      v47 = *(v259 + 2480);
      v48 = *(v259 + 2472);

      return sub_225FBF164(v47, v87);
    }
  }

  else
  {
    type metadata accessor for AFError();
    *(v259 + 2464) = 1100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786C70, &qword_2260A0560);
    sub_22609A4F8();
    v220 = v9;
    v221 = *MEMORY[0x277CCA450];
    MEMORY[0x277D82BE0](*MEMORY[0x277CCA450]);
    *v220 = sub_226099A08();
    v220[1] = v10;
    v11 = sub_226099AA8();
    v220[5] = MEMORY[0x277D837D0];
    v220[2] = v11;
    v220[3] = v12;
    sub_225EF5418();
    MEMORY[0x277D82BD8](v221);
    sub_2260998A8();
    sub_225F1A478();
    sub_2260988C8();
    v222 = *(v259 + 2456);
    MEMORY[0x277D82BE0](v222);
    swift_willThrow();
    MEMORY[0x277D82BD8](v222);
    MEMORY[0x277D82BD8](v226);
    v13 = *(v259 + 2472);
    v14 = v222;
    *(v259 + 1968) = v222;
    v15 = v222;
    v223 = sub_225FCEF44(v222);

    *(v259 + 1984) = v223;
    v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D68, &qword_2260A0F40);
    v16 = sub_226024FB0();
    sub_225F25E38(sub_225FCF714, 0, v224, MEMORY[0x277D84A98], v16, v255, v259 + 1976);
    v82 = *(v259 + 2496);
    sub_226022DA8((v259 + 1984));
    v83 = *(v259 + 1976);
    *(v259 + 1992) = v83;

    MEMORY[0x277D82BE0](v83);
    if (v83)
    {
      v81 = v83;
    }

    else
    {
      v81 = 0;
    }

    v49 = *(v259 + 2496);
    (*(v259 + 2488))();

    MEMORY[0x277D82BD8](v83);

    v52 = *(v259 + 2856);
    v53 = *(v259 + 2848);
    v54 = *(v259 + 2840);
    v55 = *(v259 + 2832);
    v56 = *(v259 + 2824);
    v57 = *(v259 + 2816);
    v58 = *(v259 + 2808);
    v59 = *(v259 + 2800);
    v60 = *(v259 + 2792);
    v61 = *(v259 + 2784);
    v62 = *(v259 + 2776);
    v63 = *(v259 + 2768);
    v64 = *(v259 + 2760);
    v65 = *(v259 + 2752);
    v66 = *(v259 + 2744);
    v67 = *(v259 + 2720);
    v68 = *(v259 + 2712);
    v69 = *(v259 + 2704);
    v70 = *(v259 + 2680);
    v71 = *(v259 + 2672);
    v72 = *(v259 + 2648);
    v73 = *(v259 + 2640);
    v74 = *(v259 + 2632);
    v75 = *(v259 + 2600);
    v76 = *(v259 + 2592);
    v77 = *(v259 + 2568);
    v78 = *(v259 + 2560);
    v79 = *(v259 + 2536);
    v80 = *(v259 + 2512);
    sub_225FBD100(*(v259 + 2472));
    sub_2260215F0(0);

    v50 = *(*(v259 + 1936) + 8);
    v51 = *(v259 + 1936);

    return v50();
  }
}
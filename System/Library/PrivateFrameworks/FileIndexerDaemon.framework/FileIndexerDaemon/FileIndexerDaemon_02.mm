uint64_t sub_24ABA2614(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_24ABAC3DC();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_24ABAC3DC();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_24ABA2198(result);

  return sub_24ABA2514(v4, v2, 0);
}

uint64_t sub_24ABA26EC(void *a1)
{
  v3 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 setExportedObject_];
  [a1 resume];
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v4 = sub_24ABABD8C();
  __swift_project_value_buffer(v4, qword_27EF95FD8);
  v5 = a1;
  v6 = sub_24ABABD6C();
  v7 = sub_24ABAC0FC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_24AB6F000, v6, v7, "Accepted %@", v8, 0xCu);
    sub_24AB7C4A4(v9, &unk_27EF953F0, &unk_24ABAD6A0);
    MEMORY[0x24C229EC0](v9, -1, -1);
    MEMORY[0x24C229EC0](v8, -1, -1);
  }

  return 1;
}

_OWORD *sub_24ABA28B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_24ABA294C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = sub_24ABAC14C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = sub_24ABABE1C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v18 = type metadata accessor for DiskIndexingStateHandler(0);
  v19 = &off_285E1C278;
  *&v17 = a4;
  a5[4] = a1;
  a5[5] = a2;
  sub_24AB943C0(0, &unk_27EF95E00, 0x277D85C78);

  sub_24ABABE0C();
  sub_24ABA3E40(&unk_27EF95BA0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95E10, &qword_24ABAEDE8);
  sub_24AB94408(&qword_27EF95BB0, &unk_27EF95E10, &qword_24ABAEDE8);
  sub_24ABAC28C();
  v13 = sub_24ABAC13C();
  v14 = a3;
  a5[2] = v13;
  if (!a3)
  {
    v14 = sub_24ABA9E7C();
  }

  a5[3] = v14;
  sub_24AB93E6C(&v17, (a5 + 6));
  return a5;
}

uint64_t sub_24ABA2B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24ABABDFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24ABABE1C();
  v13 = *(v22 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v22);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *&v4[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_queue];
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v4;
  aBlock[4] = a3;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AB9AA08;
  aBlock[3] = a4;
  v18 = _Block_copy(aBlock);

  v19 = v4;
  sub_24ABABE0C();
  v23 = MEMORY[0x277D84F90];
  sub_24ABA3E40(&unk_27EF95DB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24AB94408(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24ABAC28C();
  MEMORY[0x24C229110](0, v16, v12, v18);
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v22);
}

uint64_t dispatch thunk of FIService.getRoots()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24ABA2FDC;

  return v6();
}

uint64_t sub_24ABA2FDC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of FIService.queueScan(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AB94E38;

  return v8(a1);
}

uint64_t dispatch thunk of FIService.startScan()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x80);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AB94E38;

  return v6();
}

uint64_t dispatch thunk of FIService.stopScan()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AB94E38;

  return v6();
}

uint64_t dispatch thunk of FIService.scanStatus()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x90);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24ABA3570;

  return v6();
}

uint64_t sub_24ABA3570(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of FIService.getItemDelayInScan()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x98);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24ABA4A98;

  return v6();
}

uint64_t dispatch thunk of FIService.setItemDelayInScan(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xA0);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AB945B8;

  return v8(a1);
}

uint64_t sub_24ABA38C4()
{
  result = sub_24ABABC0C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_24ABA3A2C()
{
  sub_24ABA3AC8();
  if (v0 <= 0x3F)
  {
    sub_24ABA3AF8();
    if (v1 <= 0x3F)
    {
      sub_24ABA3B5C();
      if (v2 <= 0x3F)
      {
        sub_24ABA3BDC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24ABA3AC8()
{
  result = qword_27EF95D58;
  if (!qword_27EF95D58)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27EF95D58);
  }

  return result;
}

void sub_24ABA3AF8()
{
  if (!qword_27EF95D60)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EF95D60);
    }
  }
}

void sub_24ABA3B5C()
{
  if (!qword_27EF95D68)
  {
    sub_24ABABC0C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF95C50, &qword_24ABAF140);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EF95D68);
    }
  }
}

uint64_t sub_24ABA3BDC()
{
  result = qword_27EF95D70;
  if (!qword_27EF95D70)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27EF95D70);
  }

  return result;
}

uint64_t sub_24ABA3C34()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24ABA3C74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootInfo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ABA3CE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ABA3D48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ABA3DB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95DA0, &unk_24ABAF2B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24ABA3E40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24ABA3E88()
{
  MEMORY[0x24C229F70](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24ABA3EC8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24ABA3F10()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24ABA3F78()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24ABA3FB8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AB94E38;

  return sub_24AB97C98(v2, v3, v4);
}

uint64_t sub_24ABA4070()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AB94E38;

  return sub_24ABA0EEC(v2, v3, v5);
}

uint64_t sub_24ABA4130(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AB94E38;

  return sub_24ABA0FD4(a1, v4, v5, v7);
}

uint64_t sub_24ABA41FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24ABA4234(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AB94E38;

  return sub_24AB908F4(a1, v5);
}

uint64_t sub_24ABA4304()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AB94E38;

  return sub_24AB977F0(v2, v3);
}

uint64_t sub_24ABA43B0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AB945B8;

  return sub_24AB971C8(v2, v3);
}

uint64_t sub_24ABA445C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AB94E38;

  return sub_24AB96DF0(v2, v3);
}

uint64_t sub_24ABA4508()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AB94E38;

  return sub_24AB9696C(v2, v3);
}

uint64_t sub_24ABA45B4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24ABA45FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AB94E38;

  return sub_24AB961A4(v2, v3, v4);
}

uint64_t sub_24ABA46B0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AB94E38;

  return sub_24AB959F8(v2, v3);
}

uint64_t objectdestroy_108Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_40Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t sub_24ABA4860()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24ABA4900(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
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

uint64_t sub_24ABA4B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_24ABABA2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_24ABA54BC;
  *(v12 + 24) = v11;
  aBlock[4] = sub_24ABA54C4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24ABA4AD8;
  aBlock[3] = &block_descriptor_1;
  v13 = _Block_copy(aBlock);

  v14 = fpfs_openbyid();
  _Block_release(v13);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if ((v14 & 0x80000000) == 0)
    {
      return v14;
    }

    result = MEMORY[0x24C228D50](result);
    if (result)
    {
      MEMORY[0x24C228D50]();
      v17 = sub_24ABABDAC();
      v18 = (v7 + 8);
      if ((v17 & 0x100000000) != 0)
      {
        LODWORD(aBlock[0]) = sub_24ABABD9C();
      }

      else
      {
        LODWORD(aBlock[0]) = v17;
      }

      sub_24ABA5504(MEMORY[0x277D84F90]);
      sub_24ABA5614();
      sub_24ABABB3C();
      sub_24ABABA1C();
      (*v18)(v10, v6);
      swift_willThrow();
      return v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24ABA4D88(uint64_t a1, uint64_t a2, stat *a3)
{
  v4 = sub_24ABABA2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24ABABECC();
  v10 = lstat((v9 + 32), a3);

  if ((v10 & 0x80000000) == 0)
  {
LABEL_7:

    return v10;
  }

  result = MEMORY[0x24C228D50](v11);
  if (result)
  {
    MEMORY[0x24C228D50]();
    v13 = sub_24ABABDAC();
    v14 = (v5 + 8);
    if ((v13 & 0x100000000) != 0)
    {
      v17 = sub_24ABABD9C();
    }

    else
    {
      v16 = v13;
    }

    sub_24ABA5504(MEMORY[0x277D84F90]);
    sub_24ABA5614();
    sub_24ABABB3C();
    sub_24ABABA1C();
    (*v14)(v8, v4);
    swift_willThrow();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void throwErrno<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = a2;
  sub_24ABA4F90(sub_24ABA4F68, v5, a3, a4, a5);
}

uint64_t sub_24ABA4F68()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

void sub_24ABA4F90(void (*a1)(id *)@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a1;
  v51 = a2;
  v8 = sub_24ABABA2C();
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v8);
  v48 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a4 + 8);
  v12 = *(*(v11 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = v46 - v16;
  v18 = *(a3 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = 0;
  v22 = v53;
  v52(&v55);
  if (v22)
  {

    return;
  }

  v51 = v17;
  v52 = AssociatedTypeWitness;
  v53 = v21;
  v23 = v50;
  if (v55)
  {
    swift_willThrow();
    (*(v18 + 8))(a5, a3);
    return;
  }

  v46[1] = 0;
  v24 = a3;
  v25 = v11;
  v26 = sub_24ABAC27C();
  v47 = v18;
  if (v26)
  {
    v27 = a5;
    v28 = sub_24ABAC26C();
    v29 = v49;
    if (v28 >= 64)
    {
      v54 = 0;
      sub_24ABA56DC();
      v36 = v53;
      sub_24ABAC24C();
      v37 = *(*(v25 + 32) + 8);
      v38 = sub_24ABABE6C();
      (*(v47 + 8))(v36, a3);
      if ((v38 & 1) == 0)
      {
        return;
      }
    }

    else if ((sub_24ABAC25C() & 0x8000000000000000) == 0)
    {
      return;
    }

    goto LABEL_20;
  }

  v30 = sub_24ABAC27C();
  v31 = sub_24ABAC26C();
  v32 = v25;
  if ((v30 & 1) == 0)
  {
    v27 = a5;
    v29 = v49;
    if (v31 >= 64)
    {
      return;
    }

    v24 = a3;
    goto LABEL_18;
  }

  if (v31 > 64)
  {
    v54 = 0;
    sub_24ABA56DC();
    v33 = v53;
    v24 = a3;
    sub_24ABAC24C();
    v34 = *(*(v32 + 32) + 8);
    v27 = a5;
    v35 = sub_24ABABE6C();
    (*(v47 + 8))(v33, a3);
    v29 = v49;
    if ((v35 & 1) == 0)
    {
      return;
    }

    goto LABEL_20;
  }

  v24 = a3;
  swift_getAssociatedConformanceWitness();
  sub_24ABAC5AC();
  v39 = v53;
  sub_24ABAC57C();
  v40 = *(*(v32 + 32) + 8);
  v27 = a5;
  v41 = sub_24ABABE6C();
  (*(v47 + 8))(v39, a3);
  v29 = v49;
  if ((v41 & 1) == 0)
  {
LABEL_18:
    if ((sub_24ABAC25C() & 0x8000000000000000) == 0)
    {
      return;
    }
  }

LABEL_20:
  if (MEMORY[0x24C228D50]())
  {
    MEMORY[0x24C228D50]();
    v42 = sub_24ABABDAC();
    v43 = (v29 + 8);
    v44 = v48;
    v45 = (v47 + 8);
    if ((v42 & 0x100000000) != 0)
    {
      LODWORD(v54) = sub_24ABABD9C();
    }

    else
    {
      LODWORD(v54) = v42;
    }

    sub_24ABA5504(MEMORY[0x277D84F90]);
    sub_24ABA5614();
    sub_24ABABB3C();
    sub_24ABABA1C();
    (*v43)(v44, v23);
    swift_willThrow();
    (*v45)(v27, v24);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24ABA54C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24ABA5504(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95E50, &qword_24ABAF418);
    v3 = sub_24ABAC40C();
    v4 = a1 + 32;

    while (1)
    {
      sub_24ABA566C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_24AB7E4CC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24ABA28B4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24ABA5614()
{
  result = qword_27EF95E30;
  if (!qword_27EF95E30)
  {
    sub_24ABABA2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95E30);
  }

  return result;
}

uint64_t sub_24ABA566C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95E58, &unk_24ABAF420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24ABA56DC()
{
  result = qword_27EF95E60;
  if (!qword_27EF95E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95E60);
  }

  return result;
}

unsigned __int8 *sub_24ABA5734()
{
  v0 = objc_opt_self();
  v1 = sub_24ABABE8C();
  v2 = [v0 getFPIdentifierFromCoreSpotlightIdentifier_];

  v3 = sub_24ABABEBC();
  v5 = v4;

  if ((sub_24ABABF9C() & 1) == 0)
  {
    goto LABEL_22;
  }

  v6 = sub_24ABABF0C();
  v7 = sub_24ABA9A08(v6, v3, v5);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = MEMORY[0x24C228E60](v7, v9, v11, v13);
  v16 = v15;

  v18 = HIBYTE(v16) & 0xF;
  v19 = v14 & 0xFFFFFFFFFFFFLL;
  if (!((v16 & 0x2000000000000000) != 0 ? HIBYTE(v16) & 0xF : v14 & 0xFFFFFFFFFFFFLL))
  {
LABEL_22:

    return 0;
  }

  if ((v16 & 0x1000000000000000) == 0)
  {
    if ((v16 & 0x2000000000000000) != 0)
    {
      v37[0] = v14;
      v37[1] = v16 & 0xFFFFFFFFFFFFFFLL;
      if (v14 == 43)
      {
        if (v18)
        {
          if (--v18)
          {
            v22 = 0;
            v30 = v37 + 1;
            while (1)
            {
              v31 = *v30 - 48;
              if (v31 > 9)
              {
                break;
              }

              if (!is_mul_ok(v22, 0xAuLL))
              {
                break;
              }

              v25 = __CFADD__(10 * v22, v31);
              v22 = 10 * v22 + v31;
              if (v25)
              {
                break;
              }

              ++v30;
              if (!--v18)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_75:
        __break(1u);
        return result;
      }

      if (v14 != 45)
      {
        if (v18)
        {
          v22 = 0;
          v33 = v37;
          while (1)
          {
            v34 = *v33 - 48;
            if (v34 > 9)
            {
              break;
            }

            if (!is_mul_ok(v22, 0xAuLL))
            {
              break;
            }

            v25 = __CFADD__(10 * v22, v34);
            v22 = 10 * v22 + v34;
            if (v25)
            {
              break;
            }

            ++v33;
            if (!--v18)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v18)
      {
        if (--v18)
        {
          v22 = 0;
          v26 = v37 + 1;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              break;
            }

            if (!is_mul_ok(v22, 0xAuLL))
            {
              break;
            }

            v25 = 10 * v22 >= v27;
            v22 = 10 * v22 - v27;
            if (!v25)
            {
              break;
            }

            ++v26;
            if (!--v18)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v14 & 0x1000000000000000) != 0)
      {
        result = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_24ABAC34C();
      }

      v21 = *result;
      if (v21 == 43)
      {
        if (v19 >= 1)
        {
          v18 = v19 - 1;
          if (v19 != 1)
          {
            v22 = 0;
            if (result)
            {
              v28 = result + 1;
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  goto LABEL_65;
                }

                if (!is_mul_ok(v22, 0xAuLL))
                {
                  goto LABEL_65;
                }

                v25 = __CFADD__(10 * v22, v29);
                v22 = 10 * v22 + v29;
                if (v25)
                {
                  goto LABEL_65;
                }

                ++v28;
                if (!--v18)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_74;
      }

      if (v21 != 45)
      {
        if (v19)
        {
          v22 = 0;
          if (result)
          {
            while (1)
            {
              v32 = *result - 48;
              if (v32 > 9)
              {
                goto LABEL_65;
              }

              if (!is_mul_ok(v22, 0xAuLL))
              {
                goto LABEL_65;
              }

              v25 = __CFADD__(10 * v22, v32);
              v22 = 10 * v22 + v32;
              if (v25)
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v19)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v22 = 0;
        LOBYTE(v18) = 1;
        goto LABEL_66;
      }

      if (v19 >= 1)
      {
        v18 = v19 - 1;
        if (v19 != 1)
        {
          v22 = 0;
          if (result)
          {
            v23 = result + 1;
            while (1)
            {
              v24 = *v23 - 48;
              if (v24 > 9)
              {
                goto LABEL_65;
              }

              if (!is_mul_ok(v22, 0xAuLL))
              {
                goto LABEL_65;
              }

              v25 = 10 * v22 >= v24;
              v22 = 10 * v22 - v24;
              if (!v25)
              {
                goto LABEL_65;
              }

              ++v23;
              if (!--v18)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v18) = 0;
LABEL_66:
          v38 = v18;
          v35 = v18;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v38 = 0;
  v22 = sub_24ABA9010(v14, v16, 10);
  v35 = v36;
LABEL_67:

  if (v35)
  {
    return 0;
  }

  else
  {
    return v22;
  }
}

uint64_t sub_24ABA5B10()
{
  result = sub_24ABABE8C();
  qword_27EF96060 = result;
  return result;
}

void sub_24ABA5B48(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_24ABA5BB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v26[0] = a5;
  v13 = *v7;
  v14 = sub_24ABABDFC();
  v29 = *(v14 - 8);
  v15 = *(v29 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24ABABE1C();
  v27 = *(v18 - 8);
  v28 = v18;
  v19 = *(v27 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[1] = v7[2];
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = v7;
  v22[4] = a2;
  v22[5] = a3;
  v23 = v26[0];
  v22[6] = a4;
  v22[7] = v23;
  v22[8] = a6;
  v22[9] = v13;
  aBlock[4] = sub_24ABA9D5C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AB9AA08;
  aBlock[3] = &block_descriptor_29;
  v24 = _Block_copy(aBlock);

  sub_24AB7FC5C(a3, a4);

  sub_24ABABE0C();
  v30 = MEMORY[0x277D84F90];
  sub_24ABA9E34(&unk_27EF95DB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24ABA9B1C(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24ABAC28C();
  MEMORY[0x24C229110](0, v21, v17, v24);
  _Block_release(v24);
  (*(v29 + 8))(v17, v14);
  (*(v27 + 8))(v21, v28);
}

uint64_t sub_24ABA5EF8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7)
{
  v45[3] = a7;
  v46 = a6;
  v45[1] = a4;
  v45[2] = a5;
  v10 = type metadata accessor for FileMetadata();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v16 = MEMORY[0x277D84F90];
  v47 = a2;
  if (v15)
  {
    v49 = MEMORY[0x277D84F90];
    sub_24ABAC37C();
    v17 = a2[4];
    v18 = a2[5];
    v19 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v20 = *(v11 + 72);
    do
    {
      sub_24ABA9D70(v19, v14);
      sub_24ABA6380(v17, v18);
      sub_24ABA9DD4(v14, type metadata accessor for FileMetadata);
      sub_24ABAC35C();
      v21 = *(v49 + 16);
      sub_24ABAC38C();
      sub_24ABAC39C();
      sub_24ABAC36C();
      v19 += v20;
      --v15;
    }

    while (v15);
    v16 = v49;
    a2 = v47;
  }

  v22 = *(a3 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v45[0] = v16;
    v51 = MEMORY[0x277D84F90];
    sub_24ABA18BC(0, v22, 0);
    v23 = v51;
    v24 = objc_opt_self();
    v25 = *MEMORY[0x277CC62F8];
    v26 = (a3 + 32);
    do
    {
      v27 = *v26++;
      v48 = v27;
      v49 = 1029990758;
      v50 = 0xE400000000000000;
      v28 = sub_24ABAC56C();
      MEMORY[0x24C228EB0](v28);

      v29 = sub_24ABABE8C();

      v30 = [v24 csIdentifierFromFPIdentifier:v29 domainIdentifier:v25];

      v31 = sub_24ABABEBC();
      v33 = v32;

      v51 = v23;
      v35 = *(v23 + 16);
      v34 = *(v23 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_24ABA18BC((v34 > 1), v35 + 1, 1);
        v23 = v51;
      }

      *(v23 + 16) = v35 + 1;
      v36 = v23 + 16 * v35;
      *(v36 + 32) = v31;
      *(v36 + 40) = v33;
      --v22;
    }

    while (v22);
    a2 = v47;
    v16 = v45[0];
  }

  v37 = a2[3];
  [v37 beginIndexBatch];
  if (!(v16 >> 62))
  {
    v38 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38)
    {
      goto LABEL_13;
    }

LABEL_16:

    if (*(v23 + 16))
    {
      goto LABEL_14;
    }

LABEL_17:

    v42 = sub_24ABABC3C();
    [v37 endIndexBatchWithClientState:v42 completionHandler:0];

    if (!v38)
    {
      return v46(0);
    }

    goto LABEL_18;
  }

  v38 = sub_24ABAC3DC();
  if (!v38)
  {
    goto LABEL_16;
  }

LABEL_13:
  sub_24AB943C0(0, &qword_27EF95E88, 0x277CC34B0);
  v39 = sub_24ABABFEC();

  [v37 indexSearchableItems:v39 completionHandler:0];

  if (!*(v23 + 16))
  {
    goto LABEL_17;
  }

LABEL_14:
  v40 = sub_24ABABFEC();

  [v37 deleteSearchableItemsWithIdentifiers:v40 completionHandler:0];

  v41 = sub_24ABABC3C();
  [v37 endIndexBatchWithClientState:v41 completionHandler:0];

LABEL_18:
  sub_24AB943C0(0, &unk_27EF95C58, 0x277CCA9A0);
  v43 = [swift_getObjCClassFromMetadata() defaultCenter];
  if (qword_27EF95310 != -1)
  {
    swift_once();
  }

  [v43 postNotificationName:qword_27EF96060 object:0];

  return v46(0);
}

id sub_24ABA6380(uint64_t a1, void *a2)
{
  v3 = v2;
  v128 = a1;
  v129 = a2;
  v136 = sub_24ABABCBC();
  v4 = *(v136 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v136);
  v134 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v126 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95410, &qword_24ABAD6C0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v137 = &v126 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95428, &qword_24ABAD6D0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v126 - v19;
  v21 = [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
  v22 = type metadata accessor for FileMetadata();
  v23 = v22;
  v127 = *(v2 + *(v22 + 68));
  v135 = v4;
  if (v127 == 1 && (v24 = (v2 + *(v22 + 76)), v24[1]))
  {
    v25 = *v24;
    v140 = 35;
    v141 = 0xE100000000000000;
    MEMORY[0x24C228EB0](v25);
    v26 = sub_24ABABE8C();

    v27 = v26;
    [v21 setLastUsedDate_];
  }

  else
  {
    v28 = *v2;
    v140 = 1029990758;
    v141 = 0xE400000000000000;
    v138 = v28;
    v29 = sub_24ABAC56C();
    MEMORY[0x24C228EB0](v29);

    v30 = sub_24ABABE8C();

    sub_24AB94828(v2 + v23[11], v20, &qword_27EF95428, &qword_24ABAD6D0);
    v31 = *(v4 + 48);
    v32 = v4;
    v33 = v136;
    v34 = v31(v20, 1, v136);
    v27 = v30;
    if (v34 == 1)
    {
      v35 = 0;
    }

    else
    {
      v35 = sub_24ABABC7C();
      (*(v32 + 8))(v20, v33);
    }

    [v21 setLastUsedDate_];
  }

  v133 = v27;
  v36 = objc_opt_self();
  v37 = *MEMORY[0x277CC62F8];
  v38 = [v36 csIdentifierFromFPIdentifier:v27 domainIdentifier:*MEMORY[0x277CC62F8]];

  v39 = v38;
  if (!v38)
  {
    sub_24ABABEBC();
    v39 = sub_24ABABE8C();
  }

  v131 = sub_24ABABEBC();
  v132 = v40;
  [v21 setFileItemID_];

  v126 = &unk_24ABAF7E0;
  v41 = sub_24ABABE8C();
  [v21 setFileProviderID_];

  v130 = v37;
  [v21 setFileProviderDomaindentifier_];
  v42 = sub_24ABABE8C();
  [v21 setBundleID_];

  v43 = v3[1];
  v128 = v3[2];
  v44 = sub_24ABABE8C();
  [v21 setFilename_];

  v45 = v3[3];
  if (v45)
  {
    v140 = 1029990758;
    v141 = 0xE400000000000000;
    v138 = v45;
    v46 = sub_24ABAC56C();
    MEMORY[0x24C228EB0](v46);

    v47 = sub_24ABABE8C();
  }

  else
  {
    v47 = *MEMORY[0x277CC6348];
  }

  v48 = v47;
  v49 = sub_24ABABE8C();
  [v21 setAttribute:v48 forKey:v49];
  v129 = v48;

  v50 = v3[4];
  v51 = v3[5];
  v52 = sub_24ABABE8C();
  [v21 setContentType_];

  v53 = v137;
  sub_24ABABD5C();
  sub_24AB94828(v53, v15, &unk_27EF95410, &qword_24ABAD6C0);
  v54 = sub_24ABABD4C();
  v55 = *(v54 - 8);
  if ((*(v55 + 48))(v15, 1, v54) == 1)
  {
    sub_24AB7C4A4(v15, &unk_27EF95410, &qword_24ABAD6C0);
  }

  else
  {
    v56 = sub_24ABABD3C();
    (*(v55 + 8))(v15, v54);
    sub_24ABA8D48(v56);

    v57 = objc_allocWithZone(MEMORY[0x277CC3440]);
    v58 = sub_24ABABE4C();

    v59 = [v57 initWithLocalizedStrings_];

    [v21 setKind_];
  }

  v60 = v3 + v23[9];
  v61 = sub_24ABABC7C();
  [v21 setContentCreationDate_];

  v62 = v3 + v23[10];
  v63 = sub_24ABABC7C();
  [v21 setContentModificationDate_];

  if (*(v3 + v23[12]))
  {
    v64 = sub_24ABABFEC();
  }

  else
  {
    v64 = 0;
  }

  [v21 setUserTags_];

  v65 = v3 + v23[13];
  if (v65[8])
  {
    v66 = 0;
  }

  else
  {
    v67 = *v65;
    v66 = sub_24ABAC65C();
  }

  [v21 setFavoriteRank_];

  v68 = *(v3 + v23[14]);
  v69 = sub_24ABAC0BC();
  [v21 setFileSize_];

  v70 = *(v3 + v23[16]);
  v71 = sub_24ABAC03C();
  [v21 setTrashed_];

  v72 = sub_24ABAC03C();
  v73 = sub_24ABABE8C();
  [v21 setAttribute:v72 forKey:v73];

  v74 = *(v3 + v23[18]);
  v75 = sub_24ABAC03C();
  v76 = sub_24ABABE8C();
  [v21 setAttribute:v75 forKey:v76];

  v77 = (v3 + v23[19]);
  v78 = *v77;
  v79 = v77[1];
  if (v79)
  {
    v80 = *v77;
    v81 = v77[1];
    v82 = sub_24ABABE8C();
  }

  else
  {
    v82 = 0;
  }

  v83 = sub_24ABABE8C();
  [v21 setAttribute:v82 forKey:v83];
  swift_unknownObjectRelease();

  sub_24AB94828(v3 + v23[21], v10, &qword_27EF95B00, &qword_24ABAED70);
  v84 = sub_24ABABC0C();
  v85 = *(v84 - 8);
  v86 = 0;
  if ((*(v85 + 48))(v10, 1, v84) != 1)
  {
    v86 = sub_24ABABB9C();
    (*(v85 + 8))(v10, v84);
  }

  [v21 setContentURL_];

  v87 = sub_24ABABE8C();
  [v21 setFileProviderID_];

  v88 = sub_24ABAC03C();
  v89 = sub_24ABABE8C();
  [v21 setAttribute:v88 forKey:v89];

  v90 = sub_24ABAC03C();
  v91 = sub_24ABABE8C();
  [v21 setAttribute:v90 forKey:v91];

  v92 = sub_24ABAC03C();
  v93 = sub_24ABABE8C();
  [v21 setAttribute:v92 forKey:v93];

  v94 = sub_24ABAC03C();
  v95 = sub_24ABABE8C();
  [v21 setAttribute:v94 forKey:v95];

  v96 = sub_24ABABE8C();
  v97 = sub_24ABABE8C();
  [v21 setAttribute:v96 forKey:v97];

  v98 = sub_24ABAC03C();
  v99 = sub_24ABABE8C();
  [v21 setAttribute:v98 forKey:v99];

  v100 = sub_24ABAC03C();
  v101 = sub_24ABABE8C();
  [v21 setAttribute:v100 forKey:v101];

  v102 = sub_24ABAC03C();
  v103 = sub_24ABABE8C();
  [v21 setAttribute:v102 forKey:v103];

  v104 = sub_24ABAC03C();
  v105 = sub_24ABABE8C();
  [v21 setAttribute:v104 forKey:v105];

  v106 = sub_24ABABE8C();
  v107 = [v106 stringByDeletingPathExtension];

  if (!v107)
  {
    sub_24ABABEBC();
    v107 = sub_24ABABE8C();
  }

  [v21 setDisplayName_];

  sub_24AB943C0(0, &qword_27EF95E90, 0x277CCABB0);
  v108 = sub_24ABAC1FC();
  [v21 setDownloading_];

  v109 = sub_24ABAC1FC();
  [v21 setShared_];

  v110 = sub_24ABAC1FC();
  [v21 setUploaded_];

  v111 = sub_24ABAC1FC();
  [v21 setUploading_];

  v112 = sub_24ABAC1FC();
  [v21 setUserOwned_];

  sub_24ABA8604();
  v113 = sub_24ABAC23C();
  v114 = sub_24ABABE8C();
  [v21 setAttribute:v113 forKey:v114];

  v140 = sub_24ABABEBC();
  v141 = v115;
  if (v79)
  {
    v138 = 46;
    v139 = 0xE100000000000000;
    MEMORY[0x24C228EB0](v78, v79);
    MEMORY[0x24C228EB0](v138, v139);
  }

  v116 = v136;
  v117 = sub_24ABABE8C();
  [v21 setDomainIdentifier_];

  v118 = objc_allocWithZone(MEMORY[0x277CC34B0]);
  v119 = v21;
  v120 = sub_24ABABE8C();

  v121 = sub_24ABABE8C();

  v122 = [v118 initWithUniqueIdentifier:v120 domainIdentifier:v121 attributeSet:v119];

  v123 = v134;
  sub_24ABABC6C();
  v124 = sub_24ABABC7C();
  (*(v135 + 8))(v123, v116);
  [v122 setExpirationDate_];

  sub_24AB7C4A4(v137, &unk_27EF95410, &qword_24ABAD6C0);
  return v122;
}

uint64_t sub_24ABA7314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = sub_24ABABDFC();
  v24 = *(v11 - 8);
  v12 = *(v24 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24ABABE1C();
  v15 = *(v23 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v23);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v5[2];
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = a4;
  v19[7] = v10;
  aBlock[4] = sub_24ABA9CB0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AB9AA08;
  aBlock[3] = &block_descriptor_17;
  v20 = _Block_copy(aBlock);

  sub_24ABABE0C();
  v25 = MEMORY[0x277D84F90];
  sub_24ABA9E34(&unk_27EF95DB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24ABA9B1C(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24ABAC28C();
  MEMORY[0x24C229110](0, v18, v14, v20);
  _Block_release(v20);
  (*(v24 + 8))(v14, v11);
  (*(v15 + 8))(v18, v23);
}

void sub_24ABA7638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95E48, &qword_24ABAF4B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24ABAD4A0;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;

  v13 = sub_24ABABFEC();

  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v16[4] = sub_24ABA9CF8;
  v16[5] = v14;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_24ABA5B48;
  v16[3] = &block_descriptor_23;
  v15 = _Block_copy(v16);

  [v11 deleteSearchableItemsWithDomainIdentifiers:v13 completionHandler:v15];
  _Block_release(v15);
}

uint64_t sub_24ABA779C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_24AB943C0(0, &unk_27EF95C58, 0x277CCA9A0);
  v4 = [swift_getObjCClassFromMetadata() defaultCenter];
  if (qword_27EF95310 != -1)
  {
    swift_once();
  }

  [v4 postNotificationName:qword_27EF96060 object:0];

  return a2(a1);
}

uint64_t sub_24ABA785C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95DA0, &unk_24ABAF2B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21[-v9];
  v11 = type metadata accessor for IndexingState();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = v3[9];
  v17 = v3[10];
  __swift_project_boxed_opaque_existential_1(v3 + 6, v16);
  (*(v17 + 8))(v3[4], v3[5], a1, a2, v16, v17);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24AB7C4A4(v10, &unk_27EF95DA0, &unk_24ABAF2B0);
    sub_24ABA9BB0();
    v18 = swift_allocError();
    *v19 = 1;
    *a3 = v18;
  }

  else
  {
    sub_24ABA9C04(v10, v15);
    sub_24ABA9C04(v15, a3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B68, &unk_24ABAEDD0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24ABA7A88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24ABABDFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24ABABE1C();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v3 + 16);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_24ABA9AF8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AB9AA08;
  aBlock[3] = &block_descriptor_2;
  v16 = _Block_copy(aBlock);

  sub_24ABABE0C();
  v20 = MEMORY[0x277D84F90];
  sub_24ABA9E34(&unk_27EF95DB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24ABA9B1C(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24ABAC28C();
  MEMORY[0x24C229110](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

void sub_24ABA7D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a1;
  v9[4] = sub_24ABA9BA4;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24ABA7FD8;
  v9[3] = &block_descriptor_11;
  v8 = _Block_copy(v9);

  [v6 fetchLastClientStateWithCompletionHandler_];
  _Block_release(v8);
}

uint64_t sub_24ABA7E68(uint64_t a1, unint64_t a2, void *a3, void (*a4)(uint64_t *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B68, &unk_24ABAEDD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16 - v10);
  if (a2 >> 60 == 15)
  {
    if (a3)
    {
      *v11 = a3;
      swift_storeEnumTagMultiPayload();
      v12 = a3;
    }

    else
    {
      sub_24ABA9BB0();
      v13 = swift_allocError();
      *v14 = 0;
      *v11 = v13;
      swift_storeEnumTagMultiPayload();
    }

    a4(v11);
  }

  else
  {
    sub_24AB7FC5C(a1, a2);
    sub_24ABA785C(a1, a2, v11);
    a4(v11);
    sub_24AB77A88(a1, a2);
  }

  return sub_24AB7C4A4(v11, &qword_27EF95B68, &unk_24ABAEDD0);
}

uint64_t sub_24ABA7FD8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_24ABABC4C();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_24AB77A88(v4, v9);
}

void sub_24ABA8084(uint64_t *a1@<X8>)
{
  v2 = sub_24ABAC0DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v4 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v5 = sub_24ABABFEC();
  [v4 setBundleIDs_];

  v6 = sub_24ABABFEC();
  [v4 setFetchAttributes_];

  v7 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v8 = v4;
  v9 = sub_24ABABE8C();
  v10 = [v7 initWithQueryString:v9 queryContext:v8];

  sub_24ABAC0EC();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95E68, &qword_24ABAF4A8);
  a1[4] = sub_24ABA9B1C(&qword_27EF95E70, &qword_27EF95E68, &qword_24ABAF4A8);
  __swift_allocate_boxed_opaque_existential_1(a1);
  type metadata accessor for FileLocator();
  sub_24ABA9E34(&qword_27EF95E78, MEMORY[0x277CC21F8]);
  sub_24ABAC3BC();
}

uint64_t sub_24ABA82B0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ABA8358, 0, 0);
}

uint64_t sub_24ABA8358()
{
  v1 = v0[3];
  v2 = sub_24ABAC0CC();
  v3 = [v2 attributeSet];

  v4 = [v3 contentURL];
  if (v4)
  {
    v5 = v0[4];
    v6 = v4;
    sub_24ABABBCC();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = v0[4];
  v8 = v0[5];
  v10 = sub_24ABABC0C();
  (*(*(v10 - 8) + 56))(v9, v7, 1, v10);
  sub_24AB94340(v9, v8);
  v11 = [v3 fileItemID];
  if (v11)
  {
    v12 = v11;
    sub_24ABABEBC();

    v13 = sub_24ABA5734();
    v15 = v14;
  }

  else
  {

    v13 = 0;
    v15 = 1;
  }

  v17 = v0[4];
  v16 = v0[5];
  v18 = v0[2];
  *v18 = v13;
  *(v18 + 8) = v15 & 1;
  v19 = type metadata accessor for FileLocator();
  sub_24AB94340(v16, v18 + *(v19 + 20));

  v20 = v0[1];

  return v20();
}

uint64_t sub_24ABA850C()
{
  v1 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t sub_24ABA8604()
{
  v1 = v0;
  v55[9] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for FileMetadata();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v53 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24ABABB1C();
  v51 = *(v6 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v50 - v12;
  v14 = sub_24ABABC0C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v3 + 92);
  v52 = v1;
  sub_24AB94828(v1 + v19, v13, &qword_27EF95B00, &qword_24ABAED70);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_24AB7C4A4(v13, &qword_27EF95B00, &qword_24ABAED70);
LABEL_16:
    result = 3;
    goto LABEL_17;
  }

  (*(v15 + 32))(v18, v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95400, &qword_24ABAD6B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24ABAD4A0;
  v21 = *MEMORY[0x277CBE868];
  *(inited + 32) = *MEMORY[0x277CBE868];
  v22 = v21;
  sub_24AB76854(inited);
  swift_setDeallocating();
  sub_24ABA9DD4(inited + 32, type metadata accessor for URLResourceKey);
  sub_24ABABB7C();

  sub_24ABABAEC();
  (*(v51 + 8))(v9, v6);
  v36 = [objc_opt_self() defaultManager];
  sub_24ABABBDC();
  v37 = sub_24ABABE8C();

  v55[0] = 0;
  v38 = [v36 attributesOfItemAtPath:v37 error:v55];

  v39 = v55[0];
  if (!v38)
  {
    v48 = v55[0];
    v49 = sub_24ABABB5C();

    swift_willThrow();
    (*(v15 + 8))(v18, v14);
    v23 = v53;
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v24 = sub_24ABABD8C();
    __swift_project_value_buffer(v24, qword_27EF95FD8);
    sub_24ABA9D70(v52, v23);
    v25 = v49;
    v26 = sub_24ABABD6C();
    v27 = sub_24ABAC11C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v55[0] = v30;
      *v28 = 136315394;
      v31 = *(v23 + 8);
      v32 = *(v23 + 16);

      sub_24ABA9DD4(v23, type metadata accessor for FileMetadata);
      v33 = sub_24AB760CC(v31, v32, v55);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2112;
      v34 = v49;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v35;
      *v29 = v35;
      _os_log_impl(&dword_24AB6F000, v26, v27, "Error retrieving capabilities for %s : %@", v28, 0x16u);
      sub_24AB7C4A4(v29, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v29, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x24C229EC0](v30, -1, -1);
      MEMORY[0x24C229EC0](v28, -1, -1);
    }

    else
    {

      sub_24ABA9DD4(v23, type metadata accessor for FileMetadata);
    }

    goto LABEL_16;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_24ABA9E34(&qword_27EF95690, type metadata accessor for FileAttributeKey);
  v40 = sub_24ABABE5C();
  v41 = v39;

  if (!*(v40 + 16) || (v42 = sub_24AB7E544(*MEMORY[0x277CCA180]), (v43 & 1) == 0))
  {

    goto LABEL_15;
  }

  sub_24AB77950(*(v40 + 56) + 32 * v42, v55);

  sub_24AB943C0(0, &qword_27EF95E90, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    (*(v15 + 8))(v18, v14);
    goto LABEL_16;
  }

  v44 = v54;
  [v54 unsignedShortValue];
  v45 = sub_24ABAC1EC();

  (*(v15 + 8))(v18, v14);
  result = v45;
LABEL_17:
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24ABA8D48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95E98, qword_24ABAF4B8);
    v2 = sub_24ABAC40C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v35[0] = *v14;
    *(&v35[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_24ABA28B4(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_24ABA28B4(v34, v35);
    v19 = *(v2 + 40);
    result = sub_24ABAC2AC();
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v7 + 8 * (v21 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      while (++v22 != v24 || (v23 & 1) == 0)
      {
        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v7 + 8 * v22);
        if (v26 != -1)
        {
          v10 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v21) & ~*(v7 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v27;
    *(v11 + 16) = v28;
    *(v11 + 32) = v29;
    result = sub_24ABA28B4(v35, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unsigned __int8 *sub_24ABA9010(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_24ABABFBC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_24ABA9594();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
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
      result = sub_24ABAC34C();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
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
                  goto LABEL_129;
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

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_24ABA9594()
{
  v0 = sub_24ABABFCC();
  v4 = sub_24ABA9614(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_24ABA9614(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_24ABABEEC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_24ABAC22C();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_24AB7650C(v9, 0);
  v12 = sub_24ABA976C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_24ABABEEC();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_24ABAC34C();
LABEL_4:

  return sub_24ABABEEC();
}

unint64_t sub_24ABA976C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_24ABA998C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_24ABABF7C();
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
          result = sub_24ABAC34C();
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

    result = sub_24ABA998C(v12, a6, a7);
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

    result = sub_24ABABF5C();
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

uint64_t sub_24ABA998C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24ABABF8C();
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
    v5 = MEMORY[0x24C228EF0](15, a1 >> 16);
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

unint64_t sub_24ABA9A08(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_24ABABF1C();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_24ABABFCC();
}

uint64_t sub_24ABA9AB8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24ABA9B1C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24ABA9B64()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24ABA9BA4(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  return sub_24ABA7E68(a1, a2, a3, *(v3 + 16));
}

unint64_t sub_24ABA9BB0()
{
  result = qword_27EF95E80;
  if (!qword_27EF95E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95E80);
  }

  return result;
}

uint64_t sub_24ABA9C04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexingState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ABA9C68()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24ABA9CC0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24ABA9CF8(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_24ABA779C(a1, *(v1 + 16));
}

uint64_t sub_24ABA9D04()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  sub_24AB77A9C(v0[5], v0[6]);
  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24ABA9D70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ABA9DD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24ABA9E34(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_24ABA9E7C()
{
  sub_24ABAC2FC();
  MEMORY[0x24C228EB0](0xD000000000000017, 0x800000024ABB0600);
  MEMORY[0x24C228EB0](0xD000000000000023, 0x800000024ABAF7E0);
  MEMORY[0x24C228EB0](47, 0xE100000000000000);
  v7 = *MEMORY[0x277CC62F8];
  type metadata accessor for NSFileProviderDomainIdentifier(0);
  sub_24ABAC3AC();
  v0 = *MEMORY[0x277CCA1A0];
  sub_24ABABEBC();
  v1 = objc_allocWithZone(MEMORY[0x277CC34A8]);
  v2 = sub_24ABABE8C();

  v3 = sub_24ABABE8C();

  v4 = sub_24ABABE8C();
  v5 = [v1 initWithName:v2 protectionClass:v3 bundleIdentifier:v4];

  return v5;
}

uint64_t sub_24ABAA038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FIRoot.State(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24ABAA0B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FIRoot.State(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for IndexingState()
{
  result = qword_27EF95EA0;
  if (!qword_27EF95EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ABAA174()
{
  result = type metadata accessor for FIRoot.State(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24ABAA1E0@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for FIRoot.State(0);
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B70, &qword_24ABAF540);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  (*(v3 + 56))(&v18 - v12, 1, 1, v2);
  sub_24ABAAA1C(v13, v11);
  if ((*(v3 + 48))(v11, 1, v2) == 1)
  {
    sub_24ABAAA8C(v11);
    v14 = v2[5];
    v15 = sub_24ABABD0C();
    (*(*(v15 - 8) + 56))(&a1[v14], 1, 1, v15);
    result = sub_24ABAAA8C(v13);
    *a1 = -1;
    v17 = MEMORY[0x277D84F90];
    *&a1[v2[6]] = MEMORY[0x277D84F90];
    *&a1[v2[7]] = v17;
  }

  else
  {
    sub_24ABAAA8C(v13);
    sub_24ABAA970(v11, v6, type metadata accessor for FIRoot.State);
    return sub_24ABAA970(v6, a1, type metadata accessor for FIRoot.State);
  }

  return result;
}

uint64_t sub_24ABAA430@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for FIRoot.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95EB0, &qword_24ABAF530);
  v19 = *(v7 - 8);
  v8 = *(v19 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for IndexingState();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ABAA91C();
  sub_24ABAC66C();
  if (!v2)
  {
    v16 = v20;
    sub_24ABAA9D8(&qword_27EF95EC0);
    v17 = v21;
    sub_24ABAC48C();
    (*(v19 + 8))(v10, v7);
    sub_24ABAA970(v17, v14, type metadata accessor for FIRoot.State);
    sub_24ABAA970(v14, v16, type metadata accessor for IndexingState);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_24ABAA6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1868983913 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24ABAC58C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24ABAA728(uint64_t a1)
{
  v2 = sub_24ABAA91C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ABAA764(uint64_t a1)
{
  v2 = sub_24ABAA91C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ABAA7B8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95EC8, &qword_24ABAF538);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ABAA91C();
  sub_24ABAC67C();
  type metadata accessor for FIRoot.State(0);
  sub_24ABAA9D8(&qword_27EF95ED0);
  sub_24ABAC52C();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_24ABAA91C()
{
  result = qword_27EF95EB8;
  if (!qword_27EF95EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95EB8);
  }

  return result;
}

uint64_t sub_24ABAA970(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ABAA9D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FIRoot.State(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24ABAAA1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B70, &qword_24ABAF540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ABAAA8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B70, &qword_24ABAF540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24ABAAB08()
{
  result = qword_27EF95ED8;
  if (!qword_27EF95ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95ED8);
  }

  return result;
}

unint64_t sub_24ABAAB60()
{
  result = qword_27EF95EE0;
  if (!qword_27EF95EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95EE0);
  }

  return result;
}

unint64_t sub_24ABAABB8()
{
  result = qword_27EF95EE8;
  if (!qword_27EF95EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95EE8);
  }

  return result;
}

uint64_t sub_24ABAAC34@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FileMetadata();
  v3 = v2[11];
  v4 = sub_24ABABCBC();
  v5 = *(v4 - 8);
  v13 = *(v5 + 56);
  v13(a1 + v3, 1, 1, v4);
  *(a1 + v2[12]) = 0;
  v6 = a1 + v2[13];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (a1 + v2[19]);
  *v7 = 0;
  v7[1] = 0;
  v8 = v2[21];
  v9 = sub_24ABABC0C();
  v14 = *(*(v9 - 8) + 56);
  (v14)((v9 - 8), a1 + v8, 1, 1, v9);
  *a1 = xmmword_24ABAF660;
  *(a1 + 16) = 0xED0000746E617473;
  *(a1 + 24) = xmmword_24ABAF670;
  *(a1 + 40) = 0xE700000000000000;
  *(a1 + 48) = 8;
  v10 = v2[9];
  sub_24ABABCAC();
  v11 = *(v5 + 16);
  v11(a1 + v2[10], a1 + v10, v4);
  sub_24AB7C4A4(a1 + v3, &qword_27EF95428, &qword_24ABAD6D0);
  v11(a1 + v3, a1 + v10, v4);
  v13(a1 + v3, 0, 1, v4);
  *(a1 + v2[14]) = 0xBFF0000000000000;
  *(a1 + v2[15]) = 0;
  *(a1 + v2[16]) = 0;
  *(a1 + v2[17]) = 0;
  *(a1 + v2[18]) = 0;
  *(a1 + v2[20]) = xmmword_24ABAF680;
  sub_24AB7C4A4(a1 + v8, &qword_27EF95B00, &qword_24ABAED70);

  return v14(a1 + v8, 1, 1, v9);
}

unint64_t sub_24ABAAE98@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24ABAAED0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_24ABAAED0(unint64_t result)
{
  if (result >= 0xB)
  {
    return 11;
  }

  return result;
}

uint64_t type metadata accessor for FileMetadata()
{
  result = qword_27EF95EF0;
  if (!qword_27EF95EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24ABAAF2C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_24ABAAF60(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_24ABABCBC();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95428, &qword_24ABAD6D0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[21];

  return v15(v16, a2, v14);
}

uint64_t sub_24ABAB0F8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = sub_24ABABCBC();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95428, &qword_24ABAD6D0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[21];

  return v15(v16, a2, a2, v14);
}

void sub_24ABAB27C()
{
  sub_24ABABCBC();
  if (v0 <= 0x3F)
  {
    sub_24ABAB4C0(319, &qword_27EF95F00, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      sub_24ABAB410();
      if (v2 <= 0x3F)
      {
        sub_24ABAB474(319, &qword_27EF95F18);
        if (v3 <= 0x3F)
        {
          sub_24ABAB474(319, &qword_27EF95960);
          if (v4 <= 0x3F)
          {
            sub_24ABAB4C0(319, &qword_27EF95F20, MEMORY[0x277CC9260]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_24ABAB410()
{
  if (!qword_27EF95F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF95F10, &qword_24ABAF6C8);
    v0 = sub_24ABAC20C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF95F08);
    }
  }
}

void sub_24ABAB474(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_24ABAC20C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_24ABAB4C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24ABAC20C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for VNodeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VNodeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24ABAB668()
{
  result = qword_27EF95F28;
  if (!qword_27EF95F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95F28);
  }

  return result;
}

uint64_t sub_24ABAB784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_24ABAB81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t type metadata accessor for FileLocator()
{
  result = qword_27EF95F30;
  if (!qword_27EF95F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24ABAB8F0()
{
  sub_24ABAB974();
  if (v0 <= 0x3F)
  {
    sub_24ABAB9C4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24ABAB974()
{
  if (!qword_27EF95F18)
  {
    v0 = sub_24ABAC20C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF95F18);
    }
  }
}

void sub_24ABAB9C4()
{
  if (!qword_27EF95F20)
  {
    sub_24ABABC0C();
    v0 = sub_24ABAC20C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF95F20);
    }
  }
}
unint64_t sub_24ACBE074()
{
  result = qword_27EF9EC88;
  if (!qword_27EF9EC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EC88);
  }

  return result;
}

unint64_t sub_24ACBE0CC()
{
  result = qword_27EF9EC90;
  if (!qword_27EF9EC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EC90);
  }

  return result;
}

unint64_t sub_24ACBE124()
{
  result = qword_27EF9EC98;
  if (!qword_27EF9EC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9ECA0, &qword_24ACD8020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EC98);
  }

  return result;
}

unint64_t sub_24ACBE19C()
{
  result = qword_2814AD8A0;
  if (!qword_2814AD8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AD8A0);
  }

  return result;
}

unint64_t sub_24ACBE1F4()
{
  result = qword_2814AD898;
  if (!qword_2814AD898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AD898);
  }

  return result;
}

uint64_t sub_24ACBE270(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_24ACBE2AC()
{
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  v0 = type metadata accessor for Controller();
  v1 = sub_24ACBF488(&qword_27EF9ECD0);
  v2 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v2);

  MEMORY[0x24C22CD50](32, 0xE100000000000000);
  v3 = MEMORY[0x24C22D370](v0, v1);
  MEMORY[0x24C22CD50](v3);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  sub_24ACBF488(&qword_27EF9ECD8);
  sub_24ACD0A30();
  sub_24ACD0B10();
  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_24ACBE40C()
{
  v0 = sub_24ACD0490();
  __swift_allocate_value_buffer(v0, qword_27EF9ECA8);
  v1 = __swift_project_value_buffer(v0, qword_27EF9ECA8);
  if (qword_27EF9DC78 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27EFA5E20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t Controller.Error.hashValue.getter()
{
  v1 = *v0;
  sub_24ACD0D10();
  MEMORY[0x24C22D480](v1);
  return sub_24ACD0D50();
}

uint64_t Controller.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = [objc_allocWithZone(MEMORY[0x277CBE010]) init];
  return v0;
}

uint64_t Controller.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = [objc_allocWithZone(MEMORY[0x277CBE010]) init];
  return v0;
}

uint64_t sub_24ACBE5F0(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2[19] = a1;
  v2[20] = v1;
  v3 = *(*(type metadata accessor for Device() - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v4 = sub_24ACD0420();
  v2[22] = v4;
  v5 = *(v4 - 8);
  v2[23] = v5;
  v6 = *(v5 + 64) + 15;
  v2[24] = swift_task_alloc();
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_24ACBE708, v1, 0);
}

uint64_t sub_24ACBE708()
{
  v60 = v0;
  v59[1] = *MEMORY[0x277D85DE8];
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E898, &qword_24ACD66C0);
  sub_24ACCFFE0();
  v57 = sub_24ACD03C0();
  v6 = v5;
  (*(v1 + 8))(v2, v3);
  if (qword_27EF9DC70 != -1)
  {
LABEL_29:
    swift_once();
  }

  v7 = v0[21];
  v8 = v0[19];
  v9 = sub_24ACD0490();
  __swift_project_value_buffer(v9, qword_27EF9ECA8);
  sub_24ACBF028(v8, v7);
  v10 = sub_24ACD0470();
  v11 = sub_24ACD0930();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[21];
  v58 = v0;
  if (v12)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v59[0] = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_24AC29E20(0x6428726961706E75, 0xEF293A6563697665, v59);
    *(v14 + 12) = 2082;
    v16 = v6;
    v17 = Device.description.getter();
    v19 = v18;
    sub_24ACBF08C(v13);
    v20 = v17;
    v6 = v16;
    v0 = v58;
    v21 = sub_24AC29E20(v20, v19, v59);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_24AC18000, v10, v11, "%s %{public}s!", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v15, -1, -1);
    MEMORY[0x24C22DC60](v14, -1, -1);
  }

  else
  {

    sub_24ACBF08C(v13);
  }

  v22 = objc_opt_self();
  v0[18] = 0;
  v23 = [v22 devicesWithDiscoveryFlags:0x800000 error:v0 + 18];
  v24 = v0[18];
  if (!v23)
  {
    v42 = v24;

    sub_24ACD0220();

LABEL_34:
    swift_willThrow();
    v52 = v0[24];
    v53 = v0[21];

    v54 = v0[1];
    v55 = *MEMORY[0x277D85DE8];

    return v54();
  }

  v25 = v23;
  sub_24ACBF0E8();
  v26 = sub_24ACD0700();
  v27 = v24;

  if (v26 >> 62)
  {
    v28 = sub_24ACD0B30();
    if (v28)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

  v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
LABEL_31:

    v47 = sub_24ACD0470();
    v48 = sub_24ACD0910();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v59[0] = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_24AC29E20(0x6428726961706E75, 0xEF293A6563697665, v59);
      _os_log_impl(&dword_24AC18000, v47, v48, "%s Missing underlying CBDevice!", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x24C22DC60](v50, -1, -1);
      MEMORY[0x24C22DC60](v49, -1, -1);
    }

    sub_24ACBF14C();
    swift_allocError();
    *v51 = 1;
    goto LABEL_34;
  }

LABEL_8:
  v29 = 0;
  while (1)
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x24C22D1B0](v29, v26);
    }

    else
    {
      if (v29 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v30 = *(v26 + 8 * v29 + 32);
    }

    v31 = v30;
    v0[25] = v30;
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v33 = [v30 identifier];
    if (!v33)
    {
      goto LABEL_9;
    }

    v34 = v33;
    v35 = v6;
    v36 = sub_24ACD0590();
    v38 = v37;

    v39 = v36;
    v6 = v35;
    if (v39 == v57 && v38 == v35)
    {
      break;
    }

    v41 = sub_24ACD0C40();

    v0 = v58;
    if (v41)
    {
      goto LABEL_24;
    }

LABEL_9:

    ++v29;
    if (v32 == v28)
    {
      goto LABEL_31;
    }
  }

  v0 = v58;
LABEL_24:
  v43 = v0[20];

  v44 = *(v43 + 112);
  v0[2] = v0;
  v0[3] = sub_24ACBED80;
  v45 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E910, &unk_24ACD6B30);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24ACB2A64;
  v0[13] = &block_descriptor_1;
  v0[14] = v45;
  [v44 deleteDevice:v31 completion:v0 + 10];
  v46 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24ACBED80()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 208) = v3;
  v4 = *(v1 + 160);
  if (v3)
  {
    v5 = sub_24ACBEF78;
  }

  else
  {
    v5 = sub_24ACBEECC;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24ACBEECC()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);

  v3 = *(v0 + 8);
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t sub_24ACBEF78()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[25];
  v2 = v0[26];
  swift_willThrow();

  v3 = v0[26];
  v4 = v0[24];
  v5 = v0[21];

  v6 = v0[1];
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t sub_24ACBF028(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Device();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ACBF08C(uint64_t a1)
{
  v2 = type metadata accessor for Device();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24ACBF0E8()
{
  result = qword_2814ACFA8;
  if (!qword_2814ACFA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814ACFA8);
  }

  return result;
}

unint64_t sub_24ACBF14C()
{
  result = qword_27EF9ECC0;
  if (!qword_27EF9ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9ECC0);
  }

  return result;
}

uint64_t Controller.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24ACBF20C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC20274;

  return sub_24ACBE5F0(a1);
}

uint64_t sub_24ACBF2A0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for Controller();
  result = sub_24ACD0A40();
  *a1 = result;
  return result;
}

uint64_t sub_24ACBF304()
{
  v0 = sub_24ACD0490();
  __swift_allocate_value_buffer(v0, qword_27EFA5E20);
  __swift_project_value_buffer(v0, qword_27EFA5E20);
  return sub_24ACD0480();
}

unint64_t sub_24ACBF384()
{
  result = qword_27EF9ECC8;
  if (!qword_27EF9ECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9ECC8);
  }

  return result;
}

uint64_t sub_24ACBF3D8(void *a1)
{
  a1[1] = sub_24ACBF488(&qword_27EF9ECD0);
  a1[2] = sub_24ACBF488(&qword_27EF9ECD8);
  result = sub_24ACBF488(qword_27EF9ECE0);
  a1[3] = result;
  return result;
}

uint64_t sub_24ACBF488(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Controller();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of Controller.unpair(device:)(uint64_t a1)
{
  v4 = *(*v1 + 104);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC20274;

  return v8(a1);
}

char *fragment(data:mtu:)()
{
  v0 = sub_24ACD0240();
  v1 = sub_24ACBF684(v0);

  return v1;
}

char *sub_24ACBF684(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x277D84F90];
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDF0, &qword_24ACD8480);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_24ACD39E0;
      *(v7 + 32) = v2 == 1;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E3E8, &qword_24ACD50A0);
      v30 = v8;
      v31 = sub_24ACC13DC();
      v28 = v7;
      v9 = __swift_project_boxed_opaque_existential_0(&v28, v8);
      v10 = *v9;
      v11 = *(*v9 + 16);
      if (v11)
      {
        if (v11 <= 0xE)
        {
          memset(__dst, 0, sizeof(__dst));
          v27 = v11;
          memcpy(__dst, (v10 + 32), v11);
          v17 = *__dst;
          v1 = v1 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v27 << 16)) << 32);
          sub_24AC46630(v5, v6);
          v18 = v1;
        }

        else
        {
          v12 = sub_24ACD0200();
          v13 = *(v12 + 48);
          v14 = *(v12 + 52);
          swift_allocObject();
          sub_24AC46630(v5, v6);
          v15 = sub_24ACD01B0();
          v16 = v15;
          if (v11 >= 0x7FFFFFFF)
          {
            sub_24ACD0280();
            v17 = swift_allocObject();
            *(v17 + 16) = 0;
            *(v17 + 24) = v11;
            v18 = v16 | 0x8000000000000000;
          }

          else
          {
            v17 = v11 << 32;
            v18 = v15 | 0x4000000000000000;
          }
        }
      }

      else
      {
        sub_24AC46630(v5, v6);
        v17 = 0;
        v18 = 0xC000000000000000;
      }

      __swift_destroy_boxed_opaque_existential_0(&v28);
      v28 = v17;
      v29 = v18;
      sub_24ACD02E0();
      v19 = v28;
      v20 = v29;
      sub_24AC46630(v28, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_24AC1D940(0, *(v3 + 2) + 1, 1, v3);
      }

      v22 = *(v3 + 2);
      v21 = *(v3 + 3);
      if (v22 >= v21 >> 1)
      {
        v3 = sub_24AC1D940((v21 > 1), v22 + 1, 1, v3);
      }

      v4 += 2;
      sub_24AC46698(v5, v6);
      sub_24AC46698(v28, v29);
      *(v3 + 2) = v22 + 1;
      v23 = &v3[16 * v22];
      *(v23 + 4) = v19;
      *(v23 + 5) = v20;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v24 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t AsyncSequence<>.reassemble()(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ReassemblingAsyncSequence();
  v2[5] = v5;
  v6 = *(v5 - 8);
  v2[6] = v6;
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v2[8] = v8;
  v2[9] = swift_task_alloc();
  v9 = swift_task_alloc();
  v2[10] = v9;
  *v9 = v2;
  v9[1] = sub_24ACBFA58;

  return sub_24ACBFFD4(v8, a1, a2);
}

uint64_t sub_24ACBFA58()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_24ACBFED4;
  }

  else
  {
    v3 = sub_24ACBFB6C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24ACBFB6C()
{
  v1 = v0[8];
  v2 = v0[7];
  v3 = v0[5];
  (*(v0[6] + 16))(v0[9], v1, v3);
  v4 = *(v2 + 8);
  v0[12] = v4;
  v0[13] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v3);
  v5 = *(MEMORY[0x277D856F8] + 4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  WitnessTable = swift_getWitnessTable();
  *v6 = v0;
  v6[1] = sub_24ACBFC9C;
  v8 = v0[9];
  v9 = v0[5];

  return MEMORY[0x282200320](v0 + 2, 0, 0, v9, WitnessTable, v0 + 4);
}

uint64_t sub_24ACBFC9C()
{
  v2 = *(*v1 + 112);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_24ACBFF40;
  }

  else
  {
    v3 = sub_24ACBFDAC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24ACBFDAC()
{
  v1 = *(v0 + 104);
  (*(v0 + 96))(*(v0 + 72), *(v0 + 40));
  v2 = *(v0 + 24);
  if (v2 >> 60 == 15)
  {
    type metadata accessor for CentralManager.Error();
    sub_24ACC0164();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 16);
    v9 = *(v0 + 64);
    v8 = *(v0 + 72);

    v10 = *(v0 + 8);

    return v10(v7, v2);
  }
}

uint64_t sub_24ACBFED4()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24ACBFF40()
{
  v1 = *(v0 + 104);
  (*(v0 + 96))(*(v0 + 72), *(v0 + 40));
  v2 = *(v0 + 32);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24ACBFFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(a2 - 8);
  v4[6] = v5;
  v6 = *(v5 + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACC008C, 0, 0);
}

uint64_t sub_24ACC008C()
{
  v1 = v0[7];
  v2 = v0[4];
  v4 = v0[2];
  v3 = v0[3];
  (*(v0[6] + 16))(v1, v0[5], v3);
  sub_24ACC01BC(v1, v3, v4);

  v5 = v0[1];

  return v5();
}

unint64_t sub_24ACC0164()
{
  result = qword_27EF9E050;
  if (!qword_27EF9E050)
  {
    type metadata accessor for CentralManager.Error();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E050);
  }

  return result;
}

uint64_t sub_24ACC01BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ReassemblingAsyncSequence();
  *(a3 + *(v10 + 36)) = xmmword_24ACD8380;
  *(a3 + *(v10 + 40)) = 0;
  (*(v6 + 16))(v9, a1, a2);
  sub_24ACD0870();
  return (*(v6 + 8))(a1, a2);
}

uint64_t ReassemblingAsyncSequence.next()(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_24ACC02F4, 0, 0);
}

uint64_t sub_24ACC02F4()
{
  if (*(*(v0 + 40) + *(*(v0 + 32) + 40)))
  {
    v1 = *(v0 + 8);

    return v1(0, 0xF000000000000000);
  }

  else
  {
    *(v0 + 48) = xmmword_24ACD39F0;
    sub_24ACD0850();
    v3 = *(v0 + 32);
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = *(MEMORY[0x277D856D0] + 4);
    v9 = swift_task_alloc();
    *(v0 + 64) = v9;
    *v9 = v0;
    v9[1] = sub_24ACC04AC;
    v10 = *(v0 + 40);

    return MEMORY[0x282200308](v0 + 16, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_24ACC04AC()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_24ACC0A84;
  }

  else
  {
    v3 = sub_24ACC05C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24ACC05C0()
{
  v1 = sub_24AC46684(v0[6], v0[7]);
  v5 = v0[2];
  v4 = v0[3];
  if (v4 >> 60 == 15)
  {
    goto LABEL_12;
  }

  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 != 2)
    {
LABEL_9:
      sub_24AC46684(v0[2], v0[3]);
      goto LABEL_11;
    }

    if (*(v5 + 16) == *(v5 + 24))
    {
LABEL_11:
      sub_24AC46684(v5, v4);
LABEL_12:
      v9 = 0;
      v10 = 0xF000000000000000;
      goto LABEL_13;
    }
  }

  else
  {
    if (!v6)
    {
      if ((v4 & 0xFF000000000000) != 0)
      {
        v7 = v0[2];
        v8 = BYTE6(v4);
        goto LABEL_31;
      }

      goto LABEL_9;
    }

    if (v5 == v5 >> 32)
    {
      goto LABEL_11;
    }
  }

  v1 = sub_24AC4661C(v0[2], v0[3]);
  if (v6 == 2)
  {
    v14 = *(v5 + 16);
    v13 = *(v5 + 24);
    v8 = v13 - v14;
    if (__OFSUB__(v13, v14))
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    if (v14 > 0)
    {
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    if (v13 < 1)
    {
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v1 = sub_24ACD01C0();
    if (!v1)
    {
LABEL_90:
      __break(1u);
      return MEMORY[0x282200308](v1, v2, v3);
    }

    v15 = v1;
    v1 = sub_24ACD01F0();
    v16 = -v1;
    if (!__OFSUB__(0, v1))
    {
      goto LABEL_30;
    }

    __break(1u);
  }

  if (__OFSUB__(HIDWORD(v5), v5))
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v5 < 0x100000000 || v5 > 0)
  {
    goto LABEL_86;
  }

  v1 = sub_24ACD01C0();
  if (!v1)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v15 = v1;
  v1 = sub_24ACD01F0();
  v16 = -v1;
  if (__OFSUB__(0, v1))
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v8 = HIDWORD(v5) - v5;
LABEL_30:
  v7 = *(v15 + v16);
LABEL_31:
  v17 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (v17 < 0)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      v18 = v5 >> 32;
      v19 = v5;
    }

    else
    {
      v19 = *(v5 + 16);
      v18 = *(v5 + 24);
    }

    v1 = sub_24AC4661C(v5, v4);
    if (v18 < v19)
    {
      goto LABEL_78;
    }

    if (v6 == 2)
    {
      v20 = *(v5 + 16);
      v21 = *(v5 + 24);
    }

    else
    {
      v20 = v5;
      v21 = v5 >> 32;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v18 = BYTE6(v4);
    v21 = BYTE6(v4);
  }

  if (v21 < v19 || v19 < v20)
  {
    goto LABEL_79;
  }

  v22 = v19 - v18;
  if (__OFSUB__(v19, v18))
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v23 = -v17;
  if (v22 > 0 || v22 <= v23)
  {
    v1 = v18 - v17;
    if (__OFADD__(v18, v23))
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    if (v6 == 2)
    {
      v24 = *(v5 + 16);
      v25 = *(v5 + 24);
    }

    else if (v6 == 1)
    {
      v24 = v5;
      v25 = v5 >> 32;
    }

    else
    {
      v24 = 0;
      v25 = BYTE6(v4);
    }

    if (v25 < v1 || v1 < v24)
    {
      goto LABEL_82;
    }

    if (v6)
    {
      if (v6 == 1)
      {
        v2 = v5 >> 32;
        goto LABEL_65;
      }

      goto LABEL_64;
    }

LABEL_63:
    v2 = BYTE6(v4);
    goto LABEL_65;
  }

  if (!v6)
  {
    v1 = 0;
    goto LABEL_63;
  }

  if (v6 != 2)
  {
    v1 = v5;
    v2 = v5 >> 32;
    goto LABEL_65;
  }

  v1 = *(v5 + 16);
LABEL_64:
  v2 = *(v5 + 24);
LABEL_65:
  if (v2 < v1)
  {
    __break(1u);
    goto LABEL_76;
  }

  v27 = v0[4];
  v26 = v0[5];
  v28 = sub_24ACD02A0();
  v30 = v29;
  sub_24AC46684(v5, v4);
  v31 = (v26 + *(v27 + 36));
  sub_24ACD02E0();
  sub_24AC46684(v5, v4);
  sub_24AC46698(v28, v30);
  if ((v7 & 1) == 0)
  {
    v32 = v0[9];
    v0[6] = v5;
    v0[7] = v4;
    sub_24ACD0850();
    if (v32)
    {
      sub_24AC46684(v5, v4);
      v33 = v0[1];

      return v33();
    }

    v36 = v0[4];
    v38 = *(v36 + 16);
    v37 = *(v36 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v41 = *(MEMORY[0x277D856D0] + 4);
    v42 = swift_task_alloc();
    v0[8] = v42;
    *v42 = v0;
    v42[1] = sub_24ACC04AC;
    v43 = v0[5];
    v1 = (v0 + 2);
    v2 = AssociatedTypeWitness;
    v3 = AssociatedConformanceWitness;

    return MEMORY[0x282200308](v1, v2, v3);
  }

  sub_24AC46684(v5, v4);
  v34 = *v31;
  v35 = v31[1];
  sub_24AC46630(v34, v35);
  v10 = v35;
  v9 = v34;
LABEL_13:
  v11 = v0[1];

  return v11(v9, v10);
}

uint64_t sub_24ACC0A84()
{
  sub_24AC46684(v0[6], v0[7]);
  v1 = v0[9];
  v2 = v0[1];

  return v2();
}

uint64_t sub_24ACC0AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ReassemblingAsyncSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_24ACC0B48(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_24ACC0BE0;

  return ReassemblingAsyncSequence.next()(a2);
}

uint64_t sub_24ACC0BE0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (!v2)
  {
    v9 = *(v6 + 16);
    *v9 = a1;
    v9[1] = a2;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_24ACC0CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x277D856F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_24ACC0DD0;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_24ACC0DD0()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_24ACC0F10(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24ACC0FA8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v11 < a2)
  {
    v13 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
    if (v13 <= 3)
    {
      v14 = ((a2 - v11 + 255) >> 8) + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = *&a1[v13];
        if (*&a1[v13])
        {
          goto LABEL_20;
        }
      }

      else
      {
        v17 = *&a1[v13];
        if (v17)
        {
          goto LABEL_20;
        }
      }
    }

    else if (v16)
    {
      v17 = a1[v13];
      if (a1[v13])
      {
LABEL_20:
        v18 = (v17 - 1) << (8 * v13);
        if (v13 <= 3)
        {
          v19 = *a1;
        }

        else
        {
          v18 = 0;
          v19 = *a1;
        }

        v23 = v11 + (v19 | v18);
        return (v23 + 1);
      }
    }
  }

  if (v10 < 0xFE)
  {
    v22 = *((&a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v22 >= 2)
    {
      v23 = (v22 + 2147483646) & 0x7FFFFFFF;
      return (v23 + 1);
    }

    return 0;
  }

  v20 = *(v9 + 48);

  return v20(a1);
}

void sub_24ACC1150(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v12 >= a3)
  {
    v16 = 0;
    if (v12 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v13 <= 3)
    {
      v14 = ((a3 - v12 + 255) >> 8) + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v12 >= a2)
    {
LABEL_17:
      if (v16 > 1)
      {
        if (v16 != 2)
        {
          *&a1[v13] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v13] = 0;
      }

      else if (v16)
      {
        a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v10 < 0xFE)
      {
        *((&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8) + 16) = a2 + 1;
      }

      else
      {
        v19 = *(v9 + 56);

        v19(a1, a2);
      }

      return;
    }
  }

  v17 = ~v12 + a2;
  bzero(a1, v13);
  if (v13 <= 3)
  {
    v18 = (v17 >> 8) + 1;
  }

  else
  {
    v18 = 1;
  }

  if (v13 <= 3)
  {
    *a1 = v17;
    if (v16 > 1)
    {
LABEL_27:
      if (v16 == 2)
      {
        *&a1[v13] = v18;
      }

      else
      {
        *&a1[v13] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v17;
    if (v16 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v16)
  {
    a1[v13] = v18;
  }
}

_BYTE *sub_24ACC1348@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_24ACC1440(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_24ACC14F8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_24ACC1574(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t sub_24ACC13DC()
{
  result = qword_27EF9ED68;
  if (!qword_27EF9ED68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9E3E8, &qword_24ACD50A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9ED68);
  }

  return result;
}

uint64_t sub_24ACC1440(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24ACC14F8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_24ACD0200();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_24ACD01B0();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_24ACD0280();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_24ACC1574(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_24ACD0200();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_24ACD01B0();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t ScanMode.description.getter()
{
  v1 = *v0;
  if (v0[1])
  {
    v5 = 0x657361436573752ELL;
    v2 = ScanUseCase.description.getter();
  }

  else
  {
    sub_24ACD0A20();

    v5 = 0xD000000000000014;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
    v2 = MEMORY[0x24C22CE70](v1, v3);
  }

  MEMORY[0x24C22CD50](v2);

  MEMORY[0x24C22CD50](41, 0xE100000000000000);
  return v5;
}

FindMyBluetooth::TransportType_optional __swiftcall TransportType.init(rawValue:)(FindMyBluetooth::TransportType_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= FindMyBluetooth_TransportType_unknownDefault)
  {
    value = FindMyBluetooth_TransportType_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

uint64_t TransportType.description.getter()
{
  v1 = 0x63697373616C632ELL;
  if (*v0 != 1)
  {
    v1 = 0x72656E45776F6C2ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E752ELL;
  }
}

unint64_t sub_24ACC1778()
{
  result = qword_27EF9ED70;
  if (!qword_27EF9ED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9ED70);
  }

  return result;
}

uint64_t sub_24ACC17D4()
{
  v1 = 0x63697373616C632ELL;
  if (*v0 != 1)
  {
    v1 = 0x72656E45776F6C2ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E752ELL;
  }
}

uint64_t CharacteristicUUID.init(uuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24ACD0420();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t CharacteristicUUID.init(stringLiteral:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC40, &qword_24ACD8620);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  sub_24ACD03B0();
  v6 = sub_24ACD0420();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v7 + 32))(a1, v5, v6);
  }

  return result;
}

unint64_t CharacteristicUUID.debugDescription.getter()
{
  sub_24ACD0A20();

  v0 = sub_24ACD03C0();
  MEMORY[0x24C22CD50](v0);

  MEMORY[0x24C22CD50](41, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t CharacteristicUUID.hash(into:)()
{
  sub_24ACD0420();
  sub_24ACC1EB0(&qword_2814AE200, MEMORY[0x277CC95F0]);

  return sub_24ACD0530();
}

uint64_t CharacteristicUUID.hashValue.getter()
{
  sub_24ACD0D10();
  sub_24ACD0420();
  sub_24ACC1EB0(&qword_2814AE200, MEMORY[0x277CC95F0]);
  sub_24ACD0530();
  return sub_24ACD0D50();
}

unint64_t sub_24ACC1B6C()
{
  sub_24ACD0A20();

  v0 = sub_24ACD03C0();
  MEMORY[0x24C22CD50](v0);

  MEMORY[0x24C22CD50](41, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t sub_24ACC1BFC()
{
  sub_24ACD0D10();
  sub_24ACD0420();
  sub_24ACC1EB0(&qword_2814AE200, MEMORY[0x277CC95F0]);
  sub_24ACD0530();
  return sub_24ACD0D50();
}

uint64_t sub_24ACC1C84()
{
  sub_24ACD0420();
  sub_24ACC1EB0(&qword_2814AE200, MEMORY[0x277CC95F0]);

  return sub_24ACD0530();
}

uint64_t sub_24ACC1D08()
{
  sub_24ACD0D10();
  sub_24ACD0420();
  sub_24ACC1EB0(&qword_2814AE200, MEMORY[0x277CC95F0]);
  sub_24ACD0530();
  return sub_24ACD0D50();
}

uint64_t type metadata accessor for CharacteristicUUID()
{
  result = qword_27EF9ED90;
  if (!qword_27EF9ED90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ACC1EB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24ACC1EF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC40, &qword_24ACD8620);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = *a1;
  v9 = a1[1];
  sub_24ACD03B0();
  v10 = sub_24ACD0420();
  v11 = *(v10 - 8);
  result = (*(v11 + 48))(v7, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v11 + 32))(a2, v7, v10);
  }

  return result;
}

uint64_t sub_24ACC203C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24AC6FB34(a1, a2);
  v7 = sub_24ACC26C8(v6);
  if ((v7 & 0x100) != 0 || (BluetoothManufacturerAdvertisementData.PayloadType.init(rawValue:)(v7), v8 = v23, v23 == 8))
  {

    sub_24ACC36E8();
    swift_allocError();
    v10 = 1;
LABEL_4:
    *v9 = v10;
    swift_willThrow();
    return sub_24AC46698(a1, a2);
  }

  sub_24ACC2754(v6, &v23);

  v12 = v24;
  if (v24 >> 60 == 15)
  {
    sub_24ACC36E8();
    swift_allocError();
    v10 = 2;
    goto LABEL_4;
  }

  v13 = v23;
  v14 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v16 = *(v23 + 16);
      v15 = *(v23 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v18 >= 2)
      {
        goto LABEL_14;
      }
    }

LABEL_18:
    sub_24ACC36E8();
    swift_allocError();
    v22 = 3;
    goto LABEL_19;
  }

  if (!v14)
  {
    if (BYTE6(v24) < 2uLL)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (__OFSUB__(HIDWORD(v23), v23))
  {
LABEL_22:
    __break(1u);
    return result;
  }

  if (HIDWORD(v23) - v23 < 2)
  {
    goto LABEL_18;
  }

LABEL_14:
  v19 = sub_24ACD02B0();
  BluetoothManufacturerAdvertisementData.SubType.init(rawValue:)(v19);
  v20 = v23;
  if (v23 == 10)
  {
    sub_24ACC36E8();
    swift_allocError();
    v22 = 2;
LABEL_19:
    *v21 = v22;
    swift_willThrow();
    sub_24AC46698(a1, a2);
    return sub_24AC46684(v13, v12);
  }

  result = sub_24AC46698(a1, a2);
  *a3 = v8;
  *(a3 + 1) = v20;
  *(a3 + 8) = v13;
  *(a3 + 16) = v12;
  return result;
}

uint64_t BluetoothManufacturerAdvertisementData.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  sub_24ACD0A20();
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  sub_24ACC23F8();
  v5 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v5);

  MEMORY[0x24C22CD50](0x64616F6C79617020, 0xED00003A65707954);
  sub_24ACD0B10();
  MEMORY[0x24C22CD50](0x6570795462757320, 0xE90000000000003ALL);
  sub_24ACD0B10();
  MEMORY[0x24C22CD50](0x6C79615077617220, 0xEC0000003A64616FLL);
  sub_24AC467AC();
  v6 = sub_24ACD0180();
  MEMORY[0x24C22CD50](v6);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return 0;
}

unint64_t sub_24ACC23F8()
{
  result = qword_27EF9EDA0;
  if (!qword_27EF9EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EDA0);
  }

  return result;
}

uint64_t BluetoothManufacturerAdvertisementData.Error.hashValue.getter()
{
  v1 = *v0;
  sub_24ACD0D10();
  MEMORY[0x24C22D480](v1);
  return sub_24ACD0D50();
}

FindMyBluetooth::BluetoothManufacturerAdvertisementData::PayloadType_optional __swiftcall BluetoothManufacturerAdvertisementData.PayloadType.init(rawValue:)(FindMyBluetooth::BluetoothManufacturerAdvertisementData::PayloadType_optional rawValue)
{
  value = rawValue.value;
  if ((rawValue.value & 0xF8) != 0)
  {
    value = FindMyBluetooth_BluetoothManufacturerAdvertisementData_PayloadType_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

FindMyBluetooth::BluetoothManufacturerAdvertisementData::SubType_optional __swiftcall BluetoothManufacturerAdvertisementData.SubType.init(rawValue:)(FindMyBluetooth::BluetoothManufacturerAdvertisementData::SubType_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= FindMyBluetooth_BluetoothManufacturerAdvertisementData_SubType_unknownDefault)
  {
    value = FindMyBluetooth_BluetoothManufacturerAdvertisementData_SubType_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

uint64_t BluetoothManufacturerAdvertisementData.rawPayload.getter()
{
  v1 = *(v0 + 8);
  sub_24AC46630(v1, *(v0 + 16));
  return v1;
}

uint64_t sub_24ACC26C8(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_24ACD09A0();
  v4 = v3;
  v5 = 1 << *(a1 + 32);
  if (v3 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_24ACC34CC(v3, *(a1 + 36), 0, a1);
  }

  return v6 | ((v4 == v5) << 8);
}

uint64_t sub_24ACC2754@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_24ACD09A0();
  if (result == 1 << *(a1 + 32))
  {
    v6 = 0;
    v7 = 0xF000000000000000;
  }

  else
  {
    sub_24ACC3470(result, *(a1 + 36), a1, &v8);
    v7 = *(&v8 + 1);
    v6 = v8;
    sub_24AC46630(v8, *(&v8 + 1));
    result = sub_24AC46698(v6, v7);
  }

  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t sub_24ACC27F4()
{
  v1 = 0x65707954627573;
  if (*v0 != 1)
  {
    v1 = 0x6F6C796150776172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x5464616F6C796170;
  }
}

uint64_t sub_24ACC285C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24ACC351C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24ACC2884(uint64_t a1)
{
  v2 = sub_24ACC2AF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ACC28C0(uint64_t a1)
{
  v2 = sub_24ACC2AF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BluetoothManufacturerAdvertisementData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EDA8, &qword_24ACD87A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = *v1;
  v19 = v1[1];
  v10 = *(v1 + 1);
  v15 = *(v1 + 2);
  v16 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_24ACC2AF8();
  sub_24ACD0D80();
  LOBYTE(v17) = v9;
  v20 = 0;
  sub_24ACC2B4C();
  sub_24ACD0BF0();
  if (!v2)
  {
    v13 = v15;
    v12 = v16;
    LOBYTE(v17) = v19;
    v20 = 1;
    sub_24ACC2BA0();
    sub_24ACD0BF0();
    v17 = v12;
    v18 = v13;
    v20 = 2;
    sub_24AC46630(v12, v13);
    sub_24ACBAEA4();
    sub_24ACD0BF0();
    sub_24AC46698(v17, v18);
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_24ACC2AF8()
{
  result = qword_27EF9EDB0;
  if (!qword_27EF9EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EDB0);
  }

  return result;
}

unint64_t sub_24ACC2B4C()
{
  result = qword_27EF9EDB8;
  if (!qword_27EF9EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EDB8);
  }

  return result;
}

unint64_t sub_24ACC2BA0()
{
  result = qword_27EF9EDC0;
  if (!qword_27EF9EDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EDC0);
  }

  return result;
}

uint64_t BluetoothManufacturerAdvertisementData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EDC8, &qword_24ACD87A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_24ACC2AF8();
  sub_24ACD0D70();
  if (!v2)
  {
    v16 = 0;
    sub_24ACC2E10();
    sub_24ACD0BB0();
    v11 = v15;
    v16 = 1;
    sub_24ACC2E64();
    sub_24ACD0BB0();
    v13 = v15;
    v16 = 2;
    sub_24ACBAEF8();
    sub_24ACD0BB0();
    (*(v6 + 8))(v9, v5);
    v14 = v15;
    *a2 = v11;
    *(a2 + 1) = v13;
    *(a2 + 8) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_24ACC2E10()
{
  result = qword_27EF9EDD0;
  if (!qword_27EF9EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EDD0);
  }

  return result;
}

unint64_t sub_24ACC2E64()
{
  result = qword_27EF9EDD8;
  if (!qword_27EF9EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EDD8);
  }

  return result;
}

unint64_t sub_24ACC2EBC()
{
  result = qword_27EF9EDE0;
  if (!qword_27EF9EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EDE0);
  }

  return result;
}

unint64_t sub_24ACC2F14()
{
  result = qword_27EF9EDE8;
  if (!qword_27EF9EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EDE8);
  }

  return result;
}

unint64_t sub_24ACC2F6C()
{
  result = qword_27EF9EDF0;
  if (!qword_27EF9EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EDF0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_24ACC3010(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && a1[24])
  {
    return (*a1 + 249);
  }

  v3 = *a1;
  v4 = v3 >= 8;
  v5 = v3 - 8;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24ACC3054(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 7;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BluetoothManufacturerAdvertisementData.PayloadType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BluetoothManufacturerAdvertisementData.PayloadType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for BluetoothManufacturerAdvertisementData.SubType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BluetoothManufacturerAdvertisementData.SubType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24ACC336C()
{
  result = qword_27EF9EDF8;
  if (!qword_27EF9EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EDF8);
  }

  return result;
}

unint64_t sub_24ACC33C4()
{
  result = qword_27EF9EE00;
  if (!qword_27EF9EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EE00);
  }

  return result;
}

unint64_t sub_24ACC341C()
{
  result = qword_27EF9EE08;
  if (!qword_27EF9EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EE08);
  }

  return result;
}

uint64_t sub_24ACC3470@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v4 = *(*(a3 + 56) + 16 * result);
    *a4 = v4;
    return sub_24AC46630(v4, *(&v4 + 1));
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_24ACC34CC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_24ACC351C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5464616F6C796170 && a2 == 0xEB00000000657079;
  if (v4 || (sub_24ACD0C40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65707954627573 && a2 == 0xE700000000000000 || (sub_24ACD0C40() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6C796150776172 && a2 == 0xEA00000000006461)
  {

    return 2;
  }

  else
  {
    v6 = sub_24ACD0C40();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_24ACC3640()
{
  result = qword_27EF9EE10;
  if (!qword_27EF9EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EE10);
  }

  return result;
}

unint64_t sub_24ACC3694()
{
  result = qword_27EF9EE18;
  if (!qword_27EF9EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EE18);
  }

  return result;
}

unint64_t sub_24ACC36E8()
{
  result = qword_27EF9EE20;
  if (!qword_27EF9EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9EE20);
  }

  return result;
}

void MockCentralManager.setMockBehavior(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_mockBehavior);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  *v5 = v2;
  v5[1] = v3;
  v5[2] = v4;
  sub_24AC56E10(v2, v3, v4);
  sub_24AC56E90(v6, v7, v8);
}

uint64_t sub_24ACC37E4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACC3884, a1, 0);
}

uint64_t sub_24ACC3884()
{
  v1 = v0[8];
  v2 = v0[9];
  v0[11] = swift_weakLoadStrong();

  return MEMORY[0x2822009F8](sub_24ACC3900, v2, 0);
}

uint64_t sub_24ACC3900()
{
  v1 = v0[11];
  if (!v1)
  {
LABEL_4:
    v2 = v0[10];
    type metadata accessor for CentralManager.Error();
    sub_24ACCF6A4(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v3 = v0[1];

    return v3();
  }

  if (v1 != v0[9])
  {

    goto LABEL_4;
  }

  v5 = v0[8];

  return MEMORY[0x2822009F8](sub_24ACC3A40, v5, 0);
}

uint64_t sub_24ACC3A40()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  swift_beginAccess();
  *(v1 + v3) = 2;

  return MEMORY[0x2822009F8](sub_24ACC3AD4, v2, 0);
}

uint64_t sub_24ACC3AD4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id;
  swift_beginAccess();

  v6 = *(v4 + 176);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v4 + 176);
  *(v4 + 176) = 0x8000000000000000;
  sub_24AC639D0(v3, v3 + v5, isUniquelyReferenced_nonNull_native);
  *(v4 + 176) = v13;
  swift_endAccess();
  v8 = sub_24ACD07C0();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  v9 = sub_24ACCF6A4(&qword_27EF9E508, type metadata accessor for MockCentralManager);
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = v9;
  v10[4] = v4;
  v10[5] = v3;
  swift_retain_n();

  sub_24AC7F080(0, 0, v1, &unk_24ACD9190, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_24ACC3CA4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACC3D44, a1, 0);
}

uint64_t sub_24ACC3D44()
{
  v1 = v0[5];
  v2 = v0[6];
  v0[8] = swift_weakLoadStrong();

  return MEMORY[0x2822009F8](sub_24ACC3DC0, v2, 0);
}

uint64_t sub_24ACC3DC0()
{
  v1 = v0[8];
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = v0[6];
  if (v1 != v2)
  {

LABEL_4:
    type metadata accessor for CentralManager.Error();
    sub_24ACCF6A4(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_5:
    v3 = v0[7];

    v4 = v0[1];
    goto LABEL_6;
  }

  swift_beginAccess();
  if (!*(*(v2 + 176) + 16) || (v6 = v0[5], v7 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id, , sub_24AC2AC60(v6 + v7), LOBYTE(v6) = v8, , (v6 & 1) == 0))
  {
    v16 = v0[8];
    type metadata accessor for CentralManager.Error();
    sub_24ACCF6A4(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_5;
  }

  v10 = v0[7];
  v9 = v0[8];
  v12 = v0[5];
  v11 = v0[6];
  v13 = sub_24ACD07C0();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = sub_24ACCF6A4(&qword_27EF9E508, type metadata accessor for MockCentralManager);
  v15 = swift_allocObject();
  v15[2] = v11;
  v15[3] = v14;
  v15[4] = v11;
  v15[5] = v12;
  swift_retain_n();

  sub_24AC7F080(0, 0, v10, &unk_24ACD9170, v15);

  v4 = v0[1];
LABEL_6:

  return v4();
}

uint64_t sub_24ACC40B8()
{
  v1 = *(v0 + 40);
  sub_24ACD0A20();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  *(v0 + 32) = v1;
  v2 = type metadata accessor for CentralManager(0);
  v3 = sub_24ACCF6A4(&qword_2814AD858, type metadata accessor for CentralManager);
  v4 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v4);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v5 = MEMORY[0x24C22D370](v2, v3);
  MEMORY[0x24C22CD50](v5);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  sub_24AC2B6A8(&qword_2814AE258, &qword_27EF9E120, &qword_24ACD4550);
  v6 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v6);

  MEMORY[0x24C22CD50](0x206574617473202CLL, 0xEA0000000000203DLL);
  sub_24AC81B94((v0 + 32));
  sub_24ACD0B10();
  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + 8);

  return v9(v7, v8);
}

uint64_t sub_24ACC4320()
{
  v1 = *(v0 + 56);
  sub_24ACD0A20();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  *(v0 + 16) = v1;
  v2 = type metadata accessor for MockCentralManager();
  v3 = sub_24ACCF6A4(&qword_27EF9E6E0, type metadata accessor for MockCentralManager);
  v4 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v4);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v5 = MEMORY[0x24C22D370](v2, v3);
  MEMORY[0x24C22CD50](v5);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  sub_24AC2B6A8(&qword_2814AE258, &qword_27EF9E120, &qword_24ACD4550);
  v6 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v6);

  MEMORY[0x24C22CD50](0x206574617473202CLL, 0xEA0000000000203DLL);
  v7 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state;
  swift_beginAccess();
  *(v0 + 64) = *(v1 + v7);
  sub_24ACD0B10();
  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  v10 = *(v0 + 8);

  return v10(v8, v9);
}

uint64_t sub_24ACC457C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE70, &qword_24ACD8DA8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v19 - v11;
  v13 = *(a2 + 16);
  if (v13)
  {
    v19 = v10;
    v20 = v9;
    v21 = a3;
    v14 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = *(v10 + 72);
    while (1)
    {
      sub_24AC2B5DC(v14, v12, &qword_27EF9EE70, &qword_24ACD8DA8);
      v16 = a1(v12);
      if (v3)
      {
        return sub_24AC212F4(v12, &qword_27EF9EE70, &qword_24ACD8DA8);
      }

      if (v16)
      {
        break;
      }

      sub_24AC212F4(v12, &qword_27EF9EE70, &qword_24ACD8DA8);
      v14 += v15;
      if (!--v13)
      {
        v17 = 1;
        a3 = v21;
        goto LABEL_10;
      }
    }

    a3 = v21;
    sub_24ACCF804(v12, v21);
    v17 = 0;
LABEL_10:
    v10 = v19;
    v9 = v20;
  }

  else
  {
    v17 = 1;
  }

  return (*(v10 + 56))(a3, v17, 1, v9);
}

uint64_t sub_24ACC4738()
{
  _s15FindMyBluetooth30PairingManagerAccessControllerCMa_0();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = swift_weakInit();
  qword_27EF9EE28 = v0;
  return result;
}

uint64_t MockCentralManager.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24ACC4818@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_24ACC486C(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

id sub_24ACC491C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_mockBehavior);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  return sub_24AC56E10(v4, v5, v6);
}

void sub_24ACC497C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = (*a2 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_mockBehavior);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  *v5 = v2;
  v5[1] = v3;
  v5[2] = v4;
  sub_24AC56E10(v2, v3, v4);
  sub_24AC56E90(v6, v7, v8);
}

id sub_24ACC4A14@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_mockBehavior);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  return sub_24AC56E10(v4, v5, v6);
}

__n128 sub_24ACC4A70(__int128 *a1)
{
  v8 = *a1;
  v2 = *(a1 + 2);
  v3 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_mockBehavior);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *v3 = v8;
  v3[2] = v2;
  sub_24AC56E90(v4, v5, v6);
  return result;
}

uint64_t static MockCentralManager.pairingCentralManager.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC1E290;

  return sub_24ACCE14C();
}

uint64_t MockCentralManager.__allocating_init(options:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(v1 + 16) = *a1;
  *(v1 + 24) = v2;
  *(v1 + 25) = 5;
  v3 = type metadata accessor for MockCentralManager();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = swift_task_alloc();
  *(v1 + 32) = v6;
  *v6 = v1;
  v6[1] = sub_24AC81CE8;

  return MockCentralManager.init(options:initialState:)(v6, (v1 + 25));
}

uint64_t MockCentralManager.__allocating_init(options:initialState:)(uint64_t a1, _BYTE *a2)
{
  v4 = v2;
  v6 = *(v4 + 48);
  v7 = *(v4 + 52);
  swift_allocObject();
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AC1DF38;

  return MockCentralManager.init(options:initialState:)(v8, a2);
}

uint64_t MockCentralManager.init(options:initialState:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = v2;
  v5 = *(*(sub_24ACD0420() - 8) + 64) + 15;
  *(v3 + 24) = swift_task_alloc();
  *(v3 + 32) = *a2;

  return MEMORY[0x2822009F8](sub_24ACC4DF0, 0, 0);
}

uint64_t sub_24ACC4DF0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  *(v2 + 152) = 1;
  v4 = MEMORY[0x277D84F98];
  *(v2 + 160) = MEMORY[0x277D84F98];
  *(v2 + 168) = v4;
  *(v2 + 176) = v4;
  *(v2 + 184) = v4;
  v5 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_connectionEventsStream;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E578, qword_24ACD8D30);
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_connectionEventsStreamContinuation;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E580, &qword_24ACD5890);
  (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
  sub_24ACD0410();
  type metadata accessor for CentralManager(0);
  sub_24ACD0000();
  v9 = (v2 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_mockBehavior);
  *v9 = 10000000000000000;
  v9[1] = 0;
  v9[2] = 0;
  *(v2 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_isPairingCentralManager) = 0;
  *(v2 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state) = v1;

  v10 = *(v0 + 8);
  v11 = *(v0 + 16);

  return v10(v11);
}

uint64_t sub_24ACC4F98(char a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 16) = v3;
  *(v4 + 32) = a1;
  v6 = *(*(sub_24ACD0420() - 8) + 64) + 15;
  *(v4 + 24) = swift_task_alloc();
  *(v4 + 33) = *a3;

  return MEMORY[0x2822009F8](sub_24ACC5038, 0, 0);
}

uint64_t sub_24ACC5038()
{
  v1 = *(v0 + 33);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  *(v2 + 152) = 1;
  v5 = MEMORY[0x277D84F98];
  *(v2 + 160) = MEMORY[0x277D84F98];
  *(v2 + 168) = v5;
  *(v2 + 176) = v5;
  *(v2 + 184) = v5;
  v6 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_connectionEventsStream;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E578, qword_24ACD8D30);
  (*(*(v7 - 8) + 56))(v2 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_connectionEventsStreamContinuation;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E580, &qword_24ACD5890);
  (*(*(v9 - 8) + 56))(v2 + v8, 1, 1, v9);
  sub_24ACD0410();
  type metadata accessor for CentralManager(0);
  sub_24ACD0000();
  v10 = (v2 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_mockBehavior);
  *v10 = 10000000000000000;
  v10[1] = 0;
  v10[2] = 0;
  *(v2 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_isPairingCentralManager) = v4;
  *(v2 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state) = v1;

  v11 = *(v0 + 8);
  v12 = *(v0 + 16);

  return v11(v12);
}

uint64_t sub_24ACC5208(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E568, &qword_24ACD8D60);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACC52D4, v1, 0);
}

uint64_t sub_24ACC52D4()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  swift_allocObject();
  swift_weakInit();
  (*(v2 + 104))(v1, *MEMORY[0x277D85778], v3);
  sub_24ACD0820();

  v6 = v0[1];

  return v6();
}

uint64_t sub_24ACC53D0(uint64_t a1)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
  v2 = *(v1 - 8);
  v35 = v1;
  v36 = v2;
  v37 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v40 = &v28 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v28 - v6;
  v7 = sub_24ACD0420();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v38 = &v28 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  sub_24ACD0410();
  v15 = *(v8 + 16);
  v29 = v7;
  v30 = v15;
  v15(v11, v13, v7);
  v16 = *(v8 + 80);
  v33 = v8;
  v31 = v16 | 7;
  v17 = swift_allocObject();
  *(v17 + 16) = Strong;
  v32 = *(v8 + 32);
  v32(v17 + ((v16 + 24) & ~v16), v11, v7);

  v18 = v34;
  v19 = v35;
  sub_24ACD07E0();
  v20 = sub_24ACD07C0();
  (*(*(v20 - 8) + 56))(v39, 1, 1, v20);
  v21 = v36;
  (*(v36 + 16))(v40, v18, v19);
  v22 = v29;
  v30(v11, v38, v29);
  v23 = v21;
  v24 = (*(v21 + 80) + 40) & ~*(v21 + 80);
  v25 = (v37 + v16 + v24) & ~v16;
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *(v26 + 4) = Strong;
  (*(v23 + 32))(&v26[v24], v40, v19);
  v32(&v26[v25], v11, v22);

  sub_24AC7ED6C(0, 0, v39, &unk_24ACD9138, v26);

  return (*(v33 + 8))(v38, v22);
}

uint64_t sub_24ACC57B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24ACD0420();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  v12 = sub_24ACD07C0();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v13 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = a2;
  (*(v6 + 32))(&v14[v13], &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_24AC7ED6C(0, 0, v11, &unk_24ACD9150, v14);
}

uint64_t sub_24ACC5994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6E8, &qword_24ACD9140) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v7 = sub_24ACD0420();
  v5[9] = v7;
  v8 = *(v7 - 8);
  v5[10] = v8;
  v9 = *(v8 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACC5A90, 0, 0);
}

uint64_t sub_24ACC5A90()
{
  v1 = *(v0 + 48);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24ACC5B44, v1, 0);
  }

  else
  {
    v2 = *(v0 + 88);
    v3 = *(v0 + 64);
    **(v0 + 40) = 1;

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_24ACC5B44()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[6];
  (*(v0[10] + 16))(v1, v0[7], v0[9]);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  swift_beginAccess();
  sub_24AC7F70C(v2, v1);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_24ACC5C44, 0, 0);
}

uint64_t sub_24ACC5C44()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  **(v0 + 40) = *(v0 + 48) == 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24ACC5CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6E8, &qword_24ACD9140) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v8 = sub_24ACD0420();
  v6[10] = v8;
  v9 = *(v8 - 8);
  v6[11] = v9;
  v10 = *(v9 + 64) + 15;
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACC5DBC, 0, 0);
}

uint64_t sub_24ACC5DBC()
{
  v1 = *(v0 + 48);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24ACC5E70, v1, 0);
  }

  else
  {
    v2 = *(v0 + 96);
    v3 = *(v0 + 72);
    **(v0 + 40) = 1;

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_24ACC5E70()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[6];
  (*(v0[11] + 16))(v1, v0[8], v0[10]);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2, v3, v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  swift_beginAccess();
  sub_24AC7F70C(v2, v1);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_24ACC5FB0, 0, 0);
}

uint64_t sub_24ACC5FB0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  **(v0 + 40) = *(v0 + 48) == 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24ACC602C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a1;
  v5[6] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE40, &qword_24ACD8D70);
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACC60FC, v4, 0);
}

uint64_t sub_24ACC60FC()
{
  v1 = v0[8];
  v2 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state;
  swift_beginAccess();
  if (*(v1 + v2) < 5u)
  {
    type metadata accessor for CentralManager.Error();
    sub_24ACCF6A4(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    *v3 = *(v1 + v2);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    v5 = v0[11];
    swift_willThrow();

    v6 = v0[1];
    goto LABEL_7;
  }

  v4 = v0[8];
  if (*(v4 + 128))
  {
    type metadata accessor for CentralManager.Error();
    sub_24ACCF6A4(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    goto LABEL_5;
  }

  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];
  v11 = v0[6];
  v10 = v0[7];
  v12 = v0[5];
  *(v4 + 128) = 1;
  *(v4 + 136) = v11;
  *(v4 + 144) = v10;
  *(v4 + 152) = 0;
  v13 = swift_task_alloc();
  v13[2] = v4;
  v13[3] = v11;
  v13[4] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE48, &qword_24ACD8D78);
  (*(v8 + 104))(v7, *MEMORY[0x277D858A0], v9);
  sub_24ACD08D0();

  v6 = v0[1];
LABEL_7:

  return v6();
}

uint64_t sub_24ACC6354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EEA8, &qword_24ACD90F8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v24 - v14;
  v16 = sub_24ACD07C0();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v8 + 16))(v11, a1, v7);
  v17 = sub_24ACCF6A4(&qword_27EF9E508, type metadata accessor for MockCentralManager);
  v18 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = v17;
  *(v20 + 4) = a2;
  (*(v8 + 32))(&v20[v18], v11, v7);
  v21 = &v20[v19];
  v22 = v25;
  *v21 = a3;
  *(v21 + 1) = v22;
  swift_retain_n();
  sub_24AC7F080(0, 0, v15, &unk_24ACD9108, v20);
}

uint64_t sub_24ACC65A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EEA8, &qword_24ACD90F8);
  v7[25] = v9;
  v10 = *(v9 - 8);
  v7[26] = v10;
  v7[27] = *(v10 + 64);
  v7[28] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8) - 8) + 64) + 15;
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EEB0, &qword_24ACD9110);
  v7[31] = v12;
  v13 = *(v12 - 8);
  v7[32] = v13;
  v14 = *(v13 + 64) + 15;
  v7[33] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v7[34] = v15;
  v16 = *(v15 - 8);
  v7[35] = v16;
  v7[36] = *(v16 + 64);
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE58, &qword_24ACD8D90);
  v7[40] = v17;
  v18 = *(v17 - 8);
  v7[41] = v18;
  v19 = *(v18 + 64) + 15;
  v7[42] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EEB8, &qword_24ACD9118);
  v7[43] = v20;
  v21 = *(v20 - 8);
  v7[44] = v21;
  v22 = *(v21 + 64) + 15;
  v7[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACC6888, a4, 0);
}

void sub_24ACC6888()
{
  v1 = v0[21];
  v2 = *(v1 + 112);
  v0[46] = v2;
  if (v2)
  {
    v0[47] = *(v1 + 120);

    v6 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[48] = v4;
    *v4 = v0;
    v4[1] = sub_24ACC69A0;
    v5 = v0[42];

    v6(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24ACC69A0()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *(*v1 + 376);
  v5 = *(*v1 + 368);
  v6 = *v1;
  *(*v1 + 392) = v0;

  sub_24AC1BFC8(v5);
  v7 = *(v2 + 168);
  if (v0)
  {
    v8 = sub_24ACC757C;
  }

  else
  {
    v8 = sub_24ACC6B08;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_24ACC6B08()
{
  v1 = v0[45];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[40];
  v5 = v0[21];
  sub_24ACD0800();
  (*(v3 + 8))(v2, v4);
  v0[50] = sub_24ACCF6A4(&qword_27EF9E508, type metadata accessor for MockCentralManager);
  swift_beginAccess();
  v6 = v0[50];
  v7 = v0[21];
  v8 = *(MEMORY[0x277D858B8] + 4);
  v9 = swift_task_alloc();
  v0[51] = v9;
  *v9 = v0;
  v9[1] = sub_24ACC6C40;
  v10 = v0[45];
  v11 = v0[43];

  return MEMORY[0x2822005A8](v0 + 17, v7, v6, v11, v0 + 18);
}

uint64_t sub_24ACC6C40()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v7 = *v1;

  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = sub_24ACC7658;
  }

  else
  {
    v5 = sub_24ACC6D54;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24ACC6D54()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v88 = *(v0 + 400);
    v2 = *(v0 + 312);
    v92 = *(v0 + 304);
    v85 = *(v0 + 288);
    v3 = *(v0 + 272);
    v78 = *(v0 + 264);
    v80 = *(v0 + 256);
    v90 = *(v0 + 248);
    v95 = *(v0 + 240);
    v89 = *(v0 + 232);
    v83 = *(v0 + 224);
    v84 = *(v0 + 216);
    v82 = *(v0 + 208);
    v75 = *(v0 + 200);
    v86 = *(v0 + 184);
    v87 = *(v0 + 192);
    v5 = *(v0 + 168);
    v4 = *(v0 + 176);
    v76 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id;
    v77 = *(v0 + 280);
    v6 = *(v77 + 16);
    v6(v2, v1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id, v3);
    swift_beginAccess();

    v7 = *(v5 + 168);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97 = *(v5 + 168);
    v74 = v2;
    sub_24AC639D0(v1, v2, isUniquelyReferenced_nonNull_native);
    v73 = *(v77 + 8);
    v73(v2, v3);
    *(v5 + 168) = v97;
    swift_endAccess();
    *(v0 + 120) = v1;
    *(v0 + 128) = 0;

    sub_24ACD0890();
    (*(v80 + 8))(v78, v90);
    v6(v92, v1 + v76, v3);
    v79 = sub_24ACD07C0();
    v81 = *(v79 - 8);
    (*(v81 + 56))(v95, 1, 1, v79);
    v91 = v6;
    v6(v2, v92, v3);
    (*(v82 + 16))(v83, v4, v75);
    v9 = (*(v77 + 80) + 56) & ~*(v77 + 80);
    v10 = (v85 + *(v82 + 80) + v9) & ~*(v82 + 80);
    v11 = swift_allocObject();
    *(v11 + 2) = v5;
    *(v11 + 3) = v88;
    *(v11 + 4) = v86;
    *(v11 + 5) = v87;
    *(v11 + 6) = v5;
    (*(v77 + 32))(&v11[v9], v74, v3);
    (*(v82 + 32))(&v11[v10], v83, v75);
    sub_24AC2B5DC(v95, v89, &qword_27EF9DF00, &qword_24ACD3BC8);
    LODWORD(v3) = (*(v81 + 48))(v89, 1);
    swift_retain_n();

    v12 = *(v0 + 232);
    if (v3 == 1)
    {
      sub_24AC212F4(*(v0 + 232), &qword_27EF9DF00, &qword_24ACD3BC8);
    }

    else
    {
      sub_24ACD07B0();
      (*(v81 + 8))(v12, v79);
    }

    v24 = *(v11 + 2);
    v23 = *(v11 + 3);
    swift_unknownObjectRetain();

    if (v24)
    {
      swift_getObjectType();
      v25 = sub_24ACD0740();
      v27 = v26;
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    sub_24AC212F4(*(v0 + 240), &qword_27EF9DF00, &qword_24ACD3BC8);
    if (v27 | v25)
    {
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v25;
      *(v0 + 40) = v27;
    }

    v28 = *(v0 + 168);
    v29 = swift_task_create();
    v30 = *(v28 + 160);
    if (*(v30 + 16))
    {
      v31 = *(v0 + 304);

      v32 = sub_24AC2AC60(v31);
      if (v33)
      {
        v34 = *(*(v30 + 56) + 8 * v32);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC00, &qword_24ACD4690);
        sub_24ACD0830();
      }

      else
      {
      }
    }

    v35 = *(v0 + 296);
    v36 = *(v0 + 168);
    v91(v35, *(v0 + 304), *(v0 + 272));
    swift_beginAccess();

    v37 = *(v36 + 160);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v36 + 160);
    *(v0 + 160) = v39;
    *(v36 + 160) = 0x8000000000000000;
    v40 = sub_24AC2AC60(v35);
    v42 = *(v39 + 16);
    v43 = (v41 & 1) == 0;
    v44 = __OFADD__(v42, v43);
    v45 = v42 + v43;
    if (v44)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v35) = v41;
      if (*(v39 + 24) < v45)
      {
        v46 = *(v0 + 296);
        sub_24AC5DCB4(v45, v38);
        v47 = *(v0 + 160);
        v40 = sub_24AC2AC60(v46);
        if ((v35 & 1) != (v48 & 1))
        {
          v49 = *(v0 + 272);

          return sub_24ACD0C80();
        }

LABEL_24:
        v50 = *(v0 + 160);
        if (v35)
        {
LABEL_25:
          v51 = v50[7];
          v52 = *(v51 + 8 * v40);
          *(v51 + 8 * v40) = v29;

          goto LABEL_30;
        }

LABEL_28:
        v54 = *(v0 + 296);
        v55 = *(v0 + 272);
        v56 = *(v0 + 280);
        v50[(v40 >> 6) + 8] |= 1 << v40;
        v57 = v40;
        v58 = (v91)(v50[6] + *(v56 + 72) * v40, v54, v55);
        *(v50[7] + 8 * v57) = v29;
        v63 = v50[2];
        v44 = __OFADD__(v63, 1);
        v64 = v63 + 1;
        if (v44)
        {
          __break(1u);
          return MEMORY[0x2822005A8](v58, v59, v60, v61, v62);
        }

        v50[2] = v64;
LABEL_30:
        v65 = *(v0 + 304);
        v66 = *(v0 + 272);
        v67 = *(v0 + 168);
        v73(*(v0 + 296), v66);
        *(v67 + 160) = v50;
        swift_endAccess();

        v73(v65, v66);
        v68 = *(v0 + 400);
        v69 = *(v0 + 168);
        v70 = *(MEMORY[0x277D858B8] + 4);
        v71 = swift_task_alloc();
        *(v0 + 408) = v71;
        *v71 = v0;
        v71[1] = sub_24ACC6C40;
        v72 = *(v0 + 360);
        v61 = *(v0 + 344);
        v62 = v0 + 144;
        v58 = v0 + 136;
        v59 = v69;
        v60 = v68;

        return MEMORY[0x2822005A8](v58, v59, v60, v61, v62);
      }

      if (v38)
      {
        goto LABEL_24;
      }
    }

    v53 = v40;
    sub_24AC5F4C8();
    v40 = v53;
    v50 = *(v0 + 160);
    if (v35)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  v13 = *(v0 + 336);
  v15 = *(v0 + 304);
  v14 = *(v0 + 312);
  v16 = *(v0 + 296);
  v17 = *(v0 + 264);
  v93 = *(v0 + 240);
  v94 = *(v0 + 232);
  v96 = *(v0 + 224);
  v18 = *(v0 + 200);
  v19 = *(v0 + 168);
  v20 = *(v0 + 176);
  (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
  *(v0 + 152) = 0;
  sub_24ACD08A0();
  *(v19 + 128) = 0;

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24ACC757C()
{
  v1 = v0[49];
  v2 = v0[45];
  v3 = v0[42];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[37];
  v7 = v0[33];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[28];

  v11 = v0[1];

  return v11();
}

uint64_t sub_24ACC7658()
{
  (*(v0[44] + 8))(v0[45], v0[43]);
  v1 = v0[18];
  v2 = v0[45];
  v3 = v0[42];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[37];
  v7 = v0[33];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[28];

  v11 = v0[1];

  return v11();
}

uint64_t sub_24ACC774C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EEB0, &qword_24ACD9110);
  v8[15] = v10;
  v11 = *(v10 - 8);
  v8[16] = v11;
  v12 = *(v11 + 64) + 15;
  v8[17] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v8[18] = v13;
  v14 = *(v13 - 8);
  v8[19] = v14;
  v15 = *(v14 + 64) + 15;
  v8[20] = swift_task_alloc();
  v16 = sub_24ACD0AF0();
  v8[21] = v16;
  v17 = *(v16 - 8);
  v8[22] = v17;
  v18 = *(v17 + 64) + 15;
  v8[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACC78E8, a6, 0);
}

uint64_t sub_24ACC78E8()
{
  v1 = v0[23];
  sub_24ACD0CB0();
  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_24ACC79A8;
  v3 = v0[23];
  v5 = v0[10];
  v4 = v0[11];

  return sub_24AC59658(v5, v4, 0, 0, 1);
}

uint64_t sub_24ACC79A8()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  v5 = *(*v1 + 176);
  v6 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 200) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 96);
  if (v0)
  {
    v9 = sub_24ACC7D10;
  }

  else
  {
    v9 = sub_24ACC7B30;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_24ACC7B30()
{
  v1 = *(v0 + 200);
  sub_24ACD0850();
  if (!v1)
  {
    v2 = *(v0 + 96);
    swift_beginAccess();
    v3 = *(v2 + 168);
    if (*(v3 + 16))
    {
      v4 = *(v0 + 104);
      v5 = *(v2 + 168);

      v6 = sub_24AC2AC60(v4);
      if (v7)
      {
        v9 = *(v0 + 152);
        v8 = *(v0 + 160);
        v10 = *(v0 + 136);
        v11 = *(v0 + 144);
        v12 = *(v0 + 128);
        v13 = *(v0 + 104);
        v20 = *(v0 + 112);
        v21 = *(v0 + 120);
        v14 = *(*(v3 + 56) + 8 * v6);

        (*(v9 + 16))(v8, v13, v11);
        swift_beginAccess();
        sub_24AC7F4EC(0, v8);
        swift_endAccess();
        *(v0 + 64) = v14;
        *(v0 + 72) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EEA8, &qword_24ACD90F8);
        sub_24ACD0890();
        (*(v12 + 8))(v10, v21);
      }

      else
      {
      }
    }
  }

  v15 = *(v0 + 184);
  v16 = *(v0 + 160);
  v17 = *(v0 + 136);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_24ACC7D10()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[17];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24ACC7D94(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 112);
  v4 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;

  return sub_24AC1BFC8(v3);
}

uint64_t sub_24ACC7DE0(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE50, &qword_24ACD8D88) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE58, &qword_24ACD8D90);
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v6 = *(v5 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACC7EE4, v1, 0);
}

uint64_t sub_24ACC7EE4()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state;
  result = swift_beginAccess();
  if (*(v1 + v2) >= 5u)
  {
    v8 = v0[7];
    v9 = *(v8 + 112);
    v0[12] = v9;
    v0[13] = *(v8 + 120);
    if (v9)
    {

      v13 = (v9 + *v9);
      v10 = v9[1];
      v11 = swift_task_alloc();
      v0[14] = v11;
      *v11 = v0;
      v11[1] = sub_24ACC80F8;
      v12 = v0[11];

      return v13(v12);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for CentralManager.Error();
    sub_24ACCF6A4(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    *v4 = *(v1 + v2);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v5 = v0[11];
    v6 = v0[8];

    v7 = v0[1];

    return v7();
  }

  return result;
}

uint64_t sub_24ACC80F8()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  v2[15] = v0;

  v5 = v2[13];
  v6 = v2[12];
  if (v0)
  {
    v7 = v2[7];
    sub_24AC1BFC8(v6);

    return MEMORY[0x2822009F8](sub_24ACC8800, v7, 0);
  }

  else
  {
    sub_24AC1BFC8(v6);
    v8 = *(MEMORY[0x277D08A80] + 4);
    v9 = swift_task_alloc();
    v2[16] = v9;
    v10 = sub_24AC2B6A8(&qword_27EF9EE60, &qword_27EF9EE58, &qword_24ACD8D90);
    *v9 = v4;
    v9[1] = sub_24ACC82E0;
    v11 = v2[11];
    v12 = v2[9];

    return MEMORY[0x28215ED78](v12, v10);
  }
}

uint64_t sub_24ACC82E0(uint64_t a1)
{
  v4 = *(*v2 + 128);
  v5 = *v2;
  v5[17] = a1;
  v5[18] = v1;

  if (v1)
  {
    v6 = v5[7];
    (*(v5[10] + 8))(v5[11], v5[9]);

    return MEMORY[0x2822009F8](sub_24ACC8870, v6, 0);
  }

  else
  {
    (*(v5[10] + 8))(v5[11], v5[9]);
    v5[5] = a1;
    v7 = *(MEMORY[0x277D08A68] + 4);
    v8 = swift_task_alloc();
    v5[19] = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE68, &qword_24ACD8DA0);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE70, &qword_24ACD8DA8);
    v5[20] = v10;
    v11 = sub_24AC2B6A8(&qword_27EF9EE78, &qword_27EF9EE68, &qword_24ACD8DA0);
    *v8 = v5;
    v8[1] = sub_24ACC8530;

    return MEMORY[0x28215ED58](&unk_24ACD8D98, 0, v9, v10, v11);
  }
}

void sub_24ACC8530(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
  }

  else
  {
    v7 = v4[17];
    v8 = v4[7];

    v4[22] = a1;

    MEMORY[0x2822009F8](sub_24ACC867C, v8, 0);
  }
}

uint64_t sub_24ACC867C()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[8];
  v5 = v0[6];
  *(swift_task_alloc() + 16) = v5;
  sub_24ACC457C(sub_24ACCE35C, v1, v4);

  if ((*(*(v3 - 8) + 48))(v4, 1, v3) == 1)
  {
    sub_24AC212F4(v0[8], &qword_27EF9EE50, &qword_24ACD8D88);
    v6 = 0;
  }

  else
  {
    v7 = v0[8];
    v6 = *(v7 + *(v0[20] + 48));
    v8 = sub_24ACD0090();
    (*(*(v8 - 8) + 8))(v7, v8);
  }

  v9 = v0[11];
  v10 = v0[8];

  v11 = v0[1];

  return v11(v6);
}

uint64_t sub_24ACC8800()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24ACC8870()
{
  v1 = v0[18];
  v2 = v0[11];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24ACC88E0(uint64_t a1, uint64_t *a2)
{
  v2[5] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v5 = sub_24ACD0090();
  v2[7] = v5;
  v6 = *(v5 - 8);
  v2[8] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *a2;
  v2[9] = v8;
  v2[10] = v9;

  return MEMORY[0x2822009F8](sub_24ACC89DC, v9, 0);
}

uint64_t sub_24ACC89DC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_macAddress;
  swift_beginAccess();
  sub_24AC2B5DC(v1 + v3, v2, &qword_27EF9E048, &qword_24ACD5910);

  return MEMORY[0x2822009F8](sub_24ACC8A88, 0, 0);
}

uint64_t sub_24ACC8A88()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[5];
    sub_24AC212F4(v3, &qword_27EF9E048, &qword_24ACD5910);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE70, &qword_24ACD8DA8);
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  }

  else
  {
    v7 = v0[9];
    v6 = v0[10];
    v8 = v0[5];
    v9 = *(v2 + 32);
    v9(v7, v3, v1);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE70, &qword_24ACD8DA8);
    v11 = *(v10 + 48);
    v9(v8, v7, v1);
    *(v8 + v11) = v6;
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  v12 = v0[9];
  v13 = v0[6];

  v14 = v0[1];

  return v14();
}

uint64_t sub_24ACC8C48(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE58, &qword_24ACD8D90);
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACC8D14, v1, 0);
}

uint64_t sub_24ACC8D14()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state;
  swift_beginAccess();
  if (*(v1 + v2) >= 5u)
  {
    v7 = v0[6];
    v8 = v0[7];

    v0[11] = sub_24AC6562C(v9);

    v10 = *(v8 + 112);
    v0[12] = v10;
    v0[13] = *(v8 + 120);
    if (v10)
    {

      v14 = (v10 + *v10);
      v11 = v10[1];
      v12 = swift_task_alloc();
      v0[14] = v12;
      *v12 = v0;
      v12[1] = sub_24ACC8F34;
      v13 = v0[10];

      return v14(v13);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for CentralManager.Error();
    sub_24ACCF6A4(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    *v3 = *(v1 + v2);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v4 = v0[10];

    v5 = v0[1];

    return v5();
  }

  return result;
}

uint64_t sub_24ACC8F34()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  v2[15] = v0;

  v5 = v2[13];
  v6 = v2[12];
  if (v0)
  {
    v7 = v2[11];
    v8 = v2[7];
    sub_24AC1BFC8(v6);

    return MEMORY[0x2822009F8](sub_24ACCFFAC, v8, 0);
  }

  else
  {
    sub_24AC1BFC8(v6);
    v9 = *(MEMORY[0x277D08A80] + 4);
    v10 = swift_task_alloc();
    v2[16] = v10;
    v11 = sub_24AC2B6A8(&qword_27EF9EE60, &qword_27EF9EE58, &qword_24ACD8D90);
    *v10 = v4;
    v10[1] = sub_24ACC9128;
    v12 = v2[10];
    v13 = v2[8];

    return MEMORY[0x28215ED78](v13, v11);
  }
}

uint64_t sub_24ACC9128(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v14 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v5 = v3[10];
    v6 = v3[11];
    v7 = v3[8];
    v8 = v3[9];
    v9 = v3[7];
    (*(v8 + 8))(v5, v7);

    v10 = sub_24ACCFFB0;
    v11 = v9;
  }

  else
  {
    v12 = v3[7];
    (*(v3[9] + 8))(v3[10], v3[8]);
    v10 = sub_24ACC9280;
    v11 = v12;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_24ACC9280()
{
  v1 = v0[11];
  v0[5] = v0[17];
  v2 = swift_task_alloc();
  v0[19] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D08A68] + 4);
  v4 = swift_task_alloc();
  v0[20] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE68, &qword_24ACD8DA0);
  v6 = type metadata accessor for MockPeripheral();
  v7 = sub_24AC2B6A8(&qword_27EF9EE78, &qword_27EF9EE68, &qword_24ACD8DA0);
  *v4 = v0;
  v4[1] = sub_24ACCFFA0;

  return MEMORY[0x28215ED58](&unk_24ACD8DC0, v2, v5, v6, v7);
}

uint64_t sub_24ACC93C8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[5] = a1;
  v3[6] = a3;
  v4 = *a2;
  v3[7] = v4;
  return MEMORY[0x2822009F8](sub_24ACC93EC, v4, 0);
}

uint64_t sub_24ACC93EC()
{
  v1 = (v0[7] + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockSerialNumber);
  swift_beginAccess();
  v0[8] = *v1;
  v0[9] = v1[1];

  return MEMORY[0x2822009F8](sub_24ACC948C, 0, 0);
}

uint64_t sub_24ACC948C()
{
  if (*(v0 + 72) && (v1 = sub_24AC794E0(*(v0 + 64), *(v0 + 72), *(v0 + 48)), , (v1 & 1) != 0))
  {
    **(v0 + 40) = *(v0 + 56);
  }

  else
  {
    **(v0 + 40) = 0;
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24ACC952C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE58, &qword_24ACD8D90);
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACC95F8, v1, 0);
}

uint64_t sub_24ACC95F8()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state;
  swift_beginAccess();
  if (*(v1 + v2) >= 5u)
  {
    v7 = v0[6];
    v8 = v0[7];

    v0[11] = sub_24AC656C4(v9);

    v10 = *(v8 + 112);
    v0[12] = v10;
    v0[13] = *(v8 + 120);
    if (v10)
    {

      v14 = (v10 + *v10);
      v11 = v10[1];
      v12 = swift_task_alloc();
      v0[14] = v12;
      *v12 = v0;
      v12[1] = sub_24ACC9818;
      v13 = v0[10];

      return v14(v13);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for CentralManager.Error();
    sub_24ACCF6A4(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    *v3 = *(v1 + v2);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v4 = v0[10];

    v5 = v0[1];

    return v5();
  }

  return result;
}

uint64_t sub_24ACC9818()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  v2[15] = v0;

  v5 = v2[13];
  v6 = v2[12];
  if (v0)
  {
    v7 = v2[11];
    v8 = v2[7];
    sub_24AC1BFC8(v6);

    return MEMORY[0x2822009F8](sub_24ACCFFAC, v8, 0);
  }

  else
  {
    sub_24AC1BFC8(v6);
    v9 = *(MEMORY[0x277D08A80] + 4);
    v10 = swift_task_alloc();
    v2[16] = v10;
    v11 = sub_24AC2B6A8(&qword_27EF9EE60, &qword_27EF9EE58, &qword_24ACD8D90);
    *v10 = v4;
    v10[1] = sub_24ACC9A0C;
    v12 = v2[10];
    v13 = v2[8];

    return MEMORY[0x28215ED78](v13, v11);
  }
}

uint64_t sub_24ACC9A0C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v14 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v5 = v3[10];
    v6 = v3[11];
    v7 = v3[8];
    v8 = v3[9];
    v9 = v3[7];
    (*(v8 + 8))(v5, v7);

    v10 = sub_24ACCFFB0;
    v11 = v9;
  }

  else
  {
    v12 = v3[7];
    (*(v3[9] + 8))(v3[10], v3[8]);
    v10 = sub_24ACC9B64;
    v11 = v12;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_24ACC9B64()
{
  v1 = v0[11];
  v0[5] = v0[17];
  v2 = swift_task_alloc();
  v0[19] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D08A68] + 4);
  v4 = swift_task_alloc();
  v0[20] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE68, &qword_24ACD8DA0);
  v6 = type metadata accessor for MockPeripheral();
  v7 = sub_24AC2B6A8(&qword_27EF9EE78, &qword_27EF9EE68, &qword_24ACD8DA0);
  *v4 = v0;
  v4[1] = sub_24ACCFFA0;

  return MEMORY[0x28215ED58](&unk_24ACD8DD8, v2, v5, v6, v7);
}

uint64_t sub_24ACC9CAC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[5] = a1;
  v3[6] = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC40, &qword_24ACD8620) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v6 = sub_24ACD0420();
  v3[8] = v6;
  v7 = *(v6 - 8);
  v3[9] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *a2;
  v3[10] = v9;
  v3[11] = v10;

  return MEMORY[0x2822009F8](sub_24ACC9DA8, v10, 0);
}

uint64_t sub_24ACC9DA8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBeaconIdentifier;
  swift_beginAccess();
  sub_24AC2B5DC(v1 + v3, v2, &qword_27EF9EC40, &qword_24ACD8620);

  return MEMORY[0x2822009F8](sub_24ACC9E54, 0, 0);
}

uint64_t sub_24ACC9E54()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[5];
    sub_24AC212F4(v3, &qword_27EF9EC40, &qword_24ACD8620);
    *v4 = 0;
  }

  else
  {
    v5 = v0[10];
    v6 = v0[6];
    (*(v2 + 32))(v5, v3, v1);
    v7 = sub_24AC795D8(v5, v6);
    (*(v2 + 8))(v5, v1);
    if (v7)
    {
      *v0[5] = v0[11];
    }

    else
    {
      *v0[5] = 0;
    }
  }

  v8 = v0[10];
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_24ACC9F98(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE58, &qword_24ACD8D90);
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACCA064, v1, 0);
}

uint64_t sub_24ACCA064()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state;
  swift_beginAccess();
  if (*(v1 + v2) >= 5u)
  {
    v7 = v0[6];
    v8 = v0[7];

    v0[11] = sub_24AC656C4(v9);

    v10 = *(v8 + 112);
    v0[12] = v10;
    v0[13] = *(v8 + 120);
    if (v10)
    {

      v14 = (v10 + *v10);
      v11 = v10[1];
      v12 = swift_task_alloc();
      v0[14] = v12;
      *v12 = v0;
      v12[1] = sub_24ACCA284;
      v13 = v0[10];

      return v14(v13);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for CentralManager.Error();
    sub_24ACCF6A4(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    *v3 = *(v1 + v2);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v4 = v0[10];

    v5 = v0[1];

    return v5();
  }

  return result;
}

uint64_t sub_24ACCA284()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  v2[15] = v0;

  v5 = v2[13];
  v6 = v2[12];
  if (v0)
  {
    v7 = v2[11];
    v8 = v2[7];
    sub_24AC1BFC8(v6);

    return MEMORY[0x2822009F8](sub_24ACCA874, v8, 0);
  }

  else
  {
    sub_24AC1BFC8(v6);
    v9 = *(MEMORY[0x277D08A80] + 4);
    v10 = swift_task_alloc();
    v2[16] = v10;
    v11 = sub_24AC2B6A8(&qword_27EF9EE60, &qword_27EF9EE58, &qword_24ACD8D90);
    *v10 = v4;
    v10[1] = sub_24ACCA478;
    v12 = v2[10];
    v13 = v2[8];

    return MEMORY[0x28215ED78](v13, v11);
  }
}

uint64_t sub_24ACCA478(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v14 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v5 = v3[10];
    v6 = v3[11];
    v7 = v3[8];
    v8 = v3[9];
    v9 = v3[7];
    (*(v8 + 8))(v5, v7);

    v10 = sub_24ACCA8D8;
    v11 = v9;
  }

  else
  {
    v12 = v3[7];
    (*(v3[9] + 8))(v3[10], v3[8]);
    v10 = sub_24ACCA5D0;
    v11 = v12;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_24ACCA5D0()
{
  v1 = v0[11];
  v0[5] = v0[17];
  v2 = swift_task_alloc();
  v0[19] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D08A68] + 4);
  v4 = swift_task_alloc();
  v0[20] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE68, &qword_24ACD8DA0);
  v6 = type metadata accessor for MockPeripheral();
  v7 = sub_24AC2B6A8(&qword_27EF9EE78, &qword_27EF9EE68, &qword_24ACD8DA0);
  *v4 = v0;
  v4[1] = sub_24ACCA718;

  return MEMORY[0x28215ED58](&unk_24ACD8DF0, v2, v5, v6, v7);
}

void sub_24ACCA718(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    v7 = v4[19];
    v8 = v4[17];
    v11 = v4 + 10;
    v10 = v4[10];
    v9 = v11[1];

    v12 = *(v6 + 8);

    v12(a1);
  }
}

uint64_t sub_24ACCA874()
{
  v1 = v0[15];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24ACCA8D8()
{
  v1 = v0[18];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24ACCA93C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v5 = sub_24ACD0420();
  v3[4] = v5;
  v6 = *(v5 - 8);
  v3[5] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *a2;
  v3[6] = v8;
  v3[7] = v9;

  return MEMORY[0x2822009F8](sub_24ACCAA04, 0, 0);
}

uint64_t sub_24ACCAA04()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24ACCFFE0();
  LOBYTE(v2) = sub_24AC795D8(v1, v5);
  (*(v4 + 8))(v1, v3);
  if (v2)
  {
    v6 = *(v0 + 56);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v0 + 48);
  **(v0 + 16) = v7;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24ACCAB10@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E558, qword_24ACD5878);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E548, &qword_24ACD5870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16[-v9];
  if ((*(v1 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_isPairingCentralManager) & 1) == 0)
  {
    v11 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_connectionEventsStream;
    swift_beginAccess();
    sub_24AC2B5DC(v1 + v11, v10, &unk_27EF9E548, &qword_24ACD5870);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E578, qword_24ACD8D30);
    LODWORD(v11) = (*(*(v12 - 8) + 48))(v10, 1, v12);
    sub_24AC212F4(v10, &unk_27EF9E548, &qword_24ACD5870);
    if (v11 == 1)
    {
      v13 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_connectionEventsStreamContinuation;
      swift_beginAccess();
      sub_24AC2B5DC(v1 + v13, v6, &unk_27EF9E558, qword_24ACD5878);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E580, &qword_24ACD5890);
      LODWORD(v13) = (*(*(v14 - 8) + 48))(v6, 1, v14);
      sub_24AC212F4(v6, &unk_27EF9E558, qword_24ACD5878);
      if (v13 == 1)
      {
        return sub_24ACCAE2C(a1);
      }
    }
  }

  type metadata accessor for CentralManager.Error();
  sub_24ACCF6A4(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_24ACCAE2C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E558, qword_24ACD5878);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v26 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E548, &qword_24ACD5870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E738, &qword_24ACD5E38);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E580, &qword_24ACD5890);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6A8, &qword_24ACD5D00);
  (*(v11 + 104))(v14, *MEMORY[0x277D85778], v10);
  sub_24ACD07D0();
  (*(v11 + 8))(v14, v10);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E578, qword_24ACD8D30);
  v21 = *(v20 - 8);
  (*(v21 + 16))(v9, a1, v20);
  (*(v21 + 56))(v9, 0, 1, v20);
  v22 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_connectionEventsStream;
  swift_beginAccess();
  sub_24AC463C4(v9, v1 + v22, &unk_27EF9E548, &qword_24ACD5870);
  swift_endAccess();
  v23 = v26;
  (*(v16 + 16))(v26, v19, v15);
  (*(v16 + 56))(v23, 0, 1, v15);
  v24 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_connectionEventsStreamContinuation;
  swift_beginAccess();
  sub_24AC463C4(v23, v1 + v24, &unk_27EF9E558, qword_24ACD5878);
  swift_endAccess();

  sub_24ACD07E0();
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_24ACCB20C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_24ACD07C0();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;

  sub_24AC7EA6C(0, 0, v6, &unk_24ACD90E8, v8);
}

uint64_t sub_24ACCB318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E558, qword_24ACD5878) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E548, &qword_24ACD5870) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACCB3F0, a4, 0);
}

uint64_t sub_24ACCB3F0()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E578, qword_24ACD8D30);
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_connectionEventsStream;
  swift_beginAccess();
  sub_24AC463C4(v1, v3 + v5, &unk_27EF9E548, &qword_24ACD5870);
  swift_endAccess();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E580, &qword_24ACD5890);
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_connectionEventsStreamContinuation;
  swift_beginAccess();
  sub_24AC463C4(v2, v3 + v7, &unk_27EF9E558, qword_24ACD5878);
  swift_endAccess();

  v8 = v0[1];

  return v8();
}

uint64_t *MockCentralManager.deinit()
{
  v1 = v0[15];
  sub_24AC1BFC8(v0[14]);
  v2 = v0[20];

  v3 = v0[21];

  v4 = v0[22];

  v5 = v0[23];

  sub_24AC212F4(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_connectionEventsStream, &unk_27EF9E548, &qword_24ACD5870);
  sub_24AC212F4(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_connectionEventsStreamContinuation, &unk_27EF9E558, qword_24ACD5878);
  v6 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_id;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  sub_24AC56E90(*(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_mockBehavior), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_mockBehavior + 8), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_mockBehavior + 16));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t MockCentralManager.__deallocating_deinit()
{
  MockCentralManager.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24ACCB6AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC214BC;

  return sub_24ACCE14C();
}

uint64_t sub_24ACCB74C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24ACCB7E0(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_24ACCB800, v1, 0);
}

uint64_t sub_24ACCB800()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state;
  swift_beginAccess();
  *v1 = *(v2 + v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_24ACCB888(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(v1 + 16) = *a1;
  *(v1 + 24) = v2;
  *(v1 + 25) = 5;
  v3 = type metadata accessor for MockCentralManager();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = swift_task_alloc();
  *(v1 + 32) = v6;
  *v6 = v1;
  v6[1] = sub_24ACA25F8;

  return MockCentralManager.init(options:initialState:)(v6, (v1 + 25));
}

uint64_t sub_24ACCB950(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E568, &qword_24ACD8D60);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACCBA1C, v1, 0);
}

uint64_t sub_24ACCBA1C()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  swift_allocObject();
  swift_weakInit();
  (*(v2 + 104))(v1, *MEMORY[0x277D85778], v3);
  sub_24ACD0820();

  v6 = v0[1];

  return v6();
}

uint64_t sub_24ACCBB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AC20274;

  return sub_24ACC602C(a1, v8, a3, a4);
}

uint64_t sub_24ACCBBC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214BC;

  return sub_24ACC7DE0(a1);
}

uint64_t sub_24ACCBC5C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214BC;

  return sub_24ACC8C48(a1);
}

uint64_t sub_24ACCBCF0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214BC;

  return sub_24ACC952C(a1);
}

uint64_t sub_24ACCBD84(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214BC;

  return sub_24ACC9F98(a1);
}

uint64_t sub_24ACCBE18@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_id;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24ACCBEA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC283BC;

  return sub_24ACC4300();
}

uint64_t MockCentralManager.yield(connectionEvent:)(uint64_t a1)
{
  v19 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6B0, &qword_24ACD5D08);
  v20 = *(v2 - 8);
  v3 = *(v20 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E558, qword_24ACD5878);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E580, &qword_24ACD5890);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  v15 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_connectionEventsStreamContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v1 + v15, v9, &unk_27EF9E558, qword_24ACD5878);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_24AC212F4(v9, &unk_27EF9E558, qword_24ACD5878);
  }

  (*(v11 + 32))(v14, v9, v10);
  v17 = sub_24ACD00C0();
  MEMORY[0x28223BE20](v17);
  v18 = v19;
  *(&v19 - 2) = v14;
  *(&v19 - 1) = v18;
  sub_24ACD00A0();
  (*(v20 + 8))(v5, v2);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_24ACCC238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6A8, &qword_24ACD5D00);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = (&v12 - v8);
  v10 = *(v7 + 56);
  *v9 = a1;
  sub_24ACCF6EC(a3, v9 + v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E580, &qword_24ACD5890);
  return sub_24ACD07F0();
}

uint64_t sub_24ACCC310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v7 = sub_24ACD0AF0();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACCC3E0, a4, 0);
}

uint64_t sub_24ACCC3E0()
{
  v1 = (v0[5] + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_mockBehavior);
  swift_beginAccess();
  v2 = *v1;
  v0[11] = *v1;
  v3 = v1[1];
  v0[12] = v3;
  v4 = v1[2];
  v0[13] = v4;
  if (v4 < 0)
  {
    v8 = v0[9];
    v9 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    sub_24ACD0CB0();
    v10 = swift_task_alloc();
    v0[14] = v10;
    *v10 = v0;
    v10[1] = sub_24ACCC558;
    v11 = v0[9];
  }

  else
  {
    v5 = v0[10];
    sub_24ACD0CB0();
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = sub_24ACCC6E0;
    v7 = v0[10];
  }

  return sub_24AC59658(v2, v3, 0, 0, 1);
}

uint64_t sub_24ACCC558()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 120) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 40);
  if (v0)
  {
    v9 = sub_24ACCFFB4;
  }

  else
  {
    v9 = sub_24ACCC8D8;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_24ACCC6E0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  v2[17] = v0;

  v5 = v2[10];
  v6 = v2[8];
  v7 = v2[7];
  if (v0)
  {
    v8 = v2[5];
    (*(v6 + 8))(v5, v7);

    return MEMORY[0x2822009F8](sub_24ACCFFB8, v8, 0);
  }

  else
  {
    v9 = v2[6];
    (*(v6 + 8))(v5, v7);
    v10 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id;
    v11 = swift_task_alloc();
    v2[18] = v11;
    *v11 = v4;
    v11[1] = sub_24ACCFFD4;
    v12 = v2[5];

    return sub_24ACCCAFC(v9 + v10);
  }
}

uint64_t sub_24ACCC8D8()
{
  v1 = v0[13];
  v2 = v0[6];
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id;
  v4 = (v1 & 0x7FFFFFFFFFFFFFFFLL);
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_24ACCC998;
  v6 = v0[5];

  return sub_24ACCCE38(v2 + v3, v1 & 0x7FFFFFFFFFFFFFFFLL);
}

uint64_t sub_24ACCC998()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 40);
  v7 = *v0;

  sub_24AC56E90(v4, v3, v2);

  return MEMORY[0x2822009F8](sub_24ACCFFDC, v5, 0);
}

uint64_t sub_24ACCCAFC(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_24ACCCB1C, v1, 0);
}

uint64_t sub_24ACCCB1C()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 176);
  if (*(v2 + 16))
  {
    v3 = v0[8];

    v4 = sub_24AC2AC60(v3);
    if (v5)
    {
      v6 = *(*(v2 + 56) + 8 * v4);
      v0[10] = v6;

      return MEMORY[0x2822009F8](sub_24ACCCC0C, v6, 0);
    }
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_24ACCCC0C()
{
  v1 = *(v0 + 80);
  v2 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  swift_beginAccess();
  *(v1 + v2) = 3;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_24ACCCCC8;
  v4 = *(v0 + 80);

  return sub_24AC6B4B0();
}

uint64_t sub_24ACCCCC8()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24ACCCDD8, v2, 0);
}

uint64_t sub_24ACCCDD8()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24ACCCE38(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACCCF08, v2, 0);
}

uint64_t sub_24ACCCF08()
{
  v1 = v0[13];
  swift_beginAccess();
  v2 = *(v1 + 176);
  if (*(v2 + 16))
  {
    v3 = v0[11];
    v4 = *(v1 + 176);

    v5 = sub_24AC2AC60(v3);
    if (v6)
    {
      v8 = v0[15];
      v7 = v0[16];
      v9 = v0[14];
      v10 = *(*(v2 + 56) + 8 * v5);
      v0[17] = v10;

      (*(v8 + 16))(v7, v10 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id, v9);
      swift_beginAccess();
      sub_24AC7F4EC(0, v7);
      swift_endAccess();

      return MEMORY[0x2822009F8](sub_24ACCD074, v10, 0);
    }
  }

  v11 = v0[16];

  v12 = v0[1];

  return v12();
}

uint64_t sub_24ACCD074()
{
  v1 = v0[17];
  v2 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  swift_beginAccess();
  *(v1 + v2) = 1;
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_24ACCD140;
  v4 = v0[17];
  v5 = v0[12];

  return sub_24AC6B820(v5);
}

uint64_t sub_24ACCD140()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24ACCD250, v2, 0);
}

uint64_t sub_24ACCD250()
{
  v1 = v0[17];

  v2 = v0[16];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24ACCD2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v7 = sub_24ACD0AF0();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACCD388, a4, 0);
}

uint64_t sub_24ACCD388()
{
  v1 = (v0[5] + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_mockBehavior);
  swift_beginAccess();
  v2 = *v1;
  v0[11] = *v1;
  v3 = v1[1];
  v0[12] = v3;
  v4 = v1[2];
  v0[13] = v4;
  if (v4 < 0)
  {
    v8 = v0[9];
    v9 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    sub_24ACD0CB0();
    v10 = swift_task_alloc();
    v0[14] = v10;
    *v10 = v0;
    v10[1] = sub_24ACCD500;
    v11 = v0[9];
  }

  else
  {
    v5 = v0[10];
    sub_24ACD0CB0();
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = sub_24ACCD688;
    v7 = v0[10];
  }

  return sub_24AC59658(v2, v3, 0, 0, 1);
}

uint64_t sub_24ACCD500()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 120) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 40);
  if (v0)
  {
    v9 = sub_24ACCDCBC;
  }

  else
  {
    v9 = sub_24ACCDA20;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_24ACCD688()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  v2[17] = v0;

  v5 = v2[10];
  v6 = v2[8];
  v7 = v2[7];
  if (v0)
  {
    v8 = v2[5];
    (*(v6 + 8))(v5, v7);

    return MEMORY[0x2822009F8](sub_24ACCD9B4, v8, 0);
  }

  else
  {
    v9 = v2[6];
    (*(v6 + 8))(v5, v7);
    v10 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id;
    v11 = swift_task_alloc();
    v2[18] = v11;
    *v11 = v4;
    v11[1] = sub_24ACCD884;
    v12 = v2[5];

    return sub_24ACCDD34(v9 + v10, 0);
  }
}

uint64_t sub_24ACCD884()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v7 = *v0;

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_24ACCD9B4()
{
  v1 = v0[17];
  v3 = v0[9];
  v2 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24ACCDA20()
{
  v1 = v0[13];
  v2 = v0[6];
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id;
  v4 = (v1 & 0x7FFFFFFFFFFFFFFFLL);
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_24ACCDAE0;
  v6 = v0[5];

  return sub_24ACCDD34(v2 + v3, v1 & 0x7FFFFFFFFFFFFFFFLL);
}

uint64_t sub_24ACCDAE0()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 40);
  v7 = *v0;

  sub_24AC56E90(v4, v3, v2);

  return MEMORY[0x2822009F8](sub_24ACCDC44, v5, 0);
}

uint64_t sub_24ACCDC44()
{
  sub_24AC56E90(v0[11], v0[12], v0[13]);
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24ACCDCBC()
{
  sub_24AC56E90(v0[11], v0[12], v0[13]);
  v1 = v0[15];
  v3 = v0[9];
  v2 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24ACCDD34(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACCDE04, v2, 0);
}

uint64_t sub_24ACCDE04()
{
  v1 = v0[13];
  swift_beginAccess();
  v2 = *(v1 + 176);
  if (*(v2 + 16))
  {
    v3 = v0[11];
    v4 = *(v1 + 176);

    v5 = sub_24AC2AC60(v3);
    if (v6)
    {
      v8 = v0[15];
      v7 = v0[16];
      v9 = v0[14];
      v10 = *(*(v2 + 56) + 8 * v5);
      v0[17] = v10;

      (*(v8 + 16))(v7, v10 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_id, v9);
      swift_beginAccess();
      sub_24AC7F4EC(0, v7);
      swift_endAccess();

      return MEMORY[0x2822009F8](sub_24ACCDF70, v10, 0);
    }
  }

  v11 = v0[16];

  v12 = v0[1];

  return v12();
}

uint64_t sub_24ACCDF70()
{
  v1 = v0[17];
  v2 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  swift_beginAccess();
  *(v1 + v2) = 1;
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_24ACCE03C;
  v4 = v0[17];
  v5 = v0[12];

  return sub_24AC6BBAC(v5);
}

uint64_t sub_24ACCE03C()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24ACCFFA4, v2, 0);
}

uint64_t sub_24ACCE168()
{
  if (qword_27EF9DC80 != -1)
  {
    swift_once();
  }

  v1 = qword_27EF9EE28;
  *(v0 + 32) = qword_27EF9EE28;

  return MEMORY[0x2822009F8](sub_24ACCE200, v1, 0);
}

uint64_t sub_24ACCE200()
{
  v1 = *(v0 + 32);
  if (swift_weakLoadStrong())
  {
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 16) = 2;
    *(v0 + 24) = 1280;
    v4 = type metadata accessor for MockCentralManager();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v7 = swift_task_alloc();
    *(v0 + 40) = v7;
    *v7 = v0;
    v7[1] = sub_24AC9F498;

    return sub_24ACC4F98(1, v8, (v0 + 25));
  }
}

uint64_t type metadata accessor for MockCentralManager()
{
  result = qword_27EF9EE98;
  if (!qword_27EF9EE98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ACCE38C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC214AC;

  return sub_24ACC93C8(a1, a2, v6);
}

uint64_t sub_24ACCE43C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC214AC;

  return sub_24ACC9CAC(a1, a2, v6);
}

uint64_t sub_24ACCE4EC(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC214AC;

  return sub_24ACCA93C(a1, a2, v6);
}

uint64_t sub_24ACCE608(void *a1)
{
  a1[1] = sub_24ACCF6A4(&qword_27EF9EE88, type metadata accessor for MockCentralManager);
  a1[2] = sub_24ACCF6A4(&qword_27EF9E6E0, type metadata accessor for MockCentralManager);
  result = sub_24ACCF6A4(&qword_27EF9EE90, type metadata accessor for MockCentralManager);
  a1[3] = result;
  return result;
}

void sub_24ACCE704()
{
  sub_24AC542BC(319, &qword_2814AD000, &qword_27EF9E578, qword_24ACD8D30);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_24AC542BC(319, &qword_2814AD008, &qword_27EF9E580, &qword_24ACD5890);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_24ACCF628();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of MockCentralManager.__allocating_init(options:initialState:)(uint64_t a1, uint64_t a2)
{
  v9 = (*(v2 + 456) + **(v2 + 456));
  v6 = *(*(v2 + 456) + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC1DF38;

  return v9(a1, a2);
}

uint64_t dispatch thunk of MockCentralManager.isPaired(peripheral:)(uint64_t a1)
{
  v4 = *(*v1 + 472);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC2A800;

  return v8(a1);
}

uint64_t dispatch thunk of MockCentralManager.pair(peripheral:)(uint64_t a1)
{
  v4 = *(*v1 + 480);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC214AC;

  return v8(a1);
}

uint64_t dispatch thunk of MockCentralManager.unpair(peripheral:)(uint64_t a1)
{
  v4 = *(*v1 + 488);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC214AC;

  return v8(a1);
}

uint64_t dispatch thunk of MockCentralManager.stateStream()(uint64_t a1)
{
  v4 = *(*v1 + 496);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC20274;

  return v8(a1);
}

uint64_t dispatch thunk of MockCentralManager.scanForPeripherals(scanMode:garbageCollectInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 504);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_24AC214AC;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MockCentralManager.retrievePeripheral(macAddress:)(uint64_t a1)
{
  v4 = *(*v1 + 520);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC2A800;

  return v8(a1);
}

uint64_t dispatch thunk of MockCentralManager.retrievePeripherals(serialNumbers:)(uint64_t a1)
{
  v4 = *(*v1 + 528);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC2BA00;

  return v8(a1);
}

uint64_t dispatch thunk of MockCentralManager.retrievePeripherals(beaconIdentifiers:)(uint64_t a1)
{
  v4 = *(*v1 + 536);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC2BA00;

  return v8(a1);
}

uint64_t dispatch thunk of MockCentralManager.retrievePeripherals(identifiers:)(uint64_t a1)
{
  v4 = *(*v1 + 544);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC2BA00;

  return v8(a1);
}

void sub_24ACCF628()
{
  if (!qword_2814AE250)
  {
    type metadata accessor for CentralManager(255);
    v0 = sub_24ACCFFF0();
    if (!v1)
    {
      atomic_store(v0, &qword_2814AE250);
    }
  }
}

uint64_t sub_24ACCF6A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24ACCF6EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CentralManager.ConnectedState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ACCF750(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AC214AC;

  return sub_24ACCB318(a1, v4, v5, v6);
}

uint64_t sub_24ACCF804(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EE70, &qword_24ACD8DA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ACCF874(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EEA8, &qword_24ACD90F8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24AC214AC;

  return sub_24ACC65A8(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_24ACCF9BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EEA8, &qword_24ACD90F8) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = v1[6];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_24AC214AC;

  return sub_24ACC774C(a1, v10, v11, v12, v13, v14, v1 + v6, v1 + v9);
}

uint64_t sub_24ACCFB48(uint64_t a1)
{
  v3 = *(sub_24ACD0420() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_24ACC57B4(a1, v4, v5);
}

uint64_t sub_24ACCFBBC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_24ACD0420() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24AC214AC;

  return sub_24ACC5CC0(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_24ACCFD28(uint64_t a1)
{
  v4 = *(sub_24ACD0420() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AC214AC;

  return sub_24ACC5994(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24ACCFE20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AC20274;

  return sub_24ACCD2B8(a1, v4, v5, v7, v6);
}

uint64_t sub_24ACCFEE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AC214AC;

  return sub_24ACCC310(a1, v4, v5, v7, v6);
}
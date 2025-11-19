unint64_t sub_226CBB724()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D71190;
  strcpy((inited + 32), "numberOfGroups");
  *(inited + 47) = -18;
  v2 = v0[2];
  *(inited + 48) = sub_226D6E8EC();
  *(inited + 56) = 0xD00000000000001BLL;
  *(inited + 64) = 0x8000000226D86E80;
  v3 = v0[3];
  *(inited + 72) = sub_226D6E85C();
  *(inited + 80) = 0xD000000000000020;
  *(inited + 88) = 0x8000000226D86EA0;
  v4 = v0[4];
  *(inited + 96) = sub_226D6E8EC();
  *(inited + 104) = 0xD000000000000020;
  *(inited + 112) = 0x8000000226D86ED0;
  v5 = v0[5];
  *(inited + 120) = sub_226D6E8EC();
  v6 = sub_226B224E8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77D8, &qword_226D75660);
  swift_arrayDestroy();
  return v6;
}

unint64_t sub_226CBB85C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_226CBB724();
}

unint64_t sub_226CBB898()
{
  result = qword_2810615F8[0];
  if (!qword_2810615F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810615F8);
  }

  return result;
}

void *sub_226CBB8EC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_226CBDBF4(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_226CBB988(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for WebServicePendingTasksRetryState.TaskState();
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v40 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v38 = &v37 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A80, &qword_226D7AD90);
  result = sub_226D6F10C();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v37 = a4;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_16:
    v21 = v18 | (v16 << 6);
    sub_226AE4FD4(a4[6] + 40 * v21, v44);
    v22 = a4[7];
    v23 = v38;
    v24 = *(v39 + 72);
    sub_226CBEC80(v22 + v24 * v21, v38, type metadata accessor for WebServicePendingTasksRetryState.TaskState);
    v41 = v44[0];
    v42 = v44[1];
    v43 = v45;
    sub_226CBECE8(v23, v40, type metadata accessor for WebServicePendingTasksRetryState.TaskState);
    v25 = *(v14 + 40);
    result = sub_226D6EE6C();
    v26 = -1 << *(v14 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v17 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v17 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = *(v14 + 48) + 40 * v29;
    v35 = v42;
    *v34 = v41;
    *(v34 + 16) = v35;
    *(v34 + 32) = v43;
    result = sub_226CBECE8(v40, *(v14 + 56) + v29 * v24, type metadata accessor for WebServicePendingTasksRetryState.TaskState);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v37;
    if (!a3)
    {
      return v14;
    }
  }

  v19 = v16;
  while (1)
  {
    v16 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v20 = a1[v16];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v15 = (v20 - 1) & v20;
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

uint64_t sub_226CBBCB8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v61 = sub_226D67E5C();
  v57 = *(v61 - 8);
  v8 = *(v57 + 64);
  v9 = MEMORY[0x28223BE20](v61);
  v60 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v51 = v47 - v11;
  v12 = sub_226D6D52C();
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v59 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = v47 - v16;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8C50, &qword_226D77F50);
  result = sub_226D6F10C();
  v18 = result;
  if (a2 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *a1;
  }

  v20 = 0;
  v47[3] = v56 + 16;
  v48 = a2;
  v58 = v56 + 32;
  v21 = result + 64;
  v49 = a1;
  v47[0] = a4;
  v47[1] = v57 + 32;
  v47[2] = v57 + 16;
  while (v19)
  {
    v22 = __clz(__rbit64(v19));
    v52 = (v19 - 1) & v19;
LABEL_16:
    v25 = v22 | (v20 << 6);
    v26 = a4[6];
    v27 = v56;
    v55 = *(v56 + 72);
    v28 = v50;
    (*(v56 + 16))(v50, v26 + v55 * v25, v12);
    v29 = a4[7];
    v30 = v57;
    v54 = *(v57 + 72);
    v31 = v29 + v54 * v25;
    v32 = v12;
    v33 = v51;
    v34 = v61;
    (*(v57 + 16))(v51, v31, v61);
    v53 = *(v27 + 32);
    v53(v59, v28, v32);
    v35 = *(v30 + 32);
    v36 = v33;
    v12 = v32;
    v35(v60, v36, v34);
    v37 = *(v18 + 40);
    sub_226CBDA0C(&qword_281062B60, MEMORY[0x277CC95F0]);
    result = sub_226D6E2FC();
    v38 = -1 << *(v18 + 32);
    v39 = result & ~v38;
    v40 = v39 >> 6;
    if (((-1 << v39) & ~*(v21 + 8 * (v39 >> 6))) == 0)
    {
      v42 = 0;
      v43 = (63 - v38) >> 6;
      a2 = v48;
      a1 = v49;
      while (++v40 != v43 || (v42 & 1) == 0)
      {
        v44 = v40 == v43;
        if (v40 == v43)
        {
          v40 = 0;
        }

        v42 |= v44;
        v45 = *(v21 + 8 * v40);
        if (v45 != -1)
        {
          v41 = __clz(__rbit64(~v45)) + (v40 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v41 = __clz(__rbit64((-1 << v39) & ~*(v21 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
    a2 = v48;
    a1 = v49;
LABEL_26:
    *(v21 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    v53((*(v18 + 48) + v41 * v55), v59, v32);
    result = (v35)(*(v18 + 56) + v41 * v54, v60, v61);
    ++*(v18 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v47[0];
    v19 = v52;
    if (!a3)
    {
      return v18;
    }
  }

  v23 = v20;
  while (1)
  {
    v20 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v20 >= a2)
    {
      return v18;
    }

    v24 = a1[v20];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v52 = (v24 - 1) & v24;
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

uint64_t sub_226CBC15C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Permission(0);
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v50 = &v44 - v13;
  v14 = type metadata accessor for PermissionIdentifier(0);
  v48 = *(v14 - 8);
  v49 = v14;
  v15 = *(v48 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v55 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v47 = &v44 - v18;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (*(a4 + 16) == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8C40, &unk_226D7AE70);
  result = sub_226D6F10C();
  v20 = result;
  v46 = a4;
  if (a2 < 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = *a1;
  }

  v22 = 0;
  v23 = result + 64;
  v45 = a1;
  while (v21)
  {
    v24 = __clz(__rbit64(v21));
    v52 = (v21 - 1) & v21;
LABEL_16:
    v27 = v24 | (v22 << 6);
    v29 = v46;
    v28 = v47;
    v30 = *(v46 + 48);
    v54 = *(v48 + 72);
    sub_226CBEC80(v30 + v54 * v27, v47, type metadata accessor for PermissionIdentifier);
    v31 = *(v29 + 56);
    v32 = v50;
    v53 = *(v51 + 72);
    sub_226CBEC80(v31 + v53 * v27, v50, type metadata accessor for Permission);
    sub_226CBECE8(v28, v55, type metadata accessor for PermissionIdentifier);
    sub_226CBECE8(v32, v12, type metadata accessor for Permission);
    v33 = *(v20 + 40);
    sub_226D6F2FC();
    sub_226D67F0C();
    sub_226D6E42C();

    v34 = *(v49 + 20);
    sub_226D6D52C();
    sub_226CBDA0C(&qword_281062B60, MEMORY[0x277CC95F0]);
    sub_226D6E30C();
    result = sub_226D6F35C();
    v35 = -1 << *(v20 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      a1 = v45;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v23 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    a1 = v45;
LABEL_26:
    *(v23 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    sub_226CBECE8(v55, *(v20 + 48) + v38 * v54, type metadata accessor for PermissionIdentifier);
    result = sub_226CBECE8(v12, *(v20 + 56) + v38 * v53, type metadata accessor for Permission);
    ++*(v20 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v21 = v52;
    if (!a3)
    {
      return v20;
    }
  }

  v25 = v22;
  while (1)
  {
    v22 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v22 >= a2)
    {
      return v20;
    }

    v26 = a1[v22];
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v52 = (v26 - 1) & v26;
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

uint64_t sub_226CBC5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_226CBEED8;

  return sub_226CB461C(a2, a3, a4, a5, a6);
}

uint64_t sub_226CBC6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_226CBC788;

  return sub_226CB4E78(a2, a3, a4, a5, a6);
}

uint64_t sub_226CBC788(uint64_t a1, double a2, double a3)
{
  v7 = *(*v3 + 24);
  v8 = *(*v3 + 16);
  v11 = *v3;

  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3;
  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_226CBC8AC(void *a1)
{
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_226AB4000, v3, v4, "Pruning merchants and brands", v5, 2u);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_226CBD8E8;
  *(v7 + 24) = v6;
  v19 = sub_226B2A194;
  v20 = v7;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_226CAD254;
  v18 = &block_descriptor_45;
  v8 = _Block_copy(&v15);
  v9 = a1;

  [v9 performBlockAndWait_];
  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_226CBD920;
  *(v12 + 24) = v11;
  v19 = sub_226B2A194;
  v20 = v12;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_226CAD254;
  v18 = &block_descriptor_55_1;
  v13 = _Block_copy(&v15);
  v14 = v9;

  [v14 performBlockAndWait_];
  _Block_release(v13);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_226CBCBD4(uint64_t a1, void *a2)
{
  v51 = a2;
  v2 = sub_226D6D4AC();
  v49 = *(v2 - 8);
  v3 = v49;
  v4 = *(v49 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v46 - v9;
  v50 = v11;
  MEMORY[0x28223BE20](v8);
  v13 = v46 - v12;
  sub_226D6D3DC();
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v14 = sub_226D6E07C();
  __swift_project_value_buffer(v14, qword_28105F710);
  v15 = *(v3 + 16);
  v54 = v13;
  v15(v10, v13, v2);
  v16 = sub_226D6E05C();
  v17 = sub_226D6E9EC();
  v18 = os_log_type_enabled(v16, v17);
  v52 = v15;
  v53 = v3 + 16;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock = v20;
    *v19 = 136315138;
    sub_226CBDA0C(&qword_281062B80, MEMORY[0x277CC9578]);
    v21 = sub_226D6F1CC();
    v22 = v3;
    v24 = v23;
    v25 = *(v22 + 8);
    v47 = v7;
    v48 = v25;
    v25(v10, v2);
    v26 = sub_226AC4530(v21, v24, &aBlock);
    v3 = v22;
    v7 = v47;

    *(v19 + 4) = v26;
    _os_log_impl(&dword_226AB4000, v16, v17, "Pruning debug entities created before %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x22AA8BEE0](v20, -1, -1);
    v27 = v19;
    v15 = v52;
    MEMORY[0x22AA8BEE0](v27, -1, -1);
  }

  else
  {

    v48 = *(v3 + 8);
    v48(v10, v2);
  }

  v15(v7, v54, v2);
  v28 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v29 = (v50 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v31 = *(v3 + 32);
  v46[0] = v3 + 32;
  v47 = v31;
  (v31)(v30 + v28, v7, v2);
  v32 = v51;
  *(v30 + v29) = v51;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_226CBD800;
  *(v33 + 24) = v30;
  v50 = v30;
  v59 = sub_226B1BA20;
  v60 = v33;
  aBlock = MEMORY[0x277D85DD0];
  v56 = 1107296256;
  v46[1] = &v57;
  v57 = sub_226CAD254;
  v58 = &block_descriptor_16;
  v34 = _Block_copy(&aBlock);
  v35 = v32;
  v36 = v7;
  v37 = v35;

  [v37 performBlockAndWait_];
  _Block_release(v34);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
    __break(1u);
    goto LABEL_10;
  }

  v39 = v7;
  v40 = v54;
  v52(v39, v54, v2);
  v41 = swift_allocObject();
  (v47)(v41 + v28, v36, v2);
  *(v41 + v29) = v37;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_226CBD830;
  *(v42 + 24) = v41;
  v59 = sub_226B2A194;
  v60 = v42;
  aBlock = MEMORY[0x277D85DD0];
  v56 = 1107296256;
  v57 = sub_226CAD254;
  v58 = &block_descriptor_35;
  v43 = _Block_copy(&aBlock);
  v44 = v37;

  [v44 performBlockAndWait_];
  _Block_release(v43);
  v48(v40, v2);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_226CBD394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_226D6842C();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_226D6EDFC();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_226D6EDFC();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_226CBD494(uint64_t a1, uint64_t a2)
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

  result = sub_226D6EDFC();
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
    v9 = sub_226D6EDFC();
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

  sub_226CEFCA8(result, 1);

  return sub_226CBD394(v4, v2, 0);
}

uint64_t sub_226CBD56C(unint64_t a1)
{
  v30 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
LABEL_24:
    v2 = sub_226D6EDFC();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x277D84F98];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x22AA8AFD0](v3, a1);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v7 = *(a1 + 8 * v3 + 32);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }
        }

        v29 = v8;
        v9 = v7;
        v10 = [v7 id];
        v11 = sub_226D6E39C();
        v13 = v12;

        v15 = sub_226C2FDD4(v11, v13);
        v16 = v4[2];
        v17 = (v14 & 1) == 0;
        v18 = v16 + v17;
        if (__OFADD__(v16, v17))
        {
          goto LABEL_22;
        }

        v19 = v14;
        if (v4[3] < v18)
        {
          sub_226C35D28(v18, 1);
          v4 = v30;
          v20 = sub_226C2FDD4(v11, v13);
          if ((v19 & 1) != (v21 & 1))
          {
            result = sub_226D6F25C();
            __break(1u);
            return result;
          }

          v15 = v20;
        }

        if (v19)
        {

          v6 = (v4[7] + 8 * v15);
          MEMORY[0x22AA8A610](v5);
          if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v27 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_226D6E61C();
          }

          sub_226D6E65C();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_226D71F20;
          *(v22 + 32) = v9;
          v4[(v15 >> 6) + 8] |= 1 << v15;
          v23 = (v4[6] + 16 * v15);
          *v23 = v11;
          v23[1] = v13;
          *(v4[7] + 8 * v15) = v22;
          v24 = v4[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_23;
          }

          v4[2] = v26;
        }

        ++v3;
        if (v29 == v2)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x277D84F98];
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226CBD848(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(sub_226D6D4AC() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_226CBD958(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226CB673C(a1, v4, v5, v6);
}

uint64_t sub_226CBDA0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226CBDA54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226CB743C(a1, v4, v5, v6);
}

uint64_t sub_226CBDB08(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v8 = v2[4];
  v9 = *(v2 + 5);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_226AE5A84;

  return sub_226CBC6C0(a1, a2, v6, v9, v7, v8);
}

void sub_226CBDBE8(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_226CBDBF4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = result;
  v24 = 0;
  v5 = 0;
  v28 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = a4 + 56;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v25 = v12 | (v5 << 6);
    sub_226AE4FD4(v28[6] + 40 * v25, v27);
    if (*(a4 + 16) && (v15 = *(a4 + 40), v16 = sub_226D6EE6C(), v17 = -1 << *(a4 + 32), v18 = v16 & ~v17, ((*(v11 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0))
    {
      v19 = ~v17;
      while (1)
      {
        sub_226AE4FD4(*(a4 + 48) + 40 * v18, v26);
        v20 = MEMORY[0x22AA8AF20](v26, v27);
        sub_226AE5030(v26);
        if (v20)
        {
          break;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v11 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      result = sub_226AE5030(v27);
      *(v23 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return sub_226CBB988(v23, a2, v24, v28);
      }
    }

    else
    {
LABEL_5:
      result = sub_226AE5030(v27);
    }
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_226CBB988(v23, a2, v24, v28);
    }

    v14 = *(v6 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226CBDDD8(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v10 = sub_226CBB8EC(v13, v7, a1, a2);
      MEMORY[0x22AA8BEE0](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_226CBDBF4(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_226CBDF98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AD827C;

  return sub_226CB121C(a1, v4, v5, v6);
}

uint64_t sub_226CBE058(uint64_t a1)
{
  v2 = type metadata accessor for ActivityRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226CBE0BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226CB634C(a1, v4, v5, v6);
}

uint64_t sub_226CBE170(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226CAD650(a1, v4, v5, v6);
}

uint64_t sub_226CBE26C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226CAE100();
}

uint64_t sub_226CBE320(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v8 = v2[4];
  v9 = *(v2 + 5);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_226AE5A84;

  return sub_226CBC5F8(a1, a2, v6, v9, v7, v8);
}

uint64_t sub_226CBE400(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226CB1040(a1, v4, v5, v6);
}

uint64_t objectdestroy_124Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226CBE52C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226CAE070();
}

char *sub_226CBE5E0(uint64_t a1)
{
  sub_226D6842C();
  v3 = sub_226D6840C();
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v4 = MEMORY[0x277D84F90];
  v5 = sub_226D6E91C();
  [v3 setPredicate_];

  v6 = a1;
  v7 = sub_226D6EBBC();
  if (v1)
  {

    return v6;
  }

  v8 = v7;
  if (!(v7 >> 62))
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_18:

    return MEMORY[0x277D84F90];
  }

  v9 = sub_226D6EDFC();
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_5:
  result = sub_226AE1D68(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v28 = v3;
    v6 = v4;
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      do
      {
        MEMORY[0x22AA8AFD0](v11, v8);
        v12 = [swift_unknownObjectRetain() id];
        v13 = sub_226D6E39C();
        v15 = v14;
        swift_unknownObjectRelease_n();

        v17 = *(v6 + 16);
        v16 = *(v6 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_226AE1D68((v16 > 1), v17 + 1, 1);
        }

        ++v11;
        *(v6 + 16) = v17 + 1;
        v18 = v6 + 16 * v17;
        *(v18 + 32) = v13;
        *(v18 + 40) = v15;
      }

      while (v9 != v11);
    }

    else
    {
      v19 = 32;
      do
      {
        v20 = *(v8 + v19);
        v21 = [v20 id];
        v22 = sub_226D6E39C();
        v24 = v23;

        v26 = *(v6 + 16);
        v25 = *(v6 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_226AE1D68((v25 > 1), v26 + 1, 1);
        }

        *(v6 + 16) = v26 + 1;
        v27 = v6 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
        v19 += 8;
        --v9;
      }

      while (v9);
    }

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_226CBE88C(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v22 = a1;
  v2 = sub_226D6BD9C();
  v23 = *(v2 - 8);
  v24 = v2;
  v3 = *(v23 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_226D69F0C();
  v6 = sub_226D69DDC();
  v25 = v6;
  [v6 setReturnsObjectsAsFaults_];
  v7 = sub_226D6E5CC();
  [v6 setRelationshipKeyPathsForPrefetching_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_226D71F30;
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  *(v8 + 32) = sub_226D6E91C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v9 = swift_allocObject();
  v21 = xmmword_226D70840;
  *(v9 + 16) = xmmword_226D70840;
  *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FC0, &unk_226D75DC0);
  *(v9 + 64) = sub_226AC4194(&qword_28105F520, &qword_27D7A5FC0, &unk_226D75DC0);
  *(v9 + 32) = v22;

  *(v8 + 40) = sub_226D6E91C();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_226D71F40;
  *(v10 + 32) = sub_226D6E91C();
  v11 = swift_allocObject();
  *(v11 + 16) = v21;
  sub_226D6BD6C();
  LODWORD(v9) = sub_226D6BD7C();
  (*(v23 + 8))(v5, v24);
  v12 = MEMORY[0x277D84A20];
  *(v11 + 56) = MEMORY[0x277D849A8];
  *(v11 + 64) = v12;
  *(v11 + 32) = v9;
  *(v10 + 40) = sub_226D6E91C();
  v13 = sub_226D6E5CC();

  v14 = objc_opt_self();
  v15 = [v14 orPredicateWithSubpredicates_];

  *(v8 + 48) = v15;
  v16 = sub_226D6E5CC();

  v17 = [v14 andPredicateWithSubpredicates_];

  v18 = v25;
  [v25 setPredicate_];

  v19 = sub_226D6EBBC();
  return v19;
}

uint64_t sub_226CBEC80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226CBECE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_226CBED58()
{
  result = qword_27D7A8CD8;
  if (!qword_27D7A8CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8CD8);
  }

  return result;
}

uint64_t sub_226CBEDAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_226CBEDF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226CBEE50(uint64_t a1, int a2)
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

uint64_t sub_226CBEE70(uint64_t result, int a2, int a3)
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

uint64_t sub_226CBEF40(uint64_t a1, unint64_t a2)
{
  v4 = sub_226D6CCFC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = 0;
    v24 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v25 = a2 & 0xFFFFFFFFFFFFFFLL;
    v26[3] = "emailMessageID != nil";
    v11 = (v6 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_226D6EEEC();
        v15 = v14;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v26[0] = a1;
          v26[1] = v25;
          v13 = v26 + v10;
        }

        else
        {
          v12 = v24;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v12 = sub_226D6EF4C();
          }

          v13 = (v12 + v10);
        }

        v16 = *v13;
        if ((*v13 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v18 = (__clz(v16 ^ 0xFF) - 24);
        if (v18 > 2)
        {
          if (v18 == 3)
          {
            v20 = ((v16 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3Fu;
            v15 = 3;
          }

          else
          {
            v21 = ((v16 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3Fu;
            v15 = 4;
          }

          goto LABEL_15;
        }

        if (v18 == 1)
        {
LABEL_14:
          v15 = 1;
        }

        else
        {
          v19 = v13[1] & 0x3F | ((v16 & 0x1F) << 6);
          v15 = 2;
        }
      }

LABEL_15:
      sub_226D6CCBC();
      v17 = sub_226D6CCDC();
      (*v11)(v8, v4);
      if (v17)
      {
        v10 += v15;
        if (v10 < v9)
        {
          continue;
        }
      }

      return v17 & 1;
    }
  }

  v17 = 1;
  return v17 & 1;
}

void sub_226CBF18C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = [objc_opt_self() currentQueryGenerationToken];
  v18[0] = 0;
  v8 = [a1 setQueryGenerationFromToken:v7 error:v18];

  v9 = v18[0];
  if (!v8)
  {
LABEL_8:
    v16 = v9;
    sub_226D6D04C();

    swift_willThrow();
    goto LABEL_9;
  }

  v10 = v18[0];
  sub_226CC0554();
  if (!v4)
  {
    sub_226CC0750();
    sub_226CC0944();
    sub_226CBF2F0(a1, v11, v12, a4);
    v18[0] = 0;
    v13 = [a1 save_];
    v9 = v18[0];
    if (v13)
    {
      v14 = v18[0];
      v15 = *MEMORY[0x277D85DE8];
      return;
    }

    goto LABEL_8;
  }

LABEL_9:
  v17 = *MEMORY[0x277D85DE8];
}

void sub_226CBF2F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v136 = a4;
  v146 = a1;
  v4 = sub_226D6D52C();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v161 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v135 = &v113 - v8;
  v9 = sub_226D6D4AC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v149 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_226D6B49C();
  v141 = *(v123 - 8);
  v12 = *(v141 + 64);
  MEMORY[0x28223BE20](v123);
  v124 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_226D6708C();
  v140 = *(v137 - 8);
  v14 = *(v140 + 64);
  v15 = MEMORY[0x28223BE20](v137);
  v148 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v134 = &v113 - v18;
  MEMORY[0x28223BE20](v17);
  v150 = &v113 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE8, &qword_226D7AFD8);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v147 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v151 = (&v113 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6898, &unk_226D75B90);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v113 - v27;
  v29 = sub_226D670CC();
  v125 = *(v29 - 8);
  v30 = *(v125 + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v113 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v113 - v37;
  v39 = sub_226D69D0C();
  v40 = sub_226D69CBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_226D71F20;
  sub_226B2A4F4();
  *(v41 + 32) = sub_226D6E91C();
  v42 = sub_226D6E5CC();

  v43 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v40 setPredicate_];
  v44 = v39;
  v45 = v162;
  v46 = sub_226D6EBBC();
  v160 = v45;
  if (v45)
  {

    return;
  }

  v47 = v125;
  v159 = v38;
  v132 = v36;
  v133 = v33;
  v158 = v29;
  v153 = v28;
  v48 = v137;
  v157 = v46;
  if (v46 >> 62)
  {
LABEL_41:
    v49 = sub_226D6EDFC();
    v46 = v157;
  }

  else
  {
    v49 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = v150;
  v51 = v161;
  v120 = v40;
  if (!v49)
  {
LABEL_38:

    return;
  }

  v130 = v44;
  v44 = 0;
  v155 = v46 & 0xFFFFFFFFFFFFFF8;
  v156 = v46 & 0xC000000000000001;
  v152 = (v47 + 48);
  v144 = (v140 + 88);
  v145 = (v47 + 32);
  v143 = *MEMORY[0x277CC6AC8];
  v129 = *MEMORY[0x277CC6AB8];
  v122 = *MEMORY[0x277CC6AC0];
  v121 = *MEMORY[0x277CC6AD0];
  v119 = *MEMORY[0x277CC6AB0];
  v115 = *MEMORY[0x277CC6AA8];
  v142 = (v140 + 56);
  v131 = (v140 + 8);
  v139 = (v140 + 96);
  v138 = (v140 + 104);
  v118 = (v141 + 32);
  v141 = v140 + 48;
  v128 = (v140 + 32);
  v127 = (v140 + 16);
  v126 = (v47 + 16);
  v140 = v47 + 8;
  v47 = *MEMORY[0x277CC6AA0];
  v154 = v49;
  v114 = v47;
  while (1)
  {
    if (v156)
    {
      v52 = MEMORY[0x22AA8AFD0](v44, v46);
      v53 = (v44 + 1);
      if (__OFADD__(v44, 1))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    else
    {
      if (v44 >= *(v155 + 16))
      {
        __break(1u);
        goto LABEL_41;
      }

      v52 = *(v46 + 8 * v44 + 32);
      v53 = (v44 + 1);
      if (__OFADD__(v44, 1))
      {
        goto LABEL_37;
      }
    }

    v54 = v51;
    v162 = v52;
    v55 = [v52 emailMessageID];
    if (!v55)
    {
      break;
    }

    v56 = v55;
    v161 = v53;
    v57 = sub_226D6E39C();
    v47 = v58;

    if (sub_226D6E43C() == 64)
    {
      v59 = v160;
      v60 = sub_226CBEF40(v57, v47);
      v160 = v59;

      v51 = v54;
      v61 = v159;
      if (v60)
      {

        goto LABEL_8;
      }
    }

    else
    {

      v51 = v54;
      v61 = v159;
    }

    v40 = v162;
    v62 = v153;
    sub_226D69C8C();
    v47 = v158;
    if ((*v152)(v62, 1, v158) == 1)
    {

      sub_226AC47B0(v62, &qword_27D7A6898, &unk_226D75B90);
      goto LABEL_8;
    }

    (*v145)(v61, v62, v47);
    sub_226D670AC();
    v63 = (*v144)(v50, v48);
    v64 = v143;
    if (v63 == v143 || (v64 = v129, v63 == v129) || (v64 = v122, v63 == v122))
    {
LABEL_21:
      (*v139)(v50, v48);
      v65 = *v50;
      v66 = v50[1];
      v40 = v48;
      v67 = v50[2];
      v68 = v50[3];
      v69 = sub_226CC019C();
      v71 = v70;

      v72 = v151;
      *v151 = v69;
      v72[1] = v71;
      v51 = v54;
      v73 = v72;
      v72[2] = v67;
      v72[3] = v68;
      goto LABEL_22;
    }

    if (v63 == v121)
    {
      (*v139)(v50, v48);
      v90 = *v50;
      v91 = v50[1];
      v92 = v50[3];
      v125 = v50[2];
      v117 = v92;
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66B8, &unk_226D718D0);
      v40 = v48;
      v94 = *v118;
      v95 = v50 + *(v93 + 64);
      v96 = v123;
      (*v118)(v124, v95, v123);
      v116 = *(v93 + 64);
      v97 = sub_226CC019C();
      v99 = v98;

      v100 = v151;
      *v151 = v97;
      v100[1] = v99;
      v51 = v54;
      v73 = v100;
      v101 = v117;
      v73[2] = v125;
      v73[3] = v101;
      v94(v73 + v116, v124, v96);
      v75 = v40;
      (*v138)(v73, v121, v40);
      goto LABEL_23;
    }

    v64 = v119;
    if (v63 == v119)
    {
      goto LABEL_21;
    }

    v64 = v115;
    if (v63 == v115)
    {
      goto LABEL_21;
    }

    v64 = v114;
    if (v63 == v114)
    {
      (*v139)(v50, v48);
      v102 = *v50;
      v103 = v50[1];
      v104 = v50[2];
      v105 = v50[3];
      v40 = v48;
      v106 = v50[4];
      v107 = v50[5];
      v125 = sub_226CC019C();
      v117 = v108;

      v109 = sub_226CC019C();
      v111 = v110;
      v51 = v54;

      v73 = v151;
      v112 = v117;
      *v151 = v125;
      v73[1] = v112;
      v73[2] = v109;
      v73[3] = v111;
      v73[4] = v106;
      v73[5] = v107;
LABEL_22:
      v74 = v64;
      v75 = v40;
      (*v138)(v73, v74, v40);
LABEL_23:
      (*v142)(v73, 0, 1, v40);
      goto LABEL_24;
    }

    v73 = v151;
    (*v142)(v151, 1, 1, v48);
    (*v131)(v50, v48);
    v75 = v48;
LABEL_24:
    v76 = v148;
    v47 = v147;
    sub_226CC0BF0(v73, v147);
    if ((*v141)(v47, 1, v75) == 1)
    {

      sub_226AC47B0(v73, &qword_27D7A8CE8, &qword_226D7AFD8);
      (*v140)(v159, v158);
      sub_226AC47B0(v47, &qword_27D7A8CE8, &qword_226D7AFD8);
      v48 = v75;
      v50 = v150;
    }

    else
    {
      v77 = v51;
      v78 = v134;
      (*v128)(v134, v47, v75);
      (*v127)(v76, v78, v75);
      v79 = v159;
      sub_226D670BC();
      v80 = *(v136 + 16);
      v81 = *(*v80 + *MEMORY[0x277D841D0] + 16);
      v82 = (*(*v80 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((v80 + v82));
      v83 = v160;
      sub_226CC4EC4(v135);
      v160 = v83;
      v55 = (v80 + v82);
      if (v83)
      {
        goto LABEL_43;
      }

      os_unfair_lock_unlock(v55);
      sub_226D6D51C();
      v84 = v132;
      sub_226D6709C();
      v85 = v158;
      (*v126)(v133, v84, v158);
      v86 = v146;
      v87 = sub_226D69CEC();

      v47 = v85;
      v88 = v78;
      v51 = v77;
      v40 = v137;
      (*v131)(v88, v137);
      sub_226AC47B0(v151, &qword_27D7A8CE8, &qword_226D7AFD8);
      v89 = *v140;
      (*v140)(v79, v47);
      v89(v84, v47);
      v48 = v40;
      v50 = v150;
    }

LABEL_8:
    ++v44;
    v46 = v157;
    if (v161 == v154)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_43:
  os_unfair_lock_unlock(v55);
  __break(1u);
}

void sub_226CC00DC(uint64_t *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v1[2];
  v5 = *a1;
  v6 = sub_226D676AC();
  sub_226D6EB7C();
}

uint64_t sub_226CC019C()
{
  v0 = sub_226D6E29C();
  v22 = *(v0 - 8);
  v1 = *(v22 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_226D6E3DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6E21C();
  v23 = *(v9 - 8);
  v10 = *(v23 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6E3BC();
  v13 = sub_226D6E3AC();
  v15 = v14;
  result = (*(v5 + 8))(v8, v4);
  if (v15 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_226B3FA78(&qword_27D7A6E00, MEMORY[0x277CC5540]);
    sub_226D6E20C();
    sub_226B11B44(v13, v15);
    sub_226B3F488(v13, v15);
    sub_226B3FAEC(v13, v15);
    sub_226D6E1FC();
    sub_226B3FAEC(v13, v15);
    (*(v22 + 8))(v3, v0);
    v27 = v9;
    v28 = sub_226B3FA78(&qword_27D7A6E08, MEMORY[0x277CC5290]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
    v18 = v23;
    (*(v23 + 16))(boxed_opaque_existential_1, v12, v9);
    __swift_project_boxed_opaque_existential_1(v26, v27);
    sub_226D6CEFC();
    v19 = v24;
    v20 = v25;
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    v26[0] = v19;
    v26[1] = v20;
    sub_226C61B28();
    v21 = sub_226D6CD0C();
    (*(v18 + 8))(v12, v9);
    sub_226B11B98(v19, v20);
    return v21;
  }

  return result;
}

void sub_226CC0554()
{
  sub_226D6BECC();
  v1 = sub_226D6BEBC();
  sub_226B2A4F4();
  v2 = sub_226D6E91C();
  [v1 setPredicate_];

  v3 = sub_226D6EBBC();
  if (v0)
  {

    return;
  }

  v4 = v3;
  if (!(v3 >> 62))
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_13:

    return;
  }

  v5 = sub_226D6EDFC();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AA8AFD0](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      v9 = [v7 messageID];
      if (v9)
      {
        v10 = v9;
        sub_226D6E39C();

        sub_226CC019C();

        v11 = sub_226D6E36C();

        [v8 setMessageIDHash_];
      }
    }

    goto LABEL_13;
  }

  __break(1u);
}

void sub_226CC0750()
{
  sub_226D69D3C();
  v1 = sub_226D69D1C();
  sub_226B2A4F4();
  v2 = sub_226D6E91C();
  [v1 setPredicate_];

  v3 = sub_226D6EBBC();
  if (v0)
  {

    return;
  }

  v4 = v3;
  if (!(v3 >> 62))
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_11:

    return;
  }

  v5 = sub_226D6EDFC();
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AA8AFD0](v6, v4);
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = [v7 messageID];
      sub_226D6E39C();

      sub_226CC019C();

      v10 = sub_226D6E36C();

      [v8 setMessageIDHash_];
    }

    while (v5 != v6);
    goto LABEL_11;
  }

  __break(1u);
}

void sub_226CC0944()
{
  sub_226D6990C();
  v1 = sub_226D6989C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_226D71F40;
  sub_226B2A4F4();
  *(v2 + 32) = sub_226D6E91C();
  *(v2 + 40) = sub_226D6E91C();
  v3 = sub_226D6E5CC();

  v4 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v1 setPredicate_];
  v5 = sub_226D6EBBC();
  if (v0)
  {

    return;
  }

  v6 = v5;
  if (!(v5 >> 62))
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_14:

    return;
  }

  v7 = sub_226D6EDFC();
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (v7 >= 1)
  {
    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AA8AFD0](v8, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v8 + 32);
      }

      v12 = v11;
      v13 = [v11 merchantEmailMessageID];
      if (v13)
      {
        v9 = v13;
        sub_226D6E39C();

        sub_226CC019C();
        swift_bridgeObjectRelease_n();
        v10 = sub_226D6E36C();
      }

      else
      {
        v10 = 0;
      }

      ++v8;
      [v12 setMerchantEmailMessageIDHash_];
    }

    while (v7 != v8);
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_226CC0BF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE8, &qword_226D7AFD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BankConnectServiceImplementation.updateConsentStatus(forConsentID:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_226D6D4AC();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CC0D24, 0, 0);
}

uint64_t sub_226CC0D24()
{
  v30 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v5 = *(*(v4 + 8) + 8);
  sub_226D6BAAC();
  v6 = sub_226D676AC();
  v0[11] = v6;

  v7 = swift_task_alloc();
  v7[2] = v3;
  v7[3] = v1;
  v7[4] = v6;
  sub_226D6EB8C();
  v8 = v0[10];

  v9 = v0[3];
  v0[12] = v0[2];
  v0[13] = v9;
  sub_226D6D46C();
  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v10 = v0[6];
  v11 = sub_226D6E07C();
  v0[14] = __swift_project_value_buffer(v11, qword_27D7A7D10);

  v12 = sub_226D6E05C();
  v13 = sub_226D6E9AC();

  if (os_log_type_enabled(v12, v13))
  {
    v15 = v0[5];
    v14 = v0[6];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v29[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_226AC4530(v15, v14, v29);
    _os_log_impl(&dword_226AB4000, v12, v13, "Fetching and updating consent status for consentID: %s.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x22AA8BEE0](v17, -1, -1);
    MEMORY[0x22AA8BEE0](v16, -1, -1);
  }

  v18 = __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v29[3] = &type metadata for BankConnectEnvironmentImplementation;
  v29[4] = sub_226B41FC0();
  v29[0] = swift_allocObject();
  sub_226B42014(v18, v29[0] + 16);
  v19 = sub_226D6BF3C();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_226D6BF2C();
  v0[15] = v22;
  v0[4] = v22;
  v23 = *(MEMORY[0x277CC81E8] + 4);
  v24 = swift_task_alloc();
  v0[16] = v24;
  *v24 = v0;
  v24[1] = sub_226CC106C;
  v26 = v0[5];
  v25 = v0[6];
  v27 = MEMORY[0x277CC81A8];

  return MEMORY[0x28211A700](v26, v25, v19, v27);
}

uint64_t sub_226CC106C()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_226CC124C;
  }

  else
  {
    v3 = sub_226CC1180;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226CC1180()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];

  sub_226CC15FC(v8, v2, v3);

  (*(v7 + 8))(v4, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_226CC124C()
{
  v30 = v0;
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[6];

  v5 = v1;
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9CC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[17];
    v10 = v0[5];
    v9 = v0[6];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_226AC4530(v10, v9, &v29);
    *(v11 + 12) = 2112;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_226AB4000, v6, v7, "Failed to fetch and update consent status for consentID: %s with: %@.", v11, 0x16u);
    sub_226B17298(v12);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
  }

  v16 = v0[17];
  v18 = v0[12];
  v17 = v0[13];
  v19 = v0[10];
  v20 = v0[11];
  v21 = v0[9];
  v28 = v0[8];
  v22 = v0[7];
  v23 = sub_226D6A0DC();
  sub_226BD7738();
  swift_allocError();
  *v24 = v16;
  (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277CC7AB0], v23);
  swift_willThrow();
  sub_226CC15FC(v22, v18, v17);

  (*(v21 + 8))(v19, v28);
  v25 = v0[10];

  v26 = v0[1];

  return v26();
}

void sub_226CC14C4(uint64_t *a1@<X8>)
{
  sub_226D6842C();
  v3 = sub_226D683FC();
  if (!v1)
  {
    if (v3)
    {
      v4 = v3;
      v5 = [v3 id];
      v6 = sub_226D6E39C();
      v8 = v7;

      *a1 = v6;
      a1[1] = v8;
    }

    else
    {
      v9 = sub_226D6A0DC();
      sub_226BD7738();
      swift_allocError();
      (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277CC7AB8], v9);
      swift_willThrow();
    }
  }
}

void sub_226CC15DC(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_226CC14C4(a1);
}

uint64_t sub_226CC15FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6D46C();
  v11 = __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_226AE532C((v11 + 41), v17);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_226D6D3BC();
  v13 = v12;
  v16[3] = &_s24InstitutionDurationEventVN;
  v16[4] = sub_226B420B8();
  v14 = swift_allocObject();
  v16[0] = v14;
  v14[2] = 0xD000000000000032;
  v14[3] = 0x8000000226D86FB0;
  v14[4] = a2;
  v14[5] = a3;
  v14[6] = v13;

  sub_226D69AFC();
  (*(v7 + 8))(v10, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  return __swift_destroy_boxed_opaque_existential_0Tm(v17);
}

uint64_t type metadata accessor for OrderWebServiceRequestTokenTask()
{
  result = qword_27D7A8CF0;
  if (!qword_27D7A8CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226CC181C()
{
  sub_226B20350();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_226CC18A0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(type metadata accessor for OrderWebServiceRequestTokenTask() - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CC1948, 0, 0);
}

uint64_t sub_226CC1948()
{
  v37 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = sub_226D6E07C();
  *(v0 + 96) = __swift_project_value_buffer(v3, qword_28105F5C0);
  sub_226CC28BC(v2, v1);
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9EC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 88);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v36[0] = v9;
    *v8 = 136315138;
    v10 = *v7;
    v11 = v7[1];

    sub_226CC293C(v7, type metadata accessor for OrderWebServiceRequestTokenTask);
    v12 = sub_226AC4530(v10, v11, v36);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226AB4000, v4, v5, "Starting request token task for order type %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  else
  {

    sub_226CC293C(v7, type metadata accessor for OrderWebServiceRequestTokenTask);
  }

  v13 = *(v0 + 64);
  v14 = **(v0 + 56);
  v15 = sub_226D676AC();
  *(v0 + 104) = v15;
  v16 = swift_task_alloc();
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  sub_226D6EB7C();

  if (*(v0 + 128) == 1)
  {
    sub_226AE532C(*(v0 + 56) + 96, v0 + 16);
    v17 = sub_226D6E05C();
    v18 = sub_226D6E9EC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_226AB4000, v17, v18, "Updating enabled topics", v19, 2u);
      MEMORY[0x22AA8BEE0](v19, -1, -1);
    }

    v20 = *__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v21 = swift_task_alloc();
    *(v0 + 112) = v21;
    *v21 = v0;
    v21[1] = sub_226CC1E24;

    return sub_226D0A5C4();
  }

  else
  {
    sub_226CC28BC(*(v0 + 64), *(v0 + 72));
    v23 = sub_226D6E05C();
    v24 = sub_226D6E9EC();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 72);
    if (v25)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36[0] = v28;
      *v27 = 136315138;
      v29 = *v26;
      v30 = v26[1];

      sub_226CC293C(v26, type metadata accessor for OrderWebServiceRequestTokenTask);
      v31 = sub_226AC4530(v29, v30, v36);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_226AB4000, v23, v24, "Order type %s not found", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x22AA8BEE0](v28, -1, -1);
      MEMORY[0x22AA8BEE0](v27, -1, -1);
    }

    else
    {

      sub_226CC293C(v26, type metadata accessor for OrderWebServiceRequestTokenTask);
    }

    v33 = *(v0 + 80);
    v32 = *(v0 + 88);
    v34 = *(v0 + 72);

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_226CC1E24()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226CC1F20, 0, 0);
}

uint64_t sub_226CC1F20()
{
  v19 = v0;
  v1 = v0[12];
  sub_226CC28BC(v0[8], v0[10]);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[10];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    v8 = *v5;
    v9 = v5[1];

    sub_226CC293C(v5, type metadata accessor for OrderWebServiceRequestTokenTask);
    v10 = sub_226AC4530(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_226AB4000, v2, v3, "Requesting token for order type %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  else
  {

    sub_226CC293C(v5, type metadata accessor for OrderWebServiceRequestTokenTask);
  }

  v11 = v0[8];
  v12 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v14 = *v11;
  v13 = v11[1];
  v15 = *v12;
  v16 = swift_task_alloc();
  v0[15] = v16;
  *v16 = v0;
  v16[1] = sub_226CC2104;

  return sub_226D0B2F4(v14, v13);
}

uint64_t sub_226CC2104()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226CC2200, 0, 0);
}

uint64_t sub_226CC2200()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);

  v4 = *(v0 + 8);

  return v4();
}

void sub_226CC2288(uint64_t *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v7 = sub_226D6D4AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D67FDC();
  v12 = *a1;
  v13 = a1[1];
  v14 = sub_226D67FBC();
  if (!v3)
  {
    v15 = v14;
    if (v14)
    {
      v16 = [v14 requestTokenAttemptCount];
      if (__OFADD__(v16, 1))
      {
        __break(1u);
      }

      [v15 setRequestTokenAttemptCount_];
      sub_226D6D46C();
      v17 = sub_226D6D3EC();
      (*(v8 + 8))(v11, v7);
      [v15 setLastRequestTokenAttemptDate_];

      v22[0] = 0;
      if (![a2 save_])
      {
        v20 = v22[0];
        sub_226D6D04C();

        swift_willThrow();
        goto LABEL_9;
      }

      v18 = v22[0];

      v19 = 1;
    }

    else
    {
      v19 = 0;
    }

    *a3 = v19;
  }

LABEL_9:
  v21 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226CC2480@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  type metadata accessor for OrderWebServiceTaskIdentifier(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_226CC24D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8630, &unk_226D79550);
  v1 = *(type metadata accessor for OrderWebServiceTaskExclusivityIdentifier(0) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_226D70840;
  v5 = (v4 + v3);
  v6 = *v0;
  v7 = v0[1];
  *v5 = v6;
  v5[1] = v7;
  swift_storeEnumTagMultiPayload();

  v8 = sub_226B1FBC0(v4);
  swift_setDeallocating();
  sub_226CC293C(v5, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
  swift_deallocClassInstance();
  return v8;
}

uint64_t sub_226CC25F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226CC18A0(a1);
}

unint64_t sub_226CC2688()
{
  sub_226D6EEFC();

  MEMORY[0x22AA8A510](*v0, v0[1]);
  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0xD000000000000028;
}

uint64_t sub_226CC2708(uint64_t a1)
{
  *(a1 + 8) = sub_226CC2874(&qword_27D7A8D00, type metadata accessor for OrderWebServiceRequestTokenTask);
  result = sub_226CC2874(&qword_27D7A8D08, type metadata accessor for OrderWebServiceRequestTokenTask);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226CC281C(uint64_t a1)
{
  result = sub_226CC2874(&qword_27D7A8D10, type metadata accessor for OrderWebServiceRequestTokenTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226CC2874(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226CC28BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderWebServiceRequestTokenTask();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226CC293C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_226CC29A0()
{
  v1 = v0;
  v2 = 0xD000000000000031;
  v3 = sub_226D6921C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226CC2D10(v1, v6, MEMORY[0x277CC77F8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D30, &qword_226D79790) + 48);
      v9 = sub_226D6B49C();
      v10 = *(*(v9 - 8) + 8);
      v10(&v6[v8], v9);
      v10(v6, v9);
      return 0xD000000000000032;
    }

    else
    {
      return 0xD000000000000040;
    }
  }

  else
  {
    sub_226CC2D78(v6, MEMORY[0x277CC77F8]);
  }

  return v2;
}

unint64_t sub_226CC2B20()
{
  v1 = v0;
  v2 = 0xD000000000000043;
  v3 = sub_226D66DFC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226CC2D10(v1, v6, MEMORY[0x277CC6528]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v8 = sub_226D6D4AC();
        (*(*(v8 - 8) + 8))(v6, v8);
      }

      else
      {
        return 0xD00000000000003ALL;
      }
    }

    else if (EnumCaseMultiPayload != 4)
    {
      sub_226CC2D78(v6, MEMORY[0x277CC6528]);
      return 0xD000000000000030;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return 0xD000000000000034;
    }

    else
    {
      sub_226B905C4(v6);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_226CC2D78(v6, MEMORY[0x277CC6528]);
    return 0xD000000000000032;
  }

  else
  {
    sub_226CC2D78(v6, MEMORY[0x277CC6528]);
    return 0xD00000000000003BLL;
  }

  return v2;
}

uint64_t sub_226CC2D10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226CC2D78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226CC2DF0(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_226D6ED6C();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_226CCD230(v3, *(a1 + 36), 0, a1);

  return v5;
}

uint64_t sub_226CC2E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = sub_226D6ED6C();
  v6 = 1;
  if (v5 != 1 << *(a1 + 32))
  {
    sub_226CCCEEC(v5, *(a1 + 36), a1, a2);
    v6 = 0;
  }

  v7 = sub_226D6D52C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

void sub_226CC2F28(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v28 = a3;
  v27 = sub_226D670CC();
  v5 = *(v27 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v27);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6D4AC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_226D6D52C();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v26 - v14;
  v16 = sub_226D6708C();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  (*(v19 + 16))(v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v20 = *(v3 + 16);
  v21 = *(*v20 + *MEMORY[0x277D841D0] + 16);
  v22 = (*(*v20 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v20 + v22));
  v23 = v26[1];
  sub_226CC4EC4(v15);
  os_unfair_lock_unlock((v20 + v22));
  if (v23)
  {
    __break(1u);
  }

  else
  {
    sub_226D6D51C();
    sub_226D6D46C();
    v24 = v28;
    sub_226D6709C();
    sub_226D69D0C();
    (*(v5 + 16))(v8, v24, v27);
    v25 = v29;
  }
}

uint64_t sub_226CC3218(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = v5;
  v76 = a4;
  v75 = a3;
  v71 = sub_226D670CC();
  v74 = *(v71 - 8);
  v9 = *(v74 + 64);
  MEMORY[0x28223BE20](v71);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_226D6708C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v69 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_226CC2DF0(a1);
  if (!v17)
  {
    return result;
  }

  v18 = result;
  v19 = v17;
  v72 = v13;
  v65 = v4;
  v63 = v12;
  v64 = v11;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62D8, &unk_226D74950);
  v21 = a2;
  inited = swift_initStackObject();
  v70 = xmmword_226D70840;
  *(inited + 16) = xmmword_226D70840;
  *(inited + 32) = v18;
  *(inited + 40) = v19;

  v23 = v18;
  v24 = sub_226B1EC00(inited);
  swift_setDeallocating();
  sub_226BC751C(inited + 32);
  sub_226BDF504(v24, v21, v75, v76);
  v26 = v25;

  if (v5)
  {
  }

  v62 = v20;
  v61 = v23;
  v68 = v21;
  v77 = v26;
  v27 = a1 + 56;
  v28 = 1 << *(a1 + 32);
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v30 = v29 & *(a1 + 56);
  v31 = (v28 + 63) >> 6;
  v59 = *MEMORY[0x277CC6AA0];
  v58 = (v72 + 104);
  v57 = (v74 + 8);
  v60 = (v72 + 8);
  v72 = a1;

  v32 = 0;
  v73 = v19;
  v33 = v69;
  v67 = v27;
  for (i = v31; v30; v31 = i)
  {
LABEL_11:
    v74 = v6;
    v35 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v36 = (*(v72 + 48) + ((v32 << 10) | (16 * v35)));
    v38 = *v36;
    v37 = v36[1];
    v39 = v77;
    if (*(v77 + 16))
    {
      v40 = *(v77 + 40);
      sub_226D6F2FC();

      sub_226D6E42C();
      v41 = sub_226D6F35C();
      v42 = -1 << *(v39 + 32);
      v43 = v41 & ~v42;
      if ((*(v39 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
      {
        v44 = ~v42;
        while (1)
        {
          v45 = (*(v39 + 48) + 16 * v43);
          v46 = *v45 == v38 && v45[1] == v37;
          if (v46 || (sub_226D6F21C() & 1) != 0)
          {
            break;
          }

          v43 = (v43 + 1) & v44;
          if (((*(v39 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v6 = v74;
        goto LABEL_28;
      }
    }

    else
    {
    }

LABEL_22:
    v47 = swift_initStackObject();
    *(v47 + 16) = v70;
    *(v47 + 32) = v38;
    *(v47 + 40) = v37;

    v48 = sub_226B1EC00(v47);
    swift_setDeallocating();
    sub_226BC751C(v47 + 32);
    v49 = v74;
    sub_226BDF504(v48, v68, v75, v76);
    v6 = v49;
    if (v49)
    {
    }

    v51 = v50;

    if (sub_226C993BC(v51, v39))
    {
      *v33 = v38;
      v33[1] = v37;
      v52 = v73;
      v33[2] = v61;
      v33[3] = v52;
      v53 = v75;
      v33[4] = v68;
      v33[5] = v53;
      v54 = v63;
      (*v58)(v33, v59, v63);

      v55 = v64;
      sub_226CC2F28(v33, v76, v64);
      (*v57)(v55, v71);
      (*v60)(v33, v54);
    }

    else
    {
    }

    result = sub_226B04404(v51);
LABEL_28:
    v27 = v67;
  }

  while (1)
  {
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v34 >= v31)
    {
    }

    v30 = *(v27 + 8 * v34);
    ++v32;
    if (v30)
    {
      v32 = v34;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226CC3898(uint64_t a1, void *a2)
{
  v4 = v3;
  v185 = a2;
  v6 = sub_226D6D4AC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v172 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v167 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v165 = &v142 - v13;
  v174 = sub_226D6D52C();
  v14 = *(v174 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v174);
  v179 = &v142 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v171 = &v142 - v18;
  v164 = sub_226D670CC();
  v19 = *(v164 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v164);
  v170 = &v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v160 = &v142 - v24;
  MEMORY[0x28223BE20](v23);
  v161 = &v142 - v25;
  v182 = sub_226D6708C();
  v26 = *(*(v182 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v182);
  v181 = &v142 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v180 = (&v142 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v162 = (&v142 - v32);
  MEMORY[0x28223BE20](v31);
  v183 = (&v142 - v34);
  v35 = MEMORY[0x277D84FA0];
  v192 = MEMORY[0x277D84FA0];
  v36 = a1 + 56;
  v37 = 1 << *(a1 + 32);
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  else
  {
    v38 = -1;
  }

  v39 = v38 & *(a1 + 56);
  v40 = (v37 + 63) >> 6;
  v159 = *MEMORY[0x277CC6AF0];
  v176 = (v33 + 104);
  v163 = (v19 + 8);
  v177 = (v33 + 8);
  v175 = *MEMORY[0x277CC6A98];
  v169 = (v33 + 16);
  v178 = "userDefaultsLock";
  v173 = (v14 + 48);
  v168 = (v14 + 32);
  v166 = (v14 + 8);
  v197 = a1;

  v188 = 0;
  v187 = 0;
  v189 = 0;
  v41 = 0;
  v42 = 0;
  v186 = MEMORY[0x277D84F90];
  v184 = xmmword_226D70840;
  while (1)
  {
    v43 = v42;
    v44 = v41;
    if (!v39)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v42 = v43;
LABEL_10:
      v45 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v46 = *(v197 + 48) + 56 * (v45 | (v42 << 6));
      v48 = *(v46 + 16);
      v47 = *(v46 + 32);
      v49 = *v46;
      v196 = *(v46 + 48);
      v194 = v48;
      v195 = v47;
      v193 = v49;
      sub_226AE50D8(&v193, v190);
      if ((sub_226D4DAB0(&v193, v35) & 1) == 0)
      {
        break;
      }

      sub_226B16458(&v193);
      v43 = v42;
      if (!v39)
      {
LABEL_7:
        while (1)
        {
          v42 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            break;
          }

          if (v42 >= v40)
          {
            sub_226CC51D0(v188, v187);
          }

          v39 = *(v36 + 8 * v42);
          ++v43;
          if (v39)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_63;
      }
    }

    v157 = v2;
    v156 = sub_226D69D0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68A0, &unk_226D75900);
    inited = swift_initStackObject();
    *(inited + 16) = v184;
    v51 = v196;
    v53 = v194;
    v52 = v195;
    *(inited + 32) = v193;
    *(inited + 48) = v53;
    *(inited + 64) = v52;
    *(inited + 80) = v51;
    v54 = v4;
    v55 = sub_226B1E2BC(inited);
    swift_setDeallocating();
    sub_226B16458(inited + 32);
    sub_226B132E8(v55, v185);
    v158 = v54;
    if (v54)
    {
LABEL_63:

      sub_226CC51D0(v188, v187);
      goto LABEL_64;
    }

    v57 = v56;

    if ((sub_226C98C10(v57, v35) & 1) == 0)
    {
      v75 = v188;
      v155 = v189;
      v76 = v57;
      goto LABEL_47;
    }

    v151 = 0;
    v154 = 0;
    v150 = 0;
    v152 = 0;
    v58 = 0;
    v59 = v57 + 56;
    v60 = 1 << *(v57 + 32);
    v61 = v60 < 64 ? ~(-1 << v60) : -1;
    v62 = v61 & *(v57 + 56);
    v63 = v57;
    v64 = (v60 + 63) >> 6;
    v65 = (&v184 + 8);
    while (2)
    {
      *(v65 - 32) = v63;

      v66 = v183;
      v67 = v189;
      v68 = v188;
LABEL_21:
      if (v62)
      {
        goto LABEL_26;
      }

      do
      {
        v69 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          __break(1u);
          goto LABEL_66;
        }

        if (v69 >= v64)
        {
          v77 = v189;
          v78 = v188;

          v79 = v78;
          v80 = v187;
          v81 = v77;
          v82 = v158;
          goto LABEL_32;
        }

        v62 = *(v59 + 8 * v69);
        ++v58;
      }

      while (!v62);
      v58 = v69;
LABEL_26:
      v70 = __clz(__rbit64(v62));
      v62 &= v62 - 1;
      v71 = *(v153 + 48) + 56 * (v70 | (v58 << 6));
      if (!*(v71 + 48))
      {
        if (!v187)
        {
          if (!v154)
          {
            v72 = *(v71 + 8);
            v151 = *v71;
            v74 = *(v71 + 16);
            v73 = *(v71 + 24);
            v150 = v74;
            v155 = v73;
            v154 = v72;

            v63 = v155;
            v65 = &v184;
            continue;
          }

          goto LABEL_21;
        }

        v103 = *(v71 + 8);
        v155 = *v71;
        v104 = *(v71 + 16);
        v105 = *(v71 + 24);
        v107 = *(v71 + 32);
        v106 = *(v71 + 40);
        v154 = v107;
        v152 = v106;
        *v183 = v155;
        v66[1] = v103;
        v66[2] = v104;
        v66[3] = v105;
        v108 = v187;
        v66[4] = v68;
        v66[5] = v108;
        v66[6] = v67;
        v66[7] = v44;
        v109 = *v176;
        v189 = v67;
        v188 = v68;
        v109(v66, v175, v182);
        v151 = v104;
        sub_226AFD74C(v155, v103, v104, v105, v154, v152, 0);
        v150 = v103;

        v149 = v105;

        v156 = v44;
        sub_226CC518C(v188, v187);
        v110 = v161;
        v111 = v158;
        sub_226CC2F28(v183, v185, v161);
        if (!v111)
        {
          v158 = 0;
          v112 = v153;

          sub_226AE5134(v155, v150, v151, v149, v154, v152, 0);
          (*v163)(v110, v164);
          (*v177)(v183, v182);
          v76 = v112;
          v75 = v188;
          v155 = v189;
          v44 = v156;
          goto LABEL_47;
        }

LABEL_66:

        sub_226CC51D0(v188, v187);

        sub_226CC51D0(0, 0);

        sub_226AE5134(v155, v150, v151, v149, v154, v152, 0);
        (*v177)(v183, v182);
LABEL_64:
      }

      break;
    }

    if (*(v71 + 48) == 2)
    {
      goto LABEL_21;
    }

    v90 = *(v71 + 8);
    v149 = *v71;
    v91 = *(v71 + 16);
    v92 = *(v71 + 24);
    v93 = *(v71 + 40);
    v143 = *(v71 + 32);
    v94 = v187;
    v155 = v91;
    v147 = v92;
    v145 = v90;
    v142 = v93;
    if (!v187)
    {
      break;
    }

    v95 = v91;
    v96 = v162;
    *v162 = v149;
    v96[1] = v90;
    v96[2] = v95;
    v96[3] = v92;
    v96[4] = v68;
    v96[5] = v94;
    v96[6] = v67;
    v96[7] = v44;
    v97 = v90;
    v98 = *v176;
    v187 = v94;
    v189 = v67;
    v188 = v68;
    v98(v96, v159, v182);
    sub_226AFD74C(v149, v97, v155, v147, v143, v93, 1u);
    v99 = v187;
    v156 = v44;
    sub_226CC518C(v188, v187);

    v100 = v160;
    v101 = v158;
    sub_226CC2F28(v96, v185, v160);
    v102 = v99;
    v82 = v101;
    if (v101)
    {

      sub_226CC51D0(v188, v102);

      sub_226CC51D0(v151, v154);

      sub_226AE5134(v149, v145, v155, v147, v143, v142, 1u);
      (*v177)(v162, v182);
      goto LABEL_64;
    }

    sub_226AE5134(v149, v145, v155, v147, v143, v142, 1u);
    (*v163)(v100, v164);
    (*v177)(v162, v182);
    v79 = v188;
    v80 = v102;
    v81 = v189;
    v44 = v156;
LABEL_32:
    v158 = v82;
    v155 = v81;
    if (!v154)
    {
      v187 = v80;
      goto LABEL_36;
    }

    if (v80)
    {
      v83 = v80;

      v187 = v83;
LABEL_36:
      v76 = v153;
      v75 = v79;
      goto LABEL_47;
    }

    v149 = v79;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v186 = sub_226BBAF90(0, v186[2] + 1, 1, v186);
    }

    v85 = v186[2];
    v84 = v186[3];
    v76 = v153;
    if (v85 >= v84 >> 1)
    {
      v186 = sub_226BBAF90((v84 > 1), v85 + 1, 1, v186);
      v76 = v153;
    }

    v187 = 0;
    v86 = v186;
    v186[2] = v85 + 1;
    v87 = &v86[4 * v85];
    v88 = v154;
    v87[4] = v151;
    v87[5] = v88;
    v89 = v152;
    v87[6] = v150;
    v87[7] = v89;
    v75 = v149;
LABEL_47:
    sub_226B040FC(v76);
    v35 = v192;
    v188 = v75;
    v189 = v155;
    v41 = v44;
    v2 = v157;
    v4 = v158;
  }

  v113 = v186;
  v114 = v186[2];
  v115 = v90;

  sub_226AFD74C(v149, v115, v91, v92, v143, v93, 1u);

  v144 = v114;
  if (!v114)
  {
LABEL_59:

    v141 = v145;

    v44 = v147;

    v79 = v149;
    v81 = v155;
    sub_226AE5134(v149, v141, v155, v44, v143, v142, 1u);
    v80 = v141;
    v82 = v158;
    goto LABEL_32;
  }

  v117 = 0;
  v118 = v113 + 7;
  while (1)
  {
    v123 = v186[2];
    v188 = v117;
    if (v117 >= v123)
    {
      break;
    }

    v187 = *v118;
    v124 = v187;
    v126 = *(v118 - 2);
    v125 = *(v118 - 1);
    v148 = v118;
    v127 = v180;
    *v180 = *(v118 - 3);
    v127[1] = v126;
    v127[2] = v125;
    v127[3] = v124;
    v128 = v145;
    v127[4] = v149;
    v127[5] = v128;
    v129 = v147;
    v127[6] = v155;
    v127[7] = v129;
    v130 = v182;
    (*v176)(v127, v175, v182);
    (*v169)(v181, v127, v130);
    v131 = *(v157 + 16);
    v132 = *(*v131 + *MEMORY[0x277D841D0] + 16);
    v133 = (*(*v131 + 48) + 3) & 0x1FFFFFFFCLL;

    v187 = v133;
    os_unfair_lock_lock((v131 + v133));
    sub_226D6B5DC();
    v189 = v131;
    if (v191)
    {
      if (swift_dynamicCast())
      {
        v119 = v165;
        sub_226D6D4BC();
        v120 = v174;
        result = (*v173)(v119, 1, v174);
        v121 = v188;
        if (result == 1)
        {
          goto LABEL_70;
        }

        goto LABEL_51;
      }

      v146 = v132;
    }

    else
    {
      v146 = v132;
      sub_226B5AAF4(v190);
    }

    v134 = v179;
    v121 = v188;
    sub_226D6D51C();
    v135 = sub_226D6D4CC();
    v137 = v136;
    v138 = v134;
    v139 = v174;
    (*v166)(v138, v174);
    v191 = MEMORY[0x277D837D0];
    v190[0] = v135;
    v190[1] = v137;

    sub_226D6B5BC();
    sub_226B5AAF4(v190);
    v140 = v167;
    sub_226D6D4BC();
    result = (*v173)(v140, 1, v139);
    v119 = v140;
    v120 = v139;
    if (result == 1)
    {
      goto LABEL_69;
    }

LABEL_51:
    v117 = v121 + 1;

    (*v168)(v171, v119, v120);
    os_unfair_lock_unlock((v189 + v187));
    sub_226D6D51C();
    sub_226D6D46C();
    sub_226D6709C();
    v122 = v185;

    result = (*v177)(v180, v182);
    v118 = v148 + 4;
    if (v144 == v117)
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_226CC4CA8()
{
  v0 = sub_226D6B5EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v15[-v6];
  sub_226D6B58C();
  type metadata accessor for ExtractedOrderUserEventDonator();
  v8 = swift_allocObject();
  v16[3] = v0;
  v16[4] = MEMORY[0x277CC7F70];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(v1 + 16))(boxed_opaque_existential_1, v7, v0);
  sub_226AE532C(v16, v15);
  sub_226D6B5FC();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8D18, &unk_226D7B170);
  v11 = *(v10 + 52);
  v12 = (*(v10 + 48) + 3) & 0x1FFFFFFFCLL;
  v13 = swift_allocObject();
  *(v13 + ((*(*v13 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  (*(v1 + 32))(v13 + *(*v13 + *MEMORY[0x277D841D0] + 16), v5, v0);
  *(v8 + 16) = v13;
  result = (*(v1 + 8))(v7, v0);
  qword_281064530 = v8;
  return result;
}

uint64_t sub_226CC4EC4@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_226D6D52C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  sub_226D6B5DC();
  if (v20)
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_6;
    }

    sub_226D6D4BC();
    v10 = v12;
    if ((*(v2 + 48))(v12, 1, v1) != 1)
    {
LABEL_7:

      return (*(v2 + 32))(v18, v10, v1);
    }

    __break(1u);
  }

  sub_226B5AAF4(v19);
LABEL_6:
  sub_226D6D51C();
  v13 = sub_226D6D4CC();
  v15 = v14;
  (*(v2 + 8))(v5, v1);
  v20 = MEMORY[0x277D837D0];
  v19[0] = v13;
  v19[1] = v15;

  sub_226D6B5BC();
  sub_226B5AAF4(v19);
  sub_226D6D4BC();
  result = (*(v2 + 48))(v10, 1, v1);
  if (result != 1)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_226CC518C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_226CC51D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_226CC5214(void *a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  v3 = [v2 fetchRequestForEvents];
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_226D70840;
  v5 = MEMORY[0x277D83C10];
  *(v4 + 56) = MEMORY[0x277D83B88];
  *(v4 + 64) = v5;
  *(v4 + 32) = 2;
  v6 = sub_226D6E91C();
  [v3 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_226D71F20;
  v8 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v9 = sub_226D6E36C();
  v10 = [v8 initWithKey:v9 ascending:0];

  *(v7 + 32) = v10;
  sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  v11 = sub_226D6E5CC();

  [v3 setSortDescriptors_];

  [v3 setFetchLimit_];
  v12 = [v2 fetchEventsMatchingFetchRequest_];
  [v12 setResultType_];
  *&v42[0] = 0;
  v13 = [a1 executeRequest:v12 error:v42];
  v14 = *&v42[0];
  if (!v13)
  {
    v20 = *&v42[0];
    sub_226D6D04C();

    swift_willThrow();
    v19 = v12;
    v21 = v3;
LABEL_23:

    goto LABEL_24;
  }

  v15 = v13;
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    v22 = v14;
LABEL_18:
    if (qword_28105F5F8 != -1)
    {
      swift_once();
    }

    v26 = sub_226D6E07C();
    __swift_project_value_buffer(v26, qword_28105F600);
    v21 = v15;
    v27 = sub_226D6E05C();
    v28 = sub_226D6E9AC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v21;
      *v30 = v15;
      v31 = v21;
      _os_log_impl(&dword_226AB4000, v27, v28, "Cannot extract recent events from %@. Skipping history pruning.", v29, 0xCu);
      sub_226AC47B0(v30, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v30, -1, -1);
      MEMORY[0x22AA8BEE0](v29, -1, -1);
    }

    sub_226CCA838();
    swift_allocError();
    *v32 = 0x8000000000000018;
    swift_willThrow();

    v19 = v12;
    goto LABEL_23;
  }

  v17 = v16;
  v18 = v14;
  v19 = v15;
  if ([v17 result])
  {
    sub_226D6ED0C();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42[0] = v40;
  v42[1] = v41;
  if (!*(&v41 + 1))
  {

    sub_226AC47B0(v42, &unk_27D7A8BB0, &unk_226D74340);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8D68, &qword_226D7B418);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_18;
  }

  if (!(v39 >> 62))
  {
    if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_26:

    if (qword_28105F5F8 == -1)
    {
LABEL_27:
      v34 = sub_226D6E07C();
      __swift_project_value_buffer(v34, qword_28105F600);
      v35 = sub_226D6E05C();
      v36 = sub_226D6E9AC();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_226AB4000, v35, v36, "Never exported to iCloud. Skipping history pruning.", v37, 2u);
        MEMORY[0x22AA8BEE0](v37, -1, -1);
      }

      sub_226CCA838();
      swift_allocError();
      *v38 = 0x8000000000000018;
      swift_willThrow();

      v21 = v19;
      goto LABEL_23;
    }

LABEL_32:
    swift_once();
    goto LABEL_27;
  }

  if (!sub_226D6EDFC())
  {
    goto LABEL_26;
  }

LABEL_12:

  if ((v39 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x22AA8AFD0](0);
    goto LABEL_15;
  }

  if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_32;
  }

  v23 = *(v39 + 32);
LABEL_15:
  v24 = v23;

  v25 = [v24 startDate];
  sub_226D6D45C();

LABEL_24:
  v33 = *MEMORY[0x277D85DE8];
}

void sub_226CC589C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v99[4] = *MEMORY[0x277D85DE8];
  v4 = sub_226D6B70C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277CC7FE8], v4);
  v9 = sub_226B5F38C(v8);
  (*(v5 + 8))(v8, v4);
  if (!v9)
  {
    if (qword_28105F5F8 != -1)
    {
      swift_once();
    }

    v39 = sub_226D6E07C();
    __swift_project_value_buffer(v39, qword_28105F600);
    v40 = sub_226D6E05C();
    v41 = sub_226D6E9AC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_226AB4000, v40, v41, "No cloud store token found. Skipping history pruning.", v42, 2u);
      MEMORY[0x22AA8BEE0](v42, -1, -1);
    }

    sub_226CCA838();
    swift_allocError();
    *v43 = 0x8000000000000008;
    swift_willThrow();
    goto LABEL_25;
  }

  v10 = [objc_opt_self() fetchRequest];
  if (!v10)
  {
    __break(1u);
    goto LABEL_72;
  }

  v11 = v10;
  v12 = sub_226D6EB2C();
  if (!v12)
  {
    goto LABEL_20;
  }

  v13 = v12;
  v14 = [v12 identifier];

  if (!v14)
  {
    goto LABEL_20;
  }

  v91 = a2;
  v15 = sub_226D6E39C();
  v96 = v16;

  v95 = v9;
  v17 = [v9 storeTokens];
  if (!v17)
  {
LABEL_72:
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
  v20 = sub_226D6E2BC();

  if (!*(v20 + 16) || (v21 = sub_226C2FDD4(v15, v96), (v22 & 1) == 0))
  {

    v9 = v95;
LABEL_20:
    if (qword_28105F5F8 != -1)
    {
      swift_once();
    }

    v44 = sub_226D6E07C();
    __swift_project_value_buffer(v44, qword_28105F600);
    v45 = v9;
    v46 = sub_226D6E05C();
    v47 = sub_226D6E9AC();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      *(v48 + 4) = v45;
      *v49 = v9;
      v50 = v45;
      _os_log_impl(&dword_226AB4000, v46, v47, "Cloud store token is invalid (%@). Skipping history pruning.", v48, 0xCu);
      sub_226AC47B0(v49, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v49, -1, -1);
      MEMORY[0x22AA8BEE0](v48, -1, -1);
    }

    sub_226CCA838();
    swift_allocError();
    *v51 = 0x8000000000000008;
    swift_willThrow();

    goto LABEL_25;
  }

  v94 = v15;
  v23 = *(*(v20 + 56) + 8 * v21);

  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v90 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_226D70840;
  *(v24 + 56) = v19;
  *(v24 + 64) = sub_226C8BE70(&qword_27D7A8D30, &qword_27D7A6278, 0x277CCABB0);
  *(v24 + 32) = v23;
  v25 = v23;
  v26 = v90;
  v27 = sub_226D6E91C();
  [v26 setPredicate_];
  v28 = [objc_opt_self() fetchHistoryWithFetchRequest_];
  [v28 setResultType_];
  v99[0] = 0;
  v29 = [a1 executeRequest:v28 error:v99];
  v30 = v99[0];
  if (!v29)
  {
    v61 = v99[0];

    sub_226D6D04C();

    swift_willThrow();
    goto LABEL_25;
  }

  v31 = v29;
  v32 = v26;
  v87 = v28;
  v88 = v27;
  v89 = v25;
  objc_opt_self();
  v33 = swift_dynamicCastObjCClassUnconditional();
  v34 = v30;
  v35 = v31;
  if (![v33 result])
  {

    v38 = v32;
    goto LABEL_43;
  }

  sub_226D6ED0C();
  swift_unknownObjectRelease();
  sub_226AC4708(v99, v98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F50, &unk_226D7D360);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v38 = v32;
    __swift_destroy_boxed_opaque_existential_0Tm(v99);

LABEL_43:
    if (qword_28105F5F8 != -1)
    {
      goto LABEL_49;
    }

    goto LABEL_44;
  }

  v36 = v97;
  v98[0] = MEMORY[0x277D84F90];
  v86 = v31;
  if (v97 >> 62)
  {
    v37 = sub_226D6EDFC();
    if (v37)
    {
      goto LABEL_13;
    }

LABEL_51:

    v70 = v98[0];
    if (v98[0] < 0 || (v98[0] & 0x4000000000000000) != 0)
    {
      v71 = sub_226D6EDFC();
      v73 = v89;
      v72 = v90;
      v75 = v87;
      v74 = v88;
      if (v71)
      {
LABEL_54:
        v76 = __OFSUB__(v71, 1);
        v77 = v71 - 1;
        if (v76)
        {
          __break(1u);
        }

        else if ((v70 & 0xC000000000000001) == 0)
        {
          if ((v77 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v77 < *(v70 + 16))
          {
            v78 = *(v70 + 8 * v77 + 32);
LABEL_59:
            v79 = v78;

            v80 = [v79 timestamp];
            sub_226D6D45C();

LABEL_65:
            __swift_destroy_boxed_opaque_existential_0Tm(v99);
            goto LABEL_25;
          }

          __break(1u);
          goto LABEL_70;
        }

        v78 = MEMORY[0x22AA8AFD0](v77, v70);
        goto LABEL_59;
      }
    }

    else
    {
      v71 = *(v98[0] + 16);
      v73 = v89;
      v72 = v90;
      v75 = v87;
      v74 = v88;
      if (v71)
      {
        goto LABEL_54;
      }
    }

    if (qword_28105F5F8 == -1)
    {
LABEL_62:
      v81 = sub_226D6E07C();
      __swift_project_value_buffer(v81, qword_28105F600);
      v82 = sub_226D6E05C();
      v83 = sub_226D6E9AC();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_226AB4000, v82, v83, "Cloud store history is empty. Skipping pruning.", v84, 2u);
        MEMORY[0x22AA8BEE0](v84, -1, -1);
      }

      sub_226CCA838();
      swift_allocError();
      *v85 = 0x8000000000000008;
      swift_willThrow();

      goto LABEL_65;
    }

LABEL_70:
    swift_once();
    goto LABEL_62;
  }

  v37 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v37)
  {
    goto LABEL_51;
  }

LABEL_13:
  v38 = 0;
  v92 = v36 & 0xFFFFFFFFFFFFFF8;
  v93 = v36 & 0xC000000000000001;
  while (1)
  {
    if (v93)
    {
      v54 = MEMORY[0x22AA8AFD0](v38, v36);
    }

    else
    {
      if (v38 >= *(v92 + 16))
      {
        goto LABEL_48;
      }

      v54 = *(v36 + 8 * v38 + 32);
    }

    v35 = v54;
    v33 = (v38 + 1);
    if (__OFADD__(v38, 1))
    {
      break;
    }

    v55 = [v54 storeID];
    v56 = sub_226D6E39C();
    v58 = v57;

    if (v56 == v94 && v58 == v96)
    {
    }

    else
    {
      v60 = sub_226D6F21C();

      if ((v60 & 1) == 0)
      {

        goto LABEL_28;
      }
    }

    sub_226D6EF6C();
    v53 = *(v98[0] + 16);
    sub_226D6EF9C();
    sub_226D6EFAC();
    sub_226D6EF7C();
LABEL_28:
    ++v38;
    if (v33 == v37)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  swift_once();
LABEL_44:
  v62 = sub_226D6E07C();
  __swift_project_value_buffer(v62, qword_28105F600);
  v63 = v35;
  v64 = sub_226D6E05C();
  v65 = sub_226D6E9AC();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v66 = 138412290;
    *(v66 + 4) = v33;
    *v67 = v33;
    v68 = v63;
    _os_log_impl(&dword_226AB4000, v64, v65, "Cannot extract history from %@. Skipping pruning.", v66, 0xCu);
    sub_226AC47B0(v67, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v67, -1, -1);
    MEMORY[0x22AA8BEE0](v66, -1, -1);
  }

  sub_226CCA838();
  swift_allocError();
  *v69 = 0x8000000000000008;
  swift_willThrow();

LABEL_25:
  v52 = *MEMORY[0x277D85DE8];
}

void sub_226CC6434()
{
  v0 = sub_226D6769C();
  v1 = [v0 newBackgroundContext];

  sub_226D6D4AC();
  sub_226D6EB8C();
}

unint64_t PruningError.description.getter()
{
  v1 = *v0 >> 62;
  if (!v1)
  {
    sub_226D6EEFC();
    MEMORY[0x22AA8A510](0xD000000000000010, 0x8000000226D87360);
    swift_getErrorValue();
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    sub_226D6EEFC();
    MEMORY[0x22AA8A510](0xD000000000000019, 0x8000000226D87340);
    swift_getErrorValue();
LABEL_5:
    sub_226D6F20C();
    return 0;
  }

  v3 = __ROR8__(*v0 ^ 0x8000000000000000, 3);
  v4 = 0xD00000000000002ALL;
  if (v3 == 2)
  {
    v4 = 0xD000000000000019;
  }

  v5 = 0xD00000000000001CLL;
  if (!v3)
  {
    v5 = 0xD00000000000001FLL;
  }

  if (v3 <= 1)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_226CC663C()
{
  if (*v0)
  {
    result = 0xD000000000000029;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

void sub_226CC6678()
{
  sub_226CC6964();
  if (v1)
  {
    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v2 = sub_226D6E07C();
    __swift_project_value_buffer(v2, qword_28105F5E0);
    v3 = v1;
    v4 = sub_226D6E05C();
    v5 = sub_226D6E9CC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = v1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_226AB4000, v4, v5, "Error compacting persistent history: %@", v6, 0xCu);
      sub_226AC47B0(v7, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v7, -1, -1);
      MEMORY[0x22AA8BEE0](v6, -1, -1);
    }

    sub_226CCA838();
    swift_allocError();
    *v10 = v1 | 0x4000000000000000;
    swift_willThrow();
  }

  else if (sub_226CC87D0())
  {
    v11 = *(v0 + 16);
    v12 = sub_226D676AC();
    MEMORY[0x28223BE20](v12);
    sub_226D6EB8C();
  }

  else
  {
    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v13 = sub_226D6E07C();
    __swift_project_value_buffer(v13, qword_28105F5E0);
    v14 = sub_226D6E05C();
    v15 = sub_226D6E9AC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_226AB4000, v14, v15, "Not pruning history because pruning interval hasn't elapsed", v16, 2u);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
    }
  }
}

void sub_226CC6964()
{
  v2 = *(v0 + 16);
  v3 = sub_226D676AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8D38, &qword_226D7B318);
  v4 = sub_226D6EB8C();
  if (v1)
  {
  }

  else
  {
    v5 = *(v8 + 16);
    if (v5)
    {
      v6 = 0;
      while (v6 < *(v8 + 16))
      {
        v7 = *(v8 + 8 * v6 + 32);
        MEMORY[0x28223BE20](v4);
        v4 = sub_226D6EB8C();
        if (v5 == ++v6)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:
    }
  }
}

void sub_226CC6ABC(id a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v99[4] = *MEMORY[0x277D85DE8];
  sub_226D6BA1C();
  v8 = sub_226D6B9FC();
  [v8 setFetchLimit_];
  v9 = sub_226D6EBBC();
  if (v3)
  {

LABEL_58:
    v80 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v9 >> 62)
  {
    v14 = v9;
    v10 = sub_226D6EDFC();
    v9 = v14;
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_10:

    v13 = 0;
    v12 = 0;
    goto LABEL_11;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x22AA8AFD0](0);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_55:
      sub_226D6E61C();
      goto LABEL_35;
    }

    v11 = *(v9 + 32);
  }

  v12 = v11;

  v13 = [v12 lastConvertedHistoryTransactionID];
LABEL_11:
  v15 = objc_opt_self();
  v89 = [v15 fetchRequest];
  if (!v89)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v84 = v12;
  v16 = [v15 entityDescriptionWithContext_];
  if (v16)
  {
    v81 = a3;
    v82 = v13;
    v86 = v10;
    v95 = a1;
    v97 = MEMORY[0x277D84F90];
    v94 = v16;
    v17 = [v16 propertiesByName];
    sub_226AE59B4(0, &unk_28105F430, 0x277CBE4F0);
    v18 = MEMORY[0x277D837D0];
    v19 = sub_226D6E2BC();
    if (*(v19 + 16) && (v20 = sub_226C2FDD4(0x795465676E616863, 0xEA00000000006570), (v21 & 1) != 0))
    {
      v22 = v20;

      v23 = *(*(v19 + 56) + 8 * v22);

      sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_226D71840;
      v83 = v23;
      v25 = [v23 name];
      v26 = sub_226D6E39C();
      v28 = v27;

      *(v24 + 56) = v18;
      v85 = sub_226B16404();
      *(v24 + 64) = v85;
      *(v24 + 32) = v26;
      *(v24 + 40) = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8D48, &qword_226D7B328);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_226D71840;
      *(v29 + 32) = xmmword_226D7B180;
      *(v24 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8D50, &qword_226D7B330);
      *(v24 + 104) = sub_226CCA944(&qword_27D7A8D58, &qword_27D7A8D50, &qword_226D7B330);
      *(v24 + 72) = v29;
      v30 = sub_226D6E91C();
      MEMORY[0x22AA8A610]();
      if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_52:
        sub_226D6E61C();
      }

      v91 = v8;
      v88 = v30;
      sub_226D6E65C();
      v31 = [v94 propertiesByName];
      v32 = sub_226D6E2BC();
      if (*(v32 + 16))
      {
        v33 = sub_226C2FDD4(0x456465676E616863, 0xED0000797469746ELL);
        if (v34)
        {
          v35 = v33;

          v90 = *(*(v32 + 56) + 8 * v35);

          v36 = MEMORY[0x277D84F90];
          v99[0] = MEMORY[0x277D84F90];
          v37 = 1 << a2[32];
          v38 = -1;
          if (v37 < 64)
          {
            v38 = ~(-1 << v37);
          }

          v8 = v38 & *(a2 + 7);
          v39 = (v37 + 63) >> 6;

          v40 = 0;
          v87 = v36;
          if (!v8)
          {
            goto LABEL_23;
          }

          do
          {
LABEL_21:
            while (1)
            {
              v41 = __clz(__rbit64(v8));
              v8 &= v8 - 1;
              v42 = (*(a2 + 6) + ((v40 << 10) | (16 * v41)));
              v43 = *v42;
              v44 = v42[1];
              v30 = objc_opt_self();

              v45 = sub_226D6E36C();
              v46 = [v30 entityForName:v45 inManagedObjectContext:v95];

              if (v46)
              {
                break;
              }

              if (!v8)
              {
                goto LABEL_23;
              }
            }

            MEMORY[0x22AA8A610]();
            if (*((v99[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v48 = *((v99[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_226D6E61C();
            }

            sub_226D6E65C();
            v87 = v99[0];
          }

          while (v8);
          while (1)
          {
LABEL_23:
            v47 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              __break(1u);
              goto LABEL_52;
            }

            if (v47 >= v39)
            {
              break;
            }

            v8 = *&a2[8 * v47 + 56];
            ++v40;
            if (v8)
            {
              v40 = v47;
              goto LABEL_21;
            }
          }

          v49 = swift_allocObject();
          *(v49 + 16) = xmmword_226D71840;
          v8 = v90;
          v50 = [v90 name];
          v51 = sub_226D6E39C();
          v53 = v52;

          *(v49 + 56) = MEMORY[0x277D837D0];
          *(v49 + 64) = v85;
          *(v49 + 32) = v51;
          *(v49 + 40) = v53;
          *(v49 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8D40, &qword_226D7B320);
          *(v49 + 104) = sub_226CCA944(&unk_28105F508, &qword_27D7A8D40, &qword_226D7B320);
          *(v49 + 72) = v87;
          v54 = sub_226D6E91C();
          MEMORY[0x22AA8A610]();
          if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v79 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_226D6E61C();
          }

          sub_226D6E65C();
          v10 = v91;
          v4 = v95;
          if (!v86)
          {
LABEL_36:
            v57 = sub_226D6E5CC();
            v58 = [objc_opt_self() andPredicateWithSubpredicates_];

            [v89 setPredicate_];
            v59 = [objc_opt_self() fetchHistoryWithFetchRequest_];
            [v59 setResultType_];
            v99[0] = 0;
            v60 = v4;
            v61 = v59;
            v62 = [v60 executeRequest:v59 error:v99];
            v63 = v99[0];
            if (!v62)
            {
              v78 = v99[0];

              sub_226D6D04C();

              swift_willThrow();
              goto LABEL_58;
            }

            v64 = v62;
            objc_opt_self();
            v65 = v64;
            v66 = swift_dynamicCastObjCClassUnconditional();
            v67 = v63;
            if (![v66 result])
            {

              *v81 = MEMORY[0x277D84F90];
              goto LABEL_58;
            }

            v93 = v65;
            sub_226D6ED0C();
            swift_unknownObjectRelease();
            sub_226AC4708(v99, v98);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F50, &unk_226D7D360);
            swift_dynamicCast();
            if (v96 >> 62)
            {
              v68 = sub_226D6EDFC();
              if (v68)
              {
                goto LABEL_40;
              }
            }

            else
            {
              v68 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v68)
              {
LABEL_40:
                v92 = v54;
                v98[0] = MEMORY[0x277D84F90];
                sub_226AE23A4(0, v68 & ~(v68 >> 63), 0);
                if (v68 < 0)
                {
                  __break(1u);
                }

                v69 = 0;
                v70 = v98[0];
                v71 = v96;
                v72 = v68;
                do
                {
                  if ((v96 & 0xC000000000000001) != 0)
                  {
                    v73 = MEMORY[0x22AA8AFD0](v69, v71);
                  }

                  else
                  {
                    v73 = *(v71 + 8 * v69 + 32);
                  }

                  v74 = v73;
                  v75 = [v73 transactionNumber];

                  v98[0] = v70;
                  v77 = *(v70 + 16);
                  v76 = *(v70 + 24);
                  if (v77 >= v76 >> 1)
                  {
                    sub_226AE23A4((v76 > 1), v77 + 1, 1);
                    v70 = v98[0];
                  }

                  ++v69;
                  *(v70 + 16) = v77 + 1;
                  *(v70 + 8 * v77 + 32) = v75;
                  v71 = v96;
                }

                while (v72 != v69);
                __swift_destroy_boxed_opaque_existential_0Tm(v99);

                *v81 = v70;
                goto LABEL_58;
              }
            }

            __swift_destroy_boxed_opaque_existential_0Tm(v99);

            *v81 = MEMORY[0x277D84F90];
            goto LABEL_58;
          }

          a1 = v54;
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_226D70840;
          v56 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
          *(v55 + 56) = sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
          *(v55 + 64) = sub_226C8BE70(&qword_27D7A8D30, &qword_27D7A6278, 0x277CCABB0);
          *(v55 + 32) = v56;
          a2 = sub_226D6E91C();
          MEMORY[0x22AA8A610]();
          if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_55;
          }

LABEL_35:
          sub_226D6E65C();

          v54 = a1;
          goto LABEL_36;
        }
      }
    }

    else
    {

      __break(1u);
    }

    __break(1u);
    goto LABEL_62;
  }

LABEL_63:
  __break(1u);
}

void sub_226CC7724(unint64_t a1, id *a2, _BYTE *a3)
{
  v4 = v3;
  v124 = a3;
  v122 = a2;
  v130[4] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v97 - v8);
  v10 = sub_226D6D1AC();
  v121 = *(v10 - 8);
  v11 = *(v121 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v97 - v15;
  v17 = sub_226D6BA1C();
  v18 = sub_226D6B9FC();
  [v18 setFetchLimit_];
  v19 = sub_226D6EBBC();
  if (v3)
  {

    goto LABEL_31;
  }

  v119 = 0;
  v120 = a1;
  v20 = v122;
  v125 = v16;
  v126 = v14;
  v123 = v10;
  if (v19 >> 62)
  {
    goto LABEL_72;
  }

  v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v22 = v20;
  v23 = v120;
  v117 = v17;
  v118 = v9;
  if (v21)
  {
    if ((v19 & 0xC000000000000001) == 0)
    {
      if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v24 = *(v19 + 32);
      goto LABEL_9;
    }

    goto LABEL_74;
  }

  v27 = 0;
  v25 = 0;
  while (1)
  {
    v28 = objc_opt_self();
    v29 = [v28 fetchRequest];
    if (!v29)
    {
      goto LABEL_30;
    }

    v30 = v29;
    v31 = [v28 entityDescriptionWithContext_];
    if (!v31)
    {

LABEL_30:
      goto LABEL_31;
    }

    v32 = v31;
    v115 = v18;
    v18 = [v31 propertiesByName];
    sub_226AE59B4(0, &unk_28105F430, 0x277CBE4F0);
    v33 = sub_226D6E2BC();

    if (!*(v33 + 16) || (v34 = sub_226C2FDD4(0x456465676E616863, 0xED0000797469746ELL), (v35 & 1) == 0))
    {

      goto LABEL_31;
    }

    v109 = v27;
    v101 = v32;
    v112 = v30;
    v113 = v25;
    v105 = *(*(v33 + 56) + 8 * v34);

    v20 = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    v4 = "TRANSACTIONID = %@";
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v36 = swift_allocObject();
    v37 = MEMORY[0x277D84A28];
    *(v36 + 16) = xmmword_226D70840;
    v38 = MEMORY[0x277D84A90];
    *(v36 + 56) = v37;
    *(v36 + 64) = v38;
    *(v36 + 32) = v22;
    v116 = v20;
    v114 = sub_226D6E91C();
    v108 = MEMORY[0x277D84F90];
    v130[0] = MEMORY[0x277D84F90];
    v39 = v124;
    v40 = v124 + 56;
    v41 = 1 << v124[32];
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v43 = v42 & *(v124 + 7);
    v17 = ((v41 + 63) >> 6);

    a1 = 0;
    v9 = &selRef_setSortDescriptors_;
    if (!v43)
    {
      goto LABEL_20;
    }

    do
    {
LABEL_18:
      while (1)
      {
        v44 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
        v45 = (*(v39 + 6) + ((a1 << 10) | (16 * v44)));
        v46 = *v45;
        v4 = v45[1];
        v47 = objc_opt_self();

        v20 = sub_226D6E36C();
        v18 = [v47 entityForName:v20 inManagedObjectContext:v120];

        if (v18)
        {
          break;
        }

        if (!v43)
        {
          goto LABEL_20;
        }
      }

      v20 = v130;
      MEMORY[0x22AA8A610]();
      if (*((v130[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v130[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v4 = *((v130[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_226D6E61C();
      }

      v19 = sub_226D6E65C();
      v108 = v130[0];
    }

    while (v43);
    while (1)
    {
LABEL_20:
      v48 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
LABEL_71:
        __break(1u);
LABEL_72:
        v16 = v19;
        v21 = sub_226D6EDFC();
        v19 = v16;
        goto LABEL_5;
      }

      if (v48 >= v17)
      {
        break;
      }

      v43 = *&v40[8 * v48];
      ++a1;
      if (v43)
      {
        a1 = v48;
        goto LABEL_18;
      }
    }

    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_226D71840;
    v51 = v105;
    v52 = [v105 name];
    v53 = sub_226D6E39C();
    v55 = v54;

    *(v50 + 56) = MEMORY[0x277D837D0];
    *(v50 + 64) = sub_226B16404();
    *(v50 + 32) = v53;
    *(v50 + 40) = v55;
    *(v50 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8D40, &qword_226D7B320);
    *(v50 + 104) = sub_226CCA944(&unk_28105F508, &qword_27D7A8D40, &qword_226D7B320);
    *(v50 + 72) = v108;

    v56 = sub_226D6E91C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_226D71F40;
    v58 = v114;
    *(v57 + 32) = v114;
    *(v57 + 40) = v56;
    v59 = v58;
    v60 = v56;
    v61 = sub_226D6E5CC();

    v62 = [objc_opt_self() andPredicateWithSubpredicates_];

    v17 = v112;
    [v112 setPredicate_];

    v63 = [objc_opt_self() fetchHistoryWithFetchRequest_];
    [v63 setResultType_];
    v130[0] = 0;
    a1 = v120;
    v64 = [v120 executeRequest:v63 error:v130];
    v65 = v130[0];
    if (!v64)
    {
      v87 = v130[0];

      sub_226D6D04C();

      swift_willThrow();
      goto LABEL_31;
    }

    v66 = v64;
    v99 = v63;
    v100 = v60;
    objc_opt_self();
    v67 = v66;
    v68 = swift_dynamicCastObjCClassUnconditional();
    v69 = v65;
    v70 = [v68 result];
    v18 = v113;
    if (!v70)
    {

      goto LABEL_31;
    }

    v97 = v67;
    v98 = v59;
    sub_226D6ED0C();
    swift_unknownObjectRelease();
    sub_226AC4708(v130, v129);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F50, &unk_226D7D360);
    swift_dynamicCast();
    v4 = v128;
    v128 = MEMORY[0x277D84FA0];
    v16 = v119;
    if (!(v4 >> 62))
    {
      v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v71 = v121;
      v9 = v122;
      if (v22)
      {
        goto LABEL_36;
      }

LABEL_79:

      sub_226D6A26C();
      sub_226D6A20C();
      if (v16)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v130);
      }

      else
      {

        if (v18)
        {
          v88 = v18;
          [v88 setLastConvertedHistoryTransactionID_];
          sub_226D6B9DC();
        }

        else
        {
          v89 = sub_226D6D4AC();
          (*(*(v89 - 8) + 56))(v118, 1, 1, v89);
          v90 = a1;
          v88 = sub_226D6B9EC();
        }

        v129[0] = 0;
        v91 = [a1 save_];
        v92 = v98;
        v93 = v100;
        v94 = v99;
        if (v91)
        {
          v95 = v129[0];
          __swift_destroy_boxed_opaque_existential_0Tm(v130);
        }

        else
        {
          v96 = v129[0];
          sub_226D6D04C();

          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_0Tm(v130);
        }
      }

LABEL_31:
      v49 = *MEMORY[0x277D85DE8];
      return;
    }

LABEL_78:
    v22 = sub_226D6EDFC();
    v71 = v121;
    v9 = v122;
    if (!v22)
    {
      goto LABEL_79;
    }

LABEL_36:
    v72 = 0;
    v114 = v4 & 0xC000000000000001;
    v107 = v4 & 0xFFFFFFFFFFFFFF8;
    v106 = v4 + 32;
    v121 = v71 + 8;
    v111 = v4;
    v110 = v22;
LABEL_38:
    if (v114)
    {
      v73 = MEMORY[0x22AA8AFD0](v72, v4);
    }

    else
    {
      if (v72 >= *(v107 + 16))
      {
        goto LABEL_76;
      }

      v73 = *(v106 + 8 * v72);
    }

    v74 = v73;
    v75 = __OFADD__(v72, 1);
    v72 = (v72 + 1);
    if (!v75)
    {
      break;
    }

    __break(1u);
LABEL_74:
    v24 = MEMORY[0x22AA8AFD0](0);
LABEL_9:
    v25 = v24;

    v26 = v25;
    v27 = sub_226D6B9CC();

    v23 = v120;
  }

  v76 = [v73 changes];
  v77 = v74;
  if (!v76)
  {

    if (v72 == v22)
    {
      goto LABEL_79;
    }

    goto LABEL_38;
  }

  v78 = v76;
  v124 = v77;
  sub_226AE59B4(0, &unk_27D7A8C30, 0x277CBE4A8);
  v4 = sub_226D6E5EC();

  if (v4 >> 62)
  {
    v19 = sub_226D6EDFC();
    a1 = v19;
  }

  else
  {
    a1 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = v124;
  v16 = v125;
  v116 = v72;
  if (!a1)
  {
LABEL_37:

    v16 = v119;
    a1 = v120;
    v18 = v113;
    v17 = v112;
    v9 = v122;
    v4 = v111;
    v22 = v110;
    v72 = v116;
    if (v116 == v110)
    {
      goto LABEL_79;
    }

    goto LABEL_38;
  }

  v18 = 0;
  while (2)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x22AA8AFD0](v18, v4);
    }

    else
    {
      if (v18 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_70;
      }

      v19 = *(v4 + 8 * v18 + 32);
    }

    v9 = v19;
    v17 = (v18 + 1);
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v79 = [v19 changeType];
    if (v79 == 1)
    {

LABEL_56:
      ++v18;
LABEL_57:
      if (v17 == a1)
      {
        goto LABEL_37;
      }

      continue;
    }

    break;
  }

  if (v79 == 2)
  {
    v80 = [v9 changedObjectID];
    v81 = [v80 URIRepresentation];

    sub_226D6D14C();
    v16 = v125;
    sub_226C27170(v125, v126);
    v20 = v124;

    v19 = (*v121)(v16, v123);
    goto LABEL_56;
  }

  if (!v79)
  {
    v18 = (v109 + 1);
    if (__OFADD__(v109, 1))
    {
      goto LABEL_77;
    }

    v104 = sub_226D6A26C();
    v109 = [v9 changedObjectID];
    v82 = [v109 entityName];

    v103 = sub_226D6E39C();
    v102 = v83;

    v109 = [v9 changedObjectID];
    v84 = [v109 URIRepresentation];

    sub_226D6D14C();
    [v124 transactionNumber];
    v85 = v120;
    v109 = v18;
    v86 = sub_226D6A25C();

    v20 = v124;
    v18 = v17;
    goto LABEL_57;
  }

  v129[0] = 0;
  v129[1] = 0xE000000000000000;
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0x742065676E616843, 0xEC00000020657079);
  v127 = [v9 changeType];
  type metadata accessor for NSPersistentHistoryChangeType(0);
  sub_226D6EFBC();
  MEMORY[0x22AA8A510](0x63657220746F6E20, 0xEF64657A696E676FLL);
  sub_226D6F0AC();
  __break(1u);
}

uint64_t sub_226CC87D0()
{
  v1 = *(v0 + 16);
  v3 = sub_226D676AC();
  sub_226D6EB8C();

  return v4;
}

id sub_226CC89AC@<X0>(void *a1@<X1>, unint64_t a2@<X2>, void *a3@<X3>, _BYTE *a4@<X8>)
{
  v23[1] = *MEMORY[0x277D85DE8];
  result = sub_226CC8BE4(a1, a2, a3);
  if (!v4)
  {
    v23[0] = 0;
    v8 = [a3 save_];
    v9 = v23[0];
    if (v8)
    {
      *a4 = 0;
      result = v9;
      v10 = *MEMORY[0x277D85DE8];
      return result;
    }

    v11 = v23[0];
    v12 = sub_226D6D04C();

    swift_willThrow();
    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v13 = sub_226D6E07C();
    __swift_project_value_buffer(v13, qword_28105F5E0);
    v14 = v12;
    v15 = sub_226D6E05C();
    v16 = sub_226D6E9CC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v12;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_226AB4000, v15, v16, "Error pruning persistent history: %@", v17, 0xCu);
      sub_226AC47B0(v18, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v18, -1, -1);
      MEMORY[0x22AA8BEE0](v17, -1, -1);
    }

    sub_226CCA838();
    swift_allocError();
    *v21 = v12;
    result = swift_willThrow();
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226CC8BE4(void *a1, unint64_t a2, void *a3)
{
  v140 = a1;
  v141 = a3;
  v138 = a2;
  v145[1] = *MEMORY[0x277D85DE8];
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  v142 = v4;
  v143 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v137 = &v125[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v139 = &v125[-v10];
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v125[-v12];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v125[-v15];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v125[-v18];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v125[-v21];
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v125[-v24];
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v125[-v27];
  MEMORY[0x28223BE20](v26);
  v30 = &v125[-v29];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v31 = v3[2];
  v32 = v144;
  sub_226CC6434();
  if (v32)
  {
    goto LABEL_15;
  }

  v135 = v19;
  v136 = v22;
  v132 = v13;
  v133 = v16;
  v144 = v25;
  v33 = v142;
  v34 = 0;
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v35 = v141;
  sub_226CC589C(v141, v28);
  v134 = v28;
  sub_226CCA88C(&qword_27D7A66D8);
  v36 = v30;
  v37 = v140;
  v38 = v33;
  v39 = sub_226D6E32C();
  v40 = v143;
  v41 = *(v143 + 16);
  v130 = v41;
  v131 = v36;
  if (v39)
  {
    v42 = v135;
    v43 = v135;
    v44 = v36;
  }

  else
  {
    v43 = v135;
    v44 = v37;
    v42 = v135;
  }

  v41(v43, v44, v38);
  v45 = v134;
  if (sub_226D6E32C())
  {
    (*(v40 + 8))(v42, v38);
    v46 = v136;
    v130(v136, v45, v38);
    v47 = *(v40 + 32);
  }

  else
  {
    v47 = *(v40 + 32);
    v48 = v42;
    v46 = v136;
    v47(v136, v48, v38);
  }

  v49 = v144;
  v47(v144, v46, v38);
  sub_226CCA04C(v49, v35);
  if (!v50)
  {
    if (qword_28105F5F8 != -1)
    {
      swift_once();
    }

    v51 = sub_226D6E07C();
    __swift_project_value_buffer(v51, qword_28105F600);
    v52 = sub_226D6E05C();
    v53 = sub_226D6E9EC();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v134;
    if (v54)
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_226AB4000, v52, v53, "No purgeable token found. Aborting.", v56, 2u);
      MEMORY[0x22AA8BEE0](v56, -1, -1);
    }

    sub_226CCA838();
    swift_allocError();
    *v57 = 0x8000000000000000;
    swift_willThrow();
    v58 = *(v40 + 8);
    v58(v49, v38);
    v59 = v55;
    goto LABEL_14;
  }

  v140 = v50;
  sub_226D6BA1C();
  v62 = sub_226D6B9FC();
  [v62 setFetchLimit_];
  v63 = sub_226D6EBBC();
  if (!(v63 >> 62))
  {
    if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    goto LABEL_39;
  }

  v34 = v63;
  v124 = sub_226D6EDFC();
  v63 = v34;
  if (!v124)
  {
LABEL_39:

    v64 = v134;
    if (qword_28105F5F8 != -1)
    {
      swift_once();
    }

    v65 = sub_226D6E07C();
    __swift_project_value_buffer(v65, qword_28105F600);
    v66 = sub_226D6E05C();
    v67 = sub_226D6E9CC();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_226AB4000, v66, v67, "No metadata found. Aborting.", v68, 2u);
      MEMORY[0x22AA8BEE0](v68, -1, -1);
    }

    sub_226CCA838();
    swift_allocError();
    *v69 = 0x8000000000000010;
    swift_willThrow();

    v58 = *(v40 + 8);
    v58(v49, v38);
    v59 = v64;
LABEL_14:
    v58(v59, v38);
    v58(v131, v38);
    goto LABEL_15;
  }

LABEL_25:
  v135 = 0;
  if ((v63 & 0xC000000000000001) != 0)
  {
    v34 = v63;
    v70 = MEMORY[0x22AA8AFD0](0);
  }

  else
  {
    if (!*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

    v34 = v63;
    v70 = *(v63 + 32);
  }

  v71 = v70;

  v72 = objc_opt_self();
  if ((v138 & 0x8000000000000000) == 0)
  {
    v136 = v71;
    v138 = [v72 deleteHistoryBeforeToken:v140 whenHistoryPercentageOfStoreIsGreaterThan:?];
    [v138 setResultType_];
    v34 = v132;
    if (qword_28105F5F8 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_43;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  swift_once();
LABEL_30:
  v73 = sub_226D6E07C();
  v74 = __swift_project_value_buffer(v73, qword_28105F600);
  v75 = v130;
  v130(v133, v49, v38);
  v75(v34, v131, v38);
  v76 = v134;
  v75(v139, v134, v38);
  v130 = v74;
  v77 = sub_226D6E05C();
  v78 = sub_226D6E9EC();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v129 = v62;
    v80 = v79;
    v128 = swift_slowAlloc();
    v145[0] = v128;
    *v80 = 136315650;
    sub_226CCA88C(&qword_281062B80);
    v127 = v77;
    v126 = v78;
    v81 = v133;
    v82 = sub_226D6F1CC();
    v84 = v83;
    v85 = *(v40 + 8);
    v85(v81, v38);
    v86 = sub_226AC4530(v82, v84, v145);

    *(v80 + 4) = v86;
    *(v80 + 12) = 2080;
    v87 = sub_226D6F1CC();
    v89 = v88;
    v85(v34, v38);
    v90 = sub_226AC4530(v87, v89, v145);

    *(v80 + 14) = v90;
    *(v80 + 22) = 2080;
    v76 = v134;
    v91 = v139;
    v92 = sub_226D6F1CC();
    v94 = v93;
    v85(v91, v38);
    v49 = v144;
    v95 = sub_226AC4530(v92, v94, v145);

    *(v80 + 24) = v95;
    v96 = v127;
    _os_log_impl(&dword_226AB4000, v127, v126, "    Pruning from %s.     Last CK sync %s,     last synced date %s", v80, 0x20u);
    v97 = v128;
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v97, -1, -1);
    v98 = v80;
    v62 = v129;
    MEMORY[0x22AA8BEE0](v98, -1, -1);
  }

  else
  {

    v85 = *(v40 + 8);
    v85(v139, v38);
    v85(v34, v38);
    v85(v133, v38);
  }

  v145[0] = 0;
  v99 = v138;
  v100 = [v141 executeRequest:v138 error:v145];
  v101 = v145[0];
  v102 = v137;
  if (v100)
  {
    v103 = v100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_226D70840;
    *(v104 + 56) = sub_226AE59B4(0, &qword_27D7A8D28, 0x277CBE4E8);
    *(v104 + 32) = v103;
    v105 = v101;
    v106 = v103;
    sub_226D6F2DC();

    sub_226D6D46C();
    v107 = v136;
    sub_226D6BA0C();

    v108 = v142;
    v85(v102, v142);
    v85(v49, v108);
    v85(v76, v108);
    v85(v131, v108);
  }

  else
  {
    v109 = v62;
    v110 = v145[0];
    v111 = sub_226D6D04C();

    swift_willThrow();
    v112 = v111;
    v113 = sub_226D6E05C();
    v114 = sub_226D6E9CC();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v116 = v76;
      v117 = swift_slowAlloc();
      *v115 = 138412290;
      v118 = v111;
      v119 = _swift_stdlib_bridgeErrorToNSError();
      *(v115 + 4) = v119;
      *v117 = v119;
      _os_log_impl(&dword_226AB4000, v113, v114, "CoreData error: %@. Aboorting.", v115, 0xCu);
      sub_226AC47B0(v117, &qword_27D7A5FB0, &qword_226D70870);
      v120 = v117;
      v76 = v116;
      v49 = v144;
      MEMORY[0x22AA8BEE0](v120, -1, -1);
      v99 = v138;
      MEMORY[0x22AA8BEE0](v115, -1, -1);
    }

    sub_226CCA838();
    swift_allocError();
    *v121 = v111;
    swift_willThrow();
    v122 = v111;

    v123 = v142;
    v85(v49, v142);
    v85(v76, v123);
    v85(v131, v123);
  }

LABEL_15:
  v60 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t sub_226CC9918()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t _s13FinanceDaemon12PruningErrorO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4)
  {
    if (v4 != 1)
    {
      v8 = __ROR8__(v2 ^ 0x8000000000000000, 3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          if (v3 != 0x8000000000000010)
          {
            goto LABEL_15;
          }
        }

        else if (v3 != 0x8000000000000018)
        {
          goto LABEL_15;
        }
      }

      else if (v8)
      {
        if (v3 != 0x8000000000000008)
        {
          goto LABEL_15;
        }
      }

      else if (v3 != 0x8000000000000000)
      {
        goto LABEL_15;
      }

      sub_226CCA9B8(*a2);
      v7 = 1;
      goto LABEL_18;
    }

    if (v3 >> 62 == 1)
    {
      goto LABEL_6;
    }

LABEL_15:
    sub_226CCA9B8(*a2);
    sub_226CCA9B8(v2);
    v7 = 0;
    goto LABEL_18;
  }

  if (v3 >> 62)
  {
    goto LABEL_15;
  }

LABEL_6:
  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  sub_226CCA9B8(v3);
  sub_226CCA9B8(v2);
  sub_226CCA9B8(v3);
  sub_226CCA9B8(v2);
  v5 = sub_226D6D03C();
  v6 = sub_226D6D03C();
  v7 = sub_226D6EC3C();

  sub_226CCA9D4(v3);
  sub_226CCA9D4(v2);
LABEL_18:
  sub_226CCA9D4(v2);
  sub_226CCA9D4(v3);
  return v7 & 1;
}

unint64_t get_enum_tag_for_layout_string_13FinanceDaemon12PruningErrorO(uint64_t *a1)
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

uint64_t sub_226CC9B3C(uint64_t a1, unsigned int a2)
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

uint64_t sub_226CC9B98(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_226CC9BF8(void *result, uint64_t a2)
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

unint64_t sub_226CC9C58(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v37 - v7;
  v9 = sub_226D6D4AC();
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v37 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v37 - v17;
  sub_226D6BA1C();
  v19 = sub_226D6B9FC();
  [v19 setFetchLimit_];
  v20 = a1;
  v21 = v39;
  result = sub_226D6EBBC();
  if (v21)
  {

    return v20 & 1;
  }

  v37[0] = v16;
  v37[1] = 0;
  v39 = v8;
  v23 = v38;
  if (result >> 62)
  {
    v36 = result;
    v24 = sub_226D6EDFC();
    result = v36;
  }

  else
  {
    v24 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v13;
  v26 = v9;
  if (!v24)
  {

    goto LABEL_13;
  }

  v27 = v6;
  if ((result & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x22AA8AFD0](0);
LABEL_9:
    v29 = v28;

    if (v29)
    {
      v30 = [v29 lastPruneDate];
      if (v30)
      {
        v31 = v30;
        sub_226D6D45C();

        (*(v23 + 56))(v27, 0, 1, v26);
      }

      else
      {
        (*(v23 + 56))(v27, 1, 1, v26);
      }

      v33 = v37[0];
      v34 = v27;
      v32 = v39;
      sub_226B72784(v34, v39);
      if ((*(v23 + 48))(v32, 1, v26) != 1)
      {
        (*(v23 + 32))(v18, v32, v26);
        sub_226D6D3DC();
        sub_226D6D46C();
        v20 = sub_226D6D40C();

        v35 = *(v23 + 8);
        v35(v25, v26);
        v35(v33, v26);
        v35(v18, v26);
        return v20 & 1;
      }

      goto LABEL_17;
    }

LABEL_13:

    v32 = v39;
    (*(v23 + 56))(v39, 1, 1, v26);
LABEL_17:
    sub_226AC47B0(v32, &qword_27D7A8BE0, &unk_226D718F0);
    v20 = 1;
    return v20 & 1;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(result + 32);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_226CCA04C(uint64_t a1, void *a2)
{
  v75 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_self();
  v4 = [v3 fetchRequest];
  if (!v4)
  {
    goto LABEL_49;
  }

  v5 = v4;
  v6 = [v3 entityDescriptionWithContext_];
  if (!v6)
  {
    goto LABEL_50;
  }

  v67 = v6;
  v68 = v5;
  v7 = [v6 propertiesByName];
  sub_226AE59B4(0, &unk_28105F430, 0x277CBE4F0);
  v8 = MEMORY[0x277D837D0];
  v9 = sub_226D6E2BC();
  if (!*(v9 + 16) || (v10 = sub_226C2FDD4(0x6D617473656D6974, 0xE900000000000070), (v11 & 1) == 0))
  {
LABEL_48:

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  v12 = v10;

  v13 = *(*(v9 + 56) + 8 * v12);

  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_226D71840;
  v15 = [v13 name];
  v16 = sub_226D6E39C();
  v18 = v17;

  *(v14 + 56) = v8;
  *(v14 + 64) = sub_226B16404();
  *(v14 + 32) = v16;
  *(v14 + 40) = v18;
  v19 = sub_226D6D3EC();
  *(v14 + 96) = sub_226AE59B4(0, &qword_28105F410, 0x277CBEAA8);
  *(v14 + 104) = sub_226C8BE70(&qword_28105F400, &qword_28105F410, 0x277CBEAA8);
  *(v14 + 72) = v19;
  v20 = sub_226D6E91C();
  [v68 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_226D71F20;
  v22 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v23 = sub_226D6E36C();
  v24 = [v22 initWithKey:v23 ascending:0];

  *(v21 + 32) = v24;
  sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  v25 = sub_226D6E5CC();

  [v68 setSortDescriptors_];

  [v68 setFetchLimit_];
  v26 = [objc_opt_self() fetchHistoryWithFetchRequest_];
  [v26 setResultType_];
  [v26 setFetchLimit_];
  *&v74[0] = 0;
  v27 = [a2 executeRequest:v26 error:v74];
  v28 = *&v74[0];
  if (!v27)
  {
    v51 = *&v74[0];
    sub_226D6D04C();

    swift_willThrow();
    goto LABEL_43;
  }

  v29 = v27;
  v65 = v26;
  v66 = v13;
  objc_opt_self();
  v30 = swift_dynamicCastObjCClassUnconditional();
  v31 = v28;
  if ([v30 result])
  {
    sub_226D6ED0C();
    swift_unknownObjectRelease();
    sub_226B24A98(&v73, v74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F50, &unk_226D7D360);
    swift_dynamicCast();
    v32 = v72;
    v33 = sub_226D6EB3C();
    if (v33)
    {
      v64 = v29;
      v34 = v33;
      v35 = [v33 identifier];

      if (v35)
      {
        v71 = sub_226D6E39C();
        v37 = v36;

        *&v74[0] = MEMORY[0x277D84F90];
        v63 = v20;
        if (v72 >> 62)
        {
          goto LABEL_31;
        }

        for (i = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
        {
          v39 = 0;
          v69 = v32 & 0xFFFFFFFFFFFFFF8;
          v70 = v32 & 0xC000000000000001;
          while (1)
          {
            if (v70)
            {
              v41 = MEMORY[0x22AA8AFD0](v39, v32);
            }

            else
            {
              if (v39 >= *(v69 + 16))
              {
                goto LABEL_30;
              }

              v41 = *(v32 + 8 * v39 + 32);
            }

            v42 = v41;
            v43 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              break;
            }

            v44 = v32;
            v45 = [v41 storeID];
            v46 = sub_226D6E39C();
            v48 = v47;

            if (v46 == v71 && v48 == v37)
            {
            }

            else
            {
              v50 = sub_226D6F21C();

              if ((v50 & 1) == 0)
              {

                goto LABEL_14;
              }
            }

            sub_226D6EF6C();
            v40 = *(*&v74[0] + 16);
            sub_226D6EF9C();
            sub_226D6EFAC();
            sub_226D6EF7C();
LABEL_14:
            v32 = v44;
            ++v39;
            if (v43 == i)
            {
              goto LABEL_32;
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          ;
        }

LABEL_32:

        v52 = *&v74[0];
        if ((*&v74[0] & 0x8000000000000000) != 0 || (*&v74[0] & 0x4000000000000000) != 0)
        {
          v53 = sub_226D6EDFC();
          v54 = v66;
          v55 = v68;
          v56 = v63;
          v57 = v65;
          if (v53)
          {
LABEL_35:
            v58 = __OFSUB__(v53, 1);
            v59 = v53 - 1;
            if (v58)
            {
              __break(1u);
            }

            else if ((v52 & 0xC000000000000001) == 0)
            {
              if ((v59 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v59 < *(v52 + 16))
              {
                v60 = *(v52 + 8 * v59 + 32);
LABEL_40:
                v61 = v60;

                [v61 token];

                goto LABEL_43;
              }

              __break(1u);
              goto LABEL_48;
            }

            v60 = MEMORY[0x22AA8AFD0](v59, v52);
            goto LABEL_40;
          }
        }

        else
        {
          v53 = *(*&v74[0] + 16);
          v54 = v66;
          v55 = v68;
          v56 = v63;
          v57 = v65;
          if (v53)
          {
            goto LABEL_35;
          }
        }

        goto LABEL_43;
      }
    }

    else
    {
    }

LABEL_43:
    v62 = *MEMORY[0x277D85DE8];
    return;
  }

  __break(1u);
}

unint64_t sub_226CCA838()
{
  result = qword_27D7A8D20;
  if (!qword_27D7A8D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8D20);
  }

  return result;
}

uint64_t sub_226CCA88C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_226D6D4AC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_226CCA8D0@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 24);
  result = sub_226CC9C58(*(v1 + 32));
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_226CCA944(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_226CCA9B8(unint64_t result)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    result &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  return result;
}

void sub_226CCA9D4(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      return;
    }

    a1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }
}

unint64_t sub_226CCAA14()
{
  result = qword_27D7A8D60;
  if (!qword_27D7A8D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8D60);
  }

  return result;
}

uint64_t sub_226CCAA84(void *a1, void *a2)
{
  v4 = [a1 trackedOrderIdentifier];
  v5 = sub_226D6E39C();
  v7 = v6;

  if (qword_28105F6A0 != -1)
  {
    swift_once();
  }

  v8 = sub_226D6E07C();
  __swift_project_value_buffer(v8, qword_28105F6A8);

  v9 = sub_226D6E05C();
  v10 = sub_226D6E9EC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_226AC4530(v5, v7, &v14);
    _os_log_impl(&dword_226AB4000, v9, v10, "Deleting extracted order with id: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
  }

  [a2 deleteObject_];
  return v5;
}

uint64_t sub_226CCAC20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_226D66DBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226CCAF20(v3, v15);
  if (!v16)
  {
    return sub_226AC47B0(v15, &unk_27D7A7660, &unk_226D7B420);
  }

  (*(v7 + 104))(v10, *MEMORY[0x277CC64F0], v6);
  v11 = sub_226D66D6C();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v12 = __swift_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x28223BE20](v12);
    *(&v14 - 2) = a1;
    *(&v14 - 1) = a2;
    off_283A6EDE8();
  }

  return sub_226B4FC54(v15);
}

uint64_t sub_226CCAF20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A7660, &unk_226D7B420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226CCAF90(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_226D6F21C();
  }
}

uint64_t get_enum_tag_for_layout_string_13FinanceDaemon30TrackedOrderBiomeStreamDonatorVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_226CCAFE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_226CCB044(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void sub_226CCB0B0(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_226D6EDFC();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = MEMORY[0x277D84F90];
    sub_226AE1D68(0, v2 & ~(v2 >> 63), 0);
    v37 = v42;
    if (v35)
    {
      v3 = sub_226D6EDAC();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_226D6ED6C();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v1;
        sub_226CCCFAC(v39, v40, v41, v1, &unk_28105F430, 0x277CBE4F0);
        v13 = v12;
        v14 = [v12 name];
        v15 = sub_226D6E39C();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = *(v37 + 16);
        v19 = *(v37 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_226AE1D68((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        *(v18 + 16) = v20 + 1;
        v21 = v18 + 16 * v20;
        *(v21 + 32) = v15;
        *(v21 + 40) = v17;
        v37 = v18;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_226D6EDCC())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8D88, &qword_226D7B538);
          v7 = sub_226D6E8CC();
          sub_226D6EE4C();
          v7(v38, 0);
          if (v6 == v34)
          {
LABEL_32:
            sub_226AE5444(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v22 = 1 << *(v11 + 32);
          if (v9 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v9 >> 6;
          v24 = *(v33 + 8 * (v9 >> 6));
          if (((v24 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v9 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v2 = v34;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_226AE5444(v9, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_226AE5444(v9, v36, 0);
          }

LABEL_31:
          v31 = *(v11 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_226CCB428(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_226CCB4D4(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v20 = a1;
  v6 = type metadata accessor for AccountAndStartingDate();
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  while (v12)
  {
LABEL_9:
    sub_226AE51A0(*(a3 + 48) + *(v19 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v9);
    v17 = v20(v9);
    result = sub_226AE5204(v9);
    if (v3)
    {
      goto LABEL_13;
    }

    v12 &= v12 - 1;
    if (v17)
    {
      a2 = 1;
LABEL_13:

      return a2 & 1;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      a2 = 0;
      goto LABEL_13;
    }

    v12 = *(a3 + 56 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226CCB67C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_226D6EB6C();
  *a1 = result;
  return result;
}

void sub_226CCB6B8(void *a1, uint64_t a2)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_self() currentQueryGenerationToken];
  v31[0] = 0;
  v5 = [a1 setQueryGenerationFromToken:v4 error:v31];

  v6 = v31[0];
  if (v5)
  {
    v7 = *(a2 + 56);
    v8 = v6;
    v21 = sub_226D6EB5C();

    if (v21 >> 62)
    {
      v22 = sub_226D6EDFC();
      if (v22)
      {
LABEL_11:
        sub_226CCD420(v21);
        if (v23)
        {
          sub_226CCBA50();
        }

        else
        {
          v24 = sub_226CCD748(v21);
          sub_226CCBFA0(v24);

          v25 = sub_226CCDC00(v21);
          sub_226CCC1C0(v25, a1);
        }

        v26 = v22 - 1;
        if (__OFSUB__(v22, 1))
        {
          __break(1u);
        }

        else if ((v21 & 0xC000000000000001) == 0)
        {
          if ((v26 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v26 < *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v27 = *(v21 + 8 * v26 + 32);
LABEL_19:
            v28 = v27;

            v29 = [v28 token];

            v30 = *(a2 + 56);
            *(a2 + 56) = v29;

LABEL_22:
            sub_226B6D63C(a1);
            goto LABEL_8;
          }

          __break(1u);
        }

        v27 = MEMORY[0x22AA8AFD0](v26, v21);
        goto LABEL_19;
      }
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_22;
  }

  v9 = v31[0];
  v10 = sub_226D6D04C();

  swift_willThrow();
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v11 = sub_226D6E07C();
  __swift_project_value_buffer(v11, qword_28105F710);
  v12 = v10;
  v13 = sub_226D6E05C();
  v14 = sub_226D6E9CC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v31[0] = v16;
    *v15 = 136315138;
    swift_getErrorValue();
    v17 = sub_226D6F26C();
    v19 = sub_226AC4530(v17, v18, v31);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_226AB4000, v13, v14, " Failed to process account changes in the daemon %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x22AA8BEE0](v16, -1, -1);
    MEMORY[0x22AA8BEE0](v15, -1, -1);
  }

  [a1 reset];
LABEL_8:
  v20 = *MEMORY[0x277D85DE8];
}

char *sub_226CCBA50()
{
  v1 = v0;
  v2 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_226AE532C((v2 + 16), v55);
  v3 = v56;
  v4 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  (*(v4 + 8))(&v58, v3, v4);
  v5 = v58;
  __swift_destroy_boxed_opaque_existential_0Tm(v55);
  v6 = __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_226AE532C((v6 + 103), v55);
  v52 = v5;
  v58 = v5;
  v7 = BankConnectPaymentPassDataSource.paymentPasses()();
  v8 = v7;
  if (v7 >> 62)
  {
    v9 = sub_226D6EDFC();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_13:

    v12 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_3:
  v58 = MEMORY[0x277D84F90];
  result = sub_226AE1D68(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
    __break(1u);
    return result;
  }

  v11 = 0;
  v12 = v58;
  do
  {
    v13 = v12;
    if ((v8 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x22AA8AFD0](v11, v8);
    }

    else
    {
      v14 = *(v8 + 8 * v11 + 32);
    }

    v15 = v14;
    v16 = [v15 primaryAccountIdentifier];
    v17 = sub_226D6E39C();
    v19 = v18;

    v12 = v13;
    v58 = v13;
    v20 = *(v13 + 16);
    v21 = *(v12 + 24);
    if (v20 >= v21 >> 1)
    {
      sub_226AE1D68((v21 > 1), v20 + 1, 1);
      v12 = v58;
    }

    ++v11;
    *(v12 + 16) = v20 + 1;
    v22 = v12 + 16 * v20;
    *(v22 + 32) = v17;
    *(v22 + 40) = v19;
  }

  while (v9 != v11);

LABEL_14:
  v23 = *(v12 + 16);
  if (v23)
  {
    v24 = (v12 + 40);
    do
    {
      v33 = *(v24 - 1);
      v32 = *v24;
      v34 = __swift_project_boxed_opaque_existential_1(v55, v56);
      v35 = *(*v34 + 40);
      v36 = *(*v34 + 48);
      __swift_project_boxed_opaque_existential_1((*v34 + 16), v35);
      v37 = *(v36 + 8);

      v38 = v37(&v58, v35, v36);
      v39 = v58;
      MEMORY[0x28223BE20](v38);
      sub_226D6EB8C();
      if (v54)
      {
        sub_226CCE0AC();
        v40 = swift_allocError();
        *v41 = v54;
        swift_willThrow();

LABEL_22:
        v54 = 0;
        if (qword_28105F708 != -1)
        {
          swift_once();
        }

        v46 = sub_226D6E07C();
        __swift_project_value_buffer(v46, qword_28105F710);

        v47 = v40;
        v48 = sub_226D6E05C();
        v49 = sub_226D6E9CC();

        if (os_log_type_enabled(v48, v49))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v53 = v23;
          v27 = swift_slowAlloc();
          v58 = v27;
          *v25 = 136315394;
          v28 = sub_226AC4530(v33, v32, &v58);

          *(v25 + 4) = v28;
          *(v25 + 12) = 2112;
          v29 = v40;
          v30 = _swift_stdlib_bridgeErrorToNSError();
          *(v25 + 14) = v30;
          *v26 = v30;
          _os_log_impl(&dword_226AB4000, v48, v49, "Failed to refresh card art for %s: %@.", v25, 0x16u);
          sub_226B17298(v26);
          MEMORY[0x22AA8BEE0](v26, -1, -1);
          __swift_destroy_boxed_opaque_existential_0Tm(v27);
          v31 = v27;
          v23 = v53;
          MEMORY[0x22AA8BEE0](v31, -1, -1);
          MEMORY[0x22AA8BEE0](v25, -1, -1);
        }

        else
        {
        }

        goto LABEL_17;
      }

      v42 = v58;
      v58 = v39;
      v43._countAndFlagsBits = v33;
      v43._object = v32;
      v44 = BankConnectPaymentPassDataSource.isDynamicCardArtEnabled(for:)(v43);
      if (v45)
      {

        v40 = v45;
        goto LABEL_22;
      }

      v54 = 0;
      if (v44)
      {
        if ((v42 & 1) == 0)
        {
          v58 = v39;
          v50 = 0;
LABEL_31:
          v51._countAndFlagsBits = v33;
          v51._object = v32;
          BankConnectPaymentPassDataSource.setDynamicCardArt(enabled:for:)(v50, v51);
        }
      }

      else if (v42)
      {
        v58 = v39;
        v50 = 1;
        goto LABEL_31;
      }

LABEL_17:
      v24 += 2;
      --v23;
    }

    while (v23);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v55);
}

void sub_226CCBFA0(uint64_t a1)
{
  v3 = __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_226AE532C((v3 + 16), v25);
  v4 = v26;
  v5 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  (*(v5 + 8))(&v24, v4, v5);
  v6 = v24;
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 40);
    v9 = &unk_28105F000;
    v10 = qword_28105F710;
    v23 = v6;
    do
    {
      v13 = *(v8 - 1);
      v12 = *v8;
      v14 = v9[225];

      if (v14 != -1)
      {
        swift_once();
      }

      v15 = sub_226D6E07C();
      __swift_project_value_buffer(v15, v10);

      v16 = sub_226D6E05C();
      v17 = sub_226D6E9EC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = v10;
        v19 = v9;
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v25[0] = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_226AC4530(v13, v12, v25);
        _os_log_impl(&dword_226AB4000, v16, v17, "Deleted an account matched with %s, disabling the card art.", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v21);
        MEMORY[0x22AA8BEE0](v21, -1, -1);
        v22 = v20;
        v9 = v19;
        v10 = v18;
        v6 = v23;
        MEMORY[0x22AA8BEE0](v22, -1, -1);
      }

      v25[0] = v6;
      v11._countAndFlagsBits = v13;
      v11._object = v12;
      BankConnectPaymentPassDataSource.setDynamicCardArt(enabled:for:)(0, v11);

      v8 += 2;
      --v7;
    }

    while (v7);
  }
}

uint64_t sub_226CCC1C0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  sub_226AE532C((v6 + 16), v18);
  v7 = v19;
  v8 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v8 + 1))(v23, v7, v8);
  v9 = v23[0];
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  v10 = v2[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  v11 = *(*(v10 + 8) + 8);
  sub_226D6BADC();
  sub_226AE532C(v23, v22);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  sub_226B6B030(v22, (v12 + 4));
  v12[9] = v9;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_226CCE100;
  *(v13 + 24) = v12;
  v20 = sub_226CBEEEC;
  v21 = v13;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_226CAD254;
  v19 = &block_descriptor_14;
  v14 = _Block_copy(v18);

  v15 = a2;
  v16 = v9;

  [v15 performBlockAndWait_];
  _Block_release(v14);

  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  return result;
}

void sub_226CCC3E0(unint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v65 = a4;
  v63 = a3;
  v55 = a2;
  v62 = sub_226D6831C();
  v5 = *(v62 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v62);
  v61 = (&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_226D6A30C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  v78 = sub_226D6D06C();
  v16 = *(v78 - 8);
  v17 = v16[8];
  MEMORY[0x28223BE20](v78);
  v77 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
  {
    v20 = 0;
    v54 = a1 & 0xC000000000000001;
    v49 = a1 & 0xFFFFFFFFFFFFFF8;
    v48 = (a1 + 32);
    v53 = (v16 + 1);
    v52 = *MEMORY[0x277CC7B60];
    v74 = v9 + 13;
    v76 = v9 + 1;
    v69 = *MEMORY[0x277CC7B68];
    v60 = *MEMORY[0x277CC72A0];
    v59 = (v5 + 104);
    v58 = (v5 + 8);
    v21 = MEMORY[0x277D84F90];
    v51 = a1;
    v50 = i;
    while (1)
    {
      if (v54)
      {
        v22 = MEMORY[0x22AA8AFD0](v20, a1);
      }

      else
      {
        if (v20 >= *(v49 + 16))
        {
          goto LABEL_38;
        }

        v22 = *&v48[8 * v20];
      }

      v9 = v22;
      if (__OFADD__(v20++, 1))
      {
        break;
      }

      v16 = [v55 objectWithID_];
      sub_226D6794C();
      v24 = swift_dynamicCastClass();
      if (v24)
      {
        v64 = v16;
        v56 = v9;
        v57 = v20;
        v16 = [v24 accountObjects];
        v84 = v21;
        a1 = v77;
        sub_226D6EBEC();
        sub_226AC44A0(&qword_27D7A8D78, MEMORY[0x277CC9178]);
        sub_226D6ECBC();
        if (v83)
        {
          v79 = v21;
          do
          {
            sub_226B24A98(&v82, &v80);
            sub_226D69F0C();
            if ((swift_dynamicCast() & 1) != 0 && v81)
            {
              MEMORY[0x22AA8A610]();
              if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                a1 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_226D6E61C();
              }

              sub_226D6E65C();
              v79 = v84;
            }

            sub_226D6ECBC();
          }

          while (v83);
        }

        else
        {
          v79 = v21;
        }

        (*v53)(v77, v78);
        sub_226D678CC();
        v73 = *v74;
        v73(v13, v52, v8);
        v5 = sub_226AC44A0(&qword_27D7A6E78, MEMORY[0x277CC7B70]);
        sub_226D6E53C();
        v9 = v13;
        v72 = v5;
        sub_226D6E53C();
        v75 = *v76;
        v75(v13, v8);
        v67 = v82;
        v66 = v80;
        v25 = v79;
        if (v79 >> 62)
        {
          v5 = v79;
          v26 = sub_226D6EDFC();
          v25 = v5;
        }

        else
        {
          v26 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v27 = v64;
        if (v26)
        {
          if (v26 < 1)
          {
            goto LABEL_37;
          }

          v28 = 0;
          v70 = v25 & 0xC000000000000001;
          v71 = v26;
          do
          {
            if (v70)
            {
              v29 = MEMORY[0x22AA8AFD0](v28);
            }

            else
            {
              v29 = *(v25 + 8 * v28 + 32);
            }

            v16 = v29;
            v73(v13, v69, v8);
            sub_226D6E53C();
            v9 = v13;
            sub_226D6E53C();
            v75(v13, v8);
            if (v82 == v80)
            {
              v30 = v63[3];
              v68 = v63[4];
              v9 = __swift_project_boxed_opaque_existential_1(v63, v30);
              v31 = v8;
              v32 = v13;
              v33 = [v16 accountId];
              v34 = v15;
              v35 = sub_226D6E39C();
              v37 = v36;

              v38 = v61;
              *v61 = v35;
              v38[1] = v37;
              v15 = v34;
              v39 = v62;
              (*v59)(v38, v60, v62);
              sub_226D6AD5C();
              v40 = v38;
              v13 = v32;
              v8 = v31;
              v27 = v64;
              (*v58)(v40, v39);
            }

            v41 = [v16 externalAccountId];
            if (v41)
            {
              v42 = v67 == v66;
              v43 = v41;
              v44 = sub_226D6E39C();
              v46 = v45;

              *&v82 = v65;
              v9 = &v82;
              v47._countAndFlagsBits = v44;
              v47._object = v46;
              BankConnectPaymentPassDataSource.setDynamicCardArt(enabled:for:)(v42, v47);
            }

            v25 = v79;
            ++v28;
          }

          while (v71 != v28);
        }

        v5 = v25;

        v75(v15, v8);
        a1 = v51;
        i = v50;
        v20 = v57;
        v21 = MEMORY[0x277D84F90];
        if (v57 == v50)
        {
          return;
        }
      }

      else
      {

        if (v20 == i)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }
}

uint64_t sub_226CCCC4C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_226CCCCEC(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AA8AEC0](a1, a2, v7);
      sub_226D69F0C();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_226D69F0C();
    if (sub_226D6EDDC() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_226D6EDEC();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_226D6EC2C();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_226D6EC3C();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

uint64_t sub_226CCCEEC@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_226D6D52C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

void sub_226CCCFAC(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AA8AEC0](a1, a2, v11);
      sub_226AE59B4(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_226AE59B4(0, a5, a6);
    if (sub_226D6EDDC() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_226D6EDEC();
    swift_dynamicCast();
    v6 = v20;
    v12 = *(a4 + 40);
    v13 = sub_226D6EC2C();
    v14 = -1 << *(a4 + 32);
    v10 = v13 & ~v14;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v15 = ~v14;
      do
      {
        v16 = *(*(a4 + 48) + 8 * v10);
        v17 = sub_226D6EC3C();

        if (v17)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v15;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v18 = *(*(a4 + 48) + 8 * v10);

  v19 = v18;
}

uint64_t sub_226CCD1D8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_226D6F21C() & 1;
  }
}

uint64_t sub_226CCD230(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_226CCD284()
{
  v1 = v0;
  v2 = *__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v3 = sub_226D676AC();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_226CCD400;
  *(v5 + 24) = v4;
  v9[4] = sub_226B2A000;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_226CAD254;
  v9[3] = &block_descriptor_17;
  v6 = _Block_copy(v9);
  v7 = v3;

  [v7 performBlockAndWait_];

  _Block_release(v6);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_226CCD420(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
LABEL_37:
    v2 = sub_226D6EDFC();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = v1 & 0xC000000000000001;
      v27 = v1 + 32;
      v28 = v1 & 0xFFFFFFFFFFFFFF8;
      v5 = &selRef_setSortDescriptors_;
      v30 = v2;
      v31 = v1;
      v29 = v1 & 0xC000000000000001;
      do
      {
        if (v4)
        {
          v7 = MEMORY[0x22AA8AFD0](v3, v1);
        }

        else
        {
          if (v3 >= *(v28 + 16))
          {
            __break(1u);
            return;
          }

          v7 = *(v27 + 8 * v3);
        }

        v6 = v7;
        if (__OFADD__(v3++, 1))
        {
          goto LABEL_36;
        }

        v9 = [v7 v5[94]];
        if (v9)
        {
          v10 = v9;
          v32 = v3;
          v33 = v6;
          sub_226AE59B4(0, &unk_27D7A8C30, 0x277CBE4A8);
          v1 = sub_226D6E5EC();

          if (v1 >> 62)
          {
            v11 = sub_226D6EDFC();
            if (v11)
            {
LABEL_14:
              v12 = 0;
              while (1)
              {
                if ((v1 & 0xC000000000000001) != 0)
                {
                  v13 = MEMORY[0x22AA8AFD0](v12, v1);
                }

                else
                {
                  if (v12 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_35;
                  }

                  v13 = *(v1 + 8 * v12 + 32);
                }

                v14 = v13;
                v15 = v12 + 1;
                if (__OFADD__(v12, 1))
                {
                  break;
                }

                v16 = [v13 changedObjectID];
                v17 = [v16 entity];

                v18 = [v17 name];
                if (v18)
                {
                  v19 = sub_226D6E39C();
                  v21 = v20;
                }

                else
                {
                  v19 = 0;
                  v21 = 0;
                }

                sub_226D68E6C();
                v22 = [swift_getObjCClassFromMetadata() entityName];
                v23 = sub_226D6E39C();
                v25 = v24;

                if (v21)
                {
                  if (v19 == v23 && v21 == v25)
                  {

                    goto LABEL_33;
                  }

                  v26 = sub_226D6F21C();

                  if (v26)
                  {
                    v14 = v33;
LABEL_33:

                    return;
                  }
                }

                else
                {
                }

                ++v12;
                if (v15 == v11)
                {
                  goto LABEL_4;
                }
              }

              __break(1u);
LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }
          }

          else
          {
            v11 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v11)
            {
              goto LABEL_14;
            }
          }

LABEL_4:

          v2 = v30;
          v1 = v31;
          v3 = v32;
          v6 = v33;
          v4 = v29;
          v5 = &selRef_setSortDescriptors_;
        }
      }

      while (v3 != v2);
    }
  }
}

char *sub_226CCD748(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v38 = v1 + 32;
    v39 = v1 & 0xFFFFFFFFFFFFFF8;
    v42 = v1;
    v43 = MEMORY[0x277D84F90];
    v5 = &selRef_setSortDescriptors_;
    v40 = v1 & 0xC000000000000001;
    v41 = i;
    while (1)
    {
      if (v4)
      {
        v6 = MEMORY[0x22AA8AFD0](v3, v1);
      }

      else
      {
        if (v3 >= *(v39 + 16))
        {
          goto LABEL_46;
        }

        v6 = *(v38 + 8 * v3);
      }

      v7 = v6;
      if (__OFADD__(v3++, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      v9 = [v6 v5[94]];
      if (v9)
      {
        break;
      }

LABEL_4:
      if (v3 == i)
      {
        return v43;
      }
    }

    v10 = v9;
    sub_226AE59B4(0, &unk_27D7A8C30, 0x277CBE4A8);
    v11 = sub_226D6E5EC();

    if (!(v11 >> 62))
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        goto LABEL_13;
      }

      goto LABEL_43;
    }

    v12 = sub_226D6EDFC();
    if (!v12)
    {
LABEL_43:

      goto LABEL_4;
    }

LABEL_13:
    sub_226D69F0C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (v12 >= 1)
    {
      v14 = ObjCClassFromMetadata;
      v44 = v7;
      v45 = v3;
      v15 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x22AA8AFD0](v15, v11);
        }

        else
        {
          v16 = *(v11 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = [v16 changedObjectID];
        v19 = [v18 entity];

        v20 = [v19 name];
        if (v20)
        {
          v21 = sub_226D6E39C();
          v23 = v22;
        }

        else
        {
          v21 = 0;
          v23 = 0;
        }

        v24 = [v14 entityName];
        v25 = sub_226D6E39C();
        v27 = v26;

        if (v23)
        {
          if (v21 == v25 && v23 == v27)
          {
          }

          else
          {
            v28 = sub_226D6F21C();

            if ((v28 & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          if ([v17 changeType] == 2)
          {
            v29 = [v17 tombstone];
            if (v29)
            {
              v30 = v29;
              v31 = sub_226D6E2BC();

              sub_226D6EE8C();
              if (!*(v31 + 16) || (v32 = sub_226C2FE4C(v46), (v33 & 1) == 0))
              {

                sub_226AE5030(v46);
                goto LABEL_38;
              }

              sub_226AC4708(*(v31 + 56) + 32 * v32, v47);
              sub_226AE5030(v46);

              if (swift_dynamicCast())
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v43 = sub_226BBAB0C(0, *(v43 + 2) + 1, 1, v43);
                }

                v35 = *(v43 + 2);
                v34 = *(v43 + 3);
                if (v35 >= v34 >> 1)
                {
                  v43 = sub_226BBAB0C((v34 > 1), v35 + 1, 1, v43);
                }

                *(v43 + 2) = v35 + 1;
                v36 = &v43[16 * v35];
                *(v36 + 4) = 0xD000000000000011;
                *(v36 + 5) = 0x8000000226D86610;
                goto LABEL_38;
              }
            }
          }
        }

        else
        {
        }

LABEL_37:

LABEL_38:
        if (v12 == ++v15)
        {

          i = v41;
          v1 = v42;
          v3 = v45;
          v4 = v40;
          v5 = &selRef_setSortDescriptors_;
          goto LABEL_4;
        }
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_226CCDC00(unint64_t a1)
{
  v1 = a1;
  v48 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v37 = v1 + 32;
    v38 = v1 & 0xFFFFFFFFFFFFFF8;
    v41 = v1;
    v42 = MEMORY[0x277D84F90];
    v44 = 0x8000000226D87550;
    v39 = v1 & 0xC000000000000001;
    v40 = i;
    while (1)
    {
      if (v4)
      {
        v5 = MEMORY[0x22AA8AFD0](v3, v1);
      }

      else
      {
        if (v3 >= *(v38 + 16))
        {
          goto LABEL_40;
        }

        v5 = *(v37 + 8 * v3);
      }

      v6 = v5;
      if (__OFADD__(v3++, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      v8 = [v5 changes];
      if (v8)
      {
        break;
      }

LABEL_4:
      if (v3 == i)
      {
        return v42;
      }
    }

    v9 = v8;
    v45 = v6;
    sub_226AE59B4(0, &unk_27D7A8C30, 0x277CBE4A8);
    v10 = sub_226D6E5EC();

    if (!(v10 >> 62))
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_13;
      }

      goto LABEL_37;
    }

    v11 = sub_226D6EDFC();
    if (!v11)
    {
LABEL_37:

      goto LABEL_4;
    }

LABEL_13:
    if (v11 >= 1)
    {
      v43 = v3;
      v12 = 0;
      v46 = v10 & 0xC000000000000001;
      while (1)
      {
        if (v46)
        {
          v13 = MEMORY[0x22AA8AFD0](v12, v10);
        }

        else
        {
          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = [v13 changedObjectID];
        v16 = [v15 entity];

        v17 = [v16 name];
        if (!v17)
        {
          goto LABEL_32;
        }

        v18 = sub_226D6E39C();
        v20 = v19;

        sub_226D6794C();
        v21 = [swift_getObjCClassFromMetadata() entityName];
        v22 = sub_226D6E39C();
        v24 = v23;

        if (v18 == v22 && v20 == v24)
        {
        }

        else
        {
          v26 = sub_226D6F21C();

          if ((v26 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        if ([v14 changeType] == 1)
        {
          v27 = [v14 updatedProperties];
          if (v27)
          {
            v28 = v27;
            sub_226AE59B4(0, &unk_28105F430, 0x277CBE4F0);
            sub_226CCE110();
            v29 = sub_226D6E89C();

            sub_226CCB0B0(v29);
            v31 = v30;

            v47[0] = 0xD000000000000012;
            v47[1] = v44;
            MEMORY[0x28223BE20](v32);
            v36[2] = v47;
            LOBYTE(v29) = sub_226CCB428(sub_226CCE178, v36, v31);

            if (v29)
            {
              v33 = [v14 changedObjectID];
              MEMORY[0x22AA8A610]();
              if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v34 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_226D6E61C();
              }

              sub_226D6E65C();

              v42 = v48;
              goto LABEL_33;
            }
          }
        }

LABEL_32:

LABEL_33:
        if (v11 == ++v12)
        {

          i = v40;
          v1 = v41;
          v3 = v43;
          v4 = v39;
          goto LABEL_4;
        }
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_226CCE0AC()
{
  result = qword_27D7A8D70;
  if (!qword_27D7A8D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8D70);
  }

  return result;
}

unint64_t sub_226CCE110()
{
  result = qword_27D7A8D80;
  if (!qword_27D7A8D80)
  {
    sub_226AE59B4(255, &unk_28105F430, 0x277CBE4F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8D80);
  }

  return result;
}

uint64_t sub_226CCE178(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_226D6F21C() & 1;
  }
}

uint64_t BankConnectServiceImplementation.getConsent(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_226D6EB9C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_226D6B9BC();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v3[10] = *(v8 + 64);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CCE300, 0, 0);
}

uint64_t sub_226CCE300()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v18 = v0[7];
  v6 = v0[5];
  v7 = v0[3];
  v8 = *__swift_project_boxed_opaque_existential_1((v0[4] + 16), *(v0[4] + 40));
  v9 = sub_226D676AC();
  v0[12] = v9;
  (*(v4 + 16))(v1, v7, v3);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  v0[13] = v11;
  (*(v4 + 32))(v11 + v10, v1, v3);
  *(v11 + ((v2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  (*(v5 + 104))(v18, *MEMORY[0x277CBE110], v6);
  v12 = *(MEMORY[0x277CBE118] + 4);
  v9;
  v13 = swift_task_alloc();
  v0[14] = v13;
  v14 = sub_226D682FC();
  *v13 = v0;
  v13[1] = sub_226CCE4BC;
  v15 = v0[7];
  v16 = v0[2];

  return MEMORY[0x28210EE50](v16, v15, sub_226CCE81C, v11, v14);
}

uint64_t sub_226CCE4BC()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 120) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_226CCE6C8;
  }

  else
  {
    v7 = sub_226CCE650;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226CCE650()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_226CCE6C8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);
  v4 = *(v0 + 120);

  return v3();
}

uint64_t sub_226CCE740()
{
  sub_226D6794C();
  result = sub_226D6789C();
  if (!v0)
  {
    if (result)
    {
      return sub_226D6830C();
    }

    else
    {
      v2 = sub_226D6A90C();
      sub_226CCE8B4();
      swift_allocError();
      (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277CC7CB8], v2);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_226CCE81C()
{
  v1 = *(sub_226D6B9BC() - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_226CCE740();
}

unint64_t sub_226CCE8B4()
{
  result = qword_27D7A8D90;
  if (!qword_27D7A8D90)
  {
    sub_226D6A90C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8D90);
  }

  return result;
}

uint64_t sub_226CCE90C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = aBlock - v12;
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v14 = sub_226D6E07C();
  __swift_project_value_buffer(v14, qword_28105F5E0);

  v15 = sub_226D6E05C();
  v16 = sub_226D6E9EC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_226AC4530(a2, a3, aBlock);
    _os_log_impl(&dword_226AB4000, v15, v16, "System task with identifier: %s started running.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x22AA8BEE0](v18, -1, -1);
    MEMORY[0x22AA8BEE0](v17, -1, -1);
  }

  v19 = sub_226D6E79C();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a4;
  v21[5] = a5;
  v21[6] = a2;
  v21[7] = a3;
  v21[8] = v20;

  v22 = sub_226B60364(0, 0, v13, &unk_226D7B568, v21);
  v23 = swift_allocObject();
  v23[2] = a2;
  v23[3] = a3;
  v23[4] = v22;
  aBlock[4] = sub_226CCFEB4;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226C0B9A8;
  aBlock[3] = &block_descriptor_23;
  v24 = _Block_copy(aBlock);

  [a1 setExpirationHandler_];
  _Block_release(v24);
}

uint64_t sub_226CCEC44(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[5] = a6;
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  v8[8] = v10;
  *v10 = v8;
  v10[1] = sub_226CCED34;

  return v12();
}

uint64_t sub_226CCED34()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_226CCF004;
  }

  else
  {
    v3 = sub_226CCEE48;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226CCEE48()
{
  v15 = v0;
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F5E0);

  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_226AC4530(v6, v5, &v14);
    _os_log_impl(&dword_226AB4000, v3, v4, "System task with identifier: %s completed successfully.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v9 = v0[7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    [Strong setTaskCompleted];
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_226CCF004()
{
  v22 = v0;
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[6];
  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F5E0);

  v4 = v1;
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9CC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[9];
  if (v7)
  {
    v10 = v0[5];
    v9 = v0[6];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_226AC4530(v10, v9, &v21);
    *(v11 + 12) = 2112;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_226AB4000, v5, v6, "System task with identifier: %s failed with error: %@", v11, 0x16u);
    sub_226B17298(v12);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
  }

  else
  {
  }

  v16 = v0[7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    [Strong setTaskCompleted];
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_226CCF240(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = aBlock - v12;
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v14 = sub_226D6E07C();
  __swift_project_value_buffer(v14, qword_28105F5E0);

  v15 = sub_226D6E05C();
  v16 = sub_226D6E9EC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_226AC4530(a2, a3, aBlock);
    _os_log_impl(&dword_226AB4000, v15, v16, "System task with identifier: %s started running.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x22AA8BEE0](v18, -1, -1);
    MEMORY[0x22AA8BEE0](v17, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8D98, &qword_226D7B548);
  v19 = swift_allocObject();
  *(v19 + 20) = 0;
  *(v19 + 16) = 0;
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = v20;
  v22 = sub_226D6E79C();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = a4;
  v23[5] = a5;
  v23[6] = sub_226CCF6A8;
  v23[7] = v21;
  v23[8] = a2;
  v23[9] = a3;
  v23[10] = v19;
  swift_retain_n();

  v24 = sub_226B60364(0, 0, v13, &unk_226D7B558, v23);
  v25 = swift_allocObject();
  v25[2] = a2;
  v25[3] = a3;
  v25[4] = v24;
  aBlock[4] = sub_226CCFEDC;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226C0B9A8;
  aBlock[3] = &block_descriptor_18;
  v26 = _Block_copy(aBlock);

  [a1 setExpirationHandler_];
  _Block_release(v26);
}

uint64_t sub_226CCF5F8(uint64_t a1)
{
  swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  os_unfair_lock_lock((a1 + 20));
  sub_226CCFD7C((a1 + 16));
  os_unfair_lock_unlock((a1 + 20));
}

void sub_226CCF6B0(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      [Strong setTaskCompleted];
    }

    *a1 = 1;
  }
}

uint64_t sub_226CCF734(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = v16;
  v8[4] = v17;
  v8[2] = a8;
  v14 = (a4 + *a4);
  v11 = a4[1];
  v12 = swift_task_alloc();
  v8[5] = v12;
  *v12 = v8;
  v12[1] = sub_226CCF848;

  return v14(a6, a7);
}

uint64_t sub_226CCF848()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226CCF944, 0, 0);
}

void sub_226CCF944()
{
  v12 = v0;
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F5E0);

  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_226AC4530(v6, v5, &v11);
    _os_log_impl(&dword_226AB4000, v3, v4, "System task with identifier: %s finished running.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v9 = v0[4];
  os_unfair_lock_lock((v9 + 20));
  if (*(v9 + 16) == 1)
  {
    os_unfair_lock_unlock((v9 + 20));
    v10 = v0[1];

    v10();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_226CCFAEC(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_226AE5A84;

  return sub_226CCF734(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_226CCFBE0(uint64_t a1, unint64_t a2)
{
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F5E0);

  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_226AC4530(a1, a2, &v10);
    _os_log_impl(&dword_226AB4000, v5, v6, "System task with identifier: %s expired. Cancelling concurrency task.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  return sub_226D6E80C();
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226CCFD98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_226AD827C;

  return sub_226CCEC44(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226CCFEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D67F1C();
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D66F5C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F680 != -1)
  {
    swift_once();
  }

  v15 = sub_226D6E07C();
  __swift_project_value_buffer(v15, qword_28105F688);
  v16 = *(v11 + 16);
  v50 = a2;
  v16(v14, a2, v10);
  v17 = v48;
  v18 = *(v48 + 16);
  v51 = a3;
  v18(v9, a3, v6);

  v19 = sub_226D6E05C();
  v20 = sub_226D6E9EC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v44 = v6;
    v46 = v19;
    v22 = v21;
    v47 = swift_slowAlloc();
    v52 = v47;
    *v22 = 136315650;
    sub_226CD0940(&qword_281062C38, MEMORY[0x277CC6690]);
    v45 = v20;
    v23 = sub_226D6F1CC();
    v24 = v17;
    v25 = a1;
    v27 = v26;
    (*(v11 + 8))(v14, v10);
    v28 = sub_226AC4530(v23, v27, &v52);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = sub_226D66F6C();
    v30 = MEMORY[0x22AA8A6A0](v25, v29);
    v32 = sub_226AC4530(v30, v31, &v52);

    *(v22 + 14) = v32;
    *(v22 + 22) = 2080;
    a1 = v25;
    sub_226CD0940(&qword_281062BC0, MEMORY[0x277CC7098]);
    v33 = v44;
    v34 = sub_226D6F1CC();
    v36 = v35;
    (*(v24 + 8))(v9, v33);
    v37 = sub_226AC4530(v34, v36, &v52);

    *(v22 + 24) = v37;
    v38 = v46;
    _os_log_impl(&dword_226AB4000, v46, v45, "Enabling %s background delivery of %s for: %s", v22, 0x20u);
    v39 = v47;
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v39, -1, -1);
    MEMORY[0x22AA8BEE0](v22, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }

  v40 = v49[49];
  v41 = v49[50];
  __swift_project_boxed_opaque_existential_1(v49 + 46, v40);
  return (*(v41 + 8))(a1, v50, v51, v40, v41);
}

uint64_t sub_226CD0360(uint64_t a1, uint64_t a2)
{
  v5 = sub_226D67F1C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F680 != -1)
  {
    swift_once();
  }

  v10 = sub_226D6E07C();
  __swift_project_value_buffer(v10, qword_28105F688);
  (*(v6 + 16))(v9, a2, v5);

  v11 = sub_226D6E05C();
  v12 = sub_226D6E9EC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v30 = a2;
    v14 = v13;
    v29 = swift_slowAlloc();
    v33 = v29;
    *v14 = 136315394;
    v15 = sub_226D66F6C();
    v16 = MEMORY[0x22AA8A6A0](a1, v15);
    v18 = sub_226AC4530(v16, v17, &v33);
    v31 = v2;
    v19 = v18;

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    sub_226CD0940(&qword_281062BC0, MEMORY[0x277CC7098]);
    v20 = sub_226D6F1CC();
    v22 = v21;
    (*(v6 + 8))(v9, v5);
    v23 = sub_226AC4530(v20, v22, &v33);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_226AB4000, v11, v12, "Disabling background delivery of %s for: %s", v14, 0x16u);
    v24 = v29;
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v24, -1, -1);
    v25 = v14;
    a2 = v30;
    MEMORY[0x22AA8BEE0](v25, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v26 = v32[49];
  v27 = v32[50];
  __swift_project_boxed_opaque_existential_1(v32 + 46, v26);
  return (*(v27 + 16))(a1, a2, v26, v27);
}

uint64_t sub_226CD0684(uint64_t a1)
{
  v3 = sub_226D67F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F680 != -1)
  {
    swift_once();
  }

  v8 = sub_226D6E07C();
  __swift_project_value_buffer(v8, qword_28105F688);
  v9 = *(v4 + 16);
  v24 = a1;
  v9(v7, a1, v3);
  v10 = sub_226D6E05C();
  v11 = sub_226D6E9EC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22[1] = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136315138;
    sub_226CD0940(&qword_281062BC0, MEMORY[0x277CC7098]);
    v15 = sub_226D6F1CC();
    v17 = v16;
    (*(v4 + 8))(v7, v3);
    v18 = sub_226AC4530(v15, v17, &v25);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_226AB4000, v10, v11, "Disabling background delivery for: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x22AA8BEE0](v14, -1, -1);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  v19 = v23[49];
  v20 = v23[50];
  __swift_project_boxed_opaque_existential_1(v23 + 46, v19);
  return (*(v20 + 24))(v24, v19, v20);
}

uint64_t sub_226CD0940(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226CD0988(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7180, &qword_226D74600);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v13 - v5;
  v7 = sub_226D66ECC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226AC40E8(a2, v14, &qword_27D7A70E0, &qword_226D741B0);
  if (!v15)
  {
    return sub_226AC47B0(v14, &qword_27D7A70E0, &qword_226D741B0);
  }

  __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_226D66EBC();
  sub_226D67DFC();
  sub_226D66EAC();
  sub_226AC47B0(v6, &qword_27D7A7180, &qword_226D74600);
  (*(v8 + 8))(v11, v7);
  sub_226D69AFC();
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  return __swift_destroy_boxed_opaque_existential_0Tm(v14);
}

uint64_t sub_226CD0B68(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_226CD0B88, 0, 0);
}

uint64_t sub_226CD0B88()
{
  v1 = v0[2];
  swift_getKeyPath();
  sub_226D67DEC();

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_226B6507C;
  v3 = v0[3];

  return sub_226C778C4();
}
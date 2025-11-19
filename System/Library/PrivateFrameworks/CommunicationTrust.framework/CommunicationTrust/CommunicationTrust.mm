uint64_t static BlockList.shared.getter()
{
  v1 = *sub_1B98CB6E0();

  return v1;
}

void *sub_1B9831110()
{
  type metadata accessor for BlockList();
  result = BlockList.__allocating_init()();
  qword_1EDBDB1D8 = result;
  return result;
}

uint64_t sub_1B9831184()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4FF8, &qword_1B98F8B20);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1B983120C()
{
  v7 = 0;
  v14 = v0;
  v13 = sub_1B98D1D9C();
  v11 = v13;
  v12 = BYTE2(v13);
  *(v0 + 16) = 0;
  *(v0 + 16) = 0;
  *(v0 + 20) = 0;
  *(v0 + 22) = 0;
  sub_1B985253C(&v11, v0 + 20, &unk_1F379B420);
  *(v0 + 23) = 0;
  v10 = 0;
  v3 = MEMORY[0x1E69E82E8];
  sub_1B985253C(&v10, v0 + 23, MEMORY[0x1E69E82E8]);
  *(v0 + 24) = 0;
  v9 = 0;
  sub_1B985253C(&v9, v0 + 24, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5E80, &qword_1B98FCA90);
  *(v4 + 32) = sub_1B98F360C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5E88, &unk_1B98FCA98);
  *(v4 + 40) = sub_1B98F360C();
  *(v4 + 48) = 0;
  v8 = -1;
  sub_1B985253C(&v8, v4 + 48, MEMORY[0x1E69E82F8]);
  v7 = -1;

  sub_1B987E980(&v7, sub_1B98DDB2C, v4, MEMORY[0x1E69E72F0], MEMORY[0x1E69E73E0], MEMORY[0x1E69E7668], MEMORY[0x1E69E7410], v5);

  if (v6)
  {
    v2 = 0;
  }

  else
  {
    v2 = v7 != 0;
  }

  if (v2)
  {
    atomic_store(v7, (v4 + 48));
  }

  return v4;
}

uint64_t type metadata accessor for os_unfair_lock_s()
{
  v4 = qword_1EDBDB4A8;
  if (!qword_1EDBDB4A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EDBDB4A8);
      return v1;
    }
  }

  return v4;
}

uint64_t BlockList.isHandleBlocked(_:)(uint64_t a1)
{
  v38 = a1;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v26 = 0;
  v41 = 0;
  v40 = 0;
  v27 = 0;
  v28 = sub_1B98F5078();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v1);
  v32 = &v11 - v31;
  v34 = (*(*(type metadata accessor for BlockedHandle() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v38, v2);
  v35 = &v11 - v34;
  v48 = &v11 - v34;
  v47 = v3;
  v46 = v4;
  v36 = *(v4 + 56);
  v37 = *(v4 + 64);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v39 = (*(v37 + 32))(v38, ObjectType);
  if (v39 == 2)
  {
    v6 = v26;
    swift_unknownObjectRelease();
    (*(v29 + 16))(v32, v38, v28);
    v17 = sub_1B98C5608();
    v7 = sub_1B98C5654();
    BlockedHandle.init(handle:normalizedValue:associatedContacts:allowedApps:)(v32, 0, 0, v17, v7, v35);
    v18 = v42;
    sub_1B98CB8A8(v33 + 16, v42);
    v19 = v43;
    v20 = v44;
    __swift_project_boxed_opaque_existential_1(v18, v43);
    v21 = (*(v20 + 24))(v35, v19);
    v22 = v6;
    if (v6)
    {
      v11 = v22;
      __swift_destroy_boxed_opaque_existential_1(v42);
      v10 = v11;
      v41 = v11;
      v45 = 0;

      v16 = 0;
    }

    else
    {
      v15 = v21;
      v45 = v21 & 1;
      __swift_destroy_boxed_opaque_existential_1(v42);
      v16 = v15;
    }

    v14 = v16;
    v13 = *(v33 + 56);
    v12 = *(v33 + 64);
    swift_unknownObjectRetain();
    v8 = swift_getObjectType();
    (*(v12 + 48))(v14 & 1, v35, v8);
    swift_unknownObjectRelease();
    sub_1B983A3AC(v35);
    v24 = v14;
  }

  else
  {
    v25 = v39;
    v23 = v39;
    v40 = v39 & 1;
    swift_unknownObjectRelease();
    v24 = v23;
  }

  return v24 & 1;
}

void *BlockList.init()()
{
  v3[5] = 0;
  v3[3] = type metadata accessor for CommunicationTrustClient();
  v3[4] = &off_1F37935B0;
  v3[0] = sub_1B984999C();
  sub_1B98CB914(v3, v2 + 2);
  type metadata accessor for BlockListCache();
  v0 = sub_1B98D1D60();
  result = v2;
  v2[7] = v0;
  v2[8] = &off_1F379B6A0;
  return result;
}

uint64_t sub_1B9831924()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EE8, &qword_1B98FCDC8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1B9831970()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4FF8, &qword_1B98F8B20);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1B98319BC()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5E98, &qword_1B98FCAB8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t BlockList.handles()()
{
  v34 = &unk_1B98FCA00;
  v46 = 0;
  v41 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5980, &qword_1B98FB410);
  v36 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v37 = v13 - v36;
  v46 = v2;
  v39 = *(v2 + 56);
  v38 = *(v2 + 64);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v45 = (*(v38 + 8))(ObjectType);
  v40 = BYTE2(v45);
  swift_unknownObjectRelease();
  if (v40)
  {
    v15 = *(v35 + 56);
    v14 = *(v35 + 64);
    swift_unknownObjectRetain();
    v11 = swift_getObjectType();
    v16 = (*(v14 + 64))(v11);
    swift_unknownObjectRelease();
    v25 = v16;
    v26 = v33;
    return v25;
  }

  v27 = v42;
  sub_1B98CB8A8(v35 + 16, v42);
  v29 = v43;
  v28 = v44;
  __swift_project_boxed_opaque_existential_1(v27, v43);
  v4 = v33;
  v5 = (*(v28 + 8))(v29);
  v30 = v4;
  v31 = v5;
  v32 = v4;
  if (!v4)
  {
    v24 = v31;
    v41 = v31;
    __swift_destroy_boxed_opaque_existential_1(v42);
    v21 = 0;
    v6 = sub_1B98F5988();
    (*(*(v6 - 8) + 56))(v37, 1);
    v19 = 7;
    v20 = swift_allocObject();
    v17 = v20 + 16;

    v18 = v35;
    swift_weakInit();

    sub_1B98F54D8();
    v7 = swift_allocObject();
    v8 = v24;
    v9 = v7;
    v10 = v20;
    v22 = v9;
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v10;
    v9[5] = v8;

    v23 = sub_1B98CE0E8(v21, v21, v37, v34, v22, MEMORY[0x1E69E7CA8] + 8);
    sub_1B98975AC(v37);

    v25 = v24;
    v26 = v30;
    return v25;
  }

  v13[1] = v32;
  __swift_destroy_boxed_opaque_existential_1(v42);
  return v13[2];
}

uint64_t sub_1B9831DD0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1B9831E20()
{
  v2 = *v0;
  v5 = sub_1B984A450();
  if (v1)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

unint64_t sub_1B9831E84()
{
  v2 = qword_1EDBDB1E8;
  if (!qword_1EDBDB1E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB1E8);
    return WitnessTable;
  }

  return v2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t type metadata accessor for BlockedHandle()
{
  v1 = qword_1EDBDB678;
  if (!qword_1EDBDB678)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B9831FDC()
{
  v4 = qword_1EDBDB4C8;
  if (!qword_1EDBDB4C8)
  {
    v3 = sub_1B98F5C38();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EDBDB4C8);
      return v1;
    }
  }

  return v4;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_1B98320C8()
{
  v5 = sub_1B98F5078();
  if (v0 <= 0x3F)
  {
    v5 = sub_1B9831FDC();
    if (v1 <= 0x3F)
    {
      v5 = sub_1B98CAAFC();
      if (v2 <= 0x3F)
      {
        v5 = sub_1B98CAB9C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v5;
}

unint64_t sub_1B983220C()
{
  v2 = qword_1EDBDB6A0;
  if (!qword_1EDBDB6A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB6A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B983229C()
{
  v2 = qword_1EDBDB698;
  if (!qword_1EDBDB698)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB698);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9832330()
{
  v2 = qword_1EDBDB4E8;
  if (!qword_1EDBDB4E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB4E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98323C4()
{
  v2 = qword_1EDBDB4F0;
  if (!qword_1EDBDB4F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB4F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9832468()
{
  v2 = type metadata accessor for BlockedHandle();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

unint64_t sub_1B9832500()
{
  v2 = qword_1EDBDB6D0;
  if (!qword_1EDBDB6D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB6D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9832590()
{
  v2 = qword_1EDBDB6C0;
  if (!qword_1EDBDB6C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB6C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for IsHandleBlocked()
{
  v1 = qword_1EDBDB560;
  if (!qword_1EDBDB560)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

__n128 sub_1B9832680(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for BlockedHandle();
  *(a2 + v3[5]) = *(a1 + v3[5]);
  *(a2 + v3[6]) = *(a1 + v3[6]);
  *(a2 + v3[7]) = *(a1 + v3[7]);
  result = *(a1 + v3[8]);
  *(a2 + v3[8]) = result;
  return result;
}

uint64_t sub_1B9832738(uint64_t a1)
{
  v44 = a1;
  v51 = sub_1B984AB84;
  v54 = sub_1B9853250;
  v56 = sub_1B9853240;
  v58 = sub_1B9853248;
  v61 = sub_1B985325C;
  v75 = 0;
  v74 = 0;
  v72 = 0;
  v39 = 0;
  v37 = (*(*(type metadata accessor for BlockedHandle() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v1);
  v38 = v21 - v37;
  IsHandleBlocked = type metadata accessor for IsHandleBlocked();
  v41 = (*(*(IsHandleBlocked - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39, v2);
  v42 = v21 - v41;
  v49 = sub_1B98F5138();
  v47 = *(v49 - 8);
  v48 = v49 - 8;
  v45 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v44, v3);
  v5 = v21 - v45;
  v46 = v21 - v45;
  v75 = v4;
  v74 = v6;
  v7 = sub_1B98F1B1C();
  (*(v47 + 16))(v5, v7, v49);
  v65 = sub_1B98F5118();
  v66 = sub_1B98F5BD8();
  v50 = 17;
  v53 = 7;
  v57 = swift_allocObject();
  *(v57 + 16) = 32;
  v59 = swift_allocObject();
  *(v59 + 16) = 8;
  v52 = 32;
  v8 = swift_allocObject();
  v55 = v8;
  *(v8 + 16) = v51;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  v10 = v55;
  v62 = v9;
  *(v9 + 16) = v54;
  *(v9 + 24) = v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v60 = sub_1B98F5F98();
  v63 = v11;

  v12 = v57;
  v13 = v63;
  *v63 = v56;
  v13[1] = v12;

  v14 = v59;
  v15 = v63;
  v63[2] = v58;
  v15[3] = v14;

  v16 = v62;
  v17 = v63;
  v63[4] = v61;
  v17[5] = v16;
  sub_1B9851B38();

  if (os_log_type_enabled(v65, v66))
  {
    v29 = sub_1B98F5C28();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v30 = sub_1B985263C(0);
    v31 = sub_1B985263C(1);
    v32 = &v71;
    v71 = v29;
    v33 = &v70;
    v70 = v30;
    v34 = &v69;
    v69 = v31;
    sub_1B9852690(2, &v71);
    sub_1B9852690(1, v32);
    v18 = v36;
    v67 = v56;
    v68 = v57;
    sub_1B98526A4(&v67, v32, v33, v34);
    v35 = v18;
    if (v18)
    {

      __break(1u);
    }

    else
    {
      v67 = v58;
      v68 = v59;
      sub_1B98526A4(&v67, &v71, &v70, &v69);
      v26 = 0;
      v67 = v61;
      v68 = v62;
      sub_1B98526A4(&v67, &v71, &v70, &v69);
      v25 = 0;
      _os_log_impl(&dword_1B982F000, v65, v66, "%s", v29, 0xCu);
      sub_1B985281C(v30);
      sub_1B985281C(v31);
      sub_1B98F5C08();

      v27 = v25;
    }
  }

  else
  {

    v27 = v36;
  }

  v22 = v27;
  MEMORY[0x1E69E5920](v65);
  (*(v47 + 8))(v46, v49);
  v21[1] = *(v43 + 16);

  sub_1B9833334(v44, v38);
  sub_1B985EE80(v38, v42);
  sub_1B9853268();
  v19 = v22;
  sub_1B98F5208();
  v23 = v19;
  v24 = v19;
  if (v19)
  {
    v21[0] = v24;
    sub_1B98532E8(v42);

    return (&vars0 - 208) & 1;
  }

  else
  {
    sub_1B98532E8(v42);

    v72 = v73 & 1;
    return v73 & 1;
  }
}

uint64_t sub_1B9832F34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9832F74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t type metadata accessor for UpdateServerTrust()
{
  v1 = qword_1EDBDB850;
  if (!qword_1EDBDB850)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B983307C()
{
  v2 = type metadata accessor for BlockedHandle();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

unint64_t sub_1B9833160()
{
  v2 = qword_1EDBDB4D8;
  if (!qword_1EDBDB4D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB4D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98331DC()
{
  v1 = sub_1B98F5138();
  __swift_allocate_value_buffer(v1, qword_1EDBDD4A0);
  __swift_project_value_buffer(v1, qword_1EDBDD4A0);
  sub_1B98F55E8();
  sub_1B98F55E8();
  return sub_1B98F5128();
}

uint64_t __swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v6 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = *(*(a1 - 8) + 64);
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return v6;
}

uint64_t sub_1B9833334(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 16))(a2, a1);
  v13 = type metadata accessor for BlockedHandle();
  v3 = (a1 + v13[5]);
  v6 = (a2 + v13[5]);
  *v6 = *v3;
  v7 = v3[1];
  sub_1B98F54D8();
  v6[1] = v7;
  v8 = v13[6];
  v9 = *(a1 + v8);
  sub_1B98F54D8();
  *(a2 + v8) = v9;
  v11 = v13[7];
  v12 = *(a1 + v11);
  sub_1B98F54D8();
  *(a2 + v11) = v12;
  v4 = v13[8];
  v15 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v16 = *(a1 + v4 + 8);
  sub_1B98F54D8();
  result = a2;
  *(v15 + 8) = v16;
  return result;
}

__n128 sub_1B98334F8(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

uint64_t sub_1B98335B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1B98F54D8();
  v14 = sub_1B98337BC(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_1B9833758(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v13[3] = MEMORY[0x1E69E6A18];
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_1B9833758(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return v11;
}

uint64_t sub_1B9833758(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_1B98337BC(uint64_t result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_1B98F5E08();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_1B9852954(v22, v17, v16);
        sub_1B98F5C58();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_1B9833C0C(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_1B98F5D68();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_1B98F5E08();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9833C0C(uint64_t a1, uint64_t a2)
{
  v7 = sub_1B9833E0C(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5098, &unk_1B98F8FA0);
  inited = swift_initStackObject();
  v3 = sub_1B9852AD0(inited, 1);
  *v4 = 0;
  sub_1B9852B1C();
  sub_1B9834644(v3);

  v8 = sub_1B9852B50(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_1B9833CC8(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5098, &unk_1B98F8FA0);
    v6 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v4 = _swift_stdlib_malloc_size(v6) - 32;
      v6[2] = a1;
      v6[3] = 2 * v4;
    }

    else
    {
      v6[2] = a1;
      v6[3] = 2 * v7;
    }

    return v6;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];

    return v3;
  }
}

uint64_t sub_1B9833E0C(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_1B98F5718();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_1B9852F2C();
  }

  v10 = sub_1B9833CC8(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_1B98F5E48();
    __break(1u);
    return sub_1B9852F2C();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_1B9852B68(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_1B98F5D68();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_1B9852B68(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_1B98F5D18();
  if (v2)
  {
LABEL_29:
    sub_1B98F5E08();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;
  sub_1B98F54D8();
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_1B98F5E08();
    __break(1u);
  }

  sub_1B9855BA4(v17);
  return v10;
}

void sub_1B9834644(uint64_t a1)
{
  v20 = sub_1B9852B50(a1);
  v2 = sub_1B9852B50(*v1);
  v21 = v2 + v20;
  if (__OFADD__(v2, v20))
  {
    goto LABEL_31;
  }

  v16 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v21 > *(*v19 + 24) >> 1)
  {
    if (*(*v19 + 16) < v21)
    {
      v15 = v21;
    }

    else
    {
      v15 = *(*v19 + 16);
    }

    v14 = *v19;
    sub_1B98F54D8();
    v4 = sub_1B9852F68(isUniquelyReferenced_nonNull_native, v15, 1, v14);
    v5 = *v19;
    *v19 = v4;
  }

  v6 = *(*v19 + 16);
  v12 = (*v19 + 32 + v6);
  v7 = *(*v19 + 24) >> 1;
  v13 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    goto LABEL_32;
  }

  if (v13 < 0)
  {
LABEL_30:
    sub_1B98F5E48();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_1B98530D4(a1))
  {
LABEL_21:

    if (v20 <= 0)
    {
      goto LABEL_28;
    }

    sub_1B98F5E08();
    __break(1u);
    goto LABEL_30;
  }

  if (v13 < v20)
  {
    sub_1B98F5E08();
    __break(1u);
    goto LABEL_21;
  }

  sub_1B9852B68((a1 + 32), v20, v12);
  sub_1B98F54D8();

  swift_unknownObjectRelease();
  if (v20 <= 0)
  {
    goto LABEL_28;
  }

  v9 = *(*v19 + 16);
  v11 = v9 + v20;
  if (!__OFADD__(v9, v20))
  {
    *(*v19 + 16) = v11;
LABEL_28:
    sub_1B9852F5C();
    return;
  }

LABEL_33:
  __break(1u);
}

unint64_t sub_1B9834A40()
{
  v2 = qword_1EDBDAF10;
  if (!qword_1EDBDAF10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDAF10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9834ABC(uint64_t a1)
{
  v103 = a1;
  v145 = 0;
  v144 = 0;
  v143 = 0;
  v139 = 0;
  v95 = 0;
  v102 = sub_1B98F5138();
  v96 = v102;
  v97 = *(v102 - 8);
  v101 = v97;
  v98 = v97;
  v99 = *(v97 + 64);
  v1 = v45 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v1;
  v145 = MEMORY[0x1EEE9AC00](v103, v102);
  v144 = v2;
  v3 = sub_1B98F1E6C();
  (*(v101 + 16))(v1, v3, v102);

  sub_1B98F54D8();
  v118 = 7;
  v104 = swift_allocObject();
  *(v104 + 16) = v103;

  v112 = 32;
  v117 = 32;
  v4 = swift_allocObject();
  v5 = v104;
  v119 = v4;
  *(v4 + 16) = sub_1B988D5DC;
  *(v4 + 24) = v5;

  v6 = sub_1B98F5118();
  v7 = v105;
  v132 = v6;
  v106 = v6;
  v131 = sub_1B98F5BD8();
  v107 = v131;
  v113 = 17;
  v122 = swift_allocObject();
  v108 = v122;
  *(v122 + 16) = v112;
  v123 = swift_allocObject();
  v109 = v123;
  v115 = 8;
  *(v123 + 16) = 8;
  v8 = swift_allocObject();
  v110 = v8;
  *(v8 + 16) = sub_1B988D5D4;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  v10 = v110;
  v124 = v9;
  v111 = v9;
  *(v9 + 16) = sub_1B988D65C;
  *(v9 + 24) = v10;
  v125 = swift_allocObject();
  v114 = v125;
  *(v125 + 16) = v112;
  v126 = swift_allocObject();
  v116 = v126;
  *(v126 + 16) = v115;
  v11 = swift_allocObject();
  v12 = v119;
  v120 = v11;
  *(v11 + 16) = sub_1B988D5E4;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v120;
  v129 = v13;
  v121 = v13;
  *(v13 + 16) = sub_1B988D684;
  *(v13 + 24) = v14;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v127 = sub_1B98F5F98();
  v128 = v15;

  v16 = v122;
  v17 = v128;
  *v128 = sub_1B988D64C;
  v17[1] = v16;

  v18 = v123;
  v19 = v128;
  v128[2] = sub_1B988D654;
  v19[3] = v18;

  v20 = v124;
  v21 = v128;
  v128[4] = sub_1B988D668;
  v21[5] = v20;

  v22 = v125;
  v23 = v128;
  v128[6] = sub_1B988D674;
  v23[7] = v22;

  v24 = v126;
  v25 = v128;
  v128[8] = sub_1B988D67C;
  v25[9] = v24;

  v26 = v128;
  v27 = v129;
  v128[10] = sub_1B988D690;
  v26[11] = v27;
  sub_1B9851B38();

  if (os_log_type_enabled(v132, v131))
  {
    v28 = v95;
    v88 = sub_1B98F5C28();
    v85 = v88;
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v89 = sub_1B985263C(0);
    v87 = v89;
    v91 = 2;
    v90 = sub_1B985263C(2);
    v137[0] = v88;
    v136 = v89;
    v135 = v90;
    v92 = v137;
    sub_1B9852690(v91, v137);
    sub_1B9852690(v91, v92);
    v133 = sub_1B988D64C;
    v134 = v108;
    sub_1B98526A4(&v133, v92, &v136, &v135);
    v93 = v28;
    v94 = v28;
    if (v28)
    {
      v83 = 0;

      __break(1u);
    }

    else
    {
      v133 = sub_1B988D654;
      v134 = v109;
      sub_1B98526A4(&v133, v137, &v136, &v135);
      v81 = 0;
      v82 = 0;
      v133 = sub_1B988D668;
      v134 = v111;
      sub_1B98526A4(&v133, v137, &v136, &v135);
      v79 = 0;
      v80 = 0;
      v133 = sub_1B988D674;
      v134 = v114;
      sub_1B98526A4(&v133, v137, &v136, &v135);
      v77 = 0;
      v78 = 0;
      v133 = sub_1B988D67C;
      v134 = v116;
      sub_1B98526A4(&v133, v137, &v136, &v135);
      v75 = 0;
      v76 = 0;
      v133 = sub_1B988D690;
      v134 = v121;
      sub_1B98526A4(&v133, v137, &v136, &v135);
      v73 = 0;
      v74 = 0;
      _os_log_impl(&dword_1B982F000, v106, v107, "%s: Querying contacts for %s", v85, 0x16u);
      sub_1B985281C(v87);
      sub_1B985281C(v90);
      sub_1B98F5C08();

      v84 = v73;
    }
  }

  else
  {
    v29 = v95;

    v84 = v29;
  }

  v30 = v84;

  (*(v98 + 8))(v100, v96);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5CF0, &unk_1B98FB210);
  v51 = sub_1B98F5F98();
  v49 = v31;
  v58 = *MEMORY[0x1E695C258];
  v32 = v58;
  sub_1B98F5658();
  v57 = v33;
  *v49 = sub_1B98F5648();
  v56 = *MEMORY[0x1E695C208];
  v34 = v56;
  sub_1B98F5658();
  v55 = v35;
  v49[1] = sub_1B98F5648();
  v54 = *MEMORY[0x1E695C330];
  v36 = v54;
  sub_1B98F5658();
  v52 = v37;
  v38 = sub_1B98F5648();
  v39 = v51;
  v49[2] = v38;
  sub_1B9851B38();
  v59 = v39;
  v53 = v39;

  v143 = v59;
  v62 = v140;
  sub_1B988BE04(v105 + 16, v140);
  v60 = v141;
  v61 = v142;
  __swift_project_boxed_opaque_existential_1(v62, v141);
  v67 = (*(v61 + 8))(v103, v59, v60);
  v63 = v67;
  v139 = v67;
  __swift_destroy_boxed_opaque_existential_1(v62);
  sub_1B98F54D8();
  v64 = v45;
  MEMORY[0x1EEE9AC00](v45, v40);
  v66 = &v45[-4];
  v45[-2] = sub_1B988D23C;
  v45[-1] = 0;
  v68 = type metadata accessor for BlockedHandle();
  v65 = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5920, &qword_1B98FB180);
  v70 = sub_1B9853574();
  v41 = sub_1B98F5528();
  v71 = v30;
  v72 = v41;
  if (v30)
  {
    __break(1u);
    result = 0;
    __break(1u);
  }

  else
  {
    v138 = v72;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5810, &unk_1B98FB220);
    v42 = sub_1B988D6CC();
    v48 = sub_1B985D064(sub_1B988D2EC, 0, v47, v65, MEMORY[0x1E69E73E0], v42, MEMORY[0x1E69E7410], v43);
    v45[0] = v48;
    sub_1B988AED4(&v138);
    v137[1] = v45[0];
    v45[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55C8, &qword_1B98FAAC0);
    sub_1B9871820();
    v46 = sub_1B98F5AE8();

    return v46;
  }

  return result;
}

uint64_t sub_1B98359D8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B9835A18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9835AB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9835AF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9835B88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9835BC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9835C08()
{
  v13 = v0;
  sub_1B989FF34(v0 + 16, v10);
  v4 = v11;
  v3 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v9 = (*(v3 + 16))(v4);
  __swift_destroy_boxed_opaque_existential_1(v10);
  v7 = *(v5 + 56);
  v6 = *(v5 + 64);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  (*(v6 + 8))(v9, ObjectType);
  swift_unknownObjectRelease();
  type metadata accessor for BlockedHandle();
  sub_1B9853574();
  v8 = sub_1B98F5A28();

  return v8;
}

uint64_t *BlockList.contacts()()
{
  v3 = sub_1B98CD0A8();
  if (v0)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1B9835D90()
{
  v2 = qword_1EDBDB1E0;
  if (!qword_1EDBDB1E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB1E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9835E5C()
{
  v2 = qword_1EDBDAC78;
  if (!qword_1EDBDAC78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDAC78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9835ED8()
{
  v2 = qword_1EDBDB4E0;
  if (!qword_1EDBDB4E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB4E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9835F6C()
{
  v2 = qword_1EDBDB7A8;
  if (!qword_1EDBDB7A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB7A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9836000()
{
  v2 = qword_1EDBDB7B0;
  if (!qword_1EDBDB7B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB7B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9836094()
{
  v2 = qword_1EDBDB6D8;
  if (!qword_1EDBDB6D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB6D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9836128()
{
  v2 = qword_1EDBDB6E0;
  if (!qword_1EDBDB6E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB6E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98361BC()
{
  v2 = qword_1EDBDB5C8;
  if (!qword_1EDBDB5C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB5C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9836250()
{
  v2 = qword_1EDBDB5D0;
  if (!qword_1EDBDB5D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB5D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9836338()
{
  v2 = qword_1EDBDB1B0;
  if (!qword_1EDBDB1B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EDBDB1B0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B983641C()
{
  v2 = qword_1EDBDB7B8;
  if (!qword_1EDBDB7B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB7B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98364B0(uint64_t a1)
{
  v20 = 0;
  v19 = 0;
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5CF0, &unk_1B98FB210);
  v9 = sub_1B98F5F98();
  v8 = v2;
  v12 = *MEMORY[0x1E695C258];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695C258], v2, v3);
  sub_1B98F5658();
  *v8 = sub_1B98F5648();
  v11 = *MEMORY[0x1E695C208];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695C208], v8, v4);
  sub_1B98F5658();
  v8[1] = sub_1B98F5648();
  v10 = *MEMORY[0x1E695C330];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695C330], v8, v5);
  sub_1B98F5658();
  v8[2] = sub_1B98F5648();
  sub_1B9851B38();

  MEMORY[0x1E69E5920](v10);

  MEMORY[0x1E69E5920](v11);

  MEMORY[0x1E69E5920](v12);
  v19 = v9;
  sub_1B988BE04(v1 + 16, v16);
  v13 = v17;
  v14 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  (*(v14 + 8))(a1, v9, v13);
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5810, &unk_1B98FB220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5920, &qword_1B98FB180);
  sub_1B988D754();
  sub_1B988D7DC();
  sub_1B98F57C8();
  sub_1B9836338();
  sub_1B9837150();
  v7 = sub_1B98F5AE8();

  return v7;
}

uint64_t sub_1B9836778(uint64_t a1, uint64_t a2)
{
  v88 = a1;
  v82 = a2;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  __len = 40;
  __c = 0;
  memset(__b, 0, sizeof(__b));
  v119 = 0;
  v117 = 0;
  memset(__dst, 0, sizeof(__dst));
  v112 = 0;
  v113 = 0;
  v109 = 0;
  v108[0] = 0;
  v108[1] = 0;
  v106 = 0;
  v103 = 0;
  v102[0] = 0;
  v102[1] = 0;
  v97 = 0;
  v98 = 0;
  v96 = 0;
  v87 = type metadata accessor for BlockedHandle();
  v74 = *(v87 - 8);
  v75 = v87 - 8;
  v76 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v87, v3);
  v77 = v18 - v76;
  v78 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18 - v76, v5);
  v79 = v18 - v78;
  v80 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18 - v78, v7);
  v81 = v18 - v80;
  v125 = v18 - v80;
  v83 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v88, v82);
  v84 = v18 - v83;
  v85 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v86 = v18 - v85;
  v124 = v11;
  v123 = v12;
  v122 = v2;
  v89 = sub_1B9853574();
  if (sub_1B98F5AA8())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57C0, &qword_1B98FB178);
    v18[1] = sub_1B98F5F98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5920, &qword_1B98FB180);
    return sub_1B98F54A8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57D0, &qword_1B98FB188);
    v69 = sub_1B98F5F98();
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55C8, &qword_1B98FAAC0);
    v121 = sub_1B98F54A8();
    sub_1B98F54D8();
    v71 = &v126;
    sub_1B98F5A58();
    memcpy(__b, v71, sizeof(__b));
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
      sub_1B98F5AB8();
      v65 = *(v74 + 48);
      v66 = (v74 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      v13 = v65(v86, 1, v87);
      v67 = v65;
      v68 = v66;
      if (v13 == 1)
      {
        break;
      }

      sub_1B9832680(v86, v81);
      v63 = sub_1B988AC1C(v81);
      v103 = v63;
      sub_1B98F54D8();
      v101 = v63;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5268, &qword_1B98FAC20);
      sub_1B988AFE0();
      sub_1B98F5B88();
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5828, &qword_1B98FB1A0);
        sub_1B98F5DE8();
        v61 = v99;
        v62 = v100;
        if (!v100)
        {
          break;
        }

        v59 = v61;
        v60 = v62;
        v56 = v62;
        v55 = v61;
        v97 = v61;
        v98 = v62;
        sub_1B98F54D8();
        v57 = v94;
        v94[0] = v55;
        v94[1] = v56;
        sub_1B98F55B8();
        sub_1B9868BFC(v57);
        v58 = v95;
        if (v95)
        {
          v54 = v58;
          v53 = &v96;
          v96 = v58;
          sub_1B9833334(v81, v79);
          sub_1B98F5908();
          sub_1B98F54D8();
          v50 = v96;
          sub_1B98F54D8();
          v52 = &v91;
          v91 = v50;
          v51 = v90;
          v90[0] = v55;
          v90[1] = v56;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5830, &qword_1B98FB1A8);
          sub_1B98F55C8();
          sub_1B988B094(v53);
        }

        else
        {
          sub_1B98F54D8();
          v47 = sub_1B98F5F98();
          sub_1B9833334(v81, v14);
          v15 = v47;
          sub_1B9851B38();
          v49 = &v93;
          v93 = v15;
          v48 = v92;
          v92[0] = v55;
          v92[1] = v56;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5830, &qword_1B98FB1A8);
          sub_1B98F55C8();
        }
      }

      sub_1B988B068(v102);

      sub_1B983A3AC(v81);
    }

    v34 = v68;
    v35 = v67;
    sub_1B9871430(__b);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57C0, &qword_1B98FB178);
    v36 = sub_1B98F5F98();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5920, &qword_1B98FB180);
    v119 = sub_1B98F54A8();
    v37 = v121;
    sub_1B98F54D8();
    v43 = MEMORY[0x1E69E6158];
    v45 = MEMORY[0x1E69E6168];
    v38 = sub_1B98F54D8();

    v40 = &v118;
    v118 = v38;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E8, &qword_1B98FB190);
    sub_1B988AB94();
    v41 = sub_1B98F5938();
    v42 = sub_1B983B410(v41, v82);

    v117 = v42;
    v16 = sub_1B98F54D8();
    v46 = &v127;
    MEMORY[0x1BFADD440](v16, v43, v44, v45);
    memcpy(__dst, v46, sizeof(__dst));
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57F8, &qword_1B98FB198);
      sub_1B98F54C8();
      v32 = v114;
      v33 = v115;
      if (!v115)
      {
        break;
      }

      v30 = v32;
      v31 = v33;
      v27 = v33;
      v26 = v32;
      v112 = v32;
      v113 = v33;
      sub_1B98F54D8();
      v28 = v110;
      v110[0] = v26;
      v110[1] = v27;
      sub_1B98F55B8();
      sub_1B9868BFC(v28);
      v29 = v111;
      if (v111)
      {
        v25 = v29;
        v24 = v29;
        v109 = v29;
        sub_1B98F54D8();
        v107 = v24;
        sub_1B988AF2C();
        sub_1B98F5B88();
        while (1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5808, &qword_1B98FD3C0);
          sub_1B98F5DE8();
          if (v35(v84, 1, v87) == 1)
          {
            break;
          }

          v106 = v79;
          sub_1B9832680(v84, v79);
          sub_1B9833334(v79, v77);
          sub_1B98F54D8();
          v22 = v105;
          v105[0] = v26;
          v105[1] = v27;
          sub_1B98F55B8();
          sub_1B9868BFC(v22);
          v23 = &v104;
          v104 = v105[2];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5810, &unk_1B98FB220);
          sub_1B98F55C8();
          sub_1B983A3AC(v79);
        }

        sub_1B988AFB4(v108);
      }

      else
      {
      }
    }

    sub_1B988AE50(__dst);
    v19 = &v119;
    v20 = v119;
    sub_1B98F54D8();

    sub_1B988AED4(v19);
    sub_1B988AF00(&v121);
    return v20;
  }
}

unint64_t sub_1B9837150()
{
  v2 = qword_1EDBDAC00;
  if (!qword_1EDBDAC00)
  {
    sub_1B9836338();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDAC00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98371D0(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

unint64_t sub_1B983724C()
{
  v2 = qword_1EDBDB7C0[0];
  if (!qword_1EDBDB7C0[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EDBDB7C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98372F8()
{
  v2 = qword_1EDBDB4F8;
  if (!qword_1EDBDB4F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB4F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9837374()
{
  v2 = qword_1EDBDB500[0];
  if (!qword_1EDBDB500[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EDBDB500);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9837420()
{
  v3 = sub_1B98F5148();
  __swift_allocate_value_buffer(v3, qword_1EDBDD4D0);
  v4 = __swift_project_value_buffer(v3, qword_1EDBDD4D0);
  *v4 = sub_1B98F55E8();
  v4[1] = v0;
  v1 = *MEMORY[0x1E69937B0];
  return (*(*(v3 - 8) + 104))();
}

unint64_t sub_1B983759C()
{
  v2 = qword_1EDBDAF00;
  if (!qword_1EDBDAF00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDAF00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9837648()
{
  v2 = qword_1EDBDB5B0;
  if (!qword_1EDBDB5B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB5B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98376C4()
{
  v2 = qword_1EDBDAF08;
  if (!qword_1EDBDAF08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDAF08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9837758()
{
  v2 = qword_1EDBDB5B8;
  if (!qword_1EDBDB5B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB5B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98377D4()
{
  v2 = qword_1EDBDB5C0;
  if (!qword_1EDBDB5C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB5C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t BlockedHandle.encode(to:)(uint64_t a1)
{
  v41 = a1;
  v66 = 0;
  v65 = 0;
  v53 = sub_1B98F5078();
  v48 = *(v53 - 8);
  v49 = v53 - 8;
  v40 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v53, v2);
  v55 = v14 - v40;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5D40, &qword_1B98FC1B8);
  v42 = *(v52 - 8);
  v43 = v52 - 8;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v41, v3);
  v47 = v14 - v44;
  v66 = v4;
  v65 = v1;
  v45 = v4[3];
  v46 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v45);
  sub_1B9838030();
  sub_1B98F6078();
  (*(v48 + 16))(v55, v50, v53);
  v51 = &v64;
  v64 = 0;
  sub_1B98C93C0();
  v5 = v54;
  sub_1B98F5F28();
  v56 = v5;
  v57 = v5;
  if (v5)
  {
    v17 = v57;
    (*(v48 + 8))(v55, v53);
    result = (*(v42 + 8))(v47, v52);
    v18 = v17;
  }

  else
  {
    (*(v48 + 8))(v55, v53);
    v6 = type metadata accessor for BlockedHandle();
    v7 = v56;
    v35 = v6;
    v8 = (v50 + *(v6 + 20));
    v36 = *v8;
    v37 = v8[1];
    sub_1B98F54D8();
    v63 = 1;
    sub_1B98F5EE8();
    v38 = v7;
    v39 = v7;
    if (v7)
    {
      v16 = v39;

      result = (*(v42 + 8))(v47, v52);
      v18 = v16;
    }

    else
    {

      v29 = *(v50 + v35[6]);
      sub_1B98F54D8();
      v32 = &v62;
      v62 = v29;
      v30 = &v61;
      v61 = 2;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5D50, &unk_1B98FC1C0);
      sub_1B98C9440();
      v9 = v38;
      sub_1B98F5F28();
      v33 = v9;
      v34 = v9;
      if (v9)
      {
        v15 = v34;
        sub_1B98BF3E4(&v62);
        result = (*(v42 + 8))(v47, v52);
        v18 = v15;
      }

      else
      {
        sub_1B98BF3E4(&v62);
        v23 = *(v50 + v35[7]);
        sub_1B98F54D8();
        v26 = &v60;
        v60 = v23;
        v24 = &v59;
        v59 = 3;
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5B70, &qword_1B98FBE40);
        sub_1B98C94D8();
        v10 = v33;
        sub_1B98F5F28();
        v27 = v10;
        v28 = v10;
        if (v10)
        {
          v14[1] = v28;
          sub_1B98BF51C(&v60);
          return (*(v42 + 8))(v47, v52);
        }

        else
        {
          sub_1B98BF51C(&v60);
          v11 = v27;
          v12 = (v50 + v35[8]);
          v19 = *v12;
          v20 = v12[1];
          sub_1B98F54D8();
          v58 = 4;
          sub_1B98F5EE8();
          v21 = v11;
          v22 = v11;
          if (v11)
          {
            v14[0] = v22;
          }

          return (*(v42 + 8))(v47, v52);
        }
      }
    }
  }

  return result;
}

unint64_t sub_1B9837F20()
{
  v2 = qword_1EDBDB6A8;
  if (!qword_1EDBDB6A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB6A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9837FB4()
{
  v2 = qword_1EDBDB6B0;
  if (!qword_1EDBDB6B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB6B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9838030()
{
  v2 = qword_1EDBDB6B8;
  if (!qword_1EDBDB6B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB6B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98380C4()
{
  v2 = qword_1EDBDB490;
  if (!qword_1EDBDB490)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB490);
    return WitnessTable;
  }

  return v2;
}

_BYTE *sub_1B9838154(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

_BYTE *sub_1B983831C(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_1B98384E4()
{
  v2 = qword_1EDBDB498;
  if (!qword_1EDBDB498)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB498);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9838560(uint64_t a1)
{
  v28 = a1;
  v39 = 0;
  v48 = 0;
  v47 = 0;
  v36 = sub_1B98F5138();
  v29 = v36;
  v30 = *(v36 - 8);
  v35 = v30;
  v31 = v30;
  v32 = *(v30 + 64);
  v1 = &v8 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v1;
  v48 = MEMORY[0x1EEE9AC00](v28, v36);
  v34 = *(v2 + 8);
  v47 = v2;
  v3 = sub_1B98F1E00();
  (*(v35 + 16))(v1, v3, v36);
  v41 = sub_1B98F5118();
  v37 = v41;
  v40 = sub_1B98F5BD8();
  v38 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v42 = sub_1B98F5F98();
  if (os_log_type_enabled(v41, v40))
  {
    v25 = v27;
    v17 = sub_1B98F5C28();
    v13 = v17;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v15 = 0;
    v18 = sub_1B985263C(0);
    v16 = v18;
    v19 = sub_1B985263C(v15);
    v46 = v17;
    v45 = v18;
    v44 = v19;
    v20 = 0;
    v21 = &v46;
    sub_1B9852690(0, &v46);
    sub_1B9852690(v20, v21);
    v43 = v42;
    v22 = &v8;
    MEMORY[0x1EEE9AC00](&v8, v4);
    v23 = &v8 - 6;
    *(&v8 - 4) = v5;
    *(&v8 - 3) = &v45;
    *(&v8 - 2) = &v44;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
    sub_1B9852720();
    v6 = v25;
    sub_1B98F57D8();
    v26 = v6;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1B982F000, v37, v38, "Handling incoming FetchHandlesRequest message", v13, 2u);
      v11 = 0;
      sub_1B985281C(v16);
      sub_1B985281C(v19);
      sub_1B98F5C08();

      v12 = v26;
    }
  }

  else
  {

    v12 = v27;
  }

  v10 = v12;

  (*(v31 + 8))(v33, v29);

  v9 = sub_1B9835C08();

  return v9;
}

uint64_t sub_1B9838970(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B9838AC0(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_1B9838D38(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFB)
  {
    v5 = ((a3 + 4) >> 8) + 1;
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

  if (a2 > 0xFB)
  {
    v4 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_1B9838F5C(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_1B98F5078();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B983904C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFB)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 4) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 251;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 5;
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

uint64_t sub_1B9839264(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_1B98F5078();
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 24)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 24));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_1B9839398@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v24 = a1;
  v33 = 0;
  v19 = 0;
  v16 = type metadata accessor for BlockedHandle();
  v17 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16, v2);
  v18 = v10 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5480, &qword_1B98FA9B0);
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19, v3);
  v27 = v10 - v23;
  v25 = (*(*(type metadata accessor for IsHandleBlocked() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v24, v4);
  v26 = v10 - v25;
  v33 = v5;
  v29 = v5[3];
  v30 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v29);
  sub_1B98377D4();
  v6 = v28;
  sub_1B98F6068();
  v31 = v6;
  v32 = v6;
  if (v6)
  {
    v12 = v32;
  }

  else
  {
    sub_1B9868250();
    v7 = v31;
    sub_1B98F5EB8();
    v13 = v7;
    v14 = v7;
    if (!v7)
    {
      v8 = sub_1B9832680(v18, v26);
      (*(v21 + 8))(v27, v20, v8);
      sub_1B9868C28(v26, v15);
      __swift_destroy_boxed_opaque_existential_1(v24);
      return sub_1B98532E8(v26);
    }

    v11 = v14;
    (*(v21 + 8))(v27, v20);
    v12 = v11;
  }

  v10[1] = v12;
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1B98396B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1B983988C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t BlockedHandle.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v63 = a1;
  v80 = 0;
  v58 = 0;
  v53 = sub_1B98F5078();
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v53, v2);
  v57 = v25 - v56;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5D68, &qword_1B98FC1D0);
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v58, v3);
  v67 = v25 - v62;
  v65 = type metadata accessor for BlockedHandle();
  v64 = (*(*(v65 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v63, v4);
  v6 = v65;
  v7 = v25 - v64;
  v66 = v25 - v64;
  v80 = v5;
  v8 = (v25 + v65[5] - v64);
  *v8 = 0;
  v8[1] = 0;
  v9 = &v7[v6[8]];
  *v9 = 0;
  *(v9 + 1) = 0;
  v69 = v5[3];
  v70 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v69);
  sub_1B9838030();
  v10 = v68;
  sub_1B98F6068();
  v71 = v10;
  v72 = v10;
  if (v10)
  {
    v31 = v72;
    v32 = 18;
  }

  else
  {
    v49 = &v79;
    v79 = 0;
    sub_1B98C9A04();
    v11 = v71;
    sub_1B98F5EB8();
    v50 = v11;
    v51 = v11;
    if (v11)
    {
      v30 = v51;
      (*(v60 + 8))(v67, v59);
      v31 = v30;
      v32 = 18;
    }

    else
    {
      (*(v54 + 32))(v66, v57, v53);
      v12 = v50;
      v78 = 1;
      v13 = sub_1B98F5E78();
      v45 = v12;
      v46 = v13;
      v47 = v14;
      v48 = v12;
      if (v12)
      {
        v29 = v48;
        (*(v60 + 8))(v67, v59);
        v31 = v29;
        v32 = 19;
      }

      else
      {
        v15 = v47;
        v16 = (v66 + v65[5]);
        v17 = v16[1];
        *v16 = v46;
        v16[1] = v15;

        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5D50, &unk_1B98FC1C0);
        v41 = &v76;
        v76 = 2;
        sub_1B98C9A84();
        v18 = v45;
        sub_1B98F5EB8();
        v43 = v18;
        v44 = v18;
        if (v18)
        {
          v28 = v44;
          (*(v60 + 8))(v67, v59);
          v31 = v28;
          v32 = 19;
        }

        else
        {
          *(v66 + v65[6]) = v77;
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5B70, &qword_1B98FBE40);
          v37 = &v74;
          v74 = 3;
          sub_1B98C9B98();
          v19 = v43;
          sub_1B98F5EB8();
          v39 = v19;
          v40 = v19;
          if (!v19)
          {
            *(v66 + v65[7]) = v75;
            v73 = 4;
            v20 = sub_1B98F5E78();
            v33 = 0;
            v34 = v20;
            v35 = v21;
            v36 = 0;
            v22 = (v66 + v65[8]);
            v23 = v22[1];
            *v22 = v34;
            v22[1] = v21;

            (*(v60 + 8))(v67, v59);
            sub_1B9833334(v66, v52);
            __swift_destroy_boxed_opaque_existential_1(v63);
            return sub_1B983A3AC(v66);
          }

          v27 = v40;
          (*(v60 + 8))(v67, v59);
          v31 = v27;
          v32 = 23;
        }
      }
    }
  }

  v26 = v32;
  v25[1] = v31;
  __swift_destroy_boxed_opaque_existential_1(v63);
  if (v26)
  {
    (*(v54 + 8))(v66, v53);
  }

  sub_1B985EE4C(v66 + v65[5]);
  if ((v26 & 4) != 0)
  {
    sub_1B98BF3E4((v66 + v65[6]));
  }

  if ((v26 & 8) != 0)
  {
    sub_1B98BF51C((v66 + v65[7]));
  }

  return sub_1B985EE4C(v66 + v65[8]);
}

unint64_t sub_1B983A2A4()
{
  v2 = qword_1EDBDB220;
  if (!qword_1EDBDB220)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB220);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B983A334()
{
  v2 = qword_1EDBDB228;
  if (!qword_1EDBDB228)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB228);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B983A3AC(uint64_t a1)
{
  v1 = sub_1B98F5078();
  (*(*(v1 - 8) + 8))(a1);
  v7 = type metadata accessor for BlockedHandle();
  v2 = *(a1 + v7[5] + 8);

  v3 = *(a1 + v7[6]);

  v4 = *(a1 + v7[7]);

  v5 = *(a1 + v7[8] + 8);

  return a1;
}

unint64_t sub_1B983A4C8()
{
  v2 = qword_1EDBDAC68;
  if (!qword_1EDBDAC68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDAC68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B983A544(uint64_t a1)
{
  v35 = a1;
  v46 = 0;
  v55 = 0;
  v54 = 0;
  v32 = 0;
  v1 = *(*(type metadata accessor for BlockedHandle() - 8) + 64);
  MEMORY[0x1EEE9AC00](0, v2);
  v33 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = *(*(type metadata accessor for IsHandleBlocked() - 8) + 64);
  MEMORY[0x1EEE9AC00](v46, v5);
  v34 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = sub_1B98F5138();
  v36 = v43;
  v37 = *(v43 - 8);
  v42 = v37;
  v38 = v37;
  v39 = *(v37 + 64);
  v7 = MEMORY[0x1EEE9AC00](v35, v43);
  v8 = &v15[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = v8;
  v55 = v7;
  v41 = *(v9 + 8);
  v54 = v9;
  v10 = sub_1B98F1E00();
  (*(v42 + 16))(v8, v10, v43);
  v48 = sub_1B98F5118();
  v44 = v48;
  v47 = sub_1B98F5BD8();
  v45 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v49 = sub_1B98F5F98();
  if (os_log_type_enabled(v48, v47))
  {
    v11 = v32;
    v23 = sub_1B98F5C28();
    v19 = v23;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v21 = 0;
    v24 = sub_1B985263C(0);
    v22 = v24;
    v25 = sub_1B985263C(v21);
    v53 = v23;
    v52 = v24;
    v51 = v25;
    v26 = 0;
    v27 = &v53;
    sub_1B9852690(0, &v53);
    sub_1B9852690(v26, v27);
    v50 = v49;
    v28 = v15;
    MEMORY[0x1EEE9AC00](v15, v12);
    v29 = &v15[-48];
    *&v15[-32] = v13;
    *&v15[-24] = &v52;
    *&v15[-16] = &v51;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
    sub_1B9852720();
    sub_1B98F57D8();
    v31 = v11;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1B982F000, v44, v45, "Handling incoming IsHandleBlocked message", v19, 2u);
      v17 = 0;
      sub_1B985281C(v22);
      sub_1B985281C(v25);
      sub_1B98F5C08();

      v18 = v31;
    }
  }

  else
  {

    v18 = v32;
  }

  (*(v38 + 8))(v40, v36);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5278, &qword_1B98F8FE0);
  sub_1B98F5158();
  sub_1B9833334(v34, v33);
  sub_1B98532E8(v34);
  v16 = sub_1B9897F7C(v33);
  sub_1B983A3AC(v33);

  return v16 & 1;
}

uint64_t sub_1B983AA64(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B985872C(a1);
}

unint64_t sub_1B983AA70()
{
  v2 = qword_1EDBDAC70;
  if (!qword_1EDBDAC70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDAC70);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B983AAEC(uint64_t a1)
{
  v8 = type metadata accessor for BlockedHandle();
  if (!(*(*(v8 - 1) + 48))(a1, 1))
  {
    v1 = sub_1B98F5078();
    (*(*(v1 - 8) + 8))(a1);
    v2 = *(a1 + v8[5] + 8);

    v3 = *(a1 + v8[6]);

    v4 = *(a1 + v8[7]);

    v5 = *(a1 + v8[8] + 8);
  }

  return a1;
}

uint64_t sub_1B983ABEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a1;
  v60 = a2;
  v62 = 0;
  v85 = 0;
  v84 = 0;
  v61 = 0;
  v82 = 0;
  v80 = 0;
  v77 = 0uLL;
  v63 = sub_1B98F5018();
  v64 = *(v63 - 8);
  v65 = v64;
  v2 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](0, v63);
  v66 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for BlockedHandle();
  v68 = *(v67 - 8);
  v69 = v68;
  v70 = *(v68 + 64);
  v4 = MEMORY[0x1EEE9AC00](v74, v67);
  v72 = (v70 + 15) & 0xFFFFFFFFFFFFFFF0;
  v71 = &v33 - v72;
  v5 = MEMORY[0x1EEE9AC00](v4, &v33 - v72);
  v73 = &v33 - v72;
  v85 = &v33 - v72;
  v84 = v5;
  swift_unknownObjectRetain();
  Type = CMFItemGetType();
  swift_unknownObjectRelease();
  v76 = Type;
  if (Type)
  {
    if (v76 != 1)
    {
      v46 = v61;
LABEL_25:
      v34 = v46;
      swift_unknownObjectRelease();
      (*(v69 + 56))(v60, 1, 1, v67);
      return v34;
    }

    v23 = v61;
    v83 = 0;
    swift_unknownObjectRetain();
    v43 = &v33;
    MEMORY[0x1EEE9AC00](&v33, v24);
    v44 = &v33 - 4;
    *(&v33 - 2) = v25;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5C90, &qword_1B98FC150);
    sub_1B987E980(&v83, sub_1B98C6808, v44, v26, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v27);
    v45 = v23;
    if (!v23)
    {
      swift_unknownObjectRelease();
      v42 = v83;
      if (!v83)
      {
        v46 = v45;
        goto LABEL_25;
      }

      v41 = v42;
      v40 = v42;
      v82 = v42;
      (*(v65 + 104))(v66, *MEMORY[0x1E696ED90], v63);
      v28 = v40;
      v29 = v40;

      v37 = sub_1B98F5658();
      v38 = v30;
      v39 = sub_1B98C5FFC();
      v31 = sub_1B98C6048();
      BlockedHandle.init(type:value:normalizedValue:associatedContacts:allowedApps:)(v66, v37, v38, 0, 0, v39, v31, v71);

      sub_1B9832680(v71, v73);
      v49 = v45;
LABEL_24:
      v35 = v49;
      sub_1B9833334(v73, v60);
      (*(v69 + 56))(v60, 0, 1, v67);
      swift_unknownObjectRelease();
      sub_1B983A3AC(v73);
      return v35;
    }
  }

  else
  {
    v6 = v61;
    v81 = 0;
    swift_unknownObjectRetain();
    v57 = &v33;
    MEMORY[0x1EEE9AC00](&v33, v7);
    v58 = &v33 - 4;
    *(&v33 - 2) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5C98, &qword_1B98FC158);
    sub_1B987E980(&v81, sub_1B98C6834, v58, v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v10);
    v59 = v6;
    if (!v6)
    {
      v11 = swift_unknownObjectRelease();
      if (v81)
      {
        v55 = v81;
        v14 = v81;
        v15 = v55;

        v56 = v55;
      }

      else
      {
        v56 = 0;
      }

      v54 = v56;
      if (v56)
      {
        v53 = v54;
        v52 = v54;
        v80 = v54;
        *&v78 = sub_1B98C6570(v11, v12, v13);
        *(&v78 + 1) = v16;
        v17 = v52;
        if (*(&v78 + 1))
        {
          v79 = v78;
        }

        else
        {
          *&v79 = sub_1B98C6670(v17, v18, v19);
          *(&v79 + 1) = v20;
          if (*(&v78 + 1))
          {
            sub_1B985EE4C(&v78);
          }
        }

        v51 = v79;
        if (*(&v79 + 1))
        {
          v50 = v51;
          v21 = v59;
          v47 = v51;
          v77 = v51;
          (*(v65 + 104))(v66, *MEMORY[0x1E696ED80], v63);
          v48 = sub_1B98C5FFC();
          v22 = sub_1B98C6048();
          BlockedHandle.init(type:value:normalizedValue:associatedContacts:allowedApps:)(v66, v47, *(&v47 + 1), 0, 0, v48, v22, v71);
          sub_1B9832680(v71, v73);

          v49 = v21;
          goto LABEL_24;
        }
      }

      v46 = v59;
      goto LABEL_25;
    }

    swift_unknownObjectRelease();
    __break(1u);
  }

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

uint64_t sub_1B983B410(uint64_t a1, uint64_t a2)
{
  v266 = a2;
  v265 = a1;
  v320 = *MEMORY[0x1E69E9840];
  v263 = 0;
  v310 = 0;
  v309 = 0;
  v308 = 0;
  v306 = 0;
  v305 = 0;
  v264 = 0;
  v303 = 0;
  v301 = 0;
  v299 = 0;
  v297 = 0;
  v294 = 0;
  v293[1] = 0;
  v293[0] = 0;
  v291 = 0;
  v290 = 0;
  v288 = 0;
  v284 = 0;
  v281 = 0;
  v267 = sub_1B98F5138();
  v268 = *(v267 - 8);
  v269 = v268;
  v271 = *(v268 + 64);
  v3 = MEMORY[0x1EEE9AC00](v265, v266);
  v273 = (v271 + 15) & 0xFFFFFFFFFFFFFFF0;
  v270 = v78 - v273;
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  v272 = v78 - v273;
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v274 = v78 - v273;
  v310 = v7;
  v309 = v8;
  v308 = v2;
  v307 = v7;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5268, &qword_1B98FAC20);
  v275 = v276;
  v277 = sub_1B988AFE0();
  if (sub_1B98F5B58())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5848, &unk_1B98FB1B8);
    v144 = sub_1B98F5F98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5920, &qword_1B98FB180);
    v147 = sub_1B98F54A8();
    v148 = v264;
    goto LABEL_30;
  }

  sub_1B988B174();
  sub_1B98F54D8();
  v9 = sub_1B988B1D8();
  v10 = v274;
  v232 = v9;
  v226 = v9;
  v306 = v9;
  v227 = objc_opt_self();
  sub_1B98F54D8();
  v228 = sub_1B98F58A8();

  v229 = [v227 predicateForContactsMatchingHandleStrings_];

  [v232 setPredicate_];
  v11 = sub_1B98F1E6C();
  v230 = *(v269 + 16);
  v231 = (v269 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v230(v10, v11, v267);
  v12 = v232;
  v233 = 24;
  v246 = 7;
  v13 = swift_allocObject();
  v14 = v262;
  v238 = v13;
  *(v13 + 16) = v232;
  v15 = v14;
  v247 = swift_allocObject();
  *(v247 + 16) = v262;
  v261 = sub_1B98F5118();
  v234 = v261;
  v260 = sub_1B98F5BD8();
  v235 = v260;
  v241 = 17;
  v251 = swift_allocObject();
  v236 = v251;
  *(v251 + 16) = 65;
  v252 = swift_allocObject();
  v237 = v252;
  v243 = 8;
  *(v252 + 16) = 8;
  v245 = 32;
  v16 = swift_allocObject();
  v17 = v238;
  v239 = v16;
  *(v16 + 16) = sub_1B988B248;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v239;
  v253 = v18;
  v240 = v18;
  *(v18 + 16) = sub_1B988B89C;
  *(v18 + 24) = v19;
  v254 = swift_allocObject();
  v242 = v254;
  *(v254 + 16) = 64;
  v255 = swift_allocObject();
  v244 = v255;
  *(v255 + 16) = v243;
  v20 = swift_allocObject();
  v21 = v247;
  v248 = v20;
  *(v20 + 16) = sub_1B988B280;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v248;
  v258 = v22;
  v249 = v22;
  *(v22 + 16) = sub_1B988B8C4;
  *(v22 + 24) = v23;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v250 = v259;
  v256 = sub_1B98F5F98();
  v257 = v24;

  v25 = v251;
  v26 = v257;
  *v257 = sub_1B988B88C;
  v26[1] = v25;

  v27 = v252;
  v28 = v257;
  v257[2] = sub_1B988B894;
  v28[3] = v27;

  v29 = v253;
  v30 = v257;
  v257[4] = sub_1B988B8A8;
  v30[5] = v29;

  v31 = v254;
  v32 = v257;
  v257[6] = sub_1B988B8B4;
  v32[7] = v31;

  v33 = v255;
  v34 = v257;
  v257[8] = sub_1B988B8BC;
  v34[9] = v33;

  v35 = v257;
  v36 = v258;
  v257[10] = sub_1B988B8D0;
  v35[11] = v36;
  sub_1B9851B38();

  if (os_log_type_enabled(v261, v260))
  {
    v37 = v264;
    v219 = sub_1B98F5C28();
    v216 = v219;
    v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v222 = 2;
    v220 = sub_1B985263C(2);
    v218 = v220;
    v221 = sub_1B985263C(0);
    v280 = v219;
    v312 = v220;
    v311 = v221;
    v223 = &v280;
    sub_1B9852690(3, &v280);
    sub_1B9852690(v222, v223);
    v278 = sub_1B988B88C;
    v279 = v236;
    sub_1B98526A4(&v278, v223, &v312, &v311);
    v224 = v37;
    v225 = v37;
    if (v37)
    {
      v214 = 0;

      __break(1u);
    }

    else
    {
      v278 = sub_1B988B894;
      v279 = v237;
      sub_1B98526A4(&v278, &v280, &v312, &v311);
      v212 = 0;
      v213 = 0;
      v278 = sub_1B988B8A8;
      v279 = v240;
      sub_1B98526A4(&v278, &v280, &v312, &v311);
      v210 = 0;
      v211 = 0;
      v278 = sub_1B988B8B4;
      v279 = v242;
      sub_1B98526A4(&v278, &v280, &v312, &v311);
      v208 = 0;
      v209 = 0;
      v278 = sub_1B988B8BC;
      v279 = v244;
      sub_1B98526A4(&v278, &v280, &v312, &v311);
      v206 = 0;
      v207 = 0;
      v278 = sub_1B988B8D0;
      v279 = v249;
      sub_1B98526A4(&v278, &v280, &v312, &v311);
      v204 = 0;
      v205 = 0;
      _os_log_impl(&dword_1B982F000, v234, v235, "Executing contact fetch request %{private}@ using contact store %@", v216, 0x16u);
      sub_1B985281C(v218);
      sub_1B985281C(v221);
      sub_1B98F5C08();

      v215 = v204;
    }
  }

  else
  {
    v38 = v264;

    v215 = v38;
  }

  v198 = v215;

  v199 = *(v269 + 8);
  v200 = (v269 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v199(v274, v267);
  v319 = 0;
  v304 = 0;
  v203 = [v262 executeFetchRequest:v226 error:&v304];
  v201 = v203;
  v202 = v304;
  v39 = v304;
  v40 = v319;
  v319 = v202;

  if (v203)
  {
    v197 = v201;
    v196 = v201;
    v284 = v201;
    v283 = [v201 value];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5880, &qword_1B98FB1C8);
    if (swift_dynamicCast())
    {
      v195 = v282;
    }

    else
    {
      v195 = 0;
    }

    v194 = v195;
    if (v195)
    {
      v193 = v194;
      v192 = v194;
      v281 = v194;
      sub_1B98F54D8();
      v305 = v192;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5848, &unk_1B98FB1B8);
      v191 = sub_1B98F5F98();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5920, &qword_1B98FB180);
      v305 = sub_1B98F54A8();
    }

    v190 = v198;
  }

  else
  {
    v121 = v319;
    v124 = sub_1B98F4F38();
    v122 = v124;

    swift_willThrow();
    v53 = v272;
    v123 = 0;
    v54 = v124;
    v303 = v124;
    v55 = sub_1B98F1E6C();
    v230(v53, v55, v267);
    v56 = v124;
    v132 = 7;
    v130 = swift_allocObject();
    *(v130 + 16) = v124;
    sub_1B98745B0();

    v142 = sub_1B98F5118();
    v125 = v142;
    v141 = sub_1B98F5BB8();
    v126 = v141;
    v127 = 17;
    v136 = swift_allocObject();
    v128 = v136;
    *(v136 + 16) = 64;
    v137 = swift_allocObject();
    v129 = v137;
    *(v137 + 16) = 8;
    v131 = 32;
    v57 = swift_allocObject();
    v58 = v130;
    v133 = v57;
    *(v57 + 16) = sub_1B988B8DC;
    *(v57 + 24) = v58;
    v59 = swift_allocObject();
    v60 = v133;
    v134 = v59;
    *(v59 + 16) = sub_1B988B8F4;
    *(v59 + 24) = v60;
    v61 = swift_allocObject();
    v62 = v134;
    v140 = v61;
    v135 = v61;
    *(v61 + 16) = sub_1B988B900;
    *(v61 + 24) = v62;
    v138 = sub_1B98F5F98();
    v139 = v63;

    v64 = v136;
    v65 = v139;
    *v139 = sub_1B988B8E4;
    v65[1] = v64;

    v66 = v137;
    v67 = v139;
    v139[2] = sub_1B988B8EC;
    v67[3] = v66;

    v68 = v139;
    v69 = v140;
    v139[4] = sub_1B988B90C;
    v68[5] = v69;
    sub_1B9851B38();

    if (os_log_type_enabled(v142, v141))
    {
      v70 = v123;
      v114 = sub_1B98F5C28();
      v111 = v114;
      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v117 = 1;
      v115 = sub_1B985263C(1);
      v113 = v115;
      v116 = sub_1B985263C(0);
      v287[0] = v114;
      v314[0] = v115;
      v313 = v116;
      v118 = v287;
      sub_1B9852690(2, v287);
      sub_1B9852690(v117, v118);
      v285 = sub_1B988B8E4;
      v286 = v128;
      sub_1B98526A4(&v285, v118, v314, &v313);
      v119 = v70;
      v120 = v70;
      if (v70)
      {
        v109 = 0;

        __break(1u);
      }

      else
      {
        v285 = sub_1B988B8EC;
        v286 = v129;
        sub_1B98526A4(&v285, v287, v314, &v313);
        v107 = 0;
        v108 = 0;
        v285 = sub_1B988B90C;
        v286 = v135;
        sub_1B98526A4(&v285, v287, v314, &v313);
        v105 = 0;
        v106 = 0;
        _os_log_impl(&dword_1B982F000, v125, v126, "Contact fetch failed with the following error: %@", v111, 0xCu);
        sub_1B985281C(v113);
        sub_1B985281C(v116);
        sub_1B98F5C08();

        v110 = v105;
      }
    }

    else
    {
      v71 = v123;

      v110 = v71;
    }

    v104 = v110;

    v199(v272, v267);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5848, &unk_1B98FB1B8);
    v103 = sub_1B98F5F98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5920, &qword_1B98FB180);
    v305 = sub_1B98F54A8();

    v190 = v104;
  }

  v41 = v190;
  sub_1B98F54D8();
  v302 = v265;
  v186 = v78;
  MEMORY[0x1EEE9AC00](v78, v42);
  v187 = &v78[-4];
  v78[-2] = &v305;
  sub_1B988B944();
  v43 = sub_1B98F5D78();
  v188 = v41;
  v189 = v43;
  if (v41)
  {
    __break(1u);
LABEL_38:
    v93 = v318;
    v96 = sub_1B98F4F38();
    v94 = v96;

    swift_willThrow();
    v72 = v270;
    v98 = 0;
    v95 = 0;
    v73 = v96;
    v297 = v96;
    v74 = sub_1B98F1E6C();
    v230(v72, v74, v267);
    v101 = sub_1B98F5118();
    v97 = v101;
    v100 = sub_1B98F5BB8();
    v99 = v100;
    v102 = sub_1B98F5F98();
    if (os_log_type_enabled(v101, v100))
    {
      v75 = v95;
      v84 = sub_1B98F5C28();
      v80 = v84;
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v82 = 0;
      v85 = sub_1B985263C(0);
      v83 = v85;
      v86 = sub_1B985263C(v82);
      v296 = v84;
      v317 = v85;
      v316 = v86;
      v87 = 0;
      v88 = &v296;
      sub_1B9852690(0, &v296);
      sub_1B9852690(v87, v88);
      v295 = v102;
      v89 = v78;
      MEMORY[0x1EEE9AC00](v78, v76);
      v90 = &v78[-6];
      v78[-4] = v77;
      v78[-3] = &v317;
      v78[-2] = &v316;
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
      sub_1B9852720();
      sub_1B98F57D8();
      v92 = v75;
      if (v75)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B982F000, v97, v99, "Failed to query contacts using predicate", v80, 2u);
        v78[1] = 0;
        sub_1B985281C(v83);
        sub_1B985281C(v86);
        sub_1B98F5C08();

        v79 = v92;
      }
    }

    else
    {

      v79 = v95;
    }

    v78[0] = v79;

    v199(v270, v267);
    v152 = v78[0];
LABEL_26:
    v149 = v152;

    v150 = v149;
LABEL_28:
    v146 = v150;
    v145 = v305;
    sub_1B98F54D8();

    sub_1B988B9CC(&v305);

    v147 = v145;
    v148 = v146;
LABEL_30:
    v143 = v147;
    v51 = __OFSUB__(*MEMORY[0x1E69E9840], v320);
    return v147;
  }

  v185 = v189;
  v301 = v189;
  v300 = v189;
  if (sub_1B98F5B58())
  {
    v150 = v188;
    goto LABEL_28;
  }

  v177 = objc_opt_self();
  sub_1B98F54D8();
  v178 = sub_1B98F58A8();

  v180 = [v177 predicateForContactsMatchingHandleStrings_];
  v179 = v180;

  v299 = v180;
  v318 = 0;
  sub_1B98F54D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5CF0, &unk_1B98FB210);
  v183 = sub_1B98F58A8();

  v298 = v318;
  v184 = [v262 unifiedContactsMatchingPredicate:v180 keysToFetch:v183 error:&v298];
  v181 = v184;
  v182 = v298;
  v44 = v298;
  v45 = v318;
  v318 = v182;

  if (!v184)
  {
    goto LABEL_38;
  }

  v176 = v181;
  v171 = v181;
  v170 = sub_1B9836338();
  v173 = sub_1B98F58B8();
  v172 = v173;
  v294 = v173;

  v293[2] = v173;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5920, &qword_1B98FB180);
  v174 = v175;
  sub_1B988BA28();
  if (sub_1B98F5B58())
  {
    v153 = v188;
LABEL_25:
    v151 = v153;

    v152 = v151;
    goto LABEL_26;
  }

  v46 = v188;
  sub_1B98F54D8();
  v292 = v185;
  sub_1B98F5B88();
  for (i = v46; ; i = v155)
  {
    v166 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5828, &qword_1B98FB1A0);
    sub_1B98F5DE8();
    v167 = v314[2];
    v168 = v315;
    if (!v315)
    {
      sub_1B988B068(v293);
      v153 = v166;
      goto LABEL_25;
    }

    v164 = v167;
    v165 = v168;
    v47 = v166;
    v158 = v168;
    v156 = v167;
    v290 = v167;
    v291 = v168;
    sub_1B98F54D8();
    v289 = v172;
    sub_1B98F54D8();
    v159 = v78;
    MEMORY[0x1EEE9AC00](v78, v48);
    v157 = &v78[-4];
    v78[-2] = v156;
    v78[-1] = v49;
    sub_1B988BAE0();
    v50 = sub_1B98F5D78();
    v160 = v47;
    v161 = v50;
    v162 = v158;
    v163 = v159;
    if (v47)
    {
      break;
    }

    v154 = v161;
    v155 = 0;

    v288 = v154;
    sub_1B98F54D8();
    sub_1B98F54D8();
    v314[1] = v154;
    v287[1] = v156;
    v287[2] = v158;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5880, &qword_1B98FB1C8);
    sub_1B98F55C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B983CEDC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983CF1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983CFB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983CFF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983D0CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983D10C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983D14C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983D26C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983D2AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983D2EC()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B983D384()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983D3C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983D45C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983D49C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983D534()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983D574()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983D60C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983D64C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983D6E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983D724()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983D7BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983D7FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983D894()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983D8D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983D96C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983D9AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983DA44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983DA84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983DB1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983DB5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983DB9C()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5260, &unk_1B98F8FC0) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_1B983DD0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983DD4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983DDE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983DE24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983DE64()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983DEA4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983DEE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983DF24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983DF64()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983DFA4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983DFE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983E024()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983E06C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983E0B4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983E0FC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983E144()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983E18C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983E1D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983E21C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983E264()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983E2AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983E334(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = type metadata accessor for BlockedHandle();
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 24) + 8) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 24) + 8);
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_1B983E450(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BlockedHandle();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B983E544()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B983E584()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983E61C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983E65C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983E6F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983E734()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983E774()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A8, &qword_1B98FAAA8) - 8);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v5 + *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55B0, &unk_1B98FAAB0);
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v5, 1))
  {
    (*(v7 + 8))(v2 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_1B983E918()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983E958()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983E9F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983EA30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983EA70()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A8, &qword_1B98FAAA8) - 8);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v5 + *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55B0, &unk_1B98FAAB0);
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v5, 1))
  {
    (*(v7 + 8))(v2 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_1B983EC14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983EC54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983ECEC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983ED2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983ED6C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B983EDAC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983EE44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983EE84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983EF1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983EF5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983EFFC()
{
  v9 = type metadata accessor for BlockedHandle();
  v1 = *(*(v9 - 1) + 80);
  v8 = (v1 + 16) & ~v1;
  v10 = v8 + *(*(v9 - 1) + 64);
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 8))();
  v3 = *(v0 + v8 + v9[5] + 8);

  v4 = *(v0 + v8 + v9[6]);

  v5 = *(v0 + v8 + v9[7]);

  v6 = *(v0 + v8 + v9[8] + 8);

  return swift_deallocObject();
}

uint64_t sub_1B983F19C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983F1DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983F21C()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A8, &qword_1B98FAAA8) - 8);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v5 + *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55B0, &unk_1B98FAAB0);
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v5, 1))
  {
    (*(v7 + 8))(v2 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_1B983F3C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983F400()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983F498()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983F4D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983F518()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55F8, &qword_1B98FABB8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1B983F5FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983F63C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983F67C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983F6BC()
{
  v1 = *(v0 + 16);

  MEMORY[0x1E69E5920](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_1B983F70C()
{
  v9 = type metadata accessor for BlockedHandle();
  v1 = *(*(v9 - 1) + 80);
  v8 = (v1 + 16) & ~v1;
  v10 = v8 + *(*(v9 - 1) + 64);
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 8))();
  v3 = *(v0 + v8 + v9[5] + 8);

  v4 = *(v0 + v8 + v9[6]);

  v5 = *(v0 + v8 + v9[7]);

  v6 = *(v0 + v8 + v9[8] + 8);

  return swift_deallocObject();
}

uint64_t sub_1B983F8AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983F8EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983F984()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983F9C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983FA04()
{
  v1 = *(v0 + 16);

  MEMORY[0x1E69E5920](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_1B983FA54()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B983FA94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983FB2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983FB6C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983FC04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983FC44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983FC84()
{
  v1 = *(v0 + 16);

  MEMORY[0x1E69E5920](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_1B983FCD4()
{
  v9 = type metadata accessor for BlockedHandle();
  v1 = *(*(v9 - 1) + 80);
  v8 = (v1 + 16) & ~v1;
  v10 = v8 + *(*(v9 - 1) + 64);
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 8))();
  v3 = *(v0 + v8 + v9[5] + 8);

  v4 = *(v0 + v8 + v9[6]);

  v5 = *(v0 + v8 + v9[7]);

  v6 = *(v0 + v8 + v9[8] + 8);

  return swift_deallocObject();
}

uint64_t sub_1B983FEB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983FEF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983FF8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B983FFCC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9840064()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98400A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98400E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9840124()
{
  v1 = *(v0 + 16);

  MEMORY[0x1E69E5920](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_1B9840174()
{
  v9 = type metadata accessor for BlockedHandle();
  v1 = *(*(v9 - 1) + 80);
  v8 = (v1 + 16) & ~v1;
  v10 = v8 + *(*(v9 - 1) + 64);
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 8))();
  v3 = *(v0 + v8 + v9[5] + 8);

  v4 = *(v0 + v8 + v9[6]);

  v5 = *(v0 + v8 + v9[7]);

  v6 = *(v0 + v8 + v9[8] + 8);

  return swift_deallocObject();
}

uint64_t sub_1B9840314()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9840354()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98403EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B984042C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B984046C()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B984055C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B984059C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9840634()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9840674()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98406B4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B98406F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B984078C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98407CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98408D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9840918()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9840958()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9840998()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9840A30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9840A70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9840AB0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B9840AF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9840B88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9840BC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9840C08()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B9840C48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9840CE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9840D20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9840DB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9840DF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9840E38()
{
  v9 = type metadata accessor for BlockedHandle();
  v1 = *(*(v9 - 1) + 80);
  v8 = (v1 + 16) & ~v1;
  v10 = v8 + *(*(v9 - 1) + 64);
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 8))();
  v3 = *(v0 + v8 + v9[5] + 8);

  v4 = *(v0 + v8 + v9[6]);

  v5 = *(v0 + v8 + v9[7]);

  v6 = *(v0 + v8 + v9[8] + 8);

  return swift_deallocObject();
}

uint64_t sub_1B9840FD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9841018()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98410B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98410F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9841188()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98411C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9841208()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B9841248()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98412E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9841320()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98413B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98413F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9841438()
{
  v9 = type metadata accessor for BlockedHandle();
  v1 = *(*(v9 - 1) + 80);
  v8 = (v1 + 16) & ~v1;
  v10 = v8 + *(*(v9 - 1) + 64);
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 8))();
  v3 = *(v0 + v8 + v9[5] + 8);

  v4 = *(v0 + v8 + v9[6]);

  v5 = *(v0 + v8 + v9[7]);

  v6 = *(v0 + v8 + v9[8] + 8);

  return swift_deallocObject();
}

uint64_t sub_1B98415D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9841618()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98416B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98416F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9841730()
{
  v9 = type metadata accessor for BlockedHandle();
  v1 = *(*(v9 - 1) + 80);
  v8 = (v1 + 16) & ~v1;
  v10 = v8 + *(*(v9 - 1) + 64);
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 8))();
  v3 = *(v0 + v8 + v9[5] + 8);

  v4 = *(v0 + v8 + v9[6]);

  v5 = *(v0 + v8 + v9[7]);

  v6 = *(v0 + v8 + v9[8] + 8);

  return swift_deallocObject();
}

uint64_t sub_1B98418D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9841910()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98419A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98419E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9841A28()
{
  v9 = type metadata accessor for BlockedHandle();
  v1 = *(*(v9 - 1) + 80);
  v8 = (v1 + 16) & ~v1;
  v10 = v8 + *(*(v9 - 1) + 64);
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 8))();
  v3 = *(v0 + v8 + v9[5] + 8);

  v4 = *(v0 + v8 + v9[6]);

  v5 = *(v0 + v8 + v9[7]);

  v6 = *(v0 + v8 + v9[8] + 8);

  return swift_deallocObject();
}

uint64_t sub_1B9841BC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9841C08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9841CA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9841CE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9841D20()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B9841DB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9841DF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9841E90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9841ED0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9841F10()
{
  v9 = type metadata accessor for BlockedHandle();
  v1 = *(*(v9 - 1) + 80);
  v8 = (v1 + 16) & ~v1;
  v10 = v8 + *(*(v9 - 1) + 64);
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 8))();
  v3 = *(v0 + v8 + v9[5] + 8);

  v4 = *(v0 + v8 + v9[6]);

  v5 = *(v0 + v8 + v9[7]);

  v6 = *(v0 + v8 + v9[8] + 8);

  return swift_deallocObject();
}

uint64_t sub_1B98420B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98420F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9842130()
{
  v9 = type metadata accessor for BlockedHandle();
  v1 = *(*(v9 - 1) + 80);
  v8 = (v1 + 16) & ~v1;
  v10 = v8 + *(*(v9 - 1) + 64);
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 8))();
  v3 = *(v0 + v8 + v9[5] + 8);

  v4 = *(v0 + v8 + v9[6]);

  v5 = *(v0 + v8 + v9[7]);

  v6 = *(v0 + v8 + v9[8] + 8);

  return swift_deallocObject();
}

uint64_t sub_1B98422D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9842310()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98423A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98423E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9842428()
{
  v9 = type metadata accessor for BlockedHandle();
  v1 = *(*(v9 - 1) + 80);
  v8 = (v1 + 16) & ~v1;
  v10 = v8 + *(*(v9 - 1) + 64);
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 8))();
  v3 = *(v0 + v8 + v9[5] + 8);

  v4 = *(v0 + v8 + v9[6]);

  v5 = *(v0 + v8 + v9[7]);

  v6 = *(v0 + v8 + v9[8] + 8);

  return swift_deallocObject();
}

uint64_t sub_1B98425C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9842608()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98426A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98426E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9842720()
{
  v9 = type metadata accessor for BlockedHandle();
  v1 = *(*(v9 - 1) + 80);
  v8 = (v1 + 16) & ~v1;
  v10 = v8 + *(*(v9 - 1) + 64);
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 8))();
  v3 = *(v0 + v8 + v9[5] + 8);

  v4 = *(v0 + v8 + v9[6]);

  v5 = *(v0 + v8 + v9[7]);

  v6 = *(v0 + v8 + v9[8] + 8);

  return swift_deallocObject();
}

uint64_t sub_1B9842868()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9842900()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9842940()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98429D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9842A18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9842AB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9842AF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9842BB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9842BF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9842C8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9842CCC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9842D4C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1B9842E20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9842E60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9842EF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9842F38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9842F78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B984303C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B984307C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843114()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843154()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98431EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B984322C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B984326C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5990, &qword_1B98FB4C0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1B98432B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843350()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843390()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843428()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843468()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98434A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843540()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843580()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843618()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843658()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843698()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B98436D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843770()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98437B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843848()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843888()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98438C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843908()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843948()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843988()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98439C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843A08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843A48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843A88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843AC8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B9843B08()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B9843B48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843BE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843C20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843CB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843CF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843D38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843DD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843E10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843EA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843EE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843F28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9843F68()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B9843FA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844040()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844080()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844118()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844158()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844198()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B98441D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844270()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98442B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844348()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844388()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98443C8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B9844408()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98444A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98444E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844578()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98445B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98445F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844638()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844678()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98446B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98446F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844738()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844778()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98447B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98447F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844838()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844878()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98448B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98448F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844938()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844978()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98449B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844A50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844A90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844B28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844B68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844BA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844C40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844C80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844D18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844D58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844D98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844E18()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B9844E58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844EF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844F30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9844FC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9845008()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9845048()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B9845088()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9845120()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9845160()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98451F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9845238()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9845278()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B98452B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9845350()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9845390()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9845428()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9845468()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98454A8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B98454E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9845580()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98455C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9845658()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9845698()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98456D8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B9845718()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98457B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98457F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9845888()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98458C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9845908()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B9845948()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98459E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9845A20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9845AB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9845AF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9845B38()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B9845BD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9845C10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9845CA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9845CE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9845D28()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B9845D68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9845E00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9845E40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9845ED8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9845F18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9845F58()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B9845F98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9846030()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9846070()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9846108()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9846148()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9846188()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B98461C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9846260()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98462A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9846338()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9846378()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98463B8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B98463F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9846490()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98464D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9846568()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98465A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98465E8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B9846628()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98466C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9846700()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9846798()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98467D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9846818()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B9846858()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98468F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9846930()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98469C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9846A08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9846A48()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B9846A88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9846B20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9846B60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9846BF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9846C38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9846C78()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B9846CB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9846D50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9846D90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9846E28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9846E68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9847208()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B9847248()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98472E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9847320()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9847360()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1B98473B0()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1B98473F8()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1B9847440()
{
  v3 = *(sub_1B98F5078() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_1B9847564()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98475A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9847610()
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = v8 + *(v7 + 64);
  v1 = sub_1B98F5078();
  (*(*(v1 - 8) + 8))();
  v9 = type metadata accessor for BlockedHandle();
  v2 = *(v0 + v8 + v9[5] + 8);

  v3 = *(v0 + v8 + v9[6]);

  v4 = *(v0 + v8 + v9[7]);

  v5 = *(v0 + v8 + v9[8] + 8);

  return swift_deallocObject();
}

uint64_t sub_1B98477BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98477FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B984783C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B984787C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9847914()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9847954()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98479C0()
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = v8 + *(v7 + 64);
  v1 = sub_1B98F5078();
  (*(*(v1 - 8) + 8))();
  v9 = type metadata accessor for BlockedHandle();
  v2 = *(v0 + v8 + v9[5] + 8);

  v3 = *(v0 + v8 + v9[6]);

  v4 = *(v0 + v8 + v9[7]);

  v5 = *(v0 + v8 + v9[8] + 8);

  return swift_deallocObject();
}

uint64_t sub_1B9847B6C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9847BAC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9847BEC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9847C2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9847CC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9847D04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9847D70()
{
  v9 = type metadata accessor for BlockedHandle();
  v1 = *(*(v9 - 1) + 80);
  v8 = (v1 + 16) & ~v1;
  v10 = v8 + *(*(v9 - 1) + 64);
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 8))();
  v3 = *(v0 + v8 + v9[5] + 8);

  v4 = *(v0 + v8 + v9[6]);

  v5 = *(v0 + v8 + v9[7]);

  v6 = *(v0 + v8 + v9[8] + 8);

  return swift_deallocObject();
}

uint64_t sub_1B9847F10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9847F50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9847FE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9848028()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9848068()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98480A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9848140()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9848180()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98481C0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B9848200()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9848298()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98482D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9848370()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98483B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9848490()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98484D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98485DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B984861C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B984865C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B984869C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9848734()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9848774()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98487E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9848878()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98488B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9848950()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9848990()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98489D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9848A10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9848AA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9848AE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9848BC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9848C08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9848D0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9848D4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9848E10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9848E50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9848F28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9848F68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9848FA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9849080()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98490C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9849100()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9849180()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

__n128 sub_1B984921C(__n128 *a1, __n128 *a2)
{
  v3 = a1->n128_u64[0];
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1B9849238(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*(a1 + 8) < 0x100000000uLL)
    {
      v6 = *(a1 + 8);
    }

    return (v6 + 1);
  }

  else
  {
    v4 = *(a3 + 16);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 40), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_1B9849358(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = a2 - 1;
  }

  else
  {
    v4 = *(a4 + 16);
    if (a3 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 56))(result + *(a4 + 40), a2, a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B9849450()
{
  v3 = *(sub_1B98F4F88() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_1B984951C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98495F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9849634()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98496CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B984970C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B984974C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B984978C()
{
  v3 = *(sub_1B98F4F88() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_1B9849858()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B98498F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9849930()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B9849970()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_1B98499D8()
{
  v5 = v0;
  *(v0 + 24) = 0;
  v4 = 0;
  sub_1B985253C(&v4, v0 + 24, MEMORY[0x1E69E82E8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F30, &unk_1B98F89D0);
  *(v3 + 16) = sub_1B98F5218();
  v2 = *(v3 + 16);

  swift_allocObject();

  swift_weakInit();

  sub_1B98F51D8();
  sub_1B9852608(sub_1B9852600);

  return v3;
}

uint64_t sub_1B9849AF0(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v31 = a1;
  v42 = 0;
  v53 = 0;
  v52 = 0;
  v50 = 0;
  v30 = 0;
  v39 = sub_1B98F5138();
  v33 = v39;
  v34 = *(v39 - 8);
  v38 = v34;
  v35 = v34;
  v2 = *(v34 + 64);
  v3 = MEMORY[0x1EEE9AC00](v31, v32);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v5;
  v53 = v3;
  v37 = v6 + 16;
  v52 = v6 + 16;
  v7 = sub_1B98F1B1C();
  (*(v38 + 16))(v5, v7, v39);
  v44 = sub_1B98F5118();
  v40 = v44;
  v43 = sub_1B98F5BD8();
  v41 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v45 = sub_1B98F5F98();
  if (os_log_type_enabled(v44, v43))
  {
    v8 = v30;
    v21 = sub_1B98F5C28();
    v17 = v21;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v19 = 0;
    v22 = sub_1B985263C(0);
    v20 = v22;
    v23 = sub_1B985263C(v19);
    v49 = v21;
    v48 = v22;
    v47 = v23;
    v24 = 0;
    v25 = &v49;
    sub_1B9852690(0, &v49);
    sub_1B9852690(v24, v25);
    v46 = v45;
    v26 = v12;
    MEMORY[0x1EEE9AC00](v12, v9);
    v27 = &v12[-6];
    v12[-4] = v10;
    v12[-3] = &v48;
    v12[-2] = &v47;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
    sub_1B9852720();
    sub_1B98F57D8();
    v29 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1B982F000, v40, v41, "Server disconnected", v17, 2u);
      v15 = 0;
      sub_1B985281C(v20);
      sub_1B985281C(v23);
      sub_1B98F5C08();

      v16 = v29;
    }
  }

  else
  {

    v16 = v30;
  }

  (*(v35 + 8))(v36, v33);
  v12[1] = &v51;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v13 = Strong;
  swift_endAccess();
  result = Strong;
  if (Strong)
  {
    v12[0] = v13;
    v50 = v13;
    atomic_store(0, (v13 + 24));
  }

  return result;
}

uint64_t sub_1B9849F90()
{
  v1[8] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v2 = sub_1B98F5138();
  v1[9] = v2;
  v6 = *(v2 - 8);
  v1[10] = v6;
  v3 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[3] = v0;
  v4 = v1[2];

  return MEMORY[0x1EEE6DFA0](sub_1B984A084, 0);
}

uint64_t sub_1B984A084()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = v0;
  LOBYTE(v1) = atomic_load((v1 + 24));
  if ((v1 & 1) == 0)
  {
    v2 = *(v21 + 88);
    v17 = *(v21 + 72);
    v16 = *(v21 + 80);
    v3 = sub_1B98F1B1C();
    (*(v16 + 16))(v2, v3, v17);
    v19 = sub_1B98F5118();
    v18 = sub_1B98F5BD8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v20 = sub_1B98F5F98();
    if (os_log_type_enabled(v19, v18))
    {
      buf = sub_1B98F5C28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v13 = sub_1B985263C(0);
      v14 = sub_1B985263C(0);
      *(v21 + 32) = buf;
      *(v21 + 40) = v13;
      *(v21 + 48) = v14;
      sub_1B9852690(0, (v21 + 32));
      sub_1B9852690(0, (v21 + 32));
      *(v21 + 56) = v20;
      v15 = swift_task_alloc();
      v15[2] = v21 + 32;
      v15[3] = v21 + 40;
      v15[4] = v21 + 48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
      sub_1B9852720();
      sub_1B98F57D8();

      _os_log_impl(&dword_1B982F000, v19, v18, "Requesting initial state", buf, 2u);
      sub_1B985281C(v13);
      sub_1B985281C(v14);
      sub_1B98F5C08();
    }

    v9 = *(v21 + 88);
    v10 = *(v21 + 72);
    v11 = *(v21 + 64);
    v8 = *(v21 + 80);
    MEMORY[0x1E69E5920](v19);
    (*(v8 + 8))(v9, v10);
    atomic_store(1u, (v11 + 24));
  }

  v4 = *(v21 + 88);

  v5 = *(*(v21 + 16) + 8);
  v6 = *(v21 + 16);

  return v5();
}

uint64_t sub_1B984A450()
{
  v3 = *(v0 + 16);

  nullsub_5(v1);
  sub_1B9831E84();
  sub_1B98F5208();

  if (v4)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

_BYTE *sub_1B984A504()
{
  v42 = sub_1B984AB54;
  v45 = sub_1B9853228;
  v47 = sub_1B9853218;
  v49 = sub_1B9853220;
  v52 = sub_1B9853234;
  v63 = 0;
  v40 = sub_1B98F5138();
  v38 = *(v40 - 8);
  v39 = v40 - 8;
  v36 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40, v0);
  v1 = v18 - v36;
  v37 = v18 - v36;
  v63 = v2;
  v3 = sub_1B98F1B1C();
  (*(v38 + 16))(v1, v3, v40);
  v56 = sub_1B98F5118();
  v57 = sub_1B98F5BD8();
  v41 = 17;
  v44 = 7;
  v48 = swift_allocObject();
  *(v48 + 16) = 32;
  v50 = swift_allocObject();
  *(v50 + 16) = 8;
  v43 = 32;
  v4 = swift_allocObject();
  v46 = v4;
  *(v4 + 16) = v42;
  *(v4 + 24) = 0;
  v5 = swift_allocObject();
  v6 = v46;
  v53 = v5;
  *(v5 + 16) = v45;
  *(v5 + 24) = v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v51 = sub_1B98F5F98();
  v54 = v7;

  v8 = v48;
  v9 = v54;
  *v54 = v47;
  v9[1] = v8;

  v10 = v50;
  v11 = v54;
  v54[2] = v49;
  v11[3] = v10;

  v12 = v53;
  v13 = v54;
  v54[4] = v52;
  v13[5] = v12;
  sub_1B9851B38();

  if (os_log_type_enabled(v56, v57))
  {
    v27 = sub_1B98F5C28();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v28 = sub_1B985263C(0);
    v29 = sub_1B985263C(1);
    v30 = v62;
    v62[0] = v27;
    v31 = &v61;
    v61 = v28;
    v32 = &v60;
    v60 = v29;
    sub_1B9852690(2, v62);
    sub_1B9852690(1, v30);
    v14 = v34;
    v58 = v47;
    v59 = v48;
    sub_1B98526A4(&v58, v30, v31, v32);
    v33 = v14;
    if (v14)
    {

      __break(1u);
    }

    else
    {
      v58 = v49;
      v59 = v50;
      sub_1B98526A4(&v58, v62, &v61, &v60);
      v23 = 0;
      v58 = v52;
      v59 = v53;
      sub_1B98526A4(&v58, v62, &v61, &v60);
      v22 = 0;
      _os_log_impl(&dword_1B982F000, v56, v57, "%s", v27, 0xCu);
      sub_1B985281C(v28);
      sub_1B985281C(v29);
      sub_1B98F5C08();

      v24 = v22;
    }
  }

  else
  {

    v24 = v34;
  }

  v19 = v24;
  MEMORY[0x1E69E5920](v56);
  (*(v38 + 8))(v37, v40);
  v18[1] = *(v35 + 16);

  nullsub_6(v15);
  sub_1B9835D90();
  v16 = v19;
  sub_1B98F5208();
  v20 = v16;
  v21 = v16;
  if (v16)
  {
    v18[0] = v21;

    return v25;
  }

  else
  {

    return v62[1];
  }
}

uint64_t sub_1B984ABB4(uint64_t a1)
{
  v2[8] = v1;
  v2[7] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v3 = sub_1B98F5138();
  v2[9] = v3;
  v7 = *(v3 - 8);
  v2[10] = v7;
  v4 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[3] = a1;
  v2[4] = v1;
  v5 = v2[2];

  return MEMORY[0x1EEE6DFA0](sub_1B984ACCC, 0);
}

uint64_t sub_1B984ACCC()
{
  v37 = v0;
  v1 = v0[11];
  v17 = v0[10];
  v18 = v0[9];
  v19 = v0[7];
  v0[2] = v0;
  v2 = sub_1B98F1B1C();
  (*(v17 + 16))(v1, v2, v18);
  sub_1B98F54D8();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  v30 = sub_1B98F5118();
  v31 = sub_1B98F5BD8();
  v23 = swift_allocObject();
  *(v23 + 16) = 32;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B984B8C4;
  *(v20 + 24) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1B98533C4;
  *(v25 + 24) = v20;
  v26 = swift_allocObject();
  *(v26 + 16) = 32;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1B98533AC;
  *(v22 + 24) = v21;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1B98533EC;
  *(v28 + 24) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  sub_1B98F5F98();
  v29 = v3;

  *v29 = sub_1B98533B4;
  v29[1] = v23;

  v29[2] = sub_1B98533BC;
  v29[3] = v24;

  v29[4] = sub_1B98533D0;
  v29[5] = v25;

  v29[6] = sub_1B98533DC;
  v29[7] = v26;

  v29[8] = sub_1B98533E4;
  v29[9] = v27;

  v29[10] = sub_1B98533F8;
  v29[11] = v28;
  sub_1B9851B38();

  if (os_log_type_enabled(v30, v31))
  {
    buf = sub_1B98F5C28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v14 = sub_1B985263C(0);
    v15 = sub_1B985263C(2);
    v32 = buf;
    v33 = v14;
    v34 = v15;
    sub_1B9852690(2, &v32);
    sub_1B9852690(2, &v32);
    v35 = sub_1B98533B4;
    v36 = v23;
    sub_1B98526A4(&v35, &v32, &v33, &v34);
    v35 = sub_1B98533BC;
    v36 = v24;
    sub_1B98526A4(&v35, &v32, &v33, &v34);
    v35 = sub_1B98533D0;
    v36 = v25;
    sub_1B98526A4(&v35, &v32, &v33, &v34);
    v35 = sub_1B98533DC;
    v36 = v26;
    sub_1B98526A4(&v35, &v32, &v33, &v34);
    v35 = sub_1B98533E4;
    v36 = v27;
    sub_1B98526A4(&v35, &v32, &v33, &v34);
    v35 = sub_1B98533F8;
    v36 = v28;
    sub_1B98526A4(&v35, &v32, &v33, &v34);
    _os_log_impl(&dword_1B982F000, v30, v31, "%s: handles: %s", buf, 0x16u);
    sub_1B985281C(v14);
    sub_1B985281C(v15);
    sub_1B98F5C08();
  }

  else
  {
  }

  v9 = v16[11];
  v10 = v16[9];
  v11 = v16[8];
  v12 = v16[7];
  v8 = v16[10];
  MEMORY[0x1E69E5920](v30);
  (*(v8 + 8))(v9, v10);
  v16[12] = *(v11 + 16);

  sub_1B98F54D8();
  v16[6] = nullsub_7(v12);
  v4 = *(MEMORY[0x1E69937E0] + 4);
  v5 = swift_task_alloc();
  v16[13] = v5;
  v6 = sub_1B9853404();
  *v5 = v16[2];
  v5[1] = sub_1B984B5D0;

  return MEMORY[0x1EEDF2DF0](v16 + 5, v16 + 6, &unk_1F3793BB8, v6);
}

uint64_t sub_1B984B5D0()
{
  v8 = *v1;
  v2 = *(*v1 + 104);
  v8[2] = *v1;
  v9 = v8 + 2;
  v8[14] = v0;

  if (v0)
  {
    v5 = *v9;
    v4 = sub_1B984B804;
  }

  else
  {
    v7 = v8[12];
    sub_1B985347C(v8 + 6);

    v3 = *v9;
    v4 = sub_1B984B764;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0);
}

uint64_t sub_1B984B764()
{
  v1 = v0[11];
  v0[2] = v0;
  v5 = v0[5];

  v2 = *(v0[2] + 8);
  v3 = v0[2];

  return v2(v5);
}

uint64_t sub_1B984B804()
{
  v5 = v0[12];
  v6 = v0[11];
  v0[2] = v0;
  sub_1B985347C(v0 + 6);

  v1 = *(*(v7 + 16) + 8);
  v2 = *(v7 + 16);
  v3 = *(v7 + 112);

  return v1();
}

uint64_t sub_1B984B8F4(uint64_t a1)
{
  sub_1B98F54D8();
  v5 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v4 = sub_1B98F1B88(&v5, v1);
  sub_1B9855ACC(&v5);
  return v4;
}

uint64_t sub_1B984B964(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v46 = a2;
  v55 = sub_1B984C1EC;
  v58 = sub_1B98534B8;
  v60 = sub_1B98534A8;
  v62 = sub_1B98534B0;
  v65 = sub_1B98534C4;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v80 = 0;
  v53 = sub_1B98F5138();
  v51 = *(v53 - 8);
  v52 = v53 - 8;
  v48 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = v20 - v48;
  v49 = v20 - v48;
  v89 = MEMORY[0x1EEE9AC00](v47, v46);
  v50 = *v3;
  v88 = v50;
  v87 = v4;
  v5 = sub_1B98F1B1C();
  (*(v51 + 16))(v2, v5, v53);
  v69 = sub_1B98F5118();
  v70 = sub_1B98F5BD8();
  v54 = 17;
  v57 = 7;
  v61 = swift_allocObject();
  *(v61 + 16) = 32;
  v63 = swift_allocObject();
  *(v63 + 16) = 8;
  v56 = 32;
  v6 = swift_allocObject();
  v59 = v6;
  *(v6 + 16) = v55;
  *(v6 + 24) = 0;
  v7 = swift_allocObject();
  v8 = v59;
  v66 = v7;
  *(v7 + 16) = v58;
  *(v7 + 24) = v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v64 = sub_1B98F5F98();
  v67 = v9;

  v10 = v61;
  v11 = v67;
  *v67 = v60;
  v11[1] = v10;

  v12 = v63;
  v13 = v67;
  v67[2] = v62;
  v13[3] = v12;

  v14 = v66;
  v15 = v67;
  v67[4] = v65;
  v15[5] = v14;
  sub_1B9851B38();

  if (os_log_type_enabled(v69, v70))
  {
    v37 = sub_1B98F5C28();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v38 = sub_1B985263C(0);
    v39 = sub_1B985263C(1);
    v40 = &v75;
    v75 = v37;
    v41 = &v74;
    v74 = v38;
    v42 = &v73;
    v73 = v39;
    sub_1B9852690(2, &v75);
    sub_1B9852690(1, v40);
    v16 = v44;
    v71 = v60;
    v72 = v61;
    sub_1B98526A4(&v71, v40, v41, v42);
    v43 = v16;
    if (v16)
    {

      __break(1u);
    }

    else
    {
      v71 = v62;
      v72 = v63;
      sub_1B98526A4(&v71, &v75, &v74, &v73);
      v34 = 0;
      v71 = v65;
      v72 = v66;
      sub_1B98526A4(&v71, &v75, &v74, &v73);
      v33 = 0;
      _os_log_impl(&dword_1B982F000, v69, v70, "%s", v37, 0xCu);
      sub_1B985281C(v38);
      sub_1B985281C(v39);
      sub_1B98F5C08();

      v35 = v33;
    }
  }

  else
  {

    v35 = v44;
  }

  v29 = v35;
  MEMORY[0x1E69E5920](v69);
  (*(v51 + 8))(v49, v53);
  v28 = *(v45 + 16);

  sub_1B98F54D8();
  v83 = v50;
  sub_1B985EEA0(v47, &v83, &v84);
  v30 = &v81;
  v81 = v84;
  v82 = v85;
  sub_1B98534D0();
  v17 = v29;
  sub_1B98F5208();
  v31 = v17;
  v32 = v17;
  if (v17)
  {
    v20[0] = v32;
    sub_1B9853548(&v81);

    return v20[1];
  }

  else
  {
    sub_1B9853548(&v81);

    v24 = v86;
    v80 = v86;
    v23 = type metadata accessor for BlockedHandle();
    sub_1B9853574();
    v18 = sub_1B98F5538();
    v27 = v78;
    v78[0] = v18;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F68, &qword_1B98F89F8);
    v25 = sub_1B98535F4();
    sub_1B985367C();
    sub_1B98F57F8();
    sub_1B98536F4(v27);
    v76 = v78[1];
    v77 = v79 & 1;
    if (v79)
    {
      v22 = 4;
    }

    else
    {
      v22 = v76;
    }

    v21 = v22;

    return v21;
  }
}

uint64_t sub_1B984C21C(uint64_t a1, char *a2)
{
  *(v3 + 120) = v2;
  *(v3 + 112) = a1;
  *(v3 + 64) = v3;
  *(v3 + 72) = 0;
  *(v3 + 176) = 0;
  *(v3 + 80) = 0;
  *(v3 + 96) = 0;
  v4 = sub_1B98F5138();
  *(v3 + 128) = v4;
  v9 = *(v4 - 8);
  *(v3 + 136) = v9;
  v5 = *(v9 + 64) + 15;
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 72) = a1;
  v6 = *a2;
  *(v3 + 25) = *a2;
  *(v3 + 176) = v6;
  *(v3 + 80) = v2;
  v7 = *(v3 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1B984C35C, 0);
}

uint64_t sub_1B984C35C()
{
  v34 = v0;
  v1 = v0[18];
  v19 = v0[17];
  v20 = v0[16];
  v0[8] = v0;
  v2 = sub_1B98F1B1C();
  (*(v19 + 16))(v1, v2, v20);
  v26 = sub_1B98F5118();
  v27 = sub_1B98F5BD8();
  v22 = swift_allocObject();
  *(v22 + 16) = 32;
  v23 = swift_allocObject();
  *(v23 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B984CE1C;
  *(v21 + 24) = 0;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1B9853730;
  *(v24 + 24) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  sub_1B98F5F98();
  v25 = v3;

  *v25 = sub_1B9853720;
  v25[1] = v22;

  v25[2] = sub_1B9853728;
  v25[3] = v23;

  v25[4] = sub_1B985373C;
  v25[5] = v24;
  sub_1B9851B38();

  if (os_log_type_enabled(v26, v27))
  {
    buf = sub_1B98F5C28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v16 = sub_1B985263C(0);
    v17 = sub_1B985263C(1);
    v29 = buf;
    v30 = v16;
    v31 = v17;
    sub_1B9852690(2, &v29);
    sub_1B9852690(1, &v29);
    v32 = sub_1B9853720;
    v33 = v22;
    sub_1B98526A4(&v32, &v29, &v30, &v31);
    v32 = sub_1B9853728;
    v33 = v23;
    sub_1B98526A4(&v32, &v29, &v30, &v31);
    v32 = sub_1B985373C;
    v33 = v24;
    sub_1B98526A4(&v32, &v29, &v30, &v31);
    _os_log_impl(&dword_1B982F000, v26, v27, "%s", buf, 0xCu);
    sub_1B985281C(v16);
    sub_1B985281C(v17);
    sub_1B98F5C08();
  }

  else
  {
  }

  v14 = *(v18 + 25);
  v10 = *(v18 + 144);
  v11 = *(v18 + 128);
  v12 = *(v18 + 120);
  v13 = *(v18 + 112);
  v9 = *(v18 + 136);
  MEMORY[0x1E69E5920](v26);
  (*(v9 + 8))(v10, v11);
  *(v18 + 152) = *(v12 + 16);

  sub_1B98F54D8();
  v28[0] = v14;
  sub_1B985EEB4(v13, v28, v18 + 16);
  v4 = *(v18 + 24);
  *(v18 + 32) = *(v18 + 16);
  *(v18 + 40) = v4;
  v5 = *(MEMORY[0x1E69937E0] + 4);
  v6 = swift_task_alloc();
  *(v18 + 160) = v6;
  v7 = sub_1B9853748();
  *v6 = *(v18 + 64);
  v6[1] = sub_1B984C9C0;

  return MEMORY[0x1EEDF2DF0](v18 + 88, v18 + 32, &unk_1F3793CC8, v7);
}

uint64_t sub_1B984C9C0()
{
  v8 = *v1;
  v2 = (*v1)[20];
  v8[8] = *v1;
  v9 = v8 + 8;
  v8[21] = v0;

  if (v0)
  {
    v5 = *v9;
    v4 = sub_1B984CD58;
  }

  else
  {
    v7 = v8[19];
    sub_1B98537C0(v8 + 4);

    v3 = *v9;
    v4 = sub_1B984CB58;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0);
}

uint64_t sub_1B984CB58()
{
  *(v0 + 64) = v0;
  *(v0 + 96) = *(v0 + 88);
  type metadata accessor for BlockedHandle();
  sub_1B9853574();
  *(v0 + 104) = sub_1B98F5538();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F68, &qword_1B98F89F8);
  sub_1B98535F4();
  sub_1B985367C();
  sub_1B98F57F8();
  sub_1B98536F4((v0 + 104));
  if (*(v0 + 56))
  {
    v5 = 4;
  }

  else
  {
    v5 = *(v0 + 48);
  }

  v4 = *(v6 + 144);

  v1 = *(*(v6 + 64) + 8);
  v2 = *(v6 + 64);

  return v1(v5);
}

uint64_t sub_1B984CD58()
{
  v5 = v0[19];
  v6 = v0[18];
  v0[8] = v0;
  sub_1B98537C0(v0 + 4);

  v1 = *(*(v7 + 64) + 8);
  v2 = *(v7 + 64);
  v3 = *(v7 + 168);

  return v1();
}

uint64_t sub_1B984CE4C(uint64_t a1, char *a2)
{
  *(v3 + 96) = v2;
  *(v3 + 88) = a1;
  *(v3 + 48) = v3;
  *(v3 + 56) = 0;
  *(v3 + 152) = 0;
  *(v3 + 64) = 0;
  *(v3 + 80) = 0;
  v4 = sub_1B98F5138();
  *(v3 + 104) = v4;
  v9 = *(v4 - 8);
  *(v3 + 112) = v9;
  v5 = *(v9 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 56) = a1;
  v6 = *a2;
  *(v3 + 25) = *a2;
  *(v3 + 152) = v6;
  *(v3 + 64) = v2;
  v7 = *(v3 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1B984CF8C, 0);
}

uint64_t sub_1B984CF8C()
{
  v34 = v0;
  v1 = v0[15];
  v19 = v0[14];
  v20 = v0[13];
  v0[6] = v0;
  v2 = sub_1B98F1B1C();
  (*(v19 + 16))(v1, v2, v20);
  v26 = sub_1B98F5118();
  v27 = sub_1B98F5BD8();
  v22 = swift_allocObject();
  *(v22 + 16) = 32;
  v23 = swift_allocObject();
  *(v23 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B984D900;
  *(v21 + 24) = 0;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1B98537FC;
  *(v24 + 24) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  sub_1B98F5F98();
  v25 = v3;

  *v25 = sub_1B98537EC;
  v25[1] = v22;

  v25[2] = sub_1B98537F4;
  v25[3] = v23;

  v25[4] = sub_1B9853808;
  v25[5] = v24;
  sub_1B9851B38();

  if (os_log_type_enabled(v26, v27))
  {
    buf = sub_1B98F5C28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v16 = sub_1B985263C(0);
    v17 = sub_1B985263C(1);
    v29 = buf;
    v30 = v16;
    v31 = v17;
    sub_1B9852690(2, &v29);
    sub_1B9852690(1, &v29);
    v32 = sub_1B98537EC;
    v33 = v22;
    sub_1B98526A4(&v32, &v29, &v30, &v31);
    v32 = sub_1B98537F4;
    v33 = v23;
    sub_1B98526A4(&v32, &v29, &v30, &v31);
    v32 = sub_1B9853808;
    v33 = v24;
    sub_1B98526A4(&v32, &v29, &v30, &v31);
    _os_log_impl(&dword_1B982F000, v26, v27, "%s", buf, 0xCu);
    sub_1B985281C(v16);
    sub_1B985281C(v17);
    sub_1B98F5C08();
  }

  else
  {
  }

  v14 = *(v18 + 25);
  v10 = *(v18 + 120);
  v11 = *(v18 + 104);
  v12 = *(v18 + 96);
  v13 = *(v18 + 88);
  v9 = *(v18 + 112);
  MEMORY[0x1E69E5920](v26);
  (*(v9 + 8))(v10, v11);
  *(v18 + 128) = *(v12 + 16);

  sub_1B98F54D8();
  v28 = v14;
  sub_1B985EEB4(v13, &v28, v18 + 16);
  v4 = *(v18 + 24);
  *(v18 + 32) = *(v18 + 16);
  *(v18 + 40) = v4;
  v5 = *(MEMORY[0x1E69937E0] + 4);
  v6 = swift_task_alloc();
  *(v18 + 136) = v6;
  v7 = sub_1B9853748();
  *v6 = *(v18 + 48);
  v6[1] = sub_1B984D5F0;

  return MEMORY[0x1EEDF2DF0](v18 + 72, v18 + 32, &unk_1F3793CC8, v7);
}

uint64_t sub_1B984D5F0()
{
  v8 = *v1;
  v2 = (*v1)[17];
  v8[6] = *v1;
  v9 = v8 + 6;
  v8[18] = v0;

  if (v0)
  {
    v5 = *v9;
    v4 = sub_1B984D83C;
  }

  else
  {
    v7 = v8[16];
    sub_1B98537C0(v8 + 4);

    v3 = *v9;
    v4 = sub_1B984D788;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0);
}

uint64_t sub_1B984D788()
{
  v1 = v0[15];
  v0[6] = v0;
  v5 = v0[9];
  v0[10] = v5;

  v2 = *(v0[6] + 8);
  v3 = v0[6];

  return v2(v5);
}

uint64_t sub_1B984D83C()
{
  v5 = v0[16];
  v6 = v0[15];
  v0[6] = v0;
  sub_1B98537C0(v0 + 4);

  v1 = *(*(v7 + 48) + 8);
  v2 = *(v7 + 48);
  v3 = *(v7 + 144);

  return v1();
}

uint64_t sub_1B984D930(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 80) = v4;
  *(v5 + 72) = a4;
  *(v5 + 64) = a3;
  *(v5 + 161) = a2 & 1;
  *(v5 + 56) = a1;
  *(v5 + 32) = v5;
  *(v5 + 40) = 0;
  *(v5 + 160) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 48) = 0;
  v6 = *(*(type metadata accessor for BlockedHandle() - 8) + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  updated = type metadata accessor for UpdateServerTrust();
  *(v5 + 96) = updated;
  v8 = *(*(updated - 8) + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  v9 = sub_1B98F5138();
  *(v5 + 112) = v9;
  v13 = *(v9 - 8);
  *(v5 + 120) = v13;
  v10 = *(v13 + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 40) = a1;
  *(v5 + 160) = a2 & 1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  *(v5 + 48) = v4;
  v11 = *(v5 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1B984DB28, 0);
}

uint64_t sub_1B984DB28()
{
  v38 = v0;
  v1 = v0[16];
  v24 = v0[15];
  v25 = v0[14];
  v0[4] = v0;
  v2 = sub_1B98F1B1C();
  (*(v24 + 16))(v1, v2, v25);
  v31 = sub_1B98F5118();
  v32 = sub_1B98F5BD8();
  v27 = swift_allocObject();
  *(v27 + 16) = 32;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1B984E4A4;
  *(v26 + 24) = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1B9853824;
  *(v29 + 24) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  sub_1B98F5F98();
  v30 = v3;

  *v30 = sub_1B9853814;
  v30[1] = v27;

  v30[2] = sub_1B985381C;
  v30[3] = v28;

  v30[4] = sub_1B9853830;
  v30[5] = v29;
  sub_1B9851B38();

  if (os_log_type_enabled(v31, v32))
  {
    buf = sub_1B98F5C28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v21 = sub_1B985263C(0);
    v22 = sub_1B985263C(1);
    v33 = buf;
    v34 = v21;
    v35 = v22;
    sub_1B9852690(2, &v33);
    sub_1B9852690(1, &v33);
    v36 = sub_1B9853814;
    v37 = v27;
    sub_1B98526A4(&v36, &v33, &v34, &v35);
    v36 = sub_1B985381C;
    v37 = v28;
    sub_1B98526A4(&v36, &v33, &v34, &v35);
    v36 = sub_1B9853830;
    v37 = v29;
    sub_1B98526A4(&v36, &v33, &v34, &v35);
    _os_log_impl(&dword_1B982F000, v31, v32, "%s", buf, 0xCu);
    sub_1B985281C(v21);
    sub_1B985281C(v22);
    sub_1B98F5C08();
  }

  else
  {
  }

  v11 = *(v23 + 128);
  v12 = *(v23 + 112);
  v16 = *(v23 + 104);
  v15 = *(v23 + 88);
  v13 = *(v23 + 80);
  v19 = *(v23 + 72);
  v18 = *(v23 + 64);
  v17 = *(v23 + 161);
  v14 = *(v23 + 56);
  v10 = *(v23 + 120);
  MEMORY[0x1E69E5920](v31);
  (*(v10 + 8))(v11, v12);
  *(v23 + 136) = *(v13 + 16);

  sub_1B9833334(v14, v15);
  sub_1B98F54D8();
  sub_1B985EEC8(v15, v17 & 1, v18, v19, v16);
  v4 = *(MEMORY[0x1E69937F0] + 4);
  v5 = swift_task_alloc();
  *(v23 + 144) = v5;
  v6 = sub_1B985383C();
  *v5 = *(v23 + 32);
  v5[1] = sub_1B984E1C4;
  v7 = *(v23 + 104);
  v8 = *(v23 + 96);

  return MEMORY[0x1EEDF2E08](v7, v8, v6);
}

uint64_t sub_1B984E1C4()
{
  v9 = *v1;
  v2 = *(*v1 + 144);
  v9[4] = *v1;
  v10 = v9 + 4;
  v9[19] = v0;

  if (v0)
  {
    v5 = *v10;

    return MEMORY[0x1EEE6DFA0](sub_1B984E3C0, 0);
  }

  else
  {
    v6 = v9[17];
    v7 = v9[16];
    v8 = v9[11];
    sub_1B98538BC(v9[13]);

    v3 = *(*v10 + 8);

    return v3();
  }
}

uint64_t sub_1B984E3C0()
{
  v7 = v0[17];
  v8 = v0[16];
  v1 = v0[13];
  v9 = v0[11];
  v0[4] = v0;
  sub_1B98538BC(v1);

  v2 = v0;
  v3 = *(v0[4] + 8);
  v4 = v0[4];
  v5 = v2[19];

  return v3();
}

uint64_t sub_1B984E4D4(uint64_t a1)
{
  v2[7] = v1;
  v2[6] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v3 = sub_1B98F5138();
  v2[8] = v3;
  v7 = *(v3 - 8);
  v2[9] = v7;
  v4 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[3] = a1;
  v2[4] = v1;
  v5 = v2[2];

  return MEMORY[0x1EEE6DFA0](sub_1B984E5EC, 0);
}

uint64_t sub_1B984E5EC()
{
  v31 = v0;
  v1 = v0[10];
  v17 = v0[9];
  v18 = v0[8];
  v0[2] = v0;
  v2 = sub_1B98F1B1C();
  (*(v17 + 16))(v1, v2, v18);
  v24 = sub_1B98F5118();
  v25 = sub_1B98F5BD8();
  v20 = swift_allocObject();
  *(v20 + 16) = 32;
  v21 = swift_allocObject();
  *(v21 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B984EE84;
  *(v19 + 24) = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1B98539B0;
  *(v22 + 24) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  sub_1B98F5F98();
  v23 = v3;

  *v23 = sub_1B98539A0;
  v23[1] = v20;

  v23[2] = sub_1B98539A8;
  v23[3] = v21;

  v23[4] = sub_1B98539BC;
  v23[5] = v22;
  sub_1B9851B38();

  if (os_log_type_enabled(v24, v25))
  {
    buf = sub_1B98F5C28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v14 = sub_1B985263C(0);
    v15 = sub_1B985263C(1);
    v26 = buf;
    v27 = v14;
    v28 = v15;
    sub_1B9852690(2, &v26);
    sub_1B9852690(1, &v26);
    v29 = sub_1B98539A0;
    v30 = v20;
    sub_1B98526A4(&v29, &v26, &v27, &v28);
    v29 = sub_1B98539A8;
    v30 = v21;
    sub_1B98526A4(&v29, &v26, &v27, &v28);
    v29 = sub_1B98539BC;
    v30 = v22;
    sub_1B98526A4(&v29, &v26, &v27, &v28);
    _os_log_impl(&dword_1B982F000, v24, v25, "%s", buf, 0xCu);
    sub_1B985281C(v14);
    sub_1B985281C(v15);
    sub_1B98F5C08();
  }

  else
  {
  }

  v9 = v16[10];
  v10 = v16[8];
  v11 = v16[7];
  v12 = v16[6];
  v8 = v16[9];
  MEMORY[0x1E69E5920](v24);
  (*(v8 + 8))(v9, v10);
  v16[11] = *(v11 + 16);

  sub_1B98F54D8();
  v16[5] = nullsub_8(v12);
  v4 = *(MEMORY[0x1E69937F0] + 4);
  v5 = swift_task_alloc();
  v16[12] = v5;
  v6 = sub_1B98539C8();
  *v5 = v16[2];
  v5[1] = sub_1B984EBF8;

  return MEMORY[0x1EEDF2E08](v16 + 5, &unk_1F3793FA0, v6);
}

uint64_t sub_1B984EBF8()
{
  v8 = *v1;
  v2 = *(*v1 + 96);
  v8[2] = *v1;
  v9 = v8 + 2;
  v8[13] = v0;

  if (v0)
  {
    v5 = *v9;

    return MEMORY[0x1EEE6DFA0](sub_1B984EDC8, 0);
  }

  else
  {
    v6 = v8[11];
    v7 = v8[10];
    sub_1B9853A40(v8 + 5);

    v3 = *(*v9 + 8);

    return v3();
  }
}

uint64_t sub_1B984EDC8()
{
  v5 = v0[11];
  v6 = v0[10];
  v0[2] = v0;
  sub_1B9853A40(v0 + 5);

  v1 = *(*(v7 + 16) + 8);
  v2 = *(v7 + 16);
  v3 = *(v7 + 104);

  return v1();
}

uint64_t sub_1B984EEB4(uint64_t a1)
{
  v2[7] = v1;
  v2[6] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v3 = sub_1B98F5138();
  v2[8] = v3;
  v7 = *(v3 - 8);
  v2[9] = v7;
  v4 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[3] = a1;
  v2[4] = v1;
  v5 = v2[2];

  return MEMORY[0x1EEE6DFA0](sub_1B984EFCC, 0);
}

uint64_t sub_1B984EFCC()
{
  v31 = v0;
  v1 = v0[10];
  v17 = v0[9];
  v18 = v0[8];
  v0[2] = v0;
  v2 = sub_1B98F1B1C();
  (*(v17 + 16))(v1, v2, v18);
  v24 = sub_1B98F5118();
  v25 = sub_1B98F5BD8();
  v20 = swift_allocObject();
  *(v20 + 16) = 32;
  v21 = swift_allocObject();
  *(v21 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B984F864;
  *(v19 + 24) = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1B9853A7C;
  *(v22 + 24) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  sub_1B98F5F98();
  v23 = v3;

  *v23 = sub_1B9853A6C;
  v23[1] = v20;

  v23[2] = sub_1B9853A74;
  v23[3] = v21;

  v23[4] = sub_1B9853A88;
  v23[5] = v22;
  sub_1B9851B38();

  if (os_log_type_enabled(v24, v25))
  {
    buf = sub_1B98F5C28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v14 = sub_1B985263C(0);
    v15 = sub_1B985263C(1);
    v26 = buf;
    v27 = v14;
    v28 = v15;
    sub_1B9852690(2, &v26);
    sub_1B9852690(1, &v26);
    v29 = sub_1B9853A6C;
    v30 = v20;
    sub_1B98526A4(&v29, &v26, &v27, &v28);
    v29 = sub_1B9853A74;
    v30 = v21;
    sub_1B98526A4(&v29, &v26, &v27, &v28);
    v29 = sub_1B9853A88;
    v30 = v22;
    sub_1B98526A4(&v29, &v26, &v27, &v28);
    _os_log_impl(&dword_1B982F000, v24, v25, "%s", buf, 0xCu);
    sub_1B985281C(v14);
    sub_1B985281C(v15);
    sub_1B98F5C08();
  }

  else
  {
  }

  v9 = v16[10];
  v10 = v16[8];
  v11 = v16[7];
  v12 = v16[6];
  v8 = v16[9];
  MEMORY[0x1E69E5920](v24);
  (*(v8 + 8))(v9, v10);
  v16[11] = *(v11 + 16);

  sub_1B98F54D8();
  v16[5] = nullsub_9(v12);
  v4 = *(MEMORY[0x1E69937F0] + 4);
  v5 = swift_task_alloc();
  v16[12] = v5;
  v6 = sub_1B9853A94();
  *v5 = v16[2];
  v5[1] = sub_1B984F5D8;

  return MEMORY[0x1EEDF2E08](v16 + 5, &unk_1F3794058, v6);
}

uint64_t sub_1B984F5D8()
{
  v8 = *v1;
  v2 = *(*v1 + 96);
  v8[2] = *v1;
  v9 = v8 + 2;
  v8[13] = v0;

  if (v0)
  {
    v5 = *v9;

    return MEMORY[0x1EEE6DFA0](sub_1B984F7A8, 0);
  }

  else
  {
    v6 = v8[11];
    v7 = v8[10];
    sub_1B9853B0C(v8 + 5);

    v3 = *(*v9 + 8);

    return v3();
  }
}

uint64_t sub_1B984F7A8()
{
  v5 = v0[11];
  v6 = v0[10];
  v0[2] = v0;
  sub_1B9853B0C(v0 + 5);

  v1 = *(*(v7 + 16) + 8);
  v2 = *(v7 + 16);
  v3 = *(v7 + 104);

  return v1();
}

uint64_t sub_1B984F894(uint64_t a1)
{
  v2[7] = v1;
  v2[6] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v3 = sub_1B98F5138();
  v2[8] = v3;
  v7 = *(v3 - 8);
  v2[9] = v7;
  v4 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[3] = a1;
  v2[4] = v1;
  v5 = v2[2];

  return MEMORY[0x1EEE6DFA0](sub_1B984F9AC, 0);
}

uint64_t sub_1B984F9AC()
{
  v31 = v0;
  v1 = v0[10];
  v17 = v0[9];
  v18 = v0[8];
  v0[2] = v0;
  v2 = sub_1B98F1B1C();
  (*(v17 + 16))(v1, v2, v18);
  v24 = sub_1B98F5118();
  v25 = sub_1B98F5BD8();
  v20 = swift_allocObject();
  *(v20 + 16) = 32;
  v21 = swift_allocObject();
  *(v21 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B9850244;
  *(v19 + 24) = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1B9853B48;
  *(v22 + 24) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  sub_1B98F5F98();
  v23 = v3;

  *v23 = sub_1B9853B38;
  v23[1] = v20;

  v23[2] = sub_1B9853B40;
  v23[3] = v21;

  v23[4] = sub_1B9853B54;
  v23[5] = v22;
  sub_1B9851B38();

  if (os_log_type_enabled(v24, v25))
  {
    buf = sub_1B98F5C28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v14 = sub_1B985263C(0);
    v15 = sub_1B985263C(1);
    v26 = buf;
    v27 = v14;
    v28 = v15;
    sub_1B9852690(2, &v26);
    sub_1B9852690(1, &v26);
    v29 = sub_1B9853B38;
    v30 = v20;
    sub_1B98526A4(&v29, &v26, &v27, &v28);
    v29 = sub_1B9853B40;
    v30 = v21;
    sub_1B98526A4(&v29, &v26, &v27, &v28);
    v29 = sub_1B9853B54;
    v30 = v22;
    sub_1B98526A4(&v29, &v26, &v27, &v28);
    _os_log_impl(&dword_1B982F000, v24, v25, "%s", buf, 0xCu);
    sub_1B985281C(v14);
    sub_1B985281C(v15);
    sub_1B98F5C08();
  }

  else
  {
  }

  v9 = v16[10];
  v10 = v16[8];
  v11 = v16[7];
  v12 = v16[6];
  v8 = v16[9];
  MEMORY[0x1E69E5920](v24);
  (*(v8 + 8))(v9, v10);
  v16[11] = *(v11 + 16);

  sub_1B98F54D8();
  v16[5] = nullsub_10(v12);
  v4 = *(MEMORY[0x1E69937F0] + 4);
  v5 = swift_task_alloc();
  v16[12] = v5;
  v6 = sub_1B9853B60();
  *v5 = v16[2];
  v5[1] = sub_1B984FFB8;

  return MEMORY[0x1EEDF2E08](v16 + 5, &unk_1F3794110, v6);
}

uint64_t sub_1B984FFB8()
{
  v8 = *v1;
  v2 = *(*v1 + 96);
  v8[2] = *v1;
  v9 = v8 + 2;
  v8[13] = v0;

  if (v0)
  {
    v5 = *v9;

    return MEMORY[0x1EEE6DFA0](sub_1B9850188, 0);
  }

  else
  {
    v6 = v8[11];
    v7 = v8[10];
    sub_1B9853BD8(v8 + 5);

    v3 = *(*v9 + 8);

    return v3();
  }
}

uint64_t sub_1B9850188()
{
  v5 = v0[11];
  v6 = v0[10];
  v0[2] = v0;
  sub_1B9853BD8(v0 + 5);

  v1 = *(*(v7 + 16) + 8);
  v2 = *(v7 + 16);
  v3 = *(v7 + 104);

  return v1();
}

uint64_t sub_1B9850274()
{
  v41 = sub_1B98508D4;
  v44 = sub_1B9853C14;
  v46 = sub_1B9853C04;
  v48 = sub_1B9853C0C;
  v51 = sub_1B9853C20;
  v64 = 0;
  v62 = 0;
  v39 = sub_1B98F5138();
  v37 = *(v39 - 8);
  v38 = v39 - 8;
  v35 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39, v0);
  v1 = v18 - v35;
  v36 = v18 - v35;
  v64 = v2;
  v3 = sub_1B98F1B1C();
  (*(v37 + 16))(v1, v3, v39);
  v55 = sub_1B98F5118();
  v56 = sub_1B98F5BD8();
  v40 = 17;
  v43 = 7;
  v47 = swift_allocObject();
  *(v47 + 16) = 32;
  v49 = swift_allocObject();
  *(v49 + 16) = 8;
  v42 = 32;
  v4 = swift_allocObject();
  v45 = v4;
  *(v4 + 16) = v41;
  *(v4 + 24) = 0;
  v5 = swift_allocObject();
  v6 = v45;
  v52 = v5;
  *(v5 + 16) = v44;
  *(v5 + 24) = v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v50 = sub_1B98F5F98();
  v53 = v7;

  v8 = v47;
  v9 = v53;
  *v53 = v46;
  v9[1] = v8;

  v10 = v49;
  v11 = v53;
  v53[2] = v48;
  v11[3] = v10;

  v12 = v52;
  v13 = v53;
  v53[4] = v51;
  v13[5] = v12;
  sub_1B9851B38();

  if (os_log_type_enabled(v55, v56))
  {
    v26 = sub_1B98F5C28();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v27 = sub_1B985263C(0);
    v28 = sub_1B985263C(1);
    v29 = &v61;
    v61 = v26;
    v30 = &v60;
    v60 = v27;
    v31 = &v59;
    v59 = v28;
    sub_1B9852690(2, &v61);
    sub_1B9852690(1, v29);
    v14 = v33;
    v57 = v46;
    v58 = v47;
    sub_1B98526A4(&v57, v29, v30, v31);
    v32 = v14;
    if (v14)
    {

      __break(1u);
    }

    else
    {
      v57 = v48;
      v58 = v49;
      sub_1B98526A4(&v57, &v61, &v60, &v59);
      v23 = 0;
      v57 = v51;
      v58 = v52;
      sub_1B98526A4(&v57, &v61, &v60, &v59);
      v22 = 0;
      _os_log_impl(&dword_1B982F000, v55, v56, "%s", v26, 0xCu);
      sub_1B985281C(v27);
      sub_1B985281C(v28);
      sub_1B98F5C08();

      v24 = v22;
    }
  }

  else
  {

    v24 = v33;
  }

  v19 = v24;
  MEMORY[0x1E69E5920](v55);
  (*(v37 + 8))(v36, v39);
  v18[1] = *(v34 + 16);

  nullsub_11(v15);
  sub_1B9853C2C();
  v16 = v19;
  sub_1B98F5208();
  v20 = v16;
  v21 = v16;
  if (v16)
  {
    v18[0] = v21;

    return (&vars0 - 144) & 1;
  }

  else
  {

    v62 = v63 & 1;
    return v63 & 1;
  }
}

uint64_t sub_1B9850904()
{
  v1 = *(v0 + 16);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4FF8, &qword_1B98F8B20);
  (*(*(v2 - 8) + 8))(v0 + 24);
  return v4;
}

_BYTE *sub_1B9850980()
{
  v2 = *v0;
  v5 = sub_1B984A504();
  if (v1)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1B98509E4(uint64_t a1)
{
  v3 = *v1;
  v5 = sub_1B9832738(a1);
  if (v2)
  {
    return v2 & 1;
  }

  else
  {
    return v5 & 1;
  }
}

uint64_t sub_1B9850A4C(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B9850B04;

  return sub_1B984ABB4(a1);
}

uint64_t sub_1B9850B04(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  *(v3 + 16) = *v2;
  v9 = v3 + 16;

  if (v1)
  {
    v6 = *(*v9 + 8);
  }

  else
  {
    v5 = a1;
    v6 = *(*v9 + 8);
  }

  return v6(v5);
}

uint64_t sub_1B9850C98(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v7 = sub_1B984B964(a1, a2);
  if (v3)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1B9850CFC(uint64_t a1, char *a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B9850DBC;

  return sub_1B984C21C(a1, a2);
}

uint64_t sub_1B9850DBC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  *(v3 + 16) = *v2;
  v9 = v3 + 16;

  if (v1)
  {
    v6 = *(*v9 + 8);
  }

  else
  {
    v5 = a1;
    v6 = *(*v9 + 8);
  }

  return v6(v5);
}

uint64_t sub_1B9850F50(uint64_t a1, char *a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B9851010;

  return sub_1B984CE4C(a1, a2);
}

uint64_t sub_1B9851010(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  *(v3 + 16) = *v2;
  v9 = v3 + 16;

  if (v1)
  {
    v6 = *(*v9 + 8);
  }

  else
  {
    v5 = a1;
    v6 = *(*v9 + 8);
  }

  return v6(v5);
}

uint64_t sub_1B98511A4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = v5;
  *(v5 + 16) = v5;
  v6 = *v4;
  v7 = swift_task_alloc();
  *(v9 + 24) = v7;
  *v7 = *(v9 + 16);
  v7[1] = sub_1B9851278;

  return sub_1B984D930(a1, a2 & 1, a3, a4);
}

uint64_t sub_1B9851278()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(v2 + 16) = *v1;
  v6 = v2 + 16;

  if (v0)
  {
    v4 = *(*v6 + 8);
  }

  else
  {
    v4 = *(*v6 + 8);
  }

  return v4();
}

uint64_t sub_1B9851404(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B98514BC;

  return sub_1B984E4D4(a1);
}

uint64_t sub_1B98514BC()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(v2 + 16) = *v1;
  v6 = v2 + 16;

  if (v0)
  {
    v4 = *(*v6 + 8);
  }

  else
  {
    v4 = *(*v6 + 8);
  }

  return v4();
}

uint64_t sub_1B9851648(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B9851700;

  return sub_1B984EEB4(a1);
}

uint64_t sub_1B9851700()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(v2 + 16) = *v1;
  v6 = v2 + 16;

  if (v0)
  {
    v4 = *(*v6 + 8);
  }

  else
  {
    v4 = *(*v6 + 8);
  }

  return v4();
}

uint64_t sub_1B985188C(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B9851944;

  return sub_1B984F894(a1);
}

uint64_t sub_1B9851944()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(v2 + 16) = *v1;
  v6 = v2 + 16;

  if (v0)
  {
    v4 = *(*v6 + 8);
  }

  else
  {
    v4 = *(*v6 + 8);
  }

  return v4();
}
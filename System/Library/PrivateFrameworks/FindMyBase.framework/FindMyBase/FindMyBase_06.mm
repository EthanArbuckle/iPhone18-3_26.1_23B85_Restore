uint64_t sub_1DF622154@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  if (*(v3 + 40) <= *(v1 + 24))
  {
    v6 = *(v3 + 24);
    result = sub_1DF633C1C();
  }

  else
  {
    result = 0;
    v5 = 0;
  }

  *a1 = result;
  a1[1] = v5;
  return result;
}

double sub_1DF6221B0@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(&v7);
  if (!v2)
  {
    result = *&v7;
    *a1 = v7;
  }

  return result;
}

void *sub_1DF622214@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
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

uint64_t sub_1DF622324(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF622344(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

uint64_t AsyncSequence.collect()(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF6223B4, 0, 0);
}

uint64_t sub_1DF6223B4()
{
  v1 = v0[4];
  v2 = v0[5];
  swift_getAssociatedTypeWitness();
  v0[3] = sub_1DF6327EC();
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x1E69E8748] + 4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = sub_1DF632DEC();
  *v5 = v0;
  v5[1] = sub_1DF6224D8;
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[4];

  return MEMORY[0x1EEE6DB28](v0 + 2, v0 + 3, &unk_1DF63D460, v3, v9, v6, v7);
}

uint64_t sub_1DF6224D8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1DF5D44C4;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1DF6225F4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DF622610(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[4] = AssociatedTypeWitness;
  v4 = *(AssociatedTypeWitness - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF6226E8, 0, 0);
}

uint64_t sub_1DF6226E8()
{
  v1 = v0[2];
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  sub_1DF632DEC();
  sub_1DF632DBC();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1DF622790(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DF59D2C8;

  return sub_1DF622610(a1, a2);
}

uint64_t AsyncSequence.first()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF622864, 0, 0);
}

uint64_t sub_1DF622864()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x1E69E8740] + 4);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1DF622930;
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  return MEMORY[0x1EEE6DB20](v6, &unk_1DF63D478, v1, v7, v4);
}

uint64_t sub_1DF622930()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF622A6C, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1DF622A6C()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_1DF622AEC()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DF5A902C;

  return sub_1DF622AD0();
}

uint64_t Feature.FindMy.hashValue.getter()
{
  v1 = *v0;
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](v1);
  return sub_1DF633AAC();
}

unint64_t sub_1DF622D40()
{
  result = qword_1ECE43680;
  if (!qword_1ECE43680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43680);
  }

  return result;
}

unint64_t sub_1DF622D98()
{
  result = qword_1ECE43688;
  if (!qword_1ECE43688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43688);
  }

  return result;
}

unint64_t sub_1DF622DF0()
{
  result = qword_1ECE43690;
  if (!qword_1ECE43690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43690);
  }

  return result;
}

unint64_t sub_1DF622E48()
{
  result = qword_1ECE43698;
  if (!qword_1ECE43698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43698);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Feature.FindMy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDA)
  {
    goto LABEL_17;
  }

  if (a2 + 38 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 38) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 38;
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

      return (*a1 | (v4 << 8)) - 38;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 38;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x27;
  v8 = v6 - 39;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Feature.FindMy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 38 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 38) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDA)
  {
    v4 = 0;
  }

  if (a2 > 0xD9)
  {
    v5 = ((a2 - 218) >> 8) + 1;
    *result = a2 + 38;
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
    *result = a2 + 38;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t Result.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 8))(v8, a1);
    return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 - 8);
    (*(v11 + 32))(a2, v8, v10);
    return (*(v11 + 56))(a2, 0, 1, v10);
  }
}

uint64_t Result.error.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *(a1 + 24);
    v10 = *(v9 - 8);
    (*(v10 + 32))(a2, v8, v9);
    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  else
  {
    (*(v4 + 8))(v8, a1);
    return (*(*(*(a1 + 24) - 8) + 56))(a2, 1, 1);
  }
}

uint64_t BinaryDecodingError.hashValue.getter()
{
  v1 = *v0;
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](v1);
  return sub_1DF633AAC();
}

uint64_t RawRepresentable<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v33 = a4;
  v29 = a5;
  v8 = sub_1DF63327C();
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v27 - v10;
  v30 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  v12 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  (*(v19 + 8))(v34, v18, v19);
  v20 = v35;
  v21 = v36;
  __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
  v22 = v37;
  (*(v21 + 24))(AssociatedTypeWitness, AssociatedTypeWitness, v33, v20, v21);
  if (!v22)
  {
    (*(v32 + 16))(v14, v17, AssociatedTypeWitness);
    v23 = v31;
    sub_1DF632CBC();
    v24 = *(a2 - 8);
    if ((*(v24 + 48))(v23, 1, a2) == 1)
    {
      (*(v28 + 8))(v31, v8);
      sub_1DF5E3264();
      swift_allocError();
      *v25 = 0;
      swift_willThrow();
      (*(v32 + 8))(v17, AssociatedTypeWitness);
    }

    else
    {
      (*(v32 + 8))(v17, AssociatedTypeWitness);
      (*(v24 + 32))(v29, v31, a2);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v34);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RawRepresentable<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v33 = a3;
  v30 = a4;
  v7 = sub_1DF63327C();
  v8 = *(v7 - 8);
  v31 = v7;
  v32 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v29 - v10;
  v11 = sub_1DF632A1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  (*(v16 + 8))(v36, v17, v16);
  sub_1DF6329EC();
  v18 = v37;
  v19 = v38;
  __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
  v20 = (*(v19 + 16))(v15, v18, v19);
  if (v4)
  {
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    v22 = v20;
    v23 = v21;
    v24 = v32;
    (*(v12 + 8))(v15, v11);
    v34 = v22;
    v35 = v23;
    v25 = v39;
    sub_1DF632CBC();
    v26 = *(a2 - 8);
    if ((*(v26 + 48))(v25, 1, a2) == 1)
    {
      (*(v24 + 8))(v25, v31);
      sub_1DF5E3264();
      swift_allocError();
      *v27 = 0;
      swift_willThrow();
    }

    else
    {
      (*(v26 + 32))(v30, v25, a2);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v36);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DF623AB8()
{
  result = qword_1ECE436A0;
  if (!qword_1ECE436A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE436A0);
  }

  return result;
}

uint64_t dispatch thunk of BinaryDecodingContaining.decode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 24))();
}

{
  return (*(a5 + 32))();
}

uint64_t sub_1DF623C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1DF59CC98(a3, v24 - v10, &qword_1ECE42C10, &qword_1DF63B260);
  v12 = sub_1DF632E9C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DF59CB50(v11, &qword_1ECE42C10, &qword_1DF63B260);
  }

  else
  {
    sub_1DF632E8C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1DF632E1C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1DF632A7C() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1DF59CB50(a3, &qword_1ECE42C10, &qword_1DF63B260);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DF59CB50(a3, &qword_1ECE42C10, &qword_1DF63B260);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1DF623EE0()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ED8E6988);
  v1 = __swift_project_value_buffer(v0, qword_1ED8E6988);
  if (qword_1ED8E5990 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED8E69B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t XPCSessionManager.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF5A459C;

  return XPCSessionManager.init(name:)(a1, a2);
}

uint64_t XPCSessionManager.init(name:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF624084, 0, 0);
}

uint64_t sub_1DF624084()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  swift_defaultActor_initialize();
  v4 = MEMORY[0x1E69E7CC8];
  *(v2 + 128) = 0;
  *(v2 + 136) = v4;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 112) = v3;
  *(v2 + 120) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1DF624114, v2, 0);
}

uint64_t sub_1DF624114()
{
  receiver = v0[3].receiver;
  v2 = type metadata accessor for XPCSessionManager.DelegateTrampoline();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtCC10FindMyBase17XPCSessionManagerP33_A03603F91824D587CF1B3EB0B5E03C5F18DelegateTrampoline_sessionManager] = receiver;
  swift_unownedRetain();
  v0[1].receiver = v3;
  v0[1].super_class = v2;
  v4 = objc_msgSendSuper2(v0 + 1, sel_init);
  v5 = receiver[16];
  receiver[16] = v4;

  super_class = v0->super_class;
  v7 = v0[3].receiver;

  return super_class(v7);
}

uint64_t sub_1DF6241EC(uint64_t *a1)
{
  v2 = v1;
  if (qword_1ED8E4D08 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF6326AC();
  __swift_project_value_buffer(v4, qword_1ED8E6988);
  sub_1DF5A7C78(a1, v22);

  v5 = sub_1DF63268C();
  v6 = sub_1DF63318C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21[0] = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_1DF59EEC8(v2[14], v2[15], v21);
    *(v7 + 12) = 2082;
    v9 = v22[0];
    v10 = v22[1];

    sub_1DF5A8528(v22);
    v11 = sub_1DF59EEC8(v9, v10, v21);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_1DF59A000, v5, v6, "XPCSessionManager(%{public}s: Registering Mach Service: [%{public}s]", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v8, -1, -1);
    MEMORY[0x1E12D9D80](v7, -1, -1);
  }

  else
  {

    sub_1DF5A8528(v22);
  }

  v12 = *a1;
  v13 = a1[1];
  v14 = objc_allocWithZone(MEMORY[0x1E696B0D8]);
  v15 = sub_1DF63295C();
  v16 = [v14 initWithMachServiceName_];

  sub_1DF5A7C78(a1, v22);
  v22[13] = v16;
  v18 = *a1;
  v17 = a1[1];
  sub_1DF5A7C1C(v22, v21);
  swift_beginAccess();
  v19 = v16;

  sub_1DF5C5E10(v21, v18, v17);
  swift_endAccess();
  [v19 setDelegate_];
  [v19 resume];

  return sub_1DF5A84F8(v22);
}

void sub_1DF624480()
{
  swift_beginAccess();
  v32 = v0;
  v1 = *(v0 + 136);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v33 = (v3 + 63) >> 6;
  v35 = v1;

  v6 = 0;
  v34 = v2;
  if (v5)
  {
    while (1)
    {
      v7 = v6;
LABEL_12:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = v10 | (v7 << 6);
      v12 = (*(v35 + 48) + 16 * v11);
      v13 = v12[1];
      v43 = *v12;
      sub_1DF5A7C1C(*(v35 + 56) + 112 * v11, v44);
      v41 = v44[1];
      v42 = v44[0];
      v39 = v44[3];
      v40 = v44[2];
      v37 = v44[5];
      v38 = v44[4];
      v14 = v44[7];
      v36 = v44[6];
      v15 = v44[8];
      v16 = v44[9];
      v18 = v44[10];
      v17 = v44[11];
      v19 = v44[12];
      v20 = v44[13];

      v21 = v41;
      v22 = v42;
      v23 = v39;
      v24 = v40;
      v25 = v37;
      v26 = v38;
      v27 = v36;
      v28 = v17;
      v29 = v43;
      v2 = v34;
LABEL_13:
      v44[14] = v29;
      v44[15] = v13;
      v45[0] = v22;
      v45[1] = v21;
      v45[2] = v24;
      v45[3] = v23;
      v45[4] = v26;
      v45[5] = v25;
      v45[6] = v27;
      v45[7] = v14;
      v45[8] = v15;
      v45[9] = v16;
      v45[10] = v18;
      v45[11] = v28;
      v45[12] = v19;
      v46 = v20;
      if (!v13)
      {
        break;
      }

      v30 = v46;
      sub_1DF5A84F8(v45);
      [v30 invalidate];

      v6 = v7;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v31 = *(v32 + 136);
    *(v32 + 136) = MEMORY[0x1E69E7CC8];
  }

  else
  {
LABEL_5:
    if (v33 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    else
    {
      v8 = v33;
    }

    v9 = v8 - 1;
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v33)
      {
        v20 = 0;
        v19 = 0;
        v28 = 0;
        v18 = 0;
        v16 = 0;
        v15 = 0;
        v14 = 0;
        v27 = 0;
        v25 = 0;
        v26 = 0;
        v23 = 0;
        v24 = 0;
        v21 = 0;
        v22 = 0;
        v13 = 0;
        v29 = 0;
        v5 = 0;
        v7 = v9;
        goto LABEL_13;
      }

      v5 = *(v2 + 8 * v7);
      ++v6;
      if (v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1DF6246BC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 144);
  v4 = *(v2 + 152);
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;

  return sub_1DF5A83BC(v3);
}

uint64_t sub_1DF624708(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 160);
  v4 = *(v2 + 168);
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;

  return sub_1DF5A83BC(v3);
}

uint64_t XPCSessionManager.deinit()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);

  v3 = *(v0 + 152);
  sub_1DF5A83BC(*(v0 + 144));
  v4 = *(v0 + 168);
  sub_1DF5A83BC(*(v0 + 160));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t XPCSessionManager.__deallocating_deinit()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);

  v3 = *(v0 + 152);
  sub_1DF5A83BC(*(v0 + 144));
  v4 = *(v0 + 168);
  sub_1DF5A83BC(*(v0 + 160));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

void NSXPCConnection.machServiceName.getter(uint64_t *a1@<X8>)
{
  v3 = [v1 serviceName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1DF63298C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
}

uint64_t sub_1DF624868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DF624888, a4, 0);
}

uint64_t sub_1DF624888()
{
  v1 = *(v0 + 16);
  sub_1DF6248E8(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

void sub_1DF6248E8(void *a1)
{
  v3 = *(v1 + 144);
  if (v3)
  {
    v4 = *(v1 + 152);

    v3(a1);

    sub_1DF5A83BC(v3);
  }

  else
  {
    if (qword_1ED8E4D08 != -1)
    {
      swift_once();
    }

    v5 = sub_1DF6326AC();
    __swift_project_value_buffer(v5, qword_1ED8E6988);
    v6 = a1;
    oslog = sub_1DF63268C();
    v7 = sub_1DF63318C();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v6;
      *v9 = v6;
      v10 = v6;
      _os_log_impl(&dword_1DF59A000, oslog, v7, "Connection interrupted: %@", v8, 0xCu);
      sub_1DF59CB50(v9, &qword_1ECE42AF0, &qword_1DF63ABC0);
      MEMORY[0x1E12D9D80](v9, -1, -1);
      MEMORY[0x1E12D9D80](v8, -1, -1);
    }
  }
}

uint64_t sub_1DF624A80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = sub_1DF632E9C();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v11;
    v13[5] = a2;
    v14 = a2;
    sub_1DF5CE7F8(0, 0, v9, a4, v13);
  }

  return result;
}

uint64_t sub_1DF624BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DF624BD0, a4, 0);
}

uint64_t sub_1DF624BD0()
{
  v1 = *(v0 + 16);
  sub_1DF624C30(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

void sub_1DF624C30(void *a1)
{
  v3 = *(v1 + 160);
  if (v3)
  {
    v4 = *(v1 + 168);

    v3(a1);

    sub_1DF5A83BC(v3);
  }

  else
  {
    if (qword_1ED8E4D08 != -1)
    {
      swift_once();
    }

    v5 = sub_1DF6326AC();
    __swift_project_value_buffer(v5, qword_1ED8E6988);
    v6 = a1;
    oslog = sub_1DF63268C();
    v7 = sub_1DF63318C();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v6;
      *v9 = v6;
      v10 = v6;
      _os_log_impl(&dword_1DF59A000, oslog, v7, "Connection invalidated: %@", v8, 0xCu);
      sub_1DF59CB50(v9, &qword_1ECE42AF0, &qword_1DF63ABC0);
      MEMORY[0x1E12D9D80](v9, -1, -1);
      MEMORY[0x1E12D9D80](v8, -1, -1);
    }
  }
}

uint64_t sub_1DF624DC8@<X0>(uint64_t a1@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *v1;
  v3 = sub_1DF5B2644(&v8, &v9);
  v5 = v4;
  sub_1DF5B1CE8(v3, v4, a1);
  result = sub_1DF5B33C0(v3, v5);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1DF624E88()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DF624ED0()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ED8E69B8);
  __swift_project_value_buffer(v0, qword_1ED8E69B8);
  return sub_1DF63269C();
}

unint64_t sub_1DF624F50()
{
  result = qword_1ECE424E8;
  if (!qword_1ECE424E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE424E8);
  }

  return result;
}

unint64_t sub_1DF624FA8()
{
  result = qword_1ED8E6150;
  if (!qword_1ED8E6150)
  {
    sub_1DF6325AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E6150);
  }

  return result;
}

uint64_t dispatch thunk of XPCSessionManager.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 224);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DF5A459C;

  return v10(a1, a2);
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1DF625224(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1DF62526C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_25Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF625388(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DF6253EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF59D2C8;

  return sub_1DF624BB0(a1, v4, v5, v7, v6);
}

uint64_t sub_1DF6254AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF59D2C4;

  return sub_1DF624868(a1, v4, v5, v7, v6);
}

uint64_t sub_1DF625570()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ED8E69A0);
  __swift_project_value_buffer(v0, qword_1ED8E69A0);
  return sub_1DF63269C();
}

uint64_t sub_1DF6255DC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DF63242C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2 >> 62 == 2)
  {
    v9 = *(a1 + 16);
  }

  sub_1DF5A3A94(a1, a2);
  sub_1DF63243C();
  sub_1DF5B3254(&qword_1ECE42368, MEMORY[0x1E6969050]);
  do
  {
    sub_1DF63329C();
    v10 = v13;
  }

  while ((v13 & 1) == 0 && !v12[14]);
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t MACAddress.AddressType.description.getter(char a1)
{
  if (a1)
  {
    return 0x6D6F646E61722ELL;
  }

  else
  {
    return 0x63696C6275702ELL;
  }
}

FindMyBase::MACAddress::AddressType_optional __swiftcall MACAddress.AddressType.init(rawValue:)(Swift::UInt8 rawValue)
{
  if (rawValue == 1)
  {
    v1.value = FindMyBase_MACAddress_AddressType_random;
  }

  else
  {
    v1.value = FindMyBase_MACAddress_AddressType_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF625854()
{
  if (*v0)
  {
    return 0x6D6F646E61722ELL;
  }

  else
  {
    return 0x63696C6275702ELL;
  }
}

double MACAddress.init(string:type:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1DF6258F4(a1, a2, a3 & 1, &v7);

  v5 = v8;
  if (v8 != 2)
  {
    v5 = v8 & 1;
  }

  result = *&v7;
  *a4 = v7;
  *(a4 + 16) = v5;
  return result;
}

uint64_t sub_1DF6258F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1DF63209C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v21 - v14;
  sub_1DF63207C();
  sub_1DF63208C();
  if (a2)
  {
    v21[0] = a1;
    v21[1] = a2;
    sub_1DF5BC6B8();
    v21[0] = sub_1DF6332AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE425C0, &qword_1DF637D10);
    sub_1DF5BC754();
    sub_1DF6328DC();

    if (sub_1DF632ADC() == 12)
    {
      v16 = sub_1DF5BFA40();
      if (v17 >> 60 != 15)
      {
        MACAddress.init(data:type:)(v16, v17, a3 & 1, a4);
        v18 = *(v9 + 8);
        v18(v13, v8);
        return (v18)(v15, v8);
      }
    }

    else
    {
    }
  }

  v20 = *(v9 + 8);
  v20(v13, v8);
  result = (v20)(v15, v8);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 2;
  return result;
}

uint64_t MACAddress.init(stringLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  v6 = sub_1DF5BFA40();
  if ((v7 >> 60 == 15 || (MACAddress.init(data:type:)(v6, v7, 1, &v12), v8 = v14, v14 == 2)) && (, sub_1DF6258F4(a1, a2, 1, &v12), , v8 = v14, v14 == 2))
  {
    v12 = 0;
    v13 = 0xE000000000000000;
    sub_1DF63347C();
    MEMORY[0x1E12D82E0](0xD000000000000035, 0x80000001DF636180);
    MEMORY[0x1E12D82E0](a1, a2);
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    result = sub_1DF6336EC();
    __break(1u);
  }

  else
  {
    v10 = v12;
    v9 = v13;

    *a3 = v10;
    *(a3 + 8) = v9;
    *(a3 + 16) = v8 & 1;
  }

  return result;
}

uint64_t MACAddress.bluetoothAddress.getter()
{
  v1 = 0;
  v38 = *MEMORY[0x1E69E9840];
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  v5 = *v0;
  v31 = *v0 >> 32;
  v6 = MEMORY[0x1E69E7CC0];
  v29 = *v0 >> 16;
  v30 = *v0 >> 8;
  v27 = HIDWORD(*v0);
  v28 = *v0 >> 24;
  v25 = HIWORD(*v0);
  v26 = *v0 >> 40;
  v24 = HIBYTE(*v0);
  do
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE431C0, &qword_1DF63B400);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1DF638990;
    if (v4 > 1)
    {
      if (v4 != 2)
      {
        goto LABEL_30;
      }

      if (v1 < *(v2 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
      }

      if (v1 >= *(v2 + 24))
      {
        goto LABEL_27;
      }

      v9 = sub_1DF63211C();
      if (!v9)
      {
        goto LABEL_32;
      }

      v10 = v9;
      v11 = sub_1DF63214C();
      v12 = v1 - v11;
      if (__OFSUB__(v1, v11))
      {
        goto LABEL_29;
      }

      goto LABEL_17;
    }

    if (v4)
    {
      if (v1 < v5 || v1 >= v31)
      {
        goto LABEL_26;
      }

      v13 = sub_1DF63211C();
      if (!v13)
      {
        goto LABEL_31;
      }

      v10 = v13;
      v14 = sub_1DF63214C();
      v12 = v1 - v14;
      if (__OFSUB__(v1, v14))
      {
        goto LABEL_28;
      }

LABEL_17:
      v8 = *(v10 + v12);
      goto LABEL_18;
    }

    if (v1 >= BYTE6(v3))
    {
      goto LABEL_25;
    }

    LOBYTE(v32) = v5;
    BYTE1(v32) = v30;
    BYTE2(v32) = v29;
    BYTE3(v32) = v28;
    BYTE4(v32) = v27;
    BYTE5(v32) = v26;
    BYTE6(v32) = v25;
    HIBYTE(v32) = v24;
    v33 = v3;
    v34 = BYTE2(v3);
    v35 = BYTE3(v3);
    v36 = BYTE4(v3);
    v37 = BYTE5(v3);
    v8 = *(&v32 + v1);
LABEL_18:
    *(v7 + 56) = MEMORY[0x1E69E7508];
    *(v7 + 64) = MEMORY[0x1E69E7558];
    *(v7 + 32) = v8;
    v15 = sub_1DF6329BC();
    v17 = v16;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1DF5C1294(0, *(v6 + 2) + 1, 1, v6);
    }

    v19 = *(v6 + 2);
    v18 = *(v6 + 3);
    if (v19 >= v18 >> 1)
    {
      v6 = sub_1DF5C1294((v18 > 1), v19 + 1, 1, v6);
    }

    *(v6 + 2) = v19 + 1;
    v20 = &v6[16 * v19];
    *(v20 + 4) = v15;
    *(v20 + 5) = v17;
    ++v1;
  }

  while (v1 != 6);
  v32 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE425C0, &qword_1DF637D10);
  sub_1DF5BC754();
  v21 = sub_1DF6328DC();
  swift_bridgeObjectRelease_n();
  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t MACAddress.bluetoothAddressWithType.getter()
{
  v6[2] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = v0[1];
  LOBYTE(v6[0]) = *(v0 + 16);
  v6[0] = sub_1DF5B2744(v6, v6 + 1);
  v6[1] = v3 & 0xFFFFFFFFFFFFFFLL;
  sub_1DF63240C();
  result = v6[0];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MACAddress.udid.getter()
{
  v1 = sub_1DF6327CC();
  v20 = *(v1 - 8);
  v2 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DF63277C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(v0 + 16);
  v25 = 6247490;
  v26 = 0xE300000000000000;
  v21 = *v0;
  v22 = v8;
  v10 = MACAddress.bluetoothAddress.getter();
  MEMORY[0x1E12D82E0](v10);

  v11 = String.utf8Data.getter(v25, v26);
  v13 = v12;

  sub_1DF5B3254(&qword_1ED8E4D98, MEMORY[0x1E6966620]);
  sub_1DF63276C();
  sub_1DF5A3A94(v11, v13);
  sub_1DF5B2A90(v11, v13);
  sub_1DF5B33C0(v11, v13);
  sub_1DF63274C();
  (*(v20 + 8))(v4, v1);
  v23 = v5;
  v24 = sub_1DF5B3254(qword_1ED8E4DA0, MEMORY[0x1E69663E0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
  (*(v6 + 16))(boxed_opaque_existential_1, v9, v5);
  __swift_project_boxed_opaque_existential_1(&v21, v23);
  sub_1DF63222C();
  (*(v6 + 8))(v9, v5);
  v15 = v25;
  v16 = v26;
  __swift_destroy_boxed_opaque_existential_1(&v21);
  sub_1DF5B33C0(v11, v13);
  sub_1DF5B88EC(v15, v16);
  v17 = sub_1DF632A4C();
  sub_1DF5B33C0(v15, v16);

  return v17;
}

uint64_t MACAddress.dataRepresentation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = sub_1DF63206C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1DF63205C();
  sub_1DF6270F0();
  v7 = sub_1DF63204C();

  return v7;
}

double MACAddress.init(dataRepresentation:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1DF63203C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1DF63202C();
  sub_1DF627144();
  sub_1DF63201C();

  sub_1DF5B33C0(a1, a2);
  if (!v3)
  {
    result = *&v11;
    *a3 = v11;
    *(a3 + 16) = v12;
  }

  return result;
}

uint64_t static MACAddress.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  return sub_1DF626F88(*a1, *(a1 + 8), *a2, *(a2 + 8)) & ~(v2 ^ v3) & 1;
}

uint64_t sub_1DF6266A8()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1DF6266CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DF63394C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF63394C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DF6267A8(uint64_t a1)
{
  v2 = sub_1DF627198();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF6267E4(uint64_t a1)
{
  v2 = sub_1DF627198();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MACAddress.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43750, &qword_1DF63DAF8);
  v13 = *(v4 - 8);
  v5 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v16 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF5A3A94(v8, v9);
  sub_1DF627198();
  sub_1DF633AFC();
  v14 = v8;
  v15 = v9;
  v17 = 0;
  sub_1DF5F5AA8();
  sub_1DF63385C();
  sub_1DF5B33C0(v14, v15);
  if (!v2)
  {
    LOBYTE(v14) = v16;
    v17 = 1;
    sub_1DF6271EC();
    sub_1DF63385C();
  }

  return (*(v13 + 8))(v7, v4);
}

uint64_t MACAddress.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1DF6323DC();
  return sub_1DF633A8C();
}

uint64_t MACAddress.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1DF633A6C();
  sub_1DF6323DC();
  sub_1DF633A8C();
  return sub_1DF633AAC();
}

uint64_t MACAddress.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43768, &qword_1DF63DB00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF627198();
  sub_1DF633ADC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = 0;
  sub_1DF5F5C78();
  sub_1DF6337CC();
  v12 = v15[0];
  v11 = v15[1];
  v16 = 1;
  sub_1DF627240();
  sub_1DF6337CC();
  (*(v6 + 8))(v9, v5);
  v13 = v15[0];
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  sub_1DF5A3A94(v12, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DF5B33C0(v12, v11);
}

uint64_t sub_1DF626C9C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1DF633A6C();
  sub_1DF6323DC();
  sub_1DF633A8C();
  return sub_1DF633AAC();
}

uint64_t sub_1DF626D00()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1DF6323DC();
  return sub_1DF633A8C();
}

uint64_t sub_1DF626D38()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1DF633A6C();
  sub_1DF6323DC();
  sub_1DF633A8C();
  return sub_1DF633AAC();
}

double sub_1DF626D9C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1DF63203C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1DF63202C();
  sub_1DF627144();
  sub_1DF63201C();

  sub_1DF5B33C0(a1, a2);
  if (!v3)
  {
    result = *&v11;
    *a3 = v11;
    *(a3 + 16) = v12;
  }

  return result;
}

uint64_t sub_1DF626E64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  return sub_1DF626F88(*a1, *(a1 + 8), *a2, *(a2 + 8)) & ~(v2 ^ v3) & 1;
}

uint64_t sub_1DF626EA8(uint64_t a1, uint64_t a2)
{
  result = sub_1DF63211C();
  if (!result || (result = sub_1DF63214C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1DF63213C();
      sub_1DF6327CC();
      sub_1DF5B3254(&qword_1ED8E4D98, MEMORY[0x1E6966620]);
      return sub_1DF63273C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF626F88(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1DF5A3A94(a3, a4);
          return sub_1DF62D608(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1DF6270F0()
{
  result = qword_1ECE43740;
  if (!qword_1ECE43740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43740);
  }

  return result;
}

unint64_t sub_1DF627144()
{
  result = qword_1ECE43748;
  if (!qword_1ECE43748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43748);
  }

  return result;
}

unint64_t sub_1DF627198()
{
  result = qword_1ECE43758;
  if (!qword_1ECE43758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43758);
  }

  return result;
}

unint64_t sub_1DF6271EC()
{
  result = qword_1ECE43760;
  if (!qword_1ECE43760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43760);
  }

  return result;
}

unint64_t sub_1DF627240()
{
  result = qword_1ECE43770;
  if (!qword_1ECE43770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43770);
  }

  return result;
}

unint64_t sub_1DF627298()
{
  result = qword_1ECE43778;
  if (!qword_1ECE43778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43778);
  }

  return result;
}

unint64_t sub_1DF6272F0()
{
  result = qword_1ECE43780;
  if (!qword_1ECE43780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43780);
  }

  return result;
}

unint64_t sub_1DF627348()
{
  result = qword_1ECE43788;
  if (!qword_1ECE43788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43788);
  }

  return result;
}

unint64_t sub_1DF6273A0()
{
  result = qword_1ECE43790;
  if (!qword_1ECE43790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43790);
  }

  return result;
}

uint64_t sub_1DF6273F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1DF62745C()
{
  result = qword_1ECE43798;
  if (!qword_1ECE43798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43798);
  }

  return result;
}

unint64_t sub_1DF6274B4()
{
  result = qword_1ECE437A0;
  if (!qword_1ECE437A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE437A0);
  }

  return result;
}

unint64_t sub_1DF62750C()
{
  result = qword_1ECE437A8;
  if (!qword_1ECE437A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE437A8);
  }

  return result;
}

unint64_t sub_1DF627560()
{
  result = qword_1ECE437B0;
  if (!qword_1ECE437B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE437B0);
  }

  return result;
}

uint64_t Array<A>.uniqued()()
{
  sub_1DF63280C();
  sub_1DF632DEC();

  swift_getWitnessTable();
  v0 = sub_1DF63351C();

  return v0;
}

uint64_t sub_1DF627690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - v10;
  (*(v4 + 16))(v7, v9);
  sub_1DF6330CC();
  v12 = sub_1DF6330AC();
  (*(v4 + 8))(v11, a3);
  return v12 & 1;
}

uint64_t Array<A>.mean.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v26 = *(a3 + 8);
  v5 = *(*(v26 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v25 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  v27 = a1;
  sub_1DF632DEC();
  swift_getWitnessTable();
  result = sub_1DF63310C();
  if ((result & 1) == 0)
  {
    v23 = a1;
    v27 = a1;
    swift_getAssociatedConformanceWitness();
    sub_1DF63399C();
    v19 = sub_1DF63392C();
    MEMORY[0x1EEE9AC00](v19);
    v20 = v24;
    *(&v23 - 4) = a2;
    *(&v23 - 3) = v20;
    *(&v23 - 2) = a2;
    swift_getWitnessTable();
    sub_1DF632C8C();
    v21 = *(v8 + 8);
    v21(v14, a2);
    v22 = v25;
    (*(v8 + 16))(v25, v17, a2);
    if (sub_1DF63336C() < 65)
    {
      sub_1DF63337C();
      sub_1DF63335C();
    }

    else
    {
      sub_1DF5C3F00();
      sub_1DF5C3F54();
      sub_1DF63281C();
    }

    v21(v22, a2);
    sub_1DF632D9C();
    return (v21)(v17, a2);
  }

  return result;
}

uint64_t sub_1DF627BB4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(*(*(v2 + 8) + 24) + 8);
  return sub_1DF6336FC();
}

uint64_t Array.chunked(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DF632D9C();
  if (a1)
  {
    v11[7] = 0;
    v11[8] = result;
    v11[9] = a1;
    MEMORY[0x1EEE9AC00](result);
    v11[2] = a3;
    v11[3] = a2;
    v11[4] = a1;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE437B8, &qword_1DF63DF90);
    v8 = sub_1DF632DEC();
    v9 = sub_1DF627DE0();
    return sub_1DF61CF78(sub_1DF627DBC, v11, v7, v8, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_1DF627CE8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X2>, uint64_t **a3@<X8>)
{
  v3 = *result;
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = sub_1DF632D9C();
    if (result >= v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = result;
    }

    if (v6 >= v3)
    {
      sub_1DF632E0C();
      sub_1DF6333AC();
      swift_getWitnessTable();
      result = sub_1DF632DFC();
      *a3 = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1DF627DBC@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  v4 = v2[2];
  v3 = v2[3];
  return sub_1DF627CE8(a1, v2[4], a2);
}

unint64_t sub_1DF627DE0()
{
  result = qword_1ECE437C0;
  if (!qword_1ECE437C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE437B8, &qword_1DF63DF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE437C0);
  }

  return result;
}

uint64_t Array<A>.data.getter()
{

  v1 = sub_1DF5C30E4(v0);

  return v1;
}

uint64_t Array<A>.dataRepresentation.getter()
{
  v0 = sub_1DF63206C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1DF63205C();
  sub_1DF632DEC();
  swift_getWitnessTable();
  v3 = sub_1DF63204C();

  return v3;
}

uint64_t Array<A>.init(dataRepresentation:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DF6290AC();
  sub_1DF5B33C0(a1, a2);
  return v4;
}

uint64_t sub_1DF6280A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 16);
  v4 = *v2;
  v5 = *(a1 + 16);
  return Array<A>.dataRepresentation.getter();
}

uint64_t sub_1DF6280B8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *(a4 - 16);
  v10 = *(a4 - 8);
  v11 = *(a3 + 16);
  v12 = sub_1DF6290AC();
  result = sub_1DF5B33C0(a1, a2);
  if (!v5)
  {
    *a5 = v12;
  }

  return result;
}

uint64_t Array<A>.asyncFlatMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v8 = *(*(a5 - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  v9 = *(a4 - 8);
  v6[11] = v9;
  v6[12] = *(v9 + 64);
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF62820C, 0, 0);
}

uint64_t sub_1DF62820C()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v0[14] = swift_getAssociatedTypeWitness();
  v5 = sub_1DF6327EC();
  v0[2] = v5;
  if (sub_1DF632D9C())
  {
    v6 = v0[6];
    v7 = v0[7];
    v8 = sub_1DF632D8C();
    sub_1DF632D5C();
    if (v8)
    {
      (*(v0[11] + 16))(v0[13], v0[6] + ((*(v0[11] + 80) + 32) & ~*(v0[11] + 80)), v0[7]);
    }

    else
    {
      v18 = v0[12];
      v19 = v0[6];
      v20 = v0[7];
      result = sub_1DF6334BC();
      if (v18 != 8)
      {
        __break(1u);
        return result;
      }

      v21 = v0[13];
      v22 = v0[11];
      v23 = v0[7];
      v0[3] = result;
      (*(v22 + 16))(v21, v0 + 3, v23);
      swift_unknownObjectRelease();
    }

    v0[15] = 1;
    v24 = (v0[4] + *v0[4]);
    v9 = *(v0[4] + 4);
    v10 = swift_task_alloc();
    v0[16] = v10;
    *v10 = v0;
    v10[1] = sub_1DF62845C;
    v11 = v0[13];
    v12 = v0[10];
    v13 = v0[5];

    return v24(v12, v11);
  }

  else
  {
    v15 = v0[13];
    v16 = v0[10];

    v17 = v0[1];

    return v17(v5);
  }
}

uint64_t sub_1DF62845C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[11] + 8))(v2[13], v2[7]);
  if (v0)
  {
    v4 = v2[2];

    v5 = sub_1DF628828;
  }

  else
  {
    v5 = sub_1DF6285B0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DF6285B0()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  sub_1DF632DEC();
  sub_1DF632DAC();
  if (v2 == sub_1DF632D9C())
  {
    v8 = v0[2];
    v9 = v0[13];
    v10 = v0[10];

    v11 = v0[1];

    return v11(v8);
  }

  v13 = v0[15];
  v15 = v0[6];
  v14 = v0[7];
  v16 = sub_1DF632D8C();
  sub_1DF632D5C();
  if (v16)
  {
    result = (*(v0[11] + 16))(v0[13], v0[6] + ((*(v0[11] + 80) + 32) & ~*(v0[11] + 80)) + *(v0[11] + 72) * v13, v0[7]);
  }

  else
  {
    v22 = v0[12];
    v23 = v0[6];
    v24 = v0[7];
    result = sub_1DF6334BC();
    if (v22 != 8)
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v25 = v0[13];
    v26 = v0[11];
    v27 = v0[7];
    v0[3] = result;
    (*(v26 + 16))(v25, v0 + 3, v27);
    result = swift_unknownObjectRelease();
  }

  v0[15] = v13 + 1;
  if (__OFADD__(v13, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v28 = (v0[4] + *v0[4]);
  v17 = *(v0[4] + 4);
  v18 = swift_task_alloc();
  v0[16] = v18;
  *v18 = v0;
  v18[1] = sub_1DF62845C;
  v19 = v0[13];
  v20 = v0[10];
  v21 = v0[5];

  return v28(v20, v19);
}

uint64_t sub_1DF628828()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[1];
  v4 = v0[17];

  return v3();
}

uint64_t sub_1DF6288B0()
{
  sub_1DF632DEC();
  swift_getWitnessTable();
  sub_1DF632C9C();
  sub_1DF632F0C();
  return sub_1DF632EFC();
}

uint64_t sub_1DF628970()
{
  sub_1DF632DEC();
  swift_getWitnessTable();
  sub_1DF632C9C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  sub_1DF63303C();
  return sub_1DF63302C();
}

uint64_t sub_1DF628A44@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E8790];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v3 = sub_1DF63300C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1DF628B00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF632EDC();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v11 = a2;
  v12 = a1;
  (*(v8 + 104))(&v10[-v7], *MEMORY[0x1E69E8650], v6);
  return sub_1DF632F4C();
}

uint64_t sub_1DF628BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DF632EBC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v16 - v13;
  (*(v5 + 16))(v8, a1, a3, v12);
  sub_1DF632F0C();
  sub_1DF632EEC();
  return (*(v10 + 8))(v14, v9);
}

uint64_t sub_1DF628D98(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v4 = sub_1DF63300C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v9 = a2;
  v10 = a1;
  sub_1DF628A44(&v8[-v6]);
  return sub_1DF63304C();
}

uint64_t sub_1DF628E6C()
{
  sub_1DF632DEC();
  swift_getWitnessTable();
  return sub_1DF632C9C();
}

uint64_t sub_1DF628EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = a2;
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v9 = sub_1DF632FFC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v16 - v13;
  (*(v5 + 16))(v8, a1, a3, v12);
  sub_1DF63303C();
  sub_1DF63301C();
  return (*(v10 + 8))(v14, v9);
}

uint64_t sub_1DF6290AC()
{
  v1 = sub_1DF63203C();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1DF63202C();
  sub_1DF632DEC();
  swift_getWitnessTable();
  sub_1DF63201C();

  if (!v0)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1DF629184()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return sub_1DF6288B0();
}

uint64_t sub_1DF62918C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return sub_1DF628970();
}

uint64_t sub_1DF629194()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return sub_1DF628E6C();
}

uint64_t sub_1DF6291C4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return sub_1DF628E6C();
}

uint64_t sub_1DF62925C()
{
  type metadata accessor for BackgroundActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1ECE437C8 = v0;
  return result;
}

uint64_t static BackgroundActor.shared.getter()
{
  if (qword_1ECE425A0 != -1)
  {
    swift_once();
  }
}

uint64_t BackgroundActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1DF629354()
{
  result = qword_1ECE437D0;
  if (!qword_1ECE437D0)
  {
    type metadata accessor for BackgroundActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE437D0);
  }

  return result;
}

uint64_t sub_1DF6293CC()
{
  if (qword_1ECE425A0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DF629428(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for BackgroundActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t ManagedDefault.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 2);
  v3 = *(a1 + 24);
  return PrefixedDefaults.subscript.getter(*(v2 + 3), *(v2 + 4), *(a1 + 16), a2);
}

uint64_t sub_1DF6294C0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2 + a3;
  v6 = *(a2 + a3 - 16);
  v7 = *(v5 - 8);
  v10 = *a1;
  v11 = a1[1];
  v12 = *(a1 + 4);
  v8 = type metadata accessor for ManagedDefault();
  return ManagedDefault.wrappedValue.getter(v8, a4);
}

uint64_t ManagedDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1DF62981C(a1, a2);
  v4 = *(a2 + 16);
  v5 = sub_1DF63327C();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void (*ManagedDefault.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x38uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *(a2 + 16);
  v6[1] = v8;
  v9 = sub_1DF63327C();
  v7[2] = v9;
  v10 = *(v9 - 8);
  v7[3] = v10;
  v11 = *(v10 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v7[5] = v12;
  v14 = *(v2 + 3);
  v15 = *(v2 + 4);
  v17 = *v2;
  v18 = *(v2 + 2);
  v7[6] = *(a2 + 24);
  PrefixedDefaults.subscript.getter(v14, v15, v8, v13);
  return sub_1DF6296DC;
}

void sub_1DF6296DC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v6 = (*a1)[3];
  v5 = (*a1)[4];
  v8 = (*a1)[1];
  v7 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v3, v7);
    v10 = *(v9 + 24);
    v11 = *(v9 + 32);

    sub_1DF5DC7BC(v5, v10, v11, v8);
    v12 = *(v6 + 8);
    v12(v5, v7);
    v12(v3, v7);
  }

  else
  {
    v13 = *(v9 + 24);
    v14 = *(v9 + 32);

    sub_1DF5DC7BC(v3, v13, v14, v8);
    (*(v6 + 8))(v3, v7);
  }

  free(v3);
  free(v5);

  free(v2);
}

__n128 ManagedDefault.init(prefixedDefaults:key:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  result = *a1;
  v5 = a1[1].n128_u64[0];
  *a4 = *a1;
  a4[1].n128_u64[0] = v5;
  a4[1].n128_u64[1] = a2;
  a4[2].n128_u64[0] = a3;
  return result;
}

void sub_1DF62981C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);

  sub_1DF5DC7BC(a1, v4, v5, v6);
}

uint64_t sub_1DF629880()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DF6298BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1DF629904(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DF629964(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DF63242C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v12 = *(a1 + 16);
      v11 = *(a1 + 24);
      v10 = v11 - v12;
      if (__OFSUB__(v11, v12))
      {
        __break(1u);
LABEL_14:
        __break(1u);
      }

      else if (v10)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (BYTE6(a2))
    {
LABEL_8:
      do
      {
        sub_1DF5A8128(v10, 0);
        v13 = sub_1DF63232C();
        v14 = *(v5 + 8);
        v5 += 8;
        v14(v8, v4);
        if (v13 == v10)
        {
          break;
        }

        __break(1u);
LABEL_10:
        v15 = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          goto LABEL_14;
        }

        v10 = v15;
      }

      while (v15);
    }
  }
}

unint64_t sub_1DF629AC8(unint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v1 == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v1 < 3)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v1 == 3)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v1 < 5)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v1 == 5)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v1 < 7)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v1 == 7)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v1 < 9)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v1 == 9)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v1 < 0xB)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v1 == 11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v1 < 0xD)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v1 == 13)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v1 < 0xF)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v1 != 15)
  {
    v2 = *(result + 40) | (*(result + 41) << 8) | (*(result + 42) << 16) | (*(result + 43) << 24) | (*(result + 44) << 32) | (*(result + 45) << 40) | (*(result + 46) << 48) | (*(result + 47) << 56);
    return *(result + 32) | (*(result + 33) << 8) | (*(result + 34) << 16) | (*(result + 35) << 24) | (*(result + 36) << 32) | (*(result + 37) << 40) | (*(result + 38) << 48) | (*(result + 39) << 56);
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t UUID.init(data:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v7 = 0;
      goto LABEL_11;
    }

    v9 = *(result + 16);
    v8 = *(result + 24);
    v7 = v8 - v9;
    if (!__OFSUB__(v8, v9))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v7 = BYTE6(a2);
    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
    __break(1u);
    return result;
  }

  v7 = HIDWORD(result) - result;
LABEL_11:
  v10 = sub_1DF6325AC();
  v14 = *(v10 - 8);
  if (v7 == *(v14 + 64))
  {
    sub_1DF629964(v4, a2);
    sub_1DF629AC8(v11);

    sub_1DF63257C();
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  sub_1DF5B33C0(v4, a2);
  v13 = *(v14 + 56);

  return v13(a3, v12, 1, v10);
}

uint64_t UUID.init(bytes:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1DF6325AC();
  v9 = *(v5 - 8);
  if (v4 == *(v9 + 64))
  {
    sub_1DF629AC8(a1);

    sub_1DF63257C();
    v6 = 0;
  }

  else
  {

    v6 = 1;
  }

  v7 = *(v9 + 56);

  return v7(a2, v6, 1, v5);
}

unint64_t UUID.data.getter()
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = sub_1DF63258C();
  v11 = v0;
  v12 = v1;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  result = sub_1DF5BE894(&v10, &v19);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

double UUID.bytes.getter()
{
  v0 = sub_1DF63258C();
  v1 = v0;
  v3 = v2;
  v4 = v0 >> 8;
  v5 = v0 >> 16;
  v6 = v0 >> 24;
  v7 = HIDWORD(v0);
  v8 = v0 >> 40;
  v9 = HIWORD(v0);
  v10 = HIBYTE(v0);
  v11 = v2 >> 8;
  v14 = v2 >> 16;
  v15 = v2 >> 24;
  v16 = HIDWORD(v2);
  v17 = v2 >> 40;
  v18 = HIWORD(v2);
  v19 = HIBYTE(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42980, &qword_1DF638970);
  v12 = swift_allocObject();
  *&result = 16;
  *(v12 + 16) = xmmword_1DF63CB20;
  *(v12 + 32) = v1;
  *(v12 + 33) = v4;
  *(v12 + 34) = v5;
  *(v12 + 35) = v6;
  *(v12 + 36) = v7;
  *(v12 + 37) = v8;
  *(v12 + 38) = v9;
  *(v12 + 39) = v10;
  *(v12 + 40) = v3;
  *(v12 + 41) = v11;
  *(v12 + 42) = v14;
  *(v12 + 43) = v15;
  *(v12 + 44) = v16;
  *(v12 + 45) = v17;
  *(v12 + 46) = v18;
  *(v12 + 47) = v19;
  return result;
}

uint64_t UUID.init(mock:template:)(uint64_t a1, uint64_t a2)
{
  UUID.bytes.getter();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42980, &qword_1DF638970);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF63CB20;
  v7 = *(v5 + 16);
  if (!v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = inited;
  *(inited + 32) = *(v5 + 32);
  if (v7 == 1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(inited + 33) = *(v5 + 33);
  if (v7 < 3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(inited + 34) = *(v5 + 34);
  if (v7 == 3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(inited + 35) = *(v5 + 35);
  if (v7 < 5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(inited + 36) = *(v5 + 36);
  if (v7 == 5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(inited + 37) = *(v5 + 37);
  if (v7 < 7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(inited + 38) = *(v5 + 38);
  if (v7 == 7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(inited + 39) = *(v5 + 39);
  *(inited + 40) = HIBYTE(a1);
  *(inited + 41) = BYTE6(a1);
  *(inited + 42) = BYTE5(a1);
  *(inited + 43) = BYTE4(a1);
  *(inited + 44) = BYTE3(a1);
  *(inited + 45) = BYTE2(a1);
  *(inited + 46) = BYTE1(a1);
  *(inited + 47) = a1;
  v9 = sub_1DF6325AC();
  v10 = *(v9 - 8);
  if (*(v10 + 64) == 16)
  {
    v11 = v9;

    sub_1DF629AC8(v8);
    swift_setDeallocating();
    sub_1DF63257C();
    return (*(v10 + 8))(a2, v11);
  }

LABEL_19:
  result = swift_setDeallocating();
  __break(1u);
  return result;
}

uint64_t sub_1DF62A328(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1DF5C1294(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t static Keychain.item(account:service:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_1DF59DFB8();
  if (!v5)
  {
    v12 = *MEMORY[0x1E697AE88];
    v13 = MEMORY[0x1E69E6158];
    v43 = MEMORY[0x1E69E6158];
    v42[0] = a3;
    v42[1] = a4;
    sub_1DF5A27C4(v42, v41);

    v14 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v41, v12, isUniquelyReferenced_nonNull_native);
    v16 = *MEMORY[0x1E697AC30];
    v43 = v13;
    v42[0] = a1;
    v42[1] = a2;
    sub_1DF5A27C4(v42, v41);

    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v41, v16, v17);
    v18 = *MEMORY[0x1E697B260];
    v19 = *MEMORY[0x1E697B270];
    type metadata accessor for CFString(0);
    v43 = v20;
    v42[0] = v19;
    sub_1DF5A27C4(v42, v41);
    v21 = v19;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v41, v18, v22);
    v44 = v14;
    v23 = *MEMORY[0x1E697B318];
    v24 = *MEMORY[0x1E695E4D0];
    if (*MEMORY[0x1E695E4D0])
    {
      type metadata accessor for CFBoolean(0);
      v26 = v25;
      v43 = v25;
      v42[0] = v24;
      sub_1DF5A27C4(v42, v41);
      v27 = v24;
      v28 = v23;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DF59F654(v41, v28, v29);

      v30 = *MEMORY[0x1E697B390];
      v43 = v26;
      v42[0] = v27;
      sub_1DF5A27C4(v42, v41);
      v31 = v30;
      v32 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DF59F654(v41, v31, v32);

      v44 = v14;
    }

    else
    {
      v33 = v23;
      sub_1DF59FBA0(v33, v41);

      sub_1DF59CB50(v41, &qword_1ECE436C0, &qword_1DF6393D0);
      v34 = *MEMORY[0x1E697B390];
      sub_1DF59FBA0(v34, v41);

      sub_1DF59CB50(v41, &qword_1ECE436C0, &qword_1DF6393D0);
    }

    v35 = *MEMORY[0x1E697AEB0];
    sub_1DF59FBA0(v35, v42);

    result = sub_1DF59CB50(v42, &qword_1ECE436C0, &qword_1DF6393D0);
    if (*MEMORY[0x1E697AEA8])
    {
      v36 = *MEMORY[0x1E697AEA8];
      sub_1DF59FBA0(v36, v42);

      sub_1DF59CB50(v42, &qword_1ECE436C0, &qword_1DF6393D0);
      v37 = sub_1DF59FC40(v44, 0);

      if (*(v37 + 16))
      {
        v38 = type metadata accessor for Keychain.Item();
        v39 = *(v38 - 8);
        sub_1DF5A39C0(v37 + ((*(v39 + 80) + 32) & ~*(v39 + 80)), a5);

        return (*(v39 + 56))(a5, 0, 1, v38);
      }

      else
      {

        v40 = type metadata accessor for Keychain.Item();
        return (*(*(v40 - 8) + 56))(a5, 1, 1, v40);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void static Keychain.item(account:service:accessGroup:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  sub_1DF59DFB8();
  if (!v7)
  {
    v15 = *MEMORY[0x1E697AE88];
    v16 = MEMORY[0x1E69E6158];
    v50 = MEMORY[0x1E69E6158];
    v49[0] = a3;
    v49[1] = a4;
    sub_1DF5A27C4(v49, v48);

    v17 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v48, v15, isUniquelyReferenced_nonNull_native);
    v19 = *MEMORY[0x1E697AC30];
    v50 = v16;
    v49[0] = a1;
    v49[1] = a2;
    sub_1DF5A27C4(v49, v48);

    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v48, v19, v20);
    v21 = *MEMORY[0x1E697B260];
    v22 = *MEMORY[0x1E697B270];
    type metadata accessor for CFString(0);
    v50 = v23;
    v49[0] = v22;
    sub_1DF5A27C4(v49, v48);
    v24 = v22;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v48, v21, v25);
    v51 = v17;
    v26 = *MEMORY[0x1E697B318];
    v27 = *MEMORY[0x1E695E4D0];
    if (*MEMORY[0x1E695E4D0])
    {
      type metadata accessor for CFBoolean(0);
      v29 = v28;
      v50 = v28;
      v49[0] = v27;
      sub_1DF5A27C4(v49, v48);
      v30 = v27;
      v31 = v26;
      v32 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DF59F654(v48, v31, v32);

      v33 = *MEMORY[0x1E697B390];
      v50 = v29;
      v49[0] = v30;
      sub_1DF5A27C4(v49, v48);
      v34 = v33;
      v35 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DF59F654(v48, v34, v35);

      v51 = v17;
    }

    else
    {
      v36 = v26;
      sub_1DF59FBA0(v36, v48);

      sub_1DF59CB50(v48, &qword_1ECE436C0, &qword_1DF6393D0);
      v37 = *MEMORY[0x1E697B390];
      sub_1DF59FBA0(v37, v48);

      sub_1DF59CB50(v48, &qword_1ECE436C0, &qword_1DF6393D0);
    }

    v38 = *MEMORY[0x1E697AEB0];
    sub_1DF59FBA0(v38, v49);

    sub_1DF59CB50(v49, &qword_1ECE436C0, &qword_1DF6393D0);
    if (*MEMORY[0x1E697AEA8])
    {
      v39 = *MEMORY[0x1E697AEA8];
      sub_1DF59FBA0(v39, v49);

      sub_1DF59CB50(v49, &qword_1ECE436C0, &qword_1DF6393D0);
      if (a6)
      {
        v40 = *MEMORY[0x1E697ABD0];
        v50 = v16;
        v49[0] = a5;
        v49[1] = a6;
        sub_1DF5A27C4(v49, v48);

        v41 = v51;
        v42 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DF59F654(v48, v40, v42);
        v43 = v41;
        v51 = v41;
      }

      else
      {
        v43 = v51;
      }

      v44 = sub_1DF59FC40(v43, 0);

      if (*(v44 + 16))
      {
        v45 = type metadata accessor for Keychain.Item();
        v46 = *(v45 - 8);
        sub_1DF5A39C0(v44 + ((*(v46 + 80) + 32) & ~*(v46 + 80)), a7);

        (*(v46 + 56))(a7, 0, 1, v45);
      }

      else
      {

        v47 = type metadata accessor for Keychain.Item();
        (*(*(v47 - 8) + 56))(a7, 1, 1, v47);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t static Keychain.data(account:service:accessGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v66 = a1;
  *(&v66 + 1) = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE437F0, &qword_1DF63E0F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v61 - v13;
  v15 = type metadata accessor for Keychain.Item();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF59DFB8();
  if (v6)
  {
    return a4;
  }

  v64 = v14;
  v65 = a5;
  v62 = v16;
  v63 = v19;
  v20 = *MEMORY[0x1E697AE88];
  v21 = MEMORY[0x1E69E6158];
  v70 = MEMORY[0x1E69E6158];
  *&v69 = a3;
  *(&v69 + 1) = a4;
  sub_1DF5A27C4(&v69, v68);

  v22 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67 = v22;
  sub_1DF59F654(v68, v20, isUniquelyReferenced_nonNull_native);
  v24 = v67;
  v25 = *MEMORY[0x1E697AC30];
  v70 = v21;
  v69 = v66;
  sub_1DF5A27C4(&v69, v68);

  v26 = swift_isUniquelyReferenced_nonNull_native();
  v67 = v24;
  sub_1DF59F654(v68, v25, v26);
  v27 = v67;
  v28 = *MEMORY[0x1E697B260];
  v29 = *MEMORY[0x1E697B270];
  type metadata accessor for CFString(0);
  v70 = v30;
  *&v69 = v29;
  sub_1DF5A27C4(&v69, v68);
  v31 = v29;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v67 = v27;
  sub_1DF59F654(v68, v28, v32);
  v33 = v67;
  v71 = v67;
  v34 = *MEMORY[0x1E697B318];
  v35 = *MEMORY[0x1E695E4D0];
  if (*MEMORY[0x1E695E4D0])
  {
    type metadata accessor for CFBoolean(0);
    v37 = v36;
    v70 = v36;
    *&v69 = v35;
    sub_1DF5A27C4(&v69, v68);
    v38 = v35;
    v39 = v34;
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v33;
    sub_1DF59F654(v68, v39, v40);

    v41 = v67;
    v42 = *MEMORY[0x1E697B390];
    v70 = v37;
    *&v69 = v38;
    sub_1DF5A27C4(&v69, v68);
    v43 = v42;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v41;
    sub_1DF59F654(v68, v43, v44);

    v71 = v67;
  }

  else
  {
    v45 = v34;
    sub_1DF59FBA0(v45, v68);

    sub_1DF59CB50(v68, &qword_1ECE436C0, &qword_1DF6393D0);
    v46 = *MEMORY[0x1E697B390];
    sub_1DF59FBA0(v46, v68);

    sub_1DF59CB50(v68, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  v47 = v65;
  v48 = *MEMORY[0x1E697AEB0];
  sub_1DF59FBA0(v48, &v69);

  result = sub_1DF59CB50(&v69, &qword_1ECE436C0, &qword_1DF6393D0);
  if (*MEMORY[0x1E697AEA8])
  {
    v50 = *MEMORY[0x1E697AEA8];
    sub_1DF59FBA0(v50, &v69);

    sub_1DF59CB50(&v69, &qword_1ECE436C0, &qword_1DF6393D0);
    if (a6)
    {
      v51 = *MEMORY[0x1E697ABD0];
      v70 = v21;
      *&v69 = v47;
      *(&v69 + 1) = a6;
      sub_1DF5A27C4(&v69, v68);

      v52 = v71;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v67 = v52;
      sub_1DF59F654(v68, v51, v53);
      v54 = v67;
      v71 = v67;
    }

    else
    {
      v54 = v71;
    }

    v55 = v64;
    v56 = sub_1DF59FC40(v54, 0);

    if (*(v56 + 16))
    {
      v57 = v62;
      sub_1DF5A39C0(v56 + ((*(v62 + 80) + 32) & ~*(v62 + 80)), v55);
      v58 = v57;

      (*(v57 + 56))(v55, 0, 1, v15);
    }

    else
    {

      v58 = v62;
      (*(v62 + 56))(v55, 1, 1, v15);
    }

    v59 = v63;
    if ((*(v58 + 48))(v55, 1, v15) == 1)
    {
      sub_1DF59CB50(v55, &qword_1ECE437F0, &qword_1DF63E0F0);
      return 0;
    }

    else
    {
      sub_1DF5A325C(v55, v59);
      v60 = v59 + *(v15 + 40);
      a4 = *v60;
      sub_1DF5A3A80(*v60, *(v60 + 8));
      sub_1DF5A3A24(v59);
    }

    return a4;
  }

  __break(1u);
  return result;
}

uint64_t static Keychain.deleteData(account:service:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1DF59DFB8();
  if (!v4)
  {
    v10 = *MEMORY[0x1E697AE88];
    v11 = MEMORY[0x1E69E6158];
    v30 = MEMORY[0x1E69E6158];
    *&v29 = a3;
    *(&v29 + 1) = a4;
    sub_1DF5A27C4(&v29, v28);

    v12 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v28, v10, isUniquelyReferenced_nonNull_native);
    v14 = *MEMORY[0x1E697AC30];
    v30 = v11;
    *&v29 = a1;
    *(&v29 + 1) = a2;
    sub_1DF5A27C4(&v29, v28);

    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v28, v14, v15);
    v16 = v12;
    v31 = v12;
    v17 = *MEMORY[0x1E697B390];
    v18 = *MEMORY[0x1E695E4D0];
    if (*MEMORY[0x1E695E4D0])
    {
      type metadata accessor for CFBoolean(0);
      v30 = v19;
      *&v29 = v18;
      sub_1DF5A27C4(&v29, v28);
      v20 = v17;
      v21 = v18;
      v22 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DF59F654(v28, v20, v22);

      v31 = v16;
    }

    else
    {
      v23 = v17;
      sub_1DF59FBA0(v23, &v29);

      sub_1DF59CB50(&v29, &qword_1ECE436C0, &qword_1DF6393D0);
    }

    v24 = *MEMORY[0x1E697AEB0];
    sub_1DF59FBA0(v24, &v29);

    result = sub_1DF59CB50(&v29, &qword_1ECE436C0, &qword_1DF6393D0);
    if (*MEMORY[0x1E697AEA8])
    {
      v25 = *MEMORY[0x1E697AEA8];
      sub_1DF59FBA0(v25, &v29);

      sub_1DF59CB50(&v29, &qword_1ECE436C0, &qword_1DF6393D0);
      v26 = sub_1DF6308B0(v31);

      if (v26)
      {
        sub_1DF63085C();
        swift_allocError();
        *v27 = v26;
        *(v27 + 4) = 0;
        return swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

__n128 static Keychain.set<A>(data:account:service:dataProtectionClass:accessGroup:syncViewHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v11 = *a6;
  sub_1DF62FED0(a1, a2, a3, a4, a5, &v11, a7, a8, a9, a10);
  return result;
}

void static Keychain.item(account:service:useSystemKeychain:nonDestructive:accessGroup:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, char a5@<W5>, void *a6@<X6>, void *a7@<X7>, uint64_t a8@<X8>)
{
  sub_1DF59DFB8();
  if (!v8)
  {
    v17 = *MEMORY[0x1E697AE88];
    v52 = MEMORY[0x1E69E6158];
    v51[0] = a3;
    v51[1] = a4;
    v18 = MEMORY[0x1E69E6158];
    sub_1DF5A27C4(v51, v50);

    v19 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v50, v17, isUniquelyReferenced_nonNull_native);
    v21 = *MEMORY[0x1E697AC30];
    v52 = v18;
    v51[0] = a1;
    v51[1] = a2;
    sub_1DF5A27C4(v51, v50);

    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v50, v21, v22);
    v23 = *MEMORY[0x1E697B260];
    v24 = *MEMORY[0x1E697B270];
    type metadata accessor for CFString(0);
    v52 = v25;
    v51[0] = v24;
    sub_1DF5A27C4(v51, v50);
    v26 = v24;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v50, v23, v27);
    v53 = v19;
    v28 = *MEMORY[0x1E697B318];
    v29 = *MEMORY[0x1E695E4D0];
    if (*MEMORY[0x1E695E4D0])
    {
      type metadata accessor for CFBoolean(0);
      v31 = v30;
      v52 = v30;
      v51[0] = v29;
      sub_1DF5A27C4(v51, v50);
      v32 = v29;
      v33 = v28;
      v34 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DF59F654(v50, v33, v34);

      v35 = *MEMORY[0x1E697B390];
      v52 = v31;
      v51[0] = v32;
      sub_1DF5A27C4(v51, v50);
      v36 = v35;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DF59F654(v50, v36, v37);

      v53 = v19;
    }

    else
    {
      v38 = v28;
      sub_1DF59FBA0(v38, v50);

      sub_1DF59CB50(v50, &qword_1ECE436C0, &qword_1DF6393D0);
      v39 = *MEMORY[0x1E697B390];
      sub_1DF59FBA0(v39, v50);

      sub_1DF59CB50(v50, &qword_1ECE436C0, &qword_1DF6393D0);
    }

    v40 = *MEMORY[0x1E697AEB0];
    sub_1DF59FBA0(v40, v51);

    sub_1DF59CB50(v51, &qword_1ECE436C0, &qword_1DF6393D0);
    if (*MEMORY[0x1E697AEA8])
    {
      v41 = *MEMORY[0x1E697AEA8];
      sub_1DF59FBA0(v41, v51);

      sub_1DF59CB50(v51, &qword_1ECE436C0, &qword_1DF6393D0);
      if (a7)
      {
        v42 = *MEMORY[0x1E697ABD0];
        v52 = v18;
        v51[0] = a6;
        v51[1] = a7;
        sub_1DF5A27C4(v51, v50);

        v43 = v53;
        v44 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DF59F654(v50, v42, v44);
        v45 = v43;
        v53 = v43;
      }

      else
      {
        v45 = v53;
      }

      v46 = sub_1DF59FC40(v45, a5 & 1);

      if (*(v46 + 16))
      {
        v47 = type metadata accessor for Keychain.Item();
        v48 = *(v47 - 8);
        sub_1DF5A39C0(v46 + ((*(v48 + 80) + 32) & ~*(v48 + 80)), a8);

        (*(v48 + 56))(a8, 0, 1, v47);
      }

      else
      {

        v49 = type metadata accessor for Keychain.Item();
        (*(*(v49 - 8) + 56))(a8, 1, 1, v49);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1DF62BE54(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char a5@<W5>, void *a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, void *a9, uint64_t a10)
{
  sub_1DF59DFB8();
  if (!v10)
  {
    v66 = a6;
    v67 = a8;
    v19 = *MEMORY[0x1E697AE88];
    v20 = MEMORY[0x1E69E6158];
    v71 = MEMORY[0x1E69E6158];
    v69 = a3;
    v70 = a4;
    sub_1DF5A27C4(&v69, v68);

    v21 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v68, v19, isUniquelyReferenced_nonNull_native);
    v23 = *MEMORY[0x1E697AC30];
    v71 = v20;
    v69 = a1;
    v70 = a2;
    sub_1DF5A27C4(&v69, v68);

    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v68, v23, v24);
    v25 = v21;
    v26 = *MEMORY[0x1E697B260];
    v27 = *MEMORY[0x1E697B270];
    type metadata accessor for CFString(0);
    v71 = v28;
    v69 = v27;
    sub_1DF5A27C4(&v69, v68);
    v29 = v27;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v68, v26, v30);
    v31 = v25;
    v72 = v25;
    v32 = *MEMORY[0x1E697B318];
    v33 = *MEMORY[0x1E695E4D0];
    if (*MEMORY[0x1E695E4D0])
    {
      type metadata accessor for CFBoolean(0);
      v35 = v34;
      v71 = v34;
      v69 = v33;
      sub_1DF5A27C4(&v69, v68);
      v36 = v33;
      v37 = v32;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DF59F654(v68, v37, v38);

      v39 = v31;
      v40 = *MEMORY[0x1E697B390];
      v71 = v35;
      v69 = v36;
      sub_1DF5A27C4(&v69, v68);
      v41 = v40;
      v42 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DF59F654(v68, v41, v42);

      v43 = v39;
      v72 = v39;
      v44 = *MEMORY[0x1E697AEB0];
      if (a10)
      {
        v71 = v35;
        v69 = v36;
        sub_1DF5A27C4(&v69, v68);
        v45 = v36;
        v46 = v44;
        v47 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DF59F654(v68, v46, v47);

        v72 = v43;
        v48 = *MEMORY[0x1E697AEA8];
        if (!*MEMORY[0x1E697AEA8])
        {
          goto LABEL_21;
        }

LABEL_10:
        if ((a9 || a10 != 0xE000000000000000) && (sub_1DF63394C() & 1) == 0)
        {
          v71 = MEMORY[0x1E69E6158];
          v69 = a9;
          v70 = a10;
          sub_1DF5A27C4(&v69, v68);
          v59 = v48;

          v60 = v72;
          v61 = swift_isUniquelyReferenced_nonNull_native();
          sub_1DF59F654(v68, v59, v61);

          v72 = v60;
          v54 = v67;
          if (a7)
          {
            goto LABEL_14;
          }

          goto LABEL_16;
        }

LABEL_13:
        v53 = v48;
        sub_1DF59FBA0(v53, v68);

        sub_1DF59CB50(v68, &qword_1ECE436C0, &qword_1DF6393D0);
        v54 = v67;
        if (a7)
        {
LABEL_14:
          v55 = *MEMORY[0x1E697ABD0];
          v71 = MEMORY[0x1E69E6158];
          v69 = v66;
          v70 = a7;
          sub_1DF5A27C4(&v69, v68);

          v56 = v72;
          v57 = swift_isUniquelyReferenced_nonNull_native();
          sub_1DF59F654(v68, v55, v57);
          v58 = v56;
          v72 = v56;
          goto LABEL_17;
        }

LABEL_16:
        v58 = v72;
LABEL_17:
        v62 = sub_1DF59FC40(v58, a5 & 1);

        if (*(v62 + 16))
        {
          v63 = type metadata accessor for Keychain.Item();
          v64 = *(v63 - 8);
          sub_1DF5A39C0(v62 + ((*(v64 + 80) + 32) & ~*(v64 + 80)), v54);

          (*(v64 + 56))(v54, 0, 1, v63);
        }

        else
        {

          v65 = type metadata accessor for Keychain.Item();
          (*(*(v65 - 8) + 56))(v54, 1, 1, v65);
        }

        return;
      }

      LOBYTE(v51) = 1;
    }

    else
    {
      v49 = v32;
      sub_1DF59FBA0(v49, v68);

      sub_1DF59CB50(v68, &qword_1ECE436C0, &qword_1DF6393D0);
      v50 = *MEMORY[0x1E697B390];
      sub_1DF59FBA0(v50, v68);

      sub_1DF59CB50(v68, &qword_1ECE436C0, &qword_1DF6393D0);
      v44 = *MEMORY[0x1E697AEB0];
      v51 = a10 == 0;
    }

    v52 = v44;
    sub_1DF59FBA0(v52, v68);

    sub_1DF59CB50(v68, &qword_1ECE436C0, &qword_1DF6393D0);
    v48 = *MEMORY[0x1E697AEA8];
    if (!*MEMORY[0x1E697AEA8])
    {
LABEL_21:
      __break(1u);
      return;
    }

    if (v51)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }
}

uint64_t Keychain.DataProtectionClass.hashValue.getter()
{
  v1 = *v0;
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](v1);
  return sub_1DF633AAC();
}

uint64_t Keychain.Item.accessGroup.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Keychain.Item.service.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Keychain.Item.account.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Keychain.Item.created.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Keychain.Item() + 28);
  v4 = sub_1DF63252C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Keychain.Item.modified.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Keychain.Item() + 32);
  v4 = sub_1DF63252C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Keychain.Item.dataProtectionClass.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Keychain.Item();
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t Keychain.Item.data.getter()
{
  v1 = v0 + *(type metadata accessor for Keychain.Item() + 40);
  v2 = *v1;
  sub_1DF5A3A80(*v1, *(v1 + 8));
  return v2;
}

void *sub_1DF62C92C(void *a1, void *a2, uint64_t a3, char a4, void *a5, void *a6, void **a7)
{
  sub_1DF59DFB8();
  if (!v7)
  {
    v14 = *a7;
    v15 = MEMORY[0x1E69E6158];
    v37 = MEMORY[0x1E69E6158];
    v36[0] = a1;
    v36[1] = a2;
    sub_1DF5A27C4(v36, &v35);

    v16 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(&v35, v14, isUniquelyReferenced_nonNull_native);
    v18 = *MEMORY[0x1E697B260];
    v19 = *MEMORY[0x1E697B268];
    type metadata accessor for CFString(0);
    v37 = v20;
    v36[0] = v19;
    sub_1DF5A27C4(v36, &v35);
    v21 = v19;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(&v35, v18, v22);
    v38 = v16;
    v23 = *MEMORY[0x1E697B390];
    v24 = *MEMORY[0x1E695E4D0];
    if (*MEMORY[0x1E695E4D0])
    {
      type metadata accessor for CFBoolean(0);
      v37 = v25;
      v36[0] = v24;
      sub_1DF5A27C4(v36, &v35);
      v26 = v23;
      v27 = v24;
      v28 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DF59F654(&v35, v26, v28);

      v38 = v16;
      if (a6)
      {
LABEL_4:
        v29 = *MEMORY[0x1E697ABD0];
        v37 = v15;
        v36[0] = a5;
        v36[1] = a6;
        sub_1DF5A27C4(v36, &v35);

        v30 = v38;
        v31 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DF59F654(&v35, v29, v31);
        v32 = v30;
LABEL_7:
        a2 = sub_1DF59FC40(v32, a4 & 1);

        return a2;
      }
    }

    else
    {
      v33 = v23;
      sub_1DF59FBA0(v33, v36);

      sub_1DF59CB50(v36, &qword_1ECE436C0, &qword_1DF6393D0);
      if (a6)
      {
        goto LABEL_4;
      }
    }

    v32 = v38;
    goto LABEL_7;
  }

  return a2;
}

unint64_t sub_1DF62CC3C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429E0, &qword_1DF638C10);
    v2 = sub_1DF63373C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for CFString(0);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  if (v3 == MEMORY[0x1E69E6158])
  {
    v27 = (v5 + 63) >> 6;

    v28 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v33 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v33 >= v27)
      {
LABEL_37:

        return v2;
      }

      v7 = *(v4 + 8 * v33);
      ++v28;
      if (v7)
      {
        while (1)
        {
          v34 = __clz(__rbit64(v7)) | (v33 << 6);
          v35 = *(*(a1 + 48) + 8 * v34);
          v36 = (*(a1 + 56) + 16 * v34);
          v7 &= v7 - 1;
          v42 = *v36;
          v43 = v36[1];
          v37 = v35;

          swift_dynamicCast();
          sub_1DF5A27C4(v48, v46);
          sub_1DF5A27C4(v46, v44);
          sub_1DF5A27C4(v44, v45);
          result = sub_1DF59F794(v37);
          if (v38)
          {
            v29 = *(v2 + 48);
            v30 = *(v29 + 8 * result);
            *(v29 + 8 * result) = v37;
            v31 = result;

            v32 = (*(v2 + 56) + 32 * v31);
            __swift_destroy_boxed_opaque_existential_1(v32);
            result = sub_1DF5A27C4(v45, v32);
            v28 = v33;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (*(v2 + 16) >= *(v2 + 24))
            {
              goto LABEL_41;
            }

            *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
            *(*(v2 + 48) + 8 * result) = v37;
            result = sub_1DF5A27C4(v45, *(v2 + 56) + 32 * result);
            v39 = *(v2 + 16);
            v40 = __OFADD__(v39, 1);
            v41 = v39 + 1;
            if (v40)
            {
              goto LABEL_42;
            }

            *(v2 + 16) = v41;
            v28 = v33;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v33 = v28;
        }
      }
    }
  }

  else
  {
    v8 = (v5 + 63) >> 6;
    v9 = v2 + 64;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      v14 = __clz(__rbit64(v7)) | (v11 << 6);
      v15 = *(*(a1 + 48) + 8 * v14);
      v16 = (*(a1 + 56) + 16 * v14);
      v17 = v16[1];
      v44[0] = *v16;
      v44[1] = v17;
      v18 = v15;

      swift_dynamicCast();
      sub_1DF5A27C4(v48, v46);
      sub_1DF5A27C4(v46, v47);
      v19 = *(v2 + 40);
      sub_1DF633A6C();
      sub_1DF5A2C28(&unk_1ED8E4BB0, type metadata accessor for CFString);
      sub_1DF63265C();
      result = sub_1DF633AAC();
      v20 = -1 << *(v2 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v9 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v9 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_39;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v9 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v9 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v7 &= v7 - 1;
      *(*(v2 + 48) + 8 * v12) = v18;
      result = sub_1DF5A27C4(v47, *(v2 + 56) + 32 * v12);
      ++*(v2 + 16);
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v8)
      {
        goto LABEL_37;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t Keychain.Item.description.getter()
{
  v1 = v0;
  sub_1DF63347C();
  MEMORY[0x1E12D82E0](0x203A707267613CLL, 0xE700000000000000);
  MEMORY[0x1E12D82E0](*v1, v1[1]);
  MEMORY[0x1E12D82E0](0x203A7463636120, 0xE700000000000000);
  MEMORY[0x1E12D82E0](v1[4], v1[5]);
  MEMORY[0x1E12D82E0](0x203A63767320, 0xE600000000000000);
  MEMORY[0x1E12D82E0](v1[2], v1[3]);
  MEMORY[0x1E12D82E0](0x203A657461646320, 0xE800000000000000);
  v2 = type metadata accessor for Keychain.Item();
  v3 = v2[7];
  sub_1DF63252C();
  sub_1DF5A2C28(&qword_1ECE437F8, MEMORY[0x1E6969530]);
  v4 = sub_1DF6338DC();
  MEMORY[0x1E12D82E0](v4);

  MEMORY[0x1E12D82E0](0x203A657461646D20, 0xE800000000000000);
  v5 = v1 + v2[8];
  v6 = sub_1DF6338DC();
  MEMORY[0x1E12D82E0](v6);

  MEMORY[0x1E12D82E0](0x203A7373616C6320, 0xE800000000000000);
  v9 = *(v1 + v2[9]);
  sub_1DF63366C();
  MEMORY[0x1E12D82E0](0x203A6174616420, 0xE700000000000000);
  sub_1DF5A3A80(*(v1 + v2[10]), *(v1 + v2[10] + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43800, &qword_1DF63E0F8);
  v7 = sub_1DF632A3C();
  MEMORY[0x1E12D82E0](v7);

  MEMORY[0x1E12D82E0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1DF62D304(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  if (qword_1ED8E4A88 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v3, qword_1ED8E4A90);
  v6 = *(*(v3 - 8) + 16);

  return v6(v4, v5, v3);
}

uint64_t sub_1DF62D3D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1DF63211C();
    if (v10)
    {
      v11 = sub_1DF63214C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1DF63213C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1DF63211C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1DF63214C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1DF63213C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1DF62D608(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1DF62F384(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1DF5B33C0(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_1DF62D3D8(v14, a3, a4, &v13);
  v10 = v4;
  sub_1DF5B33C0(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t sub_1DF62D7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = *v6;
  v13 = sub_1DF59F184(a1, a2);
  if (v14)
  {
    v15 = v13;
    v16 = *v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v10;
    v29 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v18 = v29;
    }

    v19 = *(*(v18 + 48) + 16 * v15 + 8);

    v20 = *(v18 + 56);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v28 = *(v21 - 8);
    (*(v28 + 32))(a6, v20 + *(v28 + 72) * v15, v21);
    sub_1DF62DE18(v15, v18, a3, a4);
    *v10 = v18;
    v22 = *(v28 + 56);
    v23 = a6;
    v24 = 0;
    v25 = v21;
  }

  else
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v22 = *(*(v26 - 8) + 56);
    v25 = v26;
    v23 = a6;
    v24 = 1;
  }

  return v22(v23, v24, 1, v25);
}

uint64_t sub_1DF62D980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1DF59F184(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DF5DE818();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_1DF6335AC();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_1DF62E1C4(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_1DF6335AC();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1DF62DAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1DF5C83A8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DF5DEC10();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_1DF6325AC();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A00, &qword_1DF638C30);
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_1DF62E3B0(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A00, &qword_1DF638C30);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

double sub_1DF62DCA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1DF59F184(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DF5DEF94();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1DF5A27C4(*(v12 + 56) + 32 * v9, a3);
    sub_1DF62E700(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_1DF62DD4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1DF59F184(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v19 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DF5DF15C();
      v12 = v19;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = (*(v12 + 56) + 112 * v9);
    v15 = v14[5];
    a3[4] = v14[4];
    a3[5] = v15;
    a3[6] = v14[6];
    v16 = v14[1];
    *a3 = *v14;
    a3[1] = v16;
    v17 = v14[3];
    a3[2] = v14[2];
    a3[3] = v17;
    sub_1DF62E8B0(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    a3[5] = 0u;
    a3[6] = 0u;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

unint64_t sub_1DF62DE18(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = result;
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (result + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v11 = ~v7;
    v12 = (sub_1DF6333EC() + 1) & ~v7;
    while (1)
    {
      v13 = *(a2 + 40);
      v14 = (*(a2 + 48) + 16 * v8);
      v15 = *v14;
      v16 = v14[1];
      sub_1DF633A6C();

      sub_1DF632ACC();
      v17 = sub_1DF633AAC();

      v18 = v17 & v11;
      if (v5 >= v12)
      {
        break;
      }

      if (v18 < v12)
      {
        goto LABEL_10;
      }

LABEL_11:
      v19 = *(a2 + 48);
      v20 = (v19 + 16 * v5);
      v21 = (v19 + 16 * v8);
      if (v5 != v8 || v20 >= v21 + 1)
      {
        *v20 = *v21;
      }

      v22 = *(a2 + 56);
      v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 72);
      v24 = v23 * v5;
      result = v22 + v23 * v5;
      v25 = v23 * v8;
      v26 = v22 + v23 * v8 + v23;
      if (v24 < v25 || result >= v26)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v5 = v8;
        if (v24 == v25)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v5 = v8;
LABEL_5:
      v8 = (v8 + 1) & v11;
      if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v18 < v12)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v5 < v18)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DF62E014(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DF6333EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1DF633A6C();

      sub_1DF632ACC();
      v13 = sub_1DF633AAC();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1DF62E1C4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DF6333EC() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1DF633A6C();

      sub_1DF632ACC();
      v13 = sub_1DF633AAC();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_1DF6335AC() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1DF62E3B0(int64_t a1, uint64_t a2)
{
  v4 = sub_1DF6325AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_1DF6333EC();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_1DF5A2C28(&qword_1ED8E6150, MEMORY[0x1E69695A8]);
      v24 = sub_1DF6328BC();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A00, &qword_1DF638C30) - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DF62E700(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DF6333EC() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1DF633A6C();

      sub_1DF632ACC();
      v14 = sub_1DF633AAC();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_1DF62E8B0(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DF6333EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1DF633A6C();

      sub_1DF632ACC();
      v13 = sub_1DF633AAC();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        result = (v18 + 112 * v3);
        v19 = (v18 + 112 * v6);
        if (v3 != v6 || result >= v19 + 112)
        {
          result = memmove(result, v19, 0x70uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1DF62EA64(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DF6333EC() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      sub_1DF633A6C();
      type metadata accessor for CFString(0);
      sub_1DF5A2C28(&unk_1ED8E4BB0, type metadata accessor for CFString);
      v12 = v11;
      sub_1DF63265C();
      v13 = sub_1DF633AAC();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 32 * v3);
        v20 = (v18 + 32 * v6);
        if (v3 != v6 || v19 >= v20 + 2)
        {
          v9 = v20[1];
          *v19 = *v20;
          v19[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_1DF62EC5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DF59F184(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1DF5DE818();
      goto LABEL_7;
    }

    sub_1DF5DD5CC(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_1DF59F184(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1DF6339EC();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1DF6335AC();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1DF62F1D4(v12, a2, a3, a1, v18);
}

uint64_t sub_1DF62EDDC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1DF6325AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1DF5C83A8(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1DF5DEC10();
      goto LABEL_7;
    }

    sub_1DF5DDC0C(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_1DF5C83A8(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1DF62F284(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1DF6339EC();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A00, &qword_1DF638C30);
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_1DF62EFEC(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DF59F184(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DF5DE0E4(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1DF59F184(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1DF6339EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1DF5DF15C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 112 * v11;

    return sub_1DF631FB0(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v22[7] + 112 * v11);
  v27 = *a1;
  v28 = a1[2];
  v26[1] = a1[1];
  v26[2] = v28;
  *v26 = v27;
  v29 = a1[3];
  v30 = a1[4];
  v31 = a1[6];
  v26[5] = a1[5];
  v26[6] = v31;
  v26[3] = v29;
  v26[4] = v30;
  v32 = v22[2];
  v15 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v33;
}

unint64_t sub_1DF62F18C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1DF62F1D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1DF6335AC();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1DF62F284(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1DF6325AC();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A00, &qword_1DF638C30);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1DF62F384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1DF63211C();
  v11 = result;
  if (result)
  {
    result = sub_1DF63214C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1DF63213C();
  sub_1DF62D3D8(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1DF62F43C(uint64_t a1)
{
  v2 = *MEMORY[0x1E697AFF8];
  v3 = *(a1 + 16);

  if (v3 && (v4 = sub_1DF59F794(v2), (v5 & 1) != 0))
  {
    sub_1DF5A0B98(*(a1 + 56) + 32 * v4, &v37);
    sub_1DF59CB50(&v37, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
    sub_1DF59CB50(&v37, &qword_1ECE436C0, &qword_1DF6393D0);
    v6 = *MEMORY[0x1E697B008];
    type metadata accessor for CFString(0);
    *(&v38 + 1) = v7;
    *&v37 = v6;
    sub_1DF5A27C4(&v37, v36);
    v8 = v2;
    v9 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v36, v8, isUniquelyReferenced_nonNull_native);
  }

  if (qword_1ED8E4C60 != -1)
  {
    swift_once();
  }

  v11 = sub_1DF6326AC();
  __swift_project_value_buffer(v11, qword_1ED8E4C68);
  v12 = sub_1DF63268C();
  v13 = sub_1DF63318C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v37 = v15;
    *v14 = 136315138;
    type metadata accessor for CFString(0);
    sub_1DF5A2C28(&qword_1ED8E4BA8, type metadata accessor for CFString);

    v16 = sub_1DF63284C();
    v18 = v17;

    v19 = sub_1DF59EEC8(v16, v18, &v37);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1DF59A000, v12, v13, "SecItemAdd() attributes: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1E12D9D80](v15, -1, -1);
    MEMORY[0x1E12D9D80](v14, -1, -1);
  }

  type metadata accessor for CFString(0);
  sub_1DF5A2C28(&qword_1ED8E4BA8, type metadata accessor for CFString);

  v20 = sub_1DF63282C();

  v21 = SecItemAdd(v20, 0);

  v22 = sub_1DF63268C();
  v23 = sub_1DF63318C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67109120;
    *(v24 + 4) = v21;
    _os_log_impl(&dword_1DF59A000, v22, v23, "SecItemAdd() status: %d", v24, 8u);
    MEMORY[0x1E12D9D80](v24, -1, -1);
  }

  if (v21 && v21 != -25299)
  {
    if (qword_1ED8E4A68 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v11, qword_1ED8E6928);
    v25 = sub_1DF63268C();
    v26 = sub_1DF63316C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v37 = v28;
      *v27 = 67109378;
      *(v27 + 4) = v21;
      *(v27 + 8) = 2082;
      v29 = SecCopyErrorMessageString(v21, 0);
      if (v29)
      {
        v30 = v29;
        v31 = sub_1DF63298C();
        v33 = v32;
      }

      else
      {
        v33 = 0xE90000000000003ELL;
        v31 = 0x6E776F6E6B6E753CLL;
      }

      v34 = sub_1DF59EEC8(v31, v33, &v37);

      *(v27 + 10) = v34;
      _os_log_impl(&dword_1DF59A000, v25, v26, "SecItemAdd error: %d [%{public}s]", v27, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1E12D9D80](v28, -1, -1);
      MEMORY[0x1E12D9D80](v27, -1, -1);
    }
  }

  else
  {
  }

  return v21;
}

uint64_t sub_1DF62F940(uint64_t a1)
{
  v2 = *MEMORY[0x1E697AFF8];
  v3 = *(a1 + 16);

  if (v3 && (v4 = sub_1DF59F794(v2), (v5 & 1) != 0))
  {
    sub_1DF5A0B98(*(a1 + 56) + 32 * v4, &v43);
    sub_1DF59CB50(&v43, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
    sub_1DF59CB50(&v43, &qword_1ECE436C0, &qword_1DF6393D0);
    v6 = *MEMORY[0x1E697B008];
    type metadata accessor for CFString(0);
    *(&v44 + 1) = v7;
    *&v43 = v6;
    sub_1DF5A27C4(&v43, v42);
    v8 = v2;
    v9 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v42, v8, isUniquelyReferenced_nonNull_native);
  }

  if (qword_1ED8E4C60 != -1)
  {
    swift_once();
  }

  v11 = sub_1DF6326AC();
  __swift_project_value_buffer(v11, qword_1ED8E4C68);

  v12 = sub_1DF63268C();
  v13 = sub_1DF63318C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v41 = v11;
    v15 = swift_slowAlloc();
    *&v43 = v15;
    *v14 = 136315394;
    type metadata accessor for CFString(0);
    sub_1DF5A2C28(&qword_1ED8E4BA8, type metadata accessor for CFString);

    v16 = sub_1DF63284C();
    v18 = v17;

    v19 = sub_1DF59EEC8(v16, v18, &v43);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    v20 = sub_1DF63284C();
    v22 = sub_1DF59EEC8(v20, v21, &v43);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_1DF59A000, v12, v13, "SecItemUpate() query: %s attributes: %s", v14, 0x16u);
    swift_arrayDestroy();
    v23 = v15;
    v11 = v41;
    MEMORY[0x1E12D9D80](v23, -1, -1);
    MEMORY[0x1E12D9D80](v14, -1, -1);
  }

  type metadata accessor for CFString(0);
  sub_1DF5A2C28(&qword_1ED8E4BA8, type metadata accessor for CFString);

  v24 = sub_1DF63282C();

  v25 = sub_1DF63282C();
  v26 = SecItemUpdate(v24, v25);

  v27 = sub_1DF63268C();
  v28 = sub_1DF63318C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 67109120;
    *(v29 + 4) = v26;
    _os_log_impl(&dword_1DF59A000, v27, v28, "SecItemUpate() status: %d", v29, 8u);
    MEMORY[0x1E12D9D80](v29, -1, -1);
  }

  if (v26)
  {
    if (qword_1ED8E4A68 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v11, qword_1ED8E6928);
    v30 = sub_1DF63268C();
    v31 = sub_1DF63316C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v43 = v33;
      *v32 = 67109378;
      *(v32 + 4) = v26;
      *(v32 + 8) = 2082;
      v34 = SecCopyErrorMessageString(v26, 0);
      if (v34)
      {
        v35 = v34;
        v36 = sub_1DF63298C();
        v38 = v37;
      }

      else
      {
        v38 = 0xE90000000000003ELL;
        v36 = 0x6E776F6E6B6E753CLL;
      }

      v39 = sub_1DF59EEC8(v36, v38, &v43);

      *(v32 + 10) = v39;
      _os_log_impl(&dword_1DF59A000, v30, v31, "SecItemUpdate error: %d [%{public}s]", v32, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1E12D9D80](v33, -1, -1);
      MEMORY[0x1E12D9D80](v32, -1, -1);
    }
  }

  else
  {
  }

  return v26;
}

void sub_1DF62FED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v18 = *a6;
  sub_1DF59DFB8();
  if (v10)
  {
    return;
  }

  v92 = a7;
  v19 = *MEMORY[0x1E697AE88];
  v20 = a4;
  v21 = MEMORY[0x1E69E6158];
  *(&v98 + 1) = MEMORY[0x1E69E6158];
  v88 = v20;
  *&v97 = v20;
  *(&v97 + 1) = a5;
  sub_1DF5A27C4(&v97, v96);
  v90 = a5;

  v22 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v89 = v19;
  sub_1DF59F654(v96, v19, isUniquelyReferenced_nonNull_native);
  v24 = *MEMORY[0x1E697AC30];
  *(&v98 + 1) = v21;
  *&v91 = a2;
  *&v97 = a2;
  *(&v97 + 1) = a3;
  sub_1DF5A27C4(&v97, v96);
  *(&v91 + 1) = a3;

  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF59F654(v96, v24, v25);
  v26 = *MEMORY[0x1E697B3C0];
  *(&v98 + 1) = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v97);
  (*(*(a10 - 8) + 16))(boxed_opaque_existential_1, a1, a10);
  sub_1DF5A27C4(&v97, v96);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF59F654(v96, v26, v28);
  v99 = v22;
  v29 = *MEMORY[0x1E697ABD8];
  if (*(&a9 + 1))
  {
    if (v18)
    {
      if (v18 == 1)
      {
        v30 = MEMORY[0x1E697ABE0];
LABEL_9:
        v31 = *v30;
LABEL_15:
        v33 = v31;
        type metadata accessor for CFString(0);
        *(&v98 + 1) = v34;
        *&v97 = v33;
        sub_1DF5A27C4(&v97, v96);
        v35 = v29;
        v36 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DF59F654(v96, v35, v36);

        v99 = v22;
        goto LABEL_16;
      }

      v31 = *MEMORY[0x1E697ABF8];
      if (*MEMORY[0x1E697ABF8])
      {
        goto LABEL_15;
      }

      goto LABEL_44;
    }

    v32 = MEMORY[0x1E697AC20];
LABEL_14:
    v31 = *v32;
    goto LABEL_15;
  }

  if (!v18)
  {
    v32 = MEMORY[0x1E697AC28];
    goto LABEL_14;
  }

  if (v18 == 1)
  {
    v30 = MEMORY[0x1E697ABE8];
    goto LABEL_9;
  }

  v31 = *MEMORY[0x1E697AC08];
  if (*MEMORY[0x1E697AC08])
  {
    goto LABEL_15;
  }

LABEL_44:
  v97 = 0u;
  v98 = 0u;
  v77 = v29;
  sub_1DF59CB50(&v97, &qword_1ECE436C0, &qword_1DF6393D0);
  sub_1DF59FBA0(v77, v96);

  sub_1DF59CB50(v96, &qword_1ECE436C0, &qword_1DF6393D0);
LABEL_16:
  v37 = *MEMORY[0x1E697AEB0];
  v38 = *MEMORY[0x1E695E4C0];
  v39 = *MEMORY[0x1E695E4D0];
  if (*(&a9 + 1))
  {
    v40 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v40 = *MEMORY[0x1E695E4C0];
  }

  if (v40)
  {
    type metadata accessor for CFBoolean(0);
    *(&v98 + 1) = v41;
    *&v97 = v40;
    sub_1DF5A27C4(&v97, v96);
    v42 = v37;
    v43 = v40;
    v44 = v99;
    v45 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v96, v42, v45);

    v99 = v44;
  }

  else
  {
    v46 = v37;
    sub_1DF59FBA0(v46, &v97);

    sub_1DF59CB50(&v97, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  v47 = *MEMORY[0x1E697AEA8];
  if (!*MEMORY[0x1E697AEA8])
  {
    __break(1u);
    return;
  }

  if (!*(&a9 + 1) || a9 == __PAIR128__(0xE000000000000000, 0) || (sub_1DF63394C() & 1) != 0)
  {
    v48 = v47;
    sub_1DF59FBA0(v48, &v97);

    sub_1DF59CB50(&v97, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  else
  {
    *(&v98 + 1) = MEMORY[0x1E69E6158];
    v97 = a9;
    sub_1DF5A27C4(&v97, v96);
    v74 = v47;

    v75 = v99;
    v76 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v96, v74, v76);

    v99 = v75;
  }

  v49 = *MEMORY[0x1E697B390];
  v94 = *MEMORY[0x1E697B390];
  if (v39)
  {
    type metadata accessor for CFBoolean(0);
    *(&v98 + 1) = v50;
    *&v97 = v39;
    sub_1DF5A27C4(&v97, v96);
    v51 = v49;
    v52 = v39;
    v53 = v99;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v96, v51, v54);

    v99 = v53;
    if (a8)
    {
LABEL_29:
      v55 = *MEMORY[0x1E697ABD0];
      *(&v98 + 1) = MEMORY[0x1E69E6158];
      *&v97 = v92;
      *(&v97 + 1) = a8;
      sub_1DF5A27C4(&v97, v96);

      v56 = v99;
      v57 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DF59F654(v96, v55, v57);
      v58 = v56;
      goto LABEL_32;
    }
  }

  else
  {
    v59 = v49;
    sub_1DF59FBA0(v59, &v97);

    sub_1DF59CB50(&v97, &qword_1ECE436C0, &qword_1DF6393D0);
    if (a8)
    {
      goto LABEL_29;
    }
  }

  v58 = v99;
LABEL_32:
  v60 = sub_1DF62F43C(v58);
  if (v60 != -25299)
  {
    v70 = v60;

    if (!v70)
    {
      return;
    }

LABEL_37:
    sub_1DF63085C();
    swift_allocError();
    *v71 = v70;
    *(v71 + 4) = 0;
    swift_willThrow();
    return;
  }

  v93 = v24;
  v95 = MEMORY[0x1E69E7CC8];
  v61 = *MEMORY[0x1E697ACF0];
  *(&v98 + 1) = MEMORY[0x1E6969080];
  v97 = xmmword_1DF6385D0;
  sub_1DF5A27C4(&v97, v96);
  v62 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF59F654(v96, v61, v62);
  v99 = v58;
  sub_1DF59FBA0(v37, &v97);
  sub_1DF59CB50(&v97, &qword_1ECE436C0, &qword_1DF6393D0);
  v63 = v47;
  sub_1DF59FBA0(v63, &v97);
  sub_1DF59CB50(&v97, &qword_1ECE436C0, &qword_1DF6393D0);
  if (*(&a9 + 1) && v39)
  {
    type metadata accessor for CFBoolean(0);
    *(&v98 + 1) = v64;
    *&v97 = v39;
    sub_1DF5A27C4(&v97, v96);
    v65 = v37;
    v66 = v39;
    v67 = MEMORY[0x1E69E7CC8];
    v68 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v96, v65, v68);

    v95 = v67;
    v69 = v88;
  }

  else
  {
    v72 = v37;
    sub_1DF59FBA0(v72, v96);

    sub_1DF59CB50(v96, &qword_1ECE436C0, &qword_1DF6393D0);
    v69 = v88;
    if (!*(&a9 + 1))
    {
LABEL_41:
      sub_1DF59FBA0(v63, v96);

      sub_1DF59CB50(v96, &qword_1ECE436C0, &qword_1DF6393D0);
      v73 = v95;
      goto LABEL_46;
    }
  }

  if (a9 == __PAIR128__(0xE000000000000000, 0) || (sub_1DF63394C() & 1) != 0)
  {
    goto LABEL_41;
  }

  *(&v98 + 1) = MEMORY[0x1E69E6158];
  v97 = a9;
  sub_1DF5A27C4(&v97, v96);

  v78 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF59F654(v96, v63, v78);

  v73 = v95;
LABEL_46:
  v79 = MEMORY[0x1E69E6158];
  *(&v98 + 1) = MEMORY[0x1E69E6158];
  *&v97 = v69;
  *(&v97 + 1) = v90;
  sub_1DF5A27C4(&v97, v96);

  v80 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF59F654(v96, v89, v80);
  *(&v98 + 1) = v79;
  v97 = v91;
  sub_1DF5A27C4(&v97, v96);

  v81 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF59F654(v96, v93, v81);
  v82 = v73;
  if (v39)
  {
    type metadata accessor for CFBoolean(0);
    *(&v98 + 1) = v83;
    *&v97 = v39;
    sub_1DF5A27C4(&v97, v96);
    v84 = v94;
    v85 = v39;
    v86 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v96, v84, v86);
  }

  else
  {
    v87 = v94;
    sub_1DF59FBA0(v87, &v97);

    sub_1DF59CB50(&v97, &qword_1ECE436C0, &qword_1DF6393D0);
    v82 = v73;
  }

  v70 = sub_1DF62F940(v82);

  if (v70)
  {
    goto LABEL_37;
  }
}

unint64_t sub_1DF63085C()
{
  result = qword_1ED8E4A70;
  if (!qword_1ED8E4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E4A70);
  }

  return result;
}

uint64_t sub_1DF6308B0(uint64_t a1)
{
  v2 = *MEMORY[0x1E697AFF8];
  v3 = *(a1 + 16);

  if (v3 && (v4 = sub_1DF59F794(v2), (v5 & 1) != 0))
  {
    sub_1DF5A0B98(*(a1 + 56) + 32 * v4, &v37);
    sub_1DF59CB50(&v37, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
    sub_1DF59CB50(&v37, &qword_1ECE436C0, &qword_1DF6393D0);
    v6 = *MEMORY[0x1E697B008];
    type metadata accessor for CFString(0);
    *(&v38 + 1) = v7;
    *&v37 = v6;
    sub_1DF5A27C4(&v37, v36);
    v8 = v2;
    v9 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v36, v8, isUniquelyReferenced_nonNull_native);
  }

  if (qword_1ED8E4C60 != -1)
  {
    swift_once();
  }

  v11 = sub_1DF6326AC();
  __swift_project_value_buffer(v11, qword_1ED8E4C68);
  v12 = sub_1DF63268C();
  v13 = sub_1DF63318C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v37 = v15;
    *v14 = 136315138;
    type metadata accessor for CFString(0);
    sub_1DF5A2C28(&qword_1ED8E4BA8, type metadata accessor for CFString);

    v16 = sub_1DF63284C();
    v18 = v17;

    v19 = sub_1DF59EEC8(v16, v18, &v37);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1DF59A000, v12, v13, "SecItemDelete() query: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1E12D9D80](v15, -1, -1);
    MEMORY[0x1E12D9D80](v14, -1, -1);
  }

  type metadata accessor for CFString(0);
  sub_1DF5A2C28(&qword_1ED8E4BA8, type metadata accessor for CFString);

  v20 = sub_1DF63282C();

  v21 = SecItemDelete(v20);

  v22 = sub_1DF63268C();
  v23 = sub_1DF63318C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67109120;
    *(v24 + 4) = v21;
    _os_log_impl(&dword_1DF59A000, v22, v23, "SecItemDelete() status: %d", v24, 8u);
    MEMORY[0x1E12D9D80](v24, -1, -1);
  }

  if (v21)
  {
    if (qword_1ED8E4A68 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v11, qword_1ED8E6928);
    v25 = sub_1DF63268C();
    v26 = sub_1DF63316C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v37 = v28;
      *v27 = 67109378;
      *(v27 + 4) = v21;
      *(v27 + 8) = 2082;
      v29 = SecCopyErrorMessageString(v21, 0);
      if (v29)
      {
        v30 = v29;
        v31 = sub_1DF63298C();
        v33 = v32;
      }

      else
      {
        v33 = 0xE90000000000003ELL;
        v31 = 0x6E776F6E6B6E753CLL;
      }

      v34 = sub_1DF59EEC8(v31, v33, &v37);

      *(v27 + 10) = v34;
      _os_log_impl(&dword_1DF59A000, v25, v26, "SecItemDelete error: %d [%{public}s]", v27, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1E12D9D80](v28, -1, -1);
      MEMORY[0x1E12D9D80](v27, -1, -1);
    }
  }

  else
  {
  }

  return v21;
}

void sub_1DF630DA4(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8)
{
  sub_1DF59DFB8();
  if (!v8)
  {
    v49 = a5;
    v17 = *MEMORY[0x1E697AE88];
    v18 = MEMORY[0x1E69E6158];
    v53 = MEMORY[0x1E69E6158];
    v51 = a3;
    v52 = a4;
    sub_1DF5A27C4(&v51, v50);

    v19 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v50, v17, isUniquelyReferenced_nonNull_native);
    v21 = *MEMORY[0x1E697AC30];
    v53 = v18;
    v51 = a1;
    v52 = a2;
    sub_1DF5A27C4(&v51, v50);

    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v50, v21, v22);
    v54 = v19;
    v23 = *MEMORY[0x1E697B390];
    v24 = *MEMORY[0x1E695E4D0];
    if (*MEMORY[0x1E695E4D0])
    {
      type metadata accessor for CFBoolean(0);
      v26 = v25;
      v53 = v25;
      v51 = v24;
      sub_1DF5A27C4(&v51, v50);
      v27 = v23;
      v28 = v24;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DF59F654(v50, v27, v29);

      v54 = v19;
      v30 = *MEMORY[0x1E697AEB0];
      if (a8)
      {
        v53 = v26;
        v51 = v28;
        sub_1DF5A27C4(&v51, v50);
        v31 = v28;
        v32 = v30;
        v33 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DF59F654(v50, v32, v33);

        v34 = v49;
        v54 = v19;
        v35 = *MEMORY[0x1E697AEA8];
        if (!*MEMORY[0x1E697AEA8])
        {
          goto LABEL_20;
        }

LABEL_10:
        if ((a7 || a8 != 0xE000000000000000) && (sub_1DF63394C() & 1) == 0)
        {
          v53 = MEMORY[0x1E69E6158];
          v51 = a7;
          v52 = a8;
          sub_1DF5A27C4(&v51, v50);
          v44 = v35;

          v45 = v54;
          v46 = swift_isUniquelyReferenced_nonNull_native();
          sub_1DF59F654(v50, v44, v46);

          v54 = v45;
          if (a6)
          {
            goto LABEL_14;
          }

          goto LABEL_16;
        }

LABEL_13:
        v39 = v35;
        sub_1DF59FBA0(v39, v50);

        sub_1DF59CB50(v50, &qword_1ECE436C0, &qword_1DF6393D0);
        if (a6)
        {
LABEL_14:
          v40 = *MEMORY[0x1E697ABD0];
          v53 = MEMORY[0x1E69E6158];
          v51 = v34;
          v52 = a6;
          sub_1DF5A27C4(&v51, v50);

          v41 = v54;
          v42 = swift_isUniquelyReferenced_nonNull_native();
          sub_1DF59F654(v50, v40, v42);
          v43 = v41;
          goto LABEL_17;
        }

LABEL_16:
        v43 = v54;
LABEL_17:
        v47 = sub_1DF6308B0(v43);

        if (v47)
        {
          sub_1DF63085C();
          swift_allocError();
          *v48 = v47;
          *(v48 + 4) = 0;
          swift_willThrow();
        }

        return;
      }

      v37 = 1;
    }

    else
    {
      v36 = v23;
      sub_1DF59FBA0(v36, v50);

      sub_1DF59CB50(v50, &qword_1ECE436C0, &qword_1DF6393D0);
      v30 = *MEMORY[0x1E697AEB0];
      v37 = a8 == 0;
    }

    v34 = v49;
    v38 = v30;
    sub_1DF59FBA0(v38, v50);

    sub_1DF59CB50(v50, &qword_1ECE436C0, &qword_1DF6393D0);
    v35 = *MEMORY[0x1E697AEA8];
    if (!*MEMORY[0x1E697AEA8])
    {
LABEL_20:
      __break(1u);
      return;
    }

    if (v37)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }
}

uint64_t sub_1DF6311B4(char a1, uint64_t a2, uint64_t a3)
{
  sub_1DF59DFB8();
  if (v3)
  {
    return v4;
  }

  v8 = *MEMORY[0x1E697B260];
  v9 = *MEMORY[0x1E697B268];
  type metadata accessor for CFString(0);
  *(&v79 + 1) = v10;
  *&v78 = v9;
  sub_1DF5A27C4(&v78, v77);
  v11 = v9;
  v12 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF59F654(v77, v8, isUniquelyReferenced_nonNull_native);
  v80 = v12;
  v14 = *MEMORY[0x1E697B390];
  v15 = *MEMORY[0x1E695E4D0];
  if (!*MEMORY[0x1E695E4D0])
  {
    v23 = v14;
    sub_1DF59FBA0(v23, &v78);

    sub_1DF59CB50(&v78, &qword_1ECE436C0, &qword_1DF6393D0);
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_6:
    v24 = [objc_opt_self() mainBundle];
    v25 = [v24 bundleIdentifier];

    if (v25)
    {
      v26 = sub_1DF63298C();
      v28 = v27;
    }

    else
    {
      v28 = 0x80000001DF636250;
      v26 = 0xD000000000000019;
    }

    v29 = SecTaskCreateFromSelf(0);
    if (v29)
    {
      v30 = v29;
      v31 = sub_1DF63295C();
      v32 = SecTaskCopyValueForEntitlement(v30, v31, 0);

      if (v32)
      {
        *(&v79 + 1) = swift_getObjectType();

        *&v78 = v32;
        goto LABEL_16;
      }

      v78 = 0u;
      v79 = 0u;

      if (*(&v79 + 1))
      {
LABEL_16:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE425C0, &qword_1DF637D10);
        if (swift_dynamicCast())
        {
          v33 = v77[0];
LABEL_19:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42918, &qword_1DF638908);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1DF638990;
          *(inited + 32) = v26;
          *(inited + 40) = v28;
          *&v78 = inited;
          sub_1DF62A328(v33);
          v35 = sub_1DF5FCC04(v78);

          if (!*(v35 + 16))
          {

            v21 = v80;
            goto LABEL_8;
          }

          v75 = a1;
          v36 = 0;
          v37 = v35 + 56;
          v38 = 1 << *(v35 + 32);
          v39 = -1;
          if (v38 < 64)
          {
            v39 = ~(-1 << v38);
          }

          v40 = v39 & *(v35 + 56);
          v73 = (v38 + 63) >> 6;
          v72 = MEMORY[0x1E69E7CC0];
          v76 = *MEMORY[0x1E697ABD0];
          v74 = v35;
          while (1)
          {
            v41 = v80;
            v42 = v36;
            if (!v40)
            {
              while (1)
              {
                v36 = v42 + 1;
                if (__OFADD__(v42, 1))
                {
                  break;
                }

                if (v36 >= v73)
                {
                  goto LABEL_52;
                }

                v40 = *(v37 + 8 * v36);
                ++v42;
                if (v40)
                {
                  goto LABEL_27;
                }
              }

              __break(1u);
LABEL_56:
              __break(1u);
LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
LABEL_60:
              result = sub_1DF6339EC();
              __break(1u);
              return result;
            }

LABEL_27:
            v43 = (*(v35 + 48) + ((v36 << 10) | (16 * __clz(__rbit64(v40)))));
            v44 = *v43;
            v45 = v43[1];
            *(&v79 + 1) = MEMORY[0x1E69E6158];
            *&v78 = v44;
            *(&v78 + 1) = v45;
            sub_1DF5A27C4(&v78, v77);

            v46 = swift_isUniquelyReferenced_nonNull_native();
            v48 = sub_1DF59F794(v76);
            v49 = v41[2];
            v50 = (v47 & 1) == 0;
            v51 = v49 + v50;
            if (__OFADD__(v49, v50))
            {
              goto LABEL_56;
            }

            v52 = v47;
            if (v41[3] >= v51)
            {
              if (v46)
              {
                v55 = v41;
                if ((v47 & 1) == 0)
                {
                  goto LABEL_31;
                }
              }

              else
              {
                sub_1DF5A2AA8();
                v55 = v41;
                if ((v52 & 1) == 0)
                {
                  goto LABEL_31;
                }
              }
            }

            else
            {
              sub_1DF59F8AC(v51, v46);
              v53 = sub_1DF59F794(v76);
              if ((v52 & 1) != (v54 & 1))
              {
                goto LABEL_60;
              }

              v48 = v53;
              v55 = v41;
              if ((v52 & 1) == 0)
              {
LABEL_31:
                sub_1DF5A29F8(v48, v76, v77, v55);
                v56 = v76;
                goto LABEL_35;
              }
            }

            v57 = (v55[7] + 32 * v48);
            __swift_destroy_boxed_opaque_existential_1(v57);
            sub_1DF5A27C4(v77, v57);
LABEL_35:
            v40 &= v40 - 1;
            v58 = sub_1DF59FC40(v55, v75 & 1);

            v59 = *(v58 + 16);
            v60 = v72[2];
            v61 = v60 + v59;
            if (__OFADD__(v60, v59))
            {
              goto LABEL_57;
            }

            v62 = swift_isUniquelyReferenced_nonNull_native();
            if ((v62 & 1) == 0 || v61 > v72[3] >> 1)
            {
              if (v60 <= v61)
              {
                v63 = v60 + v59;
              }

              else
              {
                v63 = v60;
              }

              v72 = sub_1DF5C16F8(v62, v63, 1, v72);
            }

            if (*(v58 + 16))
            {
              v71 = (v72[3] >> 1) - v72[2];
              v64 = *(type metadata accessor for Keychain.Item() - 8);
              if (v71 < v59)
              {
                goto LABEL_58;
              }

              v65 = (*(v64 + 80) + 32) & ~*(v64 + 80);
              v66 = *(v64 + 72);
              swift_arrayInitWithCopy();

              v35 = v74;
              if (v59)
              {
                v67 = v72[2];
                v68 = __OFADD__(v67, v59);
                v69 = v67 + v59;
                if (v68)
                {
                  goto LABEL_59;
                }

                v72[2] = v69;
              }
            }

            else
            {

              v35 = v74;
              if (v59)
              {
                __break(1u);
LABEL_52:

                return v72;
              }
            }
          }
        }

LABEL_18:
        v33 = MEMORY[0x1E69E7CC0];
        goto LABEL_19;
      }
    }

    else
    {
      v78 = 0u;
      v79 = 0u;
    }

    sub_1DF59CB50(&v78, &qword_1ECE436C0, &qword_1DF6393D0);
    goto LABEL_18;
  }

  type metadata accessor for CFBoolean(0);
  *(&v79 + 1) = v16;
  *&v78 = v15;
  sub_1DF5A27C4(&v78, v77);
  v17 = v14;
  v18 = v15;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF59F654(v77, v17, v19);

  v80 = v12;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_4:
  v20 = *MEMORY[0x1E697ABD0];
  *(&v79 + 1) = MEMORY[0x1E69E6158];
  *&v78 = a2;
  *(&v78 + 1) = a3;
  sub_1DF5A27C4(&v78, v77);

  v21 = v80;
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF59F654(v77, v20, v22);
LABEL_8:
  v4 = sub_1DF59FC40(v21, a1 & 1);

  return v4;
}

void *sub_1DF631A34(char a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Keychain.Item();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = (&v29[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1DF6311B4(a1, a2, a3);
  if (!v3)
  {
    v29[6] = 0;
    v13 = *(v12 + 16);
    if (v13)
    {
      v29[0] = MEMORY[0x1E69E7CC0];
      v14 = v12;
      sub_1DF5DB1D8(0, v13, 0);
      v15 = v29[0];
      v16 = *(v8 + 80);
      v28 = v14;
      v17 = v14 + ((v16 + 32) & ~v16);
      v18 = *(v8 + 72);
      do
      {
        sub_1DF5A39C0(v17, v11);
        v20 = v11[2];
        v19 = v11[3];

        sub_1DF5A3A24(v11);
        v29[0] = v15;
        v22 = *(v15 + 16);
        v21 = *(v15 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1DF5DB1D8((v21 > 1), v22 + 1, 1);
          v15 = v29[0];
        }

        *(v15 + 16) = v22 + 1;
        v23 = v15 + 16 * v22;
        *(v23 + 32) = v20;
        *(v23 + 40) = v19;
        v17 += v18;
        --v13;
      }

      while (v13);
    }

    else
    {

      v15 = MEMORY[0x1E69E7CC0];
    }

    v24 = sub_1DF5FCC04(v15);

    v25 = *(v24 + 16);
    if (!v25)
    {
      goto LABEL_12;
    }

    v11 = sub_1DF5EF5A0(*(v24 + 16), 0);
    v26 = sub_1DF5F1DE4(v29, v11 + 4, v25, v24);
    sub_1DF5DF418();
    if (v26 != v25)
    {
      __break(1u);
LABEL_12:

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v11;
}

void *sub_1DF631C60(char a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Keychain.Item();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = (&v29[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1DF6311B4(a1, a2, a3);
  if (!v3)
  {
    v29[6] = 0;
    v13 = *(v12 + 16);
    if (v13)
    {
      v29[0] = MEMORY[0x1E69E7CC0];
      v14 = v12;
      sub_1DF5DB1D8(0, v13, 0);
      v15 = v29[0];
      v16 = *(v8 + 80);
      v28 = v14;
      v17 = v14 + ((v16 + 32) & ~v16);
      v18 = *(v8 + 72);
      do
      {
        sub_1DF5A39C0(v17, v11);
        v20 = v11[4];
        v19 = v11[5];

        sub_1DF5A3A24(v11);
        v29[0] = v15;
        v22 = *(v15 + 16);
        v21 = *(v15 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1DF5DB1D8((v21 > 1), v22 + 1, 1);
          v15 = v29[0];
        }

        *(v15 + 16) = v22 + 1;
        v23 = v15 + 16 * v22;
        *(v23 + 32) = v20;
        *(v23 + 40) = v19;
        v17 += v18;
        --v13;
      }

      while (v13);
    }

    else
    {

      v15 = MEMORY[0x1E69E7CC0];
    }

    v24 = sub_1DF5FCC04(v15);

    v25 = *(v24 + 16);
    if (!v25)
    {
      goto LABEL_12;
    }

    v11 = sub_1DF5EF5A0(*(v24 + 16), 0);
    v26 = sub_1DF5F1DE4(v29, v11 + 4, v25, v24);
    sub_1DF5DF418();
    if (v26 != v25)
    {
      __break(1u);
LABEL_12:

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v11;
}

unint64_t sub_1DF631E90()
{
  result = qword_1ECE43808;
  if (!qword_1ECE43808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43808);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Keychain.Error(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Keychain.Error(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1DF631F54(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF631F70(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}
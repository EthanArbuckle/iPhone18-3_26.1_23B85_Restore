_BYTE *sub_1DF508B94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for GeoClassificationInfo());
  result = GeoClassificationInfo.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t CSFGeoClassificationStatus.description.getter(uint64_t a1)
{
  v1 = CSFGeoClassificationStatusDescription(a1);
  v2 = sub_1DF564944();

  return v2;
}

uint64_t sub_1DF508C5C()
{
  v1 = CSFGeoClassificationStatusDescription(*v0);
  v2 = sub_1DF564944();

  return v2;
}

uint64_t sub_1DF508CAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065;
  if (v4 || (sub_1DF5650D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646574696D696CLL && a2 == 0xE700000000000000 || (sub_1DF5650D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DF5650D4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t sub_1DF508DD0()
{
  result = qword_1ECE37670;
  if (!qword_1ECE37670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37670);
  }

  return result;
}

uint64_t sub_1DF508E2C()
{
  result = sub_1DF564494();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1DF509020()
{
  result = qword_1ECE38118;
  if (!qword_1ECE38118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38118);
  }

  return result;
}

unint64_t sub_1DF509078()
{
  result = qword_1ECE37660;
  if (!qword_1ECE37660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37660);
  }

  return result;
}

unint64_t sub_1DF5090D0()
{
  result = qword_1ECE37668;
  if (!qword_1ECE37668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37668);
  }

  return result;
}

uint64_t sub_1DF509124(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001DF5728C0 == a2 || (sub_1DF5650D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C69546568636163 && a2 == 0xE90000000000006CLL || (sub_1DF5650D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617465427369 && a2 == 0xE600000000000000 || (sub_1DF5650D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4B65727574616566 && a2 == 0xEA00000000007965)
  {

    return 3;
  }

  else
  {
    v5 = sub_1DF5650D4();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1DF5092B0()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 136);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DF5092F0()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

void sub_1DF509374(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

unint64_t sub_1DF5093C0()
{
  result = qword_1ECE38128;
  if (!qword_1ECE38128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38128);
  }

  return result;
}

unint64_t sub_1DF50948C()
{
  v1 = v0;
  sub_1DF564DF4();

  v2 = [*(v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_status) description];
  v3 = sub_1DF564944();
  v5 = v4;

  MEMORY[0x1E12D62C0](v3, v5);

  MEMORY[0x1E12D62C0](0x74656B636974202CLL, 0xEA0000000000203ALL);
  if (*(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket + 8))
  {
    v6 = *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket);
    v7 = *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket + 8);
  }

  else
  {
    v7 = 0xE500000000000000;
    v6 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E12D62C0](v6, v7);

  MEMORY[0x1E12D62C0](62, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t Ticket.ticket.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket);
  v2 = *(v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket + 8);

  return v1;
}

void *Ticket.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE38140, &qword_1DF56B770);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF509940();
  sub_1DF565284();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for Ticket();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v20) = 0;
    v12 = sub_1DF564F84();
    v14 = &v3[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket];
    *v14 = v12;
    v14[1] = v15;
    type metadata accessor for TicketStatus();
    v19 = 1;
    sub_1DF4BCB98(&qword_1ED954B30);
    sub_1DF564FE4();
    *&v3[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_status] = v20;
    v16 = type metadata accessor for Ticket();
    v18.receiver = v3;
    v18.super_class = v16;
    v11 = objc_msgSendSuper2(&v18, sel_init);
    sub_1DF509DC0();
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v11;
}

unint64_t sub_1DF509940()
{
  result = qword_1ECE374E8;
  if (!qword_1ECE374E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE374E8);
  }

  return result;
}

id Ticket.__allocating_init(ticket:status:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_status] = a3;
  v12.receiver = v7;
  v12.super_class = v3;
  v9 = a3;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  sub_1DF509DC0();

  return v10;
}

id Ticket.init(ticket:status:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = &v3[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket];
  *v5 = a1;
  *(v5 + 1) = a2;
  *&v3[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_status] = a3;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for Ticket();
  v6 = a3;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_1DF509DC0();

  return v7;
}

id Ticket.init(coder:)(void *a1)
{
  v2 = v1;
  sub_1DF4BC0E0();
  v4 = sub_1DF564CB4();
  sub_1DF564934();

  v5 = &v2[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket];
  *v5 = 0;
  *(v5 + 1) = 0;
  type metadata accessor for TicketStatus();
  v6 = sub_1DF564CB4();
  if (v6)
  {
    *&v2[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_status] = v6;
    v7 = v6;
    v12.receiver = v2;
    v12.super_class = type metadata accessor for Ticket();
    v8 = v7;
    v9 = objc_msgSendSuper2(&v12, sel_init);
    sub_1DF509DC0();
  }

  else
  {

    v10 = *(v5 + 1);

    type metadata accessor for Ticket();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v9;
}

void sub_1DF509C70(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket + 8))
  {
    v3 = *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket);
    v4 = sub_1DF564914();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_1DF564914();
  [a1 encodeObject:v4 forKey:v5];
  swift_unknownObjectRelease();

  v6 = *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_status);
  v7 = sub_1DF564914();
  [a1 encodeObject:v6 forKey:v7];
}

void sub_1DF509DC0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_status];
  v3 = objc_allocWithZone(type metadata accessor for TicketStatus());
  v4 = v2;
  v5 = TicketStatus.init(rawValue:)(0x7551746559746F6ELL, 0xEC00000064657565);
  if (v5)
  {
    v6 = v5;
    v7 = sub_1DF564CD4();

    if ((v7 & 1) == 0 && !*&v1[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket + 8])
    {
      if (qword_1ED9545D8 != -1)
      {
        swift_once();
      }

      v8 = sub_1DF5647B4();
      __swift_project_value_buffer(v8, qword_1ED9545E0);
      v9 = v1;
      oslog = sub_1DF564794();
      v10 = sub_1DF564C24();

      if (os_log_type_enabled(oslog, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v18 = v12;
        *v11 = 136315138;
        v13 = &v4[OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue];
        swift_beginAccess();
        v15 = *v13;
        v14 = v13[1];

        v16 = sub_1DF47EF6C(v15, v14, &v18);

        *(v11 + 4) = v16;
        _os_log_impl(&dword_1DF47C000, oslog, v10, "Ticket is not valid - has status %s but no ticket value.", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x1E12D75F0](v12, -1, -1);
        MEMORY[0x1E12D75F0](v11, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id Ticket.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1DF50A088()
{
  if (*v0)
  {
    return 0x737574617473;
  }

  else
  {
    return 0x74656B636974;
  }
}

uint64_t sub_1DF50A0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74656B636974 && a2 == 0xE600000000000000;
  if (v6 || (sub_1DF5650D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF5650D4();

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

uint64_t sub_1DF50A188(uint64_t a1)
{
  v2 = sub_1DF509940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF50A1C4(uint64_t a1)
{
  v2 = sub_1DF509940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id Ticket.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Ticket();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DF50A284(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38150, &qword_1DF56B778);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF509940();
  sub_1DF5652A4();
  v11 = *(v3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket);
  v12 = *(v3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket + 8);
  v16 = 0;
  sub_1DF565024();
  if (!v2)
  {
    v15 = *(v3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_status);
    v14[15] = 1;
    type metadata accessor for TicketStatus();
    sub_1DF4BCB98(&qword_1ECE37770);
    sub_1DF565074();
  }

  return (*(v6 + 8))(v9, v5);
}

void *sub_1DF50A438@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for Ticket());
  result = Ticket.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1DF50A5A8()
{
  result = qword_1ECE38158;
  if (!qword_1ECE38158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38158);
  }

  return result;
}

unint64_t sub_1DF50A600()
{
  result = qword_1ECE374D0;
  if (!qword_1ECE374D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE374D0);
  }

  return result;
}

unint64_t sub_1DF50A658()
{
  result = qword_1ECE374D8;
  if (!qword_1ECE374D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE374D8);
  }

  return result;
}

uint64_t sub_1DF50A6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1DF4A3FF4;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DF50A7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[7] = a4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF50A81C, 0, 0);
}

uint64_t sub_1DF50A81C()
{
  v1 = __swift_project_boxed_opaque_existential_0(*(v0 + 40), *(*(v0 + 40) + 24));
  if (*(*__swift_project_boxed_opaque_existential_0(v1, v1[3]) + 16) == 1)
  {
    v2 = *(v0 + 48);
    v4 = *(v0 + 24);
    v3 = *(v0 + 32);
    v5 = swift_task_alloc();
    *(v0 + 64) = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v6 = swift_task_alloc();
    *(v0 + 72) = v6;
    v6[2] = v2;
    v6[3] = sub_1DF513DF0;
    v6[4] = v5;
    v7 = *(MEMORY[0x1E69E8920] + 4);
    v8 = swift_task_alloc();
    *(v0 + 80) = v8;
    v9 = type metadata accessor for WaitlistResult();
    *v8 = v0;
    v8[1] = sub_1DF50A9CC;

    return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000023, 0x80000001DF574470, sub_1DF513F68, v6, v9);
  }

  else
  {
    **(v0 + 56) = 1;
    *(v0 + 96) = 1;
    sub_1DF4E4A2C();
    swift_willThrowTypedImpl();
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1DF50A9CC()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF513F64, 0, 0);
  }

  else
  {
    v5 = v3[8];
    v4 = v3[9];

    v6 = v3[2];

    v7 = v3[1];

    return v7(v6);
  }
}

uint64_t sub_1DF50AB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[7] = a4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF50AB44, 0, 0);
}

uint64_t sub_1DF50AB44()
{
  v1 = __swift_project_boxed_opaque_existential_0(*(v0 + 40), *(*(v0 + 40) + 24));
  if (*(*__swift_project_boxed_opaque_existential_0(v1, v1[3]) + 16) == 1)
  {
    v2 = *(v0 + 48);
    v4 = *(v0 + 24);
    v3 = *(v0 + 32);
    v5 = swift_task_alloc();
    *(v0 + 64) = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v6 = swift_task_alloc();
    *(v0 + 72) = v6;
    v6[2] = v2;
    v6[3] = sub_1DF513D74;
    v6[4] = v5;
    v7 = *(MEMORY[0x1E69E8920] + 4);
    v8 = swift_task_alloc();
    *(v0 + 80) = v8;
    v9 = type metadata accessor for WaitlistResult();
    *v8 = v0;
    v8[1] = sub_1DF50ACF4;

    return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000023, 0x80000001DF574470, sub_1DF513DBC, v6, v9);
  }

  else
  {
    **(v0 + 56) = 1;
    *(v0 + 96) = 1;
    sub_1DF4E4A2C();
    swift_willThrowTypedImpl();
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1DF50ACF4()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF50AE44, 0, 0);
  }

  else
  {
    v5 = v3[8];
    v4 = v3[9];

    v6 = v3[2];

    v7 = v3[1];

    return v7(v6);
  }
}

uint64_t sub_1DF50AE44()
{
  v10 = v0;
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);

  v5 = sub_1DF5642E4();
  sub_1DF549BC4(&v9);

  v6 = v9;
  *v4 = v9;
  *(v0 + 97) = v6;
  sub_1DF4E4A2C();
  swift_willThrowTypedImpl();

  v7 = *(v0 + 8);

  return v7();
}

void sub_1DF50AF08(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

_WORD *sub_1DF50AF70(char a1, void (*a2)(), uint64_t a3)
{
  v7 = sub_1DF49207C();
  if (a1)
  {
    v26 = a2;
    v27 = a3;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1DF50AF08;
    v25 = &block_descriptor_156;
    v8 = _Block_copy(&aBlock);

    v9 = &selRef_synchronousRemoteObjectProxyWithErrorHandler_;
  }

  else
  {
    v26 = a2;
    v27 = a3;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1DF50AF08;
    v25 = &block_descriptor_147;
    v8 = _Block_copy(&aBlock);

    v9 = &selRef_remoteObjectProxyWithErrorHandler_;
  }

  v10 = [v7 *v9];
  _Block_release(v8);

  sub_1DF564D24();
  swift_unknownObjectRelease();
  sub_1DF47F24C(v28, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38168, &unk_1DF56B9B0);
  if (swift_dynamicCast())
  {
    v7 = v21;
    v11 = sub_1DF49207C();
    v26 = sub_1DF513F60;
    v27 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1DF48EC24;
    v25 = &block_descriptor_150;
    v12 = _Block_copy(&aBlock);
    [v11 setInterruptionHandler_];
    _Block_release(v12);

    v13 = *(v3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures9XPCCaller____lazy_storage___connection);
    v26 = sub_1DF48EC68;
    v27 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1DF48EC24;
    v25 = &block_descriptor_153;
    v14 = _Block_copy(&aBlock);
    v15 = v13;
    [v15 setInvalidationHandler_];
    _Block_release(v14);

    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  else
  {
    if (qword_1ED956390 != -1)
    {
      swift_once();
    }

    v16 = sub_1DF5647B4();
    __swift_project_value_buffer(v16, qword_1ED956398);
    v17 = sub_1DF564794();
    v18 = sub_1DF564C24();
    if (os_log_type_enabled(v17, v18))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DF47C000, v17, v18, "Proxy object has the wrong type", v7, 2u);
      MEMORY[0x1E12D75F0](v7, -1, -1);
    }

    sub_1DF498474();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  return v7;
}

_WORD *sub_1DF50B3C4(void (*a1)(), const char *a2, SEL *a3)
{
  result = sub_1DF50AF70(0, a1, 0);
  if (!v3)
  {
    v7 = result;
    if (qword_1ED956390 != -1)
    {
      swift_once();
    }

    v8 = sub_1DF5647B4();
    __swift_project_value_buffer(v8, qword_1ED956398);
    v9 = sub_1DF564794();
    v10 = sub_1DF564C44();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1DF47EF6C(0x6165727574616566, 0xEE00647373656363, &v13);
      _os_log_impl(&dword_1DF47C000, v9, v10, a2, v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1E12D75F0](v12, -1, -1);
      MEMORY[0x1E12D75F0](v11, -1, -1);
    }

    [v7 *a3];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1DF50B558(void *a1, const char *a2)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956398);
  v5 = a1;
  oslog = sub_1DF564794();
  v6 = sub_1DF564C24();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v9 = sub_1DF5651B4();
    v11 = sub_1DF47EF6C(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1DF47C000, oslog, v6, a2, v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1E12D75F0](v8, -1, -1);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1DF50B6F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v27 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v8 = *(v3 + 16);
  v30 = a1;
  v28 = v8;
  v8(&v24 - v6, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v11 = *(v3 + 32);
  v29 = v2;
  v11(v10 + v9, v7, v2);
  v12 = sub_1DF50AF70(0, sub_1DF5137E8, v10);
  v25 = v11;
  v26 = v12;

  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v13 = sub_1DF5647B4();
  __swift_project_value_buffer(v13, qword_1ED956398);
  v14 = sub_1DF564794();
  v15 = sub_1DF564C44();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_1DF47EF6C(0xD000000000000017, 0x80000001DF574620, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1DF47EF6C(0x6165727574616566, 0xEE00647373656363, aBlock);
    _os_log_impl(&dword_1DF47C000, v14, v15, "Sending %s request to %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v17, -1, -1);
    MEMORY[0x1E12D75F0](v16, -1, -1);
  }

  v18 = v27;
  v19 = v25;
  v20 = v29;
  v28(v27, v30, v29);
  v21 = swift_allocObject();
  v19(v21 + v9, v18, v20);
  aBlock[4] = sub_1DF513810;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF49BC74;
  aBlock[3] = &block_descriptor_144;
  v22 = _Block_copy(aBlock);

  [v26 getSharedAlbumsStatusWithCompletion_];
  _Block_release(v22);
  return swift_unknownObjectRelease();
}

uint64_t sub_1DF50BC48(void *a1)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956398);
  v3 = a1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C24();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DF47EF6C(0xD000000000000017, 0x80000001DF574620, &v14);
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v8 = sub_1DF5651B4();
    v10 = sub_1DF47EF6C(v8, v9, &v14);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1DF47C000, v4, v5, "remote proxy error in %s: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  sub_1DF498474();
  v11 = swift_allocError();
  *v12 = 1;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
  return sub_1DF564B14();
}

uint64_t sub_1DF50BE44(char a1, void *a2)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956398);
  v5 = a2;
  v6 = sub_1DF564794();
  v7 = sub_1DF564C44();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_1DF47EF6C(0xD000000000000017, 0x80000001DF574620, &v17);
    *(v8 + 12) = 1024;
    *(v8 + 14) = a1 & 1;
    *(v8 + 18) = 2080;
    if (a2)
    {
      v10 = [v5 localizedDescription];
      v11 = sub_1DF564944();
      v13 = v12;
    }

    else
    {
      v13 = 0xE300000000000000;
      v11 = 7104878;
    }

    v16 = sub_1DF47EF6C(v11, v13, &v17);

    *(v8 + 20) = v16;
    _os_log_impl(&dword_1DF47C000, v6, v7, "received %s response, isEnabled: %{BOOL}d, error: %s", v8, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);

    if (!a2)
    {
      goto LABEL_10;
    }

LABEL_7:
    v17 = v5;
    v14 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
    return sub_1DF564B14();
  }

  if (a2)
  {
    goto LABEL_7;
  }

LABEL_10:
  LOBYTE(v17) = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
  return sub_1DF564B24();
}

uint64_t sub_1DF50C0A4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF50C0C8, 0, 0);
}

uint64_t sub_1DF50C0C8()
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  __swift_project_value_buffer(v1, qword_1ED956398);
  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DF47C000, v2, v3, "Getting ticket status", v4, 2u);
    MEMORY[0x1E12D75F0](v4, -1, -1);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  v8 = swift_task_alloc();
  v0[6] = v8;
  v8[2] = v5;
  v8[3] = v7;
  v8[4] = v6;
  v9 = *(MEMORY[0x1E69E8920] + 4);
  v10 = swift_task_alloc();
  v0[7] = v10;
  v11 = type metadata accessor for TicketStatus();
  *v10 = v0;
  v10[1] = sub_1DF50C288;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000001CLL, 0x80000001DF574600, sub_1DF51378C, v8, v11);
}

uint64_t sub_1DF50C288()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1DF49091C;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1DF48EAFC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1DF50C3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v35 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38190, &qword_1DF56BA28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v36 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v31 - v9;
  v11 = *(v6 + 16);
  v38 = a1;
  v11(v31 - v9, a1, v5);
  v12 = *(v6 + 80);
  v13 = swift_allocObject();
  v14 = *(v6 + 32);
  v37 = v5;
  v14(v13 + ((v12 + 16) & ~v12), v10, v5);
  v15 = sub_1DF50AF70(0, sub_1DF513798, v13);
  v31[0] = v14;
  v31[1] = v6 + 32;
  v31[2] = v12;
  v32 = v11;
  v16 = v15;

  v17 = qword_1ED956390;
  v33 = v16;
  swift_unknownObjectRetain();
  if (v17 != -1)
  {
    swift_once();
  }

  v18 = sub_1DF5647B4();
  __swift_project_value_buffer(v18, qword_1ED956398);
  v19 = sub_1DF564794();
  v20 = sub_1DF564C44();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_1DF47EF6C(0xD00000000000001CLL, 0x80000001DF574600, aBlock);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_1DF47EF6C(0x6165727574616566, 0xEE00647373656363, aBlock);
    _os_log_impl(&dword_1DF47C000, v19, v20, "Sending %s request to %s.", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v22, -1, -1);
    MEMORY[0x1E12D75F0](v21, -1, -1);
  }

  v23 = v36;
  v24 = v31[0];
  v25 = sub_1DF564914();
  v26 = v37;
  v32(v23, v38, v37);
  v27 = swift_allocObject();
  v28 = v23;
  v29 = v27;
  v24(v27 + ((v12 + 16) & ~v12), v28, v26);
  aBlock[4] = sub_1DF5137C0;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF48DAD0;
  aBlock[3] = &block_descriptor_135;
  v30 = _Block_copy(aBlock);

  [v33 getTicketStatusForFeature:v25 completion:v30];
  swift_unknownObjectRelease();
  _Block_release(v30);
  swift_unknownObjectRelease();
}

uint64_t sub_1DF50C940(void *a1)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956398);
  v3 = a1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C24();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DF47EF6C(0xD00000000000001CLL, 0x80000001DF574600, &v14);
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v8 = sub_1DF5651B4();
    v10 = sub_1DF47EF6C(v8, v9, &v14);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Remote proxy error in %s: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  sub_1DF498474();
  v11 = swift_allocError();
  *v12 = 1;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38190, &qword_1DF56BA28);
  return sub_1DF564B14();
}

uint64_t sub_1DF50CB3C(void *a1, void *a2)
{
  if (a2)
  {
    v3 = qword_1ED956390;
    v4 = a2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_1DF5647B4();
    __swift_project_value_buffer(v5, qword_1ED956398);
    v6 = v4;
    v7 = sub_1DF564794();
    v8 = sub_1DF564C24();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v32 = v11;
      *v9 = 136315394;
      *(v9 + 4) = sub_1DF47EF6C(0xD00000000000001CLL, 0x80000001DF574600, &v32);
      *(v9 + 12) = 2112;
      *(v9 + 14) = v6;
      *v10 = a2;
      v12 = v6;
      _os_log_impl(&dword_1DF47C000, v7, v8, "Received %s error response: %@", v9, 0x16u);
      sub_1DF484888(v10);
      MEMORY[0x1E12D75F0](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1E12D75F0](v11, -1, -1);
      MEMORY[0x1E12D75F0](v9, -1, -1);
    }

    v32 = v6;
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38190, &qword_1DF56BA28);
    return sub_1DF564B14();
  }

  if (!a1)
  {
    if (qword_1ED956390 != -1)
    {
      swift_once();
    }

    v25 = sub_1DF5647B4();
    __swift_project_value_buffer(v25, qword_1ED956398);
    v26 = sub_1DF564794();
    v27 = sub_1DF564C24();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1DF47EF6C(0xD00000000000001CLL, 0x80000001DF574600, &v32);
      _os_log_impl(&dword_1DF47C000, v26, v27, "Receieved %s neither an error or response object. Throwing error.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x1E12D75F0](v29, -1, -1);
      MEMORY[0x1E12D75F0](v28, -1, -1);
    }

    sub_1DF498474();
    v30 = swift_allocError();
    *v31 = 2;
    v32 = v30;
    goto LABEL_7;
  }

  v14 = qword_1ED956390;
  v16 = a1;
  if (v14 != -1)
  {
    swift_once();
  }

  v17 = sub_1DF5647B4();
  __swift_project_value_buffer(v17, qword_1ED956398);
  v18 = v16;
  v19 = sub_1DF564794();
  v20 = sub_1DF564C44();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32 = v23;
    *v21 = 136315394;
    *(v21 + 4) = sub_1DF47EF6C(0xD00000000000001CLL, 0x80000001DF574600, &v32);
    *(v21 + 12) = 2112;
    *(v21 + 14) = v18;
    *v22 = a1;
    v24 = v18;
    _os_log_impl(&dword_1DF47C000, v19, v20, "Received %s status response: %@", v21, 0x16u);
    sub_1DF484888(v22);
    MEMORY[0x1E12D75F0](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1E12D75F0](v23, -1, -1);
    MEMORY[0x1E12D75F0](v21, -1, -1);
  }

  v32 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38190, &qword_1DF56BA28);
  return sub_1DF564B24();
}

uint64_t sub_1DF50CFD4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF50CFF8, 0, 0);
}

uint64_t sub_1DF50CFF8()
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  __swift_project_value_buffer(v1, qword_1ED956398);
  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DF47C000, v2, v3, "Getting ticket status from cache.", v4, 2u);
    MEMORY[0x1E12D75F0](v4, -1, -1);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  v8 = swift_task_alloc();
  v0[6] = v8;
  v8[2] = v5;
  v8[3] = v7;
  v8[4] = v6;
  v9 = *(MEMORY[0x1E69E8920] + 4);
  v10 = swift_task_alloc();
  v0[7] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38180, &qword_1DF56BA10);
  *v10 = v0;
  v10[1] = sub_1DF48E3A0;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000025, 0x80000001DF574580, sub_1DF513730, v8, v11);
}

void sub_1DF50D1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38188, &qword_1DF56BA18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v21 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = *(v6 + 16);
  v24 = a1;
  v20 = v11;
  v11(&v20 - v9, a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  v14 = *(v6 + 32);
  v14(v13 + v12, v10, v5);
  v15 = sub_1DF50AF70(0, sub_1DF51373C, v13);

  swift_unknownObjectRetain();
  v16 = sub_1DF564914();
  v17 = v21;
  v20(v21, v24, v5);
  v18 = swift_allocObject();
  v14(v18 + v12, v17, v5);
  aBlock[4] = sub_1DF513764;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF48DAD0;
  aBlock[3] = &block_descriptor_124;
  v19 = _Block_copy(aBlock);

  [v15 getTicketStatusFromCacheForFeature:v16 completion:v19];
  swift_unknownObjectRelease();
  _Block_release(v19);
  swift_unknownObjectRelease();
}

uint64_t sub_1DF50D5EC(void *a1)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956398);
  v3 = a1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C24();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DF47EF6C(0xD000000000000025, 0x80000001DF574580, &v14);
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v8 = sub_1DF5651B4();
    v10 = sub_1DF47EF6C(v8, v9, &v14);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Remote proxy error in %s: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  sub_1DF498474();
  v11 = swift_allocError();
  *v12 = 1;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38188, &qword_1DF56BA18);
  return sub_1DF564B14();
}

uint64_t sub_1DF50D7E8(void *a1, void *a2)
{
  if (a2)
  {
    v3 = qword_1ED956390;
    v4 = a2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_1DF5647B4();
    __swift_project_value_buffer(v5, qword_1ED956398);
    v6 = v4;
    v7 = sub_1DF564794();
    v8 = sub_1DF564C24();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v32 = v11;
      *v9 = 136315394;
      *(v9 + 4) = sub_1DF47EF6C(0xD000000000000025, 0x80000001DF574580, &v32);
      *(v9 + 12) = 2112;
      *(v9 + 14) = v6;
      *v10 = a2;
      v12 = v6;
      _os_log_impl(&dword_1DF47C000, v7, v8, "Received %s error response: %@", v9, 0x16u);
      sub_1DF484888(v10);
      MEMORY[0x1E12D75F0](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1E12D75F0](v11, -1, -1);
      MEMORY[0x1E12D75F0](v9, -1, -1);
    }

    v32 = v6;
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38188, &qword_1DF56BA18);
    return sub_1DF564B14();
  }

  if (!a1)
  {
    if (qword_1ED956390 != -1)
    {
      swift_once();
    }

    v25 = sub_1DF5647B4();
    __swift_project_value_buffer(v25, qword_1ED956398);
    v26 = sub_1DF564794();
    v27 = sub_1DF564C24();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1DF47EF6C(0xD000000000000025, 0x80000001DF574580, &v32);
      _os_log_impl(&dword_1DF47C000, v26, v27, "Receieved %s neither an error or response object. Throwing error.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x1E12D75F0](v29, -1, -1);
      MEMORY[0x1E12D75F0](v28, -1, -1);
    }

    sub_1DF498474();
    v30 = swift_allocError();
    *v31 = 2;
    v32 = v30;
    goto LABEL_7;
  }

  v14 = qword_1ED956390;
  v16 = a1;
  if (v14 != -1)
  {
    swift_once();
  }

  v17 = sub_1DF5647B4();
  __swift_project_value_buffer(v17, qword_1ED956398);
  v18 = v16;
  v19 = sub_1DF564794();
  v20 = sub_1DF564C44();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32 = v23;
    *v21 = 136315394;
    *(v21 + 4) = sub_1DF47EF6C(0xD000000000000025, 0x80000001DF574580, &v32);
    *(v21 + 12) = 2112;
    *(v21 + 14) = v18;
    *v22 = a1;
    v24 = v18;
    _os_log_impl(&dword_1DF47C000, v19, v20, "Received %s status response: %@", v21, 0x16u);
    sub_1DF484888(v22);
    MEMORY[0x1E12D75F0](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1E12D75F0](v23, -1, -1);
    MEMORY[0x1E12D75F0](v21, -1, -1);
  }

  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38188, &qword_1DF56BA18);
  return sub_1DF564B24();
}

void sub_1DF50DC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v35 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE384A0, &qword_1DF56BA00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v36 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v31 - v9;
  v11 = *(v6 + 16);
  v38 = a1;
  v11(v31 - v9, a1, v5);
  v12 = *(v6 + 80);
  v13 = swift_allocObject();
  v14 = *(v6 + 32);
  v37 = v5;
  v14(v13 + ((v12 + 16) & ~v12), v10, v5);
  v15 = sub_1DF50AF70(0, sub_1DF5136E0, v13);
  v31[0] = v14;
  v31[1] = v6 + 32;
  v31[2] = v12;
  v32 = v11;
  v16 = v15;

  v17 = qword_1ED956390;
  v33 = v16;
  swift_unknownObjectRetain();
  if (v17 != -1)
  {
    swift_once();
  }

  v18 = sub_1DF5647B4();
  __swift_project_value_buffer(v18, qword_1ED956398);
  v19 = sub_1DF564794();
  v20 = sub_1DF564C44();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_1DF47EF6C(0xD000000000000016, 0x80000001DF574520, aBlock);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_1DF47EF6C(0x6165727574616566, 0xEE00647373656363, aBlock);
    _os_log_impl(&dword_1DF47C000, v19, v20, "Sending %s request to %s.", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v22, -1, -1);
    MEMORY[0x1E12D75F0](v21, -1, -1);
  }

  v23 = v36;
  v24 = v31[0];
  v25 = sub_1DF564914();
  v26 = v37;
  v32(v23, v38, v37);
  v27 = swift_allocObject();
  v28 = v23;
  v29 = v27;
  v24(v27 + ((v12 + 16) & ~v12), v28, v26);
  aBlock[4] = sub_1DF513708;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF48DAD0;
  aBlock[3] = &block_descriptor_113;
  v30 = _Block_copy(aBlock);

  [v33 getTicketForFeature:v25 completion:v30];
  swift_unknownObjectRelease();
  _Block_release(v30);
  swift_unknownObjectRelease();
}

uint64_t sub_1DF50E21C(void *a1)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956398);
  v3 = a1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C24();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DF47EF6C(0xD000000000000016, 0x80000001DF574520, &v14);
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v8 = sub_1DF5651B4();
    v10 = sub_1DF47EF6C(v8, v9, &v14);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Remote proxy error in %s: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  sub_1DF498474();
  v11 = swift_allocError();
  *v12 = 1;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE384A0, &qword_1DF56BA00);
  return sub_1DF564B14();
}

uint64_t sub_1DF50E418(void *a1, void *a2)
{
  if (a2)
  {
    v3 = qword_1ED956390;
    v4 = a2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_1DF5647B4();
    __swift_project_value_buffer(v5, qword_1ED956398);
    v6 = v4;
    v7 = sub_1DF564794();
    v8 = sub_1DF564C24();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v32 = v11;
      *v9 = 136315394;
      *(v9 + 4) = sub_1DF47EF6C(0xD000000000000016, 0x80000001DF574520, &v32);
      *(v9 + 12) = 2112;
      *(v9 + 14) = v6;
      *v10 = a2;
      v12 = v6;
      _os_log_impl(&dword_1DF47C000, v7, v8, "Received %s error response: %@", v9, 0x16u);
      sub_1DF484888(v10);
      MEMORY[0x1E12D75F0](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1E12D75F0](v11, -1, -1);
      MEMORY[0x1E12D75F0](v9, -1, -1);
    }

    v32 = v6;
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE384A0, &qword_1DF56BA00);
    return sub_1DF564B14();
  }

  if (!a1)
  {
    if (qword_1ED956390 != -1)
    {
      swift_once();
    }

    v25 = sub_1DF5647B4();
    __swift_project_value_buffer(v25, qword_1ED956398);
    v26 = sub_1DF564794();
    v27 = sub_1DF564C24();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1DF47EF6C(0xD000000000000016, 0x80000001DF574520, &v32);
      _os_log_impl(&dword_1DF47C000, v26, v27, "Receieved %s neither an error or response object. Throwing error.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x1E12D75F0](v29, -1, -1);
      MEMORY[0x1E12D75F0](v28, -1, -1);
    }

    sub_1DF498474();
    v30 = swift_allocError();
    *v31 = 2;
    v32 = v30;
    goto LABEL_7;
  }

  v14 = qword_1ED956390;
  v16 = a1;
  if (v14 != -1)
  {
    swift_once();
  }

  v17 = sub_1DF5647B4();
  __swift_project_value_buffer(v17, qword_1ED956398);
  v18 = v16;
  v19 = sub_1DF564794();
  v20 = sub_1DF564C44();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32 = v23;
    *v21 = 136315394;
    *(v21 + 4) = sub_1DF47EF6C(0xD000000000000016, 0x80000001DF574520, &v32);
    *(v21 + 12) = 2112;
    *(v21 + 14) = v18;
    *v22 = a1;
    v24 = v18;
    _os_log_impl(&dword_1DF47C000, v19, v20, "Received %s status response: %@", v21, 0x16u);
    sub_1DF484888(v22);
    MEMORY[0x1E12D75F0](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1E12D75F0](v23, -1, -1);
    MEMORY[0x1E12D75F0](v21, -1, -1);
  }

  v32 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE384A0, &qword_1DF56BA00);
  return sub_1DF564B24();
}

uint64_t sub_1DF50E8B0(_BYTE *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF50E8D8, 0, 0);
}

uint64_t sub_1DF50E8D8()
{
  v14 = v0;
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  __swift_project_value_buffer(v1, qword_1ED956398);
  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1DF47EF6C(0xD000000000000016, 0x80000001DF574500, &v13);
    _os_log_impl(&dword_1DF47C000, v2, v3, "%{public}s [Start]", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1E12D75F0](v5, -1, -1);
    MEMORY[0x1E12D75F0](v4, -1, -1);
  }

  else
  {
  }

  v6 = *(v0 + 48);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v0 + 24) = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v9 = *(MEMORY[0x1E69E8920] + 4);
  v10 = swift_task_alloc();
  *(v0 + 32) = v10;
  *v10 = v0;
  v10[1] = sub_1DF50EAF8;
  v11 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v10, 0, 0, 0xD000000000000016, 0x80000001DF574500, sub_1DF5136A8, v8, v11);
}

uint64_t sub_1DF50EAF8()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_1DF50EC2C;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1DF50EC14;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DF50EC2C()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

void sub_1DF50EC90(uint64_t a1, uint64_t a2, int a3)
{
  v21 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38480, &qword_1DF56B9C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v22 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = *(v5 + 16);
  v23 = a1;
  v20 = v10;
  v10(&v19 - v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v13 = *(v5 + 32);
  v13(v12 + v11, v9, v4);
  v14 = sub_1DF50AF70(0, sub_1DF5136B4, v12);

  swift_unknownObjectRetain();
  v15 = sub_1DF564914();

  v16 = v22;
  v20(v22, v23, v4);
  v17 = swift_allocObject();
  v13(v17 + v11, v16, v4);
  aBlock[4] = sub_1DF5136DC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF50F2D8;
  aBlock[3] = &block_descriptor_104;
  v18 = _Block_copy(aBlock);

  [v14 clearCFUGateWithFeature:v15 completion:v18];
  swift_unknownObjectRelease();
  _Block_release(v18);
  swift_unknownObjectRelease();
}

uint64_t sub_1DF50F0DC(void *a1)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956398);
  v3 = a1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C24();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DF47EF6C(0xD000000000000016, 0x80000001DF574500, &v14);
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v8 = sub_1DF5651B4();
    v10 = sub_1DF47EF6C(v8, v9, &v14);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Remote proxy error in %s: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  sub_1DF498474();
  v11 = swift_allocError();
  *v12 = 1;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38480, &qword_1DF56B9C8);
  return sub_1DF564B14();
}

void sub_1DF50F2D8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_1DF50F344(uint64_t a1, uint64_t a2, int a3)
{
  v21 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38480, &qword_1DF56B9C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v22 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = *(v5 + 16);
  v23 = a1;
  v20 = v10;
  v10(&v19 - v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v13 = *(v5 + 32);
  v13(v12 + v11, v9, v4);
  v14 = sub_1DF50AF70(0, sub_1DF5134A0, v12);

  swift_unknownObjectRetain();
  v15 = sub_1DF564914();

  v16 = v22;
  v20(v22, v23, v4);
  v17 = swift_allocObject();
  v13(v17 + v11, v16, v4);
  aBlock[4] = sub_1DF513FD8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF50F2D8;
  aBlock[3] = &block_descriptor_58;
  v18 = _Block_copy(aBlock);

  [v14 clearCFUWithId:v15 completion:v18];
  swift_unknownObjectRelease();
  _Block_release(v18);
  swift_unknownObjectRelease();
}

uint64_t sub_1DF50F7B0(void *a1)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956398);
  v3 = a1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C24();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DF47EF6C(0xD000000000000012, 0x80000001DF574450, &v14);
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v8 = sub_1DF5651B4();
    v10 = sub_1DF47EF6C(v8, v9, &v14);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Remote proxy error in %s: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  sub_1DF498474();
  v11 = swift_allocError();
  *v12 = 1;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38480, &qword_1DF56B9C8);
  return sub_1DF564B14();
}

uint64_t sub_1DF50F9AC(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38480, &qword_1DF56B9C8);
    return sub_1DF564B14();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38480, &qword_1DF56B9C8);
    return sub_1DF564B24();
  }
}

void sub_1DF50FA20(uint64_t a1, uint64_t a2, int a3)
{
  v21 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v22 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = *(v5 + 16);
  v23 = a1;
  v20 = v10;
  v10(&v19 - v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v13 = *(v5 + 32);
  v13(v12 + v11, v9, v4);
  v14 = sub_1DF50AF70(0, sub_1DF513564, v12);

  swift_unknownObjectRetain();
  v15 = sub_1DF564914();

  v16 = v22;
  v20(v22, v23, v4);
  v17 = swift_allocObject();
  v13(v17 + v11, v16, v4);
  aBlock[4] = sub_1DF513614;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF49BC74;
  aBlock[3] = &block_descriptor_75;
  v18 = _Block_copy(aBlock);

  [v14 postCFUIfEligibleWithFeature:v15 completion:v18];
  swift_unknownObjectRelease();
  _Block_release(v18);
  swift_unknownObjectRelease();
}

uint64_t sub_1DF50FE6C(void *a1)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956398);
  v3 = a1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C24();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DF47EF6C(0xD00000000000001BLL, 0x80000001DF5744A0, &v14);
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v8 = sub_1DF5651B4();
    v10 = sub_1DF47EF6C(v8, v9, &v14);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Remote proxy error in %s: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  sub_1DF498474();
  v11 = swift_allocError();
  *v12 = 1;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
  return sub_1DF564B14();
}

uint64_t sub_1DF510068(char a1, void *a2)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956398);
  v5 = sub_1DF564794();
  v6 = sub_1DF564C44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_1DF47C000, v5, v6, "CFU was posted? %{BOOL}d", v7, 8u);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  if (a2)
  {
    v8 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
    return sub_1DF564B14();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
    return sub_1DF564B24();
  }
}

uint64_t sub_1DF5101CC(_BYTE *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 57) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF5101F4, 0, 0);
}

uint64_t sub_1DF5101F4()
{
  if (os_variant_has_internal_content())
  {
    v1 = *(v0 + 57);
    v2 = *(v0 + 16);
    v3 = swift_task_alloc();
    *(v0 + 24) = v3;
    *(v3 + 16) = v1;
    v4 = swift_task_alloc();
    *(v0 + 32) = v4;
    v4[2] = v2;
    v4[3] = sub_1DF513538;
    v4[4] = v3;
    v5 = *(MEMORY[0x1E69E8920] + 4);
    v6 = swift_task_alloc();
    *(v0 + 40) = v6;
    *v6 = v0;
    v6[1] = sub_1DF51039C;
    v7 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE6DE38](v0 + 56, 0, 0, 0xD000000000000023, 0x80000001DF574470, sub_1DF513540, v4, v7);
  }

  else
  {
    sub_1DF498474();
    swift_allocError();
    *v8 = 14;
    swift_willThrow();
    v9 = *(v0 + 8);

    return v9(0);
  }
}

uint64_t sub_1DF51039C()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF5104EC, 0, 0);
  }

  else
  {
    v5 = *(v3 + 24);
    v4 = *(v3 + 32);

    v6 = *(v3 + 56);

    v7 = *(v3 + 8);

    return v7(v6);
  }
}

uint64_t sub_1DF5104EC()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[6];
  v4 = v0[1];

  return v4(0);
}

void sub_1DF51055C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = sub_1DF564914();

  (*(v5 + 16))(v8, a2, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_1DF51354C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF49BC74;
  aBlock[3] = &block_descriptor_66;
  v12 = _Block_copy(aBlock);

  [a1 forcePostCFUWithFeature:v9 completion:v12];
  _Block_release(v12);
}

uint64_t sub_1DF510740(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
    return sub_1DF564B14();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
    return sub_1DF564B24();
  }
}

uint64_t sub_1DF5107E0()
{
  v1 = *(v0 + 16);
  v2 = sub_1DF50AF70(0, sub_1DF510958, 0);
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v3 = sub_1DF5647B4();
  __swift_project_value_buffer(v3, qword_1ED956398);
  v4 = sub_1DF564794();
  v5 = sub_1DF564C44();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Revalidating CFU", v6, 2u);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  [v2 revalidateCFU];
  swift_unknownObjectRelease();
  v7 = *(v0 + 8);

  return v7();
}

void sub_1DF510958(void *a1)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956398);
  v3 = a1;
  oslog = sub_1DF564794();
  v4 = sub_1DF564C24();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_1DF47EF6C(0x6164696C61766572, 0xEF29285546436574, &v11);
    *(v5 + 12) = 2080;
    swift_getErrorValue();
    v7 = sub_1DF5651B4();
    v9 = sub_1DF47EF6C(v7, v8, &v11);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_1DF47C000, oslog, v4, "Remote proxy error in %s: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v6, -1, -1);
    MEMORY[0x1E12D75F0](v5, -1, -1);
  }

  else
  {
  }
}

void sub_1DF510B34(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38170, &qword_1DF56B9C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a2, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_1DF513478;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF510DA0;
  aBlock[3] = &block_descriptor_49;
  v11 = _Block_copy(aBlock);

  [a1 verifyDeviceIsEligibleForWaitlistCFUWithCompletion_];
  _Block_release(v11);
}

uint64_t sub_1DF510CE4(Swift::Int a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
  }

  else
  {
    FollowUp.WaitlistCFUEligibilityResult.init(rawValue:)(a1);
    if (v5 != 6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38170, &qword_1DF56B9C0);
      return sub_1DF564B24();
    }

    sub_1DF498474();
    swift_allocError();
    *v3 = 7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38170, &qword_1DF56B9C0);
  return sub_1DF564B14();
}

void sub_1DF510DA0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1DF510E18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v18 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = *(v3 + 16);
  v19 = a1;
  v17 = v8;
  v8(&v17 - v6, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v11 = *(v3 + 32);
  v11(v10 + v9, v7, v2);
  v12 = sub_1DF50AF70(0, sub_1DF513668, v10);

  v13 = v18;
  v17(v18, v19, v2);
  v14 = swift_allocObject();
  v11(v14 + v9, v13, v2);
  aBlock[4] = sub_1DF513690;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF49BC74;
  aBlock[3] = &block_descriptor_92;
  v15 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v12 gmOptInToggleWithCompletion_];
  swift_unknownObjectRelease();
  _Block_release(v15);
  return swift_unknownObjectRelease();
}

uint64_t sub_1DF511230(void *a1)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956398);
  v3 = a1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C24();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DF47EF6C(0x546E4974704F6D67, 0xEF2928656C67676FLL, &v14);
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v8 = sub_1DF5651B4();
    v10 = sub_1DF47EF6C(v8, v9, &v14);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Remote proxy error in %s: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  sub_1DF498474();
  v11 = swift_allocError();
  *v12 = 1;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
  return sub_1DF564B14();
}

uint64_t sub_1DF511434(char a1, void *a2)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956398);
  v5 = a2;
  v6 = sub_1DF564794();
  v7 = sub_1DF564C44();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 67109378;
    *(v8 + 4) = a1 & 1;
    *(v8 + 8) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38178, &qword_1DF56B9E8);
    v10 = sub_1DF564CF4();
    v12 = sub_1DF47EF6C(v10, v11, &v15);

    *(v8 + 10) = v12;
    _os_log_impl(&dword_1DF47C000, v6, v7, "Received GM Opt-In toggle value from XPC. Value %{BOOL}d, error: %s", v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }

  if (a2)
  {
    v15 = v5;
    v13 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
    return sub_1DF564B14();
  }

  else
  {
    LOBYTE(v15) = a1 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
    return sub_1DF564B24();
  }
}

uint64_t sub_1DF511620(void *a1, void *a2)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956398);
  v5 = a2;
  v6 = a1;
  v7 = sub_1DF564794();
  v8 = sub_1DF564C44();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v9 = 136315650;
    *(v9 + 4) = sub_1DF47EF6C(0xD000000000000030, 0x80000001DF5746C0, &v24);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    v22 = v10;
    *v10 = a1;
    *(v9 + 22) = 2080;
    v11 = v6;
    if (a2)
    {
      v12 = [v5 localizedDescription];
      v13 = sub_1DF564944();
      v15 = v14;
    }

    else
    {
      v15 = 0xE300000000000000;
      v13 = 7104878;
    }

    v16 = sub_1DF47EF6C(v13, v15, &v24);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_1DF47C000, v7, v8, "received %s response, result: %@, error: %s", v9, 0x20u);
    sub_1DF484888(v22);
    MEMORY[0x1E12D75F0](v22, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v23, -1, -1);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  if (a2)
  {
    v24 = v5;
    v17 = v5;
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38490, qword_1DF56CDB0);
    return sub_1DF564B14();
  }

  if (!a1)
  {
    sub_1DF498474();
    v20 = swift_allocError();
    *v21 = 4;
    v24 = v20;
    goto LABEL_10;
  }

  v24 = v6;
  v19 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38490, qword_1DF56CDB0);
  return sub_1DF564B24();
}

void sub_1DF511918(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v20 = a1;
  v21 = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38490, qword_1DF56CDB0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  v16 = sub_1DF564914();
  (*(v12 + 16))(v15, a2, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v17, v15, v11);
  aBlock[4] = a6;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF48DAD0;
  aBlock[3] = a7;
  v19 = _Block_copy(aBlock);

  [v20 *v21];
  _Block_release(v19);
}

uint64_t sub_1DF511ADC(void *a1, void *a2)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956398);
  v5 = a2;
  v6 = a1;
  v7 = sub_1DF564794();
  v8 = sub_1DF564C44();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v9 = 136315650;
    *(v9 + 4) = sub_1DF47EF6C(0xD00000000000002DLL, 0x80000001DF574690, &v24);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    v22 = v10;
    *v10 = a1;
    *(v9 + 22) = 2080;
    v11 = v6;
    if (a2)
    {
      v12 = [v5 localizedDescription];
      v13 = sub_1DF564944();
      v15 = v14;
    }

    else
    {
      v15 = 0xE300000000000000;
      v13 = 7104878;
    }

    v16 = sub_1DF47EF6C(v13, v15, &v24);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_1DF47C000, v7, v8, "received %s response, result: %@, error: %s", v9, 0x20u);
    sub_1DF484888(v22);
    MEMORY[0x1E12D75F0](v22, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v23, -1, -1);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  if (a2)
  {
    v24 = v5;
    v17 = v5;
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38490, qword_1DF56CDB0);
    return sub_1DF564B14();
  }

  if (!a1)
  {
    sub_1DF498474();
    v20 = swift_allocError();
    *v21 = 4;
    v24 = v20;
    goto LABEL_10;
  }

  v24 = v6;
  v19 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38490, qword_1DF56CDB0);
  return sub_1DF564B24();
}

uint64_t sub_1DF511DD4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DF511DF4, 0, 0);
}

uint64_t sub_1DF511DF4()
{
  if (os_variant_has_internal_ui())
  {
    v1 = v0[2];
    v2 = v0[3];
    v3 = swift_task_alloc();
    v0[4] = v3;
    *(v3 + 16) = v1;
    v4 = swift_task_alloc();
    v0[5] = v4;
    v4[2] = v2;
    v4[3] = sub_1DF51362C;
    v4[4] = v3;
    v5 = *(MEMORY[0x1E69E8920] + 4);
    v6 = swift_task_alloc();
    v0[6] = v6;
    *v6 = v0;
    v6[1] = sub_1DF511F58;
    v7 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000023, 0x80000001DF574470, sub_1DF513634, v4, v7);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1DF511F58()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_1DF51207C;
  }

  else
  {
    v6 = *(v2 + 32);
    v5 = *(v2 + 40);

    v4 = sub_1DF513F6C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DF51207C()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

void sub_1DF5120E8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38480, &qword_1DF56B9C8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a2, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_1DF513640;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF50F2D8;
  aBlock[3] = &block_descriptor_83;
  v13 = _Block_copy(aBlock);

  [a1 performInternalValidationForFeature:a3 completion:v13];
  _Block_release(v13);
}

uint64_t sub_1DF5122A0(void *a1)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956398);
  v3 = a1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DF47EF6C(0xD000000000000034, 0x80000001DF5744C0, &v15);
    *(v6 + 12) = 2080;
    if (a1)
    {
      v8 = [v3 localizedDescription];
      v9 = sub_1DF564944();
      v11 = v10;
    }

    else
    {
      v11 = 0xE300000000000000;
      v9 = 7104878;
    }

    v12 = sub_1DF47EF6C(v9, v11, &v15);

    *(v6 + 14) = v12;
    _os_log_impl(&dword_1DF47C000, v4, v5, "received %s response, error: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  if (a1)
  {
    v15 = v3;
    v13 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38480, &qword_1DF56B9C8);
    return sub_1DF564B14();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38480, &qword_1DF56B9C8);
    return sub_1DF564B24();
  }
}

uint64_t sub_1DF5124D0(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 73) = a4;
  *(v5 + 72) = a3;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  *(v5 + 40) = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1DF512500, 0, 0);
}

uint64_t sub_1DF512500()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 73);
  v4 = *(v0 + 72);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v5;
  *(v6 + 32) = v2;
  *(v6 + 40) = v4;
  *(v6 + 41) = v3;
  v7 = *(MEMORY[0x1E69E8920] + 4);
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  v9 = type metadata accessor for CloudFeature();
  *v8 = v0;
  v8[1] = sub_1DF48E3A0;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000002ALL, 0x80000001DF5743D0, sub_1DF484EB8, v6, v9);
}

void sub_1DF512624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t), uint64_t a6)
{
  v7 = v6;
  v12 = sub_1DF49207C();
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v13 + 24) = a6;
  v43 = sub_1DF513FE0;
  v44 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1DF50AF08;
  v42 = &block_descriptor_187;
  v14 = _Block_copy(&aBlock);

  v15 = [v12 remoteObjectProxyWithErrorHandler_];
  _Block_release(v14);

  sub_1DF564D24();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38168, &unk_1DF56B9B0);
  if (swift_dynamicCast())
  {
    v16 = OBJC_IVAR____TtC25CloudSubscriptionFeatures9XPCCaller____lazy_storage___connection;
    v17 = *&v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures9XPCCaller____lazy_storage___connection];
    v43 = sub_1DF512CF0;
    v44 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_1DF48EC24;
    v42 = &block_descriptor_190;
    v18 = _Block_copy(&aBlock);
    v19 = v17;
    [v19 setInterruptionHandler_];
    _Block_release(v18);

    v20 = *&v7[v16];
    v43 = sub_1DF48EC68;
    v44 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_1DF48EC24;
    v42 = &block_descriptor_193;
    v21 = _Block_copy(&aBlock);
    v22 = v20;
    [v22 setInvalidationHandler_];
    _Block_release(v21);

    if (qword_1ED956390 != -1)
    {
      swift_once();
    }

    v23 = sub_1DF5647B4();
    __swift_project_value_buffer(v23, qword_1ED956398);
    v24 = sub_1DF564794();
    v25 = sub_1DF564C44();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1DF47C000, v24, v25, "sending eligibility request ...", v26, 2u);
      MEMORY[0x1E12D75F0](v26, -1, -1);
    }

    v27 = sub_1DF564914();
    v28 = sub_1DF564914();
    v29 = swift_allocObject();
    v29[2] = a1;
    v29[3] = a2;
    v29[4] = v7;
    v29[5] = a5;
    v29[6] = a6;
    v43 = sub_1DF513FDC;
    v44 = v29;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_1DF49BC74;
    v42 = &block_descriptor_200;
    v30 = _Block_copy(&aBlock);

    v31 = v7;

    [v38 getFeatureEligibilityFor:v27 bundleID:v28 completion:v30];
    _Block_release(v30);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED956390 != -1)
    {
      swift_once();
    }

    v32 = sub_1DF5647B4();
    __swift_project_value_buffer(v32, qword_1ED956398);
    v33 = sub_1DF564794();
    v34 = sub_1DF564C24();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1DF47C000, v33, v34, "Proxy object has the wrong type", v35, 2u);
      MEMORY[0x1E12D75F0](v35, -1, -1);
    }

    sub_1DF498474();
    v36 = swift_allocError();
    *v37 = 1;
    a5(v36, 1);
  }
}

uint64_t sub_1DF512B5C(void *a1, uint64_t (*a2)(void *, uint64_t))
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956398);
  v5 = a1;
  v6 = sub_1DF564794();
  v7 = sub_1DF564C24();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = sub_1DF5651B4();
    v12 = sub_1DF47EF6C(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1DF47C000, v6, v7, "Cannot get remote proxy object: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }

  return a2(a1, 1);
}

void sub_1DF512D10(void *a1, void (*a2)(void *, uint64_t))
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956398);
  v5 = a1;
  v6 = sub_1DF564794();
  v7 = sub_1DF564C24();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1DF5651B4();
    v12 = sub_1DF47EF6C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1DF47C000, v6, v7, "remote proxy error [geoclassification request]: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }

  sub_1DF498474();
  v13 = swift_allocError();
  *v14 = 1;
  a2(v13, 1);
}

void sub_1DF512EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, void (*a6)(void, void *), uint64_t a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  *(v12 + 24) = a7;

  v13 = sub_1DF49207C();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1DF513FD4;
  *(v14 + 24) = v12;
  v44 = sub_1DF513FE0;
  v45 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1DF50AF08;
  v43 = &block_descriptor_167;
  v15 = _Block_copy(&aBlock);

  v16 = [v13 remoteObjectProxyWithErrorHandler_];
  _Block_release(v15);

  sub_1DF564D24();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38168, &unk_1DF56B9B0);
  if (swift_dynamicCast())
  {
    v17 = OBJC_IVAR____TtC25CloudSubscriptionFeatures9XPCCaller____lazy_storage___connection;
    v18 = *&a5[OBJC_IVAR____TtC25CloudSubscriptionFeatures9XPCCaller____lazy_storage___connection];
    v44 = sub_1DF512CF0;
    v45 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    v42 = sub_1DF48EC24;
    v43 = &block_descriptor_170;
    v19 = _Block_copy(&aBlock);
    v20 = v18;
    [v20 setInterruptionHandler_];
    _Block_release(v19);

    v21 = *&a5[v17];
    v44 = sub_1DF48EC68;
    v45 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    v42 = sub_1DF48EC24;
    v43 = &block_descriptor_173_0;
    v22 = _Block_copy(&aBlock);
    v23 = v21;
    [v23 setInvalidationHandler_];
    _Block_release(v22);

    if (qword_1ED956390 != -1)
    {
      swift_once();
    }

    v24 = sub_1DF5647B4();
    __swift_project_value_buffer(v24, qword_1ED956398);
    v25 = sub_1DF564794();
    v26 = sub_1DF564C44();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1DF47C000, v25, v26, "sending eligibility request ...", v27, 2u);
      MEMORY[0x1E12D75F0](v27, -1, -1);
    }

    v28 = sub_1DF564914();
    v29 = sub_1DF564914();
    v30 = swift_allocObject();
    v30[2] = a1;
    v30[3] = a2;
    v30[4] = a5;
    v30[5] = sub_1DF513FD4;
    v30[6] = v12;
    v44 = sub_1DF513FDC;
    v45 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    v42 = sub_1DF49BC74;
    v43 = &block_descriptor_180;
    v31 = _Block_copy(&aBlock);

    v32 = a5;

    [v39 getFeatureEligibilityFor:v28 bundleID:v29 completion:v31];
    _Block_release(v31);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED956390 != -1)
    {
      swift_once();
    }

    v33 = sub_1DF5647B4();
    __swift_project_value_buffer(v33, qword_1ED956398);
    v34 = sub_1DF564794();
    v35 = sub_1DF564C24();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1DF47C000, v34, v35, "Proxy object has the wrong type", v36, 2u);
      MEMORY[0x1E12D75F0](v36, -1, -1);
    }

    sub_1DF498474();
    v37 = swift_allocError();
    *v38 = 1;
    a6(0, v37);
  }
}

uint64_t sub_1DF51358C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_1DF513828(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

void sub_1DF5138C8(void *a1, void *a2, void (*a3)(void *, uint64_t))
{
  if (a2)
  {
    v5 = qword_1ED956390;
    v6 = a2;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_1DF5647B4();
    __swift_project_value_buffer(v7, qword_1ED956398);
    v8 = v6;
    v9 = sub_1DF564794();
    v10 = sub_1DF564C24();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v40 = v38;
      *v11 = 138412546;
      *(v11 + 4) = v8;
      *v37 = a2;
      *(v11 + 12) = 2080;
      v12 = [v8 userInfo];
      v36 = v10;
      sub_1DF564874();

      v13 = sub_1DF564884();
      v15 = v14;

      v16 = sub_1DF47EF6C(v13, v15, &v40);

      *(v11 + 14) = v16;
      _os_log_impl(&dword_1DF47C000, v9, v36, "Received error from daemon: %@, %s", v11, 0x16u);
      sub_1DF484888(v37);
      MEMORY[0x1E12D75F0](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x1E12D75F0](v38, -1, -1);
      MEMORY[0x1E12D75F0](v11, -1, -1);
    }

    v39 = v8;
    v17 = a2;
    v18 = 1;
LABEL_13:
    a3(v17, v18);

    v29 = v39;

    goto LABEL_15;
  }

  if (a1)
  {
    v19 = qword_1ED956390;
    v21 = a1;
    if (v19 != -1)
    {
      swift_once();
    }

    v22 = sub_1DF5647B4();
    __swift_project_value_buffer(v22, qword_1ED956398);
    v23 = v21;
    v24 = sub_1DF564794();
    v25 = sub_1DF564C44();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = a1;
      v28 = v23;
      _os_log_impl(&dword_1DF47C000, v24, v25, "received geoclassification response: %@", v26, 0xCu);
      sub_1DF484888(v27);
      MEMORY[0x1E12D75F0](v27, -1, -1);
      MEMORY[0x1E12D75F0](v26, -1, -1);
    }

    v39 = v23;
    v17 = a1;
    v18 = 0;
    goto LABEL_13;
  }

  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v30 = sub_1DF5647B4();
  __swift_project_value_buffer(v30, qword_1ED956398);
  v31 = sub_1DF564794();
  v32 = sub_1DF564C24();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1DF47C000, v31, v32, "Received no error and no geoclassification", v33, 2u);
    MEMORY[0x1E12D75F0](v33, -1, -1);
  }

  sub_1DF498474();
  v34 = swift_allocError();
  *v35 = 7;
  a3(v34, 1);
  v29 = v34;

LABEL_15:
}

uint64_t sub_1DF513E60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

id sub_1DF513FE4(int a1)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F78, &qword_1DF56A490);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v35[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F80, &qword_1DF56A498);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v35[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35[-v12];
  v14 = v1[7];
  os_unfair_lock_lock(*(v14 + 16));
  v15 = v1[5];
  v16 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v15);
  v17 = (*(v16 + 32))(0x6C6C2E64756F6C63, 0xE90000000000006DLL, v15, v16);
  if (v18 >> 60 == 15)
  {
    (*(v7 + 56))(v5, 1, 1, v6);
  }

  else
  {
    v19 = v17;
    v20 = v18;
    v21 = sub_1DF5642A4();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_1DF564294();
    sub_1DF515928(&qword_1ED955AD0);
    sub_1DF564284();
    sub_1DF48C2F4(v19, v20);

    (*(v7 + 56))(v5, 0, 1, v6);
  }

  os_unfair_lock_unlock(*(v14 + 16));
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1DF47E5B4(v5, &qword_1ECE37F78, &qword_1DF56A490);
    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v24 = sub_1DF5647B4();
    __swift_project_value_buffer(v24, qword_1ED956088);
    v25 = sub_1DF564794();
    v26 = sub_1DF564C44();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1DF47C000, v25, v26, "No cache for cloud.llm found.", v27, 2u);
      MEMORY[0x1E12D75F0](v27, -1, -1);
    }
  }

  else
  {
    sub_1DF5158B8(v5, v11);
    sub_1DF5158B8(v11, v13);
    if (sub_1DF4FBABC(0, 0, 0, 0, v36 & 1))
    {
      v28 = *v13;
      sub_1DF47E5B4(v13, &qword_1ECE37F80, &qword_1DF56A498);
      return v28;
    }

    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v30 = sub_1DF5647B4();
    __swift_project_value_buffer(v30, qword_1ED956088);
    v31 = sub_1DF564794();
    v32 = sub_1DF564C24();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v37 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_1DF47EF6C(0x6C6C2E64756F6C63, 0xE90000000000006DLL, &v37);
      _os_log_impl(&dword_1DF47C000, v31, v32, "Cache for %s is not valid.", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x1E12D75F0](v34, -1, -1);
      MEMORY[0x1E12D75F0](v33, -1, -1);
    }

    sub_1DF47E5B4(v13, &qword_1ECE37F80, &qword_1DF56A498);
  }

  return 0;
}

uint64_t sub_1DF514678(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v93 = (v83 - v6);
  v7 = sub_1DF564494();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v91 = v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v92 = v83 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F80, &qword_1DF56A498);
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (v83 - v15);
  v17 = *&a1[OBJC_IVAR___CloudFeature_featureID];
  v18 = *&a1[OBJC_IVAR___CloudFeature_featureID + 8];
  v19 = v17 == 0x6C6C2E64756F6C63 && v18 == 0xE90000000000006DLL;
  if (v19 || (v20 = *&a1[OBJC_IVAR___CloudFeature_featureID], v21 = *&a1[OBJC_IVAR___CloudFeature_featureID + 8], (sub_1DF5650D4() & 1) != 0))
  {
    v22 = OBJC_IVAR___CloudFeature_ttl;
    swift_beginAccess();
    v90 = v13[11];
    sub_1DF4952D8(&a1[v22], v16 + v90);
    type metadata accessor for SystemProperties();
    swift_initStaticObject();
    v23 = sub_1DF47E8A4();
    v25 = v24;
    v26 = v16 + v13[12];
    sub_1DF564474();
    *v16 = a1;
    v27 = (v16 + v13[13]);
    *v27 = v23;
    v27[1] = v25;
    v28 = (v16 + v13[14]);
    v29 = sub_1DF5642D4();
    *v28 = 0;
    v28[1] = 0;
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    v32 = a1;
    v33 = sub_1DF5642C4();
    sub_1DF515928(&qword_1ED9546D0);
    v34 = sub_1DF5642B4();
    v36 = v35;
    v89 = v33;
    v84 = v2[7];
    v85 = v32;
    v37 = v34;
    os_unfair_lock_lock(*(v84 + 16));
    v38 = v2[5];
    v39 = v2[6];
    v83[1] = __swift_project_boxed_opaque_existential_0(v2 + 2, v38);
    v95[3] = MEMORY[0x1E6969080];
    v95[0] = v37;
    v95[1] = v36;
    v40 = v36;
    v41 = v8;
    v42 = v7;
    v43 = *(v39 + 8);
    v86 = v37;
    v87 = v40;
    sub_1DF4AD474(v37, v40);
    v88 = v17;
    v83[0] = v18;
    v43(v95, v17, v18, v38, v39);
    v44 = v42;
    v45 = v41;
    sub_1DF47E5B4(v95, &qword_1ECE378F0, &qword_1DF5686F0);
    os_unfair_lock_unlock(*(v84 + 16));
    v46 = v93;
    sub_1DF4952D8(v16 + v90, v93);
    if ((*(v41 + 48))(v46, 1, v44) == 1)
    {
      sub_1DF47E5B4(v46, &qword_1ECE37A10, &qword_1DF567C00);
      if (qword_1ED956080 != -1)
      {
        swift_once();
      }

      v47 = sub_1DF5647B4();
      __swift_project_value_buffer(v47, qword_1ED956088);
      v48 = v85;
      v49 = sub_1DF564794();
      v50 = sub_1DF564C44();
      v51 = os_log_type_enabled(v49, v50);
      v52 = v83[0];
      v53 = v88;
      if (v51)
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v94 = v55;
        *v54 = 136446466;
        *(v54 + 4) = sub_1DF47EF6C(v53, v52, &v94);
        *(v54 + 12) = 1024;
        v56 = OBJC_IVAR___CloudFeature_canUse;
        swift_beginAccess();
        *(v54 + 14) = v48[v56];

        _os_log_impl(&dword_1DF47C000, v49, v50, "Updating cache for %{public}s, cache-ttl: nil, canUse: %{BOOL}d", v54, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x1E12D75F0](v55, -1, -1);
        MEMORY[0x1E12D75F0](v54, -1, -1);

        sub_1DF48C308(v86, v87);
      }

      else
      {
        sub_1DF48C308(v86, v87);
      }
    }

    else
    {
      v64 = v92;
      (*(v41 + 32))(v92, v46, v44);
      if (qword_1ED956080 != -1)
      {
        swift_once();
      }

      v65 = sub_1DF5647B4();
      __swift_project_value_buffer(v65, qword_1ED956088);
      v66 = v91;
      (*(v41 + 16))(v91, v64, v44);
      v67 = v85;
      v68 = sub_1DF564794();
      v69 = sub_1DF564C44();
      v70 = os_log_type_enabled(v68, v69);
      v71 = v88;
      if (v70)
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v93 = v16;
        v94 = v73;
        v74 = v73;
        *v72 = 136446722;
        *(v72 + 4) = sub_1DF47EF6C(v71, v83[0], &v94);
        *(v72 + 12) = 2082;
        sub_1DF515288();
        v75 = sub_1DF5650A4();
        v77 = v76;
        v78 = *(v45 + 8);
        v78(v66, v44);
        v79 = sub_1DF47EF6C(v75, v77, &v94);

        *(v72 + 14) = v79;
        *(v72 + 22) = 1024;
        v80 = OBJC_IVAR___CloudFeature_canUse;
        swift_beginAccess();
        LODWORD(v80) = v67[v80];

        *(v72 + 24) = v80;
        _os_log_impl(&dword_1DF47C000, v68, v69, "Updating cache for %{public}s, cache-ttl: %{public}s, canUse: %{BOOL}d", v72, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x1E12D75F0](v74, -1, -1);
        MEMORY[0x1E12D75F0](v72, -1, -1);

        sub_1DF48C308(v86, v87);
        v78(v92, v44);
        v81 = v93;
LABEL_23:
        sub_1DF47E5B4(v81, &qword_1ECE37F80, &qword_1DF56A498);
        return 1;
      }

      sub_1DF48C308(v86, v87);
      v82 = *(v41 + 8);
      v82(v66, v44);
      v82(v64, v44);
    }

    v81 = v16;
    goto LABEL_23;
  }

  if (qword_1ED956080 != -1)
  {
    swift_once();
  }

  v57 = sub_1DF5647B4();
  __swift_project_value_buffer(v57, qword_1ED956088);
  v58 = a1;
  v59 = sub_1DF564794();
  v60 = sub_1DF564C24();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v95[0] = v62;
    *v61 = 136446210;
    *(v61 + 4) = sub_1DF47EF6C(v17, v18, v95);
    _os_log_impl(&dword_1DF47C000, v59, v60, "Attempted to save feature %{public}s to GM feature cache.", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x1E12D75F0](v62, -1, -1);
    MEMORY[0x1E12D75F0](v61, -1, -1);
  }

  return 0;
}

uint64_t sub_1DF514FA0()
{
  v0 = sub_1DF5152E0();
  v6 = sub_1DF4818A4();
  v7 = &off_1F5A8A490;
  *&v5 = v0;
  type metadata accessor for GMFeatureCache();
  v1 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *(v2 + 16) = v3;
  *v3 = 0;
  *(v1 + 56) = v2;
  result = sub_1DF5026F8(&v5, v1 + 16);
  qword_1ED958B70 = v1;
  return result;
}

void sub_1DF51503C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12 - v2;
  v4 = sub_1DF513FE4(1);
  if (v4)
  {
    v5 = v4;
    sub_1DF5643A4();
    v6 = sub_1DF564494();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    v7 = OBJC_IVAR___CloudFeature_ttl;
    swift_beginAccess();
    sub_1DF48C214(v3, &v5[v7]);
    swift_endAccess();
    sub_1DF514678(v5);
  }

  else
  {
    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v8 = sub_1DF5647B4();
    __swift_project_value_buffer(v8, qword_1ED956088);
    v12 = sub_1DF564794();
    v9 = sub_1DF564C44();
    if (os_log_type_enabled(v12, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DF47C000, v12, v9, "Attempted to expire GM feature cache but no cached object was found.", v10, 2u);
      MEMORY[0x1E12D75F0](v10, -1, -1);
    }

    v11 = v12;
  }
}

uint64_t sub_1DF515224()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

unint64_t sub_1DF515288()
{
  result = qword_1ED954CB0;
  if (!qword_1ED954CB0)
  {
    sub_1DF564494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954CB0);
  }

  return result;
}

id sub_1DF5152E0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1DF564914();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {

    return v2;
  }

  else
  {
    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v4 = sub_1DF5647B4();
    __swift_project_value_buffer(v4, qword_1ED956088);
    v5 = sub_1DF564794();
    v6 = sub_1DF564C44();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1DF47EF6C(0xD00000000000002BLL, 0x80000001DF570980, &v10);
      _os_log_impl(&dword_1DF47C000, v5, v6, "Unable to create user defaults with suiteID %s. Will use standard suite.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1E12D75F0](v8, -1, -1);
      MEMORY[0x1E12D75F0](v7, -1, -1);
    }

    v9 = [objc_opt_self() standardUserDefaults];

    return v9;
  }
}

void sub_1DF5154B4()
{
  v0 = sub_1DF564494();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  if (qword_1ED956080 != -1)
  {
    swift_once();
  }

  v12 = sub_1DF5647B4();
  __swift_project_value_buffer(v12, qword_1ED956088);
  v13 = sub_1DF564794();
  v14 = sub_1DF564C44();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1DF47EF6C(0xD000000000000027, 0x80000001DF574740, &v27);
    _os_log_impl(&dword_1DF47C000, v13, v14, "%s did not find existing feature, will stub feature object from scratch.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1E12D75F0](v16, -1, -1);
    MEMORY[0x1E12D75F0](v15, -1, -1);
  }

  sub_1DF564484();
  sub_1DF5643D4();
  (*(v1 + 8))(v4, v0);
  v17 = *(v1 + 56);
  v17(v11, 0, 1, v0);
  sub_1DF4952D8(v11, v9);
  v18 = type metadata accessor for CloudFeature();
  v19 = objc_allocWithZone(v18);
  v20 = &v19[OBJC_IVAR___CloudFeature_limit];
  *v20 = 0;
  v20[8] = 1;
  v21 = &v19[OBJC_IVAR___CloudFeature_accessToken];
  *v21 = 0;
  v21[1] = 0;
  v22 = OBJC_IVAR___CloudFeature_ttl;
  v17(&v19[OBJC_IVAR___CloudFeature_ttl], 1, 1, v0);
  v19[OBJC_IVAR___CloudFeature_canUse] = 0;
  v23 = &v19[OBJC_IVAR___CloudFeature_featureID];
  *v23 = 0x6C6C2E64756F6C63;
  v23[1] = 0xE90000000000006DLL;
  swift_beginAccess();
  *v20 = 0;
  v20[8] = 1;
  swift_beginAccess();
  *v21 = 0;
  v21[1] = 0;
  swift_beginAccess();
  sub_1DF4BEC40(v9, &v19[v22]);
  swift_endAccess();
  v26.receiver = v19;
  v26.super_class = v18;
  v24 = objc_msgSendSuper2(&v26, sel_init);
  sub_1DF47E5B4(v9, &qword_1ECE37A10, &qword_1DF567C00);
  sub_1DF47E5B4(v11, &qword_1ECE37A10, &qword_1DF567C00);
  sub_1DF514678(v24);
}

uint64_t sub_1DF5158B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F80, &qword_1DF56A498);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF515928(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE37F80, &qword_1DF56A498);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DF515978()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1DF564914();
  v2 = [v0 initWithSuiteName_];

  qword_1ED958B48 = v2;
}

uint64_t sub_1DF5159E8()
{
  if (qword_1ED9548E0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED958B48;
  if (!qword_1ED958B48)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    sub_1DF4A7D80(&v6);
    return 2;
  }

  v1 = sub_1DF564914();
  v2 = [v0 valueForKey_];

  if (v2)
  {
    sub_1DF564D24();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

void sub_1DF515B10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_1DF515BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1DF47E4CC(a3, v24 - v10, &unk_1ECE383B0, &qword_1DF568C10);
  v12 = sub_1DF564B44();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DF47E5B4(v11, &unk_1ECE383B0, &qword_1DF568C10);
  }

  else
  {
    sub_1DF564B34();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1DF564B04();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1DF5649B4() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B08, &unk_1DF567DB0);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1DF47E5B4(a3, &unk_1ECE383B0, &qword_1DF568C10);

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

  sub_1DF47E5B4(a3, &unk_1ECE383B0, &qword_1DF568C10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B08, &unk_1DF567DB0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1DF515E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1DF47E4CC(a3, v24 - v10, &unk_1ECE383B0, &qword_1DF568C10);
  v12 = sub_1DF564B44();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DF47E5B4(v11, &unk_1ECE383B0, &qword_1DF568C10);
  }

  else
  {
    sub_1DF564B34();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1DF564B04();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_1DF5649B4() + 32;

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

      sub_1DF47E5B4(a3, &unk_1ECE383B0, &qword_1DF568C10);

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

  sub_1DF47E5B4(a3, &unk_1ECE383B0, &qword_1DF568C10);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1DF51614C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v26 - v12;
  sub_1DF47E4CC(a3, v26 - v12, &unk_1ECE383B0, &qword_1DF568C10);
  v14 = sub_1DF564B44();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_1DF47E5B4(v13, &unk_1ECE383B0, &qword_1DF568C10);
  }

  else
  {
    sub_1DF564B34();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_1DF564B04();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v26[0] = a2;
      v22 = sub_1DF5649B4() + 32;
      a6(0);

      if (v21 | v19)
      {
        v27[0] = 0;
        v27[1] = 0;
        v23 = v27;
        v27[2] = v19;
        v27[3] = v21;
      }

      else
      {
        v23 = 0;
      }

      v26[1] = 7;
      v26[2] = v23;
      v26[3] = v22;
      v24 = swift_task_create();

      sub_1DF47E5B4(a3, &unk_1ECE383B0, &qword_1DF568C10);

      return v24;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DF47E5B4(a3, &unk_1ECE383B0, &qword_1DF568C10);
  a6(0);
  if (v21 | v19)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v19;
    v27[7] = v21;
  }

  return swift_task_create();
}

uint64_t static CSFFeatureManager.expireCache(defaults:domain:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v82 = &v69 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F78, &qword_1DF56A490);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v85 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F80, &qword_1DF56A498);
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v69 - v11;
  if (qword_1ED956390 != -1)
  {
LABEL_26:
    swift_once();
  }

  v13 = sub_1DF5647B4();
  __swift_project_value_buffer(v13, qword_1ED956398);
  v14 = sub_1DF564794();
  v15 = sub_1DF564C44();
  v16 = os_log_type_enabled(v14, v15);
  v81 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1DF47C000, v14, v15, "Expiring existing features cache!", v17, 2u);
    MEMORY[0x1E12D75F0](v17, -1, -1);
  }

  v18 = sub_1DF564914();
  v19 = [a1 persistentDomainForName_];

  if (v19)
  {
    v20 = sub_1DF564874();

    v21 = v20;
  }

  else
  {
    v21 = sub_1DF49A758(MEMORY[0x1E69E7CC0]);
  }

  v22 = v8;
  v23 = v21 + 64;
  v24 = 1 << *(v21 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v8 = v25 & *(v21 + 64);
  v26 = (v24 + 63) >> 6;
  v84 = (v9 + 7);

  v12 = 0;
  v86 = 0;
  v87 = v21;
  a1 = &qword_1ECE37CB8;
  for (i = v26; v8; v26 = i)
  {
LABEL_16:
    while (1)
    {
      v28 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v29 = v28 | (v12 << 6);
      v30 = *(v21 + 56);
      v31 = (*(v21 + 48) + 16 * v29);
      v33 = *v31;
      v32 = v31[1];
      sub_1DF47F24C(v30 + 32 * v29, &v93);
      v92[0] = v33;
      v92[1] = v32;
      sub_1DF47E4CC(v92, v91, &qword_1ECE37CB8, &qword_1DF56A510);
      v9 = &qword_1ECE37CB8;

      if (swift_dynamicCast())
      {
        break;
      }

      sub_1DF47E5B4(v92, &qword_1ECE37CB8, &qword_1DF56A510);
      v21 = v87;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    v35 = v89;
    v34 = v90;
    v36 = sub_1DF5642A4();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    sub_1DF564294();
    sub_1DF51CF04();
    v39 = v85;
    v9 = v86;
    sub_1DF564284();
    if (v9)
    {

      sub_1DF48C308(v35, v34);
      v40 = v39;
      a1 = &qword_1ECE37CB8;
      sub_1DF47E5B4(v92, &qword_1ECE37CB8, &qword_1DF56A510);
      (*v84)(v40, 1, 1, v22);
      sub_1DF47E5B4(v40, &qword_1ECE37F78, &qword_1DF56A490);
      v86 = 0;
    }

    else
    {
      v78 = v34;
      v79 = v35;
      v86 = 0;

      (*v84)(v39, 0, 1, v22);
      v41 = v81;
      sub_1DF5158B8(v39, v81);
      v42 = *v41;
      v43 = *(v42 + OBJC_IVAR___CloudFeature_featureID + 8);
      v77 = *(v42 + OBJC_IVAR___CloudFeature_featureID);
      v70 = v43;
      v44 = OBJC_IVAR___CloudFeature_canUse;
      swift_beginAccess();
      v73 = *(v42 + v44);
      v80 = v22;
      v45 = v42 + OBJC_IVAR___CloudFeature_limit;
      swift_beginAccess();
      v76 = *v45;
      v75 = *(v45 + 8);
      v46 = (v42 + OBJC_IVAR___CloudFeature_accessToken);
      swift_beginAccess();
      v47 = v46[1];
      v74 = *v46;
      v72 = v47;

      v48 = v82;
      sub_1DF5643A4();
      v49 = sub_1DF564494();
      v50 = *(v49 - 8);
      v51 = *(v50 + 56);
      v69 = v50 + 56;
      v51(v48, 0, 1, v49);
      v71 = type metadata accessor for CloudFeature();
      v52 = objc_allocWithZone(v71);
      v53 = &v52[OBJC_IVAR___CloudFeature_limit];
      *v53 = 0;
      v53[8] = 1;
      v54 = &v52[OBJC_IVAR___CloudFeature_accessToken];
      *v54 = 0;
      v54[1] = 0;
      v55 = OBJC_IVAR___CloudFeature_ttl;
      v51(&v52[OBJC_IVAR___CloudFeature_ttl], 1, 1, v49);
      v52[OBJC_IVAR___CloudFeature_canUse] = v73;
      v56 = &v52[OBJC_IVAR___CloudFeature_featureID];
      v57 = v70;
      *v56 = v77;
      v56[1] = v57;
      swift_beginAccess();
      *v53 = v76;
      v53[8] = v75;
      swift_beginAccess();
      v58 = v72;
      *v54 = v74;
      v54[1] = v58;
      swift_beginAccess();
      v59 = v82;
      sub_1DF4BEC40(v82, &v52[v55]);
      swift_endAccess();
      v88.receiver = v52;
      v88.super_class = v71;
      v77 = objc_msgSendSuper2(&v88, sel_init);
      sub_1DF47E5B4(v59, &qword_1ECE37A10, &qword_1DF567C00);
      if (qword_1ED955FF0 != -1)
      {
        swift_once();
      }

      v76 = off_1ED955FF8;
      v60 = v81;
      v61 = (v81 + *(v80 + 56));
      v62 = *v61;
      v9 = v61[1];
      v63 = sub_1DF5642D4();
      v64 = *(v63 + 48);
      v65 = *(v63 + 52);
      swift_allocObject();
      v66 = sub_1DF5642C4();
      v67 = v77;
      sub_1DF4FDDA0(v77, v66, v62, v9);

      sub_1DF48C308(v79, v78);
      a1 = &qword_1ECE37CB8;
      sub_1DF47E5B4(v92, &qword_1ECE37CB8, &qword_1DF56A510);
      sub_1DF47E5B4(v60, &qword_1ECE37F80, &qword_1DF56A498);
      v22 = v80;
    }

    v21 = v87;
  }

  while (1)
  {
LABEL_12:
    v27 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v27 >= v26)
    {
      break;
    }

    v8 = *(v23 + 8 * v27);
    ++v12;
    if (v8)
    {
      v12 = v27;
      goto LABEL_16;
    }
  }
}

void static CSFFeatureManager.requestFeature(id:allowStale:completion:)(uint64_t a1, unint64_t a2, char a3, void (*a4)(void), uint64_t a5)
{
  v45 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v44 - v11;
  v13 = objc_opt_self();

  v14 = [v13 processInfo];
  v15 = [v14 processName];

  v16 = sub_1DF564944();
  v18 = v17;

  v56[0] = a1;
  v56[1] = a2;
  v56[2] = v16;
  v56[3] = v18;
  v56[4] = 0x7466697773;
  v56[5] = 0xE500000000000000;
  v57 = a3;
  sub_1DF47F908(v56, sub_1DF47FD50);

  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v19 = sub_1DF5647B4();
  __swift_project_value_buffer(v19, qword_1ED956398);

  v20 = sub_1DF564794();
  v21 = sub_1DF564C44();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v51 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_1DF47EF6C(a1, a2, &v51);
    _os_log_impl(&dword_1DF47C000, v20, v21, "Checking feature with id: %s [swift]", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1E12D75F0](v23, -1, -1);
    MEMORY[0x1E12D75F0](v22, -1, -1);
  }

  if ((sub_1DF480190() & 1) != 0 && ((v24 = sub_1DF480550(a1, a2)) != 0 || (v24 = sub_1DF4807E8(a1, a2)) != 0))
  {
    v25 = v24;
    v45();

    sub_1DF4D8314(v25);
  }

  else
  {
    v26 = a3 & 1;
    v27 = sub_1DF4812FC(a1, a2);
    if (v27)
    {
      v28 = v27;
      v29 = v27;
      (v45)(v28, 0);

      if (a1 == 0x6C6C2E64756F6C63 && a2 == 0xE90000000000006DLL || (sub_1DF5650D4() & 1) != 0)
      {
        v30 = sub_1DF564B44();
        (*(*(v30 - 8) + 56))(v12, 1, 1, v30);
        v31 = swift_allocObject();
        v31[2] = 0;
        v31[3] = 0;
        v31[4] = v29;
        v32 = v29;
        sub_1DF515E70(0, 0, v12, &unk_1DF56BAA8, v31);
      }

      v33 = [v13 processInfo];
      v34 = [v33 processName];

      v35 = sub_1DF564944();
      v37 = v36;

      *&v46 = a1;
      *(&v46 + 1) = a2;
      LOBYTE(v47) = 0;
      *(&v47 + 1) = v35;
      *&v48 = v37;
      *(&v48 + 1) = 0x7466697773;
      *&v49 = 0xE500000000000000;
      BYTE8(v49) = a3 & 1;
      BYTE9(v49) = 1;
      v50 = 0;
      v55 = 0;
      v53 = v48;
      v54 = v49;
      v51 = v46;
      v52 = v47;
      sub_1DF49156C(&v51, sub_1DF47FD50);

      sub_1DF491B8C(&v46);
    }

    else
    {
      *(&v52 + 1) = &type metadata for FeatureFlag;
      *&v53 = sub_1DF481614();
      LOBYTE(v51) = 0;
      sub_1DF5645A4();
      __swift_destroy_boxed_opaque_existential_0(&v51);
      v38 = swift_allocObject();
      *(v38 + 16) = a1;
      *(v38 + 24) = a2;
      *(v38 + 32) = v26;
      *(v38 + 40) = v45;
      *(v38 + 48) = a5;
      v39 = type metadata accessor for XPCCaller();
      v40 = objc_allocWithZone(v39);

      v41 = [v40 init];
      *(&v52 + 1) = v39;
      *&v53 = &off_1F5A8AB90;
      *&v51 = v41;
      v42 = sub_1DF564B44();
      (*(*(v42 - 8) + 56))(v12, 1, 1, v42);
      sub_1DF47FCEC(&v51, &v46);
      v43 = swift_allocObject();
      *(v43 + 16) = 0;
      *(v43 + 24) = 0;
      *(v43 + 32) = v44[1];
      *(v43 + 40) = a1;
      *(v43 + 48) = a2;
      sub_1DF47E390(&v46, v43 + 56);
      *(v43 + 96) = v26;
      *(v43 + 104) = sub_1DF51CF68;
      *(v43 + 112) = v38;

      sub_1DF4BF520(0, 0, v12, &unk_1DF56BA98, v43);

      __swift_destroy_boxed_opaque_existential_0(&v51);
    }
  }
}

uint64_t sub_1DF517328()
{
  v0[14] = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  v1 = type metadata accessor for SystemProperties();
  inited = swift_initStackObject();
  v0[15] = inited;
  inited[2] = 0;
  inited[3] = 0;
  inited[4] = 0;
  inited[5] = 1;
  v0[11] = v1;
  v0[12] = &off_1F5A88E50;
  v0[8] = inited;
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_1DF517418;
  v4 = v0[13];

  return sub_1DF511DD4(v4);
}

uint64_t sub_1DF517418()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 112);
  v4 = *v1;
  v4[17] = v0;

  __swift_destroy_boxed_opaque_existential_0(v4 + 8);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF517578, 0, 0);
  }

  else
  {
    v5 = v4[1];

    return v5();
  }
}

uint64_t sub_1DF517590(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t (*a6)(void, void))
{
  if (a2)
  {

    v11 = sub_1DF5642E4();
    v12 = [objc_opt_self() processInfo];
    v13 = a6;
    v14 = [v12 processName];

    v15 = sub_1DF564944();
    v17 = v16;

    a6 = v13;
    *&v26 = a3;
    *(&v26 + 1) = a4;
    LOBYTE(v27) = 1;
    *(&v27 + 1) = v15;
    *&v28 = v17;
    *(&v28 + 1) = 0x7466697773;
    *&v29 = 0xE500000000000000;
    WORD4(v29) = a5 & 1;
    v30 = v11;
    v32 = v11;
  }

  else
  {
    v18 = objc_opt_self();

    v19 = [v18 processInfo];
    v20 = [v19 processName];

    v21 = sub_1DF564944();
    v23 = v22;

    *&v26 = a3;
    *(&v26 + 1) = a4;
    LOBYTE(v27) = 1;
    *(&v27 + 1) = v21;
    *&v28 = v23;
    *(&v28 + 1) = 0x7466697773;
    *&v29 = 0xE500000000000000;
    BYTE8(v29) = a5 & 1;
    BYTE9(v29) = 1;
    v30 = 0;
    v32 = 0;
  }

  v31[2] = v28;
  v31[3] = v29;
  v31[0] = v26;
  v31[1] = v27;
  sub_1DF49156C(v31, sub_1DF47FD50);
  sub_1DF491B8C(&v26);
  return a6(a1, a2 & 1);
}

id static CSFFeatureManager.cachedFeatureObject(id:)(uint64_t a1, unint64_t a2)
{
  v2 = sub_1DF4812FC(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CloudFeature.cloudFeatureObject.getter();

  return v4;
}

void static CSFFeatureManager.requestFeature(id:allowStale:completion:)(uint64_t a1, unint64_t a2, char a3, void (*a4)(void, void), uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v50 - v12;
  v14 = objc_opt_self();

  v51 = v14;
  v15 = [v14 processInfo];
  v16 = [v15 processName];

  v17 = sub_1DF564944();
  v19 = v18;

  v62[0] = a1;
  v62[1] = a2;
  v62[2] = v17;
  v62[3] = v19;
  v62[4] = 1667916399;
  v62[5] = 0xE400000000000000;
  v63 = a3;
  sub_1DF47F908(v62, sub_1DF47FD50);

  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v20 = sub_1DF5647B4();
  __swift_project_value_buffer(v20, qword_1ED956398);

  v21 = sub_1DF564794();
  v22 = sub_1DF564C44();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = v13;
    v25 = a5;
    v26 = a4;
    v27 = swift_slowAlloc();
    *&v57 = v27;
    *v23 = 136315138;
    *(v23 + 4) = sub_1DF47EF6C(a1, a2, &v57);
    _os_log_impl(&dword_1DF47C000, v21, v22, "Checking feature with id: %s [objc]", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    v28 = v27;
    a4 = v26;
    a5 = v25;
    v13 = v24;
    MEMORY[0x1E12D75F0](v28, -1, -1);
    MEMORY[0x1E12D75F0](v23, -1, -1);
  }

  if (sub_1DF480190())
  {
    v29 = sub_1DF480550(a1, a2);
    if (v29)
    {
      v30 = v29;
      a4(0, v29);
      v31 = v30;

LABEL_9:

      return;
    }

    v32 = sub_1DF4807E8(a1, a2);
    if (v32)
    {
      v33 = v32;
      v51 = CloudFeature.cloudFeatureObject.getter();
      a4(v51, 0);

      v31 = v51;

      goto LABEL_9;
    }
  }

  v34 = a3 & 1;
  v35 = sub_1DF4812FC(a1, a2);
  if (v35)
  {
    v36 = a4;
    v37 = v35;
    v38 = CloudFeature.cloudFeatureObject.getter();
    v36(v38, 0);

    v39 = [v51 processInfo];
    v40 = [v39 processName];

    v41 = sub_1DF564944();
    v43 = v42;

    *&v52 = a1;
    *(&v52 + 1) = a2;
    LOBYTE(v53) = 0;
    *(&v53 + 1) = v41;
    *&v54 = v43;
    *(&v54 + 1) = 1667916399;
    *&v55 = 0xE400000000000000;
    BYTE8(v55) = v34;
    BYTE9(v55) = 1;
    v56 = 0;
    v61 = 0;
    v59 = v54;
    v60 = v55;
    v57 = v52;
    v58 = v53;
    sub_1DF49156C(&v57, sub_1DF47FD50);

    sub_1DF491B8C(&v52);
  }

  else
  {
    *(&v58 + 1) = &type metadata for FeatureFlag;
    *&v59 = sub_1DF481614();
    LOBYTE(v57) = 0;
    sub_1DF5645A4();
    __swift_destroy_boxed_opaque_existential_0(&v57);
    v44 = swift_allocObject();
    *(v44 + 16) = a1;
    *(v44 + 24) = a2;
    *(v44 + 32) = v34;
    *(v44 + 40) = a4;
    *(v44 + 48) = a5;
    v45 = type metadata accessor for XPCCaller();
    v46 = objc_allocWithZone(v45);

    v47 = [v46 init];
    *(&v58 + 1) = v45;
    *&v59 = &off_1F5A8AB90;
    *&v57 = v47;
    v48 = sub_1DF564B44();
    (*(*(v48 - 8) + 56))(v13, 1, 1, v48);
    sub_1DF47FCEC(&v57, &v52);
    v49 = swift_allocObject();
    *(v49 + 16) = 0;
    *(v49 + 24) = 0;
    *(v49 + 32) = v50[1];
    *(v49 + 40) = a1;
    *(v49 + 48) = a2;
    sub_1DF47E390(&v52, v49 + 56);
    *(v49 + 96) = v34;
    *(v49 + 104) = sub_1DF4912E8;
    *(v49 + 112) = v44;

    sub_1DF4BF520(0, 0, v13, &unk_1DF56BAB0, v49);

    __swift_destroy_boxed_opaque_existential_0(&v57);
  }
}

uint64_t sub_1DF517E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 88) = v10;
  *(v8 + 96) = v11;
  *(v8 + 136) = a8;
  *(v8 + 72) = a6;
  *(v8 + 80) = a7;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DF517E88, 0, 0);
}

uint64_t sub_1DF517E88()
{
  if (qword_1ED9560B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_1DF47FCEC(*(v0 + 80), v0 + 16);
  v5 = swift_allocObject();
  *(v0 + 104) = v5;
  sub_1DF47E390((v0 + 16), v5 + 16);
  *(v5 + 56) = v3;
  *(v5 + 64) = v2;
  *(v5 + 72) = v4;
  *(v5 + 80) = v1;

  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_1DF517FE8;
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);

  return sub_1DF484D7C(v8, v7, &unk_1DF56BC80, v5);
}

uint64_t sub_1DF517FE8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = sub_1DF5181A0;
  }

  else
  {
    v8 = *(v4 + 104);

    *(v4 + 128) = a1;
    v7 = sub_1DF518118;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DF518118()
{
  v1 = v0[16];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v1;
  v3(v1, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DF5181A0()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];

  v5 = v1;
  v4(v1, 1);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DF518238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 104) = a6;
  *(v6 + 72) = a3;
  *(v6 + 80) = a4;
  *(v6 + 56) = a1;
  *(v6 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF518260, 0, 0);
}

uint64_t sub_1DF518260()
{
  __swift_project_boxed_opaque_existential_0(*(v0 + 64), *(*(v0 + 64) + 24));
  *(v0 + 40) = &type metadata for FeatureFlag;
  *(v0 + 48) = sub_1DF481614();
  *(v0 + 16) = 0;
  v1 = sub_1DF5645A4();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v2 = off_1F5A8AB98;
  v3 = type metadata accessor for XPCCaller();
  v10 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_1DF5183E4;
  v6 = *(v0 + 104);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);

  return (v10)(v8, v7, (v1 & 1) == 0, v6, v3, &off_1F5A8AB90);
}

uint64_t sub_1DF5183E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 96) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF518530, 0, 0);
  }
}

void static CSFFeatureManager.getFeatureEligibility(for:bundleID:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void *, uint64_t), uint64_t a6)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v12 = sub_1DF5647B4();
  __swift_project_value_buffer(v12, qword_1ED956398);

  v13 = sub_1DF564794();
  v14 = sub_1DF564C44();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1DF47EF6C(a1, a2, &v18);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1DF47EF6C(a3, a4, &v18);
    _os_log_impl(&dword_1DF47C000, v13, v14, "Checking feature eligibility with feature id: %s, bundle id: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v16, -1, -1);
    MEMORY[0x1E12D75F0](v15, -1, -1);
  }

  v17 = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  sub_1DF512624(a1, a2, a3, a4, a5, a6);
}

uint64_t static CSFFeatureManager.getFeatureEligibility(forFeatureWithId:bundleId:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void, void *), uint64_t a6)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v12 = sub_1DF5647B4();
  __swift_project_value_buffer(v12, qword_1ED956398);
  v13 = sub_1DF564794();
  v14 = sub_1DF564C44();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1DF47EF6C(0xD00000000000003CLL, 0x80000001DF574770, &v18);
    _os_log_impl(&dword_1DF47C000, v13, v14, "%s [objc]", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1E12D75F0](v16, -1, -1);
    MEMORY[0x1E12D75F0](v15, -1, -1);
  }

  sub_1DF51D128(a1, a2, a3, a4, a5, a6);
}

void static CSFFeatureManager.requestGeoClassification(forFeatureID:bundleID:altDSID:ignoreCache:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v14 = sub_1DF5647B4();
  __swift_project_value_buffer(v14, qword_1ED956398);

  v15 = sub_1DF564794();
  v16 = sub_1DF564C44();

  v34 = a1;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_1DF47EF6C(a1, a2, aBlock);
    *(v17 + 12) = 2080;
    v19 = a3;
    *(v17 + 14) = sub_1DF47EF6C(a3, a4, aBlock);
    _os_log_impl(&dword_1DF47C000, v15, v16, "Checking geoclassification for feature id: %s and bundle id %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v18, -1, -1);
    MEMORY[0x1E12D75F0](v17, -1, -1);
  }

  else
  {
    v19 = a3;
  }

  v20 = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  v21 = swift_allocObject();
  *(v21 + 16) = a8;
  *(v21 + 24) = a9;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1DF51D328;
  *(v22 + 24) = v21;
  swift_retain_n();

  v33 = sub_1DF50AF70(0, sub_1DF51D334, v22);

  v23 = sub_1DF564794();
  v24 = sub_1DF564C44();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_1DF47EF6C(0x6165727574616566, 0xEE00647373656363, aBlock);
    _os_log_impl(&dword_1DF47C000, v23, v24, "Sending geoclassification request to %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x1E12D75F0](v26, -1, -1);
    MEMORY[0x1E12D75F0](v25, -1, -1);
  }

  v27 = sub_1DF564914();
  v28 = sub_1DF564914();
  v29 = sub_1DF564914();
  v30 = swift_allocObject();
  v30[2] = v20;
  v30[3] = v34;
  v30[4] = a2;
  v30[5] = v19;
  v30[6] = a4;
  v30[7] = sub_1DF51D328;
  v30[8] = v21;
  aBlock[4] = sub_1DF51D33C;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF48DAD8;
  aBlock[3] = &block_descriptor_6;
  v31 = _Block_copy(aBlock);

  v32 = v20;

  [v33 requestGeoClassificationFor:v27 bundleID:v28 altDSID:v29 ignoreCache:a7 & 1 completion:v31];
  _Block_release(v31);

  swift_unknownObjectRelease();
}

uint64_t sub_1DF518EBC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = a1;
  }

  else
  {
    v8 = *(a1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification);
    v9 = *(a1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification + 8);

    v5 = sub_1DF508CAC(v8, v9);
    v6 = *(a1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_isBeta);
    v7 = 0;
  }

  return a3(v5, v6, v7);
}

void sub_1DF51902C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_1DF5642E4();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2 & 1);
}

void static CSFFeatureManager.requestGeoClassification(forFeatureID:bundleID:ignoreCache:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(uint64_t, void, void *), uint64_t a7)
{
  v10 = [objc_opt_self() defaultStore];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 aa_primaryAppleAccount];

    if (v12 && (v13 = [v12 aa_altDSID], v12, v13))
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v15 = sub_1DF564914();
      v16 = sub_1DF564914();
      v24[4] = a6;
      v24[5] = a7;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 1107296256;
      v24[2] = sub_1DF515B10;
      v24[3] = &block_descriptor_28;
      v17 = _Block_copy(v24);

      [ObjCClassFromMetadata requestGeoClassificationForFeatureID:v15 bundleID:v16 altDSID:v13 ignoreCache:a5 & 1 completion:v17];
      _Block_release(v17);
    }

    else
    {
      if (qword_1ED956390 != -1)
      {
        swift_once();
      }

      v18 = sub_1DF5647B4();
      __swift_project_value_buffer(v18, qword_1ED956398);
      v19 = sub_1DF564794();
      v20 = sub_1DF564C24();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1DF47C000, v19, v20, "Unable to access altDSID", v21, 2u);
        MEMORY[0x1E12D75F0](v21, -1, -1);
      }

      sub_1DF498474();
      v22 = swift_allocError();
      *v23 = 3;
      a6(3, 0, v22);
    }
  }

  else
  {
    __break(1u);
  }
}

id static CSFFeatureManager.addFeatureChangeObserver(change:)(uint64_t a1, uint64_t a2)
{
  if (qword_1ED955AD8 != -1)
  {
    v3 = a1;
    v4 = a2;
    swift_once();
    a1 = v3;
    a2 = v4;
  }

  return NotificationObservation.addObserver(change:)(a1, a2);
}

id static CSFFeatureManager.addTicketChangeObserver(featureName:change:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1ED955AD8 != -1)
  {
    swift_once();
  }

  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a4;

  v10 = NotificationObservation.addTicketObserver(change:)(sub_1DF51DCA4, v9);

  return v10;
}

uint64_t sub_1DF51958C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v17 - v12;
  v14 = sub_1DF564B44();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a3;
  v15[7] = a4;
  v15[8] = a5;

  sub_1DF4BF520(0, 0, v13, &unk_1DF56BC70, v15);
}

uint64_t sub_1DF5196C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a7;
  v8[23] = a8;
  v8[20] = a5;
  v8[21] = a6;
  v8[19] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DF5196F0, 0, 0);
}

uint64_t sub_1DF5196F0()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_1DF564914();
  v0[24] = v5;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DF519838;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38198, &qword_1DF56BAF8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DF4D0E70;
  v0[13] = &block_descriptor_250;
  v0[14] = v6;
  [ObjCClassFromMetadata getTicketStatusFromCacheForFeature:v5 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DF519838()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_1DF5199D4;
  }

  else
  {
    v3 = sub_1DF519948;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF519948()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = v2;

  v4 = *(v0 + 184);
  (*(v0 + 176))(v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1DF5199D4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  swift_willThrow();

  v3 = *(v0 + 184);
  (*(v0 + 176))(0);
  v4 = *(v0 + 8);

  return v4();
}

void sub_1DF519B90(void *a1)
{
  if (qword_1ED955AD8 == -1)
  {
  }

  else
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  _s25CloudSubscriptionFeatures23NotificationObservationC14removeObserver5tokenySo8NSObject_p_tF_0(a1);
}

uint64_t sub_1DF519C04(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = qword_1ED955AD8;
  swift_unknownObjectRetain();
  if (v4 != -1)
  {
    swift_once();
  }

  _s25CloudSubscriptionFeatures23NotificationObservationC14removeObserver5tokenySo8NSObject_p_tF_0(a3);

  return swift_unknownObjectRelease();
}

id static CSFFeatureManager.processPushNotification(dictionary:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [ObjCClassFromMetadata clearFeatureCacheAndNotify];
}

uint64_t sub_1DF519F04()
{
  v13 = v0;
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  __swift_project_value_buffer(v1, qword_1ED956398);
  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1DF47EF6C(0xD000000000000017, 0x80000001DF574620, &v12);
    _os_log_impl(&dword_1DF47C000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1E12D75F0](v5, -1, -1);
    MEMORY[0x1E12D75F0](v4, -1, -1);
  }

  else
  {
  }

  v6 = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  v0[2] = v6;
  v7 = swift_task_alloc();
  v0[3] = v7;
  *(v7 + 16) = v6;
  v8 = *(MEMORY[0x1E69E8920] + 4);
  v9 = swift_task_alloc();
  v0[4] = v9;
  *v9 = v0;
  v9[1] = sub_1DF51A13C;
  v10 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 6, 0, 0, 0xD000000000000017, 0x80000001DF574620, sub_1DF51E428, v7, v10);
}

uint64_t sub_1DF51A13C()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_1DF521AA4;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1DF521A7C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t static CSFFeatureManager.getTicketStatus(forFeature:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF490980;

  return (sub_1DF51E430)(a1, a2);
}

uint64_t sub_1DF51A490(int a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v3 = sub_1DF564944();
  v5 = v4;
  v2[3] = v4;
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_1DF4DC9F4;

  return sub_1DF51E430(v3, v5);
}

uint64_t static CSFFeatureManager.getTicketStatusFromCache(forFeature:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF4E5754;

  return (sub_1DF51F254)(a1, a2);
}

uint64_t sub_1DF51A798(int a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v3 = sub_1DF564944();
  v5 = v4;
  v2[3] = v4;
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_1DF4DC9F4;

  return sub_1DF51F254(v3, v5);
}

uint64_t static CSFFeatureManager.getTicket(forFeature:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF4E5754;

  return (sub_1DF51FA4C)(a1, a2);
}

uint64_t sub_1DF51AAA0(int a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v3 = sub_1DF564944();
  v5 = v4;
  v2[3] = v4;
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_1DF4E5740;

  return sub_1DF51FA4C(v3, v5);
}

uint64_t sub_1DF51AB90()
{
  v1 = v0[19];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_1DF564914();
  v0[20] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DF51ACE4;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38198, &qword_1DF56BAF8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DF4D0E70;
  v0[13] = &block_descriptor_42;
  v0[14] = v4;
  [ObjCClassFromMetadata getTicketStatusFromCacheForFeature:v3 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DF51ACE4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_1DF51AECC;
  }

  else
  {
    v3 = sub_1DF51ADF4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

id sub_1DF51ADF4()
{
  v1 = *(v0 + 144);

  objc_allocWithZone(type metadata accessor for TicketStatus());
  result = TicketStatus.init(rawValue:)(0x6465756575716E65, 0xE800000000000000);
  if (result)
  {
    v3 = result;
    if (v1)
    {
      v4 = v1;
      v5 = sub_1DF564CD4();
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v0 + 8);

    return v6(v5 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF51AECC()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v3 = v0[21];
  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956398);
  v5 = v3;
  v6 = sub_1DF564794();
  v7 = sub_1DF564C24();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[21];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1DF47C000, v6, v7, "Error getting ticket status from cache: %@", v10, 0xCu);
    sub_1DF47E5B4(v11, &unk_1ECE37F10, &qword_1DF567510);
    MEMORY[0x1E12D75F0](v11, -1, -1);
    MEMORY[0x1E12D75F0](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_1DF51B1EC(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  swift_getObjCClassMetadata();
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DF51B290;

  return static CSFFeatureManager.deviceHasAnyTicket()();
}

uint64_t sub_1DF51B290(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1DF51B3D4()
{
  *(v0 + 16) = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  *(v0 + 40) = 0;
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1DF51B48C;

  return sub_1DF50E8B0((v0 + 40));
}

uint64_t sub_1DF51B48C()
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v4 = *v1;
  *(v4 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF51B5D8, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t static CSFFeatureManager.clearCFU()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DF48D3C0;

  return sub_1DF5208EC();
}

uint64_t sub_1DF51B7FC(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DF521A6C;

  return sub_1DF5208EC();
}

uint64_t static CSFFeatureManager.postCFUIfEligible()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DF48D4B0;

  return sub_1DF520C08();
}

uint64_t sub_1DF51BAB0(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DF51BB58;

  return sub_1DF520C08();
}

uint64_t sub_1DF51BB58()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *v1;

  v7 = *(v3 + 16);
  if (v2)
  {
    v8 = sub_1DF5642E4();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 16));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_1DF51BCD8()
{
  *(v0 + 16) = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1DF51BD84;

  return sub_1DF5107C0();
}

uint64_t sub_1DF51BD84()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF51BEC0, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1DF51BEC0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);

  return v1();
}

uint64_t sub_1DF51C090(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return MEMORY[0x1EEE6DFA0](sub_1DF51C0F8, 0, 0);
}

uint64_t sub_1DF51C0F8()
{
  *(v0 + 24) = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1DF51C1A4;

  return sub_1DF5107C0();
}

uint64_t sub_1DF51C1A4()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF51C2FC, 0, 0);
  }

  else
  {
    v4 = *(v3 + 16);

    (*(v4 + 16))(v4, 0);
    _Block_release(*(v3 + 16));
    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_1DF51C2FC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  v3 = sub_1DF5642E4();
  (*(v2 + 16))(v2, v3);

  _Block_release(*(v0 + 16));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t static CSFFeatureManager.gmOptInToggle()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DF49B4E0;

  return sub_1DF520D3C();
}

uint64_t sub_1DF51C5A8(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DF51C650;

  return sub_1DF520D3C();
}

uint64_t sub_1DF51C650(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 24);
  v8 = *v2;

  v9 = *(v5 + 16);
  if (v3)
  {
    v10 = sub_1DF5642E4();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1 & 1, 0);
  }

  _Block_release(*(v6 + 16));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1DF51C7E8()
{
  v0[14] = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  v1 = type metadata accessor for SystemProperties();
  inited = swift_initStackObject();
  v0[15] = inited;
  inited[2] = 0;
  inited[3] = 0;
  inited[4] = 0;
  inited[5] = 1;
  v0[11] = v1;
  v0[12] = &off_1F5A88E50;
  v0[8] = inited;
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_1DF51C8D8;
  v4 = v0[13];

  return sub_1DF511DD4(v4);
}

uint64_t sub_1DF51C8D8()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 112);
  v4 = *v1;
  v4[17] = v0;

  __swift_destroy_boxed_opaque_existential_0(v4 + 8);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF521A70, 0, 0);
  }

  else
  {
    v5 = v4[1];

    return v5();
  }
}

uint64_t sub_1DF51CA38(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1DF48D3C0;

  return v7();
}

uint64_t sub_1DF51CB20(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1DF48D4B0;

  return v8();
}

uint64_t sub_1DF51CC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1DF47E4CC(a3, v25 - v11, &unk_1ECE383B0, &qword_1DF568C10);
  v13 = sub_1DF564B44();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1DF47E5B4(v12, &unk_1ECE383B0, &qword_1DF568C10);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1DF564B34();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1DF564B04();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1DF5649B4() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_1DF47E5B4(a3, &unk_1ECE383B0, &qword_1DF568C10);

    return v23;
  }

LABEL_8:
  sub_1DF47E5B4(a3, &unk_1ECE383B0, &qword_1DF568C10);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

unint64_t sub_1DF51CF04()
{
  result = qword_1ED955AD0;
  if (!qword_1ED955AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE37F80, &qword_1DF56A498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED955AD0);
  }

  return result;
}

uint64_t sub_1DF51CF80(uint64_t a1)
{
  v4 = *(v1 + 24);
  v13 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 96);
  v10 = *(v1 + 104);
  v9 = *(v1 + 112);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DF48D3C0;

  return sub_1DF517E54(a1, v13, v4, v5, v6, v7, v1 + 56, v8);
}

uint64_t sub_1DF51D074(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF48D4B0;

  return sub_1DF517308(a1, v4, v5, v6);
}

uint64_t sub_1DF51D128(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void, void *), uint64_t a6)
{
  v12 = qword_1ED956390;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = sub_1DF5647B4();
  __swift_project_value_buffer(v13, qword_1ED956398);

  v14 = sub_1DF564794();
  v15 = sub_1DF564C44();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_1DF47EF6C(a1, a2, &v20);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1DF47EF6C(a3, a4, &v20);
    _os_log_impl(&dword_1DF47C000, v14, v15, "Checking feature eligibility with feature id: %s, bundle id: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v17, -1, -1);
    MEMORY[0x1E12D75F0](v16, -1, -1);
  }

  v18 = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];

  sub_1DF512EF0(a1, a2, a3, a4, v18, a5, a6);
}

void sub_1DF51D340(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, char a7, void *aBlock)
{
  _Block_copy(aBlock);
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v13 = sub_1DF5647B4();
  __swift_project_value_buffer(v13, qword_1ED956398);

  v14 = sub_1DF564794();
  v15 = sub_1DF564C44();

  v34 = a1;
  v33 = a3;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlocka[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_1DF47EF6C(a1, a2, aBlocka);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1DF47EF6C(a3, a4, aBlocka);
    _os_log_impl(&dword_1DF47C000, v14, v15, "Checking geoclassification for feature id: %s and bundle id %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v17, -1, -1);
    MEMORY[0x1E12D75F0](v16, -1, -1);
  }

  v18 = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  v19 = swift_allocObject();
  *(v19 + 16) = aBlock;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1DF521A78;
  *(v20 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1DF521A8C;
  *(v21 + 24) = v20;
  _Block_copy(aBlock);
  _Block_copy(aBlock);

  v32 = sub_1DF50AF70(0, sub_1DF521AA8, v21);

  v22 = sub_1DF564794();
  v23 = sub_1DF564C44();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlocka[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_1DF47EF6C(0x6165727574616566, 0xEE00647373656363, aBlocka);
    _os_log_impl(&dword_1DF47C000, v22, v23, "Sending geoclassification request to %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x1E12D75F0](v25, -1, -1);
    MEMORY[0x1E12D75F0](v24, -1, -1);
  }

  v26 = sub_1DF564914();
  v27 = sub_1DF564914();
  v28 = sub_1DF564914();
  v29 = swift_allocObject();
  v29[2] = v18;
  v29[3] = v34;
  v29[4] = a2;
  v29[5] = v33;
  v29[6] = a4;
  v29[7] = sub_1DF521A8C;
  v29[8] = v20;
  aBlocka[4] = sub_1DF521A9C;
  aBlocka[5] = v29;
  aBlocka[0] = MEMORY[0x1E69E9820];
  aBlocka[1] = 1107296256;
  aBlocka[2] = sub_1DF48DAD8;
  aBlocka[3] = &block_descriptor_219;
  v30 = _Block_copy(aBlocka);

  v31 = v18;

  [v32 requestGeoClassificationFor:v26 bundleID:v27 altDSID:v28 ignoreCache:a7 & 1 completion:v30];
  _Block_release(v30);

  swift_unknownObjectRelease();

  _Block_release(aBlock);
  _Block_release(aBlock);
}

void sub_1DF51D97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void (**a7)(void, void, void, void))
{
  v9 = swift_allocObject();
  *(v9 + 16) = a7;
  v10 = objc_opt_self();
  _Block_copy(a7);
  v11 = [v10 defaultStore];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 aa_primaryAppleAccount];

    if (v13 && (v14 = [v13 aa_altDSID], v13, v14))
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v16 = sub_1DF564914();
      v17 = sub_1DF564914();
      v26[4] = sub_1DF5217D0;
      v26[5] = v9;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 1107296256;
      v26[2] = sub_1DF515B10;
      v26[3] = &block_descriptor_200_0;
      v18 = _Block_copy(v26);

      [ObjCClassFromMetadata requestGeoClassificationForFeatureID:v16 bundleID:v17 altDSID:v14 ignoreCache:a5 & 1 completion:v18];
      _Block_release(v18);
    }

    else
    {
      if (qword_1ED956390 != -1)
      {
        swift_once();
      }

      v19 = sub_1DF5647B4();
      __swift_project_value_buffer(v19, qword_1ED956398);
      v20 = sub_1DF564794();
      v21 = sub_1DF564C24();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1DF47C000, v20, v21, "Unable to access altDSID", v22, 2u);
        MEMORY[0x1E12D75F0](v22, -1, -1);
      }

      sub_1DF498474();
      v23 = swift_allocError();
      *v24 = 3;
      v25 = sub_1DF5642E4();
      (a7)[2](a7, 3, 0, v25);
    }
  }

  else
  {
    _Block_release(a7);
    __break(1u);
  }
}

void sub_1DF51DCA8(const char *a1, void (*a2)(void))
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956398);
  v5 = sub_1DF564794();
  v6 = sub_1DF564C44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DF47C000, v5, v6, a1, v7, 2u);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  v8 = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  a2();
}

uint64_t _sSo17CSFFeatureManagerC25CloudSubscriptionFeaturesE32refreshAllGeoclassificationCacheyyFZ_0()
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v0 = sub_1DF5647B4();
  __swift_project_value_buffer(v0, qword_1ED956398);
  v1 = sub_1DF564794();
  v2 = sub_1DF564C44();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DF47C000, v1, v2, "Geoclassification cache refresh request", v3, 2u);
    MEMORY[0x1E12D75F0](v3, -1, -1);
  }

  v4 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v5 = sub_1DF564914();
  v6 = [v4 initWithSuiteName_];

  v7 = sub_1DF4FB5AC(v6);
  v8 = sub_1DF4CC244();
  sub_1DF4FB6B0(v8, v9);
}

uint64_t _sSo17CSFFeatureManagerC25CloudSubscriptionFeaturesE27shouldShowRSVPDataDetectorsSbyFZ_0()
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v0 = sub_1DF5647B4();
  __swift_project_value_buffer(v0, qword_1ED956398);
  v1 = sub_1DF564794();
  v2 = sub_1DF564C44();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v18[0] = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1DF47EF6C(0xD00000000000001DLL, 0x80000001DF5748C0, v18);
    _os_log_impl(&dword_1DF47C000, v1, v2, "%s requested", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x1E12D75F0](v4, -1, -1);
    MEMORY[0x1E12D75F0](v3, -1, -1);
  }

  v19 = &type metadata for FeatureFlag;
  v5 = sub_1DF481614();
  v20 = v5;
  LOBYTE(v18[0]) = 1;
  v6 = sub_1DF5645A4();
  __swift_destroy_boxed_opaque_existential_0(v18);
  if ((v6 & 1) == 0)
  {
    goto LABEL_13;
  }

  v19 = &type metadata for FeatureFlag;
  v20 = v5;
  LOBYTE(v18[0]) = 2;
  v7 = sub_1DF5645A4();
  __swift_destroy_boxed_opaque_existential_0(v18);
  if ((v7 & 1) == 0)
  {
    goto LABEL_13;
  }

  v19 = &type metadata for FeatureFlag;
  v20 = v5;
  LOBYTE(v18[0]) = 3;
  v8 = sub_1DF5645A4();
  __swift_destroy_boxed_opaque_existential_0(v18);
  if (v8)
  {
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v0, qword_1ED9556D8);
    v9 = sub_1DF564794();
    v10 = sub_1DF564C44();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DF47C000, v9, v10, "All feature flags for rsvp are enabled, skipping XPCConnection call", v11, 2u);
      MEMORY[0x1E12D75F0](v11, -1, -1);
    }

    v12 = 1;
  }

  else
  {
LABEL_13:
    if (qword_1ED954E20 != -1)
    {
      swift_once();
    }

    v12 = sub_1DF4A7C48();
    v13 = sub_1DF564794();
    v14 = sub_1DF564C44();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18[0] = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_1DF47EF6C(0xD00000000000001DLL, 0x80000001DF5748C0, v18);
      *(v15 + 12) = 1026;
      *(v15 + 14) = v12 & 1;
      _os_log_impl(&dword_1DF47C000, v13, v14, "%s returning result: %{BOOL,public}d", v15, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1E12D75F0](v16, -1, -1);
      MEMORY[0x1E12D75F0](v15, -1, -1);
    }
  }

  return v12 & 1;
}

uint64_t sub_1DF51E430(uint64_t a1, uint64_t a2)
{
  v2[44] = a1;
  v2[45] = a2;
  v3 = sub_1DF564494();
  v2[46] = v3;
  v4 = *(v3 - 8);
  v2[47] = v4;
  v5 = *(v4 + 64) + 15;
  v2[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF51E4F0, 0, 0);
}

id sub_1DF51E4F0()
{
  v21 = v0;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    deviceSupportsGenerativeModelSystems = MobileGestalt_get_deviceSupportsGenerativeModelSystems();

    if (deviceSupportsGenerativeModelSystems)
    {
      if (qword_1ED956390 != -1)
      {
        swift_once();
      }

      v4 = sub_1DF5647B4();
      v0[49] = v4;
      v0[50] = __swift_project_value_buffer(v4, qword_1ED956398);
      v5 = sub_1DF564794();
      v6 = sub_1DF564C44();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v20[0] = v8;
        *v7 = 136315138;
        *(v7 + 4) = sub_1DF47EF6C(0xD00000000000001CLL, 0x80000001DF574600, v20);
        _os_log_impl(&dword_1DF47C000, v5, v6, "%s Attempting to get ticket status from daemon.", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x1E12D75F0](v8, -1, -1);
        MEMORY[0x1E12D75F0](v7, -1, -1);
      }

      v0[51] = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
      v9 = swift_task_alloc();
      v0[52] = v9;
      *v9 = v0;
      v9[1] = sub_1DF51E860;
      v11 = v0[44];
      v10 = v0[45];

      return sub_1DF50C0A4(v11, v10);
    }

    else
    {
      if (qword_1ED956390 != -1)
      {
        swift_once();
      }

      v12 = sub_1DF5647B4();
      __swift_project_value_buffer(v12, qword_1ED956398);
      v13 = sub_1DF564794();
      v14 = sub_1DF564C44();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v20[0] = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_1DF47EF6C(0xD00000000000001CLL, 0x80000001DF574600, v20);
        _os_log_impl(&dword_1DF47C000, v13, v14, "%s Device is not eligible.", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x1E12D75F0](v16, -1, -1);
        MEMORY[0x1E12D75F0](v15, -1, -1);
      }

      sub_1DF498474();
      swift_allocError();
      *v17 = 12;
      swift_willThrow();
      v18 = v0[48];

      v19 = v0[1];

      return v19();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF51E860(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 416);
  v7 = *v2;
  *(v3 + 424) = a1;
  *(v3 + 432) = v1;

  if (v1)
  {
    v5 = sub_1DF51EF84;
  }

  else
  {

    v5 = sub_1DF51E97C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

id sub_1DF51E97C()
{
  v56 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  *(v0 + 304) = v1;
  *(v0 + 312) = v2;

  v3 = v1 == 0x6C6C2E64756F6C63 && v2 == 0xE90000000000006DLL;
  if (v3 || (sub_1DF5650D4() & 1) != 0)
  {
    v4 = 1;
  }

  else if (*(v0 + 352) == 0xD000000000000018 && 0x80000001DF5707C0 == v2 || (v38 = *(v0 + 360), (sub_1DF5650D4() & 1) != 0))
  {
    v4 = 2;
  }

  else
  {
    v39 = *(v0 + 352);
    if (v39 == 0xD00000000000001CLL && 0x80000001DF570800 == v2 || (v40 = *(v0 + 360), v41 = *(v0 + 352), (sub_1DF5650D4() & 1) != 0))
    {
      v4 = 4;
    }

    else if (v39 == 0xD00000000000001CLL && 0x80000001DF5707E0 == v2 || (v42 = *(v0 + 352), v43 = *(v0 + 360), (sub_1DF5650D4() & 1) != 0))
    {
      v4 = 8;
    }

    else
    {
      v44 = *(v0 + 360);
      v45 = qword_1ED956018;

      if (v45 != -1)
      {
        swift_once();
        v54 = *(v0 + 360);
      }

      __swift_project_value_buffer(*(v0 + 392), qword_1ED956020);

      v46 = sub_1DF564794();
      v47 = sub_1DF564C24();

      v48 = os_log_type_enabled(v46, v47);
      v49 = *(v0 + 360);
      if (v48)
      {
        v50 = *(v0 + 352);
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v55 = v52;
        *v51 = 136446210;
        v53 = sub_1DF47EF6C(v50, v49, &v55);

        *(v51 + 4) = v53;
        _os_log_impl(&dword_1DF47C000, v46, v47, "Unable to determine returned feature: %{public}s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x1E12D75F0](v52, -1, -1);
        MEMORY[0x1E12D75F0](v51, -1, -1);
      }

      else
      {
      }

      v4 = 0;
    }
  }

  v5 = *(v0 + 424);
  v6 = *(v0 + 360);
  sub_1DF4BF4C8(v0 + 304);

  v7 = v5;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v9 = result;
    v10 = MobileGestalt_copy_regionCode_obj();

    if (v10)
    {
      v11 = sub_1DF564944();
      v13 = v12;

      if (v11 == 18499 && v13 == 0xE200000000000000)
      {

        LOBYTE(v10) = 1;
      }

      else
      {
        LOBYTE(v10) = sub_1DF5650D4();
      }
    }

    v14 = *(v0 + 424);
    v15 = *(v0 + 400);
    v17 = *(v0 + 352);
    v16 = *(v0 + 360);
    *(v0 + 208) = 257;
    *(v0 + 216) = v17;
    *(v0 + 224) = v16;
    *(v0 + 232) = v14;
    *(v0 + 240) = v4;
    *(v0 + 248) = 768;
    *(v0 + 256) = 0;
    *(v0 + 264) = v10 & 1;
    v18 = *(v0 + 208);
    v19 = *(v0 + 224);
    v20 = *(v0 + 240);
    *(v0 + 121) = *(v0 + 249);
    *(v0 + 96) = v19;
    *(v0 + 112) = v20;
    *(v0 + 80) = v18;
    v21 = v14;
    v22 = sub_1DF564794();
    v23 = sub_1DF564C44();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 424);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v55 = v27;
      *v25 = 136315394;
      *(v25 + 4) = sub_1DF47EF6C(0xD00000000000001CLL, 0x80000001DF574600, &v55);
      *(v25 + 12) = 2112;
      *(v25 + 14) = v24;
      *v26 = v14;
      v28 = v24;
      _os_log_impl(&dword_1DF47C000, v22, v23, "%s Returning ticket: %@", v25, 0x16u);
      sub_1DF47E5B4(v26, &unk_1ECE37F10, &qword_1DF567510);
      MEMORY[0x1E12D75F0](v26, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1E12D75F0](v27, -1, -1);
      MEMORY[0x1E12D75F0](v25, -1, -1);
    }

    v30 = *(v0 + 376);
    v29 = *(v0 + 384);
    v31 = *(v0 + 368);
    v32 = [objc_allocWithZone(type metadata accessor for GMAnalyticsProvider()) init];
    sub_1DF564474();
    v33 = *&v32[OBJC_IVAR___CSFGMAnalyticsProvider_dataStore + 24];
    v34 = *&v32[OBJC_IVAR___CSFGMAnalyticsProvider_dataStore + 32];
    __swift_project_boxed_opaque_existential_0(&v32[OBJC_IVAR___CSFGMAnalyticsProvider_dataStore], v33);
    *(v0 + 344) = v31;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 320));
    (*(v30 + 16))(boxed_opaque_existential_1, v29, v31);
    (*(v34 + 8))(v0 + 320, 0xD00000000000001ALL, 0x80000001DF572E00, v33, v34);

    (*(v30 + 8))(v29, v31);
    sub_1DF47E5B4(v0 + 320, &qword_1ECE378F0, &qword_1DF5686F0);
    sub_1DF4E28F8((v0 + 80), sub_1DF47FD50);
    sub_1DF4E4A80(v0 + 208);

    v36 = *(v0 + 8);
    v37 = *(v0 + 424);

    return v36(v37);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1DF51EF84()
{
  v30 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 400);

  v3 = v1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 432);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_1DF47EF6C(0xD00000000000001CLL, 0x80000001DF574600, &v29);
    *(v7 + 12) = 2112;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_1DF47C000, v4, v5, "%s Unable to get ticket with error: %@", v7, 0x16u);
    sub_1DF47E5B4(v8, &unk_1ECE37F10, &qword_1DF567510);
    MEMORY[0x1E12D75F0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  v12 = *(v0 + 432);
  v13 = *(v0 + 360);

  v14 = v12;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v16 = result;
    v17 = MobileGestalt_copy_regionCode_obj();

    if (v17)
    {
      v18 = sub_1DF564944();
      v20 = v19;

      if (v18 == 18499 && v20 == 0xE200000000000000)
      {

        LOBYTE(v17) = 1;
      }

      else
      {
        LOBYTE(v17) = sub_1DF5650D4();
      }
    }

    v21 = *(v0 + 432);
    *(v0 + 144) = 1;
    v22 = *(v0 + 360);
    *(v0 + 152) = *(v0 + 352);
    *(v0 + 160) = v22;
    *(v0 + 168) = 0;
    *(v0 + 176) = 0;
    *(v0 + 184) = 1025;
    *(v0 + 192) = v21;
    *(v0 + 200) = v17 & 1;
    v23 = *(v0 + 144);
    v24 = *(v0 + 160);
    v25 = *(v0 + 176);
    *(v0 + 57) = *(v0 + 185);
    *(v0 + 32) = v24;
    *(v0 + 48) = v25;
    *(v0 + 16) = v23;
    swift_willThrow();
    sub_1DF4E28F8((v0 + 16), sub_1DF47FD50);
    sub_1DF4E4A80(v0 + 144);
    v26 = *(v0 + 432);
    v27 = *(v0 + 384);

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF51F254(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF51F274, 0, 0);
}

id sub_1DF51F274()
{
  v20 = v0;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    deviceSupportsGenerativeModelSystems = MobileGestalt_get_deviceSupportsGenerativeModelSystems();

    if (deviceSupportsGenerativeModelSystems)
    {
      if (qword_1ED956390 != -1)
      {
        swift_once();
      }

      v4 = sub_1DF5647B4();
      v0[4] = __swift_project_value_buffer(v4, qword_1ED956398);
      v5 = sub_1DF564794();
      v6 = sub_1DF564C44();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v19[0] = v8;
        *v7 = 136315138;
        *(v7 + 4) = sub_1DF47EF6C(0xD000000000000025, 0x80000001DF574580, v19);
        _os_log_impl(&dword_1DF47C000, v5, v6, "%s Attempting to get ticket status from cache.", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x1E12D75F0](v8, -1, -1);
        MEMORY[0x1E12D75F0](v7, -1, -1);
      }

      v0[5] = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
      v9 = swift_task_alloc();
      v0[6] = v9;
      *v9 = v0;
      v9[1] = sub_1DF51F5D8;
      v11 = v0[2];
      v10 = v0[3];

      return sub_1DF50CFD4(v11, v10);
    }

    else
    {
      if (qword_1ED956390 != -1)
      {
        swift_once();
      }

      v12 = sub_1DF5647B4();
      __swift_project_value_buffer(v12, qword_1ED956398);
      v13 = sub_1DF564794();
      v14 = sub_1DF564C44();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v19[0] = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_1DF47EF6C(0xD000000000000025, 0x80000001DF574580, v19);
        _os_log_impl(&dword_1DF47C000, v13, v14, "%s Device is not eligible.", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x1E12D75F0](v16, -1, -1);
        MEMORY[0x1E12D75F0](v15, -1, -1);
      }

      sub_1DF498474();
      swift_allocError();
      *v17 = 12;
      swift_willThrow();
      v18 = v0[1];

      return v18();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF51F5D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v7 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v5 = sub_1DF51F894;
  }

  else
  {

    v5 = sub_1DF51F6F4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DF51F6F4()
{
  v14 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 56);
  v3 = sub_1DF564794();
  v4 = sub_1DF564C44();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 56);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DF47EF6C(0xD000000000000025, 0x80000001DF574580, &v13);
    *(v6 + 12) = 2112;
    *(v6 + 14) = v2;
    *v7 = v5;
    v9 = v2;
    _os_log_impl(&dword_1DF47C000, v3, v4, "%s Returning ticket: %@", v6, 0x16u);
    sub_1DF47E5B4(v7, &unk_1ECE37F10, &qword_1DF567510);
    MEMORY[0x1E12D75F0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1E12D75F0](v8, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  v10 = *(v0 + 8);
  v11 = *(v0 + 56);

  return v10(v11);
}

uint64_t sub_1DF51F894()
{
  v16 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);

  v3 = v1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 64);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_1DF47EF6C(0xD000000000000025, 0x80000001DF574580, &v15);
    *(v7 + 12) = 2112;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_1DF47C000, v4, v5, "%s Unable to get ticket with error: %@", v7, 0x16u);
    sub_1DF47E5B4(v8, &unk_1ECE37F10, &qword_1DF567510);
    MEMORY[0x1E12D75F0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  v12 = *(v0 + 64);
  swift_willThrow();
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1DF51FA4C(uint64_t a1, uint64_t a2)
{
  v2[45] = a1;
  v2[46] = a2;
  v3 = sub_1DF564494();
  v2[47] = v3;
  v4 = *(v3 - 8);
  v2[48] = v4;
  v5 = *(v4 + 64) + 15;
  v2[49] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF51FB0C, 0, 0);
}

uint64_t sub_1DF51FB0C()
{
  v32 = v0;
  v1 = MobileGestalt_get_current_device();
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DE38](v1, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = v1;
  deviceSupportsGenerativeModelSystems = MobileGestalt_get_deviceSupportsGenerativeModelSystems();

  if (deviceSupportsGenerativeModelSystems)
  {
    if (qword_1ED956390 != -1)
    {
      swift_once();
    }

    v11 = sub_1DF5647B4();
    v0[50] = v11;
    v0[51] = __swift_project_value_buffer(v11, qword_1ED956398);
    v12 = sub_1DF564794();
    v13 = sub_1DF564C44();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1DF47EF6C(0xD000000000000016, 0x80000001DF574520, v31);
      _os_log_impl(&dword_1DF47C000, v12, v13, "%s Attempting to create new ticket.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1E12D75F0](v15, -1, -1);
      MEMORY[0x1E12D75F0](v14, -1, -1);
    }

    else
    {
    }

    v0[52] = 0x80000001DF574520;
    v26 = v0[45];
    v25 = v0[46];
    v27 = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
    v0[53] = v27;
    v28 = swift_task_alloc();
    v0[54] = v28;
    v28[2] = v27;
    v28[3] = v26;
    v28[4] = v25;
    v29 = *(MEMORY[0x1E69E8920] + 4);
    v30 = swift_task_alloc();
    v0[55] = v30;
    v8 = type metadata accessor for Ticket();
    *v30 = v0;
    v30[1] = sub_1DF51FEF4;
    v6 = sub_1DF52187C;
    v1 = v0 + 44;
    v2 = 0;
    v3 = 0;
    v4 = 0xD000000000000016;
    v5 = 0x80000001DF574520;
    v7 = v28;

    return MEMORY[0x1EEE6DE38](v1, v2, v3, v4, v5, v6, v7, v8);
  }

  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v16 = sub_1DF5647B4();
  __swift_project_value_buffer(v16, qword_1ED956398);
  v17 = sub_1DF564794();
  v18 = sub_1DF564C44();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1DF47EF6C(0xD000000000000016, 0x80000001DF574520, v31);
    _os_log_impl(&dword_1DF47C000, v17, v18, "%s Device is not eligible.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x1E12D75F0](v20, -1, -1);
    MEMORY[0x1E12D75F0](v19, -1, -1);
  }

  sub_1DF498474();
  swift_allocError();
  *v21 = 12;
  swift_willThrow();
  v22 = v0[49];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1DF51FEF4()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v7 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v4 = sub_1DF520010;
  }

  else
  {
    v5 = *(v2 + 432);

    v4 = sub_1DF5202E0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

id sub_1DF520010()
{
  v31 = v0;
  v1 = *(v0 + 448);
  v2 = *(v0 + 432);
  v3 = *(v0 + 408);

  v4 = v1;
  v5 = sub_1DF564794();
  v6 = sub_1DF564C44();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 448);
    v8 = *(v0 + 416);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_1DF47EF6C(0xD000000000000016, v8, &v30);
    *(v9 + 12) = 2112;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_1DF47C000, v5, v6, "%s Unable to get ticket with error: %@", v9, 0x16u);
    sub_1DF47E5B4(v10, &unk_1ECE37F10, &qword_1DF567510);
    MEMORY[0x1E12D75F0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1E12D75F0](v11, -1, -1);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  v14 = *(v0 + 368);
  v15 = *(v0 + 448);

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v17 = result;
    v18 = MobileGestalt_copy_regionCode_obj();

    if (v18)
    {
      v19 = sub_1DF564944();
      v21 = v20;

      if (v19 == 18499 && v21 == 0xE200000000000000)
      {

        LOBYTE(v18) = 1;
      }

      else
      {
        LOBYTE(v18) = sub_1DF5650D4();
      }
    }

    v22 = *(v0 + 448);
    *(v0 + 144) = 0;
    v23 = *(v0 + 368);
    *(v0 + 152) = *(v0 + 360);
    *(v0 + 160) = v23;
    *(v0 + 168) = 0;
    *(v0 + 176) = 0;
    *(v0 + 184) = 1025;
    *(v0 + 192) = v22;
    *(v0 + 200) = v18 & 1;
    v24 = *(v0 + 144);
    v25 = *(v0 + 160);
    v26 = *(v0 + 176);
    *(v0 + 57) = *(v0 + 185);
    *(v0 + 32) = v25;
    *(v0 + 48) = v26;
    *(v0 + 16) = v24;
    swift_willThrow();
    sub_1DF4E28F8((v0 + 16), sub_1DF47FD50);
    sub_1DF4E4A80(v0 + 144);
    v27 = *(v0 + 448);
    v28 = *(v0 + 392);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1DF5202E0()
{
  v57 = v0;
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);

  v3 = *(v0 + 352);
  v4 = *&v3[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_status];
  *(v0 + 304) = v2;
  *(v0 + 312) = v1;

  v5 = v2 == 0x6C6C2E64756F6C63 && v1 == 0xE90000000000006DLL;
  if (v5 || (v6 = *(v0 + 360), v7 = *(v0 + 368), (sub_1DF5650D4() & 1) != 0))
  {
    v8 = 1;
  }

  else if (*(v0 + 360) == 0xD000000000000018 && 0x80000001DF5707C0 == v1 || (v39 = *(v0 + 368), (sub_1DF5650D4() & 1) != 0))
  {
    v8 = 2;
  }

  else
  {
    v40 = *(v0 + 360);
    if (v40 == 0xD00000000000001CLL && 0x80000001DF570800 == v1 || (v41 = *(v0 + 368), v42 = *(v0 + 360), (sub_1DF5650D4() & 1) != 0))
    {
      v8 = 4;
    }

    else if (v40 == 0xD00000000000001CLL && 0x80000001DF5707E0 == v1 || (v43 = *(v0 + 360), v44 = *(v0 + 368), (sub_1DF5650D4() & 1) != 0))
    {
      v8 = 8;
    }

    else
    {
      v45 = *(v0 + 368);
      v46 = qword_1ED956018;

      if (v46 != -1)
      {
        swift_once();
        v55 = *(v0 + 368);
      }

      __swift_project_value_buffer(*(v0 + 400), qword_1ED956020);

      v47 = sub_1DF564794();
      v48 = sub_1DF564C24();

      v49 = os_log_type_enabled(v47, v48);
      v50 = *(v0 + 368);
      if (v49)
      {
        v51 = *(v0 + 360);
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v56 = v53;
        *v52 = 136446210;
        v54 = sub_1DF47EF6C(v51, v50, &v56);

        *(v52 + 4) = v54;
        _os_log_impl(&dword_1DF47C000, v47, v48, "Unable to determine returned feature: %{public}s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v53);
        MEMORY[0x1E12D75F0](v53, -1, -1);
        MEMORY[0x1E12D75F0](v52, -1, -1);
      }

      else
      {
      }

      v8 = 0;
    }
  }

  v9 = *(v0 + 368);
  sub_1DF4BF4C8(v0 + 304);

  v10 = v4;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v12 = result;
    v13 = MobileGestalt_copy_regionCode_obj();

    if (v13)
    {
      v14 = sub_1DF564944();
      v16 = v15;

      if (v14 == 18499 && v16 == 0xE200000000000000)
      {

        LOBYTE(v13) = 1;
      }

      else
      {
        LOBYTE(v13) = sub_1DF5650D4();
      }
    }

    v17 = *(v0 + 408);
    v19 = *(v0 + 360);
    v18 = *(v0 + 368);
    *(v0 + 208) = 256;
    *(v0 + 216) = v19;
    *(v0 + 224) = v18;
    *(v0 + 232) = v10;
    *(v0 + 240) = v8;
    *(v0 + 248) = 768;
    *(v0 + 256) = 0;
    *(v0 + 264) = v13 & 1;
    v20 = *(v0 + 208);
    v21 = *(v0 + 224);
    v22 = *(v0 + 240);
    *(v0 + 121) = *(v0 + 249);
    *(v0 + 96) = v21;
    *(v0 + 112) = v22;
    *(v0 + 80) = v20;
    v23 = v3;
    v24 = sub_1DF564794();
    v25 = sub_1DF564C44();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 416);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v56 = v29;
      *v27 = 136315394;
      *(v27 + 4) = sub_1DF47EF6C(0xD000000000000016, v26, &v56);
      *(v27 + 12) = 2112;
      *(v27 + 14) = v23;
      *v28 = v23;
      v30 = v23;
      _os_log_impl(&dword_1DF47C000, v24, v25, "%s Returning ticket: %@", v27, 0x16u);
      sub_1DF47E5B4(v28, &unk_1ECE37F10, &qword_1DF567510);
      MEMORY[0x1E12D75F0](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x1E12D75F0](v29, -1, -1);
      MEMORY[0x1E12D75F0](v27, -1, -1);
    }

    v32 = *(v0 + 384);
    v31 = *(v0 + 392);
    v33 = *(v0 + 376);
    v34 = [objc_allocWithZone(type metadata accessor for GMAnalyticsProvider()) init];
    sub_1DF564474();
    v35 = *&v34[OBJC_IVAR___CSFGMAnalyticsProvider_dataStore + 24];
    v36 = *&v34[OBJC_IVAR___CSFGMAnalyticsProvider_dataStore + 32];
    __swift_project_boxed_opaque_existential_0(&v34[OBJC_IVAR___CSFGMAnalyticsProvider_dataStore], v35);
    *(v0 + 344) = v33;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 320));
    (*(v32 + 16))(boxed_opaque_existential_1, v31, v33);
    (*(v36 + 8))(v0 + 320, 0xD00000000000001ALL, 0x80000001DF572E00, v35, v36);

    (*(v32 + 8))(v31, v33);
    sub_1DF47E5B4(v0 + 320, &qword_1ECE378F0, &qword_1DF5686F0);
    sub_1DF4E28F8((v0 + 80), sub_1DF47FD50);
    sub_1DF4E4A80(v0 + 208);

    v38 = *(v0 + 8);

    return v38(v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF520908()
{
  v1 = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  v0[2] = v1;
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1DF520A1C;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000012, 0x80000001DF574450, sub_1DF521870, v2, v5);
}

uint64_t sub_1DF520A1C()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_1DF520B9C;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1DF520B38;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DF520B38()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF520B9C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);
  v3 = *(v0 + 40);

  return v2();
}

uint64_t sub_1DF520C24()
{
  v1 = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  v0[2] = v1;
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1DF520A1C;
  v5 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 6, 0, 0, 0xD00000000000001BLL, 0x80000001DF5744A0, sub_1DF521864, v2, v5);
}

uint64_t sub_1DF520D58()
{
  v1 = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  v0[2] = v1;
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1DF520E6C;
  v5 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 6, 0, 0, 0x546E4974704F6D67, 0xEF2928656C67676FLL, sub_1DF52185C, v2, v5);
}

uint64_t sub_1DF520E6C()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_1DF520FF0;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1DF520F88;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DF520F88()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1DF520FF0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);
  v3 = *(v0 + 40);

  return v2(0);
}

uint64_t sub_1DF521060()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DF48D3C0;

  return sub_1DF51C5A8(v2);
}

uint64_t sub_1DF52110C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DF48D3C0;

  return sub_1DF484C20(a1, v5);
}

uint64_t sub_1DF5211C4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DF48D3C0;

  return sub_1DF51C090(v2);
}

uint64_t sub_1DF521270()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DF48D3C0;

  return sub_1DF51BAB0(v2);
}

uint64_t sub_1DF52131C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D4B0;

  return sub_1DF51CB20(a1, v4, v5, v7);
}

uint64_t sub_1DF5213E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DF48D3C0;

  return sub_1DF51B7FC(v2);
}

uint64_t sub_1DF521494()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DF48D3C0;

  return sub_1DF51B1EC(v2);
}

uint64_t sub_1DF521540()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DF48D3C0;

  return sub_1DF51AAA0(v2, v3);
}

uint64_t sub_1DF5215F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DF48D3C0;

  return sub_1DF51A798(v2, v3);
}

uint64_t sub_1DF5216A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DF48D3C0;

  return sub_1DF51A490(v2, v3);
}

uint64_t objectdestroy_30Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_24Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DF521888(uint64_t a1)
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
  v11[1] = sub_1DF48D3C0;

  return sub_1DF5196C8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DF521990(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF518238(a1, v1 + 16, v4, v5, v6, v7);
}

uint64_t static AvailabilityStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t AvailabilityStatus.unavailabilityReasons.getter()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

void static AvailabilityStatus.current.getter(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() currentAvailability];
  v3 = [v2 status];
  if (v3 >= 2)
  {
    if (v3 == 2)
    {
      v4 = [v2 unavailabiltyReasons];
      v5 = 0;
    }

    else
    {
      v5 = 0;
      v4 = 512;
    }
  }

  else
  {
    v4 = v3;
    v5 = 1;
  }

  if (qword_1ED955730 != -1)
  {
    swift_once();
  }

  v6 = sub_1DF5647B4();
  __swift_project_value_buffer(v6, qword_1ED955738);
  v7 = sub_1DF564794();
  v8 = sub_1DF564C44();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    if (v5)
    {
      if (v4)
      {
        v11 = 0x646574696D696CLL;
      }

      else
      {
        v11 = 0x6C62616C69617661;
      }

      if (v4)
      {
        v12 = 0xE700000000000000;
      }

      else
      {
        v12 = 0xE900000000000065;
      }
    }

    else
    {
      sub_1DF564DF4();

      v13 = CSFUnavailabilityReasons.description.getter(v4);
      MEMORY[0x1E12D62C0](v13);

      v11 = 0xD000000000000016;
      v12 = 0x80000001DF571330;
    }

    v14 = sub_1DF47EF6C(v11, v12, &v15);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1DF47C000, v7, v8, "[sync] Fetched current AvailabilityStatus: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1E12D75F0](v10, -1, -1);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  *a1 = v4;
  *(a1 + 8) = v5;
}

uint64_t sub_1DF521D78()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DF521EA0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D50, qword_1DF569370);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DF4E5758;
  v0[13] = &block_descriptor_7;
  v0[14] = v2;
  [v1 currentAvailabilityWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DF521EA0()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF521F80, 0, 0);
}

uint64_t sub_1DF521F80()
{
  v18 = v0;
  v1 = v0[18];
  v2 = [v1 status];
  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      v3 = [v1 unavailabiltyReasons];
      v4 = 0;
    }

    else
    {
      v4 = 0;
      v3 = 512;
    }
  }

  else
  {
    v3 = v2;
    v4 = 1;
  }

  if (qword_1ED955730 != -1)
  {
    swift_once();
  }

  v5 = sub_1DF5647B4();
  __swift_project_value_buffer(v5, qword_1ED955738);
  v6 = sub_1DF564794();
  v7 = sub_1DF564C44();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17[0] = v9;
    *v8 = 136446210;
    if (v4)
    {
      if (v3)
      {
        v10 = 0x646574696D696CLL;
      }

      else
      {
        v10 = 0x6C62616C69617661;
      }

      if (v3)
      {
        v11 = 0xE700000000000000;
      }

      else
      {
        v11 = 0xE900000000000065;
      }
    }

    else
    {
      sub_1DF564DF4();

      v17[1] = 0xD000000000000016;
      v17[2] = 0x80000001DF571330;
      v12 = CSFUnavailabilityReasons.description.getter(v3);
      MEMORY[0x1E12D62C0](v12);

      v10 = 0xD000000000000016;
      v11 = 0x80000001DF571330;
    }

    v13 = sub_1DF47EF6C(v10, v11, v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DF47C000, v6, v7, "[async] Fetched current AvailabilityStatus: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }

  v14 = v0[19];
  *v14 = v3;
  *(v14 + 8) = v4;
  v15 = v0[1];

  return v15();
}

uint64_t AvailabilityStatus.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1)
    {
      return 0x646574696D696CLL;
    }

    else
    {
      return 0x6C62616C69617661;
    }
  }

  else
  {
    sub_1DF564DF4();

    v3 = CSFUnavailabilityReasons.description.getter(v1);
    MEMORY[0x1E12D62C0](v3);

    return 0xD000000000000016;
  }
}

uint64_t sub_1DF5222C0(uint64_t a1)
{
  v2 = sub_1DF5230DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF5222FC(uint64_t a1)
{
  v2 = sub_1DF5230DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF522338(uint64_t a1)
{
  v2 = sub_1DF522FE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF522374(uint64_t a1)
{
  v2 = sub_1DF522FE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF5223B0(uint64_t a1)
{
  v2 = sub_1DF523088();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF5223EC(uint64_t a1)
{
  v2 = sub_1DF523088();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF522428(uint64_t a1)
{
  v2 = sub_1DF523034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF522464(uint64_t a1)
{
  v2 = sub_1DF523034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AvailabilityStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE381A8, &qword_1DF56BCA0);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE381B0, &qword_1DF56BCA8);
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE381B8, &qword_1DF56BCB0);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v28 = &v27 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE381C0, &qword_1DF56BCB8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - v15;
  v17 = *v1;
  v18 = *(v1 + 8);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF522FE0();
  sub_1DF5652A4();
  if (v18 == 1)
  {
    v20 = (v13 + 8);
    if (v17)
    {
      v39 = 1;
      sub_1DF523088();
      v21 = v31;
      sub_1DF565014();
      v23 = v32;
      v22 = v33;
    }

    else
    {
      v38 = 0;
      sub_1DF5230DC();
      v21 = v28;
      sub_1DF565014();
      v23 = v29;
      v22 = v30;
    }

    (*(v23 + 8))(v21, v22);
    return (*v20)(v16, v12);
  }

  else
  {
    v40 = 2;
    sub_1DF523034();
    v24 = v34;
    sub_1DF565014();
    v37 = v17;
    type metadata accessor for UnavailabilityReasons(0);
    sub_1DF4AAB30(&qword_1ECE37E00);
    v25 = v36;
    sub_1DF565074();
    (*(v35 + 8))(v24, v25);
    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t AvailabilityStatus.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x1E12D6B00](2);
  }

  return MEMORY[0x1E12D6B00](v1);
}

uint64_t AvailabilityStatus.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1DF565234();
  if (v2 == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x1E12D6B00](2);
  }

  MEMORY[0x1E12D6B00](v1);
  return sub_1DF565264();
}

uint64_t AvailabilityStatus.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE381E8, &qword_1DF56BCC0);
  v4 = *(v3 - 8);
  v44 = v3;
  v45 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE381F0, &qword_1DF56BCC8);
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE381F8, &qword_1DF56BCD0);
  v46 = *(v11 - 8);
  v12 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38200, &unk_1DF56BCD8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v41 - v18;
  v21 = a1[3];
  v20 = a1[4];
  v50 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v21);
  sub_1DF522FE0();
  v22 = v49;
  sub_1DF565284();
  if (!v22)
  {
    v41 = 0;
    v23 = v46;
    v49 = v16;
    v24 = v48;
    v25 = sub_1DF564FF4();
    v26 = (2 * *(v25 + 16)) | 1;
    v51 = v25;
    v52 = v25 + 32;
    v53 = 0;
    v54 = v26;
    v27 = sub_1DF4E97D8();
    if (v27 == 3 || v53 != v54 >> 1)
    {
      v29 = sub_1DF564E44();
      swift_allocError();
      v30 = v19;
      v32 = v31;
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37E38, &qword_1DF5693E0) + 48);
      *v32 = &type metadata for AvailabilityStatus;
      sub_1DF564F74();
      sub_1DF564E34();
      (*(*(v29 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v29);
      swift_willThrow();
    }

    else
    {
      if (!v27)
      {
        LOBYTE(v55) = 0;
        sub_1DF5230DC();
        v35 = v41;
        sub_1DF564F64();
        v36 = v49;
        if (v35)
        {
LABEL_13:
          (*(v49 + 8))(v19, v15);
          goto LABEL_10;
        }

        (*(v23 + 8))(v14, v11);
        (*(v36 + 8))(v19, v15);
        swift_unknownObjectRelease();
        v40 = 0;
        v39 = 1;
LABEL_18:
        *v24 = v40;
        *(v24 + 8) = v39;
        return __swift_destroy_boxed_opaque_existential_0(v50);
      }

      if (v27 == 1)
      {
        LOBYTE(v55) = 1;
        sub_1DF523088();
        v28 = v41;
        sub_1DF564F64();
        if (v28)
        {
          goto LABEL_13;
        }

        (*(v42 + 8))(v10, v43);
        (*(v49 + 8))(v19, v15);
        swift_unknownObjectRelease();
        v40 = 1;
        v39 = 1;
        goto LABEL_18;
      }

      LOBYTE(v55) = 2;
      sub_1DF523034();
      v30 = v19;
      v37 = v41;
      sub_1DF564F64();
      if (!v37)
      {
        type metadata accessor for UnavailabilityReasons(0);
        sub_1DF4AAB30(&qword_1ECE37E40);
        v38 = v44;
        sub_1DF564FE4();
        (*(v45 + 8))(0, v38);
        (*(v49 + 8))(v19, v15);
        swift_unknownObjectRelease();
        v39 = 0;
        v40 = v55;
        goto LABEL_18;
      }
    }

    (*(v49 + 8))(v30, v15);
LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v50);
}

unint64_t sub_1DF522FE0()
{
  result = qword_1ECE381C8;
  if (!qword_1ECE381C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE381C8);
  }

  return result;
}

unint64_t sub_1DF523034()
{
  result = qword_1ECE381D0;
  if (!qword_1ECE381D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE381D0);
  }

  return result;
}

unint64_t sub_1DF523088()
{
  result = qword_1ECE381D8;
  if (!qword_1ECE381D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE381D8);
  }

  return result;
}

unint64_t sub_1DF5230DC()
{
  result = qword_1ECE381E0;
  if (!qword_1ECE381E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE381E0);
  }

  return result;
}

unint64_t sub_1DF523134()
{
  result = qword_1ECE38208;
  if (!qword_1ECE38208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38208);
  }

  return result;
}

unint64_t sub_1DF5231DC()
{
  result = qword_1ECE38210;
  if (!qword_1ECE38210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38210);
  }

  return result;
}

unint64_t sub_1DF523234()
{
  result = qword_1ECE38218;
  if (!qword_1ECE38218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38218);
  }

  return result;
}

unint64_t sub_1DF52328C()
{
  result = qword_1ECE38220;
  if (!qword_1ECE38220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38220);
  }

  return result;
}

unint64_t sub_1DF5232E4()
{
  result = qword_1ECE38228;
  if (!qword_1ECE38228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38228);
  }

  return result;
}

unint64_t sub_1DF52333C()
{
  result = qword_1ECE38230;
  if (!qword_1ECE38230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38230);
  }

  return result;
}

unint64_t sub_1DF523394()
{
  result = qword_1ECE38238;
  if (!qword_1ECE38238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38238);
  }

  return result;
}

unint64_t sub_1DF5233EC()
{
  result = qword_1ECE38240;
  if (!qword_1ECE38240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38240);
  }

  return result;
}

unint64_t sub_1DF523444()
{
  result = qword_1ECE38248;
  if (!qword_1ECE38248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38248);
  }

  return result;
}

unint64_t sub_1DF52349C()
{
  result = qword_1ECE38250;
  if (!qword_1ECE38250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38250);
  }

  return result;
}

unint64_t sub_1DF5234F4()
{
  result = qword_1ECE38258;
  if (!qword_1ECE38258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38258);
  }

  return result;
}

uint64_t sub_1DF523548(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DF523568, 0, 0);
}

uint64_t sub_1DF523568()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DF523684;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38278, &unk_1DF56C350);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DF523888;
  v0[13] = &block_descriptor_8;
  v0[14] = v2;
  [v1 configurationWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DF523684()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_1DF52381C;
  }

  else
  {
    v3 = sub_1DF523794;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF523794()
{
  v1 = v0[18];
  v2 = v0[19];
  v2[3] = sub_1DF4BECB0(0, &qword_1ECE38280, 0x1E698B9C0);
  v2[4] = &off_1F5A86E70;
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DF52381C()
{
  v1 = *(v0 + 168);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 168);

  return v2();
}

uint64_t sub_1DF523888(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1DF523960(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF48D4B0;

  return sub_1DF523548(a1);
}

uint64_t sub_1DF5239FC()
{
  v1 = *v0;
  v2 = sub_1DF564914();
  v3 = [v1 _urlStringForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1DF564944();

  return v4;
}

uint64_t sub_1DF523AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1DF4A4248;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1DF523C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DF48D4B0;

  return v11(a1, a2, a3);
}

uint64_t sub_1DF523DA0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  sub_1DF47E4CC(v1 + 32, &v5, &qword_1ECE38370, &qword_1DF569E50);
  if (v6)
  {
    return sub_1DF47E390(&v5, a1);
  }

  sub_1DF47E5B4(&v5, &qword_1ECE38370, &qword_1DF569E50);
  v4 = [objc_opt_self() sharedServerWithNoUrlCache];
  a1[3] = sub_1DF4BECB0(0, &qword_1ED9551B8, 0x1E698B968);
  a1[4] = &off_1F5A86F58;
  *a1 = v4;
  sub_1DF47FCEC(a1, &v5);
  swift_beginAccess();
  sub_1DF526358(&v5, v1 + 32, &qword_1ECE38370, &qword_1DF569E50);
  return swift_endAccess();
}

uint64_t sub_1DF523EC8(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF523EEC, 0, 0);
}

uint64_t sub_1DF523EEC()
{
  v1 = v0[30];
  v0[31] = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[32] = v2;
  ObjectType = swift_getObjectType();
  v0[33] = ObjectType;
  v4 = *(v2 + 24);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[34] = v6;
  *v6 = v0;
  v6[1] = sub_1DF524028;
  v8 = v0[28];
  v7 = v0[29];

  return v10(v8, v7, ObjectType, v2);
}

uint64_t sub_1DF524028(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 272);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 280) = a2;
    *(v6 + 288) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF524184, 0, 0);
  }
}

uint64_t sub_1DF524184()
{
  if (v0[35])
  {
    v1 = v0[36];
LABEL_3:
    v2 = v0[1];

    return v2(v1);
  }

  v4 = v0[30];
  swift_beginAccess();
  sub_1DF47E4CC(v4 + 72, (v0 + 2), &qword_1ECE381A0, &unk_1DF56C320);
  v5 = v0[5];
  sub_1DF47E5B4((v0 + 2), &qword_1ECE381A0, &unk_1DF56C320);
  if (v5)
  {
    v6 = v0[30];
    if (*(v6 + 96))
    {
      v7 = v0[28];
      v8 = v0[29];
      sub_1DF47FCEC(v6 + 72, (v0 + 17));
      v9 = v0[20];
      v10 = v0[21];
      __swift_project_boxed_opaque_existential_0(v0 + 17, v9);
      v11 = (*(v10 + 8))(v7, v8, v9, v10);
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_0(v0 + 17);
      if (v13)
      {
        v14 = v0[31];
        (*(v0[32] + 32))(v11, v13, v0[28], v0[29], v0[33]);
        v1 = v11;
        goto LABEL_3;
      }
    }

    sub_1DF498474();
    swift_allocError();
    *v15 = 5;
    swift_willThrow();
    v16 = v0[1];

    return v16();
  }

  else
  {
    v17 = v0[30];
    sub_1DF523DA0(v0 + 12);
    v18 = v0[15];
    v19 = v0[16];
    __swift_project_boxed_opaque_existential_0(v0 + 12, v18);
    v20 = *(v19 + 8);
    v23 = (v20 + *v20);
    v21 = v20[1];
    v22 = swift_task_alloc();
    v0[37] = v22;
    *v22 = v0;
    v22[1] = sub_1DF524468;

    return (v23)(v0 + 7, v18, v19);
  }
}

uint64_t sub_1DF524468()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_1DF524730;
  }

  else
  {
    v3 = sub_1DF52457C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF52457C()
{
  v1 = v0[30];
  swift_beginAccess();
  sub_1DF526358((v0 + 7), v1 + 72, &qword_1ECE381A0, &unk_1DF56C320);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v2 = v0[30];
  if (!*(v2 + 96))
  {
    goto LABEL_6;
  }

  v3 = v0[28];
  v4 = v0[29];
  sub_1DF47FCEC(v2 + 72, (v0 + 17));
  v5 = v0[20];
  v6 = v0[21];
  __swift_project_boxed_opaque_existential_0(v0 + 17, v5);
  v7 = (*(v6 + 8))(v3, v4, v5, v6);
  v9 = v8;
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  if (v9)
  {
    v10 = v0[31];
    (*(v0[32] + 32))(v7, v9, v0[28], v0[29], v0[33]);
    v11 = v0[1];

    return v11(v7, v9);
  }

  else
  {
LABEL_6:
    sub_1DF498474();
    swift_allocError();
    *v13 = 5;
    swift_willThrow();
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1DF524730()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v0[38];
  v2 = v0[1];

  return v2();
}

uint64_t sub_1DF524794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  return (*(v8 + 16))(a1, a2, a3, ObjectType, v8);
}

uint64_t sub_1DF524804(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF527BE0;

  return sub_1DF523EC8(a1, a2);
}

uint64_t sub_1DF5248A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  ObjectType = swift_getObjectType();
  return (*(v10 + 32))(a1, a2, a3, a4, ObjectType, v10);
}

uint64_t sub_1DF524928()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v2 + 40))(ObjectType, v2);
}

uint64_t sub_1DF524974(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v4 + 48))(a1, ObjectType, v4);
}

uint64_t sub_1DF5249CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v2 + 64))(ObjectType, v2) & 1;
}

uint64_t sub_1DF524A1C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v4 + 72))(a1, ObjectType, v4);
}

uint64_t sub_1DF524A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a4;
  v23 = a1;
  v24 = a2;
  v25 = a3;
  v10 = sub_1DF5642D4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1DF5642C4();
  sub_1DF526510();
  v13 = sub_1DF5642B4();
  v15 = v14;

  if (!v7)
  {
    sub_1DF47E4CC(v6 + 16, v20, &qword_1ECE37CE0, &qword_1DF568B40);
    v17 = v21;
    if (v21)
    {
      v18 = v22;
      __swift_project_boxed_opaque_existential_0(v20, v21);
      v19[3] = MEMORY[0x1E6969080];
      v19[0] = v13;
      v19[1] = v15;
      v27 = *(v18 + 8);
      sub_1DF4AD474(v13, v15);
      v27(v19, a5, a6, v17, v18);
      sub_1DF48C308(v13, v15);
      sub_1DF47E5B4(v19, &qword_1ECE378F0, &qword_1DF5686F0);
      return __swift_destroy_boxed_opaque_existential_0(v20);
    }

    else
    {
      sub_1DF48C308(v13, v15);
      return sub_1DF47E5B4(v20, &qword_1ECE37CE0, &qword_1DF568B40);
    }
  }

  return result;
}

uint64_t sub_1DF524C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1DF5642D4();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1DF5642C4();
  type metadata accessor for NextRefreshCacheBox();
  sub_1DF52772C(&qword_1ECE37690, type metadata accessor for NextRefreshCacheBox);
  v10 = sub_1DF5642B4();
  v12 = v11;

  if (!v4)
  {
    sub_1DF47E4CC(v3 + 16, v17, &qword_1ECE37CE0, &qword_1DF568B40);
    v14 = v18;
    if (v18)
    {
      v15 = v19;
      __swift_project_boxed_opaque_existential_0(v17, v18);
      v16[3] = MEMORY[0x1E6969080];
      v16[0] = v10;
      v16[1] = v12;
      v20 = *(v15 + 8);
      sub_1DF4AD474(v10, v12);
      v20(v16, a2, a3, v14, v15);
      sub_1DF48C308(v10, v12);
      sub_1DF47E5B4(v16, &qword_1ECE378F0, &qword_1DF5686F0);
      return __swift_destroy_boxed_opaque_existential_0(v17);
    }

    else
    {
      sub_1DF48C308(v10, v12);
      return sub_1DF47E5B4(v17, &qword_1ECE37CE0, &qword_1DF568B40);
    }
  }

  return result;
}

uint64_t sub_1DF524DC0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a3;
  v22 = a1;
  v23 = a2;
  v9 = sub_1DF5642D4();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1DF5642C4();
  sub_1DF5264BC();
  v12 = sub_1DF5642B4();
  v14 = v13;

  if (!v6)
  {
    sub_1DF47E4CC(v5 + 16, v19, &qword_1ECE37CE0, &qword_1DF568B40);
    v16 = v20;
    if (v20)
    {
      v17 = v21;
      __swift_project_boxed_opaque_existential_0(v19, v20);
      v18[3] = MEMORY[0x1E6969080];
      v18[0] = v12;
      v18[1] = v14;
      v25 = *(v17 + 8);
      sub_1DF4AD474(v12, v14);
      v25(v18, a4, a5, v16, v17);
      sub_1DF48C308(v12, v14);
      sub_1DF47E5B4(v18, &qword_1ECE378F0, &qword_1DF5686F0);
      return __swift_destroy_boxed_opaque_existential_0(v19);
    }

    else
    {
      sub_1DF48C308(v12, v14);
      return sub_1DF47E5B4(v19, &qword_1ECE37CE0, &qword_1DF568B40);
    }
  }

  return result;
}

uint64_t sub_1DF524F4C(char a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v7 = sub_1DF5642D4();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1DF5642C4();
  sub_1DF5263C0();
  v10 = sub_1DF5642B4();
  v12 = v11;

  if (!v4)
  {
    sub_1DF47E4CC(v3 + 16, v18, &qword_1ECE37CE0, &qword_1DF568B40);
    v14 = v19;
    if (v19)
    {
      v15 = v20;
      __swift_project_boxed_opaque_existential_0(v18, v19);
      v17[3] = MEMORY[0x1E6969080];
      v17[0] = v10;
      v17[1] = v12;
      v16 = *(v15 + 8);
      sub_1DF4AD474(v10, v12);
      v16(v17, a2, a3, v14, v15);
      sub_1DF48C308(v10, v12);
      sub_1DF47E5B4(v17, &qword_1ECE378F0, &qword_1DF5686F0);
      return __swift_destroy_boxed_opaque_existential_0(v18);
    }

    else
    {
      sub_1DF48C308(v10, v12);
      return sub_1DF47E5B4(v18, &qword_1ECE37CE0, &qword_1DF568B40);
    }
  }

  return result;
}

uint64_t sub_1DF5250D4(uint64_t a1, uint64_t a2)
{
  sub_1DF47E4CC(v2 + 16, v15, &qword_1ECE37CE0, &qword_1DF568B40);
  v6 = v16;
  if (!v16)
  {
    sub_1DF47E5B4(v15, &qword_1ECE37CE0, &qword_1DF568B40);
    return 0;
  }

  v7 = v17;
  __swift_project_boxed_opaque_existential_0(v15, v16);
  v8 = (*(v7 + 32))(a1, a2, v6, v7);
  v10 = v9;
  __swift_destroy_boxed_opaque_existential_0(v15);
  if (v10 >> 60 == 15)
  {
    return 0;
  }

  v11 = sub_1DF5642A4();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1DF564294();
  sub_1DF526468();
  sub_1DF564284();
  if (v3)
  {

    return sub_1DF48C2F4(v8, v10);
  }

  else
  {
    sub_1DF48C2F4(v8, v10);

    return v18;
  }
}

uint64_t sub_1DF52523C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  RefreshCacheBox = type metadata accessor for NextRefreshCacheBox();
  v7 = *(*(RefreshCacheBox - 8) + 64);
  MEMORY[0x1EEE9AC00](RefreshCacheBox - 8);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v22 - v12;
  v14 = sub_1DF564494();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF47E4CC(a1, v13, &qword_1ECE37A10, &qword_1DF567C00);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1DF47E5B4(v13, &qword_1ECE37A10, &qword_1DF567C00);
    sub_1DF47E4CC(v22[1] + 16, v23, &qword_1ECE37CE0, &qword_1DF568B40);
    v19 = v24;
    if (v24)
    {
      v20 = v25;
      __swift_project_boxed_opaque_existential_0(v23, v24);
      (*(v20 + 16))(a2, a3, v19, v20);
      return __swift_destroy_boxed_opaque_existential_0(v23);
    }

    else
    {
      return sub_1DF47E5B4(v23, &qword_1ECE37CE0, &qword_1DF568B40);
    }
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    (*(v15 + 16))(v9, v18, v14);
    sub_1DF524C00(v9, a2, a3);
    sub_1DF5265FC(v9);
    return (*(v15 + 8))(v18, v14);
  }
}

uint64_t sub_1DF525508(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF52552C, 0, 0);
}

uint64_t sub_1DF52552C()
{
  v1 = v0[13];
  sub_1DF47E4CC(v1 + 16, (v0 + 2), &qword_1ECE37CE0, &qword_1DF568B40);
  v2 = v0[5];
  if (!v2)
  {
    goto LABEL_10;
  }

  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v6 = (*(v5 + 32))(v4, v3, v2, v5);
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v8 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v9 = sub_1DF5642A4();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1DF564294();
  sub_1DF5265A8();
  sub_1DF564284();
  sub_1DF48C2F4(v6, v8);

  v12 = v0[8];
  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = v0[7];
  v14 = v0[13];
  if (*(v14 + 56) == v0[9] && v0[10] == *(v14 + 64) || (v15 = v0[9], v16 = v0[10], (sub_1DF5650D4() & 1) != 0))
  {

    v17 = v12;
    v18 = v13;
    goto LABEL_12;
  }

  sub_1DF526564(v13, v12);
  sub_1DF47E4CC(v1 + 16, (v0 + 2), &qword_1ECE37CE0, &qword_1DF568B40);
  v19 = v0[5];
  if (v19)
  {
    v21 = v0[11];
    v20 = v0[12];
    v22 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    (*(v22 + 16))(v21, v20, v19, v22);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  else
  {
LABEL_10:
    sub_1DF47E5B4((v0 + 2), &qword_1ECE37CE0, &qword_1DF568B40);
  }

LABEL_11:
  v18 = 0;
  v17 = 0;
LABEL_12:
  v23 = v0[1];

  return v23(v18, v17);
}

uint64_t sub_1DF525790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v10 = *(v4 + 56);
    v9 = *(v4 + 64);

    sub_1DF524A74(a1, a2, v10, v9, a3, a4);
  }

  else
  {
    sub_1DF47E4CC(v4 + 16, v14, &qword_1ECE37CE0, &qword_1DF568B40);
    v12 = v15;
    if (v15)
    {
      v13 = v16;
      __swift_project_boxed_opaque_existential_0(v14, v15);
      (*(v13 + 16))(a3, a4, v12, v13);
      return __swift_destroy_boxed_opaque_existential_0(v14);
    }

    else
    {
      return sub_1DF47E5B4(v14, &qword_1ECE37CE0, &qword_1DF568B40);
    }
  }
}

uint64_t sub_1DF5258D8(char a1)
{
  if (a1 == 2)
  {
    sub_1DF47E4CC(v1 + 16, v8, &qword_1ECE37CE0, &qword_1DF568B40);
    v2 = v9;
    if (v9)
    {
      v3 = v10;
      __swift_project_boxed_opaque_existential_0(v8, v9);
      (*(v3 + 16))(0xD000000000000012, 0x80000001DF5728E0, v2, v3);
      return __swift_destroy_boxed_opaque_existential_0(v8);
    }

    else
    {
      return sub_1DF47E5B4(v8, &qword_1ECE37CE0, &qword_1DF568B40);
    }
  }

  else
  {
    sub_1DF47E4CC(v1 + 16, v8, &qword_1ECE37CE0, &qword_1DF568B40);
    v6 = v9;
    if (v9)
    {
      v7 = v10;
      __swift_project_boxed_opaque_existential_0(v8, v9);
      (*(v7 + 16))(0xD000000000000019, 0x80000001DF574990, v6, v7);
      __swift_destroy_boxed_opaque_existential_0(v8);
    }

    else
    {
      sub_1DF47E5B4(v8, &qword_1ECE37CE0, &qword_1DF568B40);
    }

    return sub_1DF524DC0(a1 & 1, *(v1 + 56), *(v1 + 64), 0xD000000000000012, 0x80000001DF5728E0);
  }
}

uint64_t sub_1DF525A84()
{
  sub_1DF47E4CC(v0 + 16, v14, &qword_1ECE37CE0, &qword_1DF568B40);
  v1 = v15;
  if (v15)
  {
    v2 = v16;
    __swift_project_boxed_opaque_existential_0(v14, v15);
    v3 = (*(v2 + 32))(0xD000000000000019, 0x80000001DF574990, v1, v2);
    v5 = v4;
    __swift_destroy_boxed_opaque_existential_0(v14);
    if (v5 >> 60 != 15)
    {
      v6 = sub_1DF5642A4();
      v7 = *(v6 + 48);
      v8 = *(v6 + 52);
      swift_allocObject();
      sub_1DF564294();
      sub_1DF526414();
      sub_1DF564284();
      sub_1DF48C2F4(v3, v5);

      if (v17 != 2 && (v17 & 1) != 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    sub_1DF47E5B4(v14, &qword_1ECE37CE0, &qword_1DF568B40);
  }

  sub_1DF5250D4(0xD000000000000012, 0x80000001DF5728E0);
  if (!v10)
  {
LABEL_6:
    v11 = 1;
    return v11 & 1;
  }

  if (v9 == *(v0 + 56) && v10 == *(v0 + 64))
  {

    v11 = 0;
  }

  else
  {
    v13 = sub_1DF5650D4();

    v11 = v13 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_1DF525C88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1DF564494();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE382C8, &qword_1DF56C590);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  RefreshCacheBox = type metadata accessor for NextRefreshCacheBox();
  v12 = *(*(RefreshCacheBox - 8) + 64);
  MEMORY[0x1EEE9AC00](RefreshCacheBox - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF5276D8();
  sub_1DF565284();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_1DF52772C(&qword_1ED955C88, MEMORY[0x1E6969530]);
    sub_1DF564FE4();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_1DF526658(v14, v17);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1DF525F10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE382A0, &qword_1DF56C570);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF52744C();
  sub_1DF5652A4();
  v15 = 0;
  sub_1DF565064();
  if (!v4)
  {
    v14 = 1;
    sub_1DF565054();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DF5260A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE382A8, &qword_1DF56C578);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF5274A0();
  sub_1DF5652A4();
  v16 = 0;
  sub_1DF565054();
  if (!v5)
  {
    v15 = 1;
    sub_1DF565054();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1DF52623C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF4984C8;

  return sub_1DF525508(a1, a2);
}

uint64_t sub_1DF526358(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_1DF5263C0()
{
  result = qword_1ED954B40;
  if (!qword_1ED954B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954B40);
  }

  return result;
}

unint64_t sub_1DF526414()
{
  result = qword_1ED954B38;
  if (!qword_1ED954B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954B38);
  }

  return result;
}

unint64_t sub_1DF526468()
{
  result = qword_1ED9550F0;
  if (!qword_1ED9550F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9550F0);
  }

  return result;
}

unint64_t sub_1DF5264BC()
{
  result = qword_1ED954C90;
  if (!qword_1ED954C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954C90);
  }

  return result;
}

unint64_t sub_1DF526510()
{
  result = qword_1ECE38260;
  if (!qword_1ECE38260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38260);
  }

  return result;
}

uint64_t sub_1DF526564(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1DF5265A8()
{
  result = qword_1ECE38268;
  if (!qword_1ECE38268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38268);
  }

  return result;
}

uint64_t sub_1DF5265FC(uint64_t a1)
{
  RefreshCacheBox = type metadata accessor for NextRefreshCacheBox();
  (*(*(RefreshCacheBox - 8) + 8))(a1, RefreshCacheBox);
  return a1;
}

uint64_t sub_1DF526658(uint64_t a1, uint64_t a2)
{
  RefreshCacheBox = type metadata accessor for NextRefreshCacheBox();
  (*(*(RefreshCacheBox - 8) + 32))(a2, a1, RefreshCacheBox);
  return a2;
}

uint64_t sub_1DF5266E4()
{
  result = sub_1DF564494();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DF526760(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF5267A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DF526828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726665527478656ELL && a2 == 0xEB00000000687365)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF5650D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF5268B4(uint64_t a1)
{
  v2 = sub_1DF5276D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF5268F0(uint64_t a1)
{
  v2 = sub_1DF5276D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}
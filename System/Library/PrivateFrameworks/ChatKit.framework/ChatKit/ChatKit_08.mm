uint64_t sub_190854FCC(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v40 = sub_190D53DD0();
  v8 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54810);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - v13;
  v15 = sub_190D53ED0();
  (*(*(v15 - 8) + 16))(v14, a1, v15);
  v16 = *(v12 + 44);
  sub_1908553A8(&qword_1EAD54818);
  sub_190D574F0();
  sub_190D57530();
  if (*&v14[v16] != v42[0])
  {
    v37 = (v8 + 8);
    v38 = (v8 + 16);
    v35 = v4 + 4;
    v36 = v4 + 2;
    v39 = v16;
    do
    {
      v19 = sub_190D57560();
      v20 = v40;
      (*v38)(v10);
      v19(v42, 0);
      sub_190D57540();
      sub_190D543A0();
      LOBYTE(v42[0]) = v21 & 1;
      v41 = v22 & 1;
      sub_190D53DB0();
      v24 = v23;
      v26 = v25;
      sub_190D543A0();
      v28 = v27;
      v30 = v29;
      sub_190D56660();
      LOBYTE(v42[0]) = v28 & 1;
      v41 = v30 & 1;
      sub_190D53DC0();
      (*v37)(v10, v20);
      v31 = v36;
      if (*(v4 + 24) != 1 || (v32 = 0.0, v31 = v4, (v4[1] & 1) == 0))
      {
        v32 = *v31;
      }

      v33 = v35;
      if (*(v4 + 40) != 1 || (v18 = 0.0, v33 = v4, (v4[1] & 1) == 0))
      {
        v18 = *v33;
      }

      a2 = a2 + v24 + v32;
      a3 = a3 + v26 + v18;
      sub_190D57530();
    }

    while (*&v14[v39] != v42[0]);
  }

  return sub_190855340(v14);
}

uint64_t sub_190855340(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1908553A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_190D53ED0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1908553EC()
{
  v1 = [v0 chat];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 isSMS];

    v4 = v3 ^ 1;
  }

  else
  {
    v4 = 1;
  }

  v5 = [v0 isBusinessConversation];
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    v8 = [result disableLocationSharing];

    if (v8)
    {
      return 0;
    }

    else
    {
      return (v4 & (v5 ^ 1));
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1908554B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_190DD55F0;
  *(v1 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
  v2 = sub_190D57160();

  v3 = [v0 conversationVisualIdentityWithKeys:v2 requestedNumberOfContactsToFetch:{objc_msgSend(v0, sel_recipientCount)}];

  v4 = [v3 groupName];
  if (v4)
  {
    v5 = v4;
    v6 = sub_190D56F10();
  }

  else
  {

    return 0;
  }

  return v6;
}

void *sub_19085562C()
{
  v1 = OBJC_IVAR___CKConversationListTipManagerSwift_miniTipUIView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1908556D8(uint64_t a1)
{
  v3 = OBJC_IVAR___CKConversationListTipManagerSwift_miniTipUIView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_190855730(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKConversationListTipManagerSwift_miniTipUIView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_1908557F0()
{
  v1 = OBJC_IVAR___CKConversationListTipManagerSwift_presentedTip;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190855888(uint64_t a1)
{
  v3 = OBJC_IVAR___CKConversationListTipManagerSwift_presentedTip;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t static CKConversationListTipManagerSwift.personalizedText.getter()
{
  swift_beginAccess();
  v0 = qword_1EAD45448;
  sub_190D52690();
  return v0;
}

uint64_t static CKConversationListTipManagerSwift.personalizedText.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  qword_1EAD45448 = a1;
  qword_1EAD45450 = a2;
}

uint64_t sub_190855A40(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EAD45448 = v2;
  qword_1EAD45450 = v1;
  sub_190D52690();
}

id CKConversationListTipManagerSwift.__allocating_init(conversationListController:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_190220610();

  return v4;
}

id CKConversationListTipManagerSwift.init(conversationListController:)(void *a1)
{
  v2 = sub_190220610();

  return v2;
}

uint64_t sub_190855B14()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_190855C08()
{
  v2 = *v1;

  if (v0)
  {
    v3 = sub_19085C138;
  }

  else
  {
    (*(v2 + 288))();
    v3 = sub_190855D30;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_190855D30()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_19022EEA4(v3, &qword_1EAD54880);

    return MEMORY[0x1EEE6DFA0](sub_19085C12C, 0, 0);
  }

  else
  {
    (*(v2 + 32))(v0[21], v3, v1);
    v4 = sub_190D58480();
    v0[38] = v5;
    v9 = (v4 + *v4);
    v6 = swift_task_alloc();
    v0[39] = v6;
    *v6 = v0;
    v6[1] = sub_190855EEC;
    v7 = v0[21];

    return (v9)(v0 + 41, v7);
  }
}

uint64_t sub_190855EEC()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 152);

  (*(v3 + 8))(v2, v4);
  *(v1 + 329) = *(v1 + 328);

  return MEMORY[0x1EEE6DFA0](sub_190856070, 0, 0);
}

uint64_t sub_19085608C()
{
  v1 = *(v0 + 329);
  sub_190D572A0();
  *(v0 + 320) = sub_190D57290();
  v3 = sub_190D57240();
  if (v1 == 1)
  {
    v4 = sub_190856140;
  }

  else
  {
    v4 = sub_1908561B4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_190856140()
{

  sub_19085A2A4(1);

  return MEMORY[0x1EEE6DFA0](sub_190233B94, 0, 0);
}

uint64_t sub_1908561B4()
{
  v1 = v0[32];
  v2 = v0[33];

  if (*(v1 + v2) == 1)
  {
    v3 = *(v0[32] + v0[34]);
    if (v3)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        v6 = v0[34];
        v7 = v0[32];
        *(v7 + v0[33]) = 0;
        *(v7 + v6) = 0;

        [v5 siriTipUpdated];
      }
    }
  }

  return MEMORY[0x1EEE6DFA0](sub_190233B94, 0, 0);
}

uint64_t sub_190856278()
{
  v2 = *v1;

  if (v0)
  {
    v3 = sub_19085655C;
  }

  else
  {
    (*(v2 + 288))();
    v3 = sub_1908563A0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1908563A0()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_19022EEA4(v3, &qword_1EAD54880);

    return MEMORY[0x1EEE6DFA0](sub_1908567C8, 0, 0);
  }

  else
  {
    (*(v2 + 32))(v0[21], v3, v1);
    v4 = sub_190D58480();
    v0[38] = v5;
    v9 = (v4 + *v4);
    v6 = swift_task_alloc();
    v0[39] = v6;
    *v6 = v0;
    v6[1] = sub_190856574;
    v7 = v0[21];

    return (v9)(v0 + 41, v7);
  }
}

uint64_t sub_190856574()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 152);

  (*(v3 + 8))(v2, v4);
  *(v1 + 329) = *(v1 + 328);

  return MEMORY[0x1EEE6DFA0](sub_1908566F8, 0, 0);
}

uint64_t sub_190856714()
{
  v1 = *(v0 + 329);
  sub_190D572A0();
  *(v0 + 320) = sub_190D57290();
  v3 = sub_190D57240();
  if (v1 == 1)
  {
    v4 = sub_190856898;
  }

  else
  {
    v4 = sub_19085690C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1908567C8()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_190856898()
{

  sub_19085A2A4(2);

  return MEMORY[0x1EEE6DFA0](sub_190233688, 0, 0);
}

uint64_t sub_19085690C()
{
  v1 = v0[32];
  v2 = v0[33];

  if (*(v1 + v2) == 2)
  {
    v3 = *(v0[32] + v0[34]);
    if (v3)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        v6 = v0[34];
        v7 = v0[32];
        *(v7 + v0[33]) = 0;
        *(v7 + v6) = 0;

        [v5 pinningTipUpdated];
      }
    }
  }

  return MEMORY[0x1EEE6DFA0](sub_190233688, 0, 0);
}

uint64_t sub_1908569D0()
{
  v2 = *v1;

  if (v0)
  {
    v3 = sub_190856CB4;
  }

  else
  {
    (*(v2 + 296))();
    v3 = sub_190856AF8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_190856AF8()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_19022EEA4(v3, &qword_1EAD54880);

    return MEMORY[0x1EEE6DFA0](sub_190856F20, 0, 0);
  }

  else
  {
    (*(v2 + 32))(v0[22], v3, v1);
    v4 = sub_190D58480();
    v0[39] = v5;
    v9 = (v4 + *v4);
    v6 = swift_task_alloc();
    v0[40] = v6;
    *v6 = v0;
    v6[1] = sub_190856CCC;
    v7 = v0[22];

    return (v9)(v0 + 42, v7);
  }
}

uint64_t sub_190856CCC()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 160);

  (*(v3 + 8))(v2, v4);
  *(v1 + 337) = *(v1 + 336);

  return MEMORY[0x1EEE6DFA0](sub_190856E50, 0, 0);
}

uint64_t sub_190856E6C()
{
  v1 = *(v0 + 337);
  sub_190D572A0();
  *(v0 + 328) = sub_190D57290();
  v3 = sub_190D57240();
  if (v1 == 1)
  {
    v4 = sub_190856FF0;
  }

  else
  {
    v4 = sub_190857064;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_190856F20()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_190856FF0()
{

  sub_19085A2A4(4);

  return MEMORY[0x1EEE6DFA0](sub_190235084, 0, 0);
}

uint64_t sub_190857064()
{
  v1 = v0[33];
  v2 = v0[34];

  if (*(v1 + v2) == 4)
  {
    v3 = *(v0[33] + v0[35]);
    if (v3)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        v6 = v0[35];
        v7 = v0[33];
        *(v7 + v0[34]) = 0;
        *(v7 + v6) = 0;

        [v5 ktFailureTipUpdated];
      }
    }
  }

  return MEMORY[0x1EEE6DFA0](sub_190235084, 0, 0);
}

uint64_t sub_190857128()
{
  v2 = *v1;

  if (v0)
  {
    v3 = sub_19085C13C;
  }

  else
  {
    (*(v2 + 296))();
    v3 = sub_190857250;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_190857250()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_19022EEA4(v3, &qword_1EAD54880);

    return MEMORY[0x1EEE6DFA0](sub_19085C130, 0, 0);
  }

  else
  {
    (*(v2 + 32))(v0[22], v3, v1);
    v4 = sub_190D58480();
    v0[39] = v5;
    v9 = (v4 + *v4);
    v6 = swift_task_alloc();
    v0[40] = v6;
    *v6 = v0;
    v6[1] = sub_19085740C;
    v7 = v0[22];

    return (v9)(v0 + 42, v7);
  }
}

uint64_t sub_19085740C()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 160);

  (*(v3 + 8))(v2, v4);
  *(v1 + 337) = *(v1 + 336);

  return MEMORY[0x1EEE6DFA0](sub_190857590, 0, 0);
}

uint64_t sub_1908575AC()
{
  v1 = *(v0 + 337);
  sub_190D572A0();
  *(v0 + 328) = sub_190D57290();
  v3 = sub_190D57240();
  if (v1 == 1)
  {
    v4 = sub_190857660;
  }

  else
  {
    v4 = sub_1908576D4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_190857660()
{

  sub_19085A2A4(5);

  return MEMORY[0x1EEE6DFA0](sub_190234F90, 0, 0);
}

uint64_t sub_1908576D4()
{
  v1 = v0[33];
  v2 = v0[34];

  if (*(v1 + v2) == 5)
  {
    v3 = *(v0[33] + v0[35]);
    if (v3)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        v6 = v0[35];
        v7 = v0[33];
        *(v7 + v0[34]) = 0;
        *(v7 + v6) = 0;

        [v5 ktFailureTipUpdated];
      }
    }
  }

  return MEMORY[0x1EEE6DFA0](sub_190234F90, 0, 0);
}

uint64_t sub_190857798()
{
  v2 = *v1;

  if (v0)
  {
    v3 = sub_19085C13C;
  }

  else
  {
    (*(v2 + 296))();
    v3 = sub_1908578C0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1908578C0()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_19022EEA4(v3, &qword_1EAD54880);

    return MEMORY[0x1EEE6DFA0](sub_19085C130, 0, 0);
  }

  else
  {
    (*(v2 + 32))(v0[22], v3, v1);
    v4 = sub_190D58480();
    v0[39] = v5;
    v9 = (v4 + *v4);
    v6 = swift_task_alloc();
    v0[40] = v6;
    *v6 = v0;
    v6[1] = sub_190857A7C;
    v7 = v0[22];

    return (v9)(v0 + 42, v7);
  }
}

uint64_t sub_190857A7C()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 160);

  (*(v3 + 8))(v2, v4);
  *(v1 + 337) = *(v1 + 336);

  return MEMORY[0x1EEE6DFA0](sub_190857C00, 0, 0);
}

uint64_t sub_190857C1C()
{
  v1 = *(v0 + 337);
  sub_190D572A0();
  *(v0 + 328) = sub_190D57290();
  v3 = sub_190D57240();
  if (v1 == 1)
  {
    v4 = sub_190857CD0;
  }

  else
  {
    v4 = sub_190857D44;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_190857CD0()
{

  sub_19085A2A4(3);

  return MEMORY[0x1EEE6DFA0](sub_190233930, 0, 0);
}

uint64_t sub_190857D44()
{
  v1 = v0[33];
  v2 = v0[34];

  if (*(v1 + v2) == 3)
  {
    v3 = *(v0[33] + v0[35]);
    if (v3)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        v6 = v0[35];
        v7 = v0[33];
        *(v7 + v0[34]) = 0;
        *(v7 + v6) = 0;

        [v5 micCloudTipUpdated];
      }
    }
  }

  return MEMORY[0x1EEE6DFA0](sub_190233930, 0, 0);
}

uint64_t sub_190857E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_19085B7E8(a3, v25 - v10);
  v12 = sub_190D572E0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_190D50920();
  if (v14 == 1)
  {
    sub_19022EEA4(v11, &qword_1EAD5BAF0);
  }

  else
  {
    sub_190D572D0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_190D57240();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_190D56F80() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_190D50920();
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

      sub_19022EEA4(a3, &qword_1EAD5BAF0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_19022EEA4(a3, &qword_1EAD5BAF0);
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

uint64_t sub_1908580F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_19085B7E8(a3, v25 - v10);
  v12 = sub_190D572E0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_190D50920();
  if (v14 == 1)
  {
    sub_19022EEA4(v11, &qword_1EAD5BAF0);
  }

  else
  {
    sub_190D572D0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_190D57240();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_190D56F80() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_190D50920();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54F50);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_19022EEA4(a3, &qword_1EAD5BAF0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_19022EEA4(a3, &qword_1EAD5BAF0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54F50);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1908583FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_19085B7E8(a3, v25 - v10);
  v12 = sub_190D572E0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_190D50920();
  if (v14 == 1)
  {
    sub_19022EEA4(v11, &qword_1EAD5BAF0);
  }

  else
  {
    sub_190D572D0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_190D57240();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_190D56F80() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_190D50920();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54870);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_19022EEA4(a3, &qword_1EAD5BAF0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_19022EEA4(a3, &qword_1EAD5BAF0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54870);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_190858700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_19085B7E8(a3, v25 - v10);
  v12 = sub_190D572E0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_190D50920();
  if (v14 == 1)
  {
    sub_19022EEA4(v11, &qword_1EAD5BAF0);
  }

  else
  {
    sub_190D572D0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_190D57240();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_190D56F80() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_190D50920();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54878);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_19022EEA4(a3, &qword_1EAD5BAF0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_19022EEA4(a3, &qword_1EAD5BAF0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54878);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_190858A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_19085B7E8(a3, v25 - v10);
  v12 = sub_190D572E0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_190D50920();
  if (v14 == 1)
  {
    sub_19022EEA4(v11, &qword_1EAD5BAF0);
  }

  else
  {
    sub_190D572D0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_190D57240();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_190D56F80() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_190D50920();
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

      sub_19022EEA4(a3, &qword_1EAD5BAF0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_19022EEA4(a3, &qword_1EAD5BAF0);
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

uint64_t sub_190858CEC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_190858E1C, 0, 0);
  }
}

uint64_t sub_190858E1C()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedPreferences];
  v3 = [v2 assistantIsEnabled];

  if (qword_1EAD45FA0 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E180);
  __swift_project_value_buffer(v4, qword_1EAD9D628);
  *(v0 + 72) = v3;
  swift_beginAccess();
  sub_190D53850();
  swift_endAccess();
  v5 = [v1 sharedPreferences];
  v6 = [v5 languageCode];

  if (v6)
  {
    v7 = sub_190D56F10();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [objc_opt_self() preferredLanguages];
  v11 = sub_190D57180();

  if (v11[2])
  {
    v13 = v11[4];
    v12 = v11[5];
    sub_190D52690();

    if (v9)
    {
      if (v12)
      {
        if (v7 == v13 && v9 == v12)
        {

          v14 = 1;
        }

        else
        {
          v14 = sub_190D58760();
        }

        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (v12)
    {
      v14 = 0;
      goto LABEL_18;
    }

LABEL_16:
    v14 = 1;
    goto LABEL_19;
  }

  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_13:
  v14 = 0;
LABEL_18:

LABEL_19:
  if (qword_1EAD45F98 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v4, qword_1EAD9D610);
  *(v0 + 73) = v14 & 1;
  swift_beginAccess();
  sub_190D53850();
  swift_endAccess();
  [CKConversationListTipManagerSwift updateKtTipRules]_0();
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1908590EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_19085B7E8(a3, v22 - v9);
  v11 = sub_190D572E0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);
  sub_190D50920();
  if (v13 == 1)
  {
    sub_19022EEA4(v10, &qword_1EAD5BAF0);
  }

  else
  {
    sub_190D572D0();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_190D57240();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_190D56F80() + 32;
      sub_190D50920();
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_19022EEA4(a3, &qword_1EAD5BAF0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_19022EEA4(a3, &qword_1EAD5BAF0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_190859390(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC7ChatKit20CKCloudTipDescriptor_tipType);
  v3 = sub_190B52E28(v2);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = [v4 iCloudBackupEnabledSystemWide];
    v6 = [v4 otherDevicesCount];
    v7 = 2;
    if (v6 > 0)
    {
      v7 = 3;
    }

    if (v5)
    {
      v8 = v7;
    }

    else
    {
      v8 = 1;
    }

    v9 = sub_190232518();
    v10 = (v1 + OBJC_IVAR___CKConversationListTipManagerSwift____lazy_storage___cloudOnboardingMessageTip);
    *v10 = v9;
    v10[1] = v11;
    v10[2] = v8;
  }

  if (qword_1EAD462A0 != -1)
  {
    swift_once();
  }

  v12 = sub_190D53040();
  __swift_project_value_buffer(v12, qword_1EAD9D7F0);
  v13 = sub_190D53020();
  v14 = sub_190D57680();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = v2;
    _os_log_impl(&dword_19020E000, v13, v14, "Updating tip criteria %ld", v15, 0xCu);
    MEMORY[0x193AF7A40](v15, -1, -1);
  }

  v16 = sub_190D53020();
  v17 = sub_190D57680();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = v3;
    _os_log_impl(&dword_19020E000, v16, v17, "> wantsOnboardingTip=%{BOOL}d", v18, 8u);
    MEMORY[0x193AF7A40](v18, -1, -1);
  }

  if (qword_1EAD45800 != -1)
  {
    swift_once();
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E180);
  __swift_project_value_buffer(v19, qword_1EAD9D5C0);
  swift_beginAccess();
  sub_190D53850();
  return swift_endAccess();
}

uint64_t sub_190859678(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        sub_190231034();
        sub_1902341D4();
        v6 = objc_allocWithZone(sub_190D53600());
        v7 = sub_190D53610();
        MEMORY[0x193AEEE40](sub_19085A114, 0);
        v8 = objc_opt_self();
        v3 = v7;
        v9 = [v8 redColor];
      }

      else
      {
        if (a1 != 5)
        {
          goto LABEL_20;
        }

        sub_190231C20();
        sub_190234280();
        v14 = objc_allocWithZone(sub_190D53600());
        v15 = sub_190D53610();
        MEMORY[0x193AEEE40](sub_190859F84, 0);
        v16 = objc_opt_self();
        v3 = v15;
        v9 = [v16 redColor];
      }

      v17 = v9;
      [v3 setTintColor_];

      sub_190D535F0();
      return v3;
    }

    sub_190232518();
    sub_190232668();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = objc_allocWithZone(sub_190D53600());
    v3 = sub_190D53610();
    v11 = swift_allocObject();
    *(v11 + 16) = v2;
    v12 = v2;
    MEMORY[0x193AEEE40](sub_19085B918, v11);
    return v3;
  }

  switch(a1)
  {
    case 0:
      return v3;
    case 1:
      sub_19085B0D8();
      swift_beginAccess();
      v4 = qword_1EAD45448 & 0xFFFFFFFFFFFFLL;
      if ((qword_1EAD45450 & 0x2000000000000000) != 0)
      {
        v4 = HIBYTE(qword_1EAD45450) & 0xF;
      }

      if (!v4)
      {
        return 0;
      }

      sub_190231EC8();
      sub_190231EDC();
      v5 = objc_allocWithZone(sub_190D53600());
      return sub_190D53610();
    case 2:
      sub_190230C1C();
      sub_190230D6C();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = objc_allocWithZone(sub_190D53600());
      return sub_190D53610();
  }

LABEL_20:
  result = sub_190D58790();
  __break(1u);
  return result;
}

void sub_190859A94()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    [v2 pinningTipActionTapped];
  }
}

id sub_190859B0C()
{
  if (qword_1EAD462A0 != -1)
  {
    swift_once();
  }

  v0 = sub_190D53040();
  __swift_project_value_buffer(v0, qword_1EAD9D7F0);
  v1 = sub_190D53020();
  v2 = sub_190D57680();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_19020E000, v1, v2, "User tapped to enable MiC.", v3, 2u);
    MEMORY[0x193AF7A40](v3, -1, -1);
  }

  v4 = objc_opt_self();
  result = [v4 sharedInstance];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  v7 = [result isEnabled];

  if ((v7 & 1) == 0)
  {
    result = [v4 sharedInstance];
    if (result)
    {
      v8 = result;
      [result setEnabled_];

      goto LABEL_9;
    }

LABEL_15:
    __break(1u);
    return result;
  }

LABEL_9:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_19085B928(1);
  }

  v11 = *MEMORY[0x1E69A6D10];
  v12 = *MEMORY[0x1E69A6D78];
  v13 = objc_allocWithZone(MEMORY[0x1E695DF00]);
  v14 = v11;
  v15 = v12;
  v16 = [v13 init];
  IMSetDomainValueForKey();

  if (qword_1EAD45800 != -1)
  {
    swift_once();
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E180);
  __swift_project_value_buffer(v17, qword_1EAD9D5C0);
  swift_beginAccess();
  sub_190D53850();
  return swift_endAccess();
}

uint64_t sub_190859D8C(void *a1)
{
  if (qword_1EAD462A0 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D7F0);
  v3 = sub_190D53020();
  v4 = sub_190D57680();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v3, v4, "User tapped close button for CloudOnboarding tip.", v5, 2u);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  sub_19085B928(0);
  v6 = *MEMORY[0x1E69A6D10];
  v7 = *MEMORY[0x1E69A6D78];
  v8 = objc_allocWithZone(MEMORY[0x1E695DF00]);
  v9 = v6;
  v10 = v7;
  v11 = [v8 init];
  IMSetDomainValueForKey();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_190D53540();
  if (qword_1EAD45800 != -1)
  {
    swift_once();
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E180);
  __swift_project_value_buffer(v12, qword_1EAD9D5C0);
  swift_beginAccess();
  sub_190D53850();
  return swift_endAccess();
}

uint64_t sub_190859F84(void *a1)
{
  if (qword_1EAD462A0 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D7F0);
  v3 = sub_190D53020();
  v4 = sub_190D57680();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v3, v4, "User tapped close button for KT updateAppleID tip.", v5, 2u);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  IMSetUserIgnoreFailureUpdateAppleIDIntent();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_190D53540();
  if (qword_1EAD458D0 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E180);
  __swift_project_value_buffer(v6, qword_1EAD9D5D8);
  swift_beginAccess();
  sub_190D53850();
  return swift_endAccess();
}

uint64_t sub_19085A114(void *a1)
{
  if (qword_1EAD462A0 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D7F0);
  v3 = sub_190D53020();
  v4 = sub_190D57680();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v3, v4, "User tapped close button for KT waitingForCloud tip.", v5, 2u);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  IMSetUserIgnoreFailureWaitingForCloudIntent();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_190D53540();
  if (qword_1EAD457A0 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E180);
  __swift_project_value_buffer(v6, qword_1EAD9D5A8);
  swift_beginAccess();
  sub_190D53850();
  return swift_endAccess();
}

void sub_19085A2A4(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR___CKConversationListTipManagerSwift_presentedTip;
    swift_beginAccess();
    if (*(v1 + v5) >= a1)
    {
      if (qword_1EAD462A0 != -1)
      {
        swift_once();
      }

      v16 = sub_190D53040();
      __swift_project_value_buffer(v16, qword_1EAD9D7F0);
      v17 = sub_190D53020();
      v18 = sub_190D57680();
      if (!os_log_type_enabled(v17, v18))
      {
        goto LABEL_24;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "Trying to present a lower priority tip while already presenting one... dropping.";
    }

    else
    {
      v6 = sub_190859678(a1);
      if (v6)
      {
        v7 = v6;
        v8 = *(v1 + v5);
        *(v1 + v5) = a1;
        v9 = OBJC_IVAR___CKConversationListTipManagerSwift_miniTipUIView;
        swift_beginAccess();
        v10 = *(v1 + v9);
        *(v1 + v9) = v7;
        v11 = v7;

        if (v8 > 2)
        {
          if ((v8 - 4) >= 2)
          {
            if (v8 != 3)
            {
              goto LABEL_48;
            }

            v12 = &selRef_micCloudTipUpdated;
          }

          else
          {
            v12 = &selRef_ktFailureTipUpdated;
          }
        }

        else
        {
          switch(v8)
          {
            case 0:
              goto LABEL_32;
            case 1:
              v12 = &selRef_siriTipUpdated;
              break;
            case 2:
              v12 = &selRef_pinningTipUpdated;
              break;
            default:
              goto LABEL_48;
          }
        }

        [v4 *v12];
LABEL_32:
        v22 = *(v1 + v5);
        if (v22 > 2)
        {
          if ((v22 - 4) < 2)
          {
            v23 = &selRef_ktFailureTipUpdated;
            goto LABEL_42;
          }

          if (v22 == 3)
          {
            v23 = &selRef_micCloudTipUpdated;
            goto LABEL_42;
          }
        }

        else
        {
          switch(v22)
          {
            case 0:
LABEL_43:
              if (qword_1EAD462A0 != -1)
              {
                swift_once();
              }

              v24 = sub_190D53040();
              __swift_project_value_buffer(v24, qword_1EAD9D7F0);
              v25 = sub_190D53020();
              v26 = sub_190D57680();
              if (os_log_type_enabled(v25, v26))
              {
                v27 = swift_slowAlloc();
                *v27 = 134217984;
                *(v27 + 4) = a1;
                _os_log_impl(&dword_19020E000, v25, v26, "Attempted to present a tip on the conversation list: %ld", v27, 0xCu);
                MEMORY[0x193AF7A40](v27, -1, -1);
              }

              return;
            case 1:
              v23 = &selRef_siriTipUpdated;
LABEL_42:
              [v4 *v23];
              goto LABEL_43;
            case 2:
              v23 = &selRef_pinningTipUpdated;
              goto LABEL_42;
          }
        }

LABEL_48:
        sub_190D58790();
        __break(1u);
        return;
      }

      if (qword_1EAD462A0 != -1)
      {
        swift_once();
      }

      v21 = sub_190D53040();
      __swift_project_value_buffer(v21, qword_1EAD9D7F0);
      v17 = sub_190D53020();
      v18 = sub_190D57680();
      if (!os_log_type_enabled(v17, v18))
      {
LABEL_24:

        return;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "Failed to build a tip view for the given tip... likely programming error.";
    }

    _os_log_impl(&dword_19020E000, v17, v18, v20, v19, 2u);
    MEMORY[0x193AF7A40](v19, -1, -1);
    goto LABEL_24;
  }

  if (qword_1EAD462A0 != -1)
  {
    swift_once();
  }

  v13 = sub_190D53040();
  __swift_project_value_buffer(v13, qword_1EAD9D7F0);
  oslog = sub_190D53020();
  v14 = sub_190D57680();
  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_19020E000, oslog, v14, "Tried to present a tip and we have no conversation list controller reference... likely programming error.", v15, 2u);
    MEMORY[0x193AF7A40](v15, -1, -1);
  }
}

uint64_t sub_19085A760()
{
  v1 = OBJC_IVAR___CKConversationListTipManagerSwift_tipObservationTask;
  if (*(v0 + OBJC_IVAR___CKConversationListTipManagerSwift_tipObservationTask))
  {
    sub_190D50920();
    sub_190D57330();
  }

  *(v0 + v1) = 0;
}

uint64_t sub_19085A878()
{
  v0 = sub_190D53710();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[0] = sub_190230C1C();
  v6[1] = v4;
  (*(v1 + 104))(v3, *MEMORY[0x1E6982AE0], v0);
  sub_190230D6C();
  sub_190D53520();
  (*(v1 + 8))(v3, v0);
}

id CKConversationListTipManagerSwift.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKConversationListTipManagerSwift.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKConversationListTipManagerSwift();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19085AC54()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9D7F0);
  __swift_project_value_buffer(v0, qword_1EAD9D7F0);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_19085ACC8(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_19085ADBC;

  return v5(v2 + 16);
}

uint64_t sub_19085ADBC()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_19085AED0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_19085AFC4;

  return v5(v2 + 32);
}

uint64_t sub_19085AFC4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_19085B0D8()
{
  result = swift_beginAccess();
  v1 = qword_1EAD45448 & 0xFFFFFFFFFFFFLL;
  if ((qword_1EAD45450 & 0x2000000000000000) != 0)
  {
    v1 = HIBYTE(qword_1EAD45450) & 0xF;
  }

  if (!v1)
  {
    v2 = [objc_opt_self() sharedConversationList];
    v3 = [v2 conversations];

    sub_1902188FC(0, &qword_1EAD466B0);
    v4 = sub_190D57180();

    if (v4 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
    {
      for (j = 0; ; ++j)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x193AF3B90](j, v4);
        }

        else
        {
          if (j >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v8 = *(v4 + 8 * j + 32);
        }

        v9 = v8;
        v10 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        v11 = [v8 chat];
        if (v11)
        {
          v7 = v11;
          v12 = [v11 displayName];
          if (v12 || (v12 = [v7 displayNameWithRawAddress:0 isSpamFilteringEnabled:{objc_msgSend(objc_opt_self(), sel_isTextMessageExtensionEnabled)}]) != 0)
          {
            v13 = v12;
            v14 = sub_190D56F10();
            v16 = v15;

            v17 = objc_opt_self();
            v18 = sub_190D56ED0();
            LODWORD(v17) = [v17 isEasyToRecognizeWord_];

            if (v17)
            {

              qword_1EAD45448 = v14;
              qword_1EAD45450 = v16;
            }
          }
        }

        else
        {
          v7 = v9;
        }

        if (v10 == i)
        {
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }
  }

  return result;
}

uint64_t sub_19085B7E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19085B858(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_190221DA0;

  return sub_19085AED0(a1, v4);
}

void sub_19085B928(char a1)
{
  if (qword_1EAD45C38 != -1)
  {
    swift_once();
  }

  v2 = *(qword_1EAD45C40 + OBJC_IVAR____TtC7ChatKit19CKCloudTipViewModel_currentTipDescriptor);
  if (v2)
  {
    v3 = sub_190D56F10();
    v5 = v4;
    v6 = v2;
    v7 = sub_190D57230();
    v8 = sub_1902188FC(0, &qword_1EAD46510);
    v51 = v8;
    *&v50 = v7;
    sub_190824530(&v50, v49);
    v9 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_190C1BE80(v49, v3, v5, isUniquelyReferenced_nonNull_native);

    v11 = sub_190D56F10();
    v13 = v12;
    v14 = sub_190D574E0();
    v51 = v8;
    *&v50 = v14;
    sub_190824530(&v50, v49);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_190C1BE80(v49, v11, v13, v15);

    if ((v6[OBJC_IVAR____TtC7ChatKit20CKCloudTipDescriptor_currentStorageOnDevice + 8] & 1) == 0)
    {
      v16 = sub_190D56F10();
      v18 = v17;
      v19 = sub_190D588E0();
      v51 = v8;
      *&v50 = v19;
      sub_190824530(&v50, v49);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      sub_190C1BE80(v49, v16, v18, v20);
    }

    if (a1)
    {
      if ((v6[OBJC_IVAR____TtC7ChatKit20CKCloudTipDescriptor_availableStorageInCloud + 8] & 1) == 0)
      {
        v21 = sub_190D56F10();
        v23 = v22;
        v24 = sub_190D58080();
        v51 = v8;
        *&v50 = v24;
        sub_190824530(&v50, v49);
        v25 = swift_isUniquelyReferenced_nonNull_native();
        sub_190C1BE80(v49, v21, v23, v25);
      }

      if ((v6[OBJC_IVAR____TtC7ChatKit20CKCloudTipDescriptor_usedStorageInCloud + 8] & 1) == 0)
      {
        v26 = sub_190D56F10();
        v28 = v27;
        v29 = sub_190D58080();
        v51 = v8;
        *&v50 = v29;
        sub_190824530(&v50, v49);
        v30 = swift_isUniquelyReferenced_nonNull_native();
        sub_190C1BE80(v49, v26, v28, v30);
      }

      if ((v6[OBJC_IVAR____TtC7ChatKit20CKCloudTipDescriptor_totalStorageInCloud + 8] & 1) == 0)
      {
        v31 = sub_190D56F10();
        v33 = v32;
        v34 = sub_190D58080();
        v51 = v8;
        *&v50 = v34;
        sub_190824530(&v50, v49);
        v35 = swift_isUniquelyReferenced_nonNull_native();
        sub_190C1BE80(v49, v31, v33, v35);
      }
    }

    if (v6[OBJC_IVAR____TtC7ChatKit20CKCloudTipDescriptor_iCloudBackupEnabledSystemWide] != 2)
    {
      v36 = sub_190D56F10();
      v38 = v37;
      v39 = sub_190D57230();
      v51 = v8;
      *&v50 = v39;
      sub_190824530(&v50, v49);
      v40 = swift_isUniquelyReferenced_nonNull_native();
      sub_190C1BE80(v49, v36, v38, v40);
    }

    v41 = [objc_opt_self() sharedInstance];
    if (v41)
    {
      v42 = v41;
      v43 = *MEMORY[0x1E69A74F0];
      sub_190A8EC70(v9);

      v44 = sub_190D56D60();

      [v42 trackEvent:v43 withDictionary:v44];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1EAD462A0 != -1)
    {
      swift_once();
    }

    v45 = sub_190D53040();
    __swift_project_value_buffer(v45, qword_1EAD9D7F0);
    oslog = sub_190D53020();
    v46 = sub_190D576A0();
    if (os_log_type_enabled(oslog, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_19020E000, oslog, v46, "Missing tip descriptor cannot post opt in metrics", v47, 2u);
      MEMORY[0x193AF7A40](v47, -1, -1);
    }
  }
}

uint64_t sub_19085BEC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_190221DA0;

  return sub_19085ACC8(a1, v4);
}

uint64_t sub_19085BF7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_190221DA0;

  return sub_19085AED0(a1, v4);
}

uint64_t sub_19085C034(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_190221DA0;

  return sub_19085ACC8(a1, v4);
}

uint64_t objectdestroy_2Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19085C14C()
{
  sub_190D58870();
  sub_190D56FC0();

  return sub_190D588C0();
}

uint64_t sub_19085C248()
{
  sub_190D56FC0();
}

uint64_t sub_19085C330()
{
  sub_190D58870();
  sub_190D56FC0();

  return sub_190D588C0();
}

uint64_t sub_19085C428@<X0>(_BYTE *a1@<X8>)
{
  result = sub_19085CF70();
  *a1 = result;
  return result;
}

void sub_19085C458(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7364973;
  v5 = 0xED00006E6F697461;
  v6 = 0x636F4C6572616873;
  v7 = 0x8000000190E5AC60;
  if (v2 != 3)
  {
    v7 = 0x8000000190E5AC80;
  }

  if (v2 != 2)
  {
    v6 = 0xD000000000000013;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x4C74736575716572;
    v3 = 0xEF6E6F697461636FLL;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_19085C510(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_19082DBB4(0, v1, 0);
    v3 = v20;
    v4 = (a1 + 32);
    v5 = 0x636F4C6572616873;
    do
    {
      v7 = *v4++;
      v6 = v7;
      v8 = 0xD000000000000013;
      if (v7 == 3)
      {
        v9 = 0x8000000190E5AC60;
      }

      else
      {
        v9 = 0x8000000190E5AC80;
      }

      if (v6 == 2)
      {
        v8 = v5;
        v9 = 0xED00006E6F697461;
      }

      if (v6)
      {
        v10 = 0x4C74736575716572;
      }

      else
      {
        v10 = 7364973;
      }

      if (v6)
      {
        v11 = 0xEF6E6F697461636FLL;
      }

      else
      {
        v11 = 0xE300000000000000;
      }

      if (v6 <= 1)
      {
        v12 = v10;
      }

      else
      {
        v12 = v8;
      }

      if (v6 <= 1)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      v21 = v3;
      v15 = *(v3 + 16);
      v14 = *(v3 + 24);
      if (v15 >= v14 >> 1)
      {
        v17 = v5;
        sub_19082DBB4((v14 > 1), v15 + 1, 1);
        v5 = v17;
        v3 = v21;
      }

      *(v3 + 16) = v15 + 1;
      v16 = v3 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
  sub_19085CD58();
  v18 = sub_190D56DF0();

  return v18;
}

uint64_t sub_19085C718@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19085C510(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_19085C744()
{
  swift_getKeyPath();
  sub_19085CCC4();
  sub_190D51C20();

  return sub_190D52690();
}

uint64_t sub_19085C7B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_19085CCC4();
  sub_190D51C20();

  *a2 = *(v3 + 32);
  return sub_190D52690();
}

uint64_t sub_19085C834()
{
  swift_getKeyPath();
  sub_19085CCC4();
  sub_190D51C10();
}

uint64_t sub_19085C8D0(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  sub_190D52690();
}

void *sub_19085C90C(void *a1, void *a2)
{
  v3 = v2;
  v3[4] = MEMORY[0x1E69E7CC0];
  sub_190D51C50();
  v3[2] = a1;
  v3[3] = a2;
  v6 = a1;
  v7 = a2;
  sub_19085CA08();
  swift_getKeyPath();
  sub_19085CCC4();
  sub_190D51C10();

  return v3;
}

void *sub_19085CA08()
{
  v1 = *(v0 + 16);
  v2 = [v1 chat];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 hasSiblingRecipientsSharingLocation];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v1 chat];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 hasRecipientsFollowingLocation];

    if (v4)
    {
      if (v7)
      {
        return &unk_1F04020A0;
      }

      return &unk_1F0402078;
    }

    if (v7)
    {
      return &unk_1F0402050;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    if (v4)
    {
      return &unk_1F0402078;
    }

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_19085CAE4()
{

  v1 = OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView15LocationSection9ViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s9ViewModelCMa_1()
{
  result = qword_1EAD45CA8;
  if (!qword_1EAD45CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19085CBEC()
{
  result = sub_190D51C60();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_19085CCC4()
{
  result = qword_1EAD548A8;
  if (!qword_1EAD548A8)
  {
    _s9ViewModelCMa_1();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD548A8);
  }

  return result;
}

uint64_t sub_19085CD1C()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
  sub_190D52690();
}

unint64_t sub_19085CD58()
{
  result = qword_1EAD46720;
  if (!qword_1EAD46720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD57920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46720);
  }

  return result;
}

uint64_t _s9ViewModelC22LocationSharingElementOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9ViewModelC22LocationSharingElementOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_19085CF1C()
{
  result = qword_1EAD548B0;
  if (!qword_1EAD548B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD548B0);
  }

  return result;
}

uint64_t sub_19085CF70()
{
  v0 = sub_190D585F0();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_19085CFD8()
{
  v1 = *v0;
  sub_190D58870();
  MEMORY[0x193AF4110](v1);
  return sub_190D588C0();
}

uint64_t sub_19085D020()
{
  v1 = *v0;
  sub_190D58870();
  MEMORY[0x193AF4110](v1);
  return sub_190D588C0();
}

uint64_t sub_19085D064()
{
  v1 = 0x656D75736572;
  if (*v0 != 1)
  {
    v1 = 0x6164696C61766E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6573756170;
  }
}

uint64_t getEnumTagSinglePayload for CKAssetDownloadState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CKAssetDownloadState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_19085D210()
{
  result = qword_1EAD548B8;
  if (!qword_1EAD548B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD548B8);
  }

  return result;
}

uint64_t sub_19085D2A0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      if ([Strong respondsToSelector_])
      {
        v4 = [v3 tapbackPickerBalloonParentViewTapbackPileView_];
        swift_unknownObjectRelease();

        if (v4)
        {
          v5 = *&v4[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_190DD55F0;
          v7 = *&v4[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter];
          *(inited + 32) = v7;
          sub_190D52690();
          v8 = v7;
          sub_190CAA054(inited);

          if (v5 >> 62)
          {
            goto LABEL_23;
          }

          for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
          {
            v10 = 0;
            while (1)
            {
              if ((v5 & 0xC000000000000001) != 0)
              {
                v11 = MEMORY[0x193AF3B90](v10, v5);
              }

              else
              {
                if (v10 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_22;
                }

                v11 = *(v5 + 8 * v10 + 32);
              }

              v12 = v11;
              v13 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
                break;
              }

              if ((v11[OBJC_IVAR___CKTapbackPlatterView_isSent] & 1) == 0 && ![v11 isHidden])
              {

                v14 = *&v12[OBJC_IVAR___CKTapbackPlatterView_contentBackground];
                v15 = [v14 backgroundColor];

                return v15;
              }

              ++v10;
              if (v13 == i)
              {
                goto LABEL_24;
              }
            }

            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            ;
          }

LABEL_24:
        }

        return 0;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

void sub_19085D4FC()
{
  sub_190C76C8C();

  sub_19085D6A8(1);
}

void sub_19085D528()
{
  sub_190C76A0C(0.2);

  sub_19085D6A8(0);
}

uint64_t sub_19085D55C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v2 = result;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v4 = Strong;
  if (([Strong respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_8:

    return 0;
  }

  v5 = [v4 tapbackPickerBalloonParentViewTapbackPileView_];
  swift_unknownObjectRelease();

  if (!v5)
  {
    return 0;
  }

  [v5 bounds];
  [v0 convertRect:v5 fromCoordinateSpace:?];
  v10 = v0;
  if (*(v0 + OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_isAlphaThresholdFilterEnabled))
  {
    v11 = *(v0 + OBJC_IVAR____TtC7ChatKit15TapbackBlurView_isBlurEnabled);
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_190913B20(v11, v6, v7, v8, v9);
  [v10 addSubview_];

  return v12;
}

void sub_19085D6A8(char a1)
{
  v2 = v1;
  v4 = [v1 subviews];
  sub_190861700();
  v5 = sub_190D57180();

  v35 = MEMORY[0x1E69E7CC0];
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_20:
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v6 = sub_190D581C0();
  if (!v6)
  {
    goto LABEL_20;
  }

LABEL_3:
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x193AF3B90](v9, v5);
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for AggregateAcknowledgmentBalloonView();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x193AF29E0]();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    sub_190D571E0();
    v8 = v35;
  }

  while (v7 != v6);
LABEL_21:

  if (v8 >> 62)
  {
    v12 = sub_190D581C0();
    if (!v12)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_30;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
    goto LABEL_44;
  }

  for (i = 0; i != v12; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x193AF3B90](i, v8);
    }

    else
    {
      v14 = *(v8 + 8 * i + 32);
    }

    v15 = v14;
    [v14 removeFromSuperview];
  }

LABEL_30:

  v16 = sub_19085D55C();
  if (!v16)
  {
    return;
  }

  v12 = v16;
  type metadata accessor for TapbackPickerBottomPileViewContainer();
  if (swift_dynamicCastClass())
  {
    if (v2[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_isAlphaThresholdFilterEnabled] == 1 && (v2[OBJC_IVAR____TtC7ChatKit15TapbackBlurView_isBlurEnabled] & 1) != 0)
    {
      goto LABEL_46;
    }

    v17 = sub_19085EA90();
    v8 = v17;
    if (!(v17 >> 62))
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
LABEL_36:
        if (v18 < 1)
        {
          __break(1u);
          return;
        }

        for (j = 0; j != v18; ++j)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x193AF3B90](j, v8);
          }

          else
          {
            v20 = *(v8 + 8 * j + 32);
          }

          v21 = v20;
          [v20 setHidden_];
        }
      }

LABEL_45:

      goto LABEL_46;
    }

LABEL_44:
    v18 = sub_190D581C0();
    if (v18)
    {
      goto LABEL_36;
    }

    goto LABEL_45;
  }

  sub_19085E3B0();
LABEL_46:
  v22 = *(v12 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  v24 = *(v12 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter);
  *(inited + 32) = v24;
  sub_190D52690();
  v25 = v24;
  sub_190CAA054(inited);
  if (v22 >> 62)
  {
    goto LABEL_60;
  }

  v26 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v26)
  {
    while (1)
    {
      v27 = 0;
      while ((v22 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x193AF3B90](v27, v22);
        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
LABEL_57:
          __break(1u);
LABEL_58:
          v30 = v28;

          [v30 setHidden_];

          goto LABEL_62;
        }

LABEL_52:
        if (*(v28 + OBJC_IVAR___CKTapbackPlatterView_isSent))
        {
          goto LABEL_58;
        }

        ++v27;
        if (v29 == v26)
        {
          goto LABEL_61;
        }
      }

      if (v27 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_60:
      v26 = sub_190D581C0();
      if (!v26)
      {
        goto LABEL_61;
      }
    }

    v28 = *(v22 + 8 * v27 + 32);
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_57;
    }

    goto LABEL_52;
  }

LABEL_61:

LABEL_62:
  v31 = *&v2[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerMessageOriginLayout();
  swift_initStackObject();
  v32 = sub_1909DB588(v31);
  swift_beginAccess();
  [v2 convertPoint:v12 toCoordinateSpace:{*(v32 + 16), *(v32 + 24)}];
  sub_19085E60C(a1 & 1, v33, v34);
  if (a1)
  {
    sub_19085DB98();
  }

  else
  {
    sub_19085DFD8();
  }
}

void sub_19085DB98()
{
  v1 = [objc_opt_self() sharedBehaviors];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 usesTapbackRefreshStyling];

    if (v3)
    {
      [v0 setAlpha_];
      v4 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:800.18 damping:116.588 initialVelocity:{0.0, 0.0}];
      v5 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v4 timingParameters:0.0];
      v6 = swift_allocObject();
      *(v6 + 16) = v0;
      v21 = sub_19086186C;
      v22 = v6;
      v17 = MEMORY[0x1E69E9820];
      v18 = 1107296256;
      v19 = sub_190840E6C;
      v20 = &block_descriptor_179;
      v7 = _Block_copy(&v17);
      v8 = v0;

      [v5 addAnimations_];
      _Block_release(v7);
      [v5 startAnimationAfterDelay_];
    }

    else
    {
      if (*(v0 + OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_isAlphaThresholdFilterEnabled) == 1 && *(v0 + OBJC_IVAR____TtC7ChatKit15TapbackBlurView_isBlurEnabled) == 1)
      {
        v9 = [v0 layer];
        v10 = sub_190D51C70();
        v11 = sub_190D56ED0();
        [v9 setValue:v10 forKeyPath:v11];

        v4 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:898.18 damping:116.588 initialVelocity:{0.0, 0.0}];
        v5 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v4 timingParameters:0.0];
        v12 = swift_allocObject();
        *(v12 + 16) = v0;
        v21 = sub_19085EA6C;
        v22 = v12;
        v17 = MEMORY[0x1E69E9820];
        v18 = 1107296256;
        v13 = &block_descriptor_173;
      }

      else
      {
        [v0 setAlpha_];
        v4 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:1698.18 damping:116.588 initialVelocity:{0.0, 0.0}];
        v5 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v4 timingParameters:0.0];
        v14 = swift_allocObject();
        *(v14 + 16) = v0;
        v21 = sub_19085EA58;
        v22 = v14;
        v17 = MEMORY[0x1E69E9820];
        v18 = 1107296256;
        v13 = &block_descriptor_167;
      }

      v19 = sub_190840E6C;
      v20 = v13;
      v15 = _Block_copy(&v17);
      v16 = v0;

      [v5 addAnimations_];
      _Block_release(v15);
      [v5 startAnimationAfterDelay_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_19085DFD8()
{
  v1 = [objc_opt_self() sharedBehaviors];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 usesTapbackRefreshStyling];

    if (v3)
    {

      [v0 setAlpha_];
    }

    else
    {
      if (*(v0 + OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_isAlphaThresholdFilterEnabled) == 1 && *(v0 + OBJC_IVAR____TtC7ChatKit15TapbackBlurView_isBlurEnabled) == 1)
      {
        v4 = [v0 layer];
        v5 = sub_190D51C70();
        v6 = sub_190D56ED0();
        [v4 setValue:v5 forKeyPath:v6];

        v7 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:898.18 damping:116.588 initialVelocity:{0.0, 0.0}];
        v8 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v7 timingParameters:0.0];
        v9 = swift_allocObject();
        *(v9 + 16) = v0;
        v19 = sub_19085EA38;
        v20 = v9;
        v15 = MEMORY[0x1E69E9820];
        v16 = 1107296256;
        v17 = sub_190840E6C;
        v18 = &block_descriptor_161;
        v10 = _Block_copy(&v15);
        v11 = v0;

        [v8 addAnimations_];
        _Block_release(v10);
        [v8 startAnimationAfterDelay_];
      }

      else
      {
        [v0 setAlpha_];
        v7 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:650.18 damping:116.588 initialVelocity:{0.0, 0.0}];
        v8 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v7 timingParameters:0.0];
        v12 = swift_allocObject();
        *(v12 + 16) = v0;
        v19 = sub_19085EA24;
        v20 = v12;
        v15 = MEMORY[0x1E69E9820];
        v16 = 1107296256;
        v17 = sub_190840E6C;
        v18 = &block_descriptor_8;
        v13 = _Block_copy(&v15);
        v14 = v0;

        [v8 addAnimations_];
        _Block_release(v13);
        [v8 startAnimationAfterDelay_];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19085E3B0()
{
  v16 = MEMORY[0x1E69E7CC0];
  v1 = *(v0 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  v3 = *(v0 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter);
  *(inited + 32) = v3;
  sub_190D52690();
  v4 = v3;
  sub_190CAA054(inited);
  v5 = v1;
  if (v1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    v7 = MEMORY[0x1E69E7CC0];
    while (!__OFSUB__(i--, 1))
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x193AF3B90](i, v5);
      }

      else
      {
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_25;
        }

        if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v9 = *(v5 + 32 + 8 * i);
      }

      if (*(v9 + OBJC_IVAR___CKTapbackPlatterView_isSent))
      {

        goto LABEL_16;
      }

      v10 = v9;
      MEMORY[0x193AF29E0]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_190D571A0();
      }

      sub_190D571E0();

      v7 = v16;
      if (!i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_16:

  if (!(v7 >> 62))
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_18;
    }
  }

  result = sub_190D581C0();
  v12 = result;
  if (!result)
  {
  }

LABEL_18:
  if (v12 >= 1)
  {
    for (j = 0; j != v12; ++j)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x193AF3B90](j, v7);
      }

      else
      {
        v14 = *(v7 + 8 * j + 32);
      }

      v15 = v14;
      [v14 setHidden_];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19085E60C(char a1, double a2, double a3)
{
  v4 = v3;
  v7 = *&v3[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  v9 = *&v4[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter];
  *(inited + 32) = v9;
  sub_190D52690();
  v10 = v9;
  sub_190CAA054(inited);
  v11 = v7;
  v37 = MEMORY[0x1E69E7CC0];
  if (v7 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    v13 = 0;
    v14 = v11 & 0xC000000000000001;
    v15 = v11 & 0xFFFFFFFFFFFFFF8;
    v34 = v11 & 0xFFFFFFFFFFFFFF8;
    v35 = v11 & 0xC000000000000001;
    while (1)
    {
      if (v14)
      {
        v16 = MEMORY[0x193AF3B90](v13, v11);
      }

      else
      {
        if (v13 >= *(v15 + 16))
        {
          goto LABEL_19;
        }

        v16 = *(v11 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if ([v16 isHidden] || (v19 = objc_msgSend(v17, sel_superview)) == 0)
      {
      }

      else
      {
        v20 = v19;
        v21 = v11;
        v22 = i;
        sub_190861700();
        v23 = v4;
        v24 = v4;
        v25 = sub_190D57D90();

        if (v25)
        {
          sub_190D58360();
          sub_190D583B0();
          sub_190D583C0();
          sub_190D58370();
        }

        else
        {
        }

        v4 = v23;
        i = v22;
        v11 = v21;
        v15 = v34;
        v14 = v35;
      }

      ++v13;
      if (v18 == i)
      {
        v26 = v37;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_22:

  if ((v26 & 0x8000000000000000) == 0 && (v26 & 0x4000000000000000) == 0)
  {
    v28 = *(v26 + 16);
    if (v28)
    {
      goto LABEL_25;
    }
  }

  result = sub_190D581C0();
  v28 = result;
  if (!result)
  {
  }

LABEL_25:
  if (v28 >= 1)
  {
    for (j = 0; j != v28; ++j)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x193AF3B90](j, v26);
      }

      else
      {
        v30 = *(v26 + 8 * j + 32);
      }

      v31 = v30;
      [v4 convertPoint:v30 toCoordinateSpace:{a2, a3}];
      if (a1)
      {
        sub_19085ED84(v32, v33);
      }

      else
      {
        sub_19085F4A4(v32, v33);
      }
    }
  }

  __break(1u);
  return result;
}

void sub_19085E8E8(void *a1)
{
  v1 = [a1 layer];
  v2 = sub_190D51C70();
  v3 = sub_190D56ED0();
  [v1 setValue:v2 forKeyPath:v3];
}

id sub_19085E9B8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_19085EA90()
{
  v1 = v0;
  v2 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters;
  v3 = *(v0 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  v5 = *(v1 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter);
  *(inited + 32) = v5;
  sub_190D52690();
  v6 = v5;
  sub_190CAA054(inited);
  v21 = v2;
  v20 = v6;
  if (v3 >> 62)
  {
    goto LABEL_31;
  }

  v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    while (1)
    {
      v8 = 0;
      while ((v3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x193AF3B90](v8, v3);
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_12:
          __break(1u);
LABEL_13:

          v22 = MEMORY[0x1E69E7CC0];
          v1 = *(v1 + v21);
          v12 = swift_initStackObject();
          *(v12 + 16) = xmmword_190DD55F0;
          *(v12 + 32) = v20;
          v13 = v20;
          sub_190D52690();
          sub_190CAA054(v12);
          if (v1 >> 62)
          {
            v14 = sub_190D581C0();
            if (v14)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v14)
            {
LABEL_15:
              v15 = 0;
              v3 = MEMORY[0x1E69E7CC0];
              while (1)
              {
                if ((v1 & 0xC000000000000001) != 0)
                {
                  v16 = MEMORY[0x193AF3B90](v15, v1);
                  v17 = v15 + 1;
                  if (__OFADD__(v15, 1))
                  {
                    goto LABEL_29;
                  }
                }

                else
                {
                  if (v15 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_30;
                  }

                  v16 = *(v1 + 8 * v15 + 32);
                  v17 = v15 + 1;
                  if (__OFADD__(v15, 1))
                  {
                    goto LABEL_29;
                  }
                }

                if (v16[OBJC_IVAR___CKTapbackPlatterView_isSent] == 1)
                {
                  break;
                }

                v18 = v16;
                MEMORY[0x193AF29E0]();
                if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_190D571A0();
                }

                sub_190D571E0();

                v3 = v22;
                ++v15;
                if (v17 == v14)
                {
                  goto LABEL_35;
                }
              }

              goto LABEL_35;
            }
          }

          v3 = MEMORY[0x1E69E7CC0];
LABEL_35:

          return v3;
        }

LABEL_7:
        v11 = v9[OBJC_IVAR___CKTapbackPlatterView_isSent];

        if (v11)
        {
          goto LABEL_13;
        }

        ++v8;
        if (v10 == v7)
        {
          goto LABEL_32;
        }
      }

      if (v8 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      v7 = sub_190D581C0();
      if (!v7)
      {
        goto LABEL_32;
      }
    }

    v9 = *(v3 + 8 * v8 + 32);
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

LABEL_32:

  return MEMORY[0x1E69E7CC0];
}

void sub_19085ED84(double a1, double a2)
{
  v3 = v2;
  if (v2[OBJC_IVAR___CKTapbackPlatterView_showTail] == 1)
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:875.0 damping:85.0 initialVelocity:{0.0, 0.0}];
    v7 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v6 timingParameters:0.0];
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    v43 = sub_190861774;
    v44 = v8;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_190840E6C;
    v42 = &block_descriptor_209;
    v9 = _Block_copy(&aBlock);
    v10 = v3;

    [v7 addAnimations_];
    _Block_release(v9);
    [v7 startAnimationAfterDelay_];
  }

  v11 = *&v3[OBJC_IVAR___CKTapbackPlatterView_contentView];
  v12 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  sub_190A86CA4(v12);

  v13 = [v11 layer];
  v14 = sub_190D51C70();
  v15 = sub_190D56ED0();
  [v13 setValue:v14 forKeyPath:v15];

  v16 = [objc_opt_self() sharedBehaviors];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 usesTapbackRefreshStyling];

    if (v18)
    {
      [v11 setAlpha_];
    }

    v38 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:975.0 damping:85.0 initialVelocity:{0.0, 0.0}];
    v19 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v38 timingParameters:0.0];
    v20 = swift_allocObject();
    *(v20 + 16) = v3;
    v43 = sub_19086174C;
    v44 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_190840E6C;
    v42 = &block_descriptor_185;
    v21 = _Block_copy(&aBlock);
    v22 = v3;

    [v19 addAnimations_];
    _Block_release(v21);
    [v19 startAnimationAfterDelay_];
    v37 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:975.0 damping:85.0 initialVelocity:{0.0, 0.0}];
    v23 = [objc_allocWithZone(MEMORY[0x1E69DD278]) &selRef:v37 initWithConversation:0.0 tapHandler:?];
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    v43 = sub_190861754;
    v44 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_190840E6C;
    v42 = &block_descriptor_191;
    v25 = _Block_copy(&aBlock);
    v26 = v22;

    [v23 addAnimations_];
    _Block_release(v25);
    [v23 startAnimationAfterDelay_];
    v27 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:575.0 damping:85.0 initialVelocity:{0.0, 0.0}];
    v28 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v27 timingParameters:0.0];
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    *(v29 + 24) = a1;
    *(v29 + 32) = a2;
    v43 = sub_19086175C;
    v44 = v29;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_190840E6C;
    v42 = &block_descriptor_197;
    v30 = _Block_copy(&aBlock);
    v31 = v26;

    [v28 addAnimations_];
    _Block_release(v30);
    [v28 startAnimationAfterDelay_];
    v32 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:575.0 damping:85.0 initialVelocity:{0.0, 0.0}];
    v33 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v32 timingParameters:0.0];
    v34 = swift_allocObject();
    *(v34 + 16) = v31;
    *(v34 + 24) = a1;
    *(v34 + 32) = a2;
    v43 = sub_190861768;
    v44 = v34;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_190840E6C;
    v42 = &block_descriptor_203;
    v35 = _Block_copy(&aBlock);
    v36 = v31;

    [v33 addAnimations_];
    _Block_release(v35);
    [v33 startAnimationAfterDelay_];
  }

  else
  {
    __break(1u);
  }
}

void sub_19085F4A4(double a1, double a2)
{
  [*&v2[OBJC_IVAR___CKTapbackPlatterView_backgroundSolidStroke] frame];
  v125 = v7;
  v126 = v6;
  v123 = v9;
  v124 = v8;
  [*&v2[OBJC_IVAR___CKTapbackPlatterView_contentBackground] frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = *&v2[OBJC_IVAR___CKTapbackPlatterView_contentView];
  [v18 frame];
  v122 = v19;
  v21 = v20;
  v23 = v22;
  v140 = v24;
  [*&v2[OBJC_IVAR___CKTapbackPlatterView_mediumTailSolidStroke] frame];
  v119 = v26;
  v120 = v25;
  v117 = v28;
  v118 = v27;
  [*&v2[OBJC_IVAR___CKTapbackPlatterView_smallTailSolidStroke] frame];
  v115 = v30;
  v116 = v29;
  v113 = v32;
  v114 = v31;
  [*&v2[OBJC_IVAR___CKTapbackPlatterView_mediumTail] frame];
  v137 = v34;
  v138 = v33;
  v135 = v36;
  v136 = v35;
  [*&v2[OBJC_IVAR___CKTapbackPlatterView_smallTail] frame];
  v133 = v38;
  v134 = v37;
  v131 = v40;
  v132 = v39;
  v41 = sub_190C17438();
  v42 = v41;
  if (v41 >> 62)
  {
    v43 = sub_190D581C0();
  }

  else
  {
    v43 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v43)
  {
    if (v43 < 1)
    {
      __break(1u);
      goto LABEL_39;
    }

    v44 = 0;
    v3 = v42 & 0xC000000000000001;
    do
    {
      if (v3)
      {
        v45 = MEMORY[0x193AF3B90](v44, v42);
      }

      else
      {
        v45 = *(v42 + 8 * v44 + 32);
      }

      v46 = v45;
      ++v44;
      [v45 setCenter_];
      [v46 setBounds_];
      v47 = [v46 layer];
      [v47 setCornerRadius_];
    }

    while (v43 != v44);
  }

  v48 = sub_190C17330();
  v49 = v48;
  if (v48 >> 62)
  {
    v50 = sub_190D581C0();
    if (!v50)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v50 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v50)
    {
      goto LABEL_20;
    }
  }

  if (v50 < 1)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v51 = 0;
  v3 = v49 & 0xC000000000000001;
  do
  {
    if (v3)
    {
      v52 = MEMORY[0x193AF3B90](v51, v49);
    }

    else
    {
      v52 = *(v49 + 8 * v51 + 32);
    }

    v53 = v52;
    ++v51;
    [v52 setCenter_];
    [v53 setBounds_];
    v54 = [v53 layer];
    [v54 setCornerRadius_];
  }

  while (v50 != v51);
LABEL_20:

  v55 = sub_190C17354();
  v56 = v55;
  if (v55 >> 62)
  {
    v57 = sub_190D581C0();
    v139 = v23;
    if (!v57)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v57 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v139 = v23;
    if (!v57)
    {
      goto LABEL_29;
    }
  }

  if (v57 < 1)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v58 = 0;
  do
  {
    if ((v56 & 0xC000000000000001) != 0)
    {
      v59 = MEMORY[0x193AF3B90](v58, v56);
    }

    else
    {
      v59 = *(v56 + 8 * v58 + 32);
    }

    v60 = v59;
    ++v58;
    [v59 setCenter_];
    [v60 setBounds_];
    v61 = [v60 layer];
    [v61 setCornerRadius_];
  }

  while (v57 != v58);
LABEL_29:

  [v18 setCenter_];
  v62 = [v18 layer];
  v63 = sub_190D51C70();
  v64 = sub_190D56ED0();
  [v62 setValue:v63 forKeyPath:v64];

  v130 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:575.0 damping:85.0 initialVelocity:{0.0, 0.0}];
  v121 = v18;
  v65 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v130 timingParameters:0.0];
  v66 = swift_allocObject();
  *(v66 + 2) = v2;
  *(v66 + 3) = v122;
  *(v66 + 4) = v21;
  *(v66 + 5) = v139;
  *(v66 + 6) = v140;
  v66[7] = v11;
  v66[8] = v13;
  v66[9] = v15;
  v66[10] = v17;
  *(v66 + 11) = v138;
  *(v66 + 12) = v137;
  *(v66 + 13) = v136;
  *(v66 + 14) = v135;
  *(v66 + 15) = v134;
  *(v66 + 16) = v133;
  *(v66 + 17) = v132;
  *(v66 + 18) = v131;
  v145 = sub_19086177C;
  v146 = v66;
  aBlock = MEMORY[0x1E69E9820];
  *&a1 = 1107296256;
  v142 = 1107296256;
  v143 = sub_190840E6C;
  v144 = &block_descriptor_215;
  v67 = _Block_copy(&aBlock);
  v68 = v2;

  v129 = v65;
  [v65 addAnimations_];
  _Block_release(v67);
  [v65 startAnimationAfterDelay_];
  v128 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:875.0 applicationActivities:{85.0, 0.0, 0.0} + 3];
  v69 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v128 timingParameters:0.0];
  v70 = swift_allocObject();
  *(v70 + 2) = v68;
  *(v70 + 3) = v122;
  *(v70 + 4) = v21;
  *(v70 + 5) = v139;
  *(v70 + 6) = v140;
  v70[7] = v11;
  v70[8] = v13;
  v70[9] = v15;
  v70[10] = v17;
  v145 = sub_190861794;
  v146 = v70;
  aBlock = MEMORY[0x1E69E9820];
  v142 = 1107296256;
  v143 = sub_190840E6C;
  v144 = &block_descriptor_221;
  v71 = _Block_copy(&aBlock);
  v72 = v68;

  v127 = v69;
  [v69 addAnimations_];
  _Block_release(v71);
  [v69 startAnimationAfterDelay_];
  v140 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:975.0 applicationActivities:{85.0, 0.0, 0.0} + 3];
  v73 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v140 timingParameters:0.0];
  v74 = swift_allocObject();
  *(v74 + 2) = v72;
  *(v74 + 3) = v126;
  *(v74 + 4) = v125;
  *(v74 + 5) = v124;
  *(v74 + 6) = v123;
  v145 = sub_1908617AC;
  v146 = v74;
  aBlock = MEMORY[0x1E69E9820];
  v142 = 1107296256;
  v143 = sub_190840E6C;
  v144 = &block_descriptor_227;
  v75 = _Block_copy(&aBlock);
  v76 = v72;

  [v73 addAnimations_];
  _Block_release(v75);
  [v73 startAnimationAfterDelay_];
  v77 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  sub_190A86CA4(v77);

  v78 = [v121 layer];
  v79 = sub_190D51C70();
  v80 = sub_190D56ED0();
  [v78 setValue:v79 forKeyPath:v80];

  v81 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:775.0 damping:85.0 initialVelocity:{0.0, 0.0}];
  v82 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v81 timingParameters:0.0];
  v83 = swift_allocObject();
  *(v83 + 16) = v76;
  v145 = sub_1908617BC;
  v146 = v83;
  aBlock = MEMORY[0x1E69E9820];
  v142 = 1107296256;
  v84 = v127;
  v143 = sub_190840E6C;
  v144 = &block_descriptor_233;
  v85 = _Block_copy(&aBlock);
  v86 = v76;
  v87 = v82;
  v88 = v128;

  [v87 addAnimations_];
  v89 = v85;
  v90 = v130;
  _Block_release(v89);
  v91 = v140;
  [v87 &selRef:0.3 ck:? applyGlassBackgroundWithFlexible:?];
  v92 = v129;
  if (v86[OBJC_IVAR___CKTapbackPlatterView_showTail] != 1)
  {
LABEL_52:

    return;
  }

  v125 = v81;
  v139 = v73;
  v18 = v86;
  v93 = sub_190C17460();
  v3 = v93;
  v126 = v87;
  if (v93 >> 62)
  {
LABEL_41:
    v94 = sub_190D581C0();
    if (!v94)
    {
      goto LABEL_42;
    }

    goto LABEL_32;
  }

  v94 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v94)
  {
    goto LABEL_42;
  }

LABEL_32:
  if (v94 < 1)
  {
    __break(1u);
    goto LABEL_54;
  }

  v95 = 0;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v96 = MEMORY[0x193AF3B90](v95, v3);
    }

    else
    {
      v96 = *(v3 + 8 * v95 + 32);
    }

    v97 = v96;
    ++v95;
    v147.origin.x = v11;
    v147.origin.y = v13;
    v147.size.width = v15;
    v147.size.height = v17;
    MidX = CGRectGetMidX(v147);
    v148.origin.x = v11;
    v148.origin.y = v13;
    v148.size.width = v15;
    v148.size.height = v17;
    [v97 setCenter_];
    [v97 setBounds_];
    v99 = [v97 layer];
    [v99 setCornerRadius_];
  }

  while (v94 != v95);
LABEL_42:

  v100 = sub_190C17558();
  v101 = v100;
  if (!(v100 >> 62))
  {
    v102 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v102)
    {
      goto LABEL_44;
    }

LABEL_51:

    v108 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:1275.0 damping:75.0 initialVelocity:{0.0, 0.0}];
    v109 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v108 timingParameters:0.0];
    v110 = swift_allocObject();
    *(v110 + 2) = v18;
    *(v110 + 3) = v138;
    *(v110 + 4) = v137;
    *(v110 + 5) = v136;
    *(v110 + 6) = v135;
    *(v110 + 7) = v134;
    *(v110 + 8) = v133;
    *(v110 + 9) = v132;
    *(v110 + 10) = v131;
    *(v110 + 11) = v120;
    *(v110 + 12) = v119;
    *(v110 + 13) = v118;
    *(v110 + 14) = v117;
    *(v110 + 15) = v116;
    *(v110 + 16) = v115;
    *(v110 + 17) = v114;
    *(v110 + 18) = v113;
    v145 = sub_1908617C4;
    v146 = v110;
    aBlock = MEMORY[0x1E69E9820];
    v142 = *&a1;
    v143 = sub_190840E6C;
    v144 = &block_descriptor_239;
    v111 = _Block_copy(&aBlock);
    v112 = v18;

    [v109 addAnimations_];
    _Block_release(v111);
    [v109 startAnimationAfterDelay_];

    v92 = v129;
    v90 = v130;
    v84 = v127;
    v88 = v128;
    v91 = v140;
    v73 = v139;
    v81 = v125;
    v87 = v126;
    goto LABEL_52;
  }

  v102 = sub_190D581C0();
  if (!v102)
  {
    goto LABEL_51;
  }

LABEL_44:
  if (v102 >= 1)
  {
    v103 = 0;
    do
    {
      if ((v101 & 0xC000000000000001) != 0)
      {
        v104 = MEMORY[0x193AF3B90](v103, v101);
      }

      else
      {
        v104 = *(v101 + 8 * v103 + 32);
      }

      v105 = v104;
      ++v103;
      v149.origin.x = v11;
      v149.origin.y = v13;
      v149.size.width = v15;
      v149.size.height = v17;
      v106 = CGRectGetMidX(v149);
      v150.origin.x = v11;
      v150.origin.y = v13;
      v150.size.width = v15;
      v150.size.height = v17;
      [v105 setCenter_];
      [v105 setBounds_];
      v107 = [v105 layer];
      [v107 setCornerRadius_];
    }

    while (v102 != v103);
    goto LABEL_51;
  }

LABEL_54:
  __break(1u);
}

unint64_t sub_1908602D0(uint64_t a1)
{
  result = sub_190C17460();
  v3 = result;
  if (result >> 62)
  {
    result = sub_190D581C0();
    v4 = result;
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    if (v4 < 1)
    {
      __break(1u);
      goto LABEL_24;
    }

    v5 = 0;
    v6 = *(a1 + OBJC_IVAR___CKTapbackPlatterView_backgroundSolidStroke);
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x193AF3B90](v5, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      ++v5;
      [v6 center];
      [v8 setCenter_];
      [v8 setBounds_];
      v9 = [v8 layer];
      [v9 setCornerRadius_];
    }

    while (v4 != v5);
  }

  result = sub_190C17558();
  v10 = result;
  if (result >> 62)
  {
    result = sub_190D581C0();
    v11 = result;
    if (result)
    {
LABEL_12:
      if (v11 >= 1)
      {
        v12 = 0;
        v13 = *(a1 + OBJC_IVAR___CKTapbackPlatterView_mediumTail);
        do
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x193AF3B90](v12, v10);
          }

          else
          {
            v14 = *(v10 + 8 * v12 + 32);
          }

          v15 = v14;
          ++v12;
          [v13 center];
          [v15 setCenter_];
          [v15 setBounds_];
          v16 = [v15 layer];
          [v16 setCornerRadius_];
        }

        while (v11 != v12);
        goto LABEL_20;
      }

LABEL_24:
      __break(1u);
      return result;
    }
  }

  else
  {
    v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_12;
    }
  }

LABEL_20:
}

void sub_190860524(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___CKTapbackPlatterView_contentView);
  v2 = [v1 layer];
  v3 = sub_190D51C70();
  v4 = sub_190D56ED0();
  [v2 setValue:v3 forKeyPath:v4];

  v5 = [objc_opt_self() sharedBehaviors];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 usesTapbackRefreshStyling];

    if (v7)
    {

      [v1 setAlpha_];
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_19086063C(uint64_t a1)
{
  result = sub_190C1730C();
  v3 = result;
  if (result >> 62)
  {
    result = sub_190D581C0();
    v4 = result;
    if (!result)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = *(a1 + OBJC_IVAR___CKTapbackPlatterView_contentBackground);
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x193AF3B90](v5, v3);
    }

    else
    {
      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    ++v5;
    [v6 bounds];
    if (v9 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    v12 = v11 * 0.5;
    [v8 setBounds_];
    v13 = [v8 layer];
    [v13 setCornerRadius_];

    [v6 center];
    [v8 setCenter_];
  }

  while (v4 != v5);
LABEL_13:
}

unint64_t sub_1908607BC(uint64_t a1, double a2)
{
  result = sub_190C17438();
  v5 = result;
  if (result >> 62)
  {
    result = sub_190D581C0();
    v6 = result;
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    if (v6 < 1)
    {
      __break(1u);
      return result;
    }

    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x193AF3B90](v7, v5);
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      [v8 center];
      [v9 setCenter_];
    }

    while (v6 != v7);
  }

  v10 = *(a1 + OBJC_IVAR___CKTapbackPlatterView_contentView);
  [v10 center];

  return [v10 setCenter_];
}

unint64_t sub_1908608E0(char *a1)
{
  result = sub_190C17438();
  v2 = result;
  if (result >> 62)
  {
    result = sub_190D581C0();
    v3 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x193AF3B90](v4, v2);
    }

    else
    {
      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    ++v4;
    [v5 center];
    [v6 setCenter_];
    [v6 setBounds_];
    v7 = [v6 layer];
    [v7 setCornerRadius_];
  }

  while (v3 != v4);
LABEL_10:

  v8 = *&a1[OBJC_IVAR___CKTapbackPlatterView_contentView];
  [*&a1[OBJC_IVAR___CKTapbackPlatterView_backgroundSolidStroke] center];
  [v8 center];
  [v8 setCenter_];
  [a1 setNeedsLayout];

  return [a1 layoutIfNeeded];
}

unint64_t sub_190860AB0(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17)
{
  v32 = *(a1 + OBJC_IVAR___CKTapbackPlatterView_contentView);
  CGRectGetMidX(*&a2);
  v62.origin.x = a2;
  v62.origin.y = a3;
  v62.size.width = a4;
  v62.size.height = a5;
  CGRectGetMidY(v62);
  [v32 center];
  [v32 setCenter_];
  v33 = [v32 layer];
  v34 = sub_190D51C70();
  v35 = sub_190D56ED0();
  [v33 setValue:v34 forKeyPath:v35];

  result = sub_190C17438();
  v37 = result;
  if (result >> 62)
  {
    result = sub_190D581C0();
    v38 = result;
  }

  else
  {
    v38 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v38)
  {
    if (v38 < 1)
    {
      __break(1u);
      goto LABEL_40;
    }

    v39 = 0;
    if (a8 >= a9)
    {
      v40 = a9;
    }

    else
    {
      v40 = a8;
    }

    v41 = v40 * 0.5;
    do
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x193AF3B90](v39, v37);
      }

      else
      {
        v42 = *(v37 + 8 * v39 + 32);
      }

      v43 = v42;
      ++v39;
      v63.origin.x = a6;
      v63.origin.y = a7;
      v63.size.width = a8;
      v63.size.height = a9;
      CGRectGetMidX(v63);
      v64.origin.x = a6;
      v64.origin.y = a7;
      v64.size.width = a8;
      v64.size.height = a9;
      CGRectGetMidY(v64);
      [v43 center];
      [v43 setCenter_];
      [v43 setBounds_];
      v44 = [v43 layer];
      [v44 setCornerRadius_];
    }

    while (v38 != v39);
  }

  result = sub_190C17460();
  v45 = result;
  if (result >> 62)
  {
    result = sub_190D581C0();
    v46 = result;
    if (!result)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v46 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v46)
    {
      goto LABEL_25;
    }
  }

  if (v46 < 1)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v47 = 0;
  v48 = a13;
  if (a12 < a13)
  {
    v48 = a12;
  }

  v49 = v48 * 0.5;
  do
  {
    if ((v45 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x193AF3B90](v47, v45);
    }

    else
    {
      v50 = *(v45 + 8 * v47 + 32);
    }

    v51 = v50;
    ++v47;
    v65.origin.x = a6;
    v65.origin.y = a7;
    v65.size.width = a8;
    v65.size.height = a9;
    CGRectGetMidX(v65);
    v66.origin.x = a6;
    v66.origin.y = a7;
    v66.size.width = a8;
    v66.size.height = a9;
    CGRectGetMidY(v66);
    [v51 center];
    [v51 setCenter_];
    [v51 setBounds_];
    v52 = [v51 layer];
    [v52 setCornerRadius_];
  }

  while (v46 != v47);
LABEL_25:

  result = sub_190C17558();
  v53 = result;
  if (result >> 62)
  {
    result = sub_190D581C0();
    v54 = result;
    if (result)
    {
LABEL_27:
      if (v54 >= 1)
      {
        v55 = 0;
        v56 = a17;
        if (a16 < a17)
        {
          v56 = a16;
        }

        v57 = v56 * 0.5;
        do
        {
          if ((v53 & 0xC000000000000001) != 0)
          {
            v58 = MEMORY[0x193AF3B90](v55, v53);
          }

          else
          {
            v58 = *(v53 + 8 * v55 + 32);
          }

          v59 = v58;
          ++v55;
          v67.origin.x = a6;
          v67.origin.y = a7;
          v67.size.width = a8;
          v67.size.height = a9;
          CGRectGetMidX(v67);
          v68.origin.x = a6;
          v68.origin.y = a7;
          v68.size.width = a8;
          v68.size.height = a9;
          CGRectGetMidY(v68);
          [v59 center];
          [v59 setCenter_];
          [v59 setBounds_];
          v60 = [v59 layer];
          [v60 setCornerRadius_];
        }

        while (v54 != v55);
        goto LABEL_36;
      }

LABEL_41:
      __break(1u);
      return result;
    }
  }

  else
  {
    v54 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v54)
    {
      goto LABEL_27;
    }
  }

LABEL_36:
}

unint64_t sub_190860FC4(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v17 = *(a1 + OBJC_IVAR___CKTapbackPlatterView_contentView);
  MidX = CGRectGetMidX(*&a2);
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  [v17 center];
  [v17 setCenter_];
  result = sub_190C17438();
  v19 = result;
  if (result >> 62)
  {
    result = sub_190D581C0();
    v20 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v20 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_10;
    }
  }

  if (v20 < 1)
  {
    __break(1u);
    goto LABEL_32;
  }

  v21 = 0;
  do
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x193AF3B90](v21, v19);
    }

    else
    {
      v22 = *(v19 + 8 * v21 + 32);
    }

    v23 = v22;
    ++v21;
    v40.origin.x = a6;
    v40.origin.y = a7;
    v40.size.width = a8;
    v40.size.height = a9;
    v24 = CGRectGetMidX(v40);
    v41.origin.x = a6;
    v41.origin.y = a7;
    v41.size.width = a8;
    v41.size.height = a9;
    [v23 center];
    [v23 setCenter_];
  }

  while (v20 != v21);
LABEL_10:

  result = sub_190C17460();
  v25 = result;
  if (result >> 62)
  {
    result = sub_190D581C0();
    v26 = result;
    if (!result)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v26 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_19;
    }
  }

  if (v26 < 1)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v27 = 0;
  do
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x193AF3B90](v27, v25);
    }

    else
    {
      v28 = *(v25 + 8 * v27 + 32);
    }

    v29 = v28;
    ++v27;
    v42.origin.x = a6;
    v42.origin.y = a7;
    v42.size.width = a8;
    v42.size.height = a9;
    v30 = CGRectGetMidX(v42);
    v43.origin.x = a6;
    v43.origin.y = a7;
    v43.size.width = a8;
    v43.size.height = a9;
    [v29 center];
    [v29 setCenter_];
  }

  while (v26 != v27);
LABEL_19:

  result = sub_190C17558();
  v31 = result;
  if (result >> 62)
  {
    result = sub_190D581C0();
    v32 = result;
    if (result)
    {
LABEL_21:
      if (v32 >= 1)
      {
        v33 = 0;
        do
        {
          if ((v31 & 0xC000000000000001) != 0)
          {
            v34 = MEMORY[0x193AF3B90](v33, v31);
          }

          else
          {
            v34 = *(v31 + 8 * v33 + 32);
          }

          v35 = v34;
          ++v33;
          v44.origin.x = a6;
          v44.origin.y = a7;
          v44.size.width = a8;
          v44.size.height = a9;
          v36 = CGRectGetMidX(v44);
          v45.origin.x = a6;
          v45.origin.y = a7;
          v45.size.width = a8;
          v45.size.height = a9;
          [v35 center];
          [v35 setCenter_];
        }

        while (v32 != v33);
        goto LABEL_28;
      }

LABEL_33:
      __break(1u);
      return result;
    }
  }

  else
  {
    v32 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_21;
    }
  }

LABEL_28:
}

unint64_t sub_190861310(double a1, double a2, double a3, double a4)
{
  result = sub_190C1730C();
  v7 = result;
  if (result >> 62)
  {
    result = sub_190D581C0();
    v8 = result;
    if (!result)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return result;
  }

  v9 = 0;
  if (a3 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a3;
  }

  v11 = v10 * 0.5;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x193AF3B90](v9, v7);
    }

    else
    {
      v12 = *(v7 + 8 * v9 + 32);
    }

    v13 = v12;
    ++v9;
    [v12 setBounds_];
    v14 = [v13 layer];
    [v14 setCornerRadius_];
  }

  while (v8 != v9);
LABEL_13:
}

void sub_190861454(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR___CKTapbackPlatterView_contentView) layer];
  v2 = sub_190D51C70();
  v3 = sub_190D56ED0();
  [v1 setValue:v2 forKeyPath:v3];
}

unint64_t sub_190861500(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17)
{
  [*(a1 + OBJC_IVAR___CKTapbackPlatterView_mediumTail) setFrame_];
  [*(a1 + OBJC_IVAR___CKTapbackPlatterView_smallTail) setFrame_];
  result = sub_190C17330();
  v26 = result;
  if (result >> 62)
  {
    result = sub_190D581C0();
    v27 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v27 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v27)
    {
      goto LABEL_10;
    }
  }

  if (v27 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  for (i = 0; i != v27; ++i)
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x193AF3B90](i, v26);
    }

    else
    {
      v29 = *(v26 + 8 * i + 32);
    }

    v30 = v29;
    [v29 setFrame_];
  }

LABEL_10:

  result = sub_190C17354();
  v31 = result;
  if (result >> 62)
  {
    result = sub_190D581C0();
    v32 = result;
    if (result)
    {
LABEL_12:
      if (v32 >= 1)
      {
        for (j = 0; j != v32; ++j)
        {
          if ((v31 & 0xC000000000000001) != 0)
          {
            v34 = MEMORY[0x193AF3B90](j, v31);
          }

          else
          {
            v34 = *(v31 + 8 * j + 32);
          }

          v35 = v34;
          [v34 setFrame_];
        }

        goto LABEL_19;
      }

LABEL_23:
      __break(1u);
      return result;
    }
  }

  else
  {
    v32 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_12;
    }
  }

LABEL_19:
}

unint64_t sub_190861700()
{
  result = qword_1EAD46530;
  if (!qword_1EAD46530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD46530);
  }

  return result;
}

Swift::Void __swiftcall CKUnknownSendersOnboardingController.viewDidLoad()()
{
  v1 = v0;
  v2 = sub_190D55190();
  MEMORY[0x1EEE9AC00](v2);
  v53.receiver = v0;
  v53.super_class = CKUnknownSendersOnboardingController;
  objc_msgSendSuper2(&v53, sel_viewDidLoad);
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD548C8));
  v4 = sub_190D54B60();
  v5 = [v4 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = v5;
  v7 = [objc_opt_self() clearColor];
  [v6 setBackgroundColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD548D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_190DD1D90;
  sub_190D55170();
  sub_1908621A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD548E0);
  sub_1908621F8();
  sub_190D58170();
  sub_190D54B30();
  v9 = [v4 view];
  if (!v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];

  [v1 addChildViewController_];
  v11 = [v1 contentView];
  v12 = [v4 view];
  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v12;
  [v11 addSubview_];

  v14 = [v1 contentView];
  v15 = [v4 view];
  if (!v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = v15;
  [v14 bringSubviewToFront_];

  v17 = [v1 contentView];
  [v17 setClipsToBounds_];

  [v4 didMoveToParentViewController_];
  v18 = [v1 navigationController];
  [v18 setNavigationBarHidden_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_190DD5CE0;
  v20 = [v4 view];
  if (!v20)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = v20;
  v22 = [v20 topAnchor];

  v23 = [v1 contentView];
  v24 = [v23 topAnchor];

  v25 = [v22 constraintEqualToAnchor:v24 constant:25.0];
  *(v19 + 32) = v25;
  v26 = [v4 view];

  if (!v26)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v27 = [v26 centerXAnchor];

  v28 = [v1 contentView];
  v29 = [v28 centerXAnchor];

  v30 = [v27 constraintEqualToAnchor_];
  *(v19 + 40) = v30;
  v31 = objc_opt_self();
  sub_19086225C();
  v32 = sub_190D57160();

  [v31 activateConstraints_];

  v33 = [v1 navigationItem];
  v51 = 0u;
  v52 = 0u;
  v34 = sub_190D56ED0();
  v35 = objc_allocWithZone(MEMORY[0x1E69DC708]);
  v36 = [v35 initWithTitle:v34 style:0 target:0 action:{0, v51, v52}];

  swift_unknownObjectRelease();
  [v33 setBackBarButtonItem_];

  v37 = [objc_opt_self() boldButton];
  v38 = CKFrameworkBundle();
  if (!v38)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v39 = v38;
  v40 = sub_190D56ED0();
  v41 = sub_190D56ED0();
  v42 = [v39 localizedStringForKey:v40 value:0 table:v41];

  if (!v42)
  {
    sub_190D56F10();
    v42 = sub_190D56ED0();
  }

  [v37 setTitle:v42 forState:0];

  [v37 addTarget:v1 action:sel_turnOnScreeningButtonAction forControlEvents:64];
  v43 = [objc_opt_self() linkButton];
  v44 = CKFrameworkBundle();
  if (!v44)
  {
    goto LABEL_21;
  }

  v45 = v44;
  v46 = sub_190D56ED0();
  v47 = sub_190D56ED0();
  v48 = [v45 localizedStringForKey:v46 value:0 table:v47];

  if (!v48)
  {
    sub_190D56F10();
    v48 = sub_190D56ED0();
  }

  [v43 setTitle:v48 forState:0];

  [v43 addTarget:v1 action:sel_setUpLaterButtonAction forControlEvents:64];
  v49 = [v1 buttonTray];
  [v49 addButton_];

  v50 = [v1 buttonTray];
  [v50 addButton_];
}

unint64_t sub_1908621A0()
{
  result = qword_1EAD548D8;
  if (!qword_1EAD548D8)
  {
    sub_190D55190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD548D8);
  }

  return result;
}

unint64_t sub_1908621F8()
{
  result = qword_1EAD548E8;
  if (!qword_1EAD548E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD548E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD548E8);
  }

  return result;
}

unint64_t sub_19086225C()
{
  result = qword_1EAD45040;
  if (!qword_1EAD45040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD45040);
  }

  return result;
}

void sub_190862404(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v56 - v5);
  v7 = [v2 inputContextHistory];
  v8 = [v7 tiInputContextHistory];

  v9 = [objc_allocWithZone(MEMORY[0x1E69D9328]) initWithTIInputContextHistory_];
  if (v9)
  {
    v58 = v2;
    if (a1 >> 62)
    {
LABEL_33:
      v10 = sub_190D581C0();
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v57 = v9;
    v59 = v6;
    if (v10)
    {
      v11 = 0;
      v9 = (a1 & 0xC000000000000001);
      v60 = MEMORY[0x1E69E7CC0];
      v6 = off_1E72E5000;
      do
      {
        v12 = v11;
        while (1)
        {
          if (v9)
          {
            v13 = MEMORY[0x193AF3B90](v12, a1);
          }

          else
          {
            if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_32;
            }

            v13 = *(a1 + 8 * v12 + 32);
          }

          v14 = v13;
          v11 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          objc_opt_self();
          v15 = swift_dynamicCastObjCClass();
          if (v15)
          {
            v16 = [v15 messageItem];
            if (!v16)
            {
              __break(1u);
              return;
            }

            v17 = v16;
            v18 = [v16 guid];

            if (v18)
            {
              break;
            }
          }

          ++v12;
          if (v11 == v10)
          {
            goto LABEL_24;
          }
        }

        v19 = sub_190D56F10();
        v21 = v20;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v60 = sub_1908354D4(0, *(v60 + 2) + 1, 1, v60);
        }

        v24 = *(v60 + 2);
        v23 = *(v60 + 3);
        if (v24 >= v23 >> 1)
        {
          v60 = sub_1908354D4((v23 > 1), v24 + 1, 1, v60);
        }

        v25 = v60;
        *(v60 + 2) = v24 + 1;
        v26 = &v25[16 * v24];
        *(v26 + 4) = v19;
        *(v26 + 5) = v21;
      }

      while (v11 != v10);
    }

    else
    {
      v60 = MEMORY[0x1E69E7CC0];
    }

LABEL_24:
    v27 = sub_190820FDC(MEMORY[0x1E69E7CC0]);
    v28 = sub_190D53070();
    v29 = sub_190D53050();
    v31 = v30;
    v32 = [objc_allocWithZone(MEMORY[0x1E69D9370]) init];
    v33 = [v32 nextToken];

    v64 = MEMORY[0x1E69E6810];
    *&v63 = v33;
    sub_190824530(&v63, v62);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v61 = v27;
    sub_190C1BE80(v62, v29, v31, v34);

    v35 = v61;
    v36 = getpid();
    v64 = MEMORY[0x1E69E72F0];
    LODWORD(v63) = v36;
    sub_190824530(&v63, v62);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v61 = v35;
    sub_190C1BE80(v62, 0xD000000000000011, 0x8000000190E5F0C0, v37);
    v38 = v61;
    v39 = [objc_allocWithZone(v28) init];
    if (qword_1EAD46248 != -1)
    {
      swift_once();
    }

    v40 = sub_190D53040();
    __swift_project_value_buffer(v40, qword_1EAD9D790);
    v41 = v60;
    sub_190D52690();
    v42 = sub_190D53020();
    v43 = sub_190D576C0();
    v44 = os_log_type_enabled(v42, v43);
    v46 = v58;
    v45 = v59;
    v47 = v57;
    if (v44)
    {
      v48 = swift_slowAlloc();
      *v48 = 134217984;
      *(v48 + 4) = *(v41 + 2);

      _os_log_impl(&dword_19020E000, v42, v43, "Beginning emoji smart replies request for guids of count: %ld", v48, 0xCu);
      MEMORY[0x193AF7A40](v48, -1, -1);
    }

    else
    {
    }

    v49 = sub_190D572E0();
    (*(*(v49 - 8) + 56))(v45, 1, 1, v49);
    sub_190D572A0();
    v50 = v39;
    v51 = v47;
    v52 = v46;
    v53 = sub_190D57290();
    v54 = swift_allocObject();
    v55 = MEMORY[0x1E69E85E0];
    v54[2] = v53;
    v54[3] = v55;
    v54[4] = v50;
    v54[5] = v51;
    v54[6] = v41;
    v54[7] = v38;
    v54[8] = v52;
    sub_190857E08(0, 0, v45, &unk_190DD7FF8, v54);
  }
}

uint64_t sub_19086296C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_190D572A0();
  v8[7] = sub_190D57290();
  v10 = sub_190D57240();
  v8[8] = v10;
  v8[9] = v9;

  return MEMORY[0x1EEE6DFA0](sub_190862A0C, v10, v9);
}

uint64_t sub_190862A0C()
{
  v1 = v0[5];
  v2 = sub_190D53060();
  v0[10] = v2;
  v3 = *(v2 - 8);
  v0[11] = v3;
  v4 = swift_task_alloc();
  v0[12] = v4;
  (*(v3 + 104))();
  v9 = (*MEMORY[0x1E69C9AF8] + MEMORY[0x1E69C9AF8]);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_190862B5C;
  v7 = v0[3];
  v6 = v0[4];

  return v9(v7, v6, v4, v1);
}

uint64_t sub_190862B5C(uint64_t a1)
{
  v4 = *v2;
  v4[14] = v1;

  v5 = v4[11];
  if (v1)
  {
    (*(v5 + 8))(v4[12], v4[10]);
    v6 = v4[8];
    v7 = v4[9];
    v8 = sub_190862CFC;
  }

  else
  {
    v4[15] = a1;
    (*(v5 + 8))();

    v6 = v4[8];
    v7 = v4[9];
    v8 = sub_190862EA4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_190862CFC()
{

  if (qword_1EAD46248 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D790);
  v3 = v1;
  v4 = sub_190D53020();
  v5 = sub_190D576A0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 112);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_19020E000, v4, v5, "Found error requesting smartEmojiResponses: %@", v8, 0xCu);
    sub_190830D58(v9);
    MEMORY[0x193AF7A40](v9, -1, -1);
    MEMORY[0x193AF7A40](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_190862EA4()
{
  v17 = v0;
  v1 = v0[6];
  v2 = sub_190D52690();
  v3 = sub_190863250(v2);

  sub_190D50920();
  v4 = [v1 cachedEmojiResponses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
  v5 = sub_190D56D90();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v5;
  sub_19086387C(v3, sub_190863758, 0, isUniquelyReferenced_nonNull_native, &v16);

  v7 = sub_190D56D60();

  [v1 setCachedEmojiResponses_];

  if (qword_1EAD46248 != -1)
  {
    swift_once();
  }

  v8 = sub_190D53040();
  __swift_project_value_buffer(v8, qword_1EAD9D790);
  sub_190D52690();
  v9 = sub_190D53020();
  v10 = sub_190D576C0();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[4];
  if (v11)
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = *(v12 + 16);

    _os_log_impl(&dword_19020E000, v9, v10, "Merged emoji smart replies request for guids of count: %ld", v13, 0xCu);
    MEMORY[0x193AF7A40](v13, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

unint64_t sub_190863204()
{
  result = qword_1EAD450F0;
  if (!qword_1EAD450F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD450F0);
  }

  return result;
}

unint64_t *sub_190863250(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  sub_190D50920();
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1908633B0(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_19086349C(v8, v4, v2);
  result = MEMORY[0x193AF7A40](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1908633B0(unint64_t *result, uint64_t a2, uint64_t a3)
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
    if (*(*(*(a3 + 56) + 8 * v11) + 16))
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_190863514(result, a2, v4, a3);
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
      return sub_190863514(result, a2, v4, a3);
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

unint64_t *sub_19086349C(unint64_t *result, uint64_t a2, uint64_t a3)
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

    v6 = sub_1908633B0(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_190863514(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    sub_190D50920();
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E1F0);
  result = sub_190D585A0();
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
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_190D58870();
    sub_190D52690();
    sub_190D52690();
    sub_190D56FC0();
    result = sub_190D588C0();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
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

uint64_t sub_190863758@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  sub_190D52690();

  return sub_190D52690();
}

uint64_t sub_1908637A0(uint64_t a1)
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
  v11[1] = sub_190221DA4;

  return sub_19086296C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_19086387C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;
  sub_190D52690();
  sub_190D50920();
  v11 = 0;
  v36 = v6;
  while (v9)
  {
    v39 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v14);
    v43[0] = *v15;
    v43[1] = v16;
    v43[2] = v17;
    sub_190D52690();
    sub_190D52690();
    a2(&v40, v43);

    v18 = v40;
    v19 = v41;
    v20 = v42;
    v21 = *v44;
    v23 = sub_19022DCEC(v40, v41);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((v39 & 1) == 0)
      {
        sub_190B67F8C();
      }
    }

    else
    {
      sub_190B62D88(v26, v39 & 1);
      v28 = sub_19022DCEC(v18, v19);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_27;
      }

      v23 = v28;
    }

    v9 &= v9 - 1;
    v30 = *v44;
    if (v27)
    {

      *(v30[7] + 8 * v23) = v20;
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      v31 = (v30[6] + 16 * v23);
      *v31 = v18;
      v31[1] = v19;
      *(v30[7] + 8 * v23) = v20;
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v30[2] = v34;
    }

    a4 = 1;
    v11 = v12;
    v6 = v36;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_190219C78();
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v39 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_190D587C0();
  __break(1u);
  return result;
}

void sub_190863B08()
{
  v1 = [v0 textView];
  if (v1)
  {

    v2 = [v0 textView];
    if (!v2)
    {
      __break(1u);
      goto LABEL_11;
    }

    v3 = v2;
    [v2 ck_moveFloatingCursorToOriginOfDocument];
  }

  v4 = [v0 subjectView];
  if (!v4)
  {
    return;
  }

  v5 = [v0 subjectView];
  if (!v5)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 ck_moveFloatingCursorToOriginOfDocument];
}

uint64_t sub_190863D34()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_190863D94(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CKTapbackLegacyView_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190863E2C;
}

void sub_190863E2C(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_190863EF4()
{
  v1 = OBJC_IVAR___CKTapbackLegacyView_isSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_190863FA4(char a1)
{
  v3 = OBJC_IVAR___CKTapbackLegacyView_isSelected;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_190863FFC(v4);
}

void sub_190863FFC(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR___CKTapbackLegacyView_isSelected;
  swift_beginAccess();
  if (v1[v3] != v2)
  {
    v4 = OBJC_IVAR___CKTapbackLegacyView_glyphView;
    v5 = *&v1[OBJC_IVAR___CKTapbackLegacyView_glyphView];
    if (v5)
    {
      v6 = v5;
      v7 = [v6 acknowledgmentType];
      if (v7 == 2000)
      {
        v8 = 3;
      }

      else
      {
        v8 = 4;
      }

      if (v1[v3])
      {
        v9 = v8;
      }

      else
      {
        v9 = 0xFFFFFFFFLL;
      }

      v10 = [objc_opt_self() glyphViewForAcknowledgmentType:v7 glyphColor:v9];
      v11 = v10;
      v12 = *&v1[v4];
      *&v1[v4] = v10;
      if (v12)
      {
        v13 = v12;
        v14 = v11;
        v15 = [v13 superview];
        if (v15)
        {
          v16 = v15;
          sub_190861700();
          v17 = v1;
          v18 = sub_190D57D90();

          if (v18)
          {
            [v13 removeFromSuperview];
          }
        }

        if (!*&v1[v4])
        {
          goto LABEL_15;
        }
      }

      else
      {
        v19 = v10;
        if (!v11)
        {
          goto LABEL_15;
        }
      }

      [v1 addSubview_];
LABEL_15:
    }
  }
}

void (*sub_190864194(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CKTapbackLegacyView_isSelected;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_190864228;
}

void sub_190864228(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  sub_190863FFC(v5);

  free(v1);
}

double CGSizePxCenteredInRect(double a1, double a2, double a3, double a4, double a5)
{
  v8 = CKMainScreenScale_once_107;
  v9 = &__block_literal_global_301;
  if (v8 != -1)
  {
    dispatch_once(&CKMainScreenScale_once_107, &__block_literal_global_301);
  }

  v10 = 1.0;
  if (*&CKMainScreenScale_sMainScreenScale_107 != 0.0)
  {
    v10 = *&CKMainScreenScale_sMainScreenScale_107;
  }

  return floor((a3 + (a5 - a1) * 0.5) * v10) / v10;
}

void sub_190864450(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = CKMessageAcknowledgmentTypeFromIMAssociatedMessageType(a1);
  if (v5 == 2000)
  {
    v6 = 3;
  }

  else
  {
    v6 = 4;
  }

  if (a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  v8 = [objc_opt_self() glyphViewForAcknowledgmentType:v5 glyphColor:v7];
  v9 = OBJC_IVAR___CKTapbackLegacyView_glyphView;
  v10 = *&v3[OBJC_IVAR___CKTapbackLegacyView_glyphView];
  *&v3[OBJC_IVAR___CKTapbackLegacyView_glyphView] = v8;
  v18 = v10;
  if (v10)
  {
    v11 = v10;
    v12 = v8;
    v13 = [v11 superview];
    if (v13)
    {
      v14 = v13;
      sub_190861700();
      v15 = v3;
      v16 = sub_190D57D90();

      if (v16)
      {
        [v11 removeFromSuperview];
      }
    }

    if (*&v3[v9])
    {
      goto LABEL_12;
    }
  }

  else
  {
    v17 = v8;
    if (v8)
    {
LABEL_12:
      [v3 addSubview_];
    }
  }
}

id TapbackLegacyView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TapbackLegacyView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___CKTapbackLegacyView_attributionScaleFactor] = 0x3FECCCCCCCCCCCCDLL;
  v9 = &v4[OBJC_IVAR___CKTapbackLegacyView_platterEdgeInsets];
  __asm { FMOV            V0.2D, #1.0 }

  *v9 = _Q0;
  v9[1] = _Q0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___CKTapbackLegacyView_glyphView] = 0;
  v4[OBJC_IVAR___CKTapbackLegacyView_isSelected] = 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for TapbackLegacyView();
  return objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
}

id TapbackLegacyView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TapbackLegacyView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___CKTapbackLegacyView_attributionScaleFactor] = 0x3FECCCCCCCCCCCCDLL;
  v3 = &v1[OBJC_IVAR___CKTapbackLegacyView_platterEdgeInsets];
  __asm { FMOV            V0.2D, #1.0 }

  *v3 = _Q0;
  v3[1] = _Q0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___CKTapbackLegacyView_glyphView] = 0;
  v1[OBJC_IVAR___CKTapbackLegacyView_isSelected] = 0;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for TapbackLegacyView();
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

void sub_1908648B8()
{
  sub_19024C978(v0 + OBJC_IVAR___CKTapbackLegacyView_delegate);
  v1 = *(v0 + OBJC_IVAR___CKTapbackLegacyView_glyphView);
}

id TapbackLegacyView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapbackLegacyView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void TapbackLegacyView.configure(for:isSelected:)(void *a1, char a2)
{
  v3 = [a1 associatedMessageType];

  sub_190864450(v3, a2);
}

id sub_190864C34()
{
  result = [v0 IMChatItem];
  if (result)
  {
    v2 = result;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      result = [v3 blockedRecipients];
      if (result)
      {
        v4 = result;
        sub_190D57180();

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
        sub_190864D2C();
        v5 = sub_190D57120();

        return v5;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

unint64_t sub_190864D2C()
{
  result = qword_1EAD45130;
  if (!qword_1EAD45130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD57920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45130);
  }

  return result;
}

uint64_t (*sub_190864DAC())(uint64_t a1)
{
  sub_190864E34();
  sub_190D54830();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_190864E88;
}

unint64_t sub_190864E34()
{
  result = qword_1EAD54918;
  if (!qword_1EAD54918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54918);
  }

  return result;
}

uint64_t sub_190864EA0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_190865F3C(&qword_1EAD57FC0, type metadata accessor for DetailsViewPresentationState);
  sub_190D51C20();

  v3 = OBJC_IVAR____TtC7ChatKit28DetailsViewPresentationState__navigationPath;
  swift_beginAccess();
  v4 = sub_190D53FB0();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_190864F98(uint64_t a1)
{
  v2 = v1;
  v4 = sub_190D53FB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7ChatKit28DetailsViewPresentationState__navigationPath;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_190865F3C(&unk_1EAD54950, MEMORY[0x1E697C0B0]);
  v14[0] = a1;
  LOBYTE(a1) = sub_190D56E30();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_190865F3C(&qword_1EAD57FC0, type metadata accessor for DetailsViewPresentationState);
    sub_190D51C10();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_190865238(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D53FB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = OBJC_IVAR____TtC7ChatKit28DetailsViewPresentationState__navigationPath;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v8, v7, v4);
  return swift_endAccess();
}

uint64_t sub_190865354()
{
  swift_getKeyPath();
  sub_190865F3C(&qword_1EAD57FC0, type metadata accessor for DetailsViewPresentationState);
  sub_190D51C20();

  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit28DetailsViewPresentationState__navigationTitle);
  sub_190D52690();
  return v1;
}

uint64_t sub_190865410@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190865F3C(&qword_1EAD57FC0, type metadata accessor for DetailsViewPresentationState);
  sub_190D51C20();

  v4 = *(v3 + OBJC_IVAR____TtC7ChatKit28DetailsViewPresentationState__navigationTitle + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC7ChatKit28DetailsViewPresentationState__navigationTitle);
  a2[1] = v4;
  return sub_190D52690();
}

uint64_t sub_1908654C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_190D52690();
  return sub_190865508(v1, v2);
}

uint64_t sub_190865508(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC7ChatKit28DetailsViewPresentationState__navigationTitle);
  v6 = *(v2 + OBJC_IVAR____TtC7ChatKit28DetailsViewPresentationState__navigationTitle + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_190D58760() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190865F3C(&qword_1EAD57FC0, type metadata accessor for DetailsViewPresentationState);
    sub_190D51C10();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_190865684()
{
  swift_getKeyPath();
  sub_190865F3C(&qword_1EAD57FC0, type metadata accessor for DetailsViewPresentationState);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C40();

  swift_beginAccess();
  sub_190865E9C();
  sub_190D53F90();
  swift_endAccess();
  swift_getKeyPath();
  sub_190D51C30();
}

uint64_t sub_1908657D4()
{
  v1 = sub_190D53FB0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v8 = v0;
  sub_190865F3C(&qword_1EAD57FC0, type metadata accessor for DetailsViewPresentationState);
  sub_190D51C20();

  v5 = OBJC_IVAR____TtC7ChatKit28DetailsViewPresentationState__navigationPath;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  sub_190D53F80();
  (*(v2 + 8))(v4, v1);
  swift_getKeyPath();
  v7 = v0;
  sub_190D51C20();

  v7 = v0;
  swift_getKeyPath();
  sub_190D51C40();

  swift_beginAccess();
  sub_190D53F70();
  swift_endAccess();
  v7 = v0;
  swift_getKeyPath();
  sub_190D51C30();
}

id DetailsViewPresentationState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DetailsViewPresentationState.init()()
{
  v1 = sub_190D53FB0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D53FA0();
  (*(v2 + 32))(&v0[OBJC_IVAR____TtC7ChatKit28DetailsViewPresentationState__navigationPath], v4, v1);
  v5 = &v0[OBJC_IVAR____TtC7ChatKit28DetailsViewPresentationState__navigationTitle];
  *v5 = 0;
  *(v5 + 1) = 0;
  sub_190D51C50();
  v6 = type metadata accessor for DetailsViewPresentationState();
  v8.receiver = v0;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t type metadata accessor for DetailsViewPresentationState()
{
  result = qword_1EAD54938;
  if (!qword_1EAD54938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id DetailsViewPresentationState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetailsViewPresentationState();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190865DB0()
{
  result = sub_190D53FB0();
  if (v1 <= 0x3F)
  {
    result = sub_190D51C60();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_190865E9C()
{
  result = qword_1EAD54948;
  if (!qword_1EAD54948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54948);
  }

  return result;
}

uint64_t sub_190865EF0()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC7ChatKit28DetailsViewPresentationState__navigationTitle);
  *v2 = v0[3];
  v2[1] = v1;
  sub_190D52690();
}

uint64_t sub_190865F3C(unint64_t *a1, void (*a2)(uint64_t))
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

id CKThrowSendAnimationConfiguration.__allocating_init(duration:beginTime:speed:animationDelegate:timingFunction:fillMode:animationGroup:initialSize:finalSize:preferredFrameRateRange:highFrameRateReason:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, double a9, double a10, float a11, double a12, double a13, double a14, double a15, float a16, int a17, int a18)
{
  v29 = objc_allocWithZone(v18);
  swift_unknownObjectWeakInit();
  *&v29[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_duration] = a9;
  *&v29[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_beginTime] = a10;
  *&v29[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_speed] = a11;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v29[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_timingFunction] = a2;
  *&v29[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_fillMode] = a3;
  *&v29[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_animationGroup] = a4;
  v30 = &v29[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_initialSize];
  *v30 = a12;
  v30[1] = a13;
  v31 = &v29[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_finalSize];
  *v31 = a14;
  v31[1] = a15;
  v32 = &v29[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_preferredFrameRateRange];
  *v32 = a16;
  *(v32 + 1) = a17;
  *(v32 + 2) = a18;
  *&v29[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_highFrameRateReason] = a5;
  v37.receiver = v29;
  v37.super_class = v18;
  v33 = objc_msgSendSuper2(&v37, sel_init);
  swift_unknownObjectRelease();
  return v33;
}

id CKThrowSendAnimationConfiguration.init(duration:beginTime:speed:animationDelegate:timingFunction:fillMode:animationGroup:initialSize:finalSize:preferredFrameRateRange:highFrameRateReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, float a11, double a12, double a13, double a14, double a15, float a16, int a17, int a18)
{
  v18 = sub_1908666D4(a9, a10, a11, a12, a13, a14, a15, a16, a1, a2, a3, a4, a5, a6, a7, a8, a17, a18);
  swift_unknownObjectRelease();
  return v18;
}

id CKThrowSendAnimationConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void CKThrowSendAnimationConfiguration.init()()
{
  swift_unknownObjectWeakInit();
  sub_190D58510();
  __break(1u);
}

void CKThrowSendAnimationConfiguration.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  sub_190D58510();
  __break(1u);
}

void CKThrowSendAnimationConfiguration.init(coder:)()
{
  swift_unknownObjectWeakInit();
  sub_190D58510();
  __break(1u);
}

double sub_1908665C4()
{
  __asm { FMOV            V1.2D, #0.5 }

  *&result = *&vmulq_f64(*(v0 + OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_initialSize), _Q1);
  return result;
}

double sub_190866618()
{
  __asm { FMOV            V1.2D, #0.5 }

  *&result = *&vmulq_f64(*(v0 + OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_finalSize), _Q1);
  return result;
}

id CKThrowSendAnimationConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKThrowSendAnimationConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1908666D4(double a1, double a2, float a3, double a4, double a5, double a6, double a7, float a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18)
{
  swift_unknownObjectWeakInit();
  *&v18[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_duration] = a1;
  *&v18[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_beginTime] = a2;
  *&v18[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_speed] = a3;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v18[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_timingFunction] = a10;
  *&v18[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_fillMode] = a11;
  *&v18[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_animationGroup] = a12;
  v29 = &v18[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_initialSize];
  *v29 = a4;
  v29[1] = a5;
  v30 = &v18[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_finalSize];
  *v30 = a6;
  v30[1] = a7;
  v31 = &v18[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_preferredFrameRateRange];
  *v31 = a8;
  *(v31 + 1) = a17;
  *(v31 + 2) = a18;
  *&v18[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_highFrameRateReason] = a13;
  v35.receiver = v18;
  v35.super_class = type metadata accessor for CKThrowSendAnimationConfiguration();
  return objc_msgSendSuper2(&v35, sel_init);
}

uint64_t sub_1908669B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_190866E10();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_190866A18()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58460);
  __swift_allocate_value_buffer(v0, qword_1EAD9D978);
  v1 = __swift_project_value_buffer(v0, qword_1EAD9D978);
  v2 = sub_190D518A0();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_190866AB8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAD51928 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58460);
  v3 = __swift_project_value_buffer(v2, qword_1EAD9D978);

  return sub_190866DA0(v3, a1);
}

uint64_t sub_190866B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_190866CEC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_190866BA0()
{
  sub_190866C78();
  sub_190D54830();
  return v1;
}

uint64_t sub_190866BDC()
{
  sub_190866C24();

  return sub_190D54830();
}

unint64_t sub_190866C24()
{
  result = qword_1EAD54A20;
  if (!qword_1EAD54A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54A20);
  }

  return result;
}

unint64_t sub_190866C78()
{
  result = qword_1EAD54A28;
  if (!qword_1EAD54A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54A28);
  }

  return result;
}

unint64_t sub_190866CEC()
{
  result = qword_1EAD54A30;
  if (!qword_1EAD54A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD58460);
    sub_19024FAC8(&qword_1EAD462D0, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54A30);
  }

  return result;
}

uint64_t sub_190866DA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_190866E10()
{
  result = qword_1EAD54A38;
  if (!qword_1EAD54A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C350);
    sub_19024FAC8(&qword_1EAD54A40, sub_190866EC4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54A38);
  }

  return result;
}

unint64_t sub_190866EC4(double a1)
{
  result = qword_1EAD54A48;
  if (!qword_1EAD54A48)
  {
    gotLoadHelper_x8__OBJC_CLASS___PRUISPosterSnapshotController(a1);
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD54A48);
  }

  return result;
}

id DetailsActionHandlers.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DetailsActionHandlers.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetailsActionHandlers();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190867070()
{
  v0 = [objc_opt_self() sharedManager];
  v1 = [v0 settingValueForKey_];

  if (v1)
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    sub_19021DC70();
    if (swift_dynamicCast())
    {
      v2 = v8;
      v3 = [v8 BOOLValue];
      goto LABEL_13;
    }
  }

  else
  {
    sub_19021E7D8(v11);
  }

  if (qword_1EAD46218 != -1)
  {
    swift_once();
  }

  v4 = sub_190D53040();
  __swift_project_value_buffer(v4, qword_1EAD9D730);
  v2 = sub_190D53020();
  v5 = sub_190D576A0();
  if (os_log_type_enabled(v2, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_19020E000, v2, v5, "Synced setting for .transcriptBackgrounds was unexpectedly NOT an NSNumber. Defaulting to enabled.", v6, 2u);
    MEMORY[0x193AF7A40](v6, -1, -1);
  }

  v3 = 1;
LABEL_13:

  return v3;
}

uint64_t sub_190867220(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_190867268(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1908672C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_190867310(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19086736C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1908673B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_190867430@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_190D549D0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_190D549C0();
  sub_190D549B0();
  *&v34 = a1;
  sub_190D54980();
  sub_190D549B0();
  sub_190D549F0();
  v5 = sub_190D555D0();
  v7 = v6;
  v9 = v8;
  sub_190D55480();
  v10 = sub_190D555B0();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_19081E474(v5, v7, v9 & 1);

  sub_190D56500();
  sub_190D54430();
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54B10) + 36));
  v18 = *(sub_190D543E0() + 20);
  v19 = *MEMORY[0x1E697F468];
  v20 = sub_190D54A20();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  __asm { FMOV            V0.2D, #13.0 }

  *v17 = _Q0;
  v26 = [objc_opt_self() secondarySystemBackgroundColor];
  v27 = sub_190D55CE0();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54B18);
  *&v17[*(v28 + 52)] = v27;
  *&v17[*(v28 + 56)] = 256;
  v29 = sub_190D56500();
  v31 = v30;
  v32 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54B20) + 36)];
  *v32 = v29;
  v32[1] = v31;
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v16;
  *(a2 + 32) = v34;
  *(a2 + 48) = v35;
  *(a2 + 112) = v39;
  *(a2 + 128) = v40;
  *(a2 + 80) = v37;
  *(a2 + 96) = v38;
  result = *&v36;
  *(a2 + 64) = v36;
  return result;
}

uint64_t sub_190867738@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v7 = sub_190D548D0();
  sub_190867B20(a1, a2, &v42);
  v21 = *&v43[16];
  v22 = *&v43[32];
  v23 = *&v43[48];
  v24 = *&v43[64];
  v19 = v42;
  v20 = *v43;
  v26 = *&v43[64];
  v25[2] = *&v43[16];
  v25[3] = *&v43[32];
  v25[4] = *&v43[48];
  v25[0] = v42;
  v25[1] = *v43;
  sub_19022FD14(&v19, &v40, &qword_1EAD54A90);
  sub_19022EEA4(v25, &qword_1EAD54A90);
  *&v18[39] = v21;
  *&v18[55] = v22;
  *&v18[71] = v23;
  *&v18[87] = v24;
  *&v18[7] = v19;
  *&v18[23] = v20;
  v5 = sub_190D54AD0();
  LOBYTE(v9[0]) = 1;
  sub_190867E24(a1, a2, &v42);
  v33 = *&v43[80];
  v34 = *&v43[96];
  v29 = *&v43[16];
  v30 = *&v43[32];
  v31 = *&v43[48];
  v32 = *&v43[64];
  v27 = v42;
  v28 = *v43;
  v36[6] = *&v43[80];
  v36[7] = *&v43[96];
  v36[2] = *&v43[16];
  v36[3] = *&v43[32];
  v36[5] = *&v43[64];
  v36[4] = *&v43[48];
  v35 = v43[112];
  v37 = v43[112];
  v36[1] = *v43;
  v36[0] = v42;
  sub_19022FD14(&v27, &v40, &qword_1EAD54A98);
  sub_19022EEA4(v36, &qword_1EAD54A98);
  *&v17[87] = v32;
  *&v17[103] = v33;
  *&v17[119] = v34;
  v17[135] = v35;
  *&v17[23] = v28;
  *&v17[39] = v29;
  *&v17[55] = v30;
  *&v17[71] = v31;
  *&v17[7] = v27;
  v38 = v7;
  v39[0] = 1;
  *&v39[1] = *v18;
  *&v39[17] = *&v18[16];
  *&v39[65] = *&v18[64];
  *&v39[49] = *&v18[48];
  *&v39[33] = *&v18[32];
  *&v39[80] = *&v18[79];
  __src[0] = v7;
  __src[1] = *v39;
  __src[4] = *&v39[48];
  __src[5] = *&v39[64];
  __src[2] = *&v39[16];
  __src[3] = *&v39[32];
  v40 = v5;
  v41[0] = 1;
  *&v41[1] = *v17;
  *&v41[65] = *&v17[64];
  *&v41[49] = *&v17[48];
  *&v41[33] = *&v17[32];
  *&v41[17] = *&v17[16];
  *&v41[129] = *&v17[128];
  *&v41[113] = *&v17[112];
  *&v41[97] = *&v17[96];
  *&v41[81] = *&v17[80];
  __src[14] = *&v41[96];
  __src[15] = *&v41[112];
  *(&__src[15] + 9) = *&v41[121];
  __src[10] = *&v41[32];
  __src[11] = *&v41[48];
  __src[12] = *&v41[64];
  __src[13] = *&v41[80];
  __src[6] = *&v18[79];
  __src[7] = v5;
  __src[8] = *v41;
  __src[9] = *&v41[16];
  memcpy(a3, __src, 0x109uLL);
  *&v43[81] = *&v17[80];
  *&v43[97] = *&v17[96];
  v44 = *&v17[112];
  *&v43[17] = *&v17[16];
  *&v43[33] = *&v17[32];
  *&v43[49] = *&v17[48];
  *&v43[65] = *&v17[64];
  v42 = v5;
  v43[0] = 1;
  v45 = *&v17[128];
  *&v43[1] = *v17;
  sub_19022FD14(&v38, v9, &qword_1EAD54AA0);
  sub_19022FD14(&v40, v9, &qword_1EAD54AA8);
  sub_19022EEA4(&v42, &qword_1EAD54AA8);
  v13 = *&v18[32];
  v14 = *&v18[48];
  v15[0] = *&v18[64];
  *(v15 + 15) = *&v18[79];
  v11 = *v18;
  v9[0] = v7;
  v9[1] = 0;
  v10 = 1;
  v12 = *&v18[16];
  return sub_19022EEA4(v9, &qword_1EAD54AA0);
}

uint64_t sub_190867B20@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = sub_190D549D0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_190D549C0();
  sub_190D549B0();
  sub_190D549A0();
  sub_190D549B0();
  sub_190D549F0();
  v5 = sub_190D555D0();
  v7 = v6;
  v9 = v8;
  sub_190D55470();
  sub_190D553E0();

  v10 = sub_190D555B0();
  v32 = v11;
  v33 = v10;
  v31 = v12;
  v34 = v13;

  sub_19081E474(v5, v7, v9 & 1);

  sub_19081E484();
  sub_190D52690();
  v14 = sub_190D555F0();
  v16 = v15;
  LOBYTE(v5) = v17;
  sub_190D55470();
  v18 = sub_190D555B0();
  v20 = v19;
  v22 = v21;

  sub_19081E474(v14, v16, v5 & 1);

  v23 = sub_190D55550();
  v25 = v24;
  LOBYTE(v14) = v26;
  v28 = v27;
  sub_19081E474(v18, v20, v22 & 1);

  *a3 = v33;
  *(a3 + 8) = v32;
  *(a3 + 16) = v31 & 1;
  *(a3 + 24) = v34;
  *(a3 + 32) = 0x3FE6666666666666;
  *(a3 + 40) = v23;
  *(a3 + 48) = v25;
  *(a3 + 56) = v14 & 1;
  *(a3 + 64) = v28;
  *(a3 + 72) = a1;
  *(a3 + 80) = a2;
  sub_190D52690();
  sub_19081BE48(v33, v32, v31 & 1);
  sub_190D52690();
  sub_19081BE48(v23, v25, v14 & 1);
  sub_190D52690();
  sub_190D52690();
  sub_19081E474(v23, v25, v14 & 1);

  sub_19081E474(v33, v32, v31 & 1);
}

uint64_t sub_190867E24@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = sub_190D549D0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_190D549C0();
  sub_190D549B0();
  sub_190D549A0();
  sub_190D549B0();
  sub_190D549F0();
  v5 = sub_190D555D0();
  v7 = v6;
  v9 = v8;
  sub_190D55470();
  sub_190D553E0();

  v10 = sub_190D555B0();
  v45 = v11;
  v46 = v10;
  v42 = v12;
  v44 = v13;

  sub_19081E474(v5, v7, v9 & 1);

  v41 = a2;
  sub_19081E484();
  sub_190D52690();
  v14 = sub_190D555F0();
  v16 = v15;
  v18 = v17;
  sub_190D55470();
  v19 = sub_190D555B0();
  v21 = v20;
  LOBYTE(a2) = v22;

  sub_19081E474(v14, v16, v18 & 1);

  v23 = sub_190D55550();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_19081E474(v19, v21, a2 & 1);

  sub_190D52690();
  LOBYTE(v14) = sub_190D552E0();
  sub_190D539C0();
  v48[96] = v42 & 1;
  v30 = v50[0];
  *(&v52 + 1) = v50[0];
  DWORD1(v52) = *(v50 + 3);
  DWORD1(v54) = *&v49[3];
  v31 = *v49;
  *(&v54 + 1) = *v49;
  *(a3 + 16) = v42 & 1;
  *(a3 + 24) = v44;
  *(a3 + 32) = 0x3FE6666666666666;
  *&v51 = v23;
  *(&v51 + 1) = v25;
  LOBYTE(v52) = v27 & 1;
  *(&v52 + 1) = v29;
  *&v53 = a1;
  *(&v53 + 1) = v41;
  LOBYTE(v54) = v14;
  *(&v54 + 1) = v32;
  *&v55[0] = v33;
  *(&v55[0] + 1) = v34;
  *&v55[1] = v35;
  BYTE8(v55[1]) = 0;
  *a3 = v46;
  *(a3 + 8) = v45;
  v36 = v53;
  v37 = v54;
  v38 = v55[0];
  *(a3 + 113) = *(v55 + 9);
  *(a3 + 104) = v38;
  *(a3 + 88) = v37;
  *(a3 + 72) = v36;
  v39 = v51;
  *(a3 + 56) = v52;
  *(a3 + 40) = v39;
  v56[0] = v23;
  v56[1] = v25;
  v57 = v27 & 1;
  *&v58[3] = *(v50 + 3);
  *v58 = v30;
  v59 = v29;
  v60 = a1;
  v61 = v41;
  v62 = v14;
  *&v63[3] = *&v49[3];
  *v63 = v31;
  v64 = v32;
  v65 = v33;
  v66 = v34;
  v67 = v35;
  v68 = 0;
  sub_19081BE48(v46, v45, v42 & 1);
  sub_190D52690();
  sub_19022FD14(&v51, v48, &qword_1EAD54AB0);
  sub_19022EEA4(v56, &qword_1EAD54AB0);
  sub_19081E474(v46, v45, v42 & 1);
}

void *sub_1908681DC@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = sub_190D55270();
  sub_190867738(v4, v3, __src);
  memcpy(__dst, __src, 0x109uLL);
  memcpy(v11, __src, 0x109uLL);
  sub_19022FD14(__dst, &v7, &qword_1EAD54A88);
  sub_19022EEA4(v11, &qword_1EAD54A88);
  memcpy(&v9[7], __dst, 0x109uLL);
  *a1 = v5;
  return memcpy(a1 + 1, v9, 0x110uLL);
}

uint64_t sub_1908682C0@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = sub_190D54390();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54AC0);
  v21 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v6 = &v19[-v5];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54AC8);
  MEMORY[0x1EEE9AC00](v22);
  v8 = &v19[-v7];
  v32 = *v1;
  v9 = *(v1 + 3);
  v10 = *(v1 + 4);
  v20 = *(v1 + 40);
  v31 = v9;
  v11 = swift_allocObject();
  v12 = v1[1];
  v11[1] = *v1;
  v11[2] = v12;
  *(v11 + 41) = *(v1 + 25);
  v27 = v1;
  sub_190869370(&v32, v29);
  sub_1908693CC(&v31, v29);
  sub_190D50920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54AD0);
  sub_190233640(&qword_1EAD54AD8, &qword_1EAD54AD0);
  sub_190D56030();
  v13 = *(v1 + 16);
  v29[0] = v9;
  v29[1] = v10;
  v30 = v20;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54AE0);
  MEMORY[0x193AF1A80](&v28, v14);
  if (sub_190B2CD58(v13, v28))
  {
    sub_190D55D50();
    v15 = sub_190D55DF0();
  }

  else
  {
    v15 = sub_190D55DA0();
  }

  (*(v21 + 32))(v8, v6, v23);
  v16 = &v8[*(v22 + 36)];
  *v16 = v15;
  *(v16 + 8) = xmmword_190DD82A0;
  *(v16 + 3) = 0x4000000000000000;
  sub_190D54380();
  sub_190869428();
  sub_1908694E0();
  v17 = v26;
  sub_190D55720();
  (*(v25 + 8))(v4, v17);
  return sub_19022EEA4(v8, &qword_1EAD54AC8);
}

double sub_1908686B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_190D548D0();
  v16 = 0;
  sub_1908687C0(a1, &v10);
  v19 = v12;
  v20 = v13;
  v17 = v10;
  v18 = v11;
  v22[2] = v12;
  v22[3] = v13;
  v22[4] = v14;
  v22[1] = v11;
  v21 = v14;
  v22[0] = v10;
  sub_19022FD14(&v17, &v9, &qword_1EAD54B00);
  sub_19022EEA4(v22, &qword_1EAD54B00);
  *&v15[7] = v17;
  *&v15[71] = v21;
  *&v15[55] = v20;
  *&v15[39] = v19;
  *&v15[23] = v18;
  v5 = *&v15[48];
  *(a2 + 49) = *&v15[32];
  *(a2 + 65) = v5;
  *(a2 + 81) = *&v15[64];
  result = *v15;
  v7 = *&v15[16];
  *(a2 + 17) = *v15;
  v8 = v16;
  *a2 = v4;
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = v8;
  *(a2 + 96) = *&v15[79];
  *(a2 + 33) = v7;
  return result;
}

uint64_t sub_1908687C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54B08);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v37 - v5;
  v7 = *(a1 + 16);
  sub_190ACA1A0();
  v8 = *MEMORY[0x1E6981698];
  v9 = sub_190D55EF0();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v6, v8, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  v40 = sub_190D55EC0();

  sub_19022EEA4(v6, &qword_1EAD54B08);
  v11 = qword_190DD8658[v7];
  sub_190D56690();
  v13 = v12;
  v15 = v14;
  v44 = *(a1 + 24);
  v45 = *(a1 + 40);
  v42 = *(a1 + 24);
  v43 = *(a1 + 40);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54AE0);
  MEMORY[0x193AF1A80](&v41);
  v39 = v7;
  if (sub_190B2CD58(v7, v41))
  {
    v16 = sub_190D55D50();
  }

  else
  {
    v16 = sub_190D55E00();
  }

  v38 = v16;
  v17 = *(a1 + 8);
  *&v42 = *a1;
  *(&v42 + 1) = v17;
  sub_19081E484();
  sub_190D52690();
  v18 = sub_190D555F0();
  v20 = v19;
  v22 = v21;
  sub_190D55480();
  v23 = sub_190D555B0();
  v25 = v24;
  v27 = v26;

  sub_19081E474(v18, v20, v22 & 1);

  v42 = v44;
  v43 = v45;
  MEMORY[0x193AF1A80](&v41, v37);
  if (sub_190B2CD58(v39, v41))
  {
    v28 = sub_190D55D50();
  }

  else
  {
    v28 = sub_190D55E10();
  }

  *&v42 = v28;
  v29 = sub_190D55580();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_19081E474(v23, v25, v27 & 1);

  LOBYTE(v42) = v33 & 1;
  *a2 = v40;
  *(a2 + 8) = v11;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  *(a2 + 32) = v15;
  *(a2 + 40) = v38;
  *(a2 + 48) = v29;
  *(a2 + 56) = v31;
  *(a2 + 64) = v33 & 1;
  *(a2 + 72) = v35;
  sub_190D50920();
  sub_190D50920();
  sub_19081BE48(v29, v31, v33 & 1);
  sub_190D52690();
  sub_19081E474(v29, v31, v33 & 1);
}

uint64_t sub_190868B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54B08);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35 - v9;
  sub_190ACA1A0();
  v11 = *MEMORY[0x1E6981698];
  v12 = sub_190D55EF0();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  v36 = sub_190D55EC0();

  sub_19022EEA4(v10, &qword_1EAD54B08);
  v14 = qword_190DD8658[a3];
  sub_190D56690();
  v16 = v15;
  v18 = v17;
  v35 = sub_190D55E00();
  v37 = a1;
  v38 = a2;
  sub_19081E484();
  sub_190D52690();
  v19 = sub_190D555F0();
  v21 = v20;
  LOBYTE(v13) = v22;
  sub_190D55480();
  v23 = sub_190D555B0();
  v25 = v24;
  LOBYTE(v11) = v26;

  sub_19081E474(v19, v21, v13 & 1);

  v37 = sub_190D55E10();
  v27 = sub_190D55580();
  v29 = v28;
  LOBYTE(v10) = v30;
  v32 = v31;
  sub_19081E474(v23, v25, v11 & 1);

  LOBYTE(v37) = v10 & 1;
  v33 = v35;
  *a4 = v36;
  *(a4 + 8) = v14;
  *(a4 + 16) = v14;
  *(a4 + 24) = v16;
  *(a4 + 32) = v18;
  *(a4 + 40) = v33;
  *(a4 + 48) = v27;
  *(a4 + 56) = v29;
  *(a4 + 64) = v10 & 1;
  *(a4 + 72) = v32;
  sub_190D50920();
  sub_190D50920();
  sub_19081BE48(v27, v29, v10 & 1);
  sub_190D52690();
  sub_19081E474(v27, v29, v10 & 1);
}

double sub_190868E78@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = sub_190D548D0();
  v18 = 0;
  sub_190868B88(v3, v4, v5, &v12);
  v21 = v14;
  v22 = v15;
  v19 = v12;
  v20 = v13;
  v24[2] = v14;
  v24[3] = v15;
  v24[4] = v16;
  v24[1] = v13;
  v23 = v16;
  v24[0] = v12;
  sub_19022FD14(&v19, &v11, &qword_1EAD54B00);
  sub_19022EEA4(v24, &qword_1EAD54B00);
  *&v17[7] = v19;
  *&v17[71] = v23;
  *&v17[55] = v22;
  *&v17[39] = v21;
  *&v17[23] = v20;
  v7 = *&v17[48];
  *(a1 + 49) = *&v17[32];
  *(a1 + 65) = v7;
  *(a1 + 81) = *&v17[64];
  result = *v17;
  v9 = *&v17[16];
  *(a1 + 17) = *v17;
  v10 = v18;
  *a1 = v6;
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = v10;
  *(a1 + 96) = *&v17[79];
  *(a1 + 33) = v9;
  return result;
}

double sub_190868FF4@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_190D55520();
  sub_190D55500();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetWidth(v14);
  sub_190D55510();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

void (*sub_1908690A4(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_190D53950();
  return sub_190854AE0;
}

uint64_t sub_19086912C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19086930C();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_190869190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19086930C();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1908691F4(uint64_t a1)
{
  v2 = sub_19086930C();

  return MEMORY[0x1EEDE4410](a1, v2);
}

unint64_t sub_190869244()
{
  result = qword_1EAD54A78;
  if (!qword_1EAD54A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54A78);
  }

  return result;
}

unint64_t sub_19086929C()
{
  result = qword_1EAD54A80;
  if (!qword_1EAD54A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54A80);
  }

  return result;
}

unint64_t sub_19086930C()
{
  result = qword_1EAD54AB8;
  if (!qword_1EAD54AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54AB8);
  }

  return result;
}

unint64_t sub_190869428()
{
  result = qword_1EAD54AE8;
  if (!qword_1EAD54AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD54AC8);
    sub_190233640(&qword_1EAD54AF0, &qword_1EAD54AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54AE8);
  }

  return result;
}

unint64_t sub_1908694E0()
{
  result = qword_1EAD54AF8;
  if (!qword_1EAD54AF8)
  {
    sub_190D54390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54AF8);
  }

  return result;
}

unint64_t sub_190869538()
{
  result = qword_1EAD54B38;
  if (!qword_1EAD54B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD54B10);
    sub_1908695F0();
    sub_190233640(&qword_1EAD54B40, &qword_1EAD54B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54B38);
  }

  return result;
}

unint64_t sub_1908695F0()
{
  result = qword_1EAD59AC0;
  if (!qword_1EAD59AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59AC0);
  }

  return result;
}

id sub_1908697CC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC7ChatKit29CKSuggestedRepliesBalloonView_view;
  v9 = *&v4[OBJC_IVAR____TtC7ChatKit29CKSuggestedRepliesBalloonView_view];
  if (v9)
  {
    [v9 removeFromSuperview];
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = objc_allocWithZone(type metadata accessor for CKSuggestedRepliesView());
  sub_190D52690();
  sub_190D52690();
  v12 = sub_190A83770(a1, a2, a3, sub_19086A4FC, v10);

  v13 = *&v4[v8];
  *&v4[v8] = v12;
  v14 = v12;

  v15 = v14;
  [v4 addSubview_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_190DD86A0;
  v18 = [v15 topAnchor];
  v19 = [v4 topAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v17 + 32) = v20;
  v21 = [v15 leadingAnchor];

  v22 = [v4 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v17 + 40) = v23;
  v24 = [v15 trailingAnchor];

  v25 = [v4 trailingAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(v17 + 48) = v26;
  v27 = [v15 bottomAnchor];

  v28 = [v4 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v17 + 56) = v29;
  sub_19086225C();
  v30 = sub_190D57160();

  [v16 activateConstraints_];

  [v4 balloonDescriptor];
  v31 = [objc_allocWithZone(type metadata accessor for CKBalloonMaskLayer()) initWithDescriptor_];
  v32 = OBJC_IVAR____TtC7ChatKit29CKSuggestedRepliesBalloonView_balloonMask;
  v33 = *&v4[OBJC_IVAR____TtC7ChatKit29CKSuggestedRepliesBalloonView_balloonMask];
  *&v4[OBJC_IVAR____TtC7ChatKit29CKSuggestedRepliesBalloonView_balloonMask] = v31;

  v34 = [v15 layer];
  [v34 setMask_];

  return [v4 layoutIfNeeded];
}

void sub_190869B88(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_19086A0E4(a1);
  }
}

id sub_190869C00()
{
  v1 = v0;
  v2 = sub_190D56C50();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CKSuggestedRepliesBalloonView();
  v21.receiver = v0;
  v21.super_class = v6;
  objc_msgSendSuper2(&v21, sel_layoutSubviews);
  v7 = *&v0[OBJC_IVAR____TtC7ChatKit29CKSuggestedRepliesBalloonView_balloonMask];
  if (v7)
  {
    v8 = v7;
    [v1 bounds];
    [v8 setFrame_];
  }

  [v1 balloonDescriptor];
  [v1 bounds];
  v10 = v9;
  v12 = v11;
  sub_190248D60(v5);
  v13 = MEMORY[0x193AF2490](v5, v10, v12);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  (*(v3 + 8))(v5, v2);
  result = *&v1[OBJC_IVAR____TtC7ChatKit29CKSuggestedRepliesBalloonView_view];
  if (result)
  {
    return [result setLayoutMargins_];
  }

  return result;
}

void sub_190869DF4(void *a1)
{
  type metadata accessor for CKSuggestedRepliesMessagePartChatItem();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for CKSuggestedRepliesBalloonView();
  v5 = sel_configureForMessagePart_;
  v6 = a1;
  objc_msgSendSuper2(&v18, sel_configureForMessagePart_, v4);
  v7 = *&v4[OBJC_IVAR____TtC7ChatKit37CKSuggestedRepliesMessagePartChatItem_selectedIndex];
  v8 = *&v4[OBJC_IVAR____TtC7ChatKit37CKSuggestedRepliesMessagePartChatItem_suggestedRepliesList];
  if (v7 >= *(v8 + 16))
  {
LABEL_15:

    return;
  }

  if (v7 < 0)
  {
    __break(1u);
LABEL_10:
    if (sub_190D581C0())
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v5 = *(v8 + 8 * v7 + 32);
  if (v5 >> 62)
  {
    goto LABEL_10;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:
    v15 = OBJC_IVAR____TtC7ChatKit29CKSuggestedRepliesBalloonView_view;
    v16 = *&v1[OBJC_IVAR____TtC7ChatKit29CKSuggestedRepliesBalloonView_view];
    if (v16)
    {
      [v16 removeFromSuperview];
      v17 = *&v1[v15];
    }

    else
    {
      v17 = 0;
    }

    *&v1[v15] = 0;

    [v1 setFrame_];
    goto LABEL_15;
  }

LABEL_6:
  sub_190D52690();
  v9 = [v4 IMChatItem];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 itemGUID];

    if (v11)
    {
      v12 = sub_190D56F10();
      v14 = v13;

      sub_1908697CC(v5, v12, v14);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_19086A01C()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for CKSuggestedRepliesBalloonView();
  objc_msgSendSuper2(&v5, sel_prepareForReuse);
  v1 = OBJC_IVAR____TtC7ChatKit29CKSuggestedRepliesBalloonView_view;
  v2 = *&v0[OBJC_IVAR____TtC7ChatKit29CKSuggestedRepliesBalloonView_view];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  v4 = *&v0[OBJC_IVAR____TtC7ChatKit29CKSuggestedRepliesBalloonView_balloonMask];
  *&v0[OBJC_IVAR____TtC7ChatKit29CKSuggestedRepliesBalloonView_balloonMask] = 0;
}

void sub_19086A0E4(void *a1)
{
  v2 = v1;
  if (qword_1EAD51D18 != -1)
  {
    swift_once();
  }

  v4 = sub_190D53040();
  __swift_project_value_buffer(v4, qword_1EAD9E160);
  v5 = a1;
  v6 = sub_190D53020();
  v7 = sub_190D57680();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v10 = [v5 suggestion];
    v11 = [v10 displayText];

    v12 = sub_190D56F10();
    v14 = v13;

    v15 = sub_19021D9F8(v12, v14, &v19);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_19020E000, v6, v7, "From suggested replies message, trigger reply: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x193AF7A40](v9, -1, -1);
    MEMORY[0x193AF7A40](v8, -1, -1);
  }

  v16 = [v2 delegate];
  if (v16)
  {
    v17 = v16;
    if ([v16 respondsToSelector_])
    {
      v18 = sub_190D56ED0();
      [v17 balloonView:v2 selectedSuggestedReply:v5 messageGUID:v18];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

id CKSuggestedRepliesBalloonView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKSuggestedRepliesBalloonView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_19086A3E0(double a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC7ChatKit29CKSuggestedRepliesBalloonView_view);
  if (v3)
  {
    v6 = objc_opt_self();
    v7 = v3;
    v8 = [v6 sharedBehaviors];
    if (v8)
    {
      v9 = v8;
      [v8 suggestedRepliesViewMaxWidth];
      v11 = v10;

      if (v11 <= a1)
      {
        v14 = v11;
      }

      else
      {
        v14 = a1;
      }

      LODWORD(v12) = 1148846080;
      LODWORD(v13) = 1112014848;
      [v7 systemLayoutSizeFittingSize:v14 withHorizontalFittingPriority:a2 verticalFittingPriority:{v12, v13}];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_19086A504()
{
  v1 = v0;
  v24 = [v0 collectionViewController];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v2 = sub_190D50FA0();
    if (v2)
    {
      v3 = v2;
      sub_190D58230();
      if (*(v3 + 16) && (v4 = sub_190875C84(v25), (v5 & 1) != 0))
      {
        sub_19021834C(*(v3 + 56) + 32 * v4, v26);
        sub_19084CFD0(v25);

        if (swift_dynamicCast())
        {
          if (qword_1EAD51CC0 != -1)
          {
            swift_once();
          }

          v6 = sub_190D53040();
          __swift_project_value_buffer(v6, qword_1EAD9E070);
          sub_190D52690();
          v7 = sub_190D53020();
          v8 = sub_190D576C0();

          if (os_log_type_enabled(v7, v8))
          {
            v9 = swift_slowAlloc();
            v10 = swift_slowAlloc();
            v25[0] = v10;
            *v9 = 136315138;
            *(v9 + 4) = sub_19021D9F8(0x476567617373656DLL, 0xEB00000000444955, v25);
            _os_log_impl(&dword_19020E000, v7, v8, "Highlighting message with guid %s.", v9, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v10);
            MEMORY[0x193AF7A40](v10, -1, -1);
            MEMORY[0x193AF7A40](v9, -1, -1);
          }

          v11 = [objc_allocWithZone(type metadata accessor for TranscriptMessageScrollConfiguration()) init];
          v12 = &v11[OBJC_IVAR___CKTranscriptMessageScrollConfiguration_messageGUID];
          swift_beginAccess();
          *v12 = 0x476567617373656DLL;
          v12[1] = 0xEB00000000444955;

          v13 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_animated;
          swift_beginAccess();
          v11[v13] = 1;
          v14 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_emphasize;
          swift_beginAccess();
          v11[v14] = 1;
          v15 = v11;
          [v1 transcriptScrollWithConfiguration_];

LABEL_17:
          return;
        }
      }

      else
      {

        sub_19084CFD0(v25);
      }

      if (qword_1EAD51CC0 != -1)
      {
        swift_once();
      }

      v16 = sub_190D53040();
      __swift_project_value_buffer(v16, qword_1EAD9E070);
      v17 = sub_190D53020();
      v18 = sub_190D576C0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_19020E000, v17, v18, "Did not find a guid to highlight. Clearing emphasis.", v19, 2u);
        MEMORY[0x193AF7A40](v19, -1, -1);
      }

      sub_190C374C8();
      goto LABEL_17;
    }

    if (qword_1EAD51CC0 != -1)
    {
      swift_once();
    }

    v20 = sub_190D53040();
    __swift_project_value_buffer(v20, qword_1EAD9E070);
    v21 = sub_190D53020();
    v22 = sub_190D576C0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_19020E000, v21, v22, "Notification is missing userInfo. Clearing emphasis.", v23, 2u);
      MEMORY[0x193AF7A40](v23, -1, -1);
    }

    sub_190C374C8();
  }
}

id sub_19086ABE0()
{
  v1 = sub_190D56770();
  v72 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_190D567A0();
  v71 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_190D567F0();
  v70 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v69 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = (v69 - v14);
  result = [v0 chat];
  if (result)
  {
    v81 = v6;
    v82 = v3;
    v83 = v4;
    v84 = v1;
    v17 = result;
    v18 = [result _items];

    sub_1902188FC(0, &unk_1EAD54F90);
    v19 = sub_190D57180();

    aBlock = MEMORY[0x1E69E7CC0];
    v20 = v19 & 0xFFFFFFFFFFFFFF8;
    if (v19 >> 62)
    {
      goto LABEL_50;
    }

    for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_190D581C0())
    {
      v85 = v10;
      v78 = v13;
      v79 = v15;
      v80 = v7;
      if (i)
      {
        v10 = 0;
        v7 = v19 & 0xC000000000000001;
        v88 = MEMORY[0x1E69E7CC0];
        v15 = 0x1E69A8000;
        v13 = 0x1E69A7000;
        do
        {
          v22 = v10;
          while (1)
          {
            if (v7)
            {
              v23 = MEMORY[0x193AF3B90](v22, v19);
            }

            else
            {
              if (v22 >= *(v20 + 16))
              {
                goto LABEL_47;
              }

              v23 = *(v19 + 8 * v22 + 32);
            }

            v24 = v23;
            v10 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              __break(1u);
LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              objc_opt_self();
              if (!swift_dynamicCastObjCClass())
              {
                break;
              }
            }

            ++v22;
            if (v10 == i)
            {
              goto LABEL_21;
            }
          }

          MEMORY[0x193AF29E0]();
          if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_190D571A0();
          }

          sub_190D571E0();
          v88 = aBlock;
        }

        while (v10 != i);
      }

      else
      {
        v88 = MEMORY[0x1E69E7CC0];
      }

LABEL_21:

      v19 = v88;
      v20 = v88 & 0xFFFFFFFFFFFFFF8;
      v25 = v88 >> 62 ? sub_190D581C0() : *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v85;
      v26 = MEMORY[0x1E69E7CC0];
      if (!v25)
      {
        break;
      }

      v13 = 0;
      v7 = v19 & 0xC000000000000001;
      v15 = &selRef_green_chevronImage;
LABEL_25:
      v27 = v13;
      while (1)
      {
        if (v7)
        {
          v28 = MEMORY[0x193AF3B90](v27, v19);
        }

        else
        {
          if (v27 >= *(v20 + 16))
          {
            goto LABEL_49;
          }

          v28 = *(v19 + 8 * v27 + 32);
        }

        v29 = v28;
        v13 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        v30 = [v28 guid];
        if (v30)
        {
          v31 = v26;
          v32 = v30;
          v87 = sub_190D56F10();
          v34 = v33;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_1908354D4(0, *(v31 + 2) + 1, 1, v31);
          }

          v36 = *(v31 + 2);
          v35 = *(v31 + 3);
          v37 = v31;
          if (v36 >= v35 >> 1)
          {
            v37 = sub_1908354D4((v35 > 1), v36 + 1, 1, v31);
          }

          *(v37 + 2) = v36 + 1;
          v38 = &v37[16 * v36];
          v26 = v37;
          *(v38 + 4) = v87;
          *(v38 + 5) = v34;
          v19 = v88;
          if (v13 != v25)
          {
            goto LABEL_25;
          }

          goto LABEL_39;
        }

        ++v27;
        if (v13 == v25)
        {
          goto LABEL_39;
        }
      }

LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      ;
    }

LABEL_39:

    v39 = *(v26 + 2);
    v40 = &unk_190DD5000;
    if (v39)
    {
      v77 = sub_1902188FC(0, &qword_1EAD46670);
      v73 = (v70 + 8);
      v76 = &v91;
      v75 = (v72 + 8);
      v74 = (v71 + 8);
      v69[1] = v26;
      v41 = (v26 + 40);
      v42 = 0.0;
      v43 = v82;
      v44 = v84;
      do
      {
        v88 = v39;
        v46 = *(v41 - 1);
        v45 = *v41;
        sub_190D52690();
        v87 = sub_190D57870();
        v47 = v85;
        sub_190D567B0();
        v48 = v78;
        sub_190D56820();
        v49 = v47;
        v50 = v80;
        v51 = *v73;
        v86 = v51;
        v51(v49, v80);
        v52 = v79;
        sub_190D56820();
        v51(v48, v50);
        v53 = swift_allocObject();
        *(v53 + 16) = v46;
        *(v53 + 24) = v45;
        v93 = sub_19086B91C;
        v94 = v53;
        aBlock = MEMORY[0x1E69E9820];
        v90 = 1107296256;
        v91 = sub_190840E6C;
        v92 = &block_descriptor_9;
        v54 = _Block_copy(&aBlock);

        v55 = v81;
        sub_190D56790();
        aBlock = MEMORY[0x1E69E7CC0];
        sub_190840DB0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
        sub_190840E08();
        sub_190D58170();
        v56 = v87;
        MEMORY[0x193AF30E0](v52, v55, v43, v54);
        v57 = v54;
        v58 = v88;
        _Block_release(v57);

        (*v75)(v43, v44);
        (*v74)(v55, v83);
        v86(v52, v50);
        v42 = v42 + 2.0;
        v41 += 2;
        v39 = v58 - 1;
      }

      while (v39);

      v10 = v85;
      v40 = &unk_190DD5000;
    }

    else
    {
    }

    sub_1902188FC(0, &qword_1EAD46670);
    v88 = sub_190D57870();
    sub_190D567B0();
    v59 = v78;
    sub_190D56820();
    v60 = *(v70 + 8);
    v61 = v10;
    v62 = v80;
    v60(v61, v80);
    v63 = v79;
    sub_190D56820();
    v60(v59, v62);
    v93 = sub_19086B780;
    v94 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v90 = v40[188];
    v91 = sub_190840E6C;
    v92 = &block_descriptor_3_0;
    v64 = _Block_copy(&aBlock);
    v65 = v81;
    sub_190D56790();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_190840DB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
    sub_190840E08();
    v66 = v82;
    v67 = v84;
    sub_190D58170();
    v68 = v88;
    MEMORY[0x193AF30E0](v63, v65, v66, v64);
    _Block_release(v64);

    (*(v72 + 8))(v66, v67);
    (*(v71 + 8))(v65, v83);
    return (v60)(v63, v62);
  }

  return result;
}

uint64_t sub_19086B590(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D50FB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D56ED0();
  v14 = 0u;
  v15 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54B58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1D90;
  v13[1] = 0x476567617373656DLL;
  v13[2] = 0xEB00000000444955;
  v9 = MEMORY[0x1E69E6158];
  sub_190D58230();
  *(inited + 96) = v9;
  *(inited + 72) = a1;
  *(inited + 80) = a2;
  sub_190D52690();
  sub_190821644(inited);
  swift_setDeallocating();
  sub_19086B924(inited + 32);
  sub_190D50F70();
  v10 = [objc_opt_self() defaultCenter];
  v11 = sub_190D50F50();
  [v10 postNotification_];

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_19086B780()
{
  v0 = sub_190D50FB0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D56ED0();
  memset(v7, 0, sizeof(v7));
  sub_190821644(MEMORY[0x1E69E7CC0]);
  sub_190D50F70();
  v4 = [objc_opt_self() defaultCenter];
  v5 = sub_190D50F50();
  [v4 postNotification_];

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_19086B924(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19086B9C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x1E69E7CC0];
  sub_19082DD54(0, v1, 0);
  v2 = v28;
  v4 = a1 + 64;
  result = sub_190D58180();
  v6 = result;
  v7 = 0;
  v27 = *(a1 + 36);
  v25 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v27 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v26 = *v10;
    sub_190D52690();
    swift_unknownObjectRetain();
    result = sub_190D56F50();
    v14 = *(v28 + 16);
    v13 = *(v28 + 24);
    if (v14 >= v13 >> 1)
    {
      v23 = v12;
      v24 = result;
      sub_19082DD54((v13 > 1), v14 + 1, 1);
      v12 = v23;
      result = v24;
    }

    *(v28 + 16) = v14 + 1;
    v15 = (v28 + 32 * v14);
    v15[4] = v26;
    v15[5] = v11;
    v15[6] = result;
    v15[7] = v12;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v16 = *(a1 + 64 + 8 * v9);
    if ((v16 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v27 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v17 = v16 & (-2 << (v6 & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v9 << 6;
      v19 = v9 + 1;
      v20 = (a1 + 72 + 8 * v9);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_19086E9E0(v6, v27, 0);
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_19086E9E0(v6, v27, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v25)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

char *sub_19086BC38(unint64_t a1)
{
  sub_190D582B0();

  v20 = 0xD000000000000016;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = sub_190D58720();
  MEMORY[0x193AF28B0](v3);

  MEMORY[0x193AF28B0](0xD000000000000011, 0x8000000190E5F6B0);
  v4 = v20;
  if (v2)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_190D52690();
    result = sub_19082DBB4(0, v2 & ~(v2 >> 63), 0);
    if ((v2 & 0x8000000000000000) == 0)
    {
      v19 = v4;
      v6 = 0;
      v7 = v20;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x193AF3B90](v6, a1);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_17:
            __break(1u);
LABEL_18:
            v2 = sub_190D581C0();
            goto LABEL_3;
          }

          if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v8 = *(a1 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = sub_19086EA38(v8);
        v12 = v11;

        v20 = v7;
        v14 = *(v7 + 16);
        v13 = *(v7 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_19082DBB4((v13 > 1), v14 + 1, 1);
        }

        ++v6;
        *(v7 + 16) = v14 + 1;
        v15 = v7 + 16 * v14;
        *(v15 + 32) = v10;
        *(v15 + 40) = v12;
        if (v2 == v6)
        {

          v4 = v19;
          goto LABEL_15;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
    sub_190233640(&qword_1EAD46720, &unk_1EAD57920);
    v16 = sub_190D56DF0();
    v18 = v17;

    sub_190D52690();
    MEMORY[0x193AF28B0](v16, v18);

    return v4;
  }

  return result;
}

uint64_t sub_19086BEEC(unint64_t a1)
{
  sub_19086D4A8(a1);
  swift_getKeyPath();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_19086D698;
  *(v3 + 24) = v2;
  sub_190D52690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54BB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54B80);
  sub_190233640(&qword_1EAD54BB8, &qword_1EAD54BB0);
  sub_19086C4EC();
  return sub_190D56280();
}
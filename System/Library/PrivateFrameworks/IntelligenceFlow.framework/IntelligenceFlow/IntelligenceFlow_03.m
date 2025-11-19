void IntelligenceFlowAssetsClient.deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v2 + 64);
  v4 = *(v2 + 32);
  sub_1DD6E51DC();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
    v11 = v7;
LABEL_8:
    v7 = (v11 - 1) & v11;
    v13 = *(v1 + 16);
    if (*(v13 + 16))
    {
      v14 = *(*(v2 + 48) + (__clz(__rbit64(v11)) | (v10 << 6)));
      v15 = *(v1 + 16);

      v16 = sub_1DD71C4F8(v14);
      if (v17)
      {
        v18 = *(*(v13 + 56) + 8 * v16);
        swift_unknownObjectRetain();

        if (qword_1EE015AB0 != -1)
        {
          sub_1DD6E12C0();
          swift_once();
        }

        v19 = [objc_opt_self() sharedManager];
        [v19 removeObserver_];
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      v20 = *(v1 + 16);

      return;
    }

    v11 = *(v2 + 64 + 8 * v12);
    ++v10;
    if (v11)
    {
      v10 = v12;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t IntelligenceFlowAssetsClient.__deallocating_deinit()
{
  IntelligenceFlowAssetsClient.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

unint64_t sub_1DD71C4F8(char a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1DD76033C();

  return sub_1DD71C5C0(a1, v4);
}

unint64_t sub_1DD71C53C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1DD874820();
  sub_1DD71C9C8(&qword_1EE015D90);
  v5 = sub_1DD8750B0();

  return sub_1DD71C740(a1, v5);
}

unint64_t sub_1DD71C5C0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v14 = ~v3;
    while (1)
    {
      v5 = 0xD00000000000001ELL;
      if (*(*(v2 + 48) + v4) == 1)
      {
        v6 = "com.apple.if.planner";
      }

      else
      {
        v5 = 0xD00000000000001CLL;
        v6 = "com.apple.if.planner.overrides";
      }

      v7 = *(*(v2 + 48) + v4) ? v5 : 0xD000000000000014;
      v8 = *(*(v2 + 48) + v4) ? v6 : "anguage";
      if (a1)
      {
        v9 = a1 == 1 ? 0xD00000000000001ELL : 0xD00000000000001CLL;
        v10 = a1 == 1 ? "com.apple.if.planner" : "com.apple.if.planner.overrides";
      }

      else
      {
        v9 = 0xD000000000000014;
        v10 = "anguage";
      }

      if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
      {
        break;
      }

      v12 = sub_1DD875A30();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v14;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1DD71C740(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v4 = sub_1DD874820();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2 + 64;
  v14 = ~(-1 << *(v2 + 32));
  for (i = a2 & v14; ((1 << i) & *(v16 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v14)
  {
    (*(v5 + 16))(v9, *(v2 + 48) + *(v5 + 72) * i, v4, v7);
    sub_1DD71C9C8(&qword_1ECD0E368);
    v11 = sub_1DD8750F0();
    (*(v5 + 8))(v9, v4);
    if (v11)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1DD71C8E8()
{
  v1 = *(sub_1DD874890() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DD71B6F0(v3, v0 + v2, v4);
}

uint64_t sub_1DD71C9C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DD874820();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD71CA0C()
{
  result = qword_1ECD0E378[0];
  if (!qword_1ECD0E378[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECD0E378);
  }

  return result;
}

uint64_t sub_1DD71CA94(char a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  return result;
}

uint64_t sub_1DD71CAD4()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
}

uint64_t BreakpointManager.__allocating_init(getBreakpointIdentifier:)()
{
  v0 = sub_1DD6ED54C();
  BreakpointManager.init(getBreakpointIdentifier:)();
  return v0;
}

{
  v0 = sub_1DD6ED54C();
  BreakpointManager.init(getBreakpointIdentifier:)();
  return v0;
}

uint64_t BreakpointManager.init(getBreakpointIdentifier:)()
{
  sub_1DD6E51F8();
  v5 = v4;
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  v6 = *(v3 + 80);
  sub_1DD6E09F4();
  sub_1DD875300();
  if (sub_1DD875330())
  {
    v7 = *(v5 + 88);
    v8 = sub_1DD6DDEDC();
    v11 = sub_1DD71D568(v8, v9, v10);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + 120) = v11;
  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return v1;
}

{
  sub_1DD6E51F8();
  v5 = v4;
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  v6 = *(v3 + 80);
  sub_1DD6E09F4();
  sub_1DD875300();
  if (sub_1DD875330())
  {
    v7 = *(v5 + 88);
    v8 = sub_1DD6DDEDC();
    v11 = sub_1DD71D568(v8, v9, v10);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + 120) = v11;
  v12 = swift_allocObject();
  v12[2] = v6;
  v12[3] = *(v5 + 88);
  v12[4] = v2;
  v12[5] = v0;
  *(v1 + 128) = sub_1DD71D91C;
  *(v1 + 136) = v12;
  return v1;
}

uint64_t sub_1DD71CD20(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a2;
  v8 = type metadata accessor for SessionServerDebuggerEvent.DeferredTransactionReady(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BreakpointManager.EventAwaitingResponse();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v21 - v16;
  (*(v13 + 16))(&v21 - v16, a1, v12, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_1DD875300();
    if (sub_1DD875330())
    {
      v19 = sub_1DD71D568(v18, a4, a5);
    }

    else
    {

      v19 = MEMORY[0x1E69E7CD0];
    }

    (*(v13 + 8))(v17, v12);
  }

  else
  {
    sub_1DD71DEFC(v17, v11);
    v19 = v22(v11);
    sub_1DD71DF60(v11);
  }

  return v19;
}

uint64_t sub_1DD71CF54(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 88);
  type metadata accessor for BreakpointManager.EventAwaitingResponse();
  sub_1DD6DF290();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  sub_1DD71D954(a1, &v19 - v12, a2);
  sub_1DD6DDEDC();
  swift_storeEnumTagMultiPayload();
  v14 = sub_1DD71D070(v13);
  v15 = *(v8 + 8);
  v16 = sub_1DD6DDEDC();
  v17(v16);
  return v14 & 1;
}

uint64_t sub_1DD71D070(uint64_t a1)
{
  v3 = *v1;
  if (sub_1DD71CA60())
  {
    v4 = 1;
  }

  else
  {
    v5 = v1[16];
    v6 = v1[17];
    v7 = v5(a1);
    v8 = sub_1DD71CAD4();
    MEMORY[0x1E12B4E60](v7, v8, *(v3 + 80), *(v3 + 88));

    v9 = sub_1DD875460();

    v4 = v9 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD71D160()
{
  v1 = *v0;
  sub_1DD6E2108();
  v3 = *(v2 + 80);
  sub_1DD6DF290();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  (*(v5 + 16))(v10, v12);
  swift_beginAccess();
  sub_1DD6E2108();
  v16 = *(v15 + 88);
  sub_1DD875480();
  sub_1DD6DDEDC();
  sub_1DD875440();
  (*(v5 + 8))(v14, v3);
  return swift_endAccess();
}

uint64_t sub_1DD71D2B8()
{
  v1 = *v0;
  sub_1DD6E2108();
  v3 = *(v2 + 80);
  sub_1DD6E09F4();
  v4 = sub_1DD8755C0();
  sub_1DD6DF290();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  swift_beginAccess();
  sub_1DD6E2108();
  v13 = *(v12 + 88);
  sub_1DD6E09F4();
  sub_1DD875480();
  sub_1DD875450();
  (*(v6 + 8))(v11, v4);
  return swift_endAccess();
}

uint64_t BreakpointManager.deinit()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t BreakpointManager.__deallocating_deinit()
{
  BreakpointManager.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DD71D460(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DD71D480, v3, 0);
}

uint64_t sub_1DD71D480()
{
  v1 = v0[3];
  v2 = sub_1DD71CF1C(v0[2]);
  v3 = v0[1];
  v4 = v2 & 1;

  return v3(v4);
}

uint64_t sub_1DD71D4E4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DD71D504, v3, 0);
}

uint64_t sub_1DD71D504()
{
  v1 = v0[3];
  v2 = sub_1DD71CF38(v0[2]);
  v3 = v0[1];
  v4 = v2 & 1;

  return v3(v4);
}

uint64_t sub_1DD71D568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v35 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  if (sub_1DD875330())
  {
    sub_1DD875690();
    v14 = sub_1DD875680();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CD0];
  }

  v38 = sub_1DD875330();
  if (v38)
  {
    v35 = v7;
    v36 = v5;
    v15 = 0;
    v43 = (v6 + 16);
    v44 = v14 + 56;
    v40 = (v6 + 32);
    v42 = v6 + 8;
    v37 = v13;
    while (1)
    {
      v16 = sub_1DD875320();
      sub_1DD8752F0();
      if (v16)
      {
        v17 = *(v6 + 16);
        result = v17(v13, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15), a2);
      }

      else
      {
        v41 = v15;
        result = sub_1DD875710();
        if (v35 != 8)
        {
          goto LABEL_23;
        }

        v46 = result;
        v17 = *v43;
        (*v43)(v13, &v46, a2);
        result = swift_unknownObjectRelease();
        v15 = v41;
      }

      v41 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v39 = *v40;
      v39(v45, v13, a2);
      v19 = *(v14 + 40);
      v20 = sub_1DD8750B0();
      v21 = ~(-1 << *(v14 + 32));
      while (1)
      {
        v22 = v20 & v21;
        v23 = (v20 & v21) >> 6;
        v24 = *(v44 + 8 * v23);
        v25 = 1 << (v20 & v21);
        if ((v25 & v24) == 0)
        {
          break;
        }

        v26 = v14;
        v17(v8, (*(v14 + 48) + *(v6 + 72) * v22), a2);
        v27 = a3;
        v28 = *(a3 + 8);
        v29 = sub_1DD8750F0();
        v30 = *(v6 + 8);
        v30(v8, a2);
        if (v29)
        {
          v30(v45, a2);
          a3 = v27;
          v13 = v37;
          v14 = v26;
          v15 = v41;
          goto LABEL_16;
        }

        v20 = v22 + 1;
        a3 = v27;
        v14 = v26;
      }

      v31 = v45;
      *(v44 + 8 * v23) = v25 | v24;
      result = (v39)(*(v14 + 48) + *(v6 + 72) * v22, v31, a2);
      v32 = *(v14 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      v13 = v37;
      v15 = v41;
      if (v33)
      {
        goto LABEL_22;
      }

      *(v14 + 16) = v34;
LABEL_16:
      v5 = v36;
      if (v15 == v38)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_20:

    return v14;
  }

  return result;
}

uint64_t sub_1DD71D954(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t dispatch thunk of BreakpointPredicate.shouldBreak(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (sub_1DD6E07DC(a1, a2, a3) + 8);
  v10 = *v9 + **v9;
  v4 = (*v9)[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v6 = sub_1DD6E12D4(v5);

  return v7(v6);
}

{
  v9 = (sub_1DD6E07DC(a1, a2, a3) + 16);
  v10 = *v9 + **v9;
  v4 = (*v9)[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v6 = sub_1DD6E12D4(v5);

  return v7(v6);
}

uint64_t sub_1DD71DBCC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of BreakpointManager.__allocating_init(getBreakpointIdentifier:)()
{
  return (*(v0 + 176))();
}

{
  return (*(v0 + 184))();
}

uint64_t dispatch thunk of BreakpointManager.shouldBreak(on:)()
{
  return (*(*v0 + 208))();
}

{
  return (*(*v0 + 216))();
}

uint64_t sub_1DD71DE88()
{
  result = type metadata accessor for SessionServerDebuggerEvent.DeferredTransactionReady(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SessionServerDebuggerEvent.InjectionRequest(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD71DEFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionServerDebuggerEvent.DeferredTransactionReady(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD71DF60(uint64_t a1)
{
  v2 = type metadata accessor for SessionServerDebuggerEvent.DeferredTransactionReady(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SessionDebuggerSubscriptionEvent.DebuggerEvent.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DD874820();
  v4 = sub_1DD6DE1C4(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t SessionDebuggerSubscriptionEvent.DebuggerEvent.eventId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SessionDebuggerSubscriptionEvent.DebuggerEvent(0) + 20);
  v4 = sub_1DD874820();
  v5 = sub_1DD6DE1C4(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t SessionDebuggerSubscriptionEvent.DebuggerEvent.DebuggerPaused.pendingTransactions.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SessionDebuggerSubscriptionEvent.DebuggerEvent.DebuggerPaused.pendingInjectionRequests.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t SessionDebuggerSubscriptionEvent.DebuggerEvent.DebuggerPaused.debugCommandHandler.setter(__int128 *a1)
{
  sub_1DD6E1EC8((v1 + 16));

  return sub_1DD6DF5E4(a1, v1 + 16);
}

uint64_t SessionDebuggerEventsSubscription.Iterator.next()(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  v3 = sub_1DD710A9C(&qword_1ECD0E480, &qword_1DD8787F8);
  sub_1DD6DEA10(v3);
  v5 = *(v4 + 64);
  *(v2 + 80) = sub_1DD6DEB50();
  v6 = type metadata accessor for SessionDebuggerSubscriptionEvent.DebuggerEvent(0);
  *(v2 + 88) = v6;
  sub_1DD6DEA10(v6);
  v8 = *(v7 + 64);
  *(v2 + 96) = sub_1DD6DEB50();
  v9 = sub_1DD874820();
  *(v2 + 104) = v9;
  v10 = *(v9 - 8);
  *(v2 + 112) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = swift_task_alloc();
  v12 = type metadata accessor for SessionServerDebuggerEvent(0);
  sub_1DD6DEA10(v12);
  v14 = *(v13 + 64);
  *(v2 + 136) = sub_1DD6DEB50();
  v15 = type metadata accessor for MessagePayload(0);
  *(v2 + 144) = v15;
  sub_1DD6DEA10(v15);
  v17 = *(v16 + 64);
  *(v2 + 152) = sub_1DD6DEB50();
  v18 = sub_1DD710A9C(&qword_1ECD0E488, &qword_1DD878800);
  sub_1DD6DEA10(v18);
  v20 = *(v19 + 64);
  *(v2 + 160) = sub_1DD6DEB50();
  v21 = type metadata accessor for SessionServerMessage(0);
  *(v2 + 168) = v21;
  sub_1DD6DEA10(v21);
  v23 = *(v22 + 64);
  *(v2 + 176) = sub_1DD6DEB50();
  v24 = type metadata accessor for SessionDebuggerEventsSubscription.Iterator(0);
  *(v2 + 184) = v24;
  *(v2 + 232) = *(v24 + 24);
  v25 = *(v2 + 72);
  v26 = *(MEMORY[0x1E69E87B0] + 4);
  v27 = swift_task_alloc();
  *(v2 + 192) = v27;
  sub_1DD710A9C(&qword_1ECD0E490, &qword_1DD878808);
  *v27 = v2;
  v28 = sub_1DD6E04C0();

  return MEMORY[0x1EEE6DB98](v28);
}

uint64_t sub_1DD71E448()
{
  sub_1DD6DDF4C();
  sub_1DD6DF09C();
  v3 = *(v2 + 192);
  v4 = *v1;
  sub_1DD6E04EC();
  *v5 = v4;
  *(v6 + 200) = v0;

  if (v0)
  {
    v7 = sub_1DD71EA18;
  }

  else
  {
    v7 = sub_1DD71E54C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

unint64_t sub_1DD71E54C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  if (sub_1DD6E5ED0(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 64);
    sub_1DD6FC560(v1, &qword_1ECD0E488, &qword_1DD878800);
    v4 = type metadata accessor for SessionDebuggerSubscriptionEvent(0);
    sub_1DD6E5E68(v3, 1, 1, v4);
    goto LABEL_8;
  }

  v5 = *(v0 + 176);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  sub_1DD71EF1C(v1, v5);
  sub_1DD71EEC0(v5 + *(v2 + 32), v6);
  if (swift_getEnumCaseMultiPayload() != 40)
  {
    v17 = *(v0 + 152);
    v18 = *(v0 + 64);
    sub_1DD71EEC0(*(v0 + 176), v18);
    v19 = type metadata accessor for SessionDebuggerSubscriptionEvent(0);
    swift_storeEnumTagMultiPayload();
    sub_1DD6E5E68(v18, 0, 1, v19);
    sub_1DD6E5A64(v17, type metadata accessor for MessagePayload);
    sub_1DD6E12F0();
LABEL_8:
    sub_1DD6DE250();

    sub_1DD6DDF40();
    sub_1DD6ED434();

    __asm { BRAA            X1, X16 }
  }

  v8 = *(v0 + 184);
  v9 = *(v0 + 72);
  sub_1DD71EF1C(*(v0 + 152), *(v0 + 136));
  v10 = *(v8 + 28);
  v11 = *(v9 + v10);
  if (*(v11 + 16))
  {
    v12 = *(v0 + 112);
    v13 = sub_1DD71C53C(*(v0 + 176));
    v14 = *(v12 + 16);
    if (v15)
    {
      v16 = *(*(v11 + 56) + 8 * v13);

      goto LABEL_14;
    }

    v22 = *(v0 + 112);
  }

  else
  {
    v14 = *(*(v0 + 112) + 16);
  }

  v23 = *(v0 + 128);
  v24 = *(v0 + 72);
  v25 = *v24;
  v14(v23, *(v0 + 176), *(v0 + 104));
  sub_1DD6E0F0C((v24 + 1), v0 + 16);
  v26 = type metadata accessor for SessionDebugger();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();

  v16 = sub_1DD720098(v29, v23, (v0 + 16));
LABEL_14:
  *(v0 + 208) = v16;
  v30 = *(v0 + 120);
  v57 = v14;
  v14(v30, *(v0 + 176), *(v0 + 104));

  v31 = *(v9 + v10);
  swift_isUniquelyReferenced_nonNull_native();
  v32 = *(v9 + v10);
  *(v0 + 56) = v32;
  result = sub_1DD71C53C(v30);
  if (__OFADD__(*(v32 + 16), (v34 & 1) == 0))
  {
    __break(1u);
    goto LABEL_29;
  }

  v35 = result;
  v36 = v34;
  sub_1DD710A9C(&qword_1ECD0E498, &qword_1DD878810);
  if (sub_1DD875770())
  {
    v37 = *(v0 + 56);
    v38 = sub_1DD71C53C(*(v0 + 120));
    if ((v36 & 1) != (v39 & 1))
    {
      v40 = *(v0 + 104);
      sub_1DD6ED434();

      return sub_1DD875A80();
    }

    v35 = v38;
  }

  v58 = v10;
  v42 = *(v0 + 56);
  v44 = *(v0 + 112);
  v43 = *(v0 + 120);
  v45 = *(v0 + 104);
  if ((v36 & 1) == 0)
  {
    v42[(v35 >> 6) + 8] |= 1 << v35;
    v57(v42[6] + *(v44 + 72) * v35, v43, v45);
    *(v42[7] + 8 * v35) = v16;
    result = (*(v44 + 8))(v43, v45);
    v48 = v42[2];
    v49 = __OFADD__(v48, 1);
    v50 = v48 + 1;
    if (!v49)
    {
      v42[2] = v50;
      goto LABEL_25;
    }

LABEL_29:
    __break(1u);
    return result;
  }

  v46 = v42[7];
  v47 = *(v46 + 8 * v35);
  *(v46 + 8 * v35) = v16;

  (*(v44 + 8))(v43, v45);
LABEL_25:
  *(v9 + v58) = v42;
  v51 = swift_task_alloc();
  *(v0 + 216) = v51;
  *v51 = v0;
  v51[1] = sub_1DD71EAC4;
  v52 = *(v0 + 136);
  v53 = *(v0 + 80);
  sub_1DD6ED434();

  return sub_1DD720168(v54, v55);
}

uint64_t sub_1DD71EA18()
{
  v1 = *(v0 + 200);
  sub_1DD6E69B8();

  sub_1DD6DDF40();

  return v2();
}

uint64_t sub_1DD71EAC4()
{
  sub_1DD6DDF4C();
  sub_1DD6DF09C();
  v3 = *(v2 + 216);
  v4 = *v1;
  sub_1DD6E04EC();
  *v5 = v4;
  *(v6 + 224) = v0;

  if (v0)
  {
    v7 = sub_1DD71EDB4;
  }

  else
  {
    v7 = sub_1DD71EBC8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DD71EBC8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 136);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);

  sub_1DD6E0A00();
  sub_1DD6E5A64(v2, v5);
  v6 = sub_1DD6E5ED0(v4, 1, v3);
  v7 = *(v0 + 176);
  if (v6 == 1)
  {
    sub_1DD6FC560(*(v0 + 80), &qword_1ECD0E480, &qword_1DD8787F8);
    sub_1DD6E12F0();
    v8 = *(v0 + 232);
    v9 = *(v0 + 72);
    v10 = *(MEMORY[0x1E69E87B0] + 4);
    v11 = swift_task_alloc();
    *(v0 + 192) = v11;
    v12 = sub_1DD710A9C(&qword_1ECD0E490, &qword_1DD878808);
    *v11 = v0;
    v13 = sub_1DD6E04C0(v12, v12);

    return MEMORY[0x1EEE6DB98](v13);
  }

  else
  {
    v14 = *(v0 + 96);
    v15 = *(v0 + 64);
    sub_1DD71EF1C(*(v0 + 80), v14);
    sub_1DD71EF1C(v14, v15);
    v16 = type metadata accessor for SessionDebuggerSubscriptionEvent(0);
    swift_storeEnumTagMultiPayload();
    sub_1DD6E5E68(v15, 0, 1, v16);
    sub_1DD6E12F0();
    sub_1DD6DE250();

    sub_1DD6DDF40();

    return v17();
  }
}

uint64_t sub_1DD71EDB4()
{
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[17];

  sub_1DD6E0A00();
  sub_1DD6E5A64(v3, v4);
  sub_1DD6E12F0();
  v5 = v0[28];
  sub_1DD6E69B8();

  sub_1DD6DDF40();

  return v6();
}

uint64_t sub_1DD71EEC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD6E0D28();
  v6 = v5(v4);
  sub_1DD6DE1C4(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1DD71EF1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD6E0D28();
  v6 = v5(v4);
  sub_1DD6DE1C4(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1DD71EF78()
{
  sub_1DD6DDF4C();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = sub_1DD6E04FC(v2);
  *v3 = v4;
  v3[1] = sub_1DD6FA5C4;

  return SessionDebuggerEventsSubscription.Iterator.next()(v1);
}

uint64_t sub_1DD71F008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1DD71F0D4;

  return (sub_1DD85FE94)(a1, a2, a3);
}

uint64_t sub_1DD71F0D4()
{
  sub_1DD6DF09C();
  v3 = v2;
  v4 = *(v2 + 24);
  v5 = *v1;
  sub_1DD6E04EC();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_1DD71F1E8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  sub_1DD6DF5E4(a2, v3 + 24);
  *(v3 + 64) = a3;
  return v3;
}

uint64_t sub_1DD71F224@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_1DD6E0F0C(v1 + 24, (a1 + 1));
  v4 = *(v1 + 64);
  v5 = type metadata accessor for SessionDebuggerEventsSubscription.Iterator(0);
  v6 = *(v5 + 24);

  sub_1DD710A9C(&qword_1ECD0E4A0, qword_1DD878818);
  sub_1DD8753D0();
  v7 = *(v5 + 28);
  sub_1DD874820();
  sub_1DD6E0D28();
  type metadata accessor for SessionDebugger();
  sub_1DD71F404(&qword_1EE015D90, MEMORY[0x1E69695A8]);
  result = sub_1DD875080();
  *(a1 + v7) = result;
  *a1 = v3;
  return result;
}

void *SessionDebuggerEventsSubscription.deinit()
{
  v1 = v0[2];

  sub_1DD6E1EC8(v0 + 3);
  v2 = v0[8];

  return v0;
}

uint64_t SessionDebuggerEventsSubscription.__deallocating_deinit()
{
  SessionDebuggerEventsSubscription.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t sub_1DD71F378@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  sub_1DD71F224(a1);
}

uint64_t sub_1DD71F404(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD71F44C()
{
  result = type metadata accessor for SessionServerMessage(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SessionDebuggerSubscriptionEvent.DebuggerEvent(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD71F4E8()
{
  result = sub_1DD874820();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SessionDebuggerSubscriptionEvent.DebuggerEvent.Payload(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD71F56C()
{
  result = type metadata accessor for SessionServerDebuggerEvent.CurrentTranscript(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_1DD71F5D8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DD71F5F4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD71F634(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of DebugCommandHandling.continue()()
{
  sub_1DD6E48E0();
  v2 = *(sub_1DD6DE498(v0, v1) + 8);
  sub_1DD6E5228();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = sub_1DD6E04FC(v6);
  *v7 = v8;
  v9 = sub_1DD6E5210(v7);

  return v10(v9);
}

uint64_t dispatch thunk of DebugCommandHandling.requestCurrentTranscript()()
{
  sub_1DD6E48E0();
  v2 = *(sub_1DD6DE498(v0, v1) + 16);
  sub_1DD6E5228();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = sub_1DD6E04FC(v6);
  *v7 = v8;
  v9 = sub_1DD6E5210(v7);

  return v10(v9);
}

uint64_t dispatch thunk of DebugCommandHandling.terminate()()
{
  sub_1DD6E48E0();
  v2 = *(sub_1DD6DE498(v0, v1) + 24);
  sub_1DD6E5228();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = sub_1DD6E04FC(v6);
  *v7 = v8;
  v9 = sub_1DD6E5210(v7);

  return v10(v9);
}

uint64_t dispatch thunk of DebugCommandHandling.return(injectionResponseValues:)()
{
  sub_1DD6E48E0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 32);
  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v9 = sub_1DD6E04FC(v8);
  *v9 = v10;
  v9[1] = sub_1DD71FCC8;

  return v12(v5, v3, v1);
}

void sub_1DD71FB08()
{
  type metadata accessor for SessionClient();
  if (v0 <= 0x3F)
  {
    sub_1DD71FBBC();
    if (v1 <= 0x3F)
    {
      type metadata accessor for EventsSubscription.Iterator(319);
      if (v2 <= 0x3F)
      {
        sub_1DD71FC18();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1DD71FBBC()
{
  result = qword_1ECD0E4F0;
  if (!qword_1ECD0E4F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECD0E4F0);
  }

  return result;
}

void sub_1DD71FC18()
{
  if (!qword_1ECD0E4F8)
  {
    sub_1DD874820();
    type metadata accessor for SessionDebugger();
    sub_1DD71F404(&qword_1EE015D90, MEMORY[0x1E69695A8]);
    v0 = sub_1DD875090();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECD0E4F8);
    }
  }
}

uint64_t sub_1DD71FCD4()
{
  v1 = type metadata accessor for SessionServerDebuggerEvent.InjectionRequest(0);
  v2 = sub_1DD6DEA1C(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DE4A8();
  v9 = (v8 - v7);
  v10 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_inProgressSpans;
  sub_1DD6E64F4();
  v11 = *(v0 + v10);
  if (*(v11 + 16))
  {
    v12 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedInjectionRequests;
    sub_1DD6E64F4();
    v13 = *(v0 + v12);
    v14 = *(v13 + 16);
    if (v14)
    {
      v26 = MEMORY[0x1E69E7CC0];

      sub_1DD76C464(0, v14, 0);
      v15 = v26;
      v16 = v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v17 = *(v4 + 72);
      do
      {
        sub_1DD6DE278();
        sub_1DD722E6C(v16, v9, v18);
        v19 = *v9;
        sub_1DD6E1318();
        sub_1DD722F80(v9, v20);
        v22 = *(v26 + 16);
        v21 = *(v26 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1DD76C464(v21 > 1, v22 + 1, 1);
        }

        *(v26 + 16) = v22 + 1;
        *(v26 + 8 * v22 + 32) = v19;
        v16 += v17;
        --v14;
      }

      while (v14);
    }

    else
    {

      v15 = MEMORY[0x1E69E7CC0];
    }

    v24 = sub_1DD71FEC4(v15);
    v23 = sub_1DD71FF58(v11, v24);
  }

  else
  {
    v23 = 1;
  }

  return v23 & 1;
}

uint64_t sub_1DD71FEC4(uint64_t a1)
{
  v2 = MEMORY[0x1E12B4E70](*(a1 + 16), MEMORY[0x1E69E76D8], MEMORY[0x1E69E76E8]);
  v8 = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_1DD722708(&v7, *(a1 + v4));
      v4 += 8;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

uint64_t sub_1DD71FF58(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
LABEL_7:
  if (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = *(*(v3 + 48) + 8 * (v9 | (v4 << 6)));
    v13 = *(a2 + 40);
    result = sub_1DD875B10();
    v14 = ~(-1 << *(a2 + 32));
    while (1)
    {
      v15 = result & v14;
      if (((*(a2 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
      {
        return 0;
      }

      result = v15 + 1;
      if (*(*(a2 + 48) + 8 * v15) == v12)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 56 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD720098(uint64_t a1, uint64_t a2, __int128 *a3)
{
  swift_defaultActor_initialize();
  *(v3 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_shouldPauseWhenSpansAreAwaitingResponse) = 0;
  *(v3 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_inProgressSpans) = MEMORY[0x1E69E7CD0];
  v7 = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedTransactions) = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedInjectionRequests) = v7;
  *(v3 + 112) = a1;
  v8 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_sessionId;
  v9 = sub_1DD874820();
  sub_1DD6DE1C4(v9);
  (*(v10 + 32))(v3 + v8, a2);
  sub_1DD71FCCC(a3, v3 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_breakpointPredicate);
  return v3;
}

uint64_t sub_1DD720168(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = type metadata accessor for SessionServerDebuggerEvent.InjectionRequest(0);
  sub_1DD6DEA1C(v4);
  v3[26] = v5;
  v7 = *(v6 + 64);
  v3[27] = sub_1DD6DEB50();
  v8 = type metadata accessor for SessionServerDebuggerEvent.CurrentTranscript(0);
  sub_1DD6DEA10(v8);
  v10 = *(v9 + 64);
  v3[28] = sub_1DD6DEB50();
  v11 = type metadata accessor for SessionServerDebuggerEvent.DeferredTransactionReady(0);
  sub_1DD6DEA1C(v11);
  v3[29] = v12;
  v14 = *(v13 + 64);
  v3[30] = sub_1DD6DEB50();
  v15 = type metadata accessor for SessionServerDebuggerEvent.Payload(0);
  v3[31] = v15;
  sub_1DD6DEA10(v15);
  v17 = *(v16 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v18 = type metadata accessor for SessionServerDebuggerEvent.RequestFailed(0);
  v3[34] = v18;
  sub_1DD6DEA10(v18);
  v20 = *(v19 + 64);
  v3[35] = sub_1DD6DEB50();
  v21 = sub_1DD6ED450();

  return MEMORY[0x1EEE6DFA0](v21, v22, v23);
}

uint64_t sub_1DD7202D4()
{
  v85 = v0;
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[24];
  sub_1DD6E5F40();
  sub_1DD722E6C(v4, v1, v5);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v6 = v0[34];
    v7 = v0[35];
    sub_1DD722ECC(v0[33], v7, type metadata accessor for SessionServerDebuggerEvent.RequestFailed);
    v8 = *(v7 + *(v6 + 20));
    sub_1DD722F2C();
    swift_allocError();
    *v9 = v8;
    swift_willThrow();
    sub_1DD722F80(v7, type metadata accessor for SessionServerDebuggerEvent.RequestFailed);
    v10 = v0[35];
    v12 = v0[32];
    v11 = v0[33];
    v13 = v0[30];
    v15 = v0[27];
    v14 = v0[28];

    sub_1DD6DDF40();
  }

  else
  {
    v17 = v0[32];
    v18 = v0[31];
    v19 = v0[24];
    sub_1DD6E0D34(v0[33]);
    sub_1DD6E5F40();
    sub_1DD722E6C(v19, v17, v20);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v21 = v0[32];
        v23 = v0[29];
        v22 = v0[30];
        v24 = v0[25];
        sub_1DD6E69E0();
        sub_1DD722ECC(v25, v22, v26);
        v27 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedTransactions;
        sub_1DD6DEB68();
        sub_1DD8647C8();
        v28 = sub_1DD6E5D70();
        sub_1DD864854(v28);
        sub_1DD6FC3DC();
        sub_1DD6DE4B8();
        sub_1DD722E6C(v22, v29, v30);
        *(v24 + v27) = v24 + v27;
        swift_endAccess();
        v31 = *(v24 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_breakpointPredicate + 32);
        sub_1DD6DF224((v24 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_breakpointPredicate), *(v24 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_breakpointPredicate + 24));
        v32 = *(v31 + 8);
        v82 = v32 + *v32;
        v33 = v32[1];
        v34 = swift_task_alloc();
        v0[36] = v34;
        *v34 = v0;
        v34[1] = sub_1DD7209F4;
        v35 = sub_1DD6E7118(v0[30]);

        return v36(v35);
      case 3u:
        v54 = v0[32];
        v55 = v0[25];
        v56 = *v54;
        v57 = v54[2];
        sub_1DD6DEB68();
        sub_1DD722708(&v84, v56);
        swift_endAccess();

        goto LABEL_12;
      case 4u:
        v37 = v0[32];
        v38 = v0[25];
        v39 = *v37;
        v40 = v37[2];
        sub_1DD6DEB68();
        sub_1DD722C08(v39);
        swift_endAccess();

        if (*(v38 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_shouldPauseWhenSpansAreAwaitingResponse) != 1)
        {
          goto LABEL_12;
        }

        v41 = v0[25];
        if ((sub_1DD71FCD4() & 1) == 0)
        {
          goto LABEL_12;
        }

        v42 = v0[25];
        v43 = v0[23];
        v44 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_sessionId;
        v45 = sub_1DD874820();
        sub_1DD6DE1C4(v45);
        (*(v46 + 16))(v43, v42 + v44);
        v47 = type metadata accessor for SessionDebuggerSubscriptionEvent.DebuggerEvent(0);
        v48 = v43 + *(v47 + 20);
        _s16IntelligenceFlow15SessionClientIDVACycfC_0();
        v49 = (v43 + *(v47 + 24));
        v50 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedTransactions;
        sub_1DD6E64F4();
        v51 = *(v42 + v50);
        v52 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedInjectionRequests;
        sub_1DD6E64F4();
        v53 = *(v42 + v52);
        v49[5] = type metadata accessor for SessionDebugger();
        v49[6] = &off_1F58CF3E8;
        v49[1] = v53;
        v49[2] = v42;
        *v49 = v51;
        type metadata accessor for SessionDebuggerSubscriptionEvent.DebuggerEvent.Payload(0);
        swift_storeEnumTagMultiPayload();
        sub_1DD6E5E68(v43, 0, 1, v47);

        break;
      case 6u:
        v63 = v0[28];
        v64 = v0[25];
        v65 = v0[23];
        sub_1DD722ECC(v0[32], v63, type metadata accessor for SessionServerDebuggerEvent.CurrentTranscript);
        v66 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_sessionId;
        v67 = sub_1DD874820();
        sub_1DD6DE1C4(v67);
        (*(v68 + 16))(v65, v64 + v66);
        v69 = type metadata accessor for SessionDebuggerSubscriptionEvent.DebuggerEvent(0);
        v70 = v65 + *(v69 + 20);
        _s16IntelligenceFlow15SessionClientIDVACycfC_0();
        sub_1DD722ECC(v63, v65 + *(v69 + 24), type metadata accessor for SessionServerDebuggerEvent.CurrentTranscript);
        type metadata accessor for SessionDebuggerSubscriptionEvent.DebuggerEvent.Payload(0);
        swift_storeEnumTagMultiPayload();
        v59 = v65;
        v60 = 0;
        v61 = 1;
        v62 = v69;
        goto LABEL_14;
      case 0xBu:
        v72 = v0[27];
        v73 = v0[25];
        sub_1DD722ECC(v0[32], v72, type metadata accessor for SessionServerDebuggerEvent.InjectionRequest);
        v74 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedInjectionRequests;
        v0[37] = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedInjectionRequests;
        sub_1DD6DEB68();
        sub_1DD8647B0();
        v75 = sub_1DD6E5D70();
        sub_1DD86483C(v75);
        sub_1DD6FC3DC();
        sub_1DD6DE278();
        sub_1DD722E6C(v72, v76, v77);
        *(v73 + v74) = v73 + v74;
        swift_endAccess();
        v78 = *(v73 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_breakpointPredicate + 32);
        sub_1DD6DF224((v73 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_breakpointPredicate), *(v73 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_breakpointPredicate + 24));
        v79 = *(v78 + 16);
        v83 = v79 + *v79;
        v80 = v79[1];
        v81 = swift_task_alloc();
        v0[38] = v81;
        *v81 = v0;
        v81[1] = sub_1DD720C68;
        v35 = sub_1DD6E7118(v0[27]);

        return v36(v35);
      default:
        sub_1DD6E0D34(v0[32]);
LABEL_12:
        v58 = v0[23];
        type metadata accessor for SessionDebuggerSubscriptionEvent.DebuggerEvent(0);
        v59 = sub_1DD6F3088();
LABEL_14:
        sub_1DD6E5E68(v59, v60, v61, v62);
        break;
    }

    sub_1DD6E48EC();

    sub_1DD6DDF40();
  }

  return v16();
}

uint64_t sub_1DD7209F4()
{
  v1 = *v0;
  sub_1DD6E07F0();
  *v3 = v2;
  v5 = *(v4 + 288);
  v6 = *(v4 + 200);
  v7 = *v0;
  sub_1DD6E07F0();
  *v8 = v7;
  *(v10 + 312) = v9;

  v11 = sub_1DD6ED450();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DD720AFC()
{
  v1 = &qword_1ECD0E000;
  if (*(v0 + 312) == 1)
  {
    sub_1DD6EE1FC(&qword_1ECD0E000);
  }

  if (*(*(v0 + 200) + v1[162]))
  {
    v2 = *(v0 + 240);
    sub_1DD6ED570();
    sub_1DD722F80(v3, v4);
  }

  else
  {
    sub_1DD874820();
    sub_1DD722428();
    v5 = sub_1DD875080();
    sub_1DD721430(v5);
    v6 = *(v0 + 240);
    sub_1DD6ED570();
    sub_1DD722F80(v7, v8);
  }

  v9 = *(v0 + 184);
  type metadata accessor for SessionDebuggerSubscriptionEvent.DebuggerEvent(0);
  v10 = sub_1DD6F3088();
  sub_1DD6E5E68(v10, v11, v12, v13);
  sub_1DD6E48EC();

  sub_1DD6DDF40();

  return v14();
}

uint64_t sub_1DD720C68()
{
  v1 = *v0;
  sub_1DD6E07F0();
  *v3 = v2;
  v5 = *(v4 + 304);
  v6 = *(v4 + 200);
  v7 = *v0;
  sub_1DD6E07F0();
  *v8 = v7;
  *(v10 + 313) = v9;

  v11 = sub_1DD6ED450();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DD720D70()
{
  v1 = &qword_1ECD0E000;
  if (*(v0 + 313) == 1)
  {
    sub_1DD6EE1FC(&qword_1ECD0E000);
  }

  v2 = *(v0 + 200);
  v3 = v1[162];
  if ((*(v2 + v3) & 1) == 0)
  {
    sub_1DD874820();
    sub_1DD722428();
    v22 = sub_1DD875080();
    sub_1DD721430(v22);

    if (*(v2 + v3) != 1)
    {
      goto LABEL_8;
    }

    v23 = *(v0 + 200);
  }

  if (sub_1DD71FCD4())
  {
    v4 = *(v0 + 296);
    v5 = *(v0 + 216);
    v6 = *(v0 + 200);
    v7 = *(v0 + 184);
    v8 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_sessionId;
    v9 = sub_1DD874820();
    sub_1DD6DE1C4(v9);
    (*(v10 + 16))(v7, v6 + v8);
    v11 = type metadata accessor for SessionDebuggerSubscriptionEvent.DebuggerEvent(0);
    v12 = v7 + *(v11 + 20);
    _s16IntelligenceFlow15SessionClientIDVACycfC_0();
    v13 = (v7 + *(v11 + 24));
    v14 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedTransactions;
    sub_1DD6E64F4();
    v15 = *(v6 + v14);
    v16 = *(v6 + v4);
    v13[5] = type metadata accessor for SessionDebugger();
    v13[6] = &off_1F58CF3E8;
    v13[2] = v6;

    sub_1DD6E1318();
    sub_1DD722F80(v5, v17);
    *v13 = v15;
    v13[1] = v16;
    type metadata accessor for SessionDebuggerSubscriptionEvent.DebuggerEvent.Payload(0);
    swift_storeEnumTagMultiPayload();
    v18 = v7;
    v19 = 0;
    v20 = 1;
    v21 = v11;
    goto LABEL_9;
  }

LABEL_8:
  v24 = *(v0 + 216);
  sub_1DD6E1318();
  sub_1DD722F80(v25, v26);
  v27 = *(v0 + 184);
  type metadata accessor for SessionDebuggerSubscriptionEvent.DebuggerEvent(0);
  v18 = sub_1DD6F3088();
LABEL_9:
  sub_1DD6E5E68(v18, v19, v20, v21);
  sub_1DD6E48EC();

  sub_1DD6DDF40();

  return v28();
}

uint64_t sub_1DD720FF0()
{
  sub_1DD874820();
  sub_1DD722428();
  v1 = sub_1DD875080();
  *(v0 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_shouldPauseWhenSpansAreAwaitingResponse) = 0;
  sub_1DD721430(v1);
}

uint64_t sub_1DD721088()
{
  v27 = type metadata accessor for MessagePayload(0);
  v3 = sub_1DD6DE1C4(v27);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DE4A8();
  v8 = v7 - v6;
  v9 = sub_1DD874820();
  v10 = sub_1DD6DDEAC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DE4A8();
  v17 = v16 - v15;
  v18 = type metadata accessor for SessionClientMessage(0);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DE4A8();
  sub_1DD6E1F40();
  v21 = sub_1DD722FD8();
  v2(v21);
  _s16IntelligenceFlow15SessionClientIDVACycfC_0();
  type metadata accessor for SessionClientDebuggerEvent.Payload(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  (v2)(v1, v17, v9);
  v22 = *(v19 + 32);
  sub_1DD6E5238();
  sub_1DD722ECC(v8, v1 + v23, v24);
  (*(v12 + 8))(v17, v9);
  sub_1DD6E6C28(*(v19 + 28));
  if (!v0)
  {
  }

  sub_1DD6DF2A0();
  return sub_1DD722F80(v1, v25);
}

uint64_t sub_1DD721260()
{
  v27 = type metadata accessor for MessagePayload(0);
  v3 = sub_1DD6DE1C4(v27);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DE4A8();
  v8 = v7 - v6;
  v9 = sub_1DD874820();
  v10 = sub_1DD6DDEAC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DE4A8();
  v17 = v16 - v15;
  v18 = type metadata accessor for SessionClientMessage(0);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DE4A8();
  sub_1DD6E1F40();
  v21 = sub_1DD722FD8();
  v2(v21);
  type metadata accessor for SessionClientDebuggerEvent.Payload(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  (v2)(v1, v17, v9);
  v22 = *(v19 + 32);
  sub_1DD6E5238();
  sub_1DD722ECC(v8, v1 + v23, v24);
  (*(v12 + 8))(v17, v9);
  sub_1DD6E6C28(*(v19 + 28));
  if (!v0)
  {
  }

  sub_1DD6DF2A0();
  return sub_1DD722F80(v1, v25);
}

uint64_t sub_1DD721430(uint64_t a1)
{
  v3 = v2;
  v140 = a1;
  v162 = type metadata accessor for SessionClientDebuggerEvent.Payload(0);
  v4 = sub_1DD6DE1C4(v162);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DE4A8();
  v9 = sub_1DD6ED230(v8 - v7);
  v159 = type metadata accessor for SessionServerDebuggerEvent.InjectionRequest(v9);
  v10 = sub_1DD6DDEAC(v159);
  v139 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6E09E0();
  v157 = v14;
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6E8870();
  v158 = v16;
  v17 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  v18 = sub_1DD6DEA10(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = sub_1DD6ED230(&v133 - v21);
  v161 = type metadata accessor for MessagePayload(v22);
  v23 = sub_1DD6DE1C4(v161);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1DD6E09E0();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6E8870();
  sub_1DD6ED230(v27);
  v169 = sub_1DD874820();
  v28 = sub_1DD6DDEAC(v169);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD6E09E0();
  v156 = v33;
  MEMORY[0x1EEE9AC00](v34);
  v155 = &v133 - v35;
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD6E8870();
  v168 = v38;
  v160 = type metadata accessor for SessionClientMessage(0);
  v39 = sub_1DD6DE1C4(v160);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD6E09E0();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v133 - v43;
  v152 = type metadata accessor for SessionServerDebuggerEvent.DeferredTransactionReady(0);
  v45 = sub_1DD6DDEAC(v152);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v45);
  sub_1DD6E09E0();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v50);
  sub_1DD6E8870();
  v150 = v51;
  v52 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedTransactions;
  swift_beginAccess();
  v135 = v52;
  v53 = *(v1 + v52);
  v54 = *(v53 + 16);
  v163 = v1;
  v148 = v54;
  if (v54)
  {
    v145 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_sessionId;
    v144 = *(v1 + 112);
    v143 = v53 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
    v167 = (v30 + 16);
    v134 = v30;
    v142 = (v30 + 8);

    v56 = 0;
    v146 = v44;
    v141 = v47;
    *&v147 = result;
    while (1)
    {
      if (v56 >= *(result + 16))
      {
        __break(1u);
        goto LABEL_23;
      }

      v57 = *(v47 + 72);
      sub_1DD6DE4B8();
      v58 = v150;
      sub_1DD722E6C(v59, v150, v60);
      v166 = *v167;
      v61 = v1 + v145;
      v62 = v169;
      v166(v168, v61, v169);
      v63 = v149;
      _s16IntelligenceFlow15SessionClientIDVACycfC_0();
      sub_1DD6E69E0();
      v64 = v151;
      sub_1DD722ECC(v58, v151, v65);
      v66 = *v64;
      v165 = v64[1];
      v67 = v152;
      v68 = v153;
      sub_1DD722348(v64 + *(v152 + 24), v153);
      v69 = *(v67 + 32);
      v70 = (v64 + *(v67 + 28));
      v71 = v70[1];
      v164 = *v70;
      v72 = *(v64 + v69);

      sub_1DD6ED570();
      sub_1DD722F80(v64, v73);
      v74 = type metadata accessor for SessionClientDebuggerEvent.PostDeferredTransaction(0);
      v170 = v3;
      v75 = v74[7];
      sub_1DD6E5E68(v63 + v75, 1, 1, v62);
      *(v63 + v74[5]) = v66;
      *(v63 + v74[6]) = v165;
      v76 = v68;
      v77 = v146;
      sub_1DD7223B8(v76, v63 + v75);
      v78 = (v63 + v74[8]);
      *v78 = v164;
      v78[1] = v71;
      *(v63 + v74[9]) = v72;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v79 = v168;
      v166(v77, v168, v62);
      v80 = v160;
      v81 = *(v160 + 24);
      sub_1DD6E5238();
      sub_1DD722ECC(v63, v77 + v82, v83);
      (*v142)(v79, v62);
      v84 = (v77 + *(v80 + 20));
      *v84 = 0;
      v84[1] = 0xE000000000000000;
      v85 = v170;
      sub_1DD6FE380();
      v3 = v85;
      if (v85)
      {
        break;
      }

      v56 = (v56 + 1);
      sub_1DD6DF2A0();
      sub_1DD722F80(v77, v86);
      v1 = v163;
      v47 = v141;
      result = v147;
      if (v148 == v56)
      {

        v30 = v134;
        goto LABEL_7;
      }
    }

    sub_1DD6DF2A0();
    sub_1DD722F80(v77, v124);
    v125 = v163;
    v126 = *(v163 + v135);
    v127 = MEMORY[0x1E69E7CC0];
    *(v163 + v135) = MEMORY[0x1E69E7CC0];

    v128 = (v125 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedInjectionRequests);
    swift_beginAccess();
LABEL_20:
    v132 = *v128;
    *v128 = v127;
  }

LABEL_7:
  v87 = (v1 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedInjectionRequests);
  swift_beginAccess();
  v88 = *v87;
  v89 = v140;
  v164 = *(*v87 + 16);
  if (!v164)
  {
LABEL_17:
    v121 = *(v1 + v135);
    v122 = MEMORY[0x1E69E7CC0];
    *(v1 + v135) = MEMORY[0x1E69E7CC0];

    v123 = *v87;
    *v87 = v122;
  }

  v146 = v87;
  v152 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_sessionId;
  v90 = *(v139 + 80);
  v151 = *(v1 + 112);
  v150 = v88 + ((v90 + 32) & ~v90);
  v168 = (v30 + 16);
  v149 = (v30 + 8);
  v148 = (v30 + 32);

  v91 = 0;
  v147 = xmmword_1DD878A20;
  v153 = result;
  v92 = v157;
  while (v91 < *(result + 16))
  {
    v93 = v158;
    sub_1DD722E6C(v150 + *(v139 + 72) * v91, v158, type metadata accessor for SessionServerDebuggerEvent.InjectionRequest);
    v94 = *v168;
    v95 = v1 + v152;
    v96 = v169;
    (*v168)(v154, v95, v169);
    _s16IntelligenceFlow15SessionClientIDVACycfC_0();
    sub_1DD722E6C(v93, v157, type metadata accessor for SessionServerDebuggerEvent.InjectionRequest);
    v97 = v156;
    v94(v156, v93 + *(v159 + 36), v96);
    v98 = *(v89 + 16);
    v170 = v3;
    v165 = v91;
    if (v98 && (v99 = sub_1DD71C53C(v97), (v100 & 1) != 0))
    {
      v101 = *(v89 + 56) + 16 * v99;
      v102 = *(v101 + 8);
      v166 = *v101;
      sub_1DD710E74(v166, v102);
    }

    else
    {
      v166 = 0;
      v102 = 0xF000000000000000;
    }

    v167 = *v149;
    v103 = v169;
    v167(v156, v169);
    v104 = *(v159 + 36);
    v105 = type metadata accessor for SessionClientDebuggerEvent.InjectionResponse(0);
    v106 = v138;
    v94(v138 + *(v105 + 20), v92 + v104, v103);
    sub_1DD6E1318();
    sub_1DD722F80(v92, v107);
    v108 = v106 + *(v105 + 24);
    *v108 = v147;
    (*v148)(v106, v155, v103);
    sub_1DD70104C(*v108, *(v108 + 8));
    *v108 = v166;
    *(v108 + 8) = v102;
    swift_storeEnumTagMultiPayload();
    v109 = v137;
    sub_1DD722ECC(v106, v137, type metadata accessor for SessionClientDebuggerEvent.Payload);
    swift_storeEnumTagMultiPayload();
    v110 = v136;
    v111 = v154;
    v94(v136, v154, v103);
    v112 = v160;
    v113 = *(v160 + 24);
    sub_1DD6E5238();
    sub_1DD722ECC(v109, v110 + v114, v115);
    v167(v111, v103);
    v116 = v110;
    v117 = (v110 + *(v112 + 20));
    *v117 = 0;
    v117[1] = 0xE000000000000000;
    v118 = v170;
    sub_1DD6FE380();
    v3 = v118;
    if (v118)
    {

      sub_1DD6DF2A0();
      sub_1DD722F80(v116, v129);
      sub_1DD6E1318();
      sub_1DD722F80(v158, v130);
      v131 = *(v163 + v135);
      v127 = MEMORY[0x1E69E7CC0];
      *(v163 + v135) = MEMORY[0x1E69E7CC0];

      v128 = v146;
      goto LABEL_20;
    }

    v91 = v165 + 1;

    sub_1DD6DF2A0();
    sub_1DD722F80(v116, v119);
    sub_1DD6E1318();
    sub_1DD722F80(v158, v120);
    v1 = v163;
    v89 = v140;
    result = v153;
    if (v164 == v91)
    {

      v87 = v146;
      goto LABEL_17;
    }
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1DD721EDC()
{
  v1 = *(v0 + 112);

  v2 = OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_sessionId;
  v3 = sub_1DD874820();
  sub_1DD6DE1C4(v3);
  (*(v4 + 8))(v0 + v2);
  sub_1DD6E1EC8((v0 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_breakpointPredicate));
  v5 = *(v0 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_inProgressSpans);

  v6 = *(v0 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedTransactions);

  v7 = *(v0 + OBJC_IVAR____TtC16IntelligenceFlow15SessionDebugger_bufferedInjectionRequests);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1DD721F84()
{
  sub_1DD721EDC();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for SessionDebugger()
{
  result = qword_1ECD0E530;
  if (!qword_1ECD0E530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD722004()
{
  result = sub_1DD874820();
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

uint64_t sub_1DD7220F8()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1DD722118, v2, 0);
}

uint64_t sub_1DD722118()
{
  sub_1DD6E1F54();
  v1 = *(v0 + 16);
  sub_1DD720FF0();
  sub_1DD6DDF40();

  return v2();
}

uint64_t sub_1DD72218C()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1DD7221AC, v2, 0);
}

uint64_t sub_1DD7221AC()
{
  sub_1DD6E1F54();
  v1 = *(v0 + 16);
  sub_1DD721088();
  sub_1DD6DDF40();

  return v2();
}

uint64_t sub_1DD722220()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1DD722240, v2, 0);
}

uint64_t sub_1DD722240()
{
  sub_1DD6E1F54();
  v1 = *(v0 + 16);
  sub_1DD721260();
  sub_1DD6DDF40();

  return v2();
}

uint64_t sub_1DD7222B4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DD7222D4, v3, 0);
}

uint64_t sub_1DD7222D4()
{
  sub_1DD6E1F54();
  v1 = *(v0 + 24);
  sub_1DD721064(*(v0 + 16));
  sub_1DD6DDF40();

  return v2();
}

uint64_t sub_1DD722348(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD7223B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD722428()
{
  result = qword_1EE015D90;
  if (!qword_1EE015D90)
  {
    sub_1DD874820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015D90);
  }

  return result;
}

uint64_t sub_1DD722480(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1DD878A30;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1DD7224E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1DD710A9C(&qword_1ECD0E548, &off_1DD878B18);
  result = sub_1DD875670();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v9 = (v3 + 56);
  v8 = *(v3 + 56);
  v10 = 1 << *(v3 + 32);
  v27 = v2;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = result + 56;
  if ((v11 & v8) == 0)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v16 = v9[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    if (v10 >= 64)
    {
      sub_1DD722480(0, (v10 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v2 = v27;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = sub_1DD875B10();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL sub_1DD722708(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v6 + 40);
  v8 = sub_1DD875B10();
  v9 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v6 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v10) == a2)
    {
      goto LABEL_6;
    }

    v8 = v10 + 1;
  }

  v12 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v3;
  sub_1DD7227D8(a2, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v15;
LABEL_6:
  result = v11 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_1DD7227D8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD7224E4(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1DD722A1C(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      result = sub_1DD875B10();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1DD7228DC();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1DD875A70();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_1DD7228DC()
{
  v1 = v0;
  sub_1DD710A9C(&qword_1ECD0E548, &off_1DD878B18);
  v2 = *v0;
  v3 = sub_1DD875660();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1DD722A1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1DD710A9C(&qword_1ECD0E548, &off_1DD878B18);
  result = sub_1DD875670();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        result = sub_1DD875B10();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          goto LABEL_25;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DD722C08(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = sub_1DD875B10();
  v7 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((1 << (v6 & v7)) & *(v4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      return 0;
    }

    if (*(*(v4 + 48) + 8 * v8) == a1)
    {
      break;
    }

    v6 = v8 + 1;
  }

  v10 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v14 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DD7228DC();
    v12 = v14;
  }

  v9 = *(*(v12 + 48) + 8 * v8);
  sub_1DD722CF4(v8);
  *v2 = v14;
  return v9;
}

unint64_t sub_1DD722CF4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1DD875610();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(v3 + 48);
        v12 = (v11 + 8 * v6);
        v13 = *v12;
        v14 = sub_1DD875B10() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_15:
            v17 = (v11 + 8 * v2);
            if (v2 != v6 || v17 >= v12 + 1)
            {
              *v17 = *v12;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1DD722E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1DD6DE1C4(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD722ECC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1DD6DE1C4(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1DD722F2C()
{
  result = qword_1ECD0E550;
  if (!qword_1ECD0E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E550);
  }

  return result;
}

uint64_t sub_1DD722F80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1DD6DE1C4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t ClientApplicationID.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static ClientApplicationID.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1DD875A30();
  }
}

uint64_t sub_1DD723098(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD723124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD723098(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD723150(uint64_t a1)
{
  v2 = sub_1DD7232FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD72318C(uint64_t a1)
{
  v2 = sub_1DD7232FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientApplicationID.encode(to:)(void *a1)
{
  v2 = sub_1DD710A9C(&qword_1ECD0E558, &qword_1DD878B20);
  v3 = sub_1DD6DDEAC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD7232FC();
  sub_1DD875BB0();
  sub_1DD875970();
  return (*(v5 + 8))(v9, v2);
}

unint64_t sub_1DD7232FC()
{
  result = qword_1ECD0E560;
  if (!qword_1ECD0E560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E560);
  }

  return result;
}

uint64_t ClientApplicationID.hashValue.getter()
{
  sub_1DD875B20();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  return sub_1DD875B60();
}

uint64_t ClientApplicationID.init(from:)(uint64_t *a1)
{
  v3 = sub_1DD710A9C(&qword_1ECD0E568, &qword_1DD878B28);
  v4 = sub_1DD6DDEAC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v14 - v9;
  v11 = a1[4];
  v12 = sub_1DD6DF224(a1, a1[3]);
  sub_1DD7232FC();
  sub_1DD875B90();
  if (!v1)
  {
    v12 = sub_1DD875870();
    (*(v6 + 8))(v10, v3);
  }

  sub_1DD6E1EC8(a1);
  return v12;
}

uint64_t sub_1DD7234F4()
{
  v1 = *v0;
  v2 = v0[1];
  return ClientApplicationID.hashValue.getter();
}

uint64_t sub_1DD723504()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DD875B20();
  ClientApplicationID.hash(into:)(v4, v1, v2);
  return sub_1DD875B60();
}

unint64_t sub_1DD723550()
{
  result = qword_1ECD0E570;
  if (!qword_1ECD0E570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E570);
  }

  return result;
}

uint64_t sub_1DD7235B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ClientApplicationID.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1DD7235E4(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return ClientApplicationID.encode(to:)(a1);
}

_BYTE *storeEnumTagSinglePayload for ClientApplicationID.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DD7236C8()
{
  result = qword_1ECD0E578;
  if (!qword_1ECD0E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E578);
  }

  return result;
}

unint64_t sub_1DD723720()
{
  result = qword_1ECD0E580;
  if (!qword_1ECD0E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E580);
  }

  return result;
}

unint64_t sub_1DD723778()
{
  result = qword_1ECD0E588;
  if (!qword_1ECD0E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E588);
  }

  return result;
}

uint64_t ClientGroupID.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static ClientGroupID.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1DD875A30();
  }
}

uint64_t sub_1DD723878(uint64_t a1)
{
  v2 = sub_1DD723A24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7238B4(uint64_t a1)
{
  v2 = sub_1DD723A24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientGroupID.encode(to:)(void *a1)
{
  v2 = sub_1DD710A9C(&qword_1ECD0E590, &qword_1DD878D70);
  v3 = sub_1DD6DDEAC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD723A24();
  sub_1DD875BB0();
  sub_1DD875970();
  return (*(v5 + 8))(v9, v2);
}

unint64_t sub_1DD723A24()
{
  result = qword_1ECD0E598;
  if (!qword_1ECD0E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E598);
  }

  return result;
}

uint64_t ClientGroupID.hashValue.getter()
{
  sub_1DD875B20();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  return sub_1DD875B60();
}

uint64_t ClientGroupID.init(from:)(uint64_t *a1)
{
  v3 = sub_1DD710A9C(&qword_1ECD0E5A0, &qword_1DD878D78);
  v4 = sub_1DD6DDEAC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v14 - v9;
  v11 = a1[4];
  v12 = sub_1DD6DF224(a1, a1[3]);
  sub_1DD723A24();
  sub_1DD875B90();
  if (!v1)
  {
    v12 = sub_1DD875870();
    (*(v6 + 8))(v10, v3);
  }

  sub_1DD6E1EC8(a1);
  return v12;
}

uint64_t sub_1DD723C1C()
{
  v1 = *v0;
  v2 = v0[1];
  return ClientGroupID.hashValue.getter();
}

uint64_t sub_1DD723C2C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DD875B20();
  ClientGroupID.hash(into:)(v4, v1, v2);
  return sub_1DD875B60();
}

unint64_t sub_1DD723C78()
{
  result = qword_1ECD0E5A8;
  if (!qword_1ECD0E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E5A8);
  }

  return result;
}

uint64_t sub_1DD723CE0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ClientGroupID.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1DD723D0C(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return ClientGroupID.encode(to:)(a1);
}

_BYTE *storeEnumTagSinglePayload for ClientGroupID.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DD723DF0()
{
  result = qword_1ECD0E5B0;
  if (!qword_1ECD0E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E5B0);
  }

  return result;
}

unint64_t sub_1DD723E48()
{
  result = qword_1ECD0E5B8;
  if (!qword_1ECD0E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E5B8);
  }

  return result;
}

unint64_t sub_1DD723EA0()
{
  result = qword_1ECD0E5C0;
  if (!qword_1ECD0E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E5C0);
  }

  return result;
}

uint64_t ClientIdentityPack.clientApplicationId.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ClientIdentityPack.clientGroupId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static ClientIdentityPack.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_1DD875A30(), result = 0, (v13 & 1) != 0))
  {
    if (a4)
    {
      if (a8)
      {
        v15 = a3 == a7 && a4 == a8;
        if (v15 || (sub_1DD875A30() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1DD7240B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001DD8B4A10 == a2;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7247746E65696C63 && a2 == 0xED0000644970756FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD724190(char a1)
{
  sub_1DD875B20();
  MEMORY[0x1E12B5570](a1 & 1);
  return sub_1DD875B60();
}

uint64_t sub_1DD7241D8(char a1)
{
  if (a1)
  {
    return 0x7247746E65696C63;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1DD724230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7240B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD724258@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD724188();
  *a1 = result;
  return result;
}

uint64_t sub_1DD724280(uint64_t a1)
{
  v2 = sub_1DD72446C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7242BC(uint64_t a1)
{
  v2 = sub_1DD72446C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientIdentityPack.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v20 = a5;
  v9 = sub_1DD710A9C(&qword_1ECD0E5C8, &qword_1DD878FC0);
  v10 = sub_1DD6DDEAC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v19 - v15;
  v17 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD72446C();
  sub_1DD875BB0();
  v21 = a2;
  v22 = a3;
  v23 = 0;
  sub_1DD7244C0();
  sub_1DD6DF2B8();
  sub_1DD8759D0();
  if (!v5)
  {
    v21 = v19;
    v22 = v20;
    v23 = 1;
    sub_1DD724514();
    sub_1DD6DF2B8();
    sub_1DD875960();
  }

  return (*(v12 + 8))(v16, v9);
}

unint64_t sub_1DD72446C()
{
  result = qword_1ECD0E5D0;
  if (!qword_1ECD0E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E5D0);
  }

  return result;
}

unint64_t sub_1DD7244C0()
{
  result = qword_1ECD0E5D8;
  if (!qword_1ECD0E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E5D8);
  }

  return result;
}

unint64_t sub_1DD724514()
{
  result = qword_1ECD0E5E0;
  if (!qword_1ECD0E5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E5E0);
  }

  return result;
}

uint64_t ClientIdentityPack.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  if (!a5)
  {
    return sub_1DD875B40();
  }

  sub_1DD875B40();

  return _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t ClientIdentityPack.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DD875B20();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  sub_1DD875B40();
  if (a4)
  {
    _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  }

  return sub_1DD875B60();
}

uint64_t ClientIdentityPack.init(from:)(uint64_t *a1)
{
  v2 = sub_1DD710A9C(&qword_1ECD0E5E8, &qword_1DD878FC8);
  v3 = sub_1DD6DDEAC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD72446C();
  sub_1DD875B90();
  v14 = 0;
  sub_1DD7248C4();
  sub_1DD6E1330();
  sub_1DD8758D0();
  v12 = v15;
  v14 = 1;
  sub_1DD724918();
  sub_1DD6E1330();
  sub_1DD875860();
  (*(v5 + 8))(v9, v2);
  sub_1DD6E1EC8(a1);
  return v12;
}

uint64_t sub_1DD72483C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1DD875B20();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  sub_1DD875B40();
  if (v4)
  {
    _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  }

  return sub_1DD875B60();
}

unint64_t sub_1DD7248C4()
{
  result = qword_1ECD0E5F0;
  if (!qword_1ECD0E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E5F0);
  }

  return result;
}

unint64_t sub_1DD724918()
{
  result = qword_1ECD0E5F8;
  if (!qword_1ECD0E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E5F8);
  }

  return result;
}

unint64_t sub_1DD724970()
{
  result = qword_1ECD0E600;
  if (!qword_1ECD0E600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E600);
  }

  return result;
}

uint64_t sub_1DD7249E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ClientIdentityPack.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

__n128 sub_1DD724A30(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD724A3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD724A7C(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ClientIdentityPack.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD724BAC()
{
  result = qword_1ECD0E608;
  if (!qword_1ECD0E608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E608);
  }

  return result;
}

unint64_t sub_1DD724C04()
{
  result = qword_1ECD0E610;
  if (!qword_1ECD0E610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E610);
  }

  return result;
}

unint64_t sub_1DD724C5C()
{
  result = qword_1ECD0E618;
  if (!qword_1ECD0E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E618);
  }

  return result;
}

uint64_t ClientSessionID.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static ClientSessionID.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1DD875A30();
  }
}

uint64_t sub_1DD724D5C(uint64_t a1)
{
  v2 = sub_1DD724F08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD724D98(uint64_t a1)
{
  v2 = sub_1DD724F08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientSessionID.encode(to:)(void *a1)
{
  v2 = sub_1DD710A9C(&qword_1ECD0E620, &qword_1DD879220);
  v3 = sub_1DD6DDEAC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD724F08();
  sub_1DD875BB0();
  sub_1DD875970();
  return (*(v5 + 8))(v9, v2);
}

unint64_t sub_1DD724F08()
{
  result = qword_1ECD0E628;
  if (!qword_1ECD0E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E628);
  }

  return result;
}

uint64_t ClientSessionID.hashValue.getter()
{
  sub_1DD875B20();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  return sub_1DD875B60();
}

uint64_t ClientSessionID.init(from:)(uint64_t *a1)
{
  v3 = sub_1DD710A9C(&qword_1ECD0E630, &qword_1DD879228);
  v4 = sub_1DD6DDEAC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v14 - v9;
  v11 = a1[4];
  v12 = sub_1DD6DF224(a1, a1[3]);
  sub_1DD724F08();
  sub_1DD875B90();
  if (!v1)
  {
    v12 = sub_1DD875870();
    (*(v6 + 8))(v10, v3);
  }

  sub_1DD6E1EC8(a1);
  return v12;
}

uint64_t sub_1DD725100()
{
  v1 = *v0;
  v2 = v0[1];
  return ClientSessionID.hashValue.getter();
}

uint64_t sub_1DD725110()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DD875B20();
  ClientSessionID.hash(into:)(v4, v1, v2);
  return sub_1DD875B60();
}

unint64_t sub_1DD72515C()
{
  result = qword_1ECD0E638;
  if (!qword_1ECD0E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E638);
  }

  return result;
}

uint64_t sub_1DD7251C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ClientSessionID.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1DD7251F0(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return ClientSessionID.encode(to:)(a1);
}

_BYTE *storeEnumTagSinglePayload for ClientSessionID.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DD7252D4()
{
  result = qword_1ECD0E640;
  if (!qword_1ECD0E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E640);
  }

  return result;
}

unint64_t sub_1DD72532C()
{
  result = qword_1ECD0E648;
  if (!qword_1ECD0E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E648);
  }

  return result;
}

unint64_t sub_1DD725384()
{
  result = qword_1ECD0E650;
  if (!qword_1ECD0E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E650);
  }

  return result;
}

uint64_t ClientSessionIdentityPack.clientSessionId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ClientSessionIdentityPack.clientSessionId.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ClientSessionIdentityPack.clientApplicationId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ClientSessionIdentityPack.clientApplicationId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ClientSessionIdentityPack.clientGroupId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ClientSessionIdentityPack.clientGroupId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ClientSessionIdentityPack.description.getter()
{
  v5 = 0x7C444953433CLL;
  v6 = 0xE600000000000000;
  MEMORY[0x1E12B4C10](*v0, *(v0 + 8));
  MEMORY[0x1E12B4C10](124, 0xE100000000000000);
  MEMORY[0x1E12B4C10](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1E12B4C10](124, 0xE100000000000000);
  v7 = *(v0 + 32);
  if (*(&v7 + 1))
  {
    v1 = v7;
  }

  else
  {
    v1 = 7104878;
  }

  if (*(&v7 + 1))
  {
    v2 = *(&v7 + 1);
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  sub_1DD72564C(&v7, &v4);
  MEMORY[0x1E12B4C10](v1, v2);

  MEMORY[0x1E12B4C10](62, 0xE100000000000000);
  return v5;
}

uint64_t sub_1DD72564C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD0E658, &qword_1DD879470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ClientSessionIdentityPack.clientIdentityPack.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];

  return v1;
}

uint64_t static ClientSessionIdentityPack.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (sub_1DD875A30() & 1) != 0)
    {
      v6 = a1[5];
      v7 = a2[5];
      if (v6)
      {
        if (v7)
        {
          v8 = a1[4] == a2[4] && v6 == v7;
          if (v8 || (sub_1DD875A30() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1DD7257B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6553746E65696C63 && a2 == 0xEF64496E6F697373;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001DD8B4A10 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7247746E65696C63 && a2 == 0xED0000644970756FLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD7258D8(char a1)
{
  if (!a1)
  {
    return 0x6553746E65696C63;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0x7247746E65696C63;
}

uint64_t sub_1DD72595C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7257B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD725984(uint64_t a1)
{
  v2 = sub_1DD725B94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7259C0(uint64_t a1)
{
  v2 = sub_1DD725B94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientSessionIdentityPack.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1DD710A9C(&qword_1ECD0E660, &qword_1DD879478);
  v6 = sub_1DD6DDEAC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD725B94();
  sub_1DD875BB0();
  v17 = *v3;
  v16 = 0;
  sub_1DD725BE8();
  sub_1DD6DF2D0();
  sub_1DD8759D0();
  if (!v2)
  {
    v17 = v3[1];
    v16 = 1;
    sub_1DD7244C0();
    sub_1DD6DF2D0();
    sub_1DD8759D0();
    v17 = v3[2];
    v16 = 2;
    sub_1DD724514();
    sub_1DD6DF2D0();
    sub_1DD875960();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_1DD725B94()
{
  result = qword_1ECD0E668;
  if (!qword_1ECD0E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E668);
  }

  return result;
}

unint64_t sub_1DD725BE8()
{
  result = qword_1ECD0E670;
  if (!qword_1ECD0E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E670);
  }

  return result;
}

uint64_t ClientSessionIdentityPack.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  v3 = v0[2];
  v4 = v0[3];
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  if (!v0[5])
  {
    return sub_1DD875B40();
  }

  v5 = v0[4];
  sub_1DD875B40();

  return _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t ClientSessionIdentityPack.hashValue.getter()
{
  sub_1DD875B20();
  v1 = *v0;
  v2 = v0[1];
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  v3 = v0[2];
  v4 = v0[3];
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  if (v0[5])
  {
    v5 = v0[4];
    sub_1DD875B40();
    _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1DD875B40();
  }

  return sub_1DD875B60();
}

uint64_t ClientSessionIdentityPack.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1DD710A9C(&qword_1ECD0E678, &qword_1DD879480);
  v6 = sub_1DD6DDEAC(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD725B94();
  sub_1DD875B90();
  if (v2)
  {
    return sub_1DD6E1EC8(a1);
  }

  sub_1DD725FC0();
  sub_1DD6E134C();
  sub_1DD8758D0();
  sub_1DD7248C4();
  sub_1DD6E134C();
  sub_1DD8758D0();
  sub_1DD724918();
  sub_1DD6E134C();
  sub_1DD875860();
  v10 = sub_1DD6DEA2C();
  v11(v10);
  result = sub_1DD6E1EC8(a1);
  *a2 = v13;
  a2[1] = v14;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v13;
  a2[5] = v14;
  return result;
}

uint64_t sub_1DD725F84()
{
  sub_1DD875B20();
  ClientSessionIdentityPack.hash(into:)();
  return sub_1DD875B60();
}

unint64_t sub_1DD725FC0()
{
  result = qword_1ECD0E680;
  if (!qword_1ECD0E680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E680);
  }

  return result;
}

unint64_t sub_1DD726018()
{
  result = qword_1ECD0E688;
  if (!qword_1ECD0E688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E688);
  }

  return result;
}

double sub_1DD726070@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  ClientSessionIdentityPack.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1DD7260D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD726110(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ClientSessionIdentityPack.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD72624C()
{
  result = qword_1ECD0E690;
  if (!qword_1ECD0E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E690);
  }

  return result;
}

unint64_t sub_1DD7262A4()
{
  result = qword_1ECD0E698;
  if (!qword_1ECD0E698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E698);
  }

  return result;
}

unint64_t sub_1DD7262FC()
{
  result = qword_1ECD0E6A0;
  if (!qword_1ECD0E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E6A0);
  }

  return result;
}

uint64_t EventID.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DD874820();
  v4 = sub_1DD6DE1C4(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t EventID.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DD874820();
  v5 = sub_1DD6DE1C4(v4);
  v7 = *(v6 + 32);

  return v7(a2, a1, v5);
}

{
  v4 = sub_1DD874820();
  v5 = sub_1DD6DDEAC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE4A8();
  v12 = v11 - v10;
  v13 = type metadata accessor for EventID();
  v14 = sub_1DD6DE1C4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DE4A8();
  v19 = v18 - v17;
  if (sub_1DD6E5ED0(a1, 1, v4) == 1)
  {
    sub_1DD7265F0(a1);

    return sub_1DD6E5E68(a2, 1, 1, v13);
  }

  else
  {
    v21 = *(v7 + 32);
    v21(v12, a1, v4);
    v21(v19, v12, v4);
    sub_1DD726658(v19, a2);
    return sub_1DD6E5E68(a2, 0, 1, v13);
  }
}

uint64_t type metadata accessor for EventID()
{
  result = qword_1ECD0E6C8;
  if (!qword_1ECD0E6C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD7265F0(uint64_t a1)
{
  v2 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD726658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventID();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD7266C0(uint64_t a1)
{
  v2 = sub_1DD726894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7266FC(uint64_t a1)
{
  v2 = sub_1DD726894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventID.encode(to:)(void *a1)
{
  v2 = sub_1DD710A9C(&qword_1ECD0E6A8, &qword_1DD8796E8);
  v3 = sub_1DD6DDEAC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD726894();
  sub_1DD875BB0();
  sub_1DD874820();
  sub_1DD6E1364();
  sub_1DD6E1D64(v11, v12);
  sub_1DD8759D0();
  return (*(v5 + 8))(v9, v2);
}

unint64_t sub_1DD726894()
{
  result = qword_1ECD0E6B0;
  if (!qword_1ECD0E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E6B0);
  }

  return result;
}

uint64_t EventID.hash(into:)()
{
  sub_1DD874820();
  sub_1DD6E1364();
  sub_1DD6E1D64(v0, v1);

  return sub_1DD8750C0();
}

uint64_t EventID.hashValue.getter()
{
  sub_1DD875B20();
  sub_1DD874820();
  sub_1DD6E1364();
  sub_1DD6E1D64(v0, v1);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

uint64_t EventID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_1DD874820();
  v5 = sub_1DD6DDEAC(v4);
  v30 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE4A8();
  v33 = v10 - v9;
  v11 = sub_1DD710A9C(&qword_1ECD0E6B8, &qword_1DD8796F0);
  v12 = sub_1DD6DDEAC(v11);
  v31 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v29 - v16;
  v18 = type metadata accessor for EventID();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  sub_1DD6DE4A8();
  v22 = v21 - v20;
  v23 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD726894();
  sub_1DD875B90();
  if (!v2)
  {
    v24 = v30;
    v25 = v32;
    sub_1DD6E1364();
    sub_1DD6E1D64(v26, v27);
    sub_1DD8758D0();
    (*(v31 + 8))(v17, v11);
    (*(v24 + 32))(v22, v33, v4);
    sub_1DD726658(v22, v25);
  }

  return sub_1DD6E1EC8(a1);
}

uint64_t sub_1DD726C2C()
{
  sub_1DD875B20();
  EventID.hash(into:)();
  return sub_1DD875B60();
}

uint64_t sub_1DD726D0C()
{
  result = sub_1DD874820();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EventID.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DD726E28()
{
  result = qword_1ECD0E6D8;
  if (!qword_1ECD0E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E6D8);
  }

  return result;
}

unint64_t sub_1DD726E80()
{
  result = qword_1ECD0E6E0;
  if (!qword_1ECD0E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E6E0);
  }

  return result;
}

unint64_t sub_1DD726ED8()
{
  result = qword_1ECD0E6E8;
  if (!qword_1ECD0E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E6E8);
  }

  return result;
}

uint64_t SessionClientID.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DD874820();
  v4 = sub_1DD6DE1C4(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t SessionClientID.value.setter(uint64_t a1)
{
  v3 = sub_1DD874820();
  v4 = sub_1DD6DE1C4(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t SessionClientID.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DD874820();
  v5 = sub_1DD6DE1C4(v4);
  v7 = *(v6 + 32);

  return v7(a2, a1, v5);
}

uint64_t sub_1DD727074(uint64_t a1)
{
  v2 = sub_1DD727248();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7270B0(uint64_t a1)
{
  v2 = sub_1DD727248();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SessionClientID.encode(to:)(void *a1)
{
  v2 = sub_1DD710A9C(&qword_1ECD0E6F0, &qword_1DD8798E0);
  v3 = sub_1DD6DDEAC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD727248();
  sub_1DD875BB0();
  sub_1DD874820();
  sub_1DD6E137C();
  sub_1DD6E1DAC(v11, v12);
  sub_1DD8759D0();
  return (*(v5 + 8))(v9, v2);
}

unint64_t sub_1DD727248()
{
  result = qword_1ECD0E6F8;
  if (!qword_1ECD0E6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E6F8);
  }

  return result;
}

uint64_t SessionClientID.hash(into:)()
{
  sub_1DD874820();
  sub_1DD6E137C();
  sub_1DD6E1DAC(v0, v1);

  return sub_1DD8750C0();
}

uint64_t SessionClientID.hashValue.getter()
{
  sub_1DD875B20();
  sub_1DD874820();
  sub_1DD6E137C();
  sub_1DD6E1DAC(v0, v1);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

uint64_t SessionClientID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_1DD874820();
  v5 = sub_1DD6DDEAC(v4);
  v28 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DD710A9C(&qword_1ECD0E700, &qword_1DD8798E8);
  v11 = sub_1DD6DDEAC(v10);
  v29 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v27 - v15;
  v17 = type metadata accessor for SessionClientID();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD727248();
  sub_1DD875B90();
  if (!v2)
  {
    v22 = v28;
    v23 = v30;
    sub_1DD6E137C();
    sub_1DD6E1DAC(v24, v25);
    sub_1DD8758D0();
    (*(v29 + 8))(v16, v10);
    (*(v22 + 32))(v20, v31, v4);
    sub_1DD7275F0(v20, v23);
  }

  return sub_1DD6E1EC8(a1);
}

uint64_t sub_1DD7275F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionClientID();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for SessionClientID.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DD7277A4()
{
  result = qword_1ECD0E708;
  if (!qword_1ECD0E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E708);
  }

  return result;
}

unint64_t sub_1DD7277FC()
{
  result = qword_1ECD0E710;
  if (!qword_1ECD0E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E710);
  }

  return result;
}

unint64_t sub_1DD727854()
{
  result = qword_1ECD0E718;
  if (!qword_1ECD0E718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E718);
  }

  return result;
}

uint64_t SessionID.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DD874820();
  v4 = sub_1DD6DE1C4(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t SessionID.value.setter(uint64_t a1)
{
  v3 = sub_1DD874820();
  v4 = sub_1DD6DE1C4(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t sub_1DD727994(uint64_t a1)
{
  v2 = sub_1DD727B68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7279D0(uint64_t a1)
{
  v2 = sub_1DD727B68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SessionID.encode(to:)(void *a1)
{
  v2 = sub_1DD710A9C(&qword_1ECD0E720, &qword_1DD879B10);
  v3 = sub_1DD6DDEAC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD727B68();
  sub_1DD875BB0();
  sub_1DD874820();
  sub_1DD6E1394();
  sub_1DD6E1DF4(v11, v12);
  sub_1DD8759D0();
  return (*(v5 + 8))(v9, v2);
}

unint64_t sub_1DD727B68()
{
  result = qword_1ECD0E728;
  if (!qword_1ECD0E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E728);
  }

  return result;
}

uint64_t SessionID.hashValue.getter()
{
  sub_1DD875B20();
  sub_1DD874820();
  sub_1DD6E1394();
  sub_1DD6E1DF4(v0, v1);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

uint64_t SessionID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_1DD874820();
  v5 = sub_1DD6DDEAC(v4);
  v28 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DD710A9C(&qword_1ECD0E730, &qword_1DD879B18);
  v11 = sub_1DD6DDEAC(v10);
  v29 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v27 - v15;
  v17 = type metadata accessor for SessionID();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD727B68();
  sub_1DD875B90();
  if (!v2)
  {
    v22 = v28;
    v23 = v30;
    sub_1DD6E1394();
    sub_1DD6E1DF4(v24, v25);
    sub_1DD8758D0();
    (*(v29 + 8))(v16, v10);
    (*(v22 + 32))(v20, v31, v4);
    sub_1DD6F1C3C(v20, v23);
  }

  return sub_1DD6E1EC8(a1);
}

uint64_t sub_1DD727E9C()
{
  sub_1DD875B20();
  SessionID.hash(into:)();
  return sub_1DD875B60();
}

_BYTE *storeEnumTagSinglePayload for SessionID.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DD728008()
{
  result = qword_1ECD0E738;
  if (!qword_1ECD0E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E738);
  }

  return result;
}

unint64_t sub_1DD728060()
{
  result = qword_1ECD0E740;
  if (!qword_1ECD0E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E740);
  }

  return result;
}

unint64_t sub_1DD7280B8()
{
  result = qword_1ECD0E748;
  if (!qword_1ECD0E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E748);
  }

  return result;
}

uint64_t sub_1DD728148(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionID();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_1DD7281CC(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t SessionIdentityPack.clientIdentity.getter@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for SessionIdentityPack();
  sub_1DD6E0508(v2);
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
}

__n128 SessionIdentityPack.clientIdentity.setter()
{
  sub_1DD6DE290();
  v2 = type metadata accessor for SessionIdentityPack();
  sub_1DD6DE29C(v2);
  v3 = *(v1 + 8);

  v4 = *(v1 + 24);

  v5 = *(v1 + 40);

  v6 = *(v0 + 16);
  *v1 = *v0;
  *(v1 + 16) = v6;
  result = *(v0 + 32);
  *(v1 + 32) = result;
  return result;
}

uint64_t (*SessionIdentityPack.clientIdentity.modify())()
{
  sub_1DD6DE290();
  v0 = *(type metadata accessor for SessionIdentityPack() + 20);
  return nullsub_1;
}

uint64_t static SessionIdentityPack.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s16IntelligenceFlow15SessionClientIDV2eeoiySbAC_ACtFZ_0())
  {
    v3 = type metadata accessor for SessionIdentityPack();
    v4 = sub_1DD6E0508(v3);
    v6 = v5[2];
    v11[1] = v5[1];
    v11[2] = v6;
    v11[0] = *v5;
    v7 = (a2 + *(v4 + 20));
    v8 = v7[2];
    v12[1] = v7[1];
    v12[2] = v8;
    v12[0] = *v7;
    v9 = static ClientSessionIdentityPack.== infix(_:_:)(v11, v12);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1DD728380(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449746E65696C63 && a2 == 0xEE00797469746E65)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD728458(char a1)
{
  if (a1)
  {
    return 0x6449746E65696C63;
  }

  else
  {
    return 0x496E6F6973736573;
  }
}

uint64_t sub_1DD7284A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD728380(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7284D0(uint64_t a1)
{
  v2 = sub_1DD728710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD72850C(uint64_t a1)
{
  v2 = sub_1DD728710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SessionIdentityPack.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1DD710A9C(&qword_1ECD0E750, &qword_1DD879D30);
  v6 = sub_1DD6DDEAC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v20[-v11];
  v13 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD728710();
  sub_1DD875BB0();
  LOBYTE(v21) = 0;
  type metadata accessor for SessionID();
  sub_1DD6E13AC();
  sub_1DD7291B4(v14, v15);
  sub_1DD8759D0();
  if (!v2)
  {
    v16 = (v3 + *(type metadata accessor for SessionIdentityPack() + 20));
    v17 = *(v16 + 2);
    v18 = *(v16 + 3);
    v21 = *v16;
    v22 = v17;
    v23 = v18;
    v24 = v16[2];
    v20[15] = 1;
    sub_1DD728764();
    sub_1DD8759D0();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_1DD728710()
{
  result = qword_1ECD0E758;
  if (!qword_1ECD0E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E758);
  }

  return result;
}

unint64_t sub_1DD728764()
{
  result = qword_1ECD0E768;
  if (!qword_1ECD0E768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E768);
  }

  return result;
}

uint64_t SessionIdentityPack.hash(into:)()
{
  sub_1DD6DE290();
  sub_1DD874820();
  sub_1DD7291B4(&qword_1EE015D90, MEMORY[0x1E69695A8]);
  sub_1DD6E5F58();
  sub_1DD8750C0();
  v0 = type metadata accessor for SessionIdentityPack();
  sub_1DD6E0508(v0);
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  sub_1DD6DDEFC();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  if (!v7)
  {
    return sub_1DD875B40();
  }

  sub_1DD875B40();
  sub_1DD6E5F58();

  return _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t SessionIdentityPack.hashValue.getter()
{
  sub_1DD875B20();
  SessionIdentityPack.hash(into:)();
  return sub_1DD875B60();
}

uint64_t SessionIdentityPack.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = type metadata accessor for SessionID();
  v5 = sub_1DD6DE1C4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DD710A9C(&qword_1ECD0E770, &qword_1DD879D38);
  v10 = sub_1DD6DDEAC(v9);
  v33 = v11;
  v34 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v32 - v14;
  v16 = type metadata accessor for SessionIdentityPack();
  v17 = sub_1DD6DE1C4(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD728710();
  sub_1DD875B90();
  if (v2)
  {
    return sub_1DD6E1EC8(a1);
  }

  v23 = v33;
  v24 = v21;
  LOBYTE(v36) = 0;
  sub_1DD6E13AC();
  sub_1DD7291B4(v25, v26);
  v27 = v34;
  sub_1DD8758D0();
  sub_1DD6F1C3C(v35, v24);
  v40 = 1;
  sub_1DD728C1C();
  sub_1DD8758D0();
  (*(v23 + 8))(v15, v27);
  v28 = v37;
  v29 = v38;
  v30 = v24 + *(v16 + 20);
  *v30 = v36;
  *(v30 + 16) = v28;
  *(v30 + 24) = v29;
  *(v30 + 32) = v39;
  sub_1DD728C70(v24, v32, type metadata accessor for SessionIdentityPack);
  sub_1DD6E1EC8(a1);
  return sub_1DD728CCC();
}

uint64_t sub_1DD728BE0()
{
  sub_1DD875B20();
  SessionIdentityPack.hash(into:)();
  return sub_1DD875B60();
}

unint64_t sub_1DD728C1C()
{
  result = qword_1ECD0E780;
  if (!qword_1ECD0E780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E780);
  }

  return result;
}

uint64_t sub_1DD728C70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1DD6DE1C4(v4);
  v6 = *(v5 + 16);
  v7 = sub_1DD6DDEFC();
  v8(v7);
  return a2;
}

uint64_t sub_1DD728CCC()
{
  v1 = sub_1DD6DE290();
  v3 = v2(v1);
  sub_1DD6DE1C4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1DD728D58(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SessionIdentityPack.clientSessionId.setter();
}

uint64_t SessionIdentityPack.clientSessionId.setter()
{
  v3 = sub_1DD6E69F8();
  sub_1DD6DE29C(v3);
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SessionIdentityPack.clientSessionId.modify()
{
  v1 = sub_1DD7281CC(0x28uLL);
  v2 = sub_1DD6ED588(v1);
  sub_1DD6E0A18(v2);
  v5 = *v3;
  v4 = v3[1];
  v0[3] = v4;
  *v0 = v5;
  v0[1] = v4;

  return sub_1DD6E5F58();
}

void sub_1DD728E38(uint64_t **a1)
{
  sub_1DD6DF2E8(a1);
  if (v6)
  {
    v7 = (v5 + v4);

    *v7 = v3;
    v7[1] = v2;
    v8 = v1[1];
  }

  else
  {

    v9 = (v5 + v4);
    *v9 = v3;
    v9[1] = v2;
  }

  free(v1);
}

uint64_t sub_1DD728EB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SessionIdentityPack.clientApplicationId.setter();
}

uint64_t SessionIdentityPack.clientApplicationId.setter()
{
  v3 = sub_1DD6E69F8();
  sub_1DD6DE29C(v3);
  v4 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t SessionIdentityPack.clientApplicationId.modify()
{
  v1 = sub_1DD7281CC(0x28uLL);
  v2 = sub_1DD6ED588(v1);
  sub_1DD6E0A18(v2);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v0[3] = v4;
  *v0 = v5;
  v0[1] = v4;

  return sub_1DD6E5F58();
}

void sub_1DD728F94(uint64_t **a1)
{
  sub_1DD6DF2E8(a1);
  if (v6)
  {
    v7 = v5 + v4;

    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
    v8 = v1[1];
  }

  else
  {

    v9 = v5 + v4;
    *(v9 + 16) = v3;
    *(v9 + 24) = v2;
  }

  free(v1);
}

uint64_t sub_1DD729010(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SessionIdentityPack.clientGroupId.setter();
}

uint64_t SessionIdentityPack.clientGroupId.setter()
{
  v3 = sub_1DD6E69F8();
  sub_1DD6DE29C(v3);
  v4 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t SessionIdentityPack.clientGroupId.modify()
{
  v1 = sub_1DD7281CC(0x28uLL);
  v2 = sub_1DD6ED588(v1);
  sub_1DD6E0A18(v2);
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v0[3] = v4;
  *v0 = v5;
  v0[1] = v4;

  return sub_1DD6E5F58();
}

void sub_1DD7290F0(uint64_t **a1)
{
  sub_1DD6DF2E8(a1);
  if (v6)
  {
    v7 = v5 + v4;

    *(v7 + 32) = v3;
    *(v7 + 40) = v2;
    v8 = v1[1];
  }

  else
  {

    v9 = v5 + v4;
    *(v9 + 32) = v3;
    *(v9 + 40) = v2;
  }

  free(v1);
}

uint64_t sub_1DD7291B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD729224()
{
  result = type metadata accessor for SessionID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionIdentityPack.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD729378()
{
  result = qword_1ECD0E790;
  if (!qword_1ECD0E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E790);
  }

  return result;
}

unint64_t sub_1DD7293D0()
{
  result = qword_1ECD0E798;
  if (!qword_1ECD0E798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E798);
  }

  return result;
}

unint64_t sub_1DD729428()
{
  result = qword_1ECD0E7A0;
  if (!qword_1ECD0E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E7A0);
  }

  return result;
}

uint64_t SnippetStreamingContextID.rawValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DD874820();
  v4 = sub_1DD6DE1C4(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t SnippetStreamingContextID.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DD874820();
  v5 = sub_1DD6DE1C4(v4);
  v7 = *(v6 + 32);

  return v7(a2, a1, v5);
}

uint64_t sub_1DD729544(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7295D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD729544(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD729604(uint64_t a1)
{
  v2 = sub_1DD7297D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD729640(uint64_t a1)
{
  v2 = sub_1DD7297D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SnippetStreamingContextID.encode(to:)(void *a1)
{
  v2 = sub_1DD710A9C(&qword_1ECD0E7A8, &qword_1DD879F70);
  v3 = sub_1DD6DDEAC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD7297D8();
  sub_1DD875BB0();
  sub_1DD874820();
  sub_1DD6E13C4();
  sub_1DD6E1E3C(v11, v12);
  sub_1DD8759D0();
  return (*(v5 + 8))(v9, v2);
}

unint64_t sub_1DD7297D8()
{
  result = qword_1ECD0E7B0;
  if (!qword_1ECD0E7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E7B0);
  }

  return result;
}

uint64_t SnippetStreamingContextID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_1DD874820();
  v5 = sub_1DD6DDEAC(v4);
  v28 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DD710A9C(&qword_1ECD0E7B8, &qword_1DD879F78);
  v11 = sub_1DD6DDEAC(v10);
  v29 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v27 - v15;
  v17 = type metadata accessor for SnippetStreamingContextID();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD7297D8();
  sub_1DD875B90();
  if (!v2)
  {
    v22 = v28;
    v23 = v30;
    sub_1DD6E13C4();
    sub_1DD6E1E3C(v24, v25);
    sub_1DD8758D0();
    (*(v29 + 8))(v16, v10);
    (*(v22 + 32))(v20, v31, v4);
    sub_1DD729AD8(v20, v23);
  }

  return sub_1DD6E1EC8(a1);
}

uint64_t type metadata accessor for SnippetStreamingContextID()
{
  result = qword_1EE0151F8;
  if (!qword_1EE0151F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD729AD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetStreamingContextID();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD729B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  SnippetStreamingContextID.init(rawValue:)(a1, a3);

  return sub_1DD6E5E68(a3, 0, 1, a2);
}

uint64_t sub_1DD729B84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DD874820();
  v4 = sub_1DD6DE1C4(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

_BYTE *storeEnumTagSinglePayload for SnippetStreamingContextID.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DD729D44()
{
  result = qword_1ECD0E7C0;
  if (!qword_1ECD0E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E7C0);
  }

  return result;
}

unint64_t sub_1DD729D9C()
{
  result = qword_1ECD0E7C8;
  if (!qword_1ECD0E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E7C8);
  }

  return result;
}

unint64_t sub_1DD729DF4()
{
  result = qword_1ECD0E7D0;
  if (!qword_1ECD0E7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E7D0);
  }

  return result;
}

uint64_t static Preferences.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = swift_readAtKeyPath();
  sub_1DD6E0540(*(v3 + *MEMORY[0x1E69E6CE8] + 8));
  (*(v5 + 16))(a2);
  return v4(&v7, 0);
}

{
  v3 = *a1;
  if (qword_1EE015B18 != -1)
  {
    sub_1DD6E6A14();
  }

  swift_beginAccess();
  v4 = swift_readAtKeyPath();
  sub_1DD6E0540(*(v3 + *MEMORY[0x1E69E6CE8] + 8));
  (*(v5 + 16))(a2);
  v4(v7, 0);
  return swift_endAccess();
}

uint64_t static Preferences.subscript.setter(uint64_t a1, void *a2)
{
  v2 = *(*a2 + *MEMORY[0x1E69E6CE8] + 8);
  sub_1DD6DF290();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v8 = *(v4 + 16);
  sub_1DD6E490C();
  v9();
  swift_setAtWritableKeyPath();

  v10 = *(v4 + 8);
  v11 = sub_1DD6E58E0();
  return v12(v11);
}

{
  v3 = *(*a2 + *MEMORY[0x1E69E6CE8] + 8);
  sub_1DD6DF290();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  if (qword_1EE015B18 != -1)
  {
    sub_1DD6E6A14();
  }

  (*(v5 + 16))(v10, a1, v3);
  swift_beginAccess();
  swift_setAtWritableKeyPath();
  swift_endAccess();

  return (*(v5 + 8))(a1, v3);
}

void (*static Preferences.subscript.modify(void *a1, void *a2))(uint64_t **a1, char a2)
{
  v4 = sub_1DD7281CC(0x28uLL);
  *a1 = v4;
  *v4 = a2;
  v4[1] = *(*a2 + *MEMORY[0x1E69E6CE8] + 8);
  sub_1DD6DF290();
  *(v5 + 16) = v6;
  v8 = *(v7 + 64);
  v4[3] = sub_1DD7281CC(v8);
  v9 = sub_1DD7281CC(v8);
  v10 = sub_1DD6FAC58(v9);
  static Preferences.subscript.getter(v10, v11);
  return sub_1DD72A110;
}

{
  v4 = sub_1DD7281CC(0x28uLL);
  *a1 = v4;
  *v4 = a2;
  v4[1] = *(*a2 + *MEMORY[0x1E69E6CE8] + 8);
  sub_1DD6DF290();
  *(v5 + 16) = v6;
  v8 = *(v7 + 64);
  v4[3] = sub_1DD7281CC(v8);
  v9 = sub_1DD7281CC(v8);
  v10 = sub_1DD6FAC58(v9);
  static Preferences.subscript.getter(v10, v11);
  return sub_1DD72F0B4;
}

uint64_t IntelligenceFlowPreferences.plannerType.getter()
{
  v1 = memcpy(__dst, v0, sizeof(__dst));
  if (__dst[7])
  {
    sub_1DD6FABE4();
  }

  else if (__dst[9] && (sub_1DD6E95A0(v1, __dst[9], v2, v3, v4, v5, v6, v7, v11, v12, v13, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8]), v8))
  {
    sub_1DD730E98();
  }

  else if ((sub_1DD72F2EC() & 1) != 0 || (sub_1DD730CE0(), v9(), !v13))
  {
    sub_1DD6E372C();
    sub_1DD730EA4();
  }

  else
  {
    sub_1DD6E4198();
  }

  return sub_1DD6E58E0();
}

uint64_t sub_1DD72A1C8()
{
  if (v0[5])
  {
    v1 = v0[5];
  }

  else
  {
    v2 = v0;
    v3 = v0[7];
    if (v3 && (v4 = sub_1DD72F6D0(v0[6], v3, v0)) != 0)
    {
      v1 = v4;
    }

    else if ((sub_1DD72F1E0() & 1) != 0 || (v5 = v0[3], (v2[2])(&v7), (v1 = v7) == 0))
    {
      v1 = v2[4];

      swift_bridgeObjectRelease_n();
    }

    else
    {
    }
  }

  return v1;
}

uint64_t sub_1DD72A280()
{
  v1 = v0;
  v2 = v0[6];
  v3 = v0[7];
  v4 = v2;
  if (v3 == 1)
  {
    v5 = v0[9];
    if (v5)
    {
      v4 = sub_1DD72F7F0(v0[8], v5, v0);
      if (v6 != 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v4 = 0;
    }

    if (sub_1DD72F2EC())
    {
      v7 = 0;
    }

    else
    {
      v8 = v0[3];
      (v1[2])(v12);
      v7 = v12[0];
      if (v12[1] != 1)
      {
LABEL_10:
        sub_1DD730C58(v4, 1);
        v4 = v7;
        goto LABEL_11;
      }
    }

    v10 = v1[4];
    v9 = v1[5];

    sub_1DD730C58(v7, 1);
    v7 = v10;
    goto LABEL_10;
  }

LABEL_11:
  sub_1DD730C6C(v2, v3);
  return v4;
}

uint64_t IntelligenceFlowPreferences.$plannerType.getter()
{
  sub_1DD6E5D84();
  sub_1DD6E4050(v1);
  v2 = sub_1DD6E4050(v0);
  return sub_1DD700D24(v2, v3, &qword_1ECD0E7D8, &qword_1DD87A230, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
}

void *IntelligenceFlowPreferences.$plannerType.setter()
{
  sub_1DD6E1F60();
  sub_1DD6E4050(v1);
  sub_1DD6EE7DC(v3, &qword_1ECD0E7D8, &qword_1DD87A230);
  return sub_1DD7029B4(v0);
}

uint64_t IntelligenceFlowPreferences.$plannerType.modify()
{
  v1 = sub_1DD6EE210();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6DE4EC(v2);
  sub_1DD6E4050(v3);
  v4 = sub_1DD6E4050((v0 + 88));
  sub_1DD730CB0(v4, v5, &qword_1ECD0E7D8, &qword_1DD87A230);
  return sub_1DD6E9A48();
}

void sub_1DD72A474(void **a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = *a1;
  if (a2)
  {
    v10 = v9[66];
    memcpy(v9 + 44, v9 + 11, 0x58uLL);
    sub_1DD6E4050(v9 + 33);
    sub_1DD730620((v9 + 44), (v9 + 55), &qword_1ECD0E7D8, &qword_1DD87A230);
    sub_1DD6EE7DC((v9 + 33), &qword_1ECD0E7D8, &qword_1DD87A230);
    memcpy(v10, v9 + 44, 0x58uLL);
    sub_1DD6E887C();
    sub_1DD6EE7DC((v9 + 22), &qword_1ECD0E7D8, &qword_1DD87A230);
  }

  else
  {
    sub_1DD6DE2A8(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0]);
    sub_1DD6E4050(v9 + 22);
    sub_1DD6EE7DC((v9 + 22), &qword_1ECD0E7D8, &qword_1DD87A230);
    memcpy(v8, __src, 0x58uLL);
  }

  free(v9);
}

uint64_t IntelligenceFlowPreferences.$shouldWriteToShortcutsDatabase.getter@<X0>(__n128 *a1@<X8>)
{
  v17 = *(v1 + 88);
  sub_1DD6FC404(a1, v17, *(v1 + 104), *(v1 + 120), *(v1 + 136));
  return sub_1DD730CC8(v2, v3, &qword_1ECD0E7E8, &qword_1DD87A240, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16, v17.n128_i8[0]);
}

__n128 IntelligenceFlowPreferences.$shouldWriteToShortcutsDatabase.setter(uint64_t a1)
{
  v3 = *(v1 + 104);
  v8[0] = *(v1 + 88);
  v8[1] = v3;
  v4 = *(v1 + 136);
  v8[2] = *(v1 + 120);
  v8[3] = v4;
  sub_1DD6EE7DC(v8, &qword_1ECD0E7E8, &qword_1DD87A240);
  v5 = *(a1 + 16);
  *(v1 + 88) = *a1;
  *(v1 + 104) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(v1 + 120) = result;
  *(v1 + 136) = v7;
  return result;
}

uint64_t IntelligenceFlowPreferences.$shouldWriteToShortcutsDatabase.modify()
{
  v1 = sub_1DD6E3818();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6E26C8(v2);
  v4 = sub_1DD6E17BC(v3, *(v0 + 88), *(v0 + 104), *(v0 + 120), *(v0 + 136));
  v5 = sub_1DD6E0C9C(v4, *(v0 + 136), *(v0 + 120), *(v0 + 104), *(v0 + 88));
  sub_1DD730620(v5, &v5[8], &qword_1ECD0E7E8, &qword_1DD87A240);
  return sub_1DD6F09EC();
}

void sub_1DD72A7AC(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 384);
    sub_1DD6E07FC();
    v4 = *(v3 + 104);
    v5 = *(v3 + 136);
    v6 = *(v3 + 88);
    *(v2 + 224) = *(v3 + 120);
    *(v2 + 240) = v5;
    *(v2 + 192) = v6;
    *(v2 + 208) = v4;
    sub_1DD6ED240();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v7, v8, v9);
    v10 = sub_1DD6FF8C4();
    *(v3 + 88) = v11;
    *(v3 + 136) = v12;
    *(v3 + 120) = v10;
    *(v3 + 104) = v13;
    sub_1DD6E0514();
  }

  else
  {
    v14 = *(v2 + 384);
    sub_1DD6E0A28();
    v15 = *(v14 + 104);
    v16 = *(v14 + 136);
    v17 = *(v14 + 88);
    *(v2 + 160) = *(v14 + 120);
    *(v2 + 176) = v16;
    *(v2 + 128) = v17;
    *(v2 + 144) = v15;
    sub_1DD6EE7DC(v2 + 128, &qword_1ECD0E7E8, &qword_1DD87A240);
    *(v14 + 88) = v18;
    *(v14 + 104) = v19;
    *(v14 + 120) = v20;
    *(v14 + 136) = v21;
  }

  free(v2);
}

uint64_t IntelligenceFlowPreferences.$entityResolutionThreshold.getter()
{
  sub_1DD6EFF44();
  v2 = sub_1DD6F9B7C(v1);
  v3 = sub_1DD6FAD94(v2, (v0 + 152));
  return sub_1DD730D4C(v3, v4, &qword_1ECD0E7F0, &qword_1DD87A248, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
}

void *sub_1DD72A9F0(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1DD730620(__dst, &v2, &qword_1ECD0E7F0, &qword_1DD87A248);
  return IntelligenceFlowPreferences.$entityResolutionThreshold.setter();
}

void *IntelligenceFlowPreferences.$entityResolutionThreshold.setter()
{
  sub_1DD6FA6A4();
  sub_1DD6F9B7C(v1);
  sub_1DD6EE7DC(&v3, &qword_1ECD0E7F0, &qword_1DD87A248);
  return sub_1DD730E28((v0 + 152));
}

uint64_t IntelligenceFlowPreferences.$entityResolutionThreshold.modify()
{
  v2 = sub_1DD6FF790();
  v3 = sub_1DD7281CC(v2);
  v4 = sub_1DD6ED460(v3);
  v4[60] = v0;
  sub_1DD6F9B7C(v4);
  v5 = sub_1DD6F9B7C((v1 + 80));
  sub_1DD730E10(v5, v6, &qword_1ECD0E7F0, &qword_1DD87A248);
  return sub_1DD700BE4();
}

void sub_1DD72AB0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6E650C();
    memcpy((v10 + 240), (v9 + 152), 0x50uLL);
    sub_1DD6E7130();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    sub_1DD6E4278((v9 + 152));
    sub_1DD6DFEE8();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6E6C50(a1, a2, a3, a4, a5, a6, a7, a8, v24);
    sub_1DD6F9B7C((v10 + 160));
    sub_1DD6EE7DC(v10 + 160, &qword_1ECD0E7F0, &qword_1DD87A248);
    sub_1DD730E40((v8 + 152), v17, v18, v19, v20, v21, v22, v23, v25);
  }

  free(v10);
}

uint64_t IntelligenceFlowPreferences.$shouldShuffleTools.getter@<X0>(__n128 *a1@<X8>)
{
  v17 = *(v1 + 232);
  sub_1DD6FC404(a1, v17, *(v1 + 248), *(v1 + 264), *(v1 + 280));
  return sub_1DD730CC8(v2, v3, &qword_1ECD0E7E8, &qword_1DD87A240, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16, v17.n128_i8[0]);
}

uint64_t sub_1DD72AD18()
{
  sub_1DD6DEA3C();
  v17 = v2[1];
  v18 = v2[2];
  v19 = v2[3];
  sub_1DD730CC8(v2, v3, &qword_1ECD0E7E8, &qword_1DD87A240, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16, *v2);
  return v0(v1);
}

__n128 IntelligenceFlowPreferences.$shouldShuffleTools.setter(uint64_t a1)
{
  v3 = *(v1 + 248);
  v8[0] = *(v1 + 232);
  v8[1] = v3;
  v4 = *(v1 + 280);
  v8[2] = *(v1 + 264);
  v8[3] = v4;
  sub_1DD6EE7DC(v8, &qword_1ECD0E7E8, &qword_1DD87A240);
  v5 = *(a1 + 16);
  *(v1 + 232) = *a1;
  *(v1 + 248) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(v1 + 264) = result;
  *(v1 + 280) = v7;
  return result;
}

uint64_t IntelligenceFlowPreferences.$shouldShuffleTools.modify()
{
  v1 = sub_1DD6E3818();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6E26C8(v2);
  v4 = sub_1DD730C9C(v3, v0 + 232, *(v0 + 232), *(v0 + 248));
  v7 = sub_1DD6E0C9C(v5, v4, v6, *(v0 + 248), *(v0 + 232));
  sub_1DD730620(v7, &v7[8], &qword_1ECD0E7E8, &qword_1DD87A240);
  return sub_1DD6F09EC();
}

void sub_1DD72AE6C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 384);
    sub_1DD6E07FC();
    v4 = *(v3 + 248);
    v5 = *(v3 + 280);
    v6 = *(v3 + 232);
    *(v2 + 224) = *(v3 + 264);
    *(v2 + 240) = v5;
    *(v2 + 192) = v6;
    *(v2 + 208) = v4;
    sub_1DD6ED240();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v7, v8, v9);
    v10 = sub_1DD6FF8C4();
    *(v3 + 232) = v11;
    *(v3 + 264) = v10;
    *(v3 + 280) = v12;
    *(v3 + 248) = v13;
    sub_1DD6E0514();
  }

  else
  {
    v14 = *(v2 + 384);
    sub_1DD6E0A28();
    v15 = *(v14 + 248);
    v16 = *(v14 + 280);
    v17 = *(v14 + 232);
    *(v2 + 160) = *(v14 + 264);
    *(v2 + 176) = v16;
    *(v2 + 128) = v17;
    *(v2 + 144) = v15;
    sub_1DD6EE7DC(v2 + 128, &qword_1ECD0E7E8, &qword_1DD87A240);
    *(v14 + 232) = v18;
    *(v14 + 248) = v19;
    *(v14 + 264) = v20;
    *(v14 + 280) = v21;
  }

  free(v2);
}

uint64_t IntelligenceFlowPreferences.appleConnectDawToken.getter()
{
  v0 = sub_1DD730DE0(v13);
  if (v20)
  {
    sub_1DD6FABE4();
  }

  else if (v22 && (sub_1DD6E95A0(v0, v22, v1, v2, v3, v4, v5, v6, v10, v11, v12, v13[0], v14, v15, v16, v17, v18, v19, v20, v21), v7))
  {
    sub_1DD730E98();
  }

  else if ((sub_1DD72F2EC() & 1) != 0 || (sub_1DD730CE0(), v8(), !v12))
  {
    sub_1DD6E372C();
    sub_1DD730EA4();
  }

  else
  {
    sub_1DD6E4198();
  }

  return sub_1DD6E58E0();
}

uint64_t IntelligenceFlowPreferences.$appleConnectDawToken.getter()
{
  sub_1DD6E5D84();
  v2 = sub_1DD730DE0(v1);
  v3 = sub_1DD6DED44(v2, (v0 + 296));
  return sub_1DD700D24(v3, v4, &qword_1ECD0E7D8, &qword_1DD87A230, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1DD72B040()
{
  sub_1DD6DEA3C();
  v2 = memcpy(__dst, v1, sizeof(__dst));
  sub_1DD700D24(v2, v3, &qword_1ECD0E7D8, &qword_1DD87A230, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, __dst[0]);
  return v0(v1);
}

void *IntelligenceFlowPreferences.$appleConnectDawToken.setter()
{
  sub_1DD6E1F60();
  sub_1DD730DE0(v1);
  sub_1DD6EE7DC(v3, &qword_1ECD0E7D8, &qword_1DD87A230);
  return sub_1DD7029B4((v0 + 296));
}

uint64_t IntelligenceFlowPreferences.$appleConnectDawToken.modify()
{
  v1 = sub_1DD6EE210();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6DE4EC(v2);
  sub_1DD730DE0(v3);
  v4 = sub_1DD730DE0((v0 + 88));
  sub_1DD730CB0(v4, v5, &qword_1ECD0E7D8, &qword_1DD87A230);
  return sub_1DD6E9A48();
}

void sub_1DD72B158(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6DDF58();
    memcpy((v10 + 264), (v9 + 296), 0x58uLL);
    sub_1DD6F309C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    sub_1DD6E10DC((v9 + 296));
    sub_1DD6E887C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6DE2A8(a1, a2, a3, a4, a5, a6, a7, a8, v24, v26);
    sub_1DD730DE0((v10 + 176));
    sub_1DD6EE7DC(v10 + 176, &qword_1ECD0E7D8, &qword_1DD87A230);
    sub_1DD6ED760((v8 + 296), v17, v18, v19, v20, v21, v22, v23, v25, v27);
  }

  free(v10);
}

uint64_t IntelligenceFlowPreferences.$toolBoxAllowedGlobalTools.getter@<X0>(void *a1@<X8>)
{
  sub_1DD6E5C88(v19);
  v3 = memcpy(a1, (v1 + 384), 0x48uLL);
  return sub_1DD730EBC(v3, v4, &qword_1ECD0E7F8, &qword_1DD87A250, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19[0]);
}

void *IntelligenceFlowPreferences.$toolBoxAllowedGlobalTools.setter()
{
  sub_1DD6E1F60();
  sub_1DD6E5C88(v2);
  sub_1DD6EE7DC(v4, &qword_1ECD0E7F8, &qword_1DD87A250);
  return memcpy((v1 + 384), v0, 0x48uLL);
}

void (*IntelligenceFlowPreferences.$toolBoxAllowedGlobalTools.modify())(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v2 = sub_1DD7281CC(0x1B8uLL);
  v3 = sub_1DD6ED460(v2);
  v3[54] = v0;
  sub_1DD6E5C88(v3);
  sub_1DD6E5C88((v1 + 72));
  sub_1DD730620(v1, v1 + 144, &qword_1ECD0E7F8, &qword_1DD87A250);
  return sub_1DD72B378;
}

void sub_1DD72B378(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6E60B4();
    memcpy((v10 + 216), (v9 + 384), 0x48uLL);
    sub_1DD6E1BD0();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    memcpy((v9 + 384), (v10 + 288), 0x48uLL);
    sub_1DD6EE838();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6E6320(a1, a2, a3, a4, a5, a6, a7, a8, v17, __src[0]);
    sub_1DD6E5C88((v10 + 144));
    sub_1DD6EE7DC(v10 + 144, &qword_1ECD0E7F8, &qword_1DD87A250);
    memcpy((v8 + 384), __src, 0x48uLL);
  }

  free(v10);
}

uint64_t IntelligenceFlowPreferences.$toolBoxAllowedLocalTools.getter@<X0>(void *a1@<X8>)
{
  sub_1DD6FE198(v19);
  v3 = memcpy(a1, (v1 + 456), 0x48uLL);
  return sub_1DD730EBC(v3, v4, &qword_1ECD0E7F8, &qword_1DD87A250, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19[0]);
}

uint64_t sub_1DD72B4D4()
{
  sub_1DD6DEA3C();
  v2 = memcpy(__dst, v1, sizeof(__dst));
  sub_1DD730EBC(v2, v3, &qword_1ECD0E7F8, &qword_1DD87A250, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16, v17, __dst[0]);
  return v0(v1);
}

void *IntelligenceFlowPreferences.$toolBoxAllowedLocalTools.setter()
{
  sub_1DD6E1F60();
  sub_1DD6FE198(v2);
  sub_1DD6EE7DC(v4, &qword_1ECD0E7F8, &qword_1DD87A250);
  return memcpy((v1 + 456), v0, 0x48uLL);
}

void (*IntelligenceFlowPreferences.$toolBoxAllowedLocalTools.modify())(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v2 = sub_1DD7281CC(0x1B8uLL);
  v3 = sub_1DD6ED460(v2);
  v3[54] = v0;
  sub_1DD6FE198(v3);
  sub_1DD6FE198((v1 + 72));
  sub_1DD730620(v1, v1 + 144, &qword_1ECD0E7F8, &qword_1DD87A250);
  return sub_1DD72B608;
}

void sub_1DD72B608(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6E60B4();
    memcpy((v10 + 216), (v9 + 456), 0x48uLL);
    sub_1DD6E1BD0();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    memcpy((v9 + 456), (v10 + 288), 0x48uLL);
    sub_1DD6EE838();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6E6320(a1, a2, a3, a4, a5, a6, a7, a8, v17, __src[0]);
    sub_1DD6FE198((v10 + 144));
    sub_1DD6EE7DC(v10 + 144, &qword_1ECD0E7F8, &qword_1DD87A250);
    memcpy((v8 + 456), __src, 0x48uLL);
  }

  free(v10);
}

uint64_t IntelligenceFlowPreferences.$selectedToolBoxAllowList.getter()
{
  sub_1DD6E5D84();
  v2 = sub_1DD730D64(v1);
  v3 = sub_1DD6DED44(v2, (v0 + 528));
  return sub_1DD700D24(v3, v4, &qword_1ECD0E800, &qword_1DD87A258, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

void *IntelligenceFlowPreferences.$selectedToolBoxAllowList.setter()
{
  sub_1DD6E1F60();
  sub_1DD730D64(v1);
  sub_1DD6EE7DC(v3, &qword_1ECD0E800, &qword_1DD87A258);
  return sub_1DD7029B4((v0 + 528));
}

uint64_t IntelligenceFlowPreferences.$selectedToolBoxAllowList.modify()
{
  v1 = sub_1DD6EE210();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6DE4EC(v2);
  sub_1DD730D64(v3);
  v4 = sub_1DD730D64((v0 + 88));
  sub_1DD730CB0(v4, v5, &qword_1ECD0E800, &qword_1DD87A258);
  return sub_1DD6E9A48();
}

void sub_1DD72B810(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6DDF58();
    memcpy((v10 + 264), (v9 + 528), 0x58uLL);
    sub_1DD6F309C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    sub_1DD6E10DC((v9 + 528));
    sub_1DD6E887C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6DE2A8(a1, a2, a3, a4, a5, a6, a7, a8, v24, v26);
    sub_1DD730D64((v10 + 176));
    sub_1DD6EE7DC(v10 + 176, &qword_1ECD0E800, &qword_1DD87A258);
    sub_1DD6ED760((v8 + 528), v17, v18, v19, v20, v21, v22, v23, v25, v27);
  }

  free(v10);
}

uint64_t IntelligenceFlowPreferences.$disableToolBoxAllowList.getter@<X0>(__n128 *a1@<X8>)
{
  v17 = *(v1 + 616);
  sub_1DD6FC404(a1, v17, *(v1 + 632), *(v1 + 648), *(v1 + 664));
  return sub_1DD730CC8(v2, v3, &qword_1ECD0E7E8, &qword_1DD87A240, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16, v17.n128_i8[0]);
}

double IntelligenceFlowPreferences.$disableToolBoxAllowList.setter()
{
  sub_1DD702E64();
  sub_1DD6EE7DC(&v1, &qword_1ECD0E7E8, &qword_1DD87A240);
  *&result = sub_1DD730E58().n128_u64[0];
  return result;
}

uint64_t IntelligenceFlowPreferences.$disableToolBoxAllowList.modify()
{
  v1 = sub_1DD6E3818();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6E26C8(v2);
  v4 = sub_1DD730C9C(v3, v0 + 616, *(v0 + 616), *(v0 + 632));
  v8 = sub_1DD6E0C9C(v6, v4, v7, v5[1], *v5);
  sub_1DD730620(v8, &v8[8], &qword_1ECD0E7E8, &qword_1DD87A240);
  return sub_1DD6F09EC();
}

void sub_1DD72BAD8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = (v2[48] + 616);
    sub_1DD6E07FC();
    sub_1DD6FAD2C(v3[2], v3[3], v3[1], *v3);
    sub_1DD6ED240();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v4, v5, v6);
    v3[2] = sub_1DD6FF8C4();
    v3[3] = v7;
    *v3 = v9;
    v3[1] = v8;
    sub_1DD6E0514();
  }

  else
  {
    v10 = (v2[48] + 616);
    sub_1DD6E0A28();
    sub_1DD730E6C(v10[2], v10[3], v10[1], *v10);
    v11 = sub_1DD6EE7DC((v2 + 16), &qword_1ECD0E7E8, &qword_1DD87A240);
    sub_1DD730E84(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, v19, v22);
  }

  free(v2);
}

uint64_t IntelligenceFlowPreferences.$selectedToolUtterancesOverride.getter()
{
  sub_1DD6E5D84();
  v2 = sub_1DD730D04(v1);
  v3 = sub_1DD6DED44(v2, (v0 + 680));
  return sub_1DD700D24(v3, v4, &qword_1ECD0E800, &qword_1DD87A258, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1DD72BC1C()
{
  sub_1DD6DEA3C();
  v2 = memcpy(__dst, v1, sizeof(__dst));
  sub_1DD700D24(v2, v3, &qword_1ECD0E800, &qword_1DD87A258, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, __dst[0]);
  return v0(v1);
}

void *IntelligenceFlowPreferences.$selectedToolUtterancesOverride.setter()
{
  sub_1DD6E1F60();
  sub_1DD730D04(v1);
  sub_1DD6EE7DC(v3, &qword_1ECD0E800, &qword_1DD87A258);
  return sub_1DD7029B4((v0 + 680));
}

uint64_t IntelligenceFlowPreferences.$selectedToolUtterancesOverride.modify()
{
  v1 = sub_1DD6EE210();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6DE4EC(v2);
  sub_1DD730D04(v3);
  v4 = sub_1DD730D04((v0 + 88));
  sub_1DD730CB0(v4, v5, &qword_1ECD0E800, &qword_1DD87A258);
  return sub_1DD6E9A48();
}

void sub_1DD72BD34(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6DDF58();
    memcpy((v10 + 264), (v9 + 680), 0x58uLL);
    sub_1DD6F309C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    sub_1DD6E10DC((v9 + 680));
    sub_1DD6E887C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6DE2A8(a1, a2, a3, a4, a5, a6, a7, a8, v24, v26);
    sub_1DD730D04((v10 + 176));
    sub_1DD6EE7DC(v10 + 176, &qword_1ECD0E800, &qword_1DD87A258);
    sub_1DD6ED760((v8 + 680), v17, v18, v19, v20, v21, v22, v23, v25, v27);
  }

  free(v10);
}

uint64_t IntelligenceFlowPreferences.$inputValidation.getter@<X0>(__n128 *a1@<X8>)
{
  v17 = v1[48];
  sub_1DD6FC404(a1, v17, v1[49], v1[50], v1[51]);
  return sub_1DD730CC8(v2, v3, &qword_1ECD0E7E8, &qword_1DD87A240, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16, v17.n128_i8[0]);
}

__n128 IntelligenceFlowPreferences.$inputValidation.setter(uint64_t a1)
{
  v3 = v1[49];
  v8[0] = v1[48];
  v8[1] = v3;
  v4 = v1[51];
  v8[2] = v1[50];
  v8[3] = v4;
  sub_1DD6EE7DC(v8, &qword_1ECD0E7E8, &qword_1DD87A240);
  v5 = *(a1 + 16);
  v1[48] = *a1;
  v1[49] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[50] = result;
  v1[51] = v7;
  return result;
}

uint64_t IntelligenceFlowPreferences.$inputValidation.modify()
{
  v1 = sub_1DD6E3818();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6E26C8(v2);
  v4 = sub_1DD6E17BC(v3, v0[48], v0[49], v0[50], v0[51]);
  v5 = sub_1DD6E0C9C(v4, v0[51], v0[50], v0[49], v0[48]);
  sub_1DD730620(v5, &v5[8], &qword_1ECD0E7E8, &qword_1DD87A240);
  return sub_1DD6F09EC();
}

void sub_1DD72C00C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[48];
    sub_1DD6E07FC();
    sub_1DD6FAD2C(v3[50], v3[51], v3[49], v3[48]);
    sub_1DD6ED240();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v4, v5, v6);
    v3[50] = sub_1DD6FF8C4();
    v3[51] = v7;
    v3[48] = v9;
    v3[49] = v8;
    sub_1DD6E0514();
  }

  else
  {
    v10 = v2[48];
    sub_1DD6E0A28();
    sub_1DD730E6C(v10[50], v10[51], v10[49], v10[48]);
    sub_1DD6EE7DC((v2 + 16), &qword_1ECD0E7E8, &qword_1DD87A240);
    v10[48] = v11;
    v10[49] = v12;
    v10[50] = v13;
    v10[51] = v14;
  }

  free(v2);
}

uint64_t IntelligenceFlowPreferences.$bypassTranscriptWriteRedaction.getter@<X0>(__n128 *a1@<X8>)
{
  v17 = v1[52];
  sub_1DD6FC404(a1, v17, v1[53], v1[54], v1[55]);
  return sub_1DD730CC8(v2, v3, &qword_1ECD0E7E8, &qword_1DD87A240, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16, v17.n128_i8[0]);
}

__n128 IntelligenceFlowPreferences.$bypassTranscriptWriteRedaction.setter(uint64_t a1)
{
  v3 = v1[53];
  v8[0] = v1[52];
  v8[1] = v3;
  v4 = v1[55];
  v8[2] = v1[54];
  v8[3] = v4;
  sub_1DD6EE7DC(v8, &qword_1ECD0E7E8, &qword_1DD87A240);
  v5 = *(a1 + 16);
  v1[52] = *a1;
  v1[53] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[54] = result;
  v1[55] = v7;
  return result;
}

uint64_t IntelligenceFlowPreferences.$bypassTranscriptWriteRedaction.modify()
{
  v1 = sub_1DD6E3818();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6E26C8(v2);
  v4 = sub_1DD6E17BC(v3, v0[52], v0[53], v0[54], v0[55]);
  v5 = sub_1DD6E0C9C(v4, v0[55], v0[54], v0[53], v0[52]);
  sub_1DD730620(v5, &v5[8], &qword_1ECD0E7E8, &qword_1DD87A240);
  return sub_1DD6F09EC();
}

void sub_1DD72C1F4(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[48];
    sub_1DD6E07FC();
    sub_1DD6FAD2C(v3[54], v3[55], v3[53], v3[52]);
    sub_1DD6ED240();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v4, v5, v6);
    v3[54] = sub_1DD6FF8C4();
    v3[55] = v7;
    v3[52] = v9;
    v3[53] = v8;
    sub_1DD6E0514();
  }

  else
  {
    v10 = v2[48];
    sub_1DD6E0A28();
    sub_1DD730E6C(v10[54], v10[55], v10[53], v10[52]);
    sub_1DD6EE7DC((v2 + 16), &qword_1ECD0E7E8, &qword_1DD87A240);
    v10[52] = v11;
    v10[53] = v12;
    v10[54] = v13;
    v10[55] = v14;
  }

  free(v2);
}

uint64_t IntelligenceFlowPreferences.$sbertDimensionSize.getter()
{
  sub_1DD6EFF44();
  v2 = sub_1DD700B58(v1);
  v3 = sub_1DD6FAD94(v2, (v0 + 896));
  return sub_1DD730D4C(v3, v4, &qword_1ECD0E808, &qword_1DD87A260, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
}

void *IntelligenceFlowPreferences.$sbertDimensionSize.setter()
{
  sub_1DD6FA6A4();
  sub_1DD700B58(v1);
  sub_1DD6EE7DC(&v3, &qword_1ECD0E808, &qword_1DD87A260);
  return sub_1DD730E28((v0 + 896));
}

uint64_t IntelligenceFlowPreferences.$sbertDimensionSize.modify()
{
  v2 = sub_1DD6FF790();
  v3 = sub_1DD7281CC(v2);
  v4 = sub_1DD6ED460(v3);
  v4[60] = v0;
  sub_1DD700B58(v4);
  v5 = sub_1DD700B58((v1 + 80));
  sub_1DD730E10(v5, v6, &qword_1ECD0E808, &qword_1DD87A260);
  return sub_1DD700BE4();
}

void sub_1DD72C4C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6E650C();
    memcpy((v10 + 240), (v9 + 896), 0x50uLL);
    sub_1DD6E7130();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    sub_1DD6E4278((v9 + 896));
    sub_1DD6DFEE8();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6E6C50(a1, a2, a3, a4, a5, a6, a7, a8, v24);
    sub_1DD700B58((v10 + 160));
    sub_1DD6EE7DC(v10 + 160, &qword_1ECD0E808, &qword_1DD87A260);
    sub_1DD730E40((v8 + 896), v17, v18, v19, v20, v21, v22, v23, v25);
  }

  free(v10);
}

uint64_t IntelligenceFlowPreferences.sbertTokenizerLocale.getter()
{
  v0 = sub_1DD730DB0(v13);
  if (v20)
  {
    sub_1DD6FABE4();
  }

  else if (v22 && (sub_1DD6E95A0(v0, v22, v1, v2, v3, v4, v5, v6, v10, v11, v12, v13[0], v14, v15, v16, v17, v18, v19, v20, v21), v7))
  {
    sub_1DD730E98();
  }

  else if ((sub_1DD72F2EC() & 1) != 0 || (sub_1DD730CE0(), v8(), !v12))
  {
    sub_1DD6E372C();
    sub_1DD730EA4();
  }

  else
  {
    sub_1DD6E4198();
  }

  return sub_1DD6E58E0();
}

uint64_t IntelligenceFlowPreferences.$sbertTokenizerLocale.getter()
{
  sub_1DD6E5D84();
  v2 = sub_1DD730DB0(v1);
  v3 = sub_1DD6DED44(v2, (v0 + 976));
  return sub_1DD700D24(v3, v4, &qword_1ECD0E7D8, &qword_1DD87A230, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

void *IntelligenceFlowPreferences.$sbertTokenizerLocale.setter()
{
  sub_1DD6E1F60();
  sub_1DD730DB0(v1);
  sub_1DD6EE7DC(v3, &qword_1ECD0E7D8, &qword_1DD87A230);
  return sub_1DD7029B4((v0 + 976));
}

uint64_t IntelligenceFlowPreferences.$sbertTokenizerLocale.modify()
{
  v1 = sub_1DD6EE210();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6DE4EC(v2);
  sub_1DD730DB0(v3);
  v4 = sub_1DD730DB0((v0 + 88));
  sub_1DD730CB0(v4, v5, &qword_1ECD0E7D8, &qword_1DD87A230);
  return sub_1DD6E9A48();
}

void sub_1DD72C720(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6DDF58();
    memcpy((v10 + 264), (v9 + 976), 0x58uLL);
    sub_1DD6F309C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    sub_1DD6E10DC((v9 + 976));
    sub_1DD6E887C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6DE2A8(a1, a2, a3, a4, a5, a6, a7, a8, v24, v26);
    sub_1DD730DB0((v10 + 176));
    sub_1DD6EE7DC(v10 + 176, &qword_1ECD0E7D8, &qword_1DD87A230);
    sub_1DD6ED760((v8 + 976), v17, v18, v19, v20, v21, v22, v23, v25, v27);
  }

  free(v10);
}

unint64_t IntelligenceFlowPreferences.uiControlPlanOverrideRankThreshold.getter()
{
  v0 = sub_1DD730D98(&v10);
  if (v15)
  {
    if (!v17 || (v0 = sub_1DD72FC88(v16, v17, &v10), (v0 & 0x10000000000) != 0))
    {
      v10(&v9, v0);
      sub_1DD703248();
      if (v2)
      {
        if (qword_1EE015238 != -1)
        {
          sub_1DD6DF2FC();
        }

        v3 = sub_1DD874CD0();
        sub_1DD6DEB80(v3, qword_1EE015240);
        sub_1DD6ED37C();
        sub_1DD6E13DC();
        sub_1DD6DF59C(v4, v5, &qword_1DD87A238);
        v6 = *(sub_1DD6E5250() + 16);

        if (v6 == 1)
        {
          goto LABEL_12;
        }
      }

      sub_1DD730CE0();
      v7();
      if ((v9 & 0x10000000000) != 0)
      {
LABEL_12:
        LODWORD(v0) = v11;
        LOBYTE(v1) = v12;
      }

      else
      {
        v0 = v9 | (BYTE4(v9) << 32);
        v1 = HIDWORD(v0) & 1;
      }
    }

    else
    {
      v1 = HIDWORD(v0) & 1;
    }
  }

  else
  {
    LODWORD(v0) = v13;
    LOBYTE(v1) = v14 & 1;
  }

  return v0 | (v1 << 32);
}

uint64_t IntelligenceFlowPreferences.$uiControlPlanOverrideRankThreshold.getter@<X0>(void *a1@<X8>)
{
  sub_1DD730D98(v19);
  v3 = memcpy(a1, (v1 + 1064), 0x48uLL);
  return sub_1DD730EBC(v3, v4, &qword_1ECD0E810, &qword_1DD87A268, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19[0]);
}

void *sub_1DD72C97C(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1DD730620(__dst, &v2, &qword_1ECD0E810, &qword_1DD87A268);
  return IntelligenceFlowPreferences.$uiControlPlanOverrideRankThreshold.setter();
}

void *IntelligenceFlowPreferences.$uiControlPlanOverrideRankThreshold.setter()
{
  sub_1DD6E1F60();
  sub_1DD730D98(v2);
  sub_1DD6EE7DC(v4, &qword_1ECD0E810, &qword_1DD87A268);
  return memcpy((v1 + 1064), v0, 0x48uLL);
}

void (*IntelligenceFlowPreferences.$uiControlPlanOverrideRankThreshold.modify())(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v2 = sub_1DD7281CC(0x1B8uLL);
  v3 = sub_1DD6ED460(v2);
  v3[54] = v0;
  sub_1DD730D98(v3);
  sub_1DD730D98((v1 + 72));
  sub_1DD730620(v1, v1 + 144, &qword_1ECD0E810, &qword_1DD87A268);
  return sub_1DD72CAB0;
}

void sub_1DD72CAB0(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6E60B4();
    memcpy((v10 + 216), (v9 + 1064), 0x48uLL);
    sub_1DD6E1BD0();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    memcpy((v9 + 1064), (v10 + 288), 0x48uLL);
    sub_1DD6EE838();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6E6320(a1, a2, a3, a4, a5, a6, a7, a8, v17, __src[0]);
    sub_1DD730D98((v10 + 144));
    sub_1DD6EE7DC(v10 + 144, &qword_1ECD0E810, &qword_1DD87A268);
    memcpy((v8 + 1064), __src, 0x48uLL);
  }

  free(v10);
}

void IntelligenceFlowPreferences.uiControlToolRetrievalMatchThreshold.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *(*a12)(uint64_t *__return_ptr), uint64_t a13, void (*a14)(uint64_t *__return_ptr, void *), uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_1DD730EFC();
  a30 = v31;
  a31 = v32;
  sub_1DD701394(&a12);
  if (a20)
  {
    sub_1DD6F44A4();
    if (!v33 || (sub_1DD730158(a21, v33, &a12), (v34 & 0x100) != 0))
    {
      v35 = a12(&a9);
      if (a9 != 1)
      {
        goto LABEL_8;
      }

      if (qword_1EE015238 != -1)
      {
        sub_1DD6DF2FC();
      }

      v36 = sub_1DD874CD0();
      sub_1DD6DEB80(v36, qword_1EE015240);
      sub_1DD6ED37C();
      sub_1DD6E13DC();
      sub_1DD6DF59C(v37, v38, &qword_1DD87A238);
      v39 = *(sub_1DD6E5250() + 16);

      if (v39 != 1)
      {
LABEL_8:
        a14(&a9, v35);
      }
    }
  }

  sub_1DD730EE8();
}

uint64_t IntelligenceFlowPreferences.$uiControlToolRetrievalMatchThreshold.getter()
{
  sub_1DD6E5D84();
  v2 = sub_1DD701394(v1);
  v3 = sub_1DD6DED44(v2, (v0 + 1136));
  return sub_1DD700D24(v3, v4, &qword_1ECD0E818, &qword_1DD87A270, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

void *sub_1DD72CCEC(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1DD730620(__dst, &v2, &qword_1ECD0E818, &qword_1DD87A270);
  return IntelligenceFlowPreferences.$uiControlToolRetrievalMatchThreshold.setter();
}

void *IntelligenceFlowPreferences.$uiControlToolRetrievalMatchThreshold.setter()
{
  sub_1DD6E1F60();
  sub_1DD701394(v1);
  sub_1DD6EE7DC(v3, &qword_1ECD0E818, &qword_1DD87A270);
  return sub_1DD7029B4((v0 + 1136));
}

uint64_t IntelligenceFlowPreferences.$uiControlToolRetrievalMatchThreshold.modify()
{
  v1 = sub_1DD6EE210();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6DE4EC(v2);
  sub_1DD701394(v3);
  v4 = sub_1DD701394((v0 + 88));
  sub_1DD730CB0(v4, v5, &qword_1ECD0E818, &qword_1DD87A270);
  return sub_1DD6E9A48();
}

void sub_1DD72CE04(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6DDF58();
    memcpy((v10 + 264), (v9 + 1136), 0x58uLL);
    sub_1DD6F309C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    sub_1DD6E10DC((v9 + 1136));
    sub_1DD6E887C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6DE2A8(a1, a2, a3, a4, a5, a6, a7, a8, v24, v26);
    sub_1DD701394((v10 + 176));
    sub_1DD6EE7DC(v10 + 176, &qword_1ECD0E818, &qword_1DD87A270);
    sub_1DD6ED760((v8 + 1136), v17, v18, v19, v20, v21, v22, v23, v25, v27);
  }

  free(v10);
}

uint64_t IntelligenceFlowPreferences.$uiControlCommandEmbeddingInFocus.getter@<X0>(__n128 *a1@<X8>)
{
  v17 = *(v1 + 1224);
  sub_1DD6FC404(a1, v17, *(v1 + 1240), *(v1 + 1256), *(v1 + 1272));
  return sub_1DD730CC8(v2, v3, &qword_1ECD0E7E8, &qword_1DD87A240, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16, v17.n128_i8[0]);
}

double IntelligenceFlowPreferences.$uiControlCommandEmbeddingInFocus.setter()
{
  sub_1DD702E64();
  sub_1DD6EE7DC(&v1, &qword_1ECD0E7E8, &qword_1DD87A240);
  *&result = sub_1DD730E58().n128_u64[0];
  return result;
}

uint64_t IntelligenceFlowPreferences.$uiControlCommandEmbeddingInFocus.modify()
{
  v1 = sub_1DD6E3818();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6E26C8(v2);
  v4 = sub_1DD730C9C(v3, v0 + 1224, *(v0 + 1224), *(v0 + 1240));
  v8 = sub_1DD6E0C9C(v6, v4, v7, v5[1], *v5);
  sub_1DD730620(v8, &v8[8], &qword_1ECD0E7E8, &qword_1DD87A240);
  return sub_1DD6F09EC();
}

void sub_1DD72D0CC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = (v2[48] + 1224);
    sub_1DD6E07FC();
    sub_1DD6FAD2C(v3[2], v3[3], v3[1], *v3);
    sub_1DD6ED240();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v4, v5, v6);
    v3[2] = sub_1DD6FF8C4();
    v3[3] = v7;
    *v3 = v9;
    v3[1] = v8;
    sub_1DD6E0514();
  }

  else
  {
    v10 = (v2[48] + 1224);
    sub_1DD6E0A28();
    sub_1DD730E6C(v10[2], v10[3], v10[1], *v10);
    v11 = sub_1DD6EE7DC((v2 + 16), &qword_1ECD0E7E8, &qword_1DD87A240);
    sub_1DD730E84(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, v19, v22);
  }

  free(v2);
}

uint64_t IntelligenceFlowPreferences.$uiControlCommandEmbeddingChoice.getter()
{
  sub_1DD6EFF44();
  v2 = sub_1DD730D34(v1);
  v3 = sub_1DD6FAD94(v2, (v0 + 1288));
  return sub_1DD730D4C(v3, v4, &qword_1ECD0E808, &qword_1DD87A260, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1DD72D2DC()
{
  sub_1DD6DEA3C();
  v2 = memcpy(__dst, v1, sizeof(__dst));
  sub_1DD730D4C(v2, v3, &qword_1ECD0E808, &qword_1DD87A260, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, __dst[0]);
  return v0(v1);
}

void *IntelligenceFlowPreferences.$uiControlCommandEmbeddingChoice.setter()
{
  sub_1DD6FA6A4();
  sub_1DD730D34(v1);
  sub_1DD6EE7DC(&v3, &qword_1ECD0E808, &qword_1DD87A260);
  return sub_1DD730E28((v0 + 1288));
}

uint64_t IntelligenceFlowPreferences.$uiControlCommandEmbeddingChoice.modify()
{
  v2 = sub_1DD6FF790();
  v3 = sub_1DD7281CC(v2);
  v4 = sub_1DD6ED460(v3);
  v4[60] = v0;
  sub_1DD730D34(v4);
  v5 = sub_1DD730D34((v1 + 80));
  sub_1DD730E10(v5, v6, &qword_1ECD0E808, &qword_1DD87A260);
  return sub_1DD700BE4();
}

void sub_1DD72D3F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6E650C();
    memcpy((v10 + 240), (v9 + 1288), 0x50uLL);
    sub_1DD6E7130();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    sub_1DD6E4278((v9 + 1288));
    sub_1DD6DFEE8();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6E6C50(a1, a2, a3, a4, a5, a6, a7, a8, v24);
    sub_1DD730D34((v10 + 160));
    sub_1DD6EE7DC(v10 + 160, &qword_1ECD0E808, &qword_1DD87A260);
    sub_1DD730E40((v8 + 1288), v17, v18, v19, v20, v21, v22, v23, v25);
  }

  free(v10);
}

uint64_t IntelligenceFlowPreferences.$uiControlCommandHierarchyEmbedSeparator.getter()
{
  sub_1DD6E5D84();
  v2 = sub_1DD730D1C(v1);
  v3 = sub_1DD6DED44(v2, (v0 + 1368));
  return sub_1DD700D24(v3, v4, &qword_1ECD0E800, &qword_1DD87A258, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

void *IntelligenceFlowPreferences.$uiControlCommandHierarchyEmbedSeparator.setter()
{
  sub_1DD6E1F60();
  sub_1DD730D1C(v1);
  sub_1DD6EE7DC(v3, &qword_1ECD0E800, &qword_1DD87A258);
  return sub_1DD7029B4((v0 + 1368));
}

uint64_t IntelligenceFlowPreferences.$uiControlCommandHierarchyEmbedSeparator.modify()
{
  v1 = sub_1DD6EE210();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6DE4EC(v2);
  sub_1DD730D1C(v3);
  v4 = sub_1DD730D1C((v0 + 88));
  sub_1DD730CB0(v4, v5, &qword_1ECD0E800, &qword_1DD87A258);
  return sub_1DD6E9A48();
}

void sub_1DD72D5F0(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6DDF58();
    memcpy((v10 + 264), (v9 + 1368), 0x58uLL);
    sub_1DD6F309C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    sub_1DD6E10DC((v9 + 1368));
    sub_1DD6E887C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6DE2A8(a1, a2, a3, a4, a5, a6, a7, a8, v24, v26);
    sub_1DD730D1C((v10 + 176));
    sub_1DD6EE7DC(v10 + 176, &qword_1ECD0E800, &qword_1DD87A258);
    sub_1DD6ED760((v8 + 1368), v17, v18, v19, v20, v21, v22, v23, v25, v27);
  }

  free(v10);
}

uint64_t IntelligenceFlowPreferences.$shouldDisableSearchPlusActConfirmation.getter@<X0>(__n128 *a1@<X8>)
{
  v17 = v1[91];
  sub_1DD6FC404(a1, v17, v1[92], v1[93], v1[94]);
  return sub_1DD730CC8(v2, v3, &qword_1ECD0E7E8, &qword_1DD87A240, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16, v17.n128_i8[0]);
}

__n128 IntelligenceFlowPreferences.$shouldDisableSearchPlusActConfirmation.setter(uint64_t a1)
{
  v3 = v1[92];
  v8[0] = v1[91];
  v8[1] = v3;
  v4 = v1[94];
  v8[2] = v1[93];
  v8[3] = v4;
  sub_1DD6EE7DC(v8, &qword_1ECD0E7E8, &qword_1DD87A240);
  v5 = *(a1 + 16);
  v1[91] = *a1;
  v1[92] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[93] = result;
  v1[94] = v7;
  return result;
}

uint64_t IntelligenceFlowPreferences.$shouldDisableSearchPlusActConfirmation.modify()
{
  v1 = sub_1DD6E3818();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6E26C8(v2);
  v4 = sub_1DD6E17BC(v3, v0[91], v0[92], v0[93], v0[94]);
  v5 = sub_1DD6E0C9C(v4, v0[94], v0[93], v0[92], v0[91]);
  sub_1DD730620(v5, &v5[8], &qword_1ECD0E7E8, &qword_1DD87A240);
  return sub_1DD6F09EC();
}

void sub_1DD72D8F8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 384);
    sub_1DD6E07FC();
    v4 = v3[92];
    v5 = v3[94];
    v6 = v3[91];
    *(v2 + 224) = v3[93];
    *(v2 + 240) = v5;
    *(v2 + 192) = v6;
    *(v2 + 208) = v4;
    sub_1DD6ED240();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v7, v8, v9);
    v10 = sub_1DD6FF8C4();
    v3[91] = v11;
    v3[94] = v12;
    v3[93] = v10;
    v3[92] = v13;
    sub_1DD6E0514();
  }

  else
  {
    v14 = *(v2 + 384);
    sub_1DD6E0A28();
    v15 = v14[92];
    v16 = v14[94];
    v17 = v14[91];
    *(v2 + 160) = v14[93];
    *(v2 + 176) = v16;
    *(v2 + 128) = v17;
    *(v2 + 144) = v15;
    sub_1DD6EE7DC(v2 + 128, &qword_1ECD0E7E8, &qword_1DD87A240);
    v14[91] = v18;
    v14[92] = v19;
    v14[93] = v20;
    v14[94] = v21;
  }

  free(v2);
}

uint64_t IntelligenceFlowPreferences.$planOverridesDelayDurationInMs.getter()
{
  sub_1DD6EFF44();
  v2 = sub_1DD6E722C(v1);
  v3 = sub_1DD6FAD94(v2, (v0 + 1520));
  return sub_1DD730D4C(v3, v4, &qword_1ECD0E808, &qword_1DD87A260, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
}

void *IntelligenceFlowPreferences.$planOverridesDelayDurationInMs.setter()
{
  sub_1DD6FA6A4();
  sub_1DD6E722C(v1);
  sub_1DD6EE7DC(&v3, &qword_1ECD0E808, &qword_1DD87A260);
  return sub_1DD730E28((v0 + 1520));
}

uint64_t IntelligenceFlowPreferences.$planOverridesDelayDurationInMs.modify()
{
  v2 = sub_1DD6FF790();
  v3 = sub_1DD7281CC(v2);
  v4 = sub_1DD6ED460(v3);
  v4[60] = v0;
  sub_1DD6E722C(v4);
  v5 = sub_1DD6E722C((v1 + 80));
  sub_1DD730E10(v5, v6, &qword_1ECD0E808, &qword_1DD87A260);
  return sub_1DD700BE4();
}

void sub_1DD72DAF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6E650C();
    memcpy((v10 + 240), (v9 + 1520), 0x50uLL);
    sub_1DD6E7130();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    sub_1DD6E4278((v9 + 1520));
    sub_1DD6DFEE8();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6E6C50(a1, a2, a3, a4, a5, a6, a7, a8, v24);
    sub_1DD6E722C((v10 + 160));
    sub_1DD6EE7DC(v10 + 160, &qword_1ECD0E808, &qword_1DD87A260);
    sub_1DD730E40((v8 + 1520), v17, v18, v19, v20, v21, v22, v23, v25);
  }

  free(v10);
}

uint64_t IntelligenceFlowPreferences.$planOverridesDelayDurationVariationInMs.getter()
{
  sub_1DD6EFF44();
  v2 = sub_1DD730DF8(v1);
  v3 = sub_1DD6FAD94(v2, (v0 + 1600));
  return sub_1DD730D4C(v3, v4, &qword_1ECD0E808, &qword_1DD87A260, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
}

void *IntelligenceFlowPreferences.$planOverridesDelayDurationVariationInMs.setter()
{
  sub_1DD6FA6A4();
  sub_1DD730DF8(v1);
  sub_1DD6EE7DC(&v3, &qword_1ECD0E808, &qword_1DD87A260);
  return sub_1DD730E28((v0 + 1600));
}

uint64_t IntelligenceFlowPreferences.$planOverridesDelayDurationVariationInMs.modify()
{
  v2 = sub_1DD6FF790();
  v3 = sub_1DD7281CC(v2);
  v4 = sub_1DD6ED460(v3);
  v4[60] = v0;
  sub_1DD730DF8(v4);
  v5 = sub_1DD730DF8((v1 + 80));
  sub_1DD730E10(v5, v6, &qword_1ECD0E808, &qword_1DD87A260);
  return sub_1DD700BE4();
}

void sub_1DD72DCB8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6E650C();
    memcpy((v10 + 240), (v9 + 1600), 0x50uLL);
    sub_1DD6E7130();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    sub_1DD6E4278((v9 + 1600));
    sub_1DD6DFEE8();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6E6C50(a1, a2, a3, a4, a5, a6, a7, a8, v24);
    sub_1DD730DF8((v10 + 160));
    sub_1DD6EE7DC(v10 + 160, &qword_1ECD0E808, &qword_1DD87A260);
    sub_1DD730E40((v8 + 1600), v17, v18, v19, v20, v21, v22, v23, v25);
  }

  free(v10);
}

uint64_t IntelligenceFlowPreferences.agenticPlannerRoutingScheme.getter()
{
  v0 = sub_1DD730DC8(v13);
  if (v20)
  {
    sub_1DD6FABE4();
  }

  else if (v22 && (sub_1DD6E95A0(v0, v22, v1, v2, v3, v4, v5, v6, v10, v11, v12, v13[0], v14, v15, v16, v17, v18, v19, v20, v21), v7))
  {
    sub_1DD730E98();
  }

  else if ((sub_1DD72F2EC() & 1) != 0 || (sub_1DD730CE0(), v8(), !v12))
  {
    sub_1DD6E372C();
    sub_1DD730EA4();
  }

  else
  {
    sub_1DD6E4198();
  }

  return sub_1DD6E58E0();
}

uint64_t IntelligenceFlowPreferences.$agenticPlannerRoutingScheme.getter()
{
  sub_1DD6E5D84();
  v2 = sub_1DD730DC8(v1);
  v3 = sub_1DD6DED44(v2, (v0 + 1680));
  return sub_1DD700D24(v3, v4, &qword_1ECD0E7D8, &qword_1DD87A230, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

void *IntelligenceFlowPreferences.$agenticPlannerRoutingScheme.setter()
{
  sub_1DD6E1F60();
  sub_1DD730DC8(v1);
  sub_1DD6EE7DC(v3, &qword_1ECD0E7D8, &qword_1DD87A230);
  return sub_1DD7029B4((v0 + 1680));
}

uint64_t IntelligenceFlowPreferences.$agenticPlannerRoutingScheme.modify()
{
  v1 = sub_1DD6EE210();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6DE4EC(v2);
  sub_1DD730DC8(v3);
  v4 = sub_1DD730DC8((v0 + 88));
  sub_1DD730CB0(v4, v5, &qword_1ECD0E7D8, &qword_1DD87A230);
  return sub_1DD6E9A48();
}

void sub_1DD72DF14(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6DDF58();
    memcpy((v10 + 264), (v9 + 1680), 0x58uLL);
    sub_1DD6F309C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    sub_1DD6E10DC((v9 + 1680));
    sub_1DD6E887C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6DE2A8(a1, a2, a3, a4, a5, a6, a7, a8, v24, v26);
    sub_1DD730DC8((v10 + 176));
    sub_1DD6EE7DC(v10 + 176, &qword_1ECD0E7D8, &qword_1DD87A230);
    sub_1DD6ED760((v8 + 1680), v17, v18, v19, v20, v21, v22, v23, v25, v27);
  }

  free(v10);
}

uint64_t IntelligenceFlowPreferences.$agenticPlannerZincUrl.getter()
{
  sub_1DD6E5D84();
  v2 = sub_1DD6E5CF8(v1);
  v3 = sub_1DD6DED44(v2, (v0 + 1768));
  return sub_1DD700D24(v3, v4, &qword_1ECD0E800, &qword_1DD87A258, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

void *IntelligenceFlowPreferences.$agenticPlannerZincUrl.setter()
{
  sub_1DD6E1F60();
  sub_1DD6E5CF8(v1);
  sub_1DD6EE7DC(v3, &qword_1ECD0E800, &qword_1DD87A258);
  return sub_1DD7029B4((v0 + 1768));
}

uint64_t IntelligenceFlowPreferences.$agenticPlannerZincUrl.modify()
{
  v1 = sub_1DD6EE210();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6DE4EC(v2);
  sub_1DD6E5CF8(v3);
  v4 = sub_1DD6E5CF8((v0 + 88));
  sub_1DD730CB0(v4, v5, &qword_1ECD0E800, &qword_1DD87A258);
  return sub_1DD6E9A48();
}

void sub_1DD72E10C(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6DDF58();
    memcpy((v10 + 264), (v9 + 1768), 0x58uLL);
    sub_1DD6F309C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    sub_1DD6E10DC((v9 + 1768));
    sub_1DD6E887C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6DE2A8(a1, a2, a3, a4, a5, a6, a7, a8, v24, v26);
    sub_1DD6E5CF8((v10 + 176));
    sub_1DD6EE7DC(v10 + 176, &qword_1ECD0E800, &qword_1DD87A258);
    sub_1DD6ED760((v8 + 1768), v17, v18, v19, v20, v21, v22, v23, v25, v27);
  }

  free(v10);
}

uint64_t IntelligenceFlowPreferences.$requestDateTime.getter()
{
  sub_1DD6E5D84();
  v2 = sub_1DD6F9A58(v1);
  v3 = sub_1DD6DED44(v2, (v0 + 1856));
  return sub_1DD700D24(v3, v4, &qword_1ECD0E800, &qword_1DD87A258, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

void *IntelligenceFlowPreferences.$requestDateTime.setter()
{
  sub_1DD6E1F60();
  sub_1DD6F9A58(v1);
  sub_1DD6EE7DC(v3, &qword_1ECD0E800, &qword_1DD87A258);
  return sub_1DD7029B4((v0 + 1856));
}

uint64_t IntelligenceFlowPreferences.$requestDateTime.modify()
{
  v1 = sub_1DD6EE210();
  v2 = sub_1DD7281CC(v1);
  v3 = sub_1DD6DE4EC(v2);
  sub_1DD6F9A58(v3);
  v4 = sub_1DD6F9A58((v0 + 88));
  sub_1DD730CB0(v4, v5, &qword_1ECD0E800, &qword_1DD87A258);
  return sub_1DD6E9A48();
}

void sub_1DD72E304(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *a1;
  if (a2)
  {
    sub_1DD6DDF58();
    memcpy((v10 + 264), (v9 + 1856), 0x58uLL);
    sub_1DD6F309C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v11, v12, v13);
    sub_1DD6E10DC((v9 + 1856));
    sub_1DD6E887C();
    sub_1DD6E490C();
    sub_1DD6EE7DC(v14, v15, v16);
  }

  else
  {
    sub_1DD6DE2A8(a1, a2, a3, a4, a5, a6, a7, a8, v24, v26);
    sub_1DD6F9A58((v10 + 176));
    sub_1DD6EE7DC(v10 + 176, &qword_1ECD0E800, &qword_1DD87A258);
    sub_1DD6ED760((v8 + 1856), v17, v18, v19, v20, v21, v22, v23, v25, v27);
  }

  free(v10);
}

id sub_1DD72E3C8@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + 944;
  strcpy((a1 + 32), "agenticPlanner");
  *(a1 + 47) = -18;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = xmmword_1DD87A1B0;
  if (qword_1EE015BD8 != -1)
  {
    swift_once();
  }

  *(a1 + 80) = qword_1EE015BE0;
  *(a1 + 16) = sub_1DD730C20;
  *(a1 + 24) = 0;
  *a1 = sub_1DD7109F8;
  *(a1 + 8) = 0;
  sub_1DD730E78();
  *(a1 + 120) = 512;
  *(a1 + 128) = 0xD000000000000018;
  *(a1 + 136) = v3;
  *(a1 + 144) = v4;
  *(a1 + 104) = sub_1DD724258;
  *(a1 + 112) = 0;
  *(a1 + 88) = sub_1DD7109F8;
  *(a1 + 96) = 0;
  sub_1DD6F37E8();
  *(a1 + 184) = 0x3FFE666666666666;
  *(a1 + 192) = 0;
  *(a1 + 200) = 1;
  *(a1 + 208) = v5 + 7;
  *(a1 + 216) = v6;
  *(a1 + 224) = v7;
  *(a1 + 232) = v8;
  *(a1 + 168) = sub_1DD730BA0;
  *(a1 + 176) = 0;
  *(a1 + 152) = sub_1DD7109F8;
  *(a1 + 160) = 0;
  sub_1DD6F37E8();
  *(a1 + 264) = v9;
  *(a1 + 272) = v10;
  *(a1 + 280) = v11;
  *(a1 + 248) = v12;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0;
  sub_1DD6F37E8();
  *(a1 + 328) = 0;
  *(a1 + 336) = 0xE000000000000000;
  *(a1 + 344) = 0u;
  *(a1 + 360) = v13 + 2;
  *(a1 + 368) = v14;
  *(a1 + 376) = v15;
  *(a1 + 312) = v16;
  *(a1 + 320) = 0;
  *(a1 + 288) = v15;
  *(a1 + 296) = v17;
  *(a1 + 304) = 0;
  sub_1DD6F37E8();
  v18 = MEMORY[0x1E69E7CC0];
  *(a1 + 416) = MEMORY[0x1E69E7CC0];
  *(a1 + 424) = 0;
  *(a1 + 432) = v20;
  *(a1 + 440) = v19;
  *(a1 + 400) = sub_1DD730BF8;
  *(a1 + 408) = 0;
  *(a1 + 384) = sub_1DD7109F8;
  *(a1 + 392) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = v18;
  *(a1 + 496) = xmmword_1DD87A1C0;
  *(a1 + 512) = 0x80000001DD8B4AD0;
  *(a1 + 520) = v21;
  *(a1 + 464) = 0;
  *(a1 + 472) = sub_1DD730BF8;
  *(a1 + 448) = v21;
  *(a1 + 456) = sub_1DD7109F8;
  sub_1DD6F37E8();
  *(a1 + 576) = 0;
  *(a1 + 560) = v22;
  *(a1 + 584) = v23;
  *(a1 + 592) = v24;
  *(a1 + 600) = v25;
  *(a1 + 608) = v26;
  *(a1 + 544) = sub_1DD730BD0;
  *(a1 + 552) = 0;
  *(a1 + 528) = sub_1DD7109F8;
  *(a1 + 536) = 0;
  *(a1 + 648) = v27;
  *(a1 + 656) = v28 | 5;
  *(a1 + 664) = 0x80000001DD8B4B10;
  *(a1 + 672) = v26;
  *(a1 + 632) = v29;
  *(a1 + 640) = 0;
  *(a1 + 616) = v30;
  *(a1 + 624) = 0;
  *(a1 + 728) = 0;
  *(a1 + 712) = v22;
  *(a1 + 736) = xmmword_1DD87A1D0;
  *(a1 + 752) = 0x80000001DD8B4B30;
  *(a1 + 760) = v26;
  *(a1 + 696) = sub_1DD730BD0;
  *(a1 + 704) = 0;
  *(a1 + 680) = sub_1DD7109F8;
  *(a1 + 688) = 0;
  *(a1 + 800) = v27;
  *(a1 + 808) = 0x6C61567475706E49;
  *(a1 + 816) = 0xEF6E6F6974616469;
  *(a1 + 824) = v26;
  *(a1 + 784) = v29;
  *(a1 + 792) = 0;
  *(a1 + 768) = v30;
  *(a1 + 776) = 0;
  *(a1 + 864) = v27;
  *(a1 + 872) = v28 | 0xC;
  *(a1 + 880) = 0x80000001DD8B4B50;
  *(a1 + 888) = v26;
  *(a1 + 848) = v29;
  *(a1 + 856) = 0;
  *(a1 + 832) = v30;
  *(a1 + 840) = 0;
  *(a1 + 928) = xmmword_1DD87A1E0;
  *v2 = v23;
  *(a1 + 952) = v28;
  *(a1 + 960) = 0x80000001DD8B4B70;
  *(a1 + 968) = v26;
  *(a1 + 912) = sub_1DD730BA0;
  *(a1 + 920) = 0;
  *(a1 + 896) = sub_1DD7109F8;
  *(a1 + 904) = 0;
  *(a1 + 1008) = 0x6873696C676E65;
  *(a1 + 1016) = 0xE700000000000000;
  *(a1 + 1024) = v22;
  *(a1 + 1040) = v31;
  *(a1 + 1048) = 0x80000001DD8B4B90;
  *(a1 + 1056) = v26;
  *(a1 + 992) = v32;
  *(a1 + 1000) = 0;
  *(a1 + 976) = v33;
  *(a1 + 984) = 0;
  *(a1 + 1096) = 0;
  *(v2 + 156) = v23;
  *(v2 + 160) = 0;
  *(v2 + 164) = 256;
  *(a1 + 1112) = v28 + 16;
  *(a1 + 1120) = 0x80000001DD8B4BB0;
  *(a1 + 1128) = v26;
  *(a1 + 1080) = sub_1DD730B68;
  *(a1 + 1088) = 0;
  *(a1 + 1064) = sub_1DD7109F8;
  *(a1 + 1072) = 0;
  *(a1 + 1168) = 0;
  *(v2 + 232) = v23;
  *(a1 + 1184) = 0;
  *(a1 + 1192) = 0;
  *(v2 + 249) = v23;
  *(a1 + 1200) = v28 + 18;
  *(a1 + 1208) = 0x80000001DD8B4BE0;
  *(a1 + 1216) = v26;
  *(a1 + 1152) = sub_1DD730B34;
  *(a1 + 1160) = 0;
  *(a1 + 1136) = sub_1DD7109F8;
  *(a1 + 1144) = 0;
  *(a1 + 1256) = 513;
  *(a1 + 1264) = v28 + 14;
  *(a1 + 1272) = 0x80000001DD8B4C10;
  *(a1 + 1280) = v26;
  *(a1 + 1240) = v29;
  *(a1 + 1248) = 0;
  *(a1 + 1224) = v30;
  *(a1 + 1232) = 0;
  *(a1 + 1320) = v22;
  *(v2 + 392) = v23;
  *(a1 + 1344) = v28 | 0xD;
  *(a1 + 1352) = 0x80000001DD8B4C40;
  *(a1 + 1360) = v26;
  *(a1 + 1304) = sub_1DD730BA0;
  *(a1 + 1312) = 0;
  *(a1 + 1288) = sub_1DD7109F8;
  *(a1 + 1296) = 0;
  *(a1 + 1416) = 0;
  *(a1 + 1400) = v22;
  *(a1 + 1424) = xmmword_1DD87A1F0;
  *(a1 + 1440) = 0x80000001DD8B4C60;
  *(a1 + 1448) = v26;
  *(a1 + 1384) = sub_1DD730BD0;
  *(a1 + 1392) = 0;
  *(a1 + 1368) = sub_1DD7109F8;
  *(a1 + 1376) = 0;
  *(a1 + 1488) = v27;
  *(a1 + 1496) = v28 + 14;
  *(a1 + 1504) = 0x80000001DD8B4C90;
  *(a1 + 1512) = v26;
  *(a1 + 1472) = v29;
  *(a1 + 1480) = 0;
  *(a1 + 1456) = v30;
  *(a1 + 1464) = 0;
  sub_1DD730E78();
  *(a1 + 1552) = v34;
  *(v2 + 624) = v35;
  *(a1 + 1576) = v36;
  *(a1 + 1584) = v37;
  *(a1 + 1592) = v38;
  *(a1 + 1536) = v39;
  *(a1 + 1544) = 0;
  *(a1 + 1520) = v40;
  *(a1 + 1528) = 0;
  sub_1DD730E78();
  *(a1 + 1632) = xmmword_1DD87A200;
  *(v2 + 704) = v41;
  *(a1 + 1656) = v42 + 21;
  *(a1 + 1664) = v43;
  *(a1 + 1672) = v44;
  *(a1 + 1616) = v45;
  *(a1 + 1624) = 0;
  *(a1 + 1600) = v46;
  *(a1 + 1608) = 0;
  sub_1DD730E78();
  strcpy((a1 + 1712), "full-ondevice");
  *(a1 + 1726) = -4864;
  *(a1 + 1728) = v47;
  *(a1 + 1744) = v48 + 11;
  *(a1 + 1752) = v49;
  *(a1 + 1760) = v50;
  *(a1 + 1696) = v51;
  *(a1 + 1704) = 0;
  *(a1 + 1680) = v52;
  *(a1 + 1688) = 0;
  *(a1 + 1816) = 0;
  *(a1 + 1800) = v47;
  *(a1 + 1824) = xmmword_1DD87A210;
  *(a1 + 1840) = 0x80000001DD8B4D30;
  *(a1 + 1848) = v50;
  *(a1 + 1784) = v53;
  *(a1 + 1792) = 0;
  *(a1 + 1768) = v54;
  *(a1 + 1776) = 0;
  *(a1 + 1904) = 0;
  *(a1 + 1888) = v47;
  *(a1 + 1912) = v55;
  *(a1 + 1920) = xmmword_1DD87A220;
  *(a1 + 1936) = v50;
  *(a1 + 1872) = v53;
  *(a1 + 1880) = 0;
  *(a1 + 1856) = v54;
  *(a1 + 1864) = 0;
  v56 = v50;

  return v56;
}

IntelligenceFlow::SbertTokenizerLocale_optional __swiftcall SbertTokenizerLocale.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD8757F0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SbertTokenizerLocale.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6E696C69746C756DLL;
  }

  else
  {
    result = 0x6873696C676E65;
  }

  *v0;
  return result;
}

uint64_t sub_1DD72EC30@<X0>(uint64_t *a1@<X8>)
{
  result = SbertTokenizerLocale.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD72ED84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *(*(*(a3 + a4 - 8) - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = *v8;
  (*(v10 + 16))(&v14 - v11, v7);

  v12 = sub_1DD6E58E0();
  return a5(v12);
}

void sub_1DD72F0CC(uint64_t **a1, char a2, void (*a3)(void *, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  if (a2)
  {
    v7 = v4[1];
    v8 = v4[2];
    v9 = *v4;
    v10 = *(v8 + 16);
    v11 = sub_1DD6E58E0();
    v12(v11);

    a3(v5, v9);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v13 = *v4;

    a3(v6, v13);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_1DD72F1E0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v1(&v6);
  if (v6 != 1)
  {
    return 0;
  }

  if (qword_1EE015238 != -1)
  {
    swift_once();
  }

  v3 = sub_1DD874CD0();
  sub_1DD6E1224(v3, qword_1EE015240);
  sub_1DD710A9C(&qword_1ECD0E7E0, &qword_1DD87A238);
  sub_1DD6DF59C(qword_1EE015530, &qword_1ECD0E7E0, &qword_1DD87A238);
  v4 = *(sub_1DD874CB0() + 16);

  return v4;
}

uint64_t sub_1DD72F2EC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v1(&v9);
  sub_1DD6E61B8();
  if (!v3)
  {
    return 0;
  }

  if (qword_1EE015238 != -1)
  {
    sub_1DD6DF2FC();
  }

  v4 = sub_1DD874CD0();
  sub_1DD6DEB80(v4, qword_1EE015240);
  sub_1DD710A9C(&qword_1ECD0E7E0, &qword_1DD87A238);
  sub_1DD6E13DC();
  sub_1DD6DF59C(v5, v6, &qword_1DD87A238);
  v7 = *(sub_1DD874CB0() + 16);

  return v7;
}

uint64_t sub_1DD72F3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  if (!v3)
  {
    v11 = 0u;
    v12 = 0u;
LABEL_9:
    sub_1DD6EE7DC(&v11, &qword_1ECD0E838, &unk_1DD87AA30);
    return 0;
  }

  v4 = sub_1DD875110();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_1DD8755F0();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    goto LABEL_9;
  }

  sub_1DD6EE7DC(&v11, &qword_1ECD0E838, &unk_1DD87AA30);
  v6 = sub_1DD875110();
  v7 = [v3 stringForKey_];

  if (v7)
  {
    sub_1DD875140();
  }

  sub_1DD710A9C(&qword_1ECD0E848, &qword_1DD87A870);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD72F55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 72);
  if (!v3)
  {
    v10 = 0u;
    v11 = 0u;
LABEL_10:
    sub_1DD6EE7DC(&v10, &qword_1ECD0E838, &unk_1DD87AA30);
    return 0;
  }

  v4 = sub_1DD875110();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_1DD8755F0();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_10;
  }

  sub_1DD6EE7DC(&v10, &qword_1ECD0E838, &unk_1DD87AA30);
  v6 = sub_1DD875110();
  [v3 doubleForKey_];

  sub_1DD710A9C(&qword_1ECD0E840, &unk_1DD87A840);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD72F6D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 64);
  if (!v3)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_10:
    sub_1DD6EE7DC(&v7, &qword_1ECD0E838, &unk_1DD87AA30);
    return 0;
  }

  v4 = sub_1DD875110();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_1DD8755F0();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v7 = v9;
  v8 = v10;
  if (!*(&v10 + 1))
  {
    goto LABEL_10;
  }

  sub_1DD730C48(&v7, &v9);
  sub_1DD730C48(&v9, &v7);
  sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD72F7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DD710A9C(&qword_1ECD16C10, &qword_1DD878230);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  v11 = *(a3 + 80);
  if (!v11)
  {
    v37 = 0u;
    v38 = 0u;
LABEL_9:
    sub_1DD6EE7DC(&v37, &qword_1ECD0E838, &unk_1DD87AA30);
    return 0;
  }

  v12 = sub_1DD875110();
  v13 = [v11 objectForKey_];

  if (v13)
  {
    sub_1DD8755F0();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v37 = v39;
  v38 = v40;
  if (!*(&v40 + 1))
  {
    goto LABEL_9;
  }

  sub_1DD730C48(&v37, &v39);
  sub_1DD710A9C(&qword_1ECD0E848, &qword_1DD87A870);
  if (swift_dynamicCastMetatype())
  {
    v14 = sub_1DD875110();
    v15 = [v11 BOOLForKey_];

    sub_1DD6E1EC8(&v39);
    LOBYTE(v37) = v15;
    v16 = qword_1ECD0E860;
    v17 = &unk_1DD87A860;
LABEL_16:
    sub_1DD710A9C(v16, v17);
    goto LABEL_17;
  }

  if (swift_dynamicCastMetatype())
  {
    v19 = sub_1DD875110();
    v20 = [v11 integerForKey_];

    sub_1DD6E1EC8(&v39);
    *&v37 = v20;
    BYTE8(v37) = 0;
    v16 = &qword_1ECD0E858;
    v17 = &qword_1DD88A080;
    goto LABEL_16;
  }

  if (swift_dynamicCastMetatype())
  {
    v21 = sub_1DD875110();
    [v11 floatForKey_];
    v23 = v22;

    sub_1DD6E1EC8(&v39);
    LODWORD(v37) = v23;
    BYTE4(v37) = 0;
    v16 = &unk_1ECD0E850;
    v17 = &unk_1DD87A850;
    goto LABEL_16;
  }

  if (swift_dynamicCastMetatype())
  {
    v24 = sub_1DD875110();
    [v11 doubleForKey_];
    v26 = v25;

    sub_1DD6E1EC8(&v39);
    *&v37 = v26;
    BYTE8(v37) = 0;
    v16 = &qword_1ECD0E840;
    v17 = &unk_1DD87A840;
    goto LABEL_16;
  }

  v27 = sub_1DD874740();
  if (swift_dynamicCastMetatype())
  {
    v28 = sub_1DD875110();
    v29 = [v11 URLForKey_];

    if (v29)
    {
      sub_1DD874700();

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    sub_1DD6E1EC8(&v39);
    sub_1DD6E5E68(v7, v30, 1, v27);
    sub_1DD6FB7B4(v7, v10);
  }

  else
  {
    if (swift_dynamicCastMetatype())
    {
      v31 = sub_1DD875110();
      v32 = [v11 stringForKey_];

      if (v32)
      {
        v33 = sub_1DD875140();
        v35 = v34;

        sub_1DD6E1EC8(&v39);
        *&v36 = v33;
        *(&v36 + 1) = v35;
      }

      else
      {
        sub_1DD6E1EC8(&v39);
        return 0;
      }

      return v36;
    }

    sub_1DD730C48(&v39, &v37);
  }

LABEL_17:
  if ((swift_dynamicCast() & 1) == 0)
  {
    return xmmword_1DD878A30;
  }

  return v36;
}

unint64_t sub_1DD72FC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DD710A9C(&qword_1ECD16C10, &qword_1DD878230);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v11 = *(a3 + 64);
  if (v11)
  {
    v12 = sub_1DD875110();
    v13 = [v11 objectForKey_];

    if (v13)
    {
      sub_1DD8755F0();
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
    }

    v42 = v44;
    v43 = v45;
    if (*(&v45 + 1))
    {
      sub_1DD730C48(&v42, &v44);
      sub_1DD710A9C(&qword_1ECD0E850, &unk_1DD87A850);
      if (swift_dynamicCastMetatype())
      {
        v14 = sub_1DD875110();
        v15 = [v11 BOOLForKey_];

        sub_1DD6E1EC8(&v44);
        LOBYTE(v42) = v15;
        v16 = qword_1ECD0E860;
        v17 = &unk_1DD87A860;
        goto LABEL_12;
      }

      if (swift_dynamicCastMetatype())
      {
        v20 = sub_1DD875110();
        v21 = [v11 integerForKey_];

        sub_1DD6E1EC8(&v44);
        *&v42 = v21;
        BYTE8(v42) = 0;
        v16 = &qword_1ECD0E858;
        v17 = &qword_1DD88A080;
        goto LABEL_12;
      }

      if (swift_dynamicCastMetatype())
      {
        v24 = sub_1DD875110();
        [v11 floatForKey_];
        v26 = v25;

        sub_1DD6E1EC8(&v44);
        v19 = 0;
        v41 = 0;
        v40 = v26;
      }

      else
      {
        if (swift_dynamicCastMetatype())
        {
          v27 = sub_1DD875110();
          [v11 doubleForKey_];
          v29 = v28;

          sub_1DD6E1EC8(&v44);
          *&v42 = v29;
          BYTE8(v42) = 0;
          v16 = &qword_1ECD0E840;
          v17 = &unk_1DD87A840;
          goto LABEL_12;
        }

        v30 = sub_1DD874740();
        if (!swift_dynamicCastMetatype())
        {
          if (!swift_dynamicCastMetatype())
          {
            sub_1DD730C48(&v44, &v42);
            goto LABEL_13;
          }

          v34 = sub_1DD875110();
          v35 = [v11 stringForKey_];

          if (v35)
          {
            v36 = sub_1DD875140();
            v38 = v37;
          }

          else
          {
            v36 = 0;
            v38 = 0;
          }

          sub_1DD6E1EC8(&v44);
          *&v42 = v36;
          *(&v42 + 1) = v38;
          v16 = &qword_1ECD0E848;
          v17 = &qword_1DD87A870;
LABEL_12:
          sub_1DD710A9C(v16, v17);
LABEL_13:
          v22 = swift_dynamicCast();
          if ((v22 & 1) == 0)
          {
            v41 = 0;
            v40 = 0;
          }

          v19 = v22 ^ 1;
          goto LABEL_16;
        }

        v31 = sub_1DD875110();
        v32 = [v11 URLForKey_];

        if (v32)
        {
          sub_1DD874700();

          v33 = 0;
        }

        else
        {
          v33 = 1;
        }

        sub_1DD6E1EC8(&v44);
        sub_1DD6E5E68(v7, v33, 1, v30);
        sub_1DD6FB7B4(v7, v10);
        if (swift_dynamicCast())
        {
          v19 = 0;
        }

        else
        {
          v41 = 0;
          v40 = 0;
          v19 = 1;
        }
      }

LABEL_16:
      v18 = v40 | (v41 << 32);
      goto LABEL_17;
    }
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  sub_1DD6EE7DC(&v42, &qword_1ECD0E838, &unk_1DD87AA30);
  v18 = 0;
  v19 = 1;
LABEL_17:
  LOBYTE(v44) = v19;
  return v18 | (v19 << 40);
}

uint64_t sub_1DD730158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DD710A9C(&qword_1ECD16C10, &qword_1DD878230);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  v11 = *(a3 + 80);
  if (!v11)
  {
    v38 = 0u;
    v39 = 0u;
LABEL_9:
    sub_1DD6EE7DC(&v38, &qword_1ECD0E838, &unk_1DD87AA30);
    return 0;
  }

  v12 = sub_1DD875110();
  v13 = [v11 objectForKey_];

  if (v13)
  {
    sub_1DD8755F0();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v38 = v40;
  v39 = v41;
  if (!*(&v41 + 1))
  {
    goto LABEL_9;
  }

  sub_1DD730C48(&v38, &v40);
  sub_1DD710A9C(&qword_1ECD0E840, &unk_1DD87A840);
  if (swift_dynamicCastMetatype())
  {
    v14 = sub_1DD875110();
    v15 = [v11 BOOLForKey_];

    sub_1DD6E1EC8(&v40);
    LOBYTE(v38) = v15;
    v16 = qword_1ECD0E860;
    v17 = &unk_1DD87A860;
    goto LABEL_14;
  }

  if (swift_dynamicCastMetatype())
  {
    v19 = sub_1DD875110();
    v20 = [v11 integerForKey_];

    sub_1DD6E1EC8(&v40);
    *&v38 = v20;
    BYTE8(v38) = 0;
    v16 = &qword_1ECD0E858;
    v17 = &qword_1DD88A080;
    goto LABEL_14;
  }

  if (swift_dynamicCastMetatype())
  {
    v21 = sub_1DD875110();
    [v11 floatForKey_];
    v23 = v22;

    sub_1DD6E1EC8(&v40);
    LODWORD(v38) = v23;
    BYTE4(v38) = 0;
    v16 = &qword_1ECD0E850;
    v17 = &unk_1DD87A850;
    goto LABEL_14;
  }

  if (!swift_dynamicCastMetatype())
  {
    v27 = sub_1DD874740();
    if (swift_dynamicCastMetatype())
    {
      v28 = sub_1DD875110();
      v29 = [v11 URLForKey_];

      if (v29)
      {
        sub_1DD874700();

        v30 = 0;
      }

      else
      {
        v30 = 1;
      }

      sub_1DD6E1EC8(&v40);
      sub_1DD6E5E68(v7, v30, 1, v27);
      sub_1DD6FB7B4(v7, v10);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v36 = 0;
        v37 = 0;
      }

      return v36;
    }

    if (!swift_dynamicCastMetatype())
    {
      sub_1DD730C48(&v40, &v38);
LABEL_15:
      if ((swift_dynamicCast() & 1) == 0)
      {
        v36 = 0;
        v37 = 0;
      }

      return v36;
    }

    v31 = sub_1DD875110();
    v32 = [v11 stringForKey_];

    if (v32)
    {
      v33 = sub_1DD875140();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    sub_1DD6E1EC8(&v40);
    *&v38 = v33;
    *(&v38 + 1) = v35;
    v16 = &qword_1ECD0E848;
    v17 = &qword_1DD87A870;
LABEL_14:
    sub_1DD710A9C(v16, v17);
    goto LABEL_15;
  }

  v24 = sub_1DD875110();
  [v11 doubleForKey_];
  v26 = v25;

  sub_1DD6E1EC8(&v40);
  v36 = v26;
  v37 = 0;
  return v36;
}

uint64_t sub_1DD730620(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1DD710A9C(a3, a4);
  sub_1DD6E0540(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1DD730688()
{
  result = qword_1ECD0E820;
  if (!qword_1ECD0E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0E820);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Preferences(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1DD7307D0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 1944))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD730810(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1944) = 1;
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

    *(result + 1944) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}
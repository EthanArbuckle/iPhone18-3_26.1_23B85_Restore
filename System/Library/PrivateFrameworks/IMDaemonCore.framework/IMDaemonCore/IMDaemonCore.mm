uint64_t sub_22B4CF8C8()
{
  if (qword_28141F3C8 != -1)
  {
    swift_once();
  }

  v1 = sub_22B7DB2B8();
  sub_22B4CFA74(v1, qword_281422698);
  v2 = v0;
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBC78();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_22B4CFAAC(*&v2[OBJC_IVAR___IMDIncomingClientConnectionListener_machServiceName], *&v2[OBJC_IVAR___IMDIncomingClientConnectionListener_machServiceName + 8], &v10);
    _os_log_impl(&dword_22B4CC000, v3, v4, "Incoming XPC connection for %s", v5, 0xCu);
    sub_22B4CFB78(v6);
    MEMORY[0x231898D60](v6, -1, -1);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  v7 = *&v2[OBJC_IVAR___IMDIncomingClientConnectionListener_queue];
  MEMORY[0x28223BE20](v8);
  sub_22B7DACB8();
  return v11;
}

uint64_t sub_22B4CFA74(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_22B4CFAAC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22B4D1A34(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_22B4D1F68(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_22B4CFB78(v11);
  return v7;
}

uint64_t sub_22B4CFB78(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_22B4CFBC4(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  if (sub_22B4CFDA4(a3))
  {
    sub_22B4D01E8(a3, a1);
    v8 = 1;
  }

  else
  {
    if (qword_28141F3C8 != -1)
    {
      swift_once();
    }

    v9 = sub_22B7DB2B8();
    sub_22B4CFA74(v9, qword_281422698);
    v10 = a3;
    v11 = a2;
    v12 = sub_22B7DB298();
    v13 = sub_22B7DBC98();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 67109378;
      *(v14 + 4) = [v10 processIdentifier];

      *(v14 + 8) = 2080;
      v16 = MEMORY[0x2318952A0](*&v11[OBJC_IVAR___IMDIncomingClientConnectionListener_allowedEntitlements], MEMORY[0x277D837D0]);
      v18 = sub_22B4CFAAC(v16, v17, &v19);

      *(v14 + 10) = v18;
      _os_log_impl(&dword_22B4CC000, v12, v13, "Client %d does not have any of allowed entitlements %s, invalidating connection", v14, 0x12u);
      sub_22B4CFB78(v15);
      MEMORY[0x231898D60](v15, -1, -1);
      MEMORY[0x231898D60](v14, -1, -1);
    }

    else
    {
    }

    v8 = 0;
  }

  *a4 = v8;
}

uint64_t sub_22B4CFDA4(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___IMDIncomingClientConnectionListener_allowedEntitlements);
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = 0;
    for (i = (v2 + 40); ; i += 2)
    {
      if (v5 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      v8 = *(i - 1);
      v7 = *i;

      v9 = sub_22B7DB678();
      v10 = [a1 valueForEntitlement_];

      if (v10)
      {
        sub_22B7DC118();
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = 0u;
        v25 = 0u;
      }

      v26[0] = v24;
      v26[1] = v25;
      if (*(&v25 + 1))
      {
        sub_22B4D01A0(0, &qword_28141EFE0, 0x277CCABB0);
        if (swift_dynamicCast())
        {
          if ([v23 BOOLValue])
          {
            if (qword_28141F3C8 != -1)
            {
              swift_once();
            }

            v16 = sub_22B7DB2B8();
            sub_22B4CFA74(v16, qword_281422698);

            v17 = a1;
            v18 = sub_22B7DB298();
            v19 = sub_22B7DBC78();

            if (os_log_type_enabled(v18, v19))
            {
              v20 = swift_slowAlloc();
              v21 = swift_slowAlloc();
              *&v26[0] = v21;
              *v20 = 67109378;
              *(v20 + 4) = [v17 processIdentifier];

              *(v20 + 8) = 2080;
              v22 = sub_22B4CFAAC(v8, v7, v26);

              *(v20 + 10) = v22;
              _os_log_impl(&dword_22B4CC000, v18, v19, "Client %d has entitlement %s", v20, 0x12u);
              sub_22B4CFB78(v21);
              MEMORY[0x231898D60](v21, -1, -1);
              MEMORY[0x231898D60](v20, -1, -1);
            }

            else
            {
            }

            return 1;
          }
        }
      }

      else
      {

        sub_22B4D0138(v26);
      }

      if (v3 == ++v5)
      {
        return 0;
      }
    }
  }

  if (qword_28141F3C8 != -1)
  {
LABEL_26:
    swift_once();
  }

  v12 = sub_22B7DB2B8();
  sub_22B4CFA74(v12, qword_281422698);
  v13 = sub_22B7DB298();
  v14 = sub_22B7DBC78();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22B4CC000, v13, v14, "No required entitlements have been specified, allowing all clients", v15, 2u);
    MEMORY[0x231898D60](v15, -1, -1);
  }

  return 1;
}

uint64_t sub_22B4D0138(uint64_t a1)
{
  v2 = sub_22B6F0AD4(&unk_27D8CCDC0, &qword_22B7F9580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B4D01A0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_22B4D01E8(void *a1, uint64_t a2)
{
  if (qword_28141F3C8 != -1)
  {
    swift_once();
  }

  v5 = sub_22B7DB2B8();
  sub_22B4CFA74(v5, qword_281422698);
  v6 = v2;
  v7 = a1;
  v8 = sub_22B7DB298();
  v9 = sub_22B7DBC78();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_22B4CFAAC(*&v6[OBJC_IVAR___IMDIncomingClientConnectionListener_machServiceName], *&v6[OBJC_IVAR___IMDIncomingClientConnectionListener_machServiceName + 8], &aBlock);
    *(v10 + 12) = 1024;
    *(v10 + 14) = [v7 processIdentifier];

    _os_log_impl(&dword_22B4CC000, v8, v9, "Configuring XPC connection for %s from PID %d", v10, 0x12u);
    sub_22B4CFB78(v11);
    MEMORY[0x231898D60](v11, -1, -1);
    MEMORY[0x231898D60](v10, -1, -1);
  }

  else
  {
  }

  type metadata accessor for XPCClientConnectionRouteProvider();
  swift_allocObject();
  v12 = v7;
  v13 = sub_22B4D084C(v12);

  v14 = *&v6[OBJC_IVAR___IMDIncomingClientConnectionListener_requestHandlers];
  v15 = *(a2 + 16);

  v16 = sub_22B4D0D08(v13, 0, v14, v15);

  [v12 _setQueue_];
  sub_22B4D01A0(0, &qword_28141F278, 0x277CCAE90);
  v17 = sub_22B7DBCD8();
  [v12 setExportedInterface_];

  v18 = IMGetDaemonProtocol();
  v19 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  v40 = sub_22B4D1588;
  v41 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_22B4D1BA8;
  v39 = &unk_283F1CC38;
  v20 = _Block_copy(&aBlock);

  v21 = [v19 initWithProtocol:v18 forwardingHandler:v20];

  _Block_release(v20);

  [v12 setExportedObject_];

  v22 = sub_22B7DBCE8();
  [v12 setRemoteObjectInterface_];

  v23 = swift_allocObject();
  *(v23 + 16) = v12;
  v40 = sub_22B720E6C;
  v41 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_22B4D22C0;
  v39 = &unk_283F1CC88;
  v24 = _Block_copy(&aBlock);
  v25 = v12;

  [v25 setInterruptionHandler_];
  _Block_release(v24);
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = v16;
  v26[4] = v6;
  v40 = sub_22B720E74;
  v41 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_22B4D22C0;
  v39 = &unk_283F1CCD8;
  v27 = _Block_copy(&aBlock);
  v28 = v6;
  v29 = v25;

  [v29 setInvalidationHandler_];
  _Block_release(v27);

  MEMORY[0x231895260](v30);
  if (*((*(a2 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v35 = *((*(a2 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22B7DB938();
  }

  sub_22B7DB968();
  [v29 resume];
  v31 = v29;
  v32 = sub_22B7DB298();
  v33 = sub_22B7DBC78();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 67109120;
    *(v34 + 4) = [v31 processIdentifier];

    _os_log_impl(&dword_22B4CC000, v32, v33, "Resumed connection for PID %d", v34, 8u);
    MEMORY[0x231898D60](v34, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_22B4D07CC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4D0804()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B4D084C(void *a1)
{
  v3 = *(*(sub_22B7DBD48() - 8) + 64);
  MEMORY[0x28223BE20]();
  v4 = *(*(sub_22B7DBD38() - 8) + 64);
  MEMORY[0x28223BE20]();
  v5 = *(*(sub_22B7DB398() - 8) + 64);
  MEMORY[0x28223BE20]();
  sub_22B6F0AD4(&qword_27D8CD8A8, qword_22B7F9DA8);
  v6 = a1;
  sub_22B7DACD8();
  sub_22B7DACE8();
  MEMORY[0x231894670](&type metadata for XPCClientConnectionRouteProvider.State);
  *(v1 + 16) = sub_22B7DACC8();
  return v1;
}

uint64_t sub_22B4D0A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v25 = a4;
  v26 = a3;
  v11 = *(*(sub_22B7DBD48() - 8) + 64);
  MEMORY[0x28223BE20]();
  v12 = *(*(sub_22B7DBD38() - 8) + 64);
  MEMORY[0x28223BE20]();
  v13 = *(*(sub_22B7DB398() - 8) + 64);
  MEMORY[0x28223BE20]();
  v14 = sub_22B7DA9A8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20]();
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[3] = a5(0);
  v37[4] = a6;
  v37[0] = a1;
  type metadata accessor for ClientConnection();
  v19 = swift_allocObject();
  sub_22B4D0DE8(v37, v31);
  sub_22B7DA998();
  v20 = sub_22B7DA978();
  v22 = v21;
  (*(v15 + 8))(v18, v14);
  v32 = a2;
  v33 = v20;
  v34 = v22;
  v35 = v25;
  v36 = MEMORY[0x277D84F90];
  sub_22B6F0AD4(&qword_27D8CEC08, &qword_22B7FB430);
  sub_22B4D0E4C(v31, v30);
  sub_22B7DACD8();
  sub_22B7DACE8();
  MEMORY[0x231894670](&type metadata for ClientConnection.State);
  *(v19 + 16) = sub_22B7DACC8();
  v28 = v26;
  v29 = v19;
  sub_22B7DACB8();
  sub_22B4D1FC4(v31);
  sub_22B4CFB78(v37);
  return v19;
}

void *sub_22B4D0D3C(void *a1, int64_t a2, char a3)
{
  result = sub_22B4D0FD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22B4D0D64(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_22B6F0AD4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22B4D0DE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 sub_22B4D0EA8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_22B4D0EC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v18 = MEMORY[0x277D84F90];
    sub_22B4D0D3C(0, v3, 0);
    v4 = v18;
    v6 = (a2 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v9 = *(*v6 + 40);

      v11 = v9(v10, v7, v8);
      v19 = v4;
      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      if (v13 >= v12 >> 1)
      {
        v15 = v11;
        sub_22B4D0D3C((v12 > 1), v13 + 1, 1);
        v11 = v15;
        v4 = v19;
      }

      *(v4 + 16) = v13 + 1;
      v14 = v4 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v8;
      v6 += 2;
      --v3;
    }

    while (v3);
  }

  v16 = *(a1 + 72);

  *(a1 + 72) = v4;
  return result;
}

void *sub_22B4D0FD8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22B6F0AD4(&qword_27D8CF930, &qword_22B7FD668);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22B6F0AD4(&qword_27D8CF938, &qword_22B7FD670);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22B4D1110(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22B6FB8C4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22B4D1164(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B4D11AC(unint64_t *a1, void (*a2)(uint64_t))
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

void IMDSynchronouslyPerformBlockOnMainQueueWithDependency(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x277D85CD0];
  dispatch_assert_queue_not_V2(MEMORY[0x277D85CD0]);
  v7[0] = 0;
  v7[1] = 0;
  pthread_main_thread_np();
  pthread_dependency_init_np();
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22B4D2278;
  v4[3] = &unk_278707398;
  v5 = v1;
  v6 = v7;
  v3 = v1;
  dispatch_async(v2, v4);

  pthread_dependency_wait_np();
}

uint64_t sub_22B4D1660(id *a1)
{
  v1 = [*a1 remoteObjectProxy];
  sub_22B7DC118();
  swift_unknownObjectRelease();
  sub_22B6F0AD4(&qword_27D8CD8A0, &unk_22B7F9D98);
  return swift_dynamicCast();
}

uint64_t sub_22B4D1700(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  result = a3[2](a2, a3);
  v5 = result;
  v6 = (result + 40);
  v7 = -*(result + 16);
  v8 = -1;
  while (v7 + v8 != -1)
  {
    if (++v8 >= *(v5 + 16))
    {
      __break(1u);
      return result;
    }

    v9 = v6 + 2;
    v10 = *(v6 - 1);
    v11 = *v6;
    v12 = a3[4];

    v13 = v12(a2, a3);
    v14 = *(v13 + 16);
    MEMORY[0x28223BE20](v13);
    sub_22B7DACB8();

    v6 = v9;
    if ((v18 & 1) == 0)
    {

      return 0;
    }
  }

  v15 = a3[1];
  return (v15(a2, a3) & ~a1) == 0 || ((v15(a2, a3) & 0xFFFFFFFFFBFFFFFBLL | 0x4000000) & ~a1) == 0;
}

uint64_t sub_22B4D18B8(uint64_t a1, unint64_t a2)
{
  v4 = sub_22B4D1904(a1, a2);
  sub_22B4D1E7C(&unk_283F1B5A8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22B4D1904(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_22B4D1E08(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_22B7DC328();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_22B7DB7E8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22B4D1E08(v10, 0);
        result = sub_22B7DC2A8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_22B4D1A34(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_22B4D18B8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_22B7DC328();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_22B4D1B40()
{
  v1 = *(*v0 + 16);
  sub_22B6F0AD4(&qword_27D8CD8A0, &unk_22B7F9D98);
  sub_22B7DACB8();
  return v3;
}

uint64_t sub_22B4D1BA8(uint64_t a1, uint64_t a2, void *aBlock)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;

  v5(a2, sub_22B4D30EC, v7);
}

uint64_t sub_22B4D1C4C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_22B4D1C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [objc_opt_self() currentConnection];
  if (v7)
  {
    v8 = v7;
    [v7 auditToken];
    v11 = v14;
    v12 = aBlock;
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = a1;
  *(v9 + 32) = v12;
  *(v9 + 48) = v11;
  *(v9 + 64) = a2;
  *(v9 + 72) = a3;
  v15 = sub_22B4D2304;
  v16 = v9;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v14 = sub_22B4D22C0;
  *(&v14 + 1) = &unk_283F20A60;
  v10 = _Block_copy(&aBlock);

  IMDSynchronouslyPerformBlockOnMainQueueWithDependency(v10);
  _Block_release(v10);
}

uint64_t sub_22B4D1DC8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

void *sub_22B4D1E08(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22B6F0AD4(&qword_27D8CD680, &unk_22B7F9780);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_22B4D1E7C(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_22B7024C0(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22B4D1F68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22B4D2018(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2028(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2038(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2048(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2058(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2068(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2098(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D20A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D20B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D20C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D20D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D20F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2118(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2148(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2178(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2198(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D21A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D21B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D21C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D21D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D21F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2208(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2218(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2228(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2238(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2248(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2258(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B4D2278(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  return MEMORY[0x282204D30](v2, 0);
}

uint64_t sub_22B4D22C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_22B4D2318(uint64_t a1, const char *a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, void (*a7)(unint64_t *))
{
  v11 = *(a1 + 16);
  sub_22B7DACB8();
  v13 = v63;
  v12 = v64;
  v69 = 0;
  v70 = MEMORY[0x277D84F90];
  v68 = 0;
  v14 = swift_allocObject();
  strcpy((v14 + 16), "uninitialized");
  *(v14 + 30) = -4864;
  v61 = v13;
  v62 = a2;
  sub_22B7DACB8();
  v15 = *(v70 + 16);
  if (v15)
  {
    v57 = a4;
    v58 = a5;
    v54 = HIDWORD(a4);
    v55 = HIDWORD(a3);
    v53 = HIDWORD(a5);
    swift_beginAccess();
    v16 = (v70 + 40);
    v17 = &off_278709000;
    v56 = a3;
    v18 = a2;
    v48 = v12;
    do
    {
      v19 = *(v16 - 1);
      v20 = *v16;
      ObjectType = swift_getObjectType();
      if ([swift_unknownObjectRetain() v17[438]])
      {
        v22 = v69;
        if ((*(v20 + 24))(v69, v18, ObjectType, v20))
        {
          v23 = v68;
          v24 = objc_allocWithZone(IMDClientRequestContext);
          v25 = sub_22B7DB678();
          v63 = __PAIR64__(v55, v56);
          v64 = __PAIR64__(v54, v57);
          v65 = v58;
          v66 = v53;
          v67 = a6;
          v26 = [v24 initWithListenerID:v25 auditToken:&v63 capabilities:v22 replyProxy:v23];

          v27 = objc_opt_self();
          [v27 setCurrentContext_];
          v67 = ObjectType;
          v63 = v19;
          swift_unknownObjectRetain();
          a7(&v63);
          sub_22B4CFB78(&v63);
          [v27 setCurrentContext_];
          swift_unknownObjectRelease();

          v18 = v62;
        }

        else
        {
          if (qword_28141F3C8 != -1)
          {
            swift_once();
          }

          v28 = sub_22B7DB2B8();
          sub_22B4CFA74(v28, qword_281422698);
          swift_unknownObjectRetain();

          v29 = sub_22B7DB298();
          v30 = sub_22B7DBCB8();
          swift_unknownObjectRelease();

          if (os_log_type_enabled(v29, v30))
          {
            v51 = v30;
            v31 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v63 = v52;
            *v31 = 136315906;
            log = v29;
            v32 = NSStringFromSelector(v18);
            v49 = ObjectType;
            v33 = sub_22B7DB6A8();
            v35 = v34;

            v18 = v62;
            v36 = sub_22B4CFAAC(v33, v35, &v63);

            *(v31 + 4) = v36;
            *(v31 + 12) = 2080;
            *(v31 + 14) = sub_22B4CFAAC(v61, v12, &v63);
            *(v31 + 22) = 2080;
            v37 = IMStringFromClientCapabilities();
            v38 = sub_22B7DB6A8();
            v40 = v39;

            v41 = sub_22B4CFAAC(v38, v40, &v63);

            *(v31 + 24) = v41;
            *(v31 + 32) = 2080;
            (*(v20 + 8))(v49, v20);
            v42 = IMStringFromClientCapabilities();
            v43 = sub_22B7DB6A8();
            v45 = v44;

            v46 = sub_22B4CFAAC(v43, v45, &v63);

            *(v31 + 34) = v46;
            _os_log_impl(&dword_22B4CC000, log, v51, "Rejecting %s for client %s as it has insufficient capabilities %s, needs %s", v31, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x231898D60](v52, -1, -1);
            MEMORY[0x231898D60](v31, -1, -1);
            swift_unknownObjectRelease();

            v12 = v48;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        v17 = &off_278709000;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v16 += 2;
      --v15;
    }

    while (v15);
  }

  else
  {
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_22B4D288C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4D28C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_22B4D28D0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, const char *a5, void *a6, void *a7, uint64_t *a8)
{
  v14 = a1[3];
  v15 = a1[4];
  sub_22B4D2BCC(a1, v14);
  v16 = (*(v15 + 8))(v14, v15);
  v18 = v17;
  swift_beginAccess();
  v19 = *(a2 + 24);
  *(a2 + 16) = v16;
  *(a2 + 24) = v18;

  if (qword_28141F3C8 != -1)
  {
    swift_once();
  }

  v20 = sub_22B7DB2B8();
  sub_22B4CFA74(v20, qword_281422698);

  v21 = sub_22B7DB298();
  v22 = sub_22B7DBC78();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v45 = v24;
    *v23 = 136315650;
    swift_beginAccess();
    v42 = a6;
    v25 = a8;
    v26 = a7;
    v27 = *(a2 + 16);
    v28 = *(a2 + 24);

    v29 = sub_22B4CFAAC(v27, v28, &v45);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_22B4CFAAC(a3, a4, &v45);
    *(v23 + 22) = 2080;
    v30 = NSStringFromSelector(a5);
    v31 = sub_22B7DB6A8();
    v33 = v32;

    v34 = v31;
    a7 = v26;
    a8 = v25;
    a6 = v42;
    v35 = sub_22B4CFAAC(v34, v33, &v45);

    *(v23 + 24) = v35;
    _os_log_impl(&dword_22B4CC000, v21, v22, "Receiving message from client with route: %s id: %s selector: %s", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v24, -1, -1);
    MEMORY[0x231898D60](v23, -1, -1);
  }

  v36 = *a6;
  *a6 = a1[9];

  *a7 = a1[5];
  v37 = a1[3];
  v38 = a1[4];
  sub_22B4D2BCC(a1, v37);
  v39 = (*(v38 + 24))(v37, v38);
  v40 = *a8;
  *a8 = v39;
  return swift_unknownObjectRelease();
}

void *sub_22B4D2BCC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22B4D2C10()
{
  v1 = *(*v0 + 16);
  sub_22B7DACB8();
  v2 = sub_22B7DC4E8();
  MEMORY[0x231895140](v2);

  return 0x203A444950;
}

id sub_22B4D2CA8@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 processIdentifier];
  *a2 = result;
  return result;
}

uint64_t sub_22B4D2DD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[7];

  a1[6] = a2;
  a1[7] = a3;
  a1[5] = a4;
  v11 = a1[8];
  if (a5)
  {
    v12 = a5;
  }

  else
  {

    v12 = v11;
  }

  a1[8] = v12;
  return result;
}

uint64_t sub_22B4D308C(void *a1, uint64_t a2)
{
  sub_22B4D2BCC(a1, a1[3]);
  v3 = sub_22B7DC508();
  (*(a2 + 16))(a2, v3);

  return swift_unknownObjectRelease();
}

void sub_22B4D3F24(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) serializedRepresentation];
  v3 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = v2;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "broadcasting sync state changed event: %@", &v14, 0xCu);
  }

  v4 = *MEMORY[0x277D19C58];
  v5 = [v2 objectForKey:*MEMORY[0x277D19C58]];

  v6 = [*(a1 + 32) logHandle];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v8 = [v2 objectForKey:v4];
      [v8 unsignedIntValue];
      v9 = IMStringFromIMCloudKitSyncJobState();
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "broadcasting sync job state: %@", &v14, 0xCu);
    }
  }

  else if (v7)
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "broadcasting sync job state: nil", &v14, 2u);
  }

  v10 = +[IMDBroadcastController sharedProvider];
  v11 = [v10 broadcasterForCloudSyncListeners];
  [v11 updateCloudKitStateWithDictionary:v2];

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 __mainThreadPostNotificationName:@"com.apple.IMCore.IMCloudKitHooks.ValuesChanged" object:0];

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22B4D44F0(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "fetchCloudKitAccountStatusAndCheckForAccountNeedsRepairWithCompletion failed with error: %@", &v9, 0xCu);
    }
  }

  v6 = [*(a1 + 32) syncState];
  [v6 _startBatchChange];
  [*(a1 + 32) syncStateWillUpdate:v6];
  [v6 _finishBatchChange];
  v7 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_22B7CF80C(v6);
  }

  [v6 broadcastSyncState];
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B4D5B98(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = IMGetDaemonListenerProtocol();
  v8 = swift_allocObject();
  v8[1].n128_u64[0] = 0;
  v8[1].n128_u64[1] = v4;
  v8[2] = a1;
  v9 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  aBlock[4] = a3;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D1BA8;
  aBlock[3] = a4;
  v10 = _Block_copy(aBlock);
  v11 = v4;
  [v9 initWithProtocol:v7 forwardingHandler:v10];

  _Block_release(v10);

  return swift_dynamicCastObjCProtocolUnconditional();
}

uint64_t sub_22B4D5CC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_22B4D5CE8(const char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v57 = a6;
  v58 = a7;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v59 = v11;
  if (!a4)
  {

    v56 = 0;
    v60 = 0;
    goto LABEL_10;
  }

  v12 = [a4 internalName];
  v56 = sub_22B7DB6A8();
  v60 = v13;

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  v16 = a4;
  if (![v15 isSubService])
  {

    goto LABEL_10;
  }

  v17 = [v15 demandsBroadcasting];

  if (v17)
  {
LABEL_10:
    sub_22B4D6328();
    v20 = v19;
    v61 = MEMORY[0x277D84F90];
    if (v19 >> 62)
    {
      goto LABEL_43;
    }

    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:
    v22 = MEMORY[0x277D84F90];
    if (v21)
    {
      v55 = a1;
      v23 = 0;
      while (1)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x231895C80](v23, v20);
          v24 = v25;
          v26 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            v29 = v61;
            a1 = v55;
            v22 = MEMORY[0x277D84F90];
            goto LABEL_26;
          }
        }

        else
        {
          if (v23 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_43:
            v21 = sub_22B7DC1C8();
            goto LABEL_12;
          }

          v24 = *(v20 + 8 * v23 + 32);

          v26 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_23;
          }
        }

        a1 = &v55;
        v27 = MEMORY[0x28223BE20](v25);
        v28 = *(v24 + 16);
        MEMORY[0x28223BE20](v27);
        sub_22B7DACB8();
        if (v64)
        {
          sub_22B7DC358();
          a1 = *(v61 + 16);
          sub_22B7DC398();
          sub_22B7DC3A8();
          sub_22B7DC368();
        }

        else
        {
        }

        ++v23;
        if (v26 == v21)
        {
          goto LABEL_24;
        }
      }
    }

    v29 = MEMORY[0x277D84F90];
LABEL_26:

    if (qword_28141F3C8 != -1)
    {
      swift_once();
    }

    v30 = sub_22B7DB2B8();
    sub_22B4CFA74(v30, qword_281422698);

    v31 = sub_22B7DB298();
    v32 = sub_22B7DBC88();

    if (!os_log_type_enabled(v31, v32))
    {

LABEL_47:
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v64 = v34;
    *v33 = 136315394;
    v35 = NSStringFromSelector(a1);
    v36 = sub_22B7DB6A8();
    v38 = v37;

    v39 = sub_22B4CFAAC(v36, v38, &v64);

    *(v33 + 4) = v39;
    *(v33 + 12) = 2080;
    if (v29 < 0 || (v29 & 0x4000000000000000) != 0)
    {
      v40 = sub_22B7DC1C8();
      v60 = v34;
      if (v40)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v40 = *(v29 + 16);
      v60 = v34;
      if (v40)
      {
LABEL_32:
        v63 = v22;
        result = sub_22B7AB6B4(0, v40 & ~(v40 >> 63), 0);
        if (v40 < 0)
        {
          __break(1u);
          return result;
        }

        LODWORD(v56) = v32;
        v57 = v33;
        v58 = v31;
        v41 = 0;
        v42 = v63;
        do
        {
          if ((v29 & 0xC000000000000001) != 0)
          {
            v43 = MEMORY[0x231895C80](v41, v29);
          }

          else
          {
            v43 = *(v29 + 8 * v41 + 32);
          }

          v44 = *(v43 + 16);
          sub_22B7DACB8();

          v45 = v61;
          v46 = v62;
          v63 = v42;
          v48 = *(v42 + 16);
          v47 = *(v42 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_22B7AB6B4((v47 > 1), v48 + 1, 1);
            v42 = v63;
          }

          ++v41;
          *(v42 + 16) = v48 + 1;
          v49 = v42 + 16 * v48;
          *(v49 + 32) = v45;
          *(v49 + 40) = v46;
        }

        while (v40 != v41);

        v33 = v57;
        v31 = v58;
        LOBYTE(v32) = v56;
        goto LABEL_46;
      }
    }

    v42 = MEMORY[0x277D84F90];
LABEL_46:
    v50 = MEMORY[0x2318952A0](v42, MEMORY[0x277D837D0]);
    v52 = v51;

    v53 = sub_22B4CFAAC(v50, v52, &v64);

    *(v33 + 14) = v53;
    _os_log_impl(&dword_22B4CC000, v31, v32, "Broadcasting %s to: %s", v33, 0x16u);
    v54 = v60;
    swift_arrayDestroy();
    MEMORY[0x231898D60](v54, -1, -1);
    MEMORY[0x231898D60](v33, -1, -1);
    goto LABEL_47;
  }
}

uint64_t sub_22B4D62EC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_22B4D6328()
{
  v1 = *(v0 + OBJC_IVAR___IMDClientConnectionManager_connectionListeners);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return;
  }

  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  v37 = v1 + 32;
  v35 = *(v1 + 16);
  v36 = *(v0 + OBJC_IVAR___IMDClientConnectionManager_connectionListeners);
  while (v3 < *(v1 + 16))
  {
    v5 = (v37 + 16 * v3);
    v6 = *v5;
    v7 = v5[1];
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 8);
    swift_unknownObjectRetain();
    v10 = v9(ObjectType, v7);
    v11 = v10;
    v12 = v10 >> 62;
    if (v10 >> 62)
    {
      v13 = sub_22B7DC1C8();
    }

    else
    {
      v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v4 >> 62;
    if (v4 >> 62)
    {
      v34 = sub_22B7DC1C8();
      v16 = v34 + v13;
      if (__OFADD__(v34, v13))
      {
LABEL_36:
        __break(1u);
        return;
      }
    }

    else
    {
      v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = v15 + v13;
      if (__OFADD__(v15, v13))
      {
        goto LABEL_36;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v14)
      {
        goto LABEL_17;
      }

      v17 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v16 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = v13;
        v39 = v4;
        goto LABEL_19;
      }
    }

    else
    {
      if (v14)
      {
LABEL_17:
        sub_22B7DC1C8();
        goto LABEL_18;
      }

      v17 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    v19 = *(v17 + 16);
LABEL_18:
    v18 = v13;
    v39 = sub_22B7DC318();
    v17 = v39 & 0xFFFFFFFFFFFFFF8;
LABEL_19:
    v20 = *(v17 + 16);
    v21 = *(v17 + 24);
    if (v12)
    {
      v23 = v17;
      v24 = sub_22B7DC1C8();
      v17 = v23;
      v22 = v24;
      if (!v24)
      {
LABEL_3:

        swift_unknownObjectRelease();
        v4 = v39;
        if (v18 > 0)
        {
          goto LABEL_39;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v22 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        goto LABEL_3;
      }
    }

    if (((v21 >> 1) - v20) < v18)
    {
      goto LABEL_40;
    }

    v38 = v17;
    v25 = v17 + 8 * v20 + 32;
    if (v12)
    {
      if (v22 < 1)
      {
        goto LABEL_42;
      }

      sub_22B7B6B8C();
      for (i = 0; i != v22; ++i)
      {
        sub_22B6F0AD4(&unk_27D8CDC20, &unk_22B7FA438);
        v28 = sub_22B7B6B04(v40, i, v11);
        v30 = *v29;

        (v28)(v40, 0);
        *(v25 + 8 * i) = v30;
      }

      swift_unknownObjectRelease();

      v2 = v35;
      v1 = v36;
      v26 = v18;
    }

    else
    {
      type metadata accessor for ClientConnection();
      v26 = v18;
      swift_arrayInitWithCopy();

      swift_unknownObjectRelease();
    }

    v4 = v39;
    if (v26 > 0)
    {
      v31 = *(v38 + 16);
      v32 = __OFADD__(v31, v26);
      v33 = v31 + v26;
      if (v32)
      {
        goto LABEL_41;
      }

      *(v38 + 16) = v33;
    }

LABEL_4:
    if (++v3 == v2)
    {
      return;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t sub_22B4D6650(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(v4 + OBJC_IVAR___IMDIncomingClientConnectionListener_queue);
  sub_22B6F0AD4(a3, a4);
  sub_22B7DACB8();
  return v7;
}

uint64_t sub_22B4D672C()
{
  v1 = v0;
  sub_22B7DAFF8();
  if ((sub_22B7DAFE8() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22B6F0AD4(&unk_27D8CD970, &qword_22B7FB330);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22B7F9620;
  *(v2 + 32) = *(v1 + 128);

  return v2;
}

uint64_t sub_22B4D67AC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 64);
  return sub_22B4D67C0(a1, *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), a2);
}

uint64_t sub_22B4D67C0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void (*a6)(uint64_t *)@<X6>, char *a7@<X8>)
{
  v10 = result;
  if (!a3 || (result = sub_22B4D90D4(a2, a3, *(result + 64)), (result)) && ((v12 = v10[5], v13 = a4 & ~v12, v14 = v12 & a5, !v13) ? (v15 = v14 == 0) : (v15 = 0), v15))
  {
    v17 = v10[3];
    v18 = v10[4];
    sub_22B4D2BCC(v10, v17);
    v19 = (*(v18 + 24))(v17, v18);
    v20[3] = swift_getObjectType();
    v20[0] = v19;
    a6(v20);
    result = sub_22B4CFB78(v20);
    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  *a7 = v16;
  return result;
}

uint64_t sub_22B4D693C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_22B4D7610(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7620(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7630(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7640(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7650(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7660(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7670(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7680(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7690(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D76B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D76C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D76D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D76E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D76F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7700(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7710(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7720(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7730(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7740(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7770(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7780(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7790(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D77A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D77B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D77C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D77D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D77F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7800(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7810(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7820(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7830(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7840(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7850(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22B4D7BA0()
{
  v1 = *(v0 + OBJC_IVAR___IMDKeyTransparencyController_state);
  swift_getKeyPath();

  os_unfair_lock_lock((v1 + 20));
  sub_22B4D7CC4((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 20));

  v2 = v4;

  return v2;
}

uint64_t sub_22B4D7C50@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  if (a1[1])
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  result = v4(v6 | *a1);
  *a2 = result & 1;
  return result;
}

unint64_t sub_22B4D7D1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B6F0AD4(&unk_27D8CDBE0, &qword_22B7FD3E0);
    v3 = sub_22B7DC488();
    v4 = a1 + 32;

    while (1)
    {
      sub_22B4D7E58(v4, v13, &unk_27D8CD7D0, &qword_22B7FA3F0);
      result = sub_22B4D7EC0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_22B4D7F04(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_22B4D7E58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22B6F0AD4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_22B4D7EC0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22B7DC228();

  return sub_22B4D7F14(a1, v5);
}

_OWORD *sub_22B4D7F04(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_22B4D7F14(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22B4DA0DC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x231895BB0](v9, a1);
      sub_22B4DA138(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_22B4D7FDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_22B4D8004()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_22B4D8130(uint64_t a1, void *a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Clear failure badge notification", v5, 2u);
    }
  }

  [a2 clearFailureBadge];
  return [a2 checkIfUnexpectedlyLoggedOut];
}

uint64_t ClientConnectionManager.broadcasterForAllListeners.getter()
{
  v1 = IMGetDaemonListenerProtocol();
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = v0;
  v2[4] = 0;
  v2[5] = 0;
  v3 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  aBlock[4] = sub_22B4D5CD8;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D1BA8;
  aBlock[3] = &unk_283F1FD58;
  v4 = _Block_copy(aBlock);
  v5 = v0;
  [v3 initWithProtocol:v1 forwardingHandler:v4];

  _Block_release(v4);

  return swift_dynamicCastObjCProtocolUnconditional();
}

uint64_t sub_22B4D8E24()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B4D90D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_22B7DC668();
  sub_22B7DB758();
  v7 = sub_22B7DC6B8();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_22B7DC518() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_22B4D9894(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_28141F430 != -1)
  {
    swift_once();
  }

  v4 = sub_22B7DB2B8();
  sub_22B4CFA74(v4, qword_281422710);
  v5 = sub_22B7DB298();
  v6 = sub_22B7DBCB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B4CC000, v5, v6, "FSEventStreamCallback invoked", v7, 2u);
    MEMORY[0x231898D60](v7, -1, -1);
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v8 = a3;
    sub_22B7DB908();
  }
}

void sub_22B4D9B9C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v3 = [objc_opt_self() defaultCenter];
    if (qword_28141F1E8 != -1)
    {
      swift_once();
    }

    v4 = qword_281422600;
    sub_22B6F0AD4(&unk_27D8CE9F0, &qword_22B7F98C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22B7F93B0;
    sub_22B7DC248();
    *(inited + 96) = sub_22B6F0AD4(&qword_27D8CE540, &qword_22B7FA518);
    *(inited + 72) = a1;

    sub_22B4D7D1C(inited);
    swift_setDeallocating();
    sub_22B4D9D48(inited + 32);
    v6 = sub_22B7DB568();

    [v3 postNotificationName:v4 object:0 userInfo:{v6, 0x6E657645656C6966, 0xEA00000000007374}];
  }
}

uint64_t sub_22B4D9D48(uint64_t a1)
{
  v2 = sub_22B6F0AD4(&unk_27D8CD7D0, &qword_22B7FA3F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22B4D9E98()
{
  if (qword_28141F3D0 != -1)
  {
    swift_once();
  }

  v0 = sub_22B7DB2B8();
  sub_22B4CFA74(v0, qword_2814226B0);
  v1 = sub_22B7DB298();
  v2 = sub_22B7DBCB8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22B4CC000, v1, v2, "Received notification", v3, 2u);
    MEMORY[0x231898D60](v3, -1, -1);
  }

  v4 = sub_22B7DA678();
  if (v4)
  {
    v5 = v4;
    sub_22B7DC248();
    if (*(v5 + 16) && (v6 = sub_22B4D7EC0(v11), (v7 & 1) != 0))
    {
      sub_22B4D1F68(*(v5 + 56) + 32 * v6, v12);
      sub_22B4DA138(v11);

      sub_22B6F0AD4(&qword_27D8CE540, &qword_22B7FA518);
      if (swift_dynamicCast())
      {
        sub_22B4DA18C(0x6E657645656C6966);

        return;
      }
    }

    else
    {

      sub_22B4DA138(v11);
    }
  }

  v8 = sub_22B7DB298();
  v9 = sub_22B7DBCB8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22B4CC000, v8, v9, "Received notification but no file events present", v10, 2u);
    MEMORY[0x231898D60](v10, -1, -1);
  }
}

uint64_t sub_22B4DA18C(uint64_t a1)
{
  v3 = sub_22B7DB398();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B7DB348();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + OBJC_IVAR___IMDFilePurgeabilityMonitor_purgeabilityQueue);
  sub_22B7DB338();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = v14;
  aBlock[4] = sub_22B4DA46C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1CE08;
  v16 = _Block_copy(aBlock);

  sub_22B7DACD8();
  MEMORY[0x2318956F0](0, v7, v12, v16);
  _Block_release(v16);
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

uint64_t sub_22B4DA3F4()
{
  MEMORY[0x231898E50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DA42C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_22B4DA474(uint64_t a1)
{
  if (qword_28141F3D0 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_2814226B0);

  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(a1 + 16);

    _os_log_impl(&dword_22B4CC000, v3, v4, "Processing %ld file events", v5, 0xCu);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = *(a1 + 16);
  if (!v7)
  {

    return;
  }

  v73 = Strong;
  v8 = (a1 + 56);
  while (1)
  {
    v9 = *(v8 - 4);
    if ((v9 & 0x20000) != 0)
    {
      goto LABEL_11;
    }

    v11 = *(v8 - 1);
    v10 = *v8;
    v12 = qword_28141F0F8;

    if (v12 != -1)
    {
      swift_once();
    }

    v82 = dword_28141F100 & v9;
    if ((~(dword_28141F100 & v9) & 0x300) == 0 || (dword_28141F100 & v9 & 0x401000) == 0)
    {

      return;
    }

    if ((dword_28141F100 & v9 & 0x200) != 0)
    {

      goto LABEL_54;
    }

    LODWORD(v80[0]) = dword_28141F100 & v9;
    v14 = sub_22B723C5C(v80);
    v16 = v15;
    v17 = sub_22B723D3C(v11, v10);
    v18 = sub_22B7CEBB0();
    if (!v19)
    {
      v41 = v17;

      v42 = sub_22B7DB298();
      v43 = sub_22B7DBC98();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v80[0] = v45;
        *v44 = 136315650;
        v46 = sub_22B4CFAAC(v14, v16, v80);

        *(v44 + 4) = v46;
        *(v44 + 12) = 1024;
        *(v44 + 14) = v41 & 1;
        *(v44 + 18) = 2080;
        v47 = sub_22B4CFAAC(v11, v10, v80);

        *(v44 + 20) = v47;
        _os_log_impl(&dword_22B4CC000, v42, v43, "File [%s], isPurgeableOnDisk? %{BOOL}d. Could not find attachment guid for filePath: %s", v44, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x231898D60](v45, -1, -1);
        MEMORY[0x231898D60](v44, -1, -1);
      }

      else
      {
      }

      goto LABEL_54;
    }

    v20 = v18;
    v21 = v19;
    v75 = v17;
    v22 = objc_opt_self();
    v23 = [v22 sharedInstance];
    if (!v23)
    {
      break;
    }

    v24 = v23;
    v25 = sub_22B7DB678();
    v26 = [v24 attachmentWithGUID_];

    if (!v26)
    {

      v48 = v73;
      v49 = sub_22B7DB298();
      v50 = sub_22B7DBC98();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v81 = v52;
        *v51 = 136315394;
        swift_beginAccess();
        v79 = v82;
        v53 = sub_22B723C5C(&v79);
        v55 = sub_22B4CFAAC(v53, v54, &v81);

        *(v51 + 4) = v55;
        *(v51 + 12) = 2080;
        v56 = sub_22B4CFAAC(v11, v10, &v81);

        *(v51 + 14) = v56;
        _os_log_impl(&dword_22B4CC000, v49, v50, "FSEvents indicates we %s for filePath %s but we didn't find attachment in attachment store!", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x231898D60](v52, -1, -1);
        MEMORY[0x231898D60](v51, -1, -1);
      }

      else
      {
      }

      return;
    }

    v27 = sub_22B7DB678();
    v28 = IMDAttachmentRecordCopyMessageForAttachmentGUID();

    if (!v28)
    {

      v57 = sub_22B7DB298();
      v58 = sub_22B7DBC98();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v61 = v20;
        v62 = v60;
        v80[0] = v60;
        *v59 = 136315138;
        v63 = sub_22B4CFAAC(v61, v21, v80);

        *(v59 + 4) = v63;
        _os_log_impl(&dword_22B4CC000, v57, v58, "Could not get IMDMessageRecordRef for attachment guid %s", v59, 0xCu);
        sub_22B4CFB78(v62);
        MEMORY[0x231898D60](v62, -1, -1);
        MEMORY[0x231898D60](v59, -1, -1);
      }

      else
      {
      }

      goto LABEL_54;
    }

    v29 = IMDCreateIMMessageItemFromIMDMessageRecordRef(v28, 0);
    if (!v29)
    {
      v64 = v28;

      goto LABEL_46;
    }

    v30 = v29;
    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (!v31)
    {
      v64 = v28;

LABEL_46:

      v65 = sub_22B7DB298();
      v66 = sub_22B7DBC98();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v69 = v20;
        v70 = v68;
        v80[0] = v68;
        *v67 = 136315138;
        v71 = sub_22B4CFAAC(v69, v21, v80);

        *(v67 + 4) = v71;
        _os_log_impl(&dword_22B4CC000, v65, v66, "Could not create IMMessageItem from IMDMessageRecordRef for attachment guid %s", v67, 0xCu);
        sub_22B4CFB78(v70);
        MEMORY[0x231898D60](v70, -1, -1);
        MEMORY[0x231898D60](v67, -1, -1);
      }

      else
      {
      }

LABEL_54:
      return;
    }

    v74 = v20;
    v76 = v28;
    v78 = v21;
    v32 = sub_22B72435C(v11, v10, v26, v31);
    v77 = v10;
    LOBYTE(v72) = BYTE1(v32) & 1;
    if ([objc_opt_self() canMarkPurgeableWithCKSyncState:objc_msgSend(v26 transferState:sel_cloudKitSyncState) isAudio:objc_msgSend(v26 isSticker:sel_transferState) isGroupPhoto:(v32 >> 24) & 1 isPluginPayload:v32 & 1 isRichLink:{HIDWORD(v32) & 1, (v32 >> 16) & 1, v72}])
    {
      if (v75)
      {
      }

      else
      {

        v33 = sub_22B7DB298();
        v34 = sub_22B7DBCB8();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v80[0] = v36;
          *v35 = 67109634;
          *(v35 + 4) = 1;
          *(v35 + 8) = 1024;
          *(v35 + 10) = 0;
          *(v35 + 14) = 2080;
          *(v35 + 16) = sub_22B4CFAAC(v11, v77, v80);
          _os_log_impl(&dword_22B4CC000, v33, v34, "Purgeability mismatch detected!\n    isPurgeableOnDatabase: %{BOOL}d\n    isPurgeableOnDisk: %{BOOL}d\n    filePath: %s", v35, 0x18u);
          sub_22B4CFB78(v36);
          v37 = v36;
          v21 = v78;
          MEMORY[0x231898D60](v37, -1, -1);
          MEMORY[0x231898D60](v35, -1, -1);
        }

        v38 = [v22 sharedInstance];
        if (!v38)
        {
          goto LABEL_57;
        }

        v39 = v38;

        v40 = sub_22B7DB678();
        [v39 markAttachmentPurgeable_];

        sub_22B7212B8(v11, v77);
        sub_22B72487C(v74, v21);
      }
    }

    else
    {
    }

LABEL_11:
    v8 += 4;
    if (!--v7)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
}

IMDChat *sub_22B4DAEE8(uint64_t a1)
{
  if (a1)
  {
    v67 = 0;
    *buf = 0;
    v65 = 0;
    v66 = 0;
    v63 = 0;
    v64 = 0;
    v61 = 0;
    v62 = 0;
    v59 = 0;
    v60 = 0;
    v57 = 0;
    v58 = 0;
    v55 = 0;
    v56 = 0;
    v53 = 0;
    v54 = 0;
    v51 = 0;
    v52 = 0;
    v49 = 0;
    v50 = 0;
    v47 = 0;
    v48 = 0;
    v45 = 0;
    v46 = 0;
    v43 = 0;
    v44 = 0;
    v42 = 0;
    _IMDChatRecordBulkCopy();
    v1 = [IMDAccountController sharedInstance:&v62];
    v2 = [(IMDAccountController *)v1 accountForAccountID:*buf];
    if (v2)
    {
      v3 = v2;

      *buf = [v3 accountID];
      v66 = [v3 loginID];
    }

    v4 = IMDChatRecordCopyHandles();
    v5 = [v4 count];
    v41 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v5];
    if (v5 >= 1)
    {
      v6 = 0;
      v7 = *MEMORY[0x277CBECE8];
      v8 = v5 & 0x7FFFFFFF;
      do
      {
        if ([v4 objectAtIndex:v6])
        {
          v9 = IMDHandleRecordCopyID();
          v10 = IMDHandleRecordCopyCountry();
          v11 = IMDHandleRecordCopyUncanonicalizedID();
          v12 = IMDHandleRecordCopyPersonCentricID();
          v13 = [[IMDHandle alloc] initWithID:v9 unformattedID:v11 countryCode:v10 personCentricID:v12];
          [v41 addObject:v13];
        }

        ++v6;
      }

      while (v8 != v6);
    }

    MessageTimeStampOnLoad = IMDChatRecordLastMessageTimeStampOnLoad();
    if (v44)
    {
      v15 = [MEMORY[0x277CBEAA8] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:v44];
    }

    else
    {
      v15 = 0;
    }

    v40 = 0;
    v38 = v15;
    v39 = MessageTimeStampOnLoad;
    if ([objc_msgSend(MEMORY[0x277D1A9B8] "sharedFeatureFlags")] && v57 == 43)
    {
      v40 = IMDChatRecordCopyChatLookupRecords();
    }

    v18 = [IMDChat alloc];
    v20 = v67;
    v19 = *buf;
    v21 = v64;
    v22 = [v61 uppercaseString];
    v23 = v65;
    v24 = [v62 lowercaseString];
    v25 = v59;
    v26 = v63;
    v27 = v46;
    v28 = JWDecodeDictionary();
    BYTE1(v37) = v42 != 0;
    LOBYTE(v37) = v43 != 0;
    LOBYTE(v36) = v54 != 0;
    LOBYTE(v35) = v53 != 0;
    LOBYTE(v34) = v57;
    v17 = [(IMDChat *)v18 initWithAccountID:v19 service:v20 guid:v21 groupID:v22 chatIdentifier:v23 participants:v41 roomName:v24 displayName:v25 lastAddressedLocalHandle:v26 lastAddressedSIMID:v27 properties:v28 state:v58 style:v34 isFiltered:v55 hasHadSuccessfulQuery:v35 engramID:v60 serverChangeToken:v51 cloudKitSyncState:v50 originalGroupID:v49 lastReadMessageTimeStamp:v48 lastMessageTimeStampOnLoad:v39 cloudKitRecordID:v47 isBlackholed:v36 autoDonationBehavior:v45 autoDonationBehaviorLastModificationDate:v38 isRecovered:v37 isDeletingIncomingMessages:v40 domainIdentifiers:?];
    [(IMDChat *)v17 _setRowID:IMDChatRecordGetIdentifier()];
    v29 = IMDChatRecordCachedUnreadCount();
    if ((v29 & 0x8000000000000000) == 0)
    {
      [(IMDChat *)v17 _setUnreadCount:v29];
    }

    Message = IMDChatRecordCopyCachedLastMessage();
    if (Message)
    {
      v31 = Message;
      v32 = IMDCreateIMMessageItemFromIMDMessageRecordRef(Message, 0);
      if (![v32 type])
      {
        [(IMDChat *)v17 setLastMessage:v32];
      }

      CFRelease(v31);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "You passed me a NULL chat record ref. No IMDSavedChat for you!", buf, 2u);
      }
    }

    return 0;
  }

  return v17;
}

uint64_t sub_22B4DB7D4(void *a1, int a2)
{
  v202 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = [a1 style];
    v132 = [a1 state];
    v139 = [objc_msgSend(a1 "accountID")];
    v146 = [objc_msgSend(a1 "properties")];
    v145 = [objc_msgSend(a1 "chatIdentifier")];
    v182 = [objc_msgSend(a1 "serviceName")];
    v141 = [objc_msgSend(a1 "displayName")];
    v143 = [objc_msgSend(a1 "guid")];
    v142 = [objc_msgSend(a1 "groupID")];
    v137 = [objc_msgSend(a1 "engramID")];
    v4 = [objc_msgSend(a1 "account")];
    v140 = [objc_msgSend(v4 objectForKey:{*MEMORY[0x277D19420]), "copy"}];
    obj = [objc_msgSend(a1 "participants")];
    v138 = [objc_msgSend(a1 "lastAddressedLocalHandle")];
    v128 = [objc_msgSend(a1 "lastAddressedSIMID")];
    v5 = [a1 isArchived];
    v126 = [a1 isFiltered];
    v6 = [a1 isBlackholed];
    v7 = [a1 hasHadSuccessfulQuery];
    v136 = [objc_msgSend(a1 "roomName")];
    v135 = [objc_msgSend(a1 "serverChangeToken")];
    v125 = [a1 cloudKitSyncState];
    v150 = [a1 originalGroupID];
    v124 = [a1 lastReadMessageTimeStamp];
    v8 = [a1 autoDonationBehavior];
    v9 = [a1 isRecovered];
    v10 = [a1 isDeletingIncomingMessages];
    v147 = a1;
    if ([a1 autoDonationBehaviorLastModificationDate])
    {
      v123 = [objc_msgSend(a1 "autoDonationBehaviorLastModificationDate")];
      if (!v8)
      {
LABEL_13:
        v134 = [objc_msgSend(v147 "cloudKitRecordID")];
        if ([v146 count])
        {
          v129 = [JWEncodeDictionary() copy];
        }

        else
        {
          v129 = objc_alloc_init(MEMORY[0x277CBEA90]);
        }

        v14 = IMDChatRecordCopyChatForGUID();
        v144 = v3;
        v130 = v5;
        v121 = v6;
        v122 = v7;
        v119 = v10;
        v120 = v9;
        if (!v14)
        {
          if ([v147 rowID] == -1)
          {
            goto LABEL_35;
          }

          [v147 rowID];
          v21 = IMDChatRecordCopyChatRecord();
          v22 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            *&buf[4] = [v147 guid];
            v194 = 2048;
            v195 = [v147 rowID];
            v196 = 1024;
            LODWORD(v197) = v21 != 0;
            _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_DEFAULT, "Failed to find chat by guid %@, tried rowid %lld instead, found? %{BOOL}d", buf, 0x1Cu);
          }

          v14 = v21;
          if (!v21)
          {
LABEL_35:
            v23 = IMDChatRecordCopyNewestChatForGroupIDOnService();
            if (v23)
            {
              v24 = *MEMORY[0x277CBECE8];
              v25 = IMDChatRecordCopyDisplayName();
              if (IMOSLoggingEnabled())
              {
                v26 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
                {
                  Identifier = IMDChatRecordGetIdentifier();
                  *buf = 138413314;
                  *&buf[4] = v142;
                  v194 = 2112;
                  v195 = v182;
                  v196 = 2048;
                  v197 = Identifier;
                  v198 = 2112;
                  v199 = v25;
                  v200 = 2112;
                  v201 = v141;
                  _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Found chat fork with same groupID (%@) and service (%@) at rowID: %lld, existing display name is (%@) and new display name is (%@)", buf, 0x34u);
                }
              }

              CFRelease(v23);
            }

            if (![v182 length])
            {
              v28 = MEMORY[0x277CCA9B8];
              v191 = *MEMORY[0x277CCA068];
              v192 = @"[IMCreateIMDChat] Chat was missing a service when being inserted into the database.";
              v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v192 forKeys:&v191 count:1];
              v30 = [v28 errorWithDomain:*MEMORY[0x277D190E0] code:0 userInfo:v29];
              [objc_msgSend(MEMORY[0x277D1AAA8] "sharedInstance")];
              IMComponentsFromChatGUID();
            }

            v117 = v120;
            v118 = v119;
            v115 = v8;
            v116 = v123;
            v113 = v128;
            v114 = v6;
            v111 = v124;
            v112 = v134;
            v109 = v125;
            v110 = v150;
            v107 = v137;
            v108 = v135;
            v105 = v126;
            v106 = v7;
            v103 = v142;
            v104 = v130;
            v101 = v138;
            v102 = v140;
            v99 = v136;
            v100 = v141;
            v152 = IMDChatRecordCreate();
            if (!v152)
            {
              v152 = 0;
LABEL_231:

              result = v152;
              goto LABEL_232;
            }

LABEL_165:
            v63 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *&buf[4] = v145;
              v194 = 2112;
              v195 = obj;
              _os_log_impl(&dword_22B4CC000, v63, OS_LOG_TYPE_DEFAULT, "Updating chat %@ with participants: %@", buf, 0x16u);
            }

            if (v144 == 45 && [obj count] != 1)
            {
              v64 = MEMORY[0x277CCA9B8];
              v189 = *MEMORY[0x277CCA068];
              v190 = @"1-1 chat has wrong number of participants while storing";
              v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v190 forKeys:&v189 count:1];
              v66 = [v64 errorWithDomain:*MEMORY[0x277D190E0] code:0 userInfo:v65];
              [objc_msgSend(MEMORY[0x277D1AAA8] "sharedInstance")];
            }

            v149 = *MEMORY[0x277CBECE8];
            v131 = IMDChatRecordCopyGUID();
            v67 = *MEMORY[0x277D19918];
            v68 = [objc_msgSend(v146 objectForKeyedSubscript:{*MEMORY[0x277D19918]), "integerValue"}];
            if (v131)
            {
              v69 = [v143 isEqualToString:?];
            }

            else
            {
              v69 = 0;
            }

            v127 = IMCopyAnyServiceGUIDForChat();
            if (([v147 style] == 45 || objc_msgSend(v147, "style") == 43) && objc_msgSend(v145, "length", v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118) && objc_msgSend(v182, "length") && !((objc_msgSend(v143, "isEqualToString:", v127) | v69) & 1 | v68 & 1))
            {
              v70 = MEMORY[0x277CCA9B8];
              v187 = *MEMORY[0x277CCA068];
              v188 = @"[IMCreateIMDChat] Chat GUID did not match chat properties";
              v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v188 forKeys:&v187 count:1];
              v72 = [v70 errorWithDomain:*MEMORY[0x277D190E0] code:0 userInfo:v71];
              [objc_msgSend(MEMORY[0x277D1AAA8] "sharedInstance")];
            }

            v133 = IMDChatRecordCopyHandles();
            v73 = [v133 mutableCopy];
            v74 = [v147 isStewieChat];
            v75 = [objc_msgSend(v146 objectForKeyedSubscript:{v67), "integerValue"}];
            if (!([v147 isBusinessChat] & 1 | (v144 != 45) | v74 & 1u) && objc_msgSend(obj, "count") == 1 && !(+[IMDChat identifier:equalsIdentifier:](IMDChat, "identifier:equalsIdentifier:", v145, objc_msgSend(objc_msgSend(obj, "firstObject"), "ID")) | (v75 >> 1) & 1) && !+[IMDChat identifier:equalsIdentifier:](IMDChat, "identifier:equalsIdentifier:", objc_msgSend(objc_msgSend(obj, "firstObject"), "ID"), objc_msgSend(objc_msgSend(v133, "firstObject"), "canonicalizedURIString")))
            {
              v76 = MEMORY[0x277CCA9B8];
              v185 = *MEMORY[0x277CCA068];
              v186 = @"[IMCreateIMDChat] [v2] Chat identifier for 1-1 chat did not match the participant's handle ID.";
              v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v186 forKeys:&v185 count:1];
              v78 = [v76 errorWithDomain:*MEMORY[0x277D190E0] code:0 userInfo:v77];
              [objc_msgSend(MEMORY[0x277D1AAA8] "sharedInstance")];
            }

            v155 = 0u;
            v156 = 0u;
            v153 = 0u;
            v154 = 0u;
            v79 = [obj countByEnumeratingWithState:&v153 objects:v184 count:{16, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118}];
            if (v79)
            {
              v80 = *v154;
              do
              {
                for (i = 0; i != v79; ++i)
                {
                  if (*v154 != v80)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v82 = *(*(&v153 + 1) + 8 * i);
                  [v82 ID];
                  v83 = IMDHandleRecordCopyHandleForIDOnService();
                  [v82 ID];
                  if (v83)
                  {
                    [v82 countryCode];
                    [v82 unformattedID];
                    IMDHandleRecordBulkUpdate();
                  }

                  else
                  {
                    IMCountryCodeForIncomingTextMessage();
                    [v82 unformattedID];
                    [v82 personCentricID];
                    v83 = IMDHandleRecordCreate();
                  }

                  v84 = IMDHandleRecordGetIdentifier();
                  v85 = [v73 count];
                  if (v85 - 1 < 0)
                  {
LABEL_196:
                    v86 = IMDatabaseLogHandle();
                    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      *&buf[4] = v83;
                      v194 = 2112;
                      v195 = v82;
                      _os_log_impl(&dword_22B4CC000, v86, OS_LOG_TYPE_DEFAULT, " Adding handle: %@   (%@)", buf, 0x16u);
                    }

                    IMDChatRecordAddHandle();
                  }

                  else
                  {
                    while (1)
                    {
                      if ([v73 objectAtIndex:--v85])
                      {
                        if (IMDHandleRecordGetIdentifier() == v84)
                        {
                          break;
                        }
                      }

                      if (v85 <= 0)
                      {
                        goto LABEL_196;
                      }
                    }

                    [v73 removeObjectAtIndex:v85];
                  }

                  if (v83)
                  {
                    CFRelease(v83);
                  }
                }

                v79 = [obj countByEnumeratingWithState:&v153 objects:v184 count:16];
              }

              while (v79);
            }

            v87 = [objc_msgSend(MEMORY[0x277D1A9B8] "sharedFeatureFlags")];
            if (v144 == 43)
            {
              v88 = v87;
            }

            else
            {
              v88 = 0;
            }

            if (v88 == 1)
            {
              if ([v147 domainIdentifiers])
              {
                v89 = IMDChatRecordCopyChatLookupRecords();
                if (v89)
                {
                  if ([objc_msgSend(objc_msgSend(v147 "domainIdentifiers")])
                  {
                    [objc_msgSend(MEMORY[0x277D18EB0] "synchronousDatabase")];
                  }
                }
              }
            }

            if (v182)
            {
              if (([v182 isEqualToString:*MEMORY[0x277D1A5F8]] & 1) == 0)
              {
                v90 = IMDChatRecordCopyChatServiceRecords();
                v91 = v90;
                if (v90)
                {
                  if (([v90 containsObject:v182] & 1) == 0)
                  {
                    v92 = [MEMORY[0x277D18EB0] synchronousDatabase];
                    v183 = v182;
                    [MEMORY[0x277CBEA60] arrayWithObjects:&v183 count:1];
                    [v92 updateServicesForChatWithGUID:? services:? completionHandler:?];
                  }

                  CFRelease(v91);
                }
              }
            }

            v93 = [v73 count];
            if (v73 && v93 >= 1)
            {
              v94 = v93 & 0x7FFFFFFF;
              if ((v93 & 0x7FFFFFFF) == 0)
              {
                goto LABEL_229;
              }

              v95 = 0;
              do
              {
                v96 = [v73 objectAtIndex:v95];
                if (v96)
                {
                  v97 = IMDatabaseLogHandle();
                  if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    *&buf[4] = v96;
                    _os_log_impl(&dword_22B4CC000, v97, OS_LOG_TYPE_DEFAULT, " Removing handle: %@", buf, 0xCu);
                  }

                  IMDChatRecordRemoveHandle();
                }

                ++v95;
              }

              while (v94 != v95);
            }

            if (!v73)
            {
LABEL_230:

              goto LABEL_231;
            }

LABEL_229:
            CFRelease(v73);
            goto LABEL_230;
          }
        }

        *buf = 0;
        v181 = 0;
        v180 = 0;
        v179 = 0;
        v178 = 0;
        v177 = 0;
        cf = 0;
        v175 = 0;
        v174 = 0;
        v173 = 0;
        v172 = 0;
        v171 = 0;
        v170 = 0;
        v169 = 0;
        v168 = 0;
        v167 = 0;
        v166 = 0;
        v165 = 0;
        v164 = 0;
        v163 = 0;
        v162 = 0;
        v161 = 0;
        v160 = 0;
        v159 = 0;
        v158 = 0;
        v157 = 0;
        v152 = v14;
        _IMDChatRecordBulkCopy();
        v15 = [JWDecodeDictionary() copy];
        v18 = *buf != v3 || v181 != v132 || v180 != v5;
        v19 = cf;
        if (cf == v139)
        {
          goto LABEL_30;
        }

        if (![cf length])
        {
          v20 = 1;
          goto LABEL_45;
        }

        if (![v139 length])
        {
LABEL_30:
          v20 = 0;
        }

        else
        {
          v20 = [v19 isEqualToString:v139] ^ 1;
        }

LABEL_45:
        IsLogicallyAnUpdate = _ChatPropertiesIsLogicallyAnUpdate(v15, v146);
        v32 = v174;
        if (v174 == v140)
        {
          goto LABEL_49;
        }

        if (![v174 length])
        {
          v33 = 1;
          goto LABEL_51;
        }

        if (![v140 length])
        {
LABEL_49:
          v33 = 0;
        }

        else
        {
          v33 = [v32 isEqualToString:v140] ^ 1;
        }

LABEL_51:
        v34 = v170;
        if (v170 == v138)
        {
          goto LABEL_55;
        }

        if (![v170 length])
        {
          v35 = 1;
          goto LABEL_57;
        }

        if (![v138 length])
        {
LABEL_55:
          v35 = 0;
        }

        else
        {
          v35 = [v34 isEqualToString:v138] ^ 1;
        }

LABEL_57:
        v36 = v173;
        if (v173 == v141)
        {
          goto LABEL_61;
        }

        if (![v173 length])
        {
          v37 = 1;
          goto LABEL_63;
        }

        if (![v141 length])
        {
LABEL_61:
          v37 = 0;
        }

        else
        {
          v37 = [v36 isEqualToString:v141] ^ 1;
        }

LABEL_63:
        v38 = v169;
        if (v169 == v145)
        {
          goto LABEL_67;
        }

        if (![v169 length])
        {
          v39 = 1;
          goto LABEL_69;
        }

        if (![v145 length])
        {
LABEL_67:
          v39 = 0;
        }

        else
        {
          v39 = [v38 isEqualToString:v145] ^ 1;
        }

LABEL_69:
        v40 = v167;
        if (v167 == v136)
        {
          goto LABEL_73;
        }

        if (![v167 length])
        {
          v41 = 1;
          goto LABEL_75;
        }

        if (![v136 length])
        {
LABEL_73:
          v41 = 0;
        }

        else
        {
          v41 = [v40 isEqualToString:v136] ^ 1;
        }

LABEL_75:
        v42 = v18 | v20 | IsLogicallyAnUpdate | v33 | v35 | v37 | v39 | v41;
        if (v179 != v126)
        {
          v42 = 1;
        }

        if (v177 == v122)
        {
          v43 = v42;
        }

        else
        {
          v43 = 1;
        }

        v44 = v172;
        if (v172 == v142)
        {
          goto LABEL_84;
        }

        if (![v172 length])
        {
          v45 = 1;
          goto LABEL_86;
        }

        if (![v142 length])
        {
LABEL_84:
          v45 = 0;
        }

        else
        {
          v45 = [v44 isEqualToString:v142] ^ 1;
        }

LABEL_86:
        v46 = v171;
        if (v171 == v137)
        {
          goto LABEL_90;
        }

        if (![v171 length])
        {
          v47 = 1;
          goto LABEL_92;
        }

        if (![v137 length])
        {
LABEL_90:
          v47 = 0;
        }

        else
        {
          v47 = [v46 isEqualToString:v137] ^ 1;
        }

LABEL_92:
        v48 = v166;
        if (v166 == v135)
        {
          goto LABEL_96;
        }

        if (![v166 length])
        {
          v49 = 1;
          goto LABEL_98;
        }

        if (![v135 length])
        {
LABEL_96:
          v49 = 0;
        }

        else
        {
          v49 = [v48 isEqualToString:v135] ^ 1;
        }

LABEL_98:
        v50 = v43 | v45 | v47 | v49;
        if (v165 == v125)
        {
          v51 = v50;
        }

        else
        {
          v51 = 1;
        }

        v52 = v164;
        if (v164 == v150)
        {
          goto LABEL_105;
        }

        if (![v164 length])
        {
          v53 = 1;
          goto LABEL_107;
        }

        if (![v150 length])
        {
LABEL_105:
          v53 = 0;
        }

        else
        {
          v53 = [v52 isEqualToString:v150] ^ 1;
        }

LABEL_107:
        v54 = v51 | v53;
        if (v163 == v124)
        {
          v55 = v54;
        }

        else
        {
          v55 = 1;
        }

        v56 = v162;
        if (v162 == v134)
        {
          goto LABEL_114;
        }

        if (![v162 length])
        {
          v57 = 1;
          goto LABEL_116;
        }

        if (![v134 length])
        {
LABEL_114:
          v57 = 0;
        }

        else
        {
          v57 = [v56 isEqualToString:v134] ^ 1;
        }

LABEL_116:
        v58 = v55 | v57;
        if (v178 != v121)
        {
          v58 = 1;
        }

        if (v159 != v123)
        {
          v58 = 1;
        }

        if (v160 != v8)
        {
          v58 = 1;
        }

        if (v158 != v120)
        {
          v58 = 1;
        }

        if (v157 == v119)
        {
          v59 = v58;
        }

        else
        {
          v59 = 1;
        }

        if (!a2)
        {
          if ((v59 & 1) == 0)
          {
            goto LABEL_137;
          }

          goto LABEL_136;
        }

        v60 = v168;
        v61 = v182;
        if (v168 == v182)
        {
          goto LABEL_134;
        }

        if (![v168 length])
        {
          goto LABEL_136;
        }

        if (![v61 length])
        {
LABEL_134:
          v62 = 0;
        }

        else
        {
          v62 = [v60 isEqualToString:v61] ^ 1;
        }

        if (((v59 | v62) & 1) == 0)
        {
LABEL_137:
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v15)
          {
            CFRelease(v15);
          }

          if (v175)
          {
            CFRelease(v175);
            v175 = 0;
          }

          if (v174)
          {
            CFRelease(v174);
            v174 = 0;
          }

          if (v170)
          {
            CFRelease(v170);
            v170 = 0;
          }

          if (v173)
          {
            CFRelease(v173);
            v173 = 0;
          }

          if (v172)
          {
            CFRelease(v172);
            v172 = 0;
          }

          if (v171)
          {
            CFRelease(v171);
            v171 = 0;
          }

          if (v169)
          {
            CFRelease(v169);
            v169 = 0;
          }

          if (v167)
          {
            CFRelease(v167);
            v167 = 0;
          }

          if (v166)
          {
            CFRelease(v166);
            v166 = 0;
          }

          if (v164)
          {
            CFRelease(v164);
            v164 = 0;
          }

          if (v162)
          {
            CFRelease(v162);
            v162 = 0;
          }

          if (v161)
          {
            CFRelease(v161);
          }

          goto LABEL_165;
        }

LABEL_136:
        v117 = v120;
        v118 = v119;
        v115 = v8;
        v116 = v123;
        v113 = v128;
        v114 = v121;
        v111 = v124;
        v112 = v134;
        v109 = v125;
        v110 = v150;
        v107 = v137;
        v108 = v135;
        v105 = v126;
        v106 = v122;
        v103 = v142;
        v104 = v130;
        v101 = v138;
        v102 = v140;
        v99 = v136;
        v100 = v141;
        IMDChatRecordBulkUpdate();
        goto LABEL_137;
      }
    }

    else
    {
      v123 = 0;
      if (!v8)
      {
        goto LABEL_13;
      }
    }

    if (![a1 autoDonationBehaviorLastModificationDate])
    {
      v13 = IMLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D65C0(v13);
      }
    }

    goto LABEL_13;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Attempted to create IMDChatRecordRef from NIL IMDChat.", buf, 2u);
    }
  }

  result = 0;
LABEL_232:
  v98 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ClientConnectionManager.broadcasterForChatListeners(usingBlackholeRegistry:)(char a1)
{
  v3 = IMGetDaemonListenerProtocol();
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 24) = v1;
    *(v4 + 32) = xmmword_22B7FDFB0;
    v5 = objc_allocWithZone(MEMORY[0x277D1AA20]);
    v14 = sub_22B4D5CD8;
    v15 = v4;
    aBlock = MEMORY[0x277D85DD0];
    v11 = 1107296256;
    v12 = sub_22B4D1BA8;
    v13 = &unk_283F20168;
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = v1;
    *(v8 + 32) = xmmword_22B7F87F0;
    v5 = objc_allocWithZone(MEMORY[0x277D1AA20]);
    v14 = sub_22B4D5CD8;
    v15 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v11 = 1107296256;
    v12 = sub_22B4D1BA8;
    v13 = &unk_283F20118;
  }

  v6 = _Block_copy(&aBlock);
  v7 = v1;
  [v5 initWithProtocol:v3 forwardingHandler:v6];

  _Block_release(v6);

  return swift_dynamicCastObjCProtocolUnconditional();
}

uint64_t _ChatPropertiesIsLogicallyAnUpdate(void *a1, void *a2)
{
  v4 = *MEMORY[0x277D198C8];
  v5 = [a1 objectForKey:*MEMORY[0x277D198C8]];
  v6 = [a2 objectForKey:v4];
  v7 = v6;
  if (v5 | v6)
  {
    if (v5 && v6 == 0)
    {
      return 1;
    }

    if (v5 || v6 == 0)
    {
      v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v5];
      v14 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v7];
      v15 = [v13 isSubsetOfSet:v14];

      if (!v15)
      {
        return 1;
      }
    }
  }

  v8 = [a1 mutableCopy];
  v9 = [a2 mutableCopy];
  if (v5)
  {
    [v8 removeObjectForKey:v4];
  }

  if (v7)
  {
    [v9 removeObjectForKey:v4];
  }

  if (v8 != v9 && ([v8 count] || objc_msgSend(v9, "count")))
  {
    v10 = [v8 isEqualToDictionary:v9] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void *sub_22B4DD814@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_22B4DD840(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_22B4DD934@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_22B7DB6A8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_22B4DD960()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4DD9A8()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B4DD9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22B4DDAA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B4DDB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22B6F0AD4(&qword_27D8CD5D0, &qword_22B7F9518);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22B4DDC04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22B6F0AD4(&qword_27D8CD5D0, &qword_22B7F9518);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B4DDCB4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DDCEC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4DDD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_22B7DA968();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_22B4DDDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_22B7DA968();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_22B4DDE24()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DDE5C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22B4DDE6C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22B4DDE8C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B4DDED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22B7DABE8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_22B7DAB98();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_22B4DDFC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22B7DABE8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_22B7DAB98();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_22B4DE0C0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DE0F8()
{
  MEMORY[0x231898E50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DE140()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DE178()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B4DE1CC()
{
  v1 = sub_22B6F0AD4(&unk_27D8CD790, &unk_22B7FD0B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B4DE260()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DE298()
{
  MEMORY[0x231898E50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DE2D0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B4DE314@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_22B715158(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22B4DE340@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_22B71518C(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_22B4DE3B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1[2];
  result = sub_22B714034(*a2, *a1, a1[1]);
  *a3 = result;
  return result;
}

uint64_t sub_22B4DE3F0(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a1;
  sub_22B713BE0(*a1);
  return sub_22B71411C(v4, v3);
}

uint64_t sub_22B4DE44C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_22B4DE494@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

uint64_t sub_22B4DE4E8(uint64_t *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR___IMDIncomingClientConnectionListener_queue);
  v4 = *a1;
  return sub_22B7DACB8();
}

uint64_t sub_22B4DE54C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B4DE5A8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B4DE5F0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4DE630()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4DE670()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DE6A8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4DE6F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22B4DE748(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&qword_27D8CE628, &unk_22B7FA700);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B4DE7C0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22B6F0AD4(&qword_27D8CE628, &unk_22B7FA700);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22B4DE850()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B4DE898()
{
  v1 = sub_22B6F0AD4(&qword_27D8CE650, qword_22B7FA7B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B4DE938()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DE97C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4DE9CC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DEA08()
{
  MEMORY[0x231898E50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DEA44()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B4DEA84()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B4DEAC4()
{
  v1 = *(v0 + 16);

  sub_22B4CFB78((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22B4DEB08()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DEB40()
{
  MEMORY[0x231898E50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DEB78()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B4DEBC4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B4DEC10()
{
  v1 = sub_22B7DA828();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_22B6F0AD4(&qword_27D8CEB50, qword_22B7FB100);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  v12 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_22B4DED74()
{
  MEMORY[0x231898E50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DEDAC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B4DEDF4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *sub_22B4DEE3C@<X0>(void *a1@<X8>)
{
  result = sub_22B75A780();
  *a1 = result;
  return result;
}

uint64_t sub_22B4DEE68()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B4DEEB0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22B4DEF1C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DEF54()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22B4DEF9C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DEFD8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_22B4DF018@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 runResult];
  *a2 = result;
  return result;
}

id sub_22B4DF060@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 status];
  *a2 = result;
  return result;
}

uint64_t sub_22B4DF0C4()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B4DF108()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B4DF160()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B4DF1A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B4DF1E8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DF230()
{
  v1 = sub_22B6F0AD4(&qword_27D8CE648, &qword_22B7FA7A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_22B4DF2E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B4DF320()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DF358()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4DF390()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B4DF3D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B4DF418()
{
  _Block_release(*(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_22B4DF484()
{
  v1 = sub_22B7DAD98();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22B4DF564()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4DF5AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  type metadata accessor for MultimapValues();

  return swift_getWitnessTable();
}

uint64_t sub_22B4DF5F8(uint64_t *a1)
{
  v1 = *a1;
  sub_22B7DB998();

  return swift_getWitnessTable();
}

uint64_t sub_22B4DF640(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_22B7DB998();

  return swift_getWitnessTable();
}

uint64_t sub_22B4DF6DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B4DF72C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4DF774()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4DF7AC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DF7FC()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DF834()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DF86C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DF8A4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B4DF8F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4DF92C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B4DFB0C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_22B4DFB24()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_22B4CFB78(v0 + 4);
  sub_22B4CFB78(v0 + 9);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

id sub_22B4DFB74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = [swift_getObjCClassFromMetadata() pTaskQueryProvider];
  *a2 = result;
  return result;
}

uint64_t sub_22B4DFBB4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4DFC30()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DFC74()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DFCAC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DFCE4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4DFD24()
{
  MEMORY[0x231898E50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DFD5C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B4DFDA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B4DFDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22B7DA968();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22B4DFEA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22B7DA968();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B4DFF48()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4DFF80()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B4DFFC8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B4E0008()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_22B4E0068()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4E013C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22B7DA5C8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22B4E01E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22B7DA5C8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B4E02D0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_22B4CFB78(v0 + 4);
  sub_22B4CFB78(v0 + 9);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_22B4E0318()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4E0350()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4E03F4()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_22B4E042C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4E0488()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4E04CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  sub_22B6F0AD4(&qword_27D8CEF00, &qword_22B7FBAD0);
  result = sub_22B7DACB8();
  *a2 = v5;
  return result;
}

uint64_t sub_22B4E053C(uint64_t *a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  v4 = *a1;
  return sub_22B7DACB8();
}

uint64_t sub_22B4E0598()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B4E05E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4E061C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4E0664()
{
  v1 = sub_22B6F0AD4(&qword_27D8CFB68, &qword_22B7FE2E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B4E073C()
{
  MEMORY[0x231898E50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4E0774()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_22B4E08F4@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 version];
  *a2 = result;
  return result;
}

void sub_22B4E14A4(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_22B4E1538;
  v3[3] = &unk_2787028B0;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void sub_22B4E1538(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) group];

  if (v2)
  {
    v3 = [*(a1 + 32) group];
    dispatch_group_leave(v3);
  }
}

__CFString *sub_22B4E3C10(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid Ingestion State: %ld", a1];
  }

  else
  {
    v2 = off_278702900[a1];
  }

  return v2;
}

void sub_22B4E6010(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B4E5F84);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22B4E6638(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_22B4E67C8()
{
  v0 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v1 = [v0 objectForKey:@"read-receipt-tracking"];
  v2 = [v1 BOOLValue];

  if (v2)
  {
    return 0;
  }

  v4 = [MEMORY[0x277D19268] sharedInstance];
  v5 = [v4 isInternalInstall];

  return v5;
}

uint64_t sub_22B4E7574()
{
  qword_281420EC8 = objc_alloc_init(IMDSpamCheckRequeryTracker);

  return MEMORY[0x2821F96F8]();
}

void sub_22B4E7E40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateTracker];
}

void sub_22B4E83C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B4E8490;
  v7[3] = &unk_2787029C8;
  v11 = a2;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void sub_22B4E8490(uint64_t a1)
{
  if (*(a1 + 56) == 2)
  {
    v2 = +[IMDSpamFilteringHelper sharedHelper];
    [v2 presentDebugUI];

    v3 = +[IMDSpamFilteringHelper sharedHelper];
    v4 = [*(a1 + 32) serviceName];
    [v3 recordJunkMetricsForSpamDetectionSource:1 service:v4];

    [*(a1 + 32) setSpamDetectionSource:1];
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) guid];
    [v5 setSpamDetectedMessage:v6];

    [*(a1 + 32) updateIsFiltered:2];
  }

  if (*(a1 + 48))
  {
    [*(a1 + 40) setSpamModelMetadata:?];
    v8 = +[IMDMessageStore sharedInstance];
    v7 = [v8 storeMessage:*(a1 + 40) forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0];
  }
}

uint64_t sub_22B4E9008()
{
  qword_281420F58 = objc_alloc_init(IMDAccountController);

  return MEMORY[0x2821F96F8]();
}

BOOL sub_22B4EBF10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 service];
  if (v4 == *(a1 + 32))
  {
    v6 = [v3 loginID];
    v5 = [v6 caseInsensitiveCompare:*(a1 + 40)] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL sub_22B4EC2C4(uint64_t a1, void *a2)
{
  v3 = [a2 service];
  v4 = v3 == *(a1 + 32);

  return v4;
}

BOOL sub_22B4EC3D4(uint64_t a1, void *a2)
{
  v3 = [a2 service];
  v4 = v3 == *(a1 + 32);

  return v4;
}

uint64_t sub_22B4EC4E4(uint64_t a1, void *a2)
{
  v3 = [a2 service];
  v4 = [v3 supportsCapability:*(a1 + 32)];

  return v4;
}

BOOL sub_22B4EC9EC(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = 0;
  if ([v2 isActive])
  {
    [v2 createSessionIfNecessary];
    v3 = [v2 session];

    if (v3)
    {
      v4 = 1;
    }
  }

  return v4;
}

uint64_t sub_22B4EEF6C()
{
  qword_281421290 = os_log_create("com.apple.Messages", "IMDCKUtilities");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B4EF168(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_281420F60 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

void sub_22B4EF4E0(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"NO";
      if (a2)
      {
        v5 = @"YES";
      }

      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "key roll pending check returned: %@", &v8, 0xCu);
    }
  }

  if (a2)
  {
    [*(a1 + 32) setErrorToKeyRollingError];
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Added key roll pending error to sync state", &v8, 2u);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B4EFA48(uint64_t a1, int a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 ^ 1u);
  }

  return result;
}

void sub_22B4F0108(uint64_t a1, int a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (a2)
      {
        v7 = @"YES";
      }

      *buf = 138412546;
      v21 = v7;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "isFirstSyncWithCompletion for checking account storage: %@, error: %@", buf, 0x16u);
    }
  }

  v8 = *(a1 + 32);
  if (v5)
  {
    if (v8)
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = [v5 domain];
      v11 = [v5 code];
      v18 = *MEMORY[0x277CCA450];
      v19 = @"Is first sync check failed";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v13 = [v9 errorWithDomain:v10 code:v11 userInfo:v12];
      (*(v8 + 16))(v8, 0, 0, v13);
    }
  }

  else if (a2)
  {
    if (v8)
    {
      v14 = +[IMDCKUtilities sharedInstance];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = sub_22B4F0370;
      v16[3] = &unk_278702B70;
      v17 = *(a1 + 32);
      [v14 checkiCloudQuota:v16];
    }
  }

  else if (v8)
  {
    (*(v8 + 16))(*(a1 + 32), 0, 0, 0);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_22B4F04F0(uint64_t a1, unint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = 134218242;
      v13 = a2;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "User quota completion block return with available Quota %llu, and Error: %@", &v12, 0x16u);
    }
  }

  if (v5)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, 0, 0, v5);
    }
  }

  else
  {
    v8 = [*(a1 + 32) currentStorageOnDevice];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 134218240;
        v13 = a2;
        v14 = 2048;
        v15 = v8;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Available Quota in bytes:  and message database size: %llu, %llu", &v12, 0x16u);
      }
    }

    v10 = *(a1 + 40);
    if (v8 <= a2)
    {
      if (v10)
      {
        (*(v10 + 16))(v10, 0, 0, 0);
      }
    }

    else if (v10)
    {
      (*(v10 + 16))(v10, v8 - a2, 0, 0);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_22B4F09CC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B4F091CLL);
  }

  _Unwind_Resume(a1);
}

void sub_22B4F0CF4(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Setting cloudkit enabled, exit record state: %@, error (%@)", buf, 0x16u);
    }
  }

  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v17 = v6;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Unable to request exit record when trying to change iCloud enabled state.  Error: %@", buf, 0xCu);
      }
    }

    v9 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v9 autoBugCaptureWithSubType:@"setCloudKitEnabled" errorPayload:v6];

    [*(a1 + 32) _didAttemptToUpdateCloudKitEnablementTo:*(a1 + 40) result:0];
  }

  else if (v5)
  {
    v10 = +[IMDCKExitManager sharedInstance];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_22B4F0F40;
    v14[3] = &unk_278702BC0;
    v14[4] = *(a1 + 32);
    v15 = *(a1 + 40);
    [v10 deleteExitRecordWithCompletion:v14];
  }

  else
  {
    v12 = *(a1 + 32);
    v11 = a1 + 32;
    [v12 setCloudKitSyncingEnabled:*(v11 + 8)];
    [*v11 _didAttemptToUpdateCloudKitEnablementTo:*(v11 + 8) result:1];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22B4F0F40(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) setCloudKitSyncingEnabled:*(a1 + 40)];
    [*(a1 + 32) _didAttemptToUpdateCloudKitEnablementTo:*(a1 + 40) result:1];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v5;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Unable to delete exit record when trying to change iCloud enabled state.  Error: %@", &v9, 0xCu);
      }
    }

    v7 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v7 autoBugCaptureWithSubType:@"setCloudKitEnabled" errorPayload:v5];

    [*(a1 + 32) _didAttemptToUpdateCloudKitEnablementTo:*(a1 + 40) result:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B4F258C()
{
  qword_281421300 = dispatch_queue_create("com.apple.private.IMDCKUtilitiesInternal", 0);

  return MEMORY[0x2821F96F8]();
}

void sub_22B4F2904(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22B4F299C;
  v4[3] = &unk_278702C28;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 fetchCloudKitAccountStatusWithCompletion:v4];
}

void sub_22B4F299C(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Return account validForCD with error: %@ accountStatus: %@", &v9, 0x16u);
    }
  }

  if (!v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2 == 4;
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v8 = *MEMORY[0x277D85DE8];
}

objc_class *sub_22B4F2B1C()
{
  result = MEMORY[0x231897B40](@"AKAppleIDAuthenticationController", @"AuthKit");
  if (result)
  {
    qword_2814213D8 = objc_alloc_init(result);

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

void sub_22B4F2F4C(uint64_t a1, unint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (a2 > 4)
      {
        v8 = 0;
      }

      else
      {
        v8 = off_278702EC0[a2];
      }

      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Fetched cloud kit account status: %@, error: %@", &v12, 0x16u);
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (a2 > 4)
      {
        v9 = 0;
      }

      else
      {
        v9 = off_278702EC0[a2];
      }

      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Fetched cloud kit account status: %@", &v12, 0xCu);
    }
  }

LABEL_16:
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

__CFString *NSStringFromIMDCKAccountStatus(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_278702EC0[a1];
  }
}

void sub_22B4F3118(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v35 = v5;
      v36 = 2112;
      v37 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "accountInfoWithCompletionHandler called with accountInfo %@, error %@", buf, 0x16u);
    }
  }

  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v35 = v6;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Checking for cloudkit account info failed with error: %@ ", buf, 0xCu);
      }
    }

    goto LABEL_10;
  }

  v9 = [MEMORY[0x277D1A990] sharedInstance];
  v10 = [v9 getBoolFromDomain:*MEMORY[0x277D19A08] forKey:@"ForceInvalidCredentials"];

  v11 = [MEMORY[0x277D19268] sharedInstance];
  v12 = [v11 isInternalInstall];

  if ((v12 & v10) != 0)
  {
    v13 = [*(a1 + 32) syncState];
    [v13 removeObjectFromAnalyticSyncDatesDictionaryForKey:*MEMORY[0x277D19B00]];

    (*(*(a1 + 40) + 16))();
    goto LABEL_13;
  }

  v15 = [v5 accountStatus];
  if (v15 > 2)
  {
    if (v15 == 3)
    {
LABEL_10:
      (*(*(a1 + 40) + 16))();
      goto LABEL_13;
    }

    if (v15 != 4)
    {
      goto LABEL_39;
    }
  }

  else if ((v15 - 1) >= 2)
  {
    if (!v15)
    {
      v16 = [*(a1 + 32) _createAccountError:@"failed fetching account status"];
      (*(*(a1 + 40) + 16))();

      goto LABEL_13;
    }

LABEL_39:
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [v5 accountStatus];
        *buf = 134217984;
        v35 = v30;
        _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Unrecognized account status %ld", buf, 0xCu);
      }
    }

    v31 = *(a1 + 32);
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unrecognized account status %ld", objc_msgSend(v5, "accountStatus")];
    v33 = [v31 _createAccountError:v32];

    (*(*(a1 + 40) + 16))();
    goto LABEL_13;
  }

  v17 = [*(a1 + 32) _checkEligibilityWithAccountInfo:v5];
  v18 = [v5 accountPartition];
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = @"NO";
      if (v17)
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      if (v18 == 2)
      {
        v20 = @"YES";
      }

      *buf = 138412546;
      v35 = v21;
      v36 = 2112;
      v37 = v20;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Checking for cloudkit eligibility returned: %@ inCarry: %@", buf, 0x16u);
    }
  }

  v22 = v18 == 2;
  v23 = [MEMORY[0x277D1AAA8] sharedInstance];
  v24 = v23;
  if (v22)
  {
    v25 = &unk_283F4E450;
  }

  else
  {
    v25 = &unk_283F4E420;
  }

  [v23 trackEvent:*MEMORY[0x277D1A0C8] withCount:v25];

  v26 = [v5 hasValidCredentials];
  v27 = *(a1 + 40);
  if (v26)
  {
    if (v17)
    {
      v28 = 4;
    }

    else
    {
      v28 = 3;
    }

    (*(v27 + 16))(v27, v28, 0);
  }

  else
  {
    (*(v27 + 16))(v27, 2, 0);
  }

LABEL_13:

  v14 = *MEMORY[0x277D85DE8];
}

void sub_22B4F3600(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B4F36D8;
  block[3] = &unk_278702CC8;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_22B4F36F0()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 objectForKey:@"ck-account-repair-override"];

  if (v1 && [v1 BOOLValue])
  {
    byte_27D8CFD00 = 1;
  }

  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      if (byte_27D8CFD00)
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "account needs repair override is: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_22B4F3C10(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v5;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Not checking account for needed repair because fetching account status returned an error: %@", &v11, 0xCu);
      }
    }
  }

  else
  {
    v7 = [*(a1 + 32) syncState];
    [v7 _startBatchChange];
    [v7 setAccountStatus:a2];
    [v7 setEligibleForTruthZone:a2 == 4];
    [*(a1 + 32) _setEligibleToToggleMiCSwitch:a2 == 4];
    if ([*(a1 + 32) shouldRepairAccountWithAccountStatus:a2 securityLevel:*(a1 + 48)])
    {
      v8 = [*(a1 + 32) syncState];
      [v8 setErrorToAccountNeedsRepair];
    }

    [v7 _finishBatchChange];
    [v7 broadcastSyncState];
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B4F44A8()
{
  result = MEMORY[0x231897B40](@"LSApplicationWorkspace", @"CoreServices");
  qword_27D8CFD08 = result;
  return result;
}

void sub_22B4F44D8(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (![v3 response])
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277D07DB0] sharedInstance];
    v6 = [v5 productBuildVersion];
    v7 = [v4 stringWithFormat:@"TTR:%@ MoIC Sync Fail %@", v6, *(a1 + 32)];

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"tap-to-radar://new?Title=%@&ComponentID=644010&ComponentName=Messages Frameworks&ComponentVersion=iOS&Classification=Serious Bug&Description=%@&Reproducibility=I Didn't Try", v7, v7];
    v9 = [v8 stringByAddingURLEscapes];

    v10 = [MEMORY[0x277CBEBC0] URLWithString:v9];
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v15 = v10;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "User tapped file a radar. Opening URL %@", buf, 0xCu);
      }
    }

    v12 = [qword_27D8CFD08 defaultWorkspace];
    [v12 openURL:v10 configuration:0 completionHandler:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

objc_class *sub_22B4F4AF0()
{
  result = MEMORY[0x231897B40](@"ACAccountStore", @"AppleAccount");
  if (result)
  {
    qword_2814213E8 = objc_alloc_init(result);

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

void sub_22B4F4F0C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v9 = 0;
        v6 = "Error saving enabling for kAccountDataclassMessages.";
        v7 = &v9;
LABEL_8:
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, v6, v7, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if (v4)
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 0;
      v6 = "Success saving enabling for kAccountDataclassMessages.";
      v7 = &v8;
      goto LABEL_8;
    }

LABEL_9:
  }
}

void sub_22B4F509C(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v6 localizedDescription];
      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Found primary account: %@ error: %@", &v11, 0x16u);
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_22B4F5268(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v6 localizedDescription];
        v14 = 138412290;
        v15 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "fetchiCloudAccountPersonID returning with error: %@", &v14, 0xCu);
      }
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, 0, v6);
    }
  }

  else
  {
    v10 = [*(a1 + 32) _personIdFromAccount:v5];
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v10;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Found DSID: %@", &v14, 0xCu);
      }
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, v10, 0);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22B4F54E0(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 isEnabledForDataclass:*MEMORY[0x277CB90C8]];
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"NO";
      if (v7)
      {
        v9 = @"YES";
      }

      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Account has backup enabled: %@", &v11, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

void sub_22B4F562C()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 objectForKey:@"ck-sync-paused"];

  if (v1 && [v1 BOOLValue])
  {
    byte_27D8CFD18 = 1;
  }

  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      if (byte_27D8CFD18)
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Is syncing paused override: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_22B4F6160(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 response];
  v5 = IMOSLoggingEnabled();
  if (v4)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "User chose to show pop up before sending logs", v11, 2u);
      }
    }
  }

  else if (v5)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "User chose to always auto send logs", buf, 2u);
    }
  }

  v8 = *MEMORY[0x277D19A08];
  v9 = *MEMORY[0x277D19B78];
  IMSetDomainIntForKey();
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

void *sub_22B4F6F80()
{
  result = MEMORY[0x231897B50]("PLLogRegisteredEvent", @"PowerLog");
  off_27D8CFD20 = result;
  return result;
}

void *sub_22B4F72AC()
{
  result = MEMORY[0x231897B50]("PLLogRegisteredEvent", @"PowerLog");
  off_27D8CFD30 = result;
  return result;
}

void sub_22B4F7334()
{
  v5 = *MEMORY[0x277D85DE8];
  off_281421478 = MEMORY[0x231897B50]("PCSReportKeyRollPending", @"ProtectedCloudStorage");
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      if (off_281421478)
      {
        v1 = @"YES";
      }

      else
      {
        v1 = @"NO";
      }

      v3 = 138412290;
      v4 = v1;
      _os_log_impl(&dword_22B4CC000, v0, OS_LOG_TYPE_INFO, "Linked linkedPCSReportKeyRollPending ok: %@", &v3, 0xCu);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B4F75E8(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    if (*(result + 32))
    {
      *(v1 + 24) = 1;
      return (*(*(result + 32) + 16))();
    }
  }

  return result;
}

void sub_22B4F7620(uint64_t a1)
{
  v2 = [*(a1 + 32) PCSKeyRollPending];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B4F76CC;
  block[3] = &unk_278702E28;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  v7 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t sub_22B4F76CC(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    if (*(result + 32))
    {
      *(v1 + 24) = 1;
      return (*(*(result + 32) + 16))(*(result + 32), *(result + 48));
    }
  }

  return result;
}

void sub_22B4F77E8()
{
  v5 = *MEMORY[0x277D85DE8];
  off_27D8CFD40 = MEMORY[0x231897B50]("PCSReportManateeStatus", @"ProtectedCloudStorage");
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      if (off_27D8CFD40)
      {
        v1 = @"YES";
      }

      else
      {
        v1 = @"NO";
      }

      v3 = 138412290;
      v4 = v1;
      _os_log_impl(&dword_22B4CC000, v0, OS_LOG_TYPE_INFO, "Linked linkedPCSReportManateeStatus ok: %@", &v3, 0xCu);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B4F7A9C(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    if (*(result + 32))
    {
      *(v1 + 24) = 1;
      return (*(*(result + 32) + 16))();
    }
  }

  return result;
}

void sub_22B4F7AD4(uint64_t a1)
{
  v2 = [*(a1 + 32) PCSReportManateeStatus];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B4F7B80;
  block[3] = &unk_278702E78;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  v7 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t sub_22B4F7B80(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    if (*(result + 32))
    {
      *(v1 + 24) = 1;
      return (*(*(result + 32) + 16))(*(result + 32), *(result + 48));
    }
  }

  return result;
}

void *sub_22B4F7BBC()
{
  result = MEMORY[0x231897B40](@"AKAccountManager", @"AuthKit");
  if (result)
  {
    qword_281421400 = [result sharedInstance];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

void sub_22B4F8970(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 40) + 8) + 24) = a2 == 4;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Not eligible for truth zone", v7, 2u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_22B4F8A80()
{
  result = IMGetDomainBoolForKey();
  byte_27D8CFD50 = result;
  return result;
}

void sub_22B4F8C0C(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) setCloudKitSyncingEnabled:1];
    v6 = +[IMDCKBackupController sharedInstance];
    [v6 setICloudBackupsDisabled:0];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = v5;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Unable to request exit record when trying to disable all devices. Error: %@", &v13, 0xCu);
      }
    }

    v8 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v8 autoBugCaptureWithSubType:@"DisableAllDevices" errorPayload:v5];
  }

  v9 = *MEMORY[0x277D19A08];
  v10 = *MEMORY[0x277D19BF8];
  IMSetDomainBoolForKey();
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, a2);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_22B4F8DC8()
{
  if (!qword_27D8CFD60)
  {
    v1 = MEMORY[0x231897B50]("AKAuthenticationSecurityLevelKey", @"AuthKit");
    if (v1)
    {
      v2 = *v1;
    }

    else
    {
      v2 = 0;
    }

    objc_storeStrong(&qword_27D8CFD60, v2);
  }
}

uint64_t sub_22B4F8E6C()
{
  v0 = objc_alloc(MEMORY[0x277D186C8]);
  qword_2814213A8 = [v0 initWithService:*MEMORY[0x277D186B0]];

  return MEMORY[0x2821F96F8]();
}

void sub_22B4F9594(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id sub_22B4F9B4C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v14.receiver = a1;
  v14.super_class = &off_283F92618;
  v5 = objc_msgSendSuper2(&v14, sel_init);
  if (v5)
  {
    v6 = [v4 chatIdentifier];
    [v5 setChatIdentifier:v6];

    if ([v4 chatStyle])
    {
      if ([v4 chatStyle] == 1)
      {
        v7 = 45;
      }

      else
      {
        v7 = 43;
      }

      [v5 setChatStyle:v7];
    }

    v8 = [v4 senderLastAddressedHandle];
    [v5 setSenderLastAddressedHandle:v8];

    v9 = [v4 senderLastAddressedSIMID];
    v10 = [v9 UUIDString];
    [v5 setSenderLastAddressedSIMID:v10];

    v11 = [v4 lastUsedServiceName];
    [v5 setLastUsedServiceName:v11];

    v12 = [v4 serviceOfLastMessage];
    [v5 setServiceOfLastMessage:v12];

    [v5 setConversationWasDowngraded:{objc_msgSend(v4, "conversationWasDowngraded")}];
    [v5 setHasConversationHistory:{objc_msgSend(v4, "hasConversationHistory")}];
    [v5 setShouldForceServerStatusRefresh:{objc_msgSend(v4, "shouldForceServerStatusRefresh")}];
    [v5 setForceMMS:{objc_msgSend(v4, "forceMMS")}];
    [v5 setIsForPendingConversation:{objc_msgSend(v4, "isForPendingConversation")}];
    [v5 setRequestPersistentMenu:{objc_msgSend(v4, "requestPersistentMenu")}];
    [v5 setRequestBrandInfo:{objc_msgSend(v4, "requestBrandInfo")}];
  }

  return v5;
}

id IMDMessageStoreLogHandle()
{
  if (qword_27D8CFD78 != -1)
  {
    sub_22B7CF9B0();
  }

  v1 = qword_27D8CFD70;

  return v1;
}

uint64_t sub_22B4FB0F0()
{
  qword_27D8CFD70 = os_log_create("com.apple.Messages", "IMDMessageStore");

  return MEMORY[0x2821F96F8]();
}

id IMDChatLogHandle()
{
  if (qword_27D8CFD88 != -1)
  {
    sub_22B7CF9C4();
  }

  v1 = qword_27D8CFD80;

  return v1;
}

uint64_t sub_22B4FB178()
{
  qword_27D8CFD80 = os_log_create("com.apple.Messages", "IMDChat");

  return MEMORY[0x2821F96F8]();
}

id IMDTelephonyServiceLogHandle()
{
  if (qword_27D8CFD98 != -1)
  {
    sub_22B7CF9D8();
  }

  v1 = qword_27D8CFD90;

  return v1;
}

uint64_t sub_22B4FB200()
{
  qword_27D8CFD90 = os_log_create("com.apple.Messages", "TelephonyService");

  return MEMORY[0x2821F96F8]();
}

id IMMutedChatListRebuildLogHandle()
{
  if (qword_27D8CFDA8 != -1)
  {
    sub_22B7CF9EC();
  }

  v1 = qword_27D8CFDA0;

  return v1;
}

uint64_t sub_22B4FB288()
{
  qword_27D8CFDA0 = os_log_create("com.apple.Messages", "MutedChatList+Rebuild");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B4FC188()
{
  qword_27D8CFDB0 = objc_alloc_init(IMPendingReplicatedMessageCache);

  return MEMORY[0x2821F96F8]();
}

void sub_22B4FC380(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pendingMessages];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Attempting to cache pending replicated message %@ but one is already present", buf, 0xCu);
    }
  }

  v6 = objc_alloc_init(IMPendingReplicatedMessage);
  [(IMPendingReplicatedMessage *)v6 setMessageGUID:*(a1 + 40)];
  [(IMPendingReplicatedMessage *)v6 setReplicatedFallbackGUIDs:*(a1 + 48)];
  [(IMPendingReplicatedMessage *)v6 setReleaseBlock:*(a1 + 56)];
  v7 = [MEMORY[0x277CBEAA8] now];
  [(IMPendingReplicatedMessage *)v6 setDate:v7];

  v8 = [*(a1 + 32) pendingMessages];
  [v8 setObject:v6 forKeyedSubscript:*(a1 + 40)];

  v9 = [*(a1 + 32) replicatedFallbackHistory];
  [v9 setObject:*(a1 + 40) forKey:*(a1 + 40)];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = *(a1 + 48);
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v20 + 1) + 8 * v13);
        v15 = [*(a1 + 32) pendingMessages];
        [v15 setObject:v6 forKeyedSubscript:v14];

        v16 = [*(a1 + 32) replicatedFallbackHistory];
        [v16 setObject:*(a1 + 40) forKey:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 40);
      *buf = 138412290;
      v26 = v18;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Caching pending replicated message %@", buf, 0xCu);
    }
  }

  [*(a1 + 32) _enforceCacheLimit];
  [*(a1 + 32) _scheduleTimeout];

  v19 = *MEMORY[0x277D85DE8];
}

void sub_22B4FC7BC(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pendingMessages];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 40);
        *buf = 138412290;
        v19 = v6;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Releasing pending replicated message %@", buf, 0xCu);
      }
    }

    v7 = *(a1 + 32);
    v8 = [v3 messageGUID];
    [v7 _removePendingMessageWithGUID:v8];

    v9 = [v3 releaseBlock];
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_22B4FCA08;
    v16[3] = &unk_2787028D8;
    v17 = *(a1 + 64);
    (v9)[2](v9, v10, v11, v16);
  }

  else
  {
    if (v4)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 40);
        *buf = 138412290;
        v19 = v13;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Attempted to release pending replicated message %@ but no message pending", buf, 0xCu);
      }
    }

    v14 = *(a1 + 64);
    if (v14)
    {
      (*(v14 + 16))(v14, 0);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_22B4FCC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B4FCC20(uint64_t a1)
{
  v5 = [*(a1 + 32) replicatedFallbackHistory];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_22B4FD044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22B4FD060(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B4FD0F4;
  block[3] = &unk_278702FF0;
  block[4] = WeakRetained;
  dispatch_async(v2, block);
}

void sub_22B4FD3E0(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v4 = [v9 date];
  [v4 timeIntervalSinceNow];
  v6 = v5;

  if (v6 < -7200.0)
  {
    v7 = *(a1 + 32);
    v8 = [v9 messageGUID];
    [v7 addObject:v8];
  }
}

void sub_22B5003B0(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _handleDeleteCommandWithMessageDictionary:*(a1 + 40)];
  v3 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4);
    v3 = v4;
  }
}

void sub_22B500774(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) recoverChatsForCommandDictionary:*(a1 + 40)];
  v3 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4);
    v3 = v4;
  }
}

void sub_22B500FF8(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v7 = *(a1 + 40);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v7 count:1];
  [v2 permanentlyDeletedRecoverableMessagesForChatsWithGUIDs:v5 deletedChatGUIDs:{v4, v7, v8}];

  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B501BA4(void *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5016C4);
  }

  _Block_object_dispose(&v2, 8);
  JUMPOUT(0x22B501C24);
}

void sub_22B501BC4(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5015F0);
  }

  _Unwind_Resume(exc_buf);
}

void sub_22B501C2C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsIndex:{objc_msgSend(v3, "messagePartIndex")}])
  {
    v4 = [v3 messagePartBody];

    if (v4)
    {
      v5 = [MEMORY[0x277D18EB0] database];
      v6 = [v3 messagePartBody];
      v7 = [*(a1 + 40) guid];
      [v5 storeRecoverableMessagePartWithBody:v6 forMessageWithGUID:v7 deleteDate:*(a1 + 48)];

      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    else if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Recently Deleted | Mardid: deleting message part: found no message-part body-text to store for recovery", v9, 2u);
      }
    }
  }
}

void sub_22B502318(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  v6 = +[IMDServiceController sharedController];
  v7 = [v6 serviceWithName:v5];

  if (v7)
  {
    v8 = [*(a1 + 32) broadcasterForChatListenersForService:v7 withBlackholeStatus:0];
    [v8 recoveredMessagesFromRecentlyDeletedForChatsWithGUIDs:v9];
  }
}

uint64_t sub_22B502BA8(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 service];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = [v2 service];
  if ([v4 groupsMergeDisplayNames])
  {

LABEL_10:
    v9 = 1;
    goto LABEL_11;
  }

  v5 = [v2 displayName];
  v6 = [v5 length];

  if (!v6)
  {
    goto LABEL_10;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v2 guid];
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Rejecting chat %@ as it has a display name and service does not merge display names", &v12, 0xCu);
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_22B503118(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 guid];
  v4 = [v2 containsObject:v3];

  return v4;
}

void sub_22B503160(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  v6 = +[IMDServiceController sharedController];
  v7 = [v6 serviceWithName:v5];

  if (v7)
  {
    v8 = [*(a1 + 32) broadcasterForChatListenersForService:v7];
    [v8 historicalMessageGUIDsDeleted:v9 chatGUIDs:0 queryID:0];
  }
}

void -[IMDRelayDeletionController _blocklistIfNeededForChatDict:](IMDRelayDeletionController *self, SEL a2, id a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"wasReportedAsJunk"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [v3 objectForKeyedSubscript:@"groupID"];
    if (v6)
    {
      v7 = [MEMORY[0x277D1A9E8] sharedInstance];
      [v7 blocklistGroupId:v6];

      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v10 = 138412290;
          v11 = v6;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Blocklisted GroupID: %@", &v10, 0xCu);
        }

LABEL_10:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "IMDRelayDeletionController | Expected to blocklist chat for chatDict: %@ but groupID nil", &v10, 0xCu);
      }

      goto LABEL_10;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22B50453C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5044B0);
  }

  _Unwind_Resume(a1);
}

IMDOneTimeCodeManager *sub_22B504E68()
{
  result = objc_alloc_init(IMDOneTimeCodeManager);
  qword_281420F68 = result;
  return result;
}

void sub_22B504F9C(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  if (a2)
  {
    [a2 setAutoDeletionPreference:1];
  }

  objc_autoreleasePoolPop(v3);
}

void sub_22B504FE8(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  if (a2)
  {
    [a2 setAutoDeletionPreference:0];
  }

  objc_autoreleasePoolPop(v3);
}

void sub_22B505618(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Delete Verification Codes | Onboarding completed.", v12, 2u);
    }
  }

  if (a2 != 2)
  {
    if (a2 != 1)
    {
      if (a2)
      {
        if (IMOSLoggingEnabled())
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            LOWORD(v12[0]) = 0;
            _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Delete Verification Codes | Undefined response for onboarding. No action will be taken", v12, 2u);
          }
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v5 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
          {
            LOWORD(v12[0]) = 0;
            _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Delete Verification Codes | Keeping auto-filled verification codes", v12, 2u);
          }
        }

        [*(a1 + 32) setAutoDeletionPreference:0];
      }

      goto LABEL_26;
    }

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12[0]) = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Delete Verification Codes | Moving auto-filled verification codes to Recently Deleted", v12, 2u);
      }
    }

    [*(a1 + 32) setAutoDeletionPreference:1];
    goto LABEL_19;
  }

  v7 = [*(a1 + 32) autoDeletionPreference];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12[0] = 67109120;
      v12[1] = v7;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Delete Verification Codes | Onboarding already presented before. Reading current deletion preference: %{BOOL}d", v12, 8u);
    }
  }

  if (v7)
  {
LABEL_19:
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12[0]) = 0;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Delete Verification Codes | Delete Verification Codes is enabled", v12, 2u);
      }
    }

    [*(a1 + 32) moveOneTimeCodeToRecentlyDeleted:*(a1 + 40)];
  }

LABEL_26:
  v11 = *MEMORY[0x277D85DE8];
}

void sub_22B505EAC(uint64_t a1, void *a2)
{
  [*(a1 + 32) setInteger:1 forKey:*MEMORY[0x277D1A458]];
  v4 = [a2 response];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v4 == 0);
  }

  v6 = *(a1 + 32);
}

uint64_t sub_22B506B18(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Timer fired to clear code with GUID: %@", &v6, 0xCu);
    }
  }

  result = [*(a1 + 40) consumeCodeWithGuid:*(a1 + 32) codeExpired:1];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22B507528(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5074E0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22B507848()
{
  result = [IMDSoundUtilities _installSystemSound:@"Sent Scheduled Message.caf"];
  dword_27D8CFDC8 = result;
  return result;
}

__CFString *_IMDRelayChatStyleStringFromChatStyle(int a1)
{
  switch(a1)
  {
    case '#':
      v2 = &IMDRelayMessageDictionaryChatStyleRoom;
LABEL_7:
      v3 = *v2;

      return v3;
    case '-':
      v2 = &IMDRelayMessageDictionaryChatStyleInstantMessage;
      goto LABEL_7;
    case '+':
      v2 = &IMDRelayMessageDictionaryChatStyleGroup;
      goto LABEL_7;
  }

  v3 = 0;

  return v3;
}

void sub_22B508BD4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B508B28);
  }

  _Unwind_Resume(a1);
}

id sub_22B5094BC()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = qword_281421330;
  v6 = qword_281421330;
  if (!qword_281421330)
  {
    sub_22B5095C0();
    v4[3] = objc_getClass("Libsysdiagnose");
    qword_281421330 = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_22B5095A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22B5095C0()
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_281420EB0;
  v6 = qword_281420EB0;
  if (!qword_281420EB0)
  {
    v7 = xmmword_2787031C0;
    v4[3] = _sl_dlopen();
    qword_281420EB0 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

void sub_22B5096CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22B5096E4(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_281420EB0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

Class sub_22B509774(uint64_t a1)
{
  sub_22B5095C0();
  result = objc_getClass("Libsysdiagnose");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_281421330 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_22B50A054(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 40);
      v8 = 134217984;
      v9 = v3;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Setting timer to evaluate deferred message processing in: %f", &v8, 0xCu);
    }
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  if (v5)
  {
    [v5 invalidate];

    *(*(a1 + 32) + 16) = 0;
    v4 = *(a1 + 32);
  }

  result = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:v4 target:sel__processingTimerFired selector:0 userInfo:0 repeats:*(a1 + 40)];
  *(*(a1 + 32) + 16) = result;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B50A60C()
{
  qword_27D8CFDD0 = objc_alloc_init(IMDCollaborationNoticeTypeGenerator);

  return MEMORY[0x2821F96F8]();
}

void sub_22B50AE9C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x22B50AB48);
  }

  _Unwind_Resume(exception_object);
}

void sub_22B50AF2C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [v8 rootHash];
  v10 = [*(a1 + 32) rootHash];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    v12 = [*(a1 + 40) containsObject:v7];
    v13 = IMOSLoggingEnabled();
    if (v12)
    {
      if (v13)
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v18 = 138412290;
          v19 = v7;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Found a matching handle for the mentioned identity, and it is a valid alias: %@", &v18, 0xCu);
        }
      }

      v15 = 3;
    }

    else
    {
      if (v13)
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v18 = 138412290;
          v19 = v7;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Found a matching handle for mentioned identity, but it does not match any of the user's aliases: %@", &v18, 0xCu);
        }
      }

      v15 = -1;
    }

    *(*(*(a1 + 48) + 8) + 24) = v15;
    *a4 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
}

void *sub_22B50C850()
{
  result = MEMORY[0x231897B50]("PKPeerPaymentMessageTypeFromDataURL", @"PassKitCore");
  off_27D8CFDE0 = result;
  return result;
}

void *sub_22B50C8FC()
{
  result = MEMORY[0x231897B50]("PKPeerPaymentMessageDictionaryRepresentationFromDataURL", @"PassKitCore");
  off_27D8CFDF0 = result;
  return result;
}

void sub_22B50CB60(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B50CA74);
  }

  _Unwind_Resume(a1);
}

void sub_22B50CCF4(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    v8 = 0;
    *&v7 = 138412290;
    v14 = v7;
    do
    {
      v9 = *(a1 + 32);
      if (v9 >= [v6 count] - v8)
      {
        v10 = [v6 count] - v8;
      }

      else
      {
        v10 = *(a1 + 32);
      }

      v11 = [v6 subarrayWithRange:{v8, v10}];
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = v14;
          v16 = v11;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Reporting message: %@", buf, 0xCu);
        }
      }

      IDSReportiMessageSpam();

      v8 += *(a1 + 32);
    }

    while (v8 < [v6 count]);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22B50CFF8(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        [*(a1 + 32) reportSpamMessage:v9];
        if (IMOSLoggingEnabled())
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v20 = v9;
            _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Message Reported - %@", buf, 0xCu);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = [v9 objectForKeyedSubscript:@"recipient-uri"];
            *buf = 138412290;
            v20 = v12;
            _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Receiver URI - %@", buf, 0xCu);
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B50EC08()
{
  qword_281421410 = objc_alloc_init(MEMORY[0x277CBEB18]);

  return MEMORY[0x2821F96F8]();
}

void sub_22B50EC44(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 object];

  if (!v3)
  {
    [*(a1 + 32) addObject:v4];
  }
}

void sub_22B50EE6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B50EE84(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 service];
  if ([v7 isEqual:*(a1 + 32)])
  {
    v8 = [v9 isReplicating];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }

  else
  {
  }
}

void sub_22B50FC68(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B50FC10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22B510A3C(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Forcing an invocation of networkMonitorDidUpdate 10 seconds after setting it up.", v4, 2u);
    }
  }

  return [*(a1 + 32) networkMonitorDidUpdate:*(*(a1 + 32) + 96)];
}

uint64_t sub_22B511D98(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 140) == 1)
  {
    return MEMORY[0x2821F9670](result, sel__processPotentialNetworkChange);
  }

  return result;
}

uint64_t sub_22B511E30(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 140) == 1)
  {
    return MEMORY[0x2821F9670](result, sel__processPotentialNetworkChange);
  }

  return result;
}

void -[IMDServiceSession _blocklistIfNeededForChatDict:](IMDServiceSession *self, SEL a2, id a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"wasReportedAsJunk"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [v3 objectForKeyedSubscript:@"groupID"];
    if (v6)
    {
      v7 = [MEMORY[0x277D1A9E8] sharedInstance];
      [v7 blocklistGroupId:v6];

      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v10 = 138412290;
          v11 = v6;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Blocklisted GroupID: %@", &v10, 0xCu);
        }

LABEL_10:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "IMDServiceSession | Expected to blocklist chat for chatDict: %@ but groupID nil", &v10, 0xCu);
      }

      goto LABEL_10;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B5138E4(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) service];
  if ([v4 groupsMergeDisplayNames])
  {

LABEL_9:
    v9 = 1;
    goto LABEL_10;
  }

  v5 = [v3 displayName];
  v6 = [v5 length];

  if (!v6)
  {
    goto LABEL_9;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v3 guid];
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Rejecting chat %@ as it has a display name and service does not merge display names", &v12, 0xCu);
    }
  }

  v9 = 0;
LABEL_10:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_22B5146F0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t sub_22B51475C()
{
  qword_281420F70 = objc_alloc_init(IMDSpamController);

  return MEMORY[0x2821F96F8]();
}

void sub_22B514A6C(uint64_t a1, uint64_t a2, int a3, void *a4, double a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = a4;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      v13 = 134218754;
      v14 = a2;
      if (a3)
      {
        v11 = @"YES";
      }

      v15 = 2112;
      v16 = v11;
      v17 = 2048;
      v18 = a5;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Server request returned status: %ld, abusive: %@, delay: %f, error: %@", &v13, 0x2Au);
    }
  }

  (*(*(a1 + 32) + 16))(a5);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_22B514EDC(uint64_t a1)
{
  v2 = *(a1 + 32);
  IMComponentsFromChatGUID();
  v3 = 0;
  if ([v3 length])
  {
    [*(a1 + 40) detectSpam:v3 chatGUID:*(a1 + 32)];
  }
}

void sub_22B5153A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = IMOSLoggingEnabled();
  if ((a2 == 6002 || a2 == 0) && v9 == 0)
  {
    if (v10)
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = *(a1 + 32);
        *buf = 138412290;
        v32 = v17;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "detectSpam for Chat Identifier: %@", buf, 0xCu);
      }
    }

    v18 = *(a1 + 40);
    if (v18)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithBool:{a3, @"wasAutoDetectedForSpam"}];
      v30 = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      [v18 updateProperties:v20];

      v21 = +[IMDBroadcastController sharedProvider];
      v22 = [v21 broadcasterForChatListenersUsingBlackholeRegistry:{objc_msgSend(*(a1 + 40), "isBlackholed")}];
      v23 = *(a1 + 32);
      v24 = [*(a1 + 40) properties];
      [v22 chat:v23 propertiesUpdated:v24];

      if (a3)
      {
        v25 = +[IMDMessageStore sharedInstance];
        [v25 databaseChatSpamUpdated:*(a1 + 32)];
      }
    }

    v26 = *(a1 + 48);
    if (a5 >= 0.0)
    {
      [v26 _updateSpamCheckTimerWithInterval:*(a1 + 32) forChatGUID:a5];
    }

    else
    {
      v27 = [v26 chatGUIDToCountMap];
      [v27 removeObjectForKey:*(a1 + 32)];
    }
  }

  else
  {
    if (v10)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = *(a1 + 32);
        *buf = 138412290;
        v32 = v14;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "shouldn't retry again: %@", buf, 0xCu);
      }
    }

    v15 = [*(a1 + 48) chatGUIDToCountMap];
    [v15 removeObjectForKey:*(a1 + 32)];
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_22B5165FC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 200), 8);
  _Unwind_Resume(a1);
}

void sub_22B5166B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [*(a1 + 32) attributedSubstringFromRange:{a3, a4}];
  v9 = [v8 string];
  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_22B7D03B8(v7, v10);
  }

  if ([v9 isEqualToString:*MEMORY[0x277D190A0]])
  {
    *v46 = 0uLL;
    v11 = [*(a1 + 32) attribute:*MEMORY[0x277D19100] atIndex:a3 effectiveRange:v46];
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v45 = v11;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Found GUID for attachment part: %@", buf, 0xCu);
    }

    if ([v11 length])
    {
      v13 = [*(*(*(a1 + 64) + 8) + 40) count];
      [*(*(*(a1 + 64) + 8) + 40) addObject:MEMORY[0x277CBEC10]];
      v14 = *(a1 + 40);
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
      [v14 addObject:v15];

      [*(a1 + 48) addObject:v11];
    }
  }

  else
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 72))
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      *v46 = 138412290;
      *&v46[4] = v17;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Found text part. Generate text parts? %@", v46, 0xCu);
    }

    if (*(a1 + 72) == 1)
    {
      v37 = v8;
      v36 = v9;
      if ([v8 __im_isOnlyAdaptiveImageGlyphFileTransfersAndWhitespaceUsingFileTransferProvider:*(a1 + 56)])
      {
        v18 = [v8 __im_transferGUIDsInAttributedString];
        v19 = [v18 array];
      }

      else
      {
        v20 = *(a1 + 56);
        v42 = 0;
        v18 = [v8 __im_attributedStringByReplacingAdaptiveImageGlyphFileTransfersUsingFileTransferProvider:v20 replacementTextProvider:&unk_283F19748 removedTransferGUIDsOut:&v42];
        v19 = v42;
        v21 = [v18 string];
        v22 = [v21 dataUsingEncoding:4];
        v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
        CFDictionarySetValue(v23, @"Type", @"text/plain");
        if (v22)
        {
          CFDictionarySetValue(v23, @"Data", v22);
        }

        if (@"text")
        {
          CFDictionarySetValue(v23, @"Tag", @"text");
        }

        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"text_%d.txt", objc_msgSend(*(*(*(a1 + 64) + 8) + 40), "count")];
        if (v24)
        {
          CFDictionarySetValue(v23, @"Path", v24);
        }

        [*(*(*(a1 + 64) + 8) + 40) addObject:v23];
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v25 = v19;
      v26 = [v25 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v39;
        v29 = MEMORY[0x277CBEC10];
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v39 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v31 = *(*(&v38 + 1) + 8 * i);
            v32 = [*(*(*(a1 + 64) + 8) + 40) count];
            [*(*(*(a1 + 64) + 8) + 40) addObject:v29];
            v33 = *(a1 + 40);
            v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v32];
            [v33 addObject:v34];

            [*(a1 + 48) addObject:v31];
          }

          v27 = [v25 countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v27);
      }

      v8 = v37;
      v9 = v36;
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

void sub_22B516B9C(uint64_t a1, void *a2)
{
  v6 = [a2 guid];
  v3 = [*(*(*(a1 + 48) + 8) + 40) count];
  [*(*(*(a1 + 48) + 8) + 40) addObject:MEMORY[0x277CBEC10]];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
  [v4 addObject:v5];

  [*(a1 + 40) addObject:v6];
}

void sub_22B516C54(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, int a6, uint64_t a7)
{
  v107 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = IMLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = @"NO";
    if (a6)
    {
      v16 = @"YES";
    }

    *buf = 138412290;
    v102 = v16;
    _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "   Transcode complete  (Succeeded: %@)", buf, 0xCu);
  }

  v17 = IMLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v102 = v14;
    _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "   Error: %@", buf, 0xCu);
  }

  v18 = IMLogHandleForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v102 = v12;
    _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "   Output URLs: %@", buf, 0xCu);
  }

  v19 = IMLogHandleForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v102 = v13;
    _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "   Output Contexts: %@", buf, 0xCu);
  }

  if (a6)
  {
    v20 = [v12 __imFirstObject];
    v21 = [v20 path];

    v22 = [v13 __imFirstObject];
    if (!v21)
    {
      *(*(*(a1 + 112) + 8) + 24) = 1;
      v26 = IMLogHandleForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D04E0(a1, v26);
      }

      [*(a1 + 64) failTransfer:*(a1 + 72) error:v14];
      v21 = [MEMORY[0x277D1AAA8] sharedInstance];
      [v21 trackMMSTranscodeFailureWithReason:2 sourceFile:*(a1 + 32) sizeLimits:*(a1 + 40) lowQualityModeEnabled:0];
      goto LABEL_81;
    }

    v23 = [v12 firstObject];
    if ([v12 count] < 2)
    {
      v24 = 0;
    }

    else
    {
      v24 = [v12 objectAtIndex:1];
    }

    v27 = [MEMORY[0x277D1AAA8] sharedInstance];
    LOBYTE(v88) = 0;
    v93 = v23;
    [v27 trackMMSTranscodeWithReason:2 sourceFile:*(a1 + 32) highQualityFile:v23 lowQualityFile:v24 sizeLimits:*(a1 + 40) transcoded:a7 lowQualityModeEnabled:v88];

    v28 = [v21 lastPathComponent];
    v29 = [v28 stringByDeletingPathExtension];

    v95 = v14;
    v96 = v13;
    v91 = v29;
    v92 = v24;
    if ([v29 length] < 0xB)
    {
      v41 = 0;
      goto LABEL_38;
    }

    v30 = IMLogHandleForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v102 = v29;
      _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Renaming file %@ as it is too long", buf, 0xCu);
    }

    v31 = [v21 stringByDeletingLastPathComponent];
    v32 = [v29 substringToIndex:9];
    v33 = [v31 stringByAppendingPathComponent:v32];
    v34 = [v21 pathExtension];
    v35 = [v33 stringByAppendingPathExtension:v34];

    v36 = [v35 length];
    v37 = IMLogHandleForCategory();
    v38 = v37;
    if (v36)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v102 = v35;
        v103 = 2112;
        v104 = v21;
        _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "New path %@ old Path %@", buf, 0x16u);
      }

      v39 = [MEMORY[0x277CCAA00] defaultManager];
      v100 = 0;
      [v39 moveItemAtPath:v21 toPath:v35 error:&v100];
      v38 = v100;

      if (!v38)
      {
        v42 = v35;

        v41 = 1;
        v21 = v42;
        goto LABEL_37;
      }

      v40 = IMLogHandleForCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v102 = v21;
        v103 = 2112;
        v104 = v35;
        v105 = 2112;
        v106 = v38;
        _os_log_error_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_ERROR, "Error moving file from path %@ to new path %@ with error %@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D049C(v38);
    }

    v41 = 0;
LABEL_37:

LABEL_38:
    v43 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v94 = v22;
    v44 = [v22 objectForKey:*MEMORY[0x277D1ADD0]];
    [v44 doubleValue];
    v46 = v45;

    v47 = [MEMORY[0x277D19250] defaultHFSFileManager];
    value = [v47 MIMETypeOfPath:v21];

    v48 = UTTypeConformsTo(*(a1 + 48), *MEMORY[0x277CC2018]);
    v49 = UTTypeConformsTo(*(a1 + 48), *MEMORY[0x277CC20B0]);
    v50 = UTTypeConformsTo(*(a1 + 48), *MEMORY[0x277CC2020]);
    v51 = @"ref";
    if (v48)
    {
      v52 = SMILPieceAudioTag;
    }

    else
    {
      v52 = SMILPieceVideoTag;
      if (v49)
      {
        v52 = SMILPieceImageTag;
      }

      if (!(v49 | v50))
      {
        goto LABEL_44;
      }
    }

    v53 = *v52;

    v51 = v53;
LABEL_44:
    v54 = [*(a1 + 56) localPath];
    v55 = [v54 lastPathComponent];
    v56 = [v55 stringByDeletingPathExtension];

    if (v41)
    {
      v57 = [v21 lastPathComponent];
      v58 = [v57 stringByDeletingPathExtension];

      v59 = IMLogHandleForCategory();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v102 = v21;
        v103 = 2112;
        v104 = v58;
        v105 = 2112;
        v106 = v56;
        _os_log_impl(&dword_22B4CC000, v59, OS_LOG_TYPE_INFO, "content location updated to using outPutPath %@ content location %@ old content location %@", buf, 0x20u);
      }
    }

    else
    {
      v58 = v56;
    }

    v60 = [MEMORY[0x277D19250] defaultHFSFileManager];
    v99 = 0;
    v61 = [v60 attributesOfItemAtPath:v21 error:&v99];
    v90 = v99;

    v89 = v61;
    v62 = [v61 fileSize];
    v63 = [v21 pathExtension];
    if ([v63 isEqualToString:@"jpeg"])
    {
      v64 = @"jpg";
    }

    else
    {
      v64 = v63;
    }

    v65 = [v58 stringByAppendingPathExtension:v64];

    if (value)
    {
      CFDictionarySetValue(v43, @"Type", value);
    }

    if (v51)
    {
      CFDictionarySetValue(v43, @"Tag", v51);
    }

    if (v21)
    {
      CFDictionarySetValue(v43, @"Filename", v21);
    }

    v66 = [MEMORY[0x277CCABB0] numberWithDouble:v46];
    if (v66)
    {
      CFDictionarySetValue(v43, @"Duration", v66);
    }

    if (v65)
    {
      CFDictionarySetValue(v43, @"Path", v65);
    }

    v67 = IMLogHandleForCategory();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v67, OS_LOG_TYPE_INFO, "Part:", buf, 2u);
    }

    v68 = IMLogHandleForCategory();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v102 = v21;
      _os_log_impl(&dword_22B4CC000, v68, OS_LOG_TYPE_INFO, "  =>              Path: %@", buf, 0xCu);
    }

    v69 = IMLogHandleForCategory();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
    {
      v70 = *(a1 + 48);
      *buf = 138412290;
      v102 = v70;
      _os_log_impl(&dword_22B4CC000, v69, OS_LOG_TYPE_INFO, "  =>               UTI: %@", buf, 0xCu);
    }

    v71 = IMLogHandleForCategory();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v102 = v51;
      _os_log_impl(&dword_22B4CC000, v71, OS_LOG_TYPE_INFO, "  =>               Tag: %@", buf, 0xCu);
    }

    v72 = IMLogHandleForCategory();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v102 = v65;
      _os_log_impl(&dword_22B4CC000, v72, OS_LOG_TYPE_INFO, "  =>  Content Location: %@", buf, 0xCu);
    }

    v73 = IMLogHandleForCategory();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v102 = value;
      _os_log_impl(&dword_22B4CC000, v73, OS_LOG_TYPE_INFO, "  =>              MIME: %@", buf, 0xCu);
    }

    v74 = IMLogHandleForCategory();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v102 = v62;
      _os_log_impl(&dword_22B4CC000, v74, OS_LOG_TYPE_INFO, "  =>         File Size: %llu", buf, 0xCu);
    }

    v75 = IMLogHandleForCategory();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v102 = v43;
      _os_log_impl(&dword_22B4CC000, v75, OS_LOG_TYPE_INFO, "    Generated part: %@", buf, 0xCu);
    }

    v76 = IMLogHandleForCategory();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
    {
      v77 = *(a1 + 120);
      *buf = 138412546;
      v102 = v43;
      v103 = 1024;
      LODWORD(v104) = v77;
      _os_log_impl(&dword_22B4CC000, v76, OS_LOG_TYPE_INFO, "  Setting part %@ into parts at index: %d", buf, 0x12u);
    }

    [*(*(*(a1 + 104) + 8) + 40) replaceObjectAtIndex:*(a1 + 120) withObject:v43];
    v78 = [*(a1 + 64) transferForGUID:*(a1 + 72)];
    v79 = [*(a1 + 80) guid];
    [v78 setMessageGUID:v79];

    [*(a1 + 64) updateTransfer:*(a1 + 72) currentBytes:v62 totalBytes:v62];
    v80 = *(a1 + 64);
    v81 = [*(a1 + 56) guid];
    [v80 startFinalizingTransfer:v81];

    v14 = v95;
    v13 = v96;
    v22 = v94;
LABEL_81:

    goto LABEL_82;
  }

  *(*(*(a1 + 112) + 8) + 24) = 1;
  v25 = IMLogHandleForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D0430(a1);
  }

  [*(a1 + 64) failTransfer:*(a1 + 72) error:v14];
  v22 = [MEMORY[0x277D1AAA8] sharedInstance];
  [v22 trackMMSTranscodeFailureWithReason:2 sourceFile:*(a1 + 32) sizeLimits:*(a1 + 40) lowQualityModeEnabled:0];
LABEL_82:

  if (*(a1 + 88))
  {
    v82 = [MEMORY[0x277CCAA00] defaultManager];
    v83 = *(a1 + 88);
    v98 = 0;
    v84 = [v82 removeItemAtURL:v83 error:&v98];
    v85 = v98;

    if ((v84 & 1) == 0)
    {
      v86 = IMLogHandleForCategory();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D055C((a1 + 88));
      }
    }
  }

  else
  {
    v85 = 0;
  }

  dispatch_group_leave(*(a1 + 96));

  v87 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B517A14(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) fileTransferGUIDs];
    v4 = v3;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v5 = @"NO";
    }

    else
    {
      v5 = @"YES";
    }

    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "  All done part generation set for: %@   success: %@", &v8, 0x16u);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, *(a1 + 32), (*(*(*(a1 + 48) + 8) + 24) & 1) == 0, *(*(*(a1 + 56) + 8) + 40), 0);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22B517C7C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_22B51C16C()
{
  qword_2814211F8 = objc_alloc_init(IMDBackwardCompatibilityMessageIdentifier);

  return MEMORY[0x2821F96F8]();
}

void sub_22B51D380(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CF1B58] readMessageStream];
  v3 = [v2 source];

  v4 = [objc_alloc(MEMORY[0x277CF1A68]) initWithIDSHandle:*(a1 + 32)];
  [v3 sendEvent:v4];

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Donating Read Message Event to Stream for %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

__CFDictionary *sub_22B51EC6C(uint64_t a1, void *a2)
{
  v2 = a2;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = [v2 accessibilityStickerName];
  if (v4)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D19DE8], v4);
  }

  if ([v2 has_adamID])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "adamID")}];
    if (v5)
    {
      v6 = v5;
      CFDictionarySetValue(Mutable, *MEMORY[0x277D19DF0], v5);
    }
  }

  v7 = [v2 bundleID];
  if (v7)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D19E08], v7);
  }

  v8 = [v2 packName];
  if (v8)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D19DF8], v8);
  }

  if (objc_opt_respondsToSelector())
  {
    if ([v2 has_previewGenerationSizeHeight])
    {
      v9 = MEMORY[0x277CCABB0];
      [v2 previewGenerationSizeHeight];
      v10 = [v9 numberWithDouble:?];
      if (v10)
      {
        v11 = v10;
        CFDictionarySetValue(Mutable, *MEMORY[0x277D19E38], v10);
      }
    }

    if ([v2 has_previewGenerationSizeWidth])
    {
      v12 = MEMORY[0x277CCABB0];
      [v2 previewGenerationSizeWidth];
      v13 = [v12 numberWithDouble:?];
      if (v13)
      {
        v14 = v13;
        CFDictionarySetValue(Mutable, *MEMORY[0x277D19E40], v13);
      }
    }
  }

  v15 = [v2 previewGenerationConstraints];
  if (v15)
  {
    v16 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (objc_opt_respondsToSelector())
    {
      if ([v15 has_maxPixelWidth])
      {
        v17 = MEMORY[0x277CCABB0];
        [v15 maxPixelWidth];
        v18 = [v17 numberWithDouble:?];
        if (v18)
        {
          v19 = v18;
          CFDictionarySetValue(v16, *MEMORY[0x277D1A4B0], v18);
        }
      }

      if ([v15 has_minThumbSizeHeight])
      {
        v20 = MEMORY[0x277CCABB0];
        [v15 minThumbSizeHeight];
        v21 = [v20 numberWithDouble:?];
        if (v21)
        {
          v22 = v21;
          CFDictionarySetValue(v16, *MEMORY[0x277D1A4B8], v21);
        }
      }

      if ([v15 has_minThumbSizeWidth])
      {
        v23 = MEMORY[0x277CCABB0];
        [v15 minThumbSizeWidth];
        v24 = [v23 numberWithDouble:?];
        if (v24)
        {
          v25 = v24;
          CFDictionarySetValue(v16, *MEMORY[0x277D1A4C0], v24);
        }
      }

      if ([v15 has_scale])
      {
        v26 = MEMORY[0x277CCABB0];
        [v15 scale];
        v27 = [v26 numberWithDouble:?];
        if (v27)
        {
          v28 = v27;
          CFDictionarySetValue(v16, *MEMORY[0x277D1A4C8], v27);
        }
      }
    }

    v29 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v15, "isSticker")}];
    if (v29)
    {
      CFDictionarySetValue(v16, *MEMORY[0x277D1A4A8], v29);
    }

    if (v16)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277D19E28], v16);
    }
  }

  return Mutable;
}

uint64_t sub_22B51FC34(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 expectedFileSize];
  if (v6 == [v5 expectedFileSize])
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 expectedFileSize];
    if (v8 < [v5 expectedFileSize])
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }
  }

  return v7;
}

void sub_22B51FCBC(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = a2;
  if (a3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"-%d", a3];
  }

  else
  {
    v5 = &stru_283F23018;
  }

  v6 = [@"mmcs-signature-hex" stringByAppendingString:v5];
  v7 = [@"mmcs-owner" stringByAppendingString:v5];
  v8 = [@"mmcs-url" stringByAppendingString:v5];
  v9 = [@"decryption-key" stringByAppendingString:v5];
  v10 = [@"file-size" stringByAppendingString:v5];
  v11 = [v20 encryptionKey];
  if (v11)
  {
    CFDictionarySetValue(*(a1 + 32), v9, v11);
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v20, "expectedFileSize")}];
  if (v12)
  {
    CFDictionarySetValue(*(a1 + 32), v10, v12);
  }

  v13 = [v20 ownerID];
  if (v13)
  {
    CFDictionarySetValue(*(a1 + 32), v7, v13);
  }

  v14 = [v20 signature];
  if (v14)
  {
    CFDictionarySetValue(*(a1 + 32), v6, v14);
  }

  v15 = [v20 attachmentURL];
  v16 = [v15 absoluteString];

  if (v16)
  {
    CFDictionarySetValue(*(a1 + 32), v8, v16);
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    CFDictionarySetValue(*(a1 + 32), @"name", v17);
  }

  v18 = [*(a1 + 48) mimeType];
  if (v18)
  {
    CFDictionarySetValue(*(a1 + 32), @"mime-type", v18);
  }

  v19 = [*(a1 + 48) utiType];
  if (v19)
  {
    CFDictionarySetValue(*(a1 + 32), @"uti-type", v19);
  }
}

void sub_22B520BB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v110 = *MEMORY[0x277D85DE8];
  v99 = a2;
  v5 = [v99 allKeys];
  v100 = [v5 mutableCopy];

  v6 = *MEMORY[0x277CF30D0];
  v7 = [v99 objectForKeyedSubscript:*MEMORY[0x277CF30D0]];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [v99 objectForKeyedSubscript:v6];
    v10 = [*(a1 + 64) _fileTransferMatchingAttribute:v9 inFileTransfers:*(a1 + 32)];
    if (!v10)
    {
      v10 = [*(a1 + 64) _fileTransferMatchingAttribute:v9 inFileTransfers:*(a1 + 40)];
      if (!v10)
      {
        v10 = [*(a1 + 64) fileTransferForBlastDoorFileTransferAttribute:v9 fileTransferGUIDs:*(a1 + 48) supportingStickerAttributes:*(a1 + 72)];
        if (v10)
        {
          [*(a1 + 40) addObject:v10];
        }
      }
    }

    v11 = [v10 guid];
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v13 = Mutable;
    if (v11)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277D19100], v11);
    }

    v14 = [v9 attachmentSubtype];
    v15 = [v14 audioMessage];

    if (v15)
    {
      v16 = [v15 audioTranscription];
      if (v16)
      {
        CFDictionarySetValue(v13, *MEMORY[0x277D196C8], v16);
      }
    }

    if ([v10 isAdaptiveImageGlyph])
    {
      CFDictionarySetValue(v13, *MEMORY[0x277D190F0], MEMORY[0x277CBEC38]);
    }

    [*(a1 + 56) removeAttribute:v6 range:{a3, a4}];
    [v100 removeObject:v6];
    [*(a1 + 56) addAttributes:v13 range:{a3, a4}];
    [*(a1 + 48) addObject:v11];
  }

  v17 = *MEMORY[0x277CF30D8];
  v18 = [v99 objectForKeyedSubscript:*MEMORY[0x277CF30D8]];
  objc_opt_class();
  v19 = objc_opt_isKindOfClass();

  if (v19)
  {
    v20 = [v99 objectForKeyedSubscript:v17];
    v21 = [*(a1 + 64) _fileTransferMatchingAttribute:v20 inFileTransfers:*(a1 + 32)];
    if (!v21)
    {
      v21 = [*(a1 + 64) _fileTransferMatchingAttribute:v20 inFileTransfers:*(a1 + 40)];
      if (!v21)
      {
        v21 = [*(a1 + 64) fileTransferForBlastDoorFileTransferAttribute:v20 fileTransferGUIDs:*(a1 + 48) supportingStickerAttributes:*(a1 + 72)];
        if (v21)
        {
          [*(a1 + 40) addObject:v21];
        }
      }
    }

    v22 = [v21 guid];
    [*(a1 + 56) removeAttribute:v17 range:{a3, a4}];
    [v100 removeObject:v17];
    [*(a1 + 48) addObject:v22];
  }

  v23 = *MEMORY[0x277D190B0];
  v24 = [v99 objectForKeyedSubscript:*MEMORY[0x277D190B0]];
  objc_opt_class();
  v25 = objc_opt_isKindOfClass();

  if (v25)
  {
    v26 = [v99 objectForKeyedSubscript:v23];
    v27 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v28 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v26, "direction")}];
    if (v28)
    {
      CFDictionarySetValue(v27, v23, v28);
    }

    [*(a1 + 56) removeAttribute:v23 range:{a3, a4}];
    [v100 removeObject:v23];
    [*(a1 + 56) addAttributes:v27 range:{a3, a4}];
  }

  v29 = *MEMORY[0x277D19160];
  v30 = [v99 objectForKeyedSubscript:*MEMORY[0x277D19160]];
  objc_opt_class();
  v31 = objc_opt_isKindOfClass();

  if (v31)
  {
    v32 = [v99 objectForKeyedSubscript:v29];
    v33 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v32, "partNumber")}];
    if (v34)
    {
      CFDictionarySetValue(v33, v29, v34);
    }

    [*(a1 + 56) removeAttribute:v29 range:{a3, a4}];
    [v100 removeObject:v29];
    [*(a1 + 56) addAttributes:v33 range:{a3, a4}];
  }

  v35 = *MEMORY[0x277D190D0];
  v36 = [v99 objectForKeyedSubscript:*MEMORY[0x277D190D0]];
  objc_opt_class();
  v37 = objc_opt_isKindOfClass();

  if (v37)
  {
    v38 = [v99 objectForKeyedSubscript:v35];
    v39 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v38, "optionFlags")}];
    if (v40)
    {
      CFDictionarySetValue(v39, v35, v40);
    }

    [*(a1 + 56) removeAttribute:v35 range:{a3, a4}];
    [v100 removeObject:v35];
    [*(a1 + 56) addAttributes:v39 range:{a3, a4}];
  }

  v41 = *MEMORY[0x277D190C8];
  v42 = [v99 objectForKeyedSubscript:*MEMORY[0x277D190C8]];
  objc_opt_class();
  v43 = objc_opt_isKindOfClass();

  if (v43)
  {
    v44 = [v99 objectForKeyedSubscript:v41];
    v45 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v46 = [v44 breadcrumbText];
    if (v46)
    {
      CFDictionarySetValue(v45, v41, v46);
    }

    [*(a1 + 56) removeAttribute:v41 range:{a3, a4}];
    [v100 removeObject:v41];
    [*(a1 + 56) addAttributes:v45 range:{a3, a4}];
  }

  v47 = *MEMORY[0x277D19F28];
  v48 = [v99 objectForKeyedSubscript:*MEMORY[0x277D19F28]];
  objc_opt_class();
  v49 = objc_opt_isKindOfClass();

  if (v49)
  {
    v50 = [v99 objectForKeyedSubscript:v47];
    v51 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v52 = [v50 uri];
    if (v52)
    {
      CFDictionarySetValue(v51, v47, v52);
    }

    [*(a1 + 56) removeAttribute:v47 range:{a3, a4}];
    [v100 removeObject:v47];
    [*(a1 + 56) addAttributes:v51 range:{a3, a4}];
  }

  v53 = *MEMORY[0x277D19140];
  v54 = [v99 objectForKeyedSubscript:*MEMORY[0x277D19140]];
  objc_opt_class();
  v55 = objc_opt_isKindOfClass();

  if (v55)
  {
    v56 = [v99 objectForKeyedSubscript:v53];
    v57 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v58 = [v56 link];
    if (v58)
    {
      CFDictionarySetValue(v57, v53, v58);
    }

    [*(a1 + 56) removeAttribute:v53 range:{a3, a4}];
    [v100 removeObject:v53];
    [*(a1 + 56) addAttributes:v57 range:{a3, a4}];
  }

  v59 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v60 = [v59 isExpressiveTextEnabled];

  if (v60)
  {
    v61 = *MEMORY[0x277D1A7A8];
    v62 = [v99 objectForKeyedSubscript:*MEMORY[0x277D1A7A8]];
    objc_opt_class();
    v63 = objc_opt_isKindOfClass();

    if (v63)
    {
      v64 = [v99 objectForKeyedSubscript:v61];
      v65 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v64, "type")}];
      if (v66)
      {
        CFDictionarySetValue(v65, v61, v66);
      }

      [*(a1 + 56) removeAttribute:v61 range:{a3, a4}];
      [v100 removeObject:v61];
      [*(a1 + 56) addAttributes:v65 range:{a3, a4}];
    }

    v67 = *MEMORY[0x277D1A7A0];
    v68 = [v99 objectForKeyedSubscript:*MEMORY[0x277D1A7A0]];
    objc_opt_class();
    v69 = objc_opt_isKindOfClass();

    if (v69)
    {
      v70 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(v70, v67, &unk_283F4E4B0);
      [*(a1 + 56) removeAttribute:v67 range:{a3, a4}];
      [v100 removeObject:v67];
      [*(a1 + 56) addAttributes:v70 range:{a3, a4}];
    }

    v71 = *MEMORY[0x277D1A7B0];
    v72 = [v99 objectForKeyedSubscript:*MEMORY[0x277D1A7B0]];
    objc_opt_class();
    v73 = objc_opt_isKindOfClass();

    if (v73)
    {
      v74 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(v74, v71, &unk_283F4E4B0);
      [*(a1 + 56) removeAttribute:v71 range:{a3, a4}];
      [v100 removeObject:v71];
      [*(a1 + 56) addAttributes:v74 range:{a3, a4}];
    }

    v75 = *MEMORY[0x277D1A7C0];
    v76 = [v99 objectForKeyedSubscript:*MEMORY[0x277D1A7C0]];
    objc_opt_class();
    v77 = objc_opt_isKindOfClass();

    if (v77)
    {
      v78 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(v78, v75, &unk_283F4E4B0);
      [*(a1 + 56) removeAttribute:v75 range:{a3, a4}];
      [v100 removeObject:v75];
      [*(a1 + 56) addAttributes:v78 range:{a3, a4}];
    }

    v79 = *MEMORY[0x277D1A7B8];
    v80 = [v99 objectForKeyedSubscript:*MEMORY[0x277D1A7B8]];
    objc_opt_class();
    v81 = objc_opt_isKindOfClass();

    if (v81)
    {
      v82 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(v82, v79, &unk_283F4E4B0);
      [*(a1 + 56) removeAttribute:v79 range:{a3, a4}];
      [v100 removeObject:v79];
      [*(a1 + 56) addAttributes:v82 range:{a3, a4}];
    }
  }

  v83 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v84 = [v83 isRichLinkImprovementsEnabled];

  if (v84)
  {
    v85 = *MEMORY[0x277D19F20];
    v86 = [v99 objectForKeyedSubscript:*MEMORY[0x277D19F20]];
    objc_opt_class();
    v87 = objc_opt_isKindOfClass();

    if (v87)
    {
      v88 = [v99 objectForKeyedSubscript:v85];
      v89 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v90 = [v88 isRichLink];
      v91 = [MEMORY[0x277CCABB0] numberWithBool:v90];
      if (v91)
      {
        CFDictionarySetValue(v89, v85, v91);
      }

      [*(a1 + 56) removeAttribute:v85 range:{a3, a4}];
      [v100 removeObject:v85];
      [*(a1 + 56) addAttributes:v89 range:{a3, a4}];
    }
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v92 = v100;
  v93 = [v92 countByEnumeratingWithState:&v103 objects:v109 count:16];
  if (v93)
  {
    v94 = *v104;
    do
    {
      for (i = 0; i != v93; ++i)
      {
        if (*v104 != v94)
        {
          objc_enumerationMutation(v92);
        }

        v96 = *(*(&v103 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          v97 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v108 = v96;
            _os_log_impl(&dword_22B4CC000, v97, OS_LOG_TYPE_INFO, "<WARNING> Unhandled attribute, removing it: %@", buf, 0xCu);
          }
        }

        [*(a1 + 56) removeAttribute:v96 range:{a3, a4}];
      }

      v93 = [v92 countByEnumeratingWithState:&v103 objects:v109 count:16];
    }

    while (v93);
  }

  v98 = *MEMORY[0x277D85DE8];
}
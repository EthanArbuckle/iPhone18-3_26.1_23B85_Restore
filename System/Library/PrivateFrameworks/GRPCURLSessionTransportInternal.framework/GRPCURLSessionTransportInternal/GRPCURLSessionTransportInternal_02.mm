uint64_t sub_24DD2FD8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24DD3C1AC(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24DD3C18C(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URLSessionTransport.State(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD3CBF8(v2, v15, type metadata accessor for URLSessionTransport.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_24DD3CBF8(v15, v7, sub_24DD3C1AC);
      sub_24DD37960();
      v21 = v20;
      sub_24DD3CBF8(v7, v2, sub_24DD3C1AC);
      swift_storeEnumTagMultiPayload();
      *a1 = v21;
LABEL_8:
      type metadata accessor for URLSessionTransport.State.CancelConnectAction(0);
      return swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
    type metadata accessor for URLSessionTransport.State.CancelConnectAction(0);
    swift_storeEnumTagMultiPayload();
    result = swift_getEnumCaseMultiPayload();
    if (result > 1)
    {
      if (result != 2)
      {
        return result;
      }

      v30 = *v15;

      v31 = *(v4 + 20);
    }

    else
    {
      if (!result)
      {
        v29 = *v15;
      }

      v38 = *v15;

      v31 = *(v8 + 20);
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    return (*(*(v39 - 8) + 8))(&v15[v31], v39);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v17 = *v15;
      swift_storeEnumTagMultiPayload();
      sub_24DD4B334();
      sub_24DD3D308(&qword_27F1AF598, MEMORY[0x277D85678]);
      v18 = swift_allocError();
      sub_24DD4B104();
      *a1 = v17;
      *(a1 + 8) = v18;
      *(a1 + 16) = 0;
      *(a1 + 24) = 1;
      type metadata accessor for URLSessionTransport.State.CancelConnectAction(0);
      return swift_storeEnumTagMultiPayload();
    }

    sub_24DD3CBF8(v15, v11, sub_24DD3C18C);
    if (*(*v11 + 16))
    {
      sub_24DD37960();
      v23 = v22;
      *v2 = *v11;
      *(v2 + 8) = *(v11 + 8);
      v24 = *(v8 + 20);
      v25 = *(v4 + 20);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
      v27 = *(v26 - 8);
      (*(v27 + 16))(v2 + v25, &v11[v24], v26);
      v28 = *v11;

      (*(v27 + 8))(&v11[v24], v26);
      swift_storeEnumTagMultiPayload();
      *a1 = v23;
      goto LABEL_8;
    }

    swift_storeEnumTagMultiPayload();
    v32 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B08A8, &qword_24DD4DA68) + 48);
    v33 = *(v8 + 20);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    v35 = *(v34 - 8);
    (*(v35 + 16))(a1, &v11[v33], v34);
    sub_24DD4B334();
    sub_24DD3D308(&qword_27F1AF598, MEMORY[0x277D85678]);
    v36 = swift_allocError();
    sub_24DD4B104();
    *v32 = v36;
    *(v32 + 8) = 1;
    type metadata accessor for URLSessionTransport.State.CancelConnectAction(0);
    swift_storeEnumTagMultiPayload();
    v37 = *v11;

    return (*(v35 + 8))(&v11[v33], v34);
  }
}

Swift::Void __swiftcall URLSessionTransport.beginGracefulShutdown()()
{
  v1 = v0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06D0, &qword_24DD4D6E8);
  v40 = *(v45 - 8);
  v2 = *(v40 + 64);
  MEMORY[0x28223BE20](v45);
  v4 = &v39 - v3;
  v5 = sub_24DD4AFE4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v41 = *(v44 - 1);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v44);
  v11 = &v39 - v10;
  v12 = type metadata accessor for URLSessionTransport.State.BeginGracefulShutdownAction(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v43 = (&v39 - v17);
  v18 = sub_24DD4B084();
  v19 = sub_24DD4B414();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_24DD09000, v18, v19, "Beginning graceful shutdown for URLSession transport", v20, 2u);
    MEMORY[0x253038870](v20, -1, -1);
  }

  v21 = (v1 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state));
  v22 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06E0, &qword_24DD4D6F8) + 28);
  v23 = v43;
  sub_24DD307EC(v43);
  os_unfair_lock_unlock(v21);
  sub_24DD3BD4C(v23, v16, type metadata accessor for URLSessionTransport.State.BeginGracefulShutdownAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = *v16;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06E8, &qword_24DD4D700);
      v27 = v42;
      (*(v6 + 32))(v42, &v16[*(v26 + 48)], v5);
      v28 = *(v25 + 16);
      if (v28)
      {
        v29 = v40 + 16;
        v44 = *(v40 + 16);
        v30 = v25 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
        v31 = v6;
        v32 = *(v40 + 72);
        v40 = v25;
        v41 = v31;
        v33 = (v31 + 16);
        v34 = v45;
        do
        {
          v44(v4, v30, v34);
          sub_24DD3D308(&qword_27F1AF400, MEMORY[0x277D0B938]);
          v35 = swift_allocError();
          (*v33)(v36, v27, v5);
          v46 = v35;
          sub_24DD4B304();
          v34 = v45;
          (*(v29 - 8))(v4, v45);
          v30 += v32;
          --v28;
        }

        while (v28);

        v6 = v41;
        v23 = v43;
      }

      else
      {
      }

      (*(v6 + 8))(v27, v5);
    }
  }

  else
  {
    v37 = v41;
    v38 = v44;
    (*(v41 + 32))(v11, v16, v44);
    sub_24DD4B314();
    (*(v37 + 8))(v11, v38);
  }

  sub_24DD3BCCC(v23, type metadata accessor for URLSessionTransport.State.BeginGracefulShutdownAction);
}

uint64_t sub_24DD307EC@<X0>(void *a1@<X8>)
{
  v3 = sub_24DD3C18C(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = sub_24DD4AF64();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_24DD4AFC4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = type metadata accessor for URLSessionTransport.State(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD3CBF8(v1, v17, type metadata accessor for URLSessionTransport.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_24DD3CBF8(v17, v1, sub_24DD3C1AC);
LABEL_8:
      swift_storeEnumTagMultiPayload();
      type metadata accessor for URLSessionTransport.State.BeginGracefulShutdownAction(0);
      return swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
    type metadata accessor for URLSessionTransport.State.BeginGracefulShutdownAction(0);
    swift_storeEnumTagMultiPayload();
    result = swift_getEnumCaseMultiPayload();
    if (result > 1)
    {
      if (result != 2)
      {
        return result;
      }

      v28 = *v17;

      v29 = *(sub_24DD3C1AC(0) + 20);
    }

    else
    {
      if (!result)
      {
        v27 = *v17;
      }

      v34 = *v17;

      v29 = *(v3 + 20);
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    return (*(*(v35 - 8) + 8))(&v17[v29], v35);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v19 = *v17;
      swift_storeEnumTagMultiPayload();
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06E8, &qword_24DD4D700) + 48);
      *a1 = v19;

      sub_24DD4AF84();
      MEMORY[0x2530379D0](MEMORY[0x277D84F90]);
      sub_24DD4AFD4();

      type metadata accessor for URLSessionTransport.State.BeginGracefulShutdownAction(0);
      return swift_storeEnumTagMultiPayload();
    }

    sub_24DD3CBF8(v17, v9, sub_24DD3C18C);
    if (*(*v9 + 16))
    {
      sub_24DD3CBF8(v9, v7, sub_24DD3C18C);
      *v1 = *v7;
      *(v1 + 8) = *(v7 + 8);
      v22 = *(v3 + 20);
      v23 = *(sub_24DD3C1AC(0) + 20);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
      v25 = *(v24 - 8);
      (*(v25 + 16))(v1 + v23, &v7[v22], v24);
      v26 = *v7;

      (*(v25 + 8))(&v7[v22], v24);
      goto LABEL_8;
    }

    swift_storeEnumTagMultiPayload();
    v30 = *(v3 + 20);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    v32 = *(v31 - 8);
    (*(v32 + 16))(a1, &v9[v30], v31);
    type metadata accessor for URLSessionTransport.State.BeginGracefulShutdownAction(0);
    swift_storeEnumTagMultiPayload();
    v33 = *v9;

    return (*(v32 + 8))(&v9[v30], v31);
  }
}

void sub_24DD30D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DD4AFE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URLSessionTransport.State.EnqueueAction(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (a2 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state);
  os_unfair_lock_lock((a2 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state));
  v14 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06E0, &qword_24DD4D6F8) + 28);
  sub_24DD311E0(a1, v12);
  os_unfair_lock_unlock(v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v5 + 32))(v8, v12, v4);
      v16 = sub_24DD4B084();
      v17 = sub_24DD4B424();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_24DD09000, v16, v17, "Rejecting stream", v18, 2u);
        MEMORY[0x253038870](v18, -1, -1);
      }

      sub_24DD3D308(&qword_27F1AF400, MEMORY[0x277D0B938]);
      v19 = swift_allocError();
      (*(v5 + 16))(v20, v8, v4);
      v37 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06D0, &qword_24DD4D6E8);
      sub_24DD4B304();
      (*(v5 + 8))(v8, v4);
    }

    else
    {
      v30 = sub_24DD4B084();
      v31 = sub_24DD4B424();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_24DD09000, v30, v31, "Enqueued request for a stream", v32, 2u);
        MEMORY[0x253038870](v32, -1, -1);
      }
    }
  }

  else
  {
    v22 = *v12;
    v21 = v12[1];
    v23 = sub_24DD4B084();
    v24 = sub_24DD4B424();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36 = v26;
      v37 = 0;
      *v25 = 136315138;
      v38 = 0xE000000000000000;
      v34 = 0x726F70736E617274;
      v35 = 0xEA00000000005F74;
      v33 = v22;
      v27 = sub_24DD4B624();
      MEMORY[0x253037C70](v27);

      MEMORY[0x253037C70](v34, v35);

      MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
      v34 = v21;
      v28 = sub_24DD4B624();
      MEMORY[0x253037C70](v28);

      v29 = sub_24DD38DE0(v37, v38, &v36);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_24DD09000, v23, v24, "Dequeued stream %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x253038870](v26, -1, -1);
      MEMORY[0x253038870](v25, -1, -1);
    }

    v37 = v22;
    v38 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06D0, &qword_24DD4D6E8);
    sub_24DD4B314();
  }
}

uint64_t sub_24DD311E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a1;
  v37 = a2;
  v3 = sub_24DD4AF64();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_24DD4AFC4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_24DD3C18C(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06D0, &qword_24DD4D6E8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  v16 = type metadata accessor for URLSessionTransport.State(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD3CBF8(v2, v19, type metadata accessor for URLSessionTransport.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_24DD3CBF8(v19, v2, sub_24DD3C1AC);
      swift_storeEnumTagMultiPayload();
      sub_24DD4AF84();
      MEMORY[0x2530379D0](MEMORY[0x277D84F90]);
      sub_24DD4AFD4();
      type metadata accessor for URLSessionTransport.State.EnqueueAction(0);
      return swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
    sub_24DD4AF84();
    MEMORY[0x2530379D0](MEMORY[0x277D84F90]);
    sub_24DD4AFD4();
    type metadata accessor for URLSessionTransport.State.EnqueueAction(0);
    swift_storeEnumTagMultiPayload();
    result = swift_getEnumCaseMultiPayload();
    if (result > 1)
    {
      if (result != 2)
      {
        return result;
      }

      v31 = *v19;

      v32 = *(sub_24DD3C1AC(0) + 20);
    }

    else
    {
      if (!result)
      {
        v30 = *v19;
      }

      v33 = *v19;

      v32 = *(v7 + 20);
    }

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    return (*(*(v34 - 8) + 8))(&v19[v32], v34);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_24DD3CBF8(v19, v10, sub_24DD3C18C);
    v26 = v10[1];
    v25 = v10[2];
    v10[2] = v25 + 1;
    v27 = *v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v10;
    sub_24DD3A018(0, v26, v25, isUniquelyReferenced_nonNull_native);
    *v10 = v38;
    sub_24DD3CBF8(v10, v2, sub_24DD3C18C);
    swift_storeEnumTagMultiPayload();
    v29 = v37;
    *v37 = v26;
    v29[1] = v25;
    type metadata accessor for URLSessionTransport.State.EnqueueAction(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v21 = *v19;
    (*(v12 + 16))(v15, v36, v11);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_24DD4A2A0(0, v21[2] + 1, 1, v21);
    }

    v23 = v21[2];
    v22 = v21[3];
    if (v23 >= v22 >> 1)
    {
      v21 = sub_24DD4A2A0(v22 > 1, v23 + 1, 1, v21);
    }

    v21[2] = v23 + 1;
    (*(v12 + 32))(v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v23, v15, v11);
    *v2 = v21;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for URLSessionTransport.State.EnqueueAction(0);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t URLSessionTransport.withStream<A>(descriptor:options:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[21] = a6;
  v7[22] = v6;
  v7[19] = a4;
  v7[20] = a5;
  v7[17] = a2;
  v7[18] = a3;
  v7[16] = a1;
  v8 = *(*(sub_24DD4AF64() - 8) + 64) + 15;
  v7[23] = swift_task_alloc();
  v9 = *(*(sub_24DD4AFC4() - 8) + 64) + 15;
  v7[24] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF610, &unk_24DD4CBB0) - 8) + 64) + 15;
  v7[25] = swift_task_alloc();
  v11 = sub_24DD4ADF4();
  v7[26] = v11;
  v12 = *(v11 - 8);
  v7[27] = v12;
  v13 = *(v12 + 64) + 15;
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v14 = sub_24DD4ABD4();
  v7[30] = v14;
  v15 = *(v14 - 8);
  v7[31] = v15;
  v16 = *(v15 + 64) + 15;
  v7[32] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06F0, &qword_24DD4D718) - 8) + 64) + 15;
  v7[33] = swift_task_alloc();
  v18 = sub_24DD4AD44();
  v7[34] = v18;
  v19 = *(v18 - 8);
  v7[35] = v19;
  v20 = *(v19 + 64) + 15;
  v7[36] = swift_task_alloc();
  v21 = sub_24DD4AFE4();
  v7[37] = v21;
  v22 = *(v21 - 8);
  v7[38] = v22;
  v23 = *(v22 + 64) + 15;
  v7[39] = swift_task_alloc();
  v24 = type metadata accessor for URLSessionTransport.State.OpenStreamAction(0);
  v7[40] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v7[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DD31A14, 0, 0);
}

uint64_t sub_24DD31A14()
{
  v116 = v0;
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = (*(v0 + 176) + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state);
  os_unfair_lock_lock(v3);
  v4 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06E0, &qword_24DD4D6F8) + 28);
  sub_24DD33608(v1);
  os_unfair_lock_unlock(v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v10 = *(v0 + 328);
    v11 = *v10;
    v12 = v10[1];
    *(v0 + 352) = *v10;
    *(v0 + 360) = v12;
    v13 = *(v0 + 176);
    (*(*(v0 + 280) + 16))(*(v0 + 288), *(v0 + 136), *(v0 + 272));
    v14 = sub_24DD4B084();
    v15 = sub_24DD4B414();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 280);
    v18 = *(v0 + 288);
    v19 = *(v0 + 272);
    v107 = v12;
    v108 = v11;
    if (v16)
    {
      v20 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v111 = v104;
      v112 = 0;
      *v20 = 136315394;
      v113 = 0xE000000000000000;
      v114 = 0x726F70736E617274;
      v115 = 0xEA00000000005F74;
      *(v0 + 112) = v11;
      v102 = v15;
      v21 = sub_24DD4B624();
      MEMORY[0x253037C70](v21);

      MEMORY[0x253037C70](v114, v115);

      MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
      *(v0 + 120) = v12;
      v22 = sub_24DD4B624();
      MEMORY[0x253037C70](v22);

      v23 = sub_24DD38DE0(v112, v113, &v111);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      sub_24DD3D308(&qword_27F1B0730, MEMORY[0x277D0B888]);
      v24 = sub_24DD4B624();
      v26 = v25;
      (*(v17 + 8))(v18, v19);
      v27 = sub_24DD38DE0(v24, v26, &v111);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_24DD09000, v14, v102, "Opened stream %s for %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253038870](v104, -1, -1);
      MEMORY[0x253038870](v20, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v18, v19);
    }

    v32 = *(v0 + 256);
    v31 = *(v0 + 264);
    v33 = *(v0 + 240);
    v34 = *(v0 + 248);
    v35 = *(v0 + 208);
    v36 = *(v0 + 216);
    v37 = *(v0 + 200);
    v38 = *(v0 + 176);
    v39 = *(v0 + 144);
    URLSessionTransport.config(forMethod:)(*(v0 + 136), v31);
    (*(v34 + 16))(v32, v39, v33);
    CallOptions.formUnion(with:)(v31);
    sub_24DD4AB74();
    v40 = *(v36 + 48);
    v41 = v40(v37, 1, v35);
    v42 = *(v0 + 232);
    v43 = *(v0 + 208);
    v44 = *(v0 + 216);
    v45 = *(v0 + 200);
    if (v41 == 1)
    {
      v46 = *(v0 + 176) + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_config;
      v47 = type metadata accessor for URLSessionTransport.Config();
      (*(v44 + 16))(v42, v46 + *(v47 + 32), v43);
      if (v40(v45, 1, v43) != 1)
      {
        sub_24DD1C414(*(v0 + 200), &qword_27F1AF610, &unk_24DD4CBB0);
      }
    }

    else
    {
      (*(v44 + 32))(*(v0 + 232), *(v0 + 200), *(v0 + 208));
    }

    v48 = *(v0 + 232);
    v49 = sub_24DD3EC44();
    if ((v49 & 1) == 0)
    {
      (*(*(v0 + 216) + 16))(*(v0 + 224), *(v0 + 232), *(v0 + 208));
      v67 = sub_24DD4B084();
      v68 = sub_24DD4B444();
      v69 = os_log_type_enabled(v67, v68);
      v71 = *(v0 + 216);
      v70 = *(v0 + 224);
      v72 = *(v0 + 208);
      if (v69)
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v114 = v74;
        *v73 = 136315138;
        v110 = sub_24DD3EAB0();
        v76 = v75;
        v77 = *(v71 + 8);
        v77(v70, v72);
        v78 = v77;
        v79 = sub_24DD38DE0(v110, v76, &v114);

        *(v73 + 4) = v79;
        _os_log_impl(&dword_24DD09000, v67, v68, "Failing request because %s compression isn't supported", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v74);
        MEMORY[0x253038870](v74, -1, -1);
        MEMORY[0x253038870](v73, -1, -1);
      }

      else
      {

        v80 = *(v71 + 8);
        v80(v70, v72);
        v78 = v80;
      }

      v81 = *(v0 + 296);
      v82 = *(v0 + 248);
      v103 = *(v0 + 240);
      v105 = *(v0 + 256);
      v83 = *(v0 + 232);
      v99 = *(v0 + 264);
      v100 = *(v0 + 208);
      v84 = *(v0 + 184);
      v85 = *(v0 + 192);
      v101 = *(v0 + 176);
      sub_24DD4AFA4();
      v114 = 0;
      v115 = 0xE000000000000000;
      sub_24DD4B534();
      MEMORY[0x253037C70](0xD000000000000025, 0x800000024DD524E0);
      v86 = sub_24DD3EAB0();
      MEMORY[0x253037C70](v86);

      MEMORY[0x253037C70](0x736572706D6F6320, 0xED00002E6E6F6973);
      MEMORY[0x2530379D0](MEMORY[0x277D84F90]);
      sub_24DD3D308(&qword_27F1AF400, MEMORY[0x277D0B938]);
      swift_allocError();
      sub_24DD4AFD4();
      swift_willThrow();
      sub_24DD1C414(v99, &qword_27F1B06F0, &qword_24DD4D718);
      v78(v83, v100);
      (*(v82 + 8))(v105, v103);
      sub_24DD33A10(v101, v108, v107);
      goto LABEL_24;
    }

    v51 = (*(v0 + 176) + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_config);
    v52 = v51[1];
    if (v52 < *v51)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 16) = *v51;
      *(v0 + 24) = v52;
      *(v0 + 32) = 0;
      *(v0 + 40) = sub_24DD33DF0;
      *(v0 + 48) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0700, &qword_24DD4D720);
      swift_allocObject();
      v53 = sub_24DD2D6DC(v0 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0708, &qword_24DD4D728);
      v54 = swift_allocObject();
      *(v0 + 368) = v54;
      *(v54 + 16) = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0710, &qword_24DD4D730);
      v49 = swift_allocObject();
      *(v0 + 376) = v49;
      *(v49 + 16) = v53;
      v55 = v51[2];
      v56 = v51[3];
      if (v56 >= v55)
      {
        v57 = v49;
        v58 = *(v0 + 256);
        v59 = *(v0 + 232);
        v60 = *(v0 + 136);
        *(v0 + 56) = v55;
        *(v0 + 64) = v56;
        *(v0 + 72) = 0;
        *(v0 + 80) = sub_24DD33F68;
        *(v0 + 88) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0718, &qword_24DD4D738);
        swift_allocObject();

        v106 = *(v0 + 168);
        v109 = *(v0 + 152);
        v61 = sub_24DD2D480(v0 + 56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0720, &qword_24DD4D740);
        v62 = swift_allocObject();
        *(v0 + 384) = v62;
        *(v62 + 16) = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0728, &qword_24DD4D748);
        v63 = swift_allocObject();
        *(v0 + 392) = v63;
        *(v63 + 16) = v61;
        v64 = swift_task_alloc();
        *(v0 + 400) = v64;
        *(v64 + 16) = v106;
        *(v64 + 32) = v108;
        *(v64 + 40) = v107;
        *(v64 + 48) = v60;
        *(v64 + 56) = v58;
        *(v64 + 64) = v59;
        *(v64 + 72) = v63;
        *(v64 + 80) = v54;
        *(v64 + 88) = v57;
        *(v64 + 96) = v62;
        *(v64 + 104) = v109;
        v65 = *(MEMORY[0x277D859B8] + 4);

        v66 = swift_task_alloc();
        *(v0 + 408) = v66;
        *v66 = v0;
        v66[1] = sub_24DD331CC;
        v49 = *(v0 + 128);
        v118 = *(v0 + 168);
        v50 = MEMORY[0x277D84F78] + 8;

        return MEMORY[0x282200740](v49, v50);
      }
    }

    __break(1u);
    return MEMORY[0x282200740](v49, v50);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = *(v0 + 304);
    v6 = *(v0 + 312);
    v8 = *(v0 + 296);
    (*(v7 + 32))(v6, *(v0 + 328), v8);
    sub_24DD3D308(&qword_27F1AF400, MEMORY[0x277D0B938]);
    swift_allocError();
    (*(v7 + 16))(v9, v6, v8);
    swift_willThrow();
    (*(v7 + 8))(v6, v8);
LABEL_24:
    v87 = *(v0 + 328);
    v88 = *(v0 + 312);
    v89 = *(v0 + 288);
    v91 = *(v0 + 256);
    v90 = *(v0 + 264);
    v93 = *(v0 + 224);
    v92 = *(v0 + 232);
    v95 = *(v0 + 192);
    v94 = *(v0 + 200);
    v96 = *(v0 + 184);

    v97 = *(v0 + 8);

    return v97();
  }

  v28 = *(MEMORY[0x277D85A40] + 4);
  v29 = swift_task_alloc();
  *(v0 + 336) = v29;
  *v29 = v0;
  v29[1] = sub_24DD325E4;
  v30 = *(v0 + 176);

  return MEMORY[0x2822008A0](v0 + 96, 0, 0, 0x5365756575716E65, 0xEF29286D61657274, sub_24DD3BCC4, v30, &type metadata for StreamID);
}

uint64_t sub_24DD325E4()
{
  v2 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = sub_24DD330E0;
  }

  else
  {
    v3 = sub_24DD326F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24DD326F8()
{
  v104 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  *(v0 + 352) = v1;
  *(v0 + 360) = v2;
  v3 = *(v0 + 176);
  (*(*(v0 + 280) + 16))(*(v0 + 288), *(v0 + 136), *(v0 + 272));
  v4 = sub_24DD4B084();
  v5 = sub_24DD4B414();
  v97 = v2;
  v98 = v1;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 280);
    v89 = *(v0 + 272);
    v91 = *(v0 + 288);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v99 = v8;
    v100 = 0;
    *v7 = 136315394;
    v101 = 0xE000000000000000;
    v102 = 0x726F70736E617274;
    v103 = 0xEA00000000005F74;
    *(v0 + 112) = v1;
    v9 = sub_24DD4B624();
    MEMORY[0x253037C70](v9);

    MEMORY[0x253037C70](v102, v103);

    MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
    *(v0 + 120) = v2;
    v10 = sub_24DD4B624();
    MEMORY[0x253037C70](v10);

    v11 = sub_24DD38DE0(v100, v101, &v99);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    sub_24DD3D308(&qword_27F1B0730, MEMORY[0x277D0B888]);
    v12 = sub_24DD4B624();
    v14 = v13;
    (*(v6 + 8))(v91, v89);
    v15 = sub_24DD38DE0(v12, v14, &v99);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_24DD09000, v4, v5, "Opened stream %s for %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253038870](v8, -1, -1);
    MEMORY[0x253038870](v7, -1, -1);
  }

  else
  {
    v17 = *(v0 + 280);
    v16 = *(v0 + 288);
    v18 = *(v0 + 272);

    (*(v17 + 8))(v16, v18);
  }

  v20 = *(v0 + 256);
  v19 = *(v0 + 264);
  v21 = *(v0 + 240);
  v22 = *(v0 + 248);
  v23 = *(v0 + 208);
  v24 = *(v0 + 216);
  v25 = *(v0 + 200);
  v26 = *(v0 + 176);
  v27 = *(v0 + 144);
  URLSessionTransport.config(forMethod:)(*(v0 + 136), v19);
  (*(v22 + 16))(v20, v27, v21);
  CallOptions.formUnion(with:)(v19);
  sub_24DD4AB74();
  v28 = *(v24 + 48);
  v29 = v28(v25, 1, v23);
  v30 = *(v0 + 232);
  v31 = *(v0 + 208);
  v32 = *(v0 + 216);
  v33 = *(v0 + 200);
  if (v29 == 1)
  {
    v34 = *(v0 + 176) + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_config;
    v35 = type metadata accessor for URLSessionTransport.Config();
    (*(v32 + 16))(v30, v34 + *(v35 + 32), v31);
    if (v28(v33, 1, v31) != 1)
    {
      sub_24DD1C414(*(v0 + 200), &qword_27F1AF610, &unk_24DD4CBB0);
    }
  }

  else
  {
    (*(v32 + 32))(*(v0 + 232), *(v0 + 200), *(v0 + 208));
  }

  v36 = *(v0 + 232);
  v37 = sub_24DD3EC44();
  if (v37)
  {
    v39 = (*(v0 + 176) + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_config);
    v40 = v39[1];
    if (v40 < *v39)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 16) = *v39;
      *(v0 + 24) = v40;
      *(v0 + 32) = 0;
      *(v0 + 40) = sub_24DD33DF0;
      *(v0 + 48) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0700, &qword_24DD4D720);
      swift_allocObject();
      v41 = sub_24DD2D6DC(v0 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0708, &qword_24DD4D728);
      v42 = swift_allocObject();
      *(v0 + 368) = v42;
      *(v42 + 16) = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0710, &qword_24DD4D730);
      v37 = swift_allocObject();
      *(v0 + 376) = v37;
      *(v37 + 16) = v41;
      v43 = v39[2];
      v44 = v39[3];
      if (v44 >= v43)
      {
        v45 = v37;
        v46 = *(v0 + 256);
        v47 = *(v0 + 232);
        v48 = *(v0 + 136);
        *(v0 + 56) = v43;
        *(v0 + 64) = v44;
        *(v0 + 72) = 0;
        *(v0 + 80) = sub_24DD33F68;
        *(v0 + 88) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0718, &qword_24DD4D738);
        swift_allocObject();

        v93 = *(v0 + 168);
        v96 = *(v0 + 152);
        v49 = sub_24DD2D480(v0 + 56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0720, &qword_24DD4D740);
        v50 = swift_allocObject();
        *(v0 + 384) = v50;
        *(v50 + 16) = v49;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0728, &qword_24DD4D748);
        v51 = swift_allocObject();
        *(v0 + 392) = v51;
        *(v51 + 16) = v49;
        v52 = swift_task_alloc();
        *(v0 + 400) = v52;
        *(v52 + 16) = v93;
        *(v52 + 32) = v98;
        *(v52 + 40) = v97;
        *(v52 + 48) = v48;
        *(v52 + 56) = v46;
        *(v52 + 64) = v47;
        *(v52 + 72) = v51;
        *(v52 + 80) = v42;
        *(v52 + 88) = v45;
        *(v52 + 96) = v50;
        *(v52 + 104) = v96;
        v53 = *(MEMORY[0x277D859B8] + 4);

        v54 = swift_task_alloc();
        *(v0 + 408) = v54;
        *v54 = v0;
        v54[1] = sub_24DD331CC;
        v37 = *(v0 + 128);
        v106 = *(v0 + 168);
        v38 = MEMORY[0x277D84F78] + 8;

        return MEMORY[0x282200740](v37, v38);
      }
    }

    __break(1u);
    return MEMORY[0x282200740](v37, v38);
  }

  (*(*(v0 + 216) + 16))(*(v0 + 224), *(v0 + 232), *(v0 + 208));
  v55 = sub_24DD4B084();
  v56 = sub_24DD4B444();
  v57 = os_log_type_enabled(v55, v56);
  v59 = *(v0 + 216);
  v58 = *(v0 + 224);
  v60 = *(v0 + 208);
  if (v57)
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v102 = v62;
    *v61 = 136315138;
    v94 = sub_24DD3EAB0();
    v64 = v63;
    v65 = *(v59 + 8);
    v65(v58, v60);
    v66 = v65;
    v67 = sub_24DD38DE0(v94, v64, &v102);

    *(v61 + 4) = v67;
    _os_log_impl(&dword_24DD09000, v55, v56, "Failing request because %s compression isn't supported", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x253038870](v62, -1, -1);
    MEMORY[0x253038870](v61, -1, -1);
  }

  else
  {

    v68 = *(v59 + 8);
    v68(v58, v60);
    v66 = v68;
  }

  v69 = *(v0 + 296);
  v70 = *(v0 + 248);
  v92 = *(v0 + 240);
  v95 = *(v0 + 256);
  v71 = *(v0 + 232);
  v87 = *(v0 + 264);
  v88 = *(v0 + 208);
  v72 = *(v0 + 184);
  v73 = *(v0 + 192);
  v90 = *(v0 + 176);
  sub_24DD4AFA4();
  v102 = 0;
  v103 = 0xE000000000000000;
  sub_24DD4B534();
  MEMORY[0x253037C70](0xD000000000000025, 0x800000024DD524E0);
  v74 = sub_24DD3EAB0();
  MEMORY[0x253037C70](v74);

  MEMORY[0x253037C70](0x736572706D6F6320, 0xED00002E6E6F6973);
  MEMORY[0x2530379D0](MEMORY[0x277D84F90]);
  sub_24DD3D308(&qword_27F1AF400, MEMORY[0x277D0B938]);
  swift_allocError();
  sub_24DD4AFD4();
  swift_willThrow();
  sub_24DD1C414(v87, &qword_27F1B06F0, &qword_24DD4D718);
  v66(v71, v88);
  (*(v70 + 8))(v95, v92);
  sub_24DD33A10(v90, v98, v97);
  v75 = *(v0 + 328);
  v76 = *(v0 + 312);
  v77 = *(v0 + 288);
  v79 = *(v0 + 256);
  v78 = *(v0 + 264);
  v81 = *(v0 + 224);
  v80 = *(v0 + 232);
  v83 = *(v0 + 192);
  v82 = *(v0 + 200);
  v84 = *(v0 + 184);

  v85 = *(v0 + 8);

  return v85();
}

uint64_t sub_24DD330E0()
{
  v13 = v0[43];
  v1 = v0[41];
  v2 = v0[39];
  v3 = v0[36];
  v5 = v0[32];
  v4 = v0[33];
  v7 = v0[28];
  v6 = v0[29];
  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[23];

  v11 = v0[1];

  return v11();
}

uint64_t sub_24DD331CC()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  v5 = *(v2 + 400);

  if (v0)
  {
    v6 = sub_24DD33484;
  }

  else
  {
    v6 = sub_24DD33300;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24DD33300()
{
  v2 = v0[48];
  v1 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v15 = v0[44];
  v16 = v0[45];
  v17 = v0[41];
  v18 = v0[39];
  v5 = v0[32];
  v6 = v0[33];
  v7 = v0[31];
  v8 = v0[29];
  v19 = v0[36];
  v20 = v0[28];
  v10 = v0[26];
  v9 = v0[27];
  v21 = v0[25];
  v22 = v0[24];
  v23 = v0[23];
  v13 = v0[22];
  v14 = v0[30];

  sub_24DD1C414(v6, &qword_27F1B06F0, &qword_24DD4D718);
  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v5, v14);
  sub_24DD33A10(v13, v15, v16);

  v11 = v0[1];

  return v11();
}

uint64_t sub_24DD33484()
{
  v2 = v0[48];
  v1 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v25 = v0[44];
  v26 = v0[45];
  v5 = v0[33];
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[29];
  v9 = v0[26];
  v10 = v0[27];
  v23 = v0[22];
  v24 = v0[32];

  sub_24DD1C414(v5, &qword_27F1B06F0, &qword_24DD4D718);
  (*(v10 + 8))(v8, v9);
  (*(v6 + 8))(v24, v7);
  sub_24DD33A10(v23, v25, v26);
  v27 = v0[52];
  v11 = v0[41];
  v12 = v0[39];
  v13 = v0[36];
  v15 = v0[32];
  v14 = v0[33];
  v17 = v0[28];
  v16 = v0[29];
  v19 = v0[24];
  v18 = v0[25];
  v20 = v0[23];

  v21 = v0[1];

  return v21();
}

uint64_t sub_24DD33608@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_24DD4AF64();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_24DD4AFC4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_24DD3C18C(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for URLSessionTransport.State(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD3CBF8(v2, v15, type metadata accessor for URLSessionTransport.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_24DD3CBF8(v15, v2, sub_24DD3C1AC);
      swift_storeEnumTagMultiPayload();
      sub_24DD4AF84();
      MEMORY[0x2530379D0](MEMORY[0x277D84F90]);
      sub_24DD4AFD4();
      type metadata accessor for URLSessionTransport.State.OpenStreamAction(0);
      return swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
    sub_24DD4AF84();
    MEMORY[0x2530379D0](MEMORY[0x277D84F90]);
    sub_24DD4AFD4();
    type metadata accessor for URLSessionTransport.State.OpenStreamAction(0);
    swift_storeEnumTagMultiPayload();
    result = swift_getEnumCaseMultiPayload();
    if (result > 1)
    {
      if (result != 2)
      {
        return result;
      }

      v23 = *v15;

      v24 = *(sub_24DD3C1AC(0) + 20);
    }

    else
    {
      if (!result)
      {
        v22 = *v15;
      }

      v25 = *v15;

      v24 = *(v8 + 20);
    }

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    return (*(*(v26 - 8) + 8))(&v15[v24], v26);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_24DD3CBF8(v15, v11, sub_24DD3C18C);
      v19 = v11[1];
      v18 = v11[2];
      v11[2] = v18 + 1;
      v20 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = *v11;
      sub_24DD3A018(0, v19, v18, isUniquelyReferenced_nonNull_native);
      *v11 = v28;
      sub_24DD3CBF8(v11, v2, sub_24DD3C18C);
      swift_storeEnumTagMultiPayload();
      *a1 = v19;
      a1[1] = v18;
    }

    else
    {
      *v2 = *v15;
      swift_storeEnumTagMultiPayload();
    }

    type metadata accessor for URLSessionTransport.State.OpenStreamAction(0);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_24DD33A10(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = type metadata accessor for URLSessionTransport.State.CloseStreamAction(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24DD4B084();
  v16 = sub_24DD4B414();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = a2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v31 = a1;
    v20 = v19;
    v37 = v19;
    v38 = 0;
    *v18 = 136315138;
    v39 = 0xE000000000000000;
    v35 = 0x726F70736E617274;
    v36 = 0xEA00000000005F74;
    v34 = v33;
    v21 = sub_24DD4B624();
    v32 = v10;
    v22 = a3;
    MEMORY[0x253037C70](v21);

    MEMORY[0x253037C70](v35, v36);

    MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
    v35 = a3;
    v23 = sub_24DD4B624();
    MEMORY[0x253037C70](v23);

    v24 = sub_24DD38DE0(v38, v39, &v37);

    *(v18 + 4) = v24;
    a3 = v22;
    v10 = v32;
    _os_log_impl(&dword_24DD09000, v15, v16, "Closing stream %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v25 = v20;
    a1 = v31;
    MEMORY[0x253038870](v25, -1, -1);
    v26 = v18;
    a2 = v33;
    MEMORY[0x253038870](v26, -1, -1);
  }

  v27 = (a1 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state);
  os_unfair_lock_lock(v27);
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06E0, &qword_24DD4D6F8) + 28);
  v38 = a2;
  v39 = a3;
  sub_24DD37C24(&v38, v14);
  os_unfair_lock_unlock(v27);
  result = (*(v7 + 48))(v14, 1, v6);
  if (result != 1)
  {
    (*(v7 + 32))(v10, v14, v6);
    sub_24DD4B314();
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t CallOptions.union(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24DD4ABD4();
  (*(*(v5 - 8) + 16))(a2, v2, v5);
  return CallOptions.formUnion(with:)(a1);
}

uint64_t sub_24DD33DF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - v4;
  sub_24DD1C3AC(a1, &v12 - v4, &unk_27F1B0B60, &qword_24DD4CB20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = *(*v5 + 16);

      return v7;
    }

    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1AF550, &qword_24DD4CB18) + 48);
    v10 = sub_24DD4AF64();
    (*(*(v10 - 8) + 8))(&v5[v9], v10);
    v11 = sub_24DD4AF24();
    (*(*(v11 - 8) + 8))(v5, v11);
  }

  else
  {
    sub_24DD1C414(v5, &unk_27F1B0B60, &qword_24DD4CB20);
  }

  return 0;
}

uint64_t sub_24DD33F68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0810, &qword_24DD4D9B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  sub_24DD1C3AC(a1, &v8 - v4, &qword_27F1B0810, &qword_24DD4D9B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(*v5 + 16);
  }

  else
  {
    sub_24DD1C414(v5, &qword_27F1B0810, &qword_24DD4D9B0);
    return 0;
  }

  return v6;
}

uint64_t sub_24DD34050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v30;
  *(v8 + 136) = v31;
  *(v8 + 96) = v28;
  *(v8 + 112) = v29;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = sub_24DD4AC94();
  *(v8 + 144) = v9;
  v10 = *(v9 - 8);
  *(v8 + 152) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B07E8, &qword_24DD4D970);
  *(v8 + 168) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B07F0, &qword_24DD4D978);
  *(v8 + 184) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B07F8, &unk_24DD4D980);
  *(v8 + 200) = v16;
  v17 = *(v16 - 8);
  *(v8 + 208) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  v19 = sub_24DD4ADF4();
  *(v8 + 224) = v19;
  v20 = *(v19 - 8);
  *(v8 + 232) = v20;
  *(v8 + 240) = *(v20 + 64);
  *(v8 + 248) = swift_task_alloc();
  v21 = sub_24DD4ABD4();
  *(v8 + 256) = v21;
  v22 = *(v21 - 8);
  *(v8 + 264) = v22;
  *(v8 + 272) = *(v22 + 64);
  *(v8 + 280) = swift_task_alloc();
  v23 = sub_24DD4AD44();
  *(v8 + 288) = v23;
  v24 = *(v23 - 8);
  *(v8 + 296) = v24;
  *(v8 + 304) = *(v24 + 64);
  *(v8 + 312) = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF530, &qword_24DD4CA90) - 8) + 64) + 15;
  *(v8 + 320) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DD34374, 0, 0);
}

uint64_t sub_24DD34374()
{
  v1 = v0[39];
  v2 = v0[40];
  v50 = v1;
  v3 = v0[37];
  v32 = v0[38];
  v4 = v0[35];
  v5 = v0[36];
  v53 = v5;
  v6 = v0[33];
  v34 = v0[34];
  v7 = v0[32];
  v29 = v7;
  v30 = v4;
  v52 = v0[31];
  v8 = v0[29];
  v35 = v0[30];
  v51 = v0[28];
  v45 = v0[27];
  v42 = v0[24];
  v47 = v0[23];
  v44 = v0[22];
  v46 = v0[21];
  v48 = v0[20];
  v49 = v0[16];
  v43 = v0[15];
  v41 = v0[14];
  v37 = v0[12];
  v38 = v0[13];
  v28 = v0[11];
  v9 = v0[9];
  v27 = v0[10];
  v54 = v9;
  v36 = v0[8];
  v33 = v0[7];
  v31 = v0[6];
  v40 = v0[5];
  v10 = sub_24DD4B384();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  v39 = *(v3 + 16);
  v39(v1, v9, v5);
  (*(v6 + 16))(v4, v27, v7);
  (*(v8 + 16))(v52, v28, v51);
  v11 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v12 = (v32 + *(v6 + 80) + v11) & ~*(v6 + 80);
  v13 = (v34 + *(v8 + 80) + v12) & ~*(v8 + 80);
  v14 = (v35 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = v31;
  *(v15 + 5) = v33;
  *(v15 + 6) = v36;
  (*(v3 + 32))(&v15[v11], v50, v53);
  (*(v6 + 32))(&v15[v12], v30, v29);
  (*(v8 + 32))(&v15[v13], v52, v51);
  *&v15[v14] = v37;
  *&v15[(v14 + 15) & 0xFFFFFFFFFFFFFFF8] = v38;

  sub_24DD368E4(v2, &unk_24DD4D998, v15);
  sub_24DD1C414(v2, &qword_27F1AF530, &qword_24DD4CA90);
  v39(v50, v54, v53);
  v0[2] = v41;

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF298, &qword_24DD4C1C0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0800, &qword_24DD4D9A8);
  v19 = sub_24DD3D0A8(&qword_27F1B0808, &qword_27F1B0800, &qword_24DD4D9A8);
  MEMORY[0x2530377F0](v0 + 2, v16, v17, v18, v19);
  v0[3] = v43;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0810, &qword_24DD4D9B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0818, &qword_24DD4D9B8);
  sub_24DD3D0A8(&qword_27F1B0820, &qword_27F1B0818, &qword_24DD4D9B8);
  sub_24DD4B014();
  sub_24DD3D0A8(&qword_27F1B0828, &qword_27F1B07F0, &qword_24DD4D978);
  sub_24DD3D0A8(&qword_27F1B0830, &qword_27F1B07E8, &qword_24DD4D970);
  sub_24DD4B004();
  v39(v50, v54, v53);
  sub_24DD4AC84();
  v55 = (v49 + *v49);
  v20 = v49[1];
  v21 = swift_task_alloc();
  v0[41] = v21;
  *v21 = v0;
  v21[1] = sub_24DD34924;
  v22 = v0[27];
  v23 = v0[20];
  v24 = v0[17];
  v25 = v0[4];

  return v55(v25, v22, v23);
}

uint64_t sub_24DD34924()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_24DD34B44;
  }

  else
  {
    v3 = sub_24DD34A38;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24DD34A38()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[35];
  v4 = v0[31];
  v6 = v0[26];
  v5 = v0[27];
  v8 = v0[24];
  v7 = v0[25];
  v11 = v0[22];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v6 + 8))(v5, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24DD34B44()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[35];
  v4 = v0[31];
  v6 = v0[26];
  v5 = v0[27];
  v8 = v0[24];
  v7 = v0[25];
  v12 = v0[22];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v6 + 8))(v5, v7);

  v9 = v0[1];
  v10 = v0[42];

  return v9();
}

uint64_t sub_24DD34C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a5;
  *(v8 + 32) = v15;
  *(v8 + 24) = a6;
  *(v8 + 40) = v16;
  v11 = swift_task_alloc();
  *(v8 + 48) = v11;
  *v11 = v8;
  v11[1] = sub_24DD34D44;

  return sub_24DD34E3C((v8 + 16), a7, a8, v14, (v8 + 32), (v8 + 40));
}

uint64_t sub_24DD34D44()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24DD34E3C(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  *(v7 + 64) = a4;
  *(v7 + 72) = v6;
  *(v7 + 56) = a2;
  v11 = sub_24DD4AF44();
  *(v7 + 80) = v11;
  v12 = *(v11 - 8);
  *(v7 + 88) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 96) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0838, &qword_24DD4D9C8);
  *(v7 + 104) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v7 + 112) = swift_task_alloc();
  v16 = sub_24DD4ADF4();
  *(v7 + 120) = v16;
  v17 = *(v16 - 8);
  *(v7 + 128) = v17;
  v18 = *(v17 + 64) + 15;
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF610, &unk_24DD4CBB0) - 8) + 64) + 15;
  *(v7 + 160) = swift_task_alloc();
  v20 = sub_24DD4AE44();
  *(v7 + 168) = v20;
  v21 = *(v20 - 8);
  *(v7 + 176) = v21;
  v22 = *(v21 + 64) + 15;
  *(v7 + 184) = swift_task_alloc();
  v23 = sub_24DD4AE34();
  *(v7 + 192) = v23;
  v24 = *(v23 - 8);
  *(v7 + 200) = v24;
  v25 = *(v24 + 64) + 15;
  *(v7 + 208) = swift_task_alloc();
  v26 = sub_24DD4AAC4();
  *(v7 + 216) = v26;
  v27 = *(v26 - 8);
  *(v7 + 224) = v27;
  v28 = *(v27 + 64) + 15;
  *(v7 + 232) = swift_task_alloc();
  v29 = sub_24DD4AF64();
  *(v7 + 240) = v29;
  v30 = *(v29 - 8);
  *(v7 + 248) = v30;
  v31 = *(v30 + 64) + 15;
  *(v7 + 256) = swift_task_alloc();
  *(v7 + 264) = swift_task_alloc();
  v32 = *(*(sub_24DD4AFC4() - 8) + 64) + 15;
  *(v7 + 272) = swift_task_alloc();
  v33 = sub_24DD4AFE4();
  *(v7 + 280) = v33;
  v34 = *(v33 - 8);
  *(v7 + 288) = v34;
  v35 = *(v34 + 64) + 15;
  *(v7 + 296) = swift_task_alloc();
  v36 = sub_24DD4AA94();
  *(v7 + 304) = v36;
  v37 = *(v36 - 8);
  *(v7 + 312) = v37;
  v38 = *(v37 + 64) + 15;
  *(v7 + 320) = swift_task_alloc();
  v39 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A90, &qword_24DD4D9D0) - 8) + 64) + 15;
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  *(v7 + 344) = swift_task_alloc();
  *(v7 + 352) = *a1;
  v40 = *a6;
  *(v7 + 368) = *a5;
  *(v7 + 376) = v40;

  return MEMORY[0x2822009F8](sub_24DD352C0, 0, 0);
}

uint64_t sub_24DD352C0()
{
  v1 = v0[8];
  result = sub_24DD3EC44();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = *(v0[46] + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0840, &qword_24DD4D9D8);
  v4 = swift_allocObject();
  v0[48] = v4;
  *(v4 + 16) = v3;
  v5 = *(v3 + 16);
  v6 = *(*v5 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*v5 + 48) + 7) & 0x1FFFFFFF8;
  swift_retain_n();

  result = pthread_mutex_lock((v5 + v7));
  if (result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v0[46];
  sub_24DD2D938();
  v9 = pthread_mutex_unlock((v5 + v7));

  if (v9)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v0[6] = v4;
  v0[49] = *(v4 + 16);

  v10 = swift_task_alloc();
  v0[50] = v10;
  *v10 = v0;
  v10[1] = sub_24DD35480;
  v11 = v0[42];

  return sub_24DD3F3D8(v11);
}

uint64_t sub_24DD35480()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v7 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v4 = sub_24DD36490;
  }

  else
  {
    v5 = *(v2 + 392);

    v4 = sub_24DD3559C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24DD3559C()
{
  v162 = v0;
  v1 = v0[48];
  v2 = v0[42];
  v3 = v0[43];
  v4 = v0[41];

  sub_24DD1C474(v2, v3, &qword_27F1B0A90, &qword_24DD4D9D0);
  sub_24DD1C3AC(v3, v4, &qword_27F1B0A90, &qword_24DD4D9D0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0810, &qword_24DD4D9B0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    v6 = v0[47];
    v7 = v0[43];
    v9 = v0[36];
    v8 = v0[37];
    v10 = v0[34];
    v11 = v0[35];
    v12 = v0[33];
    sub_24DD4AF94();
    MEMORY[0x2530379D0](MEMORY[0x277D84F90]);
    sub_24DD4AFD4();
    sub_24DD3D308(&qword_27F1AF400, MEMORY[0x277D0B938]);
    v13 = swift_allocError();
    (*(v9 + 16))(v14, v8, v11);
    v15 = *(v6 + 16);
LABEL_5:

    sub_24DD2CFEC(v13);

    (*(v9 + 8))(v8, v11);
    sub_24DD1C414(v7, &qword_27F1B0A90, &qword_24DD4D9D0);
    v22 = v0[48];
    v24 = v0[42];
    v23 = v0[43];
    v26 = v0[40];
    v25 = v0[41];
    v27 = v0[37];
    v28 = v0[33];
    v29 = v0[34];
    v30 = v0[32];
    v31 = v0[29];
    v144 = v0[26];
    v145 = v0[23];
    v146 = v0[20];
    v148 = v0[19];
    v150 = v0[18];
    v152 = v0[17];
    v155 = v0[14];
    v158 = v0[12];

    v32 = v0[1];

    return v32();
  }

  v16 = v0[41];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = v0[47];
    v7 = v0[43];
    v9 = v0[36];
    v8 = v0[37];
    v18 = v0[34];
    v11 = v0[35];
    v19 = v0[33];
    sub_24DD1C414(v16, &qword_27F1B0810, &qword_24DD4D9B0);
    sub_24DD4AF94();
    MEMORY[0x2530379D0](MEMORY[0x277D84F90]);
    sub_24DD4AFD4();
    sub_24DD3D308(&qword_27F1AF400, MEMORY[0x277D0B938]);
    v13 = swift_allocError();
    (*(v9 + 16))(v20, v8, v11);
    v21 = *(v17 + 16);
    goto LABEL_5;
  }

  v34 = v0[29];
  v36 = v0[8];
  v35 = v0[9];
  v37 = v0[7];
  (*(v0[31] + 32))(v0[32], v16, v0[30]);
  v38 = v35 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_config;
  v39 = type metadata accessor for URLSessionTransport.Config();
  v156 = *(v39 + 36);
  v40 = *(v38 + *(v39 + 40));
  MEMORY[0x2530377A0]();
  sub_24DD4AAB4();

  v41 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  v42 = sub_24DD4AAA4();
  v43 = [v41 initWithURL:v42 cachePolicy:1 timeoutInterval:1.79769313e308];

  v44 = sub_24DD4B164();
  [v43 setHTTPMethod_];

  v45 = sub_24DD4B164();
  v46 = sub_24DD4B164();
  [v43 addValue:v45 forHTTPHeaderField:v46];

  v47 = sub_24DD4B164();
  v48 = sub_24DD4B164();
  [v43 addValue:v47 forHTTPHeaderField:v48];

  v151 = v43;
  [v43 setAssumesHTTP3Capable_];
  if (sub_24DD3EC44())
  {
    v49 = v0[8];
    sub_24DD3EAB0();
    v50 = sub_24DD4B164();

    v51 = sub_24DD4B164();
    [v43 addValue:v50 forHTTPHeaderField:v51];
  }

  v147 = v0 + 2;
  v143 = v0 + 6;
  v52 = v0[26];
  v53 = v0[22];
  v54 = v0[23];
  v56 = v0[20];
  v55 = v0[21];
  v57 = v0[16];
  v160 = v0;
  v58 = v0[15];
  sub_24DD4AE54();
  sub_24DD4AE14();
  (*(v53 + 8))(v54, v55);
  sub_24DD4AE24();
  v59 = *(v57 + 48);
  v60 = v58;
  v61 = v0;
  if (v59(v56, 1, v60) != 1)
  {
    v108 = v0[16];
    v111 = *(v108 + 32);
    v109 = v108 + 32;
    v110 = v111;
    v112 = (v109 - 24);
    do
    {
      v119 = v61[19];
      v118 = v61[20];
      v120 = v61[18];
      v121 = v160[15];
      v110(v119, v118, v121);
      sub_24DD4ADD4();
      sub_24DD3D308(&qword_27F1AF618, MEMORY[0x277D0B8B0]);
      LOBYTE(v119) = sub_24DD4B154();
      v122 = *v112;
      v123 = v121;
      v61 = v160;
      (*v112)(v120, v123);
      if ((v119 & 1) == 0)
      {
        v124 = v160[18];
        v125 = v160[15];
        (*(v109 - 16))(v160[17], v160[19], v125);
        sub_24DD4ADE4();
        v126 = sub_24DD4B154();
        v122(v124, v125);
        if (v126 & 1) != 0 || (v127 = v160[17], v128 = v160[18], v129 = v160[15], sub_24DD4ADC4(), LOBYTE(v127) = sub_24DD4B154(), v122(v128, v129), (v127))
        {
          v122(v160[17], v160[15]);
          v61 = v160;
LABEL_26:
          v131 = v61[18];
          v130 = v61[19];
          v132 = v61[15];
          sub_24DD4ADC4();
          LOBYTE(v130) = sub_24DD4ADB4();
          v122(v131, v132);
          if ((v130 & 1) == 0)
          {
            v134 = v61[18];
            v133 = v61[19];
            v135 = v61[15];
            sub_24DD4ADE4();
            LOBYTE(v133) = sub_24DD4ADB4();
            v122(v134, v135);
            if ((v133 & 1) == 0)
            {
              v141 = v61[18];
              v140 = v61[19];
              v142 = v61[15];
              sub_24DD4ADD4();
              sub_24DD4ADB4();
              v122(v141, v142);
            }
          }

          v113 = sub_24DD4B164();

          v114 = sub_24DD4B164();
          [v43 addValue:v113 forHTTPHeaderField:v114];

          goto LABEL_21;
        }

        v137 = v160[17];
        v136 = v160[18];
        v138 = v160[15];
        sub_24DD4ADD4();
        v139 = sub_24DD4B154();
        v122(v136, v138);
        v122(v137, v138);
        v61 = v160;
        if (v139)
        {
          goto LABEL_26;
        }
      }

LABEL_21:
      v115 = v61[26];
      v116 = v61[20];
      v117 = v61[15];
      v122(v61[19], v117);
      sub_24DD4AE24();
    }

    while (v59(v116, 1, v117) != 1);
  }

  v63 = v61[31];
  v62 = v61[32];
  v64 = v61[30];
  v65 = v61[13];
  v66 = v61[14];
  v67 = v61[11];
  (*(v61[25] + 8))(v61[26], v61[24]);
  (*(v63 + 16))(v66, v62, v64);
  v68 = *(v65 + 36);
  sub_24DD3D308(&qword_27F1B0848, MEMORY[0x277D0B918]);
  sub_24DD4B3B4();
  v149 = (v67 + 8);
  while (1)
  {
    v69 = v61[30];
    v70 = v61[14];
    v71 = v61[12];
    v72 = v61;
    v73 = v61[10];
    sub_24DD4B3C4();
    sub_24DD3D308(&qword_27F1B0850, MEMORY[0x277D0B908]);
    LOBYTE(v70) = sub_24DD4B154();
    (*v149)(v71, v73);
    if (v70)
    {
      break;
    }

    v74 = v72[30];
    v75 = v72[14];
    v76 = sub_24DD4B404();
    v78 = v77[1];
    v153 = *v77;
    v80 = v77[2];
    v79 = v77[3];
    v81 = *(v77 + 32);

    sub_24DD3D0F0();
    v76(v147, 0);
    sub_24DD4B3D4();
    sub_24DD4AF54();
    sub_24DD3D0FC();
    v82 = sub_24DD4B164();

    v83 = sub_24DD4B164();

    [v151 addValue:v82 forHTTPHeaderField:v83];

    v61 = v160;
  }

  v157 = v72[44];
  v159 = v72[45];
  v84 = v72[40];
  v85 = v72[31];
  v154 = v72[32];
  v86 = v72[29];
  v87 = v72[30];
  v88 = v72[27];
  v89 = v72[28];
  v90 = v72[9];
  sub_24DD1C414(v72[14], &qword_27F1B0838, &qword_24DD4D9C8);
  v91 = v151;
  v92 = [v91 _CFURLRequest];
  _CFURLRequestSetAllowedProtocolTypes();
  sub_24DD4AA84();

  (*(v89 + 8))(v86, v88);
  (*(v85 + 8))(v154, v87);
  v93 = *(v90 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_session);
  v94 = sub_24DD4AA74();
  v95 = [v93 uploadTaskWithStreamedRequest_];
  v72[52] = v95;

  v96 = (v90 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state);
  os_unfair_lock_lock((v90 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state));
  v97 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06E0, &qword_24DD4D6F8) + 28);
  v161[0] = v157;
  v161[1] = v159;
  v98 = sub_24DD36B68(v95, v161);
  os_unfair_lock_unlock(v96);
  if (v98)
  {
    [v98 cancel];
  }

  v99 = v72[47];
  v101 = v72[44];
  v100 = v72[45];
  v102 = v72[7];
  v103 = swift_task_alloc();
  v72[53] = v103;
  v104 = *(v72 + 4);
  *(v103 + 16) = v99;
  *(v103 + 24) = v104;
  *(v103 + 40) = v143;
  *(v103 + 48) = v102;
  *(v103 + 56) = v101;
  *(v103 + 64) = v100;
  *(v103 + 72) = v95;
  v105 = swift_task_alloc();
  v72[54] = v105;
  *(v105 + 16) = v95;
  v106 = *(MEMORY[0x277D85A10] + 4);
  v107 = swift_task_alloc();
  v72[55] = v107;
  *v107 = v72;
  v107[1] = sub_24DD36614;

  return MEMORY[0x282200830](v107, &unk_24DD4D9E8);
}

uint64_t sub_24DD36490()
{
  v1 = v0[51];
  v3 = v0[48];
  v2 = v0[49];
  v4 = v0[47];

  v5 = *(v4 + 16);

  sub_24DD2CFEC(v1);

  v6 = v0[48];
  v8 = v0[42];
  v7 = v0[43];
  v10 = v0[40];
  v9 = v0[41];
  v11 = v0[37];
  v12 = v0[33];
  v13 = v0[34];
  v14 = v0[32];
  v15 = v0[29];
  v18 = v0[26];
  v19 = v0[23];
  v20 = v0[20];
  v21 = v0[19];
  v22 = v0[18];
  v23 = v0[17];
  v24 = v0[14];
  v25 = v0[12];

  v16 = v0[1];

  return v16();
}

void sub_24DD36614()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 424);
    v5 = *(v2 + 432);

    MEMORY[0x2822009F8](sub_24DD36758, 0, 0);
  }
}

uint64_t sub_24DD36758()
{
  v1 = *(v0 + 344);
  v3 = *(v0 + 312);
  v2 = *(v0 + 320);
  v4 = *(v0 + 304);

  (*(v3 + 8))(v2, v4);
  sub_24DD1C414(v1, &qword_27F1B0A90, &qword_24DD4D9D0);
  v5 = *(v0 + 48);
  v7 = *(v0 + 336);
  v6 = *(v0 + 344);
  v9 = *(v0 + 320);
  v8 = *(v0 + 328);
  v10 = *(v0 + 296);
  v11 = *(v0 + 264);
  v12 = *(v0 + 272);
  v13 = *(v0 + 256);
  v14 = *(v0 + 232);
  v17 = *(v0 + 208);
  v18 = *(v0 + 184);
  v19 = *(v0 + 160);
  v20 = *(v0 + 152);
  v21 = *(v0 + 144);
  v22 = *(v0 + 136);
  v23 = *(v0 + 112);
  v24 = *(v0 + 96);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_24DD368E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF530, &qword_24DD4CA90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - v9;
  sub_24DD1C3AC(a1, v20 - v9, &qword_27F1AF530, &qword_24DD4CA90);
  v11 = sub_24DD4B384();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24DD1C414(v10, &qword_27F1AF530, &qword_24DD4CA90);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_24DD4B2F4();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24DD4B374();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t BufferedStream.Source.finish(throwing:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_24DD36AFC, 0, 0);
}

uint64_t sub_24DD36AFC()
{
  v1 = v0[3];
  v4 = v0[4];
  BufferedStream.Source.finish(throwing:)(v0[2]);
  v2 = v0[1];

  return v2();
}

void *sub_24DD36B68(void *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = sub_24DD3C18C(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URLSessionTransport.State(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v15 = a2[1];
  sub_24DD3CBF8(v3, v13, type metadata accessor for URLSessionTransport.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      swift_storeEnumTagMultiPayload();
      v20 = swift_getEnumCaseMultiPayload();
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          goto LABEL_7;
        }

        v23 = *v13;
        v24 = a1;

        v25 = *(sub_24DD3C1AC(0) + 20);
      }

      else
      {
        if (!v20)
        {
          v21 = *v13;
          v22 = a1;

          return a1;
        }

        v27 = *v13;
        v28 = a1;

        v25 = *(v6 + 20);
      }

      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
      (*(*(v29 - 8) + 8))(&v13[v25], v29);
      return a1;
    }

    sub_24DD3CBF8(v13, v3, sub_24DD3C1AC);
LABEL_6:
    swift_storeEnumTagMultiPayload();
LABEL_7:
    v17 = a1;
    return a1;
  }

  if (!EnumCaseMultiPayload)
  {
    *v3 = *v13;
    goto LABEL_6;
  }

  sub_24DD3CBF8(v13, v9, sub_24DD3C18C);
  v19 = sub_24DD382AC(v31, v14, v15);
  if (!*v18)
  {
    *v18 = a1;
    v26 = a1;
  }

  (v19)(v31, 0);
  sub_24DD3CBF8(v9, v3, sub_24DD3C18C);
  swift_storeEnumTagMultiPayload();
  return 0;
}

uint64_t sub_24DD36E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v20;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[4] = a2;
  v8[5] = a3;
  v9 = sub_24DD4B0A4();
  v8[12] = v9;
  v10 = *(v9 - 8);
  v8[13] = v10;
  v11 = *(v10 + 64) + 15;
  v8[14] = swift_task_alloc();
  v12 = sub_24DD4AC74();
  v8[15] = v12;
  v13 = *(v12 - 8);
  v8[16] = v13;
  v14 = *(v13 + 64) + 15;
  v8[17] = swift_task_alloc();
  v15 = sub_24DD4ADF4();
  v8[18] = v15;
  v16 = *(v15 - 8);
  v8[19] = v16;
  v17 = *(v16 + 64) + 15;
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DD36FD4, 0, 0);
}

uint64_t sub_24DD36FD4()
{
  if (sub_24DD4B394())
  {
    v1 = *(v0 + 32);
    sub_24DD4B334();
    sub_24DD3D308(&qword_27F1AF598, MEMORY[0x277D85678]);
    v2 = swift_allocError();
    sub_24DD4B104();
    v3 = *(v1 + 16);

    sub_24DD2CFEC(v2);
  }

  else
  {
    v4 = *(v0 + 160);
    v5 = *(v0 + 144);
    v6 = *(v0 + 152);
    (*(v6 + 16))(*(v0 + 168), *(v0 + 40), v5);
    sub_24DD4ADE4();
    sub_24DD3D308(&qword_27F1AF618, MEMORY[0x277D0B8B0]);
    v7 = sub_24DD4B154();
    v8 = *(v6 + 8);
    v8(v4, v5);
    v9 = *(v0 + 168);
    if (v7)
    {
      v8(*(v0 + 168), *(v0 + 144));
      v10 = 1;
    }

    else
    {
      v11 = *(v0 + 160);
      v12 = *(v0 + 144);
      sub_24DD4ADC4();
      v13 = sub_24DD4B154();
      v8(v11, v12);
      v8(v9, v12);
      v10 = 2;
      if (v13)
      {
        v10 = 0;
      }
    }

    v47 = v10;
    v14 = *(v0 + 48);
    v46 = *(v14 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_config + 24);
    v15 = **(v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0858, &qword_24DD4D9F0);
    v16 = swift_allocObject();
    *(v16 + 24) = 0;
    *(v16 + 16) = v15;
    v17 = *(v14 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_methodConfig);
    v18 = *(v17 + 16);

    if (v18 && (v19 = sub_24DD39324(*(v0 + 64)), (v20 & 1) != 0))
    {
      v21 = *(v0 + 128);
      v22 = *(v0 + 136);
      v23 = *(v0 + 120);
      (*(v21 + 16))(v22, *(v17 + 56) + *(v21 + 72) * v19, v23);
      v45 = sub_24DD4AC04();
      v43 = v24;
      (*(v21 + 8))(v22, v23);
    }

    else
    {
      v45 = 0;
      v43 = 1;
    }

    v25 = *(v0 + 104);
    v26 = *(v0 + 112);
    v44 = *(v0 + 88);
    v28 = *(v0 + 72);
    v27 = *(v0 + 80);
    v42 = *(v0 + 96);
    v29 = *(v0 + 32);
    v30 = type metadata accessor for StreamingURLSessionDelegate(0);
    v31 = objc_allocWithZone(v30);
    *&v31[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_responsePartSource] = v29;
    v32 = &v31[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_hasSuspendedURLSessionTask];
    *v32 = 0;
    v32[4] = 0;
    v33 = &v31[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID];
    *v33 = v28;
    *(v33 + 1) = v27;

    sub_24DD4B094();
    (*(v25 + 32))(&v31[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_logger], v26, v42);
    v34 = &v31[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_state];
    *v34 = 0;
    *(v34 + 1) = v16 & 0xFFFFFFFFFFFFFF8;
    *(v34 + 2) = v46;
    *(v34 + 3) = v47;
    *(v34 + 4) = v45;
    v34[40] = v43 & 1;
    v34[47] = 0;
    *(v34 + 45) = 0;
    *(v34 + 41) = 0;
    *(v34 + 6) = v28;
    *(v34 + 7) = v27;
    *(v34 + 9) = 0;
    *(v34 + 44) = 0;
    *(v0 + 16) = v31;
    *(v0 + 24) = v30;

    v35 = objc_msgSendSuper2((v0 + 16), sel_init);

    [v44 setDelegate_];
    [v44 resume];
  }

  v37 = *(v0 + 160);
  v36 = *(v0 + 168);
  v38 = *(v0 + 136);
  v39 = *(v0 + 112);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t URLSessionTransport.deinit()
{
  v1 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_serviceConfig;
  v2 = sub_24DD4ACF4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_methodConfig);

  v4 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_target;
  v5 = sub_24DD4AAC4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = v0 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06E0, &qword_24DD4D6F8);
  sub_24DD3BCCC(v6 + *(v7 + 28), type metadata accessor for URLSessionTransport.State);
  sub_24DD3BCCC(v0 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_config, type metadata accessor for URLSessionTransport.Config);
  v8 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_logger;
  v9 = sub_24DD4B0A4();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(v0 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_retryThrottle);

  return v0;
}

uint64_t URLSessionTransport.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_serviceConfig;
  v2 = sub_24DD4ACF4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_methodConfig);

  v4 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_target;
  v5 = sub_24DD4AAC4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = v0 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06E0, &qword_24DD4D6F8);
  sub_24DD3BCCC(v6 + *(v7 + 28), type metadata accessor for URLSessionTransport.State);
  sub_24DD3BCCC(v0 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_config, type metadata accessor for URLSessionTransport.Config);
  v8 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_logger;
  v9 = sub_24DD4B0A4();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(v0 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_retryThrottle);

  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v11, v12);
}

uint64_t sub_24DD377AC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24DD0D4B0;

  return URLSessionTransport.connect()();
}

uint64_t sub_24DD37860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *v6;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_24DD0C914;

  return URLSessionTransport.withStream<A>(descriptor:options:_:)(a1, a2, a3, a4, a5, a6);
}

void sub_24DD37960()
{
  v21 = MEMORY[0x277D84F90];
  v1 = *v0;
  sub_24DD2CF50(*(*v0 + 16));
  v2 = -1 << *(v1 + 32);
  swift_bridgeObjectRetain_n();
  v3 = sub_24DD4B504();
  v4 = *(v1 + 36);
  LOBYTE(v2) = *(v1 + 32);

  v18 = v3;
  v20 = 1 << v2;
  if (v3 == 1 << v2)
  {
LABEL_2:

    sub_24DD1BFDC(v18, v4, 0);
    sub_24DD1BFDC(v20, v4, 0);
    sub_24DD1BFDC(v20, v4, 0);
  }

  else
  {
    v5 = v3;
    while ((v5 & 0x8000000000000000) == 0)
    {
      v6 = 1 << *(v1 + 32);
      if (v5 >= v6)
      {
        break;
      }

      v7 = v5 >> 6;
      v8 = *(v1 + 64 + 8 * (v5 >> 6));
      if ((v8 & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      if (*(v1 + 36) != v4)
      {
        goto LABEL_27;
      }

      v9 = v8 & (-2 << (v5 & 0x3F));
      if (v9)
      {
        v6 = __clz(__rbit64(v9)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v10 = v7 << 6;
        v11 = v7 + 1;
        v12 = (v1 + 72 + 8 * v7);
        while (v11 < (v6 + 63) >> 6)
        {
          v14 = *v12++;
          v13 = v14;
          v10 += 64;
          ++v11;
          if (v14)
          {
            v6 = __clz(__rbit64(v13)) + v10;
            break;
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24DD3A4D4();
      }

      if (v5 >= 1 << *(v1 + 32))
      {
        goto LABEL_28;
      }

      if ((*(v1 + 8 * v7 + 64) & (1 << v5)) == 0)
      {
        goto LABEL_29;
      }

      if (*(v1 + 36) != v4)
      {
        goto LABEL_30;
      }

      v15 = *(v1 + 56);
      v16 = *(v15 + 8 * v5);
      if (v16 < 2)
      {
        *(v15 + 8 * v5) = 1;
        sub_24DD1BFDC(v5, v4, 0);
        *v19 = v1;
      }

      else
      {
        *(v15 + 8 * v5) = 1;
        *v19 = v1;
        v17 = v16;
        MEMORY[0x253037D10]();
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24DD4B294();
        }

        sub_24DD4B2C4();
        sub_24DD1BFDC(v5, v4, 0);
        sub_24DD3CC60(v16);
      }

      v5 = v6;
      if (v6 == v20)
      {
        goto LABEL_2;
      }
    }

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
  }
}

uint64_t sub_24DD37C24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_24DD3C1AC(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24DD3C18C(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URLSessionTransport.State(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v18 = a1[1];
  sub_24DD3CBF8(v3, v17, type metadata accessor for URLSessionTransport.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_24DD3CBF8(v17, v13, sub_24DD3C18C);
      v33 = v19;
      v34 = v18;
      sub_24DD38050(&v33);
      sub_24DD3CBF8(v13, v3, sub_24DD3C18C);
    }

    else
    {
      *v3 = *v17;
    }

LABEL_8:
    swift_storeEnumTagMultiPayload();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_24DD3CBF8(v17, v9, sub_24DD3C1AC);
    v33 = v19;
    v34 = v18;
    sub_24DD38050(&v33);
    if (!*(*v9 + 16))
    {
      swift_storeEnumTagMultiPayload();
      v28 = *(v6 + 20);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
      v30 = *(v29 - 8);
      (*(v30 + 16))(a2, &v9[v28], v29);
      (*(v30 + 56))(a2, 0, 1, v29);
      v31 = *v9;

      return (*(v30 + 8))(&v9[v28], v29);
    }

    sub_24DD3CBF8(v9, v3, sub_24DD3C1AC);
    goto LABEL_8;
  }

  swift_storeEnumTagMultiPayload();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v24 = *(v23 - 8);
  (*(v24 + 56))(a2, 1, 1, v23);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (!result)
    {
      v25 = *v17;
    }

    v32 = *v17;

    v27 = *(v10 + 20);
    return (*(v24 + 8))(&v17[v27], v23);
  }

  if (result == 2)
  {
    v26 = *v17;

    v27 = *(v6 + 20);
    return (*(v24 + 8))(&v17[v27], v23);
  }

  return result;
}

unint64_t sub_24DD38050(uint64_t *a1)
{
  v2 = v1;
  v3 = *v1;
  result = sub_24DD393BC(*a1, a1[1]);
  if (v5)
  {
    v6 = result;
    v7 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v10 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24DD3A4D4();
      v9 = v10;
    }

    sub_24DD3CC60(*(*(v9 + 56) + 8 * v6));
    result = sub_24DD39E74(v6, v9);
    *v2 = v9;
  }

  return result;
}

uint64_t sub_24DD380D8()
{
  v1 = *v0;
  sub_24DD4B6E4();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x253038190](1);
      sub_24DD4B4A4();
      return sub_24DD4B724();
    }

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x253038190](v2);
  return sub_24DD4B724();
}

uint64_t sub_24DD3814C()
{
  if (!*v0)
  {
    v1 = 0;
    return MEMORY[0x253038190](v1);
  }

  if (*v0 == 1)
  {
    v1 = 2;
    return MEMORY[0x253038190](v1);
  }

  MEMORY[0x253038190](1);
  return sub_24DD4B4A4();
}

uint64_t sub_24DD381B4()
{
  v1 = *v0;
  sub_24DD4B6E4();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x253038190](1);
      sub_24DD4B4A4();
      return sub_24DD4B724();
    }

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x253038190](v2);
  return sub_24DD4B724();
}

uint64_t sub_24DD38224(void *a1, unint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    return !v2;
  }

  if (*a1 == 1)
  {
    return v2 == 1;
  }

  if (v2 < 2)
  {
    return 0;
  }

  sub_24DD3DA04(0, &qword_27F1B0970, 0x277D82BB8);
  return sub_24DD4B494() & 1;
}

void (*sub_24DD382AC(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_24DD3A634(v6, a2, a3);
  return sub_24DD38334;
}

void sub_24DD38334(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t BufferedStream.Source.finish()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_24DD383A4, 0, 0);
}

uint64_t sub_24DD383A4()
{
  v1 = v0[2];
  v4 = v0[3];
  BufferedStream.Source.finish(throwing:)(0);
  v2 = v0[1];

  return v2();
}

uint64_t sub_24DD38410(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24DD0D4B0;

  return BufferedStream.Source.finish()(a1);
}

uint64_t sub_24DD384A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DD0C914;

  return BufferedStream.Source.finish(throwing:)(a1, a2);
}

uint64_t sub_24DD38548(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DD0D4B0;

  return BufferedStream.Source.write(_:)(a1, a2);
}

uint64_t sub_24DD385F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24DD0D4B0;

  return BufferedStream.Source.write<A>(contentsOf:)(a1, a4, a2, a3);
}

uint64_t CallOptions.formUnion(with:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0750, qword_24DD4D770);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v43[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06F0, &qword_24DD4D718);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v43[-v11];
  v13 = sub_24DD4AC74();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v43[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24DD1C3AC(a1, v12, &qword_27F1B06F0, &qword_24DD4D718);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_24DD1C414(v12, &qword_27F1B06F0, &qword_24DD4D718);
  }

  (*(v14 + 32))(v17, v12, v13);
  v19 = sub_24DD4AC64();
  v21 = v20;
  v23 = v22;
  v25 = sub_24DD4ABC4();
  if (*(v24 + 16) == 1)
  {
    *v24 = v19;
    *(v24 + 8) = v21;
    *(v24 + 16) = v23 & 1;
  }

  v25(v43, 0);
  v26 = sub_24DD4ABE4();
  v28 = sub_24DD4AB84();
  if (*v27 == 2)
  {
    *v27 = v26;
  }

  v28(v43, 0);
  v29 = sub_24DD4AC04();
  v31 = v30;
  v33 = sub_24DD4ABA4();
  if (*(v32 + 8) == 1)
  {
    *v32 = v29;
    *(v32 + 8) = v31 & 1;
  }

  v33(v43, 0);
  v34 = sub_24DD4AC14();
  v36 = v35;
  v38 = sub_24DD4ABB4();
  if (*(v37 + 8) == 1)
  {
    *v37 = v34;
    *(v37 + 8) = v36 & 1;
  }

  v38(v43, 0);
  sub_24DD4ABF4();
  v39 = sub_24DD4AB94();
  v41 = v40;
  sub_24DD1C3AC(v40, v6, &qword_27F1B0750, qword_24DD4D770);
  v42 = sub_24DD4AD84();
  if ((*(*(v42 - 8) + 48))(v6, 1, v42) == 1)
  {
    sub_24DD1C414(v41, &qword_27F1B0750, qword_24DD4D770);
    sub_24DD1C474(v8, v41, &qword_27F1B0750, qword_24DD4D770);
  }

  else
  {
    sub_24DD1C414(v8, &qword_27F1B0750, qword_24DD4D770);
    sub_24DD1C414(v6, &qword_27F1B0750, qword_24DD4D770);
  }

  v39(v43, 0);
  return (*(v14 + 8))(v17, v13);
}

uint64_t static ClientTransport<>.urlSession(baseURL:serviceConfig:session:config:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = type metadata accessor for URLSessionTransport.Config();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24DD4ACF4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24DD4AAC4();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, a1);
  (*(v14 + 16))(v17, a2, v13);
  sub_24DD3BD4C(a4, v12, type metadata accessor for URLSessionTransport.Config);
  v23 = *(v4 + 48);
  v24 = *(v4 + 52);
  swift_allocObject();
  v25 = a3;
  v26 = sub_24DD3AE34(v21, v25, v17, v12);

  return v26;
}

uint64_t sub_24DD38D10(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_24DD38D84(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_24DD38DE0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_24DD38DE0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24DD38EAC(v11, 0, 0, 1, a1, a2);
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
    sub_24DD1BEFC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24DD38EAC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24DD38FB8(a5, a6);
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
    result = sub_24DD4B584();
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

uint64_t sub_24DD38FB8(uint64_t a1, unint64_t a2)
{
  v4 = sub_24DD39004(a1, a2);
  sub_24DD0D780(&unk_2860F4540);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24DD39004(uint64_t a1, unint64_t a2)
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

  v6 = sub_24DD39134(v5, 0);
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

  result = sub_24DD4B584();
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
        v10 = sub_24DD4B1E4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24DD39134(v10, 0);
        result = sub_24DD4B524();
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

void *sub_24DD39134(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF410, &qword_24DD4DA60);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24DD391A8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF410, &qword_24DD4DA60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_24DD3929C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_24DD392AC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24DD4B6E4();
  sub_24DD4B1C4();
  v6 = sub_24DD4B724();

  return sub_24DD3943C(a1, a2, v6);
}

unint64_t sub_24DD39324(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_24DD4AD44();
  sub_24DD3D308(&qword_27F1B08B8, MEMORY[0x277D0B888]);
  v5 = sub_24DD4B124();

  return sub_24DD394F4(a1, v5);
}

unint64_t sub_24DD393BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24DD4B6E4();
  MEMORY[0x2530381B0](a1);
  MEMORY[0x2530381B0](a2);
  v6 = sub_24DD4B724();

  return sub_24DD396B4(a1, a2, v6);
}

unint64_t sub_24DD3943C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24DD4B654())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24DD394F4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_24DD4AD44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_24DD3D308(&qword_27F1B08C0, MEMORY[0x277D0B888]);
      v16 = sub_24DD4B154();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_24DD396B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_24DD3972C(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_24DD4AC74();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24DD4AD44();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B08D8, &qword_24DD4DA88);
  v52 = a2;
  result = sub_24DD4B5E4();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_24DD3D308(&qword_27F1B08B8, MEMORY[0x277D0B888]);
      result = sub_24DD4B124();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_24DD39BD4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B07E0, &qword_24DD4D968);
  result = sub_24DD4B5E4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v33 = *(*(v5 + 48) + 16 * v20);
      v22 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        sub_24DD3CC70(*(v21 + 8 * v20));
      }

      v23 = *(v8 + 40);
      sub_24DD4B6E4();
      MEMORY[0x2530381B0](v33);
      MEMORY[0x2530381B0](*(&v33 + 1));
      result = sub_24DD4B724();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v33;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24DD39E74(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24DD4B514() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_24DD4B6E4();
      MEMORY[0x2530381B0](v11);
      MEMORY[0x2530381B0](v12);
      result = sub_24DD4B724();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 8 * v3);
        v19 = (v17 + 8 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
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

void sub_24DD3A018(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24DD393BC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_24DD39BD4(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_24DD393BC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        sub_24DD4B684();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_24DD3A4D4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(v11 >> 6) + 8] |= 1 << v11;
    v25 = (v22[6] + 16 * v11);
    *v25 = a2;
    v25[1] = a3;
    *(v22[7] + 8 * v11) = a1;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return;
    }

    goto LABEL_15;
  }

  v23 = v22[7];
  v24 = *(v23 + 8 * v11);
  *(v23 + 8 * v11) = a1;

  sub_24DD3CC60(v24);
}

char *sub_24DD3A180()
{
  v1 = v0;
  v43 = sub_24DD4AC74();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_24DD4AD44();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B08D8, &qword_24DD4DA88);
  v6 = *v0;
  v7 = sub_24DD4B5D4();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_24DD3A4D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B07E0, &qword_24DD4D968);
  v2 = *v0;
  v3 = sub_24DD4B5D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = sub_24DD3CC70(v18);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void (*sub_24DD3A634(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v8 + 64) = sub_24DD3A9BC(v8);
  *(v8 + 72) = sub_24DD3A740((v8 + 32), a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_24DD3A6E0;
}

void sub_24DD3A6E0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_24DD3A740(uint64_t **a1, uint64_t a2, uint64_t a3, char a4))(void ***a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_24DD393BC(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_24DD3A4D4();
      v13 = v21;
      goto LABEL_11;
    }

    sub_24DD39BD4(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_24DD393BC(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_24DD4B684();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 2;
  }

  *v11 = v24;
  return sub_24DD3A898;
}

void sub_24DD3A898(void ***a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(v2 + 40);
  v5 = v3 == 2;
  if (a2)
  {
    if (v3 == 2)
    {
      goto LABEL_9;
    }

    v6 = v2[4];
    v7 = *v2[3];
    if (v2[5])
    {
      goto LABEL_12;
    }

    v8 = v7[6];
    v9 = *(v2 + 1);
    v7[(v6 >> 6) + 8] |= 1 << v6;
    *(v8 + 16 * v6) = v9;
    *(v7[7] + 8 * v6) = v3;
    v10 = v7[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    v5 = v4 == 0;
    if (!v11)
    {
LABEL_14:
      v7[2] = v4;
      goto LABEL_15;
    }

    __break(1u);
  }

  if (v5)
  {
LABEL_9:
    if (v4)
    {
      v12 = v3;
      sub_24DD39E74(v2[4], *v2[3]);
      v3 = v12;
    }

    goto LABEL_15;
  }

  v6 = v2[4];
  v7 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v13 = v7[6];
    v14 = *(v2 + 1);
    v7[(v6 >> 6) + 8] |= 1 << v6;
    *(v13 + 16 * v6) = v14;
    *(v7[7] + 8 * v6) = v3;
    v15 = v7[2];
    v11 = __OFADD__(v15, 1);
    v4 = v15 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_14;
  }

LABEL_12:
  *(v7[7] + 8 * v6) = v3;
LABEL_15:
  v16 = *v2;
  sub_24DD3D204(v3);
  sub_24DD3D214(v16);

  free(v2);
}

uint64_t (*sub_24DD3A9BC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_24DD3A9E4;
}

unint64_t sub_24DD3A9F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF538, &qword_24DD4CB00);
    v3 = sub_24DD4B5F4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_24DD392AC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_24DD3AB04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B08E0, &unk_24DD4DA90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B08D8, &qword_24DD4DA88);
    v8 = sub_24DD4B5F4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_24DD1C3AC(v10, v6, &qword_27F1B08E0, &unk_24DD4DA90);
      result = sub_24DD39324(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_24DD4AD44();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_24DD4AC74();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_24DD3AD24(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B07E0, &qword_24DD4D968);
  v3 = sub_24DD4B5F4();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  result = sub_24DD393BC(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v9 = (a1 + 9);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v10 = (v3[6] + 16 * result);
    *v10 = v4;
    v10[1] = v5;
    *(v3[7] + 8 * result) = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_24DD3CC70(v6);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v9 - 2);
    v5 = *(v9 - 1);
    v6 = *v9;
    result = sub_24DD393BC(v4, v5);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24DD3AE34(uint64_t a1, void (**a2)(uint64_t, char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v87 = a4;
  v86 = a3;
  v111 = a2;
  v88 = a1;
  v114 = sub_24DD4AD44();
  v97 = *(v114 - 8);
  v6 = *(v97 + 64);
  v7 = MEMORY[0x28223BE20](v114);
  v115 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v113 = &v76 - v9;
  v82 = type metadata accessor for URLSessionTransport.State(0);
  v10 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v83 = (&v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06E0, &qword_24DD4D6F8);
  v85 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v84 = &v76 - v12;
  v102 = sub_24DD4AC44();
  v105 = *(v102 - 8);
  v13 = *(v105 + 64);
  MEMORY[0x28223BE20](v102);
  v101 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24DD4AC74();
  v93 = *(v15 - 8);
  v16 = *(v93 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v112 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v110 = &v76 - v19;
  v20 = sub_24DD4ACD4();
  isUniquelyReferenced_nonNull_native = *(v20 - 1);
  v22 = *(isUniquelyReferenced_nonNull_native + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v108 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v109 = &v76 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B08C8, &qword_24DD4DA78);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = (&v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v32 = &v76 - v31;
  v33 = sub_24DD4B0A4();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v76 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_transportID;
  if (qword_27F1AF280 != -1)
  {
    goto LABEL_32;
  }

LABEL_2:
  *(v5 + v38) = atomic_fetch_add_explicit(&qword_27F1AF288, 1uLL, memory_order_relaxed);
  sub_24DD4B094();
  (*(v34 + 32))(v5 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_logger, v37, v33);
  v39 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_serviceConfig;
  v40 = sub_24DD4ACF4();
  v79 = *(v40 - 8);
  v41 = *(v79 + 16);
  v34 = v86;
  v80 = v40;
  v41(v5 + v39, v86);
  sub_24DD4ACE4();
  sub_24DD1C3AC(v32, v30, &qword_27F1B08C8, &qword_24DD4DA78);
  if ((*(isUniquelyReferenced_nonNull_native + 48))(v30, 1, v20) == 1)
  {
    sub_24DD1C414(v32, &qword_27F1B08C8, &qword_24DD4DA78);
    v42 = 0;
  }

  else
  {
    v38 = v109;
    (*(isUniquelyReferenced_nonNull_native + 32))(v109, v30, v20);
    sub_24DD4ACB4();
    (*(isUniquelyReferenced_nonNull_native + 16))(v108, v38, v20);
    v42 = sub_24DD4ACA4();
    v43 = *(isUniquelyReferenced_nonNull_native + 8);
    isUniquelyReferenced_nonNull_native += 8;
    v43(v38, v20);
    sub_24DD1C414(v32, &qword_27F1B08C8, &qword_24DD4DA78);
  }

  v44 = v111;
  *(v5 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_retryThrottle) = v42;
  *(v5 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_session) = v44;
  v45 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_target;
  v46 = sub_24DD4AAC4();
  v77 = *(v46 - 8);
  v47 = *(v77 + 16);
  v78 = v46;
  v47(v5 + v45, v88);
  sub_24DD3BD4C(v87, v5 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_config, type metadata accessor for URLSessionTransport.Config);
  v48 = v44;
  v30 = sub_24DD3AB04(MEMORY[0x277D84F90]);
  v33 = v34;
  v49 = sub_24DD4ACC4();
  v92 = *(v49 + 16);
  if (!v92)
  {

LABEL_27:
    *(v5 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_methodConfig) = v30;
    v71 = v83;
    *v83 = MEMORY[0x277D84F90];
    swift_storeEnumTagMultiPayload();
    v72 = v84;
    *v84 = 0;
    v73 = *(v81 + 28);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B08D0, &qword_24DD4DA80);
    bzero(&v72[v73], *(*(v74 - 8) + 64));
    sub_24DD3CBF8(v71, &v72[v73], type metadata accessor for URLSessionTransport.State);
    sub_24DD3BCCC(v87, type metadata accessor for URLSessionTransport.Config);
    (*(v79 + 8))(v34, v80);
    (*(v77 + 8))(v88, v78);
    memcpy((v5 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state), v72, v85);
    return v5;
  }

  v76 = v5;
  v37 = 0;
  v91 = v49 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
  v109 = (v93 + 16);
  v99 = v105 + 8;
  v100 = v105 + 16;
  v111 = (v97 + 16);
  v96 = (v93 + 32);
  v98 = (v97 + 8);
  v95 = (v93 + 40);
  v89 = (v93 + 8);
  v90 = v49;
  while (1)
  {
    if (v37 >= *(v49 + 16))
    {
LABEL_31:
      __break(1u);
LABEL_32:
      swift_once();
      goto LABEL_2;
    }

    v50 = *(v93 + 72);
    v94 = v37;
    v51 = *(v93 + 16);
    v33 = v110;
    v107 = v50;
    v108 = v51;
    (v51)(v110, v91 + v50 * v37, v15);
    v52 = sub_24DD4AC54();
    v106 = *(v52 + 16);
    if (v106)
    {
      break;
    }

LABEL_7:
    v37 = v94 + 1;

    (*v89)(v110, v15);
    v49 = v90;
    if (v37 == v92)
    {

      v5 = v76;
      v34 = v86;
      goto LABEL_27;
    }
  }

  v32 = 0;
  v53 = *(v105 + 80);
  v103 = v52;
  v104 = v52 + ((v53 + 32) & ~v53);
  while (1)
  {
    if (v32 >= *(v52 + 16))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v54 = v105;
    v55 = v101;
    v5 = v15;
    v56 = v102;
    (*(v105 + 16))(v101, v104 + *(v105 + 72) * v32, v102);
    sub_24DD4AC34();
    v38 = sub_24DD4AC24();
    v34 = v57;
    (*(v54 + 8))(v55, v56);
    v58 = v113;
    sub_24DD4AD14();
    v20 = *v111;
    v59 = v115;
    v60 = v58;
    v15 = v5;
    (*v111)(v115, v60, v114);
    (v108)(v112, v110, v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v116 = v30;
    v33 = v30;
    v37 = sub_24DD39324(v59);
    v62 = v30[2];
    v63 = (v61 & 1) == 0;
    v64 = v62 + v63;
    if (__OFADD__(v62, v63))
    {
      goto LABEL_29;
    }

    v34 = v61;
    if (v30[3] < v64)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v30 = v116;
      if (v61)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_24DD3A180();
      v30 = v116;
      if (v34)
      {
LABEL_11:
        (*v95)(v30[7] + v37 * v107, v112, v5);
        isUniquelyReferenced_nonNull_native = v98;
        v37 = *v98;
        v33 = v114;
        (*v98)(v115, v114);
        (v37)(v113, v33);
        goto LABEL_12;
      }
    }

LABEL_21:
    v30[(v37 >> 6) + 8] |= 1 << v37;
    v67 = v97;
    v33 = v114;
    v34 = v115;
    v20(v30[6] + *(v97 + 72) * v37, v115, v114);
    (*v96)(v30[7] + v37 * v107, v112, v5);
    v37 = *(v67 + 8);
    isUniquelyReferenced_nonNull_native = v98;
    (v37)(v34, v33);
    (v37)(v113, v33);
    v68 = v30[2];
    v69 = __OFADD__(v68, 1);
    v70 = v68 + 1;
    if (v69)
    {
      goto LABEL_30;
    }

    v30[2] = v70;
LABEL_12:
    ++v32;
    v52 = v103;
    if (v106 == v32)
    {
      goto LABEL_7;
    }
  }

  sub_24DD3972C(v64, isUniquelyReferenced_nonNull_native);
  v65 = sub_24DD39324(v115);
  if ((v34 & 1) == (v66 & 1))
  {
    v37 = v65;
    v30 = v116;
    if (v34)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

  result = sub_24DD4B684();
  __break(1u);
  return result;
}

uint64_t sub_24DD3BAC4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24DD0D4B0;

  return sub_24DD2ECCC(a1, v1);
}

uint64_t sub_24DD3BBA8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v11 = *(v2 + 64);
  v15 = *(v2 + 88);
  v16 = *(v2 + 72);
  v14 = *(v2 + 104);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24DD0C914;

  return sub_24DD34050(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_24DD3BCCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24DD3BD4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24DD3BDB8()
{
  result = qword_27F1B0758;
  if (!qword_27F1B0758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B0758);
  }

  return result;
}

void sub_24DD3BE50()
{
  v0 = sub_24DD4ACF4();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    v2 = sub_24DD4AAC4();
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_24DD3C028();
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        v6 = type metadata accessor for URLSessionTransport.Config();
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          v8 = sub_24DD4B0A4();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_24DD3C028()
{
  if (!qword_27F1B0778)
  {
    type metadata accessor for URLSessionTransport.State(255);
    v0 = sub_24DD4AB64();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1B0778);
    }
  }
}

uint64_t sub_24DD3C080()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06E0, &qword_24DD4D6F8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_24DD3C0B0(char *a1)
{
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 2:
      v6 = *a1;

      v5 = sub_24DD3C1AC(0);
      break;
    case 1:
      v4 = *a1;

      v5 = sub_24DD3C18C(0);
      break;
    case 0:
      v3 = *a1;

    default:
      return result;
  }

  v7 = *(v5 + 20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v9 = *(*(v8 - 8) + 8);

  return v9(&a1[v7], v8);
}

char *sub_24DD3C1CC(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    *a1 = *a2;
    *(a1 + 2) = *(a2 + 2);
    v9 = *(sub_24DD3C1AC(0) + 20);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    *(a1 + 2) = *(a2 + 2);
    v7 = *(sub_24DD3C18C(0) + 20);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

char *sub_24DD3C340(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_24DD3BCCC(a1, type metadata accessor for URLSessionTransport.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    *a1 = *a2;
    *(a1 + 2) = *(a2 + 2);
    v9 = *(sub_24DD3C1AC(0) + 20);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    *(a1 + 2) = *(a2 + 2);
    v7 = *(sub_24DD3C18C(0) + 20);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

uint64_t sub_24DD3C4EC()
{
  result = sub_24DD3C18C(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_24DD3C1AC(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void sub_24DD3C5FC()
{
  if (!qword_27F1B0BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
    v0 = sub_24DD4B324();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1B0BA0);
    }
  }
}

uint64_t sub_24DD3C674(char *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = *(a2 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v7 = *(*(v6 - 8) + 8);

  return v7(&a1[v5], v6);
}

uint64_t sub_24DD3C6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t *sub_24DD3C780(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);
  v7 = *(a3 + 20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24DD3C9AC()
{
  sub_24DD3C5FC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initStructMetadata();
  }
}

void sub_24DD3CA44()
{
  sub_24DD3C5FC();
  if (v0 <= 0x3F)
  {
    sub_24DD3CAB8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24DD3CAB8()
{
  if (!qword_27F1B07D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B07D8, &qword_24DD4D960);
    sub_24DD4AFE4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F1B07D0);
    }
  }
}

void *sub_24DD3CB38()
{
  if (MEMORY[0x277D85020])
  {
    return &unk_2860F5E38;
  }

  else
  {
    return (MEMORY[0x277D84F78] + 8);
  }
}

uint64_t sub_24DD3CB60()
{
  if (MEMORY[0x277D85020])
  {
    return sub_24DD3C18C(0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_24DD3CB9C()
{
  if (MEMORY[0x277D85020])
  {
    return sub_24DD3C1AC(0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_24DD3CBF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24DD3CC60(id a1)
{
  if (a1 >= 2)
  {
  }
}

id sub_24DD3CC70(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_24DD3CC80()
{
  v22 = sub_24DD4AD44();
  v1 = *(v22 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  v21 = sub_24DD4ABD4();
  v5 = *(v21 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_24DD4ADF4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v20 = v2 | v6 | v11;
  v13 = (*(v10 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + 16);
  swift_unknownObjectRelease();
  v16 = *(v0 + 32);

  (*(v1 + 8))(v0 + v3, v22);
  (*(v5 + 8))(v0 + v7, v21);
  (*(v10 + 8))(v0 + v12, v9);
  v17 = *(v0 + v13);

  v18 = *(v0 + v14);

  return MEMORY[0x2821FE8E8](v0, v14 + 8, v20 | 7);
}

uint64_t sub_24DD3CE88(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_24DD4AD44() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_24DD4ABD4() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_24DD4ADF4() - 8);
  v11 = (*(v10 + 64) + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = v1[3];
  v20 = v1[2];
  v13 = v1[4];
  v14 = v1[5];
  v15 = v1[6];
  v16 = *(v1 + v11);
  v17 = *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_24DD0D4B0;

  return sub_24DD34C50(a1, v20, v12, v13, v14, v15, v1 + v5, v1 + v8);
}

uint64_t sub_24DD3D0A8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24DD3D108(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_24DD0D4B0;

  return sub_24DD36E3C(a1, v4, v5, v6, v7, v8, v9, v11);
}

id sub_24DD3D204(id result)
{
  if (result != 2)
  {
    return sub_24DD3CC70(result);
  }

  return result;
}

void sub_24DD3D214(id a1)
{
  if (a1 != 2)
  {
    sub_24DD3CC60(a1);
  }
}

uint64_t sub_24DD3D224(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF588, &qword_24DD4CB40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_24DD3D2D4(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }
}

uint64_t sub_24DD3D308(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24DD3D350()
{
  sub_24DD3D504(319, &qword_27F1B08F8, &qword_27F1B0900, &unk_24DD4DAB0);
  if (v0 <= 0x3F)
  {
    sub_24DD3C5FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24DD3D3DC()
{
  sub_24DD3D47C();
  if (v0 <= 0x3F)
  {
    sub_24DD3D504(319, &qword_27F1B0928, &qword_27F1B0930, &unk_24DD4DAE0);
    if (v1 <= 0x3F)
    {
      sub_24DD3D594();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24DD3D47C()
{
  if (!qword_27F1B0918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B0920, &qword_24DD4DAD8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F1B0918);
    }
  }
}

void sub_24DD3D504(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B07D8, &qword_24DD4D960);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_24DD3D594()
{
  if (!qword_27F1B0938)
  {
    sub_24DD3DA04(255, &qword_27F1B0940, 0x277CCAD68);
    v0 = sub_24DD4B2D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1B0938);
    }
  }
}

uint64_t sub_24DD3D610(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DD3D69C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24DD3D728()
{
  sub_24DD3C5FC();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t get_enum_tag_for_layout_string_31GRPCURLSessionTransportInternal010URLSessionB0C7StreamsV11StreamState021_5F152AE2B9124F2744E3L10EF84A69884LLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24DD3D798(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DD3D7EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24DD3D85C()
{
  result = sub_24DD4AFE4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t *sub_24DD3D8D0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_24DD3D914(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24DD3D95C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_24DD3D9B0()
{
  result = qword_27F1B0968;
  if (!qword_27F1B0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B0968);
  }

  return result;
}

uint64_t sub_24DD3DA04(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_24DD3DA68(unint64_t result, unint64_t a2, unint64_t a3)
{
  v4 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  v5 = result & 0xC;
  v6 = 4 << v4;
  v7 = result;
  if (v5 == v6)
  {
    v14 = result;
    v15 = a2;
    v16 = a3;
    v17 = sub_24DD3DBC8(result, a2, a3);
    a2 = v15;
    a3 = v16;
    v7 = v17;
    result = v14;
    if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_19:
    v18 = result;
    v19 = a2;
    v20 = a3;
    v21 = MEMORY[0x253037CA0](v7, 2, a2, a3);
    a2 = v19;
    a3 = v20;
    v13 = v21;
    result = v18;
    v9 = v20 & 0x2000000000000000;
    v10 = HIBYTE(v20) & 0xF;
    v11 = a2 & 0xFFFFFFFFFFFFLL;
    goto LABEL_10;
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

LABEL_5:
  v8 = (v7 >> 16) + 2;
  v9 = a3 & 0x2000000000000000;
  v10 = HIBYTE(a3) & 0xF;
  v11 = a2 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v12 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v12 < v8)
  {
    __break(1u);
    goto LABEL_21;
  }

  v13 = (v8 << 16) | 4;
LABEL_10:
  if (v9)
  {
    v3 = v10;
  }

  else
  {
    v3 = v11;
  }

  if (v13 >> 14 >= 4 * v3)
  {
    return 0;
  }

  if (v5 == v6)
  {
LABEL_21:
    v22 = a3;
    result = sub_24DD3DBC8(result, a2, a3);
    if ((v22 & 0x1000000000000000) == 0)
    {
      return (result & 0xFFFFFFFFFFFF0000) + 65540;
    }

    goto LABEL_22;
  }

  if ((a3 & 0x1000000000000000) == 0)
  {
    return (result & 0xFFFFFFFFFFFF0000) + 65540;
  }

LABEL_22:
  if (v3 > result >> 16)
  {
    return sub_24DD4B1F4();
  }

  __break(1u);
  return result;
}

uint64_t sub_24DD3DBC8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24DD4B224();
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
    v5 = MEMORY[0x253037CA0](15, a1 >> 16);
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

uint64_t sub_24DD3DC44(unint64_t a1, unint64_t a2)
{
  v4 = 0;
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
LABEL_27:
    result = v5;
    if ((a2 & 0x1000000000000000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_28;
  }

  v6 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = 4 << v6;
  v8 = 15;
  while (1)
  {
    v9 = v8 & 0xC;
    v10 = v8;
    if (v9 == v7)
    {
      v14 = v8;
      v10 = sub_24DD3DBC8(v8, a1, a2);
      v8 = v14;
    }

    v11 = v10 >> 16;
    if (v10 >> 16 >= v5)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v20 = v8;
      v13 = sub_24DD4B214();
      v8 = v20;
      if (v9 != v7)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v21[0] = a1;
        v21[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v12 = v21;
      }

      else
      {
        v12 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((a1 & 0x1000000000000000) == 0)
        {
          v19 = v8;
          v12 = sub_24DD4B584();
          v8 = v19;
        }
      }

      v13 = *(v12 + v11);
      if (v9 != v7)
      {
LABEL_21:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_22;
      }
    }

    v8 = sub_24DD3DBC8(v8, a1, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_8:
      v8 = (v8 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_9;
    }

LABEL_22:
    if (v5 <= v8 >> 16)
    {
      goto LABEL_40;
    }

    v8 = sub_24DD4B1F4();
LABEL_9:
    if (v13 == 37)
    {
      ++v4;
    }

    if (4 * v5 == v8 >> 14)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_24DD4B1E4();
LABEL_28:
  v16 = 3 * v4;
  if ((v4 * 3) >> 64 != (3 * v4) >> 63)
  {
    __break(1u);
    goto LABEL_43;
  }

  v17 = __OFSUB__(result, v16);
  v18 = result - v16;
  if (v17)
  {
LABEL_43:
    __break(1u);
    return result;
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    v5 = v18 + v4;
    if (!__OFADD__(v18, v4))
    {
      return v5;
    }

    __break(1u);
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    return v5;
  }

  return sub_24DD4B1E4();
}

unint64_t sub_24DD3DE58(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = sub_24DD3DC44(a1, a2);
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_77;
  }

  v6 = v3 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  if (v4 == v6)
  {
LABEL_71:

    return v3;
  }

LABEL_5:
  v7 = v4 & ~(v4 >> 63);

  v8 = sub_24DD391A8(0, v7, 0, MEMORY[0x277D84F90]);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = (v3 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v10) = 1;
    }

    v11 = 4 << v10;
    v42 = 4 * v9;
    v41 = v9;
    v5 = 15;
    do
    {
      v12 = v5 & 0xC;
      v4 = v5;
      if (v12 == v11)
      {
        v4 = sub_24DD3DBC8(v5, v3, a2);
      }

      v13 = v4 >> 16;
      if (v4 >> 16 >= v9)
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        v38 = v4;
        v39 = sub_24DD4B1E4();
        v4 = v38;
        if (v38 == v39)
        {
          goto LABEL_71;
        }

        goto LABEL_5;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v4 = sub_24DD4B214();
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v43 = v3;
        v44 = a2 & 0xFFFFFFFFFFFFFFLL;
        v4 = *(&v43 + v13);
      }

      else
      {
        v14 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v3 & 0x1000000000000000) == 0)
        {
          v14 = sub_24DD4B584();
        }

        v4 = *(v14 + v13);
      }

      if (v4 == 37)
      {
        v4 = sub_24DD3DA68(v5, v3, a2);
        if (v16)
        {
          goto LABEL_70;
        }

        v5 = v15;
        if ((v4 & 0xC) == v11)
        {
          v4 = sub_24DD3DBC8(v4, v3, a2);
        }

        v17 = v4 >> 16;
        if (v4 >> 16 >= v9)
        {
          goto LABEL_75;
        }

        if ((a2 & 0x1000000000000000) != 0)
        {
          v19 = sub_24DD4B214();
        }

        else if ((a2 & 0x2000000000000000) != 0)
        {
          v43 = v3;
          v44 = a2 & 0xFFFFFFFFFFFFFFLL;
          v19 = *(&v43 + v17);
        }

        else
        {
          v18 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v3 & 0x1000000000000000) == 0)
          {
            v18 = sub_24DD4B584();
          }

          v19 = *(v18 + v17);
        }

        if ((v19 - 58) > 0xF5u)
        {
          v24 = 208;
        }

        else if ((v19 - 91) > 0xE5u)
        {
          v24 = 201;
        }

        else
        {
          if ((v19 - 123) < 0xE6u)
          {
            goto LABEL_70;
          }

          v24 = 169;
        }

        v12 = v5 & 0xC;
        v4 = v5;
        if (v12 == v11)
        {
          v31 = v24;
          v4 = sub_24DD3DBC8(v5, v3, a2);
          v24 = v31;
        }

        v25 = v4 >> 16;
        if (v4 >> 16 >= v9)
        {
          goto LABEL_76;
        }

        if ((a2 & 0x1000000000000000) != 0)
        {
          v28 = v24;
          v27 = sub_24DD4B214();
          v24 = v28;
        }

        else if ((a2 & 0x2000000000000000) != 0)
        {
          v43 = v3;
          v44 = a2 & 0xFFFFFFFFFFFFFFLL;
          v27 = *(&v43 + v25);
        }

        else
        {
          v26 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v3 & 0x1000000000000000) == 0)
          {
            v35 = v24;
            v26 = sub_24DD4B584();
            v24 = v35;
          }

          v27 = *(v26 + v25);
        }

        if ((v27 - 58) > 0xF5u)
        {
          v29 = 208;
        }

        else if ((v27 - 91) > 0xE5u)
        {
          v29 = 201;
        }

        else
        {
          if ((v27 - 123) < 0xE6u)
          {
LABEL_70:

            goto LABEL_71;
          }

          v29 = 169;
        }

        v21 = *(v8 + 2);
        v30 = *(v8 + 3);
        v22 = v21 + 1;
        if (v21 >= v30 >> 1)
        {
          v40 = v27;
          v32 = v8;
          v33 = v24;
          v34 = sub_24DD391A8((v30 > 1), v21 + 1, 1, v32);
          v24 = v33;
          v8 = v34;
          v27 = v40;
        }

        v4 = (v27 + v29) | (16 * (v19 + v24));
        v9 = v41;
      }

      else
      {
        v21 = *(v8 + 2);
        v20 = *(v8 + 3);
        v22 = v21 + 1;
        if (v21 >= v20 >> 1)
        {
          v23 = v4;
          v8 = sub_24DD391A8((v20 > 1), v21 + 1, 1, v8);
          v4 = v23;
        }
      }

      *(v8 + 2) = v22;
      v8[v21 + 32] = v4;
      if (v12 == v11)
      {
        v4 = sub_24DD3DBC8(v5, v3, a2);
        v5 = v4;
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_12:
          v5 = (v5 & 0xFFFFFFFFFFFF0000) + 65540;
          continue;
        }
      }

      else if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_12;
      }

      if (v9 <= v5 >> 16)
      {
        goto LABEL_74;
      }

      v5 = sub_24DD4B1F4();
    }

    while (v42 > v5 >> 14);
  }

  v36 = *(v8 + 2);
  v3 = sub_24DD4B1A4();

  return v3;
}

double static URLSessionTransport.Config.defaults.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for URLSessionTransport.Config();
  v3 = a1 + v2[8];
  sub_24DD4ADD4();
  v4 = a1 + v2[9];
  sub_24DD4AE04();
  *&result = 0x4000;
  *a1 = xmmword_24DD4DC00;
  a1[1] = xmmword_24DD4DC00;
  *(a1 + v2[10]) = 0;
  return result;
}

uint64_t URLSessionTransport.Config.compressionAlgorithm.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for URLSessionTransport.Config() + 32);
  v4 = sub_24DD4ADF4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t URLSessionTransport.Config.compressionAlgorithm.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for URLSessionTransport.Config() + 32);
  v4 = sub_24DD4ADF4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t URLSessionTransport.Config.enabledCompressionAlgorithms.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for URLSessionTransport.Config() + 36);
  v4 = sub_24DD4AE64();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t URLSessionTransport.Config.enabledCompressionAlgorithms.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for URLSessionTransport.Config() + 36);
  v4 = sub_24DD4AE64();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t URLSessionTransport.Config.assumesHTTP3Capable.setter(char a1)
{
  result = type metadata accessor for URLSessionTransport.Config();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t static URLSessionTransport.Config.defaults(configure:)@<X0>(uint64_t (*a1)(_OWORD *)@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for URLSessionTransport.Config();
  v5 = a2 + v4[8];
  sub_24DD4ADD4();
  v6 = a2 + v4[9];
  sub_24DD4AE04();
  *a2 = xmmword_24DD4DC00;
  a2[1] = xmmword_24DD4DC00;
  *(a2 + v4[10]) = 0;
  return a1(a2);
}

uint64_t type metadata accessor for URLSessionTransport.Config()
{
  result = qword_27F1B0978;
  if (!qword_27F1B0978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24DD3E7E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24DD4ADF4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[8];
  }

  else
  {
    v10 = sub_24DD4AE64();
    if (*(*(v10 - 8) + 84) != a2)
    {
      v13 = *(a1 + a3[10]);
      if (v13 >= 2)
      {
        return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[9];
  }

  v11 = *(v8 + 48);

  return v11(a1 + v9, a2, v7);
}

uint64_t sub_24DD3E90C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_24DD4ADF4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
  }

  else
  {
    result = sub_24DD4AE64();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[10]) = a2 + 1;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[9];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_24DD3EA10()
{
  result = sub_24DD4ADF4();
  if (v1 <= 0x3F)
  {
    result = sub_24DD4AE64();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DD3EAB0()
{
  v0 = sub_24DD4ADF4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD4ADC4();
  v5 = sub_24DD4ADB4();
  v6 = *(v1 + 8);
  v6(v4, v0);
  if (v5)
  {
    return 1885960807;
  }

  sub_24DD4ADE4();
  v8 = sub_24DD4ADB4();
  v6(v4, v0);
  if (v8)
  {
    return 0x6574616C666564;
  }

  sub_24DD4ADD4();
  v9 = sub_24DD4ADB4();
  v6(v4, v0);
  if (v9)
  {
    return 0x797469746E656469;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_24DD3EC44()
{
  v1 = v0;
  v2 = sub_24DD4ADF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  (*(v3 + 16))(&v15 - v8, v1, v2);
  sub_24DD4ADE4();
  sub_24DD3EE08();
  v10 = sub_24DD4B154();
  v11 = *(v3 + 8);
  v11(v7, v2);
  if (v10 & 1) != 0 || (sub_24DD4ADC4(), v12 = sub_24DD4B154(), v11(v7, v2), (v12))
  {
    v13 = 1;
  }

  else
  {
    sub_24DD4ADD4();
    v13 = sub_24DD4B154();
    v11(v7, v2);
  }

  v11(v9, v2);
  return v13 & 1;
}

unint64_t sub_24DD3EE08()
{
  result = qword_27F1AF618;
  if (!qword_27F1AF618)
  {
    sub_24DD4ADF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1AF618);
  }

  return result;
}

uint64_t sub_24DD3EE60@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_24DD4ADF4();
  v18 = *(v10 - 8);
  v11 = *(v18 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_24DD3F070(1885960807, 0xE400000000000000, a1, a2, a3, a4))
  {

    sub_24DD4ADC4();
LABEL_7:
    (*(v18 + 32))(a5, v13, v10);
    return (*(v18 + 56))(a5, 0, 1, v10);
  }

  if (sub_24DD3F070(0x6574616C666564, 0xE700000000000000, a1, a2, a3, a4))
  {

    sub_24DD4ADE4();
    goto LABEL_7;
  }

  v14 = sub_24DD3F070(0x797469746E656469, 0xE800000000000000, a1, a2, a3, a4);

  if (v14)
  {
    sub_24DD4ADD4();
    goto LABEL_7;
  }

  v16 = *(v18 + 56);

  return v16(a5, 1, 1, v10);
}

uint64_t sub_24DD3F070(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 == a5 && a2 == a6 && !(a3 >> 16) && v7 == a4 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_24DD4B614() & 1;
  }
}

unint64_t sub_24DD3F0DC(unint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = a5 >> 1;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (result)
  {
    v6 = a5 >> 1;
    if ((a5 >> 1) - a4 < result)
    {
      goto LABEL_7;
    }
  }

  v6 = a4 + result;
  if (!__OFADD__(a4, result))
  {
    if (v5 < v6)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_7:
    if (v6 >= a4)
    {
      if (v5 >= a4)
      {
        return a2;
      }

      goto LABEL_13;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *RequestPartOutputStreamBridge.__allocating_init(outputStream:requestParts:compressor:streamID:openOutputStream:)(void *a1, uint64_t a2, _BYTE *a3, uint64_t *a4, int a5)
{
  v29 = a5;
  v10 = sub_24DD4B0A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_allocWithZone(v5);
  LOBYTE(a3) = *a3;
  v16 = *a4;
  v17 = a4[1];
  *&v15[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream] = a1;
  type metadata accessor for RequestPartOutputStreamBridge.State(0);
  swift_storeEnumTagMultiPayload();
  *&v15[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_requestParts] = a2;
  v15[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_compressor] = a3;
  v18 = &v15[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID];
  *v18 = v16;
  v18[1] = v17;
  v19 = a1;

  sub_24DD4B094();
  (*(v11 + 32))(&v15[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_logger], v14, v10);
  v30.receiver = v15;
  v30.super_class = v28;
  v20 = objc_msgSendSuper2(&v30, sel_init);
  v21 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream;
  v22 = *&v20[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream];
  v23 = v20;
  [v22 setDelegate_];
  v24 = qword_27F1AF290;
  v25 = *&v20[v21];
  if (v24 != -1)
  {
    swift_once();
  }

  MEMORY[0x2530381D0](v25, qword_27F1B0990);

  if (v29)
  {
    v26 = *&v20[v21];
    [v26 open];
  }

  else
  {
  }

  return v23;
}

uint64_t sub_24DD3F3D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0810, &qword_24DD4D9B0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AC0, &qword_24DD4DD58);
  v2[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DD3F4EC, 0, 0);
}

uint64_t sub_24DD3F4EC()
{
  v48 = v0;
  v1 = *(v0[3] + 16);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 7) & 0x1FFFFFFF8;
  v4 = pthread_mutex_lock((v1 + v3));
  if (v4)
  {
    __break(1u);
    goto LABEL_26;
  }

  sub_24DD3FBB0(v0[9]);
  v4 = pthread_mutex_unlock((v1 + v3));
  if (v4)
  {
LABEL_26:
    __break(1u);
    return MEMORY[0x282200830](v4, v5);
  }

  v6 = v0[7];
  sub_24DD1C3AC(v0[9], v0[8], &qword_27F1B0AC0, &qword_24DD4DD58);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v27 = v0[8];
      v28 = v0[6];
      v29 = *(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AC8, &qword_24DD4DD70) + 48));
      sub_24DD1C474(v27, v28, &qword_27F1B0810, &qword_24DD4D9B0);
      v30 = *(v29 + 16);
      if (v30)
      {
        v31 = (v29 + 40);
        do
        {
          v33 = *(v31 - 1);
          v32 = *v31;
          v46 = 0;
          v47 = 0;

          v33(&v46);

          v31 += 2;
          --v30;
        }

        while (v30);
      }

      v35 = v0[5];
      v34 = v0[6];
      v36 = v0[4];
      v37 = v0[2];
      sub_24DD1C414(v0[9], &qword_27F1B0AC0, &qword_24DD4DD58);

      sub_24DD1C474(v34, v37, &qword_27F1B0810, &qword_24DD4D9B0);
      (*(v35 + 56))(v37, 0, 1, v36);
    }

    else
    {
      v11 = v0[8];
      v12 = v0[4];
      v13 = v0[5];
      v14 = v0[2];
      sub_24DD1C414(v0[9], &qword_27F1B0AC0, &qword_24DD4DD58);
      sub_24DD1C474(v11, v14, &qword_27F1B0810, &qword_24DD4D9B0);
      (*(v13 + 56))(v14, 0, 1, v12);
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v8 = v0[4];
      v9 = v0[5];
      v10 = v0[2];
      sub_24DD1C414(v0[9], &qword_27F1B0AC0, &qword_24DD4DD58);
      (*(v9 + 56))(v10, 1, 1, v8);
LABEL_21:
      v43 = v0[8];
      v42 = v0[9];
      v44 = v0[6];

      v23 = v0[1];
      goto LABEL_22;
    }

    v24 = *(MEMORY[0x277D85A10] + 4);
    v25 = swift_task_alloc();
    v0[10] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A90, &qword_24DD4D9D0);
    *v25 = v0;
    v25[1] = sub_24DD3F970;
    v4 = v0[2];
    v26 = v0[3];
    v5 = &unk_24DD4DD68;

    return MEMORY[0x282200830](v4, v5);
  }

  v15 = v0[8];
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];
  if (v17)
  {
    v19 = v15[2];

    v17(v20);
    sub_24DD1C134(v17);
  }

  if (!v16)
  {
    v38 = v0[9];
    v39 = v0[4];
    v40 = v0[5];
    v41 = v0[2];
    sub_24DD1C134(v17);
    sub_24DD1C414(v38, &qword_27F1B0AC0, &qword_24DD4DD58);
    (*(v40 + 56))(v41, 1, 1, v39);
    goto LABEL_21;
  }

  swift_willThrow();
  sub_24DD1C134(v17);
  v21 = v0[8];
  v22 = v0[6];
  sub_24DD1C414(v0[9], &qword_27F1B0AC0, &qword_24DD4DD58);

  v23 = v0[1];
LABEL_22:

  return v23();
}

uint64_t sub_24DD3F970()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_24DD3FB14;
  }

  else
  {
    v3 = sub_24DD3FA84;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24DD3FA84()
{
  sub_24DD1C414(v0[9], &qword_27F1B0AC0, &qword_24DD4DD58);
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24DD3FB14()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[6];
  sub_24DD1C414(v0[9], &qword_27F1B0AC0, &qword_24DD4DD58);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24DD3FBB0@<X0>(void *a1@<X8>)
{
  v96 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A90, &qword_24DD4D9D0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v90 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v89 - v6;
  *&v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0810, &qword_24DD4D9B0);
  *&v93 = *(v92 - 8);
  v8 = *(v93 + 64);
  v9 = MEMORY[0x28223BE20](v92);
  *&v91 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v89 = &v89 - v11;
  *&v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B00, &unk_24DD4DDA0);
  v12 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v14 = &v89 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AF8, &qword_24DD4DD98);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v89 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0878, &qword_24DD4DA20);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v89 - v27;
  v94 = v1;
  sub_24DD1C3AC(v1, &v89 - v27, &qword_27F1B0878, &qword_24DD4DA20);
  v95 = v22;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v41 = *v28;
      v43 = *(v28 + 2);
      v45 = *(v28 + 3);
      v44 = *(v28 + 4);
      v98 = *(v28 + 1);
      v42 = v98;
      v46 = v94;
      sub_24DD1C414(v94, &qword_27F1B0878, &qword_24DD4DA20);
      swift_storeEnumTagMultiPayload();
      if (v42[3] < 1)
      {
        (*(v93 + 56))(v7, 1, 1, v92);

        sub_24DD1C414(v7, &qword_27F1B0A90, &qword_24DD4D9D0);
        sub_24DD1C414(v46, &qword_27F1B0878, &qword_24DD4DA20);
        *v46 = v41;
        swift_storeEnumTagMultiPayload();
        if (v45)
        {
          v73 = v44;
        }

        else
        {
          v73 = 0;
        }

        v74 = v96;
        *v96 = v43;
        v74[1] = v45;
        v74[2] = v73;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AC0, &qword_24DD4DD58);
        return swift_storeEnumTagMultiPayload();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24DD49274(&qword_27F1B0810, &qword_24DD4D9B0, &qword_27F1B0B38, &qword_24DD4DDD8);
        v42 = v98;
      }

      v47 = v93;
      sub_24DD1C474(v42 + ((*(v47 + 80) + 40) & ~*(v47 + 80)) + *(v93 + 72) * v42[4], v7, &qword_27F1B0810, &qword_24DD4D9B0);
      v48 = v42[4];
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (!v49)
      {
        v51 = v42[3];
        if (v50 >= v42[2])
        {
          v50 = 0;
        }

        v42[4] = v50;
        if (!__OFSUB__(v51, 1))
        {
          v42[3] = v51 - 1;
          (*(v47 + 56))(v7, 0, 1, v92);
          v52 = v89;
          sub_24DD1C474(v7, v89, &qword_27F1B0810, &qword_24DD4D9B0);
          sub_24DD1C414(v46, &qword_27F1B0878, &qword_24DD4DA20);
          *v46 = v41;
          *(v46 + 8) = v42;
          *(v46 + 16) = v43;
          *(v46 + 24) = v45;
          *(v46 + 32) = v44;
          swift_storeEnumTagMultiPayload();
          sub_24DD1C474(v52, v96, &qword_27F1B0810, &qword_24DD4D9B0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AC0, &qword_24DD4DD58);
          return swift_storeEnumTagMultiPayload();
        }

        goto LABEL_52;
      }

      goto LABEL_50;
    }

    if (EnumCaseMultiPayload == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AC0, &qword_24DD4DD58);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v30 = *(v28 + 4);
      LODWORD(v93) = v28[40];
      v32 = *(v28 + 6);
      v31 = *(v28 + 7);
      v33 = *v28;
      v91 = *(v28 + 1);
      v92 = v33;
      v34 = *(&v91 + 1);
      v90 = v30;
      sub_24DD1C124(*(&v91 + 1));
      sub_24DD1C124(v32);
      v35 = *sub_24DD4B024();
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AD0, &qword_24DD4DD78);
      v37 = *(*(v36 - 8) + 56);
      v37(v21, 1, 1, v36);
      swift_retain_n();
      sub_24DD1C134(v34);
      sub_24DD1C134(v32);
      v38 = v97;
      v39 = *(v97 + 40);
      v37(&v26[v39], 1, 1, v36);
      v40 = v91;
      *v26 = v92;
      *(v26 + 1) = v40;
      *(v26 + 4) = v90;
      v26[40] = v93;
      *(v26 + 6) = v32;
      *(v26 + 7) = v31;
      *(v26 + 8) = v35;
      sub_24DD1C144(v21, &v26[v39], &qword_27F1B0AF8, &qword_24DD4DD98);
      *&v26[v38[11]] = v35;
      *&v26[v38[12]] = v35;
      v26[v38[13]] = 0;
      swift_storeEnumTagMultiPayload();
      sub_24DD1C144(v26, v94, &qword_27F1B0878, &qword_24DD4DA20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AC0, &qword_24DD4DD58);
      return swift_storeEnumTagMultiPayload();
    }

    sub_24DD1C474(v28, v14, &unk_27F1B0B00, &unk_24DD4DDA0);
    v53 = v97;
    sub_24DD1C3AC(&v14[*(v97 + 40)], v19, &qword_27F1B0AF8, &qword_24DD4DD98);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AD0, &qword_24DD4DD78);
    v55 = (*(*(v54 - 8) + 48))(v19, 1, v54);
    sub_24DD1C414(v19, &qword_27F1B0AF8, &qword_24DD4DD98);
    if (v55 == 1)
    {
      v56 = v94;
      sub_24DD1C414(v94, &qword_27F1B0878, &qword_24DD4DA20);
      swift_storeEnumTagMultiPayload();
      v57 = v14 + 64;
      v58 = v96;
      v59 = v91;
      v60 = v93;
      if (*(*(v14 + 8) + 24) < 1)
      {
        v75 = v90;
        (*(v93 + 56))(v90, 1, 1, v92);
        sub_24DD1C414(v75, &qword_27F1B0A90, &qword_24DD4D9D0);
        sub_24DD1C414(v56, &qword_27F1B0878, &qword_24DD4DA20);
        sub_24DD1C474(v14, v56, &unk_27F1B0B00, &unk_24DD4DDA0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AC0, &qword_24DD4DD58);
        return swift_storeEnumTagMultiPayload();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24DD49274(&qword_27F1B0810, &qword_24DD4D9B0, &qword_27F1B0B38, &qword_24DD4DDD8);
      }

      v61 = *v57;
      v62 = *v57 + ((*(v60 + 80) + 40) & ~*(v60 + 80)) + *(v60 + 72) * *(*v57 + 32);
      v63 = v90;
      sub_24DD1C474(v62, v90, &qword_27F1B0810, &qword_24DD4D9B0);
      v64 = v61[4];
      v49 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v49)
      {
        goto LABEL_51;
      }

      v66 = v61[3];
      if (v65 >= v61[2])
      {
        v65 = 0;
      }

      v61[4] = v65;
      if (__OFSUB__(v66, 1))
      {
        goto LABEL_53;
      }

      v61[3] = v66 - 1;
      (*(v60 + 56))(v63, 0, 1, v92);
      sub_24DD1C474(v63, v59, &qword_27F1B0810, &qword_24DD4D9B0);
      v67 = *v14;
      v69 = *(v14 + 2);
      v68 = *(v14 + 3);
      v70 = *(v14 + 4);
      if (v68)
      {
        v93 = *v14;
        sub_24DD1C124(v68);
        v71 = v68(v59);
        sub_24DD1C134(v68);
        v72 = v69 - v71;
        if (__OFSUB__(v69, v71))
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v67 = v93;
      }

      else
      {
        v72 = v69 - 1;
        if (__OFSUB__(v69, 1))
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }
      }

      if (v72 < 0)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      *v14 = v67;
      *(v14 + 2) = v72;
      *(v14 + 3) = v68;
      *(v14 + 4) = v70;
      v14[*(v53 + 52)] = v72 < v67;
      if (v72 >= v67)
      {
        sub_24DD1C414(v56, &qword_27F1B0878, &qword_24DD4DA20);
        sub_24DD1C474(v14, v56, &unk_27F1B0B00, &unk_24DD4DDA0);
        swift_storeEnumTagMultiPayload();
        sub_24DD1C474(v59, v58, &qword_27F1B0810, &qword_24DD4D9B0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AC0, &qword_24DD4DD58);
        return swift_storeEnumTagMultiPayload();
      }

      v76 = *(v53 + 44);
      *&v93 = v76;
      v77 = *&v14[v76];
      v78 = v77[3];
      if (!v78)
      {
        v86 = *&v14[v76];

        v80 = MEMORY[0x277D84F90];
LABEL_47:
        *&v14[v93] = *sub_24DD4B024();

        sub_24DD1C414(v56, &qword_27F1B0878, &qword_24DD4DA20);
        sub_24DD1C474(v14, v56, &unk_27F1B0B00, &unk_24DD4DDA0);
        swift_storeEnumTagMultiPayload();
        v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AC8, &qword_24DD4DD70) + 48);
        sub_24DD1C474(v91, v58, &qword_27F1B0810, &qword_24DD4D9B0);
        *(v58 + v87) = v80;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AC0, &qword_24DD4DD58);
        return swift_storeEnumTagMultiPayload();
      }

      v98 = MEMORY[0x277D84F90];
      sub_24DD286D4(0, v78 & ~(v78 >> 63), 0);
      if (v78 < 0)
      {
        goto LABEL_57;
      }

      v79 = 0;
      v80 = v98;
      while (v79 < v77[3])
      {
        v81 = v77[4];
        if (v79 + v81 >= v77[2])
        {
          v82 = v77[2];
        }

        else
        {
          v82 = 0;
        }

        v83 = *&v77[3 * v79 + 6 + 3 * (v81 - v82)];
        v98 = v80;
        v85 = v80[2];
        v84 = v80[3];
        v97 = v83;

        if (v85 >= v84 >> 1)
        {
          sub_24DD286D4((v84 > 1), v85 + 1, 1);
          v80 = v98;
        }

        ++v79;
        v80[2] = v85 + 1;
        *&v80[2 * v85 + 4] = v97;
        if (v78 == v79)
        {

          v58 = v96;
          v56 = v94;
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

LABEL_58:
  result = sub_24DD4B5B4();
  __break(1u);
  return result;
}

uint64_t sub_24DD40834(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24DD40854, 0, 0);
}

uint64_t sub_24DD40854()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  v0[4] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A90, &qword_24DD4D9D0);
  *v2 = v0;
  v2[1] = sub_24DD2EDC4;
  v4 = v0[2];
  v5 = v0[3];

  return MEMORY[0x2822008A0](v4, 0, 0, 0x4E646E6570737573, 0xED00002928747865, sub_24DD49104, v5, v3);
}

uint64_t sub_24DD40940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A90, &qword_24DD4D9D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v65 = &v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0810, &qword_24DD4D9B0);
  v63 = *(v7 - 8);
  v64 = v7;
  v8 = *(v63 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v62 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AD0, &qword_24DD4DD78);
  v66 = *(v13 - 8);
  v67 = v13;
  v14 = *(v66 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v62 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v62 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B10, &qword_24DD4DDB0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v62 - v28;
  v30 = *(a2 + 16);
  v31 = *(*v30 + *MEMORY[0x277D841D0] + 16);
  v32 = (*(*v30 + 48) + 7) & 0x1FFFFFFF8;
  result = pthread_mutex_lock((v30 + v32));
  if (result)
  {
    __break(1u);
  }

  else
  {
    sub_24DD4104C(a1, v29);
    result = pthread_mutex_unlock((v30 + v32));
    if (!result)
    {
      sub_24DD1C3AC(v29, v27, &qword_27F1B0B10, &qword_24DD4DDB0);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B18, &qword_24DD4DDB8);
      if ((*(*(v34 - 8) + 48))(v27, 1, v34) == 1)
      {
        return sub_24DD1C414(v29, &qword_27F1B0B10, &qword_24DD4DDB0);
      }

      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B28, &qword_24DD4DDC8);
          v50 = *(v49 + 48);
          v51 = *&v27[*(v49 + 64)];
          v53 = v66;
          v52 = v67;
          (*(v66 + 32))(v20, v27, v67);
          v54 = v62;
          sub_24DD1C474(&v27[v50], v62, &qword_27F1B0810, &qword_24DD4D9B0);
          v55 = v65;
          sub_24DD1C3AC(v54, v65, &qword_27F1B0810, &qword_24DD4D9B0);
          (*(v63 + 56))(v55, 0, 1, v64);
          sub_24DD4B314();
          v56 = *(v51 + 16);
          if (v56)
          {
            v57 = (v51 + 40);
            do
            {
              v59 = *(v57 - 1);
              v58 = *v57;
              v68 = 0;
              v69 = 0;

              v59(&v68);

              v57 += 2;
              --v56;
            }

            while (v56);
          }

          sub_24DD1C414(v54, &qword_27F1B0810, &qword_24DD4D9B0);
          (*(v53 + 8))(v20, v52);
        }

        else
        {
          v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B30, &qword_24DD4DDD0) + 48);
          v38 = v66;
          v37 = v67;
          (*(v66 + 32))(v22, v27, v67);
          sub_24DD1C474(&v27[v36], v12, &qword_27F1B0810, &qword_24DD4D9B0);
          v39 = v65;
          sub_24DD1C3AC(v12, v65, &qword_27F1B0810, &qword_24DD4D9B0);
          (*(v63 + 56))(v39, 0, 1, v64);
          sub_24DD4B314();
          sub_24DD1C414(v12, &qword_27F1B0810, &qword_24DD4D9B0);
          (*(v38 + 8))(v22, v37);
        }

        return sub_24DD1C414(v29, &qword_27F1B0B10, &qword_24DD4DDB0);
      }

      if (EnumCaseMultiPayload != 2)
      {
        v61 = v66;
        v60 = v67;
        (*(v66 + 32))(v22, v27, v67);
        (*(v63 + 56))(v65, 1, 1, v64);
        sub_24DD4B314();
        (*(v61 + 8))(v22, v60);
        return sub_24DD1C414(v29, &qword_27F1B0B10, &qword_24DD4DDB0);
      }

      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B20, &qword_24DD4DDC0);
      v41 = *&v27[*(v40 + 48)];
      v42 = &v27[*(v40 + 64)];
      v43 = *v42;
      v44 = *(v42 + 1);
      v46 = v66;
      v45 = v67;
      (*(v66 + 32))(v17, v27, v67);
      if (v41)
      {
        v68 = v41;
        v47 = v41;
        sub_24DD4B304();
        if (v43)
        {
LABEL_11:

          v43(v48);
          sub_24DD1C134(v43);

          sub_24DD1C134(v43);
LABEL_19:
          (*(v46 + 8))(v17, v45);
          return sub_24DD1C414(v29, &qword_27F1B0B10, &qword_24DD4DDB0);
        }
      }

      else
      {
        (*(v63 + 56))(v65, 1, 1, v64);
        sub_24DD4B314();
        if (v43)
        {
          goto LABEL_11;
        }
      }

      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24DD4104C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v115 = a1;
  v116 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A90, &qword_24DD4D9D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v107 - v9;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0810, &qword_24DD4D9B0);
  *&v117 = *(v113 - 8);
  v11 = *(v117 + 64);
  v12 = MEMORY[0x28223BE20](v113);
  v14 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v112 = &v107 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AF8, &qword_24DD4DD98);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v107 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B00, &unk_24DD4DDA0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v107 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0878, &qword_24DD4DA20);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v107 - v26;
  v114 = v3;
  v28 = v3;
  v30 = v29;
  sub_24DD1C3AC(v28, &v107 - v26, &qword_27F1B0878, &qword_24DD4DA20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v111 = v30;
    v112 = v23;
    v109 = v14;
    v110 = v20;
    if (EnumCaseMultiPayload != 1)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v50 = v112;
    sub_24DD1C474(v27, v112, &unk_27F1B0B00, &unk_24DD4DDA0);
    v51 = *(v110 + 40);
    sub_24DD1C3AC(v50 + v51, v19, &qword_27F1B0AF8, &qword_24DD4DD98);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AD0, &qword_24DD4DD78);
    v53 = *(v52 - 8);
    v54 = v52;
    v55 = (*(v53 + 48))(v19, 1);
    sub_24DD1C414(v19, &qword_27F1B0AF8, &qword_24DD4DD98);
    v56 = v117;
    if (v55 != 1)
    {
LABEL_59:
      result = sub_24DD4B5B4();
      __break(1u);
      return result;
    }

    v57 = v114;
    sub_24DD1C414(v114, &qword_27F1B0878, &qword_24DD4DA20);
    swift_storeEnumTagMultiPayload();
    v58 = v50 + 64;
    if (*(*(v50 + 64) + 24) < 1)
    {
      (*(v56 + 56))(v8, 1, 1, v113);
      sub_24DD1C414(v8, &qword_27F1B0A90, &qword_24DD4D9D0);
      sub_24DD1C414(v50 + v51, &qword_27F1B0AF8, &qword_24DD4DD98);
      (*(v53 + 16))(v50 + v51, v115, v54);
      (*(v53 + 56))(v50 + v51, 0, 1, v54);
      sub_24DD1C414(v57, &qword_27F1B0878, &qword_24DD4DA20);
      sub_24DD1C3AC(v50, v57, &unk_27F1B0B00, &unk_24DD4DDA0);
      swift_storeEnumTagMultiPayload();
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B18, &qword_24DD4DDB8);
      (*(*(v81 - 8) + 56))(v116, 1, 1, v81);
      v82 = v50;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24DD49274(&qword_27F1B0810, &qword_24DD4D9B0, &qword_27F1B0B38, &qword_24DD4DDD8);
      }

      v59 = *v58;
      sub_24DD1C474(*v58 + ((*(v56 + 80) + 40) & ~*(v56 + 80)) + *(v56 + 72) * *(*v58 + 32), v8, &qword_27F1B0810, &qword_24DD4D9B0);
      v60 = v59[4];
      v41 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v41)
      {
        goto LABEL_51;
      }

      v108 = v53;
      v62 = v59[3];
      if (v61 >= v59[2])
      {
        v61 = 0;
      }

      v59[4] = v61;
      if (__OFSUB__(v62, 1))
      {
        goto LABEL_53;
      }

      v63 = v54;
      v59[3] = v62 - 1;
      (*(v56 + 56))(v8, 0, 1, v113);
      v64 = v109;
      sub_24DD1C474(v8, v109, &qword_27F1B0810, &qword_24DD4D9B0);
      v65 = v112;
      v66 = *v112;
      v68 = *(v112 + 2);
      v67 = *(v112 + 3);
      v69 = *(v112 + 4);
      if (v67)
      {
        v117 = *v112;
        sub_24DD1C124(v67);
        v70 = v67(v64);
        sub_24DD1C134(v67);
        v71 = v68 - v70;
        if (__OFSUB__(v68, v70))
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v65 = v112;
        v66 = v117;
      }

      else
      {
        v71 = v68 - 1;
        if (__OFSUB__(v68, 1))
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }
      }

      if (v71 < 0)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      *v65 = v66;
      *(v65 + 16) = v71;
      *(v65 + 24) = v67;
      *(v65 + 32) = v69;
      v83 = v110;
      *(v65 + *(v110 + 52)) = v71 < v66;
      if (v71 < v66)
      {
        v84 = *(v83 + 44);
        v85 = *(v65 + v84);
        v86 = v85[3];
        if (v86)
        {
          v113 = v63;
          v118 = MEMORY[0x277D84F90];
          sub_24DD286D4(0, v86 & ~(v86 >> 63), 0);
          if (v86 < 0)
          {
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          v87 = 0;
          v88 = v118;
          while (v87 < v85[3])
          {
            v89 = v85[4];
            if (v87 + v89 >= v85[2])
            {
              v90 = v85[2];
            }

            else
            {
              v90 = 0;
            }

            v91 = *&v85[3 * v87 + 6 + 3 * (v89 - v90)];
            v118 = v88;
            v93 = v88[2];
            v92 = v88[3];
            v117 = v91;

            if (v93 >= v92 >> 1)
            {
              sub_24DD286D4((v92 > 1), v93 + 1, 1);
              v88 = v118;
            }

            ++v87;
            v88[2] = v93 + 1;
            *&v88[2 * v93 + 4] = v117;
            if (v86 == v87)
            {
              v97 = v84;

              v64 = v109;
              v63 = v113;
              goto LABEL_47;
            }
          }

          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v97 = v84;
        v98 = *(v65 + v84);

        v88 = MEMORY[0x277D84F90];
LABEL_47:
        v99 = sub_24DD4B024();
        v100 = v112;
        *&v112[v97] = *v99;

        v101 = v114;
        sub_24DD1C414(v114, &qword_27F1B0878, &qword_24DD4DA20);
        sub_24DD1C3AC(v100, v101, &unk_27F1B0B00, &unk_24DD4DDA0);
        swift_storeEnumTagMultiPayload();
        v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B28, &qword_24DD4DDC8);
        v103 = *(v102 + 48);
        v104 = *(v102 + 64);
        v105 = v116;
        (*(v108 + 16))(v116, v115, v63);
        sub_24DD1C474(v64, v105 + v103, &qword_27F1B0810, &qword_24DD4D9B0);
        *(v105 + v104) = v88;
        v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B18, &qword_24DD4DDB8);
        swift_storeEnumTagMultiPayload();
        (*(*(v106 - 8) + 56))(v105, 0, 1, v106);
        v82 = v100;
      }

      else
      {
        sub_24DD1C414(v57, &qword_27F1B0878, &qword_24DD4DA20);
        sub_24DD1C3AC(v65, v57, &unk_27F1B0B00, &unk_24DD4DDA0);
        swift_storeEnumTagMultiPayload();
        v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B30, &qword_24DD4DDD0) + 48);
        v95 = v116;
        (*(v108 + 16))(v116, v115, v63);
        sub_24DD1C474(v64, v95 + v94, &qword_27F1B0810, &qword_24DD4D9B0);
        v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B18, &qword_24DD4DDB8);
        swift_storeEnumTagMultiPayload();
        (*(*(v96 - 8) + 56))(v95, 0, 1, v96);
        v82 = v65;
      }
    }

    return sub_24DD1C414(v82, &unk_27F1B0B00, &unk_24DD4DDA0);
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AD0, &qword_24DD4DD78);
      v48 = v116;
      (*(*(v72 - 8) + 16))(v116, v115, v72);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B18, &qword_24DD4DDB8);
      goto LABEL_25;
    }

    goto LABEL_59;
  }

  v32 = *v27;
  v33 = *(v27 + 1);
  v34 = *(v27 + 2);
  v35 = *(v27 + 3);
  v36 = *(v27 + 4);
  v118 = v33;
  v37 = v114;
  sub_24DD1C414(v114, &qword_27F1B0878, &qword_24DD4DA20);
  swift_storeEnumTagMultiPayload();
  if (v33[3] >= 1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v117;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24DD49274(&qword_27F1B0810, &qword_24DD4D9B0, &qword_27F1B0B38, &qword_24DD4DDD8);
      v33 = v118;
    }

    sub_24DD1C474(v33 + ((*(v39 + 80) + 40) & ~*(v39 + 80)) + *(v39 + 72) * v33[4], v10, &qword_27F1B0810, &qword_24DD4D9B0);
    v40 = v33[4];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (!v41)
    {
      v43 = v33[3];
      if (v42 >= v33[2])
      {
        v42 = 0;
      }

      v33[4] = v42;
      if (!__OFSUB__(v43, 1))
      {
        v33[3] = v43 - 1;
        (*(v39 + 56))(v10, 0, 1, v113);
        v44 = v112;
        sub_24DD1C474(v10, v112, &qword_27F1B0810, &qword_24DD4D9B0);
        v45 = v114;
        sub_24DD1C414(v114, &qword_27F1B0878, &qword_24DD4DA20);
        *v45 = v32;
        *(v45 + 8) = v33;
        *(v45 + 16) = v34;
        *(v45 + 24) = v35;
        *(v45 + 32) = v36;
        swift_storeEnumTagMultiPayload();
        v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B30, &qword_24DD4DDD0) + 48);
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AD0, &qword_24DD4DD78);
        v48 = v116;
        (*(*(v47 - 8) + 16))(v116, v115, v47);
        sub_24DD1C474(v44, v48 + v46, &qword_27F1B0810, &qword_24DD4D9B0);
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B18, &qword_24DD4DDB8);
LABEL_25:
        swift_storeEnumTagMultiPayload();
        return (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
      }

      goto LABEL_52;
    }

    goto LABEL_50;
  }

  (*(v117 + 56))(v10, 1, 1, v113);

  sub_24DD1C414(v10, &qword_27F1B0A90, &qword_24DD4D9D0);
  sub_24DD1C414(v37, &qword_27F1B0878, &qword_24DD4DA20);
  *v37 = v32;
  swift_storeEnumTagMultiPayload();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B20, &qword_24DD4DDC0);
  v75 = *(v74 + 48);
  v76 = v116;
  v77 = (v116 + *(v74 + 64));
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AD0, &qword_24DD4DD78);
  (*(*(v78 - 8) + 16))(v76, v115, v78);
  *(v76 + v75) = v34;
  if (v35)
  {
    v79 = v36;
  }

  else
  {
    v79 = 0;
  }

  *v77 = v35;
  v77[1] = v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B18, &qword_24DD4DDB8);
  swift_storeEnumTagMultiPayload();
  return (*(*(v80 - 8) + 56))(v76, 0, 1, v80);
}

uint64_t sub_24DD41E7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AD0, &qword_24DD4DD78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AD8, &qword_24DD4DD80);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = (&v33 - v12);
  v14 = *(a1 + 16);
  v15 = *(*v14 + *MEMORY[0x277D841D0] + 16);
  v16 = (*(*v14 + 48) + 7) & 0x1FFFFFFF8;
  result = pthread_mutex_lock((v14 + v16));
  if (result)
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_24DD42280(v13);
  result = pthread_mutex_unlock((v14 + v16));
  if (result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_24DD1C3AC(v13, v11, &qword_27F1B0AD8, &qword_24DD4DD80);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0AE0, &qword_24DD4DD88);
  if ((*(*(v18 - 8) + 48))(v11, 1, v18) != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = *v11;
      v19 = v11[1];
      v33 = v11[2];
      v34 = v19;
      v21 = *(v20 + 16);
      if (v21)
      {
        sub_24DD1C09C();
        v22 = (v20 + 40);
        do
        {
          v24 = *(v22 - 1);
          v23 = *v22;
          v25 = swift_allocError();
          v35 = v25;
          v36 = 1;

          v24(&v35);

          v22 += 2;
          --v21;
        }

        while (v21);
      }

      v26 = v34;
      if (v34)
      {

        v26(v27);
        sub_24DD1C134(v26);
        sub_24DD1C134(v26);
      }
    }

    else
    {
      v28 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AF0, &qword_24DD4DD90) + 48);
      v29 = *v28;
      v30 = *(v28 + 1);
      (*(v3 + 32))(v6, v11, v2);
      sub_24DD4B334();
      sub_24DD497B0(&qword_27F1AF598, MEMORY[0x277D85678]);
      v31 = swift_allocError();
      sub_24DD4B104();
      v35 = v31;
      sub_24DD4B304();
      if (v29)
      {

        v29(v32);
        sub_24DD1C134(v29);
        sub_24DD1C134(v29);
      }

      (*(v3 + 8))(v6, v2);
    }
  }

  return sub_24DD1C414(v13, &qword_27F1B0AD8, &qword_24DD4DD80);
}

uint64_t sub_24DD42280@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AF8, &qword_24DD4DD98);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v46 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AD0, &qword_24DD4DD78);
  *&v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B00, &unk_24DD4DDA0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0878, &qword_24DD4DA20);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - v17;
  sub_24DD1C3AC(v2, &v46 - v17, &qword_27F1B0878, &qword_24DD4DA20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_24DD1C414(v18, &qword_27F1B0878, &qword_24DD4DA20);
LABEL_18:
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0AE0, &qword_24DD4DD88);
      return (*(*(v32 - 8) + 56))(v47, 1, 1, v32);
    }

    if (EnumCaseMultiPayload == 3)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

  v46 = v14;
  v20 = v48;
  if (EnumCaseMultiPayload == 1)
  {
    v21 = v18;
    v22 = v46;
    sub_24DD1C474(v21, v46, &unk_27F1B0B00, &unk_24DD4DDA0);
    sub_24DD1C414(v2, &qword_27F1B0878, &qword_24DD4DA20);
    *v2 = *(v22 + 40);
    swift_storeEnumTagMultiPayload();
    sub_24DD1C3AC(v22 + *(v11 + 40), v6, &qword_27F1B0AF8, &qword_24DD4DD98);
    if ((*(v20 + 48))(v6, 1, v7) == 1)
    {
      sub_24DD1C414(v6, &qword_27F1B0AF8, &qword_24DD4DD98);
      v23 = *(v22 + *(v11 + 44));
      v24 = v23[3];
      v25 = MEMORY[0x277D84F90];
      if (v24)
      {
        v49 = MEMORY[0x277D84F90];
        sub_24DD286D4(0, v24 & ~(v24 >> 63), 0);
        if (v24 < 0)
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v26 = 0;
        v25 = v49;
        while (v26 < v23[3])
        {
          v27 = v23[4];
          if (v26 + v27 >= v23[2])
          {
            v28 = v23[2];
          }

          else
          {
            v28 = 0;
          }

          v29 = *&v23[3 * v26 + 6 + 3 * (v27 - v28)];
          v49 = v25;
          v31 = *(v25 + 16);
          v30 = *(v25 + 24);
          v48 = v29;

          if (v31 >= v30 >> 1)
          {
            sub_24DD286D4((v30 > 1), v31 + 1, 1);
            v25 = v49;
          }

          ++v26;
          *(v25 + 16) = v31 + 1;
          *(v25 + 16 * v31 + 32) = v48;
          if (v24 == v26)
          {
            v22 = v46;
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

LABEL_24:
      v38 = *(v22 + 48);
      v42 = *(v22 + 56);
      if (v38)
      {
        v43 = *(v22 + 56);
      }

      else
      {
        v43 = 0;
      }

      v44 = v47;
      *v47 = v25;
      v44[1] = v38;
      v44[2] = v43;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0AE0, &qword_24DD4DD88);
      swift_storeEnumTagMultiPayload();
      (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
    }

    else
    {
      v34 = *(v20 + 32);
      v34(v10, v6, v7);
      if (*(*(v22 + *(v11 + 44)) + 24))
      {
        goto LABEL_30;
      }

      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AF0, &qword_24DD4DD90);
      v36 = v47;
      v37 = (v47 + *(v35 + 48));
      v34(v47, v10, v7);
      v38 = *(v22 + 48);
      v39 = *(v22 + 56);
      if (v38)
      {
        v40 = *(v22 + 56);
      }

      else
      {
        v40 = 0;
      }

      *v37 = v38;
      v37[1] = v40;
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0AE0, &qword_24DD4DD88);
      swift_storeEnumTagMultiPayload();
      (*(*(v41 - 8) + 56))(v36, 0, 1, v41);
    }

    sub_24DD1C124(v38);
    return sub_24DD1C414(v22, &unk_27F1B0B00, &unk_24DD4DDA0);
  }

LABEL_32:
  result = sub_24DD4B5B4();
  __break(1u);
  return result;
}

uint64_t sub_24DD4285C()
{
  v0 = sub_24DD4B454();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_24DD4B0D4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_24DD4B464();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD49764();
  (*(v5 + 104))(v8, *MEMORY[0x277D85268], v4);
  sub_24DD4B0C4();
  v10[1] = MEMORY[0x277D84F90];
  sub_24DD497B0(&qword_27F1B0B78, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0B80, &unk_24DD4DE00);
  sub_24DD497F8(&qword_27F1B0B88, &qword_27F1B0B80, &unk_24DD4DE00);
  sub_24DD4B4F4();
  result = sub_24DD4B484();
  qword_27F1B0990 = result;
  return result;
}

id static RequestPartOutputStreamBridge.streamQueue.getter()
{
  if (qword_27F1AF290 != -1)
  {
    swift_once();
  }

  v1 = qword_27F1B0990;

  return v1;
}

void sub_24DD42B08(uint64_t a1)
{
  v3 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  sub_24DD48F78(a1, &v30 - v8, type metadata accessor for RequestPartOutputStreamBridge.State);
  v10 = v1;
  v11 = sub_24DD4B084();
  v12 = sub_24DD4B424();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v14;
    *v13 = 136315650;
    v15 = *&v10[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID];
    v16 = *&v10[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID + 8];
    v31 = 0;
    v32 = 0xE000000000000000;
    v33 = v15;
    v34 = 0x726F70736E617274;
    v35 = 0xEA00000000005F74;
    v36 = v14;
    v17 = sub_24DD4B624();
    MEMORY[0x253037C70](v17);

    MEMORY[0x253037C70](v34, v35);

    MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
    v34 = v16;
    v18 = sub_24DD4B624();
    MEMORY[0x253037C70](v18);

    v19 = sub_24DD38DE0(v31, v32, &v36);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = sub_24DD484A0();
    v22 = v21;
    sub_24DD48FE0(v9, type metadata accessor for RequestPartOutputStreamBridge.State);
    v23 = sub_24DD38DE0(v20, v22, &v36);

    *(v13 + 14) = v23;
    *(v13 + 22) = 2080;
    v24 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_state;
    swift_beginAccess();
    sub_24DD48F78(&v10[v24], v7, type metadata accessor for RequestPartOutputStreamBridge.State);
    v25 = sub_24DD484A0();
    v27 = v26;
    sub_24DD48FE0(v7, type metadata accessor for RequestPartOutputStreamBridge.State);
    v28 = sub_24DD38DE0(v25, v27, &v36);

    *(v13 + 24) = v28;
    _os_log_impl(&dword_24DD09000, v11, v12, "Output stream delegate state transition for %s: %s -> %s)", v13, 0x20u);
    v29 = v30;
    swift_arrayDestroy();
    MEMORY[0x253038870](v29, -1, -1);
    MEMORY[0x253038870](v13, -1, -1);
  }

  else
  {

    sub_24DD48FE0(v9, type metadata accessor for RequestPartOutputStreamBridge.State);
  }
}

char *RequestPartOutputStreamBridge.init(outputStream:requestParts:compressor:streamID:openOutputStream:)(void *a1, uint64_t a2, _BYTE *a3, uint64_t *a4, int a5)
{
  v6 = v5;
  v29 = a5;
  ObjectType = swift_getObjectType();
  v11 = sub_24DD4B0A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &ObjectType - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a3) = *a3;
  v16 = *a4;
  v17 = a4[1];
  *&v6[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream] = a1;
  type metadata accessor for RequestPartOutputStreamBridge.State(0);
  swift_storeEnumTagMultiPayload();
  *&v6[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_requestParts] = a2;
  v6[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_compressor] = a3;
  v18 = &v6[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID];
  *v18 = v16;
  v18[1] = v17;
  v19 = a1;

  sub_24DD4B094();
  (*(v12 + 32))(&v6[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_logger], v15, v11);
  v30.receiver = v6;
  v30.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v30, sel_init);
  v21 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream;
  v22 = *&v20[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream];
  v23 = v20;
  [v22 setDelegate_];
  v24 = qword_27F1AF290;
  v25 = *&v20[v21];
  if (v24 != -1)
  {
    swift_once();
  }

  MEMORY[0x2530381D0](v25, qword_27F1B0990);

  if (v29)
  {
    v26 = *&v20[v21];
    [v26 open];
  }

  else
  {
  }

  return v23;
}

id RequestPartOutputStreamBridge.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream] setDelegate_];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24DD43298()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v31 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF530, &qword_24DD4CA90);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v31 - v13;
  v15 = sub_24DD4B0E4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (&v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27F1AF290 != -1)
  {
    swift_once();
  }

  v20 = qword_27F1B0990;
  *v19 = qword_27F1B0990;
  (*(v16 + 104))(v19, *MEMORY[0x277D85200], v15);
  v21 = v20;
  LOBYTE(v20) = sub_24DD4B0F4();
  result = (*(v16 + 8))(v19, v15);
  if (v20)
  {
    v23 = sub_24DD4B384();
    (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v25 = ObjectType;
    v24[4] = v0;
    v24[5] = v25;
    v26 = v0;
    sub_24DD45DCC(0, 0, v14, &unk_24DD4DD40, v24);
    v27 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_state;
    swift_beginAccess();
    sub_24DD48F78(v26 + v27, v10, type metadata accessor for RequestPartOutputStreamBridge.State);
    sub_24DD48F78(v10, v8, type metadata accessor for RequestPartOutputStreamBridge.State);
    result = swift_getEnumCaseMultiPayload();
    if (result == 4)
    {
      sub_24DD48FE0(v10, type metadata accessor for RequestPartOutputStreamBridge.State);
      *v10 = 0;
      swift_storeEnumTagMultiPayload();
      sub_24DD48F78(v26 + v27, v5, type metadata accessor for RequestPartOutputStreamBridge.State);
      swift_beginAccess();
      sub_24DD483CC(v10, v26 + v27);
      swift_endAccess();
      sub_24DD42B08(v5);

      sub_24DD48FE0(v5, type metadata accessor for RequestPartOutputStreamBridge.State);
      return sub_24DD48FE0(v10, type metadata accessor for RequestPartOutputStreamBridge.State);
    }
  }

  else
  {
    __break(1u);
  }

  if (result > 1)
  {
    if (result != 2)
    {
LABEL_13:
      result = sub_24DD48FE0(v8, type metadata accessor for RequestPartOutputStreamBridge.State);
      goto LABEL_14;
    }

    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A80, &qword_24DD4DD20) + 48);
LABEL_12:
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    (*(*(v30 - 8) + 8))(&v8[v29], v30);
    __break(1u);
    goto LABEL_13;
  }

  if (result)
  {
    v28 = *(v8 + 1);
    swift_unknownObjectRelease();
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A88, &unk_24DD4DD28) + 64);
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_24DD4371C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0810, &qword_24DD4D9B0);
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v8 = *(v7 + 64) + 15;
  v5[15] = swift_task_alloc();
  v9 = sub_24DD4B0B4();
  v5[16] = v9;
  v10 = *(v9 - 8);
  v5[17] = v10;
  v11 = *(v10 + 64) + 15;
  v5[18] = swift_task_alloc();
  v12 = sub_24DD4B0D4();
  v5[19] = v12;
  v13 = *(v12 - 8);
  v5[20] = v13;
  v14 = *(v13 + 64) + 15;
  v5[21] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A90, &qword_24DD4D9D0) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v16 = sub_24DD4B0E4();
  v5[23] = v16;
  v17 = *(v16 - 8);
  v5[24] = v17;
  v18 = *(v17 + 64) + 15;
  v5[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DD43934, 0, 0);
}

uint64_t sub_24DD43934()
{
  if (qword_27F1AF290 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = qword_27F1B0990;
  v0[26] = qword_27F1B0990;
  *v1 = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277D851F0], v3);
  v5 = v4;
  LOBYTE(v4) = sub_24DD4B0F4();
  v6 = (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v9 = 0;
    v10 = *(v0[11] + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_requestParts);
    atomic_compare_exchange_strong_explicit((v10 + 24), &v9, 1u, memory_order_relaxed, memory_order_relaxed);
    if (v9)
    {
      return sub_24DD4B5B4();
    }

    v11 = *(v10 + 16);
    v12 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_compressor;
    v0[27] = v11;
    v0[28] = v12;

    v6 = sub_24DD43AE4;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_24DD43AE4()
{
  v0[29] = *(v0[27] + 16);

  v1 = swift_task_alloc();
  v0[30] = v1;
  *v1 = v0;
  v1[1] = sub_24DD43BAC;
  v2 = v0[22];

  return sub_24DD3F3D8(v2);
}

uint64_t sub_24DD43BAC()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v7 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = sub_24DD441E4;
  }

  else
  {
    v5 = *(v2 + 232);

    v4 = sub_24DD43CC8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24DD43CC8()
{
  v1 = *(v0 + 216);

  return MEMORY[0x2822009F8](sub_24DD43D30, 0, 0);
}

uint64_t sub_24DD43D30()
{
  v1 = v0[22];
  if ((*(v0[14] + 48))(v1, 1, v0[13]) == 1)
  {
    v2 = v0[27];
    v3 = v0[21];
    v36 = v0[20];
    v4 = v0[18];
    v37 = v0[19];
    v38 = v0[25];
    v34 = v0[26];
    v35 = v0[17];
    v33 = v0[16];
    v39 = v0[15];
    v5 = v0[11];

    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v0[6] = sub_24DD48DD8;
    v0[7] = v6;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_24DD458F4;
    v0[5] = &block_descriptor;
    v7 = _Block_copy(v0 + 2);
    v8 = v5;
    sub_24DD4B0C4();
    v0[9] = MEMORY[0x277D84F90];
    sub_24DD497B0(&qword_27F1B0A98, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AA0, &qword_24DD4DD50);
    sub_24DD497F8(&qword_27F1B0AA8, &qword_27F1B0AA0, &qword_24DD4DD50);
    sub_24DD4B4F4();
    MEMORY[0x253037F10](0, v3, v4, v7);
    _Block_release(v7);
    (*(v35 + 8))(v4, v33);
    (*(v36 + 8))(v3, v37);
    v9 = v0[7];

    v10 = v0[1];
LABEL_6:

    return v10();
  }

  sub_24DD1C474(v1, v0[15], &qword_27F1B0810, &qword_24DD4D9B0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_24DD4B5B4();
  }

  v13 = v0[31];
  v14 = v0[28];
  v15 = v0[15];
  v16 = v0[11];
  v17 = *v15;
  v0[32] = *v15;
  v0[10] = v17;
  *(v0 + 296) = *(v16 + v14);
  v18 = _s31GRPCURLSessionTransportInternal17GRPCMessageFramerO5frame_10compressorSays5UInt8VGAA0aB5BytesV_AA10CompressorOSgtAA0J5ErrorOYKFZ(v0 + 10, v0 + 296, v11, v12);
  v0[33] = v18;
  if (v13)
  {
    v19 = v0[27];
    sub_24DD0C4D0();
    swift_allocError();

    v20 = v0[25];
    v21 = v0[21];
    v22 = v0[22];
    v23 = v0[18];
    v24 = v0[15];

    v10 = v0[1];
    goto LABEL_6;
  }

  v26 = v18;
  v28 = v0[11];
  v27 = v0[12];
  v29 = swift_task_alloc();
  v0[34] = v29;
  v29[2] = v28;
  v29[3] = v17;
  v29[4] = v26;
  v29[5] = v27;
  v30 = *(MEMORY[0x277D85A40] + 4);
  v31 = swift_task_alloc();
  v0[35] = v31;
  *v31 = v0;
  v31[1] = sub_24DD44394;
  v32 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v31, 0, 0, 0xD000000000000011, 0x800000024DD528D0, sub_24DD48DF8, v29, v32);
}

uint64_t sub_24DD441E4()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);

  return MEMORY[0x2822009F8](sub_24DD44258, 0, 0);
}

uint64_t sub_24DD44258()
{
  *(v0 + 64) = *(v0 + 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF298, &qword_24DD4C1C0);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_24DD442EC, 0, 0);
}

uint64_t sub_24DD442EC()
{
  v1 = v0[27];

  v2 = v0[31];
  v3 = v0[25];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[18];
  v7 = v0[15];

  v8 = v0[1];

  return v8();
}

uint64_t sub_24DD44394()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = v2[34];
  v6 = v2[33];
  v7 = v2[32];

  if (v0)
  {
    v8 = sub_24DD44524;
  }

  else
  {
    v8 = sub_24DD44508;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_24DD44524()
{
  v1 = v0[27];

  v2 = v0[36];
  v3 = v0[25];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[18];
  v7 = v0[15];

  v8 = v0[1];

  return v8();
}

uint64_t sub_24DD445CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v26 = sub_24DD4B0B4();
  v30 = *(v26 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v26);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24DD4B0D4();
  v28 = *(v10 - 8);
  v29 = v10;
  v11 = *(v28 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v25 - v17;
  if (qword_27F1AF290 != -1)
  {
    swift_once();
  }

  v25[1] = qword_27F1B0990;
  (*(v15 + 16))(v18, a1, v14);
  v19 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = a3;
  *(v20 + 4) = v27;
  (*(v15 + 32))(&v20[v19], v18, v14);
  aBlock[4] = sub_24DD48EE4;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24DD458F4;
  aBlock[3] = &block_descriptor_16;
  v21 = _Block_copy(aBlock);
  v22 = a2;

  sub_24DD4B0C4();
  v31 = MEMORY[0x277D84F90];
  sub_24DD497B0(&qword_27F1B0A98, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0AA0, &qword_24DD4DD50);
  sub_24DD497F8(&qword_27F1B0AA8, &qword_27F1B0AA0, &qword_24DD4DD50);
  v23 = v26;
  sub_24DD4B4F4();
  MEMORY[0x253037F10](0, v13, v9, v21);
  _Block_release(v21);
  (*(v30 + 8))(v9, v23);
  (*(v28 + 8))(v13, v29);
}

uint64_t sub_24DD449B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v43 = &v41 - v8;
  v9 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  v45 = type metadata accessor for RequestPartOutputStreamBridge.State.ProducedChunkAndSuspendedProducerAction(0);
  v16 = *(*(v45 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v45);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v48 = (&v41 - v20);

  v21 = a1;
  v22 = sub_24DD4B084();
  v23 = sub_24DD4B424();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v42 = v6;
    v25 = v24;
    v26 = swift_slowAlloc();
    v50 = v26;
    *v25 = 134218242;
    *(v25 + 4) = *(a2 + 16);

    *(v25 + 12) = 2080;
    v27 = *&v21[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID];
    v41 = *&v21[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID + 8];
    v53 = 0;
    v54 = 0xE000000000000000;
    v51 = 0x726F70736E617274;
    v52 = 0xEA00000000005F74;
    v49 = v27;
    v28 = sub_24DD4B624();
    MEMORY[0x253037C70](v28);

    MEMORY[0x253037C70](v51, v52);

    MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
    v51 = v41;
    v29 = sub_24DD4B624();
    MEMORY[0x253037C70](v29);

    v30 = sub_24DD38DE0(v53, v54, &v50);

    *(v25 + 14) = v30;
    _os_log_impl(&dword_24DD09000, v22, v23, "Output stream delegate produced %{iec-bytes}ld chunk and suspended the producer for stream %s.", v25, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x253038870](v26, -1, -1);
    v31 = v25;
    v6 = v42;
    MEMORY[0x253038870](v31, -1, -1);
  }

  else
  {
  }

  v32 = v46;
  v33 = (2 * *(v46 + 16)) | 1;
  v34 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_state;
  swift_beginAccess();
  sub_24DD48F78(&v21[v34], v15, type metadata accessor for RequestPartOutputStreamBridge.State);
  v35 = v48;
  sub_24DD44F24(v32, v32 + 32, 0, v33, v47, v48);
  sub_24DD48F78(&v21[v34], v13, type metadata accessor for RequestPartOutputStreamBridge.State);
  swift_beginAccess();
  sub_24DD483CC(v15, &v21[v34]);
  swift_endAccess();
  sub_24DD42B08(v13);
  sub_24DD48FE0(v13, type metadata accessor for RequestPartOutputStreamBridge.State);
  sub_24DD48FE0(v15, type metadata accessor for RequestPartOutputStreamBridge.State);
  sub_24DD48F78(v35, v19, type metadata accessor for RequestPartOutputStreamBridge.State.ProducedChunkAndSuspendedProducerAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v37 = v43;
      v38 = v44;
      (*(v44 + 32))(v43, v19, v6);
      sub_24DD4B334();
      sub_24DD497B0(&qword_27F1AF598, MEMORY[0x277D85678]);
      v39 = swift_allocError();
      sub_24DD4B104();
      v51 = v39;
      sub_24DD4B304();
      (*(v38 + 8))(v37, v6);
    }
  }

  else
  {
    sub_24DD4520C(*v19, *(v19 + 1), *(v19 + 2), *(v19 + 3));
    swift_unknownObjectRelease();
  }

  return sub_24DD48FE0(v35, type metadata accessor for RequestPartOutputStreamBridge.State.ProducedChunkAndSuspendedProducerAction);
}

uint64_t sub_24DD44F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = v6;
  v14 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD48F78(v7, v17, type metadata accessor for RequestPartOutputStreamBridge.State);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 3)
    {
      sub_24DD48FE0(v17, type metadata accessor for RequestPartOutputStreamBridge.State);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
      (*(*(v19 - 8) + 16))(a6, a5, v19);
      type metadata accessor for RequestPartOutputStreamBridge.State.ProducedChunkAndSuspendedProducerAction(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (result != 2)
    {
      goto LABEL_13;
    }

    v23 = &qword_27F1B0A80;
    v24 = 48;
    v25 = &qword_24DD4DD20;
LABEL_12:
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v23, v25) + v24);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    result = (*(*(v28 - 8) + 8))(&v17[v27], v28);
LABEL_13:
    __break(1u);
    return result;
  }

  if (result)
  {
    v26 = *(v17 + 1);
    swift_unknownObjectRelease();
    v23 = &qword_27F1B0A88;
    v24 = 64;
    v25 = &unk_24DD4DD28;
    goto LABEL_12;
  }

  sub_24DD48FE0(v7, type metadata accessor for RequestPartOutputStreamBridge.State);
  v20 = *v17;
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A88, &unk_24DD4DD28) + 64);
  *v7 = v20;
  *(v7 + 8) = a1;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  (*(*(v22 - 8) + 16))(v7 + v21, a5, v22);
  swift_storeEnumTagMultiPayload();
  if (v20 == 1)
  {
    *a6 = a1;
    a6[1] = a2;
    a6[2] = a3;
    a6[3] = a4;
    type metadata accessor for RequestPartOutputStreamBridge.State.ProducedChunkAndSuspendedProducerAction(0);
    swift_storeEnumTagMultiPayload();
    return swift_unknownObjectRetain_n();
  }

  else
  {
    type metadata accessor for RequestPartOutputStreamBridge.State.ProducedChunkAndSuspendedProducerAction(0);
    swift_storeEnumTagMultiPayload();
    return swift_unknownObjectRetain();
  }
}

void sub_24DD4520C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_24DD4B0E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27F1AF290 != -1)
  {
    swift_once();
  }

  v13 = qword_27F1B0990;
  *v12 = qword_27F1B0990;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  v15 = sub_24DD4B0F4();
  (*(v9 + 8))(v12, v8);
  v16 = a4 >> 1;
  if (a4 >> 1 == a3 || (v15 & 1) == 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v17 = *&v4[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream];
  if ([v17 streamStatus] != 2)
  {
    v32 = sub_24DD4B084();
    v33 = sub_24DD4B414();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_24DD09000, v32, v33, "Output stream closed unexpectedly.", v34, 2u);
      MEMORY[0x253038870](v34, -1, -1);
    }

    v31 = 0;
    v30 = 0;
    goto LABEL_14;
  }

  if (__OFSUB__(v16, a3))
  {
    goto LABEL_27;
  }

  v18 = [v17 write:a2 + a3 maxLength:v16 - a3];
  v19 = v18;
  if (v18 >= 1)
  {
    v20 = v4;
    v21 = sub_24DD4B084();
    v22 = sub_24DD4B414();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 134218242;
      *(v23 + 4) = v19;
      *(v23 + 12) = 2080;
      v25 = *&v20[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID];
      v26 = *&v20[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID + 8];
      v57 = 0xE000000000000000;
      v58 = v24;
      v53 = v25;
      v54 = 0x726F70736E617274;
      v55 = 0xEA00000000005F74;
      v56 = 0;
      v27 = sub_24DD4B624();
      MEMORY[0x253037C70](v27);

      MEMORY[0x253037C70](v54, v55);

      MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
      v54 = v26;
      v28 = sub_24DD4B624();
      MEMORY[0x253037C70](v28);

      v29 = sub_24DD38DE0(v56, v57, &v58);

      *(v23 + 14) = v29;
      _os_log_impl(&dword_24DD09000, v21, v22, "Output stream delegate wrote %{iec-bytes}ld bytes to %s.", v23, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x253038870](v24, -1, -1);
      MEMORY[0x253038870](v23, -1, -1);
    }

    v30 = [v17 hasSpaceAvailable];
    v31 = v19;
LABEL_14:
    sub_24DD46078(v31, v30);
    return;
  }

  if (v18)
  {
    if (v18 == -1)
    {
      v38 = v4;
      v39 = sub_24DD4B084();
      v40 = sub_24DD4B434();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v41 = 136315394;
        v44 = *&v38[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID];
        v45 = *&v38[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID + 8];
        v57 = 0xE000000000000000;
        v58 = v43;
        v53 = v44;
        v54 = 0x726F70736E617274;
        v55 = 0xEA00000000005F74;
        v56 = 0;
        v46 = sub_24DD4B624();
        MEMORY[0x253037C70](v46);

        MEMORY[0x253037C70](v54, v55);

        MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
        v54 = v45;
        v47 = sub_24DD4B624();
        MEMORY[0x253037C70](v47);

        v48 = sub_24DD38DE0(v56, v57, &v58);

        *(v41 + 4) = v48;
        *(v41 + 12) = 2112;
        v49 = [v17 streamError];

        if (!v49)
        {
LABEL_30:
          __break(1u);
          return;
        }

        v50 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 14) = v50;
        *v42 = v50;
        _os_log_impl(&dword_24DD09000, v39, v40, "Output stream delegate encountered error writing to %s: %@.", v41, 0x16u);
        sub_24DD1C414(v42, &unk_27F1B0B40, &unk_24DD4DDE0);
        MEMORY[0x253038870](v42, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x253038870](v43, -1, -1);
        MEMORY[0x253038870](v41, -1, -1);
      }

      else
      {
      }

      v51 = [v17 streamError];
      if (v51)
      {
        v52 = v51;
        sub_24DD46AA4(v51);

        return;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v35 = sub_24DD4B084();
  v36 = sub_24DD4B414();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_24DD09000, v35, v36, "Output stream delegate reached end of stream when writing.", v37, 2u);
    MEMORY[0x253038870](v37, -1, -1);
  }

  sub_24DD4666C();
}

uint64_t sub_24DD458F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_24DD45938(void *a1)
{
  v2 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = a1;
  v10 = sub_24DD4B084();
  v11 = sub_24DD4B414();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 136315138;
    v14 = *&v9[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID];
    v15 = *&v9[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID + 8];
    v25 = 0;
    v26 = 0xE000000000000000;
    v22 = v13;
    v23 = 0x726F70736E617274;
    v24 = 0xEA00000000005F74;
    v21 = v14;
    v16 = sub_24DD4B624();
    MEMORY[0x253037C70](v16);

    MEMORY[0x253037C70](v23, v24);

    MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
    v23 = v15;
    v17 = sub_24DD4B624();
    MEMORY[0x253037C70](v17);

    v18 = sub_24DD38DE0(v25, v26, &v22);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_24DD09000, v10, v11, "Output stream delegate wrote final chunk for %s.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x253038870](v13, -1, -1);
    MEMORY[0x253038870](v12, -1, -1);
  }

  v19 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_state;
  swift_beginAccess();
  sub_24DD48F78(&v9[v19], v8, type metadata accessor for RequestPartOutputStreamBridge.State);
  sub_24DD45C3C();
  sub_24DD48F78(&v9[v19], v6, type metadata accessor for RequestPartOutputStreamBridge.State);
  swift_beginAccess();
  sub_24DD483CC(v8, &v9[v19]);
  swift_endAccess();
  sub_24DD42B08(v6);
  sub_24DD48FE0(v6, type metadata accessor for RequestPartOutputStreamBridge.State);
  sub_24DD48FE0(v8, type metadata accessor for RequestPartOutputStreamBridge.State);
  return [*&v9[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream] close];
}

uint64_t sub_24DD45C3C()
{
  v1 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD48F78(v0, v4, type metadata accessor for RequestPartOutputStreamBridge.State);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 3)
    {
      return sub_24DD48FE0(v4, type metadata accessor for RequestPartOutputStreamBridge.State);
    }

    if (result != 2)
    {
      goto LABEL_11;
    }

    v6 = &qword_27F1B0A80;
    v7 = 48;
    v8 = &qword_24DD4DD20;
LABEL_10:
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v6, v8) + v7);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    result = (*(*(v11 - 8) + 8))(&v4[v10], v11);
LABEL_11:
    __break(1u);
    return result;
  }

  if (result)
  {
    v9 = *(v4 + 1);
    swift_unknownObjectRelease();
    v6 = &qword_27F1B0A88;
    v7 = 64;
    v8 = &unk_24DD4DD28;
    goto LABEL_10;
  }

  sub_24DD48FE0(v0, type metadata accessor for RequestPartOutputStreamBridge.State);
  *v0 = 0;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24DD45DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF530, &qword_24DD4CA90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_24DD1C3AC(a3, v24 - v10, &qword_27F1AF530, &qword_24DD4CA90);
  v12 = sub_24DD4B384();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24DD1C414(v11, &qword_27F1AF530, &qword_24DD4CA90);
  }

  else
  {
    sub_24DD4B374();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_24DD4B2F4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_24DD4B194() + 32;

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

      sub_24DD1C414(a3, &qword_27F1AF530, &qword_24DD4CA90);

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

  sub_24DD1C414(a3, &qword_27F1AF530, &qword_24DD4CA90);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_24DD46078(int64_t a1, int a2)
{
  v3 = v2;
  v54 = a2;
  v55 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v52 = *(v4 - 8);
  v53 = v4;
  v5 = *(v52 + 64);
  MEMORY[0x28223BE20](v4);
  v51 = &v48 - v6;
  v48 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  v7 = *(*(v48 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v48);
  v50 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v49 = &v48 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v48 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v48 - v15;
  v17 = type metadata accessor for RequestPartOutputStreamBridge.State.WroteBytesAction(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (&v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v23 = (&v48 - v22);
  v24 = sub_24DD4B0E4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = (&v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27F1AF290 != -1)
  {
    swift_once();
  }

  v29 = qword_27F1B0990;
  *v28 = qword_27F1B0990;
  (*(v25 + 104))(v28, *MEMORY[0x277D85200], v24);
  v30 = v29;
  LOBYTE(v29) = sub_24DD4B0F4();
  result = (*(v25 + 8))(v28, v24);
  if (v29)
  {
    v35 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_state;
    swift_beginAccess();
    sub_24DD48F78(v3 + v35, v16, type metadata accessor for RequestPartOutputStreamBridge.State);
    sub_24DD46EE4(v55, v54 & 1, v23);
    sub_24DD48F78(v3 + v35, v14, type metadata accessor for RequestPartOutputStreamBridge.State);
    swift_beginAccess();
    sub_24DD483CC(v16, v3 + v35);
    swift_endAccess();
    sub_24DD42B08(v14);
    sub_24DD48FE0(v14, type metadata accessor for RequestPartOutputStreamBridge.State);
    sub_24DD48FE0(v16, type metadata accessor for RequestPartOutputStreamBridge.State);
    sub_24DD48F78(v23, v21, type metadata accessor for RequestPartOutputStreamBridge.State.WroteBytesAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_24DD4520C(*v21, v21[1], v21[2], v21[3]);
        swift_unknownObjectRelease();
      }

      return sub_24DD48FE0(v23, type metadata accessor for RequestPartOutputStreamBridge.State.WroteBytesAction);
    }

    (*(v52 + 32))(v51, v21, v53);
    v37 = v49;
    sub_24DD48F78(v3 + v35, v49, type metadata accessor for RequestPartOutputStreamBridge.State);
    v38 = v50;
    sub_24DD48F78(v37, v50, type metadata accessor for RequestPartOutputStreamBridge.State);
    result = swift_getEnumCaseMultiPayload();
    v33 = __OFSUB__(result, 2);
    v31 = result == 2;
    v32 = result - 2 < 0;
    if (result == 2)
    {
      sub_24DD48FE0(v37, type metadata accessor for RequestPartOutputStreamBridge.State);
      v39 = *v38;
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A80, &qword_24DD4DD20) + 48);
      *v37 = v39;
      swift_storeEnumTagMultiPayload();
      v41 = *(v52 + 8);
      v42 = &v38[v40];
      v43 = v53;
      v41(v42, v53);
      sub_24DD48F78(v3 + v35, v16, type metadata accessor for RequestPartOutputStreamBridge.State);
      swift_beginAccess();
      sub_24DD483CC(v37, v3 + v35);
      swift_endAccess();
      sub_24DD42B08(v16);
      sub_24DD48FE0(v16, type metadata accessor for RequestPartOutputStreamBridge.State);
      sub_24DD48FE0(v37, type metadata accessor for RequestPartOutputStreamBridge.State);
      v44 = v51;
      sub_24DD4B314();
      v41(v44, v43);
      return sub_24DD48FE0(v23, type metadata accessor for RequestPartOutputStreamBridge.State.WroteBytesAction);
    }
  }

  else
  {
    __break(1u);
  }

  if (!(v32 ^ v33 | v31))
  {
    goto LABEL_15;
  }

  if (result)
  {
    v45 = v50;
    v46 = *(v50 + 8);
    swift_unknownObjectRelease();
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A88, &unk_24DD4DD28);
    result = (*(v52 + 8))(v45 + *(v47 + 64), v53);
    __break(1u);
LABEL_15:
    if (result == 3)
    {
      result = sub_24DD48FE0(v50, type metadata accessor for RequestPartOutputStreamBridge.State);
      __break(1u);
    }
  }

  __break(1u);
  return result;
}

id sub_24DD4666C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v29 = &v28 - v5;
  v6 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for RequestPartOutputStreamBridge.State.EndEncounteredAction(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24DD4B0E4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27F1AF290 != -1)
  {
    swift_once();
  }

  v22 = qword_27F1B0990;
  *v21 = qword_27F1B0990;
  (*(v18 + 104))(v21, *MEMORY[0x277D85200], v17);
  v23 = v22;
  LOBYTE(v22) = sub_24DD4B0F4();
  result = (*(v18 + 8))(v21, v17);
  if (v22)
  {
    v25 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_state;
    swift_beginAccess();
    sub_24DD48F78(v1 + v25, v12, type metadata accessor for RequestPartOutputStreamBridge.State);
    sub_24DD47548(v16);
    sub_24DD48F78(v1 + v25, v10, type metadata accessor for RequestPartOutputStreamBridge.State);
    swift_beginAccess();
    sub_24DD483CC(v12, v1 + v25);
    swift_endAccess();
    sub_24DD42B08(v10);
    sub_24DD48FE0(v10, type metadata accessor for RequestPartOutputStreamBridge.State);
    sub_24DD48FE0(v12, type metadata accessor for RequestPartOutputStreamBridge.State);
    result = (*(v3 + 48))(v16, 2, v2);
    if (result)
    {
      if (result != 1)
      {
        return [*(v1 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream) close];
      }
    }

    else
    {
      v26 = v29;
      (*(v3 + 32))(v29, v16, v2);
      sub_24DD4B334();
      sub_24DD497B0(&qword_27F1AF598, MEMORY[0x277D85678]);
      v27 = swift_allocError();
      sub_24DD4B104();
      v30 = v27;
      sub_24DD4B304();
      [*(v1 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream) close];
      return (*(v3 + 8))(v26, v2);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_24DD46AA4(void *a1)
{
  v2 = v1;
  v30 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v29 - v6;
  v7 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v14 = type metadata accessor for RequestPartOutputStreamBridge.State.ErrorOccurredAction(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24DD4B0E4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (&v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27F1AF290 != -1)
  {
    swift_once();
  }

  v23 = qword_27F1B0990;
  *v22 = qword_27F1B0990;
  (*(v19 + 104))(v22, *MEMORY[0x277D85200], v18);
  v24 = v23;
  LOBYTE(v23) = sub_24DD4B0F4();
  result = (*(v19 + 8))(v22, v18);
  if (v23)
  {
    v26 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_state;
    swift_beginAccess();
    sub_24DD48F78(v2 + v26, v13, type metadata accessor for RequestPartOutputStreamBridge.State);
    sub_24DD4728C(v30, v17);
    sub_24DD48F78(v2 + v26, v11, type metadata accessor for RequestPartOutputStreamBridge.State);
    swift_beginAccess();
    sub_24DD483CC(v13, v2 + v26);
    swift_endAccess();
    sub_24DD42B08(v11);
    sub_24DD48FE0(v11, type metadata accessor for RequestPartOutputStreamBridge.State);
    sub_24DD48FE0(v13, type metadata accessor for RequestPartOutputStreamBridge.State);
    result = (*(v4 + 48))(v17, 2, v3);
    if (result)
    {
      if (result != 1)
      {
        return [*(v2 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream) close];
      }
    }

    else
    {
      v27 = v29;
      (*(v4 + 32))(v29, v17, v3);
      sub_24DD4B334();
      sub_24DD497B0(&qword_27F1AF598, MEMORY[0x277D85678]);
      v28 = swift_allocError();
      sub_24DD4B104();
      v31 = v28;
      sub_24DD4B304();
      [*(v2 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream) close];
      return (*(v4 + 8))(v27, v3);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24DD46EE4@<X0>(int64_t a1@<X0>, int a2@<W1>, unint64_t *a3@<X8>)
{
  v4 = v3;
  v45 = a2;
  v46 = a1;
  v43 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  v10 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD48F78(v3, v13, type metadata accessor for RequestPartOutputStreamBridge.State);
  v44 = v10;
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
LABEL_14:
    if (result <= 2)
    {
      if (!result)
      {
LABEL_19:
        __break(1u);
        return result;
      }

      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A80, &qword_24DD4DD20);
      result = (*(v6 + 8))(&v13[*(v38 + 48)], v5);
      __break(1u);
    }

    if (result == 3)
    {
      result = sub_24DD48FE0(v13, type metadata accessor for RequestPartOutputStreamBridge.State);
      __break(1u);
    }

    goto LABEL_19;
  }

  sub_24DD48FE0(v3, type metadata accessor for RequestPartOutputStreamBridge.State);
  v15 = *v13;
  v16 = *(v13 + 1);
  v41 = *(v13 + 2);
  v17 = *(v13 + 3);
  v18 = *(v13 + 4);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A88, &unk_24DD4DD28);
  v20 = *(v19 + 64);
  v40 = v6;
  v21 = *(v6 + 32);
  v6 += 32;
  v42 = v21;
  result = (v21)(v9, &v13[v20], v5);
  if (__OFSUB__(v18 >> 1, v17))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = v46;
  v22 = v15 ^ 1;
  if (((v18 >> 1) - v17) < v46)
  {
    v22 = 1;
  }

  if (v22)
  {
    goto LABEL_13;
  }

  v23 = v9;
  v24 = sub_24DD3F0DC(v46, v16, v41, v17, v18);
  if (v26 == v27 >> 1)
  {
    swift_unknownObjectRelease();
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A80, &qword_24DD4DD20) + 48);
    *v4 = v45 & 1;
    (*(v40 + 16))(v4 + v28, v9, v5);
    swift_storeEnumTagMultiPayload();
    v42(v43, v9, v5);
    type metadata accessor for RequestPartOutputStreamBridge.State.WroteBytesAction(0);
  }

  else
  {
    v29 = v25;
    v30 = v26;
    v31 = v27;
    v32 = *(v19 + 64);
    v33 = v23;
    v34 = v45;
    *v4 = v45 & 1;
    v35 = v24;
    *(v4 + 8) = v24;
    *(v4 + 16) = v29;
    *(v4 + 24) = v26;
    *(v4 + 32) = v27;
    v42((v4 + v32), v33, v5);
    swift_storeEnumTagMultiPayload();
    if (v34)
    {
      v36 = v35;
      v37 = v43;
      *v43 = v36;
      v37[1] = v29;
      v37[2] = v30;
      v37[3] = v31;
      type metadata accessor for RequestPartOutputStreamBridge.State.WroteBytesAction(0);
      swift_storeEnumTagMultiPayload();
      return swift_unknownObjectRetain();
    }

    type metadata accessor for RequestPartOutputStreamBridge.State.WroteBytesAction(0);
  }

  return swift_storeEnumTagMultiPayload();
}